-- ==============================================================
-- RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
-- Version: 2022.2
-- Copyright (C) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity dot_product_interface_Loop_L1_proc_Pipeline_SUM is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    n_cast : IN STD_LOGIC_VECTOR (31 downto 0);
    shl_ln22_mid2 : IN STD_LOGIC_VECTOR (19 downto 0);
    A_address0 : OUT STD_LOGIC_VECTOR (19 downto 0);
    A_ce0 : OUT STD_LOGIC;
    A_q0 : IN STD_LOGIC_VECTOR (7 downto 0);
    trunc_ln : IN STD_LOGIC_VECTOR (19 downto 0);
    select_ln14 : IN STD_LOGIC_VECTOR (9 downto 0);
    B_address0 : OUT STD_LOGIC_VECTOR (19 downto 0);
    B_ce0 : OUT STD_LOGIC;
    B_q0 : IN STD_LOGIC_VECTOR (7 downto 0);
    acc_V_out : OUT STD_LOGIC_VECTOR (7 downto 0);
    acc_V_out_ap_vld : OUT STD_LOGIC );
end;


architecture behav of dot_product_interface_Loop_L1_proc_Pipeline_SUM is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_pp0_stage0 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_boolean_1 : BOOLEAN := true;
    constant ap_const_boolean_0 : BOOLEAN := false;
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv8_0 : STD_LOGIC_VECTOR (7 downto 0) := "00000000";
    constant ap_const_lv64_0 : STD_LOGIC_VECTOR (63 downto 0) := "0000000000000000000000000000000000000000000000000000000000000000";
    constant ap_const_lv64_1 : STD_LOGIC_VECTOR (63 downto 0) := "0000000000000000000000000000000000000000000000000000000000000001";
    constant ap_const_lv32_A : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001010";
    constant ap_const_lv32_13 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000010011";
    constant ap_const_lv10_0 : STD_LOGIC_VECTOR (9 downto 0) := "0000000000";

