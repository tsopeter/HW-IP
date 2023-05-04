// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
// Tool Version Limit: 2019.12
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
/***************************** Include Files *********************************/
#include "xdot_product_interface.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XDot_product_interface_CfgInitialize(XDot_product_interface *InstancePtr, XDot_product_interface_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Control_BaseAddress = ConfigPtr->Control_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XDot_product_interface_Set_n(XDot_product_interface *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XDot_product_interface_WriteReg(InstancePtr->Control_BaseAddress, XDOT_PRODUCT_INTERFACE_CONTROL_ADDR_N_DATA, Data);
}

u32 XDot_product_interface_Get_n(XDot_product_interface *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XDot_product_interface_ReadReg(InstancePtr->Control_BaseAddress, XDOT_PRODUCT_INTERFACE_CONTROL_ADDR_N_DATA);
    return Data;
}

void XDot_product_interface_Set_m(XDot_product_interface *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XDot_product_interface_WriteReg(InstancePtr->Control_BaseAddress, XDOT_PRODUCT_INTERFACE_CONTROL_ADDR_M_DATA, Data);
}

u32 XDot_product_interface_Get_m(XDot_product_interface *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XDot_product_interface_ReadReg(InstancePtr->Control_BaseAddress, XDOT_PRODUCT_INTERFACE_CONTROL_ADDR_M_DATA);
    return Data;
}

void XDot_product_interface_Set_h(XDot_product_interface *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XDot_product_interface_WriteReg(InstancePtr->Control_BaseAddress, XDOT_PRODUCT_INTERFACE_CONTROL_ADDR_H_DATA, Data);
}

u32 XDot_product_interface_Get_h(XDot_product_interface *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XDot_product_interface_ReadReg(InstancePtr->Control_BaseAddress, XDOT_PRODUCT_INTERFACE_CONTROL_ADDR_H_DATA);
    return Data;
}

u32 XDot_product_interface_Get_A_BaseAddress(XDot_product_interface *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XDOT_PRODUCT_INTERFACE_CONTROL_ADDR_A_BASE);
}

u32 XDot_product_interface_Get_A_HighAddress(XDot_product_interface *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XDOT_PRODUCT_INTERFACE_CONTROL_ADDR_A_HIGH);
}

u32 XDot_product_interface_Get_A_TotalBytes(XDot_product_interface *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (XDOT_PRODUCT_INTERFACE_CONTROL_ADDR_A_HIGH - XDOT_PRODUCT_INTERFACE_CONTROL_ADDR_A_BASE + 1);
}

u32 XDot_product_interface_Get_A_BitWidth(XDot_product_interface *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XDOT_PRODUCT_INTERFACE_CONTROL_WIDTH_A;
}

u32 XDot_product_interface_Get_A_Depth(XDot_product_interface *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XDOT_PRODUCT_INTERFACE_CONTROL_DEPTH_A;
}

u32 XDot_product_interface_Write_A_Words(XDot_product_interface *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XDOT_PRODUCT_INTERFACE_CONTROL_ADDR_A_HIGH - XDOT_PRODUCT_INTERFACE_CONTROL_ADDR_A_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(int *)(InstancePtr->Control_BaseAddress + XDOT_PRODUCT_INTERFACE_CONTROL_ADDR_A_BASE + (offset + i)*4) = *(data + i);
    }
    return length;
}

u32 XDot_product_interface_Read_A_Words(XDot_product_interface *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XDOT_PRODUCT_INTERFACE_CONTROL_ADDR_A_HIGH - XDOT_PRODUCT_INTERFACE_CONTROL_ADDR_A_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(int *)(InstancePtr->Control_BaseAddress + XDOT_PRODUCT_INTERFACE_CONTROL_ADDR_A_BASE + (offset + i)*4);
    }
    return length;
}

u32 XDot_product_interface_Write_A_Bytes(XDot_product_interface *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XDOT_PRODUCT_INTERFACE_CONTROL_ADDR_A_HIGH - XDOT_PRODUCT_INTERFACE_CONTROL_ADDR_A_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(char *)(InstancePtr->Control_BaseAddress + XDOT_PRODUCT_INTERFACE_CONTROL_ADDR_A_BASE + offset + i) = *(data + i);
    }
    return length;
}

u32 XDot_product_interface_Read_A_Bytes(XDot_product_interface *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XDOT_PRODUCT_INTERFACE_CONTROL_ADDR_A_HIGH - XDOT_PRODUCT_INTERFACE_CONTROL_ADDR_A_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(char *)(InstancePtr->Control_BaseAddress + XDOT_PRODUCT_INTERFACE_CONTROL_ADDR_A_BASE + offset + i);
    }
    return length;
}

u32 XDot_product_interface_Get_B_BaseAddress(XDot_product_interface *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XDOT_PRODUCT_INTERFACE_CONTROL_ADDR_B_BASE);
}

u32 XDot_product_interface_Get_B_HighAddress(XDot_product_interface *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XDOT_PRODUCT_INTERFACE_CONTROL_ADDR_B_HIGH);
}

