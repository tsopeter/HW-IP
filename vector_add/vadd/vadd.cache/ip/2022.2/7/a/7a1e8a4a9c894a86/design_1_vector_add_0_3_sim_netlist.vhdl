-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
-- Date        : Fri May  5 13:24:36 2023
-- Host        : DESKTOP-EOP59MS running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_vector_add_0_3_sim_netlist.vhdl
-- Design      : design_1_vector_add_0_3
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xck26-sfvc784-2LV-c
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_vector_add_control_s_axi is
  port (
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    \FSM_onehot_rstate_reg[1]_0\ : out STD_LOGIC;
    s_axi_control_RVALID : out STD_LOGIC;
    s_axi_control_RDATA : out STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_control_BVALID : out STD_LOGIC;
    \FSM_onehot_wstate_reg[2]_0\ : out STD_LOGIC;
    s_axi_control_AWREADY : out STD_LOGIC;
    ap_clk : in STD_LOGIC;
    s_axi_control_ARVALID : in STD_LOGIC;
    s_axi_control_RREADY : in STD_LOGIC;
    s_axi_control_ARADDR : in STD_LOGIC_VECTOR ( 4 downto 0 );
    ap_rst_n : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    Q : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_control_BREADY : in STD_LOGIC;
    s_axi_control_AWVALID : in STD_LOGIC;
    s_axi_control_WVALID : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_vector_add_control_s_axi;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_vector_add_control_s_axi is
  signal \FSM_onehot_rstate[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_rstate[2]_i_1_n_0\ : STD_LOGIC;
  signal \^fsm_onehot_rstate_reg[1]_0\ : STD_LOGIC;
  signal \FSM_onehot_wstate[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_wstate[2]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_wstate[3]_i_1_n_0\ : STD_LOGIC;
  signal \^fsm_onehot_wstate_reg[2]_0\ : STD_LOGIC;
  signal \^sr\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal ar_hs : STD_LOGIC;
  signal int_y : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal int_y_ap_vld : STD_LOGIC;
  signal int_y_ap_vld_i_1_n_0 : STD_LOGIC;
  signal \rdata[0]_i_1_n_0\ : STD_LOGIC;
  signal \rdata[0]_i_2_n_0\ : STD_LOGIC;
  signal \rdata[7]_i_1_n_0\ : STD_LOGIC;
  signal \^s_axi_control_awready\ : STD_LOGIC;
  signal \^s_axi_control_bvalid\ : STD_LOGIC;
  signal \^s_axi_control_rdata\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \^s_axi_control_rvalid\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_onehot_rstate[1]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \FSM_onehot_rstate[2]_i_1\ : label is "soft_lutpair0";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_rstate_reg[1]\ : label is "RDIDLE:010,RDDATA:100,iSTATE:001";
  attribute FSM_ENCODED_STATES of \FSM_onehot_rstate_reg[2]\ : label is "RDIDLE:010,RDDATA:100,iSTATE:001";
  attribute FSM_ENCODED_STATES of \FSM_onehot_wstate_reg[1]\ : label is "WRDATA:0100,WRRESP:1000,WRIDLE:0010,iSTATE:0001";
  attribute FSM_ENCODED_STATES of \FSM_onehot_wstate_reg[2]\ : label is "WRDATA:0100,WRRESP:1000,WRIDLE:0010,iSTATE:0001";
  attribute FSM_ENCODED_STATES of \FSM_onehot_wstate_reg[3]\ : label is "WRDATA:0100,WRRESP:1000,WRIDLE:0010,iSTATE:0001";
begin
  \FSM_onehot_rstate_reg[1]_0\ <= \^fsm_onehot_rstate_reg[1]_0\;
  \FSM_onehot_wstate_reg[2]_0\ <= \^fsm_onehot_wstate_reg[2]_0\;
  SR(0) <= \^sr\(0);
  s_axi_control_AWREADY <= \^s_axi_control_awready\;
  s_axi_control_BVALID <= \^s_axi_control_bvalid\;
  s_axi_control_RDATA(7 downto 0) <= \^s_axi_control_rdata\(7 downto 0);
  s_axi_control_RVALID <= \^s_axi_control_rvalid\;
\B_V_data_1_state[1]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => ap_rst_n,
      O => \^sr\(0)
    );
\FSM_onehot_rstate[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8FDD"
    )
        port map (
      I0 => \^s_axi_control_rvalid\,
      I1 => s_axi_control_RREADY,
      I2 => s_axi_control_ARVALID,
      I3 => \^fsm_onehot_rstate_reg[1]_0\,
      O => \FSM_onehot_rstate[1]_i_1_n_0\
    );
\FSM_onehot_rstate[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F88"
    )
        port map (
      I0 => \^fsm_onehot_rstate_reg[1]_0\,
      I1 => s_axi_control_ARVALID,
      I2 => s_axi_control_RREADY,
      I3 => \^s_axi_control_rvalid\,
      O => \FSM_onehot_rstate[2]_i_1_n_0\
    );
\FSM_onehot_rstate_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \FSM_onehot_rstate[1]_i_1_n_0\,
      Q => \^fsm_onehot_rstate_reg[1]_0\,
      R => \^sr\(0)
    );
\FSM_onehot_rstate_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \FSM_onehot_rstate[2]_i_1_n_0\,
      Q => \^s_axi_control_rvalid\,
      R => \^sr\(0)
    );
\FSM_onehot_wstate[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"888BFF8B"
    )
        port map (
      I0 => s_axi_control_BREADY,
      I1 => \^s_axi_control_bvalid\,
      I2 => \^fsm_onehot_wstate_reg[2]_0\,
      I3 => \^s_axi_control_awready\,
      I4 => s_axi_control_AWVALID,
      O => \FSM_onehot_wstate[1]_i_1_n_0\
    );
\FSM_onehot_wstate[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F88"
    )
        port map (
      I0 => s_axi_control_AWVALID,
      I1 => \^s_axi_control_awready\,
      I2 => s_axi_control_WVALID,
      I3 => \^fsm_onehot_wstate_reg[2]_0\,
      O => \FSM_onehot_wstate[2]_i_1_n_0\
    );
\FSM_onehot_wstate[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F88"
    )
        port map (
      I0 => s_axi_control_WVALID,
      I1 => \^fsm_onehot_wstate_reg[2]_0\,
      I2 => s_axi_control_BREADY,
      I3 => \^s_axi_control_bvalid\,
      O => \FSM_onehot_wstate[3]_i_1_n_0\
    );
\FSM_onehot_wstate_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \FSM_onehot_wstate[1]_i_1_n_0\,
      Q => \^s_axi_control_awready\,
      R => \^sr\(0)
    );
\FSM_onehot_wstate_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \FSM_onehot_wstate[2]_i_1_n_0\,
      Q => \^fsm_onehot_wstate_reg[2]_0\,
      R => \^sr\(0)
    );
\FSM_onehot_wstate_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \FSM_onehot_wstate[3]_i_1_n_0\,
      Q => \^s_axi_control_bvalid\,
      R => \^sr\(0)
    );
int_y_ap_vld_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF7FFFFFFF0000"
    )
        port map (
      I0 => \rdata[0]_i_2_n_0\,
      I1 => \^fsm_onehot_rstate_reg[1]_0\,
      I2 => s_axi_control_ARVALID,
      I3 => s_axi_control_ARADDR(2),
      I4 => E(0),
      I5 => int_y_ap_vld,
      O => int_y_ap_vld_i_1_n_0
    );
int_y_ap_vld_reg: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => int_y_ap_vld_i_1_n_0,
      Q => int_y_ap_vld,
      R => \^sr\(0)
    );
\int_y_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => E(0),
      D => Q(0),
      Q => int_y(0),
      R => \^sr\(0)
    );
\int_y_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => E(0),
      D => Q(1),
      Q => int_y(1),
      R => \^sr\(0)
    );
\int_y_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => E(0),
      D => Q(2),
      Q => int_y(2),
      R => \^sr\(0)
    );
\int_y_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => E(0),
      D => Q(3),
      Q => int_y(3),
      R => \^sr\(0)
    );
\int_y_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => E(0),
      D => Q(4),
      Q => int_y(4),
      R => \^sr\(0)
    );
\int_y_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => E(0),
      D => Q(5),
      Q => int_y(5),
      R => \^sr\(0)
    );
\int_y_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => E(0),
      D => Q(6),
      Q => int_y(6),
      R => \^sr\(0)
    );
\int_y_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => E(0),
      D => Q(7),
      Q => int_y(7),
      R => \^sr\(0)
    );
\rdata[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A0C0FFFFA0C00000"
    )
        port map (
      I0 => int_y_ap_vld,
      I1 => int_y(0),
      I2 => \rdata[0]_i_2_n_0\,
      I3 => s_axi_control_ARADDR(2),
      I4 => ar_hs,
      I5 => \^s_axi_control_rdata\(0),
      O => \rdata[0]_i_1_n_0\
    );
\rdata[0]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0004"
    )
        port map (
      I0 => s_axi_control_ARADDR(3),
      I1 => s_axi_control_ARADDR(4),
      I2 => s_axi_control_ARADDR(1),
      I3 => s_axi_control_ARADDR(0),
      O => \rdata[0]_i_2_n_0\
    );
\rdata[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAAAA8AA"
    )
        port map (
      I0 => ar_hs,
      I1 => s_axi_control_ARADDR(2),
      I2 => s_axi_control_ARADDR(3),
      I3 => s_axi_control_ARADDR(4),
      I4 => s_axi_control_ARADDR(1),
      I5 => s_axi_control_ARADDR(0),
      O => \rdata[7]_i_1_n_0\
    );
\rdata[7]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => s_axi_control_ARVALID,
      I1 => \^fsm_onehot_rstate_reg[1]_0\,
      O => ar_hs
    );
\rdata_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \rdata[0]_i_1_n_0\,
      Q => \^s_axi_control_rdata\(0),
      R => '0'
    );
\rdata_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ar_hs,
      D => int_y(1),
      Q => \^s_axi_control_rdata\(1),
      R => \rdata[7]_i_1_n_0\
    );
\rdata_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ar_hs,
      D => int_y(2),
      Q => \^s_axi_control_rdata\(2),
      R => \rdata[7]_i_1_n_0\
    );
\rdata_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ar_hs,
      D => int_y(3),
      Q => \^s_axi_control_rdata\(3),
      R => \rdata[7]_i_1_n_0\
    );
\rdata_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ar_hs,
      D => int_y(4),
      Q => \^s_axi_control_rdata\(4),
      R => \rdata[7]_i_1_n_0\
    );
\rdata_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ar_hs,
      D => int_y(5),
      Q => \^s_axi_control_rdata\(5),
      R => \rdata[7]_i_1_n_0\
    );
\rdata_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ar_hs,
      D => int_y(6),
      Q => \^s_axi_control_rdata\(6),
      R => \rdata[7]_i_1_n_0\
    );
\rdata_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ar_hs,
      D => int_y(7),
      Q => \^s_axi_control_rdata\(7),
      R => \rdata[7]_i_1_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_vector_add_mul_8s_8s_8_1_1 is
  port (
    O : out STD_LOGIC_VECTOR ( 4 downto 0 );
    \B_V_data_1_payload_B_reg[5]\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    D : out STD_LOGIC_VECTOR ( 4 downto 0 );
    DI : in STD_LOGIC_VECTOR ( 5 downto 0 );
    S : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \y_1_data_reg_reg[3]\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \y_1_data_reg_reg[3]_0\ : in STD_LOGIC_VECTOR ( 4 downto 0 );
    \y_1_data_reg_reg[7]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \y_1_data_reg_reg[7]_0\ : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_vector_add_mul_8s_8s_8_1_1;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_vector_add_mul_8s_8s_8_1_1 is
  signal \^b_v_data_1_payload_b_reg[5]\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \^o\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \dout__0_carry_n_1\ : STD_LOGIC;
  signal \dout__0_carry_n_10\ : STD_LOGIC;
  signal \dout__0_carry_n_11\ : STD_LOGIC;
  signal \dout__0_carry_n_12\ : STD_LOGIC;
  signal \dout__0_carry_n_2\ : STD_LOGIC;
  signal \dout__0_carry_n_3\ : STD_LOGIC;
  signal \dout__0_carry_n_4\ : STD_LOGIC;
  signal \dout__0_carry_n_5\ : STD_LOGIC;
  signal \dout__0_carry_n_6\ : STD_LOGIC;
  signal \dout__0_carry_n_7\ : STD_LOGIC;
  signal \dout__22_carry_n_13\ : STD_LOGIC;
  signal \dout__22_carry_n_14\ : STD_LOGIC;
  signal \dout__22_carry_n_15\ : STD_LOGIC;
  signal \dout__22_carry_n_4\ : STD_LOGIC;
  signal \dout__22_carry_n_5\ : STD_LOGIC;
  signal \dout__22_carry_n_6\ : STD_LOGIC;
  signal \dout__22_carry_n_7\ : STD_LOGIC;
  signal \dout__34_carry_i_1_n_0\ : STD_LOGIC;
  signal \dout__34_carry_i_2_n_0\ : STD_LOGIC;
  signal \dout__34_carry_i_3_n_0\ : STD_LOGIC;
  signal \dout__34_carry_i_5_n_0\ : STD_LOGIC;
  signal \dout__34_carry_i_6_n_0\ : STD_LOGIC;
  signal \dout__34_carry_i_7_n_0\ : STD_LOGIC;
  signal \dout__34_carry_n_5\ : STD_LOGIC;
  signal \dout__34_carry_n_6\ : STD_LOGIC;
  signal \dout__34_carry_n_7\ : STD_LOGIC;
  signal \NLW_dout__0_carry_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 to 7 );
  signal \NLW_dout__22_carry_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 4 );
  signal \NLW_dout__22_carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 5 );
  signal \NLW_dout__34_carry_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 3 );
  signal \NLW_dout__34_carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 4 );
