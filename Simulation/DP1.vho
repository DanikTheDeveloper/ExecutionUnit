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

-- DATE "10/27/2024 12:52:08"

-- 
-- Device: Altera 5CSXFC6D6F31C6 Package FBGA896
-- 

-- 
-- This VHDL file should be used for Custom VHDL only
-- 

LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
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
-- S[0]	=>  Location: PIN_AH28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[1]	=>  Location: PIN_AK3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[2]	=>  Location: PIN_AF13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[3]	=>  Location: PIN_AE26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[4]	=>  Location: PIN_AE23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[5]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[6]	=>  Location: PIN_AA28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[7]	=>  Location: PIN_AD27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[8]	=>  Location: PIN_AF26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[9]	=>  Location: PIN_AC25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[10]	=>  Location: PIN_AA24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[11]	=>  Location: PIN_AF28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[12]	=>  Location: PIN_AA12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[13]	=>  Location: PIN_AJ25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[14]	=>  Location: PIN_AA19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[15]	=>  Location: PIN_AK12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[16]	=>  Location: PIN_AA20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[17]	=>  Location: PIN_AB13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[18]	=>  Location: PIN_AG3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[19]	=>  Location: PIN_V23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[20]	=>  Location: PIN_AJ27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[21]	=>  Location: PIN_AB23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[22]	=>  Location: PIN_AJ29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[23]	=>  Location: PIN_Y21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[24]	=>  Location: PIN_Y23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[25]	=>  Location: PIN_AF9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[26]	=>  Location: PIN_AB21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[27]	=>  Location: PIN_AE11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[28]	=>  Location: PIN_AB22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[29]	=>  Location: PIN_AF8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[30]	=>  Location: PIN_AJ5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[31]	=>  Location: PIN_AH10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[32]	=>  Location: PIN_AK21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[33]	=>  Location: PIN_AA21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[34]	=>  Location: PIN_AF10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[35]	=>  Location: PIN_AA18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[36]	=>  Location: PIN_AJ6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[37]	=>  Location: PIN_AD20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[38]	=>  Location: PIN_AK4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[39]	=>  Location: PIN_AK2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[40]	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[41]	=>  Location: PIN_AF5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[42]	=>  Location: PIN_AF21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[43]	=>  Location: PIN_AG11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[44]	=>  Location: PIN_AK7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[45]	=>  Location: PIN_AJ26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[46]	=>  Location: PIN_Y19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[47]	=>  Location: PIN_AJ24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[48]	=>  Location: PIN_AG6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[49]	=>  Location: PIN_AE14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[50]	=>  Location: PIN_Y18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[51]	=>  Location: PIN_AK26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[52]	=>  Location: PIN_AH25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[53]	=>  Location: PIN_AD12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[54]	=>  Location: PIN_AJ14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[55]	=>  Location: PIN_AJ2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[56]	=>  Location: PIN_AG10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[57]	=>  Location: PIN_AH14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[58]	=>  Location: PIN_AD19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[59]	=>  Location: PIN_AG25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[60]	=>  Location: PIN_AJ11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[61]	=>  Location: PIN_AH27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[62]	=>  Location: PIN_AE19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[63]	=>  Location: PIN_AJ16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Cout	=>  Location: PIN_AD17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Ovfl	=>  Location: PIN_AH15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[63]	=>  Location: PIN_AF19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[63]	=>  Location: PIN_AG20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Cin	=>  Location: PIN_AK6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[0]	=>  Location: PIN_W25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[0]	=>  Location: PIN_AF15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[1]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[1]	=>  Location: PIN_AC9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[2]	=>  Location: PIN_AC27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[2]	=>  Location: PIN_AE28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[3]	=>  Location: PIN_AD26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[3]	=>  Location: PIN_AH3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[4]	=>  Location: PIN_AK27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[4]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[5]	=>  Location: PIN_AD25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[5]	=>  Location: PIN_V25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[6]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[6]	=>  Location: PIN_AH5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[7]	=>  Location: PIN_AB30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[7]	=>  Location: PIN_AC29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[8]	=>  Location: PIN_AH7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[8]	=>  Location: PIN_W20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[9]	=>  Location: PIN_AG27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[9]	=>  Location: PIN_AH29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[10]	=>  Location: PIN_AF4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[10]	=>  Location: PIN_AE22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[11]	=>  Location: PIN_AH30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[11]	=>  Location: PIN_AC12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[12]	=>  Location: PIN_V18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[12]	=>  Location: PIN_AE18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[13]	=>  Location: PIN_AG5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[13]	=>  Location: PIN_AH9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[14]	=>  Location: PIN_AG28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[14]	=>  Location: PIN_AF16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[15]	=>  Location: PIN_V16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[15]	=>  Location: PIN_W24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[16]	=>  Location: PIN_AK8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[16]	=>  Location: PIN_AF30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[17]	=>  Location: PIN_AD21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[17]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[18]	=>  Location: PIN_AG7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[18]	=>  Location: PIN_AK18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[19]	=>  Location: PIN_AB26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[19]	=>  Location: PIN_AC22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[20]	=>  Location: PIN_AE27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[20]	=>  Location: PIN_AC23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[21]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[21]	=>  Location: PIN_AA25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[22]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[22]	=>  Location: PIN_AF6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[23]	=>  Location: PIN_AH24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[23]	=>  Location: PIN_AG30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[24]	=>  Location: PIN_AF29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[24]	=>  Location: PIN_AB25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[25]	=>  Location: PIN_AH13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[25]	=>  Location: PIN_AJ21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[26]	=>  Location: PIN_AF11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[26]	=>  Location: PIN_AJ19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[27]	=>  Location: PIN_AK13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[27]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[28]	=>  Location: PIN_AG2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[28]	=>  Location: PIN_AJ4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[29]	=>  Location: PIN_Y24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[29]	=>  Location: PIN_AF25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[30]	=>  Location: PIN_AE7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[30]	=>  Location: PIN_AG16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[31]	=>  Location: PIN_AH12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[31]	=>  Location: PIN_Y17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[32]	=>  Location: PIN_AC14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[32]	=>  Location: PIN_V17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[33]	=>  Location: PIN_AJ7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[33]	=>  Location: PIN_AG1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[34]	=>  Location: PIN_AC18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[34]	=>  Location: PIN_AD14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[35]	=>  Location: PIN_AG26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[35]	=>  Location: PIN_AC20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[36]	=>  Location: PIN_AH4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[36]	=>  Location: PIN_AJ1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[37]	=>  Location: PIN_AG12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[37]	=>  Location: PIN_AK9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[38]	=>  Location: PIN_AG17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[38]	=>  Location: PIN_AJ9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[39]	=>  Location: PIN_W16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[39]	=>  Location: PIN_AK11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[40]	=>  Location: PIN_AK16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[40]	=>  Location: PIN_AG18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[41]	=>  Location: PIN_AH22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[41]	=>  Location: PIN_AJ10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[42]	=>  Location: PIN_AK14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[42]	=>  Location: PIN_AF24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[43]	=>  Location: PIN_AK22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[43]	=>  Location: PIN_AH18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[44]	=>  Location: PIN_Y16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[44]	=>  Location: PIN_AF20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[45]	=>  Location: PIN_W19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[45]	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[46]	=>  Location: PIN_AF14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[46]	=>  Location: PIN_AH19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[47]	=>  Location: PIN_AG15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[47]	=>  Location: PIN_AK23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[48]	=>  Location: PIN_AD10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[48]	=>  Location: PIN_AH2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[49]	=>  Location: PIN_AG8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[49]	=>  Location: PIN_AH23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[50]	=>  Location: PIN_AK28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[50]	=>  Location: PIN_AK19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[51]	=>  Location: PIN_AJ12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[51]	=>  Location: PIN_AG21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[52]	=>  Location: PIN_AH17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[52]	=>  Location: PIN_W15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[53]	=>  Location: PIN_AE17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[53]	=>  Location: PIN_AE13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[54]	=>  Location: PIN_AH20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[54]	=>  Location: PIN_W17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[55]	=>  Location: PIN_AE16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[55]	=>  Location: PIN_AG22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[56]	=>  Location: PIN_AD24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[56]	=>  Location: PIN_AK29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[57]	=>  Location: PIN_AG13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[57]	=>  Location: PIN_AA16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[58]	=>  Location: PIN_AJ22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[58]	=>  Location: PIN_AF18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[59]	=>  Location: PIN_AG23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[59]	=>  Location: PIN_AD7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[60]	=>  Location: PIN_AJ20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[60]	=>  Location: PIN_AF23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[61]	=>  Location: PIN_AJ17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[61]	=>  Location: PIN_AK24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[62]	=>  Location: PIN_AH8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[62]	=>  Location: PIN_AE24,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \B[0]~input_o\ : std_logic;
SIGNAL \Cin~input_o\ : std_logic;
SIGNAL \A[0]~input_o\ : std_logic;
SIGNAL \_~1_sumout\ : std_logic;
SIGNAL \A[1]~input_o\ : std_logic;
SIGNAL \B[1]~input_o\ : std_logic;
SIGNAL \_~2\ : std_logic;
SIGNAL \_~3\ : std_logic;
SIGNAL \_~5_sumout\ : std_logic;
SIGNAL \A[2]~input_o\ : std_logic;
SIGNAL \B[2]~input_o\ : std_logic;
SIGNAL \_~6\ : std_logic;
SIGNAL \_~7\ : std_logic;
SIGNAL \_~9_sumout\ : std_logic;
SIGNAL \B[3]~input_o\ : std_logic;
SIGNAL \A[3]~input_o\ : std_logic;
SIGNAL \_~10\ : std_logic;
SIGNAL \_~11\ : std_logic;
SIGNAL \_~13_sumout\ : std_logic;
SIGNAL \B[4]~input_o\ : std_logic;
SIGNAL \A[4]~input_o\ : std_logic;
SIGNAL \_~14\ : std_logic;
SIGNAL \_~15\ : std_logic;
SIGNAL \_~17_sumout\ : std_logic;
SIGNAL \B[5]~input_o\ : std_logic;
SIGNAL \A[5]~input_o\ : std_logic;
SIGNAL \_~18\ : std_logic;
SIGNAL \_~19\ : std_logic;
SIGNAL \_~21_sumout\ : std_logic;
SIGNAL \B[6]~input_o\ : std_logic;
SIGNAL \A[6]~input_o\ : std_logic;
SIGNAL \_~22\ : std_logic;
SIGNAL \_~23\ : std_logic;
SIGNAL \_~25_sumout\ : std_logic;
SIGNAL \A[7]~input_o\ : std_logic;
SIGNAL \B[7]~input_o\ : std_logic;
SIGNAL \_~26\ : std_logic;
SIGNAL \_~27\ : std_logic;
SIGNAL \_~29_sumout\ : std_logic;
SIGNAL \B[8]~input_o\ : std_logic;
SIGNAL \A[8]~input_o\ : std_logic;
SIGNAL \_~30\ : std_logic;
SIGNAL \_~31\ : std_logic;
SIGNAL \_~33_sumout\ : std_logic;
SIGNAL \B[9]~input_o\ : std_logic;
SIGNAL \A[9]~input_o\ : std_logic;
SIGNAL \_~34\ : std_logic;
SIGNAL \_~35\ : std_logic;
SIGNAL \_~37_sumout\ : std_logic;
SIGNAL \A[10]~input_o\ : std_logic;
SIGNAL \B[10]~input_o\ : std_logic;
SIGNAL \_~38\ : std_logic;
SIGNAL \_~39\ : std_logic;
SIGNAL \_~41_sumout\ : std_logic;
SIGNAL \B[11]~input_o\ : std_logic;
SIGNAL \A[11]~input_o\ : std_logic;
SIGNAL \_~42\ : std_logic;
SIGNAL \_~43\ : std_logic;
SIGNAL \_~45_sumout\ : std_logic;
SIGNAL \A[12]~input_o\ : std_logic;
SIGNAL \B[12]~input_o\ : std_logic;
SIGNAL \_~46\ : std_logic;
SIGNAL \_~47\ : std_logic;
SIGNAL \_~49_sumout\ : std_logic;
SIGNAL \B[13]~input_o\ : std_logic;
SIGNAL \A[13]~input_o\ : std_logic;
SIGNAL \_~50\ : std_logic;
SIGNAL \_~51\ : std_logic;
SIGNAL \_~53_sumout\ : std_logic;
SIGNAL \B[14]~input_o\ : std_logic;
SIGNAL \A[14]~input_o\ : std_logic;
SIGNAL \_~54\ : std_logic;
SIGNAL \_~55\ : std_logic;
SIGNAL \_~57_sumout\ : std_logic;
SIGNAL \B[15]~input_o\ : std_logic;
SIGNAL \A[15]~input_o\ : std_logic;
SIGNAL \_~58\ : std_logic;
SIGNAL \_~59\ : std_logic;
SIGNAL \_~61_sumout\ : std_logic;
SIGNAL \B[16]~input_o\ : std_logic;
SIGNAL \A[16]~input_o\ : std_logic;
SIGNAL \_~62\ : std_logic;
SIGNAL \_~63\ : std_logic;
SIGNAL \_~65_sumout\ : std_logic;
SIGNAL \A[17]~input_o\ : std_logic;
SIGNAL \B[17]~input_o\ : std_logic;
SIGNAL \_~66\ : std_logic;
SIGNAL \_~67\ : std_logic;
SIGNAL \_~69_sumout\ : std_logic;
SIGNAL \B[18]~input_o\ : std_logic;
SIGNAL \A[18]~input_o\ : std_logic;
SIGNAL \_~70\ : std_logic;
SIGNAL \_~71\ : std_logic;
SIGNAL \_~73_sumout\ : std_logic;
SIGNAL \B[19]~input_o\ : std_logic;
SIGNAL \A[19]~input_o\ : std_logic;
SIGNAL \_~74\ : std_logic;
SIGNAL \_~75\ : std_logic;
SIGNAL \_~77_sumout\ : std_logic;
SIGNAL \B[20]~input_o\ : std_logic;
SIGNAL \A[20]~input_o\ : std_logic;
SIGNAL \_~78\ : std_logic;
SIGNAL \_~79\ : std_logic;
SIGNAL \_~81_sumout\ : std_logic;
SIGNAL \A[21]~input_o\ : std_logic;
SIGNAL \B[21]~input_o\ : std_logic;
SIGNAL \_~82\ : std_logic;
SIGNAL \_~83\ : std_logic;
SIGNAL \_~85_sumout\ : std_logic;
SIGNAL \A[22]~input_o\ : std_logic;
SIGNAL \B[22]~input_o\ : std_logic;
SIGNAL \_~86\ : std_logic;
SIGNAL \_~87\ : std_logic;
SIGNAL \_~89_sumout\ : std_logic;
SIGNAL \B[23]~input_o\ : std_logic;
SIGNAL \A[23]~input_o\ : std_logic;
SIGNAL \_~90\ : std_logic;
SIGNAL \_~91\ : std_logic;
SIGNAL \_~93_sumout\ : std_logic;
SIGNAL \B[24]~input_o\ : std_logic;
SIGNAL \A[24]~input_o\ : std_logic;
SIGNAL \_~94\ : std_logic;
SIGNAL \_~95\ : std_logic;
SIGNAL \_~97_sumout\ : std_logic;
SIGNAL \B[25]~input_o\ : std_logic;
SIGNAL \A[25]~input_o\ : std_logic;
SIGNAL \_~98\ : std_logic;
SIGNAL \_~99\ : std_logic;
SIGNAL \_~101_sumout\ : std_logic;
SIGNAL \B[26]~input_o\ : std_logic;
SIGNAL \A[26]~input_o\ : std_logic;
SIGNAL \_~102\ : std_logic;
SIGNAL \_~103\ : std_logic;
SIGNAL \_~105_sumout\ : std_logic;
SIGNAL \A[27]~input_o\ : std_logic;
SIGNAL \B[27]~input_o\ : std_logic;
SIGNAL \_~106\ : std_logic;
SIGNAL \_~107\ : std_logic;
SIGNAL \_~109_sumout\ : std_logic;
SIGNAL \B[28]~input_o\ : std_logic;
SIGNAL \A[28]~input_o\ : std_logic;
SIGNAL \_~110\ : std_logic;
SIGNAL \_~111\ : std_logic;
SIGNAL \_~113_sumout\ : std_logic;
SIGNAL \A[29]~input_o\ : std_logic;
SIGNAL \B[29]~input_o\ : std_logic;
SIGNAL \_~114\ : std_logic;
SIGNAL \_~115\ : std_logic;
SIGNAL \_~117_sumout\ : std_logic;
SIGNAL \B[30]~input_o\ : std_logic;
SIGNAL \A[30]~input_o\ : std_logic;
SIGNAL \_~118\ : std_logic;
SIGNAL \_~119\ : std_logic;
SIGNAL \_~121_sumout\ : std_logic;
SIGNAL \B[31]~input_o\ : std_logic;
SIGNAL \A[31]~input_o\ : std_logic;
SIGNAL \_~122\ : std_logic;
SIGNAL \_~123\ : std_logic;
SIGNAL \_~125_sumout\ : std_logic;
SIGNAL \A[32]~input_o\ : std_logic;
SIGNAL \B[32]~input_o\ : std_logic;
SIGNAL \_~126\ : std_logic;
SIGNAL \_~127\ : std_logic;
SIGNAL \_~129_sumout\ : std_logic;
SIGNAL \A[33]~input_o\ : std_logic;
SIGNAL \B[33]~input_o\ : std_logic;
SIGNAL \_~130\ : std_logic;
SIGNAL \_~131\ : std_logic;
SIGNAL \_~133_sumout\ : std_logic;
SIGNAL \A[34]~input_o\ : std_logic;
SIGNAL \B[34]~input_o\ : std_logic;
SIGNAL \_~134\ : std_logic;
SIGNAL \_~135\ : std_logic;
SIGNAL \_~137_sumout\ : std_logic;
SIGNAL \A[35]~input_o\ : std_logic;
SIGNAL \B[35]~input_o\ : std_logic;
SIGNAL \_~138\ : std_logic;
SIGNAL \_~139\ : std_logic;
SIGNAL \_~141_sumout\ : std_logic;
SIGNAL \A[36]~input_o\ : std_logic;
SIGNAL \B[36]~input_o\ : std_logic;
SIGNAL \_~142\ : std_logic;
SIGNAL \_~143\ : std_logic;
SIGNAL \_~145_sumout\ : std_logic;
SIGNAL \A[37]~input_o\ : std_logic;
SIGNAL \B[37]~input_o\ : std_logic;
SIGNAL \_~146\ : std_logic;
SIGNAL \_~147\ : std_logic;
SIGNAL \_~149_sumout\ : std_logic;
SIGNAL \B[38]~input_o\ : std_logic;
SIGNAL \A[38]~input_o\ : std_logic;
SIGNAL \_~150\ : std_logic;
SIGNAL \_~151\ : std_logic;
SIGNAL \_~153_sumout\ : std_logic;
SIGNAL \A[39]~input_o\ : std_logic;
SIGNAL \B[39]~input_o\ : std_logic;
SIGNAL \_~154\ : std_logic;
SIGNAL \_~155\ : std_logic;
SIGNAL \_~157_sumout\ : std_logic;
SIGNAL \A[40]~input_o\ : std_logic;
SIGNAL \B[40]~input_o\ : std_logic;
SIGNAL \_~158\ : std_logic;
SIGNAL \_~159\ : std_logic;
SIGNAL \_~161_sumout\ : std_logic;
SIGNAL \B[41]~input_o\ : std_logic;
SIGNAL \A[41]~input_o\ : std_logic;
SIGNAL \_~162\ : std_logic;
SIGNAL \_~163\ : std_logic;
SIGNAL \_~165_sumout\ : std_logic;
SIGNAL \B[42]~input_o\ : std_logic;
SIGNAL \A[42]~input_o\ : std_logic;
SIGNAL \_~166\ : std_logic;
SIGNAL \_~167\ : std_logic;
SIGNAL \_~169_sumout\ : std_logic;
SIGNAL \A[43]~input_o\ : std_logic;
SIGNAL \B[43]~input_o\ : std_logic;
SIGNAL \_~170\ : std_logic;
SIGNAL \_~171\ : std_logic;
SIGNAL \_~173_sumout\ : std_logic;
SIGNAL \B[44]~input_o\ : std_logic;
SIGNAL \A[44]~input_o\ : std_logic;
SIGNAL \_~174\ : std_logic;
SIGNAL \_~175\ : std_logic;
SIGNAL \_~177_sumout\ : std_logic;
SIGNAL \A[45]~input_o\ : std_logic;
SIGNAL \B[45]~input_o\ : std_logic;
SIGNAL \_~178\ : std_logic;
SIGNAL \_~179\ : std_logic;
SIGNAL \_~181_sumout\ : std_logic;
SIGNAL \A[46]~input_o\ : std_logic;
SIGNAL \B[46]~input_o\ : std_logic;
SIGNAL \_~182\ : std_logic;
SIGNAL \_~183\ : std_logic;
SIGNAL \_~185_sumout\ : std_logic;
SIGNAL \B[47]~input_o\ : std_logic;
SIGNAL \A[47]~input_o\ : std_logic;
SIGNAL \_~186\ : std_logic;
SIGNAL \_~187\ : std_logic;
SIGNAL \_~189_sumout\ : std_logic;
SIGNAL \A[48]~input_o\ : std_logic;
SIGNAL \B[48]~input_o\ : std_logic;
SIGNAL \_~190\ : std_logic;
SIGNAL \_~191\ : std_logic;
SIGNAL \_~193_sumout\ : std_logic;
SIGNAL \B[49]~input_o\ : std_logic;
SIGNAL \A[49]~input_o\ : std_logic;
SIGNAL \_~194\ : std_logic;
SIGNAL \_~195\ : std_logic;
SIGNAL \_~197_sumout\ : std_logic;
SIGNAL \B[50]~input_o\ : std_logic;
SIGNAL \A[50]~input_o\ : std_logic;
SIGNAL \_~198\ : std_logic;
SIGNAL \_~199\ : std_logic;
SIGNAL \_~201_sumout\ : std_logic;
SIGNAL \A[51]~input_o\ : std_logic;
SIGNAL \B[51]~input_o\ : std_logic;
SIGNAL \_~202\ : std_logic;
SIGNAL \_~203\ : std_logic;
SIGNAL \_~205_sumout\ : std_logic;
SIGNAL \A[52]~input_o\ : std_logic;
SIGNAL \B[52]~input_o\ : std_logic;
SIGNAL \_~206\ : std_logic;
SIGNAL \_~207\ : std_logic;
SIGNAL \_~209_sumout\ : std_logic;
SIGNAL \B[53]~input_o\ : std_logic;
SIGNAL \A[53]~input_o\ : std_logic;
SIGNAL \_~210\ : std_logic;
SIGNAL \_~211\ : std_logic;
SIGNAL \_~213_sumout\ : std_logic;
SIGNAL \B[54]~input_o\ : std_logic;
SIGNAL \A[54]~input_o\ : std_logic;
SIGNAL \_~214\ : std_logic;
SIGNAL \_~215\ : std_logic;
SIGNAL \_~217_sumout\ : std_logic;
SIGNAL \B[55]~input_o\ : std_logic;
SIGNAL \A[55]~input_o\ : std_logic;
SIGNAL \_~218\ : std_logic;
SIGNAL \_~219\ : std_logic;
SIGNAL \_~221_sumout\ : std_logic;
SIGNAL \A[56]~input_o\ : std_logic;
SIGNAL \B[56]~input_o\ : std_logic;
SIGNAL \_~222\ : std_logic;
SIGNAL \_~223\ : std_logic;
SIGNAL \_~225_sumout\ : std_logic;
SIGNAL \B[57]~input_o\ : std_logic;
SIGNAL \A[57]~input_o\ : std_logic;
SIGNAL \_~226\ : std_logic;
SIGNAL \_~227\ : std_logic;
SIGNAL \_~229_sumout\ : std_logic;
SIGNAL \B[58]~input_o\ : std_logic;
SIGNAL \A[58]~input_o\ : std_logic;
SIGNAL \_~230\ : std_logic;
SIGNAL \_~231\ : std_logic;
SIGNAL \_~233_sumout\ : std_logic;
SIGNAL \B[59]~input_o\ : std_logic;
SIGNAL \A[59]~input_o\ : std_logic;
SIGNAL \_~234\ : std_logic;
SIGNAL \_~235\ : std_logic;
SIGNAL \_~237_sumout\ : std_logic;
SIGNAL \B[60]~input_o\ : std_logic;
SIGNAL \A[60]~input_o\ : std_logic;
SIGNAL \_~238\ : std_logic;
SIGNAL \_~239\ : std_logic;
SIGNAL \_~241_sumout\ : std_logic;
SIGNAL \B[61]~input_o\ : std_logic;
SIGNAL \A[61]~input_o\ : std_logic;
SIGNAL \_~242\ : std_logic;
SIGNAL \_~243\ : std_logic;
SIGNAL \_~245_sumout\ : std_logic;
SIGNAL \B[62]~input_o\ : std_logic;
SIGNAL \A[62]~input_o\ : std_logic;
SIGNAL \_~246\ : std_logic;
SIGNAL \_~247\ : std_logic;
SIGNAL \_~249_sumout\ : std_logic;
SIGNAL \A[63]~input_o\ : std_logic;
SIGNAL \B[63]~input_o\ : std_logic;
SIGNAL \_~250\ : std_logic;
SIGNAL \_~251\ : std_logic;
SIGNAL \_~253_sumout\ : std_logic;
SIGNAL \_~254\ : std_logic;
SIGNAL \_~255\ : std_logic;
SIGNAL \_~257_sumout\ : std_logic;
SIGNAL \Ovfl~0_combout\ : std_logic;
SIGNAL \ALT_INV_A[62]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[62]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[61]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[61]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[60]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[60]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[59]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[59]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[58]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[58]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[57]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[57]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[56]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[56]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[55]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[55]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[54]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[54]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[53]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[53]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[52]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[52]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[51]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[51]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[50]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[50]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[49]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[49]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[48]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[48]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[47]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[47]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[46]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[46]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[45]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[45]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[44]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[44]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[43]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[43]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[42]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[42]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[41]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[41]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[40]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[40]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[39]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[39]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[38]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[38]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[37]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[37]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[36]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[36]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[35]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[35]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[34]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[34]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[33]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[33]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[32]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[32]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[31]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[31]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[30]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[30]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[29]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[29]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[28]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[28]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[27]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[27]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[26]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[26]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[25]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[25]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[24]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[24]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[23]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[23]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[22]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[22]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[21]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[21]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[20]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[20]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[19]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[19]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[18]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[18]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[17]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[17]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[16]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[16]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[15]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[15]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[14]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[14]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[13]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[13]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[12]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[12]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[11]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[11]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[10]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[10]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[9]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[9]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[8]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[8]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_Cin~input_o\ : std_logic;
SIGNAL \ALT_INV_A[63]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[63]~input_o\ : std_logic;
SIGNAL \ALT_INV_Ovfl~0_combout\ : std_logic;
SIGNAL \ALT_INV__~253_sumout\ : std_logic;

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
\ALT_INV_A[62]~input_o\ <= NOT \A[62]~input_o\;
\ALT_INV_B[62]~input_o\ <= NOT \B[62]~input_o\;
\ALT_INV_A[61]~input_o\ <= NOT \A[61]~input_o\;
\ALT_INV_B[61]~input_o\ <= NOT \B[61]~input_o\;
\ALT_INV_A[60]~input_o\ <= NOT \A[60]~input_o\;
\ALT_INV_B[60]~input_o\ <= NOT \B[60]~input_o\;
\ALT_INV_A[59]~input_o\ <= NOT \A[59]~input_o\;
\ALT_INV_B[59]~input_o\ <= NOT \B[59]~input_o\;
\ALT_INV_A[58]~input_o\ <= NOT \A[58]~input_o\;
\ALT_INV_B[58]~input_o\ <= NOT \B[58]~input_o\;
\ALT_INV_A[57]~input_o\ <= NOT \A[57]~input_o\;
\ALT_INV_B[57]~input_o\ <= NOT \B[57]~input_o\;
\ALT_INV_A[56]~input_o\ <= NOT \A[56]~input_o\;
\ALT_INV_B[56]~input_o\ <= NOT \B[56]~input_o\;
\ALT_INV_A[55]~input_o\ <= NOT \A[55]~input_o\;
\ALT_INV_B[55]~input_o\ <= NOT \B[55]~input_o\;
\ALT_INV_A[54]~input_o\ <= NOT \A[54]~input_o\;
\ALT_INV_B[54]~input_o\ <= NOT \B[54]~input_o\;
\ALT_INV_A[53]~input_o\ <= NOT \A[53]~input_o\;
\ALT_INV_B[53]~input_o\ <= NOT \B[53]~input_o\;
\ALT_INV_A[52]~input_o\ <= NOT \A[52]~input_o\;
\ALT_INV_B[52]~input_o\ <= NOT \B[52]~input_o\;
\ALT_INV_A[51]~input_o\ <= NOT \A[51]~input_o\;
\ALT_INV_B[51]~input_o\ <= NOT \B[51]~input_o\;
\ALT_INV_A[50]~input_o\ <= NOT \A[50]~input_o\;
\ALT_INV_B[50]~input_o\ <= NOT \B[50]~input_o\;
\ALT_INV_A[49]~input_o\ <= NOT \A[49]~input_o\;
\ALT_INV_B[49]~input_o\ <= NOT \B[49]~input_o\;
\ALT_INV_A[48]~input_o\ <= NOT \A[48]~input_o\;
\ALT_INV_B[48]~input_o\ <= NOT \B[48]~input_o\;
\ALT_INV_A[47]~input_o\ <= NOT \A[47]~input_o\;
\ALT_INV_B[47]~input_o\ <= NOT \B[47]~input_o\;
\ALT_INV_A[46]~input_o\ <= NOT \A[46]~input_o\;
\ALT_INV_B[46]~input_o\ <= NOT \B[46]~input_o\;
\ALT_INV_A[45]~input_o\ <= NOT \A[45]~input_o\;
\ALT_INV_B[45]~input_o\ <= NOT \B[45]~input_o\;
\ALT_INV_A[44]~input_o\ <= NOT \A[44]~input_o\;
\ALT_INV_B[44]~input_o\ <= NOT \B[44]~input_o\;
\ALT_INV_A[43]~input_o\ <= NOT \A[43]~input_o\;
\ALT_INV_B[43]~input_o\ <= NOT \B[43]~input_o\;
\ALT_INV_A[42]~input_o\ <= NOT \A[42]~input_o\;
\ALT_INV_B[42]~input_o\ <= NOT \B[42]~input_o\;
\ALT_INV_A[41]~input_o\ <= NOT \A[41]~input_o\;
\ALT_INV_B[41]~input_o\ <= NOT \B[41]~input_o\;
\ALT_INV_A[40]~input_o\ <= NOT \A[40]~input_o\;
\ALT_INV_B[40]~input_o\ <= NOT \B[40]~input_o\;
\ALT_INV_A[39]~input_o\ <= NOT \A[39]~input_o\;
\ALT_INV_B[39]~input_o\ <= NOT \B[39]~input_o\;
\ALT_INV_A[38]~input_o\ <= NOT \A[38]~input_o\;
\ALT_INV_B[38]~input_o\ <= NOT \B[38]~input_o\;
\ALT_INV_A[37]~input_o\ <= NOT \A[37]~input_o\;
\ALT_INV_B[37]~input_o\ <= NOT \B[37]~input_o\;
\ALT_INV_A[36]~input_o\ <= NOT \A[36]~input_o\;
\ALT_INV_B[36]~input_o\ <= NOT \B[36]~input_o\;
\ALT_INV_A[35]~input_o\ <= NOT \A[35]~input_o\;
\ALT_INV_B[35]~input_o\ <= NOT \B[35]~input_o\;
\ALT_INV_A[34]~input_o\ <= NOT \A[34]~input_o\;
\ALT_INV_B[34]~input_o\ <= NOT \B[34]~input_o\;
\ALT_INV_A[33]~input_o\ <= NOT \A[33]~input_o\;
\ALT_INV_B[33]~input_o\ <= NOT \B[33]~input_o\;
\ALT_INV_A[32]~input_o\ <= NOT \A[32]~input_o\;
\ALT_INV_B[32]~input_o\ <= NOT \B[32]~input_o\;
\ALT_INV_A[31]~input_o\ <= NOT \A[31]~input_o\;
\ALT_INV_B[31]~input_o\ <= NOT \B[31]~input_o\;
\ALT_INV_A[30]~input_o\ <= NOT \A[30]~input_o\;
\ALT_INV_B[30]~input_o\ <= NOT \B[30]~input_o\;
\ALT_INV_A[29]~input_o\ <= NOT \A[29]~input_o\;
\ALT_INV_B[29]~input_o\ <= NOT \B[29]~input_o\;
\ALT_INV_A[28]~input_o\ <= NOT \A[28]~input_o\;
\ALT_INV_B[28]~input_o\ <= NOT \B[28]~input_o\;
\ALT_INV_A[27]~input_o\ <= NOT \A[27]~input_o\;
\ALT_INV_B[27]~input_o\ <= NOT \B[27]~input_o\;
\ALT_INV_A[26]~input_o\ <= NOT \A[26]~input_o\;
\ALT_INV_B[26]~input_o\ <= NOT \B[26]~input_o\;
\ALT_INV_A[25]~input_o\ <= NOT \A[25]~input_o\;
\ALT_INV_B[25]~input_o\ <= NOT \B[25]~input_o\;
\ALT_INV_A[24]~input_o\ <= NOT \A[24]~input_o\;
\ALT_INV_B[24]~input_o\ <= NOT \B[24]~input_o\;
\ALT_INV_A[23]~input_o\ <= NOT \A[23]~input_o\;
\ALT_INV_B[23]~input_o\ <= NOT \B[23]~input_o\;
\ALT_INV_A[22]~input_o\ <= NOT \A[22]~input_o\;
\ALT_INV_B[22]~input_o\ <= NOT \B[22]~input_o\;
\ALT_INV_A[21]~input_o\ <= NOT \A[21]~input_o\;
\ALT_INV_B[21]~input_o\ <= NOT \B[21]~input_o\;
\ALT_INV_A[20]~input_o\ <= NOT \A[20]~input_o\;
\ALT_INV_B[20]~input_o\ <= NOT \B[20]~input_o\;
\ALT_INV_A[19]~input_o\ <= NOT \A[19]~input_o\;
\ALT_INV_B[19]~input_o\ <= NOT \B[19]~input_o\;
\ALT_INV_A[18]~input_o\ <= NOT \A[18]~input_o\;
\ALT_INV_B[18]~input_o\ <= NOT \B[18]~input_o\;
\ALT_INV_A[17]~input_o\ <= NOT \A[17]~input_o\;
\ALT_INV_B[17]~input_o\ <= NOT \B[17]~input_o\;
\ALT_INV_A[16]~input_o\ <= NOT \A[16]~input_o\;
\ALT_INV_B[16]~input_o\ <= NOT \B[16]~input_o\;
\ALT_INV_A[15]~input_o\ <= NOT \A[15]~input_o\;
\ALT_INV_B[15]~input_o\ <= NOT \B[15]~input_o\;
\ALT_INV_A[14]~input_o\ <= NOT \A[14]~input_o\;
\ALT_INV_B[14]~input_o\ <= NOT \B[14]~input_o\;
\ALT_INV_A[13]~input_o\ <= NOT \A[13]~input_o\;
\ALT_INV_B[13]~input_o\ <= NOT \B[13]~input_o\;
\ALT_INV_A[12]~input_o\ <= NOT \A[12]~input_o\;
\ALT_INV_B[12]~input_o\ <= NOT \B[12]~input_o\;
\ALT_INV_A[11]~input_o\ <= NOT \A[11]~input_o\;
\ALT_INV_B[11]~input_o\ <= NOT \B[11]~input_o\;
\ALT_INV_A[10]~input_o\ <= NOT \A[10]~input_o\;
\ALT_INV_B[10]~input_o\ <= NOT \B[10]~input_o\;
\ALT_INV_A[9]~input_o\ <= NOT \A[9]~input_o\;
\ALT_INV_B[9]~input_o\ <= NOT \B[9]~input_o\;
\ALT_INV_A[8]~input_o\ <= NOT \A[8]~input_o\;
\ALT_INV_B[8]~input_o\ <= NOT \B[8]~input_o\;
\ALT_INV_A[7]~input_o\ <= NOT \A[7]~input_o\;
\ALT_INV_B[7]~input_o\ <= NOT \B[7]~input_o\;
\ALT_INV_A[6]~input_o\ <= NOT \A[6]~input_o\;
\ALT_INV_B[6]~input_o\ <= NOT \B[6]~input_o\;
\ALT_INV_A[5]~input_o\ <= NOT \A[5]~input_o\;
\ALT_INV_B[5]~input_o\ <= NOT \B[5]~input_o\;
\ALT_INV_A[4]~input_o\ <= NOT \A[4]~input_o\;
\ALT_INV_B[4]~input_o\ <= NOT \B[4]~input_o\;
\ALT_INV_A[3]~input_o\ <= NOT \A[3]~input_o\;
\ALT_INV_B[3]~input_o\ <= NOT \B[3]~input_o\;
\ALT_INV_A[2]~input_o\ <= NOT \A[2]~input_o\;
\ALT_INV_B[2]~input_o\ <= NOT \B[2]~input_o\;
\ALT_INV_A[1]~input_o\ <= NOT \A[1]~input_o\;
\ALT_INV_B[1]~input_o\ <= NOT \B[1]~input_o\;
\ALT_INV_A[0]~input_o\ <= NOT \A[0]~input_o\;
\ALT_INV_B[0]~input_o\ <= NOT \B[0]~input_o\;
\ALT_INV_Cin~input_o\ <= NOT \Cin~input_o\;
\ALT_INV_A[63]~input_o\ <= NOT \A[63]~input_o\;
\ALT_INV_B[63]~input_o\ <= NOT \B[63]~input_o\;
\ALT_INV_Ovfl~0_combout\ <= NOT \Ovfl~0_combout\;
\ALT_INV__~253_sumout\ <= NOT \_~253_sumout\;

