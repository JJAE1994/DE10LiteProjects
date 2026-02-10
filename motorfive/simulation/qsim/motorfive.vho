-- Copyright (C) 2018  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 18.1.0 Build 625 09/12/2018 SJ Lite Edition"

-- DATE "02/10/2023 12:29:22"

-- 
-- Device: Altera 10M50DAF484C7G Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	motorfive IS
    PORT (
	clk : IN std_logic;
	speed_up : IN std_logic;
	speed_down : IN std_logic;
	start_stop : IN std_logic;
	brightness : IN std_logic;
	motor : OUT std_logic;
	led_green : OUT std_logic;
	led_red : OUT std_logic;
	display_c : OUT std_logic_vector(6 DOWNTO 0);
	display_d : OUT std_logic_vector(6 DOWNTO 0);
	display_u : OUT std_logic_vector(6 DOWNTO 0)
	);
END motorfive;

ARCHITECTURE structure OF motorfive IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_speed_up : std_logic;
SIGNAL ww_speed_down : std_logic;
SIGNAL ww_start_stop : std_logic;
SIGNAL ww_brightness : std_logic;
SIGNAL ww_motor : std_logic;
SIGNAL ww_led_green : std_logic;
SIGNAL ww_led_red : std_logic;
SIGNAL ww_display_c : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_display_d : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_display_u : std_logic_vector(6 DOWNTO 0);
SIGNAL \motor~output_o\ : std_logic;
SIGNAL \led_green~output_o\ : std_logic;
SIGNAL \led_red~output_o\ : std_logic;
SIGNAL \display_c[0]~output_o\ : std_logic;
SIGNAL \display_c[1]~output_o\ : std_logic;
SIGNAL \display_c[2]~output_o\ : std_logic;
SIGNAL \display_c[3]~output_o\ : std_logic;
SIGNAL \display_c[4]~output_o\ : std_logic;
SIGNAL \display_c[5]~output_o\ : std_logic;
SIGNAL \display_c[6]~output_o\ : std_logic;
SIGNAL \display_d[0]~output_o\ : std_logic;
SIGNAL \display_d[1]~output_o\ : std_logic;
SIGNAL \display_d[2]~output_o\ : std_logic;
SIGNAL \display_d[3]~output_o\ : std_logic;
SIGNAL \display_d[4]~output_o\ : std_logic;
SIGNAL \display_d[5]~output_o\ : std_logic;
SIGNAL \display_d[6]~output_o\ : std_logic;
SIGNAL \display_u[0]~output_o\ : std_logic;
SIGNAL \display_u[1]~output_o\ : std_logic;
SIGNAL \display_u[2]~output_o\ : std_logic;
SIGNAL \display_u[3]~output_o\ : std_logic;
SIGNAL \display_u[4]~output_o\ : std_logic;
SIGNAL \display_u[5]~output_o\ : std_logic;
SIGNAL \display_u[6]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \start_stop~input_o\ : std_logic;
SIGNAL \ONOFF|antirrebotestartstop|delay1~0_combout\ : std_logic;
SIGNAL \ONOFF|antirrebotestartstop|delay1~q\ : std_logic;
SIGNAL \ONOFF|antirrebotestartstop|delay2~q\ : std_logic;
SIGNAL \ONOFF|antirrebotestartstop|delay3~q\ : std_logic;
SIGNAL \ONOFF|antirrebotestartstop|pb_db~0_combout\ : std_logic;
SIGNAL \ONOFF|detflancostartstop|s_q~q\ : std_logic;
SIGNAL \ONOFF|on_off~0_combout\ : std_logic;
SIGNAL \ONOFF|on_off~1_combout\ : std_logic;
SIGNAL \ONOFF|on_off~q\ : std_logic;
SIGNAL \speed_down~input_o\ : std_logic;
SIGNAL \CONTROLVEL|antirrebotedown|delay1~0_combout\ : std_logic;
SIGNAL \CONTROLVEL|antirrebotedown|delay1~q\ : std_logic;
SIGNAL \CONTROLVEL|antirrebotedown|delay2~q\ : std_logic;
SIGNAL \CONTROLVEL|antirrebotedown|delay3~q\ : std_logic;
SIGNAL \CONTROLVEL|antirrebotedown|pb_db~0_combout\ : std_logic;
SIGNAL \CONTROLVEL|detflancodown|s_q~q\ : std_logic;
SIGNAL \CONTROLVEL|CONTADOR|process_0~0_combout\ : std_logic;
SIGNAL \speed_up~input_o\ : std_logic;
SIGNAL \CONTROLVEL|antirreboteup|delay1~0_combout\ : std_logic;
SIGNAL \CONTROLVEL|antirreboteup|delay1~q\ : std_logic;
SIGNAL \CONTROLVEL|antirreboteup|delay2~q\ : std_logic;
SIGNAL \CONTROLVEL|antirreboteup|delay3~q\ : std_logic;
SIGNAL \CONTROLVEL|antirreboteup|pb_db~0_combout\ : std_logic;
SIGNAL \CONTROLVEL|detflancoup|s_q~q\ : std_logic;
SIGNAL \CONTROLVEL|CONTADOR|process_0~1_combout\ : std_logic;
SIGNAL \CONTROLVEL|CONTADOR|cuenta[1]~2_combout\ : std_logic;
SIGNAL \CONTROLVEL|CONTADOR|process_0~2_combout\ : std_logic;
SIGNAL \CONTROLVEL|CONTADOR|cuenta[1]~3_combout\ : std_logic;
SIGNAL \CONTROLVEL|CONTADOR|cuenta[2]~4_combout\ : std_logic;
SIGNAL \CONTROLVEL|CONTADOR|cuenta[2]~5_combout\ : std_logic;
SIGNAL \CONTROLVEL|CONTADOR|cuenta[2]~6_combout\ : std_logic;
SIGNAL \CONTROLVEL|CONTADOR|cuenta~0_combout\ : std_logic;
SIGNAL \CONTROLVEL|CONTADOR|cuenta[0]~1_combout\ : std_logic;
SIGNAL \MUXDISPLAY|Equal4~0_combout\ : std_logic;
SIGNAL \PWMMOTOR|Add0~0_combout\ : std_logic;
SIGNAL \PWMMOTOR|Add0~9\ : std_logic;
SIGNAL \PWMMOTOR|Add0~10_combout\ : std_logic;
SIGNAL \PWMMOTOR|cuenta_f_20~2_combout\ : std_logic;
SIGNAL \PWMMOTOR|Equal0~0_combout\ : std_logic;
SIGNAL \PWMMOTOR|Equal0~1_combout\ : std_logic;
SIGNAL \PWMMOTOR|cuenta_f_20~1_combout\ : std_logic;
SIGNAL \PWMMOTOR|Add0~1\ : std_logic;
SIGNAL \PWMMOTOR|Add0~2_combout\ : std_logic;
SIGNAL \PWMMOTOR|cuenta_f_20~3_combout\ : std_logic;
SIGNAL \PWMMOTOR|Add0~3\ : std_logic;
SIGNAL \PWMMOTOR|Add0~4_combout\ : std_logic;
SIGNAL \PWMMOTOR|Add0~5\ : std_logic;
SIGNAL \PWMMOTOR|Add0~6_combout\ : std_logic;
SIGNAL \PWMMOTOR|Add0~7\ : std_logic;
SIGNAL \PWMMOTOR|Add0~8_combout\ : std_logic;
SIGNAL \PWMMOTOR|cuenta_f_20~0_combout\ : std_logic;
SIGNAL \PWMMOTOR|clk_20kHz_60~0_combout\ : std_logic;
SIGNAL \PWMMOTOR|clk_20kHz_60~1_combout\ : std_logic;
SIGNAL \PWMMOTOR|clk_20kHz_60~2_combout\ : std_logic;
SIGNAL \PWMMOTOR|clk_20kHz_60~q\ : std_logic;
SIGNAL \PWMMOTOR|clk_20kHz_40~0_combout\ : std_logic;
SIGNAL \PWMMOTOR|clk_20kHz_40~1_combout\ : std_logic;
SIGNAL \PWMMOTOR|clk_20kHz_40~2_combout\ : std_logic;
SIGNAL \PWMMOTOR|clk_20kHz_40~q\ : std_logic;
SIGNAL \PWMMOTOR|clk_20kHz_20~0_combout\ : std_logic;
SIGNAL \PWMMOTOR|clk_20kHz_20~1_combout\ : std_logic;
SIGNAL \PWMMOTOR|clk_20kHz_20~q\ : std_logic;
SIGNAL \MUXMOTOR|v_motor~0_combout\ : std_logic;
SIGNAL \PWMMOTOR|clk_20kHz_80~0_combout\ : std_logic;
SIGNAL \PWMMOTOR|clk_20kHz_80~1_combout\ : std_logic;
SIGNAL \PWMMOTOR|clk_20kHz_80~q\ : std_logic;
SIGNAL \MUXMOTOR|v_motor~1_combout\ : std_logic;
SIGNAL \MUXMOTOR|v_motor~2_combout\ : std_logic;
SIGNAL \PWMBRILLO|cuenta_f_10~3_combout\ : std_logic;
SIGNAL \PWMBRILLO|cuenta_f_10[2]~1_combout\ : std_logic;
SIGNAL \PWMBRILLO|cuenta_f_10~2_combout\ : std_logic;
SIGNAL \PWMBRILLO|cuenta_f_10~0_combout\ : std_logic;
SIGNAL \PWMBRILLO|clk_100kHz_50~0_combout\ : std_logic;
SIGNAL \PWMBRILLO|Equal0~0_combout\ : std_logic;
SIGNAL \PWMBRILLO|clk_100kHz_50~1_combout\ : std_logic;
SIGNAL \PWMBRILLO|clk_100kHz_50~q\ : std_logic;
SIGNAL \CONTROLBRILLO|CONTADORBRILLO|cuenta~2_combout\ : std_logic;
SIGNAL \brightness~input_o\ : std_logic;
SIGNAL \CONTROLBRILLO|antirrebotebrillo|delay1~0_combout\ : std_logic;
SIGNAL \CONTROLBRILLO|antirrebotebrillo|delay1~q\ : std_logic;
SIGNAL \CONTROLBRILLO|antirrebotebrillo|delay2~q\ : std_logic;
SIGNAL \CONTROLBRILLO|antirrebotebrillo|delay3~q\ : std_logic;
SIGNAL \CONTROLBRILLO|antirrebotebrillo|pb_db~0_combout\ : std_logic;
SIGNAL \CONTROLBRILLO|detflancobrightness|s_q~q\ : std_logic;
SIGNAL \CONTROLBRILLO|detflancobrightness|S~0_combout\ : std_logic;
SIGNAL \CONTROLBRILLO|CONTADORBRILLO|cuenta~1_combout\ : std_logic;
SIGNAL \CONTROLBRILLO|CONTADORBRILLO|cuenta~0_combout\ : std_logic;
SIGNAL \PWMBRILLO|clk_100kHz_20~0_combout\ : std_logic;
SIGNAL \PWMBRILLO|clk_100kHz_20~1_combout\ : std_logic;
SIGNAL \PWMBRILLO|clk_100kHz_20~q\ : std_logic;
SIGNAL \PWMBRILLO|clk_100kHz_10~0_combout\ : std_logic;
SIGNAL \PWMBRILLO|clk_100kHz_10~q\ : std_logic;
SIGNAL \MUXBRILLO|v_motor~0_combout\ : std_logic;
SIGNAL \PWMBRILLO|clk_100kHz_80~0_combout\ : std_logic;
SIGNAL \PWMBRILLO|clk_100kHz_80~1_combout\ : std_logic;
SIGNAL \PWMBRILLO|clk_100kHz_80~q\ : std_logic;
SIGNAL \MUXBRILLO|v_motor~1_combout\ : std_logic;
SIGNAL \MUXBRILLO|v_motor~2_combout\ : std_logic;
SIGNAL \DISPLAY|decenas\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \CONTROLVEL|CONTADOR|cuenta\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \CONTROLBRILLO|CONTADORBRILLO|cuenta\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \PWMMOTOR|cuenta_f_20\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \PWMBRILLO|cuenta_f_10\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \DISPLAY|centenas\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \MUXBRILLO|ALT_INV_v_motor~2_combout\ : std_logic;
SIGNAL \ONOFF|ALT_INV_on_off~q\ : std_logic;

