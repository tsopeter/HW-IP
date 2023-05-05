// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
// Tool Version Limit: 2019.12
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
/***************************** Include Files *********************************/
#include "xvector_add.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XVector_add_CfgInitialize(XVector_add *InstancePtr, XVector_add_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Control_BaseAddress = ConfigPtr->Control_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

u32 XVector_add_Get_y(XVector_add *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XVector_add_ReadReg(InstancePtr->Control_BaseAddress, XVECTOR_ADD_CONTROL_ADDR_Y_DATA);
    return Data;
}

u32 XVector_add_Get_y_vld(XVector_add *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XVector_add_ReadReg(InstancePtr->Control_BaseAddress, XVECTOR_ADD_CONTROL_ADDR_Y_CTRL);
    return Data & 0x1;
}

