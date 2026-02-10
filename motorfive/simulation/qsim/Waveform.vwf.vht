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

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "11/26/2021 21:59:46"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          motorfive
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY motorfive_vhd_vec_tst IS
END motorfive_vhd_vec_tst;
ARCHITECTURE motorfive_arch OF motorfive_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL brightness : STD_LOGIC;
SIGNAL clk : STD_LOGIC;
SIGNAL display_c : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL display_d : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL display_u : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL led_green : STD_LOGIC;
SIGNAL led_red : STD_LOGIC;
SIGNAL motor : STD_LOGIC;
SIGNAL speed_down : STD_LOGIC;
SIGNAL speed_up : STD_LOGIC;
SIGNAL start_stop : STD_LOGIC;
COMPONENT motorfive
	PORT (
	brightness : IN STD_LOGIC;
	clk : IN STD_LOGIC;
	display_c : BUFFER STD_LOGIC_VECTOR(6 DOWNTO 0);
	display_d : BUFFER STD_LOGIC_VECTOR(6 DOWNTO 0);
	display_u : BUFFER STD_LOGIC_VECTOR(6 DOWNTO 0);
	led_green : BUFFER STD_LOGIC;
	led_red : BUFFER STD_LOGIC;
	motor : BUFFER STD_LOGIC;
	speed_down : IN STD_LOGIC;
	speed_up : IN STD_LOGIC;
	start_stop : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : motorfive
	PORT MAP (
-- list connections between master ports and signals
	brightness => brightness,
	clk => clk,
	display_c => display_c,
	display_d => display_d,
	display_u => display_u,
	led_green => led_green,
	led_red => led_red,
	motor => motor,
	speed_down => speed_down,
	speed_up => speed_up,
	start_stop => start_stop
	);

-- clk
t_prcs_clk: PROCESS
BEGIN
LOOP
	clk <= '0';
	WAIT FOR 500 ps;
	clk <= '1';
	WAIT FOR 500 ps;
	IF (NOW >= 10000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_clk;

-- start_stop
t_prcs_start_stop: PROCESS
BEGIN
	start_stop <= '1';
	WAIT FOR 320000 ps;
	start_stop <= '0';
	WAIT FOR 160000 ps;
	start_stop <= '1';
WAIT;
END PROCESS t_prcs_start_stop;

-- speed_up
t_prcs_speed_up: PROCESS
BEGIN
	speed_up <= '1';
	WAIT FOR 560000 ps;
	speed_up <= '0';
	WAIT FOR 80000 ps;
	speed_up <= '1';
	WAIT FOR 160000 ps;
	speed_up <= '0';
	WAIT FOR 160000 ps;
	speed_up <= '1';
	WAIT FOR 160000 ps;
	speed_up <= '0';
	WAIT FOR 160000 ps;
	speed_up <= '1';
	WAIT FOR 5680000 ps;
	speed_up <= '0';
	WAIT FOR 80000 ps;
	speed_up <= '1';
WAIT;
END PROCESS t_prcs_speed_up;

-- speed_down
t_prcs_speed_down: PROCESS
BEGIN
	speed_down <= '1';
WAIT;
END PROCESS t_prcs_speed_down;

-- brightness
t_prcs_brightness: PROCESS
BEGIN
	brightness <= '1';
	WAIT FOR 720000 ps;
	brightness <= '0';
	WAIT FOR 80000 ps;
	brightness <= '1';
	WAIT FOR 1040000 ps;
	brightness <= '0';
	WAIT FOR 160000 ps;
	brightness <= '1';
	WAIT FOR 1040000 ps;
	brightness <= '0';
	WAIT FOR 160000 ps;
	brightness <= '1';
	WAIT FOR 1120000 ps;
	brightness <= '0';
	WAIT FOR 160000 ps;
	brightness <= '1';
WAIT;
END PROCESS t_prcs_brightness;
END motorfive_arch;
