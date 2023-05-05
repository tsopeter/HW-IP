// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
// Tool Version Limit: 2019.12
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
// control
// 0x00 : reserved
// 0x04 : reserved
// 0x08 : reserved
// 0x0c : reserved
// 0x10 : Data signal of y
//        bit 7~0 - y[7:0] (Read)
//        others  - reserved
// 0x14 : Control signal of y
//        bit 0  - y_ap_vld (Read/COR)
//        others - reserved
// (SC = Self Clear, COR = Clear on Read, TOW = Toggle on Write, COH = Clear on Handshake)

#define XVECTOR_ADD_CONTROL_ADDR_Y_DATA 0x10
#define XVECTOR_ADD_CONTROL_BITS_Y_DATA 8
#define XVECTOR_ADD_CONTROL_ADDR_Y_CTRL 0x14

