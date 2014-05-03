--
-- Sigma-delta output
--
-- Copyright 2008,2009,2010 Álvaro Lopes <alvieboy@alvie.com>
--
-- Version: 1.2
--
-- The FreeBSD license
-- 
-- Redistribution and use in source and binary forms, with or without
-- modification, are permitted provided that the following conditions
-- are met:
-- 
-- 1. Redistributions of source code must retain the above copyright
--    notice, this list of conditions and the following disclaimer.
-- 2. Redistributions in binary form must reproduce the above
--    copyright notice, this list of conditions and the following
--    disclaimer in the documentation and/or other materials
--    provided with the distribution.
-- 
-- THIS SOFTWARE IS PROVIDED BY THE AUTHOR ``AS IS'' AND ANY
-- EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO,
-- THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A
-- PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE
-- ZPU PROJECT OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT,
-- INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES
-- (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS
-- OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION)
-- HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT,
-- STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE)
-- ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF
-- ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
--
-- Changelog:
--
-- 1.2: Adapted from ALZPU to ZPUino
-- 1.1: First version, imported from old controller.
--

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

library work;
use work.zpupkg.all;
use work.zpu_config.all;
use work.zpuinopkg.all;

entity my_sigmadelta is
	port (
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
    pcm_out: out std_logic_vector(1 downto 0)
  );
end entity my_sigmadelta;

architecture behave of my_sigmadelta is

signal pcm_data: std_logic_vector(7 downto 0):= (others=>'0');
signal sum_data: unsigned(8 downto 0) := (others=>'0');
signal ack: std_logic:='0';

begin

  wb_dat_o <= (others => DontCareValue);
  wb_inta_o <= '0';
  wb_ack_o <= ack;

  pcm_out(0) <= sum_data(8); -- output sum overflow

wb_proc : process(wb_clk_i)

begin
  if rising_edge(wb_clk_i) then
		
	ack<='0';
    if wb_rst_i='1' then -- Handle resets
      pcm_data <= (others=>'0');
	
    elsif ack='0' then
	    if wb_cyc_i='1' and wb_stb_i='1' and wb_we_i='1' then -- Handle writes from master
			ack<='1';
        pcm_data <= wb_dat_i(7 downto 0);
      end if;
    end if;
  end if;
end process;

dac_proc : process(wb_clk_i)
begin
  if rising_edge(wb_clk_i) then
    sum_data <= ("0" & sum_data(7 downto 0)) + ("0" & unsigned(pcm_data));
  end if;
end process;

end behave;

