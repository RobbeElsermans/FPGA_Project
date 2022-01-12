// Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2016.4 (lin64) Build 1756540 Mon Jan 23 19:11:19 MST 2017
// Date        : Wed Jan 12 16:43:24 2022
// Host        : the-beast running 64-bit Ubuntu 20.04.3 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/robbe/Desktop/Github/FPGA_Project/code/Zybo-Z7-20-pcam-5c-2016.4-1_original/Zybo-Z7-20-pcam-5c/src/bd/system/ip/system_concater_0_1/system_concater_0_1_sim_netlist.v
// Design      : system_concater_0_1
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "system_concater_0_1,concater,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "concater,Vivado 2016.4" *) 
(* NotValidForBitStream *)
module system_concater_0_1
   (data_in,
    data_out,
    rest,
    selector);
  input [7:0]data_in;
  output [23:0]data_out;
  input [23:0]rest;
  input [1:0]selector;

  wire [7:0]data_in;
  wire [23:0]data_out;
  wire [23:0]rest;
  wire [1:0]selector;

  system_concater_0_1_concater U0
       (.data_in(data_in),
        .data_out(data_out),
        .rest(rest),
        .selector(selector));
endmodule

(* ORIG_REF_NAME = "concater" *) 
module system_concater_0_1_concater
   (data_out,
    rest,
    selector,
    data_in);
  output [23:0]data_out;
  input [23:0]rest;
  input [1:0]selector;
  input [7:0]data_in;

  wire [7:0]data_in;
  wire [23:0]data_out;
  wire [23:0]rest;
  wire [1:0]selector;

  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'hABA8)) 
    \data_out[0]_INST_0 
       (.I0(rest[0]),
        .I1(selector[1]),
        .I2(selector[0]),
        .I3(data_in[0]),
        .O(data_out[0]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'hCCAC)) 
    \data_out[10]_INST_0 
       (.I0(data_in[2]),
        .I1(rest[10]),
        .I2(selector[0]),
        .I3(selector[1]),
        .O(data_out[10]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'hCCAC)) 
    \data_out[11]_INST_0 
       (.I0(data_in[3]),
        .I1(rest[11]),
        .I2(selector[0]),
        .I3(selector[1]),
        .O(data_out[11]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'hCCAC)) 
    \data_out[12]_INST_0 
       (.I0(data_in[4]),
        .I1(rest[12]),
        .I2(selector[0]),
        .I3(selector[1]),
        .O(data_out[12]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'hCCAC)) 
    \data_out[13]_INST_0 
       (.I0(data_in[5]),
        .I1(rest[13]),
        .I2(selector[0]),
        .I3(selector[1]),
        .O(data_out[13]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'hCCAC)) 
    \data_out[14]_INST_0 
       (.I0(data_in[6]),
        .I1(rest[14]),
        .I2(selector[0]),
        .I3(selector[1]),
        .O(data_out[14]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'hCCAC)) 
    \data_out[15]_INST_0 
       (.I0(data_in[7]),
        .I1(rest[15]),
        .I2(selector[0]),
        .I3(selector[1]),
        .O(data_out[15]));
  LUT4 #(
    .INIT(16'hAEA2)) 
    \data_out[16]_INST_0 
       (.I0(rest[16]),
        .I1(selector[1]),
        .I2(selector[0]),
        .I3(data_in[0]),
        .O(data_out[16]));
  LUT4 #(
    .INIT(16'hAEA2)) 
    \data_out[17]_INST_0 
       (.I0(rest[17]),
        .I1(selector[1]),
        .I2(selector[0]),
        .I3(data_in[1]),
        .O(data_out[17]));
  LUT4 #(
    .INIT(16'hAEA2)) 
    \data_out[18]_INST_0 
       (.I0(rest[18]),
        .I1(selector[1]),
        .I2(selector[0]),
        .I3(data_in[2]),
        .O(data_out[18]));
  LUT4 #(
    .INIT(16'hAEA2)) 
    \data_out[19]_INST_0 
       (.I0(rest[19]),
        .I1(selector[1]),
        .I2(selector[0]),
        .I3(data_in[3]),
        .O(data_out[19]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hABA8)) 
    \data_out[1]_INST_0 
       (.I0(rest[1]),
        .I1(selector[1]),
        .I2(selector[0]),
        .I3(data_in[1]),
        .O(data_out[1]));
  LUT4 #(
    .INIT(16'hAEA2)) 
    \data_out[20]_INST_0 
       (.I0(rest[20]),
        .I1(selector[1]),
        .I2(selector[0]),
        .I3(data_in[4]),
        .O(data_out[20]));
  LUT4 #(
    .INIT(16'hAEA2)) 
    \data_out[21]_INST_0 
       (.I0(rest[21]),
        .I1(selector[1]),
        .I2(selector[0]),
        .I3(data_in[5]),
        .O(data_out[21]));
  LUT4 #(
    .INIT(16'hAEA2)) 
    \data_out[22]_INST_0 
       (.I0(rest[22]),
        .I1(selector[1]),
        .I2(selector[0]),
        .I3(data_in[6]),
        .O(data_out[22]));
  LUT4 #(
    .INIT(16'hAEA2)) 
    \data_out[23]_INST_0 
       (.I0(rest[23]),
        .I1(selector[1]),
        .I2(selector[0]),
        .I3(data_in[7]),
        .O(data_out[23]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'hABA8)) 
    \data_out[2]_INST_0 
       (.I0(rest[2]),
        .I1(selector[1]),
        .I2(selector[0]),
        .I3(data_in[2]),
        .O(data_out[2]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'hABA8)) 
    \data_out[3]_INST_0 
       (.I0(rest[3]),
        .I1(selector[1]),
        .I2(selector[0]),
        .I3(data_in[3]),
        .O(data_out[3]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'hABA8)) 
    \data_out[4]_INST_0 
       (.I0(rest[4]),
        .I1(selector[1]),
        .I2(selector[0]),
        .I3(data_in[4]),
        .O(data_out[4]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'hABA8)) 
    \data_out[5]_INST_0 
       (.I0(rest[5]),
        .I1(selector[1]),
        .I2(selector[0]),
        .I3(data_in[5]),
        .O(data_out[5]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'hABA8)) 
    \data_out[6]_INST_0 
       (.I0(rest[6]),
        .I1(selector[1]),
        .I2(selector[0]),
        .I3(data_in[6]),
        .O(data_out[6]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'hABA8)) 
    \data_out[7]_INST_0 
       (.I0(rest[7]),
        .I1(selector[1]),
        .I2(selector[0]),
        .I3(data_in[7]),
        .O(data_out[7]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'hCCAC)) 
    \data_out[8]_INST_0 
       (.I0(data_in[0]),
        .I1(rest[8]),
        .I2(selector[0]),
        .I3(selector[1]),
        .O(data_out[8]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hCCAC)) 
    \data_out[9]_INST_0 
       (.I0(data_in[1]),
        .I1(rest[9]),
        .I2(selector[0]),
        .I3(selector[1]),
        .O(data_out[9]));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (weak1, weak0) GSR = GSR_int;
    assign (weak1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
