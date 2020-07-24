// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
// AXILiteS
// 0x010 ~
// 0x01f : Memory 'trackerPool_state' (16 * 2b)
//         Word n : bit [ 1: 0] - trackerPool_state[4n]
//                  bit [ 9: 8] - trackerPool_state[4n+1]
//                  bit [17:16] - trackerPool_state[4n+2]
//                  bit [25:24] - trackerPool_state[4n+3]
//                  others      - reserved
// 0x040 ~
// 0x07f : Memory 'trackerPool_eventCount' (16 * 32b)
//         Word n : bit [31:0] - trackerPool_eventCount[n]
// 0x080 ~
// 0x0bf : Memory 'trackerPool_resetTime' (16 * 32b)
//         Word n : bit [31:0] - trackerPool_resetTime[n]
// 0x100 ~
// 0x17f : Memory 'trackerPool_x' (16 * 64b)
//         Word 2n   : bit [31:0] - trackerPool_x[n][31: 0]
//         Word 2n+1 : bit [31:0] - trackerPool_x[n][63:32]
// 0x180 ~
// 0x1ff : Memory 'trackerPool_y' (16 * 64b)
//         Word 2n   : bit [31:0] - trackerPool_y[n][31: 0]
//         Word 2n+1 : bit [31:0] - trackerPool_y[n][63:32]
// 0x200 ~
// 0x27f : Memory 'trackerPool_prevX' (16 * 64b)
//         Word 2n   : bit [31:0] - trackerPool_prevX[n][31: 0]
//         Word 2n+1 : bit [31:0] - trackerPool_prevX[n][63:32]
// 0x280 ~
// 0x2ff : Memory 'trackerPool_prevY' (16 * 64b)
//         Word 2n   : bit [31:0] - trackerPool_prevY[n][31: 0]
//         Word 2n+1 : bit [31:0] - trackerPool_prevY[n][63:32]
// 0x300 ~
// 0x37f : Memory 'trackerPool_predX' (16 * 64b)
//         Word 2n   : bit [31:0] - trackerPool_predX[n][31: 0]
//         Word 2n+1 : bit [31:0] - trackerPool_predX[n][63:32]
// 0x380 ~
// 0x3ff : Memory 'trackerPool_predY' (16 * 64b)
//         Word 2n   : bit [31:0] - trackerPool_predY[n][31: 0]
//         Word 2n+1 : bit [31:0] - trackerPool_predY[n][63:32]
// 0x400 ~
// 0x47f : Memory 'trackerPool_shapeFactor' (16 * 64b)
//         Word 2n   : bit [31:0] - trackerPool_shapeFactor[n][31: 0]
//         Word 2n+1 : bit [31:0] - trackerPool_shapeFactor[n][63:32]
// 0x480 ~
// 0x4ff : Memory 'trackerPool_origShapeFactor' (16 * 64b)
//         Word 2n   : bit [31:0] - trackerPool_origShapeFactor[n][31: 0]
//         Word 2n+1 : bit [31:0] - trackerPool_origShapeFactor[n][63:32]
// 0x500 ~
// 0x57f : Memory 'trackerPool_posFactor' (16 * 64b)
//         Word 2n   : bit [31:0] - trackerPool_posFactor[n][31: 0]
//         Word 2n+1 : bit [31:0] - trackerPool_posFactor[n][63:32]
// 0x580 ~
// 0x5ff : Memory 'trackerPool_velFactor' (16 * 64b)
//         Word 2n   : bit [31:0] - trackerPool_velFactor[n][31: 0]
//         Word 2n+1 : bit [31:0] - trackerPool_velFactor[n][63:32]
// 0x600 ~
// 0x67f : Memory 'trackerPool_clusterSize' (16 * 64b)
//         Word 2n   : bit [31:0] - trackerPool_clusterSize[n][31: 0]
//         Word 2n+1 : bit [31:0] - trackerPool_clusterSize[n][63:32]
// 0x680 ~
// 0x6ff : Memory 'trackerPool_smoothingFactor' (16 * 64b)
//         Word 2n   : bit [31:0] - trackerPool_smoothingFactor[n][31: 0]
//         Word 2n+1 : bit [31:0] - trackerPool_smoothingFactor[n][63:32]
// 0x700 ~
// 0x77f : Memory 'trackerPool_sp1x' (16 * 64b)
//         Word 2n   : bit [31:0] - trackerPool_sp1x[n][31: 0]
//         Word 2n+1 : bit [31:0] - trackerPool_sp1x[n][63:32]
// 0x780 ~
// 0x7ff : Memory 'trackerPool_sp2x' (16 * 64b)
//         Word 2n   : bit [31:0] - trackerPool_sp2x[n][31: 0]
//         Word 2n+1 : bit [31:0] - trackerPool_sp2x[n][63:32]
// 0x800 ~
// 0x87f : Memory 'trackerPool_sp1y' (16 * 64b)
//         Word 2n   : bit [31:0] - trackerPool_sp1y[n][31: 0]
//         Word 2n+1 : bit [31:0] - trackerPool_sp1y[n][63:32]
// 0x880 ~
// 0x8ff : Memory 'trackerPool_sp2y' (16 * 64b)
//         Word 2n   : bit [31:0] - trackerPool_sp2y[n][31: 0]
//         Word 2n+1 : bit [31:0] - trackerPool_sp2y[n][63:32]
// 0x900 ~
// 0x97f : Memory 'trackerPool_sigmaX' (16 * 64b)
//         Word 2n   : bit [31:0] - trackerPool_sigmaX[n][31: 0]
//         Word 2n+1 : bit [31:0] - trackerPool_sigmaX[n][63:32]
// 0x980 ~
// 0x9ff : Memory 'trackerPool_sigmaY' (16 * 64b)
//         Word 2n   : bit [31:0] - trackerPool_sigmaY[n][31: 0]
//         Word 2n+1 : bit [31:0] - trackerPool_sigmaY[n][63:32]
// 0xa00 ~
// 0xa7f : Memory 'trackerPool_sigmaXY' (16 * 64b)
//         Word 2n   : bit [31:0] - trackerPool_sigmaXY[n][31: 0]
//         Word 2n+1 : bit [31:0] - trackerPool_sigmaXY[n][63:32]
// 0xa80 ~
// 0xaff : Memory 'trackerPool_a' (16 * 64b)
//         Word 2n   : bit [31:0] - trackerPool_a[n][31: 0]
//         Word 2n+1 : bit [31:0] - trackerPool_a[n][63:32]
// 0xb00 ~
// 0xb7f : Memory 'trackerPool_b' (16 * 64b)
//         Word 2n   : bit [31:0] - trackerPool_b[n][31: 0]
//         Word 2n+1 : bit [31:0] - trackerPool_b[n][63:32]
// 0xb80 ~
// 0xbff : Memory 'trackerPool_alpha' (16 * 64b)
//         Word 2n   : bit [31:0] - trackerPool_alpha[n][31: 0]
//         Word 2n+1 : bit [31:0] - trackerPool_alpha[n][63:32]
// 0xc00 ~
// 0xc7f : Memory 'trackerPool_sumFlowX' (16 * 64b)
//         Word 2n   : bit [31:0] - trackerPool_sumFlowX[n][31: 0]
//         Word 2n+1 : bit [31:0] - trackerPool_sumFlowX[n][63:32]
// 0xc80 ~
// 0xcff : Memory 'trackerPool_sumFlowY' (16 * 64b)
//         Word 2n   : bit [31:0] - trackerPool_sumFlowY[n][31: 0]
//         Word 2n+1 : bit [31:0] - trackerPool_sumFlowY[n][63:32]
// 0xd00 ~
// 0xd7f : Memory 'trackerPool_avgFlowX' (16 * 64b)
//         Word 2n   : bit [31:0] - trackerPool_avgFlowX[n][31: 0]
//         Word 2n+1 : bit [31:0] - trackerPool_avgFlowX[n][63:32]
// 0xd80 ~
// 0xdff : Memory 'trackerPool_avgFlowY' (16 * 64b)
//         Word 2n   : bit [31:0] - trackerPool_avgFlowY[n][31: 0]
//         Word 2n+1 : bit [31:0] - trackerPool_avgFlowY[n][63:32]
// 0xe00 ~
// 0xe7f : Memory 'trackerPool_activity' (16 * 64b)
//         Word 2n   : bit [31:0] - trackerPool_activity[n][31: 0]
//         Word 2n+1 : bit [31:0] - trackerPool_activity[n][63:32]
// 0xe80 ~
// 0xebf : Memory 'trackerPool_lastTimeStamp' (16 * 32b)
//         Word n : bit [31:0] - trackerPool_lastTimeStamp[n]
// (SC = Self Clear, COR = Clear on Read, TOW = Toggle on Write, COH = Clear on Handshake)

