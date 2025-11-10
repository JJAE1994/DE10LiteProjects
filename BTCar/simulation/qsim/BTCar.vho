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

-- DATE "11/24/2022 16:17:56"

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

ENTITY 	BTCar IS
    PORT (
	clk : IN std_logic;
	rx : IN std_logic;
	in1 : BUFFER std_logic;
	clk_baud : BUFFER std_logic;
	in2 : BUFFER std_logic;
	in3 : BUFFER std_logic;
	in4 : BUFFER std_logic;
	enable_i : BUFFER std_logic;
	enable_d : BUFFER std_logic;
	data_recibida : BUFFER std_logic_vector(7 DOWNTO 0)
	);
END BTCar;

ARCHITECTURE structure OF BTCar IS
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
SIGNAL ww_rx : std_logic;
SIGNAL ww_in1 : std_logic;
SIGNAL ww_clk_baud : std_logic;
SIGNAL ww_in2 : std_logic;
SIGNAL ww_in3 : std_logic;
SIGNAL ww_in4 : std_logic;
SIGNAL ww_enable_i : std_logic;
SIGNAL ww_enable_d : std_logic;
SIGNAL ww_data_recibida : std_logic_vector(7 DOWNTO 0);
SIGNAL \in1~output_o\ : std_logic;
SIGNAL \clk_baud~output_o\ : std_logic;
SIGNAL \in2~output_o\ : std_logic;
SIGNAL \in3~output_o\ : std_logic;
SIGNAL \in4~output_o\ : std_logic;
SIGNAL \enable_i~output_o\ : std_logic;
SIGNAL \enable_d~output_o\ : std_logic;
SIGNAL \data_recibida[0]~output_o\ : std_logic;
SIGNAL \data_recibida[1]~output_o\ : std_logic;
SIGNAL \data_recibida[2]~output_o\ : std_logic;
SIGNAL \data_recibida[3]~output_o\ : std_logic;
SIGNAL \data_recibida[4]~output_o\ : std_logic;
SIGNAL \data_recibida[5]~output_o\ : std_logic;
SIGNAL \data_recibida[6]~output_o\ : std_logic;
SIGNAL \data_recibida[7]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \BAUDRATE|Add0~0_combout\ : std_logic;
SIGNAL \BAUDRATE|Add0~7\ : std_logic;
SIGNAL \BAUDRATE|Add0~8_combout\ : std_logic;
SIGNAL \BAUDRATE|counter~2_combout\ : std_logic;
SIGNAL \BAUDRATE|Add0~9\ : std_logic;
SIGNAL \BAUDRATE|Add0~10_combout\ : std_logic;
SIGNAL \BAUDRATE|Add0~11\ : std_logic;
SIGNAL \BAUDRATE|Add0~12_combout\ : std_logic;
SIGNAL \BAUDRATE|counter~3_combout\ : std_logic;
SIGNAL \BAUDRATE|Equal0~1_combout\ : std_logic;
SIGNAL \BAUDRATE|Add0~13\ : std_logic;
SIGNAL \BAUDRATE|Add0~14_combout\ : std_logic;
SIGNAL \BAUDRATE|Add0~15\ : std_logic;
SIGNAL \BAUDRATE|Add0~16_combout\ : std_logic;
SIGNAL \BAUDRATE|Add0~17\ : std_logic;
SIGNAL \BAUDRATE|Add0~18_combout\ : std_logic;
SIGNAL \BAUDRATE|Add0~19\ : std_logic;
SIGNAL \BAUDRATE|Add0~20_combout\ : std_logic;
SIGNAL \BAUDRATE|counter~4_combout\ : std_logic;
SIGNAL \BAUDRATE|Add0~21\ : std_logic;
SIGNAL \BAUDRATE|Add0~22_combout\ : std_logic;
SIGNAL \BAUDRATE|Add0~23\ : std_logic;
SIGNAL \BAUDRATE|Add0~24_combout\ : std_logic;
SIGNAL \BAUDRATE|counter~5_combout\ : std_logic;
SIGNAL \BAUDRATE|Equal0~2_combout\ : std_logic;
SIGNAL \BAUDRATE|Equal0~3_combout\ : std_logic;
SIGNAL \BAUDRATE|counter~1_combout\ : std_logic;
SIGNAL \BAUDRATE|Add0~1\ : std_logic;
SIGNAL \BAUDRATE|Add0~2_combout\ : std_logic;
SIGNAL \BAUDRATE|Add0~3\ : std_logic;
SIGNAL \BAUDRATE|Add0~4_combout\ : std_logic;
SIGNAL \BAUDRATE|Add0~5\ : std_logic;
SIGNAL \BAUDRATE|Add0~6_combout\ : std_logic;
SIGNAL \BAUDRATE|counter~0_combout\ : std_logic;
SIGNAL \BAUDRATE|Equal0~0_combout\ : std_logic;
SIGNAL \BAUDRATE|clock_signal~0_combout\ : std_logic;
SIGNAL \BAUDRATE|clock_signal~1_combout\ : std_logic;
SIGNAL \BAUDRATE|clock_signal~2_combout\ : std_logic;
SIGNAL \BAUDRATE|clock_signal~3_combout\ : std_logic;
SIGNAL \BAUDRATE|clock_signal~q\ : std_logic;
SIGNAL \rx~input_o\ : std_logic;
SIGNAL \ps.b5~q\ : std_logic;
SIGNAL \ps.b6~q\ : std_logic;
SIGNAL \ps.b7~q\ : std_logic;
SIGNAL \ps.b8~q\ : std_logic;
SIGNAL \ps~27_combout\ : std_logic;
SIGNAL \ps.ready~q\ : std_logic;
SIGNAL \ps~25_combout\ : std_logic;
SIGNAL \ps.b0~q\ : std_logic;
SIGNAL \ps~24_combout\ : std_logic;
SIGNAL \ps.b1~q\ : std_logic;
SIGNAL \ps~26_combout\ : std_logic;
SIGNAL \ps.b2~q\ : std_logic;
SIGNAL \ps~23_combout\ : std_logic;
SIGNAL \ps.b3~q\ : std_logic;
SIGNAL \ps~22_combout\ : std_logic;
SIGNAL \ps.b4~q\ : std_logic;
SIGNAL \store~0_combout\ : std_logic;
SIGNAL \store~1_combout\ : std_logic;
SIGNAL \store~2_combout\ : std_logic;
SIGNAL \store~3_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \store~4_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \store~5_combout\ : std_logic;
SIGNAL \store~6_combout\ : std_logic;
SIGNAL \store~7_combout\ : std_logic;
SIGNAL \in1~0_combout\ : std_logic;
SIGNAL \Equal3~0_combout\ : std_logic;
SIGNAL \in3~2_combout\ : std_logic;
SIGNAL \enable_i~0_combout\ : std_logic;
SIGNAL \enable_d~0_combout\ : std_logic;
SIGNAL store : std_logic_vector(7 DOWNTO 0);
SIGNAL \BAUDRATE|counter\ : std_logic_vector(12 DOWNTO 0);

