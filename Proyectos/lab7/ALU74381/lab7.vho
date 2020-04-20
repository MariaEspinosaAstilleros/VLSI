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

-- DATE "04/20/2020 09:43:11"

-- 
-- Device: Altera EP4CE22F17C6 Package FBGA256
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_C1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_D2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_H1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_H2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_F16,	 I/O Standard: 2.5 V,	 Current Strength: 8mA


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~padout\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~padout\ : std_logic;
SIGNAL \~ALTERA_DATA0~~padout\ : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_DATA0~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	lab7 IS
    PORT (
	DIP_SW : IN std_logic_vector(1 TO 8);
	SW : IN std_logic_vector(0 TO 2);
	KEY_EX : IN std_logic_vector(0 TO 1);
	LED : BUFFER std_logic_vector(0 TO 3);
	DISP : BUFFER std_logic_vector(1 TO 7)
	);
END lab7;

-- Design Ports Information
-- LED[3]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED[2]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED[1]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED[0]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DISP[7]	=>  Location: PIN_R14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DISP[6]	=>  Location: PIN_P15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DISP[5]	=>  Location: PIN_R16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DISP[4]	=>  Location: PIN_L16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DISP[3]	=>  Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DISP[2]	=>  Location: PIN_T10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DISP[1]	=>  Location: PIN_P11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DIP_SW[4]	=>  Location: PIN_K16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY_EX[0]	=>  Location: PIN_J14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DIP_SW[8]	=>  Location: PIN_R11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY_EX[1]	=>  Location: PIN_K15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_T8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_B9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_M1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DIP_SW[7]	=>  Location: PIN_R10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DIP_SW[3]	=>  Location: PIN_L15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DIP_SW[2]	=>  Location: PIN_P16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DIP_SW[6]	=>  Location: PIN_P9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DIP_SW[1]	=>  Location: PIN_N16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DIP_SW[5]	=>  Location: PIN_N11,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF lab7 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_DIP_SW : std_logic_vector(1 TO 8);
SIGNAL ww_SW : std_logic_vector(0 TO 2);
SIGNAL ww_KEY_EX : std_logic_vector(0 TO 1);
SIGNAL ww_LED : std_logic_vector(0 TO 3);
SIGNAL ww_DISP : std_logic_vector(1 TO 7);
SIGNAL \LED[3]~output_o\ : std_logic;
SIGNAL \LED[2]~output_o\ : std_logic;
SIGNAL \LED[1]~output_o\ : std_logic;
SIGNAL \LED[0]~output_o\ : std_logic;
SIGNAL \DISP[7]~output_o\ : std_logic;
SIGNAL \DISP[6]~output_o\ : std_logic;
SIGNAL \DISP[5]~output_o\ : std_logic;
SIGNAL \DISP[4]~output_o\ : std_logic;
SIGNAL \DISP[3]~output_o\ : std_logic;
SIGNAL \DISP[2]~output_o\ : std_logic;
SIGNAL \DISP[1]~output_o\ : std_logic;
SIGNAL \DIP_SW[4]~input_o\ : std_logic;
SIGNAL \DIP_SW[8]~input_o\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \Mux3~3_combout\ : std_logic;
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \Mux3~1_combout\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \a|F~0_combout\ : std_logic;
SIGNAL \a|Add0~7_combout\ : std_logic;
SIGNAL \a|Add0~6_combout\ : std_logic;
SIGNAL \a|Add0~9_cout\ : std_logic;
SIGNAL \a|Add0~10_combout\ : std_logic;
SIGNAL \a|Add0~24_combout\ : std_logic;
SIGNAL \Mux3~2_combout\ : std_logic;
SIGNAL \Mux3~4_combout\ : std_logic;
SIGNAL \KEY_EX[1]~input_o\ : std_logic;
SIGNAL \KEY_EX[0]~input_o\ : std_logic;
SIGNAL \Mux3~5_combout\ : std_logic;
SIGNAL \Mux3~6_combout\ : std_logic;
SIGNAL \DIP_SW[7]~input_o\ : std_logic;
SIGNAL \DIP_SW[3]~input_o\ : std_logic;
SIGNAL \a|F~1_combout\ : std_logic;
SIGNAL \a|Add0~12_combout\ : std_logic;
SIGNAL \a|Add0~13_combout\ : std_logic;
SIGNAL \a|Add0~11\ : std_logic;
SIGNAL \a|Add0~14_combout\ : std_logic;
SIGNAL \a|Add0~25_combout\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \Mux2~1_combout\ : std_logic;
SIGNAL \Mux2~2_combout\ : std_logic;
SIGNAL \Mux2~3_combout\ : std_logic;
SIGNAL \DIP_SW[2]~input_o\ : std_logic;
SIGNAL \DIP_SW[6]~input_o\ : std_logic;
SIGNAL \a|F~2_combout\ : std_logic;
SIGNAL \a|Add0~17_combout\ : std_logic;
SIGNAL \a|Add0~16_combout\ : std_logic;
SIGNAL \a|Add0~15\ : std_logic;
SIGNAL \a|Add0~18_combout\ : std_logic;
SIGNAL \a|Add0~26_combout\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \Mux1~1_combout\ : std_logic;
SIGNAL \Mux1~2_combout\ : std_logic;
SIGNAL \Mux1~3_combout\ : std_logic;
SIGNAL \DIP_SW[5]~input_o\ : std_logic;
SIGNAL \a|Add0~21_combout\ : std_logic;
SIGNAL \DIP_SW[1]~input_o\ : std_logic;
SIGNAL \a|Add0~20_combout\ : std_logic;
SIGNAL \a|Add0~19\ : std_logic;
SIGNAL \a|Add0~22_combout\ : std_logic;
SIGNAL \a|Mux0~1_combout\ : std_logic;
SIGNAL \a|Mux0~0_combout\ : std_logic;
SIGNAL \a|Mux0~2_combout\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \Mux0~1_combout\ : std_logic;
SIGNAL \d|Mux6~0_combout\ : std_logic;
SIGNAL \d|Mux5~0_combout\ : std_logic;
SIGNAL \d|Mux4~0_combout\ : std_logic;
SIGNAL \d|Mux3~0_combout\ : std_logic;
SIGNAL \d|Mux2~0_combout\ : std_logic;
SIGNAL \d|Mux1~0_combout\ : std_logic;
SIGNAL \d|Mux0~0_combout\ : std_logic;
SIGNAL \d|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \d|ALT_INV_Mux1~0_combout\ : std_logic;
SIGNAL \d|ALT_INV_Mux2~0_combout\ : std_logic;
SIGNAL \d|ALT_INV_Mux3~0_combout\ : std_logic;
SIGNAL \d|ALT_INV_Mux4~0_combout\ : std_logic;
SIGNAL \d|ALT_INV_Mux5~0_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_DIP_SW <= DIP_SW;
ww_SW <= SW;
ww_KEY_EX <= KEY_EX;
LED <= ww_LED;
DISP <= ww_DISP;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\d|ALT_INV_Mux0~0_combout\ <= NOT \d|Mux0~0_combout\;
\d|ALT_INV_Mux1~0_combout\ <= NOT \d|Mux1~0_combout\;
\d|ALT_INV_Mux2~0_combout\ <= NOT \d|Mux2~0_combout\;
\d|ALT_INV_Mux3~0_combout\ <= NOT \d|Mux3~0_combout\;
\d|ALT_INV_Mux4~0_combout\ <= NOT \d|Mux4~0_combout\;
\d|ALT_INV_Mux5~0_combout\ <= NOT \d|Mux5~0_combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X40_Y34_N2
\LED[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux3~6_combout\,
	devoe => ww_devoe,
	o => \LED[3]~output_o\);

