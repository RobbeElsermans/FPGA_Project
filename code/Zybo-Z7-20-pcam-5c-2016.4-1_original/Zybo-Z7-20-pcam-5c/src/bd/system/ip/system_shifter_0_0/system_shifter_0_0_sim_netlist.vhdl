-- Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2016.4 (lin64) Build 1756540 Mon Jan 23 19:11:19 MST 2017
-- Date        : Wed Jan 12 16:43:24 2022
-- Host        : the-beast running 64-bit Ubuntu 20.04.3 LTS
-- Command     : write_vhdl -force -mode funcsim
--               /home/robbe/Desktop/Github/FPGA_Project/code/Zybo-Z7-20-pcam-5c-2016.4-1_original/Zybo-Z7-20-pcam-5c/src/bd/system/ip/system_shifter_0_0/system_shifter_0_0_sim_netlist.vhdl
-- Design      : system_shifter_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_shifter_0_0_shifter is
  port (
    rest : out STD_LOGIC_VECTOR ( 23 downto 0 );
    data_out : out STD_LOGIC_VECTOR ( 7 downto 0 );
    data_in : in STD_LOGIC_VECTOR ( 23 downto 0 );
    selector : in STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_shifter_0_0_shifter : entity is "shifter";
end system_shifter_0_0_shifter;

architecture STRUCTURE of system_shifter_0_0_shifter is
  signal \rest_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \rest_reg[10]_i_1_n_0\ : STD_LOGIC;
  signal \rest_reg[11]_i_1_n_0\ : STD_LOGIC;
  signal \rest_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \rest_reg[13]_i_1_n_0\ : STD_LOGIC;
  signal \rest_reg[14]_i_1_n_0\ : STD_LOGIC;
  signal \rest_reg[15]_i_1_n_0\ : STD_LOGIC;
  signal \rest_reg[16]_i_1_n_0\ : STD_LOGIC;
  signal \rest_reg[17]_i_1_n_0\ : STD_LOGIC;
  signal \rest_reg[18]_i_1_n_0\ : STD_LOGIC;
  signal \rest_reg[19]_i_1_n_0\ : STD_LOGIC;
  signal \rest_reg[1]_i_1_n_0\ : STD_LOGIC;
  signal \rest_reg[20]_i_1_n_0\ : STD_LOGIC;
  signal \rest_reg[21]_i_1_n_0\ : STD_LOGIC;
  signal \rest_reg[22]_i_1_n_0\ : STD_LOGIC;
  signal \rest_reg[23]_i_1_n_0\ : STD_LOGIC;
  signal \rest_reg[23]_i_2_n_0\ : STD_LOGIC;
  signal \rest_reg[2]_i_1_n_0\ : STD_LOGIC;
  signal \rest_reg[3]_i_1_n_0\ : STD_LOGIC;
  signal \rest_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \rest_reg[5]_i_1_n_0\ : STD_LOGIC;
  signal \rest_reg[6]_i_1_n_0\ : STD_LOGIC;
  signal \rest_reg[7]_i_1_n_0\ : STD_LOGIC;
  signal \rest_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \rest_reg[9]_i_1_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \data_out[0]_INST_0\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \data_out[1]_INST_0\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \data_out[2]_INST_0\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \data_out[3]_INST_0\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \data_out[4]_INST_0\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \data_out[5]_INST_0\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \data_out[6]_INST_0\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \data_out[7]_INST_0\ : label is "soft_lutpair7";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \rest_reg[0]\ : label is "LD";
  attribute SOFT_HLUTNM of \rest_reg[0]_i_1\ : label is "soft_lutpair0";
  attribute XILINX_LEGACY_PRIM of \rest_reg[10]\ : label is "LD";
  attribute SOFT_HLUTNM of \rest_reg[10]_i_1\ : label is "soft_lutpair9";
  attribute XILINX_LEGACY_PRIM of \rest_reg[11]\ : label is "LD";
  attribute SOFT_HLUTNM of \rest_reg[11]_i_1\ : label is "soft_lutpair9";
  attribute XILINX_LEGACY_PRIM of \rest_reg[12]\ : label is "LD";
  attribute SOFT_HLUTNM of \rest_reg[12]_i_1\ : label is "soft_lutpair10";
  attribute XILINX_LEGACY_PRIM of \rest_reg[13]\ : label is "LD";
  attribute SOFT_HLUTNM of \rest_reg[13]_i_1\ : label is "soft_lutpair10";
  attribute XILINX_LEGACY_PRIM of \rest_reg[14]\ : label is "LD";
  attribute SOFT_HLUTNM of \rest_reg[14]_i_1\ : label is "soft_lutpair11";
  attribute XILINX_LEGACY_PRIM of \rest_reg[15]\ : label is "LD";
  attribute SOFT_HLUTNM of \rest_reg[15]_i_1\ : label is "soft_lutpair11";
  attribute XILINX_LEGACY_PRIM of \rest_reg[16]\ : label is "LD";
  attribute SOFT_HLUTNM of \rest_reg[16]_i_1\ : label is "soft_lutpair12";
  attribute XILINX_LEGACY_PRIM of \rest_reg[17]\ : label is "LD";
  attribute SOFT_HLUTNM of \rest_reg[17]_i_1\ : label is "soft_lutpair12";
  attribute XILINX_LEGACY_PRIM of \rest_reg[18]\ : label is "LD";
  attribute SOFT_HLUTNM of \rest_reg[18]_i_1\ : label is "soft_lutpair13";
  attribute XILINX_LEGACY_PRIM of \rest_reg[19]\ : label is "LD";
  attribute SOFT_HLUTNM of \rest_reg[19]_i_1\ : label is "soft_lutpair13";
  attribute XILINX_LEGACY_PRIM of \rest_reg[1]\ : label is "LD";
  attribute SOFT_HLUTNM of \rest_reg[1]_i_1\ : label is "soft_lutpair1";
  attribute XILINX_LEGACY_PRIM of \rest_reg[20]\ : label is "LD";
  attribute SOFT_HLUTNM of \rest_reg[20]_i_1\ : label is "soft_lutpair14";
  attribute XILINX_LEGACY_PRIM of \rest_reg[21]\ : label is "LD";
  attribute SOFT_HLUTNM of \rest_reg[21]_i_1\ : label is "soft_lutpair14";
  attribute XILINX_LEGACY_PRIM of \rest_reg[22]\ : label is "LD";
  attribute SOFT_HLUTNM of \rest_reg[22]_i_1\ : label is "soft_lutpair15";
  attribute XILINX_LEGACY_PRIM of \rest_reg[23]\ : label is "LD";
  attribute SOFT_HLUTNM of \rest_reg[23]_i_1\ : label is "soft_lutpair15";
  attribute XILINX_LEGACY_PRIM of \rest_reg[2]\ : label is "LD";
  attribute SOFT_HLUTNM of \rest_reg[2]_i_1\ : label is "soft_lutpair2";
  attribute XILINX_LEGACY_PRIM of \rest_reg[3]\ : label is "LD";
  attribute SOFT_HLUTNM of \rest_reg[3]_i_1\ : label is "soft_lutpair3";
  attribute XILINX_LEGACY_PRIM of \rest_reg[4]\ : label is "LD";
  attribute SOFT_HLUTNM of \rest_reg[4]_i_1\ : label is "soft_lutpair4";
  attribute XILINX_LEGACY_PRIM of \rest_reg[5]\ : label is "LD";
  attribute SOFT_HLUTNM of \rest_reg[5]_i_1\ : label is "soft_lutpair5";
  attribute XILINX_LEGACY_PRIM of \rest_reg[6]\ : label is "LD";
  attribute SOFT_HLUTNM of \rest_reg[6]_i_1\ : label is "soft_lutpair6";
  attribute XILINX_LEGACY_PRIM of \rest_reg[7]\ : label is "LD";
  attribute SOFT_HLUTNM of \rest_reg[7]_i_1\ : label is "soft_lutpair7";
  attribute XILINX_LEGACY_PRIM of \rest_reg[8]\ : label is "LD";
  attribute SOFT_HLUTNM of \rest_reg[8]_i_1\ : label is "soft_lutpair8";
  attribute XILINX_LEGACY_PRIM of \rest_reg[9]\ : label is "LD";
  attribute SOFT_HLUTNM of \rest_reg[9]_i_1\ : label is "soft_lutpair8";
begin
\data_out[0]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFACF0AC"
    )
        port map (
      I0 => data_in(16),
      I1 => data_in(0),
      I2 => selector(1),
      I3 => selector(0),
      I4 => data_in(8),
      O => data_out(0)
    );
