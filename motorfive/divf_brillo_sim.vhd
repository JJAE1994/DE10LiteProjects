library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
entity divf_brillo_sim is
port(
		clk_50M: in std_logic;
		clk_100kHz_10, clk_100kHz_20, clk_100kHz_50, 
		clk_100kHz_80, clk_100kHz_100: out std_logic
				
		);
end divf_brillo_sim;

architecture test of divf_brillo_sim is

signal cuenta_f_10, cuenta_f_20, cuenta_f_50, cuenta_f_80, 
cuenta_f_100:std_logic_vector(3 downto 0);
begin
process(clk_50M)
begin

	if (clk_50M'event and clk_50M='1') then
		cuenta_f_10<=cuenta_f_10+1;
		cuenta_f_20<=cuenta_f_20+1;
		cuenta_f_50<=cuenta_f_50+1;
		cuenta_f_80<=cuenta_f_80+1;
		cuenta_f_100<=cuenta_f_100+1;
		
		if cuenta_f_10=10 then 
				cuenta_f_10<=(others => '0');
				clk_100kHz_10<='0';
		elsif cuenta_f_10=9 then 
				clk_100kHz_10<='1';
		end if;
		
		if cuenta_f_20=10 then 
				cuenta_f_20<=(others => '0');
				clk_100kHz_20<='0';
		elsif cuenta_f_20=8 then 
				clk_100kHz_20<='1';
		end if;
		
		if cuenta_f_50=10 then 
				cuenta_f_50<=(others => '0');
				clk_100kHz_50<='0';
		elsif cuenta_f_50=5 then 
				clk_100kHz_50<='1';
		end if;
		
		if cuenta_f_80=10 then 
				cuenta_f_80<=(others => '0');
				clk_100kHz_80<='0';
		elsif cuenta_f_80=2 then 
				clk_100kHz_80<='1';
		end if;
	end if;

end process;

	clk_100kHz_100<='1';
end test;
