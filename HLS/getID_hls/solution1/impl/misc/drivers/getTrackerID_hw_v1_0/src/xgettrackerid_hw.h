// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef XGETTRACKERID_HW_H
#define XGETTRACKERID_HW_H

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
#include "xgettrackerid_hw_hw.h"

/**************************** Type Definitions ******************************/
#ifdef __linux__
typedef uint8_t u8;
typedef uint16_t u16;
typedef uint32_t u32;
#else
typedef struct {
    u16 DeviceId;
    u32 Axilites_BaseAddress;
} XGettrackerid_hw_Config;
#endif

typedef struct {
    u32 Axilites_BaseAddress;
    u32 IsReady;
} XGettrackerid_hw;

/***************** Macros (Inline Functions) Definitions *********************/
#ifndef __linux__
#define XGettrackerid_hw_WriteReg(BaseAddress, RegOffset, Data) \
    Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))
#define XGettrackerid_hw_ReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))
#else
#define XGettrackerid_hw_WriteReg(BaseAddress, RegOffset, Data) \
    *(volatile u32*)((BaseAddress) + (RegOffset)) = (u32)(Data)
#define XGettrackerid_hw_ReadReg(BaseAddress, RegOffset) \
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
int XGettrackerid_hw_Initialize(XGettrackerid_hw *InstancePtr, u16 DeviceId);
XGettrackerid_hw_Config* XGettrackerid_hw_LookupConfig(u16 DeviceId);
int XGettrackerid_hw_CfgInitialize(XGettrackerid_hw *InstancePtr, XGettrackerid_hw_Config *ConfigPtr);
#else
int XGettrackerid_hw_Initialize(XGettrackerid_hw *InstancePtr, const char* InstanceName);
int XGettrackerid_hw_Release(XGettrackerid_hw *InstancePtr);
#endif


