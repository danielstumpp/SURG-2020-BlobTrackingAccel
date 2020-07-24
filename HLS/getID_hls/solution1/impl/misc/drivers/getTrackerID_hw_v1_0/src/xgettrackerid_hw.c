// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
/***************************** Include Files *********************************/
#include "xgettrackerid_hw.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XGettrackerid_hw_CfgInitialize(XGettrackerid_hw *InstancePtr, XGettrackerid_hw_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Axilites_BaseAddress = ConfigPtr->Axilites_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

u32 XGettrackerid_hw_Get_trackerPool_state_BaseAddress(XGettrackerid_hw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Axilites_BaseAddress + XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_STATE_BASE);
}

u32 XGettrackerid_hw_Get_trackerPool_state_HighAddress(XGettrackerid_hw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Axilites_BaseAddress + XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_STATE_HIGH);
}

u32 XGettrackerid_hw_Get_trackerPool_state_TotalBytes(XGettrackerid_hw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_STATE_HIGH - XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_STATE_BASE + 1);
}

u32 XGettrackerid_hw_Get_trackerPool_state_BitWidth(XGettrackerid_hw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XGETTRACKERID_HW_AXILITES_WIDTH_TRACKERPOOL_STATE;
}

u32 XGettrackerid_hw_Get_trackerPool_state_Depth(XGettrackerid_hw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XGETTRACKERID_HW_AXILITES_DEPTH_TRACKERPOOL_STATE;
}

u32 XGettrackerid_hw_Write_trackerPool_state_Words(XGettrackerid_hw *InstancePtr, int offset, int *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_STATE_HIGH - XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_STATE_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(int *)(InstancePtr->Axilites_BaseAddress + XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_STATE_BASE + (offset + i)*4) = *(data + i);
    }
    return length;
}

u32 XGettrackerid_hw_Read_trackerPool_state_Words(XGettrackerid_hw *InstancePtr, int offset, int *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_STATE_HIGH - XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_STATE_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(int *)(InstancePtr->Axilites_BaseAddress + XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_STATE_BASE + (offset + i)*4);
    }
    return length;
}

u32 XGettrackerid_hw_Write_trackerPool_state_Bytes(XGettrackerid_hw *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_STATE_HIGH - XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_STATE_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(char *)(InstancePtr->Axilites_BaseAddress + XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_STATE_BASE + offset + i) = *(data + i);
    }
    return length;
}

u32 XGettrackerid_hw_Read_trackerPool_state_Bytes(XGettrackerid_hw *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_STATE_HIGH - XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_STATE_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(char *)(InstancePtr->Axilites_BaseAddress + XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_STATE_BASE + offset + i);
    }
    return length;
}

u32 XGettrackerid_hw_Get_trackerPool_eventCount_BaseAddress(XGettrackerid_hw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Axilites_BaseAddress + XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_EVENTCOUNT_BASE);
}

u32 XGettrackerid_hw_Get_trackerPool_eventCount_HighAddress(XGettrackerid_hw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Axilites_BaseAddress + XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_EVENTCOUNT_HIGH);
}

u32 XGettrackerid_hw_Get_trackerPool_eventCount_TotalBytes(XGettrackerid_hw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_EVENTCOUNT_HIGH - XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_EVENTCOUNT_BASE + 1);
}

u32 XGettrackerid_hw_Get_trackerPool_eventCount_BitWidth(XGettrackerid_hw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XGETTRACKERID_HW_AXILITES_WIDTH_TRACKERPOOL_EVENTCOUNT;
}

u32 XGettrackerid_hw_Get_trackerPool_eventCount_Depth(XGettrackerid_hw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XGETTRACKERID_HW_AXILITES_DEPTH_TRACKERPOOL_EVENTCOUNT;
}

u32 XGettrackerid_hw_Write_trackerPool_eventCount_Words(XGettrackerid_hw *InstancePtr, int offset, int *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_EVENTCOUNT_HIGH - XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_EVENTCOUNT_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(int *)(InstancePtr->Axilites_BaseAddress + XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_EVENTCOUNT_BASE + (offset + i)*4) = *(data + i);
    }
    return length;
}

u32 XGettrackerid_hw_Read_trackerPool_eventCount_Words(XGettrackerid_hw *InstancePtr, int offset, int *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_EVENTCOUNT_HIGH - XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_EVENTCOUNT_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(int *)(InstancePtr->Axilites_BaseAddress + XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_EVENTCOUNT_BASE + (offset + i)*4);
    }
    return length;
}

u32 XGettrackerid_hw_Write_trackerPool_eventCount_Bytes(XGettrackerid_hw *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_EVENTCOUNT_HIGH - XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_EVENTCOUNT_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(char *)(InstancePtr->Axilites_BaseAddress + XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_EVENTCOUNT_BASE + offset + i) = *(data + i);
    }
    return length;
}

u32 XGettrackerid_hw_Read_trackerPool_eventCount_Bytes(XGettrackerid_hw *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_EVENTCOUNT_HIGH - XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_EVENTCOUNT_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(char *)(InstancePtr->Axilites_BaseAddress + XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_EVENTCOUNT_BASE + offset + i);
    }
    return length;
}

u32 XGettrackerid_hw_Get_trackerPool_resetTime_BaseAddress(XGettrackerid_hw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Axilites_BaseAddress + XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_RESETTIME_BASE);
}

u32 XGettrackerid_hw_Get_trackerPool_resetTime_HighAddress(XGettrackerid_hw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Axilites_BaseAddress + XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_RESETTIME_HIGH);
}

u32 XGettrackerid_hw_Get_trackerPool_resetTime_TotalBytes(XGettrackerid_hw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_RESETTIME_HIGH - XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_RESETTIME_BASE + 1);
}

u32 XGettrackerid_hw_Get_trackerPool_resetTime_BitWidth(XGettrackerid_hw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XGETTRACKERID_HW_AXILITES_WIDTH_TRACKERPOOL_RESETTIME;
}

u32 XGettrackerid_hw_Get_trackerPool_resetTime_Depth(XGettrackerid_hw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XGETTRACKERID_HW_AXILITES_DEPTH_TRACKERPOOL_RESETTIME;
}

u32 XGettrackerid_hw_Write_trackerPool_resetTime_Words(XGettrackerid_hw *InstancePtr, int offset, int *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_RESETTIME_HIGH - XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_RESETTIME_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(int *)(InstancePtr->Axilites_BaseAddress + XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_RESETTIME_BASE + (offset + i)*4) = *(data + i);
    }
    return length;
}

u32 XGettrackerid_hw_Read_trackerPool_resetTime_Words(XGettrackerid_hw *InstancePtr, int offset, int *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_RESETTIME_HIGH - XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_RESETTIME_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(int *)(InstancePtr->Axilites_BaseAddress + XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_RESETTIME_BASE + (offset + i)*4);
    }
    return length;
}

u32 XGettrackerid_hw_Write_trackerPool_resetTime_Bytes(XGettrackerid_hw *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_RESETTIME_HIGH - XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_RESETTIME_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(char *)(InstancePtr->Axilites_BaseAddress + XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_RESETTIME_BASE + offset + i) = *(data + i);
    }
    return length;
}

u32 XGettrackerid_hw_Read_trackerPool_resetTime_Bytes(XGettrackerid_hw *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_RESETTIME_HIGH - XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_RESETTIME_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(char *)(InstancePtr->Axilites_BaseAddress + XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_RESETTIME_BASE + offset + i);
    }
    return length;
}

u32 XGettrackerid_hw_Get_trackerPool_x_BaseAddress(XGettrackerid_hw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Axilites_BaseAddress + XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_X_BASE);
}

u32 XGettrackerid_hw_Get_trackerPool_x_HighAddress(XGettrackerid_hw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Axilites_BaseAddress + XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_X_HIGH);
}

u32 XGettrackerid_hw_Get_trackerPool_x_TotalBytes(XGettrackerid_hw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_X_HIGH - XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_X_BASE + 1);
}

u32 XGettrackerid_hw_Get_trackerPool_x_BitWidth(XGettrackerid_hw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XGETTRACKERID_HW_AXILITES_WIDTH_TRACKERPOOL_X;
}

u32 XGettrackerid_hw_Get_trackerPool_x_Depth(XGettrackerid_hw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XGETTRACKERID_HW_AXILITES_DEPTH_TRACKERPOOL_X;
}

u32 XGettrackerid_hw_Write_trackerPool_x_Words(XGettrackerid_hw *InstancePtr, int offset, int *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_X_HIGH - XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_X_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(int *)(InstancePtr->Axilites_BaseAddress + XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_X_BASE + (offset + i)*4) = *(data + i);
    }
    return length;
}

u32 XGettrackerid_hw_Read_trackerPool_x_Words(XGettrackerid_hw *InstancePtr, int offset, int *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_X_HIGH - XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_X_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(int *)(InstancePtr->Axilites_BaseAddress + XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_X_BASE + (offset + i)*4);
    }
    return length;
}

u32 XGettrackerid_hw_Write_trackerPool_x_Bytes(XGettrackerid_hw *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_X_HIGH - XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_X_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(char *)(InstancePtr->Axilites_BaseAddress + XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_X_BASE + offset + i) = *(data + i);
    }
    return length;
}

