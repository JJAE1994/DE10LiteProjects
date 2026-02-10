library ieee;
use ieee.std_logic_1164.all;

entity mux_vel is
port(
		v20, v40, v60, v80, v100: in std_logic;
		sel:std_logic_vector(2 downto 0);
		v_motor: out std_logic
				
		);
end mux_vel;

architecture test of mux_vel is

begin

v_motor<=
	v20 when sel="000" else
	v40 when sel="001" else 
	v60 when sel="010" else
	v80 when sel="011" else 
	v100 when sel="100" else
	'0';


end test;