u32 XGettrackerid_hw_Get_trackerPool_state_BaseAddress(XGettrackerid_hw *InstancePtr);
u32 XGettrackerid_hw_Get_trackerPool_state_HighAddress(XGettrackerid_hw *InstancePtr);
u32 XGettrackerid_hw_Get_trackerPool_state_TotalBytes(XGettrackerid_hw *InstancePtr);
u32 XGettrackerid_hw_Get_trackerPool_state_BitWidth(XGettrackerid_hw *InstancePtr);
u32 XGettrackerid_hw_Get_trackerPool_state_Depth(XGettrackerid_hw *InstancePtr);
u32 XGettrackerid_hw_Write_trackerPool_state_Words(XGettrackerid_hw *InstancePtr, int offset, int *data, int length);
u32 XGettrackerid_hw_Read_trackerPool_state_Words(XGettrackerid_hw *InstancePtr, int offset, int *data, int length);
u32 XGettrackerid_hw_Write_trackerPool_state_Bytes(XGettrackerid_hw *InstancePtr, int offset, char *data, int length);
u32 XGettrackerid_hw_Read_trackerPool_state_Bytes(XGettrackerid_hw *InstancePtr, int offset, char *data, int length);
u32 XGettrackerid_hw_Get_trackerPool_eventCount_BaseAddress(XGettrackerid_hw *InstancePtr);
u32 XGettrackerid_hw_Get_trackerPool_eventCount_HighAddress(XGettrackerid_hw *InstancePtr);
u32 XGettrackerid_hw_Get_trackerPool_eventCount_TotalBytes(XGettrackerid_hw *InstancePtr);
u32 XGettrackerid_hw_Get_trackerPool_eventCount_BitWidth(XGettrackerid_hw *InstancePtr);
u32 XGettrackerid_hw_Get_trackerPool_eventCount_Depth(XGettrackerid_hw *InstancePtr);
u32 XGettrackerid_hw_Write_trackerPool_eventCount_Words(XGettrackerid_hw *InstancePtr, int offset, int *data, int length);
u32 XGettrackerid_hw_Read_trackerPool_eventCount_Words(XGettrackerid_hw *InstancePtr, int offset, int *data, int length);
u32 XGettrackerid_hw_Write_trackerPool_eventCount_Bytes(XGettrackerid_hw *InstancePtr, int offset, char *data, int length);
u32 XGettrackerid_hw_Read_trackerPool_eventCount_Bytes(XGettrackerid_hw *InstancePtr, int offset, char *data, int length);
u32 XGettrackerid_hw_Get_trackerPool_resetTime_BaseAddress(XGettrackerid_hw *InstancePtr);
u32 XGettrackerid_hw_Get_trackerPool_resetTime_HighAddress(XGettrackerid_hw *InstancePtr);
u32 XGettrackerid_hw_Get_trackerPool_resetTime_TotalBytes(XGettrackerid_hw *InstancePtr);
u32 XGettrackerid_hw_Get_trackerPool_resetTime_BitWidth(XGettrackerid_hw *InstancePtr);
u32 XGettrackerid_hw_Get_trackerPool_resetTime_Depth(XGettrackerid_hw *InstancePtr);
u32 XGettrackerid_hw_Write_trackerPool_resetTime_Words(XGettrackerid_hw *InstancePtr, int offset, int *data, int length);
u32 XGettrackerid_hw_Read_trackerPool_resetTime_Words(XGettrackerid_hw *InstancePtr, int offset, int *data, int length);
u32 XGettrackerid_hw_Write_trackerPool_resetTime_Bytes(XGettrackerid_hw *InstancePtr, int offset, char *data, int length);
u32 XGettrackerid_hw_Read_trackerPool_resetTime_Bytes(XGettrackerid_hw *InstancePtr, int offset, char *data, int length);
u32 XGettrackerid_hw_Get_trackerPool_x_BaseAddress(XGettrackerid_hw *InstancePtr);
u32 XGettrackerid_hw_Get_trackerPool_x_HighAddress(XGettrackerid_hw *InstancePtr);
u32 XGettrackerid_hw_Get_trackerPool_x_TotalBytes(XGettrackerid_hw *InstancePtr);
u32 XGettrackerid_hw_Get_trackerPool_x_BitWidth(XGettrackerid_hw *InstancePtr);
u32 XGettrackerid_hw_Get_trackerPool_x_Depth(XGettrackerid_hw *InstancePtr);
u32 XGettrackerid_hw_Write_trackerPool_x_Words(XGettrackerid_hw *InstancePtr, int offset, int *data, int length);
u32 XGettrackerid_hw_Read_trackerPool_x_Words(XGettrackerid_hw *InstancePtr, int offset, int *data, int length);
u32 XGettrackerid_hw_Write_trackerPool_x_Bytes(XGettrackerid_hw *InstancePtr, int offset, char *data, int length);
u32 XGettrackerid_hw_Read_trackerPool_x_Bytes(XGettrackerid_hw *InstancePtr, int offset, char *data, int length);
u32 XGettrackerid_hw_Get_trackerPool_y_BaseAddress(XGettrackerid_hw *InstancePtr);
u32 XGettrackerid_hw_Get_trackerPool_y_HighAddress(XGettrackerid_hw *InstancePtr);
u32 XGettrackerid_hw_Get_trackerPool_y_TotalBytes(XGettrackerid_hw *InstancePtr);
u32 XGettrackerid_hw_Get_trackerPool_y_BitWidth(XGettrackerid_hw *InstancePtr);
u32 XGettrackerid_hw_Get_trackerPool_y_Depth(XGettrackerid_hw *InstancePtr);
u32 XGettrackerid_hw_Write_trackerPool_y_Words(XGettrackerid_hw *InstancePtr, int offset, int *data, int length);
u32 XGettrackerid_hw_Read_trackerPool_y_Words(XGettrackerid_hw *InstancePtr, int offset, int *data, int length);
u32 XGettrackerid_hw_Write_trackerPool_y_Bytes(XGettrackerid_hw *InstancePtr, int offset, char *data, int length);
u32 XGettrackerid_hw_Read_trackerPool_y_Bytes(XGettrackerid_hw *InstancePtr, int offset, char *data, int length);
u32 XGettrackerid_hw_Get_trackerPool_prevX_BaseAddress(XGettrackerid_hw *InstancePtr);
u32 XGettrackerid_hw_Get_trackerPool_prevX_HighAddress(XGettrackerid_hw *InstancePtr);
u32 XGettrackerid_hw_Get_trackerPool_prevX_TotalBytes(XGettrackerid_hw *InstancePtr);
u32 XGettrackerid_hw_Get_trackerPool_prevX_BitWidth(XGettrackerid_hw *InstancePtr);
u32 XGettrackerid_hw_Get_trackerPool_prevX_Depth(XGettrackerid_hw *InstancePtr);
u32 XGettrackerid_hw_Write_trackerPool_prevX_Words(XGettrackerid_hw *InstancePtr, int offset, int *data, int length);
u32 XGettrackerid_hw_Read_trackerPool_prevX_Words(XGettrackerid_hw *InstancePtr, int offset, int *data, int length);
u32 XGettrackerid_hw_Write_trackerPool_prevX_Bytes(XGettrackerid_hw *InstancePtr, int offset, char *data, int length);
u32 XGettrackerid_hw_Read_trackerPool_prevX_Bytes(XGettrackerid_hw *InstancePtr, int offset, char *data, int length);
u32 XGettrackerid_hw_Get_trackerPool_prevY_BaseAddress(XGettrackerid_hw *InstancePtr);
u32 XGettrackerid_hw_Get_trackerPool_prevY_HighAddress(XGettrackerid_hw *InstancePtr);
u32 XGettrackerid_hw_Get_trackerPool_prevY_TotalBytes(XGettrackerid_hw *InstancePtr);
u32 XGettrackerid_hw_Get_trackerPool_prevY_BitWidth(XGettrackerid_hw *InstancePtr);
u32 XGettrackerid_hw_Get_trackerPool_prevY_Depth(XGettrackerid_hw *InstancePtr);
u32 XGettrackerid_hw_Write_trackerPool_prevY_Words(XGettrackerid_hw *InstancePtr, int offset, int *data, int length);
u32 XGettrackerid_hw_Read_trackerPool_prevY_Words(XGettrackerid_hw *InstancePtr, int offset, int *data, int length);
u32 XGettrackerid_hw_Write_trackerPool_prevY_Bytes(XGettrackerid_hw *InstancePtr, int offset, char *data, int length);
u32 XGettrackerid_hw_Read_trackerPool_prevY_Bytes(XGettrackerid_hw *InstancePtr, int offset, char *data, int length);
u32 XGettrackerid_hw_Get_trackerPool_predX_BaseAddress(XGettrackerid_hw *InstancePtr);
u32 XGettrackerid_hw_Get_trackerPool_predX_HighAddress(XGettrackerid_hw *InstancePtr);
u32 XGettrackerid_hw_Get_trackerPool_predX_TotalBytes(XGettrackerid_hw *InstancePtr);
u32 XGettrackerid_hw_Get_trackerPool_predX_BitWidth(XGettrackerid_hw *InstancePtr);
u32 XGettrackerid_hw_Get_trackerPool_predX_Depth(XGettrackerid_hw *InstancePtr);
u32 XGettrackerid_hw_Write_trackerPool_predX_Words(XGettrackerid_hw *InstancePtr, int offset, int *data, int length);
u32 XGettrackerid_hw_Read_trackerPool_predX_Words(XGettrackerid_hw *InstancePtr, int offset, int *data, int length);
u32 XGettrackerid_hw_Write_trackerPool_predX_Bytes(XGettrackerid_hw *InstancePtr, int offset, char *data, int length);
u32 XGettrackerid_hw_Read_trackerPool_predX_Bytes(XGettrackerid_hw *InstancePtr, int offset, char *data, int length);
u32 XGettrackerid_hw_Get_trackerPool_predY_BaseAddress(XGettrackerid_hw *InstancePtr);
u32 XGettrackerid_hw_Get_trackerPool_predY_HighAddress(XGettrackerid_hw *InstancePtr);
u32 XGettrackerid_hw_Get_trackerPool_predY_TotalBytes(XGettrackerid_hw *InstancePtr);
u32 XGettrackerid_hw_Get_trackerPool_predY_BitWidth(XGettrackerid_hw *InstancePtr);
u32 XGettrackerid_hw_Get_trackerPool_predY_Depth(XGettrackerid_hw *InstancePtr);
u32 XGettrackerid_hw_Write_trackerPool_predY_Words(XGettrackerid_hw *InstancePtr, int offset, int *data, int length);
u32 XGettrackerid_hw_Read_trackerPool_predY_Words(XGettrackerid_hw *InstancePtr, int offset, int *data, int length);
u32 XGettrackerid_hw_Write_trackerPool_predY_Bytes(XGettrackerid_hw *InstancePtr, int offset, char *data, int length);
u32 XGettrackerid_hw_Read_trackerPool_predY_Bytes(XGettrackerid_hw *InstancePtr, int offset, char *data, int length);
u32 XGettrackerid_hw_Get_trackerPool_shapeFactor_BaseAddress(XGettrackerid_hw *InstancePtr);
u32 XGettrackerid_hw_Get_trackerPool_shapeFactor_HighAddress(XGettrackerid_hw *InstancePtr);
u32 XGettrackerid_hw_Get_trackerPool_shapeFactor_TotalBytes(XGettrackerid_hw *InstancePtr);
u32 XGettrackerid_hw_Get_trackerPool_shapeFactor_BitWidth(XGettrackerid_hw *InstancePtr);
u32 XGettrackerid_hw_Get_trackerPool_shapeFactor_Depth(XGettrackerid_hw *InstancePtr);
u32 XGettrackerid_hw_Write_trackerPool_shapeFactor_Words(XGettrackerid_hw *InstancePtr, int offset, int *data, int length);
u32 XGettrackerid_hw_Read_trackerPool_shapeFactor_Words(XGettrackerid_hw *InstancePtr, int offset, int *data, int length);
u32 XGettrackerid_hw_Write_trackerPool_shapeFactor_Bytes(XGettrackerid_hw *InstancePtr, int offset, char *data, int length);
u32 XGettrackerid_hw_Read_trackerPool_shapeFactor_Bytes(XGettrackerid_hw *InstancePtr, int offset, char *data, int length);
u32 XGettrackerid_hw_Get_trackerPool_origShapeFactor_BaseAddress(XGettrackerid_hw *InstancePtr);
u32 XGettrackerid_hw_Get_trackerPool_origShapeFactor_HighAddress(XGettrackerid_hw *InstancePtr);
u32 XGettrackerid_hw_Get_trackerPool_origShapeFactor_TotalBytes(XGettrackerid_hw *InstancePtr);
u32 XGettrackerid_hw_Get_trackerPool_origShapeFactor_BitWidth(XGettrackerid_hw *InstancePtr);
u32 XGettrackerid_hw_Get_trackerPool_origShapeFactor_Depth(XGettrackerid_hw *InstancePtr);
u32 XGettrackerid_hw_Write_trackerPool_origShapeFactor_Words(XGettrackerid_hw *InstancePtr, int offset, int *data, int length);
u32 XGettrackerid_hw_Read_trackerPool_origShapeFactor_Words(XGettrackerid_hw *InstancePtr, int offset, int *data, int length);
u32 XGettrackerid_hw_Write_trackerPool_origShapeFactor_Bytes(XGettrackerid_hw *InstancePtr, int offset, char *data, int length);
u32 XGettrackerid_hw_Read_trackerPool_origShapeFactor_Bytes(XGettrackerid_hw *InstancePtr, int offset, char *data, int length);
u32 XGettrackerid_hw_Get_trackerPool_posFactor_BaseAddress(XGettrackerid_hw *InstancePtr);
u32 XGettrackerid_hw_Get_trackerPool_posFactor_HighAddress(XGettrackerid_hw *InstancePtr);
u32 XGettrackerid_hw_Get_trackerPool_posFactor_TotalBytes(XGettrackerid_hw *InstancePtr);
u32 XGettrackerid_hw_Get_trackerPool_posFactor_BitWidth(XGettrackerid_hw *InstancePtr);
u32 XGettrackerid_hw_Get_trackerPool_posFactor_Depth(XGettrackerid_hw *InstancePtr);
u32 XGettrackerid_hw_Write_trackerPool_posFactor_Words(XGettrackerid_hw *InstancePtr, int offset, int *data, int length);
u32 XGettrackerid_hw_Read_trackerPool_posFactor_Words(XGettrackerid_hw *InstancePtr, int offset, int *data, int length);
u32 XGettrackerid_hw_Write_trackerPool_posFactor_Bytes(XGettrackerid_hw *InstancePtr, int offset, char *data, int length);
u32 XGettrackerid_hw_Read_trackerPool_posFactor_Bytes(XGettrackerid_hw *InstancePtr, int offset, char *data, int length);
u32 XGettrackerid_hw_Get_trackerPool_velFactor_BaseAddress(XGettrackerid_hw *InstancePtr);
u32 XGettrackerid_hw_Get_trackerPool_velFactor_HighAddress(XGettrackerid_hw *InstancePtr);
u32 XGettrackerid_hw_Get_trackerPool_velFactor_TotalBytes(XGettrackerid_hw *InstancePtr);
u32 XGettrackerid_hw_Get_trackerPool_velFactor_BitWidth(XGettrackerid_hw *InstancePtr);
u32 XGettrackerid_hw_Get_trackerPool_velFactor_Depth(XGettrackerid_hw *InstancePtr);
u32 XGettrackerid_hw_Write_trackerPool_velFactor_Words(XGettrackerid_hw *InstancePtr, int offset, int *data, int length);
u32 XGettrackerid_hw_Read_trackerPool_velFactor_Words(XGettrackerid_hw *InstancePtr, int offset, int *data, int length);
u32 XGettrackerid_hw_Write_trackerPool_velFactor_Bytes(XGettrackerid_hw *InstancePtr, int offset, char *data, int length);
u32 XGettrackerid_hw_Read_trackerPool_velFactor_Bytes(XGettrackerid_hw *InstancePtr, int offset, char *data, int length);
u32 XGettrackerid_hw_Get_trackerPool_clusterSize_BaseAddress(XGettrackerid_hw *InstancePtr);
u32 XGettrackerid_hw_Get_trackerPool_clusterSize_HighAddress(XGettrackerid_hw *InstancePtr);
u32 XGettrackerid_hw_Get_trackerPool_clusterSize_TotalBytes(XGettrackerid_hw *InstancePtr);
u32 XGettrackerid_hw_Get_trackerPool_clusterSize_BitWidth(XGettrackerid_hw *InstancePtr);
u32 XGettrackerid_hw_Get_trackerPool_clusterSize_Depth(XGettrackerid_hw *InstancePtr);
u32 XGettrackerid_hw_Write_trackerPool_clusterSize_Words(XGettrackerid_hw *InstancePtr, int offset, int *data, int length);
u32 XGettrackerid_hw_Read_trackerPool_clusterSize_Words(XGettrackerid_hw *InstancePtr, int offset, int *data, int length);
u32 XGettrackerid_hw_Write_trackerPool_clusterSize_Bytes(XGettrackerid_hw *InstancePtr, int offset, char *data, int length);
u32 XGettrackerid_hw_Read_trackerPool_clusterSize_Bytes(XGettrackerid_hw *InstancePtr, int offset, char *data, int length);
u32 XGettrackerid_hw_Get_trackerPool_smoothingFactor_BaseAddress(XGettrackerid_hw *InstancePtr);
u32 XGettrackerid_hw_Get_trackerPool_smoothingFactor_HighAddress(XGettrackerid_hw *InstancePtr);
u32 XGettrackerid_hw_Get_trackerPool_smoothingFactor_TotalBytes(XGettrackerid_hw *InstancePtr);
u32 XGettrackerid_hw_Get_trackerPool_smoothingFactor_BitWidth(XGettrackerid_hw *InstancePtr);
u32 XGettrackerid_hw_Get_trackerPool_smoothingFactor_Depth(XGettrackerid_hw *InstancePtr);
u32 XGettrackerid_hw_Write_trackerPool_smoothingFactor_Words(XGettrackerid_hw *InstancePtr, int offset, int *data, int length);
u32 XGettrackerid_hw_Read_trackerPool_smoothingFactor_Words(XGettrackerid_hw *InstancePtr, int offset, int *data, int length);
u32 XGettrackerid_hw_Write_trackerPool_smoothingFactor_Bytes(XGettrackerid_hw *InstancePtr, int offset, char *data, int length);
u32 XGettrackerid_hw_Read_trackerPool_smoothingFactor_Bytes(XGettrackerid_hw *InstancePtr, int offset, char *data, int length);
u32 XGettrackerid_hw_Get_trackerPool_sp1x_BaseAddress(XGettrackerid_hw *InstancePtr);
u32 XGettrackerid_hw_Get_trackerPool_sp1x_HighAddress(XGettrackerid_hw *InstancePtr);
u32 XGettrackerid_hw_Get_trackerPool_sp1x_TotalBytes(XGettrackerid_hw *InstancePtr);
u32 XGettrackerid_hw_Get_trackerPool_sp1x_BitWidth(XGettrackerid_hw *InstancePtr);
u32 XGettrackerid_hw_Get_trackerPool_sp1x_Depth(XGettrackerid_hw *InstancePtr);
u32 XGettrackerid_hw_Write_trackerPool_sp1x_Words(XGettrackerid_hw *InstancePtr, int offset, int *data, int length);
u32 XGettrackerid_hw_Read_trackerPool_sp1x_Words(XGettrackerid_hw *InstancePtr, int offset, int *data, int length);
u32 XGettrackerid_hw_Write_trackerPool_sp1x_Bytes(XGettrackerid_hw *InstancePtr, int offset, char *data, int length);
u32 XGettrackerid_hw_Read_trackerPool_sp1x_Bytes(XGettrackerid_hw *InstancePtr, int offset, char *data, int length);
u32 XGettrackerid_hw_Get_trackerPool_sp2x_BaseAddress(XGettrackerid_hw *InstancePtr);
u32 XGettrackerid_hw_Get_trackerPool_sp2x_HighAddress(XGettrackerid_hw *InstancePtr);
u32 XGettrackerid_hw_Get_trackerPool_sp2x_TotalBytes(XGettrackerid_hw *InstancePtr);
u32 XGettrackerid_hw_Get_trackerPool_sp2x_BitWidth(XGettrackerid_hw *InstancePtr);
u32 XGettrackerid_hw_Get_trackerPool_sp2x_Depth(XGettrackerid_hw *InstancePtr);
u32 XGettrackerid_hw_Write_trackerPool_sp2x_Words(XGettrackerid_hw *InstancePtr, int offset, int *data, int length);
u32 XGettrackerid_hw_Read_trackerPool_sp2x_Words(XGettrackerid_hw *InstancePtr, int offset, int *data, int length);
u32 XGettrackerid_hw_Write_trackerPool_sp2x_Bytes(XGettrackerid_hw *InstancePtr, int offset, char *data, int length);
u32 XGettrackerid_hw_Read_trackerPool_sp2x_Bytes(XGettrackerid_hw *InstancePtr, int offset, char *data, int length);
u32 XGettrackerid_hw_Get_trackerPool_sp1y_BaseAddress(XGettrackerid_hw *InstancePtr);
u32 XGettrackerid_hw_Get_trackerPool_sp1y_HighAddress(XGettrackerid_hw *InstancePtr);
u32 XGettrackerid_hw_Get_trackerPool_sp1y_TotalBytes(XGettrackerid_hw *InstancePtr);
u32 XGettrackerid_hw_Get_trackerPool_sp1y_BitWidth(XGettrackerid_hw *InstancePtr);
u32 XGettrackerid_hw_Get_trackerPool_sp1y_Depth(XGettrackerid_hw *InstancePtr);
u32 XGettrackerid_hw_Write_trackerPool_sp1y_Words(XGettrackerid_hw *InstancePtr, int offset, int *data, int length);
u32 XGettrackerid_hw_Read_trackerPool_sp1y_Words(XGettrackerid_hw *InstancePtr, int offset, int *data, int length);
u32 XGettrackerid_hw_Write_trackerPool_sp1y_Bytes(XGettrackerid_hw *InstancePtr, int offset, char *data, int length);
u32 XGettrackerid_hw_Read_trackerPool_sp1y_Bytes(XGettrackerid_hw *InstancePtr, int offset, char *data, int length);
u32 XGettrackerid_hw_Get_trackerPool_sp2y_BaseAddress(XGettrackerid_hw *InstancePtr);
u32 XGettrackerid_hw_Get_trackerPool_sp2y_HighAddress(XGettrackerid_hw *InstancePtr);
u32 XGettrackerid_hw_Get_trackerPool_sp2y_TotalBytes(XGettrackerid_hw *InstancePtr);
u32 XGettrackerid_hw_Get_trackerPool_sp2y_BitWidth(XGettrackerid_hw *InstancePtr);
u32 XGettrackerid_hw_Get_trackerPool_sp2y_Depth(XGettrackerid_hw *InstancePtr);
u32 XGettrackerid_hw_Write_trackerPool_sp2y_Words(XGettrackerid_hw *InstancePtr, int offset, int *data, int length);
u32 XGettrackerid_hw_Read_trackerPool_sp2y_Words(XGettrackerid_hw *InstancePtr, int offset, int *data, int length);
u32 XGettrackerid_hw_Write_trackerPool_sp2y_Bytes(XGettrackerid_hw *InstancePtr, int offset, char *data, int length);
u32 XGettrackerid_hw_Read_trackerPool_sp2y_Bytes(XGettrackerid_hw *InstancePtr, int offset, char *data, int length);
u32 XGettrackerid_hw_Get_trackerPool_sigmaX_BaseAddress(XGettrackerid_hw *InstancePtr);
u32 XGettrackerid_hw_Get_trackerPool_sigmaX_HighAddress(XGettrackerid_hw *InstancePtr);
u32 XGettrackerid_hw_Get_trackerPool_sigmaX_TotalBytes(XGettrackerid_hw *InstancePtr);
u32 XGettrackerid_hw_Get_trackerPool_sigmaX_BitWidth(XGettrackerid_hw *InstancePtr);
u32 XGettrackerid_hw_Get_trackerPool_sigmaX_Depth(XGettrackerid_hw *InstancePtr);
u32 XGettrackerid_hw_Write_trackerPool_sigmaX_Words(XGettrackerid_hw *InstancePtr, int offset, int *data, int length);
u32 XGettrackerid_hw_Read_trackerPool_sigmaX_Words(XGettrackerid_hw *InstancePtr, int offset, int *data, int length);
u32 XGettrackerid_hw_Write_trackerPool_sigmaX_Bytes(XGettrackerid_hw *InstancePtr, int offset, char *data, int length);
u32 XGettrackerid_hw_Read_trackerPool_sigmaX_Bytes(XGettrackerid_hw *InstancePtr, int offset, char *data, int length);
u32 XGettrackerid_hw_Get_trackerPool_sigmaY_BaseAddress(XGettrackerid_hw *InstancePtr);
u32 XGettrackerid_hw_Get_trackerPool_sigmaY_HighAddress(XGettrackerid_hw *InstancePtr);
u32 XGettrackerid_hw_Get_trackerPool_sigmaY_TotalBytes(XGettrackerid_hw *InstancePtr);
u32 XGettrackerid_hw_Get_trackerPool_sigmaY_BitWidth(XGettrackerid_hw *InstancePtr);
u32 XGettrackerid_hw_Get_trackerPool_sigmaY_Depth(XGettrackerid_hw *InstancePtr);
u32 XGettrackerid_hw_Write_trackerPool_sigmaY_Words(XGettrackerid_hw *InstancePtr, int offset, int *data, int length);
u32 XGettrackerid_hw_Read_trackerPool_sigmaY_Words(XGettrackerid_hw *InstancePtr, int offset, int *data, int length);
u32 XGettrackerid_hw_Write_trackerPool_sigmaY_Bytes(XGettrackerid_hw *InstancePtr, int offset, char *data, int length);
u32 XGettrackerid_hw_Read_trackerPool_sigmaY_Bytes(XGettrackerid_hw *InstancePtr, int offset, char *data, int length);
u32 XGettrackerid_hw_Get_trackerPool_sigmaXY_BaseAddress(XGettrackerid_hw *InstancePtr);
u32 XGettrackerid_hw_Get_trackerPool_sigmaXY_HighAddress(XGettrackerid_hw *InstancePtr);
u32 XGettrackerid_hw_Get_trackerPool_sigmaXY_TotalBytes(XGettrackerid_hw *InstancePtr);
u32 XGettrackerid_hw_Get_trackerPool_sigmaXY_BitWidth(XGettrackerid_hw *InstancePtr);
u32 XGettrackerid_hw_Get_trackerPool_sigmaXY_Depth(XGettrackerid_hw *InstancePtr);
u32 XGettrackerid_hw_Write_trackerPool_sigmaXY_Words(XGettrackerid_hw *InstancePtr, int offset, int *data, int length);
u32 XGettrackerid_hw_Read_trackerPool_sigmaXY_Words(XGettrackerid_hw *InstancePtr, int offset, int *data, int length);
u32 XGettrackerid_hw_Write_trackerPool_sigmaXY_Bytes(XGettrackerid_hw *InstancePtr, int offset, char *data, int length);
u32 XGettrackerid_hw_Read_trackerPool_sigmaXY_Bytes(XGettrackerid_hw *InstancePtr, int offset, char *data, int length);
u32 XGettrackerid_hw_Get_trackerPool_a_BaseAddress(XGettrackerid_hw *InstancePtr);
u32 XGettrackerid_hw_Get_trackerPool_a_HighAddress(XGettrackerid_hw *InstancePtr);
u32 XGettrackerid_hw_Get_trackerPool_a_TotalBytes(XGettrackerid_hw *InstancePtr);
u32 XGettrackerid_hw_Get_trackerPool_a_BitWidth(XGettrackerid_hw *InstancePtr);
u32 XGettrackerid_hw_Get_trackerPool_a_Depth(XGettrackerid_hw *InstancePtr);
u32 XGettrackerid_hw_Write_trackerPool_a_Words(XGettrackerid_hw *InstancePtr, int offset, int *data, int length);
u32 XGettrackerid_hw_Read_trackerPool_a_Words(XGettrackerid_hw *InstancePtr, int offset, int *data, int length);
u32 XGettrackerid_hw_Write_trackerPool_a_Bytes(XGettrackerid_hw *InstancePtr, int offset, char *data, int length);
u32 XGettrackerid_hw_Read_trackerPool_a_Bytes(XGettrackerid_hw *InstancePtr, int offset, char *data, int length);
u32 XGettrackerid_hw_Get_trackerPool_b_BaseAddress(XGettrackerid_hw *InstancePtr);
u32 XGettrackerid_hw_Get_trackerPool_b_HighAddress(XGettrackerid_hw *InstancePtr);
u32 XGettrackerid_hw_Get_trackerPool_b_TotalBytes(XGettrackerid_hw *InstancePtr);
u32 XGettrackerid_hw_Get_trackerPool_b_BitWidth(XGettrackerid_hw *InstancePtr);
u32 XGettrackerid_hw_Get_trackerPool_b_Depth(XGettrackerid_hw *InstancePtr);
u32 XGettrackerid_hw_Write_trackerPool_b_Words(XGettrackerid_hw *InstancePtr, int offset, int *data, int length);
u32 XGettrackerid_hw_Read_trackerPool_b_Words(XGettrackerid_hw *InstancePtr, int offset, int *data, int length);
u32 XGettrackerid_hw_Write_trackerPool_b_Bytes(XGettrackerid_hw *InstancePtr, int offset, char *data, int length);
u32 XGettrackerid_hw_Read_trackerPool_b_Bytes(XGettrackerid_hw *InstancePtr, int offset, char *data, int length);
u32 XGettrackerid_hw_Get_trackerPool_alpha_BaseAddress(XGettrackerid_hw *InstancePtr);
u32 XGettrackerid_hw_Get_trackerPool_alpha_HighAddress(XGettrackerid_hw *InstancePtr);
u32 XGettrackerid_hw_Get_trackerPool_alpha_TotalBytes(XGettrackerid_hw *InstancePtr);
u32 XGettrackerid_hw_Get_trackerPool_alpha_BitWidth(XGettrackerid_hw *InstancePtr);
u32 XGettrackerid_hw_Get_trackerPool_alpha_Depth(XGettrackerid_hw *InstancePtr);
u32 XGettrackerid_hw_Write_trackerPool_alpha_Words(XGettrackerid_hw *InstancePtr, int offset, int *data, int length);
u32 XGettrackerid_hw_Read_trackerPool_alpha_Words(XGettrackerid_hw *InstancePtr, int offset, int *data, int length);
u32 XGettrackerid_hw_Write_trackerPool_alpha_Bytes(XGettrackerid_hw *InstancePtr, int offset, char *data, int length);
u32 XGettrackerid_hw_Read_trackerPool_alpha_Bytes(XGettrackerid_hw *InstancePtr, int offset, char *data, int length);
u32 XGettrackerid_hw_Get_trackerPool_sumFlowX_BaseAddress(XGettrackerid_hw *InstancePtr);
u32 XGettrackerid_hw_Get_trackerPool_sumFlowX_HighAddress(XGettrackerid_hw *InstancePtr);
u32 XGettrackerid_hw_Get_trackerPool_sumFlowX_TotalBytes(XGettrackerid_hw *InstancePtr);
u32 XGettrackerid_hw_Get_trackerPool_sumFlowX_BitWidth(XGettrackerid_hw *InstancePtr);
u32 XGettrackerid_hw_Get_trackerPool_sumFlowX_Depth(XGettrackerid_hw *InstancePtr);
u32 XGettrackerid_hw_Write_trackerPool_sumFlowX_Words(XGettrackerid_hw *InstancePtr, int offset, int *data, int length);
u32 XGettrackerid_hw_Read_trackerPool_sumFlowX_Words(XGettrackerid_hw *InstancePtr, int offset, int *data, int length);
u32 XGettrackerid_hw_Write_trackerPool_sumFlowX_Bytes(XGettrackerid_hw *InstancePtr, int offset, char *data, int length);
u32 XGettrackerid_hw_Read_trackerPool_sumFlowX_Bytes(XGettrackerid_hw *InstancePtr, int offset, char *data, int length);
u32 XGettrackerid_hw_Get_trackerPool_sumFlowY_BaseAddress(XGettrackerid_hw *InstancePtr);
u32 XGettrackerid_hw_Get_trackerPool_sumFlowY_HighAddress(XGettrackerid_hw *InstancePtr);
u32 XGettrackerid_hw_Get_trackerPool_sumFlowY_TotalBytes(XGettrackerid_hw *InstancePtr);
u32 XGettrackerid_hw_Get_trackerPool_sumFlowY_BitWidth(XGettrackerid_hw *InstancePtr);
u32 XGettrackerid_hw_Get_trackerPool_sumFlowY_Depth(XGettrackerid_hw *InstancePtr);
u32 XGettrackerid_hw_Write_trackerPool_sumFlowY_Words(XGettrackerid_hw *InstancePtr, int offset, int *data, int length);
u32 XGettrackerid_hw_Read_trackerPool_sumFlowY_Words(XGettrackerid_hw *InstancePtr, int offset, int *data, int length);
u32 XGettrackerid_hw_Write_trackerPool_sumFlowY_Bytes(XGettrackerid_hw *InstancePtr, int offset, char *data, int length);
u32 XGettrackerid_hw_Read_trackerPool_sumFlowY_Bytes(XGettrackerid_hw *InstancePtr, int offset, char *data, int length);
u32 XGettrackerid_hw_Get_trackerPool_avgFlowX_BaseAddress(XGettrackerid_hw *InstancePtr);
u32 XGettrackerid_hw_Get_trackerPool_avgFlowX_HighAddress(XGettrackerid_hw *InstancePtr);
u32 XGettrackerid_hw_Get_trackerPool_avgFlowX_TotalBytes(XGettrackerid_hw *InstancePtr);
u32 XGettrackerid_hw_Get_trackerPool_avgFlowX_BitWidth(XGettrackerid_hw *InstancePtr);
u32 XGettrackerid_hw_Get_trackerPool_avgFlowX_Depth(XGettrackerid_hw *InstancePtr);
u32 XGettrackerid_hw_Write_trackerPool_avgFlowX_Words(XGettrackerid_hw *InstancePtr, int offset, int *data, int length);
u32 XGettrackerid_hw_Read_trackerPool_avgFlowX_Words(XGettrackerid_hw *InstancePtr, int offset, int *data, int length);
u32 XGettrackerid_hw_Write_trackerPool_avgFlowX_Bytes(XGettrackerid_hw *InstancePtr, int offset, char *data, int length);
u32 XGettrackerid_hw_Read_trackerPool_avgFlowX_Bytes(XGettrackerid_hw *InstancePtr, int offset, char *data, int length);
u32 XGettrackerid_hw_Get_trackerPool_avgFlowY_BaseAddress(XGettrackerid_hw *InstancePtr);
u32 XGettrackerid_hw_Get_trackerPool_avgFlowY_HighAddress(XGettrackerid_hw *InstancePtr);
u32 XGettrackerid_hw_Get_trackerPool_avgFlowY_TotalBytes(XGettrackerid_hw *InstancePtr);
u32 XGettrackerid_hw_Get_trackerPool_avgFlowY_BitWidth(XGettrackerid_hw *InstancePtr);
u32 XGettrackerid_hw_Get_trackerPool_avgFlowY_Depth(XGettrackerid_hw *InstancePtr);
u32 XGettrackerid_hw_Write_trackerPool_avgFlowY_Words(XGettrackerid_hw *InstancePtr, int offset, int *data, int length);
u32 XGettrackerid_hw_Read_trackerPool_avgFlowY_Words(XGettrackerid_hw *InstancePtr, int offset, int *data, int length);
u32 XGettrackerid_hw_Write_trackerPool_avgFlowY_Bytes(XGettrackerid_hw *InstancePtr, int offset, char *data, int length);
u32 XGettrackerid_hw_Read_trackerPool_avgFlowY_Bytes(XGettrackerid_hw *InstancePtr, int offset, char *data, int length);
u32 XGettrackerid_hw_Get_trackerPool_activity_BaseAddress(XGettrackerid_hw *InstancePtr);
u32 XGettrackerid_hw_Get_trackerPool_activity_HighAddress(XGettrackerid_hw *InstancePtr);
u32 XGettrackerid_hw_Get_trackerPool_activity_TotalBytes(XGettrackerid_hw *InstancePtr);
u32 XGettrackerid_hw_Get_trackerPool_activity_BitWidth(XGettrackerid_hw *InstancePtr);
u32 XGettrackerid_hw_Get_trackerPool_activity_Depth(XGettrackerid_hw *InstancePtr);
u32 XGettrackerid_hw_Write_trackerPool_activity_Words(XGettrackerid_hw *InstancePtr, int offset, int *data, int length);
u32 XGettrackerid_hw_Read_trackerPool_activity_Words(XGettrackerid_hw *InstancePtr, int offset, int *data, int length);
u32 XGettrackerid_hw_Write_trackerPool_activity_Bytes(XGettrackerid_hw *InstancePtr, int offset, char *data, int length);
u32 XGettrackerid_hw_Read_trackerPool_activity_Bytes(XGettrackerid_hw *InstancePtr, int offset, char *data, int length);
u32 XGettrackerid_hw_Get_trackerPool_lastTimeStamp_BaseAddress(XGettrackerid_hw *InstancePtr);
u32 XGettrackerid_hw_Get_trackerPool_lastTimeStamp_HighAddress(XGettrackerid_hw *InstancePtr);
u32 XGettrackerid_hw_Get_trackerPool_lastTimeStamp_TotalBytes(XGettrackerid_hw *InstancePtr);
u32 XGettrackerid_hw_Get_trackerPool_lastTimeStamp_BitWidth(XGettrackerid_hw *InstancePtr);
u32 XGettrackerid_hw_Get_trackerPool_lastTimeStamp_Depth(XGettrackerid_hw *InstancePtr);
u32 XGettrackerid_hw_Write_trackerPool_lastTimeStamp_Words(XGettrackerid_hw *InstancePtr, int offset, int *data, int length);
u32 XGettrackerid_hw_Read_trackerPool_lastTimeStamp_Words(XGettrackerid_hw *InstancePtr, int offset, int *data, int length);
u32 XGettrackerid_hw_Write_trackerPool_lastTimeStamp_Bytes(XGettrackerid_hw *InstancePtr, int offset, char *data, int length);
u32 XGettrackerid_hw_Read_trackerPool_lastTimeStamp_Bytes(XGettrackerid_hw *InstancePtr, int offset, char *data, int length);

#ifdef __cplusplus
}
#endif

#endif