u32 XGettrackerid_hw_Read_trackerPool_x_Bytes(XGettrackerid_hw *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_X_HIGH - XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_X_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(char *)(InstancePtr->Axilites_BaseAddress + XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_X_BASE + offset + i);
    }
    return length;
}

u32 XGettrackerid_hw_Get_trackerPool_y_BaseAddress(XGettrackerid_hw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Axilites_BaseAddress + XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_Y_BASE);
}

u32 XGettrackerid_hw_Get_trackerPool_y_HighAddress(XGettrackerid_hw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Axilites_BaseAddress + XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_Y_HIGH);
}

u32 XGettrackerid_hw_Get_trackerPool_y_TotalBytes(XGettrackerid_hw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_Y_HIGH - XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_Y_BASE + 1);
}

u32 XGettrackerid_hw_Get_trackerPool_y_BitWidth(XGettrackerid_hw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XGETTRACKERID_HW_AXILITES_WIDTH_TRACKERPOOL_Y;
}

u32 XGettrackerid_hw_Get_trackerPool_y_Depth(XGettrackerid_hw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XGETTRACKERID_HW_AXILITES_DEPTH_TRACKERPOOL_Y;
}

u32 XGettrackerid_hw_Write_trackerPool_y_Words(XGettrackerid_hw *InstancePtr, int offset, int *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_Y_HIGH - XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_Y_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(int *)(InstancePtr->Axilites_BaseAddress + XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_Y_BASE + (offset + i)*4) = *(data + i);
    }
    return length;
}

u32 XGettrackerid_hw_Read_trackerPool_y_Words(XGettrackerid_hw *InstancePtr, int offset, int *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_Y_HIGH - XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_Y_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(int *)(InstancePtr->Axilites_BaseAddress + XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_Y_BASE + (offset + i)*4);
    }
    return length;
}

u32 XGettrackerid_hw_Write_trackerPool_y_Bytes(XGettrackerid_hw *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_Y_HIGH - XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_Y_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(char *)(InstancePtr->Axilites_BaseAddress + XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_Y_BASE + offset + i) = *(data + i);
    }
    return length;
}

u32 XGettrackerid_hw_Read_trackerPool_y_Bytes(XGettrackerid_hw *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_Y_HIGH - XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_Y_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(char *)(InstancePtr->Axilites_BaseAddress + XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_Y_BASE + offset + i);
    }
    return length;
}

u32 XGettrackerid_hw_Get_trackerPool_prevX_BaseAddress(XGettrackerid_hw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Axilites_BaseAddress + XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_PREVX_BASE);
}

u32 XGettrackerid_hw_Get_trackerPool_prevX_HighAddress(XGettrackerid_hw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Axilites_BaseAddress + XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_PREVX_HIGH);
}

u32 XGettrackerid_hw_Get_trackerPool_prevX_TotalBytes(XGettrackerid_hw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_PREVX_HIGH - XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_PREVX_BASE + 1);
}

u32 XGettrackerid_hw_Get_trackerPool_prevX_BitWidth(XGettrackerid_hw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XGETTRACKERID_HW_AXILITES_WIDTH_TRACKERPOOL_PREVX;
}

u32 XGettrackerid_hw_Get_trackerPool_prevX_Depth(XGettrackerid_hw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XGETTRACKERID_HW_AXILITES_DEPTH_TRACKERPOOL_PREVX;
}

u32 XGettrackerid_hw_Write_trackerPool_prevX_Words(XGettrackerid_hw *InstancePtr, int offset, int *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_PREVX_HIGH - XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_PREVX_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(int *)(InstancePtr->Axilites_BaseAddress + XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_PREVX_BASE + (offset + i)*4) = *(data + i);
    }
    return length;
}

u32 XGettrackerid_hw_Read_trackerPool_prevX_Words(XGettrackerid_hw *InstancePtr, int offset, int *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_PREVX_HIGH - XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_PREVX_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(int *)(InstancePtr->Axilites_BaseAddress + XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_PREVX_BASE + (offset + i)*4);
    }
    return length;
}

u32 XGettrackerid_hw_Write_trackerPool_prevX_Bytes(XGettrackerid_hw *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_PREVX_HIGH - XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_PREVX_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(char *)(InstancePtr->Axilites_BaseAddress + XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_PREVX_BASE + offset + i) = *(data + i);
    }
    return length;
}

u32 XGettrackerid_hw_Read_trackerPool_prevX_Bytes(XGettrackerid_hw *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_PREVX_HIGH - XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_PREVX_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(char *)(InstancePtr->Axilites_BaseAddress + XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_PREVX_BASE + offset + i);
    }
    return length;
}

u32 XGettrackerid_hw_Get_trackerPool_prevY_BaseAddress(XGettrackerid_hw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Axilites_BaseAddress + XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_PREVY_BASE);
}

u32 XGettrackerid_hw_Get_trackerPool_prevY_HighAddress(XGettrackerid_hw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Axilites_BaseAddress + XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_PREVY_HIGH);
}

u32 XGettrackerid_hw_Get_trackerPool_prevY_TotalBytes(XGettrackerid_hw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_PREVY_HIGH - XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_PREVY_BASE + 1);
}

u32 XGettrackerid_hw_Get_trackerPool_prevY_BitWidth(XGettrackerid_hw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XGETTRACKERID_HW_AXILITES_WIDTH_TRACKERPOOL_PREVY;
}

u32 XGettrackerid_hw_Get_trackerPool_prevY_Depth(XGettrackerid_hw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XGETTRACKERID_HW_AXILITES_DEPTH_TRACKERPOOL_PREVY;
}

u32 XGettrackerid_hw_Write_trackerPool_prevY_Words(XGettrackerid_hw *InstancePtr, int offset, int *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_PREVY_HIGH - XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_PREVY_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(int *)(InstancePtr->Axilites_BaseAddress + XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_PREVY_BASE + (offset + i)*4) = *(data + i);
    }
    return length;
}

u32 XGettrackerid_hw_Read_trackerPool_prevY_Words(XGettrackerid_hw *InstancePtr, int offset, int *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_PREVY_HIGH - XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_PREVY_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(int *)(InstancePtr->Axilites_BaseAddress + XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_PREVY_BASE + (offset + i)*4);
    }
    return length;
}

u32 XGettrackerid_hw_Write_trackerPool_prevY_Bytes(XGettrackerid_hw *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_PREVY_HIGH - XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_PREVY_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(char *)(InstancePtr->Axilites_BaseAddress + XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_PREVY_BASE + offset + i) = *(data + i);
    }
    return length;
}

u32 XGettrackerid_hw_Read_trackerPool_prevY_Bytes(XGettrackerid_hw *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_PREVY_HIGH - XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_PREVY_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(char *)(InstancePtr->Axilites_BaseAddress + XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_PREVY_BASE + offset + i);
    }
    return length;
}

u32 XGettrackerid_hw_Get_trackerPool_predX_BaseAddress(XGettrackerid_hw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Axilites_BaseAddress + XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_PREDX_BASE);
}

u32 XGettrackerid_hw_Get_trackerPool_predX_HighAddress(XGettrackerid_hw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Axilites_BaseAddress + XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_PREDX_HIGH);
}

u32 XGettrackerid_hw_Get_trackerPool_predX_TotalBytes(XGettrackerid_hw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_PREDX_HIGH - XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_PREDX_BASE + 1);
}

u32 XGettrackerid_hw_Get_trackerPool_predX_BitWidth(XGettrackerid_hw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XGETTRACKERID_HW_AXILITES_WIDTH_TRACKERPOOL_PREDX;
}

u32 XGettrackerid_hw_Get_trackerPool_predX_Depth(XGettrackerid_hw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XGETTRACKERID_HW_AXILITES_DEPTH_TRACKERPOOL_PREDX;
}

u32 XGettrackerid_hw_Write_trackerPool_predX_Words(XGettrackerid_hw *InstancePtr, int offset, int *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_PREDX_HIGH - XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_PREDX_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(int *)(InstancePtr->Axilites_BaseAddress + XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_PREDX_BASE + (offset + i)*4) = *(data + i);
    }
    return length;
}

u32 XGettrackerid_hw_Read_trackerPool_predX_Words(XGettrackerid_hw *InstancePtr, int offset, int *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_PREDX_HIGH - XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_PREDX_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(int *)(InstancePtr->Axilites_BaseAddress + XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_PREDX_BASE + (offset + i)*4);
    }
    return length;
}

u32 XGettrackerid_hw_Write_trackerPool_predX_Bytes(XGettrackerid_hw *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_PREDX_HIGH - XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_PREDX_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(char *)(InstancePtr->Axilites_BaseAddress + XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_PREDX_BASE + offset + i) = *(data + i);
    }
    return length;
}

u32 XGettrackerid_hw_Read_trackerPool_predX_Bytes(XGettrackerid_hw *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_PREDX_HIGH - XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_PREDX_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(char *)(InstancePtr->Axilites_BaseAddress + XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_PREDX_BASE + offset + i);
    }
    return length;
}