attribute shreg_extract : string;
    signal ap_CS_fsm : STD_LOGIC_VECTOR (0 downto 0) := "1";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_pp0_stage0 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_pp0_stage0 : signal is "none";
    signal ap_enable_reg_pp0_iter0 : STD_LOGIC;
    signal ap_enable_reg_pp0_iter1 : STD_LOGIC := '0';
    signal ap_enable_reg_pp0_iter2 : STD_LOGIC := '0';
    signal ap_enable_reg_pp0_iter3 : STD_LOGIC := '0';
    signal ap_enable_reg_pp0_iter4 : STD_LOGIC := '0';
    signal ap_enable_reg_pp0_iter5 : STD_LOGIC := '0';
    signal ap_idle_pp0 : STD_LOGIC;
    signal ap_block_state1_pp0_stage0_iter0 : BOOLEAN;
    signal ap_block_state2_pp0_stage0_iter1 : BOOLEAN;
    signal ap_block_state3_pp0_stage0_iter2 : BOOLEAN;
    signal ap_block_state4_pp0_stage0_iter3 : BOOLEAN;
    signal ap_block_state5_pp0_stage0_iter4 : BOOLEAN;
    signal ap_block_state6_pp0_stage0_iter5 : BOOLEAN;
    signal ap_block_pp0_stage0_subdone : BOOLEAN;
    signal icmp_ln18_fu_152_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_condition_exit_pp0_iter1_stage0 : STD_LOGIC;
    signal ap_loop_exit_ready : STD_LOGIC;
    signal ap_ready_int : STD_LOGIC;
    signal ap_block_pp0_stage0_11001 : BOOLEAN;
    signal n_cast_cast_fu_135_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal n_cast_cast_reg_289 : STD_LOGIC_VECTOR (63 downto 0);
    signal icmp_ln18_reg_294 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln18_reg_294_pp0_iter2_reg : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln18_reg_294_pp0_iter3_reg : STD_LOGIC_VECTOR (0 downto 0);
    signal zext_ln1271_fu_194_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal ap_block_pp0_stage0 : BOOLEAN;
    signal zext_ln1273_fu_229_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal acc_V_fu_70 : STD_LOGIC_VECTOR (7 downto 0);
    signal grp_fu_250_p3 : STD_LOGIC_VECTOR (7 downto 0);
    signal ap_sig_allocacmp_acc_V_load : STD_LOGIC_VECTOR (7 downto 0);
    signal ap_loop_init : STD_LOGIC;
    signal k_fu_74 : STD_LOGIC_VECTOR (63 downto 0);
    signal k_2_fu_157_p2 : STD_LOGIC_VECTOR (63 downto 0);
    signal ap_block_pp0_stage0_01001 : BOOLEAN;
    signal empty_fu_163_p1 : STD_LOGIC_VECTOR (19 downto 0);
    signal add_ln1271_fu_171_p2 : STD_LOGIC_VECTOR (19 downto 0);
    signal lshr_ln1_fu_176_p4 : STD_LOGIC_VECTOR (9 downto 0);
    signal trunc_ln1271_fu_167_p1 : STD_LOGIC_VECTOR (9 downto 0);
    signal tmp_2_fu_186_p3 : STD_LOGIC_VECTOR (19 downto 0);
    signal shl_ln_fu_199_p3 : STD_LOGIC_VECTOR (19 downto 0);
    signal add_ln1273_fu_207_p2 : STD_LOGIC_VECTOR (19 downto 0);
    signal lshr_ln2_fu_212_p4 : STD_LOGIC_VECTOR (9 downto 0);
    signal tmp_4_fu_222_p3 : STD_LOGIC_VECTOR (19 downto 0);
    signal ap_done_reg : STD_LOGIC := '0';
    signal ap_continue_int : STD_LOGIC;
    signal ap_done_int : STD_LOGIC;
    signal ap_loop_exit_ready_pp0_iter2_reg : STD_LOGIC;
    signal ap_loop_exit_ready_pp0_iter3_reg : STD_LOGIC;
    signal ap_loop_exit_ready_pp0_iter4_reg : STD_LOGIC;
    signal ap_NS_fsm : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_enable_pp0 : STD_LOGIC;
    signal ap_start_int : STD_LOGIC;
    signal ap_ce_reg : STD_LOGIC;

    component dot_product_interface_mac_muladd_8s_8s_8ns_8_4_1 IS
    generic (
        ID : INTEGER;
        NUM_STAGE : INTEGER;
        din0_WIDTH : INTEGER;
        din1_WIDTH : INTEGER;
        din2_WIDTH : INTEGER;
        dout_WIDTH : INTEGER );
    port (
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        din0 : IN STD_LOGIC_VECTOR (7 downto 0);
        din1 : IN STD_LOGIC_VECTOR (7 downto 0);
        din2 : IN STD_LOGIC_VECTOR (7 downto 0);
        ce : IN STD_LOGIC;
        dout : OUT STD_LOGIC_VECTOR (7 downto 0) );
    end component;


    component dot_product_interface_flow_control_loop_pipe_sequential_init IS
    port (
        ap_clk : IN STD_LOGIC;
        ap_rst : IN STD_LOGIC;
        ap_start : IN STD_LOGIC;
        ap_ready : OUT STD_LOGIC;
        ap_done : OUT STD_LOGIC;
        ap_start_int : OUT STD_LOGIC;
        ap_loop_init : OUT STD_LOGIC;
        ap_ready_int : IN STD_LOGIC;
        ap_loop_exit_ready : IN STD_LOGIC;
        ap_loop_exit_done : IN STD_LOGIC;
        ap_continue_int : OUT STD_LOGIC;
        ap_done_int : IN STD_LOGIC );
    end component;



