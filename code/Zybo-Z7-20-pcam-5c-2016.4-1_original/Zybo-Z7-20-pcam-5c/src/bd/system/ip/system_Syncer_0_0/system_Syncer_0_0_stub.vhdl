-- Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2016.4 (lin64) Build 1756540 Mon Jan 23 19:11:19 MST 2017
-- Date        : Sun Jan  2 14:27:54 2022
-- Host        : the-beast running 64-bit Ubuntu 20.04.3 LTS
-- Command     : write_vhdl -force -mode synth_stub
--               /home/robbe/Desktop/Github/FPGA_Project/code/Zybo-Z7-20-pcam-5c-2016.4-1_original/Zybo-Z7-20-pcam-5c/src/bd/system/ip/system_Syncer_0_0/system_Syncer_0_0_stub.vhdl
-- Design      : system_Syncer_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity system_Syncer_0_0 is
  Port ( 
    valid_in : in STD_LOGIC;
    data_in : in STD_LOGIC_VECTOR ( 23 downto 0 );
    data_out : out STD_LOGIC_VECTOR ( 23 downto 0 );
    valid_out : out STD_LOGIC;
    tuser_in : in STD_LOGIC;
    tuser_out : out STD_LOGIC;
    tlast_in : in STD_LOGIC;
    tlast_out : out STD_LOGIC;
    tready_in : out STD_LOGIC;
    tready_out : in STD_LOGIC;
    clk : in STD_LOGIC;
    selector : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );

end system_Syncer_0_0;

architecture stub of system_Syncer_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "valid_in,data_in[23:0],data_out[23:0],valid_out,tuser_in,tuser_out,tlast_in,tlast_out,tready_in,tready_out,clk,selector[3:0]";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "Syncer,Vivado 2016.4";
begin
end;
