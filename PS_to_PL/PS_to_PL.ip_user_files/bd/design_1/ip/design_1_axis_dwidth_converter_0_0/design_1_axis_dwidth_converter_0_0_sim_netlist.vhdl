-- Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2017.1 (lin64) Build 1846317 Fri Apr 14 18:54:47 MDT 2017
-- Date        : Sun Oct 17 14:22:45 2021
-- Host        : akshat-HP-15-Notebook-PC running 64-bit Ubuntu 16.04.7 LTS
-- Command     : write_vhdl -force -mode funcsim
--               /home/akshat/Documents/Horus_VPU/Basics/PS_to_PL/PS_to_PL.srcs/sources_1/bd/design_1/ip/design_1_axis_dwidth_converter_0_0/design_1_axis_dwidth_converter_0_0_sim_netlist.vhdl
-- Design      : design_1_axis_dwidth_converter_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_axis_dwidth_converter_0_0_axis_dwidth_converter_v1_1_11_axisc_upsizer is
  port (
    Q : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axis_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    aclk : in STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    aclken : in STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axis_tvalid : in STD_LOGIC;
    m_axis_tready : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_axis_dwidth_converter_0_0_axis_dwidth_converter_v1_1_11_axisc_upsizer : entity is "axis_dwidth_converter_v1_1_11_axisc_upsizer";
end design_1_axis_dwidth_converter_0_0_axis_dwidth_converter_v1_1_11_axisc_upsizer;

architecture STRUCTURE of design_1_axis_dwidth_converter_0_0_axis_dwidth_converter_v1_1_11_axisc_upsizer is
  signal \FSM_onehot_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[0]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[2]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[2]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[3]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[3]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[4]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[4]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[0]\ : STD_LOGIC;
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of \FSM_onehot_state_reg_n_0_[0]\ : signal is "yes";
  signal \FSM_onehot_state_reg_n_0_[1]\ : STD_LOGIC;
  attribute RTL_KEEP of \FSM_onehot_state_reg_n_0_[1]\ : signal is "yes";
  signal \FSM_onehot_state_reg_n_0_[2]\ : STD_LOGIC;
  attribute RTL_KEEP of \FSM_onehot_state_reg_n_0_[2]\ : signal is "yes";
  signal \FSM_onehot_state_reg_n_0_[4]\ : STD_LOGIC;
  attribute RTL_KEEP of \FSM_onehot_state_reg_n_0_[4]\ : signal is "yes";
  signal \^q\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal acc_data : STD_LOGIC;
  signal \acc_data[31]_i_1_n_0\ : STD_LOGIC;
  signal \gen_data_accumulator[1].acc_data[15]_i_1_n_0\ : STD_LOGIC;
  signal \gen_data_accumulator[2].acc_data[23]_i_1_n_0\ : STD_LOGIC;
  signal p_0_in9_in : STD_LOGIC;
  attribute RTL_KEEP of p_0_in9_in : signal is "yes";
  signal p_1_in2_in : STD_LOGIC;
  signal r0_data : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal r0_data_0 : STD_LOGIC;
  signal \r0_reg_sel[3]_i_1_n_0\ : STD_LOGIC;
  signal \r0_reg_sel[3]_i_2_n_0\ : STD_LOGIC;
  signal \r0_reg_sel_reg_n_0_[0]\ : STD_LOGIC;
  signal \r0_reg_sel_reg_n_0_[1]\ : STD_LOGIC;
  signal \r0_reg_sel_reg_n_0_[2]\ : STD_LOGIC;
  signal state : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal state1 : STD_LOGIC;
  signal \state[1]_i_2_n_0\ : STD_LOGIC;
  signal \state_reg_n_0_[2]\ : STD_LOGIC;
  attribute KEEP : string;
  attribute KEEP of \FSM_onehot_state_reg[0]\ : label is "yes";
  attribute KEEP of \FSM_onehot_state_reg[1]\ : label is "yes";
  attribute KEEP of \FSM_onehot_state_reg[2]\ : label is "yes";
  attribute KEEP of \FSM_onehot_state_reg[3]\ : label is "yes";
  attribute KEEP of \FSM_onehot_state_reg[4]\ : label is "yes";
begin
  Q(1 downto 0) <= \^q\(1 downto 0);
\FSM_onehot_state[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFF32"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[0]\,
      I1 => s_axis_tvalid,
      I2 => p_0_in9_in,
      I3 => \FSM_onehot_state_reg_n_0_[1]\,
      I4 => \FSM_onehot_state[0]_i_2_n_0\,
      O => \FSM_onehot_state[0]_i_1_n_0\
    );
\FSM_onehot_state[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0001030100010001"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[4]\,
      I1 => \FSM_onehot_state_reg_n_0_[0]\,
      I2 => p_0_in9_in,
      I3 => \FSM_onehot_state_reg_n_0_[2]\,
      I4 => s_axis_tvalid,
      I5 => m_axis_tready,
      O => \FSM_onehot_state[0]_i_2_n_0\
    );
\FSM_onehot_state[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0808080B08080808"
    )
        port map (
      I0 => state1,
      I1 => \FSM_onehot_state[2]_i_3_n_0\,
      I2 => \FSM_onehot_state_reg_n_0_[1]\,
      I3 => s_axis_tvalid,
      I4 => m_axis_tready,
      I5 => \FSM_onehot_state_reg_n_0_[2]\,
      O => \FSM_onehot_state[2]_i_1_n_0\
    );
\FSM_onehot_state[2]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F800"
    )
        port map (
      I0 => \r0_reg_sel_reg_n_0_[2]\,
      I1 => p_0_in9_in,
      I2 => p_1_in2_in,
      I3 => s_axis_tvalid,
      O => state1
    );