BEGIN

ww_clk <= clk;
ww_speed_up <= speed_up;
ww_speed_down <= speed_down;
ww_start_stop <= start_stop;
ww_brightness <= brightness;
motor <= ww_motor;
led_green <= ww_led_green;
led_red <= ww_led_red;
display_c <= ww_display_c;
display_d <= ww_display_d;
display_u <= ww_display_u;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\MUXBRILLO|ALT_INV_v_motor~2_combout\ <= NOT \MUXBRILLO|v_motor~2_combout\;
\ONOFF|ALT_INV_on_off~q\ <= NOT \ONOFF|on_off~q\;

\motor~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MUXMOTOR|v_motor~2_combout\,
	devoe => ww_devoe,
	o => \motor~output_o\);

\led_green~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ONOFF|on_off~q\,
	devoe => ww_devoe,
	o => \led_green~output_o\);

\led_red~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ONOFF|ALT_INV_on_off~q\,
	devoe => ww_devoe,
	o => \led_red~output_o\);

\display_c[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DISPLAY|centenas\(0),
	devoe => ww_devoe,
	o => \display_c[0]~output_o\);

\display_c[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MUXBRILLO|ALT_INV_v_motor~2_combout\,
	devoe => ww_devoe,
	o => \display_c[1]~output_o\);

\display_c[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MUXBRILLO|ALT_INV_v_motor~2_combout\,
	devoe => ww_devoe,
	o => \display_c[2]~output_o\);

\display_c[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DISPLAY|centenas\(0),
	devoe => ww_devoe,
	o => \display_c[3]~output_o\);

\display_c[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DISPLAY|centenas\(0),
	devoe => ww_devoe,
	o => \display_c[4]~output_o\);

\display_c[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DISPLAY|centenas\(0),
	devoe => ww_devoe,
	o => \display_c[5]~output_o\);

\display_c[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DISPLAY|centenas\(6),
	devoe => ww_devoe,
	o => \display_c[6]~output_o\);

\display_d[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DISPLAY|decenas\(0),
	devoe => ww_devoe,
	o => \display_d[0]~output_o\);

\display_d[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DISPLAY|decenas\(1),
	devoe => ww_devoe,
	o => \display_d[1]~output_o\);

\display_d[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DISPLAY|decenas\(2),
	devoe => ww_devoe,
	o => \display_d[2]~output_o\);

\display_d[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DISPLAY|decenas\(0),
	devoe => ww_devoe,
	o => \display_d[3]~output_o\);

\display_d[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DISPLAY|decenas\(0),
	devoe => ww_devoe,
	o => \display_d[4]~output_o\);

\display_d[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DISPLAY|decenas\(2),
	devoe => ww_devoe,
	o => \display_d[5]~output_o\);

\display_d[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DISPLAY|centenas\(0),
	devoe => ww_devoe,
	o => \display_d[6]~output_o\);

\display_u[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MUXBRILLO|ALT_INV_v_motor~2_combout\,
	devoe => ww_devoe,
	o => \display_u[0]~output_o\);

\display_u[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MUXBRILLO|ALT_INV_v_motor~2_combout\,
	devoe => ww_devoe,
	o => \display_u[1]~output_o\);

\display_u[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MUXBRILLO|ALT_INV_v_motor~2_combout\,
	devoe => ww_devoe,
	o => \display_u[2]~output_o\);

\display_u[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MUXBRILLO|ALT_INV_v_motor~2_combout\,
	devoe => ww_devoe,
	o => \display_u[3]~output_o\);

\display_u[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MUXBRILLO|ALT_INV_v_motor~2_combout\,
	devoe => ww_devoe,
	o => \display_u[4]~output_o\);

\display_u[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MUXBRILLO|ALT_INV_v_motor~2_combout\,
	devoe => ww_devoe,
	o => \display_u[5]~output_o\);

\display_u[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DISPLAY|centenas\(6),
	devoe => ww_devoe,
	o => \display_u[6]~output_o\);

\clk~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

\start_stop~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_start_stop,
	o => \start_stop~input_o\);

\ONOFF|antirrebotestartstop|delay1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ONOFF|antirrebotestartstop|delay1~0_combout\ = !\start_stop~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \start_stop~input_o\,
	combout => \ONOFF|antirrebotestartstop|delay1~0_combout\);

\ONOFF|antirrebotestartstop|delay1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ONOFF|antirrebotestartstop|delay1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ONOFF|antirrebotestartstop|delay1~q\);

\ONOFF|antirrebotestartstop|delay2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ONOFF|antirrebotestartstop|delay1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ONOFF|antirrebotestartstop|delay2~q\);

\ONOFF|antirrebotestartstop|delay3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ONOFF|antirrebotestartstop|delay2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ONOFF|antirrebotestartstop|delay3~q\);

\ONOFF|antirrebotestartstop|pb_db~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ONOFF|antirrebotestartstop|pb_db~0_combout\ = ((!\ONOFF|antirrebotestartstop|delay2~q\) # (!\ONOFF|antirrebotestartstop|delay1~q\)) # (!\ONOFF|antirrebotestartstop|delay3~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ONOFF|antirrebotestartstop|delay3~q\,
	datac => \ONOFF|antirrebotestartstop|delay1~q\,
	datad => \ONOFF|antirrebotestartstop|delay2~q\,
	combout => \ONOFF|antirrebotestartstop|pb_db~0_combout\);