begin
  \B_V_data_1_payload_B_reg[5]\(1 downto 0) <= \^b_v_data_1_payload_b_reg[5]\(1 downto 0);
  O(4 downto 0) <= \^o\(4 downto 0);
\dout__0_carry\: unisim.vcomponents.CARRY8
     port map (
      CI => '0',
      CI_TOP => '0',
      CO(7) => \NLW_dout__0_carry_CO_UNCONNECTED\(7),
      CO(6) => \dout__0_carry_n_1\,
      CO(5) => \dout__0_carry_n_2\,
      CO(4) => \dout__0_carry_n_3\,
      CO(3) => \dout__0_carry_n_4\,
      CO(2) => \dout__0_carry_n_5\,
      CO(1) => \dout__0_carry_n_6\,
      CO(0) => \dout__0_carry_n_7\,
      DI(7) => '0',
      DI(6 downto 1) => DI(5 downto 0),
      DI(0) => '0',
      O(7 downto 6) => \^o\(4 downto 3),
      O(5) => \dout__0_carry_n_10\,
      O(4) => \dout__0_carry_n_11\,
      O(3) => \dout__0_carry_n_12\,
      O(2 downto 0) => \^o\(2 downto 0),
      S(7 downto 0) => S(7 downto 0)
    );
\dout__22_carry\: unisim.vcomponents.CARRY8
     port map (
      CI => '0',
      CI_TOP => '0',
      CO(7 downto 4) => \NLW_dout__22_carry_CO_UNCONNECTED\(7 downto 4),
      CO(3) => \dout__22_carry_n_4\,
      CO(2) => \dout__22_carry_n_5\,
      CO(1) => \dout__22_carry_n_6\,
      CO(0) => \dout__22_carry_n_7\,
      DI(7 downto 4) => B"0000",
      DI(3 downto 1) => \y_1_data_reg_reg[3]\(2 downto 0),
      DI(0) => '0',
      O(7 downto 5) => \NLW_dout__22_carry_O_UNCONNECTED\(7 downto 5),
      O(4 downto 3) => \^b_v_data_1_payload_b_reg[5]\(1 downto 0),
      O(2) => \dout__22_carry_n_13\,
      O(1) => \dout__22_carry_n_14\,
      O(0) => \dout__22_carry_n_15\,
      S(7 downto 5) => B"000",
      S(4 downto 0) => \y_1_data_reg_reg[3]_0\(4 downto 0)
    );
\dout__34_carry\: unisim.vcomponents.CARRY8
     port map (
      CI => '0',
      CI_TOP => '0',
      CO(7 downto 3) => \NLW_dout__34_carry_CO_UNCONNECTED\(7 downto 3),
      CO(2) => \dout__34_carry_n_5\,
      CO(1) => \dout__34_carry_n_6\,
      CO(0) => \dout__34_carry_n_7\,
      DI(7 downto 3) => B"00000",
      DI(2) => \dout__34_carry_i_1_n_0\,
      DI(1) => \dout__34_carry_i_2_n_0\,
      DI(0) => \dout__34_carry_i_3_n_0\,
      O(7 downto 4) => \NLW_dout__34_carry_O_UNCONNECTED\(7 downto 4),
      O(3 downto 0) => D(4 downto 1),
      S(7 downto 4) => B"0000",
      S(3) => \y_1_data_reg_reg[7]\(0),
      S(2) => \dout__34_carry_i_5_n_0\,
      S(1) => \dout__34_carry_i_6_n_0\,
      S(0) => \dout__34_carry_i_7_n_0\
    );
\dout__34_carry_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \dout__22_carry_n_13\,
      I1 => \dout__0_carry_n_10\,
      O => \dout__34_carry_i_1_n_0\
    );
\dout__34_carry_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \dout__22_carry_n_14\,
      I1 => \dout__0_carry_n_11\,
      O => \dout__34_carry_i_2_n_0\
    );
\dout__34_carry_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \dout__22_carry_n_15\,
      I1 => \dout__0_carry_n_12\,
      O => \dout__34_carry_i_3_n_0\
    );
\dout__34_carry_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"87787887"
    )
        port map (
      I0 => \dout__0_carry_n_10\,
      I1 => \dout__22_carry_n_13\,
      I2 => \^o\(3),
      I3 => \^b_v_data_1_payload_b_reg[5]\(0),
      I4 => \y_1_data_reg_reg[7]_0\,
      O => \dout__34_carry_i_5_n_0\
    );
\dout__34_carry_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8778"
    )
        port map (
      I0 => \dout__0_carry_n_11\,
      I1 => \dout__22_carry_n_14\,
      I2 => \dout__0_carry_n_10\,
      I3 => \dout__22_carry_n_13\,
      O => \dout__34_carry_i_6_n_0\
    );
\dout__34_carry_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8778"
    )
        port map (
      I0 => \dout__0_carry_n_12\,
      I1 => \dout__22_carry_n_15\,
      I2 => \dout__0_carry_n_11\,
      I3 => \dout__22_carry_n_14\,
      O => \dout__34_carry_i_7_n_0\
    );
\y_1_data_reg[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \dout__22_carry_n_15\,
      I1 => \dout__0_carry_n_12\,
      O => D(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_vector_add_regslice_both is
  port (
    \B_V_data_1_state_reg[1]_0\ : out STD_LOGIC;
    B_V_data_1_sel_rd_reg_0 : out STD_LOGIC;
    tmp_1_nbreadreq_fu_52_p3 : out STD_LOGIC;
    \B_V_data_1_state_reg[0]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \B_V_data_1_payload_B_reg[1]_0\ : out STD_LOGIC;
    \B_V_data_1_payload_B_reg[7]_0\ : out STD_LOGIC;
    DI : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \B_V_data_1_payload_B_reg[3]_0\ : out STD_LOGIC;
    \B_V_data_1_payload_B_reg[4]_0\ : out STD_LOGIC;
    \B_V_data_1_payload_B_reg[5]_0\ : out STD_LOGIC;
    \B_V_data_1_payload_B_reg[2]_0\ : out STD_LOGIC;
    \B_V_data_1_payload_A_reg[0]_0\ : out STD_LOGIC;
    \B_V_data_1_payload_A_reg[6]_0\ : out STD_LOGIC_VECTOR ( 4 downto 0 );
    \B_V_data_1_payload_B_reg[6]_0\ : out STD_LOGIC_VECTOR ( 4 downto 0 );
    \B_V_data_1_payload_B_reg[2]_1\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \B_V_data_1_payload_A_reg[0]_1\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    S : out STD_LOGIC_VECTOR ( 5 downto 0 );
    \B_V_data_1_payload_B_reg[0]_0\ : out STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    ap_clk : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    tmp_nbreadreq_fu_44_p3 : in STD_LOGIC;
    w_TVALID : in STD_LOGIC;
    ap_rst_n : in STD_LOGIC;
    \y_1_data_reg_reg[2]\ : in STD_LOGIC;
    \dout__0_carry_i_7\ : in STD_LOGIC;
    \dout__0_carry_i_7_0\ : in STD_LOGIC;
    \y_1_data_reg_reg[2]_0\ : in STD_LOGIC;
    \y_1_data_reg_reg[2]_1\ : in STD_LOGIC;
    \dout__34_carry_i_5\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    B_V_data_1_sel : in STD_LOGIC;
    \dout__34_carry_i_5_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \y_1_data_reg_reg[2]_2\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \y_1_data_reg_reg[2]_3\ : in STD_LOGIC;
    \y_1_data_reg_reg[2]_4\ : in STD_LOGIC;
    \y_1_data_reg_reg[2]_5\ : in STD_LOGIC;
    \dout__22_carry\ : in STD_LOGIC;
    \dout__22_carry_0\ : in STD_LOGIC;
    w_TDATA : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_vector_add_regslice_both;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_vector_add_regslice_both is
  signal B_V_data_1_load_A : STD_LOGIC;
  signal B_V_data_1_load_B : STD_LOGIC;
  signal \^b_v_data_1_payload_a_reg[6]_0\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \B_V_data_1_payload_A_reg_n_0_[1]\ : STD_LOGIC;
  signal \B_V_data_1_payload_A_reg_n_0_[4]\ : STD_LOGIC;
  signal \B_V_data_1_payload_A_reg_n_0_[7]\ : STD_LOGIC;
  signal \^b_v_data_1_payload_b_reg[0]_0\ : STD_LOGIC;
  signal \^b_v_data_1_payload_b_reg[1]_0\ : STD_LOGIC;
  signal \^b_v_data_1_payload_b_reg[2]_0\ : STD_LOGIC;
  signal \^b_v_data_1_payload_b_reg[3]_0\ : STD_LOGIC;
  signal \^b_v_data_1_payload_b_reg[4]_0\ : STD_LOGIC;
  signal \^b_v_data_1_payload_b_reg[5]_0\ : STD_LOGIC;
  signal \^b_v_data_1_payload_b_reg[6]_0\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \B_V_data_1_payload_B_reg_n_0_[1]\ : STD_LOGIC;
  signal \B_V_data_1_payload_B_reg_n_0_[4]\ : STD_LOGIC;
  signal \B_V_data_1_payload_B_reg_n_0_[7]\ : STD_LOGIC;
  signal \B_V_data_1_sel_rd_i_1__0_n_0\ : STD_LOGIC;
  signal \^b_v_data_1_sel_rd_reg_0\ : STD_LOGIC;
  signal B_V_data_1_sel_wr : STD_LOGIC;
  signal \B_V_data_1_sel_wr_i_1__0_n_0\ : STD_LOGIC;
  signal B_V_data_1_state : STD_LOGIC_VECTOR ( 1 to 1 );
  signal \B_V_data_1_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \^b_v_data_1_state_reg[1]_0\ : STD_LOGIC;
  signal \^di\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \dout__22_carry_i_14_n_0\ : STD_LOGIC;
  signal \^tmp_1_nbreadreq_fu_52_p3\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \B_V_data_1_state[1]_i_1__0\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \dout__0_carry_i_15\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \dout__0_carry_i_17\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \dout__0_carry_i_20\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \dout__0_carry_i_21\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \dout__0_carry_i_22\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \dout__0_carry_i_23\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \y_1_data_reg[7]_i_1\ : label is "soft_lutpair1";
begin
  \B_V_data_1_payload_A_reg[6]_0\(4 downto 0) <= \^b_v_data_1_payload_a_reg[6]_0\(4 downto 0);
  \B_V_data_1_payload_B_reg[0]_0\ <= \^b_v_data_1_payload_b_reg[0]_0\;
  \B_V_data_1_payload_B_reg[1]_0\ <= \^b_v_data_1_payload_b_reg[1]_0\;
  \B_V_data_1_payload_B_reg[2]_0\ <= \^b_v_data_1_payload_b_reg[2]_0\;
  \B_V_data_1_payload_B_reg[3]_0\ <= \^b_v_data_1_payload_b_reg[3]_0\;
  \B_V_data_1_payload_B_reg[4]_0\ <= \^b_v_data_1_payload_b_reg[4]_0\;
  \B_V_data_1_payload_B_reg[5]_0\ <= \^b_v_data_1_payload_b_reg[5]_0\;
  \B_V_data_1_payload_B_reg[6]_0\(4 downto 0) <= \^b_v_data_1_payload_b_reg[6]_0\(4 downto 0);
  B_V_data_1_sel_rd_reg_0 <= \^b_v_data_1_sel_rd_reg_0\;
  \B_V_data_1_state_reg[1]_0\ <= \^b_v_data_1_state_reg[1]_0\;
  DI(2 downto 0) <= \^di\(2 downto 0);
  tmp_1_nbreadreq_fu_52_p3 <= \^tmp_1_nbreadreq_fu_52_p3\;
\B_V_data_1_payload_A[7]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"0D"
    )
        port map (
      I0 => \^tmp_1_nbreadreq_fu_52_p3\,
      I1 => \^b_v_data_1_state_reg[1]_0\,
      I2 => B_V_data_1_sel_wr,
      O => B_V_data_1_load_A
    );
\B_V_data_1_payload_A_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => B_V_data_1_load_A,
      D => w_TDATA(0),
      Q => \^b_v_data_1_payload_a_reg[6]_0\(0),
      R => '0'
    );
\B_V_data_1_payload_A_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => B_V_data_1_load_A,
      D => w_TDATA(1),
      Q => \B_V_data_1_payload_A_reg_n_0_[1]\,
      R => '0'
    );