-- Location: IOOBUF_X89_Y4_N96
\S[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \_~1_sumout\,
	devoe => ww_devoe,
	o => ww_S(0));

-- Location: IOOBUF_X20_Y0_N53
\S[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \_~5_sumout\,
	devoe => ww_devoe,
	o => ww_S(1));

-- Location: IOOBUF_X22_Y0_N19
\S[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \_~9_sumout\,
	devoe => ww_devoe,
	o => ww_S(2));

-- Location: IOOBUF_X89_Y8_N39
\S[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \_~13_sumout\,
	devoe => ww_devoe,
	o => ww_S(3));

-- Location: IOOBUF_X78_Y0_N19
\S[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \_~17_sumout\,
	devoe => ww_devoe,
	o => ww_S(4));

-- Location: IOOBUF_X89_Y20_N79
\S[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \_~21_sumout\,
	devoe => ww_devoe,
	o => ww_S(5));

-- Location: IOOBUF_X89_Y21_N56
\S[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \_~25_sumout\,
	devoe => ww_devoe,
	o => ww_S(6));

-- Location: IOOBUF_X89_Y8_N56
\S[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \_~29_sumout\,
	devoe => ww_devoe,
	o => ww_S(7));

-- Location: IOOBUF_X86_Y0_N53
\S[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \_~33_sumout\,
	devoe => ww_devoe,
	o => ww_S(8));

