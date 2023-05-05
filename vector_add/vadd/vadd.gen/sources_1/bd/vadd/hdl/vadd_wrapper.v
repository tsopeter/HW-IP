//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
//Date        : Fri May  5 12:57:21 2023
//Host        : DESKTOP-EOP59MS running 64-bit major release  (build 9200)
//Command     : generate_target vadd_wrapper.bd
//Design      : vadd_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module vadd_wrapper
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
  output [31:0]M_AXI_MM2S_W_araddr;
  output [1:0]M_AXI_MM2S_W_arburst;
  output [3:0]M_AXI_MM2S_W_arcache;
  output [7:0]M_AXI_MM2S_W_arlen;
  output [2:0]M_AXI_MM2S_W_arprot;
  input M_AXI_MM2S_W_arready;
  output [2:0]M_AXI_MM2S_W_arsize;
  output M_AXI_MM2S_W_arvalid;
  input [31:0]M_AXI_MM2S_W_rdata;
  input M_AXI_MM2S_W_rlast;
  output M_AXI_MM2S_W_rready;
  input [1:0]M_AXI_MM2S_W_rresp;
  input M_AXI_MM2S_W_rvalid;
  output [31:0]M_AXI_MM2S_X_araddr;
  output [1:0]M_AXI_MM2S_X_arburst;
  output [3:0]M_AXI_MM2S_X_arcache;
  output [7:0]M_AXI_MM2S_X_arlen;
  output [2:0]M_AXI_MM2S_X_arprot;
  input M_AXI_MM2S_X_arready;
  output [2:0]M_AXI_MM2S_X_arsize;
  output M_AXI_MM2S_X_arvalid;
  input [31:0]M_AXI_MM2S_X_rdata;
  input M_AXI_MM2S_X_rlast;
  output M_AXI_MM2S_X_rready;
  input [1:0]M_AXI_MM2S_X_rresp;
  input M_AXI_MM2S_X_rvalid;
  output [31:0]M_AXI_S2MM_W_awaddr;
  output [1:0]M_AXI_S2MM_W_awburst;
  output [3:0]M_AXI_S2MM_W_awcache;
  output [7:0]M_AXI_S2MM_W_awlen;
  output [2:0]M_AXI_S2MM_W_awprot;
  input M_AXI_S2MM_W_awready;
  output [2:0]M_AXI_S2MM_W_awsize;
  output M_AXI_S2MM_W_awvalid;
  output M_AXI_S2MM_W_bready;
  input [1:0]M_AXI_S2MM_W_bresp;
  input M_AXI_S2MM_W_bvalid;
  output [31:0]M_AXI_S2MM_W_wdata;
  output M_AXI_S2MM_W_wlast;
  input M_AXI_S2MM_W_wready;
  output [3:0]M_AXI_S2MM_W_wstrb;
  output M_AXI_S2MM_W_wvalid;
  output [31:0]M_AXI_S2MM_X_awaddr;
  output [1:0]M_AXI_S2MM_X_awburst;
  output [3:0]M_AXI_S2MM_X_awcache;
  output [7:0]M_AXI_S2MM_X_awlen;
  output [2:0]M_AXI_S2MM_X_awprot;
  input M_AXI_S2MM_X_awready;
  output [2:0]M_AXI_S2MM_X_awsize;
  output M_AXI_S2MM_X_awvalid;
  output M_AXI_S2MM_X_bready;
  input [1:0]M_AXI_S2MM_X_bresp;
  input M_AXI_S2MM_X_bvalid;
  output [31:0]M_AXI_S2MM_X_wdata;
  output M_AXI_S2MM_X_wlast;
  input M_AXI_S2MM_X_wready;
  output [3:0]M_AXI_S2MM_X_wstrb;
  output M_AXI_S2MM_X_wvalid;
  input [4:0]S_AXILITE_araddr;
  output S_AXILITE_arready;
  input S_AXILITE_arvalid;
  input [4:0]S_AXILITE_awaddr;
  output S_AXILITE_awready;
  input S_AXILITE_awvalid;
  input S_AXILITE_bready;
  output [1:0]S_AXILITE_bresp;
  output S_AXILITE_bvalid;
  output [31:0]S_AXILITE_rdata;
  input S_AXILITE_rready;
  output [1:0]S_AXILITE_rresp;
  output S_AXILITE_rvalid;
  input [31:0]S_AXILITE_wdata;
  output S_AXILITE_wready;
  input [3:0]S_AXILITE_wstrb;
  input S_AXILITE_wvalid;
  input [9:0]S_AXI_LITE_W_araddr;
  output S_AXI_LITE_W_arready;
  input S_AXI_LITE_W_arvalid;
  input [9:0]S_AXI_LITE_W_awaddr;
  output S_AXI_LITE_W_awready;
  input S_AXI_LITE_W_awvalid;
  input S_AXI_LITE_W_bready;
  output [1:0]S_AXI_LITE_W_bresp;
  output S_AXI_LITE_W_bvalid;
  output [31:0]S_AXI_LITE_W_rdata;
  input S_AXI_LITE_W_rready;
  output [1:0]S_AXI_LITE_W_rresp;
  output S_AXI_LITE_W_rvalid;
  input [31:0]S_AXI_LITE_W_wdata;
  output S_AXI_LITE_W_wready;
  input S_AXI_LITE_W_wvalid;
  input [9:0]S_AXI_LITE_X_araddr;
  output S_AXI_LITE_X_arready;
  input S_AXI_LITE_X_arvalid;
  input [9:0]S_AXI_LITE_X_awaddr;
  output S_AXI_LITE_X_awready;
  input S_AXI_LITE_X_awvalid;
  input S_AXI_LITE_X_bready;
  output [1:0]S_AXI_LITE_X_bresp;
  output S_AXI_LITE_X_bvalid;
  output [31:0]S_AXI_LITE_X_rdata;
  input S_AXI_LITE_X_rready;
  output [1:0]S_AXI_LITE_X_rresp;
  output S_AXI_LITE_X_rvalid;
  input [31:0]S_AXI_LITE_X_wdata;
  output S_AXI_LITE_X_wready;
  input S_AXI_LITE_X_wvalid;
  input ap_clk;
  input ap_rst_n;

  wire [31:0]M_AXI_MM2S_W_araddr;
  wire [1:0]M_AXI_MM2S_W_arburst;
  wire [3:0]M_AXI_MM2S_W_arcache;
  wire [7:0]M_AXI_MM2S_W_arlen;
  wire [2:0]M_AXI_MM2S_W_arprot;
  wire M_AXI_MM2S_W_arready;
  wire [2:0]M_AXI_MM2S_W_arsize;
  wire M_AXI_MM2S_W_arvalid;
  wire [31:0]M_AXI_MM2S_W_rdata;
  wire M_AXI_MM2S_W_rlast;
  wire M_AXI_MM2S_W_rready;
  wire [1:0]M_AXI_MM2S_W_rresp;
  wire M_AXI_MM2S_W_rvalid;
  wire [31:0]M_AXI_MM2S_X_araddr;
  wire [1:0]M_AXI_MM2S_X_arburst;
  wire [3:0]M_AXI_MM2S_X_arcache;
  wire [7:0]M_AXI_MM2S_X_arlen;
  wire [2:0]M_AXI_MM2S_X_arprot;
  wire M_AXI_MM2S_X_arready;
  wire [2:0]M_AXI_MM2S_X_arsize;
  wire M_AXI_MM2S_X_arvalid;
  wire [31:0]M_AXI_MM2S_X_rdata;
  wire M_AXI_MM2S_X_rlast;
  wire M_AXI_MM2S_X_rready;
  wire [1:0]M_AXI_MM2S_X_rresp;
  wire M_AXI_MM2S_X_rvalid;
  wire [31:0]M_AXI_S2MM_W_awaddr;
  wire [1:0]M_AXI_S2MM_W_awburst;
  wire [3:0]M_AXI_S2MM_W_awcache;
  wire [7:0]M_AXI_S2MM_W_awlen;
  wire [2:0]M_AXI_S2MM_W_awprot;
  wire M_AXI_S2MM_W_awready;
  wire [2:0]M_AXI_S2MM_W_awsize;
  wire M_AXI_S2MM_W_awvalid;
  wire M_AXI_S2MM_W_bready;
  wire [1:0]M_AXI_S2MM_W_bresp;
  wire M_AXI_S2MM_W_bvalid;
  wire [31:0]M_AXI_S2MM_W_wdata;
  wire M_AXI_S2MM_W_wlast;
  wire M_AXI_S2MM_W_wready;
  wire [3:0]M_AXI_S2MM_W_wstrb;
  wire M_AXI_S2MM_W_wvalid;
  wire [31:0]M_AXI_S2MM_X_awaddr;
  wire [1:0]M_AXI_S2MM_X_awburst;
  wire [3:0]M_AXI_S2MM_X_awcache;
  wire [7:0]M_AXI_S2MM_X_awlen;
  wire [2:0]M_AXI_S2MM_X_awprot;
  wire M_AXI_S2MM_X_awready;
  wire [2:0]M_AXI_S2MM_X_awsize;
  wire M_AXI_S2MM_X_awvalid;
  wire M_AXI_S2MM_X_bready;
  wire [1:0]M_AXI_S2MM_X_bresp;
  wire M_AXI_S2MM_X_bvalid;
  wire [31:0]M_AXI_S2MM_X_wdata;
  wire M_AXI_S2MM_X_wlast;
  wire M_AXI_S2MM_X_wready;
  wire [3:0]M_AXI_S2MM_X_wstrb;
  wire M_AXI_S2MM_X_wvalid;
  wire [4:0]S_AXILITE_araddr;
  wire S_AXILITE_arready;
  wire S_AXILITE_arvalid;
  wire [4:0]S_AXILITE_awaddr;
  wire S_AXILITE_awready;
  wire S_AXILITE_awvalid;
  wire S_AXILITE_bready;
  wire [1:0]S_AXILITE_bresp;
  wire S_AXILITE_bvalid;
  wire [31:0]S_AXILITE_rdata;
  wire S_AXILITE_rready;
  wire [1:0]S_AXILITE_rresp;
  wire S_AXILITE_rvalid;
  wire [31:0]S_AXILITE_wdata;
  wire S_AXILITE_wready;
  wire [3:0]S_AXILITE_wstrb;
  wire S_AXILITE_wvalid;
  wire [9:0]S_AXI_LITE_W_araddr;
  wire S_AXI_LITE_W_arready;
  wire S_AXI_LITE_W_arvalid;
  wire [9:0]S_AXI_LITE_W_awaddr;
  wire S_AXI_LITE_W_awready;
  wire S_AXI_LITE_W_awvalid;
  wire S_AXI_LITE_W_bready;
  wire [1:0]S_AXI_LITE_W_bresp;
  wire S_AXI_LITE_W_bvalid;
  wire [31:0]S_AXI_LITE_W_rdata;
  wire S_AXI_LITE_W_rready;
  wire [1:0]S_AXI_LITE_W_rresp;
  wire S_AXI_LITE_W_rvalid;
  wire [31:0]S_AXI_LITE_W_wdata;
  wire S_AXI_LITE_W_wready;
  wire S_AXI_LITE_W_wvalid;
  wire [9:0]S_AXI_LITE_X_araddr;
  wire S_AXI_LITE_X_arready;
  wire S_AXI_LITE_X_arvalid;
  wire [9:0]S_AXI_LITE_X_awaddr;
  wire S_AXI_LITE_X_awready;
  wire S_AXI_LITE_X_awvalid;
  wire S_AXI_LITE_X_bready;
  wire [1:0]S_AXI_LITE_X_bresp;
  wire S_AXI_LITE_X_bvalid;
  wire [31:0]S_AXI_LITE_X_rdata;
  wire S_AXI_LITE_X_rready;
  wire [1:0]S_AXI_LITE_X_rresp;
  wire S_AXI_LITE_X_rvalid;
  wire [31:0]S_AXI_LITE_X_wdata;
  wire S_AXI_LITE_X_wready;
  wire S_AXI_LITE_X_wvalid;
  wire ap_clk;
  wire ap_rst_n;

  vadd vadd_i
       (.M_AXI_MM2S_W_araddr(M_AXI_MM2S_W_araddr),
        .M_AXI_MM2S_W_arburst(M_AXI_MM2S_W_arburst),
        .M_AXI_MM2S_W_arcache(M_AXI_MM2S_W_arcache),
        .M_AXI_MM2S_W_arlen(M_AXI_MM2S_W_arlen),
        .M_AXI_MM2S_W_arprot(M_AXI_MM2S_W_arprot),
        .M_AXI_MM2S_W_arready(M_AXI_MM2S_W_arready),
        .M_AXI_MM2S_W_arsize(M_AXI_MM2S_W_arsize),
        .M_AXI_MM2S_W_arvalid(M_AXI_MM2S_W_arvalid),
        .M_AXI_MM2S_W_rdata(M_AXI_MM2S_W_rdata),
        .M_AXI_MM2S_W_rlast(M_AXI_MM2S_W_rlast),
        .M_AXI_MM2S_W_rready(M_AXI_MM2S_W_rready),
        .M_AXI_MM2S_W_rresp(M_AXI_MM2S_W_rresp),
        .M_AXI_MM2S_W_rvalid(M_AXI_MM2S_W_rvalid),
        .M_AXI_MM2S_X_araddr(M_AXI_MM2S_X_araddr),
        .M_AXI_MM2S_X_arburst(M_AXI_MM2S_X_arburst),
        .M_AXI_MM2S_X_arcache(M_AXI_MM2S_X_arcache),
        .M_AXI_MM2S_X_arlen(M_AXI_MM2S_X_arlen),
        .M_AXI_MM2S_X_arprot(M_AXI_MM2S_X_arprot),
        .M_AXI_MM2S_X_arready(M_AXI_MM2S_X_arready),
        .M_AXI_MM2S_X_arsize(M_AXI_MM2S_X_arsize),
        .M_AXI_MM2S_X_arvalid(M_AXI_MM2S_X_arvalid),
        .M_AXI_MM2S_X_rdata(M_AXI_MM2S_X_rdata),
        .M_AXI_MM2S_X_rlast(M_AXI_MM2S_X_rlast),
        .M_AXI_MM2S_X_rready(M_AXI_MM2S_X_rready),
        .M_AXI_MM2S_X_rresp(M_AXI_MM2S_X_rresp),
        .M_AXI_MM2S_X_rvalid(M_AXI_MM2S_X_rvalid),
        .M_AXI_S2MM_W_awaddr(M_AXI_S2MM_W_awaddr),
        .M_AXI_S2MM_W_awburst(M_AXI_S2MM_W_awburst),
        .M_AXI_S2MM_W_awcache(M_AXI_S2MM_W_awcache),
        .M_AXI_S2MM_W_awlen(M_AXI_S2MM_W_awlen),
        .M_AXI_S2MM_W_awprot(M_AXI_S2MM_W_awprot),
        .M_AXI_S2MM_W_awready(M_AXI_S2MM_W_awready),
        .M_AXI_S2MM_W_awsize(M_AXI_S2MM_W_awsize),
        .M_AXI_S2MM_W_awvalid(M_AXI_S2MM_W_awvalid),
        .M_AXI_S2MM_W_bready(M_AXI_S2MM_W_bready),
        .M_AXI_S2MM_W_bresp(M_AXI_S2MM_W_bresp),
        .M_AXI_S2MM_W_bvalid(M_AXI_S2MM_W_bvalid),
        .M_AXI_S2MM_W_wdata(M_AXI_S2MM_W_wdata),
        .M_AXI_S2MM_W_wlast(M_AXI_S2MM_W_wlast),
        .M_AXI_S2MM_W_wready(M_AXI_S2MM_W_wready),
        .M_AXI_S2MM_W_wstrb(M_AXI_S2MM_W_wstrb),
        .M_AXI_S2MM_W_wvalid(M_AXI_S2MM_W_wvalid),
        .M_AXI_S2MM_X_awaddr(M_AXI_S2MM_X_awaddr),
        .M_AXI_S2MM_X_awburst(M_AXI_S2MM_X_awburst),
        .M_AXI_S2MM_X_awcache(M_AXI_S2MM_X_awcache),
        .M_AXI_S2MM_X_awlen(M_AXI_S2MM_X_awlen),
        .M_AXI_S2MM_X_awprot(M_AXI_S2MM_X_awprot),
        .M_AXI_S2MM_X_awready(M_AXI_S2MM_X_awready),
        .M_AXI_S2MM_X_awsize(M_AXI_S2MM_X_awsize),
        .M_AXI_S2MM_X_awvalid(M_AXI_S2MM_X_awvalid),
        .M_AXI_S2MM_X_bready(M_AXI_S2MM_X_bready),
        .M_AXI_S2MM_X_bresp(M_AXI_S2MM_X_bresp),
        .M_AXI_S2MM_X_bvalid(M_AXI_S2MM_X_bvalid),
        .M_AXI_S2MM_X_wdata(M_AXI_S2MM_X_wdata),
        .M_AXI_S2MM_X_wlast(M_AXI_S2MM_X_wlast),
        .M_AXI_S2MM_X_wready(M_AXI_S2MM_X_wready),
        .M_AXI_S2MM_X_wstrb(M_AXI_S2MM_X_wstrb),
        .M_AXI_S2MM_X_wvalid(M_AXI_S2MM_X_wvalid),
        .S_AXILITE_araddr(S_AXILITE_araddr),
        .S_AXILITE_arready(S_AXILITE_arready),
        .S_AXILITE_arvalid(S_AXILITE_arvalid),
        .S_AXILITE_awaddr(S_AXILITE_awaddr),
        .S_AXILITE_awready(S_AXILITE_awready),
        .S_AXILITE_awvalid(S_AXILITE_awvalid),
        .S_AXILITE_bready(S_AXILITE_bready),
        .S_AXILITE_bresp(S_AXILITE_bresp),
        .S_AXILITE_bvalid(S_AXILITE_bvalid),
        .S_AXILITE_rdata(S_AXILITE_rdata),
        .S_AXILITE_rready(S_AXILITE_rready),
        .S_AXILITE_rresp(S_AXILITE_rresp),
        .S_AXILITE_rvalid(S_AXILITE_rvalid),
        .S_AXILITE_wdata(S_AXILITE_wdata),
        .S_AXILITE_wready(S_AXILITE_wready),
        .S_AXILITE_wstrb(S_AXILITE_wstrb),
        .S_AXILITE_wvalid(S_AXILITE_wvalid),
        .S_AXI_LITE_W_araddr(S_AXI_LITE_W_araddr),
        .S_AXI_LITE_W_arready(S_AXI_LITE_W_arready),
        .S_AXI_LITE_W_arvalid(S_AXI_LITE_W_arvalid),
        .S_AXI_LITE_W_awaddr(S_AXI_LITE_W_awaddr),
        .S_AXI_LITE_W_awready(S_AXI_LITE_W_awready),
        .S_AXI_LITE_W_awvalid(S_AXI_LITE_W_awvalid),
        .S_AXI_LITE_W_bready(S_AXI_LITE_W_bready),
        .S_AXI_LITE_W_bresp(S_AXI_LITE_W_bresp),
        .S_AXI_LITE_W_bvalid(S_AXI_LITE_W_bvalid),
        .S_AXI_LITE_W_rdata(S_AXI_LITE_W_rdata),
        .S_AXI_LITE_W_rready(S_AXI_LITE_W_rready),
        .S_AXI_LITE_W_rresp(S_AXI_LITE_W_rresp),
        .S_AXI_LITE_W_rvalid(S_AXI_LITE_W_rvalid),
        .S_AXI_LITE_W_wdata(S_AXI_LITE_W_wdata),
        .S_AXI_LITE_W_wready(S_AXI_LITE_W_wready),
        .S_AXI_LITE_W_wvalid(S_AXI_LITE_W_wvalid),
        .S_AXI_LITE_X_araddr(S_AXI_LITE_X_araddr),
        .S_AXI_LITE_X_arready(S_AXI_LITE_X_arready),
        .S_AXI_LITE_X_arvalid(S_AXI_LITE_X_arvalid),
        .S_AXI_LITE_X_awaddr(S_AXI_LITE_X_awaddr),
        .S_AXI_LITE_X_awready(S_AXI_LITE_X_awready),
        .S_AXI_LITE_X_awvalid(S_AXI_LITE_X_awvalid),
        .S_AXI_LITE_X_bready(S_AXI_LITE_X_bready),
        .S_AXI_LITE_X_bresp(S_AXI_LITE_X_bresp),
        .S_AXI_LITE_X_bvalid(S_AXI_LITE_X_bvalid),
        .S_AXI_LITE_X_rdata(S_AXI_LITE_X_rdata),
        .S_AXI_LITE_X_rready(S_AXI_LITE_X_rready),
        .S_AXI_LITE_X_rresp(S_AXI_LITE_X_rresp),
        .S_AXI_LITE_X_rvalid(S_AXI_LITE_X_rvalid),
        .S_AXI_LITE_X_wdata(S_AXI_LITE_X_wdata),
        .S_AXI_LITE_X_wready(S_AXI_LITE_X_wready),
        .S_AXI_LITE_X_wvalid(S_AXI_LITE_X_wvalid),
        .ap_clk(ap_clk),
        .ap_rst_n(ap_rst_n));
endmodule
