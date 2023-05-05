// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
// Date        : Fri May  5 13:24:36 2023
// Host        : DESKTOP-EOP59MS running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/tsope/OneDrive/Documents/GitHub/HW-IP/vector_add/vadd/vadd.gen/sources_1/bd/design_1/ip/design_1_vector_add_0_3/design_1_vector_add_0_3_sim_netlist.v
// Design      : design_1_vector_add_0_3
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xck26-sfvc784-2LV-c
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_vector_add_0_3,vector_add,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "HLS" *) 
(* X_CORE_INFO = "vector_add,Vivado 2022.2" *) (* hls_module = "yes" *) 
(* NotValidForBitStream *)
module design_1_vector_add_0_3
   (s_axi_control_AWADDR,
    s_axi_control_AWVALID,
    s_axi_control_AWREADY,
    s_axi_control_WDATA,
    s_axi_control_WSTRB,
    s_axi_control_WVALID,
    s_axi_control_WREADY,
    s_axi_control_BRESP,
    s_axi_control_BVALID,
    s_axi_control_BREADY,
    s_axi_control_ARADDR,
    s_axi_control_ARVALID,
    s_axi_control_ARREADY,
    s_axi_control_RDATA,
    s_axi_control_RRESP,
    s_axi_control_RVALID,
    s_axi_control_RREADY,
    ap_clk,
    ap_rst_n,
    x_TVALID,
    x_TREADY,
    x_TDATA,
    w_TVALID,
    w_TREADY,
    w_TDATA);
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control AWADDR" *) input [4:0]s_axi_control_AWADDR;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control AWVALID" *) input s_axi_control_AWVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control AWREADY" *) output s_axi_control_AWREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control WDATA" *) input [31:0]s_axi_control_WDATA;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control WSTRB" *) input [3:0]s_axi_control_WSTRB;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control WVALID" *) input s_axi_control_WVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control WREADY" *) output s_axi_control_WREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control BRESP" *) output [1:0]s_axi_control_BRESP;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control BVALID" *) output s_axi_control_BVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control BREADY" *) input s_axi_control_BREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control ARADDR" *) input [4:0]s_axi_control_ARADDR;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control ARVALID" *) input s_axi_control_ARVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control ARREADY" *) output s_axi_control_ARREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control RDATA" *) output [31:0]s_axi_control_RDATA;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control RRESP" *) output [1:0]s_axi_control_RRESP;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control RVALID" *) output s_axi_control_RVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control RREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axi_control, ADDR_WIDTH 5, DATA_WIDTH 32, PROTOCOL AXI4LITE, READ_WRITE_MODE READ_WRITE, FREQ_HZ 99999001, ID_WIDTH 0, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN design_1_zynq_ultra_ps_e_0_0_pl_clk0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) input s_axi_control_RREADY;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 ap_clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ap_clk, ASSOCIATED_BUSIF s_axi_control:x:w, ASSOCIATED_RESET ap_rst_n, FREQ_HZ 99999001, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_zynq_ultra_ps_e_0_0_pl_clk0, INSERT_VIP 0" *) input ap_clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 ap_rst_n RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ap_rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input ap_rst_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 x TVALID" *) input x_TVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 x TREADY" *) output x_TREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 x TDATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME x, TDATA_NUM_BYTES 1, TUSER_WIDTH 0, TDEST_WIDTH 0, TID_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 99999001, PHASE 0.0, CLK_DOMAIN design_1_zynq_ultra_ps_e_0_0_pl_clk0, INSERT_VIP 0" *) input [7:0]x_TDATA;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 w TVALID" *) input w_TVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 w TREADY" *) output w_TREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 w TDATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME w, TDATA_NUM_BYTES 1, TUSER_WIDTH 0, TDEST_WIDTH 0, TID_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 99999001, PHASE 0.0, CLK_DOMAIN design_1_zynq_ultra_ps_e_0_0_pl_clk0, INSERT_VIP 0" *) input [7:0]w_TDATA;

  wire \<const0> ;
  wire ap_clk;
  wire ap_rst_n;
  wire [4:0]s_axi_control_ARADDR;
  wire s_axi_control_ARREADY;
  wire s_axi_control_ARVALID;
  wire s_axi_control_AWREADY;
  wire s_axi_control_AWVALID;
  wire s_axi_control_BREADY;
  wire s_axi_control_BVALID;
  wire [7:0]\^s_axi_control_RDATA ;
  wire s_axi_control_RREADY;
  wire s_axi_control_RVALID;
  wire s_axi_control_WREADY;
  wire s_axi_control_WVALID;
  wire [7:0]w_TDATA;
  wire w_TREADY;
  wire w_TVALID;
  wire [7:0]x_TDATA;
  wire x_TREADY;
  wire x_TVALID;
  wire [1:0]NLW_inst_s_axi_control_BRESP_UNCONNECTED;
  wire [31:8]NLW_inst_s_axi_control_RDATA_UNCONNECTED;
  wire [1:0]NLW_inst_s_axi_control_RRESP_UNCONNECTED;

  assign s_axi_control_BRESP[1] = \<const0> ;
  assign s_axi_control_BRESP[0] = \<const0> ;
  assign s_axi_control_RDATA[31] = \<const0> ;
  assign s_axi_control_RDATA[30] = \<const0> ;
  assign s_axi_control_RDATA[29] = \<const0> ;
  assign s_axi_control_RDATA[28] = \<const0> ;
  assign s_axi_control_RDATA[27] = \<const0> ;
  assign s_axi_control_RDATA[26] = \<const0> ;
  assign s_axi_control_RDATA[25] = \<const0> ;
  assign s_axi_control_RDATA[24] = \<const0> ;
  assign s_axi_control_RDATA[23] = \<const0> ;
  assign s_axi_control_RDATA[22] = \<const0> ;
  assign s_axi_control_RDATA[21] = \<const0> ;
  assign s_axi_control_RDATA[20] = \<const0> ;
  assign s_axi_control_RDATA[19] = \<const0> ;
  assign s_axi_control_RDATA[18] = \<const0> ;
  assign s_axi_control_RDATA[17] = \<const0> ;
  assign s_axi_control_RDATA[16] = \<const0> ;
  assign s_axi_control_RDATA[15] = \<const0> ;
  assign s_axi_control_RDATA[14] = \<const0> ;
  assign s_axi_control_RDATA[13] = \<const0> ;
  assign s_axi_control_RDATA[12] = \<const0> ;
  assign s_axi_control_RDATA[11] = \<const0> ;
  assign s_axi_control_RDATA[10] = \<const0> ;
  assign s_axi_control_RDATA[9] = \<const0> ;
  assign s_axi_control_RDATA[8] = \<const0> ;
  assign s_axi_control_RDATA[7:0] = \^s_axi_control_RDATA [7:0];
  assign s_axi_control_RRESP[1] = \<const0> ;
  assign s_axi_control_RRESP[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  (* C_S_AXI_CONTROL_ADDR_WIDTH = "5" *) 
  (* C_S_AXI_CONTROL_DATA_WIDTH = "32" *) 
  (* C_S_AXI_CONTROL_WSTRB_WIDTH = "4" *) 
  (* C_S_AXI_DATA_WIDTH = "32" *) 
  (* C_S_AXI_WSTRB_WIDTH = "4" *) 
  (* SDX_KERNEL = "true" *) 
  (* SDX_KERNEL_SYNTH_INST = "inst" *) 
  (* SDX_KERNEL_TYPE = "hls" *) 
  (* ap_ST_fsm_state1 = "2'b01" *) 
  (* ap_ST_fsm_state2 = "2'b10" *) 
  design_1_vector_add_0_3_vector_add inst
       (.ap_clk(ap_clk),
        .ap_rst_n(ap_rst_n),
        .s_axi_control_ARADDR(s_axi_control_ARADDR),
        .s_axi_control_ARREADY(s_axi_control_ARREADY),
        .s_axi_control_ARVALID(s_axi_control_ARVALID),
        .s_axi_control_AWADDR({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_control_AWREADY(s_axi_control_AWREADY),
        .s_axi_control_AWVALID(s_axi_control_AWVALID),
        .s_axi_control_BREADY(s_axi_control_BREADY),
        .s_axi_control_BRESP(NLW_inst_s_axi_control_BRESP_UNCONNECTED[1:0]),
        .s_axi_control_BVALID(s_axi_control_BVALID),
        .s_axi_control_RDATA({NLW_inst_s_axi_control_RDATA_UNCONNECTED[31:8],\^s_axi_control_RDATA }),
        .s_axi_control_RREADY(s_axi_control_RREADY),
        .s_axi_control_RRESP(NLW_inst_s_axi_control_RRESP_UNCONNECTED[1:0]),
        .s_axi_control_RVALID(s_axi_control_RVALID),
        .s_axi_control_WDATA({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_control_WREADY(s_axi_control_WREADY),
        .s_axi_control_WSTRB({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_control_WVALID(s_axi_control_WVALID),
        .w_TDATA(w_TDATA),
        .w_TREADY(w_TREADY),
        .w_TVALID(w_TVALID),
        .x_TDATA(x_TDATA),
        .x_TREADY(x_TREADY),
        .x_TVALID(x_TVALID));
endmodule

(* C_S_AXI_CONTROL_ADDR_WIDTH = "5" *) (* C_S_AXI_CONTROL_DATA_WIDTH = "32" *) (* C_S_AXI_CONTROL_WSTRB_WIDTH = "4" *) 
(* C_S_AXI_DATA_WIDTH = "32" *) (* C_S_AXI_WSTRB_WIDTH = "4" *) (* ORIG_REF_NAME = "vector_add" *) 
(* ap_ST_fsm_state1 = "2'b01" *) (* ap_ST_fsm_state2 = "2'b10" *) (* hls_module = "yes" *) 
module design_1_vector_add_0_3_vector_add
   (ap_clk,
    ap_rst_n,
    x_TDATA,
    x_TVALID,
    x_TREADY,
    w_TDATA,
    w_TVALID,
    w_TREADY,
    s_axi_control_AWVALID,
    s_axi_control_AWREADY,
    s_axi_control_AWADDR,
    s_axi_control_WVALID,
    s_axi_control_WREADY,
    s_axi_control_WDATA,
    s_axi_control_WSTRB,
    s_axi_control_ARVALID,
    s_axi_control_ARREADY,
    s_axi_control_ARADDR,
    s_axi_control_RVALID,
    s_axi_control_RREADY,
    s_axi_control_RDATA,
    s_axi_control_RRESP,
    s_axi_control_BVALID,
    s_axi_control_BREADY,
    s_axi_control_BRESP);
  input ap_clk;
  input ap_rst_n;
  input [7:0]x_TDATA;
  input x_TVALID;
  output x_TREADY;
  input [7:0]w_TDATA;
  input w_TVALID;
  output w_TREADY;
  input s_axi_control_AWVALID;
  output s_axi_control_AWREADY;
  input [4:0]s_axi_control_AWADDR;
  input s_axi_control_WVALID;
  output s_axi_control_WREADY;
  input [31:0]s_axi_control_WDATA;
  input [3:0]s_axi_control_WSTRB;
  input s_axi_control_ARVALID;
  output s_axi_control_ARREADY;
  input [4:0]s_axi_control_ARADDR;
  output s_axi_control_RVALID;
  input s_axi_control_RREADY;
  output [31:0]s_axi_control_RDATA;
  output [1:0]s_axi_control_RRESP;
  output s_axi_control_BVALID;
  input s_axi_control_BREADY;
  output [1:0]s_axi_control_BRESP;

  wire \<const0> ;
  wire [6:0]B_V_data_1_payload_A;
  wire [6:0]B_V_data_1_payload_B;
  wire B_V_data_1_sel;
  wire \ap_CS_fsm[0]_i_1_n_0 ;
  wire \ap_CS_fsm[1]_i_1_n_0 ;
  wire \ap_CS_fsm_reg_n_0_[1] ;
  wire ap_clk;
  wire ap_rst_n;
  wire ap_rst_n_inv;
  wire [7:0]dout;
  wire mul_8s_8s_8_1_1_U1_n_0;
  wire mul_8s_8s_8_1_1_U1_n_1;
  wire mul_8s_8s_8_1_1_U1_n_5;
  wire mul_8s_8s_8_1_1_U1_n_6;
  wire regslice_both_w_U_n_1;
  wire regslice_both_w_U_n_10;
  wire regslice_both_w_U_n_11;
  wire regslice_both_w_U_n_12;
  wire regslice_both_w_U_n_13;
  wire regslice_both_w_U_n_14;
  wire regslice_both_w_U_n_15;
  wire regslice_both_w_U_n_16;
  wire regslice_both_w_U_n_17;
  wire regslice_both_w_U_n_18;
  wire regslice_both_w_U_n_19;
  wire regslice_both_w_U_n_20;
  wire regslice_both_w_U_n_21;
  wire regslice_both_w_U_n_22;
  wire regslice_both_w_U_n_23;
  wire regslice_both_w_U_n_24;
  wire regslice_both_w_U_n_25;
  wire regslice_both_w_U_n_26;
  wire regslice_both_w_U_n_27;
  wire regslice_both_w_U_n_28;
  wire regslice_both_w_U_n_29;
  wire regslice_both_w_U_n_30;
  wire regslice_both_w_U_n_31;
  wire regslice_both_w_U_n_32;
  wire regslice_both_w_U_n_33;
  wire regslice_both_w_U_n_4;
  wire regslice_both_w_U_n_5;
  wire regslice_both_w_U_n_6;
  wire regslice_both_w_U_n_7;
  wire regslice_both_w_U_n_8;
  wire regslice_both_w_U_n_9;
  wire regslice_both_x_U_n_11;
  wire regslice_both_x_U_n_12;
  wire regslice_both_x_U_n_13;
  wire regslice_both_x_U_n_14;
  wire regslice_both_x_U_n_15;
  wire regslice_both_x_U_n_16;
  wire regslice_both_x_U_n_17;
  wire regslice_both_x_U_n_18;
  wire regslice_both_x_U_n_19;
  wire regslice_both_x_U_n_20;
  wire regslice_both_x_U_n_21;
  wire regslice_both_x_U_n_22;
  wire regslice_both_x_U_n_23;
  wire regslice_both_x_U_n_24;
  wire regslice_both_x_U_n_25;
  wire regslice_both_x_U_n_26;
  wire regslice_both_x_U_n_27;
  wire regslice_both_x_U_n_28;
  wire regslice_both_x_U_n_29;
  wire regslice_both_x_U_n_30;
  wire regslice_both_x_U_n_31;
  wire [4:0]s_axi_control_ARADDR;
  wire s_axi_control_ARREADY;
  wire s_axi_control_ARVALID;
  wire s_axi_control_AWREADY;
  wire s_axi_control_AWVALID;
  wire s_axi_control_BREADY;
  wire s_axi_control_BVALID;
  wire [7:0]\^s_axi_control_RDATA ;
  wire s_axi_control_RREADY;
  wire s_axi_control_RVALID;
  wire s_axi_control_WREADY;
  wire s_axi_control_WVALID;
  wire tmp_1_nbreadreq_fu_52_p3;
  wire tmp_nbreadreq_fu_44_p3;
  wire [7:0]w_TDATA;
  wire w_TREADY;
  wire w_TVALID;
  wire [7:0]x_TDATA;
  wire x_TREADY;
  wire x_TVALID;
  wire y_1_data_reg;
  wire y_1_data_reg00_out;
  wire \y_1_data_reg_reg_n_0_[0] ;
  wire \y_1_data_reg_reg_n_0_[1] ;
  wire \y_1_data_reg_reg_n_0_[2] ;
  wire \y_1_data_reg_reg_n_0_[3] ;
  wire \y_1_data_reg_reg_n_0_[4] ;
  wire \y_1_data_reg_reg_n_0_[5] ;
  wire \y_1_data_reg_reg_n_0_[6] ;
  wire \y_1_data_reg_reg_n_0_[7] ;
  wire y_1_vld_reg;

  assign s_axi_control_BRESP[1] = \<const0> ;
  assign s_axi_control_BRESP[0] = \<const0> ;
  assign s_axi_control_RDATA[31] = \<const0> ;
  assign s_axi_control_RDATA[30] = \<const0> ;
  assign s_axi_control_RDATA[29] = \<const0> ;
  assign s_axi_control_RDATA[28] = \<const0> ;
  assign s_axi_control_RDATA[27] = \<const0> ;
  assign s_axi_control_RDATA[26] = \<const0> ;
  assign s_axi_control_RDATA[25] = \<const0> ;
  assign s_axi_control_RDATA[24] = \<const0> ;
  assign s_axi_control_RDATA[23] = \<const0> ;
  assign s_axi_control_RDATA[22] = \<const0> ;
  assign s_axi_control_RDATA[21] = \<const0> ;
  assign s_axi_control_RDATA[20] = \<const0> ;
  assign s_axi_control_RDATA[19] = \<const0> ;
  assign s_axi_control_RDATA[18] = \<const0> ;
  assign s_axi_control_RDATA[17] = \<const0> ;
  assign s_axi_control_RDATA[16] = \<const0> ;
  assign s_axi_control_RDATA[15] = \<const0> ;
  assign s_axi_control_RDATA[14] = \<const0> ;
  assign s_axi_control_RDATA[13] = \<const0> ;
  assign s_axi_control_RDATA[12] = \<const0> ;
  assign s_axi_control_RDATA[11] = \<const0> ;
  assign s_axi_control_RDATA[10] = \<const0> ;
  assign s_axi_control_RDATA[9] = \<const0> ;
  assign s_axi_control_RDATA[8] = \<const0> ;
  assign s_axi_control_RDATA[7:0] = \^s_axi_control_RDATA [7:0];
  assign s_axi_control_RRESP[1] = \<const0> ;
  assign s_axi_control_RRESP[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  LUT2 #(
    .INIT(4'h4)) 
    \ap_CS_fsm[0]_i_1 
       (.I0(y_1_data_reg00_out),
        .I1(\ap_CS_fsm_reg_n_0_[1] ),
        .O(\ap_CS_fsm[0]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hD)) 
    \ap_CS_fsm[1]_i_1 
       (.I0(\ap_CS_fsm_reg_n_0_[1] ),
        .I1(y_1_data_reg00_out),
        .O(\ap_CS_fsm[1]_i_1_n_0 ));
  (* FSM_ENCODING = "none" *) 
  FDSE #(
    .INIT(1'b1)) 
    \ap_CS_fsm_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\ap_CS_fsm[0]_i_1_n_0 ),
        .Q(y_1_data_reg00_out),
        .S(ap_rst_n_inv));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\ap_CS_fsm[1]_i_1_n_0 ),
        .Q(\ap_CS_fsm_reg_n_0_[1] ),
        .R(ap_rst_n_inv));
  design_1_vector_add_0_3_vector_add_control_s_axi control_s_axi_U
       (.E(y_1_vld_reg),
        .\FSM_onehot_rstate_reg[1]_0 (s_axi_control_ARREADY),
        .\FSM_onehot_wstate_reg[2]_0 (s_axi_control_WREADY),
        .Q({\y_1_data_reg_reg_n_0_[7] ,\y_1_data_reg_reg_n_0_[6] ,\y_1_data_reg_reg_n_0_[5] ,\y_1_data_reg_reg_n_0_[4] ,\y_1_data_reg_reg_n_0_[3] ,\y_1_data_reg_reg_n_0_[2] ,\y_1_data_reg_reg_n_0_[1] ,\y_1_data_reg_reg_n_0_[0] }),
        .SR(ap_rst_n_inv),
        .ap_clk(ap_clk),
        .ap_rst_n(ap_rst_n),
        .s_axi_control_ARADDR(s_axi_control_ARADDR),
        .s_axi_control_ARVALID(s_axi_control_ARVALID),
        .s_axi_control_AWREADY(s_axi_control_AWREADY),
        .s_axi_control_AWVALID(s_axi_control_AWVALID),
        .s_axi_control_BREADY(s_axi_control_BREADY),
        .s_axi_control_BVALID(s_axi_control_BVALID),
        .s_axi_control_RDATA(\^s_axi_control_RDATA ),
        .s_axi_control_RREADY(s_axi_control_RREADY),
        .s_axi_control_RVALID(s_axi_control_RVALID),
        .s_axi_control_WVALID(s_axi_control_WVALID));
  design_1_vector_add_0_3_vector_add_mul_8s_8s_8_1_1 mul_8s_8s_8_1_1_U1
       (.\B_V_data_1_payload_B_reg[5] ({mul_8s_8s_8_1_1_U1_n_5,mul_8s_8s_8_1_1_U1_n_6}),
        .D(dout[7:3]),
        .DI({regslice_both_w_U_n_6,regslice_both_w_U_n_7,regslice_both_x_U_n_13,regslice_both_w_U_n_8,regslice_both_x_U_n_14,regslice_both_x_U_n_15}),
        .O({mul_8s_8s_8_1_1_U1_n_0,mul_8s_8s_8_1_1_U1_n_1,dout[2:0]}),
        .S({regslice_both_x_U_n_24,regslice_both_w_U_n_27,regslice_both_w_U_n_28,regslice_both_x_U_n_25,regslice_both_w_U_n_29,regslice_both_w_U_n_30,regslice_both_w_U_n_31,regslice_both_w_U_n_32}),
        .\y_1_data_reg_reg[3] ({regslice_both_x_U_n_26,regslice_both_x_U_n_27,regslice_both_w_U_n_26}),
        .\y_1_data_reg_reg[3]_0 ({regslice_both_x_U_n_28,regslice_both_w_U_n_24,regslice_both_x_U_n_29,regslice_both_x_U_n_30,regslice_both_w_U_n_25}),
        .\y_1_data_reg_reg[7] (regslice_both_x_U_n_31),
        .\y_1_data_reg_reg[7]_0 (regslice_both_w_U_n_13));
  design_1_vector_add_0_3_vector_add_regslice_both regslice_both_w_U
       (.\B_V_data_1_payload_A_reg[0]_0 (regslice_both_w_U_n_13),
        .\B_V_data_1_payload_A_reg[0]_1 (regslice_both_w_U_n_26),
        .\B_V_data_1_payload_A_reg[6]_0 ({regslice_both_w_U_n_14,regslice_both_w_U_n_15,regslice_both_w_U_n_16,regslice_both_w_U_n_17,regslice_both_w_U_n_18}),
        .\B_V_data_1_payload_B_reg[0]_0 (regslice_both_w_U_n_33),
        .\B_V_data_1_payload_B_reg[1]_0 (regslice_both_w_U_n_4),
        .\B_V_data_1_payload_B_reg[2]_0 (regslice_both_w_U_n_12),
        .\B_V_data_1_payload_B_reg[2]_1 ({regslice_both_w_U_n_24,regslice_both_w_U_n_25}),
        .\B_V_data_1_payload_B_reg[3]_0 (regslice_both_w_U_n_9),
        .\B_V_data_1_payload_B_reg[4]_0 (regslice_both_w_U_n_10),
        .\B_V_data_1_payload_B_reg[5]_0 (regslice_both_w_U_n_11),
        .\B_V_data_1_payload_B_reg[6]_0 ({regslice_both_w_U_n_19,regslice_both_w_U_n_20,regslice_both_w_U_n_21,regslice_both_w_U_n_22,regslice_both_w_U_n_23}),
        .\B_V_data_1_payload_B_reg[7]_0 (regslice_both_w_U_n_5),
        .B_V_data_1_sel(B_V_data_1_sel),
        .B_V_data_1_sel_rd_reg_0(regslice_both_w_U_n_1),
        .\B_V_data_1_state_reg[0]_0 (y_1_data_reg),
        .\B_V_data_1_state_reg[1]_0 (w_TREADY),
        .DI({regslice_both_w_U_n_6,regslice_both_w_U_n_7,regslice_both_w_U_n_8}),
        .Q(y_1_data_reg00_out),
        .S({regslice_both_w_U_n_27,regslice_both_w_U_n_28,regslice_both_w_U_n_29,regslice_both_w_U_n_30,regslice_both_w_U_n_31,regslice_both_w_U_n_32}),
        .SR(ap_rst_n_inv),
        .ap_clk(ap_clk),
        .ap_rst_n(ap_rst_n),
        .dout__0_carry_i_7(regslice_both_x_U_n_19),
        .dout__0_carry_i_7_0(regslice_both_x_U_n_20),
        .dout__22_carry(regslice_both_x_U_n_11),
        .dout__22_carry_0(regslice_both_x_U_n_12),
        .dout__34_carry_i_5({B_V_data_1_payload_A[6],B_V_data_1_payload_A[4:3],B_V_data_1_payload_A[0]}),
        .dout__34_carry_i_5_0({B_V_data_1_payload_B[6],B_V_data_1_payload_B[4:3],B_V_data_1_payload_B[0]}),
        .tmp_1_nbreadreq_fu_52_p3(tmp_1_nbreadreq_fu_52_p3),
        .tmp_nbreadreq_fu_44_p3(tmp_nbreadreq_fu_44_p3),
        .w_TDATA(w_TDATA),
        .w_TVALID(w_TVALID),
        .\y_1_data_reg_reg[2] (regslice_both_x_U_n_18),
        .\y_1_data_reg_reg[2]_0 (regslice_both_x_U_n_16),
        .\y_1_data_reg_reg[2]_1 (regslice_both_x_U_n_17),
        .\y_1_data_reg_reg[2]_2 (regslice_both_x_U_n_14),
        .\y_1_data_reg_reg[2]_3 (regslice_both_x_U_n_21),
        .\y_1_data_reg_reg[2]_4 (regslice_both_x_U_n_23),
        .\y_1_data_reg_reg[2]_5 (regslice_both_x_U_n_22));
  design_1_vector_add_0_3_vector_add_regslice_both_0 regslice_both_x_U
       (.\B_V_data_1_payload_A_reg[0]_0 (regslice_both_x_U_n_21),
        .\B_V_data_1_payload_A_reg[0]_1 (regslice_both_x_U_n_22),
        .\B_V_data_1_payload_A_reg[0]_2 (regslice_both_x_U_n_23),
        .\B_V_data_1_payload_A_reg[1]_0 (regslice_both_x_U_n_19),
        .\B_V_data_1_payload_A_reg[2]_0 (regslice_both_x_U_n_20),
        .\B_V_data_1_payload_A_reg[5]_0 ({regslice_both_x_U_n_28,regslice_both_x_U_n_29,regslice_both_x_U_n_30}),
        .\B_V_data_1_payload_A_reg[6]_0 ({B_V_data_1_payload_A[6],B_V_data_1_payload_A[4:3],B_V_data_1_payload_A[0]}),
        .\B_V_data_1_payload_A_reg[7]_0 (regslice_both_x_U_n_31),
        .\B_V_data_1_payload_B_reg[0]_0 (regslice_both_x_U_n_18),
        .\B_V_data_1_payload_B_reg[1]_0 (regslice_both_x_U_n_17),
        .\B_V_data_1_payload_B_reg[2]_0 (regslice_both_x_U_n_16),
        .\B_V_data_1_payload_B_reg[3]_0 ({regslice_both_x_U_n_26,regslice_both_x_U_n_27}),
        .\B_V_data_1_payload_B_reg[4]_0 (regslice_both_x_U_n_12),
        .\B_V_data_1_payload_B_reg[5]_0 (regslice_both_x_U_n_11),
        .\B_V_data_1_payload_B_reg[6]_0 ({B_V_data_1_payload_B[6],B_V_data_1_payload_B[4:3],B_V_data_1_payload_B[0]}),
        .B_V_data_1_sel(B_V_data_1_sel),
        .\B_V_data_1_state_reg[1]_0 (x_TREADY),
        .DI({regslice_both_x_U_n_13,regslice_both_x_U_n_14,regslice_both_x_U_n_15}),
        .O({mul_8s_8s_8_1_1_U1_n_0,mul_8s_8s_8_1_1_U1_n_1}),
        .Q(y_1_data_reg00_out),
        .S({regslice_both_x_U_n_24,regslice_both_x_U_n_25}),
        .SR(ap_rst_n_inv),
        .ap_clk(ap_clk),
        .ap_rst_n(ap_rst_n),
        .dout__0_carry_i_8({regslice_both_w_U_n_14,regslice_both_w_U_n_15,regslice_both_w_U_n_16,regslice_both_w_U_n_17,regslice_both_w_U_n_18}),
        .dout__0_carry_i_8_0({regslice_both_w_U_n_19,regslice_both_w_U_n_20,regslice_both_w_U_n_21,regslice_both_w_U_n_22,regslice_both_w_U_n_23}),
        .dout__34_carry_i_4_0({mul_8s_8s_8_1_1_U1_n_5,mul_8s_8s_8_1_1_U1_n_6}),
        .tmp_1_nbreadreq_fu_52_p3(tmp_1_nbreadreq_fu_52_p3),
        .tmp_nbreadreq_fu_44_p3(tmp_nbreadreq_fu_44_p3),
        .x_TDATA(x_TDATA),
        .x_TVALID(x_TVALID),
        .\y_1_data_reg_reg[2] (regslice_both_w_U_n_4),
        .\y_1_data_reg_reg[2]_0 (regslice_both_w_U_n_12),
        .\y_1_data_reg_reg[2]_1 (regslice_both_w_U_n_9),
        .\y_1_data_reg_reg[2]_2 (regslice_both_w_U_n_1),
        .\y_1_data_reg_reg[2]_3 (regslice_both_w_U_n_33),
        .\y_1_data_reg_reg[2]_4 (regslice_both_w_U_n_11),
        .\y_1_data_reg_reg[2]_5 (regslice_both_w_U_n_10),
        .\y_1_data_reg_reg[2]_6 (regslice_both_w_U_n_5));
  FDRE #(
    .INIT(1'b0)) 
    \y_1_data_reg_reg[0] 
       (.C(ap_clk),
        .CE(y_1_data_reg00_out),
        .D(dout[0]),
        .Q(\y_1_data_reg_reg_n_0_[0] ),
        .R(y_1_data_reg));
  FDRE #(
    .INIT(1'b0)) 
    \y_1_data_reg_reg[1] 
       (.C(ap_clk),
        .CE(y_1_data_reg00_out),
        .D(dout[1]),
        .Q(\y_1_data_reg_reg_n_0_[1] ),
        .R(y_1_data_reg));
  FDRE #(
    .INIT(1'b0)) 
    \y_1_data_reg_reg[2] 
       (.C(ap_clk),
        .CE(y_1_data_reg00_out),
        .D(dout[2]),
        .Q(\y_1_data_reg_reg_n_0_[2] ),
        .R(y_1_data_reg));
  FDRE #(
    .INIT(1'b0)) 
    \y_1_data_reg_reg[3] 
       (.C(ap_clk),
        .CE(y_1_data_reg00_out),
        .D(dout[3]),
        .Q(\y_1_data_reg_reg_n_0_[3] ),
        .R(y_1_data_reg));
  FDRE #(
    .INIT(1'b0)) 
    \y_1_data_reg_reg[4] 
       (.C(ap_clk),
        .CE(y_1_data_reg00_out),
        .D(dout[4]),
        .Q(\y_1_data_reg_reg_n_0_[4] ),
        .R(y_1_data_reg));
  FDRE #(
    .INIT(1'b0)) 
    \y_1_data_reg_reg[5] 
       (.C(ap_clk),
        .CE(y_1_data_reg00_out),
        .D(dout[5]),
        .Q(\y_1_data_reg_reg_n_0_[5] ),
        .R(y_1_data_reg));
  FDRE #(
    .INIT(1'b0)) 
    \y_1_data_reg_reg[6] 
       (.C(ap_clk),
        .CE(y_1_data_reg00_out),
        .D(dout[6]),
        .Q(\y_1_data_reg_reg_n_0_[6] ),
        .R(y_1_data_reg));
  FDRE #(
    .INIT(1'b0)) 
    \y_1_data_reg_reg[7] 
       (.C(ap_clk),
        .CE(y_1_data_reg00_out),
        .D(dout[7]),
        .Q(\y_1_data_reg_reg_n_0_[7] ),
        .R(y_1_data_reg));
  FDRE #(
    .INIT(1'b0)) 
    y_1_vld_reg_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(y_1_data_reg00_out),
        .Q(y_1_vld_reg),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "vector_add_control_s_axi" *) 
module design_1_vector_add_0_3_vector_add_control_s_axi
   (SR,
    \FSM_onehot_rstate_reg[1]_0 ,
    s_axi_control_RVALID,
    s_axi_control_RDATA,
    s_axi_control_BVALID,
    \FSM_onehot_wstate_reg[2]_0 ,
    s_axi_control_AWREADY,
    ap_clk,
    s_axi_control_ARVALID,
    s_axi_control_RREADY,
    s_axi_control_ARADDR,
    ap_rst_n,
    E,
    Q,
    s_axi_control_BREADY,
    s_axi_control_AWVALID,
    s_axi_control_WVALID);
  output [0:0]SR;
  output \FSM_onehot_rstate_reg[1]_0 ;
  output s_axi_control_RVALID;
  output [7:0]s_axi_control_RDATA;
  output s_axi_control_BVALID;
  output \FSM_onehot_wstate_reg[2]_0 ;
  output s_axi_control_AWREADY;
  input ap_clk;
  input s_axi_control_ARVALID;
  input s_axi_control_RREADY;
  input [4:0]s_axi_control_ARADDR;
  input ap_rst_n;
  input [0:0]E;
  input [7:0]Q;
  input s_axi_control_BREADY;
  input s_axi_control_AWVALID;
  input s_axi_control_WVALID;

  wire [0:0]E;
  wire \FSM_onehot_rstate[1]_i_1_n_0 ;
  wire \FSM_onehot_rstate[2]_i_1_n_0 ;
  wire \FSM_onehot_rstate_reg[1]_0 ;
  wire \FSM_onehot_wstate[1]_i_1_n_0 ;
  wire \FSM_onehot_wstate[2]_i_1_n_0 ;
  wire \FSM_onehot_wstate[3]_i_1_n_0 ;
  wire \FSM_onehot_wstate_reg[2]_0 ;
  wire [7:0]Q;
  wire [0:0]SR;
  wire ap_clk;
  wire ap_rst_n;
  wire ar_hs;
  wire [7:0]int_y;
  wire int_y_ap_vld;
  wire int_y_ap_vld_i_1_n_0;
  wire \rdata[0]_i_1_n_0 ;
  wire \rdata[0]_i_2_n_0 ;
  wire \rdata[7]_i_1_n_0 ;
  wire [4:0]s_axi_control_ARADDR;
  wire s_axi_control_ARVALID;
  wire s_axi_control_AWREADY;
  wire s_axi_control_AWVALID;
  wire s_axi_control_BREADY;
  wire s_axi_control_BVALID;
  wire [7:0]s_axi_control_RDATA;
  wire s_axi_control_RREADY;
  wire s_axi_control_RVALID;
  wire s_axi_control_WVALID;

  LUT1 #(
    .INIT(2'h1)) 
    \B_V_data_1_state[1]_i_1 
       (.I0(ap_rst_n),
        .O(SR));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h8FDD)) 
    \FSM_onehot_rstate[1]_i_1 
       (.I0(s_axi_control_RVALID),
        .I1(s_axi_control_RREADY),
        .I2(s_axi_control_ARVALID),
        .I3(\FSM_onehot_rstate_reg[1]_0 ),
        .O(\FSM_onehot_rstate[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h8F88)) 
    \FSM_onehot_rstate[2]_i_1 
       (.I0(\FSM_onehot_rstate_reg[1]_0 ),
        .I1(s_axi_control_ARVALID),
        .I2(s_axi_control_RREADY),
        .I3(s_axi_control_RVALID),
        .O(\FSM_onehot_rstate[2]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "RDIDLE:010,RDDATA:100,iSTATE:001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_rstate_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\FSM_onehot_rstate[1]_i_1_n_0 ),
        .Q(\FSM_onehot_rstate_reg[1]_0 ),
        .R(SR));
  (* FSM_ENCODED_STATES = "RDIDLE:010,RDDATA:100,iSTATE:001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_rstate_reg[2] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\FSM_onehot_rstate[2]_i_1_n_0 ),
        .Q(s_axi_control_RVALID),
        .R(SR));
  LUT5 #(
    .INIT(32'h888BFF8B)) 
    \FSM_onehot_wstate[1]_i_1 
       (.I0(s_axi_control_BREADY),
        .I1(s_axi_control_BVALID),
        .I2(\FSM_onehot_wstate_reg[2]_0 ),
        .I3(s_axi_control_AWREADY),
        .I4(s_axi_control_AWVALID),
        .O(\FSM_onehot_wstate[1]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h8F88)) 
    \FSM_onehot_wstate[2]_i_1 
       (.I0(s_axi_control_AWVALID),
        .I1(s_axi_control_AWREADY),
        .I2(s_axi_control_WVALID),
        .I3(\FSM_onehot_wstate_reg[2]_0 ),
        .O(\FSM_onehot_wstate[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h8F88)) 
    \FSM_onehot_wstate[3]_i_1 
       (.I0(s_axi_control_WVALID),
        .I1(\FSM_onehot_wstate_reg[2]_0 ),
        .I2(s_axi_control_BREADY),
        .I3(s_axi_control_BVALID),
        .O(\FSM_onehot_wstate[3]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "WRDATA:0100,WRRESP:1000,WRIDLE:0010,iSTATE:0001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_wstate_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\FSM_onehot_wstate[1]_i_1_n_0 ),
        .Q(s_axi_control_AWREADY),
        .R(SR));
  (* FSM_ENCODED_STATES = "WRDATA:0100,WRRESP:1000,WRIDLE:0010,iSTATE:0001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_wstate_reg[2] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\FSM_onehot_wstate[2]_i_1_n_0 ),
        .Q(\FSM_onehot_wstate_reg[2]_0 ),
        .R(SR));
  (* FSM_ENCODED_STATES = "WRDATA:0100,WRRESP:1000,WRIDLE:0010,iSTATE:0001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_wstate_reg[3] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\FSM_onehot_wstate[3]_i_1_n_0 ),
        .Q(s_axi_control_BVALID),
        .R(SR));
  LUT6 #(
    .INIT(64'hFFFF7FFFFFFF0000)) 
    int_y_ap_vld_i_1
       (.I0(\rdata[0]_i_2_n_0 ),
        .I1(\FSM_onehot_rstate_reg[1]_0 ),
        .I2(s_axi_control_ARVALID),
        .I3(s_axi_control_ARADDR[2]),
        .I4(E),
        .I5(int_y_ap_vld),
        .O(int_y_ap_vld_i_1_n_0));
  FDRE int_y_ap_vld_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(int_y_ap_vld_i_1_n_0),
        .Q(int_y_ap_vld),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_y_reg[0] 
       (.C(ap_clk),
        .CE(E),
        .D(Q[0]),
        .Q(int_y[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_y_reg[1] 
       (.C(ap_clk),
        .CE(E),
        .D(Q[1]),
        .Q(int_y[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_y_reg[2] 
       (.C(ap_clk),
        .CE(E),
        .D(Q[2]),
        .Q(int_y[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_y_reg[3] 
       (.C(ap_clk),
        .CE(E),
        .D(Q[3]),
        .Q(int_y[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_y_reg[4] 
       (.C(ap_clk),
        .CE(E),
        .D(Q[4]),
        .Q(int_y[4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_y_reg[5] 
       (.C(ap_clk),
        .CE(E),
        .D(Q[5]),
        .Q(int_y[5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_y_reg[6] 
       (.C(ap_clk),
        .CE(E),
        .D(Q[6]),
        .Q(int_y[6]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_y_reg[7] 
       (.C(ap_clk),
        .CE(E),
        .D(Q[7]),
        .Q(int_y[7]),
        .R(SR));
  LUT6 #(
    .INIT(64'hA0C0FFFFA0C00000)) 
    \rdata[0]_i_1 
       (.I0(int_y_ap_vld),
        .I1(int_y[0]),
        .I2(\rdata[0]_i_2_n_0 ),
        .I3(s_axi_control_ARADDR[2]),
        .I4(ar_hs),
        .I5(s_axi_control_RDATA[0]),
        .O(\rdata[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0004)) 
    \rdata[0]_i_2 
       (.I0(s_axi_control_ARADDR[3]),
        .I1(s_axi_control_ARADDR[4]),
        .I2(s_axi_control_ARADDR[1]),
        .I3(s_axi_control_ARADDR[0]),
        .O(\rdata[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAA8AA)) 
    \rdata[7]_i_1 
       (.I0(ar_hs),
        .I1(s_axi_control_ARADDR[2]),
        .I2(s_axi_control_ARADDR[3]),
        .I3(s_axi_control_ARADDR[4]),
        .I4(s_axi_control_ARADDR[1]),
        .I5(s_axi_control_ARADDR[0]),
        .O(\rdata[7]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \rdata[7]_i_2 
       (.I0(s_axi_control_ARVALID),
        .I1(\FSM_onehot_rstate_reg[1]_0 ),
        .O(ar_hs));
  FDRE \rdata_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\rdata[0]_i_1_n_0 ),
        .Q(s_axi_control_RDATA[0]),
        .R(1'b0));
  FDRE \rdata_reg[1] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(int_y[1]),
        .Q(s_axi_control_RDATA[1]),
        .R(\rdata[7]_i_1_n_0 ));
  FDRE \rdata_reg[2] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(int_y[2]),
        .Q(s_axi_control_RDATA[2]),
        .R(\rdata[7]_i_1_n_0 ));
  FDRE \rdata_reg[3] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(int_y[3]),
        .Q(s_axi_control_RDATA[3]),
        .R(\rdata[7]_i_1_n_0 ));
  FDRE \rdata_reg[4] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(int_y[4]),
        .Q(s_axi_control_RDATA[4]),
        .R(\rdata[7]_i_1_n_0 ));
  FDRE \rdata_reg[5] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(int_y[5]),
        .Q(s_axi_control_RDATA[5]),
        .R(\rdata[7]_i_1_n_0 ));
  FDRE \rdata_reg[6] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(int_y[6]),
        .Q(s_axi_control_RDATA[6]),
        .R(\rdata[7]_i_1_n_0 ));
  FDRE \rdata_reg[7] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(int_y[7]),
        .Q(s_axi_control_RDATA[7]),
        .R(\rdata[7]_i_1_n_0 ));
endmodule

(* ORIG_REF_NAME = "vector_add_mul_8s_8s_8_1_1" *) 
module design_1_vector_add_0_3_vector_add_mul_8s_8s_8_1_1
   (O,
    \B_V_data_1_payload_B_reg[5] ,
    D,
    DI,
    S,
    \y_1_data_reg_reg[3] ,
    \y_1_data_reg_reg[3]_0 ,
    \y_1_data_reg_reg[7] ,
    \y_1_data_reg_reg[7]_0 );
  output [4:0]O;
  output [1:0]\B_V_data_1_payload_B_reg[5] ;
  output [4:0]D;
  input [5:0]DI;
  input [7:0]S;
  input [2:0]\y_1_data_reg_reg[3] ;
  input [4:0]\y_1_data_reg_reg[3]_0 ;
  input [0:0]\y_1_data_reg_reg[7] ;
  input \y_1_data_reg_reg[7]_0 ;

  wire [1:0]\B_V_data_1_payload_B_reg[5] ;
  wire [4:0]D;
  wire [5:0]DI;
  wire [4:0]O;
  wire [7:0]S;
  wire dout__0_carry_n_1;
  wire dout__0_carry_n_10;
  wire dout__0_carry_n_11;
  wire dout__0_carry_n_12;
  wire dout__0_carry_n_2;
  wire dout__0_carry_n_3;
  wire dout__0_carry_n_4;
  wire dout__0_carry_n_5;
  wire dout__0_carry_n_6;
  wire dout__0_carry_n_7;
  wire dout__22_carry_n_13;
  wire dout__22_carry_n_14;
  wire dout__22_carry_n_15;
  wire dout__22_carry_n_4;
  wire dout__22_carry_n_5;
  wire dout__22_carry_n_6;
  wire dout__22_carry_n_7;
  wire dout__34_carry_i_1_n_0;
  wire dout__34_carry_i_2_n_0;
  wire dout__34_carry_i_3_n_0;
  wire dout__34_carry_i_5_n_0;
  wire dout__34_carry_i_6_n_0;
  wire dout__34_carry_i_7_n_0;
  wire dout__34_carry_n_5;
  wire dout__34_carry_n_6;
  wire dout__34_carry_n_7;
  wire [2:0]\y_1_data_reg_reg[3] ;
  wire [4:0]\y_1_data_reg_reg[3]_0 ;
  wire [0:0]\y_1_data_reg_reg[7] ;
  wire \y_1_data_reg_reg[7]_0 ;
  wire [7:7]NLW_dout__0_carry_CO_UNCONNECTED;
  wire [7:4]NLW_dout__22_carry_CO_UNCONNECTED;
  wire [7:5]NLW_dout__22_carry_O_UNCONNECTED;
  wire [7:3]NLW_dout__34_carry_CO_UNCONNECTED;
  wire [7:4]NLW_dout__34_carry_O_UNCONNECTED;

  CARRY8 dout__0_carry
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({NLW_dout__0_carry_CO_UNCONNECTED[7],dout__0_carry_n_1,dout__0_carry_n_2,dout__0_carry_n_3,dout__0_carry_n_4,dout__0_carry_n_5,dout__0_carry_n_6,dout__0_carry_n_7}),
        .DI({1'b0,DI,1'b0}),
        .O({O[4:3],dout__0_carry_n_10,dout__0_carry_n_11,dout__0_carry_n_12,O[2:0]}),
        .S(S));
  CARRY8 dout__22_carry
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({NLW_dout__22_carry_CO_UNCONNECTED[7:4],dout__22_carry_n_4,dout__22_carry_n_5,dout__22_carry_n_6,dout__22_carry_n_7}),
        .DI({1'b0,1'b0,1'b0,1'b0,\y_1_data_reg_reg[3] ,1'b0}),
        .O({NLW_dout__22_carry_O_UNCONNECTED[7:5],\B_V_data_1_payload_B_reg[5] ,dout__22_carry_n_13,dout__22_carry_n_14,dout__22_carry_n_15}),
        .S({1'b0,1'b0,1'b0,\y_1_data_reg_reg[3]_0 }));
  CARRY8 dout__34_carry
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({NLW_dout__34_carry_CO_UNCONNECTED[7:3],dout__34_carry_n_5,dout__34_carry_n_6,dout__34_carry_n_7}),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,dout__34_carry_i_1_n_0,dout__34_carry_i_2_n_0,dout__34_carry_i_3_n_0}),
        .O({NLW_dout__34_carry_O_UNCONNECTED[7:4],D[4:1]}),
        .S({1'b0,1'b0,1'b0,1'b0,\y_1_data_reg_reg[7] ,dout__34_carry_i_5_n_0,dout__34_carry_i_6_n_0,dout__34_carry_i_7_n_0}));
  LUT2 #(
    .INIT(4'h8)) 
    dout__34_carry_i_1
       (.I0(dout__22_carry_n_13),
        .I1(dout__0_carry_n_10),
        .O(dout__34_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    dout__34_carry_i_2
       (.I0(dout__22_carry_n_14),
        .I1(dout__0_carry_n_11),
        .O(dout__34_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    dout__34_carry_i_3
       (.I0(dout__22_carry_n_15),
        .I1(dout__0_carry_n_12),
        .O(dout__34_carry_i_3_n_0));
  LUT5 #(
    .INIT(32'h87787887)) 
    dout__34_carry_i_5
       (.I0(dout__0_carry_n_10),
        .I1(dout__22_carry_n_13),
        .I2(O[3]),
        .I3(\B_V_data_1_payload_B_reg[5] [0]),
        .I4(\y_1_data_reg_reg[7]_0 ),
        .O(dout__34_carry_i_5_n_0));
  LUT4 #(
    .INIT(16'h8778)) 
    dout__34_carry_i_6
       (.I0(dout__0_carry_n_11),
        .I1(dout__22_carry_n_14),
        .I2(dout__0_carry_n_10),
        .I3(dout__22_carry_n_13),
        .O(dout__34_carry_i_6_n_0));
  LUT4 #(
    .INIT(16'h8778)) 
    dout__34_carry_i_7
       (.I0(dout__0_carry_n_12),
        .I1(dout__22_carry_n_15),
        .I2(dout__0_carry_n_11),
        .I3(dout__22_carry_n_14),
        .O(dout__34_carry_i_7_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    \y_1_data_reg[3]_i_1 
       (.I0(dout__22_carry_n_15),
        .I1(dout__0_carry_n_12),
        .O(D[0]));
endmodule

(* ORIG_REF_NAME = "vector_add_regslice_both" *) 
module design_1_vector_add_0_3_vector_add_regslice_both
   (\B_V_data_1_state_reg[1]_0 ,
    B_V_data_1_sel_rd_reg_0,
    tmp_1_nbreadreq_fu_52_p3,
    \B_V_data_1_state_reg[0]_0 ,
    \B_V_data_1_payload_B_reg[1]_0 ,
    \B_V_data_1_payload_B_reg[7]_0 ,
    DI,
    \B_V_data_1_payload_B_reg[3]_0 ,
    \B_V_data_1_payload_B_reg[4]_0 ,
    \B_V_data_1_payload_B_reg[5]_0 ,
    \B_V_data_1_payload_B_reg[2]_0 ,
    \B_V_data_1_payload_A_reg[0]_0 ,
    \B_V_data_1_payload_A_reg[6]_0 ,
    \B_V_data_1_payload_B_reg[6]_0 ,
    \B_V_data_1_payload_B_reg[2]_1 ,
    \B_V_data_1_payload_A_reg[0]_1 ,
    S,
    \B_V_data_1_payload_B_reg[0]_0 ,
    SR,
    ap_clk,
    Q,
    tmp_nbreadreq_fu_44_p3,
    w_TVALID,
    ap_rst_n,
    \y_1_data_reg_reg[2] ,
    dout__0_carry_i_7,
    dout__0_carry_i_7_0,
    \y_1_data_reg_reg[2]_0 ,
    \y_1_data_reg_reg[2]_1 ,
    dout__34_carry_i_5,
    B_V_data_1_sel,
    dout__34_carry_i_5_0,
    \y_1_data_reg_reg[2]_2 ,
    \y_1_data_reg_reg[2]_3 ,
    \y_1_data_reg_reg[2]_4 ,
    \y_1_data_reg_reg[2]_5 ,
    dout__22_carry,
    dout__22_carry_0,
    w_TDATA);
  output \B_V_data_1_state_reg[1]_0 ;
  output B_V_data_1_sel_rd_reg_0;
  output tmp_1_nbreadreq_fu_52_p3;
  output [0:0]\B_V_data_1_state_reg[0]_0 ;
  output \B_V_data_1_payload_B_reg[1]_0 ;
  output \B_V_data_1_payload_B_reg[7]_0 ;
  output [2:0]DI;
  output \B_V_data_1_payload_B_reg[3]_0 ;
  output \B_V_data_1_payload_B_reg[4]_0 ;
  output \B_V_data_1_payload_B_reg[5]_0 ;
  output \B_V_data_1_payload_B_reg[2]_0 ;
  output \B_V_data_1_payload_A_reg[0]_0 ;
  output [4:0]\B_V_data_1_payload_A_reg[6]_0 ;
  output [4:0]\B_V_data_1_payload_B_reg[6]_0 ;
  output [1:0]\B_V_data_1_payload_B_reg[2]_1 ;
  output [0:0]\B_V_data_1_payload_A_reg[0]_1 ;
  output [5:0]S;
  output \B_V_data_1_payload_B_reg[0]_0 ;
  input [0:0]SR;
  input ap_clk;
  input [0:0]Q;
  input tmp_nbreadreq_fu_44_p3;
  input w_TVALID;
  input ap_rst_n;
  input \y_1_data_reg_reg[2] ;
  input dout__0_carry_i_7;
  input dout__0_carry_i_7_0;
  input \y_1_data_reg_reg[2]_0 ;
  input \y_1_data_reg_reg[2]_1 ;
  input [3:0]dout__34_carry_i_5;
  input B_V_data_1_sel;
  input [3:0]dout__34_carry_i_5_0;
  input [0:0]\y_1_data_reg_reg[2]_2 ;
  input \y_1_data_reg_reg[2]_3 ;
  input \y_1_data_reg_reg[2]_4 ;
  input \y_1_data_reg_reg[2]_5 ;
  input dout__22_carry;
  input dout__22_carry_0;
  input [7:0]w_TDATA;

  wire B_V_data_1_load_A;
  wire B_V_data_1_load_B;
  wire \B_V_data_1_payload_A_reg[0]_0 ;
  wire [0:0]\B_V_data_1_payload_A_reg[0]_1 ;
  wire [4:0]\B_V_data_1_payload_A_reg[6]_0 ;
  wire \B_V_data_1_payload_A_reg_n_0_[1] ;
  wire \B_V_data_1_payload_A_reg_n_0_[4] ;
  wire \B_V_data_1_payload_A_reg_n_0_[7] ;
  wire \B_V_data_1_payload_B_reg[0]_0 ;
  wire \B_V_data_1_payload_B_reg[1]_0 ;
  wire \B_V_data_1_payload_B_reg[2]_0 ;
  wire [1:0]\B_V_data_1_payload_B_reg[2]_1 ;
  wire \B_V_data_1_payload_B_reg[3]_0 ;
  wire \B_V_data_1_payload_B_reg[4]_0 ;
  wire \B_V_data_1_payload_B_reg[5]_0 ;
  wire [4:0]\B_V_data_1_payload_B_reg[6]_0 ;
  wire \B_V_data_1_payload_B_reg[7]_0 ;
  wire \B_V_data_1_payload_B_reg_n_0_[1] ;
  wire \B_V_data_1_payload_B_reg_n_0_[4] ;
  wire \B_V_data_1_payload_B_reg_n_0_[7] ;
  wire B_V_data_1_sel;
  wire B_V_data_1_sel_rd_i_1__0_n_0;
  wire B_V_data_1_sel_rd_reg_0;
  wire B_V_data_1_sel_wr;
  wire B_V_data_1_sel_wr_i_1__0_n_0;
  wire [1:1]B_V_data_1_state;
  wire \B_V_data_1_state[0]_i_1_n_0 ;
  wire [0:0]\B_V_data_1_state_reg[0]_0 ;
  wire \B_V_data_1_state_reg[1]_0 ;
  wire [2:0]DI;
  wire [0:0]Q;
  wire [5:0]S;
  wire [0:0]SR;
  wire ap_clk;
  wire ap_rst_n;
  wire dout__0_carry_i_7;
  wire dout__0_carry_i_7_0;
  wire dout__22_carry;
  wire dout__22_carry_0;
  wire dout__22_carry_i_14_n_0;
  wire [3:0]dout__34_carry_i_5;
  wire [3:0]dout__34_carry_i_5_0;
  wire tmp_1_nbreadreq_fu_52_p3;
  wire tmp_nbreadreq_fu_44_p3;
  wire [7:0]w_TDATA;
  wire w_TVALID;
  wire \y_1_data_reg_reg[2] ;
  wire \y_1_data_reg_reg[2]_0 ;
  wire \y_1_data_reg_reg[2]_1 ;
  wire [0:0]\y_1_data_reg_reg[2]_2 ;
  wire \y_1_data_reg_reg[2]_3 ;
  wire \y_1_data_reg_reg[2]_4 ;
  wire \y_1_data_reg_reg[2]_5 ;

  LUT3 #(
    .INIT(8'h0D)) 
    \B_V_data_1_payload_A[7]_i_1__0 
       (.I0(tmp_1_nbreadreq_fu_52_p3),
        .I1(\B_V_data_1_state_reg[1]_0 ),
        .I2(B_V_data_1_sel_wr),
        .O(B_V_data_1_load_A));
  FDRE \B_V_data_1_payload_A_reg[0] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(w_TDATA[0]),
        .Q(\B_V_data_1_payload_A_reg[6]_0 [0]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[1] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(w_TDATA[1]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[2] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(w_TDATA[2]),
        .Q(\B_V_data_1_payload_A_reg[6]_0 [1]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[3] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(w_TDATA[3]),
        .Q(\B_V_data_1_payload_A_reg[6]_0 [2]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[4] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(w_TDATA[4]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[4] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[5] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(w_TDATA[5]),
        .Q(\B_V_data_1_payload_A_reg[6]_0 [3]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[6] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(w_TDATA[6]),
        .Q(\B_V_data_1_payload_A_reg[6]_0 [4]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[7] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(w_TDATA[7]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[7] ),
        .R(1'b0));
  LUT3 #(
    .INIT(8'hD0)) 
    \B_V_data_1_payload_B[7]_i_1__0 
       (.I0(tmp_1_nbreadreq_fu_52_p3),
        .I1(\B_V_data_1_state_reg[1]_0 ),
        .I2(B_V_data_1_sel_wr),
        .O(B_V_data_1_load_B));
  FDRE \B_V_data_1_payload_B_reg[0] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(w_TDATA[0]),
        .Q(\B_V_data_1_payload_B_reg[6]_0 [0]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[1] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(w_TDATA[1]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[2] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(w_TDATA[2]),
        .Q(\B_V_data_1_payload_B_reg[6]_0 [1]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[3] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(w_TDATA[3]),
        .Q(\B_V_data_1_payload_B_reg[6]_0 [2]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[4] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(w_TDATA[4]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[4] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[5] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(w_TDATA[5]),
        .Q(\B_V_data_1_payload_B_reg[6]_0 [3]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[6] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(w_TDATA[6]),
        .Q(\B_V_data_1_payload_B_reg[6]_0 [4]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[7] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(w_TDATA[7]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[7] ),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h7F80)) 
    B_V_data_1_sel_rd_i_1__0
       (.I0(Q),
        .I1(tmp_nbreadreq_fu_44_p3),
        .I2(tmp_1_nbreadreq_fu_52_p3),
        .I3(B_V_data_1_sel_rd_reg_0),
        .O(B_V_data_1_sel_rd_i_1__0_n_0));
  FDRE B_V_data_1_sel_rd_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(B_V_data_1_sel_rd_i_1__0_n_0),
        .Q(B_V_data_1_sel_rd_reg_0),
        .R(SR));
  LUT3 #(
    .INIT(8'h78)) 
    B_V_data_1_sel_wr_i_1__0
       (.I0(w_TVALID),
        .I1(\B_V_data_1_state_reg[1]_0 ),
        .I2(B_V_data_1_sel_wr),
        .O(B_V_data_1_sel_wr_i_1__0_n_0));
  FDRE B_V_data_1_sel_wr_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(B_V_data_1_sel_wr_i_1__0_n_0),
        .Q(B_V_data_1_sel_wr),
        .R(SR));
  LUT6 #(
    .INIT(64'hFF002A00AA00AA00)) 
    \B_V_data_1_state[0]_i_1 
       (.I0(tmp_1_nbreadreq_fu_52_p3),
        .I1(tmp_nbreadreq_fu_44_p3),
        .I2(Q),
        .I3(ap_rst_n),
        .I4(w_TVALID),
        .I5(\B_V_data_1_state_reg[1]_0 ),
        .O(\B_V_data_1_state[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h8FFF8F8F)) 
    \B_V_data_1_state[1]_i_1__0 
       (.I0(Q),
        .I1(tmp_nbreadreq_fu_44_p3),
        .I2(tmp_1_nbreadreq_fu_52_p3),
        .I3(w_TVALID),
        .I4(\B_V_data_1_state_reg[1]_0 ),
        .O(B_V_data_1_state));
  FDRE \B_V_data_1_state_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\B_V_data_1_state[0]_i_1_n_0 ),
        .Q(tmp_1_nbreadreq_fu_52_p3),
        .R(1'b0));
  FDRE \B_V_data_1_state_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(B_V_data_1_state),
        .Q(\B_V_data_1_state_reg[1]_0 ),
        .R(SR));
  LUT6 #(
    .INIT(64'hF888800080008000)) 
    dout__0_carry_i_1
       (.I0(\B_V_data_1_payload_B_reg[3]_0 ),
        .I1(\y_1_data_reg_reg[2]_0 ),
        .I2(\B_V_data_1_payload_B_reg[4]_0 ),
        .I3(\y_1_data_reg_reg[2]_1 ),
        .I4(\y_1_data_reg_reg[2] ),
        .I5(\B_V_data_1_payload_B_reg[5]_0 ),
        .O(DI[2]));
  LUT6 #(
    .INIT(64'h66663CCC96663CCC)) 
    dout__0_carry_i_11
       (.I0(\B_V_data_1_payload_B_reg[2]_0 ),
        .I1(\y_1_data_reg_reg[2]_3 ),
        .I2(\B_V_data_1_payload_B_reg[1]_0 ),
        .I3(\y_1_data_reg_reg[2]_0 ),
        .I4(\y_1_data_reg_reg[2]_1 ),
        .I5(\B_V_data_1_payload_B_reg[0]_0 ),
        .O(S[3]));
  LUT5 #(
    .INIT(32'h656AAAAA)) 
    dout__0_carry_i_12
       (.I0(\y_1_data_reg_reg[2]_2 ),
        .I1(\B_V_data_1_payload_B_reg[6]_0 [1]),
        .I2(B_V_data_1_sel_rd_reg_0),
        .I3(\B_V_data_1_payload_A_reg[6]_0 [1]),
        .I4(\y_1_data_reg_reg[2] ),
        .O(S[2]));
  LUT6 #(
    .INIT(64'h757F8A808A808A80)) 
    dout__0_carry_i_13
       (.I0(\y_1_data_reg_reg[2] ),
        .I1(\B_V_data_1_payload_B_reg_n_0_[1] ),
        .I2(B_V_data_1_sel_rd_reg_0),
        .I3(\B_V_data_1_payload_A_reg_n_0_[1] ),
        .I4(\B_V_data_1_payload_B_reg[0]_0 ),
        .I5(\y_1_data_reg_reg[2]_1 ),
        .O(S[1]));
  LUT6 #(
    .INIT(64'hE2E2E2000000E200)) 
    dout__0_carry_i_14
       (.I0(\B_V_data_1_payload_A_reg[6]_0 [0]),
        .I1(B_V_data_1_sel_rd_reg_0),
        .I2(\B_V_data_1_payload_B_reg[6]_0 [0]),
        .I3(dout__34_carry_i_5[0]),
        .I4(B_V_data_1_sel),
        .I5(dout__34_carry_i_5_0[0]),
        .O(S[0]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    dout__0_carry_i_15
       (.I0(\B_V_data_1_payload_B_reg[6]_0 [2]),
        .I1(B_V_data_1_sel_rd_reg_0),
        .I2(\B_V_data_1_payload_A_reg[6]_0 [2]),
        .O(\B_V_data_1_payload_B_reg[3]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    dout__0_carry_i_17
       (.I0(\B_V_data_1_payload_B_reg_n_0_[4] ),
        .I1(B_V_data_1_sel_rd_reg_0),
        .I2(\B_V_data_1_payload_A_reg_n_0_[4] ),
        .O(\B_V_data_1_payload_B_reg[4]_0 ));
  LUT6 #(
    .INIT(64'hF888800080008000)) 
    dout__0_carry_i_2
       (.I0(\B_V_data_1_payload_B_reg[2]_0 ),
        .I1(\y_1_data_reg_reg[2]_0 ),
        .I2(\B_V_data_1_payload_B_reg[3]_0 ),
        .I3(\y_1_data_reg_reg[2]_1 ),
        .I4(\y_1_data_reg_reg[2] ),
        .I5(\B_V_data_1_payload_B_reg[4]_0 ),
        .O(DI[1]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    dout__0_carry_i_20
       (.I0(\B_V_data_1_payload_B_reg[6]_0 [3]),
        .I1(B_V_data_1_sel_rd_reg_0),
        .I2(\B_V_data_1_payload_A_reg[6]_0 [3]),
        .O(\B_V_data_1_payload_B_reg[5]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    dout__0_carry_i_21
       (.I0(\B_V_data_1_payload_B_reg[6]_0 [1]),
        .I1(B_V_data_1_sel_rd_reg_0),
        .I2(\B_V_data_1_payload_A_reg[6]_0 [1]),
        .O(\B_V_data_1_payload_B_reg[2]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    dout__0_carry_i_22
       (.I0(\B_V_data_1_payload_B_reg_n_0_[1] ),
        .I1(B_V_data_1_sel_rd_reg_0),
        .I2(\B_V_data_1_payload_A_reg_n_0_[1] ),
        .O(\B_V_data_1_payload_B_reg[1]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    dout__0_carry_i_23
       (.I0(\B_V_data_1_payload_B_reg[6]_0 [0]),
        .I1(B_V_data_1_sel_rd_reg_0),
        .I2(\B_V_data_1_payload_A_reg[6]_0 [0]),
        .O(\B_V_data_1_payload_B_reg[0]_0 ));
  LUT6 #(
    .INIT(64'hB80047FF47FFB800)) 
    dout__0_carry_i_25
       (.I0(\B_V_data_1_payload_B_reg_n_0_[7] ),
        .I1(B_V_data_1_sel_rd_reg_0),
        .I2(\B_V_data_1_payload_A_reg_n_0_[7] ),
        .I3(\y_1_data_reg_reg[2] ),
        .I4(dout__0_carry_i_7),
        .I5(dout__0_carry_i_7_0),
        .O(\B_V_data_1_payload_B_reg[7]_0 ));
  LUT6 #(
    .INIT(64'h8777788878887888)) 
    dout__0_carry_i_4
       (.I0(\B_V_data_1_payload_B_reg[3]_0 ),
        .I1(\y_1_data_reg_reg[2] ),
        .I2(\y_1_data_reg_reg[2]_0 ),
        .I3(\B_V_data_1_payload_B_reg[1]_0 ),
        .I4(\B_V_data_1_payload_B_reg[2]_0 ),
        .I5(\y_1_data_reg_reg[2]_1 ),
        .O(DI[0]));
  LUT6 #(
    .INIT(64'h6A959595956A6A6A)) 
    dout__0_carry_i_8
       (.I0(DI[2]),
        .I1(\y_1_data_reg_reg[2]_1 ),
        .I2(\B_V_data_1_payload_B_reg[5]_0 ),
        .I3(\y_1_data_reg_reg[2]_0 ),
        .I4(\B_V_data_1_payload_B_reg[4]_0 ),
        .I5(\y_1_data_reg_reg[2]_5 ),
        .O(S[5]));
  LUT6 #(
    .INIT(64'h6A959595956A6A6A)) 
    dout__0_carry_i_9
       (.I0(DI[1]),
        .I1(\y_1_data_reg_reg[2]_1 ),
        .I2(\B_V_data_1_payload_B_reg[4]_0 ),
        .I3(\y_1_data_reg_reg[2]_0 ),
        .I4(\B_V_data_1_payload_B_reg[3]_0 ),
        .I5(\y_1_data_reg_reg[2]_4 ),
        .O(S[4]));
  LUT6 #(
    .INIT(64'hE2E2E2000000E200)) 
    dout__22_carry_i_14
       (.I0(\B_V_data_1_payload_A_reg[6]_0 [2]),
        .I1(B_V_data_1_sel_rd_reg_0),
        .I2(\B_V_data_1_payload_B_reg[6]_0 [2]),
        .I3(dout__34_carry_i_5[1]),
        .I4(B_V_data_1_sel),
        .I5(dout__34_carry_i_5_0[1]),
        .O(dout__22_carry_i_14_n_0));
  LUT6 #(
    .INIT(64'hE2E2E2000000E200)) 
    dout__22_carry_i_3
       (.I0(\B_V_data_1_payload_A_reg[6]_0 [0]),
        .I1(B_V_data_1_sel_rd_reg_0),
        .I2(\B_V_data_1_payload_B_reg[6]_0 [0]),
        .I3(dout__34_carry_i_5[2]),
        .I4(B_V_data_1_sel),
        .I5(dout__34_carry_i_5_0[2]),
        .O(\B_V_data_1_payload_A_reg[0]_1 ));
  LUT6 #(
    .INIT(64'h666696663CCC3CCC)) 
    dout__22_carry_i_5
       (.I0(\B_V_data_1_payload_B_reg[2]_0 ),
        .I1(dout__22_carry_i_14_n_0),
        .I2(\B_V_data_1_payload_B_reg[1]_0 ),
        .I3(dout__22_carry),
        .I4(\B_V_data_1_payload_B_reg[0]_0 ),
        .I5(dout__22_carry_0),
        .O(\B_V_data_1_payload_B_reg[2]_1 [1]));
  LUT6 #(
    .INIT(64'hE2E2E2000000E200)) 
    dout__22_carry_i_8
       (.I0(\B_V_data_1_payload_A_reg[6]_0 [0]),
        .I1(B_V_data_1_sel_rd_reg_0),
        .I2(\B_V_data_1_payload_B_reg[6]_0 [0]),
        .I3(dout__34_carry_i_5[1]),
        .I4(B_V_data_1_sel),
        .I5(dout__34_carry_i_5_0[1]),
        .O(\B_V_data_1_payload_B_reg[2]_1 [0]));
  LUT6 #(
    .INIT(64'h1D1D1DFFFFFF1DFF)) 
    dout__34_carry_i_10
       (.I0(\B_V_data_1_payload_A_reg[6]_0 [0]),
        .I1(B_V_data_1_sel_rd_reg_0),
        .I2(\B_V_data_1_payload_B_reg[6]_0 [0]),
        .I3(dout__34_carry_i_5[3]),
        .I4(B_V_data_1_sel),
        .I5(dout__34_carry_i_5_0[3]),
        .O(\B_V_data_1_payload_A_reg[0]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h70)) 
    \y_1_data_reg[7]_i_1 
       (.I0(tmp_1_nbreadreq_fu_52_p3),
        .I1(tmp_nbreadreq_fu_44_p3),
        .I2(Q),
        .O(\B_V_data_1_state_reg[0]_0 ));
endmodule

(* ORIG_REF_NAME = "vector_add_regslice_both" *) 
module design_1_vector_add_0_3_vector_add_regslice_both_0
   (\B_V_data_1_state_reg[1]_0 ,
    B_V_data_1_sel,
    tmp_nbreadreq_fu_44_p3,
    \B_V_data_1_payload_B_reg[6]_0 ,
    \B_V_data_1_payload_A_reg[6]_0 ,
    \B_V_data_1_payload_B_reg[5]_0 ,
    \B_V_data_1_payload_B_reg[4]_0 ,
    DI,
    \B_V_data_1_payload_B_reg[2]_0 ,
    \B_V_data_1_payload_B_reg[1]_0 ,
    \B_V_data_1_payload_B_reg[0]_0 ,
    \B_V_data_1_payload_A_reg[1]_0 ,
    \B_V_data_1_payload_A_reg[2]_0 ,
    \B_V_data_1_payload_A_reg[0]_0 ,
    \B_V_data_1_payload_A_reg[0]_1 ,
    \B_V_data_1_payload_A_reg[0]_2 ,
    S,
    \B_V_data_1_payload_B_reg[3]_0 ,
    \B_V_data_1_payload_A_reg[5]_0 ,
    \B_V_data_1_payload_A_reg[7]_0 ,
    SR,
    ap_clk,
    x_TVALID,
    Q,
    tmp_1_nbreadreq_fu_52_p3,
    ap_rst_n,
    \y_1_data_reg_reg[2] ,
    O,
    dout__34_carry_i_4_0,
    \y_1_data_reg_reg[2]_0 ,
    \y_1_data_reg_reg[2]_1 ,
    dout__0_carry_i_8,
    \y_1_data_reg_reg[2]_2 ,
    dout__0_carry_i_8_0,
    \y_1_data_reg_reg[2]_3 ,
    \y_1_data_reg_reg[2]_4 ,
    \y_1_data_reg_reg[2]_5 ,
    \y_1_data_reg_reg[2]_6 ,
    x_TDATA);
  output \B_V_data_1_state_reg[1]_0 ;
  output B_V_data_1_sel;
  output tmp_nbreadreq_fu_44_p3;
  output [3:0]\B_V_data_1_payload_B_reg[6]_0 ;
  output [3:0]\B_V_data_1_payload_A_reg[6]_0 ;
  output \B_V_data_1_payload_B_reg[5]_0 ;
  output \B_V_data_1_payload_B_reg[4]_0 ;
  output [2:0]DI;
  output \B_V_data_1_payload_B_reg[2]_0 ;
  output \B_V_data_1_payload_B_reg[1]_0 ;
  output \B_V_data_1_payload_B_reg[0]_0 ;
  output \B_V_data_1_payload_A_reg[1]_0 ;
  output \B_V_data_1_payload_A_reg[2]_0 ;
  output \B_V_data_1_payload_A_reg[0]_0 ;
  output \B_V_data_1_payload_A_reg[0]_1 ;
  output \B_V_data_1_payload_A_reg[0]_2 ;
  output [1:0]S;
  output [1:0]\B_V_data_1_payload_B_reg[3]_0 ;
  output [2:0]\B_V_data_1_payload_A_reg[5]_0 ;
  output [0:0]\B_V_data_1_payload_A_reg[7]_0 ;
  input [0:0]SR;
  input ap_clk;
  input x_TVALID;
  input [0:0]Q;
  input tmp_1_nbreadreq_fu_52_p3;
  input ap_rst_n;
  input \y_1_data_reg_reg[2] ;
  input [1:0]O;
  input [1:0]dout__34_carry_i_4_0;
  input \y_1_data_reg_reg[2]_0 ;
  input \y_1_data_reg_reg[2]_1 ;
  input [4:0]dout__0_carry_i_8;
  input \y_1_data_reg_reg[2]_2 ;
  input [4:0]dout__0_carry_i_8_0;
  input \y_1_data_reg_reg[2]_3 ;
  input \y_1_data_reg_reg[2]_4 ;
  input \y_1_data_reg_reg[2]_5 ;
  input \y_1_data_reg_reg[2]_6 ;
  input [7:0]x_TDATA;

  wire B_V_data_1_load_A;
  wire B_V_data_1_load_B;
  wire [7:1]B_V_data_1_payload_A;
  wire \B_V_data_1_payload_A_reg[0]_0 ;
  wire \B_V_data_1_payload_A_reg[0]_1 ;
  wire \B_V_data_1_payload_A_reg[0]_2 ;
  wire \B_V_data_1_payload_A_reg[1]_0 ;
  wire \B_V_data_1_payload_A_reg[2]_0 ;
  wire [2:0]\B_V_data_1_payload_A_reg[5]_0 ;
  wire [3:0]\B_V_data_1_payload_A_reg[6]_0 ;
  wire [0:0]\B_V_data_1_payload_A_reg[7]_0 ;
  wire [7:1]B_V_data_1_payload_B;
  wire \B_V_data_1_payload_B_reg[0]_0 ;
  wire \B_V_data_1_payload_B_reg[1]_0 ;
  wire \B_V_data_1_payload_B_reg[2]_0 ;
  wire [1:0]\B_V_data_1_payload_B_reg[3]_0 ;
  wire \B_V_data_1_payload_B_reg[4]_0 ;
  wire \B_V_data_1_payload_B_reg[5]_0 ;
  wire [3:0]\B_V_data_1_payload_B_reg[6]_0 ;
  wire B_V_data_1_sel;
  wire B_V_data_1_sel_rd_i_1_n_0;
  wire B_V_data_1_sel_wr;
  wire B_V_data_1_sel_wr_i_1_n_0;
  wire [1:1]B_V_data_1_state;
  wire \B_V_data_1_state[0]_i_1__0_n_0 ;
  wire \B_V_data_1_state_reg[1]_0 ;
  wire [2:0]DI;
  wire [1:0]O;
  wire [0:0]Q;
  wire [1:0]S;
  wire [0:0]SR;
  wire ap_clk;
  wire ap_rst_n;
  wire dout__0_carry_i_27_n_0;
  wire [4:0]dout__0_carry_i_8;
  wire [4:0]dout__0_carry_i_8_0;
  wire dout__22_carry_i_12_n_0;
  wire dout__22_carry_i_13_n_0;
  wire dout__22_carry_i_9_n_0;
  wire [1:0]dout__34_carry_i_4_0;
  wire dout__34_carry_i_8_n_0;
  wire dout__34_carry_i_9_n_0;
  wire tmp_1_nbreadreq_fu_52_p3;
  wire tmp_nbreadreq_fu_44_p3;
  wire [7:0]x_TDATA;
  wire x_TVALID;
  wire \y_1_data_reg_reg[2] ;
  wire \y_1_data_reg_reg[2]_0 ;
  wire \y_1_data_reg_reg[2]_1 ;
  wire \y_1_data_reg_reg[2]_2 ;
  wire \y_1_data_reg_reg[2]_3 ;
  wire \y_1_data_reg_reg[2]_4 ;
  wire \y_1_data_reg_reg[2]_5 ;
  wire \y_1_data_reg_reg[2]_6 ;

  LUT3 #(
    .INIT(8'h0D)) 
    \B_V_data_1_payload_A[7]_i_1 
       (.I0(tmp_nbreadreq_fu_44_p3),
        .I1(\B_V_data_1_state_reg[1]_0 ),
        .I2(B_V_data_1_sel_wr),
        .O(B_V_data_1_load_A));
  FDRE \B_V_data_1_payload_A_reg[0] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(x_TDATA[0]),
        .Q(\B_V_data_1_payload_A_reg[6]_0 [0]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[1] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(x_TDATA[1]),
        .Q(B_V_data_1_payload_A[1]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[2] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(x_TDATA[2]),
        .Q(B_V_data_1_payload_A[2]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[3] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(x_TDATA[3]),
        .Q(\B_V_data_1_payload_A_reg[6]_0 [1]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[4] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(x_TDATA[4]),
        .Q(\B_V_data_1_payload_A_reg[6]_0 [2]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[5] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(x_TDATA[5]),
        .Q(B_V_data_1_payload_A[5]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[6] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(x_TDATA[6]),
        .Q(\B_V_data_1_payload_A_reg[6]_0 [3]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[7] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(x_TDATA[7]),
        .Q(B_V_data_1_payload_A[7]),
        .R(1'b0));
  LUT3 #(
    .INIT(8'hD0)) 
    \B_V_data_1_payload_B[7]_i_1 
       (.I0(tmp_nbreadreq_fu_44_p3),
        .I1(\B_V_data_1_state_reg[1]_0 ),
        .I2(B_V_data_1_sel_wr),
        .O(B_V_data_1_load_B));
  FDRE \B_V_data_1_payload_B_reg[0] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(x_TDATA[0]),
        .Q(\B_V_data_1_payload_B_reg[6]_0 [0]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[1] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(x_TDATA[1]),
        .Q(B_V_data_1_payload_B[1]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[2] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(x_TDATA[2]),
        .Q(B_V_data_1_payload_B[2]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[3] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(x_TDATA[3]),
        .Q(\B_V_data_1_payload_B_reg[6]_0 [1]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[4] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(x_TDATA[4]),
        .Q(\B_V_data_1_payload_B_reg[6]_0 [2]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[5] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(x_TDATA[5]),
        .Q(B_V_data_1_payload_B[5]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[6] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(x_TDATA[6]),
        .Q(\B_V_data_1_payload_B_reg[6]_0 [3]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[7] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(x_TDATA[7]),
        .Q(B_V_data_1_payload_B[7]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h7F80)) 
    B_V_data_1_sel_rd_i_1
       (.I0(Q),
        .I1(tmp_nbreadreq_fu_44_p3),
        .I2(tmp_1_nbreadreq_fu_52_p3),
        .I3(B_V_data_1_sel),
        .O(B_V_data_1_sel_rd_i_1_n_0));
  FDRE B_V_data_1_sel_rd_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(B_V_data_1_sel_rd_i_1_n_0),
        .Q(B_V_data_1_sel),
        .R(SR));
  LUT3 #(
    .INIT(8'h78)) 
    B_V_data_1_sel_wr_i_1
       (.I0(x_TVALID),
        .I1(\B_V_data_1_state_reg[1]_0 ),
        .I2(B_V_data_1_sel_wr),
        .O(B_V_data_1_sel_wr_i_1_n_0));
  FDRE B_V_data_1_sel_wr_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(B_V_data_1_sel_wr_i_1_n_0),
        .Q(B_V_data_1_sel_wr),
        .R(SR));
  LUT6 #(
    .INIT(64'hDFFF000088880000)) 
    \B_V_data_1_state[0]_i_1__0 
       (.I0(\B_V_data_1_state_reg[1]_0 ),
        .I1(x_TVALID),
        .I2(Q),
        .I3(tmp_1_nbreadreq_fu_52_p3),
        .I4(ap_rst_n),
        .I5(tmp_nbreadreq_fu_44_p3),
        .O(\B_V_data_1_state[0]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'hD5FFD5D5)) 
    \B_V_data_1_state[1]_i_2 
       (.I0(tmp_nbreadreq_fu_44_p3),
        .I1(Q),
        .I2(tmp_1_nbreadreq_fu_52_p3),
        .I3(x_TVALID),
        .I4(\B_V_data_1_state_reg[1]_0 ),
        .O(B_V_data_1_state));
  FDRE \B_V_data_1_state_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\B_V_data_1_state[0]_i_1__0_n_0 ),
        .Q(tmp_nbreadreq_fu_44_p3),
        .R(1'b0));
  FDRE \B_V_data_1_state_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(B_V_data_1_state),
        .Q(\B_V_data_1_state_reg[1]_0 ),
        .R(SR));
  LUT6 #(
    .INIT(64'h6A95956A956A956A)) 
    dout__0_carry_i_10
       (.I0(DI[2]),
        .I1(\y_1_data_reg_reg[2]_0 ),
        .I2(\B_V_data_1_payload_B_reg[2]_0 ),
        .I3(dout__0_carry_i_27_n_0),
        .I4(\B_V_data_1_payload_B_reg[0]_0 ),
        .I5(\y_1_data_reg_reg[2]_5 ),
        .O(S[0]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    dout__0_carry_i_16
       (.I0(B_V_data_1_payload_B[2]),
        .I1(B_V_data_1_sel),
        .I2(B_V_data_1_payload_A[2]),
        .O(\B_V_data_1_payload_B_reg[2]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    dout__0_carry_i_18
       (.I0(B_V_data_1_payload_B[1]),
        .I1(B_V_data_1_sel),
        .I2(B_V_data_1_payload_A[1]),
        .O(\B_V_data_1_payload_B_reg[1]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    dout__0_carry_i_19
       (.I0(\B_V_data_1_payload_B_reg[6]_0 [0]),
        .I1(B_V_data_1_sel),
        .I2(\B_V_data_1_payload_A_reg[6]_0 [0]),
        .O(\B_V_data_1_payload_B_reg[0]_0 ));
  LUT6 #(
    .INIT(64'hE2E2E2000000E200)) 
    dout__0_carry_i_24
       (.I0(\B_V_data_1_payload_A_reg[6]_0 [0]),
        .I1(B_V_data_1_sel),
        .I2(\B_V_data_1_payload_B_reg[6]_0 [0]),
        .I3(dout__0_carry_i_8[4]),
        .I4(\y_1_data_reg_reg[2]_2 ),
        .I5(dout__0_carry_i_8_0[4]),
        .O(\B_V_data_1_payload_A_reg[0]_1 ));
  LUT6 #(
    .INIT(64'hE2E2E2000000E200)) 
    dout__0_carry_i_26
       (.I0(\B_V_data_1_payload_A_reg[6]_0 [0]),
        .I1(B_V_data_1_sel),
        .I2(\B_V_data_1_payload_B_reg[6]_0 [0]),
        .I3(dout__0_carry_i_8[3]),
        .I4(\y_1_data_reg_reg[2]_2 ),
        .I5(dout__0_carry_i_8_0[3]),
        .O(\B_V_data_1_payload_A_reg[0]_2 ));
  LUT6 #(
    .INIT(64'hE2E2E2000000E200)) 
    dout__0_carry_i_27
       (.I0(B_V_data_1_payload_A[1]),
        .I1(B_V_data_1_sel),
        .I2(B_V_data_1_payload_B[1]),
        .I3(dout__0_carry_i_8[2]),
        .I4(\y_1_data_reg_reg[2]_2 ),
        .I5(dout__0_carry_i_8_0[2]),
        .O(dout__0_carry_i_27_n_0));
  LUT6 #(
    .INIT(64'hE2E2E2000000E200)) 
    dout__0_carry_i_28
       (.I0(\B_V_data_1_payload_A_reg[6]_0 [0]),
        .I1(B_V_data_1_sel),
        .I2(\B_V_data_1_payload_B_reg[6]_0 [0]),
        .I3(dout__0_carry_i_8[2]),
        .I4(\y_1_data_reg_reg[2]_2 ),
        .I5(dout__0_carry_i_8_0[2]),
        .O(\B_V_data_1_payload_A_reg[0]_0 ));
  LUT6 #(
    .INIT(64'hE2E2E2000000E200)) 
    dout__0_carry_i_29
       (.I0(B_V_data_1_payload_A[1]),
        .I1(B_V_data_1_sel),
        .I2(B_V_data_1_payload_B[1]),
        .I3(dout__0_carry_i_8[4]),
        .I4(\y_1_data_reg_reg[2]_2 ),
        .I5(dout__0_carry_i_8_0[4]),
        .O(\B_V_data_1_payload_A_reg[1]_0 ));
  LUT6 #(
    .INIT(64'hF888800080008000)) 
    dout__0_carry_i_3
       (.I0(\B_V_data_1_payload_B_reg[2]_0 ),
        .I1(\y_1_data_reg_reg[2] ),
        .I2(\y_1_data_reg_reg[2]_0 ),
        .I3(\B_V_data_1_payload_B_reg[1]_0 ),
        .I4(\B_V_data_1_payload_B_reg[0]_0 ),
        .I5(\y_1_data_reg_reg[2]_1 ),
        .O(DI[2]));
  LUT6 #(
    .INIT(64'h1D1D1DFFFFFF1DFF)) 
    dout__0_carry_i_30
       (.I0(B_V_data_1_payload_A[2]),
        .I1(B_V_data_1_sel),
        .I2(B_V_data_1_payload_B[2]),
        .I3(dout__0_carry_i_8[3]),
        .I4(\y_1_data_reg_reg[2]_2 ),
        .I5(dout__0_carry_i_8_0[3]),
        .O(\B_V_data_1_payload_A_reg[2]_0 ));
  LUT6 #(
    .INIT(64'h7888787878888888)) 
    dout__0_carry_i_5
       (.I0(\y_1_data_reg_reg[2] ),
        .I1(\B_V_data_1_payload_B_reg[1]_0 ),
        .I2(\y_1_data_reg_reg[2]_3 ),
        .I3(B_V_data_1_payload_B[2]),
        .I4(B_V_data_1_sel),
        .I5(B_V_data_1_payload_A[2]),
        .O(DI[1]));
  LUT6 #(
    .INIT(64'hE2E2E2000000E200)) 
    dout__0_carry_i_6
       (.I0(B_V_data_1_payload_A[1]),
        .I1(B_V_data_1_sel),
        .I2(B_V_data_1_payload_B[1]),
        .I3(dout__0_carry_i_8[0]),
        .I4(\y_1_data_reg_reg[2]_2 ),
        .I5(dout__0_carry_i_8_0[0]),
        .O(DI[0]));
  LUT6 #(
    .INIT(64'h157F7F7FEA808080)) 
    dout__0_carry_i_7
       (.I0(\B_V_data_1_payload_A_reg[0]_1 ),
        .I1(\B_V_data_1_payload_B_reg[1]_0 ),
        .I2(\y_1_data_reg_reg[2]_4 ),
        .I3(\B_V_data_1_payload_B_reg[2]_0 ),
        .I4(\y_1_data_reg_reg[2]_5 ),
        .I5(\y_1_data_reg_reg[2]_6 ),
        .O(S[1]));
  LUT6 #(
    .INIT(64'h8777788878887888)) 
    dout__22_carry_i_1
       (.I0(dout__22_carry_i_9_n_0),
        .I1(\y_1_data_reg_reg[2]_1 ),
        .I2(\B_V_data_1_payload_B_reg[5]_0 ),
        .I3(\y_1_data_reg_reg[2] ),
        .I4(\y_1_data_reg_reg[2]_0 ),
        .I5(\B_V_data_1_payload_B_reg[4]_0 ),
        .O(\B_V_data_1_payload_B_reg[3]_0 [1]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    dout__22_carry_i_10
       (.I0(B_V_data_1_payload_B[5]),
        .I1(B_V_data_1_sel),
        .I2(B_V_data_1_payload_A[5]),
        .O(\B_V_data_1_payload_B_reg[5]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    dout__22_carry_i_11
       (.I0(\B_V_data_1_payload_B_reg[6]_0 [2]),
        .I1(B_V_data_1_sel),
        .I2(\B_V_data_1_payload_A_reg[6]_0 [2]),
        .O(\B_V_data_1_payload_B_reg[4]_0 ));
  LUT6 #(
    .INIT(64'h07777FFF7FFF7FFF)) 
    dout__22_carry_i_12
       (.I0(\B_V_data_1_payload_B_reg[5]_0 ),
        .I1(\y_1_data_reg_reg[2] ),
        .I2(\y_1_data_reg_reg[2]_0 ),
        .I3(\B_V_data_1_payload_B_reg[4]_0 ),
        .I4(\y_1_data_reg_reg[2]_1 ),
        .I5(dout__22_carry_i_9_n_0),
        .O(dout__22_carry_i_12_n_0));
  LUT6 #(
    .INIT(64'h1D1D1DFFFFFF1DFF)) 
    dout__22_carry_i_13
       (.I0(B_V_data_1_payload_A[5]),
        .I1(B_V_data_1_sel),
        .I2(B_V_data_1_payload_B[5]),
        .I3(dout__0_carry_i_8[1]),
        .I4(\y_1_data_reg_reg[2]_2 ),
        .I5(dout__0_carry_i_8_0[1]),
        .O(dout__22_carry_i_13_n_0));
  LUT6 #(
    .INIT(64'h7877788888888888)) 
    dout__22_carry_i_2
       (.I0(\B_V_data_1_payload_B_reg[4]_0 ),
        .I1(\y_1_data_reg_reg[2] ),
        .I2(B_V_data_1_payload_B[5]),
        .I3(B_V_data_1_sel),
        .I4(B_V_data_1_payload_A[5]),
        .I5(\y_1_data_reg_reg[2]_3 ),
        .O(\B_V_data_1_payload_B_reg[3]_0 [0]));
  LUT6 #(
    .INIT(64'h6999966696669666)) 
    dout__22_carry_i_4
       (.I0(dout__22_carry_i_12_n_0),
        .I1(dout__22_carry_i_13_n_0),
        .I2(\y_1_data_reg_reg[2]_1 ),
        .I3(\B_V_data_1_payload_B_reg[4]_0 ),
        .I4(\y_1_data_reg_reg[2]_5 ),
        .I5(dout__22_carry_i_9_n_0),
        .O(\B_V_data_1_payload_A_reg[5]_0 [2]));
  LUT5 #(
    .INIT(32'h656AAAAA)) 
    dout__22_carry_i_6
       (.I0(\B_V_data_1_payload_B_reg[3]_0 [0]),
        .I1(\B_V_data_1_payload_B_reg[6]_0 [1]),
        .I2(B_V_data_1_sel),
        .I3(\B_V_data_1_payload_A_reg[6]_0 [1]),
        .I4(\y_1_data_reg_reg[2]_0 ),
        .O(\B_V_data_1_payload_A_reg[5]_0 [1]));
  LUT6 #(
    .INIT(64'h7877788888888888)) 
    dout__22_carry_i_7
       (.I0(dout__22_carry_i_9_n_0),
        .I1(\y_1_data_reg_reg[2] ),
        .I2(\B_V_data_1_payload_B_reg[6]_0 [2]),
        .I3(B_V_data_1_sel),
        .I4(\B_V_data_1_payload_A_reg[6]_0 [2]),
        .I5(\y_1_data_reg_reg[2]_3 ),
        .O(\B_V_data_1_payload_A_reg[5]_0 [0]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    dout__22_carry_i_9
       (.I0(\B_V_data_1_payload_B_reg[6]_0 [1]),
        .I1(B_V_data_1_sel),
        .I2(\B_V_data_1_payload_A_reg[6]_0 [1]),
        .O(dout__22_carry_i_9_n_0));
  LUT6 #(
    .INIT(64'h6969699999996999)) 
    dout__34_carry_i_4
       (.I0(dout__34_carry_i_8_n_0),
        .I1(dout__34_carry_i_9_n_0),
        .I2(\y_1_data_reg_reg[2]_3 ),
        .I3(B_V_data_1_payload_A[7]),
        .I4(B_V_data_1_sel),
        .I5(B_V_data_1_payload_B[7]),
        .O(\B_V_data_1_payload_A_reg[7]_0 ));
  LUT6 #(
    .INIT(64'h000057F757F7FFFF)) 
    dout__34_carry_i_8
       (.I0(\y_1_data_reg_reg[2]_3 ),
        .I1(\B_V_data_1_payload_A_reg[6]_0 [3]),
        .I2(B_V_data_1_sel),
        .I3(\B_V_data_1_payload_B_reg[6]_0 [3]),
        .I4(O[0]),
        .I5(dout__34_carry_i_4_0[0]),
        .O(dout__34_carry_i_8_n_0));
  LUT6 #(
    .INIT(64'h47FFB800B80047FF)) 
    dout__34_carry_i_9
       (.I0(\B_V_data_1_payload_B_reg[6]_0 [3]),
        .I1(B_V_data_1_sel),
        .I2(\B_V_data_1_payload_A_reg[6]_0 [3]),
        .I3(\y_1_data_reg_reg[2] ),
        .I4(O[1]),
        .I5(dout__34_carry_i_4_0[1]),
        .O(dout__34_carry_i_9_n_0));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