\data_out[1]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFACF0AC"
    )
        port map (
      I0 => data_in(17),
      I1 => data_in(1),
      I2 => selector(1),
      I3 => selector(0),
      I4 => data_in(9),
      O => data_out(1)
    );
\data_out[2]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFACF0AC"
    )
        port map (
      I0 => data_in(18),
      I1 => data_in(2),
      I2 => selector(1),
      I3 => selector(0),
      I4 => data_in(10),
      O => data_out(2)
    );
\data_out[3]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFACF0AC"
    )
        port map (
      I0 => data_in(19),
      I1 => data_in(3),
      I2 => selector(1),
      I3 => selector(0),
      I4 => data_in(11),
      O => data_out(3)
    );
\data_out[4]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFACF0AC"
    )
        port map (
      I0 => data_in(20),
      I1 => data_in(4),
      I2 => selector(1),
      I3 => selector(0),
      I4 => data_in(12),
      O => data_out(4)
    );
\data_out[5]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFACF0AC"
    )
        port map (
      I0 => data_in(21),
      I1 => data_in(5),
      I2 => selector(1),
      I3 => selector(0),
      I4 => data_in(13),
      O => data_out(5)
    );
\data_out[6]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFACF0AC"
    )
        port map (
      I0 => data_in(22),
      I1 => data_in(6),
      I2 => selector(1),
      I3 => selector(0),
      I4 => data_in(14),
      O => data_out(6)
    );
