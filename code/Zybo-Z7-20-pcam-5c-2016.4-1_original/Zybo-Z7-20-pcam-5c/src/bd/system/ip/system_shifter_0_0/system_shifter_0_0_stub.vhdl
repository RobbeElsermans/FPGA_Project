-- Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2016.4 (lin64) Build 1756540 Mon Jan 23 19:11:19 MST 2017
-- Date        : Wed Jan 12 16:43:24 2022
-- Host        : the-beast running 64-bit Ubuntu 20.04.3 LTS
-- Command     : write_vhdl -force -mode synth_stub
--               /home/robbe/Desktop/Github/FPGA_Project/code/Zybo-Z7-20-pcam-5c-2016.4-1_original/Zybo-Z7-20-pcam-5c/src/bd/system/ip/system_shifter_0_0/system_shifter_0_0_stub.vhdl
-- Design      : system_shifter_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity system_shifter_0_0 is
  Port ( 
    data_in : in STD_LOGIC_VECTOR ( 23 downto 0 );
    data_out : out STD_LOGIC_VECTOR ( 7 downto 0 );
    rest : out STD_LOGIC_VECTOR ( 23 downto 0 );
    selector : in STD_LOGIC_VECTOR ( 1 downto 0 )
  );

end system_shifter_0_0;

architecture stub of system_shifter_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "data_in[23:0],data_out[7:0],rest[23:0],selector[1:0]";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "shifter,Vivado 2016.4";
begin
end;
