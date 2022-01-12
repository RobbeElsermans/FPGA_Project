// Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2016.4 (lin64) Build 1756540 Mon Jan 23 19:11:19 MST 2017
// Date        : Wed Jan 12 16:43:24 2022
// Host        : the-beast running 64-bit Ubuntu 20.04.3 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/robbe/Desktop/Github/FPGA_Project/code/Zybo-Z7-20-pcam-5c-2016.4-1_original/Zybo-Z7-20-pcam-5c/src/bd/system/ip/system_shifter_0_0/system_shifter_0_0_sim_netlist.v
// Design      : system_shifter_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "system_shifter_0_0,shifter,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "shifter,Vivado 2016.4" *) 
(* NotValidForBitStream *)
module system_shifter_0_0
   (data_in,
    data_out,
    rest,
    selector);
  input [23:0]data_in;
  output [7:0]data_out;
  output [23:0]rest;
  input [1:0]selector;

  wire [23:0]data_in;
  wire [7:0]data_out;
  wire [23:0]rest;
  wire [1:0]selector;

  system_shifter_0_0_shifter U0
       (.data_in(data_in),
        .data_out(data_out),
        .rest(rest),
        .selector(selector));
endmodule

(* ORIG_REF_NAME = "shifter" *) 
module system_shifter_0_0_shifter
   (rest,
    data_out,
    data_in,
    selector);
  output [23:0]rest;
  output [7:0]data_out;
  input [23:0]data_in;
  input [1:0]selector;

  wire [23:0]data_in;
  wire [7:0]data_out;
  wire [23:0]rest;
  wire \rest_reg[0]_i_1_n_0 ;
  wire \rest_reg[10]_i_1_n_0 ;
  wire \rest_reg[11]_i_1_n_0 ;
  wire \rest_reg[12]_i_1_n_0 ;
  wire \rest_reg[13]_i_1_n_0 ;
  wire \rest_reg[14]_i_1_n_0 ;
  wire \rest_reg[15]_i_1_n_0 ;
  wire \rest_reg[16]_i_1_n_0 ;
  wire \rest_reg[17]_i_1_n_0 ;
  wire \rest_reg[18]_i_1_n_0 ;
  wire \rest_reg[19]_i_1_n_0 ;
  wire \rest_reg[1]_i_1_n_0 ;
  wire \rest_reg[20]_i_1_n_0 ;
  wire \rest_reg[21]_i_1_n_0 ;
  wire \rest_reg[22]_i_1_n_0 ;
  wire \rest_reg[23]_i_1_n_0 ;
  wire \rest_reg[23]_i_2_n_0 ;
  wire \rest_reg[2]_i_1_n_0 ;
  wire \rest_reg[3]_i_1_n_0 ;
  wire \rest_reg[4]_i_1_n_0 ;
  wire \rest_reg[5]_i_1_n_0 ;
  wire \rest_reg[6]_i_1_n_0 ;
  wire \rest_reg[7]_i_1_n_0 ;
  wire \rest_reg[8]_i_1_n_0 ;
  wire \rest_reg[9]_i_1_n_0 ;
  wire [1:0]selector;

  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hFFACF0AC)) 
    \data_out[0]_INST_0 
       (.I0(data_in[16]),
        .I1(data_in[0]),
        .I2(selector[1]),
        .I3(selector[0]),
        .I4(data_in[8]),
        .O(data_out[0]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hFFACF0AC)) 
    \data_out[1]_INST_0 
       (.I0(data_in[17]),
        .I1(data_in[1]),
        .I2(selector[1]),
        .I3(selector[0]),
        .I4(data_in[9]),
        .O(data_out[1]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'hFFACF0AC)) 
    \data_out[2]_INST_0 
       (.I0(data_in[18]),
        .I1(data_in[2]),
        .I2(selector[1]),
        .I3(selector[0]),
        .I4(data_in[10]),
        .O(data_out[2]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'hFFACF0AC)) 
    \data_out[3]_INST_0 
       (.I0(data_in[19]),
        .I1(data_in[3]),
        .I2(selector[1]),
        .I3(selector[0]),
        .I4(data_in[11]),
        .O(data_out[3]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'hFFACF0AC)) 
    \data_out[4]_INST_0 
       (.I0(data_in[20]),
        .I1(data_in[4]),
        .I2(selector[1]),
        .I3(selector[0]),
        .I4(data_in[12]),
        .O(data_out[4]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'hFFACF0AC)) 
    \data_out[5]_INST_0 
       (.I0(data_in[21]),
        .I1(data_in[5]),
        .I2(selector[1]),
        .I3(selector[0]),
        .I4(data_in[13]),
        .O(data_out[5]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'hFFACF0AC)) 
    \data_out[6]_INST_0 
       (.I0(data_in[22]),
        .I1(data_in[6]),
        .I2(selector[1]),
        .I3(selector[0]),
        .I4(data_in[14]),
        .O(data_out[6]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'hFFACF0AC)) 
    \data_out[7]_INST_0 
       (.I0(data_in[23]),
        .I1(data_in[7]),
        .I2(selector[1]),
        .I3(selector[0]),
        .I4(data_in[15]),
        .O(data_out[7]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \rest_reg[0] 
       (.CLR(1'b0),
        .D(\rest_reg[0]_i_1_n_0 ),
        .G(\rest_reg[23]_i_2_n_0 ),
        .GE(1'b1),
        .Q(rest[0]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \rest_reg[0]_i_1 
       (.I0(data_in[0]),
        .I1(selector[0]),
        .I2(selector[1]),
        .O(\rest_reg[0]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \rest_reg[10] 
       (.CLR(1'b0),
        .D(\rest_reg[10]_i_1_n_0 ),
        .G(\rest_reg[23]_i_2_n_0 ),
        .GE(1'b1),
        .Q(rest[10]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \rest_reg[10]_i_1 
       (.I0(data_in[10]),
        .I1(selector[0]),
        .O(\rest_reg[10]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \rest_reg[11] 
       (.CLR(1'b0),
        .D(\rest_reg[11]_i_1_n_0 ),
        .G(\rest_reg[23]_i_2_n_0 ),
        .GE(1'b1),
        .Q(rest[11]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \rest_reg[11]_i_1 
       (.I0(data_in[11]),
        .I1(selector[0]),
        .O(\rest_reg[11]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \rest_reg[12] 
       (.CLR(1'b0),
        .D(\rest_reg[12]_i_1_n_0 ),
        .G(\rest_reg[23]_i_2_n_0 ),
        .GE(1'b1),
        .Q(rest[12]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \rest_reg[12]_i_1 
       (.I0(data_in[12]),
        .I1(selector[0]),
        .O(\rest_reg[12]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \rest_reg[13] 
       (.CLR(1'b0),
        .D(\rest_reg[13]_i_1_n_0 ),
        .G(\rest_reg[23]_i_2_n_0 ),
        .GE(1'b1),
        .Q(rest[13]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \rest_reg[13]_i_1 
       (.I0(data_in[13]),
        .I1(selector[0]),
        .O(\rest_reg[13]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \rest_reg[14] 
       (.CLR(1'b0),
        .D(\rest_reg[14]_i_1_n_0 ),
        .G(\rest_reg[23]_i_2_n_0 ),
        .GE(1'b1),
        .Q(rest[14]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \rest_reg[14]_i_1 
       (.I0(data_in[14]),
        .I1(selector[0]),
        .O(\rest_reg[14]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \rest_reg[15] 
       (.CLR(1'b0),
        .D(\rest_reg[15]_i_1_n_0 ),
        .G(\rest_reg[23]_i_2_n_0 ),
        .GE(1'b1),
        .Q(rest[15]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \rest_reg[15]_i_1 
       (.I0(data_in[15]),
        .I1(selector[0]),
        .O(\rest_reg[15]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \rest_reg[16] 
       (.CLR(1'b0),
        .D(\rest_reg[16]_i_1_n_0 ),
        .G(\rest_reg[23]_i_2_n_0 ),
        .GE(1'b1),
        .Q(rest[16]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \rest_reg[16]_i_1 
       (.I0(data_in[16]),
        .I1(selector[1]),
        .O(\rest_reg[16]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \rest_reg[17] 
       (.CLR(1'b0),
        .D(\rest_reg[17]_i_1_n_0 ),
        .G(\rest_reg[23]_i_2_n_0 ),
        .GE(1'b1),
        .Q(rest[17]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \rest_reg[17]_i_1 
       (.I0(data_in[17]),
        .I1(selector[1]),
        .O(\rest_reg[17]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \rest_reg[18] 
       (.CLR(1'b0),
        .D(\rest_reg[18]_i_1_n_0 ),
        .G(\rest_reg[23]_i_2_n_0 ),
        .GE(1'b1),
        .Q(rest[18]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \rest_reg[18]_i_1 
       (.I0(data_in[18]),
        .I1(selector[1]),
        .O(\rest_reg[18]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \rest_reg[19] 
       (.CLR(1'b0),
        .D(\rest_reg[19]_i_1_n_0 ),
        .G(\rest_reg[23]_i_2_n_0 ),
        .GE(1'b1),
        .Q(rest[19]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \rest_reg[19]_i_1 
       (.I0(data_in[19]),
        .I1(selector[1]),
        .O(\rest_reg[19]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \rest_reg[1] 
       (.CLR(1'b0),
        .D(\rest_reg[1]_i_1_n_0 ),
        .G(\rest_reg[23]_i_2_n_0 ),
        .GE(1'b1),
        .Q(rest[1]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \rest_reg[1]_i_1 
       (.I0(data_in[1]),
        .I1(selector[0]),
        .I2(selector[1]),
        .O(\rest_reg[1]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \rest_reg[20] 
       (.CLR(1'b0),
        .D(\rest_reg[20]_i_1_n_0 ),
        .G(\rest_reg[23]_i_2_n_0 ),
        .GE(1'b1),
        .Q(rest[20]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \rest_reg[20]_i_1 
       (.I0(data_in[20]),
        .I1(selector[1]),
        .O(\rest_reg[20]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \rest_reg[21] 
       (.CLR(1'b0),
        .D(\rest_reg[21]_i_1_n_0 ),
        .G(\rest_reg[23]_i_2_n_0 ),
        .GE(1'b1),
        .Q(rest[21]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \rest_reg[21]_i_1 
       (.I0(data_in[21]),
        .I1(selector[1]),
        .O(\rest_reg[21]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \rest_reg[22] 
       (.CLR(1'b0),
        .D(\rest_reg[22]_i_1_n_0 ),
        .G(\rest_reg[23]_i_2_n_0 ),
        .GE(1'b1),
        .Q(rest[22]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \rest_reg[22]_i_1 
       (.I0(data_in[22]),
        .I1(selector[1]),
        .O(\rest_reg[22]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \rest_reg[23] 
       (.CLR(1'b0),
        .D(\rest_reg[23]_i_1_n_0 ),
        .G(\rest_reg[23]_i_2_n_0 ),
        .GE(1'b1),
        .Q(rest[23]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \rest_reg[23]_i_1 
       (.I0(data_in[23]),
        .I1(selector[1]),
        .O(\rest_reg[23]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \rest_reg[23]_i_2 
       (.I0(selector[0]),
        .I1(selector[1]),
        .O(\rest_reg[23]_i_2_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \rest_reg[2] 
       (.CLR(1'b0),
        .D(\rest_reg[2]_i_1_n_0 ),
        .G(\rest_reg[23]_i_2_n_0 ),
        .GE(1'b1),
        .Q(rest[2]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \rest_reg[2]_i_1 
       (.I0(data_in[2]),
        .I1(selector[0]),
        .I2(selector[1]),
        .O(\rest_reg[2]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \rest_reg[3] 
       (.CLR(1'b0),
        .D(\rest_reg[3]_i_1_n_0 ),
        .G(\rest_reg[23]_i_2_n_0 ),
        .GE(1'b1),
        .Q(rest[3]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \rest_reg[3]_i_1 
       (.I0(data_in[3]),
        .I1(selector[0]),
        .I2(selector[1]),
        .O(\rest_reg[3]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \rest_reg[4] 
       (.CLR(1'b0),
        .D(\rest_reg[4]_i_1_n_0 ),
        .G(\rest_reg[23]_i_2_n_0 ),
        .GE(1'b1),
        .Q(rest[4]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \rest_reg[4]_i_1 
       (.I0(data_in[4]),
        .I1(selector[0]),
        .I2(selector[1]),
        .O(\rest_reg[4]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \rest_reg[5] 
       (.CLR(1'b0),
        .D(\rest_reg[5]_i_1_n_0 ),
        .G(\rest_reg[23]_i_2_n_0 ),
        .GE(1'b1),
        .Q(rest[5]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \rest_reg[5]_i_1 
       (.I0(data_in[5]),
        .I1(selector[0]),
        .I2(selector[1]),
        .O(\rest_reg[5]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \rest_reg[6] 
       (.CLR(1'b0),
        .D(\rest_reg[6]_i_1_n_0 ),
        .G(\rest_reg[23]_i_2_n_0 ),
        .GE(1'b1),
        .Q(rest[6]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \rest_reg[6]_i_1 
       (.I0(data_in[6]),
        .I1(selector[0]),
        .I2(selector[1]),
        .O(\rest_reg[6]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \rest_reg[7] 
       (.CLR(1'b0),
        .D(\rest_reg[7]_i_1_n_0 ),
        .G(\rest_reg[23]_i_2_n_0 ),
        .GE(1'b1),
        .Q(rest[7]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \rest_reg[7]_i_1 
       (.I0(data_in[7]),
        .I1(selector[0]),
        .I2(selector[1]),
        .O(\rest_reg[7]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \rest_reg[8] 
       (.CLR(1'b0),
        .D(\rest_reg[8]_i_1_n_0 ),
        .G(\rest_reg[23]_i_2_n_0 ),
        .GE(1'b1),
        .Q(rest[8]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \rest_reg[8]_i_1 
       (.I0(data_in[8]),
        .I1(selector[0]),
        .O(\rest_reg[8]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \rest_reg[9] 
       (.CLR(1'b0),
        .D(\rest_reg[9]_i_1_n_0 ),
        .G(\rest_reg[23]_i_2_n_0 ),
        .GE(1'b1),
        .Q(rest[9]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \rest_reg[9]_i_1 
       (.I0(data_in[9]),
        .I1(selector[0]),
        .O(\rest_reg[9]_i_1_n_0 ));
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