\data_out[7]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFACF0AC"
    )
        port map (
      I0 => data_in(23),
      I1 => data_in(7),
      I2 => selector(1),
      I3 => selector(0),
      I4 => data_in(15),
      O => data_out(7)
    );
\rest_reg[0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \rest_reg[0]_i_1_n_0\,
      G => \rest_reg[23]_i_2_n_0\,
      GE => '1',
      Q => rest(0)
    );
\rest_reg[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A8"
    )
        port map (
      I0 => data_in(0),
      I1 => selector(0),
      I2 => selector(1),
      O => \rest_reg[0]_i_1_n_0\
    );
\rest_reg[10]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \rest_reg[10]_i_1_n_0\,
      G => \rest_reg[23]_i_2_n_0\,
      GE => '1',
      Q => rest(10)
    );
\rest_reg[10]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data_in(10),
      I1 => selector(0),
      O => \rest_reg[10]_i_1_n_0\
    );
\rest_reg[11]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \rest_reg[11]_i_1_n_0\,
      G => \rest_reg[23]_i_2_n_0\,
      GE => '1',
      Q => rest(11)
    );
\rest_reg[11]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data_in(11),
      I1 => selector(0),
      O => \rest_reg[11]_i_1_n_0\
    );
\rest_reg[12]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \rest_reg[12]_i_1_n_0\,
      G => \rest_reg[23]_i_2_n_0\,
      GE => '1',
      Q => rest(12)
    );
\rest_reg[12]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data_in(12),
      I1 => selector(0),
      O => \rest_reg[12]_i_1_n_0\
    );
\rest_reg[13]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \rest_reg[13]_i_1_n_0\,
      G => \rest_reg[23]_i_2_n_0\,
      GE => '1',
      Q => rest(13)
    );
