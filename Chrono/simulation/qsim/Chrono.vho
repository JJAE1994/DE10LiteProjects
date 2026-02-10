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

-- DATE "11/21/2021 17:42:29"

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

ENTITY 	Chrono IS
    PORT (
	clock_p : IN std_logic;
	clock_mux : IN std_logic;
	sevendisp : OUT std_logic_vector(7 DOWNTO 0);
	hab_US : OUT std_logic;
	hab_DS : OUT std_logic;
	hab_UM : OUT std_logic;
	hab_DM : OUT std_logic
	);
END Chrono;

ARCHITECTURE structure OF Chrono IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clock_p : std_logic;
SIGNAL ww_clock_mux : std_logic;
SIGNAL ww_sevendisp : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_hab_US : std_logic;
SIGNAL ww_hab_DS : std_logic;
SIGNAL ww_hab_UM : std_logic;
SIGNAL ww_hab_DM : std_logic;
SIGNAL \sevendisp[0]~output_o\ : std_logic;
SIGNAL \sevendisp[1]~output_o\ : std_logic;
SIGNAL \sevendisp[2]~output_o\ : std_logic;
SIGNAL \sevendisp[3]~output_o\ : std_logic;
SIGNAL \sevendisp[4]~output_o\ : std_logic;
SIGNAL \sevendisp[5]~output_o\ : std_logic;
SIGNAL \sevendisp[6]~output_o\ : std_logic;
SIGNAL \sevendisp[7]~output_o\ : std_logic;
SIGNAL \hab_US~output_o\ : std_logic;
SIGNAL \hab_DS~output_o\ : std_logic;
SIGNAL \hab_UM~output_o\ : std_logic;
SIGNAL \hab_DM~output_o\ : std_logic;
SIGNAL \clock_p~input_o\ : std_logic;
SIGNAL \CONTADOR|s_US[0]~3_combout\ : std_logic;
SIGNAL \CONTADOR|s_US[2]~0_combout\ : std_logic;
SIGNAL \CONTADOR|s_US~1_combout\ : std_logic;
SIGNAL \CONTADOR|s_US~2_combout\ : std_logic;
SIGNAL \CONTADOR|Equal0~0_combout\ : std_logic;
SIGNAL \CONTADOR|s_DS[0]~4_combout\ : std_logic;
SIGNAL \CONTADOR|s_DS~1_combout\ : std_logic;
SIGNAL \CONTADOR|s_DS[3]~2_combout\ : std_logic;
SIGNAL \CONTADOR|s_DS[3]~3_combout\ : std_logic;
SIGNAL \CONTADOR|s_DS~0_combout\ : std_logic;
SIGNAL \clock_mux~input_o\ : std_logic;
SIGNAL \MUXENS|count[0]~1_combout\ : std_logic;
SIGNAL \CONTADOR|s_UM[0]~3_combout\ : std_logic;
SIGNAL \CONTADOR|Equal1~0_combout\ : std_logic;
SIGNAL \CONTADOR|s_DM[0]~0_combout\ : std_logic;
SIGNAL \CONTADOR|s_UM~2_combout\ : std_logic;
SIGNAL \CONTADOR|s_UM~1_combout\ : std_logic;
SIGNAL \CONTADOR|s_UM[2]~0_combout\ : std_logic;
SIGNAL \MUXENS|count[1]~0_combout\ : std_logic;
SIGNAL \SELECTOR|Y[2]~0_combout\ : std_logic;
SIGNAL \CONTADOR|Equal2~0_combout\ : std_logic;
SIGNAL \CONTADOR|s_DM[0]~6_combout\ : std_logic;
SIGNAL \CONTADOR|s_DM[3]~2_combout\ : std_logic;
SIGNAL \CONTADOR|s_DM~3_combout\ : std_logic;
SIGNAL \CONTADOR|s_DM[3]~4_combout\ : std_logic;
SIGNAL \CONTADOR|s_DM[3]~5_combout\ : std_logic;
SIGNAL \CONTADOR|s_DM~1_combout\ : std_logic;
SIGNAL \SELECTOR|Y[2]~1_combout\ : std_logic;
SIGNAL \SELECTOR|Y[0]~2_combout\ : std_logic;
SIGNAL \SELECTOR|Y[0]~3_combout\ : std_logic;
SIGNAL \SELECTOR|Y[1]~4_combout\ : std_logic;
SIGNAL \SELECTOR|Y[1]~5_combout\ : std_logic;
SIGNAL \SELECTOR|Y[3]~6_combout\ : std_logic;
SIGNAL \SELECTOR|Y[3]~7_combout\ : std_logic;
SIGNAL \DISPDECODER|sevenseg[0]~0_combout\ : std_logic;
SIGNAL \DISPDECODER|sevenseg[1]~1_combout\ : std_logic;
SIGNAL \DISPDECODER|sevenseg[2]~2_combout\ : std_logic;
SIGNAL \DISPDECODER|sevenseg[3]~3_combout\ : std_logic;
SIGNAL \DISPDECODER|sevenseg[4]~4_combout\ : std_logic;
SIGNAL \DISPDECODER|sevenseg[5]~5_combout\ : std_logic;
SIGNAL \DISPDECODER|sevenseg[6]~6_combout\ : std_logic;
SIGNAL \MUXENS|Mux3~0_combout\ : std_logic;
SIGNAL \MUXENS|Mux2~0_combout\ : std_logic;
SIGNAL \MUXENS|Mux1~0_combout\ : std_logic;
SIGNAL \MUXENS|Mux0~0_combout\ : std_logic;
SIGNAL \CONTADOR|s_DS\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \MUXENS|count\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \CONTADOR|s_UM\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CONTADOR|s_US\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CONTADOR|s_DM\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \DISPDECODER|ALT_INV_sevenseg[1]~1_combout\ : std_logic;