u32 XDot_product_interface_Get_B_TotalBytes(XDot_product_interface *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (XDOT_PRODUCT_INTERFACE_CONTROL_ADDR_B_HIGH - XDOT_PRODUCT_INTERFACE_CONTROL_ADDR_B_BASE + 1);
}

u32 XDot_product_interface_Get_B_BitWidth(XDot_product_interface *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XDOT_PRODUCT_INTERFACE_CONTROL_WIDTH_B;
}

u32 XDot_product_interface_Get_B_Depth(XDot_product_interface *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XDOT_PRODUCT_INTERFACE_CONTROL_DEPTH_B;
}

u32 XDot_product_interface_Write_B_Words(XDot_product_interface *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XDOT_PRODUCT_INTERFACE_CONTROL_ADDR_B_HIGH - XDOT_PRODUCT_INTERFACE_CONTROL_ADDR_B_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(int *)(InstancePtr->Control_BaseAddress + XDOT_PRODUCT_INTERFACE_CONTROL_ADDR_B_BASE + (offset + i)*4) = *(data + i);
    }
    return length;
}

u32 XDot_product_interface_Read_B_Words(XDot_product_interface *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XDOT_PRODUCT_INTERFACE_CONTROL_ADDR_B_HIGH - XDOT_PRODUCT_INTERFACE_CONTROL_ADDR_B_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(int *)(InstancePtr->Control_BaseAddress + XDOT_PRODUCT_INTERFACE_CONTROL_ADDR_B_BASE + (offset + i)*4);
    }
    return length;
}

u32 XDot_product_interface_Write_B_Bytes(XDot_product_interface *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XDOT_PRODUCT_INTERFACE_CONTROL_ADDR_B_HIGH - XDOT_PRODUCT_INTERFACE_CONTROL_ADDR_B_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(char *)(InstancePtr->Control_BaseAddress + XDOT_PRODUCT_INTERFACE_CONTROL_ADDR_B_BASE + offset + i) = *(data + i);
    }
    return length;
}

u32 XDot_product_interface_Read_B_Bytes(XDot_product_interface *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XDOT_PRODUCT_INTERFACE_CONTROL_ADDR_B_HIGH - XDOT_PRODUCT_INTERFACE_CONTROL_ADDR_B_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(char *)(InstancePtr->Control_BaseAddress + XDOT_PRODUCT_INTERFACE_CONTROL_ADDR_B_BASE + offset + i);
    }
    return length;
}

u32 XDot_product_interface_Get_C_BaseAddress(XDot_product_interface *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XDOT_PRODUCT_INTERFACE_CONTROL_ADDR_C_BASE);
}

u32 XDot_product_interface_Get_C_HighAddress(XDot_product_interface *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XDOT_PRODUCT_INTERFACE_CONTROL_ADDR_C_HIGH);
}

u32 XDot_product_interface_Get_C_TotalBytes(XDot_product_interface *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (XDOT_PRODUCT_INTERFACE_CONTROL_ADDR_C_HIGH - XDOT_PRODUCT_INTERFACE_CONTROL_ADDR_C_BASE + 1);
}

u32 XDot_product_interface_Get_C_BitWidth(XDot_product_interface *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XDOT_PRODUCT_INTERFACE_CONTROL_WIDTH_C;
}

u32 XDot_product_interface_Get_C_Depth(XDot_product_interface *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XDOT_PRODUCT_INTERFACE_CONTROL_DEPTH_C;
}

u32 XDot_product_interface_Write_C_Words(XDot_product_interface *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XDOT_PRODUCT_INTERFACE_CONTROL_ADDR_C_HIGH - XDOT_PRODUCT_INTERFACE_CONTROL_ADDR_C_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(int *)(InstancePtr->Control_BaseAddress + XDOT_PRODUCT_INTERFACE_CONTROL_ADDR_C_BASE + (offset + i)*4) = *(data + i);
    }
    return length;
}

u32 XDot_product_interface_Read_C_Words(XDot_product_interface *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XDOT_PRODUCT_INTERFACE_CONTROL_ADDR_C_HIGH - XDOT_PRODUCT_INTERFACE_CONTROL_ADDR_C_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(int *)(InstancePtr->Control_BaseAddress + XDOT_PRODUCT_INTERFACE_CONTROL_ADDR_C_BASE + (offset + i)*4);
    }
    return length;
}

u32 XDot_product_interface_Write_C_Bytes(XDot_product_interface *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XDOT_PRODUCT_INTERFACE_CONTROL_ADDR_C_HIGH - XDOT_PRODUCT_INTERFACE_CONTROL_ADDR_C_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(char *)(InstancePtr->Control_BaseAddress + XDOT_PRODUCT_INTERFACE_CONTROL_ADDR_C_BASE + offset + i) = *(data + i);
    }
    return length;
}

u32 XDot_product_interface_Read_C_Bytes(XDot_product_interface *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XDOT_PRODUCT_INTERFACE_CONTROL_ADDR_C_HIGH - XDOT_PRODUCT_INTERFACE_CONTROL_ADDR_C_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(char *)(InstancePtr->Control_BaseAddress + XDOT_PRODUCT_INTERFACE_CONTROL_ADDR_C_BASE + offset + i);
    }
    return length;
}

