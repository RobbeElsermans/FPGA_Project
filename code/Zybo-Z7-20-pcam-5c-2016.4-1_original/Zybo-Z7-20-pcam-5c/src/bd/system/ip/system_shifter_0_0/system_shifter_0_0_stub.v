// Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2016.4 (lin64) Build 1756540 Mon Jan 23 19:11:19 MST 2017
// Date        : Wed Jan 12 16:43:23 2022
// Host        : the-beast running 64-bit Ubuntu 20.04.3 LTS
// Command     : write_verilog -force -mode synth_stub
//               /home/robbe/Desktop/Github/FPGA_Project/code/Zybo-Z7-20-pcam-5c-2016.4-1_original/Zybo-Z7-20-pcam-5c/src/bd/system/ip/system_shifter_0_0/system_shifter_0_0_stub.v
// Design      : system_shifter_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "shifter,Vivado 2016.4" *)
module system_shifter_0_0(data_in, data_out, rest, selector)
/* synthesis syn_black_box black_box_pad_pin="data_in[23:0],data_out[7:0],rest[23:0],selector[1:0]" */;
  input [23:0]data_in;
  output [7:0]data_out;
  output [23:0]rest;
  input [1:0]selector;
endmodule