#define XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_STATE_BASE           0x010
#define XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_STATE_HIGH           0x01f
#define XGETTRACKERID_HW_AXILITES_WIDTH_TRACKERPOOL_STATE               2
#define XGETTRACKERID_HW_AXILITES_DEPTH_TRACKERPOOL_STATE               16
#define XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_EVENTCOUNT_BASE      0x040
#define XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_EVENTCOUNT_HIGH      0x07f
#define XGETTRACKERID_HW_AXILITES_WIDTH_TRACKERPOOL_EVENTCOUNT          32
#define XGETTRACKERID_HW_AXILITES_DEPTH_TRACKERPOOL_EVENTCOUNT          16
#define XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_RESETTIME_BASE       0x080
#define XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_RESETTIME_HIGH       0x0bf
#define XGETTRACKERID_HW_AXILITES_WIDTH_TRACKERPOOL_RESETTIME           32
#define XGETTRACKERID_HW_AXILITES_DEPTH_TRACKERPOOL_RESETTIME           16
#define XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_X_BASE               0x100
#define XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_X_HIGH               0x17f
#define XGETTRACKERID_HW_AXILITES_WIDTH_TRACKERPOOL_X                   64
#define XGETTRACKERID_HW_AXILITES_DEPTH_TRACKERPOOL_X                   16
#define XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_Y_BASE               0x180
#define XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_Y_HIGH               0x1ff
#define XGETTRACKERID_HW_AXILITES_WIDTH_TRACKERPOOL_Y                   64
#define XGETTRACKERID_HW_AXILITES_DEPTH_TRACKERPOOL_Y                   16
#define XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_PREVX_BASE           0x200
#define XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_PREVX_HIGH           0x27f
#define XGETTRACKERID_HW_AXILITES_WIDTH_TRACKERPOOL_PREVX               64
#define XGETTRACKERID_HW_AXILITES_DEPTH_TRACKERPOOL_PREVX               16
#define XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_PREVY_BASE           0x280
#define XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_PREVY_HIGH           0x2ff
#define XGETTRACKERID_HW_AXILITES_WIDTH_TRACKERPOOL_PREVY               64
#define XGETTRACKERID_HW_AXILITES_DEPTH_TRACKERPOOL_PREVY               16
#define XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_PREDX_BASE           0x300
#define XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_PREDX_HIGH           0x37f
#define XGETTRACKERID_HW_AXILITES_WIDTH_TRACKERPOOL_PREDX               64
#define XGETTRACKERID_HW_AXILITES_DEPTH_TRACKERPOOL_PREDX               16
#define XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_PREDY_BASE           0x380
#define XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_PREDY_HIGH           0x3ff
#define XGETTRACKERID_HW_AXILITES_WIDTH_TRACKERPOOL_PREDY               64
#define XGETTRACKERID_HW_AXILITES_DEPTH_TRACKERPOOL_PREDY               16
#define XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_SHAPEFACTOR_BASE     0x400
#define XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_SHAPEFACTOR_HIGH     0x47f
#define XGETTRACKERID_HW_AXILITES_WIDTH_TRACKERPOOL_SHAPEFACTOR         64
#define XGETTRACKERID_HW_AXILITES_DEPTH_TRACKERPOOL_SHAPEFACTOR         16
#define XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_ORIGSHAPEFACTOR_BASE 0x480
#define XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_ORIGSHAPEFACTOR_HIGH 0x4ff
#define XGETTRACKERID_HW_AXILITES_WIDTH_TRACKERPOOL_ORIGSHAPEFACTOR     64
#define XGETTRACKERID_HW_AXILITES_DEPTH_TRACKERPOOL_ORIGSHAPEFACTOR     16
#define XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_POSFACTOR_BASE       0x500
#define XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_POSFACTOR_HIGH       0x57f
#define XGETTRACKERID_HW_AXILITES_WIDTH_TRACKERPOOL_POSFACTOR           64
#define XGETTRACKERID_HW_AXILITES_DEPTH_TRACKERPOOL_POSFACTOR           16
#define XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_VELFACTOR_BASE       0x580
#define XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_VELFACTOR_HIGH       0x5ff
#define XGETTRACKERID_HW_AXILITES_WIDTH_TRACKERPOOL_VELFACTOR           64
#define XGETTRACKERID_HW_AXILITES_DEPTH_TRACKERPOOL_VELFACTOR           16
#define XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_CLUSTERSIZE_BASE     0x600
#define XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_CLUSTERSIZE_HIGH     0x67f
#define XGETTRACKERID_HW_AXILITES_WIDTH_TRACKERPOOL_CLUSTERSIZE         64
#define XGETTRACKERID_HW_AXILITES_DEPTH_TRACKERPOOL_CLUSTERSIZE         16
#define XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_SMOOTHINGFACTOR_BASE 0x680
#define XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_SMOOTHINGFACTOR_HIGH 0x6ff
#define XGETTRACKERID_HW_AXILITES_WIDTH_TRACKERPOOL_SMOOTHINGFACTOR     64
#define XGETTRACKERID_HW_AXILITES_DEPTH_TRACKERPOOL_SMOOTHINGFACTOR     16
#define XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_SP1X_BASE            0x700
#define XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_SP1X_HIGH            0x77f
#define XGETTRACKERID_HW_AXILITES_WIDTH_TRACKERPOOL_SP1X                64
#define XGETTRACKERID_HW_AXILITES_DEPTH_TRACKERPOOL_SP1X                16
#define XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_SP2X_BASE            0x780
#define XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_SP2X_HIGH            0x7ff
#define XGETTRACKERID_HW_AXILITES_WIDTH_TRACKERPOOL_SP2X                64
#define XGETTRACKERID_HW_AXILITES_DEPTH_TRACKERPOOL_SP2X                16
#define XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_SP1Y_BASE            0x800
#define XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_SP1Y_HIGH            0x87f
#define XGETTRACKERID_HW_AXILITES_WIDTH_TRACKERPOOL_SP1Y                64
#define XGETTRACKERID_HW_AXILITES_DEPTH_TRACKERPOOL_SP1Y                16
#define XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_SP2Y_BASE            0x880
#define XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_SP2Y_HIGH            0x8ff
#define XGETTRACKERID_HW_AXILITES_WIDTH_TRACKERPOOL_SP2Y                64
#define XGETTRACKERID_HW_AXILITES_DEPTH_TRACKERPOOL_SP2Y                16
#define XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_SIGMAX_BASE          0x900
#define XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_SIGMAX_HIGH          0x97f
#define XGETTRACKERID_HW_AXILITES_WIDTH_TRACKERPOOL_SIGMAX              64
#define XGETTRACKERID_HW_AXILITES_DEPTH_TRACKERPOOL_SIGMAX              16
#define XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_SIGMAY_BASE          0x980
#define XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_SIGMAY_HIGH          0x9ff
#define XGETTRACKERID_HW_AXILITES_WIDTH_TRACKERPOOL_SIGMAY              64
#define XGETTRACKERID_HW_AXILITES_DEPTH_TRACKERPOOL_SIGMAY              16
#define XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_SIGMAXY_BASE         0xa00
#define XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_SIGMAXY_HIGH         0xa7f
#define XGETTRACKERID_HW_AXILITES_WIDTH_TRACKERPOOL_SIGMAXY             64
#define XGETTRACKERID_HW_AXILITES_DEPTH_TRACKERPOOL_SIGMAXY             16
#define XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_A_BASE               0xa80
#define XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_A_HIGH               0xaff
#define XGETTRACKERID_HW_AXILITES_WIDTH_TRACKERPOOL_A                   64
#define XGETTRACKERID_HW_AXILITES_DEPTH_TRACKERPOOL_A                   16
#define XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_B_BASE               0xb00
#define XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_B_HIGH               0xb7f
#define XGETTRACKERID_HW_AXILITES_WIDTH_TRACKERPOOL_B                   64
#define XGETTRACKERID_HW_AXILITES_DEPTH_TRACKERPOOL_B                   16
#define XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_ALPHA_BASE           0xb80
#define XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_ALPHA_HIGH           0xbff
#define XGETTRACKERID_HW_AXILITES_WIDTH_TRACKERPOOL_ALPHA               64
#define XGETTRACKERID_HW_AXILITES_DEPTH_TRACKERPOOL_ALPHA               16
#define XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_SUMFLOWX_BASE        0xc00
#define XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_SUMFLOWX_HIGH        0xc7f
#define XGETTRACKERID_HW_AXILITES_WIDTH_TRACKERPOOL_SUMFLOWX            64
#define XGETTRACKERID_HW_AXILITES_DEPTH_TRACKERPOOL_SUMFLOWX            16
#define XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_SUMFLOWY_BASE        0xc80
#define XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_SUMFLOWY_HIGH        0xcff
#define XGETTRACKERID_HW_AXILITES_WIDTH_TRACKERPOOL_SUMFLOWY            64
#define XGETTRACKERID_HW_AXILITES_DEPTH_TRACKERPOOL_SUMFLOWY            16
#define XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_AVGFLOWX_BASE        0xd00
#define XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_AVGFLOWX_HIGH        0xd7f
#define XGETTRACKERID_HW_AXILITES_WIDTH_TRACKERPOOL_AVGFLOWX            64
#define XGETTRACKERID_HW_AXILITES_DEPTH_TRACKERPOOL_AVGFLOWX            16
#define XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_AVGFLOWY_BASE        0xd80
#define XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_AVGFLOWY_HIGH        0xdff
#define XGETTRACKERID_HW_AXILITES_WIDTH_TRACKERPOOL_AVGFLOWY            64
#define XGETTRACKERID_HW_AXILITES_DEPTH_TRACKERPOOL_AVGFLOWY            16
#define XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_ACTIVITY_BASE        0xe00
#define XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_ACTIVITY_HIGH        0xe7f
#define XGETTRACKERID_HW_AXILITES_WIDTH_TRACKERPOOL_ACTIVITY            64
#define XGETTRACKERID_HW_AXILITES_DEPTH_TRACKERPOOL_ACTIVITY            16
#define XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_LASTTIMESTAMP_BASE   0xe80
#define XGETTRACKERID_HW_AXILITES_ADDR_TRACKERPOOL_LASTTIMESTAMP_HIGH   0xebf
#define XGETTRACKERID_HW_AXILITES_WIDTH_TRACKERPOOL_LASTTIMESTAMP       32
#define XGETTRACKERID_HW_AXILITES_DEPTH_TRACKERPOOL_LASTTIMESTAMP       16

