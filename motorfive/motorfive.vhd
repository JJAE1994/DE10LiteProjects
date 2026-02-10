library ieee;
use ieee.std_logic_1164.all;

entity motorfive is
port(
		clk, speed_up, speed_down, start_stop, brightness: in std_logic;
		motor, led_green, led_red: out std_logic;
		display_c, display_d, display_u: out std_logic_vector(6 downto 0)
				
		);
end motorfive;

architecture test of motorfive is
component control_vel is
port(
		clk, speed_up, speed_down: in std_logic;
		sel_vel: out std_logic_vector(2 downto 0)
				
		);
end component;

component control_display is
port(
		binary:in std_logic_vector(20 downto 0);
		pwm_brillo: in std_logic;
		centenas, decenas, unidades: out std_logic_vector(6 downto 0)
				
		);
end component;

component control_motor is
port(
		clk, pwm_motor, start_stop: in std_logic;
		motor, led_green, led_red: out std_logic
				
		);
end component;

component control_brillo is
port(
		clk, brightness: in std_logic;
		sel_brillo: out std_logic_vector(2 downto 0)
				
		);
end component;

component divf_vel_sim is
port(
		clk_50M: in std_logic;
		clk_20kHz_20, clk_20kHz_40, clk_20kHz_60, 
		clk_20kHz_80, clk_20kHz_100: out std_logic
				
		);
end component;


component divf_brillo_sim is
port(
		clk_50M: in std_logic;
		clk_100kHz_10, clk_100kHz_20, clk_100kHz_50, 
		clk_100kHz_80, clk_100kHz_100: out std_logic
				
		);
end component;

component mux_decoders is
port(
		disp20, disp40, disp60, disp80, disp100: in std_logic_vector(20 downto 0);
		sel:std_logic_vector(2 downto 0);
		dc_binary: out std_logic_vector(20 downto 0)
				
		);
end component;

component mux_vel is
port(
		v20, v40, v60, v80, v100: in std_logic;
		sel:std_logic_vector(2 downto 0);
		v_motor: out std_logic
				
		);
end component;

signal pwm_20, pwm_40, pwm_60, pwm_80, pwm_100, pwm_motor, pwm_brillo: std_logic;
signal pwm_b_10, pwm_b_20, pwm_b_50, pwm_b_80, pwm_b_100: std_logic;
signal sel_control_vel, sel_control_brillo: std_logic_vector(2 downto 0);
signal dc_binary: std_logic_vector(20 downto 0);
begin


PWMMOTOR:divf_vel_sim
port map( clk, pwm_20, pwm_40, pwm_60, pwm_80, pwm_100);
MUXMOTOR:mux_vel
port map(pwm_20, pwm_40, pwm_60, pwm_80, pwm_100, sel_control_vel, pwm_motor);
CONTROLVEL:control_vel
port map(clk, speed_up, speed_down, sel_control_vel);
ONOFF:control_motor
port map(clk, pwm_motor, start_stop, motor, led_green, led_red);
MUXDISPLAY:mux_decoders
port map("100000001001001000000", "100000000110011000000", "100000000000101000000", "100000000000001000000", "111100110000001000000", sel_control_vel, dc_binary);
DISPLAY:control_display
port map(dc_binary, pwm_brillo, display_c, display_d, display_u);
PWMBRILLO:divf_brillo_sim
port map( clk, pwm_b_10, pwm_b_20, pwm_b_50, pwm_b_80, pwm_b_100);
MUXBRILLO:mux_vel
port map(pwm_b_10, pwm_b_20, pwm_b_50, pwm_b_80, pwm_b_100, sel_control_brillo, pwm_brillo);
CONTROLBRILLO:control_brillo
port map(clk, brightness, sel_control_brillo);


end test;