-- Copyright (C) 1991-2015 Altera Corporation. All rights reserved.
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, the Altera Quartus II License Agreement,
-- the Altera MegaCore Function License Agreement, or other 
-- applicable license agreement, including, without limitation, 
-- that your use is for the sole purpose of programming logic 
-- devices manufactured by Altera and sold by Altera or its 
-- authorized distributors.  Please refer to the applicable 
-- agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 15.0.0 Build 145 04/22/2015 SJ Web Edition"

-- DATE "10/29/2018 00:36:50"

-- 
-- Device: Altera 5CSEMA5F31C6 Package FBGA896
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	lab7_top IS
    PORT (
	KEY : IN std_logic_vector(3 DOWNTO 0);
	SW : IN std_logic_vector(9 DOWNTO 0);
	LEDR : OUT std_logic_vector(9 DOWNTO 0);
	HEX0 : OUT std_logic_vector(6 DOWNTO 0);
	HEX1 : OUT std_logic_vector(6 DOWNTO 0);
	HEX2 : OUT std_logic_vector(6 DOWNTO 0);
	HEX3 : OUT std_logic_vector(6 DOWNTO 0);
	HEX4 : OUT std_logic_vector(6 DOWNTO 0);
	HEX5 : OUT std_logic_vector(6 DOWNTO 0)
	);
END lab7_top;

-- Design Ports Information
-- KEY[2]	=>  Location: PIN_W15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[3]	=>  Location: PIN_Y16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[8]	=>  Location: PIN_AD10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[0]	=>  Location: PIN_V16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[1]	=>  Location: PIN_W16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[2]	=>  Location: PIN_V17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[3]	=>  Location: PIN_V18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[4]	=>  Location: PIN_W17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[5]	=>  Location: PIN_W19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[6]	=>  Location: PIN_Y19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[7]	=>  Location: PIN_W20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[8]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[9]	=>  Location: PIN_Y21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[0]	=>  Location: PIN_AE26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[1]	=>  Location: PIN_AE27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[2]	=>  Location: PIN_AE28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[3]	=>  Location: PIN_AG27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[4]	=>  Location: PIN_AF28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[5]	=>  Location: PIN_AG28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[6]	=>  Location: PIN_AH28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[0]	=>  Location: PIN_AJ29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[1]	=>  Location: PIN_AH29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[2]	=>  Location: PIN_AH30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[3]	=>  Location: PIN_AG30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[4]	=>  Location: PIN_AF29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[5]	=>  Location: PIN_AF30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[6]	=>  Location: PIN_AD27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[0]	=>  Location: PIN_AB23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[1]	=>  Location: PIN_AE29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[2]	=>  Location: PIN_AD29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[3]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[4]	=>  Location: PIN_AD30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[5]	=>  Location: PIN_AC29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[6]	=>  Location: PIN_AC30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[0]	=>  Location: PIN_AD26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[1]	=>  Location: PIN_AC27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[2]	=>  Location: PIN_AD25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[3]	=>  Location: PIN_AC25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[4]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[5]	=>  Location: PIN_AB25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[6]	=>  Location: PIN_AB22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[0]	=>  Location: PIN_AA24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[1]	=>  Location: PIN_Y23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[2]	=>  Location: PIN_Y24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[3]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[4]	=>  Location: PIN_W24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[5]	=>  Location: PIN_V23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[6]	=>  Location: PIN_W25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[0]	=>  Location: PIN_V25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[1]	=>  Location: PIN_AA28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[2]	=>  Location: PIN_Y27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[3]	=>  Location: PIN_AB27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[4]	=>  Location: PIN_AB26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[5]	=>  Location: PIN_AA26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[6]	=>  Location: PIN_AA25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[9]	=>  Location: PIN_AE12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[0]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[1]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[4]	=>  Location: PIN_AD11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[3]	=>  Location: PIN_AF10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_AC12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_AF9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[5]	=>  Location: PIN_AD12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[6]	=>  Location: PIN_AE11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[7]	=>  Location: PIN_AC9,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF lab7_top IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_KEY : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_SW : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_LEDR : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_HEX0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX2 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX3 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX4 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX5 : std_logic_vector(6 DOWNTO 0);
SIGNAL \MEM|mem_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(39 DOWNTO 0);
SIGNAL \MEM|mem_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \MEM|mem_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \MEM|mem_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\ : std_logic_vector(39 DOWNTO 0);
SIGNAL \KEY[2]~input_o\ : std_logic;
SIGNAL \KEY[3]~input_o\ : std_logic;
SIGNAL \SW[8]~input_o\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \KEY[0]~inputCLKENA0_outclk\ : std_logic;
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \CPU|Add0~29_sumout\ : std_logic;
SIGNAL \CPU|state|WideOr15~0_combout\ : std_logic;
SIGNAL \CPU|state|WideOr14~0_combout\ : std_logic;
SIGNAL \CPU|Add0~30\ : std_logic;
SIGNAL \CPU|Add0~13_sumout\ : std_logic;
SIGNAL \CPU|Add0~14\ : std_logic;
SIGNAL \CPU|Add0~17_sumout\ : std_logic;
SIGNAL \CPU|Add0~18\ : std_logic;
SIGNAL \CPU|Add0~5_sumout\ : std_logic;
SIGNAL \CPU|Add0~6\ : std_logic;
SIGNAL \CPU|Add0~9_sumout\ : std_logic;
SIGNAL \CPU|Add0~10\ : std_logic;
SIGNAL \CPU|Add0~25_sumout\ : std_logic;
SIGNAL \SW[4]~input_o\ : std_logic;
SIGNAL \CPU|addrout|out[6]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|state|WideOr16~0_combout\ : std_logic;
SIGNAL \CPU|Add0~26\ : std_logic;
SIGNAL \CPU|Add0~1_sumout\ : std_logic;
SIGNAL \CPU|mem_addr[6]~0_combout\ : std_logic;
SIGNAL \CPU|state|Decoder0~0_combout\ : std_logic;
SIGNAL \CPU|state|WideOr17~0_combout\ : std_logic;
SIGNAL \CPU|state|WideOr18~0_combout\ : std_logic;
SIGNAL \CPU|instreg|out[13]~DUPLICATE_q\ : std_logic;
SIGNAL \switch~0_combout\ : std_logic;
SIGNAL \switch~1_combout\ : std_logic;
SIGNAL \switch~2_combout\ : std_logic;
SIGNAL \CPU|Add0~2\ : std_logic;
SIGNAL \CPU|Add0~21_sumout\ : std_logic;
SIGNAL \CPU|Add0~22\ : std_logic;
SIGNAL \CPU|Add0~33_sumout\ : std_logic;
SIGNAL \CPU|state|Decoder0~2_combout\ : std_logic;
SIGNAL \SW[7]~input_o\ : std_logic;
SIGNAL \CPU|mem_addr[0]~1_combout\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \CPU|mem_addr[2]~3_combout\ : std_logic;
SIGNAL \SW[3]~input_o\ : std_logic;
SIGNAL \CPU|state|Decoder0~1_combout\ : std_logic;
SIGNAL \CPU|state|WideOr13~0_combout\ : std_logic;
SIGNAL \CPU|state|WideOr4~0_combout\ : std_logic;
SIGNAL \CPU|state|WideOr3~4_combout\ : std_logic;
SIGNAL \CPU|state|WideOr4~1_combout\ : std_logic;
SIGNAL \CPU|state|WideOr4~2_combout\ : std_logic;
SIGNAL \CPU|mem_addr[4]~5_combout\ : std_logic;
SIGNAL \CPU|mem_addr[5]~6_combout\ : std_logic;
SIGNAL \CPU|DP|multi|b[7]~7_combout\ : std_logic;
SIGNAL \CPU|state|WideOr13~1_combout\ : std_logic;
SIGNAL \CPU|state|WideOr2~0_combout\ : std_logic;
SIGNAL \CPU|state|WideOr13~2_combout\ : std_logic;
SIGNAL \CPU|state|WideOr13~3_combout\ : std_logic;
SIGNAL \CPU|state|WideOr13~4_combout\ : std_logic;
SIGNAL \CPU|state|WideOr13~5_combout\ : std_logic;
SIGNAL \CPU|state|WideOr7~2_combout\ : std_logic;
SIGNAL \CPU|state|WideOr7~3_combout\ : std_logic;
SIGNAL \CPU|state|Decoder0~3_combout\ : std_logic;
SIGNAL \CPU|state|WideOr8~0_combout\ : std_logic;
SIGNAL \CPU|state|WideOr3~5_combout\ : std_logic;
SIGNAL \CPU|state|WideOr10~0_combout\ : std_logic;
SIGNAL \CPU|state|WideOr10~2_combout\ : std_logic;
SIGNAL \CPU|state|WideOr10~1_combout\ : std_logic;
SIGNAL \CPU|state|WideOr10~3_combout\ : std_logic;
SIGNAL \CPU|state|bsel~0_combout\ : std_logic;
SIGNAL \CPU|shiftavoid~combout\ : std_logic;
SIGNAL \CPU|state|bsel~1_combout\ : std_logic;
SIGNAL \CPU|DP|Bin[2]~1_combout\ : std_logic;
SIGNAL \MEM|mem_rtl_0|auto_generated|ram_block1a15\ : std_logic;
SIGNAL \CPU|DP|REGFILE|writeR7|out[15]~feeder_combout\ : std_logic;
SIGNAL \SW[6]~input_o\ : std_logic;
SIGNAL \MEM|mem_rtl_0|auto_generated|ram_block1a6\ : std_logic;
SIGNAL \read_data[6]~12_combout\ : std_logic;
SIGNAL \CPU|state|WideOr7~0_combout\ : std_logic;
SIGNAL \CPU|state|WideOr7~4_combout\ : std_logic;
SIGNAL \CPU|state|WideOr7~1_combout\ : std_logic;
SIGNAL \read_data[9]~13_combout\ : std_logic;
SIGNAL \CPU|dec|ReadMux|b[1]~1_combout\ : std_logic;
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \MEM|mem_rtl_0|auto_generated|ram_block1a2\ : std_logic;
SIGNAL \read_data[2]~9_combout\ : std_logic;
SIGNAL \read_data[10]~15_combout\ : std_logic;
SIGNAL \CPU|dec|ReadMux|b[2]~2_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|writeR2|out[15]~feeder_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|writeR4|out[15]~feeder_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|MuxR|out[15]~30_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|writeR6|out[15]~feeder_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|read_dec|ShiftLeft0~1_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|read_dec|ShiftLeft0~0_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|MuxR|out[15]~31_combout\ : std_logic;
SIGNAL \CPU|state|WideOr2~5_combout\ : std_logic;
SIGNAL \CPU|state|WideOr9~0_combout\ : std_logic;
SIGNAL \CPU|state|bsel~2_combout\ : std_logic;
SIGNAL \CPU|DP|Bin[15]~16_combout\ : std_logic;
SIGNAL \CPU|DP|Bin[2]~0_combout\ : std_logic;
SIGNAL \CPU|DP|Bin[13]~14_combout\ : std_logic;
SIGNAL \CPU|DP|pipeB|out[8]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|DP|Bin[9]~10_combout\ : std_logic;
SIGNAL \CPU|state|Decoder0~4_combout\ : std_logic;
SIGNAL \CPU|state|Decoder0~5_combout\ : std_logic;
SIGNAL \CPU|DP|multi|b[6]~6_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|writeR7|out[6]~feeder_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|MuxR|out[6]~19_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|writeR4|out[6]~feeder_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|MuxR|out[6]~18_combout\ : std_logic;
SIGNAL \SW[5]~input_o\ : std_logic;
SIGNAL \MEM|mem_rtl_0|auto_generated|ram_block1a5\ : std_logic;
SIGNAL \read_data[5]~10_combout\ : std_logic;
SIGNAL \CPU|DP|multi|b[5]~5_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|writeR6|out[5]~feeder_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|writeR7|out[5]~feeder_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|MuxR|out[5]~17_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|MuxR|out[5]~16_combout\ : std_logic;
SIGNAL \CPU|DP|pipeB|out[4]~feeder_combout\ : std_logic;
SIGNAL \CPU|DP|Bin[5]~7_combout\ : std_logic;
SIGNAL \CPU|DP|Bin[4]~6_combout\ : std_logic;
SIGNAL \CPU|DP|multi|b[2]~2_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|writeR6|out[2]~feeder_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|writeR3|out[2]~feeder_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|MuxR|out[2]~11_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|MuxR|out[2]~10_combout\ : std_logic;
SIGNAL \CPU|DP|Bin[3]~5_combout\ : std_logic;
SIGNAL \CPU|DP|Bin[2]~4_combout\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \MEM|mem_rtl_0|auto_generated|ram_block1a0~portbdataout\ : std_logic;
SIGNAL \read_data[0]~7_combout\ : std_logic;
SIGNAL \CPU|DP|multi|b[0]~0_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|writeR7|out[0]~feeder_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|writeR1|out[0]~feeder_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|MuxR|out[0]~7_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|writeR6|out[0]~feeder_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|MuxR|out[0]~6_combout\ : std_logic;
SIGNAL \CPU|DP|Bin[0]~17_combout\ : std_logic;
SIGNAL \CPU|DP|logic|Add0~66_cout\ : std_logic;
SIGNAL \CPU|DP|logic|Add0~6\ : std_logic;
SIGNAL \CPU|DP|logic|Add0~10\ : std_logic;
SIGNAL \CPU|DP|logic|Add0~14\ : std_logic;
SIGNAL \CPU|DP|logic|Add0~18\ : std_logic;
SIGNAL \CPU|DP|logic|Add0~22\ : std_logic;
SIGNAL \CPU|DP|logic|Add0~26\ : std_logic;
SIGNAL \CPU|DP|logic|Add0~30\ : std_logic;
SIGNAL \CPU|DP|logic|Add0~34\ : std_logic;
SIGNAL \CPU|DP|logic|Add0~2\ : std_logic;
SIGNAL \CPU|DP|logic|Add0~38\ : std_logic;
SIGNAL \CPU|DP|logic|Add0~42\ : std_logic;
SIGNAL \CPU|DP|logic|Add0~46\ : std_logic;
SIGNAL \CPU|DP|logic|Add0~50\ : std_logic;
SIGNAL \CPU|DP|logic|Add0~54\ : std_logic;
SIGNAL \CPU|DP|logic|Add0~58\ : std_logic;
SIGNAL \CPU|DP|logic|Add0~61_sumout\ : std_logic;
SIGNAL \CPU|DP|logic|Mux0~0_combout\ : std_logic;
SIGNAL \CPU|DP|logic|Mux0~1_combout\ : std_logic;
SIGNAL \CPU|state|WideOr12~0_combout\ : std_logic;
SIGNAL \CPU|state|WideOr12~3_combout\ : std_logic;
SIGNAL \CPU|state|WideOr12~1_combout\ : std_logic;
SIGNAL \CPU|state|WideOr12~2_combout\ : std_logic;
SIGNAL \CPU|state|WideOr12~4_combout\ : std_logic;
SIGNAL \MEM|mem_rtl_0|auto_generated|ram_block1a14\ : std_logic;
SIGNAL \CPU|DP|REGFILE|writeR6|out[14]~feeder_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|MuxR|out[14]~29_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|writeR4|out[14]~feeder_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|writeR2|out[14]~feeder_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|MuxR|out[14]~28_combout\ : std_logic;
SIGNAL \CPU|DP|Bin[14]~15_combout\ : std_logic;
SIGNAL \CPU|DP|logic|Add0~57_sumout\ : std_logic;
SIGNAL \CPU|DP|pipeC|out[14]~feeder_combout\ : std_logic;
SIGNAL \CPU|DP|logic|Mux1~0_combout\ : std_logic;
SIGNAL \MEM|mem_rtl_0|auto_generated|ram_block1a13\ : std_logic;
SIGNAL \CPU|DP|REGFILE|writeR6|out[13]~feeder_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|MuxR|out[13]~27_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|writeR4|out[13]~feeder_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|MuxR|out[13]~26_combout\ : std_logic;
SIGNAL \CPU|DP|logic|Add0~53_sumout\ : std_logic;
SIGNAL \CPU|DP|pipeC|out[13]~feeder_combout\ : std_logic;
SIGNAL \CPU|DP|logic|Mux2~0_combout\ : std_logic;
SIGNAL \MEM|mem_rtl_0|auto_generated|ram_block1a12\ : std_logic;
SIGNAL \CPU|DP|REGFILE|writeR6|out[12]~feeder_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|writeR7|out[12]~feeder_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|MuxR|out[12]~24_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|MuxR|out[12]~25_combout\ : std_logic;
SIGNAL \CPU|DP|pipeB|out[11]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|DP|Bin[12]~13_combout\ : std_logic;
SIGNAL \CPU|DP|logic|Add0~49_sumout\ : std_logic;
SIGNAL \CPU|DP|pipeC|out[12]~feeder_combout\ : std_logic;
SIGNAL \CPU|DP|logic|Mux3~0_combout\ : std_logic;
SIGNAL \MEM|mem_rtl_0|auto_generated|ram_block1a11\ : std_logic;
SIGNAL \CPU|DP|REGFILE|MuxR|out[11]~23_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|writeR6|out[11]~feeder_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|writeR4|out[11]~feeder_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|MuxR|out[11]~22_combout\ : std_logic;
SIGNAL \CPU|DP|Bin[11]~12_combout\ : std_logic;
SIGNAL \CPU|DP|logic|Add0~45_sumout\ : std_logic;
SIGNAL \CPU|DP|pipeC|out[11]~feeder_combout\ : std_logic;
SIGNAL \CPU|DP|logic|Mux4~0_combout\ : std_logic;
SIGNAL \MEM|mem_rtl_0|auto_generated|ram_block1a10\ : std_logic;
SIGNAL \CPU|DP|REGFILE|writeR6|out[10]~feeder_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|writeR7|out[10]~feeder_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|writeR4|out[10]~feeder_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|writeR2|out[10]~feeder_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|MuxR|out[10]~20_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|MuxR|out[10]~21_combout\ : std_logic;
SIGNAL \CPU|DP|Bin[10]~11_combout\ : std_logic;
SIGNAL \CPU|DP|logic|Add0~41_sumout\ : std_logic;
SIGNAL \CPU|DP|pipeC|out[10]~feeder_combout\ : std_logic;
SIGNAL \CPU|DP|logic|Mux5~0_combout\ : std_logic;
SIGNAL \MEM|mem_rtl_0|auto_generated|ram_block1a9\ : std_logic;
SIGNAL \CPU|DP|REGFILE|writeR6|out[9]~feeder_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|writeR2|out[9]~feeder_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|MuxR|out[9]~4_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|MuxR|out[9]~5_combout\ : std_logic;
SIGNAL \CPU|DP|logic|Add0~37_sumout\ : std_logic;
SIGNAL \CPU|DP|pipeC|out[9]~feeder_combout\ : std_logic;
SIGNAL \CPU|DP|logic|Mux6~0_combout\ : std_logic;
SIGNAL \MEM|mem_rtl_0|auto_generated|ram_block1a8\ : std_logic;
SIGNAL \read_data[8]~11_combout\ : std_logic;
SIGNAL \CPU|dec|ReadMux|b[0]~0_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|writeR2|out[7]~feeder_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|MuxR|out[7]~2_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|MuxR|out[7]~3_combout\ : std_logic;
SIGNAL \CPU|DP|Bin[7]~9_combout\ : std_logic;
SIGNAL \CPU|DP|logic|Add0~33_sumout\ : std_logic;
SIGNAL \CPU|DP|pipeC|out[7]~feeder_combout\ : std_logic;
SIGNAL \CPU|DP|logic|Mux8~0_combout\ : std_logic;
SIGNAL \CPU|mem_addr[7]~7_combout\ : std_logic;
SIGNAL \MEM|mem_rtl_0|auto_generated|ram_block1a3\ : std_logic;
SIGNAL \read_data[3]~6_combout\ : std_logic;
SIGNAL \CPU|DP|multi|b[3]~3_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|writeR7|out[3]~feeder_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|writeR6|out[3]~feeder_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|MuxR|out[3]~13_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|writeR2|out[3]~feeder_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|MuxR|out[3]~12_combout\ : std_logic;
SIGNAL \CPU|DP|logic|Add0~17_sumout\ : std_logic;
SIGNAL \CPU|DP|pipeC|out[3]~feeder_combout\ : std_logic;
SIGNAL \CPU|DP|logic|Mux12~0_combout\ : std_logic;
SIGNAL \CPU|mem_addr[3]~4_combout\ : std_logic;
SIGNAL \MEM|mem_rtl_0|auto_generated|ram_block1a1\ : std_logic;
SIGNAL \read_data[1]~8_combout\ : std_logic;
SIGNAL \CPU|DP|multi|b[1]~1_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|MuxR|out[1]~8_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|writeR6|out[1]~feeder_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|MuxR|out[1]~9_combout\ : std_logic;
SIGNAL \CPU|DP|Bin[1]~3_combout\ : std_logic;
SIGNAL \CPU|DP|logic|Add0~9_sumout\ : std_logic;
SIGNAL \CPU|DP|pipeC|out[1]~feeder_combout\ : std_logic;
SIGNAL \CPU|DP|logic|Mux14~0_combout\ : std_logic;
SIGNAL \CPU|addrout|out[1]~feeder_combout\ : std_logic;
SIGNAL \CPU|mem_addr[1]~2_combout\ : std_logic;
SIGNAL \MEM|mem_rtl_0|auto_generated|ram_block1a7\ : std_logic;
SIGNAL \read_data[7]~14_combout\ : std_logic;
SIGNAL \CPU|DP|multi|comb~0_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|writeR6|out[8]~feeder_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|MuxR|out[8]~0_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|MuxR|out[8]~1_combout\ : std_logic;
SIGNAL \CPU|DP|Bin[8]~2_combout\ : std_logic;
SIGNAL \CPU|DP|logic|Add0~1_sumout\ : std_logic;
SIGNAL \CPU|DP|pipeC|out[8]~feeder_combout\ : std_logic;
SIGNAL \CPU|DP|logic|Mux7~0_combout\ : std_logic;
SIGNAL \write~combout\ : std_logic;
SIGNAL \MEM|mem_rtl_0|auto_generated|ram_block1a4\ : std_logic;
SIGNAL \read_data[4]~5_combout\ : std_logic;
SIGNAL \CPU|DP|Bin[6]~8_combout\ : std_logic;
SIGNAL \CPU|DP|logic|Add0~29_sumout\ : std_logic;
SIGNAL \CPU|DP|pipeC|out[6]~feeder_combout\ : std_logic;
SIGNAL \CPU|DP|logic|Mux9~0_combout\ : std_logic;
SIGNAL \switch~3_combout\ : std_logic;
SIGNAL \read_data[13]~3_combout\ : std_logic;
SIGNAL \CPU|state|WideOr5~0_combout\ : std_logic;
SIGNAL \CPU|state|WideOr5~1_combout\ : std_logic;
SIGNAL \CPU|state|WideOr5~2_combout\ : std_logic;
SIGNAL \CPU|DP|multi|b[4]~4_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|MuxR|out[4]~15_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|MuxR|out[4]~14_combout\ : std_logic;
SIGNAL \CPU|DP|logic|Add0~21_sumout\ : std_logic;
SIGNAL \CPU|DP|pipeC|out[4]~feeder_combout\ : std_logic;
SIGNAL \CPU|DP|logic|Mux11~0_combout\ : std_logic;
SIGNAL \CPU|addrout|out[4]~DUPLICATE_q\ : std_logic;
SIGNAL \led~0_combout\ : std_logic;
SIGNAL \read_data[14]~2_combout\ : std_logic;
SIGNAL \CPU|instreg|out[14]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|state|WideOr11~0_combout\ : std_logic;
SIGNAL \CPU|state|WideOr11~1_combout\ : std_logic;
SIGNAL \CPU|DP|logic|Add0~25_sumout\ : std_logic;
SIGNAL \CPU|DP|pipeC|out[5]~feeder_combout\ : std_logic;
SIGNAL \CPU|DP|logic|Mux10~0_combout\ : std_logic;
SIGNAL \CPU|addrout|out[5]~feeder_combout\ : std_logic;
SIGNAL \led~2_combout\ : std_logic;
SIGNAL \read_data[11]~0_combout\ : std_logic;
SIGNAL \CPU|instreg|out[11]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|DP|logic|Add0~13_sumout\ : std_logic;
SIGNAL \CPU|DP|pipeC|out[2]~feeder_combout\ : std_logic;
SIGNAL \CPU|DP|logic|Mux13~0_combout\ : std_logic;
SIGNAL \led~1_combout\ : std_logic;
SIGNAL \read_data[12]~1_combout\ : std_logic;
SIGNAL \CPU|state|WideOr3~2_combout\ : std_logic;
SIGNAL \CPU|state|WideOr3~1_combout\ : std_logic;
SIGNAL \CPU|state|WideOr3~0_combout\ : std_logic;
SIGNAL \CPU|state|WideOr3~7_combout\ : std_logic;
SIGNAL \CPU|state|WideOr3~3_combout\ : std_logic;
SIGNAL \CPU|state|resetstate[0]~0_combout\ : std_logic;
SIGNAL \CPU|state|WideOr3~6_combout\ : std_logic;
SIGNAL \CPU|state|resetstate[0]~12_combout\ : std_logic;
SIGNAL \CPU|state|resetstate[0]~1_combout\ : std_logic;
SIGNAL \CPU|state|WideOr19~0_combout\ : std_logic;
SIGNAL \CPU|state|WideOr19~1_combout\ : std_logic;
SIGNAL \CPU|addrout|out[0]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|addrout|out[8]~DUPLICATE_q\ : std_logic;
SIGNAL \led~3_combout\ : std_logic;
SIGNAL \read_data[15]~4_combout\ : std_logic;
SIGNAL \CPU|instreg|out[15]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|state|WideOr1~0_combout\ : std_logic;
SIGNAL \CPU|state|WideOr1~1_combout\ : std_logic;
SIGNAL \CPU|state|WideOr1~2_combout\ : std_logic;
SIGNAL \CPU|state|WideOr1~5_combout\ : std_logic;
SIGNAL \CPU|state|WideOr1~4_combout\ : std_logic;
SIGNAL \CPU|state|resetstate[2]~4_combout\ : std_logic;
SIGNAL \CPU|state|resetstate[2]~3_combout\ : std_logic;
SIGNAL \CPU|state|resetstate[2]~5_combout\ : std_logic;
SIGNAL \CPU|state|WideOr1~3_combout\ : std_logic;
SIGNAL \CPU|state|resetstate[2]~8_combout\ : std_logic;
SIGNAL \CPU|state|WideOr2~7_combout\ : std_logic;
SIGNAL \CPU|state|WideOr2~12_combout\ : std_logic;
SIGNAL \CPU|state|WideOr2~16_combout\ : std_logic;
SIGNAL \CPU|state|WideOr2~14_combout\ : std_logic;
SIGNAL \CPU|state|WideOr2~13_combout\ : std_logic;
SIGNAL \CPU|state|WideOr2~15_combout\ : std_logic;
SIGNAL \CPU|state|WideOr2~8_combout\ : std_logic;
SIGNAL \CPU|state|WideOr2~6_combout\ : std_logic;
SIGNAL \CPU|state|WideOr2~1_combout\ : std_logic;
SIGNAL \CPU|state|resetstate[1]~2_combout\ : std_logic;
SIGNAL \CPU|state|resetstate[3]~7_combout\ : std_logic;
SIGNAL \CPU|state|WideOr0~1_combout\ : std_logic;
SIGNAL \CPU|state|WideOr0~4_combout\ : std_logic;
SIGNAL \CPU|state|WideOr0~3_combout\ : std_logic;
SIGNAL \CPU|state|WideOr0~0_combout\ : std_logic;
SIGNAL \CPU|state|WideOr0~2_combout\ : std_logic;
SIGNAL \CPU|state|resetstate[3]~6_combout\ : std_logic;
SIGNAL \CPU|DP|logic|Add0~5_sumout\ : std_logic;
SIGNAL \CPU|DP|pipeC|out[0]~feeder_combout\ : std_logic;
SIGNAL \CPU|DP|logic|Mux15~0_combout\ : std_logic;
SIGNAL \led~4_combout\ : std_logic;
SIGNAL \led~combout\ : std_logic;
SIGNAL \ledout|out[2]~feeder_combout\ : std_logic;
SIGNAL \ledout|out[3]~feeder_combout\ : std_logic;
SIGNAL \ledout|out[4]~feeder_combout\ : std_logic;
SIGNAL \ledout|out[6]~feeder_combout\ : std_logic;
SIGNAL \H0|WideOr6~0_combout\ : std_logic;
SIGNAL \H0|WideOr5~0_combout\ : std_logic;
SIGNAL \H0|WideOr4~0_combout\ : std_logic;
SIGNAL \H0|WideOr3~0_combout\ : std_logic;
SIGNAL \H0|WideOr2~0_combout\ : std_logic;
SIGNAL \H0|WideOr1~0_combout\ : std_logic;
SIGNAL \H0|WideOr0~0_combout\ : std_logic;
SIGNAL \H1|WideOr6~0_combout\ : std_logic;
SIGNAL \H1|WideOr5~0_combout\ : std_logic;
SIGNAL \H1|WideOr4~0_combout\ : std_logic;
SIGNAL \H1|WideOr3~0_combout\ : std_logic;
SIGNAL \H1|WideOr2~0_combout\ : std_logic;
SIGNAL \H1|WideOr1~0_combout\ : std_logic;
SIGNAL \H1|WideOr0~0_combout\ : std_logic;
SIGNAL \SW[9]~input_o\ : std_logic;
SIGNAL \hout[0]~0_combout\ : std_logic;
SIGNAL \hout[2]~2_combout\ : std_logic;
SIGNAL \hout[3]~3_combout\ : std_logic;
SIGNAL \hout[1]~1_combout\ : std_logic;
SIGNAL \H2|WideOr6~0_combout\ : std_logic;
SIGNAL \H2|WideOr5~0_combout\ : std_logic;
SIGNAL \H2|WideOr4~0_combout\ : std_logic;
SIGNAL \H2|WideOr3~0_combout\ : std_logic;
SIGNAL \H2|WideOr2~0_combout\ : std_logic;
SIGNAL \H2|WideOr1~0_combout\ : std_logic;
SIGNAL \H2|WideOr0~0_combout\ : std_logic;
SIGNAL \hout[4]~4_combout\ : std_logic;
SIGNAL \hout[5]~5_combout\ : std_logic;
SIGNAL \hout[7]~7_combout\ : std_logic;
SIGNAL \hout[6]~6_combout\ : std_logic;
SIGNAL \H3|WideOr6~0_combout\ : std_logic;
SIGNAL \H3|WideOr5~0_combout\ : std_logic;
SIGNAL \H3|WideOr4~0_combout\ : std_logic;
SIGNAL \H3|WideOr3~0_combout\ : std_logic;
SIGNAL \H3|WideOr2~0_combout\ : std_logic;
SIGNAL \H3|WideOr1~0_combout\ : std_logic;
SIGNAL \H3|WideOr0~0_combout\ : std_logic;
SIGNAL \hout[9]~9_combout\ : std_logic;
SIGNAL \hout[11]~11_combout\ : std_logic;
SIGNAL \hout[10]~10_combout\ : std_logic;
SIGNAL \hout[8]~8_combout\ : std_logic;
SIGNAL \H4|WideOr6~0_combout\ : std_logic;
SIGNAL \H4|WideOr5~0_combout\ : std_logic;
SIGNAL \H4|WideOr4~0_combout\ : std_logic;
SIGNAL \H4|WideOr3~0_combout\ : std_logic;
SIGNAL \H4|WideOr2~0_combout\ : std_logic;
SIGNAL \H4|WideOr1~0_combout\ : std_logic;
SIGNAL \H4|WideOr0~0_combout\ : std_logic;
SIGNAL \hout[15]~15_combout\ : std_logic;
SIGNAL \hout[12]~12_combout\ : std_logic;
SIGNAL \hout[14]~14_combout\ : std_logic;
SIGNAL \hout[13]~13_combout\ : std_logic;
SIGNAL \H5|WideOr6~0_combout\ : std_logic;
SIGNAL \H5|WideOr5~0_combout\ : std_logic;
SIGNAL \H5|WideOr4~0_combout\ : std_logic;
SIGNAL \H5|WideOr3~0_combout\ : std_logic;
SIGNAL \H5|WideOr2~0_combout\ : std_logic;
SIGNAL \H5|WideOr1~0_combout\ : std_logic;
SIGNAL \H5|WideOr0~0_combout\ : std_logic;
SIGNAL \CPU|DP|pipeA|out\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \CPU|DP|pipeC|out\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \CPU|addrout|out\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \CPU|Pc|out\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \ledout|out\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \CPU|state|STATE|next_out\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CPU|DP|REGFILE|writeR6|out\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \CPU|instreg|out\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \CPU|DP|pipeB|out\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \CPU|dec|ReadMux|b\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \CPU|DP|REGFILE|writeR7|out\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \CPU|DP|REGFILE|writeR0|out\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \CPU|DP|REGFILE|writeR2|out\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \CPU|DP|REGFILE|writeR4|out\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \CPU|DP|REGFILE|writeR1|out\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \CPU|DP|REGFILE|writeR3|out\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \CPU|DP|REGFILE|writeR5|out\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \CPU|DP|REGFILE|MuxR|out\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \CPU|DP|multi|b\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \CPU|DP|REGFILE|andss|out\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \CPU|DP|pipeB|ALT_INV_out[11]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|DP|pipeB|ALT_INV_out[8]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|addrout|ALT_INV_out[8]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|addrout|ALT_INV_out[0]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|addrout|ALT_INV_out[4]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|instreg|ALT_INV_out[15]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|instreg|ALT_INV_out[13]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|instreg|ALT_INV_out[14]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|instreg|ALT_INV_out[11]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|addrout|ALT_INV_out[6]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_KEY[0]~inputCLKENA0_outclk\ : std_logic;
SIGNAL \ALT_INV_SW[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_KEY[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[9]~input_o\ : std_logic;
SIGNAL \CPU|state|ALT_INV_WideOr3~7_combout\ : std_logic;
SIGNAL \CPU|state|ALT_INV_WideOr3~6_combout\ : std_logic;
SIGNAL \CPU|state|ALT_INV_WideOr0~4_combout\ : std_logic;
SIGNAL \CPU|state|ALT_INV_WideOr0~3_combout\ : std_logic;
SIGNAL \CPU|state|ALT_INV_resetstate[3]~7_combout\ : std_logic;
SIGNAL \CPU|state|ALT_INV_WideOr2~16_combout\ : std_logic;
SIGNAL \CPU|state|ALT_INV_WideOr2~15_combout\ : std_logic;
SIGNAL \CPU|DP|multi|ALT_INV_b\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \CPU|DP|multi|ALT_INV_b[6]~6_combout\ : std_logic;
SIGNAL \CPU|DP|multi|ALT_INV_b[5]~5_combout\ : std_logic;
SIGNAL \CPU|DP|multi|ALT_INV_b[4]~4_combout\ : std_logic;
SIGNAL \CPU|DP|multi|ALT_INV_b[3]~3_combout\ : std_logic;
SIGNAL \CPU|DP|multi|ALT_INV_b[2]~2_combout\ : std_logic;
SIGNAL \CPU|DP|multi|ALT_INV_b[1]~1_combout\ : std_logic;
SIGNAL \CPU|DP|multi|ALT_INV_b[0]~0_combout\ : std_logic;
SIGNAL \CPU|state|ALT_INV_Decoder0~5_combout\ : std_logic;
SIGNAL \CPU|state|ALT_INV_WideOr2~14_combout\ : std_logic;
SIGNAL \CPU|state|ALT_INV_WideOr2~13_combout\ : std_logic;
SIGNAL \CPU|state|ALT_INV_WideOr13~5_combout\ : std_logic;
SIGNAL \CPU|state|ALT_INV_WideOr13~4_combout\ : std_logic;
SIGNAL \CPU|state|ALT_INV_WideOr13~3_combout\ : std_logic;
SIGNAL \CPU|state|ALT_INV_WideOr13~2_combout\ : std_logic;
SIGNAL \CPU|state|ALT_INV_WideOr13~1_combout\ : std_logic;
SIGNAL \CPU|state|ALT_INV_WideOr4~2_combout\ : std_logic;
SIGNAL \CPU|state|ALT_INV_WideOr4~1_combout\ : std_logic;
SIGNAL \CPU|state|ALT_INV_WideOr13~0_combout\ : std_logic;
SIGNAL \CPU|state|ALT_INV_WideOr4~0_combout\ : std_logic;
SIGNAL \CPU|DP|multi|ALT_INV_comb~0_combout\ : std_logic;
SIGNAL \CPU|state|ALT_INV_Decoder0~4_combout\ : std_logic;
SIGNAL \CPU|state|ALT_INV_WideOr5~2_combout\ : std_logic;
SIGNAL \CPU|state|ALT_INV_WideOr5~1_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|MuxR|ALT_INV_out[15]~31_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|writeR5|ALT_INV_out\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \CPU|DP|REGFILE|writeR3|ALT_INV_out\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \CPU|DP|REGFILE|writeR1|ALT_INV_out\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \CPU|DP|REGFILE|MuxR|ALT_INV_out[15]~30_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|writeR4|ALT_INV_out\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \CPU|DP|REGFILE|writeR2|ALT_INV_out\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \CPU|DP|REGFILE|writeR0|ALT_INV_out\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \CPU|DP|REGFILE|writeR7|ALT_INV_out\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \CPU|DP|REGFILE|writeR6|ALT_INV_out\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \CPU|DP|REGFILE|MuxR|ALT_INV_out[14]~29_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|MuxR|ALT_INV_out[14]~28_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|MuxR|ALT_INV_out[13]~27_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|MuxR|ALT_INV_out[13]~26_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|MuxR|ALT_INV_out[12]~25_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|MuxR|ALT_INV_out[12]~24_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|MuxR|ALT_INV_out[11]~23_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|MuxR|ALT_INV_out[11]~22_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|MuxR|ALT_INV_out[10]~21_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|MuxR|ALT_INV_out[10]~20_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|MuxR|ALT_INV_out[6]~19_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|MuxR|ALT_INV_out[6]~18_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|MuxR|ALT_INV_out[5]~17_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|MuxR|ALT_INV_out[5]~16_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|MuxR|ALT_INV_out\ : std_logic_vector(4 DOWNTO 4);
SIGNAL \CPU|DP|REGFILE|MuxR|ALT_INV_out[4]~15_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|MuxR|ALT_INV_out[4]~14_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|MuxR|ALT_INV_out[3]~13_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|MuxR|ALT_INV_out[3]~12_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|MuxR|ALT_INV_out[2]~11_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|MuxR|ALT_INV_out[2]~10_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|MuxR|ALT_INV_out[1]~9_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|MuxR|ALT_INV_out[1]~8_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|MuxR|ALT_INV_out[0]~7_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|MuxR|ALT_INV_out[0]~6_combout\ : std_logic;
SIGNAL \CPU|state|ALT_INV_WideOr2~12_combout\ : std_logic;
SIGNAL \CPU|state|ALT_INV_WideOr2~7_combout\ : std_logic;
SIGNAL \CPU|state|ALT_INV_WideOr2~6_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|MuxR|ALT_INV_out[9]~5_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|MuxR|ALT_INV_out[9]~4_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|MuxR|ALT_INV_out[7]~3_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|MuxR|ALT_INV_out[7]~2_combout\ : std_logic;
SIGNAL \CPU|state|ALT_INV_WideOr10~2_combout\ : std_logic;
SIGNAL \CPU|state|ALT_INV_WideOr10~1_combout\ : std_logic;
SIGNAL \CPU|state|ALT_INV_WideOr10~0_combout\ : std_logic;
SIGNAL \CPU|state|ALT_INV_WideOr2~5_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|MuxR|ALT_INV_out[8]~1_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|MuxR|ALT_INV_out[8]~0_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|read_dec|ALT_INV_ShiftLeft0~1_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|read_dec|ALT_INV_ShiftLeft0~0_combout\ : std_logic;
SIGNAL \CPU|dec|ReadMux|ALT_INV_b\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \CPU|dec|ReadMux|ALT_INV_b[2]~2_combout\ : std_logic;
SIGNAL \CPU|instreg|ALT_INV_out\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \CPU|dec|ReadMux|ALT_INV_b[1]~1_combout\ : std_logic;
SIGNAL \CPU|dec|ReadMux|ALT_INV_b[0]~0_combout\ : std_logic;
SIGNAL \CPU|state|ALT_INV_WideOr8~0_combout\ : std_logic;
SIGNAL \CPU|state|ALT_INV_WideOr3~5_combout\ : std_logic;
SIGNAL \CPU|state|ALT_INV_Decoder0~3_combout\ : std_logic;
SIGNAL \CPU|state|ALT_INV_WideOr5~0_combout\ : std_logic;
SIGNAL \CPU|state|ALT_INV_WideOr7~3_combout\ : std_logic;
SIGNAL \CPU|state|ALT_INV_WideOr7~2_combout\ : std_logic;
SIGNAL \CPU|state|ALT_INV_WideOr7~1_combout\ : std_logic;
SIGNAL \CPU|DP|ALT_INV_Bin[15]~16_combout\ : std_logic;
SIGNAL \CPU|DP|pipeA|ALT_INV_out\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \CPU|DP|ALT_INV_Bin[14]~15_combout\ : std_logic;
SIGNAL \CPU|DP|pipeB|ALT_INV_out\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \CPU|DP|ALT_INV_Bin[13]~14_combout\ : std_logic;
SIGNAL \CPU|DP|ALT_INV_Bin[12]~13_combout\ : std_logic;
SIGNAL \CPU|DP|ALT_INV_Bin[11]~12_combout\ : std_logic;
SIGNAL \CPU|DP|ALT_INV_Bin[10]~11_combout\ : std_logic;
SIGNAL \CPU|DP|ALT_INV_Bin[9]~10_combout\ : std_logic;
SIGNAL \CPU|DP|ALT_INV_Bin[7]~9_combout\ : std_logic;
SIGNAL \CPU|DP|ALT_INV_Bin[6]~8_combout\ : std_logic;
SIGNAL \CPU|DP|ALT_INV_Bin[5]~7_combout\ : std_logic;
SIGNAL \CPU|DP|ALT_INV_Bin[4]~6_combout\ : std_logic;
SIGNAL \CPU|DP|ALT_INV_Bin[3]~5_combout\ : std_logic;
SIGNAL \CPU|DP|ALT_INV_Bin[2]~4_combout\ : std_logic;
SIGNAL \CPU|DP|ALT_INV_Bin[1]~3_combout\ : std_logic;
SIGNAL \CPU|state|ALT_INV_bsel~2_combout\ : std_logic;
SIGNAL \ALT_INV_switch~3_combout\ : std_logic;
SIGNAL \CPU|state|ALT_INV_WideOr19~0_combout\ : std_logic;
SIGNAL \CPU|state|ALT_INV_WideOr0~2_combout\ : std_logic;
SIGNAL \CPU|state|ALT_INV_WideOr0~1_combout\ : std_logic;
SIGNAL \CPU|state|ALT_INV_WideOr0~0_combout\ : std_logic;
SIGNAL \CPU|state|ALT_INV_resetstate[2]~5_combout\ : std_logic;
SIGNAL \CPU|state|ALT_INV_resetstate[2]~4_combout\ : std_logic;
SIGNAL \CPU|state|ALT_INV_WideOr1~4_combout\ : std_logic;
SIGNAL \CPU|state|ALT_INV_WideOr7~0_combout\ : std_logic;
SIGNAL \CPU|state|ALT_INV_resetstate[2]~3_combout\ : std_logic;
SIGNAL \CPU|state|ALT_INV_WideOr1~3_combout\ : std_logic;
SIGNAL \CPU|state|ALT_INV_WideOr1~2_combout\ : std_logic;
SIGNAL \CPU|state|ALT_INV_WideOr1~1_combout\ : std_logic;
SIGNAL \CPU|state|ALT_INV_WideOr1~0_combout\ : std_logic;
SIGNAL \CPU|state|ALT_INV_resetstate[0]~0_combout\ : std_logic;
SIGNAL \CPU|state|ALT_INV_WideOr3~4_combout\ : std_logic;
SIGNAL \CPU|state|ALT_INV_WideOr2~0_combout\ : std_logic;
SIGNAL \CPU|state|ALT_INV_WideOr3~3_combout\ : std_logic;
SIGNAL \CPU|state|ALT_INV_WideOr3~2_combout\ : std_logic;
SIGNAL \CPU|state|ALT_INV_WideOr3~1_combout\ : std_logic;
SIGNAL \CPU|state|ALT_INV_WideOr3~0_combout\ : std_logic;
SIGNAL \CPU|state|ALT_INV_WideOr12~3_combout\ : std_logic;
SIGNAL \CPU|state|ALT_INV_WideOr12~2_combout\ : std_logic;
SIGNAL \CPU|state|ALT_INV_WideOr12~1_combout\ : std_logic;
SIGNAL \CPU|state|ALT_INV_WideOr12~0_combout\ : std_logic;
SIGNAL \CPU|DP|logic|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \CPU|state|ALT_INV_WideOr11~1_combout\ : std_logic;
SIGNAL \CPU|state|ALT_INV_WideOr11~0_combout\ : std_logic;
SIGNAL \CPU|DP|ALT_INV_Bin[8]~2_combout\ : std_logic;
SIGNAL \CPU|DP|ALT_INV_Bin[2]~1_combout\ : std_logic;
SIGNAL \CPU|DP|ALT_INV_Bin[2]~0_combout\ : std_logic;
SIGNAL \CPU|state|ALT_INV_bsel~1_combout\ : std_logic;
SIGNAL \CPU|state|ALT_INV_bsel~0_combout\ : std_logic;
SIGNAL \CPU|ALT_INV_shiftavoid~combout\ : std_logic;
SIGNAL \ALT_INV_led~4_combout\ : std_logic;
SIGNAL \CPU|state|ALT_INV_Decoder0~2_combout\ : std_logic;
SIGNAL \CPU|state|ALT_INV_Decoder0~1_combout\ : std_logic;
SIGNAL \H5|ALT_INV_WideOr0~0_combout\ : std_logic;
SIGNAL \ALT_INV_hout[15]~15_combout\ : std_logic;
SIGNAL \ALT_INV_hout[14]~14_combout\ : std_logic;
SIGNAL \ALT_INV_hout[13]~13_combout\ : std_logic;
SIGNAL \ALT_INV_hout[12]~12_combout\ : std_logic;
SIGNAL \H4|ALT_INV_WideOr0~0_combout\ : std_logic;
SIGNAL \ALT_INV_hout[11]~11_combout\ : std_logic;
SIGNAL \ALT_INV_hout[10]~10_combout\ : std_logic;
SIGNAL \ALT_INV_hout[9]~9_combout\ : std_logic;
SIGNAL \ALT_INV_hout[8]~8_combout\ : std_logic;
SIGNAL \H3|ALT_INV_WideOr0~0_combout\ : std_logic;
SIGNAL \ALT_INV_hout[7]~7_combout\ : std_logic;
SIGNAL \ALT_INV_hout[6]~6_combout\ : std_logic;
SIGNAL \ALT_INV_hout[5]~5_combout\ : std_logic;
SIGNAL \ALT_INV_hout[4]~4_combout\ : std_logic;
SIGNAL \H2|ALT_INV_WideOr0~0_combout\ : std_logic;
SIGNAL \ALT_INV_hout[3]~3_combout\ : std_logic;
SIGNAL \ALT_INV_hout[2]~2_combout\ : std_logic;
SIGNAL \ALT_INV_hout[1]~1_combout\ : std_logic;
SIGNAL \ALT_INV_hout[0]~0_combout\ : std_logic;
SIGNAL \H1|ALT_INV_WideOr0~0_combout\ : std_logic;
SIGNAL \CPU|ALT_INV_mem_addr[7]~7_combout\ : std_logic;
SIGNAL \CPU|ALT_INV_mem_addr[5]~6_combout\ : std_logic;
SIGNAL \CPU|ALT_INV_mem_addr[4]~5_combout\ : std_logic;
SIGNAL \H0|ALT_INV_WideOr0~0_combout\ : std_logic;
SIGNAL \CPU|ALT_INV_mem_addr[3]~4_combout\ : std_logic;
SIGNAL \CPU|ALT_INV_mem_addr[2]~3_combout\ : std_logic;
SIGNAL \CPU|ALT_INV_mem_addr[1]~2_combout\ : std_logic;
SIGNAL \CPU|ALT_INV_mem_addr[0]~1_combout\ : std_logic;
SIGNAL \ALT_INV_switch~2_combout\ : std_logic;
SIGNAL \ALT_INV_led~3_combout\ : std_logic;
SIGNAL \CPU|addrout|ALT_INV_out\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \ALT_INV_led~2_combout\ : std_logic;
SIGNAL \ALT_INV_led~1_combout\ : std_logic;
SIGNAL \ALT_INV_led~0_combout\ : std_logic;
SIGNAL \ALT_INV_switch~1_combout\ : std_logic;
SIGNAL \ALT_INV_switch~0_combout\ : std_logic;
SIGNAL \CPU|state|ALT_INV_Decoder0~0_combout\ : std_logic;
SIGNAL \CPU|state|ALT_INV_WideOr17~0_combout\ : std_logic;
SIGNAL \CPU|ALT_INV_mem_addr[6]~0_combout\ : std_logic;
SIGNAL \CPU|state|ALT_INV_WideOr16~0_combout\ : std_logic;
SIGNAL \CPU|state|STATE|ALT_INV_next_out\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CPU|state|ALT_INV_resetstate[0]~12_combout\ : std_logic;
SIGNAL \CPU|state|ALT_INV_WideOr1~5_combout\ : std_logic;
SIGNAL \CPU|DP|ALT_INV_Bin[0]~17_combout\ : std_logic;
SIGNAL \CPU|state|ALT_INV_WideOr7~4_combout\ : std_logic;
SIGNAL \CPU|DP|multi|ALT_INV_b[7]~7_combout\ : std_logic;
SIGNAL \CPU|state|ALT_INV_WideOr2~8_combout\ : std_logic;
SIGNAL \CPU|DP|logic|ALT_INV_Add0~57_sumout\ : std_logic;
SIGNAL \CPU|DP|logic|ALT_INV_Add0~53_sumout\ : std_logic;
SIGNAL \CPU|DP|logic|ALT_INV_Add0~49_sumout\ : std_logic;
SIGNAL \CPU|DP|logic|ALT_INV_Add0~45_sumout\ : std_logic;
SIGNAL \CPU|DP|logic|ALT_INV_Add0~41_sumout\ : std_logic;
SIGNAL \CPU|DP|logic|ALT_INV_Add0~37_sumout\ : std_logic;
SIGNAL \CPU|DP|logic|ALT_INV_Add0~33_sumout\ : std_logic;
SIGNAL \CPU|DP|logic|ALT_INV_Add0~29_sumout\ : std_logic;
SIGNAL \CPU|DP|logic|ALT_INV_Add0~25_sumout\ : std_logic;
SIGNAL \CPU|DP|logic|ALT_INV_Add0~21_sumout\ : std_logic;
SIGNAL \CPU|DP|logic|ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \CPU|DP|logic|ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \CPU|DP|logic|ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \CPU|DP|logic|ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \CPU|state|ALT_INV_WideOr2~1_combout\ : std_logic;
SIGNAL \CPU|DP|logic|ALT_INV_Add0~1_sumout\ : std_logic;
SIGNAL \CPU|DP|pipeC|ALT_INV_out\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \MEM|mem_rtl_0|auto_generated|ALT_INV_ram_block1a1\ : std_logic;
SIGNAL \MEM|mem_rtl_0|auto_generated|ALT_INV_ram_block1a2\ : std_logic;
SIGNAL \MEM|mem_rtl_0|auto_generated|ALT_INV_ram_block1a3\ : std_logic;
SIGNAL \MEM|mem_rtl_0|auto_generated|ALT_INV_ram_block1a4\ : std_logic;
SIGNAL \MEM|mem_rtl_0|auto_generated|ALT_INV_ram_block1a5\ : std_logic;
SIGNAL \MEM|mem_rtl_0|auto_generated|ALT_INV_ram_block1a6\ : std_logic;
SIGNAL \MEM|mem_rtl_0|auto_generated|ALT_INV_ram_block1a7\ : std_logic;
SIGNAL \MEM|mem_rtl_0|auto_generated|ALT_INV_ram_block1a8\ : std_logic;
SIGNAL \MEM|mem_rtl_0|auto_generated|ALT_INV_ram_block1a9\ : std_logic;
SIGNAL \MEM|mem_rtl_0|auto_generated|ALT_INV_ram_block1a10\ : std_logic;
SIGNAL \MEM|mem_rtl_0|auto_generated|ALT_INV_ram_block1a11\ : std_logic;
SIGNAL \MEM|mem_rtl_0|auto_generated|ALT_INV_ram_block1a12\ : std_logic;
SIGNAL \MEM|mem_rtl_0|auto_generated|ALT_INV_ram_block1a13\ : std_logic;
SIGNAL \MEM|mem_rtl_0|auto_generated|ALT_INV_ram_block1a14\ : std_logic;
SIGNAL \MEM|mem_rtl_0|auto_generated|ALT_INV_ram_block1a15\ : std_logic;
SIGNAL \MEM|mem_rtl_0|auto_generated|ALT_INV_ram_block1a0~portbdataout\ : std_logic;
SIGNAL \CPU|Pc|ALT_INV_out\ : std_logic_vector(8 DOWNTO 0);

BEGIN

ww_KEY <= KEY;
ww_SW <= SW;
LEDR <= ww_LEDR;
HEX0 <= ww_HEX0;
HEX1 <= ww_HEX1;
HEX2 <= ww_HEX2;
HEX3 <= ww_HEX3;
HEX4 <= ww_HEX4;
HEX5 <= ww_HEX5;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\MEM|mem_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & \CPU|DP|pipeC|out\(15) & 
\CPU|DP|pipeC|out\(14) & \CPU|DP|pipeC|out\(13) & \CPU|DP|pipeC|out\(12) & \CPU|DP|pipeC|out\(11) & \CPU|DP|pipeC|out\(10) & \CPU|DP|pipeC|out\(9) & \CPU|DP|pipeC|out\(8) & \CPU|DP|pipeC|out\(7) & \CPU|DP|pipeC|out\(6) & 
\CPU|DP|pipeC|out\(5) & \CPU|DP|pipeC|out\(4) & \CPU|DP|pipeC|out\(3) & \CPU|DP|pipeC|out\(2) & \CPU|DP|pipeC|out\(1) & \CPU|DP|pipeC|out\(0));

\MEM|mem_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\CPU|mem_addr[7]~7_combout\ & \CPU|mem_addr[6]~0_combout\ & \CPU|mem_addr[5]~6_combout\ & \CPU|mem_addr[4]~5_combout\ & \CPU|mem_addr[3]~4_combout\ & \CPU|mem_addr[2]~3_combout\ & 
\CPU|mem_addr[1]~2_combout\ & \CPU|mem_addr[0]~1_combout\);

\MEM|mem_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\ <= (\CPU|mem_addr[7]~7_combout\ & \CPU|mem_addr[6]~0_combout\ & \CPU|mem_addr[5]~6_combout\ & \CPU|mem_addr[4]~5_combout\ & \CPU|mem_addr[3]~4_combout\ & \CPU|mem_addr[2]~3_combout\ & 
\CPU|mem_addr[1]~2_combout\ & \CPU|mem_addr[0]~1_combout\);

\MEM|mem_rtl_0|auto_generated|ram_block1a0~portbdataout\ <= \MEM|mem_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(0);
\MEM|mem_rtl_0|auto_generated|ram_block1a1\ <= \MEM|mem_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(1);
\MEM|mem_rtl_0|auto_generated|ram_block1a2\ <= \MEM|mem_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(2);
\MEM|mem_rtl_0|auto_generated|ram_block1a3\ <= \MEM|mem_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(3);
\MEM|mem_rtl_0|auto_generated|ram_block1a4\ <= \MEM|mem_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(4);
\MEM|mem_rtl_0|auto_generated|ram_block1a5\ <= \MEM|mem_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(5);
\MEM|mem_rtl_0|auto_generated|ram_block1a6\ <= \MEM|mem_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(6);
\MEM|mem_rtl_0|auto_generated|ram_block1a7\ <= \MEM|mem_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(7);
\MEM|mem_rtl_0|auto_generated|ram_block1a8\ <= \MEM|mem_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(8);
\MEM|mem_rtl_0|auto_generated|ram_block1a9\ <= \MEM|mem_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(9);
\MEM|mem_rtl_0|auto_generated|ram_block1a10\ <= \MEM|mem_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(10);
\MEM|mem_rtl_0|auto_generated|ram_block1a11\ <= \MEM|mem_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(11);
\MEM|mem_rtl_0|auto_generated|ram_block1a12\ <= \MEM|mem_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(12);
\MEM|mem_rtl_0|auto_generated|ram_block1a13\ <= \MEM|mem_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(13);
\MEM|mem_rtl_0|auto_generated|ram_block1a14\ <= \MEM|mem_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(14);
\MEM|mem_rtl_0|auto_generated|ram_block1a15\ <= \MEM|mem_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(15);
\CPU|DP|pipeB|ALT_INV_out[11]~DUPLICATE_q\ <= NOT \CPU|DP|pipeB|out[11]~DUPLICATE_q\;
\CPU|DP|pipeB|ALT_INV_out[8]~DUPLICATE_q\ <= NOT \CPU|DP|pipeB|out[8]~DUPLICATE_q\;
\CPU|addrout|ALT_INV_out[8]~DUPLICATE_q\ <= NOT \CPU|addrout|out[8]~DUPLICATE_q\;
\CPU|addrout|ALT_INV_out[0]~DUPLICATE_q\ <= NOT \CPU|addrout|out[0]~DUPLICATE_q\;
\CPU|addrout|ALT_INV_out[4]~DUPLICATE_q\ <= NOT \CPU|addrout|out[4]~DUPLICATE_q\;
\CPU|instreg|ALT_INV_out[15]~DUPLICATE_q\ <= NOT \CPU|instreg|out[15]~DUPLICATE_q\;
\CPU|instreg|ALT_INV_out[13]~DUPLICATE_q\ <= NOT \CPU|instreg|out[13]~DUPLICATE_q\;
\CPU|instreg|ALT_INV_out[14]~DUPLICATE_q\ <= NOT \CPU|instreg|out[14]~DUPLICATE_q\;
\CPU|instreg|ALT_INV_out[11]~DUPLICATE_q\ <= NOT \CPU|instreg|out[11]~DUPLICATE_q\;
\CPU|addrout|ALT_INV_out[6]~DUPLICATE_q\ <= NOT \CPU|addrout|out[6]~DUPLICATE_q\;
\ALT_INV_KEY[0]~inputCLKENA0_outclk\ <= NOT \KEY[0]~inputCLKENA0_outclk\;
\ALT_INV_SW[7]~input_o\ <= NOT \SW[7]~input_o\;
\ALT_INV_SW[6]~input_o\ <= NOT \SW[6]~input_o\;
\ALT_INV_SW[5]~input_o\ <= NOT \SW[5]~input_o\;
\ALT_INV_SW[2]~input_o\ <= NOT \SW[2]~input_o\;
\ALT_INV_SW[1]~input_o\ <= NOT \SW[1]~input_o\;
\ALT_INV_SW[0]~input_o\ <= NOT \SW[0]~input_o\;
\ALT_INV_SW[3]~input_o\ <= NOT \SW[3]~input_o\;
\ALT_INV_SW[4]~input_o\ <= NOT \SW[4]~input_o\;
\ALT_INV_KEY[1]~input_o\ <= NOT \KEY[1]~input_o\;
\ALT_INV_SW[9]~input_o\ <= NOT \SW[9]~input_o\;
\CPU|state|ALT_INV_WideOr3~7_combout\ <= NOT \CPU|state|WideOr3~7_combout\;
\CPU|state|ALT_INV_WideOr3~6_combout\ <= NOT \CPU|state|WideOr3~6_combout\;
\CPU|state|ALT_INV_WideOr0~4_combout\ <= NOT \CPU|state|WideOr0~4_combout\;
\CPU|state|ALT_INV_WideOr0~3_combout\ <= NOT \CPU|state|WideOr0~3_combout\;
\CPU|state|ALT_INV_resetstate[3]~7_combout\ <= NOT \CPU|state|resetstate[3]~7_combout\;
\CPU|state|ALT_INV_WideOr2~16_combout\ <= NOT \CPU|state|WideOr2~16_combout\;
\CPU|state|ALT_INV_WideOr2~15_combout\ <= NOT \CPU|state|WideOr2~15_combout\;
\CPU|DP|multi|ALT_INV_b\(15) <= NOT \CPU|DP|multi|b\(15);
\CPU|DP|multi|ALT_INV_b\(14) <= NOT \CPU|DP|multi|b\(14);
\CPU|DP|multi|ALT_INV_b\(13) <= NOT \CPU|DP|multi|b\(13);
\CPU|DP|multi|ALT_INV_b\(12) <= NOT \CPU|DP|multi|b\(12);
\CPU|DP|multi|ALT_INV_b\(11) <= NOT \CPU|DP|multi|b\(11);
\CPU|DP|multi|ALT_INV_b\(10) <= NOT \CPU|DP|multi|b\(10);
\CPU|DP|multi|ALT_INV_b\(6) <= NOT \CPU|DP|multi|b\(6);
\CPU|DP|multi|ALT_INV_b[6]~6_combout\ <= NOT \CPU|DP|multi|b[6]~6_combout\;
\CPU|DP|multi|ALT_INV_b\(5) <= NOT \CPU|DP|multi|b\(5);
\CPU|DP|multi|ALT_INV_b[5]~5_combout\ <= NOT \CPU|DP|multi|b[5]~5_combout\;
\CPU|DP|multi|ALT_INV_b[4]~4_combout\ <= NOT \CPU|DP|multi|b[4]~4_combout\;
\CPU|DP|multi|ALT_INV_b\(3) <= NOT \CPU|DP|multi|b\(3);
\CPU|DP|multi|ALT_INV_b[3]~3_combout\ <= NOT \CPU|DP|multi|b[3]~3_combout\;
\CPU|DP|multi|ALT_INV_b\(2) <= NOT \CPU|DP|multi|b\(2);
\CPU|DP|multi|ALT_INV_b[2]~2_combout\ <= NOT \CPU|DP|multi|b[2]~2_combout\;
\CPU|DP|multi|ALT_INV_b\(1) <= NOT \CPU|DP|multi|b\(1);
\CPU|DP|multi|ALT_INV_b[1]~1_combout\ <= NOT \CPU|DP|multi|b[1]~1_combout\;
\CPU|DP|multi|ALT_INV_b\(0) <= NOT \CPU|DP|multi|b\(0);
\CPU|DP|multi|ALT_INV_b[0]~0_combout\ <= NOT \CPU|DP|multi|b[0]~0_combout\;
\CPU|state|ALT_INV_Decoder0~5_combout\ <= NOT \CPU|state|Decoder0~5_combout\;
\CPU|state|ALT_INV_WideOr2~14_combout\ <= NOT \CPU|state|WideOr2~14_combout\;
\CPU|state|ALT_INV_WideOr2~13_combout\ <= NOT \CPU|state|WideOr2~13_combout\;
\CPU|DP|multi|ALT_INV_b\(9) <= NOT \CPU|DP|multi|b\(9);
\CPU|state|ALT_INV_WideOr13~5_combout\ <= NOT \CPU|state|WideOr13~5_combout\;
\CPU|state|ALT_INV_WideOr13~4_combout\ <= NOT \CPU|state|WideOr13~4_combout\;
\CPU|state|ALT_INV_WideOr13~3_combout\ <= NOT \CPU|state|WideOr13~3_combout\;
\CPU|state|ALT_INV_WideOr13~2_combout\ <= NOT \CPU|state|WideOr13~2_combout\;
\CPU|state|ALT_INV_WideOr13~1_combout\ <= NOT \CPU|state|WideOr13~1_combout\;
\CPU|DP|multi|ALT_INV_b\(8) <= NOT \CPU|DP|multi|b\(8);
\CPU|state|ALT_INV_WideOr4~2_combout\ <= NOT \CPU|state|WideOr4~2_combout\;
\CPU|state|ALT_INV_WideOr4~1_combout\ <= NOT \CPU|state|WideOr4~1_combout\;
\CPU|state|ALT_INV_WideOr13~0_combout\ <= NOT \CPU|state|WideOr13~0_combout\;
\CPU|state|ALT_INV_WideOr4~0_combout\ <= NOT \CPU|state|WideOr4~0_combout\;
\CPU|DP|multi|ALT_INV_comb~0_combout\ <= NOT \CPU|DP|multi|comb~0_combout\;
\CPU|state|ALT_INV_Decoder0~4_combout\ <= NOT \CPU|state|Decoder0~4_combout\;
\CPU|state|ALT_INV_WideOr5~2_combout\ <= NOT \CPU|state|WideOr5~2_combout\;
\CPU|state|ALT_INV_WideOr5~1_combout\ <= NOT \CPU|state|WideOr5~1_combout\;
\CPU|DP|REGFILE|MuxR|ALT_INV_out[15]~31_combout\ <= NOT \CPU|DP|REGFILE|MuxR|out[15]~31_combout\;
\CPU|DP|REGFILE|writeR5|ALT_INV_out\(15) <= NOT \CPU|DP|REGFILE|writeR5|out\(15);
\CPU|DP|REGFILE|writeR3|ALT_INV_out\(15) <= NOT \CPU|DP|REGFILE|writeR3|out\(15);
\CPU|DP|REGFILE|writeR1|ALT_INV_out\(15) <= NOT \CPU|DP|REGFILE|writeR1|out\(15);
\CPU|DP|REGFILE|MuxR|ALT_INV_out[15]~30_combout\ <= NOT \CPU|DP|REGFILE|MuxR|out[15]~30_combout\;
\CPU|DP|REGFILE|writeR4|ALT_INV_out\(15) <= NOT \CPU|DP|REGFILE|writeR4|out\(15);
\CPU|DP|REGFILE|writeR2|ALT_INV_out\(15) <= NOT \CPU|DP|REGFILE|writeR2|out\(15);
\CPU|DP|REGFILE|writeR0|ALT_INV_out\(15) <= NOT \CPU|DP|REGFILE|writeR0|out\(15);
\CPU|DP|REGFILE|writeR7|ALT_INV_out\(15) <= NOT \CPU|DP|REGFILE|writeR7|out\(15);
\CPU|DP|REGFILE|writeR6|ALT_INV_out\(15) <= NOT \CPU|DP|REGFILE|writeR6|out\(15);
\CPU|DP|REGFILE|MuxR|ALT_INV_out[14]~29_combout\ <= NOT \CPU|DP|REGFILE|MuxR|out[14]~29_combout\;
\CPU|DP|REGFILE|writeR5|ALT_INV_out\(14) <= NOT \CPU|DP|REGFILE|writeR5|out\(14);
\CPU|DP|REGFILE|writeR3|ALT_INV_out\(14) <= NOT \CPU|DP|REGFILE|writeR3|out\(14);
\CPU|DP|REGFILE|writeR1|ALT_INV_out\(14) <= NOT \CPU|DP|REGFILE|writeR1|out\(14);
\CPU|DP|REGFILE|MuxR|ALT_INV_out[14]~28_combout\ <= NOT \CPU|DP|REGFILE|MuxR|out[14]~28_combout\;
\CPU|DP|REGFILE|writeR4|ALT_INV_out\(14) <= NOT \CPU|DP|REGFILE|writeR4|out\(14);
\CPU|DP|REGFILE|writeR2|ALT_INV_out\(14) <= NOT \CPU|DP|REGFILE|writeR2|out\(14);
\CPU|DP|REGFILE|writeR0|ALT_INV_out\(14) <= NOT \CPU|DP|REGFILE|writeR0|out\(14);
\CPU|DP|REGFILE|writeR7|ALT_INV_out\(14) <= NOT \CPU|DP|REGFILE|writeR7|out\(14);
\CPU|DP|REGFILE|writeR6|ALT_INV_out\(14) <= NOT \CPU|DP|REGFILE|writeR6|out\(14);
\CPU|DP|REGFILE|MuxR|ALT_INV_out[13]~27_combout\ <= NOT \CPU|DP|REGFILE|MuxR|out[13]~27_combout\;
\CPU|DP|REGFILE|writeR5|ALT_INV_out\(13) <= NOT \CPU|DP|REGFILE|writeR5|out\(13);
\CPU|DP|REGFILE|writeR3|ALT_INV_out\(13) <= NOT \CPU|DP|REGFILE|writeR3|out\(13);
\CPU|DP|REGFILE|writeR1|ALT_INV_out\(13) <= NOT \CPU|DP|REGFILE|writeR1|out\(13);
\CPU|DP|REGFILE|MuxR|ALT_INV_out[13]~26_combout\ <= NOT \CPU|DP|REGFILE|MuxR|out[13]~26_combout\;
\CPU|DP|REGFILE|writeR4|ALT_INV_out\(13) <= NOT \CPU|DP|REGFILE|writeR4|out\(13);
\CPU|DP|REGFILE|writeR2|ALT_INV_out\(13) <= NOT \CPU|DP|REGFILE|writeR2|out\(13);
\CPU|DP|REGFILE|writeR0|ALT_INV_out\(13) <= NOT \CPU|DP|REGFILE|writeR0|out\(13);
\CPU|DP|REGFILE|writeR7|ALT_INV_out\(13) <= NOT \CPU|DP|REGFILE|writeR7|out\(13);
\CPU|DP|REGFILE|writeR6|ALT_INV_out\(13) <= NOT \CPU|DP|REGFILE|writeR6|out\(13);
\CPU|DP|REGFILE|MuxR|ALT_INV_out[12]~25_combout\ <= NOT \CPU|DP|REGFILE|MuxR|out[12]~25_combout\;
\CPU|DP|REGFILE|writeR5|ALT_INV_out\(12) <= NOT \CPU|DP|REGFILE|writeR5|out\(12);
\CPU|DP|REGFILE|writeR3|ALT_INV_out\(12) <= NOT \CPU|DP|REGFILE|writeR3|out\(12);
\CPU|DP|REGFILE|writeR1|ALT_INV_out\(12) <= NOT \CPU|DP|REGFILE|writeR1|out\(12);
\CPU|DP|REGFILE|MuxR|ALT_INV_out[12]~24_combout\ <= NOT \CPU|DP|REGFILE|MuxR|out[12]~24_combout\;
\CPU|DP|REGFILE|writeR4|ALT_INV_out\(12) <= NOT \CPU|DP|REGFILE|writeR4|out\(12);
\CPU|DP|REGFILE|writeR2|ALT_INV_out\(12) <= NOT \CPU|DP|REGFILE|writeR2|out\(12);
\CPU|DP|REGFILE|writeR0|ALT_INV_out\(12) <= NOT \CPU|DP|REGFILE|writeR0|out\(12);
\CPU|DP|REGFILE|writeR7|ALT_INV_out\(12) <= NOT \CPU|DP|REGFILE|writeR7|out\(12);
\CPU|DP|REGFILE|writeR6|ALT_INV_out\(12) <= NOT \CPU|DP|REGFILE|writeR6|out\(12);
\CPU|DP|REGFILE|MuxR|ALT_INV_out[11]~23_combout\ <= NOT \CPU|DP|REGFILE|MuxR|out[11]~23_combout\;
\CPU|DP|REGFILE|writeR5|ALT_INV_out\(11) <= NOT \CPU|DP|REGFILE|writeR5|out\(11);
\CPU|DP|REGFILE|writeR3|ALT_INV_out\(11) <= NOT \CPU|DP|REGFILE|writeR3|out\(11);
\CPU|DP|REGFILE|writeR1|ALT_INV_out\(11) <= NOT \CPU|DP|REGFILE|writeR1|out\(11);
\CPU|DP|REGFILE|MuxR|ALT_INV_out[11]~22_combout\ <= NOT \CPU|DP|REGFILE|MuxR|out[11]~22_combout\;
\CPU|DP|REGFILE|writeR4|ALT_INV_out\(11) <= NOT \CPU|DP|REGFILE|writeR4|out\(11);
\CPU|DP|REGFILE|writeR2|ALT_INV_out\(11) <= NOT \CPU|DP|REGFILE|writeR2|out\(11);
\CPU|DP|REGFILE|writeR0|ALT_INV_out\(11) <= NOT \CPU|DP|REGFILE|writeR0|out\(11);
\CPU|DP|REGFILE|writeR7|ALT_INV_out\(11) <= NOT \CPU|DP|REGFILE|writeR7|out\(11);
\CPU|DP|REGFILE|writeR6|ALT_INV_out\(11) <= NOT \CPU|DP|REGFILE|writeR6|out\(11);
\CPU|DP|REGFILE|MuxR|ALT_INV_out[10]~21_combout\ <= NOT \CPU|DP|REGFILE|MuxR|out[10]~21_combout\;
\CPU|DP|REGFILE|writeR5|ALT_INV_out\(10) <= NOT \CPU|DP|REGFILE|writeR5|out\(10);
\CPU|DP|REGFILE|writeR3|ALT_INV_out\(10) <= NOT \CPU|DP|REGFILE|writeR3|out\(10);
\CPU|DP|REGFILE|writeR1|ALT_INV_out\(10) <= NOT \CPU|DP|REGFILE|writeR1|out\(10);
\CPU|DP|REGFILE|MuxR|ALT_INV_out[10]~20_combout\ <= NOT \CPU|DP|REGFILE|MuxR|out[10]~20_combout\;
\CPU|DP|REGFILE|writeR4|ALT_INV_out\(10) <= NOT \CPU|DP|REGFILE|writeR4|out\(10);
\CPU|DP|REGFILE|writeR2|ALT_INV_out\(10) <= NOT \CPU|DP|REGFILE|writeR2|out\(10);
\CPU|DP|REGFILE|writeR0|ALT_INV_out\(10) <= NOT \CPU|DP|REGFILE|writeR0|out\(10);
\CPU|DP|REGFILE|writeR7|ALT_INV_out\(10) <= NOT \CPU|DP|REGFILE|writeR7|out\(10);
\CPU|DP|REGFILE|writeR6|ALT_INV_out\(10) <= NOT \CPU|DP|REGFILE|writeR6|out\(10);
\CPU|DP|REGFILE|MuxR|ALT_INV_out[6]~19_combout\ <= NOT \CPU|DP|REGFILE|MuxR|out[6]~19_combout\;
\CPU|DP|REGFILE|writeR5|ALT_INV_out\(6) <= NOT \CPU|DP|REGFILE|writeR5|out\(6);
\CPU|DP|REGFILE|writeR3|ALT_INV_out\(6) <= NOT \CPU|DP|REGFILE|writeR3|out\(6);
\CPU|DP|REGFILE|writeR1|ALT_INV_out\(6) <= NOT \CPU|DP|REGFILE|writeR1|out\(6);
\CPU|DP|REGFILE|MuxR|ALT_INV_out[6]~18_combout\ <= NOT \CPU|DP|REGFILE|MuxR|out[6]~18_combout\;
\CPU|DP|REGFILE|writeR4|ALT_INV_out\(6) <= NOT \CPU|DP|REGFILE|writeR4|out\(6);
\CPU|DP|REGFILE|writeR2|ALT_INV_out\(6) <= NOT \CPU|DP|REGFILE|writeR2|out\(6);
\CPU|DP|REGFILE|writeR0|ALT_INV_out\(6) <= NOT \CPU|DP|REGFILE|writeR0|out\(6);
\CPU|DP|REGFILE|writeR7|ALT_INV_out\(6) <= NOT \CPU|DP|REGFILE|writeR7|out\(6);
\CPU|DP|REGFILE|writeR6|ALT_INV_out\(6) <= NOT \CPU|DP|REGFILE|writeR6|out\(6);
\CPU|DP|REGFILE|MuxR|ALT_INV_out[5]~17_combout\ <= NOT \CPU|DP|REGFILE|MuxR|out[5]~17_combout\;
\CPU|DP|REGFILE|writeR5|ALT_INV_out\(5) <= NOT \CPU|DP|REGFILE|writeR5|out\(5);
\CPU|DP|REGFILE|writeR3|ALT_INV_out\(5) <= NOT \CPU|DP|REGFILE|writeR3|out\(5);
\CPU|DP|REGFILE|writeR1|ALT_INV_out\(5) <= NOT \CPU|DP|REGFILE|writeR1|out\(5);
\CPU|DP|REGFILE|MuxR|ALT_INV_out[5]~16_combout\ <= NOT \CPU|DP|REGFILE|MuxR|out[5]~16_combout\;
\CPU|DP|REGFILE|writeR4|ALT_INV_out\(5) <= NOT \CPU|DP|REGFILE|writeR4|out\(5);
\CPU|DP|REGFILE|writeR2|ALT_INV_out\(5) <= NOT \CPU|DP|REGFILE|writeR2|out\(5);
\CPU|DP|REGFILE|writeR0|ALT_INV_out\(5) <= NOT \CPU|DP|REGFILE|writeR0|out\(5);
\CPU|DP|REGFILE|writeR7|ALT_INV_out\(5) <= NOT \CPU|DP|REGFILE|writeR7|out\(5);
\CPU|DP|REGFILE|writeR6|ALT_INV_out\(5) <= NOT \CPU|DP|REGFILE|writeR6|out\(5);
\CPU|DP|REGFILE|MuxR|ALT_INV_out\(4) <= NOT \CPU|DP|REGFILE|MuxR|out\(4);
\CPU|DP|REGFILE|MuxR|ALT_INV_out[4]~15_combout\ <= NOT \CPU|DP|REGFILE|MuxR|out[4]~15_combout\;
\CPU|DP|REGFILE|writeR5|ALT_INV_out\(4) <= NOT \CPU|DP|REGFILE|writeR5|out\(4);
\CPU|DP|REGFILE|writeR3|ALT_INV_out\(4) <= NOT \CPU|DP|REGFILE|writeR3|out\(4);
\CPU|DP|REGFILE|writeR1|ALT_INV_out\(4) <= NOT \CPU|DP|REGFILE|writeR1|out\(4);
\CPU|DP|REGFILE|MuxR|ALT_INV_out[4]~14_combout\ <= NOT \CPU|DP|REGFILE|MuxR|out[4]~14_combout\;
\CPU|DP|REGFILE|writeR4|ALT_INV_out\(4) <= NOT \CPU|DP|REGFILE|writeR4|out\(4);
\CPU|DP|REGFILE|writeR2|ALT_INV_out\(4) <= NOT \CPU|DP|REGFILE|writeR2|out\(4);
\CPU|DP|REGFILE|writeR0|ALT_INV_out\(4) <= NOT \CPU|DP|REGFILE|writeR0|out\(4);
\CPU|DP|REGFILE|writeR7|ALT_INV_out\(4) <= NOT \CPU|DP|REGFILE|writeR7|out\(4);
\CPU|DP|REGFILE|writeR6|ALT_INV_out\(4) <= NOT \CPU|DP|REGFILE|writeR6|out\(4);
\CPU|DP|REGFILE|MuxR|ALT_INV_out[3]~13_combout\ <= NOT \CPU|DP|REGFILE|MuxR|out[3]~13_combout\;
\CPU|DP|REGFILE|writeR5|ALT_INV_out\(3) <= NOT \CPU|DP|REGFILE|writeR5|out\(3);
\CPU|DP|REGFILE|writeR3|ALT_INV_out\(3) <= NOT \CPU|DP|REGFILE|writeR3|out\(3);
\CPU|DP|REGFILE|writeR1|ALT_INV_out\(3) <= NOT \CPU|DP|REGFILE|writeR1|out\(3);
\CPU|DP|REGFILE|MuxR|ALT_INV_out[3]~12_combout\ <= NOT \CPU|DP|REGFILE|MuxR|out[3]~12_combout\;
\CPU|DP|REGFILE|writeR4|ALT_INV_out\(3) <= NOT \CPU|DP|REGFILE|writeR4|out\(3);
\CPU|DP|REGFILE|writeR2|ALT_INV_out\(3) <= NOT \CPU|DP|REGFILE|writeR2|out\(3);
\CPU|DP|REGFILE|writeR0|ALT_INV_out\(3) <= NOT \CPU|DP|REGFILE|writeR0|out\(3);
\CPU|DP|REGFILE|writeR7|ALT_INV_out\(3) <= NOT \CPU|DP|REGFILE|writeR7|out\(3);
\CPU|DP|REGFILE|writeR6|ALT_INV_out\(3) <= NOT \CPU|DP|REGFILE|writeR6|out\(3);
\CPU|DP|REGFILE|MuxR|ALT_INV_out[2]~11_combout\ <= NOT \CPU|DP|REGFILE|MuxR|out[2]~11_combout\;
\CPU|DP|REGFILE|writeR5|ALT_INV_out\(2) <= NOT \CPU|DP|REGFILE|writeR5|out\(2);
\CPU|DP|REGFILE|writeR3|ALT_INV_out\(2) <= NOT \CPU|DP|REGFILE|writeR3|out\(2);
\CPU|DP|REGFILE|writeR1|ALT_INV_out\(2) <= NOT \CPU|DP|REGFILE|writeR1|out\(2);
\CPU|DP|REGFILE|MuxR|ALT_INV_out[2]~10_combout\ <= NOT \CPU|DP|REGFILE|MuxR|out[2]~10_combout\;
\CPU|DP|REGFILE|writeR4|ALT_INV_out\(2) <= NOT \CPU|DP|REGFILE|writeR4|out\(2);
\CPU|DP|REGFILE|writeR2|ALT_INV_out\(2) <= NOT \CPU|DP|REGFILE|writeR2|out\(2);
\CPU|DP|REGFILE|writeR0|ALT_INV_out\(2) <= NOT \CPU|DP|REGFILE|writeR0|out\(2);
\CPU|DP|REGFILE|writeR7|ALT_INV_out\(2) <= NOT \CPU|DP|REGFILE|writeR7|out\(2);
\CPU|DP|REGFILE|writeR6|ALT_INV_out\(2) <= NOT \CPU|DP|REGFILE|writeR6|out\(2);
\CPU|DP|REGFILE|MuxR|ALT_INV_out[1]~9_combout\ <= NOT \CPU|DP|REGFILE|MuxR|out[1]~9_combout\;
\CPU|DP|REGFILE|writeR5|ALT_INV_out\(1) <= NOT \CPU|DP|REGFILE|writeR5|out\(1);
\CPU|DP|REGFILE|writeR3|ALT_INV_out\(1) <= NOT \CPU|DP|REGFILE|writeR3|out\(1);
\CPU|DP|REGFILE|writeR1|ALT_INV_out\(1) <= NOT \CPU|DP|REGFILE|writeR1|out\(1);
\CPU|DP|REGFILE|MuxR|ALT_INV_out[1]~8_combout\ <= NOT \CPU|DP|REGFILE|MuxR|out[1]~8_combout\;
\CPU|DP|REGFILE|writeR4|ALT_INV_out\(1) <= NOT \CPU|DP|REGFILE|writeR4|out\(1);
\CPU|DP|REGFILE|writeR2|ALT_INV_out\(1) <= NOT \CPU|DP|REGFILE|writeR2|out\(1);
\CPU|DP|REGFILE|writeR0|ALT_INV_out\(1) <= NOT \CPU|DP|REGFILE|writeR0|out\(1);
\CPU|DP|REGFILE|writeR7|ALT_INV_out\(1) <= NOT \CPU|DP|REGFILE|writeR7|out\(1);
\CPU|DP|REGFILE|writeR6|ALT_INV_out\(1) <= NOT \CPU|DP|REGFILE|writeR6|out\(1);
\CPU|DP|REGFILE|MuxR|ALT_INV_out[0]~7_combout\ <= NOT \CPU|DP|REGFILE|MuxR|out[0]~7_combout\;
\CPU|DP|REGFILE|writeR5|ALT_INV_out\(0) <= NOT \CPU|DP|REGFILE|writeR5|out\(0);
\CPU|DP|REGFILE|writeR3|ALT_INV_out\(0) <= NOT \CPU|DP|REGFILE|writeR3|out\(0);
\CPU|DP|REGFILE|writeR1|ALT_INV_out\(0) <= NOT \CPU|DP|REGFILE|writeR1|out\(0);
\CPU|DP|REGFILE|MuxR|ALT_INV_out[0]~6_combout\ <= NOT \CPU|DP|REGFILE|MuxR|out[0]~6_combout\;
\CPU|DP|REGFILE|writeR4|ALT_INV_out\(0) <= NOT \CPU|DP|REGFILE|writeR4|out\(0);
\CPU|DP|REGFILE|writeR2|ALT_INV_out\(0) <= NOT \CPU|DP|REGFILE|writeR2|out\(0);
\CPU|DP|REGFILE|writeR0|ALT_INV_out\(0) <= NOT \CPU|DP|REGFILE|writeR0|out\(0);
\CPU|DP|REGFILE|writeR7|ALT_INV_out\(0) <= NOT \CPU|DP|REGFILE|writeR7|out\(0);
\CPU|DP|REGFILE|writeR6|ALT_INV_out\(0) <= NOT \CPU|DP|REGFILE|writeR6|out\(0);
\CPU|state|ALT_INV_WideOr2~12_combout\ <= NOT \CPU|state|WideOr2~12_combout\;
\CPU|state|ALT_INV_WideOr2~7_combout\ <= NOT \CPU|state|WideOr2~7_combout\;
\CPU|state|ALT_INV_WideOr2~6_combout\ <= NOT \CPU|state|WideOr2~6_combout\;
\CPU|DP|REGFILE|MuxR|ALT_INV_out[9]~5_combout\ <= NOT \CPU|DP|REGFILE|MuxR|out[9]~5_combout\;
\CPU|DP|REGFILE|writeR5|ALT_INV_out\(9) <= NOT \CPU|DP|REGFILE|writeR5|out\(9);
\CPU|DP|REGFILE|writeR3|ALT_INV_out\(9) <= NOT \CPU|DP|REGFILE|writeR3|out\(9);
\CPU|DP|REGFILE|writeR1|ALT_INV_out\(9) <= NOT \CPU|DP|REGFILE|writeR1|out\(9);
\CPU|DP|REGFILE|MuxR|ALT_INV_out[9]~4_combout\ <= NOT \CPU|DP|REGFILE|MuxR|out[9]~4_combout\;
\CPU|DP|REGFILE|writeR4|ALT_INV_out\(9) <= NOT \CPU|DP|REGFILE|writeR4|out\(9);
\CPU|DP|REGFILE|writeR2|ALT_INV_out\(9) <= NOT \CPU|DP|REGFILE|writeR2|out\(9);
\CPU|DP|REGFILE|writeR0|ALT_INV_out\(9) <= NOT \CPU|DP|REGFILE|writeR0|out\(9);
\CPU|DP|REGFILE|writeR7|ALT_INV_out\(9) <= NOT \CPU|DP|REGFILE|writeR7|out\(9);
\CPU|DP|REGFILE|writeR6|ALT_INV_out\(9) <= NOT \CPU|DP|REGFILE|writeR6|out\(9);
\CPU|DP|REGFILE|MuxR|ALT_INV_out[7]~3_combout\ <= NOT \CPU|DP|REGFILE|MuxR|out[7]~3_combout\;
\CPU|DP|REGFILE|writeR5|ALT_INV_out\(7) <= NOT \CPU|DP|REGFILE|writeR5|out\(7);
\CPU|DP|REGFILE|writeR3|ALT_INV_out\(7) <= NOT \CPU|DP|REGFILE|writeR3|out\(7);
\CPU|DP|REGFILE|writeR1|ALT_INV_out\(7) <= NOT \CPU|DP|REGFILE|writeR1|out\(7);
\CPU|DP|REGFILE|MuxR|ALT_INV_out[7]~2_combout\ <= NOT \CPU|DP|REGFILE|MuxR|out[7]~2_combout\;
\CPU|DP|REGFILE|writeR4|ALT_INV_out\(7) <= NOT \CPU|DP|REGFILE|writeR4|out\(7);
\CPU|DP|REGFILE|writeR2|ALT_INV_out\(7) <= NOT \CPU|DP|REGFILE|writeR2|out\(7);
\CPU|DP|REGFILE|writeR0|ALT_INV_out\(7) <= NOT \CPU|DP|REGFILE|writeR0|out\(7);
\CPU|DP|REGFILE|writeR7|ALT_INV_out\(7) <= NOT \CPU|DP|REGFILE|writeR7|out\(7);
\CPU|DP|REGFILE|writeR6|ALT_INV_out\(7) <= NOT \CPU|DP|REGFILE|writeR6|out\(7);
\CPU|state|ALT_INV_WideOr10~2_combout\ <= NOT \CPU|state|WideOr10~2_combout\;
\CPU|state|ALT_INV_WideOr10~1_combout\ <= NOT \CPU|state|WideOr10~1_combout\;
\CPU|state|ALT_INV_WideOr10~0_combout\ <= NOT \CPU|state|WideOr10~0_combout\;
\CPU|state|ALT_INV_WideOr2~5_combout\ <= NOT \CPU|state|WideOr2~5_combout\;
\CPU|DP|REGFILE|MuxR|ALT_INV_out[8]~1_combout\ <= NOT \CPU|DP|REGFILE|MuxR|out[8]~1_combout\;
\CPU|DP|REGFILE|writeR5|ALT_INV_out\(8) <= NOT \CPU|DP|REGFILE|writeR5|out\(8);
\CPU|DP|REGFILE|writeR3|ALT_INV_out\(8) <= NOT \CPU|DP|REGFILE|writeR3|out\(8);
\CPU|DP|REGFILE|writeR1|ALT_INV_out\(8) <= NOT \CPU|DP|REGFILE|writeR1|out\(8);
\CPU|DP|REGFILE|MuxR|ALT_INV_out[8]~0_combout\ <= NOT \CPU|DP|REGFILE|MuxR|out[8]~0_combout\;
\CPU|DP|REGFILE|writeR4|ALT_INV_out\(8) <= NOT \CPU|DP|REGFILE|writeR4|out\(8);
\CPU|DP|REGFILE|writeR2|ALT_INV_out\(8) <= NOT \CPU|DP|REGFILE|writeR2|out\(8);
\CPU|DP|REGFILE|writeR0|ALT_INV_out\(8) <= NOT \CPU|DP|REGFILE|writeR0|out\(8);
\CPU|DP|REGFILE|read_dec|ALT_INV_ShiftLeft0~1_combout\ <= NOT \CPU|DP|REGFILE|read_dec|ShiftLeft0~1_combout\;
\CPU|DP|REGFILE|writeR7|ALT_INV_out\(8) <= NOT \CPU|DP|REGFILE|writeR7|out\(8);
\CPU|DP|REGFILE|read_dec|ALT_INV_ShiftLeft0~0_combout\ <= NOT \CPU|DP|REGFILE|read_dec|ShiftLeft0~0_combout\;
\CPU|dec|ReadMux|ALT_INV_b\(2) <= NOT \CPU|dec|ReadMux|b\(2);
\CPU|dec|ReadMux|ALT_INV_b[2]~2_combout\ <= NOT \CPU|dec|ReadMux|b[2]~2_combout\;
\CPU|instreg|ALT_INV_out\(10) <= NOT \CPU|instreg|out\(10);
\CPU|instreg|ALT_INV_out\(7) <= NOT \CPU|instreg|out\(7);
\CPU|dec|ReadMux|ALT_INV_b\(1) <= NOT \CPU|dec|ReadMux|b\(1);
\CPU|dec|ReadMux|ALT_INV_b[1]~1_combout\ <= NOT \CPU|dec|ReadMux|b[1]~1_combout\;
\CPU|instreg|ALT_INV_out\(9) <= NOT \CPU|instreg|out\(9);
\CPU|instreg|ALT_INV_out\(6) <= NOT \CPU|instreg|out\(6);
\CPU|dec|ReadMux|ALT_INV_b\(0) <= NOT \CPU|dec|ReadMux|b\(0);
\CPU|dec|ReadMux|ALT_INV_b[0]~0_combout\ <= NOT \CPU|dec|ReadMux|b[0]~0_combout\;
\CPU|instreg|ALT_INV_out\(8) <= NOT \CPU|instreg|out\(8);
\CPU|state|ALT_INV_WideOr8~0_combout\ <= NOT \CPU|state|WideOr8~0_combout\;
\CPU|state|ALT_INV_WideOr3~5_combout\ <= NOT \CPU|state|WideOr3~5_combout\;
\CPU|state|ALT_INV_Decoder0~3_combout\ <= NOT \CPU|state|Decoder0~3_combout\;
\CPU|instreg|ALT_INV_out\(5) <= NOT \CPU|instreg|out\(5);
\CPU|state|ALT_INV_WideOr5~0_combout\ <= NOT \CPU|state|WideOr5~0_combout\;
\CPU|state|ALT_INV_WideOr7~3_combout\ <= NOT \CPU|state|WideOr7~3_combout\;
\CPU|state|ALT_INV_WideOr7~2_combout\ <= NOT \CPU|state|WideOr7~2_combout\;
\CPU|state|ALT_INV_WideOr7~1_combout\ <= NOT \CPU|state|WideOr7~1_combout\;
\CPU|DP|REGFILE|writeR6|ALT_INV_out\(8) <= NOT \CPU|DP|REGFILE|writeR6|out\(8);
\CPU|DP|ALT_INV_Bin[15]~16_combout\ <= NOT \CPU|DP|Bin[15]~16_combout\;
\CPU|DP|pipeA|ALT_INV_out\(15) <= NOT \CPU|DP|pipeA|out\(15);
\CPU|DP|ALT_INV_Bin[14]~15_combout\ <= NOT \CPU|DP|Bin[14]~15_combout\;
\CPU|DP|pipeB|ALT_INV_out\(15) <= NOT \CPU|DP|pipeB|out\(15);
\CPU|DP|pipeA|ALT_INV_out\(14) <= NOT \CPU|DP|pipeA|out\(14);
\CPU|DP|ALT_INV_Bin[13]~14_combout\ <= NOT \CPU|DP|Bin[13]~14_combout\;
\CPU|DP|pipeB|ALT_INV_out\(14) <= NOT \CPU|DP|pipeB|out\(14);
\CPU|DP|pipeA|ALT_INV_out\(13) <= NOT \CPU|DP|pipeA|out\(13);
\CPU|DP|ALT_INV_Bin[12]~13_combout\ <= NOT \CPU|DP|Bin[12]~13_combout\;
\CPU|DP|pipeB|ALT_INV_out\(13) <= NOT \CPU|DP|pipeB|out\(13);
\CPU|DP|pipeA|ALT_INV_out\(12) <= NOT \CPU|DP|pipeA|out\(12);
\CPU|DP|ALT_INV_Bin[11]~12_combout\ <= NOT \CPU|DP|Bin[11]~12_combout\;
\CPU|DP|pipeB|ALT_INV_out\(12) <= NOT \CPU|DP|pipeB|out\(12);
\CPU|DP|pipeA|ALT_INV_out\(11) <= NOT \CPU|DP|pipeA|out\(11);
\CPU|DP|ALT_INV_Bin[10]~11_combout\ <= NOT \CPU|DP|Bin[10]~11_combout\;
\CPU|DP|pipeB|ALT_INV_out\(11) <= NOT \CPU|DP|pipeB|out\(11);
\CPU|DP|pipeA|ALT_INV_out\(10) <= NOT \CPU|DP|pipeA|out\(10);
\CPU|DP|ALT_INV_Bin[9]~10_combout\ <= NOT \CPU|DP|Bin[9]~10_combout\;
\CPU|DP|pipeB|ALT_INV_out\(10) <= NOT \CPU|DP|pipeB|out\(10);
\CPU|DP|pipeA|ALT_INV_out\(9) <= NOT \CPU|DP|pipeA|out\(9);
\CPU|DP|ALT_INV_Bin[7]~9_combout\ <= NOT \CPU|DP|Bin[7]~9_combout\;
\CPU|DP|pipeA|ALT_INV_out\(7) <= NOT \CPU|DP|pipeA|out\(7);
\CPU|DP|ALT_INV_Bin[6]~8_combout\ <= NOT \CPU|DP|Bin[6]~8_combout\;
\CPU|DP|pipeA|ALT_INV_out\(6) <= NOT \CPU|DP|pipeA|out\(6);
\CPU|DP|ALT_INV_Bin[5]~7_combout\ <= NOT \CPU|DP|Bin[5]~7_combout\;
\CPU|DP|pipeB|ALT_INV_out\(6) <= NOT \CPU|DP|pipeB|out\(6);
\CPU|DP|pipeA|ALT_INV_out\(5) <= NOT \CPU|DP|pipeA|out\(5);
\CPU|DP|ALT_INV_Bin[4]~6_combout\ <= NOT \CPU|DP|Bin[4]~6_combout\;
\CPU|DP|pipeB|ALT_INV_out\(5) <= NOT \CPU|DP|pipeB|out\(5);
\CPU|DP|pipeA|ALT_INV_out\(4) <= NOT \CPU|DP|pipeA|out\(4);
\CPU|DP|ALT_INV_Bin[3]~5_combout\ <= NOT \CPU|DP|Bin[3]~5_combout\;
\CPU|DP|pipeB|ALT_INV_out\(4) <= NOT \CPU|DP|pipeB|out\(4);
\CPU|DP|pipeA|ALT_INV_out\(3) <= NOT \CPU|DP|pipeA|out\(3);
\CPU|DP|ALT_INV_Bin[2]~4_combout\ <= NOT \CPU|DP|Bin[2]~4_combout\;
\CPU|DP|pipeB|ALT_INV_out\(3) <= NOT \CPU|DP|pipeB|out\(3);
\CPU|instreg|ALT_INV_out\(2) <= NOT \CPU|instreg|out\(2);
\CPU|DP|pipeA|ALT_INV_out\(2) <= NOT \CPU|DP|pipeA|out\(2);
\CPU|DP|ALT_INV_Bin[1]~3_combout\ <= NOT \CPU|DP|Bin[1]~3_combout\;
\CPU|DP|pipeB|ALT_INV_out\(2) <= NOT \CPU|DP|pipeB|out\(2);
\CPU|instreg|ALT_INV_out\(1) <= NOT \CPU|instreg|out\(1);
\CPU|DP|pipeA|ALT_INV_out\(1) <= NOT \CPU|DP|pipeA|out\(1);
\CPU|DP|pipeB|ALT_INV_out\(0) <= NOT \CPU|DP|pipeB|out\(0);
\CPU|DP|pipeB|ALT_INV_out\(1) <= NOT \CPU|DP|pipeB|out\(1);
\CPU|instreg|ALT_INV_out\(0) <= NOT \CPU|instreg|out\(0);
\CPU|state|ALT_INV_bsel~2_combout\ <= NOT \CPU|state|bsel~2_combout\;
\CPU|DP|pipeA|ALT_INV_out\(0) <= NOT \CPU|DP|pipeA|out\(0);
\ALT_INV_switch~3_combout\ <= NOT \switch~3_combout\;
\CPU|state|ALT_INV_WideOr19~0_combout\ <= NOT \CPU|state|WideOr19~0_combout\;
\CPU|state|ALT_INV_WideOr0~2_combout\ <= NOT \CPU|state|WideOr0~2_combout\;
\CPU|state|ALT_INV_WideOr0~1_combout\ <= NOT \CPU|state|WideOr0~1_combout\;
\CPU|state|ALT_INV_WideOr0~0_combout\ <= NOT \CPU|state|WideOr0~0_combout\;
\CPU|state|ALT_INV_resetstate[2]~5_combout\ <= NOT \CPU|state|resetstate[2]~5_combout\;
\CPU|state|ALT_INV_resetstate[2]~4_combout\ <= NOT \CPU|state|resetstate[2]~4_combout\;
\CPU|state|ALT_INV_WideOr1~4_combout\ <= NOT \CPU|state|WideOr1~4_combout\;
\CPU|state|ALT_INV_WideOr7~0_combout\ <= NOT \CPU|state|WideOr7~0_combout\;
\CPU|state|ALT_INV_resetstate[2]~3_combout\ <= NOT \CPU|state|resetstate[2]~3_combout\;
\CPU|state|ALT_INV_WideOr1~3_combout\ <= NOT \CPU|state|WideOr1~3_combout\;
\CPU|state|ALT_INV_WideOr1~2_combout\ <= NOT \CPU|state|WideOr1~2_combout\;
\CPU|state|ALT_INV_WideOr1~1_combout\ <= NOT \CPU|state|WideOr1~1_combout\;
\CPU|state|ALT_INV_WideOr1~0_combout\ <= NOT \CPU|state|WideOr1~0_combout\;
\CPU|state|ALT_INV_resetstate[0]~0_combout\ <= NOT \CPU|state|resetstate[0]~0_combout\;
\CPU|state|ALT_INV_WideOr3~4_combout\ <= NOT \CPU|state|WideOr3~4_combout\;
\CPU|state|ALT_INV_WideOr2~0_combout\ <= NOT \CPU|state|WideOr2~0_combout\;
\CPU|state|ALT_INV_WideOr3~3_combout\ <= NOT \CPU|state|WideOr3~3_combout\;
\CPU|state|ALT_INV_WideOr3~2_combout\ <= NOT \CPU|state|WideOr3~2_combout\;
\CPU|state|ALT_INV_WideOr3~1_combout\ <= NOT \CPU|state|WideOr3~1_combout\;
\CPU|state|ALT_INV_WideOr3~0_combout\ <= NOT \CPU|state|WideOr3~0_combout\;
\CPU|state|ALT_INV_WideOr12~3_combout\ <= NOT \CPU|state|WideOr12~3_combout\;
\CPU|state|ALT_INV_WideOr12~2_combout\ <= NOT \CPU|state|WideOr12~2_combout\;
\CPU|state|ALT_INV_WideOr12~1_combout\ <= NOT \CPU|state|WideOr12~1_combout\;
\CPU|state|ALT_INV_WideOr12~0_combout\ <= NOT \CPU|state|WideOr12~0_combout\;
\CPU|DP|logic|ALT_INV_Mux0~0_combout\ <= NOT \CPU|DP|logic|Mux0~0_combout\;
\CPU|state|ALT_INV_WideOr11~1_combout\ <= NOT \CPU|state|WideOr11~1_combout\;
\CPU|state|ALT_INV_WideOr11~0_combout\ <= NOT \CPU|state|WideOr11~0_combout\;
\CPU|DP|ALT_INV_Bin[8]~2_combout\ <= NOT \CPU|DP|Bin[8]~2_combout\;
\CPU|DP|ALT_INV_Bin[2]~1_combout\ <= NOT \CPU|DP|Bin[2]~1_combout\;
\CPU|DP|ALT_INV_Bin[2]~0_combout\ <= NOT \CPU|DP|Bin[2]~0_combout\;
\CPU|state|ALT_INV_bsel~1_combout\ <= NOT \CPU|state|bsel~1_combout\;
\CPU|state|ALT_INV_bsel~0_combout\ <= NOT \CPU|state|bsel~0_combout\;
\CPU|instreg|ALT_INV_out\(3) <= NOT \CPU|instreg|out\(3);
\CPU|ALT_INV_shiftavoid~combout\ <= NOT \CPU|shiftavoid~combout\;
\CPU|DP|pipeB|ALT_INV_out\(9) <= NOT \CPU|DP|pipeB|out\(9);
\CPU|DP|pipeB|ALT_INV_out\(7) <= NOT \CPU|DP|pipeB|out\(7);
\CPU|DP|pipeB|ALT_INV_out\(8) <= NOT \CPU|DP|pipeB|out\(8);
\CPU|instreg|ALT_INV_out\(4) <= NOT \CPU|instreg|out\(4);
\CPU|DP|pipeA|ALT_INV_out\(8) <= NOT \CPU|DP|pipeA|out\(8);
\ALT_INV_led~4_combout\ <= NOT \led~4_combout\;
\CPU|state|ALT_INV_Decoder0~2_combout\ <= NOT \CPU|state|Decoder0~2_combout\;
\CPU|state|ALT_INV_Decoder0~1_combout\ <= NOT \CPU|state|Decoder0~1_combout\;
\H5|ALT_INV_WideOr0~0_combout\ <= NOT \H5|WideOr0~0_combout\;
\ALT_INV_hout[15]~15_combout\ <= NOT \hout[15]~15_combout\;
\ALT_INV_hout[14]~14_combout\ <= NOT \hout[14]~14_combout\;
\ALT_INV_hout[13]~13_combout\ <= NOT \hout[13]~13_combout\;
\ALT_INV_hout[12]~12_combout\ <= NOT \hout[12]~12_combout\;
\H4|ALT_INV_WideOr0~0_combout\ <= NOT \H4|WideOr0~0_combout\;
\ALT_INV_hout[11]~11_combout\ <= NOT \hout[11]~11_combout\;
\ALT_INV_hout[10]~10_combout\ <= NOT \hout[10]~10_combout\;
\ALT_INV_hout[9]~9_combout\ <= NOT \hout[9]~9_combout\;
\ALT_INV_hout[8]~8_combout\ <= NOT \hout[8]~8_combout\;
\H3|ALT_INV_WideOr0~0_combout\ <= NOT \H3|WideOr0~0_combout\;
\ALT_INV_hout[7]~7_combout\ <= NOT \hout[7]~7_combout\;
\ALT_INV_hout[6]~6_combout\ <= NOT \hout[6]~6_combout\;
\ALT_INV_hout[5]~5_combout\ <= NOT \hout[5]~5_combout\;
\ALT_INV_hout[4]~4_combout\ <= NOT \hout[4]~4_combout\;
\H2|ALT_INV_WideOr0~0_combout\ <= NOT \H2|WideOr0~0_combout\;
\ALT_INV_hout[3]~3_combout\ <= NOT \hout[3]~3_combout\;
\ALT_INV_hout[2]~2_combout\ <= NOT \hout[2]~2_combout\;
\ALT_INV_hout[1]~1_combout\ <= NOT \hout[1]~1_combout\;
\ALT_INV_hout[0]~0_combout\ <= NOT \hout[0]~0_combout\;
\H1|ALT_INV_WideOr0~0_combout\ <= NOT \H1|WideOr0~0_combout\;
\CPU|ALT_INV_mem_addr[7]~7_combout\ <= NOT \CPU|mem_addr[7]~7_combout\;
\CPU|ALT_INV_mem_addr[5]~6_combout\ <= NOT \CPU|mem_addr[5]~6_combout\;
\CPU|ALT_INV_mem_addr[4]~5_combout\ <= NOT \CPU|mem_addr[4]~5_combout\;
\H0|ALT_INV_WideOr0~0_combout\ <= NOT \H0|WideOr0~0_combout\;
\CPU|ALT_INV_mem_addr[3]~4_combout\ <= NOT \CPU|mem_addr[3]~4_combout\;
\CPU|ALT_INV_mem_addr[2]~3_combout\ <= NOT \CPU|mem_addr[2]~3_combout\;
\CPU|ALT_INV_mem_addr[1]~2_combout\ <= NOT \CPU|mem_addr[1]~2_combout\;
\CPU|ALT_INV_mem_addr[0]~1_combout\ <= NOT \CPU|mem_addr[0]~1_combout\;
\ALT_INV_switch~2_combout\ <= NOT \switch~2_combout\;
\ALT_INV_led~3_combout\ <= NOT \led~3_combout\;
\CPU|addrout|ALT_INV_out\(8) <= NOT \CPU|addrout|out\(8);
\CPU|addrout|ALT_INV_out\(0) <= NOT \CPU|addrout|out\(0);
\ALT_INV_led~2_combout\ <= NOT \led~2_combout\;
\CPU|addrout|ALT_INV_out\(5) <= NOT \CPU|addrout|out\(5);
\CPU|addrout|ALT_INV_out\(7) <= NOT \CPU|addrout|out\(7);
\ALT_INV_led~1_combout\ <= NOT \led~1_combout\;
\CPU|addrout|ALT_INV_out\(2) <= NOT \CPU|addrout|out\(2);
\CPU|addrout|ALT_INV_out\(1) <= NOT \CPU|addrout|out\(1);
\ALT_INV_led~0_combout\ <= NOT \led~0_combout\;
\CPU|addrout|ALT_INV_out\(4) <= NOT \CPU|addrout|out\(4);
\CPU|addrout|ALT_INV_out\(3) <= NOT \CPU|addrout|out\(3);
\ALT_INV_switch~1_combout\ <= NOT \switch~1_combout\;
\ALT_INV_switch~0_combout\ <= NOT \switch~0_combout\;
\CPU|instreg|ALT_INV_out\(15) <= NOT \CPU|instreg|out\(15);
\CPU|instreg|ALT_INV_out\(13) <= NOT \CPU|instreg|out\(13);
\CPU|instreg|ALT_INV_out\(14) <= NOT \CPU|instreg|out\(14);
\CPU|state|ALT_INV_Decoder0~0_combout\ <= NOT \CPU|state|Decoder0~0_combout\;
\CPU|state|ALT_INV_WideOr17~0_combout\ <= NOT \CPU|state|WideOr17~0_combout\;
\CPU|instreg|ALT_INV_out\(12) <= NOT \CPU|instreg|out\(12);
\CPU|instreg|ALT_INV_out\(11) <= NOT \CPU|instreg|out\(11);
\CPU|ALT_INV_mem_addr[6]~0_combout\ <= NOT \CPU|mem_addr[6]~0_combout\;
\CPU|addrout|ALT_INV_out\(6) <= NOT \CPU|addrout|out\(6);
\CPU|state|ALT_INV_WideOr16~0_combout\ <= NOT \CPU|state|WideOr16~0_combout\;
\CPU|state|STATE|ALT_INV_next_out\(3) <= NOT \CPU|state|STATE|next_out\(3);
\CPU|state|STATE|ALT_INV_next_out\(2) <= NOT \CPU|state|STATE|next_out\(2);
\CPU|state|STATE|ALT_INV_next_out\(1) <= NOT \CPU|state|STATE|next_out\(1);
\CPU|state|STATE|ALT_INV_next_out\(0) <= NOT \CPU|state|STATE|next_out\(0);
\CPU|state|ALT_INV_resetstate[0]~12_combout\ <= NOT \CPU|state|resetstate[0]~12_combout\;
\CPU|state|ALT_INV_WideOr1~5_combout\ <= NOT \CPU|state|WideOr1~5_combout\;
\CPU|DP|ALT_INV_Bin[0]~17_combout\ <= NOT \CPU|DP|Bin[0]~17_combout\;
\CPU|state|ALT_INV_WideOr7~4_combout\ <= NOT \CPU|state|WideOr7~4_combout\;
\CPU|DP|multi|ALT_INV_b[7]~7_combout\ <= NOT \CPU|DP|multi|b[7]~7_combout\;
\CPU|state|ALT_INV_WideOr2~8_combout\ <= NOT \CPU|state|WideOr2~8_combout\;
\CPU|DP|logic|ALT_INV_Add0~57_sumout\ <= NOT \CPU|DP|logic|Add0~57_sumout\;
\CPU|DP|logic|ALT_INV_Add0~53_sumout\ <= NOT \CPU|DP|logic|Add0~53_sumout\;
\CPU|DP|logic|ALT_INV_Add0~49_sumout\ <= NOT \CPU|DP|logic|Add0~49_sumout\;
\CPU|DP|logic|ALT_INV_Add0~45_sumout\ <= NOT \CPU|DP|logic|Add0~45_sumout\;
\CPU|DP|logic|ALT_INV_Add0~41_sumout\ <= NOT \CPU|DP|logic|Add0~41_sumout\;
\CPU|DP|logic|ALT_INV_Add0~37_sumout\ <= NOT \CPU|DP|logic|Add0~37_sumout\;
\CPU|DP|logic|ALT_INV_Add0~33_sumout\ <= NOT \CPU|DP|logic|Add0~33_sumout\;
\CPU|DP|logic|ALT_INV_Add0~29_sumout\ <= NOT \CPU|DP|logic|Add0~29_sumout\;
\CPU|DP|logic|ALT_INV_Add0~25_sumout\ <= NOT \CPU|DP|logic|Add0~25_sumout\;
\CPU|DP|logic|ALT_INV_Add0~21_sumout\ <= NOT \CPU|DP|logic|Add0~21_sumout\;
\CPU|DP|logic|ALT_INV_Add0~17_sumout\ <= NOT \CPU|DP|logic|Add0~17_sumout\;
\CPU|DP|logic|ALT_INV_Add0~13_sumout\ <= NOT \CPU|DP|logic|Add0~13_sumout\;
\CPU|DP|logic|ALT_INV_Add0~9_sumout\ <= NOT \CPU|DP|logic|Add0~9_sumout\;
\CPU|DP|logic|ALT_INV_Add0~5_sumout\ <= NOT \CPU|DP|logic|Add0~5_sumout\;
\CPU|state|ALT_INV_WideOr2~1_combout\ <= NOT \CPU|state|WideOr2~1_combout\;
\CPU|DP|logic|ALT_INV_Add0~1_sumout\ <= NOT \CPU|DP|logic|Add0~1_sumout\;
\CPU|DP|pipeC|ALT_INV_out\(15) <= NOT \CPU|DP|pipeC|out\(15);
\CPU|DP|pipeC|ALT_INV_out\(14) <= NOT \CPU|DP|pipeC|out\(14);
\CPU|DP|pipeC|ALT_INV_out\(13) <= NOT \CPU|DP|pipeC|out\(13);
\CPU|DP|pipeC|ALT_INV_out\(12) <= NOT \CPU|DP|pipeC|out\(12);
\CPU|DP|pipeC|ALT_INV_out\(11) <= NOT \CPU|DP|pipeC|out\(11);
\CPU|DP|pipeC|ALT_INV_out\(10) <= NOT \CPU|DP|pipeC|out\(10);
\CPU|DP|pipeC|ALT_INV_out\(9) <= NOT \CPU|DP|pipeC|out\(9);
\CPU|DP|pipeC|ALT_INV_out\(7) <= NOT \CPU|DP|pipeC|out\(7);
\CPU|DP|pipeC|ALT_INV_out\(6) <= NOT \CPU|DP|pipeC|out\(6);
\CPU|DP|pipeC|ALT_INV_out\(5) <= NOT \CPU|DP|pipeC|out\(5);
\CPU|DP|pipeC|ALT_INV_out\(4) <= NOT \CPU|DP|pipeC|out\(4);
\CPU|DP|pipeC|ALT_INV_out\(3) <= NOT \CPU|DP|pipeC|out\(3);
\CPU|DP|pipeC|ALT_INV_out\(2) <= NOT \CPU|DP|pipeC|out\(2);
\CPU|DP|pipeC|ALT_INV_out\(1) <= NOT \CPU|DP|pipeC|out\(1);
\MEM|mem_rtl_0|auto_generated|ALT_INV_ram_block1a1\ <= NOT \MEM|mem_rtl_0|auto_generated|ram_block1a1\;
\MEM|mem_rtl_0|auto_generated|ALT_INV_ram_block1a2\ <= NOT \MEM|mem_rtl_0|auto_generated|ram_block1a2\;
\MEM|mem_rtl_0|auto_generated|ALT_INV_ram_block1a3\ <= NOT \MEM|mem_rtl_0|auto_generated|ram_block1a3\;
\MEM|mem_rtl_0|auto_generated|ALT_INV_ram_block1a4\ <= NOT \MEM|mem_rtl_0|auto_generated|ram_block1a4\;
\MEM|mem_rtl_0|auto_generated|ALT_INV_ram_block1a5\ <= NOT \MEM|mem_rtl_0|auto_generated|ram_block1a5\;
\MEM|mem_rtl_0|auto_generated|ALT_INV_ram_block1a6\ <= NOT \MEM|mem_rtl_0|auto_generated|ram_block1a6\;
\MEM|mem_rtl_0|auto_generated|ALT_INV_ram_block1a7\ <= NOT \MEM|mem_rtl_0|auto_generated|ram_block1a7\;
\MEM|mem_rtl_0|auto_generated|ALT_INV_ram_block1a8\ <= NOT \MEM|mem_rtl_0|auto_generated|ram_block1a8\;
\MEM|mem_rtl_0|auto_generated|ALT_INV_ram_block1a9\ <= NOT \MEM|mem_rtl_0|auto_generated|ram_block1a9\;
\MEM|mem_rtl_0|auto_generated|ALT_INV_ram_block1a10\ <= NOT \MEM|mem_rtl_0|auto_generated|ram_block1a10\;
\MEM|mem_rtl_0|auto_generated|ALT_INV_ram_block1a11\ <= NOT \MEM|mem_rtl_0|auto_generated|ram_block1a11\;
\MEM|mem_rtl_0|auto_generated|ALT_INV_ram_block1a12\ <= NOT \MEM|mem_rtl_0|auto_generated|ram_block1a12\;
\MEM|mem_rtl_0|auto_generated|ALT_INV_ram_block1a13\ <= NOT \MEM|mem_rtl_0|auto_generated|ram_block1a13\;
\MEM|mem_rtl_0|auto_generated|ALT_INV_ram_block1a14\ <= NOT \MEM|mem_rtl_0|auto_generated|ram_block1a14\;
\MEM|mem_rtl_0|auto_generated|ALT_INV_ram_block1a15\ <= NOT \MEM|mem_rtl_0|auto_generated|ram_block1a15\;
\MEM|mem_rtl_0|auto_generated|ALT_INV_ram_block1a0~portbdataout\ <= NOT \MEM|mem_rtl_0|auto_generated|ram_block1a0~portbdataout\;
\CPU|DP|pipeC|ALT_INV_out\(0) <= NOT \CPU|DP|pipeC|out\(0);
\CPU|Pc|ALT_INV_out\(8) <= NOT \CPU|Pc|out\(8);
\CPU|Pc|ALT_INV_out\(0) <= NOT \CPU|Pc|out\(0);
\CPU|Pc|ALT_INV_out\(5) <= NOT \CPU|Pc|out\(5);
\CPU|Pc|ALT_INV_out\(7) <= NOT \CPU|Pc|out\(7);
\CPU|Pc|ALT_INV_out\(2) <= NOT \CPU|Pc|out\(2);
\CPU|Pc|ALT_INV_out\(1) <= NOT \CPU|Pc|out\(1);
\CPU|Pc|ALT_INV_out\(4) <= NOT \CPU|Pc|out\(4);
\CPU|Pc|ALT_INV_out\(3) <= NOT \CPU|Pc|out\(3);
\CPU|Pc|ALT_INV_out\(6) <= NOT \CPU|Pc|out\(6);
\CPU|DP|pipeC|ALT_INV_out\(8) <= NOT \CPU|DP|pipeC|out\(8);

-- Location: IOOBUF_X52_Y0_N2
\LEDR[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ledout|out\(0),
	devoe => ww_devoe,
	o => ww_LEDR(0));

-- Location: IOOBUF_X52_Y0_N19
\LEDR[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ledout|out\(1),
	devoe => ww_devoe,
	o => ww_LEDR(1));

-- Location: IOOBUF_X60_Y0_N2
\LEDR[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ledout|out\(2),
	devoe => ww_devoe,
	o => ww_LEDR(2));

-- Location: IOOBUF_X80_Y0_N2
\LEDR[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ledout|out\(3),
	devoe => ww_devoe,
	o => ww_LEDR(3));

-- Location: IOOBUF_X60_Y0_N19
\LEDR[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ledout|out\(4),
	devoe => ww_devoe,
	o => ww_LEDR(4));

-- Location: IOOBUF_X80_Y0_N19
\LEDR[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ledout|out\(5),
	devoe => ww_devoe,
	o => ww_LEDR(5));

-- Location: IOOBUF_X84_Y0_N2
\LEDR[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ledout|out\(6),
	devoe => ww_devoe,
	o => ww_LEDR(6));

-- Location: IOOBUF_X89_Y6_N5
\LEDR[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ledout|out\(7),
	devoe => ww_devoe,
	o => ww_LEDR(7));

-- Location: IOOBUF_X89_Y8_N5
\LEDR[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|DP|pipeC|out\(8),
	devoe => ww_devoe,
	o => ww_LEDR(8));

-- Location: IOOBUF_X89_Y6_N22
\LEDR[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \switch~2_combout\,
	devoe => ww_devoe,
	o => ww_LEDR(9));

-- Location: IOOBUF_X89_Y8_N39
\HEX0[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \H0|WideOr6~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(0));

-- Location: IOOBUF_X89_Y11_N79
\HEX0[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \H0|WideOr5~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(1));

-- Location: IOOBUF_X89_Y11_N96
\HEX0[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \H0|WideOr4~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(2));

-- Location: IOOBUF_X89_Y4_N79
\HEX0[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \H0|WideOr3~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(3));

-- Location: IOOBUF_X89_Y13_N56
\HEX0[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \H0|WideOr2~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(4));

-- Location: IOOBUF_X89_Y13_N39
\HEX0[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \H0|WideOr1~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(5));

-- Location: IOOBUF_X89_Y4_N96
\HEX0[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \H0|ALT_INV_WideOr0~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(6));

-- Location: IOOBUF_X89_Y6_N39
\HEX1[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \H1|WideOr6~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(0));

-- Location: IOOBUF_X89_Y6_N56
\HEX1[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \H1|WideOr5~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(1));

-- Location: IOOBUF_X89_Y16_N39
\HEX1[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \H1|WideOr4~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(2));

-- Location: IOOBUF_X89_Y16_N56
\HEX1[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \H1|WideOr3~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(3));

-- Location: IOOBUF_X89_Y15_N39
\HEX1[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \H1|WideOr2~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(4));

-- Location: IOOBUF_X89_Y15_N56
\HEX1[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \H1|WideOr1~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(5));

-- Location: IOOBUF_X89_Y8_N56
\HEX1[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \H1|ALT_INV_WideOr0~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(6));

-- Location: IOOBUF_X89_Y9_N22
\HEX2[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \H2|WideOr6~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX2(0));

-- Location: IOOBUF_X89_Y23_N39
\HEX2[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \H2|WideOr5~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX2(1));

-- Location: IOOBUF_X89_Y23_N56
\HEX2[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \H2|WideOr4~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX2(2));

-- Location: IOOBUF_X89_Y20_N79
\HEX2[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \H2|WideOr3~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX2(3));

-- Location: IOOBUF_X89_Y25_N39
\HEX2[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \H2|WideOr2~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX2(4));

-- Location: IOOBUF_X89_Y20_N96
\HEX2[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \H2|WideOr1~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX2(5));

-- Location: IOOBUF_X89_Y25_N56
\HEX2[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \H2|ALT_INV_WideOr0~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX2(6));

-- Location: IOOBUF_X89_Y16_N5
\HEX3[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \H3|WideOr6~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX3(0));

-- Location: IOOBUF_X89_Y16_N22
\HEX3[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \H3|WideOr5~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX3(1));

-- Location: IOOBUF_X89_Y4_N45
\HEX3[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \H3|WideOr4~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX3(2));

-- Location: IOOBUF_X89_Y4_N62
\HEX3[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \H3|WideOr3~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX3(3));

-- Location: IOOBUF_X89_Y21_N39
\HEX3[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \H3|WideOr2~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX3(4));

-- Location: IOOBUF_X89_Y11_N62
\HEX3[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \H3|WideOr1~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX3(5));

-- Location: IOOBUF_X89_Y9_N5
\HEX3[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \H3|ALT_INV_WideOr0~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX3(6));

-- Location: IOOBUF_X89_Y11_N45
\HEX4[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \H4|WideOr6~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX4(0));

-- Location: IOOBUF_X89_Y13_N5
\HEX4[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \H4|WideOr5~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX4(1));

-- Location: IOOBUF_X89_Y13_N22
\HEX4[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \H4|WideOr4~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX4(2));

-- Location: IOOBUF_X89_Y8_N22
\HEX4[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \H4|WideOr3~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX4(3));

-- Location: IOOBUF_X89_Y15_N22
\HEX4[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \H4|WideOr2~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX4(4));

-- Location: IOOBUF_X89_Y15_N5
\HEX4[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \H4|WideOr1~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX4(5));

-- Location: IOOBUF_X89_Y20_N45
\HEX4[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \H4|ALT_INV_WideOr0~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX4(6));

-- Location: IOOBUF_X89_Y20_N62
\HEX5[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \H5|WideOr6~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX5(0));

-- Location: IOOBUF_X89_Y21_N56
\HEX5[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \H5|WideOr5~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX5(1));

-- Location: IOOBUF_X89_Y25_N22
\HEX5[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \H5|WideOr4~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX5(2));

-- Location: IOOBUF_X89_Y23_N22
\HEX5[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \H5|WideOr3~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX5(3));

-- Location: IOOBUF_X89_Y9_N56
\HEX5[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \H5|WideOr2~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX5(4));

-- Location: IOOBUF_X89_Y23_N5
\HEX5[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \H5|WideOr1~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX5(5));

-- Location: IOOBUF_X89_Y9_N39
\HEX5[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \H5|ALT_INV_WideOr0~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX5(6));

-- Location: IOIBUF_X36_Y0_N1
\KEY[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(0),
	o => \KEY[0]~input_o\);

-- Location: CLKCTRL_G6
\KEY[0]~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \KEY[0]~input_o\,
	outclk => \KEY[0]~inputCLKENA0_outclk\);

-- Location: IOIBUF_X36_Y0_N18
\KEY[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(1),
	o => \KEY[1]~input_o\);

-- Location: MLABCELL_X87_Y9_N30
\CPU|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|Add0~29_sumout\ = SUM(( \CPU|Pc|out\(0) ) + ( VCC ) + ( !VCC ))
-- \CPU|Add0~30\ = CARRY(( \CPU|Pc|out\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|Pc|ALT_INV_out\(0),
	cin => GND,
	sumout => \CPU|Add0~29_sumout\,
	cout => \CPU|Add0~30\);

-- Location: MLABCELL_X87_Y9_N27
\CPU|state|WideOr15~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|state|WideOr15~0_combout\ = ( !\CPU|state|STATE|next_out\(2) & ( (!\CPU|state|STATE|next_out\(1) & (!\CPU|state|STATE|next_out\(3) & !\CPU|state|STATE|next_out\(0))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000000000110000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|state|STATE|ALT_INV_next_out\(1),
	datac => \CPU|state|STATE|ALT_INV_next_out\(3),
	datad => \CPU|state|STATE|ALT_INV_next_out\(0),
	dataf => \CPU|state|STATE|ALT_INV_next_out\(2),
	combout => \CPU|state|WideOr15~0_combout\);

-- Location: MLABCELL_X87_Y9_N18
\CPU|state|WideOr14~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|state|WideOr14~0_combout\ = ( \CPU|state|STATE|next_out\(1) & ( (!\CPU|state|STATE|next_out\(2) & (!\CPU|state|STATE|next_out\(3) & \CPU|state|STATE|next_out\(0))) ) ) # ( !\CPU|state|STATE|next_out\(1) & ( (!\CPU|state|STATE|next_out\(2) & 
-- (!\CPU|state|STATE|next_out\(3) & !\CPU|state|STATE|next_out\(0))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100000000000100010000000000000000000100010000000000010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|state|STATE|ALT_INV_next_out\(2),
	datab => \CPU|state|STATE|ALT_INV_next_out\(3),
	datad => \CPU|state|STATE|ALT_INV_next_out\(0),
	dataf => \CPU|state|STATE|ALT_INV_next_out\(1),
	combout => \CPU|state|WideOr14~0_combout\);

-- Location: FF_X87_Y9_N31
\CPU|Pc|out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|Add0~29_sumout\,
	sclr => \CPU|state|WideOr15~0_combout\,
	ena => \CPU|state|WideOr14~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|Pc|out\(0));

-- Location: MLABCELL_X87_Y9_N33
\CPU|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|Add0~13_sumout\ = SUM(( \CPU|Pc|out\(1) ) + ( GND ) + ( \CPU|Add0~30\ ))
-- \CPU|Add0~14\ = CARRY(( \CPU|Pc|out\(1) ) + ( GND ) + ( \CPU|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|Pc|ALT_INV_out\(1),
	cin => \CPU|Add0~30\,
	sumout => \CPU|Add0~13_sumout\,
	cout => \CPU|Add0~14\);

-- Location: FF_X87_Y9_N35
\CPU|Pc|out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|Add0~13_sumout\,
	sclr => \CPU|state|WideOr15~0_combout\,
	ena => \CPU|state|WideOr14~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|Pc|out\(1));

-- Location: MLABCELL_X87_Y9_N36
\CPU|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|Add0~17_sumout\ = SUM(( \CPU|Pc|out\(2) ) + ( GND ) + ( \CPU|Add0~14\ ))
-- \CPU|Add0~18\ = CARRY(( \CPU|Pc|out\(2) ) + ( GND ) + ( \CPU|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|Pc|ALT_INV_out\(2),
	cin => \CPU|Add0~14\,
	sumout => \CPU|Add0~17_sumout\,
	cout => \CPU|Add0~18\);

-- Location: FF_X87_Y9_N38
\CPU|Pc|out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|Add0~17_sumout\,
	sclr => \CPU|state|WideOr15~0_combout\,
	ena => \CPU|state|WideOr14~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|Pc|out\(2));

-- Location: MLABCELL_X87_Y9_N39
\CPU|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|Add0~5_sumout\ = SUM(( \CPU|Pc|out\(3) ) + ( GND ) + ( \CPU|Add0~18\ ))
-- \CPU|Add0~6\ = CARRY(( \CPU|Pc|out\(3) ) + ( GND ) + ( \CPU|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|Pc|ALT_INV_out\(3),
	cin => \CPU|Add0~18\,
	sumout => \CPU|Add0~5_sumout\,
	cout => \CPU|Add0~6\);

-- Location: FF_X87_Y9_N40
\CPU|Pc|out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|Add0~5_sumout\,
	sclr => \CPU|state|WideOr15~0_combout\,
	ena => \CPU|state|WideOr14~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|Pc|out\(3));

-- Location: MLABCELL_X87_Y9_N42
\CPU|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|Add0~9_sumout\ = SUM(( \CPU|Pc|out\(4) ) + ( GND ) + ( \CPU|Add0~6\ ))
-- \CPU|Add0~10\ = CARRY(( \CPU|Pc|out\(4) ) + ( GND ) + ( \CPU|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|Pc|ALT_INV_out\(4),
	cin => \CPU|Add0~6\,
	sumout => \CPU|Add0~9_sumout\,
	cout => \CPU|Add0~10\);

-- Location: FF_X87_Y9_N43
\CPU|Pc|out[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|Add0~9_sumout\,
	sclr => \CPU|state|WideOr15~0_combout\,
	ena => \CPU|state|WideOr14~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|Pc|out\(4));

-- Location: MLABCELL_X87_Y9_N45
\CPU|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|Add0~25_sumout\ = SUM(( \CPU|Pc|out\(5) ) + ( GND ) + ( \CPU|Add0~10\ ))
-- \CPU|Add0~26\ = CARRY(( \CPU|Pc|out\(5) ) + ( GND ) + ( \CPU|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|Pc|ALT_INV_out\(5),
	cin => \CPU|Add0~10\,
	sumout => \CPU|Add0~25_sumout\,
	cout => \CPU|Add0~26\);

-- Location: FF_X87_Y9_N46
\CPU|Pc|out[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|Add0~25_sumout\,
	sclr => \CPU|state|WideOr15~0_combout\,
	ena => \CPU|state|WideOr14~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|Pc|out\(5));

-- Location: IOIBUF_X2_Y0_N41
\SW[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(4),
	o => \SW[4]~input_o\);

-- Location: FF_X85_Y7_N14
\CPU|addrout|out[6]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|DP|pipeC|out\(6),
	sload => VCC,
	ena => \CPU|state|WideOr19~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|addrout|out[6]~DUPLICATE_q\);

-- Location: MLABCELL_X84_Y7_N33
\CPU|state|WideOr16~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|state|WideOr16~0_combout\ = ( \CPU|state|STATE|next_out\(0) & ( (!\CPU|state|STATE|next_out\(1) & (!\CPU|state|STATE|next_out\(2) & !\CPU|state|STATE|next_out\(3))) ) ) # ( !\CPU|state|STATE|next_out\(0) & ( (\CPU|state|STATE|next_out\(1) & 
-- (!\CPU|state|STATE|next_out\(2) & !\CPU|state|STATE|next_out\(3))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000000000000010100000000000010100000000000001010000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|state|STATE|ALT_INV_next_out\(1),
	datac => \CPU|state|STATE|ALT_INV_next_out\(2),
	datad => \CPU|state|STATE|ALT_INV_next_out\(3),
	dataf => \CPU|state|STATE|ALT_INV_next_out\(0),
	combout => \CPU|state|WideOr16~0_combout\);

-- Location: MLABCELL_X87_Y9_N48
\CPU|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|Add0~1_sumout\ = SUM(( \CPU|Pc|out\(6) ) + ( GND ) + ( \CPU|Add0~26\ ))
-- \CPU|Add0~2\ = CARRY(( \CPU|Pc|out\(6) ) + ( GND ) + ( \CPU|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|Pc|ALT_INV_out\(6),
	cin => \CPU|Add0~26\,
	sumout => \CPU|Add0~1_sumout\,
	cout => \CPU|Add0~2\);

-- Location: FF_X87_Y9_N49
\CPU|Pc|out[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|Add0~1_sumout\,
	sclr => \CPU|state|WideOr15~0_combout\,
	ena => \CPU|state|WideOr14~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|Pc|out\(6));

-- Location: LABCELL_X85_Y7_N33
\CPU|mem_addr[6]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|mem_addr[6]~0_combout\ = ( \CPU|Pc|out\(6) & ( (\CPU|state|WideOr16~0_combout\) # (\CPU|addrout|out[6]~DUPLICATE_q\) ) ) # ( !\CPU|Pc|out\(6) & ( (\CPU|addrout|out[6]~DUPLICATE_q\ & !\CPU|state|WideOr16~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU|addrout|ALT_INV_out[6]~DUPLICATE_q\,
	datad => \CPU|state|ALT_INV_WideOr16~0_combout\,
	dataf => \CPU|Pc|ALT_INV_out\(6),
	combout => \CPU|mem_addr[6]~0_combout\);

-- Location: MLABCELL_X84_Y9_N33
\CPU|state|Decoder0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|state|Decoder0~0_combout\ = ( !\CPU|instreg|out[11]~DUPLICATE_q\ & ( !\CPU|instreg|out\(12) & ( \CPU|state|STATE|next_out\(0) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|state|STATE|ALT_INV_next_out\(0),
	datae => \CPU|instreg|ALT_INV_out[11]~DUPLICATE_q\,
	dataf => \CPU|instreg|ALT_INV_out\(12),
	combout => \CPU|state|Decoder0~0_combout\);

-- Location: MLABCELL_X84_Y9_N39
\CPU|state|WideOr17~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|state|WideOr17~0_combout\ = ( !\CPU|instreg|out[11]~DUPLICATE_q\ & ( (!\CPU|instreg|out\(12) & (!\CPU|state|STATE|next_out\(1) $ (\CPU|state|STATE|next_out\(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000001100110000000000110000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|instreg|ALT_INV_out\(12),
	datac => \CPU|state|STATE|ALT_INV_next_out\(1),
	datad => \CPU|state|STATE|ALT_INV_next_out\(0),
	dataf => \CPU|instreg|ALT_INV_out[11]~DUPLICATE_q\,
	combout => \CPU|state|WideOr17~0_combout\);

-- Location: MLABCELL_X87_Y9_N24
\CPU|state|WideOr18~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|state|WideOr18~0_combout\ = ( !\CPU|state|STATE|next_out\(2) & ( (\CPU|state|STATE|next_out\(1) & (!\CPU|state|STATE|next_out\(0) & !\CPU|state|STATE|next_out\(3))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000000000001100000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|state|STATE|ALT_INV_next_out\(1),
	datac => \CPU|state|STATE|ALT_INV_next_out\(0),
	datad => \CPU|state|STATE|ALT_INV_next_out\(3),
	dataf => \CPU|state|STATE|ALT_INV_next_out\(2),
	combout => \CPU|state|WideOr18~0_combout\);

-- Location: FF_X83_Y7_N29
\CPU|instreg|out[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \read_data[14]~2_combout\,
	ena => \CPU|state|WideOr18~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|instreg|out\(14));

-- Location: FF_X84_Y7_N1
\CPU|instreg|out[13]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \read_data[13]~3_combout\,
	ena => \CPU|state|WideOr18~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|instreg|out[13]~DUPLICATE_q\);

-- Location: MLABCELL_X84_Y9_N51
\switch~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \switch~0_combout\ = ( !\CPU|instreg|out[15]~DUPLICATE_q\ & ( \CPU|state|STATE|next_out\(2) & ( (\CPU|instreg|out\(14) & \CPU|instreg|out[13]~DUPLICATE_q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000011110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU|instreg|ALT_INV_out\(14),
	datad => \CPU|instreg|ALT_INV_out[13]~DUPLICATE_q\,
	datae => \CPU|instreg|ALT_INV_out[15]~DUPLICATE_q\,
	dataf => \CPU|state|STATE|ALT_INV_next_out\(2),
	combout => \switch~0_combout\);

-- Location: MLABCELL_X84_Y9_N18
\switch~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \switch~1_combout\ = ( !\CPU|state|WideOr16~0_combout\ & ( \switch~0_combout\ & ( (!\CPU|state|STATE|next_out\(3) & ((!\CPU|state|Decoder0~0_combout\) # ((!\CPU|state|STATE|next_out\(1))))) # (\CPU|state|STATE|next_out\(3) & 
-- (((!\CPU|state|WideOr17~0_combout\)))) ) ) ) # ( !\CPU|state|WideOr16~0_combout\ & ( !\switch~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000011101111111000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|state|ALT_INV_Decoder0~0_combout\,
	datab => \CPU|state|STATE|ALT_INV_next_out\(1),
	datac => \CPU|state|STATE|ALT_INV_next_out\(3),
	datad => \CPU|state|ALT_INV_WideOr17~0_combout\,
	datae => \CPU|state|ALT_INV_WideOr16~0_combout\,
	dataf => \ALT_INV_switch~0_combout\,
	combout => \switch~1_combout\);

-- Location: LABCELL_X85_Y7_N24
\switch~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \switch~2_combout\ = ( !\switch~1_combout\ & ( \led~2_combout\ & ( (\CPU|mem_addr[6]~0_combout\ & (\led~3_combout\ & (\led~1_combout\ & \led~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000010000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|ALT_INV_mem_addr[6]~0_combout\,
	datab => \ALT_INV_led~3_combout\,
	datac => \ALT_INV_led~1_combout\,
	datad => \ALT_INV_led~0_combout\,
	datae => \ALT_INV_switch~1_combout\,
	dataf => \ALT_INV_led~2_combout\,
	combout => \switch~2_combout\);

-- Location: MLABCELL_X87_Y9_N51
\CPU|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|Add0~21_sumout\ = SUM(( \CPU|Pc|out\(7) ) + ( GND ) + ( \CPU|Add0~2\ ))
-- \CPU|Add0~22\ = CARRY(( \CPU|Pc|out\(7) ) + ( GND ) + ( \CPU|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|Pc|ALT_INV_out\(7),
	cin => \CPU|Add0~2\,
	sumout => \CPU|Add0~21_sumout\,
	cout => \CPU|Add0~22\);

-- Location: FF_X87_Y9_N52
\CPU|Pc|out[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|Add0~21_sumout\,
	sclr => \CPU|state|WideOr15~0_combout\,
	ena => \CPU|state|WideOr14~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|Pc|out\(7));

-- Location: MLABCELL_X87_Y9_N54
\CPU|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|Add0~33_sumout\ = SUM(( \CPU|Pc|out\(8) ) + ( GND ) + ( \CPU|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|Pc|ALT_INV_out\(8),
	cin => \CPU|Add0~22\,
	sumout => \CPU|Add0~33_sumout\);

-- Location: FF_X87_Y9_N55
\CPU|Pc|out[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|Add0~33_sumout\,
	sclr => \CPU|state|WideOr15~0_combout\,
	ena => \CPU|state|WideOr14~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|Pc|out\(8));

-- Location: MLABCELL_X82_Y9_N27
\CPU|state|Decoder0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|state|Decoder0~2_combout\ = ( !\CPU|instreg|out\(13) & ( \CPU|state|STATE|next_out\(3) & ( (\CPU|instreg|out[15]~DUPLICATE_q\ & (!\CPU|state|STATE|next_out\(2) & !\CPU|instreg|out\(14))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|instreg|ALT_INV_out[15]~DUPLICATE_q\,
	datac => \CPU|state|STATE|ALT_INV_next_out\(2),
	datad => \CPU|instreg|ALT_INV_out\(14),
	datae => \CPU|instreg|ALT_INV_out\(13),
	dataf => \CPU|state|STATE|ALT_INV_next_out\(3),
	combout => \CPU|state|Decoder0~2_combout\);

-- Location: IOIBUF_X4_Y0_N1
\SW[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(7),
	o => \SW[7]~input_o\);

-- Location: FF_X85_Y7_N4
\CPU|addrout|out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|DP|pipeC|out\(0),
	sload => VCC,
	ena => \CPU|state|WideOr19~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|addrout|out\(0));

-- Location: MLABCELL_X87_Y7_N12
\CPU|mem_addr[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|mem_addr[0]~1_combout\ = ( \CPU|state|WideOr16~0_combout\ & ( \CPU|Pc|out\(0) ) ) # ( !\CPU|state|WideOr16~0_combout\ & ( \CPU|Pc|out\(0) & ( \CPU|addrout|out\(0) ) ) ) # ( !\CPU|state|WideOr16~0_combout\ & ( !\CPU|Pc|out\(0) & ( \CPU|addrout|out\(0) 
-- ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000000000000000000001111000011111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU|addrout|ALT_INV_out\(0),
	datae => \CPU|state|ALT_INV_WideOr16~0_combout\,
	dataf => \CPU|Pc|ALT_INV_out\(0),
	combout => \CPU|mem_addr[0]~1_combout\);

-- Location: IOIBUF_X16_Y0_N1
\SW[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(1),
	o => \SW[1]~input_o\);

-- Location: LABCELL_X85_Y8_N57
\CPU|mem_addr[2]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|mem_addr[2]~3_combout\ = ( \CPU|addrout|out\(2) & ( (!\CPU|state|WideOr16~0_combout\) # (\CPU|Pc|out\(2)) ) ) # ( !\CPU|addrout|out\(2) & ( (\CPU|Pc|out\(2) & \CPU|state|WideOr16~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101111101011111010100000101000001011111010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|Pc|ALT_INV_out\(2),
	datac => \CPU|state|ALT_INV_WideOr16~0_combout\,
	datae => \CPU|addrout|ALT_INV_out\(2),
	combout => \CPU|mem_addr[2]~3_combout\);

-- Location: IOIBUF_X4_Y0_N52
\SW[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(3),
	o => \SW[3]~input_o\);

-- Location: MLABCELL_X84_Y10_N54
\CPU|state|Decoder0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|state|Decoder0~1_combout\ = ( !\CPU|instreg|out\(12) & ( \CPU|state|STATE|next_out\(1) & ( (\CPU|state|STATE|next_out\(0) & !\CPU|instreg|out[11]~DUPLICATE_q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU|state|STATE|ALT_INV_next_out\(0),
	datad => \CPU|instreg|ALT_INV_out[11]~DUPLICATE_q\,
	datae => \CPU|instreg|ALT_INV_out\(12),
	dataf => \CPU|state|STATE|ALT_INV_next_out\(1),
	combout => \CPU|state|Decoder0~1_combout\);

-- Location: MLABCELL_X84_Y10_N9
\CPU|state|WideOr13~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|state|WideOr13~0_combout\ = ( \CPU|instreg|out[11]~DUPLICATE_q\ & ( \CPU|state|STATE|next_out\(3) & ( \CPU|state|STATE|next_out\(1) ) ) ) # ( !\CPU|instreg|out[11]~DUPLICATE_q\ & ( \CPU|state|STATE|next_out\(3) & ( !\CPU|state|STATE|next_out\(1) ) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000111100000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU|state|STATE|ALT_INV_next_out\(1),
	datae => \CPU|instreg|ALT_INV_out[11]~DUPLICATE_q\,
	dataf => \CPU|state|STATE|ALT_INV_next_out\(3),
	combout => \CPU|state|WideOr13~0_combout\);

-- Location: MLABCELL_X84_Y10_N51
\CPU|state|WideOr4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|state|WideOr4~0_combout\ = ( !\CPU|instreg|out\(14) & ( \CPU|instreg|out[13]~DUPLICATE_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU|instreg|ALT_INV_out[13]~DUPLICATE_q\,
	dataf => \CPU|instreg|ALT_INV_out\(14),
	combout => \CPU|state|WideOr4~0_combout\);

-- Location: LABCELL_X83_Y8_N30
\CPU|state|WideOr3~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|state|WideOr3~4_combout\ = ( !\CPU|state|STATE|next_out\(2) & ( (\CPU|instreg|out\(12) & !\CPU|state|STATE|next_out\(0)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU|instreg|ALT_INV_out\(12),
	datad => \CPU|state|STATE|ALT_INV_next_out\(0),
	dataf => \CPU|state|STATE|ALT_INV_next_out\(2),
	combout => \CPU|state|WideOr3~4_combout\);

-- Location: MLABCELL_X84_Y10_N33
\CPU|state|WideOr4~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|state|WideOr4~1_combout\ = ( \CPU|instreg|out\(14) & ( (!\CPU|state|STATE|next_out\(2) & (!\CPU|instreg|out[13]~DUPLICATE_q\ & \CPU|state|STATE|next_out\(3))) ) ) # ( !\CPU|instreg|out\(14) & ( (\CPU|state|STATE|next_out\(2) & 
-- (\CPU|instreg|out[13]~DUPLICATE_q\ & !\CPU|state|STATE|next_out\(3))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000000000001010000000000000000101000000000000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|state|STATE|ALT_INV_next_out\(2),
	datac => \CPU|instreg|ALT_INV_out[13]~DUPLICATE_q\,
	datad => \CPU|state|STATE|ALT_INV_next_out\(3),
	dataf => \CPU|instreg|ALT_INV_out\(14),
	combout => \CPU|state|WideOr4~1_combout\);

-- Location: MLABCELL_X84_Y10_N24
\CPU|state|WideOr4~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|state|WideOr4~2_combout\ = ( \CPU|state|WideOr3~4_combout\ & ( \CPU|state|WideOr4~1_combout\ & ( (\CPU|instreg|out[15]~DUPLICATE_q\ & (((\CPU|state|WideOr13~0_combout\ & \CPU|state|WideOr4~0_combout\)) # (\CPU|state|Decoder0~1_combout\))) ) ) ) # ( 
-- !\CPU|state|WideOr3~4_combout\ & ( \CPU|state|WideOr4~1_combout\ & ( (\CPU|state|Decoder0~1_combout\ & \CPU|instreg|out[15]~DUPLICATE_q\) ) ) ) # ( \CPU|state|WideOr3~4_combout\ & ( !\CPU|state|WideOr4~1_combout\ & ( (\CPU|state|WideOr13~0_combout\ & 
-- (\CPU|state|WideOr4~0_combout\ & \CPU|instreg|out[15]~DUPLICATE_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000001100000000010101010000000001010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|state|ALT_INV_Decoder0~1_combout\,
	datab => \CPU|state|ALT_INV_WideOr13~0_combout\,
	datac => \CPU|state|ALT_INV_WideOr4~0_combout\,
	datad => \CPU|instreg|ALT_INV_out[15]~DUPLICATE_q\,
	datae => \CPU|state|ALT_INV_WideOr3~4_combout\,
	dataf => \CPU|state|ALT_INV_WideOr4~1_combout\,
	combout => \CPU|state|WideOr4~2_combout\);

-- Location: FF_X85_Y7_N7
\CPU|addrout|out[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|DP|pipeC|out\(4),
	sload => VCC,
	ena => \CPU|state|WideOr19~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|addrout|out\(4));

-- Location: LABCELL_X85_Y9_N30
\CPU|mem_addr[4]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|mem_addr[4]~5_combout\ = ( \CPU|state|WideOr16~0_combout\ & ( \CPU|addrout|out\(4) & ( \CPU|Pc|out\(4) ) ) ) # ( !\CPU|state|WideOr16~0_combout\ & ( \CPU|addrout|out\(4) ) ) # ( \CPU|state|WideOr16~0_combout\ & ( !\CPU|addrout|out\(4) & ( 
-- \CPU|Pc|out\(4) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111111111111111111110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU|Pc|ALT_INV_out\(4),
	datae => \CPU|state|ALT_INV_WideOr16~0_combout\,
	dataf => \CPU|addrout|ALT_INV_out\(4),
	combout => \CPU|mem_addr[4]~5_combout\);

-- Location: LABCELL_X85_Y9_N48
\CPU|mem_addr[5]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|mem_addr[5]~6_combout\ = ( \CPU|addrout|out\(5) & ( (!\CPU|state|WideOr16~0_combout\) # (\CPU|Pc|out\(5)) ) ) # ( !\CPU|addrout|out\(5) & ( (\CPU|state|WideOr16~0_combout\ & \CPU|Pc|out\(5)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011110011001111111100000000001100111100110011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|state|ALT_INV_WideOr16~0_combout\,
	datad => \CPU|Pc|ALT_INV_out\(5),
	datae => \CPU|addrout|ALT_INV_out\(5),
	combout => \CPU|mem_addr[5]~6_combout\);

-- Location: MLABCELL_X84_Y6_N30
\CPU|DP|multi|b[7]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|multi|b[7]~7_combout\ = ( !\switch~2_combout\ & ( ((!\CPU|state|WideOr5~2_combout\ & (((\CPU|DP|pipeC|out\(7) & \CPU|state|WideOr4~2_combout\)))) # (\CPU|state|WideOr5~2_combout\ & (((\CPU|DP|pipeC|out\(7) & \CPU|state|WideOr4~2_combout\)) # 
-- (\MEM|mem_rtl_0|auto_generated|ram_block1a7\)))) # (\CPU|DP|multi|comb~0_combout\) ) ) # ( \switch~2_combout\ & ( ((!\CPU|state|WideOr5~2_combout\ & (((\CPU|DP|pipeC|out\(7) & \CPU|state|WideOr4~2_combout\)))) # (\CPU|state|WideOr5~2_combout\ & 
-- (((\CPU|DP|pipeC|out\(7) & \CPU|state|WideOr4~2_combout\)) # (\SW[7]~input_o\)))) # (\CPU|DP|multi|comb~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0101011101010111010101110101011101010111111111110101011111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DP|multi|ALT_INV_comb~0_combout\,
	datab => \CPU|state|ALT_INV_WideOr5~2_combout\,
	datac => \ALT_INV_SW[7]~input_o\,
	datad => \CPU|DP|pipeC|ALT_INV_out\(7),
	datae => \ALT_INV_switch~2_combout\,
	dataf => \CPU|state|ALT_INV_WideOr4~2_combout\,
	datag => \MEM|mem_rtl_0|auto_generated|ALT_INV_ram_block1a7\,
	combout => \CPU|DP|multi|b[7]~7_combout\);

-- Location: LABCELL_X83_Y9_N36
\CPU|state|WideOr13~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|state|WideOr13~1_combout\ = ( !\CPU|state|STATE|next_out\(3) & ( \CPU|state|STATE|next_out\(2) & ( (\CPU|state|STATE|next_out\(0) & (!\CPU|instreg|out\(12) & (!\CPU|instreg|out[11]~DUPLICATE_q\ & \CPU|state|STATE|next_out\(1)))) ) ) ) # ( 
-- \CPU|state|STATE|next_out\(3) & ( !\CPU|state|STATE|next_out\(2) & ( (!\CPU|state|STATE|next_out\(0) & (\CPU|instreg|out\(12) & (!\CPU|instreg|out[11]~DUPLICATE_q\ $ (\CPU|state|STATE|next_out\(1))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001000000000001000000000010000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|state|STATE|ALT_INV_next_out\(0),
	datab => \CPU|instreg|ALT_INV_out\(12),
	datac => \CPU|instreg|ALT_INV_out[11]~DUPLICATE_q\,
	datad => \CPU|state|STATE|ALT_INV_next_out\(1),
	datae => \CPU|state|STATE|ALT_INV_next_out\(3),
	dataf => \CPU|state|STATE|ALT_INV_next_out\(2),
	combout => \CPU|state|WideOr13~1_combout\);

-- Location: FF_X83_Y7_N44
\CPU|instreg|out[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \read_data[15]~4_combout\,
	ena => \CPU|state|WideOr18~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|instreg|out\(15));

-- Location: LABCELL_X83_Y9_N15
\CPU|state|WideOr2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|state|WideOr2~0_combout\ = ( \CPU|instreg|out\(15) & ( (\CPU|instreg|out\(13) & !\CPU|instreg|out\(14)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000000000000111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU|instreg|ALT_INV_out\(13),
	datad => \CPU|instreg|ALT_INV_out\(14),
	dataf => \CPU|instreg|ALT_INV_out\(15),
	combout => \CPU|state|WideOr2~0_combout\);

-- Location: LABCELL_X83_Y9_N57
\CPU|state|WideOr13~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|state|WideOr13~2_combout\ = ( \CPU|state|STATE|next_out\(1) & ( (\CPU|state|STATE|next_out\(0) & (\CPU|state|STATE|next_out\(3) & !\CPU|instreg|out\(12))) ) ) # ( !\CPU|state|STATE|next_out\(1) & ( (!\CPU|state|STATE|next_out\(0) & 
-- (\CPU|state|STATE|next_out\(3) & !\CPU|instreg|out\(12))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000000000000010100000000000000101000000000000010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|state|STATE|ALT_INV_next_out\(0),
	datac => \CPU|state|STATE|ALT_INV_next_out\(3),
	datad => \CPU|instreg|ALT_INV_out\(12),
	dataf => \CPU|state|STATE|ALT_INV_next_out\(1),
	combout => \CPU|state|WideOr13~2_combout\);

-- Location: LABCELL_X83_Y9_N30
\CPU|state|WideOr13~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|state|WideOr13~3_combout\ = ( !\CPU|state|STATE|next_out\(1) & ( \CPU|state|STATE|next_out\(2) & ( (\CPU|instreg|out\(12) & (!\CPU|state|STATE|next_out\(0) & !\CPU|state|STATE|next_out\(3))) ) ) ) # ( \CPU|state|STATE|next_out\(1) & ( 
-- !\CPU|state|STATE|next_out\(2) & ( (!\CPU|instreg|out\(12) & (\CPU|state|STATE|next_out\(0) & \CPU|state|STATE|next_out\(3))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000110000110000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|instreg|ALT_INV_out\(12),
	datac => \CPU|state|STATE|ALT_INV_next_out\(0),
	datad => \CPU|state|STATE|ALT_INV_next_out\(3),
	datae => \CPU|state|STATE|ALT_INV_next_out\(1),
	dataf => \CPU|state|STATE|ALT_INV_next_out\(2),
	combout => \CPU|state|WideOr13~3_combout\);

-- Location: LABCELL_X83_Y9_N3
\CPU|state|WideOr13~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|state|WideOr13~4_combout\ = ( \CPU|state|WideOr13~3_combout\ & ( (!\CPU|instreg|out[15]~DUPLICATE_q\ & (\CPU|state|STATE|next_out\(2) & (\CPU|state|WideOr13~2_combout\ & \CPU|instreg|out[13]~DUPLICATE_q\))) # (\CPU|instreg|out[15]~DUPLICATE_q\ & 
-- (((!\CPU|instreg|out[13]~DUPLICATE_q\)))) ) ) # ( !\CPU|state|WideOr13~3_combout\ & ( (\CPU|state|STATE|next_out\(2) & (!\CPU|instreg|out[15]~DUPLICATE_q\ & (\CPU|state|WideOr13~2_combout\ & \CPU|instreg|out[13]~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000100000000000000010000110011000001000011001100000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|state|STATE|ALT_INV_next_out\(2),
	datab => \CPU|instreg|ALT_INV_out[15]~DUPLICATE_q\,
	datac => \CPU|state|ALT_INV_WideOr13~2_combout\,
	datad => \CPU|instreg|ALT_INV_out[13]~DUPLICATE_q\,
	dataf => \CPU|state|ALT_INV_WideOr13~3_combout\,
	combout => \CPU|state|WideOr13~4_combout\);

-- Location: LABCELL_X83_Y9_N24
\CPU|state|WideOr13~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|state|WideOr13~5_combout\ = ( \CPU|state|WideOr13~4_combout\ & ( \CPU|instreg|out\(14) & ( (!\CPU|instreg|out[11]~DUPLICATE_q\) # ((\CPU|state|WideOr13~1_combout\ & \CPU|state|WideOr2~0_combout\)) ) ) ) # ( !\CPU|state|WideOr13~4_combout\ & ( 
-- \CPU|instreg|out\(14) & ( (\CPU|state|WideOr13~1_combout\ & \CPU|state|WideOr2~0_combout\) ) ) ) # ( \CPU|state|WideOr13~4_combout\ & ( !\CPU|instreg|out\(14) & ( (\CPU|state|WideOr13~1_combout\ & \CPU|state|WideOr2~0_combout\) ) ) ) # ( 
-- !\CPU|state|WideOr13~4_combout\ & ( !\CPU|instreg|out\(14) & ( (\CPU|state|WideOr13~1_combout\ & \CPU|state|WideOr2~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100000000000011111010101010101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|instreg|ALT_INV_out[11]~DUPLICATE_q\,
	datac => \CPU|state|ALT_INV_WideOr13~1_combout\,
	datad => \CPU|state|ALT_INV_WideOr2~0_combout\,
	datae => \CPU|state|ALT_INV_WideOr13~4_combout\,
	dataf => \CPU|instreg|ALT_INV_out\(14),
	combout => \CPU|state|WideOr13~5_combout\);

-- Location: LABCELL_X85_Y7_N51
\CPU|state|WideOr7~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|state|WideOr7~2_combout\ = ( \CPU|state|STATE|next_out\(3) & ( (!\CPU|instreg|out[13]~DUPLICATE_q\ & ((!\CPU|state|STATE|next_out\(2) & (\CPU|instreg|out[14]~DUPLICATE_q\ & \CPU|state|STATE|next_out\(1))) # (\CPU|state|STATE|next_out\(2) & 
-- (!\CPU|instreg|out[14]~DUPLICATE_q\ & !\CPU|state|STATE|next_out\(1))))) ) ) # ( !\CPU|state|STATE|next_out\(3) & ( (\CPU|state|STATE|next_out\(2) & (\CPU|instreg|out[13]~DUPLICATE_q\ & (!\CPU|instreg|out[14]~DUPLICATE_q\ & 
-- \CPU|state|STATE|next_out\(1)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010000000000000001000001000000000010000100000000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|state|STATE|ALT_INV_next_out\(2),
	datab => \CPU|instreg|ALT_INV_out[13]~DUPLICATE_q\,
	datac => \CPU|instreg|ALT_INV_out[14]~DUPLICATE_q\,
	datad => \CPU|state|STATE|ALT_INV_next_out\(1),
	dataf => \CPU|state|STATE|ALT_INV_next_out\(3),
	combout => \CPU|state|WideOr7~2_combout\);

-- Location: MLABCELL_X84_Y7_N48
\CPU|state|WideOr7~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|state|WideOr7~3_combout\ = ( \CPU|state|Decoder0~0_combout\ & ( (\CPU|state|WideOr7~2_combout\ & \CPU|instreg|out[15]~DUPLICATE_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU|state|ALT_INV_WideOr7~2_combout\,
	datad => \CPU|instreg|ALT_INV_out[15]~DUPLICATE_q\,
	dataf => \CPU|state|ALT_INV_Decoder0~0_combout\,
	combout => \CPU|state|WideOr7~3_combout\);

-- Location: MLABCELL_X84_Y7_N30
\CPU|state|Decoder0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|state|Decoder0~3_combout\ = (\CPU|state|STATE|next_out\(2) & (!\CPU|state|STATE|next_out\(1) & !\CPU|state|STATE|next_out\(3)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000000000001100000000000000110000000000000011000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|state|STATE|ALT_INV_next_out\(2),
	datac => \CPU|state|STATE|ALT_INV_next_out\(1),
	datad => \CPU|state|STATE|ALT_INV_next_out\(3),
	combout => \CPU|state|Decoder0~3_combout\);

-- Location: FF_X83_Y7_N46
\CPU|instreg|out[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \read_data[11]~0_combout\,
	ena => \CPU|state|WideOr18~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|instreg|out\(11));

-- Location: MLABCELL_X84_Y7_N18
\CPU|state|WideOr8~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|state|WideOr8~0_combout\ = ( !\CPU|instreg|out[14]~DUPLICATE_q\ & ( \CPU|instreg|out\(12) & ( (\CPU|instreg|out\(13) & (\CPU|instreg|out[15]~DUPLICATE_q\ & (!\CPU|instreg|out\(11) $ (!\CPU|state|STATE|next_out\(0))))) ) ) ) # ( 
-- \CPU|instreg|out[14]~DUPLICATE_q\ & ( !\CPU|instreg|out\(12) & ( (!\CPU|instreg|out\(13) & (\CPU|instreg|out[15]~DUPLICATE_q\ & (!\CPU|instreg|out\(11) & !\CPU|state|STATE|next_out\(0)))) ) ) ) # ( !\CPU|instreg|out[14]~DUPLICATE_q\ & ( 
-- !\CPU|instreg|out\(12) & ( (\CPU|instreg|out\(13) & (\CPU|instreg|out[15]~DUPLICATE_q\ & \CPU|state|STATE|next_out\(0))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010001001000000000000000000001000100000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|instreg|ALT_INV_out\(13),
	datab => \CPU|instreg|ALT_INV_out[15]~DUPLICATE_q\,
	datac => \CPU|instreg|ALT_INV_out\(11),
	datad => \CPU|state|STATE|ALT_INV_next_out\(0),
	datae => \CPU|instreg|ALT_INV_out[14]~DUPLICATE_q\,
	dataf => \CPU|instreg|ALT_INV_out\(12),
	combout => \CPU|state|WideOr8~0_combout\);

-- Location: MLABCELL_X84_Y7_N42
\CPU|state|WideOr3~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|state|WideOr3~5_combout\ = ( \CPU|instreg|out\(12) & ( (!\CPU|instreg|out\(11) & (\CPU|instreg|out[15]~DUPLICATE_q\ & (!\CPU|instreg|out\(13) $ (!\CPU|instreg|out[14]~DUPLICATE_q\)))) ) ) # ( !\CPU|instreg|out\(12) & ( 
-- (!\CPU|instreg|out[15]~DUPLICATE_q\ & (!\CPU|instreg|out\(11) & (\CPU|instreg|out\(13) & \CPU|instreg|out[14]~DUPLICATE_q\))) # (\CPU|instreg|out[15]~DUPLICATE_q\ & (!\CPU|instreg|out[14]~DUPLICATE_q\ & ((!\CPU|instreg|out\(11)) # 
-- (\CPU|instreg|out\(13))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001100001000001000110000100000000010001000000000001000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|instreg|ALT_INV_out\(11),
	datab => \CPU|instreg|ALT_INV_out[15]~DUPLICATE_q\,
	datac => \CPU|instreg|ALT_INV_out\(13),
	datad => \CPU|instreg|ALT_INV_out[14]~DUPLICATE_q\,
	dataf => \CPU|instreg|ALT_INV_out\(12),
	combout => \CPU|state|WideOr3~5_combout\);

-- Location: MLABCELL_X82_Y10_N51
\CPU|state|WideOr10~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|state|WideOr10~0_combout\ = ( !\CPU|instreg|out[13]~DUPLICATE_q\ & ( (!\CPU|instreg|out[11]~DUPLICATE_q\ & !\CPU|instreg|out\(12)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101000000000101010100000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|instreg|ALT_INV_out[11]~DUPLICATE_q\,
	datad => \CPU|instreg|ALT_INV_out\(12),
	dataf => \CPU|instreg|ALT_INV_out[13]~DUPLICATE_q\,
	combout => \CPU|state|WideOr10~0_combout\);

-- Location: MLABCELL_X82_Y10_N42
\CPU|state|WideOr10~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|state|WideOr10~2_combout\ = ( !\CPU|state|STATE|next_out\(1) & ( \CPU|instreg|out[15]~DUPLICATE_q\ & ( \CPU|state|STATE|next_out\(2) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU|state|STATE|ALT_INV_next_out\(2),
	datae => \CPU|state|STATE|ALT_INV_next_out\(1),
	dataf => \CPU|instreg|ALT_INV_out[15]~DUPLICATE_q\,
	combout => \CPU|state|WideOr10~2_combout\);

-- Location: MLABCELL_X82_Y10_N48
\CPU|state|WideOr10~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|state|WideOr10~1_combout\ = ( \CPU|instreg|out[13]~DUPLICATE_q\ & ( !\CPU|state|STATE|next_out\(0) $ (((!\CPU|instreg|out[11]~DUPLICATE_q\) # (!\CPU|instreg|out\(12)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000101111110100000010111111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|instreg|ALT_INV_out[11]~DUPLICATE_q\,
	datac => \CPU|instreg|ALT_INV_out\(12),
	datad => \CPU|state|STATE|ALT_INV_next_out\(0),
	dataf => \CPU|instreg|ALT_INV_out[13]~DUPLICATE_q\,
	combout => \CPU|state|WideOr10~1_combout\);

-- Location: MLABCELL_X82_Y10_N0
\CPU|state|WideOr10~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|state|WideOr10~3_combout\ = ( \CPU|state|STATE|next_out\(3) & ( \CPU|state|WideOr10~1_combout\ & ( (\CPU|state|WideOr10~0_combout\ & (\CPU|state|WideOr10~2_combout\ & (!\CPU|instreg|out\(14) & \CPU|state|STATE|next_out\(0)))) ) ) ) # ( 
-- !\CPU|state|STATE|next_out\(3) & ( \CPU|state|WideOr10~1_combout\ & ( (\CPU|state|WideOr10~2_combout\ & ((!\CPU|instreg|out\(14)) # ((\CPU|state|WideOr10~0_combout\ & !\CPU|state|STATE|next_out\(0))))) ) ) ) # ( \CPU|state|STATE|next_out\(3) & ( 
-- !\CPU|state|WideOr10~1_combout\ & ( (\CPU|state|WideOr10~0_combout\ & (\CPU|state|WideOr10~2_combout\ & (!\CPU|instreg|out\(14) & \CPU|state|STATE|next_out\(0)))) ) ) ) # ( !\CPU|state|STATE|next_out\(3) & ( !\CPU|state|WideOr10~1_combout\ & ( 
-- (\CPU|state|WideOr10~0_combout\ & (\CPU|state|WideOr10~2_combout\ & (\CPU|instreg|out\(14) & !\CPU|state|STATE|next_out\(0)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000000000000000001000000110001001100000000000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|state|ALT_INV_WideOr10~0_combout\,
	datab => \CPU|state|ALT_INV_WideOr10~2_combout\,
	datac => \CPU|instreg|ALT_INV_out\(14),
	datad => \CPU|state|STATE|ALT_INV_next_out\(0),
	datae => \CPU|state|STATE|ALT_INV_next_out\(3),
	dataf => \CPU|state|ALT_INV_WideOr10~1_combout\,
	combout => \CPU|state|WideOr10~3_combout\);

-- Location: FF_X83_Y8_N2
\CPU|DP|pipeB|out[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|DP|REGFILE|MuxR|out\(13),
	sload => VCC,
	ena => \CPU|state|WideOr10~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|pipeB|out\(13));

-- Location: LABCELL_X83_Y7_N18
\CPU|state|bsel~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|state|bsel~0_combout\ = (!\CPU|instreg|out[11]~DUPLICATE_q\ & ((!\CPU|instreg|out\(13) & (\CPU|instreg|out\(15) & !\CPU|instreg|out\(14))) # (\CPU|instreg|out\(13) & (!\CPU|instreg|out\(15) & \CPU|instreg|out\(14)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010010000000000001001000000000000100100000000000010010000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|instreg|ALT_INV_out\(13),
	datab => \CPU|instreg|ALT_INV_out\(15),
	datac => \CPU|instreg|ALT_INV_out\(14),
	datad => \CPU|instreg|ALT_INV_out[11]~DUPLICATE_q\,
	combout => \CPU|state|bsel~0_combout\);

-- Location: LABCELL_X83_Y7_N21
\CPU|shiftavoid\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|shiftavoid~combout\ = ( \CPU|instreg|out\(12) & ( \CPU|instreg|out[11]~DUPLICATE_q\ ) ) # ( !\CPU|instreg|out\(12) & ( ((!\CPU|instreg|out\(13) & (\CPU|instreg|out\(15) & !\CPU|instreg|out\(14)))) # (\CPU|instreg|out[11]~DUPLICATE_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010111100001111001011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|instreg|ALT_INV_out\(13),
	datab => \CPU|instreg|ALT_INV_out\(15),
	datac => \CPU|instreg|ALT_INV_out[11]~DUPLICATE_q\,
	datad => \CPU|instreg|ALT_INV_out\(14),
	dataf => \CPU|instreg|ALT_INV_out\(12),
	combout => \CPU|shiftavoid~combout\);

-- Location: LABCELL_X83_Y7_N51
\CPU|state|bsel~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|state|bsel~1_combout\ = ( \CPU|state|STATE|next_out\(2) & ( (!\CPU|instreg|out\(12) & (!\CPU|state|STATE|next_out\(3) & (!\CPU|state|STATE|next_out\(1) & \CPU|state|STATE|next_out\(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000100000000000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|instreg|ALT_INV_out\(12),
	datab => \CPU|state|STATE|ALT_INV_next_out\(3),
	datac => \CPU|state|STATE|ALT_INV_next_out\(1),
	datad => \CPU|state|STATE|ALT_INV_next_out\(0),
	dataf => \CPU|state|STATE|ALT_INV_next_out\(2),
	combout => \CPU|state|bsel~1_combout\);

-- Location: LABCELL_X83_Y7_N54
\CPU|DP|Bin[2]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|Bin[2]~1_combout\ = ( \CPU|state|bsel~1_combout\ & ( (!\CPU|state|bsel~0_combout\ & (!\CPU|shiftavoid~combout\ & ((\CPU|instreg|out\(4)) # (\CPU|instreg|out\(3))))) ) ) # ( !\CPU|state|bsel~1_combout\ & ( (!\CPU|shiftavoid~combout\ & 
-- ((\CPU|instreg|out\(4)) # (\CPU|instreg|out\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011111100000000001111110000000000101010000000000010101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|state|ALT_INV_bsel~0_combout\,
	datab => \CPU|instreg|ALT_INV_out\(3),
	datac => \CPU|instreg|ALT_INV_out\(4),
	datad => \CPU|ALT_INV_shiftavoid~combout\,
	dataf => \CPU|state|ALT_INV_bsel~1_combout\,
	combout => \CPU|DP|Bin[2]~1_combout\);

-- Location: M10K_X76_Y10_N0
\MEM|mem_rtl_0|auto_generated|ram_block1a0\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init4 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init3 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => "000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001000000000140000000E00000000081600000006120000000D109000000C06A00000060400000006000000000D008",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/lab7_top.ram0_RAM_15119.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "RAM:MEM|altsyncram:mem_rtl_0|altsyncram_65r1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 8,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 40,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 255,
	port_a_logical_ram_depth => 256,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 8,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 40,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 255,
	port_b_logical_ram_depth => 256,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_no_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \write~combout\,
	portbre => VCC,
	clk0 => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	portadatain => \MEM|mem_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \MEM|mem_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\,
	portbaddr => \MEM|mem_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \MEM|mem_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\);

-- Location: LABCELL_X85_Y6_N33
\CPU|DP|multi|b[15]\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|multi|b\(15) = ( \CPU|DP|pipeC|out\(15) & ( \MEM|mem_rtl_0|auto_generated|ram_block1a15\ & ( (((!\switch~2_combout\ & \CPU|state|WideOr5~2_combout\)) # (\CPU|DP|multi|comb~0_combout\)) # (\CPU|state|WideOr4~2_combout\) ) ) ) # ( 
-- !\CPU|DP|pipeC|out\(15) & ( \MEM|mem_rtl_0|auto_generated|ram_block1a15\ & ( ((!\switch~2_combout\ & \CPU|state|WideOr5~2_combout\)) # (\CPU|DP|multi|comb~0_combout\) ) ) ) # ( \CPU|DP|pipeC|out\(15) & ( !\MEM|mem_rtl_0|auto_generated|ram_block1a15\ & ( 
-- (\CPU|DP|multi|comb~0_combout\) # (\CPU|state|WideOr4~2_combout\) ) ) ) # ( !\CPU|DP|pipeC|out\(15) & ( !\MEM|mem_rtl_0|auto_generated|ram_block1a15\ & ( \CPU|DP|multi|comb~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111010101011111111100001100111111110101110111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|state|ALT_INV_WideOr4~2_combout\,
	datab => \ALT_INV_switch~2_combout\,
	datac => \CPU|state|ALT_INV_WideOr5~2_combout\,
	datad => \CPU|DP|multi|ALT_INV_comb~0_combout\,
	datae => \CPU|DP|pipeC|ALT_INV_out\(15),
	dataf => \MEM|mem_rtl_0|auto_generated|ALT_INV_ram_block1a15\,
	combout => \CPU|DP|multi|b\(15));

-- Location: LABCELL_X83_Y10_N9
\CPU|DP|REGFILE|writeR7|out[15]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|REGFILE|writeR7|out[15]~feeder_combout\ = ( \CPU|DP|multi|b\(15) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|DP|multi|ALT_INV_b\(15),
	combout => \CPU|DP|REGFILE|writeR7|out[15]~feeder_combout\);

-- Location: IOIBUF_X4_Y0_N35
\SW[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(6),
	o => \SW[6]~input_o\);

-- Location: MLABCELL_X82_Y9_N57
\read_data[6]~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \read_data[6]~12_combout\ = ( \MEM|mem_rtl_0|auto_generated|ram_block1a6\ & ( (!\switch~2_combout\) # (\SW[6]~input_o\) ) ) # ( !\MEM|mem_rtl_0|auto_generated|ram_block1a6\ & ( (\switch~2_combout\ & \SW[6]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010110101111101011111010111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_switch~2_combout\,
	datac => \ALT_INV_SW[6]~input_o\,
	dataf => \MEM|mem_rtl_0|auto_generated|ALT_INV_ram_block1a6\,
	combout => \read_data[6]~12_combout\);

-- Location: FF_X82_Y9_N59
\CPU|instreg|out[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \read_data[6]~12_combout\,
	ena => \CPU|state|WideOr18~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|instreg|out\(6));

-- Location: MLABCELL_X84_Y7_N45
\CPU|state|WideOr7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|state|WideOr7~0_combout\ = ( \CPU|state|STATE|next_out\(3) & ( !\CPU|instreg|out\(11) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|instreg|ALT_INV_out\(11),
	dataf => \CPU|state|STATE|ALT_INV_next_out\(3),
	combout => \CPU|state|WideOr7~0_combout\);

-- Location: MLABCELL_X84_Y7_N12
\CPU|state|WideOr7~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|state|WideOr7~4_combout\ = ( !\CPU|instreg|out\(12) & ( (\CPU|state|STATE|next_out\(2) & (\CPU|state|WideOr5~0_combout\ & (\CPU|state|WideOr7~0_combout\ & (!\CPU|state|STATE|next_out\(1) $ (\CPU|state|STATE|next_out\(0)))))) ) ) # ( 
-- \CPU|instreg|out\(12) & ( (!\CPU|state|STATE|next_out\(1) & (!\CPU|state|STATE|next_out\(2) & (\CPU|state|WideOr2~0_combout\ & (\CPU|state|WideOr7~0_combout\ & !\CPU|state|STATE|next_out\(0))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000000000000010000000000000100000000000000000010000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|state|STATE|ALT_INV_next_out\(1),
	datab => \CPU|state|STATE|ALT_INV_next_out\(2),
	datac => \CPU|state|ALT_INV_WideOr2~0_combout\,
	datad => \CPU|state|ALT_INV_WideOr7~0_combout\,
	datae => \CPU|instreg|ALT_INV_out\(12),
	dataf => \CPU|state|STATE|ALT_INV_next_out\(0),
	datag => \CPU|state|ALT_INV_WideOr5~0_combout\,
	combout => \CPU|state|WideOr7~4_combout\);

-- Location: MLABCELL_X84_Y8_N36
\CPU|state|WideOr7~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|state|WideOr7~1_combout\ = ( \CPU|state|WideOr2~0_combout\ & ( (\CPU|state|STATE|next_out\(1) & (\CPU|state|STATE|next_out\(3) & (\CPU|state|WideOr3~4_combout\ & \CPU|instreg|out[11]~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000010000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|state|STATE|ALT_INV_next_out\(1),
	datab => \CPU|state|STATE|ALT_INV_next_out\(3),
	datac => \CPU|state|ALT_INV_WideOr3~4_combout\,
	datad => \CPU|instreg|ALT_INV_out[11]~DUPLICATE_q\,
	dataf => \CPU|state|ALT_INV_WideOr2~0_combout\,
	combout => \CPU|state|WideOr7~1_combout\);

-- Location: LABCELL_X85_Y7_N42
\read_data[9]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \read_data[9]~13_combout\ = ( \switch~3_combout\ & ( \MEM|mem_rtl_0|auto_generated|ram_block1a9\ & ( (!\led~0_combout\) # ((!\led~3_combout\) # ((!\led~1_combout\) # (!\led~2_combout\))) ) ) ) # ( !\switch~3_combout\ & ( 
-- \MEM|mem_rtl_0|auto_generated|ram_block1a9\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_led~0_combout\,
	datab => \ALT_INV_led~3_combout\,
	datac => \ALT_INV_led~1_combout\,
	datad => \ALT_INV_led~2_combout\,
	datae => \ALT_INV_switch~3_combout\,
	dataf => \MEM|mem_rtl_0|auto_generated|ALT_INV_ram_block1a9\,
	combout => \read_data[9]~13_combout\);

-- Location: FF_X84_Y7_N11
\CPU|instreg|out[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \read_data[9]~13_combout\,
	sload => VCC,
	ena => \CPU|state|WideOr18~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|instreg|out\(9));

-- Location: MLABCELL_X84_Y7_N54
\CPU|dec|ReadMux|b[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|dec|ReadMux|b[1]~1_combout\ = ( \CPU|instreg|out\(1) & ( \CPU|instreg|out\(9) & ( (\CPU|state|Decoder0~3_combout\ & (((!\CPU|state|STATE|next_out\(0) & \CPU|state|WideOr3~5_combout\)) # (\CPU|state|WideOr8~0_combout\))) ) ) ) # ( 
-- !\CPU|instreg|out\(1) & ( \CPU|instreg|out\(9) & ( (\CPU|state|Decoder0~3_combout\ & (!\CPU|state|STATE|next_out\(0) & \CPU|state|WideOr3~5_combout\)) ) ) ) # ( \CPU|instreg|out\(1) & ( !\CPU|instreg|out\(9) & ( (\CPU|state|Decoder0~3_combout\ & 
-- \CPU|state|WideOr8~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001010000010100000000010001000000010101000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|state|ALT_INV_Decoder0~3_combout\,
	datab => \CPU|state|STATE|ALT_INV_next_out\(0),
	datac => \CPU|state|ALT_INV_WideOr8~0_combout\,
	datad => \CPU|state|ALT_INV_WideOr3~5_combout\,
	datae => \CPU|instreg|ALT_INV_out\(1),
	dataf => \CPU|instreg|ALT_INV_out\(9),
	combout => \CPU|dec|ReadMux|b[1]~1_combout\);

-- Location: MLABCELL_X84_Y8_N15
\CPU|dec|ReadMux|b[1]\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|dec|ReadMux|b\(1) = ( \CPU|state|WideOr7~3_combout\ & ( (!\CPU|instreg|out\(6) & !\CPU|dec|ReadMux|b[1]~1_combout\) ) ) # ( !\CPU|state|WideOr7~3_combout\ & ( (!\CPU|dec|ReadMux|b[1]~1_combout\ & ((!\CPU|instreg|out\(6)) # 
-- ((!\CPU|state|WideOr7~4_combout\ & !\CPU|state|WideOr7~1_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110101000000000111010100000000010101010000000001010101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|instreg|ALT_INV_out\(6),
	datab => \CPU|state|ALT_INV_WideOr7~4_combout\,
	datac => \CPU|state|ALT_INV_WideOr7~1_combout\,
	datad => \CPU|dec|ReadMux|ALT_INV_b[1]~1_combout\,
	dataf => \CPU|state|ALT_INV_WideOr7~3_combout\,
	combout => \CPU|dec|ReadMux|b\(1));

-- Location: IOIBUF_X8_Y0_N35
\SW[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(2),
	o => \SW[2]~input_o\);

-- Location: LABCELL_X81_Y7_N27
\read_data[2]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \read_data[2]~9_combout\ = ( \MEM|mem_rtl_0|auto_generated|ram_block1a2\ & ( (!\switch~2_combout\) # (\SW[2]~input_o\) ) ) # ( !\MEM|mem_rtl_0|auto_generated|ram_block1a2\ & ( (\switch~2_combout\ & \SW[2]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010110101111101011111010111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_switch~2_combout\,
	datac => \ALT_INV_SW[2]~input_o\,
	dataf => \MEM|mem_rtl_0|auto_generated|ALT_INV_ram_block1a2\,
	combout => \read_data[2]~9_combout\);

-- Location: FF_X81_Y7_N29
\CPU|instreg|out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \read_data[2]~9_combout\,
	ena => \CPU|state|WideOr18~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|instreg|out\(2));

-- Location: LABCELL_X85_Y7_N45
\read_data[10]~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \read_data[10]~15_combout\ = ( \switch~3_combout\ & ( \MEM|mem_rtl_0|auto_generated|ram_block1a10\ & ( (!\led~0_combout\) # ((!\led~3_combout\) # ((!\led~2_combout\) # (!\led~1_combout\))) ) ) ) # ( !\switch~3_combout\ & ( 
-- \MEM|mem_rtl_0|auto_generated|ram_block1a10\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_led~0_combout\,
	datab => \ALT_INV_led~3_combout\,
	datac => \ALT_INV_led~2_combout\,
	datad => \ALT_INV_led~1_combout\,
	datae => \ALT_INV_switch~3_combout\,
	dataf => \MEM|mem_rtl_0|auto_generated|ALT_INV_ram_block1a10\,
	combout => \read_data[10]~15_combout\);

-- Location: FF_X85_Y7_N47
\CPU|instreg|out[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \read_data[10]~15_combout\,
	ena => \CPU|state|WideOr18~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|instreg|out\(10));

-- Location: MLABCELL_X84_Y7_N57
\CPU|dec|ReadMux|b[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|dec|ReadMux|b[2]~2_combout\ = ( \CPU|instreg|out\(2) & ( \CPU|instreg|out\(10) & ( (\CPU|state|Decoder0~3_combout\ & (((!\CPU|state|STATE|next_out\(0) & \CPU|state|WideOr3~5_combout\)) # (\CPU|state|WideOr8~0_combout\))) ) ) ) # ( 
-- !\CPU|instreg|out\(2) & ( \CPU|instreg|out\(10) & ( (\CPU|state|Decoder0~3_combout\ & (!\CPU|state|STATE|next_out\(0) & \CPU|state|WideOr3~5_combout\)) ) ) ) # ( \CPU|instreg|out\(2) & ( !\CPU|instreg|out\(10) & ( (\CPU|state|Decoder0~3_combout\ & 
-- \CPU|state|WideOr8~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000101010100000100000001000000010001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|state|ALT_INV_Decoder0~3_combout\,
	datab => \CPU|state|STATE|ALT_INV_next_out\(0),
	datac => \CPU|state|ALT_INV_WideOr3~5_combout\,
	datad => \CPU|state|ALT_INV_WideOr8~0_combout\,
	datae => \CPU|instreg|ALT_INV_out\(2),
	dataf => \CPU|instreg|ALT_INV_out\(10),
	combout => \CPU|dec|ReadMux|b[2]~2_combout\);

-- Location: MLABCELL_X84_Y7_N24
\CPU|dec|ReadMux|b[2]\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|dec|ReadMux|b\(2) = ( \CPU|state|WideOr7~1_combout\ & ( (!\CPU|instreg|out\(7) & !\CPU|dec|ReadMux|b[2]~2_combout\) ) ) # ( !\CPU|state|WideOr7~1_combout\ & ( (!\CPU|dec|ReadMux|b[2]~2_combout\ & ((!\CPU|instreg|out\(7)) # 
-- ((!\CPU|state|WideOr7~3_combout\ & !\CPU|state|WideOr7~4_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111100000000000111110000000000011110000000000001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|state|ALT_INV_WideOr7~3_combout\,
	datab => \CPU|state|ALT_INV_WideOr7~4_combout\,
	datac => \CPU|instreg|ALT_INV_out\(7),
	datad => \CPU|dec|ReadMux|ALT_INV_b[2]~2_combout\,
	dataf => \CPU|state|ALT_INV_WideOr7~1_combout\,
	combout => \CPU|dec|ReadMux|b\(2));

-- Location: LABCELL_X83_Y10_N24
\CPU|DP|REGFILE|andss|out[7]\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|REGFILE|andss|out\(7) = ( !\CPU|dec|ReadMux|b\(2) & ( !\CPU|dec|ReadMux|b\(0) & ( (\CPU|state|WideOr13~5_combout\ & !\CPU|dec|ReadMux|b\(1)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU|state|ALT_INV_WideOr13~5_combout\,
	datad => \CPU|dec|ReadMux|ALT_INV_b\(1),
	datae => \CPU|dec|ReadMux|ALT_INV_b\(2),
	dataf => \CPU|dec|ReadMux|ALT_INV_b\(0),
	combout => \CPU|DP|REGFILE|andss|out\(7));

-- Location: FF_X83_Y10_N10
\CPU|DP|REGFILE|writeR7|out[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|DP|REGFILE|writeR7|out[15]~feeder_combout\,
	ena => \CPU|DP|REGFILE|andss|out\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|writeR7|out\(15));

-- Location: MLABCELL_X84_Y9_N6
\CPU|DP|REGFILE|writeR2|out[15]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|REGFILE|writeR2|out[15]~feeder_combout\ = ( \CPU|DP|multi|b\(15) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|DP|multi|ALT_INV_b\(15),
	combout => \CPU|DP|REGFILE|writeR2|out[15]~feeder_combout\);

-- Location: MLABCELL_X84_Y8_N33
\CPU|DP|REGFILE|andss|out[2]\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|REGFILE|andss|out\(2) = ( \CPU|dec|ReadMux|b\(2) & ( (\CPU|state|WideOr13~5_combout\ & (!\CPU|dec|ReadMux|b\(1) & \CPU|dec|ReadMux|b\(0))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000010100000000000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|state|ALT_INV_WideOr13~5_combout\,
	datac => \CPU|dec|ReadMux|ALT_INV_b\(1),
	datad => \CPU|dec|ReadMux|ALT_INV_b\(0),
	dataf => \CPU|dec|ReadMux|ALT_INV_b\(2),
	combout => \CPU|DP|REGFILE|andss|out\(2));

-- Location: FF_X84_Y9_N8
\CPU|DP|REGFILE|writeR2|out[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|DP|REGFILE|writeR2|out[15]~feeder_combout\,
	ena => \CPU|DP|REGFILE|andss|out\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|writeR2|out\(15));

-- Location: LABCELL_X88_Y6_N30
\CPU|DP|REGFILE|writeR4|out[15]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|REGFILE|writeR4|out[15]~feeder_combout\ = ( \CPU|DP|multi|b\(15) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|DP|multi|ALT_INV_b\(15),
	combout => \CPU|DP|REGFILE|writeR4|out[15]~feeder_combout\);

-- Location: MLABCELL_X84_Y6_N3
\CPU|DP|REGFILE|andss|out[4]\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|REGFILE|andss|out\(4) = ( \CPU|dec|ReadMux|b\(1) & ( (\CPU|dec|ReadMux|b\(0) & (\CPU|state|WideOr13~5_combout\ & !\CPU|dec|ReadMux|b\(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000010000000100000001000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|dec|ReadMux|ALT_INV_b\(0),
	datab => \CPU|state|ALT_INV_WideOr13~5_combout\,
	datac => \CPU|dec|ReadMux|ALT_INV_b\(2),
	dataf => \CPU|dec|ReadMux|ALT_INV_b\(1),
	combout => \CPU|DP|REGFILE|andss|out\(4));

-- Location: FF_X88_Y6_N31
\CPU|DP|REGFILE|writeR4|out[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|DP|REGFILE|writeR4|out[15]~feeder_combout\,
	ena => \CPU|DP|REGFILE|andss|out\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|writeR4|out\(15));

-- Location: LABCELL_X83_Y9_N51
\CPU|DP|REGFILE|andss|out[0]\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|REGFILE|andss|out\(0) = ( \CPU|dec|ReadMux|b\(2) & ( \CPU|dec|ReadMux|b\(1) & ( (\CPU|state|WideOr13~5_combout\ & \CPU|dec|ReadMux|b\(0)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|state|ALT_INV_WideOr13~5_combout\,
	datac => \CPU|dec|ReadMux|ALT_INV_b\(0),
	datae => \CPU|dec|ReadMux|ALT_INV_b\(2),
	dataf => \CPU|dec|ReadMux|ALT_INV_b\(1),
	combout => \CPU|DP|REGFILE|andss|out\(0));

-- Location: FF_X82_Y8_N50
\CPU|DP|REGFILE|writeR0|out[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|DP|multi|b\(15),
	sload => VCC,
	ena => \CPU|DP|REGFILE|andss|out\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|writeR0|out\(15));

-- Location: MLABCELL_X82_Y8_N48
\CPU|DP|REGFILE|MuxR|out[15]~30\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|REGFILE|MuxR|out[15]~30_combout\ = ( \CPU|DP|REGFILE|writeR0|out\(15) & ( \CPU|dec|ReadMux|b\(1) & ( (\CPU|dec|ReadMux|b\(0) & ((\CPU|dec|ReadMux|b\(2)) # (\CPU|DP|REGFILE|writeR4|out\(15)))) ) ) ) # ( !\CPU|DP|REGFILE|writeR0|out\(15) & ( 
-- \CPU|dec|ReadMux|b\(1) & ( (\CPU|DP|REGFILE|writeR4|out\(15) & (!\CPU|dec|ReadMux|b\(2) & \CPU|dec|ReadMux|b\(0))) ) ) ) # ( \CPU|DP|REGFILE|writeR0|out\(15) & ( !\CPU|dec|ReadMux|b\(1) & ( (\CPU|DP|REGFILE|writeR2|out\(15) & (\CPU|dec|ReadMux|b\(2) & 
-- \CPU|dec|ReadMux|b\(0))) ) ) ) # ( !\CPU|DP|REGFILE|writeR0|out\(15) & ( !\CPU|dec|ReadMux|b\(1) & ( (\CPU|DP|REGFILE|writeR2|out\(15) & (\CPU|dec|ReadMux|b\(2) & \CPU|dec|ReadMux|b\(0))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000101000000000000010100000000001100000000000000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DP|REGFILE|writeR2|ALT_INV_out\(15),
	datab => \CPU|DP|REGFILE|writeR4|ALT_INV_out\(15),
	datac => \CPU|dec|ReadMux|ALT_INV_b\(2),
	datad => \CPU|dec|ReadMux|ALT_INV_b\(0),
	datae => \CPU|DP|REGFILE|writeR0|ALT_INV_out\(15),
	dataf => \CPU|dec|ReadMux|ALT_INV_b\(1),
	combout => \CPU|DP|REGFILE|MuxR|out[15]~30_combout\);

-- Location: LABCELL_X81_Y8_N36
\CPU|DP|REGFILE|writeR6|out[15]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|REGFILE|writeR6|out[15]~feeder_combout\ = ( \CPU|DP|multi|b\(15) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|DP|multi|ALT_INV_b\(15),
	combout => \CPU|DP|REGFILE|writeR6|out[15]~feeder_combout\);

-- Location: FF_X81_Y8_N37
\CPU|DP|REGFILE|writeR6|out[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|DP|REGFILE|writeR6|out[15]~feeder_combout\,
	ena => \CPU|DP|REGFILE|andss|out\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|writeR6|out\(15));

-- Location: MLABCELL_X84_Y8_N12
\CPU|DP|REGFILE|read_dec|ShiftLeft0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|REGFILE|read_dec|ShiftLeft0~1_combout\ = ( !\CPU|dec|ReadMux|b\(1) & ( (!\CPU|dec|ReadMux|b\(2) & !\CPU|dec|ReadMux|b\(0)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000111100000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU|dec|ReadMux|ALT_INV_b\(2),
	datad => \CPU|dec|ReadMux|ALT_INV_b\(0),
	dataf => \CPU|dec|ReadMux|ALT_INV_b\(1),
	combout => \CPU|DP|REGFILE|read_dec|ShiftLeft0~1_combout\);

-- Location: LABCELL_X83_Y8_N57
\CPU|DP|REGFILE|read_dec|ShiftLeft0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|REGFILE|read_dec|ShiftLeft0~0_combout\ = ( !\CPU|dec|ReadMux|b\(2) & ( (\CPU|dec|ReadMux|b\(0) & !\CPU|dec|ReadMux|b\(1)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU|dec|ReadMux|ALT_INV_b\(0),
	datad => \CPU|dec|ReadMux|ALT_INV_b\(1),
	dataf => \CPU|dec|ReadMux|ALT_INV_b\(2),
	combout => \CPU|DP|REGFILE|read_dec|ShiftLeft0~0_combout\);

-- Location: MLABCELL_X84_Y10_N0
\CPU|DP|REGFILE|andss|out[5]\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|REGFILE|andss|out\(5) = ( \CPU|dec|ReadMux|b\(1) & ( (!\CPU|dec|ReadMux|b\(0) & (\CPU|state|WideOr13~5_combout\ & !\CPU|dec|ReadMux|b\(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001100000000000000110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|dec|ReadMux|ALT_INV_b\(0),
	datac => \CPU|state|ALT_INV_WideOr13~5_combout\,
	datad => \CPU|dec|ReadMux|ALT_INV_b\(2),
	dataf => \CPU|dec|ReadMux|ALT_INV_b\(1),
	combout => \CPU|DP|REGFILE|andss|out\(5));

-- Location: FF_X85_Y6_N34
\CPU|DP|REGFILE|writeR5|out[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|DP|multi|b\(15),
	ena => \CPU|DP|REGFILE|andss|out\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|writeR5|out\(15));

-- Location: MLABCELL_X84_Y9_N42
\CPU|DP|REGFILE|andss|out[3]\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|REGFILE|andss|out\(3) = ( !\CPU|dec|ReadMux|b\(1) & ( (\CPU|state|WideOr13~5_combout\ & (!\CPU|dec|ReadMux|b\(0) & \CPU|dec|ReadMux|b\(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010000000000000101000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|state|ALT_INV_WideOr13~5_combout\,
	datac => \CPU|dec|ReadMux|ALT_INV_b\(0),
	datad => \CPU|dec|ReadMux|ALT_INV_b\(2),
	dataf => \CPU|dec|ReadMux|ALT_INV_b\(1),
	combout => \CPU|DP|REGFILE|andss|out\(3));

-- Location: FF_X85_Y6_N47
\CPU|DP|REGFILE|writeR3|out[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|DP|multi|b\(15),
	sload => VCC,
	ena => \CPU|DP|REGFILE|andss|out\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|writeR3|out\(15));

-- Location: MLABCELL_X84_Y8_N30
\CPU|DP|REGFILE|andss|out[1]\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|REGFILE|andss|out\(1) = ( \CPU|dec|ReadMux|b\(2) & ( (\CPU|dec|ReadMux|b\(1) & (\CPU|state|WideOr13~5_combout\ & !\CPU|dec|ReadMux|b\(0))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000011000000000000001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|dec|ReadMux|ALT_INV_b\(1),
	datac => \CPU|state|ALT_INV_WideOr13~5_combout\,
	datad => \CPU|dec|ReadMux|ALT_INV_b\(0),
	dataf => \CPU|dec|ReadMux|ALT_INV_b\(2),
	combout => \CPU|DP|REGFILE|andss|out\(1));

-- Location: FF_X82_Y8_N32
\CPU|DP|REGFILE|writeR1|out[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|DP|multi|b\(15),
	sload => VCC,
	ena => \CPU|DP|REGFILE|andss|out\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|writeR1|out\(15));

-- Location: MLABCELL_X82_Y8_N30
\CPU|DP|REGFILE|MuxR|out[15]~31\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|REGFILE|MuxR|out[15]~31_combout\ = ( \CPU|DP|REGFILE|writeR1|out\(15) & ( \CPU|dec|ReadMux|b\(1) & ( (!\CPU|dec|ReadMux|b\(0) & ((\CPU|dec|ReadMux|b\(2)) # (\CPU|DP|REGFILE|writeR5|out\(15)))) ) ) ) # ( !\CPU|DP|REGFILE|writeR1|out\(15) & ( 
-- \CPU|dec|ReadMux|b\(1) & ( (\CPU|DP|REGFILE|writeR5|out\(15) & (!\CPU|dec|ReadMux|b\(0) & !\CPU|dec|ReadMux|b\(2))) ) ) ) # ( \CPU|DP|REGFILE|writeR1|out\(15) & ( !\CPU|dec|ReadMux|b\(1) & ( (!\CPU|dec|ReadMux|b\(0) & (\CPU|dec|ReadMux|b\(2) & 
-- \CPU|DP|REGFILE|writeR3|out\(15))) ) ) ) # ( !\CPU|DP|REGFILE|writeR1|out\(15) & ( !\CPU|dec|ReadMux|b\(1) & ( (!\CPU|dec|ReadMux|b\(0) & (\CPU|dec|ReadMux|b\(2) & \CPU|DP|REGFILE|writeR3|out\(15))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001100000000000000110001000000010000000100110001001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DP|REGFILE|writeR5|ALT_INV_out\(15),
	datab => \CPU|dec|ReadMux|ALT_INV_b\(0),
	datac => \CPU|dec|ReadMux|ALT_INV_b\(2),
	datad => \CPU|DP|REGFILE|writeR3|ALT_INV_out\(15),
	datae => \CPU|DP|REGFILE|writeR1|ALT_INV_out\(15),
	dataf => \CPU|dec|ReadMux|ALT_INV_b\(1),
	combout => \CPU|DP|REGFILE|MuxR|out[15]~31_combout\);

-- Location: LABCELL_X83_Y8_N24
\CPU|DP|REGFILE|MuxR|out[15]\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|REGFILE|MuxR|out\(15) = ( \CPU|DP|REGFILE|read_dec|ShiftLeft0~0_combout\ & ( \CPU|DP|REGFILE|MuxR|out[15]~31_combout\ ) ) # ( !\CPU|DP|REGFILE|read_dec|ShiftLeft0~0_combout\ & ( \CPU|DP|REGFILE|MuxR|out[15]~31_combout\ ) ) # ( 
-- \CPU|DP|REGFILE|read_dec|ShiftLeft0~0_combout\ & ( !\CPU|DP|REGFILE|MuxR|out[15]~31_combout\ & ( (((\CPU|DP|REGFILE|writeR7|out\(15) & \CPU|DP|REGFILE|read_dec|ShiftLeft0~1_combout\)) # (\CPU|DP|REGFILE|writeR6|out\(15))) # 
-- (\CPU|DP|REGFILE|MuxR|out[15]~30_combout\) ) ) ) # ( !\CPU|DP|REGFILE|read_dec|ShiftLeft0~0_combout\ & ( !\CPU|DP|REGFILE|MuxR|out[15]~31_combout\ & ( ((\CPU|DP|REGFILE|writeR7|out\(15) & \CPU|DP|REGFILE|read_dec|ShiftLeft0~1_combout\)) # 
-- (\CPU|DP|REGFILE|MuxR|out[15]~30_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001101110111001111110111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DP|REGFILE|writeR7|ALT_INV_out\(15),
	datab => \CPU|DP|REGFILE|MuxR|ALT_INV_out[15]~30_combout\,
	datac => \CPU|DP|REGFILE|writeR6|ALT_INV_out\(15),
	datad => \CPU|DP|REGFILE|read_dec|ALT_INV_ShiftLeft0~1_combout\,
	datae => \CPU|DP|REGFILE|read_dec|ALT_INV_ShiftLeft0~0_combout\,
	dataf => \CPU|DP|REGFILE|MuxR|ALT_INV_out[15]~31_combout\,
	combout => \CPU|DP|REGFILE|MuxR|out\(15));

-- Location: LABCELL_X81_Y9_N0
\CPU|state|WideOr2~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|state|WideOr2~5_combout\ = ( \CPU|instreg|out[11]~DUPLICATE_q\ & ( (!\CPU|instreg|out\(14) & (\CPU|instreg|out[15]~DUPLICATE_q\ & (!\CPU|instreg|out\(12) & \CPU|instreg|out\(13)))) ) ) # ( !\CPU|instreg|out[11]~DUPLICATE_q\ & ( 
-- (!\CPU|instreg|out\(14) & (\CPU|instreg|out[15]~DUPLICATE_q\ & ((!\CPU|instreg|out\(12)) # (\CPU|instreg|out\(13))))) # (\CPU|instreg|out\(14) & (!\CPU|instreg|out[15]~DUPLICATE_q\ & (!\CPU|instreg|out\(12) & \CPU|instreg|out\(13)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000001100010001000000110001000000000001000000000000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|instreg|ALT_INV_out\(14),
	datab => \CPU|instreg|ALT_INV_out[15]~DUPLICATE_q\,
	datac => \CPU|instreg|ALT_INV_out\(12),
	datad => \CPU|instreg|ALT_INV_out\(13),
	dataf => \CPU|instreg|ALT_INV_out[11]~DUPLICATE_q\,
	combout => \CPU|state|WideOr2~5_combout\);

-- Location: LABCELL_X81_Y9_N3
\CPU|state|WideOr9~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|state|WideOr9~0_combout\ = ( !\CPU|state|STATE|next_out\(0) & ( (\CPU|state|Decoder0~3_combout\ & \CPU|state|WideOr2~5_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU|state|ALT_INV_Decoder0~3_combout\,
	datad => \CPU|state|ALT_INV_WideOr2~5_combout\,
	dataf => \CPU|state|STATE|ALT_INV_next_out\(0),
	combout => \CPU|state|WideOr9~0_combout\);

-- Location: FF_X83_Y8_N26
\CPU|DP|pipeA|out[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|DP|REGFILE|MuxR|out\(15),
	ena => \CPU|state|WideOr9~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|pipeA|out\(15));

-- Location: FF_X83_Y8_N19
\CPU|DP|pipeB|out[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|DP|REGFILE|MuxR|out\(15),
	sload => VCC,
	ena => \CPU|state|WideOr10~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|pipeB|out\(15));

-- Location: LABCELL_X83_Y7_N48
\CPU|state|bsel~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|state|bsel~2_combout\ = ( \CPU|state|bsel~1_combout\ & ( \CPU|state|bsel~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU|state|ALT_INV_bsel~0_combout\,
	dataf => \CPU|state|ALT_INV_bsel~1_combout\,
	combout => \CPU|state|bsel~2_combout\);

-- Location: LABCELL_X83_Y7_N0
\CPU|DP|Bin[15]~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|Bin[15]~16_combout\ = ( \CPU|shiftavoid~combout\ & ( \CPU|state|bsel~2_combout\ & ( \CPU|instreg|out\(4) ) ) ) # ( !\CPU|shiftavoid~combout\ & ( \CPU|state|bsel~2_combout\ & ( \CPU|instreg|out\(4) ) ) ) # ( \CPU|shiftavoid~combout\ & ( 
-- !\CPU|state|bsel~2_combout\ & ( \CPU|DP|pipeB|out\(15) ) ) ) # ( !\CPU|shiftavoid~combout\ & ( !\CPU|state|bsel~2_combout\ & ( (!\CPU|instreg|out\(4) & ((!\CPU|instreg|out\(3) & ((\CPU|DP|pipeB|out\(15)))) # (\CPU|instreg|out\(3) & 
-- (\CPU|DP|pipeB|out\(14))))) # (\CPU|instreg|out\(4) & (((\CPU|DP|pipeB|out\(15) & \CPU|instreg|out\(3))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110001000111000011110000111100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DP|pipeB|ALT_INV_out\(14),
	datab => \CPU|instreg|ALT_INV_out\(4),
	datac => \CPU|DP|pipeB|ALT_INV_out\(15),
	datad => \CPU|instreg|ALT_INV_out\(3),
	datae => \CPU|ALT_INV_shiftavoid~combout\,
	dataf => \CPU|state|ALT_INV_bsel~2_combout\,
	combout => \CPU|DP|Bin[15]~16_combout\);

-- Location: FF_X83_Y8_N50
\CPU|DP|pipeA|out[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|DP|REGFILE|MuxR|out\(14),
	ena => \CPU|state|WideOr9~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|pipeA|out\(14));

-- Location: LABCELL_X83_Y7_N57
\CPU|DP|Bin[2]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|Bin[2]~0_combout\ = ( \CPU|state|bsel~1_combout\ & ( ((\CPU|instreg|out\(3) & (!\CPU|instreg|out\(4) & !\CPU|shiftavoid~combout\))) # (\CPU|state|bsel~0_combout\) ) ) # ( !\CPU|state|bsel~1_combout\ & ( (\CPU|instreg|out\(3) & 
-- (!\CPU|instreg|out\(4) & !\CPU|shiftavoid~combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000000000001100000000000001110101010101010111010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|state|ALT_INV_bsel~0_combout\,
	datab => \CPU|instreg|ALT_INV_out\(3),
	datac => \CPU|instreg|ALT_INV_out\(4),
	datad => \CPU|ALT_INV_shiftavoid~combout\,
	dataf => \CPU|state|ALT_INV_bsel~1_combout\,
	combout => \CPU|DP|Bin[2]~0_combout\);

-- Location: LABCELL_X83_Y8_N36
\CPU|DP|Bin[13]~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|Bin[13]~14_combout\ = ( \CPU|DP|pipeB|out\(14) & ( \CPU|DP|Bin[2]~0_combout\ & ( (!\CPU|DP|Bin[2]~1_combout\ & ((\CPU|instreg|out\(4)))) # (\CPU|DP|Bin[2]~1_combout\ & (\CPU|DP|pipeB|out\(12))) ) ) ) # ( !\CPU|DP|pipeB|out\(14) & ( 
-- \CPU|DP|Bin[2]~0_combout\ & ( (!\CPU|DP|Bin[2]~1_combout\ & ((\CPU|instreg|out\(4)))) # (\CPU|DP|Bin[2]~1_combout\ & (\CPU|DP|pipeB|out\(12))) ) ) ) # ( \CPU|DP|pipeB|out\(14) & ( !\CPU|DP|Bin[2]~0_combout\ & ( (\CPU|DP|Bin[2]~1_combout\) # 
-- (\CPU|DP|pipeB|out\(13)) ) ) ) # ( !\CPU|DP|pipeB|out\(14) & ( !\CPU|DP|Bin[2]~0_combout\ & ( (\CPU|DP|pipeB|out\(13) & !\CPU|DP|Bin[2]~1_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100011101110111011100000011110011110000001111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DP|pipeB|ALT_INV_out\(13),
	datab => \CPU|DP|ALT_INV_Bin[2]~1_combout\,
	datac => \CPU|DP|pipeB|ALT_INV_out\(12),
	datad => \CPU|instreg|ALT_INV_out\(4),
	datae => \CPU|DP|pipeB|ALT_INV_out\(14),
	dataf => \CPU|DP|ALT_INV_Bin[2]~0_combout\,
	combout => \CPU|DP|Bin[13]~14_combout\);

-- Location: FF_X81_Y6_N8
\CPU|DP|pipeA|out[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|DP|REGFILE|MuxR|out\(12),
	ena => \CPU|state|WideOr9~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|pipeA|out\(12));

-- Location: FF_X81_Y6_N56
\CPU|DP|pipeA|out[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|DP|REGFILE|MuxR|out\(11),
	ena => \CPU|state|WideOr9~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|pipeA|out\(11));

-- Location: FF_X81_Y6_N20
\CPU|DP|pipeA|out[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|DP|REGFILE|MuxR|out\(10),
	ena => \CPU|state|WideOr9~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|pipeA|out\(10));

-- Location: FF_X83_Y6_N25
\CPU|DP|pipeB|out[8]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|DP|REGFILE|MuxR|out\(8),
	sload => VCC,
	ena => \CPU|state|WideOr10~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|pipeB|out[8]~DUPLICATE_q\);

-- Location: FF_X83_Y6_N14
\CPU|DP|pipeB|out[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|DP|REGFILE|MuxR|out\(9),
	sload => VCC,
	ena => \CPU|state|WideOr10~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|pipeB|out\(9));

-- Location: LABCELL_X81_Y6_N24
\CPU|DP|Bin[9]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|Bin[9]~10_combout\ = ( \CPU|DP|pipeB|out\(10) & ( \CPU|DP|Bin[2]~0_combout\ & ( (!\CPU|DP|Bin[2]~1_combout\ & (\CPU|instreg|out\(4))) # (\CPU|DP|Bin[2]~1_combout\ & ((\CPU|DP|pipeB|out[8]~DUPLICATE_q\))) ) ) ) # ( !\CPU|DP|pipeB|out\(10) & ( 
-- \CPU|DP|Bin[2]~0_combout\ & ( (!\CPU|DP|Bin[2]~1_combout\ & (\CPU|instreg|out\(4))) # (\CPU|DP|Bin[2]~1_combout\ & ((\CPU|DP|pipeB|out[8]~DUPLICATE_q\))) ) ) ) # ( \CPU|DP|pipeB|out\(10) & ( !\CPU|DP|Bin[2]~0_combout\ & ( (\CPU|DP|pipeB|out\(9)) # 
-- (\CPU|DP|Bin[2]~1_combout\) ) ) ) # ( !\CPU|DP|pipeB|out\(10) & ( !\CPU|DP|Bin[2]~0_combout\ & ( (!\CPU|DP|Bin[2]~1_combout\ & \CPU|DP|pipeB|out\(9)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000011111111111101010011010100110101001101010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|instreg|ALT_INV_out\(4),
	datab => \CPU|DP|pipeB|ALT_INV_out[8]~DUPLICATE_q\,
	datac => \CPU|DP|ALT_INV_Bin[2]~1_combout\,
	datad => \CPU|DP|pipeB|ALT_INV_out\(9),
	datae => \CPU|DP|pipeB|ALT_INV_out\(10),
	dataf => \CPU|DP|ALT_INV_Bin[2]~0_combout\,
	combout => \CPU|DP|Bin[9]~10_combout\);

-- Location: FF_X83_Y6_N43
\CPU|DP|pipeA|out[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|DP|REGFILE|MuxR|out\(8),
	sload => VCC,
	ena => \CPU|state|WideOr9~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|pipeA|out\(8));

-- Location: FF_X83_Y6_N32
\CPU|DP|pipeA|out[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|DP|REGFILE|MuxR|out\(7),
	ena => \CPU|state|WideOr9~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|pipeA|out\(7));

-- Location: MLABCELL_X84_Y10_N15
\CPU|state|Decoder0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|state|Decoder0~4_combout\ = ( \CPU|instreg|out\(12) & ( \CPU|instreg|out\(14) & ( (\CPU|instreg|out[15]~DUPLICATE_q\ & (!\CPU|instreg|out[13]~DUPLICATE_q\ & !\CPU|instreg|out[11]~DUPLICATE_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000100000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|instreg|ALT_INV_out[15]~DUPLICATE_q\,
	datab => \CPU|instreg|ALT_INV_out[13]~DUPLICATE_q\,
	datac => \CPU|instreg|ALT_INV_out[11]~DUPLICATE_q\,
	datae => \CPU|instreg|ALT_INV_out\(12),
	dataf => \CPU|instreg|ALT_INV_out\(14),
	combout => \CPU|state|Decoder0~4_combout\);

-- Location: MLABCELL_X84_Y10_N45
\CPU|state|Decoder0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|state|Decoder0~5_combout\ = ( \CPU|state|Decoder0~3_combout\ & ( (!\CPU|state|STATE|next_out\(0) & \CPU|state|Decoder0~4_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001010000010100000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|state|STATE|ALT_INV_next_out\(0),
	datac => \CPU|state|ALT_INV_Decoder0~4_combout\,
	dataf => \CPU|state|ALT_INV_Decoder0~3_combout\,
	combout => \CPU|state|Decoder0~5_combout\);

-- Location: LABCELL_X83_Y10_N30
\CPU|DP|multi|b[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|multi|b[6]~6_combout\ = ( \CPU|instreg|out\(6) & ( ((\CPU|state|WideOr4~2_combout\ & \CPU|DP|pipeC|out\(6))) # (\CPU|state|Decoder0~5_combout\) ) ) # ( !\CPU|instreg|out\(6) & ( (\CPU|state|WideOr4~2_combout\ & \CPU|DP|pipeC|out\(6)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001100001111001111110000111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|state|ALT_INV_WideOr4~2_combout\,
	datac => \CPU|state|ALT_INV_Decoder0~5_combout\,
	datad => \CPU|DP|pipeC|ALT_INV_out\(6),
	dataf => \CPU|instreg|ALT_INV_out\(6),
	combout => \CPU|DP|multi|b[6]~6_combout\);

-- Location: LABCELL_X83_Y10_N48
\CPU|DP|multi|b[6]\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|multi|b\(6) = ( \switch~2_combout\ & ( \MEM|mem_rtl_0|auto_generated|ram_block1a6\ & ( ((\CPU|state|WideOr5~2_combout\ & \SW[6]~input_o\)) # (\CPU|DP|multi|b[6]~6_combout\) ) ) ) # ( !\switch~2_combout\ & ( 
-- \MEM|mem_rtl_0|auto_generated|ram_block1a6\ & ( (\CPU|DP|multi|b[6]~6_combout\) # (\CPU|state|WideOr5~2_combout\) ) ) ) # ( \switch~2_combout\ & ( !\MEM|mem_rtl_0|auto_generated|ram_block1a6\ & ( ((\CPU|state|WideOr5~2_combout\ & \SW[6]~input_o\)) # 
-- (\CPU|DP|multi|b[6]~6_combout\) ) ) ) # ( !\switch~2_combout\ & ( !\MEM|mem_rtl_0|auto_generated|ram_block1a6\ & ( \CPU|DP|multi|b[6]~6_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000111111111100110011111111110000001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|state|ALT_INV_WideOr5~2_combout\,
	datac => \ALT_INV_SW[6]~input_o\,
	datad => \CPU|DP|multi|ALT_INV_b[6]~6_combout\,
	datae => \ALT_INV_switch~2_combout\,
	dataf => \MEM|mem_rtl_0|auto_generated|ALT_INV_ram_block1a6\,
	combout => \CPU|DP|multi|b\(6));

-- Location: FF_X81_Y8_N32
\CPU|DP|REGFILE|writeR6|out[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|DP|multi|b\(6),
	sload => VCC,
	ena => \CPU|DP|REGFILE|andss|out\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|writeR6|out\(6));

-- Location: LABCELL_X83_Y10_N39
\CPU|DP|REGFILE|writeR7|out[6]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|REGFILE|writeR7|out[6]~feeder_combout\ = ( \CPU|DP|multi|b\(6) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|DP|multi|ALT_INV_b\(6),
	combout => \CPU|DP|REGFILE|writeR7|out[6]~feeder_combout\);

-- Location: FF_X83_Y10_N40
\CPU|DP|REGFILE|writeR7|out[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|DP|REGFILE|writeR7|out[6]~feeder_combout\,
	ena => \CPU|DP|REGFILE|andss|out\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|writeR7|out\(6));

-- Location: FF_X85_Y9_N1
\CPU|DP|REGFILE|writeR3|out[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|DP|multi|b\(6),
	sload => VCC,
	ena => \CPU|DP|REGFILE|andss|out\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|writeR3|out\(6));

-- Location: FF_X83_Y10_N49
\CPU|DP|REGFILE|writeR5|out[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|DP|multi|b\(6),
	ena => \CPU|DP|REGFILE|andss|out\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|writeR5|out\(6));

-- Location: FF_X82_Y8_N20
\CPU|DP|REGFILE|writeR1|out[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|DP|multi|b\(6),
	sload => VCC,
	ena => \CPU|DP|REGFILE|andss|out\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|writeR1|out\(6));

-- Location: MLABCELL_X82_Y8_N18
\CPU|DP|REGFILE|MuxR|out[6]~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|REGFILE|MuxR|out[6]~19_combout\ = ( \CPU|DP|REGFILE|writeR1|out\(6) & ( \CPU|dec|ReadMux|b\(1) & ( (!\CPU|dec|ReadMux|b\(0) & ((\CPU|dec|ReadMux|b\(2)) # (\CPU|DP|REGFILE|writeR5|out\(6)))) ) ) ) # ( !\CPU|DP|REGFILE|writeR1|out\(6) & ( 
-- \CPU|dec|ReadMux|b\(1) & ( (\CPU|DP|REGFILE|writeR5|out\(6) & (!\CPU|dec|ReadMux|b\(0) & !\CPU|dec|ReadMux|b\(2))) ) ) ) # ( \CPU|DP|REGFILE|writeR1|out\(6) & ( !\CPU|dec|ReadMux|b\(1) & ( (\CPU|DP|REGFILE|writeR3|out\(6) & (!\CPU|dec|ReadMux|b\(0) & 
-- \CPU|dec|ReadMux|b\(2))) ) ) ) # ( !\CPU|DP|REGFILE|writeR1|out\(6) & ( !\CPU|dec|ReadMux|b\(1) & ( (\CPU|DP|REGFILE|writeR3|out\(6) & (!\CPU|dec|ReadMux|b\(0) & \CPU|dec|ReadMux|b\(2))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010000000000000101000000110000000000000011000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DP|REGFILE|writeR3|ALT_INV_out\(6),
	datab => \CPU|DP|REGFILE|writeR5|ALT_INV_out\(6),
	datac => \CPU|dec|ReadMux|ALT_INV_b\(0),
	datad => \CPU|dec|ReadMux|ALT_INV_b\(2),
	datae => \CPU|DP|REGFILE|writeR1|ALT_INV_out\(6),
	dataf => \CPU|dec|ReadMux|ALT_INV_b\(1),
	combout => \CPU|DP|REGFILE|MuxR|out[6]~19_combout\);

-- Location: MLABCELL_X84_Y6_N0
\CPU|DP|REGFILE|writeR4|out[6]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|REGFILE|writeR4|out[6]~feeder_combout\ = ( \CPU|DP|multi|b\(6) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|DP|multi|ALT_INV_b\(6),
	combout => \CPU|DP|REGFILE|writeR4|out[6]~feeder_combout\);

-- Location: FF_X84_Y6_N1
\CPU|DP|REGFILE|writeR4|out[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|DP|REGFILE|writeR4|out[6]~feeder_combout\,
	ena => \CPU|DP|REGFILE|andss|out\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|writeR4|out\(6));

-- Location: FF_X84_Y10_N13
\CPU|DP|REGFILE|writeR2|out[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|DP|multi|b\(6),
	sload => VCC,
	ena => \CPU|DP|REGFILE|andss|out\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|writeR2|out\(6));

-- Location: FF_X83_Y10_N56
\CPU|DP|REGFILE|writeR0|out[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|DP|multi|b\(6),
	sload => VCC,
	ena => \CPU|DP|REGFILE|andss|out\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|writeR0|out\(6));

-- Location: LABCELL_X83_Y10_N54
\CPU|DP|REGFILE|MuxR|out[6]~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|REGFILE|MuxR|out[6]~18_combout\ = ( \CPU|DP|REGFILE|writeR0|out\(6) & ( \CPU|dec|ReadMux|b\(1) & ( (\CPU|dec|ReadMux|b\(0) & ((\CPU|dec|ReadMux|b\(2)) # (\CPU|DP|REGFILE|writeR4|out\(6)))) ) ) ) # ( !\CPU|DP|REGFILE|writeR0|out\(6) & ( 
-- \CPU|dec|ReadMux|b\(1) & ( (\CPU|DP|REGFILE|writeR4|out\(6) & (\CPU|dec|ReadMux|b\(0) & !\CPU|dec|ReadMux|b\(2))) ) ) ) # ( \CPU|DP|REGFILE|writeR0|out\(6) & ( !\CPU|dec|ReadMux|b\(1) & ( (\CPU|DP|REGFILE|writeR2|out\(6) & (\CPU|dec|ReadMux|b\(0) & 
-- \CPU|dec|ReadMux|b\(2))) ) ) ) # ( !\CPU|DP|REGFILE|writeR0|out\(6) & ( !\CPU|dec|ReadMux|b\(1) & ( (\CPU|DP|REGFILE|writeR2|out\(6) & (\CPU|dec|ReadMux|b\(0) & \CPU|dec|ReadMux|b\(2))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000011000000000000001100000101000000000000010100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DP|REGFILE|writeR4|ALT_INV_out\(6),
	datab => \CPU|DP|REGFILE|writeR2|ALT_INV_out\(6),
	datac => \CPU|dec|ReadMux|ALT_INV_b\(0),
	datad => \CPU|dec|ReadMux|ALT_INV_b\(2),
	datae => \CPU|DP|REGFILE|writeR0|ALT_INV_out\(6),
	dataf => \CPU|dec|ReadMux|ALT_INV_b\(1),
	combout => \CPU|DP|REGFILE|MuxR|out[6]~18_combout\);

-- Location: MLABCELL_X82_Y7_N48
\CPU|DP|REGFILE|MuxR|out[6]\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|REGFILE|MuxR|out\(6) = ( \CPU|DP|REGFILE|MuxR|out[6]~19_combout\ & ( \CPU|DP|REGFILE|MuxR|out[6]~18_combout\ ) ) # ( !\CPU|DP|REGFILE|MuxR|out[6]~19_combout\ & ( \CPU|DP|REGFILE|MuxR|out[6]~18_combout\ ) ) # ( 
-- \CPU|DP|REGFILE|MuxR|out[6]~19_combout\ & ( !\CPU|DP|REGFILE|MuxR|out[6]~18_combout\ ) ) # ( !\CPU|DP|REGFILE|MuxR|out[6]~19_combout\ & ( !\CPU|DP|REGFILE|MuxR|out[6]~18_combout\ & ( (!\CPU|DP|REGFILE|writeR6|out\(6) & (\CPU|DP|REGFILE|writeR7|out\(6) & 
-- (\CPU|DP|REGFILE|read_dec|ShiftLeft0~1_combout\))) # (\CPU|DP|REGFILE|writeR6|out\(6) & (((\CPU|DP|REGFILE|writeR7|out\(6) & \CPU|DP|REGFILE|read_dec|ShiftLeft0~1_combout\)) # (\CPU|DP|REGFILE|read_dec|ShiftLeft0~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001101010111111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DP|REGFILE|writeR6|ALT_INV_out\(6),
	datab => \CPU|DP|REGFILE|writeR7|ALT_INV_out\(6),
	datac => \CPU|DP|REGFILE|read_dec|ALT_INV_ShiftLeft0~1_combout\,
	datad => \CPU|DP|REGFILE|read_dec|ALT_INV_ShiftLeft0~0_combout\,
	datae => \CPU|DP|REGFILE|MuxR|ALT_INV_out[6]~19_combout\,
	dataf => \CPU|DP|REGFILE|MuxR|ALT_INV_out[6]~18_combout\,
	combout => \CPU|DP|REGFILE|MuxR|out\(6));

-- Location: FF_X82_Y7_N50
\CPU|DP|pipeA|out[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|DP|REGFILE|MuxR|out\(6),
	ena => \CPU|state|WideOr9~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|pipeA|out\(6));

-- Location: IOIBUF_X16_Y0_N18
\SW[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(5),
	o => \SW[5]~input_o\);

-- Location: LABCELL_X81_Y7_N42
\read_data[5]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \read_data[5]~10_combout\ = ( \SW[5]~input_o\ & ( \MEM|mem_rtl_0|auto_generated|ram_block1a5\ ) ) # ( !\SW[5]~input_o\ & ( \MEM|mem_rtl_0|auto_generated|ram_block1a5\ & ( !\switch~2_combout\ ) ) ) # ( \SW[5]~input_o\ & ( 
-- !\MEM|mem_rtl_0|auto_generated|ram_block1a5\ & ( \switch~2_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101010101010110101010101010101111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_switch~2_combout\,
	datae => \ALT_INV_SW[5]~input_o\,
	dataf => \MEM|mem_rtl_0|auto_generated|ALT_INV_ram_block1a5\,
	combout => \read_data[5]~10_combout\);

-- Location: FF_X81_Y7_N44
\CPU|instreg|out[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \read_data[5]~10_combout\,
	ena => \CPU|state|WideOr18~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|instreg|out\(5));

-- Location: LABCELL_X83_Y10_N45
\CPU|DP|multi|b[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|multi|b[5]~5_combout\ = (!\CPU|state|Decoder0~5_combout\ & (\CPU|state|WideOr4~2_combout\ & ((\CPU|DP|pipeC|out\(5))))) # (\CPU|state|Decoder0~5_combout\ & (((\CPU|state|WideOr4~2_combout\ & \CPU|DP|pipeC|out\(5))) # (\CPU|instreg|out\(5))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100110111000001010011011100000101001101110000010100110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|state|ALT_INV_Decoder0~5_combout\,
	datab => \CPU|state|ALT_INV_WideOr4~2_combout\,
	datac => \CPU|instreg|ALT_INV_out\(5),
	datad => \CPU|DP|pipeC|ALT_INV_out\(5),
	combout => \CPU|DP|multi|b[5]~5_combout\);

-- Location: LABCELL_X83_Y10_N18
\CPU|DP|multi|b[5]\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|multi|b\(5) = ( \switch~2_combout\ & ( \MEM|mem_rtl_0|auto_generated|ram_block1a5\ & ( ((\SW[5]~input_o\ & \CPU|state|WideOr5~2_combout\)) # (\CPU|DP|multi|b[5]~5_combout\) ) ) ) # ( !\switch~2_combout\ & ( 
-- \MEM|mem_rtl_0|auto_generated|ram_block1a5\ & ( (\CPU|state|WideOr5~2_combout\) # (\CPU|DP|multi|b[5]~5_combout\) ) ) ) # ( \switch~2_combout\ & ( !\MEM|mem_rtl_0|auto_generated|ram_block1a5\ & ( ((\SW[5]~input_o\ & \CPU|state|WideOr5~2_combout\)) # 
-- (\CPU|DP|multi|b[5]~5_combout\) ) ) ) # ( !\switch~2_combout\ & ( !\MEM|mem_rtl_0|auto_generated|ram_block1a5\ & ( \CPU|DP|multi|b[5]~5_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011111100110011111111110011001100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|DP|multi|ALT_INV_b[5]~5_combout\,
	datac => \ALT_INV_SW[5]~input_o\,
	datad => \CPU|state|ALT_INV_WideOr5~2_combout\,
	datae => \ALT_INV_switch~2_combout\,
	dataf => \MEM|mem_rtl_0|auto_generated|ALT_INV_ram_block1a5\,
	combout => \CPU|DP|multi|b\(5));

-- Location: LABCELL_X81_Y8_N57
\CPU|DP|REGFILE|writeR6|out[5]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|REGFILE|writeR6|out[5]~feeder_combout\ = ( \CPU|DP|multi|b\(5) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|DP|multi|ALT_INV_b\(5),
	combout => \CPU|DP|REGFILE|writeR6|out[5]~feeder_combout\);

-- Location: FF_X81_Y8_N58
\CPU|DP|REGFILE|writeR6|out[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|DP|REGFILE|writeR6|out[5]~feeder_combout\,
	ena => \CPU|DP|REGFILE|andss|out\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|writeR6|out\(5));

-- Location: LABCELL_X83_Y10_N0
\CPU|DP|REGFILE|writeR7|out[5]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|REGFILE|writeR7|out[5]~feeder_combout\ = ( \CPU|DP|multi|b\(5) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|DP|multi|ALT_INV_b\(5),
	combout => \CPU|DP|REGFILE|writeR7|out[5]~feeder_combout\);

-- Location: FF_X83_Y10_N1
\CPU|DP|REGFILE|writeR7|out[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|DP|REGFILE|writeR7|out[5]~feeder_combout\,
	ena => \CPU|DP|REGFILE|andss|out\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|writeR7|out\(5));

-- Location: FF_X85_Y8_N19
\CPU|DP|REGFILE|writeR3|out[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|DP|multi|b\(5),
	sload => VCC,
	ena => \CPU|DP|REGFILE|andss|out\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|writeR3|out\(5));

-- Location: FF_X84_Y8_N40
\CPU|DP|REGFILE|writeR1|out[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|DP|multi|b\(5),
	sload => VCC,
	ena => \CPU|DP|REGFILE|andss|out\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|writeR1|out\(5));

-- Location: FF_X83_Y10_N20
\CPU|DP|REGFILE|writeR5|out[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|DP|multi|b\(5),
	ena => \CPU|DP|REGFILE|andss|out\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|writeR5|out\(5));

-- Location: MLABCELL_X82_Y8_N39
\CPU|DP|REGFILE|MuxR|out[5]~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|REGFILE|MuxR|out[5]~17_combout\ = ( !\CPU|dec|ReadMux|b\(0) & ( \CPU|dec|ReadMux|b\(1) & ( (!\CPU|dec|ReadMux|b\(2) & ((\CPU|DP|REGFILE|writeR5|out\(5)))) # (\CPU|dec|ReadMux|b\(2) & (\CPU|DP|REGFILE|writeR1|out\(5))) ) ) ) # ( 
-- !\CPU|dec|ReadMux|b\(0) & ( !\CPU|dec|ReadMux|b\(1) & ( (\CPU|DP|REGFILE|writeR3|out\(5) & \CPU|dec|ReadMux|b\(2)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000000000000001111001100110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DP|REGFILE|writeR3|ALT_INV_out\(5),
	datab => \CPU|DP|REGFILE|writeR1|ALT_INV_out\(5),
	datac => \CPU|DP|REGFILE|writeR5|ALT_INV_out\(5),
	datad => \CPU|dec|ReadMux|ALT_INV_b\(2),
	datae => \CPU|dec|ReadMux|ALT_INV_b\(0),
	dataf => \CPU|dec|ReadMux|ALT_INV_b\(1),
	combout => \CPU|DP|REGFILE|MuxR|out[5]~17_combout\);

-- Location: FF_X84_Y10_N7
\CPU|DP|REGFILE|writeR2|out[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|DP|multi|b\(5),
	sload => VCC,
	ena => \CPU|DP|REGFILE|andss|out\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|writeR2|out\(5));

-- Location: FF_X84_Y6_N47
\CPU|DP|REGFILE|writeR4|out[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|DP|multi|b\(5),
	sload => VCC,
	ena => \CPU|DP|REGFILE|andss|out\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|writeR4|out\(5));

-- Location: FF_X82_Y10_N4
\CPU|DP|REGFILE|writeR0|out[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|DP|multi|b\(5),
	sload => VCC,
	ena => \CPU|DP|REGFILE|andss|out\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|writeR0|out\(5));

-- Location: LABCELL_X81_Y8_N51
\CPU|DP|REGFILE|MuxR|out[5]~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|REGFILE|MuxR|out[5]~16_combout\ = ( \CPU|dec|ReadMux|b\(0) & ( \CPU|dec|ReadMux|b\(1) & ( (!\CPU|dec|ReadMux|b\(2) & (\CPU|DP|REGFILE|writeR4|out\(5))) # (\CPU|dec|ReadMux|b\(2) & ((\CPU|DP|REGFILE|writeR0|out\(5)))) ) ) ) # ( 
-- \CPU|dec|ReadMux|b\(0) & ( !\CPU|dec|ReadMux|b\(1) & ( (\CPU|DP|REGFILE|writeR2|out\(5) & \CPU|dec|ReadMux|b\(2)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001010000010100000000000000000011000000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DP|REGFILE|writeR2|ALT_INV_out\(5),
	datab => \CPU|DP|REGFILE|writeR4|ALT_INV_out\(5),
	datac => \CPU|dec|ReadMux|ALT_INV_b\(2),
	datad => \CPU|DP|REGFILE|writeR0|ALT_INV_out\(5),
	datae => \CPU|dec|ReadMux|ALT_INV_b\(0),
	dataf => \CPU|dec|ReadMux|ALT_INV_b\(1),
	combout => \CPU|DP|REGFILE|MuxR|out[5]~16_combout\);

-- Location: MLABCELL_X82_Y7_N0
\CPU|DP|REGFILE|MuxR|out[5]\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|REGFILE|MuxR|out\(5) = ( \CPU|DP|REGFILE|MuxR|out[5]~16_combout\ & ( \CPU|DP|REGFILE|read_dec|ShiftLeft0~1_combout\ ) ) # ( !\CPU|DP|REGFILE|MuxR|out[5]~16_combout\ & ( \CPU|DP|REGFILE|read_dec|ShiftLeft0~1_combout\ & ( 
-- (((\CPU|DP|REGFILE|writeR6|out\(5) & \CPU|DP|REGFILE|read_dec|ShiftLeft0~0_combout\)) # (\CPU|DP|REGFILE|MuxR|out[5]~17_combout\)) # (\CPU|DP|REGFILE|writeR7|out\(5)) ) ) ) # ( \CPU|DP|REGFILE|MuxR|out[5]~16_combout\ & ( 
-- !\CPU|DP|REGFILE|read_dec|ShiftLeft0~1_combout\ ) ) # ( !\CPU|DP|REGFILE|MuxR|out[5]~16_combout\ & ( !\CPU|DP|REGFILE|read_dec|ShiftLeft0~1_combout\ & ( ((\CPU|DP|REGFILE|writeR6|out\(5) & \CPU|DP|REGFILE|read_dec|ShiftLeft0~0_combout\)) # 
-- (\CPU|DP|REGFILE|MuxR|out[5]~17_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000111111111111111111111111100011111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DP|REGFILE|writeR6|ALT_INV_out\(5),
	datab => \CPU|DP|REGFILE|read_dec|ALT_INV_ShiftLeft0~0_combout\,
	datac => \CPU|DP|REGFILE|writeR7|ALT_INV_out\(5),
	datad => \CPU|DP|REGFILE|MuxR|ALT_INV_out[5]~17_combout\,
	datae => \CPU|DP|REGFILE|MuxR|ALT_INV_out[5]~16_combout\,
	dataf => \CPU|DP|REGFILE|read_dec|ALT_INV_ShiftLeft0~1_combout\,
	combout => \CPU|DP|REGFILE|MuxR|out\(5));

-- Location: FF_X82_Y7_N2
\CPU|DP|pipeA|out[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|DP|REGFILE|MuxR|out\(5),
	ena => \CPU|state|WideOr9~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|pipeA|out\(5));

-- Location: MLABCELL_X82_Y9_N30
\CPU|DP|pipeB|out[4]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|pipeB|out[4]~feeder_combout\ = ( \CPU|DP|REGFILE|MuxR|out\(4) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|DP|REGFILE|MuxR|ALT_INV_out\(4),
	combout => \CPU|DP|pipeB|out[4]~feeder_combout\);

-- Location: FF_X82_Y9_N31
\CPU|DP|pipeB|out[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|DP|pipeB|out[4]~feeder_combout\,
	ena => \CPU|state|WideOr10~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|pipeB|out\(4));

-- Location: FF_X82_Y7_N44
\CPU|DP|pipeB|out[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|DP|REGFILE|MuxR|out\(5),
	sload => VCC,
	ena => \CPU|state|WideOr10~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|pipeB|out\(5));

-- Location: FF_X82_Y7_N8
\CPU|DP|pipeB|out[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|DP|REGFILE|MuxR|out\(6),
	sload => VCC,
	ena => \CPU|state|WideOr10~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|pipeB|out\(6));

-- Location: MLABCELL_X82_Y7_N9
\CPU|DP|Bin[5]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|Bin[5]~7_combout\ = ( \CPU|DP|Bin[2]~1_combout\ & ( \CPU|DP|Bin[2]~0_combout\ & ( \CPU|DP|pipeB|out\(4) ) ) ) # ( !\CPU|DP|Bin[2]~1_combout\ & ( \CPU|DP|Bin[2]~0_combout\ & ( \CPU|instreg|out\(4) ) ) ) # ( \CPU|DP|Bin[2]~1_combout\ & ( 
-- !\CPU|DP|Bin[2]~0_combout\ & ( \CPU|DP|pipeB|out\(6) ) ) ) # ( !\CPU|DP|Bin[2]~1_combout\ & ( !\CPU|DP|Bin[2]~0_combout\ & ( \CPU|DP|pipeB|out\(5) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011000011110000111100000000111111110101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DP|pipeB|ALT_INV_out\(4),
	datab => \CPU|DP|pipeB|ALT_INV_out\(5),
	datac => \CPU|DP|pipeB|ALT_INV_out\(6),
	datad => \CPU|instreg|ALT_INV_out\(4),
	datae => \CPU|DP|ALT_INV_Bin[2]~1_combout\,
	dataf => \CPU|DP|ALT_INV_Bin[2]~0_combout\,
	combout => \CPU|DP|Bin[5]~7_combout\);

-- Location: FF_X83_Y7_N38
\CPU|DP|pipeB|out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|DP|REGFILE|MuxR|out\(3),
	sload => VCC,
	ena => \CPU|state|WideOr10~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|pipeB|out\(3));

-- Location: MLABCELL_X82_Y7_N45
\CPU|DP|Bin[4]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|Bin[4]~6_combout\ = ( \CPU|DP|Bin[2]~1_combout\ & ( \CPU|DP|Bin[2]~0_combout\ & ( \CPU|DP|pipeB|out\(3) ) ) ) # ( !\CPU|DP|Bin[2]~1_combout\ & ( \CPU|DP|Bin[2]~0_combout\ & ( \CPU|instreg|out\(4) ) ) ) # ( \CPU|DP|Bin[2]~1_combout\ & ( 
-- !\CPU|DP|Bin[2]~0_combout\ & ( \CPU|DP|pipeB|out\(5) ) ) ) # ( !\CPU|DP|Bin[2]~1_combout\ & ( !\CPU|DP|Bin[2]~0_combout\ & ( \CPU|DP|pipeB|out\(4) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111001100110011001101010101010101010000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|instreg|ALT_INV_out\(4),
	datab => \CPU|DP|pipeB|ALT_INV_out\(5),
	datac => \CPU|DP|pipeB|ALT_INV_out\(3),
	datad => \CPU|DP|pipeB|ALT_INV_out\(4),
	datae => \CPU|DP|ALT_INV_Bin[2]~1_combout\,
	dataf => \CPU|DP|ALT_INV_Bin[2]~0_combout\,
	combout => \CPU|DP|Bin[4]~6_combout\);

-- Location: LABCELL_X85_Y10_N18
\CPU|DP|multi|b[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|multi|b[2]~2_combout\ = ( \CPU|state|Decoder0~5_combout\ & ( \CPU|state|WideOr4~2_combout\ & ( (\CPU|DP|pipeC|out\(2)) # (\CPU|instreg|out\(2)) ) ) ) # ( !\CPU|state|Decoder0~5_combout\ & ( \CPU|state|WideOr4~2_combout\ & ( \CPU|DP|pipeC|out\(2) ) 
-- ) ) # ( \CPU|state|Decoder0~5_combout\ & ( !\CPU|state|WideOr4~2_combout\ & ( \CPU|instreg|out\(2) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101010101010100001111000011110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|instreg|ALT_INV_out\(2),
	datac => \CPU|DP|pipeC|ALT_INV_out\(2),
	datae => \CPU|state|ALT_INV_Decoder0~5_combout\,
	dataf => \CPU|state|ALT_INV_WideOr4~2_combout\,
	combout => \CPU|DP|multi|b[2]~2_combout\);

-- Location: MLABCELL_X84_Y10_N21
\CPU|DP|multi|b[2]\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|multi|b\(2) = ( \MEM|mem_rtl_0|auto_generated|ram_block1a2\ & ( \switch~2_combout\ & ( ((\CPU|state|WideOr5~2_combout\ & \SW[2]~input_o\)) # (\CPU|DP|multi|b[2]~2_combout\) ) ) ) # ( !\MEM|mem_rtl_0|auto_generated|ram_block1a2\ & ( 
-- \switch~2_combout\ & ( ((\CPU|state|WideOr5~2_combout\ & \SW[2]~input_o\)) # (\CPU|DP|multi|b[2]~2_combout\) ) ) ) # ( \MEM|mem_rtl_0|auto_generated|ram_block1a2\ & ( !\switch~2_combout\ & ( (\CPU|DP|multi|b[2]~2_combout\) # 
-- (\CPU|state|WideOr5~2_combout\) ) ) ) # ( !\MEM|mem_rtl_0|auto_generated|ram_block1a2\ & ( !\switch~2_combout\ & ( \CPU|DP|multi|b[2]~2_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111010111110101111100011111000111110001111100011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|state|ALT_INV_WideOr5~2_combout\,
	datab => \ALT_INV_SW[2]~input_o\,
	datac => \CPU|DP|multi|ALT_INV_b[2]~2_combout\,
	datae => \MEM|mem_rtl_0|auto_generated|ALT_INV_ram_block1a2\,
	dataf => \ALT_INV_switch~2_combout\,
	combout => \CPU|DP|multi|b\(2));

-- Location: LABCELL_X80_Y8_N6
\CPU|DP|REGFILE|writeR6|out[2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|REGFILE|writeR6|out[2]~feeder_combout\ = ( \CPU|DP|multi|b\(2) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|DP|multi|ALT_INV_b\(2),
	combout => \CPU|DP|REGFILE|writeR6|out[2]~feeder_combout\);

-- Location: FF_X80_Y8_N7
\CPU|DP|REGFILE|writeR6|out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|DP|REGFILE|writeR6|out[2]~feeder_combout\,
	ena => \CPU|DP|REGFILE|andss|out\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|writeR6|out\(2));

-- Location: LABCELL_X85_Y9_N12
\CPU|DP|REGFILE|writeR3|out[2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|REGFILE|writeR3|out[2]~feeder_combout\ = ( \CPU|DP|multi|b\(2) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|DP|multi|ALT_INV_b\(2),
	combout => \CPU|DP|REGFILE|writeR3|out[2]~feeder_combout\);

-- Location: FF_X85_Y9_N13
\CPU|DP|REGFILE|writeR3|out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|DP|REGFILE|writeR3|out[2]~feeder_combout\,
	ena => \CPU|DP|REGFILE|andss|out\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|writeR3|out\(2));

-- Location: FF_X84_Y10_N22
\CPU|DP|REGFILE|writeR5|out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|DP|multi|b\(2),
	ena => \CPU|DP|REGFILE|andss|out\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|writeR5|out\(2));

-- Location: FF_X84_Y8_N8
\CPU|DP|REGFILE|writeR1|out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|DP|multi|b\(2),
	sload => VCC,
	ena => \CPU|DP|REGFILE|andss|out\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|writeR1|out\(2));

-- Location: MLABCELL_X84_Y8_N6
\CPU|DP|REGFILE|MuxR|out[2]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|REGFILE|MuxR|out[2]~11_combout\ = ( \CPU|DP|REGFILE|writeR1|out\(2) & ( \CPU|dec|ReadMux|b\(2) & ( (!\CPU|dec|ReadMux|b\(0) & ((\CPU|dec|ReadMux|b\(1)) # (\CPU|DP|REGFILE|writeR3|out\(2)))) ) ) ) # ( !\CPU|DP|REGFILE|writeR1|out\(2) & ( 
-- \CPU|dec|ReadMux|b\(2) & ( (\CPU|DP|REGFILE|writeR3|out\(2) & (!\CPU|dec|ReadMux|b\(0) & !\CPU|dec|ReadMux|b\(1))) ) ) ) # ( \CPU|DP|REGFILE|writeR1|out\(2) & ( !\CPU|dec|ReadMux|b\(2) & ( (\CPU|DP|REGFILE|writeR5|out\(2) & (!\CPU|dec|ReadMux|b\(0) & 
-- \CPU|dec|ReadMux|b\(1))) ) ) ) # ( !\CPU|DP|REGFILE|writeR1|out\(2) & ( !\CPU|dec|ReadMux|b\(2) & ( (\CPU|DP|REGFILE|writeR5|out\(2) & (!\CPU|dec|ReadMux|b\(0) & \CPU|dec|ReadMux|b\(1))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110000000000000011000001010000000000000101000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DP|REGFILE|writeR3|ALT_INV_out\(2),
	datab => \CPU|DP|REGFILE|writeR5|ALT_INV_out\(2),
	datac => \CPU|dec|ReadMux|ALT_INV_b\(0),
	datad => \CPU|dec|ReadMux|ALT_INV_b\(1),
	datae => \CPU|DP|REGFILE|writeR1|ALT_INV_out\(2),
	dataf => \CPU|dec|ReadMux|ALT_INV_b\(2),
	combout => \CPU|DP|REGFILE|MuxR|out[2]~11_combout\);

-- Location: FF_X83_Y10_N31
\CPU|DP|REGFILE|writeR7|out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|DP|multi|b\(2),
	sload => VCC,
	ena => \CPU|DP|REGFILE|andss|out\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|writeR7|out\(2));

-- Location: FF_X83_Y9_N29
\CPU|DP|REGFILE|writeR4|out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|DP|multi|b\(2),
	sload => VCC,
	ena => \CPU|DP|REGFILE|andss|out\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|writeR4|out\(2));

-- Location: FF_X84_Y10_N46
\CPU|DP|REGFILE|writeR2|out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|DP|multi|b\(2),
	sload => VCC,
	ena => \CPU|DP|REGFILE|andss|out\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|writeR2|out\(2));

-- Location: FF_X83_Y9_N8
\CPU|DP|REGFILE|writeR0|out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|DP|multi|b\(2),
	sload => VCC,
	ena => \CPU|DP|REGFILE|andss|out\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|writeR0|out\(2));

-- Location: LABCELL_X83_Y9_N6
\CPU|DP|REGFILE|MuxR|out[2]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|REGFILE|MuxR|out[2]~10_combout\ = ( \CPU|DP|REGFILE|writeR0|out\(2) & ( \CPU|dec|ReadMux|b\(1) & ( (\CPU|dec|ReadMux|b\(0) & ((\CPU|dec|ReadMux|b\(2)) # (\CPU|DP|REGFILE|writeR4|out\(2)))) ) ) ) # ( !\CPU|DP|REGFILE|writeR0|out\(2) & ( 
-- \CPU|dec|ReadMux|b\(1) & ( (\CPU|DP|REGFILE|writeR4|out\(2) & (!\CPU|dec|ReadMux|b\(2) & \CPU|dec|ReadMux|b\(0))) ) ) ) # ( \CPU|DP|REGFILE|writeR0|out\(2) & ( !\CPU|dec|ReadMux|b\(1) & ( (\CPU|DP|REGFILE|writeR2|out\(2) & (\CPU|dec|ReadMux|b\(2) & 
-- \CPU|dec|ReadMux|b\(0))) ) ) ) # ( !\CPU|DP|REGFILE|writeR0|out\(2) & ( !\CPU|dec|ReadMux|b\(1) & ( (\CPU|DP|REGFILE|writeR2|out\(2) & (\CPU|dec|ReadMux|b\(2) & \CPU|dec|ReadMux|b\(0))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000011000000000000001100000000010100000000000001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DP|REGFILE|writeR4|ALT_INV_out\(2),
	datab => \CPU|DP|REGFILE|writeR2|ALT_INV_out\(2),
	datac => \CPU|dec|ReadMux|ALT_INV_b\(2),
	datad => \CPU|dec|ReadMux|ALT_INV_b\(0),
	datae => \CPU|DP|REGFILE|writeR0|ALT_INV_out\(2),
	dataf => \CPU|dec|ReadMux|ALT_INV_b\(1),
	combout => \CPU|DP|REGFILE|MuxR|out[2]~10_combout\);

-- Location: MLABCELL_X84_Y8_N42
\CPU|DP|REGFILE|MuxR|out[2]\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|REGFILE|MuxR|out\(2) = ( \CPU|DP|REGFILE|read_dec|ShiftLeft0~0_combout\ & ( \CPU|DP|REGFILE|MuxR|out[2]~10_combout\ ) ) # ( !\CPU|DP|REGFILE|read_dec|ShiftLeft0~0_combout\ & ( \CPU|DP|REGFILE|MuxR|out[2]~10_combout\ ) ) # ( 
-- \CPU|DP|REGFILE|read_dec|ShiftLeft0~0_combout\ & ( !\CPU|DP|REGFILE|MuxR|out[2]~10_combout\ & ( (((\CPU|DP|REGFILE|writeR7|out\(2) & \CPU|DP|REGFILE|read_dec|ShiftLeft0~1_combout\)) # (\CPU|DP|REGFILE|MuxR|out[2]~11_combout\)) # 
-- (\CPU|DP|REGFILE|writeR6|out\(2)) ) ) ) # ( !\CPU|DP|REGFILE|read_dec|ShiftLeft0~0_combout\ & ( !\CPU|DP|REGFILE|MuxR|out[2]~10_combout\ & ( ((\CPU|DP|REGFILE|writeR7|out\(2) & \CPU|DP|REGFILE|read_dec|ShiftLeft0~1_combout\)) # 
-- (\CPU|DP|REGFILE|MuxR|out[2]~11_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100111111011101110111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DP|REGFILE|writeR6|ALT_INV_out\(2),
	datab => \CPU|DP|REGFILE|MuxR|ALT_INV_out[2]~11_combout\,
	datac => \CPU|DP|REGFILE|writeR7|ALT_INV_out\(2),
	datad => \CPU|DP|REGFILE|read_dec|ALT_INV_ShiftLeft0~1_combout\,
	datae => \CPU|DP|REGFILE|read_dec|ALT_INV_ShiftLeft0~0_combout\,
	dataf => \CPU|DP|REGFILE|MuxR|ALT_INV_out[2]~10_combout\,
	combout => \CPU|DP|REGFILE|MuxR|out\(2));

-- Location: FF_X83_Y7_N32
\CPU|DP|pipeB|out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|DP|REGFILE|MuxR|out\(2),
	sload => VCC,
	ena => \CPU|state|WideOr10~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|pipeB|out\(2));

-- Location: LABCELL_X83_Y7_N6
\CPU|DP|Bin[3]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|Bin[3]~5_combout\ = ( \CPU|DP|Bin[2]~1_combout\ & ( \CPU|DP|Bin[2]~0_combout\ & ( \CPU|DP|pipeB|out\(2) ) ) ) # ( !\CPU|DP|Bin[2]~1_combout\ & ( \CPU|DP|Bin[2]~0_combout\ & ( \CPU|instreg|out\(3) ) ) ) # ( \CPU|DP|Bin[2]~1_combout\ & ( 
-- !\CPU|DP|Bin[2]~0_combout\ & ( \CPU|DP|pipeB|out\(4) ) ) ) # ( !\CPU|DP|Bin[2]~1_combout\ & ( !\CPU|DP|Bin[2]~0_combout\ & ( \CPU|DP|pipeB|out\(3) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000011110000111100110011001100110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DP|pipeB|ALT_INV_out\(3),
	datab => \CPU|instreg|ALT_INV_out\(3),
	datac => \CPU|DP|pipeB|ALT_INV_out\(4),
	datad => \CPU|DP|pipeB|ALT_INV_out\(2),
	datae => \CPU|DP|ALT_INV_Bin[2]~1_combout\,
	dataf => \CPU|DP|ALT_INV_Bin[2]~0_combout\,
	combout => \CPU|DP|Bin[3]~5_combout\);

-- Location: LABCELL_X83_Y7_N39
\CPU|DP|Bin[2]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|Bin[2]~4_combout\ = ( \CPU|DP|Bin[2]~1_combout\ & ( \CPU|instreg|out\(2) & ( (!\CPU|DP|Bin[2]~0_combout\ & ((\CPU|DP|pipeB|out\(3)))) # (\CPU|DP|Bin[2]~0_combout\ & (\CPU|DP|pipeB|out\(1))) ) ) ) # ( !\CPU|DP|Bin[2]~1_combout\ & ( 
-- \CPU|instreg|out\(2) & ( (\CPU|DP|Bin[2]~0_combout\) # (\CPU|DP|pipeB|out\(2)) ) ) ) # ( \CPU|DP|Bin[2]~1_combout\ & ( !\CPU|instreg|out\(2) & ( (!\CPU|DP|Bin[2]~0_combout\ & ((\CPU|DP|pipeB|out\(3)))) # (\CPU|DP|Bin[2]~0_combout\ & 
-- (\CPU|DP|pipeB|out\(1))) ) ) ) # ( !\CPU|DP|Bin[2]~1_combout\ & ( !\CPU|instreg|out\(2) & ( (\CPU|DP|pipeB|out\(2) & !\CPU|DP|Bin[2]~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000000001011111010100111111001111110000010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DP|pipeB|ALT_INV_out\(1),
	datab => \CPU|DP|pipeB|ALT_INV_out\(2),
	datac => \CPU|DP|ALT_INV_Bin[2]~0_combout\,
	datad => \CPU|DP|pipeB|ALT_INV_out\(3),
	datae => \CPU|DP|ALT_INV_Bin[2]~1_combout\,
	dataf => \CPU|instreg|ALT_INV_out\(2),
	combout => \CPU|DP|Bin[2]~4_combout\);

-- Location: FF_X84_Y8_N44
\CPU|DP|pipeA|out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|DP|REGFILE|MuxR|out\(2),
	ena => \CPU|state|WideOr9~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|pipeA|out\(2));

-- Location: FF_X84_Y8_N2
\CPU|DP|pipeA|out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|DP|REGFILE|MuxR|out\(1),
	ena => \CPU|state|WideOr9~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|pipeA|out\(1));

-- Location: IOIBUF_X12_Y0_N18
\SW[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(0),
	o => \SW[0]~input_o\);

-- Location: LABCELL_X81_Y7_N54
\read_data[0]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \read_data[0]~7_combout\ = ( \MEM|mem_rtl_0|auto_generated|ram_block1a0~portbdataout\ & ( (!\switch~2_combout\) # (\SW[0]~input_o\) ) ) # ( !\MEM|mem_rtl_0|auto_generated|ram_block1a0~portbdataout\ & ( (\SW[0]~input_o\ & \switch~2_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010111110101111101011111010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[0]~input_o\,
	datac => \ALT_INV_switch~2_combout\,
	dataf => \MEM|mem_rtl_0|auto_generated|ALT_INV_ram_block1a0~portbdataout\,
	combout => \read_data[0]~7_combout\);

-- Location: FF_X81_Y7_N56
\CPU|instreg|out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \read_data[0]~7_combout\,
	ena => \CPU|state|WideOr18~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|instreg|out\(0));

-- Location: MLABCELL_X84_Y10_N30
\CPU|DP|multi|b[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|multi|b[0]~0_combout\ = ( \CPU|state|WideOr4~2_combout\ & ( ((\CPU|instreg|out\(0) & \CPU|state|Decoder0~5_combout\)) # (\CPU|DP|pipeC|out\(0)) ) ) # ( !\CPU|state|WideOr4~2_combout\ & ( (\CPU|instreg|out\(0) & \CPU|state|Decoder0~5_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100110011001111110011001100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|DP|pipeC|ALT_INV_out\(0),
	datac => \CPU|instreg|ALT_INV_out\(0),
	datad => \CPU|state|ALT_INV_Decoder0~5_combout\,
	dataf => \CPU|state|ALT_INV_WideOr4~2_combout\,
	combout => \CPU|DP|multi|b[0]~0_combout\);

-- Location: LABCELL_X83_Y10_N12
\CPU|DP|multi|b[0]\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|multi|b\(0) = ( \switch~2_combout\ & ( \MEM|mem_rtl_0|auto_generated|ram_block1a0~portbdataout\ & ( ((\SW[0]~input_o\ & \CPU|state|WideOr5~2_combout\)) # (\CPU|DP|multi|b[0]~0_combout\) ) ) ) # ( !\switch~2_combout\ & ( 
-- \MEM|mem_rtl_0|auto_generated|ram_block1a0~portbdataout\ & ( (\CPU|state|WideOr5~2_combout\) # (\CPU|DP|multi|b[0]~0_combout\) ) ) ) # ( \switch~2_combout\ & ( !\MEM|mem_rtl_0|auto_generated|ram_block1a0~portbdataout\ & ( ((\SW[0]~input_o\ & 
-- \CPU|state|WideOr5~2_combout\)) # (\CPU|DP|multi|b[0]~0_combout\) ) ) ) # ( !\switch~2_combout\ & ( !\MEM|mem_rtl_0|auto_generated|ram_block1a0~portbdataout\ & ( \CPU|DP|multi|b[0]~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110101111100001111111111110000111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[0]~input_o\,
	datac => \CPU|DP|multi|ALT_INV_b[0]~0_combout\,
	datad => \CPU|state|ALT_INV_WideOr5~2_combout\,
	datae => \ALT_INV_switch~2_combout\,
	dataf => \MEM|mem_rtl_0|auto_generated|ALT_INV_ram_block1a0~portbdataout\,
	combout => \CPU|DP|multi|b\(0));

-- Location: LABCELL_X83_Y10_N6
\CPU|DP|REGFILE|writeR7|out[0]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|REGFILE|writeR7|out[0]~feeder_combout\ = ( \CPU|DP|multi|b\(0) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|DP|multi|ALT_INV_b\(0),
	combout => \CPU|DP|REGFILE|writeR7|out[0]~feeder_combout\);

-- Location: FF_X83_Y10_N7
\CPU|DP|REGFILE|writeR7|out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|DP|REGFILE|writeR7|out[0]~feeder_combout\,
	ena => \CPU|DP|REGFILE|andss|out\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|writeR7|out\(0));

-- Location: FF_X83_Y10_N14
\CPU|DP|REGFILE|writeR5|out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|DP|multi|b\(0),
	ena => \CPU|DP|REGFILE|andss|out\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|writeR5|out\(0));

-- Location: MLABCELL_X82_Y8_N6
\CPU|DP|REGFILE|writeR1|out[0]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|REGFILE|writeR1|out[0]~feeder_combout\ = ( \CPU|DP|multi|b\(0) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|DP|multi|ALT_INV_b\(0),
	combout => \CPU|DP|REGFILE|writeR1|out[0]~feeder_combout\);

-- Location: FF_X82_Y8_N7
\CPU|DP|REGFILE|writeR1|out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|DP|REGFILE|writeR1|out[0]~feeder_combout\,
	ena => \CPU|DP|REGFILE|andss|out\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|writeR1|out\(0));

-- Location: FF_X82_Y10_N59
\CPU|DP|REGFILE|writeR3|out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|DP|multi|b\(0),
	sload => VCC,
	ena => \CPU|DP|REGFILE|andss|out\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|writeR3|out\(0));

-- Location: LABCELL_X81_Y7_N33
\CPU|DP|REGFILE|MuxR|out[0]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|REGFILE|MuxR|out[0]~7_combout\ = ( \CPU|dec|ReadMux|b\(2) & ( \CPU|dec|ReadMux|b\(1) & ( (\CPU|DP|REGFILE|writeR1|out\(0) & !\CPU|dec|ReadMux|b\(0)) ) ) ) # ( !\CPU|dec|ReadMux|b\(2) & ( \CPU|dec|ReadMux|b\(1) & ( (\CPU|DP|REGFILE|writeR5|out\(0) 
-- & !\CPU|dec|ReadMux|b\(0)) ) ) ) # ( \CPU|dec|ReadMux|b\(2) & ( !\CPU|dec|ReadMux|b\(1) & ( (!\CPU|dec|ReadMux|b\(0) & \CPU|DP|REGFILE|writeR3|out\(0)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111000001010000010100000011000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DP|REGFILE|writeR5|ALT_INV_out\(0),
	datab => \CPU|DP|REGFILE|writeR1|ALT_INV_out\(0),
	datac => \CPU|dec|ReadMux|ALT_INV_b\(0),
	datad => \CPU|DP|REGFILE|writeR3|ALT_INV_out\(0),
	datae => \CPU|dec|ReadMux|ALT_INV_b\(2),
	dataf => \CPU|dec|ReadMux|ALT_INV_b\(1),
	combout => \CPU|DP|REGFILE|MuxR|out[0]~7_combout\);

-- Location: LABCELL_X81_Y8_N27
\CPU|DP|REGFILE|writeR6|out[0]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|REGFILE|writeR6|out[0]~feeder_combout\ = ( \CPU|DP|multi|b\(0) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|DP|multi|ALT_INV_b\(0),
	combout => \CPU|DP|REGFILE|writeR6|out[0]~feeder_combout\);

-- Location: FF_X81_Y8_N29
\CPU|DP|REGFILE|writeR6|out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|DP|REGFILE|writeR6|out[0]~feeder_combout\,
	ena => \CPU|DP|REGFILE|andss|out\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|writeR6|out\(0));

-- Location: FF_X84_Y10_N43
\CPU|DP|REGFILE|writeR2|out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|DP|multi|b\(0),
	sload => VCC,
	ena => \CPU|DP|REGFILE|andss|out\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|writeR2|out\(0));

-- Location: FF_X84_Y6_N44
\CPU|DP|REGFILE|writeR4|out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|DP|multi|b\(0),
	sload => VCC,
	ena => \CPU|DP|REGFILE|andss|out\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|writeR4|out\(0));

-- Location: FF_X84_Y6_N50
\CPU|DP|REGFILE|writeR0|out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|DP|multi|b\(0),
	sload => VCC,
	ena => \CPU|DP|REGFILE|andss|out\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|writeR0|out\(0));

-- Location: MLABCELL_X84_Y6_N48
\CPU|DP|REGFILE|MuxR|out[0]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|REGFILE|MuxR|out[0]~6_combout\ = ( \CPU|DP|REGFILE|writeR0|out\(0) & ( \CPU|dec|ReadMux|b\(1) & ( (\CPU|dec|ReadMux|b\(0) & ((\CPU|dec|ReadMux|b\(2)) # (\CPU|DP|REGFILE|writeR4|out\(0)))) ) ) ) # ( !\CPU|DP|REGFILE|writeR0|out\(0) & ( 
-- \CPU|dec|ReadMux|b\(1) & ( (\CPU|DP|REGFILE|writeR4|out\(0) & (\CPU|dec|ReadMux|b\(0) & !\CPU|dec|ReadMux|b\(2))) ) ) ) # ( \CPU|DP|REGFILE|writeR0|out\(0) & ( !\CPU|dec|ReadMux|b\(1) & ( (\CPU|DP|REGFILE|writeR2|out\(0) & (\CPU|dec|ReadMux|b\(0) & 
-- \CPU|dec|ReadMux|b\(2))) ) ) ) # ( !\CPU|DP|REGFILE|writeR0|out\(0) & ( !\CPU|dec|ReadMux|b\(1) & ( (\CPU|DP|REGFILE|writeR2|out\(0) & (\CPU|dec|ReadMux|b\(0) & \CPU|dec|ReadMux|b\(2))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000101000000000000010100000011000000000000001100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DP|REGFILE|writeR2|ALT_INV_out\(0),
	datab => \CPU|DP|REGFILE|writeR4|ALT_INV_out\(0),
	datac => \CPU|dec|ReadMux|ALT_INV_b\(0),
	datad => \CPU|dec|ReadMux|ALT_INV_b\(2),
	datae => \CPU|DP|REGFILE|writeR0|ALT_INV_out\(0),
	dataf => \CPU|dec|ReadMux|ALT_INV_b\(1),
	combout => \CPU|DP|REGFILE|MuxR|out[0]~6_combout\);

-- Location: MLABCELL_X82_Y7_N33
\CPU|DP|REGFILE|MuxR|out[0]\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|REGFILE|MuxR|out\(0) = ( \CPU|DP|REGFILE|read_dec|ShiftLeft0~1_combout\ & ( \CPU|DP|REGFILE|MuxR|out[0]~6_combout\ ) ) # ( !\CPU|DP|REGFILE|read_dec|ShiftLeft0~1_combout\ & ( \CPU|DP|REGFILE|MuxR|out[0]~6_combout\ ) ) # ( 
-- \CPU|DP|REGFILE|read_dec|ShiftLeft0~1_combout\ & ( !\CPU|DP|REGFILE|MuxR|out[0]~6_combout\ & ( (((\CPU|DP|REGFILE|read_dec|ShiftLeft0~0_combout\ & \CPU|DP|REGFILE|writeR6|out\(0))) # (\CPU|DP|REGFILE|MuxR|out[0]~7_combout\)) # 
-- (\CPU|DP|REGFILE|writeR7|out\(0)) ) ) ) # ( !\CPU|DP|REGFILE|read_dec|ShiftLeft0~1_combout\ & ( !\CPU|DP|REGFILE|MuxR|out[0]~6_combout\ & ( ((\CPU|DP|REGFILE|read_dec|ShiftLeft0~0_combout\ & \CPU|DP|REGFILE|writeR6|out\(0))) # 
-- (\CPU|DP|REGFILE|MuxR|out[0]~7_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100111111011101110111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DP|REGFILE|writeR7|ALT_INV_out\(0),
	datab => \CPU|DP|REGFILE|MuxR|ALT_INV_out[0]~7_combout\,
	datac => \CPU|DP|REGFILE|read_dec|ALT_INV_ShiftLeft0~0_combout\,
	datad => \CPU|DP|REGFILE|writeR6|ALT_INV_out\(0),
	datae => \CPU|DP|REGFILE|read_dec|ALT_INV_ShiftLeft0~1_combout\,
	dataf => \CPU|DP|REGFILE|MuxR|ALT_INV_out[0]~6_combout\,
	combout => \CPU|DP|REGFILE|MuxR|out\(0));

-- Location: FF_X82_Y7_N38
\CPU|DP|pipeB|out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|DP|REGFILE|MuxR|out\(0),
	sload => VCC,
	ena => \CPU|state|WideOr10~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|pipeB|out\(0));

-- Location: LABCELL_X83_Y7_N15
\CPU|DP|Bin[0]~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|Bin[0]~17_combout\ = ( !\CPU|instreg|out\(4) & ( (!\CPU|state|bsel~2_combout\ & (\CPU|DP|pipeB|out\(0) & (((!\CPU|instreg|out\(3))) # (\CPU|shiftavoid~combout\)))) # (\CPU|state|bsel~2_combout\ & ((((\CPU|instreg|out\(0)))))) ) ) # ( 
-- \CPU|instreg|out\(4) & ( (!\CPU|state|bsel~2_combout\ & ((!\CPU|shiftavoid~combout\ & (((\CPU|DP|pipeB|out\(1))))) # (\CPU|shiftavoid~combout\ & (\CPU|DP|pipeB|out\(0))))) # (\CPU|state|bsel~2_combout\ & ((((\CPU|instreg|out\(0)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0011000100110001000110110001101100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|ALT_INV_shiftavoid~combout\,
	datab => \CPU|DP|pipeB|ALT_INV_out\(0),
	datac => \CPU|DP|pipeB|ALT_INV_out\(1),
	datad => \CPU|instreg|ALT_INV_out\(0),
	datae => \CPU|instreg|ALT_INV_out\(4),
	dataf => \CPU|state|ALT_INV_bsel~2_combout\,
	datag => \CPU|instreg|ALT_INV_out\(3),
	combout => \CPU|DP|Bin[0]~17_combout\);

-- Location: FF_X82_Y7_N22
\CPU|DP|pipeA|out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|DP|REGFILE|MuxR|out\(0),
	sload => VCC,
	ena => \CPU|state|WideOr9~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|pipeA|out\(0));

-- Location: MLABCELL_X82_Y6_N0
\CPU|DP|logic|Add0~66\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|logic|Add0~66_cout\ = CARRY(( \CPU|instreg|out[11]~DUPLICATE_q\ ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|instreg|ALT_INV_out[11]~DUPLICATE_q\,
	cin => GND,
	cout => \CPU|DP|logic|Add0~66_cout\);

-- Location: MLABCELL_X82_Y6_N3
\CPU|DP|logic|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|logic|Add0~5_sumout\ = SUM(( !\CPU|instreg|out[11]~DUPLICATE_q\ $ (!\CPU|DP|Bin[0]~17_combout\) ) + ( (\CPU|DP|pipeA|out\(0) & ((!\CPU|state|WideOr11~1_combout\) # (\CPU|state|STATE|next_out\(3)))) ) + ( \CPU|DP|logic|Add0~66_cout\ ))
-- \CPU|DP|logic|Add0~6\ = CARRY(( !\CPU|instreg|out[11]~DUPLICATE_q\ $ (!\CPU|DP|Bin[0]~17_combout\) ) + ( (\CPU|DP|pipeA|out\(0) & ((!\CPU|state|WideOr11~1_combout\) # (\CPU|state|STATE|next_out\(3)))) ) + ( \CPU|DP|logic|Add0~66_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000101000000000000000000011001111001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|state|STATE|ALT_INV_next_out\(3),
	datab => \CPU|instreg|ALT_INV_out[11]~DUPLICATE_q\,
	datac => \CPU|state|ALT_INV_WideOr11~1_combout\,
	datad => \CPU|DP|ALT_INV_Bin[0]~17_combout\,
	dataf => \CPU|DP|pipeA|ALT_INV_out\(0),
	cin => \CPU|DP|logic|Add0~66_cout\,
	sumout => \CPU|DP|logic|Add0~5_sumout\,
	cout => \CPU|DP|logic|Add0~6\);

-- Location: MLABCELL_X82_Y6_N6
\CPU|DP|logic|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|logic|Add0~9_sumout\ = SUM(( !\CPU|instreg|out[11]~DUPLICATE_q\ $ (!\CPU|DP|Bin[1]~3_combout\) ) + ( (\CPU|DP|pipeA|out\(1) & ((!\CPU|state|WideOr11~1_combout\) # (\CPU|state|STATE|next_out\(3)))) ) + ( \CPU|DP|logic|Add0~6\ ))
-- \CPU|DP|logic|Add0~10\ = CARRY(( !\CPU|instreg|out[11]~DUPLICATE_q\ $ (!\CPU|DP|Bin[1]~3_combout\) ) + ( (\CPU|DP|pipeA|out\(1) & ((!\CPU|state|WideOr11~1_combout\) # (\CPU|state|STATE|next_out\(3)))) ) + ( \CPU|DP|logic|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000101000000000000000000011001111001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|state|STATE|ALT_INV_next_out\(3),
	datab => \CPU|instreg|ALT_INV_out[11]~DUPLICATE_q\,
	datac => \CPU|state|ALT_INV_WideOr11~1_combout\,
	datad => \CPU|DP|ALT_INV_Bin[1]~3_combout\,
	dataf => \CPU|DP|pipeA|ALT_INV_out\(1),
	cin => \CPU|DP|logic|Add0~6\,
	sumout => \CPU|DP|logic|Add0~9_sumout\,
	cout => \CPU|DP|logic|Add0~10\);

-- Location: MLABCELL_X82_Y6_N9
\CPU|DP|logic|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|logic|Add0~13_sumout\ = SUM(( !\CPU|instreg|out[11]~DUPLICATE_q\ $ (!\CPU|DP|Bin[2]~4_combout\) ) + ( (\CPU|DP|pipeA|out\(2) & ((!\CPU|state|WideOr11~1_combout\) # (\CPU|state|STATE|next_out\(3)))) ) + ( \CPU|DP|logic|Add0~10\ ))
-- \CPU|DP|logic|Add0~14\ = CARRY(( !\CPU|instreg|out[11]~DUPLICATE_q\ $ (!\CPU|DP|Bin[2]~4_combout\) ) + ( (\CPU|DP|pipeA|out\(2) & ((!\CPU|state|WideOr11~1_combout\) # (\CPU|state|STATE|next_out\(3)))) ) + ( \CPU|DP|logic|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000101000000000000000000011001111001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|state|STATE|ALT_INV_next_out\(3),
	datab => \CPU|instreg|ALT_INV_out[11]~DUPLICATE_q\,
	datac => \CPU|state|ALT_INV_WideOr11~1_combout\,
	datad => \CPU|DP|ALT_INV_Bin[2]~4_combout\,
	dataf => \CPU|DP|pipeA|ALT_INV_out\(2),
	cin => \CPU|DP|logic|Add0~10\,
	sumout => \CPU|DP|logic|Add0~13_sumout\,
	cout => \CPU|DP|logic|Add0~14\);

-- Location: MLABCELL_X82_Y6_N12
\CPU|DP|logic|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|logic|Add0~17_sumout\ = SUM(( (\CPU|DP|pipeA|out\(3) & ((!\CPU|state|WideOr11~1_combout\) # (\CPU|state|STATE|next_out\(3)))) ) + ( !\CPU|instreg|out[11]~DUPLICATE_q\ $ (!\CPU|DP|Bin[3]~5_combout\) ) + ( \CPU|DP|logic|Add0~14\ ))
-- \CPU|DP|logic|Add0~18\ = CARRY(( (\CPU|DP|pipeA|out\(3) & ((!\CPU|state|WideOr11~1_combout\) # (\CPU|state|STATE|next_out\(3)))) ) + ( !\CPU|instreg|out[11]~DUPLICATE_q\ $ (!\CPU|DP|Bin[3]~5_combout\) ) + ( \CPU|DP|logic|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011000011001100000000000000000000000011110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|state|STATE|ALT_INV_next_out\(3),
	datab => \CPU|instreg|ALT_INV_out[11]~DUPLICATE_q\,
	datac => \CPU|state|ALT_INV_WideOr11~1_combout\,
	datad => \CPU|DP|pipeA|ALT_INV_out\(3),
	dataf => \CPU|DP|ALT_INV_Bin[3]~5_combout\,
	cin => \CPU|DP|logic|Add0~14\,
	sumout => \CPU|DP|logic|Add0~17_sumout\,
	cout => \CPU|DP|logic|Add0~18\);

-- Location: MLABCELL_X82_Y6_N15
\CPU|DP|logic|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|logic|Add0~21_sumout\ = SUM(( (\CPU|DP|pipeA|out\(4) & ((!\CPU|state|WideOr11~1_combout\) # (\CPU|state|STATE|next_out\(3)))) ) + ( !\CPU|instreg|out[11]~DUPLICATE_q\ $ (!\CPU|DP|Bin[4]~6_combout\) ) + ( \CPU|DP|logic|Add0~18\ ))
-- \CPU|DP|logic|Add0~22\ = CARRY(( (\CPU|DP|pipeA|out\(4) & ((!\CPU|state|WideOr11~1_combout\) # (\CPU|state|STATE|next_out\(3)))) ) + ( !\CPU|instreg|out[11]~DUPLICATE_q\ $ (!\CPU|DP|Bin[4]~6_combout\) ) + ( \CPU|DP|logic|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011000011001100000000000000000000000011110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|state|STATE|ALT_INV_next_out\(3),
	datab => \CPU|instreg|ALT_INV_out[11]~DUPLICATE_q\,
	datac => \CPU|state|ALT_INV_WideOr11~1_combout\,
	datad => \CPU|DP|pipeA|ALT_INV_out\(4),
	dataf => \CPU|DP|ALT_INV_Bin[4]~6_combout\,
	cin => \CPU|DP|logic|Add0~18\,
	sumout => \CPU|DP|logic|Add0~21_sumout\,
	cout => \CPU|DP|logic|Add0~22\);

-- Location: MLABCELL_X82_Y6_N18
\CPU|DP|logic|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|logic|Add0~25_sumout\ = SUM(( (\CPU|DP|pipeA|out\(5) & ((!\CPU|state|WideOr11~1_combout\) # (\CPU|state|STATE|next_out\(3)))) ) + ( !\CPU|instreg|out[11]~DUPLICATE_q\ $ (!\CPU|DP|Bin[5]~7_combout\) ) + ( \CPU|DP|logic|Add0~22\ ))
-- \CPU|DP|logic|Add0~26\ = CARRY(( (\CPU|DP|pipeA|out\(5) & ((!\CPU|state|WideOr11~1_combout\) # (\CPU|state|STATE|next_out\(3)))) ) + ( !\CPU|instreg|out[11]~DUPLICATE_q\ $ (!\CPU|DP|Bin[5]~7_combout\) ) + ( \CPU|DP|logic|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011000011001100000000000000000000000011110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|state|STATE|ALT_INV_next_out\(3),
	datab => \CPU|instreg|ALT_INV_out[11]~DUPLICATE_q\,
	datac => \CPU|state|ALT_INV_WideOr11~1_combout\,
	datad => \CPU|DP|pipeA|ALT_INV_out\(5),
	dataf => \CPU|DP|ALT_INV_Bin[5]~7_combout\,
	cin => \CPU|DP|logic|Add0~22\,
	sumout => \CPU|DP|logic|Add0~25_sumout\,
	cout => \CPU|DP|logic|Add0~26\);

-- Location: MLABCELL_X82_Y6_N21
\CPU|DP|logic|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|logic|Add0~29_sumout\ = SUM(( !\CPU|instreg|out[11]~DUPLICATE_q\ $ (!\CPU|DP|Bin[6]~8_combout\) ) + ( (\CPU|DP|pipeA|out\(6) & ((!\CPU|state|WideOr11~1_combout\) # (\CPU|state|STATE|next_out\(3)))) ) + ( \CPU|DP|logic|Add0~26\ ))
-- \CPU|DP|logic|Add0~30\ = CARRY(( !\CPU|instreg|out[11]~DUPLICATE_q\ $ (!\CPU|DP|Bin[6]~8_combout\) ) + ( (\CPU|DP|pipeA|out\(6) & ((!\CPU|state|WideOr11~1_combout\) # (\CPU|state|STATE|next_out\(3)))) ) + ( \CPU|DP|logic|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000101000000000000000000011001111001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|state|STATE|ALT_INV_next_out\(3),
	datab => \CPU|instreg|ALT_INV_out[11]~DUPLICATE_q\,
	datac => \CPU|state|ALT_INV_WideOr11~1_combout\,
	datad => \CPU|DP|ALT_INV_Bin[6]~8_combout\,
	dataf => \CPU|DP|pipeA|ALT_INV_out\(6),
	cin => \CPU|DP|logic|Add0~26\,
	sumout => \CPU|DP|logic|Add0~29_sumout\,
	cout => \CPU|DP|logic|Add0~30\);

-- Location: MLABCELL_X82_Y6_N24
\CPU|DP|logic|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|logic|Add0~33_sumout\ = SUM(( !\CPU|instreg|out[11]~DUPLICATE_q\ $ (!\CPU|DP|Bin[7]~9_combout\) ) + ( (\CPU|DP|pipeA|out\(7) & ((!\CPU|state|WideOr11~1_combout\) # (\CPU|state|STATE|next_out\(3)))) ) + ( \CPU|DP|logic|Add0~30\ ))
-- \CPU|DP|logic|Add0~34\ = CARRY(( !\CPU|instreg|out[11]~DUPLICATE_q\ $ (!\CPU|DP|Bin[7]~9_combout\) ) + ( (\CPU|DP|pipeA|out\(7) & ((!\CPU|state|WideOr11~1_combout\) # (\CPU|state|STATE|next_out\(3)))) ) + ( \CPU|DP|logic|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000101000000000000000000011001111001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|state|STATE|ALT_INV_next_out\(3),
	datab => \CPU|instreg|ALT_INV_out[11]~DUPLICATE_q\,
	datac => \CPU|state|ALT_INV_WideOr11~1_combout\,
	datad => \CPU|DP|ALT_INV_Bin[7]~9_combout\,
	dataf => \CPU|DP|pipeA|ALT_INV_out\(7),
	cin => \CPU|DP|logic|Add0~30\,
	sumout => \CPU|DP|logic|Add0~33_sumout\,
	cout => \CPU|DP|logic|Add0~34\);

-- Location: MLABCELL_X82_Y6_N27
\CPU|DP|logic|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|logic|Add0~1_sumout\ = SUM(( !\CPU|instreg|out[11]~DUPLICATE_q\ $ (!\CPU|DP|Bin[8]~2_combout\) ) + ( (\CPU|DP|pipeA|out\(8) & ((!\CPU|state|WideOr11~1_combout\) # (\CPU|state|STATE|next_out\(3)))) ) + ( \CPU|DP|logic|Add0~34\ ))
-- \CPU|DP|logic|Add0~2\ = CARRY(( !\CPU|instreg|out[11]~DUPLICATE_q\ $ (!\CPU|DP|Bin[8]~2_combout\) ) + ( (\CPU|DP|pipeA|out\(8) & ((!\CPU|state|WideOr11~1_combout\) # (\CPU|state|STATE|next_out\(3)))) ) + ( \CPU|DP|logic|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000101000000000000000000011001111001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|state|STATE|ALT_INV_next_out\(3),
	datab => \CPU|instreg|ALT_INV_out[11]~DUPLICATE_q\,
	datac => \CPU|state|ALT_INV_WideOr11~1_combout\,
	datad => \CPU|DP|ALT_INV_Bin[8]~2_combout\,
	dataf => \CPU|DP|pipeA|ALT_INV_out\(8),
	cin => \CPU|DP|logic|Add0~34\,
	sumout => \CPU|DP|logic|Add0~1_sumout\,
	cout => \CPU|DP|logic|Add0~2\);

-- Location: MLABCELL_X82_Y6_N30
\CPU|DP|logic|Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|logic|Add0~37_sumout\ = SUM(( (\CPU|DP|pipeA|out\(9) & ((!\CPU|state|WideOr11~1_combout\) # (\CPU|state|STATE|next_out\(3)))) ) + ( !\CPU|instreg|out[11]~DUPLICATE_q\ $ (!\CPU|DP|Bin[9]~10_combout\) ) + ( \CPU|DP|logic|Add0~2\ ))
-- \CPU|DP|logic|Add0~38\ = CARRY(( (\CPU|DP|pipeA|out\(9) & ((!\CPU|state|WideOr11~1_combout\) # (\CPU|state|STATE|next_out\(3)))) ) + ( !\CPU|instreg|out[11]~DUPLICATE_q\ $ (!\CPU|DP|Bin[9]~10_combout\) ) + ( \CPU|DP|logic|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011000011001100000000000000000000000011110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|state|STATE|ALT_INV_next_out\(3),
	datab => \CPU|instreg|ALT_INV_out[11]~DUPLICATE_q\,
	datac => \CPU|state|ALT_INV_WideOr11~1_combout\,
	datad => \CPU|DP|pipeA|ALT_INV_out\(9),
	dataf => \CPU|DP|ALT_INV_Bin[9]~10_combout\,
	cin => \CPU|DP|logic|Add0~2\,
	sumout => \CPU|DP|logic|Add0~37_sumout\,
	cout => \CPU|DP|logic|Add0~38\);

-- Location: MLABCELL_X82_Y6_N33
\CPU|DP|logic|Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|logic|Add0~41_sumout\ = SUM(( !\CPU|instreg|out[11]~DUPLICATE_q\ $ (!\CPU|DP|Bin[10]~11_combout\) ) + ( (\CPU|DP|pipeA|out\(10) & ((!\CPU|state|WideOr11~1_combout\) # (\CPU|state|STATE|next_out\(3)))) ) + ( \CPU|DP|logic|Add0~38\ ))
-- \CPU|DP|logic|Add0~42\ = CARRY(( !\CPU|instreg|out[11]~DUPLICATE_q\ $ (!\CPU|DP|Bin[10]~11_combout\) ) + ( (\CPU|DP|pipeA|out\(10) & ((!\CPU|state|WideOr11~1_combout\) # (\CPU|state|STATE|next_out\(3)))) ) + ( \CPU|DP|logic|Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000101000000000000000000011001111001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|state|STATE|ALT_INV_next_out\(3),
	datab => \CPU|instreg|ALT_INV_out[11]~DUPLICATE_q\,
	datac => \CPU|state|ALT_INV_WideOr11~1_combout\,
	datad => \CPU|DP|ALT_INV_Bin[10]~11_combout\,
	dataf => \CPU|DP|pipeA|ALT_INV_out\(10),
	cin => \CPU|DP|logic|Add0~38\,
	sumout => \CPU|DP|logic|Add0~41_sumout\,
	cout => \CPU|DP|logic|Add0~42\);

-- Location: MLABCELL_X82_Y6_N36
\CPU|DP|logic|Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|logic|Add0~45_sumout\ = SUM(( !\CPU|instreg|out[11]~DUPLICATE_q\ $ (!\CPU|DP|Bin[11]~12_combout\) ) + ( (\CPU|DP|pipeA|out\(11) & ((!\CPU|state|WideOr11~1_combout\) # (\CPU|state|STATE|next_out\(3)))) ) + ( \CPU|DP|logic|Add0~42\ ))
-- \CPU|DP|logic|Add0~46\ = CARRY(( !\CPU|instreg|out[11]~DUPLICATE_q\ $ (!\CPU|DP|Bin[11]~12_combout\) ) + ( (\CPU|DP|pipeA|out\(11) & ((!\CPU|state|WideOr11~1_combout\) # (\CPU|state|STATE|next_out\(3)))) ) + ( \CPU|DP|logic|Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000101000000000000000000011001111001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|state|STATE|ALT_INV_next_out\(3),
	datab => \CPU|instreg|ALT_INV_out[11]~DUPLICATE_q\,
	datac => \CPU|state|ALT_INV_WideOr11~1_combout\,
	datad => \CPU|DP|ALT_INV_Bin[11]~12_combout\,
	dataf => \CPU|DP|pipeA|ALT_INV_out\(11),
	cin => \CPU|DP|logic|Add0~42\,
	sumout => \CPU|DP|logic|Add0~45_sumout\,
	cout => \CPU|DP|logic|Add0~46\);

-- Location: MLABCELL_X82_Y6_N39
\CPU|DP|logic|Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|logic|Add0~49_sumout\ = SUM(( !\CPU|instreg|out[11]~DUPLICATE_q\ $ (!\CPU|DP|Bin[12]~13_combout\) ) + ( (\CPU|DP|pipeA|out\(12) & ((!\CPU|state|WideOr11~1_combout\) # (\CPU|state|STATE|next_out\(3)))) ) + ( \CPU|DP|logic|Add0~46\ ))
-- \CPU|DP|logic|Add0~50\ = CARRY(( !\CPU|instreg|out[11]~DUPLICATE_q\ $ (!\CPU|DP|Bin[12]~13_combout\) ) + ( (\CPU|DP|pipeA|out\(12) & ((!\CPU|state|WideOr11~1_combout\) # (\CPU|state|STATE|next_out\(3)))) ) + ( \CPU|DP|logic|Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000101000000000000000000011001111001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|state|STATE|ALT_INV_next_out\(3),
	datab => \CPU|instreg|ALT_INV_out[11]~DUPLICATE_q\,
	datac => \CPU|state|ALT_INV_WideOr11~1_combout\,
	datad => \CPU|DP|ALT_INV_Bin[12]~13_combout\,
	dataf => \CPU|DP|pipeA|ALT_INV_out\(12),
	cin => \CPU|DP|logic|Add0~46\,
	sumout => \CPU|DP|logic|Add0~49_sumout\,
	cout => \CPU|DP|logic|Add0~50\);

-- Location: MLABCELL_X82_Y6_N42
\CPU|DP|logic|Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|logic|Add0~53_sumout\ = SUM(( (\CPU|DP|pipeA|out\(13) & ((!\CPU|state|WideOr11~1_combout\) # (\CPU|state|STATE|next_out\(3)))) ) + ( !\CPU|instreg|out[11]~DUPLICATE_q\ $ (!\CPU|DP|Bin[13]~14_combout\) ) + ( \CPU|DP|logic|Add0~50\ ))
-- \CPU|DP|logic|Add0~54\ = CARRY(( (\CPU|DP|pipeA|out\(13) & ((!\CPU|state|WideOr11~1_combout\) # (\CPU|state|STATE|next_out\(3)))) ) + ( !\CPU|instreg|out[11]~DUPLICATE_q\ $ (!\CPU|DP|Bin[13]~14_combout\) ) + ( \CPU|DP|logic|Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011000011001100000000000000000000000011110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|state|STATE|ALT_INV_next_out\(3),
	datab => \CPU|instreg|ALT_INV_out[11]~DUPLICATE_q\,
	datac => \CPU|state|ALT_INV_WideOr11~1_combout\,
	datad => \CPU|DP|pipeA|ALT_INV_out\(13),
	dataf => \CPU|DP|ALT_INV_Bin[13]~14_combout\,
	cin => \CPU|DP|logic|Add0~50\,
	sumout => \CPU|DP|logic|Add0~53_sumout\,
	cout => \CPU|DP|logic|Add0~54\);

-- Location: MLABCELL_X82_Y6_N45
\CPU|DP|logic|Add0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|logic|Add0~57_sumout\ = SUM(( !\CPU|instreg|out[11]~DUPLICATE_q\ $ (!\CPU|DP|Bin[14]~15_combout\) ) + ( (\CPU|DP|pipeA|out\(14) & ((!\CPU|state|WideOr11~1_combout\) # (\CPU|state|STATE|next_out\(3)))) ) + ( \CPU|DP|logic|Add0~54\ ))
-- \CPU|DP|logic|Add0~58\ = CARRY(( !\CPU|instreg|out[11]~DUPLICATE_q\ $ (!\CPU|DP|Bin[14]~15_combout\) ) + ( (\CPU|DP|pipeA|out\(14) & ((!\CPU|state|WideOr11~1_combout\) # (\CPU|state|STATE|next_out\(3)))) ) + ( \CPU|DP|logic|Add0~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000101000000000000000000011001111001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|state|STATE|ALT_INV_next_out\(3),
	datab => \CPU|instreg|ALT_INV_out[11]~DUPLICATE_q\,
	datac => \CPU|state|ALT_INV_WideOr11~1_combout\,
	datad => \CPU|DP|ALT_INV_Bin[14]~15_combout\,
	dataf => \CPU|DP|pipeA|ALT_INV_out\(14),
	cin => \CPU|DP|logic|Add0~54\,
	sumout => \CPU|DP|logic|Add0~57_sumout\,
	cout => \CPU|DP|logic|Add0~58\);

-- Location: MLABCELL_X82_Y6_N48
\CPU|DP|logic|Add0~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|logic|Add0~61_sumout\ = SUM(( (\CPU|DP|pipeA|out\(15) & ((!\CPU|state|WideOr11~1_combout\) # (\CPU|state|STATE|next_out\(3)))) ) + ( !\CPU|instreg|out[11]~DUPLICATE_q\ $ (!\CPU|DP|Bin[15]~16_combout\) ) + ( \CPU|DP|logic|Add0~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011000011001100000000000000000000000011110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|state|STATE|ALT_INV_next_out\(3),
	datab => \CPU|instreg|ALT_INV_out[11]~DUPLICATE_q\,
	datac => \CPU|state|ALT_INV_WideOr11~1_combout\,
	datad => \CPU|DP|pipeA|ALT_INV_out\(15),
	dataf => \CPU|DP|ALT_INV_Bin[15]~16_combout\,
	cin => \CPU|DP|logic|Add0~58\,
	sumout => \CPU|DP|logic|Add0~61_sumout\);

-- Location: MLABCELL_X82_Y7_N18
\CPU|DP|logic|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|logic|Mux0~0_combout\ = (!\CPU|instreg|out[11]~DUPLICATE_q\ & ((!\CPU|state|WideOr11~1_combout\) # (\CPU|state|STATE|next_out\(3))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101000001010101010100000101010101010000010101010101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|instreg|ALT_INV_out[11]~DUPLICATE_q\,
	datac => \CPU|state|STATE|ALT_INV_next_out\(3),
	datad => \CPU|state|ALT_INV_WideOr11~1_combout\,
	combout => \CPU|DP|logic|Mux0~0_combout\);

-- Location: LABCELL_X81_Y6_N39
\CPU|DP|logic|Mux0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|logic|Mux0~1_combout\ = ( \CPU|DP|Bin[15]~16_combout\ & ( (\CPU|DP|pipeA|out\(15) & \CPU|DP|logic|Mux0~0_combout\) ) ) # ( !\CPU|DP|Bin[15]~16_combout\ & ( \CPU|instreg|out[11]~DUPLICATE_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000010101010000000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DP|pipeA|ALT_INV_out\(15),
	datac => \CPU|instreg|ALT_INV_out[11]~DUPLICATE_q\,
	datad => \CPU|DP|logic|ALT_INV_Mux0~0_combout\,
	dataf => \CPU|DP|ALT_INV_Bin[15]~16_combout\,
	combout => \CPU|DP|logic|Mux0~1_combout\);

-- Location: MLABCELL_X82_Y10_N15
\CPU|state|WideOr12~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|state|WideOr12~0_combout\ = ( !\CPU|state|STATE|next_out\(3) & ( \CPU|state|STATE|next_out\(2) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|state|STATE|ALT_INV_next_out\(2),
	dataf => \CPU|state|STATE|ALT_INV_next_out\(3),
	combout => \CPU|state|WideOr12~0_combout\);

-- Location: MLABCELL_X82_Y10_N27
\CPU|state|WideOr12~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|state|WideOr12~3_combout\ = (!\CPU|state|STATE|next_out\(1) & ((!\CPU|instreg|out[15]~DUPLICATE_q\ & (\CPU|instreg|out[13]~DUPLICATE_q\ & \CPU|instreg|out\(14))) # (\CPU|instreg|out[15]~DUPLICATE_q\ & (!\CPU|instreg|out[13]~DUPLICATE_q\ & 
-- !\CPU|instreg|out\(14)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000000001000010000000000100001000000000010000100000000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|instreg|ALT_INV_out[15]~DUPLICATE_q\,
	datab => \CPU|state|STATE|ALT_INV_next_out\(1),
	datac => \CPU|instreg|ALT_INV_out[13]~DUPLICATE_q\,
	datad => \CPU|instreg|ALT_INV_out\(14),
	combout => \CPU|state|WideOr12~3_combout\);

-- Location: MLABCELL_X82_Y10_N33
\CPU|state|WideOr12~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|state|WideOr12~1_combout\ = ( \CPU|instreg|out\(12) & ( (!\CPU|instreg|out\(14) & \CPU|instreg|out[13]~DUPLICATE_q\) ) ) # ( !\CPU|instreg|out\(12) & ( (!\CPU|instreg|out[11]~DUPLICATE_q\ & ((!\CPU|instreg|out\(14)) # 
-- (!\CPU|instreg|out[13]~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010100010101000000011000000110010101000101010000000110000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|instreg|ALT_INV_out[11]~DUPLICATE_q\,
	datab => \CPU|instreg|ALT_INV_out\(14),
	datac => \CPU|instreg|ALT_INV_out[13]~DUPLICATE_q\,
	datae => \CPU|instreg|ALT_INV_out\(12),
	combout => \CPU|state|WideOr12~1_combout\);

-- Location: MLABCELL_X82_Y10_N24
\CPU|state|WideOr12~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|state|WideOr12~2_combout\ = ( \CPU|state|WideOr12~1_combout\ & ( (\CPU|state|STATE|next_out\(1) & (\CPU|instreg|out[15]~DUPLICATE_q\ & !\CPU|state|STATE|next_out\(0))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000011000000000000001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|state|STATE|ALT_INV_next_out\(1),
	datac => \CPU|instreg|ALT_INV_out[15]~DUPLICATE_q\,
	datad => \CPU|state|STATE|ALT_INV_next_out\(0),
	dataf => \CPU|state|ALT_INV_WideOr12~1_combout\,
	combout => \CPU|state|WideOr12~2_combout\);

-- Location: MLABCELL_X82_Y10_N12
\CPU|state|WideOr12~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|state|WideOr12~4_combout\ = ( \CPU|state|WideOr12~2_combout\ & ( \CPU|state|WideOr12~0_combout\ ) ) # ( !\CPU|state|WideOr12~2_combout\ & ( (\CPU|state|WideOr12~0_combout\ & (\CPU|state|Decoder0~0_combout\ & \CPU|state|WideOr12~3_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000011000000000000001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|state|ALT_INV_WideOr12~0_combout\,
	datac => \CPU|state|ALT_INV_Decoder0~0_combout\,
	datad => \CPU|state|ALT_INV_WideOr12~3_combout\,
	dataf => \CPU|state|ALT_INV_WideOr12~2_combout\,
	combout => \CPU|state|WideOr12~4_combout\);

-- Location: FF_X82_Y6_N50
\CPU|DP|pipeC|out[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|DP|logic|Add0~61_sumout\,
	asdata => \CPU|DP|logic|Mux0~1_combout\,
	sload => \CPU|instreg|out\(12),
	ena => \CPU|state|WideOr12~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|pipeC|out\(15));

-- Location: LABCELL_X85_Y8_N39
\CPU|DP|multi|b[14]\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|multi|b\(14) = ( \CPU|DP|multi|comb~0_combout\ & ( \MEM|mem_rtl_0|auto_generated|ram_block1a14\ ) ) # ( !\CPU|DP|multi|comb~0_combout\ & ( \MEM|mem_rtl_0|auto_generated|ram_block1a14\ & ( (!\switch~2_combout\ & (((\CPU|DP|pipeC|out\(14) & 
-- \CPU|state|WideOr4~2_combout\)) # (\CPU|state|WideOr5~2_combout\))) # (\switch~2_combout\ & (((\CPU|DP|pipeC|out\(14) & \CPU|state|WideOr4~2_combout\)))) ) ) ) # ( \CPU|DP|multi|comb~0_combout\ & ( !\MEM|mem_rtl_0|auto_generated|ram_block1a14\ ) ) # ( 
-- !\CPU|DP|multi|comb~0_combout\ & ( !\MEM|mem_rtl_0|auto_generated|ram_block1a14\ & ( (\CPU|DP|pipeC|out\(14) & \CPU|state|WideOr4~2_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111111111111111111100100010001011111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_switch~2_combout\,
	datab => \CPU|state|ALT_INV_WideOr5~2_combout\,
	datac => \CPU|DP|pipeC|ALT_INV_out\(14),
	datad => \CPU|state|ALT_INV_WideOr4~2_combout\,
	datae => \CPU|DP|multi|ALT_INV_comb~0_combout\,
	dataf => \MEM|mem_rtl_0|auto_generated|ALT_INV_ram_block1a14\,
	combout => \CPU|DP|multi|b\(14));

-- Location: LABCELL_X81_Y8_N6
\CPU|DP|REGFILE|writeR6|out[14]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|REGFILE|writeR6|out[14]~feeder_combout\ = ( \CPU|DP|multi|b\(14) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|DP|multi|ALT_INV_b\(14),
	combout => \CPU|DP|REGFILE|writeR6|out[14]~feeder_combout\);

-- Location: FF_X81_Y8_N7
\CPU|DP|REGFILE|writeR6|out[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|DP|REGFILE|writeR6|out[14]~feeder_combout\,
	ena => \CPU|DP|REGFILE|andss|out\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|writeR6|out\(14));

-- Location: FF_X83_Y10_N34
\CPU|DP|REGFILE|writeR7|out[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|DP|multi|b\(14),
	sload => VCC,
	ena => \CPU|DP|REGFILE|andss|out\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|writeR7|out\(14));

-- Location: FF_X85_Y8_N5
\CPU|DP|REGFILE|writeR3|out[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|DP|multi|b\(14),
	sload => VCC,
	ena => \CPU|DP|REGFILE|andss|out\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|writeR3|out\(14));

-- Location: FF_X85_Y8_N41
\CPU|DP|REGFILE|writeR5|out[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|DP|multi|b\(14),
	ena => \CPU|DP|REGFILE|andss|out\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|writeR5|out\(14));

-- Location: FF_X85_Y8_N8
\CPU|DP|REGFILE|writeR1|out[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|DP|multi|b\(14),
	sload => VCC,
	ena => \CPU|DP|REGFILE|andss|out\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|writeR1|out\(14));

-- Location: LABCELL_X85_Y8_N6
\CPU|DP|REGFILE|MuxR|out[14]~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|REGFILE|MuxR|out[14]~29_combout\ = ( \CPU|DP|REGFILE|writeR1|out\(14) & ( !\CPU|dec|ReadMux|b\(0) & ( (!\CPU|dec|ReadMux|b\(2) & (((\CPU|DP|REGFILE|writeR5|out\(14) & \CPU|dec|ReadMux|b\(1))))) # (\CPU|dec|ReadMux|b\(2) & 
-- (((\CPU|dec|ReadMux|b\(1))) # (\CPU|DP|REGFILE|writeR3|out\(14)))) ) ) ) # ( !\CPU|DP|REGFILE|writeR1|out\(14) & ( !\CPU|dec|ReadMux|b\(0) & ( (!\CPU|dec|ReadMux|b\(2) & (((\CPU|DP|REGFILE|writeR5|out\(14) & \CPU|dec|ReadMux|b\(1))))) # 
-- (\CPU|dec|ReadMux|b\(2) & (\CPU|DP|REGFILE|writeR3|out\(14) & ((!\CPU|dec|ReadMux|b\(1))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100110000000001010011111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DP|REGFILE|writeR3|ALT_INV_out\(14),
	datab => \CPU|DP|REGFILE|writeR5|ALT_INV_out\(14),
	datac => \CPU|dec|ReadMux|ALT_INV_b\(2),
	datad => \CPU|dec|ReadMux|ALT_INV_b\(1),
	datae => \CPU|DP|REGFILE|writeR1|ALT_INV_out\(14),
	dataf => \CPU|dec|ReadMux|ALT_INV_b\(0),
	combout => \CPU|DP|REGFILE|MuxR|out[14]~29_combout\);

-- Location: MLABCELL_X84_Y6_N45
\CPU|DP|REGFILE|writeR4|out[14]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|REGFILE|writeR4|out[14]~feeder_combout\ = ( \CPU|DP|multi|b\(14) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|DP|multi|ALT_INV_b\(14),
	combout => \CPU|DP|REGFILE|writeR4|out[14]~feeder_combout\);

-- Location: FF_X84_Y6_N46
\CPU|DP|REGFILE|writeR4|out[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|DP|REGFILE|writeR4|out[14]~feeder_combout\,
	ena => \CPU|DP|REGFILE|andss|out\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|writeR4|out\(14));

-- Location: MLABCELL_X84_Y6_N9
\CPU|DP|REGFILE|writeR2|out[14]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|REGFILE|writeR2|out[14]~feeder_combout\ = ( \CPU|DP|multi|b\(14) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|DP|multi|ALT_INV_b\(14),
	combout => \CPU|DP|REGFILE|writeR2|out[14]~feeder_combout\);

-- Location: FF_X84_Y6_N10
\CPU|DP|REGFILE|writeR2|out[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|DP|REGFILE|writeR2|out[14]~feeder_combout\,
	ena => \CPU|DP|REGFILE|andss|out\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|writeR2|out\(14));

-- Location: FF_X82_Y8_N44
\CPU|DP|REGFILE|writeR0|out[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|DP|multi|b\(14),
	sload => VCC,
	ena => \CPU|DP|REGFILE|andss|out\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|writeR0|out\(14));

-- Location: MLABCELL_X82_Y8_N42
\CPU|DP|REGFILE|MuxR|out[14]~28\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|REGFILE|MuxR|out[14]~28_combout\ = ( \CPU|DP|REGFILE|writeR0|out\(14) & ( \CPU|dec|ReadMux|b\(1) & ( (\CPU|dec|ReadMux|b\(0) & ((\CPU|dec|ReadMux|b\(2)) # (\CPU|DP|REGFILE|writeR4|out\(14)))) ) ) ) # ( !\CPU|DP|REGFILE|writeR0|out\(14) & ( 
-- \CPU|dec|ReadMux|b\(1) & ( (\CPU|DP|REGFILE|writeR4|out\(14) & (!\CPU|dec|ReadMux|b\(2) & \CPU|dec|ReadMux|b\(0))) ) ) ) # ( \CPU|DP|REGFILE|writeR0|out\(14) & ( !\CPU|dec|ReadMux|b\(1) & ( (\CPU|DP|REGFILE|writeR2|out\(14) & (\CPU|dec|ReadMux|b\(2) & 
-- \CPU|dec|ReadMux|b\(0))) ) ) ) # ( !\CPU|DP|REGFILE|writeR0|out\(14) & ( !\CPU|dec|ReadMux|b\(1) & ( (\CPU|DP|REGFILE|writeR2|out\(14) & (\CPU|dec|ReadMux|b\(2) & \CPU|dec|ReadMux|b\(0))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000011000000000000001100000000010100000000000001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DP|REGFILE|writeR4|ALT_INV_out\(14),
	datab => \CPU|DP|REGFILE|writeR2|ALT_INV_out\(14),
	datac => \CPU|dec|ReadMux|ALT_INV_b\(2),
	datad => \CPU|dec|ReadMux|ALT_INV_b\(0),
	datae => \CPU|DP|REGFILE|writeR0|ALT_INV_out\(14),
	dataf => \CPU|dec|ReadMux|ALT_INV_b\(1),
	combout => \CPU|DP|REGFILE|MuxR|out[14]~28_combout\);

-- Location: LABCELL_X83_Y8_N48
\CPU|DP|REGFILE|MuxR|out[14]\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|REGFILE|MuxR|out\(14) = ( \CPU|DP|REGFILE|MuxR|out[14]~28_combout\ & ( \CPU|DP|REGFILE|read_dec|ShiftLeft0~1_combout\ ) ) # ( !\CPU|DP|REGFILE|MuxR|out[14]~28_combout\ & ( \CPU|DP|REGFILE|read_dec|ShiftLeft0~1_combout\ & ( 
-- (((\CPU|DP|REGFILE|writeR6|out\(14) & \CPU|DP|REGFILE|read_dec|ShiftLeft0~0_combout\)) # (\CPU|DP|REGFILE|MuxR|out[14]~29_combout\)) # (\CPU|DP|REGFILE|writeR7|out\(14)) ) ) ) # ( \CPU|DP|REGFILE|MuxR|out[14]~28_combout\ & ( 
-- !\CPU|DP|REGFILE|read_dec|ShiftLeft0~1_combout\ ) ) # ( !\CPU|DP|REGFILE|MuxR|out[14]~28_combout\ & ( !\CPU|DP|REGFILE|read_dec|ShiftLeft0~1_combout\ & ( ((\CPU|DP|REGFILE|writeR6|out\(14) & \CPU|DP|REGFILE|read_dec|ShiftLeft0~0_combout\)) # 
-- (\CPU|DP|REGFILE|MuxR|out[14]~29_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111101011111111111111111111100111111011111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DP|REGFILE|writeR6|ALT_INV_out\(14),
	datab => \CPU|DP|REGFILE|writeR7|ALT_INV_out\(14),
	datac => \CPU|DP|REGFILE|MuxR|ALT_INV_out[14]~29_combout\,
	datad => \CPU|DP|REGFILE|read_dec|ALT_INV_ShiftLeft0~0_combout\,
	datae => \CPU|DP|REGFILE|MuxR|ALT_INV_out[14]~28_combout\,
	dataf => \CPU|DP|REGFILE|read_dec|ALT_INV_ShiftLeft0~1_combout\,
	combout => \CPU|DP|REGFILE|MuxR|out\(14));

-- Location: FF_X83_Y8_N38
\CPU|DP|pipeB|out[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|DP|REGFILE|MuxR|out\(14),
	sload => VCC,
	ena => \CPU|state|WideOr10~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|pipeB|out\(14));

-- Location: LABCELL_X83_Y8_N18
\CPU|DP|Bin[14]~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|Bin[14]~15_combout\ = ( \CPU|DP|pipeB|out\(15) & ( \CPU|DP|Bin[2]~0_combout\ & ( (!\CPU|DP|Bin[2]~1_combout\ & ((\CPU|instreg|out\(4)))) # (\CPU|DP|Bin[2]~1_combout\ & (\CPU|DP|pipeB|out\(13))) ) ) ) # ( !\CPU|DP|pipeB|out\(15) & ( 
-- \CPU|DP|Bin[2]~0_combout\ & ( (!\CPU|DP|Bin[2]~1_combout\ & ((\CPU|instreg|out\(4)))) # (\CPU|DP|Bin[2]~1_combout\ & (\CPU|DP|pipeB|out\(13))) ) ) ) # ( \CPU|DP|pipeB|out\(15) & ( !\CPU|DP|Bin[2]~0_combout\ & ( (\CPU|DP|pipeB|out\(14)) # 
-- (\CPU|DP|Bin[2]~1_combout\) ) ) ) # ( !\CPU|DP|pipeB|out\(15) & ( !\CPU|DP|Bin[2]~0_combout\ & ( (!\CPU|DP|Bin[2]~1_combout\ & \CPU|DP|pipeB|out\(14)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000011111111111100110101001101010011010100110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DP|pipeB|ALT_INV_out\(13),
	datab => \CPU|instreg|ALT_INV_out\(4),
	datac => \CPU|DP|ALT_INV_Bin[2]~1_combout\,
	datad => \CPU|DP|pipeB|ALT_INV_out\(14),
	datae => \CPU|DP|pipeB|ALT_INV_out\(15),
	dataf => \CPU|DP|ALT_INV_Bin[2]~0_combout\,
	combout => \CPU|DP|Bin[14]~15_combout\);

-- Location: LABCELL_X81_Y6_N42
\CPU|DP|pipeC|out[14]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|pipeC|out[14]~feeder_combout\ = ( \CPU|DP|logic|Add0~57_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|DP|logic|ALT_INV_Add0~57_sumout\,
	combout => \CPU|DP|pipeC|out[14]~feeder_combout\);

-- Location: LABCELL_X83_Y8_N15
\CPU|DP|logic|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|logic|Mux1~0_combout\ = ( \CPU|DP|logic|Mux0~0_combout\ & ( (!\CPU|DP|Bin[14]~15_combout\ & (\CPU|instreg|out[11]~DUPLICATE_q\)) # (\CPU|DP|Bin[14]~15_combout\ & ((\CPU|DP|pipeA|out\(14)))) ) ) # ( !\CPU|DP|logic|Mux0~0_combout\ & ( 
-- (!\CPU|DP|Bin[14]~15_combout\ & \CPU|instreg|out[11]~DUPLICATE_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100111001001110010011100100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DP|ALT_INV_Bin[14]~15_combout\,
	datab => \CPU|instreg|ALT_INV_out[11]~DUPLICATE_q\,
	datac => \CPU|DP|pipeA|ALT_INV_out\(14),
	dataf => \CPU|DP|logic|ALT_INV_Mux0~0_combout\,
	combout => \CPU|DP|logic|Mux1~0_combout\);

-- Location: FF_X81_Y6_N43
\CPU|DP|pipeC|out[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|DP|pipeC|out[14]~feeder_combout\,
	asdata => \CPU|DP|logic|Mux1~0_combout\,
	sload => \CPU|instreg|out\(12),
	ena => \CPU|state|WideOr12~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|pipeC|out\(14));

-- Location: LABCELL_X85_Y8_N27
\CPU|DP|multi|b[13]\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|multi|b\(13) = ( \CPU|DP|multi|comb~0_combout\ & ( \MEM|mem_rtl_0|auto_generated|ram_block1a13\ ) ) # ( !\CPU|DP|multi|comb~0_combout\ & ( \MEM|mem_rtl_0|auto_generated|ram_block1a13\ & ( (!\CPU|DP|pipeC|out\(13) & (((\CPU|state|WideOr5~2_combout\ 
-- & !\switch~2_combout\)))) # (\CPU|DP|pipeC|out\(13) & (((\CPU|state|WideOr5~2_combout\ & !\switch~2_combout\)) # (\CPU|state|WideOr4~2_combout\))) ) ) ) # ( \CPU|DP|multi|comb~0_combout\ & ( !\MEM|mem_rtl_0|auto_generated|ram_block1a13\ ) ) # ( 
-- !\CPU|DP|multi|comb~0_combout\ & ( !\MEM|mem_rtl_0|auto_generated|ram_block1a13\ & ( (\CPU|DP|pipeC|out\(13) & \CPU|state|WideOr4~2_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001111111111111111100011111000100011111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DP|pipeC|ALT_INV_out\(13),
	datab => \CPU|state|ALT_INV_WideOr4~2_combout\,
	datac => \CPU|state|ALT_INV_WideOr5~2_combout\,
	datad => \ALT_INV_switch~2_combout\,
	datae => \CPU|DP|multi|ALT_INV_comb~0_combout\,
	dataf => \MEM|mem_rtl_0|auto_generated|ALT_INV_ram_block1a13\,
	combout => \CPU|DP|multi|b\(13));

-- Location: FF_X83_Y10_N28
\CPU|DP|REGFILE|writeR7|out[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|DP|multi|b\(13),
	sload => VCC,
	ena => \CPU|DP|REGFILE|andss|out\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|writeR7|out\(13));

-- Location: LABCELL_X81_Y8_N3
\CPU|DP|REGFILE|writeR6|out[13]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|REGFILE|writeR6|out[13]~feeder_combout\ = ( \CPU|DP|multi|b\(13) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|DP|multi|ALT_INV_b\(13),
	combout => \CPU|DP|REGFILE|writeR6|out[13]~feeder_combout\);

-- Location: FF_X81_Y8_N4
\CPU|DP|REGFILE|writeR6|out[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|DP|REGFILE|writeR6|out[13]~feeder_combout\,
	ena => \CPU|DP|REGFILE|andss|out\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|writeR6|out\(13));

-- Location: FF_X85_Y8_N32
\CPU|DP|REGFILE|writeR3|out[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|DP|multi|b\(13),
	sload => VCC,
	ena => \CPU|DP|REGFILE|andss|out\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|writeR3|out\(13));

-- Location: FF_X85_Y8_N29
\CPU|DP|REGFILE|writeR5|out[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|DP|multi|b\(13),
	ena => \CPU|DP|REGFILE|andss|out\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|writeR5|out\(13));

-- Location: FF_X82_Y8_N29
\CPU|DP|REGFILE|writeR1|out[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|DP|multi|b\(13),
	sload => VCC,
	ena => \CPU|DP|REGFILE|andss|out\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|writeR1|out\(13));

-- Location: MLABCELL_X82_Y8_N27
\CPU|DP|REGFILE|MuxR|out[13]~27\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|REGFILE|MuxR|out[13]~27_combout\ = ( \CPU|DP|REGFILE|writeR1|out\(13) & ( \CPU|dec|ReadMux|b\(1) & ( (!\CPU|dec|ReadMux|b\(0) & ((\CPU|DP|REGFILE|writeR5|out\(13)) # (\CPU|dec|ReadMux|b\(2)))) ) ) ) # ( !\CPU|DP|REGFILE|writeR1|out\(13) & ( 
-- \CPU|dec|ReadMux|b\(1) & ( (!\CPU|dec|ReadMux|b\(2) & (\CPU|DP|REGFILE|writeR5|out\(13) & !\CPU|dec|ReadMux|b\(0))) ) ) ) # ( \CPU|DP|REGFILE|writeR1|out\(13) & ( !\CPU|dec|ReadMux|b\(1) & ( (\CPU|dec|ReadMux|b\(2) & (\CPU|DP|REGFILE|writeR3|out\(13) & 
-- !\CPU|dec|ReadMux|b\(0))) ) ) ) # ( !\CPU|DP|REGFILE|writeR1|out\(13) & ( !\CPU|dec|ReadMux|b\(1) & ( (\CPU|dec|ReadMux|b\(2) & (\CPU|DP|REGFILE|writeR3|out\(13) & !\CPU|dec|ReadMux|b\(0))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100000000000100010000000000001010000000000101111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|dec|ReadMux|ALT_INV_b\(2),
	datab => \CPU|DP|REGFILE|writeR3|ALT_INV_out\(13),
	datac => \CPU|DP|REGFILE|writeR5|ALT_INV_out\(13),
	datad => \CPU|dec|ReadMux|ALT_INV_b\(0),
	datae => \CPU|DP|REGFILE|writeR1|ALT_INV_out\(13),
	dataf => \CPU|dec|ReadMux|ALT_INV_b\(1),
	combout => \CPU|DP|REGFILE|MuxR|out[13]~27_combout\);

-- Location: FF_X84_Y9_N56
\CPU|DP|REGFILE|writeR2|out[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|DP|multi|b\(13),
	sload => VCC,
	ena => \CPU|DP|REGFILE|andss|out\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|writeR2|out\(13));

-- Location: LABCELL_X85_Y9_N6
\CPU|DP|REGFILE|writeR4|out[13]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|REGFILE|writeR4|out[13]~feeder_combout\ = ( \CPU|DP|multi|b\(13) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|DP|multi|ALT_INV_b\(13),
	combout => \CPU|DP|REGFILE|writeR4|out[13]~feeder_combout\);

-- Location: FF_X85_Y9_N7
\CPU|DP|REGFILE|writeR4|out[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|DP|REGFILE|writeR4|out[13]~feeder_combout\,
	ena => \CPU|DP|REGFILE|andss|out\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|writeR4|out\(13));

-- Location: FF_X82_Y8_N56
\CPU|DP|REGFILE|writeR0|out[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|DP|multi|b\(13),
	sload => VCC,
	ena => \CPU|DP|REGFILE|andss|out\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|writeR0|out\(13));

-- Location: MLABCELL_X82_Y8_N54
\CPU|DP|REGFILE|MuxR|out[13]~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|REGFILE|MuxR|out[13]~26_combout\ = ( \CPU|DP|REGFILE|writeR0|out\(13) & ( \CPU|dec|ReadMux|b\(1) & ( (\CPU|dec|ReadMux|b\(0) & ((\CPU|dec|ReadMux|b\(2)) # (\CPU|DP|REGFILE|writeR4|out\(13)))) ) ) ) # ( !\CPU|DP|REGFILE|writeR0|out\(13) & ( 
-- \CPU|dec|ReadMux|b\(1) & ( (\CPU|DP|REGFILE|writeR4|out\(13) & (!\CPU|dec|ReadMux|b\(2) & \CPU|dec|ReadMux|b\(0))) ) ) ) # ( \CPU|DP|REGFILE|writeR0|out\(13) & ( !\CPU|dec|ReadMux|b\(1) & ( (\CPU|DP|REGFILE|writeR2|out\(13) & (\CPU|dec|ReadMux|b\(2) & 
-- \CPU|dec|ReadMux|b\(0))) ) ) ) # ( !\CPU|DP|REGFILE|writeR0|out\(13) & ( !\CPU|dec|ReadMux|b\(1) & ( (\CPU|DP|REGFILE|writeR2|out\(13) & (\CPU|dec|ReadMux|b\(2) & \CPU|dec|ReadMux|b\(0))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000101000000000000010100000000001100000000000000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DP|REGFILE|writeR2|ALT_INV_out\(13),
	datab => \CPU|DP|REGFILE|writeR4|ALT_INV_out\(13),
	datac => \CPU|dec|ReadMux|ALT_INV_b\(2),
	datad => \CPU|dec|ReadMux|ALT_INV_b\(0),
	datae => \CPU|DP|REGFILE|writeR0|ALT_INV_out\(13),
	dataf => \CPU|dec|ReadMux|ALT_INV_b\(1),
	combout => \CPU|DP|REGFILE|MuxR|out[13]~26_combout\);

-- Location: LABCELL_X83_Y8_N6
\CPU|DP|REGFILE|MuxR|out[13]\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|REGFILE|MuxR|out\(13) = ( \CPU|DP|REGFILE|read_dec|ShiftLeft0~0_combout\ & ( \CPU|DP|REGFILE|MuxR|out[13]~26_combout\ ) ) # ( !\CPU|DP|REGFILE|read_dec|ShiftLeft0~0_combout\ & ( \CPU|DP|REGFILE|MuxR|out[13]~26_combout\ ) ) # ( 
-- \CPU|DP|REGFILE|read_dec|ShiftLeft0~0_combout\ & ( !\CPU|DP|REGFILE|MuxR|out[13]~26_combout\ & ( (((\CPU|DP|REGFILE|writeR7|out\(13) & \CPU|DP|REGFILE|read_dec|ShiftLeft0~1_combout\)) # (\CPU|DP|REGFILE|MuxR|out[13]~27_combout\)) # 
-- (\CPU|DP|REGFILE|writeR6|out\(13)) ) ) ) # ( !\CPU|DP|REGFILE|read_dec|ShiftLeft0~0_combout\ & ( !\CPU|DP|REGFILE|MuxR|out[13]~26_combout\ & ( ((\CPU|DP|REGFILE|writeR7|out\(13) & \CPU|DP|REGFILE|read_dec|ShiftLeft0~1_combout\)) # 
-- (\CPU|DP|REGFILE|MuxR|out[13]~27_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111101011111001111110111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DP|REGFILE|writeR7|ALT_INV_out\(13),
	datab => \CPU|DP|REGFILE|writeR6|ALT_INV_out\(13),
	datac => \CPU|DP|REGFILE|MuxR|ALT_INV_out[13]~27_combout\,
	datad => \CPU|DP|REGFILE|read_dec|ALT_INV_ShiftLeft0~1_combout\,
	datae => \CPU|DP|REGFILE|read_dec|ALT_INV_ShiftLeft0~0_combout\,
	dataf => \CPU|DP|REGFILE|MuxR|ALT_INV_out[13]~26_combout\,
	combout => \CPU|DP|REGFILE|MuxR|out\(13));

-- Location: FF_X83_Y8_N8
\CPU|DP|pipeA|out[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|DP|REGFILE|MuxR|out\(13),
	ena => \CPU|state|WideOr9~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|pipeA|out\(13));

-- Location: LABCELL_X83_Y8_N33
\CPU|DP|pipeC|out[13]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|pipeC|out[13]~feeder_combout\ = ( \CPU|DP|logic|Add0~53_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|DP|logic|ALT_INV_Add0~53_sumout\,
	combout => \CPU|DP|pipeC|out[13]~feeder_combout\);

-- Location: LABCELL_X83_Y8_N54
\CPU|DP|logic|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|logic|Mux2~0_combout\ = ( \CPU|DP|logic|Mux0~0_combout\ & ( (!\CPU|DP|Bin[13]~14_combout\ & ((\CPU|instreg|out[11]~DUPLICATE_q\))) # (\CPU|DP|Bin[13]~14_combout\ & (\CPU|DP|pipeA|out\(13))) ) ) # ( !\CPU|DP|logic|Mux0~0_combout\ & ( 
-- (!\CPU|DP|Bin[13]~14_combout\ & \CPU|instreg|out[11]~DUPLICATE_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000000101111101010000010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DP|pipeA|ALT_INV_out\(13),
	datac => \CPU|DP|ALT_INV_Bin[13]~14_combout\,
	datad => \CPU|instreg|ALT_INV_out[11]~DUPLICATE_q\,
	dataf => \CPU|DP|logic|ALT_INV_Mux0~0_combout\,
	combout => \CPU|DP|logic|Mux2~0_combout\);

-- Location: FF_X83_Y8_N34
\CPU|DP|pipeC|out[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|DP|pipeC|out[13]~feeder_combout\,
	asdata => \CPU|DP|logic|Mux2~0_combout\,
	sload => \CPU|instreg|out\(12),
	ena => \CPU|state|WideOr12~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|pipeC|out\(13));

-- Location: LABCELL_X85_Y8_N48
\CPU|DP|multi|b[12]\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|multi|b\(12) = ( \CPU|DP|multi|comb~0_combout\ & ( \MEM|mem_rtl_0|auto_generated|ram_block1a12\ ) ) # ( !\CPU|DP|multi|comb~0_combout\ & ( \MEM|mem_rtl_0|auto_generated|ram_block1a12\ & ( (!\CPU|state|WideOr4~2_combout\ & 
-- (\CPU|state|WideOr5~2_combout\ & (!\switch~2_combout\))) # (\CPU|state|WideOr4~2_combout\ & (((\CPU|state|WideOr5~2_combout\ & !\switch~2_combout\)) # (\CPU|DP|pipeC|out\(12)))) ) ) ) # ( \CPU|DP|multi|comb~0_combout\ & ( 
-- !\MEM|mem_rtl_0|auto_generated|ram_block1a12\ ) ) # ( !\CPU|DP|multi|comb~0_combout\ & ( !\MEM|mem_rtl_0|auto_generated|ram_block1a12\ & ( (\CPU|state|WideOr4~2_combout\ & \CPU|DP|pipeC|out\(12)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101111111111111111100110000011101011111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|state|ALT_INV_WideOr4~2_combout\,
	datab => \CPU|state|ALT_INV_WideOr5~2_combout\,
	datac => \ALT_INV_switch~2_combout\,
	datad => \CPU|DP|pipeC|ALT_INV_out\(12),
	datae => \CPU|DP|multi|ALT_INV_comb~0_combout\,
	dataf => \MEM|mem_rtl_0|auto_generated|ALT_INV_ram_block1a12\,
	combout => \CPU|DP|multi|b\(12));

-- Location: LABCELL_X81_Y8_N45
\CPU|DP|REGFILE|writeR6|out[12]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|REGFILE|writeR6|out[12]~feeder_combout\ = ( \CPU|DP|multi|b\(12) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|DP|multi|ALT_INV_b\(12),
	combout => \CPU|DP|REGFILE|writeR6|out[12]~feeder_combout\);

-- Location: FF_X81_Y8_N46
\CPU|DP|REGFILE|writeR6|out[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|DP|REGFILE|writeR6|out[12]~feeder_combout\,
	ena => \CPU|DP|REGFILE|andss|out\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|writeR6|out\(12));

-- Location: LABCELL_X83_Y10_N3
\CPU|DP|REGFILE|writeR7|out[12]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|REGFILE|writeR7|out[12]~feeder_combout\ = ( \CPU|DP|multi|b\(12) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|DP|multi|ALT_INV_b\(12),
	combout => \CPU|DP|REGFILE|writeR7|out[12]~feeder_combout\);

-- Location: FF_X83_Y10_N4
\CPU|DP|REGFILE|writeR7|out[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|DP|REGFILE|writeR7|out[12]~feeder_combout\,
	ena => \CPU|DP|REGFILE|andss|out\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|writeR7|out\(12));

-- Location: FF_X84_Y6_N58
\CPU|DP|REGFILE|writeR4|out[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|DP|multi|b\(12),
	sload => VCC,
	ena => \CPU|DP|REGFILE|andss|out\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|writeR4|out\(12));

-- Location: FF_X84_Y6_N41
\CPU|DP|REGFILE|writeR0|out[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|DP|multi|b\(12),
	sload => VCC,
	ena => \CPU|DP|REGFILE|andss|out\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|writeR0|out\(12));

-- Location: FF_X84_Y6_N11
\CPU|DP|REGFILE|writeR2|out[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|DP|multi|b\(12),
	sload => VCC,
	ena => \CPU|DP|REGFILE|andss|out\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|writeR2|out\(12));

-- Location: MLABCELL_X84_Y6_N36
\CPU|DP|REGFILE|MuxR|out[12]~24\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|REGFILE|MuxR|out[12]~24_combout\ = ( \CPU|dec|ReadMux|b\(0) & ( \CPU|dec|ReadMux|b\(1) & ( (!\CPU|dec|ReadMux|b\(2) & (\CPU|DP|REGFILE|writeR4|out\(12))) # (\CPU|dec|ReadMux|b\(2) & ((\CPU|DP|REGFILE|writeR0|out\(12)))) ) ) ) # ( 
-- \CPU|dec|ReadMux|b\(0) & ( !\CPU|dec|ReadMux|b\(1) & ( (\CPU|dec|ReadMux|b\(2) & \CPU|DP|REGFILE|writeR2|out\(12)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000111100000000000000000101001101010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DP|REGFILE|writeR4|ALT_INV_out\(12),
	datab => \CPU|DP|REGFILE|writeR0|ALT_INV_out\(12),
	datac => \CPU|dec|ReadMux|ALT_INV_b\(2),
	datad => \CPU|DP|REGFILE|writeR2|ALT_INV_out\(12),
	datae => \CPU|dec|ReadMux|ALT_INV_b\(0),
	dataf => \CPU|dec|ReadMux|ALT_INV_b\(1),
	combout => \CPU|DP|REGFILE|MuxR|out[12]~24_combout\);

-- Location: FF_X85_Y8_N34
\CPU|DP|REGFILE|writeR3|out[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|DP|multi|b\(12),
	sload => VCC,
	ena => \CPU|DP|REGFILE|andss|out\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|writeR3|out\(12));

-- Location: FF_X85_Y8_N25
\CPU|DP|REGFILE|writeR5|out[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|DP|multi|b\(12),
	sload => VCC,
	ena => \CPU|DP|REGFILE|andss|out\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|writeR5|out\(12));

-- Location: FF_X84_Y8_N38
\CPU|DP|REGFILE|writeR1|out[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|DP|multi|b\(12),
	sload => VCC,
	ena => \CPU|DP|REGFILE|andss|out\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|writeR1|out\(12));

-- Location: LABCELL_X83_Y8_N42
\CPU|DP|REGFILE|MuxR|out[12]~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|REGFILE|MuxR|out[12]~25_combout\ = ( \CPU|dec|ReadMux|b\(2) & ( !\CPU|dec|ReadMux|b\(0) & ( (!\CPU|dec|ReadMux|b\(1) & (\CPU|DP|REGFILE|writeR3|out\(12))) # (\CPU|dec|ReadMux|b\(1) & ((\CPU|DP|REGFILE|writeR1|out\(12)))) ) ) ) # ( 
-- !\CPU|dec|ReadMux|b\(2) & ( !\CPU|dec|ReadMux|b\(0) & ( (\CPU|DP|REGFILE|writeR5|out\(12) & \CPU|dec|ReadMux|b\(1)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011010100000101111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DP|REGFILE|writeR3|ALT_INV_out\(12),
	datab => \CPU|DP|REGFILE|writeR5|ALT_INV_out\(12),
	datac => \CPU|dec|ReadMux|ALT_INV_b\(1),
	datad => \CPU|DP|REGFILE|writeR1|ALT_INV_out\(12),
	datae => \CPU|dec|ReadMux|ALT_INV_b\(2),
	dataf => \CPU|dec|ReadMux|ALT_INV_b\(0),
	combout => \CPU|DP|REGFILE|MuxR|out[12]~25_combout\);

-- Location: LABCELL_X81_Y6_N6
\CPU|DP|REGFILE|MuxR|out[12]\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|REGFILE|MuxR|out\(12) = ( \CPU|DP|REGFILE|read_dec|ShiftLeft0~0_combout\ & ( \CPU|DP|REGFILE|read_dec|ShiftLeft0~1_combout\ & ( (((\CPU|DP|REGFILE|MuxR|out[12]~25_combout\) # (\CPU|DP|REGFILE|MuxR|out[12]~24_combout\)) # 
-- (\CPU|DP|REGFILE|writeR7|out\(12))) # (\CPU|DP|REGFILE|writeR6|out\(12)) ) ) ) # ( !\CPU|DP|REGFILE|read_dec|ShiftLeft0~0_combout\ & ( \CPU|DP|REGFILE|read_dec|ShiftLeft0~1_combout\ & ( ((\CPU|DP|REGFILE|MuxR|out[12]~25_combout\) # 
-- (\CPU|DP|REGFILE|MuxR|out[12]~24_combout\)) # (\CPU|DP|REGFILE|writeR7|out\(12)) ) ) ) # ( \CPU|DP|REGFILE|read_dec|ShiftLeft0~0_combout\ & ( !\CPU|DP|REGFILE|read_dec|ShiftLeft0~1_combout\ & ( ((\CPU|DP|REGFILE|MuxR|out[12]~25_combout\) # 
-- (\CPU|DP|REGFILE|MuxR|out[12]~24_combout\)) # (\CPU|DP|REGFILE|writeR6|out\(12)) ) ) ) # ( !\CPU|DP|REGFILE|read_dec|ShiftLeft0~0_combout\ & ( !\CPU|DP|REGFILE|read_dec|ShiftLeft0~1_combout\ & ( (\CPU|DP|REGFILE|MuxR|out[12]~25_combout\) # 
-- (\CPU|DP|REGFILE|MuxR|out[12]~24_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111111111010111111111111100111111111111110111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DP|REGFILE|writeR6|ALT_INV_out\(12),
	datab => \CPU|DP|REGFILE|writeR7|ALT_INV_out\(12),
	datac => \CPU|DP|REGFILE|MuxR|ALT_INV_out[12]~24_combout\,
	datad => \CPU|DP|REGFILE|MuxR|ALT_INV_out[12]~25_combout\,
	datae => \CPU|DP|REGFILE|read_dec|ALT_INV_ShiftLeft0~0_combout\,
	dataf => \CPU|DP|REGFILE|read_dec|ALT_INV_ShiftLeft0~1_combout\,
	combout => \CPU|DP|REGFILE|MuxR|out\(12));

-- Location: FF_X81_Y6_N52
\CPU|DP|pipeB|out[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|DP|REGFILE|MuxR|out\(12),
	sload => VCC,
	ena => \CPU|state|WideOr10~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|pipeB|out\(12));

-- Location: FF_X81_Y6_N13
\CPU|DP|pipeB|out[11]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|DP|REGFILE|MuxR|out\(11),
	sload => VCC,
	ena => \CPU|state|WideOr10~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|pipeB|out[11]~DUPLICATE_q\);

-- Location: LABCELL_X83_Y8_N0
\CPU|DP|Bin[12]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|Bin[12]~13_combout\ = ( \CPU|DP|pipeB|out\(13) & ( \CPU|DP|Bin[2]~0_combout\ & ( (!\CPU|DP|Bin[2]~1_combout\ & (\CPU|instreg|out\(4))) # (\CPU|DP|Bin[2]~1_combout\ & ((\CPU|DP|pipeB|out[11]~DUPLICATE_q\))) ) ) ) # ( !\CPU|DP|pipeB|out\(13) & ( 
-- \CPU|DP|Bin[2]~0_combout\ & ( (!\CPU|DP|Bin[2]~1_combout\ & (\CPU|instreg|out\(4))) # (\CPU|DP|Bin[2]~1_combout\ & ((\CPU|DP|pipeB|out[11]~DUPLICATE_q\))) ) ) ) # ( \CPU|DP|pipeB|out\(13) & ( !\CPU|DP|Bin[2]~0_combout\ & ( (\CPU|DP|Bin[2]~1_combout\) # 
-- (\CPU|DP|pipeB|out\(12)) ) ) ) # ( !\CPU|DP|pipeB|out\(13) & ( !\CPU|DP|Bin[2]~0_combout\ & ( (\CPU|DP|pipeB|out\(12) & !\CPU|DP|Bin[2]~1_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000010111110101111100110000001111110011000000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DP|pipeB|ALT_INV_out\(12),
	datab => \CPU|instreg|ALT_INV_out\(4),
	datac => \CPU|DP|ALT_INV_Bin[2]~1_combout\,
	datad => \CPU|DP|pipeB|ALT_INV_out[11]~DUPLICATE_q\,
	datae => \CPU|DP|pipeB|ALT_INV_out\(13),
	dataf => \CPU|DP|ALT_INV_Bin[2]~0_combout\,
	combout => \CPU|DP|Bin[12]~13_combout\);

-- Location: LABCELL_X83_Y6_N39
\CPU|DP|pipeC|out[12]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|pipeC|out[12]~feeder_combout\ = ( \CPU|DP|logic|Add0~49_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|DP|logic|ALT_INV_Add0~49_sumout\,
	combout => \CPU|DP|pipeC|out[12]~feeder_combout\);

-- Location: LABCELL_X85_Y6_N54
\CPU|DP|logic|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|logic|Mux3~0_combout\ = ( \CPU|DP|logic|Mux0~0_combout\ & ( (!\CPU|DP|Bin[12]~13_combout\ & (\CPU|instreg|out[11]~DUPLICATE_q\)) # (\CPU|DP|Bin[12]~13_combout\ & ((\CPU|DP|pipeA|out\(12)))) ) ) # ( !\CPU|DP|logic|Mux0~0_combout\ & ( 
-- (\CPU|instreg|out[11]~DUPLICATE_q\ & !\CPU|DP|Bin[12]~13_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000000010101010000000001010101000011110101010100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|instreg|ALT_INV_out[11]~DUPLICATE_q\,
	datac => \CPU|DP|pipeA|ALT_INV_out\(12),
	datad => \CPU|DP|ALT_INV_Bin[12]~13_combout\,
	dataf => \CPU|DP|logic|ALT_INV_Mux0~0_combout\,
	combout => \CPU|DP|logic|Mux3~0_combout\);

-- Location: FF_X83_Y6_N40
\CPU|DP|pipeC|out[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|DP|pipeC|out[12]~feeder_combout\,
	asdata => \CPU|DP|logic|Mux3~0_combout\,
	sload => \CPU|instreg|out\(12),
	ena => \CPU|state|WideOr12~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|pipeC|out\(12));

-- Location: LABCELL_X85_Y6_N12
\CPU|DP|multi|b[11]\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|multi|b\(11) = ( \CPU|DP|pipeC|out\(11) & ( \MEM|mem_rtl_0|auto_generated|ram_block1a11\ & ( (((\CPU|state|WideOr5~2_combout\ & !\switch~2_combout\)) # (\CPU|state|WideOr4~2_combout\)) # (\CPU|DP|multi|comb~0_combout\) ) ) ) # ( 
-- !\CPU|DP|pipeC|out\(11) & ( \MEM|mem_rtl_0|auto_generated|ram_block1a11\ & ( ((\CPU|state|WideOr5~2_combout\ & !\switch~2_combout\)) # (\CPU|DP|multi|comb~0_combout\) ) ) ) # ( \CPU|DP|pipeC|out\(11) & ( !\MEM|mem_rtl_0|auto_generated|ram_block1a11\ & ( 
-- (\CPU|state|WideOr4~2_combout\) # (\CPU|DP|multi|comb~0_combout\) ) ) ) # ( !\CPU|DP|pipeC|out\(11) & ( !\MEM|mem_rtl_0|auto_generated|ram_block1a11\ & ( \CPU|DP|multi|comb~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010111110101111101110111010101010111111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DP|multi|ALT_INV_comb~0_combout\,
	datab => \CPU|state|ALT_INV_WideOr5~2_combout\,
	datac => \CPU|state|ALT_INV_WideOr4~2_combout\,
	datad => \ALT_INV_switch~2_combout\,
	datae => \CPU|DP|pipeC|ALT_INV_out\(11),
	dataf => \MEM|mem_rtl_0|auto_generated|ALT_INV_ram_block1a11\,
	combout => \CPU|DP|multi|b\(11));

-- Location: FF_X85_Y6_N5
\CPU|DP|REGFILE|writeR3|out[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|DP|multi|b\(11),
	sload => VCC,
	ena => \CPU|DP|REGFILE|andss|out\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|writeR3|out\(11));

-- Location: FF_X85_Y6_N13
\CPU|DP|REGFILE|writeR5|out[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|DP|multi|b\(11),
	ena => \CPU|DP|REGFILE|andss|out\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|writeR5|out\(11));

-- Location: FF_X85_Y6_N38
\CPU|DP|REGFILE|writeR1|out[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|DP|multi|b\(11),
	sload => VCC,
	ena => \CPU|DP|REGFILE|andss|out\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|writeR1|out\(11));

-- Location: LABCELL_X85_Y6_N36
\CPU|DP|REGFILE|MuxR|out[11]~23\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|REGFILE|MuxR|out[11]~23_combout\ = ( \CPU|DP|REGFILE|writeR1|out\(11) & ( \CPU|dec|ReadMux|b\(1) & ( (!\CPU|dec|ReadMux|b\(0) & ((\CPU|dec|ReadMux|b\(2)) # (\CPU|DP|REGFILE|writeR5|out\(11)))) ) ) ) # ( !\CPU|DP|REGFILE|writeR1|out\(11) & ( 
-- \CPU|dec|ReadMux|b\(1) & ( (\CPU|DP|REGFILE|writeR5|out\(11) & (!\CPU|dec|ReadMux|b\(2) & !\CPU|dec|ReadMux|b\(0))) ) ) ) # ( \CPU|DP|REGFILE|writeR1|out\(11) & ( !\CPU|dec|ReadMux|b\(1) & ( (\CPU|DP|REGFILE|writeR3|out\(11) & (\CPU|dec|ReadMux|b\(2) & 
-- !\CPU|dec|ReadMux|b\(0))) ) ) ) # ( !\CPU|DP|REGFILE|writeR1|out\(11) & ( !\CPU|dec|ReadMux|b\(1) & ( (\CPU|DP|REGFILE|writeR3|out\(11) & (\CPU|dec|ReadMux|b\(2) & !\CPU|dec|ReadMux|b\(0))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000000000001010000000000110000000000000011111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DP|REGFILE|writeR3|ALT_INV_out\(11),
	datab => \CPU|DP|REGFILE|writeR5|ALT_INV_out\(11),
	datac => \CPU|dec|ReadMux|ALT_INV_b\(2),
	datad => \CPU|dec|ReadMux|ALT_INV_b\(0),
	datae => \CPU|DP|REGFILE|writeR1|ALT_INV_out\(11),
	dataf => \CPU|dec|ReadMux|ALT_INV_b\(1),
	combout => \CPU|DP|REGFILE|MuxR|out[11]~23_combout\);

-- Location: FF_X83_Y10_N43
\CPU|DP|REGFILE|writeR7|out[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|DP|multi|b\(11),
	sload => VCC,
	ena => \CPU|DP|REGFILE|andss|out\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|writeR7|out\(11));

-- Location: LABCELL_X81_Y8_N0
\CPU|DP|REGFILE|writeR6|out[11]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|REGFILE|writeR6|out[11]~feeder_combout\ = ( \CPU|DP|multi|b\(11) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|DP|multi|ALT_INV_b\(11),
	combout => \CPU|DP|REGFILE|writeR6|out[11]~feeder_combout\);

-- Location: FF_X81_Y8_N1
\CPU|DP|REGFILE|writeR6|out[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|DP|REGFILE|writeR6|out[11]~feeder_combout\,
	ena => \CPU|DP|REGFILE|andss|out\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|writeR6|out\(11));

-- Location: FF_X84_Y6_N22
\CPU|DP|REGFILE|writeR0|out[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|DP|multi|b\(11),
	sload => VCC,
	ena => \CPU|DP|REGFILE|andss|out\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|writeR0|out\(11));

-- Location: MLABCELL_X87_Y6_N0
\CPU|DP|REGFILE|writeR4|out[11]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|REGFILE|writeR4|out[11]~feeder_combout\ = ( \CPU|DP|multi|b\(11) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|DP|multi|ALT_INV_b\(11),
	combout => \CPU|DP|REGFILE|writeR4|out[11]~feeder_combout\);

-- Location: FF_X87_Y6_N1
\CPU|DP|REGFILE|writeR4|out[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|DP|REGFILE|writeR4|out[11]~feeder_combout\,
	ena => \CPU|DP|REGFILE|andss|out\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|writeR4|out\(11));

-- Location: FF_X84_Y6_N7
\CPU|DP|REGFILE|writeR2|out[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|DP|multi|b\(11),
	sload => VCC,
	ena => \CPU|DP|REGFILE|andss|out\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|writeR2|out\(11));

-- Location: LABCELL_X85_Y6_N51
\CPU|DP|REGFILE|MuxR|out[11]~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|REGFILE|MuxR|out[11]~22_combout\ = ( \CPU|dec|ReadMux|b\(2) & ( \CPU|dec|ReadMux|b\(1) & ( (\CPU|DP|REGFILE|writeR0|out\(11) & \CPU|dec|ReadMux|b\(0)) ) ) ) # ( !\CPU|dec|ReadMux|b\(2) & ( \CPU|dec|ReadMux|b\(1) & ( 
-- (\CPU|DP|REGFILE|writeR4|out\(11) & \CPU|dec|ReadMux|b\(0)) ) ) ) # ( \CPU|dec|ReadMux|b\(2) & ( !\CPU|dec|ReadMux|b\(1) & ( (\CPU|dec|ReadMux|b\(0) & \CPU|DP|REGFILE|writeR2|out\(11)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000111100000011000000110000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DP|REGFILE|writeR0|ALT_INV_out\(11),
	datab => \CPU|DP|REGFILE|writeR4|ALT_INV_out\(11),
	datac => \CPU|dec|ReadMux|ALT_INV_b\(0),
	datad => \CPU|DP|REGFILE|writeR2|ALT_INV_out\(11),
	datae => \CPU|dec|ReadMux|ALT_INV_b\(2),
	dataf => \CPU|dec|ReadMux|ALT_INV_b\(1),
	combout => \CPU|DP|REGFILE|MuxR|out[11]~22_combout\);

-- Location: LABCELL_X81_Y6_N54
\CPU|DP|REGFILE|MuxR|out[11]\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|REGFILE|MuxR|out\(11) = ( \CPU|DP|REGFILE|read_dec|ShiftLeft0~0_combout\ & ( \CPU|DP|REGFILE|read_dec|ShiftLeft0~1_combout\ & ( (((\CPU|DP|REGFILE|MuxR|out[11]~22_combout\) # (\CPU|DP|REGFILE|writeR6|out\(11))) # 
-- (\CPU|DP|REGFILE|writeR7|out\(11))) # (\CPU|DP|REGFILE|MuxR|out[11]~23_combout\) ) ) ) # ( !\CPU|DP|REGFILE|read_dec|ShiftLeft0~0_combout\ & ( \CPU|DP|REGFILE|read_dec|ShiftLeft0~1_combout\ & ( ((\CPU|DP|REGFILE|MuxR|out[11]~22_combout\) # 
-- (\CPU|DP|REGFILE|writeR7|out\(11))) # (\CPU|DP|REGFILE|MuxR|out[11]~23_combout\) ) ) ) # ( \CPU|DP|REGFILE|read_dec|ShiftLeft0~0_combout\ & ( !\CPU|DP|REGFILE|read_dec|ShiftLeft0~1_combout\ & ( ((\CPU|DP|REGFILE|MuxR|out[11]~22_combout\) # 
-- (\CPU|DP|REGFILE|writeR6|out\(11))) # (\CPU|DP|REGFILE|MuxR|out[11]~23_combout\) ) ) ) # ( !\CPU|DP|REGFILE|read_dec|ShiftLeft0~0_combout\ & ( !\CPU|DP|REGFILE|read_dec|ShiftLeft0~1_combout\ & ( (\CPU|DP|REGFILE|MuxR|out[11]~22_combout\) # 
-- (\CPU|DP|REGFILE|MuxR|out[11]~23_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010111111111010111111111111101110111111111110111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DP|REGFILE|MuxR|ALT_INV_out[11]~23_combout\,
	datab => \CPU|DP|REGFILE|writeR7|ALT_INV_out\(11),
	datac => \CPU|DP|REGFILE|writeR6|ALT_INV_out\(11),
	datad => \CPU|DP|REGFILE|MuxR|ALT_INV_out[11]~22_combout\,
	datae => \CPU|DP|REGFILE|read_dec|ALT_INV_ShiftLeft0~0_combout\,
	dataf => \CPU|DP|REGFILE|read_dec|ALT_INV_ShiftLeft0~1_combout\,
	combout => \CPU|DP|REGFILE|MuxR|out\(11));

-- Location: FF_X81_Y6_N14
\CPU|DP|pipeB|out[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|DP|REGFILE|MuxR|out\(11),
	sload => VCC,
	ena => \CPU|state|WideOr10~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|pipeB|out\(11));

-- Location: LABCELL_X81_Y6_N48
\CPU|DP|Bin[11]~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|Bin[11]~12_combout\ = ( \CPU|instreg|out\(4) & ( \CPU|DP|Bin[2]~0_combout\ & ( (!\CPU|DP|Bin[2]~1_combout\) # (\CPU|DP|pipeB|out\(10)) ) ) ) # ( !\CPU|instreg|out\(4) & ( \CPU|DP|Bin[2]~0_combout\ & ( (\CPU|DP|pipeB|out\(10) & 
-- \CPU|DP|Bin[2]~1_combout\) ) ) ) # ( \CPU|instreg|out\(4) & ( !\CPU|DP|Bin[2]~0_combout\ & ( (!\CPU|DP|Bin[2]~1_combout\ & (\CPU|DP|pipeB|out\(11))) # (\CPU|DP|Bin[2]~1_combout\ & ((\CPU|DP|pipeB|out\(12)))) ) ) ) # ( !\CPU|instreg|out\(4) & ( 
-- !\CPU|DP|Bin[2]~0_combout\ & ( (!\CPU|DP|Bin[2]~1_combout\ & (\CPU|DP|pipeB|out\(11))) # (\CPU|DP|Bin[2]~1_combout\ & ((\CPU|DP|pipeB|out\(12)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000111111001100000011111100000101000001011111010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DP|pipeB|ALT_INV_out\(10),
	datab => \CPU|DP|pipeB|ALT_INV_out\(11),
	datac => \CPU|DP|ALT_INV_Bin[2]~1_combout\,
	datad => \CPU|DP|pipeB|ALT_INV_out\(12),
	datae => \CPU|instreg|ALT_INV_out\(4),
	dataf => \CPU|DP|ALT_INV_Bin[2]~0_combout\,
	combout => \CPU|DP|Bin[11]~12_combout\);

-- Location: LABCELL_X83_Y8_N12
\CPU|DP|pipeC|out[11]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|pipeC|out[11]~feeder_combout\ = ( \CPU|DP|logic|Add0~45_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|DP|logic|ALT_INV_Add0~45_sumout\,
	combout => \CPU|DP|pipeC|out[11]~feeder_combout\);

-- Location: LABCELL_X81_Y6_N45
\CPU|DP|logic|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|logic|Mux4~0_combout\ = ( \CPU|DP|Bin[11]~12_combout\ & ( (\CPU|DP|pipeA|out\(11) & \CPU|DP|logic|Mux0~0_combout\) ) ) # ( !\CPU|DP|Bin[11]~12_combout\ & ( \CPU|instreg|out[11]~DUPLICATE_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010100000000001100110000000000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|instreg|ALT_INV_out[11]~DUPLICATE_q\,
	datab => \CPU|DP|pipeA|ALT_INV_out\(11),
	datad => \CPU|DP|logic|ALT_INV_Mux0~0_combout\,
	dataf => \CPU|DP|ALT_INV_Bin[11]~12_combout\,
	combout => \CPU|DP|logic|Mux4~0_combout\);

-- Location: FF_X83_Y8_N13
\CPU|DP|pipeC|out[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|DP|pipeC|out[11]~feeder_combout\,
	asdata => \CPU|DP|logic|Mux4~0_combout\,
	sload => \CPU|instreg|out\(12),
	ena => \CPU|state|WideOr12~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|pipeC|out\(11));

-- Location: LABCELL_X85_Y6_N30
\CPU|DP|multi|b[10]\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|multi|b\(10) = ( \CPU|DP|pipeC|out\(10) & ( \MEM|mem_rtl_0|auto_generated|ram_block1a10\ & ( (((!\switch~2_combout\ & \CPU|state|WideOr5~2_combout\)) # (\CPU|DP|multi|comb~0_combout\)) # (\CPU|state|WideOr4~2_combout\) ) ) ) # ( 
-- !\CPU|DP|pipeC|out\(10) & ( \MEM|mem_rtl_0|auto_generated|ram_block1a10\ & ( ((!\switch~2_combout\ & \CPU|state|WideOr5~2_combout\)) # (\CPU|DP|multi|comb~0_combout\) ) ) ) # ( \CPU|DP|pipeC|out\(10) & ( !\MEM|mem_rtl_0|auto_generated|ram_block1a10\ & ( 
-- (\CPU|DP|multi|comb~0_combout\) # (\CPU|state|WideOr4~2_combout\) ) ) ) # ( !\CPU|DP|pipeC|out\(10) & ( !\MEM|mem_rtl_0|auto_generated|ram_block1a10\ & ( \CPU|DP|multi|comb~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111010111110101111100001111110011110101111111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|state|ALT_INV_WideOr4~2_combout\,
	datab => \ALT_INV_switch~2_combout\,
	datac => \CPU|DP|multi|ALT_INV_comb~0_combout\,
	datad => \CPU|state|ALT_INV_WideOr5~2_combout\,
	datae => \CPU|DP|pipeC|ALT_INV_out\(10),
	dataf => \MEM|mem_rtl_0|auto_generated|ALT_INV_ram_block1a10\,
	combout => \CPU|DP|multi|b\(10));

-- Location: LABCELL_X81_Y8_N42
\CPU|DP|REGFILE|writeR6|out[10]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|REGFILE|writeR6|out[10]~feeder_combout\ = ( \CPU|DP|multi|b\(10) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|DP|multi|ALT_INV_b\(10),
	combout => \CPU|DP|REGFILE|writeR6|out[10]~feeder_combout\);

-- Location: FF_X81_Y8_N43
\CPU|DP|REGFILE|writeR6|out[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|DP|REGFILE|writeR6|out[10]~feeder_combout\,
	ena => \CPU|DP|REGFILE|andss|out\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|writeR6|out\(10));

-- Location: LABCELL_X83_Y10_N36
\CPU|DP|REGFILE|writeR7|out[10]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|REGFILE|writeR7|out[10]~feeder_combout\ = ( \CPU|DP|multi|b\(10) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|DP|multi|ALT_INV_b\(10),
	combout => \CPU|DP|REGFILE|writeR7|out[10]~feeder_combout\);

-- Location: FF_X83_Y10_N37
\CPU|DP|REGFILE|writeR7|out[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|DP|REGFILE|writeR7|out[10]~feeder_combout\,
	ena => \CPU|DP|REGFILE|andss|out\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|writeR7|out\(10));

-- Location: MLABCELL_X84_Y6_N42
\CPU|DP|REGFILE|writeR4|out[10]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|REGFILE|writeR4|out[10]~feeder_combout\ = ( \CPU|DP|multi|b\(10) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|DP|multi|ALT_INV_b\(10),
	combout => \CPU|DP|REGFILE|writeR4|out[10]~feeder_combout\);

-- Location: FF_X84_Y6_N43
\CPU|DP|REGFILE|writeR4|out[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|DP|REGFILE|writeR4|out[10]~feeder_combout\,
	ena => \CPU|DP|REGFILE|andss|out\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|writeR4|out\(10));

-- Location: MLABCELL_X84_Y6_N27
\CPU|DP|REGFILE|writeR2|out[10]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|REGFILE|writeR2|out[10]~feeder_combout\ = ( \CPU|DP|multi|b\(10) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|DP|multi|ALT_INV_b\(10),
	combout => \CPU|DP|REGFILE|writeR2|out[10]~feeder_combout\);

-- Location: FF_X84_Y6_N28
\CPU|DP|REGFILE|writeR2|out[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|DP|REGFILE|writeR2|out[10]~feeder_combout\,
	ena => \CPU|DP|REGFILE|andss|out\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|writeR2|out\(10));

-- Location: FF_X82_Y8_N2
\CPU|DP|REGFILE|writeR0|out[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|DP|multi|b\(10),
	sload => VCC,
	ena => \CPU|DP|REGFILE|andss|out\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|writeR0|out\(10));

-- Location: MLABCELL_X82_Y8_N0
\CPU|DP|REGFILE|MuxR|out[10]~20\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|REGFILE|MuxR|out[10]~20_combout\ = ( \CPU|DP|REGFILE|writeR0|out\(10) & ( \CPU|dec|ReadMux|b\(1) & ( (\CPU|dec|ReadMux|b\(0) & ((\CPU|dec|ReadMux|b\(2)) # (\CPU|DP|REGFILE|writeR4|out\(10)))) ) ) ) # ( !\CPU|DP|REGFILE|writeR0|out\(10) & ( 
-- \CPU|dec|ReadMux|b\(1) & ( (\CPU|DP|REGFILE|writeR4|out\(10) & (!\CPU|dec|ReadMux|b\(2) & \CPU|dec|ReadMux|b\(0))) ) ) ) # ( \CPU|DP|REGFILE|writeR0|out\(10) & ( !\CPU|dec|ReadMux|b\(1) & ( (\CPU|DP|REGFILE|writeR2|out\(10) & (\CPU|dec|ReadMux|b\(2) & 
-- \CPU|dec|ReadMux|b\(0))) ) ) ) # ( !\CPU|DP|REGFILE|writeR0|out\(10) & ( !\CPU|dec|ReadMux|b\(1) & ( (\CPU|DP|REGFILE|writeR2|out\(10) & (\CPU|dec|ReadMux|b\(2) & \CPU|dec|ReadMux|b\(0))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000011000000000000001100000000010100000000000001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DP|REGFILE|writeR4|ALT_INV_out\(10),
	datab => \CPU|DP|REGFILE|writeR2|ALT_INV_out\(10),
	datac => \CPU|dec|ReadMux|ALT_INV_b\(2),
	datad => \CPU|dec|ReadMux|ALT_INV_b\(0),
	datae => \CPU|DP|REGFILE|writeR0|ALT_INV_out\(10),
	dataf => \CPU|dec|ReadMux|ALT_INV_b\(1),
	combout => \CPU|DP|REGFILE|MuxR|out[10]~20_combout\);

-- Location: FF_X85_Y6_N7
\CPU|DP|REGFILE|writeR3|out[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|DP|multi|b\(10),
	sload => VCC,
	ena => \CPU|DP|REGFILE|andss|out\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|writeR3|out\(10));

-- Location: FF_X85_Y6_N32
\CPU|DP|REGFILE|writeR5|out[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|DP|multi|b\(10),
	ena => \CPU|DP|REGFILE|andss|out\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|writeR5|out\(10));

-- Location: FF_X85_Y6_N20
\CPU|DP|REGFILE|writeR1|out[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|DP|multi|b\(10),
	sload => VCC,
	ena => \CPU|DP|REGFILE|andss|out\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|writeR1|out\(10));

-- Location: LABCELL_X85_Y6_N18
\CPU|DP|REGFILE|MuxR|out[10]~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|REGFILE|MuxR|out[10]~21_combout\ = ( \CPU|DP|REGFILE|writeR1|out\(10) & ( \CPU|dec|ReadMux|b\(1) & ( (!\CPU|dec|ReadMux|b\(0) & ((\CPU|dec|ReadMux|b\(2)) # (\CPU|DP|REGFILE|writeR5|out\(10)))) ) ) ) # ( !\CPU|DP|REGFILE|writeR1|out\(10) & ( 
-- \CPU|dec|ReadMux|b\(1) & ( (\CPU|DP|REGFILE|writeR5|out\(10) & (!\CPU|dec|ReadMux|b\(2) & !\CPU|dec|ReadMux|b\(0))) ) ) ) # ( \CPU|DP|REGFILE|writeR1|out\(10) & ( !\CPU|dec|ReadMux|b\(1) & ( (\CPU|DP|REGFILE|writeR3|out\(10) & (\CPU|dec|ReadMux|b\(2) & 
-- !\CPU|dec|ReadMux|b\(0))) ) ) ) # ( !\CPU|DP|REGFILE|writeR1|out\(10) & ( !\CPU|dec|ReadMux|b\(1) & ( (\CPU|DP|REGFILE|writeR3|out\(10) & (\CPU|dec|ReadMux|b\(2) & !\CPU|dec|ReadMux|b\(0))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000000000001010000000000110000000000000011111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DP|REGFILE|writeR3|ALT_INV_out\(10),
	datab => \CPU|DP|REGFILE|writeR5|ALT_INV_out\(10),
	datac => \CPU|dec|ReadMux|ALT_INV_b\(2),
	datad => \CPU|dec|ReadMux|ALT_INV_b\(0),
	datae => \CPU|DP|REGFILE|writeR1|ALT_INV_out\(10),
	dataf => \CPU|dec|ReadMux|ALT_INV_b\(1),
	combout => \CPU|DP|REGFILE|MuxR|out[10]~21_combout\);

-- Location: LABCELL_X81_Y6_N18
\CPU|DP|REGFILE|MuxR|out[10]\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|REGFILE|MuxR|out\(10) = ( \CPU|DP|REGFILE|read_dec|ShiftLeft0~0_combout\ & ( \CPU|DP|REGFILE|read_dec|ShiftLeft0~1_combout\ & ( (((\CPU|DP|REGFILE|MuxR|out[10]~21_combout\) # (\CPU|DP|REGFILE|MuxR|out[10]~20_combout\)) # 
-- (\CPU|DP|REGFILE|writeR7|out\(10))) # (\CPU|DP|REGFILE|writeR6|out\(10)) ) ) ) # ( !\CPU|DP|REGFILE|read_dec|ShiftLeft0~0_combout\ & ( \CPU|DP|REGFILE|read_dec|ShiftLeft0~1_combout\ & ( ((\CPU|DP|REGFILE|MuxR|out[10]~21_combout\) # 
-- (\CPU|DP|REGFILE|MuxR|out[10]~20_combout\)) # (\CPU|DP|REGFILE|writeR7|out\(10)) ) ) ) # ( \CPU|DP|REGFILE|read_dec|ShiftLeft0~0_combout\ & ( !\CPU|DP|REGFILE|read_dec|ShiftLeft0~1_combout\ & ( ((\CPU|DP|REGFILE|MuxR|out[10]~21_combout\) # 
-- (\CPU|DP|REGFILE|MuxR|out[10]~20_combout\)) # (\CPU|DP|REGFILE|writeR6|out\(10)) ) ) ) # ( !\CPU|DP|REGFILE|read_dec|ShiftLeft0~0_combout\ & ( !\CPU|DP|REGFILE|read_dec|ShiftLeft0~1_combout\ & ( (\CPU|DP|REGFILE|MuxR|out[10]~21_combout\) # 
-- (\CPU|DP|REGFILE|MuxR|out[10]~20_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111111111010111111111111100111111111111110111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DP|REGFILE|writeR6|ALT_INV_out\(10),
	datab => \CPU|DP|REGFILE|writeR7|ALT_INV_out\(10),
	datac => \CPU|DP|REGFILE|MuxR|ALT_INV_out[10]~20_combout\,
	datad => \CPU|DP|REGFILE|MuxR|ALT_INV_out[10]~21_combout\,
	datae => \CPU|DP|REGFILE|read_dec|ALT_INV_ShiftLeft0~0_combout\,
	dataf => \CPU|DP|REGFILE|read_dec|ALT_INV_ShiftLeft0~1_combout\,
	combout => \CPU|DP|REGFILE|MuxR|out\(10));

-- Location: FF_X81_Y6_N26
\CPU|DP|pipeB|out[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|DP|REGFILE|MuxR|out\(10),
	sload => VCC,
	ena => \CPU|state|WideOr10~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|pipeB|out\(10));

-- Location: LABCELL_X81_Y6_N15
\CPU|DP|Bin[10]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|Bin[10]~11_combout\ = ( \CPU|DP|Bin[2]~1_combout\ & ( \CPU|DP|Bin[2]~0_combout\ & ( \CPU|DP|pipeB|out\(9) ) ) ) # ( !\CPU|DP|Bin[2]~1_combout\ & ( \CPU|DP|Bin[2]~0_combout\ & ( \CPU|instreg|out\(4) ) ) ) # ( \CPU|DP|Bin[2]~1_combout\ & ( 
-- !\CPU|DP|Bin[2]~0_combout\ & ( \CPU|DP|pipeB|out\(11) ) ) ) # ( !\CPU|DP|Bin[2]~1_combout\ & ( !\CPU|DP|Bin[2]~0_combout\ & ( \CPU|DP|pipeB|out\(10) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100000000111111110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DP|pipeB|ALT_INV_out\(10),
	datab => \CPU|DP|pipeB|ALT_INV_out\(11),
	datac => \CPU|DP|pipeB|ALT_INV_out\(9),
	datad => \CPU|instreg|ALT_INV_out\(4),
	datae => \CPU|DP|ALT_INV_Bin[2]~1_combout\,
	dataf => \CPU|DP|ALT_INV_Bin[2]~0_combout\,
	combout => \CPU|DP|Bin[10]~11_combout\);

-- Location: LABCELL_X81_Y6_N3
\CPU|DP|pipeC|out[10]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|pipeC|out[10]~feeder_combout\ = ( \CPU|DP|logic|Add0~41_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|DP|logic|ALT_INV_Add0~41_sumout\,
	combout => \CPU|DP|pipeC|out[10]~feeder_combout\);

-- Location: LABCELL_X81_Y6_N0
\CPU|DP|logic|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|logic|Mux5~0_combout\ = (!\CPU|DP|Bin[10]~11_combout\ & (((\CPU|instreg|out[11]~DUPLICATE_q\)))) # (\CPU|DP|Bin[10]~11_combout\ & (\CPU|DP|logic|Mux0~0_combout\ & (\CPU|DP|pipeA|out\(10))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000111001101000000011100110100000001110011010000000111001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DP|logic|ALT_INV_Mux0~0_combout\,
	datab => \CPU|DP|ALT_INV_Bin[10]~11_combout\,
	datac => \CPU|DP|pipeA|ALT_INV_out\(10),
	datad => \CPU|instreg|ALT_INV_out[11]~DUPLICATE_q\,
	combout => \CPU|DP|logic|Mux5~0_combout\);

-- Location: FF_X81_Y6_N4
\CPU|DP|pipeC|out[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|DP|pipeC|out[10]~feeder_combout\,
	asdata => \CPU|DP|logic|Mux5~0_combout\,
	sload => \CPU|instreg|out\(12),
	ena => \CPU|state|WideOr12~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|pipeC|out\(10));

-- Location: LABCELL_X85_Y6_N15
\CPU|DP|multi|b[9]\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|multi|b\(9) = ( \CPU|DP|pipeC|out\(9) & ( \MEM|mem_rtl_0|auto_generated|ram_block1a9\ & ( (((\CPU|state|WideOr5~2_combout\ & !\switch~2_combout\)) # (\CPU|state|WideOr4~2_combout\)) # (\CPU|DP|multi|comb~0_combout\) ) ) ) # ( 
-- !\CPU|DP|pipeC|out\(9) & ( \MEM|mem_rtl_0|auto_generated|ram_block1a9\ & ( ((\CPU|state|WideOr5~2_combout\ & !\switch~2_combout\)) # (\CPU|DP|multi|comb~0_combout\) ) ) ) # ( \CPU|DP|pipeC|out\(9) & ( !\MEM|mem_rtl_0|auto_generated|ram_block1a9\ & ( 
-- (\CPU|state|WideOr4~2_combout\) # (\CPU|DP|multi|comb~0_combout\) ) ) ) # ( !\CPU|DP|pipeC|out\(9) & ( !\MEM|mem_rtl_0|auto_generated|ram_block1a9\ & ( \CPU|DP|multi|comb~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101011111111101110101011101010111010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DP|multi|ALT_INV_comb~0_combout\,
	datab => \CPU|state|ALT_INV_WideOr5~2_combout\,
	datac => \ALT_INV_switch~2_combout\,
	datad => \CPU|state|ALT_INV_WideOr4~2_combout\,
	datae => \CPU|DP|pipeC|ALT_INV_out\(9),
	dataf => \MEM|mem_rtl_0|auto_generated|ALT_INV_ram_block1a9\,
	combout => \CPU|DP|multi|b\(9));

-- Location: LABCELL_X81_Y8_N24
\CPU|DP|REGFILE|writeR6|out[9]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|REGFILE|writeR6|out[9]~feeder_combout\ = ( \CPU|DP|multi|b\(9) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|DP|multi|ALT_INV_b\(9),
	combout => \CPU|DP|REGFILE|writeR6|out[9]~feeder_combout\);

-- Location: FF_X81_Y8_N26
\CPU|DP|REGFILE|writeR6|out[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|DP|REGFILE|writeR6|out[9]~feeder_combout\,
	ena => \CPU|DP|REGFILE|andss|out\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|writeR6|out\(9));

-- Location: FF_X84_Y10_N58
\CPU|DP|REGFILE|writeR7|out[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|DP|multi|b\(9),
	sload => VCC,
	ena => \CPU|DP|REGFILE|andss|out\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|writeR7|out\(9));

-- Location: FF_X84_Y6_N5
\CPU|DP|REGFILE|writeR4|out[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|DP|multi|b\(9),
	sload => VCC,
	ena => \CPU|DP|REGFILE|andss|out\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|writeR4|out\(9));

-- Location: MLABCELL_X84_Y6_N6
\CPU|DP|REGFILE|writeR2|out[9]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|REGFILE|writeR2|out[9]~feeder_combout\ = \CPU|DP|multi|b\(9)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU|DP|multi|ALT_INV_b\(9),
	combout => \CPU|DP|REGFILE|writeR2|out[9]~feeder_combout\);

-- Location: FF_X84_Y6_N8
\CPU|DP|REGFILE|writeR2|out[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|DP|REGFILE|writeR2|out[9]~feeder_combout\,
	ena => \CPU|DP|REGFILE|andss|out\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|writeR2|out\(9));

-- Location: FF_X84_Y6_N20
\CPU|DP|REGFILE|writeR0|out[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|DP|multi|b\(9),
	sload => VCC,
	ena => \CPU|DP|REGFILE|andss|out\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|writeR0|out\(9));

-- Location: MLABCELL_X84_Y6_N18
\CPU|DP|REGFILE|MuxR|out[9]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|REGFILE|MuxR|out[9]~4_combout\ = ( \CPU|DP|REGFILE|writeR0|out\(9) & ( \CPU|dec|ReadMux|b\(1) & ( (\CPU|dec|ReadMux|b\(0) & ((\CPU|dec|ReadMux|b\(2)) # (\CPU|DP|REGFILE|writeR4|out\(9)))) ) ) ) # ( !\CPU|DP|REGFILE|writeR0|out\(9) & ( 
-- \CPU|dec|ReadMux|b\(1) & ( (\CPU|DP|REGFILE|writeR4|out\(9) & (\CPU|dec|ReadMux|b\(0) & !\CPU|dec|ReadMux|b\(2))) ) ) ) # ( \CPU|DP|REGFILE|writeR0|out\(9) & ( !\CPU|dec|ReadMux|b\(1) & ( (\CPU|DP|REGFILE|writeR2|out\(9) & (\CPU|dec|ReadMux|b\(0) & 
-- \CPU|dec|ReadMux|b\(2))) ) ) ) # ( !\CPU|DP|REGFILE|writeR0|out\(9) & ( !\CPU|dec|ReadMux|b\(1) & ( (\CPU|DP|REGFILE|writeR2|out\(9) & (\CPU|dec|ReadMux|b\(0) & \CPU|dec|ReadMux|b\(2))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000011000000000000001100000101000000000000010100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DP|REGFILE|writeR4|ALT_INV_out\(9),
	datab => \CPU|DP|REGFILE|writeR2|ALT_INV_out\(9),
	datac => \CPU|dec|ReadMux|ALT_INV_b\(0),
	datad => \CPU|dec|ReadMux|ALT_INV_b\(2),
	datae => \CPU|DP|REGFILE|writeR0|ALT_INV_out\(9),
	dataf => \CPU|dec|ReadMux|ALT_INV_b\(1),
	combout => \CPU|DP|REGFILE|MuxR|out[9]~4_combout\);

-- Location: FF_X85_Y8_N52
\CPU|DP|REGFILE|writeR3|out[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|DP|multi|b\(9),
	sload => VCC,
	ena => \CPU|DP|REGFILE|andss|out\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|writeR3|out\(9));

-- Location: FF_X85_Y6_N17
\CPU|DP|REGFILE|writeR5|out[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|DP|multi|b\(9),
	ena => \CPU|DP|REGFILE|andss|out\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|writeR5|out\(9));

-- Location: FF_X82_Y8_N14
\CPU|DP|REGFILE|writeR1|out[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|DP|multi|b\(9),
	sload => VCC,
	ena => \CPU|DP|REGFILE|andss|out\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|writeR1|out\(9));

-- Location: MLABCELL_X82_Y8_N12
\CPU|DP|REGFILE|MuxR|out[9]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|REGFILE|MuxR|out[9]~5_combout\ = ( \CPU|DP|REGFILE|writeR1|out\(9) & ( \CPU|dec|ReadMux|b\(1) & ( (!\CPU|dec|ReadMux|b\(0) & ((\CPU|dec|ReadMux|b\(2)) # (\CPU|DP|REGFILE|writeR5|out\(9)))) ) ) ) # ( !\CPU|DP|REGFILE|writeR1|out\(9) & ( 
-- \CPU|dec|ReadMux|b\(1) & ( (\CPU|DP|REGFILE|writeR5|out\(9) & (!\CPU|dec|ReadMux|b\(0) & !\CPU|dec|ReadMux|b\(2))) ) ) ) # ( \CPU|DP|REGFILE|writeR1|out\(9) & ( !\CPU|dec|ReadMux|b\(1) & ( (\CPU|DP|REGFILE|writeR3|out\(9) & (!\CPU|dec|ReadMux|b\(0) & 
-- \CPU|dec|ReadMux|b\(2))) ) ) ) # ( !\CPU|DP|REGFILE|writeR1|out\(9) & ( !\CPU|dec|ReadMux|b\(1) & ( (\CPU|DP|REGFILE|writeR3|out\(9) & (!\CPU|dec|ReadMux|b\(0) & \CPU|dec|ReadMux|b\(2))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010000000000000101000000110000000000000011000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DP|REGFILE|writeR3|ALT_INV_out\(9),
	datab => \CPU|DP|REGFILE|writeR5|ALT_INV_out\(9),
	datac => \CPU|dec|ReadMux|ALT_INV_b\(0),
	datad => \CPU|dec|ReadMux|ALT_INV_b\(2),
	datae => \CPU|DP|REGFILE|writeR1|ALT_INV_out\(9),
	dataf => \CPU|dec|ReadMux|ALT_INV_b\(1),
	combout => \CPU|DP|REGFILE|MuxR|out[9]~5_combout\);

-- Location: LABCELL_X83_Y6_N6
\CPU|DP|REGFILE|MuxR|out[9]\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|REGFILE|MuxR|out\(9) = ( \CPU|DP|REGFILE|MuxR|out[9]~5_combout\ & ( \CPU|DP|REGFILE|read_dec|ShiftLeft0~1_combout\ ) ) # ( !\CPU|DP|REGFILE|MuxR|out[9]~5_combout\ & ( \CPU|DP|REGFILE|read_dec|ShiftLeft0~1_combout\ & ( 
-- (((\CPU|DP|REGFILE|writeR6|out\(9) & \CPU|DP|REGFILE|read_dec|ShiftLeft0~0_combout\)) # (\CPU|DP|REGFILE|MuxR|out[9]~4_combout\)) # (\CPU|DP|REGFILE|writeR7|out\(9)) ) ) ) # ( \CPU|DP|REGFILE|MuxR|out[9]~5_combout\ & ( 
-- !\CPU|DP|REGFILE|read_dec|ShiftLeft0~1_combout\ ) ) # ( !\CPU|DP|REGFILE|MuxR|out[9]~5_combout\ & ( !\CPU|DP|REGFILE|read_dec|ShiftLeft0~1_combout\ & ( ((\CPU|DP|REGFILE|writeR6|out\(9) & \CPU|DP|REGFILE|read_dec|ShiftLeft0~0_combout\)) # 
-- (\CPU|DP|REGFILE|MuxR|out[9]~4_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010111111111111111111111111100110111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DP|REGFILE|writeR6|ALT_INV_out\(9),
	datab => \CPU|DP|REGFILE|writeR7|ALT_INV_out\(9),
	datac => \CPU|DP|REGFILE|read_dec|ALT_INV_ShiftLeft0~0_combout\,
	datad => \CPU|DP|REGFILE|MuxR|ALT_INV_out[9]~4_combout\,
	datae => \CPU|DP|REGFILE|MuxR|ALT_INV_out[9]~5_combout\,
	dataf => \CPU|DP|REGFILE|read_dec|ALT_INV_ShiftLeft0~1_combout\,
	combout => \CPU|DP|REGFILE|MuxR|out\(9));

-- Location: FF_X83_Y6_N8
\CPU|DP|pipeA|out[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|DP|REGFILE|MuxR|out\(9),
	ena => \CPU|state|WideOr9~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|pipeA|out\(9));

-- Location: LABCELL_X83_Y6_N36
\CPU|DP|pipeC|out[9]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|pipeC|out[9]~feeder_combout\ = ( \CPU|DP|logic|Add0~37_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|DP|logic|ALT_INV_Add0~37_sumout\,
	combout => \CPU|DP|pipeC|out[9]~feeder_combout\);

-- Location: LABCELL_X81_Y6_N30
\CPU|DP|logic|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|logic|Mux6~0_combout\ = ( \CPU|DP|Bin[9]~10_combout\ & ( (\CPU|DP|pipeA|out\(9) & \CPU|DP|logic|Mux0~0_combout\) ) ) # ( !\CPU|DP|Bin[9]~10_combout\ & ( \CPU|instreg|out[11]~DUPLICATE_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010100000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|instreg|ALT_INV_out[11]~DUPLICATE_q\,
	datac => \CPU|DP|pipeA|ALT_INV_out\(9),
	datad => \CPU|DP|logic|ALT_INV_Mux0~0_combout\,
	dataf => \CPU|DP|ALT_INV_Bin[9]~10_combout\,
	combout => \CPU|DP|logic|Mux6~0_combout\);

-- Location: FF_X83_Y6_N37
\CPU|DP|pipeC|out[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|DP|pipeC|out[9]~feeder_combout\,
	asdata => \CPU|DP|logic|Mux6~0_combout\,
	sload => \CPU|instreg|out\(12),
	ena => \CPU|state|WideOr12~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|pipeC|out\(9));

-- Location: MLABCELL_X84_Y7_N3
\read_data[8]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \read_data[8]~11_combout\ = ( \switch~3_combout\ & ( \MEM|mem_rtl_0|auto_generated|ram_block1a8\ & ( (!\led~2_combout\) # ((!\led~1_combout\) # ((!\led~0_combout\) # (!\led~3_combout\))) ) ) ) # ( !\switch~3_combout\ & ( 
-- \MEM|mem_rtl_0|auto_generated|ram_block1a8\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_led~2_combout\,
	datab => \ALT_INV_led~1_combout\,
	datac => \ALT_INV_led~0_combout\,
	datad => \ALT_INV_led~3_combout\,
	datae => \ALT_INV_switch~3_combout\,
	dataf => \MEM|mem_rtl_0|auto_generated|ALT_INV_ram_block1a8\,
	combout => \read_data[8]~11_combout\);

-- Location: FF_X84_Y7_N5
\CPU|instreg|out[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \read_data[8]~11_combout\,
	ena => \CPU|state|WideOr18~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|instreg|out\(8));

-- Location: MLABCELL_X84_Y7_N6
\CPU|dec|ReadMux|b[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|dec|ReadMux|b[0]~0_combout\ = ( \CPU|instreg|out\(8) & ( \CPU|instreg|out\(0) & ( (\CPU|state|Decoder0~3_combout\ & (((!\CPU|state|STATE|next_out\(0) & \CPU|state|WideOr3~5_combout\)) # (\CPU|state|WideOr8~0_combout\))) ) ) ) # ( 
-- !\CPU|instreg|out\(8) & ( \CPU|instreg|out\(0) & ( (\CPU|state|Decoder0~3_combout\ & \CPU|state|WideOr8~0_combout\) ) ) ) # ( \CPU|instreg|out\(8) & ( !\CPU|instreg|out\(0) & ( (\CPU|state|Decoder0~3_combout\ & (!\CPU|state|STATE|next_out\(0) & 
-- \CPU|state|WideOr3~5_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000100010000000101000001010000010101000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|state|ALT_INV_Decoder0~3_combout\,
	datab => \CPU|state|STATE|ALT_INV_next_out\(0),
	datac => \CPU|state|ALT_INV_WideOr8~0_combout\,
	datad => \CPU|state|ALT_INV_WideOr3~5_combout\,
	datae => \CPU|instreg|ALT_INV_out\(8),
	dataf => \CPU|instreg|ALT_INV_out\(0),
	combout => \CPU|dec|ReadMux|b[0]~0_combout\);

-- Location: MLABCELL_X84_Y7_N51
\CPU|dec|ReadMux|b[0]\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|dec|ReadMux|b\(0) = ( \CPU|state|WideOr7~1_combout\ & ( (!\CPU|dec|ReadMux|b[0]~0_combout\ & !\CPU|instreg|out\(5)) ) ) # ( !\CPU|state|WideOr7~1_combout\ & ( (!\CPU|dec|ReadMux|b[0]~0_combout\ & ((!\CPU|instreg|out\(5)) # 
-- ((!\CPU|state|WideOr7~3_combout\ & !\CPU|state|WideOr7~4_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110010000000110011001000000011001100000000001100110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|state|ALT_INV_WideOr7~3_combout\,
	datab => \CPU|dec|ReadMux|ALT_INV_b[0]~0_combout\,
	datac => \CPU|state|ALT_INV_WideOr7~4_combout\,
	datad => \CPU|instreg|ALT_INV_out\(5),
	dataf => \CPU|state|ALT_INV_WideOr7~1_combout\,
	combout => \CPU|dec|ReadMux|b\(0));

-- Location: LABCELL_X81_Y8_N30
\CPU|DP|REGFILE|andss|out[6]\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|REGFILE|andss|out\(6) = ( !\CPU|dec|ReadMux|b\(1) & ( (\CPU|state|WideOr13~5_combout\ & (\CPU|dec|ReadMux|b\(0) & !\CPU|dec|ReadMux|b\(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000000000000000000000000000101000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|state|ALT_INV_WideOr13~5_combout\,
	datac => \CPU|dec|ReadMux|ALT_INV_b\(0),
	datad => \CPU|dec|ReadMux|ALT_INV_b\(2),
	datae => \CPU|dec|ReadMux|ALT_INV_b\(1),
	combout => \CPU|DP|REGFILE|andss|out\(6));

-- Location: FF_X81_Y8_N35
\CPU|DP|REGFILE|writeR6|out[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|DP|multi|b[7]~7_combout\,
	sload => VCC,
	ena => \CPU|DP|REGFILE|andss|out\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|writeR6|out\(7));

-- Location: FF_X84_Y10_N55
\CPU|DP|REGFILE|writeR7|out[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|DP|multi|b[7]~7_combout\,
	sload => VCC,
	ena => \CPU|DP|REGFILE|andss|out\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|writeR7|out\(7));

-- Location: FF_X84_Y6_N2
\CPU|DP|REGFILE|writeR4|out[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|DP|multi|b[7]~7_combout\,
	sload => VCC,
	ena => \CPU|DP|REGFILE|andss|out\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|writeR4|out\(7));

-- Location: MLABCELL_X84_Y6_N24
\CPU|DP|REGFILE|writeR2|out[7]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|REGFILE|writeR2|out[7]~feeder_combout\ = ( \CPU|DP|multi|b[7]~7_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|DP|multi|ALT_INV_b[7]~7_combout\,
	combout => \CPU|DP|REGFILE|writeR2|out[7]~feeder_combout\);

-- Location: FF_X84_Y6_N25
\CPU|DP|REGFILE|writeR2|out[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|DP|REGFILE|writeR2|out[7]~feeder_combout\,
	ena => \CPU|DP|REGFILE|andss|out\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|writeR2|out\(7));

-- Location: FF_X84_Y6_N14
\CPU|DP|REGFILE|writeR0|out[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|DP|multi|b[7]~7_combout\,
	sload => VCC,
	ena => \CPU|DP|REGFILE|andss|out\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|writeR0|out\(7));

-- Location: MLABCELL_X84_Y6_N12
\CPU|DP|REGFILE|MuxR|out[7]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|REGFILE|MuxR|out[7]~2_combout\ = ( \CPU|DP|REGFILE|writeR0|out\(7) & ( \CPU|dec|ReadMux|b\(1) & ( (\CPU|dec|ReadMux|b\(0) & ((\CPU|dec|ReadMux|b\(2)) # (\CPU|DP|REGFILE|writeR4|out\(7)))) ) ) ) # ( !\CPU|DP|REGFILE|writeR0|out\(7) & ( 
-- \CPU|dec|ReadMux|b\(1) & ( (\CPU|DP|REGFILE|writeR4|out\(7) & (\CPU|dec|ReadMux|b\(0) & !\CPU|dec|ReadMux|b\(2))) ) ) ) # ( \CPU|DP|REGFILE|writeR0|out\(7) & ( !\CPU|dec|ReadMux|b\(1) & ( (\CPU|DP|REGFILE|writeR2|out\(7) & (\CPU|dec|ReadMux|b\(0) & 
-- \CPU|dec|ReadMux|b\(2))) ) ) ) # ( !\CPU|DP|REGFILE|writeR0|out\(7) & ( !\CPU|dec|ReadMux|b\(1) & ( (\CPU|DP|REGFILE|writeR2|out\(7) & (\CPU|dec|ReadMux|b\(0) & \CPU|dec|ReadMux|b\(2))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000011000000000000001100000101000000000000010100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DP|REGFILE|writeR4|ALT_INV_out\(7),
	datab => \CPU|DP|REGFILE|writeR2|ALT_INV_out\(7),
	datac => \CPU|dec|ReadMux|ALT_INV_b\(0),
	datad => \CPU|dec|ReadMux|ALT_INV_b\(2),
	datae => \CPU|DP|REGFILE|writeR0|ALT_INV_out\(7),
	dataf => \CPU|dec|ReadMux|ALT_INV_b\(1),
	combout => \CPU|DP|REGFILE|MuxR|out[7]~2_combout\);

-- Location: FF_X85_Y8_N22
\CPU|DP|REGFILE|writeR3|out[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|DP|multi|b[7]~7_combout\,
	sload => VCC,
	ena => \CPU|DP|REGFILE|andss|out\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|writeR3|out\(7));

-- Location: FF_X85_Y6_N50
\CPU|DP|REGFILE|writeR5|out[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|DP|multi|b[7]~7_combout\,
	sload => VCC,
	ena => \CPU|DP|REGFILE|andss|out\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|writeR5|out\(7));

-- Location: FF_X85_Y6_N26
\CPU|DP|REGFILE|writeR1|out[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|DP|multi|b[7]~7_combout\,
	sload => VCC,
	ena => \CPU|DP|REGFILE|andss|out\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|writeR1|out\(7));

-- Location: LABCELL_X85_Y6_N24
\CPU|DP|REGFILE|MuxR|out[7]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|REGFILE|MuxR|out[7]~3_combout\ = ( \CPU|DP|REGFILE|writeR1|out\(7) & ( \CPU|dec|ReadMux|b\(2) & ( (!\CPU|dec|ReadMux|b\(0) & ((\CPU|DP|REGFILE|writeR3|out\(7)) # (\CPU|dec|ReadMux|b\(1)))) ) ) ) # ( !\CPU|DP|REGFILE|writeR1|out\(7) & ( 
-- \CPU|dec|ReadMux|b\(2) & ( (!\CPU|dec|ReadMux|b\(1) & (\CPU|DP|REGFILE|writeR3|out\(7) & !\CPU|dec|ReadMux|b\(0))) ) ) ) # ( \CPU|DP|REGFILE|writeR1|out\(7) & ( !\CPU|dec|ReadMux|b\(2) & ( (\CPU|dec|ReadMux|b\(1) & (\CPU|DP|REGFILE|writeR5|out\(7) & 
-- !\CPU|dec|ReadMux|b\(0))) ) ) ) # ( !\CPU|DP|REGFILE|writeR1|out\(7) & ( !\CPU|dec|ReadMux|b\(2) & ( (\CPU|dec|ReadMux|b\(1) & (\CPU|DP|REGFILE|writeR5|out\(7) & !\CPU|dec|ReadMux|b\(0))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000000000001010000000000100010000000000111011100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|dec|ReadMux|ALT_INV_b\(1),
	datab => \CPU|DP|REGFILE|writeR3|ALT_INV_out\(7),
	datac => \CPU|DP|REGFILE|writeR5|ALT_INV_out\(7),
	datad => \CPU|dec|ReadMux|ALT_INV_b\(0),
	datae => \CPU|DP|REGFILE|writeR1|ALT_INV_out\(7),
	dataf => \CPU|dec|ReadMux|ALT_INV_b\(2),
	combout => \CPU|DP|REGFILE|MuxR|out[7]~3_combout\);

-- Location: LABCELL_X83_Y6_N30
\CPU|DP|REGFILE|MuxR|out[7]\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|REGFILE|MuxR|out\(7) = ( \CPU|DP|REGFILE|read_dec|ShiftLeft0~1_combout\ & ( \CPU|DP|REGFILE|MuxR|out[7]~3_combout\ ) ) # ( !\CPU|DP|REGFILE|read_dec|ShiftLeft0~1_combout\ & ( \CPU|DP|REGFILE|MuxR|out[7]~3_combout\ ) ) # ( 
-- \CPU|DP|REGFILE|read_dec|ShiftLeft0~1_combout\ & ( !\CPU|DP|REGFILE|MuxR|out[7]~3_combout\ & ( (((\CPU|DP|REGFILE|writeR6|out\(7) & \CPU|DP|REGFILE|read_dec|ShiftLeft0~0_combout\)) # (\CPU|DP|REGFILE|MuxR|out[7]~2_combout\)) # 
-- (\CPU|DP|REGFILE|writeR7|out\(7)) ) ) ) # ( !\CPU|DP|REGFILE|read_dec|ShiftLeft0~1_combout\ & ( !\CPU|DP|REGFILE|MuxR|out[7]~3_combout\ & ( ((\CPU|DP|REGFILE|writeR6|out\(7) & \CPU|DP|REGFILE|read_dec|ShiftLeft0~0_combout\)) # 
-- (\CPU|DP|REGFILE|MuxR|out[7]~2_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010111111111001101111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DP|REGFILE|writeR6|ALT_INV_out\(7),
	datab => \CPU|DP|REGFILE|writeR7|ALT_INV_out\(7),
	datac => \CPU|DP|REGFILE|read_dec|ALT_INV_ShiftLeft0~0_combout\,
	datad => \CPU|DP|REGFILE|MuxR|ALT_INV_out[7]~2_combout\,
	datae => \CPU|DP|REGFILE|read_dec|ALT_INV_ShiftLeft0~1_combout\,
	dataf => \CPU|DP|REGFILE|MuxR|ALT_INV_out[7]~3_combout\,
	combout => \CPU|DP|REGFILE|MuxR|out\(7));

-- Location: FF_X83_Y6_N56
\CPU|DP|pipeB|out[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|DP|REGFILE|MuxR|out\(7),
	sload => VCC,
	ena => \CPU|state|WideOr10~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|pipeB|out\(7));

-- Location: LABCELL_X83_Y6_N48
\CPU|DP|Bin[7]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|Bin[7]~9_combout\ = ( \CPU|DP|Bin[2]~1_combout\ & ( \CPU|DP|Bin[2]~0_combout\ & ( \CPU|DP|pipeB|out\(6) ) ) ) # ( !\CPU|DP|Bin[2]~1_combout\ & ( \CPU|DP|Bin[2]~0_combout\ & ( \CPU|instreg|out\(4) ) ) ) # ( \CPU|DP|Bin[2]~1_combout\ & ( 
-- !\CPU|DP|Bin[2]~0_combout\ & ( \CPU|DP|pipeB|out\(8) ) ) ) # ( !\CPU|DP|Bin[2]~1_combout\ & ( !\CPU|DP|Bin[2]~0_combout\ & ( \CPU|DP|pipeB|out\(7) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000011110000111100000000111111110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DP|pipeB|ALT_INV_out\(7),
	datab => \CPU|DP|pipeB|ALT_INV_out\(6),
	datac => \CPU|DP|pipeB|ALT_INV_out\(8),
	datad => \CPU|instreg|ALT_INV_out\(4),
	datae => \CPU|DP|ALT_INV_Bin[2]~1_combout\,
	dataf => \CPU|DP|ALT_INV_Bin[2]~0_combout\,
	combout => \CPU|DP|Bin[7]~9_combout\);

-- Location: LABCELL_X83_Y6_N18
\CPU|DP|pipeC|out[7]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|pipeC|out[7]~feeder_combout\ = ( \CPU|DP|logic|Add0~33_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|DP|logic|ALT_INV_Add0~33_sumout\,
	combout => \CPU|DP|pipeC|out[7]~feeder_combout\);

-- Location: LABCELL_X83_Y6_N21
\CPU|DP|logic|Mux8~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|logic|Mux8~0_combout\ = ( \CPU|DP|Bin[7]~9_combout\ & ( (\CPU|DP|logic|Mux0~0_combout\ & \CPU|DP|pipeA|out\(7)) ) ) # ( !\CPU|DP|Bin[7]~9_combout\ & ( \CPU|instreg|out[11]~DUPLICATE_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010100000011000000110000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|instreg|ALT_INV_out[11]~DUPLICATE_q\,
	datab => \CPU|DP|logic|ALT_INV_Mux0~0_combout\,
	datac => \CPU|DP|pipeA|ALT_INV_out\(7),
	dataf => \CPU|DP|ALT_INV_Bin[7]~9_combout\,
	combout => \CPU|DP|logic|Mux8~0_combout\);

-- Location: FF_X83_Y6_N19
\CPU|DP|pipeC|out[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|DP|pipeC|out[7]~feeder_combout\,
	asdata => \CPU|DP|logic|Mux8~0_combout\,
	sload => \CPU|instreg|out\(12),
	ena => \CPU|state|WideOr12~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|pipeC|out\(7));

-- Location: FF_X85_Y9_N29
\CPU|addrout|out[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|DP|pipeC|out\(7),
	sload => VCC,
	ena => \CPU|state|WideOr19~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|addrout|out\(7));

-- Location: LABCELL_X85_Y9_N21
\CPU|mem_addr[7]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|mem_addr[7]~7_combout\ = ( \CPU|state|WideOr16~0_combout\ & ( \CPU|Pc|out\(7) ) ) # ( !\CPU|state|WideOr16~0_combout\ & ( \CPU|addrout|out\(7) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000011110000111100000000111111110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU|Pc|ALT_INV_out\(7),
	datad => \CPU|addrout|ALT_INV_out\(7),
	datae => \CPU|state|ALT_INV_WideOr16~0_combout\,
	combout => \CPU|mem_addr[7]~7_combout\);

-- Location: LABCELL_X81_Y7_N9
\read_data[3]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \read_data[3]~6_combout\ = ( \MEM|mem_rtl_0|auto_generated|ram_block1a3\ & ( (!\switch~2_combout\) # (\SW[3]~input_o\) ) ) # ( !\MEM|mem_rtl_0|auto_generated|ram_block1a3\ & ( (\SW[3]~input_o\ & \switch~2_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010111111111010101011111111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[3]~input_o\,
	datad => \ALT_INV_switch~2_combout\,
	dataf => \MEM|mem_rtl_0|auto_generated|ALT_INV_ram_block1a3\,
	combout => \read_data[3]~6_combout\);

-- Location: FF_X81_Y7_N11
\CPU|instreg|out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \read_data[3]~6_combout\,
	ena => \CPU|state|WideOr18~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|instreg|out\(3));

-- Location: LABCELL_X85_Y10_N3
\CPU|DP|multi|b[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|multi|b[3]~3_combout\ = ( \CPU|state|Decoder0~5_combout\ & ( ((\CPU|DP|pipeC|out\(3) & \CPU|state|WideOr4~2_combout\)) # (\CPU|instreg|out\(3)) ) ) # ( !\CPU|state|Decoder0~5_combout\ & ( (\CPU|DP|pipeC|out\(3) & \CPU|state|WideOr4~2_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001011111111100000101000001010000010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DP|pipeC|ALT_INV_out\(3),
	datac => \CPU|state|ALT_INV_WideOr4~2_combout\,
	datad => \CPU|instreg|ALT_INV_out\(3),
	datae => \CPU|state|ALT_INV_Decoder0~5_combout\,
	combout => \CPU|DP|multi|b[3]~3_combout\);

-- Location: LABCELL_X85_Y8_N30
\CPU|DP|multi|b[3]\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|multi|b\(3) = ( \MEM|mem_rtl_0|auto_generated|ram_block1a3\ & ( ((\CPU|state|WideOr5~2_combout\ & ((!\switch~2_combout\) # (\SW[3]~input_o\)))) # (\CPU|DP|multi|b[3]~3_combout\) ) ) # ( !\MEM|mem_rtl_0|auto_generated|ram_block1a3\ & ( 
-- ((\switch~2_combout\ & (\SW[3]~input_o\ & \CPU|state|WideOr5~2_combout\))) # (\CPU|DP|multi|b[3]~3_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100011111000011110001111100001111101111110000111110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_switch~2_combout\,
	datab => \ALT_INV_SW[3]~input_o\,
	datac => \CPU|DP|multi|ALT_INV_b[3]~3_combout\,
	datad => \CPU|state|ALT_INV_WideOr5~2_combout\,
	dataf => \MEM|mem_rtl_0|auto_generated|ALT_INV_ram_block1a3\,
	combout => \CPU|DP|multi|b\(3));

-- Location: MLABCELL_X84_Y9_N3
\CPU|DP|REGFILE|writeR7|out[3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|REGFILE|writeR7|out[3]~feeder_combout\ = ( \CPU|DP|multi|b\(3) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|DP|multi|ALT_INV_b\(3),
	combout => \CPU|DP|REGFILE|writeR7|out[3]~feeder_combout\);

-- Location: FF_X84_Y9_N4
\CPU|DP|REGFILE|writeR7|out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|DP|REGFILE|writeR7|out[3]~feeder_combout\,
	ena => \CPU|DP|REGFILE|andss|out\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|writeR7|out\(3));

-- Location: LABCELL_X81_Y8_N54
\CPU|DP|REGFILE|writeR6|out[3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|REGFILE|writeR6|out[3]~feeder_combout\ = ( \CPU|DP|multi|b\(3) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|DP|multi|ALT_INV_b\(3),
	combout => \CPU|DP|REGFILE|writeR6|out[3]~feeder_combout\);

-- Location: FF_X81_Y8_N55
\CPU|DP|REGFILE|writeR6|out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|DP|REGFILE|writeR6|out[3]~feeder_combout\,
	ena => \CPU|DP|REGFILE|andss|out\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|writeR6|out\(3));

-- Location: FF_X85_Y8_N50
\CPU|DP|REGFILE|writeR3|out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|DP|multi|b\(3),
	sload => VCC,
	ena => \CPU|DP|REGFILE|andss|out\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|writeR3|out\(3));

-- Location: FF_X85_Y8_N56
\CPU|DP|REGFILE|writeR5|out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|DP|multi|b\(3),
	sload => VCC,
	ena => \CPU|DP|REGFILE|andss|out\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|writeR5|out\(3));

-- Location: FF_X85_Y8_N44
\CPU|DP|REGFILE|writeR1|out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|DP|multi|b\(3),
	sload => VCC,
	ena => \CPU|DP|REGFILE|andss|out\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|writeR1|out\(3));

-- Location: LABCELL_X85_Y8_N42
\CPU|DP|REGFILE|MuxR|out[3]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|REGFILE|MuxR|out[3]~13_combout\ = ( \CPU|DP|REGFILE|writeR1|out\(3) & ( \CPU|dec|ReadMux|b\(2) & ( (!\CPU|dec|ReadMux|b\(0) & ((\CPU|dec|ReadMux|b\(1)) # (\CPU|DP|REGFILE|writeR3|out\(3)))) ) ) ) # ( !\CPU|DP|REGFILE|writeR1|out\(3) & ( 
-- \CPU|dec|ReadMux|b\(2) & ( (\CPU|DP|REGFILE|writeR3|out\(3) & (!\CPU|dec|ReadMux|b\(1) & !\CPU|dec|ReadMux|b\(0))) ) ) ) # ( \CPU|DP|REGFILE|writeR1|out\(3) & ( !\CPU|dec|ReadMux|b\(2) & ( (\CPU|dec|ReadMux|b\(1) & (\CPU|DP|REGFILE|writeR5|out\(3) & 
-- !\CPU|dec|ReadMux|b\(0))) ) ) ) # ( !\CPU|DP|REGFILE|writeR1|out\(3) & ( !\CPU|dec|ReadMux|b\(2) & ( (\CPU|dec|ReadMux|b\(1) & (\CPU|DP|REGFILE|writeR5|out\(3) & !\CPU|dec|ReadMux|b\(0))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000000000000110000000001000100000000000111011100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DP|REGFILE|writeR3|ALT_INV_out\(3),
	datab => \CPU|dec|ReadMux|ALT_INV_b\(1),
	datac => \CPU|DP|REGFILE|writeR5|ALT_INV_out\(3),
	datad => \CPU|dec|ReadMux|ALT_INV_b\(0),
	datae => \CPU|DP|REGFILE|writeR1|ALT_INV_out\(3),
	dataf => \CPU|dec|ReadMux|ALT_INV_b\(2),
	combout => \CPU|DP|REGFILE|MuxR|out[3]~13_combout\);

-- Location: FF_X83_Y7_N22
\CPU|DP|REGFILE|writeR4|out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|DP|multi|b\(3),
	sload => VCC,
	ena => \CPU|DP|REGFILE|andss|out\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|writeR4|out\(3));

-- Location: MLABCELL_X84_Y9_N9
\CPU|DP|REGFILE|writeR2|out[3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|REGFILE|writeR2|out[3]~feeder_combout\ = ( \CPU|DP|multi|b\(3) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|DP|multi|ALT_INV_b\(3),
	combout => \CPU|DP|REGFILE|writeR2|out[3]~feeder_combout\);

-- Location: FF_X84_Y9_N10
\CPU|DP|REGFILE|writeR2|out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|DP|REGFILE|writeR2|out[3]~feeder_combout\,
	ena => \CPU|DP|REGFILE|andss|out\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|writeR2|out\(3));

-- Location: FF_X84_Y8_N56
\CPU|DP|REGFILE|writeR0|out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|DP|multi|b\(3),
	sload => VCC,
	ena => \CPU|DP|REGFILE|andss|out\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|writeR0|out\(3));

-- Location: MLABCELL_X84_Y8_N54
\CPU|DP|REGFILE|MuxR|out[3]~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|REGFILE|MuxR|out[3]~12_combout\ = ( \CPU|DP|REGFILE|writeR0|out\(3) & ( \CPU|dec|ReadMux|b\(2) & ( (\CPU|dec|ReadMux|b\(0) & ((\CPU|dec|ReadMux|b\(1)) # (\CPU|DP|REGFILE|writeR2|out\(3)))) ) ) ) # ( !\CPU|DP|REGFILE|writeR0|out\(3) & ( 
-- \CPU|dec|ReadMux|b\(2) & ( (\CPU|DP|REGFILE|writeR2|out\(3) & (\CPU|dec|ReadMux|b\(0) & !\CPU|dec|ReadMux|b\(1))) ) ) ) # ( \CPU|DP|REGFILE|writeR0|out\(3) & ( !\CPU|dec|ReadMux|b\(2) & ( (\CPU|DP|REGFILE|writeR4|out\(3) & (\CPU|dec|ReadMux|b\(0) & 
-- \CPU|dec|ReadMux|b\(1))) ) ) ) # ( !\CPU|DP|REGFILE|writeR0|out\(3) & ( !\CPU|dec|ReadMux|b\(2) & ( (\CPU|DP|REGFILE|writeR4|out\(3) & (\CPU|dec|ReadMux|b\(0) & \CPU|dec|ReadMux|b\(1))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000101000000000000010100000011000000000000001100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DP|REGFILE|writeR4|ALT_INV_out\(3),
	datab => \CPU|DP|REGFILE|writeR2|ALT_INV_out\(3),
	datac => \CPU|dec|ReadMux|ALT_INV_b\(0),
	datad => \CPU|dec|ReadMux|ALT_INV_b\(1),
	datae => \CPU|DP|REGFILE|writeR0|ALT_INV_out\(3),
	dataf => \CPU|dec|ReadMux|ALT_INV_b\(2),
	combout => \CPU|DP|REGFILE|MuxR|out[3]~12_combout\);

-- Location: MLABCELL_X84_Y8_N21
\CPU|DP|REGFILE|MuxR|out[3]\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|REGFILE|MuxR|out\(3) = ( \CPU|DP|REGFILE|read_dec|ShiftLeft0~0_combout\ & ( \CPU|DP|REGFILE|read_dec|ShiftLeft0~1_combout\ & ( (((\CPU|DP|REGFILE|MuxR|out[3]~12_combout\) # (\CPU|DP|REGFILE|MuxR|out[3]~13_combout\)) # 
-- (\CPU|DP|REGFILE|writeR6|out\(3))) # (\CPU|DP|REGFILE|writeR7|out\(3)) ) ) ) # ( !\CPU|DP|REGFILE|read_dec|ShiftLeft0~0_combout\ & ( \CPU|DP|REGFILE|read_dec|ShiftLeft0~1_combout\ & ( ((\CPU|DP|REGFILE|MuxR|out[3]~12_combout\) # 
-- (\CPU|DP|REGFILE|MuxR|out[3]~13_combout\)) # (\CPU|DP|REGFILE|writeR7|out\(3)) ) ) ) # ( \CPU|DP|REGFILE|read_dec|ShiftLeft0~0_combout\ & ( !\CPU|DP|REGFILE|read_dec|ShiftLeft0~1_combout\ & ( ((\CPU|DP|REGFILE|MuxR|out[3]~12_combout\) # 
-- (\CPU|DP|REGFILE|MuxR|out[3]~13_combout\)) # (\CPU|DP|REGFILE|writeR6|out\(3)) ) ) ) # ( !\CPU|DP|REGFILE|read_dec|ShiftLeft0~0_combout\ & ( !\CPU|DP|REGFILE|read_dec|ShiftLeft0~1_combout\ & ( (\CPU|DP|REGFILE|MuxR|out[3]~12_combout\) # 
-- (\CPU|DP|REGFILE|MuxR|out[3]~13_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111111111001111111111111101011111111111110111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DP|REGFILE|writeR7|ALT_INV_out\(3),
	datab => \CPU|DP|REGFILE|writeR6|ALT_INV_out\(3),
	datac => \CPU|DP|REGFILE|MuxR|ALT_INV_out[3]~13_combout\,
	datad => \CPU|DP|REGFILE|MuxR|ALT_INV_out[3]~12_combout\,
	datae => \CPU|DP|REGFILE|read_dec|ALT_INV_ShiftLeft0~0_combout\,
	dataf => \CPU|DP|REGFILE|read_dec|ALT_INV_ShiftLeft0~1_combout\,
	combout => \CPU|DP|REGFILE|MuxR|out\(3));

-- Location: FF_X84_Y8_N23
\CPU|DP|pipeA|out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|DP|REGFILE|MuxR|out\(3),
	ena => \CPU|state|WideOr9~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|pipeA|out\(3));

-- Location: LABCELL_X81_Y6_N33
\CPU|DP|pipeC|out[3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|pipeC|out[3]~feeder_combout\ = ( \CPU|DP|logic|Add0~17_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|DP|logic|ALT_INV_Add0~17_sumout\,
	combout => \CPU|DP|pipeC|out[3]~feeder_combout\);

-- Location: MLABCELL_X82_Y6_N57
\CPU|DP|logic|Mux12~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|logic|Mux12~0_combout\ = ( \CPU|DP|logic|Mux0~0_combout\ & ( \CPU|DP|Bin[3]~5_combout\ & ( \CPU|DP|pipeA|out\(3) ) ) ) # ( \CPU|DP|logic|Mux0~0_combout\ & ( !\CPU|DP|Bin[3]~5_combout\ & ( \CPU|instreg|out[11]~DUPLICATE_q\ ) ) ) # ( 
-- !\CPU|DP|logic|Mux0~0_combout\ & ( !\CPU|DP|Bin[3]~5_combout\ & ( \CPU|instreg|out[11]~DUPLICATE_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DP|pipeA|ALT_INV_out\(3),
	datac => \CPU|instreg|ALT_INV_out[11]~DUPLICATE_q\,
	datae => \CPU|DP|logic|ALT_INV_Mux0~0_combout\,
	dataf => \CPU|DP|ALT_INV_Bin[3]~5_combout\,
	combout => \CPU|DP|logic|Mux12~0_combout\);

-- Location: FF_X81_Y6_N34
\CPU|DP|pipeC|out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|DP|pipeC|out[3]~feeder_combout\,
	asdata => \CPU|DP|logic|Mux12~0_combout\,
	sload => \CPU|instreg|out\(12),
	ena => \CPU|state|WideOr12~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|pipeC|out\(3));

-- Location: FF_X85_Y7_N50
\CPU|addrout|out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|DP|pipeC|out\(3),
	sload => VCC,
	ena => \CPU|state|WideOr19~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|addrout|out\(3));

-- Location: LABCELL_X85_Y7_N48
\CPU|mem_addr[3]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|mem_addr[3]~4_combout\ = ( \CPU|Pc|out\(3) & ( (\CPU|addrout|out\(3)) # (\CPU|state|WideOr16~0_combout\) ) ) # ( !\CPU|Pc|out\(3) & ( (!\CPU|state|WideOr16~0_combout\ & \CPU|addrout|out\(3)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU|state|ALT_INV_WideOr16~0_combout\,
	datad => \CPU|addrout|ALT_INV_out\(3),
	dataf => \CPU|Pc|ALT_INV_out\(3),
	combout => \CPU|mem_addr[3]~4_combout\);

-- Location: LABCELL_X85_Y7_N30
\read_data[1]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \read_data[1]~8_combout\ = ( \switch~2_combout\ & ( \SW[1]~input_o\ ) ) # ( !\switch~2_combout\ & ( \MEM|mem_rtl_0|auto_generated|ram_block1a1\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_SW[1]~input_o\,
	datad => \MEM|mem_rtl_0|auto_generated|ALT_INV_ram_block1a1\,
	dataf => \ALT_INV_switch~2_combout\,
	combout => \read_data[1]~8_combout\);

-- Location: FF_X85_Y7_N32
\CPU|instreg|out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \read_data[1]~8_combout\,
	ena => \CPU|state|WideOr18~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|instreg|out\(1));

-- Location: MLABCELL_X84_Y10_N48
\CPU|DP|multi|b[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|multi|b[1]~1_combout\ = ( \CPU|state|WideOr4~2_combout\ & ( ((\CPU|instreg|out\(1) & \CPU|state|Decoder0~5_combout\)) # (\CPU|DP|pipeC|out\(1)) ) ) # ( !\CPU|state|WideOr4~2_combout\ & ( (\CPU|instreg|out\(1) & \CPU|state|Decoder0~5_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010100001111010111110000111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|instreg|ALT_INV_out\(1),
	datac => \CPU|DP|pipeC|ALT_INV_out\(1),
	datad => \CPU|state|ALT_INV_Decoder0~5_combout\,
	dataf => \CPU|state|ALT_INV_WideOr4~2_combout\,
	combout => \CPU|DP|multi|b[1]~1_combout\);

-- Location: MLABCELL_X84_Y10_N36
\CPU|DP|multi|b[1]\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|multi|b\(1) = ( \MEM|mem_rtl_0|auto_generated|ram_block1a1\ & ( ((\CPU|state|WideOr5~2_combout\ & ((!\switch~2_combout\) # (\SW[1]~input_o\)))) # (\CPU|DP|multi|b[1]~1_combout\) ) ) # ( !\MEM|mem_rtl_0|auto_generated|ram_block1a1\ & ( 
-- ((\CPU|state|WideOr5~2_combout\ & (\switch~2_combout\ & \SW[1]~input_o\))) # (\CPU|DP|multi|b[1]~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100011111000011110001111101001111010111110100111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|state|ALT_INV_WideOr5~2_combout\,
	datab => \ALT_INV_switch~2_combout\,
	datac => \CPU|DP|multi|ALT_INV_b[1]~1_combout\,
	datad => \ALT_INV_SW[1]~input_o\,
	dataf => \MEM|mem_rtl_0|auto_generated|ALT_INV_ram_block1a1\,
	combout => \CPU|DP|multi|b\(1));

-- Location: FF_X85_Y9_N52
\CPU|DP|REGFILE|writeR4|out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|DP|multi|b\(1),
	sload => VCC,
	ena => \CPU|DP|REGFILE|andss|out\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|writeR4|out\(1));

-- Location: FF_X84_Y10_N25
\CPU|DP|REGFILE|writeR2|out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|DP|multi|b\(1),
	sload => VCC,
	ena => \CPU|DP|REGFILE|andss|out\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|writeR2|out\(1));

-- Location: FF_X84_Y8_N26
\CPU|DP|REGFILE|writeR0|out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|DP|multi|b\(1),
	sload => VCC,
	ena => \CPU|DP|REGFILE|andss|out\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|writeR0|out\(1));

-- Location: MLABCELL_X84_Y8_N24
\CPU|DP|REGFILE|MuxR|out[1]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|REGFILE|MuxR|out[1]~8_combout\ = ( \CPU|DP|REGFILE|writeR0|out\(1) & ( \CPU|dec|ReadMux|b\(2) & ( (\CPU|dec|ReadMux|b\(0) & ((\CPU|dec|ReadMux|b\(1)) # (\CPU|DP|REGFILE|writeR2|out\(1)))) ) ) ) # ( !\CPU|DP|REGFILE|writeR0|out\(1) & ( 
-- \CPU|dec|ReadMux|b\(2) & ( (\CPU|DP|REGFILE|writeR2|out\(1) & (\CPU|dec|ReadMux|b\(0) & !\CPU|dec|ReadMux|b\(1))) ) ) ) # ( \CPU|DP|REGFILE|writeR0|out\(1) & ( !\CPU|dec|ReadMux|b\(2) & ( (\CPU|DP|REGFILE|writeR4|out\(1) & (\CPU|dec|ReadMux|b\(0) & 
-- \CPU|dec|ReadMux|b\(1))) ) ) ) # ( !\CPU|DP|REGFILE|writeR0|out\(1) & ( !\CPU|dec|ReadMux|b\(2) & ( (\CPU|DP|REGFILE|writeR4|out\(1) & (\CPU|dec|ReadMux|b\(0) & \CPU|dec|ReadMux|b\(1))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000101000000000000010100000011000000000000001100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DP|REGFILE|writeR4|ALT_INV_out\(1),
	datab => \CPU|DP|REGFILE|writeR2|ALT_INV_out\(1),
	datac => \CPU|dec|ReadMux|ALT_INV_b\(0),
	datad => \CPU|dec|ReadMux|ALT_INV_b\(1),
	datae => \CPU|DP|REGFILE|writeR0|ALT_INV_out\(1),
	dataf => \CPU|dec|ReadMux|ALT_INV_b\(2),
	combout => \CPU|DP|REGFILE|MuxR|out[1]~8_combout\);

-- Location: FF_X85_Y10_N1
\CPU|DP|REGFILE|writeR7|out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|DP|multi|b\(1),
	sload => VCC,
	ena => \CPU|DP|REGFILE|andss|out\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|writeR7|out\(1));

-- Location: LABCELL_X80_Y8_N15
\CPU|DP|REGFILE|writeR6|out[1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|REGFILE|writeR6|out[1]~feeder_combout\ = ( \CPU|DP|multi|b\(1) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|DP|multi|ALT_INV_b\(1),
	combout => \CPU|DP|REGFILE|writeR6|out[1]~feeder_combout\);

-- Location: FF_X80_Y8_N16
\CPU|DP|REGFILE|writeR6|out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|DP|REGFILE|writeR6|out[1]~feeder_combout\,
	ena => \CPU|DP|REGFILE|andss|out\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|writeR6|out\(1));

-- Location: FF_X85_Y9_N19
\CPU|DP|REGFILE|writeR3|out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|DP|multi|b\(1),
	sload => VCC,
	ena => \CPU|DP|REGFILE|andss|out\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|writeR3|out\(1));

-- Location: FF_X84_Y10_N37
\CPU|DP|REGFILE|writeR5|out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|DP|multi|b\(1),
	ena => \CPU|DP|REGFILE|andss|out\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|writeR5|out\(1));

-- Location: FF_X85_Y8_N14
\CPU|DP|REGFILE|writeR1|out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|DP|multi|b\(1),
	sload => VCC,
	ena => \CPU|DP|REGFILE|andss|out\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|writeR1|out\(1));

-- Location: LABCELL_X85_Y8_N12
\CPU|DP|REGFILE|MuxR|out[1]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|REGFILE|MuxR|out[1]~9_combout\ = ( \CPU|DP|REGFILE|writeR1|out\(1) & ( \CPU|dec|ReadMux|b\(2) & ( (!\CPU|dec|ReadMux|b\(0) & ((\CPU|dec|ReadMux|b\(1)) # (\CPU|DP|REGFILE|writeR3|out\(1)))) ) ) ) # ( !\CPU|DP|REGFILE|writeR1|out\(1) & ( 
-- \CPU|dec|ReadMux|b\(2) & ( (\CPU|DP|REGFILE|writeR3|out\(1) & (!\CPU|dec|ReadMux|b\(1) & !\CPU|dec|ReadMux|b\(0))) ) ) ) # ( \CPU|DP|REGFILE|writeR1|out\(1) & ( !\CPU|dec|ReadMux|b\(2) & ( (\CPU|dec|ReadMux|b\(1) & (\CPU|DP|REGFILE|writeR5|out\(1) & 
-- !\CPU|dec|ReadMux|b\(0))) ) ) ) # ( !\CPU|DP|REGFILE|writeR1|out\(1) & ( !\CPU|dec|ReadMux|b\(2) & ( (\CPU|dec|ReadMux|b\(1) & (\CPU|DP|REGFILE|writeR5|out\(1) & !\CPU|dec|ReadMux|b\(0))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000000000000110000000001000100000000000111011100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DP|REGFILE|writeR3|ALT_INV_out\(1),
	datab => \CPU|dec|ReadMux|ALT_INV_b\(1),
	datac => \CPU|DP|REGFILE|writeR5|ALT_INV_out\(1),
	datad => \CPU|dec|ReadMux|ALT_INV_b\(0),
	datae => \CPU|DP|REGFILE|writeR1|ALT_INV_out\(1),
	dataf => \CPU|dec|ReadMux|ALT_INV_b\(2),
	combout => \CPU|DP|REGFILE|MuxR|out[1]~9_combout\);

-- Location: MLABCELL_X84_Y8_N0
\CPU|DP|REGFILE|MuxR|out[1]\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|REGFILE|MuxR|out\(1) = ( \CPU|DP|REGFILE|read_dec|ShiftLeft0~0_combout\ & ( \CPU|DP|REGFILE|read_dec|ShiftLeft0~1_combout\ & ( (((\CPU|DP|REGFILE|MuxR|out[1]~9_combout\) # (\CPU|DP|REGFILE|writeR6|out\(1))) # (\CPU|DP|REGFILE|writeR7|out\(1))) # 
-- (\CPU|DP|REGFILE|MuxR|out[1]~8_combout\) ) ) ) # ( !\CPU|DP|REGFILE|read_dec|ShiftLeft0~0_combout\ & ( \CPU|DP|REGFILE|read_dec|ShiftLeft0~1_combout\ & ( ((\CPU|DP|REGFILE|MuxR|out[1]~9_combout\) # (\CPU|DP|REGFILE|writeR7|out\(1))) # 
-- (\CPU|DP|REGFILE|MuxR|out[1]~8_combout\) ) ) ) # ( \CPU|DP|REGFILE|read_dec|ShiftLeft0~0_combout\ & ( !\CPU|DP|REGFILE|read_dec|ShiftLeft0~1_combout\ & ( ((\CPU|DP|REGFILE|MuxR|out[1]~9_combout\) # (\CPU|DP|REGFILE|writeR6|out\(1))) # 
-- (\CPU|DP|REGFILE|MuxR|out[1]~8_combout\) ) ) ) # ( !\CPU|DP|REGFILE|read_dec|ShiftLeft0~0_combout\ & ( !\CPU|DP|REGFILE|read_dec|ShiftLeft0~1_combout\ & ( (\CPU|DP|REGFILE|MuxR|out[1]~9_combout\) # (\CPU|DP|REGFILE|MuxR|out[1]~8_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010111111111010111111111111101110111111111110111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DP|REGFILE|MuxR|ALT_INV_out[1]~8_combout\,
	datab => \CPU|DP|REGFILE|writeR7|ALT_INV_out\(1),
	datac => \CPU|DP|REGFILE|writeR6|ALT_INV_out\(1),
	datad => \CPU|DP|REGFILE|MuxR|ALT_INV_out[1]~9_combout\,
	datae => \CPU|DP|REGFILE|read_dec|ALT_INV_ShiftLeft0~0_combout\,
	dataf => \CPU|DP|REGFILE|read_dec|ALT_INV_ShiftLeft0~1_combout\,
	combout => \CPU|DP|REGFILE|MuxR|out\(1));

-- Location: FF_X83_Y7_N2
\CPU|DP|pipeB|out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|DP|REGFILE|MuxR|out\(1),
	sload => VCC,
	ena => \CPU|state|WideOr10~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|pipeB|out\(1));

-- Location: LABCELL_X83_Y7_N33
\CPU|DP|Bin[1]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|Bin[1]~3_combout\ = ( \CPU|DP|Bin[2]~1_combout\ & ( \CPU|DP|Bin[2]~0_combout\ & ( \CPU|DP|pipeB|out\(0) ) ) ) # ( !\CPU|DP|Bin[2]~1_combout\ & ( \CPU|DP|Bin[2]~0_combout\ & ( \CPU|instreg|out\(1) ) ) ) # ( \CPU|DP|Bin[2]~1_combout\ & ( 
-- !\CPU|DP|Bin[2]~0_combout\ & ( \CPU|DP|pipeB|out\(2) ) ) ) # ( !\CPU|DP|Bin[2]~1_combout\ & ( !\CPU|DP|Bin[2]~0_combout\ & ( \CPU|DP|pipeB|out\(1) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100000000111111110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DP|pipeB|ALT_INV_out\(1),
	datab => \CPU|DP|pipeB|ALT_INV_out\(2),
	datac => \CPU|DP|pipeB|ALT_INV_out\(0),
	datad => \CPU|instreg|ALT_INV_out\(1),
	datae => \CPU|DP|ALT_INV_Bin[2]~1_combout\,
	dataf => \CPU|DP|ALT_INV_Bin[2]~0_combout\,
	combout => \CPU|DP|Bin[1]~3_combout\);

-- Location: LABCELL_X81_Y6_N36
\CPU|DP|pipeC|out[1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|pipeC|out[1]~feeder_combout\ = ( \CPU|DP|logic|Add0~9_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|DP|logic|ALT_INV_Add0~9_sumout\,
	combout => \CPU|DP|pipeC|out[1]~feeder_combout\);

-- Location: LABCELL_X80_Y6_N48
\CPU|DP|logic|Mux14~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|logic|Mux14~0_combout\ = ( \CPU|DP|pipeA|out\(1) & ( \CPU|DP|logic|Mux0~0_combout\ & ( (\CPU|instreg|out[11]~DUPLICATE_q\) # (\CPU|DP|Bin[1]~3_combout\) ) ) ) # ( !\CPU|DP|pipeA|out\(1) & ( \CPU|DP|logic|Mux0~0_combout\ & ( 
-- (!\CPU|DP|Bin[1]~3_combout\ & \CPU|instreg|out[11]~DUPLICATE_q\) ) ) ) # ( \CPU|DP|pipeA|out\(1) & ( !\CPU|DP|logic|Mux0~0_combout\ & ( (!\CPU|DP|Bin[1]~3_combout\ & \CPU|instreg|out[11]~DUPLICATE_q\) ) ) ) # ( !\CPU|DP|pipeA|out\(1) & ( 
-- !\CPU|DP|logic|Mux0~0_combout\ & ( (!\CPU|DP|Bin[1]~3_combout\ & \CPU|instreg|out[11]~DUPLICATE_q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101000001010000010100101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DP|ALT_INV_Bin[1]~3_combout\,
	datac => \CPU|instreg|ALT_INV_out[11]~DUPLICATE_q\,
	datae => \CPU|DP|pipeA|ALT_INV_out\(1),
	dataf => \CPU|DP|logic|ALT_INV_Mux0~0_combout\,
	combout => \CPU|DP|logic|Mux14~0_combout\);

-- Location: FF_X81_Y6_N37
\CPU|DP|pipeC|out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|DP|pipeC|out[1]~feeder_combout\,
	asdata => \CPU|DP|logic|Mux14~0_combout\,
	sload => \CPU|instreg|out\(12),
	ena => \CPU|state|WideOr12~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|pipeC|out\(1));

-- Location: MLABCELL_X87_Y7_N57
\CPU|addrout|out[1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|addrout|out[1]~feeder_combout\ = ( \CPU|DP|pipeC|out\(1) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|DP|pipeC|ALT_INV_out\(1),
	combout => \CPU|addrout|out[1]~feeder_combout\);

-- Location: FF_X87_Y7_N58
\CPU|addrout|out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|addrout|out[1]~feeder_combout\,
	ena => \CPU|state|WideOr19~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|addrout|out\(1));

-- Location: MLABCELL_X87_Y7_N42
\CPU|mem_addr[1]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|mem_addr[1]~2_combout\ = ( \CPU|state|WideOr16~0_combout\ & ( \CPU|Pc|out\(1) ) ) # ( !\CPU|state|WideOr16~0_combout\ & ( \CPU|Pc|out\(1) & ( \CPU|addrout|out\(1) ) ) ) # ( !\CPU|state|WideOr16~0_combout\ & ( !\CPU|Pc|out\(1) & ( \CPU|addrout|out\(1) 
-- ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000000000000000000001111000011111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU|addrout|ALT_INV_out\(1),
	datae => \CPU|state|ALT_INV_WideOr16~0_combout\,
	dataf => \CPU|Pc|ALT_INV_out\(1),
	combout => \CPU|mem_addr[1]~2_combout\);

-- Location: LABCELL_X81_Y7_N51
\read_data[7]~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \read_data[7]~14_combout\ = ( \MEM|mem_rtl_0|auto_generated|ram_block1a7\ & ( \switch~2_combout\ & ( \SW[7]~input_o\ ) ) ) # ( !\MEM|mem_rtl_0|auto_generated|ram_block1a7\ & ( \switch~2_combout\ & ( \SW[7]~input_o\ ) ) ) # ( 
-- \MEM|mem_rtl_0|auto_generated|ram_block1a7\ & ( !\switch~2_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[7]~input_o\,
	datae => \MEM|mem_rtl_0|auto_generated|ALT_INV_ram_block1a7\,
	dataf => \ALT_INV_switch~2_combout\,
	combout => \read_data[7]~14_combout\);

-- Location: FF_X81_Y7_N53
\CPU|instreg|out[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \read_data[7]~14_combout\,
	ena => \CPU|state|WideOr18~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|instreg|out\(7));

-- Location: LABCELL_X85_Y8_N0
\CPU|DP|multi|comb~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|multi|comb~0_combout\ = ( \CPU|state|Decoder0~4_combout\ & ( (\CPU|instreg|out\(7) & (\CPU|state|Decoder0~3_combout\ & !\CPU|state|STATE|next_out\(0))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000100000001000000000000000000000001000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|instreg|ALT_INV_out\(7),
	datab => \CPU|state|ALT_INV_Decoder0~3_combout\,
	datac => \CPU|state|STATE|ALT_INV_next_out\(0),
	datae => \CPU|state|ALT_INV_Decoder0~4_combout\,
	combout => \CPU|DP|multi|comb~0_combout\);

-- Location: LABCELL_X85_Y8_N18
\CPU|DP|multi|b[8]\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|multi|b\(8) = ( \CPU|state|WideOr5~2_combout\ & ( \MEM|mem_rtl_0|auto_generated|ram_block1a8\ & ( (!\switch~2_combout\) # (((\CPU|DP|pipeC|out\(8) & \CPU|state|WideOr4~2_combout\)) # (\CPU|DP|multi|comb~0_combout\)) ) ) ) # ( 
-- !\CPU|state|WideOr5~2_combout\ & ( \MEM|mem_rtl_0|auto_generated|ram_block1a8\ & ( ((\CPU|DP|pipeC|out\(8) & \CPU|state|WideOr4~2_combout\)) # (\CPU|DP|multi|comb~0_combout\) ) ) ) # ( \CPU|state|WideOr5~2_combout\ & ( 
-- !\MEM|mem_rtl_0|auto_generated|ram_block1a8\ & ( ((\CPU|DP|pipeC|out\(8) & \CPU|state|WideOr4~2_combout\)) # (\CPU|DP|multi|comb~0_combout\) ) ) ) # ( !\CPU|state|WideOr5~2_combout\ & ( !\MEM|mem_rtl_0|auto_generated|ram_block1a8\ & ( 
-- ((\CPU|DP|pipeC|out\(8) & \CPU|state|WideOr4~2_combout\)) # (\CPU|DP|multi|comb~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100111111000011110011111100001111001111111010111110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_switch~2_combout\,
	datab => \CPU|DP|pipeC|ALT_INV_out\(8),
	datac => \CPU|DP|multi|ALT_INV_comb~0_combout\,
	datad => \CPU|state|ALT_INV_WideOr4~2_combout\,
	datae => \CPU|state|ALT_INV_WideOr5~2_combout\,
	dataf => \MEM|mem_rtl_0|auto_generated|ALT_INV_ram_block1a8\,
	combout => \CPU|DP|multi|b\(8));

-- Location: LABCELL_X81_Y8_N39
\CPU|DP|REGFILE|writeR6|out[8]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|REGFILE|writeR6|out[8]~feeder_combout\ = ( \CPU|DP|multi|b\(8) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|DP|multi|ALT_INV_b\(8),
	combout => \CPU|DP|REGFILE|writeR6|out[8]~feeder_combout\);

-- Location: FF_X81_Y8_N41
\CPU|DP|REGFILE|writeR6|out[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|DP|REGFILE|writeR6|out[8]~feeder_combout\,
	ena => \CPU|DP|REGFILE|andss|out\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|writeR6|out\(8));

-- Location: FF_X83_Y10_N26
\CPU|DP|REGFILE|writeR7|out[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|DP|multi|b\(8),
	sload => VCC,
	ena => \CPU|DP|REGFILE|andss|out\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|writeR7|out\(8));

-- Location: FF_X83_Y9_N11
\CPU|DP|REGFILE|writeR0|out[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|DP|multi|b\(8),
	sload => VCC,
	ena => \CPU|DP|REGFILE|andss|out\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|writeR0|out\(8));

-- Location: FF_X84_Y9_N46
\CPU|DP|REGFILE|writeR2|out[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|DP|multi|b\(8),
	sload => VCC,
	ena => \CPU|DP|REGFILE|andss|out\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|writeR2|out\(8));

-- Location: FF_X84_Y6_N56
\CPU|DP|REGFILE|writeR4|out[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|DP|multi|b\(8),
	sload => VCC,
	ena => \CPU|DP|REGFILE|andss|out\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|writeR4|out\(8));

-- Location: MLABCELL_X84_Y6_N54
\CPU|DP|REGFILE|MuxR|out[8]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|REGFILE|MuxR|out[8]~0_combout\ = ( \CPU|DP|REGFILE|writeR4|out\(8) & ( \CPU|dec|ReadMux|b\(1) & ( (\CPU|dec|ReadMux|b\(0) & ((!\CPU|dec|ReadMux|b\(2)) # (\CPU|DP|REGFILE|writeR0|out\(8)))) ) ) ) # ( !\CPU|DP|REGFILE|writeR4|out\(8) & ( 
-- \CPU|dec|ReadMux|b\(1) & ( (\CPU|DP|REGFILE|writeR0|out\(8) & (\CPU|dec|ReadMux|b\(0) & \CPU|dec|ReadMux|b\(2))) ) ) ) # ( \CPU|DP|REGFILE|writeR4|out\(8) & ( !\CPU|dec|ReadMux|b\(1) & ( (\CPU|DP|REGFILE|writeR2|out\(8) & (\CPU|dec|ReadMux|b\(0) & 
-- \CPU|dec|ReadMux|b\(2))) ) ) ) # ( !\CPU|DP|REGFILE|writeR4|out\(8) & ( !\CPU|dec|ReadMux|b\(1) & ( (\CPU|DP|REGFILE|writeR2|out\(8) & (\CPU|dec|ReadMux|b\(0) & \CPU|dec|ReadMux|b\(2))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000011000000000000001100000000000001010000111100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DP|REGFILE|writeR0|ALT_INV_out\(8),
	datab => \CPU|DP|REGFILE|writeR2|ALT_INV_out\(8),
	datac => \CPU|dec|ReadMux|ALT_INV_b\(0),
	datad => \CPU|dec|ReadMux|ALT_INV_b\(2),
	datae => \CPU|DP|REGFILE|writeR4|ALT_INV_out\(8),
	dataf => \CPU|dec|ReadMux|ALT_INV_b\(1),
	combout => \CPU|DP|REGFILE|MuxR|out[8]~0_combout\);

-- Location: FF_X85_Y8_N2
\CPU|DP|REGFILE|writeR3|out[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|DP|multi|b\(8),
	sload => VCC,
	ena => \CPU|DP|REGFILE|andss|out\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|writeR3|out\(8));

-- Location: FF_X85_Y8_N37
\CPU|DP|REGFILE|writeR5|out[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|DP|multi|b\(8),
	sload => VCC,
	ena => \CPU|DP|REGFILE|andss|out\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|writeR5|out\(8));

-- Location: FF_X84_Y8_N50
\CPU|DP|REGFILE|writeR1|out[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|DP|multi|b\(8),
	sload => VCC,
	ena => \CPU|DP|REGFILE|andss|out\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|writeR1|out\(8));

-- Location: MLABCELL_X84_Y8_N48
\CPU|DP|REGFILE|MuxR|out[8]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|REGFILE|MuxR|out[8]~1_combout\ = ( \CPU|DP|REGFILE|writeR1|out\(8) & ( \CPU|dec|ReadMux|b\(2) & ( (!\CPU|dec|ReadMux|b\(0) & ((\CPU|dec|ReadMux|b\(1)) # (\CPU|DP|REGFILE|writeR3|out\(8)))) ) ) ) # ( !\CPU|DP|REGFILE|writeR1|out\(8) & ( 
-- \CPU|dec|ReadMux|b\(2) & ( (\CPU|DP|REGFILE|writeR3|out\(8) & (!\CPU|dec|ReadMux|b\(1) & !\CPU|dec|ReadMux|b\(0))) ) ) ) # ( \CPU|DP|REGFILE|writeR1|out\(8) & ( !\CPU|dec|ReadMux|b\(2) & ( (\CPU|dec|ReadMux|b\(1) & (!\CPU|dec|ReadMux|b\(0) & 
-- \CPU|DP|REGFILE|writeR5|out\(8))) ) ) ) # ( !\CPU|DP|REGFILE|writeR1|out\(8) & ( !\CPU|dec|ReadMux|b\(2) & ( (\CPU|dec|ReadMux|b\(1) & (!\CPU|dec|ReadMux|b\(0) & \CPU|DP|REGFILE|writeR5|out\(8))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110000000000000011000001000000010000000111000001110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DP|REGFILE|writeR3|ALT_INV_out\(8),
	datab => \CPU|dec|ReadMux|ALT_INV_b\(1),
	datac => \CPU|dec|ReadMux|ALT_INV_b\(0),
	datad => \CPU|DP|REGFILE|writeR5|ALT_INV_out\(8),
	datae => \CPU|DP|REGFILE|writeR1|ALT_INV_out\(8),
	dataf => \CPU|dec|ReadMux|ALT_INV_b\(2),
	combout => \CPU|DP|REGFILE|MuxR|out[8]~1_combout\);

-- Location: LABCELL_X83_Y6_N27
\CPU|DP|REGFILE|MuxR|out[8]\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|REGFILE|MuxR|out\(8) = ( \CPU|DP|REGFILE|read_dec|ShiftLeft0~1_combout\ & ( \CPU|DP|REGFILE|read_dec|ShiftLeft0~0_combout\ & ( (((\CPU|DP|REGFILE|MuxR|out[8]~1_combout\) # (\CPU|DP|REGFILE|MuxR|out[8]~0_combout\)) # 
-- (\CPU|DP|REGFILE|writeR7|out\(8))) # (\CPU|DP|REGFILE|writeR6|out\(8)) ) ) ) # ( !\CPU|DP|REGFILE|read_dec|ShiftLeft0~1_combout\ & ( \CPU|DP|REGFILE|read_dec|ShiftLeft0~0_combout\ & ( ((\CPU|DP|REGFILE|MuxR|out[8]~1_combout\) # 
-- (\CPU|DP|REGFILE|MuxR|out[8]~0_combout\)) # (\CPU|DP|REGFILE|writeR6|out\(8)) ) ) ) # ( \CPU|DP|REGFILE|read_dec|ShiftLeft0~1_combout\ & ( !\CPU|DP|REGFILE|read_dec|ShiftLeft0~0_combout\ & ( ((\CPU|DP|REGFILE|MuxR|out[8]~1_combout\) # 
-- (\CPU|DP|REGFILE|MuxR|out[8]~0_combout\)) # (\CPU|DP|REGFILE|writeR7|out\(8)) ) ) ) # ( !\CPU|DP|REGFILE|read_dec|ShiftLeft0~1_combout\ & ( !\CPU|DP|REGFILE|read_dec|ShiftLeft0~0_combout\ & ( (\CPU|DP|REGFILE|MuxR|out[8]~1_combout\) # 
-- (\CPU|DP|REGFILE|MuxR|out[8]~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111111111001111111111111101011111111111110111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DP|REGFILE|writeR6|ALT_INV_out\(8),
	datab => \CPU|DP|REGFILE|writeR7|ALT_INV_out\(8),
	datac => \CPU|DP|REGFILE|MuxR|ALT_INV_out[8]~0_combout\,
	datad => \CPU|DP|REGFILE|MuxR|ALT_INV_out[8]~1_combout\,
	datae => \CPU|DP|REGFILE|read_dec|ALT_INV_ShiftLeft0~1_combout\,
	dataf => \CPU|DP|REGFILE|read_dec|ALT_INV_ShiftLeft0~0_combout\,
	combout => \CPU|DP|REGFILE|MuxR|out\(8));

-- Location: FF_X83_Y6_N26
\CPU|DP|pipeB|out[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|DP|REGFILE|MuxR|out\(8),
	sload => VCC,
	ena => \CPU|state|WideOr10~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|pipeB|out\(8));

-- Location: LABCELL_X83_Y6_N15
\CPU|DP|Bin[8]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|Bin[8]~2_combout\ = ( \CPU|DP|Bin[2]~1_combout\ & ( \CPU|DP|Bin[2]~0_combout\ & ( \CPU|DP|pipeB|out\(7) ) ) ) # ( !\CPU|DP|Bin[2]~1_combout\ & ( \CPU|DP|Bin[2]~0_combout\ & ( \CPU|instreg|out\(4) ) ) ) # ( \CPU|DP|Bin[2]~1_combout\ & ( 
-- !\CPU|DP|Bin[2]~0_combout\ & ( \CPU|DP|pipeB|out\(9) ) ) ) # ( !\CPU|DP|Bin[2]~1_combout\ & ( !\CPU|DP|Bin[2]~0_combout\ & ( \CPU|DP|pipeB|out\(8) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DP|pipeB|ALT_INV_out\(8),
	datab => \CPU|DP|pipeB|ALT_INV_out\(9),
	datac => \CPU|instreg|ALT_INV_out\(4),
	datad => \CPU|DP|pipeB|ALT_INV_out\(7),
	datae => \CPU|DP|ALT_INV_Bin[2]~1_combout\,
	dataf => \CPU|DP|ALT_INV_Bin[2]~0_combout\,
	combout => \CPU|DP|Bin[8]~2_combout\);

-- Location: LABCELL_X83_Y6_N0
\CPU|DP|pipeC|out[8]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|pipeC|out[8]~feeder_combout\ = \CPU|DP|logic|Add0~1_sumout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|DP|logic|ALT_INV_Add0~1_sumout\,
	combout => \CPU|DP|pipeC|out[8]~feeder_combout\);

-- Location: LABCELL_X83_Y6_N42
\CPU|DP|logic|Mux7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|logic|Mux7~0_combout\ = ( \CPU|DP|Bin[8]~2_combout\ & ( (\CPU|DP|logic|Mux0~0_combout\ & \CPU|DP|pipeA|out\(8)) ) ) # ( !\CPU|DP|Bin[8]~2_combout\ & ( \CPU|instreg|out[11]~DUPLICATE_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010100000000001100110000000000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|instreg|ALT_INV_out[11]~DUPLICATE_q\,
	datab => \CPU|DP|logic|ALT_INV_Mux0~0_combout\,
	datad => \CPU|DP|pipeA|ALT_INV_out\(8),
	dataf => \CPU|DP|ALT_INV_Bin[8]~2_combout\,
	combout => \CPU|DP|logic|Mux7~0_combout\);

-- Location: FF_X83_Y6_N1
\CPU|DP|pipeC|out[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|DP|pipeC|out[8]~feeder_combout\,
	asdata => \CPU|DP|logic|Mux7~0_combout\,
	sload => \CPU|instreg|out\(12),
	ena => \CPU|state|WideOr12~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|pipeC|out\(8));

-- Location: FF_X85_Y7_N58
\CPU|addrout|out[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|DP|pipeC|out\(8),
	sload => VCC,
	ena => \CPU|state|WideOr19~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|addrout|out\(8));

-- Location: LABCELL_X85_Y9_N57
write : cyclonev_lcell_comb
-- Equation(s):
-- \write~combout\ = ( \CPU|state|Decoder0~1_combout\ & ( (\CPU|state|Decoder0~2_combout\ & ((!\CPU|state|WideOr16~0_combout\ & ((!\CPU|addrout|out\(8)))) # (\CPU|state|WideOr16~0_combout\ & (!\CPU|Pc|out\(8))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110010000000100011001000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|Pc|ALT_INV_out\(8),
	datab => \CPU|state|ALT_INV_Decoder0~2_combout\,
	datac => \CPU|state|ALT_INV_WideOr16~0_combout\,
	datad => \CPU|addrout|ALT_INV_out\(8),
	dataf => \CPU|state|ALT_INV_Decoder0~1_combout\,
	combout => \write~combout\);

-- Location: LABCELL_X81_Y7_N36
\read_data[4]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \read_data[4]~5_combout\ = ( \MEM|mem_rtl_0|auto_generated|ram_block1a4\ & ( (!\switch~2_combout\) # (\SW[4]~input_o\) ) ) # ( !\MEM|mem_rtl_0|auto_generated|ram_block1a4\ & ( (\SW[4]~input_o\ & \switch~2_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001111110011111100111111001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_SW[4]~input_o\,
	datac => \ALT_INV_switch~2_combout\,
	dataf => \MEM|mem_rtl_0|auto_generated|ALT_INV_ram_block1a4\,
	combout => \read_data[4]~5_combout\);

-- Location: FF_X81_Y7_N38
\CPU|instreg|out[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \read_data[4]~5_combout\,
	ena => \CPU|state|WideOr18~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|instreg|out\(4));

-- Location: LABCELL_X83_Y6_N54
\CPU|DP|Bin[6]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|Bin[6]~8_combout\ = ( \CPU|DP|pipeB|out\(7) & ( \CPU|DP|Bin[2]~0_combout\ & ( (!\CPU|DP|Bin[2]~1_combout\ & (\CPU|instreg|out\(4))) # (\CPU|DP|Bin[2]~1_combout\ & ((\CPU|DP|pipeB|out\(5)))) ) ) ) # ( !\CPU|DP|pipeB|out\(7) & ( 
-- \CPU|DP|Bin[2]~0_combout\ & ( (!\CPU|DP|Bin[2]~1_combout\ & (\CPU|instreg|out\(4))) # (\CPU|DP|Bin[2]~1_combout\ & ((\CPU|DP|pipeB|out\(5)))) ) ) ) # ( \CPU|DP|pipeB|out\(7) & ( !\CPU|DP|Bin[2]~0_combout\ & ( (\CPU|DP|Bin[2]~1_combout\) # 
-- (\CPU|DP|pipeB|out\(6)) ) ) ) # ( !\CPU|DP|pipeB|out\(7) & ( !\CPU|DP|Bin[2]~0_combout\ & ( (\CPU|DP|pipeB|out\(6) & !\CPU|DP|Bin[2]~1_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100000000001100111111111101010101000011110101010100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|instreg|ALT_INV_out\(4),
	datab => \CPU|DP|pipeB|ALT_INV_out\(6),
	datac => \CPU|DP|pipeB|ALT_INV_out\(5),
	datad => \CPU|DP|ALT_INV_Bin[2]~1_combout\,
	datae => \CPU|DP|pipeB|ALT_INV_out\(7),
	dataf => \CPU|DP|ALT_INV_Bin[2]~0_combout\,
	combout => \CPU|DP|Bin[6]~8_combout\);

-- Location: LABCELL_X83_Y6_N3
\CPU|DP|pipeC|out[6]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|pipeC|out[6]~feeder_combout\ = \CPU|DP|logic|Add0~29_sumout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DP|logic|ALT_INV_Add0~29_sumout\,
	combout => \CPU|DP|pipeC|out[6]~feeder_combout\);

-- Location: LABCELL_X83_Y6_N45
\CPU|DP|logic|Mux9~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|logic|Mux9~0_combout\ = ( \CPU|DP|Bin[6]~8_combout\ & ( (\CPU|DP|logic|Mux0~0_combout\ & \CPU|DP|pipeA|out\(6)) ) ) # ( !\CPU|DP|Bin[6]~8_combout\ & ( \CPU|instreg|out[11]~DUPLICATE_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010100000011000000110000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|instreg|ALT_INV_out[11]~DUPLICATE_q\,
	datab => \CPU|DP|logic|ALT_INV_Mux0~0_combout\,
	datac => \CPU|DP|pipeA|ALT_INV_out\(6),
	dataf => \CPU|DP|ALT_INV_Bin[6]~8_combout\,
	combout => \CPU|DP|logic|Mux9~0_combout\);

-- Location: FF_X83_Y6_N5
\CPU|DP|pipeC|out[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|DP|pipeC|out[6]~feeder_combout\,
	asdata => \CPU|DP|logic|Mux9~0_combout\,
	sload => \CPU|instreg|out\(12),
	ena => \CPU|state|WideOr12~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|pipeC|out\(6));

-- Location: FF_X85_Y7_N13
\CPU|addrout|out[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|DP|pipeC|out\(6),
	sload => VCC,
	ena => \CPU|state|WideOr19~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|addrout|out\(6));

-- Location: MLABCELL_X84_Y9_N12
\switch~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \switch~3_combout\ = ( \CPU|state|WideOr16~0_combout\ & ( (!\switch~1_combout\ & \CPU|Pc|out\(6)) ) ) # ( !\CPU|state|WideOr16~0_combout\ & ( (\CPU|addrout|out\(6) & !\switch~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100000011000000110001000100010001000000110000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|addrout|ALT_INV_out\(6),
	datab => \ALT_INV_switch~1_combout\,
	datac => \CPU|Pc|ALT_INV_out\(6),
	datae => \CPU|state|ALT_INV_WideOr16~0_combout\,
	combout => \switch~3_combout\);

-- Location: MLABCELL_X84_Y7_N0
\read_data[13]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \read_data[13]~3_combout\ = ( \switch~3_combout\ & ( \MEM|mem_rtl_0|auto_generated|ram_block1a13\ & ( (!\led~2_combout\) # ((!\led~1_combout\) # ((!\led~3_combout\) # (!\led~0_combout\))) ) ) ) # ( !\switch~3_combout\ & ( 
-- \MEM|mem_rtl_0|auto_generated|ram_block1a13\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_led~2_combout\,
	datab => \ALT_INV_led~1_combout\,
	datac => \ALT_INV_led~3_combout\,
	datad => \ALT_INV_led~0_combout\,
	datae => \ALT_INV_switch~3_combout\,
	dataf => \MEM|mem_rtl_0|auto_generated|ALT_INV_ram_block1a13\,
	combout => \read_data[13]~3_combout\);

-- Location: FF_X84_Y7_N2
\CPU|instreg|out[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \read_data[13]~3_combout\,
	ena => \CPU|state|WideOr18~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|instreg|out\(13));

-- Location: MLABCELL_X84_Y7_N27
\CPU|state|WideOr5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|state|WideOr5~0_combout\ = ( \CPU|instreg|out[14]~DUPLICATE_q\ & ( (!\CPU|instreg|out[15]~DUPLICATE_q\ & \CPU|instreg|out\(13)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111100000000000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU|instreg|ALT_INV_out[15]~DUPLICATE_q\,
	datad => \CPU|instreg|ALT_INV_out\(13),
	dataf => \CPU|instreg|ALT_INV_out[14]~DUPLICATE_q\,
	combout => \CPU|state|WideOr5~0_combout\);

-- Location: LABCELL_X85_Y6_N6
\CPU|state|WideOr5~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|state|WideOr5~1_combout\ = ( !\CPU|instreg|out[11]~DUPLICATE_q\ & ( (!\CPU|state|STATE|next_out\(0) & (!\CPU|state|STATE|next_out\(1) & \CPU|state|STATE|next_out\(3))) # (\CPU|state|STATE|next_out\(0) & (\CPU|state|STATE|next_out\(1))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111000011000000111100001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|state|STATE|ALT_INV_next_out\(0),
	datac => \CPU|state|STATE|ALT_INV_next_out\(1),
	datad => \CPU|state|STATE|ALT_INV_next_out\(3),
	dataf => \CPU|instreg|ALT_INV_out[11]~DUPLICATE_q\,
	combout => \CPU|state|WideOr5~1_combout\);

-- Location: LABCELL_X85_Y6_N45
\CPU|state|WideOr5~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|state|WideOr5~2_combout\ = ( \CPU|state|WideOr5~1_combout\ & ( (\CPU|state|STATE|next_out\(2) & (!\CPU|instreg|out\(12) & \CPU|state|WideOr5~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000010100000000000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|state|STATE|ALT_INV_next_out\(2),
	datac => \CPU|instreg|ALT_INV_out\(12),
	datad => \CPU|state|ALT_INV_WideOr5~0_combout\,
	dataf => \CPU|state|ALT_INV_WideOr5~1_combout\,
	combout => \CPU|state|WideOr5~2_combout\);

-- Location: MLABCELL_X84_Y10_N3
\CPU|DP|multi|b[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|multi|b[4]~4_combout\ = ( \CPU|state|WideOr4~2_combout\ & ( ((\CPU|state|Decoder0~5_combout\ & \CPU|instreg|out\(4))) # (\CPU|DP|pipeC|out\(4)) ) ) # ( !\CPU|state|WideOr4~2_combout\ & ( (\CPU|state|Decoder0~5_combout\ & \CPU|instreg|out\(4)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111101010101010111110101010101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DP|pipeC|ALT_INV_out\(4),
	datac => \CPU|state|ALT_INV_Decoder0~5_combout\,
	datad => \CPU|instreg|ALT_INV_out\(4),
	dataf => \CPU|state|ALT_INV_WideOr4~2_combout\,
	combout => \CPU|DP|multi|b[4]~4_combout\);

-- Location: MLABCELL_X84_Y10_N39
\CPU|DP|multi|b[4]\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|multi|b\(4) = ( \MEM|mem_rtl_0|auto_generated|ram_block1a4\ & ( ((\CPU|state|WideOr5~2_combout\ & ((!\switch~2_combout\) # (\SW[4]~input_o\)))) # (\CPU|DP|multi|b[4]~4_combout\) ) ) # ( !\MEM|mem_rtl_0|auto_generated|ram_block1a4\ & ( 
-- ((\CPU|state|WideOr5~2_combout\ & (\switch~2_combout\ & \SW[4]~input_o\))) # (\CPU|DP|multi|b[4]~4_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000111111111000000011111111101000101111111110100010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|state|ALT_INV_WideOr5~2_combout\,
	datab => \ALT_INV_switch~2_combout\,
	datac => \ALT_INV_SW[4]~input_o\,
	datad => \CPU|DP|multi|ALT_INV_b[4]~4_combout\,
	dataf => \MEM|mem_rtl_0|auto_generated|ALT_INV_ram_block1a4\,
	combout => \CPU|DP|multi|b\(4));

-- Location: FF_X82_Y10_N11
\CPU|DP|REGFILE|writeR6|out[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|DP|multi|b\(4),
	sload => VCC,
	ena => \CPU|DP|REGFILE|andss|out\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|writeR6|out\(4));

-- Location: FF_X84_Y9_N16
\CPU|DP|REGFILE|writeR7|out[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|DP|multi|b\(4),
	sload => VCC,
	ena => \CPU|DP|REGFILE|andss|out\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|writeR7|out\(4));

-- Location: FF_X84_Y9_N26
\CPU|DP|REGFILE|writeR1|out[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|DP|multi|b\(4),
	sload => VCC,
	ena => \CPU|DP|REGFILE|andss|out\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|writeR1|out\(4));

-- Location: FF_X85_Y9_N34
\CPU|DP|REGFILE|writeR3|out[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|DP|multi|b\(4),
	sload => VCC,
	ena => \CPU|DP|REGFILE|andss|out\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|writeR3|out\(4));

-- Location: FF_X84_Y10_N41
\CPU|DP|REGFILE|writeR5|out[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|DP|multi|b\(4),
	ena => \CPU|DP|REGFILE|andss|out\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|writeR5|out\(4));

-- Location: MLABCELL_X82_Y9_N39
\CPU|DP|REGFILE|MuxR|out[4]~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|REGFILE|MuxR|out[4]~15_combout\ = ( \CPU|dec|ReadMux|b\(2) & ( \CPU|dec|ReadMux|b\(1) & ( (\CPU|DP|REGFILE|writeR1|out\(4) & !\CPU|dec|ReadMux|b\(0)) ) ) ) # ( !\CPU|dec|ReadMux|b\(2) & ( \CPU|dec|ReadMux|b\(1) & ( (!\CPU|dec|ReadMux|b\(0) & 
-- \CPU|DP|REGFILE|writeR5|out\(4)) ) ) ) # ( \CPU|dec|ReadMux|b\(2) & ( !\CPU|dec|ReadMux|b\(1) & ( (!\CPU|dec|ReadMux|b\(0) & \CPU|DP|REGFILE|writeR3|out\(4)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011000000110000000000110011000100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DP|REGFILE|writeR1|ALT_INV_out\(4),
	datab => \CPU|dec|ReadMux|ALT_INV_b\(0),
	datac => \CPU|DP|REGFILE|writeR3|ALT_INV_out\(4),
	datad => \CPU|DP|REGFILE|writeR5|ALT_INV_out\(4),
	datae => \CPU|dec|ReadMux|ALT_INV_b\(2),
	dataf => \CPU|dec|ReadMux|ALT_INV_b\(1),
	combout => \CPU|DP|REGFILE|MuxR|out[4]~15_combout\);

-- Location: FF_X85_Y10_N28
\CPU|DP|REGFILE|writeR4|out[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|DP|multi|b\(4),
	sload => VCC,
	ena => \CPU|DP|REGFILE|andss|out\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|writeR4|out\(4));

-- Location: FF_X84_Y10_N28
\CPU|DP|REGFILE|writeR2|out[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|DP|multi|b\(4),
	sload => VCC,
	ena => \CPU|DP|REGFILE|andss|out\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|writeR2|out\(4));

-- Location: FF_X83_Y9_N47
\CPU|DP|REGFILE|writeR0|out[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|DP|multi|b\(4),
	sload => VCC,
	ena => \CPU|DP|REGFILE|andss|out\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|writeR0|out\(4));

-- Location: LABCELL_X83_Y9_N45
\CPU|DP|REGFILE|MuxR|out[4]~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|REGFILE|MuxR|out[4]~14_combout\ = ( \CPU|DP|REGFILE|writeR0|out\(4) & ( \CPU|dec|ReadMux|b\(1) & ( (\CPU|dec|ReadMux|b\(0) & ((\CPU|DP|REGFILE|writeR4|out\(4)) # (\CPU|dec|ReadMux|b\(2)))) ) ) ) # ( !\CPU|DP|REGFILE|writeR0|out\(4) & ( 
-- \CPU|dec|ReadMux|b\(1) & ( (!\CPU|dec|ReadMux|b\(2) & (\CPU|DP|REGFILE|writeR4|out\(4) & \CPU|dec|ReadMux|b\(0))) ) ) ) # ( \CPU|DP|REGFILE|writeR0|out\(4) & ( !\CPU|dec|ReadMux|b\(1) & ( (\CPU|dec|ReadMux|b\(2) & (\CPU|DP|REGFILE|writeR2|out\(4) & 
-- \CPU|dec|ReadMux|b\(0))) ) ) ) # ( !\CPU|DP|REGFILE|writeR0|out\(4) & ( !\CPU|dec|ReadMux|b\(1) & ( (\CPU|dec|ReadMux|b\(2) & (\CPU|DP|REGFILE|writeR2|out\(4) & \CPU|dec|ReadMux|b\(0))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000101000000000000010100000000001000100000000001110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|dec|ReadMux|ALT_INV_b\(2),
	datab => \CPU|DP|REGFILE|writeR4|ALT_INV_out\(4),
	datac => \CPU|DP|REGFILE|writeR2|ALT_INV_out\(4),
	datad => \CPU|dec|ReadMux|ALT_INV_b\(0),
	datae => \CPU|DP|REGFILE|writeR0|ALT_INV_out\(4),
	dataf => \CPU|dec|ReadMux|ALT_INV_b\(1),
	combout => \CPU|DP|REGFILE|MuxR|out[4]~14_combout\);

-- Location: MLABCELL_X82_Y9_N51
\CPU|DP|REGFILE|MuxR|out[4]\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|REGFILE|MuxR|out\(4) = ( \CPU|DP|REGFILE|read_dec|ShiftLeft0~1_combout\ & ( \CPU|DP|REGFILE|read_dec|ShiftLeft0~0_combout\ & ( (((\CPU|DP|REGFILE|MuxR|out[4]~14_combout\) # (\CPU|DP|REGFILE|MuxR|out[4]~15_combout\)) # 
-- (\CPU|DP|REGFILE|writeR7|out\(4))) # (\CPU|DP|REGFILE|writeR6|out\(4)) ) ) ) # ( !\CPU|DP|REGFILE|read_dec|ShiftLeft0~1_combout\ & ( \CPU|DP|REGFILE|read_dec|ShiftLeft0~0_combout\ & ( ((\CPU|DP|REGFILE|MuxR|out[4]~14_combout\) # 
-- (\CPU|DP|REGFILE|MuxR|out[4]~15_combout\)) # (\CPU|DP|REGFILE|writeR6|out\(4)) ) ) ) # ( \CPU|DP|REGFILE|read_dec|ShiftLeft0~1_combout\ & ( !\CPU|DP|REGFILE|read_dec|ShiftLeft0~0_combout\ & ( ((\CPU|DP|REGFILE|MuxR|out[4]~14_combout\) # 
-- (\CPU|DP|REGFILE|MuxR|out[4]~15_combout\)) # (\CPU|DP|REGFILE|writeR7|out\(4)) ) ) ) # ( !\CPU|DP|REGFILE|read_dec|ShiftLeft0~1_combout\ & ( !\CPU|DP|REGFILE|read_dec|ShiftLeft0~0_combout\ & ( (\CPU|DP|REGFILE|MuxR|out[4]~14_combout\) # 
-- (\CPU|DP|REGFILE|MuxR|out[4]~15_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111111111001111111111111101011111111111110111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DP|REGFILE|writeR6|ALT_INV_out\(4),
	datab => \CPU|DP|REGFILE|writeR7|ALT_INV_out\(4),
	datac => \CPU|DP|REGFILE|MuxR|ALT_INV_out[4]~15_combout\,
	datad => \CPU|DP|REGFILE|MuxR|ALT_INV_out[4]~14_combout\,
	datae => \CPU|DP|REGFILE|read_dec|ALT_INV_ShiftLeft0~1_combout\,
	dataf => \CPU|DP|REGFILE|read_dec|ALT_INV_ShiftLeft0~0_combout\,
	combout => \CPU|DP|REGFILE|MuxR|out\(4));

-- Location: FF_X82_Y9_N53
\CPU|DP|pipeA|out[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|DP|REGFILE|MuxR|out\(4),
	ena => \CPU|state|WideOr9~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|pipeA|out\(4));

-- Location: MLABCELL_X82_Y7_N57
\CPU|DP|pipeC|out[4]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|pipeC|out[4]~feeder_combout\ = ( \CPU|DP|logic|Add0~21_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|DP|logic|ALT_INV_Add0~21_sumout\,
	combout => \CPU|DP|pipeC|out[4]~feeder_combout\);

-- Location: MLABCELL_X82_Y7_N54
\CPU|DP|logic|Mux11~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|logic|Mux11~0_combout\ = ( \CPU|DP|logic|Mux0~0_combout\ & ( (!\CPU|DP|Bin[4]~6_combout\ & ((\CPU|instreg|out[11]~DUPLICATE_q\))) # (\CPU|DP|Bin[4]~6_combout\ & (\CPU|DP|pipeA|out\(4))) ) ) # ( !\CPU|DP|logic|Mux0~0_combout\ & ( 
-- (!\CPU|DP|Bin[4]~6_combout\ & \CPU|instreg|out[11]~DUPLICATE_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000011000000110000011101000111010001110100011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DP|pipeA|ALT_INV_out\(4),
	datab => \CPU|DP|ALT_INV_Bin[4]~6_combout\,
	datac => \CPU|instreg|ALT_INV_out[11]~DUPLICATE_q\,
	dataf => \CPU|DP|logic|ALT_INV_Mux0~0_combout\,
	combout => \CPU|DP|logic|Mux11~0_combout\);

-- Location: FF_X82_Y7_N58
\CPU|DP|pipeC|out[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|DP|pipeC|out[4]~feeder_combout\,
	asdata => \CPU|DP|logic|Mux11~0_combout\,
	sload => \CPU|instreg|out\(12),
	ena => \CPU|state|WideOr12~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|pipeC|out\(4));

-- Location: FF_X85_Y7_N8
\CPU|addrout|out[4]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|DP|pipeC|out\(4),
	sload => VCC,
	ena => \CPU|state|WideOr19~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|addrout|out[4]~DUPLICATE_q\);

-- Location: LABCELL_X85_Y7_N0
\led~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \led~0_combout\ = ( !\CPU|state|WideOr16~0_combout\ & ( \CPU|Pc|out\(3) & ( (!\CPU|addrout|out[4]~DUPLICATE_q\ & !\CPU|addrout|out\(3)) ) ) ) # ( \CPU|state|WideOr16~0_combout\ & ( !\CPU|Pc|out\(3) & ( !\CPU|Pc|out\(4) ) ) ) # ( 
-- !\CPU|state|WideOr16~0_combout\ & ( !\CPU|Pc|out\(3) & ( (!\CPU|addrout|out[4]~DUPLICATE_q\ & !\CPU|addrout|out\(3)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000011000000111111110000000011000000110000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|addrout|ALT_INV_out[4]~DUPLICATE_q\,
	datac => \CPU|addrout|ALT_INV_out\(3),
	datad => \CPU|Pc|ALT_INV_out\(4),
	datae => \CPU|state|ALT_INV_WideOr16~0_combout\,
	dataf => \CPU|Pc|ALT_INV_out\(3),
	combout => \led~0_combout\);

-- Location: LABCELL_X83_Y7_N27
\read_data[14]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \read_data[14]~2_combout\ = ( \switch~3_combout\ & ( \MEM|mem_rtl_0|auto_generated|ram_block1a14\ & ( (!\led~3_combout\) # ((!\led~1_combout\) # ((!\led~2_combout\) # (!\led~0_combout\))) ) ) ) # ( !\switch~3_combout\ & ( 
-- \MEM|mem_rtl_0|auto_generated|ram_block1a14\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_led~3_combout\,
	datab => \ALT_INV_led~1_combout\,
	datac => \ALT_INV_led~2_combout\,
	datad => \ALT_INV_led~0_combout\,
	datae => \ALT_INV_switch~3_combout\,
	dataf => \MEM|mem_rtl_0|auto_generated|ALT_INV_ram_block1a14\,
	combout => \read_data[14]~2_combout\);

-- Location: FF_X83_Y7_N28
\CPU|instreg|out[14]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \read_data[14]~2_combout\,
	ena => \CPU|state|WideOr18~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|instreg|out[14]~DUPLICATE_q\);

-- Location: LABCELL_X83_Y5_N42
\CPU|state|WideOr11~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|state|WideOr11~0_combout\ = ( \CPU|instreg|out\(12) & ( \CPU|instreg|out[13]~DUPLICATE_q\ & ( (!\CPU|instreg|out[14]~DUPLICATE_q\ & \CPU|instreg|out[11]~DUPLICATE_q\) ) ) ) # ( !\CPU|instreg|out\(12) & ( !\CPU|instreg|out[13]~DUPLICATE_q\ & ( 
-- !\CPU|instreg|out[11]~DUPLICATE_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000000000000000000000000000000000000000000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU|instreg|ALT_INV_out[14]~DUPLICATE_q\,
	datad => \CPU|instreg|ALT_INV_out[11]~DUPLICATE_q\,
	datae => \CPU|instreg|ALT_INV_out\(12),
	dataf => \CPU|instreg|ALT_INV_out[13]~DUPLICATE_q\,
	combout => \CPU|state|WideOr11~0_combout\);

-- Location: LABCELL_X83_Y5_N3
\CPU|state|WideOr11~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|state|WideOr11~1_combout\ = ( \CPU|instreg|out[15]~DUPLICATE_q\ & ( \CPU|state|WideOr11~0_combout\ & ( (\CPU|state|STATE|next_out\(2) & (!\CPU|state|STATE|next_out\(0) & \CPU|state|STATE|next_out\(1))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|state|STATE|ALT_INV_next_out\(2),
	datac => \CPU|state|STATE|ALT_INV_next_out\(0),
	datad => \CPU|state|STATE|ALT_INV_next_out\(1),
	datae => \CPU|instreg|ALT_INV_out[15]~DUPLICATE_q\,
	dataf => \CPU|state|ALT_INV_WideOr11~0_combout\,
	combout => \CPU|state|WideOr11~1_combout\);

-- Location: MLABCELL_X82_Y7_N12
\CPU|DP|pipeC|out[5]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|pipeC|out[5]~feeder_combout\ = ( \CPU|DP|logic|Add0~25_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|DP|logic|ALT_INV_Add0~25_sumout\,
	combout => \CPU|DP|pipeC|out[5]~feeder_combout\);

-- Location: MLABCELL_X82_Y7_N15
\CPU|DP|logic|Mux10~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|logic|Mux10~0_combout\ = (!\CPU|DP|Bin[5]~7_combout\ & (\CPU|instreg|out[11]~DUPLICATE_q\)) # (\CPU|DP|Bin[5]~7_combout\ & (((\CPU|DP|logic|Mux0~0_combout\ & \CPU|DP|pipeA|out\(5)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010011010100000101001101010000010100110101000001010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|instreg|ALT_INV_out[11]~DUPLICATE_q\,
	datab => \CPU|DP|logic|ALT_INV_Mux0~0_combout\,
	datac => \CPU|DP|ALT_INV_Bin[5]~7_combout\,
	datad => \CPU|DP|pipeA|ALT_INV_out\(5),
	combout => \CPU|DP|logic|Mux10~0_combout\);

-- Location: FF_X82_Y7_N13
\CPU|DP|pipeC|out[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|DP|pipeC|out[5]~feeder_combout\,
	asdata => \CPU|DP|logic|Mux10~0_combout\,
	sload => \CPU|instreg|out\(12),
	ena => \CPU|state|WideOr12~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|pipeC|out\(5));

-- Location: LABCELL_X85_Y9_N45
\CPU|addrout|out[5]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|addrout|out[5]~feeder_combout\ = ( \CPU|DP|pipeC|out\(5) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|DP|pipeC|ALT_INV_out\(5),
	combout => \CPU|addrout|out[5]~feeder_combout\);

-- Location: FF_X85_Y9_N47
\CPU|addrout|out[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|addrout|out[5]~feeder_combout\,
	ena => \CPU|state|WideOr19~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|addrout|out\(5));

-- Location: LABCELL_X85_Y9_N3
\led~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \led~2_combout\ = ( !\CPU|state|WideOr16~0_combout\ & ( \CPU|Pc|out\(7) & ( (!\CPU|addrout|out\(5) & !\CPU|addrout|out\(7)) ) ) ) # ( \CPU|state|WideOr16~0_combout\ & ( !\CPU|Pc|out\(7) & ( !\CPU|Pc|out\(5) ) ) ) # ( !\CPU|state|WideOr16~0_combout\ & ( 
-- !\CPU|Pc|out\(7) & ( (!\CPU|addrout|out\(5) & !\CPU|addrout|out\(7)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000110011001100110011110000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|Pc|ALT_INV_out\(5),
	datac => \CPU|addrout|ALT_INV_out\(5),
	datad => \CPU|addrout|ALT_INV_out\(7),
	datae => \CPU|state|ALT_INV_WideOr16~0_combout\,
	dataf => \CPU|Pc|ALT_INV_out\(7),
	combout => \led~2_combout\);

-- Location: LABCELL_X83_Y7_N45
\read_data[11]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \read_data[11]~0_combout\ = ( \switch~3_combout\ & ( \MEM|mem_rtl_0|auto_generated|ram_block1a11\ & ( (!\led~3_combout\) # ((!\led~1_combout\) # ((!\led~2_combout\) # (!\led~0_combout\))) ) ) ) # ( !\switch~3_combout\ & ( 
-- \MEM|mem_rtl_0|auto_generated|ram_block1a11\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_led~3_combout\,
	datab => \ALT_INV_led~1_combout\,
	datac => \ALT_INV_led~2_combout\,
	datad => \ALT_INV_led~0_combout\,
	datae => \ALT_INV_switch~3_combout\,
	dataf => \MEM|mem_rtl_0|auto_generated|ALT_INV_ram_block1a11\,
	combout => \read_data[11]~0_combout\);

-- Location: FF_X83_Y7_N47
\CPU|instreg|out[11]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \read_data[11]~0_combout\,
	ena => \CPU|state|WideOr18~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|instreg|out[11]~DUPLICATE_q\);

-- Location: LABCELL_X83_Y9_N0
\CPU|DP|pipeC|out[2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|pipeC|out[2]~feeder_combout\ = ( \CPU|DP|logic|Add0~13_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|DP|logic|ALT_INV_Add0~13_sumout\,
	combout => \CPU|DP|pipeC|out[2]~feeder_combout\);

-- Location: LABCELL_X83_Y9_N54
\CPU|DP|logic|Mux13~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|logic|Mux13~0_combout\ = ( \CPU|DP|logic|Mux0~0_combout\ & ( (!\CPU|DP|Bin[2]~4_combout\ & ((\CPU|instreg|out[11]~DUPLICATE_q\))) # (\CPU|DP|Bin[2]~4_combout\ & (\CPU|DP|pipeA|out\(2))) ) ) # ( !\CPU|DP|logic|Mux0~0_combout\ & ( 
-- (!\CPU|DP|Bin[2]~4_combout\ & \CPU|instreg|out[11]~DUPLICATE_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100000000001100110000000011110011110000001111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|DP|ALT_INV_Bin[2]~4_combout\,
	datac => \CPU|DP|pipeA|ALT_INV_out\(2),
	datad => \CPU|instreg|ALT_INV_out[11]~DUPLICATE_q\,
	dataf => \CPU|DP|logic|ALT_INV_Mux0~0_combout\,
	combout => \CPU|DP|logic|Mux13~0_combout\);

-- Location: FF_X83_Y9_N1
\CPU|DP|pipeC|out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|DP|pipeC|out[2]~feeder_combout\,
	asdata => \CPU|DP|logic|Mux13~0_combout\,
	sload => \CPU|instreg|out\(12),
	ena => \CPU|state|WideOr12~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|pipeC|out\(2));

-- Location: FF_X85_Y7_N11
\CPU|addrout|out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|DP|pipeC|out\(2),
	sload => VCC,
	ena => \CPU|state|WideOr19~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|addrout|out\(2));

-- Location: LABCELL_X85_Y7_N54
\led~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \led~1_combout\ = ( !\CPU|state|WideOr16~0_combout\ & ( \CPU|Pc|out\(1) & ( (!\CPU|addrout|out\(2) & !\CPU|addrout|out\(1)) ) ) ) # ( \CPU|state|WideOr16~0_combout\ & ( !\CPU|Pc|out\(1) & ( !\CPU|Pc|out\(2) ) ) ) # ( !\CPU|state|WideOr16~0_combout\ & ( 
-- !\CPU|Pc|out\(1) & ( (!\CPU|addrout|out\(2) & !\CPU|addrout|out\(1)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000011000000101010101010101011000000110000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|Pc|ALT_INV_out\(2),
	datab => \CPU|addrout|ALT_INV_out\(2),
	datac => \CPU|addrout|ALT_INV_out\(1),
	datae => \CPU|state|ALT_INV_WideOr16~0_combout\,
	dataf => \CPU|Pc|ALT_INV_out\(1),
	combout => \led~1_combout\);

-- Location: LABCELL_X83_Y7_N24
\read_data[12]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \read_data[12]~1_combout\ = ( \switch~3_combout\ & ( \MEM|mem_rtl_0|auto_generated|ram_block1a12\ & ( (!\led~3_combout\) # ((!\led~1_combout\) # ((!\led~0_combout\) # (!\led~2_combout\))) ) ) ) # ( !\switch~3_combout\ & ( 
-- \MEM|mem_rtl_0|auto_generated|ram_block1a12\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_led~3_combout\,
	datab => \ALT_INV_led~1_combout\,
	datac => \ALT_INV_led~0_combout\,
	datad => \ALT_INV_led~2_combout\,
	datae => \ALT_INV_switch~3_combout\,
	dataf => \MEM|mem_rtl_0|auto_generated|ALT_INV_ram_block1a12\,
	combout => \read_data[12]~1_combout\);

-- Location: FF_X83_Y7_N26
\CPU|instreg|out[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \read_data[12]~1_combout\,
	ena => \CPU|state|WideOr18~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|instreg|out\(12));

-- Location: LABCELL_X83_Y5_N18
\CPU|state|WideOr3~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|state|WideOr3~2_combout\ = ( \CPU|instreg|out[15]~DUPLICATE_q\ & ( (\CPU|state|STATE|next_out\(2) & (!\CPU|instreg|out\(12) & (!\CPU|instreg|out[14]~DUPLICATE_q\ & !\CPU|instreg|out[11]~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001000000000000000100000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|state|STATE|ALT_INV_next_out\(2),
	datab => \CPU|instreg|ALT_INV_out\(12),
	datac => \CPU|instreg|ALT_INV_out[14]~DUPLICATE_q\,
	datad => \CPU|instreg|ALT_INV_out[11]~DUPLICATE_q\,
	dataf => \CPU|instreg|ALT_INV_out[15]~DUPLICATE_q\,
	combout => \CPU|state|WideOr3~2_combout\);

-- Location: LABCELL_X83_Y5_N21
\CPU|state|WideOr3~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|state|WideOr3~1_combout\ = ( \CPU|state|bsel~0_combout\ & ( (\CPU|state|STATE|next_out\(2) & !\CPU|instreg|out\(12)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010000010100000101000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|state|STATE|ALT_INV_next_out\(2),
	datac => \CPU|instreg|ALT_INV_out\(12),
	dataf => \CPU|state|ALT_INV_bsel~0_combout\,
	combout => \CPU|state|WideOr3~1_combout\);

-- Location: LABCELL_X83_Y5_N54
\CPU|state|WideOr3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|state|WideOr3~0_combout\ = ( \CPU|instreg|out[11]~DUPLICATE_q\ & ( \CPU|instreg|out\(12) & ( \CPU|state|STATE|next_out\(2) ) ) ) # ( !\CPU|instreg|out[11]~DUPLICATE_q\ & ( \CPU|instreg|out\(12) & ( (\CPU|state|STATE|next_out\(2) & 
-- ((!\CPU|instreg|out[15]~DUPLICATE_q\) # (!\CPU|instreg|out[14]~DUPLICATE_q\ $ (\CPU|instreg|out[13]~DUPLICATE_q\)))) ) ) ) # ( \CPU|instreg|out[11]~DUPLICATE_q\ & ( !\CPU|instreg|out\(12) & ( (\CPU|state|STATE|next_out\(2) & 
-- (((!\CPU|instreg|out[15]~DUPLICATE_q\) # (!\CPU|instreg|out[13]~DUPLICATE_q\)) # (\CPU|instreg|out[14]~DUPLICATE_q\))) ) ) ) # ( !\CPU|instreg|out[11]~DUPLICATE_q\ & ( !\CPU|instreg|out\(12) & ( (\CPU|state|STATE|next_out\(2) & 
-- ((!\CPU|instreg|out[14]~DUPLICATE_q\ & (!\CPU|instreg|out[15]~DUPLICATE_q\)) # (\CPU|instreg|out[14]~DUPLICATE_q\ & ((!\CPU|instreg|out[13]~DUPLICATE_q\) # (\CPU|instreg|out[15]~DUPLICATE_q\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110100001001000011110000110100001110000011010000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|instreg|ALT_INV_out[14]~DUPLICATE_q\,
	datab => \CPU|instreg|ALT_INV_out[15]~DUPLICATE_q\,
	datac => \CPU|state|STATE|ALT_INV_next_out\(2),
	datad => \CPU|instreg|ALT_INV_out[13]~DUPLICATE_q\,
	datae => \CPU|instreg|ALT_INV_out[11]~DUPLICATE_q\,
	dataf => \CPU|instreg|ALT_INV_out\(12),
	combout => \CPU|state|WideOr3~0_combout\);

-- Location: LABCELL_X83_Y5_N6
\CPU|state|WideOr3~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|state|WideOr3~7_combout\ = ( \CPU|instreg|out[11]~DUPLICATE_q\ & ( \CPU|instreg|out\(12) & ( \CPU|state|STATE|next_out\(2) ) ) ) # ( !\CPU|instreg|out[11]~DUPLICATE_q\ & ( \CPU|instreg|out\(12) & ( \CPU|state|STATE|next_out\(2) ) ) ) # ( 
-- \CPU|instreg|out[11]~DUPLICATE_q\ & ( !\CPU|instreg|out\(12) & ( (\CPU|state|STATE|next_out\(2) & (((!\CPU|instreg|out[15]~DUPLICATE_q\) # (!\CPU|instreg|out[13]~DUPLICATE_q\)) # (\CPU|instreg|out[14]~DUPLICATE_q\))) ) ) ) # ( 
-- !\CPU|instreg|out[11]~DUPLICATE_q\ & ( !\CPU|instreg|out\(12) & ( (\CPU|state|STATE|next_out\(2) & ((!\CPU|instreg|out[15]~DUPLICATE_q\) # ((\CPU|instreg|out[14]~DUPLICATE_q\ & \CPU|instreg|out[13]~DUPLICATE_q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001101000011110000110100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|instreg|ALT_INV_out[14]~DUPLICATE_q\,
	datab => \CPU|instreg|ALT_INV_out[15]~DUPLICATE_q\,
	datac => \CPU|state|STATE|ALT_INV_next_out\(2),
	datad => \CPU|instreg|ALT_INV_out[13]~DUPLICATE_q\,
	datae => \CPU|instreg|ALT_INV_out[11]~DUPLICATE_q\,
	dataf => \CPU|instreg|ALT_INV_out\(12),
	combout => \CPU|state|WideOr3~7_combout\);

-- Location: LABCELL_X83_Y5_N48
\CPU|state|WideOr3~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|state|WideOr3~3_combout\ = ( \CPU|state|WideOr3~0_combout\ & ( \CPU|state|WideOr3~7_combout\ & ( (\CPU|state|STATE|next_out\(0) & ((!\CPU|state|STATE|next_out\(1) & ((\CPU|state|WideOr3~1_combout\))) # (\CPU|state|STATE|next_out\(1) & 
-- (\CPU|state|WideOr3~2_combout\)))) ) ) ) # ( !\CPU|state|WideOr3~0_combout\ & ( \CPU|state|WideOr3~7_combout\ & ( (!\CPU|state|STATE|next_out\(1) & (((!\CPU|state|STATE|next_out\(0)) # (\CPU|state|WideOr3~1_combout\)))) # (\CPU|state|STATE|next_out\(1) & 
-- (\CPU|state|WideOr3~2_combout\ & ((\CPU|state|STATE|next_out\(0))))) ) ) ) # ( \CPU|state|WideOr3~0_combout\ & ( !\CPU|state|WideOr3~7_combout\ & ( (!\CPU|state|STATE|next_out\(1) & (((\CPU|state|WideOr3~1_combout\ & \CPU|state|STATE|next_out\(0))))) # 
-- (\CPU|state|STATE|next_out\(1) & (((!\CPU|state|STATE|next_out\(0))) # (\CPU|state|WideOr3~2_combout\))) ) ) ) # ( !\CPU|state|WideOr3~0_combout\ & ( !\CPU|state|WideOr3~7_combout\ & ( (!\CPU|state|STATE|next_out\(0)) # ((!\CPU|state|STATE|next_out\(1) & 
-- ((\CPU|state|WideOr3~1_combout\))) # (\CPU|state|STATE|next_out\(1) & (\CPU|state|WideOr3~2_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100011101001100110001110111001100000111010000000000011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|state|ALT_INV_WideOr3~2_combout\,
	datab => \CPU|state|STATE|ALT_INV_next_out\(1),
	datac => \CPU|state|ALT_INV_WideOr3~1_combout\,
	datad => \CPU|state|STATE|ALT_INV_next_out\(0),
	datae => \CPU|state|ALT_INV_WideOr3~0_combout\,
	dataf => \CPU|state|ALT_INV_WideOr3~7_combout\,
	combout => \CPU|state|WideOr3~3_combout\);

-- Location: LABCELL_X83_Y9_N12
\CPU|state|resetstate[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|state|resetstate[0]~0_combout\ = ( \CPU|state|STATE|next_out\(2) ) # ( !\CPU|state|STATE|next_out\(2) & ( (!\CPU|instreg|out[13]~DUPLICATE_q\ & (\CPU|instreg|out[15]~DUPLICATE_q\ & (!\CPU|instreg|out[11]~DUPLICATE_q\ & !\CPU|instreg|out\(12)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000000000001000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|instreg|ALT_INV_out[13]~DUPLICATE_q\,
	datab => \CPU|instreg|ALT_INV_out[15]~DUPLICATE_q\,
	datac => \CPU|instreg|ALT_INV_out[11]~DUPLICATE_q\,
	datad => \CPU|instreg|ALT_INV_out\(12),
	dataf => \CPU|state|STATE|ALT_INV_next_out\(2),
	combout => \CPU|state|resetstate[0]~0_combout\);

-- Location: MLABCELL_X84_Y5_N42
\CPU|state|WideOr3~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|state|WideOr3~6_combout\ = ( \CPU|instreg|out[13]~DUPLICATE_q\ & ( \CPU|state|STATE|next_out\(2) & ( (!\CPU|instreg|out[11]~DUPLICATE_q\ & (\CPU|instreg|out[14]~DUPLICATE_q\ & (!\CPU|instreg|out\(12) & !\CPU|instreg|out[15]~DUPLICATE_q\))) ) ) ) # ( 
-- \CPU|instreg|out[13]~DUPLICATE_q\ & ( !\CPU|state|STATE|next_out\(2) & ( (!\CPU|instreg|out[11]~DUPLICATE_q\ & (!\CPU|instreg|out[14]~DUPLICATE_q\ & (\CPU|instreg|out\(12) & \CPU|instreg|out[15]~DUPLICATE_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000100000000000000000000010000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|instreg|ALT_INV_out[11]~DUPLICATE_q\,
	datab => \CPU|instreg|ALT_INV_out[14]~DUPLICATE_q\,
	datac => \CPU|instreg|ALT_INV_out\(12),
	datad => \CPU|instreg|ALT_INV_out[15]~DUPLICATE_q\,
	datae => \CPU|instreg|ALT_INV_out[13]~DUPLICATE_q\,
	dataf => \CPU|state|STATE|ALT_INV_next_out\(2),
	combout => \CPU|state|WideOr3~6_combout\);

-- Location: LABCELL_X83_Y9_N18
\CPU|state|resetstate[0]~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|state|resetstate[0]~12_combout\ = ( !\CPU|state|STATE|next_out\(1) & ( (((\CPU|state|WideOr3~6_combout\ & ((!\CPU|state|STATE|next_out\(0)))))) ) ) # ( \CPU|state|STATE|next_out\(1) & ( (!\CPU|state|resetstate[0]~0_combout\ & 
-- (\CPU|instreg|out[11]~DUPLICATE_q\ & (\CPU|state|WideOr2~0_combout\ & (\CPU|state|WideOr3~4_combout\)))) # (\CPU|state|resetstate[0]~0_combout\ & (((\CPU|instreg|out[11]~DUPLICATE_q\ & (\CPU|state|WideOr2~0_combout\ & \CPU|state|WideOr3~4_combout\))) # 
-- (\CPU|state|STATE|next_out\(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000111100001111000000000001000100000000000000000000111100011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|instreg|ALT_INV_out[11]~DUPLICATE_q\,
	datab => \CPU|state|ALT_INV_WideOr2~0_combout\,
	datac => \CPU|state|ALT_INV_resetstate[0]~0_combout\,
	datad => \CPU|state|ALT_INV_WideOr3~4_combout\,
	datae => \CPU|state|STATE|ALT_INV_next_out\(1),
	dataf => \CPU|state|STATE|ALT_INV_next_out\(0),
	datag => \CPU|state|ALT_INV_WideOr3~6_combout\,
	combout => \CPU|state|resetstate[0]~12_combout\);

-- Location: LABCELL_X85_Y7_N18
\CPU|state|resetstate[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|state|resetstate[0]~1_combout\ = ( \CPU|state|resetstate[0]~12_combout\ & ( (\KEY[1]~input_o\ & ((\CPU|state|WideOr3~3_combout\) # (\CPU|state|STATE|next_out\(3)))) ) ) # ( !\CPU|state|resetstate[0]~12_combout\ & ( (\KEY[1]~input_o\ & 
-- (!\CPU|state|STATE|next_out\(3) & \CPU|state|WideOr3~3_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010000000000000101000000000101010101010000010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_KEY[1]~input_o\,
	datac => \CPU|state|STATE|ALT_INV_next_out\(3),
	datad => \CPU|state|ALT_INV_WideOr3~3_combout\,
	dataf => \CPU|state|ALT_INV_resetstate[0]~12_combout\,
	combout => \CPU|state|resetstate[0]~1_combout\);

-- Location: FF_X85_Y7_N20
\CPU|state|STATE|next_out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|state|resetstate[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|state|STATE|next_out\(0));

-- Location: MLABCELL_X87_Y9_N6
\CPU|state|WideOr19~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|state|WideOr19~0_combout\ = ( \CPU|state|STATE|next_out\(3) & ( \CPU|state|STATE|next_out\(1) & ( (\CPU|state|STATE|next_out\(0) & (\CPU|instreg|out\(13) & (!\CPU|instreg|out[15]~DUPLICATE_q\ & \CPU|instreg|out\(14)))) ) ) ) # ( 
-- !\CPU|state|STATE|next_out\(3) & ( \CPU|state|STATE|next_out\(1) & ( (\CPU|state|STATE|next_out\(0) & ((!\CPU|instreg|out\(13) & (\CPU|instreg|out[15]~DUPLICATE_q\ & !\CPU|instreg|out\(14))) # (\CPU|instreg|out\(13) & (!\CPU|instreg|out[15]~DUPLICATE_q\ & 
-- \CPU|instreg|out\(14))))) ) ) ) # ( \CPU|state|STATE|next_out\(3) & ( !\CPU|state|STATE|next_out\(1) & ( (!\CPU|state|STATE|next_out\(0) & (\CPU|instreg|out\(13) & (!\CPU|instreg|out[15]~DUPLICATE_q\ & \CPU|instreg|out\(14)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000010000000000100000100000000000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|state|STATE|ALT_INV_next_out\(0),
	datab => \CPU|instreg|ALT_INV_out\(13),
	datac => \CPU|instreg|ALT_INV_out[15]~DUPLICATE_q\,
	datad => \CPU|instreg|ALT_INV_out\(14),
	datae => \CPU|state|STATE|ALT_INV_next_out\(3),
	dataf => \CPU|state|STATE|ALT_INV_next_out\(1),
	combout => \CPU|state|WideOr19~0_combout\);

-- Location: MLABCELL_X87_Y9_N21
\CPU|state|WideOr19~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|state|WideOr19~1_combout\ = ( !\CPU|instreg|out[11]~DUPLICATE_q\ & ( (\CPU|state|STATE|next_out\(2) & (\CPU|state|WideOr19~0_combout\ & !\CPU|instreg|out\(12))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000000000001010000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|state|STATE|ALT_INV_next_out\(2),
	datac => \CPU|state|ALT_INV_WideOr19~0_combout\,
	datad => \CPU|instreg|ALT_INV_out\(12),
	dataf => \CPU|instreg|ALT_INV_out[11]~DUPLICATE_q\,
	combout => \CPU|state|WideOr19~1_combout\);

-- Location: FF_X85_Y7_N5
\CPU|addrout|out[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|DP|pipeC|out\(0),
	sload => VCC,
	ena => \CPU|state|WideOr19~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|addrout|out[0]~DUPLICATE_q\);

-- Location: FF_X85_Y7_N59
\CPU|addrout|out[8]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|DP|pipeC|out\(8),
	sload => VCC,
	ena => \CPU|state|WideOr19~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|addrout|out[8]~DUPLICATE_q\);

-- Location: LABCELL_X85_Y7_N15
\led~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \led~3_combout\ = ( \CPU|Pc|out\(8) & ( \CPU|Pc|out\(0) & ( (!\CPU|addrout|out[0]~DUPLICATE_q\ & (\CPU|addrout|out[8]~DUPLICATE_q\ & !\CPU|state|WideOr16~0_combout\)) ) ) ) # ( !\CPU|Pc|out\(8) & ( \CPU|Pc|out\(0) & ( (!\CPU|addrout|out[0]~DUPLICATE_q\ & 
-- (\CPU|addrout|out[8]~DUPLICATE_q\ & !\CPU|state|WideOr16~0_combout\)) ) ) ) # ( \CPU|Pc|out\(8) & ( !\CPU|Pc|out\(0) & ( ((!\CPU|addrout|out[0]~DUPLICATE_q\ & \CPU|addrout|out[8]~DUPLICATE_q\)) # (\CPU|state|WideOr16~0_combout\) ) ) ) # ( !\CPU|Pc|out\(8) 
-- & ( !\CPU|Pc|out\(0) & ( (!\CPU|addrout|out[0]~DUPLICATE_q\ & (\CPU|addrout|out[8]~DUPLICATE_q\ & !\CPU|state|WideOr16~0_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000100000001011110010111100100000001000000010000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|addrout|ALT_INV_out[0]~DUPLICATE_q\,
	datab => \CPU|addrout|ALT_INV_out[8]~DUPLICATE_q\,
	datac => \CPU|state|ALT_INV_WideOr16~0_combout\,
	datae => \CPU|Pc|ALT_INV_out\(8),
	dataf => \CPU|Pc|ALT_INV_out\(0),
	combout => \led~3_combout\);

-- Location: LABCELL_X83_Y7_N42
\read_data[15]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \read_data[15]~4_combout\ = ( \switch~3_combout\ & ( \MEM|mem_rtl_0|auto_generated|ram_block1a15\ & ( (!\led~3_combout\) # ((!\led~1_combout\) # ((!\led~0_combout\) # (!\led~2_combout\))) ) ) ) # ( !\switch~3_combout\ & ( 
-- \MEM|mem_rtl_0|auto_generated|ram_block1a15\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_led~3_combout\,
	datab => \ALT_INV_led~1_combout\,
	datac => \ALT_INV_led~0_combout\,
	datad => \ALT_INV_led~2_combout\,
	datae => \ALT_INV_switch~3_combout\,
	dataf => \MEM|mem_rtl_0|auto_generated|ALT_INV_ram_block1a15\,
	combout => \read_data[15]~4_combout\);

-- Location: FF_X83_Y7_N43
\CPU|instreg|out[15]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \read_data[15]~4_combout\,
	ena => \CPU|state|WideOr18~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|instreg|out[15]~DUPLICATE_q\);

-- Location: MLABCELL_X87_Y9_N0
\CPU|state|WideOr1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|state|WideOr1~0_combout\ = ( \CPU|state|STATE|next_out\(3) & ( \CPU|instreg|out[11]~DUPLICATE_q\ & ( (!\CPU|state|STATE|next_out\(0) & (\CPU|instreg|out\(13) & (\CPU|instreg|out\(12) & !\CPU|instreg|out\(14)))) ) ) ) # ( \CPU|state|STATE|next_out\(3) 
-- & ( !\CPU|instreg|out[11]~DUPLICATE_q\ & ( (\CPU|state|STATE|next_out\(0) & (!\CPU|instreg|out\(13) & !\CPU|instreg|out\(12))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010000000100000000000000000000000000001000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|state|STATE|ALT_INV_next_out\(0),
	datab => \CPU|instreg|ALT_INV_out\(13),
	datac => \CPU|instreg|ALT_INV_out\(12),
	datad => \CPU|instreg|ALT_INV_out\(14),
	datae => \CPU|state|STATE|ALT_INV_next_out\(3),
	dataf => \CPU|instreg|ALT_INV_out[11]~DUPLICATE_q\,
	combout => \CPU|state|WideOr1~0_combout\);

-- Location: LABCELL_X81_Y7_N12
\CPU|state|WideOr1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|state|WideOr1~1_combout\ = ( \CPU|state|STATE|next_out\(0) & ( \CPU|instreg|out[13]~DUPLICATE_q\ & ( (!\CPU|instreg|out\(12) & (!\CPU|instreg|out[11]~DUPLICATE_q\ & (!\CPU|instreg|out[14]~DUPLICATE_q\ & !\CPU|state|STATE|next_out\(3)))) ) ) ) # ( 
-- !\CPU|state|STATE|next_out\(0) & ( \CPU|instreg|out[13]~DUPLICATE_q\ & ( ((!\CPU|instreg|out\(12) & !\CPU|instreg|out[14]~DUPLICATE_q\)) # (\CPU|state|STATE|next_out\(3)) ) ) ) # ( \CPU|state|STATE|next_out\(0) & ( !\CPU|instreg|out[13]~DUPLICATE_q\ & ( 
-- (!\CPU|instreg|out\(12) & (!\CPU|instreg|out[11]~DUPLICATE_q\ & (!\CPU|instreg|out[14]~DUPLICATE_q\ & !\CPU|state|STATE|next_out\(3)))) ) ) ) # ( !\CPU|state|STATE|next_out\(0) & ( !\CPU|instreg|out[13]~DUPLICATE_q\ & ( \CPU|state|STATE|next_out\(3) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111100000000000000010100000111111111000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|instreg|ALT_INV_out\(12),
	datab => \CPU|instreg|ALT_INV_out[11]~DUPLICATE_q\,
	datac => \CPU|instreg|ALT_INV_out[14]~DUPLICATE_q\,
	datad => \CPU|state|STATE|ALT_INV_next_out\(3),
	datae => \CPU|state|STATE|ALT_INV_next_out\(0),
	dataf => \CPU|instreg|ALT_INV_out[13]~DUPLICATE_q\,
	combout => \CPU|state|WideOr1~1_combout\);

-- Location: LABCELL_X85_Y7_N9
\CPU|state|WideOr1~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|state|WideOr1~2_combout\ = ( \CPU|instreg|out\(12) & ( \CPU|instreg|out[11]~DUPLICATE_q\ & ( (!\CPU|state|STATE|next_out\(3)) # (\CPU|state|STATE|next_out\(0)) ) ) ) # ( !\CPU|instreg|out\(12) & ( \CPU|instreg|out[11]~DUPLICATE_q\ & ( 
-- (!\CPU|state|STATE|next_out\(3)) # (\CPU|state|STATE|next_out\(0)) ) ) ) # ( \CPU|instreg|out\(12) & ( !\CPU|instreg|out[11]~DUPLICATE_q\ & ( (!\CPU|state|STATE|next_out\(3)) # (\CPU|state|STATE|next_out\(0)) ) ) ) # ( !\CPU|instreg|out\(12) & ( 
-- !\CPU|instreg|out[11]~DUPLICATE_q\ & ( (!\CPU|state|STATE|next_out\(0) & (((!\CPU|state|STATE|next_out\(3))))) # (\CPU|state|STATE|next_out\(0) & ((!\CPU|instreg|out[14]~DUPLICATE_q\) # ((!\CPU|instreg|out[13]~DUPLICATE_q\) # 
-- (\CPU|state|STATE|next_out\(3))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111001010101111111110101010111111111010101011111111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|state|STATE|ALT_INV_next_out\(0),
	datab => \CPU|instreg|ALT_INV_out[14]~DUPLICATE_q\,
	datac => \CPU|instreg|ALT_INV_out[13]~DUPLICATE_q\,
	datad => \CPU|state|STATE|ALT_INV_next_out\(3),
	datae => \CPU|instreg|ALT_INV_out\(12),
	dataf => \CPU|instreg|ALT_INV_out[11]~DUPLICATE_q\,
	combout => \CPU|state|WideOr1~2_combout\);

-- Location: MLABCELL_X87_Y7_N3
\CPU|state|WideOr1~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|state|WideOr1~5_combout\ = ( !\CPU|instreg|out[15]~DUPLICATE_q\ & ( (!\CPU|state|STATE|next_out\(2) & ((((!\CPU|state|STATE|next_out\(3) & \CPU|state|STATE|next_out\(0)))))) # (\CPU|state|STATE|next_out\(2) & (((!\CPU|state|WideOr1~2_combout\)))) ) ) 
-- # ( \CPU|instreg|out[15]~DUPLICATE_q\ & ( (!\CPU|state|STATE|next_out\(2) & ((((!\CPU|state|STATE|next_out\(3) & \CPU|state|STATE|next_out\(0)))) # (\CPU|state|WideOr1~0_combout\))) # (\CPU|state|STATE|next_out\(2) & (((\CPU|state|WideOr1~1_combout\)))) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0101000001010000001001110010011111111010010100001010111100100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|state|STATE|ALT_INV_next_out\(2),
	datab => \CPU|state|ALT_INV_WideOr1~0_combout\,
	datac => \CPU|state|ALT_INV_WideOr1~1_combout\,
	datad => \CPU|state|STATE|ALT_INV_next_out\(3),
	datae => \CPU|instreg|ALT_INV_out[15]~DUPLICATE_q\,
	dataf => \CPU|state|STATE|ALT_INV_next_out\(0),
	datag => \CPU|state|ALT_INV_WideOr1~2_combout\,
	combout => \CPU|state|WideOr1~5_combout\);

-- Location: LABCELL_X81_Y9_N12
\CPU|state|WideOr1~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|state|WideOr1~4_combout\ = ( \CPU|instreg|out\(12) & ( (!\CPU|instreg|out\(13)) # ((\CPU|state|STATE|next_out\(0) & \CPU|instreg|out[11]~DUPLICATE_q\)) ) ) # ( !\CPU|instreg|out\(12) & ( (\CPU|instreg|out[11]~DUPLICATE_q\ & !\CPU|instreg|out\(13)) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000001100000011000011110001111100011111000111110001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|state|STATE|ALT_INV_next_out\(0),
	datab => \CPU|instreg|ALT_INV_out[11]~DUPLICATE_q\,
	datac => \CPU|instreg|ALT_INV_out\(13),
	dataf => \CPU|instreg|ALT_INV_out\(12),
	combout => \CPU|state|WideOr1~4_combout\);

-- Location: LABCELL_X81_Y9_N15
\CPU|state|resetstate[2]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|state|resetstate[2]~4_combout\ = ( \CPU|instreg|out\(14) & ( (!\CPU|state|STATE|next_out\(0) & (!\CPU|instreg|out[11]~DUPLICATE_q\ & !\CPU|instreg|out\(13))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010100000000000001010000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|state|STATE|ALT_INV_next_out\(0),
	datac => \CPU|instreg|ALT_INV_out[11]~DUPLICATE_q\,
	datad => \CPU|instreg|ALT_INV_out\(13),
	dataf => \CPU|instreg|ALT_INV_out\(14),
	combout => \CPU|state|resetstate[2]~4_combout\);

-- Location: MLABCELL_X84_Y9_N36
\CPU|state|resetstate[2]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|state|resetstate[2]~3_combout\ = (!\CPU|state|STATE|next_out\(0) & (\CPU|instreg|out\(12) & (!\CPU|state|STATE|next_out\(2) & \CPU|instreg|out[13]~DUPLICATE_q\))) # (\CPU|state|STATE|next_out\(0) & (!\CPU|instreg|out\(12) & 
-- (\CPU|state|STATE|next_out\(2) & !\CPU|instreg|out[13]~DUPLICATE_q\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000100000000001000010000000000100001000000000010000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|state|STATE|ALT_INV_next_out\(0),
	datab => \CPU|instreg|ALT_INV_out\(12),
	datac => \CPU|state|STATE|ALT_INV_next_out\(2),
	datad => \CPU|instreg|ALT_INV_out[13]~DUPLICATE_q\,
	combout => \CPU|state|resetstate[2]~3_combout\);

-- Location: LABCELL_X81_Y9_N18
\CPU|state|resetstate[2]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|state|resetstate[2]~5_combout\ = ( \CPU|state|WideOr12~0_combout\ & ( \CPU|state|resetstate[2]~3_combout\ & ( ((!\CPU|instreg|out\(14) & ((!\CPU|state|WideOr1~4_combout\) # (\CPU|state|WideOr7~0_combout\)))) # (\CPU|state|resetstate[2]~4_combout\) ) 
-- ) ) # ( !\CPU|state|WideOr12~0_combout\ & ( \CPU|state|resetstate[2]~3_combout\ & ( (!\CPU|instreg|out\(14) & \CPU|state|WideOr7~0_combout\) ) ) ) # ( \CPU|state|WideOr12~0_combout\ & ( !\CPU|state|resetstate[2]~3_combout\ & ( ((!\CPU|instreg|out\(14) & 
-- !\CPU|state|WideOr1~4_combout\)) # (\CPU|state|resetstate[2]~4_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000100010001111111100001010000010101000101011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|instreg|ALT_INV_out\(14),
	datab => \CPU|state|ALT_INV_WideOr1~4_combout\,
	datac => \CPU|state|ALT_INV_WideOr7~0_combout\,
	datad => \CPU|state|ALT_INV_resetstate[2]~4_combout\,
	datae => \CPU|state|ALT_INV_WideOr12~0_combout\,
	dataf => \CPU|state|ALT_INV_resetstate[2]~3_combout\,
	combout => \CPU|state|resetstate[2]~5_combout\);

-- Location: MLABCELL_X82_Y7_N36
\CPU|state|WideOr1~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|state|WideOr1~3_combout\ = ( \CPU|instreg|out[11]~DUPLICATE_q\ ) # ( !\CPU|instreg|out[11]~DUPLICATE_q\ & ( ((\CPU|state|STATE|next_out\(3) & \CPU|state|STATE|next_out\(0))) # (\CPU|instreg|out\(12)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100111111001100110011111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|instreg|ALT_INV_out\(12),
	datac => \CPU|state|STATE|ALT_INV_next_out\(3),
	datad => \CPU|state|STATE|ALT_INV_next_out\(0),
	dataf => \CPU|instreg|ALT_INV_out[11]~DUPLICATE_q\,
	combout => \CPU|state|WideOr1~3_combout\);

-- Location: LABCELL_X85_Y7_N36
\CPU|state|resetstate[2]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|state|resetstate[2]~8_combout\ = ( !\CPU|state|STATE|next_out\(1) & ( (\KEY[1]~input_o\ & ((!\CPU|instreg|out[15]~DUPLICATE_q\ & (!\CPU|state|WideOr1~3_combout\ & ((\switch~0_combout\)))) # (\CPU|instreg|out[15]~DUPLICATE_q\ & 
-- (((!\CPU|state|WideOr1~3_combout\ & \switch~0_combout\)) # (\CPU|state|resetstate[2]~5_combout\))))) ) ) # ( \CPU|state|STATE|next_out\(1) & ( ((\KEY[1]~input_o\ & (\CPU|state|WideOr1~5_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000000000010001000000110000001100110000001100010000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|instreg|ALT_INV_out[15]~DUPLICATE_q\,
	datab => \ALT_INV_KEY[1]~input_o\,
	datac => \CPU|state|ALT_INV_WideOr1~5_combout\,
	datad => \CPU|state|ALT_INV_resetstate[2]~5_combout\,
	datae => \CPU|state|STATE|ALT_INV_next_out\(1),
	dataf => \ALT_INV_switch~0_combout\,
	datag => \CPU|state|ALT_INV_WideOr1~3_combout\,
	combout => \CPU|state|resetstate[2]~8_combout\);

-- Location: FF_X85_Y7_N38
\CPU|state|STATE|next_out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|state|resetstate[2]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|state|STATE|next_out\(2));

-- Location: LABCELL_X83_Y5_N33
\CPU|state|WideOr2~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|state|WideOr2~7_combout\ = ( !\CPU|instreg|out[11]~DUPLICATE_q\ & ( (!\CPU|state|STATE|next_out\(2) & (!\CPU|instreg|out\(12) & (\CPU|instreg|out[15]~DUPLICATE_q\ & !\CPU|instreg|out[13]~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000000000000000000000000000001000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|state|STATE|ALT_INV_next_out\(2),
	datab => \CPU|instreg|ALT_INV_out\(12),
	datac => \CPU|instreg|ALT_INV_out[15]~DUPLICATE_q\,
	datad => \CPU|instreg|ALT_INV_out[13]~DUPLICATE_q\,
	datae => \CPU|instreg|ALT_INV_out[11]~DUPLICATE_q\,
	combout => \CPU|state|WideOr2~7_combout\);

-- Location: LABCELL_X83_Y5_N36
\CPU|state|WideOr2~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|state|WideOr2~12_combout\ = ( !\CPU|instreg|out[11]~DUPLICATE_q\ & ( !\CPU|instreg|out[13]~DUPLICATE_q\ & ( (!\CPU|instreg|out[14]~DUPLICATE_q\ & (!\CPU|instreg|out\(12) & (\CPU|state|STATE|next_out\(2) & \CPU|instreg|out[15]~DUPLICATE_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|instreg|ALT_INV_out[14]~DUPLICATE_q\,
	datab => \CPU|instreg|ALT_INV_out\(12),
	datac => \CPU|state|STATE|ALT_INV_next_out\(2),
	datad => \CPU|instreg|ALT_INV_out[15]~DUPLICATE_q\,
	datae => \CPU|instreg|ALT_INV_out[11]~DUPLICATE_q\,
	dataf => \CPU|instreg|ALT_INV_out[13]~DUPLICATE_q\,
	combout => \CPU|state|WideOr2~12_combout\);

-- Location: MLABCELL_X84_Y5_N12
\CPU|state|WideOr2~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|state|WideOr2~16_combout\ = ( \CPU|instreg|out[13]~DUPLICATE_q\ & ( \CPU|state|STATE|next_out\(2) & ( (\CPU|instreg|out[15]~DUPLICATE_q\ & (!\CPU|instreg|out[14]~DUPLICATE_q\ & ((!\CPU|instreg|out\(12)) # (\CPU|instreg|out[11]~DUPLICATE_q\)))) ) ) ) 
-- # ( !\CPU|instreg|out[13]~DUPLICATE_q\ & ( \CPU|state|STATE|next_out\(2) & ( (!\CPU|instreg|out\(12) & (\CPU|instreg|out[15]~DUPLICATE_q\ & !\CPU|instreg|out[11]~DUPLICATE_q\)) ) ) ) # ( \CPU|instreg|out[13]~DUPLICATE_q\ & ( !\CPU|state|STATE|next_out\(2) 
-- ) ) # ( !\CPU|instreg|out[13]~DUPLICATE_q\ & ( !\CPU|state|STATE|next_out\(2) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100100000001000000010001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|instreg|ALT_INV_out\(12),
	datab => \CPU|instreg|ALT_INV_out[15]~DUPLICATE_q\,
	datac => \CPU|instreg|ALT_INV_out[11]~DUPLICATE_q\,
	datad => \CPU|instreg|ALT_INV_out[14]~DUPLICATE_q\,
	datae => \CPU|instreg|ALT_INV_out[13]~DUPLICATE_q\,
	dataf => \CPU|state|STATE|ALT_INV_next_out\(2),
	combout => \CPU|state|WideOr2~16_combout\);

-- Location: MLABCELL_X84_Y5_N48
\CPU|state|WideOr2~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|state|WideOr2~14_combout\ = ( \CPU|instreg|out[13]~DUPLICATE_q\ & ( \CPU|instreg|out[11]~DUPLICATE_q\ & ( (!\CPU|state|STATE|next_out\(2)) # ((!\CPU|instreg|out\(12) & (\CPU|instreg|out[15]~DUPLICATE_q\ & !\CPU|instreg|out[14]~DUPLICATE_q\))) ) ) ) # 
-- ( !\CPU|instreg|out[13]~DUPLICATE_q\ & ( \CPU|instreg|out[11]~DUPLICATE_q\ & ( !\CPU|state|STATE|next_out\(2) ) ) ) # ( \CPU|instreg|out[13]~DUPLICATE_q\ & ( !\CPU|instreg|out[11]~DUPLICATE_q\ & ( (!\CPU|state|STATE|next_out\(2)) # 
-- ((!\CPU|instreg|out[15]~DUPLICATE_q\ & (!\CPU|instreg|out\(12) & \CPU|instreg|out[14]~DUPLICATE_q\)) # (\CPU|instreg|out[15]~DUPLICATE_q\ & ((!\CPU|instreg|out[14]~DUPLICATE_q\)))) ) ) ) # ( !\CPU|instreg|out[13]~DUPLICATE_q\ & ( 
-- !\CPU|instreg|out[11]~DUPLICATE_q\ & ( (!\CPU|state|STATE|next_out\(2)) # ((!\CPU|instreg|out\(12) & (\CPU|instreg|out[15]~DUPLICATE_q\ & !\CPU|instreg|out[14]~DUPLICATE_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111001011110000111100111111100011110000111100001111001011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|instreg|ALT_INV_out\(12),
	datab => \CPU|instreg|ALT_INV_out[15]~DUPLICATE_q\,
	datac => \CPU|state|STATE|ALT_INV_next_out\(2),
	datad => \CPU|instreg|ALT_INV_out[14]~DUPLICATE_q\,
	datae => \CPU|instreg|ALT_INV_out[13]~DUPLICATE_q\,
	dataf => \CPU|instreg|ALT_INV_out[11]~DUPLICATE_q\,
	combout => \CPU|state|WideOr2~14_combout\);

-- Location: MLABCELL_X84_Y5_N30
\CPU|state|WideOr2~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|state|WideOr2~13_combout\ = ( \CPU|instreg|out[13]~DUPLICATE_q\ & ( \CPU|state|STATE|next_out\(2) & ( (!\CPU|instreg|out[11]~DUPLICATE_q\ & (!\CPU|instreg|out[14]~DUPLICATE_q\ & (!\CPU|instreg|out\(12) & \CPU|instreg|out[15]~DUPLICATE_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|instreg|ALT_INV_out[11]~DUPLICATE_q\,
	datab => \CPU|instreg|ALT_INV_out[14]~DUPLICATE_q\,
	datac => \CPU|instreg|ALT_INV_out\(12),
	datad => \CPU|instreg|ALT_INV_out[15]~DUPLICATE_q\,
	datae => \CPU|instreg|ALT_INV_out[13]~DUPLICATE_q\,
	dataf => \CPU|state|STATE|ALT_INV_next_out\(2),
	combout => \CPU|state|WideOr2~13_combout\);

-- Location: MLABCELL_X84_Y5_N54
\CPU|state|WideOr2~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|state|WideOr2~15_combout\ = ( !\CPU|instreg|out[13]~DUPLICATE_q\ & ( \CPU|instreg|out[14]~DUPLICATE_q\ & ( (\CPU|state|STATE|next_out\(2) & (!\CPU|instreg|out[11]~DUPLICATE_q\ & \CPU|instreg|out[15]~DUPLICATE_q\)) ) ) ) # ( 
-- \CPU|instreg|out[13]~DUPLICATE_q\ & ( !\CPU|instreg|out[14]~DUPLICATE_q\ & ( (\CPU|state|STATE|next_out\(2) & (\CPU|instreg|out\(12) & (\CPU|instreg|out[11]~DUPLICATE_q\ & \CPU|instreg|out[15]~DUPLICATE_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000100000000010100000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|state|STATE|ALT_INV_next_out\(2),
	datab => \CPU|instreg|ALT_INV_out\(12),
	datac => \CPU|instreg|ALT_INV_out[11]~DUPLICATE_q\,
	datad => \CPU|instreg|ALT_INV_out[15]~DUPLICATE_q\,
	datae => \CPU|instreg|ALT_INV_out[13]~DUPLICATE_q\,
	dataf => \CPU|instreg|ALT_INV_out[14]~DUPLICATE_q\,
	combout => \CPU|state|WideOr2~15_combout\);

-- Location: MLABCELL_X84_Y5_N6
\CPU|state|WideOr2~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|state|WideOr2~8_combout\ = ( !\CPU|state|STATE|next_out\(0) & ( (!\CPU|state|STATE|next_out\(3) & ((!\CPU|state|STATE|next_out\(1) & (((\CPU|state|WideOr2~15_combout\)))) # (\CPU|state|STATE|next_out\(1) & (\CPU|state|WideOr2~16_combout\)))) # 
-- (\CPU|state|STATE|next_out\(3) & ((((\CPU|state|STATE|next_out\(1)))))) ) ) # ( \CPU|state|STATE|next_out\(0) & ( (!\CPU|state|STATE|next_out\(3) & (((!\CPU|state|STATE|next_out\(1) & (\CPU|state|WideOr2~14_combout\)) # (\CPU|state|STATE|next_out\(1) & 
-- ((\CPU|state|WideOr2~13_combout\)))))) # (\CPU|state|STATE|next_out\(3) & ((((\CPU|state|STATE|next_out\(1)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000101001110111000010100101010100001010011101110000101011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|state|STATE|ALT_INV_next_out\(3),
	datab => \CPU|state|ALT_INV_WideOr2~16_combout\,
	datac => \CPU|state|ALT_INV_WideOr2~14_combout\,
	datad => \CPU|state|STATE|ALT_INV_next_out\(1),
	datae => \CPU|state|STATE|ALT_INV_next_out\(0),
	dataf => \CPU|state|ALT_INV_WideOr2~13_combout\,
	datag => \CPU|state|ALT_INV_WideOr2~15_combout\,
	combout => \CPU|state|WideOr2~8_combout\);

-- Location: MLABCELL_X84_Y5_N24
\CPU|state|WideOr2~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|state|WideOr2~6_combout\ = ( \CPU|instreg|out[13]~DUPLICATE_q\ & ( \CPU|instreg|out[14]~DUPLICATE_q\ & ( \CPU|state|STATE|next_out\(2) ) ) ) # ( !\CPU|instreg|out[13]~DUPLICATE_q\ & ( \CPU|instreg|out[14]~DUPLICATE_q\ & ( 
-- \CPU|state|STATE|next_out\(2) ) ) ) # ( \CPU|instreg|out[13]~DUPLICATE_q\ & ( !\CPU|instreg|out[14]~DUPLICATE_q\ & ( ((\CPU|instreg|out[11]~DUPLICATE_q\ & (\CPU|instreg|out\(12) & \CPU|instreg|out[15]~DUPLICATE_q\))) # (\CPU|state|STATE|next_out\(2)) ) ) 
-- ) # ( !\CPU|instreg|out[13]~DUPLICATE_q\ & ( !\CPU|instreg|out[14]~DUPLICATE_q\ & ( \CPU|state|STATE|next_out\(2) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110001111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|instreg|ALT_INV_out[11]~DUPLICATE_q\,
	datab => \CPU|instreg|ALT_INV_out\(12),
	datac => \CPU|state|STATE|ALT_INV_next_out\(2),
	datad => \CPU|instreg|ALT_INV_out[15]~DUPLICATE_q\,
	datae => \CPU|instreg|ALT_INV_out[13]~DUPLICATE_q\,
	dataf => \CPU|instreg|ALT_INV_out[14]~DUPLICATE_q\,
	combout => \CPU|state|WideOr2~6_combout\);

-- Location: MLABCELL_X84_Y5_N36
\CPU|state|WideOr2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|state|WideOr2~1_combout\ = ( !\CPU|state|STATE|next_out\(0) & ( (!\CPU|state|STATE|next_out\(3) & ((((\CPU|state|WideOr2~8_combout\))))) # (\CPU|state|STATE|next_out\(3) & (((!\CPU|state|WideOr2~8_combout\ & (\CPU|state|WideOr3~6_combout\)) # 
-- (\CPU|state|WideOr2~8_combout\ & ((\CPU|state|WideOr2~6_combout\)))))) ) ) # ( \CPU|state|STATE|next_out\(0) & ( (!\CPU|state|STATE|next_out\(3) & ((((\CPU|state|WideOr2~8_combout\))))) # (\CPU|state|STATE|next_out\(3) & ((!\CPU|state|WideOr2~8_combout\ & 
-- (((\CPU|state|WideOr2~12_combout\)))) # (\CPU|state|WideOr2~8_combout\ & (\CPU|state|WideOr2~7_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000010110101010000001011011101100000101111111110000010110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|state|STATE|ALT_INV_next_out\(3),
	datab => \CPU|state|ALT_INV_WideOr2~7_combout\,
	datac => \CPU|state|ALT_INV_WideOr2~12_combout\,
	datad => \CPU|state|ALT_INV_WideOr2~8_combout\,
	datae => \CPU|state|STATE|ALT_INV_next_out\(0),
	dataf => \CPU|state|ALT_INV_WideOr2~6_combout\,
	datag => \CPU|state|ALT_INV_WideOr3~6_combout\,
	combout => \CPU|state|WideOr2~1_combout\);

-- Location: LABCELL_X85_Y7_N21
\CPU|state|resetstate[1]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|state|resetstate[1]~2_combout\ = ( \CPU|state|WideOr2~1_combout\ & ( \KEY[1]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_KEY[1]~input_o\,
	dataf => \CPU|state|ALT_INV_WideOr2~1_combout\,
	combout => \CPU|state|resetstate[1]~2_combout\);

-- Location: FF_X84_Y7_N23
\CPU|state|STATE|next_out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|state|resetstate[1]~2_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|state|STATE|next_out\(1));

-- Location: MLABCELL_X87_Y9_N12
\CPU|state|resetstate[3]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|state|resetstate[3]~7_combout\ = ( \CPU|state|STATE|next_out\(3) & ( \CPU|state|STATE|next_out\(2) & ( (!\CPU|instreg|out[15]~DUPLICATE_q\ & (\CPU|instreg|out\(13) & (!\CPU|instreg|out\(12) & \CPU|instreg|out\(14)))) ) ) ) # ( 
-- !\CPU|state|STATE|next_out\(3) & ( \CPU|state|STATE|next_out\(2) & ( (\CPU|instreg|out[15]~DUPLICATE_q\ & (!\CPU|instreg|out\(13) & (\CPU|instreg|out\(12) & \CPU|instreg|out\(14)))) ) ) ) # ( \CPU|state|STATE|next_out\(3) & ( 
-- !\CPU|state|STATE|next_out\(2) & ( (\CPU|instreg|out[15]~DUPLICATE_q\ & (\CPU|instreg|out\(13) & (\CPU|instreg|out\(12) & !\CPU|instreg|out\(14)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000010000000000000000000001000000000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|instreg|ALT_INV_out[15]~DUPLICATE_q\,
	datab => \CPU|instreg|ALT_INV_out\(13),
	datac => \CPU|instreg|ALT_INV_out\(12),
	datad => \CPU|instreg|ALT_INV_out\(14),
	datae => \CPU|state|STATE|ALT_INV_next_out\(3),
	dataf => \CPU|state|STATE|ALT_INV_next_out\(2),
	combout => \CPU|state|resetstate[3]~7_combout\);

-- Location: MLABCELL_X82_Y10_N39
\CPU|state|WideOr0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|state|WideOr0~1_combout\ = ( !\CPU|instreg|out\(12) & ( \CPU|state|STATE|next_out\(3) & ( (!\CPU|instreg|out[11]~DUPLICATE_q\ & (!\CPU|instreg|out[13]~DUPLICATE_q\ & \CPU|instreg|out[15]~DUPLICATE_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000100010000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|instreg|ALT_INV_out[11]~DUPLICATE_q\,
	datab => \CPU|instreg|ALT_INV_out[13]~DUPLICATE_q\,
	datad => \CPU|instreg|ALT_INV_out[15]~DUPLICATE_q\,
	datae => \CPU|instreg|ALT_INV_out\(12),
	dataf => \CPU|state|STATE|ALT_INV_next_out\(3),
	combout => \CPU|state|WideOr0~1_combout\);

-- Location: MLABCELL_X82_Y10_N54
\CPU|state|WideOr0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|state|WideOr0~4_combout\ = ( \CPU|instreg|out[11]~DUPLICATE_q\ & ( \CPU|instreg|out[13]~DUPLICATE_q\ & ( (!\CPU|state|STATE|next_out\(3) & ((!\CPU|instreg|out[15]~DUPLICATE_q\) # (\CPU|instreg|out\(14)))) ) ) ) # ( !\CPU|instreg|out[11]~DUPLICATE_q\ 
-- & ( \CPU|instreg|out[13]~DUPLICATE_q\ & ( (!\CPU|state|STATE|next_out\(3) & (((!\CPU|instreg|out[15]~DUPLICATE_q\) # (!\CPU|instreg|out\(12))) # (\CPU|instreg|out\(14)))) ) ) ) # ( \CPU|instreg|out[11]~DUPLICATE_q\ & ( !\CPU|instreg|out[13]~DUPLICATE_q\ & 
-- ( !\CPU|state|STATE|next_out\(3) ) ) ) # ( !\CPU|instreg|out[11]~DUPLICATE_q\ & ( !\CPU|instreg|out[13]~DUPLICATE_q\ & ( (!\CPU|state|STATE|next_out\(3) & ((!\CPU|instreg|out[15]~DUPLICATE_q\) # (\CPU|instreg|out\(12)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000011001100110011001100110011001100110001001100010011000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|instreg|ALT_INV_out\(14),
	datab => \CPU|state|STATE|ALT_INV_next_out\(3),
	datac => \CPU|instreg|ALT_INV_out[15]~DUPLICATE_q\,
	datad => \CPU|instreg|ALT_INV_out\(12),
	datae => \CPU|instreg|ALT_INV_out[11]~DUPLICATE_q\,
	dataf => \CPU|instreg|ALT_INV_out[13]~DUPLICATE_q\,
	combout => \CPU|state|WideOr0~4_combout\);

-- Location: LABCELL_X81_Y10_N3
\CPU|state|WideOr0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|state|WideOr0~3_combout\ = ( \CPU|instreg|out[13]~DUPLICATE_q\ & ( !\CPU|state|STATE|next_out\(3) & ( (!\CPU|instreg|out[11]~DUPLICATE_q\ & (!\CPU|instreg|out\(12) & (!\CPU|instreg|out[15]~DUPLICATE_q\ $ (!\CPU|instreg|out\(14))))) ) ) ) # ( 
-- !\CPU|instreg|out[13]~DUPLICATE_q\ & ( !\CPU|state|STATE|next_out\(3) & ( (\CPU|instreg|out[15]~DUPLICATE_q\ & (!\CPU|instreg|out[11]~DUPLICATE_q\ & (!\CPU|instreg|out\(12) & !\CPU|instreg|out\(14)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000000000000010000001000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|instreg|ALT_INV_out[15]~DUPLICATE_q\,
	datab => \CPU|instreg|ALT_INV_out[11]~DUPLICATE_q\,
	datac => \CPU|instreg|ALT_INV_out\(12),
	datad => \CPU|instreg|ALT_INV_out\(14),
	datae => \CPU|instreg|ALT_INV_out[13]~DUPLICATE_q\,
	dataf => \CPU|state|STATE|ALT_INV_next_out\(3),
	combout => \CPU|state|WideOr0~3_combout\);

-- Location: MLABCELL_X82_Y10_N6
\CPU|state|WideOr0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|state|WideOr0~0_combout\ = ( \CPU|instreg|out[11]~DUPLICATE_q\ & ( \CPU|state|STATE|next_out\(3) & ( (\CPU|instreg|out[15]~DUPLICATE_q\ & (\CPU|instreg|out[13]~DUPLICATE_q\ & (!\CPU|instreg|out\(14) & \CPU|instreg|out\(12)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|instreg|ALT_INV_out[15]~DUPLICATE_q\,
	datab => \CPU|instreg|ALT_INV_out[13]~DUPLICATE_q\,
	datac => \CPU|instreg|ALT_INV_out\(14),
	datad => \CPU|instreg|ALT_INV_out\(12),
	datae => \CPU|instreg|ALT_INV_out[11]~DUPLICATE_q\,
	dataf => \CPU|state|STATE|ALT_INV_next_out\(3),
	combout => \CPU|state|WideOr0~0_combout\);

-- Location: MLABCELL_X82_Y10_N18
\CPU|state|WideOr0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|state|WideOr0~2_combout\ = ( \CPU|state|STATE|next_out\(0) & ( \CPU|state|WideOr0~0_combout\ & ( (!\CPU|state|STATE|next_out\(2) & (\CPU|state|WideOr0~1_combout\)) # (\CPU|state|STATE|next_out\(2) & ((\CPU|state|WideOr0~3_combout\))) ) ) ) # ( 
-- !\CPU|state|STATE|next_out\(0) & ( \CPU|state|WideOr0~0_combout\ & ( (!\CPU|state|STATE|next_out\(2)) # (!\CPU|state|WideOr0~4_combout\) ) ) ) # ( \CPU|state|STATE|next_out\(0) & ( !\CPU|state|WideOr0~0_combout\ & ( (!\CPU|state|STATE|next_out\(2) & 
-- (\CPU|state|WideOr0~1_combout\)) # (\CPU|state|STATE|next_out\(2) & ((\CPU|state|WideOr0~3_combout\))) ) ) ) # ( !\CPU|state|STATE|next_out\(0) & ( !\CPU|state|WideOr0~0_combout\ & ( (\CPU|state|STATE|next_out\(2) & !\CPU|state|WideOr0~4_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000001000100111011111111010111110100010001001110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|state|STATE|ALT_INV_next_out\(2),
	datab => \CPU|state|ALT_INV_WideOr0~1_combout\,
	datac => \CPU|state|ALT_INV_WideOr0~4_combout\,
	datad => \CPU|state|ALT_INV_WideOr0~3_combout\,
	datae => \CPU|state|STATE|ALT_INV_next_out\(0),
	dataf => \CPU|state|ALT_INV_WideOr0~0_combout\,
	combout => \CPU|state|WideOr0~2_combout\);

-- Location: MLABCELL_X84_Y7_N36
\CPU|state|resetstate[3]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|state|resetstate[3]~6_combout\ = ( \CPU|state|WideOr0~2_combout\ & ( \CPU|instreg|out[11]~DUPLICATE_q\ & ( (\CPU|state|STATE|next_out\(1) & \KEY[1]~input_o\) ) ) ) # ( \CPU|state|WideOr0~2_combout\ & ( !\CPU|instreg|out[11]~DUPLICATE_q\ & ( 
-- (\KEY[1]~input_o\ & (((\CPU|state|resetstate[3]~7_combout\ & !\CPU|state|STATE|next_out\(0))) # (\CPU|state|STATE|next_out\(1)))) ) ) ) # ( !\CPU|state|WideOr0~2_combout\ & ( !\CPU|instreg|out[11]~DUPLICATE_q\ & ( (!\CPU|state|STATE|next_out\(1) & 
-- (\CPU|state|resetstate[3]~7_combout\ & (\KEY[1]~input_o\ & !\CPU|state|STATE|next_out\(0)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000000000001110000010100000000000000000000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|state|STATE|ALT_INV_next_out\(1),
	datab => \CPU|state|ALT_INV_resetstate[3]~7_combout\,
	datac => \ALT_INV_KEY[1]~input_o\,
	datad => \CPU|state|STATE|ALT_INV_next_out\(0),
	datae => \CPU|state|ALT_INV_WideOr0~2_combout\,
	dataf => \CPU|instreg|ALT_INV_out[11]~DUPLICATE_q\,
	combout => \CPU|state|resetstate[3]~6_combout\);

-- Location: FF_X84_Y7_N38
\CPU|state|STATE|next_out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|state|resetstate[3]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|state|STATE|next_out\(3));

-- Location: MLABCELL_X82_Y7_N24
\CPU|DP|pipeC|out[0]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|pipeC|out[0]~feeder_combout\ = ( \CPU|DP|logic|Add0~5_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|DP|logic|ALT_INV_Add0~5_sumout\,
	combout => \CPU|DP|pipeC|out[0]~feeder_combout\);

-- Location: MLABCELL_X82_Y7_N21
\CPU|DP|logic|Mux15~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|logic|Mux15~0_combout\ = ( \CPU|DP|logic|Mux0~0_combout\ & ( (!\CPU|DP|Bin[0]~17_combout\ & (\CPU|instreg|out[11]~DUPLICATE_q\)) # (\CPU|DP|Bin[0]~17_combout\ & ((\CPU|DP|pipeA|out\(0)))) ) ) # ( !\CPU|DP|logic|Mux0~0_combout\ & ( 
-- (\CPU|instreg|out[11]~DUPLICATE_q\ & !\CPU|DP|Bin[0]~17_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000010100000101000001010000010111110101000001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|instreg|ALT_INV_out[11]~DUPLICATE_q\,
	datac => \CPU|DP|ALT_INV_Bin[0]~17_combout\,
	datad => \CPU|DP|pipeA|ALT_INV_out\(0),
	dataf => \CPU|DP|logic|ALT_INV_Mux0~0_combout\,
	combout => \CPU|DP|logic|Mux15~0_combout\);

-- Location: FF_X82_Y7_N26
\CPU|DP|pipeC|out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|DP|pipeC|out[0]~feeder_combout\,
	asdata => \CPU|DP|logic|Mux15~0_combout\,
	sload => \CPU|instreg|out\(12),
	ena => \CPU|state|WideOr12~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|pipeC|out\(0));

-- Location: MLABCELL_X84_Y9_N27
\led~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \led~4_combout\ = ( \CPU|state|Decoder0~1_combout\ & ( (\CPU|state|Decoder0~2_combout\ & ((!\CPU|state|WideOr16~0_combout\ & (!\CPU|addrout|out\(6))) # (\CPU|state|WideOr16~0_combout\ & ((!\CPU|Pc|out\(6)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000100011001000000010001100100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|addrout|ALT_INV_out\(6),
	datab => \CPU|state|ALT_INV_Decoder0~2_combout\,
	datac => \CPU|state|ALT_INV_WideOr16~0_combout\,
	datad => \CPU|Pc|ALT_INV_out\(6),
	dataf => \CPU|state|ALT_INV_Decoder0~1_combout\,
	combout => \led~4_combout\);

-- Location: MLABCELL_X84_Y9_N57
led : cyclonev_lcell_comb
-- Equation(s):
-- \led~combout\ = ( \led~1_combout\ & ( \led~3_combout\ & ( (\led~2_combout\ & (\led~0_combout\ & \led~4_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_led~2_combout\,
	datac => \ALT_INV_led~0_combout\,
	datad => \ALT_INV_led~4_combout\,
	datae => \ALT_INV_led~1_combout\,
	dataf => \ALT_INV_led~3_combout\,
	combout => \led~combout\);

-- Location: FF_X84_Y7_N47
\ledout|out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|DP|pipeC|out\(0),
	sload => VCC,
	ena => \led~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ledout|out\(0));

-- Location: FF_X84_Y7_N35
\ledout|out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|DP|pipeC|out\(1),
	sload => VCC,
	ena => \led~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ledout|out\(1));

-- Location: LABCELL_X83_Y5_N15
\ledout|out[2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \ledout|out[2]~feeder_combout\ = ( \CPU|DP|pipeC|out\(2) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|DP|pipeC|ALT_INV_out\(2),
	combout => \ledout|out[2]~feeder_combout\);

-- Location: FF_X83_Y5_N17
\ledout|out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \ledout|out[2]~feeder_combout\,
	ena => \led~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ledout|out\(2));

-- Location: LABCELL_X83_Y5_N24
\ledout|out[3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \ledout|out[3]~feeder_combout\ = ( \CPU|DP|pipeC|out\(3) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|DP|pipeC|ALT_INV_out\(3),
	combout => \ledout|out[3]~feeder_combout\);

-- Location: FF_X83_Y5_N25
\ledout|out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \ledout|out[3]~feeder_combout\,
	ena => \led~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ledout|out\(3));

-- Location: LABCELL_X83_Y5_N27
\ledout|out[4]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \ledout|out[4]~feeder_combout\ = ( \CPU|DP|pipeC|out\(4) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|DP|pipeC|ALT_INV_out\(4),
	combout => \ledout|out[4]~feeder_combout\);

-- Location: FF_X83_Y5_N28
\ledout|out[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \ledout|out[4]~feeder_combout\,
	ena => \led~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ledout|out\(4));

-- Location: FF_X84_Y5_N4
\ledout|out[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|DP|pipeC|out\(5),
	sload => VCC,
	ena => \led~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ledout|out\(5));

-- Location: MLABCELL_X84_Y5_N21
\ledout|out[6]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \ledout|out[6]~feeder_combout\ = ( \CPU|DP|pipeC|out\(6) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|DP|pipeC|ALT_INV_out\(6),
	combout => \ledout|out[6]~feeder_combout\);

-- Location: FF_X84_Y5_N22
\ledout|out[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \ledout|out[6]~feeder_combout\,
	ena => \led~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ledout|out\(6));

-- Location: FF_X88_Y6_N52
\ledout|out[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|DP|pipeC|out\(7),
	sload => VCC,
	ena => \led~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ledout|out\(7));

-- Location: LABCELL_X88_Y8_N24
\H0|WideOr6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \H0|WideOr6~0_combout\ = ( \CPU|mem_addr[0]~1_combout\ & ( \CPU|mem_addr[2]~3_combout\ & ( (\CPU|mem_addr[3]~4_combout\ & !\CPU|mem_addr[1]~2_combout\) ) ) ) # ( !\CPU|mem_addr[0]~1_combout\ & ( \CPU|mem_addr[2]~3_combout\ & ( 
-- (!\CPU|mem_addr[3]~4_combout\ & !\CPU|mem_addr[1]~2_combout\) ) ) ) # ( \CPU|mem_addr[0]~1_combout\ & ( !\CPU|mem_addr[2]~3_combout\ & ( !\CPU|mem_addr[3]~4_combout\ $ (\CPU|mem_addr[1]~2_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101001011010010110100000101000000101000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|ALT_INV_mem_addr[3]~4_combout\,
	datac => \CPU|ALT_INV_mem_addr[1]~2_combout\,
	datae => \CPU|ALT_INV_mem_addr[0]~1_combout\,
	dataf => \CPU|ALT_INV_mem_addr[2]~3_combout\,
	combout => \H0|WideOr6~0_combout\);

-- Location: LABCELL_X88_Y8_N45
\H0|WideOr5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \H0|WideOr5~0_combout\ = ( \CPU|mem_addr[0]~1_combout\ & ( \CPU|mem_addr[1]~2_combout\ & ( \CPU|mem_addr[3]~4_combout\ ) ) ) # ( !\CPU|mem_addr[0]~1_combout\ & ( \CPU|mem_addr[1]~2_combout\ & ( \CPU|mem_addr[2]~3_combout\ ) ) ) # ( 
-- \CPU|mem_addr[0]~1_combout\ & ( !\CPU|mem_addr[1]~2_combout\ & ( (!\CPU|mem_addr[3]~4_combout\ & \CPU|mem_addr[2]~3_combout\) ) ) ) # ( !\CPU|mem_addr[0]~1_combout\ & ( !\CPU|mem_addr[1]~2_combout\ & ( (\CPU|mem_addr[3]~4_combout\ & 
-- \CPU|mem_addr[2]~3_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000010100000101000001111000011110101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|ALT_INV_mem_addr[3]~4_combout\,
	datac => \CPU|ALT_INV_mem_addr[2]~3_combout\,
	datae => \CPU|ALT_INV_mem_addr[0]~1_combout\,
	dataf => \CPU|ALT_INV_mem_addr[1]~2_combout\,
	combout => \H0|WideOr5~0_combout\);

-- Location: LABCELL_X88_Y8_N0
\H0|WideOr4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \H0|WideOr4~0_combout\ = ( \CPU|mem_addr[0]~1_combout\ & ( \CPU|mem_addr[2]~3_combout\ & ( (\CPU|mem_addr[3]~4_combout\ & \CPU|mem_addr[1]~2_combout\) ) ) ) # ( !\CPU|mem_addr[0]~1_combout\ & ( \CPU|mem_addr[2]~3_combout\ & ( \CPU|mem_addr[3]~4_combout\ ) 
-- ) ) # ( !\CPU|mem_addr[0]~1_combout\ & ( !\CPU|mem_addr[2]~3_combout\ & ( (!\CPU|mem_addr[3]~4_combout\ & \CPU|mem_addr[1]~2_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000000000000000001010101010101010000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|ALT_INV_mem_addr[3]~4_combout\,
	datac => \CPU|ALT_INV_mem_addr[1]~2_combout\,
	datae => \CPU|ALT_INV_mem_addr[0]~1_combout\,
	dataf => \CPU|ALT_INV_mem_addr[2]~3_combout\,
	combout => \H0|WideOr4~0_combout\);

-- Location: LABCELL_X88_Y8_N21
\H0|WideOr3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \H0|WideOr3~0_combout\ = ( \CPU|mem_addr[0]~1_combout\ & ( \CPU|mem_addr[1]~2_combout\ & ( \CPU|mem_addr[2]~3_combout\ ) ) ) # ( !\CPU|mem_addr[0]~1_combout\ & ( \CPU|mem_addr[1]~2_combout\ & ( (\CPU|mem_addr[3]~4_combout\ & !\CPU|mem_addr[2]~3_combout\) 
-- ) ) ) # ( \CPU|mem_addr[0]~1_combout\ & ( !\CPU|mem_addr[1]~2_combout\ & ( (!\CPU|mem_addr[3]~4_combout\ & !\CPU|mem_addr[2]~3_combout\) ) ) ) # ( !\CPU|mem_addr[0]~1_combout\ & ( !\CPU|mem_addr[1]~2_combout\ & ( (!\CPU|mem_addr[3]~4_combout\ & 
-- \CPU|mem_addr[2]~3_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010101000001010000001010000010100000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|ALT_INV_mem_addr[3]~4_combout\,
	datac => \CPU|ALT_INV_mem_addr[2]~3_combout\,
	datae => \CPU|ALT_INV_mem_addr[0]~1_combout\,
	dataf => \CPU|ALT_INV_mem_addr[1]~2_combout\,
	combout => \H0|WideOr3~0_combout\);

-- Location: LABCELL_X88_Y8_N51
\H0|WideOr2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \H0|WideOr2~0_combout\ = ( \CPU|mem_addr[0]~1_combout\ & ( \CPU|mem_addr[1]~2_combout\ & ( !\CPU|mem_addr[3]~4_combout\ ) ) ) # ( \CPU|mem_addr[0]~1_combout\ & ( !\CPU|mem_addr[1]~2_combout\ & ( (!\CPU|mem_addr[3]~4_combout\) # 
-- (!\CPU|mem_addr[2]~3_combout\) ) ) ) # ( !\CPU|mem_addr[0]~1_combout\ & ( !\CPU|mem_addr[1]~2_combout\ & ( (!\CPU|mem_addr[3]~4_combout\ & \CPU|mem_addr[2]~3_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010111110101111101000000000000000001010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|ALT_INV_mem_addr[3]~4_combout\,
	datac => \CPU|ALT_INV_mem_addr[2]~3_combout\,
	datae => \CPU|ALT_INV_mem_addr[0]~1_combout\,
	dataf => \CPU|ALT_INV_mem_addr[1]~2_combout\,
	combout => \H0|WideOr2~0_combout\);

-- Location: LABCELL_X88_Y8_N54
\H0|WideOr1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \H0|WideOr1~0_combout\ = ( \CPU|mem_addr[0]~1_combout\ & ( \CPU|mem_addr[2]~3_combout\ & ( !\CPU|mem_addr[3]~4_combout\ $ (!\CPU|mem_addr[1]~2_combout\) ) ) ) # ( \CPU|mem_addr[0]~1_combout\ & ( !\CPU|mem_addr[2]~3_combout\ & ( 
-- !\CPU|mem_addr[3]~4_combout\ ) ) ) # ( !\CPU|mem_addr[0]~1_combout\ & ( !\CPU|mem_addr[2]~3_combout\ & ( (!\CPU|mem_addr[3]~4_combout\ & \CPU|mem_addr[1]~2_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010101010101010101000000000000000000101101001011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|ALT_INV_mem_addr[3]~4_combout\,
	datac => \CPU|ALT_INV_mem_addr[1]~2_combout\,
	datae => \CPU|ALT_INV_mem_addr[0]~1_combout\,
	dataf => \CPU|ALT_INV_mem_addr[2]~3_combout\,
	combout => \H0|WideOr1~0_combout\);

-- Location: LABCELL_X88_Y8_N36
\H0|WideOr0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \H0|WideOr0~0_combout\ = ( \CPU|mem_addr[1]~2_combout\ & ( (!\CPU|mem_addr[2]~3_combout\) # ((!\CPU|mem_addr[0]~1_combout\) # (\CPU|mem_addr[3]~4_combout\)) ) ) # ( !\CPU|mem_addr[1]~2_combout\ & ( (!\CPU|mem_addr[2]~3_combout\ & 
-- (\CPU|mem_addr[3]~4_combout\)) # (\CPU|mem_addr[2]~3_combout\ & ((!\CPU|mem_addr[3]~4_combout\) # (\CPU|mem_addr[0]~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110000111111001111000011111111111111110011111111111111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|ALT_INV_mem_addr[2]~3_combout\,
	datac => \CPU|ALT_INV_mem_addr[3]~4_combout\,
	datad => \CPU|ALT_INV_mem_addr[0]~1_combout\,
	dataf => \CPU|ALT_INV_mem_addr[1]~2_combout\,
	combout => \H0|WideOr0~0_combout\);

-- Location: LABCELL_X88_Y8_N6
\H1|WideOr6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \H1|WideOr6~0_combout\ = ( \CPU|mem_addr[4]~5_combout\ & ( (!\CPU|mem_addr[7]~7_combout\ & (!\CPU|mem_addr[5]~6_combout\ & !\CPU|mem_addr[6]~0_combout\)) # (\CPU|mem_addr[7]~7_combout\ & (!\CPU|mem_addr[5]~6_combout\ $ (!\CPU|mem_addr[6]~0_combout\))) ) ) 
-- # ( !\CPU|mem_addr[4]~5_combout\ & ( (!\CPU|mem_addr[7]~7_combout\ & (!\CPU|mem_addr[5]~6_combout\ & \CPU|mem_addr[6]~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011000000000000001100000011000011001100001100001100110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|ALT_INV_mem_addr[7]~7_combout\,
	datac => \CPU|ALT_INV_mem_addr[5]~6_combout\,
	datad => \CPU|ALT_INV_mem_addr[6]~0_combout\,
	dataf => \CPU|ALT_INV_mem_addr[4]~5_combout\,
	combout => \H1|WideOr6~0_combout\);

-- Location: LABCELL_X88_Y8_N9
\H1|WideOr5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \H1|WideOr5~0_combout\ = ( \CPU|mem_addr[4]~5_combout\ & ( (!\CPU|mem_addr[5]~6_combout\ & (!\CPU|mem_addr[7]~7_combout\ & \CPU|mem_addr[6]~0_combout\)) # (\CPU|mem_addr[5]~6_combout\ & (\CPU|mem_addr[7]~7_combout\)) ) ) # ( !\CPU|mem_addr[4]~5_combout\ & 
-- ( (\CPU|mem_addr[6]~0_combout\ & ((\CPU|mem_addr[7]~7_combout\) # (\CPU|mem_addr[5]~6_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011100000111000001110000011100011001000110010001100100011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|ALT_INV_mem_addr[5]~6_combout\,
	datab => \CPU|ALT_INV_mem_addr[7]~7_combout\,
	datac => \CPU|ALT_INV_mem_addr[6]~0_combout\,
	dataf => \CPU|ALT_INV_mem_addr[4]~5_combout\,
	combout => \H1|WideOr5~0_combout\);

-- Location: LABCELL_X88_Y8_N39
\H1|WideOr4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \H1|WideOr4~0_combout\ = ( \CPU|mem_addr[4]~5_combout\ & ( (\CPU|mem_addr[5]~6_combout\ & (\CPU|mem_addr[6]~0_combout\ & \CPU|mem_addr[7]~7_combout\)) ) ) # ( !\CPU|mem_addr[4]~5_combout\ & ( (!\CPU|mem_addr[6]~0_combout\ & (\CPU|mem_addr[5]~6_combout\ & 
-- !\CPU|mem_addr[7]~7_combout\)) # (\CPU|mem_addr[6]~0_combout\ & ((\CPU|mem_addr[7]~7_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000000001111010100000000111100000000000001010000000000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|ALT_INV_mem_addr[5]~6_combout\,
	datac => \CPU|ALT_INV_mem_addr[6]~0_combout\,
	datad => \CPU|ALT_INV_mem_addr[7]~7_combout\,
	dataf => \CPU|ALT_INV_mem_addr[4]~5_combout\,
	combout => \H1|WideOr4~0_combout\);

-- Location: LABCELL_X88_Y8_N12
\H1|WideOr3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \H1|WideOr3~0_combout\ = ( \CPU|mem_addr[4]~5_combout\ & ( (!\CPU|mem_addr[5]~6_combout\ & (!\CPU|mem_addr[7]~7_combout\ & !\CPU|mem_addr[6]~0_combout\)) # (\CPU|mem_addr[5]~6_combout\ & ((\CPU|mem_addr[6]~0_combout\))) ) ) # ( 
-- !\CPU|mem_addr[4]~5_combout\ & ( (!\CPU|mem_addr[5]~6_combout\ & (!\CPU|mem_addr[7]~7_combout\ & \CPU|mem_addr[6]~0_combout\)) # (\CPU|mem_addr[5]~6_combout\ & (\CPU|mem_addr[7]~7_combout\ & !\CPU|mem_addr[6]~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010110100000000001011010000010100000010101011010000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|ALT_INV_mem_addr[5]~6_combout\,
	datac => \CPU|ALT_INV_mem_addr[7]~7_combout\,
	datad => \CPU|ALT_INV_mem_addr[6]~0_combout\,
	dataf => \CPU|ALT_INV_mem_addr[4]~5_combout\,
	combout => \H1|WideOr3~0_combout\);

-- Location: LABCELL_X88_Y8_N15
\H1|WideOr2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \H1|WideOr2~0_combout\ = ( \CPU|mem_addr[4]~5_combout\ & ( (!\CPU|mem_addr[7]~7_combout\) # ((!\CPU|mem_addr[5]~6_combout\ & !\CPU|mem_addr[6]~0_combout\)) ) ) # ( !\CPU|mem_addr[4]~5_combout\ & ( (!\CPU|mem_addr[5]~6_combout\ & 
-- (!\CPU|mem_addr[7]~7_combout\ & \CPU|mem_addr[6]~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000001000000010000000100011101100111011001110110011101100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|ALT_INV_mem_addr[5]~6_combout\,
	datab => \CPU|ALT_INV_mem_addr[7]~7_combout\,
	datac => \CPU|ALT_INV_mem_addr[6]~0_combout\,
	dataf => \CPU|ALT_INV_mem_addr[4]~5_combout\,
	combout => \H1|WideOr2~0_combout\);

-- Location: LABCELL_X85_Y9_N39
\H1|WideOr1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \H1|WideOr1~0_combout\ = ( \CPU|mem_addr[6]~0_combout\ & ( \CPU|mem_addr[4]~5_combout\ & ( !\CPU|mem_addr[5]~6_combout\ $ (!\CPU|mem_addr[7]~7_combout\) ) ) ) # ( !\CPU|mem_addr[6]~0_combout\ & ( \CPU|mem_addr[4]~5_combout\ & ( 
-- !\CPU|mem_addr[7]~7_combout\ ) ) ) # ( !\CPU|mem_addr[6]~0_combout\ & ( !\CPU|mem_addr[4]~5_combout\ & ( (\CPU|mem_addr[5]~6_combout\ & !\CPU|mem_addr[7]~7_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000000000000000000011110000111100000101101001011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|ALT_INV_mem_addr[5]~6_combout\,
	datac => \CPU|ALT_INV_mem_addr[7]~7_combout\,
	datae => \CPU|ALT_INV_mem_addr[6]~0_combout\,
	dataf => \CPU|ALT_INV_mem_addr[4]~5_combout\,
	combout => \H1|WideOr1~0_combout\);

-- Location: LABCELL_X88_Y8_N33
\H1|WideOr0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \H1|WideOr0~0_combout\ = ( \CPU|mem_addr[6]~0_combout\ & ( \CPU|mem_addr[4]~5_combout\ & ( (!\CPU|mem_addr[5]~6_combout\) # (\CPU|mem_addr[7]~7_combout\) ) ) ) # ( !\CPU|mem_addr[6]~0_combout\ & ( \CPU|mem_addr[4]~5_combout\ & ( 
-- (\CPU|mem_addr[5]~6_combout\) # (\CPU|mem_addr[7]~7_combout\) ) ) ) # ( \CPU|mem_addr[6]~0_combout\ & ( !\CPU|mem_addr[4]~5_combout\ & ( (!\CPU|mem_addr[7]~7_combout\) # (\CPU|mem_addr[5]~6_combout\) ) ) ) # ( !\CPU|mem_addr[6]~0_combout\ & ( 
-- !\CPU|mem_addr[4]~5_combout\ & ( (\CPU|mem_addr[5]~6_combout\) # (\CPU|mem_addr[7]~7_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010111111111101010101111111101010101111111111111111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|ALT_INV_mem_addr[7]~7_combout\,
	datad => \CPU|ALT_INV_mem_addr[5]~6_combout\,
	datae => \CPU|ALT_INV_mem_addr[6]~0_combout\,
	dataf => \CPU|ALT_INV_mem_addr[4]~5_combout\,
	combout => \H1|WideOr0~0_combout\);

-- Location: IOIBUF_X2_Y0_N58
\SW[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(9),
	o => \SW[9]~input_o\);

-- Location: LABCELL_X85_Y10_N24
\hout[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \hout[0]~0_combout\ = ( \SW[9]~input_o\ & ( \CPU|DP|pipeC|out\(0) ) ) # ( !\SW[9]~input_o\ & ( \MEM|mem_rtl_0|auto_generated|ram_block1a0~portbdataout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011010101010101010100110011001100110101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DP|pipeC|ALT_INV_out\(0),
	datab => \MEM|mem_rtl_0|auto_generated|ALT_INV_ram_block1a0~portbdataout\,
	datae => \ALT_INV_SW[9]~input_o\,
	combout => \hout[0]~0_combout\);

-- Location: LABCELL_X85_Y10_N39
\hout[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \hout[2]~2_combout\ = ( \MEM|mem_rtl_0|auto_generated|ram_block1a2\ & ( \CPU|DP|pipeC|out\(2) ) ) # ( !\MEM|mem_rtl_0|auto_generated|ram_block1a2\ & ( \CPU|DP|pipeC|out\(2) & ( \SW[9]~input_o\ ) ) ) # ( \MEM|mem_rtl_0|auto_generated|ram_block1a2\ & ( 
-- !\CPU|DP|pipeC|out\(2) & ( !\SW[9]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101001010101010101011111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[9]~input_o\,
	datae => \MEM|mem_rtl_0|auto_generated|ALT_INV_ram_block1a2\,
	dataf => \CPU|DP|pipeC|ALT_INV_out\(2),
	combout => \hout[2]~2_combout\);

-- Location: LABCELL_X85_Y10_N6
\hout[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \hout[3]~3_combout\ = ( \MEM|mem_rtl_0|auto_generated|ram_block1a3\ & ( (!\SW[9]~input_o\) # (\CPU|DP|pipeC|out\(3)) ) ) # ( !\MEM|mem_rtl_0|auto_generated|ram_block1a3\ & ( (\CPU|DP|pipeC|out\(3) & \SW[9]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010111110101111101011111010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DP|pipeC|ALT_INV_out\(3),
	datac => \ALT_INV_SW[9]~input_o\,
	dataf => \MEM|mem_rtl_0|auto_generated|ALT_INV_ram_block1a3\,
	combout => \hout[3]~3_combout\);

-- Location: LABCELL_X85_Y10_N33
\hout[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \hout[1]~1_combout\ = ( \MEM|mem_rtl_0|auto_generated|ram_block1a1\ & ( \CPU|DP|pipeC|out\(1) ) ) # ( !\MEM|mem_rtl_0|auto_generated|ram_block1a1\ & ( \CPU|DP|pipeC|out\(1) & ( \SW[9]~input_o\ ) ) ) # ( \MEM|mem_rtl_0|auto_generated|ram_block1a1\ & ( 
-- !\CPU|DP|pipeC|out\(1) & ( !\SW[9]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101001010101010101011111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[9]~input_o\,
	datae => \MEM|mem_rtl_0|auto_generated|ALT_INV_ram_block1a1\,
	dataf => \CPU|DP|pipeC|ALT_INV_out\(1),
	combout => \hout[1]~1_combout\);

-- Location: LABCELL_X85_Y10_N51
\H2|WideOr6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \H2|WideOr6~0_combout\ = ( \hout[1]~1_combout\ & ( (\hout[0]~0_combout\ & (!\hout[2]~2_combout\ & \hout[3]~3_combout\)) ) ) # ( !\hout[1]~1_combout\ & ( (!\hout[0]~0_combout\ & (\hout[2]~2_combout\ & !\hout[3]~3_combout\)) # (\hout[0]~0_combout\ & 
-- (!\hout[2]~2_combout\ $ (\hout[3]~3_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110000101100001011000010110000100000100000001000000010000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_hout[0]~0_combout\,
	datab => \ALT_INV_hout[2]~2_combout\,
	datac => \ALT_INV_hout[3]~3_combout\,
	dataf => \ALT_INV_hout[1]~1_combout\,
	combout => \H2|WideOr6~0_combout\);

-- Location: LABCELL_X85_Y10_N54
\H2|WideOr5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \H2|WideOr5~0_combout\ = ( \hout[3]~3_combout\ & ( (!\hout[0]~0_combout\ & ((\hout[2]~2_combout\))) # (\hout[0]~0_combout\ & (\hout[1]~1_combout\)) ) ) # ( !\hout[3]~3_combout\ & ( (\hout[2]~2_combout\ & (!\hout[1]~1_combout\ $ (!\hout[0]~0_combout\))) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001001000010010000100100001001000110101001101010011010100110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_hout[1]~1_combout\,
	datab => \ALT_INV_hout[2]~2_combout\,
	datac => \ALT_INV_hout[0]~0_combout\,
	dataf => \ALT_INV_hout[3]~3_combout\,
	combout => \H2|WideOr5~0_combout\);

-- Location: LABCELL_X85_Y10_N57
\H2|WideOr4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \H2|WideOr4~0_combout\ = ( \hout[0]~0_combout\ & ( (\hout[1]~1_combout\ & (\hout[2]~2_combout\ & \hout[3]~3_combout\)) ) ) # ( !\hout[0]~0_combout\ & ( (!\hout[2]~2_combout\ & (\hout[1]~1_combout\ & !\hout[3]~3_combout\)) # (\hout[2]~2_combout\ & 
-- ((\hout[3]~3_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100001101000011010000110100001100000001000000010000000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_hout[1]~1_combout\,
	datab => \ALT_INV_hout[2]~2_combout\,
	datac => \ALT_INV_hout[3]~3_combout\,
	dataf => \ALT_INV_hout[0]~0_combout\,
	combout => \H2|WideOr4~0_combout\);

-- Location: LABCELL_X85_Y10_N12
\H2|WideOr3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \H2|WideOr3~0_combout\ = ( \hout[3]~3_combout\ & ( (\hout[1]~1_combout\ & (!\hout[2]~2_combout\ $ (\hout[0]~0_combout\))) ) ) # ( !\hout[3]~3_combout\ & ( (!\hout[1]~1_combout\ & (!\hout[2]~2_combout\ $ (!\hout[0]~0_combout\))) # (\hout[1]~1_combout\ & 
-- (\hout[2]~2_combout\ & \hout[0]~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010100100101001001010010010100101000001010000010100000101000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_hout[1]~1_combout\,
	datab => \ALT_INV_hout[2]~2_combout\,
	datac => \ALT_INV_hout[0]~0_combout\,
	dataf => \ALT_INV_hout[3]~3_combout\,
	combout => \H2|WideOr3~0_combout\);

-- Location: LABCELL_X85_Y10_N15
\H2|WideOr2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \H2|WideOr2~0_combout\ = ( \hout[0]~0_combout\ & ( (!\hout[3]~3_combout\) # ((!\hout[1]~1_combout\ & !\hout[2]~2_combout\)) ) ) # ( !\hout[0]~0_combout\ & ( (!\hout[1]~1_combout\ & (\hout[2]~2_combout\ & !\hout[3]~3_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000100000001000000010000011111000111110001111100011111000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_hout[1]~1_combout\,
	datab => \ALT_INV_hout[2]~2_combout\,
	datac => \ALT_INV_hout[3]~3_combout\,
	dataf => \ALT_INV_hout[0]~0_combout\,
	combout => \H2|WideOr2~0_combout\);

-- Location: LABCELL_X85_Y10_N42
\H2|WideOr1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \H2|WideOr1~0_combout\ = ( \hout[3]~3_combout\ & ( (!\hout[1]~1_combout\ & (\hout[2]~2_combout\ & \hout[0]~0_combout\)) ) ) # ( !\hout[3]~3_combout\ & ( (!\hout[1]~1_combout\ & (!\hout[2]~2_combout\ & \hout[0]~0_combout\)) # (\hout[1]~1_combout\ & 
-- ((!\hout[2]~2_combout\) # (\hout[0]~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100110101001101010011010100110100000010000000100000001000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_hout[1]~1_combout\,
	datab => \ALT_INV_hout[2]~2_combout\,
	datac => \ALT_INV_hout[0]~0_combout\,
	dataf => \ALT_INV_hout[3]~3_combout\,
	combout => \H2|WideOr1~0_combout\);

-- Location: LABCELL_X85_Y10_N45
\H2|WideOr0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \H2|WideOr0~0_combout\ = ( \hout[0]~0_combout\ & ( (!\hout[1]~1_combout\ $ (!\hout[2]~2_combout\)) # (\hout[3]~3_combout\) ) ) # ( !\hout[0]~0_combout\ & ( (!\hout[2]~2_combout\ $ (!\hout[3]~3_combout\)) # (\hout[1]~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111110101111101011111010111110101101111011011110110111101101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_hout[1]~1_combout\,
	datab => \ALT_INV_hout[2]~2_combout\,
	datac => \ALT_INV_hout[3]~3_combout\,
	dataf => \ALT_INV_hout[0]~0_combout\,
	combout => \H2|WideOr0~0_combout\);

-- Location: LABCELL_X88_Y9_N36
\hout[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \hout[4]~4_combout\ = ( \MEM|mem_rtl_0|auto_generated|ram_block1a4\ & ( (!\SW[9]~input_o\) # (\CPU|DP|pipeC|out\(4)) ) ) # ( !\MEM|mem_rtl_0|auto_generated|ram_block1a4\ & ( (\CPU|DP|pipeC|out\(4) & \SW[9]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001111110011111100111111001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|DP|pipeC|ALT_INV_out\(4),
	datac => \ALT_INV_SW[9]~input_o\,
	dataf => \MEM|mem_rtl_0|auto_generated|ALT_INV_ram_block1a4\,
	combout => \hout[4]~4_combout\);

-- Location: LABCELL_X88_Y9_N6
\hout[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \hout[5]~5_combout\ = ( \MEM|mem_rtl_0|auto_generated|ram_block1a5\ & ( (!\SW[9]~input_o\) # (\CPU|DP|pipeC|out\(5)) ) ) # ( !\MEM|mem_rtl_0|auto_generated|ram_block1a5\ & ( (\SW[9]~input_o\ & \CPU|DP|pipeC|out\(5)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010110101010111111111010101011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[9]~input_o\,
	datad => \CPU|DP|pipeC|ALT_INV_out\(5),
	dataf => \MEM|mem_rtl_0|auto_generated|ALT_INV_ram_block1a5\,
	combout => \hout[5]~5_combout\);

-- Location: LABCELL_X88_Y9_N9
\hout[7]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \hout[7]~7_combout\ = ( \CPU|DP|pipeC|out\(7) & ( (\MEM|mem_rtl_0|auto_generated|ram_block1a7\) # (\SW[9]~input_o\) ) ) # ( !\CPU|DP|pipeC|out\(7) & ( (!\SW[9]~input_o\ & \MEM|mem_rtl_0|auto_generated|ram_block1a7\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101001011111010111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[9]~input_o\,
	datac => \MEM|mem_rtl_0|auto_generated|ALT_INV_ram_block1a7\,
	dataf => \CPU|DP|pipeC|ALT_INV_out\(7),
	combout => \hout[7]~7_combout\);

-- Location: LABCELL_X88_Y9_N27
\hout[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \hout[6]~6_combout\ = (!\SW[9]~input_o\ & (\MEM|mem_rtl_0|auto_generated|ram_block1a6\)) # (\SW[9]~input_o\ & ((\CPU|DP|pipeC|out\(6))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100001111010101010000111101010101000011110101010100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEM|mem_rtl_0|auto_generated|ALT_INV_ram_block1a6\,
	datac => \CPU|DP|pipeC|ALT_INV_out\(6),
	datad => \ALT_INV_SW[9]~input_o\,
	combout => \hout[6]~6_combout\);

-- Location: LABCELL_X88_Y9_N57
\H3|WideOr6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \H3|WideOr6~0_combout\ = (!\hout[7]~7_combout\ & (!\hout[5]~5_combout\ & (!\hout[4]~4_combout\ $ (!\hout[6]~6_combout\)))) # (\hout[7]~7_combout\ & (\hout[4]~4_combout\ & (!\hout[5]~5_combout\ $ (!\hout[6]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000110000100010000011000010001000001100001000100000110000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_hout[4]~4_combout\,
	datab => \ALT_INV_hout[5]~5_combout\,
	datac => \ALT_INV_hout[7]~7_combout\,
	datad => \ALT_INV_hout[6]~6_combout\,
	combout => \H3|WideOr6~0_combout\);

-- Location: LABCELL_X88_Y9_N12
\H3|WideOr5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \H3|WideOr5~0_combout\ = ( \hout[7]~7_combout\ & ( (!\hout[4]~4_combout\ & ((\hout[6]~6_combout\))) # (\hout[4]~4_combout\ & (\hout[5]~5_combout\)) ) ) # ( !\hout[7]~7_combout\ & ( (\hout[6]~6_combout\ & (!\hout[5]~5_combout\ $ (!\hout[4]~4_combout\))) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000111100000000000011110000000011111100110000001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_hout[5]~5_combout\,
	datac => \ALT_INV_hout[4]~4_combout\,
	datad => \ALT_INV_hout[6]~6_combout\,
	dataf => \ALT_INV_hout[7]~7_combout\,
	combout => \H3|WideOr5~0_combout\);

-- Location: LABCELL_X88_Y9_N54
\H3|WideOr4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \H3|WideOr4~0_combout\ = ( \hout[7]~7_combout\ & ( (\hout[6]~6_combout\ & ((!\hout[4]~4_combout\) # (\hout[5]~5_combout\))) ) ) # ( !\hout[7]~7_combout\ & ( (!\hout[4]~4_combout\ & (\hout[5]~5_combout\ & !\hout[6]~6_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000100000001000000010000000001011000010110000101100001011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_hout[4]~4_combout\,
	datab => \ALT_INV_hout[5]~5_combout\,
	datac => \ALT_INV_hout[6]~6_combout\,
	dataf => \ALT_INV_hout[7]~7_combout\,
	combout => \H3|WideOr4~0_combout\);

-- Location: LABCELL_X88_Y9_N15
\H3|WideOr3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \H3|WideOr3~0_combout\ = (!\hout[5]~5_combout\ & (!\hout[7]~7_combout\ & (!\hout[4]~4_combout\ $ (!\hout[6]~6_combout\)))) # (\hout[5]~5_combout\ & ((!\hout[4]~4_combout\ & (\hout[7]~7_combout\ & !\hout[6]~6_combout\)) # (\hout[4]~4_combout\ & 
-- ((\hout[6]~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100001010010001010000101001000101000010100100010100001010010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_hout[4]~4_combout\,
	datab => \ALT_INV_hout[5]~5_combout\,
	datac => \ALT_INV_hout[7]~7_combout\,
	datad => \ALT_INV_hout[6]~6_combout\,
	combout => \H3|WideOr3~0_combout\);

-- Location: LABCELL_X88_Y9_N42
\H3|WideOr2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \H3|WideOr2~0_combout\ = ( \hout[7]~7_combout\ & ( (!\hout[5]~5_combout\ & (\hout[4]~4_combout\ & !\hout[6]~6_combout\)) ) ) # ( !\hout[7]~7_combout\ & ( ((!\hout[5]~5_combout\ & \hout[6]~6_combout\)) # (\hout[4]~4_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111001111000011111100111100001100000000000000110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_hout[5]~5_combout\,
	datac => \ALT_INV_hout[4]~4_combout\,
	datad => \ALT_INV_hout[6]~6_combout\,
	dataf => \ALT_INV_hout[7]~7_combout\,
	combout => \H3|WideOr2~0_combout\);

-- Location: LABCELL_X88_Y9_N0
\H3|WideOr1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \H3|WideOr1~0_combout\ = ( \hout[5]~5_combout\ & ( (!\hout[7]~7_combout\ & ((!\hout[6]~6_combout\) # (\hout[4]~4_combout\))) ) ) # ( !\hout[5]~5_combout\ & ( (\hout[4]~4_combout\ & (!\hout[7]~7_combout\ $ (\hout[6]~6_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000000011000011000000001111001100000011001100110000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_hout[7]~7_combout\,
	datac => \ALT_INV_hout[4]~4_combout\,
	datad => \ALT_INV_hout[6]~6_combout\,
	dataf => \ALT_INV_hout[5]~5_combout\,
	combout => \H3|WideOr1~0_combout\);

-- Location: LABCELL_X88_Y9_N45
\H3|WideOr0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \H3|WideOr0~0_combout\ = (!\hout[4]~4_combout\ & ((!\hout[7]~7_combout\ $ (!\hout[6]~6_combout\)) # (\hout[5]~5_combout\))) # (\hout[4]~4_combout\ & ((!\hout[5]~5_combout\ $ (!\hout[6]~6_combout\)) # (\hout[7]~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011111111100111001111111110011100111111111001110011111111100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_hout[4]~4_combout\,
	datab => \ALT_INV_hout[5]~5_combout\,
	datac => \ALT_INV_hout[7]~7_combout\,
	datad => \ALT_INV_hout[6]~6_combout\,
	combout => \H3|WideOr0~0_combout\);

-- Location: LABCELL_X85_Y6_N9
\hout[9]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \hout[9]~9_combout\ = (!\SW[9]~input_o\ & (\MEM|mem_rtl_0|auto_generated|ram_block1a9\)) # (\SW[9]~input_o\ & ((\CPU|DP|pipeC|out\(9))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001011111010100000101111101010000010111110101000001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEM|mem_rtl_0|auto_generated|ALT_INV_ram_block1a9\,
	datac => \ALT_INV_SW[9]~input_o\,
	datad => \CPU|DP|pipeC|ALT_INV_out\(9),
	combout => \hout[9]~9_combout\);

-- Location: LABCELL_X85_Y6_N42
\hout[11]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \hout[11]~11_combout\ = (!\SW[9]~input_o\ & (\MEM|mem_rtl_0|auto_generated|ram_block1a11\)) # (\SW[9]~input_o\ & ((\CPU|DP|pipeC|out\(11))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000111111000011000011111100001100001111110000110000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_SW[9]~input_o\,
	datac => \MEM|mem_rtl_0|auto_generated|ALT_INV_ram_block1a11\,
	datad => \CPU|DP|pipeC|ALT_INV_out\(11),
	combout => \hout[11]~11_combout\);

-- Location: LABCELL_X85_Y6_N0
\hout[10]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \hout[10]~10_combout\ = ( \MEM|mem_rtl_0|auto_generated|ram_block1a10\ & ( (!\SW[9]~input_o\) # (\CPU|DP|pipeC|out\(10)) ) ) # ( !\MEM|mem_rtl_0|auto_generated|ram_block1a10\ & ( (\CPU|DP|pipeC|out\(10) & \SW[9]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001110111011101110100010001000100011101110111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DP|pipeC|ALT_INV_out\(10),
	datab => \ALT_INV_SW[9]~input_o\,
	datae => \MEM|mem_rtl_0|auto_generated|ALT_INV_ram_block1a10\,
	combout => \hout[10]~10_combout\);

-- Location: LABCELL_X85_Y6_N57
\hout[8]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \hout[8]~8_combout\ = (!\SW[9]~input_o\ & (\MEM|mem_rtl_0|auto_generated|ram_block1a8\)) # (\SW[9]~input_o\ & ((\CPU|DP|pipeC|out\(8))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000111111000011000011111100001100001111110000110000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_SW[9]~input_o\,
	datac => \MEM|mem_rtl_0|auto_generated|ALT_INV_ram_block1a8\,
	datad => \CPU|DP|pipeC|ALT_INV_out\(8),
	combout => \hout[8]~8_combout\);

-- Location: LABCELL_X81_Y9_N39
\H4|WideOr6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \H4|WideOr6~0_combout\ = ( \hout[8]~8_combout\ & ( (!\hout[9]~9_combout\ & (!\hout[11]~11_combout\ $ (\hout[10]~10_combout\))) # (\hout[9]~9_combout\ & (\hout[11]~11_combout\ & !\hout[10]~10_combout\)) ) ) # ( !\hout[8]~8_combout\ & ( 
-- (!\hout[9]~9_combout\ & (!\hout[11]~11_combout\ & \hout[10]~10_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010100000000000001010000010100101000010101010010100001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_hout[9]~9_combout\,
	datac => \ALT_INV_hout[11]~11_combout\,
	datad => \ALT_INV_hout[10]~10_combout\,
	dataf => \ALT_INV_hout[8]~8_combout\,
	combout => \H4|WideOr6~0_combout\);

-- Location: LABCELL_X88_Y9_N18
\H4|WideOr5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \H4|WideOr5~0_combout\ = ( \hout[10]~10_combout\ & ( (!\hout[9]~9_combout\ & (!\hout[8]~8_combout\ $ (!\hout[11]~11_combout\))) # (\hout[9]~9_combout\ & ((!\hout[8]~8_combout\) # (\hout[11]~11_combout\))) ) ) # ( !\hout[10]~10_combout\ & ( 
-- (\hout[9]~9_combout\ & (\hout[8]~8_combout\ & \hout[11]~11_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010001000000000001000101100110110111010110011011011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_hout[9]~9_combout\,
	datab => \ALT_INV_hout[8]~8_combout\,
	datad => \ALT_INV_hout[11]~11_combout\,
	dataf => \ALT_INV_hout[10]~10_combout\,
	combout => \H4|WideOr5~0_combout\);

-- Location: LABCELL_X88_Y9_N51
\H4|WideOr4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \H4|WideOr4~0_combout\ = ( \hout[10]~10_combout\ & ( (\hout[11]~11_combout\ & ((!\hout[8]~8_combout\) # (\hout[9]~9_combout\))) ) ) # ( !\hout[10]~10_combout\ & ( (\hout[9]~9_combout\ & (!\hout[8]~8_combout\ & !\hout[11]~11_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000000000000010100000000000000000000111101010000000011110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_hout[9]~9_combout\,
	datac => \ALT_INV_hout[8]~8_combout\,
	datad => \ALT_INV_hout[11]~11_combout\,
	dataf => \ALT_INV_hout[10]~10_combout\,
	combout => \H4|WideOr4~0_combout\);

-- Location: LABCELL_X88_Y9_N3
\H4|WideOr3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \H4|WideOr3~0_combout\ = ( \hout[10]~10_combout\ & ( (!\hout[9]~9_combout\ & (!\hout[8]~8_combout\ & !\hout[11]~11_combout\)) # (\hout[9]~9_combout\ & (\hout[8]~8_combout\)) ) ) # ( !\hout[10]~10_combout\ & ( (!\hout[9]~9_combout\ & (\hout[8]~8_combout\ & 
-- !\hout[11]~11_combout\)) # (\hout[9]~9_combout\ & (!\hout[8]~8_combout\ & \hout[11]~11_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101001010000000010100101000010100101000001011010010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_hout[9]~9_combout\,
	datac => \ALT_INV_hout[8]~8_combout\,
	datad => \ALT_INV_hout[11]~11_combout\,
	dataf => \ALT_INV_hout[10]~10_combout\,
	combout => \H4|WideOr3~0_combout\);

-- Location: LABCELL_X88_Y9_N21
\H4|WideOr2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \H4|WideOr2~0_combout\ = ( \hout[10]~10_combout\ & ( (!\hout[11]~11_combout\ & ((!\hout[9]~9_combout\) # (\hout[8]~8_combout\))) ) ) # ( !\hout[10]~10_combout\ & ( (\hout[8]~8_combout\ & ((!\hout[9]~9_combout\) # (!\hout[11]~11_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001010000011110000101010101111000000001010111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_hout[9]~9_combout\,
	datac => \ALT_INV_hout[8]~8_combout\,
	datad => \ALT_INV_hout[11]~11_combout\,
	dataf => \ALT_INV_hout[10]~10_combout\,
	combout => \H4|WideOr2~0_combout\);

-- Location: LABCELL_X88_Y9_N48
\H4|WideOr1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \H4|WideOr1~0_combout\ = ( \hout[10]~10_combout\ & ( (\hout[8]~8_combout\ & (!\hout[9]~9_combout\ $ (!\hout[11]~11_combout\))) ) ) # ( !\hout[10]~10_combout\ & ( (!\hout[11]~11_combout\ & ((\hout[8]~8_combout\) # (\hout[9]~9_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111011100000000011101110000000000010001001000100001000100100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_hout[9]~9_combout\,
	datab => \ALT_INV_hout[8]~8_combout\,
	datad => \ALT_INV_hout[11]~11_combout\,
	dataf => \ALT_INV_hout[10]~10_combout\,
	combout => \H4|WideOr1~0_combout\);

-- Location: LABCELL_X88_Y9_N30
\H4|WideOr0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \H4|WideOr0~0_combout\ = ( \hout[8]~8_combout\ & ( \hout[10]~10_combout\ & ( (!\hout[9]~9_combout\) # (\hout[11]~11_combout\) ) ) ) # ( !\hout[8]~8_combout\ & ( \hout[10]~10_combout\ & ( (!\hout[11]~11_combout\) # (\hout[9]~9_combout\) ) ) ) # ( 
-- \hout[8]~8_combout\ & ( !\hout[10]~10_combout\ & ( (\hout[9]~9_combout\) # (\hout[11]~11_combout\) ) ) ) # ( !\hout[8]~8_combout\ & ( !\hout[10]~10_combout\ & ( (\hout[9]~9_combout\) # (\hout[11]~11_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011111100111111001111110011111111001111110011111111001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_hout[11]~11_combout\,
	datac => \ALT_INV_hout[9]~9_combout\,
	datae => \ALT_INV_hout[8]~8_combout\,
	dataf => \ALT_INV_hout[10]~10_combout\,
	combout => \H4|WideOr0~0_combout\);

-- Location: LABCELL_X81_Y9_N51
\hout[15]~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \hout[15]~15_combout\ = ( \MEM|mem_rtl_0|auto_generated|ram_block1a15\ & ( (!\SW[9]~input_o\) # (\CPU|DP|pipeC|out\(15)) ) ) # ( !\MEM|mem_rtl_0|auto_generated|ram_block1a15\ & ( (\SW[9]~input_o\ & \CPU|DP|pipeC|out\(15)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001111001111110011111100111111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_SW[9]~input_o\,
	datac => \CPU|DP|pipeC|ALT_INV_out\(15),
	dataf => \MEM|mem_rtl_0|auto_generated|ALT_INV_ram_block1a15\,
	combout => \hout[15]~15_combout\);

-- Location: LABCELL_X81_Y9_N42
\hout[12]~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \hout[12]~12_combout\ = ( \CPU|DP|pipeC|out\(12) & ( (\MEM|mem_rtl_0|auto_generated|ram_block1a12\) # (\SW[9]~input_o\) ) ) # ( !\CPU|DP|pipeC|out\(12) & ( (!\SW[9]~input_o\ & \MEM|mem_rtl_0|auto_generated|ram_block1a12\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000011000000110000111111001111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_SW[9]~input_o\,
	datac => \MEM|mem_rtl_0|auto_generated|ALT_INV_ram_block1a12\,
	dataf => \CPU|DP|pipeC|ALT_INV_out\(12),
	combout => \hout[12]~12_combout\);

-- Location: LABCELL_X81_Y9_N45
\hout[14]~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \hout[14]~14_combout\ = (!\SW[9]~input_o\ & ((\MEM|mem_rtl_0|auto_generated|ram_block1a14\))) # (\SW[9]~input_o\ & (\CPU|DP|pipeC|out\(14)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111001111000000111100111100000011110011110000001111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_SW[9]~input_o\,
	datac => \CPU|DP|pipeC|ALT_INV_out\(14),
	datad => \MEM|mem_rtl_0|auto_generated|ALT_INV_ram_block1a14\,
	combout => \hout[14]~14_combout\);

-- Location: LABCELL_X81_Y9_N48
\hout[13]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \hout[13]~13_combout\ = (!\SW[9]~input_o\ & ((\MEM|mem_rtl_0|auto_generated|ram_block1a13\))) # (\SW[9]~input_o\ & (\CPU|DP|pipeC|out\(13)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111001111000000111100111100000011110011110000001111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_SW[9]~input_o\,
	datac => \CPU|DP|pipeC|ALT_INV_out\(13),
	datad => \MEM|mem_rtl_0|auto_generated|ALT_INV_ram_block1a13\,
	combout => \hout[13]~13_combout\);

-- Location: LABCELL_X81_Y9_N57
\H5|WideOr6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \H5|WideOr6~0_combout\ = ( \hout[13]~13_combout\ & ( (\hout[15]~15_combout\ & (\hout[12]~12_combout\ & !\hout[14]~14_combout\)) ) ) # ( !\hout[13]~13_combout\ & ( (!\hout[15]~15_combout\ & (!\hout[12]~12_combout\ $ (!\hout[14]~14_combout\))) # 
-- (\hout[15]~15_combout\ & (\hout[12]~12_combout\ & \hout[14]~14_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010100100101001001010010010100100010000000100000001000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_hout[15]~15_combout\,
	datab => \ALT_INV_hout[12]~12_combout\,
	datac => \ALT_INV_hout[14]~14_combout\,
	dataf => \ALT_INV_hout[13]~13_combout\,
	combout => \H5|WideOr6~0_combout\);

-- Location: LABCELL_X81_Y9_N24
\H5|WideOr5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \H5|WideOr5~0_combout\ = (!\hout[15]~15_combout\ & (\hout[14]~14_combout\ & (!\hout[12]~12_combout\ $ (!\hout[13]~13_combout\)))) # (\hout[15]~15_combout\ & ((!\hout[12]~12_combout\ & ((\hout[14]~14_combout\))) # (\hout[12]~12_combout\ & 
-- (\hout[13]~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000101101101000000010110110100000001011011010000000101101101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_hout[15]~15_combout\,
	datab => \ALT_INV_hout[12]~12_combout\,
	datac => \ALT_INV_hout[13]~13_combout\,
	datad => \ALT_INV_hout[14]~14_combout\,
	combout => \H5|WideOr5~0_combout\);

-- Location: LABCELL_X81_Y9_N30
\H5|WideOr4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \H5|WideOr4~0_combout\ = ( \hout[15]~15_combout\ & ( (\hout[14]~14_combout\ & ((!\hout[12]~12_combout\) # (\hout[13]~13_combout\))) ) ) # ( !\hout[15]~15_combout\ & ( (!\hout[12]~12_combout\ & (\hout[13]~13_combout\ & !\hout[14]~14_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000000000000011000000000000000000110011110000000011001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_hout[12]~12_combout\,
	datac => \ALT_INV_hout[13]~13_combout\,
	datad => \ALT_INV_hout[14]~14_combout\,
	dataf => \ALT_INV_hout[15]~15_combout\,
	combout => \H5|WideOr4~0_combout\);

-- Location: LABCELL_X81_Y9_N33
\H5|WideOr3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \H5|WideOr3~0_combout\ = ( \hout[13]~13_combout\ & ( (!\hout[12]~12_combout\ & (\hout[15]~15_combout\ & !\hout[14]~14_combout\)) # (\hout[12]~12_combout\ & ((\hout[14]~14_combout\))) ) ) # ( !\hout[13]~13_combout\ & ( (!\hout[15]~15_combout\ & 
-- (!\hout[12]~12_combout\ $ (!\hout[14]~14_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010100000101000001010000010100001000011010000110100001101000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_hout[15]~15_combout\,
	datab => \ALT_INV_hout[12]~12_combout\,
	datac => \ALT_INV_hout[14]~14_combout\,
	dataf => \ALT_INV_hout[13]~13_combout\,
	combout => \H5|WideOr3~0_combout\);

-- Location: LABCELL_X81_Y9_N54
\H5|WideOr2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \H5|WideOr2~0_combout\ = (!\hout[13]~13_combout\ & ((!\hout[14]~14_combout\ & ((\hout[12]~12_combout\))) # (\hout[14]~14_combout\ & (!\hout[15]~15_combout\)))) # (\hout[13]~13_combout\ & (!\hout[15]~15_combout\ & (\hout[12]~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001010100010001100101010001000110010101000100011001010100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_hout[15]~15_combout\,
	datab => \ALT_INV_hout[12]~12_combout\,
	datac => \ALT_INV_hout[13]~13_combout\,
	datad => \ALT_INV_hout[14]~14_combout\,
	combout => \H5|WideOr2~0_combout\);

-- Location: LABCELL_X81_Y9_N36
\H5|WideOr1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \H5|WideOr1~0_combout\ = ( \hout[15]~15_combout\ & ( (\hout[12]~12_combout\ & (!\hout[13]~13_combout\ & \hout[14]~14_combout\)) ) ) # ( !\hout[15]~15_combout\ & ( (!\hout[12]~12_combout\ & (\hout[13]~13_combout\ & !\hout[14]~14_combout\)) # 
-- (\hout[12]~12_combout\ & ((!\hout[14]~14_combout\) # (\hout[13]~13_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011111100000011001111110000001100000000001100000000000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_hout[12]~12_combout\,
	datac => \ALT_INV_hout[13]~13_combout\,
	datad => \ALT_INV_hout[14]~14_combout\,
	dataf => \ALT_INV_hout[15]~15_combout\,
	combout => \H5|WideOr1~0_combout\);

-- Location: LABCELL_X81_Y9_N27
\H5|WideOr0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \H5|WideOr0~0_combout\ = ( \hout[13]~13_combout\ & ( ((!\hout[12]~12_combout\) # (!\hout[14]~14_combout\)) # (\hout[15]~15_combout\) ) ) # ( !\hout[13]~13_combout\ & ( (!\hout[15]~15_combout\ & ((\hout[14]~14_combout\))) # (\hout[15]~15_combout\ & 
-- ((!\hout[14]~14_combout\) # (\hout[12]~12_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101101011011010110110101101111111101111111011111110111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_hout[15]~15_combout\,
	datab => \ALT_INV_hout[12]~12_combout\,
	datac => \ALT_INV_hout[14]~14_combout\,
	dataf => \ALT_INV_hout[13]~13_combout\,
	combout => \H5|WideOr0~0_combout\);

-- Location: IOIBUF_X40_Y0_N1
\KEY[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(2),
	o => \KEY[2]~input_o\);

-- Location: IOIBUF_X40_Y0_N18
\KEY[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(3),
	o => \KEY[3]~input_o\);

-- Location: IOIBUF_X4_Y0_N18
\SW[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(8),
	o => \SW[8]~input_o\);

-- Location: MLABCELL_X59_Y23_N0
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


