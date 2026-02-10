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

-- DATE "07/15/2023 03:28:08"

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

ENTITY 	SPI_Master IS
    PORT (
	clk : IN std_logic;
	medir : IN std_logic;
	reset : IN std_logic;
	MISO : IN std_logic;
	MOSI : OUT std_logic;
	CS : OUT std_logic;
	dato_rx : OUT std_logic_vector(7 DOWNTO 0)
	);
END SPI_Master;

ARCHITECTURE structure OF SPI_Master IS
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
SIGNAL ww_medir : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_MISO : std_logic;
SIGNAL ww_MOSI : std_logic;
SIGNAL ww_CS : std_logic;
SIGNAL ww_dato_rx : std_logic_vector(7 DOWNTO 0);
SIGNAL \MOSI~output_o\ : std_logic;
SIGNAL \CS~output_o\ : std_logic;
SIGNAL \dato_rx[0]~output_o\ : std_logic;
SIGNAL \dato_rx[1]~output_o\ : std_logic;
SIGNAL \dato_rx[2]~output_o\ : std_logic;
SIGNAL \dato_rx[3]~output_o\ : std_logic;
SIGNAL \dato_rx[4]~output_o\ : std_logic;
SIGNAL \dato_rx[5]~output_o\ : std_logic;
SIGNAL \dato_rx[6]~output_o\ : std_logic;
SIGNAL \dato_rx[7]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \medir~input_o\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \pr_state.b6~q\ : std_logic;
SIGNAL \pr_state.b5~q\ : std_logic;
SIGNAL \pr_state.b4~q\ : std_logic;
SIGNAL \pr_state.b3~q\ : std_logic;
SIGNAL \pr_state.b2~q\ : std_logic;
SIGNAL \pr_state.b1~q\ : std_logic;
SIGNAL \pr_state.b0~q\ : std_logic;
SIGNAL \MISO~input_o\ : std_logic;
SIGNAL \Selector10~0_combout\ : std_logic;
SIGNAL \pr_state.fintx~q\ : std_logic;
SIGNAL \Selector11~0_combout\ : std_logic;
SIGNAL \pr_state.a6~q\ : std_logic;
SIGNAL \pr_state.a5~q\ : std_logic;
SIGNAL \pr_state.a4~q\ : std_logic;
SIGNAL \pr_state.a3~q\ : std_logic;
SIGNAL \pr_state.a2~q\ : std_logic;
SIGNAL \pr_state.a1~q\ : std_logic;
SIGNAL \pr_state.a0~q\ : std_logic;
SIGNAL \pr_state.fin~q\ : std_logic;
SIGNAL \Selector1~0_combout\ : std_logic;
SIGNAL \pr_state.idle~q\ : std_logic;
SIGNAL \Selector2~0_combout\ : std_logic;
SIGNAL \pr_state.b7~q\ : std_logic;
SIGNAL \WideOr1~0_combout\ : std_logic;
SIGNAL \WideOr1~combout\ : std_logic;
SIGNAL \WideOr2~0_combout\ : std_logic;
SIGNAL \WideOr2~1_combout\ : std_logic;
SIGNAL \WideOr2~combout\ : std_logic;
SIGNAL \s_mosi~combout\ : std_logic;
SIGNAL \Selector19~0_combout\ : std_logic;
SIGNAL \WideOr3~0_combout\ : std_logic;
SIGNAL \s_cs~combout\ : std_logic;
SIGNAL \dato_rx[0]$latch~combout\ : std_logic;
SIGNAL \dato_rx[1]$latch~combout\ : std_logic;
SIGNAL \dato_rx[2]$latch~combout\ : std_logic;
SIGNAL \dato_rx[3]$latch~combout\ : std_logic;
SIGNAL \dato_rx[4]$latch~combout\ : std_logic;
SIGNAL \dato_rx[5]$latch~combout\ : std_logic;
SIGNAL \dato_rx[6]$latch~combout\ : std_logic;
SIGNAL dato : std_logic_vector(7 DOWNTO 0);
SIGNAL \ALT_INV_s_cs~combout\ : std_logic;
SIGNAL \ALT_INV_reset~input_o\ : std_logic;

BEGIN

