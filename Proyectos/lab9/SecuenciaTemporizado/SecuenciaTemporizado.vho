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

-- DATE "04/25/2020 20:27:07"

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


LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	secuencia IS
    PORT (
	clk : IN std_logic;
	resetn : IN std_logic;
	en : IN std_logic;
	z : OUT std_logic_vector(0 TO 3)
	);
END secuencia;

-- Design Ports Information
-- z[3]	=>  Location: PIN_T2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- z[2]	=>  Location: PIN_T4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- z[1]	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- z[0]	=>  Location: PIN_J14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- resetn	=>  Location: PIN_M2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- en	=>  Location: PIN_R4,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF secuencia IS
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
SIGNAL ww_resetn : std_logic;
SIGNAL ww_en : std_logic;
SIGNAL ww_z : std_logic_vector(0 TO 3);
SIGNAL \resetn~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \z[3]~output_o\ : std_logic;
SIGNAL \z[2]~output_o\ : std_logic;
SIGNAL \z[1]~output_o\ : std_logic;
SIGNAL \z[0]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \estado.st4~feeder_combout\ : std_logic;
SIGNAL \resetn~input_o\ : std_logic;
SIGNAL \resetn~inputclkctrl_outclk\ : std_logic;
SIGNAL \en~input_o\ : std_logic;
SIGNAL \estado.st4~q\ : std_logic;
SIGNAL \estado.st5~feeder_combout\ : std_logic;
SIGNAL \estado.st5~q\ : std_logic;
SIGNAL \estado.st6~q\ : std_logic;
SIGNAL \estado.st7~q\ : std_logic;
SIGNAL \estado.st8~feeder_combout\ : std_logic;
SIGNAL \estado.st8~q\ : std_logic;
SIGNAL \estado.st1~0_combout\ : std_logic;
SIGNAL \estado.st1~q\ : std_logic;
SIGNAL \estado.st2~0_combout\ : std_logic;
SIGNAL \estado.st2~q\ : std_logic;
SIGNAL \estado.st3~feeder_combout\ : std_logic;
SIGNAL \estado.st3~q\ : std_logic;
SIGNAL \WideOr10~0_combout\ : std_logic;
SIGNAL \WideOr9~0_combout\ : std_logic;
SIGNAL \WideOr8~combout\ : std_logic;
SIGNAL \ALT_INV_WideOr9~0_combout\ : std_logic;
SIGNAL \ALT_INV_WideOr10~0_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_clk <= clk;
ww_resetn <= resetn;
ww_en <= en;
z <= ww_z;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\resetn~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \resetn~input_o\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\ALT_INV_WideOr9~0_combout\ <= NOT \WideOr9~0_combout\;
\ALT_INV_WideOr10~0_combout\ <= NOT \WideOr10~0_combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X3_Y0_N2
\z[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_WideOr10~0_combout\,
	devoe => ww_devoe,
	o => \z[3]~output_o\);

-- Location: IOOBUF_X5_Y0_N16
\z[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_WideOr9~0_combout\,
	devoe => ww_devoe,
	o => \z[2]~output_o\);

-- Location: IOOBUF_X5_Y0_N2
\z[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \WideOr8~combout\,
	devoe => ww_devoe,
	o => \z[1]~output_o\);

-- Location: IOOBUF_X53_Y15_N9
\z[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \z[0]~output_o\);

-- Location: IOIBUF_X0_Y16_N8
\clk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G2
\clk~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~inputclkctrl_outclk\);

-- Location: LCCOMB_X5_Y1_N24
\estado.st4~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \estado.st4~feeder_combout\ = \estado.st3~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \estado.st3~q\,
	combout => \estado.st4~feeder_combout\);

-- Location: IOIBUF_X0_Y16_N15
\resetn~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_resetn,
	o => \resetn~input_o\);

-- Location: CLKCTRL_G4
\resetn~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \resetn~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \resetn~inputclkctrl_outclk\);

-- Location: IOIBUF_X5_Y0_N22
\en~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_en,
	o => \en~input_o\);

-- Location: FF_X5_Y1_N25
\estado.st4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \estado.st4~feeder_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \estado.st4~q\);

-- Location: LCCOMB_X5_Y1_N26
\estado.st5~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \estado.st5~feeder_combout\ = \estado.st4~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \estado.st4~q\,
	combout => \estado.st5~feeder_combout\);

-- Location: FF_X5_Y1_N27
\estado.st5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \estado.st5~feeder_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \estado.st5~q\);

-- Location: FF_X5_Y1_N23
\estado.st6\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \estado.st5~q\,
	clrn => \resetn~inputclkctrl_outclk\,
	sload => VCC,
	ena => \en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \estado.st6~q\);

-- Location: FF_X5_Y1_N13
\estado.st7\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \estado.st6~q\,
	clrn => \resetn~inputclkctrl_outclk\,
	sload => VCC,
	ena => \en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \estado.st7~q\);

-- Location: LCCOMB_X5_Y1_N16
\estado.st8~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \estado.st8~feeder_combout\ = \estado.st7~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \estado.st7~q\,
	combout => \estado.st8~feeder_combout\);

-- Location: FF_X5_Y1_N17
\estado.st8\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \estado.st8~feeder_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \estado.st8~q\);

-- Location: LCCOMB_X5_Y1_N18
\estado.st1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \estado.st1~0_combout\ = !\estado.st8~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \estado.st8~q\,
	combout => \estado.st1~0_combout\);

-- Location: FF_X5_Y1_N19
\estado.st1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \estado.st1~0_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \estado.st1~q\);

-- Location: LCCOMB_X5_Y1_N10
\estado.st2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \estado.st2~0_combout\ = !\estado.st1~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \estado.st1~q\,
	combout => \estado.st2~0_combout\);

-- Location: FF_X5_Y1_N11
\estado.st2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \estado.st2~0_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \estado.st2~q\);

-- Location: LCCOMB_X5_Y1_N20
\estado.st3~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \estado.st3~feeder_combout\ = \estado.st2~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \estado.st2~q\,
	combout => \estado.st3~feeder_combout\);

-- Location: FF_X5_Y1_N21
\estado.st3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \estado.st3~feeder_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \estado.st3~q\);

-- Location: LCCOMB_X5_Y1_N22
\WideOr10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr10~0_combout\ = (\estado.st3~q\) # ((\estado.st6~q\) # (\estado.st8~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \estado.st3~q\,
	datac => \estado.st6~q\,
	datad => \estado.st8~q\,
	combout => \WideOr10~0_combout\);

-- Location: LCCOMB_X5_Y1_N12
\WideOr9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr9~0_combout\ = (\estado.st2~q\) # ((\estado.st3~q\) # ((\estado.st7~q\) # (!\estado.st1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado.st2~q\,
	datab => \estado.st3~q\,
	datac => \estado.st7~q\,
	datad => \estado.st1~q\,
	combout => \WideOr9~0_combout\);

-- Location: LCCOMB_X5_Y1_N28
WideOr8 : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr8~combout\ = (\estado.st2~q\) # ((\estado.st3~q\) # (\estado.st8~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado.st2~q\,
	datab => \estado.st3~q\,
	datad => \estado.st8~q\,
	combout => \WideOr8~combout\);

ww_z(3) <= \z[3]~output_o\;

ww_z(2) <= \z[2]~output_o\;

ww_z(1) <= \z[1]~output_o\;

ww_z(0) <= \z[0]~output_o\;
END structure;


