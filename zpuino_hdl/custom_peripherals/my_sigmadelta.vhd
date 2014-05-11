library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

library work;
use work.zpupkg.all;
use work.zpu_config.all;
use work.zpuinopkg.all;

entity buffered_sigmadelta is
  port (
    -- Wishbone connections
    wb_clk_i: in std_logic;
    wb_rst_i: in std_logic;
    wb_dat_o: out std_logic_vector(wordSize-1 downto 0);
    wb_dat_i: in std_logic_vector(wordSize-1 downto 0);
    wb_adr_i: in std_logic_vector(maxIObit downto minIObit);
    wb_we_i:  in std_logic;
    wb_cyc_i: in std_logic;
    wb_stb_i: in std_logic;
    wb_ack_o: out std_logic;
    wb_inta_o:out std_logic;

    -- Connection to GPIO pin
    pcm_out: out std_logic_vector(1 downto 0);
    -- Buffer debug flags
    empty,full: out std_logic
  );
end entity buffered_sigmadelta;

architecture behave of buffered_sigmadelta is

  component fifo_buf is
  generic (
    bits: integer := 8;
    width: integer := 16
  );
  port (
    clk:      in std_logic;
    rst:      in std_logic;
    wr:       in std_logic;                           -- Write flag
    rd:       in std_logic;                           -- Read flag
    write:    in std_logic_vector(width-1 downto 0);  -- Write data
    read :    out std_logic_vector(width-1 downto 0); -- Read data
    full:     out std_logic;                          -- Last 3 are state flags
    refil:     out std_logic;
    empty:    out std_logic
  );
  end component;

  signal pcm_data: std_logic_vector(15 downto 0):= (others=>'0');   -- Current PCM data presented to DAC
  signal sum_data: unsigned(16 downto 0) := (others=>'0');          -- Running sum for DAC (internal workings)
  signal sample_count: std_logic_vector(15 downto 0):=(others=>'1');-- # cycles to wait before changing samples
  signal clk_cnt : unsigned(sample_count'RANGE) := (others=>'0');   -- # cycles which *have* elapsed since changing samples
  signal ack: std_logic:='0';                                       -- WB ack buffer
  signal sample_16w: std_logic := '0';                              -- 1=samples are 16 bits wide, 0=8 bits
  signal sample_endian: std_logic := '0';                           -- 0=litte endian samples, 1=big endian
  signal sample_signed: std_logic := '0';                           -- 0=unsigned samples, 1=2C signed samples

  --fifo signals
  signal fifo_rst:       std_logic:='0';
  signal fifo_wr:        std_logic:='0';
  signal fifo_rd:        std_logic:='0';
  signal fifo_write:     std_logic_vector(15 downto 0):=(others=>'0');
  signal fifo_full:      std_logic:='0';

begin

  fifo_bufI1 : fifo_buf
  port map(
    clk=>wb_clk_i,
    rst=>fifo_rst,
    wr=>fifo_wr,
    rd=>fifo_rd,
    write=>fifo_write,
    read=>pcm_data,
    full=>fifo_full,
    refil=>wb_inta_o,
    empty=>empty
          );
  
  wb_ack_o <= ack;
  full<=fifo_full;

  -- Always show CTRL register on wb_dat_o
  wb_dat_o(0) <= fifo_full;
  wb_dat_o(1) <= sample_16w;
  wb_dat_o(2) <= sample_endian;
  wb_dat_o(3) <= sample_signed;
  wb_dat_o(31 downto 16) <= sample_count;

  -- Line out is overflow from DAC running sum
  pcm_out(0) <= sum_data(sum_data'HIGH);

  -- Wishbone servicing process
  wb_proc : process(wb_clk_i)

  begin
    if rising_edge(wb_clk_i) then
                  
      ack<='0';
      fifo_wr<='0';
      fifo_rst <= '0';

      if wb_rst_i='1' then -- Handle resets
        fifo_rst <= '1';

      elsif ack='0' then

        if wb_cyc_i='1' and wb_stb_i='1' and ack<='0' then --handle wishbone read/write
          ack<='1';

            if wb_we_i='1' then -- It's a write
            case wb_adr_i(3 downto 2) is
              when "00" =>  --sample data (one sample at a time.. could be improved)

                if sample_16w='0' and sample_endian = '1' then --if it's a big endian  8bit sample, shift left to fill MSB
                  fifo_write(15 downto 8)<=wb_dat_i(7 downto 0);
                  fifo_write(7 downto 0)<= (others=>'0');
                elsif sample_16w='1' and sample_endian = '0' then --swap bytes for 16 bit little endian sample
                  fifo_write(15 downto 8)<=wb_dat_i(7 downto 0);
                  fifo_write(7 downto 0)<= wb_dat_i(15 downto 8);
                else
                  fifo_write<=wb_dat_i(15 downto 0);
                end if;
      
                fifo_wr<='1';

              when "01" => --Control register
                sample_16w<=wb_dat_i(1);
                sample_endian<=wb_dat_i(2);
                sample_signed<=wb_dat_i(3);
                sample_count<=wb_dat_i(31 downto 16);

              when others =>
            end case;
          end if;
        end if;
      
      end if;
    end if;
  end process;

  -- Process to update line out
  dac_proc : process(wb_clk_i)
  begin
    if rising_edge(wb_clk_i) then
      if sample_signed='0' then
        sum_data <= ("0" & sum_data(pcm_data'RANGE)) + ("0" & unsigned(pcm_data));
      else
        sum_data <= ("0" & sum_data(pcm_data'RANGE)) + to_unsigned(to_integer(signed(pcm_data))+2**pcm_data'HIGH,16);
      end if;

    end if;
  end process;

  -- Process to grab new samples from buffer
  sample_changer : process(wb_clk_i)
  begin
    if rising_edge(wb_clk_i) then
      fifo_rd<='0';
      clk_cnt<=clk_cnt+1;
      if(clk_cnt>=unsigned(sample_count)) then
        clk_cnt<=(others=>'0');
        fifo_rd<='1';
      end if;
    end if;
  end process;

end behave;