ww_clk <= clk;
ww_medir <= medir;
ww_reset <= reset;
ww_MISO <= MISO;
MOSI <= ww_MOSI;
CS <= ww_CS;
dato_rx <= ww_dato_rx;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_s_cs~combout\ <= NOT \s_cs~combout\;
\ALT_INV_reset~input_o\ <= NOT \reset~input_o\;

\MOSI~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \s_mosi~combout\,
	oe => \ALT_INV_s_cs~combout\,
	devoe => ww_devoe,
	o => \MOSI~output_o\);

\CS~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \s_cs~combout\,
	devoe => ww_devoe,
	o => \CS~output_o\);

\dato_rx[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dato_rx[0]$latch~combout\,
	devoe => ww_devoe,
	o => \dato_rx[0]~output_o\);

\dato_rx[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dato_rx[1]$latch~combout\,
	devoe => ww_devoe,
	o => \dato_rx[1]~output_o\);

\dato_rx[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dato_rx[2]$latch~combout\,
	devoe => ww_devoe,
	o => \dato_rx[2]~output_o\);

\dato_rx[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dato_rx[3]$latch~combout\,
	devoe => ww_devoe,
	o => \dato_rx[3]~output_o\);

\dato_rx[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dato_rx[4]$latch~combout\,
	devoe => ww_devoe,
	o => \dato_rx[4]~output_o\);

\dato_rx[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dato_rx[5]$latch~combout\,
	devoe => ww_devoe,
	o => \dato_rx[5]~output_o\);

\dato_rx[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dato_rx[6]$latch~combout\,
	devoe => ww_devoe,
	o => \dato_rx[6]~output_o\);

\dato_rx[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \dato_rx[7]~output_o\);

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

\medir~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_medir,
	o => \medir~input_o\);

\reset~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

\pr_state.b6\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \pr_state.b7~q\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pr_state.b6~q\);

\pr_state.b5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \pr_state.b6~q\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pr_state.b5~q\);

\pr_state.b4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \pr_state.b5~q\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pr_state.b4~q\);

\pr_state.b3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \pr_state.b4~q\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pr_state.b3~q\);

\pr_state.b2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \pr_state.b3~q\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pr_state.b2~q\);

\pr_state.b1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \pr_state.b2~q\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pr_state.b1~q\);

\pr_state.b0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \pr_state.b1~q\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pr_state.b0~q\);

\MISO~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_MISO,
	o => \MISO~input_o\);

\Selector10~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector10~0_combout\ = (\pr_state.b0~q\) # ((\MISO~input_o\ & \pr_state.fintx~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pr_state.b0~q\,
	datab => \MISO~input_o\,
	datac => \pr_state.fintx~q\,
	combout => \Selector10~0_combout\);

\pr_state.fintx\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Selector10~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pr_state.fintx~q\);

\Selector11~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector11~0_combout\ = (\pr_state.fintx~q\ & !\MISO~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pr_state.fintx~q\,
	datad => \MISO~input_o\,
	combout => \Selector11~0_combout\);

\pr_state.a6\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Selector11~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pr_state.a6~q\);

\pr_state.a5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \pr_state.a6~q\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pr_state.a5~q\);

\pr_state.a4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \pr_state.a5~q\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pr_state.a4~q\);

\pr_state.a3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \pr_state.a4~q\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pr_state.a3~q\);

\pr_state.a2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \pr_state.a3~q\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pr_state.a2~q\);

\pr_state.a1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \pr_state.a2~q\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pr_state.a1~q\);

\pr_state.a0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \pr_state.a1~q\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pr_state.a0~q\);

\pr_state.fin\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \pr_state.a0~q\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pr_state.fin~q\);

\Selector1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector1~0_combout\ = (!\pr_state.fin~q\ & ((\medir~input_o\) # (\pr_state.idle~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pr_state.fin~q\,
	datac => \medir~input_o\,
	datad => \pr_state.idle~q\,
	combout => \Selector1~0_combout\);

\pr_state.idle\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Selector1~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pr_state.idle~q\);

\Selector2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector2~0_combout\ = (\medir~input_o\ & !\pr_state.idle~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \medir~input_o\,
	datad => \pr_state.idle~q\,
	combout => \Selector2~0_combout\);