\FSM_onehot_state[2]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[0]\,
      I1 => p_0_in9_in,
      O => \FSM_onehot_state[2]_i_3_n_0\
    );
\FSM_onehot_state[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FAEAAAAABAAAAAAA"
    )
        port map (
      I0 => \FSM_onehot_state[3]_i_2_n_0\,
      I1 => \FSM_onehot_state_reg_n_0_[2]\,
      I2 => m_axis_tready,
      I3 => \FSM_onehot_state_reg_n_0_[4]\,
      I4 => \FSM_onehot_state[4]_i_2_n_0\,
      I5 => s_axis_tvalid,
      O => \FSM_onehot_state[3]_i_1_n_0\
    );
\FSM_onehot_state[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000404440"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[1]\,
      I1 => s_axis_tvalid,
      I2 => \FSM_onehot_state_reg_n_0_[0]\,
      I3 => p_0_in9_in,
      I4 => \r0_reg_sel_reg_n_0_[2]\,
      I5 => p_1_in2_in,
      O => \FSM_onehot_state[3]_i_2_n_0\
    );
\FSM_onehot_state[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08080C00"
    )
        port map (
      I0 => s_axis_tvalid,
      I1 => \FSM_onehot_state[4]_i_2_n_0\,
      I2 => m_axis_tready,
      I3 => \FSM_onehot_state_reg_n_0_[4]\,
      I4 => \FSM_onehot_state_reg_n_0_[2]\,
      O => \FSM_onehot_state[4]_i_1_n_0\
    );
\FSM_onehot_state[4]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => p_0_in9_in,
      I1 => \FSM_onehot_state_reg_n_0_[0]\,
      I2 => \FSM_onehot_state_reg_n_0_[1]\,
      O => \FSM_onehot_state[4]_i_2_n_0\
    );
\FSM_onehot_state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => aclken,
      D => \FSM_onehot_state[0]_i_1_n_0\,
      Q => \FSM_onehot_state_reg_n_0_[0]\,
      R => SR(0)
    );
\FSM_onehot_state_reg[1]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => aclk,
      CE => aclken,
      D => '0',
      Q => \FSM_onehot_state_reg_n_0_[1]\,
      S => SR(0)
    );
\FSM_onehot_state_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => aclken,
      D => \FSM_onehot_state[2]_i_1_n_0\,
      Q => \FSM_onehot_state_reg_n_0_[2]\,
      R => SR(0)
    );
\FSM_onehot_state_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => aclken,
      D => \FSM_onehot_state[3]_i_1_n_0\,
      Q => p_0_in9_in,
      R => SR(0)
    );
\FSM_onehot_state_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => aclken,
      D => \FSM_onehot_state[4]_i_1_n_0\,
      Q => \FSM_onehot_state_reg_n_0_[4]\,
      R => SR(0)
    );
\acc_data[31]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E0"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[0]\,
      I1 => p_0_in9_in,
      I2 => aclken,
      O => \acc_data[31]_i_1_n_0\
    );
\acc_data[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => aclken,
      I1 => \r0_reg_sel_reg_n_0_[0]\,
      I2 => p_0_in9_in,
      O => acc_data
    );
\acc_data_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => acc_data,
      D => r0_data(0),
      Q => m_axis_tdata(0),
      R => '0'
    );
\acc_data_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => acc_data,
      D => r0_data(1),
      Q => m_axis_tdata(1),
      R => '0'
    );
\acc_data_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \acc_data[31]_i_1_n_0\,
      D => s_axis_tdata(0),
      Q => m_axis_tdata(24),
      R => '0'
    );
\acc_data_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \acc_data[31]_i_1_n_0\,
      D => s_axis_tdata(1),
      Q => m_axis_tdata(25),
      R => '0'
    );
