-- Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2016.4 (lin64) Build 1756540 Mon Jan 23 19:11:19 MST 2017
-- Date        : Wed Jan 12 16:43:24 2022
-- Host        : the-beast running 64-bit Ubuntu 20.04.3 LTS
-- Command     : write_vhdl -force -mode funcsim
--               /home/robbe/Desktop/Github/FPGA_Project/code/Zybo-Z7-20-pcam-5c-2016.4-1_original/Zybo-Z7-20-pcam-5c/src/bd/system/ip/system_concater_0_1/system_concater_0_1_sim_netlist.vhdl
-- Design      : system_concater_0_1
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_concater_0_1_concater is
  port (
    data_out : out STD_LOGIC_VECTOR ( 23 downto 0 );
    rest : in STD_LOGIC_VECTOR ( 23 downto 0 );
    selector : in STD_LOGIC_VECTOR ( 1 downto 0 );
    data_in : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_concater_0_1_concater : entity is "concater";
end system_concater_0_1_concater;

architecture STRUCTURE of system_concater_0_1_concater is
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \data_out[0]_INST_0\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \data_out[10]_INST_0\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \data_out[11]_INST_0\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \data_out[12]_INST_0\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \data_out[13]_INST_0\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \data_out[14]_INST_0\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \data_out[15]_INST_0\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \data_out[1]_INST_0\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \data_out[2]_INST_0\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \data_out[3]_INST_0\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \data_out[4]_INST_0\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \data_out[5]_INST_0\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \data_out[6]_INST_0\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \data_out[7]_INST_0\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \data_out[8]_INST_0\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \data_out[9]_INST_0\ : label is "soft_lutpair1";
begin
\data_out[0]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ABA8"
    )
        port map (
      I0 => rest(0),
      I1 => selector(1),
      I2 => selector(0),
      I3 => data_in(0),
      O => data_out(0)
    );
\data_out[10]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CCAC"
    )
        port map (
      I0 => data_in(2),
      I1 => rest(10),
      I2 => selector(0),
      I3 => selector(1),
      O => data_out(10)
    );
\data_out[11]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CCAC"
    )
        port map (
      I0 => data_in(3),
      I1 => rest(11),
      I2 => selector(0),
      I3 => selector(1),
      O => data_out(11)
    );
\data_out[12]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CCAC"
    )
        port map (
      I0 => data_in(4),
      I1 => rest(12),
      I2 => selector(0),
      I3 => selector(1),
      O => data_out(12)
    );
\data_out[13]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CCAC"
    )
        port map (
      I0 => data_in(5),
      I1 => rest(13),
      I2 => selector(0),
      I3 => selector(1),
      O => data_out(13)
    );
\data_out[14]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CCAC"
    )
        port map (
      I0 => data_in(6),
      I1 => rest(14),
      I2 => selector(0),
      I3 => selector(1),
      O => data_out(14)
    );
\data_out[15]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CCAC"
    )
        port map (
      I0 => data_in(7),
      I1 => rest(15),
      I2 => selector(0),
      I3 => selector(1),
      O => data_out(15)
    );
\data_out[16]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AEA2"
    )
        port map (
      I0 => rest(16),
      I1 => selector(1),
      I2 => selector(0),
      I3 => data_in(0),
      O => data_out(16)
    );
\data_out[17]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AEA2"
    )
        port map (
      I0 => rest(17),
      I1 => selector(1),
      I2 => selector(0),
      I3 => data_in(1),
      O => data_out(17)
    );
\data_out[18]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AEA2"
    )
        port map (
      I0 => rest(18),
      I1 => selector(1),
      I2 => selector(0),
      I3 => data_in(2),
      O => data_out(18)
    );
\data_out[19]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AEA2"
    )
        port map (
      I0 => rest(19),
      I1 => selector(1),
      I2 => selector(0),
      I3 => data_in(3),
      O => data_out(19)
    );
\data_out[1]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ABA8"
    )
        port map (
      I0 => rest(1),
      I1 => selector(1),
      I2 => selector(0),
      I3 => data_in(1),
      O => data_out(1)
    );
\data_out[20]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AEA2"
    )
        port map (
      I0 => rest(20),
      I1 => selector(1),
      I2 => selector(0),
      I3 => data_in(4),
      O => data_out(20)
    );
\data_out[21]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AEA2"
    )
        port map (
      I0 => rest(21),
      I1 => selector(1),
      I2 => selector(0),
      I3 => data_in(5),
      O => data_out(21)
    );
\data_out[22]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AEA2"
    )
        port map (
      I0 => rest(22),
      I1 => selector(1),
      I2 => selector(0),
      I3 => data_in(6),
      O => data_out(22)
    );
\data_out[23]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AEA2"
    )
        port map (
      I0 => rest(23),
      I1 => selector(1),
      I2 => selector(0),
      I3 => data_in(7),
      O => data_out(23)
    );
\data_out[2]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ABA8"
    )
        port map (
      I0 => rest(2),
      I1 => selector(1),
      I2 => selector(0),
      I3 => data_in(2),
      O => data_out(2)
    );
\data_out[3]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ABA8"
    )
        port map (
      I0 => rest(3),
      I1 => selector(1),
      I2 => selector(0),
      I3 => data_in(3),
      O => data_out(3)
    );
\data_out[4]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ABA8"
    )
        port map (
      I0 => rest(4),
      I1 => selector(1),
      I2 => selector(0),
      I3 => data_in(4),
      O => data_out(4)
    );
\data_out[5]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ABA8"
    )
        port map (
      I0 => rest(5),
      I1 => selector(1),
      I2 => selector(0),
      I3 => data_in(5),
      O => data_out(5)
    );
\data_out[6]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ABA8"
    )
        port map (
      I0 => rest(6),
      I1 => selector(1),
      I2 => selector(0),
      I3 => data_in(6),
      O => data_out(6)
    );
\data_out[7]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ABA8"
    )
        port map (
      I0 => rest(7),
      I1 => selector(1),
      I2 => selector(0),
      I3 => data_in(7),
      O => data_out(7)
    );
\data_out[8]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CCAC"
    )
        port map (
      I0 => data_in(0),
      I1 => rest(8),
      I2 => selector(0),
      I3 => selector(1),
      O => data_out(8)
    );
\data_out[9]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CCAC"
    )
        port map (
      I0 => data_in(1),
      I1 => rest(9),
      I2 => selector(0),
      I3 => selector(1),
      O => data_out(9)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_concater_0_1 is
  port (
    data_in : in STD_LOGIC_VECTOR ( 7 downto 0 );
    data_out : out STD_LOGIC_VECTOR ( 23 downto 0 );
    rest : in STD_LOGIC_VECTOR ( 23 downto 0 );
    selector : in STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of system_concater_0_1 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of system_concater_0_1 : entity is "system_concater_0_1,concater,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of system_concater_0_1 : entity is "yes";
  attribute x_core_info : string;
  attribute x_core_info of system_concater_0_1 : entity is "concater,Vivado 2016.4";
end system_concater_0_1;

architecture STRUCTURE of system_concater_0_1 is
begin
U0: entity work.system_concater_0_1_concater
     port map (
      data_in(7 downto 0) => data_in(7 downto 0),
      data_out(23 downto 0) => data_out(23 downto 0),
      rest(23 downto 0) => rest(23 downto 0),
      selector(1 downto 0) => selector(1 downto 0)
    );
end STRUCTURE;
