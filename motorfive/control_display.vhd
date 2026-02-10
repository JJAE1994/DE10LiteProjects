library ieee;
use ieee.std_logic_1164.all;

entity control_display is
port(
		binary:in std_logic_vector(20 downto 0);
		pwm_brillo: in std_logic;
		centenas, decenas, unidades: out std_logic_vector(6 downto 0)
				
		);
end control_display;

architecture test of control_display is

begin

centenas <= (not (pwm_brillo&pwm_brillo&pwm_brillo&pwm_brillo
						&pwm_brillo&pwm_brillo&pwm_brillo)) or
				binary(20 downto 14);
decenas <= (not (pwm_brillo&pwm_brillo&pwm_brillo&pwm_brillo
						&pwm_brillo&pwm_brillo&pwm_brillo)) or
				binary(13 downto 7);
unidades <= (not (pwm_brillo&pwm_brillo&pwm_brillo&pwm_brillo
						&pwm_brillo&pwm_brillo&pwm_brillo)) or
				binary(6 downto 0);
end test;	