\B_V_data_1_payload_A_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => B_V_data_1_load_A,
      D => w_TDATA(2),
      Q => \^b_v_data_1_payload_a_reg[6]_0\(1),
      R => '0'
    );
\B_V_data_1_payload_A_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => B_V_data_1_load_A,
      D => w_TDATA(3),
      Q => \^b_v_data_1_payload_a_reg[6]_0\(2),
      R => '0'
    );
\B_V_data_1_payload_A_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => B_V_data_1_load_A,
      D => w_TDATA(4),
      Q => \B_V_data_1_payload_A_reg_n_0_[4]\,
      R => '0'
    );
\B_V_data_1_payload_A_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => B_V_data_1_load_A,
      D => w_TDATA(5),
      Q => \^b_v_data_1_payload_a_reg[6]_0\(3),
      R => '0'
    );
\B_V_data_1_payload_A_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => B_V_data_1_load_A,
      D => w_TDATA(6),
      Q => \^b_v_data_1_payload_a_reg[6]_0\(4),
      R => '0'
    );
\B_V_data_1_payload_A_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => B_V_data_1_load_A,
      D => w_TDATA(7),
      Q => \B_V_data_1_payload_A_reg_n_0_[7]\,
      R => '0'
    );
\B_V_data_1_payload_B[7]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D0"
    )
        port map (
      I0 => \^tmp_1_nbreadreq_fu_52_p3\,
      I1 => \^b_v_data_1_state_reg[1]_0\,
      I2 => B_V_data_1_sel_wr,
      O => B_V_data_1_load_B
    );
\B_V_data_1_payload_B_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => B_V_data_1_load_B,
      D => w_TDATA(0),
      Q => \^b_v_data_1_payload_b_reg[6]_0\(0),
      R => '0'
    );
\B_V_data_1_payload_B_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => B_V_data_1_load_B,
      D => w_TDATA(1),
      Q => \B_V_data_1_payload_B_reg_n_0_[1]\,
      R => '0'
    );
\B_V_data_1_payload_B_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => B_V_data_1_load_B,
      D => w_TDATA(2),
      Q => \^b_v_data_1_payload_b_reg[6]_0\(1),
      R => '0'
    );
\B_V_data_1_payload_B_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => B_V_data_1_load_B,
      D => w_TDATA(3),
      Q => \^b_v_data_1_payload_b_reg[6]_0\(2),
      R => '0'
    );
\B_V_data_1_payload_B_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => B_V_data_1_load_B,
      D => w_TDATA(4),
      Q => \B_V_data_1_payload_B_reg_n_0_[4]\,
      R => '0'
    );
\B_V_data_1_payload_B_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => B_V_data_1_load_B,
      D => w_TDATA(5),
      Q => \^b_v_data_1_payload_b_reg[6]_0\(3),
      R => '0'
    );
\B_V_data_1_payload_B_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => B_V_data_1_load_B,
      D => w_TDATA(6),
      Q => \^b_v_data_1_payload_b_reg[6]_0\(4),
      R => '0'
    );
\B_V_data_1_payload_B_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => B_V_data_1_load_B,
      D => w_TDATA(7),
      Q => \B_V_data_1_payload_B_reg_n_0_[7]\,
      R => '0'
    );
\B_V_data_1_sel_rd_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => Q(0),
      I1 => tmp_nbreadreq_fu_44_p3,
      I2 => \^tmp_1_nbreadreq_fu_52_p3\,
      I3 => \^b_v_data_1_sel_rd_reg_0\,
      O => \B_V_data_1_sel_rd_i_1__0_n_0\
    );
B_V_data_1_sel_rd_reg: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \B_V_data_1_sel_rd_i_1__0_n_0\,
      Q => \^b_v_data_1_sel_rd_reg_0\,
      R => SR(0)
    );
\B_V_data_1_sel_wr_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => w_TVALID,
      I1 => \^b_v_data_1_state_reg[1]_0\,
      I2 => B_V_data_1_sel_wr,
      O => \B_V_data_1_sel_wr_i_1__0_n_0\
    );
B_V_data_1_sel_wr_reg: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \B_V_data_1_sel_wr_i_1__0_n_0\,
      Q => B_V_data_1_sel_wr,
      R => SR(0)
    );
\B_V_data_1_state[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF002A00AA00AA00"
    )
        port map (
      I0 => \^tmp_1_nbreadreq_fu_52_p3\,
      I1 => tmp_nbreadreq_fu_44_p3,
      I2 => Q(0),
      I3 => ap_rst_n,
      I4 => w_TVALID,
      I5 => \^b_v_data_1_state_reg[1]_0\,
      O => \B_V_data_1_state[0]_i_1_n_0\
    );
\B_V_data_1_state[1]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8FFF8F8F"
    )
        port map (
      I0 => Q(0),
      I1 => tmp_nbreadreq_fu_44_p3,
      I2 => \^tmp_1_nbreadreq_fu_52_p3\,
      I3 => w_TVALID,
      I4 => \^b_v_data_1_state_reg[1]_0\,
      O => B_V_data_1_state(1)
    );
\B_V_data_1_state_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \B_V_data_1_state[0]_i_1_n_0\,
      Q => \^tmp_1_nbreadreq_fu_52_p3\,
      R => '0'
    );
\B_V_data_1_state_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => B_V_data_1_state(1),
      Q => \^b_v_data_1_state_reg[1]_0\,
      R => SR(0)
    );
\dout__0_carry_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F888800080008000"
    )
        port map (
      I0 => \^b_v_data_1_payload_b_reg[3]_0\,
      I1 => \y_1_data_reg_reg[2]_0\,
      I2 => \^b_v_data_1_payload_b_reg[4]_0\,
      I3 => \y_1_data_reg_reg[2]_1\,
      I4 => \y_1_data_reg_reg[2]\,
      I5 => \^b_v_data_1_payload_b_reg[5]_0\,
      O => \^di\(2)
    );
\dout__0_carry_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"66663CCC96663CCC"
    )
        port map (
      I0 => \^b_v_data_1_payload_b_reg[2]_0\,
      I1 => \y_1_data_reg_reg[2]_3\,
      I2 => \^b_v_data_1_payload_b_reg[1]_0\,
      I3 => \y_1_data_reg_reg[2]_0\,
      I4 => \y_1_data_reg_reg[2]_1\,
      I5 => \^b_v_data_1_payload_b_reg[0]_0\,
      O => S(3)
    );
\dout__0_carry_i_12\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"656AAAAA"
    )
        port map (
      I0 => \y_1_data_reg_reg[2]_2\(0),
      I1 => \^b_v_data_1_payload_b_reg[6]_0\(1),
      I2 => \^b_v_data_1_sel_rd_reg_0\,
      I3 => \^b_v_data_1_payload_a_reg[6]_0\(1),
      I4 => \y_1_data_reg_reg[2]\,
      O => S(2)
    );
\dout__0_carry_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"757F8A808A808A80"
    )
        port map (
      I0 => \y_1_data_reg_reg[2]\,
      I1 => \B_V_data_1_payload_B_reg_n_0_[1]\,
      I2 => \^b_v_data_1_sel_rd_reg_0\,
      I3 => \B_V_data_1_payload_A_reg_n_0_[1]\,
      I4 => \^b_v_data_1_payload_b_reg[0]_0\,
      I5 => \y_1_data_reg_reg[2]_1\,
      O => S(1)
    );
\dout__0_carry_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E2E2E2000000E200"
    )
        port map (
      I0 => \^b_v_data_1_payload_a_reg[6]_0\(0),
      I1 => \^b_v_data_1_sel_rd_reg_0\,
      I2 => \^b_v_data_1_payload_b_reg[6]_0\(0),
      I3 => \dout__34_carry_i_5\(0),
      I4 => B_V_data_1_sel,
      I5 => \dout__34_carry_i_5_0\(0),
      O => S(0)
    );
\dout__0_carry_i_15\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^b_v_data_1_payload_b_reg[6]_0\(2),
      I1 => \^b_v_data_1_sel_rd_reg_0\,
      I2 => \^b_v_data_1_payload_a_reg[6]_0\(2),
      O => \^b_v_data_1_payload_b_reg[3]_0\
    );
\dout__0_carry_i_17\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \B_V_data_1_payload_B_reg_n_0_[4]\,
      I1 => \^b_v_data_1_sel_rd_reg_0\,
      I2 => \B_V_data_1_payload_A_reg_n_0_[4]\,
      O => \^b_v_data_1_payload_b_reg[4]_0\
    );
\dout__0_carry_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F888800080008000"
    )
        port map (
      I0 => \^b_v_data_1_payload_b_reg[2]_0\,
      I1 => \y_1_data_reg_reg[2]_0\,
      I2 => \^b_v_data_1_payload_b_reg[3]_0\,
      I3 => \y_1_data_reg_reg[2]_1\,
      I4 => \y_1_data_reg_reg[2]\,
      I5 => \^b_v_data_1_payload_b_reg[4]_0\,
      O => \^di\(1)
    );
\dout__0_carry_i_20\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^b_v_data_1_payload_b_reg[6]_0\(3),
      I1 => \^b_v_data_1_sel_rd_reg_0\,
      I2 => \^b_v_data_1_payload_a_reg[6]_0\(3),
      O => \^b_v_data_1_payload_b_reg[5]_0\
    );
\dout__0_carry_i_21\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^b_v_data_1_payload_b_reg[6]_0\(1),
      I1 => \^b_v_data_1_sel_rd_reg_0\,
      I2 => \^b_v_data_1_payload_a_reg[6]_0\(1),
      O => \^b_v_data_1_payload_b_reg[2]_0\
    );
\dout__0_carry_i_22\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \B_V_data_1_payload_B_reg_n_0_[1]\,
      I1 => \^b_v_data_1_sel_rd_reg_0\,
      I2 => \B_V_data_1_payload_A_reg_n_0_[1]\,
      O => \^b_v_data_1_payload_b_reg[1]_0\
    );
\dout__0_carry_i_23\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^b_v_data_1_payload_b_reg[6]_0\(0),
      I1 => \^b_v_data_1_sel_rd_reg_0\,
      I2 => \^b_v_data_1_payload_a_reg[6]_0\(0),
      O => \^b_v_data_1_payload_b_reg[0]_0\
    );
\dout__0_carry_i_25\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B80047FF47FFB800"
    )
        port map (
      I0 => \B_V_data_1_payload_B_reg_n_0_[7]\,
      I1 => \^b_v_data_1_sel_rd_reg_0\,
      I2 => \B_V_data_1_payload_A_reg_n_0_[7]\,
      I3 => \y_1_data_reg_reg[2]\,
      I4 => \dout__0_carry_i_7\,
      I5 => \dout__0_carry_i_7_0\,
      O => \B_V_data_1_payload_B_reg[7]_0\
    );
\dout__0_carry_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8777788878887888"
    )
        port map (
      I0 => \^b_v_data_1_payload_b_reg[3]_0\,
      I1 => \y_1_data_reg_reg[2]\,
      I2 => \y_1_data_reg_reg[2]_0\,
      I3 => \^b_v_data_1_payload_b_reg[1]_0\,
      I4 => \^b_v_data_1_payload_b_reg[2]_0\,
      I5 => \y_1_data_reg_reg[2]_1\,
      O => \^di\(0)
    );
\dout__0_carry_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6A959595956A6A6A"
    )
        port map (
      I0 => \^di\(2),
      I1 => \y_1_data_reg_reg[2]_1\,
      I2 => \^b_v_data_1_payload_b_reg[5]_0\,
      I3 => \y_1_data_reg_reg[2]_0\,
      I4 => \^b_v_data_1_payload_b_reg[4]_0\,
      I5 => \y_1_data_reg_reg[2]_5\,
      O => S(5)
    );
\dout__0_carry_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6A959595956A6A6A"
    )
        port map (
      I0 => \^di\(1),
      I1 => \y_1_data_reg_reg[2]_1\,
      I2 => \^b_v_data_1_payload_b_reg[4]_0\,
      I3 => \y_1_data_reg_reg[2]_0\,
      I4 => \^b_v_data_1_payload_b_reg[3]_0\,
      I5 => \y_1_data_reg_reg[2]_4\,
      O => S(4)
    );
\dout__22_carry_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E2E2E2000000E200"
    )
        port map (
      I0 => \^b_v_data_1_payload_a_reg[6]_0\(2),
      I1 => \^b_v_data_1_sel_rd_reg_0\,
      I2 => \^b_v_data_1_payload_b_reg[6]_0\(2),
      I3 => \dout__34_carry_i_5\(1),
      I4 => B_V_data_1_sel,
      I5 => \dout__34_carry_i_5_0\(1),
      O => \dout__22_carry_i_14_n_0\
    );
