library ieee;
use ieee.std_logic_1164.all;

entity debounce is
port(
		clk, pb: in std_logic;
		pb_db: out std_logic
				
		);
end debounce;

architecture test of debounce is

signal delay1, delay2, delay3	: std_logic:='1';
begin

process(clk)
begin

if(clk'event and clk='1') then
	delay2 <= delay1;
	delay1 <= pb;		
	delay3 <= delay2;
end if;

end process;

pb_db <= delay1 or delay2 or delay3;

end test;
