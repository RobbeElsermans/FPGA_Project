-- Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2016.4 (win64) Build 1756540 Mon Jan 23 19:11:23 MST 2017
-- Date        : Thu Dec 23 15:26:06 2021
-- Host        : ELZA running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub -rename_top system_Green_0 -prefix
--               system_Green_0_ system_xlslice_1_0_stub.vhdl
-- Design      : system_xlslice_1_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity system_Green_0 is
  Port ( 
    Din : in STD_LOGIC_VECTOR ( 23 downto 0 );
    Dout : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );

end system_Green_0;

architecture stub of system_Green_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "Din[23:0],Dout[7:0]";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "xlslice,Vivado 2016.4";
begin
end;
