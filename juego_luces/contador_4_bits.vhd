library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
USE ieee.numeric_std.all;

entity contador_4_bits is

	port(
			clk:	in std_logic;
			cuenta: out unsigned(3 downto 0)
					);
end contador_4_bits;

architecture test of contador_4_bits is
signal count: unsigned(3 downto 0);
begin
process(clk)
begin
	if (clk'event and clk='1') then
		count<=count+1;
	end if;
end process;
	
cuenta<=count;
end test;