-- Location: IOOBUF_X89_Y4_N62
\S[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \_~37_sumout\,
	devoe => ww_devoe,
	o => ww_S(9));

-- Location: IOOBUF_X89_Y11_N45
\S[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \_~41_sumout\,
	devoe => ww_devoe,
	o => ww_S(10));

-- Location: IOOBUF_X89_Y13_N56
\S[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \_~45_sumout\,
	devoe => ww_devoe,
	o => ww_S(11));

-- Location: IOOBUF_X12_Y0_N2
\S[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \_~49_sumout\,
	devoe => ww_devoe,
	o => ww_S(12));

-- Location: IOOBUF_X74_Y0_N93
\S[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \_~53_sumout\,
	devoe => ww_devoe,
	o => ww_S(13));

-- Location: IOOBUF_X72_Y0_N19
\S[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \_~57_sumout\,
	devoe => ww_devoe,
	o => ww_S(14));

-- Location: IOOBUF_X36_Y0_N36
\S[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \_~61_sumout\,
	devoe => ww_devoe,
	o => ww_S(15));

-- Location: IOOBUF_X84_Y0_N19
\S[16]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \_~65_sumout\,
	devoe => ww_devoe,
	o => ww_S(16));

-- Location: IOOBUF_X20_Y0_N19
\S[17]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \_~69_sumout\,
	devoe => ww_devoe,
	o => ww_S(17));

-- Location: IOOBUF_X6_Y0_N36
\S[18]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \_~73_sumout\,
	devoe => ww_devoe,
	o => ww_S(18));

-- Location: IOOBUF_X89_Y15_N5
\S[19]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \_~77_sumout\,
	devoe => ww_devoe,
	o => ww_S(19));

-- Location: IOOBUF_X80_Y0_N36
\S[20]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \_~81_sumout\,
	devoe => ww_devoe,
	o => ww_S(20));

-- Location: IOOBUF_X89_Y9_N22
\S[21]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \_~85_sumout\,
	devoe => ww_devoe,
	o => ww_S(21));

-- Location: IOOBUF_X89_Y6_N39
\S[22]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \_~89_sumout\,
	devoe => ww_devoe,
	o => ww_S(22));

-- Location: IOOBUF_X89_Y6_N22
\S[23]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \_~93_sumout\,
	devoe => ww_devoe,
	o => ww_S(23));

-- Location: IOOBUF_X89_Y13_N5
\S[24]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \_~97_sumout\,
	devoe => ww_devoe,
	o => ww_S(24));

-- Location: IOOBUF_X8_Y0_N36
\S[25]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \_~101_sumout\,
	devoe => ww_devoe,
	o => ww_S(25));

-- Location: IOOBUF_X88_Y0_N20
\S[26]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \_~105_sumout\,
	devoe => ww_devoe,
	o => ww_S(26));

-- Location: IOOBUF_X4_Y0_N36
\S[27]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \_~109_sumout\,
	devoe => ww_devoe,
	o => ww_S(27));

-- Location: IOOBUF_X89_Y9_N5
\S[28]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \_~113_sumout\,
	devoe => ww_devoe,
	o => ww_S(28));

-- Location: IOOBUF_X10_Y0_N76
\S[29]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \_~117_sumout\,
	devoe => ww_devoe,
	o => ww_S(29));

-- Location: IOOBUF_X24_Y0_N36
\S[30]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \_~121_sumout\,
	devoe => ww_devoe,
	o => ww_S(30));

