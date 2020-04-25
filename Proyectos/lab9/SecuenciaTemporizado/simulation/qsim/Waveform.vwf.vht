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
-- Generated on "04/25/2020 20:59:39"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          secuencia
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY secuencia_vhd_vec_tst IS
END secuencia_vhd_vec_tst;
ARCHITECTURE secuencia_arch OF secuencia_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clk : STD_LOGIC;
SIGNAL en : STD_LOGIC;
SIGNAL resetn : STD_LOGIC;
SIGNAL z : STD_LOGIC_VECTOR(0 TO 3);
COMPONENT secuencia
	PORT (
	clk : IN STD_LOGIC;
	en : IN STD_LOGIC;
	resetn : IN STD_LOGIC;
	z : OUT STD_LOGIC_VECTOR(0 TO 3)
	);
END COMPONENT;
BEGIN
	i1 : secuencia
	PORT MAP (
-- list connections between master ports and signals
	clk => clk,
	en => en,
	resetn => resetn,
	z => z
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
	WAIT FOR 180000 ps;
	en <= '0';
	WAIT FOR 20000 ps;
	en <= '1';
	WAIT FOR 160000 ps;
	en <= '0';
	WAIT FOR 20000 ps;
	en <= '1';
WAIT;
END PROCESS t_prcs_en;

-- resetn
t_prcs_resetn: PROCESS
BEGIN
	resetn <= '1';
	WAIT FOR 240000 ps;
	resetn <= '0';
	WAIT FOR 20000 ps;
	resetn <= '1';
WAIT;
END PROCESS t_prcs_resetn;
END secuencia_arch;
