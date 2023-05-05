// (c) Copyright 1995-2023 Xilinx, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of Xilinx, Inc. and is protected under U.S. and
// international copyright and other intellectual property
// laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// Xilinx, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) Xilinx shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or Xilinx had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// Xilinx products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of Xilinx products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
// 
// DO NOT MODIFY THIS FILE.


//------------------------------------------------------------------------------------
// Filename:    design_1_zynq_ultra_ps_e_0_0_stub.sv
// Description: This HDL file is intended to be used with following simulators only:
//
//   Vivado Simulator (XSim)
//   Cadence Xcelium Simulator
//
//------------------------------------------------------------------------------------
`timescale 1ps/1ps

`ifdef XILINX_SIMULATOR

`ifndef XILINX_SIMULATOR_BITASBOOL
`define XILINX_SIMULATOR_BITASBOOL
typedef bit bit_as_bool;
`endif

(* SC_MODULE_EXPORT *)
module design_1_zynq_ultra_ps_e_0_0 (
  input bit_as_bool maxihpm0_fpd_aclk,
  output bit [15 : 0] maxigp0_awid,
  output bit [39 : 0] maxigp0_awaddr,
  output bit [7 : 0] maxigp0_awlen,
  output bit [2 : 0] maxigp0_awsize,
  output bit [1 : 0] maxigp0_awburst,
  output bit_as_bool maxigp0_awlock,
  output bit [3 : 0] maxigp0_awcache,
  output bit [2 : 0] maxigp0_awprot,
  output bit_as_bool maxigp0_awvalid,
  output bit [15 : 0] maxigp0_awuser,
  input bit_as_bool maxigp0_awready,
  output bit [127 : 0] maxigp0_wdata,
  output bit [15 : 0] maxigp0_wstrb,
  output bit_as_bool maxigp0_wlast,
  output bit_as_bool maxigp0_wvalid,
  input bit_as_bool maxigp0_wready,
  input bit [15 : 0] maxigp0_bid,
  input bit [1 : 0] maxigp0_bresp,
  input bit_as_bool maxigp0_bvalid,
  output bit_as_bool maxigp0_bready,
  output bit [15 : 0] maxigp0_arid,
  output bit [39 : 0] maxigp0_araddr,
  output bit [7 : 0] maxigp0_arlen,
  output bit [2 : 0] maxigp0_arsize,
  output bit [1 : 0] maxigp0_arburst,
  output bit_as_bool maxigp0_arlock,
  output bit [3 : 0] maxigp0_arcache,
  output bit [2 : 0] maxigp0_arprot,
  output bit_as_bool maxigp0_arvalid,
  output bit [15 : 0] maxigp0_aruser,
  input bit_as_bool maxigp0_arready,
  input bit [15 : 0] maxigp0_rid,
  input bit [127 : 0] maxigp0_rdata,
  input bit [1 : 0] maxigp0_rresp,
  input bit_as_bool maxigp0_rlast,
  input bit_as_bool maxigp0_rvalid,
  output bit_as_bool maxigp0_rready,
  output bit [3 : 0] maxigp0_awqos,
  output bit [3 : 0] maxigp0_arqos,
  input bit_as_bool saxiacp_fpd_aclk,
  input bit [1 : 0] saxiacp_awuser,
  input bit [1 : 0] saxiacp_aruser,
  input bit [4 : 0] saxiacp_awid,
  input bit [39 : 0] saxiacp_awaddr,
  input bit [7 : 0] saxiacp_awlen,
  input bit [2 : 0] saxiacp_awsize,
  input bit [1 : 0] saxiacp_awburst,
  input bit_as_bool saxiacp_awlock,
  input bit [3 : 0] saxiacp_awcache,
  input bit [2 : 0] saxiacp_awprot,
  input bit_as_bool saxiacp_awvalid,
  output bit_as_bool saxiacp_awready,
  input bit [127 : 0] saxiacp_wdata,
  input bit [15 : 0] saxiacp_wstrb,
  input bit_as_bool saxiacp_wlast,
  input bit_as_bool saxiacp_wvalid,
  output bit_as_bool saxiacp_wready,
  output bit [4 : 0] saxiacp_bid,
  output bit [1 : 0] saxiacp_bresp,
  output bit_as_bool saxiacp_bvalid,
  input bit_as_bool saxiacp_bready,
  input bit [4 : 0] saxiacp_arid,
  input bit [39 : 0] saxiacp_araddr,
  input bit [7 : 0] saxiacp_arlen,
  input bit [2 : 0] saxiacp_arsize,
  input bit [1 : 0] saxiacp_arburst,
  input bit_as_bool saxiacp_arlock,
  input bit [3 : 0] saxiacp_arcache,
  input bit [2 : 0] saxiacp_arprot,
  input bit_as_bool saxiacp_arvalid,
  output bit_as_bool saxiacp_arready,
  output bit [4 : 0] saxiacp_rid,
  output bit [127 : 0] saxiacp_rdata,
  output bit [1 : 0] saxiacp_rresp,
  output bit_as_bool saxiacp_rlast,
  output bit_as_bool saxiacp_rvalid,
  input bit_as_bool saxiacp_rready,
  input bit [3 : 0] saxiacp_awqos,
  input bit [3 : 0] saxiacp_arqos,
  output bit_as_bool pl_resetn0,
  input bit_as_bool pl_acpinact,
  output bit_as_bool pl_clk0
);
endmodule
`endif

