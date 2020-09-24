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
// CREATED		"Thu May 14 17:42:06 2020"

module Register(
	CLK,
	A0,
	A1,
	A2,
	A3,
	CLRN,
	Z0,
	Z1,
	Z2,
	Z3
);


input wire	CLK;
input wire	A0;
input wire	A1;
input wire	A2;
input wire	A3;
input wire	CLRN;
output reg	Z0;
output reg	Z1;
output reg	Z2;
output reg	Z3;






always@(posedge CLK or negedge CLRN)
begin
if (!CLRN)
	begin
	Z0 <= 0;
	end
else
	begin
	Z0 <= A0;
	end
end


always@(posedge CLK or negedge CLRN)
begin
if (!CLRN)
	begin
	Z1 <= 0;
	end
else
	begin
	Z1 <= A1;
	end
end


always@(posedge CLK or negedge CLRN)
begin
if (!CLRN)
	begin
	Z2 <= 0;
	end
else
	begin
	Z2 <= A2;
	end
end


always@(posedge CLK or negedge CLRN)
begin
if (!CLRN)
	begin
	Z3 <= 0;
	end
else
	begin
	Z3 <= A3;
	end
end


endmodule
