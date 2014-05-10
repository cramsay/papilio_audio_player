--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   22:48:19 05/09/2014
-- Design Name:   
-- Module Name:   /tmp/zputest/my_sigmadelta_tb.vhd
-- Project Name:  zputest
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: my_sigmadelta
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------library ieee;
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;
 
ENTITY my_sigmadelta_tb IS
END my_sigmadelta_tb;
 
ARCHITECTURE behavior OF my_sigmadelta_tb IS 
 
   constant period: time := 10 ns;
	
	  constant REG_DATA: std_logic_vector(31 downto 0) := x"00000000";
	  constant REG_CTRL: std_logic_vector(31 downto 0) := x"00000004";
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT my_sigmadelta
    PORT(
         wb_clk_i : IN  std_logic;
         wb_rst_i : IN  std_logic;
         wb_dat_o : OUT  std_logic_vector(31 downto 0);
         wb_dat_i : IN  std_logic_vector(31 downto 0);
         wb_adr_i : IN  std_logic_vector(26 downto 2);
         wb_we_i : IN  std_logic;
         wb_cyc_i : IN  std_logic;
         wb_stb_i : IN  std_logic;
         wb_ack_o : OUT  std_logic;
         wb_inta_o : OUT  std_logic;
         pcm_out : OUT  std_logic_vector(1 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal wb_rst_i : std_logic := '0';
   signal wb_dat_i : std_logic_vector(31 downto 0) := (others => '0');
   signal wb_adr_i : std_logic_vector(26 downto 2) := (others => '0');
   signal wb_we_i : std_logic := '0';
   signal wb_cyc_i : std_logic := '0';
   signal wb_stb_i : std_logic := '0';

 	--Outputs
   signal wb_dat_o : std_logic_vector(31 downto 0);
   signal wb_ack_o : std_logic;
   signal wb_inta_o : std_logic;
   signal pcm_out : std_logic_vector(1 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
	signal wb_dat_o_dly:   std_logic_vector(31 downto 0);
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: my_sigmadelta PORT MAP (
          wb_clk_i => clk,
          wb_rst_i => wb_rst_i,
          wb_dat_o => wb_dat_o,
          wb_dat_i => wb_dat_i,
          wb_adr_i => wb_adr_i,
          wb_we_i => wb_we_i,
          wb_cyc_i => wb_cyc_i,
          wb_stb_i => wb_stb_i,
          wb_ack_o => wb_ack_o,
          wb_inta_o => wb_inta_o,
          pcm_out => pcm_out
        );

  -- Delayed read
  wb_dat_o_dly<=transport wb_dat_o after 1 ps;

  process
    procedure wbwrite(a: in std_logic_vector(31 downto 0); d: in std_logic_vector(31 downto 0) ) is
    begin
      wb_cyc_i<='1';
      wb_stb_i<='1';
      wb_we_i<='1';
      wb_dat_i<=d;
      wb_adr_i<=a(26 downto 2);
      wait until rising_edge(clk);
      wait until wb_ack_o='1';
      wait until rising_edge(clk);
      wb_cyc_i<='0';
      wb_stb_i<='0';
      wb_we_i <='0';
    end procedure;

    procedure wbread( a: in std_logic_vector(31 downto 0); d: out std_logic_vector(31 downto 0)) is
    begin
      wb_cyc_i<='1';
      wb_stb_i<='1';
      wb_we_i<='0';
      wb_adr_i<=a(26 downto 2);
      wait until rising_edge(clk);
      wait until wb_ack_o='1';
      wait until rising_edge(clk);
      d := wb_dat_o_dly;
      wb_cyc_i<='0';
      wb_stb_i<='0';
      wb_we_i <='0';
    end procedure;
	  begin
    
    wait until wb_rst_i='1';
    wait until wb_rst_i='0';
    wait until rising_edge(clk);

	wbwrite( REG_CTRL, x"0000000F");
	
	while wb_inta_o = '1' loop
		wbwrite( REG_DATA, x"000000AA");
		wbwrite( REG_DATA, x"00000002");
		wbwrite( REG_DATA, x"000000FF");
		wbwrite( REG_DATA, x"0000000F");
	end loop;
	
	wait until wb_inta_o='1';
	while wb_inta_o = '1' loop
		wbwrite( REG_DATA, x"000000AA");
		wbwrite( REG_DATA, x"00000002");
		wbwrite( REG_DATA, x"000000FF");
		wbwrite( REG_DATA, x"0000000F");
	end loop;
  end process;
  
   -- Clock process definitions
   clk_process :process
   begin
		clk <= '1';
		wait for period/2;
		clk <= '0';
		wait for period/2;
   end process;

	  -- Reset
  process
  begin
    wait for 5 ns;
    wb_rst_i <= '1';
    wait for 20 ns;
    wb_rst_i <= '0';
    wait;
  end process;
  
END;