\acc_data_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \acc_data[31]_i_1_n_0\,
      D => s_axis_tdata(2),
      Q => m_axis_tdata(26),
      R => '0'
    );
\acc_data_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \acc_data[31]_i_1_n_0\,
      D => s_axis_tdata(3),
      Q => m_axis_tdata(27),
      R => '0'
    );
\acc_data_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \acc_data[31]_i_1_n_0\,
      D => s_axis_tdata(4),
      Q => m_axis_tdata(28),
      R => '0'
    );
\acc_data_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \acc_data[31]_i_1_n_0\,
      D => s_axis_tdata(5),
      Q => m_axis_tdata(29),
      R => '0'
    );
\acc_data_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => acc_data,
      D => r0_data(2),
      Q => m_axis_tdata(2),
      R => '0'
    );
\acc_data_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \acc_data[31]_i_1_n_0\,
      D => s_axis_tdata(6),
      Q => m_axis_tdata(30),
      R => '0'
    );
\acc_data_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \acc_data[31]_i_1_n_0\,
      D => s_axis_tdata(7),
      Q => m_axis_tdata(31),
      R => '0'
    );
\acc_data_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => acc_data,
      D => r0_data(3),
      Q => m_axis_tdata(3),
      R => '0'
    );
\acc_data_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => acc_data,
      D => r0_data(4),
      Q => m_axis_tdata(4),
      R => '0'
    );
\acc_data_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => acc_data,
      D => r0_data(5),
      Q => m_axis_tdata(5),
      R => '0'
    );
\acc_data_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => acc_data,
      D => r0_data(6),
      Q => m_axis_tdata(6),
      R => '0'
    );
\acc_data_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => acc_data,
      D => r0_data(7),
      Q => m_axis_tdata(7),
      R => '0'
    );
\gen_data_accumulator[1].acc_data[15]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => aclken,
      I1 => \r0_reg_sel_reg_n_0_[1]\,
      I2 => p_0_in9_in,
      O => \gen_data_accumulator[1].acc_data[15]_i_1_n_0\
    );
\gen_data_accumulator[1].acc_data_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[1].acc_data[15]_i_1_n_0\,
      D => r0_data(2),
      Q => m_axis_tdata(10),
      R => '0'
    );
\gen_data_accumulator[1].acc_data_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[1].acc_data[15]_i_1_n_0\,
      D => r0_data(3),
      Q => m_axis_tdata(11),
      R => '0'
    );
\gen_data_accumulator[1].acc_data_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[1].acc_data[15]_i_1_n_0\,
      D => r0_data(4),
      Q => m_axis_tdata(12),
      R => '0'
    );
\gen_data_accumulator[1].acc_data_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[1].acc_data[15]_i_1_n_0\,
      D => r0_data(5),
      Q => m_axis_tdata(13),
      R => '0'
    );
\gen_data_accumulator[1].acc_data_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[1].acc_data[15]_i_1_n_0\,
      D => r0_data(6),
      Q => m_axis_tdata(14),
      R => '0'
    );
\gen_data_accumulator[1].acc_data_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[1].acc_data[15]_i_1_n_0\,
      D => r0_data(7),
      Q => m_axis_tdata(15),
      R => '0'
    );
\gen_data_accumulator[1].acc_data_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[1].acc_data[15]_i_1_n_0\,
      D => r0_data(0),
      Q => m_axis_tdata(8),
      R => '0'
    );
\gen_data_accumulator[1].acc_data_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[1].acc_data[15]_i_1_n_0\,
      D => r0_data(1),
      Q => m_axis_tdata(9),
      R => '0'
    );
\gen_data_accumulator[2].acc_data[23]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => aclken,
      I1 => \r0_reg_sel_reg_n_0_[2]\,
      I2 => p_0_in9_in,
      O => \gen_data_accumulator[2].acc_data[23]_i_1_n_0\
    );
\gen_data_accumulator[2].acc_data_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[2].acc_data[23]_i_1_n_0\,
      D => r0_data(0),
      Q => m_axis_tdata(16),
      R => '0'
    );
\gen_data_accumulator[2].acc_data_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[2].acc_data[23]_i_1_n_0\,
      D => r0_data(1),
      Q => m_axis_tdata(17),
      R => '0'
    );
\gen_data_accumulator[2].acc_data_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[2].acc_data[23]_i_1_n_0\,
      D => r0_data(2),
      Q => m_axis_tdata(18),
      R => '0'
    );
\gen_data_accumulator[2].acc_data_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[2].acc_data[23]_i_1_n_0\,
      D => r0_data(3),
      Q => m_axis_tdata(19),
      R => '0'
    );
\gen_data_accumulator[2].acc_data_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[2].acc_data[23]_i_1_n_0\,
      D => r0_data(4),
      Q => m_axis_tdata(20),
      R => '0'
    );