u32 XGettrackerid_hw_Get_trackerPool_predY_BaseAddress(XGettrackerid_hw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Axilites_BaseAddress + XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_PREDY_BASE);
}

u32 XGettrackerid_hw_Get_trackerPool_predY_HighAddress(XGettrackerid_hw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Axilites_BaseAddress + XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_PREDY_HIGH);
}

u32 XGettrackerid_hw_Get_trackerPool_predY_TotalBytes(XGettrackerid_hw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_PREDY_HIGH - XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_PREDY_BASE + 1);
}

u32 XGettrackerid_hw_Get_trackerPool_predY_BitWidth(XGettrackerid_hw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XGETTRACKERID_HW_AXILITES_WIDTH_TRACKERPOOL_PREDY;
}

u32 XGettrackerid_hw_Get_trackerPool_predY_Depth(XGettrackerid_hw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XGETTRACKERID_HW_AXILITES_DEPTH_TRACKERPOOL_PREDY;
}

u32 XGettrackerid_hw_Write_trackerPool_predY_Words(XGettrackerid_hw *InstancePtr, int offset, int *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_PREDY_HIGH - XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_PREDY_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(int *)(InstancePtr->Axilites_BaseAddress + XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_PREDY_BASE + (offset + i)*4) = *(data + i);
    }
    return length;
}

u32 XGettrackerid_hw_Read_trackerPool_predY_Words(XGettrackerid_hw *InstancePtr, int offset, int *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_PREDY_HIGH - XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_PREDY_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(int *)(InstancePtr->Axilites_BaseAddress + XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_PREDY_BASE + (offset + i)*4);
    }
    return length;
}

u32 XGettrackerid_hw_Write_trackerPool_predY_Bytes(XGettrackerid_hw *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_PREDY_HIGH - XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_PREDY_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(char *)(InstancePtr->Axilites_BaseAddress + XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_PREDY_BASE + offset + i) = *(data + i);
    }
    return length;
}

u32 XGettrackerid_hw_Read_trackerPool_predY_Bytes(XGettrackerid_hw *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_PREDY_HIGH - XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_PREDY_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(char *)(InstancePtr->Axilites_BaseAddress + XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_PREDY_BASE + offset + i);
    }
    return length;
}

u32 XGettrackerid_hw_Get_trackerPool_shapeFactor_BaseAddress(XGettrackerid_hw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Axilites_BaseAddress + XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_SHAPEFACTOR_BASE);
}

u32 XGettrackerid_hw_Get_trackerPool_shapeFactor_HighAddress(XGettrackerid_hw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Axilites_BaseAddress + XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_SHAPEFACTOR_HIGH);
}

u32 XGettrackerid_hw_Get_trackerPool_shapeFactor_TotalBytes(XGettrackerid_hw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_SHAPEFACTOR_HIGH - XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_SHAPEFACTOR_BASE + 1);
}

u32 XGettrackerid_hw_Get_trackerPool_shapeFactor_BitWidth(XGettrackerid_hw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XGETTRACKERID_HW_AXILITES_WIDTH_TRACKERPOOL_SHAPEFACTOR;
}

u32 XGettrackerid_hw_Get_trackerPool_shapeFactor_Depth(XGettrackerid_hw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XGETTRACKERID_HW_AXILITES_DEPTH_TRACKERPOOL_SHAPEFACTOR;
}

u32 XGettrackerid_hw_Write_trackerPool_shapeFactor_Words(XGettrackerid_hw *InstancePtr, int offset, int *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_SHAPEFACTOR_HIGH - XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_SHAPEFACTOR_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(int *)(InstancePtr->Axilites_BaseAddress + XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_SHAPEFACTOR_BASE + (offset + i)*4) = *(data + i);
    }
    return length;
}

u32 XGettrackerid_hw_Read_trackerPool_shapeFactor_Words(XGettrackerid_hw *InstancePtr, int offset, int *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_SHAPEFACTOR_HIGH - XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_SHAPEFACTOR_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(int *)(InstancePtr->Axilites_BaseAddress + XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_SHAPEFACTOR_BASE + (offset + i)*4);
    }
    return length;
}

u32 XGettrackerid_hw_Write_trackerPool_shapeFactor_Bytes(XGettrackerid_hw *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_SHAPEFACTOR_HIGH - XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_SHAPEFACTOR_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(char *)(InstancePtr->Axilites_BaseAddress + XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_SHAPEFACTOR_BASE + offset + i) = *(data + i);
    }
    return length;
}

u32 XGettrackerid_hw_Read_trackerPool_shapeFactor_Bytes(XGettrackerid_hw *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_SHAPEFACTOR_HIGH - XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_SHAPEFACTOR_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(char *)(InstancePtr->Axilites_BaseAddress + XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_SHAPEFACTOR_BASE + offset + i);
    }
    return length;
}

u32 XGettrackerid_hw_Get_trackerPool_origShapeFactor_BaseAddress(XGettrackerid_hw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Axilites_BaseAddress + XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_ORIGSHAPEFACTOR_BASE);
}

u32 XGettrackerid_hw_Get_trackerPool_origShapeFactor_HighAddress(XGettrackerid_hw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Axilites_BaseAddress + XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_ORIGSHAPEFACTOR_HIGH);
}

u32 XGettrackerid_hw_Get_trackerPool_origShapeFactor_TotalBytes(XGettrackerid_hw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_ORIGSHAPEFACTOR_HIGH - XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_ORIGSHAPEFACTOR_BASE + 1);
}

u32 XGettrackerid_hw_Get_trackerPool_origShapeFactor_BitWidth(XGettrackerid_hw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XGETTRACKERID_HW_AXILITES_WIDTH_TRACKERPOOL_ORIGSHAPEFACTOR;
}

u32 XGettrackerid_hw_Get_trackerPool_origShapeFactor_Depth(XGettrackerid_hw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XGETTRACKERID_HW_AXILITES_DEPTH_TRACKERPOOL_ORIGSHAPEFACTOR;
}

u32 XGettrackerid_hw_Write_trackerPool_origShapeFactor_Words(XGettrackerid_hw *InstancePtr, int offset, int *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_ORIGSHAPEFACTOR_HIGH - XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_ORIGSHAPEFACTOR_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(int *)(InstancePtr->Axilites_BaseAddress + XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_ORIGSHAPEFACTOR_BASE + (offset + i)*4) = *(data + i);
    }
    return length;
}

u32 XGettrackerid_hw_Read_trackerPool_origShapeFactor_Words(XGettrackerid_hw *InstancePtr, int offset, int *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_ORIGSHAPEFACTOR_HIGH - XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_ORIGSHAPEFACTOR_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(int *)(InstancePtr->Axilites_BaseAddress + XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_ORIGSHAPEFACTOR_BASE + (offset + i)*4);
    }
    return length;
}

u32 XGettrackerid_hw_Write_trackerPool_origShapeFactor_Bytes(XGettrackerid_hw *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_ORIGSHAPEFACTOR_HIGH - XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_ORIGSHAPEFACTOR_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(char *)(InstancePtr->Axilites_BaseAddress + XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_ORIGSHAPEFACTOR_BASE + offset + i) = *(data + i);
    }
    return length;
}

u32 XGettrackerid_hw_Read_trackerPool_origShapeFactor_Bytes(XGettrackerid_hw *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_ORIGSHAPEFACTOR_HIGH - XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_ORIGSHAPEFACTOR_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(char *)(InstancePtr->Axilites_BaseAddress + XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_ORIGSHAPEFACTOR_BASE + offset + i);
    }
    return length;
}

u32 XGettrackerid_hw_Get_trackerPool_posFactor_BaseAddress(XGettrackerid_hw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Axilites_BaseAddress + XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_POSFACTOR_BASE);
}

u32 XGettrackerid_hw_Get_trackerPool_posFactor_HighAddress(XGettrackerid_hw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Axilites_BaseAddress + XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_POSFACTOR_HIGH);
}

u32 XGettrackerid_hw_Get_trackerPool_posFactor_TotalBytes(XGettrackerid_hw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_POSFACTOR_HIGH - XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_POSFACTOR_BASE + 1);
}

u32 XGettrackerid_hw_Get_trackerPool_posFactor_BitWidth(XGettrackerid_hw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XGETTRACKERID_HW_AXILITES_WIDTH_TRACKERPOOL_POSFACTOR;
}

u32 XGettrackerid_hw_Get_trackerPool_posFactor_Depth(XGettrackerid_hw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XGETTRACKERID_HW_AXILITES_DEPTH_TRACKERPOOL_POSFACTOR;
}

u32 XGettrackerid_hw_Write_trackerPool_posFactor_Words(XGettrackerid_hw *InstancePtr, int offset, int *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_POSFACTOR_HIGH - XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_POSFACTOR_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(int *)(InstancePtr->Axilites_BaseAddress + XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_POSFACTOR_BASE + (offset + i)*4) = *(data + i);
    }
    return length;
}

u32 XGettrackerid_hw_Read_trackerPool_posFactor_Words(XGettrackerid_hw *InstancePtr, int offset, int *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_POSFACTOR_HIGH - XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_POSFACTOR_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(int *)(InstancePtr->Axilites_BaseAddress + XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_POSFACTOR_BASE + (offset + i)*4);
    }
    return length;
}

