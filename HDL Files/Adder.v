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
// CREATED		"Thu May 14 17:39:45 2020"

module Adder(
	B,
	C,
	A0,
	A1,
	A2,
	A3,
	Z0,
	Z1,
	Z2,
	Z3,
	Z4
);


input wire	B;
input wire	C;
input wire	A0;
input wire	A1;
input wire	A2;
input wire	A3;
output wire	Z0;
output wire	Z1;
output wire	Z2;
output wire	Z3;
output wire	Z4;

wire	SYNTHESIZED_WIRE_0;
wire	SYNTHESIZED_WIRE_1;
wire	SYNTHESIZED_WIRE_2;





ECE_272_Lab_2_Full_Adder	b2v_inst(
	.Cin(C),
	.A(A0),
	.B(B),
	.Sum(Z0),
	.Cout(SYNTHESIZED_WIRE_0));


ECE_272_Lab_2_Full_Adder	b2v_inst3(
	.Cin(SYNTHESIZED_WIRE_0),
	.A(A1),
	.B(B),
	.Sum(Z1),
	.Cout(SYNTHESIZED_WIRE_1));


ECE_272_Lab_2_Full_Adder	b2v_inst4(
	.Cin(SYNTHESIZED_WIRE_1),
	.A(A2),
	.B(B),
	.Sum(Z2),
	.Cout(SYNTHESIZED_WIRE_2));


ECE_272_Lab_2_Full_Adder	b2v_inst5(
	.Cin(SYNTHESIZED_WIRE_2),
	.A(A3),
	.B(B),
	.Sum(Z3),
	.Cout(Z4));


endmodule
