-- Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2016.4 (win64) Build 1756540 Mon Jan 23 19:11:23 MST 2017
-- Date        : Wed Dec 29 19:24:52 2021
-- Host        : ELZA running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/Users/robel/GitHub/FPGA_Project/code/demoProject/Zybo-Z7-20-pcam-5c-2016.4-1_original/Zybo-Z7-20-pcam-5c/src/bd/system/ip/system_Filter_0_0/system_Filter_0_0_sim_netlist.vhdl
-- Design      : system_Filter_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_Filter_0_0_Filter is
  port (
    data_out : out STD_LOGIC_VECTOR ( 7 downto 0 );
    div : in STD_LOGIC_VECTOR ( 1 downto 0 );
    data_in : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_Filter_0_0_Filter : entity is "Filter";
end system_Filter_0_0_Filter;

architecture STRUCTURE of system_Filter_0_0_Filter is
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \data_out[1]_INST_0\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \data_out[2]_INST_0\ : label is "soft_lutpair0";
begin
\data_out[0]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => div(0),
      I1 => data_in(0),
      I2 => div(1),
      O => data_out(0)
    );
\data_out[1]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E4"
    )
        port map (
      I0 => div(0),
      I1 => data_in(1),
      I2 => data_in(0),
      I3 => div(1),
      O => data_out(1)
    );
\data_out[2]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => data_in(1),
      I1 => div(0),
      I2 => data_in(0),
      I3 => div(1),
      I4 => data_in(2),
      O => data_out(2)
    );
\data_out[3]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AACCAACCF0FFF000"
    )
        port map (
      I0 => data_in(0),
      I1 => data_in(2),
      I2 => data_in(1),
      I3 => div(1),
      I4 => data_in(3),
      I5 => div(0),
      O => data_out(3)
    );
\data_out[4]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AACCAACCF0FFF000"
    )
        port map (
      I0 => data_in(1),
      I1 => data_in(3),
      I2 => data_in(2),
      I3 => div(1),
      I4 => data_in(4),
      I5 => div(0),
      O => data_out(4)
    );
\data_out[5]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AACCAACCF0FFF000"
    )
        port map (
      I0 => data_in(2),
      I1 => data_in(4),
      I2 => data_in(3),
      I3 => div(1),
      I4 => data_in(5),
      I5 => div(0),
      O => data_out(5)
    );
\data_out[6]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AACCAACCF0FFF000"
    )
        port map (
      I0 => data_in(3),
      I1 => data_in(5),
      I2 => data_in(4),
      I3 => div(1),
      I4 => data_in(6),
      I5 => div(0),
      O => data_out(6)
    );
\data_out[7]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AACCAACCF0FFF000"
    )
        port map (
      I0 => data_in(4),
      I1 => data_in(6),
      I2 => data_in(5),
      I3 => div(1),
      I4 => data_in(7),
      I5 => div(0),
      O => data_out(7)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_Filter_0_0 is
  port (
    data_in : in STD_LOGIC_VECTOR ( 7 downto 0 );
    data_out : out STD_LOGIC_VECTOR ( 7 downto 0 );
    div : in STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of system_Filter_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of system_Filter_0_0 : entity is "system_Filter_0_0,Filter,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of system_Filter_0_0 : entity is "yes";
  attribute x_core_info : string;
  attribute x_core_info of system_Filter_0_0 : entity is "Filter,Vivado 2016.4";
end system_Filter_0_0;

architecture STRUCTURE of system_Filter_0_0 is
begin
U0: entity work.system_Filter_0_0_Filter
     port map (
      data_in(7 downto 0) => data_in(7 downto 0),
      data_out(7 downto 0) => data_out(7 downto 0),
      div(1 downto 0) => div(1 downto 0)
    );
end STRUCTURE;