-- Location: IOOBUF_X49_Y34_N9
\LED[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux2~3_combout\,
	devoe => ww_devoe,
	o => \LED[2]~output_o\);

-- Location: IOOBUF_X49_Y34_N2
\LED[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux1~3_combout\,
	devoe => ww_devoe,
	o => \LED[1]~output_o\);

-- Location: IOOBUF_X38_Y34_N16
\LED[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux0~1_combout\,
	devoe => ww_devoe,
	o => \LED[0]~output_o\);

-- Location: IOOBUF_X49_Y0_N2
\DISP[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \d|Mux6~0_combout\,
	devoe => ww_devoe,
	o => \DISP[7]~output_o\);

-- Location: IOOBUF_X53_Y6_N16
\DISP[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \d|ALT_INV_Mux5~0_combout\,
	devoe => ww_devoe,
	o => \DISP[6]~output_o\);

-- Location: IOOBUF_X53_Y8_N23
\DISP[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \d|ALT_INV_Mux4~0_combout\,
	devoe => ww_devoe,
	o => \DISP[5]~output_o\);

-- Location: IOOBUF_X53_Y11_N9
\DISP[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \d|ALT_INV_Mux3~0_combout\,
	devoe => ww_devoe,
	o => \DISP[4]~output_o\);