-- Location: IOOBUF_X34_Y0_N76
\S[31]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \_~125_sumout\,
	devoe => ww_devoe,
	o => ww_S(31));

-- Location: IOOBUF_X68_Y0_N36
\S[32]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \_~129_sumout\,
	devoe => ww_devoe,
	o => ww_S(32));

-- Location: IOOBUF_X88_Y0_N3
\S[33]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \_~133_sumout\,
	devoe => ww_devoe,
	o => ww_S(33));

-- Location: IOOBUF_X4_Y0_N53
\S[34]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \_~137_sumout\,
	devoe => ww_devoe,
	o => ww_S(34));

-- Location: IOOBUF_X68_Y0_N19
\S[35]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \_~141_sumout\,
	devoe => ww_devoe,
	o => ww_S(35));

-- Location: IOOBUF_X26_Y0_N76
\S[36]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \_~145_sumout\,
	devoe => ww_devoe,
	o => ww_S(36));

-- Location: IOOBUF_X82_Y0_N42
\S[37]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \_~149_sumout\,
	devoe => ww_devoe,
	o => ww_S(37));

-- Location: IOOBUF_X22_Y0_N53
\S[38]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \_~153_sumout\,
	devoe => ww_devoe,
	o => ww_S(38));

-- Location: IOOBUF_X20_Y0_N36
\S[39]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \_~157_sumout\,
	devoe => ww_devoe,
	o => ww_S(39));

-- Location: IOOBUF_X20_Y0_N2
\S[40]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \_~161_sumout\,
	devoe => ww_devoe,
	o => ww_S(40));

-- Location: IOOBUF_X8_Y0_N19
\S[41]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \_~165_sumout\,
	devoe => ww_devoe,
	o => ww_S(41));

-- Location: IOOBUF_X70_Y0_N19
\S[42]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \_~169_sumout\,
	devoe => ww_devoe,
	o => ww_S(42));

-- Location: IOOBUF_X18_Y0_N59
\S[43]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \_~173_sumout\,
	devoe => ww_devoe,
	o => ww_S(43));

-- Location: IOOBUF_X28_Y0_N36
\S[44]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \_~177_sumout\,
	devoe => ww_devoe,
	o => ww_S(44));

-- Location: IOOBUF_X76_Y0_N36
\S[45]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \_~181_sumout\,
	devoe => ww_devoe,
	o => ww_S(45));

-- Location: IOOBUF_X84_Y0_N2
\S[46]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \_~185_sumout\,
	devoe => ww_devoe,
	o => ww_S(46));

-- Location: IOOBUF_X74_Y0_N76
\S[47]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \_~189_sumout\,
	devoe => ww_devoe,
	o => ww_S(47));

-- Location: IOOBUF_X12_Y0_N53
\S[48]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \_~193_sumout\,
	devoe => ww_devoe,
	o => ww_S(48));

-- Location: IOOBUF_X24_Y0_N19
\S[49]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \_~197_sumout\,
	devoe => ww_devoe,
	o => ww_S(49));

-- Location: IOOBUF_X72_Y0_N2
\S[50]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \_~201_sumout\,
	devoe => ww_devoe,
	o => ww_S(50));

-- Location: IOOBUF_X76_Y0_N53
\S[51]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \_~205_sumout\,
	devoe => ww_devoe,
	o => ww_S(51));

-- Location: IOOBUF_X78_Y0_N53
\S[52]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \_~209_sumout\,
	devoe => ww_devoe,
	o => ww_S(52));

-- Location: IOOBUF_X16_Y0_N19
\S[53]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \_~213_sumout\,
	devoe => ww_devoe,
	o => ww_S(53));

-- Location: IOOBUF_X40_Y0_N36
\S[54]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \_~217_sumout\,
	devoe => ww_devoe,
	o => ww_S(54));

-- Location: IOOBUF_X14_Y0_N19
\S[55]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \_~221_sumout\,
	devoe => ww_devoe,
	o => ww_S(55));

-- Location: IOOBUF_X18_Y0_N76
\S[56]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \_~225_sumout\,
	devoe => ww_devoe,
	o => ww_S(56));

-- Location: IOOBUF_X30_Y0_N19
\S[57]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \_~229_sumout\,
	devoe => ww_devoe,
	o => ww_S(57));

-- Location: IOOBUF_X76_Y0_N19
\S[58]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \_~233_sumout\,
	devoe => ww_devoe,
	o => ww_S(58));

-- Location: IOOBUF_X78_Y0_N36
\S[59]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \_~237_sumout\,
	devoe => ww_devoe,
	o => ww_S(59));

-- Location: IOOBUF_X34_Y0_N42
\S[60]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \_~241_sumout\,
	devoe => ww_devoe,
	o => ww_S(60));

-- Location: IOOBUF_X84_Y0_N53
\S[61]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \_~245_sumout\,
	devoe => ww_devoe,
	o => ww_S(61));

-- Location: IOOBUF_X66_Y0_N59
\S[62]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \_~249_sumout\,
	devoe => ww_devoe,
	o => ww_S(62));

-- Location: IOOBUF_X54_Y0_N36
\S[63]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \_~253_sumout\,
	devoe => ww_devoe,
	o => ww_S(63));

-- Location: IOOBUF_X64_Y0_N19
\Cout~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \_~257_sumout\,
	devoe => ww_devoe,
	o => ww_Cout);

-- Location: IOOBUF_X38_Y0_N19
\Ovfl~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Ovfl~0_combout\,
	devoe => ww_devoe,
	o => ww_Ovfl);

-- Location: IOIBUF_X89_Y20_N44
\B[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(0),
	o => \B[0]~input_o\);

-- Location: IOIBUF_X24_Y0_N52
\Cin~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Cin,
	o => \Cin~input_o\);

-- Location: IOIBUF_X32_Y0_N18
\A[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(0),
	o => \A[0]~input_o\);

-- Location: LABCELL_X57_Y4_N30
\_~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \_~1_sumout\ = SUM(( !\B[0]~input_o\ $ (!\Cin~input_o\ $ (\A[0]~input_o\)) ) + ( !VCC ) + ( !VCC ))
-- \_~2\ = CARRY(( !\B[0]~input_o\ $ (!\Cin~input_o\ $ (\A[0]~input_o\)) ) + ( !VCC ) + ( !VCC ))
-- \_~3\ = SHARE((!\B[0]~input_o\ & (\Cin~input_o\ & \A[0]~input_o\)) # (\B[0]~input_o\ & ((\A[0]~input_o\) # (\Cin~input_o\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110011111100000000000000000011110011000011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_B[0]~input_o\,
	datac => \ALT_INV_Cin~input_o\,
	datad => \ALT_INV_A[0]~input_o\,
	cin => GND,
	sharein => GND,
	sumout => \_~1_sumout\,
	cout => \_~2\,
	shareout => \_~3\);

-- Location: IOIBUF_X4_Y0_N1
\A[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(1),
	o => \A[1]~input_o\);

-- Location: IOIBUF_X12_Y0_N18
\B[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(1),
	o => \B[1]~input_o\);

