-- Adapted from the zpuino_fifo
-- Signals a refil flag once x% empty
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use IEEE.std_logic_unsigned.all; 


entity fifo_buf is
  generic (
    bits: integer := 11
  );
  port (
    clk:      in std_logic;
    rst:      in std_logic;
    wr:       in std_logic;
    rd:       in std_logic;
    write:    in std_logic_vector(7 downto 0);
    read :    out std_logic_vector(7 downto 0);
    full:     out std_logic;
    refil:     out std_logic;
    empty:    out std_logic
  );
end entity fifo_buf;

architecture behave of fifo_buf is

  type mem_t is array (0 to ((2**bits)-1)) of std_logic_vector(7 downto 0);

  signal memory:  mem_t :=(others=>(others=>'0'));

  signal wraddr: unsigned(bits-1 downto 0):=(others=>'0');
  signal rdaddr: unsigned(bits-1 downto 0):=(others=>'0');

begin

  process(clk)
  begin
    if rising_edge(clk) then
      read <= memory( conv_integer(std_logic_vector(rdaddr)) );
    end if;
  end process;

  process(clk,rdaddr,wraddr,rst)
    variable full_v: std_logic;
    variable empty_v: std_logic;
    variable count_v: integer:=0;
  begin
  
    if rdaddr=wraddr then
      empty_v:='1';
    else
      empty_v:='0';
    end if;

    if wraddr=rdaddr-1 then
      full_v:='1';
    else
      full_v:='0';
    end if;

    if rising_edge(clk) then
      if rst='1' then
        wraddr <= (others => '0');
        rdaddr <= (others => '0');
      else
  
        if wr='1' and full_v='0' then
          memory(conv_integer(std_logic_vector(wraddr) ) ) <= write;
          wraddr <= wraddr+1;
          count_v := count_v+1;
        end if;
  
        if rd='1' and empty_v='0' then
          rdaddr <= rdaddr+1;
          count_v := count_v-1;
        end if;
      end if;

      full <= full_v;
      empty <= empty_v;

      refil <= '0';
      if count_v <= (2**bits)/2 then
        refil <='1';
      end if;

    end if;


  end process;
end behave;

