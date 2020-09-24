// Copyright (C) 2019  Intel Corporation. All rights reserved.
// Your use of Intel Corporation's design tools, logic functions 
// and other software and tools, and any partner logic 
// functions, and any output files from any of the foregoing 
// (including device programming or simulation files), and any 
// associated documentation or information are expressly subject 
// to the terms and conditions of the Intel Program License 
// Subscription Agreement, the Intel Quartus Prime License Agreement,
// the Intel FPGA IP License Agreement, or other applicable license
// agreement, including, without limitation, that your use is for
// the sole purpose of programming logic devices manufactured by
// Intel and sold by Intel or its authorized distributors.  Please
// refer to the applicable agreement for further details, at
// https://fpgasoftware.intel.com/eula.

// PROGRAM		"Quartus Prime"
// VERSION		"Version 19.1.0 Build 670 09/22/2019 SJ Lite Edition"
// CREATED		"Thu May 14 21:29:16 2020"

module ECE_272_Lab_4(
	FLOW,
	FHIGH,
	CLK,
	CLRN,
	Aa,
	Ab,
	Ac,
	Ad,
	Ae,
	Af,
	Ag,
	Ba,
	Bb,
	Bc,
	Bd,
	Be,
	Bf,
	Bg
);


input wire	FLOW;
input wire	FHIGH;
input wire	CLK;
input wire	CLRN;
output wire	Aa;
output wire	Ab;
output wire	Ac;
output wire	Ad;
output wire	Ae;
output wire	Af;
output wire	Ag;
output wire	Ba;
output wire	Bb;
output wire	Bc;
output wire	Bd;
output wire	Be;
output wire	Bf;
output wire	Bg;

wire	SYNTHESIZED_WIRE_0;
wire	SYNTHESIZED_WIRE_1;
wire	SYNTHESIZED_WIRE_2;
wire	SYNTHESIZED_WIRE_3;
wire	SYNTHESIZED_WIRE_33;
wire	SYNTHESIZED_WIRE_34;
wire	SYNTHESIZED_WIRE_35;
wire	SYNTHESIZED_WIRE_36;
wire	SYNTHESIZED_WIRE_37;
wire	SYNTHESIZED_WIRE_11;
wire	SYNTHESIZED_WIRE_16;
wire	SYNTHESIZED_WIRE_38;
wire	SYNTHESIZED_WIRE_39;
wire	SYNTHESIZED_WIRE_40;
wire	SYNTHESIZED_WIRE_41;
wire	SYNTHESIZED_WIRE_42;
wire	SYNTHESIZED_WIRE_27;
wire	SYNTHESIZED_WIRE_28;
wire	SYNTHESIZED_WIRE_29;
wire	SYNTHESIZED_WIRE_30;
wire	SYNTHESIZED_WIRE_32;





Adder	b2v_inst(
	.B(FLOW),
	.C(FHIGH),
	.A0(SYNTHESIZED_WIRE_0),
	.A1(SYNTHESIZED_WIRE_1),
	.A2(SYNTHESIZED_WIRE_2),
	.A3(SYNTHESIZED_WIRE_3),
	.Z0(SYNTHESIZED_WIRE_37),
	.Z1(SYNTHESIZED_WIRE_36),
	.Z2(SYNTHESIZED_WIRE_35),
	.Z3(SYNTHESIZED_WIRE_34)
	);

assign	SYNTHESIZED_WIRE_32 = SYNTHESIZED_WIRE_33 | CLRN;


ECE_272_Lab_3	b2v_inst10(
	.X(FLOW),
	.A0(SYNTHESIZED_WIRE_34),
	.A1(SYNTHESIZED_WIRE_35),
	.A2(SYNTHESIZED_WIRE_36),
	.A3(SYNTHESIZED_WIRE_37),
	.a(Aa),
	.b(Ab),
	.c(Ac),
	.d(Ad),
	.e(Ae),
	.f(Af),
	.g(Ag));

assign	SYNTHESIZED_WIRE_33 = SYNTHESIZED_WIRE_36 & SYNTHESIZED_WIRE_34;


Register	b2v_inst21(
	.CLK(SYNTHESIZED_WIRE_11),
	.A0(SYNTHESIZED_WIRE_37),
	.A1(SYNTHESIZED_WIRE_36),
	.A2(SYNTHESIZED_WIRE_35),
	.A3(SYNTHESIZED_WIRE_34),
	.CLRN(SYNTHESIZED_WIRE_16),
	.Z0(SYNTHESIZED_WIRE_0),
	.Z1(SYNTHESIZED_WIRE_1),
	.Z2(SYNTHESIZED_WIRE_2),
	.Z3(SYNTHESIZED_WIRE_3));


Register	b2v_inst22(
	.CLK(SYNTHESIZED_WIRE_33),
	.A0(SYNTHESIZED_WIRE_38),
	.A1(SYNTHESIZED_WIRE_39),
	.A2(SYNTHESIZED_WIRE_40),
	.A3(SYNTHESIZED_WIRE_41),
	.CLRN(SYNTHESIZED_WIRE_42),
	.Z0(SYNTHESIZED_WIRE_27),
	.Z1(SYNTHESIZED_WIRE_28),
	.Z2(SYNTHESIZED_WIRE_29),
	.Z3(SYNTHESIZED_WIRE_30));


ECE_272_Lab_3	b2v_inst24(
	.X(FLOW),
	.A0(SYNTHESIZED_WIRE_41),
	.A1(SYNTHESIZED_WIRE_40),
	.A2(SYNTHESIZED_WIRE_39),
	.A3(SYNTHESIZED_WIRE_38),
	.a(Ba),
	.b(Bb),
	.c(Bc),
	.d(Bd),
	.e(Be),
	.f(Bf),
	.g(Bg));


Adder	b2v_inst25(
	.B(FLOW),
	.C(FHIGH),
	.A0(SYNTHESIZED_WIRE_27),
	.A1(SYNTHESIZED_WIRE_28),
	.A2(SYNTHESIZED_WIRE_29),
	.A3(SYNTHESIZED_WIRE_30),
	.Z0(SYNTHESIZED_WIRE_38),
	.Z1(SYNTHESIZED_WIRE_39),
	.Z2(SYNTHESIZED_WIRE_40),
	.Z3(SYNTHESIZED_WIRE_41)
	);


Frequency_Divider	b2v_inst3(
	.CLK(CLK),
	.CLRN(SYNTHESIZED_WIRE_42),
	.ZCLK(SYNTHESIZED_WIRE_11));

assign	SYNTHESIZED_WIRE_16 = ~(SYNTHESIZED_WIRE_32 & FHIGH);

assign	SYNTHESIZED_WIRE_42 =  ~CLRN;


endmodule