-- Location: IOOBUF_X29_Y0_N2
\DISP[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \d|ALT_INV_Mux2~0_combout\,
	devoe => ww_devoe,
	o => \DISP[3]~output_o\);

-- Location: IOOBUF_X34_Y0_N16
\DISP[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \d|ALT_INV_Mux1~0_combout\,
	devoe => ww_devoe,
	o => \DISP[2]~output_o\);

-- Location: IOOBUF_X38_Y0_N2
\DISP[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \d|ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => \DISP[1]~output_o\);

-- Location: IOIBUF_X53_Y12_N1
\DIP_SW[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DIP_SW(4),
	o => \DIP_SW[4]~input_o\);

-- Location: IOIBUF_X34_Y0_N1
\DIP_SW[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DIP_SW(8),
	o => \DIP_SW[8]~input_o\);

-- Location: IOIBUF_X0_Y16_N22
\SW[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(0),
	o => \SW[0]~input_o\);

-- Location: IOIBUF_X27_Y0_N15
\SW[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(1),
	o => \SW[1]~input_o\);

-- Location: LCCOMB_X44_Y11_N0
\Mux3~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~3_combout\ = (\SW[1]~input_o\) # (!\SW[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datad => \SW[1]~input_o\,
	combout => \Mux3~3_combout\);

-- Location: IOIBUF_X25_Y34_N8
\SW[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(2),
	o => \SW[2]~input_o\);

-- Location: LCCOMB_X44_Y11_N12
\Mux3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~1_combout\ = (\SW[0]~input_o\ & ((\SW[2]~input_o\) # (\SW[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datac => \SW[2]~input_o\,
	datad => \SW[1]~input_o\,
	combout => \Mux3~1_combout\);

-- Location: LCCOMB_X44_Y11_N2
\Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = ((!\SW[2]~input_o\ & \SW[1]~input_o\)) # (!\SW[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datac => \SW[2]~input_o\,
	datad => \SW[1]~input_o\,
	combout => \Mux3~0_combout\);

-- Location: LCCOMB_X44_Y11_N8
\a|F~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \a|F~0_combout\ = (\DIP_SW[4]~input_o\ & \DIP_SW[8]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DIP_SW[4]~input_o\,
	datac => \DIP_SW[8]~input_o\,
	combout => \a|F~0_combout\);

-- Location: LCCOMB_X41_Y8_N10
\a|Add0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \a|Add0~7_combout\ = \SW[2]~input_o\ $ (\DIP_SW[8]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW[2]~input_o\,
	datad => \DIP_SW[8]~input_o\,
	combout => \a|Add0~7_combout\);

-- Location: LCCOMB_X41_Y8_N0
\a|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \a|Add0~6_combout\ = \SW[1]~input_o\ $ (\DIP_SW[4]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW[1]~input_o\,
	datad => \DIP_SW[4]~input_o\,
	combout => \a|Add0~6_combout\);

-- Location: LCCOMB_X41_Y8_N16
\a|Add0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \a|Add0~9_cout\ = CARRY((!\SW[1]~input_o\) # (!\SW[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datab => \SW[1]~input_o\,
	datad => VCC,
	cout => \a|Add0~9_cout\);

