library ieee;
use ieee.std_logic_1164.all;

entity control_vel is
port(
		clk, speed_up, speed_down: in std_logic;
		sel_vel: out std_logic_vector(2 downto 0)
				
		);
end control_vel;

architecture test of control_vel is
component debounce is
port(
		clk, pb: in std_logic;
		pb_db: out std_logic
				
		);
end component;

component detector_flanco is
port(
		clk, e: in std_logic;
		S: out std_logic
				
		);
end component;

component contador_mod5 is
port(
		clk, up_flanco, down_flanco: in std_logic;
		sel_vel: out std_logic_vector(2 downto 0)		
				
		);
end component;

signal speed_up_db, speed_down_db, flanco_up, flanco_down: std_logic;
begin


antirreboteup:debounce
port map( clk, speed_up, speed_up_db);
antirrebotedown:debounce
port map( clk, speed_down, speed_down_db);
detflancoup:detector_flanco
port map( clk, speed_up_db, flanco_up);
detflancodown:detector_flanco
port map( clk, speed_down_db, flanco_down);
CONTADOR:contador_mod5
port map( clk, flanco_up, flanco_down, sel_vel);


end test;
