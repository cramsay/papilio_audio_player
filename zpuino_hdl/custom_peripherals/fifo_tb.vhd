
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use IEEE.std_logic_unsigned.all; 


entity fifo_tb is
end entity;

architecture behave of fifo_tb is
  component fifo is
  generic (
    bits: integer := 8
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
  end component;


  signal clk:std_logic;
  signal rst:       std_logic;
  signal wr:        std_logic;
  signal rd:        std_logic;
  signal write:     std_logic_vector(7 downto 0);
  signal read :     std_logic_vector(7 downto 0);
  signal full:      std_logic;
  signal refil:     std_logic;
  signal empty:     std_logic;

begin

  uut: fifo port map (
            clk=>clk,
            rst=>rst,
            wr=>wr,
            rd=>rd,
            write=>write,
            read=>read,
            full=>full,
            refil=>refil,
            empty=>empty
                     );
    
    tb : process
    begin
      rst<='1';wait for 50 ns;
      rst<='0';write<="01010101"; wait for 100 ns;
      wait for 2 us;
      wait;
    end process;

	rw_control : process
	begin
		wr<='1'; wait for 500 ns;
		wr<='0';rd<='1';
		wait;
	end process;
	
   clkgen : process
   begin
     clk<='0'; wait for 20 ns;
     clk<='1'; wait for 20 ns;
   end process;
end architecture;
