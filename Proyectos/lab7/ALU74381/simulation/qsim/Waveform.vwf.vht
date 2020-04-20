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
-- Generated on "04/20/2020 10:02:07"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          lab7
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY lab7_vhd_vec_tst IS
END lab7_vhd_vec_tst;
ARCHITECTURE lab7_arch OF lab7_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL DIP_SW : STD_LOGIC_VECTOR(1 TO 8);
SIGNAL DISP : STD_LOGIC_VECTOR(1 TO 7);
SIGNAL KEY_EX : STD_LOGIC_VECTOR(0 TO 1);
SIGNAL LED : STD_LOGIC_VECTOR(0 TO 3);
SIGNAL SW : STD_LOGIC_VECTOR(0 TO 2);
COMPONENT lab7
	PORT (
	DIP_SW : IN STD_LOGIC_VECTOR(1 TO 8);
	DISP : BUFFER STD_LOGIC_VECTOR(1 TO 7);
	KEY_EX : IN STD_LOGIC_VECTOR(0 TO 1);
	LED : BUFFER STD_LOGIC_VECTOR(0 TO 3);
	SW : IN STD_LOGIC_VECTOR(0 TO 2)
	);
END COMPONENT;
BEGIN
	i1 : lab7
	PORT MAP (
-- list connections between master ports and signals
	DIP_SW => DIP_SW,
	DISP => DISP,
	KEY_EX => KEY_EX,
	LED => LED,
	SW => SW
	);

-- DIP_SW[1]
t_prcs_DIP_SW_1: PROCESS
BEGIN
	DIP_SW(1) <= '0';
WAIT;
END PROCESS t_prcs_DIP_SW_1;

-- DIP_SW[2]
t_prcs_DIP_SW_2: PROCESS
BEGIN
	DIP_SW(2) <= '1';
WAIT;
END PROCESS t_prcs_DIP_SW_2;

-- DIP_SW[3]
t_prcs_DIP_SW_3: PROCESS
BEGIN
	DIP_SW(3) <= '1';
WAIT;
END PROCESS t_prcs_DIP_SW_3;

-- DIP_SW[4]
t_prcs_DIP_SW_4: PROCESS
BEGIN
	DIP_SW(4) <= '0';
WAIT;
END PROCESS t_prcs_DIP_SW_4;

-- DIP_SW[5]
t_prcs_DIP_SW_5: PROCESS
BEGIN
	DIP_SW(5) <= '0';
WAIT;
END PROCESS t_prcs_DIP_SW_5;

-- DIP_SW[6]
t_prcs_DIP_SW_6: PROCESS
BEGIN
	DIP_SW(6) <= '0';
WAIT;
END PROCESS t_prcs_DIP_SW_6;

-- DIP_SW[7]
t_prcs_DIP_SW_7: PROCESS
BEGIN
	DIP_SW(7) <= '1';
WAIT;
END PROCESS t_prcs_DIP_SW_7;

-- DIP_SW[8]
t_prcs_DIP_SW_8: PROCESS
BEGIN
	DIP_SW(8) <= '1';
WAIT;
END PROCESS t_prcs_DIP_SW_8;

-- KEY_EX[0]
t_prcs_KEY_EX_0: PROCESS
BEGIN
	KEY_EX(0) <= '0';
	WAIT FOR 160000 ps;
	KEY_EX(0) <= '1';
	WAIT FOR 160000 ps;
	KEY_EX(0) <= '0';
WAIT;
END PROCESS t_prcs_KEY_EX_0;

-- KEY_EX[1]
t_prcs_KEY_EX_1: PROCESS
BEGIN
LOOP
	KEY_EX(1) <= '0';
	WAIT FOR 80000 ps;
	KEY_EX(1) <= '1';
	WAIT FOR 80000 ps;
	IF (NOW >= 480000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_KEY_EX_1;

-- SW[0]
t_prcs_SW_0: PROCESS
BEGIN
LOOP
	SW(0) <= '0';
	WAIT FOR 40000 ps;
	SW(0) <= '1';
	WAIT FOR 40000 ps;
	IF (NOW >= 480000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_SW_0;

-- SW[1]
t_prcs_SW_1: PROCESS
BEGIN
LOOP
	SW(1) <= '0';
	WAIT FOR 20000 ps;
	SW(1) <= '1';
	WAIT FOR 20000 ps;
	IF (NOW >= 480000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_SW_1;

-- SW[2]
t_prcs_SW_2: PROCESS
BEGIN
LOOP
	SW(2) <= '0';
	WAIT FOR 10000 ps;
	SW(2) <= '1';
	WAIT FOR 10000 ps;
	IF (NOW >= 480000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_SW_2;
END lab7_arch;
