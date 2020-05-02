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
-- Generated on "05/02/2020 13:04:39"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          contador_bidireccional
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY contador_bidireccional_vhd_vec_tst IS
END contador_bidireccional_vhd_vec_tst;
ARCHITECTURE contador_bidireccional_arch OF contador_bidireccional_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clk : STD_LOGIC;
SIGNAL cout : STD_LOGIC;
SIGNAL down : STD_LOGIC;
SIGNAL en : STD_LOGIC;
SIGNAL ld : STD_LOGIC;
SIGNAL max : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL Q : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL R : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL resetn : STD_LOGIC;
COMPONENT contador_bidireccional
	PORT (
	clk : IN STD_LOGIC;
	cout : BUFFER STD_LOGIC;
	down : IN STD_LOGIC;
	en : IN STD_LOGIC;
	ld : IN STD_LOGIC;
	max : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	Q : BUFFER STD_LOGIC_VECTOR(3 DOWNTO 0);
	R : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	resetn : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : contador_bidireccional
	PORT MAP (
-- list connections between master ports and signals
	clk => clk,
	cout => cout,
	down => down,
	en => en,
	ld => ld,
	max => max,
	Q => Q,
	R => R,
	resetn => resetn
	);

-- clk
t_prcs_clk: PROCESS
BEGIN
	clk <= '1';
	WAIT FOR 10000 ps;
	FOR i IN 1 TO 23
	LOOP
		clk <= '0';
		WAIT FOR 10000 ps;
		clk <= '1';
		WAIT FOR 10000 ps;
	END LOOP;
	clk <= '0';
WAIT;
END PROCESS t_prcs_clk;

-- en
t_prcs_en: PROCESS
BEGIN
	en <= '1';
WAIT;
END PROCESS t_prcs_en;

-- resetn
t_prcs_resetn: PROCESS
BEGIN
	resetn <= '1';
	WAIT FOR 60000 ps;
	resetn <= '0';
	WAIT FOR 20000 ps;
	resetn <= '1';
WAIT;
END PROCESS t_prcs_resetn;

-- down
t_prcs_down: PROCESS
BEGIN
LOOP
	down <= '0';
	WAIT FOR 240000 ps;
	down <= '1';
	WAIT FOR 240000 ps;
	IF (NOW >= 480000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_down;

-- ld
t_prcs_ld: PROCESS
BEGIN
	ld <= '0';
	WAIT FOR 100000 ps;
	ld <= '1';
	WAIT FOR 20000 ps;
	ld <= '0';
	WAIT FOR 320000 ps;
	ld <= '1';
	WAIT FOR 20000 ps;
	ld <= '0';
WAIT;
END PROCESS t_prcs_ld;

-- R[3]
t_prcs_R_3: PROCESS
BEGIN
	R(3) <= '0';
WAIT;
END PROCESS t_prcs_R_3;

-- R[2]
t_prcs_R_2: PROCESS
BEGIN
	R(2) <= '1';
WAIT;
END PROCESS t_prcs_R_2;

-- R[1]
t_prcs_R_1: PROCESS
BEGIN
	R(1) <= '0';
WAIT;
END PROCESS t_prcs_R_1;

-- R[0]
t_prcs_R_0: PROCESS
BEGIN
	R(0) <= '1';
WAIT;
END PROCESS t_prcs_R_0;

-- max[0]
t_prcs_max_0: PROCESS
BEGIN
	max(0) <= '1';
WAIT;
END PROCESS t_prcs_max_0;

-- max[1]
t_prcs_max_1: PROCESS
BEGIN
	max(1) <= '0';
WAIT;
END PROCESS t_prcs_max_1;

-- max[2]
t_prcs_max_2: PROCESS
BEGIN
	max(2) <= '0';
WAIT;
END PROCESS t_prcs_max_2;

-- max[3]
t_prcs_max_3: PROCESS
BEGIN
	max(3) <= '1';
WAIT;
END PROCESS t_prcs_max_3;
END contador_bidireccional_arch;
