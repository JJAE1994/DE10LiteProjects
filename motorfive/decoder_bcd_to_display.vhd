library ieee;
use ieee.std_logic_1164.all;

entity decoder_bcd_to_display is
port(
		bcd_digito: in std_logic_vector(3 downto 0);
		digito: out std_logic_vector(6 downto 0)
				
		);
end decoder_bcd_to_display;

architecture test of decoder_bcd_to_display is
signal s_digito: std_logic_vector(7 downto 0);
begin

with bcd_digito select
	s_digito <= x"C0" when "0000",
				 x"F9" when "0001",
				 x"A4" when "0010",
				 x"B0" when "0011",
				 x"99" when "0100",
				 x"92" when "0101",
				 x"82" when "0110",
				 x"F8" when "0111",
				 x"80" when "1000",
				 x"90" when "1001",
				 x"FF" when others;
				 
digito<=s_digito(6 downto 0);

end test;