-- Location: LABCELL_X57_Y4_N33
\_~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \_~5_sumout\ = SUM(( !\A[1]~input_o\ $ (!\B[1]~input_o\) ) + ( \_~3\ ) + ( \_~2\ ))
-- \_~6\ = CARRY(( !\A[1]~input_o\ $ (!\B[1]~input_o\) ) + ( \_~3\ ) + ( \_~2\ ))
-- \_~7\ = SHARE((\A[1]~input_o\ & \B[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001010000010100000000000000000101101001011010",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[1]~input_o\,
	datac => \ALT_INV_B[1]~input_o\,
	cin => \_~2\,
	sharein => \_~3\,
	sumout => \_~5_sumout\,
	cout => \_~6\,
	shareout => \_~7\);

-- Location: IOIBUF_X89_Y11_N95
\A[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(2),
	o => \A[2]~input_o\);

-- Location: IOIBUF_X89_Y16_N21
\B[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(2),
	o => \B[2]~input_o\);

-- Location: LABCELL_X57_Y4_N36
\_~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \_~9_sumout\ = SUM(( !\A[2]~input_o\ $ (!\B[2]~input_o\) ) + ( \_~7\ ) + ( \_~6\ ))
-- \_~10\ = CARRY(( !\A[2]~input_o\ $ (!\B[2]~input_o\) ) + ( \_~7\ ) + ( \_~6\ ))
-- \_~11\ = SHARE((\A[2]~input_o\ & \B[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110000001100000000000000000011110000111100",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_A[2]~input_o\,
	datac => \ALT_INV_B[2]~input_o\,
	cin => \_~6\,
	sharein => \_~7\,
	sumout => \_~9_sumout\,
	cout => \_~10\,
	shareout => \_~11\);

-- Location: IOIBUF_X89_Y16_N4
\B[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(3),
	o => \B[3]~input_o\);

-- Location: IOIBUF_X16_Y0_N52
\A[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(3),
	o => \A[3]~input_o\);

-- Location: LABCELL_X57_Y4_N39
\_~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \_~13_sumout\ = SUM(( !\B[3]~input_o\ $ (!\A[3]~input_o\) ) + ( \_~11\ ) + ( \_~10\ ))
-- \_~14\ = CARRY(( !\B[3]~input_o\ $ (!\A[3]~input_o\) ) + ( \_~11\ ) + ( \_~10\ ))
-- \_~15\ = SHARE((\B[3]~input_o\ & \A[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001010000010100000000000000000101101001011010",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[3]~input_o\,
	datac => \ALT_INV_A[3]~input_o\,
	cin => \_~10\,
	sharein => \_~11\,
	sumout => \_~13_sumout\,
	cout => \_~14\,
	shareout => \_~15\);

-- Location: IOIBUF_X80_Y0_N52
\B[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(4),
	o => \B[4]~input_o\);

-- Location: IOIBUF_X89_Y8_N4
\A[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(4),
	o => \A[4]~input_o\);

-- Location: LABCELL_X57_Y4_N42
\_~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \_~17_sumout\ = SUM(( !\B[4]~input_o\ $ (!\A[4]~input_o\) ) + ( \_~15\ ) + ( \_~14\ ))
-- \_~18\ = CARRY(( !\B[4]~input_o\ $ (!\A[4]~input_o\) ) + ( \_~15\ ) + ( \_~14\ ))
-- \_~19\ = SHARE((\B[4]~input_o\ & \A[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000111100000000000000000000111111110000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_B[4]~input_o\,
	datad => \ALT_INV_A[4]~input_o\,
	cin => \_~14\,
	sharein => \_~15\,
	sumout => \_~17_sumout\,
	cout => \_~18\,
	shareout => \_~19\);

-- Location: IOIBUF_X89_Y4_N44
\B[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(5),
	o => \B[5]~input_o\);

-- Location: IOIBUF_X89_Y20_N61
\A[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(5),
	o => \A[5]~input_o\);

-- Location: LABCELL_X57_Y4_N45
\_~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \_~21_sumout\ = SUM(( !\B[5]~input_o\ $ (!\A[5]~input_o\) ) + ( \_~19\ ) + ( \_~18\ ))
-- \_~22\ = CARRY(( !\B[5]~input_o\ $ (!\A[5]~input_o\) ) + ( \_~19\ ) + ( \_~18\ ))
-- \_~23\ = SHARE((\B[5]~input_o\ & \A[5]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001010000010100000000000000000101101001011010",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[5]~input_o\,
	datac => \ALT_INV_A[5]~input_o\,
	cin => \_~18\,
	sharein => \_~19\,
	sumout => \_~21_sumout\,
	cout => \_~22\,
	shareout => \_~23\);

-- Location: IOIBUF_X89_Y8_N21
\B[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(6),
	o => \B[6]~input_o\);

-- Location: IOIBUF_X14_Y0_N52
\A[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(6),
	o => \A[6]~input_o\);

-- Location: LABCELL_X57_Y4_N48
\_~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \_~25_sumout\ = SUM(( !\B[6]~input_o\ $ (!\A[6]~input_o\) ) + ( \_~23\ ) + ( \_~22\ ))
-- \_~26\ = CARRY(( !\B[6]~input_o\ $ (!\A[6]~input_o\) ) + ( \_~23\ ) + ( \_~22\ ))
-- \_~27\ = SHARE((\B[6]~input_o\ & \A[6]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110000001100000000000000000011110000111100",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_B[6]~input_o\,
	datac => \ALT_INV_A[6]~input_o\,
	cin => \_~22\,
	sharein => \_~23\,
	sumout => \_~25_sumout\,
	cout => \_~26\,
	shareout => \_~27\);

-- Location: IOIBUF_X89_Y20_N95
\A[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(7),
	o => \A[7]~input_o\);

-- Location: IOIBUF_X89_Y21_N4
\B[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(7),
	o => \B[7]~input_o\);

-- Location: LABCELL_X57_Y4_N51
\_~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \_~29_sumout\ = SUM(( !\A[7]~input_o\ $ (!\B[7]~input_o\) ) + ( \_~27\ ) + ( \_~26\ ))
-- \_~30\ = CARRY(( !\A[7]~input_o\ $ (!\B[7]~input_o\) ) + ( \_~27\ ) + ( \_~26\ ))
-- \_~31\ = SHARE((\A[7]~input_o\ & \B[7]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001010000010100000000000000000101101001011010",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[7]~input_o\,
	datac => \ALT_INV_B[7]~input_o\,
	cin => \_~26\,
	sharein => \_~27\,
	sumout => \_~29_sumout\,
	cout => \_~30\,
	shareout => \_~31\);

-- Location: IOIBUF_X32_Y0_N35
\B[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(8),
	o => \B[8]~input_o\);

-- Location: IOIBUF_X89_Y6_N4
\A[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(8),
	o => \A[8]~input_o\);

-- Location: LABCELL_X57_Y4_N54
\_~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \_~33_sumout\ = SUM(( !\B[8]~input_o\ $ (!\A[8]~input_o\) ) + ( \_~31\ ) + ( \_~30\ ))
-- \_~34\ = CARRY(( !\B[8]~input_o\ $ (!\A[8]~input_o\) ) + ( \_~31\ ) + ( \_~30\ ))
-- \_~35\ = SHARE((\B[8]~input_o\ & \A[8]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110000001100000000000000000011110000111100",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_B[8]~input_o\,
	datac => \ALT_INV_A[8]~input_o\,
	cin => \_~30\,
	sharein => \_~31\,
	sumout => \_~33_sumout\,
	cout => \_~34\,
	shareout => \_~35\);

-- Location: IOIBUF_X89_Y4_N78
\B[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(9),
	o => \B[9]~input_o\);

-- Location: IOIBUF_X89_Y6_N55
\A[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(9),
	o => \A[9]~input_o\);

-- Location: LABCELL_X57_Y4_N57
\_~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \_~37_sumout\ = SUM(( !\B[9]~input_o\ $ (!\A[9]~input_o\) ) + ( \_~35\ ) + ( \_~34\ ))
-- \_~38\ = CARRY(( !\B[9]~input_o\ $ (!\A[9]~input_o\) ) + ( \_~35\ ) + ( \_~34\ ))
-- \_~39\ = SHARE((\B[9]~input_o\ & \A[9]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001010000010100000000000000000101101001011010",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[9]~input_o\,
	datac => \ALT_INV_A[9]~input_o\,
	cin => \_~34\,
	sharein => \_~35\,
	sumout => \_~37_sumout\,
	cout => \_~38\,
	shareout => \_~39\);

-- Location: IOIBUF_X78_Y0_N1
\A[10]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(10),
	o => \A[10]~input_o\);

-- Location: IOIBUF_X8_Y0_N1
\B[10]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(10),
	o => \B[10]~input_o\);

-- Location: LABCELL_X57_Y3_N0
\_~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \_~41_sumout\ = SUM(( !\A[10]~input_o\ $ (!\B[10]~input_o\) ) + ( \_~39\ ) + ( \_~38\ ))
-- \_~42\ = CARRY(( !\A[10]~input_o\ $ (!\B[10]~input_o\) ) + ( \_~39\ ) + ( \_~38\ ))
-- \_~43\ = SHARE((\A[10]~input_o\ & \B[10]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110000001100000000000000000011110000111100",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_A[10]~input_o\,
	datac => \ALT_INV_B[10]~input_o\,
	cin => \_~38\,
	sharein => \_~39\,
	sumout => \_~41_sumout\,
	cout => \_~42\,
	shareout => \_~43\);

-- Location: IOIBUF_X89_Y16_N38
\B[11]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(11),
	o => \B[11]~input_o\);

-- Location: IOIBUF_X16_Y0_N1
\A[11]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(11),
	o => \A[11]~input_o\);

-- Location: LABCELL_X57_Y3_N3
\_~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \_~45_sumout\ = SUM(( !\B[11]~input_o\ $ (!\A[11]~input_o\) ) + ( \_~43\ ) + ( \_~42\ ))
-- \_~46\ = CARRY(( !\B[11]~input_o\ $ (!\A[11]~input_o\) ) + ( \_~43\ ) + ( \_~42\ ))
-- \_~47\ = SHARE((\B[11]~input_o\ & \A[11]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001010000010100000000000000000101101001011010",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[11]~input_o\,
	datac => \ALT_INV_A[11]~input_o\,
	cin => \_~42\,
	sharein => \_~43\,
	sumout => \_~45_sumout\,
	cout => \_~46\,
	shareout => \_~47\);

-- Location: IOIBUF_X66_Y0_N41
\A[12]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(12),
	o => \A[12]~input_o\);

-- Location: IOIBUF_X80_Y0_N1
\B[12]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(12),
	o => \B[12]~input_o\);

-- Location: LABCELL_X57_Y3_N6
\_~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \_~49_sumout\ = SUM(( !\A[12]~input_o\ $ (!\B[12]~input_o\) ) + ( \_~47\ ) + ( \_~46\ ))
-- \_~50\ = CARRY(( !\A[12]~input_o\ $ (!\B[12]~input_o\) ) + ( \_~47\ ) + ( \_~46\ ))
-- \_~51\ = SHARE((\A[12]~input_o\ & \B[12]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110000001100000000000000000011110000111100",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_A[12]~input_o\,
	datac => \ALT_INV_B[12]~input_o\,
	cin => \_~46\,
	sharein => \_~47\,
	sumout => \_~49_sumout\,
	cout => \_~50\,
	shareout => \_~51\);

-- Location: IOIBUF_X14_Y0_N35
\B[13]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(13),
	o => \B[13]~input_o\);

-- Location: IOIBUF_X18_Y0_N92
\A[13]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(13),
	o => \A[13]~input_o\);

-- Location: LABCELL_X57_Y3_N9
\_~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \_~53_sumout\ = SUM(( !\B[13]~input_o\ $ (!\A[13]~input_o\) ) + ( \_~51\ ) + ( \_~50\ ))
-- \_~54\ = CARRY(( !\B[13]~input_o\ $ (!\A[13]~input_o\) ) + ( \_~51\ ) + ( \_~50\ ))
-- \_~55\ = SHARE((\B[13]~input_o\ & \A[13]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000111100000000000000000000111111110000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_B[13]~input_o\,
	datad => \ALT_INV_A[13]~input_o\,
	cin => \_~50\,
	sharein => \_~51\,
	sumout => \_~53_sumout\,
	cout => \_~54\,
	shareout => \_~55\);

-- Location: IOIBUF_X89_Y13_N38
\B[14]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(14),
	o => \B[14]~input_o\);

-- Location: IOIBUF_X52_Y0_N52
\A[14]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(14),
	o => \A[14]~input_o\);

-- Location: LABCELL_X57_Y3_N12
\_~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \_~57_sumout\ = SUM(( !\B[14]~input_o\ $ (!\A[14]~input_o\) ) + ( \_~55\ ) + ( \_~54\ ))
-- \_~58\ = CARRY(( !\B[14]~input_o\ $ (!\A[14]~input_o\) ) + ( \_~55\ ) + ( \_~54\ ))
-- \_~59\ = SHARE((\B[14]~input_o\ & \A[14]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001010000010100000000000000000101101001011010",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[14]~input_o\,
	datac => \ALT_INV_A[14]~input_o\,
	cin => \_~54\,
	sharein => \_~55\,
	sumout => \_~57_sumout\,
	cout => \_~58\,
	shareout => \_~59\);

-- Location: IOIBUF_X52_Y0_N1
\B[15]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(15),
	o => \B[15]~input_o\);

-- Location: IOIBUF_X89_Y15_N21
\A[15]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(15),
	o => \A[15]~input_o\);

-- Location: LABCELL_X57_Y3_N15
\_~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \_~61_sumout\ = SUM(( !\B[15]~input_o\ $ (!\A[15]~input_o\) ) + ( \_~59\ ) + ( \_~58\ ))
-- \_~62\ = CARRY(( !\B[15]~input_o\ $ (!\A[15]~input_o\) ) + ( \_~59\ ) + ( \_~58\ ))
-- \_~63\ = SHARE((\B[15]~input_o\ & \A[15]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000111100000000000000000000111111110000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_B[15]~input_o\,
	datad => \ALT_INV_A[15]~input_o\,
	cin => \_~58\,
	sharein => \_~59\,
	sumout => \_~61_sumout\,
	cout => \_~62\,
	shareout => \_~63\);

-- Location: IOIBUF_X28_Y0_N52
\B[16]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(16),
	o => \B[16]~input_o\);

-- Location: IOIBUF_X89_Y15_N55
\A[16]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(16),
	o => \A[16]~input_o\);

-- Location: LABCELL_X57_Y3_N18
\_~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \_~65_sumout\ = SUM(( !\B[16]~input_o\ $ (!\A[16]~input_o\) ) + ( \_~63\ ) + ( \_~62\ ))
-- \_~66\ = CARRY(( !\B[16]~input_o\ $ (!\A[16]~input_o\) ) + ( \_~63\ ) + ( \_~62\ ))
-- \_~67\ = SHARE((\B[16]~input_o\ & \A[16]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000011001100000000000000000011001111001100",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_B[16]~input_o\,
	datad => \ALT_INV_A[16]~input_o\,
	cin => \_~62\,
	sharein => \_~63\,
	sumout => \_~65_sumout\,
	cout => \_~66\,
	shareout => \_~67\);

-- Location: IOIBUF_X28_Y0_N1
\A[17]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(17),
	o => \A[17]~input_o\);

-- Location: IOIBUF_X82_Y0_N58
\B[17]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(17),
	o => \B[17]~input_o\);

-- Location: LABCELL_X57_Y3_N21
\_~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \_~69_sumout\ = SUM(( !\A[17]~input_o\ $ (!\B[17]~input_o\) ) + ( \_~67\ ) + ( \_~66\ ))
-- \_~70\ = CARRY(( !\A[17]~input_o\ $ (!\B[17]~input_o\) ) + ( \_~67\ ) + ( \_~66\ ))
-- \_~71\ = SHARE((\A[17]~input_o\ & \B[17]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001010000010100000000000000000101101001011010",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[17]~input_o\,
	datac => \ALT_INV_B[17]~input_o\,
	cin => \_~66\,
	sharein => \_~67\,
	sumout => \_~69_sumout\,
	cout => \_~70\,
	shareout => \_~71\);

-- Location: IOIBUF_X10_Y0_N92
\B[18]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(18),
	o => \B[18]~input_o\);

-- Location: IOIBUF_X58_Y0_N58
\A[18]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(18),
	o => \A[18]~input_o\);

-- Location: LABCELL_X57_Y3_N24
\_~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \_~73_sumout\ = SUM(( !\B[18]~input_o\ $ (!\A[18]~input_o\) ) + ( \_~71\ ) + ( \_~70\ ))
-- \_~74\ = CARRY(( !\B[18]~input_o\ $ (!\A[18]~input_o\) ) + ( \_~71\ ) + ( \_~70\ ))
-- \_~75\ = SHARE((\B[18]~input_o\ & \A[18]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001010000010100000000000000000101101001011010",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[18]~input_o\,
	datac => \ALT_INV_A[18]~input_o\,
	cin => \_~70\,
	sharein => \_~71\,
	sumout => \_~73_sumout\,
	cout => \_~74\,
	shareout => \_~75\);

-- Location: IOIBUF_X89_Y9_N55
\B[19]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(19),
	o => \B[19]~input_o\);

-- Location: IOIBUF_X86_Y0_N1
\A[19]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(19),
	o => \A[19]~input_o\);

-- Location: LABCELL_X57_Y3_N27
\_~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \_~77_sumout\ = SUM(( !\B[19]~input_o\ $ (!\A[19]~input_o\) ) + ( \_~75\ ) + ( \_~74\ ))
-- \_~78\ = CARRY(( !\B[19]~input_o\ $ (!\A[19]~input_o\) ) + ( \_~75\ ) + ( \_~74\ ))
-- \_~79\ = SHARE((\B[19]~input_o\ & \A[19]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110000001100000000000000000011110000111100",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_B[19]~input_o\,
	datac => \ALT_INV_A[19]~input_o\,
	cin => \_~74\,
	sharein => \_~75\,
	sumout => \_~77_sumout\,
	cout => \_~78\,
	shareout => \_~79\);

-- Location: IOIBUF_X89_Y11_N78
\B[20]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(20),
	o => \B[20]~input_o\);

-- Location: IOIBUF_X86_Y0_N18
\A[20]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(20),
	o => \A[20]~input_o\);

-- Location: LABCELL_X57_Y3_N30
\_~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \_~81_sumout\ = SUM(( !\B[20]~input_o\ $ (!\A[20]~input_o\) ) + ( \_~79\ ) + ( \_~78\ ))
-- \_~82\ = CARRY(( !\B[20]~input_o\ $ (!\A[20]~input_o\) ) + ( \_~79\ ) + ( \_~78\ ))
-- \_~83\ = SHARE((\B[20]~input_o\ & \A[20]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110000001100000000000000000011110000111100",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_B[20]~input_o\,
	datac => \ALT_INV_A[20]~input_o\,
	cin => \_~78\,
	sharein => \_~79\,
	sumout => \_~81_sumout\,
	cout => \_~82\,
	shareout => \_~83\);

-- Location: IOIBUF_X89_Y9_N38
\A[21]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(21),
	o => \A[21]~input_o\);

-- Location: IOIBUF_X89_Y21_N38
\B[21]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(21),
	o => \B[21]~input_o\);

-- Location: LABCELL_X57_Y3_N33
\_~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \_~85_sumout\ = SUM(( !\A[21]~input_o\ $ (!\B[21]~input_o\) ) + ( \_~83\ ) + ( \_~82\ ))
-- \_~86\ = CARRY(( !\A[21]~input_o\ $ (!\B[21]~input_o\) ) + ( \_~83\ ) + ( \_~82\ ))
-- \_~87\ = SHARE((\A[21]~input_o\ & \B[21]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000101010100000000000000000101010110101010",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[21]~input_o\,
	datad => \ALT_INV_B[21]~input_o\,
	cin => \_~82\,
	sharein => \_~83\,
	sumout => \_~85_sumout\,
	cout => \_~86\,
	shareout => \_~87\);

-- Location: IOIBUF_X12_Y0_N35
\A[22]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(22),
	o => \A[22]~input_o\);

-- Location: IOIBUF_X36_Y0_N18
\B[22]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(22),
	o => \B[22]~input_o\);

-- Location: LABCELL_X57_Y3_N36
\_~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \_~89_sumout\ = SUM(( !\A[22]~input_o\ $ (!\B[22]~input_o\) ) + ( \_~87\ ) + ( \_~86\ ))
-- \_~90\ = CARRY(( !\A[22]~input_o\ $ (!\B[22]~input_o\) ) + ( \_~87\ ) + ( \_~86\ ))
-- \_~91\ = SHARE((\A[22]~input_o\ & \B[22]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110000001100000000000000000011110000111100",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_A[22]~input_o\,
	datac => \ALT_INV_B[22]~input_o\,
	cin => \_~86\,
	sharein => \_~87\,
	sumout => \_~89_sumout\,
	cout => \_~90\,
	shareout => \_~91\);

-- Location: IOIBUF_X64_Y0_N52
\B[23]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(23),
	o => \B[23]~input_o\);

-- Location: IOIBUF_X89_Y16_N55
\A[23]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(23),
	o => \A[23]~input_o\);