\gen_data_accumulator[2].acc_data_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[2].acc_data[23]_i_1_n_0\,
      D => r0_data(5),
      Q => m_axis_tdata(21),
      R => '0'
    );
\gen_data_accumulator[2].acc_data_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[2].acc_data[23]_i_1_n_0\,
      D => r0_data(6),
      Q => m_axis_tdata(22),
      R => '0'
    );
\gen_data_accumulator[2].acc_data_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[2].acc_data[23]_i_1_n_0\,
      D => r0_data(7),
      Q => m_axis_tdata(23),
      R => '0'
    );
\r0_data[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => aclken,
      I1 => \^q\(0),
      O => r0_data_0
    );
\r0_data_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r0_data_0,
      D => s_axis_tdata(0),
      Q => r0_data(0),
      R => '0'
    );
\r0_data_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r0_data_0,
      D => s_axis_tdata(1),
      Q => r0_data(1),
      R => '0'
    );
\r0_data_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r0_data_0,
      D => s_axis_tdata(2),
      Q => r0_data(2),
      R => '0'
    );
\r0_data_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r0_data_0,
      D => s_axis_tdata(3),
      Q => r0_data(3),
      R => '0'
    );
\r0_data_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r0_data_0,
      D => s_axis_tdata(4),
      Q => r0_data(4),
      R => '0'
    );
\r0_data_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r0_data_0,
      D => s_axis_tdata(5),
      Q => r0_data(5),
      R => '0'
    );
\r0_data_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r0_data_0,
      D => s_axis_tdata(6),
      Q => r0_data(6),
      R => '0'
    );
\r0_data_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r0_data_0,
      D => s_axis_tdata(7),
      Q => r0_data(7),
      R => '0'
    );
\r0_reg_sel[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF80"
    )
        port map (
      I0 => aclken,
      I1 => \^q\(1),
      I2 => m_axis_tready,
      I3 => SR(0),
      O => \r0_reg_sel[3]_i_1_n_0\
    );
\r0_reg_sel[3]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => aclken,
      I1 => p_0_in9_in,
      O => \r0_reg_sel[3]_i_2_n_0\
    );
\r0_reg_sel_reg[0]\: unisim.vcomponents.FDSE
     port map (
      C => aclk,
      CE => \r0_reg_sel[3]_i_2_n_0\,
      D => '0',
      Q => \r0_reg_sel_reg_n_0_[0]\,
      S => \r0_reg_sel[3]_i_1_n_0\
    );
\r0_reg_sel_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \r0_reg_sel[3]_i_2_n_0\,
      D => \r0_reg_sel_reg_n_0_[0]\,
      Q => \r0_reg_sel_reg_n_0_[1]\,
      R => \r0_reg_sel[3]_i_1_n_0\
    );
\r0_reg_sel_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \r0_reg_sel[3]_i_2_n_0\,
      D => \r0_reg_sel_reg_n_0_[1]\,
      Q => \r0_reg_sel_reg_n_0_[2]\,
      R => \r0_reg_sel[3]_i_1_n_0\
    );
\r0_reg_sel_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \r0_reg_sel[3]_i_2_n_0\,
      D => \r0_reg_sel_reg_n_0_[2]\,
      Q => p_1_in2_in,
      R => \r0_reg_sel[3]_i_1_n_0\
    );
\state[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFF4FF"
    )
        port map (
      I0 => s_axis_tvalid,
      I1 => \^q\(0),
      I2 => m_axis_tready,
      I3 => \^q\(1),
      I4 => \state_reg_n_0_[2]\,
      O => state(0)
    );
\state[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000FF80808080"
    )
        port map (
      I0 => \state[1]_i_2_n_0\,
      I1 => s_axis_tvalid,
      I2 => \^q\(0),
      I3 => m_axis_tready,
      I4 => \state_reg_n_0_[2]\,
      I5 => \^q\(1),
      O => state(1)
    );
\state[1]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EA"
    )
        port map (
      I0 => p_1_in2_in,
      I1 => p_0_in9_in,
      I2 => \r0_reg_sel_reg_n_0_[2]\,
      O => \state[1]_i_2_n_0\
    );
\state[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"440F000044004400"
    )
        port map (
      I0 => \state_reg_n_0_[2]\,
      I1 => m_axis_tready,
      I2 => \state[1]_i_2_n_0\,
      I3 => \^q\(1),
      I4 => s_axis_tvalid,
      I5 => \^q\(0),
      O => state(2)
    );
\state_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => aclken,
      D => state(0),
      Q => \^q\(0),
      R => SR(0)
    );
\state_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => aclken,
      D => state(1),
      Q => \^q\(1),
      R => SR(0)
    );
