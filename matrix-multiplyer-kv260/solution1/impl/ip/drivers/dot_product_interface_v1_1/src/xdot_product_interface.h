// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
// Tool Version Limit: 2019.12
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef XDOT_PRODUCT_INTERFACE_H
#define XDOT_PRODUCT_INTERFACE_H

#ifdef __cplusplus
extern "C" {
#endif

/***************************** Include Files *********************************/
#ifndef __linux__
#include "xil_types.h"
#include "xil_assert.h"
#include "xstatus.h"
#include "xil_io.h"
#else
#include <stdint.h>
#include <assert.h>
#include <dirent.h>
#include <fcntl.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/mman.h>
#include <unistd.h>
#include <stddef.h>
#endif
#include "xdot_product_interface_hw.h"

/**************************** Type Definitions ******************************/
#ifdef __linux__
typedef uint8_t u8;
typedef uint16_t u16;
typedef uint32_t u32;
typedef uint64_t u64;
#else
typedef struct {
    u16 DeviceId;
    u64 Control_BaseAddress;
} XDot_product_interface_Config;
#endif

typedef struct {
    u64 Control_BaseAddress;
    u32 IsReady;
} XDot_product_interface;

typedef u32 word_type;

/***************** Macros (Inline Functions) Definitions *********************/
#ifndef __linux__
#define XDot_product_interface_WriteReg(BaseAddress, RegOffset, Data) \
    Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))
#define XDot_product_interface_ReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))
#else
#define XDot_product_interface_WriteReg(BaseAddress, RegOffset, Data) \
    *(volatile u32*)((BaseAddress) + (RegOffset)) = (u32)(Data)
#define XDot_product_interface_ReadReg(BaseAddress, RegOffset) \
    *(volatile u32*)((BaseAddress) + (RegOffset))

#define Xil_AssertVoid(expr)    assert(expr)
#define Xil_AssertNonvoid(expr) assert(expr)

#define XST_SUCCESS             0
#define XST_DEVICE_NOT_FOUND    2
#define XST_OPEN_DEVICE_FAILED  3
#define XIL_COMPONENT_IS_READY  1
#endif

/************************** Function Prototypes *****************************/
#ifndef __linux__
int XDot_product_interface_Initialize(XDot_product_interface *InstancePtr, u16 DeviceId);
XDot_product_interface_Config* XDot_product_interface_LookupConfig(u16 DeviceId);
int XDot_product_interface_CfgInitialize(XDot_product_interface *InstancePtr, XDot_product_interface_Config *ConfigPtr);
#else
int XDot_product_interface_Initialize(XDot_product_interface *InstancePtr, const char* InstanceName);
int XDot_product_interface_Release(XDot_product_interface *InstancePtr);
#endif


void XDot_product_interface_Set_n(XDot_product_interface *InstancePtr, u32 Data);
u32 XDot_product_interface_Get_n(XDot_product_interface *InstancePtr);
void XDot_product_interface_Set_m(XDot_product_interface *InstancePtr, u32 Data);
u32 XDot_product_interface_Get_m(XDot_product_interface *InstancePtr);
void XDot_product_interface_Set_h(XDot_product_interface *InstancePtr, u32 Data);
u32 XDot_product_interface_Get_h(XDot_product_interface *InstancePtr);
u32 XDot_product_interface_Get_A_BaseAddress(XDot_product_interface *InstancePtr);
u32 XDot_product_interface_Get_A_HighAddress(XDot_product_interface *InstancePtr);
u32 XDot_product_interface_Get_A_TotalBytes(XDot_product_interface *InstancePtr);
u32 XDot_product_interface_Get_A_BitWidth(XDot_product_interface *InstancePtr);
u32 XDot_product_interface_Get_A_Depth(XDot_product_interface *InstancePtr);
u32 XDot_product_interface_Write_A_Words(XDot_product_interface *InstancePtr, int offset, word_type *data, int length);
u32 XDot_product_interface_Read_A_Words(XDot_product_interface *InstancePtr, int offset, word_type *data, int length);
u32 XDot_product_interface_Write_A_Bytes(XDot_product_interface *InstancePtr, int offset, char *data, int length);
u32 XDot_product_interface_Read_A_Bytes(XDot_product_interface *InstancePtr, int offset, char *data, int length);
u32 XDot_product_interface_Get_B_BaseAddress(XDot_product_interface *InstancePtr);
u32 XDot_product_interface_Get_B_HighAddress(XDot_product_interface *InstancePtr);
u32 XDot_product_interface_Get_B_TotalBytes(XDot_product_interface *InstancePtr);
u32 XDot_product_interface_Get_B_BitWidth(XDot_product_interface *InstancePtr);
u32 XDot_product_interface_Get_B_Depth(XDot_product_interface *InstancePtr);
u32 XDot_product_interface_Write_B_Words(XDot_product_interface *InstancePtr, int offset, word_type *data, int length);
u32 XDot_product_interface_Read_B_Words(XDot_product_interface *InstancePtr, int offset, word_type *data, int length);
u32 XDot_product_interface_Write_B_Bytes(XDot_product_interface *InstancePtr, int offset, char *data, int length);
u32 XDot_product_interface_Read_B_Bytes(XDot_product_interface *InstancePtr, int offset, char *data, int length);
u32 XDot_product_interface_Get_C_BaseAddress(XDot_product_interface *InstancePtr);
u32 XDot_product_interface_Get_C_HighAddress(XDot_product_interface *InstancePtr);
u32 XDot_product_interface_Get_C_TotalBytes(XDot_product_interface *InstancePtr);
u32 XDot_product_interface_Get_C_BitWidth(XDot_product_interface *InstancePtr);
u32 XDot_product_interface_Get_C_Depth(XDot_product_interface *InstancePtr);
u32 XDot_product_interface_Write_C_Words(XDot_product_interface *InstancePtr, int offset, word_type *data, int length);
u32 XDot_product_interface_Read_C_Words(XDot_product_interface *InstancePtr, int offset, word_type *data, int length);
u32 XDot_product_interface_Write_C_Bytes(XDot_product_interface *InstancePtr, int offset, char *data, int length);
u32 XDot_product_interface_Read_C_Bytes(XDot_product_interface *InstancePtr, int offset, char *data, int length);

#ifdef __cplusplus
}
#endif

#endif