u32 XGettrackerid_hw_Write_trackerPool_posFactor_Bytes(XGettrackerid_hw *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_POSFACTOR_HIGH - XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_POSFACTOR_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(char *)(InstancePtr->Axilites_BaseAddress + XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_POSFACTOR_BASE + offset + i) = *(data + i);
    }
    return length;
}

u32 XGettrackerid_hw_Read_trackerPool_posFactor_Bytes(XGettrackerid_hw *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_POSFACTOR_HIGH - XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_POSFACTOR_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(char *)(InstancePtr->Axilites_BaseAddress + XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_POSFACTOR_BASE + offset + i);
    }
    return length;
}

u32 XGettrackerid_hw_Get_trackerPool_velFactor_BaseAddress(XGettrackerid_hw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Axilites_BaseAddress + XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_VELFACTOR_BASE);
}

u32 XGettrackerid_hw_Get_trackerPool_velFactor_HighAddress(XGettrackerid_hw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Axilites_BaseAddress + XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_VELFACTOR_HIGH);
}

u32 XGettrackerid_hw_Get_trackerPool_velFactor_TotalBytes(XGettrackerid_hw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_VELFACTOR_HIGH - XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_VELFACTOR_BASE + 1);
}

u32 XGettrackerid_hw_Get_trackerPool_velFactor_BitWidth(XGettrackerid_hw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XGETTRACKERID_HW_AXILITES_WIDTH_TRACKERPOOL_VELFACTOR;
}

u32 XGettrackerid_hw_Get_trackerPool_velFactor_Depth(XGettrackerid_hw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XGETTRACKERID_HW_AXILITES_DEPTH_TRACKERPOOL_VELFACTOR;
}

u32 XGettrackerid_hw_Write_trackerPool_velFactor_Words(XGettrackerid_hw *InstancePtr, int offset, int *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_VELFACTOR_HIGH - XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_VELFACTOR_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(int *)(InstancePtr->Axilites_BaseAddress + XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_VELFACTOR_BASE + (offset + i)*4) = *(data + i);
    }
    return length;
}

u32 XGettrackerid_hw_Read_trackerPool_velFactor_Words(XGettrackerid_hw *InstancePtr, int offset, int *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_VELFACTOR_HIGH - XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_VELFACTOR_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(int *)(InstancePtr->Axilites_BaseAddress + XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_VELFACTOR_BASE + (offset + i)*4);
    }
    return length;
}

u32 XGettrackerid_hw_Write_trackerPool_velFactor_Bytes(XGettrackerid_hw *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_VELFACTOR_HIGH - XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_VELFACTOR_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(char *)(InstancePtr->Axilites_BaseAddress + XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_VELFACTOR_BASE + offset + i) = *(data + i);
    }
    return length;
}

u32 XGettrackerid_hw_Read_trackerPool_velFactor_Bytes(XGettrackerid_hw *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_VELFACTOR_HIGH - XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_VELFACTOR_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(char *)(InstancePtr->Axilites_BaseAddress + XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_VELFACTOR_BASE + offset + i);
    }
    return length;
}

u32 XGettrackerid_hw_Get_trackerPool_clusterSize_BaseAddress(XGettrackerid_hw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Axilites_BaseAddress + XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_CLUSTERSIZE_BASE);
}

u32 XGettrackerid_hw_Get_trackerPool_clusterSize_HighAddress(XGettrackerid_hw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Axilites_BaseAddress + XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_CLUSTERSIZE_HIGH);
}

u32 XGettrackerid_hw_Get_trackerPool_clusterSize_TotalBytes(XGettrackerid_hw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_CLUSTERSIZE_HIGH - XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_CLUSTERSIZE_BASE + 1);
}

u32 XGettrackerid_hw_Get_trackerPool_clusterSize_BitWidth(XGettrackerid_hw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XGETTRACKERID_HW_AXILITES_WIDTH_TRACKERPOOL_CLUSTERSIZE;
}

u32 XGettrackerid_hw_Get_trackerPool_clusterSize_Depth(XGettrackerid_hw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XGETTRACKERID_HW_AXILITES_DEPTH_TRACKERPOOL_CLUSTERSIZE;
}

u32 XGettrackerid_hw_Write_trackerPool_clusterSize_Words(XGettrackerid_hw *InstancePtr, int offset, int *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_CLUSTERSIZE_HIGH - XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_CLUSTERSIZE_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(int *)(InstancePtr->Axilites_BaseAddress + XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_CLUSTERSIZE_BASE + (offset + i)*4) = *(data + i);
    }
    return length;
}

u32 XGettrackerid_hw_Read_trackerPool_clusterSize_Words(XGettrackerid_hw *InstancePtr, int offset, int *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_CLUSTERSIZE_HIGH - XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_CLUSTERSIZE_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(int *)(InstancePtr->Axilites_BaseAddress + XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_CLUSTERSIZE_BASE + (offset + i)*4);
    }
    return length;
}

u32 XGettrackerid_hw_Write_trackerPool_clusterSize_Bytes(XGettrackerid_hw *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_CLUSTERSIZE_HIGH - XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_CLUSTERSIZE_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(char *)(InstancePtr->Axilites_BaseAddress + XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_CLUSTERSIZE_BASE + offset + i) = *(data + i);
    }
    return length;
}

u32 XGettrackerid_hw_Read_trackerPool_clusterSize_Bytes(XGettrackerid_hw *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_CLUSTERSIZE_HIGH - XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_CLUSTERSIZE_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(char *)(InstancePtr->Axilites_BaseAddress + XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_CLUSTERSIZE_BASE + offset + i);
    }
    return length;
}

u32 XGettrackerid_hw_Get_trackerPool_smoothingFactor_BaseAddress(XGettrackerid_hw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Axilites_BaseAddress + XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_SMOOTHINGFACTOR_BASE);
}

u32 XGettrackerid_hw_Get_trackerPool_smoothingFactor_HighAddress(XGettrackerid_hw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Axilites_BaseAddress + XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_SMOOTHINGFACTOR_HIGH);
}

u32 XGettrackerid_hw_Get_trackerPool_smoothingFactor_TotalBytes(XGettrackerid_hw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_SMOOTHINGFACTOR_HIGH - XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_SMOOTHINGFACTOR_BASE + 1);
}

u32 XGettrackerid_hw_Get_trackerPool_smoothingFactor_BitWidth(XGettrackerid_hw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XGETTRACKERID_HW_AXILITES_WIDTH_TRACKERPOOL_SMOOTHINGFACTOR;
}

u32 XGettrackerid_hw_Get_trackerPool_smoothingFactor_Depth(XGettrackerid_hw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XGETTRACKERID_HW_AXILITES_DEPTH_TRACKERPOOL_SMOOTHINGFACTOR;
}

u32 XGettrackerid_hw_Write_trackerPool_smoothingFactor_Words(XGettrackerid_hw *InstancePtr, int offset, int *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_SMOOTHINGFACTOR_HIGH - XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_SMOOTHINGFACTOR_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(int *)(InstancePtr->Axilites_BaseAddress + XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_SMOOTHINGFACTOR_BASE + (offset + i)*4) = *(data + i);
    }
    return length;
}

u32 XGettrackerid_hw_Read_trackerPool_smoothingFactor_Words(XGettrackerid_hw *InstancePtr, int offset, int *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_SMOOTHINGFACTOR_HIGH - XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_SMOOTHINGFACTOR_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(int *)(InstancePtr->Axilites_BaseAddress + XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_SMOOTHINGFACTOR_BASE + (offset + i)*4);
    }
    return length;
}

u32 XGettrackerid_hw_Write_trackerPool_smoothingFactor_Bytes(XGettrackerid_hw *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_SMOOTHINGFACTOR_HIGH - XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_SMOOTHINGFACTOR_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(char *)(InstancePtr->Axilites_BaseAddress + XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_SMOOTHINGFACTOR_BASE + offset + i) = *(data + i);
    }
    return length;
}

u32 XGettrackerid_hw_Read_trackerPool_smoothingFactor_Bytes(XGettrackerid_hw *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_SMOOTHINGFACTOR_HIGH - XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_SMOOTHINGFACTOR_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(char *)(InstancePtr->Axilites_BaseAddress + XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_SMOOTHINGFACTOR_BASE + offset + i);
    }
    return length;
}

u32 XGettrackerid_hw_Get_trackerPool_sp1x_BaseAddress(XGettrackerid_hw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Axilites_BaseAddress + XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_SP1X_BASE);
}

u32 XGettrackerid_hw_Get_trackerPool_sp1x_HighAddress(XGettrackerid_hw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Axilites_BaseAddress + XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_SP1X_HIGH);
}

u32 XGettrackerid_hw_Get_trackerPool_sp1x_TotalBytes(XGettrackerid_hw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_SP1X_HIGH - XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_SP1X_BASE + 1);
}

u32 XGettrackerid_hw_Get_trackerPool_sp1x_BitWidth(XGettrackerid_hw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XGETTRACKERID_HW_AXILITES_WIDTH_TRACKERPOOL_SP1X;
}