`ifdef XCELIUM
(* XMSC_MODULE_EXPORT *)
module design_1_zynq_ultra_ps_e_0_0 (maxihpm0_fpd_aclk,maxigp0_awid,maxigp0_awaddr,maxigp0_awlen,maxigp0_awsize,maxigp0_awburst,maxigp0_awlock,maxigp0_awcache,maxigp0_awprot,maxigp0_awvalid,maxigp0_awuser,maxigp0_awready,maxigp0_wdata,maxigp0_wstrb,maxigp0_wlast,maxigp0_wvalid,maxigp0_wready,maxigp0_bid,maxigp0_bresp,maxigp0_bvalid,maxigp0_bready,maxigp0_arid,maxigp0_araddr,maxigp0_arlen,maxigp0_arsize,maxigp0_arburst,maxigp0_arlock,maxigp0_arcache,maxigp0_arprot,maxigp0_arvalid,maxigp0_aruser,maxigp0_arready,maxigp0_rid,maxigp0_rdata,maxigp0_rresp,maxigp0_rlast,maxigp0_rvalid,maxigp0_rready,maxigp0_awqos,maxigp0_arqos,saxiacp_fpd_aclk,saxiacp_awuser,saxiacp_aruser,saxiacp_awid,saxiacp_awaddr,saxiacp_awlen,saxiacp_awsize,saxiacp_awburst,saxiacp_awlock,saxiacp_awcache,saxiacp_awprot,saxiacp_awvalid,saxiacp_awready,saxiacp_wdata,saxiacp_wstrb,saxiacp_wlast,saxiacp_wvalid,saxiacp_wready,saxiacp_bid,saxiacp_bresp,saxiacp_bvalid,saxiacp_bready,saxiacp_arid,saxiacp_araddr,saxiacp_arlen,saxiacp_arsize,saxiacp_arburst,saxiacp_arlock,saxiacp_arcache,saxiacp_arprot,saxiacp_arvalid,saxiacp_arready,saxiacp_rid,saxiacp_rdata,saxiacp_rresp,saxiacp_rlast,saxiacp_rvalid,saxiacp_rready,saxiacp_awqos,saxiacp_arqos,pl_resetn0,pl_acpinact,pl_clk0)
(* integer foreign = "SystemC";
*);
  input bit maxihpm0_fpd_aclk;
  output wire [15 : 0] maxigp0_awid;
  output wire [39 : 0] maxigp0_awaddr;
  output wire [7 : 0] maxigp0_awlen;
  output wire [2 : 0] maxigp0_awsize;
  output wire [1 : 0] maxigp0_awburst;
  output wire maxigp0_awlock;
  output wire [3 : 0] maxigp0_awcache;
  output wire [2 : 0] maxigp0_awprot;
  output wire maxigp0_awvalid;
  output wire [15 : 0] maxigp0_awuser;
  input bit maxigp0_awready;
  output wire [127 : 0] maxigp0_wdata;
  output wire [15 : 0] maxigp0_wstrb;
  output wire maxigp0_wlast;
  output wire maxigp0_wvalid;
  input bit maxigp0_wready;
  input bit [15 : 0] maxigp0_bid;
  input bit [1 : 0] maxigp0_bresp;
  input bit maxigp0_bvalid;
  output wire maxigp0_bready;
  output wire [15 : 0] maxigp0_arid;
  output wire [39 : 0] maxigp0_araddr;
  output wire [7 : 0] maxigp0_arlen;
  output wire [2 : 0] maxigp0_arsize;
  output wire [1 : 0] maxigp0_arburst;
  output wire maxigp0_arlock;
  output wire [3 : 0] maxigp0_arcache;
  output wire [2 : 0] maxigp0_arprot;
  output wire maxigp0_arvalid;
  output wire [15 : 0] maxigp0_aruser;
  input bit maxigp0_arready;
  input bit [15 : 0] maxigp0_rid;
  input bit [127 : 0] maxigp0_rdata;
  input bit [1 : 0] maxigp0_rresp;
  input bit maxigp0_rlast;
  input bit maxigp0_rvalid;
  output wire maxigp0_rready;
  output wire [3 : 0] maxigp0_awqos;
  output wire [3 : 0] maxigp0_arqos;
  input bit saxiacp_fpd_aclk;
  input bit [1 : 0] saxiacp_awuser;
  input bit [1 : 0] saxiacp_aruser;
  input bit [4 : 0] saxiacp_awid;
  input bit [39 : 0] saxiacp_awaddr;
  input bit [7 : 0] saxiacp_awlen;
  input bit [2 : 0] saxiacp_awsize;
  input bit [1 : 0] saxiacp_awburst;
  input bit saxiacp_awlock;
  input bit [3 : 0] saxiacp_awcache;
  input bit [2 : 0] saxiacp_awprot;
  input bit saxiacp_awvalid;
  output wire saxiacp_awready;
  input bit [127 : 0] saxiacp_wdata;
  input bit [15 : 0] saxiacp_wstrb;
  input bit saxiacp_wlast;
  input bit saxiacp_wvalid;
  output wire saxiacp_wready;
  output wire [4 : 0] saxiacp_bid;
  output wire [1 : 0] saxiacp_bresp;
  output wire saxiacp_bvalid;
  input bit saxiacp_bready;
  input bit [4 : 0] saxiacp_arid;
  input bit [39 : 0] saxiacp_araddr;
  input bit [7 : 0] saxiacp_arlen;
  input bit [2 : 0] saxiacp_arsize;
  input bit [1 : 0] saxiacp_arburst;
  input bit saxiacp_arlock;
  input bit [3 : 0] saxiacp_arcache;
  input bit [2 : 0] saxiacp_arprot;
  input bit saxiacp_arvalid;
  output wire saxiacp_arready;
  output wire [4 : 0] saxiacp_rid;
  output wire [127 : 0] saxiacp_rdata;
  output wire [1 : 0] saxiacp_rresp;
  output wire saxiacp_rlast;
  output wire saxiacp_rvalid;
  input bit saxiacp_rready;
  input bit [3 : 0] saxiacp_awqos;
  input bit [3 : 0] saxiacp_arqos;
  output wire pl_resetn0;
  input bit pl_acpinact;
  output wire pl_clk0;
endmodule
`endif
