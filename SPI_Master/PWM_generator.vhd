library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity PWM_generator is
port ( 	clk_in: in std_logic;
       	dc2_45, dc2, dc1_55: out std_logic
		);
end PWM_generator;

architecture Behavioral of PWM_generator is

signal count: std_logic_vector(19 downto 0);

begin

process(clk_in)
begin

	if clk_in'event and clk_in='1' then
			if count = 1000000 - 1 then
				count<=(others=>'0');				
				dc2_45<='0';
			elsif count = 877500 then
				count<=count+1;
				dc2_45<='1';
			else
				count<=count+1;
			end if;
	
	
			if count = 1000000 - 1 then
				count<=(others=>'0');				
				dc2<='0';
			elsif count = 900000 then
				count<=count+1;
				dc2<='1';
			else
				count<=count+1;
			end if;
			
			
			if count = 1000000 - 1 then
				count<=(others=>'0');				
				dc1_55<='0';
			elsif count = 922500 then
				count<=count+1;
				dc1_55<='1';
			else
				count<=count+1;
			end if;			
			
						
	end if;
	
end process;
						
end Behavioral; 
