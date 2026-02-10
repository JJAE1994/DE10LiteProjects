library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity frecuency_divider is

	port(
			clk50Mhz		:	in std_logic;
			clk_o			:	out std_logic
	
					);
end frecuency_divider;

architecture test of frecuency_divider is
signal cuenta:std_logic_vector(27 downto 0);
begin
process(clk50Mhz)
begin

	if (clk50Mhz'event and clk50Mhz='1') then
		cuenta<=cuenta+1;
		if cuenta=25000000 then 
				cuenta<=(others => '0');
				clk_o<='0';
		elsif cuenta=12500000 then 
				clk_o<='1';
		end if;
	end if;
end process;
	
end test;