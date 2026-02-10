library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity contador_brillo is
port(
		clk, brillo: in std_logic;
		sel_brillo: out std_logic_vector(2 downto 0)		
				
		);
end contador_brillo;

architecture test of contador_brillo is
signal cuenta	: std_logic_vector(2 downto 0);

begin

process(clk)
begin

if(clk'event and clk='1') then
	if (brillo='1') then
		if cuenta>=4 then
			cuenta<="000";				
		else
			cuenta<=cuenta+1;	
		end if;
	end if;	
end if;

end process;

sel_brillo <= cuenta;

end test;