BEGIN

ww_clk <= clk;
ww_rx <= rx;
in1 <= ww_in1;
clk_baud <= ww_clk_baud;
in2 <= ww_in2;
in3 <= ww_in3;
in4 <= ww_in4;
enable_i <= ww_enable_i;
enable_d <= ww_enable_d;
data_recibida <= ww_data_recibida;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\in1~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \in1~0_combout\,
	devoe => ww_devoe,
	o => \in1~output_o\);

\clk_baud~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BAUDRATE|clock_signal~q\,
	devoe => ww_devoe,
	o => \clk_baud~output_o\);

\in2~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Equal3~0_combout\,
	devoe => ww_devoe,
	o => \in2~output_o\);

\in3~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \in3~2_combout\,
	devoe => ww_devoe,
	o => \in3~output_o\);

\in4~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Equal3~0_combout\,
	devoe => ww_devoe,
	o => \in4~output_o\);

\enable_i~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \enable_i~0_combout\,
	devoe => ww_devoe,
	o => \enable_i~output_o\);

\enable_d~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \enable_d~0_combout\,
	devoe => ww_devoe,
	o => \enable_d~output_o\);

\data_recibida[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => store(0),
	devoe => ww_devoe,
	o => \data_recibida[0]~output_o\);

\data_recibida[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => store(1),
	devoe => ww_devoe,
	o => \data_recibida[1]~output_o\);