\pr_state.b7\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Selector2~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pr_state.b7~q\);

\WideOr1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \WideOr1~0_combout\ = (\pr_state.b7~q\) # ((\pr_state.b6~q\) # ((\pr_state.b5~q\) # (\pr_state.b4~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pr_state.b7~q\,
	datab => \pr_state.b6~q\,
	datac => \pr_state.b5~q\,
	datad => \pr_state.b4~q\,
	combout => \WideOr1~0_combout\);

WideOr1 : fiftyfivenm_lcell_comb
-- Equation(s):
-- \WideOr1~combout\ = (\WideOr1~0_combout\) # ((\pr_state.b3~q\) # (\pr_state.b1~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideOr1~0_combout\,
	datab => \pr_state.b3~q\,
	datac => \pr_state.b1~q\,
	combout => \WideOr1~combout\);

\WideOr2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \WideOr2~0_combout\ = (\pr_state.a6~q\) # ((\pr_state.a5~q\) # ((\pr_state.a4~q\) # (\pr_state.a3~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pr_state.a6~q\,
	datab => \pr_state.a5~q\,
	datac => \pr_state.a4~q\,
	datad => \pr_state.a3~q\,
	combout => \WideOr2~0_combout\);

\WideOr2~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \WideOr2~1_combout\ = (\pr_state.fin~q\) # ((\pr_state.a2~q\) # ((\pr_state.a1~q\) # (\pr_state.a0~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pr_state.fin~q\,
	datab => \pr_state.a2~q\,
	datac => \pr_state.a1~q\,
	datad => \pr_state.a0~q\,
	combout => \WideOr2~1_combout\);

WideOr2 : fiftyfivenm_lcell_comb
-- Equation(s):
-- \WideOr2~combout\ = (\WideOr2~0_combout\) # (\WideOr2~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideOr2~0_combout\,
	datab => \WideOr2~1_combout\,
	combout => \WideOr2~combout\);

s_mosi : fiftyfivenm_lcell_comb
-- Equation(s):
-- \s_mosi~combout\ = (\WideOr2~combout\ & ((\s_mosi~combout\))) # (!\WideOr2~combout\ & (!\WideOr1~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \WideOr1~combout\,
	datac => \s_mosi~combout\,
	datad => \WideOr2~combout\,
	combout => \s_mosi~combout\);

\Selector19~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector19~0_combout\ = (\pr_state.fin~q\) # (!\medir~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pr_state.fin~q\,
	datad => \medir~input_o\,
	combout => \Selector19~0_combout\);

\WideOr3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \WideOr3~0_combout\ = (\pr_state.fin~q\) # (!\pr_state.idle~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pr_state.fin~q\,
	datad => \pr_state.idle~q\,
	combout => \WideOr3~0_combout\);

s_cs : fiftyfivenm_lcell_comb
-- Equation(s):
-- \s_cs~combout\ = (\WideOr3~0_combout\ & (\Selector19~0_combout\)) # (!\WideOr3~0_combout\ & ((\s_cs~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Selector19~0_combout\,
	datac => \s_cs~combout\,
	datad => \WideOr3~0_combout\,
	combout => \s_cs~combout\);

\dato[0]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- dato(0) = (\pr_state.a0~q\ & (\MISO~input_o\)) # (!\pr_state.a0~q\ & ((dato(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MISO~input_o\,
	datac => dato(0),
	datad => \pr_state.a0~q\,
	combout => dato(0));

\dato_rx[0]$latch\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dato_rx[0]$latch~combout\ = (\pr_state.fin~q\ & (dato(0))) # (!\pr_state.fin~q\ & ((\dato_rx[0]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => dato(0),
	datac => \dato_rx[0]$latch~combout\,
	datad => \pr_state.fin~q\,
	combout => \dato_rx[0]$latch~combout\);

\dato[1]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- dato(1) = (\pr_state.a1~q\ & (\MISO~input_o\)) # (!\pr_state.a1~q\ & ((dato(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MISO~input_o\,
	datac => dato(1),
	datad => \pr_state.a1~q\,
	combout => dato(1));

