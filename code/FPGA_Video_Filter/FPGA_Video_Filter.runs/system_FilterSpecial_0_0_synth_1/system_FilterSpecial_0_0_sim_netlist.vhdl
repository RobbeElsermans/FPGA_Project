-- Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2016.4 (lin64) Build 1756540 Mon Jan 23 19:11:19 MST 2017
-- Date        : Wed Jan 12 16:57:58 2022
-- Host        : the-beast running 64-bit Ubuntu 20.04.3 LTS
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ system_FilterSpecial_0_0_sim_netlist.vhdl
-- Design      : system_FilterSpecial_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_FilterSpecial is
  port (
    data_out : out STD_LOGIC_VECTOR ( 7 downto 0 );
    selector : in STD_LOGIC_VECTOR ( 1 downto 0 );
    data_in : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_FilterSpecial;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_FilterSpecial is
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \data_out[0]_INST_0\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \data_out[1]_INST_0\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \data_out[2]_INST_0\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \data_out[3]_INST_0\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \data_out[4]_INST_0\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \data_out[5]_INST_0\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \data_out[6]_INST_0\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \data_out[7]_INST_0\ : label is "soft_lutpair3";
begin
\data_out[0]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => selector(0),
      I1 => data_in(0),
      I2 => selector(1),
      O => data_out(0)
    );
\data_out[1]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"9A"
    )
        port map (
      I0 => selector(0),
      I1 => selector(1),
      I2 => data_in(1),
      O => data_out(1)
    );
\data_out[2]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => selector(0),
      I1 => data_in(2),
      I2 => selector(1),
      O => data_out(2)
    );
\data_out[3]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"9A"
    )
        port map (
      I0 => selector(0),
      I1 => selector(1),
      I2 => data_in(3),
      O => data_out(3)
    );
\data_out[4]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EC"
    )
        port map (
      I0 => selector(1),
      I1 => data_in(4),
      I2 => selector(0),
      O => data_out(4)
    );
\data_out[5]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BC"
    )
        port map (
      I0 => selector(1),
      I1 => data_in(5),
      I2 => selector(0),
      O => data_out(5)
    );
\data_out[6]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EC"
    )
        port map (
      I0 => selector(1),
      I1 => data_in(6),
      I2 => selector(0),
      O => data_out(6)
    );
\data_out[7]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BC"
    )
        port map (
      I0 => selector(1),
      I1 => data_in(7),
      I2 => selector(0),
      O => data_out(7)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    data_in : in STD_LOGIC_VECTOR ( 7 downto 0 );
    data_out : out STD_LOGIC_VECTOR ( 7 downto 0 );
    selector : in STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "system_FilterSpecial_0_0,FilterSpecial,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute x_core_info : string;
  attribute x_core_info of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "FilterSpecial,Vivado 2016.4";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
begin
U0: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_FilterSpecial
     port map (
      data_in(7 downto 0) => data_in(7 downto 0),
      data_out(7 downto 0) => data_out(7 downto 0),
      selector(1 downto 0) => selector(1 downto 0)
    );
end STRUCTURE;
