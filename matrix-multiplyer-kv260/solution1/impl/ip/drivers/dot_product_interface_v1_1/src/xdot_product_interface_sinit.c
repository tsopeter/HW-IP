// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
// Tool Version Limit: 2019.12
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __linux__

#include "xstatus.h"
#include "xparameters.h"
#include "xdot_product_interface.h"

extern XDot_product_interface_Config XDot_product_interface_ConfigTable[];

XDot_product_interface_Config *XDot_product_interface_LookupConfig(u16 DeviceId) {
	XDot_product_interface_Config *ConfigPtr = NULL;

	int Index;

	for (Index = 0; Index < XPAR_XDOT_PRODUCT_INTERFACE_NUM_INSTANCES; Index++) {
		if (XDot_product_interface_ConfigTable[Index].DeviceId == DeviceId) {
			ConfigPtr = &XDot_product_interface_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XDot_product_interface_Initialize(XDot_product_interface *InstancePtr, u16 DeviceId) {
	XDot_product_interface_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XDot_product_interface_LookupConfig(DeviceId);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XDot_product_interface_CfgInitialize(InstancePtr, ConfigPtr);
}

#endif