\data_recibida[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => store(2),
	devoe => ww_devoe,
	o => \data_recibida[2]~output_o\);

\data_recibida[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => store(3),
	devoe => ww_devoe,
	o => \data_recibida[3]~output_o\);

\data_recibida[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => store(4),
	devoe => ww_devoe,
	o => \data_recibida[4]~output_o\);

\data_recibida[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => store(5),
	devoe => ww_devoe,
	o => \data_recibida[5]~output_o\);

\data_recibida[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => store(6),
	devoe => ww_devoe,
	o => \data_recibida[6]~output_o\);

\data_recibida[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => store(7),
	devoe => ww_devoe,
	o => \data_recibida[7]~output_o\);

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

\BAUDRATE|Add0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \BAUDRATE|Add0~0_combout\ = \BAUDRATE|counter\(0) $ (VCC)
-- \BAUDRATE|Add0~1\ = CARRY(\BAUDRATE|counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BAUDRATE|counter\(0),
	datad => VCC,
	combout => \BAUDRATE|Add0~0_combout\,
	cout => \BAUDRATE|Add0~1\);

\BAUDRATE|Add0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \BAUDRATE|Add0~6_combout\ = (\BAUDRATE|counter\(3) & (!\BAUDRATE|Add0~5\)) # (!\BAUDRATE|counter\(3) & ((\BAUDRATE|Add0~5\) # (GND)))
-- \BAUDRATE|Add0~7\ = CARRY((!\BAUDRATE|Add0~5\) # (!\BAUDRATE|counter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BAUDRATE|counter\(3),
	datad => VCC,
	cin => \BAUDRATE|Add0~5\,
	combout => \BAUDRATE|Add0~6_combout\,
	cout => \BAUDRATE|Add0~7\);

\BAUDRATE|Add0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \BAUDRATE|Add0~8_combout\ = (\BAUDRATE|counter\(4) & (\BAUDRATE|Add0~7\ $ (GND))) # (!\BAUDRATE|counter\(4) & (!\BAUDRATE|Add0~7\ & VCC))
-- \BAUDRATE|Add0~9\ = CARRY((\BAUDRATE|counter\(4) & !\BAUDRATE|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BAUDRATE|counter\(4),
	datad => VCC,
	cin => \BAUDRATE|Add0~7\,
	combout => \BAUDRATE|Add0~8_combout\,
	cout => \BAUDRATE|Add0~9\);

\BAUDRATE|counter~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \BAUDRATE|counter~2_combout\ = (\BAUDRATE|Add0~8_combout\ & !\BAUDRATE|Equal0~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BAUDRATE|Add0~8_combout\,
	datad => \BAUDRATE|Equal0~3_combout\,
	combout => \BAUDRATE|counter~2_combout\);

\BAUDRATE|counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \BAUDRATE|counter~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BAUDRATE|counter\(4));

\BAUDRATE|Add0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \BAUDRATE|Add0~10_combout\ = (\BAUDRATE|counter\(5) & (!\BAUDRATE|Add0~9\)) # (!\BAUDRATE|counter\(5) & ((\BAUDRATE|Add0~9\) # (GND)))
-- \BAUDRATE|Add0~11\ = CARRY((!\BAUDRATE|Add0~9\) # (!\BAUDRATE|counter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BAUDRATE|counter\(5),
	datad => VCC,
	cin => \BAUDRATE|Add0~9\,
	combout => \BAUDRATE|Add0~10_combout\,
	cout => \BAUDRATE|Add0~11\);

\BAUDRATE|counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \BAUDRATE|Add0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BAUDRATE|counter\(5));

