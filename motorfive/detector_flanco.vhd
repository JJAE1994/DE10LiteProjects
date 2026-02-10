library ieee;
use ieee.std_logic_1164.all;

entity detector_flanco is
port(
		clk, e: in std_logic;
		S: out std_logic
				
		);
end detector_flanco;

architecture test of detector_flanco is

signal s_q	: std_logic:='0';
begin

process(clk)
begin

if(clk'event and clk='1') then
	s_q <= e;
end if;

end process;

S <= ((not(s_q)) nor e);

end test;
