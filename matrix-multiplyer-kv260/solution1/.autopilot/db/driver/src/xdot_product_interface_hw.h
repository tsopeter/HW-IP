// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
// Tool Version Limit: 2019.12
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
// control
// 0x000000 : reserved
// 0x000004 : reserved
// 0x000008 : reserved
// 0x00000c : reserved
// 0x000010 : Data signal of n
//            bit 31~0 - n[31:0] (Read/Write)
// 0x000014 : reserved
// 0x000018 : Data signal of m
//            bit 31~0 - m[31:0] (Read/Write)
// 0x00001c : reserved
// 0x000020 : Data signal of h
//            bit 31~0 - h[31:0] (Read/Write)
// 0x000024 : reserved
// 0x100000 ~
// 0x1fffff : Memory 'A' (1048576 * 8b)
//            Word n : bit [ 7: 0] - A[4n]
//                     bit [15: 8] - A[4n+1]
//                     bit [23:16] - A[4n+2]
//                     bit [31:24] - A[4n+3]
// 0x200000 ~
// 0x2fffff : Memory 'B' (1048576 * 8b)
//            Word n : bit [ 7: 0] - B[4n]
//                     bit [15: 8] - B[4n+1]
//                     bit [23:16] - B[4n+2]
//                     bit [31:24] - B[4n+3]
// 0x300000 ~
// 0x3fffff : Memory 'C' (1048576 * 8b)
//            Word n : bit [ 7: 0] - C[4n]
//                     bit [15: 8] - C[4n+1]
//                     bit [23:16] - C[4n+2]
//                     bit [31:24] - C[4n+3]
// (SC = Self Clear, COR = Clear on Read, TOW = Toggle on Write, COH = Clear on Handshake)

#define XDOT_PRODUCT_INTERFACE_CONTROL_ADDR_N_DATA 0x000010
#define XDOT_PRODUCT_INTERFACE_CONTROL_BITS_N_DATA 32
#define XDOT_PRODUCT_INTERFACE_CONTROL_ADDR_M_DATA 0x000018
#define XDOT_PRODUCT_INTERFACE_CONTROL_BITS_M_DATA 32
#define XDOT_PRODUCT_INTERFACE_CONTROL_ADDR_H_DATA 0x000020
#define XDOT_PRODUCT_INTERFACE_CONTROL_BITS_H_DATA 32
#define XDOT_PRODUCT_INTERFACE_CONTROL_ADDR_A_BASE 0x100000
#define XDOT_PRODUCT_INTERFACE_CONTROL_ADDR_A_HIGH 0x1fffff
#define XDOT_PRODUCT_INTERFACE_CONTROL_WIDTH_A     8
#define XDOT_PRODUCT_INTERFACE_CONTROL_DEPTH_A     1048576
#define XDOT_PRODUCT_INTERFACE_CONTROL_ADDR_B_BASE 0x200000
#define XDOT_PRODUCT_INTERFACE_CONTROL_ADDR_B_HIGH 0x2fffff
#define XDOT_PRODUCT_INTERFACE_CONTROL_WIDTH_B     8
#define XDOT_PRODUCT_INTERFACE_CONTROL_DEPTH_B     1048576
#define XDOT_PRODUCT_INTERFACE_CONTROL_ADDR_C_BASE 0x300000
#define XDOT_PRODUCT_INTERFACE_CONTROL_ADDR_C_HIGH 0x3fffff
#define XDOT_PRODUCT_INTERFACE_CONTROL_WIDTH_C     8
#define XDOT_PRODUCT_INTERFACE_CONTROL_DEPTH_C     1048576