-- Location: LABCELL_X57_Y3_N39
\_~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \_~93_sumout\ = SUM(( !\B[23]~input_o\ $ (!\A[23]~input_o\) ) + ( \_~91\ ) + ( \_~90\ ))
-- \_~94\ = CARRY(( !\B[23]~input_o\ $ (!\A[23]~input_o\) ) + ( \_~91\ ) + ( \_~90\ ))
-- \_~95\ = SHARE((\B[23]~input_o\ & \A[23]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001010000010100000000000000000101101001011010",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[23]~input_o\,
	datac => \ALT_INV_A[23]~input_o\,
	cin => \_~90\,
	sharein => \_~91\,
	sumout => \_~93_sumout\,
	cout => \_~94\,
	shareout => \_~95\);

-- Location: IOIBUF_X89_Y15_N38
\B[24]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(24),
	o => \B[24]~input_o\);

-- Location: IOIBUF_X89_Y11_N61
\A[24]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(24),
	o => \A[24]~input_o\);

-- Location: LABCELL_X57_Y3_N42
\_~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \_~97_sumout\ = SUM(( !\B[24]~input_o\ $ (!\A[24]~input_o\) ) + ( \_~95\ ) + ( \_~94\ ))
-- \_~98\ = CARRY(( !\B[24]~input_o\ $ (!\A[24]~input_o\) ) + ( \_~95\ ) + ( \_~94\ ))
-- \_~99\ = SHARE((\B[24]~input_o\ & \A[24]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110000001100000000000000000011110000111100",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_B[24]~input_o\,
	datac => \ALT_INV_A[24]~input_o\,
	cin => \_~94\,
	sharein => \_~95\,
	sumout => \_~97_sumout\,
	cout => \_~98\,
	shareout => \_~99\);

-- Location: IOIBUF_X30_Y0_N1
\B[25]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(25),
	o => \B[25]~input_o\);

-- Location: IOIBUF_X62_Y0_N52
\A[25]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(25),
	o => \A[25]~input_o\);

-- Location: LABCELL_X57_Y3_N45
\_~101\ : cyclonev_lcell_comb
-- Equation(s):
-- \_~101_sumout\ = SUM(( !\B[25]~input_o\ $ (!\A[25]~input_o\) ) + ( \_~99\ ) + ( \_~98\ ))
-- \_~102\ = CARRY(( !\B[25]~input_o\ $ (!\A[25]~input_o\) ) + ( \_~99\ ) + ( \_~98\ ))
-- \_~103\ = SHARE((\B[25]~input_o\ & \A[25]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000101010100000000000000000101010110101010",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[25]~input_o\,
	datad => \ALT_INV_A[25]~input_o\,
	cin => \_~98\,
	sharein => \_~99\,
	sumout => \_~101_sumout\,
	cout => \_~102\,
	shareout => \_~103\);

-- Location: IOIBUF_X18_Y0_N41
\B[26]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(26),
	o => \B[26]~input_o\);

-- Location: IOIBUF_X60_Y0_N35
\A[26]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(26),
	o => \A[26]~input_o\);

-- Location: LABCELL_X57_Y3_N48
\_~105\ : cyclonev_lcell_comb
-- Equation(s):
-- \_~105_sumout\ = SUM(( !\B[26]~input_o\ $ (!\A[26]~input_o\) ) + ( \_~103\ ) + ( \_~102\ ))
-- \_~106\ = CARRY(( !\B[26]~input_o\ $ (!\A[26]~input_o\) ) + ( \_~103\ ) + ( \_~102\ ))
-- \_~107\ = SHARE((\B[26]~input_o\ & \A[26]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000011001100000000000000000011001111001100",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_B[26]~input_o\,
	datad => \ALT_INV_A[26]~input_o\,
	cin => \_~102\,
	sharein => \_~103\,
	sumout => \_~105_sumout\,
	cout => \_~106\,
	shareout => \_~107\);

-- Location: IOIBUF_X36_Y0_N1
\A[27]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(27),
	o => \A[27]~input_o\);

-- Location: IOIBUF_X36_Y0_N52
\B[27]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(27),
	o => \B[27]~input_o\);

-- Location: LABCELL_X57_Y3_N51
\_~109\ : cyclonev_lcell_comb
-- Equation(s):
-- \_~109_sumout\ = SUM(( !\A[27]~input_o\ $ (!\B[27]~input_o\) ) + ( \_~107\ ) + ( \_~106\ ))
-- \_~110\ = CARRY(( !\A[27]~input_o\ $ (!\B[27]~input_o\) ) + ( \_~107\ ) + ( \_~106\ ))
-- \_~111\ = SHARE((\A[27]~input_o\ & \B[27]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001010000010100000000000000000101101001011010",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[27]~input_o\,
	datac => \ALT_INV_B[27]~input_o\,
	cin => \_~106\,
	sharein => \_~107\,
	sumout => \_~109_sumout\,
	cout => \_~110\,
	shareout => \_~111\);

-- Location: IOIBUF_X16_Y0_N35
\B[28]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(28),
	o => \B[28]~input_o\);

-- Location: IOIBUF_X22_Y0_N35
\A[28]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(28),
	o => \A[28]~input_o\);

-- Location: LABCELL_X57_Y3_N54
\_~113\ : cyclonev_lcell_comb
-- Equation(s):
-- \_~113_sumout\ = SUM(( !\B[28]~input_o\ $ (!\A[28]~input_o\) ) + ( \_~111\ ) + ( \_~110\ ))
-- \_~114\ = CARRY(( !\B[28]~input_o\ $ (!\A[28]~input_o\) ) + ( \_~111\ ) + ( \_~110\ ))
-- \_~115\ = SHARE((\B[28]~input_o\ & \A[28]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000011001100000000000000000011001111001100",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_B[28]~input_o\,
	datad => \ALT_INV_A[28]~input_o\,
	cin => \_~110\,
	sharein => \_~111\,
	sumout => \_~113_sumout\,
	cout => \_~114\,
	shareout => \_~115\);

-- Location: IOIBUF_X86_Y0_N35
\A[29]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(29),
	o => \A[29]~input_o\);

-- Location: IOIBUF_X89_Y13_N21
\B[29]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(29),
	o => \B[29]~input_o\);

-- Location: LABCELL_X57_Y3_N57
\_~117\ : cyclonev_lcell_comb
-- Equation(s):
-- \_~117_sumout\ = SUM(( !\A[29]~input_o\ $ (!\B[29]~input_o\) ) + ( \_~115\ ) + ( \_~114\ ))
-- \_~118\ = CARRY(( !\A[29]~input_o\ $ (!\B[29]~input_o\) ) + ( \_~115\ ) + ( \_~114\ ))
-- \_~119\ = SHARE((\A[29]~input_o\ & \B[29]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001010000010100000000000000000101101001011010",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[29]~input_o\,
	datac => \ALT_INV_B[29]~input_o\,
	cin => \_~114\,
	sharein => \_~115\,
	sumout => \_~117_sumout\,
	cout => \_~118\,
	shareout => \_~119\);

-- Location: IOIBUF_X6_Y0_N18
\B[30]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(30),
	o => \B[30]~input_o\);

-- Location: IOIBUF_X50_Y0_N75
\A[30]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(30),
	o => \A[30]~input_o\);

-- Location: LABCELL_X57_Y2_N0
\_~121\ : cyclonev_lcell_comb
-- Equation(s):
-- \_~121_sumout\ = SUM(( !\B[30]~input_o\ $ (!\A[30]~input_o\) ) + ( \_~119\ ) + ( \_~118\ ))
-- \_~122\ = CARRY(( !\B[30]~input_o\ $ (!\A[30]~input_o\) ) + ( \_~119\ ) + ( \_~118\ ))
-- \_~123\ = SHARE((\B[30]~input_o\ & \A[30]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110000001100000000000000000011110000111100",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_B[30]~input_o\,
	datac => \ALT_INV_A[30]~input_o\,
	cin => \_~118\,
	sharein => \_~119\,
	sumout => \_~121_sumout\,
	cout => \_~122\,
	shareout => \_~123\);

-- Location: IOIBUF_X38_Y0_N35
\B[31]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(31),
	o => \B[31]~input_o\);

-- Location: IOIBUF_X68_Y0_N1
\A[31]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(31),
	o => \A[31]~input_o\);

-- Location: LABCELL_X57_Y2_N3
\_~125\ : cyclonev_lcell_comb
-- Equation(s):
-- \_~125_sumout\ = SUM(( !\B[31]~input_o\ $ (!\A[31]~input_o\) ) + ( \_~123\ ) + ( \_~122\ ))
-- \_~126\ = CARRY(( !\B[31]~input_o\ $ (!\A[31]~input_o\) ) + ( \_~123\ ) + ( \_~122\ ))
-- \_~127\ = SHARE((\B[31]~input_o\ & \A[31]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001010000010100000000000000000101101001011010",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[31]~input_o\,
	datac => \ALT_INV_A[31]~input_o\,
	cin => \_~122\,
	sharein => \_~123\,
	sumout => \_~125_sumout\,
	cout => \_~126\,
	shareout => \_~127\);

-- Location: IOIBUF_X60_Y0_N1
\A[32]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(32),
	o => \A[32]~input_o\);

-- Location: IOIBUF_X28_Y0_N18
\B[32]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(32),
	o => \B[32]~input_o\);

-- Location: LABCELL_X57_Y2_N6
\_~129\ : cyclonev_lcell_comb
-- Equation(s):
-- \_~129_sumout\ = SUM(( !\A[32]~input_o\ $ (!\B[32]~input_o\) ) + ( \_~127\ ) + ( \_~126\ ))
-- \_~130\ = CARRY(( !\A[32]~input_o\ $ (!\B[32]~input_o\) ) + ( \_~127\ ) + ( \_~126\ ))
-- \_~131\ = SHARE((\A[32]~input_o\ & \B[32]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110000001100000000000000000011110000111100",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_A[32]~input_o\,
	datac => \ALT_INV_B[32]~input_o\,
	cin => \_~126\,
	sharein => \_~127\,
	sumout => \_~129_sumout\,
	cout => \_~130\,
	shareout => \_~131\);

-- Location: IOIBUF_X10_Y0_N41
\A[33]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(33),
	o => \A[33]~input_o\);

-- Location: IOIBUF_X26_Y0_N92
\B[33]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(33),
	o => \B[33]~input_o\);

-- Location: LABCELL_X57_Y2_N9
\_~133\ : cyclonev_lcell_comb
-- Equation(s):
-- \_~133_sumout\ = SUM(( !\A[33]~input_o\ $ (!\B[33]~input_o\) ) + ( \_~131\ ) + ( \_~130\ ))
-- \_~134\ = CARRY(( !\A[33]~input_o\ $ (!\B[33]~input_o\) ) + ( \_~131\ ) + ( \_~130\ ))
-- \_~135\ = SHARE((\A[33]~input_o\ & \B[33]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001010000010100000000000000000101101001011010",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[33]~input_o\,
	datac => \ALT_INV_B[33]~input_o\,
	cin => \_~130\,
	sharein => \_~131\,
	sumout => \_~133_sumout\,
	cout => \_~134\,
	shareout => \_~135\);

-- Location: IOIBUF_X24_Y0_N1
\A[34]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(34),
	o => \A[34]~input_o\);

-- Location: IOIBUF_X64_Y0_N1
\B[34]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(34),
	o => \B[34]~input_o\);

-- Location: LABCELL_X57_Y2_N12
\_~137\ : cyclonev_lcell_comb
-- Equation(s):
-- \_~137_sumout\ = SUM(( !\A[34]~input_o\ $ (!\B[34]~input_o\) ) + ( \_~135\ ) + ( \_~134\ ))
-- \_~138\ = CARRY(( !\A[34]~input_o\ $ (!\B[34]~input_o\) ) + ( \_~135\ ) + ( \_~134\ ))
-- \_~139\ = SHARE((\A[34]~input_o\ & \B[34]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000011001100000000000000000011001111001100",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_A[34]~input_o\,
	datad => \ALT_INV_B[34]~input_o\,
	cin => \_~134\,
	sharein => \_~135\,
	sumout => \_~137_sumout\,
	cout => \_~138\,
	shareout => \_~139\);

-- Location: IOIBUF_X76_Y0_N1
\A[35]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(35),
	o => \A[35]~input_o\);

-- Location: IOIBUF_X84_Y0_N35
\B[35]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(35),
	o => \B[35]~input_o\);

-- Location: LABCELL_X57_Y2_N15
\_~141\ : cyclonev_lcell_comb
-- Equation(s):
-- \_~141_sumout\ = SUM(( !\A[35]~input_o\ $ (!\B[35]~input_o\) ) + ( \_~139\ ) + ( \_~138\ ))
-- \_~142\ = CARRY(( !\A[35]~input_o\ $ (!\B[35]~input_o\) ) + ( \_~139\ ) + ( \_~138\ ))
-- \_~143\ = SHARE((\A[35]~input_o\ & \B[35]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001010000010100000000000000000101101001011010",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[35]~input_o\,
	datac => \ALT_INV_B[35]~input_o\,
	cin => \_~138\,
	sharein => \_~139\,
	sumout => \_~141_sumout\,
	cout => \_~142\,
	shareout => \_~143\);

-- Location: IOIBUF_X14_Y0_N1
\A[36]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(36),
	o => \A[36]~input_o\);

-- Location: IOIBUF_X6_Y0_N52
\B[36]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(36),
	o => \B[36]~input_o\);

-- Location: LABCELL_X57_Y2_N18
\_~145\ : cyclonev_lcell_comb
-- Equation(s):
-- \_~145_sumout\ = SUM(( !\A[36]~input_o\ $ (!\B[36]~input_o\) ) + ( \_~143\ ) + ( \_~142\ ))
-- \_~146\ = CARRY(( !\A[36]~input_o\ $ (!\B[36]~input_o\) ) + ( \_~143\ ) + ( \_~142\ ))
-- \_~147\ = SHARE((\A[36]~input_o\ & \B[36]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110000001100000000000000000011110000111100",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_A[36]~input_o\,
	datac => \ALT_INV_B[36]~input_o\,
	cin => \_~142\,
	sharein => \_~143\,
	sumout => \_~145_sumout\,
	cout => \_~146\,
	shareout => \_~147\);

-- Location: IOIBUF_X30_Y0_N52
\A[37]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(37),
	o => \A[37]~input_o\);

-- Location: IOIBUF_X26_Y0_N41
\B[37]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(37),
	o => \B[37]~input_o\);

