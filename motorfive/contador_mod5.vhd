library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity contador_mod5 is
port(
		clk, up_flanco, down_flanco: in std_logic;
		sel_vel: out std_logic_vector(2 downto 0)		
				
		);
end contador_mod5;

architecture test of contador_mod5 is
signal cuenta	: std_logic_vector(2 downto 0);

begin

process(clk)
begin

if(clk'event and clk='1') then
	if (up_flanco='1' and down_flanco='0') then
		if cuenta<4 then
			cuenta<=cuenta+1;		
		end if;
	elsif (up_flanco='0' and down_flanco='1') then
		if cuenta>0 then
			cuenta<=cuenta-1;
		end if;
	end if;
end if;

end process;

sel_vel <= cuenta;

end test;