\BAUDRATE|Add0~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \BAUDRATE|Add0~12_combout\ = (\BAUDRATE|counter\(6) & (\BAUDRATE|Add0~11\ $ (GND))) # (!\BAUDRATE|counter\(6) & (!\BAUDRATE|Add0~11\ & VCC))
-- \BAUDRATE|Add0~13\ = CARRY((\BAUDRATE|counter\(6) & !\BAUDRATE|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BAUDRATE|counter\(6),
	datad => VCC,
	cin => \BAUDRATE|Add0~11\,
	combout => \BAUDRATE|Add0~12_combout\,
	cout => \BAUDRATE|Add0~13\);

\BAUDRATE|counter~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \BAUDRATE|counter~3_combout\ = (\BAUDRATE|Add0~12_combout\ & !\BAUDRATE|Equal0~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BAUDRATE|Add0~12_combout\,
	datad => \BAUDRATE|Equal0~3_combout\,
	combout => \BAUDRATE|counter~3_combout\);

\BAUDRATE|counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \BAUDRATE|counter~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BAUDRATE|counter\(6));

\BAUDRATE|Equal0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \BAUDRATE|Equal0~1_combout\ = (\BAUDRATE|counter\(4) & (\BAUDRATE|counter\(6) & (!\BAUDRATE|counter\(2) & !\BAUDRATE|counter\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BAUDRATE|counter\(4),
	datab => \BAUDRATE|counter\(6),
	datac => \BAUDRATE|counter\(2),
	datad => \BAUDRATE|counter\(5),
	combout => \BAUDRATE|Equal0~1_combout\);

\BAUDRATE|Add0~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \BAUDRATE|Add0~14_combout\ = (\BAUDRATE|counter\(7) & (!\BAUDRATE|Add0~13\)) # (!\BAUDRATE|counter\(7) & ((\BAUDRATE|Add0~13\) # (GND)))
-- \BAUDRATE|Add0~15\ = CARRY((!\BAUDRATE|Add0~13\) # (!\BAUDRATE|counter\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BAUDRATE|counter\(7),
	datad => VCC,
	cin => \BAUDRATE|Add0~13\,
	combout => \BAUDRATE|Add0~14_combout\,
	cout => \BAUDRATE|Add0~15\);

\BAUDRATE|counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \BAUDRATE|Add0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BAUDRATE|counter\(7));

\BAUDRATE|Add0~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \BAUDRATE|Add0~16_combout\ = (\BAUDRATE|counter\(8) & (\BAUDRATE|Add0~15\ $ (GND))) # (!\BAUDRATE|counter\(8) & (!\BAUDRATE|Add0~15\ & VCC))
-- \BAUDRATE|Add0~17\ = CARRY((\BAUDRATE|counter\(8) & !\BAUDRATE|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BAUDRATE|counter\(8),
	datad => VCC,
	cin => \BAUDRATE|Add0~15\,
	combout => \BAUDRATE|Add0~16_combout\,
	cout => \BAUDRATE|Add0~17\);

\BAUDRATE|counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \BAUDRATE|Add0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BAUDRATE|counter\(8));

\BAUDRATE|Add0~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \BAUDRATE|Add0~18_combout\ = (\BAUDRATE|counter\(9) & (!\BAUDRATE|Add0~17\)) # (!\BAUDRATE|counter\(9) & ((\BAUDRATE|Add0~17\) # (GND)))
-- \BAUDRATE|Add0~19\ = CARRY((!\BAUDRATE|Add0~17\) # (!\BAUDRATE|counter\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BAUDRATE|counter\(9),
	datad => VCC,
	cin => \BAUDRATE|Add0~17\,
	combout => \BAUDRATE|Add0~18_combout\,
	cout => \BAUDRATE|Add0~19\);

\BAUDRATE|counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \BAUDRATE|Add0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BAUDRATE|counter\(9));