u32 XGettrackerid_hw_Get_trackerPool_sp1x_Depth(XGettrackerid_hw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XGETTRACKERID_HW_AXILITES_DEPTH_TRACKERPOOL_SP1X;
}

u32 XGettrackerid_hw_Write_trackerPool_sp1x_Words(XGettrackerid_hw *InstancePtr, int offset, int *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_SP1X_HIGH - XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_SP1X_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(int *)(InstancePtr->Axilites_BaseAddress + XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_SP1X_BASE + (offset + i)*4) = *(data + i);
    }
    return length;
}

u32 XGettrackerid_hw_Read_trackerPool_sp1x_Words(XGettrackerid_hw *InstancePtr, int offset, int *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_SP1X_HIGH - XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_SP1X_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(int *)(InstancePtr->Axilites_BaseAddress + XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_SP1X_BASE + (offset + i)*4);
    }
    return length;
}

u32 XGettrackerid_hw_Write_trackerPool_sp1x_Bytes(XGettrackerid_hw *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_SP1X_HIGH - XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_SP1X_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(char *)(InstancePtr->Axilites_BaseAddress + XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_SP1X_BASE + offset + i) = *(data + i);
    }
    return length;
}

u32 XGettrackerid_hw_Read_trackerPool_sp1x_Bytes(XGettrackerid_hw *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_SP1X_HIGH - XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_SP1X_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(char *)(InstancePtr->Axilites_BaseAddress + XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_SP1X_BASE + offset + i);
    }
    return length;
}

u32 XGettrackerid_hw_Get_trackerPool_sp2x_BaseAddress(XGettrackerid_hw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Axilites_BaseAddress + XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_SP2X_BASE);
}

u32 XGettrackerid_hw_Get_trackerPool_sp2x_HighAddress(XGettrackerid_hw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Axilites_BaseAddress + XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_SP2X_HIGH);
}

u32 XGettrackerid_hw_Get_trackerPool_sp2x_TotalBytes(XGettrackerid_hw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_SP2X_HIGH - XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_SP2X_BASE + 1);
}

u32 XGettrackerid_hw_Get_trackerPool_sp2x_BitWidth(XGettrackerid_hw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XGETTRACKERID_HW_AXILITES_WIDTH_TRACKERPOOL_SP2X;
}

u32 XGettrackerid_hw_Get_trackerPool_sp2x_Depth(XGettrackerid_hw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XGETTRACKERID_HW_AXILITES_DEPTH_TRACKERPOOL_SP2X;
}

u32 XGettrackerid_hw_Write_trackerPool_sp2x_Words(XGettrackerid_hw *InstancePtr, int offset, int *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_SP2X_HIGH - XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_SP2X_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(int *)(InstancePtr->Axilites_BaseAddress + XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_SP2X_BASE + (offset + i)*4) = *(data + i);
    }
    return length;
}

u32 XGettrackerid_hw_Read_trackerPool_sp2x_Words(XGettrackerid_hw *InstancePtr, int offset, int *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_SP2X_HIGH - XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_SP2X_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(int *)(InstancePtr->Axilites_BaseAddress + XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_SP2X_BASE + (offset + i)*4);
    }
    return length;
}

u32 XGettrackerid_hw_Write_trackerPool_sp2x_Bytes(XGettrackerid_hw *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_SP2X_HIGH - XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_SP2X_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(char *)(InstancePtr->Axilites_BaseAddress + XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_SP2X_BASE + offset + i) = *(data + i);
    }
    return length;
}

u32 XGettrackerid_hw_Read_trackerPool_sp2x_Bytes(XGettrackerid_hw *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_SP2X_HIGH - XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_SP2X_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(char *)(InstancePtr->Axilites_BaseAddress + XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_SP2X_BASE + offset + i);
    }
    return length;
}

u32 XGettrackerid_hw_Get_trackerPool_sp1y_BaseAddress(XGettrackerid_hw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Axilites_BaseAddress + XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_SP1Y_BASE);
}

u32 XGettrackerid_hw_Get_trackerPool_sp1y_HighAddress(XGettrackerid_hw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Axilites_BaseAddress + XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_SP1Y_HIGH);
}

u32 XGettrackerid_hw_Get_trackerPool_sp1y_TotalBytes(XGettrackerid_hw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_SP1Y_HIGH - XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_SP1Y_BASE + 1);
}

u32 XGettrackerid_hw_Get_trackerPool_sp1y_BitWidth(XGettrackerid_hw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XGETTRACKERID_HW_AXILITES_WIDTH_TRACKERPOOL_SP1Y;
}

u32 XGettrackerid_hw_Get_trackerPool_sp1y_Depth(XGettrackerid_hw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XGETTRACKERID_HW_AXILITES_DEPTH_TRACKERPOOL_SP1Y;
}

u32 XGettrackerid_hw_Write_trackerPool_sp1y_Words(XGettrackerid_hw *InstancePtr, int offset, int *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_SP1Y_HIGH - XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_SP1Y_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(int *)(InstancePtr->Axilites_BaseAddress + XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_SP1Y_BASE + (offset + i)*4) = *(data + i);
    }
    return length;
}

u32 XGettrackerid_hw_Read_trackerPool_sp1y_Words(XGettrackerid_hw *InstancePtr, int offset, int *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_SP1Y_HIGH - XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_SP1Y_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(int *)(InstancePtr->Axilites_BaseAddress + XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_SP1Y_BASE + (offset + i)*4);
    }
    return length;
}

u32 XGettrackerid_hw_Write_trackerPool_sp1y_Bytes(XGettrackerid_hw *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_SP1Y_HIGH - XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_SP1Y_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(char *)(InstancePtr->Axilites_BaseAddress + XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_SP1Y_BASE + offset + i) = *(data + i);
    }
    return length;
}

u32 XGettrackerid_hw_Read_trackerPool_sp1y_Bytes(XGettrackerid_hw *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_SP1Y_HIGH - XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_SP1Y_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(char *)(InstancePtr->Axilites_BaseAddress + XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_SP1Y_BASE + offset + i);
    }
    return length;
}

u32 XGettrackerid_hw_Get_trackerPool_sp2y_BaseAddress(XGettrackerid_hw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Axilites_BaseAddress + XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_SP2Y_BASE);
}

u32 XGettrackerid_hw_Get_trackerPool_sp2y_HighAddress(XGettrackerid_hw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Axilites_BaseAddress + XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_SP2Y_HIGH);
}

u32 XGettrackerid_hw_Get_trackerPool_sp2y_TotalBytes(XGettrackerid_hw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_SP2Y_HIGH - XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_SP2Y_BASE + 1);
}

u32 XGettrackerid_hw_Get_trackerPool_sp2y_BitWidth(XGettrackerid_hw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XGETTRACKERID_HW_AXILITES_WIDTH_TRACKERPOOL_SP2Y;
}

u32 XGettrackerid_hw_Get_trackerPool_sp2y_Depth(XGettrackerid_hw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XGETTRACKERID_HW_AXILITES_DEPTH_TRACKERPOOL_SP2Y;
}

u32 XGettrackerid_hw_Write_trackerPool_sp2y_Words(XGettrackerid_hw *InstancePtr, int offset, int *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_SP2Y_HIGH - XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_SP2Y_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(int *)(InstancePtr->Axilites_BaseAddress + XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_SP2Y_BASE + (offset + i)*4) = *(data + i);
    }
    return length;
}

u32 XGettrackerid_hw_Read_trackerPool_sp2y_Words(XGettrackerid_hw *InstancePtr, int offset, int *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_SP2Y_HIGH - XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_SP2Y_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(int *)(InstancePtr->Axilites_BaseAddress + XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_SP2Y_BASE + (offset + i)*4);
    }
    return length;
}

u32 XGettrackerid_hw_Write_trackerPool_sp2y_Bytes(XGettrackerid_hw *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_SP2Y_HIGH - XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_SP2Y_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(char *)(InstancePtr->Axilites_BaseAddress + XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_SP2Y_BASE + offset + i) = *(data + i);
    }
    return length;
}

u32 XGettrackerid_hw_Read_trackerPool_sp2y_Bytes(XGettrackerid_hw *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_SP2Y_HIGH - XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_SP2Y_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(char *)(InstancePtr->Axilites_BaseAddress + XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_SP2Y_BASE + offset + i);
    }
    return length;
}

u32 XGettrackerid_hw_Get_trackerPool_sigmaX_BaseAddress(XGettrackerid_hw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Axilites_BaseAddress + XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_SIGMAX_BASE);
}

u32 XGettrackerid_hw_Get_trackerPool_sigmaX_HighAddress(XGettrackerid_hw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Axilites_BaseAddress + XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_SIGMAX_HIGH);
}

u32 XGettrackerid_hw_Get_trackerPool_sigmaX_TotalBytes(XGettrackerid_hw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_SIGMAX_HIGH - XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_SIGMAX_BASE + 1);
}

u32 XGettrackerid_hw_Get_trackerPool_sigmaX_BitWidth(XGettrackerid_hw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XGETTRACKERID_HW_AXILITES_WIDTH_TRACKERPOOL_SIGMAX;
}

u32 XGettrackerid_hw_Get_trackerPool_sigmaX_Depth(XGettrackerid_hw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XGETTRACKERID_HW_AXILITES_DEPTH_TRACKERPOOL_SIGMAX;
}