\dout__22_carry_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E2E2E2000000E200"
    )
        port map (
      I0 => \^b_v_data_1_payload_a_reg[6]_0\(0),
      I1 => \^b_v_data_1_sel_rd_reg_0\,
      I2 => \^b_v_data_1_payload_b_reg[6]_0\(0),
      I3 => \dout__34_carry_i_5\(2),
      I4 => B_V_data_1_sel,
      I5 => \dout__34_carry_i_5_0\(2),
      O => \B_V_data_1_payload_A_reg[0]_1\(0)
    );
\dout__22_carry_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"666696663CCC3CCC"
    )
        port map (
      I0 => \^b_v_data_1_payload_b_reg[2]_0\,
      I1 => \dout__22_carry_i_14_n_0\,
      I2 => \^b_v_data_1_payload_b_reg[1]_0\,
      I3 => \dout__22_carry\,
      I4 => \^b_v_data_1_payload_b_reg[0]_0\,
      I5 => \dout__22_carry_0\,
      O => \B_V_data_1_payload_B_reg[2]_1\(1)
    );
\dout__22_carry_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E2E2E2000000E200"
    )
        port map (
      I0 => \^b_v_data_1_payload_a_reg[6]_0\(0),
      I1 => \^b_v_data_1_sel_rd_reg_0\,
      I2 => \^b_v_data_1_payload_b_reg[6]_0\(0),
      I3 => \dout__34_carry_i_5\(1),
      I4 => B_V_data_1_sel,
      I5 => \dout__34_carry_i_5_0\(1),
      O => \B_V_data_1_payload_B_reg[2]_1\(0)
    );
\dout__34_carry_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1D1D1DFFFFFF1DFF"
    )
        port map (
      I0 => \^b_v_data_1_payload_a_reg[6]_0\(0),
      I1 => \^b_v_data_1_sel_rd_reg_0\,
      I2 => \^b_v_data_1_payload_b_reg[6]_0\(0),
      I3 => \dout__34_carry_i_5\(3),
      I4 => B_V_data_1_sel,
      I5 => \dout__34_carry_i_5_0\(3),
      O => \B_V_data_1_payload_A_reg[0]_0\
    );
\y_1_data_reg[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"70"
    )
        port map (
      I0 => \^tmp_1_nbreadreq_fu_52_p3\,
      I1 => tmp_nbreadreq_fu_44_p3,
      I2 => Q(0),
      O => \B_V_data_1_state_reg[0]_0\(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_vector_add_regslice_both_0 is
  port (
    \B_V_data_1_state_reg[1]_0\ : out STD_LOGIC;
    B_V_data_1_sel : out STD_LOGIC;
    tmp_nbreadreq_fu_44_p3 : out STD_LOGIC;
    \B_V_data_1_payload_B_reg[6]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \B_V_data_1_payload_A_reg[6]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \B_V_data_1_payload_B_reg[5]_0\ : out STD_LOGIC;
    \B_V_data_1_payload_B_reg[4]_0\ : out STD_LOGIC;
    DI : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \B_V_data_1_payload_B_reg[2]_0\ : out STD_LOGIC;
    \B_V_data_1_payload_B_reg[1]_0\ : out STD_LOGIC;
    \B_V_data_1_payload_B_reg[0]_0\ : out STD_LOGIC;
    \B_V_data_1_payload_A_reg[1]_0\ : out STD_LOGIC;
    \B_V_data_1_payload_A_reg[2]_0\ : out STD_LOGIC;
    \B_V_data_1_payload_A_reg[0]_0\ : out STD_LOGIC;
    \B_V_data_1_payload_A_reg[0]_1\ : out STD_LOGIC;
    \B_V_data_1_payload_A_reg[0]_2\ : out STD_LOGIC;
    S : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \B_V_data_1_payload_B_reg[3]_0\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \B_V_data_1_payload_A_reg[5]_0\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \B_V_data_1_payload_A_reg[7]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    ap_clk : in STD_LOGIC;
    x_TVALID : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    tmp_1_nbreadreq_fu_52_p3 : in STD_LOGIC;
    ap_rst_n : in STD_LOGIC;
    \y_1_data_reg_reg[2]\ : in STD_LOGIC;
    O : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \dout__34_carry_i_4_0\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \y_1_data_reg_reg[2]_0\ : in STD_LOGIC;
    \y_1_data_reg_reg[2]_1\ : in STD_LOGIC;
    \dout__0_carry_i_8\ : in STD_LOGIC_VECTOR ( 4 downto 0 );
    \y_1_data_reg_reg[2]_2\ : in STD_LOGIC;
    \dout__0_carry_i_8_0\ : in STD_LOGIC_VECTOR ( 4 downto 0 );
    \y_1_data_reg_reg[2]_3\ : in STD_LOGIC;
    \y_1_data_reg_reg[2]_4\ : in STD_LOGIC;
    \y_1_data_reg_reg[2]_5\ : in STD_LOGIC;
    \y_1_data_reg_reg[2]_6\ : in STD_LOGIC;
    x_TDATA : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_vector_add_regslice_both_0 : entity is "vector_add_regslice_both";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_vector_add_regslice_both_0;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_vector_add_regslice_both_0 is
  signal B_V_data_1_load_A : STD_LOGIC;
  signal B_V_data_1_load_B : STD_LOGIC;
  signal B_V_data_1_payload_A : STD_LOGIC_VECTOR ( 7 downto 1 );
  signal \^b_v_data_1_payload_a_reg[0]_1\ : STD_LOGIC;
  signal \^b_v_data_1_payload_a_reg[6]_0\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal B_V_data_1_payload_B : STD_LOGIC_VECTOR ( 7 downto 1 );
  signal \^b_v_data_1_payload_b_reg[0]_0\ : STD_LOGIC;
  signal \^b_v_data_1_payload_b_reg[1]_0\ : STD_LOGIC;
  signal \^b_v_data_1_payload_b_reg[2]_0\ : STD_LOGIC;
  signal \^b_v_data_1_payload_b_reg[3]_0\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \^b_v_data_1_payload_b_reg[4]_0\ : STD_LOGIC;
  signal \^b_v_data_1_payload_b_reg[5]_0\ : STD_LOGIC;
  signal \^b_v_data_1_payload_b_reg[6]_0\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \^b_v_data_1_sel\ : STD_LOGIC;
  signal B_V_data_1_sel_rd_i_1_n_0 : STD_LOGIC;
  signal B_V_data_1_sel_wr : STD_LOGIC;
  signal B_V_data_1_sel_wr_i_1_n_0 : STD_LOGIC;
  signal B_V_data_1_state : STD_LOGIC_VECTOR ( 1 to 1 );
  signal \B_V_data_1_state[0]_i_1__0_n_0\ : STD_LOGIC;
  signal \^b_v_data_1_state_reg[1]_0\ : STD_LOGIC;
  signal \^di\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \dout__0_carry_i_27_n_0\ : STD_LOGIC;
  signal \dout__22_carry_i_12_n_0\ : STD_LOGIC;
  signal \dout__22_carry_i_13_n_0\ : STD_LOGIC;
  signal \dout__22_carry_i_9_n_0\ : STD_LOGIC;
  signal \dout__34_carry_i_8_n_0\ : STD_LOGIC;
  signal \dout__34_carry_i_9_n_0\ : STD_LOGIC;
  signal \^tmp_nbreadreq_fu_44_p3\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \dout__0_carry_i_16\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \dout__0_carry_i_18\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \dout__0_carry_i_19\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \dout__22_carry_i_10\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \dout__22_carry_i_11\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \dout__22_carry_i_9\ : label is "soft_lutpair7";
begin
  \B_V_data_1_payload_A_reg[0]_1\ <= \^b_v_data_1_payload_a_reg[0]_1\;
  \B_V_data_1_payload_A_reg[6]_0\(3 downto 0) <= \^b_v_data_1_payload_a_reg[6]_0\(3 downto 0);
  \B_V_data_1_payload_B_reg[0]_0\ <= \^b_v_data_1_payload_b_reg[0]_0\;
  \B_V_data_1_payload_B_reg[1]_0\ <= \^b_v_data_1_payload_b_reg[1]_0\;
  \B_V_data_1_payload_B_reg[2]_0\ <= \^b_v_data_1_payload_b_reg[2]_0\;
  \B_V_data_1_payload_B_reg[3]_0\(1 downto 0) <= \^b_v_data_1_payload_b_reg[3]_0\(1 downto 0);
  \B_V_data_1_payload_B_reg[4]_0\ <= \^b_v_data_1_payload_b_reg[4]_0\;
  \B_V_data_1_payload_B_reg[5]_0\ <= \^b_v_data_1_payload_b_reg[5]_0\;
  \B_V_data_1_payload_B_reg[6]_0\(3 downto 0) <= \^b_v_data_1_payload_b_reg[6]_0\(3 downto 0);
  B_V_data_1_sel <= \^b_v_data_1_sel\;
  \B_V_data_1_state_reg[1]_0\ <= \^b_v_data_1_state_reg[1]_0\;
  DI(2 downto 0) <= \^di\(2 downto 0);
  tmp_nbreadreq_fu_44_p3 <= \^tmp_nbreadreq_fu_44_p3\;
\B_V_data_1_payload_A[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"0D"
    )
        port map (
      I0 => \^tmp_nbreadreq_fu_44_p3\,
      I1 => \^b_v_data_1_state_reg[1]_0\,
      I2 => B_V_data_1_sel_wr,
      O => B_V_data_1_load_A
    );
\B_V_data_1_payload_A_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => B_V_data_1_load_A,
      D => x_TDATA(0),
      Q => \^b_v_data_1_payload_a_reg[6]_0\(0),
      R => '0'
    );
\B_V_data_1_payload_A_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => B_V_data_1_load_A,
      D => x_TDATA(1),
      Q => B_V_data_1_payload_A(1),
      R => '0'
    );
\B_V_data_1_payload_A_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => B_V_data_1_load_A,
      D => x_TDATA(2),
      Q => B_V_data_1_payload_A(2),
      R => '0'
    );
\B_V_data_1_payload_A_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => B_V_data_1_load_A,
      D => x_TDATA(3),
      Q => \^b_v_data_1_payload_a_reg[6]_0\(1),
      R => '0'
    );
\B_V_data_1_payload_A_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => B_V_data_1_load_A,
      D => x_TDATA(4),
      Q => \^b_v_data_1_payload_a_reg[6]_0\(2),
      R => '0'
    );
\B_V_data_1_payload_A_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => B_V_data_1_load_A,
      D => x_TDATA(5),
      Q => B_V_data_1_payload_A(5),
      R => '0'
    );
\B_V_data_1_payload_A_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => B_V_data_1_load_A,
      D => x_TDATA(6),
      Q => \^b_v_data_1_payload_a_reg[6]_0\(3),
      R => '0'
    );
\B_V_data_1_payload_A_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => B_V_data_1_load_A,
      D => x_TDATA(7),
      Q => B_V_data_1_payload_A(7),
      R => '0'
    );
\B_V_data_1_payload_B[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D0"
    )
        port map (
      I0 => \^tmp_nbreadreq_fu_44_p3\,
      I1 => \^b_v_data_1_state_reg[1]_0\,
      I2 => B_V_data_1_sel_wr,
      O => B_V_data_1_load_B
    );
\B_V_data_1_payload_B_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => B_V_data_1_load_B,
      D => x_TDATA(0),
      Q => \^b_v_data_1_payload_b_reg[6]_0\(0),
      R => '0'
    );
\B_V_data_1_payload_B_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => B_V_data_1_load_B,
      D => x_TDATA(1),
      Q => B_V_data_1_payload_B(1),
      R => '0'
    );
\B_V_data_1_payload_B_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => B_V_data_1_load_B,
      D => x_TDATA(2),
      Q => B_V_data_1_payload_B(2),
      R => '0'
    );
\B_V_data_1_payload_B_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => B_V_data_1_load_B,
      D => x_TDATA(3),
      Q => \^b_v_data_1_payload_b_reg[6]_0\(1),
      R => '0'
    );
\B_V_data_1_payload_B_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => B_V_data_1_load_B,
      D => x_TDATA(4),
      Q => \^b_v_data_1_payload_b_reg[6]_0\(2),
      R => '0'
    );
\B_V_data_1_payload_B_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => B_V_data_1_load_B,
      D => x_TDATA(5),
      Q => B_V_data_1_payload_B(5),
      R => '0'
    );
\B_V_data_1_payload_B_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => B_V_data_1_load_B,
      D => x_TDATA(6),
      Q => \^b_v_data_1_payload_b_reg[6]_0\(3),
      R => '0'
    );
\B_V_data_1_payload_B_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => B_V_data_1_load_B,
      D => x_TDATA(7),
      Q => B_V_data_1_payload_B(7),
      R => '0'
    );
B_V_data_1_sel_rd_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => Q(0),
      I1 => \^tmp_nbreadreq_fu_44_p3\,
      I2 => tmp_1_nbreadreq_fu_52_p3,
      I3 => \^b_v_data_1_sel\,
      O => B_V_data_1_sel_rd_i_1_n_0
    );
B_V_data_1_sel_rd_reg: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => B_V_data_1_sel_rd_i_1_n_0,
      Q => \^b_v_data_1_sel\,
      R => SR(0)
    );