\state_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => aclken,
      D => state(2),
      Q => \state_reg_n_0_[2]\,
      R => SR(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_axis_dwidth_converter_0_0_axis_dwidth_converter_v1_1_11_axis_dwidth_converter is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    aclken : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tready : out STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axis_tstrb : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_tkeep : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_tlast : in STD_LOGIC;
    s_axis_tid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_tdest : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_tuser : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axis_tstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axis_tkeep : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axis_tlast : out STD_LOGIC;
    m_axis_tid : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_tdest : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_tuser : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute C_AXIS_SIGNAL_SET : string;
  attribute C_AXIS_SIGNAL_SET of design_1_axis_dwidth_converter_0_0_axis_dwidth_converter_v1_1_11_axis_dwidth_converter : entity is "32'b00000000000000000000000000000011";
  attribute C_AXIS_TDEST_WIDTH : integer;
  attribute C_AXIS_TDEST_WIDTH of design_1_axis_dwidth_converter_0_0_axis_dwidth_converter_v1_1_11_axis_dwidth_converter : entity is 1;
  attribute C_AXIS_TID_WIDTH : integer;
  attribute C_AXIS_TID_WIDTH of design_1_axis_dwidth_converter_0_0_axis_dwidth_converter_v1_1_11_axis_dwidth_converter : entity is 1;
  attribute C_FAMILY : string;
  attribute C_FAMILY of design_1_axis_dwidth_converter_0_0_axis_dwidth_converter_v1_1_11_axis_dwidth_converter : entity is "zynq";
  attribute C_M_AXIS_TDATA_WIDTH : integer;
  attribute C_M_AXIS_TDATA_WIDTH of design_1_axis_dwidth_converter_0_0_axis_dwidth_converter_v1_1_11_axis_dwidth_converter : entity is 32;
  attribute C_M_AXIS_TUSER_WIDTH : integer;
  attribute C_M_AXIS_TUSER_WIDTH of design_1_axis_dwidth_converter_0_0_axis_dwidth_converter_v1_1_11_axis_dwidth_converter : entity is 1;
  attribute C_S_AXIS_TDATA_WIDTH : integer;
  attribute C_S_AXIS_TDATA_WIDTH of design_1_axis_dwidth_converter_0_0_axis_dwidth_converter_v1_1_11_axis_dwidth_converter : entity is 8;
  attribute C_S_AXIS_TUSER_WIDTH : integer;
  attribute C_S_AXIS_TUSER_WIDTH of design_1_axis_dwidth_converter_0_0_axis_dwidth_converter_v1_1_11_axis_dwidth_converter : entity is 1;
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of design_1_axis_dwidth_converter_0_0_axis_dwidth_converter_v1_1_11_axis_dwidth_converter : entity is "yes";
  attribute G_INDX_SS_TDATA : integer;
  attribute G_INDX_SS_TDATA of design_1_axis_dwidth_converter_0_0_axis_dwidth_converter_v1_1_11_axis_dwidth_converter : entity is 1;
  attribute G_INDX_SS_TDEST : integer;
  attribute G_INDX_SS_TDEST of design_1_axis_dwidth_converter_0_0_axis_dwidth_converter_v1_1_11_axis_dwidth_converter : entity is 6;
  attribute G_INDX_SS_TID : integer;
  attribute G_INDX_SS_TID of design_1_axis_dwidth_converter_0_0_axis_dwidth_converter_v1_1_11_axis_dwidth_converter : entity is 5;
  attribute G_INDX_SS_TKEEP : integer;
  attribute G_INDX_SS_TKEEP of design_1_axis_dwidth_converter_0_0_axis_dwidth_converter_v1_1_11_axis_dwidth_converter : entity is 3;
  attribute G_INDX_SS_TLAST : integer;
  attribute G_INDX_SS_TLAST of design_1_axis_dwidth_converter_0_0_axis_dwidth_converter_v1_1_11_axis_dwidth_converter : entity is 4;
  attribute G_INDX_SS_TREADY : integer;
  attribute G_INDX_SS_TREADY of design_1_axis_dwidth_converter_0_0_axis_dwidth_converter_v1_1_11_axis_dwidth_converter : entity is 0;
  attribute G_INDX_SS_TSTRB : integer;
  attribute G_INDX_SS_TSTRB of design_1_axis_dwidth_converter_0_0_axis_dwidth_converter_v1_1_11_axis_dwidth_converter : entity is 2;
  attribute G_INDX_SS_TUSER : integer;
  attribute G_INDX_SS_TUSER of design_1_axis_dwidth_converter_0_0_axis_dwidth_converter_v1_1_11_axis_dwidth_converter : entity is 7;
  attribute G_MASK_SS_TDATA : integer;
  attribute G_MASK_SS_TDATA of design_1_axis_dwidth_converter_0_0_axis_dwidth_converter_v1_1_11_axis_dwidth_converter : entity is 2;
  attribute G_MASK_SS_TDEST : integer;
  attribute G_MASK_SS_TDEST of design_1_axis_dwidth_converter_0_0_axis_dwidth_converter_v1_1_11_axis_dwidth_converter : entity is 64;
  attribute G_MASK_SS_TID : integer;
  attribute G_MASK_SS_TID of design_1_axis_dwidth_converter_0_0_axis_dwidth_converter_v1_1_11_axis_dwidth_converter : entity is 32;
  attribute G_MASK_SS_TKEEP : integer;
  attribute G_MASK_SS_TKEEP of design_1_axis_dwidth_converter_0_0_axis_dwidth_converter_v1_1_11_axis_dwidth_converter : entity is 8;
  attribute G_MASK_SS_TLAST : integer;
  attribute G_MASK_SS_TLAST of design_1_axis_dwidth_converter_0_0_axis_dwidth_converter_v1_1_11_axis_dwidth_converter : entity is 16;
  attribute G_MASK_SS_TREADY : integer;
  attribute G_MASK_SS_TREADY of design_1_axis_dwidth_converter_0_0_axis_dwidth_converter_v1_1_11_axis_dwidth_converter : entity is 1;
  attribute G_MASK_SS_TSTRB : integer;
  attribute G_MASK_SS_TSTRB of design_1_axis_dwidth_converter_0_0_axis_dwidth_converter_v1_1_11_axis_dwidth_converter : entity is 4;
  attribute G_MASK_SS_TUSER : integer;
  attribute G_MASK_SS_TUSER of design_1_axis_dwidth_converter_0_0_axis_dwidth_converter_v1_1_11_axis_dwidth_converter : entity is 128;
  attribute G_TASK_SEVERITY_ERR : integer;
  attribute G_TASK_SEVERITY_ERR of design_1_axis_dwidth_converter_0_0_axis_dwidth_converter_v1_1_11_axis_dwidth_converter : entity is 2;
  attribute G_TASK_SEVERITY_INFO : integer;
  attribute G_TASK_SEVERITY_INFO of design_1_axis_dwidth_converter_0_0_axis_dwidth_converter_v1_1_11_axis_dwidth_converter : entity is 0;
  attribute G_TASK_SEVERITY_WARNING : integer;
  attribute G_TASK_SEVERITY_WARNING of design_1_axis_dwidth_converter_0_0_axis_dwidth_converter_v1_1_11_axis_dwidth_converter : entity is 1;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_axis_dwidth_converter_0_0_axis_dwidth_converter_v1_1_11_axis_dwidth_converter : entity is "axis_dwidth_converter_v1_1_11_axis_dwidth_converter";
  attribute P_AXIS_SIGNAL_SET : string;
  attribute P_AXIS_SIGNAL_SET of design_1_axis_dwidth_converter_0_0_axis_dwidth_converter_v1_1_11_axis_dwidth_converter : entity is "32'b00000000000000000000000000000011";
  attribute P_D1_REG_CONFIG : integer;
  attribute P_D1_REG_CONFIG of design_1_axis_dwidth_converter_0_0_axis_dwidth_converter_v1_1_11_axis_dwidth_converter : entity is 0;
  attribute P_D1_TUSER_WIDTH : integer;
  attribute P_D1_TUSER_WIDTH of design_1_axis_dwidth_converter_0_0_axis_dwidth_converter_v1_1_11_axis_dwidth_converter : entity is 1;
  attribute P_D2_TDATA_WIDTH : integer;
  attribute P_D2_TDATA_WIDTH of design_1_axis_dwidth_converter_0_0_axis_dwidth_converter_v1_1_11_axis_dwidth_converter : entity is 32;
  attribute P_D2_TUSER_WIDTH : integer;
  attribute P_D2_TUSER_WIDTH of design_1_axis_dwidth_converter_0_0_axis_dwidth_converter_v1_1_11_axis_dwidth_converter : entity is 4;
  attribute P_D3_REG_CONFIG : integer;
  attribute P_D3_REG_CONFIG of design_1_axis_dwidth_converter_0_0_axis_dwidth_converter_v1_1_11_axis_dwidth_converter : entity is 0;
  attribute P_D3_TUSER_WIDTH : integer;
  attribute P_D3_TUSER_WIDTH of design_1_axis_dwidth_converter_0_0_axis_dwidth_converter_v1_1_11_axis_dwidth_converter : entity is 4;
  attribute P_M_RATIO : integer;
  attribute P_M_RATIO of design_1_axis_dwidth_converter_0_0_axis_dwidth_converter_v1_1_11_axis_dwidth_converter : entity is 1;
  attribute P_SS_TKEEP_REQUIRED : integer;
  attribute P_SS_TKEEP_REQUIRED of design_1_axis_dwidth_converter_0_0_axis_dwidth_converter_v1_1_11_axis_dwidth_converter : entity is 0;
  attribute P_S_RATIO : integer;
  attribute P_S_RATIO of design_1_axis_dwidth_converter_0_0_axis_dwidth_converter_v1_1_11_axis_dwidth_converter : entity is 4;
end design_1_axis_dwidth_converter_0_0_axis_dwidth_converter_v1_1_11_axis_dwidth_converter;

architecture STRUCTURE of design_1_axis_dwidth_converter_0_0_axis_dwidth_converter_v1_1_11_axis_dwidth_converter is
  signal \<const0>\ : STD_LOGIC;
  signal \<const1>\ : STD_LOGIC;
  signal areset_r : STD_LOGIC;
  signal p_0_in : STD_LOGIC;
begin
  m_axis_tdest(0) <= \<const0>\;
  m_axis_tid(0) <= \<const0>\;
  m_axis_tkeep(3) <= \<const1>\;
  m_axis_tkeep(2) <= \<const1>\;
  m_axis_tkeep(1) <= \<const1>\;
  m_axis_tkeep(0) <= \<const1>\;
  m_axis_tlast <= \<const0>\;
  m_axis_tstrb(3) <= \<const0>\;
  m_axis_tstrb(2) <= \<const0>\;
  m_axis_tstrb(1) <= \<const0>\;
  m_axis_tstrb(0) <= \<const0>\;
  m_axis_tuser(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
VCC: unisim.vcomponents.VCC
     port map (
      P => \<const1>\
    );
areset_r_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => aresetn,
      O => p_0_in
    );
areset_r_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => p_0_in,
      Q => areset_r,
      R => '0'
    );