u32 XGettrackerid_hw_Write_trackerPool_sigmaX_Words(XGettrackerid_hw *InstancePtr, int offset, int *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_SIGMAX_HIGH - XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_SIGMAX_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(int *)(InstancePtr->Axilites_BaseAddress + XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_SIGMAX_BASE + (offset + i)*4) = *(data + i);
    }
    return length;
}

u32 XGettrackerid_hw_Read_trackerPool_sigmaX_Words(XGettrackerid_hw *InstancePtr, int offset, int *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_SIGMAX_HIGH - XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_SIGMAX_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(int *)(InstancePtr->Axilites_BaseAddress + XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_SIGMAX_BASE + (offset + i)*4);
    }
    return length;
}

u32 XGettrackerid_hw_Write_trackerPool_sigmaX_Bytes(XGettrackerid_hw *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_SIGMAX_HIGH - XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_SIGMAX_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(char *)(InstancePtr->Axilites_BaseAddress + XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_SIGMAX_BASE + offset + i) = *(data + i);
    }
    return length;
}

u32 XGettrackerid_hw_Read_trackerPool_sigmaX_Bytes(XGettrackerid_hw *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_SIGMAX_HIGH - XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_SIGMAX_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(char *)(InstancePtr->Axilites_BaseAddress + XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_SIGMAX_BASE + offset + i);
    }
    return length;
}

u32 XGettrackerid_hw_Get_trackerPool_sigmaY_BaseAddress(XGettrackerid_hw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Axilites_BaseAddress + XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_SIGMAY_BASE);
}

u32 XGettrackerid_hw_Get_trackerPool_sigmaY_HighAddress(XGettrackerid_hw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Axilites_BaseAddress + XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_SIGMAY_HIGH);
}

u32 XGettrackerid_hw_Get_trackerPool_sigmaY_TotalBytes(XGettrackerid_hw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_SIGMAY_HIGH - XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_SIGMAY_BASE + 1);
}

u32 XGettrackerid_hw_Get_trackerPool_sigmaY_BitWidth(XGettrackerid_hw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XGETTRACKERID_HW_AXILITES_WIDTH_TRACKERPOOL_SIGMAY;
}

u32 XGettrackerid_hw_Get_trackerPool_sigmaY_Depth(XGettrackerid_hw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XGETTRACKERID_HW_AXILITES_DEPTH_TRACKERPOOL_SIGMAY;
}

u32 XGettrackerid_hw_Write_trackerPool_sigmaY_Words(XGettrackerid_hw *InstancePtr, int offset, int *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_SIGMAY_HIGH - XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_SIGMAY_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(int *)(InstancePtr->Axilites_BaseAddress + XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_SIGMAY_BASE + (offset + i)*4) = *(data + i);
    }
    return length;
}

u32 XGettrackerid_hw_Read_trackerPool_sigmaY_Words(XGettrackerid_hw *InstancePtr, int offset, int *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_SIGMAY_HIGH - XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_SIGMAY_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(int *)(InstancePtr->Axilites_BaseAddress + XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_SIGMAY_BASE + (offset + i)*4);
    }
    return length;
}

u32 XGettrackerid_hw_Write_trackerPool_sigmaY_Bytes(XGettrackerid_hw *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_SIGMAY_HIGH - XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_SIGMAY_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(char *)(InstancePtr->Axilites_BaseAddress + XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_SIGMAY_BASE + offset + i) = *(data + i);
    }
    return length;
}

u32 XGettrackerid_hw_Read_trackerPool_sigmaY_Bytes(XGettrackerid_hw *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_SIGMAY_HIGH - XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_SIGMAY_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(char *)(InstancePtr->Axilites_BaseAddress + XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_SIGMAY_BASE + offset + i);
    }
    return length;
}

u32 XGettrackerid_hw_Get_trackerPool_sigmaXY_BaseAddress(XGettrackerid_hw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Axilites_BaseAddress + XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_SIGMAXY_BASE);
}

u32 XGettrackerid_hw_Get_trackerPool_sigmaXY_HighAddress(XGettrackerid_hw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Axilites_BaseAddress + XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_SIGMAXY_HIGH);
}

u32 XGettrackerid_hw_Get_trackerPool_sigmaXY_TotalBytes(XGettrackerid_hw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_SIGMAXY_HIGH - XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_SIGMAXY_BASE + 1);
}

u32 XGettrackerid_hw_Get_trackerPool_sigmaXY_BitWidth(XGettrackerid_hw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XGETTRACKERID_HW_AXILITES_WIDTH_TRACKERPOOL_SIGMAXY;
}

u32 XGettrackerid_hw_Get_trackerPool_sigmaXY_Depth(XGettrackerid_hw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XGETTRACKERID_HW_AXILITES_DEPTH_TRACKERPOOL_SIGMAXY;
}

u32 XGettrackerid_hw_Write_trackerPool_sigmaXY_Words(XGettrackerid_hw *InstancePtr, int offset, int *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_SIGMAXY_HIGH - XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_SIGMAXY_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(int *)(InstancePtr->Axilites_BaseAddress + XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_SIGMAXY_BASE + (offset + i)*4) = *(data + i);
    }
    return length;
}

u32 XGettrackerid_hw_Read_trackerPool_sigmaXY_Words(XGettrackerid_hw *InstancePtr, int offset, int *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_SIGMAXY_HIGH - XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_SIGMAXY_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(int *)(InstancePtr->Axilites_BaseAddress + XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_SIGMAXY_BASE + (offset + i)*4);
    }
    return length;
}

u32 XGettrackerid_hw_Write_trackerPool_sigmaXY_Bytes(XGettrackerid_hw *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_SIGMAXY_HIGH - XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_SIGMAXY_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(char *)(InstancePtr->Axilites_BaseAddress + XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_SIGMAXY_BASE + offset + i) = *(data + i);
    }
    return length;
}

u32 XGettrackerid_hw_Read_trackerPool_sigmaXY_Bytes(XGettrackerid_hw *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_SIGMAXY_HIGH - XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_SIGMAXY_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(char *)(InstancePtr->Axilites_BaseAddress + XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_SIGMAXY_BASE + offset + i);
    }
    return length;
}

u32 XGettrackerid_hw_Get_trackerPool_a_BaseAddress(XGettrackerid_hw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Axilites_BaseAddress + XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_A_BASE);
}

u32 XGettrackerid_hw_Get_trackerPool_a_HighAddress(XGettrackerid_hw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Axilites_BaseAddress + XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_A_HIGH);
}

u32 XGettrackerid_hw_Get_trackerPool_a_TotalBytes(XGettrackerid_hw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_A_HIGH - XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_A_BASE + 1);
}

u32 XGettrackerid_hw_Get_trackerPool_a_BitWidth(XGettrackerid_hw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XGETTRACKERID_HW_AXILITES_WIDTH_TRACKERPOOL_A;
}

u32 XGettrackerid_hw_Get_trackerPool_a_Depth(XGettrackerid_hw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XGETTRACKERID_HW_AXILITES_DEPTH_TRACKERPOOL_A;
}

u32 XGettrackerid_hw_Write_trackerPool_a_Words(XGettrackerid_hw *InstancePtr, int offset, int *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_A_HIGH - XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_A_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(int *)(InstancePtr->Axilites_BaseAddress + XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_A_BASE + (offset + i)*4) = *(data + i);
    }
    return length;
}

u32 XGettrackerid_hw_Read_trackerPool_a_Words(XGettrackerid_hw *InstancePtr, int offset, int *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_A_HIGH - XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_A_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(int *)(InstancePtr->Axilites_BaseAddress + XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_A_BASE + (offset + i)*4);
    }
    return length;
}

u32 XGettrackerid_hw_Write_trackerPool_a_Bytes(XGettrackerid_hw *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_A_HIGH - XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_A_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(char *)(InstancePtr->Axilites_BaseAddress + XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_A_BASE + offset + i) = *(data + i);
    }
    return length;
}

u32 XGettrackerid_hw_Read_trackerPool_a_Bytes(XGettrackerid_hw *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_A_HIGH - XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_A_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(char *)(InstancePtr->Axilites_BaseAddress + XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_A_BASE + offset + i);
    }
    return length;
}

u32 XGettrackerid_hw_Get_trackerPool_b_BaseAddress(XGettrackerid_hw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Axilites_BaseAddress + XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_B_BASE);
}

u32 XGettrackerid_hw_Get_trackerPool_b_HighAddress(XGettrackerid_hw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Axilites_BaseAddress + XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_B_HIGH);
}

u32 XGettrackerid_hw_Get_trackerPool_b_TotalBytes(XGettrackerid_hw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_B_HIGH - XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_B_BASE + 1);
}

u32 XGettrackerid_hw_Get_trackerPool_b_BitWidth(XGettrackerid_hw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XGETTRACKERID_HW_AXILITES_WIDTH_TRACKERPOOL_B;
}

u32 XGettrackerid_hw_Get_trackerPool_b_Depth(XGettrackerid_hw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XGETTRACKERID_HW_AXILITES_DEPTH_TRACKERPOOL_B;
}