\BAUDRATE|Add0~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \BAUDRATE|Add0~20_combout\ = (\BAUDRATE|counter\(10) & (\BAUDRATE|Add0~19\ $ (GND))) # (!\BAUDRATE|counter\(10) & (!\BAUDRATE|Add0~19\ & VCC))
-- \BAUDRATE|Add0~21\ = CARRY((\BAUDRATE|counter\(10) & !\BAUDRATE|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BAUDRATE|counter\(10),
	datad => VCC,
	cin => \BAUDRATE|Add0~19\,
	combout => \BAUDRATE|Add0~20_combout\,
	cout => \BAUDRATE|Add0~21\);

\BAUDRATE|counter~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \BAUDRATE|counter~4_combout\ = (\BAUDRATE|Add0~20_combout\ & !\BAUDRATE|Equal0~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BAUDRATE|Add0~20_combout\,
	datad => \BAUDRATE|Equal0~3_combout\,
	combout => \BAUDRATE|counter~4_combout\);

\BAUDRATE|counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \BAUDRATE|counter~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BAUDRATE|counter\(10));

\BAUDRATE|Add0~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \BAUDRATE|Add0~22_combout\ = (\BAUDRATE|counter\(11) & (!\BAUDRATE|Add0~21\)) # (!\BAUDRATE|counter\(11) & ((\BAUDRATE|Add0~21\) # (GND)))
-- \BAUDRATE|Add0~23\ = CARRY((!\BAUDRATE|Add0~21\) # (!\BAUDRATE|counter\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BAUDRATE|counter\(11),
	datad => VCC,
	cin => \BAUDRATE|Add0~21\,
	combout => \BAUDRATE|Add0~22_combout\,
	cout => \BAUDRATE|Add0~23\);

\BAUDRATE|counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \BAUDRATE|Add0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BAUDRATE|counter\(11));

\BAUDRATE|Add0~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \BAUDRATE|Add0~24_combout\ = \BAUDRATE|counter\(12) $ (!\BAUDRATE|Add0~23\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BAUDRATE|counter\(12),
	cin => \BAUDRATE|Add0~23\,
	combout => \BAUDRATE|Add0~24_combout\);

\BAUDRATE|counter~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \BAUDRATE|counter~5_combout\ = (\BAUDRATE|Add0~24_combout\ & !\BAUDRATE|Equal0~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BAUDRATE|Add0~24_combout\,
	datad => \BAUDRATE|Equal0~3_combout\,
	combout => \BAUDRATE|counter~5_combout\);

\BAUDRATE|counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \BAUDRATE|counter~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BAUDRATE|counter\(12));