-- Location: LABCELL_X57_Y2_N21
\_~149\ : cyclonev_lcell_comb
-- Equation(s):
-- \_~149_sumout\ = SUM(( !\A[37]~input_o\ $ (!\B[37]~input_o\) ) + ( \_~147\ ) + ( \_~146\ ))
-- \_~150\ = CARRY(( !\A[37]~input_o\ $ (!\B[37]~input_o\) ) + ( \_~147\ ) + ( \_~146\ ))
-- \_~151\ = SHARE((\A[37]~input_o\ & \B[37]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001010000010100000000000000000101101001011010",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[37]~input_o\,
	datac => \ALT_INV_B[37]~input_o\,
	cin => \_~146\,
	sharein => \_~147\,
	sumout => \_~149_sumout\,
	cout => \_~150\,
	shareout => \_~151\);

-- Location: IOIBUF_X50_Y0_N92
\B[38]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(38),
	o => \B[38]~input_o\);

-- Location: IOIBUF_X30_Y0_N35
\A[38]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(38),
	o => \A[38]~input_o\);

-- Location: LABCELL_X57_Y2_N24
\_~153\ : cyclonev_lcell_comb
-- Equation(s):
-- \_~153_sumout\ = SUM(( !\B[38]~input_o\ $ (!\A[38]~input_o\) ) + ( \_~151\ ) + ( \_~150\ ))
-- \_~154\ = CARRY(( !\B[38]~input_o\ $ (!\A[38]~input_o\) ) + ( \_~151\ ) + ( \_~150\ ))
-- \_~155\ = SHARE((\B[38]~input_o\ & \A[38]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000111100000000000000000000111111110000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_B[38]~input_o\,
	datad => \ALT_INV_A[38]~input_o\,
	cin => \_~150\,
	sharein => \_~151\,
	sumout => \_~153_sumout\,
	cout => \_~154\,
	shareout => \_~155\);

-- Location: IOIBUF_X34_Y0_N58
\A[39]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(39),
	o => \A[39]~input_o\);

-- Location: IOIBUF_X52_Y0_N18
\B[39]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(39),
	o => \B[39]~input_o\);

-- Location: LABCELL_X57_Y2_N27
\_~157\ : cyclonev_lcell_comb
-- Equation(s):
-- \_~157_sumout\ = SUM(( !\A[39]~input_o\ $ (!\B[39]~input_o\) ) + ( \_~155\ ) + ( \_~154\ ))
-- \_~158\ = CARRY(( !\A[39]~input_o\ $ (!\B[39]~input_o\) ) + ( \_~155\ ) + ( \_~154\ ))
-- \_~159\ = SHARE((\A[39]~input_o\ & \B[39]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001010000010100000000000000000101101001011010",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[39]~input_o\,
	datac => \ALT_INV_B[39]~input_o\,
	cin => \_~154\,
	sharein => \_~155\,
	sumout => \_~157_sumout\,
	cout => \_~158\,
	shareout => \_~159\);

-- Location: IOIBUF_X58_Y0_N75
\A[40]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(40),
	o => \A[40]~input_o\);

-- Location: IOIBUF_X54_Y0_N52
\B[40]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(40),
	o => \B[40]~input_o\);

-- Location: LABCELL_X57_Y2_N30
\_~161\ : cyclonev_lcell_comb
-- Equation(s):
-- \_~161_sumout\ = SUM(( !\A[40]~input_o\ $ (!\B[40]~input_o\) ) + ( \_~159\ ) + ( \_~158\ ))
-- \_~162\ = CARRY(( !\A[40]~input_o\ $ (!\B[40]~input_o\) ) + ( \_~159\ ) + ( \_~158\ ))
-- \_~163\ = SHARE((\A[40]~input_o\ & \B[40]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110000001100000000000000000011110000111100",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_A[40]~input_o\,
	datac => \ALT_INV_B[40]~input_o\,
	cin => \_~158\,
	sharein => \_~159\,
	sumout => \_~161_sumout\,
	cout => \_~162\,
	shareout => \_~163\);

-- Location: IOIBUF_X66_Y0_N92
\B[41]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(41),
	o => \B[41]~input_o\);

-- Location: IOIBUF_X34_Y0_N92
\A[41]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(41),
	o => \A[41]~input_o\);

-- Location: LABCELL_X57_Y2_N33
\_~165\ : cyclonev_lcell_comb
-- Equation(s):
-- \_~165_sumout\ = SUM(( !\B[41]~input_o\ $ (!\A[41]~input_o\) ) + ( \_~163\ ) + ( \_~162\ ))
-- \_~166\ = CARRY(( !\B[41]~input_o\ $ (!\A[41]~input_o\) ) + ( \_~163\ ) + ( \_~162\ ))
-- \_~167\ = SHARE((\B[41]~input_o\ & \A[41]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001010000010100000000000000000101101001011010",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[41]~input_o\,
	datac => \ALT_INV_A[41]~input_o\,
	cin => \_~162\,
	sharein => \_~163\,
	sumout => \_~165_sumout\,
	cout => \_~166\,
	shareout => \_~167\);

-- Location: IOIBUF_X40_Y0_N52
\B[42]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(42),
	o => \B[42]~input_o\);

-- Location: IOIBUF_X74_Y0_N58
\A[42]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(42),
	o => \A[42]~input_o\);

-- Location: LABCELL_X57_Y2_N36
\_~169\ : cyclonev_lcell_comb
-- Equation(s):
-- \_~169_sumout\ = SUM(( !\B[42]~input_o\ $ (!\A[42]~input_o\) ) + ( \_~167\ ) + ( \_~166\ ))
-- \_~170\ = CARRY(( !\B[42]~input_o\ $ (!\A[42]~input_o\) ) + ( \_~167\ ) + ( \_~166\ ))
-- \_~171\ = SHARE((\B[42]~input_o\ & \A[42]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000111100000000000000000000111111110000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_B[42]~input_o\,
	datad => \ALT_INV_A[42]~input_o\,
	cin => \_~166\,
	sharein => \_~167\,
	sumout => \_~169_sumout\,
	cout => \_~170\,
	shareout => \_~171\);

-- Location: IOIBUF_X56_Y0_N52
\A[43]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(43),
	o => \A[43]~input_o\);

-- Location: IOIBUF_X68_Y0_N52
\B[43]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(43),
	o => \B[43]~input_o\);

-- Location: LABCELL_X57_Y2_N39
\_~173\ : cyclonev_lcell_comb
-- Equation(s):
-- \_~173_sumout\ = SUM(( !\A[43]~input_o\ $ (!\B[43]~input_o\) ) + ( \_~171\ ) + ( \_~170\ ))
-- \_~174\ = CARRY(( !\A[43]~input_o\ $ (!\B[43]~input_o\) ) + ( \_~171\ ) + ( \_~170\ ))
-- \_~175\ = SHARE((\A[43]~input_o\ & \B[43]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001010000010100000000000000000101101001011010",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[43]~input_o\,
	datac => \ALT_INV_B[43]~input_o\,
	cin => \_~170\,
	sharein => \_~171\,
	sumout => \_~173_sumout\,
	cout => \_~174\,
	shareout => \_~175\);

-- Location: IOIBUF_X40_Y0_N18
\B[44]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(44),
	o => \B[44]~input_o\);

-- Location: IOIBUF_X70_Y0_N1
\A[44]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(44),
	o => \A[44]~input_o\);

-- Location: LABCELL_X57_Y2_N42
\_~177\ : cyclonev_lcell_comb
-- Equation(s):
-- \_~177_sumout\ = SUM(( !\B[44]~input_o\ $ (!\A[44]~input_o\) ) + ( \_~175\ ) + ( \_~174\ ))
-- \_~178\ = CARRY(( !\B[44]~input_o\ $ (!\A[44]~input_o\) ) + ( \_~175\ ) + ( \_~174\ ))
-- \_~179\ = SHARE((\B[44]~input_o\ & \A[44]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001010000010100000000000000000101101001011010",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[44]~input_o\,
	datac => \ALT_INV_A[44]~input_o\,
	cin => \_~174\,
	sharein => \_~175\,
	sumout => \_~177_sumout\,
	cout => \_~178\,
	shareout => \_~179\);

-- Location: IOIBUF_X56_Y0_N18
\A[45]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(45),
	o => \A[45]~input_o\);

-- Location: IOIBUF_X80_Y0_N18
\B[45]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(45),
	o => \B[45]~input_o\);

-- Location: LABCELL_X57_Y2_N45
\_~181\ : cyclonev_lcell_comb
-- Equation(s):
-- \_~181_sumout\ = SUM(( !\A[45]~input_o\ $ (!\B[45]~input_o\) ) + ( \_~179\ ) + ( \_~178\ ))
-- \_~182\ = CARRY(( !\A[45]~input_o\ $ (!\B[45]~input_o\) ) + ( \_~179\ ) + ( \_~178\ ))
-- \_~183\ = SHARE((\A[45]~input_o\ & \B[45]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000111100000000000000000000111111110000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_A[45]~input_o\,
	datad => \ALT_INV_B[45]~input_o\,
	cin => \_~178\,
	sharein => \_~179\,
	sumout => \_~181_sumout\,
	cout => \_~182\,
	shareout => \_~183\);

-- Location: IOIBUF_X58_Y0_N92
\A[46]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(46),
	o => \A[46]~input_o\);

-- Location: IOIBUF_X32_Y0_N1
\B[46]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(46),
	o => \B[46]~input_o\);

-- Location: LABCELL_X57_Y2_N48
\_~185\ : cyclonev_lcell_comb
-- Equation(s):
-- \_~185_sumout\ = SUM(( !\A[46]~input_o\ $ (!\B[46]~input_o\) ) + ( \_~183\ ) + ( \_~182\ ))
-- \_~186\ = CARRY(( !\A[46]~input_o\ $ (!\B[46]~input_o\) ) + ( \_~183\ ) + ( \_~182\ ))
-- \_~187\ = SHARE((\A[46]~input_o\ & \B[46]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110000001100000000000000000011110000111100",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_A[46]~input_o\,
	datac => \ALT_INV_B[46]~input_o\,
	cin => \_~182\,
	sharein => \_~183\,
	sumout => \_~185_sumout\,
	cout => \_~186\,
	shareout => \_~187\);

-- Location: IOIBUF_X38_Y0_N1
\B[47]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(47),
	o => \B[47]~input_o\);

-- Location: IOIBUF_X72_Y0_N35
\A[47]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(47),
	o => \A[47]~input_o\);

-- Location: LABCELL_X57_Y2_N51
\_~189\ : cyclonev_lcell_comb
-- Equation(s):
-- \_~189_sumout\ = SUM(( !\B[47]~input_o\ $ (!\A[47]~input_o\) ) + ( \_~187\ ) + ( \_~186\ ))
-- \_~190\ = CARRY(( !\B[47]~input_o\ $ (!\A[47]~input_o\) ) + ( \_~187\ ) + ( \_~186\ ))
-- \_~191\ = SHARE((\B[47]~input_o\ & \A[47]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001010000010100000000000000000101101001011010",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[47]~input_o\,
	datac => \ALT_INV_A[47]~input_o\,
	cin => \_~186\,
	sharein => \_~187\,
	sumout => \_~189_sumout\,
	cout => \_~190\,
	shareout => \_~191\);

-- Location: IOIBUF_X10_Y0_N58
\A[48]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(48),
	o => \A[48]~input_o\);

-- Location: IOIBUF_X4_Y0_N18
\B[48]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(48),
	o => \B[48]~input_o\);

-- Location: LABCELL_X57_Y2_N54
\_~193\ : cyclonev_lcell_comb
-- Equation(s):
-- \_~193_sumout\ = SUM(( !\A[48]~input_o\ $ (!\B[48]~input_o\) ) + ( \_~191\ ) + ( \_~190\ ))
-- \_~194\ = CARRY(( !\A[48]~input_o\ $ (!\B[48]~input_o\) ) + ( \_~191\ ) + ( \_~190\ ))
-- \_~195\ = SHARE((\A[48]~input_o\ & \B[48]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110000001100000000000000000011110000111100",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_A[48]~input_o\,
	datac => \ALT_INV_B[48]~input_o\,
	cin => \_~190\,
	sharein => \_~191\,
	sumout => \_~193_sumout\,
	cout => \_~194\,
	shareout => \_~195\);

-- Location: IOIBUF_X8_Y0_N52
\B[49]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(49),
	o => \B[49]~input_o\);

-- Location: IOIBUF_X70_Y0_N35
\A[49]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(49),
	o => \A[49]~input_o\);

-- Location: LABCELL_X57_Y2_N57
\_~197\ : cyclonev_lcell_comb
-- Equation(s):
-- \_~197_sumout\ = SUM(( !\B[49]~input_o\ $ (!\A[49]~input_o\) ) + ( \_~195\ ) + ( \_~194\ ))
-- \_~198\ = CARRY(( !\B[49]~input_o\ $ (!\A[49]~input_o\) ) + ( \_~195\ ) + ( \_~194\ ))
-- \_~199\ = SHARE((\B[49]~input_o\ & \A[49]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000101010100000000000000000101010110101010",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[49]~input_o\,
	datad => \ALT_INV_A[49]~input_o\,
	cin => \_~194\,
	sharein => \_~195\,
	sumout => \_~197_sumout\,
	cout => \_~198\,
	shareout => \_~199\);

-- Location: IOIBUF_X82_Y0_N75
\B[50]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(50),
	o => \B[50]~input_o\);

-- Location: IOIBUF_X60_Y0_N52
\A[50]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(50),
	o => \A[50]~input_o\);

-- Location: LABCELL_X57_Y1_N0
\_~201\ : cyclonev_lcell_comb
-- Equation(s):
-- \_~201_sumout\ = SUM(( !\B[50]~input_o\ $ (!\A[50]~input_o\) ) + ( \_~199\ ) + ( \_~198\ ))
-- \_~202\ = CARRY(( !\B[50]~input_o\ $ (!\A[50]~input_o\) ) + ( \_~199\ ) + ( \_~198\ ))
-- \_~203\ = SHARE((\B[50]~input_o\ & \A[50]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110000001100000000000000000011110000111100",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_B[50]~input_o\,
	datac => \ALT_INV_A[50]~input_o\,
	cin => \_~198\,
	sharein => \_~199\,
	sumout => \_~201_sumout\,
	cout => \_~202\,
	shareout => \_~203\);

-- Location: IOIBUF_X54_Y0_N1
\A[51]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(51),
	o => \A[51]~input_o\);

-- Location: IOIBUF_X38_Y0_N52
\B[51]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(51),
	o => \B[51]~input_o\);

