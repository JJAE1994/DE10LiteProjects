library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity sevensegdecoder is
port(
	count:in std_logic_vector(3 downto 0);
	sevenseg:out std_logic_vector(7 downto 0)
);
end sevensegdecoder;

architecture test of sevensegdecoder is
begin
--decodificacion para cada digito del 0 al 9
sevenseg<=
			x"3F" when count="0000" else--00111111
			x"06" when count="0001" else--00000110
			x"5B" when count="0010" else--01011011
			x"4F" when count="0011" else--01001111
			x"66" when count="0100" else--01100110
			x"6D" when count="0101" else--01101101
			x"7D" when count="0110" else--01111101
			x"07" when count="0111" else--00000111
			x"7F" when count="1000" else--01111111
			x"6F" when count="1001" else--01101111
			x"3F";

end test;