// Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2016.4 (win64) Build 1756540 Mon Jan 23 19:11:23 MST 2017
// Date        : Thu Dec 23 15:26:07 2021
// Host        : ELZA running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/Users/robel/GitHub/FPGA_Project/code/demoProject/Zybo-Z7-20-pcam-5c-2016.4-1_original/Zybo-Z7-20-pcam-5c/src/bd/system/ip/system_xlconcat_1_0/system_xlconcat_1_0_stub.v
// Design      : system_xlconcat_1_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "xlconcat,Vivado 2016.4" *)
module system_xlconcat_1_0(In0, In1, In2, dout)
/* synthesis syn_black_box black_box_pad_pin="In0[7:0],In1[7:0],In2[7:0],dout[23:0]" */;
  input [7:0]In0;
  input [7:0]In1;
  input [7:0]In2;
  output [23:0]dout;
endmodule
