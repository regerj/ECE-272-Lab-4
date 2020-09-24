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
// CREATED		"Thu May 14 21:16:02 2020"

module Frequency_Divider(
	CLK,
	CLRN,
	ZCLK
);


input wire	CLK;
input wire	CLRN;
output wire	ZCLK;

reg	DFF_inst16;
wire	SYNTHESIZED_WIRE_43;
wire	SYNTHESIZED_WIRE_44;
wire	SYNTHESIZED_WIRE_45;
wire	SYNTHESIZED_WIRE_46;
wire	SYNTHESIZED_WIRE_47;
wire	SYNTHESIZED_WIRE_48;
wire	SYNTHESIZED_WIRE_49;
reg	DFF_inst17;
reg	DFF_inst18;
reg	DFF_inst19;
reg	DFF_inst20;
reg	DFF_inst21;
reg	DFF_inst22;
wire	SYNTHESIZED_WIRE_50;
reg	DFF_inst29;
wire	SYNTHESIZED_WIRE_51;
reg	DFF_inst31;
wire	SYNTHESIZED_WIRE_52;
reg	DFF_inst33;
wire	SYNTHESIZED_WIRE_53;
reg	DFF_inst35;
wire	SYNTHESIZED_WIRE_54;
reg	DFF_inst37;
wire	SYNTHESIZED_WIRE_55;
reg	DFF_inst39;
wire	SYNTHESIZED_WIRE_56;
reg	DFF_inst41;
wire	SYNTHESIZED_WIRE_57;
reg	DFF_inst43;
wire	SYNTHESIZED_WIRE_58;
reg	DFF_inst45;
wire	SYNTHESIZED_WIRE_59;
wire	SYNTHESIZED_WIRE_60;
reg	DFF_inst47;
reg	DFF_inst48;
wire	SYNTHESIZED_WIRE_61;
reg	DFF_inst51;
wire	SYNTHESIZED_WIRE_62;
reg	DFF_inst53;
wire	SYNTHESIZED_WIRE_63;
reg	DFF_inst55;
wire	SYNTHESIZED_WIRE_42;
reg	DFF_inst57;

assign	ZCLK = DFF_inst57;



assign	SYNTHESIZED_WIRE_43 =  ~DFF_inst16;


always@(posedge CLK or negedge CLRN)
begin
if (!CLRN)
	begin
	DFF_inst16 <= 0;
	end
else
	begin
	DFF_inst16 <= SYNTHESIZED_WIRE_43;
	end
end


always@(posedge SYNTHESIZED_WIRE_43 or negedge CLRN)
begin
if (!CLRN)
	begin
	DFF_inst17 <= 0;
	end
else
	begin
	DFF_inst17 <= SYNTHESIZED_WIRE_44;
	end
end


always@(posedge SYNTHESIZED_WIRE_44 or negedge CLRN)
begin
if (!CLRN)
	begin
	DFF_inst18 <= 0;
	end
else
	begin
	DFF_inst18 <= SYNTHESIZED_WIRE_45;
	end
end


always@(posedge SYNTHESIZED_WIRE_45 or negedge CLRN)
begin
if (!CLRN)
	begin
	DFF_inst19 <= 0;
	end
else
	begin
	DFF_inst19 <= SYNTHESIZED_WIRE_46;
	end
end


always@(posedge SYNTHESIZED_WIRE_46 or negedge CLRN)
begin
if (!CLRN)
	begin
	DFF_inst20 <= 0;
	end
else
	begin
	DFF_inst20 <= SYNTHESIZED_WIRE_47;
	end
end


always@(posedge SYNTHESIZED_WIRE_47 or negedge CLRN)
begin
if (!CLRN)
	begin
	DFF_inst21 <= 0;
	end
else
	begin
	DFF_inst21 <= SYNTHESIZED_WIRE_48;
	end
end


always@(posedge SYNTHESIZED_WIRE_48 or negedge CLRN)
begin
if (!CLRN)
	begin
	DFF_inst22 <= 0;
	end
else
	begin
	DFF_inst22 <= SYNTHESIZED_WIRE_49;
	end
end

assign	SYNTHESIZED_WIRE_44 =  ~DFF_inst17;

assign	SYNTHESIZED_WIRE_45 =  ~DFF_inst18;

assign	SYNTHESIZED_WIRE_46 =  ~DFF_inst19;

assign	SYNTHESIZED_WIRE_47 =  ~DFF_inst20;

assign	SYNTHESIZED_WIRE_48 =  ~DFF_inst21;

assign	SYNTHESIZED_WIRE_49 =  ~DFF_inst22;


always@(posedge SYNTHESIZED_WIRE_49 or negedge CLRN)
begin
if (!CLRN)
	begin
	DFF_inst29 <= 0;
	end
else
	begin
	DFF_inst29 <= SYNTHESIZED_WIRE_50;
	end
end

assign	SYNTHESIZED_WIRE_50 =  ~DFF_inst29;


