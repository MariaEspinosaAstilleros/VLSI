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

-- DATE "05/02/2020 12:58:19"

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

ENTITY 	contador_bidireccional IS
    PORT (
	clk : IN std_logic;
	resetn : IN std_logic;
	en : IN std_logic;
	ld : IN std_logic;
	max : IN std_logic_vector(3 DOWNTO 0);
	R : IN std_logic_vector(3 DOWNTO 0);
	down : IN std_logic;
	cout : BUFFER std_logic;
	Q : BUFFER std_logic_vector(3 DOWNTO 0)
	);
END contador_bidireccional;

-- Design Ports Information
-- cout	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[0]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[1]	=>  Location: PIN_D14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[2]	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[3]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- max[1]	=>  Location: PIN_E16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- max[0]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- max[3]	=>  Location: PIN_D11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- max[2]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- down	=>  Location: PIN_F14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R[0]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ld	=>  Location: PIN_D16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- en	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- resetn	=>  Location: PIN_M2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R[1]	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R[2]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R[3]	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF contador_bidireccional IS
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
SIGNAL ww_ld : std_logic;
SIGNAL ww_max : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_R : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_down : std_logic;
SIGNAL ww_cout : std_logic;
SIGNAL ww_Q : std_logic_vector(3 DOWNTO 0);
SIGNAL \resetn~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \cout~output_o\ : std_logic;
SIGNAL \Q[0]~output_o\ : std_logic;
SIGNAL \Q[1]~output_o\ : std_logic;
SIGNAL \Q[2]~output_o\ : std_logic;
SIGNAL \Q[3]~output_o\ : std_logic;
SIGNAL \max[2]~input_o\ : std_logic;
SIGNAL \max[3]~input_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \max[0]~input_o\ : std_logic;
SIGNAL \max[1]~input_o\ : std_logic;
SIGNAL \ld~input_o\ : std_logic;
SIGNAL \en~input_o\ : std_logic;
SIGNAL \cnt~2_combout\ : std_logic;
SIGNAL \down~input_o\ : std_logic;
SIGNAL \R[1]~input_o\ : std_logic;
SIGNAL \R[0]~input_o\ : std_logic;
SIGNAL \cnt~0_combout\ : std_logic;
SIGNAL \cnt~1_combout\ : std_logic;
SIGNAL \resetn~input_o\ : std_logic;
SIGNAL \resetn~inputclkctrl_outclk\ : std_logic;
SIGNAL \cnt~3_combout\ : std_logic;
SIGNAL \cnt~4_combout\ : std_logic;
SIGNAL \cnt~5_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \R[3]~input_o\ : std_logic;
SIGNAL \cnt~8_combout\ : std_logic;
SIGNAL \R[2]~input_o\ : std_logic;
SIGNAL \cnt~7_combout\ : std_logic;
SIGNAL \cnt~6_combout\ : std_logic;
SIGNAL \cnt~9_combout\ : std_logic;
SIGNAL \cnt~10_combout\ : std_logic;
SIGNAL \cnt~12_combout\ : std_logic;
SIGNAL \cnt~13_combout\ : std_logic;
SIGNAL \cnt~11_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL cnt : std_logic_vector(3 DOWNTO 0);

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
ww_ld <= ld;
ww_max <= max;
ww_R <= R;
ww_down <= down;
cout <= ww_cout;
Q <= ww_Q;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\resetn~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \resetn~input_o\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X53_Y20_N23
\cout~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Equal0~2_combout\,
	devoe => ww_devoe,
	o => \cout~output_o\);

-- Location: IOOBUF_X53_Y30_N9
\Q[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => cnt(0),
	devoe => ww_devoe,
	o => \Q[0]~output_o\);

-- Location: IOOBUF_X51_Y34_N9
\Q[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => cnt(1),
	devoe => ww_devoe,
	o => \Q[1]~output_o\);

-- Location: IOOBUF_X53_Y16_N9
\Q[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => cnt(2),
	devoe => ww_devoe,
	o => \Q[2]~output_o\);

-- Location: IOOBUF_X53_Y20_N16
\Q[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => cnt(3),
	devoe => ww_devoe,
	o => \Q[3]~output_o\);

-- Location: IOIBUF_X51_Y34_N22
\max[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_max(2),
	o => \max[2]~input_o\);

