-- Copyright (C) 2024  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 23.1std.1 Build 993 05/14/2024 SC Lite Edition"

-- DATE "11/30/2024 21:22:32"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for Questa Intel FPGA (VHDL) only
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
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_F4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_E2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_P3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_N7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_P28,	 I/O Standard: 2.5 V,	 Current Strength: 8mA


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

ENTITY 	Adder IS
    PORT (
	A : IN std_logic_vector(63 DOWNTO 0);
	B : IN std_logic_vector(63 DOWNTO 0);
	S : BUFFER std_logic_vector(63 DOWNTO 0);
	Cin : IN std_logic;
	Cout : BUFFER std_logic;
	Ovfl : BUFFER std_logic
	);
END Adder;

-- Design Ports Information
-- S[0]	=>  Location: PIN_R24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[1]	=>  Location: PIN_J23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[2]	=>  Location: PIN_M23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[3]	=>  Location: PIN_H24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[4]	=>  Location: PIN_V26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[5]	=>  Location: PIN_E26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[6]	=>  Location: PIN_T25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[7]	=>  Location: PIN_V27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[8]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[9]	=>  Location: PIN_U22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[10]	=>  Location: PIN_L21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[11]	=>  Location: PIN_V23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[12]	=>  Location: PIN_U25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[13]	=>  Location: PIN_Y22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[14]	=>  Location: PIN_R23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[15]	=>  Location: PIN_T26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[16]	=>  Location: PIN_V21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[17]	=>  Location: PIN_U28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[18]	=>  Location: PIN_G27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[19]	=>  Location: PIN_N25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[20]	=>  Location: PIN_U26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[21]	=>  Location: PIN_G25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[22]	=>  Location: PIN_F24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[23]	=>  Location: PIN_L25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[24]	=>  Location: PIN_E19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[25]	=>  Location: PIN_J24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[26]	=>  Location: PIN_E22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[27]	=>  Location: PIN_A21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[28]	=>  Location: PIN_C21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[29]	=>  Location: PIN_AF19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[30]	=>  Location: PIN_E14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[31]	=>  Location: PIN_C26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[32]	=>  Location: PIN_H25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[33]	=>  Location: PIN_D24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[34]	=>  Location: PIN_C18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[35]	=>  Location: PIN_J22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[36]	=>  Location: PIN_AF24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[37]	=>  Location: PIN_AF18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[38]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[39]	=>  Location: PIN_E21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[40]	=>  Location: PIN_J25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[41]	=>  Location: PIN_G17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[42]	=>  Location: PIN_G14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[43]	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[44]	=>  Location: PIN_K1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[45]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[46]	=>  Location: PIN_J17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[47]	=>  Location: PIN_D14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[48]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[49]	=>  Location: PIN_B18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[50]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[51]	=>  Location: PIN_H19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[52]	=>  Location: PIN_B17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[53]	=>  Location: PIN_G22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[54]	=>  Location: PIN_L26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[55]	=>  Location: PIN_E12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[56]	=>  Location: PIN_D23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[57]	=>  Location: PIN_J12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[58]	=>  Location: PIN_E24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[59]	=>  Location: PIN_B19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[60]	=>  Location: PIN_A25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[61]	=>  Location: PIN_B23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[62]	=>  Location: PIN_A18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[63]	=>  Location: PIN_B22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Cout	=>  Location: PIN_A26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Ovfl	=>  Location: PIN_F28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Cin	=>  Location: PIN_T22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[0]	=>  Location: PIN_T21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[0]	=>  Location: PIN_R22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[1]	=>  Location: PIN_V25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[1]	=>  Location: PIN_AA25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[2]	=>  Location: PIN_M24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[2]	=>  Location: PIN_P27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[3]	=>  Location: PIN_R21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[3]	=>  Location: PIN_P21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[4]	=>  Location: PIN_L28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[4]	=>  Location: PIN_M26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[5]	=>  Location: PIN_N26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[5]	=>  Location: PIN_M28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[6]	=>  Location: PIN_M27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[6]	=>  Location: PIN_W28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[7]	=>  Location: PIN_P26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[7]	=>  Location: PIN_R27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[8]	=>  Location: PIN_P25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[8]	=>  Location: PIN_V22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[9]	=>  Location: PIN_R28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[9]	=>  Location: PIN_Y26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[10]	=>  Location: PIN_W25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[10]	=>  Location: PIN_U21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[11]	=>  Location: PIN_U27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[11]	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[12]	=>  Location: PIN_V24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[12]	=>  Location: PIN_D27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[13]	=>  Location: PIN_R25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[13]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[14]	=>  Location: PIN_L23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[14]	=>  Location: PIN_L27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[15]	=>  Location: PIN_L24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[15]	=>  Location: PIN_R26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[16]	=>  Location: PIN_U24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[16]	=>  Location: PIN_D28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[17]	=>  Location: PIN_U23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[17]	=>  Location: PIN_V28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[18]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[18]	=>  Location: PIN_C27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[19]	=>  Location: PIN_AG25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[19]	=>  Location: PIN_AH25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[20]	=>  Location: PIN_K21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[20]	=>  Location: PIN_M25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[21]	=>  Location: PIN_G26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[21]	=>  Location: PIN_K22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[22]	=>  Location: PIN_L22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[22]	=>  Location: PIN_K27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[23]	=>  Location: PIN_F26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[23]	=>  Location: PIN_K26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[24]	=>  Location: PIN_G28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[24]	=>  Location: PIN_K28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[25]	=>  Location: PIN_D21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[25]	=>  Location: PIN_C23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[26]	=>  Location: PIN_H22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[26]	=>  Location: PIN_C22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[27]	=>  Location: PIN_D26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[27]	=>  Location: PIN_E28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[28]	=>  Location: PIN_J26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[28]	=>  Location: PIN_F27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[29]	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[29]	=>  Location: PIN_H23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[30]	=>  Location: PIN_D25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[30]	=>  Location: PIN_AH23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[31]	=>  Location: PIN_AF25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[31]	=>  Location: PIN_C20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[32]	=>  Location: PIN_C24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[32]	=>  Location: PIN_G24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[33]	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[33]	=>  Location: PIN_AG14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[34]	=>  Location: PIN_AH14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[34]	=>  Location: PIN_K25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[35]	=>  Location: PIN_H14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[35]	=>  Location: PIN_E27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[36]	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[36]	=>  Location: PIN_Y1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[37]	=>  Location: PIN_J15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[37]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[38]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[38]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[39]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[39]	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[40]	=>  Location: PIN_J16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[40]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[41]	=>  Location: PIN_H17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[41]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[42]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[42]	=>  Location: PIN_D10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[43]	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[43]	=>  Location: PIN_AE18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[44]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[44]	=>  Location: PIN_F17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[45]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[45]	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[46]	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[46]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[47]	=>  Location: PIN_G21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[47]	=>  Location: PIN_H15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[48]	=>  Location: PIN_F14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[48]	=>  Location: PIN_G13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[49]	=>  Location: PIN_H16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[49]	=>  Location: PIN_B21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[50]	=>  Location: PIN_C25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[50]	=>  Location: PIN_A23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[51]	=>  Location: PIN_A22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[51]	=>  Location: PIN_J14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[52]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[52]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[53]	=>  Location: PIN_F22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[53]	=>  Location: PIN_E18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[54]	=>  Location: PIN_H21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[54]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[55]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[55]	=>  Location: PIN_C19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[56]	=>  Location: PIN_A19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[56]	=>  Location: PIN_J19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[57]	=>  Location: PIN_F21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[57]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[58]	=>  Location: PIN_G20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[58]	=>  Location: PIN_D19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[59]	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[59]	=>  Location: PIN_D20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[60]	=>  Location: PIN_C17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[60]	=>  Location: PIN_D18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[61]	=>  Location: PIN_E25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[61]	=>  Location: PIN_H26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[62]	=>  Location: PIN_B25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[62]	=>  Location: PIN_D17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[63]	=>  Location: PIN_D16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[63]	=>  Location: PIN_D22,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Adder IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_A : std_logic_vector(63 DOWNTO 0);
SIGNAL ww_B : std_logic_vector(63 DOWNTO 0);
SIGNAL ww_S : std_logic_vector(63 DOWNTO 0);
SIGNAL ww_Cin : std_logic;
SIGNAL ww_Cout : std_logic;
SIGNAL ww_Ovfl : std_logic;
SIGNAL \S[0]~output_o\ : std_logic;
SIGNAL \S[1]~output_o\ : std_logic;
SIGNAL \S[2]~output_o\ : std_logic;
SIGNAL \S[3]~output_o\ : std_logic;
SIGNAL \S[4]~output_o\ : std_logic;
SIGNAL \S[5]~output_o\ : std_logic;
SIGNAL \S[6]~output_o\ : std_logic;
SIGNAL \S[7]~output_o\ : std_logic;
SIGNAL \S[8]~output_o\ : std_logic;
SIGNAL \S[9]~output_o\ : std_logic;
SIGNAL \S[10]~output_o\ : std_logic;
SIGNAL \S[11]~output_o\ : std_logic;
SIGNAL \S[12]~output_o\ : std_logic;
SIGNAL \S[13]~output_o\ : std_logic;
SIGNAL \S[14]~output_o\ : std_logic;
SIGNAL \S[15]~output_o\ : std_logic;
SIGNAL \S[16]~output_o\ : std_logic;
SIGNAL \S[17]~output_o\ : std_logic;
SIGNAL \S[18]~output_o\ : std_logic;
SIGNAL \S[19]~output_o\ : std_logic;
SIGNAL \S[20]~output_o\ : std_logic;
SIGNAL \S[21]~output_o\ : std_logic;
SIGNAL \S[22]~output_o\ : std_logic;
SIGNAL \S[23]~output_o\ : std_logic;
SIGNAL \S[24]~output_o\ : std_logic;
SIGNAL \S[25]~output_o\ : std_logic;
SIGNAL \S[26]~output_o\ : std_logic;
SIGNAL \S[27]~output_o\ : std_logic;
SIGNAL \S[28]~output_o\ : std_logic;
SIGNAL \S[29]~output_o\ : std_logic;
SIGNAL \S[30]~output_o\ : std_logic;
SIGNAL \S[31]~output_o\ : std_logic;
SIGNAL \S[32]~output_o\ : std_logic;
SIGNAL \S[33]~output_o\ : std_logic;
SIGNAL \S[34]~output_o\ : std_logic;
SIGNAL \S[35]~output_o\ : std_logic;
SIGNAL \S[36]~output_o\ : std_logic;
SIGNAL \S[37]~output_o\ : std_logic;
SIGNAL \S[38]~output_o\ : std_logic;
SIGNAL \S[39]~output_o\ : std_logic;
SIGNAL \S[40]~output_o\ : std_logic;
SIGNAL \S[41]~output_o\ : std_logic;
SIGNAL \S[42]~output_o\ : std_logic;
SIGNAL \S[43]~output_o\ : std_logic;
SIGNAL \S[44]~output_o\ : std_logic;
SIGNAL \S[45]~output_o\ : std_logic;
SIGNAL \S[46]~output_o\ : std_logic;
SIGNAL \S[47]~output_o\ : std_logic;
SIGNAL \S[48]~output_o\ : std_logic;
SIGNAL \S[49]~output_o\ : std_logic;
SIGNAL \S[50]~output_o\ : std_logic;
SIGNAL \S[51]~output_o\ : std_logic;
SIGNAL \S[52]~output_o\ : std_logic;
SIGNAL \S[53]~output_o\ : std_logic;
SIGNAL \S[54]~output_o\ : std_logic;
SIGNAL \S[55]~output_o\ : std_logic;
SIGNAL \S[56]~output_o\ : std_logic;
SIGNAL \S[57]~output_o\ : std_logic;
SIGNAL \S[58]~output_o\ : std_logic;
SIGNAL \S[59]~output_o\ : std_logic;
SIGNAL \S[60]~output_o\ : std_logic;
SIGNAL \S[61]~output_o\ : std_logic;
SIGNAL \S[62]~output_o\ : std_logic;
SIGNAL \S[63]~output_o\ : std_logic;
SIGNAL \Cout~output_o\ : std_logic;
SIGNAL \Ovfl~output_o\ : std_logic;
SIGNAL \B[0]~input_o\ : std_logic;
SIGNAL \A[0]~input_o\ : std_logic;
SIGNAL \Cin~input_o\ : std_logic;
SIGNAL \B[1]~input_o\ : std_logic;
SIGNAL \A[1]~input_o\ : std_logic;
SIGNAL \A[2]~input_o\ : std_logic;
SIGNAL \Mid|BLAN|ForGenerate:1:ColumnBlock|bG~0_combout\ : std_logic;
SIGNAL \Mid|OC~62_combout\ : std_logic;
SIGNAL \B[2]~input_o\ : std_logic;
SIGNAL \Mid|BLAN|ForGenerate:2:ColumnBlock|Recur:Upper|bG~0_combout\ : std_logic;
SIGNAL \Bot|S[12]~34_combout\ : std_logic;
SIGNAL \Mid|BLAN|ForGenerate:2:ColumnBlock|Recur:Upper|BP~0_combout\ : std_logic;
SIGNAL \Mid|OC[3]~63_combout\ : std_logic;
SIGNAL \A[3]~input_o\ : std_logic;
SIGNAL \B[3]~input_o\ : std_logic;
SIGNAL \Mid|BLAN|ForGenerate:3:ColumnBlock|Recur:Upper|BP~0_combout\ : std_logic;
SIGNAL \Mid|BLAN|ForGenerate:3:ColumnBlock|Recur:Upper|bG~0_combout\ : std_logic;
SIGNAL \B[4]~input_o\ : std_logic;
SIGNAL \A[4]~input_o\ : std_logic;
SIGNAL \Mid|BLAN|ForGenerate:4:ColumnBlock|Recur:Upper|BP~0_combout\ : std_logic;
SIGNAL \Mid|BLAN|ForGenerate:4:ColumnBlock|Recur:Upper|BP~1_combout\ : std_logic;
SIGNAL \Mid|BLAN|ForGenerate:4:ColumnBlock|Recur:Upper|Recur:Upper|bG~0_combout\ : std_logic;
SIGNAL \Mid|OC[5]~64_combout\ : std_logic;
SIGNAL \A[5]~input_o\ : std_logic;
SIGNAL \B[5]~input_o\ : std_logic;
SIGNAL \Mid|OC~67_combout\ : std_logic;
SIGNAL \Mid|BLAN|ForGenerate:5:ColumnBlock|Recur:Upper|Recur:Upper|bG~0_combout\ : std_logic;
SIGNAL \Mid|BLAN|ForGenerate:5:ColumnBlock|Recur:Upper|bG~0_combout\ : std_logic;
SIGNAL \Mid|OC[6]~65_combout\ : std_logic;
SIGNAL \Mid|BLAN|ForGenerate:6:ColumnBlock|bG~0_combout\ : std_logic;
SIGNAL \Mid|OC[6]~66_combout\ : std_logic;
SIGNAL \B[6]~input_o\ : std_logic;
SIGNAL \A[6]~input_o\ : std_logic;
SIGNAL \B[7]~input_o\ : std_logic;
SIGNAL \Mid|BLAN|ForGenerate:6:ColumnBlock|Recur:Upper|BP~0_combout\ : std_logic;
SIGNAL \Mid|OC~68_combout\ : std_logic;
SIGNAL \Mid|BLAN|ForGenerate:6:ColumnBlock|Recur:Upper|Recur:Upper|bG~0_combout\ : std_logic;
SIGNAL \Mid|OC[7]~69_combout\ : std_logic;
SIGNAL \Mid|OC[7]~70_combout\ : std_logic;
SIGNAL \A[7]~input_o\ : std_logic;
SIGNAL \Mid|BLAN|ForGenerate:7:ColumnBlock|Recur:Upper|Recur:Upper|bG~0_combout\ : std_logic;
SIGNAL \B[8]~input_o\ : std_logic;
SIGNAL \A[8]~input_o\ : std_logic;
SIGNAL \Bot|S[8]~36_combout\ : std_logic;
SIGNAL \Mid|OC[4]~71_combout\ : std_logic;
SIGNAL \Bot|S[8]~35_combout\ : std_logic;
SIGNAL \Bot|S[8]~37_combout\ : std_logic;
SIGNAL \B[9]~input_o\ : std_logic;
SIGNAL \Bot|S[9]~38_combout\ : std_logic;
SIGNAL \Bot|S[9]~39_combout\ : std_logic;
SIGNAL \Mid|BLAN|ForGenerate:8:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\ : std_logic;
SIGNAL \A[9]~input_o\ : std_logic;
SIGNAL \Bot|S[9]~129_combout\ : std_logic;
SIGNAL \Mid|BLAN|ForGenerate:9:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\ : std_logic;
SIGNAL \Mid|BLAN|ForGenerate:19:ColumnBlock|Recur:Lower|Recur:Upper|Recur:Upper|bG~0_combout\ : std_logic;
SIGNAL \Bot|S[10]~40_combout\ : std_logic;
SIGNAL \Bot|S[10]~41_combout\ : std_logic;
SIGNAL \Bot|S[10]~42_combout\ : std_logic;
SIGNAL \B[10]~input_o\ : std_logic;
SIGNAL \A[10]~input_o\ : std_logic;
SIGNAL \Bot|S[10]~43_combout\ : std_logic;
SIGNAL \A[11]~input_o\ : std_logic;
SIGNAL \B[11]~input_o\ : std_logic;
SIGNAL \Mid|BLAN|ForGenerate:21:ColumnBlock|Recur:Lower|Recur:Upper|Recur:Upper|bG~0_combout\ : std_logic;
SIGNAL \Mid|BLAN|ForGenerate:10:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\ : std_logic;
SIGNAL \Bot|S[11]~45_combout\ : std_logic;
SIGNAL \Mid|BLAN|ForGenerate:21:ColumnBlock|Recur:Lower|Recur:Upper|Recur:Upper|bG~1_combout\ : std_logic;
SIGNAL \Bot|S[11]~130_combout\ : std_logic;
SIGNAL \Bot|S[11]~44_combout\ : std_logic;
SIGNAL \Mid|BLAN|ForGenerate:19:ColumnBlock|Recur:Lower|Recur:Upper|BP~0_combout\ : std_logic;
SIGNAL \Mid|BLAN|ForGenerate:23:ColumnBlock|Recur:Lower|Recur:Upper|BP~0_combout\ : std_logic;
SIGNAL \Bot|S[11]~47_combout\ : std_logic;
SIGNAL \Bot|S[11]~46_combout\ : std_logic;
SIGNAL \Bot|S[11]~48_combout\ : std_logic;
SIGNAL \Bot|S[11]~49_combout\ : std_logic;
SIGNAL \Bot|S[11]~50_combout\ : std_logic;
SIGNAL \Mid|BLAN|ForGenerate:11:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\ : std_logic;
SIGNAL \Bot|S[12]~53_combout\ : std_logic;
SIGNAL \Mid|BLAN|ForGenerate:17:ColumnBlock|Recur:Lower|Recur:Upper|BP~2_combout\ : std_logic;
SIGNAL \Bot|S[12]~52_combout\ : std_logic;
SIGNAL \Bot|S[12]~54_combout\ : std_logic;
SIGNAL \Bot|S[12]~51_combout\ : std_logic;
SIGNAL \Bot|S[12]~55_combout\ : std_logic;
SIGNAL \A[12]~input_o\ : std_logic;
SIGNAL \B[12]~input_o\ : std_logic;
SIGNAL \Bot|S[12]~56_combout\ : std_logic;
SIGNAL \Mid|BLAN|ForGenerate:25:ColumnBlock|Recur:Lower|Recur:Upper|BP~0_combout\ : std_logic;
SIGNAL \Bot|S[13]~57_combout\ : std_logic;
SIGNAL \Mid|BLAN|ForGenerate:12:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\ : std_logic;
SIGNAL \A[13]~input_o\ : std_logic;
SIGNAL \B[13]~input_o\ : std_logic;
SIGNAL \Bot|S[13]~58_combout\ : std_logic;
SIGNAL \Mid|BLAN|ForGenerate:13:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\ : std_logic;
SIGNAL \A[14]~input_o\ : std_logic;
SIGNAL \B[14]~input_o\ : std_logic;
SIGNAL \Mid|BLAN|ForGenerate:15:ColumnBlock|Recur:Upper|BP~4_combout\ : std_logic;
SIGNAL \Bot|S[14]~62_combout\ : std_logic;
SIGNAL \Mid|BLAN|ForGenerate:16:ColumnBlock|Recur:Upper|bG~0_combout\ : std_logic;
SIGNAL \Mid|BLAN|ForGenerate:15:ColumnBlock|Recur:Upper|BP~8_combout\ : std_logic;
SIGNAL \Bot|S[14]~59_combout\ : std_logic;
SIGNAL \Bot|S[14]~60_combout\ : std_logic;
SIGNAL \Bot|S[14]~61_combout\ : std_logic;
SIGNAL \Bot|S[14]~63_combout\ : std_logic;
SIGNAL \B[15]~input_o\ : std_logic;
SIGNAL \A[15]~input_o\ : std_logic;
SIGNAL \Mid|BLAN|ForGenerate:19:ColumnBlock|Recur:Upper|Recur:Lower|Recur:Upper|bG~0_combout\ : std_logic;
SIGNAL \Bot|S[15]~65_combout\ : std_logic;
SIGNAL \Mid|BLAN|ForGenerate:14:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\ : std_logic;
SIGNAL \Bot|S[15]~131_combout\ : std_logic;
SIGNAL \Bot|S[15]~64_combout\ : std_logic;
SIGNAL \Bot|S[15]~66_combout\ : std_logic;
SIGNAL \Mid|BLAN|ForGenerate:15:ColumnBlock|Recur:Upper|BP~5_combout\ : std_logic;
SIGNAL \Mid|BLAN|ForGenerate:15:ColumnBlock|Recur:Upper|BP~6_combout\ : std_logic;
SIGNAL \Mid|BLAN|ForGenerate:15:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\ : std_logic;
SIGNAL \Mid|OC[16]~73_combout\ : std_logic;
SIGNAL \Mid|BLAN|ForGenerate:17:ColumnBlock|Recur:Lower|bG~0_combout\ : std_logic;
SIGNAL \Mid|BLAN|ForGenerate:15:ColumnBlock|Recur:Lower|Recur:Upper|BP~0_combout\ : std_logic;
SIGNAL \Mid|BLAN|ForGenerate:15:ColumnBlock|Recur:Lower|bG~0_combout\ : std_logic;
SIGNAL \Mid|BLAN|ForGenerate:15:ColumnBlock|Recur:Lower|bG~1_combout\ : std_logic;
SIGNAL \Mid|OC~72_combout\ : std_logic;
SIGNAL \Mid|OC[16]~74_combout\ : std_logic;
SIGNAL \A[16]~input_o\ : std_logic;
SIGNAL \B[16]~input_o\ : std_logic;
SIGNAL \Mid|OC[17]~395_combout\ : std_logic;
SIGNAL \Mid|OC[17]~75_combout\ : std_logic;
SIGNAL \Mid|BLAN|ForGenerate:16:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|BP~0_combout\ : std_logic;
SIGNAL \Mid|BLAN|ForGenerate:16:ColumnBlock|Recur:Upper|bG~1_combout\ : std_logic;
SIGNAL \Mid|OC[17]~76_combout\ : std_logic;
SIGNAL \Mid|BLAN|ForGenerate:16:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\ : std_logic;
SIGNAL \B[17]~input_o\ : std_logic;
SIGNAL \A[17]~input_o\ : std_logic;
SIGNAL \Mid|BLAN|ForGenerate:16:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\ : std_logic;
SIGNAL \Mid|BLAN|ForGenerate:17:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|BP~2_combout\ : std_logic;
SIGNAL \Mid|BLAN|ForGenerate:17:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|BP~3_combout\ : std_logic;
SIGNAL \Mid|OC[18]~77_combout\ : std_logic;
SIGNAL \Mid|BLAN|ForGenerate:17:ColumnBlock|bG~4_combout\ : std_logic;
SIGNAL \Mid|BLAN|ForGenerate:15:ColumnBlock|Recur:Upper|BP~7_combout\ : std_logic;
SIGNAL \Mid|BLAN|ForGenerate:17:ColumnBlock|Recur:Lower|bG~1_combout\ : std_logic;
SIGNAL \Mid|BLAN|ForGenerate:17:ColumnBlock|Recur:Lower|Recur:Upper|bG~2_combout\ : std_logic;
SIGNAL \Mid|BLAN|ForGenerate:17:ColumnBlock|Recur:Lower|bG~2_combout\ : std_logic;
SIGNAL \Mid|OC~79_combout\ : std_logic;
SIGNAL \Mid|OC[18]~396_combout\ : std_logic;
SIGNAL \Mid|OC[18]~80_combout\ : std_logic;
SIGNAL \Mid|BLAN|ForGenerate:17:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\ : std_logic;
SIGNAL \Mid|OC[18]~78_combout\ : std_logic;
SIGNAL \Mid|OC[18]~81_combout\ : std_logic;
SIGNAL \A[18]~input_o\ : std_logic;
SIGNAL \B[18]~input_o\ : std_logic;
SIGNAL \A[19]~input_o\ : std_logic;
SIGNAL \B[19]~input_o\ : std_logic;
SIGNAL \Mid|OC[19]~84_combout\ : std_logic;
SIGNAL \Mid|BLAN|ForGenerate:18:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\ : std_logic;
SIGNAL \Mid|BLAN|ForGenerate:18:ColumnBlock|Recur:Upper|Recur:Upper|bG~2_combout\ : std_logic;
SIGNAL \Mid|BLAN|ForGenerate:18:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\ : std_logic;
SIGNAL \Mid|OC[19]~83_combout\ : std_logic;
SIGNAL \Mid|BLAN|ForGenerate:18:ColumnBlock|Recur:Upper|BP~2_combout\ : std_logic;
SIGNAL \Mid|BLAN|ForGenerate:22:ColumnBlock|Recur:Upper|bG~0_combout\ : std_logic;
SIGNAL \Mid|OC[19]~82_combout\ : std_logic;
SIGNAL \Mid|OC[19]~85_combout\ : std_logic;
SIGNAL \B[20]~input_o\ : std_logic;
SIGNAL \Mid|BLAN|ForGenerate:19:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\ : std_logic;
SIGNAL \Mid|BLAN|ForGenerate:19:ColumnBlock|Recur:Upper|Recur:Lower|bG~4_combout\ : std_logic;
SIGNAL \Mid|BLAN|ForGenerate:19:ColumnBlock|Recur:Upper|Recur:Lower|bG~combout\ : std_logic;
SIGNAL \Mid|OC[20]~86_combout\ : std_logic;
SIGNAL \Mid|OC[20]~87_combout\ : std_logic;
SIGNAL \Mid|OC~88_combout\ : std_logic;
SIGNAL \Mid|OC~89_combout\ : std_logic;
SIGNAL \Mid|BLAN|ForGenerate:19:ColumnBlock|Recur:Lower|bG~1_combout\ : std_logic;
SIGNAL \Mid|BLAN|ForGenerate:21:ColumnBlock|Recur:Lower|bG~0_combout\ : std_logic;
SIGNAL \Mid|BLAN|ForGenerate:19:ColumnBlock|Recur:Lower|bG~0_combout\ : std_logic;
SIGNAL \Mid|BLAN|ForGenerate:19:ColumnBlock|Recur:Lower|bG~2_combout\ : std_logic;
SIGNAL \Mid|BLAN|ForGenerate:19:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\ : std_logic;
SIGNAL \Mid|BLAN|ForGenerate:19:ColumnBlock|Recur:Upper|BP~2_combout\ : std_logic;
SIGNAL \Mid|BLAN|ForGenerate:19:ColumnBlock|Recur:Upper|BP~4_combout\ : std_logic;
SIGNAL \Mid|OC[20]~90_combout\ : std_logic;
SIGNAL \A[20]~input_o\ : std_logic;
SIGNAL \B[21]~input_o\ : std_logic;
SIGNAL \A[21]~input_o\ : std_logic;
SIGNAL \Mid|BLAN|ForGenerate:20:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\ : std_logic;
SIGNAL \Mid|OC[21]~93_combout\ : std_logic;
SIGNAL \Mid|BLAN|ForGenerate:20:ColumnBlock|Recur:Upper|Recur:Upper|bG~3_combout\ : std_logic;
SIGNAL \Mid|BLAN|ForGenerate:20:ColumnBlock|Recur:Upper|Recur:Upper|bG~2_combout\ : std_logic;
SIGNAL \Mid|OC[21]~92_combout\ : std_logic;
SIGNAL \Mid|BLAN|ForGenerate:25:ColumnBlock|Recur:Upper|Recur:Upper|BP~0_combout\ : std_logic;
SIGNAL \Mid|BLAN|ForGenerate:24:ColumnBlock|Recur:Upper|Recur:Upper|bG~0_combout\ : std_logic;
SIGNAL \Mid|OC[21]~91_combout\ : std_logic;
SIGNAL \Mid|BLAN|ForGenerate:21:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\ : std_logic;
SIGNAL \Mid|OC[22]~94_combout\ : std_logic;
SIGNAL \Mid|BLAN|ForGenerate:19:ColumnBlock|Recur:Upper|BP~3_combout\ : std_logic;
SIGNAL \Mid|OC[22]~95_combout\ : std_logic;
SIGNAL \Mid|OC[22]~96_combout\ : std_logic;
SIGNAL \Mid|OC[22]~97_combout\ : std_logic;
SIGNAL \Mid|BLAN|ForGenerate:21:ColumnBlock|Recur:Upper|Recur:Upper|BP~0_combout\ : std_logic;
SIGNAL \Mid|BLAN|ForGenerate:21:ColumnBlock|Recur:Upper|Recur:Upper|BP~1_combout\ : std_logic;
SIGNAL \Mid|OC[22]~98_combout\ : std_logic;
SIGNAL \Mid|BLAN|ForGenerate:21:ColumnBlock|Recur:Lower|Recur:Upper|BP~0_combout\ : std_logic;
SIGNAL \Mid|OC~99_combout\ : std_logic;
SIGNAL \Mid|BLAN|ForGenerate:21:ColumnBlock|Recur:Lower|bG~1_combout\ : std_logic;
SIGNAL \Mid|BLAN|ForGenerate:21:ColumnBlock|Recur:Lower|bG~2_combout\ : std_logic;
SIGNAL \Mid|BLAN|ForGenerate:21:ColumnBlock|Recur:Lower|bG~3_combout\ : std_logic;
SIGNAL \Mid|OC[22]~100_combout\ : std_logic;
SIGNAL \Mid|OC[22]~101_combout\ : std_logic;
SIGNAL \A[22]~input_o\ : std_logic;
SIGNAL \B[22]~input_o\ : std_logic;
SIGNAL \A[23]~input_o\ : std_logic;
SIGNAL \Mid|OC[23]~106_combout\ : std_logic;
SIGNAL \Mid|BLAN|ForGenerate:22:ColumnBlock|Recur:Upper|Recur:Upper|BP~0_combout\ : std_logic;
SIGNAL \Mid|BLAN|ForGenerate:22:ColumnBlock|Recur:Upper|bG~1_combout\ : std_logic;
SIGNAL \Mid|BLAN|ForGenerate:22:ColumnBlock|Recur:Upper|Recur:Upper|BP~1_combout\ : std_logic;
SIGNAL \Mid|BLAN|ForGenerate:22:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\ : std_logic;
SIGNAL \Mid|OC[23]~103_combout\ : std_logic;
SIGNAL \Mid|OC[23]~104_combout\ : std_logic;
SIGNAL \Mid|OC[23]~102_combout\ : std_logic;
SIGNAL \Mid|OC[23]~105_combout\ : std_logic;
SIGNAL \Mid|OC[23]~107_combout\ : std_logic;
SIGNAL \B[23]~input_o\ : std_logic;
SIGNAL \Mid|BLAN|ForGenerate:23:ColumnBlock|Recur:Lower|bG~6_combout\ : std_logic;
SIGNAL \Mid|OC~397_combout\ : std_logic;
SIGNAL \Mid|BLAN|ForGenerate:23:ColumnBlock|Recur:Lower|bG~2_combout\ : std_logic;
SIGNAL \Mid|BLAN|ForGenerate:23:ColumnBlock|Recur:Lower|bG~3_combout\ : std_logic;
SIGNAL \Mid|BLAN|ForGenerate:23:ColumnBlock|Recur:Lower|bG~4_combout\ : std_logic;
SIGNAL \Mid|BLAN|ForGenerate:23:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|BP~2_combout\ : std_logic;
SIGNAL \Mid|BLAN|ForGenerate:23:ColumnBlock|Recur:Upper|BP~0_combout\ : std_logic;
SIGNAL \Mid|OC[24]~108_combout\ : std_logic;
SIGNAL \B[24]~input_o\ : std_logic;
SIGNAL \Mid|BLAN|ForGenerate:23:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\ : std_logic;
SIGNAL \Mid|BLAN|ForGenerate:23:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\ : std_logic;
SIGNAL \Mid|OC[39]~109_combout\ : std_logic;
SIGNAL \Mid|BLAN|ForGenerate:23:ColumnBlock|Recur:Upper|Recur:Lower|bG~0_combout\ : std_logic;
SIGNAL \Mid|BLAN|ForGenerate:47:ColumnBlock|Recur:Lower|bG~0_combout\ : std_logic;
SIGNAL \Mid|OC[24]~110_combout\ : std_logic;
SIGNAL \A[24]~input_o\ : std_logic;
SIGNAL \Mid|BLAN|ForGenerate:23:ColumnBlock|Recur:Upper|BP~1_combout\ : std_logic;
SIGNAL \Mid|BLAN|ForGenerate:24:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|BP~0_combout\ : std_logic;
SIGNAL \Mid|BLAN|ForGenerate:24:ColumnBlock|bG~0_combout\ : std_logic;
SIGNAL \Mid|BLAN|ForGenerate:24:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\ : std_logic;
SIGNAL \Mid|OC[27]~111_combout\ : std_logic;
SIGNAL \Mid|OC[25]~112_combout\ : std_logic;
SIGNAL \Mid|OC[25]~113_combout\ : std_logic;
SIGNAL \Mid|BLAN|ForGenerate:24:ColumnBlock|Recur:Upper|bG~0_combout\ : std_logic;
SIGNAL \Mid|OC[25]~114_combout\ : std_logic;
SIGNAL \B[25]~input_o\ : std_logic;
SIGNAL \A[25]~input_o\ : std_logic;
SIGNAL \Mid|OC~119_combout\ : std_logic;
SIGNAL \Mid|BLAN|ForGenerate:25:ColumnBlock|Recur:Lower|bG~0_combout\ : std_logic;
SIGNAL \Mid|BLAN|ForGenerate:25:ColumnBlock|Recur:Lower|bG~1_combout\ : std_logic;
SIGNAL \Mid|BLAN|ForGenerate:25:ColumnBlock|Recur:Lower|bG~2_combout\ : std_logic;
SIGNAL \Mid|BLAN|ForGenerate:25:ColumnBlock|Recur:Lower|bG~3_combout\ : std_logic;
SIGNAL \Mid|OC[26]~120_combout\ : std_logic;
SIGNAL \Mid|OC[26]~121_combout\ : std_logic;
SIGNAL \Mid|BLAN|ForGenerate:25:ColumnBlock|Recur:Upper|Recur:Upper|BP~1_combout\ : std_logic;
SIGNAL \Mid|OC[26]~115_combout\ : std_logic;
SIGNAL \Mid|OC[26]~116_combout\ : std_logic;
SIGNAL \Mid|OC[26]~117_combout\ : std_logic;
SIGNAL \Mid|BLAN|ForGenerate:25:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\ : std_logic;
SIGNAL \Mid|OC[26]~118_combout\ : std_logic;
SIGNAL \Mid|OC[26]~122_combout\ : std_logic;
SIGNAL \A[26]~input_o\ : std_logic;
SIGNAL \B[26]~input_o\ : std_logic;
SIGNAL \B[27]~input_o\ : std_logic;
SIGNAL \A[27]~input_o\ : std_logic;
SIGNAL \Mid|BLAN|ForGenerate:26:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\ : std_logic;
SIGNAL \Mid|BLAN|ForGenerate:26:ColumnBlock|Recur:Upper|Recur:Upper|BP~0_combout\ : std_logic;
SIGNAL \Mid|OC[27]~123_combout\ : std_logic;
SIGNAL \Mid|OC[27]~127_combout\ : std_logic;
SIGNAL \Mid|OC[27]~124_combout\ : std_logic;
SIGNAL \Mid|OC[27]~125_combout\ : std_logic;
SIGNAL \Mid|OC[27]~126_combout\ : std_logic;
SIGNAL \Mid|OC[27]~421_combout\ : std_logic;
SIGNAL \Mid|OC[27]~422_combout\ : std_logic;
SIGNAL \Mid|BLAN|ForGenerate:27:ColumnBlock|Recur:Upper|Recur:Upper|bG~0_combout\ : std_logic;
SIGNAL \Mid|OC[28]~398_combout\ : std_logic;
SIGNAL \Mid|BLAN|ForGenerate:27:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\ : std_logic;
SIGNAL \Mid|OC[30]~128_combout\ : std_logic;
SIGNAL \Mid|BLAN|ForGenerate:27:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\ : std_logic;
SIGNAL \Mid|OC[28]~129_combout\ : std_logic;
SIGNAL \Mid|OC~130_combout\ : std_logic;
SIGNAL \Mid|BLAN|ForGenerate:27:ColumnBlock|Recur:Upper|Recur:Lower|bG~0_combout\ : std_logic;
SIGNAL \Mid|BLAN|ForGenerate:27:ColumnBlock|Recur:Upper|Recur:Lower|Recur:Upper|BP~4_combout\ : std_logic;
SIGNAL \Mid|BLAN|ForGenerate:27:ColumnBlock|Recur:Upper|Recur:Lower|bG~1_combout\ : std_logic;
SIGNAL \Mid|BLAN|ForGenerate:27:ColumnBlock|Recur:Upper|BP~0_combout\ : std_logic;
SIGNAL \Mid|BLAN|ForGenerate:27:ColumnBlock|Recur:Lower|bG~0_combout\ : std_logic;
SIGNAL \Mid|BLAN|ForGenerate:27:ColumnBlock|Recur:Lower|bG~1_combout\ : std_logic;
SIGNAL \Mid|OC[28]~131_combout\ : std_logic;
SIGNAL \Mid|BLAN|ForGenerate:27:ColumnBlock|Recur:Upper|Recur:Upper|bG~1_combout\ : std_logic;
SIGNAL \Mid|OC[28]~132_combout\ : std_logic;
SIGNAL \A[28]~input_o\ : std_logic;
SIGNAL \B[28]~input_o\ : std_logic;
SIGNAL \Mid|BLAN|ForGenerate:28:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\ : std_logic;
SIGNAL \Mid|OC[29]~133_combout\ : std_logic;
SIGNAL \Mid|BLAN|ForGenerate:28:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|BP~0_combout\ : std_logic;
SIGNAL \Mid|OC[29]~134_combout\ : std_logic;
SIGNAL \Mid|BLAN|ForGenerate:28:ColumnBlock|Recur:Upper|Recur:Upper|bG~0_combout\ : std_logic;
SIGNAL \Mid|OC[29]~135_combout\ : std_logic;
SIGNAL \Mid|BLAN|ForGenerate:28:ColumnBlock|Recur:Upper|BP~0_combout\ : std_logic;
SIGNAL \Mid|BLAN|ForGenerate:28:ColumnBlock|Recur:Upper|bG~0_combout\ : std_logic;
SIGNAL \Mid|OC[29]~136_combout\ : std_logic;
SIGNAL \Mid|OC[29]~137_combout\ : std_logic;
SIGNAL \A[29]~input_o\ : std_logic;
SIGNAL \B[29]~input_o\ : std_logic;
SIGNAL \Mid|BLAN|ForGenerate:29:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|BP~0_combout\ : std_logic;
SIGNAL \Mid|OC[30]~141_combout\ : std_logic;
SIGNAL \Mid|BLAN|ForGenerate:29:ColumnBlock|Recur:Lower|bG~1_combout\ : std_logic;
SIGNAL \Mid|BLAN|ForGenerate:29:ColumnBlock|Recur:Lower|bG~0_combout\ : std_logic;
SIGNAL \Mid|BLAN|ForGenerate:29:ColumnBlock|Recur:Lower|bG~2_combout\ : std_logic;
SIGNAL \Mid|BLAN|ForGenerate:29:ColumnBlock|Recur:Lower|Recur:Upper|BP~0_combout\ : std_logic;
SIGNAL \Mid|BLAN|ForGenerate:29:ColumnBlock|Recur:Lower|bG~3_combout\ : std_logic;
SIGNAL \Mid|OC[30]~142_combout\ : std_logic;
SIGNAL \Mid|OC~143_combout\ : std_logic;
SIGNAL \Mid|OC[30]~144_combout\ : std_logic;
SIGNAL \Mid|OC[30]~139_combout\ : std_logic;
SIGNAL \Mid|BLAN|ForGenerate:29:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\ : std_logic;
SIGNAL \Mid|OC[30]~138_combout\ : std_logic;
SIGNAL \Mid|OC[30]~140_combout\ : std_logic;
SIGNAL \Mid|OC[30]~145_combout\ : std_logic;
SIGNAL \B[30]~input_o\ : std_logic;
SIGNAL \A[30]~input_o\ : std_logic;
SIGNAL \Mid|BLAN|ForGenerate:20:ColumnBlock|Recur:Upper|bG~0_combout\ : std_logic;
SIGNAL \Mid|OC[31]~148_combout\ : std_logic;
SIGNAL \Mid|OC[31]~149_combout\ : std_logic;
SIGNAL \Mid|BLAN|ForGenerate:30:ColumnBlock|Recur:Upper|Recur:Upper|BP~0_combout\ : std_logic;
SIGNAL \Mid|OC[31]~150_combout\ : std_logic;
SIGNAL \Mid|BLAN|ForGenerate:30:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\ : std_logic;
SIGNAL \Mid|BLAN|ForGenerate:30:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|BP~0_combout\ : std_logic;
SIGNAL \Mid|OC[31]~146_combout\ : std_logic;
SIGNAL \Mid|OC[31]~147_combout\ : std_logic;
SIGNAL \Mid|OC[31]~151_combout\ : std_logic;
SIGNAL \Mid|BLAN|ForGenerate:30:ColumnBlock|Recur:Upper|BP~0_combout\ : std_logic;
SIGNAL \Mid|OC[31]~152_combout\ : std_logic;
SIGNAL \A[31]~input_o\ : std_logic;
SIGNAL \B[31]~input_o\ : std_logic;
SIGNAL \Mid|BLAN|ForGenerate:31:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\ : std_logic;
SIGNAL \Mid|BLAN|ForGenerate:36:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Lower|Recur:Upper|BP~2_combout\ : std_logic;
SIGNAL \Mid|OC[32]~153_combout\ : std_logic;
SIGNAL \Mid|OC[32]~154_combout\ : std_logic;
SIGNAL \Mid|BLAN|ForGenerate:31:ColumnBlock|Recur:Upper|Recur:Lower|Recur:Upper|BP~4_combout\ : std_logic;
SIGNAL \Mid|BLAN|ForGenerate:31:ColumnBlock|Recur:Upper|Recur:Lower|bG~0_combout\ : std_logic;
SIGNAL \Mid|BLAN|ForGenerate:31:ColumnBlock|Recur:Upper|Recur:Lower|bG~1_combout\ : std_logic;
SIGNAL \Mid|OC~155_combout\ : std_logic;
SIGNAL \Mid|BLAN|ForGenerate:31:ColumnBlock|bG~2_combout\ : std_logic;
SIGNAL \Mid|BLAN|ForGenerate:31:ColumnBlock|Recur:Lower|bG~combout\ : std_logic;
SIGNAL \Mid|OC[32]~156_combout\ : std_logic;
SIGNAL \Mid|BLAN|ForGenerate:36:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Lower|Recur:Upper|BP~3_combout\ : std_logic;
SIGNAL \Mid|OC[32]~399_combout\ : std_logic;
SIGNAL \Mid|OC[32]~157_combout\ : std_logic;
SIGNAL \A[32]~input_o\ : std_logic;
SIGNAL \B[32]~input_o\ : std_logic;
SIGNAL \A[33]~input_o\ : std_logic;
SIGNAL \B[33]~input_o\ : std_logic;
SIGNAL \Mid|OC[38]~158_combout\ : std_logic;
SIGNAL \Mid|BLAN|ForGenerate:32:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|BP~0_combout\ : std_logic;
SIGNAL \Mid|BLAN|ForGenerate:32:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\ : std_logic;
SIGNAL \Mid|BLAN|ForGenerate:32:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\ : std_logic;
SIGNAL \Mid|OC[44]~159_combout\ : std_logic;
SIGNAL \Mid|OC[33]~160_combout\ : std_logic;
SIGNAL \Mid|OC[33]~161_combout\ : std_logic;
SIGNAL \Bot|S[33]~68_combout\ : std_logic;
SIGNAL \Bot|S[33]~67_combout\ : std_logic;
SIGNAL \Bot|S[33]~69_combout\ : std_logic;
SIGNAL \A[34]~input_o\ : std_logic;
SIGNAL \B[34]~input_o\ : std_logic;
SIGNAL \Mid|BLAN|ForGenerate:33:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|BP~0_combout\ : std_logic;
SIGNAL \Mid|BLAN|ForGenerate:33:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|BP~0_combout\ : std_logic;
SIGNAL \Bot|S[34]~75_combout\ : std_logic;
SIGNAL \Mid|BLAN|ForGenerate:33:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\ : std_logic;
SIGNAL \Mid|OC[51]~162_combout\ : std_logic;
SIGNAL \Bot|S[34]~132_combout\ : std_logic;
SIGNAL \Bot|S[34]~74_combout\ : std_logic;
SIGNAL \Bot|S[34]~70_combout\ : std_logic;
SIGNAL \Bot|S[34]~71_combout\ : std_logic;
SIGNAL \Bot|S[34]~72_combout\ : std_logic;
SIGNAL \Bot|S[34]~73_combout\ : std_logic;
SIGNAL \Mid|BLAN|ForGenerate:24:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\ : std_logic;
SIGNAL \Mid|OC[34]~163_combout\ : std_logic;
SIGNAL \Bot|S[34]~76_combout\ : std_logic;
SIGNAL \Bot|S[34]~77_combout\ : std_logic;
SIGNAL \Mid|BLAN|ForGenerate:34:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\ : std_logic;
SIGNAL \Mid|BLAN|ForGenerate:34:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\ : std_logic;
SIGNAL \Mid|OC[52]~164_combout\ : std_logic;
SIGNAL \B[35]~input_o\ : std_logic;
SIGNAL \A[35]~input_o\ : std_logic;
SIGNAL \Bot|S[35]~78_combout\ : std_logic;
SIGNAL \Bot|S[35]~79_combout\ : std_logic;
SIGNAL \Bot|S[35]~80_combout\ : std_logic;
SIGNAL \Bot|S[35]~81_combout\ : std_logic;
SIGNAL \Bot|S[35]~83_combout\ : std_logic;
SIGNAL \Mid|BLAN|ForGenerate:34:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|BP~0_combout\ : std_logic;
SIGNAL \Bot|S[35]~84_combout\ : std_logic;
SIGNAL \Mid|BLAN|ForGenerate:34:ColumnBlock|Recur:Upper|Recur:Lower|Recur:Upper|Recur:Upper|bG~0_combout\ : std_logic;
SIGNAL \Bot|S[35]~85_combout\ : std_logic;
SIGNAL \Bot|S[35]~86_combout\ : std_logic;
SIGNAL \Bot|S[35]~87_combout\ : std_logic;
SIGNAL \Bot|S[35]~88_combout\ : std_logic;
SIGNAL \Bot|S[35]~82_combout\ : std_logic;
SIGNAL \Bot|S[35]~89_combout\ : std_logic;
SIGNAL \Bot|S[35]~91_combout\ : std_logic;
SIGNAL \Bot|S[35]~90_combout\ : std_logic;
SIGNAL \Bot|S[35]~133_combout\ : std_logic;
SIGNAL \Bot|S[35]~92_combout\ : std_logic;
SIGNAL \A[36]~input_o\ : std_logic;
SIGNAL \Mid|OC[36]~166_combout\ : std_logic;
SIGNAL \Mid|OC[36]~167_combout\ : std_logic;
SIGNAL \Mid|OC[36]~168_combout\ : std_logic;
SIGNAL \Mid|BLAN|ForGenerate:35:ColumnBlock|Recur:Upper|Recur:Lower|Recur:Upper|BP~0_combout\ : std_logic;
SIGNAL \Mid|OC[36]~169_combout\ : std_logic;
SIGNAL \Mid|OC[36]~170_combout\ : std_logic;
SIGNAL \Mid|BLAN|ForGenerate:35:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|BP~0_combout\ : std_logic;
SIGNAL \Mid|BLAN|ForGenerate:35:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|BP~0_combout\ : std_logic;
SIGNAL \Mid|OC[36]~171_combout\ : std_logic;
SIGNAL \Mid|BLAN|ForGenerate:35:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\ : std_logic;
SIGNAL \Mid|BLAN|ForGenerate:47:ColumnBlock|Recur:Upper|Recur:Lower|bG~0_combout\ : std_logic;
SIGNAL \Mid|OC[36]~172_combout\ : std_logic;
SIGNAL \Mid|OC[36]~165_combout\ : std_logic;
SIGNAL \Mid|OC[36]~173_combout\ : std_logic;
SIGNAL \B[36]~input_o\ : std_logic;
SIGNAL \A[37]~input_o\ : std_logic;
SIGNAL \B[37]~input_o\ : std_logic;
SIGNAL \Mid|BLAN|ForGenerate:51:ColumnBlock|Recur:Upper|Recur:Lower|Recur:Upper|Recur:Upper|BP~0_combout\ : std_logic;
SIGNAL \Mid|OC[60]~400_combout\ : std_logic;
SIGNAL \Bot|S[37]~134_combout\ : std_logic;
SIGNAL \Bot|S[37]~98_combout\ : std_logic;
SIGNAL \Mid|OC[43]~174_combout\ : std_logic;
SIGNAL \Bot|S[37]~93_combout\ : std_logic;
SIGNAL \Bot|S[37]~94_combout\ : std_logic;
SIGNAL \Mid|BLAN|ForGenerate:36:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\ : std_logic;
SIGNAL \Mid|OC[50]~175_combout\ : std_logic;
SIGNAL \Mid|BLAN|ForGenerate:36:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|BP~2_combout\ : std_logic;
SIGNAL \Bot|S[37]~95_combout\ : std_logic;
SIGNAL \Bot|S[37]~96_combout\ : std_logic;
SIGNAL \Bot|S[37]~97_combout\ : std_logic;
SIGNAL \Bot|S[37]~99_combout\ : std_logic;
SIGNAL \Mid|BLAN|ForGenerate:37:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\ : std_logic;
SIGNAL \Mid|BLAN|ForGenerate:37:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\ : std_logic;
SIGNAL \Mid|BLAN|ForGenerate:40:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\ : std_logic;
SIGNAL \Mid|OC[38]~177_combout\ : std_logic;
SIGNAL \Mid|OC[38]~401_combout\ : std_logic;
SIGNAL \Bot|S[38]~100_combout\ : std_logic;
SIGNAL \Mid|BLAN|ForGenerate:32:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~1_combout\ : std_logic;
SIGNAL \Mid|OC[38]~178_combout\ : std_logic;
SIGNAL \Mid|OC[38]~179_combout\ : std_logic;
SIGNAL \Mid|BLAN|ForGenerate:49:ColumnBlock|Recur:Upper|Recur:Lower|Recur:Lower|bG~2_combout\ : std_logic;
SIGNAL \Mid|OC[38]~180_combout\ : std_logic;
SIGNAL \Bot|S[38]~101_combout\ : std_logic;
SIGNAL \B[38]~input_o\ : std_logic;
SIGNAL \A[38]~input_o\ : std_logic;
SIGNAL \Mid|OC[44]~176_combout\ : std_logic;
SIGNAL \Bot|S[38]~102_combout\ : std_logic;
SIGNAL \Mid|BLAN|ForGenerate:38:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|BP~0_combout\ : std_logic;
SIGNAL \Mid|BLAN|ForGenerate:38:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|BP~0_combout\ : std_logic;
SIGNAL \Mid|BLAN|ForGenerate:38:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\ : std_logic;
SIGNAL \Mid|BLAN|ForGenerate:38:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\ : std_logic;
SIGNAL \Mid|OC[45]~187_combout\ : std_logic;
SIGNAL \Mid|OC[39]~186_combout\ : std_logic;
SIGNAL \Mid|OC[39]~188_combout\ : std_logic;
SIGNAL \Mid|OC[39]~181_combout\ : std_logic;
SIGNAL \Mid|BLAN|ForGenerate:38:ColumnBlock|Recur:Upper|Recur:Lower|Recur:Upper|Recur:Upper|BP~0_combout\ : std_logic;
SIGNAL \Mid|OC[39]~184_combout\ : std_logic;
SIGNAL \Mid|BLAN|ForGenerate:51:ColumnBlock|Recur:Upper|Recur:Lower|bG~0_combout\ : std_logic;
SIGNAL \Mid|OC[39]~185_combout\ : std_logic;
SIGNAL \B[39]~input_o\ : std_logic;
SIGNAL \A[39]~input_o\ : std_logic;
SIGNAL \Mid|OC[39]~182_combout\ : std_logic;
SIGNAL \Mid|OC[39]~183_combout\ : std_logic;
SIGNAL \Mid|BLAN|ForGenerate:39:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|BP~2_combout\ : std_logic;
SIGNAL \Mid|BLAN|ForGenerate:39:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\ : std_logic;
SIGNAL \Mid|BLAN|ForGenerate:42:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|bG~2_combout\ : std_logic;
SIGNAL \Mid|OC[40]~189_combout\ : std_logic;
SIGNAL \B[40]~input_o\ : std_logic;
SIGNAL \A[40]~input_o\ : std_logic;
SIGNAL \Mid|BLAN|ForGenerate:39:ColumnBlock|Recur:Upper|Recur:Lower|Recur:Upper|BP~2_combout\ : std_logic;
SIGNAL \Mid|BLAN|ForGenerate:39:ColumnBlock|Recur:Upper|Recur:Lower|bG~0_combout\ : std_logic;
SIGNAL \Mid|BLAN|ForGenerate:39:ColumnBlock|Recur:Upper|Recur:Lower|bG~1_combout\ : std_logic;
SIGNAL \Mid|BLAN|ForGenerate:39:ColumnBlock|Recur:Upper|Recur:Lower|bG~2_combout\ : std_logic;
SIGNAL \Mid|OC[40]~194_combout\ : std_logic;
SIGNAL \Mid|OC[41]~195_combout\ : std_logic;
SIGNAL \Bot|S[40]~103_combout\ : std_logic;
SIGNAL \Mid|BLAN|ForGenerate:19:ColumnBlock|Recur:Upper|Recur:Upper|bG~2_combout\ : std_logic;
SIGNAL \Mid|OC[41]~190_combout\ : std_logic;
SIGNAL \Mid|OC[41]~191_combout\ : std_logic;
SIGNAL \Mid|OC[41]~192_combout\ : std_logic;
SIGNAL \Mid|OC[41]~193_combout\ : std_logic;
SIGNAL \Bot|S[40]~104_combout\ : std_logic;
SIGNAL \Bot|S[40]~105_combout\ : std_logic;
SIGNAL \Bot|S[41]~106_combout\ : std_logic;
SIGNAL \Mid|BLAN|ForGenerate:59:ColumnBlock|Recur:Upper|Recur:Lower|Recur:Upper|BP~0_combout\ : std_logic;
SIGNAL \Mid|OC[44]~196_combout\ : std_logic;
SIGNAL \Mid|BLAN|ForGenerate:40:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|bG~1_combout\ : std_logic;
SIGNAL \Mid|BLAN|ForGenerate:43:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\ : std_logic;
SIGNAL \Bot|S[41]~107_combout\ : std_logic;
SIGNAL \A[41]~input_o\ : std_logic;
SIGNAL \Mid|BLAN|ForGenerate:40:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\ : std_logic;
SIGNAL \B[41]~input_o\ : std_logic;
SIGNAL \Bot|S[41]~108_combout\ : std_logic;
SIGNAL \Mid|OC[53]~197_combout\ : std_logic;
SIGNAL \Mid|OC[49]~402_combout\ : std_logic;
SIGNAL \Mid|OC[42]~199_combout\ : std_logic;
SIGNAL \Mid|OC[42]~200_combout\ : std_logic;
SIGNAL \Mid|OC[42]~201_combout\ : std_logic;
SIGNAL \Bot|S[42]~109_combout\ : std_logic;
SIGNAL \Bot|S[42]~110_combout\ : std_logic;
SIGNAL \B[42]~input_o\ : std_logic;
SIGNAL \A[42]~input_o\ : std_logic;
SIGNAL \Mid|BLAN|ForGenerate:41:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|BP~combout\ : std_logic;
SIGNAL \Mid|BLAN|ForGenerate:41:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\ : std_logic;
SIGNAL \Mid|BLAN|ForGenerate:41:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\ : std_logic;
SIGNAL \Mid|BLAN|ForGenerate:41:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\ : std_logic;
SIGNAL \Mid|OC[42]~198_combout\ : std_logic;
SIGNAL \Bot|S[42]~111_combout\ : std_logic;
SIGNAL \A[43]~input_o\ : std_logic;
SIGNAL \Mid|BLAN|ForGenerate:42:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|BP~0_combout\ : std_logic;
SIGNAL \Mid|OC[43]~207_combout\ : std_logic;
SIGNAL \Mid|OC[55]~206_combout\ : std_logic;
SIGNAL \Mid|BLAN|ForGenerate:42:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|bG~3_combout\ : std_logic;
SIGNAL \Mid|BLAN|ForGenerate:42:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\ : std_logic;
SIGNAL \Mid|OC[54]~208_combout\ : std_logic;
SIGNAL \Mid|OC[43]~209_combout\ : std_logic;
SIGNAL \Mid|OC[43]~202_combout\ : std_logic;
SIGNAL \Mid|OC[43]~205_combout\ : std_logic;
SIGNAL \Mid|OC[43]~210_combout\ : std_logic;
SIGNAL \Mid|OC[43]~203_combout\ : std_logic;
SIGNAL \Mid|OC[43]~204_combout\ : std_logic;
SIGNAL \B[43]~input_o\ : std_logic;
SIGNAL \B[44]~input_o\ : std_logic;
SIGNAL \A[44]~input_o\ : std_logic;
SIGNAL \Mid|BLAN|ForGenerate:43:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|BP~0_combout\ : std_logic;
SIGNAL \Mid|BLAN|ForGenerate:43:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\ : std_logic;
SIGNAL \Mid|OC[55]~217_combout\ : std_logic;
SIGNAL \Mid|OC[44]~211_combout\ : std_logic;
SIGNAL \Mid|OC[44]~218_combout\ : std_logic;
SIGNAL \Mid|BLAN|ForGenerate:43:ColumnBlock|Recur:Upper|Recur:Lower|bG~0_combout\ : std_logic;
SIGNAL \Mid|OC[44]~213_combout\ : std_logic;
SIGNAL \Mid|BLAN|ForGenerate:43:ColumnBlock|Recur:Upper|Recur:Lower|Recur:Upper|bG~0_combout\ : std_logic;
SIGNAL \Mid|OC[44]~212_combout\ : std_logic;
SIGNAL \Mid|OC[44]~214_combout\ : std_logic;
SIGNAL \Mid|OC[44]~215_combout\ : std_logic;
SIGNAL \Mid|BLAN|ForGenerate:50:ColumnBlock|Recur:Upper|Recur:Lower|Recur:Upper|Recur:Upper|BP~0_combout\ : std_logic;
SIGNAL \Mid|OC[44]~216_combout\ : std_logic;
SIGNAL \Mid|OC[44]~219_combout\ : std_logic;
SIGNAL \A[45]~input_o\ : std_logic;
SIGNAL \B[45]~input_o\ : std_logic;
SIGNAL \Mid|OC[45]~403_combout\ : std_logic;
SIGNAL \Mid|BLAN|ForGenerate:35:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\ : std_logic;
SIGNAL \Mid|OC[45]~222_combout\ : std_logic;
SIGNAL \Mid|OC[45]~223_combout\ : std_logic;
SIGNAL \Mid|OC[45]~220_combout\ : std_logic;
SIGNAL \Mid|BLAN|ForGenerate:44:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\ : std_logic;
SIGNAL \Mid|BLAN|ForGenerate:44:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\ : std_logic;
SIGNAL \Mid|BLAN|ForGenerate:48:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\ : std_logic;
SIGNAL \Mid|OC[45]~221_combout\ : std_logic;
SIGNAL \Mid|BLAN|ForGenerate:45:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|BP~combout\ : std_logic;
SIGNAL \Mid|OC[58]~224_combout\ : std_logic;
SIGNAL \Mid|OC[46]~225_combout\ : std_logic;
SIGNAL \Mid|OC[46]~227_combout\ : std_logic;
SIGNAL \Mid|OC[50]~226_combout\ : std_logic;
SIGNAL \Mid|OC[46]~228_combout\ : std_logic;
SIGNAL \A[46]~input_o\ : std_logic;
SIGNAL \Mid|OC[46]~230_combout\ : std_logic;
SIGNAL \Mid|OC[50]~229_combout\ : std_logic;
SIGNAL \Mid|OC[46]~231_combout\ : std_logic;
SIGNAL \Mid|OC[46]~232_combout\ : std_logic;
SIGNAL \Mid|BLAN|ForGenerate:45:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\ : std_logic;
SIGNAL \Mid|BLAN|ForGenerate:49:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\ : std_logic;
SIGNAL \Mid|OC[46]~233_combout\ : std_logic;
SIGNAL \Mid|OC[46]~234_combout\ : std_logic;
SIGNAL \Mid|OC[46]~235_combout\ : std_logic;
SIGNAL \B[46]~input_o\ : std_logic;
SIGNAL \Mid|BLAN|ForGenerate:48:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|bG~1_combout\ : std_logic;
SIGNAL \Mid|BLAN|ForGenerate:53:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Lower|Recur:Upper|BP~0_combout\ : std_logic;
SIGNAL \Mid|OC[47]~404_combout\ : std_logic;
SIGNAL \Mid|OC[47]~405_combout\ : std_logic;
SIGNAL \Mid|OC[47]~239_combout\ : std_logic;
SIGNAL \Mid|BLAN|ForGenerate:36:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Lower|Recur:Upper|bG~0_combout\ : std_logic;
SIGNAL \Mid|OC[47]~236_combout\ : std_logic;
SIGNAL \Mid|OC[47]~237_combout\ : std_logic;
SIGNAL \Mid|OC[47]~238_combout\ : std_logic;
SIGNAL \Mid|OC[47]~240_combout\ : std_logic;
SIGNAL \Mid|OC[47]~241_combout\ : std_logic;
SIGNAL \Mid|OC[47]~242_combout\ : std_logic;
SIGNAL \B[47]~input_o\ : std_logic;
SIGNAL \A[47]~input_o\ : std_logic;
SIGNAL \Mid|BLAN|ForGenerate:43:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\ : std_logic;
SIGNAL \Mid|OC[47]~243_combout\ : std_logic;
SIGNAL \Mid|BLAN|ForGenerate:46:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\ : std_logic;
SIGNAL \Mid|BLAN|ForGenerate:50:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\ : std_logic;
SIGNAL \Mid|OC[47]~244_combout\ : std_logic;
SIGNAL \Mid|BLAN|ForGenerate:47:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|BP~2_combout\ : std_logic;
SIGNAL \Mid|BLAN|ForGenerate:51:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\ : std_logic;
SIGNAL \Mid|OC[48]~248_combout\ : std_logic;
SIGNAL \Mid|OC[48]~249_combout\ : std_logic;
SIGNAL \Mid|BLAN|ForGenerate:47:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\ : std_logic;
SIGNAL \Mid|BLAN|ForGenerate:47:ColumnBlock|Recur:Upper|Recur:Lower|bG~4_combout\ : std_logic;
SIGNAL \Mid|BLAN|ForGenerate:47:ColumnBlock|Recur:Upper|Recur:Lower|bG~1_combout\ : std_logic;
SIGNAL \Mid|BLAN|ForGenerate:47:ColumnBlock|Recur:Upper|Recur:Lower|bG~2_combout\ : std_logic;
SIGNAL \Mid|BLAN|ForGenerate:47:ColumnBlock|Recur:Upper|Recur:Lower|bG~3_combout\ : std_logic;
SIGNAL \Mid|OC[48]~250_combout\ : std_logic;
SIGNAL \Mid|OC[48]~251_combout\ : std_logic;
SIGNAL \B[48]~input_o\ : std_logic;
SIGNAL \A[48]~input_o\ : std_logic;
SIGNAL \Mid|OC[49]~246_combout\ : std_logic;
SIGNAL \Mid|BLAN|ForGenerate:23:ColumnBlock|Recur:Lower|bG~5_combout\ : std_logic;
SIGNAL \Mid|OC[49]~245_combout\ : std_logic;
SIGNAL \Mid|OC[49]~247_combout\ : std_logic;
SIGNAL \B[49]~input_o\ : std_logic;
SIGNAL \A[49]~input_o\ : std_logic;
SIGNAL \Mid|BLAN|ForGenerate:48:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|BP~0_combout\ : std_logic;
SIGNAL \Mid|BLAN|ForGenerate:48:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|BP~0_combout\ : std_logic;
SIGNAL \Mid|BLAN|ForGenerate:48:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\ : std_logic;
SIGNAL \Mid|OC[49]~252_combout\ : std_logic;
SIGNAL \Mid|OC[49]~253_combout\ : std_logic;
SIGNAL \Mid|OC[49]~254_combout\ : std_logic;
SIGNAL \B[50]~input_o\ : std_logic;
SIGNAL \A[50]~input_o\ : std_logic;
SIGNAL \Mid|BLAN|ForGenerate:49:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|BP~combout\ : std_logic;
SIGNAL \Mid|BLAN|ForGenerate:49:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|bG~1_combout\ : std_logic;
SIGNAL \Mid|BLAN|ForGenerate:49:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\ : std_logic;
SIGNAL \Mid|OC[50]~255_combout\ : std_logic;
SIGNAL \Mid|OC[50]~256_combout\ : std_logic;
SIGNAL \Mid|OC[58]~406_combout\ : std_logic;
SIGNAL \Mid|OC[50]~258_combout\ : std_logic;
SIGNAL \Mid|BLAN|ForGenerate:49:ColumnBlock|Recur:Upper|Recur:Lower|Recur:Lower|bG~3_combout\ : std_logic;
SIGNAL \Mid|OC[50]~259_combout\ : std_logic;
SIGNAL \Mid|OC[51]~260_combout\ : std_logic;
SIGNAL \Bot|S[50]~112_combout\ : std_logic;
SIGNAL \Mid|OC[58]~257_combout\ : std_logic;
SIGNAL \Bot|S[50]~113_combout\ : std_logic;
SIGNAL \Bot|S[50]~114_combout\ : std_logic;
SIGNAL \A[51]~input_o\ : std_logic;
SIGNAL \B[51]~input_o\ : std_logic;
SIGNAL \Mid|BLAN|ForGenerate:50:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|BP~combout\ : std_logic;
SIGNAL \Mid|BLAN|ForGenerate:50:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|bG~1_combout\ : std_logic;
SIGNAL \Mid|OC[51]~262_combout\ : std_logic;
SIGNAL \Mid|BLAN|ForGenerate:50:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\ : std_logic;
SIGNAL \Mid|OC[63]~264_combout\ : std_logic;
SIGNAL \Mid|OC[51]~265_combout\ : std_logic;
SIGNAL \Mid|OC[51]~263_combout\ : std_logic;
SIGNAL \Mid|OC[51]~266_combout\ : std_logic;
SIGNAL \Mid|OC[51]~267_combout\ : std_logic;
SIGNAL \Mid|OC[51]~261_combout\ : std_logic;
SIGNAL \Mid|OC[56]~268_combout\ : std_logic;
SIGNAL \Mid|BLAN|ForGenerate:51:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|BP~0_combout\ : std_logic;
SIGNAL \Mid|BLAN|ForGenerate:51:ColumnBlock|Recur:Upper|Recur:Lower|Recur:Upper|BP~0_combout\ : std_logic;
SIGNAL \Mid|OC[52]~271_combout\ : std_logic;
SIGNAL \Mid|OC[52]~272_combout\ : std_logic;
SIGNAL \Mid|OC[52]~273_combout\ : std_logic;
SIGNAL \Mid|BLAN|ForGenerate:51:ColumnBlock|Recur:Upper|Recur:Lower|Recur:Upper|Recur:Upper|BP~1_combout\ : std_logic;
SIGNAL \Mid|OC[52]~274_combout\ : std_logic;
SIGNAL \Mid|OC[52]~270_combout\ : std_logic;
SIGNAL \Mid|OC[52]~275_combout\ : std_logic;
SIGNAL \Bot|S[52]~115_combout\ : std_logic;
SIGNAL \Bot|S[52]~116_combout\ : std_logic;
SIGNAL \B[52]~input_o\ : std_logic;
SIGNAL \A[52]~input_o\ : std_logic;
SIGNAL \Mid|BLAN|ForGenerate:51:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\ : std_logic;
SIGNAL \Mid|OC[60]~269_combout\ : std_logic;
SIGNAL \Bot|S[52]~117_combout\ : std_logic;
SIGNAL \Mid|BLAN|ForGenerate:51:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|BP~1_combout\ : std_logic;
SIGNAL \Mid|OC[53]~407_combout\ : std_logic;
SIGNAL \Mid|BLAN|ForGenerate:52:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\ : std_logic;
SIGNAL \Mid|OC[53]~276_combout\ : std_logic;
SIGNAL \Mid|OC[53]~277_combout\ : std_logic;
SIGNAL \Mid|OC[53]~278_combout\ : std_logic;
SIGNAL \Mid|OC[53]~279_combout\ : std_logic;
SIGNAL \Mid|OC[53]~280_combout\ : std_logic;
SIGNAL \Mid|OC[53]~281_combout\ : std_logic;
SIGNAL \Bot|S[53]~118_combout\ : std_logic;
SIGNAL \Bot|S[53]~119_combout\ : std_logic;
SIGNAL \B[53]~input_o\ : std_logic;
SIGNAL \A[53]~input_o\ : std_logic;
SIGNAL \Bot|S[53]~120_combout\ : std_logic;
SIGNAL \A[54]~input_o\ : std_logic;
SIGNAL \B[54]~input_o\ : std_logic;
SIGNAL \Mid|OC[63]~288_combout\ : std_logic;
SIGNAL \Mid|BLAN|ForGenerate:53:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|BP~0_combout\ : std_logic;
SIGNAL \Mid|OC[54]~408_combout\ : std_logic;
SIGNAL \Mid|BLAN|ForGenerate:53:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Lower|Recur:Upper|BP~1_combout\ : std_logic;
SIGNAL \Mid|OC[54]~289_combout\ : std_logic;
SIGNAL \Mid|OC[54]~290_combout\ : std_logic;
SIGNAL \Mid|OC[54]~291_combout\ : std_logic;
SIGNAL \Mid|OC[54]~292_combout\ : std_logic;
SIGNAL \Mid|BLAN|ForGenerate:53:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\ : std_logic;
SIGNAL \Mid|OC[54]~286_combout\ : std_logic;
SIGNAL \Mid|OC[54]~285_combout\ : std_logic;
SIGNAL \Mid|OC[54]~287_combout\ : std_logic;
SIGNAL \Mid|OC[54]~282_combout\ : std_logic;
SIGNAL \Mid|OC[54]~283_combout\ : std_logic;
SIGNAL \Mid|OC[54]~409_combout\ : std_logic;
SIGNAL \Mid|OC[54]~284_combout\ : std_logic;
SIGNAL \Mid|OC[55]~410_combout\ : std_logic;
SIGNAL \Mid|BLAN|ForGenerate:54:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|BP~0_combout\ : std_logic;
SIGNAL \Mid|OC[55]~411_combout\ : std_logic;
SIGNAL \Mid|OC[55]~293_combout\ : std_logic;
SIGNAL \Mid|OC[55]~294_combout\ : std_logic;
SIGNAL \Mid|OC[55]~295_combout\ : std_logic;
SIGNAL \A[55]~input_o\ : std_logic;
SIGNAL \Mid|OC[55]~303_combout\ : std_logic;
SIGNAL \Mid|OC[55]~298_combout\ : std_logic;
SIGNAL \Mid|BLAN|ForGenerate:54:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Lower|Recur:Upper|BP~0_combout\ : std_logic;
SIGNAL \Mid|OC[55]~299_combout\ : std_logic;
SIGNAL \Mid|BLAN|ForGenerate:54:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\ : std_logic;
SIGNAL \Mid|OC[55]~301_combout\ : std_logic;
SIGNAL \Mid|OC[55]~300_combout\ : std_logic;
SIGNAL \Mid|OC[55]~302_combout\ : std_logic;
SIGNAL \Mid|OC[55]~296_combout\ : std_logic;
SIGNAL \Mid|OC[55]~297_combout\ : std_logic;
SIGNAL \Mid|OC[60]~304_combout\ : std_logic;
SIGNAL \Mid|OC[55]~305_combout\ : std_logic;
SIGNAL \B[55]~input_o\ : std_logic;
SIGNAL \Mid|BLAN|ForGenerate:55:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~4_combout\ : std_logic;
SIGNAL \B[56]~input_o\ : std_logic;
SIGNAL \A[56]~input_o\ : std_logic;
SIGNAL \Bot|S[56]~121_combout\ : std_logic;
SIGNAL \Mid|OC[56]~306_combout\ : std_logic;
SIGNAL \Mid|OC[56]~309_combout\ : std_logic;
SIGNAL \Mid|BLAN|ForGenerate:55:ColumnBlock|Recur:Upper|Recur:Lower|bG~0_combout\ : std_logic;
SIGNAL \Mid|OC[56]~310_combout\ : std_logic;
SIGNAL \Mid|OC[42]~307_combout\ : std_logic;
SIGNAL \Mid|OC[56]~308_combout\ : std_logic;
SIGNAL \Mid|OC[56]~311_combout\ : std_logic;
SIGNAL \Mid|OC[56]~312_combout\ : std_logic;
SIGNAL \Mid|OC[56]~313_combout\ : std_logic;
SIGNAL \Mid|BLAN|ForGenerate:55:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|BP~0_combout\ : std_logic;
SIGNAL \Bot|S[56]~122_combout\ : std_logic;
SIGNAL \Mid|BLAN|ForGenerate:55:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\ : std_logic;
SIGNAL \Bot|S[56]~123_combout\ : std_logic;
SIGNAL \A[57]~input_o\ : std_logic;
SIGNAL \B[57]~input_o\ : std_logic;
SIGNAL \Mid|OC[57]~314_combout\ : std_logic;
SIGNAL \Mid|BLAN|ForGenerate:56:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\ : std_logic;
SIGNAL \Mid|OC[57]~315_combout\ : std_logic;
SIGNAL \Bot|S[57]~125_combout\ : std_logic;
SIGNAL \Bot|S[57]~124_combout\ : std_logic;
SIGNAL \Bot|S[57]~126_combout\ : std_logic;
SIGNAL \Mid|OC[58]~322_combout\ : std_logic;
SIGNAL \Mid|OC[58]~323_combout\ : std_logic;
SIGNAL \Mid|OC[58]~316_combout\ : std_logic;
SIGNAL \Mid|BLAN|ForGenerate:57:ColumnBlock|Recur:Upper|Recur:Lower|Recur:Lower|bG~0_combout\ : std_logic;
SIGNAL \Mid|OC[58]~317_combout\ : std_logic;
SIGNAL \Mid|OC[58]~318_combout\ : std_logic;
SIGNAL \Mid|OC[58]~319_combout\ : std_logic;
SIGNAL \Mid|OC[58]~320_combout\ : std_logic;
SIGNAL \Mid|OC[58]~321_combout\ : std_logic;
SIGNAL \A[58]~input_o\ : std_logic;
SIGNAL \B[58]~input_o\ : std_logic;
SIGNAL \Mid|BLAN|ForGenerate:57:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\ : std_logic;
SIGNAL \Mid|BLAN|ForGenerate:57:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~4_combout\ : std_logic;
SIGNAL \Mid|OC[58]~324_combout\ : std_logic;
SIGNAL \Mid|OC[58]~412_combout\ : std_logic;
SIGNAL \Mid|OC[58]~325_combout\ : std_logic;
SIGNAL \Mid|OC[59]~332_combout\ : std_logic;
SIGNAL \Mid|OC[61]~414_combout\ : std_logic;
SIGNAL \Mid|BLAN|ForGenerate:58:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\ : std_logic;
SIGNAL \Mid|OC[59]~333_combout\ : std_logic;
SIGNAL \Mid|OC[59]~334_combout\ : std_logic;
SIGNAL \Mid|OC[59]~326_combout\ : std_logic;
SIGNAL \Mid|OC[59]~327_combout\ : std_logic;
SIGNAL \Mid|OC[59]~413_combout\ : std_logic;
SIGNAL \Mid|OC[59]~328_combout\ : std_logic;
SIGNAL \Mid|OC[59]~329_combout\ : std_logic;
SIGNAL \Mid|OC[59]~330_combout\ : std_logic;
SIGNAL \Mid|OC[59]~331_combout\ : std_logic;
SIGNAL \A[59]~input_o\ : std_logic;
SIGNAL \B[59]~input_o\ : std_logic;
SIGNAL \Mid|BLAN|ForGenerate:59:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\ : std_logic;
SIGNAL \Mid|OC[60]~339_combout\ : std_logic;
SIGNAL \Mid|BLAN|ForGenerate:59:ColumnBlock|Recur:Upper|Recur:Lower|Recur:Upper|BP~1_combout\ : std_logic;
SIGNAL \Mid|OC[60]~338_combout\ : std_logic;
SIGNAL \Mid|BLAN|ForGenerate:59:ColumnBlock|Recur:Upper|Recur:Lower|bG~0_combout\ : std_logic;
SIGNAL \Mid|OC[60]~337_combout\ : std_logic;
SIGNAL \Mid|OC[60]~340_combout\ : std_logic;
SIGNAL \Mid|OC[60]~336_combout\ : std_logic;
SIGNAL \Mid|OC[61]~341_combout\ : std_logic;
SIGNAL \Mid|OC[60]~415_combout\ : std_logic;
SIGNAL \Mid|OC[60]~342_combout\ : std_logic;
SIGNAL \Mid|OC[61]~335_combout\ : std_logic;
SIGNAL \Bot|S[60]~127_combout\ : std_logic;
SIGNAL \A[60]~input_o\ : std_logic;
SIGNAL \B[60]~input_o\ : std_logic;
SIGNAL \Bot|S[60]~128_combout\ : std_logic;
SIGNAL \Mid|BLAN|ForGenerate:60:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\ : std_logic;
SIGNAL \Mid|OC[61]~343_combout\ : std_logic;
SIGNAL \Mid|OC[61]~348_combout\ : std_logic;
SIGNAL \Mid|OC[61]~347_combout\ : std_logic;
SIGNAL \Mid|OC[61]~349_combout\ : std_logic;
SIGNAL \Mid|OC[61]~350_combout\ : std_logic;
SIGNAL \Mid|OC[61]~345_combout\ : std_logic;
SIGNAL \Mid|OC[61]~344_combout\ : std_logic;
SIGNAL \Mid|OC[61]~346_combout\ : std_logic;
SIGNAL \B[61]~input_o\ : std_logic;
SIGNAL \A[61]~input_o\ : std_logic;
SIGNAL \Mid|OC[62]~363_combout\ : std_logic;
SIGNAL \Mid|OC[62]~351_combout\ : std_logic;
SIGNAL \Mid|OC[62]~357_combout\ : std_logic;
SIGNAL \Mid|OC[62]~358_combout\ : std_logic;
SIGNAL \Mid|OC[62]~359_combout\ : std_logic;
SIGNAL \Mid|OC[62]~360_combout\ : std_logic;
SIGNAL \Mid|OC[62]~355_combout\ : std_logic;
SIGNAL \Mid|OC[62]~356_combout\ : std_logic;
SIGNAL \Mid|OC[62]~352_combout\ : std_logic;
SIGNAL \Mid|BLAN|ForGenerate:33:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\ : std_logic;
SIGNAL \Mid|OC[62]~353_combout\ : std_logic;
SIGNAL \Mid|OC[62]~354_combout\ : std_logic;
SIGNAL \Mid|OC[62]~361_combout\ : std_logic;
SIGNAL \Mid|OC[62]~362_combout\ : std_logic;
SIGNAL \A[62]~input_o\ : std_logic;
SIGNAL \B[62]~input_o\ : std_logic;
SIGNAL \Mid|OC[62]~364_combout\ : std_logic;
SIGNAL \Mid|OC[62]~365_combout\ : std_logic;
SIGNAL \Mid|BLAN|ForGenerate:61:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\ : std_logic;
SIGNAL \Mid|OC[62]~366_combout\ : std_logic;
SIGNAL \Mid|OC[62]~367_combout\ : std_logic;
SIGNAL \B[63]~input_o\ : std_logic;
SIGNAL \A[63]~input_o\ : std_logic;
SIGNAL \Mid|OC[63]~369_combout\ : std_logic;
SIGNAL \Mid|OC[63]~370_combout\ : std_logic;
SIGNAL \Mid|OC[63]~378_combout\ : std_logic;
SIGNAL \Mid|OC[63]~379_combout\ : std_logic;
SIGNAL \Mid|OC[63]~380_combout\ : std_logic;
SIGNAL \Mid|OC[63]~381_combout\ : std_logic;
SIGNAL \Mid|OC[63]~377_combout\ : std_logic;
SIGNAL \Mid|OC[63]~382_combout\ : std_logic;
SIGNAL \Mid|OC[63]~371_combout\ : std_logic;
SIGNAL \Mid|OC[63]~372_combout\ : std_logic;
SIGNAL \Mid|OC[63]~374_combout\ : std_logic;
SIGNAL \Mid|OC[63]~375_combout\ : std_logic;
SIGNAL \Mid|OC[63]~376_combout\ : std_logic;
SIGNAL \Mid|OC[63]~368_combout\ : std_logic;
SIGNAL \Mid|OC[63]~373_combout\ : std_logic;
SIGNAL \Mid|OC[63]~383_combout\ : std_logic;
SIGNAL \Mid|OC[64]~416_combout\ : std_logic;
SIGNAL \Mid|OC[64]~390_combout\ : std_logic;
SIGNAL \Mid|OC[64]~391_combout\ : std_logic;
SIGNAL \Mid|OC[64]~384_combout\ : std_logic;
SIGNAL \Mid|OC[64]~417_combout\ : std_logic;
SIGNAL \Mid|OC[64]~419_combout\ : std_logic;
SIGNAL \Mid|OC[64]~387_combout\ : std_logic;
SIGNAL \Mid|OC[64]~385_combout\ : std_logic;
SIGNAL \Mid|OC[64]~386_combout\ : std_logic;
SIGNAL \Mid|OC[64]~418_combout\ : std_logic;
SIGNAL \Mid|OC[64]~388_combout\ : std_logic;
SIGNAL \Mid|OC[64]~389_combout\ : std_logic;
SIGNAL \Mid|OC[64]~392_combout\ : std_logic;
SIGNAL \Mid|OC[64]~420_combout\ : std_logic;
SIGNAL \Mid|OC[64]~393_combout\ : std_logic;
SIGNAL \Mid|OC[64]~394_combout\ : std_logic;
SIGNAL \Ovfl~0_combout\ : std_logic;
SIGNAL \Bot|S\ : std_logic_vector(63 DOWNTO 0);
SIGNAL \Top|P\ : std_logic_vector(63 DOWNTO 0);
SIGNAL \Mid|OC\ : std_logic_vector(64 DOWNTO 0);

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_A <= A;
ww_B <= B;
S <= ww_S;
ww_Cin <= Cin;
Cout <= ww_Cout;
Ovfl <= ww_Ovfl;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X115_Y35_N23
\S[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Bot|S\(0),
	devoe => ww_devoe,
	o => \S[0]~output_o\);

-- Location: IOOBUF_X115_Y63_N2
\S[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Bot|S\(1),
	devoe => ww_devoe,
	o => \S[1]~output_o\);

-- Location: IOOBUF_X115_Y40_N9
\S[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Bot|S\(2),
	devoe => ww_devoe,
	o => \S[2]~output_o\);

-- Location: IOOBUF_X115_Y65_N23
\S[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Bot|S\(3),
	devoe => ww_devoe,
	o => \S[3]~output_o\);

-- Location: IOOBUF_X115_Y23_N9
\S[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Bot|S\(4),
	devoe => ww_devoe,
	o => \S[4]~output_o\);

-- Location: IOOBUF_X115_Y59_N23
\S[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Bot|S\(5),
	devoe => ww_devoe,
	o => \S[5]~output_o\);

-- Location: IOOBUF_X115_Y31_N2
\S[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Bot|S\(6),
	devoe => ww_devoe,
	o => \S[6]~output_o\);

-- Location: IOOBUF_X115_Y22_N16
\S[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Bot|S\(7),
	devoe => ww_devoe,
	o => \S[7]~output_o\);

-- Location: IOOBUF_X115_Y17_N2
\S[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Bot|S[8]~37_combout\,
	devoe => ww_devoe,
	o => \S[8]~output_o\);

-- Location: IOOBUF_X115_Y26_N16
\S[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Bot|S[9]~129_combout\,
	devoe => ww_devoe,
	o => \S[9]~output_o\);

-- Location: IOOBUF_X115_Y62_N9
\S[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Bot|S[10]~43_combout\,
	devoe => ww_devoe,
	o => \S[10]~output_o\);

-- Location: IOOBUF_X115_Y24_N2
\S[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Bot|S[11]~50_combout\,
	devoe => ww_devoe,
	o => \S[11]~output_o\);

-- Location: IOOBUF_X115_Y27_N2
\S[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Bot|S[12]~56_combout\,
	devoe => ww_devoe,
	o => \S[12]~output_o\);

-- Location: IOOBUF_X115_Y30_N9
\S[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Bot|S[13]~58_combout\,
	devoe => ww_devoe,
	o => \S[13]~output_o\);

-- Location: IOOBUF_X115_Y35_N16
\S[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Bot|S[14]~63_combout\,
	devoe => ww_devoe,
	o => \S[14]~output_o\);

-- Location: IOOBUF_X115_Y31_N9
\S[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Bot|S[15]~66_combout\,
	devoe => ww_devoe,
	o => \S[15]~output_o\);

-- Location: IOOBUF_X115_Y25_N16
\S[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Bot|S\(16),
	devoe => ww_devoe,
	o => \S[16]~output_o\);

-- Location: IOOBUF_X115_Y28_N2
\S[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Bot|S\(17),
	devoe => ww_devoe,
	o => \S[17]~output_o\);

-- Location: IOOBUF_X115_Y52_N2
\S[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Bot|S\(18),
	devoe => ww_devoe,
	o => \S[18]~output_o\);

-- Location: IOOBUF_X115_Y45_N23
\S[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Bot|S\(19),
	devoe => ww_devoe,
	o => \S[19]~output_o\);

-- Location: IOOBUF_X115_Y27_N9
\S[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Bot|S\(20),
	devoe => ww_devoe,
	o => \S[20]~output_o\);

-- Location: IOOBUF_X115_Y66_N16
\S[21]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Bot|S\(21),
	devoe => ww_devoe,
	o => \S[21]~output_o\);

-- Location: IOOBUF_X115_Y68_N16
\S[22]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Bot|S\(22),
	devoe => ww_devoe,
	o => \S[22]~output_o\);

-- Location: IOOBUF_X115_Y54_N16
\S[23]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Bot|S\(23),
	devoe => ww_devoe,
	o => \S[23]~output_o\);

-- Location: IOOBUF_X94_Y73_N9
\S[24]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Bot|S\(24),
	devoe => ww_devoe,
	o => \S[24]~output_o\);

-- Location: IOOBUF_X115_Y63_N9
\S[25]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Bot|S\(25),
	devoe => ww_devoe,
	o => \S[25]~output_o\);

-- Location: IOOBUF_X111_Y73_N9
\S[26]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Bot|S\(26),
	devoe => ww_devoe,
	o => \S[26]~output_o\);

-- Location: IOOBUF_X89_Y73_N23
\S[27]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Bot|S\(27),
	devoe => ww_devoe,
	o => \S[27]~output_o\);

-- Location: IOOBUF_X91_Y73_N16
\S[28]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Bot|S\(28),
	devoe => ww_devoe,
	o => \S[28]~output_o\);

-- Location: IOOBUF_X83_Y0_N16
\S[29]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Bot|S\(29),
	devoe => ww_devoe,
	o => \S[29]~output_o\);

-- Location: IOOBUF_X45_Y73_N9
\S[30]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Bot|S\(30),
	devoe => ww_devoe,
	o => \S[30]~output_o\);

-- Location: IOOBUF_X113_Y73_N2
\S[31]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Bot|S\(31),
	devoe => ww_devoe,
	o => \S[31]~output_o\);

-- Location: IOOBUF_X115_Y58_N16
\S[32]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Bot|S\(32),
	devoe => ww_devoe,
	o => \S[32]~output_o\);

-- Location: IOOBUF_X98_Y73_N23
\S[33]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Bot|S[33]~69_combout\,
	devoe => ww_devoe,
	o => \S[33]~output_o\);

-- Location: IOOBUF_X87_Y73_N23
\S[34]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Bot|S[34]~77_combout\,
	devoe => ww_devoe,
	o => \S[34]~output_o\);

-- Location: IOOBUF_X115_Y67_N16
\S[35]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Bot|S[35]~92_combout\,
	devoe => ww_devoe,
	o => \S[35]~output_o\);

-- Location: IOOBUF_X83_Y0_N9
\S[36]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Bot|S\(36),
	devoe => ww_devoe,
	o => \S[36]~output_o\);

-- Location: IOOBUF_X79_Y0_N16
\S[37]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Bot|S[37]~99_combout\,
	devoe => ww_devoe,
	o => \S[37]~output_o\);

-- Location: IOOBUF_X60_Y73_N2
\S[38]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Bot|S[38]~102_combout\,
	devoe => ww_devoe,
	o => \S[38]~output_o\);

-- Location: IOOBUF_X107_Y73_N9
\S[39]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Bot|S\(39),
	devoe => ww_devoe,
	o => \S[39]~output_o\);

-- Location: IOOBUF_X115_Y51_N2
\S[40]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Bot|S[40]~105_combout\,
	devoe => ww_devoe,
	o => \S[40]~output_o\);

-- Location: IOOBUF_X83_Y73_N23
\S[41]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Bot|S[41]~108_combout\,
	devoe => ww_devoe,
	o => \S[41]~output_o\);

-- Location: IOOBUF_X47_Y73_N16
\S[42]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Bot|S[42]~111_combout\,
	devoe => ww_devoe,
	o => \S[42]~output_o\);

-- Location: IOOBUF_X67_Y73_N2
\S[43]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Bot|S\(43),
	devoe => ww_devoe,
	o => \S[43]~output_o\);

-- Location: IOOBUF_X0_Y54_N9
\S[44]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Bot|S\(44),
	devoe => ww_devoe,
	o => \S[44]~output_o\);

-- Location: IOOBUF_X47_Y73_N2
\S[45]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Bot|S\(45),
	devoe => ww_devoe,
	o => \S[45]~output_o\);

-- Location: IOOBUF_X69_Y73_N2
\S[46]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Bot|S\(46),
	devoe => ww_devoe,
	o => \S[46]~output_o\);

-- Location: IOOBUF_X52_Y73_N9
\S[47]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Bot|S\(47),
	devoe => ww_devoe,
	o => \S[47]~output_o\);

-- Location: IOOBUF_X69_Y73_N23
\S[48]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Bot|S\(48),
	devoe => ww_devoe,
	o => \S[48]~output_o\);

-- Location: IOOBUF_X79_Y73_N9
\S[49]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Bot|S\(49),
	devoe => ww_devoe,
	o => \S[49]~output_o\);

-- Location: IOOBUF_X54_Y73_N9
\S[50]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Bot|S[50]~114_combout\,
	devoe => ww_devoe,
	o => \S[50]~output_o\);

-- Location: IOOBUF_X72_Y73_N2
\S[51]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Bot|S\(51),
	devoe => ww_devoe,
	o => \S[51]~output_o\);

-- Location: IOOBUF_X60_Y73_N9
\S[52]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Bot|S[52]~117_combout\,
	devoe => ww_devoe,
	o => \S[52]~output_o\);

-- Location: IOOBUF_X72_Y73_N23
\S[53]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Bot|S[53]~120_combout\,
	devoe => ww_devoe,
	o => \S[53]~output_o\);

-- Location: IOOBUF_X115_Y50_N2
\S[54]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Bot|S\(54),
	devoe => ww_devoe,
	o => \S[54]~output_o\);

-- Location: IOOBUF_X33_Y73_N2
\S[55]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Bot|S\(55),
	devoe => ww_devoe,
	o => \S[55]~output_o\);

-- Location: IOOBUF_X100_Y73_N16
\S[56]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Bot|S[56]~123_combout\,
	devoe => ww_devoe,
	o => \S[56]~output_o\);

-- Location: IOOBUF_X40_Y73_N9
\S[57]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Bot|S[57]~126_combout\,
	devoe => ww_devoe,
	o => \S[57]~output_o\);

-- Location: IOOBUF_X85_Y73_N23
\S[58]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Bot|S\(58),
	devoe => ww_devoe,
	o => \S[58]~output_o\);

-- Location: IOOBUF_X81_Y73_N23
\S[59]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Bot|S\(59),
	devoe => ww_devoe,
	o => \S[59]~output_o\);

-- Location: IOOBUF_X109_Y73_N9
\S[60]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Bot|S[60]~128_combout\,
	devoe => ww_devoe,
	o => \S[60]~output_o\);

-- Location: IOOBUF_X102_Y73_N9
\S[61]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Bot|S\(61),
	devoe => ww_devoe,
	o => \S[61]~output_o\);

-- Location: IOOBUF_X79_Y73_N2
\S[62]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Bot|S\(62),
	devoe => ww_devoe,
	o => \S[62]~output_o\);

-- Location: IOOBUF_X89_Y73_N16
\S[63]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Bot|S\(63),
	devoe => ww_devoe,
	o => \S[63]~output_o\);

-- Location: IOOBUF_X109_Y73_N2
\Cout~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mid|OC[64]~394_combout\,
	devoe => ww_devoe,
	o => \Cout~output_o\);

-- Location: IOOBUF_X115_Y56_N23
\Ovfl~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Ovfl~0_combout\,
	devoe => ww_devoe,
	o => \Ovfl~output_o\);

-- Location: IOIBUF_X115_Y36_N15
\B[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(0),
	o => \B[0]~input_o\);

-- Location: IOIBUF_X115_Y32_N1
\A[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(0),
	o => \A[0]~input_o\);

-- Location: IOIBUF_X115_Y32_N8
\Cin~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Cin,
	o => \Cin~input_o\);

-- Location: LCCOMB_X107_Y43_N8
\Bot|S[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Bot|S\(0) = \B[0]~input_o\ $ (\A[0]~input_o\ $ (\Cin~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \A[0]~input_o\,
	datac => \Cin~input_o\,
	combout => \Bot|S\(0));

-- Location: IOIBUF_X115_Y17_N8
\B[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(1),
	o => \B[1]~input_o\);

-- Location: IOIBUF_X115_Y23_N1
\A[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(1),
	o => \A[1]~input_o\);

-- Location: LCCOMB_X107_Y43_N18
\Top|P[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Top|P\(1) = \B[1]~input_o\ $ (\A[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[1]~input_o\,
	datac => \A[1]~input_o\,
	combout => \Top|P\(1));

-- Location: LCCOMB_X107_Y43_N20
\Bot|S[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Bot|S\(1) = \Top|P\(1) $ (((\B[0]~input_o\ & ((\A[0]~input_o\) # (\Cin~input_o\))) # (!\B[0]~input_o\ & (\A[0]~input_o\ & \Cin~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011111101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \A[0]~input_o\,
	datac => \Cin~input_o\,
	datad => \Top|P\(1),
	combout => \Bot|S\(1));

-- Location: IOIBUF_X115_Y41_N1
\A[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(2),
	o => \A[2]~input_o\);

-- Location: LCCOMB_X107_Y43_N6
\Mid|BLAN|ForGenerate:1:ColumnBlock|bG~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|BLAN|ForGenerate:1:ColumnBlock|bG~0_combout\ = (\A[1]~input_o\ & ((\B[1]~input_o\) # ((\A[0]~input_o\ & \B[0]~input_o\)))) # (!\A[1]~input_o\ & (\A[0]~input_o\ & (\B[0]~input_o\ & \B[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[1]~input_o\,
	datab => \A[0]~input_o\,
	datac => \B[0]~input_o\,
	datad => \B[1]~input_o\,
	combout => \Mid|BLAN|ForGenerate:1:ColumnBlock|bG~0_combout\);

-- Location: LCCOMB_X107_Y43_N24
\Mid|OC~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|OC~62_combout\ = (\Cin~input_o\ & (\B[0]~input_o\ $ (\A[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \A[0]~input_o\,
	datac => \Cin~input_o\,
	combout => \Mid|OC~62_combout\);

-- Location: LCCOMB_X107_Y43_N16
\Mid|OC[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|OC\(2) = (\Mid|BLAN|ForGenerate:1:ColumnBlock|bG~0_combout\) # ((\Mid|OC~62_combout\ & (\B[1]~input_o\ $ (\A[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mid|BLAN|ForGenerate:1:ColumnBlock|bG~0_combout\,
	datab => \B[1]~input_o\,
	datac => \A[1]~input_o\,
	datad => \Mid|OC~62_combout\,
	combout => \Mid|OC\(2));

-- Location: IOIBUF_X115_Y44_N8
\B[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(2),
	o => \B[2]~input_o\);

-- Location: LCCOMB_X107_Y43_N2
\Bot|S[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Bot|S\(2) = \A[2]~input_o\ $ (\Mid|OC\(2) $ (\B[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[2]~input_o\,
	datab => \Mid|OC\(2),
	datad => \B[2]~input_o\,
	combout => \Bot|S\(2));

-- Location: LCCOMB_X107_Y43_N0
\Mid|BLAN|ForGenerate:2:ColumnBlock|Recur:Upper|bG~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|BLAN|ForGenerate:2:ColumnBlock|Recur:Upper|bG~0_combout\ = (\A[2]~input_o\ & ((\B[2]~input_o\) # ((\B[1]~input_o\ & \A[1]~input_o\)))) # (!\A[2]~input_o\ & (\B[1]~input_o\ & (\A[1]~input_o\ & \B[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[2]~input_o\,
	datab => \B[1]~input_o\,
	datac => \A[1]~input_o\,
	datad => \B[2]~input_o\,
	combout => \Mid|BLAN|ForGenerate:2:ColumnBlock|Recur:Upper|bG~0_combout\);

-- Location: LCCOMB_X107_Y43_N4
\Bot|S[12]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \Bot|S[12]~34_combout\ = (\B[0]~input_o\ & ((\A[0]~input_o\) # (\Cin~input_o\))) # (!\B[0]~input_o\ & (\A[0]~input_o\ & \Cin~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \A[0]~input_o\,
	datac => \Cin~input_o\,
	combout => \Bot|S[12]~34_combout\);

-- Location: LCCOMB_X107_Y43_N14
\Mid|BLAN|ForGenerate:2:ColumnBlock|Recur:Upper|BP~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|BLAN|ForGenerate:2:ColumnBlock|Recur:Upper|BP~0_combout\ = (\A[2]~input_o\ & (!\B[2]~input_o\ & (\B[1]~input_o\ $ (\A[1]~input_o\)))) # (!\A[2]~input_o\ & (\B[2]~input_o\ & (\B[1]~input_o\ $ (\A[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[2]~input_o\,
	datab => \B[1]~input_o\,
	datac => \A[1]~input_o\,
	datad => \B[2]~input_o\,
	combout => \Mid|BLAN|ForGenerate:2:ColumnBlock|Recur:Upper|BP~0_combout\);

-- Location: LCCOMB_X107_Y43_N26
\Mid|OC[3]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|OC[3]~63_combout\ = (!\Mid|BLAN|ForGenerate:2:ColumnBlock|Recur:Upper|bG~0_combout\ & ((!\Mid|BLAN|ForGenerate:2:ColumnBlock|Recur:Upper|BP~0_combout\) # (!\Bot|S[12]~34_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mid|BLAN|ForGenerate:2:ColumnBlock|Recur:Upper|bG~0_combout\,
	datac => \Bot|S[12]~34_combout\,
	datad => \Mid|BLAN|ForGenerate:2:ColumnBlock|Recur:Upper|BP~0_combout\,
	combout => \Mid|OC[3]~63_combout\);

-- Location: IOIBUF_X115_Y36_N8
\A[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(3),
	o => \A[3]~input_o\);

-- Location: IOIBUF_X115_Y36_N1
\B[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(3),
	o => \B[3]~input_o\);

-- Location: LCCOMB_X103_Y43_N8
\Bot|S[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Bot|S\(3) = \Mid|OC[3]~63_combout\ $ (\A[3]~input_o\ $ (!\B[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mid|OC[3]~63_combout\,
	datac => \A[3]~input_o\,
	datad => \B[3]~input_o\,
	combout => \Bot|S\(3));

-- Location: LCCOMB_X103_Y43_N2
\Mid|BLAN|ForGenerate:3:ColumnBlock|Recur:Upper|BP~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|BLAN|ForGenerate:3:ColumnBlock|Recur:Upper|BP~0_combout\ = (\A[3]~input_o\ & (!\B[3]~input_o\ & (\B[2]~input_o\ $ (\A[2]~input_o\)))) # (!\A[3]~input_o\ & (\B[3]~input_o\ & (\B[2]~input_o\ $ (\A[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[3]~input_o\,
	datab => \B[3]~input_o\,
	datac => \B[2]~input_o\,
	datad => \A[2]~input_o\,
	combout => \Mid|BLAN|ForGenerate:3:ColumnBlock|Recur:Upper|BP~0_combout\);

-- Location: LCCOMB_X103_Y43_N28
\Mid|BLAN|ForGenerate:3:ColumnBlock|Recur:Upper|bG~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|BLAN|ForGenerate:3:ColumnBlock|Recur:Upper|bG~0_combout\ = (\A[3]~input_o\ & ((\B[3]~input_o\) # ((\B[2]~input_o\ & \A[2]~input_o\)))) # (!\A[3]~input_o\ & (\B[3]~input_o\ & (\B[2]~input_o\ & \A[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[3]~input_o\,
	datab => \B[3]~input_o\,
	datac => \B[2]~input_o\,
	datad => \A[2]~input_o\,
	combout => \Mid|BLAN|ForGenerate:3:ColumnBlock|Recur:Upper|bG~0_combout\);

-- Location: IOIBUF_X115_Y46_N1
\B[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(4),
	o => \B[4]~input_o\);

-- Location: IOIBUF_X115_Y47_N15
\A[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(4),
	o => \A[4]~input_o\);

-- Location: LCCOMB_X103_Y43_N30
\Top|P[4]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Top|P\(4) = \B[4]~input_o\ $ (\A[4]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[4]~input_o\,
	datad => \A[4]~input_o\,
	combout => \Top|P\(4));

-- Location: LCCOMB_X99_Y43_N16
\Bot|S[4]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Bot|S\(4) = \Top|P\(4) $ (((\Mid|BLAN|ForGenerate:3:ColumnBlock|Recur:Upper|bG~0_combout\) # ((\Mid|BLAN|ForGenerate:3:ColumnBlock|Recur:Upper|BP~0_combout\ & \Mid|OC\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mid|BLAN|ForGenerate:3:ColumnBlock|Recur:Upper|BP~0_combout\,
	datab => \Mid|BLAN|ForGenerate:3:ColumnBlock|Recur:Upper|bG~0_combout\,
	datac => \Top|P\(4),
	datad => \Mid|OC\(2),
	combout => \Bot|S\(4));

-- Location: LCCOMB_X103_Y43_N16
\Mid|BLAN|ForGenerate:4:ColumnBlock|Recur:Upper|BP~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|BLAN|ForGenerate:4:ColumnBlock|Recur:Upper|BP~0_combout\ = (\A[3]~input_o\ & (!\B[3]~input_o\ & (\B[4]~input_o\ $ (\A[4]~input_o\)))) # (!\A[3]~input_o\ & (\B[3]~input_o\ & (\B[4]~input_o\ $ (\A[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[3]~input_o\,
	datab => \B[3]~input_o\,
	datac => \B[4]~input_o\,
	datad => \A[4]~input_o\,
	combout => \Mid|BLAN|ForGenerate:4:ColumnBlock|Recur:Upper|BP~0_combout\);

-- Location: LCCOMB_X102_Y43_N10
\Mid|BLAN|ForGenerate:4:ColumnBlock|Recur:Upper|BP~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|BLAN|ForGenerate:4:ColumnBlock|Recur:Upper|BP~1_combout\ = (\Mid|BLAN|ForGenerate:4:ColumnBlock|Recur:Upper|BP~0_combout\ & (\A[2]~input_o\ $ (\B[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[2]~input_o\,
	datab => \Mid|BLAN|ForGenerate:4:ColumnBlock|Recur:Upper|BP~0_combout\,
	datad => \B[2]~input_o\,
	combout => \Mid|BLAN|ForGenerate:4:ColumnBlock|Recur:Upper|BP~1_combout\);

-- Location: LCCOMB_X103_Y43_N10
\Mid|BLAN|ForGenerate:4:ColumnBlock|Recur:Upper|Recur:Upper|bG~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|BLAN|ForGenerate:4:ColumnBlock|Recur:Upper|Recur:Upper|bG~0_combout\ = (\B[4]~input_o\ & ((\A[4]~input_o\) # ((\A[3]~input_o\ & \B[3]~input_o\)))) # (!\B[4]~input_o\ & (\A[3]~input_o\ & (\B[3]~input_o\ & \A[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[3]~input_o\,
	datab => \B[3]~input_o\,
	datac => \B[4]~input_o\,
	datad => \A[4]~input_o\,
	combout => \Mid|BLAN|ForGenerate:4:ColumnBlock|Recur:Upper|Recur:Upper|bG~0_combout\);

-- Location: LCCOMB_X102_Y43_N16
\Mid|OC[5]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|OC[5]~64_combout\ = (!\Mid|BLAN|ForGenerate:4:ColumnBlock|Recur:Upper|Recur:Upper|bG~0_combout\ & (((!\B[2]~input_o\) # (!\Mid|BLAN|ForGenerate:4:ColumnBlock|Recur:Upper|BP~0_combout\)) # (!\A[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[2]~input_o\,
	datab => \Mid|BLAN|ForGenerate:4:ColumnBlock|Recur:Upper|BP~0_combout\,
	datac => \Mid|BLAN|ForGenerate:4:ColumnBlock|Recur:Upper|Recur:Upper|bG~0_combout\,
	datad => \B[2]~input_o\,
	combout => \Mid|OC[5]~64_combout\);

-- Location: IOIBUF_X115_Y44_N1
\A[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(5),
	o => \A[5]~input_o\);

-- Location: IOIBUF_X115_Y45_N15
\B[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(5),
	o => \B[5]~input_o\);

-- Location: LCCOMB_X102_Y43_N28
\Top|P[5]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Top|P\(5) = \A[5]~input_o\ $ (\B[5]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[5]~input_o\,
	datad => \B[5]~input_o\,
	combout => \Top|P\(5));

-- Location: LCCOMB_X102_Y43_N6
\Bot|S[5]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Bot|S\(5) = \Top|P\(5) $ ((((\Mid|BLAN|ForGenerate:4:ColumnBlock|Recur:Upper|BP~1_combout\ & \Mid|OC\(2))) # (!\Mid|OC[5]~64_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101111000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mid|BLAN|ForGenerate:4:ColumnBlock|Recur:Upper|BP~1_combout\,
	datab => \Mid|OC[5]~64_combout\,
	datac => \Top|P\(5),
	datad => \Mid|OC\(2),
	combout => \Bot|S\(5));

-- Location: LCCOMB_X102_Y43_N26
\Mid|OC~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|OC~67_combout\ = (\Mid|OC~62_combout\ & (\Top|P\(5) & (\Mid|BLAN|ForGenerate:2:ColumnBlock|Recur:Upper|BP~0_combout\ & \Mid|BLAN|ForGenerate:4:ColumnBlock|Recur:Upper|BP~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mid|OC~62_combout\,
	datab => \Top|P\(5),
	datac => \Mid|BLAN|ForGenerate:2:ColumnBlock|Recur:Upper|BP~0_combout\,
	datad => \Mid|BLAN|ForGenerate:4:ColumnBlock|Recur:Upper|BP~0_combout\,
	combout => \Mid|OC~67_combout\);

-- Location: LCCOMB_X103_Y43_N22
\Mid|BLAN|ForGenerate:5:ColumnBlock|Recur:Upper|Recur:Upper|bG~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|BLAN|ForGenerate:5:ColumnBlock|Recur:Upper|Recur:Upper|bG~0_combout\ = (\A[5]~input_o\ & ((\B[5]~input_o\) # ((\B[4]~input_o\ & \A[4]~input_o\)))) # (!\A[5]~input_o\ & (\B[5]~input_o\ & (\B[4]~input_o\ & \A[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[5]~input_o\,
	datab => \B[5]~input_o\,
	datac => \B[4]~input_o\,
	datad => \A[4]~input_o\,
	combout => \Mid|BLAN|ForGenerate:5:ColumnBlock|Recur:Upper|Recur:Upper|bG~0_combout\);

-- Location: LCCOMB_X103_Y43_N4
\Mid|BLAN|ForGenerate:5:ColumnBlock|Recur:Upper|bG~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|BLAN|ForGenerate:5:ColumnBlock|Recur:Upper|bG~0_combout\ = (\A[5]~input_o\ & (!\B[5]~input_o\ & (\B[4]~input_o\ $ (\A[4]~input_o\)))) # (!\A[5]~input_o\ & (\B[5]~input_o\ & (\B[4]~input_o\ $ (\A[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[5]~input_o\,
	datab => \B[5]~input_o\,
	datac => \B[4]~input_o\,
	datad => \A[4]~input_o\,
	combout => \Mid|BLAN|ForGenerate:5:ColumnBlock|Recur:Upper|bG~0_combout\);

-- Location: LCCOMB_X103_Y43_N24
\Mid|OC[6]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|OC[6]~65_combout\ = (!\Mid|BLAN|ForGenerate:5:ColumnBlock|Recur:Upper|Recur:Upper|bG~0_combout\ & (((!\B[3]~input_o\) # (!\A[3]~input_o\)) # (!\Mid|BLAN|ForGenerate:5:ColumnBlock|Recur:Upper|bG~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mid|BLAN|ForGenerate:5:ColumnBlock|Recur:Upper|Recur:Upper|bG~0_combout\,
	datab => \Mid|BLAN|ForGenerate:5:ColumnBlock|Recur:Upper|bG~0_combout\,
	datac => \A[3]~input_o\,
	datad => \B[3]~input_o\,
	combout => \Mid|OC[6]~65_combout\);

-- Location: LCCOMB_X107_Y43_N12
\Mid|BLAN|ForGenerate:6:ColumnBlock|bG~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|BLAN|ForGenerate:6:ColumnBlock|bG~0_combout\ = (\Mid|BLAN|ForGenerate:2:ColumnBlock|Recur:Upper|bG~0_combout\) # ((\Mid|BLAN|ForGenerate:2:ColumnBlock|Recur:Upper|BP~0_combout\ & (\A[0]~input_o\ & \B[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mid|BLAN|ForGenerate:2:ColumnBlock|Recur:Upper|BP~0_combout\,
	datab => \A[0]~input_o\,
	datac => \B[0]~input_o\,
	datad => \Mid|BLAN|ForGenerate:2:ColumnBlock|Recur:Upper|bG~0_combout\,
	combout => \Mid|BLAN|ForGenerate:6:ColumnBlock|bG~0_combout\);

-- Location: LCCOMB_X102_Y43_N0
\Mid|OC[6]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|OC[6]~66_combout\ = (\Mid|OC[6]~65_combout\ & (((!\Mid|BLAN|ForGenerate:6:ColumnBlock|bG~0_combout\) # (!\Mid|BLAN|ForGenerate:4:ColumnBlock|Recur:Upper|BP~0_combout\)) # (!\Top|P\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Top|P\(5),
	datab => \Mid|BLAN|ForGenerate:4:ColumnBlock|Recur:Upper|BP~0_combout\,
	datac => \Mid|OC[6]~65_combout\,
	datad => \Mid|BLAN|ForGenerate:6:ColumnBlock|bG~0_combout\,
	combout => \Mid|OC[6]~66_combout\);

-- Location: IOIBUF_X115_Y21_N15
\B[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(6),
	o => \B[6]~input_o\);

-- Location: IOIBUF_X115_Y46_N8
\A[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(6),
	o => \A[6]~input_o\);

-- Location: LCCOMB_X102_Y43_N2
\Bot|S[6]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Bot|S\(6) = \B[6]~input_o\ $ (\A[6]~input_o\ $ (((\Mid|OC~67_combout\) # (!\Mid|OC[6]~66_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010001001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mid|OC~67_combout\,
	datab => \Mid|OC[6]~66_combout\,
	datac => \B[6]~input_o\,
	datad => \A[6]~input_o\,
	combout => \Bot|S\(6));

-- Location: IOIBUF_X115_Y34_N15
\B[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(7),
	o => \B[7]~input_o\);

-- Location: LCCOMB_X101_Y43_N10
\Mid|BLAN|ForGenerate:6:ColumnBlock|Recur:Upper|BP~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|BLAN|ForGenerate:6:ColumnBlock|Recur:Upper|BP~0_combout\ = (\B[6]~input_o\ & (!\A[6]~input_o\ & (\B[5]~input_o\ $ (\A[5]~input_o\)))) # (!\B[6]~input_o\ & (\A[6]~input_o\ & (\B[5]~input_o\ $ (\A[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[6]~input_o\,
	datab => \B[5]~input_o\,
	datac => \A[5]~input_o\,
	datad => \A[6]~input_o\,
	combout => \Mid|BLAN|ForGenerate:6:ColumnBlock|Recur:Upper|BP~0_combout\);

-- Location: LCCOMB_X102_Y43_N4
\Mid|OC~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|OC~68_combout\ = (\Mid|OC~62_combout\ & (\Mid|BLAN|ForGenerate:4:ColumnBlock|Recur:Upper|BP~0_combout\ & (\Mid|BLAN|ForGenerate:2:ColumnBlock|Recur:Upper|BP~0_combout\ & \Mid|BLAN|ForGenerate:6:ColumnBlock|Recur:Upper|BP~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mid|OC~62_combout\,
	datab => \Mid|BLAN|ForGenerate:4:ColumnBlock|Recur:Upper|BP~0_combout\,
	datac => \Mid|BLAN|ForGenerate:2:ColumnBlock|Recur:Upper|BP~0_combout\,
	datad => \Mid|BLAN|ForGenerate:6:ColumnBlock|Recur:Upper|BP~0_combout\,
	combout => \Mid|OC~68_combout\);

-- Location: LCCOMB_X101_Y43_N28
\Mid|BLAN|ForGenerate:6:ColumnBlock|Recur:Upper|Recur:Upper|bG~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|BLAN|ForGenerate:6:ColumnBlock|Recur:Upper|Recur:Upper|bG~0_combout\ = (\B[6]~input_o\ & ((\A[6]~input_o\) # ((\B[5]~input_o\ & \A[5]~input_o\)))) # (!\B[6]~input_o\ & (\B[5]~input_o\ & (\A[5]~input_o\ & \A[6]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[6]~input_o\,
	datab => \B[5]~input_o\,
	datac => \A[5]~input_o\,
	datad => \A[6]~input_o\,
	combout => \Mid|BLAN|ForGenerate:6:ColumnBlock|Recur:Upper|Recur:Upper|bG~0_combout\);

-- Location: LCCOMB_X99_Y43_N26
\Mid|OC[7]~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|OC[7]~69_combout\ = (!\Mid|BLAN|ForGenerate:6:ColumnBlock|Recur:Upper|Recur:Upper|bG~0_combout\ & ((!\Mid|BLAN|ForGenerate:4:ColumnBlock|Recur:Upper|Recur:Upper|bG~0_combout\) # (!\Mid|BLAN|ForGenerate:6:ColumnBlock|Recur:Upper|BP~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mid|BLAN|ForGenerate:6:ColumnBlock|Recur:Upper|Recur:Upper|bG~0_combout\,
	datac => \Mid|BLAN|ForGenerate:6:ColumnBlock|Recur:Upper|BP~0_combout\,
	datad => \Mid|BLAN|ForGenerate:4:ColumnBlock|Recur:Upper|Recur:Upper|bG~0_combout\,
	combout => \Mid|OC[7]~69_combout\);

-- Location: LCCOMB_X102_Y43_N22
\Mid|OC[7]~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|OC[7]~70_combout\ = (\Mid|OC[7]~69_combout\ & (((!\Mid|BLAN|ForGenerate:6:ColumnBlock|bG~0_combout\) # (!\Mid|BLAN|ForGenerate:4:ColumnBlock|Recur:Upper|BP~0_combout\)) # (!\Mid|BLAN|ForGenerate:6:ColumnBlock|Recur:Upper|BP~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mid|BLAN|ForGenerate:6:ColumnBlock|Recur:Upper|BP~0_combout\,
	datab => \Mid|BLAN|ForGenerate:4:ColumnBlock|Recur:Upper|BP~0_combout\,
	datac => \Mid|OC[7]~69_combout\,
	datad => \Mid|BLAN|ForGenerate:6:ColumnBlock|bG~0_combout\,
	combout => \Mid|OC[7]~70_combout\);

-- Location: IOIBUF_X115_Y40_N1
\A[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(7),
	o => \A[7]~input_o\);

-- Location: LCCOMB_X95_Y43_N16
\Bot|S[7]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Bot|S\(7) = \B[7]~input_o\ $ (\A[7]~input_o\ $ (((\Mid|OC~68_combout\) # (!\Mid|OC[7]~70_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001101001100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[7]~input_o\,
	datab => \Mid|OC~68_combout\,
	datac => \Mid|OC[7]~70_combout\,
	datad => \A[7]~input_o\,
	combout => \Bot|S\(7));

-- Location: LCCOMB_X101_Y43_N0
\Mid|BLAN|ForGenerate:7:ColumnBlock|Recur:Upper|Recur:Upper|bG~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|BLAN|ForGenerate:7:ColumnBlock|Recur:Upper|Recur:Upper|bG~0_combout\ = (\B[7]~input_o\ & ((\A[7]~input_o\) # ((\B[6]~input_o\ & \A[6]~input_o\)))) # (!\B[7]~input_o\ & (\B[6]~input_o\ & (\A[7]~input_o\ & \A[6]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[6]~input_o\,
	datab => \B[7]~input_o\,
	datac => \A[7]~input_o\,
	datad => \A[6]~input_o\,
	combout => \Mid|BLAN|ForGenerate:7:ColumnBlock|Recur:Upper|Recur:Upper|bG~0_combout\);

-- Location: IOIBUF_X115_Y26_N22
\B[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(8),
	o => \B[8]~input_o\);

-- Location: IOIBUF_X115_Y41_N8
\A[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(8),
	o => \A[8]~input_o\);

-- Location: LCCOMB_X100_Y43_N24
\Top|P[8]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Top|P\(8) = \B[8]~input_o\ $ (\A[8]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[8]~input_o\,
	datac => \A[8]~input_o\,
	combout => \Top|P\(8));

-- Location: LCCOMB_X101_Y43_N22
\Bot|S[8]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \Bot|S[8]~36_combout\ = (\B[6]~input_o\ & (!\A[6]~input_o\ & (\B[7]~input_o\ $ (\A[7]~input_o\)))) # (!\B[6]~input_o\ & (\A[6]~input_o\ & (\B[7]~input_o\ $ (\A[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[6]~input_o\,
	datab => \B[7]~input_o\,
	datac => \A[7]~input_o\,
	datad => \A[6]~input_o\,
	combout => \Bot|S[8]~36_combout\);

-- Location: LCCOMB_X99_Y43_N28
\Mid|OC[4]~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|OC[4]~71_combout\ = (\Mid|BLAN|ForGenerate:3:ColumnBlock|Recur:Upper|BP~0_combout\ & ((\Mid|BLAN|ForGenerate:1:ColumnBlock|bG~0_combout\) # ((\Top|P\(1) & \Mid|OC~62_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mid|BLAN|ForGenerate:3:ColumnBlock|Recur:Upper|BP~0_combout\,
	datab => \Top|P\(1),
	datac => \Mid|BLAN|ForGenerate:1:ColumnBlock|bG~0_combout\,
	datad => \Mid|OC~62_combout\,
	combout => \Mid|OC[4]~71_combout\);

-- Location: LCCOMB_X103_Y43_N26
\Bot|S[8]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \Bot|S[8]~35_combout\ = (\Mid|BLAN|ForGenerate:5:ColumnBlock|Recur:Upper|Recur:Upper|bG~0_combout\) # ((\Mid|BLAN|ForGenerate:5:ColumnBlock|Recur:Upper|bG~0_combout\ & ((\Mid|OC[4]~71_combout\) # 
-- (\Mid|BLAN|ForGenerate:3:ColumnBlock|Recur:Upper|bG~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mid|BLAN|ForGenerate:5:ColumnBlock|Recur:Upper|Recur:Upper|bG~0_combout\,
	datab => \Mid|OC[4]~71_combout\,
	datac => \Mid|BLAN|ForGenerate:5:ColumnBlock|Recur:Upper|bG~0_combout\,
	datad => \Mid|BLAN|ForGenerate:3:ColumnBlock|Recur:Upper|bG~0_combout\,
	combout => \Bot|S[8]~35_combout\);

-- Location: LCCOMB_X101_Y43_N26
\Bot|S[8]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \Bot|S[8]~37_combout\ = \Top|P\(8) $ (((\Mid|BLAN|ForGenerate:7:ColumnBlock|Recur:Upper|Recur:Upper|bG~0_combout\) # ((\Bot|S[8]~36_combout\ & \Bot|S[8]~35_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mid|BLAN|ForGenerate:7:ColumnBlock|Recur:Upper|Recur:Upper|bG~0_combout\,
	datab => \Top|P\(8),
	datac => \Bot|S[8]~36_combout\,
	datad => \Bot|S[8]~35_combout\,
	combout => \Bot|S[8]~37_combout\);

-- Location: IOIBUF_X115_Y18_N1
\B[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(9),
	o => \B[9]~input_o\);

-- Location: LCCOMB_X101_Y43_N6
\Bot|S[9]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \Bot|S[9]~38_combout\ = (\B[8]~input_o\ & (!\A[8]~input_o\ & (\A[7]~input_o\ $ (\B[7]~input_o\)))) # (!\B[8]~input_o\ & (\A[8]~input_o\ & (\A[7]~input_o\ $ (\B[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[8]~input_o\,
	datab => \A[7]~input_o\,
	datac => \A[8]~input_o\,
	datad => \B[7]~input_o\,
	combout => \Bot|S[9]~38_combout\);

-- Location: LCCOMB_X101_Y43_N16
\Bot|S[9]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \Bot|S[9]~39_combout\ = (\Bot|S[9]~38_combout\ & ((\B[6]~input_o\ & ((\A[6]~input_o\) # (\Bot|S[8]~35_combout\))) # (!\B[6]~input_o\ & (\A[6]~input_o\ & \Bot|S[8]~35_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[6]~input_o\,
	datab => \A[6]~input_o\,
	datac => \Bot|S[8]~35_combout\,
	datad => \Bot|S[9]~38_combout\,
	combout => \Bot|S[9]~39_combout\);

-- Location: LCCOMB_X101_Y43_N12
\Mid|BLAN|ForGenerate:8:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|bG~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|BLAN|ForGenerate:8:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\ = (\B[8]~input_o\ & ((\A[8]~input_o\) # ((\A[7]~input_o\ & \B[7]~input_o\)))) # (!\B[8]~input_o\ & (\A[7]~input_o\ & (\A[8]~input_o\ & \B[7]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[8]~input_o\,
	datab => \A[7]~input_o\,
	datac => \A[8]~input_o\,
	datad => \B[7]~input_o\,
	combout => \Mid|BLAN|ForGenerate:8:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\);

-- Location: IOIBUF_X115_Y34_N22
\A[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(9),
	o => \A[9]~input_o\);

-- Location: LCCOMB_X100_Y43_N16
\Bot|S[9]~129\ : cycloneive_lcell_comb
-- Equation(s):
-- \Bot|S[9]~129_combout\ = \B[9]~input_o\ $ (\A[9]~input_o\ $ (((\Bot|S[9]~39_combout\) # (\Mid|BLAN|ForGenerate:8:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100101010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[9]~input_o\,
	datab => \Bot|S[9]~39_combout\,
	datac => \Mid|BLAN|ForGenerate:8:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\,
	datad => \A[9]~input_o\,
	combout => \Bot|S[9]~129_combout\);

-- Location: LCCOMB_X100_Y43_N12
\Mid|BLAN|ForGenerate:9:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|bG~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|BLAN|ForGenerate:9:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\ = (\B[9]~input_o\ & ((\A[9]~input_o\) # ((\B[8]~input_o\ & \A[8]~input_o\)))) # (!\B[9]~input_o\ & (\B[8]~input_o\ & (\A[8]~input_o\ & \A[9]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[8]~input_o\,
	datab => \B[9]~input_o\,
	datac => \A[8]~input_o\,
	datad => \A[9]~input_o\,
	combout => \Mid|BLAN|ForGenerate:9:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\);

-- Location: LCCOMB_X100_Y43_N14
\Mid|BLAN|ForGenerate:19:ColumnBlock|Recur:Lower|Recur:Upper|Recur:Upper|bG~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|BLAN|ForGenerate:19:ColumnBlock|Recur:Lower|Recur:Upper|Recur:Upper|bG~0_combout\ = (\B[8]~input_o\ & (!\A[8]~input_o\ & (\B[9]~input_o\ $ (\A[9]~input_o\)))) # (!\B[8]~input_o\ & (\A[8]~input_o\ & (\B[9]~input_o\ $ (\A[9]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[8]~input_o\,
	datab => \B[9]~input_o\,
	datac => \A[8]~input_o\,
	datad => \A[9]~input_o\,
	combout => \Mid|BLAN|ForGenerate:19:ColumnBlock|Recur:Lower|Recur:Upper|Recur:Upper|bG~0_combout\);

-- Location: LCCOMB_X103_Y43_N20
\Bot|S[10]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \Bot|S[10]~40_combout\ = (\Mid|BLAN|ForGenerate:4:ColumnBlock|Recur:Upper|BP~0_combout\ & ((\A[2]~input_o\ & ((\B[2]~input_o\) # (\Mid|OC\(2)))) # (!\A[2]~input_o\ & (\B[2]~input_o\ & \Mid|OC\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mid|BLAN|ForGenerate:4:ColumnBlock|Recur:Upper|BP~0_combout\,
	datab => \A[2]~input_o\,
	datac => \B[2]~input_o\,
	datad => \Mid|OC\(2),
	combout => \Bot|S[10]~40_combout\);

-- Location: LCCOMB_X103_Y43_N6
\Bot|S[10]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \Bot|S[10]~41_combout\ = (\Mid|BLAN|ForGenerate:6:ColumnBlock|Recur:Upper|Recur:Upper|bG~0_combout\) # ((\Mid|BLAN|ForGenerate:6:ColumnBlock|Recur:Upper|BP~0_combout\ & ((\Mid|BLAN|ForGenerate:4:ColumnBlock|Recur:Upper|Recur:Upper|bG~0_combout\) # 
-- (\Bot|S[10]~40_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mid|BLAN|ForGenerate:4:ColumnBlock|Recur:Upper|Recur:Upper|bG~0_combout\,
	datab => \Mid|BLAN|ForGenerate:6:ColumnBlock|Recur:Upper|BP~0_combout\,
	datac => \Mid|BLAN|ForGenerate:6:ColumnBlock|Recur:Upper|Recur:Upper|bG~0_combout\,
	datad => \Bot|S[10]~40_combout\,
	combout => \Bot|S[10]~41_combout\);

-- Location: LCCOMB_X105_Y43_N24
\Bot|S[10]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \Bot|S[10]~42_combout\ = (\Mid|BLAN|ForGenerate:19:ColumnBlock|Recur:Lower|Recur:Upper|Recur:Upper|bG~0_combout\ & ((\Bot|S[10]~41_combout\ & ((\B[7]~input_o\) # (\A[7]~input_o\))) # (!\Bot|S[10]~41_combout\ & (\B[7]~input_o\ & \A[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mid|BLAN|ForGenerate:19:ColumnBlock|Recur:Lower|Recur:Upper|Recur:Upper|bG~0_combout\,
	datab => \Bot|S[10]~41_combout\,
	datac => \B[7]~input_o\,
	datad => \A[7]~input_o\,
	combout => \Bot|S[10]~42_combout\);

-- Location: IOIBUF_X115_Y29_N1
\B[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(10),
	o => \B[10]~input_o\);

-- Location: IOIBUF_X115_Y20_N8
\A[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(10),
	o => \A[10]~input_o\);

-- Location: LCCOMB_X98_Y43_N0
\Bot|S[10]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \Bot|S[10]~43_combout\ = \B[10]~input_o\ $ (\A[10]~input_o\ $ (((\Mid|BLAN|ForGenerate:9:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\) # (\Bot|S[10]~42_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mid|BLAN|ForGenerate:9:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\,
	datab => \Bot|S[10]~42_combout\,
	datac => \B[10]~input_o\,
	datad => \A[10]~input_o\,
	combout => \Bot|S[10]~43_combout\);

-- Location: IOIBUF_X115_Y29_N8
\A[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(11),
	o => \A[11]~input_o\);

-- Location: IOIBUF_X115_Y42_N15
\B[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(11),
	o => \B[11]~input_o\);

-- Location: LCCOMB_X98_Y43_N18
\Top|P[11]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Top|P\(11) = \A[11]~input_o\ $ (\B[11]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A[11]~input_o\,
	datad => \B[11]~input_o\,
	combout => \Top|P\(11));

-- Location: LCCOMB_X100_Y43_N8
\Mid|BLAN|ForGenerate:21:ColumnBlock|Recur:Lower|Recur:Upper|Recur:Upper|bG~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|BLAN|ForGenerate:21:ColumnBlock|Recur:Lower|Recur:Upper|Recur:Upper|bG~0_combout\ = (\B[8]~input_o\ & \A[8]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[8]~input_o\,
	datac => \A[8]~input_o\,
	combout => \Mid|BLAN|ForGenerate:21:ColumnBlock|Recur:Lower|Recur:Upper|Recur:Upper|bG~0_combout\);

-- Location: LCCOMB_X98_Y43_N28
\Mid|BLAN|ForGenerate:10:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|bG~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|BLAN|ForGenerate:10:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\ = (\B[10]~input_o\ & ((\A[10]~input_o\) # ((\B[9]~input_o\ & \A[9]~input_o\)))) # (!\B[10]~input_o\ & (\B[9]~input_o\ & (\A[9]~input_o\ & \A[10]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[9]~input_o\,
	datab => \A[9]~input_o\,
	datac => \B[10]~input_o\,
	datad => \A[10]~input_o\,
	combout => \Mid|BLAN|ForGenerate:10:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\);

-- Location: LCCOMB_X97_Y43_N10
\Bot|S[11]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \Bot|S[11]~45_combout\ = (\Top|P\(11) & (!\Mid|BLAN|ForGenerate:21:ColumnBlock|Recur:Lower|Recur:Upper|Recur:Upper|bG~0_combout\ & (!\Mid|BLAN|ForGenerate:7:ColumnBlock|Recur:Upper|Recur:Upper|bG~0_combout\ & 
-- !\Mid|BLAN|ForGenerate:10:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Top|P\(11),
	datab => \Mid|BLAN|ForGenerate:21:ColumnBlock|Recur:Lower|Recur:Upper|Recur:Upper|bG~0_combout\,
	datac => \Mid|BLAN|ForGenerate:7:ColumnBlock|Recur:Upper|Recur:Upper|bG~0_combout\,
	datad => \Mid|BLAN|ForGenerate:10:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\,
	combout => \Bot|S[11]~45_combout\);

-- Location: LCCOMB_X98_Y43_N22
\Mid|BLAN|ForGenerate:21:ColumnBlock|Recur:Lower|Recur:Upper|Recur:Upper|bG~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|BLAN|ForGenerate:21:ColumnBlock|Recur:Lower|Recur:Upper|Recur:Upper|bG~1_combout\ = (\B[9]~input_o\ & (!\A[9]~input_o\ & (\B[10]~input_o\ $ (\A[10]~input_o\)))) # (!\B[9]~input_o\ & (\A[9]~input_o\ & (\B[10]~input_o\ $ (\A[10]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[9]~input_o\,
	datab => \A[9]~input_o\,
	datac => \B[10]~input_o\,
	datad => \A[10]~input_o\,
	combout => \Mid|BLAN|ForGenerate:21:ColumnBlock|Recur:Lower|Recur:Upper|Recur:Upper|bG~1_combout\);

-- Location: LCCOMB_X97_Y43_N6
\Bot|S[11]~130\ : cycloneive_lcell_comb
-- Equation(s):
-- \Bot|S[11]~130_combout\ = (!\Mid|BLAN|ForGenerate:10:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\ & (\B[11]~input_o\ $ (\A[11]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[11]~input_o\,
	datab => \Mid|BLAN|ForGenerate:10:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\,
	datad => \A[11]~input_o\,
	combout => \Bot|S[11]~130_combout\);

-- Location: LCCOMB_X97_Y43_N8
\Bot|S[11]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \Bot|S[11]~44_combout\ = (\Bot|S[11]~130_combout\ & (((!\Top|P\(8) & !\Mid|BLAN|ForGenerate:21:ColumnBlock|Recur:Lower|Recur:Upper|Recur:Upper|bG~0_combout\)) # (!\Mid|BLAN|ForGenerate:21:ColumnBlock|Recur:Lower|Recur:Upper|Recur:Upper|bG~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Top|P\(8),
	datab => \Mid|BLAN|ForGenerate:21:ColumnBlock|Recur:Lower|Recur:Upper|Recur:Upper|bG~1_combout\,
	datac => \Mid|BLAN|ForGenerate:21:ColumnBlock|Recur:Lower|Recur:Upper|Recur:Upper|bG~0_combout\,
	datad => \Bot|S[11]~130_combout\,
	combout => \Bot|S[11]~44_combout\);

-- Location: LCCOMB_X101_Y43_N8
\Top|P[6]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Top|P\(6) = \B[6]~input_o\ $ (\A[6]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[6]~input_o\,
	datad => \A[6]~input_o\,
	combout => \Top|P\(6));

-- Location: LCCOMB_X100_Y43_N10
\Mid|BLAN|ForGenerate:19:ColumnBlock|Recur:Lower|Recur:Upper|BP~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|BLAN|ForGenerate:19:ColumnBlock|Recur:Lower|Recur:Upper|BP~0_combout\ = (\Bot|S[9]~38_combout\ & (\B[9]~input_o\ $ (\A[9]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Bot|S[9]~38_combout\,
	datab => \B[9]~input_o\,
	datad => \A[9]~input_o\,
	combout => \Mid|BLAN|ForGenerate:19:ColumnBlock|Recur:Lower|Recur:Upper|BP~0_combout\);

-- Location: LCCOMB_X98_Y43_N24
\Mid|BLAN|ForGenerate:23:ColumnBlock|Recur:Lower|Recur:Upper|BP~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|BLAN|ForGenerate:23:ColumnBlock|Recur:Lower|Recur:Upper|BP~0_combout\ = (\Top|P\(6) & (\Mid|BLAN|ForGenerate:19:ColumnBlock|Recur:Lower|Recur:Upper|BP~0_combout\ & (\B[10]~input_o\ $ (\A[10]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Top|P\(6),
	datab => \Mid|BLAN|ForGenerate:19:ColumnBlock|Recur:Lower|Recur:Upper|BP~0_combout\,
	datac => \B[10]~input_o\,
	datad => \A[10]~input_o\,
	combout => \Mid|BLAN|ForGenerate:23:ColumnBlock|Recur:Lower|Recur:Upper|BP~0_combout\);

-- Location: LCCOMB_X97_Y43_N4
\Bot|S[11]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \Bot|S[11]~47_combout\ = (\Mid|BLAN|ForGenerate:21:ColumnBlock|Recur:Lower|Recur:Upper|Recur:Upper|bG~1_combout\ & ((\B[8]~input_o\ & ((\Mid|BLAN|ForGenerate:7:ColumnBlock|Recur:Upper|Recur:Upper|bG~0_combout\) # (\A[8]~input_o\))) # (!\B[8]~input_o\ & 
-- (\Mid|BLAN|ForGenerate:7:ColumnBlock|Recur:Upper|Recur:Upper|bG~0_combout\ & \A[8]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[8]~input_o\,
	datab => \Mid|BLAN|ForGenerate:21:ColumnBlock|Recur:Lower|Recur:Upper|Recur:Upper|bG~1_combout\,
	datac => \Mid|BLAN|ForGenerate:7:ColumnBlock|Recur:Upper|Recur:Upper|bG~0_combout\,
	datad => \A[8]~input_o\,
	combout => \Bot|S[11]~47_combout\);

-- Location: LCCOMB_X103_Y43_N0
\Bot|S[11]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \Bot|S[11]~46_combout\ = (\A[5]~input_o\ & (!\Mid|BLAN|ForGenerate:4:ColumnBlock|Recur:Upper|Recur:Upper|bG~0_combout\ & (!\Bot|S[10]~40_combout\ & !\B[5]~input_o\))) # (!\A[5]~input_o\ & 
-- (((!\Mid|BLAN|ForGenerate:4:ColumnBlock|Recur:Upper|Recur:Upper|bG~0_combout\ & !\Bot|S[10]~40_combout\)) # (!\B[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mid|BLAN|ForGenerate:4:ColumnBlock|Recur:Upper|Recur:Upper|bG~0_combout\,
	datab => \Bot|S[10]~40_combout\,
	datac => \A[5]~input_o\,
	datad => \B[5]~input_o\,
	combout => \Bot|S[11]~46_combout\);

-- Location: LCCOMB_X97_Y43_N22
\Bot|S[11]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \Bot|S[11]~48_combout\ = (\Bot|S[11]~47_combout\) # ((\Mid|BLAN|ForGenerate:10:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\) # ((\Mid|BLAN|ForGenerate:23:ColumnBlock|Recur:Lower|Recur:Upper|BP~0_combout\ & !\Bot|S[11]~46_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mid|BLAN|ForGenerate:23:ColumnBlock|Recur:Lower|Recur:Upper|BP~0_combout\,
	datab => \Bot|S[11]~47_combout\,
	datac => \Bot|S[11]~46_combout\,
	datad => \Mid|BLAN|ForGenerate:10:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\,
	combout => \Bot|S[11]~48_combout\);

-- Location: LCCOMB_X97_Y43_N16
\Bot|S[11]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \Bot|S[11]~49_combout\ = (\Bot|S[11]~48_combout\ & (((\Bot|S[11]~46_combout\ & \Bot|S[11]~45_combout\)) # (!\Top|P\(11)))) # (!\Bot|S[11]~48_combout\ & (((\Bot|S[11]~46_combout\ & \Bot|S[11]~45_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Bot|S[11]~48_combout\,
	datab => \Top|P\(11),
	datac => \Bot|S[11]~46_combout\,
	datad => \Bot|S[11]~45_combout\,
	combout => \Bot|S[11]~49_combout\);

-- Location: LCCOMB_X97_Y43_N2
\Bot|S[11]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \Bot|S[11]~50_combout\ = (\Bot|S[11]~44_combout\) # ((\Bot|S[11]~49_combout\) # ((\Bot|S[11]~45_combout\ & !\Bot|S[8]~36_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Bot|S[11]~45_combout\,
	datab => \Bot|S[11]~44_combout\,
	datac => \Bot|S[8]~36_combout\,
	datad => \Bot|S[11]~49_combout\,
	combout => \Bot|S[11]~50_combout\);

-- Location: LCCOMB_X98_Y43_N2
\Mid|BLAN|ForGenerate:11:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|bG~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|BLAN|ForGenerate:11:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\ = (\A[11]~input_o\ & ((\B[11]~input_o\) # ((\A[10]~input_o\ & \B[10]~input_o\)))) # (!\A[11]~input_o\ & (\A[10]~input_o\ & (\B[10]~input_o\ & \B[11]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[10]~input_o\,
	datab => \B[10]~input_o\,
	datac => \A[11]~input_o\,
	datad => \B[11]~input_o\,
	combout => \Mid|BLAN|ForGenerate:11:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\);

-- Location: LCCOMB_X101_Y43_N18
\Bot|S[12]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \Bot|S[12]~53_combout\ = (\Bot|S[9]~38_combout\ & ((\B[6]~input_o\ & ((\A[6]~input_o\) # (\Mid|BLAN|ForGenerate:5:ColumnBlock|Recur:Upper|Recur:Upper|bG~0_combout\))) # (!\B[6]~input_o\ & (\A[6]~input_o\ & 
-- \Mid|BLAN|ForGenerate:5:ColumnBlock|Recur:Upper|Recur:Upper|bG~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[6]~input_o\,
	datab => \A[6]~input_o\,
	datac => \Bot|S[9]~38_combout\,
	datad => \Mid|BLAN|ForGenerate:5:ColumnBlock|Recur:Upper|Recur:Upper|bG~0_combout\,
	combout => \Bot|S[12]~53_combout\);

-- Location: LCCOMB_X103_Y43_N14
\Mid|BLAN|ForGenerate:17:ColumnBlock|Recur:Lower|Recur:Upper|BP~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|BLAN|ForGenerate:17:ColumnBlock|Recur:Lower|Recur:Upper|BP~2_combout\ = (\Bot|S[9]~38_combout\ & (\Mid|BLAN|ForGenerate:6:ColumnBlock|Recur:Upper|BP~0_combout\ & (\B[4]~input_o\ $ (\A[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Bot|S[9]~38_combout\,
	datab => \Mid|BLAN|ForGenerate:6:ColumnBlock|Recur:Upper|BP~0_combout\,
	datac => \B[4]~input_o\,
	datad => \A[4]~input_o\,
	combout => \Mid|BLAN|ForGenerate:17:ColumnBlock|Recur:Lower|Recur:Upper|BP~2_combout\);

-- Location: LCCOMB_X103_Y43_N18
\Bot|S[12]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \Bot|S[12]~52_combout\ = (\Mid|BLAN|ForGenerate:17:ColumnBlock|Recur:Lower|Recur:Upper|BP~2_combout\ & ((\A[3]~input_o\ & ((\B[3]~input_o\) # (!\Mid|OC[3]~63_combout\))) # (!\A[3]~input_o\ & (!\Mid|OC[3]~63_combout\ & \B[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[3]~input_o\,
	datab => \Mid|OC[3]~63_combout\,
	datac => \Mid|BLAN|ForGenerate:17:ColumnBlock|Recur:Lower|Recur:Upper|BP~2_combout\,
	datad => \B[3]~input_o\,
	combout => \Bot|S[12]~52_combout\);

-- Location: LCCOMB_X100_Y43_N28
\Bot|S[12]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \Bot|S[12]~54_combout\ = (\Bot|S[12]~53_combout\) # ((\Mid|BLAN|ForGenerate:8:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\) # (\Bot|S[12]~52_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Bot|S[12]~53_combout\,
	datac => \Mid|BLAN|ForGenerate:8:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\,
	datad => \Bot|S[12]~52_combout\,
	combout => \Bot|S[12]~54_combout\);

-- Location: LCCOMB_X98_Y43_N12
\Bot|S[12]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \Bot|S[12]~51_combout\ = (\A[10]~input_o\ & (!\B[10]~input_o\ & (\A[11]~input_o\ $ (\B[11]~input_o\)))) # (!\A[10]~input_o\ & (\B[10]~input_o\ & (\A[11]~input_o\ $ (\B[11]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[10]~input_o\,
	datab => \B[10]~input_o\,
	datac => \A[11]~input_o\,
	datad => \B[11]~input_o\,
	combout => \Bot|S[12]~51_combout\);

-- Location: LCCOMB_X100_Y43_N30
\Bot|S[12]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \Bot|S[12]~55_combout\ = (\Bot|S[12]~51_combout\ & ((\B[9]~input_o\ & ((\Bot|S[12]~54_combout\) # (\A[9]~input_o\))) # (!\B[9]~input_o\ & (\Bot|S[12]~54_combout\ & \A[9]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[9]~input_o\,
	datab => \Bot|S[12]~54_combout\,
	datac => \Bot|S[12]~51_combout\,
	datad => \A[9]~input_o\,
	combout => \Bot|S[12]~55_combout\);

-- Location: IOIBUF_X115_Y24_N8
\A[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(12),
	o => \A[12]~input_o\);

-- Location: IOIBUF_X115_Y61_N22
\B[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(12),
	o => \B[12]~input_o\);

-- Location: LCCOMB_X98_Y43_N6
\Bot|S[12]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \Bot|S[12]~56_combout\ = \A[12]~input_o\ $ (\B[12]~input_o\ $ (((\Mid|BLAN|ForGenerate:11:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\) # (\Bot|S[12]~55_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mid|BLAN|ForGenerate:11:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\,
	datab => \Bot|S[12]~55_combout\,
	datac => \A[12]~input_o\,
	datad => \B[12]~input_o\,
	combout => \Bot|S[12]~56_combout\);

-- Location: LCCOMB_X96_Y43_N2
\Mid|BLAN|ForGenerate:25:ColumnBlock|Recur:Lower|Recur:Upper|BP~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|BLAN|ForGenerate:25:ColumnBlock|Recur:Lower|Recur:Upper|BP~0_combout\ = (\B[11]~input_o\ & (!\A[11]~input_o\ & (\A[12]~input_o\ $ (\B[12]~input_o\)))) # (!\B[11]~input_o\ & (\A[11]~input_o\ & (\A[12]~input_o\ $ (\B[12]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[11]~input_o\,
	datab => \A[11]~input_o\,
	datac => \A[12]~input_o\,
	datad => \B[12]~input_o\,
	combout => \Mid|BLAN|ForGenerate:25:ColumnBlock|Recur:Lower|Recur:Upper|BP~0_combout\);

-- Location: LCCOMB_X96_Y43_N28
\Bot|S[13]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \Bot|S[13]~57_combout\ = (\Mid|BLAN|ForGenerate:25:ColumnBlock|Recur:Lower|Recur:Upper|BP~0_combout\ & ((\Mid|BLAN|ForGenerate:10:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\) # 
-- ((\Mid|BLAN|ForGenerate:21:ColumnBlock|Recur:Lower|Recur:Upper|Recur:Upper|bG~1_combout\ & \Bot|S[12]~54_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mid|BLAN|ForGenerate:10:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\,
	datab => \Mid|BLAN|ForGenerate:25:ColumnBlock|Recur:Lower|Recur:Upper|BP~0_combout\,
	datac => \Mid|BLAN|ForGenerate:21:ColumnBlock|Recur:Lower|Recur:Upper|Recur:Upper|bG~1_combout\,
	datad => \Bot|S[12]~54_combout\,
	combout => \Bot|S[13]~57_combout\);

-- Location: LCCOMB_X96_Y43_N24
\Mid|BLAN|ForGenerate:12:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|bG~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|BLAN|ForGenerate:12:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\ = (\A[12]~input_o\ & ((\B[12]~input_o\) # ((\B[11]~input_o\ & \A[11]~input_o\)))) # (!\A[12]~input_o\ & (\B[11]~input_o\ & (\A[11]~input_o\ & \B[12]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[11]~input_o\,
	datab => \A[11]~input_o\,
	datac => \A[12]~input_o\,
	datad => \B[12]~input_o\,
	combout => \Mid|BLAN|ForGenerate:12:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\);

-- Location: IOIBUF_X115_Y33_N1
\A[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(13),
	o => \A[13]~input_o\);

-- Location: IOIBUF_X115_Y30_N1
\B[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(13),
	o => \B[13]~input_o\);

-- Location: LCCOMB_X96_Y43_N30
\Bot|S[13]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \Bot|S[13]~58_combout\ = \A[13]~input_o\ $ (\B[13]~input_o\ $ (((\Bot|S[13]~57_combout\) # (\Mid|BLAN|ForGenerate:12:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Bot|S[13]~57_combout\,
	datab => \Mid|BLAN|ForGenerate:12:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\,
	datac => \A[13]~input_o\,
	datad => \B[13]~input_o\,
	combout => \Bot|S[13]~58_combout\);

-- Location: LCCOMB_X96_Y43_N26
\Mid|BLAN|ForGenerate:13:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|bG~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|BLAN|ForGenerate:13:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\ = (\A[13]~input_o\ & ((\B[13]~input_o\) # ((\B[12]~input_o\ & \A[12]~input_o\)))) # (!\A[13]~input_o\ & (\B[12]~input_o\ & (\A[12]~input_o\ & \B[13]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[12]~input_o\,
	datab => \A[12]~input_o\,
	datac => \A[13]~input_o\,
	datad => \B[13]~input_o\,
	combout => \Mid|BLAN|ForGenerate:13:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\);

-- Location: IOIBUF_X115_Y49_N8
\A[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(14),
	o => \A[14]~input_o\);

-- Location: IOIBUF_X115_Y48_N8
\B[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(14),
	o => \B[14]~input_o\);

-- Location: LCCOMB_X91_Y47_N0
\Top|P[14]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Top|P\(14) = \A[14]~input_o\ $ (\B[14]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A[14]~input_o\,
	datad => \B[14]~input_o\,
	combout => \Top|P\(14));

-- Location: LCCOMB_X96_Y43_N8
\Mid|BLAN|ForGenerate:15:ColumnBlock|Recur:Upper|BP~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|BLAN|ForGenerate:15:ColumnBlock|Recur:Upper|BP~4_combout\ = (\B[12]~input_o\ & (!\A[12]~input_o\ & (\A[13]~input_o\ $ (\B[13]~input_o\)))) # (!\B[12]~input_o\ & (\A[12]~input_o\ & (\A[13]~input_o\ $ (\B[13]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[12]~input_o\,
	datab => \A[12]~input_o\,
	datac => \A[13]~input_o\,
	datad => \B[13]~input_o\,
	combout => \Mid|BLAN|ForGenerate:15:ColumnBlock|Recur:Upper|BP~4_combout\);

-- Location: LCCOMB_X98_Y43_N26
\Bot|S[14]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \Bot|S[14]~62_combout\ = (\Mid|BLAN|ForGenerate:15:ColumnBlock|Recur:Upper|BP~4_combout\ & ((\Mid|BLAN|ForGenerate:11:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\) # ((\Bot|S[12]~51_combout\ & 
-- \Mid|BLAN|ForGenerate:9:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Bot|S[12]~51_combout\,
	datab => \Mid|BLAN|ForGenerate:11:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\,
	datac => \Mid|BLAN|ForGenerate:15:ColumnBlock|Recur:Upper|BP~4_combout\,
	datad => \Mid|BLAN|ForGenerate:9:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\,
	combout => \Bot|S[14]~62_combout\);

-- Location: LCCOMB_X98_Y43_N8
\Mid|BLAN|ForGenerate:16:ColumnBlock|Recur:Upper|bG~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|BLAN|ForGenerate:16:ColumnBlock|Recur:Upper|bG~0_combout\ = (\Mid|BLAN|ForGenerate:15:ColumnBlock|Recur:Upper|BP~4_combout\ & (\Top|P\(11) & (\A[10]~input_o\ $ (\B[10]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[10]~input_o\,
	datab => \Mid|BLAN|ForGenerate:15:ColumnBlock|Recur:Upper|BP~4_combout\,
	datac => \B[10]~input_o\,
	datad => \Top|P\(11),
	combout => \Mid|BLAN|ForGenerate:16:ColumnBlock|Recur:Upper|bG~0_combout\);

-- Location: LCCOMB_X100_Y43_N2
\Top|P[9]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Top|P\(9) = \B[9]~input_o\ $ (\A[9]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[9]~input_o\,
	datad => \A[9]~input_o\,
	combout => \Top|P\(9));

-- Location: LCCOMB_X100_Y43_N18
\Mid|BLAN|ForGenerate:15:ColumnBlock|Recur:Upper|BP~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|BLAN|ForGenerate:15:ColumnBlock|Recur:Upper|BP~8_combout\ = (\Mid|BLAN|ForGenerate:16:ColumnBlock|Recur:Upper|bG~0_combout\ & (\Top|P\(9) & (\B[8]~input_o\ $ (\A[8]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[8]~input_o\,
	datab => \Mid|BLAN|ForGenerate:16:ColumnBlock|Recur:Upper|bG~0_combout\,
	datac => \A[8]~input_o\,
	datad => \Top|P\(9),
	combout => \Mid|BLAN|ForGenerate:15:ColumnBlock|Recur:Upper|BP~8_combout\);

-- Location: LCCOMB_X103_Y43_N12
\Bot|S[14]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \Bot|S[14]~59_combout\ = (\Mid|BLAN|ForGenerate:6:ColumnBlock|Recur:Upper|BP~0_combout\ & ((\Mid|BLAN|ForGenerate:4:ColumnBlock|Recur:Upper|Recur:Upper|bG~0_combout\) # ((\Mid|BLAN|ForGenerate:4:ColumnBlock|Recur:Upper|BP~0_combout\ & 
-- !\Mid|OC[3]~63_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mid|BLAN|ForGenerate:4:ColumnBlock|Recur:Upper|Recur:Upper|bG~0_combout\,
	datab => \Mid|BLAN|ForGenerate:6:ColumnBlock|Recur:Upper|BP~0_combout\,
	datac => \Mid|BLAN|ForGenerate:4:ColumnBlock|Recur:Upper|BP~0_combout\,
	datad => \Mid|OC[3]~63_combout\,
	combout => \Bot|S[14]~59_combout\);

-- Location: LCCOMB_X105_Y43_N26
\Bot|S[14]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \Bot|S[14]~60_combout\ = (\Mid|BLAN|ForGenerate:6:ColumnBlock|Recur:Upper|Recur:Upper|bG~0_combout\) # (\Bot|S[14]~59_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mid|BLAN|ForGenerate:6:ColumnBlock|Recur:Upper|Recur:Upper|bG~0_combout\,
	datad => \Bot|S[14]~59_combout\,
	combout => \Bot|S[14]~60_combout\);

-- Location: LCCOMB_X105_Y43_N20
\Bot|S[14]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \Bot|S[14]~61_combout\ = (\Mid|BLAN|ForGenerate:15:ColumnBlock|Recur:Upper|BP~8_combout\ & ((\B[7]~input_o\ & ((\Bot|S[14]~60_combout\) # (\A[7]~input_o\))) # (!\B[7]~input_o\ & (\Bot|S[14]~60_combout\ & \A[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mid|BLAN|ForGenerate:15:ColumnBlock|Recur:Upper|BP~8_combout\,
	datab => \B[7]~input_o\,
	datac => \Bot|S[14]~60_combout\,
	datad => \A[7]~input_o\,
	combout => \Bot|S[14]~61_combout\);

-- Location: LCCOMB_X99_Y43_N30
\Bot|S[14]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \Bot|S[14]~63_combout\ = \Top|P\(14) $ (((\Mid|BLAN|ForGenerate:13:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\) # ((\Bot|S[14]~62_combout\) # (\Bot|S[14]~61_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mid|BLAN|ForGenerate:13:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\,
	datab => \Top|P\(14),
	datac => \Bot|S[14]~62_combout\,
	datad => \Bot|S[14]~61_combout\,
	combout => \Bot|S[14]~63_combout\);

-- Location: IOIBUF_X115_Y33_N8
\B[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(15),
	o => \B[15]~input_o\);

-- Location: IOIBUF_X115_Y48_N1
\A[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(15),
	o => \A[15]~input_o\);

-- Location: LCCOMB_X91_Y47_N10
\Top|P[15]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Top|P\(15) = \B[15]~input_o\ $ (\A[15]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[15]~input_o\,
	datad => \A[15]~input_o\,
	combout => \Top|P\(15));

-- Location: LCCOMB_X96_Y43_N0
\Mid|BLAN|ForGenerate:19:ColumnBlock|Recur:Upper|Recur:Lower|Recur:Upper|bG~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|BLAN|ForGenerate:19:ColumnBlock|Recur:Upper|Recur:Lower|Recur:Upper|bG~0_combout\ = (\A[14]~input_o\ & (!\B[14]~input_o\ & (\B[13]~input_o\ $ (\A[13]~input_o\)))) # (!\A[14]~input_o\ & (\B[14]~input_o\ & (\B[13]~input_o\ $ (\A[13]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[14]~input_o\,
	datab => \B[13]~input_o\,
	datac => \A[13]~input_o\,
	datad => \B[14]~input_o\,
	combout => \Mid|BLAN|ForGenerate:19:ColumnBlock|Recur:Upper|Recur:Lower|Recur:Upper|bG~0_combout\);

-- Location: LCCOMB_X96_Y43_N18
\Bot|S[15]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \Bot|S[15]~65_combout\ = (\Mid|BLAN|ForGenerate:19:ColumnBlock|Recur:Upper|Recur:Lower|Recur:Upper|bG~0_combout\ & ((\Mid|BLAN|ForGenerate:12:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\) # 
-- ((\Mid|BLAN|ForGenerate:25:ColumnBlock|Recur:Lower|Recur:Upper|BP~0_combout\ & \Mid|BLAN|ForGenerate:10:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mid|BLAN|ForGenerate:25:ColumnBlock|Recur:Lower|Recur:Upper|BP~0_combout\,
	datab => \Mid|BLAN|ForGenerate:19:ColumnBlock|Recur:Upper|Recur:Lower|Recur:Upper|bG~0_combout\,
	datac => \Mid|BLAN|ForGenerate:10:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\,
	datad => \Mid|BLAN|ForGenerate:12:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\,
	combout => \Bot|S[15]~65_combout\);

-- Location: LCCOMB_X96_Y43_N14
\Mid|BLAN|ForGenerate:14:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|bG~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|BLAN|ForGenerate:14:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\ = (\A[14]~input_o\ & ((\B[14]~input_o\) # ((\B[13]~input_o\ & \A[13]~input_o\)))) # (!\A[14]~input_o\ & (\B[13]~input_o\ & (\A[13]~input_o\ & \B[14]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[14]~input_o\,
	datab => \B[13]~input_o\,
	datac => \A[13]~input_o\,
	datad => \B[14]~input_o\,
	combout => \Mid|BLAN|ForGenerate:14:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\);

-- Location: LCCOMB_X100_Y43_N4
\Bot|S[15]~131\ : cycloneive_lcell_comb
-- Equation(s):
-- \Bot|S[15]~131_combout\ = (\Mid|BLAN|ForGenerate:16:ColumnBlock|Recur:Upper|bG~0_combout\ & (\Top|P\(14) & (\B[9]~input_o\ $ (\A[9]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[9]~input_o\,
	datab => \Mid|BLAN|ForGenerate:16:ColumnBlock|Recur:Upper|bG~0_combout\,
	datac => \Top|P\(14),
	datad => \A[9]~input_o\,
	combout => \Bot|S[15]~131_combout\);

-- Location: LCCOMB_X96_Y43_N12
\Bot|S[15]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \Bot|S[15]~64_combout\ = (\Bot|S[15]~131_combout\ & ((\Mid|BLAN|ForGenerate:8:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\) # ((\Bot|S[14]~60_combout\ & \Bot|S[9]~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Bot|S[15]~131_combout\,
	datab => \Mid|BLAN|ForGenerate:8:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\,
	datac => \Bot|S[14]~60_combout\,
	datad => \Bot|S[9]~38_combout\,
	combout => \Bot|S[15]~64_combout\);

-- Location: LCCOMB_X96_Y43_N20
\Bot|S[15]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \Bot|S[15]~66_combout\ = \Top|P\(15) $ (((\Bot|S[15]~65_combout\) # ((\Mid|BLAN|ForGenerate:14:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\) # (\Bot|S[15]~64_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Top|P\(15),
	datab => \Bot|S[15]~65_combout\,
	datac => \Mid|BLAN|ForGenerate:14:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\,
	datad => \Bot|S[15]~64_combout\,
	combout => \Bot|S[15]~66_combout\);

-- Location: LCCOMB_X91_Y47_N12
\Mid|BLAN|ForGenerate:15:ColumnBlock|Recur:Upper|BP~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|BLAN|ForGenerate:15:ColumnBlock|Recur:Upper|BP~5_combout\ = (\B[15]~input_o\ & (!\A[15]~input_o\ & (\A[14]~input_o\ $ (\B[14]~input_o\)))) # (!\B[15]~input_o\ & (\A[15]~input_o\ & (\A[14]~input_o\ $ (\B[14]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[15]~input_o\,
	datab => \A[15]~input_o\,
	datac => \A[14]~input_o\,
	datad => \B[14]~input_o\,
	combout => \Mid|BLAN|ForGenerate:15:ColumnBlock|Recur:Upper|BP~5_combout\);

-- Location: LCCOMB_X99_Y43_N8
\Mid|BLAN|ForGenerate:15:ColumnBlock|Recur:Upper|BP~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|BLAN|ForGenerate:15:ColumnBlock|Recur:Upper|BP~6_combout\ = (\Mid|BLAN|ForGenerate:15:ColumnBlock|Recur:Upper|BP~5_combout\ & (\Mid|BLAN|ForGenerate:16:ColumnBlock|Recur:Upper|bG~0_combout\ & (\Top|P\(8) & \Top|P\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mid|BLAN|ForGenerate:15:ColumnBlock|Recur:Upper|BP~5_combout\,
	datab => \Mid|BLAN|ForGenerate:16:ColumnBlock|Recur:Upper|bG~0_combout\,
	datac => \Top|P\(8),
	datad => \Top|P\(9),
	combout => \Mid|BLAN|ForGenerate:15:ColumnBlock|Recur:Upper|BP~6_combout\);

-- Location: LCCOMB_X91_Y47_N6
\Mid|BLAN|ForGenerate:15:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|bG~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|BLAN|ForGenerate:15:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\ = (\B[15]~input_o\ & ((\A[15]~input_o\) # ((\A[14]~input_o\ & \B[14]~input_o\)))) # (!\B[15]~input_o\ & (\A[15]~input_o\ & (\A[14]~input_o\ & \B[14]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[15]~input_o\,
	datab => \A[15]~input_o\,
	datac => \A[14]~input_o\,
	datad => \B[14]~input_o\,
	combout => \Mid|BLAN|ForGenerate:15:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\);

-- Location: LCCOMB_X99_Y43_N24
\Mid|OC[16]~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|OC[16]~73_combout\ = (!\Mid|BLAN|ForGenerate:15:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\ & (((!\Mid|BLAN|ForGenerate:13:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\ & !\Bot|S[14]~62_combout\)) # 
-- (!\Mid|BLAN|ForGenerate:15:ColumnBlock|Recur:Upper|BP~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mid|BLAN|ForGenerate:13:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\,
	datab => \Mid|BLAN|ForGenerate:15:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\,
	datac => \Bot|S[14]~62_combout\,
	datad => \Mid|BLAN|ForGenerate:15:ColumnBlock|Recur:Upper|BP~5_combout\,
	combout => \Mid|OC[16]~73_combout\);

-- Location: LCCOMB_X99_Y43_N20
\Mid|BLAN|ForGenerate:17:ColumnBlock|Recur:Lower|bG~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|BLAN|ForGenerate:17:ColumnBlock|Recur:Lower|bG~0_combout\ = (\Mid|BLAN|ForGenerate:3:ColumnBlock|Recur:Upper|bG~0_combout\) # ((\Mid|BLAN|ForGenerate:3:ColumnBlock|Recur:Upper|BP~0_combout\ & \Mid|BLAN|ForGenerate:1:ColumnBlock|bG~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mid|BLAN|ForGenerate:3:ColumnBlock|Recur:Upper|BP~0_combout\,
	datab => \Mid|BLAN|ForGenerate:3:ColumnBlock|Recur:Upper|bG~0_combout\,
	datac => \Mid|BLAN|ForGenerate:1:ColumnBlock|bG~0_combout\,
	combout => \Mid|BLAN|ForGenerate:17:ColumnBlock|Recur:Lower|bG~0_combout\);

-- Location: LCCOMB_X101_Y43_N4
\Mid|BLAN|ForGenerate:15:ColumnBlock|Recur:Lower|Recur:Upper|BP~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|BLAN|ForGenerate:15:ColumnBlock|Recur:Lower|Recur:Upper|BP~0_combout\ = (\Mid|BLAN|ForGenerate:6:ColumnBlock|Recur:Upper|BP~0_combout\ & (\Top|P\(4) & (\B[7]~input_o\ $ (\A[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mid|BLAN|ForGenerate:6:ColumnBlock|Recur:Upper|BP~0_combout\,
	datab => \B[7]~input_o\,
	datac => \A[7]~input_o\,
	datad => \Top|P\(4),
	combout => \Mid|BLAN|ForGenerate:15:ColumnBlock|Recur:Lower|Recur:Upper|BP~0_combout\);

-- Location: LCCOMB_X101_Y43_N30
\Mid|BLAN|ForGenerate:15:ColumnBlock|Recur:Lower|bG~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|BLAN|ForGenerate:15:ColumnBlock|Recur:Lower|bG~0_combout\ = (\Mid|BLAN|ForGenerate:7:ColumnBlock|Recur:Upper|Recur:Upper|bG~0_combout\) # ((\Bot|S[8]~36_combout\ & \Mid|BLAN|ForGenerate:5:ColumnBlock|Recur:Upper|Recur:Upper|bG~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mid|BLAN|ForGenerate:7:ColumnBlock|Recur:Upper|Recur:Upper|bG~0_combout\,
	datac => \Bot|S[8]~36_combout\,
	datad => \Mid|BLAN|ForGenerate:5:ColumnBlock|Recur:Upper|Recur:Upper|bG~0_combout\,
	combout => \Mid|BLAN|ForGenerate:15:ColumnBlock|Recur:Lower|bG~0_combout\);

-- Location: LCCOMB_X99_Y43_N14
\Mid|BLAN|ForGenerate:15:ColumnBlock|Recur:Lower|bG~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|BLAN|ForGenerate:15:ColumnBlock|Recur:Lower|bG~1_combout\ = (\Mid|BLAN|ForGenerate:15:ColumnBlock|Recur:Lower|bG~0_combout\) # ((\Mid|BLAN|ForGenerate:17:ColumnBlock|Recur:Lower|bG~0_combout\ & 
-- \Mid|BLAN|ForGenerate:15:ColumnBlock|Recur:Lower|Recur:Upper|BP~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mid|BLAN|ForGenerate:17:ColumnBlock|Recur:Lower|bG~0_combout\,
	datac => \Mid|BLAN|ForGenerate:15:ColumnBlock|Recur:Lower|Recur:Upper|BP~0_combout\,
	datad => \Mid|BLAN|ForGenerate:15:ColumnBlock|Recur:Lower|bG~0_combout\,
	combout => \Mid|BLAN|ForGenerate:15:ColumnBlock|Recur:Lower|bG~1_combout\);

-- Location: LCCOMB_X99_Y43_N2
\Mid|OC~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|OC~72_combout\ = (\Mid|BLAN|ForGenerate:3:ColumnBlock|Recur:Upper|BP~0_combout\ & (\Mid|BLAN|ForGenerate:15:ColumnBlock|Recur:Lower|Recur:Upper|BP~0_combout\ & (\Mid|OC~62_combout\ & \Top|P\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mid|BLAN|ForGenerate:3:ColumnBlock|Recur:Upper|BP~0_combout\,
	datab => \Mid|BLAN|ForGenerate:15:ColumnBlock|Recur:Lower|Recur:Upper|BP~0_combout\,
	datac => \Mid|OC~62_combout\,
	datad => \Top|P\(1),
	combout => \Mid|OC~72_combout\);

-- Location: LCCOMB_X99_Y43_N10
\Mid|OC[16]~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|OC[16]~74_combout\ = ((\Mid|BLAN|ForGenerate:15:ColumnBlock|Recur:Upper|BP~6_combout\ & ((\Mid|BLAN|ForGenerate:15:ColumnBlock|Recur:Lower|bG~1_combout\) # (\Mid|OC~72_combout\)))) # (!\Mid|OC[16]~73_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mid|BLAN|ForGenerate:15:ColumnBlock|Recur:Upper|BP~6_combout\,
	datab => \Mid|OC[16]~73_combout\,
	datac => \Mid|BLAN|ForGenerate:15:ColumnBlock|Recur:Lower|bG~1_combout\,
	datad => \Mid|OC~72_combout\,
	combout => \Mid|OC[16]~74_combout\);

-- Location: IOIBUF_X115_Y28_N8
\A[16]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(16),
	o => \A[16]~input_o\);

-- Location: IOIBUF_X115_Y60_N15
\B[16]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(16),
	o => \B[16]~input_o\);

-- Location: LCCOMB_X92_Y44_N26
\Bot|S[16]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Bot|S\(16) = \Mid|OC[16]~74_combout\ $ (\A[16]~input_o\ $ (\B[16]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mid|OC[16]~74_combout\,
	datab => \A[16]~input_o\,
	datad => \B[16]~input_o\,
	combout => \Bot|S\(16));

-- Location: LCCOMB_X100_Y43_N6
\Mid|OC[17]~395\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|OC[17]~395_combout\ = (\Mid|OC~72_combout\ & (\B[9]~input_o\ $ (((\A[9]~input_o\))))) # (!\Mid|OC~72_combout\ & (\Mid|BLAN|ForGenerate:15:ColumnBlock|Recur:Lower|bG~1_combout\ & (\B[9]~input_o\ $ (\A[9]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mid|OC~72_combout\,
	datab => \B[9]~input_o\,
	datac => \Mid|BLAN|ForGenerate:15:ColumnBlock|Recur:Lower|bG~1_combout\,
	datad => \A[9]~input_o\,
	combout => \Mid|OC[17]~395_combout\);

-- Location: LCCOMB_X100_Y43_N0
\Mid|OC[17]~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|OC[17]~75_combout\ = (\Mid|BLAN|ForGenerate:16:ColumnBlock|Recur:Upper|bG~0_combout\ & ((\Mid|BLAN|ForGenerate:9:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\) # ((\Mid|OC[17]~395_combout\ & \Top|P\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mid|OC[17]~395_combout\,
	datab => \Top|P\(8),
	datac => \Mid|BLAN|ForGenerate:16:ColumnBlock|Recur:Upper|bG~0_combout\,
	datad => \Mid|BLAN|ForGenerate:9:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\,
	combout => \Mid|OC[17]~75_combout\);

-- Location: LCCOMB_X92_Y44_N16
\Top|P[16]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Top|P\(16) = \A[16]~input_o\ $ (\B[16]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[16]~input_o\,
	datad => \B[16]~input_o\,
	combout => \Top|P\(16));

-- Location: LCCOMB_X94_Y44_N2
\Mid|BLAN|ForGenerate:16:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|BP~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|BLAN|ForGenerate:16:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|BP~0_combout\ = (\Top|P\(16) & (\Top|P\(15) & (\B[14]~input_o\ $ (\A[14]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Top|P\(16),
	datab => \B[14]~input_o\,
	datac => \Top|P\(15),
	datad => \A[14]~input_o\,
	combout => \Mid|BLAN|ForGenerate:16:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|BP~0_combout\);

-- Location: LCCOMB_X94_Y44_N4
\Mid|BLAN|ForGenerate:16:ColumnBlock|Recur:Upper|bG~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|BLAN|ForGenerate:16:ColumnBlock|Recur:Upper|bG~1_combout\ = (\Mid|BLAN|ForGenerate:15:ColumnBlock|Recur:Upper|BP~4_combout\ & \Mid|BLAN|ForGenerate:11:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mid|BLAN|ForGenerate:15:ColumnBlock|Recur:Upper|BP~4_combout\,
	datad => \Mid|BLAN|ForGenerate:11:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\,
	combout => \Mid|BLAN|ForGenerate:16:ColumnBlock|Recur:Upper|bG~1_combout\);

-- Location: LCCOMB_X94_Y44_N6
\Mid|OC[17]~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|OC[17]~76_combout\ = (\Mid|BLAN|ForGenerate:16:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|BP~0_combout\ & ((\Mid|OC[17]~75_combout\) # ((\Mid|BLAN|ForGenerate:16:ColumnBlock|Recur:Upper|bG~1_combout\) # 
-- (\Mid|BLAN|ForGenerate:13:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mid|OC[17]~75_combout\,
	datab => \Mid|BLAN|ForGenerate:16:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|BP~0_combout\,
	datac => \Mid|BLAN|ForGenerate:16:ColumnBlock|Recur:Upper|bG~1_combout\,
	datad => \Mid|BLAN|ForGenerate:13:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\,
	combout => \Mid|OC[17]~76_combout\);

-- Location: LCCOMB_X91_Y44_N16
\Mid|BLAN|ForGenerate:16:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|BLAN|ForGenerate:16:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\ = (\A[16]~input_o\ & ((\B[16]~input_o\) # ((\B[15]~input_o\ & \A[15]~input_o\)))) # (!\A[16]~input_o\ & (\B[15]~input_o\ & (\A[15]~input_o\ & 
-- \B[16]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[15]~input_o\,
	datab => \A[15]~input_o\,
	datac => \A[16]~input_o\,
	datad => \B[16]~input_o\,
	combout => \Mid|BLAN|ForGenerate:16:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\);

-- Location: IOIBUF_X115_Y22_N22
\B[17]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(17),
	o => \B[17]~input_o\);

-- Location: IOIBUF_X115_Y22_N1
\A[17]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(17),
	o => \A[17]~input_o\);

-- Location: LCCOMB_X91_Y44_N18
\Top|P[17]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Top|P\(17) = \B[17]~input_o\ $ (\A[17]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[17]~input_o\,
	datac => \A[17]~input_o\,
	combout => \Top|P\(17));

-- Location: LCCOMB_X94_Y44_N8
\Mid|BLAN|ForGenerate:16:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|bG~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|BLAN|ForGenerate:16:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\ = (\Top|P\(16) & (\B[14]~input_o\ & (\Top|P\(15) & \A[14]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Top|P\(16),
	datab => \B[14]~input_o\,
	datac => \Top|P\(15),
	datad => \A[14]~input_o\,
	combout => \Mid|BLAN|ForGenerate:16:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\);

-- Location: LCCOMB_X94_Y44_N0
\Bot|S[17]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Bot|S\(17) = \Top|P\(17) $ (((\Mid|OC[17]~76_combout\) # ((\Mid|BLAN|ForGenerate:16:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\) # (\Mid|BLAN|ForGenerate:16:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mid|OC[17]~76_combout\,
	datab => \Mid|BLAN|ForGenerate:16:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\,
	datac => \Top|P\(17),
	datad => \Mid|BLAN|ForGenerate:16:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\,
	combout => \Bot|S\(17));

-- Location: LCCOMB_X91_Y44_N12
\Mid|BLAN|ForGenerate:17:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|BP~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|BLAN|ForGenerate:17:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|BP~2_combout\ = (\B[16]~input_o\ & (!\A[16]~input_o\ & (\B[17]~input_o\ $ (\A[17]~input_o\)))) # (!\B[16]~input_o\ & (\A[16]~input_o\ & (\B[17]~input_o\ $ (\A[17]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[16]~input_o\,
	datab => \B[17]~input_o\,
	datac => \A[17]~input_o\,
	datad => \A[16]~input_o\,
	combout => \Mid|BLAN|ForGenerate:17:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|BP~2_combout\);

-- Location: LCCOMB_X91_Y47_N14
\Mid|BLAN|ForGenerate:17:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|BP~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|BLAN|ForGenerate:17:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|BP~3_combout\ = (\Mid|BLAN|ForGenerate:17:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|BP~2_combout\ & (\B[15]~input_o\ $ (\A[15]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[15]~input_o\,
	datac => \Mid|BLAN|ForGenerate:17:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|BP~2_combout\,
	datad => \A[15]~input_o\,
	combout => \Mid|BLAN|ForGenerate:17:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|BP~3_combout\);

-- Location: LCCOMB_X96_Y43_N22
\Mid|OC[18]~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|OC[18]~77_combout\ = (\Mid|BLAN|ForGenerate:17:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|BP~3_combout\ & ((\Mid|BLAN|ForGenerate:14:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\) # 
-- ((\Mid|BLAN|ForGenerate:12:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\ & \Mid|BLAN|ForGenerate:19:ColumnBlock|Recur:Upper|Recur:Lower|Recur:Upper|bG~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mid|BLAN|ForGenerate:17:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|BP~3_combout\,
	datab => \Mid|BLAN|ForGenerate:12:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\,
	datac => \Mid|BLAN|ForGenerate:14:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\,
	datad => \Mid|BLAN|ForGenerate:19:ColumnBlock|Recur:Upper|Recur:Lower|Recur:Upper|bG~0_combout\,
	combout => \Mid|OC[18]~77_combout\);

-- Location: LCCOMB_X91_Y47_N20
\Mid|BLAN|ForGenerate:17:ColumnBlock|bG~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|BLAN|ForGenerate:17:ColumnBlock|bG~4_combout\ = (\Top|P\(15) & (\Mid|BLAN|ForGenerate:17:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|BP~2_combout\ & (\A[14]~input_o\ $ (\B[14]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Top|P\(15),
	datab => \Mid|BLAN|ForGenerate:17:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|BP~2_combout\,
	datac => \A[14]~input_o\,
	datad => \B[14]~input_o\,
	combout => \Mid|BLAN|ForGenerate:17:ColumnBlock|bG~4_combout\);

-- Location: LCCOMB_X97_Y43_N12
\Mid|BLAN|ForGenerate:15:ColumnBlock|Recur:Upper|BP~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|BLAN|ForGenerate:15:ColumnBlock|Recur:Upper|BP~7_combout\ = (\Mid|BLAN|ForGenerate:15:ColumnBlock|Recur:Upper|BP~4_combout\ & (\B[11]~input_o\ $ (\A[11]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[11]~input_o\,
	datab => \Mid|BLAN|ForGenerate:15:ColumnBlock|Recur:Upper|BP~4_combout\,
	datad => \A[11]~input_o\,
	combout => \Mid|BLAN|ForGenerate:15:ColumnBlock|Recur:Upper|BP~7_combout\);

-- Location: LCCOMB_X101_Y43_N24
\Mid|BLAN|ForGenerate:17:ColumnBlock|Recur:Lower|bG~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|BLAN|ForGenerate:17:ColumnBlock|Recur:Lower|bG~1_combout\ = (!\Mid|BLAN|ForGenerate:8:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\ & (((!\B[6]~input_o\) # (!\A[6]~input_o\)) # (!\Bot|S[9]~38_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Bot|S[9]~38_combout\,
	datab => \A[6]~input_o\,
	datac => \Mid|BLAN|ForGenerate:8:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\,
	datad => \B[6]~input_o\,
	combout => \Mid|BLAN|ForGenerate:17:ColumnBlock|Recur:Lower|bG~1_combout\);

-- Location: LCCOMB_X101_Y43_N14
\Mid|BLAN|ForGenerate:17:ColumnBlock|Recur:Lower|Recur:Upper|bG~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|BLAN|ForGenerate:17:ColumnBlock|Recur:Lower|Recur:Upper|bG~2_combout\ = (\Mid|BLAN|ForGenerate:5:ColumnBlock|Recur:Upper|Recur:Upper|bG~0_combout\ & (\Bot|S[8]~36_combout\ & (\B[8]~input_o\ $ (\A[8]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[8]~input_o\,
	datab => \Mid|BLAN|ForGenerate:5:ColumnBlock|Recur:Upper|Recur:Upper|bG~0_combout\,
	datac => \A[8]~input_o\,
	datad => \Bot|S[8]~36_combout\,
	combout => \Mid|BLAN|ForGenerate:17:ColumnBlock|Recur:Lower|Recur:Upper|bG~2_combout\);

-- Location: LCCOMB_X100_Y43_N26
\Mid|BLAN|ForGenerate:17:ColumnBlock|Recur:Lower|bG~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|BLAN|ForGenerate:17:ColumnBlock|Recur:Lower|bG~2_combout\ = ((\Mid|BLAN|ForGenerate:17:ColumnBlock|Recur:Lower|Recur:Upper|bG~2_combout\) # ((\Mid|BLAN|ForGenerate:17:ColumnBlock|Recur:Lower|Recur:Upper|BP~2_combout\ & 
-- \Mid|BLAN|ForGenerate:17:ColumnBlock|Recur:Lower|bG~0_combout\))) # (!\Mid|BLAN|ForGenerate:17:ColumnBlock|Recur:Lower|bG~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mid|BLAN|ForGenerate:17:ColumnBlock|Recur:Lower|Recur:Upper|BP~2_combout\,
	datab => \Mid|BLAN|ForGenerate:17:ColumnBlock|Recur:Lower|bG~1_combout\,
	datac => \Mid|BLAN|ForGenerate:17:ColumnBlock|Recur:Lower|Recur:Upper|bG~2_combout\,
	datad => \Mid|BLAN|ForGenerate:17:ColumnBlock|Recur:Lower|bG~0_combout\,
	combout => \Mid|BLAN|ForGenerate:17:ColumnBlock|Recur:Lower|bG~2_combout\);

-- Location: LCCOMB_X99_Y43_N12
\Mid|OC~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|OC~79_combout\ = (\Mid|BLAN|ForGenerate:3:ColumnBlock|Recur:Upper|BP~0_combout\ & (\Top|P\(1) & (\Mid|OC~62_combout\ & \Mid|BLAN|ForGenerate:17:ColumnBlock|Recur:Lower|Recur:Upper|BP~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mid|BLAN|ForGenerate:3:ColumnBlock|Recur:Upper|BP~0_combout\,
	datab => \Top|P\(1),
	datac => \Mid|OC~62_combout\,
	datad => \Mid|BLAN|ForGenerate:17:ColumnBlock|Recur:Lower|Recur:Upper|BP~2_combout\,
	combout => \Mid|OC~79_combout\);

-- Location: LCCOMB_X98_Y43_N30
\Mid|OC[18]~396\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|OC[18]~396_combout\ = (\Mid|BLAN|ForGenerate:17:ColumnBlock|Recur:Lower|bG~2_combout\ & (\B[9]~input_o\ $ (((\A[9]~input_o\))))) # (!\Mid|BLAN|ForGenerate:17:ColumnBlock|Recur:Lower|bG~2_combout\ & (\Mid|OC~79_combout\ & (\B[9]~input_o\ $ 
-- (\A[9]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[9]~input_o\,
	datab => \Mid|BLAN|ForGenerate:17:ColumnBlock|Recur:Lower|bG~2_combout\,
	datac => \Mid|OC~79_combout\,
	datad => \A[9]~input_o\,
	combout => \Mid|OC[18]~396_combout\);

-- Location: LCCOMB_X98_Y43_N4
\Mid|OC[18]~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|OC[18]~80_combout\ = (\Mid|BLAN|ForGenerate:15:ColumnBlock|Recur:Upper|BP~7_combout\ & ((\Mid|BLAN|ForGenerate:10:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\) # ((\Mid|BLAN|ForGenerate:16:ColumnBlock|Recur:Upper|bG~0_combout\ & 
-- \Mid|OC[18]~396_combout\)))) # (!\Mid|BLAN|ForGenerate:15:ColumnBlock|Recur:Upper|BP~7_combout\ & (\Mid|BLAN|ForGenerate:16:ColumnBlock|Recur:Upper|bG~0_combout\ & (\Mid|OC[18]~396_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mid|BLAN|ForGenerate:15:ColumnBlock|Recur:Upper|BP~7_combout\,
	datab => \Mid|BLAN|ForGenerate:16:ColumnBlock|Recur:Upper|bG~0_combout\,
	datac => \Mid|OC[18]~396_combout\,
	datad => \Mid|BLAN|ForGenerate:10:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\,
	combout => \Mid|OC[18]~80_combout\);

-- Location: LCCOMB_X91_Y44_N22
\Mid|BLAN|ForGenerate:17:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|BLAN|ForGenerate:17:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\ = (\B[17]~input_o\ & ((\A[17]~input_o\) # ((\B[16]~input_o\ & \A[16]~input_o\)))) # (!\B[17]~input_o\ & (\B[16]~input_o\ & (\A[17]~input_o\ & 
-- \A[16]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[16]~input_o\,
	datab => \B[17]~input_o\,
	datac => \A[17]~input_o\,
	datad => \A[16]~input_o\,
	combout => \Mid|BLAN|ForGenerate:17:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\);

-- Location: LCCOMB_X91_Y44_N24
\Mid|OC[18]~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|OC[18]~78_combout\ = (!\Mid|BLAN|ForGenerate:17:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\ & (((!\B[15]~input_o\) # (!\A[15]~input_o\)) # 
-- (!\Mid|BLAN|ForGenerate:17:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|BP~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mid|BLAN|ForGenerate:17:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|BP~2_combout\,
	datab => \A[15]~input_o\,
	datac => \Mid|BLAN|ForGenerate:17:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\,
	datad => \B[15]~input_o\,
	combout => \Mid|OC[18]~78_combout\);

-- Location: LCCOMB_X91_Y47_N16
\Mid|OC[18]~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|OC[18]~81_combout\ = (\Mid|OC[18]~77_combout\) # (((\Mid|BLAN|ForGenerate:17:ColumnBlock|bG~4_combout\ & \Mid|OC[18]~80_combout\)) # (!\Mid|OC[18]~78_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mid|OC[18]~77_combout\,
	datab => \Mid|BLAN|ForGenerate:17:ColumnBlock|bG~4_combout\,
	datac => \Mid|OC[18]~80_combout\,
	datad => \Mid|OC[18]~78_combout\,
	combout => \Mid|OC[18]~81_combout\);

-- Location: IOIBUF_X115_Y25_N22
\A[18]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(18),
	o => \A[18]~input_o\);

-- Location: IOIBUF_X115_Y61_N15
\B[18]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(18),
	o => \B[18]~input_o\);

-- Location: LCCOMB_X91_Y45_N16
\Bot|S[18]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Bot|S\(18) = \Mid|OC[18]~81_combout\ $ (\A[18]~input_o\ $ (\B[18]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mid|OC[18]~81_combout\,
	datab => \A[18]~input_o\,
	datac => \B[18]~input_o\,
	combout => \Bot|S\(18));

-- Location: IOIBUF_X91_Y0_N22
\A[19]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(19),
	o => \A[19]~input_o\);

-- Location: IOIBUF_X91_Y0_N15
\B[19]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(19),
	o => \B[19]~input_o\);

-- Location: LCCOMB_X99_Y43_N6
\Mid|OC[19]~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|OC[19]~84_combout\ = (\Mid|BLAN|ForGenerate:16:ColumnBlock|Recur:Upper|bG~0_combout\ & (\Top|P\(9) & ((\Mid|OC~79_combout\) # (\Mid|BLAN|ForGenerate:17:ColumnBlock|Recur:Lower|bG~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mid|OC~79_combout\,
	datab => \Mid|BLAN|ForGenerate:16:ColumnBlock|Recur:Upper|bG~0_combout\,
	datac => \Mid|BLAN|ForGenerate:17:ColumnBlock|Recur:Lower|bG~2_combout\,
	datad => \Top|P\(9),
	combout => \Mid|OC[19]~84_combout\);

-- Location: LCCOMB_X91_Y45_N18
\Mid|BLAN|ForGenerate:18:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|BLAN|ForGenerate:18:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\ = (\B[18]~input_o\ & ((\A[18]~input_o\) # ((\B[17]~input_o\ & \A[17]~input_o\)))) # (!\B[18]~input_o\ & (\B[17]~input_o\ & (\A[17]~input_o\ & 
-- \A[18]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[18]~input_o\,
	datab => \B[17]~input_o\,
	datac => \A[17]~input_o\,
	datad => \A[18]~input_o\,
	combout => \Mid|BLAN|ForGenerate:18:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\);

-- Location: LCCOMB_X91_Y45_N20
\Mid|BLAN|ForGenerate:18:ColumnBlock|Recur:Upper|Recur:Upper|bG~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|BLAN|ForGenerate:18:ColumnBlock|Recur:Upper|Recur:Upper|bG~2_combout\ = (\Mid|BLAN|ForGenerate:17:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|BP~2_combout\ & (\Mid|BLAN|ForGenerate:15:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\ 
-- & (\B[18]~input_o\ $ (\A[18]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mid|BLAN|ForGenerate:17:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|BP~2_combout\,
	datab => \Mid|BLAN|ForGenerate:15:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\,
	datac => \B[18]~input_o\,
	datad => \A[18]~input_o\,
	combout => \Mid|BLAN|ForGenerate:18:ColumnBlock|Recur:Upper|Recur:Upper|bG~2_combout\);

-- Location: LCCOMB_X91_Y45_N8
\Top|P[18]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Top|P\(18) = \A[18]~input_o\ $ (\B[18]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[18]~input_o\,
	datac => \B[18]~input_o\,
	combout => \Top|P\(18));

-- Location: LCCOMB_X92_Y44_N18
\Mid|BLAN|ForGenerate:18:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|bG~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|BLAN|ForGenerate:18:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\ = (\B[16]~input_o\ & (\Top|P\(17) & (\Top|P\(18) & \A[16]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[16]~input_o\,
	datab => \Top|P\(17),
	datac => \Top|P\(18),
	datad => \A[16]~input_o\,
	combout => \Mid|BLAN|ForGenerate:18:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\);

-- Location: LCCOMB_X92_Y44_N28
\Mid|OC[19]~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|OC[19]~83_combout\ = (\Mid|BLAN|ForGenerate:18:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\) # ((\Mid|BLAN|ForGenerate:18:ColumnBlock|Recur:Upper|Recur:Upper|bG~2_combout\) # 
-- (\Mid|BLAN|ForGenerate:18:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mid|BLAN|ForGenerate:18:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\,
	datac => \Mid|BLAN|ForGenerate:18:ColumnBlock|Recur:Upper|Recur:Upper|bG~2_combout\,
	datad => \Mid|BLAN|ForGenerate:18:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\,
	combout => \Mid|OC[19]~83_combout\);

-- Location: LCCOMB_X91_Y45_N10
\Mid|BLAN|ForGenerate:18:ColumnBlock|Recur:Upper|BP~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|BLAN|ForGenerate:18:ColumnBlock|Recur:Upper|BP~2_combout\ = (\Mid|BLAN|ForGenerate:17:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|BP~2_combout\ & (\Mid|BLAN|ForGenerate:15:ColumnBlock|Recur:Upper|BP~5_combout\ & (\B[18]~input_o\ $ 
-- (\A[18]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mid|BLAN|ForGenerate:17:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|BP~2_combout\,
	datab => \Mid|BLAN|ForGenerate:15:ColumnBlock|Recur:Upper|BP~5_combout\,
	datac => \B[18]~input_o\,
	datad => \A[18]~input_o\,
	combout => \Mid|BLAN|ForGenerate:18:ColumnBlock|Recur:Upper|BP~2_combout\);

-- Location: LCCOMB_X97_Y43_N14
\Mid|BLAN|ForGenerate:22:ColumnBlock|Recur:Upper|bG~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|BLAN|ForGenerate:22:ColumnBlock|Recur:Upper|bG~0_combout\ = (\B[11]~input_o\ & (\Mid|BLAN|ForGenerate:15:ColumnBlock|Recur:Upper|BP~4_combout\ & \A[11]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[11]~input_o\,
	datab => \Mid|BLAN|ForGenerate:15:ColumnBlock|Recur:Upper|BP~4_combout\,
	datad => \A[11]~input_o\,
	combout => \Mid|BLAN|ForGenerate:22:ColumnBlock|Recur:Upper|bG~0_combout\);

-- Location: LCCOMB_X97_Y43_N0
\Mid|OC[19]~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|OC[19]~82_combout\ = (\Mid|BLAN|ForGenerate:22:ColumnBlock|Recur:Upper|bG~0_combout\) # ((\Mid|BLAN|ForGenerate:13:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\) # ((\Mid|BLAN|ForGenerate:15:ColumnBlock|Recur:Upper|BP~7_combout\ & 
-- \Mid|BLAN|ForGenerate:10:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mid|BLAN|ForGenerate:15:ColumnBlock|Recur:Upper|BP~7_combout\,
	datab => \Mid|BLAN|ForGenerate:22:ColumnBlock|Recur:Upper|bG~0_combout\,
	datac => \Mid|BLAN|ForGenerate:13:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\,
	datad => \Mid|BLAN|ForGenerate:10:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\,
	combout => \Mid|OC[19]~82_combout\);

-- Location: LCCOMB_X92_Y44_N22
\Mid|OC[19]~85\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|OC[19]~85_combout\ = (\Mid|OC[19]~83_combout\) # ((\Mid|BLAN|ForGenerate:18:ColumnBlock|Recur:Upper|BP~2_combout\ & ((\Mid|OC[19]~84_combout\) # (\Mid|OC[19]~82_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mid|OC[19]~84_combout\,
	datab => \Mid|OC[19]~83_combout\,
	datac => \Mid|BLAN|ForGenerate:18:ColumnBlock|Recur:Upper|BP~2_combout\,
	datad => \Mid|OC[19]~82_combout\,
	combout => \Mid|OC[19]~85_combout\);

-- Location: LCCOMB_X91_Y45_N12
\Bot|S[19]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Bot|S\(19) = \A[19]~input_o\ $ (\B[19]~input_o\ $ (\Mid|OC[19]~85_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[19]~input_o\,
	datab => \B[19]~input_o\,
	datac => \Mid|OC[19]~85_combout\,
	combout => \Bot|S\(19));

-- Location: IOIBUF_X115_Y47_N22
\B[20]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(20),
	o => \B[20]~input_o\);

-- Location: LCCOMB_X91_Y45_N22
\Mid|BLAN|ForGenerate:19:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|bG~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|BLAN|ForGenerate:19:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\ = (\A[19]~input_o\ & (!\B[19]~input_o\ & (\B[18]~input_o\ $ (\A[18]~input_o\)))) # (!\A[19]~input_o\ & (\B[19]~input_o\ & (\B[18]~input_o\ $ (\A[18]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[19]~input_o\,
	datab => \B[19]~input_o\,
	datac => \B[18]~input_o\,
	datad => \A[18]~input_o\,
	combout => \Mid|BLAN|ForGenerate:19:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\);

-- Location: LCCOMB_X96_Y43_N16
\Mid|BLAN|ForGenerate:19:ColumnBlock|Recur:Upper|Recur:Lower|bG~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|BLAN|ForGenerate:19:ColumnBlock|Recur:Upper|Recur:Lower|bG~4_combout\ = (!\Mid|BLAN|ForGenerate:14:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\ & 
-- (((!\Mid|BLAN|ForGenerate:19:ColumnBlock|Recur:Upper|Recur:Lower|Recur:Upper|bG~0_combout\) # (!\A[12]~input_o\)) # (!\B[12]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[12]~input_o\,
	datab => \A[12]~input_o\,
	datac => \Mid|BLAN|ForGenerate:14:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\,
	datad => \Mid|BLAN|ForGenerate:19:ColumnBlock|Recur:Upper|Recur:Lower|Recur:Upper|bG~0_combout\,
	combout => \Mid|BLAN|ForGenerate:19:ColumnBlock|Recur:Upper|Recur:Lower|bG~4_combout\);

-- Location: LCCOMB_X94_Y44_N12
\Mid|BLAN|ForGenerate:19:ColumnBlock|Recur:Upper|Recur:Lower|bG\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|BLAN|ForGenerate:19:ColumnBlock|Recur:Upper|Recur:Lower|bG~combout\ = ((\Mid|BLAN|ForGenerate:16:ColumnBlock|Recur:Upper|bG~1_combout\ & (\B[14]~input_o\ $ (\A[14]~input_o\)))) # 
-- (!\Mid|BLAN|ForGenerate:19:ColumnBlock|Recur:Upper|Recur:Lower|bG~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010111010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mid|BLAN|ForGenerate:19:ColumnBlock|Recur:Upper|Recur:Lower|bG~4_combout\,
	datab => \B[14]~input_o\,
	datac => \Mid|BLAN|ForGenerate:16:ColumnBlock|Recur:Upper|bG~1_combout\,
	datad => \A[14]~input_o\,
	combout => \Mid|BLAN|ForGenerate:19:ColumnBlock|Recur:Upper|Recur:Lower|bG~combout\);

-- Location: LCCOMB_X94_Y44_N10
\Mid|OC[20]~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|OC[20]~86_combout\ = (\Mid|BLAN|ForGenerate:16:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\) # ((\Top|P\(16) & (\Top|P\(15) & \Mid|BLAN|ForGenerate:19:ColumnBlock|Recur:Upper|Recur:Lower|bG~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Top|P\(16),
	datab => \Mid|BLAN|ForGenerate:16:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\,
	datac => \Top|P\(15),
	datad => \Mid|BLAN|ForGenerate:19:ColumnBlock|Recur:Upper|Recur:Lower|bG~combout\,
	combout => \Mid|OC[20]~86_combout\);

-- Location: LCCOMB_X91_Y44_N2
\Mid|OC[20]~87\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|OC[20]~87_combout\ = (\Mid|BLAN|ForGenerate:19:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\ & ((\B[17]~input_o\ & ((\A[17]~input_o\) # (\Mid|OC[20]~86_combout\))) # (!\B[17]~input_o\ & (\A[17]~input_o\ & \Mid|OC[20]~86_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mid|BLAN|ForGenerate:19:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\,
	datab => \B[17]~input_o\,
	datac => \A[17]~input_o\,
	datad => \Mid|OC[20]~86_combout\,
	combout => \Mid|OC[20]~87_combout\);

-- Location: LCCOMB_X107_Y43_N22
\Mid|OC~88\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|OC~88_combout\ = (\Mid|BLAN|ForGenerate:4:ColumnBlock|Recur:Upper|BP~1_combout\ & (\Mid|OC~62_combout\ & (\B[1]~input_o\ $ (\A[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mid|BLAN|ForGenerate:4:ColumnBlock|Recur:Upper|BP~1_combout\,
	datab => \B[1]~input_o\,
	datac => \A[1]~input_o\,
	datad => \Mid|OC~62_combout\,
	combout => \Mid|OC~88_combout\);

-- Location: LCCOMB_X95_Y43_N26
\Mid|OC~89\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|OC~89_combout\ = (\Mid|BLAN|ForGenerate:19:ColumnBlock|Recur:Lower|Recur:Upper|BP~0_combout\ & (\Mid|BLAN|ForGenerate:6:ColumnBlock|Recur:Upper|BP~0_combout\ & \Mid|OC~88_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mid|BLAN|ForGenerate:19:ColumnBlock|Recur:Lower|Recur:Upper|BP~0_combout\,
	datac => \Mid|BLAN|ForGenerate:6:ColumnBlock|Recur:Upper|BP~0_combout\,
	datad => \Mid|OC~88_combout\,
	combout => \Mid|OC~89_combout\);

-- Location: LCCOMB_X95_Y43_N22
\Mid|BLAN|ForGenerate:19:ColumnBlock|Recur:Lower|bG~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|BLAN|ForGenerate:19:ColumnBlock|Recur:Lower|bG~1_combout\ = (!\Mid|BLAN|ForGenerate:9:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\ & (((!\A[7]~input_o\) # 
-- (!\Mid|BLAN|ForGenerate:19:ColumnBlock|Recur:Lower|Recur:Upper|Recur:Upper|bG~0_combout\)) # (!\B[7]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[7]~input_o\,
	datab => \Mid|BLAN|ForGenerate:9:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\,
	datac => \Mid|BLAN|ForGenerate:19:ColumnBlock|Recur:Lower|Recur:Upper|Recur:Upper|bG~0_combout\,
	datad => \A[7]~input_o\,
	combout => \Mid|BLAN|ForGenerate:19:ColumnBlock|Recur:Lower|bG~1_combout\);

-- Location: LCCOMB_X102_Y43_N8
\Mid|BLAN|ForGenerate:21:ColumnBlock|Recur:Lower|bG~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|BLAN|ForGenerate:21:ColumnBlock|Recur:Lower|bG~0_combout\ = ((\Mid|BLAN|ForGenerate:1:ColumnBlock|bG~0_combout\ & \Mid|BLAN|ForGenerate:4:ColumnBlock|Recur:Upper|BP~1_combout\)) # (!\Mid|OC[5]~64_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mid|OC[5]~64_combout\,
	datac => \Mid|BLAN|ForGenerate:1:ColumnBlock|bG~0_combout\,
	datad => \Mid|BLAN|ForGenerate:4:ColumnBlock|Recur:Upper|BP~1_combout\,
	combout => \Mid|BLAN|ForGenerate:21:ColumnBlock|Recur:Lower|bG~0_combout\);

-- Location: LCCOMB_X95_Y43_N4
\Mid|BLAN|ForGenerate:19:ColumnBlock|Recur:Lower|bG~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|BLAN|ForGenerate:19:ColumnBlock|Recur:Lower|bG~0_combout\ = (\Mid|BLAN|ForGenerate:19:ColumnBlock|Recur:Lower|Recur:Upper|BP~0_combout\ & ((\Mid|BLAN|ForGenerate:6:ColumnBlock|Recur:Upper|Recur:Upper|bG~0_combout\) # 
-- ((\Mid|BLAN|ForGenerate:6:ColumnBlock|Recur:Upper|BP~0_combout\ & \Mid|BLAN|ForGenerate:21:ColumnBlock|Recur:Lower|bG~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mid|BLAN|ForGenerate:6:ColumnBlock|Recur:Upper|Recur:Upper|bG~0_combout\,
	datab => \Mid|BLAN|ForGenerate:19:ColumnBlock|Recur:Lower|Recur:Upper|BP~0_combout\,
	datac => \Mid|BLAN|ForGenerate:6:ColumnBlock|Recur:Upper|BP~0_combout\,
	datad => \Mid|BLAN|ForGenerate:21:ColumnBlock|Recur:Lower|bG~0_combout\,
	combout => \Mid|BLAN|ForGenerate:19:ColumnBlock|Recur:Lower|bG~0_combout\);

-- Location: LCCOMB_X95_Y43_N8
\Mid|BLAN|ForGenerate:19:ColumnBlock|Recur:Lower|bG~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|BLAN|ForGenerate:19:ColumnBlock|Recur:Lower|bG~2_combout\ = (\Mid|BLAN|ForGenerate:19:ColumnBlock|Recur:Lower|bG~0_combout\) # (!\Mid|BLAN|ForGenerate:19:ColumnBlock|Recur:Lower|bG~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mid|BLAN|ForGenerate:19:ColumnBlock|Recur:Lower|bG~1_combout\,
	datac => \Mid|BLAN|ForGenerate:19:ColumnBlock|Recur:Lower|bG~0_combout\,
	combout => \Mid|BLAN|ForGenerate:19:ColumnBlock|Recur:Lower|bG~2_combout\);

-- Location: LCCOMB_X91_Y45_N0
\Mid|BLAN|ForGenerate:19:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|BLAN|ForGenerate:19:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\ = (\A[19]~input_o\ & ((\B[19]~input_o\) # ((\B[18]~input_o\ & \A[18]~input_o\)))) # (!\A[19]~input_o\ & (\B[19]~input_o\ & (\B[18]~input_o\ & 
-- \A[18]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[19]~input_o\,
	datab => \B[19]~input_o\,
	datac => \B[18]~input_o\,
	datad => \A[18]~input_o\,
	combout => \Mid|BLAN|ForGenerate:19:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\);

-- Location: LCCOMB_X92_Y44_N8
\Mid|BLAN|ForGenerate:19:ColumnBlock|Recur:Upper|BP~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|BLAN|ForGenerate:19:ColumnBlock|Recur:Upper|BP~2_combout\ = (\Top|P\(15) & (\Top|P\(17) & (\Mid|BLAN|ForGenerate:19:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\ & \Top|P\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Top|P\(15),
	datab => \Top|P\(17),
	datac => \Mid|BLAN|ForGenerate:19:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\,
	datad => \Top|P\(16),
	combout => \Mid|BLAN|ForGenerate:19:ColumnBlock|Recur:Upper|BP~2_combout\);

-- Location: LCCOMB_X95_Y43_N6
\Mid|BLAN|ForGenerate:19:ColumnBlock|Recur:Upper|BP~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|BLAN|ForGenerate:19:ColumnBlock|Recur:Upper|BP~4_combout\ = (\Mid|BLAN|ForGenerate:19:ColumnBlock|Recur:Upper|BP~2_combout\ & (\Mid|BLAN|ForGenerate:16:ColumnBlock|Recur:Upper|bG~0_combout\ & (\B[14]~input_o\ $ (\A[14]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[14]~input_o\,
	datab => \A[14]~input_o\,
	datac => \Mid|BLAN|ForGenerate:19:ColumnBlock|Recur:Upper|BP~2_combout\,
	datad => \Mid|BLAN|ForGenerate:16:ColumnBlock|Recur:Upper|bG~0_combout\,
	combout => \Mid|BLAN|ForGenerate:19:ColumnBlock|Recur:Upper|BP~4_combout\);

-- Location: LCCOMB_X95_Y43_N10
\Mid|OC[20]~90\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|OC[20]~90_combout\ = (\Mid|BLAN|ForGenerate:19:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\) # ((\Mid|BLAN|ForGenerate:19:ColumnBlock|Recur:Upper|BP~4_combout\ & ((\Mid|OC~89_combout\) # 
-- (\Mid|BLAN|ForGenerate:19:ColumnBlock|Recur:Lower|bG~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mid|OC~89_combout\,
	datab => \Mid|BLAN|ForGenerate:19:ColumnBlock|Recur:Lower|bG~2_combout\,
	datac => \Mid|BLAN|ForGenerate:19:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\,
	datad => \Mid|BLAN|ForGenerate:19:ColumnBlock|Recur:Upper|BP~4_combout\,
	combout => \Mid|OC[20]~90_combout\);

-- Location: IOIBUF_X115_Y64_N1
\A[20]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(20),
	o => \A[20]~input_o\);

-- Location: LCCOMB_X91_Y45_N30
\Bot|S[20]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Bot|S\(20) = \B[20]~input_o\ $ (\A[20]~input_o\ $ (((\Mid|OC[20]~87_combout\) # (\Mid|OC[20]~90_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100101010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[20]~input_o\,
	datab => \Mid|OC[20]~87_combout\,
	datac => \Mid|OC[20]~90_combout\,
	datad => \A[20]~input_o\,
	combout => \Bot|S\(20));

-- Location: IOIBUF_X115_Y64_N8
\B[21]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(21),
	o => \B[21]~input_o\);

-- Location: IOIBUF_X115_Y66_N22
\A[21]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(21),
	o => \A[21]~input_o\);

-- Location: LCCOMB_X91_Y48_N16
\Top|P[20]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Top|P\(20) = \A[20]~input_o\ $ (\B[20]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[20]~input_o\,
	datac => \B[20]~input_o\,
	combout => \Top|P\(20));

-- Location: LCCOMB_X91_Y45_N14
\Mid|BLAN|ForGenerate:20:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|BLAN|ForGenerate:20:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\ = (\B[20]~input_o\ & ((\A[20]~input_o\) # ((\A[19]~input_o\ & \B[19]~input_o\)))) # (!\B[20]~input_o\ & (\A[19]~input_o\ & (\B[19]~input_o\ & 
-- \A[20]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[19]~input_o\,
	datab => \B[19]~input_o\,
	datac => \B[20]~input_o\,
	datad => \A[20]~input_o\,
	combout => \Mid|BLAN|ForGenerate:20:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\);

-- Location: LCCOMB_X91_Y44_N4
\Mid|OC[21]~93\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|OC[21]~93_combout\ = (\Mid|BLAN|ForGenerate:20:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\) # ((\Top|P\(20) & (\Mid|BLAN|ForGenerate:17:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\ & 
-- \Mid|BLAN|ForGenerate:19:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Top|P\(20),
	datab => \Mid|BLAN|ForGenerate:20:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\,
	datac => \Mid|BLAN|ForGenerate:17:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\,
	datad => \Mid|BLAN|ForGenerate:19:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\,
	combout => \Mid|OC[21]~93_combout\);

-- Location: LCCOMB_X91_Y48_N24
\Mid|BLAN|ForGenerate:20:ColumnBlock|Recur:Upper|Recur:Upper|bG~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|BLAN|ForGenerate:20:ColumnBlock|Recur:Upper|Recur:Upper|bG~3_combout\ = (\Mid|BLAN|ForGenerate:19:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\ & (\A[20]~input_o\ $ (\B[20]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[20]~input_o\,
	datac => \B[20]~input_o\,
	datad => \Mid|BLAN|ForGenerate:19:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\,
	combout => \Mid|BLAN|ForGenerate:20:ColumnBlock|Recur:Upper|Recur:Upper|bG~3_combout\);

-- Location: LCCOMB_X91_Y47_N18
\Mid|BLAN|ForGenerate:20:ColumnBlock|Recur:Upper|Recur:Upper|bG~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|BLAN|ForGenerate:20:ColumnBlock|Recur:Upper|Recur:Upper|bG~2_combout\ = (\B[15]~input_o\ & (\Mid|BLAN|ForGenerate:20:ColumnBlock|Recur:Upper|Recur:Upper|bG~3_combout\ & 
-- (\Mid|BLAN|ForGenerate:17:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|BP~2_combout\ & \A[15]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[15]~input_o\,
	datab => \Mid|BLAN|ForGenerate:20:ColumnBlock|Recur:Upper|Recur:Upper|bG~3_combout\,
	datac => \Mid|BLAN|ForGenerate:17:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|BP~2_combout\,
	datad => \A[15]~input_o\,
	combout => \Mid|BLAN|ForGenerate:20:ColumnBlock|Recur:Upper|Recur:Upper|bG~2_combout\);

-- Location: LCCOMB_X90_Y47_N24
\Mid|OC[21]~92\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|OC[21]~92_combout\ = (\Mid|BLAN|ForGenerate:20:ColumnBlock|Recur:Upper|Recur:Upper|bG~2_combout\) # ((\Mid|BLAN|ForGenerate:19:ColumnBlock|Recur:Upper|BP~2_combout\ & (\Top|P\(20) & 
-- \Mid|BLAN|ForGenerate:19:ColumnBlock|Recur:Upper|Recur:Lower|bG~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mid|BLAN|ForGenerate:19:ColumnBlock|Recur:Upper|BP~2_combout\,
	datab => \Mid|BLAN|ForGenerate:20:ColumnBlock|Recur:Upper|Recur:Upper|bG~2_combout\,
	datac => \Top|P\(20),
	datad => \Mid|BLAN|ForGenerate:19:ColumnBlock|Recur:Upper|Recur:Lower|bG~combout\,
	combout => \Mid|OC[21]~92_combout\);

-- Location: LCCOMB_X91_Y45_N26
\Mid|BLAN|ForGenerate:25:ColumnBlock|Recur:Upper|Recur:Upper|BP~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|BLAN|ForGenerate:25:ColumnBlock|Recur:Upper|Recur:Upper|BP~0_combout\ = (\A[19]~input_o\ & (!\B[19]~input_o\ & (\B[20]~input_o\ $ (\A[20]~input_o\)))) # (!\A[19]~input_o\ & (\B[19]~input_o\ & (\B[20]~input_o\ $ (\A[20]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[19]~input_o\,
	datab => \B[19]~input_o\,
	datac => \B[20]~input_o\,
	datad => \A[20]~input_o\,
	combout => \Mid|BLAN|ForGenerate:25:ColumnBlock|Recur:Upper|Recur:Upper|BP~0_combout\);

-- Location: LCCOMB_X91_Y45_N4
\Mid|BLAN|ForGenerate:24:ColumnBlock|Recur:Upper|Recur:Upper|bG~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|BLAN|ForGenerate:24:ColumnBlock|Recur:Upper|Recur:Upper|bG~0_combout\ = (\B[18]~input_o\ & (\A[18]~input_o\ & \Mid|BLAN|ForGenerate:25:ColumnBlock|Recur:Upper|Recur:Upper|BP~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[18]~input_o\,
	datab => \A[18]~input_o\,
	datac => \Mid|BLAN|ForGenerate:25:ColumnBlock|Recur:Upper|Recur:Upper|BP~0_combout\,
	combout => \Mid|BLAN|ForGenerate:24:ColumnBlock|Recur:Upper|Recur:Upper|bG~0_combout\);

-- Location: LCCOMB_X95_Y43_N20
\Mid|OC[21]~91\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|OC[21]~91_combout\ = (\Top|P\(20) & (\Mid|BLAN|ForGenerate:19:ColumnBlock|Recur:Upper|BP~4_combout\ & ((\Mid|OC~89_combout\) # (\Mid|BLAN|ForGenerate:19:ColumnBlock|Recur:Lower|bG~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mid|OC~89_combout\,
	datab => \Mid|BLAN|ForGenerate:19:ColumnBlock|Recur:Lower|bG~2_combout\,
	datac => \Top|P\(20),
	datad => \Mid|BLAN|ForGenerate:19:ColumnBlock|Recur:Upper|BP~4_combout\,
	combout => \Mid|OC[21]~91_combout\);

-- Location: LCCOMB_X90_Y47_N2
\Mid|OC[21]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|OC\(21) = (\Mid|OC[21]~93_combout\) # ((\Mid|OC[21]~92_combout\) # ((\Mid|BLAN|ForGenerate:24:ColumnBlock|Recur:Upper|Recur:Upper|bG~0_combout\) # (\Mid|OC[21]~91_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mid|OC[21]~93_combout\,
	datab => \Mid|OC[21]~92_combout\,
	datac => \Mid|BLAN|ForGenerate:24:ColumnBlock|Recur:Upper|Recur:Upper|bG~0_combout\,
	datad => \Mid|OC[21]~91_combout\,
	combout => \Mid|OC\(21));

-- Location: LCCOMB_X91_Y48_N10
\Bot|S[21]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Bot|S\(21) = \B[21]~input_o\ $ (\A[21]~input_o\ $ (\Mid|OC\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[21]~input_o\,
	datab => \A[21]~input_o\,
	datad => \Mid|OC\(21),
	combout => \Bot|S\(21));

-- Location: LCCOMB_X91_Y48_N22
\Mid|BLAN|ForGenerate:21:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|BLAN|ForGenerate:21:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\ = (\B[21]~input_o\ & ((\A[21]~input_o\) # ((\A[20]~input_o\ & \B[20]~input_o\)))) # (!\B[21]~input_o\ & (\A[20]~input_o\ & (\B[20]~input_o\ & 
-- \A[21]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[21]~input_o\,
	datab => \A[20]~input_o\,
	datac => \B[20]~input_o\,
	datad => \A[21]~input_o\,
	combout => \Mid|BLAN|ForGenerate:21:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\);

-- Location: LCCOMB_X92_Y44_N12
\Mid|OC[22]~94\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|OC[22]~94_combout\ = (\A[19]~input_o\ & ((\B[19]~input_o\) # (\Mid|BLAN|ForGenerate:18:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\))) # (!\A[19]~input_o\ & (\B[19]~input_o\ & 
-- \Mid|BLAN|ForGenerate:18:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[19]~input_o\,
	datac => \B[19]~input_o\,
	datad => \Mid|BLAN|ForGenerate:18:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\,
	combout => \Mid|OC[22]~94_combout\);

-- Location: LCCOMB_X91_Y44_N6
\Mid|BLAN|ForGenerate:19:ColumnBlock|Recur:Upper|BP~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|BLAN|ForGenerate:19:ColumnBlock|Recur:Upper|BP~3_combout\ = (\Mid|BLAN|ForGenerate:19:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\ & (\B[17]~input_o\ $ (\A[17]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mid|BLAN|ForGenerate:19:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\,
	datab => \B[17]~input_o\,
	datac => \A[17]~input_o\,
	combout => \Mid|BLAN|ForGenerate:19:ColumnBlock|Recur:Upper|BP~3_combout\);

-- Location: LCCOMB_X92_Y44_N30
\Mid|OC[22]~95\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|OC[22]~95_combout\ = (\Mid|OC[22]~94_combout\) # ((\A[16]~input_o\ & (\Mid|BLAN|ForGenerate:19:ColumnBlock|Recur:Upper|BP~3_combout\ & \B[16]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mid|OC[22]~94_combout\,
	datab => \A[16]~input_o\,
	datac => \Mid|BLAN|ForGenerate:19:ColumnBlock|Recur:Upper|BP~3_combout\,
	datad => \B[16]~input_o\,
	combout => \Mid|OC[22]~95_combout\);

-- Location: LCCOMB_X96_Y43_N10
\Mid|OC[22]~96\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|OC[22]~96_combout\ = (\Mid|BLAN|ForGenerate:12:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\ & ((\A[13]~input_o\) # (\B[13]~input_o\))) # (!\Mid|BLAN|ForGenerate:12:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\ & 
-- (\A[13]~input_o\ & \B[13]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mid|BLAN|ForGenerate:12:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\,
	datac => \A[13]~input_o\,
	datad => \B[13]~input_o\,
	combout => \Mid|OC[22]~96_combout\);

-- Location: LCCOMB_X95_Y44_N16
\Mid|OC[22]~97\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|OC[22]~97_combout\ = (\Mid|BLAN|ForGenerate:15:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\) # ((\Mid|BLAN|ForGenerate:15:ColumnBlock|Recur:Upper|BP~5_combout\ & \Mid|OC[22]~96_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mid|BLAN|ForGenerate:15:ColumnBlock|Recur:Upper|BP~5_combout\,
	datac => \Mid|BLAN|ForGenerate:15:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\,
	datad => \Mid|OC[22]~96_combout\,
	combout => \Mid|OC[22]~97_combout\);

-- Location: LCCOMB_X91_Y48_N12
\Mid|BLAN|ForGenerate:21:ColumnBlock|Recur:Upper|Recur:Upper|BP~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|BLAN|ForGenerate:21:ColumnBlock|Recur:Upper|Recur:Upper|BP~0_combout\ = (\B[21]~input_o\ & (!\A[21]~input_o\ & (\A[20]~input_o\ $ (\B[20]~input_o\)))) # (!\B[21]~input_o\ & (\A[21]~input_o\ & (\A[20]~input_o\ $ (\B[20]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[21]~input_o\,
	datab => \A[20]~input_o\,
	datac => \B[20]~input_o\,
	datad => \A[21]~input_o\,
	combout => \Mid|BLAN|ForGenerate:21:ColumnBlock|Recur:Upper|Recur:Upper|BP~0_combout\);

-- Location: LCCOMB_X92_Y44_N10
\Mid|BLAN|ForGenerate:21:ColumnBlock|Recur:Upper|Recur:Upper|BP~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|BLAN|ForGenerate:21:ColumnBlock|Recur:Upper|Recur:Upper|BP~1_combout\ = (\Top|P\(16) & (\Mid|BLAN|ForGenerate:19:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\ & 
-- (\Mid|BLAN|ForGenerate:21:ColumnBlock|Recur:Upper|Recur:Upper|BP~0_combout\ & \Top|P\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Top|P\(16),
	datab => \Mid|BLAN|ForGenerate:19:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\,
	datac => \Mid|BLAN|ForGenerate:21:ColumnBlock|Recur:Upper|Recur:Upper|BP~0_combout\,
	datad => \Top|P\(17),
	combout => \Mid|BLAN|ForGenerate:21:ColumnBlock|Recur:Upper|Recur:Upper|BP~1_combout\);

-- Location: LCCOMB_X92_Y44_N24
\Mid|OC[22]~98\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|OC[22]~98_combout\ = (\Mid|OC[22]~95_combout\ & ((\Mid|BLAN|ForGenerate:21:ColumnBlock|Recur:Upper|Recur:Upper|BP~0_combout\) # ((\Mid|OC[22]~97_combout\ & \Mid|BLAN|ForGenerate:21:ColumnBlock|Recur:Upper|Recur:Upper|BP~1_combout\)))) # 
-- (!\Mid|OC[22]~95_combout\ & (\Mid|OC[22]~97_combout\ & ((\Mid|BLAN|ForGenerate:21:ColumnBlock|Recur:Upper|Recur:Upper|BP~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mid|OC[22]~95_combout\,
	datab => \Mid|OC[22]~97_combout\,
	datac => \Mid|BLAN|ForGenerate:21:ColumnBlock|Recur:Upper|Recur:Upper|BP~0_combout\,
	datad => \Mid|BLAN|ForGenerate:21:ColumnBlock|Recur:Upper|Recur:Upper|BP~1_combout\,
	combout => \Mid|OC[22]~98_combout\);

-- Location: LCCOMB_X98_Y43_N14
\Mid|BLAN|ForGenerate:21:ColumnBlock|Recur:Lower|Recur:Upper|BP~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|BLAN|ForGenerate:21:ColumnBlock|Recur:Lower|Recur:Upper|BP~0_combout\ = (\Mid|BLAN|ForGenerate:6:ColumnBlock|Recur:Upper|BP~0_combout\ & (\Mid|BLAN|ForGenerate:19:ColumnBlock|Recur:Lower|Recur:Upper|BP~0_combout\ & (\B[10]~input_o\ $ 
-- (\A[10]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mid|BLAN|ForGenerate:6:ColumnBlock|Recur:Upper|BP~0_combout\,
	datab => \Mid|BLAN|ForGenerate:19:ColumnBlock|Recur:Lower|Recur:Upper|BP~0_combout\,
	datac => \B[10]~input_o\,
	datad => \A[10]~input_o\,
	combout => \Mid|BLAN|ForGenerate:21:ColumnBlock|Recur:Lower|Recur:Upper|BP~0_combout\);

-- Location: LCCOMB_X97_Y43_N18
\Mid|OC~99\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|OC~99_combout\ = (\Mid|OC~88_combout\ & (\Mid|BLAN|ForGenerate:21:ColumnBlock|Recur:Lower|Recur:Upper|BP~0_combout\ & (\Mid|BLAN|ForGenerate:15:ColumnBlock|Recur:Upper|BP~4_combout\ & \Top|P\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mid|OC~88_combout\,
	datab => \Mid|BLAN|ForGenerate:21:ColumnBlock|Recur:Lower|Recur:Upper|BP~0_combout\,
	datac => \Mid|BLAN|ForGenerate:15:ColumnBlock|Recur:Upper|BP~4_combout\,
	datad => \Top|P\(11),
	combout => \Mid|OC~99_combout\);

-- Location: LCCOMB_X101_Y43_N2
\Mid|BLAN|ForGenerate:21:ColumnBlock|Recur:Lower|bG~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|BLAN|ForGenerate:21:ColumnBlock|Recur:Lower|bG~1_combout\ = (\Mid|BLAN|ForGenerate:7:ColumnBlock|Recur:Upper|Recur:Upper|bG~0_combout\) # ((\Bot|S[8]~36_combout\ & (\A[5]~input_o\ & \B[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Bot|S[8]~36_combout\,
	datab => \A[5]~input_o\,
	datac => \B[5]~input_o\,
	datad => \Mid|BLAN|ForGenerate:7:ColumnBlock|Recur:Upper|Recur:Upper|bG~0_combout\,
	combout => \Mid|BLAN|ForGenerate:21:ColumnBlock|Recur:Lower|bG~1_combout\);

-- Location: LCCOMB_X97_Y43_N28
\Mid|BLAN|ForGenerate:21:ColumnBlock|Recur:Lower|bG~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|BLAN|ForGenerate:21:ColumnBlock|Recur:Lower|bG~2_combout\ = (\Mid|BLAN|ForGenerate:21:ColumnBlock|Recur:Lower|Recur:Upper|Recur:Upper|bG~1_combout\ & ((\Mid|BLAN|ForGenerate:21:ColumnBlock|Recur:Lower|bG~1_combout\ & ((\B[8]~input_o\) # 
-- (\A[8]~input_o\))) # (!\Mid|BLAN|ForGenerate:21:ColumnBlock|Recur:Lower|bG~1_combout\ & (\B[8]~input_o\ & \A[8]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mid|BLAN|ForGenerate:21:ColumnBlock|Recur:Lower|bG~1_combout\,
	datab => \Mid|BLAN|ForGenerate:21:ColumnBlock|Recur:Lower|Recur:Upper|Recur:Upper|bG~1_combout\,
	datac => \B[8]~input_o\,
	datad => \A[8]~input_o\,
	combout => \Mid|BLAN|ForGenerate:21:ColumnBlock|Recur:Lower|bG~2_combout\);

-- Location: LCCOMB_X97_Y43_N30
\Mid|BLAN|ForGenerate:21:ColumnBlock|Recur:Lower|bG~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|BLAN|ForGenerate:21:ColumnBlock|Recur:Lower|bG~3_combout\ = (\Mid|BLAN|ForGenerate:21:ColumnBlock|Recur:Lower|bG~2_combout\) # ((\Mid|BLAN|ForGenerate:10:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\) # 
-- ((\Mid|BLAN|ForGenerate:21:ColumnBlock|Recur:Lower|bG~0_combout\ & \Mid|BLAN|ForGenerate:21:ColumnBlock|Recur:Lower|Recur:Upper|BP~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mid|BLAN|ForGenerate:21:ColumnBlock|Recur:Lower|bG~0_combout\,
	datab => \Mid|BLAN|ForGenerate:21:ColumnBlock|Recur:Lower|bG~2_combout\,
	datac => \Mid|BLAN|ForGenerate:21:ColumnBlock|Recur:Lower|Recur:Upper|BP~0_combout\,
	datad => \Mid|BLAN|ForGenerate:10:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\,
	combout => \Mid|BLAN|ForGenerate:21:ColumnBlock|Recur:Lower|bG~3_combout\);

-- Location: LCCOMB_X97_Y43_N24
\Mid|OC[22]~100\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|OC[22]~100_combout\ = (\Mid|BLAN|ForGenerate:15:ColumnBlock|Recur:Upper|BP~5_combout\ & ((\Mid|OC~99_combout\) # ((\Mid|BLAN|ForGenerate:21:ColumnBlock|Recur:Lower|bG~3_combout\ & \Mid|BLAN|ForGenerate:15:ColumnBlock|Recur:Upper|BP~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mid|BLAN|ForGenerate:15:ColumnBlock|Recur:Upper|BP~5_combout\,
	datab => \Mid|OC~99_combout\,
	datac => \Mid|BLAN|ForGenerate:21:ColumnBlock|Recur:Lower|bG~3_combout\,
	datad => \Mid|BLAN|ForGenerate:15:ColumnBlock|Recur:Upper|BP~7_combout\,
	combout => \Mid|OC[22]~100_combout\);

-- Location: LCCOMB_X92_Y44_N2
\Mid|OC[22]~101\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|OC[22]~101_combout\ = (\Mid|BLAN|ForGenerate:21:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\) # ((\Mid|OC[22]~98_combout\) # ((\Mid|OC[22]~100_combout\ & 
-- \Mid|BLAN|ForGenerate:21:ColumnBlock|Recur:Upper|Recur:Upper|BP~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mid|BLAN|ForGenerate:21:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\,
	datab => \Mid|OC[22]~98_combout\,
	datac => \Mid|OC[22]~100_combout\,
	datad => \Mid|BLAN|ForGenerate:21:ColumnBlock|Recur:Upper|Recur:Upper|BP~1_combout\,
	combout => \Mid|OC[22]~101_combout\);

-- Location: IOIBUF_X115_Y62_N15
\A[22]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(22),
	o => \A[22]~input_o\);

-- Location: IOIBUF_X115_Y50_N8
\B[22]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(22),
	o => \B[22]~input_o\);

-- Location: LCCOMB_X91_Y48_N8
\Bot|S[22]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Bot|S\(22) = \Mid|OC[22]~101_combout\ $ (\A[22]~input_o\ $ (\B[22]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mid|OC[22]~101_combout\,
	datac => \A[22]~input_o\,
	datad => \B[22]~input_o\,
	combout => \Bot|S\(22));

-- Location: IOIBUF_X115_Y59_N15
\A[23]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(23),
	o => \A[23]~input_o\);

-- Location: LCCOMB_X97_Y43_N26
\Mid|OC[23]~106\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|OC[23]~106_combout\ = (\Mid|BLAN|ForGenerate:22:ColumnBlock|Recur:Upper|bG~0_combout\) # ((\Mid|BLAN|ForGenerate:13:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\) # ((\Mid|BLAN|ForGenerate:21:ColumnBlock|Recur:Lower|bG~3_combout\ & 
-- \Mid|BLAN|ForGenerate:15:ColumnBlock|Recur:Upper|BP~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mid|BLAN|ForGenerate:21:ColumnBlock|Recur:Lower|bG~3_combout\,
	datab => \Mid|BLAN|ForGenerate:22:ColumnBlock|Recur:Upper|bG~0_combout\,
	datac => \Mid|BLAN|ForGenerate:13:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\,
	datad => \Mid|BLAN|ForGenerate:15:ColumnBlock|Recur:Upper|BP~7_combout\,
	combout => \Mid|OC[23]~106_combout\);

-- Location: LCCOMB_X91_Y48_N2
\Mid|BLAN|ForGenerate:22:ColumnBlock|Recur:Upper|Recur:Upper|BP~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|BLAN|ForGenerate:22:ColumnBlock|Recur:Upper|Recur:Upper|BP~0_combout\ = (\B[22]~input_o\ & (!\A[22]~input_o\ & (\A[21]~input_o\ $ (\B[21]~input_o\)))) # (!\B[22]~input_o\ & (\A[22]~input_o\ & (\A[21]~input_o\ $ (\B[21]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[22]~input_o\,
	datab => \A[21]~input_o\,
	datac => \A[22]~input_o\,
	datad => \B[21]~input_o\,
	combout => \Mid|BLAN|ForGenerate:22:ColumnBlock|Recur:Upper|Recur:Upper|BP~0_combout\);

-- Location: LCCOMB_X94_Y44_N28
\Mid|BLAN|ForGenerate:22:ColumnBlock|Recur:Upper|bG~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|BLAN|ForGenerate:22:ColumnBlock|Recur:Upper|bG~1_combout\ = (\Mid|BLAN|ForGenerate:22:ColumnBlock|Recur:Upper|Recur:Upper|BP~0_combout\ & (\Top|P\(20) & (\Mid|BLAN|ForGenerate:19:ColumnBlock|Recur:Upper|BP~3_combout\ & 
-- \Mid|BLAN|ForGenerate:16:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|BP~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mid|BLAN|ForGenerate:22:ColumnBlock|Recur:Upper|Recur:Upper|BP~0_combout\,
	datab => \Top|P\(20),
	datac => \Mid|BLAN|ForGenerate:19:ColumnBlock|Recur:Upper|BP~3_combout\,
	datad => \Mid|BLAN|ForGenerate:16:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|BP~0_combout\,
	combout => \Mid|BLAN|ForGenerate:22:ColumnBlock|Recur:Upper|bG~1_combout\);

-- Location: LCCOMB_X91_Y44_N10
\Mid|BLAN|ForGenerate:22:ColumnBlock|Recur:Upper|Recur:Upper|BP~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|BLAN|ForGenerate:22:ColumnBlock|Recur:Upper|Recur:Upper|BP~1_combout\ = (\Top|P\(20) & (\Top|P\(17) & (\Mid|BLAN|ForGenerate:22:ColumnBlock|Recur:Upper|Recur:Upper|BP~0_combout\ & 
-- \Mid|BLAN|ForGenerate:19:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Top|P\(20),
	datab => \Top|P\(17),
	datac => \Mid|BLAN|ForGenerate:22:ColumnBlock|Recur:Upper|Recur:Upper|BP~0_combout\,
	datad => \Mid|BLAN|ForGenerate:19:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\,
	combout => \Mid|BLAN|ForGenerate:22:ColumnBlock|Recur:Upper|Recur:Upper|BP~1_combout\);

-- Location: LCCOMB_X91_Y48_N28
\Mid|BLAN|ForGenerate:22:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|BLAN|ForGenerate:22:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\ = (\B[22]~input_o\ & ((\A[22]~input_o\) # ((\A[21]~input_o\ & \B[21]~input_o\)))) # (!\B[22]~input_o\ & (\A[21]~input_o\ & (\A[22]~input_o\ & 
-- \B[21]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[22]~input_o\,
	datab => \A[21]~input_o\,
	datac => \A[22]~input_o\,
	datad => \B[21]~input_o\,
	combout => \Mid|BLAN|ForGenerate:22:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\);

-- Location: LCCOMB_X91_Y48_N6
\Mid|OC[23]~103\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|OC[23]~103_combout\ = (!\Mid|BLAN|ForGenerate:22:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\ & (((!\Mid|BLAN|ForGenerate:22:ColumnBlock|Recur:Upper|Recur:Upper|BP~0_combout\) # (!\A[20]~input_o\)) # (!\B[20]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[20]~input_o\,
	datab => \A[20]~input_o\,
	datac => \Mid|BLAN|ForGenerate:22:ColumnBlock|Recur:Upper|Recur:Upper|BP~0_combout\,
	datad => \Mid|BLAN|ForGenerate:22:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\,
	combout => \Mid|OC[23]~103_combout\);

-- Location: LCCOMB_X94_Y44_N30
\Mid|OC[23]~104\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|OC[23]~104_combout\ = ((\Mid|BLAN|ForGenerate:22:ColumnBlock|Recur:Upper|Recur:Upper|BP~1_combout\ & ((\Mid|BLAN|ForGenerate:16:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\) # 
-- (\Mid|BLAN|ForGenerate:16:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\)))) # (!\Mid|OC[23]~103_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mid|BLAN|ForGenerate:22:ColumnBlock|Recur:Upper|Recur:Upper|BP~1_combout\,
	datab => \Mid|BLAN|ForGenerate:16:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\,
	datac => \Mid|OC[23]~103_combout\,
	datad => \Mid|BLAN|ForGenerate:16:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\,
	combout => \Mid|OC[23]~104_combout\);

-- Location: LCCOMB_X91_Y44_N0
\Mid|OC[23]~102\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|OC[23]~102_combout\ = (!\Mid|BLAN|ForGenerate:19:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\ & (((!\A[17]~input_o\) # (!\B[17]~input_o\)) # 
-- (!\Mid|BLAN|ForGenerate:19:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mid|BLAN|ForGenerate:19:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\,
	datab => \B[17]~input_o\,
	datac => \A[17]~input_o\,
	datad => \Mid|BLAN|ForGenerate:19:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\,
	combout => \Mid|OC[23]~102_combout\);

-- Location: LCCOMB_X94_Y44_N24
\Mid|OC[23]~105\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|OC[23]~105_combout\ = (\Mid|OC[23]~104_combout\) # ((\Mid|BLAN|ForGenerate:22:ColumnBlock|Recur:Upper|Recur:Upper|BP~0_combout\ & (\Top|P\(20) & !\Mid|OC[23]~102_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mid|BLAN|ForGenerate:22:ColumnBlock|Recur:Upper|Recur:Upper|BP~0_combout\,
	datab => \Top|P\(20),
	datac => \Mid|OC[23]~104_combout\,
	datad => \Mid|OC[23]~102_combout\,
	combout => \Mid|OC[23]~105_combout\);

-- Location: LCCOMB_X97_Y43_N20
\Mid|OC[23]~107\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|OC[23]~107_combout\ = (\Mid|OC[23]~105_combout\) # ((\Mid|BLAN|ForGenerate:22:ColumnBlock|Recur:Upper|bG~1_combout\ & ((\Mid|OC[23]~106_combout\) # (\Mid|OC~99_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mid|OC[23]~106_combout\,
	datab => \Mid|BLAN|ForGenerate:22:ColumnBlock|Recur:Upper|bG~1_combout\,
	datac => \Mid|OC[23]~105_combout\,
	datad => \Mid|OC~99_combout\,
	combout => \Mid|OC[23]~107_combout\);

-- Location: IOIBUF_X115_Y55_N22
\B[23]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(23),
	o => \B[23]~input_o\);

-- Location: LCCOMB_X87_Y47_N0
\Bot|S[23]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Bot|S\(23) = \A[23]~input_o\ $ (\Mid|OC[23]~107_combout\ $ (\B[23]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[23]~input_o\,
	datab => \Mid|OC[23]~107_combout\,
	datad => \B[23]~input_o\,
	combout => \Bot|S\(23));

-- Location: LCCOMB_X102_Y43_N14
\Mid|BLAN|ForGenerate:23:ColumnBlock|Recur:Lower|bG~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|BLAN|ForGenerate:23:ColumnBlock|Recur:Lower|bG~6_combout\ = (\Mid|BLAN|ForGenerate:23:ColumnBlock|Recur:Lower|Recur:Upper|BP~0_combout\ & (!\Mid|OC[6]~66_combout\ & (\B[11]~input_o\ $ (\A[11]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mid|BLAN|ForGenerate:23:ColumnBlock|Recur:Lower|Recur:Upper|BP~0_combout\,
	datab => \Mid|OC[6]~66_combout\,
	datac => \B[11]~input_o\,
	datad => \A[11]~input_o\,
	combout => \Mid|BLAN|ForGenerate:23:ColumnBlock|Recur:Lower|bG~6_combout\);

-- Location: LCCOMB_X102_Y43_N20
\Mid|OC~397\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|OC~397_combout\ = (\Mid|BLAN|ForGenerate:23:ColumnBlock|Recur:Lower|Recur:Upper|BP~0_combout\ & (\Mid|OC~67_combout\ & (\B[11]~input_o\ $ (\A[11]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mid|BLAN|ForGenerate:23:ColumnBlock|Recur:Lower|Recur:Upper|BP~0_combout\,
	datab => \B[11]~input_o\,
	datac => \Mid|OC~67_combout\,
	datad => \A[11]~input_o\,
	combout => \Mid|OC~397_combout\);

-- Location: LCCOMB_X101_Y43_N20
\Mid|BLAN|ForGenerate:23:ColumnBlock|Recur:Lower|bG~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|BLAN|ForGenerate:23:ColumnBlock|Recur:Lower|bG~2_combout\ = (\Bot|S[9]~38_combout\ & (\A[6]~input_o\ & (\Top|P\(9) & \B[6]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Bot|S[9]~38_combout\,
	datab => \A[6]~input_o\,
	datac => \Top|P\(9),
	datad => \B[6]~input_o\,
	combout => \Mid|BLAN|ForGenerate:23:ColumnBlock|Recur:Lower|bG~2_combout\);

-- Location: LCCOMB_X100_Y43_N20
\Mid|BLAN|ForGenerate:23:ColumnBlock|Recur:Lower|bG~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|BLAN|ForGenerate:23:ColumnBlock|Recur:Lower|bG~3_combout\ = (\B[9]~input_o\ & ((\Mid|BLAN|ForGenerate:8:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\) # (\A[9]~input_o\))) # (!\B[9]~input_o\ & 
-- (\Mid|BLAN|ForGenerate:8:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\ & \A[9]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[9]~input_o\,
	datac => \Mid|BLAN|ForGenerate:8:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\,
	datad => \A[9]~input_o\,
	combout => \Mid|BLAN|ForGenerate:23:ColumnBlock|Recur:Lower|bG~3_combout\);

-- Location: LCCOMB_X100_Y43_N22
\Mid|BLAN|ForGenerate:23:ColumnBlock|Recur:Lower|bG~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|BLAN|ForGenerate:23:ColumnBlock|Recur:Lower|bG~4_combout\ = (\Mid|BLAN|ForGenerate:11:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\) # ((\Bot|S[12]~51_combout\ & ((\Mid|BLAN|ForGenerate:23:ColumnBlock|Recur:Lower|bG~2_combout\) # 
-- (\Mid|BLAN|ForGenerate:23:ColumnBlock|Recur:Lower|bG~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mid|BLAN|ForGenerate:23:ColumnBlock|Recur:Lower|bG~2_combout\,
	datab => \Mid|BLAN|ForGenerate:11:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\,
	datac => \Bot|S[12]~51_combout\,
	datad => \Mid|BLAN|ForGenerate:23:ColumnBlock|Recur:Lower|bG~3_combout\,
	combout => \Mid|BLAN|ForGenerate:23:ColumnBlock|Recur:Lower|bG~4_combout\);

-- Location: LCCOMB_X91_Y48_N18
\Mid|BLAN|ForGenerate:23:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|BP~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|BLAN|ForGenerate:23:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|BP~2_combout\ = (\Mid|BLAN|ForGenerate:22:ColumnBlock|Recur:Upper|Recur:Upper|BP~0_combout\ & (\A[23]~input_o\ $ (\B[23]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[23]~input_o\,
	datac => \Mid|BLAN|ForGenerate:22:ColumnBlock|Recur:Upper|Recur:Upper|BP~0_combout\,
	datad => \B[23]~input_o\,
	combout => \Mid|BLAN|ForGenerate:23:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|BP~2_combout\);

-- Location: LCCOMB_X91_Y47_N4
\Mid|BLAN|ForGenerate:23:ColumnBlock|Recur:Upper|BP~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|BLAN|ForGenerate:23:ColumnBlock|Recur:Upper|BP~0_combout\ = (\Mid|BLAN|ForGenerate:15:ColumnBlock|Recur:Upper|BP~4_combout\ & (\Mid|BLAN|ForGenerate:17:ColumnBlock|bG~4_combout\ & 
-- (\Mid|BLAN|ForGenerate:23:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|BP~2_combout\ & \Mid|BLAN|ForGenerate:20:ColumnBlock|Recur:Upper|Recur:Upper|bG~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mid|BLAN|ForGenerate:15:ColumnBlock|Recur:Upper|BP~4_combout\,
	datab => \Mid|BLAN|ForGenerate:17:ColumnBlock|bG~4_combout\,
	datac => \Mid|BLAN|ForGenerate:23:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|BP~2_combout\,
	datad => \Mid|BLAN|ForGenerate:20:ColumnBlock|Recur:Upper|Recur:Upper|bG~3_combout\,
	combout => \Mid|BLAN|ForGenerate:23:ColumnBlock|Recur:Upper|BP~0_combout\);

-- Location: LCCOMB_X90_Y47_N12
\Mid|OC[24]~108\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|OC[24]~108_combout\ = (\Mid|BLAN|ForGenerate:23:ColumnBlock|Recur:Upper|BP~0_combout\ & ((\Mid|BLAN|ForGenerate:23:ColumnBlock|Recur:Lower|bG~6_combout\) # ((\Mid|OC~397_combout\) # (\Mid|BLAN|ForGenerate:23:ColumnBlock|Recur:Lower|bG~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mid|BLAN|ForGenerate:23:ColumnBlock|Recur:Lower|bG~6_combout\,
	datab => \Mid|OC~397_combout\,
	datac => \Mid|BLAN|ForGenerate:23:ColumnBlock|Recur:Lower|bG~4_combout\,
	datad => \Mid|BLAN|ForGenerate:23:ColumnBlock|Recur:Upper|BP~0_combout\,
	combout => \Mid|OC[24]~108_combout\);

-- Location: IOIBUF_X115_Y49_N1
\B[24]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(24),
	o => \B[24]~input_o\);

-- Location: LCCOMB_X91_Y48_N0
\Mid|BLAN|ForGenerate:23:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|bG~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|BLAN|ForGenerate:23:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\ = (\B[23]~input_o\ & (!\A[23]~input_o\ & (\A[22]~input_o\ $ (\B[22]~input_o\)))) # (!\B[23]~input_o\ & (\A[23]~input_o\ & (\A[22]~input_o\ $ (\B[22]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[23]~input_o\,
	datab => \A[23]~input_o\,
	datac => \A[22]~input_o\,
	datad => \B[22]~input_o\,
	combout => \Mid|BLAN|ForGenerate:23:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\);

-- Location: LCCOMB_X91_Y48_N26
\Mid|BLAN|ForGenerate:23:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|BLAN|ForGenerate:23:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\ = (\B[23]~input_o\ & ((\A[23]~input_o\) # ((\A[22]~input_o\ & \B[22]~input_o\)))) # (!\B[23]~input_o\ & (\A[23]~input_o\ & (\A[22]~input_o\ & 
-- \B[22]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[23]~input_o\,
	datab => \A[23]~input_o\,
	datac => \A[22]~input_o\,
	datad => \B[22]~input_o\,
	combout => \Mid|BLAN|ForGenerate:23:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\);

-- Location: LCCOMB_X88_Y47_N0
\Mid|OC[39]~109\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|OC[39]~109_combout\ = (!\Mid|BLAN|ForGenerate:23:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\ & (((!\B[21]~input_o\) # (!\A[21]~input_o\)) # 
-- (!\Mid|BLAN|ForGenerate:23:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mid|BLAN|ForGenerate:23:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\,
	datab => \Mid|BLAN|ForGenerate:23:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\,
	datac => \A[21]~input_o\,
	datad => \B[21]~input_o\,
	combout => \Mid|OC[39]~109_combout\);

-- Location: LCCOMB_X91_Y47_N22
\Mid|BLAN|ForGenerate:23:ColumnBlock|Recur:Upper|Recur:Lower|bG~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|BLAN|ForGenerate:23:ColumnBlock|Recur:Upper|Recur:Lower|bG~0_combout\ = ((\Top|P\(15) & (\Mid|BLAN|ForGenerate:17:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|BP~2_combout\ & 
-- !\Mid|BLAN|ForGenerate:19:ColumnBlock|Recur:Upper|Recur:Lower|bG~4_combout\))) # (!\Mid|OC[18]~78_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001110110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Top|P\(15),
	datab => \Mid|OC[18]~78_combout\,
	datac => \Mid|BLAN|ForGenerate:17:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|BP~2_combout\,
	datad => \Mid|BLAN|ForGenerate:19:ColumnBlock|Recur:Upper|Recur:Lower|bG~4_combout\,
	combout => \Mid|BLAN|ForGenerate:23:ColumnBlock|Recur:Upper|Recur:Lower|bG~0_combout\);

-- Location: LCCOMB_X91_Y45_N24
\Mid|BLAN|ForGenerate:47:ColumnBlock|Recur:Lower|bG~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|BLAN|ForGenerate:47:ColumnBlock|Recur:Lower|bG~0_combout\ = (\Mid|BLAN|ForGenerate:25:ColumnBlock|Recur:Upper|Recur:Upper|BP~0_combout\ & ((\B[18]~input_o\ & ((\Mid|BLAN|ForGenerate:23:ColumnBlock|Recur:Upper|Recur:Lower|bG~0_combout\) # 
-- (\A[18]~input_o\))) # (!\B[18]~input_o\ & (\Mid|BLAN|ForGenerate:23:ColumnBlock|Recur:Upper|Recur:Lower|bG~0_combout\ & \A[18]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[18]~input_o\,
	datab => \Mid|BLAN|ForGenerate:23:ColumnBlock|Recur:Upper|Recur:Lower|bG~0_combout\,
	datac => \Mid|BLAN|ForGenerate:25:ColumnBlock|Recur:Upper|Recur:Upper|BP~0_combout\,
	datad => \A[18]~input_o\,
	combout => \Mid|BLAN|ForGenerate:47:ColumnBlock|Recur:Lower|bG~0_combout\);

-- Location: LCCOMB_X84_Y50_N0
\Mid|OC[24]~110\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|OC[24]~110_combout\ = (\Mid|OC[39]~109_combout\ & (((!\Mid|BLAN|ForGenerate:20:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\ & !\Mid|BLAN|ForGenerate:47:ColumnBlock|Recur:Lower|bG~0_combout\)) # 
-- (!\Mid|BLAN|ForGenerate:23:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|BP~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mid|OC[39]~109_combout\,
	datab => \Mid|BLAN|ForGenerate:20:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\,
	datac => \Mid|BLAN|ForGenerate:47:ColumnBlock|Recur:Lower|bG~0_combout\,
	datad => \Mid|BLAN|ForGenerate:23:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|BP~2_combout\,
	combout => \Mid|OC[24]~110_combout\);

-- Location: IOIBUF_X115_Y52_N8
\A[24]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(24),
	o => \A[24]~input_o\);

-- Location: LCCOMB_X91_Y51_N24
\Bot|S[24]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Bot|S\(24) = \B[24]~input_o\ $ (\A[24]~input_o\ $ (((\Mid|OC[24]~108_combout\) # (!\Mid|OC[24]~110_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001110001100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mid|OC[24]~108_combout\,
	datab => \B[24]~input_o\,
	datac => \Mid|OC[24]~110_combout\,
	datad => \A[24]~input_o\,
	combout => \Bot|S\(24));

-- Location: LCCOMB_X91_Y47_N24
\Mid|BLAN|ForGenerate:23:ColumnBlock|Recur:Upper|BP~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|BLAN|ForGenerate:23:ColumnBlock|Recur:Upper|BP~1_combout\ = (\Mid|BLAN|ForGenerate:15:ColumnBlock|Recur:Upper|BP~4_combout\ & (\Top|P\(14) & (\Mid|BLAN|ForGenerate:17:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|BP~3_combout\ & 
-- \Mid|BLAN|ForGenerate:20:ColumnBlock|Recur:Upper|Recur:Upper|bG~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mid|BLAN|ForGenerate:15:ColumnBlock|Recur:Upper|BP~4_combout\,
	datab => \Top|P\(14),
	datac => \Mid|BLAN|ForGenerate:17:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|BP~3_combout\,
	datad => \Mid|BLAN|ForGenerate:20:ColumnBlock|Recur:Upper|Recur:Upper|bG~3_combout\,
	combout => \Mid|BLAN|ForGenerate:23:ColumnBlock|Recur:Upper|BP~1_combout\);

-- Location: LCCOMB_X89_Y47_N0
\Top|P[23]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Top|P\(23) = \A[23]~input_o\ $ (\B[23]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[23]~input_o\,
	datad => \B[23]~input_o\,
	combout => \Top|P\(23));

-- Location: LCCOMB_X89_Y47_N18
\Mid|BLAN|ForGenerate:24:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|BP~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|BLAN|ForGenerate:24:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|BP~0_combout\ = (\Mid|BLAN|ForGenerate:22:ColumnBlock|Recur:Upper|Recur:Upper|BP~0_combout\ & (\Top|P\(23) & (\B[24]~input_o\ $ (\A[24]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[24]~input_o\,
	datab => \A[24]~input_o\,
	datac => \Mid|BLAN|ForGenerate:22:ColumnBlock|Recur:Upper|Recur:Upper|BP~0_combout\,
	datad => \Top|P\(23),
	combout => \Mid|BLAN|ForGenerate:24:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|BP~0_combout\);

-- Location: LCCOMB_X90_Y47_N30
\Mid|BLAN|ForGenerate:24:ColumnBlock|bG~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|BLAN|ForGenerate:24:ColumnBlock|bG~0_combout\ = (\Mid|BLAN|ForGenerate:23:ColumnBlock|Recur:Upper|BP~1_combout\ & (\Mid|BLAN|ForGenerate:24:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|BP~0_combout\ & 
-- ((\Mid|BLAN|ForGenerate:23:ColumnBlock|Recur:Lower|bG~6_combout\) # (\Mid|BLAN|ForGenerate:23:ColumnBlock|Recur:Lower|bG~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mid|BLAN|ForGenerate:23:ColumnBlock|Recur:Lower|bG~6_combout\,
	datab => \Mid|BLAN|ForGenerate:23:ColumnBlock|Recur:Upper|BP~1_combout\,
	datac => \Mid|BLAN|ForGenerate:23:ColumnBlock|Recur:Lower|bG~4_combout\,
	datad => \Mid|BLAN|ForGenerate:24:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|BP~0_combout\,
	combout => \Mid|BLAN|ForGenerate:24:ColumnBlock|bG~0_combout\);

-- Location: LCCOMB_X89_Y47_N22
\Mid|BLAN|ForGenerate:24:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|BLAN|ForGenerate:24:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\ = (\B[24]~input_o\ & ((\A[24]~input_o\) # ((\B[23]~input_o\ & \A[23]~input_o\)))) # (!\B[24]~input_o\ & (\B[23]~input_o\ & (\A[24]~input_o\ & 
-- \A[23]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[24]~input_o\,
	datab => \B[23]~input_o\,
	datac => \A[24]~input_o\,
	datad => \A[23]~input_o\,
	combout => \Mid|BLAN|ForGenerate:24:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\);

-- Location: LCCOMB_X89_Y47_N4
\Mid|OC[27]~111\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|OC[27]~111_combout\ = (\B[24]~input_o\ & (!\A[24]~input_o\ & (\B[23]~input_o\ $ (\A[23]~input_o\)))) # (!\B[24]~input_o\ & (\A[24]~input_o\ & (\B[23]~input_o\ $ (\A[23]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[24]~input_o\,
	datab => \B[23]~input_o\,
	datac => \A[24]~input_o\,
	datad => \A[23]~input_o\,
	combout => \Mid|OC[27]~111_combout\);

-- Location: LCCOMB_X89_Y47_N8
\Mid|OC[25]~112\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|OC[25]~112_combout\ = (!\Mid|BLAN|ForGenerate:24:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\ & ((!\Mid|OC[27]~111_combout\) # 
-- (!\Mid|BLAN|ForGenerate:22:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010100010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mid|BLAN|ForGenerate:24:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\,
	datab => \Mid|BLAN|ForGenerate:22:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\,
	datac => \Mid|OC[27]~111_combout\,
	combout => \Mid|OC[25]~112_combout\);

-- Location: LCCOMB_X90_Y47_N16
\Mid|OC[25]~113\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|OC[25]~113_combout\ = ((\Mid|BLAN|ForGenerate:24:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|BP~0_combout\ & ((\Mid|BLAN|ForGenerate:24:ColumnBlock|Recur:Upper|Recur:Upper|bG~0_combout\) # 
-- (\Mid|BLAN|ForGenerate:20:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\)))) # (!\Mid|OC[25]~112_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mid|OC[25]~112_combout\,
	datab => \Mid|BLAN|ForGenerate:24:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|BP~0_combout\,
	datac => \Mid|BLAN|ForGenerate:24:ColumnBlock|Recur:Upper|Recur:Upper|bG~0_combout\,
	datad => \Mid|BLAN|ForGenerate:20:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\,
	combout => \Mid|OC[25]~113_combout\);

-- Location: LCCOMB_X91_Y47_N2
\Mid|BLAN|ForGenerate:24:ColumnBlock|Recur:Upper|bG~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|BLAN|ForGenerate:24:ColumnBlock|Recur:Upper|bG~0_combout\ = (\Mid|BLAN|ForGenerate:23:ColumnBlock|Recur:Upper|Recur:Lower|bG~0_combout\ & (\Mid|BLAN|ForGenerate:24:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|BP~0_combout\ & 
-- \Mid|BLAN|ForGenerate:20:ColumnBlock|Recur:Upper|Recur:Upper|bG~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mid|BLAN|ForGenerate:23:ColumnBlock|Recur:Upper|Recur:Lower|bG~0_combout\,
	datac => \Mid|BLAN|ForGenerate:24:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|BP~0_combout\,
	datad => \Mid|BLAN|ForGenerate:20:ColumnBlock|Recur:Upper|Recur:Upper|bG~3_combout\,
	combout => \Mid|BLAN|ForGenerate:24:ColumnBlock|Recur:Upper|bG~0_combout\);

-- Location: LCCOMB_X90_Y47_N26
\Mid|OC[25]~114\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|OC[25]~114_combout\ = (\Mid|BLAN|ForGenerate:24:ColumnBlock|Recur:Upper|bG~0_combout\) # ((\Mid|BLAN|ForGenerate:24:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|BP~0_combout\ & (\Mid|OC~397_combout\ & 
-- \Mid|BLAN|ForGenerate:23:ColumnBlock|Recur:Upper|BP~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mid|BLAN|ForGenerate:24:ColumnBlock|Recur:Upper|bG~0_combout\,
	datab => \Mid|BLAN|ForGenerate:24:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|BP~0_combout\,
	datac => \Mid|OC~397_combout\,
	datad => \Mid|BLAN|ForGenerate:23:ColumnBlock|Recur:Upper|BP~1_combout\,
	combout => \Mid|OC[25]~114_combout\);

-- Location: IOIBUF_X100_Y73_N22
\B[25]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(25),
	o => \B[25]~input_o\);

-- Location: IOIBUF_X96_Y73_N22
\A[25]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(25),
	o => \A[25]~input_o\);

-- Location: LCCOMB_X91_Y51_N2
\Top|P[25]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Top|P\(25) = \B[25]~input_o\ $ (\A[25]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[25]~input_o\,
	datad => \A[25]~input_o\,
	combout => \Top|P\(25));

-- Location: LCCOMB_X90_Y47_N28
\Bot|S[25]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Bot|S\(25) = \Top|P\(25) $ (((\Mid|BLAN|ForGenerate:24:ColumnBlock|bG~0_combout\) # ((\Mid|OC[25]~113_combout\) # (\Mid|OC[25]~114_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mid|BLAN|ForGenerate:24:ColumnBlock|bG~0_combout\,
	datab => \Mid|OC[25]~113_combout\,
	datac => \Mid|OC[25]~114_combout\,
	datad => \Top|P\(25),
	combout => \Bot|S\(25));

-- Location: LCCOMB_X102_Y43_N18
\Mid|OC~119\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|OC~119_combout\ = (\Mid|BLAN|ForGenerate:23:ColumnBlock|Recur:Lower|Recur:Upper|BP~0_combout\ & (\Mid|OC~67_combout\ & \Mid|BLAN|ForGenerate:25:ColumnBlock|Recur:Lower|Recur:Upper|BP~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mid|BLAN|ForGenerate:23:ColumnBlock|Recur:Lower|Recur:Upper|BP~0_combout\,
	datac => \Mid|OC~67_combout\,
	datad => \Mid|BLAN|ForGenerate:25:ColumnBlock|Recur:Lower|Recur:Upper|BP~0_combout\,
	combout => \Mid|OC~119_combout\);

-- Location: LCCOMB_X98_Y43_N16
\Mid|BLAN|ForGenerate:25:ColumnBlock|Recur:Lower|bG~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|BLAN|ForGenerate:25:ColumnBlock|Recur:Lower|bG~0_combout\ = (\B[9]~input_o\ & (!\A[9]~input_o\ & (\A[12]~input_o\ $ (\B[12]~input_o\)))) # (!\B[9]~input_o\ & (\A[9]~input_o\ & (\A[12]~input_o\ $ (\B[12]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[9]~input_o\,
	datab => \A[9]~input_o\,
	datac => \A[12]~input_o\,
	datad => \B[12]~input_o\,
	combout => \Mid|BLAN|ForGenerate:25:ColumnBlock|Recur:Lower|bG~0_combout\);

-- Location: LCCOMB_X96_Y43_N4
\Mid|BLAN|ForGenerate:25:ColumnBlock|Recur:Lower|bG~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|BLAN|ForGenerate:25:ColumnBlock|Recur:Lower|bG~1_combout\ = (!\Mid|BLAN|ForGenerate:12:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\ & ((!\Mid|BLAN|ForGenerate:25:ColumnBlock|Recur:Lower|Recur:Upper|BP~0_combout\) # 
-- (!\Mid|BLAN|ForGenerate:10:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mid|BLAN|ForGenerate:12:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\,
	datac => \Mid|BLAN|ForGenerate:10:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\,
	datad => \Mid|BLAN|ForGenerate:25:ColumnBlock|Recur:Lower|Recur:Upper|BP~0_combout\,
	combout => \Mid|BLAN|ForGenerate:25:ColumnBlock|Recur:Lower|bG~1_combout\);

-- Location: LCCOMB_X102_Y43_N12
\Mid|BLAN|ForGenerate:25:ColumnBlock|Recur:Lower|bG~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|BLAN|ForGenerate:25:ColumnBlock|Recur:Lower|bG~2_combout\ = ((\Mid|BLAN|ForGenerate:25:ColumnBlock|Recur:Lower|bG~0_combout\ & (\Bot|S[12]~51_combout\ & !\Mid|BLAN|ForGenerate:17:ColumnBlock|Recur:Lower|bG~1_combout\))) # 
-- (!\Mid|BLAN|ForGenerate:25:ColumnBlock|Recur:Lower|bG~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111110001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mid|BLAN|ForGenerate:25:ColumnBlock|Recur:Lower|bG~0_combout\,
	datab => \Bot|S[12]~51_combout\,
	datac => \Mid|BLAN|ForGenerate:25:ColumnBlock|Recur:Lower|bG~1_combout\,
	datad => \Mid|BLAN|ForGenerate:17:ColumnBlock|Recur:Lower|bG~1_combout\,
	combout => \Mid|BLAN|ForGenerate:25:ColumnBlock|Recur:Lower|bG~2_combout\);

-- Location: LCCOMB_X102_Y43_N30
\Mid|BLAN|ForGenerate:25:ColumnBlock|Recur:Lower|bG~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|BLAN|ForGenerate:25:ColumnBlock|Recur:Lower|bG~3_combout\ = (\Mid|BLAN|ForGenerate:25:ColumnBlock|Recur:Lower|bG~2_combout\) # ((\Mid|BLAN|ForGenerate:25:ColumnBlock|Recur:Lower|Recur:Upper|BP~0_combout\ & (!\Mid|OC[6]~66_combout\ & 
-- \Mid|BLAN|ForGenerate:23:ColumnBlock|Recur:Lower|Recur:Upper|BP~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mid|BLAN|ForGenerate:25:ColumnBlock|Recur:Lower|Recur:Upper|BP~0_combout\,
	datab => \Mid|OC[6]~66_combout\,
	datac => \Mid|BLAN|ForGenerate:23:ColumnBlock|Recur:Lower|Recur:Upper|BP~0_combout\,
	datad => \Mid|BLAN|ForGenerate:25:ColumnBlock|Recur:Lower|bG~2_combout\,
	combout => \Mid|BLAN|ForGenerate:25:ColumnBlock|Recur:Lower|bG~3_combout\);

-- Location: LCCOMB_X95_Y44_N26
\Mid|OC[26]~120\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|OC[26]~120_combout\ = (\B[13]~input_o\ & ((\Mid|OC~119_combout\) # ((\Mid|BLAN|ForGenerate:25:ColumnBlock|Recur:Lower|bG~3_combout\) # (\A[13]~input_o\)))) # (!\B[13]~input_o\ & (\A[13]~input_o\ & ((\Mid|OC~119_combout\) # 
-- (\Mid|BLAN|ForGenerate:25:ColumnBlock|Recur:Lower|bG~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mid|OC~119_combout\,
	datab => \Mid|BLAN|ForGenerate:25:ColumnBlock|Recur:Lower|bG~3_combout\,
	datac => \B[13]~input_o\,
	datad => \A[13]~input_o\,
	combout => \Mid|OC[26]~120_combout\);

-- Location: LCCOMB_X92_Y44_N6
\Mid|OC[26]~121\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|OC[26]~121_combout\ = (\Mid|BLAN|ForGenerate:18:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\) # ((\Mid|OC[26]~120_combout\ & \Mid|BLAN|ForGenerate:18:ColumnBlock|Recur:Upper|BP~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mid|OC[26]~120_combout\,
	datab => \Mid|BLAN|ForGenerate:18:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\,
	datac => \Mid|BLAN|ForGenerate:18:ColumnBlock|Recur:Upper|BP~2_combout\,
	combout => \Mid|OC[26]~121_combout\);

-- Location: LCCOMB_X91_Y51_N20
\Mid|BLAN|ForGenerate:25:ColumnBlock|Recur:Upper|Recur:Upper|BP~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|BLAN|ForGenerate:25:ColumnBlock|Recur:Upper|Recur:Upper|BP~1_combout\ = (\Mid|BLAN|ForGenerate:24:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|BP~0_combout\ & (\Mid|BLAN|ForGenerate:25:ColumnBlock|Recur:Upper|Recur:Upper|BP~0_combout\ & 
-- (\B[25]~input_o\ $ (\A[25]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[25]~input_o\,
	datab => \Mid|BLAN|ForGenerate:24:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|BP~0_combout\,
	datac => \Mid|BLAN|ForGenerate:25:ColumnBlock|Recur:Upper|Recur:Upper|BP~0_combout\,
	datad => \A[25]~input_o\,
	combout => \Mid|BLAN|ForGenerate:25:ColumnBlock|Recur:Upper|Recur:Upper|BP~1_combout\);

-- Location: LCCOMB_X91_Y51_N6
\Mid|OC[26]~115\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|OC[26]~115_combout\ = (\B[25]~input_o\ & (!\A[25]~input_o\ & (\A[24]~input_o\ $ (\B[24]~input_o\)))) # (!\B[25]~input_o\ & (\A[25]~input_o\ & (\A[24]~input_o\ $ (\B[24]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[25]~input_o\,
	datab => \A[24]~input_o\,
	datac => \B[24]~input_o\,
	datad => \A[25]~input_o\,
	combout => \Mid|OC[26]~115_combout\);

-- Location: LCCOMB_X91_Y45_N2
\Mid|OC[26]~116\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|OC[26]~116_combout\ = (\Mid|BLAN|ForGenerate:21:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\) # ((\A[19]~input_o\ & (\B[19]~input_o\ & \Mid|BLAN|ForGenerate:21:ColumnBlock|Recur:Upper|Recur:Upper|BP~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[19]~input_o\,
	datab => \B[19]~input_o\,
	datac => \Mid|BLAN|ForGenerate:21:ColumnBlock|Recur:Upper|Recur:Upper|BP~0_combout\,
	datad => \Mid|BLAN|ForGenerate:21:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\,
	combout => \Mid|OC[26]~116_combout\);

-- Location: LCCOMB_X88_Y47_N26
\Mid|OC[26]~117\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|OC[26]~117_combout\ = (\Mid|OC[26]~115_combout\ & ((\Mid|BLAN|ForGenerate:23:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\) # ((\Mid|BLAN|ForGenerate:23:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\ & 
-- \Mid|OC[26]~116_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mid|OC[26]~115_combout\,
	datab => \Mid|BLAN|ForGenerate:23:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\,
	datac => \Mid|BLAN|ForGenerate:23:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\,
	datad => \Mid|OC[26]~116_combout\,
	combout => \Mid|OC[26]~117_combout\);

-- Location: LCCOMB_X91_Y51_N0
\Mid|BLAN|ForGenerate:25:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|BLAN|ForGenerate:25:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\ = (\B[25]~input_o\ & ((\A[25]~input_o\) # ((\A[24]~input_o\ & \B[24]~input_o\)))) # (!\B[25]~input_o\ & (\A[24]~input_o\ & (\B[24]~input_o\ & 
-- \A[25]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[25]~input_o\,
	datab => \A[24]~input_o\,
	datac => \B[24]~input_o\,
	datad => \A[25]~input_o\,
	combout => \Mid|BLAN|ForGenerate:25:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\);

-- Location: LCCOMB_X92_Y44_N20
\Mid|OC[26]~118\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|OC[26]~118_combout\ = (\Mid|OC[26]~117_combout\) # ((\Mid|BLAN|ForGenerate:25:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\) # ((\Mid|BLAN|ForGenerate:25:ColumnBlock|Recur:Upper|Recur:Upper|BP~1_combout\ & 
-- \Mid|BLAN|ForGenerate:18:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mid|OC[26]~117_combout\,
	datab => \Mid|BLAN|ForGenerate:25:ColumnBlock|Recur:Upper|Recur:Upper|BP~1_combout\,
	datac => \Mid|BLAN|ForGenerate:25:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\,
	datad => \Mid|BLAN|ForGenerate:18:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\,
	combout => \Mid|OC[26]~118_combout\);

-- Location: LCCOMB_X92_Y44_N0
\Mid|OC[26]~122\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|OC[26]~122_combout\ = (\Mid|OC[26]~118_combout\) # ((\Mid|BLAN|ForGenerate:25:ColumnBlock|Recur:Upper|Recur:Upper|BP~1_combout\ & ((\Mid|OC[26]~121_combout\) # (\Mid|BLAN|ForGenerate:18:ColumnBlock|Recur:Upper|Recur:Upper|bG~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mid|OC[26]~121_combout\,
	datab => \Mid|BLAN|ForGenerate:25:ColumnBlock|Recur:Upper|Recur:Upper|BP~1_combout\,
	datac => \Mid|BLAN|ForGenerate:18:ColumnBlock|Recur:Upper|Recur:Upper|bG~2_combout\,
	datad => \Mid|OC[26]~118_combout\,
	combout => \Mid|OC[26]~122_combout\);

-- Location: IOIBUF_X115_Y69_N1
\A[26]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(26),
	o => \A[26]~input_o\);

-- Location: IOIBUF_X96_Y73_N15
\B[26]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(26),
	o => \B[26]~input_o\);

-- Location: LCCOMB_X88_Y51_N16
\Bot|S[26]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Bot|S\(26) = \Mid|OC[26]~122_combout\ $ (\A[26]~input_o\ $ (\B[26]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mid|OC[26]~122_combout\,
	datac => \A[26]~input_o\,
	datad => \B[26]~input_o\,
	combout => \Bot|S\(26));

-- Location: IOIBUF_X115_Y57_N22
\B[27]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(27),
	o => \B[27]~input_o\);

-- Location: IOIBUF_X115_Y62_N22
\A[27]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(27),
	o => \A[27]~input_o\);

-- Location: LCCOMB_X88_Y51_N14
\Mid|BLAN|ForGenerate:26:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|BLAN|ForGenerate:26:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\ = (\B[26]~input_o\ & ((\A[26]~input_o\) # ((\B[25]~input_o\ & \A[25]~input_o\)))) # (!\B[26]~input_o\ & (\B[25]~input_o\ & (\A[26]~input_o\ & 
-- \A[25]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[25]~input_o\,
	datab => \B[26]~input_o\,
	datac => \A[26]~input_o\,
	datad => \A[25]~input_o\,
	combout => \Mid|BLAN|ForGenerate:26:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\);

-- Location: LCCOMB_X88_Y51_N20
\Mid|BLAN|ForGenerate:26:ColumnBlock|Recur:Upper|Recur:Upper|BP~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|BLAN|ForGenerate:26:ColumnBlock|Recur:Upper|Recur:Upper|BP~0_combout\ = (\B[25]~input_o\ & (!\A[25]~input_o\ & (\B[26]~input_o\ $ (\A[26]~input_o\)))) # (!\B[25]~input_o\ & (\A[25]~input_o\ & (\B[26]~input_o\ $ (\A[26]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[25]~input_o\,
	datab => \B[26]~input_o\,
	datac => \A[26]~input_o\,
	datad => \A[25]~input_o\,
	combout => \Mid|BLAN|ForGenerate:26:ColumnBlock|Recur:Upper|Recur:Upper|BP~0_combout\);

-- Location: LCCOMB_X89_Y51_N24
\Mid|OC[27]~123\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|OC[27]~123_combout\ = (\Mid|BLAN|ForGenerate:26:ColumnBlock|Recur:Upper|Recur:Upper|BP~0_combout\ & ((\Mid|BLAN|ForGenerate:24:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\) # ((!\Mid|OC[23]~103_combout\ & 
-- \Mid|OC[27]~111_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mid|BLAN|ForGenerate:24:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\,
	datab => \Mid|BLAN|ForGenerate:26:ColumnBlock|Recur:Upper|Recur:Upper|BP~0_combout\,
	datac => \Mid|OC[23]~103_combout\,
	datad => \Mid|OC[27]~111_combout\,
	combout => \Mid|OC[27]~123_combout\);

-- Location: LCCOMB_X95_Y44_N24
\Mid|OC[27]~127\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|OC[27]~127_combout\ = (\Mid|BLAN|ForGenerate:19:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\) # ((\Mid|BLAN|ForGenerate:19:ColumnBlock|Recur:Upper|BP~2_combout\ & 
-- (\Mid|BLAN|ForGenerate:25:ColumnBlock|Recur:Lower|bG~3_combout\ & \Mid|BLAN|ForGenerate:19:ColumnBlock|Recur:Upper|Recur:Lower|Recur:Upper|bG~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mid|BLAN|ForGenerate:19:ColumnBlock|Recur:Upper|BP~2_combout\,
	datab => \Mid|BLAN|ForGenerate:19:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\,
	datac => \Mid|BLAN|ForGenerate:25:ColumnBlock|Recur:Lower|bG~3_combout\,
	datad => \Mid|BLAN|ForGenerate:19:ColumnBlock|Recur:Upper|Recur:Lower|Recur:Upper|bG~0_combout\,
	combout => \Mid|OC[27]~127_combout\);

-- Location: LCCOMB_X95_Y44_N12
\Mid|OC[27]~124\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|OC[27]~124_combout\ = (\Mid|BLAN|ForGenerate:15:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\) # ((\B[13]~input_o\ & (\Mid|BLAN|ForGenerate:15:ColumnBlock|Recur:Upper|BP~5_combout\ & \A[13]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[13]~input_o\,
	datab => \Mid|BLAN|ForGenerate:15:ColumnBlock|Recur:Upper|BP~5_combout\,
	datac => \Mid|BLAN|ForGenerate:15:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\,
	datad => \A[13]~input_o\,
	combout => \Mid|OC[27]~124_combout\);

-- Location: LCCOMB_X91_Y44_N28
\Mid|OC[27]~125\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|OC[27]~125_combout\ = (\Mid|BLAN|ForGenerate:19:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\ & ((\Mid|BLAN|ForGenerate:17:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\) # 
-- ((\Mid|BLAN|ForGenerate:17:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|BP~2_combout\ & \Mid|OC[27]~124_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mid|BLAN|ForGenerate:19:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\,
	datab => \Mid|BLAN|ForGenerate:17:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|BP~2_combout\,
	datac => \Mid|BLAN|ForGenerate:17:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\,
	datad => \Mid|OC[27]~124_combout\,
	combout => \Mid|OC[27]~125_combout\);

-- Location: LCCOMB_X95_Y44_N6
\Mid|OC[27]~126\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|OC[27]~126_combout\ = (\Mid|OC[27]~125_combout\) # ((\Mid|BLAN|ForGenerate:19:ColumnBlock|Recur:Upper|BP~2_combout\ & (\Mid|OC~119_combout\ & \Mid|BLAN|ForGenerate:19:ColumnBlock|Recur:Upper|Recur:Lower|Recur:Upper|bG~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mid|BLAN|ForGenerate:19:ColumnBlock|Recur:Upper|BP~2_combout\,
	datab => \Mid|OC[27]~125_combout\,
	datac => \Mid|OC~119_combout\,
	datad => \Mid|BLAN|ForGenerate:19:ColumnBlock|Recur:Upper|Recur:Lower|Recur:Upper|bG~0_combout\,
	combout => \Mid|OC[27]~126_combout\);

-- Location: LCCOMB_X95_Y44_N10
\Mid|OC[27]~421\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|OC[27]~421_combout\ = (\Top|P\(20) & (\Mid|BLAN|ForGenerate:26:ColumnBlock|Recur:Upper|Recur:Upper|BP~0_combout\ & ((\Mid|OC[27]~127_combout\) # (\Mid|OC[27]~126_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Top|P\(20),
	datab => \Mid|OC[27]~127_combout\,
	datac => \Mid|BLAN|ForGenerate:26:ColumnBlock|Recur:Upper|Recur:Upper|BP~0_combout\,
	datad => \Mid|OC[27]~126_combout\,
	combout => \Mid|OC[27]~421_combout\);

-- Location: LCCOMB_X89_Y51_N22
\Mid|OC[27]~422\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|OC[27]~422_combout\ = (\Mid|BLAN|ForGenerate:26:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\) # ((\Mid|OC[27]~123_combout\) # ((\Mid|BLAN|ForGenerate:24:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|BP~0_combout\ & 
-- \Mid|OC[27]~421_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mid|BLAN|ForGenerate:26:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\,
	datab => \Mid|OC[27]~123_combout\,
	datac => \Mid|BLAN|ForGenerate:24:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|BP~0_combout\,
	datad => \Mid|OC[27]~421_combout\,
	combout => \Mid|OC[27]~422_combout\);

-- Location: LCCOMB_X88_Y51_N18
\Bot|S[27]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Bot|S\(27) = \B[27]~input_o\ $ (\A[27]~input_o\ $ (\Mid|OC[27]~422_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[27]~input_o\,
	datab => \A[27]~input_o\,
	datad => \Mid|OC[27]~422_combout\,
	combout => \Bot|S\(27));

-- Location: LCCOMB_X88_Y51_N2
\Top|P[27]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Top|P\(27) = \B[27]~input_o\ $ (\A[27]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[27]~input_o\,
	datad => \A[27]~input_o\,
	combout => \Top|P\(27));

-- Location: LCCOMB_X89_Y51_N20
\Mid|BLAN|ForGenerate:27:ColumnBlock|Recur:Upper|Recur:Upper|bG~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|BLAN|ForGenerate:27:ColumnBlock|Recur:Upper|Recur:Upper|bG~0_combout\ = (\Top|P\(27) & (\Mid|BLAN|ForGenerate:26:ColumnBlock|Recur:Upper|Recur:Upper|BP~0_combout\ & (\A[24]~input_o\ $ (\B[24]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Top|P\(27),
	datab => \A[24]~input_o\,
	datac => \B[24]~input_o\,
	datad => \Mid|BLAN|ForGenerate:26:ColumnBlock|Recur:Upper|Recur:Upper|BP~0_combout\,
	combout => \Mid|BLAN|ForGenerate:27:ColumnBlock|Recur:Upper|Recur:Upper|bG~0_combout\);

-- Location: LCCOMB_X87_Y47_N2
\Mid|OC[28]~398\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|OC[28]~398_combout\ = (\Mid|BLAN|ForGenerate:22:ColumnBlock|Recur:Upper|Recur:Upper|BP~0_combout\ & (\Mid|BLAN|ForGenerate:27:ColumnBlock|Recur:Upper|Recur:Upper|bG~0_combout\ & (\A[23]~input_o\ $ (\B[23]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mid|BLAN|ForGenerate:22:ColumnBlock|Recur:Upper|Recur:Upper|BP~0_combout\,
	datab => \Mid|BLAN|ForGenerate:27:ColumnBlock|Recur:Upper|Recur:Upper|bG~0_combout\,
	datac => \A[23]~input_o\,
	datad => \B[23]~input_o\,
	combout => \Mid|OC[28]~398_combout\);

-- Location: LCCOMB_X88_Y51_N8
\Mid|BLAN|ForGenerate:27:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|BLAN|ForGenerate:27:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\ = (\B[27]~input_o\ & ((\A[27]~input_o\) # ((\A[26]~input_o\ & \B[26]~input_o\)))) # (!\B[27]~input_o\ & (\A[27]~input_o\ & (\A[26]~input_o\ & 
-- \B[26]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[27]~input_o\,
	datab => \A[27]~input_o\,
	datac => \A[26]~input_o\,
	datad => \B[26]~input_o\,
	combout => \Mid|BLAN|ForGenerate:27:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\);

-- Location: LCCOMB_X88_Y51_N26
\Mid|OC[30]~128\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|OC[30]~128_combout\ = (\B[27]~input_o\ & (!\A[27]~input_o\ & (\A[26]~input_o\ $ (\B[26]~input_o\)))) # (!\B[27]~input_o\ & (\A[27]~input_o\ & (\A[26]~input_o\ $ (\B[26]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[27]~input_o\,
	datab => \A[27]~input_o\,
	datac => \A[26]~input_o\,
	datad => \B[26]~input_o\,
	combout => \Mid|OC[30]~128_combout\);

-- Location: LCCOMB_X88_Y47_N6
\Mid|BLAN|ForGenerate:27:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|bG~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|BLAN|ForGenerate:27:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\ = (\Mid|OC[30]~128_combout\ & \Mid|BLAN|ForGenerate:25:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mid|OC[30]~128_combout\,
	datac => \Mid|BLAN|ForGenerate:25:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\,
	combout => \Mid|BLAN|ForGenerate:27:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\);

-- Location: LCCOMB_X88_Y47_N24
\Mid|OC[28]~129\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|OC[28]~129_combout\ = (\Mid|BLAN|ForGenerate:27:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\) # ((\Mid|BLAN|ForGenerate:27:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\) # 
-- ((\Mid|BLAN|ForGenerate:27:ColumnBlock|Recur:Upper|Recur:Upper|bG~0_combout\ & \Mid|BLAN|ForGenerate:23:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mid|BLAN|ForGenerate:27:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\,
	datab => \Mid|BLAN|ForGenerate:27:ColumnBlock|Recur:Upper|Recur:Upper|bG~0_combout\,
	datac => \Mid|BLAN|ForGenerate:27:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\,
	datad => \Mid|BLAN|ForGenerate:23:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\,
	combout => \Mid|OC[28]~129_combout\);

-- Location: LCCOMB_X95_Y43_N2
\Mid|OC~130\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|OC~130_combout\ = (\Mid|BLAN|ForGenerate:19:ColumnBlock|Recur:Lower|Recur:Upper|BP~0_combout\ & (\Mid|OC~68_combout\ & \Mid|BLAN|ForGenerate:16:ColumnBlock|Recur:Upper|bG~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mid|BLAN|ForGenerate:19:ColumnBlock|Recur:Lower|Recur:Upper|BP~0_combout\,
	datac => \Mid|OC~68_combout\,
	datad => \Mid|BLAN|ForGenerate:16:ColumnBlock|Recur:Upper|bG~0_combout\,
	combout => \Mid|OC~130_combout\);

-- Location: LCCOMB_X91_Y45_N28
\Mid|BLAN|ForGenerate:27:ColumnBlock|Recur:Upper|Recur:Lower|bG~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|BLAN|ForGenerate:27:ColumnBlock|Recur:Upper|Recur:Lower|bG~0_combout\ = (!\Mid|BLAN|ForGenerate:20:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\ & 
-- ((!\Mid|BLAN|ForGenerate:18:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\) # (!\Mid|BLAN|ForGenerate:25:ColumnBlock|Recur:Upper|Recur:Upper|BP~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mid|BLAN|ForGenerate:20:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\,
	datac => \Mid|BLAN|ForGenerate:25:ColumnBlock|Recur:Upper|Recur:Upper|BP~0_combout\,
	datad => \Mid|BLAN|ForGenerate:18:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\,
	combout => \Mid|BLAN|ForGenerate:27:ColumnBlock|Recur:Upper|Recur:Lower|bG~0_combout\);

-- Location: LCCOMB_X91_Y44_N26
\Mid|BLAN|ForGenerate:27:ColumnBlock|Recur:Upper|Recur:Lower|Recur:Upper|BP~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|BLAN|ForGenerate:27:ColumnBlock|Recur:Upper|Recur:Lower|Recur:Upper|BP~4_combout\ = (\Mid|BLAN|ForGenerate:19:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\ & (\Top|P\(20) & (\B[17]~input_o\ $ (\A[17]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mid|BLAN|ForGenerate:19:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\,
	datab => \B[17]~input_o\,
	datac => \A[17]~input_o\,
	datad => \Top|P\(20),
	combout => \Mid|BLAN|ForGenerate:27:ColumnBlock|Recur:Upper|Recur:Lower|Recur:Upper|BP~4_combout\);

-- Location: LCCOMB_X94_Y44_N20
\Mid|BLAN|ForGenerate:27:ColumnBlock|Recur:Upper|Recur:Lower|bG~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|BLAN|ForGenerate:27:ColumnBlock|Recur:Upper|Recur:Lower|bG~1_combout\ = ((\Mid|BLAN|ForGenerate:27:ColumnBlock|Recur:Upper|Recur:Lower|Recur:Upper|BP~4_combout\ & 
-- ((\Mid|BLAN|ForGenerate:16:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\) # (\Mid|BLAN|ForGenerate:16:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\)))) # 
-- (!\Mid|BLAN|ForGenerate:27:ColumnBlock|Recur:Upper|Recur:Lower|bG~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mid|BLAN|ForGenerate:27:ColumnBlock|Recur:Upper|Recur:Lower|bG~0_combout\,
	datab => \Mid|BLAN|ForGenerate:16:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\,
	datac => \Mid|BLAN|ForGenerate:27:ColumnBlock|Recur:Upper|Recur:Lower|Recur:Upper|BP~4_combout\,
	datad => \Mid|BLAN|ForGenerate:16:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\,
	combout => \Mid|BLAN|ForGenerate:27:ColumnBlock|Recur:Upper|Recur:Lower|bG~1_combout\);

-- Location: LCCOMB_X94_Y44_N18
\Mid|BLAN|ForGenerate:27:ColumnBlock|Recur:Upper|BP~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|BLAN|ForGenerate:27:ColumnBlock|Recur:Upper|BP~0_combout\ = (\Mid|BLAN|ForGenerate:15:ColumnBlock|Recur:Upper|BP~5_combout\ & (\Mid|BLAN|ForGenerate:19:ColumnBlock|Recur:Upper|BP~3_combout\ & (\Top|P\(20) & \Top|P\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mid|BLAN|ForGenerate:15:ColumnBlock|Recur:Upper|BP~5_combout\,
	datab => \Mid|BLAN|ForGenerate:19:ColumnBlock|Recur:Upper|BP~3_combout\,
	datac => \Top|P\(20),
	datad => \Top|P\(16),
	combout => \Mid|BLAN|ForGenerate:27:ColumnBlock|Recur:Upper|BP~0_combout\);

-- Location: LCCOMB_X95_Y43_N30
\Mid|BLAN|ForGenerate:27:ColumnBlock|Recur:Lower|bG~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|BLAN|ForGenerate:27:ColumnBlock|Recur:Lower|bG~0_combout\ = (\Mid|BLAN|ForGenerate:13:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\) # ((\Mid|BLAN|ForGenerate:16:ColumnBlock|Recur:Upper|bG~1_combout\) # 
-- ((!\Mid|BLAN|ForGenerate:19:ColumnBlock|Recur:Lower|bG~1_combout\ & \Mid|BLAN|ForGenerate:16:ColumnBlock|Recur:Upper|bG~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mid|BLAN|ForGenerate:19:ColumnBlock|Recur:Lower|bG~1_combout\,
	datab => \Mid|BLAN|ForGenerate:13:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\,
	datac => \Mid|BLAN|ForGenerate:16:ColumnBlock|Recur:Upper|bG~1_combout\,
	datad => \Mid|BLAN|ForGenerate:16:ColumnBlock|Recur:Upper|bG~0_combout\,
	combout => \Mid|BLAN|ForGenerate:27:ColumnBlock|Recur:Lower|bG~0_combout\);

-- Location: LCCOMB_X95_Y43_N24
\Mid|BLAN|ForGenerate:27:ColumnBlock|Recur:Lower|bG~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|BLAN|ForGenerate:27:ColumnBlock|Recur:Lower|bG~1_combout\ = (\Mid|BLAN|ForGenerate:27:ColumnBlock|Recur:Lower|bG~0_combout\) # ((\Mid|BLAN|ForGenerate:16:ColumnBlock|Recur:Upper|bG~0_combout\ & 
-- (\Mid|BLAN|ForGenerate:19:ColumnBlock|Recur:Lower|Recur:Upper|BP~0_combout\ & !\Mid|OC[7]~70_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mid|BLAN|ForGenerate:16:ColumnBlock|Recur:Upper|bG~0_combout\,
	datab => \Mid|BLAN|ForGenerate:19:ColumnBlock|Recur:Lower|Recur:Upper|BP~0_combout\,
	datac => \Mid|OC[7]~70_combout\,
	datad => \Mid|BLAN|ForGenerate:27:ColumnBlock|Recur:Lower|bG~0_combout\,
	combout => \Mid|BLAN|ForGenerate:27:ColumnBlock|Recur:Lower|bG~1_combout\);

-- Location: LCCOMB_X91_Y47_N28
\Mid|OC[28]~131\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|OC[28]~131_combout\ = (\Mid|BLAN|ForGenerate:27:ColumnBlock|Recur:Upper|Recur:Lower|bG~1_combout\) # ((\Mid|BLAN|ForGenerate:27:ColumnBlock|Recur:Upper|BP~0_combout\ & ((\Mid|OC~130_combout\) # 
-- (\Mid|BLAN|ForGenerate:27:ColumnBlock|Recur:Lower|bG~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mid|OC~130_combout\,
	datab => \Mid|BLAN|ForGenerate:27:ColumnBlock|Recur:Upper|Recur:Lower|bG~1_combout\,
	datac => \Mid|BLAN|ForGenerate:27:ColumnBlock|Recur:Upper|BP~0_combout\,
	datad => \Mid|BLAN|ForGenerate:27:ColumnBlock|Recur:Lower|bG~1_combout\,
	combout => \Mid|OC[28]~131_combout\);

-- Location: LCCOMB_X88_Y47_N12
\Mid|BLAN|ForGenerate:27:ColumnBlock|Recur:Upper|Recur:Upper|bG~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|BLAN|ForGenerate:27:ColumnBlock|Recur:Upper|Recur:Upper|bG~1_combout\ = (\Mid|BLAN|ForGenerate:23:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\ & (\Mid|BLAN|ForGenerate:27:ColumnBlock|Recur:Upper|Recur:Upper|bG~0_combout\ & 
-- (\A[21]~input_o\ & \B[21]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mid|BLAN|ForGenerate:23:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\,
	datab => \Mid|BLAN|ForGenerate:27:ColumnBlock|Recur:Upper|Recur:Upper|bG~0_combout\,
	datac => \A[21]~input_o\,
	datad => \B[21]~input_o\,
	combout => \Mid|BLAN|ForGenerate:27:ColumnBlock|Recur:Upper|Recur:Upper|bG~1_combout\);

-- Location: LCCOMB_X88_Y47_N18
\Mid|OC[28]~132\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|OC[28]~132_combout\ = (\Mid|OC[28]~129_combout\) # ((\Mid|BLAN|ForGenerate:27:ColumnBlock|Recur:Upper|Recur:Upper|bG~1_combout\) # ((\Mid|OC[28]~398_combout\ & \Mid|OC[28]~131_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mid|OC[28]~398_combout\,
	datab => \Mid|OC[28]~129_combout\,
	datac => \Mid|OC[28]~131_combout\,
	datad => \Mid|BLAN|ForGenerate:27:ColumnBlock|Recur:Upper|Recur:Upper|bG~1_combout\,
	combout => \Mid|OC[28]~132_combout\);

-- Location: IOIBUF_X115_Y51_N8
\A[28]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(28),
	o => \A[28]~input_o\);

-- Location: IOIBUF_X115_Y56_N15
\B[28]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(28),
	o => \B[28]~input_o\);

-- Location: LCCOMB_X86_Y50_N10
\Bot|S[28]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Bot|S\(28) = \Mid|OC[28]~132_combout\ $ (\A[28]~input_o\ $ (\B[28]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mid|OC[28]~132_combout\,
	datac => \A[28]~input_o\,
	datad => \B[28]~input_o\,
	combout => \Bot|S\(28));

-- Location: LCCOMB_X89_Y51_N10
\Top|P[28]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Top|P\(28) = \B[28]~input_o\ $ (\A[28]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[28]~input_o\,
	datac => \A[28]~input_o\,
	combout => \Top|P\(28));

-- Location: LCCOMB_X88_Y51_N6
\Mid|BLAN|ForGenerate:28:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|BLAN|ForGenerate:28:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\ = (\A[28]~input_o\ & ((\B[28]~input_o\) # ((\B[27]~input_o\ & \A[27]~input_o\)))) # (!\A[28]~input_o\ & (\B[27]~input_o\ & (\B[28]~input_o\ & 
-- \A[27]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[27]~input_o\,
	datab => \A[28]~input_o\,
	datac => \B[28]~input_o\,
	datad => \A[27]~input_o\,
	combout => \Mid|BLAN|ForGenerate:28:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\);

-- Location: LCCOMB_X89_Y51_N6
\Mid|OC[29]~133\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|OC[29]~133_combout\ = (!\Mid|BLAN|ForGenerate:28:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\ & (((!\Top|P\(27)) # (!\Mid|BLAN|ForGenerate:26:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\)) # 
-- (!\Top|P\(28))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Top|P\(28),
	datab => \Mid|BLAN|ForGenerate:26:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\,
	datac => \Mid|BLAN|ForGenerate:28:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\,
	datad => \Top|P\(27),
	combout => \Mid|OC[29]~133_combout\);

-- Location: LCCOMB_X88_Y51_N28
\Mid|BLAN|ForGenerate:28:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|BP~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|BLAN|ForGenerate:28:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|BP~0_combout\ = (\B[27]~input_o\ & (!\A[27]~input_o\ & (\A[28]~input_o\ $ (\B[28]~input_o\)))) # (!\B[27]~input_o\ & (\A[27]~input_o\ & (\A[28]~input_o\ $ 
-- (\B[28]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[27]~input_o\,
	datab => \A[28]~input_o\,
	datac => \B[28]~input_o\,
	datad => \A[27]~input_o\,
	combout => \Mid|BLAN|ForGenerate:28:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|BP~0_combout\);

-- Location: LCCOMB_X89_Y51_N8
\Mid|OC[29]~134\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|OC[29]~134_combout\ = ((\Mid|BLAN|ForGenerate:28:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|BP~0_combout\ & (\Mid|BLAN|ForGenerate:24:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\ & 
-- \Mid|BLAN|ForGenerate:26:ColumnBlock|Recur:Upper|Recur:Upper|BP~0_combout\))) # (!\Mid|OC[29]~133_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mid|OC[29]~133_combout\,
	datab => \Mid|BLAN|ForGenerate:28:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|BP~0_combout\,
	datac => \Mid|BLAN|ForGenerate:24:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\,
	datad => \Mid|BLAN|ForGenerate:26:ColumnBlock|Recur:Upper|Recur:Upper|BP~0_combout\,
	combout => \Mid|OC[29]~134_combout\);

-- Location: LCCOMB_X89_Y51_N2
\Mid|BLAN|ForGenerate:28:ColumnBlock|Recur:Upper|Recur:Upper|bG~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|BLAN|ForGenerate:28:ColumnBlock|Recur:Upper|Recur:Upper|bG~0_combout\ = (\Top|P\(27) & (\Mid|BLAN|ForGenerate:26:ColumnBlock|Recur:Upper|Recur:Upper|BP~0_combout\ & (\B[28]~input_o\ $ (\A[28]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Top|P\(27),
	datab => \B[28]~input_o\,
	datac => \A[28]~input_o\,
	datad => \Mid|BLAN|ForGenerate:26:ColumnBlock|Recur:Upper|Recur:Upper|BP~0_combout\,
	combout => \Mid|BLAN|ForGenerate:28:ColumnBlock|Recur:Upper|Recur:Upper|bG~0_combout\);

-- Location: LCCOMB_X89_Y47_N10
\Mid|OC[29]~135\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|OC[29]~135_combout\ = (\Mid|OC[29]~134_combout\) # ((\Mid|OC[27]~111_combout\ & (\Mid|BLAN|ForGenerate:22:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\ & 
-- \Mid|BLAN|ForGenerate:28:ColumnBlock|Recur:Upper|Recur:Upper|bG~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mid|OC[27]~111_combout\,
	datab => \Mid|OC[29]~134_combout\,
	datac => \Mid|BLAN|ForGenerate:22:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\,
	datad => \Mid|BLAN|ForGenerate:28:ColumnBlock|Recur:Upper|Recur:Upper|bG~0_combout\,
	combout => \Mid|OC[29]~135_combout\);

-- Location: LCCOMB_X89_Y47_N28
\Mid|BLAN|ForGenerate:28:ColumnBlock|Recur:Upper|BP~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|BLAN|ForGenerate:28:ColumnBlock|Recur:Upper|BP~0_combout\ = (\Mid|BLAN|ForGenerate:27:ColumnBlock|Recur:Upper|Recur:Lower|Recur:Upper|BP~4_combout\ & (\Mid|BLAN|ForGenerate:24:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|BP~0_combout\ & 
-- (\Mid|BLAN|ForGenerate:16:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|BP~0_combout\ & \Mid|BLAN|ForGenerate:28:ColumnBlock|Recur:Upper|Recur:Upper|bG~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mid|BLAN|ForGenerate:27:ColumnBlock|Recur:Upper|Recur:Lower|Recur:Upper|BP~4_combout\,
	datab => \Mid|BLAN|ForGenerate:24:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|BP~0_combout\,
	datac => \Mid|BLAN|ForGenerate:16:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|BP~0_combout\,
	datad => \Mid|BLAN|ForGenerate:28:ColumnBlock|Recur:Upper|Recur:Upper|bG~0_combout\,
	combout => \Mid|BLAN|ForGenerate:28:ColumnBlock|Recur:Upper|BP~0_combout\);

-- Location: LCCOMB_X91_Y47_N30
\Mid|BLAN|ForGenerate:28:ColumnBlock|Recur:Upper|bG~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|BLAN|ForGenerate:28:ColumnBlock|Recur:Upper|bG~0_combout\ = (\Mid|BLAN|ForGenerate:24:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|BP~0_combout\ & (\Mid|BLAN|ForGenerate:28:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|BP~0_combout\ 
-- & \Mid|BLAN|ForGenerate:26:ColumnBlock|Recur:Upper|Recur:Upper|BP~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mid|BLAN|ForGenerate:24:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|BP~0_combout\,
	datac => \Mid|BLAN|ForGenerate:28:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|BP~0_combout\,
	datad => \Mid|BLAN|ForGenerate:26:ColumnBlock|Recur:Upper|Recur:Upper|BP~0_combout\,
	combout => \Mid|BLAN|ForGenerate:28:ColumnBlock|Recur:Upper|bG~0_combout\);

-- Location: LCCOMB_X91_Y47_N8
\Mid|OC[29]~136\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|OC[29]~136_combout\ = (\Mid|BLAN|ForGenerate:28:ColumnBlock|Recur:Upper|bG~0_combout\ & ((\Mid|BLAN|ForGenerate:27:ColumnBlock|Recur:Upper|Recur:Lower|bG~1_combout\) # ((\Mid|BLAN|ForGenerate:27:ColumnBlock|Recur:Upper|BP~0_combout\ & 
-- \Mid|OC~130_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mid|BLAN|ForGenerate:27:ColumnBlock|Recur:Upper|BP~0_combout\,
	datab => \Mid|BLAN|ForGenerate:27:ColumnBlock|Recur:Upper|Recur:Lower|bG~1_combout\,
	datac => \Mid|BLAN|ForGenerate:28:ColumnBlock|Recur:Upper|bG~0_combout\,
	datad => \Mid|OC~130_combout\,
	combout => \Mid|OC[29]~136_combout\);

-- Location: LCCOMB_X89_Y47_N30
\Mid|OC[29]~137\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|OC[29]~137_combout\ = (\Mid|OC[29]~135_combout\) # ((\Mid|OC[29]~136_combout\) # ((\Mid|BLAN|ForGenerate:28:ColumnBlock|Recur:Upper|BP~0_combout\ & \Mid|BLAN|ForGenerate:27:ColumnBlock|Recur:Lower|bG~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mid|OC[29]~135_combout\,
	datab => \Mid|BLAN|ForGenerate:28:ColumnBlock|Recur:Upper|BP~0_combout\,
	datac => \Mid|BLAN|ForGenerate:27:ColumnBlock|Recur:Lower|bG~1_combout\,
	datad => \Mid|OC[29]~136_combout\,
	combout => \Mid|OC[29]~137_combout\);

-- Location: IOIBUF_X58_Y73_N22
\A[29]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(29),
	o => \A[29]~input_o\);

-- Location: IOIBUF_X115_Y65_N15
\B[29]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(29),
	o => \B[29]~input_o\);

-- Location: LCCOMB_X83_Y49_N16
\Bot|S[29]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Bot|S\(29) = \Mid|OC[29]~137_combout\ $ (\A[29]~input_o\ $ (\B[29]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mid|OC[29]~137_combout\,
	datac => \A[29]~input_o\,
	datad => \B[29]~input_o\,
	combout => \Bot|S\(29));

-- Location: LCCOMB_X82_Y50_N26
\Mid|BLAN|ForGenerate:29:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|BP~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|BLAN|ForGenerate:29:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|BP~0_combout\ = (\B[29]~input_o\ & (!\A[29]~input_o\ & (\A[28]~input_o\ $ (\B[28]~input_o\)))) # (!\B[29]~input_o\ & (\A[29]~input_o\ & (\A[28]~input_o\ $ 
-- (\B[28]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[29]~input_o\,
	datab => \A[28]~input_o\,
	datac => \B[28]~input_o\,
	datad => \A[29]~input_o\,
	combout => \Mid|BLAN|ForGenerate:29:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|BP~0_combout\);

-- Location: LCCOMB_X88_Y47_N10
\Mid|OC[30]~141\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|OC[30]~141_combout\ = (\Mid|BLAN|ForGenerate:21:ColumnBlock|Recur:Upper|Recur:Upper|BP~0_combout\ & (\Mid|BLAN|ForGenerate:29:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|BP~0_combout\ & 
-- \Mid|BLAN|ForGenerate:23:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mid|BLAN|ForGenerate:21:ColumnBlock|Recur:Upper|Recur:Upper|BP~0_combout\,
	datac => \Mid|BLAN|ForGenerate:29:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|BP~0_combout\,
	datad => \Mid|BLAN|ForGenerate:23:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\,
	combout => \Mid|OC[30]~141_combout\);

-- Location: LCCOMB_X98_Y43_N10
\Mid|BLAN|ForGenerate:29:ColumnBlock|Recur:Lower|bG~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|BLAN|ForGenerate:29:ColumnBlock|Recur:Lower|bG~1_combout\ = (\Top|P\(14) & ((\Mid|BLAN|ForGenerate:10:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\) # 
-- ((\Mid|BLAN|ForGenerate:21:ColumnBlock|Recur:Lower|Recur:Upper|Recur:Upper|bG~1_combout\ & \Mid|BLAN|ForGenerate:8:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mid|BLAN|ForGenerate:21:ColumnBlock|Recur:Lower|Recur:Upper|Recur:Upper|bG~1_combout\,
	datab => \Mid|BLAN|ForGenerate:10:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\,
	datac => \Top|P\(14),
	datad => \Mid|BLAN|ForGenerate:8:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\,
	combout => \Mid|BLAN|ForGenerate:29:ColumnBlock|Recur:Lower|bG~1_combout\);

-- Location: LCCOMB_X96_Y43_N6
\Mid|BLAN|ForGenerate:29:ColumnBlock|Recur:Lower|bG~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|BLAN|ForGenerate:29:ColumnBlock|Recur:Lower|bG~0_combout\ = (\Mid|BLAN|ForGenerate:14:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\) # ((\Mid|BLAN|ForGenerate:12:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\ & 
-- \Mid|BLAN|ForGenerate:19:ColumnBlock|Recur:Upper|Recur:Lower|Recur:Upper|bG~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mid|BLAN|ForGenerate:12:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\,
	datac => \Mid|BLAN|ForGenerate:14:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\,
	datad => \Mid|BLAN|ForGenerate:19:ColumnBlock|Recur:Upper|Recur:Lower|Recur:Upper|bG~0_combout\,
	combout => \Mid|BLAN|ForGenerate:29:ColumnBlock|Recur:Lower|bG~0_combout\);

-- Location: LCCOMB_X98_Y43_N20
\Mid|BLAN|ForGenerate:29:ColumnBlock|Recur:Lower|bG~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|BLAN|ForGenerate:29:ColumnBlock|Recur:Lower|bG~2_combout\ = (\Mid|BLAN|ForGenerate:29:ColumnBlock|Recur:Lower|bG~0_combout\) # ((\Mid|BLAN|ForGenerate:29:ColumnBlock|Recur:Lower|bG~1_combout\ & 
-- (\Mid|BLAN|ForGenerate:15:ColumnBlock|Recur:Upper|BP~4_combout\ & \Top|P\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mid|BLAN|ForGenerate:29:ColumnBlock|Recur:Lower|bG~1_combout\,
	datab => \Mid|BLAN|ForGenerate:29:ColumnBlock|Recur:Lower|bG~0_combout\,
	datac => \Mid|BLAN|ForGenerate:15:ColumnBlock|Recur:Upper|BP~4_combout\,
	datad => \Top|P\(11),
	combout => \Mid|BLAN|ForGenerate:29:ColumnBlock|Recur:Lower|bG~2_combout\);

-- Location: LCCOMB_X95_Y43_N14
\Mid|BLAN|ForGenerate:29:ColumnBlock|Recur:Lower|Recur:Upper|BP~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|BLAN|ForGenerate:29:ColumnBlock|Recur:Lower|Recur:Upper|BP~0_combout\ = (\Mid|BLAN|ForGenerate:19:ColumnBlock|Recur:Lower|Recur:Upper|BP~0_combout\ & (\Mid|BLAN|ForGenerate:16:ColumnBlock|Recur:Upper|bG~0_combout\ & (\B[14]~input_o\ $ 
-- (\A[14]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[14]~input_o\,
	datab => \A[14]~input_o\,
	datac => \Mid|BLAN|ForGenerate:19:ColumnBlock|Recur:Lower|Recur:Upper|BP~0_combout\,
	datad => \Mid|BLAN|ForGenerate:16:ColumnBlock|Recur:Upper|bG~0_combout\,
	combout => \Mid|BLAN|ForGenerate:29:ColumnBlock|Recur:Lower|Recur:Upper|BP~0_combout\);

-- Location: LCCOMB_X95_Y43_N0
\Mid|BLAN|ForGenerate:29:ColumnBlock|Recur:Lower|bG~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|BLAN|ForGenerate:29:ColumnBlock|Recur:Lower|bG~3_combout\ = (\Mid|BLAN|ForGenerate:29:ColumnBlock|Recur:Lower|bG~2_combout\) # ((\Mid|BLAN|ForGenerate:29:ColumnBlock|Recur:Lower|Recur:Upper|BP~0_combout\ & !\Mid|OC[7]~70_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mid|BLAN|ForGenerate:29:ColumnBlock|Recur:Lower|bG~2_combout\,
	datab => \Mid|BLAN|ForGenerate:29:ColumnBlock|Recur:Lower|Recur:Upper|BP~0_combout\,
	datac => \Mid|OC[7]~70_combout\,
	combout => \Mid|BLAN|ForGenerate:29:ColumnBlock|Recur:Lower|bG~3_combout\);

-- Location: LCCOMB_X91_Y44_N30
\Mid|OC[30]~142\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|OC[30]~142_combout\ = (\Mid|BLAN|ForGenerate:19:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\) # ((\Mid|BLAN|ForGenerate:19:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\ & !\Mid|OC[18]~78_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mid|BLAN|ForGenerate:19:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\,
	datab => \Mid|OC[18]~78_combout\,
	datad => \Mid|BLAN|ForGenerate:19:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\,
	combout => \Mid|OC[30]~142_combout\);

-- Location: LCCOMB_X95_Y43_N12
\Mid|OC~143\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|OC~143_combout\ = (\Top|P\(14) & (\Mid|BLAN|ForGenerate:19:ColumnBlock|Recur:Lower|Recur:Upper|BP~0_combout\ & (\Mid|OC~68_combout\ & \Mid|BLAN|ForGenerate:16:ColumnBlock|Recur:Upper|bG~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Top|P\(14),
	datab => \Mid|BLAN|ForGenerate:19:ColumnBlock|Recur:Lower|Recur:Upper|BP~0_combout\,
	datac => \Mid|OC~68_combout\,
	datad => \Mid|BLAN|ForGenerate:16:ColumnBlock|Recur:Upper|bG~0_combout\,
	combout => \Mid|OC~143_combout\);

-- Location: LCCOMB_X88_Y47_N20
\Mid|OC[30]~144\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|OC[30]~144_combout\ = (\Mid|OC[30]~142_combout\) # ((\Mid|BLAN|ForGenerate:19:ColumnBlock|Recur:Upper|BP~2_combout\ & ((\Mid|BLAN|ForGenerate:29:ColumnBlock|Recur:Lower|bG~3_combout\) # (\Mid|OC~143_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mid|BLAN|ForGenerate:29:ColumnBlock|Recur:Lower|bG~3_combout\,
	datab => \Mid|BLAN|ForGenerate:19:ColumnBlock|Recur:Upper|BP~2_combout\,
	datac => \Mid|OC[30]~142_combout\,
	datad => \Mid|OC~143_combout\,
	combout => \Mid|OC[30]~144_combout\);

-- Location: LCCOMB_X88_Y47_N14
\Mid|OC[30]~139\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|OC[30]~139_combout\ = (\Mid|BLAN|ForGenerate:27:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\) # ((\Mid|BLAN|ForGenerate:27:ColumnBlock|Recur:Upper|Recur:Upper|bG~0_combout\ & 
-- (\Mid|BLAN|ForGenerate:23:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\ & \Mid|BLAN|ForGenerate:21:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mid|BLAN|ForGenerate:27:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\,
	datab => \Mid|BLAN|ForGenerate:27:ColumnBlock|Recur:Upper|Recur:Upper|bG~0_combout\,
	datac => \Mid|BLAN|ForGenerate:23:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\,
	datad => \Mid|BLAN|ForGenerate:21:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\,
	combout => \Mid|OC[30]~139_combout\);

-- Location: LCCOMB_X82_Y50_N12
\Mid|BLAN|ForGenerate:29:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|BLAN|ForGenerate:29:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\ = (\B[29]~input_o\ & ((\A[29]~input_o\) # ((\A[28]~input_o\ & \B[28]~input_o\)))) # (!\B[29]~input_o\ & (\A[28]~input_o\ & (\B[28]~input_o\ & 
-- \A[29]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[29]~input_o\,
	datab => \A[28]~input_o\,
	datac => \B[28]~input_o\,
	datad => \A[29]~input_o\,
	combout => \Mid|BLAN|ForGenerate:29:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\);

-- Location: LCCOMB_X88_Y47_N28
\Mid|OC[30]~138\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|OC[30]~138_combout\ = (\Mid|OC[30]~128_combout\ & ((\Mid|BLAN|ForGenerate:25:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\) # ((\Mid|OC[26]~115_combout\ & 
-- \Mid|BLAN|ForGenerate:23:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mid|OC[26]~115_combout\,
	datab => \Mid|OC[30]~128_combout\,
	datac => \Mid|BLAN|ForGenerate:25:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\,
	datad => \Mid|BLAN|ForGenerate:23:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\,
	combout => \Mid|OC[30]~138_combout\);

-- Location: LCCOMB_X88_Y47_N8
\Mid|OC[30]~140\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|OC[30]~140_combout\ = (\Mid|BLAN|ForGenerate:29:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\) # ((\Mid|BLAN|ForGenerate:29:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|BP~0_combout\ & 
-- ((\Mid|OC[30]~139_combout\) # (\Mid|OC[30]~138_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mid|BLAN|ForGenerate:29:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|BP~0_combout\,
	datab => \Mid|OC[30]~139_combout\,
	datac => \Mid|BLAN|ForGenerate:29:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\,
	datad => \Mid|OC[30]~138_combout\,
	combout => \Mid|OC[30]~140_combout\);

-- Location: LCCOMB_X88_Y47_N30
\Mid|OC[30]~145\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|OC[30]~145_combout\ = (\Mid|OC[30]~140_combout\) # ((\Mid|OC[30]~141_combout\ & (\Mid|OC[30]~144_combout\ & \Mid|BLAN|ForGenerate:27:ColumnBlock|Recur:Upper|Recur:Upper|bG~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mid|OC[30]~141_combout\,
	datab => \Mid|OC[30]~144_combout\,
	datac => \Mid|OC[30]~140_combout\,
	datad => \Mid|BLAN|ForGenerate:27:ColumnBlock|Recur:Upper|Recur:Upper|bG~0_combout\,
	combout => \Mid|OC[30]~145_combout\);

-- Location: IOIBUF_X81_Y0_N15
\B[30]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(30),
	o => \B[30]~input_o\);

-- Location: IOIBUF_X105_Y73_N1
\A[30]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(30),
	o => \A[30]~input_o\);

-- Location: LCCOMB_X82_Y50_N22
\Bot|S[30]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Bot|S\(30) = \Mid|OC[30]~145_combout\ $ (\B[30]~input_o\ $ (\A[30]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mid|OC[30]~145_combout\,
	datac => \B[30]~input_o\,
	datad => \A[30]~input_o\,
	combout => \Bot|S\(30));

-- Location: LCCOMB_X94_Y44_N16
\Mid|BLAN|ForGenerate:20:ColumnBlock|Recur:Upper|bG~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|BLAN|ForGenerate:20:ColumnBlock|Recur:Upper|bG~0_combout\ = (\Mid|BLAN|ForGenerate:19:ColumnBlock|Recur:Upper|BP~3_combout\ & (\Top|P\(15) & (\Top|P\(20) & \Top|P\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mid|BLAN|ForGenerate:19:ColumnBlock|Recur:Upper|BP~3_combout\,
	datab => \Top|P\(15),
	datac => \Top|P\(20),
	datad => \Top|P\(16),
	combout => \Mid|BLAN|ForGenerate:20:ColumnBlock|Recur:Upper|bG~0_combout\);

-- Location: LCCOMB_X94_Y44_N22
\Mid|OC[31]~148\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|OC[31]~148_combout\ = ((\Top|P\(20) & (\Mid|BLAN|ForGenerate:19:ColumnBlock|Recur:Upper|BP~3_combout\ & \Mid|BLAN|ForGenerate:16:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\))) # 
-- (!\Mid|BLAN|ForGenerate:27:ColumnBlock|Recur:Upper|Recur:Lower|bG~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mid|BLAN|ForGenerate:27:ColumnBlock|Recur:Upper|Recur:Lower|bG~0_combout\,
	datab => \Top|P\(20),
	datac => \Mid|BLAN|ForGenerate:19:ColumnBlock|Recur:Upper|BP~3_combout\,
	datad => \Mid|BLAN|ForGenerate:16:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\,
	combout => \Mid|OC[31]~148_combout\);

-- Location: LCCOMB_X89_Y47_N24
\Mid|OC[31]~149\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|OC[31]~149_combout\ = (\Mid|BLAN|ForGenerate:22:ColumnBlock|Recur:Upper|Recur:Upper|BP~0_combout\ & ((\Mid|OC[31]~148_combout\) # ((\Mid|BLAN|ForGenerate:20:ColumnBlock|Recur:Upper|bG~0_combout\ & \Mid|OC~143_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mid|BLAN|ForGenerate:20:ColumnBlock|Recur:Upper|bG~0_combout\,
	datab => \Mid|OC[31]~148_combout\,
	datac => \Mid|BLAN|ForGenerate:22:ColumnBlock|Recur:Upper|Recur:Upper|BP~0_combout\,
	datad => \Mid|OC~143_combout\,
	combout => \Mid|OC[31]~149_combout\);

-- Location: LCCOMB_X82_Y50_N24
\Top|P[29]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Top|P\(29) = \B[29]~input_o\ $ (\A[29]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[29]~input_o\,
	datad => \A[29]~input_o\,
	combout => \Top|P\(29));

-- Location: LCCOMB_X82_Y50_N28
\Mid|BLAN|ForGenerate:30:ColumnBlock|Recur:Upper|Recur:Upper|BP~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|BLAN|ForGenerate:30:ColumnBlock|Recur:Upper|Recur:Upper|BP~0_combout\ = (\Top|P\(28) & (\Top|P\(29) & (\B[30]~input_o\ $ (\A[30]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Top|P\(28),
	datab => \Top|P\(29),
	datac => \B[30]~input_o\,
	datad => \A[30]~input_o\,
	combout => \Mid|BLAN|ForGenerate:30:ColumnBlock|Recur:Upper|Recur:Upper|BP~0_combout\);

-- Location: LCCOMB_X89_Y47_N26
\Mid|OC[31]~150\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|OC[31]~150_combout\ = (\Top|P\(23) & (\Mid|BLAN|ForGenerate:30:ColumnBlock|Recur:Upper|Recur:Upper|BP~0_combout\ & ((\Mid|OC[31]~149_combout\) # (\Mid|BLAN|ForGenerate:22:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Top|P\(23),
	datab => \Mid|OC[31]~149_combout\,
	datac => \Mid|BLAN|ForGenerate:22:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\,
	datad => \Mid|BLAN|ForGenerate:30:ColumnBlock|Recur:Upper|Recur:Upper|BP~0_combout\,
	combout => \Mid|OC[31]~150_combout\);

-- Location: LCCOMB_X82_Y50_N2
\Mid|BLAN|ForGenerate:30:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|BLAN|ForGenerate:30:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\ = (\A[30]~input_o\ & ((\B[30]~input_o\) # ((\A[29]~input_o\ & \B[29]~input_o\)))) # (!\A[30]~input_o\ & (\A[29]~input_o\ & (\B[30]~input_o\ & 
-- \B[29]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[30]~input_o\,
	datab => \A[29]~input_o\,
	datac => \B[30]~input_o\,
	datad => \B[29]~input_o\,
	combout => \Mid|BLAN|ForGenerate:30:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\);

-- Location: LCCOMB_X82_Y50_N16
\Mid|BLAN|ForGenerate:30:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|BP~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|BLAN|ForGenerate:30:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|BP~0_combout\ = (\A[30]~input_o\ & (!\B[30]~input_o\ & (\A[29]~input_o\ $ (\B[29]~input_o\)))) # (!\A[30]~input_o\ & (\B[30]~input_o\ & (\A[29]~input_o\ $ 
-- (\B[29]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[30]~input_o\,
	datab => \A[29]~input_o\,
	datac => \B[30]~input_o\,
	datad => \B[29]~input_o\,
	combout => \Mid|BLAN|ForGenerate:30:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|BP~0_combout\);

-- Location: LCCOMB_X89_Y51_N28
\Mid|OC[31]~146\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|OC[31]~146_combout\ = (\Mid|BLAN|ForGenerate:28:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|BP~0_combout\ & ((\Mid|BLAN|ForGenerate:26:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\) # 
-- ((\Mid|BLAN|ForGenerate:24:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\ & \Mid|BLAN|ForGenerate:26:ColumnBlock|Recur:Upper|Recur:Upper|BP~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mid|BLAN|ForGenerate:26:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\,
	datab => \Mid|BLAN|ForGenerate:28:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|BP~0_combout\,
	datac => \Mid|BLAN|ForGenerate:24:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\,
	datad => \Mid|BLAN|ForGenerate:26:ColumnBlock|Recur:Upper|Recur:Upper|BP~0_combout\,
	combout => \Mid|OC[31]~146_combout\);

-- Location: LCCOMB_X89_Y50_N16
\Mid|OC[31]~147\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|OC[31]~147_combout\ = (\Mid|BLAN|ForGenerate:30:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|BP~0_combout\ & ((\Mid|BLAN|ForGenerate:28:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\) # 
-- (\Mid|OC[31]~146_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mid|BLAN|ForGenerate:30:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|BP~0_combout\,
	datab => \Mid|BLAN|ForGenerate:28:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\,
	datac => \Mid|OC[31]~146_combout\,
	combout => \Mid|OC[31]~147_combout\);

-- Location: LCCOMB_X89_Y47_N12
\Mid|OC[31]~151\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|OC[31]~151_combout\ = (\Mid|BLAN|ForGenerate:30:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\) # ((\Mid|OC[31]~147_combout\) # ((\Mid|OC[31]~150_combout\ & 
-- \Mid|BLAN|ForGenerate:27:ColumnBlock|Recur:Upper|Recur:Upper|bG~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mid|OC[31]~150_combout\,
	datab => \Mid|BLAN|ForGenerate:27:ColumnBlock|Recur:Upper|Recur:Upper|bG~0_combout\,
	datac => \Mid|BLAN|ForGenerate:30:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\,
	datad => \Mid|OC[31]~147_combout\,
	combout => \Mid|OC[31]~151_combout\);

-- Location: LCCOMB_X89_Y47_N14
\Mid|BLAN|ForGenerate:30:ColumnBlock|Recur:Upper|BP~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|BLAN|ForGenerate:30:ColumnBlock|Recur:Upper|BP~0_combout\ = (\Top|P\(23) & (\Mid|BLAN|ForGenerate:27:ColumnBlock|Recur:Upper|Recur:Upper|bG~0_combout\ & (\Mid|BLAN|ForGenerate:22:ColumnBlock|Recur:Upper|Recur:Upper|BP~0_combout\ & 
-- \Mid|BLAN|ForGenerate:30:ColumnBlock|Recur:Upper|Recur:Upper|BP~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Top|P\(23),
	datab => \Mid|BLAN|ForGenerate:27:ColumnBlock|Recur:Upper|Recur:Upper|bG~0_combout\,
	datac => \Mid|BLAN|ForGenerate:22:ColumnBlock|Recur:Upper|Recur:Upper|BP~0_combout\,
	datad => \Mid|BLAN|ForGenerate:30:ColumnBlock|Recur:Upper|Recur:Upper|BP~0_combout\,
	combout => \Mid|BLAN|ForGenerate:30:ColumnBlock|Recur:Upper|BP~0_combout\);

-- Location: LCCOMB_X89_Y47_N16
\Mid|OC[31]~152\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|OC[31]~152_combout\ = (\Mid|OC[31]~151_combout\) # ((\Mid|BLAN|ForGenerate:30:ColumnBlock|Recur:Upper|BP~0_combout\ & (\Mid|BLAN|ForGenerate:29:ColumnBlock|Recur:Lower|bG~3_combout\ & \Mid|BLAN|ForGenerate:20:ColumnBlock|Recur:Upper|bG~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mid|OC[31]~151_combout\,
	datab => \Mid|BLAN|ForGenerate:30:ColumnBlock|Recur:Upper|BP~0_combout\,
	datac => \Mid|BLAN|ForGenerate:29:ColumnBlock|Recur:Lower|bG~3_combout\,
	datad => \Mid|BLAN|ForGenerate:20:ColumnBlock|Recur:Upper|bG~0_combout\,
	combout => \Mid|OC[31]~152_combout\);

-- Location: IOIBUF_X83_Y0_N1
\A[31]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(31),
	o => \A[31]~input_o\);

-- Location: IOIBUF_X85_Y73_N8
\B[31]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(31),
	o => \B[31]~input_o\);

-- Location: LCCOMB_X83_Y52_N0
\Bot|S[31]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Bot|S\(31) = \Mid|OC[31]~152_combout\ $ (\A[31]~input_o\ $ (\B[31]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mid|OC[31]~152_combout\,
	datac => \A[31]~input_o\,
	datad => \B[31]~input_o\,
	combout => \Bot|S\(31));

-- Location: LCCOMB_X82_Y50_N6
\Mid|BLAN|ForGenerate:31:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|BLAN|ForGenerate:31:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\ = (\A[31]~input_o\ & ((\B[31]~input_o\) # ((\A[30]~input_o\ & \B[30]~input_o\)))) # (!\A[31]~input_o\ & (\A[30]~input_o\ & (\B[30]~input_o\ & 
-- \B[31]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[30]~input_o\,
	datab => \B[30]~input_o\,
	datac => \A[31]~input_o\,
	datad => \B[31]~input_o\,
	combout => \Mid|BLAN|ForGenerate:31:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\);

-- Location: LCCOMB_X82_Y50_N8
\Mid|BLAN|ForGenerate:36:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Lower|Recur:Upper|BP~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|BLAN|ForGenerate:36:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Lower|Recur:Upper|BP~2_combout\ = (\A[30]~input_o\ & (!\B[30]~input_o\ & (\A[31]~input_o\ $ (\B[31]~input_o\)))) # (!\A[30]~input_o\ & (\B[30]~input_o\ & (\A[31]~input_o\ $ 
-- (\B[31]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[30]~input_o\,
	datab => \B[30]~input_o\,
	datac => \A[31]~input_o\,
	datad => \B[31]~input_o\,
	combout => \Mid|BLAN|ForGenerate:36:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Lower|Recur:Upper|BP~2_combout\);

-- Location: LCCOMB_X82_Y50_N18
\Mid|OC[32]~153\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|OC[32]~153_combout\ = (!\Mid|BLAN|ForGenerate:29:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\ & (((!\Top|P\(28)) # (!\Top|P\(29))) # 
-- (!\Mid|BLAN|ForGenerate:27:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mid|BLAN|ForGenerate:27:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\,
	datab => \Top|P\(29),
	datac => \Top|P\(28),
	datad => \Mid|BLAN|ForGenerate:29:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\,
	combout => \Mid|OC[32]~153_combout\);

-- Location: LCCOMB_X87_Y50_N24
\Mid|OC[32]~154\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|OC[32]~154_combout\ = (\Mid|BLAN|ForGenerate:36:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Lower|Recur:Upper|BP~2_combout\ & (((\Mid|BLAN|ForGenerate:29:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|BP~0_combout\ & 
-- \Mid|BLAN|ForGenerate:27:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\)) # (!\Mid|OC[32]~153_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mid|BLAN|ForGenerate:36:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Lower|Recur:Upper|BP~2_combout\,
	datab => \Mid|BLAN|ForGenerate:29:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|BP~0_combout\,
	datac => \Mid|OC[32]~153_combout\,
	datad => \Mid|BLAN|ForGenerate:27:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\,
	combout => \Mid|OC[32]~154_combout\);

-- Location: LCCOMB_X91_Y48_N4
\Mid|BLAN|ForGenerate:31:ColumnBlock|Recur:Upper|Recur:Lower|Recur:Upper|BP~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|BLAN|ForGenerate:31:ColumnBlock|Recur:Upper|Recur:Lower|Recur:Upper|BP~4_combout\ = (\Mid|BLAN|ForGenerate:22:ColumnBlock|Recur:Upper|Recur:Upper|BP~0_combout\ & (\Top|P\(23) & (\B[20]~input_o\ $ (\A[20]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[20]~input_o\,
	datab => \A[20]~input_o\,
	datac => \Mid|BLAN|ForGenerate:22:ColumnBlock|Recur:Upper|Recur:Upper|BP~0_combout\,
	datad => \Top|P\(23),
	combout => \Mid|BLAN|ForGenerate:31:ColumnBlock|Recur:Upper|Recur:Lower|Recur:Upper|BP~4_combout\);

-- Location: LCCOMB_X91_Y44_N8
\Mid|BLAN|ForGenerate:31:ColumnBlock|Recur:Upper|Recur:Lower|bG~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|BLAN|ForGenerate:31:ColumnBlock|Recur:Upper|Recur:Lower|bG~0_combout\ = (\Mid|BLAN|ForGenerate:31:ColumnBlock|Recur:Upper|Recur:Lower|Recur:Upper|BP~4_combout\ & 
-- ((\Mid|BLAN|ForGenerate:19:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\) # ((\Mid|BLAN|ForGenerate:19:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\ & 
-- \Mid|BLAN|ForGenerate:17:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mid|BLAN|ForGenerate:19:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\,
	datab => \Mid|BLAN|ForGenerate:31:ColumnBlock|Recur:Upper|Recur:Lower|Recur:Upper|BP~4_combout\,
	datac => \Mid|BLAN|ForGenerate:17:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\,
	datad => \Mid|BLAN|ForGenerate:19:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\,
	combout => \Mid|BLAN|ForGenerate:31:ColumnBlock|Recur:Upper|Recur:Lower|bG~0_combout\);

-- Location: LCCOMB_X88_Y47_N16
\Mid|BLAN|ForGenerate:31:ColumnBlock|Recur:Upper|Recur:Lower|bG~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|BLAN|ForGenerate:31:ColumnBlock|Recur:Upper|Recur:Lower|bG~1_combout\ = (\Mid|BLAN|ForGenerate:31:ColumnBlock|Recur:Upper|Recur:Lower|bG~0_combout\) # 
-- ((\Mid|BLAN|ForGenerate:23:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\) # ((\Mid|BLAN|ForGenerate:21:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\ & 
-- \Mid|BLAN|ForGenerate:23:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mid|BLAN|ForGenerate:31:ColumnBlock|Recur:Upper|Recur:Lower|bG~0_combout\,
	datab => \Mid|BLAN|ForGenerate:21:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\,
	datac => \Mid|BLAN|ForGenerate:23:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\,
	datad => \Mid|BLAN|ForGenerate:23:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\,
	combout => \Mid|BLAN|ForGenerate:31:ColumnBlock|Recur:Upper|Recur:Lower|bG~1_combout\);

-- Location: LCCOMB_X99_Y43_N0
\Mid|OC~155\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|OC~155_combout\ = (\Mid|BLAN|ForGenerate:15:ColumnBlock|Recur:Upper|BP~6_combout\ & \Mid|OC~72_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mid|BLAN|ForGenerate:15:ColumnBlock|Recur:Upper|BP~6_combout\,
	datad => \Mid|OC~72_combout\,
	combout => \Mid|OC~155_combout\);

-- Location: LCCOMB_X91_Y44_N20
\Mid|BLAN|ForGenerate:31:ColumnBlock|bG~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|BLAN|ForGenerate:31:ColumnBlock|bG~2_combout\ = (\Mid|BLAN|ForGenerate:19:ColumnBlock|Recur:Upper|BP~3_combout\ & (\Mid|BLAN|ForGenerate:31:ColumnBlock|Recur:Upper|Recur:Lower|Recur:Upper|BP~4_combout\ & (\A[16]~input_o\ $ (\B[16]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mid|BLAN|ForGenerate:19:ColumnBlock|Recur:Upper|BP~3_combout\,
	datab => \A[16]~input_o\,
	datac => \Mid|BLAN|ForGenerate:31:ColumnBlock|Recur:Upper|Recur:Lower|Recur:Upper|BP~4_combout\,
	datad => \B[16]~input_o\,
	combout => \Mid|BLAN|ForGenerate:31:ColumnBlock|bG~2_combout\);

-- Location: LCCOMB_X99_Y43_N18
\Mid|BLAN|ForGenerate:31:ColumnBlock|Recur:Lower|bG\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|BLAN|ForGenerate:31:ColumnBlock|Recur:Lower|bG~combout\ = ((\Mid|BLAN|ForGenerate:15:ColumnBlock|Recur:Upper|BP~6_combout\ & \Mid|BLAN|ForGenerate:15:ColumnBlock|Recur:Lower|bG~1_combout\)) # (!\Mid|OC[16]~73_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mid|BLAN|ForGenerate:15:ColumnBlock|Recur:Upper|BP~6_combout\,
	datac => \Mid|BLAN|ForGenerate:15:ColumnBlock|Recur:Lower|bG~1_combout\,
	datad => \Mid|OC[16]~73_combout\,
	combout => \Mid|BLAN|ForGenerate:31:ColumnBlock|Recur:Lower|bG~combout\);

-- Location: LCCOMB_X99_Y43_N4
\Mid|OC[32]~156\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|OC[32]~156_combout\ = (\Mid|BLAN|ForGenerate:31:ColumnBlock|Recur:Upper|Recur:Lower|bG~1_combout\) # ((\Mid|BLAN|ForGenerate:31:ColumnBlock|bG~2_combout\ & ((\Mid|OC~155_combout\) # (\Mid|BLAN|ForGenerate:31:ColumnBlock|Recur:Lower|bG~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mid|BLAN|ForGenerate:31:ColumnBlock|Recur:Upper|Recur:Lower|bG~1_combout\,
	datab => \Mid|OC~155_combout\,
	datac => \Mid|BLAN|ForGenerate:31:ColumnBlock|bG~2_combout\,
	datad => \Mid|BLAN|ForGenerate:31:ColumnBlock|Recur:Lower|bG~combout\,
	combout => \Mid|OC[32]~156_combout\);

-- Location: LCCOMB_X82_Y50_N30
\Mid|BLAN|ForGenerate:36:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Lower|Recur:Upper|BP~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|BLAN|ForGenerate:36:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Lower|Recur:Upper|BP~3_combout\ = (\Mid|BLAN|ForGenerate:36:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Lower|Recur:Upper|BP~2_combout\ & (\B[29]~input_o\ $ (\A[29]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[29]~input_o\,
	datac => \Mid|BLAN|ForGenerate:36:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Lower|Recur:Upper|BP~2_combout\,
	datad => \A[29]~input_o\,
	combout => \Mid|BLAN|ForGenerate:36:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Lower|Recur:Upper|BP~3_combout\);

-- Location: LCCOMB_X86_Y50_N12
\Mid|OC[32]~399\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|OC[32]~399_combout\ = (\Mid|BLAN|ForGenerate:27:ColumnBlock|Recur:Upper|Recur:Upper|bG~0_combout\ & (\Mid|BLAN|ForGenerate:36:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Lower|Recur:Upper|BP~3_combout\ & (\A[28]~input_o\ $ (\B[28]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mid|BLAN|ForGenerate:27:ColumnBlock|Recur:Upper|Recur:Upper|bG~0_combout\,
	datab => \Mid|BLAN|ForGenerate:36:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Lower|Recur:Upper|BP~3_combout\,
	datac => \A[28]~input_o\,
	datad => \B[28]~input_o\,
	combout => \Mid|OC[32]~399_combout\);

-- Location: LCCOMB_X87_Y50_N2
\Mid|OC[32]~157\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|OC[32]~157_combout\ = (\Mid|BLAN|ForGenerate:31:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\) # ((\Mid|OC[32]~154_combout\) # ((\Mid|OC[32]~156_combout\ & \Mid|OC[32]~399_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mid|BLAN|ForGenerate:31:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\,
	datab => \Mid|OC[32]~154_combout\,
	datac => \Mid|OC[32]~156_combout\,
	datad => \Mid|OC[32]~399_combout\,
	combout => \Mid|OC[32]~157_combout\);

-- Location: IOIBUF_X98_Y73_N15
\A[32]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(32),
	o => \A[32]~input_o\);

-- Location: IOIBUF_X115_Y69_N22
\B[32]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(32),
	o => \B[32]~input_o\);

-- Location: LCCOMB_X87_Y50_N20
\Bot|S[32]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Bot|S\(32) = \Mid|OC[32]~157_combout\ $ (\A[32]~input_o\ $ (\B[32]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mid|OC[32]~157_combout\,
	datac => \A[32]~input_o\,
	datad => \B[32]~input_o\,
	combout => \Bot|S\(32));

-- Location: IOIBUF_X94_Y73_N1
\A[33]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(33),
	o => \A[33]~input_o\);

-- Location: IOIBUF_X58_Y0_N22
\B[33]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(33),
	o => \B[33]~input_o\);

-- Location: LCCOMB_X83_Y50_N16
\Top|P[33]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Top|P\(33) = \A[33]~input_o\ $ (\B[33]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[33]~input_o\,
	datad => \B[33]~input_o\,
	combout => \Top|P\(33));

-- Location: LCCOMB_X83_Y52_N26
\Mid|OC[38]~158\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|OC[38]~158_combout\ = (\Mid|BLAN|ForGenerate:36:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Lower|Recur:Upper|BP~2_combout\ & (\Mid|BLAN|ForGenerate:29:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|BP~0_combout\ & (\A[32]~input_o\ $ 
-- (\B[32]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[32]~input_o\,
	datab => \Mid|BLAN|ForGenerate:36:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Lower|Recur:Upper|BP~2_combout\,
	datac => \Mid|BLAN|ForGenerate:29:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|BP~0_combout\,
	datad => \B[32]~input_o\,
	combout => \Mid|OC[38]~158_combout\);

-- Location: LCCOMB_X83_Y52_N12
\Mid|BLAN|ForGenerate:32:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|BP~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|BLAN|ForGenerate:32:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|BP~0_combout\ = (\Mid|BLAN|ForGenerate:36:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Lower|Recur:Upper|BP~2_combout\ & (\A[32]~input_o\ $ (\B[32]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mid|BLAN|ForGenerate:36:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Lower|Recur:Upper|BP~2_combout\,
	datac => \A[32]~input_o\,
	datad => \B[32]~input_o\,
	combout => \Mid|BLAN|ForGenerate:32:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|BP~0_combout\);

-- Location: LCCOMB_X83_Y52_N16
\Mid|BLAN|ForGenerate:32:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|BLAN|ForGenerate:32:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\ = (\A[32]~input_o\ & ((\B[32]~input_o\) # ((\A[31]~input_o\ & \B[31]~input_o\)))) # (!\A[32]~input_o\ & (\B[32]~input_o\ & (\A[31]~input_o\ & 
-- \B[31]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[32]~input_o\,
	datab => \B[32]~input_o\,
	datac => \A[31]~input_o\,
	datad => \B[31]~input_o\,
	combout => \Mid|BLAN|ForGenerate:32:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\);

-- Location: LCCOMB_X83_Y52_N30
\Mid|BLAN|ForGenerate:32:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|BLAN|ForGenerate:32:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\ = (\A[32]~input_o\ & (!\B[32]~input_o\ & (\A[31]~input_o\ $ (\B[31]~input_o\)))) # (!\A[32]~input_o\ & (\B[32]~input_o\ & (\A[31]~input_o\ $ 
-- (\B[31]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[32]~input_o\,
	datab => \B[32]~input_o\,
	datac => \A[31]~input_o\,
	datad => \B[31]~input_o\,
	combout => \Mid|BLAN|ForGenerate:32:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\);

-- Location: LCCOMB_X82_Y50_N4
\Mid|OC[44]~159\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|OC[44]~159_combout\ = (!\Mid|BLAN|ForGenerate:32:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\ & (((!\Mid|BLAN|ForGenerate:32:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\) # 
-- (!\B[30]~input_o\)) # (!\A[30]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[30]~input_o\,
	datab => \Mid|BLAN|ForGenerate:32:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\,
	datac => \B[30]~input_o\,
	datad => \Mid|BLAN|ForGenerate:32:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\,
	combout => \Mid|OC[44]~159_combout\);

-- Location: LCCOMB_X88_Y50_N8
\Mid|OC[33]~160\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|OC[33]~160_combout\ = (\Mid|BLAN|ForGenerate:27:ColumnBlock|Recur:Upper|Recur:Upper|bG~0_combout\ & \Mid|OC[38]~158_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mid|BLAN|ForGenerate:27:ColumnBlock|Recur:Upper|Recur:Upper|bG~0_combout\,
	datad => \Mid|OC[38]~158_combout\,
	combout => \Mid|OC[33]~160_combout\);

-- Location: LCCOMB_X99_Y43_N22
\Mid|OC[33]~161\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|OC[33]~161_combout\ = (\Mid|OC[33]~160_combout\ & (\Mid|BLAN|ForGenerate:31:ColumnBlock|bG~2_combout\ & ((\Mid|OC~155_combout\) # (\Mid|BLAN|ForGenerate:31:ColumnBlock|Recur:Lower|bG~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mid|OC[33]~160_combout\,
	datab => \Mid|OC~155_combout\,
	datac => \Mid|BLAN|ForGenerate:31:ColumnBlock|bG~2_combout\,
	datad => \Mid|BLAN|ForGenerate:31:ColumnBlock|Recur:Lower|bG~combout\,
	combout => \Mid|OC[33]~161_combout\);

-- Location: LCCOMB_X88_Y50_N26
\Bot|S[33]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \Bot|S[33]~68_combout\ = (\Mid|OC[44]~159_combout\ & (!\Mid|OC[33]~161_combout\ & ((\Mid|OC[32]~153_combout\) # (!\Mid|BLAN|ForGenerate:32:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|BP~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mid|BLAN|ForGenerate:32:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|BP~0_combout\,
	datab => \Mid|OC[32]~153_combout\,
	datac => \Mid|OC[44]~159_combout\,
	datad => \Mid|OC[33]~161_combout\,
	combout => \Bot|S[33]~68_combout\);

-- Location: LCCOMB_X88_Y47_N2
\Bot|S[33]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \Bot|S[33]~67_combout\ = (\Mid|OC[30]~128_combout\ & ((\Mid|BLAN|ForGenerate:25:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\) # ((\Mid|OC[26]~115_combout\ & 
-- \Mid|BLAN|ForGenerate:31:ColumnBlock|Recur:Upper|Recur:Lower|bG~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mid|OC[26]~115_combout\,
	datab => \Mid|OC[30]~128_combout\,
	datac => \Mid|BLAN|ForGenerate:25:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\,
	datad => \Mid|BLAN|ForGenerate:31:ColumnBlock|Recur:Upper|Recur:Lower|bG~1_combout\,
	combout => \Bot|S[33]~67_combout\);

-- Location: LCCOMB_X88_Y50_N4
\Bot|S[33]~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \Bot|S[33]~69_combout\ = \Top|P\(33) $ ((((\Mid|OC[38]~158_combout\ & \Bot|S[33]~67_combout\)) # (!\Bot|S[33]~68_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010110100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Top|P\(33),
	datab => \Mid|OC[38]~158_combout\,
	datac => \Bot|S[33]~68_combout\,
	datad => \Bot|S[33]~67_combout\,
	combout => \Bot|S[33]~69_combout\);

-- Location: IOIBUF_X58_Y0_N15
\A[34]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(34),
	o => \A[34]~input_o\);

-- Location: IOIBUF_X115_Y55_N15
\B[34]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(34),
	o => \B[34]~input_o\);

-- Location: LCCOMB_X83_Y51_N8
\Top|P[34]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Top|P\(34) = \A[34]~input_o\ $ (\B[34]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[34]~input_o\,
	datac => \B[34]~input_o\,
	combout => \Top|P\(34));

-- Location: LCCOMB_X83_Y52_N2
\Mid|BLAN|ForGenerate:33:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|BP~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|BLAN|ForGenerate:33:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|BP~0_combout\ = (\A[32]~input_o\ & (!\B[32]~input_o\ & (\A[33]~input_o\ $ (\B[33]~input_o\)))) # (!\A[32]~input_o\ & (\B[32]~input_o\ & (\A[33]~input_o\ $ 
-- (\B[33]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[32]~input_o\,
	datab => \B[32]~input_o\,
	datac => \A[33]~input_o\,
	datad => \B[33]~input_o\,
	combout => \Mid|BLAN|ForGenerate:33:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|BP~0_combout\);

-- Location: LCCOMB_X83_Y52_N8
\Mid|BLAN|ForGenerate:33:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|BP~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|BLAN|ForGenerate:33:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|BP~0_combout\ = (\Mid|BLAN|ForGenerate:33:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|BP~0_combout\ & (\A[31]~input_o\ $ (\B[31]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mid|BLAN|ForGenerate:33:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|BP~0_combout\,
	datac => \A[31]~input_o\,
	datad => \B[31]~input_o\,
	combout => \Mid|BLAN|ForGenerate:33:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|BP~0_combout\);

-- Location: LCCOMB_X84_Y51_N30
\Bot|S[34]~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \Bot|S[34]~75_combout\ = (\Mid|BLAN|ForGenerate:28:ColumnBlock|Recur:Upper|Recur:Upper|bG~0_combout\ & (!\Top|P\(34) & (\Mid|BLAN|ForGenerate:33:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|BP~0_combout\ & 
-- \Mid|BLAN|ForGenerate:30:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|BP~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mid|BLAN|ForGenerate:28:ColumnBlock|Recur:Upper|Recur:Upper|bG~0_combout\,
	datab => \Top|P\(34),
	datac => \Mid|BLAN|ForGenerate:33:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|BP~0_combout\,
	datad => \Mid|BLAN|ForGenerate:30:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|BP~0_combout\,
	combout => \Bot|S[34]~75_combout\);

-- Location: LCCOMB_X83_Y52_N4
\Mid|BLAN|ForGenerate:33:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|BLAN|ForGenerate:33:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\ = (\A[33]~input_o\ & ((\B[33]~input_o\) # ((\A[32]~input_o\ & \B[32]~input_o\)))) # (!\A[33]~input_o\ & (\A[32]~input_o\ & (\B[32]~input_o\ & 
-- \B[33]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[32]~input_o\,
	datab => \B[32]~input_o\,
	datac => \A[33]~input_o\,
	datad => \B[33]~input_o\,
	combout => \Mid|BLAN|ForGenerate:33:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\);

-- Location: LCCOMB_X83_Y52_N14
\Mid|OC[51]~162\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|OC[51]~162_combout\ = (!\Mid|BLAN|ForGenerate:33:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\ & 
-- (((!\Mid|BLAN|ForGenerate:33:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|BP~0_combout\) # (!\A[31]~input_o\)) # (!\B[31]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[31]~input_o\,
	datab => \Mid|BLAN|ForGenerate:33:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\,
	datac => \A[31]~input_o\,
	datad => \Mid|BLAN|ForGenerate:33:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|BP~0_combout\,
	combout => \Mid|OC[51]~162_combout\);

-- Location: LCCOMB_X84_Y51_N10
\Bot|S[34]~132\ : cycloneive_lcell_comb
-- Equation(s):
-- \Bot|S[34]~132_combout\ = (!\Mid|BLAN|ForGenerate:30:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\ & (\Mid|OC[51]~162_combout\ & (\A[34]~input_o\ $ (\B[34]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mid|BLAN|ForGenerate:30:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\,
	datab => \A[34]~input_o\,
	datac => \Mid|OC[51]~162_combout\,
	datad => \B[34]~input_o\,
	combout => \Bot|S[34]~132_combout\);

-- Location: LCCOMB_X84_Y51_N20
\Bot|S[34]~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \Bot|S[34]~74_combout\ = (!\Mid|BLAN|ForGenerate:26:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\ & (!\Mid|BLAN|ForGenerate:28:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\ & 
-- \Bot|S[34]~132_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mid|BLAN|ForGenerate:26:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\,
	datac => \Mid|BLAN|ForGenerate:28:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\,
	datad => \Bot|S[34]~132_combout\,
	combout => \Bot|S[34]~74_combout\);

-- Location: LCCOMB_X89_Y51_N14
\Bot|S[34]~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \Bot|S[34]~70_combout\ = (\Mid|BLAN|ForGenerate:28:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|BP~0_combout\ & ((\Mid|BLAN|ForGenerate:26:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\) # 
-- (\Mid|BLAN|ForGenerate:26:ColumnBlock|Recur:Upper|Recur:Upper|BP~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mid|BLAN|ForGenerate:26:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\,
	datab => \Mid|BLAN|ForGenerate:28:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|BP~0_combout\,
	datad => \Mid|BLAN|ForGenerate:26:ColumnBlock|Recur:Upper|Recur:Upper|BP~0_combout\,
	combout => \Bot|S[34]~70_combout\);

-- Location: LCCOMB_X89_Y51_N0
\Bot|S[34]~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \Bot|S[34]~71_combout\ = (\Top|P\(34) & ((\Bot|S[34]~70_combout\) # ((\Mid|BLAN|ForGenerate:28:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\)))) # (!\Top|P\(34) & (((\Mid|OC[29]~133_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Top|P\(34),
	datab => \Bot|S[34]~70_combout\,
	datac => \Mid|BLAN|ForGenerate:28:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\,
	datad => \Mid|OC[29]~133_combout\,
	combout => \Bot|S[34]~71_combout\);

-- Location: LCCOMB_X84_Y51_N24
\Bot|S[34]~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \Bot|S[34]~72_combout\ = (\Mid|BLAN|ForGenerate:30:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\) # ((\Mid|BLAN|ForGenerate:30:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|BP~0_combout\ & (\Top|P\(34) $ 
-- (!\Bot|S[34]~71_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mid|BLAN|ForGenerate:30:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\,
	datab => \Top|P\(34),
	datac => \Bot|S[34]~71_combout\,
	datad => \Mid|BLAN|ForGenerate:30:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|BP~0_combout\,
	combout => \Bot|S[34]~72_combout\);

-- Location: LCCOMB_X84_Y51_N2
\Bot|S[34]~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \Bot|S[34]~73_combout\ = \Top|P\(34) $ ((((\Mid|BLAN|ForGenerate:33:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|BP~0_combout\ & \Bot|S[34]~72_combout\)) # (!\Mid|OC[51]~162_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001111000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mid|BLAN|ForGenerate:33:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|BP~0_combout\,
	datab => \Top|P\(34),
	datac => \Mid|OC[51]~162_combout\,
	datad => \Bot|S[34]~72_combout\,
	combout => \Bot|S[34]~73_combout\);

-- Location: LCCOMB_X89_Y47_N2
\Mid|BLAN|ForGenerate:24:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|bG~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|BLAN|ForGenerate:24:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\ = (\Mid|BLAN|ForGenerate:22:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\ & (\Top|P\(23) & (\B[24]~input_o\ $ (\A[24]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[24]~input_o\,
	datab => \A[24]~input_o\,
	datac => \Mid|BLAN|ForGenerate:22:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\,
	datad => \Top|P\(23),
	combout => \Mid|BLAN|ForGenerate:24:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\);

-- Location: LCCOMB_X94_Y44_N26
\Mid|OC[17]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|OC\(17) = (\Mid|OC[17]~76_combout\) # ((\Mid|BLAN|ForGenerate:16:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\) # (\Mid|BLAN|ForGenerate:16:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mid|OC[17]~76_combout\,
	datab => \Mid|BLAN|ForGenerate:16:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\,
	datad => \Mid|BLAN|ForGenerate:16:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\,
	combout => \Mid|OC\(17));

-- Location: LCCOMB_X90_Y47_N6
\Mid|OC[34]~163\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|OC[34]~163_combout\ = ((\Mid|BLAN|ForGenerate:27:ColumnBlock|Recur:Upper|Recur:Lower|Recur:Upper|BP~4_combout\ & \Mid|OC\(17))) # (!\Mid|BLAN|ForGenerate:27:ColumnBlock|Recur:Upper|Recur:Lower|bG~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mid|BLAN|ForGenerate:27:ColumnBlock|Recur:Upper|Recur:Lower|bG~0_combout\,
	datac => \Mid|BLAN|ForGenerate:27:ColumnBlock|Recur:Upper|Recur:Lower|Recur:Upper|BP~4_combout\,
	datad => \Mid|OC\(17),
	combout => \Mid|OC[34]~163_combout\);

-- Location: LCCOMB_X90_Y47_N8
\Bot|S[34]~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \Bot|S[34]~76_combout\ = (!\Mid|BLAN|ForGenerate:24:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\ & (!\Mid|BLAN|ForGenerate:24:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\ & 
-- ((!\Mid|BLAN|ForGenerate:24:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|BP~0_combout\) # (!\Mid|OC[34]~163_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mid|BLAN|ForGenerate:24:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\,
	datab => \Mid|BLAN|ForGenerate:24:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\,
	datac => \Mid|OC[34]~163_combout\,
	datad => \Mid|BLAN|ForGenerate:24:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|BP~0_combout\,
	combout => \Bot|S[34]~76_combout\);

-- Location: LCCOMB_X84_Y51_N16
\Bot|S[34]~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \Bot|S[34]~77_combout\ = (\Bot|S[34]~73_combout\) # ((\Bot|S[34]~76_combout\ & ((\Bot|S[34]~74_combout\))) # (!\Bot|S[34]~76_combout\ & (\Bot|S[34]~75_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Bot|S[34]~75_combout\,
	datab => \Bot|S[34]~74_combout\,
	datac => \Bot|S[34]~73_combout\,
	datad => \Bot|S[34]~76_combout\,
	combout => \Bot|S[34]~77_combout\);

-- Location: LCCOMB_X83_Y51_N10
\Mid|BLAN|ForGenerate:34:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|BLAN|ForGenerate:34:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\ = (\A[33]~input_o\ & (!\B[33]~input_o\ & (\A[34]~input_o\ $ (\B[34]~input_o\)))) # (!\A[33]~input_o\ & (\B[33]~input_o\ & (\A[34]~input_o\ $ 
-- (\B[34]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[33]~input_o\,
	datab => \A[34]~input_o\,
	datac => \B[34]~input_o\,
	datad => \B[33]~input_o\,
	combout => \Mid|BLAN|ForGenerate:34:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\);

-- Location: LCCOMB_X83_Y51_N20
\Mid|BLAN|ForGenerate:34:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|BLAN|ForGenerate:34:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\ = (\A[34]~input_o\ & ((\B[34]~input_o\) # ((\A[33]~input_o\ & \B[33]~input_o\)))) # (!\A[34]~input_o\ & (\A[33]~input_o\ & (\B[34]~input_o\ & 
-- \B[33]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[33]~input_o\,
	datab => \A[34]~input_o\,
	datac => \B[34]~input_o\,
	datad => \B[33]~input_o\,
	combout => \Mid|BLAN|ForGenerate:34:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\);

-- Location: LCCOMB_X83_Y52_N10
\Mid|OC[52]~164\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|OC[52]~164_combout\ = (!\Mid|BLAN|ForGenerate:34:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\ & (((!\Mid|BLAN|ForGenerate:34:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\) # 
-- (!\B[32]~input_o\)) # (!\A[32]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[32]~input_o\,
	datab => \B[32]~input_o\,
	datac => \Mid|BLAN|ForGenerate:34:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\,
	datad => \Mid|BLAN|ForGenerate:34:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\,
	combout => \Mid|OC[52]~164_combout\);

-- Location: IOIBUF_X115_Y57_N15
\B[35]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(35),
	o => \B[35]~input_o\);

-- Location: IOIBUF_X49_Y73_N15
\A[35]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(35),
	o => \A[35]~input_o\);

-- Location: LCCOMB_X81_Y50_N16
\Bot|S[35]~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \Bot|S[35]~78_combout\ = (\Mid|OC[52]~164_combout\ & (!\Mid|BLAN|ForGenerate:31:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\ & (\B[35]~input_o\ $ (\A[35]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mid|OC[52]~164_combout\,
	datab => \B[35]~input_o\,
	datac => \Mid|BLAN|ForGenerate:31:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\,
	datad => \A[35]~input_o\,
	combout => \Bot|S[35]~78_combout\);

-- Location: LCCOMB_X87_Y47_N24
\Bot|S[35]~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \Bot|S[35]~79_combout\ = (\Bot|S[35]~78_combout\ & (!\Mid|BLAN|ForGenerate:29:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\ & (!\Mid|BLAN|ForGenerate:25:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\ 
-- & !\Mid|BLAN|ForGenerate:27:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Bot|S[35]~78_combout\,
	datab => \Mid|BLAN|ForGenerate:29:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\,
	datac => \Mid|BLAN|ForGenerate:25:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\,
	datad => \Mid|BLAN|ForGenerate:27:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\,
	combout => \Bot|S[35]~79_combout\);

-- Location: LCCOMB_X87_Y47_N10
\Bot|S[35]~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \Bot|S[35]~80_combout\ = (\Bot|S[35]~79_combout\ & (((!\A[23]~input_o\ & !\B[23]~input_o\)) # (!\Mid|OC[26]~115_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[23]~input_o\,
	datab => \Bot|S[35]~79_combout\,
	datac => \Mid|OC[26]~115_combout\,
	datad => \B[23]~input_o\,
	combout => \Bot|S[35]~80_combout\);

-- Location: LCCOMB_X87_Y47_N28
\Bot|S[35]~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \Bot|S[35]~81_combout\ = (!\Mid|OC[30]~128_combout\ & (!\Mid|BLAN|ForGenerate:29:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\ & (\Bot|S[35]~78_combout\ & 
-- !\Mid|BLAN|ForGenerate:27:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mid|OC[30]~128_combout\,
	datab => \Mid|BLAN|ForGenerate:29:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\,
	datac => \Bot|S[35]~78_combout\,
	datad => \Mid|BLAN|ForGenerate:27:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\,
	combout => \Bot|S[35]~81_combout\);

-- Location: LCCOMB_X87_Y50_N16
\Bot|S[35]~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \Bot|S[35]~83_combout\ = (\Mid|BLAN|ForGenerate:36:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Lower|Recur:Upper|BP~2_combout\ & ((\Mid|BLAN|ForGenerate:29:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\) # 
-- ((\Mid|BLAN|ForGenerate:29:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|BP~0_combout\ & \Mid|BLAN|ForGenerate:27:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mid|BLAN|ForGenerate:29:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\,
	datab => \Mid|BLAN|ForGenerate:29:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|BP~0_combout\,
	datac => \Mid|BLAN|ForGenerate:27:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\,
	datad => \Mid|BLAN|ForGenerate:36:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Lower|Recur:Upper|BP~2_combout\,
	combout => \Bot|S[35]~83_combout\);

-- Location: LCCOMB_X81_Y50_N18
\Mid|BLAN|ForGenerate:34:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|BP~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|BLAN|ForGenerate:34:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|BP~0_combout\ = (\Mid|BLAN|ForGenerate:33:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|BP~0_combout\ & (\A[34]~input_o\ $ (\B[34]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[34]~input_o\,
	datab => \B[34]~input_o\,
	datad => \Mid|BLAN|ForGenerate:33:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|BP~0_combout\,
	combout => \Mid|BLAN|ForGenerate:34:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|BP~0_combout\);

-- Location: LCCOMB_X81_Y50_N6
\Bot|S[35]~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \Bot|S[35]~84_combout\ = (\Bot|S[35]~83_combout\ & (\Mid|BLAN|ForGenerate:34:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|BP~0_combout\ & (\B[35]~input_o\ $ (!\A[35]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Bot|S[35]~83_combout\,
	datab => \Mid|BLAN|ForGenerate:34:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|BP~0_combout\,
	datac => \B[35]~input_o\,
	datad => \A[35]~input_o\,
	combout => \Bot|S[35]~84_combout\);

-- Location: LCCOMB_X87_Y47_N22
\Mid|BLAN|ForGenerate:34:ColumnBlock|Recur:Upper|Recur:Lower|Recur:Upper|Recur:Upper|bG~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|BLAN|ForGenerate:34:ColumnBlock|Recur:Upper|Recur:Lower|Recur:Upper|Recur:Upper|bG~0_combout\ = (\A[23]~input_o\ & (\Mid|OC[26]~115_combout\ & \B[23]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[23]~input_o\,
	datac => \Mid|OC[26]~115_combout\,
	datad => \B[23]~input_o\,
	combout => \Mid|BLAN|ForGenerate:34:ColumnBlock|Recur:Upper|Recur:Lower|Recur:Upper|Recur:Upper|bG~0_combout\);

-- Location: LCCOMB_X81_Y50_N28
\Top|P[35]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Top|P\(35) = \B[35]~input_o\ $ (\A[35]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[35]~input_o\,
	datad => \A[35]~input_o\,
	combout => \Top|P\(35));

-- Location: LCCOMB_X87_Y50_N26
\Bot|S[35]~85\ : cycloneive_lcell_comb
-- Equation(s):
-- \Bot|S[35]~85_combout\ = (\Mid|BLAN|ForGenerate:36:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Lower|Recur:Upper|BP~2_combout\ & (!\Top|P\(35) & (\Mid|BLAN|ForGenerate:34:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|BP~0_combout\ & 
-- \Mid|BLAN|ForGenerate:29:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|BP~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mid|BLAN|ForGenerate:36:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Lower|Recur:Upper|BP~2_combout\,
	datab => \Top|P\(35),
	datac => \Mid|BLAN|ForGenerate:34:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|BP~0_combout\,
	datad => \Mid|BLAN|ForGenerate:29:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|BP~0_combout\,
	combout => \Bot|S[35]~85_combout\);

-- Location: LCCOMB_X87_Y47_N16
\Bot|S[35]~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \Bot|S[35]~86_combout\ = (\Mid|OC[30]~128_combout\ & (\Bot|S[35]~85_combout\ & ((\Mid|BLAN|ForGenerate:25:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\) # 
-- (\Mid|BLAN|ForGenerate:34:ColumnBlock|Recur:Upper|Recur:Lower|Recur:Upper|Recur:Upper|bG~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mid|OC[30]~128_combout\,
	datab => \Mid|BLAN|ForGenerate:25:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\,
	datac => \Mid|BLAN|ForGenerate:34:ColumnBlock|Recur:Upper|Recur:Lower|Recur:Upper|Recur:Upper|bG~0_combout\,
	datad => \Bot|S[35]~85_combout\,
	combout => \Bot|S[35]~86_combout\);

-- Location: LCCOMB_X87_Y50_N28
\Bot|S[35]~87\ : cycloneive_lcell_comb
-- Equation(s):
-- \Bot|S[35]~87_combout\ = ((!\Mid|BLAN|ForGenerate:29:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|BP~0_combout\ & !\Mid|BLAN|ForGenerate:29:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\)) # 
-- (!\Mid|BLAN|ForGenerate:36:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Lower|Recur:Upper|BP~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mid|BLAN|ForGenerate:36:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Lower|Recur:Upper|BP~2_combout\,
	datab => \Mid|BLAN|ForGenerate:29:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|BP~0_combout\,
	datad => \Mid|BLAN|ForGenerate:29:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\,
	combout => \Bot|S[35]~87_combout\);

-- Location: LCCOMB_X87_Y47_N18
\Bot|S[35]~88\ : cycloneive_lcell_comb
-- Equation(s):
-- \Bot|S[35]~88_combout\ = (\Bot|S[35]~84_combout\) # ((\Bot|S[35]~86_combout\) # ((\Bot|S[35]~78_combout\ & \Bot|S[35]~87_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Bot|S[35]~84_combout\,
	datab => \Bot|S[35]~86_combout\,
	datac => \Bot|S[35]~78_combout\,
	datad => \Bot|S[35]~87_combout\,
	combout => \Bot|S[35]~88_combout\);

-- Location: LCCOMB_X87_Y50_N22
\Bot|S[35]~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \Bot|S[35]~82_combout\ = (\Top|P\(35) & (((!\Mid|BLAN|ForGenerate:34:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|BP~0_combout\ & \Mid|OC[52]~164_combout\)))) # (!\Top|P\(35) & 
-- (((\Mid|BLAN|ForGenerate:31:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\ & \Mid|BLAN|ForGenerate:34:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|BP~0_combout\)) # (!\Mid|OC[52]~164_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mid|BLAN|ForGenerate:31:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\,
	datab => \Top|P\(35),
	datac => \Mid|BLAN|ForGenerate:34:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|BP~0_combout\,
	datad => \Mid|OC[52]~164_combout\,
	combout => \Bot|S[35]~82_combout\);

-- Location: LCCOMB_X87_Y47_N12
\Bot|S[35]~89\ : cycloneive_lcell_comb
-- Equation(s):
-- \Bot|S[35]~89_combout\ = (\Bot|S[35]~80_combout\) # ((\Bot|S[35]~81_combout\) # ((\Bot|S[35]~88_combout\) # (\Bot|S[35]~82_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Bot|S[35]~80_combout\,
	datab => \Bot|S[35]~81_combout\,
	datac => \Bot|S[35]~88_combout\,
	datad => \Bot|S[35]~82_combout\,
	combout => \Bot|S[35]~89_combout\);

-- Location: LCCOMB_X89_Y47_N20
\Bot|S[35]~91\ : cycloneive_lcell_comb
-- Equation(s):
-- \Bot|S[35]~91_combout\ = (!\Mid|BLAN|ForGenerate:22:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\ & ((!\Mid|OC[34]~163_combout\) # (!\Mid|BLAN|ForGenerate:22:ColumnBlock|Recur:Upper|Recur:Upper|BP~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mid|BLAN|ForGenerate:22:ColumnBlock|Recur:Upper|Recur:Upper|BP~0_combout\,
	datac => \Mid|BLAN|ForGenerate:22:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\,
	datad => \Mid|OC[34]~163_combout\,
	combout => \Bot|S[35]~91_combout\);

-- Location: LCCOMB_X87_Y47_N30
\Bot|S[35]~90\ : cycloneive_lcell_comb
-- Equation(s):
-- \Bot|S[35]~90_combout\ = (\Bot|S[35]~79_combout\ & ((!\B[23]~input_o\) # (!\A[23]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Bot|S[35]~79_combout\,
	datac => \A[23]~input_o\,
	datad => \B[23]~input_o\,
	combout => \Bot|S[35]~90_combout\);

-- Location: LCCOMB_X87_Y47_N20
\Bot|S[35]~133\ : cycloneive_lcell_comb
-- Equation(s):
-- \Bot|S[35]~133_combout\ = (\Mid|BLAN|ForGenerate:27:ColumnBlock|Recur:Upper|Recur:Upper|bG~0_combout\ & (\Bot|S[35]~85_combout\ & (\B[23]~input_o\ $ (\A[23]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mid|BLAN|ForGenerate:27:ColumnBlock|Recur:Upper|Recur:Upper|bG~0_combout\,
	datab => \B[23]~input_o\,
	datac => \A[23]~input_o\,
	datad => \Bot|S[35]~85_combout\,
	combout => \Bot|S[35]~133_combout\);

-- Location: LCCOMB_X87_Y47_N8
\Bot|S[35]~92\ : cycloneive_lcell_comb
-- Equation(s):
-- \Bot|S[35]~92_combout\ = (\Bot|S[35]~89_combout\) # ((\Bot|S[35]~91_combout\ & (\Bot|S[35]~90_combout\)) # (!\Bot|S[35]~91_combout\ & ((\Bot|S[35]~133_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Bot|S[35]~89_combout\,
	datab => \Bot|S[35]~91_combout\,
	datac => \Bot|S[35]~90_combout\,
	datad => \Bot|S[35]~133_combout\,
	combout => \Bot|S[35]~92_combout\);

-- Location: IOIBUF_X0_Y36_N15
\A[36]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(36),
	o => \A[36]~input_o\);

-- Location: LCCOMB_X88_Y47_N4
\Mid|OC[36]~166\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|OC[36]~166_combout\ = (\Mid|BLAN|ForGenerate:23:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\ & ((\Mid|BLAN|ForGenerate:21:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\) # 
-- ((\Mid|BLAN|ForGenerate:21:ColumnBlock|Recur:Upper|Recur:Upper|BP~0_combout\ & \Mid|BLAN|ForGenerate:19:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mid|BLAN|ForGenerate:21:ColumnBlock|Recur:Upper|Recur:Upper|BP~0_combout\,
	datab => \Mid|BLAN|ForGenerate:19:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\,
	datac => \Mid|BLAN|ForGenerate:23:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\,
	datad => \Mid|BLAN|ForGenerate:21:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\,
	combout => \Mid|OC[36]~166_combout\);

-- Location: LCCOMB_X89_Y51_N26
\Mid|OC[36]~167\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|OC[36]~167_combout\ = (\B[24]~input_o\ & ((\Mid|BLAN|ForGenerate:23:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\) # ((\A[24]~input_o\) # (\Mid|OC[36]~166_combout\)))) # (!\B[24]~input_o\ & (\A[24]~input_o\ & 
-- ((\Mid|BLAN|ForGenerate:23:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\) # (\Mid|OC[36]~166_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mid|BLAN|ForGenerate:23:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\,
	datab => \B[24]~input_o\,
	datac => \A[24]~input_o\,
	datad => \Mid|OC[36]~166_combout\,
	combout => \Mid|OC[36]~167_combout\);

-- Location: LCCOMB_X89_Y51_N12
\Mid|OC[36]~168\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|OC[36]~168_combout\ = (\Mid|BLAN|ForGenerate:26:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\) # ((\Mid|BLAN|ForGenerate:26:ColumnBlock|Recur:Upper|Recur:Upper|BP~0_combout\ & \Mid|OC[36]~167_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mid|BLAN|ForGenerate:26:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\,
	datab => \Mid|BLAN|ForGenerate:26:ColumnBlock|Recur:Upper|Recur:Upper|BP~0_combout\,
	datac => \Mid|OC[36]~167_combout\,
	combout => \Mid|OC[36]~168_combout\);

-- Location: LCCOMB_X91_Y48_N20
\Mid|BLAN|ForGenerate:35:ColumnBlock|Recur:Upper|Recur:Lower|Recur:Upper|BP~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|BLAN|ForGenerate:35:ColumnBlock|Recur:Upper|Recur:Lower|Recur:Upper|BP~0_combout\ = (\Mid|BLAN|ForGenerate:26:ColumnBlock|Recur:Upper|Recur:Upper|BP~0_combout\ & (\Mid|BLAN|ForGenerate:23:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\ 
-- & (\A[24]~input_o\ $ (\B[24]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[24]~input_o\,
	datab => \B[24]~input_o\,
	datac => \Mid|BLAN|ForGenerate:26:ColumnBlock|Recur:Upper|Recur:Upper|BP~0_combout\,
	datad => \Mid|BLAN|ForGenerate:23:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\,
	combout => \Mid|BLAN|ForGenerate:35:ColumnBlock|Recur:Upper|Recur:Lower|Recur:Upper|BP~0_combout\);

-- Location: LCCOMB_X91_Y48_N30
\Mid|OC[36]~169\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|OC[36]~169_combout\ = (\Mid|BLAN|ForGenerate:35:ColumnBlock|Recur:Upper|Recur:Lower|Recur:Upper|BP~0_combout\ & (\Mid|BLAN|ForGenerate:20:ColumnBlock|Recur:Upper|Recur:Upper|bG~3_combout\ & (\B[21]~input_o\ $ (\A[21]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[21]~input_o\,
	datab => \Mid|BLAN|ForGenerate:35:ColumnBlock|Recur:Upper|Recur:Lower|Recur:Upper|BP~0_combout\,
	datac => \Mid|BLAN|ForGenerate:20:ColumnBlock|Recur:Upper|Recur:Upper|bG~3_combout\,
	datad => \A[21]~input_o\,
	combout => \Mid|OC[36]~169_combout\);

-- Location: LCCOMB_X91_Y47_N26
\Mid|OC[36]~170\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|OC[36]~170_combout\ = (\Mid|BLAN|ForGenerate:28:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|BP~0_combout\ & ((\Mid|OC[36]~168_combout\) # ((\Mid|OC[36]~169_combout\ & \Mid|OC[18]~81_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mid|BLAN|ForGenerate:28:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|BP~0_combout\,
	datab => \Mid|OC[36]~168_combout\,
	datac => \Mid|OC[36]~169_combout\,
	datad => \Mid|OC[18]~81_combout\,
	combout => \Mid|OC[36]~170_combout\);

-- Location: LCCOMB_X81_Y50_N8
\Mid|BLAN|ForGenerate:35:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|BP~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|BLAN|ForGenerate:35:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|BP~0_combout\ = (\A[34]~input_o\ & (!\B[34]~input_o\ & (\B[35]~input_o\ $ (\A[35]~input_o\)))) # (!\A[34]~input_o\ & (\B[34]~input_o\ & (\B[35]~input_o\ $ 
-- (\A[35]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[34]~input_o\,
	datab => \B[34]~input_o\,
	datac => \B[35]~input_o\,
	datad => \A[35]~input_o\,
	combout => \Mid|BLAN|ForGenerate:35:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|BP~0_combout\);

-- Location: LCCOMB_X83_Y50_N30
\Mid|BLAN|ForGenerate:35:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|BP~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|BLAN|ForGenerate:35:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|BP~0_combout\ = (\Mid|BLAN|ForGenerate:35:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|BP~0_combout\ & (\B[33]~input_o\ $ (\A[33]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[33]~input_o\,
	datab => \A[33]~input_o\,
	datac => \Mid|BLAN|ForGenerate:35:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|BP~0_combout\,
	combout => \Mid|BLAN|ForGenerate:35:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|BP~0_combout\);

-- Location: LCCOMB_X83_Y50_N0
\Mid|OC[36]~171\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|OC[36]~171_combout\ = (\Mid|BLAN|ForGenerate:30:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\ & (\Top|P\(33) & (\Mid|BLAN|ForGenerate:32:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\ & 
-- \Mid|BLAN|ForGenerate:35:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|BP~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mid|BLAN|ForGenerate:30:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\,
	datab => \Top|P\(33),
	datac => \Mid|BLAN|ForGenerate:32:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\,
	datad => \Mid|BLAN|ForGenerate:35:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|BP~0_combout\,
	combout => \Mid|OC[36]~171_combout\);

-- Location: LCCOMB_X81_Y50_N26
\Mid|BLAN|ForGenerate:35:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|BLAN|ForGenerate:35:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\ = (\B[35]~input_o\ & ((\A[35]~input_o\) # ((\A[34]~input_o\ & \B[34]~input_o\)))) # (!\B[35]~input_o\ & (\A[34]~input_o\ & (\B[34]~input_o\ & 
-- \A[35]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[34]~input_o\,
	datab => \B[34]~input_o\,
	datac => \B[35]~input_o\,
	datad => \A[35]~input_o\,
	combout => \Mid|BLAN|ForGenerate:35:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\);

-- Location: LCCOMB_X83_Y50_N12
\Mid|BLAN|ForGenerate:47:ColumnBlock|Recur:Upper|Recur:Lower|bG~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|BLAN|ForGenerate:47:ColumnBlock|Recur:Upper|Recur:Lower|bG~0_combout\ = (!\Mid|BLAN|ForGenerate:35:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\ & (((!\B[33]~input_o\) # 
-- (!\Mid|BLAN|ForGenerate:35:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|BP~0_combout\)) # (!\A[33]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mid|BLAN|ForGenerate:35:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\,
	datab => \A[33]~input_o\,
	datac => \Mid|BLAN|ForGenerate:35:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|BP~0_combout\,
	datad => \B[33]~input_o\,
	combout => \Mid|BLAN|ForGenerate:47:ColumnBlock|Recur:Upper|Recur:Lower|bG~0_combout\);

-- Location: LCCOMB_X83_Y50_N26
\Mid|OC[36]~172\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|OC[36]~172_combout\ = (!\Mid|OC[36]~171_combout\ & (\Mid|BLAN|ForGenerate:47:ColumnBlock|Recur:Upper|Recur:Lower|bG~0_combout\ & ((!\Mid|BLAN|ForGenerate:32:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\) # 
-- (!\Mid|BLAN|ForGenerate:35:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|BP~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mid|BLAN|ForGenerate:35:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|BP~0_combout\,
	datab => \Mid|OC[36]~171_combout\,
	datac => \Mid|BLAN|ForGenerate:32:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\,
	datad => \Mid|BLAN|ForGenerate:47:ColumnBlock|Recur:Upper|Recur:Lower|bG~0_combout\,
	combout => \Mid|OC[36]~172_combout\);

-- Location: LCCOMB_X83_Y50_N18
\Mid|OC[36]~165\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|OC[36]~165_combout\ = (\Mid|BLAN|ForGenerate:32:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\ & (\Top|P\(33) & (\Mid|BLAN|ForGenerate:35:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|BP~0_combout\ 
-- & \Mid|BLAN|ForGenerate:30:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|BP~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mid|BLAN|ForGenerate:32:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\,
	datab => \Top|P\(33),
	datac => \Mid|BLAN|ForGenerate:35:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|BP~0_combout\,
	datad => \Mid|BLAN|ForGenerate:30:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|BP~0_combout\,
	combout => \Mid|OC[36]~165_combout\);

-- Location: LCCOMB_X83_Y49_N8
\Mid|OC[36]~173\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|OC[36]~173_combout\ = ((\Mid|OC[36]~165_combout\ & ((\Mid|OC[36]~170_combout\) # (\Mid|BLAN|ForGenerate:28:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\)))) # (!\Mid|OC[36]~172_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mid|OC[36]~170_combout\,
	datab => \Mid|BLAN|ForGenerate:28:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\,
	datac => \Mid|OC[36]~172_combout\,
	datad => \Mid|OC[36]~165_combout\,
	combout => \Mid|OC[36]~173_combout\);

-- Location: IOIBUF_X0_Y36_N22
\B[36]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(36),
	o => \B[36]~input_o\);

-- Location: LCCOMB_X83_Y49_N26
\Bot|S[36]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Bot|S\(36) = \A[36]~input_o\ $ (\Mid|OC[36]~173_combout\ $ (\B[36]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[36]~input_o\,
	datac => \Mid|OC[36]~173_combout\,
	datad => \B[36]~input_o\,
	combout => \Bot|S\(36));

-- Location: IOIBUF_X60_Y73_N22
\A[37]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(37),
	o => \A[37]~input_o\);

-- Location: IOIBUF_X54_Y73_N1
\B[37]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(37),
	o => \B[37]~input_o\);

-- Location: LCCOMB_X81_Y50_N20
\Mid|BLAN|ForGenerate:51:ColumnBlock|Recur:Upper|Recur:Lower|Recur:Upper|Recur:Upper|BP~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|BLAN|ForGenerate:51:ColumnBlock|Recur:Upper|Recur:Lower|Recur:Upper|Recur:Upper|BP~0_combout\ = (\A[36]~input_o\ & (!\B[36]~input_o\ & (\B[35]~input_o\ $ (\A[35]~input_o\)))) # (!\A[36]~input_o\ & (\B[36]~input_o\ & (\B[35]~input_o\ $ 
-- (\A[35]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[36]~input_o\,
	datab => \B[35]~input_o\,
	datac => \B[36]~input_o\,
	datad => \A[35]~input_o\,
	combout => \Mid|BLAN|ForGenerate:51:ColumnBlock|Recur:Upper|Recur:Lower|Recur:Upper|Recur:Upper|BP~0_combout\);

-- Location: LCCOMB_X81_Y50_N0
\Mid|OC[60]~400\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|OC[60]~400_combout\ = (\Mid|BLAN|ForGenerate:51:ColumnBlock|Recur:Upper|Recur:Lower|Recur:Upper|Recur:Upper|BP~0_combout\ & (\Mid|BLAN|ForGenerate:33:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|BP~0_combout\ & 
-- (\A[34]~input_o\ $ (\B[34]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[34]~input_o\,
	datab => \B[34]~input_o\,
	datac => \Mid|BLAN|ForGenerate:51:ColumnBlock|Recur:Upper|Recur:Lower|Recur:Upper|Recur:Upper|BP~0_combout\,
	datad => \Mid|BLAN|ForGenerate:33:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|BP~0_combout\,
	combout => \Mid|OC[60]~400_combout\);

-- Location: LCCOMB_X80_Y50_N30
\Bot|S[37]~134\ : cycloneive_lcell_comb
-- Equation(s):
-- \Bot|S[37]~134_combout\ = (\Mid|OC[60]~400_combout\ & (\Mid|BLAN|ForGenerate:36:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Lower|Recur:Upper|BP~3_combout\ & (\A[37]~input_o\ $ (!\B[37]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[37]~input_o\,
	datab => \B[37]~input_o\,
	datac => \Mid|OC[60]~400_combout\,
	datad => \Mid|BLAN|ForGenerate:36:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Lower|Recur:Upper|BP~3_combout\,
	combout => \Bot|S[37]~134_combout\);

-- Location: LCCOMB_X83_Y49_N28
\Bot|S[37]~98\ : cycloneive_lcell_comb
-- Equation(s):
-- \Bot|S[37]~98_combout\ = (!\Mid|BLAN|ForGenerate:28:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\ & !\Mid|OC[36]~170_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mid|BLAN|ForGenerate:28:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\,
	datad => \Mid|OC[36]~170_combout\,
	combout => \Bot|S[37]~98_combout\);

-- Location: LCCOMB_X82_Y50_N14
\Mid|OC[43]~174\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|OC[43]~174_combout\ = (!\Mid|BLAN|ForGenerate:31:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\ & (((!\B[29]~input_o\) # (!\Mid|BLAN|ForGenerate:36:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Lower|Recur:Upper|BP~2_combout\)) 
-- # (!\A[29]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mid|BLAN|ForGenerate:31:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\,
	datab => \A[29]~input_o\,
	datac => \Mid|BLAN|ForGenerate:36:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Lower|Recur:Upper|BP~2_combout\,
	datad => \B[29]~input_o\,
	combout => \Mid|OC[43]~174_combout\);

-- Location: LCCOMB_X82_Y50_N0
\Bot|S[37]~93\ : cycloneive_lcell_comb
-- Equation(s):
-- \Bot|S[37]~93_combout\ = (!\Mid|BLAN|ForGenerate:31:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\ & (((!\A[29]~input_o\ & !\B[29]~input_o\)) # 
-- (!\Mid|BLAN|ForGenerate:36:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Lower|Recur:Upper|BP~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mid|BLAN|ForGenerate:31:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\,
	datab => \A[29]~input_o\,
	datac => \Mid|BLAN|ForGenerate:36:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Lower|Recur:Upper|BP~2_combout\,
	datad => \B[29]~input_o\,
	combout => \Bot|S[37]~93_combout\);

-- Location: LCCOMB_X80_Y50_N16
\Top|P[37]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Top|P\(37) = \B[37]~input_o\ $ (\A[37]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[37]~input_o\,
	datad => \A[37]~input_o\,
	combout => \Top|P\(37));

-- Location: LCCOMB_X80_Y50_N10
\Bot|S[37]~94\ : cycloneive_lcell_comb
-- Equation(s):
-- \Bot|S[37]~94_combout\ = (\Mid|BLAN|ForGenerate:33:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\) # ((!\Bot|S[37]~93_combout\ & (\Top|P\(37) & 
-- \Mid|BLAN|ForGenerate:33:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|BP~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Bot|S[37]~93_combout\,
	datab => \Top|P\(37),
	datac => \Mid|BLAN|ForGenerate:33:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\,
	datad => \Mid|BLAN|ForGenerate:33:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|BP~0_combout\,
	combout => \Bot|S[37]~94_combout\);

-- Location: LCCOMB_X81_Y50_N30
\Mid|BLAN|ForGenerate:36:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|BLAN|ForGenerate:36:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\ = (\A[36]~input_o\ & ((\B[36]~input_o\) # ((\B[35]~input_o\ & \A[35]~input_o\)))) # (!\A[36]~input_o\ & (\B[35]~input_o\ & (\B[36]~input_o\ & 
-- \A[35]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[36]~input_o\,
	datab => \B[35]~input_o\,
	datac => \B[36]~input_o\,
	datad => \A[35]~input_o\,
	combout => \Mid|BLAN|ForGenerate:36:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\);

-- Location: LCCOMB_X83_Y51_N30
\Mid|OC[50]~175\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|OC[50]~175_combout\ = (!\Mid|BLAN|ForGenerate:36:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\ & (((!\B[34]~input_o\) # (!\A[34]~input_o\)) # 
-- (!\Mid|BLAN|ForGenerate:51:ColumnBlock|Recur:Upper|Recur:Lower|Recur:Upper|Recur:Upper|BP~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mid|BLAN|ForGenerate:51:ColumnBlock|Recur:Upper|Recur:Lower|Recur:Upper|Recur:Upper|BP~0_combout\,
	datab => \A[34]~input_o\,
	datac => \B[34]~input_o\,
	datad => \Mid|BLAN|ForGenerate:36:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\,
	combout => \Mid|OC[50]~175_combout\);

-- Location: LCCOMB_X83_Y51_N2
\Mid|BLAN|ForGenerate:36:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|BP~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|BLAN|ForGenerate:36:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|BP~2_combout\ = (\Mid|BLAN|ForGenerate:51:ColumnBlock|Recur:Upper|Recur:Lower|Recur:Upper|Recur:Upper|BP~0_combout\ & (\A[34]~input_o\ $ (\B[34]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[34]~input_o\,
	datac => \B[34]~input_o\,
	datad => \Mid|BLAN|ForGenerate:51:ColumnBlock|Recur:Upper|Recur:Lower|Recur:Upper|Recur:Upper|BP~0_combout\,
	combout => \Mid|BLAN|ForGenerate:36:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|BP~2_combout\);

-- Location: LCCOMB_X80_Y50_N4
\Bot|S[37]~95\ : cycloneive_lcell_comb
-- Equation(s):
-- \Bot|S[37]~95_combout\ = (\Mid|OC[50]~175_combout\ & ((!\Mid|BLAN|ForGenerate:36:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|BP~2_combout\) # (!\Bot|S[37]~94_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Bot|S[37]~94_combout\,
	datac => \Mid|OC[50]~175_combout\,
	datad => \Mid|BLAN|ForGenerate:36:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|BP~2_combout\,
	combout => \Bot|S[37]~95_combout\);

-- Location: LCCOMB_X80_Y50_N22
\Bot|S[37]~96\ : cycloneive_lcell_comb
-- Equation(s):
-- \Bot|S[37]~96_combout\ = (\Bot|S[37]~95_combout\ & ((\Top|P\(37)) # ((!\Mid|OC[43]~174_combout\ & \Mid|OC[60]~400_combout\)))) # (!\Bot|S[37]~95_combout\ & (((!\Top|P\(37)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mid|OC[43]~174_combout\,
	datab => \Bot|S[37]~95_combout\,
	datac => \Mid|OC[60]~400_combout\,
	datad => \Top|P\(37),
	combout => \Bot|S[37]~96_combout\);

-- Location: LCCOMB_X80_Y50_N24
\Bot|S[37]~97\ : cycloneive_lcell_comb
-- Equation(s):
-- \Bot|S[37]~97_combout\ = (\Mid|OC[50]~175_combout\ & (\Top|P\(37) & (!\Mid|BLAN|ForGenerate:33:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\ & \Mid|OC[43]~174_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mid|OC[50]~175_combout\,
	datab => \Top|P\(37),
	datac => \Mid|BLAN|ForGenerate:33:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\,
	datad => \Mid|OC[43]~174_combout\,
	combout => \Bot|S[37]~97_combout\);

-- Location: LCCOMB_X80_Y50_N18
\Bot|S[37]~99\ : cycloneive_lcell_comb
-- Equation(s):
-- \Bot|S[37]~99_combout\ = (\Bot|S[37]~96_combout\) # ((\Bot|S[37]~98_combout\ & ((\Bot|S[37]~97_combout\))) # (!\Bot|S[37]~98_combout\ & (\Bot|S[37]~134_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Bot|S[37]~134_combout\,
	datab => \Bot|S[37]~98_combout\,
	datac => \Bot|S[37]~96_combout\,
	datad => \Bot|S[37]~97_combout\,
	combout => \Bot|S[37]~99_combout\);

-- Location: LCCOMB_X81_Y50_N24
\Mid|BLAN|ForGenerate:37:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|BLAN|ForGenerate:37:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\ = (\A[36]~input_o\ & (!\B[36]~input_o\ & (\A[37]~input_o\ $ (\B[37]~input_o\)))) # (!\A[36]~input_o\ & (\B[36]~input_o\ & (\A[37]~input_o\ $ 
-- (\B[37]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[36]~input_o\,
	datab => \B[36]~input_o\,
	datac => \A[37]~input_o\,
	datad => \B[37]~input_o\,
	combout => \Mid|BLAN|ForGenerate:37:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\);

-- Location: LCCOMB_X81_Y50_N2
\Mid|BLAN|ForGenerate:37:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|BLAN|ForGenerate:37:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\ = (\A[37]~input_o\ & ((\B[37]~input_o\) # ((\A[36]~input_o\ & \B[36]~input_o\)))) # (!\A[37]~input_o\ & (\A[36]~input_o\ & (\B[36]~input_o\ & 
-- \B[37]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[36]~input_o\,
	datab => \B[36]~input_o\,
	datac => \A[37]~input_o\,
	datad => \B[37]~input_o\,
	combout => \Mid|BLAN|ForGenerate:37:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\);

-- Location: LCCOMB_X81_Y50_N12
\Mid|BLAN|ForGenerate:40:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|bG~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|BLAN|ForGenerate:40:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\ = (!\Mid|BLAN|ForGenerate:37:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\ & (((!\B[35]~input_o\) # 
-- (!\Mid|BLAN|ForGenerate:37:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\)) # (!\A[35]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[35]~input_o\,
	datab => \Mid|BLAN|ForGenerate:37:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\,
	datac => \B[35]~input_o\,
	datad => \Mid|BLAN|ForGenerate:37:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\,
	combout => \Mid|BLAN|ForGenerate:40:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\);

-- Location: LCCOMB_X80_Y53_N26
\Mid|OC[38]~177\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|OC[38]~177_combout\ = (\Mid|BLAN|ForGenerate:40:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\ & (((!\Mid|BLAN|ForGenerate:34:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\) # 
-- (!\Mid|BLAN|ForGenerate:51:ColumnBlock|Recur:Upper|Recur:Lower|Recur:Upper|Recur:Upper|BP~0_combout\)) # (!\Top|P\(37))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mid|BLAN|ForGenerate:40:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\,
	datab => \Top|P\(37),
	datac => \Mid|BLAN|ForGenerate:51:ColumnBlock|Recur:Upper|Recur:Lower|Recur:Upper|Recur:Upper|BP~0_combout\,
	datad => \Mid|BLAN|ForGenerate:34:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\,
	combout => \Mid|OC[38]~177_combout\);

-- Location: LCCOMB_X88_Y51_N12
\Mid|OC[38]~401\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|OC[38]~401_combout\ = (\Mid|OC[38]~158_combout\ & (\Mid|BLAN|ForGenerate:26:ColumnBlock|Recur:Upper|Recur:Upper|BP~0_combout\ & (\B[27]~input_o\ $ (\A[27]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[27]~input_o\,
	datab => \A[27]~input_o\,
	datac => \Mid|OC[38]~158_combout\,
	datad => \Mid|BLAN|ForGenerate:26:ColumnBlock|Recur:Upper|Recur:Upper|BP~0_combout\,
	combout => \Mid|OC[38]~401_combout\);

-- Location: LCCOMB_X91_Y45_N6
\Bot|S[38]~100\ : cycloneive_lcell_comb
-- Equation(s):
-- \Bot|S[38]~100_combout\ = (\Mid|BLAN|ForGenerate:24:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|BP~0_combout\ & ((\Mid|BLAN|ForGenerate:20:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\) # 
-- ((\Mid|BLAN|ForGenerate:25:ColumnBlock|Recur:Upper|Recur:Upper|BP~0_combout\ & \Mid|OC[19]~85_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mid|BLAN|ForGenerate:25:ColumnBlock|Recur:Upper|Recur:Upper|BP~0_combout\,
	datab => \Mid|BLAN|ForGenerate:24:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|BP~0_combout\,
	datac => \Mid|OC[19]~85_combout\,
	datad => \Mid|BLAN|ForGenerate:20:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\,
	combout => \Bot|S[38]~100_combout\);

-- Location: LCCOMB_X82_Y50_N10
\Mid|BLAN|ForGenerate:32:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|BLAN|ForGenerate:32:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~1_combout\ = (\A[30]~input_o\ & (\B[30]~input_o\ & \Mid|BLAN|ForGenerate:32:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[30]~input_o\,
	datac => \B[30]~input_o\,
	datad => \Mid|BLAN|ForGenerate:32:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\,
	combout => \Mid|BLAN|ForGenerate:32:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~1_combout\);

-- Location: LCCOMB_X83_Y50_N28
\Mid|OC[38]~178\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|OC[38]~178_combout\ = (\Mid|BLAN|ForGenerate:32:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\) # ((\Mid|BLAN|ForGenerate:32:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~1_combout\) # 
-- ((\Mid|BLAN|ForGenerate:29:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\ & \Mid|BLAN|ForGenerate:32:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|BP~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mid|BLAN|ForGenerate:29:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\,
	datab => \Mid|BLAN|ForGenerate:32:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|BP~0_combout\,
	datac => \Mid|BLAN|ForGenerate:32:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\,
	datad => \Mid|BLAN|ForGenerate:32:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~1_combout\,
	combout => \Mid|OC[38]~178_combout\);

-- Location: LCCOMB_X89_Y51_N30
\Mid|OC[38]~179\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|OC[38]~179_combout\ = (\Mid|BLAN|ForGenerate:27:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\) # ((\Mid|BLAN|ForGenerate:26:ColumnBlock|Recur:Upper|Recur:Upper|BP~0_combout\ & 
-- (\Mid|BLAN|ForGenerate:24:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\ & \Top|P\(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mid|BLAN|ForGenerate:27:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\,
	datab => \Mid|BLAN|ForGenerate:26:ColumnBlock|Recur:Upper|Recur:Upper|BP~0_combout\,
	datac => \Mid|BLAN|ForGenerate:24:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\,
	datad => \Top|P\(27),
	combout => \Mid|OC[38]~179_combout\);

-- Location: LCCOMB_X91_Y51_N18
\Mid|BLAN|ForGenerate:49:ColumnBlock|Recur:Upper|Recur:Lower|Recur:Lower|bG~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|BLAN|ForGenerate:49:ColumnBlock|Recur:Upper|Recur:Lower|Recur:Lower|bG~2_combout\ = (\B[25]~input_o\ & (\Mid|OC[30]~128_combout\ & \A[25]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[25]~input_o\,
	datab => \Mid|OC[30]~128_combout\,
	datad => \A[25]~input_o\,
	combout => \Mid|BLAN|ForGenerate:49:ColumnBlock|Recur:Upper|Recur:Lower|Recur:Lower|bG~2_combout\);

-- Location: LCCOMB_X88_Y50_N22
\Mid|OC[38]~180\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|OC[38]~180_combout\ = (\Mid|OC[38]~178_combout\) # ((\Mid|OC[38]~158_combout\ & ((\Mid|OC[38]~179_combout\) # (\Mid|BLAN|ForGenerate:49:ColumnBlock|Recur:Upper|Recur:Lower|Recur:Lower|bG~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mid|OC[38]~178_combout\,
	datab => \Mid|OC[38]~158_combout\,
	datac => \Mid|OC[38]~179_combout\,
	datad => \Mid|BLAN|ForGenerate:49:ColumnBlock|Recur:Upper|Recur:Lower|Recur:Lower|bG~2_combout\,
	combout => \Mid|OC[38]~180_combout\);

-- Location: LCCOMB_X88_Y50_N24
\Bot|S[38]~101\ : cycloneive_lcell_comb
-- Equation(s):
-- \Bot|S[38]~101_combout\ = (\Mid|OC[38]~180_combout\) # ((\Mid|OC[38]~401_combout\ & ((\Bot|S[38]~100_combout\) # (\Mid|BLAN|ForGenerate:24:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mid|OC[38]~401_combout\,
	datab => \Bot|S[38]~100_combout\,
	datac => \Mid|OC[38]~180_combout\,
	datad => \Mid|BLAN|ForGenerate:24:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\,
	combout => \Bot|S[38]~101_combout\);

-- Location: IOIBUF_X42_Y73_N8
\B[38]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(38),
	o => \B[38]~input_o\);

-- Location: IOIBUF_X115_Y53_N15
\A[38]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(38),
	o => \A[38]~input_o\);

-- Location: LCCOMB_X80_Y53_N4
\Top|P[38]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Top|P\(38) = \B[38]~input_o\ $ (\A[38]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[38]~input_o\,
	datac => \A[38]~input_o\,
	combout => \Top|P\(38));

-- Location: LCCOMB_X80_Y53_N16
\Mid|OC[44]~176\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|OC[44]~176_combout\ = (\Top|P\(34) & (\Top|P\(33) & (\Mid|BLAN|ForGenerate:51:ColumnBlock|Recur:Upper|Recur:Lower|Recur:Upper|Recur:Upper|BP~0_combout\ & \Top|P\(37))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Top|P\(34),
	datab => \Top|P\(33),
	datac => \Mid|BLAN|ForGenerate:51:ColumnBlock|Recur:Upper|Recur:Lower|Recur:Upper|Recur:Upper|BP~0_combout\,
	datad => \Top|P\(37),
	combout => \Mid|OC[44]~176_combout\);

-- Location: LCCOMB_X80_Y53_N6
\Bot|S[38]~102\ : cycloneive_lcell_comb
-- Equation(s):
-- \Bot|S[38]~102_combout\ = \Top|P\(38) $ ((((\Bot|S[38]~101_combout\ & \Mid|OC[44]~176_combout\)) # (!\Mid|OC[38]~177_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110110100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mid|OC[38]~177_combout\,
	datab => \Bot|S[38]~101_combout\,
	datac => \Top|P\(38),
	datad => \Mid|OC[44]~176_combout\,
	combout => \Bot|S[38]~102_combout\);

-- Location: LCCOMB_X80_Y53_N0
\Mid|BLAN|ForGenerate:38:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|BP~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|BLAN|ForGenerate:38:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|BP~0_combout\ = (\B[38]~input_o\ & (!\A[38]~input_o\ & (\B[37]~input_o\ $ (\A[37]~input_o\)))) # (!\B[38]~input_o\ & (\A[38]~input_o\ & (\B[37]~input_o\ $ 
-- (\A[37]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[38]~input_o\,
	datab => \B[37]~input_o\,
	datac => \A[38]~input_o\,
	datad => \A[37]~input_o\,
	combout => \Mid|BLAN|ForGenerate:38:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|BP~0_combout\);

-- Location: LCCOMB_X83_Y49_N6
\Mid|BLAN|ForGenerate:38:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|BP~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|BLAN|ForGenerate:38:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|BP~0_combout\ = (\Mid|BLAN|ForGenerate:38:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|BP~0_combout\ & (\A[36]~input_o\ $ (\B[36]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[36]~input_o\,
	datac => \Mid|BLAN|ForGenerate:38:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|BP~0_combout\,
	datad => \B[36]~input_o\,
	combout => \Mid|BLAN|ForGenerate:38:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|BP~0_combout\);

-- Location: LCCOMB_X80_Y53_N2
\Mid|BLAN|ForGenerate:38:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|BLAN|ForGenerate:38:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\ = (\B[38]~input_o\ & ((\A[38]~input_o\) # ((\B[37]~input_o\ & \A[37]~input_o\)))) # (!\B[38]~input_o\ & (\B[37]~input_o\ & (\A[38]~input_o\ & 
-- \A[37]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[38]~input_o\,
	datab => \B[37]~input_o\,
	datac => \A[38]~input_o\,
	datad => \A[37]~input_o\,
	combout => \Mid|BLAN|ForGenerate:38:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\);

-- Location: LCCOMB_X83_Y49_N0
\Mid|BLAN|ForGenerate:38:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|BLAN|ForGenerate:38:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\ = (\A[36]~input_o\ & (\Mid|BLAN|ForGenerate:38:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|BP~0_combout\ & \B[36]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[36]~input_o\,
	datac => \Mid|BLAN|ForGenerate:38:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|BP~0_combout\,
	datad => \B[36]~input_o\,
	combout => \Mid|BLAN|ForGenerate:38:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\);

-- Location: LCCOMB_X80_Y50_N28
\Mid|OC[45]~187\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|OC[45]~187_combout\ = (!\Mid|BLAN|ForGenerate:38:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\ & (!\Mid|BLAN|ForGenerate:38:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\ & 
-- ((!\Mid|BLAN|ForGenerate:38:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|BP~0_combout\) # (!\Mid|BLAN|ForGenerate:35:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mid|BLAN|ForGenerate:35:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\,
	datab => \Mid|BLAN|ForGenerate:38:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\,
	datac => \Mid|BLAN|ForGenerate:38:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|BP~0_combout\,
	datad => \Mid|BLAN|ForGenerate:38:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\,
	combout => \Mid|OC[45]~187_combout\);

-- Location: LCCOMB_X84_Y51_N26
\Mid|OC[39]~186\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|OC[39]~186_combout\ = ((\Mid|BLAN|ForGenerate:33:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|BP~0_combout\ & \Mid|BLAN|ForGenerate:30:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\)) # 
-- (!\Mid|OC[51]~162_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mid|OC[51]~162_combout\,
	datac => \Mid|BLAN|ForGenerate:33:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|BP~0_combout\,
	datad => \Mid|BLAN|ForGenerate:30:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\,
	combout => \Mid|OC[39]~186_combout\);

-- Location: LCCOMB_X80_Y50_N14
\Mid|OC[39]~188\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|OC[39]~188_combout\ = ((\Mid|BLAN|ForGenerate:38:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|BP~0_combout\ & (\Mid|BLAN|ForGenerate:35:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|BP~0_combout\ & 
-- \Mid|OC[39]~186_combout\))) # (!\Mid|OC[45]~187_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mid|BLAN|ForGenerate:38:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|BP~0_combout\,
	datab => \Mid|OC[45]~187_combout\,
	datac => \Mid|BLAN|ForGenerate:35:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|BP~0_combout\,
	datad => \Mid|OC[39]~186_combout\,
	combout => \Mid|OC[39]~188_combout\);

-- Location: LCCOMB_X83_Y50_N14
\Mid|OC[39]~181\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|OC[39]~181_combout\ = (\Mid|BLAN|ForGenerate:30:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|BP~0_combout\ & (\Mid|BLAN|ForGenerate:38:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|BP~0_combout\ & 
-- (\Mid|BLAN|ForGenerate:35:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|BP~0_combout\ & \Mid|BLAN|ForGenerate:33:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|BP~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mid|BLAN|ForGenerate:30:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|BP~0_combout\,
	datab => \Mid|BLAN|ForGenerate:38:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|BP~0_combout\,
	datac => \Mid|BLAN|ForGenerate:35:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|BP~0_combout\,
	datad => \Mid|BLAN|ForGenerate:33:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|BP~0_combout\,
	combout => \Mid|OC[39]~181_combout\);

-- Location: LCCOMB_X88_Y51_N24
\Mid|BLAN|ForGenerate:38:ColumnBlock|Recur:Upper|Recur:Lower|Recur:Upper|Recur:Upper|BP~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|BLAN|ForGenerate:38:ColumnBlock|Recur:Upper|Recur:Lower|Recur:Upper|Recur:Upper|BP~0_combout\ = (\Mid|BLAN|ForGenerate:28:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|BP~0_combout\ & (\A[26]~input_o\ $ (\B[26]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mid|BLAN|ForGenerate:28:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|BP~0_combout\,
	datac => \A[26]~input_o\,
	datad => \B[26]~input_o\,
	combout => \Mid|BLAN|ForGenerate:38:ColumnBlock|Recur:Upper|Recur:Lower|Recur:Upper|Recur:Upper|BP~0_combout\);

-- Location: LCCOMB_X84_Y50_N30
\Mid|OC[39]~184\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|OC[39]~184_combout\ = (\Mid|BLAN|ForGenerate:38:ColumnBlock|Recur:Upper|Recur:Lower|Recur:Upper|Recur:Upper|BP~0_combout\ & ((\Mid|BLAN|ForGenerate:25:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\) # 
-- ((!\Mid|OC[39]~109_combout\ & \Mid|OC[26]~115_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mid|OC[39]~109_combout\,
	datab => \Mid|BLAN|ForGenerate:38:ColumnBlock|Recur:Upper|Recur:Lower|Recur:Upper|Recur:Upper|BP~0_combout\,
	datac => \Mid|OC[26]~115_combout\,
	datad => \Mid|BLAN|ForGenerate:25:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\,
	combout => \Mid|OC[39]~184_combout\);

-- Location: LCCOMB_X88_Y51_N10
\Mid|BLAN|ForGenerate:51:ColumnBlock|Recur:Upper|Recur:Lower|bG~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|BLAN|ForGenerate:51:ColumnBlock|Recur:Upper|Recur:Lower|bG~0_combout\ = (\Mid|BLAN|ForGenerate:28:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|BP~0_combout\ & (\A[26]~input_o\ & \B[26]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mid|BLAN|ForGenerate:28:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|BP~0_combout\,
	datac => \A[26]~input_o\,
	datad => \B[26]~input_o\,
	combout => \Mid|BLAN|ForGenerate:51:ColumnBlock|Recur:Upper|Recur:Lower|bG~0_combout\);

-- Location: LCCOMB_X84_Y50_N24
\Mid|OC[39]~185\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|OC[39]~185_combout\ = (\Mid|OC[39]~181_combout\ & ((\Mid|BLAN|ForGenerate:28:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\) # ((\Mid|OC[39]~184_combout\) # 
-- (\Mid|BLAN|ForGenerate:51:ColumnBlock|Recur:Upper|Recur:Lower|bG~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mid|OC[39]~181_combout\,
	datab => \Mid|BLAN|ForGenerate:28:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\,
	datac => \Mid|OC[39]~184_combout\,
	datad => \Mid|BLAN|ForGenerate:51:ColumnBlock|Recur:Upper|Recur:Lower|bG~0_combout\,
	combout => \Mid|OC[39]~185_combout\);

-- Location: IOIBUF_X52_Y73_N1
\B[39]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(39),
	o => \B[39]~input_o\);

-- Location: IOIBUF_X52_Y73_N22
\A[39]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(39),
	o => \A[39]~input_o\);

-- Location: LCCOMB_X77_Y53_N0
\Top|P[39]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Top|P\(39) = \B[39]~input_o\ $ (\A[39]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[39]~input_o\,
	datad => \A[39]~input_o\,
	combout => \Top|P\(39));

-- Location: LCCOMB_X84_Y50_N10
\Mid|OC[39]~182\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|OC[39]~182_combout\ = (\Mid|BLAN|ForGenerate:23:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|BP~2_combout\ & (\Mid|BLAN|ForGenerate:38:ColumnBlock|Recur:Upper|Recur:Lower|Recur:Upper|Recur:Upper|BP~0_combout\ & (\Mid|OC[26]~115_combout\ & 
-- \Mid|OC[39]~181_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mid|BLAN|ForGenerate:23:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|BP~2_combout\,
	datab => \Mid|BLAN|ForGenerate:38:ColumnBlock|Recur:Upper|Recur:Lower|Recur:Upper|Recur:Upper|BP~0_combout\,
	datac => \Mid|OC[26]~115_combout\,
	datad => \Mid|OC[39]~181_combout\,
	combout => \Mid|OC[39]~182_combout\);

-- Location: LCCOMB_X84_Y50_N12
\Mid|OC[39]~183\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|OC[39]~183_combout\ = (\Mid|OC[39]~182_combout\ & ((\Mid|BLAN|ForGenerate:20:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\) # ((\Mid|BLAN|ForGenerate:25:ColumnBlock|Recur:Upper|Recur:Upper|BP~0_combout\ & 
-- \Mid|OC[19]~85_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mid|OC[39]~182_combout\,
	datab => \Mid|BLAN|ForGenerate:20:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\,
	datac => \Mid|BLAN|ForGenerate:25:ColumnBlock|Recur:Upper|Recur:Upper|BP~0_combout\,
	datad => \Mid|OC[19]~85_combout\,
	combout => \Mid|OC[39]~183_combout\);

-- Location: LCCOMB_X84_Y50_N18
\Bot|S[39]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Bot|S\(39) = \Top|P\(39) $ (((\Mid|OC[39]~188_combout\) # ((\Mid|OC[39]~185_combout\) # (\Mid|OC[39]~183_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mid|OC[39]~188_combout\,
	datab => \Mid|OC[39]~185_combout\,
	datac => \Top|P\(39),
	datad => \Mid|OC[39]~183_combout\,
	combout => \Bot|S\(39));

-- Location: LCCOMB_X80_Y51_N12
\Mid|BLAN|ForGenerate:39:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|BP~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|BLAN|ForGenerate:39:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|BP~2_combout\ = (\Mid|BLAN|ForGenerate:38:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|BP~0_combout\ & (\B[39]~input_o\ $ (\A[39]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[39]~input_o\,
	datac => \Mid|BLAN|ForGenerate:38:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|BP~0_combout\,
	datad => \A[39]~input_o\,
	combout => \Mid|BLAN|ForGenerate:39:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|BP~2_combout\);

-- Location: LCCOMB_X77_Y53_N20
\Mid|BLAN|ForGenerate:39:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|BLAN|ForGenerate:39:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\ = (\B[39]~input_o\ & ((\A[39]~input_o\) # ((\B[38]~input_o\ & \A[38]~input_o\)))) # (!\B[39]~input_o\ & (\B[38]~input_o\ & (\A[38]~input_o\ & 
-- \A[39]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[38]~input_o\,
	datab => \B[39]~input_o\,
	datac => \A[38]~input_o\,
	datad => \A[39]~input_o\,
	combout => \Mid|BLAN|ForGenerate:39:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\);

-- Location: LCCOMB_X77_Y53_N26
\Mid|BLAN|ForGenerate:42:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|bG~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|BLAN|ForGenerate:42:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|bG~2_combout\ = (\B[38]~input_o\ & (!\A[38]~input_o\ & (\B[39]~input_o\ $ (\A[39]~input_o\)))) # (!\B[38]~input_o\ & (\A[38]~input_o\ & (\B[39]~input_o\ $ (\A[39]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[38]~input_o\,
	datab => \B[39]~input_o\,
	datac => \A[38]~input_o\,
	datad => \A[39]~input_o\,
	combout => \Mid|BLAN|ForGenerate:42:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|bG~2_combout\);

-- Location: LCCOMB_X80_Y53_N28
\Mid|OC[40]~189\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|OC[40]~189_combout\ = (!\Mid|BLAN|ForGenerate:39:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\ & (((!\Mid|BLAN|ForGenerate:42:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|bG~2_combout\) # (!\B[37]~input_o\)) 
-- # (!\A[37]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[37]~input_o\,
	datab => \B[37]~input_o\,
	datac => \Mid|BLAN|ForGenerate:39:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\,
	datad => \Mid|BLAN|ForGenerate:42:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|bG~2_combout\,
	combout => \Mid|OC[40]~189_combout\);

-- Location: IOIBUF_X65_Y73_N8
\B[40]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(40),
	o => \B[40]~input_o\);

-- Location: IOIBUF_X65_Y73_N15
\A[40]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(40),
	o => \A[40]~input_o\);

-- Location: LCCOMB_X77_Y53_N22
\Top|P[40]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Top|P\(40) = \B[40]~input_o\ $ (\A[40]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[40]~input_o\,
	datad => \A[40]~input_o\,
	combout => \Top|P\(40));

-- Location: LCCOMB_X87_Y50_N14
\Mid|BLAN|ForGenerate:39:ColumnBlock|Recur:Upper|Recur:Lower|Recur:Upper|BP~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|BLAN|ForGenerate:39:ColumnBlock|Recur:Upper|Recur:Lower|Recur:Upper|BP~2_combout\ = (\Mid|BLAN|ForGenerate:29:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|BP~0_combout\ & 
-- (\Mid|BLAN|ForGenerate:26:ColumnBlock|Recur:Upper|Recur:Upper|BP~0_combout\ & (\B[27]~input_o\ $ (\A[27]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[27]~input_o\,
	datab => \Mid|BLAN|ForGenerate:29:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|BP~0_combout\,
	datac => \Mid|BLAN|ForGenerate:26:ColumnBlock|Recur:Upper|Recur:Upper|BP~0_combout\,
	datad => \A[27]~input_o\,
	combout => \Mid|BLAN|ForGenerate:39:ColumnBlock|Recur:Upper|Recur:Lower|Recur:Upper|BP~2_combout\);

-- Location: LCCOMB_X87_Y50_N0
\Mid|BLAN|ForGenerate:39:ColumnBlock|Recur:Upper|Recur:Lower|bG~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|BLAN|ForGenerate:39:ColumnBlock|Recur:Upper|Recur:Lower|bG~0_combout\ = (\Mid|OC[27]~111_combout\ & ((\Mid|BLAN|ForGenerate:21:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\ & ((\A[22]~input_o\) # (\B[22]~input_o\))) # 
-- (!\Mid|BLAN|ForGenerate:21:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\ & (\A[22]~input_o\ & \B[22]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mid|BLAN|ForGenerate:21:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\,
	datab => \A[22]~input_o\,
	datac => \Mid|OC[27]~111_combout\,
	datad => \B[22]~input_o\,
	combout => \Mid|BLAN|ForGenerate:39:ColumnBlock|Recur:Upper|Recur:Lower|bG~0_combout\);

-- Location: LCCOMB_X87_Y50_N10
\Mid|BLAN|ForGenerate:39:ColumnBlock|Recur:Upper|Recur:Lower|bG~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|BLAN|ForGenerate:39:ColumnBlock|Recur:Upper|Recur:Lower|bG~1_combout\ = (\Mid|BLAN|ForGenerate:39:ColumnBlock|Recur:Upper|Recur:Lower|Recur:Upper|BP~2_combout\ & 
-- ((\Mid|BLAN|ForGenerate:24:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\) # (\Mid|BLAN|ForGenerate:39:ColumnBlock|Recur:Upper|Recur:Lower|bG~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mid|BLAN|ForGenerate:39:ColumnBlock|Recur:Upper|Recur:Lower|Recur:Upper|BP~2_combout\,
	datac => \Mid|BLAN|ForGenerate:24:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\,
	datad => \Mid|BLAN|ForGenerate:39:ColumnBlock|Recur:Upper|Recur:Lower|bG~0_combout\,
	combout => \Mid|BLAN|ForGenerate:39:ColumnBlock|Recur:Upper|Recur:Lower|bG~1_combout\);

-- Location: LCCOMB_X87_Y50_N4
\Mid|BLAN|ForGenerate:39:ColumnBlock|Recur:Upper|Recur:Lower|bG~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|BLAN|ForGenerate:39:ColumnBlock|Recur:Upper|Recur:Lower|bG~2_combout\ = (\Mid|BLAN|ForGenerate:29:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|BP~0_combout\ & ((\B[27]~input_o\ & 
-- ((\Mid|BLAN|ForGenerate:26:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\) # (\A[27]~input_o\))) # (!\B[27]~input_o\ & (\Mid|BLAN|ForGenerate:26:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\ & 
-- \A[27]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[27]~input_o\,
	datab => \Mid|BLAN|ForGenerate:29:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|BP~0_combout\,
	datac => \Mid|BLAN|ForGenerate:26:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\,
	datad => \A[27]~input_o\,
	combout => \Mid|BLAN|ForGenerate:39:ColumnBlock|Recur:Upper|Recur:Lower|bG~2_combout\);

-- Location: LCCOMB_X87_Y50_N6
\Mid|OC[40]~194\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|OC[40]~194_combout\ = (\Mid|BLAN|ForGenerate:36:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Lower|Recur:Upper|BP~2_combout\ & ((\Mid|BLAN|ForGenerate:29:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\) # 
-- ((\Mid|BLAN|ForGenerate:39:ColumnBlock|Recur:Upper|Recur:Lower|bG~1_combout\) # (\Mid|BLAN|ForGenerate:39:ColumnBlock|Recur:Upper|Recur:Lower|bG~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mid|BLAN|ForGenerate:29:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\,
	datab => \Mid|BLAN|ForGenerate:39:ColumnBlock|Recur:Upper|Recur:Lower|bG~1_combout\,
	datac => \Mid|BLAN|ForGenerate:39:ColumnBlock|Recur:Upper|Recur:Lower|bG~2_combout\,
	datad => \Mid|BLAN|ForGenerate:36:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Lower|Recur:Upper|BP~2_combout\,
	combout => \Mid|OC[40]~194_combout\);

-- Location: LCCOMB_X87_Y50_N8
\Mid|OC[41]~195\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|OC[41]~195_combout\ = (\Mid|BLAN|ForGenerate:34:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|BP~0_combout\ & (\Mid|BLAN|ForGenerate:51:ColumnBlock|Recur:Upper|Recur:Lower|Recur:Upper|Recur:Upper|BP~0_combout\ & 
-- ((\Mid|BLAN|ForGenerate:31:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\) # (\Mid|OC[40]~194_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mid|BLAN|ForGenerate:31:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\,
	datab => \Mid|BLAN|ForGenerate:34:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|BP~0_combout\,
	datac => \Mid|BLAN|ForGenerate:51:ColumnBlock|Recur:Upper|Recur:Lower|Recur:Upper|Recur:Upper|BP~0_combout\,
	datad => \Mid|OC[40]~194_combout\,
	combout => \Mid|OC[41]~195_combout\);

-- Location: LCCOMB_X83_Y51_N24
\Bot|S[40]~103\ : cycloneive_lcell_comb
-- Equation(s):
-- \Bot|S[40]~103_combout\ = (\Mid|BLAN|ForGenerate:36:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\) # ((\Mid|BLAN|ForGenerate:51:ColumnBlock|Recur:Upper|Recur:Lower|Recur:Upper|Recur:Upper|BP~0_combout\ & 
-- !\Mid|OC[52]~164_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mid|BLAN|ForGenerate:51:ColumnBlock|Recur:Upper|Recur:Lower|Recur:Upper|Recur:Upper|BP~0_combout\,
	datac => \Mid|OC[52]~164_combout\,
	datad => \Mid|BLAN|ForGenerate:36:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\,
	combout => \Bot|S[40]~103_combout\);

-- Location: LCCOMB_X91_Y44_N14
\Mid|BLAN|ForGenerate:19:ColumnBlock|Recur:Upper|Recur:Upper|bG~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|BLAN|ForGenerate:19:ColumnBlock|Recur:Upper|Recur:Upper|bG~2_combout\ = (\Mid|BLAN|ForGenerate:16:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\ & 
-- (\Mid|BLAN|ForGenerate:19:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\ & (\A[17]~input_o\ $ (\B[17]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[17]~input_o\,
	datab => \Mid|BLAN|ForGenerate:16:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\,
	datac => \B[17]~input_o\,
	datad => \Mid|BLAN|ForGenerate:19:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\,
	combout => \Mid|BLAN|ForGenerate:19:ColumnBlock|Recur:Upper|Recur:Upper|bG~2_combout\);

-- Location: LCCOMB_X95_Y43_N18
\Mid|OC[41]~190\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|OC[41]~190_combout\ = (\Mid|BLAN|ForGenerate:19:ColumnBlock|Recur:Upper|Recur:Upper|bG~2_combout\) # (((\Mid|BLAN|ForGenerate:19:ColumnBlock|Recur:Upper|BP~2_combout\ & \Mid|BLAN|ForGenerate:19:ColumnBlock|Recur:Upper|Recur:Lower|bG~combout\)) # 
-- (!\Mid|OC[23]~102_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101110111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mid|BLAN|ForGenerate:19:ColumnBlock|Recur:Upper|Recur:Upper|bG~2_combout\,
	datab => \Mid|OC[23]~102_combout\,
	datac => \Mid|BLAN|ForGenerate:19:ColumnBlock|Recur:Upper|BP~2_combout\,
	datad => \Mid|BLAN|ForGenerate:19:ColumnBlock|Recur:Upper|Recur:Lower|bG~combout\,
	combout => \Mid|OC[41]~190_combout\);

-- Location: LCCOMB_X95_Y43_N28
\Mid|OC[41]~191\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|OC[41]~191_combout\ = (\Mid|OC[41]~190_combout\) # ((\Mid|BLAN|ForGenerate:19:ColumnBlock|Recur:Upper|BP~4_combout\ & ((\Mid|OC~89_combout\) # (\Mid|BLAN|ForGenerate:19:ColumnBlock|Recur:Lower|bG~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mid|OC~89_combout\,
	datab => \Mid|OC[41]~190_combout\,
	datac => \Mid|BLAN|ForGenerate:19:ColumnBlock|Recur:Lower|bG~2_combout\,
	datad => \Mid|BLAN|ForGenerate:19:ColumnBlock|Recur:Upper|BP~4_combout\,
	combout => \Mid|OC[41]~191_combout\);

-- Location: LCCOMB_X87_Y50_N30
\Mid|OC[41]~192\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|OC[41]~192_combout\ = (\Mid|BLAN|ForGenerate:51:ColumnBlock|Recur:Upper|Recur:Lower|Recur:Upper|Recur:Upper|BP~0_combout\ & (\Mid|BLAN|ForGenerate:34:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|BP~0_combout\ & 
-- (\Mid|BLAN|ForGenerate:39:ColumnBlock|Recur:Upper|Recur:Lower|Recur:Upper|BP~2_combout\ & \Mid|BLAN|ForGenerate:36:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Lower|Recur:Upper|BP~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mid|BLAN|ForGenerate:51:ColumnBlock|Recur:Upper|Recur:Lower|Recur:Upper|Recur:Upper|BP~0_combout\,
	datab => \Mid|BLAN|ForGenerate:34:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|BP~0_combout\,
	datac => \Mid|BLAN|ForGenerate:39:ColumnBlock|Recur:Upper|Recur:Lower|Recur:Upper|BP~2_combout\,
	datad => \Mid|BLAN|ForGenerate:36:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Lower|Recur:Upper|BP~2_combout\,
	combout => \Mid|OC[41]~192_combout\);

-- Location: LCCOMB_X83_Y49_N2
\Mid|OC[41]~193\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|OC[41]~193_combout\ = (\Mid|BLAN|ForGenerate:24:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|BP~0_combout\ & (\Top|P\(20) & (\Mid|OC[41]~191_combout\ & \Mid|OC[41]~192_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mid|BLAN|ForGenerate:24:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|BP~0_combout\,
	datab => \Top|P\(20),
	datac => \Mid|OC[41]~191_combout\,
	datad => \Mid|OC[41]~192_combout\,
	combout => \Mid|OC[41]~193_combout\);

-- Location: LCCOMB_X83_Y51_N18
\Bot|S[40]~104\ : cycloneive_lcell_comb
-- Equation(s):
-- \Bot|S[40]~104_combout\ = (\Mid|OC[41]~195_combout\) # ((\Bot|S[40]~103_combout\) # (\Mid|OC[41]~193_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mid|OC[41]~195_combout\,
	datac => \Bot|S[40]~103_combout\,
	datad => \Mid|OC[41]~193_combout\,
	combout => \Bot|S[40]~104_combout\);

-- Location: LCCOMB_X81_Y51_N16
\Bot|S[40]~105\ : cycloneive_lcell_comb
-- Equation(s):
-- \Bot|S[40]~105_combout\ = \Top|P\(40) $ ((((\Mid|BLAN|ForGenerate:39:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|BP~2_combout\ & \Bot|S[40]~104_combout\)) # (!\Mid|OC[40]~189_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101111000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mid|BLAN|ForGenerate:39:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|BP~2_combout\,
	datab => \Mid|OC[40]~189_combout\,
	datac => \Top|P\(40),
	datad => \Bot|S[40]~104_combout\,
	combout => \Bot|S[40]~105_combout\);

-- Location: LCCOMB_X83_Y51_N28
\Bot|S[41]~106\ : cycloneive_lcell_comb
-- Equation(s):
-- \Bot|S[41]~106_combout\ = (\Mid|OC[41]~195_combout\) # ((\Mid|OC[41]~193_combout\) # ((\Mid|BLAN|ForGenerate:51:ColumnBlock|Recur:Upper|Recur:Lower|Recur:Upper|Recur:Upper|BP~0_combout\ & !\Mid|OC[52]~164_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mid|BLAN|ForGenerate:51:ColumnBlock|Recur:Upper|Recur:Lower|Recur:Upper|Recur:Upper|BP~0_combout\,
	datab => \Mid|OC[41]~195_combout\,
	datac => \Mid|OC[52]~164_combout\,
	datad => \Mid|OC[41]~193_combout\,
	combout => \Bot|S[41]~106_combout\);

-- Location: LCCOMB_X77_Y53_N8
\Mid|BLAN|ForGenerate:59:ColumnBlock|Recur:Upper|Recur:Lower|Recur:Upper|BP~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|BLAN|ForGenerate:59:ColumnBlock|Recur:Upper|Recur:Lower|Recur:Upper|BP~0_combout\ = (\Top|P\(39) & (\Mid|BLAN|ForGenerate:38:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|BP~0_combout\ & (\A[40]~input_o\ $ 
-- (\B[40]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[40]~input_o\,
	datab => \Top|P\(39),
	datac => \Mid|BLAN|ForGenerate:38:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|BP~0_combout\,
	datad => \B[40]~input_o\,
	combout => \Mid|BLAN|ForGenerate:59:ColumnBlock|Recur:Upper|Recur:Lower|Recur:Upper|BP~0_combout\);

-- Location: LCCOMB_X77_Y53_N12
\Mid|OC[44]~196\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|OC[44]~196_combout\ = (\Top|P\(39) & (\Top|P\(40) & (\A[38]~input_o\ $ (\B[38]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[38]~input_o\,
	datab => \Top|P\(39),
	datac => \Top|P\(40),
	datad => \B[38]~input_o\,
	combout => \Mid|OC[44]~196_combout\);

-- Location: LCCOMB_X79_Y53_N8
\Mid|BLAN|ForGenerate:40:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|bG~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|BLAN|ForGenerate:40:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|bG~1_combout\ = (\Mid|OC[44]~196_combout\ & !\Mid|BLAN|ForGenerate:40:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mid|OC[44]~196_combout\,
	datad => \Mid|BLAN|ForGenerate:40:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\,
	combout => \Mid|BLAN|ForGenerate:40:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|bG~1_combout\);

-- Location: LCCOMB_X77_Y53_N18
\Mid|BLAN|ForGenerate:43:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|bG~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|BLAN|ForGenerate:43:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\ = (\A[38]~input_o\ & (\Top|P\(39) & (\Top|P\(40) & \B[38]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[38]~input_o\,
	datab => \Top|P\(39),
	datac => \Top|P\(40),
	datad => \B[38]~input_o\,
	combout => \Mid|BLAN|ForGenerate:43:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\);

-- Location: LCCOMB_X79_Y53_N26
\Bot|S[41]~107\ : cycloneive_lcell_comb
-- Equation(s):
-- \Bot|S[41]~107_combout\ = (\Mid|BLAN|ForGenerate:40:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|bG~1_combout\) # ((\Mid|BLAN|ForGenerate:43:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\) # ((\Bot|S[41]~106_combout\ & 
-- \Mid|BLAN|ForGenerate:59:ColumnBlock|Recur:Upper|Recur:Lower|Recur:Upper|BP~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Bot|S[41]~106_combout\,
	datab => \Mid|BLAN|ForGenerate:59:ColumnBlock|Recur:Upper|Recur:Lower|Recur:Upper|BP~0_combout\,
	datac => \Mid|BLAN|ForGenerate:40:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|bG~1_combout\,
	datad => \Mid|BLAN|ForGenerate:43:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\,
	combout => \Bot|S[41]~107_combout\);

-- Location: IOIBUF_X67_Y73_N8
\A[41]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(41),
	o => \A[41]~input_o\);

-- Location: LCCOMB_X80_Y51_N24
\Mid|BLAN|ForGenerate:40:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|BLAN|ForGenerate:40:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\ = (\A[40]~input_o\ & ((\B[40]~input_o\) # ((\B[39]~input_o\ & \A[39]~input_o\)))) # (!\A[40]~input_o\ & (\B[40]~input_o\ & (\B[39]~input_o\ & 
-- \A[39]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[40]~input_o\,
	datab => \B[40]~input_o\,
	datac => \B[39]~input_o\,
	datad => \A[39]~input_o\,
	combout => \Mid|BLAN|ForGenerate:40:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\);

-- Location: IOIBUF_X67_Y73_N22
\B[41]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(41),
	o => \B[41]~input_o\);

-- Location: LCCOMB_X79_Y53_N28
\Bot|S[41]~108\ : cycloneive_lcell_comb
-- Equation(s):
-- \Bot|S[41]~108_combout\ = \A[41]~input_o\ $ (\B[41]~input_o\ $ (((\Bot|S[41]~107_combout\) # (\Mid|BLAN|ForGenerate:40:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100100110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Bot|S[41]~107_combout\,
	datab => \A[41]~input_o\,
	datac => \Mid|BLAN|ForGenerate:40:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\,
	datad => \B[41]~input_o\,
	combout => \Bot|S[41]~108_combout\);

-- Location: LCCOMB_X77_Y53_N6
\Mid|OC[53]~197\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|OC[53]~197_combout\ = (\Top|P\(40) & (\Top|P\(39) & (\A[41]~input_o\ $ (\B[41]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Top|P\(40),
	datab => \A[41]~input_o\,
	datac => \B[41]~input_o\,
	datad => \Top|P\(39),
	combout => \Mid|OC[53]~197_combout\);

-- Location: LCCOMB_X83_Y49_N10
\Mid|OC[49]~402\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|OC[49]~402_combout\ = (\Mid|OC[53]~197_combout\ & (\Mid|BLAN|ForGenerate:38:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|BP~0_combout\ & (\A[36]~input_o\ $ (\B[36]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mid|OC[53]~197_combout\,
	datab => \A[36]~input_o\,
	datac => \Mid|BLAN|ForGenerate:38:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|BP~0_combout\,
	datad => \B[36]~input_o\,
	combout => \Mid|OC[49]~402_combout\);

-- Location: LCCOMB_X83_Y49_N24
\Mid|OC[42]~199\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|OC[42]~199_combout\ = (\Mid|OC[36]~165_combout\ & ((\A[28]~input_o\ & ((\Mid|BLAN|ForGenerate:27:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\) # (\B[28]~input_o\))) # (!\A[28]~input_o\ & 
-- (\Mid|BLAN|ForGenerate:27:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\ & \B[28]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[28]~input_o\,
	datab => \Mid|BLAN|ForGenerate:27:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\,
	datac => \B[28]~input_o\,
	datad => \Mid|OC[36]~165_combout\,
	combout => \Mid|OC[42]~199_combout\);

-- Location: LCCOMB_X90_Y47_N10
\Mid|OC[42]~200\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|OC[42]~200_combout\ = (\Mid|BLAN|ForGenerate:34:ColumnBlock|Recur:Upper|Recur:Lower|Recur:Upper|Recur:Upper|bG~0_combout\) # ((\Mid|BLAN|ForGenerate:25:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\) # ((\Top|P\(25) & 
-- \Mid|BLAN|ForGenerate:24:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mid|BLAN|ForGenerate:34:ColumnBlock|Recur:Upper|Recur:Lower|Recur:Upper|Recur:Upper|bG~0_combout\,
	datab => \Top|P\(25),
	datac => \Mid|BLAN|ForGenerate:25:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\,
	datad => \Mid|BLAN|ForGenerate:24:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\,
	combout => \Mid|OC[42]~200_combout\);

-- Location: LCCOMB_X90_Y47_N20
\Mid|OC[42]~201\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|OC[42]~201_combout\ = (\Mid|OC[42]~200_combout\) # ((\Mid|OC\(21) & (\Mid|BLAN|ForGenerate:24:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|BP~0_combout\ & \Top|P\(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mid|OC[42]~200_combout\,
	datab => \Mid|OC\(21),
	datac => \Mid|BLAN|ForGenerate:24:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|BP~0_combout\,
	datad => \Top|P\(25),
	combout => \Mid|OC[42]~201_combout\);

-- Location: LCCOMB_X83_Y49_N18
\Bot|S[42]~109\ : cycloneive_lcell_comb
-- Equation(s):
-- \Bot|S[42]~109_combout\ = (\Mid|OC[42]~201_combout\ & (\Mid|OC[30]~128_combout\ & (\Top|P\(28) & \Mid|OC[36]~165_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mid|OC[42]~201_combout\,
	datab => \Mid|OC[30]~128_combout\,
	datac => \Top|P\(28),
	datad => \Mid|OC[36]~165_combout\,
	combout => \Bot|S[42]~109_combout\);

-- Location: LCCOMB_X83_Y49_N12
\Bot|S[42]~110\ : cycloneive_lcell_comb
-- Equation(s):
-- \Bot|S[42]~110_combout\ = (\Mid|OC[49]~402_combout\ & ((\Mid|OC[42]~199_combout\) # ((\Bot|S[42]~109_combout\) # (!\Mid|OC[36]~172_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mid|OC[49]~402_combout\,
	datab => \Mid|OC[42]~199_combout\,
	datac => \Mid|OC[36]~172_combout\,
	datad => \Bot|S[42]~109_combout\,
	combout => \Bot|S[42]~110_combout\);

-- Location: IOIBUF_X35_Y73_N22
\B[42]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(42),
	o => \B[42]~input_o\);

-- Location: IOIBUF_X42_Y73_N1
\A[42]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(42),
	o => \A[42]~input_o\);

-- Location: LCCOMB_X77_Y53_N10
\Mid|BLAN|ForGenerate:41:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|BP\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|BLAN|ForGenerate:41:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|BP~combout\ = (\B[40]~input_o\ & (!\A[40]~input_o\ & (\A[41]~input_o\ $ (\B[41]~input_o\)))) # (!\B[40]~input_o\ & (\A[40]~input_o\ & (\A[41]~input_o\ $ 
-- (\B[41]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[40]~input_o\,
	datab => \A[41]~input_o\,
	datac => \B[41]~input_o\,
	datad => \A[40]~input_o\,
	combout => \Mid|BLAN|ForGenerate:41:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|BP~combout\);

-- Location: LCCOMB_X77_Y53_N4
\Mid|BLAN|ForGenerate:41:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|BLAN|ForGenerate:41:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\ = (\Mid|BLAN|ForGenerate:41:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|BP~combout\ & (\B[39]~input_o\ & \A[39]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mid|BLAN|ForGenerate:41:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|BP~combout\,
	datab => \B[39]~input_o\,
	datad => \A[39]~input_o\,
	combout => \Mid|BLAN|ForGenerate:41:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\);

-- Location: LCCOMB_X77_Y53_N24
\Mid|BLAN|ForGenerate:41:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|BLAN|ForGenerate:41:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\ = (\A[41]~input_o\ & ((\B[41]~input_o\) # ((\B[40]~input_o\ & \A[40]~input_o\)))) # (!\A[41]~input_o\ & (\B[40]~input_o\ & (\B[41]~input_o\ & 
-- \A[40]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[40]~input_o\,
	datab => \A[41]~input_o\,
	datac => \B[41]~input_o\,
	datad => \A[40]~input_o\,
	combout => \Mid|BLAN|ForGenerate:41:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\);

-- Location: LCCOMB_X83_Y49_N20
\Mid|BLAN|ForGenerate:41:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|bG~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|BLAN|ForGenerate:41:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\ = (!\Mid|BLAN|ForGenerate:38:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\ & (((!\B[36]~input_o\) # 
-- (!\Mid|BLAN|ForGenerate:38:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|BP~0_combout\)) # (!\A[36]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mid|BLAN|ForGenerate:38:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\,
	datab => \A[36]~input_o\,
	datac => \Mid|BLAN|ForGenerate:38:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|BP~0_combout\,
	datad => \B[36]~input_o\,
	combout => \Mid|BLAN|ForGenerate:41:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\);

-- Location: LCCOMB_X83_Y49_N22
\Mid|OC[42]~198\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|OC[42]~198_combout\ = (!\Mid|BLAN|ForGenerate:41:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\ & (!\Mid|BLAN|ForGenerate:41:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\ & 
-- ((\Mid|BLAN|ForGenerate:41:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\) # (!\Mid|OC[53]~197_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mid|BLAN|ForGenerate:41:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\,
	datab => \Mid|BLAN|ForGenerate:41:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\,
	datac => \Mid|OC[53]~197_combout\,
	datad => \Mid|BLAN|ForGenerate:41:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\,
	combout => \Mid|OC[42]~198_combout\);

-- Location: LCCOMB_X79_Y52_N0
\Bot|S[42]~111\ : cycloneive_lcell_comb
-- Equation(s):
-- \Bot|S[42]~111_combout\ = \B[42]~input_o\ $ (\A[42]~input_o\ $ (((\Bot|S[42]~110_combout\) # (!\Mid|OC[42]~198_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011011000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Bot|S[42]~110_combout\,
	datab => \B[42]~input_o\,
	datac => \A[42]~input_o\,
	datad => \Mid|OC[42]~198_combout\,
	combout => \Bot|S[42]~111_combout\);

-- Location: IOIBUF_X33_Y73_N8
\A[43]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(43),
	o => \A[43]~input_o\);

-- Location: LCCOMB_X79_Y52_N18
\Mid|BLAN|ForGenerate:42:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|BP~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|BLAN|ForGenerate:42:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|BP~0_combout\ = (\A[41]~input_o\ & (!\B[41]~input_o\ & (\A[42]~input_o\ $ (\B[42]~input_o\)))) # (!\A[41]~input_o\ & (\B[41]~input_o\ & (\A[42]~input_o\ $ 
-- (\B[42]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[41]~input_o\,
	datab => \B[41]~input_o\,
	datac => \A[42]~input_o\,
	datad => \B[42]~input_o\,
	combout => \Mid|BLAN|ForGenerate:42:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|BP~0_combout\);

-- Location: LCCOMB_X81_Y51_N26
\Mid|OC[43]~207\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|OC[43]~207_combout\ = (\Top|P\(39) & (\Mid|BLAN|ForGenerate:42:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|BP~0_combout\ & 
-- (\Mid|BLAN|ForGenerate:38:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|BP~0_combout\ & \Top|P\(40))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Top|P\(39),
	datab => \Mid|BLAN|ForGenerate:42:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|BP~0_combout\,
	datac => \Mid|BLAN|ForGenerate:38:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|BP~0_combout\,
	datad => \Top|P\(40),
	combout => \Mid|OC[43]~207_combout\);

-- Location: LCCOMB_X81_Y51_N24
\Mid|OC[55]~206\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|OC[55]~206_combout\ = ((\Mid|BLAN|ForGenerate:36:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|BP~2_combout\ & \Mid|BLAN|ForGenerate:33:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\)) # 
-- (!\Mid|OC[50]~175_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mid|BLAN|ForGenerate:36:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|BP~2_combout\,
	datac => \Mid|BLAN|ForGenerate:33:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\,
	datad => \Mid|OC[50]~175_combout\,
	combout => \Mid|OC[55]~206_combout\);

-- Location: LCCOMB_X80_Y52_N20
\Mid|BLAN|ForGenerate:42:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|bG~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|BLAN|ForGenerate:42:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|bG~3_combout\ = (\Mid|BLAN|ForGenerate:42:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|BP~0_combout\ & (\B[40]~input_o\ $ (\A[40]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[40]~input_o\,
	datac => \A[40]~input_o\,
	datad => \Mid|BLAN|ForGenerate:42:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|BP~0_combout\,
	combout => \Mid|BLAN|ForGenerate:42:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|bG~3_combout\);

-- Location: LCCOMB_X79_Y52_N20
\Mid|BLAN|ForGenerate:42:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|BLAN|ForGenerate:42:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\ = (\A[42]~input_o\ & ((\B[42]~input_o\) # ((\A[41]~input_o\ & \B[41]~input_o\)))) # (!\A[42]~input_o\ & (\A[41]~input_o\ & (\B[41]~input_o\ & 
-- \B[42]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[41]~input_o\,
	datab => \B[41]~input_o\,
	datac => \A[42]~input_o\,
	datad => \B[42]~input_o\,
	combout => \Mid|BLAN|ForGenerate:42:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\);

-- Location: LCCOMB_X80_Y52_N8
\Mid|OC[54]~208\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|OC[54]~208_combout\ = (!\Mid|BLAN|ForGenerate:42:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\ & (((!\A[40]~input_o\) # 
-- (!\Mid|BLAN|ForGenerate:42:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|BP~0_combout\)) # (!\B[40]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[40]~input_o\,
	datab => \Mid|BLAN|ForGenerate:42:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|BP~0_combout\,
	datac => \A[40]~input_o\,
	datad => \Mid|BLAN|ForGenerate:42:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\,
	combout => \Mid|OC[54]~208_combout\);

-- Location: LCCOMB_X81_Y51_N4
\Mid|OC[43]~209\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|OC[43]~209_combout\ = (\Mid|OC[54]~208_combout\ & ((\Mid|OC[40]~189_combout\) # (!\Mid|BLAN|ForGenerate:42:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|bG~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mid|BLAN|ForGenerate:42:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|bG~3_combout\,
	datac => \Mid|OC[54]~208_combout\,
	datad => \Mid|OC[40]~189_combout\,
	combout => \Mid|OC[43]~209_combout\);

-- Location: LCCOMB_X81_Y51_N10
\Mid|OC[43]~202\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|OC[43]~202_combout\ = (\Mid|BLAN|ForGenerate:42:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|bG~3_combout\ & (\Mid|OC[60]~400_combout\ & 
-- (\Mid|BLAN|ForGenerate:38:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|BP~0_combout\ & \Top|P\(39))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mid|BLAN|ForGenerate:42:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|bG~3_combout\,
	datab => \Mid|OC[60]~400_combout\,
	datac => \Mid|BLAN|ForGenerate:38:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|BP~0_combout\,
	datad => \Top|P\(39),
	combout => \Mid|OC[43]~202_combout\);

-- Location: LCCOMB_X81_Y51_N6
\Mid|OC[43]~205\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|OC[43]~205_combout\ = (\Mid|OC[43]~202_combout\ & (((\Mid|BLAN|ForGenerate:28:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\ & 
-- \Mid|BLAN|ForGenerate:36:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Lower|Recur:Upper|BP~3_combout\)) # (!\Mid|OC[43]~174_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mid|OC[43]~202_combout\,
	datab => \Mid|BLAN|ForGenerate:28:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\,
	datac => \Mid|BLAN|ForGenerate:36:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Lower|Recur:Upper|BP~3_combout\,
	datad => \Mid|OC[43]~174_combout\,
	combout => \Mid|OC[43]~205_combout\);

-- Location: LCCOMB_X81_Y51_N22
\Mid|OC[43]~210\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|OC[43]~210_combout\ = ((\Mid|OC[43]~205_combout\) # ((\Mid|OC[43]~207_combout\ & \Mid|OC[55]~206_combout\))) # (!\Mid|OC[43]~209_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mid|OC[43]~207_combout\,
	datab => \Mid|OC[55]~206_combout\,
	datac => \Mid|OC[43]~209_combout\,
	datad => \Mid|OC[43]~205_combout\,
	combout => \Mid|OC[43]~210_combout\);

-- Location: LCCOMB_X81_Y51_N28
\Mid|OC[43]~203\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|OC[43]~203_combout\ = (\Mid|BLAN|ForGenerate:28:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|BP~0_combout\ & (\Mid|BLAN|ForGenerate:36:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Lower|Recur:Upper|BP~3_combout\ & 
-- \Mid|OC[43]~202_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mid|BLAN|ForGenerate:28:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|BP~0_combout\,
	datac => \Mid|BLAN|ForGenerate:36:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Lower|Recur:Upper|BP~3_combout\,
	datad => \Mid|OC[43]~202_combout\,
	combout => \Mid|OC[43]~203_combout\);

-- Location: LCCOMB_X88_Y51_N4
\Mid|OC[43]~204\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|OC[43]~204_combout\ = (\Mid|OC[43]~203_combout\ & ((\Mid|OC[42]~201_combout\ & ((\A[26]~input_o\) # (\B[26]~input_o\))) # (!\Mid|OC[42]~201_combout\ & (\A[26]~input_o\ & \B[26]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mid|OC[42]~201_combout\,
	datab => \Mid|OC[43]~203_combout\,
	datac => \A[26]~input_o\,
	datad => \B[26]~input_o\,
	combout => \Mid|OC[43]~204_combout\);

-- Location: IOIBUF_X79_Y0_N22
\B[43]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(43),
	o => \B[43]~input_o\);

-- Location: LCCOMB_X79_Y52_N22
\Bot|S[43]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Bot|S\(43) = \A[43]~input_o\ $ (\B[43]~input_o\ $ (((\Mid|OC[43]~210_combout\) # (\Mid|OC[43]~204_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100101010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[43]~input_o\,
	datab => \Mid|OC[43]~210_combout\,
	datac => \Mid|OC[43]~204_combout\,
	datad => \B[43]~input_o\,
	combout => \Bot|S\(43));

-- Location: IOIBUF_X67_Y73_N15
\B[44]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(44),
	o => \B[44]~input_o\);

-- Location: IOIBUF_X58_Y73_N15
\A[44]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(44),
	o => \A[44]~input_o\);

-- Location: LCCOMB_X79_Y52_N24
\Mid|BLAN|ForGenerate:43:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|BP~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|BLAN|ForGenerate:43:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|BP~0_combout\ = (\B[43]~input_o\ & (!\A[43]~input_o\ & (\A[42]~input_o\ $ (\B[42]~input_o\)))) # (!\B[43]~input_o\ & (\A[43]~input_o\ & (\A[42]~input_o\ $ 
-- (\B[42]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[43]~input_o\,
	datab => \A[42]~input_o\,
	datac => \A[43]~input_o\,
	datad => \B[42]~input_o\,
	combout => \Mid|BLAN|ForGenerate:43:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|BP~0_combout\);

-- Location: LCCOMB_X79_Y52_N28
\Mid|BLAN|ForGenerate:43:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|BLAN|ForGenerate:43:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\ = (\B[43]~input_o\ & ((\A[43]~input_o\) # ((\A[42]~input_o\ & \B[42]~input_o\)))) # (!\B[43]~input_o\ & (\A[42]~input_o\ & (\A[43]~input_o\ & 
-- \B[42]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[43]~input_o\,
	datab => \A[42]~input_o\,
	datac => \A[43]~input_o\,
	datad => \B[42]~input_o\,
	combout => \Mid|BLAN|ForGenerate:43:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\);

-- Location: LCCOMB_X79_Y52_N6
\Mid|OC[55]~217\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|OC[55]~217_combout\ = (!\Mid|BLAN|ForGenerate:43:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\ & 
-- (((!\Mid|BLAN|ForGenerate:43:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|BP~0_combout\) # (!\B[41]~input_o\)) # (!\A[41]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[41]~input_o\,
	datab => \B[41]~input_o\,
	datac => \Mid|BLAN|ForGenerate:43:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|BP~0_combout\,
	datad => \Mid|BLAN|ForGenerate:43:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\,
	combout => \Mid|OC[55]~217_combout\);

-- Location: LCCOMB_X79_Y52_N10
\Mid|OC[44]~211\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|OC[44]~211_combout\ = (\Mid|BLAN|ForGenerate:43:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|BP~0_combout\ & (\A[41]~input_o\ $ (\B[41]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[41]~input_o\,
	datab => \B[41]~input_o\,
	datac => \Mid|BLAN|ForGenerate:43:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|BP~0_combout\,
	combout => \Mid|OC[44]~211_combout\);

-- Location: LCCOMB_X79_Y53_N14
\Mid|OC[44]~218\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|OC[44]~218_combout\ = (\Mid|OC[55]~217_combout\ & (((!\Mid|BLAN|ForGenerate:40:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\ & 
-- !\Mid|BLAN|ForGenerate:43:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\)) # (!\Mid|OC[44]~211_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mid|OC[55]~217_combout\,
	datab => \Mid|OC[44]~211_combout\,
	datac => \Mid|BLAN|ForGenerate:40:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\,
	datad => \Mid|BLAN|ForGenerate:43:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\,
	combout => \Mid|OC[44]~218_combout\);

-- Location: LCCOMB_X88_Y50_N10
\Mid|BLAN|ForGenerate:43:ColumnBlock|Recur:Upper|Recur:Lower|bG~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|BLAN|ForGenerate:43:ColumnBlock|Recur:Upper|Recur:Lower|bG~0_combout\ = (\B[24]~input_o\ & (\A[24]~input_o\ & (\Mid|BLAN|ForGenerate:32:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|BP~0_combout\ & 
-- \Mid|BLAN|ForGenerate:39:ColumnBlock|Recur:Upper|Recur:Lower|Recur:Upper|BP~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[24]~input_o\,
	datab => \A[24]~input_o\,
	datac => \Mid|BLAN|ForGenerate:32:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|BP~0_combout\,
	datad => \Mid|BLAN|ForGenerate:39:ColumnBlock|Recur:Upper|Recur:Lower|Recur:Upper|BP~2_combout\,
	combout => \Mid|BLAN|ForGenerate:43:ColumnBlock|Recur:Upper|Recur:Lower|bG~0_combout\);

-- Location: LCCOMB_X89_Y51_N16
\Mid|OC[44]~213\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|OC[44]~213_combout\ = (\Mid|BLAN|ForGenerate:26:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\ & ((\Top|P\(27)) # ((\Mid|BLAN|ForGenerate:27:ColumnBlock|Recur:Upper|Recur:Upper|bG~0_combout\ & 
-- \Mid|BLAN|ForGenerate:23:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\)))) # (!\Mid|BLAN|ForGenerate:26:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\ & 
-- (\Mid|BLAN|ForGenerate:27:ColumnBlock|Recur:Upper|Recur:Upper|bG~0_combout\ & (\Mid|BLAN|ForGenerate:23:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mid|BLAN|ForGenerate:26:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\,
	datab => \Mid|BLAN|ForGenerate:27:ColumnBlock|Recur:Upper|Recur:Upper|bG~0_combout\,
	datac => \Mid|BLAN|ForGenerate:23:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\,
	datad => \Top|P\(27),
	combout => \Mid|OC[44]~213_combout\);

-- Location: LCCOMB_X87_Y50_N18
\Mid|BLAN|ForGenerate:43:ColumnBlock|Recur:Upper|Recur:Lower|Recur:Upper|bG~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|BLAN|ForGenerate:43:ColumnBlock|Recur:Upper|Recur:Lower|Recur:Upper|bG~0_combout\ = (\Mid|BLAN|ForGenerate:29:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\) # ((\B[27]~input_o\ & 
-- (\Mid|BLAN|ForGenerate:29:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|BP~0_combout\ & \A[27]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[27]~input_o\,
	datab => \Mid|BLAN|ForGenerate:29:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|BP~0_combout\,
	datac => \Mid|BLAN|ForGenerate:29:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\,
	datad => \A[27]~input_o\,
	combout => \Mid|BLAN|ForGenerate:43:ColumnBlock|Recur:Upper|Recur:Lower|Recur:Upper|bG~0_combout\);

-- Location: LCCOMB_X83_Y50_N24
\Mid|OC[44]~212\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|OC[44]~212_combout\ = (!\Mid|BLAN|ForGenerate:32:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~1_combout\ & (!\Mid|BLAN|ForGenerate:32:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\ & 
-- ((!\Mid|BLAN|ForGenerate:32:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|BP~0_combout\) # (!\Mid|BLAN|ForGenerate:43:ColumnBlock|Recur:Upper|Recur:Lower|Recur:Upper|bG~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mid|BLAN|ForGenerate:32:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~1_combout\,
	datab => \Mid|BLAN|ForGenerate:43:ColumnBlock|Recur:Upper|Recur:Lower|Recur:Upper|bG~0_combout\,
	datac => \Mid|BLAN|ForGenerate:32:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\,
	datad => \Mid|BLAN|ForGenerate:32:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|BP~0_combout\,
	combout => \Mid|OC[44]~212_combout\);

-- Location: LCCOMB_X88_Y50_N12
\Mid|OC[44]~214\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|OC[44]~214_combout\ = (!\Mid|BLAN|ForGenerate:43:ColumnBlock|Recur:Upper|Recur:Lower|bG~0_combout\ & (\Mid|OC[44]~212_combout\ & ((!\Mid|OC[44]~213_combout\) # (!\Mid|OC[38]~158_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mid|BLAN|ForGenerate:43:ColumnBlock|Recur:Upper|Recur:Lower|bG~0_combout\,
	datab => \Mid|OC[38]~158_combout\,
	datac => \Mid|OC[44]~213_combout\,
	datad => \Mid|OC[44]~212_combout\,
	combout => \Mid|OC[44]~214_combout\);

-- Location: LCCOMB_X91_Y49_N24
\Mid|OC[44]~215\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|OC[44]~215_combout\ = ((\Mid|OC[33]~160_combout\ & (\Mid|BLAN|ForGenerate:23:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\ & \Mid|OC[22]~101_combout\))) # (!\Mid|OC[44]~214_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mid|OC[33]~160_combout\,
	datab => \Mid|BLAN|ForGenerate:23:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\,
	datac => \Mid|OC[44]~214_combout\,
	datad => \Mid|OC[22]~101_combout\,
	combout => \Mid|OC[44]~215_combout\);

-- Location: LCCOMB_X80_Y53_N14
\Mid|BLAN|ForGenerate:50:ColumnBlock|Recur:Upper|Recur:Lower|Recur:Upper|Recur:Upper|BP~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|BLAN|ForGenerate:50:ColumnBlock|Recur:Upper|Recur:Lower|Recur:Upper|Recur:Upper|BP~0_combout\ = (\Top|P\(34) & (\Mid|BLAN|ForGenerate:51:ColumnBlock|Recur:Upper|Recur:Lower|Recur:Upper|Recur:Upper|BP~0_combout\ & (\B[37]~input_o\ $ 
-- (\A[37]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Top|P\(34),
	datab => \B[37]~input_o\,
	datac => \Mid|BLAN|ForGenerate:51:ColumnBlock|Recur:Upper|Recur:Lower|Recur:Upper|Recur:Upper|BP~0_combout\,
	datad => \A[37]~input_o\,
	combout => \Mid|BLAN|ForGenerate:50:ColumnBlock|Recur:Upper|Recur:Lower|Recur:Upper|Recur:Upper|BP~0_combout\);

-- Location: LCCOMB_X80_Y53_N24
\Mid|OC[44]~216\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|OC[44]~216_combout\ = ((\Mid|OC[44]~215_combout\ & (\Top|P\(33) & \Mid|BLAN|ForGenerate:50:ColumnBlock|Recur:Upper|Recur:Lower|Recur:Upper|Recur:Upper|BP~0_combout\))) # (!\Mid|OC[38]~177_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mid|OC[38]~177_combout\,
	datab => \Mid|OC[44]~215_combout\,
	datac => \Top|P\(33),
	datad => \Mid|BLAN|ForGenerate:50:ColumnBlock|Recur:Upper|Recur:Lower|Recur:Upper|Recur:Upper|BP~0_combout\,
	combout => \Mid|OC[44]~216_combout\);

-- Location: LCCOMB_X79_Y53_N0
\Mid|OC[44]~219\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|OC[44]~219_combout\ = ((\Mid|OC[44]~196_combout\ & (\Mid|OC[44]~211_combout\ & \Mid|OC[44]~216_combout\))) # (!\Mid|OC[44]~218_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mid|OC[44]~196_combout\,
	datab => \Mid|OC[44]~218_combout\,
	datac => \Mid|OC[44]~211_combout\,
	datad => \Mid|OC[44]~216_combout\,
	combout => \Mid|OC[44]~219_combout\);

-- Location: LCCOMB_X76_Y54_N0
\Bot|S[44]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Bot|S\(44) = \B[44]~input_o\ $ (\A[44]~input_o\ $ (\Mid|OC[44]~219_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[44]~input_o\,
	datac => \A[44]~input_o\,
	datad => \Mid|OC[44]~219_combout\,
	combout => \Bot|S\(44));

-- Location: IOIBUF_X52_Y73_N15
\A[45]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(45),
	o => \A[45]~input_o\);

-- Location: IOIBUF_X69_Y73_N15
\B[45]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(45),
	o => \B[45]~input_o\);

-- Location: LCCOMB_X76_Y54_N18
\Top|P[45]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Top|P\(45) = \A[45]~input_o\ $ (\B[45]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A[45]~input_o\,
	datad => \B[45]~input_o\,
	combout => \Top|P\(45));

-- Location: LCCOMB_X76_Y53_N28
\Mid|OC[45]~403\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|OC[45]~403_combout\ = (\Mid|OC[53]~197_combout\ & (\Mid|BLAN|ForGenerate:43:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|BP~0_combout\ & (\B[44]~input_o\ $ (\A[44]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[44]~input_o\,
	datab => \Mid|OC[53]~197_combout\,
	datac => \Mid|BLAN|ForGenerate:43:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|BP~0_combout\,
	datad => \A[44]~input_o\,
	combout => \Mid|OC[45]~403_combout\);

-- Location: LCCOMB_X83_Y50_N2
\Mid|BLAN|ForGenerate:35:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|BLAN|ForGenerate:35:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\ = (\B[33]~input_o\ & (\A[33]~input_o\ & \Mid|BLAN|ForGenerate:35:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|BP~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[33]~input_o\,
	datab => \A[33]~input_o\,
	datac => \Mid|BLAN|ForGenerate:35:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|BP~0_combout\,
	combout => \Mid|BLAN|ForGenerate:35:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\);

-- Location: LCCOMB_X83_Y50_N4
\Mid|OC[45]~222\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|OC[45]~222_combout\ = ((\Mid|BLAN|ForGenerate:38:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|BP~0_combout\ & ((\Mid|BLAN|ForGenerate:35:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\) # 
-- (\Mid|BLAN|ForGenerate:35:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\)))) # (!\Mid|BLAN|ForGenerate:41:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mid|BLAN|ForGenerate:41:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\,
	datab => \Mid|BLAN|ForGenerate:38:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|BP~0_combout\,
	datac => \Mid|BLAN|ForGenerate:35:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\,
	datad => \Mid|BLAN|ForGenerate:35:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\,
	combout => \Mid|OC[45]~222_combout\);

-- Location: LCCOMB_X83_Y50_N22
\Mid|OC[45]~223\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|OC[45]~223_combout\ = (\Mid|OC[45]~222_combout\) # ((\Mid|OC[44]~215_combout\ & (\Mid|BLAN|ForGenerate:35:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|BP~0_combout\ & 
-- \Mid|BLAN|ForGenerate:38:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|BP~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mid|OC[44]~215_combout\,
	datab => \Mid|OC[45]~222_combout\,
	datac => \Mid|BLAN|ForGenerate:35:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|BP~0_combout\,
	datad => \Mid|BLAN|ForGenerate:38:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|BP~0_combout\,
	combout => \Mid|OC[45]~223_combout\);

-- Location: LCCOMB_X76_Y53_N8
\Mid|OC[45]~220\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|OC[45]~220_combout\ = (\Mid|BLAN|ForGenerate:43:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|BP~0_combout\ & (\A[44]~input_o\ $ (\B[44]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[44]~input_o\,
	datab => \Mid|BLAN|ForGenerate:43:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|BP~0_combout\,
	datac => \B[44]~input_o\,
	combout => \Mid|OC[45]~220_combout\);

-- Location: LCCOMB_X79_Y52_N8
\Mid|BLAN|ForGenerate:44:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|BLAN|ForGenerate:44:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\ = (\A[43]~input_o\ & (!\B[43]~input_o\ & (\B[44]~input_o\ $ (\A[44]~input_o\)))) # (!\A[43]~input_o\ & (\B[43]~input_o\ & (\B[44]~input_o\ $ 
-- (\A[44]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[43]~input_o\,
	datab => \B[44]~input_o\,
	datac => \A[44]~input_o\,
	datad => \B[43]~input_o\,
	combout => \Mid|BLAN|ForGenerate:44:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\);

-- Location: LCCOMB_X79_Y52_N2
\Mid|BLAN|ForGenerate:44:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|BLAN|ForGenerate:44:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\ = (\B[44]~input_o\ & ((\A[44]~input_o\) # ((\A[43]~input_o\ & \B[43]~input_o\)))) # (!\B[44]~input_o\ & (\A[43]~input_o\ & (\A[44]~input_o\ & 
-- \B[43]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[43]~input_o\,
	datab => \B[44]~input_o\,
	datac => \A[44]~input_o\,
	datad => \B[43]~input_o\,
	combout => \Mid|BLAN|ForGenerate:44:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\);

-- Location: LCCOMB_X79_Y52_N12
\Mid|BLAN|ForGenerate:48:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|bG~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|BLAN|ForGenerate:48:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\ = (!\Mid|BLAN|ForGenerate:44:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\ & (((!\A[42]~input_o\) # (!\B[42]~input_o\)) # 
-- (!\Mid|BLAN|ForGenerate:44:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mid|BLAN|ForGenerate:44:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\,
	datab => \B[42]~input_o\,
	datac => \A[42]~input_o\,
	datad => \Mid|BLAN|ForGenerate:44:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\,
	combout => \Mid|BLAN|ForGenerate:48:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\);

-- Location: LCCOMB_X76_Y53_N18
\Mid|OC[45]~221\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|OC[45]~221_combout\ = (\Mid|BLAN|ForGenerate:48:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\ & (((!\Mid|BLAN|ForGenerate:41:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\ & 
-- !\Mid|BLAN|ForGenerate:41:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\)) # (!\Mid|OC[45]~220_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mid|BLAN|ForGenerate:41:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\,
	datab => \Mid|BLAN|ForGenerate:41:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\,
	datac => \Mid|OC[45]~220_combout\,
	datad => \Mid|BLAN|ForGenerate:48:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\,
	combout => \Mid|OC[45]~221_combout\);

-- Location: LCCOMB_X76_Y53_N4
\Bot|S[45]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Bot|S\(45) = \Top|P\(45) $ ((((\Mid|OC[45]~403_combout\ & \Mid|OC[45]~223_combout\)) # (!\Mid|OC[45]~221_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Top|P\(45),
	datab => \Mid|OC[45]~403_combout\,
	datac => \Mid|OC[45]~223_combout\,
	datad => \Mid|OC[45]~221_combout\,
	combout => \Bot|S\(45));

-- Location: LCCOMB_X76_Y54_N4
\Mid|BLAN|ForGenerate:45:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|BP\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|BLAN|ForGenerate:45:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|BP~combout\ = (\B[44]~input_o\ & (!\A[44]~input_o\ & (\A[45]~input_o\ $ (\B[45]~input_o\)))) # (!\B[44]~input_o\ & (\A[44]~input_o\ & (\A[45]~input_o\ $ 
-- (\B[45]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[44]~input_o\,
	datab => \A[45]~input_o\,
	datac => \A[44]~input_o\,
	datad => \B[45]~input_o\,
	combout => \Mid|BLAN|ForGenerate:45:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|BP~combout\);

-- Location: LCCOMB_X80_Y51_N26
\Mid|OC[58]~224\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|OC[58]~224_combout\ = (\Mid|BLAN|ForGenerate:45:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|BP~combout\ & (\Mid|BLAN|ForGenerate:42:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|bG~3_combout\ & (\B[43]~input_o\ $ 
-- (\A[43]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[43]~input_o\,
	datab => \Mid|BLAN|ForGenerate:45:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|BP~combout\,
	datac => \Mid|BLAN|ForGenerate:42:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|bG~3_combout\,
	datad => \A[43]~input_o\,
	combout => \Mid|OC[58]~224_combout\);

-- Location: LCCOMB_X81_Y51_N8
\Mid|OC[46]~225\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|OC[46]~225_combout\ = (\Mid|BLAN|ForGenerate:39:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|BP~2_combout\ & (\Mid|BLAN|ForGenerate:33:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|BP~0_combout\ & 
-- (\Mid|OC[58]~224_combout\ & \Mid|BLAN|ForGenerate:36:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|BP~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mid|BLAN|ForGenerate:39:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|BP~2_combout\,
	datab => \Mid|BLAN|ForGenerate:33:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|BP~0_combout\,
	datac => \Mid|OC[58]~224_combout\,
	datad => \Mid|BLAN|ForGenerate:36:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|BP~2_combout\,
	combout => \Mid|OC[46]~225_combout\);

-- Location: LCCOMB_X87_Y47_N26
\Mid|OC[46]~227\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|OC[46]~227_combout\ = (\Mid|OC[27]~111_combout\ & \Mid|OC[23]~107_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mid|OC[27]~111_combout\,
	datad => \Mid|OC[23]~107_combout\,
	combout => \Mid|OC[46]~227_combout\);

-- Location: LCCOMB_X89_Y51_N18
\Mid|OC[50]~226\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|OC[50]~226_combout\ = (\Top|P\(28) & (\Mid|BLAN|ForGenerate:26:ColumnBlock|Recur:Upper|Recur:Upper|BP~0_combout\ & (\Mid|BLAN|ForGenerate:30:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|BP~0_combout\ & \Top|P\(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Top|P\(28),
	datab => \Mid|BLAN|ForGenerate:26:ColumnBlock|Recur:Upper|Recur:Upper|BP~0_combout\,
	datac => \Mid|BLAN|ForGenerate:30:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|BP~0_combout\,
	datad => \Top|P\(27),
	combout => \Mid|OC[50]~226_combout\);

-- Location: LCCOMB_X90_Y47_N22
\Mid|OC[46]~228\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|OC[46]~228_combout\ = (\Mid|OC[46]~225_combout\ & (\Mid|OC[50]~226_combout\ & ((\Mid|BLAN|ForGenerate:24:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\) # (\Mid|OC[46]~227_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mid|OC[46]~225_combout\,
	datab => \Mid|BLAN|ForGenerate:24:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\,
	datac => \Mid|OC[46]~227_combout\,
	datad => \Mid|OC[50]~226_combout\,
	combout => \Mid|OC[46]~228_combout\);

-- Location: IOIBUF_X40_Y73_N1
\A[46]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(46),
	o => \A[46]~input_o\);

-- Location: LCCOMB_X84_Y51_N14
\Mid|OC[46]~230\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|OC[46]~230_combout\ = (\Mid|BLAN|ForGenerate:30:ColumnBlock|Recur:Upper|Recur:Upper|BP~0_combout\ & ((\Mid|BLAN|ForGenerate:27:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\) # 
-- (\Mid|BLAN|ForGenerate:49:ColumnBlock|Recur:Upper|Recur:Lower|Recur:Lower|bG~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mid|BLAN|ForGenerate:27:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\,
	datac => \Mid|BLAN|ForGenerate:30:ColumnBlock|Recur:Upper|Recur:Upper|BP~0_combout\,
	datad => \Mid|BLAN|ForGenerate:49:ColumnBlock|Recur:Upper|Recur:Lower|Recur:Lower|bG~2_combout\,
	combout => \Mid|OC[46]~230_combout\);

-- Location: LCCOMB_X84_Y51_N28
\Mid|OC[50]~229\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|OC[50]~229_combout\ = (!\Mid|BLAN|ForGenerate:30:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\ & (((!\A[28]~input_o\) # (!\B[28]~input_o\)) # 
-- (!\Mid|BLAN|ForGenerate:30:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|BP~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mid|BLAN|ForGenerate:30:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\,
	datab => \Mid|BLAN|ForGenerate:30:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|BP~0_combout\,
	datac => \B[28]~input_o\,
	datad => \A[28]~input_o\,
	combout => \Mid|OC[50]~229_combout\);

-- Location: LCCOMB_X84_Y51_N0
\Mid|OC[46]~231\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|OC[46]~231_combout\ = (\Mid|OC[51]~162_combout\ & (((!\Mid|OC[46]~230_combout\ & \Mid|OC[50]~229_combout\)) # (!\Mid|BLAN|ForGenerate:33:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|BP~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mid|BLAN|ForGenerate:33:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|BP~0_combout\,
	datab => \Mid|OC[46]~230_combout\,
	datac => \Mid|OC[51]~162_combout\,
	datad => \Mid|OC[50]~229_combout\,
	combout => \Mid|OC[46]~231_combout\);

-- Location: LCCOMB_X80_Y51_N20
\Mid|OC[46]~232\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|OC[46]~232_combout\ = (\Mid|BLAN|ForGenerate:39:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|BP~2_combout\ & (\Mid|BLAN|ForGenerate:36:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|BP~2_combout\ & 
-- (\Mid|OC[58]~224_combout\ & !\Mid|OC[46]~231_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mid|BLAN|ForGenerate:39:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|BP~2_combout\,
	datab => \Mid|BLAN|ForGenerate:36:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|BP~2_combout\,
	datac => \Mid|OC[58]~224_combout\,
	datad => \Mid|OC[46]~231_combout\,
	combout => \Mid|OC[46]~232_combout\);

-- Location: LCCOMB_X76_Y54_N22
\Mid|BLAN|ForGenerate:45:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|BLAN|ForGenerate:45:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\ = (\A[45]~input_o\ & ((\B[45]~input_o\) # ((\B[44]~input_o\ & \A[44]~input_o\)))) # (!\A[45]~input_o\ & (\B[44]~input_o\ & (\A[44]~input_o\ & 
-- \B[45]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[44]~input_o\,
	datab => \A[45]~input_o\,
	datac => \A[44]~input_o\,
	datad => \B[45]~input_o\,
	combout => \Mid|BLAN|ForGenerate:45:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\);

-- Location: LCCOMB_X80_Y51_N2
\Mid|BLAN|ForGenerate:49:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|bG~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|BLAN|ForGenerate:49:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\ = (!\Mid|BLAN|ForGenerate:45:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\ & (((!\B[43]~input_o\) # 
-- (!\Mid|BLAN|ForGenerate:45:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|BP~combout\)) # (!\A[43]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[43]~input_o\,
	datab => \Mid|BLAN|ForGenerate:45:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|BP~combout\,
	datac => \B[43]~input_o\,
	datad => \Mid|BLAN|ForGenerate:45:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\,
	combout => \Mid|BLAN|ForGenerate:49:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\);

-- Location: LCCOMB_X80_Y51_N22
\Mid|OC[46]~233\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|OC[46]~233_combout\ = (\Mid|OC[58]~224_combout\ & (((\Mid|BLAN|ForGenerate:39:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|BP~2_combout\ & !\Mid|OC[50]~175_combout\)) # (!\Mid|OC[40]~189_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mid|BLAN|ForGenerate:39:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|BP~2_combout\,
	datab => \Mid|OC[40]~189_combout\,
	datac => \Mid|OC[58]~224_combout\,
	datad => \Mid|OC[50]~175_combout\,
	combout => \Mid|OC[46]~233_combout\);

-- Location: LCCOMB_X80_Y51_N16
\Mid|OC[46]~234\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|OC[46]~234_combout\ = (\Mid|BLAN|ForGenerate:45:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|BP~combout\ & (!\Mid|OC[54]~208_combout\ & (\B[43]~input_o\ $ (\A[43]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[43]~input_o\,
	datab => \Mid|BLAN|ForGenerate:45:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|BP~combout\,
	datac => \Mid|OC[54]~208_combout\,
	datad => \A[43]~input_o\,
	combout => \Mid|OC[46]~234_combout\);

-- Location: LCCOMB_X80_Y51_N4
\Mid|OC[46]~235\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|OC[46]~235_combout\ = (\Mid|OC[46]~232_combout\) # (((\Mid|OC[46]~233_combout\) # (\Mid|OC[46]~234_combout\)) # (!\Mid|BLAN|ForGenerate:49:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mid|OC[46]~232_combout\,
	datab => \Mid|BLAN|ForGenerate:49:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\,
	datac => \Mid|OC[46]~233_combout\,
	datad => \Mid|OC[46]~234_combout\,
	combout => \Mid|OC[46]~235_combout\);

-- Location: IOIBUF_X38_Y73_N8
\B[46]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(46),
	o => \B[46]~input_o\);

-- Location: LCCOMB_X76_Y54_N16
\Bot|S[46]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Bot|S\(46) = \A[46]~input_o\ $ (\B[46]~input_o\ $ (((\Mid|OC[46]~228_combout\) # (\Mid|OC[46]~235_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100100110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mid|OC[46]~228_combout\,
	datab => \A[46]~input_o\,
	datac => \Mid|OC[46]~235_combout\,
	datad => \B[46]~input_o\,
	combout => \Bot|S\(46));

-- Location: LCCOMB_X76_Y54_N26
\Mid|BLAN|ForGenerate:48:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|bG~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|BLAN|ForGenerate:48:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|bG~1_combout\ = (\B[46]~input_o\ & (!\A[46]~input_o\ & (\A[45]~input_o\ $ (\B[45]~input_o\)))) # (!\B[46]~input_o\ & (\A[46]~input_o\ & (\A[45]~input_o\ $ (\B[45]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[46]~input_o\,
	datab => \A[46]~input_o\,
	datac => \A[45]~input_o\,
	datad => \B[45]~input_o\,
	combout => \Mid|BLAN|ForGenerate:48:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|bG~1_combout\);

-- Location: LCCOMB_X76_Y54_N28
\Mid|BLAN|ForGenerate:53:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Lower|Recur:Upper|BP~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|BLAN|ForGenerate:53:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Lower|Recur:Upper|BP~0_combout\ = (\Mid|BLAN|ForGenerate:48:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|bG~1_combout\ & (\B[44]~input_o\ $ (\A[44]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[44]~input_o\,
	datac => \A[44]~input_o\,
	datad => \Mid|BLAN|ForGenerate:48:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|bG~1_combout\,
	combout => \Mid|BLAN|ForGenerate:53:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Lower|Recur:Upper|BP~0_combout\);

-- Location: LCCOMB_X79_Y52_N14
\Mid|OC[47]~404\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|OC[47]~404_combout\ = (\Mid|BLAN|ForGenerate:43:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|BP~0_combout\ & (\Mid|BLAN|ForGenerate:53:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Lower|Recur:Upper|BP~0_combout\ & 
-- (\A[41]~input_o\ $ (\B[41]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[41]~input_o\,
	datab => \B[41]~input_o\,
	datac => \Mid|BLAN|ForGenerate:43:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|BP~0_combout\,
	datad => \Mid|BLAN|ForGenerate:53:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Lower|Recur:Upper|BP~0_combout\,
	combout => \Mid|OC[47]~404_combout\);

-- Location: LCCOMB_X79_Y53_N30
\Mid|OC[47]~405\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|OC[47]~405_combout\ = (\Mid|OC[47]~404_combout\ & ((\Mid|BLAN|ForGenerate:40:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\) # 
-- ((!\Mid|BLAN|ForGenerate:40:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\ & \Mid|OC[44]~196_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mid|OC[47]~404_combout\,
	datab => \Mid|BLAN|ForGenerate:40:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\,
	datac => \Mid|BLAN|ForGenerate:40:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\,
	datad => \Mid|OC[44]~196_combout\,
	combout => \Mid|OC[47]~405_combout\);

-- Location: LCCOMB_X84_Y50_N16
\Mid|OC[47]~239\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|OC[47]~239_combout\ = (\Mid|BLAN|ForGenerate:36:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Lower|Recur:Upper|BP~2_combout\ & (\Top|P\(29) & (\Mid|BLAN|ForGenerate:38:ColumnBlock|Recur:Upper|Recur:Lower|Recur:Upper|Recur:Upper|BP~0_combout\ & 
-- \Mid|BLAN|ForGenerate:34:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|BP~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mid|BLAN|ForGenerate:36:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Lower|Recur:Upper|BP~2_combout\,
	datab => \Top|P\(29),
	datac => \Mid|BLAN|ForGenerate:38:ColumnBlock|Recur:Upper|Recur:Lower|Recur:Upper|Recur:Upper|BP~0_combout\,
	datad => \Mid|BLAN|ForGenerate:34:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|BP~0_combout\,
	combout => \Mid|OC[47]~239_combout\);

-- Location: LCCOMB_X82_Y50_N20
\Mid|BLAN|ForGenerate:36:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Lower|Recur:Upper|bG~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|BLAN|ForGenerate:36:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Lower|Recur:Upper|bG~0_combout\ = (\B[29]~input_o\ & (\Mid|BLAN|ForGenerate:36:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Lower|Recur:Upper|BP~2_combout\ & \A[29]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[29]~input_o\,
	datac => \Mid|BLAN|ForGenerate:36:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Lower|Recur:Upper|BP~2_combout\,
	datad => \A[29]~input_o\,
	combout => \Mid|BLAN|ForGenerate:36:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Lower|Recur:Upper|bG~0_combout\);

-- Location: LCCOMB_X84_Y50_N20
\Mid|OC[47]~236\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|OC[47]~236_combout\ = (\Mid|BLAN|ForGenerate:36:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Lower|Recur:Upper|BP~2_combout\ & ((\Mid|BLAN|ForGenerate:51:ColumnBlock|Recur:Upper|Recur:Lower|bG~0_combout\) # 
-- (\Mid|BLAN|ForGenerate:28:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mid|BLAN|ForGenerate:36:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Lower|Recur:Upper|BP~2_combout\,
	datac => \Mid|BLAN|ForGenerate:51:ColumnBlock|Recur:Upper|Recur:Lower|bG~0_combout\,
	datad => \Mid|BLAN|ForGenerate:28:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\,
	combout => \Mid|OC[47]~236_combout\);

-- Location: LCCOMB_X84_Y50_N14
\Mid|OC[47]~237\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|OC[47]~237_combout\ = (\Mid|BLAN|ForGenerate:34:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|BP~0_combout\ & ((\Mid|BLAN|ForGenerate:36:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Lower|Recur:Upper|bG~0_combout\) # ((\Top|P\(29) & 
-- \Mid|OC[47]~236_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mid|BLAN|ForGenerate:34:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|BP~0_combout\,
	datab => \Top|P\(29),
	datac => \Mid|BLAN|ForGenerate:36:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Lower|Recur:Upper|bG~0_combout\,
	datad => \Mid|OC[47]~236_combout\,
	combout => \Mid|OC[47]~237_combout\);

-- Location: LCCOMB_X87_Y50_N12
\Mid|OC[47]~238\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|OC[47]~238_combout\ = ((\Mid|OC[47]~237_combout\) # ((\Mid|BLAN|ForGenerate:31:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\ & 
-- \Mid|BLAN|ForGenerate:34:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|BP~0_combout\))) # (!\Mid|OC[52]~164_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mid|BLAN|ForGenerate:31:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\,
	datab => \Mid|OC[52]~164_combout\,
	datac => \Mid|BLAN|ForGenerate:34:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|BP~0_combout\,
	datad => \Mid|OC[47]~237_combout\,
	combout => \Mid|OC[47]~238_combout\);

-- Location: LCCOMB_X87_Y47_N4
\Mid|OC[47]~240\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|OC[47]~240_combout\ = (\Mid|OC[47]~238_combout\) # ((\Mid|OC[47]~239_combout\ & ((\Mid|BLAN|ForGenerate:34:ColumnBlock|Recur:Upper|Recur:Lower|Recur:Upper|Recur:Upper|bG~0_combout\) # 
-- (\Mid|BLAN|ForGenerate:25:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mid|BLAN|ForGenerate:34:ColumnBlock|Recur:Upper|Recur:Lower|Recur:Upper|Recur:Upper|bG~0_combout\,
	datab => \Mid|BLAN|ForGenerate:25:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\,
	datac => \Mid|OC[47]~239_combout\,
	datad => \Mid|OC[47]~238_combout\,
	combout => \Mid|OC[47]~240_combout\);

-- Location: LCCOMB_X87_Y47_N14
\Mid|OC[47]~241\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|OC[47]~241_combout\ = (\Mid|OC[47]~240_combout\) # ((\Mid|OC[46]~227_combout\ & (\Mid|OC[47]~239_combout\ & \Top|P\(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mid|OC[46]~227_combout\,
	datab => \Mid|OC[47]~240_combout\,
	datac => \Mid|OC[47]~239_combout\,
	datad => \Top|P\(25),
	combout => \Mid|OC[47]~241_combout\);

-- Location: LCCOMB_X79_Y53_N2
\Mid|OC[47]~242\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|OC[47]~242_combout\ = (\Mid|OC[47]~241_combout\ & (\Mid|BLAN|ForGenerate:51:ColumnBlock|Recur:Upper|Recur:Lower|Recur:Upper|Recur:Upper|BP~0_combout\ & (\Mid|BLAN|ForGenerate:59:ColumnBlock|Recur:Upper|Recur:Lower|Recur:Upper|BP~0_combout\ & 
-- \Mid|OC[47]~404_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mid|OC[47]~241_combout\,
	datab => \Mid|BLAN|ForGenerate:51:ColumnBlock|Recur:Upper|Recur:Lower|Recur:Upper|Recur:Upper|BP~0_combout\,
	datac => \Mid|BLAN|ForGenerate:59:ColumnBlock|Recur:Upper|Recur:Lower|Recur:Upper|BP~0_combout\,
	datad => \Mid|OC[47]~404_combout\,
	combout => \Mid|OC[47]~242_combout\);

-- Location: IOIBUF_X60_Y73_N15
\B[47]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(47),
	o => \B[47]~input_o\);

-- Location: IOIBUF_X74_Y73_N22
\A[47]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(47),
	o => \A[47]~input_o\);

-- Location: LCCOMB_X79_Y54_N24
\Top|P[47]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Top|P\(47) = \B[47]~input_o\ $ (\A[47]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[47]~input_o\,
	datac => \A[47]~input_o\,
	combout => \Top|P\(47));

-- Location: LCCOMB_X79_Y52_N30
\Mid|BLAN|ForGenerate:43:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|BLAN|ForGenerate:43:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\ = (\A[41]~input_o\ & \B[41]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[41]~input_o\,
	datad => \B[41]~input_o\,
	combout => \Mid|BLAN|ForGenerate:43:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\);

-- Location: LCCOMB_X79_Y52_N16
\Mid|OC[47]~243\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|OC[47]~243_combout\ = (\Mid|BLAN|ForGenerate:53:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Lower|Recur:Upper|BP~0_combout\ & ((\Mid|BLAN|ForGenerate:43:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\) # 
-- ((\Mid|BLAN|ForGenerate:43:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\ & \Mid|BLAN|ForGenerate:43:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|BP~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mid|BLAN|ForGenerate:43:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\,
	datab => \Mid|BLAN|ForGenerate:53:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Lower|Recur:Upper|BP~0_combout\,
	datac => \Mid|BLAN|ForGenerate:43:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|BP~0_combout\,
	datad => \Mid|BLAN|ForGenerate:43:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\,
	combout => \Mid|OC[47]~243_combout\);

-- Location: LCCOMB_X76_Y54_N6
\Mid|BLAN|ForGenerate:46:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|BLAN|ForGenerate:46:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\ = (\B[46]~input_o\ & ((\A[46]~input_o\) # ((\A[45]~input_o\ & \B[45]~input_o\)))) # (!\B[46]~input_o\ & (\A[46]~input_o\ & (\A[45]~input_o\ & 
-- \B[45]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[46]~input_o\,
	datab => \A[46]~input_o\,
	datac => \A[45]~input_o\,
	datad => \B[45]~input_o\,
	combout => \Mid|BLAN|ForGenerate:46:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\);

-- Location: LCCOMB_X76_Y54_N8
\Mid|BLAN|ForGenerate:50:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|bG~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|BLAN|ForGenerate:50:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\ = (!\Mid|BLAN|ForGenerate:46:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\ & (((!\A[44]~input_o\) # 
-- (!\Mid|BLAN|ForGenerate:48:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|bG~1_combout\)) # (!\B[44]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[44]~input_o\,
	datab => \Mid|BLAN|ForGenerate:48:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|bG~1_combout\,
	datac => \A[44]~input_o\,
	datad => \Mid|BLAN|ForGenerate:46:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\,
	combout => \Mid|BLAN|ForGenerate:50:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\);

-- Location: LCCOMB_X79_Y53_N12
\Mid|OC[47]~244\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|OC[47]~244_combout\ = (\Mid|OC[47]~243_combout\) # (((\Mid|BLAN|ForGenerate:43:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\ & \Mid|OC[47]~404_combout\)) # 
-- (!\Mid|BLAN|ForGenerate:50:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101110111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mid|OC[47]~243_combout\,
	datab => \Mid|BLAN|ForGenerate:50:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\,
	datac => \Mid|BLAN|ForGenerate:43:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\,
	datad => \Mid|OC[47]~404_combout\,
	combout => \Mid|OC[47]~244_combout\);

-- Location: LCCOMB_X79_Y53_N22
\Bot|S[47]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Bot|S\(47) = \Top|P\(47) $ (((\Mid|OC[47]~405_combout\) # ((\Mid|OC[47]~242_combout\) # (\Mid|OC[47]~244_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mid|OC[47]~405_combout\,
	datab => \Mid|OC[47]~242_combout\,
	datac => \Top|P\(47),
	datad => \Mid|OC[47]~244_combout\,
	combout => \Bot|S\(47));

-- Location: LCCOMB_X77_Y54_N26
\Mid|BLAN|ForGenerate:47:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|BP~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|BLAN|ForGenerate:47:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|BP~2_combout\ = (\Mid|BLAN|ForGenerate:53:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Lower|Recur:Upper|BP~0_combout\ & 
-- (\Mid|BLAN|ForGenerate:43:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|BP~0_combout\ & (\B[47]~input_o\ $ (\A[47]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mid|BLAN|ForGenerate:53:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Lower|Recur:Upper|BP~0_combout\,
	datab => \B[47]~input_o\,
	datac => \Mid|BLAN|ForGenerate:43:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|BP~0_combout\,
	datad => \A[47]~input_o\,
	combout => \Mid|BLAN|ForGenerate:47:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|BP~2_combout\);

-- Location: LCCOMB_X76_Y54_N2
\Mid|BLAN|ForGenerate:51:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|bG~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|BLAN|ForGenerate:51:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\ = (\A[45]~input_o\ & \B[45]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A[45]~input_o\,
	datad => \B[45]~input_o\,
	combout => \Mid|BLAN|ForGenerate:51:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\);

-- Location: LCCOMB_X79_Y54_N12
\Mid|OC[48]~248\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|OC[48]~248_combout\ = (\A[46]~input_o\ & (!\B[46]~input_o\ & (\B[47]~input_o\ $ (\A[47]~input_o\)))) # (!\A[46]~input_o\ & (\B[46]~input_o\ & (\B[47]~input_o\ $ (\A[47]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[46]~input_o\,
	datab => \B[47]~input_o\,
	datac => \A[47]~input_o\,
	datad => \B[46]~input_o\,
	combout => \Mid|OC[48]~248_combout\);

-- Location: LCCOMB_X77_Y54_N24
\Mid|OC[48]~249\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|OC[48]~249_combout\ = (\Mid|OC[48]~248_combout\ & ((\Mid|BLAN|ForGenerate:51:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\) # ((\Top|P\(45) & !\Mid|BLAN|ForGenerate:48:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mid|BLAN|ForGenerate:51:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\,
	datab => \Top|P\(45),
	datac => \Mid|BLAN|ForGenerate:48:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\,
	datad => \Mid|OC[48]~248_combout\,
	combout => \Mid|OC[48]~249_combout\);

-- Location: LCCOMB_X79_Y54_N10
\Mid|BLAN|ForGenerate:47:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|BLAN|ForGenerate:47:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\ = (\B[47]~input_o\ & ((\A[47]~input_o\) # ((\A[46]~input_o\ & \B[46]~input_o\)))) # (!\B[47]~input_o\ & (\A[46]~input_o\ & (\A[47]~input_o\ & 
-- \B[46]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[46]~input_o\,
	datab => \B[47]~input_o\,
	datac => \A[47]~input_o\,
	datad => \B[46]~input_o\,
	combout => \Mid|BLAN|ForGenerate:47:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\);

-- Location: LCCOMB_X83_Y50_N20
\Mid|BLAN|ForGenerate:47:ColumnBlock|Recur:Upper|Recur:Lower|bG~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|BLAN|ForGenerate:47:ColumnBlock|Recur:Upper|Recur:Lower|bG~4_combout\ = ((\Mid|BLAN|ForGenerate:35:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|BP~0_combout\ & 
-- ((\Mid|BLAN|ForGenerate:32:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~1_combout\) # (\Mid|BLAN|ForGenerate:32:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\)))) # 
-- (!\Mid|BLAN|ForGenerate:47:ColumnBlock|Recur:Upper|Recur:Lower|bG~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mid|BLAN|ForGenerate:32:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~1_combout\,
	datab => \Mid|BLAN|ForGenerate:35:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|BP~0_combout\,
	datac => \Mid|BLAN|ForGenerate:32:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\,
	datad => \Mid|BLAN|ForGenerate:47:ColumnBlock|Recur:Upper|Recur:Lower|bG~0_combout\,
	combout => \Mid|BLAN|ForGenerate:47:ColumnBlock|Recur:Upper|Recur:Lower|bG~4_combout\);

-- Location: LCCOMB_X89_Y51_N4
\Mid|BLAN|ForGenerate:47:ColumnBlock|Recur:Upper|Recur:Lower|bG~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|BLAN|ForGenerate:47:ColumnBlock|Recur:Upper|Recur:Lower|bG~1_combout\ = (\Mid|BLAN|ForGenerate:26:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\) # ((\A[24]~input_o\ & (\B[24]~input_o\ & 
-- \Mid|BLAN|ForGenerate:26:ColumnBlock|Recur:Upper|Recur:Upper|BP~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mid|BLAN|ForGenerate:26:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\,
	datab => \A[24]~input_o\,
	datac => \B[24]~input_o\,
	datad => \Mid|BLAN|ForGenerate:26:ColumnBlock|Recur:Upper|Recur:Upper|BP~0_combout\,
	combout => \Mid|BLAN|ForGenerate:47:ColumnBlock|Recur:Upper|Recur:Lower|bG~1_combout\);

-- Location: LCCOMB_X88_Y51_N22
\Mid|BLAN|ForGenerate:47:ColumnBlock|Recur:Upper|Recur:Lower|bG~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|BLAN|ForGenerate:47:ColumnBlock|Recur:Upper|Recur:Lower|bG~2_combout\ = (\Mid|BLAN|ForGenerate:29:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|BP~0_combout\ & ((\B[27]~input_o\ & ((\A[27]~input_o\) # 
-- (\Mid|BLAN|ForGenerate:47:ColumnBlock|Recur:Upper|Recur:Lower|bG~1_combout\))) # (!\B[27]~input_o\ & (\A[27]~input_o\ & \Mid|BLAN|ForGenerate:47:ColumnBlock|Recur:Upper|Recur:Lower|bG~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[27]~input_o\,
	datab => \A[27]~input_o\,
	datac => \Mid|BLAN|ForGenerate:29:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|BP~0_combout\,
	datad => \Mid|BLAN|ForGenerate:47:ColumnBlock|Recur:Upper|Recur:Lower|bG~1_combout\,
	combout => \Mid|BLAN|ForGenerate:47:ColumnBlock|Recur:Upper|Recur:Lower|bG~2_combout\);

-- Location: LCCOMB_X83_Y50_N10
\Mid|BLAN|ForGenerate:47:ColumnBlock|Recur:Upper|Recur:Lower|bG~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|BLAN|ForGenerate:47:ColumnBlock|Recur:Upper|Recur:Lower|bG~3_combout\ = (\Mid|BLAN|ForGenerate:35:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|BP~0_combout\ & 
-- (\Mid|BLAN|ForGenerate:32:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|BP~0_combout\ & ((\Mid|BLAN|ForGenerate:29:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\) # 
-- (\Mid|BLAN|ForGenerate:47:ColumnBlock|Recur:Upper|Recur:Lower|bG~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mid|BLAN|ForGenerate:29:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\,
	datab => \Mid|BLAN|ForGenerate:47:ColumnBlock|Recur:Upper|Recur:Lower|bG~2_combout\,
	datac => \Mid|BLAN|ForGenerate:35:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|BP~0_combout\,
	datad => \Mid|BLAN|ForGenerate:32:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|BP~0_combout\,
	combout => \Mid|BLAN|ForGenerate:47:ColumnBlock|Recur:Upper|Recur:Lower|bG~3_combout\);

-- Location: LCCOMB_X83_Y50_N6
\Mid|OC[48]~250\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|OC[48]~250_combout\ = ((\Mid|OC[49]~402_combout\ & ((\Mid|BLAN|ForGenerate:47:ColumnBlock|Recur:Upper|Recur:Lower|bG~4_combout\) # (\Mid|BLAN|ForGenerate:47:ColumnBlock|Recur:Upper|Recur:Lower|bG~3_combout\)))) # (!\Mid|OC[42]~198_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mid|OC[42]~198_combout\,
	datab => \Mid|BLAN|ForGenerate:47:ColumnBlock|Recur:Upper|Recur:Lower|bG~4_combout\,
	datac => \Mid|OC[49]~402_combout\,
	datad => \Mid|BLAN|ForGenerate:47:ColumnBlock|Recur:Upper|Recur:Lower|bG~3_combout\,
	combout => \Mid|OC[48]~250_combout\);

-- Location: LCCOMB_X77_Y54_N2
\Mid|OC[48]~251\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|OC[48]~251_combout\ = (\Mid|OC[48]~249_combout\) # ((\Mid|BLAN|ForGenerate:47:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\) # 
-- ((\Mid|BLAN|ForGenerate:47:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|BP~2_combout\ & \Mid|OC[48]~250_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mid|BLAN|ForGenerate:47:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|BP~2_combout\,
	datab => \Mid|OC[48]~249_combout\,
	datac => \Mid|BLAN|ForGenerate:47:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\,
	datad => \Mid|OC[48]~250_combout\,
	combout => \Mid|OC[48]~251_combout\);

-- Location: IOIBUF_X38_Y73_N15
\B[48]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(48),
	o => \B[48]~input_o\);

-- Location: IOIBUF_X45_Y73_N1
\A[48]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(48),
	o => \A[48]~input_o\);

-- Location: LCCOMB_X80_Y54_N0
\Top|P[48]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Top|P\(48) = \B[48]~input_o\ $ (\A[48]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[48]~input_o\,
	datac => \A[48]~input_o\,
	combout => \Top|P\(48));

-- Location: LCCOMB_X88_Y47_N22
\Mid|OC[49]~246\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|OC[49]~246_combout\ = (\Mid|BLAN|ForGenerate:29:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|BP~0_combout\ & (\Mid|BLAN|ForGenerate:38:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|BP~0_combout\ & 
-- (\Mid|OC[53]~197_combout\ & \Mid|BLAN|ForGenerate:27:ColumnBlock|Recur:Upper|Recur:Upper|bG~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mid|BLAN|ForGenerate:29:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|BP~0_combout\,
	datab => \Mid|BLAN|ForGenerate:38:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|BP~0_combout\,
	datac => \Mid|OC[53]~197_combout\,
	datad => \Mid|BLAN|ForGenerate:27:ColumnBlock|Recur:Upper|Recur:Upper|bG~0_combout\,
	combout => \Mid|OC[49]~246_combout\);

-- Location: LCCOMB_X102_Y43_N24
\Mid|BLAN|ForGenerate:23:ColumnBlock|Recur:Lower|bG~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|BLAN|ForGenerate:23:ColumnBlock|Recur:Lower|bG~5_combout\ = (\Mid|BLAN|ForGenerate:23:ColumnBlock|Recur:Lower|bG~4_combout\) # ((\Top|P\(11) & (\Mid|BLAN|ForGenerate:23:ColumnBlock|Recur:Lower|Recur:Upper|BP~0_combout\ & !\Mid|OC[6]~66_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mid|BLAN|ForGenerate:23:ColumnBlock|Recur:Lower|bG~4_combout\,
	datab => \Top|P\(11),
	datac => \Mid|BLAN|ForGenerate:23:ColumnBlock|Recur:Lower|Recur:Upper|BP~0_combout\,
	datad => \Mid|OC[6]~66_combout\,
	combout => \Mid|BLAN|ForGenerate:23:ColumnBlock|Recur:Lower|bG~5_combout\);

-- Location: LCCOMB_X90_Y47_N0
\Mid|OC[49]~245\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|OC[49]~245_combout\ = ((\Mid|BLAN|ForGenerate:23:ColumnBlock|Recur:Upper|BP~0_combout\ & ((\Mid|BLAN|ForGenerate:23:ColumnBlock|Recur:Lower|bG~5_combout\) # (\Mid|OC~397_combout\)))) # (!\Mid|OC[24]~110_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mid|BLAN|ForGenerate:23:ColumnBlock|Recur:Upper|BP~0_combout\,
	datab => \Mid|BLAN|ForGenerate:23:ColumnBlock|Recur:Lower|bG~5_combout\,
	datac => \Mid|OC~397_combout\,
	datad => \Mid|OC[24]~110_combout\,
	combout => \Mid|OC[49]~245_combout\);

-- Location: LCCOMB_X83_Y50_N8
\Mid|OC[49]~247\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|OC[49]~247_combout\ = (\Mid|OC[49]~246_combout\ & (\Mid|OC[49]~245_combout\ & (\Mid|BLAN|ForGenerate:35:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|BP~0_combout\ & 
-- \Mid|BLAN|ForGenerate:32:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|BP~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mid|OC[49]~246_combout\,
	datab => \Mid|OC[49]~245_combout\,
	datac => \Mid|BLAN|ForGenerate:35:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|BP~0_combout\,
	datad => \Mid|BLAN|ForGenerate:32:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|BP~0_combout\,
	combout => \Mid|OC[49]~247_combout\);

-- Location: LCCOMB_X77_Y54_N4
\Bot|S[48]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Bot|S\(48) = \Top|P\(48) $ (((\Mid|OC[48]~251_combout\) # ((\Mid|BLAN|ForGenerate:47:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|BP~2_combout\ & \Mid|OC[49]~247_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mid|BLAN|ForGenerate:47:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|BP~2_combout\,
	datab => \Mid|OC[48]~251_combout\,
	datac => \Top|P\(48),
	datad => \Mid|OC[49]~247_combout\,
	combout => \Bot|S\(48));

-- Location: IOIBUF_X87_Y73_N1
\B[49]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(49),
	o => \B[49]~input_o\);

-- Location: IOIBUF_X65_Y73_N22
\A[49]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(49),
	o => \A[49]~input_o\);

-- Location: LCCOMB_X77_Y54_N14
\Mid|BLAN|ForGenerate:48:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|BP~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|BLAN|ForGenerate:48:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|BP~0_combout\ = (\A[47]~input_o\ & (!\B[47]~input_o\ & (\A[48]~input_o\ $ (\B[48]~input_o\)))) # (!\A[47]~input_o\ & (\B[47]~input_o\ & (\A[48]~input_o\ $ 
-- (\B[48]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[47]~input_o\,
	datab => \A[48]~input_o\,
	datac => \B[47]~input_o\,
	datad => \B[48]~input_o\,
	combout => \Mid|BLAN|ForGenerate:48:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|BP~0_combout\);

-- Location: LCCOMB_X77_Y54_N8
\Mid|BLAN|ForGenerate:48:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|BP~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|BLAN|ForGenerate:48:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|BP~0_combout\ = (\Mid|BLAN|ForGenerate:43:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|BP~0_combout\ & 
-- (\Mid|BLAN|ForGenerate:48:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|BP~0_combout\ & \Mid|BLAN|ForGenerate:53:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Lower|Recur:Upper|BP~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mid|BLAN|ForGenerate:43:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|BP~0_combout\,
	datab => \Mid|BLAN|ForGenerate:48:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|BP~0_combout\,
	datac => \Mid|BLAN|ForGenerate:53:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Lower|Recur:Upper|BP~0_combout\,
	combout => \Mid|BLAN|ForGenerate:48:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|BP~0_combout\);

-- Location: LCCOMB_X77_Y54_N10
\Mid|BLAN|ForGenerate:48:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|BLAN|ForGenerate:48:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\ = (\A[48]~input_o\ & ((\B[48]~input_o\) # ((\A[47]~input_o\ & \B[47]~input_o\)))) # (!\A[48]~input_o\ & (\A[47]~input_o\ & (\B[47]~input_o\ & 
-- \B[48]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[47]~input_o\,
	datab => \A[48]~input_o\,
	datac => \B[47]~input_o\,
	datad => \B[48]~input_o\,
	combout => \Mid|BLAN|ForGenerate:48:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\);

-- Location: LCCOMB_X77_Y54_N12
\Mid|OC[49]~252\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|OC[49]~252_combout\ = (!\Mid|BLAN|ForGenerate:48:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\ & 
-- ((!\Mid|BLAN|ForGenerate:46:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\) # (!\Mid|BLAN|ForGenerate:48:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|BP~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010100010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mid|BLAN|ForGenerate:48:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\,
	datab => \Mid|BLAN|ForGenerate:48:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|BP~0_combout\,
	datac => \Mid|BLAN|ForGenerate:46:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\,
	combout => \Mid|OC[49]~252_combout\);

-- Location: LCCOMB_X77_Y54_N30
\Mid|OC[49]~253\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|OC[49]~253_combout\ = (\Mid|OC[49]~252_combout\ & (((\Mid|BLAN|ForGenerate:48:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\) # 
-- (!\Mid|BLAN|ForGenerate:48:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|BP~0_combout\)) # (!\Mid|BLAN|ForGenerate:48:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|bG~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mid|BLAN|ForGenerate:48:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|bG~1_combout\,
	datab => \Mid|BLAN|ForGenerate:48:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|BP~0_combout\,
	datac => \Mid|BLAN|ForGenerate:48:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\,
	datad => \Mid|OC[49]~252_combout\,
	combout => \Mid|OC[49]~253_combout\);

-- Location: LCCOMB_X77_Y54_N16
\Mid|OC[49]~254\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|OC[49]~254_combout\ = ((\Mid|BLAN|ForGenerate:48:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|BP~0_combout\ & ((\Mid|OC[49]~247_combout\) # (\Mid|OC[48]~250_combout\)))) # (!\Mid|OC[49]~253_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mid|OC[49]~247_combout\,
	datab => \Mid|BLAN|ForGenerate:48:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|BP~0_combout\,
	datac => \Mid|OC[49]~253_combout\,
	datad => \Mid|OC[48]~250_combout\,
	combout => \Mid|OC[49]~254_combout\);

-- Location: LCCOMB_X80_Y54_N10
\Bot|S[49]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Bot|S\(49) = \B[49]~input_o\ $ (\A[49]~input_o\ $ (\Mid|OC[49]~254_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[49]~input_o\,
	datac => \A[49]~input_o\,
	datad => \Mid|OC[49]~254_combout\,
	combout => \Bot|S\(49));

-- Location: IOIBUF_X102_Y73_N1
\B[50]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(50),
	o => \B[50]~input_o\);

-- Location: IOIBUF_X105_Y73_N8
\A[50]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(50),
	o => \A[50]~input_o\);

-- Location: LCCOMB_X80_Y54_N28
\Mid|BLAN|ForGenerate:49:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|BP\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|BLAN|ForGenerate:49:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|BP~combout\ = (\A[48]~input_o\ & (!\B[48]~input_o\ & (\A[49]~input_o\ $ (\B[49]~input_o\)))) # (!\A[48]~input_o\ & (\B[48]~input_o\ & (\A[49]~input_o\ $ 
-- (\B[49]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[48]~input_o\,
	datab => \B[48]~input_o\,
	datac => \A[49]~input_o\,
	datad => \B[49]~input_o\,
	combout => \Mid|BLAN|ForGenerate:49:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|BP~combout\);

-- Location: LCCOMB_X79_Y54_N0
\Mid|BLAN|ForGenerate:49:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|bG~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|BLAN|ForGenerate:49:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|bG~1_combout\ = (\Top|P\(47) & (\Mid|BLAN|ForGenerate:49:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|BP~combout\ & (\A[46]~input_o\ $ (\B[46]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[46]~input_o\,
	datab => \Top|P\(47),
	datac => \B[46]~input_o\,
	datad => \Mid|BLAN|ForGenerate:49:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|BP~combout\,
	combout => \Mid|BLAN|ForGenerate:49:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|bG~1_combout\);

-- Location: LCCOMB_X80_Y54_N14
\Mid|BLAN|ForGenerate:49:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|BLAN|ForGenerate:49:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\ = (\A[49]~input_o\ & ((\B[49]~input_o\) # ((\A[48]~input_o\ & \B[48]~input_o\)))) # (!\A[49]~input_o\ & (\A[48]~input_o\ & (\B[48]~input_o\ & 
-- \B[49]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[48]~input_o\,
	datab => \B[48]~input_o\,
	datac => \A[49]~input_o\,
	datad => \B[49]~input_o\,
	combout => \Mid|BLAN|ForGenerate:49:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\);

-- Location: LCCOMB_X79_Y54_N6
\Mid|OC[50]~255\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|OC[50]~255_combout\ = (!\Mid|BLAN|ForGenerate:49:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\ & ((!\Mid|BLAN|ForGenerate:49:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|BP~combout\) 
-- # (!\Mid|BLAN|ForGenerate:47:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mid|BLAN|ForGenerate:47:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\,
	datab => \Mid|BLAN|ForGenerate:49:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|BP~combout\,
	datad => \Mid|BLAN|ForGenerate:49:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\,
	combout => \Mid|OC[50]~255_combout\);

-- Location: LCCOMB_X80_Y51_N14
\Mid|OC[50]~256\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|OC[50]~256_combout\ = (\Mid|OC[50]~255_combout\ & ((\Mid|BLAN|ForGenerate:49:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\) # (!\Mid|BLAN|ForGenerate:49:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|bG~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mid|BLAN|ForGenerate:49:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|bG~1_combout\,
	datab => \Mid|BLAN|ForGenerate:49:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\,
	datad => \Mid|OC[50]~255_combout\,
	combout => \Mid|OC[50]~256_combout\);

-- Location: LCCOMB_X80_Y51_N30
\Mid|OC[58]~406\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|OC[58]~406_combout\ = (\Mid|BLAN|ForGenerate:49:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|bG~1_combout\ & (\Mid|OC[58]~224_combout\ & (\B[39]~input_o\ $ (\A[39]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mid|BLAN|ForGenerate:49:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|bG~1_combout\,
	datab => \B[39]~input_o\,
	datac => \Mid|OC[58]~224_combout\,
	datad => \A[39]~input_o\,
	combout => \Mid|OC[58]~406_combout\);

-- Location: LCCOMB_X90_Y47_N18
\Mid|OC[50]~258\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|OC[50]~258_combout\ = (\Mid|OC[50]~226_combout\ & ((\Mid|BLAN|ForGenerate:24:ColumnBlock|bG~0_combout\) # ((\Mid|OC[25]~114_combout\) # (\Mid|OC[25]~113_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mid|BLAN|ForGenerate:24:ColumnBlock|bG~0_combout\,
	datab => \Mid|OC[50]~226_combout\,
	datac => \Mid|OC[25]~114_combout\,
	datad => \Mid|OC[25]~113_combout\,
	combout => \Mid|OC[50]~258_combout\);

-- Location: LCCOMB_X84_Y51_N12
\Mid|BLAN|ForGenerate:49:ColumnBlock|Recur:Upper|Recur:Lower|Recur:Lower|bG~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|BLAN|ForGenerate:49:ColumnBlock|Recur:Upper|Recur:Lower|Recur:Lower|bG~3_combout\ = (\Mid|BLAN|ForGenerate:30:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|BP~0_combout\ & 
-- (\Mid|BLAN|ForGenerate:27:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\ & (\B[28]~input_o\ $ (\A[28]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[28]~input_o\,
	datab => \Mid|BLAN|ForGenerate:30:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|BP~0_combout\,
	datac => \Mid|BLAN|ForGenerate:27:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\,
	datad => \A[28]~input_o\,
	combout => \Mid|BLAN|ForGenerate:49:ColumnBlock|Recur:Upper|Recur:Lower|Recur:Lower|bG~3_combout\);

-- Location: LCCOMB_X84_Y51_N18
\Mid|OC[50]~259\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|OC[50]~259_combout\ = (\Mid|BLAN|ForGenerate:49:ColumnBlock|Recur:Upper|Recur:Lower|Recur:Lower|bG~3_combout\) # (((\Mid|BLAN|ForGenerate:49:ColumnBlock|Recur:Upper|Recur:Lower|Recur:Lower|bG~2_combout\ & 
-- \Mid|BLAN|ForGenerate:30:ColumnBlock|Recur:Upper|Recur:Upper|BP~0_combout\)) # (!\Mid|OC[50]~229_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mid|BLAN|ForGenerate:49:ColumnBlock|Recur:Upper|Recur:Lower|Recur:Lower|bG~3_combout\,
	datab => \Mid|BLAN|ForGenerate:49:ColumnBlock|Recur:Upper|Recur:Lower|Recur:Lower|bG~2_combout\,
	datac => \Mid|BLAN|ForGenerate:30:ColumnBlock|Recur:Upper|Recur:Upper|BP~0_combout\,
	datad => \Mid|OC[50]~229_combout\,
	combout => \Mid|OC[50]~259_combout\);

-- Location: LCCOMB_X84_Y51_N4
\Mid|OC[51]~260\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|OC[51]~260_combout\ = ((\Mid|BLAN|ForGenerate:33:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|BP~0_combout\ & ((\Mid|OC[50]~258_combout\) # (\Mid|OC[50]~259_combout\)))) # (!\Mid|OC[51]~162_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mid|BLAN|ForGenerate:33:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|BP~0_combout\,
	datab => \Mid|OC[50]~258_combout\,
	datac => \Mid|OC[51]~162_combout\,
	datad => \Mid|OC[50]~259_combout\,
	combout => \Mid|OC[51]~260_combout\);

-- Location: LCCOMB_X80_Y51_N10
\Bot|S[50]~112\ : cycloneive_lcell_comb
-- Equation(s):
-- \Bot|S[50]~112_combout\ = (\Mid|OC[58]~406_combout\ & (((\Mid|BLAN|ForGenerate:36:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|BP~2_combout\ & \Mid|OC[51]~260_combout\)) # (!\Mid|OC[50]~175_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mid|OC[58]~406_combout\,
	datab => \Mid|BLAN|ForGenerate:36:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|BP~2_combout\,
	datac => \Mid|OC[51]~260_combout\,
	datad => \Mid|OC[50]~175_combout\,
	combout => \Bot|S[50]~112_combout\);

-- Location: LCCOMB_X80_Y51_N0
\Mid|OC[58]~257\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|OC[58]~257_combout\ = (\Mid|BLAN|ForGenerate:45:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|BP~combout\ & (\Mid|BLAN|ForGenerate:49:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|bG~1_combout\ & (\B[43]~input_o\ $ 
-- (\A[43]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[43]~input_o\,
	datab => \Mid|BLAN|ForGenerate:45:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|BP~combout\,
	datac => \A[43]~input_o\,
	datad => \Mid|BLAN|ForGenerate:49:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|bG~1_combout\,
	combout => \Mid|OC[58]~257_combout\);

-- Location: LCCOMB_X80_Y51_N28
\Bot|S[50]~113\ : cycloneive_lcell_comb
-- Equation(s):
-- \Bot|S[50]~113_combout\ = (\Bot|S[50]~112_combout\ & ((\Mid|BLAN|ForGenerate:38:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|BP~0_combout\) # ((\Mid|OC[58]~257_combout\ & !\Mid|OC[43]~209_combout\)))) # (!\Bot|S[50]~112_combout\ 
-- & (\Mid|OC[58]~257_combout\ & ((!\Mid|OC[43]~209_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Bot|S[50]~112_combout\,
	datab => \Mid|OC[58]~257_combout\,
	datac => \Mid|BLAN|ForGenerate:38:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|BP~0_combout\,
	datad => \Mid|OC[43]~209_combout\,
	combout => \Bot|S[50]~113_combout\);

-- Location: LCCOMB_X80_Y51_N6
\Bot|S[50]~114\ : cycloneive_lcell_comb
-- Equation(s):
-- \Bot|S[50]~114_combout\ = \B[50]~input_o\ $ (\A[50]~input_o\ $ (((\Bot|S[50]~113_combout\) # (!\Mid|OC[50]~256_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[50]~input_o\,
	datab => \A[50]~input_o\,
	datac => \Mid|OC[50]~256_combout\,
	datad => \Bot|S[50]~113_combout\,
	combout => \Bot|S[50]~114_combout\);

-- Location: IOIBUF_X89_Y73_N8
\A[51]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(51),
	o => \A[51]~input_o\);

-- Location: IOIBUF_X49_Y73_N22
\B[51]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(51),
	o => \B[51]~input_o\);

-- Location: LCCOMB_X80_Y57_N0
\Top|P[51]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Top|P\(51) = \A[51]~input_o\ $ (\B[51]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[51]~input_o\,
	datac => \B[51]~input_o\,
	combout => \Top|P\(51));

-- Location: LCCOMB_X80_Y54_N24
\Mid|BLAN|ForGenerate:50:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|BP\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|BLAN|ForGenerate:50:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|BP~combout\ = (\A[50]~input_o\ & (!\B[50]~input_o\ & (\A[49]~input_o\ $ (\B[49]~input_o\)))) # (!\A[50]~input_o\ & (\B[50]~input_o\ & (\A[49]~input_o\ $ 
-- (\B[49]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[50]~input_o\,
	datab => \A[49]~input_o\,
	datac => \B[50]~input_o\,
	datad => \B[49]~input_o\,
	combout => \Mid|BLAN|ForGenerate:50:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|BP~combout\);

-- Location: LCCOMB_X80_Y54_N26
\Mid|BLAN|ForGenerate:50:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|bG~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|BLAN|ForGenerate:50:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|bG~1_combout\ = (\Mid|BLAN|ForGenerate:50:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|BP~combout\ & (\Top|P\(47) & (\B[48]~input_o\ $ (\A[48]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mid|BLAN|ForGenerate:50:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|BP~combout\,
	datab => \B[48]~input_o\,
	datac => \A[48]~input_o\,
	datad => \Top|P\(47),
	combout => \Mid|BLAN|ForGenerate:50:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|bG~1_combout\);

-- Location: LCCOMB_X79_Y53_N10
\Mid|OC[51]~262\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|OC[51]~262_combout\ = (\Mid|OC[44]~196_combout\ & (\Mid|BLAN|ForGenerate:53:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Lower|Recur:Upper|BP~0_combout\ & (\Mid|OC[44]~211_combout\ & 
-- \Mid|BLAN|ForGenerate:50:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|bG~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mid|OC[44]~196_combout\,
	datab => \Mid|BLAN|ForGenerate:53:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Lower|Recur:Upper|BP~0_combout\,
	datac => \Mid|OC[44]~211_combout\,
	datad => \Mid|BLAN|ForGenerate:50:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|bG~1_combout\,
	combout => \Mid|OC[51]~262_combout\);

-- Location: LCCOMB_X80_Y54_N4
\Mid|BLAN|ForGenerate:50:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|BLAN|ForGenerate:50:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\ = (\A[50]~input_o\ & ((\B[50]~input_o\) # ((\A[49]~input_o\ & \B[49]~input_o\)))) # (!\A[50]~input_o\ & (\A[49]~input_o\ & (\B[50]~input_o\ & 
-- \B[49]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[50]~input_o\,
	datab => \A[49]~input_o\,
	datac => \B[50]~input_o\,
	datad => \B[49]~input_o\,
	combout => \Mid|BLAN|ForGenerate:50:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\);

-- Location: LCCOMB_X77_Y54_N18
\Mid|OC[63]~264\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|OC[63]~264_combout\ = (!\Mid|BLAN|ForGenerate:50:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\ & ((!\Mid|BLAN|ForGenerate:50:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|BP~combout\) 
-- # (!\Mid|BLAN|ForGenerate:48:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mid|BLAN|ForGenerate:48:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\,
	datab => \Mid|BLAN|ForGenerate:50:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|BP~combout\,
	datac => \Mid|BLAN|ForGenerate:50:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\,
	combout => \Mid|OC[63]~264_combout\);

-- Location: LCCOMB_X79_Y53_N20
\Mid|OC[51]~265\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|OC[51]~265_combout\ = (\Mid|OC[63]~264_combout\ & ((\Mid|BLAN|ForGenerate:50:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\) # (!\Mid|BLAN|ForGenerate:50:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|bG~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mid|OC[63]~264_combout\,
	datab => \Mid|BLAN|ForGenerate:50:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\,
	datad => \Mid|BLAN|ForGenerate:50:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|bG~1_combout\,
	combout => \Mid|OC[51]~265_combout\);

-- Location: LCCOMB_X81_Y50_N22
\Mid|OC[51]~263\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|OC[51]~263_combout\ = (\Mid|BLAN|ForGenerate:35:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\ & \Mid|BLAN|ForGenerate:37:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mid|BLAN|ForGenerate:35:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\,
	datad => \Mid|BLAN|ForGenerate:37:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\,
	combout => \Mid|OC[51]~263_combout\);

-- Location: LCCOMB_X79_Y53_N6
\Mid|OC[51]~266\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|OC[51]~266_combout\ = ((\Mid|OC[51]~262_combout\ & ((\Mid|BLAN|ForGenerate:37:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\) # (\Mid|OC[51]~263_combout\)))) # (!\Mid|OC[51]~265_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mid|OC[51]~262_combout\,
	datab => \Mid|OC[51]~265_combout\,
	datac => \Mid|BLAN|ForGenerate:37:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\,
	datad => \Mid|OC[51]~263_combout\,
	combout => \Mid|OC[51]~266_combout\);

-- Location: LCCOMB_X79_Y53_N24
\Mid|OC[51]~267\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|OC[51]~267_combout\ = (\Mid|OC[51]~266_combout\) # ((\Mid|BLAN|ForGenerate:53:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Lower|Recur:Upper|BP~0_combout\ & (!\Mid|OC[44]~218_combout\ & 
-- \Mid|BLAN|ForGenerate:50:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|bG~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mid|OC[51]~266_combout\,
	datab => \Mid|BLAN|ForGenerate:53:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Lower|Recur:Upper|BP~0_combout\,
	datac => \Mid|OC[44]~218_combout\,
	datad => \Mid|BLAN|ForGenerate:50:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|bG~1_combout\,
	combout => \Mid|OC[51]~267_combout\);

-- Location: LCCOMB_X79_Y53_N16
\Mid|OC[51]~261\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|OC[51]~261_combout\ = (\Mid|OC[47]~404_combout\ & (\Mid|BLAN|ForGenerate:50:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|bG~1_combout\ & (\Mid|BLAN|ForGenerate:50:ColumnBlock|Recur:Upper|Recur:Lower|Recur:Upper|Recur:Upper|BP~0_combout\ & 
-- \Mid|OC[44]~196_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mid|OC[47]~404_combout\,
	datab => \Mid|BLAN|ForGenerate:50:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|bG~1_combout\,
	datac => \Mid|BLAN|ForGenerate:50:ColumnBlock|Recur:Upper|Recur:Lower|Recur:Upper|Recur:Upper|BP~0_combout\,
	datad => \Mid|OC[44]~196_combout\,
	combout => \Mid|OC[51]~261_combout\);

-- Location: LCCOMB_X80_Y57_N10
\Bot|S[51]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Bot|S\(51) = \Top|P\(51) $ (((\Mid|OC[51]~267_combout\) # ((\Mid|OC[51]~261_combout\ & \Mid|OC[51]~260_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Top|P\(51),
	datab => \Mid|OC[51]~267_combout\,
	datac => \Mid|OC[51]~261_combout\,
	datad => \Mid|OC[51]~260_combout\,
	combout => \Bot|S\(51));

-- Location: LCCOMB_X80_Y54_N22
\Mid|OC[56]~268\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|OC[56]~268_combout\ = (\B[50]~input_o\ & (!\A[50]~input_o\ & (\A[51]~input_o\ $ (\B[51]~input_o\)))) # (!\B[50]~input_o\ & (\A[50]~input_o\ & (\A[51]~input_o\ $ (\B[51]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[50]~input_o\,
	datab => \A[51]~input_o\,
	datac => \A[50]~input_o\,
	datad => \B[51]~input_o\,
	combout => \Mid|OC[56]~268_combout\);

-- Location: LCCOMB_X80_Y54_N8
\Mid|BLAN|ForGenerate:51:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|BP~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|BLAN|ForGenerate:51:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|BP~0_combout\ = (\Top|P\(48) & (\Mid|OC[56]~268_combout\ & (\B[49]~input_o\ $ (\A[49]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[49]~input_o\,
	datab => \Top|P\(48),
	datac => \A[49]~input_o\,
	datad => \Mid|OC[56]~268_combout\,
	combout => \Mid|BLAN|ForGenerate:51:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|BP~0_combout\);

-- Location: LCCOMB_X80_Y53_N10
\Mid|BLAN|ForGenerate:51:ColumnBlock|Recur:Upper|Recur:Lower|Recur:Upper|BP~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|BLAN|ForGenerate:51:ColumnBlock|Recur:Upper|Recur:Lower|Recur:Upper|BP~0_combout\ = (\Top|P\(34) & (\Mid|BLAN|ForGenerate:38:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|BP~0_combout\ & 
-- (\Mid|BLAN|ForGenerate:51:ColumnBlock|Recur:Upper|Recur:Lower|Recur:Upper|Recur:Upper|BP~0_combout\ & \Mid|BLAN|ForGenerate:33:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|BP~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Top|P\(34),
	datab => \Mid|BLAN|ForGenerate:38:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|BP~0_combout\,
	datac => \Mid|BLAN|ForGenerate:51:ColumnBlock|Recur:Upper|Recur:Lower|Recur:Upper|Recur:Upper|BP~0_combout\,
	datad => \Mid|BLAN|ForGenerate:33:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|BP~0_combout\,
	combout => \Mid|BLAN|ForGenerate:51:ColumnBlock|Recur:Upper|Recur:Lower|Recur:Upper|BP~0_combout\);

-- Location: LCCOMB_X83_Y49_N14
\Mid|OC[52]~271\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|OC[52]~271_combout\ = (!\Mid|BLAN|ForGenerate:38:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\ & 
-- ((!\Mid|BLAN|ForGenerate:36:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\) # (!\Mid|BLAN|ForGenerate:38:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|BP~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mid|BLAN|ForGenerate:38:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|BP~0_combout\,
	datac => \Mid|BLAN|ForGenerate:36:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\,
	datad => \Mid|BLAN|ForGenerate:38:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\,
	combout => \Mid|OC[52]~271_combout\);

-- Location: LCCOMB_X84_Y50_N28
\Mid|OC[52]~272\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|OC[52]~272_combout\ = ((\Mid|BLAN|ForGenerate:51:ColumnBlock|Recur:Upper|Recur:Lower|Recur:Upper|BP~0_combout\ & ((\Mid|BLAN|ForGenerate:36:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Lower|Recur:Upper|bG~0_combout\) # 
-- (\Mid|BLAN|ForGenerate:31:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\)))) # (!\Mid|OC[52]~271_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mid|BLAN|ForGenerate:36:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Lower|Recur:Upper|bG~0_combout\,
	datab => \Mid|BLAN|ForGenerate:31:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\,
	datac => \Mid|BLAN|ForGenerate:51:ColumnBlock|Recur:Upper|Recur:Lower|Recur:Upper|BP~0_combout\,
	datad => \Mid|OC[52]~271_combout\,
	combout => \Mid|OC[52]~272_combout\);

-- Location: LCCOMB_X84_Y50_N6
\Mid|OC[52]~273\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|OC[52]~273_combout\ = (\Mid|OC[52]~272_combout\) # ((!\Mid|OC[52]~164_combout\ & (\Mid|BLAN|ForGenerate:38:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|BP~0_combout\ & 
-- \Mid|BLAN|ForGenerate:51:ColumnBlock|Recur:Upper|Recur:Lower|Recur:Upper|Recur:Upper|BP~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mid|OC[52]~164_combout\,
	datab => \Mid|BLAN|ForGenerate:38:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|BP~0_combout\,
	datac => \Mid|BLAN|ForGenerate:51:ColumnBlock|Recur:Upper|Recur:Lower|Recur:Upper|Recur:Upper|BP~0_combout\,
	datad => \Mid|OC[52]~272_combout\,
	combout => \Mid|OC[52]~273_combout\);

-- Location: LCCOMB_X83_Y51_N14
\Mid|BLAN|ForGenerate:51:ColumnBlock|Recur:Upper|Recur:Lower|Recur:Upper|Recur:Upper|BP~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|BLAN|ForGenerate:51:ColumnBlock|Recur:Upper|Recur:Lower|Recur:Upper|Recur:Upper|BP~1_combout\ = (\Mid|BLAN|ForGenerate:51:ColumnBlock|Recur:Upper|Recur:Lower|Recur:Upper|Recur:Upper|BP~0_combout\ & 
-- \Mid|BLAN|ForGenerate:38:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|BP~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mid|BLAN|ForGenerate:51:ColumnBlock|Recur:Upper|Recur:Lower|Recur:Upper|Recur:Upper|BP~0_combout\,
	datac => \Mid|BLAN|ForGenerate:38:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|BP~0_combout\,
	combout => \Mid|BLAN|ForGenerate:51:ColumnBlock|Recur:Upper|Recur:Lower|Recur:Upper|Recur:Upper|BP~1_combout\);

-- Location: LCCOMB_X84_Y50_N8
\Mid|OC[52]~274\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|OC[52]~274_combout\ = (\Mid|BLAN|ForGenerate:34:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|BP~0_combout\ & (\Mid|BLAN|ForGenerate:36:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Lower|Recur:Upper|BP~3_combout\ & 
-- (\Mid|BLAN|ForGenerate:38:ColumnBlock|Recur:Upper|Recur:Lower|Recur:Upper|Recur:Upper|BP~0_combout\ & \Mid|BLAN|ForGenerate:51:ColumnBlock|Recur:Upper|Recur:Lower|Recur:Upper|Recur:Upper|BP~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mid|BLAN|ForGenerate:34:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|BP~0_combout\,
	datab => \Mid|BLAN|ForGenerate:36:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Lower|Recur:Upper|BP~3_combout\,
	datac => \Mid|BLAN|ForGenerate:38:ColumnBlock|Recur:Upper|Recur:Lower|Recur:Upper|Recur:Upper|BP~0_combout\,
	datad => \Mid|BLAN|ForGenerate:51:ColumnBlock|Recur:Upper|Recur:Lower|Recur:Upper|Recur:Upper|BP~1_combout\,
	combout => \Mid|OC[52]~274_combout\);

-- Location: LCCOMB_X84_Y50_N2
\Mid|OC[52]~270\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|OC[52]~270_combout\ = (\Mid|BLAN|ForGenerate:36:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Lower|Recur:Upper|BP~3_combout\ & (\Mid|BLAN|ForGenerate:51:ColumnBlock|Recur:Upper|Recur:Lower|Recur:Upper|BP~0_combout\ & 
-- ((\Mid|BLAN|ForGenerate:51:ColumnBlock|Recur:Upper|Recur:Lower|bG~0_combout\) # (\Mid|BLAN|ForGenerate:28:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mid|BLAN|ForGenerate:51:ColumnBlock|Recur:Upper|Recur:Lower|bG~0_combout\,
	datab => \Mid|BLAN|ForGenerate:36:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Lower|Recur:Upper|BP~3_combout\,
	datac => \Mid|BLAN|ForGenerate:51:ColumnBlock|Recur:Upper|Recur:Lower|Recur:Upper|BP~0_combout\,
	datad => \Mid|BLAN|ForGenerate:28:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\,
	combout => \Mid|OC[52]~270_combout\);

-- Location: LCCOMB_X84_Y50_N26
\Mid|OC[52]~275\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|OC[52]~275_combout\ = (\Mid|OC[52]~273_combout\) # ((\Mid|OC[52]~270_combout\) # ((\Mid|OC[52]~274_combout\ & \Mid|OC[26]~122_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mid|OC[52]~273_combout\,
	datab => \Mid|OC[52]~274_combout\,
	datac => \Mid|OC[26]~122_combout\,
	datad => \Mid|OC[52]~270_combout\,
	combout => \Mid|OC[52]~275_combout\);

-- Location: LCCOMB_X76_Y53_N22
\Bot|S[52]~115\ : cycloneive_lcell_comb
-- Equation(s):
-- \Bot|S[52]~115_combout\ = (\Top|P\(45) & (((\Mid|OC[45]~403_combout\ & \Mid|OC[52]~275_combout\)) # (!\Mid|OC[45]~221_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Top|P\(45),
	datab => \Mid|OC[45]~403_combout\,
	datac => \Mid|OC[45]~221_combout\,
	datad => \Mid|OC[52]~275_combout\,
	combout => \Bot|S[52]~115_combout\);

-- Location: LCCOMB_X77_Y54_N28
\Bot|S[52]~116\ : cycloneive_lcell_comb
-- Equation(s):
-- \Bot|S[52]~116_combout\ = (\Mid|BLAN|ForGenerate:47:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\) # ((\Mid|OC[48]~248_combout\ & 
-- ((\Mid|BLAN|ForGenerate:51:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\) # (\Bot|S[52]~115_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mid|BLAN|ForGenerate:51:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\,
	datab => \Bot|S[52]~115_combout\,
	datac => \Mid|BLAN|ForGenerate:47:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\,
	datad => \Mid|OC[48]~248_combout\,
	combout => \Bot|S[52]~116_combout\);

-- Location: IOIBUF_X38_Y73_N1
\B[52]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(52),
	o => \B[52]~input_o\);

-- Location: IOIBUF_X38_Y73_N22
\A[52]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(52),
	o => \A[52]~input_o\);

-- Location: LCCOMB_X80_Y57_N4
\Top|P[52]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Top|P\(52) = \B[52]~input_o\ $ (\A[52]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[52]~input_o\,
	datad => \A[52]~input_o\,
	combout => \Top|P\(52));

-- Location: LCCOMB_X80_Y54_N2
\Mid|BLAN|ForGenerate:51:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|BLAN|ForGenerate:51:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\ = (\A[51]~input_o\ & ((\B[51]~input_o\) # ((\B[50]~input_o\ & \A[50]~input_o\)))) # (!\A[51]~input_o\ & (\B[50]~input_o\ & (\A[50]~input_o\ & 
-- \B[51]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[50]~input_o\,
	datab => \A[51]~input_o\,
	datac => \A[50]~input_o\,
	datad => \B[51]~input_o\,
	combout => \Mid|BLAN|ForGenerate:51:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\);

-- Location: LCCOMB_X81_Y54_N24
\Mid|OC[60]~269\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|OC[60]~269_combout\ = (!\Mid|BLAN|ForGenerate:51:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\ & ((!\Mid|OC[56]~268_combout\) # 
-- (!\Mid|BLAN|ForGenerate:49:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mid|BLAN|ForGenerate:51:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\,
	datac => \Mid|BLAN|ForGenerate:49:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\,
	datad => \Mid|OC[56]~268_combout\,
	combout => \Mid|OC[60]~269_combout\);

-- Location: LCCOMB_X81_Y54_N18
\Bot|S[52]~117\ : cycloneive_lcell_comb
-- Equation(s):
-- \Bot|S[52]~117_combout\ = \Top|P\(52) $ ((((\Mid|BLAN|ForGenerate:51:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|BP~0_combout\ & \Bot|S[52]~116_combout\)) # (!\Mid|OC[60]~269_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mid|BLAN|ForGenerate:51:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|BP~0_combout\,
	datab => \Bot|S[52]~116_combout\,
	datac => \Top|P\(52),
	datad => \Mid|OC[60]~269_combout\,
	combout => \Bot|S[52]~117_combout\);

-- Location: LCCOMB_X80_Y54_N20
\Mid|BLAN|ForGenerate:51:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|BP~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|BLAN|ForGenerate:51:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|BP~1_combout\ = (\Mid|OC[56]~268_combout\ & (\B[49]~input_o\ $ (\A[49]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[49]~input_o\,
	datac => \A[49]~input_o\,
	datad => \Mid|OC[56]~268_combout\,
	combout => \Mid|BLAN|ForGenerate:51:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|BP~1_combout\);

-- Location: LCCOMB_X77_Y54_N20
\Mid|OC[53]~407\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|OC[53]~407_combout\ = (\Mid|BLAN|ForGenerate:48:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|BP~0_combout\ & (\Mid|BLAN|ForGenerate:51:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|BP~1_combout\ & 
-- (\B[52]~input_o\ $ (\A[52]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[52]~input_o\,
	datab => \A[52]~input_o\,
	datac => \Mid|BLAN|ForGenerate:48:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|BP~0_combout\,
	datad => \Mid|BLAN|ForGenerate:51:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|BP~1_combout\,
	combout => \Mid|OC[53]~407_combout\);

-- Location: LCCOMB_X80_Y57_N30
\Mid|BLAN|ForGenerate:52:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|BLAN|ForGenerate:52:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\ = (\B[52]~input_o\ & ((\A[52]~input_o\) # ((\B[51]~input_o\ & \A[51]~input_o\)))) # (!\B[52]~input_o\ & (\A[52]~input_o\ & (\B[51]~input_o\ & 
-- \A[51]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[52]~input_o\,
	datab => \A[52]~input_o\,
	datac => \B[51]~input_o\,
	datad => \A[51]~input_o\,
	combout => \Mid|BLAN|ForGenerate:52:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\);

-- Location: LCCOMB_X80_Y56_N8
\Mid|OC[53]~276\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|OC[53]~276_combout\ = (!\Mid|BLAN|ForGenerate:52:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\ & (((!\Top|P\(51)) # (!\Top|P\(52))) # 
-- (!\Mid|BLAN|ForGenerate:50:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mid|BLAN|ForGenerate:52:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\,
	datab => \Mid|BLAN|ForGenerate:50:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\,
	datac => \Top|P\(52),
	datad => \Top|P\(51),
	combout => \Mid|OC[53]~276_combout\);

-- Location: LCCOMB_X77_Y54_N22
\Mid|OC[53]~277\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|OC[53]~277_combout\ = (\Mid|OC[53]~276_combout\ & (((!\Top|P\(52)) # (!\Mid|BLAN|ForGenerate:51:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|BP~1_combout\)) # 
-- (!\Mid|BLAN|ForGenerate:48:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mid|BLAN|ForGenerate:48:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\,
	datab => \Mid|BLAN|ForGenerate:51:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|BP~1_combout\,
	datac => \Mid|OC[53]~276_combout\,
	datad => \Top|P\(52),
	combout => \Mid|OC[53]~277_combout\);

-- Location: LCCOMB_X76_Y54_N20
\Mid|OC[53]~278\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|OC[53]~278_combout\ = ((\B[46]~input_o\ & (\A[46]~input_o\ & \Mid|OC[53]~407_combout\))) # (!\Mid|OC[53]~277_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[46]~input_o\,
	datab => \A[46]~input_o\,
	datac => \Mid|OC[53]~407_combout\,
	datad => \Mid|OC[53]~277_combout\,
	combout => \Mid|OC[53]~278_combout\);

-- Location: LCCOMB_X76_Y54_N30
\Mid|OC[53]~279\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|OC[53]~279_combout\ = (\Mid|OC[53]~407_combout\ & (\B[46]~input_o\ $ (\A[46]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[46]~input_o\,
	datab => \A[46]~input_o\,
	datac => \Mid|OC[53]~407_combout\,
	combout => \Mid|OC[53]~279_combout\);

-- Location: LCCOMB_X76_Y53_N16
\Mid|OC[53]~280\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|OC[53]~280_combout\ = (\Mid|BLAN|ForGenerate:45:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|BP~combout\ & \Mid|BLAN|ForGenerate:43:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mid|BLAN|ForGenerate:45:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|BP~combout\,
	datad => \Mid|BLAN|ForGenerate:43:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\,
	combout => \Mid|OC[53]~280_combout\);

-- Location: LCCOMB_X76_Y53_N10
\Mid|OC[53]~281\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|OC[53]~281_combout\ = (\Mid|OC[53]~278_combout\) # ((\Mid|OC[53]~279_combout\ & ((\Mid|BLAN|ForGenerate:45:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\) # (\Mid|OC[53]~280_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mid|BLAN|ForGenerate:45:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\,
	datab => \Mid|OC[53]~278_combout\,
	datac => \Mid|OC[53]~279_combout\,
	datad => \Mid|OC[53]~280_combout\,
	combout => \Mid|OC[53]~281_combout\);

-- Location: LCCOMB_X76_Y53_N20
\Bot|S[53]~118\ : cycloneive_lcell_comb
-- Equation(s):
-- \Bot|S[53]~118_combout\ = (\Mid|BLAN|ForGenerate:45:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|BP~combout\ & (\Mid|BLAN|ForGenerate:43:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|BP~0_combout\ & 
-- \Mid|OC[53]~279_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mid|BLAN|ForGenerate:45:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|BP~combout\,
	datab => \Mid|BLAN|ForGenerate:43:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|BP~0_combout\,
	datac => \Mid|OC[53]~279_combout\,
	combout => \Bot|S[53]~118_combout\);

-- Location: LCCOMB_X76_Y53_N30
\Bot|S[53]~119\ : cycloneive_lcell_comb
-- Equation(s):
-- \Bot|S[53]~119_combout\ = (\Mid|BLAN|ForGenerate:41:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\) # ((\Mid|BLAN|ForGenerate:41:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\) # 
-- ((\Mid|OC[53]~197_combout\ & \Mid|OC[52]~275_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mid|BLAN|ForGenerate:41:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\,
	datab => \Mid|BLAN|ForGenerate:41:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\,
	datac => \Mid|OC[53]~197_combout\,
	datad => \Mid|OC[52]~275_combout\,
	combout => \Bot|S[53]~119_combout\);

-- Location: IOIBUF_X87_Y73_N8
\B[53]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(53),
	o => \B[53]~input_o\);

-- Location: IOIBUF_X107_Y73_N22
\A[53]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(53),
	o => \A[53]~input_o\);

-- Location: LCCOMB_X80_Y57_N24
\Top|P[53]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Top|P\(53) = \B[53]~input_o\ $ (\A[53]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[53]~input_o\,
	datac => \A[53]~input_o\,
	combout => \Top|P\(53));

-- Location: LCCOMB_X76_Y53_N0
\Bot|S[53]~120\ : cycloneive_lcell_comb
-- Equation(s):
-- \Bot|S[53]~120_combout\ = \Top|P\(53) $ (((\Mid|OC[53]~281_combout\) # ((\Bot|S[53]~118_combout\ & \Bot|S[53]~119_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mid|OC[53]~281_combout\,
	datab => \Bot|S[53]~118_combout\,
	datac => \Bot|S[53]~119_combout\,
	datad => \Top|P\(53),
	combout => \Bot|S[53]~120_combout\);

-- Location: IOIBUF_X72_Y73_N15
\A[54]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(54),
	o => \A[54]~input_o\);

-- Location: IOIBUF_X58_Y73_N1
\B[54]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(54),
	o => \B[54]~input_o\);

-- Location: LCCOMB_X80_Y57_N16
\Top|P[54]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Top|P\(54) = \A[54]~input_o\ $ (\B[54]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[54]~input_o\,
	datad => \B[54]~input_o\,
	combout => \Top|P\(54));

-- Location: LCCOMB_X80_Y52_N22
\Mid|OC[63]~288\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|OC[63]~288_combout\ = (\Mid|BLAN|ForGenerate:46:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\) # ((\Mid|BLAN|ForGenerate:48:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|bG~1_combout\ & 
-- \Mid|BLAN|ForGenerate:44:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mid|BLAN|ForGenerate:46:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\,
	datac => \Mid|BLAN|ForGenerate:48:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|bG~1_combout\,
	datad => \Mid|BLAN|ForGenerate:44:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\,
	combout => \Mid|OC[63]~288_combout\);

-- Location: LCCOMB_X80_Y57_N26
\Mid|BLAN|ForGenerate:53:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|BP~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|BLAN|ForGenerate:53:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|BP~0_combout\ = (\Mid|OC[56]~268_combout\ & (\Top|P\(52) & (\B[53]~input_o\ $ (\A[53]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[53]~input_o\,
	datab => \A[53]~input_o\,
	datac => \Mid|OC[56]~268_combout\,
	datad => \Top|P\(52),
	combout => \Mid|BLAN|ForGenerate:53:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|BP~0_combout\);

-- Location: LCCOMB_X79_Y54_N16
\Mid|OC[54]~408\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|OC[54]~408_combout\ = (\Mid|BLAN|ForGenerate:49:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|BP~combout\ & (\Mid|BLAN|ForGenerate:53:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|BP~0_combout\ & 
-- (\B[47]~input_o\ $ (\A[47]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[47]~input_o\,
	datab => \Mid|BLAN|ForGenerate:49:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|BP~combout\,
	datac => \A[47]~input_o\,
	datad => \Mid|BLAN|ForGenerate:53:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|BP~0_combout\,
	combout => \Mid|OC[54]~408_combout\);

-- Location: LCCOMB_X79_Y52_N26
\Mid|BLAN|ForGenerate:53:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Lower|Recur:Upper|BP~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|BLAN|ForGenerate:53:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Lower|Recur:Upper|BP~1_combout\ = (\Mid|BLAN|ForGenerate:53:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Lower|Recur:Upper|BP~0_combout\ & (\A[43]~input_o\ $ (\B[43]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[43]~input_o\,
	datab => \Mid|BLAN|ForGenerate:53:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Lower|Recur:Upper|BP~0_combout\,
	datad => \B[43]~input_o\,
	combout => \Mid|BLAN|ForGenerate:53:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Lower|Recur:Upper|BP~1_combout\);

-- Location: LCCOMB_X77_Y53_N30
\Mid|OC[54]~289\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|OC[54]~289_combout\ = (\Top|P\(39) & (\Mid|BLAN|ForGenerate:37:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\ & (\A[38]~input_o\ $ (\B[38]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[38]~input_o\,
	datab => \Top|P\(39),
	datac => \Mid|BLAN|ForGenerate:37:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\,
	datad => \B[38]~input_o\,
	combout => \Mid|OC[54]~289_combout\);

-- Location: LCCOMB_X80_Y52_N24
\Mid|OC[54]~290\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|OC[54]~290_combout\ = (\Mid|BLAN|ForGenerate:39:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\) # ((\Mid|BLAN|ForGenerate:38:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|BP~0_combout\ & 
-- (\Top|P\(39) & !\Mid|BLAN|ForGenerate:47:ColumnBlock|Recur:Upper|Recur:Lower|bG~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mid|BLAN|ForGenerate:38:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|BP~0_combout\,
	datab => \Top|P\(39),
	datac => \Mid|BLAN|ForGenerate:39:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\,
	datad => \Mid|BLAN|ForGenerate:47:ColumnBlock|Recur:Upper|Recur:Lower|bG~0_combout\,
	combout => \Mid|OC[54]~290_combout\);

-- Location: LCCOMB_X80_Y52_N18
\Mid|OC[54]~291\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|OC[54]~291_combout\ = (\Mid|OC[54]~208_combout\ & (((!\Mid|OC[54]~289_combout\ & !\Mid|OC[54]~290_combout\)) # (!\Mid|BLAN|ForGenerate:42:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|bG~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mid|OC[54]~289_combout\,
	datab => \Mid|OC[54]~290_combout\,
	datac => \Mid|OC[54]~208_combout\,
	datad => \Mid|BLAN|ForGenerate:42:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|bG~3_combout\,
	combout => \Mid|OC[54]~291_combout\);

-- Location: LCCOMB_X80_Y52_N28
\Mid|OC[54]~292\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|OC[54]~292_combout\ = (\Mid|OC[54]~408_combout\ & ((\Mid|OC[63]~288_combout\) # ((\Mid|BLAN|ForGenerate:53:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Lower|Recur:Upper|BP~1_combout\ & !\Mid|OC[54]~291_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mid|OC[63]~288_combout\,
	datab => \Mid|OC[54]~408_combout\,
	datac => \Mid|BLAN|ForGenerate:53:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Lower|Recur:Upper|BP~1_combout\,
	datad => \Mid|OC[54]~291_combout\,
	combout => \Mid|OC[54]~292_combout\);

-- Location: LCCOMB_X80_Y57_N28
\Mid|BLAN|ForGenerate:53:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|BLAN|ForGenerate:53:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\ = (\A[53]~input_o\ & ((\B[53]~input_o\) # ((\B[52]~input_o\ & \A[52]~input_o\)))) # (!\A[53]~input_o\ & (\B[52]~input_o\ & (\A[52]~input_o\ & 
-- \B[53]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[52]~input_o\,
	datab => \A[52]~input_o\,
	datac => \A[53]~input_o\,
	datad => \B[53]~input_o\,
	combout => \Mid|BLAN|ForGenerate:53:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\);

-- Location: LCCOMB_X80_Y57_N6
\Mid|OC[54]~286\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|OC[54]~286_combout\ = (!\Mid|BLAN|ForGenerate:53:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\ & (((!\Top|P\(53)) # 
-- (!\Mid|BLAN|ForGenerate:51:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\)) # (!\Top|P\(52))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Top|P\(52),
	datab => \Mid|BLAN|ForGenerate:53:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\,
	datac => \Mid|BLAN|ForGenerate:51:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\,
	datad => \Top|P\(53),
	combout => \Mid|OC[54]~286_combout\);

-- Location: LCCOMB_X79_Y54_N26
\Mid|OC[54]~285\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|OC[54]~285_combout\ = (\Mid|BLAN|ForGenerate:49:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\) # ((\B[47]~input_o\ & (\A[47]~input_o\ & 
-- \Mid|BLAN|ForGenerate:49:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|BP~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mid|BLAN|ForGenerate:49:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\,
	datab => \B[47]~input_o\,
	datac => \A[47]~input_o\,
	datad => \Mid|BLAN|ForGenerate:49:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|BP~combout\,
	combout => \Mid|OC[54]~285_combout\);

-- Location: LCCOMB_X79_Y54_N4
\Mid|OC[54]~287\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|OC[54]~287_combout\ = ((\Mid|OC[54]~285_combout\ & \Mid|BLAN|ForGenerate:53:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|BP~0_combout\)) # (!\Mid|OC[54]~286_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mid|OC[54]~286_combout\,
	datac => \Mid|OC[54]~285_combout\,
	datad => \Mid|BLAN|ForGenerate:53:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|BP~0_combout\,
	combout => \Mid|OC[54]~287_combout\);

-- Location: LCCOMB_X80_Y52_N10
\Mid|OC[54]~282\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|OC[54]~282_combout\ = (\Mid|OC[54]~408_combout\ & (\Mid|BLAN|ForGenerate:53:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Lower|Recur:Upper|BP~1_combout\ & \Mid|BLAN|ForGenerate:42:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|bG~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mid|OC[54]~408_combout\,
	datac => \Mid|BLAN|ForGenerate:53:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Lower|Recur:Upper|BP~1_combout\,
	datad => \Mid|BLAN|ForGenerate:42:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|bG~3_combout\,
	combout => \Mid|OC[54]~282_combout\);

-- Location: LCCOMB_X80_Y52_N4
\Mid|OC[54]~283\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|OC[54]~283_combout\ = (\Mid|BLAN|ForGenerate:38:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|BP~0_combout\ & (\Top|P\(39) & (\Mid|BLAN|ForGenerate:35:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|BP~0_combout\ & 
-- \Mid|OC[54]~282_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mid|BLAN|ForGenerate:38:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|BP~0_combout\,
	datab => \Top|P\(39),
	datac => \Mid|BLAN|ForGenerate:35:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|BP~0_combout\,
	datad => \Mid|OC[54]~282_combout\,
	combout => \Mid|OC[54]~283_combout\);

-- Location: LCCOMB_X88_Y51_N30
\Mid|OC[54]~409\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|OC[54]~409_combout\ = (\Mid|OC[27]~422_combout\ & (\B[27]~input_o\ $ (\A[27]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[27]~input_o\,
	datab => \A[27]~input_o\,
	datad => \Mid|OC[27]~422_combout\,
	combout => \Mid|OC[54]~409_combout\);

-- Location: LCCOMB_X88_Y50_N6
\Mid|OC[54]~284\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|OC[54]~284_combout\ = (\Mid|OC[54]~283_combout\ & (((\Mid|OC[54]~409_combout\ & \Mid|OC[38]~158_combout\)) # (!\Mid|OC[44]~212_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mid|OC[54]~283_combout\,
	datab => \Mid|OC[44]~212_combout\,
	datac => \Mid|OC[54]~409_combout\,
	datad => \Mid|OC[38]~158_combout\,
	combout => \Mid|OC[54]~284_combout\);

-- Location: LCCOMB_X88_Y50_N0
\Bot|S[54]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Bot|S\(54) = \Top|P\(54) $ (((\Mid|OC[54]~292_combout\) # ((\Mid|OC[54]~287_combout\) # (\Mid|OC[54]~284_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Top|P\(54),
	datab => \Mid|OC[54]~292_combout\,
	datac => \Mid|OC[54]~287_combout\,
	datad => \Mid|OC[54]~284_combout\,
	combout => \Bot|S\(54));

-- Location: LCCOMB_X79_Y54_N2
\Mid|OC[55]~410\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|OC[55]~410_combout\ = (\Mid|OC[44]~211_combout\ & (\Mid|BLAN|ForGenerate:53:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Lower|Recur:Upper|BP~0_combout\ & (\B[47]~input_o\ $ (\A[47]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mid|OC[44]~211_combout\,
	datab => \B[47]~input_o\,
	datac => \A[47]~input_o\,
	datad => \Mid|BLAN|ForGenerate:53:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Lower|Recur:Upper|BP~0_combout\,
	combout => \Mid|OC[55]~410_combout\);

-- Location: LCCOMB_X80_Y56_N2
\Mid|BLAN|ForGenerate:54:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|BP~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|BLAN|ForGenerate:54:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|BP~0_combout\ = (\Top|P\(52) & (\Top|P\(54) & (\Top|P\(51) & \Top|P\(53))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Top|P\(52),
	datab => \Top|P\(54),
	datac => \Top|P\(51),
	datad => \Top|P\(53),
	combout => \Mid|BLAN|ForGenerate:54:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|BP~0_combout\);

-- Location: LCCOMB_X80_Y54_N6
\Mid|OC[55]~411\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|OC[55]~411_combout\ = (\Mid|BLAN|ForGenerate:50:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|BP~combout\ & (\Mid|BLAN|ForGenerate:54:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|BP~0_combout\ & 
-- (\B[48]~input_o\ $ (\A[48]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mid|BLAN|ForGenerate:50:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|BP~combout\,
	datab => \B[48]~input_o\,
	datac => \A[48]~input_o\,
	datad => \Mid|BLAN|ForGenerate:54:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|BP~0_combout\,
	combout => \Mid|OC[55]~411_combout\);

-- Location: LCCOMB_X81_Y51_N18
\Mid|OC[55]~293\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|OC[55]~293_combout\ = (\Mid|BLAN|ForGenerate:59:ColumnBlock|Recur:Upper|Recur:Lower|Recur:Upper|BP~0_combout\ & (\Mid|OC[55]~410_combout\ & \Mid|OC[55]~411_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mid|BLAN|ForGenerate:59:ColumnBlock|Recur:Upper|Recur:Lower|Recur:Upper|BP~0_combout\,
	datab => \Mid|OC[55]~410_combout\,
	datac => \Mid|OC[55]~411_combout\,
	combout => \Mid|OC[55]~293_combout\);

-- Location: LCCOMB_X81_Y51_N20
\Mid|OC[55]~294\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|OC[55]~294_combout\ = (\Mid|OC[60]~400_combout\ & (\Mid|BLAN|ForGenerate:29:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|BP~0_combout\ & 
-- (\Mid|BLAN|ForGenerate:36:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Lower|Recur:Upper|BP~2_combout\ & \Mid|OC[55]~293_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mid|OC[60]~400_combout\,
	datab => \Mid|BLAN|ForGenerate:29:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|BP~0_combout\,
	datac => \Mid|BLAN|ForGenerate:36:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Lower|Recur:Upper|BP~2_combout\,
	datad => \Mid|OC[55]~293_combout\,
	combout => \Mid|OC[55]~294_combout\);

-- Location: LCCOMB_X88_Y51_N0
\Mid|OC[55]~295\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|OC[55]~295_combout\ = (\Mid|OC[55]~294_combout\ & ((\B[27]~input_o\ & ((\A[27]~input_o\) # (\Mid|OC[27]~422_combout\))) # (!\B[27]~input_o\ & (\A[27]~input_o\ & \Mid|OC[27]~422_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[27]~input_o\,
	datab => \A[27]~input_o\,
	datac => \Mid|OC[55]~294_combout\,
	datad => \Mid|OC[27]~422_combout\,
	combout => \Mid|OC[55]~295_combout\);

-- Location: IOIBUF_X62_Y73_N15
\A[55]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(55),
	o => \A[55]~input_o\);

-- Location: LCCOMB_X80_Y54_N18
\Mid|OC[55]~303\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|OC[55]~303_combout\ = (\Mid|OC[55]~410_combout\ & (\Top|P\(48) & (\Mid|BLAN|ForGenerate:50:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|BP~combout\ & 
-- \Mid|BLAN|ForGenerate:54:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|BP~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mid|OC[55]~410_combout\,
	datab => \Top|P\(48),
	datac => \Mid|BLAN|ForGenerate:50:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|BP~combout\,
	datad => \Mid|BLAN|ForGenerate:54:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|BP~0_combout\,
	combout => \Mid|OC[55]~303_combout\);

-- Location: LCCOMB_X79_Y54_N30
\Mid|OC[55]~298\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|OC[55]~298_combout\ = (!\Mid|BLAN|ForGenerate:47:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\ & ((!\Mid|OC[48]~248_combout\) # 
-- (!\Mid|BLAN|ForGenerate:45:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mid|BLAN|ForGenerate:47:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\,
	datab => \Mid|BLAN|ForGenerate:45:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\,
	datad => \Mid|OC[48]~248_combout\,
	combout => \Mid|OC[55]~298_combout\);

-- Location: LCCOMB_X79_Y52_N4
\Mid|BLAN|ForGenerate:54:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Lower|Recur:Upper|BP~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|BLAN|ForGenerate:54:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Lower|Recur:Upper|BP~0_combout\ = (\Top|P\(47) & (\Mid|BLAN|ForGenerate:48:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|bG~1_combout\ & (\A[44]~input_o\ $ (\B[44]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[44]~input_o\,
	datab => \B[44]~input_o\,
	datac => \Top|P\(47),
	datad => \Mid|BLAN|ForGenerate:48:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|bG~1_combout\,
	combout => \Mid|BLAN|ForGenerate:54:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Lower|Recur:Upper|BP~0_combout\);

-- Location: LCCOMB_X79_Y54_N8
\Mid|OC[55]~299\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|OC[55]~299_combout\ = (\Mid|OC[55]~411_combout\ & (((!\Mid|OC[55]~217_combout\ & \Mid|BLAN|ForGenerate:54:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Lower|Recur:Upper|BP~0_combout\)) # (!\Mid|OC[55]~298_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mid|OC[55]~217_combout\,
	datab => \Mid|OC[55]~411_combout\,
	datac => \Mid|OC[55]~298_combout\,
	datad => \Mid|BLAN|ForGenerate:54:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Lower|Recur:Upper|BP~0_combout\,
	combout => \Mid|OC[55]~299_combout\);

-- Location: LCCOMB_X80_Y57_N18
\Mid|BLAN|ForGenerate:54:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|BLAN|ForGenerate:54:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\ = (\A[54]~input_o\ & ((\B[54]~input_o\) # ((\B[53]~input_o\ & \A[53]~input_o\)))) # (!\A[54]~input_o\ & (\B[53]~input_o\ & (\A[53]~input_o\ & 
-- \B[54]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[53]~input_o\,
	datab => \A[54]~input_o\,
	datac => \A[53]~input_o\,
	datad => \B[54]~input_o\,
	combout => \Mid|BLAN|ForGenerate:54:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\);

-- Location: LCCOMB_X80_Y56_N12
\Mid|OC[55]~301\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|OC[55]~301_combout\ = (!\Mid|BLAN|ForGenerate:54:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\ & (((!\Top|P\(53)) # 
-- (!\Mid|BLAN|ForGenerate:52:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\)) # (!\Top|P\(54))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mid|BLAN|ForGenerate:54:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\,
	datab => \Top|P\(54),
	datac => \Mid|BLAN|ForGenerate:52:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\,
	datad => \Top|P\(53),
	combout => \Mid|OC[55]~301_combout\);

-- Location: LCCOMB_X80_Y54_N30
\Mid|OC[55]~300\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|OC[55]~300_combout\ = (\Mid|BLAN|ForGenerate:50:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\) # ((\Mid|BLAN|ForGenerate:50:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|BP~combout\ & 
-- (\B[48]~input_o\ & \A[48]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mid|BLAN|ForGenerate:50:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|BP~combout\,
	datab => \B[48]~input_o\,
	datac => \A[48]~input_o\,
	datad => \Mid|BLAN|ForGenerate:50:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\,
	combout => \Mid|OC[55]~300_combout\);

-- Location: LCCOMB_X80_Y54_N16
\Mid|OC[55]~302\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|OC[55]~302_combout\ = (\Mid|OC[55]~299_combout\) # (((\Mid|OC[55]~300_combout\ & \Mid|BLAN|ForGenerate:54:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|BP~0_combout\)) # (!\Mid|OC[55]~301_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101110111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mid|OC[55]~299_combout\,
	datab => \Mid|OC[55]~301_combout\,
	datac => \Mid|OC[55]~300_combout\,
	datad => \Mid|BLAN|ForGenerate:54:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|BP~0_combout\,
	combout => \Mid|OC[55]~302_combout\);

-- Location: LCCOMB_X84_Y50_N4
\Mid|OC[55]~296\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|OC[55]~296_combout\ = (\Mid|BLAN|ForGenerate:31:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\) # ((\Mid|BLAN|ForGenerate:36:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Lower|Recur:Upper|BP~2_combout\ & 
-- \Mid|BLAN|ForGenerate:29:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mid|BLAN|ForGenerate:36:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Lower|Recur:Upper|BP~2_combout\,
	datac => \Mid|BLAN|ForGenerate:31:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\,
	datad => \Mid|BLAN|ForGenerate:29:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\,
	combout => \Mid|OC[55]~296_combout\);

-- Location: LCCOMB_X81_Y51_N14
\Mid|OC[55]~297\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|OC[55]~297_combout\ = (\Mid|OC[55]~293_combout\ & ((\Mid|OC[55]~206_combout\) # ((\Mid|OC[55]~296_combout\ & \Mid|OC[60]~400_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mid|OC[55]~296_combout\,
	datab => \Mid|OC[55]~206_combout\,
	datac => \Mid|OC[60]~400_combout\,
	datad => \Mid|OC[55]~293_combout\,
	combout => \Mid|OC[55]~297_combout\);

-- Location: LCCOMB_X81_Y51_N0
\Mid|OC[60]~304\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|OC[60]~304_combout\ = (\Mid|BLAN|ForGenerate:40:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\) # ((\Top|P\(40) & (\Top|P\(39) & 
-- \Mid|BLAN|ForGenerate:38:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Top|P\(40),
	datab => \Mid|BLAN|ForGenerate:40:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\,
	datac => \Top|P\(39),
	datad => \Mid|BLAN|ForGenerate:38:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\,
	combout => \Mid|OC[60]~304_combout\);

-- Location: LCCOMB_X81_Y51_N2
\Mid|OC[55]~305\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|OC[55]~305_combout\ = (\Mid|OC[55]~302_combout\) # ((\Mid|OC[55]~297_combout\) # ((\Mid|OC[55]~303_combout\ & \Mid|OC[60]~304_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mid|OC[55]~303_combout\,
	datab => \Mid|OC[55]~302_combout\,
	datac => \Mid|OC[55]~297_combout\,
	datad => \Mid|OC[60]~304_combout\,
	combout => \Mid|OC[55]~305_combout\);

-- Location: IOIBUF_X83_Y73_N8
\B[55]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(55),
	o => \B[55]~input_o\);

-- Location: LCCOMB_X80_Y58_N16
\Bot|S[55]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Bot|S\(55) = \A[55]~input_o\ $ (\B[55]~input_o\ $ (((\Mid|OC[55]~295_combout\) # (\Mid|OC[55]~305_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100100110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mid|OC[55]~295_combout\,
	datab => \A[55]~input_o\,
	datac => \Mid|OC[55]~305_combout\,
	datad => \B[55]~input_o\,
	combout => \Bot|S\(55));

-- Location: LCCOMB_X80_Y58_N0
\Top|P[55]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Top|P\(55) = \A[55]~input_o\ $ (\B[55]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[55]~input_o\,
	datad => \B[55]~input_o\,
	combout => \Top|P\(55));

-- Location: LCCOMB_X80_Y57_N2
\Mid|BLAN|ForGenerate:55:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|BLAN|ForGenerate:55:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~4_combout\ = (\Top|P\(55) & (\Mid|BLAN|ForGenerate:53:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\ & (\A[54]~input_o\ $ 
-- (\B[54]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Top|P\(55),
	datab => \A[54]~input_o\,
	datac => \Mid|BLAN|ForGenerate:53:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\,
	datad => \B[54]~input_o\,
	combout => \Mid|BLAN|ForGenerate:55:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~4_combout\);

-- Location: IOIBUF_X72_Y73_N8
\B[56]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(56),
	o => \B[56]~input_o\);

-- Location: IOIBUF_X81_Y73_N15
\A[56]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(56),
	o => \A[56]~input_o\);

-- Location: LCCOMB_X80_Y58_N18
\Top|P[56]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Top|P\(56) = \B[56]~input_o\ $ (\A[56]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[56]~input_o\,
	datad => \A[56]~input_o\,
	combout => \Top|P\(56));

-- Location: LCCOMB_X80_Y54_N12
\Bot|S[56]~121\ : cycloneive_lcell_comb
-- Equation(s):
-- \Bot|S[56]~121_combout\ = (\B[49]~input_o\ & (\A[49]~input_o\ & \Mid|OC[56]~268_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[49]~input_o\,
	datac => \A[49]~input_o\,
	datad => \Mid|OC[56]~268_combout\,
	combout => \Bot|S[56]~121_combout\);

-- Location: LCCOMB_X84_Y51_N6
\Mid|OC[56]~306\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|OC[56]~306_combout\ = (\Mid|OC[53]~197_combout\ & (\Top|P\(34) & (\Mid|BLAN|ForGenerate:33:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|BP~0_combout\ & 
-- \Mid|BLAN|ForGenerate:51:ColumnBlock|Recur:Upper|Recur:Lower|Recur:Upper|Recur:Upper|BP~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mid|OC[53]~197_combout\,
	datab => \Top|P\(34),
	datac => \Mid|BLAN|ForGenerate:33:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|BP~0_combout\,
	datad => \Mid|BLAN|ForGenerate:51:ColumnBlock|Recur:Upper|Recur:Lower|Recur:Upper|Recur:Upper|BP~1_combout\,
	combout => \Mid|OC[56]~306_combout\);

-- Location: LCCOMB_X77_Y53_N16
\Mid|OC[56]~309\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|OC[56]~309_combout\ = (\Mid|BLAN|ForGenerate:41:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|BP~combout\ & ((\Mid|BLAN|ForGenerate:39:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\) # 
-- ((\Mid|BLAN|ForGenerate:42:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|bG~2_combout\ & !\Mid|BLAN|ForGenerate:40:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mid|BLAN|ForGenerate:41:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|BP~combout\,
	datab => \Mid|BLAN|ForGenerate:39:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\,
	datac => \Mid|BLAN|ForGenerate:42:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|bG~2_combout\,
	datad => \Mid|BLAN|ForGenerate:40:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\,
	combout => \Mid|OC[56]~309_combout\);

-- Location: LCCOMB_X83_Y51_N16
\Mid|BLAN|ForGenerate:55:ColumnBlock|Recur:Upper|Recur:Lower|bG~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|BLAN|ForGenerate:55:ColumnBlock|Recur:Upper|Recur:Lower|bG~0_combout\ = (\Mid|BLAN|ForGenerate:32:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\ & (\Top|P\(34) & (\A[33]~input_o\ $ (\B[33]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[33]~input_o\,
	datab => \B[33]~input_o\,
	datac => \Mid|BLAN|ForGenerate:32:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\,
	datad => \Top|P\(34),
	combout => \Mid|BLAN|ForGenerate:55:ColumnBlock|Recur:Upper|Recur:Lower|bG~0_combout\);

-- Location: LCCOMB_X83_Y51_N26
\Mid|OC[56]~310\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|OC[56]~310_combout\ = (\Mid|BLAN|ForGenerate:51:ColumnBlock|Recur:Upper|Recur:Lower|Recur:Upper|Recur:Upper|BP~1_combout\ & (\Mid|OC[53]~197_combout\ & ((\Mid|BLAN|ForGenerate:55:ColumnBlock|Recur:Upper|Recur:Lower|bG~0_combout\) # 
-- (\Mid|BLAN|ForGenerate:34:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mid|BLAN|ForGenerate:55:ColumnBlock|Recur:Upper|Recur:Lower|bG~0_combout\,
	datab => \Mid|BLAN|ForGenerate:51:ColumnBlock|Recur:Upper|Recur:Lower|Recur:Upper|Recur:Upper|BP~1_combout\,
	datac => \Mid|OC[53]~197_combout\,
	datad => \Mid|BLAN|ForGenerate:34:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\,
	combout => \Mid|OC[56]~310_combout\);

-- Location: LCCOMB_X86_Y50_N0
\Mid|OC[42]~307\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|OC[42]~307_combout\ = (\A[28]~input_o\ & \B[28]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A[28]~input_o\,
	datad => \B[28]~input_o\,
	combout => \Mid|OC[42]~307_combout\);

-- Location: LCCOMB_X84_Y51_N8
\Mid|OC[56]~308\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|OC[56]~308_combout\ = (\Mid|OC[56]~306_combout\ & ((\Mid|BLAN|ForGenerate:30:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\) # 
-- ((\Mid|BLAN|ForGenerate:30:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|BP~0_combout\ & \Mid|OC[42]~307_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mid|BLAN|ForGenerate:30:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\,
	datab => \Mid|BLAN|ForGenerate:30:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|BP~0_combout\,
	datac => \Mid|OC[42]~307_combout\,
	datad => \Mid|OC[56]~306_combout\,
	combout => \Mid|OC[56]~308_combout\);

-- Location: LCCOMB_X77_Y53_N2
\Mid|OC[56]~311\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|OC[56]~311_combout\ = (\Mid|BLAN|ForGenerate:41:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\) # ((\Mid|OC[56]~309_combout\) # ((\Mid|OC[56]~310_combout\) # (\Mid|OC[56]~308_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mid|BLAN|ForGenerate:41:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\,
	datab => \Mid|OC[56]~309_combout\,
	datac => \Mid|OC[56]~310_combout\,
	datad => \Mid|OC[56]~308_combout\,
	combout => \Mid|OC[56]~311_combout\);

-- Location: LCCOMB_X81_Y53_N0
\Mid|OC[56]~312\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|OC[56]~312_combout\ = (\Mid|OC[56]~311_combout\) # ((\Mid|BLAN|ForGenerate:30:ColumnBlock|Recur:Upper|Recur:Upper|BP~0_combout\ & (\Mid|OC[28]~132_combout\ & \Mid|OC[56]~306_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mid|BLAN|ForGenerate:30:ColumnBlock|Recur:Upper|Recur:Upper|BP~0_combout\,
	datab => \Mid|OC[28]~132_combout\,
	datac => \Mid|OC[56]~306_combout\,
	datad => \Mid|OC[56]~311_combout\,
	combout => \Mid|OC[56]~312_combout\);

-- Location: LCCOMB_X77_Y54_N0
\Mid|OC[56]~313\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|OC[56]~313_combout\ = (\Mid|BLAN|ForGenerate:51:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|BP~1_combout\ & (((\Mid|OC[56]~312_combout\ & \Mid|BLAN|ForGenerate:48:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|BP~0_combout\)) # 
-- (!\Mid|OC[49]~253_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mid|OC[56]~312_combout\,
	datab => \Mid|BLAN|ForGenerate:48:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|BP~0_combout\,
	datac => \Mid|OC[49]~253_combout\,
	datad => \Mid|BLAN|ForGenerate:51:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|BP~1_combout\,
	combout => \Mid|OC[56]~313_combout\);

-- Location: LCCOMB_X80_Y56_N6
\Mid|BLAN|ForGenerate:55:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|BP~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|BLAN|ForGenerate:55:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|BP~0_combout\ = (\Top|P\(53) & (\Top|P\(54) & (\Top|P\(52) & \Top|P\(55))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Top|P\(53),
	datab => \Top|P\(54),
	datac => \Top|P\(52),
	datad => \Top|P\(55),
	combout => \Mid|BLAN|ForGenerate:55:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|BP~0_combout\);

-- Location: LCCOMB_X81_Y54_N4
\Bot|S[56]~122\ : cycloneive_lcell_comb
-- Equation(s):
-- \Bot|S[56]~122_combout\ = (\Mid|BLAN|ForGenerate:55:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|BP~0_combout\ & ((\Mid|BLAN|ForGenerate:51:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\) # 
-- ((\Bot|S[56]~121_combout\) # (\Mid|OC[56]~313_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mid|BLAN|ForGenerate:51:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\,
	datab => \Bot|S[56]~121_combout\,
	datac => \Mid|OC[56]~313_combout\,
	datad => \Mid|BLAN|ForGenerate:55:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|BP~0_combout\,
	combout => \Bot|S[56]~122_combout\);

-- Location: LCCOMB_X80_Y57_N20
\Mid|BLAN|ForGenerate:55:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|BLAN|ForGenerate:55:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\ = (\B[55]~input_o\ & ((\A[55]~input_o\) # ((\B[54]~input_o\ & \A[54]~input_o\)))) # (!\B[55]~input_o\ & (\B[54]~input_o\ & (\A[55]~input_o\ & 
-- \A[54]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[54]~input_o\,
	datab => \B[55]~input_o\,
	datac => \A[55]~input_o\,
	datad => \A[54]~input_o\,
	combout => \Mid|BLAN|ForGenerate:55:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\);

-- Location: LCCOMB_X81_Y54_N30
\Bot|S[56]~123\ : cycloneive_lcell_comb
-- Equation(s):
-- \Bot|S[56]~123_combout\ = \Top|P\(56) $ (((\Mid|BLAN|ForGenerate:55:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~4_combout\) # ((\Bot|S[56]~122_combout\) # 
-- (\Mid|BLAN|ForGenerate:55:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mid|BLAN|ForGenerate:55:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~4_combout\,
	datab => \Top|P\(56),
	datac => \Bot|S[56]~122_combout\,
	datad => \Mid|BLAN|ForGenerate:55:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\,
	combout => \Bot|S[56]~123_combout\);

-- Location: IOIBUF_X107_Y73_N15
\A[57]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(57),
	o => \A[57]~input_o\);

-- Location: IOIBUF_X58_Y73_N8
\B[57]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(57),
	o => \B[57]~input_o\);

-- Location: LCCOMB_X80_Y58_N6
\Top|P[57]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Top|P\(57) = \A[57]~input_o\ $ (\B[57]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[57]~input_o\,
	datad => \B[57]~input_o\,
	combout => \Top|P\(57));

-- Location: LCCOMB_X80_Y56_N24
\Mid|OC[57]~314\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|OC[57]~314_combout\ = (\Mid|BLAN|ForGenerate:54:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\) # ((\Top|P\(54) & 
-- (\Mid|BLAN|ForGenerate:52:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\ & \Top|P\(53))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mid|BLAN|ForGenerate:54:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\,
	datab => \Top|P\(54),
	datac => \Mid|BLAN|ForGenerate:52:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\,
	datad => \Top|P\(53),
	combout => \Mid|OC[57]~314_combout\);

-- Location: LCCOMB_X80_Y58_N4
\Mid|BLAN|ForGenerate:56:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|BLAN|ForGenerate:56:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\ = (\A[56]~input_o\ & ((\B[56]~input_o\) # ((\A[55]~input_o\ & \B[55]~input_o\)))) # (!\A[56]~input_o\ & (\A[55]~input_o\ & (\B[56]~input_o\ & 
-- \B[55]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[55]~input_o\,
	datab => \A[56]~input_o\,
	datac => \B[56]~input_o\,
	datad => \B[55]~input_o\,
	combout => \Mid|BLAN|ForGenerate:56:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\);

-- Location: LCCOMB_X80_Y56_N18
\Mid|OC[57]~315\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|OC[57]~315_combout\ = (\Mid|BLAN|ForGenerate:56:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\) # ((\Top|P\(56) & (\Top|P\(55) & \Mid|OC[57]~314_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Top|P\(56),
	datab => \Top|P\(55),
	datac => \Mid|OC[57]~314_combout\,
	datad => \Mid|BLAN|ForGenerate:56:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\,
	combout => \Mid|OC[57]~315_combout\);

-- Location: LCCOMB_X80_Y56_N30
\Bot|S[57]~125\ : cycloneive_lcell_comb
-- Equation(s):
-- \Bot|S[57]~125_combout\ = (\Top|P\(53) & ((\Mid|OC[56]~313_combout\) # ((\Mid|BLAN|ForGenerate:50:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\ & \Top|P\(51)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mid|OC[56]~313_combout\,
	datab => \Mid|BLAN|ForGenerate:50:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\,
	datac => \Top|P\(51),
	datad => \Top|P\(53),
	combout => \Bot|S[57]~125_combout\);

-- Location: LCCOMB_X80_Y56_N28
\Bot|S[57]~124\ : cycloneive_lcell_comb
-- Equation(s):
-- \Bot|S[57]~124_combout\ = (\Top|P\(56) & (\Top|P\(54) & (\Top|P\(52) & \Top|P\(55))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Top|P\(56),
	datab => \Top|P\(54),
	datac => \Top|P\(52),
	datad => \Top|P\(55),
	combout => \Bot|S[57]~124_combout\);

-- Location: LCCOMB_X80_Y56_N0
\Bot|S[57]~126\ : cycloneive_lcell_comb
-- Equation(s):
-- \Bot|S[57]~126_combout\ = \Top|P\(57) $ (((\Mid|OC[57]~315_combout\) # ((\Bot|S[57]~125_combout\ & \Bot|S[57]~124_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Top|P\(57),
	datab => \Mid|OC[57]~315_combout\,
	datac => \Bot|S[57]~125_combout\,
	datad => \Bot|S[57]~124_combout\,
	combout => \Bot|S[57]~126_combout\);

-- Location: LCCOMB_X80_Y56_N10
\Mid|OC[58]~322\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|OC[58]~322_combout\ = (\Top|P\(56) & (\Top|P\(54) & (\Top|P\(57) & \Top|P\(55))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Top|P\(56),
	datab => \Top|P\(54),
	datac => \Top|P\(57),
	datad => \Top|P\(55),
	combout => \Mid|OC[58]~322_combout\);

-- Location: LCCOMB_X80_Y57_N14
\Mid|OC[58]~323\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|OC[58]~323_combout\ = (\Top|P\(52) & (\Mid|OC[58]~322_combout\ & (\Mid|OC[56]~268_combout\ & \Top|P\(53))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Top|P\(52),
	datab => \Mid|OC[58]~322_combout\,
	datac => \Mid|OC[56]~268_combout\,
	datad => \Top|P\(53),
	combout => \Mid|OC[58]~323_combout\);

-- Location: LCCOMB_X80_Y51_N8
\Mid|OC[58]~316\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|OC[58]~316_combout\ = (\Mid|OC[58]~257_combout\ & ((\Mid|BLAN|ForGenerate:42:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\) # 
-- ((\Mid|BLAN|ForGenerate:42:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|BP~0_combout\ & \Mid|BLAN|ForGenerate:40:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mid|BLAN|ForGenerate:42:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|BP~0_combout\,
	datab => \Mid|OC[58]~257_combout\,
	datac => \Mid|BLAN|ForGenerate:42:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\,
	datad => \Mid|BLAN|ForGenerate:40:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\,
	combout => \Mid|OC[58]~316_combout\);

-- Location: LCCOMB_X80_Y50_N2
\Mid|BLAN|ForGenerate:57:ColumnBlock|Recur:Upper|Recur:Lower|Recur:Lower|bG~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|BLAN|ForGenerate:57:ColumnBlock|Recur:Upper|Recur:Lower|Recur:Lower|bG~0_combout\ = (\Mid|BLAN|ForGenerate:35:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|BP~0_combout\ & 
-- \Mid|BLAN|ForGenerate:33:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|BP~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mid|BLAN|ForGenerate:35:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|BP~0_combout\,
	datad => \Mid|BLAN|ForGenerate:33:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|BP~0_combout\,
	combout => \Mid|BLAN|ForGenerate:57:ColumnBlock|Recur:Upper|Recur:Lower|Recur:Lower|bG~0_combout\);

-- Location: LCCOMB_X80_Y50_N8
\Mid|OC[58]~317\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|OC[58]~317_combout\ = (\Mid|BLAN|ForGenerate:35:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|BP~0_combout\ & ((\Mid|BLAN|ForGenerate:33:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\) 
-- # ((\Mid|BLAN|ForGenerate:31:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\ & \Mid|BLAN|ForGenerate:33:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|BP~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mid|BLAN|ForGenerate:35:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|BP~0_combout\,
	datab => \Mid|BLAN|ForGenerate:31:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\,
	datac => \Mid|BLAN|ForGenerate:33:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\,
	datad => \Mid|BLAN|ForGenerate:33:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|BP~0_combout\,
	combout => \Mid|OC[58]~317_combout\);

-- Location: LCCOMB_X80_Y50_N12
\Mid|OC[58]~318\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|OC[58]~318_combout\ = (\Mid|BLAN|ForGenerate:35:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\) # ((\Mid|OC[58]~317_combout\) # 
-- ((\Mid|BLAN|ForGenerate:57:ColumnBlock|Recur:Upper|Recur:Lower|Recur:Lower|bG~0_combout\ & \Mid|BLAN|ForGenerate:36:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Lower|Recur:Upper|bG~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mid|BLAN|ForGenerate:35:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\,
	datab => \Mid|BLAN|ForGenerate:57:ColumnBlock|Recur:Upper|Recur:Lower|Recur:Lower|bG~0_combout\,
	datac => \Mid|OC[58]~317_combout\,
	datad => \Mid|BLAN|ForGenerate:36:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Lower|Recur:Upper|bG~0_combout\,
	combout => \Mid|OC[58]~318_combout\);

-- Location: LCCOMB_X80_Y50_N6
\Mid|OC[58]~319\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|OC[58]~319_combout\ = (\Mid|OC[58]~318_combout\) # ((\Mid|BLAN|ForGenerate:36:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Lower|Recur:Upper|BP~3_combout\ & (\Mid|OC[29]~137_combout\ & 
-- \Mid|BLAN|ForGenerate:57:ColumnBlock|Recur:Upper|Recur:Lower|Recur:Lower|bG~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mid|OC[58]~318_combout\,
	datab => \Mid|BLAN|ForGenerate:36:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Lower|Recur:Upper|BP~3_combout\,
	datac => \Mid|OC[29]~137_combout\,
	datad => \Mid|BLAN|ForGenerate:57:ColumnBlock|Recur:Upper|Recur:Lower|Recur:Lower|bG~0_combout\,
	combout => \Mid|OC[58]~319_combout\);

-- Location: LCCOMB_X80_Y50_N0
\Mid|OC[58]~320\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|OC[58]~320_combout\ = (\Mid|BLAN|ForGenerate:38:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\) # ((\Mid|BLAN|ForGenerate:38:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\) # 
-- ((\Mid|OC[58]~319_combout\ & \Mid|BLAN|ForGenerate:38:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|BP~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mid|OC[58]~319_combout\,
	datab => \Mid|BLAN|ForGenerate:38:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\,
	datac => \Mid|BLAN|ForGenerate:38:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|BP~0_combout\,
	datad => \Mid|BLAN|ForGenerate:38:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\,
	combout => \Mid|OC[58]~320_combout\);

-- Location: LCCOMB_X80_Y51_N18
\Mid|OC[58]~321\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|OC[58]~321_combout\ = (\Mid|OC[58]~316_combout\) # (((\Mid|OC[58]~406_combout\ & \Mid|OC[58]~320_combout\)) # (!\Mid|OC[50]~256_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mid|OC[58]~406_combout\,
	datab => \Mid|OC[58]~316_combout\,
	datac => \Mid|OC[50]~256_combout\,
	datad => \Mid|OC[58]~320_combout\,
	combout => \Mid|OC[58]~321_combout\);

-- Location: IOIBUF_X74_Y73_N15
\A[58]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(58),
	o => \A[58]~input_o\);

-- Location: IOIBUF_X83_Y73_N15
\B[58]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(58),
	o => \B[58]~input_o\);

-- Location: LCCOMB_X81_Y57_N26
\Top|P[58]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Top|P\(58) = \A[58]~input_o\ $ (\B[58]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[58]~input_o\,
	datad => \B[58]~input_o\,
	combout => \Top|P\(58));

-- Location: LCCOMB_X80_Y58_N8
\Mid|BLAN|ForGenerate:57:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|BLAN|ForGenerate:57:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\ = (\A[57]~input_o\ & ((\B[57]~input_o\) # ((\B[56]~input_o\ & \A[56]~input_o\)))) # (!\A[57]~input_o\ & (\B[57]~input_o\ & (\B[56]~input_o\ & 
-- \A[56]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[57]~input_o\,
	datab => \B[57]~input_o\,
	datac => \B[56]~input_o\,
	datad => \A[56]~input_o\,
	combout => \Mid|BLAN|ForGenerate:57:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\);

-- Location: LCCOMB_X80_Y58_N26
\Mid|BLAN|ForGenerate:57:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|BLAN|ForGenerate:57:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~4_combout\ = (\Top|P\(57) & (\Mid|BLAN|ForGenerate:55:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\ & (\B[56]~input_o\ $ 
-- (\A[56]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Top|P\(57),
	datab => \Mid|BLAN|ForGenerate:55:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\,
	datac => \B[56]~input_o\,
	datad => \A[56]~input_o\,
	combout => \Mid|BLAN|ForGenerate:57:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~4_combout\);

-- Location: LCCOMB_X80_Y57_N8
\Mid|OC[58]~324\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|OC[58]~324_combout\ = (\Mid|BLAN|ForGenerate:57:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\) # ((\Mid|BLAN|ForGenerate:57:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~4_combout\) # 
-- ((\Mid|OC[58]~322_combout\ & \Mid|BLAN|ForGenerate:53:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mid|BLAN|ForGenerate:57:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\,
	datab => \Mid|OC[58]~322_combout\,
	datac => \Mid|BLAN|ForGenerate:57:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~4_combout\,
	datad => \Mid|BLAN|ForGenerate:53:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\,
	combout => \Mid|OC[58]~324_combout\);

-- Location: LCCOMB_X80_Y57_N12
\Mid|OC[58]~412\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|OC[58]~412_combout\ = (\Mid|OC[58]~322_combout\ & (\Top|P\(53) & (\B[52]~input_o\ $ (\A[52]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[52]~input_o\,
	datab => \A[52]~input_o\,
	datac => \Mid|OC[58]~322_combout\,
	datad => \Top|P\(53),
	combout => \Mid|OC[58]~412_combout\);

-- Location: LCCOMB_X81_Y57_N0
\Mid|OC[58]~325\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|OC[58]~325_combout\ = (\Mid|OC[58]~324_combout\) # ((\Mid|BLAN|ForGenerate:51:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\ & \Mid|OC[58]~412_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mid|OC[58]~324_combout\,
	datac => \Mid|BLAN|ForGenerate:51:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\,
	datad => \Mid|OC[58]~412_combout\,
	combout => \Mid|OC[58]~325_combout\);

-- Location: LCCOMB_X81_Y57_N4
\Bot|S[58]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Bot|S\(58) = \Top|P\(58) $ (((\Mid|OC[58]~325_combout\) # ((\Mid|OC[58]~323_combout\ & \Mid|OC[58]~321_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mid|OC[58]~323_combout\,
	datab => \Mid|OC[58]~321_combout\,
	datac => \Top|P\(58),
	datad => \Mid|OC[58]~325_combout\,
	combout => \Bot|S\(58));

-- Location: LCCOMB_X80_Y56_N20
\Mid|OC[59]~332\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|OC[59]~332_combout\ = (\Mid|OC[58]~322_combout\ & (\Top|P\(53) & (\Mid|BLAN|ForGenerate:52:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\ & \Top|P\(58))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mid|OC[58]~322_combout\,
	datab => \Top|P\(53),
	datac => \Mid|BLAN|ForGenerate:52:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\,
	datad => \Top|P\(58),
	combout => \Mid|OC[59]~332_combout\);

-- Location: LCCOMB_X80_Y58_N20
\Mid|OC[61]~414\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|OC[61]~414_combout\ = (\Top|P\(57) & (\Top|P\(56) & (\A[55]~input_o\ $ (\B[55]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Top|P\(57),
	datab => \A[55]~input_o\,
	datac => \Top|P\(56),
	datad => \B[55]~input_o\,
	combout => \Mid|OC[61]~414_combout\);

-- Location: LCCOMB_X80_Y58_N2
\Mid|BLAN|ForGenerate:58:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|BLAN|ForGenerate:58:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\ = (\A[58]~input_o\ & ((\B[58]~input_o\) # ((\A[57]~input_o\ & \B[57]~input_o\)))) # (!\A[58]~input_o\ & (\A[57]~input_o\ & (\B[57]~input_o\ & 
-- \B[58]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[57]~input_o\,
	datab => \B[57]~input_o\,
	datac => \A[58]~input_o\,
	datad => \B[58]~input_o\,
	combout => \Mid|BLAN|ForGenerate:58:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\);

-- Location: LCCOMB_X81_Y57_N24
\Mid|OC[59]~333\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|OC[59]~333_combout\ = (!\Mid|BLAN|ForGenerate:58:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\ & (((!\Top|P\(58)) # 
-- (!\Mid|BLAN|ForGenerate:56:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\)) # (!\Top|P\(57))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Top|P\(57),
	datab => \Mid|BLAN|ForGenerate:56:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\,
	datac => \Top|P\(58),
	datad => \Mid|BLAN|ForGenerate:58:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\,
	combout => \Mid|OC[59]~333_combout\);

-- Location: LCCOMB_X81_Y57_N2
\Mid|OC[59]~334\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|OC[59]~334_combout\ = ((\Top|P\(58) & (\Mid|BLAN|ForGenerate:54:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\ & \Mid|OC[61]~414_combout\))) # (!\Mid|OC[59]~333_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Top|P\(58),
	datab => \Mid|BLAN|ForGenerate:54:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\,
	datac => \Mid|OC[61]~414_combout\,
	datad => \Mid|OC[59]~333_combout\,
	combout => \Mid|OC[59]~334_combout\);

-- Location: LCCOMB_X79_Y53_N18
\Mid|OC[59]~326\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|OC[59]~326_combout\ = (\Top|P\(40) & (\Mid|BLAN|ForGenerate:53:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Lower|Recur:Upper|BP~0_combout\ & (\Mid|OC[44]~211_combout\ & 
-- \Mid|BLAN|ForGenerate:50:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|bG~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Top|P\(40),
	datab => \Mid|BLAN|ForGenerate:53:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Lower|Recur:Upper|BP~0_combout\,
	datac => \Mid|OC[44]~211_combout\,
	datad => \Mid|BLAN|ForGenerate:50:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|bG~1_combout\,
	combout => \Mid|OC[59]~326_combout\);

-- Location: LCCOMB_X80_Y52_N30
\Mid|OC[59]~327\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|OC[59]~327_combout\ = (\Mid|BLAN|ForGenerate:38:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|BP~0_combout\ & (\Top|P\(39) & (\Mid|OC[59]~326_combout\ & \Mid|OC[58]~319_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mid|BLAN|ForGenerate:38:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|BP~0_combout\,
	datab => \Top|P\(39),
	datac => \Mid|OC[59]~326_combout\,
	datad => \Mid|OC[58]~319_combout\,
	combout => \Mid|OC[59]~327_combout\);

-- Location: LCCOMB_X77_Y53_N14
\Mid|OC[59]~413\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|OC[59]~413_combout\ = (\Mid|BLAN|ForGenerate:39:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\ & (\Mid|OC[44]~211_combout\ & (\A[40]~input_o\ $ (\B[40]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[40]~input_o\,
	datab => \Mid|BLAN|ForGenerate:39:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\,
	datac => \Mid|OC[44]~211_combout\,
	datad => \B[40]~input_o\,
	combout => \Mid|OC[59]~413_combout\);

-- Location: LCCOMB_X76_Y53_N26
\Mid|OC[59]~328\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|OC[59]~328_combout\ = (\Mid|OC[59]~413_combout\) # ((\Mid|BLAN|ForGenerate:43:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\) # 
-- ((\Mid|BLAN|ForGenerate:41:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\ & \Mid|BLAN|ForGenerate:43:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|BP~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mid|OC[59]~413_combout\,
	datab => \Mid|BLAN|ForGenerate:41:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\,
	datac => \Mid|BLAN|ForGenerate:43:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|BP~0_combout\,
	datad => \Mid|BLAN|ForGenerate:43:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\,
	combout => \Mid|OC[59]~328_combout\);

-- Location: LCCOMB_X79_Y53_N4
\Mid|OC[59]~329\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|OC[59]~329_combout\ = ((\Mid|OC[59]~328_combout\ & (\Mid|BLAN|ForGenerate:53:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Lower|Recur:Upper|BP~0_combout\ & \Mid|BLAN|ForGenerate:50:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|bG~1_combout\))) # 
-- (!\Mid|OC[51]~265_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mid|OC[59]~328_combout\,
	datab => \Mid|OC[51]~265_combout\,
	datac => \Mid|BLAN|ForGenerate:53:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Lower|Recur:Upper|BP~0_combout\,
	datad => \Mid|BLAN|ForGenerate:50:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|bG~1_combout\,
	combout => \Mid|OC[59]~329_combout\);

-- Location: LCCOMB_X80_Y52_N0
\Mid|OC[59]~330\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|OC[59]~330_combout\ = (\Mid|OC[59]~327_combout\) # ((\Mid|OC[59]~329_combout\) # ((\Mid|OC[54]~289_combout\ & \Mid|OC[59]~326_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mid|OC[54]~289_combout\,
	datab => \Mid|OC[59]~326_combout\,
	datac => \Mid|OC[59]~327_combout\,
	datad => \Mid|OC[59]~329_combout\,
	combout => \Mid|OC[59]~330_combout\);

-- Location: LCCOMB_X81_Y57_N14
\Mid|OC[59]~331\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|OC[59]~331_combout\ = (\Mid|OC[58]~412_combout\ & (\Top|P\(51) & (\Top|P\(58) & \Mid|OC[59]~330_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mid|OC[58]~412_combout\,
	datab => \Top|P\(51),
	datac => \Top|P\(58),
	datad => \Mid|OC[59]~330_combout\,
	combout => \Mid|OC[59]~331_combout\);

-- Location: IOIBUF_X87_Y73_N15
\A[59]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(59),
	o => \A[59]~input_o\);

-- Location: IOIBUF_X85_Y73_N15
\B[59]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(59),
	o => \B[59]~input_o\);

-- Location: LCCOMB_X81_Y57_N12
\Top|P[59]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Top|P\(59) = \A[59]~input_o\ $ (\B[59]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[59]~input_o\,
	datac => \B[59]~input_o\,
	combout => \Top|P\(59));

-- Location: LCCOMB_X81_Y57_N22
\Bot|S[59]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Bot|S\(59) = \Top|P\(59) $ (((\Mid|OC[59]~332_combout\) # ((\Mid|OC[59]~334_combout\) # (\Mid|OC[59]~331_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mid|OC[59]~332_combout\,
	datab => \Mid|OC[59]~334_combout\,
	datac => \Mid|OC[59]~331_combout\,
	datad => \Top|P\(59),
	combout => \Bot|S\(59));

-- Location: LCCOMB_X81_Y57_N16
\Mid|BLAN|ForGenerate:59:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|BLAN|ForGenerate:59:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\ = (\A[59]~input_o\ & ((\B[59]~input_o\) # ((\A[58]~input_o\ & \B[58]~input_o\)))) # (!\A[59]~input_o\ & (\A[58]~input_o\ & (\B[59]~input_o\ & 
-- \B[58]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[58]~input_o\,
	datab => \A[59]~input_o\,
	datac => \B[59]~input_o\,
	datad => \B[58]~input_o\,
	combout => \Mid|BLAN|ForGenerate:59:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\);

-- Location: LCCOMB_X80_Y52_N2
\Mid|OC[60]~339\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|OC[60]~339_combout\ = (\Mid|BLAN|ForGenerate:44:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\ & ((\Mid|BLAN|ForGenerate:42:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\) # 
-- ((\Mid|OC[60]~304_combout\ & \Mid|BLAN|ForGenerate:42:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|BP~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mid|OC[60]~304_combout\,
	datab => \Mid|BLAN|ForGenerate:42:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\,
	datac => \Mid|BLAN|ForGenerate:44:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\,
	datad => \Mid|BLAN|ForGenerate:42:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|BP~0_combout\,
	combout => \Mid|OC[60]~339_combout\);

-- Location: LCCOMB_X77_Y53_N28
\Mid|BLAN|ForGenerate:59:ColumnBlock|Recur:Upper|Recur:Lower|Recur:Upper|BP~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|BLAN|ForGenerate:59:ColumnBlock|Recur:Upper|Recur:Lower|Recur:Upper|BP~1_combout\ = (\Mid|OC[45]~220_combout\ & (\Mid|BLAN|ForGenerate:59:ColumnBlock|Recur:Upper|Recur:Lower|Recur:Upper|BP~0_combout\ & (\A[41]~input_o\ $ (\B[41]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mid|OC[45]~220_combout\,
	datab => \A[41]~input_o\,
	datac => \B[41]~input_o\,
	datad => \Mid|BLAN|ForGenerate:59:ColumnBlock|Recur:Upper|Recur:Lower|Recur:Upper|BP~0_combout\,
	combout => \Mid|BLAN|ForGenerate:59:ColumnBlock|Recur:Upper|Recur:Lower|Recur:Upper|BP~1_combout\);

-- Location: LCCOMB_X83_Y51_N0
\Mid|OC[60]~338\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|OC[60]~338_combout\ = (\Mid|BLAN|ForGenerate:59:ColumnBlock|Recur:Upper|Recur:Lower|Recur:Upper|BP~1_combout\ & ((\Mid|BLAN|ForGenerate:36:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\) # 
-- ((\Mid|BLAN|ForGenerate:51:ColumnBlock|Recur:Upper|Recur:Lower|Recur:Upper|Recur:Upper|BP~0_combout\ & \Mid|BLAN|ForGenerate:34:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mid|BLAN|ForGenerate:36:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\,
	datab => \Mid|BLAN|ForGenerate:59:ColumnBlock|Recur:Upper|Recur:Lower|Recur:Upper|BP~1_combout\,
	datac => \Mid|BLAN|ForGenerate:51:ColumnBlock|Recur:Upper|Recur:Lower|Recur:Upper|Recur:Upper|BP~0_combout\,
	datad => \Mid|BLAN|ForGenerate:34:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\,
	combout => \Mid|OC[60]~338_combout\);

-- Location: LCCOMB_X83_Y51_N12
\Mid|BLAN|ForGenerate:59:ColumnBlock|Recur:Upper|Recur:Lower|bG~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|BLAN|ForGenerate:59:ColumnBlock|Recur:Upper|Recur:Lower|bG~0_combout\ = (\Mid|BLAN|ForGenerate:51:ColumnBlock|Recur:Upper|Recur:Lower|Recur:Upper|Recur:Upper|BP~0_combout\ & (\Top|P\(34) & (\B[33]~input_o\ $ (\A[33]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mid|BLAN|ForGenerate:51:ColumnBlock|Recur:Upper|Recur:Lower|Recur:Upper|Recur:Upper|BP~0_combout\,
	datab => \B[33]~input_o\,
	datac => \Top|P\(34),
	datad => \A[33]~input_o\,
	combout => \Mid|BLAN|ForGenerate:59:ColumnBlock|Recur:Upper|Recur:Lower|bG~0_combout\);

-- Location: LCCOMB_X83_Y51_N6
\Mid|OC[60]~337\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|OC[60]~337_combout\ = (\Mid|BLAN|ForGenerate:59:ColumnBlock|Recur:Upper|Recur:Lower|Recur:Upper|BP~1_combout\ & (\Mid|BLAN|ForGenerate:59:ColumnBlock|Recur:Upper|Recur:Lower|bG~0_combout\ & 
-- ((\Mid|BLAN|ForGenerate:32:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~1_combout\) # (\Mid|BLAN|ForGenerate:32:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mid|BLAN|ForGenerate:32:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~1_combout\,
	datab => \Mid|BLAN|ForGenerate:59:ColumnBlock|Recur:Upper|Recur:Lower|Recur:Upper|BP~1_combout\,
	datac => \Mid|BLAN|ForGenerate:32:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\,
	datad => \Mid|BLAN|ForGenerate:59:ColumnBlock|Recur:Upper|Recur:Lower|bG~0_combout\,
	combout => \Mid|OC[60]~337_combout\);

-- Location: LCCOMB_X80_Y52_N12
\Mid|OC[60]~340\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|OC[60]~340_combout\ = (\Mid|BLAN|ForGenerate:44:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\) # ((\Mid|OC[60]~339_combout\) # ((\Mid|OC[60]~338_combout\) # (\Mid|OC[60]~337_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mid|BLAN|ForGenerate:44:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\,
	datab => \Mid|OC[60]~339_combout\,
	datac => \Mid|OC[60]~338_combout\,
	datad => \Mid|OC[60]~337_combout\,
	combout => \Mid|OC[60]~340_combout\);

-- Location: LCCOMB_X81_Y51_N12
\Mid|OC[60]~336\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|OC[60]~336_combout\ = (\Mid|BLAN|ForGenerate:59:ColumnBlock|Recur:Upper|Recur:Lower|Recur:Upper|BP~1_combout\ & (\Mid|OC[30]~145_combout\ & (\Mid|BLAN|ForGenerate:36:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Lower|Recur:Upper|BP~2_combout\ & 
-- \Mid|OC[60]~400_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mid|BLAN|ForGenerate:59:ColumnBlock|Recur:Upper|Recur:Lower|Recur:Upper|BP~1_combout\,
	datab => \Mid|OC[30]~145_combout\,
	datac => \Mid|BLAN|ForGenerate:36:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Lower|Recur:Upper|BP~2_combout\,
	datad => \Mid|OC[60]~400_combout\,
	combout => \Mid|OC[60]~336_combout\);

-- Location: LCCOMB_X76_Y54_N24
\Mid|OC[61]~341\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|OC[61]~341_combout\ = (\Mid|OC[60]~340_combout\ & (\B[45]~input_o\ $ ((\A[45]~input_o\)))) # (!\Mid|OC[60]~340_combout\ & (\Mid|OC[60]~336_combout\ & (\B[45]~input_o\ $ (\A[45]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[45]~input_o\,
	datab => \Mid|OC[60]~340_combout\,
	datac => \A[45]~input_o\,
	datad => \Mid|OC[60]~336_combout\,
	combout => \Mid|OC[61]~341_combout\);

-- Location: LCCOMB_X76_Y54_N14
\Mid|OC[60]~415\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|OC[60]~415_combout\ = (\Mid|OC[48]~248_combout\ & ((\Mid|OC[61]~341_combout\) # ((\B[45]~input_o\ & \A[45]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[45]~input_o\,
	datab => \Mid|OC[61]~341_combout\,
	datac => \A[45]~input_o\,
	datad => \Mid|OC[48]~248_combout\,
	combout => \Mid|OC[60]~415_combout\);

-- Location: LCCOMB_X81_Y54_N16
\Mid|OC[60]~342\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|OC[60]~342_combout\ = ((\Mid|BLAN|ForGenerate:51:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|BP~0_combout\ & ((\Mid|OC[60]~415_combout\) # 
-- (\Mid|BLAN|ForGenerate:47:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\)))) # (!\Mid|OC[60]~269_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mid|OC[60]~415_combout\,
	datab => \Mid|OC[60]~269_combout\,
	datac => \Mid|BLAN|ForGenerate:47:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\,
	datad => \Mid|BLAN|ForGenerate:51:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|BP~0_combout\,
	combout => \Mid|OC[60]~342_combout\);

-- Location: LCCOMB_X81_Y57_N18
\Mid|OC[61]~335\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|OC[61]~335_combout\ = (\A[58]~input_o\ & (!\B[58]~input_o\ & (\A[59]~input_o\ $ (\B[59]~input_o\)))) # (!\A[58]~input_o\ & (\B[58]~input_o\ & (\A[59]~input_o\ $ (\B[59]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[58]~input_o\,
	datab => \A[59]~input_o\,
	datac => \B[59]~input_o\,
	datad => \B[58]~input_o\,
	combout => \Mid|OC[61]~335_combout\);

-- Location: LCCOMB_X81_Y57_N20
\Bot|S[60]~127\ : cycloneive_lcell_comb
-- Equation(s):
-- \Bot|S[60]~127_combout\ = (\Mid|OC[61]~335_combout\ & ((\Mid|OC[58]~324_combout\) # ((\Mid|OC[58]~412_combout\ & \Mid|OC[60]~342_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mid|OC[58]~412_combout\,
	datab => \Mid|OC[60]~342_combout\,
	datac => \Mid|OC[61]~335_combout\,
	datad => \Mid|OC[58]~324_combout\,
	combout => \Bot|S[60]~127_combout\);

-- Location: IOIBUF_X81_Y73_N1
\A[60]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(60),
	o => \A[60]~input_o\);

-- Location: IOIBUF_X85_Y73_N1
\B[60]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(60),
	o => \B[60]~input_o\);

-- Location: LCCOMB_X81_Y57_N30
\Bot|S[60]~128\ : cycloneive_lcell_comb
-- Equation(s):
-- \Bot|S[60]~128_combout\ = \A[60]~input_o\ $ (\B[60]~input_o\ $ (((\Mid|BLAN|ForGenerate:59:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\) # (\Bot|S[60]~127_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mid|BLAN|ForGenerate:59:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\,
	datab => \Bot|S[60]~127_combout\,
	datac => \A[60]~input_o\,
	datad => \B[60]~input_o\,
	combout => \Bot|S[60]~128_combout\);

-- Location: LCCOMB_X81_Y57_N10
\Mid|BLAN|ForGenerate:60:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|BLAN|ForGenerate:60:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\ = (\A[60]~input_o\ & ((\B[60]~input_o\) # ((\B[59]~input_o\ & \A[59]~input_o\)))) # (!\A[60]~input_o\ & (\B[59]~input_o\ & (\A[59]~input_o\ & 
-- \B[60]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[59]~input_o\,
	datab => \A[59]~input_o\,
	datac => \A[60]~input_o\,
	datad => \B[60]~input_o\,
	combout => \Mid|BLAN|ForGenerate:60:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\);

-- Location: LCCOMB_X81_Y58_N24
\Mid|OC[61]~343\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|OC[61]~343_combout\ = (\Mid|OC[61]~335_combout\ & (\A[60]~input_o\ $ (\B[60]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mid|OC[61]~335_combout\,
	datac => \A[60]~input_o\,
	datad => \B[60]~input_o\,
	combout => \Mid|OC[61]~343_combout\);

-- Location: LCCOMB_X80_Y58_N30
\Mid|OC[61]~348\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|OC[61]~348_combout\ = (\Mid|BLAN|ForGenerate:60:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\) # ((\Top|P\(57) & 
-- (\Mid|BLAN|ForGenerate:56:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\ & \Mid|OC[61]~343_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Top|P\(57),
	datab => \Mid|BLAN|ForGenerate:60:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\,
	datac => \Mid|BLAN|ForGenerate:56:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\,
	datad => \Mid|OC[61]~343_combout\,
	combout => \Mid|OC[61]~348_combout\);

-- Location: LCCOMB_X81_Y57_N8
\Mid|OC[61]~347\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|OC[61]~347_combout\ = (\Mid|BLAN|ForGenerate:58:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\ & (\Top|P\(59) & (\B[60]~input_o\ $ (\A[60]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[60]~input_o\,
	datab => \Mid|BLAN|ForGenerate:58:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\,
	datac => \A[60]~input_o\,
	datad => \Top|P\(59),
	combout => \Mid|OC[61]~347_combout\);

-- Location: LCCOMB_X80_Y58_N24
\Mid|OC[61]~349\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|OC[61]~349_combout\ = (\Top|P\(57) & (\Top|P\(55) & (\Top|P\(56) & \Mid|OC[61]~343_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Top|P\(57),
	datab => \Top|P\(55),
	datac => \Top|P\(56),
	datad => \Mid|OC[61]~343_combout\,
	combout => \Mid|OC[61]~349_combout\);

-- Location: LCCOMB_X80_Y58_N10
\Mid|OC[61]~350\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|OC[61]~350_combout\ = (\Mid|OC[61]~348_combout\) # ((\Mid|OC[61]~347_combout\) # ((\Mid|BLAN|ForGenerate:54:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\ & \Mid|OC[61]~349_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mid|OC[61]~348_combout\,
	datab => \Mid|BLAN|ForGenerate:54:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\,
	datac => \Mid|OC[61]~347_combout\,
	datad => \Mid|OC[61]~349_combout\,
	combout => \Mid|OC[61]~350_combout\);

-- Location: LCCOMB_X76_Y54_N10
\Mid|OC[61]~345\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|OC[61]~345_combout\ = ((\Mid|BLAN|ForGenerate:46:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\ & \Mid|OC[53]~407_combout\)) # (!\Mid|OC[53]~277_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mid|BLAN|ForGenerate:46:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\,
	datac => \Mid|OC[53]~407_combout\,
	datad => \Mid|OC[53]~277_combout\,
	combout => \Mid|OC[61]~345_combout\);

-- Location: LCCOMB_X80_Y58_N28
\Mid|OC[61]~344\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|OC[61]~344_combout\ = (\Mid|OC[61]~414_combout\ & (\Top|P\(54) & (\Top|P\(53) & \Mid|OC[61]~343_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mid|OC[61]~414_combout\,
	datab => \Top|P\(54),
	datac => \Top|P\(53),
	datad => \Mid|OC[61]~343_combout\,
	combout => \Mid|OC[61]~344_combout\);

-- Location: LCCOMB_X76_Y54_N12
\Mid|OC[61]~346\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|OC[61]~346_combout\ = (\Mid|OC[61]~344_combout\ & ((\Mid|OC[61]~345_combout\) # ((\Mid|OC[61]~341_combout\ & \Mid|OC[53]~279_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mid|OC[61]~345_combout\,
	datab => \Mid|OC[61]~341_combout\,
	datac => \Mid|OC[53]~279_combout\,
	datad => \Mid|OC[61]~344_combout\,
	combout => \Mid|OC[61]~346_combout\);

-- Location: IOIBUF_X115_Y58_N22
\B[61]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(61),
	o => \B[61]~input_o\);

-- Location: IOIBUF_X83_Y73_N1
\A[61]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(61),
	o => \A[61]~input_o\);

-- Location: LCCOMB_X80_Y58_N12
\Bot|S[61]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Bot|S\(61) = \B[61]~input_o\ $ (\A[61]~input_o\ $ (((\Mid|OC[61]~350_combout\) # (\Mid|OC[61]~346_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mid|OC[61]~350_combout\,
	datab => \Mid|OC[61]~346_combout\,
	datac => \B[61]~input_o\,
	datad => \A[61]~input_o\,
	combout => \Bot|S\(61));

-- Location: LCCOMB_X80_Y58_N14
\Mid|OC[62]~363\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|OC[62]~363_combout\ = (\Top|P\(54) & (\Mid|OC[61]~349_combout\ & (\A[61]~input_o\ $ (\B[61]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[61]~input_o\,
	datab => \Top|P\(54),
	datac => \B[61]~input_o\,
	datad => \Mid|OC[61]~349_combout\,
	combout => \Mid|OC[62]~363_combout\);

-- Location: LCCOMB_X76_Y53_N12
\Mid|OC[62]~351\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|OC[62]~351_combout\ = (\Mid|BLAN|ForGenerate:49:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|bG~1_combout\ & (\Mid|BLAN|ForGenerate:43:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|BP~0_combout\ & 
-- (\Mid|BLAN|ForGenerate:45:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|BP~combout\ & \Mid|BLAN|ForGenerate:53:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|BP~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mid|BLAN|ForGenerate:49:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|bG~1_combout\,
	datab => \Mid|BLAN|ForGenerate:43:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|BP~0_combout\,
	datac => \Mid|BLAN|ForGenerate:45:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|BP~combout\,
	datad => \Mid|BLAN|ForGenerate:53:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|BP~0_combout\,
	combout => \Mid|OC[62]~351_combout\);

-- Location: LCCOMB_X79_Y54_N18
\Mid|OC[62]~357\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|OC[62]~357_combout\ = (\Mid|OC[56]~268_combout\ & (\Mid|BLAN|ForGenerate:49:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|bG~1_combout\ & (\Top|P\(52) & \Top|P\(53))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mid|OC[56]~268_combout\,
	datab => \Mid|BLAN|ForGenerate:49:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|bG~1_combout\,
	datac => \Top|P\(52),
	datad => \Top|P\(53),
	combout => \Mid|OC[62]~357_combout\);

-- Location: LCCOMB_X76_Y53_N6
\Mid|OC[62]~358\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|OC[62]~358_combout\ = (\Mid|BLAN|ForGenerate:45:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\ & ((\Mid|OC[62]~357_combout\) # 
-- ((\Mid|BLAN|ForGenerate:41:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\ & \Mid|OC[62]~351_combout\)))) # 
-- (!\Mid|BLAN|ForGenerate:45:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\ & (\Mid|BLAN|ForGenerate:41:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\ & 
-- (\Mid|OC[62]~351_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mid|BLAN|ForGenerate:45:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\,
	datab => \Mid|BLAN|ForGenerate:41:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\,
	datac => \Mid|OC[62]~351_combout\,
	datad => \Mid|OC[62]~357_combout\,
	combout => \Mid|OC[62]~358_combout\);

-- Location: LCCOMB_X79_Y54_N28
\Mid|OC[62]~359\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|OC[62]~359_combout\ = (\Mid|BLAN|ForGenerate:53:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|BP~0_combout\ & ((\Mid|BLAN|ForGenerate:49:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\) # 
-- ((\Mid|BLAN|ForGenerate:49:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|BP~combout\ & \Mid|BLAN|ForGenerate:47:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mid|BLAN|ForGenerate:49:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\,
	datab => \Mid|BLAN|ForGenerate:49:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|BP~combout\,
	datac => \Mid|BLAN|ForGenerate:47:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\,
	datad => \Mid|BLAN|ForGenerate:53:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|BP~0_combout\,
	combout => \Mid|OC[62]~359_combout\);

-- Location: LCCOMB_X76_Y53_N24
\Mid|OC[62]~360\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|OC[62]~360_combout\ = (\Mid|OC[62]~358_combout\) # ((\Mid|OC[62]~359_combout\) # ((\Mid|OC[53]~280_combout\ & \Mid|OC[62]~357_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mid|OC[62]~358_combout\,
	datab => \Mid|OC[53]~280_combout\,
	datac => \Mid|OC[62]~359_combout\,
	datad => \Mid|OC[62]~357_combout\,
	combout => \Mid|OC[62]~360_combout\);

-- Location: LCCOMB_X80_Y53_N18
\Mid|OC[62]~355\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|OC[62]~355_combout\ = (\Mid|OC[51]~263_combout\ & (\Mid|OC[62]~351_combout\ & (\Top|P\(38) & \Mid|OC[53]~197_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mid|OC[51]~263_combout\,
	datab => \Mid|OC[62]~351_combout\,
	datac => \Top|P\(38),
	datad => \Mid|OC[53]~197_combout\,
	combout => \Mid|OC[62]~355_combout\);

-- Location: LCCOMB_X80_Y53_N20
\Mid|OC[62]~356\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|OC[62]~356_combout\ = (\Mid|OC[62]~355_combout\) # ((\Mid|BLAN|ForGenerate:41:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|BP~combout\ & (\Mid|OC[54]~289_combout\ & \Mid|OC[62]~351_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mid|BLAN|ForGenerate:41:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|BP~combout\,
	datab => \Mid|OC[54]~289_combout\,
	datac => \Mid|OC[62]~351_combout\,
	datad => \Mid|OC[62]~355_combout\,
	combout => \Mid|OC[62]~356_combout\);

-- Location: LCCOMB_X80_Y53_N12
\Mid|OC[62]~352\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|OC[62]~352_combout\ = (\Mid|BLAN|ForGenerate:39:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\ & (\Mid|OC[62]~351_combout\ & 
-- \Mid|BLAN|ForGenerate:41:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|BP~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mid|BLAN|ForGenerate:39:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\,
	datac => \Mid|OC[62]~351_combout\,
	datad => \Mid|BLAN|ForGenerate:41:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|BP~combout\,
	combout => \Mid|OC[62]~352_combout\);

-- Location: LCCOMB_X83_Y52_N28
\Mid|BLAN|ForGenerate:33:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|BLAN|ForGenerate:33:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\ = (\Mid|BLAN|ForGenerate:33:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|BP~0_combout\ & (\A[31]~input_o\ & \B[31]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mid|BLAN|ForGenerate:33:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|BP~0_combout\,
	datac => \A[31]~input_o\,
	datad => \B[31]~input_o\,
	combout => \Mid|BLAN|ForGenerate:33:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\);

-- Location: LCCOMB_X80_Y53_N22
\Mid|OC[62]~353\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|OC[62]~353_combout\ = (\Mid|OC[53]~197_combout\ & (\Mid|OC[62]~351_combout\ & (\Top|P\(38) & \Mid|BLAN|ForGenerate:50:ColumnBlock|Recur:Upper|Recur:Lower|Recur:Upper|Recur:Upper|BP~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mid|OC[53]~197_combout\,
	datab => \Mid|OC[62]~351_combout\,
	datac => \Top|P\(38),
	datad => \Mid|BLAN|ForGenerate:50:ColumnBlock|Recur:Upper|Recur:Lower|Recur:Upper|Recur:Upper|BP~0_combout\,
	combout => \Mid|OC[62]~353_combout\);

-- Location: LCCOMB_X80_Y53_N8
\Mid|OC[62]~354\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|OC[62]~354_combout\ = (\Mid|OC[62]~352_combout\) # ((\Mid|OC[62]~353_combout\ & ((\Mid|BLAN|ForGenerate:33:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\) # 
-- (\Mid|BLAN|ForGenerate:33:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mid|OC[62]~352_combout\,
	datab => \Mid|BLAN|ForGenerate:33:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\,
	datac => \Mid|OC[62]~353_combout\,
	datad => \Mid|BLAN|ForGenerate:33:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\,
	combout => \Mid|OC[62]~354_combout\);

-- Location: LCCOMB_X80_Y53_N30
\Mid|OC[62]~361\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|OC[62]~361_combout\ = (\Mid|OC[62]~360_combout\) # ((\Mid|OC[62]~356_combout\) # ((\Mid|OC[62]~354_combout\) # (!\Mid|OC[54]~286_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mid|OC[62]~360_combout\,
	datab => \Mid|OC[62]~356_combout\,
	datac => \Mid|OC[62]~354_combout\,
	datad => \Mid|OC[54]~286_combout\,
	combout => \Mid|OC[62]~361_combout\);

-- Location: LCCOMB_X81_Y58_N18
\Mid|OC[62]~362\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|OC[62]~362_combout\ = (\Mid|OC[62]~361_combout\) # ((\Mid|OC[31]~152_combout\ & (\Mid|BLAN|ForGenerate:33:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|BP~0_combout\ & \Mid|OC[62]~353_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mid|OC[62]~361_combout\,
	datab => \Mid|OC[31]~152_combout\,
	datac => \Mid|BLAN|ForGenerate:33:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|BP~0_combout\,
	datad => \Mid|OC[62]~353_combout\,
	combout => \Mid|OC[62]~362_combout\);

-- Location: IOIBUF_X107_Y73_N1
\A[62]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(62),
	o => \A[62]~input_o\);

-- Location: IOIBUF_X81_Y73_N8
\B[62]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(62),
	o => \B[62]~input_o\);

-- Location: LCCOMB_X81_Y58_N22
\Top|P[62]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Top|P\(62) = \A[62]~input_o\ $ (\B[62]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[62]~input_o\,
	datac => \B[62]~input_o\,
	combout => \Top|P\(62));

-- Location: LCCOMB_X81_Y58_N6
\Mid|OC[62]~364\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|OC[62]~364_combout\ = (\B[61]~input_o\ & (!\A[61]~input_o\ & (\B[60]~input_o\ $ (\A[60]~input_o\)))) # (!\B[61]~input_o\ & (\A[61]~input_o\ & (\B[60]~input_o\ $ (\A[60]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[61]~input_o\,
	datab => \B[60]~input_o\,
	datac => \A[60]~input_o\,
	datad => \A[61]~input_o\,
	combout => \Mid|OC[62]~364_combout\);

-- Location: LCCOMB_X81_Y58_N16
\Mid|OC[62]~365\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|OC[62]~365_combout\ = (\Mid|BLAN|ForGenerate:57:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\ & (\Mid|OC[61]~335_combout\ & \Mid|OC[62]~364_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mid|BLAN|ForGenerate:57:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\,
	datab => \Mid|OC[61]~335_combout\,
	datad => \Mid|OC[62]~364_combout\,
	combout => \Mid|OC[62]~365_combout\);

-- Location: LCCOMB_X81_Y58_N4
\Mid|BLAN|ForGenerate:61:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|BLAN|ForGenerate:61:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\ = (\B[61]~input_o\ & ((\A[61]~input_o\) # ((\B[60]~input_o\ & \A[60]~input_o\)))) # (!\B[61]~input_o\ & (\B[60]~input_o\ & (\A[60]~input_o\ & 
-- \A[61]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[61]~input_o\,
	datab => \B[60]~input_o\,
	datac => \A[60]~input_o\,
	datad => \A[61]~input_o\,
	combout => \Mid|BLAN|ForGenerate:61:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\);

-- Location: LCCOMB_X81_Y58_N10
\Mid|OC[62]~366\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|OC[62]~366_combout\ = (\Mid|OC[62]~365_combout\) # ((\Mid|BLAN|ForGenerate:61:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\) # 
-- ((\Mid|BLAN|ForGenerate:59:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\ & \Mid|OC[62]~364_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mid|BLAN|ForGenerate:59:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\,
	datab => \Mid|OC[62]~365_combout\,
	datac => \Mid|BLAN|ForGenerate:61:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\,
	datad => \Mid|OC[62]~364_combout\,
	combout => \Mid|OC[62]~366_combout\);

-- Location: LCCOMB_X81_Y58_N28
\Mid|OC[62]~367\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|OC[62]~367_combout\ = (\Mid|OC[62]~366_combout\) # ((\Mid|OC[61]~335_combout\ & (\Mid|BLAN|ForGenerate:57:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~4_combout\ & \Mid|OC[62]~364_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mid|OC[62]~366_combout\,
	datab => \Mid|OC[61]~335_combout\,
	datac => \Mid|BLAN|ForGenerate:57:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~4_combout\,
	datad => \Mid|OC[62]~364_combout\,
	combout => \Mid|OC[62]~367_combout\);

-- Location: LCCOMB_X81_Y58_N0
\Bot|S[62]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Bot|S\(62) = \Top|P\(62) $ (((\Mid|OC[62]~367_combout\) # ((\Mid|OC[62]~363_combout\ & \Mid|OC[62]~362_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mid|OC[62]~363_combout\,
	datab => \Mid|OC[62]~362_combout\,
	datac => \Top|P\(62),
	datad => \Mid|OC[62]~367_combout\,
	combout => \Bot|S\(62));

-- Location: IOIBUF_X111_Y73_N1
\B[63]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(63),
	o => \B[63]~input_o\);

-- Location: IOIBUF_X62_Y73_N22
\A[63]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(63),
	o => \A[63]~input_o\);

-- Location: LCCOMB_X81_Y58_N26
\Mid|OC[63]~369\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|OC[63]~369_combout\ = (\Mid|OC[62]~364_combout\ & (\A[62]~input_o\ $ (\B[62]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[62]~input_o\,
	datac => \B[62]~input_o\,
	datad => \Mid|OC[62]~364_combout\,
	combout => \Mid|OC[63]~369_combout\);

-- Location: LCCOMB_X80_Y56_N14
\Mid|OC[63]~370\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|OC[63]~370_combout\ = (\Top|P\(56) & (\Mid|OC[61]~335_combout\ & (\Top|P\(57) & \Mid|OC[63]~369_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Top|P\(56),
	datab => \Mid|OC[61]~335_combout\,
	datac => \Top|P\(57),
	datad => \Mid|OC[63]~369_combout\,
	combout => \Mid|OC[63]~370_combout\);

-- Location: LCCOMB_X81_Y58_N20
\Mid|OC[63]~378\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|OC[63]~378_combout\ = (\Mid|BLAN|ForGenerate:60:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\ & ((\B[61]~input_o\) # (\A[61]~input_o\))) # 
-- (!\Mid|BLAN|ForGenerate:60:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\ & (\B[61]~input_o\ & \A[61]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mid|BLAN|ForGenerate:60:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\,
	datac => \B[61]~input_o\,
	datad => \A[61]~input_o\,
	combout => \Mid|OC[63]~378_combout\);

-- Location: LCCOMB_X81_Y58_N14
\Mid|OC[63]~379\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|OC[63]~379_combout\ = (\A[62]~input_o\ & ((\Mid|OC[63]~378_combout\) # (\B[62]~input_o\))) # (!\A[62]~input_o\ & (\Mid|OC[63]~378_combout\ & \B[62]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[62]~input_o\,
	datab => \Mid|OC[63]~378_combout\,
	datac => \B[62]~input_o\,
	combout => \Mid|OC[63]~379_combout\);

-- Location: LCCOMB_X80_Y56_N26
\Mid|OC[63]~380\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|OC[63]~380_combout\ = (\Mid|OC[63]~379_combout\) # ((!\Mid|OC[55]~301_combout\ & (\Top|P\(55) & \Mid|OC[63]~370_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mid|OC[55]~301_combout\,
	datab => \Top|P\(55),
	datac => \Mid|OC[63]~370_combout\,
	datad => \Mid|OC[63]~379_combout\,
	combout => \Mid|OC[63]~380_combout\);

-- Location: LCCOMB_X80_Y56_N4
\Mid|OC[63]~381\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|OC[63]~381_combout\ = (\Mid|OC[63]~370_combout\ & (\Mid|BLAN|ForGenerate:54:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|BP~0_combout\ & (\B[55]~input_o\ $ (\A[55]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[55]~input_o\,
	datab => \A[55]~input_o\,
	datac => \Mid|OC[63]~370_combout\,
	datad => \Mid|BLAN|ForGenerate:54:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|BP~0_combout\,
	combout => \Mid|OC[63]~381_combout\);

-- Location: LCCOMB_X81_Y57_N28
\Mid|OC[63]~377\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|OC[63]~377_combout\ = (\Mid|OC[63]~369_combout\ & (!\Mid|OC[59]~333_combout\ & (\A[59]~input_o\ $ (\B[59]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mid|OC[63]~369_combout\,
	datab => \A[59]~input_o\,
	datac => \B[59]~input_o\,
	datad => \Mid|OC[59]~333_combout\,
	combout => \Mid|OC[63]~377_combout\);

-- Location: LCCOMB_X80_Y56_N22
\Mid|OC[63]~382\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|OC[63]~382_combout\ = (\Mid|OC[63]~380_combout\) # ((\Mid|OC[63]~377_combout\) # ((\Mid|OC[63]~381_combout\ & !\Mid|OC[63]~264_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mid|OC[63]~380_combout\,
	datab => \Mid|OC[63]~381_combout\,
	datac => \Mid|OC[63]~377_combout\,
	datad => \Mid|OC[63]~264_combout\,
	combout => \Mid|OC[63]~382_combout\);

-- Location: LCCOMB_X80_Y56_N16
\Mid|OC[63]~371\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|OC[63]~371_combout\ = (\Mid|BLAN|ForGenerate:50:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|bG~1_combout\ & (\Mid|BLAN|ForGenerate:54:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|BP~0_combout\ & (\Mid|OC[63]~370_combout\ & 
-- \Top|P\(55))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mid|BLAN|ForGenerate:50:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|bG~1_combout\,
	datab => \Mid|BLAN|ForGenerate:54:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|BP~0_combout\,
	datac => \Mid|OC[63]~370_combout\,
	datad => \Top|P\(55),
	combout => \Mid|OC[63]~371_combout\);

-- Location: LCCOMB_X80_Y52_N6
\Mid|OC[63]~372\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|OC[63]~372_combout\ = (\Mid|OC[63]~371_combout\ & (\Top|P\(39) & (\Mid|BLAN|ForGenerate:53:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Lower|Recur:Upper|BP~1_combout\ & 
-- \Mid|BLAN|ForGenerate:42:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|bG~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mid|OC[63]~371_combout\,
	datab => \Top|P\(39),
	datac => \Mid|BLAN|ForGenerate:53:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Lower|Recur:Upper|BP~1_combout\,
	datad => \Mid|BLAN|ForGenerate:42:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|bG~3_combout\,
	combout => \Mid|OC[63]~372_combout\);

-- Location: LCCOMB_X83_Y52_N18
\Mid|OC[63]~374\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|OC[63]~374_combout\ = (\Mid|OC[63]~372_combout\ & (((\Mid|BLAN|ForGenerate:51:ColumnBlock|Recur:Upper|Recur:Lower|Recur:Upper|Recur:Upper|BP~1_combout\ & 
-- \Mid|BLAN|ForGenerate:34:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\)) # (!\Mid|OC[52]~271_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mid|OC[63]~372_combout\,
	datab => \Mid|OC[52]~271_combout\,
	datac => \Mid|BLAN|ForGenerate:51:ColumnBlock|Recur:Upper|Recur:Lower|Recur:Upper|Recur:Upper|BP~1_combout\,
	datad => \Mid|BLAN|ForGenerate:34:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\,
	combout => \Mid|OC[63]~374_combout\);

-- Location: LCCOMB_X80_Y52_N16
\Mid|OC[63]~375\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|OC[63]~375_combout\ = (\Mid|BLAN|ForGenerate:42:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\) # ((\Mid|BLAN|ForGenerate:42:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|BP~0_combout\ 
-- & \Mid|BLAN|ForGenerate:40:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mid|BLAN|ForGenerate:42:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|BP~0_combout\,
	datac => \Mid|BLAN|ForGenerate:40:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\,
	datad => \Mid|BLAN|ForGenerate:42:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\,
	combout => \Mid|OC[63]~375_combout\);

-- Location: LCCOMB_X80_Y52_N26
\Mid|OC[63]~376\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|OC[63]~376_combout\ = (\Mid|OC[63]~371_combout\ & ((\Mid|OC[63]~288_combout\) # ((\Mid|OC[63]~375_combout\ & \Mid|BLAN|ForGenerate:53:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Lower|Recur:Upper|BP~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mid|OC[63]~288_combout\,
	datab => \Mid|OC[63]~375_combout\,
	datac => \Mid|BLAN|ForGenerate:53:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Lower|Recur:Upper|BP~1_combout\,
	datad => \Mid|OC[63]~371_combout\,
	combout => \Mid|OC[63]~376_combout\);

-- Location: LCCOMB_X83_Y52_N22
\Mid|OC[63]~368\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|OC[63]~368_combout\ = (\Mid|BLAN|ForGenerate:32:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\) # ((\Mid|BLAN|ForGenerate:32:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\ & 
-- \Mid|OC[31]~152_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mid|BLAN|ForGenerate:32:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\,
	datab => \Mid|BLAN|ForGenerate:32:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\,
	datad => \Mid|OC[31]~152_combout\,
	combout => \Mid|OC[63]~368_combout\);

-- Location: LCCOMB_X83_Y52_N24
\Mid|OC[63]~373\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|OC[63]~373_combout\ = (\Mid|OC[63]~372_combout\ & (\Mid|BLAN|ForGenerate:51:ColumnBlock|Recur:Upper|Recur:Lower|Recur:Upper|Recur:Upper|BP~1_combout\ & (\Mid|OC[63]~368_combout\ & 
-- \Mid|BLAN|ForGenerate:34:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mid|OC[63]~372_combout\,
	datab => \Mid|BLAN|ForGenerate:51:ColumnBlock|Recur:Upper|Recur:Lower|Recur:Upper|Recur:Upper|BP~1_combout\,
	datac => \Mid|OC[63]~368_combout\,
	datad => \Mid|BLAN|ForGenerate:34:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\,
	combout => \Mid|OC[63]~373_combout\);

-- Location: LCCOMB_X83_Y52_N20
\Mid|OC[63]~383\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|OC[63]~383_combout\ = (\Mid|OC[63]~382_combout\) # ((\Mid|OC[63]~374_combout\) # ((\Mid|OC[63]~376_combout\) # (\Mid|OC[63]~373_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mid|OC[63]~382_combout\,
	datab => \Mid|OC[63]~374_combout\,
	datac => \Mid|OC[63]~376_combout\,
	datad => \Mid|OC[63]~373_combout\,
	combout => \Mid|OC[63]~383_combout\);

-- Location: LCCOMB_X81_Y54_N22
\Bot|S[63]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Bot|S\(63) = \B[63]~input_o\ $ (\A[63]~input_o\ $ (\Mid|OC[63]~383_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[63]~input_o\,
	datab => \A[63]~input_o\,
	datac => \Mid|OC[63]~383_combout\,
	combout => \Bot|S\(63));

-- Location: LCCOMB_X81_Y54_N8
\Mid|OC[64]~416\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|OC[64]~416_combout\ = (\Mid|BLAN|ForGenerate:55:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|BP~0_combout\ & (\Mid|OC[63]~370_combout\ & (\A[63]~input_o\ $ (\B[63]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mid|BLAN|ForGenerate:55:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|BP~0_combout\,
	datab => \A[63]~input_o\,
	datac => \B[63]~input_o\,
	datad => \Mid|OC[63]~370_combout\,
	combout => \Mid|OC[64]~416_combout\);

-- Location: LCCOMB_X81_Y54_N6
\Mid|OC[64]~390\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|OC[64]~390_combout\ = (\Mid|OC[64]~416_combout\ & ((\Mid|BLAN|ForGenerate:51:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\) # 
-- ((\Mid|BLAN|ForGenerate:49:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\ & \Mid|OC[56]~268_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mid|BLAN|ForGenerate:51:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\,
	datab => \Mid|BLAN|ForGenerate:49:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\,
	datac => \Mid|OC[64]~416_combout\,
	datad => \Mid|OC[56]~268_combout\,
	combout => \Mid|OC[64]~390_combout\);

-- Location: LCCOMB_X81_Y54_N26
\Top|P[63]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Top|P\(63) = \A[63]~input_o\ $ (\B[63]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[63]~input_o\,
	datac => \B[63]~input_o\,
	combout => \Top|P\(63));

-- Location: LCCOMB_X81_Y54_N0
\Mid|OC[64]~391\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|OC[64]~391_combout\ = (\Mid|OC[63]~370_combout\ & (\Top|P\(63) & ((\Mid|BLAN|ForGenerate:55:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~4_combout\) # 
-- (\Mid|BLAN|ForGenerate:55:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mid|BLAN|ForGenerate:55:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~4_combout\,
	datab => \Mid|OC[63]~370_combout\,
	datac => \Top|P\(63),
	datad => \Mid|BLAN|ForGenerate:55:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\,
	combout => \Mid|OC[64]~391_combout\);

-- Location: LCCOMB_X81_Y51_N30
\Mid|OC[64]~384\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|OC[64]~384_combout\ = (\Top|P\(39) & (\Mid|BLAN|ForGenerate:38:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|BP~0_combout\ & (\Mid|OC[55]~410_combout\ & \Top|P\(40))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Top|P\(39),
	datab => \Mid|BLAN|ForGenerate:38:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|BP~0_combout\,
	datac => \Mid|OC[55]~410_combout\,
	datad => \Top|P\(40),
	combout => \Mid|OC[64]~384_combout\);

-- Location: LCCOMB_X81_Y50_N10
\Mid|OC[64]~417\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|OC[64]~417_combout\ = (\Mid|OC[64]~384_combout\ & (\Mid|OC[32]~157_combout\ & (\Mid|BLAN|ForGenerate:35:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|BP~0_combout\ & 
-- \Mid|BLAN|ForGenerate:33:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|BP~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mid|OC[64]~384_combout\,
	datab => \Mid|OC[32]~157_combout\,
	datac => \Mid|BLAN|ForGenerate:35:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|BP~0_combout\,
	datad => \Mid|BLAN|ForGenerate:33:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|BP~0_combout\,
	combout => \Mid|OC[64]~417_combout\);

-- Location: LCCOMB_X79_Y54_N22
\Mid|OC[64]~419\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|OC[64]~419_combout\ = (\Mid|BLAN|ForGenerate:43:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\ & (\Mid|BLAN|ForGenerate:53:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Lower|Recur:Upper|BP~0_combout\ & 
-- (\B[47]~input_o\ $ (\A[47]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mid|BLAN|ForGenerate:43:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\,
	datab => \B[47]~input_o\,
	datac => \A[47]~input_o\,
	datad => \Mid|BLAN|ForGenerate:53:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Lower|Recur:Upper|BP~0_combout\,
	combout => \Mid|OC[64]~419_combout\);

-- Location: LCCOMB_X76_Y53_N2
\Mid|OC[64]~387\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|OC[64]~387_combout\ = (\Mid|BLAN|ForGenerate:54:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Lower|Recur:Upper|BP~0_combout\ & ((\Mid|OC[59]~413_combout\) # 
-- ((\Mid|BLAN|ForGenerate:43:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|BP~0_combout\ & \Mid|BLAN|ForGenerate:41:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mid|BLAN|ForGenerate:54:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Lower|Recur:Upper|BP~0_combout\,
	datab => \Mid|OC[59]~413_combout\,
	datac => \Mid|BLAN|ForGenerate:43:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|BP~0_combout\,
	datad => \Mid|BLAN|ForGenerate:41:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\,
	combout => \Mid|OC[64]~387_combout\);

-- Location: LCCOMB_X80_Y50_N26
\Mid|OC[64]~385\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|OC[64]~385_combout\ = (\Top|P\(39) & ((\Mid|BLAN|ForGenerate:35:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\) # 
-- ((\Mid|BLAN|ForGenerate:35:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|BP~0_combout\ & \Mid|BLAN|ForGenerate:33:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mid|BLAN|ForGenerate:35:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\,
	datab => \Mid|BLAN|ForGenerate:35:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|BP~0_combout\,
	datac => \Mid|BLAN|ForGenerate:33:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\,
	datad => \Top|P\(39),
	combout => \Mid|OC[64]~385_combout\);

-- Location: LCCOMB_X80_Y50_N20
\Mid|OC[64]~386\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|OC[64]~386_combout\ = (\Mid|OC[64]~385_combout\ & ((\Mid|BLAN|ForGenerate:38:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|BP~0_combout\) # ((\Mid|BLAN|ForGenerate:42:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|bG~2_combout\ & 
-- \Mid|BLAN|ForGenerate:37:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\)))) # (!\Mid|OC[64]~385_combout\ & (\Mid|BLAN|ForGenerate:42:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|bG~2_combout\ & 
-- ((\Mid|BLAN|ForGenerate:37:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mid|OC[64]~385_combout\,
	datab => \Mid|BLAN|ForGenerate:42:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|bG~2_combout\,
	datac => \Mid|BLAN|ForGenerate:38:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|BP~0_combout\,
	datad => \Mid|BLAN|ForGenerate:37:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\,
	combout => \Mid|OC[64]~386_combout\);

-- Location: LCCOMB_X79_Y54_N20
\Mid|OC[64]~418\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|OC[64]~418_combout\ = (\Mid|OC[64]~386_combout\ & (\Mid|OC[55]~410_combout\ & (\B[40]~input_o\ $ (\A[40]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[40]~input_o\,
	datab => \A[40]~input_o\,
	datac => \Mid|OC[64]~386_combout\,
	datad => \Mid|OC[55]~410_combout\,
	combout => \Mid|OC[64]~418_combout\);

-- Location: LCCOMB_X79_Y54_N14
\Mid|OC[64]~388\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|OC[64]~388_combout\ = (\Mid|OC[64]~419_combout\) # ((\Mid|OC[64]~387_combout\) # ((\Mid|OC[64]~418_combout\) # (!\Mid|OC[55]~298_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mid|OC[64]~419_combout\,
	datab => \Mid|OC[64]~387_combout\,
	datac => \Mid|OC[55]~298_combout\,
	datad => \Mid|OC[64]~418_combout\,
	combout => \Mid|OC[64]~388_combout\);

-- Location: LCCOMB_X81_Y54_N20
\Mid|OC[64]~389\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|OC[64]~389_combout\ = (\Mid|OC[64]~416_combout\ & (\Mid|BLAN|ForGenerate:51:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|BP~0_combout\ & ((\Mid|OC[64]~417_combout\) # (\Mid|OC[64]~388_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mid|OC[64]~417_combout\,
	datab => \Mid|OC[64]~388_combout\,
	datac => \Mid|OC[64]~416_combout\,
	datad => \Mid|BLAN|ForGenerate:51:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|BP~0_combout\,
	combout => \Mid|OC[64]~389_combout\);

-- Location: LCCOMB_X81_Y58_N8
\Mid|OC[64]~392\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|OC[64]~392_combout\ = (\A[62]~input_o\ & ((\Mid|BLAN|ForGenerate:61:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\) # ((\B[62]~input_o\) # (\Mid|OC[62]~365_combout\)))) # (!\A[62]~input_o\ & (\B[62]~input_o\ & 
-- ((\Mid|BLAN|ForGenerate:61:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\) # (\Mid|OC[62]~365_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[62]~input_o\,
	datab => \Mid|BLAN|ForGenerate:61:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\,
	datac => \B[62]~input_o\,
	datad => \Mid|OC[62]~365_combout\,
	combout => \Mid|OC[64]~392_combout\);

-- Location: LCCOMB_X81_Y54_N2
\Mid|OC[64]~420\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|OC[64]~420_combout\ = (\Mid|BLAN|ForGenerate:59:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\ & (\Mid|OC[63]~369_combout\ & (\B[63]~input_o\ $ (\A[63]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[63]~input_o\,
	datab => \Mid|BLAN|ForGenerate:59:ColumnBlock|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|Recur:Upper|bG~0_combout\,
	datac => \A[63]~input_o\,
	datad => \Mid|OC[63]~369_combout\,
	combout => \Mid|OC[64]~420_combout\);

-- Location: LCCOMB_X81_Y54_N10
\Mid|OC[64]~393\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|OC[64]~393_combout\ = (\Mid|OC[64]~420_combout\) # ((\Mid|OC[64]~392_combout\ & ((\A[63]~input_o\) # (\B[63]~input_o\))) # (!\Mid|OC[64]~392_combout\ & (\A[63]~input_o\ & \B[63]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mid|OC[64]~392_combout\,
	datab => \A[63]~input_o\,
	datac => \B[63]~input_o\,
	datad => \Mid|OC[64]~420_combout\,
	combout => \Mid|OC[64]~393_combout\);

-- Location: LCCOMB_X81_Y54_N28
\Mid|OC[64]~394\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mid|OC[64]~394_combout\ = (\Mid|OC[64]~390_combout\) # ((\Mid|OC[64]~391_combout\) # ((\Mid|OC[64]~389_combout\) # (\Mid|OC[64]~393_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mid|OC[64]~390_combout\,
	datab => \Mid|OC[64]~391_combout\,
	datac => \Mid|OC[64]~389_combout\,
	datad => \Mid|OC[64]~393_combout\,
	combout => \Mid|OC[64]~394_combout\);

-- Location: LCCOMB_X89_Y56_N8
\Ovfl~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Ovfl~0_combout\ = \Mid|OC[64]~394_combout\ $ (\Mid|OC[63]~383_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mid|OC[64]~394_combout\,
	datad => \Mid|OC[63]~383_combout\,
	combout => \Ovfl~0_combout\);

ww_S(0) <= \S[0]~output_o\;

ww_S(1) <= \S[1]~output_o\;

ww_S(2) <= \S[2]~output_o\;

ww_S(3) <= \S[3]~output_o\;

ww_S(4) <= \S[4]~output_o\;

ww_S(5) <= \S[5]~output_o\;

ww_S(6) <= \S[6]~output_o\;

ww_S(7) <= \S[7]~output_o\;

ww_S(8) <= \S[8]~output_o\;

ww_S(9) <= \S[9]~output_o\;

ww_S(10) <= \S[10]~output_o\;

ww_S(11) <= \S[11]~output_o\;

ww_S(12) <= \S[12]~output_o\;

ww_S(13) <= \S[13]~output_o\;

ww_S(14) <= \S[14]~output_o\;

ww_S(15) <= \S[15]~output_o\;

ww_S(16) <= \S[16]~output_o\;

ww_S(17) <= \S[17]~output_o\;

ww_S(18) <= \S[18]~output_o\;

ww_S(19) <= \S[19]~output_o\;

ww_S(20) <= \S[20]~output_o\;

ww_S(21) <= \S[21]~output_o\;

ww_S(22) <= \S[22]~output_o\;

ww_S(23) <= \S[23]~output_o\;

ww_S(24) <= \S[24]~output_o\;

ww_S(25) <= \S[25]~output_o\;

ww_S(26) <= \S[26]~output_o\;

ww_S(27) <= \S[27]~output_o\;

ww_S(28) <= \S[28]~output_o\;

ww_S(29) <= \S[29]~output_o\;

ww_S(30) <= \S[30]~output_o\;

ww_S(31) <= \S[31]~output_o\;

ww_S(32) <= \S[32]~output_o\;

ww_S(33) <= \S[33]~output_o\;

ww_S(34) <= \S[34]~output_o\;

ww_S(35) <= \S[35]~output_o\;

ww_S(36) <= \S[36]~output_o\;

ww_S(37) <= \S[37]~output_o\;

ww_S(38) <= \S[38]~output_o\;

ww_S(39) <= \S[39]~output_o\;

ww_S(40) <= \S[40]~output_o\;

ww_S(41) <= \S[41]~output_o\;

ww_S(42) <= \S[42]~output_o\;

ww_S(43) <= \S[43]~output_o\;

ww_S(44) <= \S[44]~output_o\;

ww_S(45) <= \S[45]~output_o\;

ww_S(46) <= \S[46]~output_o\;

ww_S(47) <= \S[47]~output_o\;

ww_S(48) <= \S[48]~output_o\;

ww_S(49) <= \S[49]~output_o\;

ww_S(50) <= \S[50]~output_o\;

ww_S(51) <= \S[51]~output_o\;

ww_S(52) <= \S[52]~output_o\;

ww_S(53) <= \S[53]~output_o\;

ww_S(54) <= \S[54]~output_o\;

ww_S(55) <= \S[55]~output_o\;

ww_S(56) <= \S[56]~output_o\;

ww_S(57) <= \S[57]~output_o\;

ww_S(58) <= \S[58]~output_o\;

ww_S(59) <= \S[59]~output_o\;

ww_S(60) <= \S[60]~output_o\;

ww_S(61) <= \S[61]~output_o\;

ww_S(62) <= \S[62]~output_o\;

ww_S(63) <= \S[63]~output_o\;

ww_Cout <= \Cout~output_o\;

ww_Ovfl <= \Ovfl~output_o\;
END structure;