begin
    mac_muladd_8s_8s_8ns_8_4_1_U1 : component dot_product_interface_mac_muladd_8s_8s_8ns_8_4_1
    generic map (
        ID => 1,
        NUM_STAGE => 4,
        din0_WIDTH => 8,
        din1_WIDTH => 8,
        din2_WIDTH => 8,
        dout_WIDTH => 8)
    port map (
        clk => ap_clk,
        reset => ap_rst,
        din0 => B_q0,
        din1 => A_q0,
        din2 => ap_sig_allocacmp_acc_V_load,
        ce => ap_const_logic_1,
        dout => grp_fu_250_p3);

    flow_control_loop_pipe_sequential_init_U : component dot_product_interface_flow_control_loop_pipe_sequential_init
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst,
        ap_start => ap_start,
        ap_ready => ap_ready,
        ap_done => ap_done,
        ap_start_int => ap_start_int,
        ap_loop_init => ap_loop_init,
        ap_ready_int => ap_ready_int,
        ap_loop_exit_ready => ap_condition_exit_pp0_iter1_stage0,
        ap_loop_exit_done => ap_done_int,
        ap_continue_int => ap_continue_int,
        ap_done_int => ap_done_int);





    ap_CS_fsm_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_CS_fsm <= ap_ST_fsm_pp0_stage0;
            else
                ap_CS_fsm <= ap_NS_fsm;
            end if;
        end if;
    end process;


    ap_done_reg_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_done_reg <= ap_const_logic_0;
            else
                if ((ap_continue_int = ap_const_logic_1)) then 
                    ap_done_reg <= ap_const_logic_0;
                elsif (((ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_loop_exit_ready_pp0_iter4_reg = ap_const_logic_1))) then 
                    ap_done_reg <= ap_const_logic_1;
                end if; 
            end if;
        end if;
    end process;


    ap_enable_reg_pp0_iter1_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_enable_reg_pp0_iter1 <= ap_const_logic_0;
            else
                if ((ap_const_logic_1 = ap_condition_exit_pp0_iter1_stage0)) then 
                    ap_enable_reg_pp0_iter1 <= ap_const_logic_0;
                elsif (((ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
                    ap_enable_reg_pp0_iter1 <= ap_start_int;
                end if; 
            end if;
        end if;
    end process;


    ap_enable_reg_pp0_iter2_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_enable_reg_pp0_iter2 <= ap_const_logic_0;
            else
                if ((ap_const_logic_1 = ap_condition_exit_pp0_iter1_stage0)) then 
                    ap_enable_reg_pp0_iter2 <= ap_const_logic_0;
                elsif ((ap_const_boolean_0 = ap_block_pp0_stage0_subdone)) then 
                    ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
                end if; 
            end if;
        end if;
    end process;


    ap_enable_reg_pp0_iter3_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_enable_reg_pp0_iter3 <= ap_const_logic_0;
            else
                if ((ap_const_boolean_0 = ap_block_pp0_stage0_subdone)) then 
                    ap_enable_reg_pp0_iter3 <= ap_enable_reg_pp0_iter2;
                end if; 
            end if;
        end if;
    end process;


    ap_enable_reg_pp0_iter4_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_enable_reg_pp0_iter4 <= ap_const_logic_0;
            else
                if ((ap_const_boolean_0 = ap_block_pp0_stage0_subdone)) then 
                    ap_enable_reg_pp0_iter4 <= ap_enable_reg_pp0_iter3;
                end if; 
            end if;
        end if;
    end process;


    ap_enable_reg_pp0_iter5_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_enable_reg_pp0_iter5 <= ap_const_logic_0;
            else
                if ((ap_const_boolean_0 = ap_block_pp0_stage0_subdone)) then 
                    ap_enable_reg_pp0_iter5 <= ap_enable_reg_pp0_iter4;
                end if; 
            end if;
        end if;
    end process;


    acc_V_fu_70_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_boolean_0 = ap_block_pp0_stage0_11001)) then
                if (((ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_loop_init = ap_const_logic_1))) then 
                    acc_V_fu_70 <= ap_const_lv8_0;
                elsif ((ap_enable_reg_pp0_iter5 = ap_const_logic_1)) then 
                    acc_V_fu_70 <= grp_fu_250_p3;
                end if;
            end if; 
        end if;
    end process;

    k_fu_74_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                if ((ap_loop_init = ap_const_logic_1)) then 
                    k_fu_74 <= ap_const_lv64_0;
                elsif (((icmp_ln18_fu_152_p2 = ap_const_lv1_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1))) then 
                    k_fu_74 <= k_2_fu_157_p2;
                end if;
            end if; 
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready;
                icmp_ln18_reg_294 <= icmp_ln18_fu_152_p2;
                n_cast_cast_reg_289 <= n_cast_cast_fu_135_p1;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_boolean_0 = ap_block_pp0_stage0_11001)) then
                ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
                ap_loop_exit_ready_pp0_iter4_reg <= ap_loop_exit_ready_pp0_iter3_reg;
                icmp_ln18_reg_294_pp0_iter2_reg <= icmp_ln18_reg_294;
                icmp_ln18_reg_294_pp0_iter3_reg <= icmp_ln18_reg_294_pp0_iter2_reg;
            end if;
        end if;
    end process;

    ap_NS_fsm_assign_proc : process (ap_CS_fsm)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_pp0_stage0 => 
                ap_NS_fsm <= ap_ST_fsm_pp0_stage0;
            when others =>  
                ap_NS_fsm <= "X";
        end case;
    end process;
    A_address0 <= zext_ln1271_fu_194_p1(20 - 1 downto 0);

    A_ce0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            A_ce0 <= ap_const_logic_1;
        else 
            A_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    B_address0 <= zext_ln1273_fu_229_p1(20 - 1 downto 0);

    B_ce0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            B_ce0 <= ap_const_logic_1;
        else 
            B_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    acc_V_out <= acc_V_fu_70;

    acc_V_out_ap_vld_assign_proc : process(ap_block_pp0_stage0_11001, icmp_ln18_reg_294_pp0_iter3_reg)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (icmp_ln18_reg_294_pp0_iter3_reg = ap_const_lv1_1))) then 
            acc_V_out_ap_vld <= ap_const_logic_1;
        else 
            acc_V_out_ap_vld <= ap_const_logic_0;
        end if; 
    end process;

    add_ln1271_fu_171_p2 <= std_logic_vector(unsigned(empty_fu_163_p1) + unsigned(shl_ln22_mid2));
    add_ln1273_fu_207_p2 <= std_logic_vector(unsigned(shl_ln_fu_199_p3) + unsigned(trunc_ln));
    ap_CS_fsm_pp0_stage0 <= ap_CS_fsm(0);
        ap_block_pp0_stage0 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage0_01001 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage0_11001 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage0_subdone <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state1_pp0_stage0_iter0 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state2_pp0_stage0_iter1 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state3_pp0_stage0_iter2 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state4_pp0_stage0_iter3 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state5_pp0_stage0_iter4 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state6_pp0_stage0_iter5 <= not((ap_const_boolean_1 = ap_const_boolean_1));

    ap_condition_exit_pp0_iter1_stage0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, ap_block_pp0_stage0_subdone, icmp_ln18_fu_152_p2)
    begin
        if (((icmp_ln18_fu_152_p2 = ap_const_lv1_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            ap_condition_exit_pp0_iter1_stage0 <= ap_const_logic_1;
        else 
            ap_condition_exit_pp0_iter1_stage0 <= ap_const_logic_0;
        end if; 
    end process;


    ap_done_int_assign_proc : process(ap_block_pp0_stage0_subdone, ap_done_reg, ap_loop_exit_ready_pp0_iter4_reg)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_loop_exit_ready_pp0_iter4_reg = ap_const_logic_1))) then 
            ap_done_int <= ap_const_logic_1;
        else 
            ap_done_int <= ap_done_reg;
        end if; 
    end process;

    ap_enable_pp0 <= (ap_idle_pp0 xor ap_const_logic_1);
    ap_enable_reg_pp0_iter0 <= ap_start_int;

    ap_idle_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_idle_pp0, ap_start_int)
    begin
        if (((ap_idle_pp0 = ap_const_logic_1) and (ap_start_int = ap_const_logic_0) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            ap_idle <= ap_const_logic_1;
        else 
            ap_idle <= ap_const_logic_0;
        end if; 
    end process;


    ap_idle_pp0_assign_proc : process(ap_enable_reg_pp0_iter0, ap_enable_reg_pp0_iter1, ap_enable_reg_pp0_iter2, ap_enable_reg_pp0_iter3, ap_enable_reg_pp0_iter4, ap_enable_reg_pp0_iter5)
    begin
        if (((ap_enable_reg_pp0_iter5 = ap_const_logic_0) and (ap_enable_reg_pp0_iter4 = ap_const_logic_0) and (ap_enable_reg_pp0_iter3 = ap_const_logic_0) and (ap_enable_reg_pp0_iter2 = ap_const_logic_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_0))) then 
            ap_idle_pp0 <= ap_const_logic_1;
        else 
            ap_idle_pp0 <= ap_const_logic_0;
        end if; 
    end process;

    ap_loop_exit_ready <= ap_condition_exit_pp0_iter1_stage0;

    ap_ready_int_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter0, ap_block_pp0_stage0_subdone)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            ap_ready_int <= ap_const_logic_1;
        else 
            ap_ready_int <= ap_const_logic_0;
        end if; 
    end process;


    ap_sig_allocacmp_acc_V_load_assign_proc : process(ap_enable_reg_pp0_iter5, ap_block_pp0_stage0, acc_V_fu_70, grp_fu_250_p3)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0) and (ap_enable_reg_pp0_iter5 = ap_const_logic_1))) then 
            ap_sig_allocacmp_acc_V_load <= grp_fu_250_p3;
        else 
            ap_sig_allocacmp_acc_V_load <= acc_V_fu_70;
        end if; 
    end process;

    empty_fu_163_p1 <= k_fu_74(20 - 1 downto 0);
    icmp_ln18_fu_152_p2 <= "1" when (k_fu_74 = n_cast_cast_reg_289) else "0";
    k_2_fu_157_p2 <= std_logic_vector(unsigned(k_fu_74) + unsigned(ap_const_lv64_1));
    lshr_ln1_fu_176_p4 <= add_ln1271_fu_171_p2(19 downto 10);
    lshr_ln2_fu_212_p4 <= add_ln1273_fu_207_p2(19 downto 10);
        n_cast_cast_fu_135_p1 <= std_logic_vector(IEEE.numeric_std.resize(signed(n_cast),64));

    shl_ln_fu_199_p3 <= (trunc_ln1271_fu_167_p1 & ap_const_lv10_0);
    tmp_2_fu_186_p3 <= (lshr_ln1_fu_176_p4 & trunc_ln1271_fu_167_p1);
    tmp_4_fu_222_p3 <= (lshr_ln2_fu_212_p4 & select_ln14);
    trunc_ln1271_fu_167_p1 <= k_fu_74(10 - 1 downto 0);
    zext_ln1271_fu_194_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(tmp_2_fu_186_p3),64));
    zext_ln1273_fu_229_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(tmp_4_fu_222_p3),64));
end behav;