B_V_data_1_sel_wr_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => x_TVALID,
      I1 => \^b_v_data_1_state_reg[1]_0\,
      I2 => B_V_data_1_sel_wr,
      O => B_V_data_1_sel_wr_i_1_n_0
    );
B_V_data_1_sel_wr_reg: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => B_V_data_1_sel_wr_i_1_n_0,
      Q => B_V_data_1_sel_wr,
      R => SR(0)
    );
\B_V_data_1_state[0]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DFFF000088880000"
    )
        port map (
      I0 => \^b_v_data_1_state_reg[1]_0\,
      I1 => x_TVALID,
      I2 => Q(0),
      I3 => tmp_1_nbreadreq_fu_52_p3,
      I4 => ap_rst_n,
      I5 => \^tmp_nbreadreq_fu_44_p3\,
      O => \B_V_data_1_state[0]_i_1__0_n_0\
    );
\B_V_data_1_state[1]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"D5FFD5D5"
    )
        port map (
      I0 => \^tmp_nbreadreq_fu_44_p3\,
      I1 => Q(0),
      I2 => tmp_1_nbreadreq_fu_52_p3,
      I3 => x_TVALID,
      I4 => \^b_v_data_1_state_reg[1]_0\,
      O => B_V_data_1_state(1)
    );
\B_V_data_1_state_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \B_V_data_1_state[0]_i_1__0_n_0\,
      Q => \^tmp_nbreadreq_fu_44_p3\,
      R => '0'
    );
\B_V_data_1_state_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => B_V_data_1_state(1),
      Q => \^b_v_data_1_state_reg[1]_0\,
      R => SR(0)
    );
\dout__0_carry_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6A95956A956A956A"
    )
        port map (
      I0 => \^di\(2),
      I1 => \y_1_data_reg_reg[2]_0\,
      I2 => \^b_v_data_1_payload_b_reg[2]_0\,
      I3 => \dout__0_carry_i_27_n_0\,
      I4 => \^b_v_data_1_payload_b_reg[0]_0\,
      I5 => \y_1_data_reg_reg[2]_5\,
      O => S(0)
    );
\dout__0_carry_i_16\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => B_V_data_1_payload_B(2),
      I1 => \^b_v_data_1_sel\,
      I2 => B_V_data_1_payload_A(2),
      O => \^b_v_data_1_payload_b_reg[2]_0\
    );
\dout__0_carry_i_18\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => B_V_data_1_payload_B(1),
      I1 => \^b_v_data_1_sel\,
      I2 => B_V_data_1_payload_A(1),
      O => \^b_v_data_1_payload_b_reg[1]_0\
    );
\dout__0_carry_i_19\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^b_v_data_1_payload_b_reg[6]_0\(0),
      I1 => \^b_v_data_1_sel\,
      I2 => \^b_v_data_1_payload_a_reg[6]_0\(0),
      O => \^b_v_data_1_payload_b_reg[0]_0\
    );
\dout__0_carry_i_24\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E2E2E2000000E200"
    )
        port map (
      I0 => \^b_v_data_1_payload_a_reg[6]_0\(0),
      I1 => \^b_v_data_1_sel\,
      I2 => \^b_v_data_1_payload_b_reg[6]_0\(0),
      I3 => \dout__0_carry_i_8\(4),
      I4 => \y_1_data_reg_reg[2]_2\,
      I5 => \dout__0_carry_i_8_0\(4),
      O => \^b_v_data_1_payload_a_reg[0]_1\
    );
\dout__0_carry_i_26\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E2E2E2000000E200"
    )
        port map (
      I0 => \^b_v_data_1_payload_a_reg[6]_0\(0),
      I1 => \^b_v_data_1_sel\,
      I2 => \^b_v_data_1_payload_b_reg[6]_0\(0),
      I3 => \dout__0_carry_i_8\(3),
      I4 => \y_1_data_reg_reg[2]_2\,
      I5 => \dout__0_carry_i_8_0\(3),
      O => \B_V_data_1_payload_A_reg[0]_2\
    );
\dout__0_carry_i_27\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E2E2E2000000E200"
    )
        port map (
      I0 => B_V_data_1_payload_A(1),
      I1 => \^b_v_data_1_sel\,
      I2 => B_V_data_1_payload_B(1),
      I3 => \dout__0_carry_i_8\(2),
      I4 => \y_1_data_reg_reg[2]_2\,
      I5 => \dout__0_carry_i_8_0\(2),
      O => \dout__0_carry_i_27_n_0\
    );
\dout__0_carry_i_28\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E2E2E2000000E200"
    )
        port map (
      I0 => \^b_v_data_1_payload_a_reg[6]_0\(0),
      I1 => \^b_v_data_1_sel\,
      I2 => \^b_v_data_1_payload_b_reg[6]_0\(0),
      I3 => \dout__0_carry_i_8\(2),
      I4 => \y_1_data_reg_reg[2]_2\,
      I5 => \dout__0_carry_i_8_0\(2),
      O => \B_V_data_1_payload_A_reg[0]_0\
    );
\dout__0_carry_i_29\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E2E2E2000000E200"
    )
        port map (
      I0 => B_V_data_1_payload_A(1),
      I1 => \^b_v_data_1_sel\,
      I2 => B_V_data_1_payload_B(1),
      I3 => \dout__0_carry_i_8\(4),
      I4 => \y_1_data_reg_reg[2]_2\,
      I5 => \dout__0_carry_i_8_0\(4),
      O => \B_V_data_1_payload_A_reg[1]_0\
    );
\dout__0_carry_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F888800080008000"
    )
        port map (
      I0 => \^b_v_data_1_payload_b_reg[2]_0\,
      I1 => \y_1_data_reg_reg[2]\,
      I2 => \y_1_data_reg_reg[2]_0\,
      I3 => \^b_v_data_1_payload_b_reg[1]_0\,
      I4 => \^b_v_data_1_payload_b_reg[0]_0\,
      I5 => \y_1_data_reg_reg[2]_1\,
      O => \^di\(2)
    );
\dout__0_carry_i_30\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1D1D1DFFFFFF1DFF"
    )
        port map (
      I0 => B_V_data_1_payload_A(2),
      I1 => \^b_v_data_1_sel\,
      I2 => B_V_data_1_payload_B(2),
      I3 => \dout__0_carry_i_8\(3),
      I4 => \y_1_data_reg_reg[2]_2\,
      I5 => \dout__0_carry_i_8_0\(3),
      O => \B_V_data_1_payload_A_reg[2]_0\
    );
\dout__0_carry_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7888787878888888"
    )
        port map (
      I0 => \y_1_data_reg_reg[2]\,
      I1 => \^b_v_data_1_payload_b_reg[1]_0\,
      I2 => \y_1_data_reg_reg[2]_3\,
      I3 => B_V_data_1_payload_B(2),
      I4 => \^b_v_data_1_sel\,
      I5 => B_V_data_1_payload_A(2),
      O => \^di\(1)
    );
\dout__0_carry_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E2E2E2000000E200"
    )
        port map (
      I0 => B_V_data_1_payload_A(1),
      I1 => \^b_v_data_1_sel\,
      I2 => B_V_data_1_payload_B(1),
      I3 => \dout__0_carry_i_8\(0),
      I4 => \y_1_data_reg_reg[2]_2\,
      I5 => \dout__0_carry_i_8_0\(0),
      O => \^di\(0)
    );
\dout__0_carry_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"157F7F7FEA808080"
    )
        port map (
      I0 => \^b_v_data_1_payload_a_reg[0]_1\,
      I1 => \^b_v_data_1_payload_b_reg[1]_0\,
      I2 => \y_1_data_reg_reg[2]_4\,
      I3 => \^b_v_data_1_payload_b_reg[2]_0\,
      I4 => \y_1_data_reg_reg[2]_5\,
      I5 => \y_1_data_reg_reg[2]_6\,
      O => S(1)
    );
\dout__22_carry_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8777788878887888"
    )
        port map (
      I0 => \dout__22_carry_i_9_n_0\,
      I1 => \y_1_data_reg_reg[2]_1\,
      I2 => \^b_v_data_1_payload_b_reg[5]_0\,
      I3 => \y_1_data_reg_reg[2]\,
      I4 => \y_1_data_reg_reg[2]_0\,
      I5 => \^b_v_data_1_payload_b_reg[4]_0\,
      O => \^b_v_data_1_payload_b_reg[3]_0\(1)
    );
\dout__22_carry_i_10\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => B_V_data_1_payload_B(5),
      I1 => \^b_v_data_1_sel\,
      I2 => B_V_data_1_payload_A(5),
      O => \^b_v_data_1_payload_b_reg[5]_0\
    );
\dout__22_carry_i_11\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^b_v_data_1_payload_b_reg[6]_0\(2),
      I1 => \^b_v_data_1_sel\,
      I2 => \^b_v_data_1_payload_a_reg[6]_0\(2),
      O => \^b_v_data_1_payload_b_reg[4]_0\
    );
\dout__22_carry_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"07777FFF7FFF7FFF"
    )
        port map (
      I0 => \^b_v_data_1_payload_b_reg[5]_0\,
      I1 => \y_1_data_reg_reg[2]\,
      I2 => \y_1_data_reg_reg[2]_0\,
      I3 => \^b_v_data_1_payload_b_reg[4]_0\,
      I4 => \y_1_data_reg_reg[2]_1\,
      I5 => \dout__22_carry_i_9_n_0\,
      O => \dout__22_carry_i_12_n_0\
    );
\dout__22_carry_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1D1D1DFFFFFF1DFF"
    )
        port map (
      I0 => B_V_data_1_payload_A(5),
      I1 => \^b_v_data_1_sel\,
      I2 => B_V_data_1_payload_B(5),
      I3 => \dout__0_carry_i_8\(1),
      I4 => \y_1_data_reg_reg[2]_2\,
      I5 => \dout__0_carry_i_8_0\(1),
      O => \dout__22_carry_i_13_n_0\
    );
\dout__22_carry_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7877788888888888"
    )
        port map (
      I0 => \^b_v_data_1_payload_b_reg[4]_0\,
      I1 => \y_1_data_reg_reg[2]\,
      I2 => B_V_data_1_payload_B(5),
      I3 => \^b_v_data_1_sel\,
      I4 => B_V_data_1_payload_A(5),
      I5 => \y_1_data_reg_reg[2]_3\,
      O => \^b_v_data_1_payload_b_reg[3]_0\(0)
    );
\dout__22_carry_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6999966696669666"
    )
        port map (
      I0 => \dout__22_carry_i_12_n_0\,
      I1 => \dout__22_carry_i_13_n_0\,
      I2 => \y_1_data_reg_reg[2]_1\,
      I3 => \^b_v_data_1_payload_b_reg[4]_0\,
      I4 => \y_1_data_reg_reg[2]_5\,
      I5 => \dout__22_carry_i_9_n_0\,
      O => \B_V_data_1_payload_A_reg[5]_0\(2)
    );
\dout__22_carry_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"656AAAAA"
    )
        port map (
      I0 => \^b_v_data_1_payload_b_reg[3]_0\(0),
      I1 => \^b_v_data_1_payload_b_reg[6]_0\(1),
      I2 => \^b_v_data_1_sel\,
      I3 => \^b_v_data_1_payload_a_reg[6]_0\(1),
      I4 => \y_1_data_reg_reg[2]_0\,
      O => \B_V_data_1_payload_A_reg[5]_0\(1)
    );
\dout__22_carry_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7877788888888888"
    )
        port map (
      I0 => \dout__22_carry_i_9_n_0\,
      I1 => \y_1_data_reg_reg[2]\,
      I2 => \^b_v_data_1_payload_b_reg[6]_0\(2),
      I3 => \^b_v_data_1_sel\,
      I4 => \^b_v_data_1_payload_a_reg[6]_0\(2),
      I5 => \y_1_data_reg_reg[2]_3\,
      O => \B_V_data_1_payload_A_reg[5]_0\(0)
    );
\dout__22_carry_i_9\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^b_v_data_1_payload_b_reg[6]_0\(1),
      I1 => \^b_v_data_1_sel\,
      I2 => \^b_v_data_1_payload_a_reg[6]_0\(1),
      O => \dout__22_carry_i_9_n_0\
    );
\dout__34_carry_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6969699999996999"
    )
        port map (
      I0 => \dout__34_carry_i_8_n_0\,
      I1 => \dout__34_carry_i_9_n_0\,
      I2 => \y_1_data_reg_reg[2]_3\,
      I3 => B_V_data_1_payload_A(7),
      I4 => \^b_v_data_1_sel\,
      I5 => B_V_data_1_payload_B(7),
      O => \B_V_data_1_payload_A_reg[7]_0\(0)
    );
\dout__34_carry_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000057F757F7FFFF"
    )
        port map (
      I0 => \y_1_data_reg_reg[2]_3\,
      I1 => \^b_v_data_1_payload_a_reg[6]_0\(3),
      I2 => \^b_v_data_1_sel\,
      I3 => \^b_v_data_1_payload_b_reg[6]_0\(3),
      I4 => O(0),
      I5 => \dout__34_carry_i_4_0\(0),
      O => \dout__34_carry_i_8_n_0\
    );
