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
-- Generated on "11/24/2022 15:44:16"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          BTCar
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY BTCar_vhd_vec_tst IS
END BTCar_vhd_vec_tst;
ARCHITECTURE BTCar_arch OF BTCar_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clk : STD_LOGIC;
SIGNAL enable_d : STD_LOGIC;
SIGNAL enable_i : STD_LOGIC;
SIGNAL in1 : STD_LOGIC;
SIGNAL in2 : STD_LOGIC;
SIGNAL in3 : STD_LOGIC;
SIGNAL in4 : STD_LOGIC;
SIGNAL rx : STD_LOGIC;
COMPONENT BTCar
	PORT (
	clk : IN STD_LOGIC;
	enable_d : OUT STD_LOGIC;
	enable_i : OUT STD_LOGIC;
	in1 : OUT STD_LOGIC;
	in2 : OUT STD_LOGIC;
	in3 : OUT STD_LOGIC;
	in4 : OUT STD_LOGIC;
	rx : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : BTCar
	PORT MAP (
-- list connections between master ports and signals
	clk => clk,
	enable_d => enable_d,
	enable_i => enable_i,
	in1 => in1,
	in2 => in2,
	in3 => in3,
	in4 => in4,
	rx => rx
	);

-- clk
t_prcs_clk: PROCESS
BEGIN
LOOP
	clk <= '0';
	WAIT FOR 5000 ps;
	clk <= '1';
	WAIT FOR 5000 ps;
	IF (NOW >= 10000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_clk;

-- rx
t_prcs_rx: PROCESS
BEGIN
	rx <= '1';
	WAIT FOR 40000 ps;
	rx <= '0';
	WAIT FOR 50000 ps;
	rx <= '1';
	WAIT FOR 590000 ps;
	rx <= '0';
	WAIT FOR 40000 ps;
	rx <= '1';
WAIT;
END PROCESS t_prcs_rx;
END BTCar_arch;
