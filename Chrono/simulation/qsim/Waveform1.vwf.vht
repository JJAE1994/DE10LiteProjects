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
-- Generated on "11/21/2021 17:42:27"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          Chrono
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY Chrono_vhd_vec_tst IS
END Chrono_vhd_vec_tst;
ARCHITECTURE Chrono_arch OF Chrono_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clock_mux : STD_LOGIC;
SIGNAL clock_p : STD_LOGIC;
SIGNAL hab_DM : STD_LOGIC;
SIGNAL hab_DS : STD_LOGIC;
SIGNAL hab_UM : STD_LOGIC;
SIGNAL hab_US : STD_LOGIC;
SIGNAL sevendisp : STD_LOGIC_VECTOR(7 DOWNTO 0);
COMPONENT Chrono
	PORT (
	clock_mux : IN STD_LOGIC;
	clock_p : IN STD_LOGIC;
	hab_DM : OUT STD_LOGIC;
	hab_DS : OUT STD_LOGIC;
	hab_UM : OUT STD_LOGIC;
	hab_US : OUT STD_LOGIC;
	sevendisp : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : Chrono
	PORT MAP (
-- list connections between master ports and signals
	clock_mux => clock_mux,
	clock_p => clock_p,
	hab_DM => hab_DM,
	hab_DS => hab_DS,
	hab_UM => hab_UM,
	hab_US => hab_US,
	sevendisp => sevendisp
	);

-- clock_mux
t_prcs_clock_mux: PROCESS
BEGIN
LOOP
	clock_mux <= '0';
	WAIT FOR 50000 ps;
	clock_mux <= '1';
	WAIT FOR 50000 ps;
	IF (NOW >= 50000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_clock_mux;

-- clock_p
t_prcs_clock_p: PROCESS
BEGIN
LOOP
	clock_p <= '0';
	WAIT FOR 250000 ps;
	clock_p <= '1';
	WAIT FOR 250000 ps;
	IF (NOW >= 50000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_clock_p;
END Chrono_arch;
