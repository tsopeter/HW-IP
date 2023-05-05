//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
//Date        : Fri May  5 12:57:21 2023
//Host        : DESKTOP-EOP59MS running 64-bit major release  (build 9200)
//Command     : generate_target vadd.bd
//Design      : vadd
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "vadd,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=vadd,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=3,numReposBlks=3,numNonXlnxBlks=1,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=1,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "vadd.hwdef" *) 
module vadd
   (M_AXI_MM2S_W_araddr,
    M_AXI_MM2S_W_arburst,
    M_AXI_MM2S_W_arcache,
    M_AXI_MM2S_W_arlen,
    M_AXI_MM2S_W_arprot,
    M_AXI_MM2S_W_arready,
    M_AXI_MM2S_W_arsize,
    M_AXI_MM2S_W_arvalid,
    M_AXI_MM2S_W_rdata,
    M_AXI_MM2S_W_rlast,
    M_AXI_MM2S_W_rready,
    M_AXI_MM2S_W_rresp,
    M_AXI_MM2S_W_rvalid,
    M_AXI_MM2S_X_araddr,
    M_AXI_MM2S_X_arburst,
    M_AXI_MM2S_X_arcache,
    M_AXI_MM2S_X_arlen,
    M_AXI_MM2S_X_arprot,
    M_AXI_MM2S_X_arready,
    M_AXI_MM2S_X_arsize,
    M_AXI_MM2S_X_arvalid,
    M_AXI_MM2S_X_rdata,
    M_AXI_MM2S_X_rlast,
    M_AXI_MM2S_X_rready,
    M_AXI_MM2S_X_rresp,
    M_AXI_MM2S_X_rvalid,
    M_AXI_S2MM_W_awaddr,
    M_AXI_S2MM_W_awburst,
    M_AXI_S2MM_W_awcache,
    M_AXI_S2MM_W_awlen,
    M_AXI_S2MM_W_awprot,
    M_AXI_S2MM_W_awready,
    M_AXI_S2MM_W_awsize,
    M_AXI_S2MM_W_awvalid,
    M_AXI_S2MM_W_bready,
    M_AXI_S2MM_W_bresp,
    M_AXI_S2MM_W_bvalid,
    M_AXI_S2MM_W_wdata,
    M_AXI_S2MM_W_wlast,
    M_AXI_S2MM_W_wready,
    M_AXI_S2MM_W_wstrb,
    M_AXI_S2MM_W_wvalid,
    M_AXI_S2MM_X_awaddr,
    M_AXI_S2MM_X_awburst,
    M_AXI_S2MM_X_awcache,
    M_AXI_S2MM_X_awlen,
    M_AXI_S2MM_X_awprot,
    M_AXI_S2MM_X_awready,
    M_AXI_S2MM_X_awsize,
    M_AXI_S2MM_X_awvalid,
    M_AXI_S2MM_X_bready,
    M_AXI_S2MM_X_bresp,
    M_AXI_S2MM_X_bvalid,
    M_AXI_S2MM_X_wdata,
    M_AXI_S2MM_X_wlast,
    M_AXI_S2MM_X_wready,
    M_AXI_S2MM_X_wstrb,
    M_AXI_S2MM_X_wvalid,
    S_AXILITE_araddr,
    S_AXILITE_arready,
    S_AXILITE_arvalid,
    S_AXILITE_awaddr,
    S_AXILITE_awready,
    S_AXILITE_awvalid,
    S_AXILITE_bready,
    S_AXILITE_bresp,
    S_AXILITE_bvalid,
    S_AXILITE_rdata,
    S_AXILITE_rready,
    S_AXILITE_rresp,
    S_AXILITE_rvalid,
    S_AXILITE_wdata,
    S_AXILITE_wready,
    S_AXILITE_wstrb,
    S_AXILITE_wvalid,
    S_AXI_LITE_W_araddr,
    S_AXI_LITE_W_arready,
    S_AXI_LITE_W_arvalid,
    S_AXI_LITE_W_awaddr,
    S_AXI_LITE_W_awready,
    S_AXI_LITE_W_awvalid,
    S_AXI_LITE_W_bready,
    S_AXI_LITE_W_bresp,
    S_AXI_LITE_W_bvalid,
    S_AXI_LITE_W_rdata,
    S_AXI_LITE_W_rready,
    S_AXI_LITE_W_rresp,
    S_AXI_LITE_W_rvalid,
    S_AXI_LITE_W_wdata,
    S_AXI_LITE_W_wready,
    S_AXI_LITE_W_wvalid,
    S_AXI_LITE_X_araddr,
    S_AXI_LITE_X_arready,
    S_AXI_LITE_X_arvalid,
    S_AXI_LITE_X_awaddr,
    S_AXI_LITE_X_awready,
    S_AXI_LITE_X_awvalid,
    S_AXI_LITE_X_bready,
    S_AXI_LITE_X_bresp,
    S_AXI_LITE_X_bvalid,
    S_AXI_LITE_X_rdata,
    S_AXI_LITE_X_rready,
    S_AXI_LITE_X_rresp,
    S_AXI_LITE_X_rvalid,
    S_AXI_LITE_X_wdata,
    S_AXI_LITE_X_wready,
    S_AXI_LITE_X_wvalid,
    ap_clk,
    ap_rst_n);
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MM2S_W " *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M_AXI_MM2S_W, ADDR_WIDTH 32, ARUSER_WIDTH 0, AWUSER_WIDTH 0, BUSER_WIDTH 0, DATA_WIDTH 32, FREQ_HZ 100000000, HAS_BRESP 0, HAS_BURST 0, HAS_CACHE 1, HAS_LOCK 0, HAS_PROT 1, HAS_QOS 0, HAS_REGION 0, HAS_RRESP 1, HAS_WSTRB 0, ID_WIDTH 0, INSERT_VIP 0, MAX_BURST_LENGTH 16, NUM_READ_OUTSTANDING 16, NUM_READ_THREADS 1, NUM_WRITE_OUTSTANDING 2, NUM_WRITE_THREADS 1, PHASE 0.0, PROTOCOL AXI4, READ_WRITE_MODE READ_ONLY, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, SUPPORTS_NARROW_BURST 0, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0" *) output [31:0]M_AXI_MM2S_W_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MM2S_W " *) output [1:0]M_AXI_MM2S_W_arburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MM2S_W " *) output [3:0]M_AXI_MM2S_W_arcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MM2S_W " *) output [7:0]M_AXI_MM2S_W_arlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MM2S_W " *) output [2:0]M_AXI_MM2S_W_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MM2S_W " *) input M_AXI_MM2S_W_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MM2S_W " *) output [2:0]M_AXI_MM2S_W_arsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MM2S_W " *) output M_AXI_MM2S_W_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MM2S_W " *) input [31:0]M_AXI_MM2S_W_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MM2S_W " *) input M_AXI_MM2S_W_rlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MM2S_W " *) output M_AXI_MM2S_W_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MM2S_W " *) input [1:0]M_AXI_MM2S_W_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MM2S_W " *) input M_AXI_MM2S_W_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MM2S_X " *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M_AXI_MM2S_X, ADDR_WIDTH 32, ARUSER_WIDTH 0, AWUSER_WIDTH 0, BUSER_WIDTH 0, DATA_WIDTH 32, FREQ_HZ 100000000, HAS_BRESP 0, HAS_BURST 0, HAS_CACHE 1, HAS_LOCK 0, HAS_PROT 1, HAS_QOS 0, HAS_REGION 0, HAS_RRESP 1, HAS_WSTRB 0, ID_WIDTH 0, INSERT_VIP 0, MAX_BURST_LENGTH 16, NUM_READ_OUTSTANDING 16, NUM_READ_THREADS 1, NUM_WRITE_OUTSTANDING 2, NUM_WRITE_THREADS 1, PHASE 0.0, PROTOCOL AXI4, READ_WRITE_MODE READ_ONLY, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, SUPPORTS_NARROW_BURST 0, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0" *) output [31:0]M_AXI_MM2S_X_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MM2S_X " *) output [1:0]M_AXI_MM2S_X_arburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MM2S_X " *) output [3:0]M_AXI_MM2S_X_arcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MM2S_X " *) output [7:0]M_AXI_MM2S_X_arlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MM2S_X " *) output [2:0]M_AXI_MM2S_X_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MM2S_X " *) input M_AXI_MM2S_X_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MM2S_X " *) output [2:0]M_AXI_MM2S_X_arsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MM2S_X " *) output M_AXI_MM2S_X_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MM2S_X " *) input [31:0]M_AXI_MM2S_X_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MM2S_X " *) input M_AXI_MM2S_X_rlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MM2S_X " *) output M_AXI_MM2S_X_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MM2S_X " *) input [1:0]M_AXI_MM2S_X_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MM2S_X " *) input M_AXI_MM2S_X_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_S2MM_W " *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M_AXI_S2MM_W, ADDR_WIDTH 32, ARUSER_WIDTH 0, AWUSER_WIDTH 0, BUSER_WIDTH 0, DATA_WIDTH 32, FREQ_HZ 100000000, HAS_BRESP 1, HAS_BURST 0, HAS_CACHE 1, HAS_LOCK 0, HAS_PROT 1, HAS_QOS 0, HAS_REGION 0, HAS_RRESP 0, HAS_WSTRB 1, ID_WIDTH 0, INSERT_VIP 0, MAX_BURST_LENGTH 16, NUM_READ_OUTSTANDING 2, NUM_READ_THREADS 1, NUM_WRITE_OUTSTANDING 16, NUM_WRITE_THREADS 1, PHASE 0.0, PROTOCOL AXI4, READ_WRITE_MODE WRITE_ONLY, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, SUPPORTS_NARROW_BURST 0, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0" *) output [31:0]M_AXI_S2MM_W_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_S2MM_W " *) output [1:0]M_AXI_S2MM_W_awburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_S2MM_W " *) output [3:0]M_AXI_S2MM_W_awcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_S2MM_W " *) output [7:0]M_AXI_S2MM_W_awlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_S2MM_W " *) output [2:0]M_AXI_S2MM_W_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_S2MM_W " *) input M_AXI_S2MM_W_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_S2MM_W " *) output [2:0]M_AXI_S2MM_W_awsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_S2MM_W " *) output M_AXI_S2MM_W_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_S2MM_W " *) output M_AXI_S2MM_W_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_S2MM_W " *) input [1:0]M_AXI_S2MM_W_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_S2MM_W " *) input M_AXI_S2MM_W_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_S2MM_W " *) output [31:0]M_AXI_S2MM_W_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_S2MM_W " *) output M_AXI_S2MM_W_wlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_S2MM_W " *) input M_AXI_S2MM_W_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_S2MM_W " *) output [3:0]M_AXI_S2MM_W_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_S2MM_W " *) output M_AXI_S2MM_W_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_S2MM_X " *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M_AXI_S2MM_X, ADDR_WIDTH 32, ARUSER_WIDTH 0, AWUSER_WIDTH 0, BUSER_WIDTH 0, DATA_WIDTH 32, FREQ_HZ 100000000, HAS_BRESP 1, HAS_BURST 0, HAS_CACHE 1, HAS_LOCK 0, HAS_PROT 1, HAS_QOS 0, HAS_REGION 0, HAS_RRESP 0, HAS_WSTRB 1, ID_WIDTH 0, INSERT_VIP 0, MAX_BURST_LENGTH 16, NUM_READ_OUTSTANDING 2, NUM_READ_THREADS 1, NUM_WRITE_OUTSTANDING 16, NUM_WRITE_THREADS 1, PHASE 0.0, PROTOCOL AXI4, READ_WRITE_MODE WRITE_ONLY, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, SUPPORTS_NARROW_BURST 0, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0" *) output [31:0]M_AXI_S2MM_X_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_S2MM_X " *) output [1:0]M_AXI_S2MM_X_awburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_S2MM_X " *) output [3:0]M_AXI_S2MM_X_awcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_S2MM_X " *) output [7:0]M_AXI_S2MM_X_awlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_S2MM_X " *) output [2:0]M_AXI_S2MM_X_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_S2MM_X " *) input M_AXI_S2MM_X_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_S2MM_X " *) output [2:0]M_AXI_S2MM_X_awsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_S2MM_X " *) output M_AXI_S2MM_X_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_S2MM_X " *) output M_AXI_S2MM_X_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_S2MM_X " *) input [1:0]M_AXI_S2MM_X_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_S2MM_X " *) input M_AXI_S2MM_X_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_S2MM_X " *) output [31:0]M_AXI_S2MM_X_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_S2MM_X " *) output M_AXI_S2MM_X_wlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_S2MM_X " *) input M_AXI_S2MM_X_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_S2MM_X " *) output [3:0]M_AXI_S2MM_X_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_S2MM_X " *) output M_AXI_S2MM_X_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXILITE " *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXILITE, ADDR_WIDTH 5, ARUSER_WIDTH 0, AWUSER_WIDTH 0, BUSER_WIDTH 0, DATA_WIDTH 32, FREQ_HZ 100000000, HAS_BRESP 1, HAS_BURST 0, HAS_CACHE 0, HAS_LOCK 0, HAS_PROT 0, HAS_QOS 0, HAS_REGION 0, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 0, INSERT_VIP 0, MAX_BURST_LENGTH 1, NUM_READ_OUTSTANDING 1, NUM_READ_THREADS 1, NUM_WRITE_OUTSTANDING 1, NUM_WRITE_THREADS 1, PHASE 0.0, PROTOCOL AXI4LITE, READ_WRITE_MODE READ_WRITE, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, SUPPORTS_NARROW_BURST 0, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0" *) input [4:0]S_AXILITE_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXILITE " *) output S_AXILITE_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXILITE " *) input S_AXILITE_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXILITE " *) input [4:0]S_AXILITE_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXILITE " *) output S_AXILITE_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXILITE " *) input S_AXILITE_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXILITE " *) input S_AXILITE_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXILITE " *) output [1:0]S_AXILITE_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXILITE " *) output S_AXILITE_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXILITE " *) output [31:0]S_AXILITE_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXILITE " *) input S_AXILITE_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXILITE " *) output [1:0]S_AXILITE_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXILITE " *) output S_AXILITE_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXILITE " *) input [31:0]S_AXILITE_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXILITE " *) output S_AXILITE_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXILITE " *) input [3:0]S_AXILITE_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXILITE " *) input S_AXILITE_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_LITE_W " *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXI_LITE_W, ADDR_WIDTH 10, ARUSER_WIDTH 0, AWUSER_WIDTH 0, BUSER_WIDTH 0, DATA_WIDTH 32, FREQ_HZ 100000000, HAS_BRESP 1, HAS_BURST 0, HAS_CACHE 0, HAS_LOCK 0, HAS_PROT 0, HAS_QOS 0, HAS_REGION 0, HAS_RRESP 1, HAS_WSTRB 0, ID_WIDTH 0, INSERT_VIP 0, MAX_BURST_LENGTH 1, NUM_READ_OUTSTANDING 1, NUM_READ_THREADS 1, NUM_WRITE_OUTSTANDING 1, NUM_WRITE_THREADS 1, PHASE 0.0, PROTOCOL AXI4LITE, READ_WRITE_MODE READ_WRITE, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, SUPPORTS_NARROW_BURST 0, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0" *) input [9:0]S_AXI_LITE_W_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_LITE_W " *) output S_AXI_LITE_W_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_LITE_W " *) input S_AXI_LITE_W_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_LITE_W " *) input [9:0]S_AXI_LITE_W_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_LITE_W " *) output S_AXI_LITE_W_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_LITE_W " *) input S_AXI_LITE_W_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_LITE_W " *) input S_AXI_LITE_W_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_LITE_W " *) output [1:0]S_AXI_LITE_W_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_LITE_W " *) output S_AXI_LITE_W_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_LITE_W " *) output [31:0]S_AXI_LITE_W_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_LITE_W " *) input S_AXI_LITE_W_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_LITE_W " *) output [1:0]S_AXI_LITE_W_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_LITE_W " *) output S_AXI_LITE_W_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_LITE_W " *) input [31:0]S_AXI_LITE_W_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_LITE_W " *) output S_AXI_LITE_W_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_LITE_W " *) input S_AXI_LITE_W_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_LITE_X " *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXI_LITE_X, ADDR_WIDTH 10, ARUSER_WIDTH 0, AWUSER_WIDTH 0, BUSER_WIDTH 0, DATA_WIDTH 32, FREQ_HZ 100000000, HAS_BRESP 1, HAS_BURST 0, HAS_CACHE 0, HAS_LOCK 0, HAS_PROT 0, HAS_QOS 0, HAS_REGION 0, HAS_RRESP 1, HAS_WSTRB 0, ID_WIDTH 0, INSERT_VIP 0, MAX_BURST_LENGTH 1, NUM_READ_OUTSTANDING 1, NUM_READ_THREADS 1, NUM_WRITE_OUTSTANDING 1, NUM_WRITE_THREADS 1, PHASE 0.0, PROTOCOL AXI4LITE, READ_WRITE_MODE READ_WRITE, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, SUPPORTS_NARROW_BURST 0, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0" *) input [9:0]S_AXI_LITE_X_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_LITE_X " *) output S_AXI_LITE_X_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_LITE_X " *) input S_AXI_LITE_X_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_LITE_X " *) input [9:0]S_AXI_LITE_X_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_LITE_X " *) output S_AXI_LITE_X_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_LITE_X " *) input S_AXI_LITE_X_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_LITE_X " *) input S_AXI_LITE_X_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_LITE_X " *) output [1:0]S_AXI_LITE_X_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_LITE_X " *) output S_AXI_LITE_X_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_LITE_X " *) output [31:0]S_AXI_LITE_X_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_LITE_X " *) input S_AXI_LITE_X_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_LITE_X " *) output [1:0]S_AXI_LITE_X_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_LITE_X " *) output S_AXI_LITE_X_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_LITE_X " *) input [31:0]S_AXI_LITE_X_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_LITE_X " *) output S_AXI_LITE_X_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_LITE_X " *) input S_AXI_LITE_X_wvalid;
  input ap_clk;
  input ap_rst_n;

  wire Net;
  wire Net1;
  wire [9:0]S_AXI_LITE_0_1_ARADDR;
  wire S_AXI_LITE_0_1_ARREADY;
  wire S_AXI_LITE_0_1_ARVALID;
  wire [9:0]S_AXI_LITE_0_1_AWADDR;
  wire S_AXI_LITE_0_1_AWREADY;
  wire S_AXI_LITE_0_1_AWVALID;
  wire S_AXI_LITE_0_1_BREADY;
  wire [1:0]S_AXI_LITE_0_1_BRESP;
  wire S_AXI_LITE_0_1_BVALID;
  wire [31:0]S_AXI_LITE_0_1_RDATA;
  wire S_AXI_LITE_0_1_RREADY;
  wire [1:0]S_AXI_LITE_0_1_RRESP;
  wire S_AXI_LITE_0_1_RVALID;
  wire [31:0]S_AXI_LITE_0_1_WDATA;
  wire S_AXI_LITE_0_1_WREADY;
  wire S_AXI_LITE_0_1_WVALID;
  wire [9:0]S_AXI_LITE_0_2_ARADDR;
  wire S_AXI_LITE_0_2_ARREADY;
  wire S_AXI_LITE_0_2_ARVALID;
  wire [9:0]S_AXI_LITE_0_2_AWADDR;
  wire S_AXI_LITE_0_2_AWREADY;
  wire S_AXI_LITE_0_2_AWVALID;
  wire S_AXI_LITE_0_2_BREADY;
  wire [1:0]S_AXI_LITE_0_2_BRESP;
  wire S_AXI_LITE_0_2_BVALID;
  wire [31:0]S_AXI_LITE_0_2_RDATA;
  wire S_AXI_LITE_0_2_RREADY;
  wire [1:0]S_AXI_LITE_0_2_RRESP;
  wire S_AXI_LITE_0_2_RVALID;
  wire [31:0]S_AXI_LITE_0_2_WDATA;
  wire S_AXI_LITE_0_2_WREADY;
  wire S_AXI_LITE_0_2_WVALID;
  wire [31:0]axi_dma_0_M_AXIS_MM2S_TDATA;
  wire axi_dma_0_M_AXIS_MM2S_TREADY;
  wire axi_dma_0_M_AXIS_MM2S_TVALID;
  wire [31:0]axi_dma_0_M_AXI_MM2S_ARADDR;
  wire [1:0]axi_dma_0_M_AXI_MM2S_ARBURST;
  wire [3:0]axi_dma_0_M_AXI_MM2S_ARCACHE;
  wire [7:0]axi_dma_0_M_AXI_MM2S_ARLEN;
  wire [2:0]axi_dma_0_M_AXI_MM2S_ARPROT;
  wire axi_dma_0_M_AXI_MM2S_ARREADY;
  wire [2:0]axi_dma_0_M_AXI_MM2S_ARSIZE;
  wire axi_dma_0_M_AXI_MM2S_ARVALID;
  wire [31:0]axi_dma_0_M_AXI_MM2S_RDATA;
  wire axi_dma_0_M_AXI_MM2S_RLAST;
  wire axi_dma_0_M_AXI_MM2S_RREADY;
  wire [1:0]axi_dma_0_M_AXI_MM2S_RRESP;
  wire axi_dma_0_M_AXI_MM2S_RVALID;
  wire [31:0]axi_dma_0_M_AXI_S2MM_AWADDR;
  wire [1:0]axi_dma_0_M_AXI_S2MM_AWBURST;
  wire [3:0]axi_dma_0_M_AXI_S2MM_AWCACHE;
  wire [7:0]axi_dma_0_M_AXI_S2MM_AWLEN;
  wire [2:0]axi_dma_0_M_AXI_S2MM_AWPROT;
  wire axi_dma_0_M_AXI_S2MM_AWREADY;
  wire [2:0]axi_dma_0_M_AXI_S2MM_AWSIZE;
  wire axi_dma_0_M_AXI_S2MM_AWVALID;
  wire axi_dma_0_M_AXI_S2MM_BREADY;
  wire [1:0]axi_dma_0_M_AXI_S2MM_BRESP;
  wire axi_dma_0_M_AXI_S2MM_BVALID;
  wire [31:0]axi_dma_0_M_AXI_S2MM_WDATA;
  wire axi_dma_0_M_AXI_S2MM_WLAST;
  wire axi_dma_0_M_AXI_S2MM_WREADY;
  wire [3:0]axi_dma_0_M_AXI_S2MM_WSTRB;
  wire axi_dma_0_M_AXI_S2MM_WVALID;
  wire [31:0]axi_dma_1_M_AXIS_MM2S_TDATA;
  wire axi_dma_1_M_AXIS_MM2S_TREADY;
  wire axi_dma_1_M_AXIS_MM2S_TVALID;
  wire [31:0]axi_dma_1_M_AXI_MM2S_ARADDR;
  wire [1:0]axi_dma_1_M_AXI_MM2S_ARBURST;
  wire [3:0]axi_dma_1_M_AXI_MM2S_ARCACHE;
  wire [7:0]axi_dma_1_M_AXI_MM2S_ARLEN;
  wire [2:0]axi_dma_1_M_AXI_MM2S_ARPROT;
  wire axi_dma_1_M_AXI_MM2S_ARREADY;
  wire [2:0]axi_dma_1_M_AXI_MM2S_ARSIZE;
  wire axi_dma_1_M_AXI_MM2S_ARVALID;
  wire [31:0]axi_dma_1_M_AXI_MM2S_RDATA;
  wire axi_dma_1_M_AXI_MM2S_RLAST;
  wire axi_dma_1_M_AXI_MM2S_RREADY;
  wire [1:0]axi_dma_1_M_AXI_MM2S_RRESP;
  wire axi_dma_1_M_AXI_MM2S_RVALID;
  wire [31:0]axi_dma_1_M_AXI_S2MM_AWADDR;
  wire [1:0]axi_dma_1_M_AXI_S2MM_AWBURST;
  wire [3:0]axi_dma_1_M_AXI_S2MM_AWCACHE;
  wire [7:0]axi_dma_1_M_AXI_S2MM_AWLEN;
  wire [2:0]axi_dma_1_M_AXI_S2MM_AWPROT;
  wire axi_dma_1_M_AXI_S2MM_AWREADY;
  wire [2:0]axi_dma_1_M_AXI_S2MM_AWSIZE;
  wire axi_dma_1_M_AXI_S2MM_AWVALID;
  wire axi_dma_1_M_AXI_S2MM_BREADY;
  wire [1:0]axi_dma_1_M_AXI_S2MM_BRESP;
  wire axi_dma_1_M_AXI_S2MM_BVALID;
  wire [31:0]axi_dma_1_M_AXI_S2MM_WDATA;
  wire axi_dma_1_M_AXI_S2MM_WLAST;
  wire axi_dma_1_M_AXI_S2MM_WREADY;
  wire [3:0]axi_dma_1_M_AXI_S2MM_WSTRB;
  wire axi_dma_1_M_AXI_S2MM_WVALID;
  wire [4:0]s_axi_control_0_1_ARADDR;
  wire s_axi_control_0_1_ARREADY;
  wire s_axi_control_0_1_ARVALID;
  wire [4:0]s_axi_control_0_1_AWADDR;
  wire s_axi_control_0_1_AWREADY;
  wire s_axi_control_0_1_AWVALID;
  wire s_axi_control_0_1_BREADY;
  wire [1:0]s_axi_control_0_1_BRESP;
  wire s_axi_control_0_1_BVALID;
  wire [31:0]s_axi_control_0_1_RDATA;
  wire s_axi_control_0_1_RREADY;
  wire [1:0]s_axi_control_0_1_RRESP;
  wire s_axi_control_0_1_RVALID;
  wire [31:0]s_axi_control_0_1_WDATA;
  wire s_axi_control_0_1_WREADY;
  wire [3:0]s_axi_control_0_1_WSTRB;
  wire s_axi_control_0_1_WVALID;

  assign M_AXI_MM2S_W_araddr[31:0] = axi_dma_0_M_AXI_MM2S_ARADDR;
  assign M_AXI_MM2S_W_arburst[1:0] = axi_dma_0_M_AXI_MM2S_ARBURST;
  assign M_AXI_MM2S_W_arcache[3:0] = axi_dma_0_M_AXI_MM2S_ARCACHE;
  assign M_AXI_MM2S_W_arlen[7:0] = axi_dma_0_M_AXI_MM2S_ARLEN;
  assign M_AXI_MM2S_W_arprot[2:0] = axi_dma_0_M_AXI_MM2S_ARPROT;
  assign M_AXI_MM2S_W_arsize[2:0] = axi_dma_0_M_AXI_MM2S_ARSIZE;
  assign M_AXI_MM2S_W_arvalid = axi_dma_0_M_AXI_MM2S_ARVALID;
  assign M_AXI_MM2S_W_rready = axi_dma_0_M_AXI_MM2S_RREADY;
  assign M_AXI_MM2S_X_araddr[31:0] = axi_dma_1_M_AXI_MM2S_ARADDR;
  assign M_AXI_MM2S_X_arburst[1:0] = axi_dma_1_M_AXI_MM2S_ARBURST;
  assign M_AXI_MM2S_X_arcache[3:0] = axi_dma_1_M_AXI_MM2S_ARCACHE;
  assign M_AXI_MM2S_X_arlen[7:0] = axi_dma_1_M_AXI_MM2S_ARLEN;
  assign M_AXI_MM2S_X_arprot[2:0] = axi_dma_1_M_AXI_MM2S_ARPROT;
  assign M_AXI_MM2S_X_arsize[2:0] = axi_dma_1_M_AXI_MM2S_ARSIZE;
  assign M_AXI_MM2S_X_arvalid = axi_dma_1_M_AXI_MM2S_ARVALID;
  assign M_AXI_MM2S_X_rready = axi_dma_1_M_AXI_MM2S_RREADY;
  assign M_AXI_S2MM_W_awaddr[31:0] = axi_dma_0_M_AXI_S2MM_AWADDR;
  assign M_AXI_S2MM_W_awburst[1:0] = axi_dma_0_M_AXI_S2MM_AWBURST;
  assign M_AXI_S2MM_W_awcache[3:0] = axi_dma_0_M_AXI_S2MM_AWCACHE;
  assign M_AXI_S2MM_W_awlen[7:0] = axi_dma_0_M_AXI_S2MM_AWLEN;
  assign M_AXI_S2MM_W_awprot[2:0] = axi_dma_0_M_AXI_S2MM_AWPROT;
  assign M_AXI_S2MM_W_awsize[2:0] = axi_dma_0_M_AXI_S2MM_AWSIZE;
  assign M_AXI_S2MM_W_awvalid = axi_dma_0_M_AXI_S2MM_AWVALID;
  assign M_AXI_S2MM_W_bready = axi_dma_0_M_AXI_S2MM_BREADY;
  assign M_AXI_S2MM_W_wdata[31:0] = axi_dma_0_M_AXI_S2MM_WDATA;
  assign M_AXI_S2MM_W_wlast = axi_dma_0_M_AXI_S2MM_WLAST;
  assign M_AXI_S2MM_W_wstrb[3:0] = axi_dma_0_M_AXI_S2MM_WSTRB;
  assign M_AXI_S2MM_W_wvalid = axi_dma_0_M_AXI_S2MM_WVALID;
  assign M_AXI_S2MM_X_awaddr[31:0] = axi_dma_1_M_AXI_S2MM_AWADDR;
  assign M_AXI_S2MM_X_awburst[1:0] = axi_dma_1_M_AXI_S2MM_AWBURST;
  assign M_AXI_S2MM_X_awcache[3:0] = axi_dma_1_M_AXI_S2MM_AWCACHE;
  assign M_AXI_S2MM_X_awlen[7:0] = axi_dma_1_M_AXI_S2MM_AWLEN;
  assign M_AXI_S2MM_X_awprot[2:0] = axi_dma_1_M_AXI_S2MM_AWPROT;
  assign M_AXI_S2MM_X_awsize[2:0] = axi_dma_1_M_AXI_S2MM_AWSIZE;
  assign M_AXI_S2MM_X_awvalid = axi_dma_1_M_AXI_S2MM_AWVALID;
  assign M_AXI_S2MM_X_bready = axi_dma_1_M_AXI_S2MM_BREADY;
  assign M_AXI_S2MM_X_wdata[31:0] = axi_dma_1_M_AXI_S2MM_WDATA;
  assign M_AXI_S2MM_X_wlast = axi_dma_1_M_AXI_S2MM_WLAST;
  assign M_AXI_S2MM_X_wstrb[3:0] = axi_dma_1_M_AXI_S2MM_WSTRB;
  assign M_AXI_S2MM_X_wvalid = axi_dma_1_M_AXI_S2MM_WVALID;
  assign Net = ap_rst_n;
  assign Net1 = ap_clk;
  assign S_AXILITE_arready = s_axi_control_0_1_ARREADY;
  assign S_AXILITE_awready = s_axi_control_0_1_AWREADY;
  assign S_AXILITE_bresp[1:0] = s_axi_control_0_1_BRESP;
  assign S_AXILITE_bvalid = s_axi_control_0_1_BVALID;
  assign S_AXILITE_rdata[31:0] = s_axi_control_0_1_RDATA;
  assign S_AXILITE_rresp[1:0] = s_axi_control_0_1_RRESP;
  assign S_AXILITE_rvalid = s_axi_control_0_1_RVALID;
  assign S_AXILITE_wready = s_axi_control_0_1_WREADY;
  assign S_AXI_LITE_0_1_ARADDR = S_AXI_LITE_X_araddr[9:0];
  assign S_AXI_LITE_0_1_ARVALID = S_AXI_LITE_X_arvalid;
  assign S_AXI_LITE_0_1_AWADDR = S_AXI_LITE_X_awaddr[9:0];
  assign S_AXI_LITE_0_1_AWVALID = S_AXI_LITE_X_awvalid;
  assign S_AXI_LITE_0_1_BREADY = S_AXI_LITE_X_bready;
  assign S_AXI_LITE_0_1_RREADY = S_AXI_LITE_X_rready;
  assign S_AXI_LITE_0_1_WDATA = S_AXI_LITE_X_wdata[31:0];
  assign S_AXI_LITE_0_1_WVALID = S_AXI_LITE_X_wvalid;
  assign S_AXI_LITE_0_2_ARADDR = S_AXI_LITE_W_araddr[9:0];
  assign S_AXI_LITE_0_2_ARVALID = S_AXI_LITE_W_arvalid;
  assign S_AXI_LITE_0_2_AWADDR = S_AXI_LITE_W_awaddr[9:0];
  assign S_AXI_LITE_0_2_AWVALID = S_AXI_LITE_W_awvalid;
  assign S_AXI_LITE_0_2_BREADY = S_AXI_LITE_W_bready;
  assign S_AXI_LITE_0_2_RREADY = S_AXI_LITE_W_rready;
  assign S_AXI_LITE_0_2_WDATA = S_AXI_LITE_W_wdata[31:0];
  assign S_AXI_LITE_0_2_WVALID = S_AXI_LITE_W_wvalid;
  assign S_AXI_LITE_W_arready = S_AXI_LITE_0_2_ARREADY;
  assign S_AXI_LITE_W_awready = S_AXI_LITE_0_2_AWREADY;
  assign S_AXI_LITE_W_bresp[1:0] = S_AXI_LITE_0_2_BRESP;
  assign S_AXI_LITE_W_bvalid = S_AXI_LITE_0_2_BVALID;
  assign S_AXI_LITE_W_rdata[31:0] = S_AXI_LITE_0_2_RDATA;
  assign S_AXI_LITE_W_rresp[1:0] = S_AXI_LITE_0_2_RRESP;
  assign S_AXI_LITE_W_rvalid = S_AXI_LITE_0_2_RVALID;
  assign S_AXI_LITE_W_wready = S_AXI_LITE_0_2_WREADY;
  assign S_AXI_LITE_X_arready = S_AXI_LITE_0_1_ARREADY;
  assign S_AXI_LITE_X_awready = S_AXI_LITE_0_1_AWREADY;
  assign S_AXI_LITE_X_bresp[1:0] = S_AXI_LITE_0_1_BRESP;
  assign S_AXI_LITE_X_bvalid = S_AXI_LITE_0_1_BVALID;
  assign S_AXI_LITE_X_rdata[31:0] = S_AXI_LITE_0_1_RDATA;
  assign S_AXI_LITE_X_rresp[1:0] = S_AXI_LITE_0_1_RRESP;
  assign S_AXI_LITE_X_rvalid = S_AXI_LITE_0_1_RVALID;
  assign S_AXI_LITE_X_wready = S_AXI_LITE_0_1_WREADY;
  assign axi_dma_0_M_AXI_MM2S_ARREADY = M_AXI_MM2S_W_arready;
  assign axi_dma_0_M_AXI_MM2S_RDATA = M_AXI_MM2S_W_rdata[31:0];
  assign axi_dma_0_M_AXI_MM2S_RLAST = M_AXI_MM2S_W_rlast;
  assign axi_dma_0_M_AXI_MM2S_RRESP = M_AXI_MM2S_W_rresp[1:0];
  assign axi_dma_0_M_AXI_MM2S_RVALID = M_AXI_MM2S_W_rvalid;
  assign axi_dma_0_M_AXI_S2MM_AWREADY = M_AXI_S2MM_W_awready;
  assign axi_dma_0_M_AXI_S2MM_BRESP = M_AXI_S2MM_W_bresp[1:0];
  assign axi_dma_0_M_AXI_S2MM_BVALID = M_AXI_S2MM_W_bvalid;
  assign axi_dma_0_M_AXI_S2MM_WREADY = M_AXI_S2MM_W_wready;
  assign axi_dma_1_M_AXI_MM2S_ARREADY = M_AXI_MM2S_X_arready;
  assign axi_dma_1_M_AXI_MM2S_RDATA = M_AXI_MM2S_X_rdata[31:0];
  assign axi_dma_1_M_AXI_MM2S_RLAST = M_AXI_MM2S_X_rlast;
  assign axi_dma_1_M_AXI_MM2S_RRESP = M_AXI_MM2S_X_rresp[1:0];
  assign axi_dma_1_M_AXI_MM2S_RVALID = M_AXI_MM2S_X_rvalid;
  assign axi_dma_1_M_AXI_S2MM_AWREADY = M_AXI_S2MM_X_awready;
  assign axi_dma_1_M_AXI_S2MM_BRESP = M_AXI_S2MM_X_bresp[1:0];
  assign axi_dma_1_M_AXI_S2MM_BVALID = M_AXI_S2MM_X_bvalid;
  assign axi_dma_1_M_AXI_S2MM_WREADY = M_AXI_S2MM_X_wready;
  assign s_axi_control_0_1_ARADDR = S_AXILITE_araddr[4:0];
  assign s_axi_control_0_1_ARVALID = S_AXILITE_arvalid;
  assign s_axi_control_0_1_AWADDR = S_AXILITE_awaddr[4:0];
  assign s_axi_control_0_1_AWVALID = S_AXILITE_awvalid;
  assign s_axi_control_0_1_BREADY = S_AXILITE_bready;
  assign s_axi_control_0_1_RREADY = S_AXILITE_rready;
  assign s_axi_control_0_1_WDATA = S_AXILITE_wdata[31:0];
  assign s_axi_control_0_1_WSTRB = S_AXILITE_wstrb[3:0];
  assign s_axi_control_0_1_WVALID = S_AXILITE_wvalid;
  vadd_axi_dma_0_0 axi_dma_0
       (.axi_resetn(Net),
        .m_axi_mm2s_aclk(Net1),
        .m_axi_mm2s_araddr(axi_dma_0_M_AXI_MM2S_ARADDR),
        .m_axi_mm2s_arburst(axi_dma_0_M_AXI_MM2S_ARBURST),
        .m_axi_mm2s_arcache(axi_dma_0_M_AXI_MM2S_ARCACHE),
        .m_axi_mm2s_arlen(axi_dma_0_M_AXI_MM2S_ARLEN),
        .m_axi_mm2s_arprot(axi_dma_0_M_AXI_MM2S_ARPROT),
        .m_axi_mm2s_arready(axi_dma_0_M_AXI_MM2S_ARREADY),
        .m_axi_mm2s_arsize(axi_dma_0_M_AXI_MM2S_ARSIZE),
        .m_axi_mm2s_arvalid(axi_dma_0_M_AXI_MM2S_ARVALID),
        .m_axi_mm2s_rdata(axi_dma_0_M_AXI_MM2S_RDATA),
        .m_axi_mm2s_rlast(axi_dma_0_M_AXI_MM2S_RLAST),
        .m_axi_mm2s_rready(axi_dma_0_M_AXI_MM2S_RREADY),
        .m_axi_mm2s_rresp(axi_dma_0_M_AXI_MM2S_RRESP),
        .m_axi_mm2s_rvalid(axi_dma_0_M_AXI_MM2S_RVALID),
        .m_axi_s2mm_aclk(Net1),
        .m_axi_s2mm_awaddr(axi_dma_0_M_AXI_S2MM_AWADDR),
        .m_axi_s2mm_awburst(axi_dma_0_M_AXI_S2MM_AWBURST),
        .m_axi_s2mm_awcache(axi_dma_0_M_AXI_S2MM_AWCACHE),
        .m_axi_s2mm_awlen(axi_dma_0_M_AXI_S2MM_AWLEN),
        .m_axi_s2mm_awprot(axi_dma_0_M_AXI_S2MM_AWPROT),
        .m_axi_s2mm_awready(axi_dma_0_M_AXI_S2MM_AWREADY),
        .m_axi_s2mm_awsize(axi_dma_0_M_AXI_S2MM_AWSIZE),
        .m_axi_s2mm_awvalid(axi_dma_0_M_AXI_S2MM_AWVALID),
        .m_axi_s2mm_bready(axi_dma_0_M_AXI_S2MM_BREADY),
        .m_axi_s2mm_bresp(axi_dma_0_M_AXI_S2MM_BRESP),
        .m_axi_s2mm_bvalid(axi_dma_0_M_AXI_S2MM_BVALID),
        .m_axi_s2mm_wdata(axi_dma_0_M_AXI_S2MM_WDATA),
        .m_axi_s2mm_wlast(axi_dma_0_M_AXI_S2MM_WLAST),
        .m_axi_s2mm_wready(axi_dma_0_M_AXI_S2MM_WREADY),
        .m_axi_s2mm_wstrb(axi_dma_0_M_AXI_S2MM_WSTRB),
        .m_axi_s2mm_wvalid(axi_dma_0_M_AXI_S2MM_WVALID),
        .m_axis_mm2s_tdata(axi_dma_0_M_AXIS_MM2S_TDATA),
        .m_axis_mm2s_tready(axi_dma_0_M_AXIS_MM2S_TREADY),
        .m_axis_mm2s_tvalid(axi_dma_0_M_AXIS_MM2S_TVALID),
        .s_axi_lite_aclk(Net1),
        .s_axi_lite_araddr(S_AXI_LITE_0_2_ARADDR),
        .s_axi_lite_arready(S_AXI_LITE_0_2_ARREADY),
        .s_axi_lite_arvalid(S_AXI_LITE_0_2_ARVALID),
        .s_axi_lite_awaddr(S_AXI_LITE_0_2_AWADDR),
        .s_axi_lite_awready(S_AXI_LITE_0_2_AWREADY),
        .s_axi_lite_awvalid(S_AXI_LITE_0_2_AWVALID),
        .s_axi_lite_bready(S_AXI_LITE_0_2_BREADY),
        .s_axi_lite_bresp(S_AXI_LITE_0_2_BRESP),
        .s_axi_lite_bvalid(S_AXI_LITE_0_2_BVALID),
        .s_axi_lite_rdata(S_AXI_LITE_0_2_RDATA),
        .s_axi_lite_rready(S_AXI_LITE_0_2_RREADY),
        .s_axi_lite_rresp(S_AXI_LITE_0_2_RRESP),
        .s_axi_lite_rvalid(S_AXI_LITE_0_2_RVALID),
        .s_axi_lite_wdata(S_AXI_LITE_0_2_WDATA),
        .s_axi_lite_wready(S_AXI_LITE_0_2_WREADY),
        .s_axi_lite_wvalid(S_AXI_LITE_0_2_WVALID),
        .s_axis_s2mm_tdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axis_s2mm_tkeep({1'b1,1'b1,1'b1,1'b1}),
        .s_axis_s2mm_tlast(1'b0),
        .s_axis_s2mm_tvalid(1'b0));
  vadd_axi_dma_0_1 axi_dma_1
       (.axi_resetn(Net),
        .m_axi_mm2s_aclk(Net1),
        .m_axi_mm2s_araddr(axi_dma_1_M_AXI_MM2S_ARADDR),
        .m_axi_mm2s_arburst(axi_dma_1_M_AXI_MM2S_ARBURST),
        .m_axi_mm2s_arcache(axi_dma_1_M_AXI_MM2S_ARCACHE),
        .m_axi_mm2s_arlen(axi_dma_1_M_AXI_MM2S_ARLEN),
        .m_axi_mm2s_arprot(axi_dma_1_M_AXI_MM2S_ARPROT),
        .m_axi_mm2s_arready(axi_dma_1_M_AXI_MM2S_ARREADY),
        .m_axi_mm2s_arsize(axi_dma_1_M_AXI_MM2S_ARSIZE),
        .m_axi_mm2s_arvalid(axi_dma_1_M_AXI_MM2S_ARVALID),
        .m_axi_mm2s_rdata(axi_dma_1_M_AXI_MM2S_RDATA),
        .m_axi_mm2s_rlast(axi_dma_1_M_AXI_MM2S_RLAST),
        .m_axi_mm2s_rready(axi_dma_1_M_AXI_MM2S_RREADY),
        .m_axi_mm2s_rresp(axi_dma_1_M_AXI_MM2S_RRESP),
        .m_axi_mm2s_rvalid(axi_dma_1_M_AXI_MM2S_RVALID),
        .m_axi_s2mm_aclk(Net1),
        .m_axi_s2mm_awaddr(axi_dma_1_M_AXI_S2MM_AWADDR),
        .m_axi_s2mm_awburst(axi_dma_1_M_AXI_S2MM_AWBURST),
        .m_axi_s2mm_awcache(axi_dma_1_M_AXI_S2MM_AWCACHE),
        .m_axi_s2mm_awlen(axi_dma_1_M_AXI_S2MM_AWLEN),
        .m_axi_s2mm_awprot(axi_dma_1_M_AXI_S2MM_AWPROT),
        .m_axi_s2mm_awready(axi_dma_1_M_AXI_S2MM_AWREADY),
        .m_axi_s2mm_awsize(axi_dma_1_M_AXI_S2MM_AWSIZE),
        .m_axi_s2mm_awvalid(axi_dma_1_M_AXI_S2MM_AWVALID),
        .m_axi_s2mm_bready(axi_dma_1_M_AXI_S2MM_BREADY),
        .m_axi_s2mm_bresp(axi_dma_1_M_AXI_S2MM_BRESP),
        .m_axi_s2mm_bvalid(axi_dma_1_M_AXI_S2MM_BVALID),
        .m_axi_s2mm_wdata(axi_dma_1_M_AXI_S2MM_WDATA),
        .m_axi_s2mm_wlast(axi_dma_1_M_AXI_S2MM_WLAST),
        .m_axi_s2mm_wready(axi_dma_1_M_AXI_S2MM_WREADY),
        .m_axi_s2mm_wstrb(axi_dma_1_M_AXI_S2MM_WSTRB),
        .m_axi_s2mm_wvalid(axi_dma_1_M_AXI_S2MM_WVALID),
        .m_axis_mm2s_tdata(axi_dma_1_M_AXIS_MM2S_TDATA),
        .m_axis_mm2s_tready(axi_dma_1_M_AXIS_MM2S_TREADY),
        .m_axis_mm2s_tvalid(axi_dma_1_M_AXIS_MM2S_TVALID),
        .s_axi_lite_aclk(Net1),
        .s_axi_lite_araddr(S_AXI_LITE_0_1_ARADDR),
        .s_axi_lite_arready(S_AXI_LITE_0_1_ARREADY),
        .s_axi_lite_arvalid(S_AXI_LITE_0_1_ARVALID),
        .s_axi_lite_awaddr(S_AXI_LITE_0_1_AWADDR),
        .s_axi_lite_awready(S_AXI_LITE_0_1_AWREADY),
        .s_axi_lite_awvalid(S_AXI_LITE_0_1_AWVALID),
        .s_axi_lite_bready(S_AXI_LITE_0_1_BREADY),
        .s_axi_lite_bresp(S_AXI_LITE_0_1_BRESP),
        .s_axi_lite_bvalid(S_AXI_LITE_0_1_BVALID),
        .s_axi_lite_rdata(S_AXI_LITE_0_1_RDATA),
        .s_axi_lite_rready(S_AXI_LITE_0_1_RREADY),
        .s_axi_lite_rresp(S_AXI_LITE_0_1_RRESP),
        .s_axi_lite_rvalid(S_AXI_LITE_0_1_RVALID),
        .s_axi_lite_wdata(S_AXI_LITE_0_1_WDATA),
        .s_axi_lite_wready(S_AXI_LITE_0_1_WREADY),
        .s_axi_lite_wvalid(S_AXI_LITE_0_1_WVALID),
        .s_axis_s2mm_tdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axis_s2mm_tkeep({1'b1,1'b1,1'b1,1'b1}),
        .s_axis_s2mm_tlast(1'b0),
        .s_axis_s2mm_tvalid(1'b0));
  vadd_vector_add_0_0 vector_add_0
       (.ap_clk(Net1),
        .ap_rst_n(Net),
        .s_axi_control_ARADDR(s_axi_control_0_1_ARADDR),
        .s_axi_control_ARREADY(s_axi_control_0_1_ARREADY),
        .s_axi_control_ARVALID(s_axi_control_0_1_ARVALID),
        .s_axi_control_AWADDR(s_axi_control_0_1_AWADDR),
        .s_axi_control_AWREADY(s_axi_control_0_1_AWREADY),
        .s_axi_control_AWVALID(s_axi_control_0_1_AWVALID),
        .s_axi_control_BREADY(s_axi_control_0_1_BREADY),
        .s_axi_control_BRESP(s_axi_control_0_1_BRESP),
        .s_axi_control_BVALID(s_axi_control_0_1_BVALID),
        .s_axi_control_RDATA(s_axi_control_0_1_RDATA),
        .s_axi_control_RREADY(s_axi_control_0_1_RREADY),
        .s_axi_control_RRESP(s_axi_control_0_1_RRESP),
        .s_axi_control_RVALID(s_axi_control_0_1_RVALID),
        .s_axi_control_WDATA(s_axi_control_0_1_WDATA),
        .s_axi_control_WREADY(s_axi_control_0_1_WREADY),
        .s_axi_control_WSTRB(s_axi_control_0_1_WSTRB),
        .s_axi_control_WVALID(s_axi_control_0_1_WVALID),
        .w_TDATA(axi_dma_0_M_AXIS_MM2S_TDATA[7:0]),
        .w_TREADY(axi_dma_0_M_AXIS_MM2S_TREADY),
        .w_TVALID(axi_dma_0_M_AXIS_MM2S_TVALID),
        .x_TDATA(axi_dma_1_M_AXIS_MM2S_TDATA[7:0]),
        .x_TREADY(axi_dma_1_M_AXIS_MM2S_TREADY),
        .x_TVALID(axi_dma_1_M_AXIS_MM2S_TVALID));
endmodule
