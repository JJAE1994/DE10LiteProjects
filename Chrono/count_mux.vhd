library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity count_mux is
port(
	clock:in std_logic;
	qsel:out std_logic_vector(1 downto 0);
	habilitadores:out std_logic_vector(3 downto 0)
);
end count_mux;

architecture test of count_mux is
--contador MOD4 y decodificador para los enables de los displays
signal count:std_logic_vector(1 downto 0);
begin
process(clock)
begin
	if clock'event and clock='1' then
		count<=count+1;
	end if;
qsel<=count;
end process;
--decodificador2a4
with count select
	habilitadores <= "1110" when "00",
						  "1101" when "01",
						  "1011" when "10",				
						  "0111" when others;
end test;