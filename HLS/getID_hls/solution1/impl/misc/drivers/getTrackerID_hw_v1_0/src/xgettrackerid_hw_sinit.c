// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __linux__

#include "xstatus.h"
#include "xparameters.h"
#include "xgettrackerid_hw.h"

extern XGettrackerid_hw_Config XGettrackerid_hw_ConfigTable[];

XGettrackerid_hw_Config *XGettrackerid_hw_LookupConfig(u16 DeviceId) {
	XGettrackerid_hw_Config *ConfigPtr = NULL;

	int Index;

	for (Index = 0; Index < XPAR_XGETTRACKERID_HW_NUM_INSTANCES; Index++) {
		if (XGettrackerid_hw_ConfigTable[Index].DeviceId == DeviceId) {
			ConfigPtr = &XGettrackerid_hw_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XGettrackerid_hw_Initialize(XGettrackerid_hw *InstancePtr, u16 DeviceId) {
	XGettrackerid_hw_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XGettrackerid_hw_LookupConfig(DeviceId);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XGettrackerid_hw_CfgInitialize(InstancePtr, ConfigPtr);
}

#endif