BEGIN

ww_clock_p <= clock_p;
ww_clock_mux <= clock_mux;
sevendisp <= ww_sevendisp;
hab_US <= ww_hab_US;
hab_DS <= ww_hab_DS;
hab_UM <= ww_hab_UM;
hab_DM <= ww_hab_DM;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\DISPDECODER|ALT_INV_sevenseg[1]~1_combout\ <= NOT \DISPDECODER|sevenseg[1]~1_combout\;

\sevendisp[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DISPDECODER|sevenseg[0]~0_combout\,
	devoe => ww_devoe,
	o => \sevendisp[0]~output_o\);

\sevendisp[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DISPDECODER|ALT_INV_sevenseg[1]~1_combout\,
	devoe => ww_devoe,
	o => \sevendisp[1]~output_o\);

\sevendisp[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DISPDECODER|sevenseg[2]~2_combout\,
	devoe => ww_devoe,
	o => \sevendisp[2]~output_o\);

\sevendisp[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DISPDECODER|sevenseg[3]~3_combout\,
	devoe => ww_devoe,
	o => \sevendisp[3]~output_o\);

\sevendisp[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DISPDECODER|sevenseg[4]~4_combout\,
	devoe => ww_devoe,
	o => \sevendisp[4]~output_o\);

\sevendisp[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DISPDECODER|sevenseg[5]~5_combout\,
	devoe => ww_devoe,
	o => \sevendisp[5]~output_o\);

\sevendisp[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DISPDECODER|sevenseg[6]~6_combout\,
	devoe => ww_devoe,
	o => \sevendisp[6]~output_o\);

\sevendisp[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \sevendisp[7]~output_o\);

\hab_US~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MUXENS|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \hab_US~output_o\);

\hab_DS~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MUXENS|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \hab_DS~output_o\);

\hab_UM~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MUXENS|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \hab_UM~output_o\);

\hab_DM~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MUXENS|Mux0~0_combout\,
	devoe => ww_devoe,
	o => \hab_DM~output_o\);

\clock_p~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clock_p,
	o => \clock_p~input_o\);

\CONTADOR|s_US[0]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CONTADOR|s_US[0]~3_combout\ = !\CONTADOR|s_US\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTADOR|s_US\(0),
	combout => \CONTADOR|s_US[0]~3_combout\);