always@(posedge SYNTHESIZED_WIRE_50 or negedge CLRN)
begin
if (!CLRN)
	begin
	DFF_inst31 <= 0;
	end
else
	begin
	DFF_inst31 <= SYNTHESIZED_WIRE_51;
	end
end

assign	SYNTHESIZED_WIRE_51 =  ~DFF_inst31;


always@(posedge SYNTHESIZED_WIRE_51 or negedge CLRN)
begin
if (!CLRN)
	begin
	DFF_inst33 <= 0;
	end
else
	begin
	DFF_inst33 <= SYNTHESIZED_WIRE_52;
	end
end

assign	SYNTHESIZED_WIRE_52 =  ~DFF_inst33;


always@(posedge SYNTHESIZED_WIRE_52 or negedge CLRN)
begin
if (!CLRN)
	begin
	DFF_inst35 <= 0;
	end
else
	begin
	DFF_inst35 <= SYNTHESIZED_WIRE_53;
	end
end

assign	SYNTHESIZED_WIRE_53 =  ~DFF_inst35;


always@(posedge SYNTHESIZED_WIRE_53 or negedge CLRN)
begin
if (!CLRN)
	begin
	DFF_inst37 <= 0;
	end
else
	begin
	DFF_inst37 <= SYNTHESIZED_WIRE_54;
	end
end

assign	SYNTHESIZED_WIRE_54 =  ~DFF_inst37;


always@(posedge SYNTHESIZED_WIRE_54 or negedge CLRN)
begin
if (!CLRN)
	begin
	DFF_inst39 <= 0;
	end
else
	begin
	DFF_inst39 <= SYNTHESIZED_WIRE_55;
	end
end

assign	SYNTHESIZED_WIRE_55 =  ~DFF_inst39;


always@(posedge SYNTHESIZED_WIRE_55 or negedge CLRN)
begin
if (!CLRN)
	begin
	DFF_inst41 <= 0;
	end
else
	begin
	DFF_inst41 <= SYNTHESIZED_WIRE_56;
	end
end

assign	SYNTHESIZED_WIRE_56 =  ~DFF_inst41;


always@(posedge SYNTHESIZED_WIRE_56 or negedge CLRN)
begin
if (!CLRN)
	begin
	DFF_inst43 <= 0;
	end
else
	begin
	DFF_inst43 <= SYNTHESIZED_WIRE_57;
	end
end

assign	SYNTHESIZED_WIRE_57 =  ~DFF_inst43;


always@(posedge SYNTHESIZED_WIRE_57 or negedge CLRN)
begin
if (!CLRN)
	begin
	DFF_inst45 <= 0;
	end
else
	begin
	DFF_inst45 <= SYNTHESIZED_WIRE_58;
	end
end

assign	SYNTHESIZED_WIRE_58 =  ~DFF_inst45;


always@(posedge SYNTHESIZED_WIRE_58 or negedge CLRN)
begin
if (!CLRN)
	begin
	DFF_inst47 <= 0;
	end
else
	begin
	DFF_inst47 <= SYNTHESIZED_WIRE_59;
	end
end


always@(posedge SYNTHESIZED_WIRE_59 or negedge CLRN)
begin
if (!CLRN)
	begin
	DFF_inst48 <= 0;
	end
else
	begin
	DFF_inst48 <= SYNTHESIZED_WIRE_60;
	end
end

assign	SYNTHESIZED_WIRE_59 =  ~DFF_inst47;

assign	SYNTHESIZED_WIRE_60 =  ~DFF_inst48;


always@(posedge SYNTHESIZED_WIRE_60 or negedge CLRN)
begin
if (!CLRN)
	begin
	DFF_inst51 <= 0;
	end
else
	begin
	DFF_inst51 <= SYNTHESIZED_WIRE_61;
	end
end

assign	SYNTHESIZED_WIRE_61 =  ~DFF_inst51;


always@(posedge SYNTHESIZED_WIRE_61 or negedge CLRN)
begin
if (!CLRN)
	begin
	DFF_inst53 <= 0;
	end
else
	begin
	DFF_inst53 <= SYNTHESIZED_WIRE_62;
	end
end

assign	SYNTHESIZED_WIRE_62 =  ~DFF_inst53;


always@(posedge SYNTHESIZED_WIRE_62 or negedge CLRN)
begin
if (!CLRN)
	begin
	DFF_inst55 <= 0;
	end
else
	begin
	DFF_inst55 <= SYNTHESIZED_WIRE_63;
	end
end

assign	SYNTHESIZED_WIRE_63 =  ~DFF_inst55;


always@(posedge SYNTHESIZED_WIRE_63 or negedge CLRN)
begin
if (!CLRN)
	begin
	DFF_inst57 <= 0;
	end
else
	begin
	DFF_inst57 <= SYNTHESIZED_WIRE_42;
	end
end

assign	SYNTHESIZED_WIRE_42 =  ~DFF_inst57;


endmodule
