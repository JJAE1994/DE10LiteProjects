library ieee;
use ieee.std_logic_1164.all;

entity mux_decoders is
port(
		disp20, disp40, disp60, disp80, disp100: in std_logic_vector(20 downto 0);
		sel:std_logic_vector(2 downto 0);
		dc_binary: out std_logic_vector(20 downto 0)
				
		);
end mux_decoders;

architecture test of mux_decoders is

begin

dc_binary<=
	disp20 when sel="000" else
	disp40 when sel="001" else 
	disp60 when sel="010" else
	disp80 when sel="011" else 
	disp100 when sel="100" else
	(others=>'0');


end test;