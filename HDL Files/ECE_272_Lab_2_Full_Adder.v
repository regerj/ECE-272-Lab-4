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
// CREATED		"Thu May 14 17:40:53 2020"

module ECE_272_Lab_2_Full_Adder(
	Cin,
	A,
	B,
	Sum,
	Cout
);


input wire	Cin;
input wire	A;
input wire	B;
output wire	Sum;
output wire	Cout;

wire	SYNTHESIZED_WIRE_0;
wire	SYNTHESIZED_WIRE_1;
wire	SYNTHESIZED_WIRE_2;





ECE_272_Lab_2_Half_Adder	b2v_inst(
	.A(Cin),
	.B(SYNTHESIZED_WIRE_0),
	.Z(Sum),
	.C(SYNTHESIZED_WIRE_2));


ECE_272_Lab_2_Half_Adder	b2v_inst1(
	.A(A),
	.B(B),
	.Z(SYNTHESIZED_WIRE_0),
	.C(SYNTHESIZED_WIRE_1));

assign	Cout = SYNTHESIZED_WIRE_1 | SYNTHESIZED_WIRE_2;


endmodule
