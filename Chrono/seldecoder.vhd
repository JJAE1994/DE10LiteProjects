library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity seldecoder is
port(
	qsel:in std_logic_vector(1 downto 0);
	enables:out std_logic_vector(3 downto 0)
);
end seldecoder;

architecture test of seldecoder is
begin

enables <= 
		"1110" when qsel="00" else
		"1101" when qsel="01" else
		"1011" when qsel="10" else	
		"0111";

end test;