\ONOFF|detflancostartstop|s_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ONOFF|antirrebotestartstop|pb_db~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ONOFF|detflancostartstop|s_q~q\);

\ONOFF|on_off~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ONOFF|on_off~0_combout\ = (\ONOFF|antirrebotestartstop|delay1~q\ & \ONOFF|antirrebotestartstop|delay2~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ONOFF|antirrebotestartstop|delay1~q\,
	datab => \ONOFF|antirrebotestartstop|delay2~q\,
	combout => \ONOFF|on_off~0_combout\);

\ONOFF|on_off~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ONOFF|on_off~1_combout\ = \ONOFF|on_off~q\ $ (((\ONOFF|detflancostartstop|s_q~q\ & (\ONOFF|antirrebotestartstop|delay3~q\ & \ONOFF|on_off~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ONOFF|detflancostartstop|s_q~q\,
	datab => \ONOFF|on_off~q\,
	datac => \ONOFF|antirrebotestartstop|delay3~q\,
	datad => \ONOFF|on_off~0_combout\,
	combout => \ONOFF|on_off~1_combout\);

\ONOFF|on_off\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ONOFF|on_off~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ONOFF|on_off~q\);

\speed_down~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_speed_down,
	o => \speed_down~input_o\);

\CONTROLVEL|antirrebotedown|delay1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CONTROLVEL|antirrebotedown|delay1~0_combout\ = !\speed_down~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \speed_down~input_o\,
	combout => \CONTROLVEL|antirrebotedown|delay1~0_combout\);

\CONTROLVEL|antirrebotedown|delay1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \CONTROLVEL|antirrebotedown|delay1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CONTROLVEL|antirrebotedown|delay1~q\);

\CONTROLVEL|antirrebotedown|delay2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \CONTROLVEL|antirrebotedown|delay1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CONTROLVEL|antirrebotedown|delay2~q\);

\CONTROLVEL|antirrebotedown|delay3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \CONTROLVEL|antirrebotedown|delay2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CONTROLVEL|antirrebotedown|delay3~q\);

\CONTROLVEL|antirrebotedown|pb_db~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CONTROLVEL|antirrebotedown|pb_db~0_combout\ = ((!\CONTROLVEL|antirrebotedown|delay2~q\) # (!\CONTROLVEL|antirrebotedown|delay1~q\)) # (!\CONTROLVEL|antirrebotedown|delay3~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CONTROLVEL|antirrebotedown|delay3~q\,
	datac => \CONTROLVEL|antirrebotedown|delay1~q\,
	datad => \CONTROLVEL|antirrebotedown|delay2~q\,
	combout => \CONTROLVEL|antirrebotedown|pb_db~0_combout\);

\CONTROLVEL|detflancodown|s_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \CONTROLVEL|antirrebotedown|pb_db~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CONTROLVEL|detflancodown|s_q~q\);

\CONTROLVEL|CONTADOR|process_0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CONTROLVEL|CONTADOR|process_0~0_combout\ = (\CONTROLVEL|detflancodown|s_q~q\ & (\CONTROLVEL|antirrebotedown|delay3~q\ & (\CONTROLVEL|antirrebotedown|delay1~q\ & \CONTROLVEL|antirrebotedown|delay2~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLVEL|detflancodown|s_q~q\,
	datab => \CONTROLVEL|antirrebotedown|delay3~q\,
	datac => \CONTROLVEL|antirrebotedown|delay1~q\,
	datad => \CONTROLVEL|antirrebotedown|delay2~q\,
	combout => \CONTROLVEL|CONTADOR|process_0~0_combout\);

\speed_up~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_speed_up,
	o => \speed_up~input_o\);

\CONTROLVEL|antirreboteup|delay1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CONTROLVEL|antirreboteup|delay1~0_combout\ = !\speed_up~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \speed_up~input_o\,
	combout => \CONTROLVEL|antirreboteup|delay1~0_combout\);

\CONTROLVEL|antirreboteup|delay1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \CONTROLVEL|antirreboteup|delay1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CONTROLVEL|antirreboteup|delay1~q\);

\CONTROLVEL|antirreboteup|delay2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \CONTROLVEL|antirreboteup|delay1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CONTROLVEL|antirreboteup|delay2~q\);

\CONTROLVEL|antirreboteup|delay3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \CONTROLVEL|antirreboteup|delay2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CONTROLVEL|antirreboteup|delay3~q\);

\CONTROLVEL|antirreboteup|pb_db~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CONTROLVEL|antirreboteup|pb_db~0_combout\ = ((!\CONTROLVEL|antirreboteup|delay2~q\) # (!\CONTROLVEL|antirreboteup|delay1~q\)) # (!\CONTROLVEL|antirreboteup|delay3~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CONTROLVEL|antirreboteup|delay3~q\,
	datac => \CONTROLVEL|antirreboteup|delay1~q\,
	datad => \CONTROLVEL|antirreboteup|delay2~q\,
	combout => \CONTROLVEL|antirreboteup|pb_db~0_combout\);

\CONTROLVEL|detflancoup|s_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \CONTROLVEL|antirreboteup|pb_db~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CONTROLVEL|detflancoup|s_q~q\);