\rest_reg[13]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data_in(13),
      I1 => selector(0),
      O => \rest_reg[13]_i_1_n_0\
    );
\rest_reg[14]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \rest_reg[14]_i_1_n_0\,
      G => \rest_reg[23]_i_2_n_0\,
      GE => '1',
      Q => rest(14)
    );
\rest_reg[14]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data_in(14),
      I1 => selector(0),
      O => \rest_reg[14]_i_1_n_0\
    );
\rest_reg[15]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \rest_reg[15]_i_1_n_0\,
      G => \rest_reg[23]_i_2_n_0\,
      GE => '1',
      Q => rest(15)
    );
\rest_reg[15]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data_in(15),
      I1 => selector(0),
      O => \rest_reg[15]_i_1_n_0\
    );
\rest_reg[16]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \rest_reg[16]_i_1_n_0\,
      G => \rest_reg[23]_i_2_n_0\,
      GE => '1',
      Q => rest(16)
    );
\rest_reg[16]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data_in(16),
      I1 => selector(1),
      O => \rest_reg[16]_i_1_n_0\
    );
\rest_reg[17]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \rest_reg[17]_i_1_n_0\,
      G => \rest_reg[23]_i_2_n_0\,
      GE => '1',
      Q => rest(17)
    );
\rest_reg[17]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data_in(17),
      I1 => selector(1),
      O => \rest_reg[17]_i_1_n_0\
    );
\rest_reg[18]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \rest_reg[18]_i_1_n_0\,
      G => \rest_reg[23]_i_2_n_0\,
      GE => '1',
      Q => rest(18)
    );
\rest_reg[18]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data_in(18),
      I1 => selector(1),
      O => \rest_reg[18]_i_1_n_0\
    );
\rest_reg[19]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \rest_reg[19]_i_1_n_0\,
      G => \rest_reg[23]_i_2_n_0\,
      GE => '1',
      Q => rest(19)
    );
\rest_reg[19]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data_in(19),
      I1 => selector(1),
      O => \rest_reg[19]_i_1_n_0\
    );
\rest_reg[1]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \rest_reg[1]_i_1_n_0\,
      G => \rest_reg[23]_i_2_n_0\,
      GE => '1',
      Q => rest(1)
    );
\rest_reg[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A8"
    )
        port map (
      I0 => data_in(1),
      I1 => selector(0),
      I2 => selector(1),
      O => \rest_reg[1]_i_1_n_0\
    );
\rest_reg[20]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \rest_reg[20]_i_1_n_0\,
      G => \rest_reg[23]_i_2_n_0\,
      GE => '1',
      Q => rest(20)
    );
\rest_reg[20]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data_in(20),
      I1 => selector(1),
      O => \rest_reg[20]_i_1_n_0\
    );
\rest_reg[21]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \rest_reg[21]_i_1_n_0\,
      G => \rest_reg[23]_i_2_n_0\,
      GE => '1',
      Q => rest(21)
    );
\rest_reg[21]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data_in(21),
      I1 => selector(1),
      O => \rest_reg[21]_i_1_n_0\
    );
\rest_reg[22]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \rest_reg[22]_i_1_n_0\,
      G => \rest_reg[23]_i_2_n_0\,
      GE => '1',
      Q => rest(22)
    );
\rest_reg[22]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data_in(22),
      I1 => selector(1),
      O => \rest_reg[22]_i_1_n_0\
    );
\rest_reg[23]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \rest_reg[23]_i_1_n_0\,
      G => \rest_reg[23]_i_2_n_0\,
      GE => '1',
      Q => rest(23)
    );
\rest_reg[23]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data_in(23),
      I1 => selector(1),
      O => \rest_reg[23]_i_1_n_0\
    );
\rest_reg[23]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => selector(0),
      I1 => selector(1),
      O => \rest_reg[23]_i_2_n_0\
    );