\BAUDRATE|Equal0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \BAUDRATE|Equal0~2_combout\ = (\BAUDRATE|counter\(10) & (\BAUDRATE|counter\(12) & (!\BAUDRATE|counter\(9) & !\BAUDRATE|counter\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BAUDRATE|counter\(10),
	datab => \BAUDRATE|counter\(12),
	datac => \BAUDRATE|counter\(9),
	datad => \BAUDRATE|counter\(11),
	combout => \BAUDRATE|Equal0~2_combout\);

\BAUDRATE|Equal0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \BAUDRATE|Equal0~3_combout\ = (\BAUDRATE|Equal0~0_combout\ & (\BAUDRATE|Equal0~1_combout\ & (\BAUDRATE|Equal0~2_combout\ & !\BAUDRATE|counter\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BAUDRATE|Equal0~0_combout\,
	datab => \BAUDRATE|Equal0~1_combout\,
	datac => \BAUDRATE|Equal0~2_combout\,
	datad => \BAUDRATE|counter\(8),
	combout => \BAUDRATE|Equal0~3_combout\);

\BAUDRATE|counter~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \BAUDRATE|counter~1_combout\ = (\BAUDRATE|Add0~0_combout\ & !\BAUDRATE|Equal0~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BAUDRATE|Add0~0_combout\,
	datad => \BAUDRATE|Equal0~3_combout\,
	combout => \BAUDRATE|counter~1_combout\);

\BAUDRATE|counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \BAUDRATE|counter~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BAUDRATE|counter\(0));

\BAUDRATE|Add0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \BAUDRATE|Add0~2_combout\ = (\BAUDRATE|counter\(1) & (!\BAUDRATE|Add0~1\)) # (!\BAUDRATE|counter\(1) & ((\BAUDRATE|Add0~1\) # (GND)))
-- \BAUDRATE|Add0~3\ = CARRY((!\BAUDRATE|Add0~1\) # (!\BAUDRATE|counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BAUDRATE|counter\(1),
	datad => VCC,
	cin => \BAUDRATE|Add0~1\,
	combout => \BAUDRATE|Add0~2_combout\,
	cout => \BAUDRATE|Add0~3\);

\BAUDRATE|counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \BAUDRATE|Add0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BAUDRATE|counter\(1));

\BAUDRATE|Add0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \BAUDRATE|Add0~4_combout\ = (\BAUDRATE|counter\(2) & (\BAUDRATE|Add0~3\ $ (GND))) # (!\BAUDRATE|counter\(2) & (!\BAUDRATE|Add0~3\ & VCC))
-- \BAUDRATE|Add0~5\ = CARRY((\BAUDRATE|counter\(2) & !\BAUDRATE|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BAUDRATE|counter\(2),
	datad => VCC,
	cin => \BAUDRATE|Add0~3\,
	combout => \BAUDRATE|Add0~4_combout\,
	cout => \BAUDRATE|Add0~5\);

\BAUDRATE|counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \BAUDRATE|Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BAUDRATE|counter\(2));

\BAUDRATE|counter~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \BAUDRATE|counter~0_combout\ = (\BAUDRATE|Add0~6_combout\ & !\BAUDRATE|Equal0~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BAUDRATE|Add0~6_combout\,
	datad => \BAUDRATE|Equal0~3_combout\,
	combout => \BAUDRATE|counter~0_combout\);

\BAUDRATE|counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \BAUDRATE|counter~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BAUDRATE|counter\(3));

\BAUDRATE|Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \BAUDRATE|Equal0~0_combout\ = (\BAUDRATE|counter\(3) & (!\BAUDRATE|counter\(1) & (!\BAUDRATE|counter\(0) & !\BAUDRATE|counter\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BAUDRATE|counter\(3),
	datab => \BAUDRATE|counter\(1),
	datac => \BAUDRATE|counter\(0),
	datad => \BAUDRATE|counter\(7),
	combout => \BAUDRATE|Equal0~0_combout\);

\BAUDRATE|clock_signal~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \BAUDRATE|clock_signal~0_combout\ = (\BAUDRATE|counter\(2) & (\BAUDRATE|counter\(5) & (!\BAUDRATE|counter\(4) & !\BAUDRATE|counter\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BAUDRATE|counter\(2),
	datab => \BAUDRATE|counter\(5),
	datac => \BAUDRATE|counter\(4),
	datad => \BAUDRATE|counter\(6),
	combout => \BAUDRATE|clock_signal~0_combout\);

\BAUDRATE|clock_signal~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \BAUDRATE|clock_signal~1_combout\ = (\BAUDRATE|counter\(9) & (\BAUDRATE|counter\(11) & (!\BAUDRATE|counter\(10) & !\BAUDRATE|counter\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BAUDRATE|counter\(9),
	datab => \BAUDRATE|counter\(11),
	datac => \BAUDRATE|counter\(10),
	datad => \BAUDRATE|counter\(12),
	combout => \BAUDRATE|clock_signal~1_combout\);

\BAUDRATE|clock_signal~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \BAUDRATE|clock_signal~2_combout\ = (\BAUDRATE|Equal0~0_combout\ & (\BAUDRATE|clock_signal~0_combout\ & (\BAUDRATE|clock_signal~1_combout\ & !\BAUDRATE|counter\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BAUDRATE|Equal0~0_combout\,
	datab => \BAUDRATE|clock_signal~0_combout\,
	datac => \BAUDRATE|clock_signal~1_combout\,
	datad => \BAUDRATE|counter\(8),
	combout => \BAUDRATE|clock_signal~2_combout\);

\BAUDRATE|clock_signal~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \BAUDRATE|clock_signal~3_combout\ = (!\BAUDRATE|Equal0~3_combout\ & ((\BAUDRATE|clock_signal~q\) # (\BAUDRATE|clock_signal~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BAUDRATE|clock_signal~q\,
	datab => \BAUDRATE|clock_signal~2_combout\,
	datad => \BAUDRATE|Equal0~3_combout\,
	combout => \BAUDRATE|clock_signal~3_combout\);

\BAUDRATE|clock_signal\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \BAUDRATE|clock_signal~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BAUDRATE|clock_signal~q\);

\rx~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rx,
	o => \rx~input_o\);

\ps.b5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BAUDRATE|clock_signal~q\,
	d => \ps.b4~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ps.b5~q\);

\ps.b6\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BAUDRATE|clock_signal~q\,
	d => \ps.b5~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ps.b6~q\);

\ps.b7\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BAUDRATE|clock_signal~q\,
	d => \ps.b6~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ps.b7~q\);

\ps.b8\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BAUDRATE|clock_signal~q\,
	d => \ps.b7~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ps.b8~q\);

\ps~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ps~27_combout\ = (!\ps.b8~q\ & ((\ps.ready~q\) # (!\rx~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps.b8~q\,
	datab => \rx~input_o\,
	datad => \ps.ready~q\,
	combout => \ps~27_combout\);

\ps.ready\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BAUDRATE|clock_signal~q\,
	d => \ps~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ps.ready~q\);

\ps~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ps~25_combout\ = (!\rx~input_o\ & !\ps.ready~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rx~input_o\,
	datab => \ps.ready~q\,
	combout => \ps~25_combout\);

\ps.b0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BAUDRATE|clock_signal~q\,
	d => \ps~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ps.b0~q\);

\ps~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ps~24_combout\ = (\ps.b0~q\ & !\ps.b8~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps.b0~q\,
	datad => \ps.b8~q\,
	combout => \ps~24_combout\);

\ps.b1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BAUDRATE|clock_signal~q\,
	d => \ps~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ps.b1~q\);

\ps~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ps~26_combout\ = (\ps.b1~q\ & !\ps.b8~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps.b1~q\,
	datad => \ps.b8~q\,
	combout => \ps~26_combout\);

\ps.b2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BAUDRATE|clock_signal~q\,
	d => \ps~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ps.b2~q\);

\ps~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ps~23_combout\ = (\ps.b2~q\ & !\ps.b8~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps.b2~q\,
	datad => \ps.b8~q\,
	combout => \ps~23_combout\);

\ps.b3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BAUDRATE|clock_signal~q\,
	d => \ps~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ps.b3~q\);