\dato_rx[1]$latch\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dato_rx[1]$latch~combout\ = (\pr_state.fin~q\ & (dato(1))) # (!\pr_state.fin~q\ & ((\dato_rx[1]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => dato(1),
	datac => \dato_rx[1]$latch~combout\,
	datad => \pr_state.fin~q\,
	combout => \dato_rx[1]$latch~combout\);

\dato[2]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- dato(2) = (\pr_state.a2~q\ & (\MISO~input_o\)) # (!\pr_state.a2~q\ & ((dato(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MISO~input_o\,
	datac => dato(2),
	datad => \pr_state.a2~q\,
	combout => dato(2));

\dato_rx[2]$latch\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dato_rx[2]$latch~combout\ = (\pr_state.fin~q\ & (dato(2))) # (!\pr_state.fin~q\ & ((\dato_rx[2]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => dato(2),
	datac => \dato_rx[2]$latch~combout\,
	datad => \pr_state.fin~q\,
	combout => \dato_rx[2]$latch~combout\);

\dato[3]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- dato(3) = (\pr_state.a3~q\ & (\MISO~input_o\)) # (!\pr_state.a3~q\ & ((dato(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MISO~input_o\,
	datac => dato(3),
	datad => \pr_state.a3~q\,
	combout => dato(3));

\dato_rx[3]$latch\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dato_rx[3]$latch~combout\ = (\pr_state.fin~q\ & (dato(3))) # (!\pr_state.fin~q\ & ((\dato_rx[3]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => dato(3),
	datac => \dato_rx[3]$latch~combout\,
	datad => \pr_state.fin~q\,
	combout => \dato_rx[3]$latch~combout\);

\dato[4]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- dato(4) = (\pr_state.a4~q\ & (\MISO~input_o\)) # (!\pr_state.a4~q\ & ((dato(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MISO~input_o\,
	datac => dato(4),
	datad => \pr_state.a4~q\,
	combout => dato(4));

\dato_rx[4]$latch\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dato_rx[4]$latch~combout\ = (\pr_state.fin~q\ & (dato(4))) # (!\pr_state.fin~q\ & ((\dato_rx[4]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => dato(4),
	datac => \dato_rx[4]$latch~combout\,
	datad => \pr_state.fin~q\,
	combout => \dato_rx[4]$latch~combout\);

\dato[5]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- dato(5) = (\pr_state.a5~q\ & (\MISO~input_o\)) # (!\pr_state.a5~q\ & ((dato(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MISO~input_o\,
	datac => dato(5),
	datad => \pr_state.a5~q\,
	combout => dato(5));

\dato_rx[5]$latch\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dato_rx[5]$latch~combout\ = (\pr_state.fin~q\ & (dato(5))) # (!\pr_state.fin~q\ & ((\dato_rx[5]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => dato(5),
	datac => \dato_rx[5]$latch~combout\,
	datad => \pr_state.fin~q\,
	combout => \dato_rx[5]$latch~combout\);

\dato[6]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- dato(6) = (\pr_state.a6~q\ & (\MISO~input_o\)) # (!\pr_state.a6~q\ & ((dato(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MISO~input_o\,
	datac => dato(6),
	datad => \pr_state.a6~q\,
	combout => dato(6));

\dato_rx[6]$latch\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dato_rx[6]$latch~combout\ = (\pr_state.fin~q\ & (dato(6))) # (!\pr_state.fin~q\ & ((\dato_rx[6]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => dato(6),
	datac => \dato_rx[6]$latch~combout\,
	datad => \pr_state.fin~q\,
	combout => \dato_rx[6]$latch~combout\);

ww_MOSI <= \MOSI~output_o\;

ww_CS <= \CS~output_o\;

ww_dato_rx(0) <= \dato_rx[0]~output_o\;

ww_dato_rx(1) <= \dato_rx[1]~output_o\;

ww_dato_rx(2) <= \dato_rx[2]~output_o\;

ww_dato_rx(3) <= \dato_rx[3]~output_o\;

ww_dato_rx(4) <= \dato_rx[4]~output_o\;

ww_dato_rx(5) <= \dato_rx[5]~output_o\;

ww_dato_rx(6) <= \dato_rx[6]~output_o\;

ww_dato_rx(7) <= \dato_rx[7]~output_o\;
END structure;