\dout__34_carry_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"47FFB800B80047FF"
    )
        port map (
      I0 => \^b_v_data_1_payload_b_reg[6]_0\(3),
      I1 => \^b_v_data_1_sel\,
      I2 => \^b_v_data_1_payload_a_reg[6]_0\(3),
      I3 => \y_1_data_reg_reg[2]\,
      I4 => O(1),
      I5 => \dout__34_carry_i_4_0\(1),
      O => \dout__34_carry_i_9_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_vector_add is
  port (
    ap_clk : in STD_LOGIC;
    ap_rst_n : in STD_LOGIC;
    x_TDATA : in STD_LOGIC_VECTOR ( 7 downto 0 );
    x_TVALID : in STD_LOGIC;
    x_TREADY : out STD_LOGIC;
    w_TDATA : in STD_LOGIC_VECTOR ( 7 downto 0 );
    w_TVALID : in STD_LOGIC;
    w_TREADY : out STD_LOGIC;
    s_axi_control_AWVALID : in STD_LOGIC;
    s_axi_control_AWREADY : out STD_LOGIC;
    s_axi_control_AWADDR : in STD_LOGIC_VECTOR ( 4 downto 0 );
    s_axi_control_WVALID : in STD_LOGIC;
    s_axi_control_WREADY : out STD_LOGIC;
    s_axi_control_WDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_control_WSTRB : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_control_ARVALID : in STD_LOGIC;
    s_axi_control_ARREADY : out STD_LOGIC;
    s_axi_control_ARADDR : in STD_LOGIC_VECTOR ( 4 downto 0 );
    s_axi_control_RVALID : out STD_LOGIC;
    s_axi_control_RREADY : in STD_LOGIC;
    s_axi_control_RDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_control_RRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_control_BVALID : out STD_LOGIC;
    s_axi_control_BREADY : in STD_LOGIC;
    s_axi_control_BRESP : out STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  attribute C_S_AXI_CONTROL_ADDR_WIDTH : integer;
  attribute C_S_AXI_CONTROL_ADDR_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_vector_add : entity is 5;
  attribute C_S_AXI_CONTROL_DATA_WIDTH : integer;
  attribute C_S_AXI_CONTROL_DATA_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_vector_add : entity is 32;
  attribute C_S_AXI_CONTROL_WSTRB_WIDTH : integer;
  attribute C_S_AXI_CONTROL_WSTRB_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_vector_add : entity is 4;
  attribute C_S_AXI_DATA_WIDTH : integer;
  attribute C_S_AXI_DATA_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_vector_add : entity is 32;
  attribute C_S_AXI_WSTRB_WIDTH : integer;
  attribute C_S_AXI_WSTRB_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_vector_add : entity is 4;
  attribute ap_ST_fsm_state1 : string;
  attribute ap_ST_fsm_state1 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_vector_add : entity is "2'b01";
  attribute ap_ST_fsm_state2 : string;
  attribute ap_ST_fsm_state2 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_vector_add : entity is "2'b10";
  attribute hls_module : string;
  attribute hls_module of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_vector_add : entity is "yes";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_vector_add;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_vector_add is
  signal \<const0>\ : STD_LOGIC;
  signal B_V_data_1_payload_A : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal B_V_data_1_payload_B : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal B_V_data_1_sel : STD_LOGIC;
  signal \ap_CS_fsm[0]_i_1_n_0\ : STD_LOGIC;
  signal \ap_CS_fsm[1]_i_1_n_0\ : STD_LOGIC;
  signal \ap_CS_fsm_reg_n_0_[1]\ : STD_LOGIC;
  signal ap_rst_n_inv : STD_LOGIC;
  signal dout : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal mul_8s_8s_8_1_1_U1_n_0 : STD_LOGIC;
  signal mul_8s_8s_8_1_1_U1_n_1 : STD_LOGIC;
  signal mul_8s_8s_8_1_1_U1_n_5 : STD_LOGIC;
  signal mul_8s_8s_8_1_1_U1_n_6 : STD_LOGIC;
  signal regslice_both_w_U_n_1 : STD_LOGIC;
  signal regslice_both_w_U_n_10 : STD_LOGIC;
  signal regslice_both_w_U_n_11 : STD_LOGIC;
  signal regslice_both_w_U_n_12 : STD_LOGIC;
  signal regslice_both_w_U_n_13 : STD_LOGIC;
  signal regslice_both_w_U_n_14 : STD_LOGIC;
  signal regslice_both_w_U_n_15 : STD_LOGIC;
  signal regslice_both_w_U_n_16 : STD_LOGIC;
  signal regslice_both_w_U_n_17 : STD_LOGIC;
  signal regslice_both_w_U_n_18 : STD_LOGIC;
  signal regslice_both_w_U_n_19 : STD_LOGIC;
  signal regslice_both_w_U_n_20 : STD_LOGIC;
  signal regslice_both_w_U_n_21 : STD_LOGIC;
  signal regslice_both_w_U_n_22 : STD_LOGIC;
  signal regslice_both_w_U_n_23 : STD_LOGIC;
  signal regslice_both_w_U_n_24 : STD_LOGIC;
  signal regslice_both_w_U_n_25 : STD_LOGIC;
  signal regslice_both_w_U_n_26 : STD_LOGIC;
  signal regslice_both_w_U_n_27 : STD_LOGIC;
  signal regslice_both_w_U_n_28 : STD_LOGIC;
  signal regslice_both_w_U_n_29 : STD_LOGIC;
  signal regslice_both_w_U_n_30 : STD_LOGIC;
  signal regslice_both_w_U_n_31 : STD_LOGIC;
  signal regslice_both_w_U_n_32 : STD_LOGIC;
  signal regslice_both_w_U_n_33 : STD_LOGIC;
  signal regslice_both_w_U_n_4 : STD_LOGIC;
  signal regslice_both_w_U_n_5 : STD_LOGIC;
  signal regslice_both_w_U_n_6 : STD_LOGIC;
  signal regslice_both_w_U_n_7 : STD_LOGIC;
  signal regslice_both_w_U_n_8 : STD_LOGIC;
  signal regslice_both_w_U_n_9 : STD_LOGIC;
  signal regslice_both_x_U_n_11 : STD_LOGIC;
  signal regslice_both_x_U_n_12 : STD_LOGIC;
  signal regslice_both_x_U_n_13 : STD_LOGIC;
  signal regslice_both_x_U_n_14 : STD_LOGIC;
  signal regslice_both_x_U_n_15 : STD_LOGIC;
  signal regslice_both_x_U_n_16 : STD_LOGIC;
  signal regslice_both_x_U_n_17 : STD_LOGIC;
  signal regslice_both_x_U_n_18 : STD_LOGIC;
  signal regslice_both_x_U_n_19 : STD_LOGIC;
  signal regslice_both_x_U_n_20 : STD_LOGIC;
  signal regslice_both_x_U_n_21 : STD_LOGIC;
  signal regslice_both_x_U_n_22 : STD_LOGIC;
  signal regslice_both_x_U_n_23 : STD_LOGIC;
  signal regslice_both_x_U_n_24 : STD_LOGIC;
  signal regslice_both_x_U_n_25 : STD_LOGIC;
  signal regslice_both_x_U_n_26 : STD_LOGIC;
  signal regslice_both_x_U_n_27 : STD_LOGIC;
  signal regslice_both_x_U_n_28 : STD_LOGIC;
  signal regslice_both_x_U_n_29 : STD_LOGIC;
  signal regslice_both_x_U_n_30 : STD_LOGIC;
  signal regslice_both_x_U_n_31 : STD_LOGIC;
  signal \^s_axi_control_rdata\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal tmp_1_nbreadreq_fu_52_p3 : STD_LOGIC;
  signal tmp_nbreadreq_fu_44_p3 : STD_LOGIC;
  signal y_1_data_reg : STD_LOGIC;
  signal y_1_data_reg00_out : STD_LOGIC;
  signal \y_1_data_reg_reg_n_0_[0]\ : STD_LOGIC;
  signal \y_1_data_reg_reg_n_0_[1]\ : STD_LOGIC;
  signal \y_1_data_reg_reg_n_0_[2]\ : STD_LOGIC;
  signal \y_1_data_reg_reg_n_0_[3]\ : STD_LOGIC;
  signal \y_1_data_reg_reg_n_0_[4]\ : STD_LOGIC;
  signal \y_1_data_reg_reg_n_0_[5]\ : STD_LOGIC;
  signal \y_1_data_reg_reg_n_0_[6]\ : STD_LOGIC;
  signal \y_1_data_reg_reg_n_0_[7]\ : STD_LOGIC;
  signal y_1_vld_reg : STD_LOGIC;
  attribute FSM_ENCODING : string;
  attribute FSM_ENCODING of \ap_CS_fsm_reg[0]\ : label is "none";
  attribute FSM_ENCODING of \ap_CS_fsm_reg[1]\ : label is "none";
begin
  s_axi_control_BRESP(1) <= \<const0>\;
  s_axi_control_BRESP(0) <= \<const0>\;
  s_axi_control_RDATA(31) <= \<const0>\;
  s_axi_control_RDATA(30) <= \<const0>\;
  s_axi_control_RDATA(29) <= \<const0>\;
  s_axi_control_RDATA(28) <= \<const0>\;
  s_axi_control_RDATA(27) <= \<const0>\;
  s_axi_control_RDATA(26) <= \<const0>\;
  s_axi_control_RDATA(25) <= \<const0>\;
  s_axi_control_RDATA(24) <= \<const0>\;
  s_axi_control_RDATA(23) <= \<const0>\;
  s_axi_control_RDATA(22) <= \<const0>\;
  s_axi_control_RDATA(21) <= \<const0>\;
  s_axi_control_RDATA(20) <= \<const0>\;
  s_axi_control_RDATA(19) <= \<const0>\;
  s_axi_control_RDATA(18) <= \<const0>\;
  s_axi_control_RDATA(17) <= \<const0>\;
  s_axi_control_RDATA(16) <= \<const0>\;
  s_axi_control_RDATA(15) <= \<const0>\;
  s_axi_control_RDATA(14) <= \<const0>\;
  s_axi_control_RDATA(13) <= \<const0>\;
  s_axi_control_RDATA(12) <= \<const0>\;
  s_axi_control_RDATA(11) <= \<const0>\;
  s_axi_control_RDATA(10) <= \<const0>\;
  s_axi_control_RDATA(9) <= \<const0>\;
  s_axi_control_RDATA(8) <= \<const0>\;
  s_axi_control_RDATA(7 downto 0) <= \^s_axi_control_rdata\(7 downto 0);
  s_axi_control_RRESP(1) <= \<const0>\;
  s_axi_control_RRESP(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
\ap_CS_fsm[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"4"
    )
        port map (
      I0 => y_1_data_reg00_out,
      I1 => \ap_CS_fsm_reg_n_0_[1]\,
      O => \ap_CS_fsm[0]_i_1_n_0\
    );
\ap_CS_fsm[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"D"
    )
        port map (
      I0 => \ap_CS_fsm_reg_n_0_[1]\,
      I1 => y_1_data_reg00_out,
      O => \ap_CS_fsm[1]_i_1_n_0\
    );
\ap_CS_fsm_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \ap_CS_fsm[0]_i_1_n_0\,
      Q => y_1_data_reg00_out,
      S => ap_rst_n_inv
    );
\ap_CS_fsm_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \ap_CS_fsm[1]_i_1_n_0\,
      Q => \ap_CS_fsm_reg_n_0_[1]\,
      R => ap_rst_n_inv
    );
control_s_axi_U: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_vector_add_control_s_axi
     port map (
      E(0) => y_1_vld_reg,
      \FSM_onehot_rstate_reg[1]_0\ => s_axi_control_ARREADY,
      \FSM_onehot_wstate_reg[2]_0\ => s_axi_control_WREADY,
      Q(7) => \y_1_data_reg_reg_n_0_[7]\,
      Q(6) => \y_1_data_reg_reg_n_0_[6]\,
      Q(5) => \y_1_data_reg_reg_n_0_[5]\,
      Q(4) => \y_1_data_reg_reg_n_0_[4]\,
      Q(3) => \y_1_data_reg_reg_n_0_[3]\,
      Q(2) => \y_1_data_reg_reg_n_0_[2]\,
      Q(1) => \y_1_data_reg_reg_n_0_[1]\,
      Q(0) => \y_1_data_reg_reg_n_0_[0]\,
      SR(0) => ap_rst_n_inv,
      ap_clk => ap_clk,
      ap_rst_n => ap_rst_n,
      s_axi_control_ARADDR(4 downto 0) => s_axi_control_ARADDR(4 downto 0),
      s_axi_control_ARVALID => s_axi_control_ARVALID,
      s_axi_control_AWREADY => s_axi_control_AWREADY,
      s_axi_control_AWVALID => s_axi_control_AWVALID,
      s_axi_control_BREADY => s_axi_control_BREADY,
      s_axi_control_BVALID => s_axi_control_BVALID,
      s_axi_control_RDATA(7 downto 0) => \^s_axi_control_rdata\(7 downto 0),
      s_axi_control_RREADY => s_axi_control_RREADY,
      s_axi_control_RVALID => s_axi_control_RVALID,
      s_axi_control_WVALID => s_axi_control_WVALID
    );
mul_8s_8s_8_1_1_U1: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_vector_add_mul_8s_8s_8_1_1
     port map (
      \B_V_data_1_payload_B_reg[5]\(1) => mul_8s_8s_8_1_1_U1_n_5,
      \B_V_data_1_payload_B_reg[5]\(0) => mul_8s_8s_8_1_1_U1_n_6,
      D(4 downto 0) => dout(7 downto 3),
      DI(5) => regslice_both_w_U_n_6,
      DI(4) => regslice_both_w_U_n_7,
      DI(3) => regslice_both_x_U_n_13,
      DI(2) => regslice_both_w_U_n_8,
      DI(1) => regslice_both_x_U_n_14,
      DI(0) => regslice_both_x_U_n_15,
      O(4) => mul_8s_8s_8_1_1_U1_n_0,
      O(3) => mul_8s_8s_8_1_1_U1_n_1,
      O(2 downto 0) => dout(2 downto 0),
      S(7) => regslice_both_x_U_n_24,
      S(6) => regslice_both_w_U_n_27,
      S(5) => regslice_both_w_U_n_28,
      S(4) => regslice_both_x_U_n_25,
      S(3) => regslice_both_w_U_n_29,
      S(2) => regslice_both_w_U_n_30,
      S(1) => regslice_both_w_U_n_31,
      S(0) => regslice_both_w_U_n_32,
      \y_1_data_reg_reg[3]\(2) => regslice_both_x_U_n_26,
      \y_1_data_reg_reg[3]\(1) => regslice_both_x_U_n_27,
      \y_1_data_reg_reg[3]\(0) => regslice_both_w_U_n_26,
      \y_1_data_reg_reg[3]_0\(4) => regslice_both_x_U_n_28,
      \y_1_data_reg_reg[3]_0\(3) => regslice_both_w_U_n_24,
      \y_1_data_reg_reg[3]_0\(2) => regslice_both_x_U_n_29,
      \y_1_data_reg_reg[3]_0\(1) => regslice_both_x_U_n_30,
      \y_1_data_reg_reg[3]_0\(0) => regslice_both_w_U_n_25,
      \y_1_data_reg_reg[7]\(0) => regslice_both_x_U_n_31,
      \y_1_data_reg_reg[7]_0\ => regslice_both_w_U_n_13
    );
regslice_both_w_U: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_vector_add_regslice_both
     port map (
      \B_V_data_1_payload_A_reg[0]_0\ => regslice_both_w_U_n_13,
      \B_V_data_1_payload_A_reg[0]_1\(0) => regslice_both_w_U_n_26,
      \B_V_data_1_payload_A_reg[6]_0\(4) => regslice_both_w_U_n_14,
      \B_V_data_1_payload_A_reg[6]_0\(3) => regslice_both_w_U_n_15,
      \B_V_data_1_payload_A_reg[6]_0\(2) => regslice_both_w_U_n_16,
      \B_V_data_1_payload_A_reg[6]_0\(1) => regslice_both_w_U_n_17,
      \B_V_data_1_payload_A_reg[6]_0\(0) => regslice_both_w_U_n_18,
      \B_V_data_1_payload_B_reg[0]_0\ => regslice_both_w_U_n_33,
      \B_V_data_1_payload_B_reg[1]_0\ => regslice_both_w_U_n_4,
      \B_V_data_1_payload_B_reg[2]_0\ => regslice_both_w_U_n_12,
      \B_V_data_1_payload_B_reg[2]_1\(1) => regslice_both_w_U_n_24,
      \B_V_data_1_payload_B_reg[2]_1\(0) => regslice_both_w_U_n_25,
      \B_V_data_1_payload_B_reg[3]_0\ => regslice_both_w_U_n_9,
      \B_V_data_1_payload_B_reg[4]_0\ => regslice_both_w_U_n_10,
      \B_V_data_1_payload_B_reg[5]_0\ => regslice_both_w_U_n_11,
      \B_V_data_1_payload_B_reg[6]_0\(4) => regslice_both_w_U_n_19,
      \B_V_data_1_payload_B_reg[6]_0\(3) => regslice_both_w_U_n_20,
      \B_V_data_1_payload_B_reg[6]_0\(2) => regslice_both_w_U_n_21,
      \B_V_data_1_payload_B_reg[6]_0\(1) => regslice_both_w_U_n_22,
      \B_V_data_1_payload_B_reg[6]_0\(0) => regslice_both_w_U_n_23,
      \B_V_data_1_payload_B_reg[7]_0\ => regslice_both_w_U_n_5,
      B_V_data_1_sel => B_V_data_1_sel,
      B_V_data_1_sel_rd_reg_0 => regslice_both_w_U_n_1,
      \B_V_data_1_state_reg[0]_0\(0) => y_1_data_reg,
      \B_V_data_1_state_reg[1]_0\ => w_TREADY,
      DI(2) => regslice_both_w_U_n_6,
      DI(1) => regslice_both_w_U_n_7,
      DI(0) => regslice_both_w_U_n_8,
      Q(0) => y_1_data_reg00_out,
      S(5) => regslice_both_w_U_n_27,
      S(4) => regslice_both_w_U_n_28,
      S(3) => regslice_both_w_U_n_29,
      S(2) => regslice_both_w_U_n_30,
      S(1) => regslice_both_w_U_n_31,
      S(0) => regslice_both_w_U_n_32,
      SR(0) => ap_rst_n_inv,
      ap_clk => ap_clk,
      ap_rst_n => ap_rst_n,
      \dout__0_carry_i_7\ => regslice_both_x_U_n_19,
      \dout__0_carry_i_7_0\ => regslice_both_x_U_n_20,
      \dout__22_carry\ => regslice_both_x_U_n_11,
      \dout__22_carry_0\ => regslice_both_x_U_n_12,
      \dout__34_carry_i_5\(3) => B_V_data_1_payload_A(6),
      \dout__34_carry_i_5\(2 downto 1) => B_V_data_1_payload_A(4 downto 3),
      \dout__34_carry_i_5\(0) => B_V_data_1_payload_A(0),
      \dout__34_carry_i_5_0\(3) => B_V_data_1_payload_B(6),
      \dout__34_carry_i_5_0\(2 downto 1) => B_V_data_1_payload_B(4 downto 3),
      \dout__34_carry_i_5_0\(0) => B_V_data_1_payload_B(0),
      tmp_1_nbreadreq_fu_52_p3 => tmp_1_nbreadreq_fu_52_p3,
      tmp_nbreadreq_fu_44_p3 => tmp_nbreadreq_fu_44_p3,
      w_TDATA(7 downto 0) => w_TDATA(7 downto 0),
      w_TVALID => w_TVALID,
      \y_1_data_reg_reg[2]\ => regslice_both_x_U_n_18,
      \y_1_data_reg_reg[2]_0\ => regslice_both_x_U_n_16,
      \y_1_data_reg_reg[2]_1\ => regslice_both_x_U_n_17,
      \y_1_data_reg_reg[2]_2\(0) => regslice_both_x_U_n_14,
      \y_1_data_reg_reg[2]_3\ => regslice_both_x_U_n_21,
      \y_1_data_reg_reg[2]_4\ => regslice_both_x_U_n_23,
      \y_1_data_reg_reg[2]_5\ => regslice_both_x_U_n_22
    );
regslice_both_x_U: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_vector_add_regslice_both_0
     port map (
      \B_V_data_1_payload_A_reg[0]_0\ => regslice_both_x_U_n_21,
      \B_V_data_1_payload_A_reg[0]_1\ => regslice_both_x_U_n_22,
      \B_V_data_1_payload_A_reg[0]_2\ => regslice_both_x_U_n_23,
      \B_V_data_1_payload_A_reg[1]_0\ => regslice_both_x_U_n_19,
      \B_V_data_1_payload_A_reg[2]_0\ => regslice_both_x_U_n_20,
      \B_V_data_1_payload_A_reg[5]_0\(2) => regslice_both_x_U_n_28,
      \B_V_data_1_payload_A_reg[5]_0\(1) => regslice_both_x_U_n_29,
      \B_V_data_1_payload_A_reg[5]_0\(0) => regslice_both_x_U_n_30,
      \B_V_data_1_payload_A_reg[6]_0\(3) => B_V_data_1_payload_A(6),
      \B_V_data_1_payload_A_reg[6]_0\(2 downto 1) => B_V_data_1_payload_A(4 downto 3),
      \B_V_data_1_payload_A_reg[6]_0\(0) => B_V_data_1_payload_A(0),
      \B_V_data_1_payload_A_reg[7]_0\(0) => regslice_both_x_U_n_31,
      \B_V_data_1_payload_B_reg[0]_0\ => regslice_both_x_U_n_18,
      \B_V_data_1_payload_B_reg[1]_0\ => regslice_both_x_U_n_17,
      \B_V_data_1_payload_B_reg[2]_0\ => regslice_both_x_U_n_16,
      \B_V_data_1_payload_B_reg[3]_0\(1) => regslice_both_x_U_n_26,
      \B_V_data_1_payload_B_reg[3]_0\(0) => regslice_both_x_U_n_27,
      \B_V_data_1_payload_B_reg[4]_0\ => regslice_both_x_U_n_12,
      \B_V_data_1_payload_B_reg[5]_0\ => regslice_both_x_U_n_11,
      \B_V_data_1_payload_B_reg[6]_0\(3) => B_V_data_1_payload_B(6),
      \B_V_data_1_payload_B_reg[6]_0\(2 downto 1) => B_V_data_1_payload_B(4 downto 3),
      \B_V_data_1_payload_B_reg[6]_0\(0) => B_V_data_1_payload_B(0),
      B_V_data_1_sel => B_V_data_1_sel,
      \B_V_data_1_state_reg[1]_0\ => x_TREADY,
      DI(2) => regslice_both_x_U_n_13,
      DI(1) => regslice_both_x_U_n_14,
      DI(0) => regslice_both_x_U_n_15,
      O(1) => mul_8s_8s_8_1_1_U1_n_0,
      O(0) => mul_8s_8s_8_1_1_U1_n_1,
      Q(0) => y_1_data_reg00_out,
      S(1) => regslice_both_x_U_n_24,
      S(0) => regslice_both_x_U_n_25,
      SR(0) => ap_rst_n_inv,
      ap_clk => ap_clk,
      ap_rst_n => ap_rst_n,
      \dout__0_carry_i_8\(4) => regslice_both_w_U_n_14,
      \dout__0_carry_i_8\(3) => regslice_both_w_U_n_15,
      \dout__0_carry_i_8\(2) => regslice_both_w_U_n_16,
      \dout__0_carry_i_8\(1) => regslice_both_w_U_n_17,
      \dout__0_carry_i_8\(0) => regslice_both_w_U_n_18,
      \dout__0_carry_i_8_0\(4) => regslice_both_w_U_n_19,
      \dout__0_carry_i_8_0\(3) => regslice_both_w_U_n_20,
      \dout__0_carry_i_8_0\(2) => regslice_both_w_U_n_21,
      \dout__0_carry_i_8_0\(1) => regslice_both_w_U_n_22,
      \dout__0_carry_i_8_0\(0) => regslice_both_w_U_n_23,
      \dout__34_carry_i_4_0\(1) => mul_8s_8s_8_1_1_U1_n_5,
      \dout__34_carry_i_4_0\(0) => mul_8s_8s_8_1_1_U1_n_6,
      tmp_1_nbreadreq_fu_52_p3 => tmp_1_nbreadreq_fu_52_p3,
      tmp_nbreadreq_fu_44_p3 => tmp_nbreadreq_fu_44_p3,
      x_TDATA(7 downto 0) => x_TDATA(7 downto 0),
      x_TVALID => x_TVALID,
      \y_1_data_reg_reg[2]\ => regslice_both_w_U_n_4,
      \y_1_data_reg_reg[2]_0\ => regslice_both_w_U_n_12,
      \y_1_data_reg_reg[2]_1\ => regslice_both_w_U_n_9,
      \y_1_data_reg_reg[2]_2\ => regslice_both_w_U_n_1,
      \y_1_data_reg_reg[2]_3\ => regslice_both_w_U_n_33,
      \y_1_data_reg_reg[2]_4\ => regslice_both_w_U_n_11,
      \y_1_data_reg_reg[2]_5\ => regslice_both_w_U_n_10,
      \y_1_data_reg_reg[2]_6\ => regslice_both_w_U_n_5
    );
\y_1_data_reg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => y_1_data_reg00_out,
      D => dout(0),
      Q => \y_1_data_reg_reg_n_0_[0]\,
      R => y_1_data_reg
    );
