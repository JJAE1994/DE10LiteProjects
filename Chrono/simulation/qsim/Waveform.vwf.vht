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
-- Generated on "11/19/2021 18:01:28"
                                                             
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
SIGNAL clock : STD_LOGIC;
SIGNAL DM : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL DS : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL UM : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL US : STD_LOGIC_VECTOR(3 DOWNTO 0);
COMPONENT Chrono
	PORT (
	clock : IN STD_LOGIC;
	DM : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	DS : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	UM : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	US : OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : Chrono
	PORT MAP (
-- list connections between master ports and signals
	clock => clock,
	DM => DM,
	DS => DS,
	UM => UM,
	US => US
	);

-- clock
t_prcs_clock: PROCESS
BEGIN
LOOP
	clock <= '0';
	WAIT FOR 25000 ps;
	clock <= '1';
	WAIT FOR 25000 ps;
	IF (NOW >= 20000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_clock;
END Chrono_arch;