\ps~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ps~22_combout\ = (\ps.b3~q\ & !\ps.b8~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps.b3~q\,
	datad => \ps.b8~q\,
	combout => \ps~22_combout\);

\ps.b4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BAUDRATE|clock_signal~q\,
	d => \ps~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ps.b4~q\);

\store~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \store~0_combout\ = (\ps.b4~q\ & (\rx~input_o\)) # (!\ps.b4~q\ & ((store(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rx~input_o\,
	datab => store(4),
	datad => \ps.b4~q\,
	combout => \store~0_combout\);

\store[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BAUDRATE|clock_signal~q\,
	d => \store~0_combout\,
	sclr => \ps.b8~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => store(4));

\store~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \store~1_combout\ = (\ps.b5~q\ & (\rx~input_o\)) # (!\ps.b5~q\ & ((store(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rx~input_o\,
	datab => store(5),
	datad => \ps.b5~q\,
	combout => \store~1_combout\);

\store[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BAUDRATE|clock_signal~q\,
	d => \store~1_combout\,
	sclr => \ps.b8~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => store(5));

\store~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \store~2_combout\ = (\ps.b3~q\ & (\rx~input_o\)) # (!\ps.b3~q\ & ((store(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rx~input_o\,
	datab => store(3),
	datad => \ps.b3~q\,
	combout => \store~2_combout\);

\store[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BAUDRATE|clock_signal~q\,
	d => \store~2_combout\,
	sclr => \ps.b8~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => store(3));

\store~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \store~3_combout\ = (\ps.b6~q\ & (\rx~input_o\)) # (!\ps.b6~q\ & ((store(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rx~input_o\,
	datab => store(6),
	datad => \ps.b6~q\,
	combout => \store~3_combout\);

\store[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BAUDRATE|clock_signal~q\,
	d => \store~3_combout\,
	sclr => \ps.b8~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => store(6));

\Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (store(4) & (store(5) & (!store(3) & !store(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => store(4),
	datab => store(5),
	datac => store(3),
	datad => store(6),
	combout => \Equal0~0_combout\);

\store~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \store~4_combout\ = (\ps.b7~q\ & (\rx~input_o\)) # (!\ps.b7~q\ & ((store(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rx~input_o\,
	datab => store(7),
	datad => \ps.b7~q\,
	combout => \store~4_combout\);

\store[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BAUDRATE|clock_signal~q\,
	d => \store~4_combout\,
	sclr => \ps.b8~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => store(7));

\Equal0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (\Equal0~0_combout\ & !store(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datad => store(7),
	combout => \Equal0~1_combout\);

\store~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \store~5_combout\ = (\ps.b1~q\ & (\rx~input_o\)) # (!\ps.b1~q\ & ((store(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rx~input_o\,
	datab => store(1),
	datad => \ps.b1~q\,
	combout => \store~5_combout\);

\store[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BAUDRATE|clock_signal~q\,
	d => \store~5_combout\,
	sclr => \ps.b8~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => store(1));

\store~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \store~6_combout\ = (\ps.b0~q\ & (\rx~input_o\)) # (!\ps.b0~q\ & ((store(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rx~input_o\,
	datab => store(0),
	datad => \ps.b0~q\,
	combout => \store~6_combout\);

\store[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BAUDRATE|clock_signal~q\,
	d => \store~6_combout\,
	sclr => \ps.b8~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => store(0));

\store~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \store~7_combout\ = (\ps.b2~q\ & (\rx~input_o\)) # (!\ps.b2~q\ & ((store(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rx~input_o\,
	datab => store(2),
	datad => \ps.b2~q\,
	combout => \store~7_combout\);

\store[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BAUDRATE|clock_signal~q\,
	d => \store~7_combout\,
	sclr => \ps.b8~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => store(2));

\in1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \in1~0_combout\ = (\Equal0~1_combout\ & (!store(2) & (store(1) $ (store(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~1_combout\,
	datab => store(1),
	datac => store(0),
	datad => store(2),
	combout => \in1~0_combout\);

\Equal3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal3~0_combout\ = (store(2) & (\Equal0~1_combout\ & (!store(1) & !store(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => store(2),
	datab => \Equal0~1_combout\,
	datac => store(1),
	datad => store(0),
	combout => \Equal3~0_combout\);

\in3~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \in3~2_combout\ = (\Equal0~0_combout\ & (!store(7) & (store(0) & !store(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datab => store(7),
	datac => store(0),
	datad => store(2),
	combout => \in3~2_combout\);

\enable_i~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \enable_i~0_combout\ = (\Equal0~1_combout\ & ((store(1) & (!store(0) & !store(2))) # (!store(1) & (store(0) $ (store(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~1_combout\,
	datab => store(1),
	datac => store(0),
	datad => store(2),
	combout => \enable_i~0_combout\);

\enable_d~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \enable_d~0_combout\ = (\Equal0~1_combout\ & ((store(0) & ((!store(2)))) # (!store(0) & (!store(1) & store(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~1_combout\,
	datab => store(0),
	datac => store(1),
	datad => store(2),
	combout => \enable_d~0_combout\);

ww_in1 <= \in1~output_o\;

ww_clk_baud <= \clk_baud~output_o\;

ww_in2 <= \in2~output_o\;

ww_in3 <= \in3~output_o\;

ww_in4 <= \in4~output_o\;

ww_enable_i <= \enable_i~output_o\;

ww_enable_d <= \enable_d~output_o\;

ww_data_recibida(0) <= \data_recibida[0]~output_o\;

ww_data_recibida(1) <= \data_recibida[1]~output_o\;

ww_data_recibida(2) <= \data_recibida[2]~output_o\;

ww_data_recibida(3) <= \data_recibida[3]~output_o\;

ww_data_recibida(4) <= \data_recibida[4]~output_o\;

ww_data_recibida(5) <= \data_recibida[5]~output_o\;

ww_data_recibida(6) <= \data_recibida[6]~output_o\;

ww_data_recibida(7) <= \data_recibida[7]~output_o\;
END structure;


