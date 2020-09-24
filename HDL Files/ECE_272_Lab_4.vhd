-- Copyright (C) 2019  Intel Corporation. All rights reserved.
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

-- PROGRAM		"Quartus Prime"
-- VERSION		"Version 19.1.0 Build 670 09/22/2019 SJ Lite Edition"
-- CREATED		"Thu May 14 17:34:06 2020"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY ECE_272_Lab_4 IS 
	PORT
	(
		FLOW :  IN  STD_LOGIC;
		FHIGH :  IN  STD_LOGIC;
		CLK :  IN  STD_LOGIC;
		Aa :  OUT  STD_LOGIC;
		Ab :  OUT  STD_LOGIC;
		Ac :  OUT  STD_LOGIC;
		Ad :  OUT  STD_LOGIC;
		Ae :  OUT  STD_LOGIC;
		Af :  OUT  STD_LOGIC;
		Ag :  OUT  STD_LOGIC;
		Ba :  OUT  STD_LOGIC;
		Bb :  OUT  STD_LOGIC;
		Bc :  OUT  STD_LOGIC;
		Bd :  OUT  STD_LOGIC;
		Be :  OUT  STD_LOGIC;
		Bf :  OUT  STD_LOGIC;
		Bg :  OUT  STD_LOGIC
	);
END ECE_272_Lab_4;

ARCHITECTURE bdf_type OF ECE_272_Lab_4 IS 

COMPONENT adder
	PORT(B : IN STD_LOGIC;
		 C : IN STD_LOGIC;
		 A0 : IN STD_LOGIC;
		 A1 : IN STD_LOGIC;
		 A2 : IN STD_LOGIC;
		 A3 : IN STD_LOGIC;
		 Z0 : OUT STD_LOGIC;
		 Z1 : OUT STD_LOGIC;
		 Z2 : OUT STD_LOGIC;
		 Z3 : OUT STD_LOGIC;
		 Z4 : OUT STD_LOGIC
	);
END COMPONENT;

COMPONENT frequency_divider
	PORT(CLK : IN STD_LOGIC;
		 ZCLK : OUT STD_LOGIC
	);
END COMPONENT;

COMPONENT ece_272_lab_3
	PORT(X : IN STD_LOGIC;
		 A0 : IN STD_LOGIC;
		 A1 : IN STD_LOGIC;
		 A2 : IN STD_LOGIC;
		 A3 : IN STD_LOGIC;
		 a : OUT STD_LOGIC;
		 b : OUT STD_LOGIC;
		 c : OUT STD_LOGIC;
		 d : OUT STD_LOGIC;
		 e : OUT STD_LOGIC;
		 f : OUT STD_LOGIC;
		 g : OUT STD_LOGIC
	);
END COMPONENT;

COMPONENT register
	PORT(CLK : IN STD_LOGIC;
		 A0 : IN STD_LOGIC;
		 A1 : IN STD_LOGIC;
		 A2 : IN STD_LOGIC;
		 A3 : IN STD_LOGIC;
		 CLRN : IN STD_LOGIC;
		 Z0 : OUT STD_LOGIC;
		 Z1 : OUT STD_LOGIC;
		 Z2 : OUT STD_LOGIC;
		 Z3 : OUT STD_LOGIC
	);
END COMPONENT;

SIGNAL	SYNTHESIZED_WIRE_0 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_1 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_2 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_3 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_29 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_30 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_31 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_32 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_10 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_33 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_34 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_35 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_36 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_37 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_25 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_26 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_27 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_28 :  STD_LOGIC;


BEGIN 



b2v_inst : adder
PORT MAP(B => FLOW,
		 C => FHIGH,
		 A0 => SYNTHESIZED_WIRE_0,
		 A1 => SYNTHESIZED_WIRE_1,
		 A2 => SYNTHESIZED_WIRE_2,
		 A3 => SYNTHESIZED_WIRE_3,
		 Z0 => SYNTHESIZED_WIRE_29,
		 Z1 => SYNTHESIZED_WIRE_30,
		 Z2 => SYNTHESIZED_WIRE_31,
		 Z3 => SYNTHESIZED_WIRE_32);


b2v_inst1 : frequency_divider
PORT MAP(CLK => CLK,
		 ZCLK => SYNTHESIZED_WIRE_10);


b2v_inst10 : ece_272_lab_3
PORT MAP(X => FLOW,
		 A0 => SYNTHESIZED_WIRE_29,
		 A1 => SYNTHESIZED_WIRE_30,
		 A2 => SYNTHESIZED_WIRE_31,
		 A3 => SYNTHESIZED_WIRE_32,
		 a => Aa,
		 b => Ab,
		 c => Ac,
		 d => Ad,
		 e => Ae,
		 f => Af,
		 g => Ag);


SYNTHESIZED_WIRE_33 <= SYNTHESIZED_WIRE_30 AND SYNTHESIZED_WIRE_32;


b2v_inst21 : register
PORT MAP(CLK => SYNTHESIZED_WIRE_10,
		 A0 => SYNTHESIZED_WIRE_29,
		 A1 => SYNTHESIZED_WIRE_30,
		 A2 => SYNTHESIZED_WIRE_31,
		 A3 => SYNTHESIZED_WIRE_32,
		 CLRN => SYNTHESIZED_WIRE_33,
		 Z0 => SYNTHESIZED_WIRE_0,
		 Z1 => SYNTHESIZED_WIRE_1,
		 Z2 => SYNTHESIZED_WIRE_2,
		 Z3 => SYNTHESIZED_WIRE_3);


b2v_inst22 : register
PORT MAP(CLK => SYNTHESIZED_WIRE_33,
		 A0 => SYNTHESIZED_WIRE_34,
		 A1 => SYNTHESIZED_WIRE_35,
		 A2 => SYNTHESIZED_WIRE_36,
		 A3 => SYNTHESIZED_WIRE_37,
		 Z0 => SYNTHESIZED_WIRE_25,
		 Z1 => SYNTHESIZED_WIRE_26,
		 Z2 => SYNTHESIZED_WIRE_27,
		 Z3 => SYNTHESIZED_WIRE_28);


b2v_inst24 : ece_272_lab_3
PORT MAP(X => FLOW,
		 A0 => SYNTHESIZED_WIRE_34,
		 A1 => SYNTHESIZED_WIRE_35,
		 A2 => SYNTHESIZED_WIRE_36,
		 A3 => SYNTHESIZED_WIRE_37,
		 a => Ba,
		 b => Bb,
		 c => Bc,
		 d => Bd,
		 e => Be,
		 f => Bf,
		 g => Bg);


b2v_inst25 : adder
PORT MAP(B => FLOW,
		 C => FHIGH,
		 A0 => SYNTHESIZED_WIRE_25,
		 A1 => SYNTHESIZED_WIRE_26,
		 A2 => SYNTHESIZED_WIRE_27,
		 A3 => SYNTHESIZED_WIRE_28,
		 Z0 => SYNTHESIZED_WIRE_34,
		 Z1 => SYNTHESIZED_WIRE_35,
		 Z2 => SYNTHESIZED_WIRE_36,
		 Z3 => SYNTHESIZED_WIRE_37);


END bdf_type;