-- Location: LCCOMB_X41_Y8_N18
\a|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \a|Add0~10_combout\ = (\a|Add0~7_combout\ & ((\a|Add0~6_combout\ & ((\a|Add0~9_cout\) # (GND))) # (!\a|Add0~6_combout\ & (!\a|Add0~9_cout\)))) # (!\a|Add0~7_combout\ & ((\a|Add0~6_combout\ & (!\a|Add0~9_cout\)) # (!\a|Add0~6_combout\ & (\a|Add0~9_cout\ & 
-- VCC))))
-- \a|Add0~11\ = CARRY((\a|Add0~7_combout\ & ((\a|Add0~6_combout\) # (!\a|Add0~9_cout\))) # (!\a|Add0~7_combout\ & (\a|Add0~6_combout\ & !\a|Add0~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a|Add0~7_combout\,
	datab => \a|Add0~6_combout\,
	datad => VCC,
	cin => \a|Add0~9_cout\,
	combout => \a|Add0~10_combout\,
	cout => \a|Add0~11\);

-- Location: LCCOMB_X44_Y11_N18
\a|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \a|Add0~24_combout\ = (\a|Add0~10_combout\ & ((\SW[1]~input_o\) # (\SW[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datac => \SW[2]~input_o\,
	datad => \a|Add0~10_combout\,
	combout => \a|Add0~24_combout\);

-- Location: LCCOMB_X44_Y11_N6
\Mux3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~2_combout\ = (\Mux3~1_combout\ & (((\a|F~0_combout\)) # (!\Mux3~0_combout\))) # (!\Mux3~1_combout\ & (\Mux3~0_combout\ & ((\a|Add0~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux3~1_combout\,
	datab => \Mux3~0_combout\,
	datac => \a|F~0_combout\,
	datad => \a|Add0~24_combout\,
	combout => \Mux3~2_combout\);

-- Location: LCCOMB_X44_Y11_N26
\Mux3~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~4_combout\ = (\Mux3~3_combout\ & (((\Mux3~2_combout\)))) # (!\Mux3~3_combout\ & ((\DIP_SW[8]~input_o\ & ((\Mux3~2_combout\) # (!\DIP_SW[4]~input_o\))) # (!\DIP_SW[8]~input_o\ & (\DIP_SW[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DIP_SW[8]~input_o\,
	datab => \Mux3~3_combout\,
	datac => \DIP_SW[4]~input_o\,
	datad => \Mux3~2_combout\,
	combout => \Mux3~4_combout\);

-- Location: IOIBUF_X53_Y13_N8
\KEY_EX[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY_EX(1),
	o => \KEY_EX[1]~input_o\);

-- Location: IOIBUF_X53_Y15_N8
\KEY_EX[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY_EX(0),
	o => \KEY_EX[0]~input_o\);

-- Location: LCCOMB_X44_Y11_N4
\Mux3~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~5_combout\ = (\KEY_EX[1]~input_o\ & (((\DIP_SW[8]~input_o\) # (\KEY_EX[0]~input_o\)))) # (!\KEY_EX[1]~input_o\ & (\Mux3~4_combout\ & ((!\KEY_EX[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux3~4_combout\,
	datab => \DIP_SW[8]~input_o\,
	datac => \KEY_EX[1]~input_o\,
	datad => \KEY_EX[0]~input_o\,
	combout => \Mux3~5_combout\);

-- Location: LCCOMB_X44_Y11_N22
\Mux3~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~6_combout\ = (\Mux3~5_combout\ & (((\SW[2]~input_o\) # (!\KEY_EX[0]~input_o\)))) # (!\Mux3~5_combout\ & (\DIP_SW[4]~input_o\ & ((\KEY_EX[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DIP_SW[4]~input_o\,
	datab => \Mux3~5_combout\,
	datac => \SW[2]~input_o\,
	datad => \KEY_EX[0]~input_o\,
	combout => \Mux3~6_combout\);

-- Location: IOIBUF_X34_Y0_N22
\DIP_SW[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DIP_SW(7),
	o => \DIP_SW[7]~input_o\);

-- Location: IOIBUF_X53_Y11_N1
\DIP_SW[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DIP_SW(3),
	o => \DIP_SW[3]~input_o\);

-- Location: LCCOMB_X41_Y10_N24
\a|F~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \a|F~1_combout\ = (\DIP_SW[7]~input_o\ & \DIP_SW[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DIP_SW[7]~input_o\,
	datad => \DIP_SW[3]~input_o\,
	combout => \a|F~1_combout\);

-- Location: LCCOMB_X41_Y10_N26
\a|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \a|Add0~12_combout\ = \SW[1]~input_o\ $ (\DIP_SW[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW[1]~input_o\,
	datad => \DIP_SW[3]~input_o\,
	combout => \a|Add0~12_combout\);

-- Location: LCCOMB_X41_Y8_N14
\a|Add0~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \a|Add0~13_combout\ = \SW[2]~input_o\ $ (\DIP_SW[7]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW[2]~input_o\,
	datad => \DIP_SW[7]~input_o\,
	combout => \a|Add0~13_combout\);

-- Location: LCCOMB_X41_Y8_N20
\a|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \a|Add0~14_combout\ = ((\a|Add0~12_combout\ $ (\a|Add0~13_combout\ $ (!\a|Add0~11\)))) # (GND)
-- \a|Add0~15\ = CARRY((\a|Add0~12_combout\ & (!\a|Add0~13_combout\ & !\a|Add0~11\)) # (!\a|Add0~12_combout\ & ((!\a|Add0~11\) # (!\a|Add0~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a|Add0~12_combout\,
	datab => \a|Add0~13_combout\,
	datad => VCC,
	cin => \a|Add0~11\,
	combout => \a|Add0~14_combout\,
	cout => \a|Add0~15\);

-- Location: LCCOMB_X41_Y8_N30
\a|Add0~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \a|Add0~25_combout\ = (\a|Add0~14_combout\ & ((\SW[1]~input_o\) # (\SW[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[1]~input_o\,
	datac => \SW[2]~input_o\,
	datad => \a|Add0~14_combout\,
	combout => \a|Add0~25_combout\);

-- Location: LCCOMB_X41_Y10_N28
\Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = (\Mux3~1_combout\ & ((\a|F~1_combout\) # ((!\Mux3~0_combout\)))) # (!\Mux3~1_combout\ & (((\a|Add0~25_combout\ & \Mux3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux3~1_combout\,
	datab => \a|F~1_combout\,
	datac => \a|Add0~25_combout\,
	datad => \Mux3~0_combout\,
	combout => \Mux2~0_combout\);

-- Location: LCCOMB_X41_Y10_N6
\Mux2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~1_combout\ = (\Mux3~3_combout\ & (((\Mux2~0_combout\)))) # (!\Mux3~3_combout\ & ((\DIP_SW[7]~input_o\ & ((\Mux2~0_combout\) # (!\DIP_SW[3]~input_o\))) # (!\DIP_SW[7]~input_o\ & ((\DIP_SW[3]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DIP_SW[7]~input_o\,
	datab => \Mux2~0_combout\,
	datac => \Mux3~3_combout\,
	datad => \DIP_SW[3]~input_o\,
	combout => \Mux2~1_combout\);

-- Location: LCCOMB_X41_Y10_N0
\Mux2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~2_combout\ = (\KEY_EX[1]~input_o\ & (((\KEY_EX[0]~input_o\)))) # (!\KEY_EX[1]~input_o\ & ((\KEY_EX[0]~input_o\ & ((\DIP_SW[3]~input_o\))) # (!\KEY_EX[0]~input_o\ & (\Mux2~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~1_combout\,
	datab => \DIP_SW[3]~input_o\,
	datac => \KEY_EX[1]~input_o\,
	datad => \KEY_EX[0]~input_o\,
	combout => \Mux2~2_combout\);

-- Location: LCCOMB_X41_Y10_N10
\Mux2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~3_combout\ = (\Mux2~2_combout\ & ((\SW[1]~input_o\) # ((!\KEY_EX[1]~input_o\)))) # (!\Mux2~2_combout\ & (((\KEY_EX[1]~input_o\ & \DIP_SW[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \Mux2~2_combout\,
	datac => \KEY_EX[1]~input_o\,
	datad => \DIP_SW[7]~input_o\,
	combout => \Mux2~3_combout\);

-- Location: IOIBUF_X53_Y7_N8
\DIP_SW[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DIP_SW(2),
	o => \DIP_SW[2]~input_o\);

-- Location: IOIBUF_X38_Y0_N8
\DIP_SW[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DIP_SW(6),
	o => \DIP_SW[6]~input_o\);

-- Location: LCCOMB_X44_Y11_N24
\a|F~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \a|F~2_combout\ = (\DIP_SW[6]~input_o\ & \DIP_SW[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DIP_SW[6]~input_o\,
	datad => \DIP_SW[2]~input_o\,
	combout => \a|F~2_combout\);

-- Location: LCCOMB_X41_Y8_N26
\a|Add0~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \a|Add0~17_combout\ = \SW[2]~input_o\ $ (\DIP_SW[6]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW[2]~input_o\,
	datad => \DIP_SW[6]~input_o\,
	combout => \a|Add0~17_combout\);

-- Location: LCCOMB_X41_Y8_N8
\a|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \a|Add0~16_combout\ = \DIP_SW[2]~input_o\ $ (\SW[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DIP_SW[2]~input_o\,
	datac => \SW[1]~input_o\,
	combout => \a|Add0~16_combout\);

-- Location: LCCOMB_X41_Y8_N22
\a|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \a|Add0~18_combout\ = (\a|Add0~17_combout\ & ((\a|Add0~16_combout\ & ((\a|Add0~15\) # (GND))) # (!\a|Add0~16_combout\ & (!\a|Add0~15\)))) # (!\a|Add0~17_combout\ & ((\a|Add0~16_combout\ & (!\a|Add0~15\)) # (!\a|Add0~16_combout\ & (\a|Add0~15\ & VCC))))
-- \a|Add0~19\ = CARRY((\a|Add0~17_combout\ & ((\a|Add0~16_combout\) # (!\a|Add0~15\))) # (!\a|Add0~17_combout\ & (\a|Add0~16_combout\ & !\a|Add0~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a|Add0~17_combout\,
	datab => \a|Add0~16_combout\,
	datad => VCC,
	cin => \a|Add0~15\,
	combout => \a|Add0~18_combout\,
	cout => \a|Add0~19\);

-- Location: LCCOMB_X44_Y11_N20
\a|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \a|Add0~26_combout\ = (\a|Add0~18_combout\ & ((\SW[1]~input_o\) # (\SW[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datac => \SW[2]~input_o\,
	datad => \a|Add0~18_combout\,
	combout => \a|Add0~26_combout\);

-- Location: LCCOMB_X44_Y11_N10
\Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = (\Mux3~1_combout\ & ((\a|F~2_combout\) # ((!\Mux3~0_combout\)))) # (!\Mux3~1_combout\ & (((\Mux3~0_combout\ & \a|Add0~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux3~1_combout\,
	datab => \a|F~2_combout\,
	datac => \Mux3~0_combout\,
	datad => \a|Add0~26_combout\,
	combout => \Mux1~0_combout\);

-- Location: LCCOMB_X44_Y11_N28
\Mux1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~1_combout\ = (\Mux3~3_combout\ & (\Mux1~0_combout\)) # (!\Mux3~3_combout\ & ((\DIP_SW[6]~input_o\ & ((\Mux1~0_combout\) # (!\DIP_SW[2]~input_o\))) # (!\DIP_SW[6]~input_o\ & ((\DIP_SW[2]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux1~0_combout\,
	datab => \Mux3~3_combout\,
	datac => \DIP_SW[6]~input_o\,
	datad => \DIP_SW[2]~input_o\,
	combout => \Mux1~1_combout\);

-- Location: LCCOMB_X44_Y11_N30
\Mux1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~2_combout\ = (\KEY_EX[1]~input_o\ & (((\DIP_SW[6]~input_o\) # (\KEY_EX[0]~input_o\)))) # (!\KEY_EX[1]~input_o\ & (\Mux1~1_combout\ & ((!\KEY_EX[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY_EX[1]~input_o\,
	datab => \Mux1~1_combout\,
	datac => \DIP_SW[6]~input_o\,
	datad => \KEY_EX[0]~input_o\,
	combout => \Mux1~2_combout\);

-- Location: LCCOMB_X44_Y11_N16
\Mux1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~3_combout\ = (\Mux1~2_combout\ & ((\SW[0]~input_o\) # ((!\KEY_EX[0]~input_o\)))) # (!\Mux1~2_combout\ & (((\DIP_SW[2]~input_o\ & \KEY_EX[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \DIP_SW[2]~input_o\,
	datac => \Mux1~2_combout\,
	datad => \KEY_EX[0]~input_o\,
	combout => \Mux1~3_combout\);

-- Location: IOIBUF_X43_Y0_N15
\DIP_SW[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DIP_SW(5),
	o => \DIP_SW[5]~input_o\);

-- Location: LCCOMB_X41_Y8_N2
\a|Add0~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \a|Add0~21_combout\ = \SW[2]~input_o\ $ (\DIP_SW[5]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW[2]~input_o\,
	datad => \DIP_SW[5]~input_o\,
	combout => \a|Add0~21_combout\);

-- Location: IOIBUF_X53_Y9_N22
\DIP_SW[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DIP_SW(1),
	o => \DIP_SW[1]~input_o\);

-- Location: LCCOMB_X41_Y8_N6
\a|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \a|Add0~20_combout\ = \DIP_SW[1]~input_o\ $ (\SW[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DIP_SW[1]~input_o\,
	datac => \SW[1]~input_o\,
	combout => \a|Add0~20_combout\);

-- Location: LCCOMB_X41_Y8_N24
\a|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \a|Add0~22_combout\ = \a|Add0~21_combout\ $ (\a|Add0~19\ $ (!\a|Add0~20_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \a|Add0~21_combout\,
	datad => \a|Add0~20_combout\,
	cin => \a|Add0~19\,
	combout => \a|Add0~22_combout\);

-- Location: LCCOMB_X41_Y8_N4
\a|Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \a|Mux0~1_combout\ = (\DIP_SW[1]~input_o\ & ((\SW[2]~input_o\) # (\SW[1]~input_o\ $ (!\DIP_SW[5]~input_o\)))) # (!\DIP_SW[1]~input_o\ & ((\SW[1]~input_o\ & (\SW[2]~input_o\)) # (!\SW[1]~input_o\ & ((\DIP_SW[5]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datab => \SW[1]~input_o\,
	datac => \DIP_SW[1]~input_o\,
	datad => \DIP_SW[5]~input_o\,
	combout => \a|Mux0~1_combout\);

-- Location: LCCOMB_X41_Y8_N12
\a|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \a|Mux0~0_combout\ = (!\SW[1]~input_o\ & !\SW[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[1]~input_o\,
	datac => \SW[2]~input_o\,
	combout => \a|Mux0~0_combout\);

-- Location: LCCOMB_X41_Y8_N28
\a|Mux0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \a|Mux0~2_combout\ = (\SW[0]~input_o\ & (((\a|Mux0~1_combout\)))) # (!\SW[0]~input_o\ & (\a|Add0~22_combout\ & ((!\a|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \a|Add0~22_combout\,
	datac => \a|Mux0~1_combout\,
	datad => \a|Mux0~0_combout\,
	combout => \a|Mux0~2_combout\);

-- Location: LCCOMB_X41_Y10_N12
\Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = (!\KEY_EX[1]~input_o\ & ((\KEY_EX[0]~input_o\ & ((\DIP_SW[1]~input_o\))) # (!\KEY_EX[0]~input_o\ & (\a|Mux0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a|Mux0~2_combout\,
	datab => \KEY_EX[1]~input_o\,
	datac => \DIP_SW[1]~input_o\,
	datad => \KEY_EX[0]~input_o\,
	combout => \Mux0~0_combout\);

-- Location: LCCOMB_X41_Y10_N30
\Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~1_combout\ = (\Mux0~0_combout\) # ((\KEY_EX[1]~input_o\ & (\DIP_SW[5]~input_o\ & !\KEY_EX[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux0~0_combout\,
	datab => \KEY_EX[1]~input_o\,
	datac => \DIP_SW[5]~input_o\,
	datad => \KEY_EX[0]~input_o\,
	combout => \Mux0~1_combout\);

-- Location: LCCOMB_X45_Y5_N16
\d|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \d|Mux6~0_combout\ = (\Mux3~6_combout\ & ((\Mux0~1_combout\) # (\Mux2~3_combout\ $ (\Mux1~3_combout\)))) # (!\Mux3~6_combout\ & ((\Mux2~3_combout\) # (\Mux1~3_combout\ $ (\Mux0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011010111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~3_combout\,
	datab => \Mux1~3_combout\,
	datac => \Mux0~1_combout\,
	datad => \Mux3~6_combout\,
	combout => \d|Mux6~0_combout\);

-- Location: LCCOMB_X45_Y5_N2
\d|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \d|Mux5~0_combout\ = (\Mux2~3_combout\ & (!\Mux0~1_combout\ & ((\Mux3~6_combout\) # (!\Mux1~3_combout\)))) # (!\Mux2~3_combout\ & (\Mux3~6_combout\ & (\Mux1~3_combout\ $ (!\Mux0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~3_combout\,
	datab => \Mux1~3_combout\,
	datac => \Mux0~1_combout\,
	datad => \Mux3~6_combout\,
	combout => \d|Mux5~0_combout\);

-- Location: LCCOMB_X45_Y5_N28
\d|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \d|Mux4~0_combout\ = (\Mux2~3_combout\ & (((!\Mux0~1_combout\ & \Mux3~6_combout\)))) # (!\Mux2~3_combout\ & ((\Mux1~3_combout\ & (!\Mux0~1_combout\)) # (!\Mux1~3_combout\ & ((\Mux3~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~3_combout\,
	datab => \Mux1~3_combout\,
	datac => \Mux0~1_combout\,
	datad => \Mux3~6_combout\,
	combout => \d|Mux4~0_combout\);

-- Location: LCCOMB_X45_Y5_N30
\d|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \d|Mux3~0_combout\ = (\Mux2~3_combout\ & ((\Mux1~3_combout\ & ((\Mux3~6_combout\))) # (!\Mux1~3_combout\ & (\Mux0~1_combout\ & !\Mux3~6_combout\)))) # (!\Mux2~3_combout\ & (!\Mux0~1_combout\ & (\Mux1~3_combout\ $ (\Mux3~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100100100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~3_combout\,
	datab => \Mux1~3_combout\,
	datac => \Mux0~1_combout\,
	datad => \Mux3~6_combout\,
	combout => \d|Mux3~0_combout\);

-- Location: LCCOMB_X45_Y5_N24
\d|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \d|Mux2~0_combout\ = (\Mux1~3_combout\ & (\Mux0~1_combout\ & ((\Mux2~3_combout\) # (!\Mux3~6_combout\)))) # (!\Mux1~3_combout\ & (\Mux2~3_combout\ & (!\Mux0~1_combout\ & !\Mux3~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~3_combout\,
	datab => \Mux1~3_combout\,
	datac => \Mux0~1_combout\,
	datad => \Mux3~6_combout\,
	combout => \d|Mux2~0_combout\);

-- Location: LCCOMB_X45_Y5_N18
\d|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \d|Mux1~0_combout\ = (\Mux2~3_combout\ & ((\Mux3~6_combout\ & ((\Mux0~1_combout\))) # (!\Mux3~6_combout\ & (\Mux1~3_combout\)))) # (!\Mux2~3_combout\ & (\Mux1~3_combout\ & (\Mux0~1_combout\ $ (\Mux3~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~3_combout\,
	datab => \Mux1~3_combout\,
	datac => \Mux0~1_combout\,
	datad => \Mux3~6_combout\,
	combout => \d|Mux1~0_combout\);

-- Location: LCCOMB_X45_Y5_N12
\d|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \d|Mux0~0_combout\ = (\Mux1~3_combout\ & (!\Mux2~3_combout\ & (\Mux0~1_combout\ $ (!\Mux3~6_combout\)))) # (!\Mux1~3_combout\ & (\Mux3~6_combout\ & (\Mux2~3_combout\ $ (!\Mux0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~3_combout\,
	datab => \Mux1~3_combout\,
	datac => \Mux0~1_combout\,
	datad => \Mux3~6_combout\,
	combout => \d|Mux0~0_combout\);

ww_LED(3) <= \LED[3]~output_o\;

ww_LED(2) <= \LED[2]~output_o\;

ww_LED(1) <= \LED[1]~output_o\;

ww_LED(0) <= \LED[0]~output_o\;

ww_DISP(7) <= \DISP[7]~output_o\;

ww_DISP(6) <= \DISP[6]~output_o\;

ww_DISP(5) <= \DISP[5]~output_o\;

ww_DISP(4) <= \DISP[4]~output_o\;

ww_DISP(3) <= \DISP[3]~output_o\;

ww_DISP(2) <= \DISP[2]~output_o\;

ww_DISP(1) <= \DISP[1]~output_o\;
END structure;