u32 XGettrackerid_hw_Write_trackerPool_b_Words(XGettrackerid_hw *InstancePtr, int offset, int *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_B_HIGH - XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_B_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(int *)(InstancePtr->Axilites_BaseAddress + XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_B_BASE + (offset + i)*4) = *(data + i);
    }
    return length;
}

u32 XGettrackerid_hw_Read_trackerPool_b_Words(XGettrackerid_hw *InstancePtr, int offset, int *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_B_HIGH - XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_B_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(int *)(InstancePtr->Axilites_BaseAddress + XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_B_BASE + (offset + i)*4);
    }
    return length;
}

u32 XGettrackerid_hw_Write_trackerPool_b_Bytes(XGettrackerid_hw *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_B_HIGH - XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_B_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(char *)(InstancePtr->Axilites_BaseAddress + XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_B_BASE + offset + i) = *(data + i);
    }
    return length;
}

u32 XGettrackerid_hw_Read_trackerPool_b_Bytes(XGettrackerid_hw *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_B_HIGH - XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_B_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(char *)(InstancePtr->Axilites_BaseAddress + XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_B_BASE + offset + i);
    }
    return length;
}

u32 XGettrackerid_hw_Get_trackerPool_alpha_BaseAddress(XGettrackerid_hw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Axilites_BaseAddress + XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_ALPHA_BASE);
}

u32 XGettrackerid_hw_Get_trackerPool_alpha_HighAddress(XGettrackerid_hw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Axilites_BaseAddress + XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_ALPHA_HIGH);
}

u32 XGettrackerid_hw_Get_trackerPool_alpha_TotalBytes(XGettrackerid_hw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_ALPHA_HIGH - XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_ALPHA_BASE + 1);
}

u32 XGettrackerid_hw_Get_trackerPool_alpha_BitWidth(XGettrackerid_hw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XGETTRACKERID_HW_AXILITES_WIDTH_TRACKERPOOL_ALPHA;
}

u32 XGettrackerid_hw_Get_trackerPool_alpha_Depth(XGettrackerid_hw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XGETTRACKERID_HW_AXILITES_DEPTH_TRACKERPOOL_ALPHA;
}

u32 XGettrackerid_hw_Write_trackerPool_alpha_Words(XGettrackerid_hw *InstancePtr, int offset, int *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_ALPHA_HIGH - XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_ALPHA_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(int *)(InstancePtr->Axilites_BaseAddress + XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_ALPHA_BASE + (offset + i)*4) = *(data + i);
    }
    return length;
}

u32 XGettrackerid_hw_Read_trackerPool_alpha_Words(XGettrackerid_hw *InstancePtr, int offset, int *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_ALPHA_HIGH - XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_ALPHA_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(int *)(InstancePtr->Axilites_BaseAddress + XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_ALPHA_BASE + (offset + i)*4);
    }
    return length;
}

u32 XGettrackerid_hw_Write_trackerPool_alpha_Bytes(XGettrackerid_hw *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_ALPHA_HIGH - XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_ALPHA_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(char *)(InstancePtr->Axilites_BaseAddress + XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_ALPHA_BASE + offset + i) = *(data + i);
    }
    return length;
}

u32 XGettrackerid_hw_Read_trackerPool_alpha_Bytes(XGettrackerid_hw *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_ALPHA_HIGH - XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_ALPHA_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(char *)(InstancePtr->Axilites_BaseAddress + XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_ALPHA_BASE + offset + i);
    }
    return length;
}

u32 XGettrackerid_hw_Get_trackerPool_sumFlowX_BaseAddress(XGettrackerid_hw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Axilites_BaseAddress + XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_SUMFLOWX_BASE);
}

u32 XGettrackerid_hw_Get_trackerPool_sumFlowX_HighAddress(XGettrackerid_hw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Axilites_BaseAddress + XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_SUMFLOWX_HIGH);
}

u32 XGettrackerid_hw_Get_trackerPool_sumFlowX_TotalBytes(XGettrackerid_hw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_SUMFLOWX_HIGH - XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_SUMFLOWX_BASE + 1);
}

u32 XGettrackerid_hw_Get_trackerPool_sumFlowX_BitWidth(XGettrackerid_hw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XGETTRACKERID_HW_AXILITES_WIDTH_TRACKERPOOL_SUMFLOWX;
}

u32 XGettrackerid_hw_Get_trackerPool_sumFlowX_Depth(XGettrackerid_hw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XGETTRACKERID_HW_AXILITES_DEPTH_TRACKERPOOL_SUMFLOWX;
}

u32 XGettrackerid_hw_Write_trackerPool_sumFlowX_Words(XGettrackerid_hw *InstancePtr, int offset, int *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_SUMFLOWX_HIGH - XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_SUMFLOWX_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(int *)(InstancePtr->Axilites_BaseAddress + XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_SUMFLOWX_BASE + (offset + i)*4) = *(data + i);
    }
    return length;
}

u32 XGettrackerid_hw_Read_trackerPool_sumFlowX_Words(XGettrackerid_hw *InstancePtr, int offset, int *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_SUMFLOWX_HIGH - XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_SUMFLOWX_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(int *)(InstancePtr->Axilites_BaseAddress + XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_SUMFLOWX_BASE + (offset + i)*4);
    }
    return length;
}

u32 XGettrackerid_hw_Write_trackerPool_sumFlowX_Bytes(XGettrackerid_hw *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_SUMFLOWX_HIGH - XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_SUMFLOWX_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(char *)(InstancePtr->Axilites_BaseAddress + XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_SUMFLOWX_BASE + offset + i) = *(data + i);
    }
    return length;
}

u32 XGettrackerid_hw_Read_trackerPool_sumFlowX_Bytes(XGettrackerid_hw *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_SUMFLOWX_HIGH - XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_SUMFLOWX_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(char *)(InstancePtr->Axilites_BaseAddress + XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_SUMFLOWX_BASE + offset + i);
    }
    return length;
}

u32 XGettrackerid_hw_Get_trackerPool_sumFlowY_BaseAddress(XGettrackerid_hw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Axilites_BaseAddress + XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_SUMFLOWY_BASE);
}

u32 XGettrackerid_hw_Get_trackerPool_sumFlowY_HighAddress(XGettrackerid_hw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Axilites_BaseAddress + XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_SUMFLOWY_HIGH);
}

u32 XGettrackerid_hw_Get_trackerPool_sumFlowY_TotalBytes(XGettrackerid_hw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_SUMFLOWY_HIGH - XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_SUMFLOWY_BASE + 1);
}

u32 XGettrackerid_hw_Get_trackerPool_sumFlowY_BitWidth(XGettrackerid_hw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XGETTRACKERID_HW_AXILITES_WIDTH_TRACKERPOOL_SUMFLOWY;
}

u32 XGettrackerid_hw_Get_trackerPool_sumFlowY_Depth(XGettrackerid_hw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XGETTRACKERID_HW_AXILITES_DEPTH_TRACKERPOOL_SUMFLOWY;
}

u32 XGettrackerid_hw_Write_trackerPool_sumFlowY_Words(XGettrackerid_hw *InstancePtr, int offset, int *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_SUMFLOWY_HIGH - XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_SUMFLOWY_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(int *)(InstancePtr->Axilites_BaseAddress + XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_SUMFLOWY_BASE + (offset + i)*4) = *(data + i);
    }
    return length;
}

u32 XGettrackerid_hw_Read_trackerPool_sumFlowY_Words(XGettrackerid_hw *InstancePtr, int offset, int *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_SUMFLOWY_HIGH - XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_SUMFLOWY_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(int *)(InstancePtr->Axilites_BaseAddress + XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_SUMFLOWY_BASE + (offset + i)*4);
    }
    return length;
}

u32 XGettrackerid_hw_Write_trackerPool_sumFlowY_Bytes(XGettrackerid_hw *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_SUMFLOWY_HIGH - XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_SUMFLOWY_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(char *)(InstancePtr->Axilites_BaseAddress + XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_SUMFLOWY_BASE + offset + i) = *(data + i);
    }
    return length;
}

u32 XGettrackerid_hw_Read_trackerPool_sumFlowY_Bytes(XGettrackerid_hw *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_SUMFLOWY_HIGH - XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_SUMFLOWY_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(char *)(InstancePtr->Axilites_BaseAddress + XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_SUMFLOWY_BASE + offset + i);
    }
    return length;
}

u32 XGettrackerid_hw_Get_trackerPool_avgFlowX_BaseAddress(XGettrackerid_hw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Axilites_BaseAddress + XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_AVGFLOWX_BASE);
}

u32 XGettrackerid_hw_Get_trackerPool_avgFlowX_HighAddress(XGettrackerid_hw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Axilites_BaseAddress + XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_AVGFLOWX_HIGH);
}

u32 XGettrackerid_hw_Get_trackerPool_avgFlowX_TotalBytes(XGettrackerid_hw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_AVGFLOWX_HIGH - XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_AVGFLOWX_BASE + 1);
}

u32 XGettrackerid_hw_Get_trackerPool_avgFlowX_BitWidth(XGettrackerid_hw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XGETTRACKERID_HW_AXILITES_WIDTH_TRACKERPOOL_AVGFLOWX;
}