\CONTROLVEL|CONTADOR|process_0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CONTROLVEL|CONTADOR|process_0~1_combout\ = (\CONTROLVEL|detflancoup|s_q~q\ & (\CONTROLVEL|antirreboteup|delay3~q\ & (\CONTROLVEL|antirreboteup|delay1~q\ & \CONTROLVEL|antirreboteup|delay2~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLVEL|detflancoup|s_q~q\,
	datab => \CONTROLVEL|antirreboteup|delay3~q\,
	datac => \CONTROLVEL|antirreboteup|delay1~q\,
	datad => \CONTROLVEL|antirreboteup|delay2~q\,
	combout => \CONTROLVEL|CONTADOR|process_0~1_combout\);

\CONTROLVEL|CONTADOR|cuenta[1]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CONTROLVEL|CONTADOR|cuenta[1]~2_combout\ = (\CONTROLVEL|CONTADOR|process_0~1_combout\ & (((\CONTROLVEL|CONTADOR|cuenta\(2)) # (\CONTROLVEL|CONTADOR|process_0~0_combout\)))) # (!\CONTROLVEL|CONTADOR|process_0~1_combout\ & (((\MUXDISPLAY|Equal4~0_combout\ 
-- & !\CONTROLVEL|CONTADOR|cuenta\(2))) # (!\CONTROLVEL|CONTADOR|process_0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLVEL|CONTADOR|process_0~1_combout\,
	datab => \MUXDISPLAY|Equal4~0_combout\,
	datac => \CONTROLVEL|CONTADOR|cuenta\(2),
	datad => \CONTROLVEL|CONTADOR|process_0~0_combout\,
	combout => \CONTROLVEL|CONTADOR|cuenta[1]~2_combout\);

\CONTROLVEL|CONTADOR|process_0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CONTROLVEL|CONTADOR|process_0~2_combout\ = (\CONTROLVEL|CONTADOR|process_0~1_combout\ & ((\CONTROLVEL|antirrebotedown|pb_db~0_combout\) # (!\CONTROLVEL|detflancodown|s_q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLVEL|CONTADOR|process_0~1_combout\,
	datab => \CONTROLVEL|antirrebotedown|pb_db~0_combout\,
	datad => \CONTROLVEL|detflancodown|s_q~q\,
	combout => \CONTROLVEL|CONTADOR|process_0~2_combout\);

\CONTROLVEL|CONTADOR|cuenta[1]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CONTROLVEL|CONTADOR|cuenta[1]~3_combout\ = \CONTROLVEL|CONTADOR|cuenta\(1) $ (((!\CONTROLVEL|CONTADOR|cuenta[1]~2_combout\ & (\CONTROLVEL|CONTADOR|cuenta\(0) $ (!\CONTROLVEL|CONTADOR|process_0~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001101010101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLVEL|CONTADOR|cuenta\(1),
	datab => \CONTROLVEL|CONTADOR|cuenta[1]~2_combout\,
	datac => \CONTROLVEL|CONTADOR|cuenta\(0),
	datad => \CONTROLVEL|CONTADOR|process_0~2_combout\,
	combout => \CONTROLVEL|CONTADOR|cuenta[1]~3_combout\);

\CONTROLVEL|CONTADOR|cuenta[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \CONTROLVEL|CONTADOR|cuenta[1]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CONTROLVEL|CONTADOR|cuenta\(1));

\CONTROLVEL|CONTADOR|cuenta[2]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CONTROLVEL|CONTADOR|cuenta[2]~4_combout\ = (\CONTROLVEL|CONTADOR|cuenta\(0) & ((\CONTROLVEL|CONTADOR|cuenta\(1)) # ((!\CONTROLVEL|antirrebotedown|pb_db~0_combout\ & \CONTROLVEL|detflancodown|s_q~q\)))) # (!\CONTROLVEL|CONTADOR|cuenta\(0) & 
-- (((!\CONTROLVEL|antirrebotedown|pb_db~0_combout\ & \CONTROLVEL|detflancodown|s_q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLVEL|CONTADOR|cuenta\(0),
	datab => \CONTROLVEL|CONTADOR|cuenta\(1),
	datac => \CONTROLVEL|antirrebotedown|pb_db~0_combout\,
	datad => \CONTROLVEL|detflancodown|s_q~q\,
	combout => \CONTROLVEL|CONTADOR|cuenta[2]~4_combout\);

\CONTROLVEL|CONTADOR|cuenta[2]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CONTROLVEL|CONTADOR|cuenta[2]~5_combout\ = (\CONTROLVEL|CONTADOR|process_0~1_combout\ & (!\CONTROLVEL|CONTADOR|cuenta\(2) & (!\CONTROLVEL|CONTADOR|process_0~0_combout\))) # (!\CONTROLVEL|CONTADOR|process_0~1_combout\ & (\CONTROLVEL|CONTADOR|cuenta\(2) & 
-- (\CONTROLVEL|CONTADOR|process_0~0_combout\ & !\MUXDISPLAY|Equal4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001001000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLVEL|CONTADOR|process_0~1_combout\,
	datab => \CONTROLVEL|CONTADOR|cuenta\(2),
	datac => \CONTROLVEL|CONTADOR|process_0~0_combout\,
	datad => \MUXDISPLAY|Equal4~0_combout\,
	combout => \CONTROLVEL|CONTADOR|cuenta[2]~5_combout\);

\CONTROLVEL|CONTADOR|cuenta[2]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CONTROLVEL|CONTADOR|cuenta[2]~6_combout\ = (\CONTROLVEL|CONTADOR|cuenta\(2) & ((\CONTROLVEL|CONTADOR|cuenta[1]~2_combout\) # ((\CONTROLVEL|CONTADOR|cuenta[2]~5_combout\)))) # (!\CONTROLVEL|CONTADOR|cuenta\(2) & 
-- (((\CONTROLVEL|CONTADOR|cuenta[2]~4_combout\ & \CONTROLVEL|CONTADOR|cuenta[2]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLVEL|CONTADOR|cuenta[1]~2_combout\,
	datab => \CONTROLVEL|CONTADOR|cuenta[2]~4_combout\,
	datac => \CONTROLVEL|CONTADOR|cuenta\(2),
	datad => \CONTROLVEL|CONTADOR|cuenta[2]~5_combout\,
	combout => \CONTROLVEL|CONTADOR|cuenta[2]~6_combout\);

\CONTROLVEL|CONTADOR|cuenta[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \CONTROLVEL|CONTADOR|cuenta[2]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CONTROLVEL|CONTADOR|cuenta\(2));

\CONTROLVEL|CONTADOR|cuenta~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CONTROLVEL|CONTADOR|cuenta~0_combout\ = (\CONTROLVEL|CONTADOR|process_0~0_combout\ & (!\CONTROLVEL|CONTADOR|process_0~1_combout\ & ((\CONTROLVEL|CONTADOR|cuenta\(2)) # (!\MUXDISPLAY|Equal4~0_combout\)))) # (!\CONTROLVEL|CONTADOR|process_0~0_combout\ & 
-- (((!\CONTROLVEL|CONTADOR|cuenta\(2) & \CONTROLVEL|CONTADOR|process_0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUXDISPLAY|Equal4~0_combout\,
	datab => \CONTROLVEL|CONTADOR|process_0~0_combout\,
	datac => \CONTROLVEL|CONTADOR|cuenta\(2),
	datad => \CONTROLVEL|CONTADOR|process_0~1_combout\,
	combout => \CONTROLVEL|CONTADOR|cuenta~0_combout\);

\CONTROLVEL|CONTADOR|cuenta[0]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CONTROLVEL|CONTADOR|cuenta[0]~1_combout\ = \CONTROLVEL|CONTADOR|cuenta\(0) $ (\CONTROLVEL|CONTADOR|cuenta~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CONTROLVEL|CONTADOR|cuenta\(0),
	datad => \CONTROLVEL|CONTADOR|cuenta~0_combout\,
	combout => \CONTROLVEL|CONTADOR|cuenta[0]~1_combout\);

\CONTROLVEL|CONTADOR|cuenta[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \CONTROLVEL|CONTADOR|cuenta[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CONTROLVEL|CONTADOR|cuenta\(0));

\MUXDISPLAY|Equal4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \MUXDISPLAY|Equal4~0_combout\ = (!\CONTROLVEL|CONTADOR|cuenta\(0) & !\CONTROLVEL|CONTADOR|cuenta\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CONTROLVEL|CONTADOR|cuenta\(0),
	datad => \CONTROLVEL|CONTADOR|cuenta\(1),
	combout => \MUXDISPLAY|Equal4~0_combout\);

\PWMMOTOR|Add0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PWMMOTOR|Add0~0_combout\ = \PWMMOTOR|cuenta_f_20\(0) $ (VCC)
-- \PWMMOTOR|Add0~1\ = CARRY(\PWMMOTOR|cuenta_f_20\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PWMMOTOR|cuenta_f_20\(0),
	datad => VCC,
	combout => \PWMMOTOR|Add0~0_combout\,
	cout => \PWMMOTOR|Add0~1\);

\PWMMOTOR|Add0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PWMMOTOR|Add0~8_combout\ = (\PWMMOTOR|cuenta_f_20\(4) & (\PWMMOTOR|Add0~7\ $ (GND))) # (!\PWMMOTOR|cuenta_f_20\(4) & (!\PWMMOTOR|Add0~7\ & VCC))
-- \PWMMOTOR|Add0~9\ = CARRY((\PWMMOTOR|cuenta_f_20\(4) & !\PWMMOTOR|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PWMMOTOR|cuenta_f_20\(4),
	datad => VCC,
	cin => \PWMMOTOR|Add0~7\,
	combout => \PWMMOTOR|Add0~8_combout\,
	cout => \PWMMOTOR|Add0~9\);

\PWMMOTOR|Add0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PWMMOTOR|Add0~10_combout\ = \PWMMOTOR|cuenta_f_20\(5) $ (\PWMMOTOR|Add0~9\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PWMMOTOR|cuenta_f_20\(5),
	cin => \PWMMOTOR|Add0~9\,
	combout => \PWMMOTOR|Add0~10_combout\);

\PWMMOTOR|cuenta_f_20~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PWMMOTOR|cuenta_f_20~2_combout\ = (\PWMMOTOR|Add0~10_combout\ & !\PWMMOTOR|Equal0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PWMMOTOR|Add0~10_combout\,
	datad => \PWMMOTOR|Equal0~1_combout\,
	combout => \PWMMOTOR|cuenta_f_20~2_combout\);

\PWMMOTOR|cuenta_f_20[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \PWMMOTOR|cuenta_f_20~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PWMMOTOR|cuenta_f_20\(5));

\PWMMOTOR|Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PWMMOTOR|Equal0~0_combout\ = (\PWMMOTOR|cuenta_f_20\(5) & (!\PWMMOTOR|cuenta_f_20\(0) & !\PWMMOTOR|cuenta_f_20\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PWMMOTOR|cuenta_f_20\(5),
	datac => \PWMMOTOR|cuenta_f_20\(0),
	datad => \PWMMOTOR|cuenta_f_20\(2),
	combout => \PWMMOTOR|Equal0~0_combout\);

\PWMMOTOR|Equal0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PWMMOTOR|Equal0~1_combout\ = (\PWMMOTOR|cuenta_f_20\(4) & (\PWMMOTOR|cuenta_f_20\(1) & (\PWMMOTOR|Equal0~0_combout\ & !\PWMMOTOR|cuenta_f_20\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PWMMOTOR|cuenta_f_20\(4),
	datab => \PWMMOTOR|cuenta_f_20\(1),
	datac => \PWMMOTOR|Equal0~0_combout\,
	datad => \PWMMOTOR|cuenta_f_20\(3),
	combout => \PWMMOTOR|Equal0~1_combout\);

\PWMMOTOR|cuenta_f_20~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PWMMOTOR|cuenta_f_20~1_combout\ = (\PWMMOTOR|Add0~0_combout\ & !\PWMMOTOR|Equal0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PWMMOTOR|Add0~0_combout\,
	datad => \PWMMOTOR|Equal0~1_combout\,
	combout => \PWMMOTOR|cuenta_f_20~1_combout\);

\PWMMOTOR|cuenta_f_20[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \PWMMOTOR|cuenta_f_20~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PWMMOTOR|cuenta_f_20\(0));

\PWMMOTOR|Add0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PWMMOTOR|Add0~2_combout\ = (\PWMMOTOR|cuenta_f_20\(1) & (!\PWMMOTOR|Add0~1\)) # (!\PWMMOTOR|cuenta_f_20\(1) & ((\PWMMOTOR|Add0~1\) # (GND)))
-- \PWMMOTOR|Add0~3\ = CARRY((!\PWMMOTOR|Add0~1\) # (!\PWMMOTOR|cuenta_f_20\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PWMMOTOR|cuenta_f_20\(1),
	datad => VCC,
	cin => \PWMMOTOR|Add0~1\,
	combout => \PWMMOTOR|Add0~2_combout\,
	cout => \PWMMOTOR|Add0~3\);

\PWMMOTOR|cuenta_f_20~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PWMMOTOR|cuenta_f_20~3_combout\ = (\PWMMOTOR|Add0~2_combout\ & !\PWMMOTOR|Equal0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PWMMOTOR|Add0~2_combout\,
	datad => \PWMMOTOR|Equal0~1_combout\,
	combout => \PWMMOTOR|cuenta_f_20~3_combout\);

\PWMMOTOR|cuenta_f_20[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \PWMMOTOR|cuenta_f_20~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PWMMOTOR|cuenta_f_20\(1));

\PWMMOTOR|Add0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PWMMOTOR|Add0~4_combout\ = (\PWMMOTOR|cuenta_f_20\(2) & (\PWMMOTOR|Add0~3\ $ (GND))) # (!\PWMMOTOR|cuenta_f_20\(2) & (!\PWMMOTOR|Add0~3\ & VCC))
-- \PWMMOTOR|Add0~5\ = CARRY((\PWMMOTOR|cuenta_f_20\(2) & !\PWMMOTOR|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PWMMOTOR|cuenta_f_20\(2),
	datad => VCC,
	cin => \PWMMOTOR|Add0~3\,
	combout => \PWMMOTOR|Add0~4_combout\,
	cout => \PWMMOTOR|Add0~5\);

\PWMMOTOR|cuenta_f_20[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \PWMMOTOR|Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PWMMOTOR|cuenta_f_20\(2));

\PWMMOTOR|Add0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PWMMOTOR|Add0~6_combout\ = (\PWMMOTOR|cuenta_f_20\(3) & (!\PWMMOTOR|Add0~5\)) # (!\PWMMOTOR|cuenta_f_20\(3) & ((\PWMMOTOR|Add0~5\) # (GND)))
-- \PWMMOTOR|Add0~7\ = CARRY((!\PWMMOTOR|Add0~5\) # (!\PWMMOTOR|cuenta_f_20\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PWMMOTOR|cuenta_f_20\(3),
	datad => VCC,
	cin => \PWMMOTOR|Add0~5\,
	combout => \PWMMOTOR|Add0~6_combout\,
	cout => \PWMMOTOR|Add0~7\);

\PWMMOTOR|cuenta_f_20[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \PWMMOTOR|Add0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PWMMOTOR|cuenta_f_20\(3));

\PWMMOTOR|cuenta_f_20~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PWMMOTOR|cuenta_f_20~0_combout\ = (\PWMMOTOR|Add0~8_combout\ & !\PWMMOTOR|Equal0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PWMMOTOR|Add0~8_combout\,
	datad => \PWMMOTOR|Equal0~1_combout\,
	combout => \PWMMOTOR|cuenta_f_20~0_combout\);

\PWMMOTOR|cuenta_f_20[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \PWMMOTOR|cuenta_f_20~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PWMMOTOR|cuenta_f_20\(4));

\PWMMOTOR|clk_20kHz_60~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PWMMOTOR|clk_20kHz_60~0_combout\ = (\PWMMOTOR|cuenta_f_20\(4) & (!\PWMMOTOR|cuenta_f_20\(3) & (!\PWMMOTOR|cuenta_f_20\(0) & !\PWMMOTOR|cuenta_f_20\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PWMMOTOR|cuenta_f_20\(4),
	datab => \PWMMOTOR|cuenta_f_20\(3),
	datac => \PWMMOTOR|cuenta_f_20\(0),
	datad => \PWMMOTOR|cuenta_f_20\(5),
	combout => \PWMMOTOR|clk_20kHz_60~0_combout\);

\PWMMOTOR|clk_20kHz_60~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PWMMOTOR|clk_20kHz_60~1_combout\ = (\PWMMOTOR|cuenta_f_20\(2) & !\PWMMOTOR|cuenta_f_20\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PWMMOTOR|cuenta_f_20\(2),
	datad => \PWMMOTOR|cuenta_f_20\(1),
	combout => \PWMMOTOR|clk_20kHz_60~1_combout\);

\PWMMOTOR|clk_20kHz_60~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PWMMOTOR|clk_20kHz_60~2_combout\ = (!\PWMMOTOR|Equal0~1_combout\ & ((\PWMMOTOR|clk_20kHz_60~q\) # ((\PWMMOTOR|clk_20kHz_60~0_combout\ & \PWMMOTOR|clk_20kHz_60~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PWMMOTOR|clk_20kHz_60~q\,
	datab => \PWMMOTOR|clk_20kHz_60~0_combout\,
	datac => \PWMMOTOR|clk_20kHz_60~1_combout\,
	datad => \PWMMOTOR|Equal0~1_combout\,
	combout => \PWMMOTOR|clk_20kHz_60~2_combout\);

\PWMMOTOR|clk_20kHz_60\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \PWMMOTOR|clk_20kHz_60~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PWMMOTOR|clk_20kHz_60~q\);

\PWMMOTOR|clk_20kHz_40~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PWMMOTOR|clk_20kHz_40~0_combout\ = (\PWMMOTOR|cuenta_f_20\(3) & (\PWMMOTOR|cuenta_f_20\(1) & (!\PWMMOTOR|cuenta_f_20\(0) & !\PWMMOTOR|cuenta_f_20\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PWMMOTOR|cuenta_f_20\(3),
	datab => \PWMMOTOR|cuenta_f_20\(1),
	datac => \PWMMOTOR|cuenta_f_20\(0),
	datad => \PWMMOTOR|cuenta_f_20\(5),
	combout => \PWMMOTOR|clk_20kHz_40~0_combout\);

\PWMMOTOR|clk_20kHz_40~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PWMMOTOR|clk_20kHz_40~1_combout\ = (\PWMMOTOR|cuenta_f_20\(4) & \PWMMOTOR|cuenta_f_20\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PWMMOTOR|cuenta_f_20\(4),
	datab => \PWMMOTOR|cuenta_f_20\(2),
	combout => \PWMMOTOR|clk_20kHz_40~1_combout\);

\PWMMOTOR|clk_20kHz_40~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PWMMOTOR|clk_20kHz_40~2_combout\ = (!\PWMMOTOR|Equal0~1_combout\ & ((\PWMMOTOR|clk_20kHz_40~q\) # ((\PWMMOTOR|clk_20kHz_40~0_combout\ & \PWMMOTOR|clk_20kHz_40~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PWMMOTOR|clk_20kHz_40~q\,
	datab => \PWMMOTOR|clk_20kHz_40~0_combout\,
	datac => \PWMMOTOR|clk_20kHz_40~1_combout\,
	datad => \PWMMOTOR|Equal0~1_combout\,
	combout => \PWMMOTOR|clk_20kHz_40~2_combout\);

\PWMMOTOR|clk_20kHz_40\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \PWMMOTOR|clk_20kHz_40~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PWMMOTOR|clk_20kHz_40~q\);

\PWMMOTOR|clk_20kHz_20~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PWMMOTOR|clk_20kHz_20~0_combout\ = (\PWMMOTOR|cuenta_f_20\(3) & (\PWMMOTOR|Equal0~0_combout\ & (!\PWMMOTOR|cuenta_f_20\(4) & !\PWMMOTOR|cuenta_f_20\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PWMMOTOR|cuenta_f_20\(3),
	datab => \PWMMOTOR|Equal0~0_combout\,
	datac => \PWMMOTOR|cuenta_f_20\(4),
	datad => \PWMMOTOR|cuenta_f_20\(1),
	combout => \PWMMOTOR|clk_20kHz_20~0_combout\);

\PWMMOTOR|clk_20kHz_20~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PWMMOTOR|clk_20kHz_20~1_combout\ = (!\PWMMOTOR|Equal0~1_combout\ & ((\PWMMOTOR|clk_20kHz_20~q\) # (\PWMMOTOR|clk_20kHz_20~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PWMMOTOR|clk_20kHz_20~q\,
	datab => \PWMMOTOR|clk_20kHz_20~0_combout\,
	datad => \PWMMOTOR|Equal0~1_combout\,
	combout => \PWMMOTOR|clk_20kHz_20~1_combout\);

\PWMMOTOR|clk_20kHz_20\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \PWMMOTOR|clk_20kHz_20~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PWMMOTOR|clk_20kHz_20~q\);

\MUXMOTOR|v_motor~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \MUXMOTOR|v_motor~0_combout\ = (\CONTROLVEL|CONTADOR|cuenta\(1) & (((\CONTROLVEL|CONTADOR|cuenta\(0))))) # (!\CONTROLVEL|CONTADOR|cuenta\(1) & ((\CONTROLVEL|CONTADOR|cuenta\(0) & (\PWMMOTOR|clk_20kHz_40~q\)) # (!\CONTROLVEL|CONTADOR|cuenta\(0) & 
-- ((\PWMMOTOR|clk_20kHz_20~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLVEL|CONTADOR|cuenta\(1),
	datab => \PWMMOTOR|clk_20kHz_40~q\,
	datac => \CONTROLVEL|CONTADOR|cuenta\(0),
	datad => \PWMMOTOR|clk_20kHz_20~q\,
	combout => \MUXMOTOR|v_motor~0_combout\);

\PWMMOTOR|clk_20kHz_80~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PWMMOTOR|clk_20kHz_80~0_combout\ = (!\PWMMOTOR|cuenta_f_20\(4) & !\PWMMOTOR|cuenta_f_20\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \PWMMOTOR|cuenta_f_20\(4),
	datad => \PWMMOTOR|cuenta_f_20\(2),
	combout => \PWMMOTOR|clk_20kHz_80~0_combout\);

\PWMMOTOR|clk_20kHz_80~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PWMMOTOR|clk_20kHz_80~1_combout\ = (!\PWMMOTOR|Equal0~1_combout\ & ((\PWMMOTOR|clk_20kHz_80~q\) # ((\PWMMOTOR|clk_20kHz_40~0_combout\ & \PWMMOTOR|clk_20kHz_80~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PWMMOTOR|clk_20kHz_80~q\,
	datab => \PWMMOTOR|clk_20kHz_40~0_combout\,
	datac => \PWMMOTOR|clk_20kHz_80~0_combout\,
	datad => \PWMMOTOR|Equal0~1_combout\,
	combout => \PWMMOTOR|clk_20kHz_80~1_combout\);

\PWMMOTOR|clk_20kHz_80\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \PWMMOTOR|clk_20kHz_80~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PWMMOTOR|clk_20kHz_80~q\);

\MUXMOTOR|v_motor~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \MUXMOTOR|v_motor~1_combout\ = (\CONTROLVEL|CONTADOR|cuenta\(1) & ((\MUXMOTOR|v_motor~0_combout\ & ((\PWMMOTOR|clk_20kHz_80~q\))) # (!\MUXMOTOR|v_motor~0_combout\ & (\PWMMOTOR|clk_20kHz_60~q\)))) # (!\CONTROLVEL|CONTADOR|cuenta\(1) & 
-- (((\MUXMOTOR|v_motor~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PWMMOTOR|clk_20kHz_60~q\,
	datab => \CONTROLVEL|CONTADOR|cuenta\(1),
	datac => \MUXMOTOR|v_motor~0_combout\,
	datad => \PWMMOTOR|clk_20kHz_80~q\,
	combout => \MUXMOTOR|v_motor~1_combout\);

\MUXMOTOR|v_motor~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \MUXMOTOR|v_motor~2_combout\ = (\ONOFF|on_off~q\ & ((\CONTROLVEL|CONTADOR|cuenta\(2) & (\MUXDISPLAY|Equal4~0_combout\)) # (!\CONTROLVEL|CONTADOR|cuenta\(2) & ((\MUXMOTOR|v_motor~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ONOFF|on_off~q\,
	datab => \MUXDISPLAY|Equal4~0_combout\,
	datac => \MUXMOTOR|v_motor~1_combout\,
	datad => \CONTROLVEL|CONTADOR|cuenta\(2),
	combout => \MUXMOTOR|v_motor~2_combout\);

\PWMBRILLO|cuenta_f_10~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PWMBRILLO|cuenta_f_10~3_combout\ = (\PWMBRILLO|cuenta_f_10\(0) & (((!\PWMBRILLO|cuenta_f_10\(1))))) # (!\PWMBRILLO|cuenta_f_10\(0) & (\PWMBRILLO|cuenta_f_10\(1) & ((\PWMBRILLO|cuenta_f_10\(2)) # (!\PWMBRILLO|cuenta_f_10\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PWMBRILLO|cuenta_f_10\(2),
	datab => \PWMBRILLO|cuenta_f_10\(3),
	datac => \PWMBRILLO|cuenta_f_10\(0),
	datad => \PWMBRILLO|cuenta_f_10\(1),
	combout => \PWMBRILLO|cuenta_f_10~3_combout\);

\PWMBRILLO|cuenta_f_10[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \PWMBRILLO|cuenta_f_10~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PWMBRILLO|cuenta_f_10\(1));

\PWMBRILLO|cuenta_f_10[2]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PWMBRILLO|cuenta_f_10[2]~1_combout\ = \PWMBRILLO|cuenta_f_10\(2) $ (((\PWMBRILLO|cuenta_f_10\(0) & \PWMBRILLO|cuenta_f_10\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PWMBRILLO|cuenta_f_10\(2),
	datac => \PWMBRILLO|cuenta_f_10\(0),
	datad => \PWMBRILLO|cuenta_f_10\(1),
	combout => \PWMBRILLO|cuenta_f_10[2]~1_combout\);

\PWMBRILLO|cuenta_f_10[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \PWMBRILLO|cuenta_f_10[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PWMBRILLO|cuenta_f_10\(2));

\PWMBRILLO|cuenta_f_10~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PWMBRILLO|cuenta_f_10~2_combout\ = (\PWMBRILLO|cuenta_f_10\(3) & ((\PWMBRILLO|cuenta_f_10\(0) $ (\PWMBRILLO|cuenta_f_10\(2))) # (!\PWMBRILLO|cuenta_f_10\(1)))) # (!\PWMBRILLO|cuenta_f_10\(3) & (\PWMBRILLO|cuenta_f_10\(0) & (\PWMBRILLO|cuenta_f_10\(2) & 
-- \PWMBRILLO|cuenta_f_10\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PWMBRILLO|cuenta_f_10\(3),
	datab => \PWMBRILLO|cuenta_f_10\(0),
	datac => \PWMBRILLO|cuenta_f_10\(2),
	datad => \PWMBRILLO|cuenta_f_10\(1),
	combout => \PWMBRILLO|cuenta_f_10~2_combout\);

\PWMBRILLO|cuenta_f_10[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \PWMBRILLO|cuenta_f_10~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PWMBRILLO|cuenta_f_10\(3));

\PWMBRILLO|cuenta_f_10~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PWMBRILLO|cuenta_f_10~0_combout\ = (!\PWMBRILLO|cuenta_f_10\(0) & (((\PWMBRILLO|cuenta_f_10\(2)) # (!\PWMBRILLO|cuenta_f_10\(1))) # (!\PWMBRILLO|cuenta_f_10\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PWMBRILLO|cuenta_f_10\(0),
	datab => \PWMBRILLO|cuenta_f_10\(3),
	datac => \PWMBRILLO|cuenta_f_10\(1),
	datad => \PWMBRILLO|cuenta_f_10\(2),
	combout => \PWMBRILLO|cuenta_f_10~0_combout\);

\PWMBRILLO|cuenta_f_10[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \PWMBRILLO|cuenta_f_10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PWMBRILLO|cuenta_f_10\(0));

\PWMBRILLO|clk_100kHz_50~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PWMBRILLO|clk_100kHz_50~0_combout\ = (\PWMBRILLO|cuenta_f_10\(0) & (\PWMBRILLO|cuenta_f_10\(2) & (!\PWMBRILLO|cuenta_f_10\(3) & !\PWMBRILLO|cuenta_f_10\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PWMBRILLO|cuenta_f_10\(0),
	datab => \PWMBRILLO|cuenta_f_10\(2),
	datac => \PWMBRILLO|cuenta_f_10\(3),
	datad => \PWMBRILLO|cuenta_f_10\(1),
	combout => \PWMBRILLO|clk_100kHz_50~0_combout\);

\PWMBRILLO|Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PWMBRILLO|Equal0~0_combout\ = (\PWMBRILLO|cuenta_f_10\(3) & (\PWMBRILLO|cuenta_f_10\(1) & (!\PWMBRILLO|cuenta_f_10\(0) & !\PWMBRILLO|cuenta_f_10\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PWMBRILLO|cuenta_f_10\(3),
	datab => \PWMBRILLO|cuenta_f_10\(1),
	datac => \PWMBRILLO|cuenta_f_10\(0),
	datad => \PWMBRILLO|cuenta_f_10\(2),
	combout => \PWMBRILLO|Equal0~0_combout\);

\PWMBRILLO|clk_100kHz_50~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PWMBRILLO|clk_100kHz_50~1_combout\ = (!\PWMBRILLO|Equal0~0_combout\ & ((\PWMBRILLO|clk_100kHz_50~q\) # (\PWMBRILLO|clk_100kHz_50~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PWMBRILLO|clk_100kHz_50~q\,
	datab => \PWMBRILLO|clk_100kHz_50~0_combout\,
	datad => \PWMBRILLO|Equal0~0_combout\,
	combout => \PWMBRILLO|clk_100kHz_50~1_combout\);

\PWMBRILLO|clk_100kHz_50\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \PWMBRILLO|clk_100kHz_50~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PWMBRILLO|clk_100kHz_50~q\);

\CONTROLBRILLO|CONTADORBRILLO|cuenta~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CONTROLBRILLO|CONTADORBRILLO|cuenta~2_combout\ = (\CONTROLBRILLO|CONTADORBRILLO|cuenta\(1) & (\CONTROLBRILLO|CONTADORBRILLO|cuenta\(0) & !\CONTROLBRILLO|CONTADORBRILLO|cuenta\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLBRILLO|CONTADORBRILLO|cuenta\(1),
	datab => \CONTROLBRILLO|CONTADORBRILLO|cuenta\(0),
	datad => \CONTROLBRILLO|CONTADORBRILLO|cuenta\(2),
	combout => \CONTROLBRILLO|CONTADORBRILLO|cuenta~2_combout\);

\brightness~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_brightness,
	o => \brightness~input_o\);

\CONTROLBRILLO|antirrebotebrillo|delay1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CONTROLBRILLO|antirrebotebrillo|delay1~0_combout\ = !\brightness~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \brightness~input_o\,
	combout => \CONTROLBRILLO|antirrebotebrillo|delay1~0_combout\);

\CONTROLBRILLO|antirrebotebrillo|delay1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \CONTROLBRILLO|antirrebotebrillo|delay1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CONTROLBRILLO|antirrebotebrillo|delay1~q\);

\CONTROLBRILLO|antirrebotebrillo|delay2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \CONTROLBRILLO|antirrebotebrillo|delay1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CONTROLBRILLO|antirrebotebrillo|delay2~q\);

\CONTROLBRILLO|antirrebotebrillo|delay3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \CONTROLBRILLO|antirrebotebrillo|delay2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CONTROLBRILLO|antirrebotebrillo|delay3~q\);

\CONTROLBRILLO|antirrebotebrillo|pb_db~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CONTROLBRILLO|antirrebotebrillo|pb_db~0_combout\ = ((!\CONTROLBRILLO|antirrebotebrillo|delay2~q\) # (!\CONTROLBRILLO|antirrebotebrillo|delay1~q\)) # (!\CONTROLBRILLO|antirrebotebrillo|delay3~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CONTROLBRILLO|antirrebotebrillo|delay3~q\,
	datac => \CONTROLBRILLO|antirrebotebrillo|delay1~q\,
	datad => \CONTROLBRILLO|antirrebotebrillo|delay2~q\,
	combout => \CONTROLBRILLO|antirrebotebrillo|pb_db~0_combout\);

\CONTROLBRILLO|detflancobrightness|s_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \CONTROLBRILLO|antirrebotebrillo|pb_db~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CONTROLBRILLO|detflancobrightness|s_q~q\);

\CONTROLBRILLO|detflancobrightness|S~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CONTROLBRILLO|detflancobrightness|S~0_combout\ = (\CONTROLBRILLO|detflancobrightness|s_q~q\ & (\CONTROLBRILLO|antirrebotebrillo|delay3~q\ & (\CONTROLBRILLO|antirrebotebrillo|delay1~q\ & \CONTROLBRILLO|antirrebotebrillo|delay2~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLBRILLO|detflancobrightness|s_q~q\,
	datab => \CONTROLBRILLO|antirrebotebrillo|delay3~q\,
	datac => \CONTROLBRILLO|antirrebotebrillo|delay1~q\,
	datad => \CONTROLBRILLO|antirrebotebrillo|delay2~q\,
	combout => \CONTROLBRILLO|detflancobrightness|S~0_combout\);

\CONTROLBRILLO|CONTADORBRILLO|cuenta[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \CONTROLBRILLO|CONTADORBRILLO|cuenta~2_combout\,
	ena => \CONTROLBRILLO|detflancobrightness|S~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CONTROLBRILLO|CONTADORBRILLO|cuenta\(2));

\CONTROLBRILLO|CONTADORBRILLO|cuenta~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CONTROLBRILLO|CONTADORBRILLO|cuenta~1_combout\ = (!\CONTROLBRILLO|CONTADORBRILLO|cuenta\(2) & !\CONTROLBRILLO|CONTADORBRILLO|cuenta\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLBRILLO|CONTADORBRILLO|cuenta\(2),
	datab => \CONTROLBRILLO|CONTADORBRILLO|cuenta\(0),
	combout => \CONTROLBRILLO|CONTADORBRILLO|cuenta~1_combout\);

\CONTROLBRILLO|CONTADORBRILLO|cuenta[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \CONTROLBRILLO|CONTADORBRILLO|cuenta~1_combout\,
	ena => \CONTROLBRILLO|detflancobrightness|S~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CONTROLBRILLO|CONTADORBRILLO|cuenta\(0));

\CONTROLBRILLO|CONTADORBRILLO|cuenta~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CONTROLBRILLO|CONTADORBRILLO|cuenta~0_combout\ = (!\CONTROLBRILLO|CONTADORBRILLO|cuenta\(2) & (\CONTROLBRILLO|CONTADORBRILLO|cuenta\(1) $ (\CONTROLBRILLO|CONTADORBRILLO|cuenta\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CONTROLBRILLO|CONTADORBRILLO|cuenta\(1),
	datac => \CONTROLBRILLO|CONTADORBRILLO|cuenta\(0),
	datad => \CONTROLBRILLO|CONTADORBRILLO|cuenta\(2),
	combout => \CONTROLBRILLO|CONTADORBRILLO|cuenta~0_combout\);

\CONTROLBRILLO|CONTADORBRILLO|cuenta[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \CONTROLBRILLO|CONTADORBRILLO|cuenta~0_combout\,
	ena => \CONTROLBRILLO|detflancobrightness|S~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CONTROLBRILLO|CONTADORBRILLO|cuenta\(1));

\PWMBRILLO|clk_100kHz_20~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PWMBRILLO|clk_100kHz_20~0_combout\ = (\PWMBRILLO|cuenta_f_10\(3) & (!\PWMBRILLO|cuenta_f_10\(1) & !\PWMBRILLO|cuenta_f_10\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PWMBRILLO|cuenta_f_10\(3),
	datac => \PWMBRILLO|cuenta_f_10\(1),
	datad => \PWMBRILLO|cuenta_f_10\(2),
	combout => \PWMBRILLO|clk_100kHz_20~0_combout\);

\PWMBRILLO|clk_100kHz_20~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PWMBRILLO|clk_100kHz_20~1_combout\ = (!\PWMBRILLO|Equal0~0_combout\ & ((\PWMBRILLO|clk_100kHz_20~q\) # ((\PWMBRILLO|clk_100kHz_20~0_combout\ & !\PWMBRILLO|cuenta_f_10\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PWMBRILLO|clk_100kHz_20~q\,
	datab => \PWMBRILLO|clk_100kHz_20~0_combout\,
	datac => \PWMBRILLO|cuenta_f_10\(0),
	datad => \PWMBRILLO|Equal0~0_combout\,
	combout => \PWMBRILLO|clk_100kHz_20~1_combout\);

\PWMBRILLO|clk_100kHz_20\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \PWMBRILLO|clk_100kHz_20~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PWMBRILLO|clk_100kHz_20~q\);

\PWMBRILLO|clk_100kHz_10~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PWMBRILLO|clk_100kHz_10~0_combout\ = (!\PWMBRILLO|Equal0~0_combout\ & ((\PWMBRILLO|clk_100kHz_10~q\) # ((\PWMBRILLO|cuenta_f_10\(0) & \PWMBRILLO|clk_100kHz_20~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PWMBRILLO|clk_100kHz_10~q\,
	datab => \PWMBRILLO|cuenta_f_10\(0),
	datac => \PWMBRILLO|clk_100kHz_20~0_combout\,
	datad => \PWMBRILLO|Equal0~0_combout\,
	combout => \PWMBRILLO|clk_100kHz_10~0_combout\);

\PWMBRILLO|clk_100kHz_10\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \PWMBRILLO|clk_100kHz_10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PWMBRILLO|clk_100kHz_10~q\);

\MUXBRILLO|v_motor~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \MUXBRILLO|v_motor~0_combout\ = (\CONTROLBRILLO|CONTADORBRILLO|cuenta\(1) & (((\CONTROLBRILLO|CONTADORBRILLO|cuenta\(0))))) # (!\CONTROLBRILLO|CONTADORBRILLO|cuenta\(1) & ((\CONTROLBRILLO|CONTADORBRILLO|cuenta\(0) & (\PWMBRILLO|clk_100kHz_20~q\)) # 
-- (!\CONTROLBRILLO|CONTADORBRILLO|cuenta\(0) & ((\PWMBRILLO|clk_100kHz_10~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLBRILLO|CONTADORBRILLO|cuenta\(1),
	datab => \PWMBRILLO|clk_100kHz_20~q\,
	datac => \CONTROLBRILLO|CONTADORBRILLO|cuenta\(0),
	datad => \PWMBRILLO|clk_100kHz_10~q\,
	combout => \MUXBRILLO|v_motor~0_combout\);

\PWMBRILLO|clk_100kHz_80~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PWMBRILLO|clk_100kHz_80~0_combout\ = (\PWMBRILLO|cuenta_f_10\(1) & (!\PWMBRILLO|cuenta_f_10\(3) & (!\PWMBRILLO|cuenta_f_10\(0) & !\PWMBRILLO|cuenta_f_10\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PWMBRILLO|cuenta_f_10\(1),
	datab => \PWMBRILLO|cuenta_f_10\(3),
	datac => \PWMBRILLO|cuenta_f_10\(0),
	datad => \PWMBRILLO|cuenta_f_10\(2),
	combout => \PWMBRILLO|clk_100kHz_80~0_combout\);

\PWMBRILLO|clk_100kHz_80~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PWMBRILLO|clk_100kHz_80~1_combout\ = (!\PWMBRILLO|Equal0~0_combout\ & ((\PWMBRILLO|clk_100kHz_80~q\) # (\PWMBRILLO|clk_100kHz_80~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PWMBRILLO|clk_100kHz_80~q\,
	datab => \PWMBRILLO|clk_100kHz_80~0_combout\,
	datad => \PWMBRILLO|Equal0~0_combout\,
	combout => \PWMBRILLO|clk_100kHz_80~1_combout\);

\PWMBRILLO|clk_100kHz_80\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \PWMBRILLO|clk_100kHz_80~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PWMBRILLO|clk_100kHz_80~q\);

\MUXBRILLO|v_motor~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \MUXBRILLO|v_motor~1_combout\ = (\CONTROLBRILLO|CONTADORBRILLO|cuenta\(1) & ((\MUXBRILLO|v_motor~0_combout\ & ((\PWMBRILLO|clk_100kHz_80~q\))) # (!\MUXBRILLO|v_motor~0_combout\ & (\PWMBRILLO|clk_100kHz_50~q\)))) # 
-- (!\CONTROLBRILLO|CONTADORBRILLO|cuenta\(1) & (((\MUXBRILLO|v_motor~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PWMBRILLO|clk_100kHz_50~q\,
	datab => \CONTROLBRILLO|CONTADORBRILLO|cuenta\(1),
	datac => \MUXBRILLO|v_motor~0_combout\,
	datad => \PWMBRILLO|clk_100kHz_80~q\,
	combout => \MUXBRILLO|v_motor~1_combout\);

\MUXBRILLO|v_motor~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \MUXBRILLO|v_motor~2_combout\ = (\CONTROLBRILLO|CONTADORBRILLO|cuenta\(2) & (((!\CONTROLBRILLO|CONTADORBRILLO|cuenta\(1) & !\CONTROLBRILLO|CONTADORBRILLO|cuenta\(0))))) # (!\CONTROLBRILLO|CONTADORBRILLO|cuenta\(2) & (\MUXBRILLO|v_motor~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUXBRILLO|v_motor~1_combout\,
	datab => \CONTROLBRILLO|CONTADORBRILLO|cuenta\(1),
	datac => \CONTROLBRILLO|CONTADORBRILLO|cuenta\(0),
	datad => \CONTROLBRILLO|CONTADORBRILLO|cuenta\(2),
	combout => \MUXBRILLO|v_motor~2_combout\);

\DISPLAY|centenas[0]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DISPLAY|centenas\(0) = ((!\CONTROLVEL|CONTADOR|cuenta\(0) & (!\CONTROLVEL|CONTADOR|cuenta\(1) & \CONTROLVEL|CONTADOR|cuenta\(2)))) # (!\MUXBRILLO|v_motor~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLVEL|CONTADOR|cuenta\(0),
	datab => \CONTROLVEL|CONTADOR|cuenta\(1),
	datac => \CONTROLVEL|CONTADOR|cuenta\(2),
	datad => \MUXBRILLO|v_motor~2_combout\,
	combout => \DISPLAY|centenas\(0));

\DISPLAY|centenas[6]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DISPLAY|centenas\(6) = (((!\CONTROLVEL|CONTADOR|cuenta\(0) & !\CONTROLVEL|CONTADOR|cuenta\(1))) # (!\MUXBRILLO|v_motor~2_combout\)) # (!\CONTROLVEL|CONTADOR|cuenta\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLVEL|CONTADOR|cuenta\(0),
	datab => \CONTROLVEL|CONTADOR|cuenta\(1),
	datac => \CONTROLVEL|CONTADOR|cuenta\(2),
	datad => \MUXBRILLO|v_motor~2_combout\,
	combout => \DISPLAY|centenas\(6));

\DISPLAY|decenas[0]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DISPLAY|decenas\(0) = ((\CONTROLVEL|CONTADOR|cuenta\(0) & (!\CONTROLVEL|CONTADOR|cuenta\(2) & !\CONTROLVEL|CONTADOR|cuenta\(1)))) # (!\MUXBRILLO|v_motor~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLVEL|CONTADOR|cuenta\(0),
	datab => \CONTROLVEL|CONTADOR|cuenta\(2),
	datac => \CONTROLVEL|CONTADOR|cuenta\(1),
	datad => \MUXBRILLO|v_motor~2_combout\,
	combout => \DISPLAY|decenas\(0));

\DISPLAY|decenas[1]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DISPLAY|decenas\(1) = ((\CONTROLVEL|CONTADOR|cuenta\(1) & (!\CONTROLVEL|CONTADOR|cuenta\(2) & !\CONTROLVEL|CONTADOR|cuenta\(0)))) # (!\MUXBRILLO|v_motor~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLVEL|CONTADOR|cuenta\(1),
	datab => \CONTROLVEL|CONTADOR|cuenta\(2),
	datac => \CONTROLVEL|CONTADOR|cuenta\(0),
	datad => \MUXBRILLO|v_motor~2_combout\,
	combout => \DISPLAY|decenas\(1));

\DISPLAY|decenas[2]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DISPLAY|decenas\(2) = ((!\CONTROLVEL|CONTADOR|cuenta\(0) & (!\CONTROLVEL|CONTADOR|cuenta\(1) & !\CONTROLVEL|CONTADOR|cuenta\(2)))) # (!\MUXBRILLO|v_motor~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLVEL|CONTADOR|cuenta\(0),
	datab => \CONTROLVEL|CONTADOR|cuenta\(1),
	datac => \CONTROLVEL|CONTADOR|cuenta\(2),
	datad => \MUXBRILLO|v_motor~2_combout\,
	combout => \DISPLAY|decenas\(2));

ww_motor <= \motor~output_o\;

ww_led_green <= \led_green~output_o\;

ww_led_red <= \led_red~output_o\;

ww_display_c(0) <= \display_c[0]~output_o\;

ww_display_c(1) <= \display_c[1]~output_o\;

ww_display_c(2) <= \display_c[2]~output_o\;

ww_display_c(3) <= \display_c[3]~output_o\;

ww_display_c(4) <= \display_c[4]~output_o\;

ww_display_c(5) <= \display_c[5]~output_o\;

ww_display_c(6) <= \display_c[6]~output_o\;

ww_display_d(0) <= \display_d[0]~output_o\;

ww_display_d(1) <= \display_d[1]~output_o\;

ww_display_d(2) <= \display_d[2]~output_o\;

ww_display_d(3) <= \display_d[3]~output_o\;

ww_display_d(4) <= \display_d[4]~output_o\;

ww_display_d(5) <= \display_d[5]~output_o\;

ww_display_d(6) <= \display_d[6]~output_o\;

ww_display_u(0) <= \display_u[0]~output_o\;

ww_display_u(1) <= \display_u[1]~output_o\;

ww_display_u(2) <= \display_u[2]~output_o\;

ww_display_u(3) <= \display_u[3]~output_o\;

ww_display_u(4) <= \display_u[4]~output_o\;

ww_display_u(5) <= \display_u[5]~output_o\;

ww_display_u(6) <= \display_u[6]~output_o\;
END structure;


