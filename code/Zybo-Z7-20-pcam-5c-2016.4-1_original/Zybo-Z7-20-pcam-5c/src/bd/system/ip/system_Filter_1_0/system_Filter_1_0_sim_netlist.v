// Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2016.4 (win64) Build 1756540 Mon Jan 23 19:11:23 MST 2017
// Date        : Wed Dec 29 19:58:20 2021
// Host        : ELZA running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/robel/GitHub/FPGA_Project/code/demoProject/Zybo-Z7-20-pcam-5c-2016.4-1_original/Zybo-Z7-20-pcam-5c/src/bd/system/ip/system_Filter_1_0/system_Filter_1_0_sim_netlist.v
// Design      : system_Filter_1_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "system_Filter_1_0,Filter,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "Filter,Vivado 2016.4" *) 
(* NotValidForBitStream *)
module system_Filter_1_0
   (data_in,
    data_out,
    div);
  input [7:0]data_in;
  output [7:0]data_out;
  input [1:0]div;

  wire [7:0]data_in;
  wire [7:0]data_out;
  wire [1:0]div;

  system_Filter_1_0_Filter U0
       (.data_in(data_in),
        .data_out(data_out),
        .div(div));
endmodule

(* ORIG_REF_NAME = "Filter" *) 
module system_Filter_1_0_Filter
   (data_out,
    div,
    data_in);
  output [7:0]data_out;
  input [1:0]div;
  input [7:0]data_in;

  wire [7:0]data_in;
  wire [7:0]data_out;
  wire [1:0]div;

  LUT3 #(
    .INIT(8'h04)) 
    \data_out[0]_INST_0 
       (.I0(div[0]),
        .I1(data_in[0]),
        .I2(div[1]),
        .O(data_out[0]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h00E4)) 
    \data_out[1]_INST_0 
       (.I0(div[0]),
        .I1(data_in[1]),
        .I2(data_in[0]),
        .I3(div[1]),
        .O(data_out[1]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \data_out[2]_INST_0 
       (.I0(data_in[1]),
        .I1(div[0]),
        .I2(data_in[0]),
        .I3(div[1]),
        .I4(data_in[2]),
        .O(data_out[2]));
  LUT6 #(
    .INIT(64'hAACCAACCF0FFF000)) 
    \data_out[3]_INST_0 
       (.I0(data_in[0]),
        .I1(data_in[2]),
        .I2(data_in[1]),
        .I3(div[1]),
        .I4(data_in[3]),
        .I5(div[0]),
        .O(data_out[3]));
  LUT6 #(
    .INIT(64'hAACCAACCF0FFF000)) 
    \data_out[4]_INST_0 
       (.I0(data_in[1]),
        .I1(data_in[3]),
        .I2(data_in[2]),
        .I3(div[1]),
        .I4(data_in[4]),
        .I5(div[0]),
        .O(data_out[4]));
  LUT6 #(
    .INIT(64'hAACCAACCF0FFF000)) 
    \data_out[5]_INST_0 
       (.I0(data_in[2]),
        .I1(data_in[4]),
        .I2(data_in[3]),
        .I3(div[1]),
        .I4(data_in[5]),
        .I5(div[0]),
        .O(data_out[5]));
  LUT6 #(
    .INIT(64'hAACCAACCF0FFF000)) 
    \data_out[6]_INST_0 
       (.I0(data_in[3]),
        .I1(data_in[5]),
        .I2(data_in[4]),
        .I3(div[1]),
        .I4(data_in[6]),
        .I5(div[0]),
        .O(data_out[6]));
  LUT6 #(
    .INIT(64'hAACCAACCF0FFF000)) 
    \data_out[7]_INST_0 
       (.I0(data_in[4]),
        .I1(data_in[6]),
        .I2(data_in[5]),
        .I3(div[1]),
        .I4(data_in[7]),
        .I5(div[0]),
        .O(data_out[7]));
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