\y_1_data_reg_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => y_1_data_reg00_out,
      D => dout(1),
      Q => \y_1_data_reg_reg_n_0_[1]\,
      R => y_1_data_reg
    );
\y_1_data_reg_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => y_1_data_reg00_out,
      D => dout(2),
      Q => \y_1_data_reg_reg_n_0_[2]\,
      R => y_1_data_reg
    );
\y_1_data_reg_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => y_1_data_reg00_out,
      D => dout(3),
      Q => \y_1_data_reg_reg_n_0_[3]\,
      R => y_1_data_reg
    );
\y_1_data_reg_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => y_1_data_reg00_out,
      D => dout(4),
      Q => \y_1_data_reg_reg_n_0_[4]\,
      R => y_1_data_reg
    );
\y_1_data_reg_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => y_1_data_reg00_out,
      D => dout(5),
      Q => \y_1_data_reg_reg_n_0_[5]\,
      R => y_1_data_reg
    );
\y_1_data_reg_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => y_1_data_reg00_out,
      D => dout(6),
      Q => \y_1_data_reg_reg_n_0_[6]\,
      R => y_1_data_reg
    );
\y_1_data_reg_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => y_1_data_reg00_out,
      D => dout(7),
      Q => \y_1_data_reg_reg_n_0_[7]\,
      R => y_1_data_reg
    );
