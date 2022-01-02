// Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2016.4 (win64) Build 1756540 Mon Jan 23 19:11:23 MST 2017
// Date        : Thu Dec 23 15:26:06 2021
// Host        : ELZA running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top system_xlslice_0_1 -prefix
//               system_xlslice_0_1_ system_xlslice_2_0_stub.v
// Design      : system_xlslice_2_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "xlslice,Vivado 2016.4" *)
module system_xlslice_0_1(Din, Dout)
/* synthesis syn_black_box black_box_pad_pin="Din[23:0],Dout[7:0]" */;
  input [23:0]Din;
  output [7:0]Dout;
endmodule