u32 XGettrackerid_hw_Get_trackerPool_avgFlowX_Depth(XGettrackerid_hw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XGETTRACKERID_HW_AXILITES_DEPTH_TRACKERPOOL_AVGFLOWX;
}

u32 XGettrackerid_hw_Write_trackerPool_avgFlowX_Words(XGettrackerid_hw *InstancePtr, int offset, int *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_AVGFLOWX_HIGH - XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_AVGFLOWX_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(int *)(InstancePtr->Axilites_BaseAddress + XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_AVGFLOWX_BASE + (offset + i)*4) = *(data + i);
    }
    return length;
}

u32 XGettrackerid_hw_Read_trackerPool_avgFlowX_Words(XGettrackerid_hw *InstancePtr, int offset, int *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_AVGFLOWX_HIGH - XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_AVGFLOWX_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(int *)(InstancePtr->Axilites_BaseAddress + XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_AVGFLOWX_BASE + (offset + i)*4);
    }
    return length;
}

u32 XGettrackerid_hw_Write_trackerPool_avgFlowX_Bytes(XGettrackerid_hw *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_AVGFLOWX_HIGH - XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_AVGFLOWX_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(char *)(InstancePtr->Axilites_BaseAddress + XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_AVGFLOWX_BASE + offset + i) = *(data + i);
    }
    return length;
}

u32 XGettrackerid_hw_Read_trackerPool_avgFlowX_Bytes(XGettrackerid_hw *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_AVGFLOWX_HIGH - XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_AVGFLOWX_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(char *)(InstancePtr->Axilites_BaseAddress + XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_AVGFLOWX_BASE + offset + i);
    }
    return length;
}

u32 XGettrackerid_hw_Get_trackerPool_avgFlowY_BaseAddress(XGettrackerid_hw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Axilites_BaseAddress + XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_AVGFLOWY_BASE);
}

u32 XGettrackerid_hw_Get_trackerPool_avgFlowY_HighAddress(XGettrackerid_hw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Axilites_BaseAddress + XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_AVGFLOWY_HIGH);
}

u32 XGettrackerid_hw_Get_trackerPool_avgFlowY_TotalBytes(XGettrackerid_hw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_AVGFLOWY_HIGH - XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_AVGFLOWY_BASE + 1);
}

u32 XGettrackerid_hw_Get_trackerPool_avgFlowY_BitWidth(XGettrackerid_hw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XGETTRACKERID_HW_AXILITES_WIDTH_TRACKERPOOL_AVGFLOWY;
}

u32 XGettrackerid_hw_Get_trackerPool_avgFlowY_Depth(XGettrackerid_hw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XGETTRACKERID_HW_AXILITES_DEPTH_TRACKERPOOL_AVGFLOWY;
}

u32 XGettrackerid_hw_Write_trackerPool_avgFlowY_Words(XGettrackerid_hw *InstancePtr, int offset, int *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_AVGFLOWY_HIGH - XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_AVGFLOWY_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(int *)(InstancePtr->Axilites_BaseAddress + XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_AVGFLOWY_BASE + (offset + i)*4) = *(data + i);
    }
    return length;
}

u32 XGettrackerid_hw_Read_trackerPool_avgFlowY_Words(XGettrackerid_hw *InstancePtr, int offset, int *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_AVGFLOWY_HIGH - XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_AVGFLOWY_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(int *)(InstancePtr->Axilites_BaseAddress + XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_AVGFLOWY_BASE + (offset + i)*4);
    }
    return length;
}

u32 XGettrackerid_hw_Write_trackerPool_avgFlowY_Bytes(XGettrackerid_hw *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_AVGFLOWY_HIGH - XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_AVGFLOWY_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(char *)(InstancePtr->Axilites_BaseAddress + XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_AVGFLOWY_BASE + offset + i) = *(data + i);
    }
    return length;
}

u32 XGettrackerid_hw_Read_trackerPool_avgFlowY_Bytes(XGettrackerid_hw *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_AVGFLOWY_HIGH - XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_AVGFLOWY_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(char *)(InstancePtr->Axilites_BaseAddress + XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_AVGFLOWY_BASE + offset + i);
    }
    return length;
}

u32 XGettrackerid_hw_Get_trackerPool_activity_BaseAddress(XGettrackerid_hw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Axilites_BaseAddress + XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_ACTIVITY_BASE);
}

u32 XGettrackerid_hw_Get_trackerPool_activity_HighAddress(XGettrackerid_hw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Axilites_BaseAddress + XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_ACTIVITY_HIGH);
}

u32 XGettrackerid_hw_Get_trackerPool_activity_TotalBytes(XGettrackerid_hw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_ACTIVITY_HIGH - XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_ACTIVITY_BASE + 1);
}

u32 XGettrackerid_hw_Get_trackerPool_activity_BitWidth(XGettrackerid_hw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XGETTRACKERID_HW_AXILITES_WIDTH_TRACKERPOOL_ACTIVITY;
}

u32 XGettrackerid_hw_Get_trackerPool_activity_Depth(XGettrackerid_hw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XGETTRACKERID_HW_AXILITES_DEPTH_TRACKERPOOL_ACTIVITY;
}

u32 XGettrackerid_hw_Write_trackerPool_activity_Words(XGettrackerid_hw *InstancePtr, int offset, int *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_ACTIVITY_HIGH - XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_ACTIVITY_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(int *)(InstancePtr->Axilites_BaseAddress + XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_ACTIVITY_BASE + (offset + i)*4) = *(data + i);
    }
    return length;
}

u32 XGettrackerid_hw_Read_trackerPool_activity_Words(XGettrackerid_hw *InstancePtr, int offset, int *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_ACTIVITY_HIGH - XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_ACTIVITY_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(int *)(InstancePtr->Axilites_BaseAddress + XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_ACTIVITY_BASE + (offset + i)*4);
    }
    return length;
}

u32 XGettrackerid_hw_Write_trackerPool_activity_Bytes(XGettrackerid_hw *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_ACTIVITY_HIGH - XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_ACTIVITY_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(char *)(InstancePtr->Axilites_BaseAddress + XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_ACTIVITY_BASE + offset + i) = *(data + i);
    }
    return length;
}

u32 XGettrackerid_hw_Read_trackerPool_activity_Bytes(XGettrackerid_hw *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_ACTIVITY_HIGH - XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_ACTIVITY_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(char *)(InstancePtr->Axilites_BaseAddress + XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_ACTIVITY_BASE + offset + i);
    }
    return length;
}

u32 XGettrackerid_hw_Get_trackerPool_lastTimeStamp_BaseAddress(XGettrackerid_hw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Axilites_BaseAddress + XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_LASTTIMESTAMP_BASE);
}

u32 XGettrackerid_hw_Get_trackerPool_lastTimeStamp_HighAddress(XGettrackerid_hw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Axilites_BaseAddress + XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_LASTTIMESTAMP_HIGH);
}

u32 XGettrackerid_hw_Get_trackerPool_lastTimeStamp_TotalBytes(XGettrackerid_hw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_LASTTIMESTAMP_HIGH - XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_LASTTIMESTAMP_BASE + 1);
}

u32 XGettrackerid_hw_Get_trackerPool_lastTimeStamp_BitWidth(XGettrackerid_hw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XGETTRACKERID_HW_AXILITES_WIDTH_TRACKERPOOL_LASTTIMESTAMP;
}

u32 XGettrackerid_hw_Get_trackerPool_lastTimeStamp_Depth(XGettrackerid_hw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XGETTRACKERID_HW_AXILITES_DEPTH_TRACKERPOOL_LASTTIMESTAMP;
}

u32 XGettrackerid_hw_Write_trackerPool_lastTimeStamp_Words(XGettrackerid_hw *InstancePtr, int offset, int *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_LASTTIMESTAMP_HIGH - XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_LASTTIMESTAMP_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(int *)(InstancePtr->Axilites_BaseAddress + XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_LASTTIMESTAMP_BASE + (offset + i)*4) = *(data + i);
    }
    return length;
}

u32 XGettrackerid_hw_Read_trackerPool_lastTimeStamp_Words(XGettrackerid_hw *InstancePtr, int offset, int *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_LASTTIMESTAMP_HIGH - XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_LASTTIMESTAMP_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(int *)(InstancePtr->Axilites_BaseAddress + XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_LASTTIMESTAMP_BASE + (offset + i)*4);
    }
    return length;
}

u32 XGettrackerid_hw_Write_trackerPool_lastTimeStamp_Bytes(XGettrackerid_hw *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_LASTTIMESTAMP_HIGH - XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_LASTTIMESTAMP_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(char *)(InstancePtr->Axilites_BaseAddress + XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_LASTTIMESTAMP_BASE + offset + i) = *(data + i);
    }
    return length;
}

u32 XGettrackerid_hw_Read_trackerPool_lastTimeStamp_Bytes(XGettrackerid_hw *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_LASTTIMESTAMP_HIGH - XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_LASTTIMESTAMP_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(char *)(InstancePtr->Axilites_BaseAddress + XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_LASTTIMESTAMP_BASE + offset + i);
    }
    return length;
}