-- Location: LABCELL_X57_Y1_N3
\_~205\ : cyclonev_lcell_comb
-- Equation(s):
-- \_~205_sumout\ = SUM(( !\A[51]~input_o\ $ (!\B[51]~input_o\) ) + ( \_~203\ ) + ( \_~202\ ))
-- \_~206\ = CARRY(( !\A[51]~input_o\ $ (!\B[51]~input_o\) ) + ( \_~203\ ) + ( \_~202\ ))
-- \_~207\ = SHARE((\A[51]~input_o\ & \B[51]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000101010100000000000000000101010110101010",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[51]~input_o\,
	datad => \ALT_INV_B[51]~input_o\,
	cin => \_~202\,
	sharein => \_~203\,
	sumout => \_~205_sumout\,
	cout => \_~206\,
	shareout => \_~207\);

-- Location: IOIBUF_X40_Y0_N1
\A[52]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(52),
	o => \A[52]~input_o\);

-- Location: IOIBUF_X56_Y0_N35
\B[52]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(52),
	o => \B[52]~input_o\);

-- Location: LABCELL_X57_Y1_N6
\_~209\ : cyclonev_lcell_comb
-- Equation(s):
-- \_~209_sumout\ = SUM(( !\A[52]~input_o\ $ (!\B[52]~input_o\) ) + ( \_~207\ ) + ( \_~206\ ))
-- \_~210\ = CARRY(( !\A[52]~input_o\ $ (!\B[52]~input_o\) ) + ( \_~207\ ) + ( \_~206\ ))
-- \_~211\ = SHARE((\A[52]~input_o\ & \B[52]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000011001100000000000000000011001111001100",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_A[52]~input_o\,
	datad => \ALT_INV_B[52]~input_o\,
	cin => \_~206\,
	sharein => \_~207\,
	sumout => \_~209_sumout\,
	cout => \_~210\,
	shareout => \_~211\);

-- Location: IOIBUF_X50_Y0_N41
\B[53]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(53),
	o => \B[53]~input_o\);

-- Location: IOIBUF_X22_Y0_N1
\A[53]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(53),
	o => \A[53]~input_o\);

-- Location: LABCELL_X57_Y1_N9
\_~213\ : cyclonev_lcell_comb
-- Equation(s):
-- \_~213_sumout\ = SUM(( !\B[53]~input_o\ $ (!\A[53]~input_o\) ) + ( \_~211\ ) + ( \_~210\ ))
-- \_~214\ = CARRY(( !\B[53]~input_o\ $ (!\A[53]~input_o\) ) + ( \_~211\ ) + ( \_~210\ ))
-- \_~215\ = SHARE((\B[53]~input_o\ & \A[53]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001010000010100000000000000000101101001011010",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[53]~input_o\,
	datac => \ALT_INV_A[53]~input_o\,
	cin => \_~210\,
	sharein => \_~211\,
	sumout => \_~213_sumout\,
	cout => \_~214\,
	shareout => \_~215\);

-- Location: IOIBUF_X54_Y0_N18
\B[54]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(54),
	o => \B[54]~input_o\);

-- Location: IOIBUF_X60_Y0_N18
\A[54]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(54),
	o => \A[54]~input_o\);

-- Location: LABCELL_X57_Y1_N12
\_~217\ : cyclonev_lcell_comb
-- Equation(s):
-- \_~217_sumout\ = SUM(( !\B[54]~input_o\ $ (!\A[54]~input_o\) ) + ( \_~215\ ) + ( \_~214\ ))
-- \_~218\ = CARRY(( !\B[54]~input_o\ $ (!\A[54]~input_o\) ) + ( \_~215\ ) + ( \_~214\ ))
-- \_~219\ = SHARE((\B[54]~input_o\ & \A[54]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000011001100000000000000000011001111001100",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_B[54]~input_o\,
	datad => \ALT_INV_A[54]~input_o\,
	cin => \_~214\,
	sharein => \_~215\,
	sumout => \_~217_sumout\,
	cout => \_~218\,
	shareout => \_~219\);

-- Location: IOIBUF_X52_Y0_N35
\B[55]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(55),
	o => \B[55]~input_o\);

-- Location: IOIBUF_X66_Y0_N75
\A[55]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(55),
	o => \A[55]~input_o\);

-- Location: LABCELL_X57_Y1_N15
\_~221\ : cyclonev_lcell_comb
-- Equation(s):
-- \_~221_sumout\ = SUM(( !\B[55]~input_o\ $ (!\A[55]~input_o\) ) + ( \_~219\ ) + ( \_~218\ ))
-- \_~222\ = CARRY(( !\B[55]~input_o\ $ (!\A[55]~input_o\) ) + ( \_~219\ ) + ( \_~218\ ))
-- \_~223\ = SHARE((\B[55]~input_o\ & \A[55]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001010000010100000000000000000101101001011010",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[55]~input_o\,
	datac => \ALT_INV_A[55]~input_o\,
	cin => \_~218\,
	sharein => \_~219\,
	sumout => \_~221_sumout\,
	cout => \_~222\,
	shareout => \_~223\);

-- Location: IOIBUF_X82_Y0_N92
\A[56]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(56),
	o => \A[56]~input_o\);

-- Location: IOIBUF_X88_Y0_N36
\B[56]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(56),
	o => \B[56]~input_o\);

-- Location: LABCELL_X57_Y1_N18
\_~225\ : cyclonev_lcell_comb
-- Equation(s):
-- \_~225_sumout\ = SUM(( !\A[56]~input_o\ $ (!\B[56]~input_o\) ) + ( \_~223\ ) + ( \_~222\ ))
-- \_~226\ = CARRY(( !\A[56]~input_o\ $ (!\B[56]~input_o\) ) + ( \_~223\ ) + ( \_~222\ ))
-- \_~227\ = SHARE((\A[56]~input_o\ & \B[56]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000111100000000000000000000111111110000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_A[56]~input_o\,
	datad => \ALT_INV_B[56]~input_o\,
	cin => \_~222\,
	sharein => \_~223\,
	sumout => \_~225_sumout\,
	cout => \_~226\,
	shareout => \_~227\);

-- Location: IOIBUF_X26_Y0_N58
\B[57]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(57),
	o => \B[57]~input_o\);

-- Location: IOIBUF_X56_Y0_N1
\A[57]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(57),
	o => \A[57]~input_o\);

-- Location: LABCELL_X57_Y1_N21
\_~229\ : cyclonev_lcell_comb
-- Equation(s):
-- \_~229_sumout\ = SUM(( !\B[57]~input_o\ $ (!\A[57]~input_o\) ) + ( \_~227\ ) + ( \_~226\ ))
-- \_~230\ = CARRY(( !\B[57]~input_o\ $ (!\A[57]~input_o\) ) + ( \_~227\ ) + ( \_~226\ ))
-- \_~231\ = SHARE((\B[57]~input_o\ & \A[57]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001010000010100000000000000000101101001011010",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[57]~input_o\,
	datac => \ALT_INV_A[57]~input_o\,
	cin => \_~226\,
	sharein => \_~227\,
	sumout => \_~229_sumout\,
	cout => \_~230\,
	shareout => \_~231\);

-- Location: IOIBUF_X70_Y0_N52
\B[58]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(58),
	o => \B[58]~input_o\);

-- Location: IOIBUF_X50_Y0_N58
\A[58]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(58),
	o => \A[58]~input_o\);

-- Location: LABCELL_X57_Y1_N24
\_~233\ : cyclonev_lcell_comb
-- Equation(s):
-- \_~233_sumout\ = SUM(( !\B[58]~input_o\ $ (!\A[58]~input_o\) ) + ( \_~231\ ) + ( \_~230\ ))
-- \_~234\ = CARRY(( !\B[58]~input_o\ $ (!\A[58]~input_o\) ) + ( \_~231\ ) + ( \_~230\ ))
-- \_~235\ = SHARE((\B[58]~input_o\ & \A[58]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001010000010100000000000000000101101001011010",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[58]~input_o\,
	datac => \ALT_INV_A[58]~input_o\,
	cin => \_~230\,
	sharein => \_~231\,
	sumout => \_~233_sumout\,
	cout => \_~234\,
	shareout => \_~235\);

-- Location: IOIBUF_X64_Y0_N35
\B[59]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(59),
	o => \B[59]~input_o\);

-- Location: IOIBUF_X6_Y0_N1
\A[59]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(59),
	o => \A[59]~input_o\);

-- Location: LABCELL_X57_Y1_N27
\_~237\ : cyclonev_lcell_comb
-- Equation(s):
-- \_~237_sumout\ = SUM(( !\B[59]~input_o\ $ (!\A[59]~input_o\) ) + ( \_~235\ ) + ( \_~234\ ))
-- \_~238\ = CARRY(( !\B[59]~input_o\ $ (!\A[59]~input_o\) ) + ( \_~235\ ) + ( \_~234\ ))
-- \_~239\ = SHARE((\B[59]~input_o\ & \A[59]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110000001100000000000000000011110000111100",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_B[59]~input_o\,
	datac => \ALT_INV_A[59]~input_o\,
	cin => \_~234\,
	sharein => \_~235\,
	sumout => \_~237_sumout\,
	cout => \_~238\,
	shareout => \_~239\);

-- Location: IOIBUF_X62_Y0_N35
\B[60]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(60),
	o => \B[60]~input_o\);

-- Location: IOIBUF_X74_Y0_N41
\A[60]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(60),
	o => \A[60]~input_o\);

-- Location: LABCELL_X57_Y1_N30
\_~241\ : cyclonev_lcell_comb
-- Equation(s):
-- \_~241_sumout\ = SUM(( !\B[60]~input_o\ $ (!\A[60]~input_o\) ) + ( \_~239\ ) + ( \_~238\ ))
-- \_~242\ = CARRY(( !\B[60]~input_o\ $ (!\A[60]~input_o\) ) + ( \_~239\ ) + ( \_~238\ ))
-- \_~243\ = SHARE((\B[60]~input_o\ & \A[60]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110000001100000000000000000011110000111100",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_B[60]~input_o\,
	datac => \ALT_INV_A[60]~input_o\,
	cin => \_~238\,
	sharein => \_~239\,
	sumout => \_~241_sumout\,
	cout => \_~242\,
	shareout => \_~243\);

-- Location: IOIBUF_X58_Y0_N41
\B[61]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(61),
	o => \B[61]~input_o\);

-- Location: IOIBUF_X72_Y0_N52
\A[61]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(61),
	o => \A[61]~input_o\);

-- Location: LABCELL_X57_Y1_N33
\_~245\ : cyclonev_lcell_comb
-- Equation(s):
-- \_~245_sumout\ = SUM(( !\B[61]~input_o\ $ (!\A[61]~input_o\) ) + ( \_~243\ ) + ( \_~242\ ))
-- \_~246\ = CARRY(( !\B[61]~input_o\ $ (!\A[61]~input_o\) ) + ( \_~243\ ) + ( \_~242\ ))
-- \_~247\ = SHARE((\B[61]~input_o\ & \A[61]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000101010100000000000000000101010110101010",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[61]~input_o\,
	datad => \ALT_INV_A[61]~input_o\,
	cin => \_~242\,
	sharein => \_~243\,
	sumout => \_~245_sumout\,
	cout => \_~246\,
	shareout => \_~247\);

-- Location: IOIBUF_X32_Y0_N52
\B[62]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(62),
	o => \B[62]~input_o\);

-- Location: IOIBUF_X88_Y0_N53
\A[62]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(62),
	o => \A[62]~input_o\);

-- Location: LABCELL_X57_Y1_N36
\_~249\ : cyclonev_lcell_comb
-- Equation(s):
-- \_~249_sumout\ = SUM(( !\B[62]~input_o\ $ (!\A[62]~input_o\) ) + ( \_~247\ ) + ( \_~246\ ))
-- \_~250\ = CARRY(( !\B[62]~input_o\ $ (!\A[62]~input_o\) ) + ( \_~247\ ) + ( \_~246\ ))
-- \_~251\ = SHARE((\B[62]~input_o\ & \A[62]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000111100000000000000000000111111110000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_B[62]~input_o\,
	datad => \ALT_INV_A[62]~input_o\,
	cin => \_~246\,
	sharein => \_~247\,
	sumout => \_~249_sumout\,
	cout => \_~250\,
	shareout => \_~251\);

-- Location: IOIBUF_X62_Y0_N18
\A[63]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(63),
	o => \A[63]~input_o\);

-- Location: IOIBUF_X62_Y0_N1
\B[63]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(63),
	o => \B[63]~input_o\);

-- Location: LABCELL_X57_Y1_N39
\_~253\ : cyclonev_lcell_comb
-- Equation(s):
-- \_~253_sumout\ = SUM(( !\A[63]~input_o\ $ (!\B[63]~input_o\) ) + ( \_~251\ ) + ( \_~250\ ))
-- \_~254\ = CARRY(( !\A[63]~input_o\ $ (!\B[63]~input_o\) ) + ( \_~251\ ) + ( \_~250\ ))
-- \_~255\ = SHARE((\A[63]~input_o\ & \B[63]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001010000010100000000000000000101101001011010",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[63]~input_o\,
	datac => \ALT_INV_B[63]~input_o\,
	cin => \_~250\,
	sharein => \_~251\,
	sumout => \_~253_sumout\,
	cout => \_~254\,
	shareout => \_~255\);

-- Location: LABCELL_X57_Y1_N42
\_~257\ : cyclonev_lcell_comb
-- Equation(s):
-- \_~257_sumout\ = SUM(( GND ) + ( \_~255\ ) + ( \_~254\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	cin => \_~254\,
	sharein => \_~255\,
	sumout => \_~257_sumout\);

-- Location: LABCELL_X55_Y1_N0
\Ovfl~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Ovfl~0_combout\ = ( \B[63]~input_o\ & ( \A[63]~input_o\ & ( \_~253_sumout\ ) ) ) # ( !\B[63]~input_o\ & ( \A[63]~input_o\ ) ) # ( \B[63]~input_o\ & ( !\A[63]~input_o\ ) ) # ( !\B[63]~input_o\ & ( !\A[63]~input_o\ & ( !\_~253_sumout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111111111111111111111111111111110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV__~253_sumout\,
	datae => \ALT_INV_B[63]~input_o\,
	dataf => \ALT_INV_A[63]~input_o\,
	combout => \Ovfl~0_combout\);

-- Location: LABCELL_X64_Y28_N0
\~QUARTUS_CREATED_GND~I\ : cyclonev_lcell_comb
-- Equation(s):

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
;
END structure;