\gen_upsizer_conversion.axisc_upsizer_0\: entity work.design_1_axis_dwidth_converter_0_0_axis_dwidth_converter_v1_1_11_axisc_upsizer
     port map (
      Q(1) => m_axis_tvalid,
      Q(0) => s_axis_tready,
      SR(0) => areset_r,
      aclk => aclk,
      aclken => aclken,
      m_axis_tdata(31 downto 0) => m_axis_tdata(31 downto 0),
      m_axis_tready => m_axis_tready,
      s_axis_tdata(7 downto 0) => s_axis_tdata(7 downto 0),
      s_axis_tvalid => s_axis_tvalid
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_axis_dwidth_converter_0_0 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tready : out STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_axis_dwidth_converter_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_axis_dwidth_converter_0_0 : entity is "design_1_axis_dwidth_converter_0_0,axis_dwidth_converter_v1_1_11_axis_dwidth_converter,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of design_1_axis_dwidth_converter_0_0 : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of design_1_axis_dwidth_converter_0_0 : entity is "axis_dwidth_converter_v1_1_11_axis_dwidth_converter,Vivado 2017.1";
end design_1_axis_dwidth_converter_0_0;

architecture STRUCTURE of design_1_axis_dwidth_converter_0_0 is
  signal NLW_inst_m_axis_tlast_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_m_axis_tdest_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_m_axis_tid_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_m_axis_tkeep_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_inst_m_axis_tstrb_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_inst_m_axis_tuser_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute C_AXIS_SIGNAL_SET : string;
  attribute C_AXIS_SIGNAL_SET of inst : label is "32'b00000000000000000000000000000011";
  attribute C_AXIS_TDEST_WIDTH : integer;
  attribute C_AXIS_TDEST_WIDTH of inst : label is 1;
  attribute C_AXIS_TID_WIDTH : integer;
  attribute C_AXIS_TID_WIDTH of inst : label is 1;
  attribute C_FAMILY : string;
  attribute C_FAMILY of inst : label is "zynq";
  attribute C_M_AXIS_TDATA_WIDTH : integer;
  attribute C_M_AXIS_TDATA_WIDTH of inst : label is 32;
  attribute C_M_AXIS_TUSER_WIDTH : integer;
  attribute C_M_AXIS_TUSER_WIDTH of inst : label is 1;
  attribute C_S_AXIS_TDATA_WIDTH : integer;
  attribute C_S_AXIS_TDATA_WIDTH of inst : label is 8;
  attribute C_S_AXIS_TUSER_WIDTH : integer;
  attribute C_S_AXIS_TUSER_WIDTH of inst : label is 1;
  attribute DowngradeIPIdentifiedWarnings of inst : label is "yes";
  attribute G_INDX_SS_TDATA : integer;
  attribute G_INDX_SS_TDATA of inst : label is 1;
  attribute G_INDX_SS_TDEST : integer;
  attribute G_INDX_SS_TDEST of inst : label is 6;
  attribute G_INDX_SS_TID : integer;
  attribute G_INDX_SS_TID of inst : label is 5;
  attribute G_INDX_SS_TKEEP : integer;
  attribute G_INDX_SS_TKEEP of inst : label is 3;
  attribute G_INDX_SS_TLAST : integer;
  attribute G_INDX_SS_TLAST of inst : label is 4;
  attribute G_INDX_SS_TREADY : integer;
  attribute G_INDX_SS_TREADY of inst : label is 0;
  attribute G_INDX_SS_TSTRB : integer;
  attribute G_INDX_SS_TSTRB of inst : label is 2;
  attribute G_INDX_SS_TUSER : integer;
  attribute G_INDX_SS_TUSER of inst : label is 7;
  attribute G_MASK_SS_TDATA : integer;
  attribute G_MASK_SS_TDATA of inst : label is 2;
  attribute G_MASK_SS_TDEST : integer;
  attribute G_MASK_SS_TDEST of inst : label is 64;
  attribute G_MASK_SS_TID : integer;
  attribute G_MASK_SS_TID of inst : label is 32;
  attribute G_MASK_SS_TKEEP : integer;
  attribute G_MASK_SS_TKEEP of inst : label is 8;
  attribute G_MASK_SS_TLAST : integer;
  attribute G_MASK_SS_TLAST of inst : label is 16;
  attribute G_MASK_SS_TREADY : integer;
  attribute G_MASK_SS_TREADY of inst : label is 1;
  attribute G_MASK_SS_TSTRB : integer;
  attribute G_MASK_SS_TSTRB of inst : label is 4;
  attribute G_MASK_SS_TUSER : integer;
  attribute G_MASK_SS_TUSER of inst : label is 128;
  attribute G_TASK_SEVERITY_ERR : integer;
  attribute G_TASK_SEVERITY_ERR of inst : label is 2;
  attribute G_TASK_SEVERITY_INFO : integer;
  attribute G_TASK_SEVERITY_INFO of inst : label is 0;
  attribute G_TASK_SEVERITY_WARNING : integer;
  attribute G_TASK_SEVERITY_WARNING of inst : label is 1;
  attribute P_AXIS_SIGNAL_SET : string;
  attribute P_AXIS_SIGNAL_SET of inst : label is "32'b00000000000000000000000000000011";
  attribute P_D1_REG_CONFIG : integer;
  attribute P_D1_REG_CONFIG of inst : label is 0;
  attribute P_D1_TUSER_WIDTH : integer;
  attribute P_D1_TUSER_WIDTH of inst : label is 1;
  attribute P_D2_TDATA_WIDTH : integer;
  attribute P_D2_TDATA_WIDTH of inst : label is 32;
  attribute P_D2_TUSER_WIDTH : integer;
  attribute P_D2_TUSER_WIDTH of inst : label is 4;
  attribute P_D3_REG_CONFIG : integer;
  attribute P_D3_REG_CONFIG of inst : label is 0;
  attribute P_D3_TUSER_WIDTH : integer;
  attribute P_D3_TUSER_WIDTH of inst : label is 4;
  attribute P_M_RATIO : integer;
  attribute P_M_RATIO of inst : label is 1;
  attribute P_SS_TKEEP_REQUIRED : integer;
  attribute P_SS_TKEEP_REQUIRED of inst : label is 0;
  attribute P_S_RATIO : integer;
  attribute P_S_RATIO of inst : label is 4;
begin
inst: entity work.design_1_axis_dwidth_converter_0_0_axis_dwidth_converter_v1_1_11_axis_dwidth_converter
     port map (
      aclk => aclk,
      aclken => '1',
      aresetn => aresetn,
      m_axis_tdata(31 downto 0) => m_axis_tdata(31 downto 0),
      m_axis_tdest(0) => NLW_inst_m_axis_tdest_UNCONNECTED(0),
      m_axis_tid(0) => NLW_inst_m_axis_tid_UNCONNECTED(0),
      m_axis_tkeep(3 downto 0) => NLW_inst_m_axis_tkeep_UNCONNECTED(3 downto 0),
      m_axis_tlast => NLW_inst_m_axis_tlast_UNCONNECTED,
      m_axis_tready => m_axis_tready,
      m_axis_tstrb(3 downto 0) => NLW_inst_m_axis_tstrb_UNCONNECTED(3 downto 0),
      m_axis_tuser(0) => NLW_inst_m_axis_tuser_UNCONNECTED(0),
      m_axis_tvalid => m_axis_tvalid,
      s_axis_tdata(7 downto 0) => s_axis_tdata(7 downto 0),
      s_axis_tdest(0) => '0',
      s_axis_tid(0) => '0',
      s_axis_tkeep(0) => '1',
      s_axis_tlast => '1',
      s_axis_tready => s_axis_tready,
      s_axis_tstrb(0) => '1',
      s_axis_tuser(0) => '0',
      s_axis_tvalid => s_axis_tvalid
    );
end STRUCTURE;