\rest_reg[2]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \rest_reg[2]_i_1_n_0\,
      G => \rest_reg[23]_i_2_n_0\,
      GE => '1',
      Q => rest(2)
    );
\rest_reg[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A8"
    )
        port map (
      I0 => data_in(2),
      I1 => selector(0),
      I2 => selector(1),
      O => \rest_reg[2]_i_1_n_0\
    );
\rest_reg[3]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \rest_reg[3]_i_1_n_0\,
      G => \rest_reg[23]_i_2_n_0\,
      GE => '1',
      Q => rest(3)
    );
\rest_reg[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A8"
    )
        port map (
      I0 => data_in(3),
      I1 => selector(0),
      I2 => selector(1),
      O => \rest_reg[3]_i_1_n_0\
    );
\rest_reg[4]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \rest_reg[4]_i_1_n_0\,
      G => \rest_reg[23]_i_2_n_0\,
      GE => '1',
      Q => rest(4)
    );
\rest_reg[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A8"
    )
        port map (
      I0 => data_in(4),
      I1 => selector(0),
      I2 => selector(1),
      O => \rest_reg[4]_i_1_n_0\
    );
\rest_reg[5]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \rest_reg[5]_i_1_n_0\,
      G => \rest_reg[23]_i_2_n_0\,
      GE => '1',
      Q => rest(5)
    );
\rest_reg[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A8"
    )
        port map (
      I0 => data_in(5),
      I1 => selector(0),
      I2 => selector(1),
      O => \rest_reg[5]_i_1_n_0\
    );
\rest_reg[6]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \rest_reg[6]_i_1_n_0\,
      G => \rest_reg[23]_i_2_n_0\,
      GE => '1',
      Q => rest(6)
    );
\rest_reg[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A8"
    )
        port map (
      I0 => data_in(6),
      I1 => selector(0),
      I2 => selector(1),
      O => \rest_reg[6]_i_1_n_0\
    );
\rest_reg[7]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \rest_reg[7]_i_1_n_0\,
      G => \rest_reg[23]_i_2_n_0\,
      GE => '1',
      Q => rest(7)
    );
\rest_reg[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A8"
    )
        port map (
      I0 => data_in(7),
      I1 => selector(0),
      I2 => selector(1),
      O => \rest_reg[7]_i_1_n_0\
    );
\rest_reg[8]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \rest_reg[8]_i_1_n_0\,
      G => \rest_reg[23]_i_2_n_0\,
      GE => '1',
      Q => rest(8)
    );
\rest_reg[8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data_in(8),
      I1 => selector(0),
      O => \rest_reg[8]_i_1_n_0\
    );
\rest_reg[9]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \rest_reg[9]_i_1_n_0\,
      G => \rest_reg[23]_i_2_n_0\,
      GE => '1',
      Q => rest(9)
    );
\rest_reg[9]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data_in(9),
      I1 => selector(0),
      O => \rest_reg[9]_i_1_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_shifter_0_0 is
  port (
    data_in : in STD_LOGIC_VECTOR ( 23 downto 0 );
    data_out : out STD_LOGIC_VECTOR ( 7 downto 0 );
    rest : out STD_LOGIC_VECTOR ( 23 downto 0 );
    selector : in STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of system_shifter_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of system_shifter_0_0 : entity is "system_shifter_0_0,shifter,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of system_shifter_0_0 : entity is "yes";
  attribute x_core_info : string;
  attribute x_core_info of system_shifter_0_0 : entity is "shifter,Vivado 2016.4";
end system_shifter_0_0;

architecture STRUCTURE of system_shifter_0_0 is
begin
U0: entity work.system_shifter_0_0_shifter
     port map (
      data_in(23 downto 0) => data_in(23 downto 0),
      data_out(7 downto 0) => data_out(7 downto 0),
      rest(23 downto 0) => rest(23 downto 0),
      selector(1 downto 0) => selector(1 downto 0)
    );
end STRUCTURE;
