library ieee;
use ieee.std_logic_1164.all;

entity control_motor is
port(
		clk, pwm_motor, start_stop: in std_logic;
		motor, led_green, led_red: out std_logic
				
		);
end control_motor;

architecture test of control_motor is
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



signal start_stop_db, flanco_startstop: std_logic;
signal on_off: std_logic :='0';
begin


antirrebotestartstop:debounce
port map( clk, start_stop, start_stop_db);
detflancostartstop:detector_flanco
port map( clk, start_stop_db, flanco_startstop);

process(clk)
begin

if clk'event and clk='1' then
	if flanco_startstop='1' then
		on_off<= not on_off;
	end if;
end if;
end process;

motor <= '0' when on_off='0' else
				 pwm_motor;
				 
led_green <= on_off;
led_red <= not on_off;
end test;