-- Location: IOIBUF_X51_Y34_N15
\max[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_max(3),
	o => \max[3]~input_o\);

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

-- Location: IOIBUF_X53_Y17_N1
\max[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_max(0),
	o => \max[0]~input_o\);

-- Location: IOIBUF_X53_Y17_N8
\max[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_max(1),
	o => \max[1]~input_o\);

-- Location: IOIBUF_X53_Y25_N1
\ld~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ld,
	o => \ld~input_o\);

-- Location: IOIBUF_X53_Y26_N22
\en~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_en,
	o => \en~input_o\);

-- Location: LCCOMB_X52_Y24_N12
\cnt~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \cnt~2_combout\ = (!\ld~input_o\ & \en~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ld~input_o\,
	datac => \en~input_o\,
	combout => \cnt~2_combout\);

-- Location: IOIBUF_X53_Y24_N22
\down~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_down,
	o => \down~input_o\);

-- Location: IOIBUF_X53_Y22_N1
\R[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_R(1),
	o => \R[1]~input_o\);

-- Location: IOIBUF_X53_Y22_N8
\R[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_R(0),
	o => \R[0]~input_o\);

-- Location: LCCOMB_X52_Y24_N26
\cnt~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \cnt~0_combout\ = (\en~input_o\ & ((\ld~input_o\ & (\R[0]~input_o\)) # (!\ld~input_o\ & ((!cnt(0)))))) # (!\en~input_o\ & (((cnt(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \R[0]~input_o\,
	datab => \ld~input_o\,
	datac => \en~input_o\,
	datad => cnt(0),
	combout => \cnt~0_combout\);

-- Location: LCCOMB_X52_Y24_N28
\cnt~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \cnt~1_combout\ = (\Equal0~0_combout\ & ((\Equal0~1_combout\ & (\down~input_o\)) # (!\Equal0~1_combout\ & ((\cnt~0_combout\))))) # (!\Equal0~0_combout\ & (((\cnt~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datab => \down~input_o\,
	datac => \Equal0~1_combout\,
	datad => \cnt~0_combout\,
	combout => \cnt~1_combout\);

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

-- Location: FF_X52_Y24_N29
\cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cnt~1_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(0));

-- Location: LCCOMB_X52_Y24_N14
\cnt~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \cnt~3_combout\ = cnt(1) $ (((\en~input_o\ & cnt(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \en~input_o\,
	datac => cnt(1),
	datad => cnt(0),
	combout => \cnt~3_combout\);

-- Location: LCCOMB_X52_Y24_N0
\cnt~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \cnt~4_combout\ = (\en~input_o\ & ((\ld~input_o\ & (\R[1]~input_o\)) # (!\ld~input_o\ & ((\cnt~3_combout\))))) # (!\en~input_o\ & (((\cnt~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \R[1]~input_o\,
	datab => \en~input_o\,
	datac => \cnt~3_combout\,
	datad => \ld~input_o\,
	combout => \cnt~4_combout\);

-- Location: LCCOMB_X52_Y24_N22
\cnt~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \cnt~5_combout\ = (\Equal0~2_combout\ & (((\down~input_o\)))) # (!\Equal0~2_combout\ & (\cnt~4_combout\ $ (((\cnt~2_combout\ & \down~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100011111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cnt~2_combout\,
	datab => \down~input_o\,
	datac => \Equal0~2_combout\,
	datad => \cnt~4_combout\,
	combout => \cnt~5_combout\);

-- Location: FF_X52_Y24_N23
\cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cnt~5_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(1));

-- Location: LCCOMB_X52_Y24_N20
\Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (\max[0]~input_o\ & (cnt(0) & (\max[1]~input_o\ $ (!cnt(1))))) # (!\max[0]~input_o\ & (!cnt(0) & (\max[1]~input_o\ $ (!cnt(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \max[0]~input_o\,
	datab => \max[1]~input_o\,
	datac => cnt(1),
	datad => cnt(0),
	combout => \Equal0~0_combout\);

-- Location: IOIBUF_X53_Y21_N22
\R[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_R(3),
	o => \R[3]~input_o\);

-- Location: LCCOMB_X52_Y25_N4
\cnt~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \cnt~8_combout\ = (!\ld~input_o\ & \en~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ld~input_o\,
	datad => \en~input_o\,
	combout => \cnt~8_combout\);

-- Location: IOIBUF_X53_Y30_N1
\R[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_R(2),
	o => \R[2]~input_o\);

-- Location: LCCOMB_X52_Y24_N8
\cnt~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \cnt~7_combout\ = (\ld~input_o\ & ((\en~input_o\ & (\R[2]~input_o\)) # (!\en~input_o\ & ((cnt(2)))))) # (!\ld~input_o\ & (((cnt(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \R[2]~input_o\,
	datab => \ld~input_o\,
	datac => \en~input_o\,
	datad => cnt(2),
	combout => \cnt~7_combout\);

-- Location: LCCOMB_X52_Y24_N2
\cnt~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \cnt~6_combout\ = (\down~input_o\ & ((\Equal0~2_combout\) # ((!cnt(0) & !cnt(1))))) # (!\down~input_o\ & (cnt(0) & (cnt(1) & !\Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cnt(0),
	datab => cnt(1),
	datac => \down~input_o\,
	datad => \Equal0~2_combout\,
	combout => \cnt~6_combout\);

-- Location: LCCOMB_X52_Y24_N18
\cnt~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \cnt~9_combout\ = (\Equal0~2_combout\ & (((\cnt~6_combout\)))) # (!\Equal0~2_combout\ & (\cnt~7_combout\ $ (((\cnt~8_combout\ & \cnt~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cnt~8_combout\,
	datab => \cnt~7_combout\,
	datac => \Equal0~2_combout\,
	datad => \cnt~6_combout\,
	combout => \cnt~9_combout\);

-- Location: FF_X52_Y24_N19
\cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cnt~9_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(2));

-- Location: LCCOMB_X52_Y24_N6
\cnt~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \cnt~10_combout\ = (\down~input_o\ & ((cnt(2)) # ((cnt(1)) # (cnt(0))))) # (!\down~input_o\ & (cnt(2) & (cnt(1) & cnt(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \down~input_o\,
	datab => cnt(2),
	datac => cnt(1),
	datad => cnt(0),
	combout => \cnt~10_combout\);

-- Location: LCCOMB_X52_Y24_N16
\cnt~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \cnt~12_combout\ = cnt(3) $ (((\en~input_o\ & (\down~input_o\ $ (\cnt~10_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \down~input_o\,
	datab => \en~input_o\,
	datac => cnt(3),
	datad => \cnt~10_combout\,
	combout => \cnt~12_combout\);

-- Location: LCCOMB_X52_Y24_N10
\cnt~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \cnt~13_combout\ = (\ld~input_o\ & ((\en~input_o\ & (\R[3]~input_o\)) # (!\en~input_o\ & ((\cnt~12_combout\))))) # (!\ld~input_o\ & (((\cnt~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \R[3]~input_o\,
	datab => \ld~input_o\,
	datac => \en~input_o\,
	datad => \cnt~12_combout\,
	combout => \cnt~13_combout\);

-- Location: LCCOMB_X52_Y24_N4
\cnt~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \cnt~11_combout\ = (\Equal0~0_combout\ & ((\Equal0~1_combout\ & (\down~input_o\)) # (!\Equal0~1_combout\ & ((\cnt~13_combout\))))) # (!\Equal0~0_combout\ & (((\cnt~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datab => \down~input_o\,
	datac => \Equal0~1_combout\,
	datad => \cnt~13_combout\,
	combout => \cnt~11_combout\);

-- Location: FF_X52_Y24_N5
\cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cnt~11_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(3));

-- Location: LCCOMB_X52_Y24_N30
\Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (\max[2]~input_o\ & (cnt(2) & (\max[3]~input_o\ $ (!cnt(3))))) # (!\max[2]~input_o\ & (!cnt(2) & (\max[3]~input_o\ $ (!cnt(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \max[2]~input_o\,
	datab => \max[3]~input_o\,
	datac => cnt(3),
	datad => cnt(2),
	combout => \Equal0~1_combout\);

-- Location: LCCOMB_X52_Y24_N24
\Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = (\Equal0~1_combout\ & \Equal0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Equal0~1_combout\,
	datad => \Equal0~0_combout\,
	combout => \Equal0~2_combout\);

ww_cout <= \cout~output_o\;

ww_Q(0) <= \Q[0]~output_o\;

ww_Q(1) <= \Q[1]~output_o\;

ww_Q(2) <= \Q[2]~output_o\;

ww_Q(3) <= \Q[3]~output_o\;
END structure;


