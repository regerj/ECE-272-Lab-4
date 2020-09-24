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
// CREATED		"Thu May 14 20:55:38 2020"

module Test_CLK_DIV(
	CLK,
	PRN,
	CLRN,
	ZCLK
);


input wire	CLK;
input wire	PRN;
input wire	CLRN;
output wire	ZCLK;

wire	SYNTHESIZED_WIRE_0;
reg	DFF_inst;

assign	ZCLK = DFF_inst;




always@(posedge CLK or negedge CLRN or negedge PRN)
begin
if (!CLRN)
	begin
	DFF_inst <= 0;
	end
else
if (!PRN)
	begin
	DFF_inst <= 1;
	end
else
	begin
	DFF_inst <= SYNTHESIZED_WIRE_0;
	end
end

assign	SYNTHESIZED_WIRE_0 =  ~DFF_inst;


endmodule
