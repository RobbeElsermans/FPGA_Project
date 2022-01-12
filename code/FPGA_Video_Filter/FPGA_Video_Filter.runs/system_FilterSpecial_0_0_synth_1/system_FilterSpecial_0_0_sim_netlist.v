// Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2016.4 (lin64) Build 1756540 Mon Jan 23 19:11:19 MST 2017
// Date        : Wed Jan 12 16:57:58 2022
// Host        : the-beast running 64-bit Ubuntu 20.04.3 LTS
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ system_FilterSpecial_0_0_sim_netlist.v
// Design      : system_FilterSpecial_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_FilterSpecial
   (data_out,
    selector,
    data_in);
  output [7:0]data_out;
  input [1:0]selector;
  input [7:0]data_in;

  wire [7:0]data_in;
  wire [7:0]data_out;
  wire [1:0]selector;

  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \data_out[0]_INST_0 
       (.I0(selector[0]),
        .I1(data_in[0]),
        .I2(selector[1]),
        .O(data_out[0]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h9A)) 
    \data_out[1]_INST_0 
       (.I0(selector[0]),
        .I1(selector[1]),
        .I2(data_in[1]),
        .O(data_out[1]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \data_out[2]_INST_0 
       (.I0(selector[0]),
        .I1(data_in[2]),
        .I2(selector[1]),
        .O(data_out[2]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h9A)) 
    \data_out[3]_INST_0 
       (.I0(selector[0]),
        .I1(selector[1]),
        .I2(data_in[3]),
        .O(data_out[3]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hEC)) 
    \data_out[4]_INST_0 
       (.I0(selector[1]),
        .I1(data_in[4]),
        .I2(selector[0]),
        .O(data_out[4]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hBC)) 
    \data_out[5]_INST_0 
       (.I0(selector[1]),
        .I1(data_in[5]),
        .I2(selector[0]),
        .O(data_out[5]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hEC)) 
    \data_out[6]_INST_0 
       (.I0(selector[1]),
        .I1(data_in[6]),
        .I2(selector[0]),
        .O(data_out[6]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hBC)) 
    \data_out[7]_INST_0 
       (.I0(selector[1]),
        .I1(data_in[7]),
        .I2(selector[0]),
        .O(data_out[7]));
endmodule

(* CHECK_LICENSE_TYPE = "system_FilterSpecial_0_0,FilterSpecial,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "FilterSpecial,Vivado 2016.4" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (data_in,
    data_out,
    selector);
  input [7:0]data_in;
  output [7:0]data_out;
  input [1:0]selector;

  wire [7:0]data_in;
  wire [7:0]data_out;
  wire [1:0]selector;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_FilterSpecial U0
       (.data_in(data_in),
        .data_out(data_out),
        .selector(selector));
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