y_1_vld_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => y_1_data_reg00_out,
      Q => y_1_vld_reg,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    s_axi_control_AWADDR : in STD_LOGIC_VECTOR ( 4 downto 0 );
    s_axi_control_AWVALID : in STD_LOGIC;
    s_axi_control_AWREADY : out STD_LOGIC;
    s_axi_control_WDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_control_WSTRB : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_control_WVALID : in STD_LOGIC;
    s_axi_control_WREADY : out STD_LOGIC;
    s_axi_control_BRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_control_BVALID : out STD_LOGIC;
    s_axi_control_BREADY : in STD_LOGIC;
    s_axi_control_ARADDR : in STD_LOGIC_VECTOR ( 4 downto 0 );
    s_axi_control_ARVALID : in STD_LOGIC;
    s_axi_control_ARREADY : out STD_LOGIC;
    s_axi_control_RDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_control_RRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_control_RVALID : out STD_LOGIC;
    s_axi_control_RREADY : in STD_LOGIC;
    ap_clk : in STD_LOGIC;
    ap_rst_n : in STD_LOGIC;
    x_TVALID : in STD_LOGIC;
    x_TREADY : out STD_LOGIC;
    x_TDATA : in STD_LOGIC_VECTOR ( 7 downto 0 );
    w_TVALID : in STD_LOGIC;
    w_TREADY : out STD_LOGIC;
    w_TDATA : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "design_1_vector_add_0_3,vector_add,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "HLS";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "vector_add,Vivado 2022.2";
  attribute hls_module : string;
  attribute hls_module of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  signal \<const0>\ : STD_LOGIC;
  signal \^s_axi_control_rdata\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_inst_s_axi_control_BRESP_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_inst_s_axi_control_RDATA_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 8 );
  signal NLW_inst_s_axi_control_RRESP_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute C_S_AXI_CONTROL_ADDR_WIDTH : integer;
  attribute C_S_AXI_CONTROL_ADDR_WIDTH of inst : label is 5;
  attribute C_S_AXI_CONTROL_DATA_WIDTH : integer;
  attribute C_S_AXI_CONTROL_DATA_WIDTH of inst : label is 32;
  attribute C_S_AXI_CONTROL_WSTRB_WIDTH : integer;
  attribute C_S_AXI_CONTROL_WSTRB_WIDTH of inst : label is 4;
  attribute C_S_AXI_DATA_WIDTH : integer;
  attribute C_S_AXI_DATA_WIDTH of inst : label is 32;
  attribute C_S_AXI_WSTRB_WIDTH : integer;
  attribute C_S_AXI_WSTRB_WIDTH of inst : label is 4;
  attribute SDX_KERNEL : string;
  attribute SDX_KERNEL of inst : label is "true";
  attribute SDX_KERNEL_SYNTH_INST : string;
  attribute SDX_KERNEL_SYNTH_INST of inst : label is "inst";
  attribute SDX_KERNEL_TYPE : string;
  attribute SDX_KERNEL_TYPE of inst : label is "hls";
  attribute ap_ST_fsm_state1 : string;
  attribute ap_ST_fsm_state1 of inst : label is "2'b01";
  attribute ap_ST_fsm_state2 : string;
  attribute ap_ST_fsm_state2 of inst : label is "2'b10";
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of ap_clk : signal is "xilinx.com:signal:clock:1.0 ap_clk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of ap_clk : signal is "XIL_INTERFACENAME ap_clk, ASSOCIATED_BUSIF s_axi_control:x:w, ASSOCIATED_RESET ap_rst_n, FREQ_HZ 99999001, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_zynq_ultra_ps_e_0_0_pl_clk0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of ap_rst_n : signal is "xilinx.com:signal:reset:1.0 ap_rst_n RST";
  attribute X_INTERFACE_PARAMETER of ap_rst_n : signal is "XIL_INTERFACENAME ap_rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s_axi_control_ARREADY : signal is "xilinx.com:interface:aximm:1.0 s_axi_control ARREADY";
  attribute X_INTERFACE_INFO of s_axi_control_ARVALID : signal is "xilinx.com:interface:aximm:1.0 s_axi_control ARVALID";
  attribute X_INTERFACE_INFO of s_axi_control_AWREADY : signal is "xilinx.com:interface:aximm:1.0 s_axi_control AWREADY";
  attribute X_INTERFACE_INFO of s_axi_control_AWVALID : signal is "xilinx.com:interface:aximm:1.0 s_axi_control AWVALID";
  attribute X_INTERFACE_INFO of s_axi_control_BREADY : signal is "xilinx.com:interface:aximm:1.0 s_axi_control BREADY";
  attribute X_INTERFACE_INFO of s_axi_control_BVALID : signal is "xilinx.com:interface:aximm:1.0 s_axi_control BVALID";
  attribute X_INTERFACE_INFO of s_axi_control_RREADY : signal is "xilinx.com:interface:aximm:1.0 s_axi_control RREADY";
  attribute X_INTERFACE_PARAMETER of s_axi_control_RREADY : signal is "XIL_INTERFACENAME s_axi_control, ADDR_WIDTH 5, DATA_WIDTH 32, PROTOCOL AXI4LITE, READ_WRITE_MODE READ_WRITE, FREQ_HZ 99999001, ID_WIDTH 0, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN design_1_zynq_ultra_ps_e_0_0_pl_clk0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s_axi_control_RVALID : signal is "xilinx.com:interface:aximm:1.0 s_axi_control RVALID";
  attribute X_INTERFACE_INFO of s_axi_control_WREADY : signal is "xilinx.com:interface:aximm:1.0 s_axi_control WREADY";
  attribute X_INTERFACE_INFO of s_axi_control_WVALID : signal is "xilinx.com:interface:aximm:1.0 s_axi_control WVALID";
  attribute X_INTERFACE_INFO of w_TREADY : signal is "xilinx.com:interface:axis:1.0 w TREADY";
  attribute X_INTERFACE_INFO of w_TVALID : signal is "xilinx.com:interface:axis:1.0 w TVALID";
  attribute X_INTERFACE_INFO of x_TREADY : signal is "xilinx.com:interface:axis:1.0 x TREADY";
  attribute X_INTERFACE_INFO of x_TVALID : signal is "xilinx.com:interface:axis:1.0 x TVALID";
  attribute X_INTERFACE_INFO of s_axi_control_ARADDR : signal is "xilinx.com:interface:aximm:1.0 s_axi_control ARADDR";
  attribute X_INTERFACE_INFO of s_axi_control_AWADDR : signal is "xilinx.com:interface:aximm:1.0 s_axi_control AWADDR";
  attribute X_INTERFACE_INFO of s_axi_control_BRESP : signal is "xilinx.com:interface:aximm:1.0 s_axi_control BRESP";
  attribute X_INTERFACE_INFO of s_axi_control_RDATA : signal is "xilinx.com:interface:aximm:1.0 s_axi_control RDATA";
  attribute X_INTERFACE_INFO of s_axi_control_RRESP : signal is "xilinx.com:interface:aximm:1.0 s_axi_control RRESP";
  attribute X_INTERFACE_INFO of s_axi_control_WDATA : signal is "xilinx.com:interface:aximm:1.0 s_axi_control WDATA";
  attribute X_INTERFACE_INFO of s_axi_control_WSTRB : signal is "xilinx.com:interface:aximm:1.0 s_axi_control WSTRB";
  attribute X_INTERFACE_INFO of w_TDATA : signal is "xilinx.com:interface:axis:1.0 w TDATA";
  attribute X_INTERFACE_PARAMETER of w_TDATA : signal is "XIL_INTERFACENAME w, TDATA_NUM_BYTES 1, TUSER_WIDTH 0, TDEST_WIDTH 0, TID_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 99999001, PHASE 0.0, CLK_DOMAIN design_1_zynq_ultra_ps_e_0_0_pl_clk0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of x_TDATA : signal is "xilinx.com:interface:axis:1.0 x TDATA";
  attribute X_INTERFACE_PARAMETER of x_TDATA : signal is "XIL_INTERFACENAME x, TDATA_NUM_BYTES 1, TUSER_WIDTH 0, TDEST_WIDTH 0, TID_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 99999001, PHASE 0.0, CLK_DOMAIN design_1_zynq_ultra_ps_e_0_0_pl_clk0, INSERT_VIP 0";
begin
  s_axi_control_BRESP(1) <= \<const0>\;
  s_axi_control_BRESP(0) <= \<const0>\;
  s_axi_control_RDATA(31) <= \<const0>\;
  s_axi_control_RDATA(30) <= \<const0>\;
  s_axi_control_RDATA(29) <= \<const0>\;
  s_axi_control_RDATA(28) <= \<const0>\;
  s_axi_control_RDATA(27) <= \<const0>\;
  s_axi_control_RDATA(26) <= \<const0>\;
  s_axi_control_RDATA(25) <= \<const0>\;
  s_axi_control_RDATA(24) <= \<const0>\;
  s_axi_control_RDATA(23) <= \<const0>\;
  s_axi_control_RDATA(22) <= \<const0>\;
  s_axi_control_RDATA(21) <= \<const0>\;
  s_axi_control_RDATA(20) <= \<const0>\;
  s_axi_control_RDATA(19) <= \<const0>\;
  s_axi_control_RDATA(18) <= \<const0>\;
  s_axi_control_RDATA(17) <= \<const0>\;
  s_axi_control_RDATA(16) <= \<const0>\;
  s_axi_control_RDATA(15) <= \<const0>\;
  s_axi_control_RDATA(14) <= \<const0>\;
  s_axi_control_RDATA(13) <= \<const0>\;
  s_axi_control_RDATA(12) <= \<const0>\;
  s_axi_control_RDATA(11) <= \<const0>\;
  s_axi_control_RDATA(10) <= \<const0>\;
  s_axi_control_RDATA(9) <= \<const0>\;
  s_axi_control_RDATA(8) <= \<const0>\;
  s_axi_control_RDATA(7 downto 0) <= \^s_axi_control_rdata\(7 downto 0);
  s_axi_control_RRESP(1) <= \<const0>\;
  s_axi_control_RRESP(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_vector_add
     port map (
      ap_clk => ap_clk,
      ap_rst_n => ap_rst_n,
      s_axi_control_ARADDR(4 downto 0) => s_axi_control_ARADDR(4 downto 0),
      s_axi_control_ARREADY => s_axi_control_ARREADY,
      s_axi_control_ARVALID => s_axi_control_ARVALID,
      s_axi_control_AWADDR(4 downto 0) => B"00000",
      s_axi_control_AWREADY => s_axi_control_AWREADY,
      s_axi_control_AWVALID => s_axi_control_AWVALID,
      s_axi_control_BREADY => s_axi_control_BREADY,
      s_axi_control_BRESP(1 downto 0) => NLW_inst_s_axi_control_BRESP_UNCONNECTED(1 downto 0),
      s_axi_control_BVALID => s_axi_control_BVALID,
      s_axi_control_RDATA(31 downto 8) => NLW_inst_s_axi_control_RDATA_UNCONNECTED(31 downto 8),
      s_axi_control_RDATA(7 downto 0) => \^s_axi_control_rdata\(7 downto 0),
      s_axi_control_RREADY => s_axi_control_RREADY,
      s_axi_control_RRESP(1 downto 0) => NLW_inst_s_axi_control_RRESP_UNCONNECTED(1 downto 0),
      s_axi_control_RVALID => s_axi_control_RVALID,
      s_axi_control_WDATA(31 downto 0) => B"00000000000000000000000000000000",
      s_axi_control_WREADY => s_axi_control_WREADY,
      s_axi_control_WSTRB(3 downto 0) => B"0000",
      s_axi_control_WVALID => s_axi_control_WVALID,
      w_TDATA(7 downto 0) => w_TDATA(7 downto 0),
      w_TREADY => w_TREADY,
      w_TVALID => w_TVALID,
      x_TDATA(7 downto 0) => x_TDATA(7 downto 0),
      x_TREADY => x_TREADY,
      x_TVALID => x_TVALID
    );
end STRUCTURE;
