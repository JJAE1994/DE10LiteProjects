library ieee;
use ieee.std_logic_1164.all;

entity control_brillo is
port(
		clk, brightness: in std_logic;
		sel_brillo: out std_logic_vector(2 downto 0)
				
		);
end control_brillo;

architecture test of control_brillo is
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

component contador_brillo is
port(
		clk, brillo: in std_logic;
		sel_brillo: out std_logic_vector(2 downto 0)		
				
		);
end component;

signal brightness_db, flanco_brillo: std_logic;
begin


antirrebotebrillo:debounce
port map( clk, brightness, brightness_db);
detflancobrightness:detector_flanco
port map( clk, brightness_db, flanco_brillo);
CONTADORBRILLO:contador_brillo
port map( clk, flanco_brillo, sel_brillo);


end test;