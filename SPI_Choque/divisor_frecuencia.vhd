library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity divisor_frecuencia is
port ( 	clk_in: in std_logic;
       	clk_out: out std_logic
		);
end divisor_frecuencia;

architecture Behavioral of divisor_frecuencia is

signal count: std_logic_vector(8 downto 0);

begin

process(clk_in)
begin

	if clk_in'event and clk_in='1' then
			if count = 500 - 1 then
				count<=(others=>'0');				
				clk_out<='0';
			elsif count = 250 then
				count<=count+1;
				clk_out<='1';
			else
				count<=count+1;
			end if;
	end if;
end process;
						
end Behavioral; 
