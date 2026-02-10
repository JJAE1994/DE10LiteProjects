library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
entity divf_vel_sim is
port(
		clk_50M: in std_logic;
		clk_20kHz_20, clk_20kHz_40, clk_20kHz_60, 
		clk_20kHz_80, clk_20kHz_100: out std_logic
				
		);
end divf_vel_sim;

architecture test of divf_vel_sim is

signal cuenta_f_20, cuenta_f_40, cuenta_f_60, cuenta_f_80, 
cuenta_f_100:std_logic_vector(5 downto 0);
begin
process(clk_50M)
begin
	--cuenta=500000y375000
	if (clk_50M'event and clk_50M='1') then
		cuenta_f_20<=cuenta_f_20+1;
		cuenta_f_40<=cuenta_f_40+1;
		cuenta_f_60<=cuenta_f_60+1;
		cuenta_f_80<=cuenta_f_80+1;
		cuenta_f_100<=cuenta_f_100+1;
		
		if cuenta_f_20=50 then 
				cuenta_f_20<=(others => '0');
				clk_20kHz_20<='0';
		elsif cuenta_f_20=40 then 
				clk_20kHz_20<='1';
		end if;
		
		if cuenta_f_40=50 then 
				cuenta_f_40<=(others => '0');
				clk_20kHz_40<='0';
		elsif cuenta_f_40=30 then 
				clk_20kHz_40<='1';
		end if;
		
		if cuenta_f_60=50 then 
				cuenta_f_60<=(others => '0');
				clk_20kHz_60<='0';
		elsif cuenta_f_60=20 then 
				clk_20kHz_60<='1';
		end if;
		
		if cuenta_f_80=50 then 
				cuenta_f_80<=(others => '0');
				clk_20kHz_80<='0';
		elsif cuenta_f_80=10 then 
				clk_20kHz_80<='1';
		end if;
	end if;

end process;

	clk_20kHz_100<='1';
end test;
