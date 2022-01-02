-- Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2016.4 (lin64) Build 1756540 Mon Jan 23 19:11:19 MST 2017
-- Date        : Sun Jan  2 14:27:54 2022
-- Host        : the-beast running 64-bit Ubuntu 20.04.3 LTS
-- Command     : write_vhdl -force -mode funcsim
--               /home/robbe/Desktop/Github/FPGA_Project/code/Zybo-Z7-20-pcam-5c-2016.4-1_original/Zybo-Z7-20-pcam-5c/src/bd/system/ip/system_Syncer_0_0/system_Syncer_0_0_sim_netlist.vhdl
-- Design      : system_Syncer_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_Syncer_0_0 is
  port (
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
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of system_Syncer_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of system_Syncer_0_0 : entity is "system_Syncer_0_0,Syncer,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of system_Syncer_0_0 : entity is "yes";
  attribute x_core_info : string;
  attribute x_core_info of system_Syncer_0_0 : entity is "Syncer,Vivado 2016.4";
end system_Syncer_0_0;

architecture STRUCTURE of system_Syncer_0_0 is
  signal \<const0>\ : STD_LOGIC;
begin
  data_out(23) <= \<const0>\;
  data_out(22) <= \<const0>\;
  data_out(21) <= \<const0>\;
  data_out(20) <= \<const0>\;
  data_out(19) <= \<const0>\;
  data_out(18) <= \<const0>\;
  data_out(17) <= \<const0>\;
  data_out(16) <= \<const0>\;
  data_out(15) <= \<const0>\;
  data_out(14) <= \<const0>\;
  data_out(13) <= \<const0>\;
  data_out(12) <= \<const0>\;
  data_out(11) <= \<const0>\;
  data_out(10) <= \<const0>\;
  data_out(9) <= \<const0>\;
  data_out(8) <= \<const0>\;
  data_out(7) <= \<const0>\;
  data_out(6) <= \<const0>\;
  data_out(5) <= \<const0>\;
  data_out(4) <= \<const0>\;
  data_out(3) <= \<const0>\;
  data_out(2) <= \<const0>\;
  data_out(1) <= \<const0>\;
  data_out(0) <= \<const0>\;
  tlast_out <= \<const0>\;
  tready_in <= \<const0>\;
  tuser_out <= \<const0>\;
  valid_out <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
end STRUCTURE;