\CONTADOR|s_US[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_p~input_o\,
	d => \CONTADOR|s_US[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CONTADOR|s_US\(0));

\CONTADOR|s_US[2]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CONTADOR|s_US[2]~0_combout\ = \CONTADOR|s_US\(2) $ (((\CONTADOR|s_US\(1) & \CONTADOR|s_US\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CONTADOR|s_US\(2),
	datac => \CONTADOR|s_US\(1),
	datad => \CONTADOR|s_US\(0),
	combout => \CONTADOR|s_US[2]~0_combout\);

\CONTADOR|s_US[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_p~input_o\,
	d => \CONTADOR|s_US[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CONTADOR|s_US\(2));

\CONTADOR|s_US~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CONTADOR|s_US~1_combout\ = (\CONTADOR|s_US\(1) & (((!\CONTADOR|s_US\(0))))) # (!\CONTADOR|s_US\(1) & (\CONTADOR|s_US\(0) & ((\CONTADOR|s_US\(2)) # (!\CONTADOR|s_US\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTADOR|s_US\(2),
	datab => \CONTADOR|s_US\(3),
	datac => \CONTADOR|s_US\(1),
	datad => \CONTADOR|s_US\(0),
	combout => \CONTADOR|s_US~1_combout\);

\CONTADOR|s_US[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_p~input_o\,
	d => \CONTADOR|s_US~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CONTADOR|s_US\(1));

\CONTADOR|s_US~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CONTADOR|s_US~2_combout\ = (\CONTADOR|s_US\(3) & ((\CONTADOR|s_US\(1) $ (\CONTADOR|s_US\(2))) # (!\CONTADOR|s_US\(0)))) # (!\CONTADOR|s_US\(3) & (\CONTADOR|s_US\(1) & (\CONTADOR|s_US\(2) & \CONTADOR|s_US\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTADOR|s_US\(3),
	datab => \CONTADOR|s_US\(1),
	datac => \CONTADOR|s_US\(2),
	datad => \CONTADOR|s_US\(0),
	combout => \CONTADOR|s_US~2_combout\);

\CONTADOR|s_US[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_p~input_o\,
	d => \CONTADOR|s_US~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CONTADOR|s_US\(3));

\CONTADOR|Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CONTADOR|Equal0~0_combout\ = (\CONTADOR|s_US\(0) & (\CONTADOR|s_US\(3) & (!\CONTADOR|s_US\(1) & !\CONTADOR|s_US\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTADOR|s_US\(0),
	datab => \CONTADOR|s_US\(3),
	datac => \CONTADOR|s_US\(1),
	datad => \CONTADOR|s_US\(2),
	combout => \CONTADOR|Equal0~0_combout\);

\CONTADOR|s_DS[0]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CONTADOR|s_DS[0]~4_combout\ = !\CONTADOR|s_DS\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTADOR|s_DS\(0),
	combout => \CONTADOR|s_DS[0]~4_combout\);

\CONTADOR|s_DS[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_p~input_o\,
	d => \CONTADOR|s_DS[0]~4_combout\,
	ena => \CONTADOR|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CONTADOR|s_DS\(0));

\CONTADOR|s_DS~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CONTADOR|s_DS~1_combout\ = (\CONTADOR|s_DS\(1) & (((!\CONTADOR|s_DS\(0))))) # (!\CONTADOR|s_DS\(1) & (\CONTADOR|s_DS\(0) & ((\CONTADOR|s_DS\(3)) # (!\CONTADOR|s_DS\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTADOR|s_DS\(3),
	datab => \CONTADOR|s_DS\(2),
	datac => \CONTADOR|s_DS\(1),
	datad => \CONTADOR|s_DS\(0),
	combout => \CONTADOR|s_DS~1_combout\);

\CONTADOR|s_DS[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_p~input_o\,
	d => \CONTADOR|s_DS~1_combout\,
	ena => \CONTADOR|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CONTADOR|s_DS\(1));

\CONTADOR|s_DS[3]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CONTADOR|s_DS[3]~2_combout\ = (\CONTADOR|s_DS\(1) & (\CONTADOR|s_DS\(2) & \CONTADOR|s_DS\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTADOR|s_DS\(1),
	datab => \CONTADOR|s_DS\(2),
	datac => \CONTADOR|s_DS\(0),
	combout => \CONTADOR|s_DS[3]~2_combout\);

\CONTADOR|s_DS[3]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CONTADOR|s_DS[3]~3_combout\ = \CONTADOR|s_DS\(3) $ (((\CONTADOR|Equal0~0_combout\ & \CONTADOR|s_DS[3]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CONTADOR|s_DS\(3),
	datac => \CONTADOR|Equal0~0_combout\,
	datad => \CONTADOR|s_DS[3]~2_combout\,
	combout => \CONTADOR|s_DS[3]~3_combout\);

\CONTADOR|s_DS[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_p~input_o\,
	d => \CONTADOR|s_DS[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CONTADOR|s_DS\(3));

\CONTADOR|s_DS~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CONTADOR|s_DS~0_combout\ = (\CONTADOR|s_DS\(1) & ((\CONTADOR|s_DS\(2) $ (\CONTADOR|s_DS\(0))))) # (!\CONTADOR|s_DS\(1) & (\CONTADOR|s_DS\(2) & ((\CONTADOR|s_DS\(3)) # (!\CONTADOR|s_DS\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTADOR|s_DS\(3),
	datab => \CONTADOR|s_DS\(1),
	datac => \CONTADOR|s_DS\(2),
	datad => \CONTADOR|s_DS\(0),
	combout => \CONTADOR|s_DS~0_combout\);

\CONTADOR|s_DS[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_p~input_o\,
	d => \CONTADOR|s_DS~0_combout\,
	ena => \CONTADOR|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CONTADOR|s_DS\(2));

\clock_mux~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clock_mux,
	o => \clock_mux~input_o\);

\MUXENS|count[0]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \MUXENS|count[0]~1_combout\ = !\MUXENS|count\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUXENS|count\(0),
	combout => \MUXENS|count[0]~1_combout\);

\MUXENS|count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_mux~input_o\,
	d => \MUXENS|count[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MUXENS|count\(0));

\CONTADOR|s_UM[0]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CONTADOR|s_UM[0]~3_combout\ = !\CONTADOR|s_UM\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTADOR|s_UM\(0),
	combout => \CONTADOR|s_UM[0]~3_combout\);

\CONTADOR|Equal1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CONTADOR|Equal1~0_combout\ = (\CONTADOR|s_DS\(2) & (\CONTADOR|s_DS\(0) & (!\CONTADOR|s_DS\(1) & !\CONTADOR|s_DS\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTADOR|s_DS\(2),
	datab => \CONTADOR|s_DS\(0),
	datac => \CONTADOR|s_DS\(1),
	datad => \CONTADOR|s_DS\(3),
	combout => \CONTADOR|Equal1~0_combout\);

\CONTADOR|s_DM[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CONTADOR|s_DM[0]~0_combout\ = (\CONTADOR|Equal1~0_combout\ & \CONTADOR|Equal0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTADOR|Equal1~0_combout\,
	datab => \CONTADOR|Equal0~0_combout\,
	combout => \CONTADOR|s_DM[0]~0_combout\);

\CONTADOR|s_UM[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_p~input_o\,
	d => \CONTADOR|s_UM[0]~3_combout\,
	ena => \CONTADOR|s_DM[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CONTADOR|s_UM\(0));

\CONTADOR|s_UM~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CONTADOR|s_UM~2_combout\ = (\CONTADOR|s_UM\(3) & ((\CONTADOR|s_UM\(1) $ (\CONTADOR|s_UM\(2))) # (!\CONTADOR|s_UM\(0)))) # (!\CONTADOR|s_UM\(3) & (\CONTADOR|s_UM\(1) & (\CONTADOR|s_UM\(2) & \CONTADOR|s_UM\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTADOR|s_UM\(3),
	datab => \CONTADOR|s_UM\(1),
	datac => \CONTADOR|s_UM\(2),
	datad => \CONTADOR|s_UM\(0),
	combout => \CONTADOR|s_UM~2_combout\);

\CONTADOR|s_UM[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_p~input_o\,
	d => \CONTADOR|s_UM~2_combout\,
	ena => \CONTADOR|s_DM[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CONTADOR|s_UM\(3));

\CONTADOR|s_UM~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CONTADOR|s_UM~1_combout\ = (\CONTADOR|s_UM\(1) & (((!\CONTADOR|s_UM\(0))))) # (!\CONTADOR|s_UM\(1) & (\CONTADOR|s_UM\(0) & ((\CONTADOR|s_UM\(2)) # (!\CONTADOR|s_UM\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTADOR|s_UM\(2),
	datab => \CONTADOR|s_UM\(3),
	datac => \CONTADOR|s_UM\(1),
	datad => \CONTADOR|s_UM\(0),
	combout => \CONTADOR|s_UM~1_combout\);

\CONTADOR|s_UM[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_p~input_o\,
	d => \CONTADOR|s_UM~1_combout\,
	ena => \CONTADOR|s_DM[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CONTADOR|s_UM\(1));

\CONTADOR|s_UM[2]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CONTADOR|s_UM[2]~0_combout\ = \CONTADOR|s_UM\(2) $ (((\CONTADOR|s_UM\(1) & (\CONTADOR|s_UM\(0) & \CONTADOR|s_DM[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTADOR|s_UM\(2),
	datab => \CONTADOR|s_UM\(1),
	datac => \CONTADOR|s_UM\(0),
	datad => \CONTADOR|s_DM[0]~0_combout\,
	combout => \CONTADOR|s_UM[2]~0_combout\);

\CONTADOR|s_UM[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_p~input_o\,
	d => \CONTADOR|s_UM[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CONTADOR|s_UM\(2));

\MUXENS|count[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \MUXENS|count[1]~0_combout\ = \MUXENS|count\(1) $ (\MUXENS|count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \MUXENS|count\(1),
	datad => \MUXENS|count\(0),
	combout => \MUXENS|count[1]~0_combout\);

\MUXENS|count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_mux~input_o\,
	d => \MUXENS|count[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MUXENS|count\(1));

\SELECTOR|Y[2]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SELECTOR|Y[2]~0_combout\ = (\MUXENS|count\(0) & (((\MUXENS|count\(1))))) # (!\MUXENS|count\(0) & ((\MUXENS|count\(1) & (!\CONTADOR|s_UM\(2))) # (!\MUXENS|count\(1) & ((!\CONTADOR|s_US\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUXENS|count\(0),
	datab => \CONTADOR|s_UM\(2),
	datac => \MUXENS|count\(1),
	datad => \CONTADOR|s_US\(2),
	combout => \SELECTOR|Y[2]~0_combout\);

\CONTADOR|Equal2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CONTADOR|Equal2~0_combout\ = (\CONTADOR|s_UM\(0) & (\CONTADOR|s_UM\(3) & (!\CONTADOR|s_UM\(1) & !\CONTADOR|s_UM\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTADOR|s_UM\(0),
	datab => \CONTADOR|s_UM\(3),
	datac => \CONTADOR|s_UM\(1),
	datad => \CONTADOR|s_UM\(2),
	combout => \CONTADOR|Equal2~0_combout\);

\CONTADOR|s_DM[0]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CONTADOR|s_DM[0]~6_combout\ = !\CONTADOR|s_DM\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTADOR|s_DM\(0),
	combout => \CONTADOR|s_DM[0]~6_combout\);

\CONTADOR|s_DM[3]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CONTADOR|s_DM[3]~2_combout\ = (\CONTADOR|Equal2~0_combout\ & (\CONTADOR|Equal1~0_combout\ & \CONTADOR|Equal0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTADOR|Equal2~0_combout\,
	datab => \CONTADOR|Equal1~0_combout\,
	datac => \CONTADOR|Equal0~0_combout\,
	combout => \CONTADOR|s_DM[3]~2_combout\);

\CONTADOR|s_DM[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_p~input_o\,
	d => \CONTADOR|s_DM[0]~6_combout\,
	ena => \CONTADOR|s_DM[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CONTADOR|s_DM\(0));

\CONTADOR|s_DM~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CONTADOR|s_DM~3_combout\ = (\CONTADOR|s_DM\(1) & (((!\CONTADOR|s_DM\(0))))) # (!\CONTADOR|s_DM\(1) & (\CONTADOR|s_DM\(0) & ((\CONTADOR|s_DM\(3)) # (!\CONTADOR|s_DM\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTADOR|s_DM\(3),
	datab => \CONTADOR|s_DM\(2),
	datac => \CONTADOR|s_DM\(1),
	datad => \CONTADOR|s_DM\(0),
	combout => \CONTADOR|s_DM~3_combout\);

\CONTADOR|s_DM[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_p~input_o\,
	d => \CONTADOR|s_DM~3_combout\,
	ena => \CONTADOR|s_DM[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CONTADOR|s_DM\(1));

\CONTADOR|s_DM[3]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CONTADOR|s_DM[3]~4_combout\ = (\CONTADOR|s_DM\(1) & (\CONTADOR|s_DM\(2) & \CONTADOR|s_DM\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTADOR|s_DM\(1),
	datab => \CONTADOR|s_DM\(2),
	datac => \CONTADOR|s_DM\(0),
	combout => \CONTADOR|s_DM[3]~4_combout\);

\CONTADOR|s_DM[3]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CONTADOR|s_DM[3]~5_combout\ = \CONTADOR|s_DM\(3) $ (((\CONTADOR|Equal2~0_combout\ & (\CONTADOR|s_DM[0]~0_combout\ & \CONTADOR|s_DM[3]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTADOR|s_DM\(3),
	datab => \CONTADOR|Equal2~0_combout\,
	datac => \CONTADOR|s_DM[0]~0_combout\,
	datad => \CONTADOR|s_DM[3]~4_combout\,
	combout => \CONTADOR|s_DM[3]~5_combout\);

\CONTADOR|s_DM[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_p~input_o\,
	d => \CONTADOR|s_DM[3]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CONTADOR|s_DM\(3));

\CONTADOR|s_DM~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CONTADOR|s_DM~1_combout\ = (\CONTADOR|s_DM\(1) & ((\CONTADOR|s_DM\(2) $ (\CONTADOR|s_DM\(0))))) # (!\CONTADOR|s_DM\(1) & (\CONTADOR|s_DM\(2) & ((\CONTADOR|s_DM\(3)) # (!\CONTADOR|s_DM\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTADOR|s_DM\(3),
	datab => \CONTADOR|s_DM\(1),
	datac => \CONTADOR|s_DM\(2),
	datad => \CONTADOR|s_DM\(0),
	combout => \CONTADOR|s_DM~1_combout\);

\CONTADOR|s_DM[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_p~input_o\,
	d => \CONTADOR|s_DM~1_combout\,
	ena => \CONTADOR|s_DM[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CONTADOR|s_DM\(2));

\SELECTOR|Y[2]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SELECTOR|Y[2]~1_combout\ = (\MUXENS|count\(0) & ((\SELECTOR|Y[2]~0_combout\ & ((!\CONTADOR|s_DM\(2)))) # (!\SELECTOR|Y[2]~0_combout\ & (!\CONTADOR|s_DS\(2))))) # (!\MUXENS|count\(0) & (((\SELECTOR|Y[2]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011010011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTADOR|s_DS\(2),
	datab => \MUXENS|count\(0),
	datac => \SELECTOR|Y[2]~0_combout\,
	datad => \CONTADOR|s_DM\(2),
	combout => \SELECTOR|Y[2]~1_combout\);

\SELECTOR|Y[0]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SELECTOR|Y[0]~2_combout\ = (\MUXENS|count\(1) & (((\MUXENS|count\(0))))) # (!\MUXENS|count\(1) & ((\MUXENS|count\(0) & (\CONTADOR|s_DS\(0))) # (!\MUXENS|count\(0) & ((\CONTADOR|s_US\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUXENS|count\(1),
	datab => \CONTADOR|s_DS\(0),
	datac => \MUXENS|count\(0),
	datad => \CONTADOR|s_US\(0),
	combout => \SELECTOR|Y[0]~2_combout\);

\SELECTOR|Y[0]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SELECTOR|Y[0]~3_combout\ = (\MUXENS|count\(1) & ((\SELECTOR|Y[0]~2_combout\ & ((\CONTADOR|s_DM\(0)))) # (!\SELECTOR|Y[0]~2_combout\ & (\CONTADOR|s_UM\(0))))) # (!\MUXENS|count\(1) & (((\SELECTOR|Y[0]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTADOR|s_UM\(0),
	datab => \MUXENS|count\(1),
	datac => \SELECTOR|Y[0]~2_combout\,
	datad => \CONTADOR|s_DM\(0),
	combout => \SELECTOR|Y[0]~3_combout\);

\SELECTOR|Y[1]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SELECTOR|Y[1]~4_combout\ = (\MUXENS|count\(1) & (((\MUXENS|count\(0))))) # (!\MUXENS|count\(1) & ((\MUXENS|count\(0) & (\CONTADOR|s_DS\(1))) # (!\MUXENS|count\(0) & ((\CONTADOR|s_US\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUXENS|count\(1),
	datab => \CONTADOR|s_DS\(1),
	datac => \MUXENS|count\(0),
	datad => \CONTADOR|s_US\(1),
	combout => \SELECTOR|Y[1]~4_combout\);

\SELECTOR|Y[1]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SELECTOR|Y[1]~5_combout\ = (\MUXENS|count\(1) & ((\SELECTOR|Y[1]~4_combout\ & ((\CONTADOR|s_DM\(1)))) # (!\SELECTOR|Y[1]~4_combout\ & (\CONTADOR|s_UM\(1))))) # (!\MUXENS|count\(1) & (((\SELECTOR|Y[1]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTADOR|s_UM\(1),
	datab => \MUXENS|count\(1),
	datac => \SELECTOR|Y[1]~4_combout\,
	datad => \CONTADOR|s_DM\(1),
	combout => \SELECTOR|Y[1]~5_combout\);

\SELECTOR|Y[3]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SELECTOR|Y[3]~6_combout\ = (\MUXENS|count\(1) & (((\MUXENS|count\(0))))) # (!\MUXENS|count\(1) & ((\MUXENS|count\(0) & (\CONTADOR|s_DS\(3))) # (!\MUXENS|count\(0) & ((\CONTADOR|s_US\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUXENS|count\(1),
	datab => \CONTADOR|s_DS\(3),
	datac => \MUXENS|count\(0),
	datad => \CONTADOR|s_US\(3),
	combout => \SELECTOR|Y[3]~6_combout\);

\SELECTOR|Y[3]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SELECTOR|Y[3]~7_combout\ = (\MUXENS|count\(1) & ((\SELECTOR|Y[3]~6_combout\ & ((\CONTADOR|s_DM\(3)))) # (!\SELECTOR|Y[3]~6_combout\ & (\CONTADOR|s_UM\(3))))) # (!\MUXENS|count\(1) & (((\SELECTOR|Y[3]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTADOR|s_UM\(3),
	datab => \MUXENS|count\(1),
	datac => \SELECTOR|Y[3]~6_combout\,
	datad => \CONTADOR|s_DM\(3),
	combout => \SELECTOR|Y[3]~7_combout\);

\DISPDECODER|sevenseg[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DISPDECODER|sevenseg[0]~0_combout\ = (\SELECTOR|Y[1]~5_combout\ & (((!\SELECTOR|Y[3]~7_combout\)))) # (!\SELECTOR|Y[1]~5_combout\ & (\SELECTOR|Y[2]~1_combout\ $ (((\SELECTOR|Y[0]~3_combout\ & !\SELECTOR|Y[3]~7_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SELECTOR|Y[2]~1_combout\,
	datab => \SELECTOR|Y[0]~3_combout\,
	datac => \SELECTOR|Y[1]~5_combout\,
	datad => \SELECTOR|Y[3]~7_combout\,
	combout => \DISPDECODER|sevenseg[0]~0_combout\);

\DISPDECODER|sevenseg[1]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DISPDECODER|sevenseg[1]~1_combout\ = (\SELECTOR|Y[3]~7_combout\ & (((\SELECTOR|Y[1]~5_combout\)) # (!\SELECTOR|Y[2]~1_combout\))) # (!\SELECTOR|Y[3]~7_combout\ & (!\SELECTOR|Y[2]~1_combout\ & (\SELECTOR|Y[1]~5_combout\ $ (\SELECTOR|Y[0]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001110110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SELECTOR|Y[3]~7_combout\,
	datab => \SELECTOR|Y[2]~1_combout\,
	datac => \SELECTOR|Y[1]~5_combout\,
	datad => \SELECTOR|Y[0]~3_combout\,
	combout => \DISPDECODER|sevenseg[1]~1_combout\);

\DISPDECODER|sevenseg[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DISPDECODER|sevenseg[2]~2_combout\ = (\SELECTOR|Y[2]~1_combout\ & (((\SELECTOR|Y[0]~3_combout\ & !\SELECTOR|Y[3]~7_combout\)) # (!\SELECTOR|Y[1]~5_combout\))) # (!\SELECTOR|Y[2]~1_combout\ & (((!\SELECTOR|Y[3]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SELECTOR|Y[2]~1_combout\,
	datab => \SELECTOR|Y[0]~3_combout\,
	datac => \SELECTOR|Y[1]~5_combout\,
	datad => \SELECTOR|Y[3]~7_combout\,
	combout => \DISPDECODER|sevenseg[2]~2_combout\);

\DISPDECODER|sevenseg[3]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DISPDECODER|sevenseg[3]~3_combout\ = (\SELECTOR|Y[1]~5_combout\ & (!\SELECTOR|Y[3]~7_combout\ & ((\SELECTOR|Y[2]~1_combout\) # (!\SELECTOR|Y[0]~3_combout\)))) # (!\SELECTOR|Y[1]~5_combout\ & (\SELECTOR|Y[2]~1_combout\ $ (((!\SELECTOR|Y[3]~7_combout\ & 
-- \SELECTOR|Y[0]~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100101011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SELECTOR|Y[3]~7_combout\,
	datab => \SELECTOR|Y[2]~1_combout\,
	datac => \SELECTOR|Y[1]~5_combout\,
	datad => \SELECTOR|Y[0]~3_combout\,
	combout => \DISPDECODER|sevenseg[3]~3_combout\);

\DISPDECODER|sevenseg[4]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DISPDECODER|sevenseg[4]~4_combout\ = (!\SELECTOR|Y[0]~3_combout\ & ((\SELECTOR|Y[1]~5_combout\ & ((!\SELECTOR|Y[3]~7_combout\))) # (!\SELECTOR|Y[1]~5_combout\ & (\SELECTOR|Y[2]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SELECTOR|Y[2]~1_combout\,
	datab => \SELECTOR|Y[1]~5_combout\,
	datac => \SELECTOR|Y[3]~7_combout\,
	datad => \SELECTOR|Y[0]~3_combout\,
	combout => \DISPDECODER|sevenseg[4]~4_combout\);

\DISPDECODER|sevenseg[5]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DISPDECODER|sevenseg[5]~5_combout\ = (\SELECTOR|Y[2]~1_combout\ & (!\SELECTOR|Y[1]~5_combout\ & ((\SELECTOR|Y[3]~7_combout\) # (!\SELECTOR|Y[0]~3_combout\)))) # (!\SELECTOR|Y[2]~1_combout\ & (!\SELECTOR|Y[3]~7_combout\ & ((!\SELECTOR|Y[1]~5_combout\) # 
-- (!\SELECTOR|Y[0]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000110011011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SELECTOR|Y[2]~1_combout\,
	datab => \SELECTOR|Y[3]~7_combout\,
	datac => \SELECTOR|Y[0]~3_combout\,
	datad => \SELECTOR|Y[1]~5_combout\,
	combout => \DISPDECODER|sevenseg[5]~5_combout\);

\DISPDECODER|sevenseg[6]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DISPDECODER|sevenseg[6]~6_combout\ = (\SELECTOR|Y[2]~1_combout\ & ((\SELECTOR|Y[1]~5_combout\ $ (\SELECTOR|Y[3]~7_combout\)))) # (!\SELECTOR|Y[2]~1_combout\ & (!\SELECTOR|Y[3]~7_combout\ & ((!\SELECTOR|Y[1]~5_combout\) # (!\SELECTOR|Y[0]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SELECTOR|Y[2]~1_combout\,
	datab => \SELECTOR|Y[0]~3_combout\,
	datac => \SELECTOR|Y[1]~5_combout\,
	datad => \SELECTOR|Y[3]~7_combout\,
	combout => \DISPDECODER|sevenseg[6]~6_combout\);

\MUXENS|Mux3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \MUXENS|Mux3~0_combout\ = (\MUXENS|count\(1)) # (\MUXENS|count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUXENS|count\(1),
	datab => \MUXENS|count\(0),
	combout => \MUXENS|Mux3~0_combout\);

\MUXENS|Mux2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \MUXENS|Mux2~0_combout\ = (\MUXENS|count\(1)) # (!\MUXENS|count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUXENS|count\(1),
	datad => \MUXENS|count\(0),
	combout => \MUXENS|Mux2~0_combout\);

\MUXENS|Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \MUXENS|Mux1~0_combout\ = (\MUXENS|count\(0)) # (!\MUXENS|count\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUXENS|count\(0),
	datad => \MUXENS|count\(1),
	combout => \MUXENS|Mux1~0_combout\);

\MUXENS|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \MUXENS|Mux0~0_combout\ = (!\MUXENS|count\(0)) # (!\MUXENS|count\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \MUXENS|count\(1),
	datad => \MUXENS|count\(0),
	combout => \MUXENS|Mux0~0_combout\);

ww_sevendisp(0) <= \sevendisp[0]~output_o\;

ww_sevendisp(1) <= \sevendisp[1]~output_o\;

ww_sevendisp(2) <= \sevendisp[2]~output_o\;

ww_sevendisp(3) <= \sevendisp[3]~output_o\;

ww_sevendisp(4) <= \sevendisp[4]~output_o\;

ww_sevendisp(5) <= \sevendisp[5]~output_o\;

ww_sevendisp(6) <= \sevendisp[6]~output_o\;

ww_sevendisp(7) <= \sevendisp[7]~output_o\;

ww_hab_US <= \hab_US~output_o\;

ww_hab_DS <= \hab_DS~output_o\;

ww_hab_UM <= \hab_UM~output_o\;

ww_hab_DM <= \hab_DM~output_o\;
END structure;


