// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
`timescale 1ns/1ps
module getTrackerID_hw_AXILiteS_s_axi
#(parameter
    C_S_AXI_ADDR_WIDTH = 12,
    C_S_AXI_DATA_WIDTH = 32
)(
    input  wire                          ACLK,
    input  wire                          ARESET,
    input  wire                          ACLK_EN,
    input  wire [C_S_AXI_ADDR_WIDTH-1:0] AWADDR,
    input  wire                          AWVALID,
    output wire                          AWREADY,
    input  wire [C_S_AXI_DATA_WIDTH-1:0] WDATA,
    input  wire [C_S_AXI_DATA_WIDTH/8-1:0] WSTRB,
    input  wire                          WVALID,
    output wire                          WREADY,
    output wire [1:0]                    BRESP,
    output wire                          BVALID,
    input  wire                          BREADY,
    input  wire [C_S_AXI_ADDR_WIDTH-1:0] ARADDR,
    input  wire                          ARVALID,
    output wire                          ARREADY,
    output wire [C_S_AXI_DATA_WIDTH-1:0] RDATA,
    output wire [1:0]                    RRESP,
    output wire                          RVALID,
    input  wire                          RREADY,
    input  wire [3:0]                    trackerPool_state_address0,
    input  wire                          trackerPool_state_ce0,
    output wire [1:0]                    trackerPool_state_q0,
    input  wire [3:0]                    trackerPool_eventCount_address0,
    input  wire                          trackerPool_eventCount_ce0,
    input  wire                          trackerPool_eventCount_we0,
    input  wire [31:0]                   trackerPool_eventCount_d0,
    input  wire [3:0]                    trackerPool_resetTime_address0,
    input  wire                          trackerPool_resetTime_ce0,
    input  wire                          trackerPool_resetTime_we0,
    input  wire [31:0]                   trackerPool_resetTime_d0,
    input  wire [3:0]                    trackerPool_x_address0,
    input  wire                          trackerPool_x_ce0,
    output wire [63:0]                   trackerPool_x_q0,
    input  wire [3:0]                    trackerPool_y_address0,
    input  wire                          trackerPool_y_ce0,
    output wire [63:0]                   trackerPool_y_q0,
    input  wire [3:0]                    trackerPool_prevX_address0,
    input  wire                          trackerPool_prevX_ce0,
    input  wire                          trackerPool_prevX_we0,
    input  wire [63:0]                   trackerPool_prevX_d0,
    input  wire [3:0]                    trackerPool_prevY_address0,
    input  wire                          trackerPool_prevY_ce0,
    input  wire                          trackerPool_prevY_we0,
    input  wire [63:0]                   trackerPool_prevY_d0,
    input  wire [3:0]                    trackerPool_predX_address0,
    input  wire                          trackerPool_predX_ce0,
    input  wire                          trackerPool_predX_we0,
    input  wire [63:0]                   trackerPool_predX_d0,
    input  wire [3:0]                    trackerPool_predY_address0,
    input  wire                          trackerPool_predY_ce0,
    input  wire                          trackerPool_predY_we0,
    input  wire [63:0]                   trackerPool_predY_d0,
    input  wire [3:0]                    trackerPool_shapeFactor_address0,
    input  wire                          trackerPool_shapeFactor_ce0,
    input  wire                          trackerPool_shapeFactor_we0,
    input  wire [63:0]                   trackerPool_shapeFactor_d0,
    input  wire [3:0]                    trackerPool_origShapeFactor_address0,
    input  wire                          trackerPool_origShapeFactor_ce0,
    input  wire                          trackerPool_origShapeFactor_we0,
    input  wire [63:0]                   trackerPool_origShapeFactor_d0,
    input  wire [3:0]                    trackerPool_posFactor_address0,
    input  wire                          trackerPool_posFactor_ce0,
    input  wire                          trackerPool_posFactor_we0,
    input  wire [63:0]                   trackerPool_posFactor_d0,
    input  wire [3:0]                    trackerPool_velFactor_address0,
    input  wire                          trackerPool_velFactor_ce0,
    input  wire                          trackerPool_velFactor_we0,
    input  wire [63:0]                   trackerPool_velFactor_d0,
    input  wire [3:0]                    trackerPool_clusterSize_address0,
    input  wire                          trackerPool_clusterSize_ce0,
    input  wire                          trackerPool_clusterSize_we0,
    input  wire [63:0]                   trackerPool_clusterSize_d0,
    input  wire [3:0]                    trackerPool_smoothingFactor_address0,
    input  wire                          trackerPool_smoothingFactor_ce0,
    input  wire                          trackerPool_smoothingFactor_we0,
    input  wire [63:0]                   trackerPool_smoothingFactor_d0,
    input  wire [3:0]                    trackerPool_sp1x_address0,
    input  wire                          trackerPool_sp1x_ce0,
    input  wire                          trackerPool_sp1x_we0,
    input  wire [63:0]                   trackerPool_sp1x_d0,
    input  wire [3:0]                    trackerPool_sp2x_address0,
    input  wire                          trackerPool_sp2x_ce0,
    input  wire                          trackerPool_sp2x_we0,
    input  wire [63:0]                   trackerPool_sp2x_d0,
    input  wire [3:0]                    trackerPool_sp1y_address0,
    input  wire                          trackerPool_sp1y_ce0,
    input  wire                          trackerPool_sp1y_we0,
    input  wire [63:0]                   trackerPool_sp1y_d0,
    input  wire [3:0]                    trackerPool_sp2y_address0,
    input  wire                          trackerPool_sp2y_ce0,
    input  wire                          trackerPool_sp2y_we0,
    input  wire [63:0]                   trackerPool_sp2y_d0,
    input  wire [3:0]                    trackerPool_sigmaX_address0,
    input  wire                          trackerPool_sigmaX_ce0,
    output wire [63:0]                   trackerPool_sigmaX_q0,
    input  wire [3:0]                    trackerPool_sigmaY_address0,
    input  wire                          trackerPool_sigmaY_ce0,
    output wire [63:0]                   trackerPool_sigmaY_q0,
    input  wire [3:0]                    trackerPool_sigmaXY_address0,
    input  wire                          trackerPool_sigmaXY_ce0,
    output wire [63:0]                   trackerPool_sigmaXY_q0,
    input  wire [3:0]                    trackerPool_a_address0,
    input  wire                          trackerPool_a_ce0,
    input  wire                          trackerPool_a_we0,
    input  wire [63:0]                   trackerPool_a_d0,
    input  wire [3:0]                    trackerPool_b_address0,
    input  wire                          trackerPool_b_ce0,
    input  wire                          trackerPool_b_we0,
    input  wire [63:0]                   trackerPool_b_d0,
    input  wire [3:0]                    trackerPool_alpha_address0,
    input  wire                          trackerPool_alpha_ce0,
    input  wire                          trackerPool_alpha_we0,
    input  wire [63:0]                   trackerPool_alpha_d0,
    input  wire [3:0]                    trackerPool_sumFlowX_address0,
    input  wire                          trackerPool_sumFlowX_ce0,
    input  wire                          trackerPool_sumFlowX_we0,
    input  wire [63:0]                   trackerPool_sumFlowX_d0,
    input  wire [3:0]                    trackerPool_sumFlowY_address0,
    input  wire                          trackerPool_sumFlowY_ce0,
    input  wire                          trackerPool_sumFlowY_we0,
    input  wire [63:0]                   trackerPool_sumFlowY_d0,
    input  wire [3:0]                    trackerPool_avgFlowX_address0,
    input  wire                          trackerPool_avgFlowX_ce0,
    output wire [63:0]                   trackerPool_avgFlowX_q0,
    input  wire [3:0]                    trackerPool_avgFlowY_address0,
    input  wire                          trackerPool_avgFlowY_ce0,
    output wire [63:0]                   trackerPool_avgFlowY_q0,
    input  wire [3:0]                    trackerPool_activity_address0,
    input  wire                          trackerPool_activity_ce0,
    input  wire                          trackerPool_activity_we0,
    input  wire [63:0]                   trackerPool_activity_d0,
    input  wire [3:0]                    trackerPool_lastTimeStamp_address0,
    input  wire                          trackerPool_lastTimeStamp_ce0,
    input  wire                          trackerPool_lastTimeStamp_we0,
    input  wire [31:0]                   trackerPool_lastTimeStamp_d0
);
//------------------------Address Info-------------------
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

//------------------------Parameter----------------------
localparam
    ADDR_TRACKERPOOL_STATE_BASE           = 12'h010,
    ADDR_TRACKERPOOL_STATE_HIGH           = 12'h01f,
    ADDR_TRACKERPOOL_EVENTCOUNT_BASE      = 12'h040,
    ADDR_TRACKERPOOL_EVENTCOUNT_HIGH      = 12'h07f,
    ADDR_TRACKERPOOL_RESETTIME_BASE       = 12'h080,
    ADDR_TRACKERPOOL_RESETTIME_HIGH       = 12'h0bf,
    ADDR_TRACKERPOOL_X_BASE               = 12'h100,
    ADDR_TRACKERPOOL_X_HIGH               = 12'h17f,
    ADDR_TRACKERPOOL_Y_BASE               = 12'h180,
    ADDR_TRACKERPOOL_Y_HIGH               = 12'h1ff,
    ADDR_TRACKERPOOL_PREVX_BASE           = 12'h200,
    ADDR_TRACKERPOOL_PREVX_HIGH           = 12'h27f,
    ADDR_TRACKERPOOL_PREVY_BASE           = 12'h280,
    ADDR_TRACKERPOOL_PREVY_HIGH           = 12'h2ff,
    ADDR_TRACKERPOOL_PREDX_BASE           = 12'h300,
    ADDR_TRACKERPOOL_PREDX_HIGH           = 12'h37f,
    ADDR_TRACKERPOOL_PREDY_BASE           = 12'h380,
    ADDR_TRACKERPOOL_PREDY_HIGH           = 12'h3ff,
    ADDR_TRACKERPOOL_SHAPEFACTOR_BASE     = 12'h400,
    ADDR_TRACKERPOOL_SHAPEFACTOR_HIGH     = 12'h47f,
    ADDR_TRACKERPOOL_ORIGSHAPEFACTOR_BASE = 12'h480,
    ADDR_TRACKERPOOL_ORIGSHAPEFACTOR_HIGH = 12'h4ff,
    ADDR_TRACKERPOOL_POSFACTOR_BASE       = 12'h500,
    ADDR_TRACKERPOOL_POSFACTOR_HIGH       = 12'h57f,
    ADDR_TRACKERPOOL_VELFACTOR_BASE       = 12'h580,
    ADDR_TRACKERPOOL_VELFACTOR_HIGH       = 12'h5ff,
    ADDR_TRACKERPOOL_CLUSTERSIZE_BASE     = 12'h600,
    ADDR_TRACKERPOOL_CLUSTERSIZE_HIGH     = 12'h67f,
    ADDR_TRACKERPOOL_SMOOTHINGFACTOR_BASE = 12'h680,
    ADDR_TRACKERPOOL_SMOOTHINGFACTOR_HIGH = 12'h6ff,
    ADDR_TRACKERPOOL_SP1X_BASE            = 12'h700,
    ADDR_TRACKERPOOL_SP1X_HIGH            = 12'h77f,
    ADDR_TRACKERPOOL_SP2X_BASE            = 12'h780,
    ADDR_TRACKERPOOL_SP2X_HIGH            = 12'h7ff,
    ADDR_TRACKERPOOL_SP1Y_BASE            = 12'h800,
    ADDR_TRACKERPOOL_SP1Y_HIGH            = 12'h87f,
    ADDR_TRACKERPOOL_SP2Y_BASE            = 12'h880,
    ADDR_TRACKERPOOL_SP2Y_HIGH            = 12'h8ff,
    ADDR_TRACKERPOOL_SIGMAX_BASE          = 12'h900,
    ADDR_TRACKERPOOL_SIGMAX_HIGH          = 12'h97f,
    ADDR_TRACKERPOOL_SIGMAY_BASE          = 12'h980,
    ADDR_TRACKERPOOL_SIGMAY_HIGH          = 12'h9ff,
    ADDR_TRACKERPOOL_SIGMAXY_BASE         = 12'ha00,
    ADDR_TRACKERPOOL_SIGMAXY_HIGH         = 12'ha7f,
    ADDR_TRACKERPOOL_A_BASE               = 12'ha80,
    ADDR_TRACKERPOOL_A_HIGH               = 12'haff,
    ADDR_TRACKERPOOL_B_BASE               = 12'hb00,
    ADDR_TRACKERPOOL_B_HIGH               = 12'hb7f,
    ADDR_TRACKERPOOL_ALPHA_BASE           = 12'hb80,
    ADDR_TRACKERPOOL_ALPHA_HIGH           = 12'hbff,
    ADDR_TRACKERPOOL_SUMFLOWX_BASE        = 12'hc00,
    ADDR_TRACKERPOOL_SUMFLOWX_HIGH        = 12'hc7f,
    ADDR_TRACKERPOOL_SUMFLOWY_BASE        = 12'hc80,
    ADDR_TRACKERPOOL_SUMFLOWY_HIGH        = 12'hcff,
    ADDR_TRACKERPOOL_AVGFLOWX_BASE        = 12'hd00,
    ADDR_TRACKERPOOL_AVGFLOWX_HIGH        = 12'hd7f,
    ADDR_TRACKERPOOL_AVGFLOWY_BASE        = 12'hd80,
    ADDR_TRACKERPOOL_AVGFLOWY_HIGH        = 12'hdff,
    ADDR_TRACKERPOOL_ACTIVITY_BASE        = 12'he00,
    ADDR_TRACKERPOOL_ACTIVITY_HIGH        = 12'he7f,
    ADDR_TRACKERPOOL_LASTTIMESTAMP_BASE   = 12'he80,
    ADDR_TRACKERPOOL_LASTTIMESTAMP_HIGH   = 12'hebf,
    WRIDLE                                = 2'd0,
    WRDATA                                = 2'd1,
    WRRESP                                = 2'd2,
    WRRESET                               = 2'd3,
    RDIDLE                                = 2'd0,
    RDDATA                                = 2'd1,
    RDRESET                               = 2'd2,
    ADDR_BITS         = 12;

//------------------------Local signal-------------------
    reg  [1:0]                    wstate = WRRESET;
    reg  [1:0]                    wnext;
    reg  [ADDR_BITS-1:0]          waddr;
    wire [31:0]                   wmask;
    wire                          aw_hs;
    wire                          w_hs;
    reg  [1:0]                    rstate = RDRESET;
    reg  [1:0]                    rnext;
    reg  [31:0]                   rdata;
    wire                          ar_hs;
    wire [ADDR_BITS-1:0]          raddr;
    // memory signals
    wire [1:0]                    int_trackerPool_state_address0;
    wire                          int_trackerPool_state_ce0;
    wire                          int_trackerPool_state_we0;
    wire [3:0]                    int_trackerPool_state_be0;
    wire [31:0]                   int_trackerPool_state_d0;
    wire [31:0]                   int_trackerPool_state_q0;
    wire [1:0]                    int_trackerPool_state_address1;
    wire                          int_trackerPool_state_ce1;
    wire                          int_trackerPool_state_we1;
    wire [3:0]                    int_trackerPool_state_be1;
    wire [31:0]                   int_trackerPool_state_d1;
    wire [31:0]                   int_trackerPool_state_q1;
    reg                           int_trackerPool_state_read;
    reg                           int_trackerPool_state_write;
    reg  [1:0]                    int_trackerPool_state_shift;
    wire [3:0]                    int_trackerPool_eventCount_address0;
    wire                          int_trackerPool_eventCount_ce0;
    wire                          int_trackerPool_eventCount_we0;
    wire [3:0]                    int_trackerPool_eventCount_be0;
    wire [31:0]                   int_trackerPool_eventCount_d0;
    wire [31:0]                   int_trackerPool_eventCount_q0;
    wire [3:0]                    int_trackerPool_eventCount_address1;
    wire                          int_trackerPool_eventCount_ce1;
    wire                          int_trackerPool_eventCount_we1;
    wire [3:0]                    int_trackerPool_eventCount_be1;
    wire [31:0]                   int_trackerPool_eventCount_d1;
    wire [31:0]                   int_trackerPool_eventCount_q1;
    reg                           int_trackerPool_eventCount_read;
    reg                           int_trackerPool_eventCount_write;
    wire [3:0]                    int_trackerPool_resetTime_address0;
    wire                          int_trackerPool_resetTime_ce0;
    wire                          int_trackerPool_resetTime_we0;
    wire [3:0]                    int_trackerPool_resetTime_be0;
    wire [31:0]                   int_trackerPool_resetTime_d0;
    wire [31:0]                   int_trackerPool_resetTime_q0;
    wire [3:0]                    int_trackerPool_resetTime_address1;
    wire                          int_trackerPool_resetTime_ce1;
    wire                          int_trackerPool_resetTime_we1;
    wire [3:0]                    int_trackerPool_resetTime_be1;
    wire [31:0]                   int_trackerPool_resetTime_d1;
    wire [31:0]                   int_trackerPool_resetTime_q1;
    reg                           int_trackerPool_resetTime_read;
    reg                           int_trackerPool_resetTime_write;
    wire [3:0]                    int_trackerPool_x_address0;
    wire                          int_trackerPool_x_ce0;
    wire                          int_trackerPool_x_we0;
    wire [7:0]                    int_trackerPool_x_be0;
    wire [63:0]                   int_trackerPool_x_d0;
    wire [63:0]                   int_trackerPool_x_q0;
    wire [3:0]                    int_trackerPool_x_address1;
    wire                          int_trackerPool_x_ce1;
    wire                          int_trackerPool_x_we1;
    wire [7:0]                    int_trackerPool_x_be1;
    wire [63:0]                   int_trackerPool_x_d1;
    wire [63:0]                   int_trackerPool_x_q1;
    reg                           int_trackerPool_x_read;
    reg                           int_trackerPool_x_write;
    reg  [0:0]                    int_trackerPool_x_shift;
    wire [3:0]                    int_trackerPool_y_address0;
    wire                          int_trackerPool_y_ce0;
    wire                          int_trackerPool_y_we0;
    wire [7:0]                    int_trackerPool_y_be0;
    wire [63:0]                   int_trackerPool_y_d0;
    wire [63:0]                   int_trackerPool_y_q0;
    wire [3:0]                    int_trackerPool_y_address1;
    wire                          int_trackerPool_y_ce1;
    wire                          int_trackerPool_y_we1;
    wire [7:0]                    int_trackerPool_y_be1;
    wire [63:0]                   int_trackerPool_y_d1;
    wire [63:0]                   int_trackerPool_y_q1;
    reg                           int_trackerPool_y_read;
    reg                           int_trackerPool_y_write;
    reg  [0:0]                    int_trackerPool_y_shift;
    wire [3:0]                    int_trackerPool_prevX_address0;
    wire                          int_trackerPool_prevX_ce0;
    wire                          int_trackerPool_prevX_we0;
    wire [7:0]                    int_trackerPool_prevX_be0;
    wire [63:0]                   int_trackerPool_prevX_d0;
    wire [63:0]                   int_trackerPool_prevX_q0;
    wire [3:0]                    int_trackerPool_prevX_address1;
    wire                          int_trackerPool_prevX_ce1;
    wire                          int_trackerPool_prevX_we1;
    wire [7:0]                    int_trackerPool_prevX_be1;
    wire [63:0]                   int_trackerPool_prevX_d1;
    wire [63:0]                   int_trackerPool_prevX_q1;
    reg                           int_trackerPool_prevX_read;
    reg                           int_trackerPool_prevX_write;
    reg  [0:0]                    int_trackerPool_prevX_shift;
    wire [3:0]                    int_trackerPool_prevY_address0;
    wire                          int_trackerPool_prevY_ce0;
    wire                          int_trackerPool_prevY_we0;
    wire [7:0]                    int_trackerPool_prevY_be0;
    wire [63:0]                   int_trackerPool_prevY_d0;
    wire [63:0]                   int_trackerPool_prevY_q0;
    wire [3:0]                    int_trackerPool_prevY_address1;
    wire                          int_trackerPool_prevY_ce1;
    wire                          int_trackerPool_prevY_we1;
    wire [7:0]                    int_trackerPool_prevY_be1;
    wire [63:0]                   int_trackerPool_prevY_d1;
    wire [63:0]                   int_trackerPool_prevY_q1;
    reg                           int_trackerPool_prevY_read;
    reg                           int_trackerPool_prevY_write;
    reg  [0:0]                    int_trackerPool_prevY_shift;
    wire [3:0]                    int_trackerPool_predX_address0;
    wire                          int_trackerPool_predX_ce0;
    wire                          int_trackerPool_predX_we0;
    wire [7:0]                    int_trackerPool_predX_be0;
    wire [63:0]                   int_trackerPool_predX_d0;
    wire [63:0]                   int_trackerPool_predX_q0;
    wire [3:0]                    int_trackerPool_predX_address1;
    wire                          int_trackerPool_predX_ce1;
    wire                          int_trackerPool_predX_we1;
    wire [7:0]                    int_trackerPool_predX_be1;
    wire [63:0]                   int_trackerPool_predX_d1;
    wire [63:0]                   int_trackerPool_predX_q1;
    reg                           int_trackerPool_predX_read;
    reg                           int_trackerPool_predX_write;
    reg  [0:0]                    int_trackerPool_predX_shift;
    wire [3:0]                    int_trackerPool_predY_address0;
    wire                          int_trackerPool_predY_ce0;
    wire                          int_trackerPool_predY_we0;
    wire [7:0]                    int_trackerPool_predY_be0;
    wire [63:0]                   int_trackerPool_predY_d0;
    wire [63:0]                   int_trackerPool_predY_q0;
    wire [3:0]                    int_trackerPool_predY_address1;
    wire                          int_trackerPool_predY_ce1;
    wire                          int_trackerPool_predY_we1;
    wire [7:0]                    int_trackerPool_predY_be1;
    wire [63:0]                   int_trackerPool_predY_d1;
    wire [63:0]                   int_trackerPool_predY_q1;
    reg                           int_trackerPool_predY_read;
    reg                           int_trackerPool_predY_write;
    reg  [0:0]                    int_trackerPool_predY_shift;
    wire [3:0]                    int_trackerPool_shapeFactor_address0;
    wire                          int_trackerPool_shapeFactor_ce0;
    wire                          int_trackerPool_shapeFactor_we0;
    wire [7:0]                    int_trackerPool_shapeFactor_be0;
    wire [63:0]                   int_trackerPool_shapeFactor_d0;
    wire [63:0]                   int_trackerPool_shapeFactor_q0;
    wire [3:0]                    int_trackerPool_shapeFactor_address1;
    wire                          int_trackerPool_shapeFactor_ce1;
    wire                          int_trackerPool_shapeFactor_we1;
    wire [7:0]                    int_trackerPool_shapeFactor_be1;
    wire [63:0]                   int_trackerPool_shapeFactor_d1;
    wire [63:0]                   int_trackerPool_shapeFactor_q1;
    reg                           int_trackerPool_shapeFactor_read;
    reg                           int_trackerPool_shapeFactor_write;
    reg  [0:0]                    int_trackerPool_shapeFactor_shift;
    wire [3:0]                    int_trackerPool_origShapeFactor_address0;
    wire                          int_trackerPool_origShapeFactor_ce0;
    wire                          int_trackerPool_origShapeFactor_we0;
    wire [7:0]                    int_trackerPool_origShapeFactor_be0;
    wire [63:0]                   int_trackerPool_origShapeFactor_d0;
    wire [63:0]                   int_trackerPool_origShapeFactor_q0;
    wire [3:0]                    int_trackerPool_origShapeFactor_address1;
    wire                          int_trackerPool_origShapeFactor_ce1;
    wire                          int_trackerPool_origShapeFactor_we1;
    wire [7:0]                    int_trackerPool_origShapeFactor_be1;
    wire [63:0]                   int_trackerPool_origShapeFactor_d1;
    wire [63:0]                   int_trackerPool_origShapeFactor_q1;
    reg                           int_trackerPool_origShapeFactor_read;
    reg                           int_trackerPool_origShapeFactor_write;
    reg  [0:0]                    int_trackerPool_origShapeFactor_shift;
    wire [3:0]                    int_trackerPool_posFactor_address0;
    wire                          int_trackerPool_posFactor_ce0;
    wire                          int_trackerPool_posFactor_we0;
    wire [7:0]                    int_trackerPool_posFactor_be0;
    wire [63:0]                   int_trackerPool_posFactor_d0;
    wire [63:0]                   int_trackerPool_posFactor_q0;
    wire [3:0]                    int_trackerPool_posFactor_address1;
    wire                          int_trackerPool_posFactor_ce1;
    wire                          int_trackerPool_posFactor_we1;
    wire [7:0]                    int_trackerPool_posFactor_be1;
    wire [63:0]                   int_trackerPool_posFactor_d1;
    wire [63:0]                   int_trackerPool_posFactor_q1;
    reg                           int_trackerPool_posFactor_read;
    reg                           int_trackerPool_posFactor_write;
    reg  [0:0]                    int_trackerPool_posFactor_shift;
    wire [3:0]                    int_trackerPool_velFactor_address0;
    wire                          int_trackerPool_velFactor_ce0;
    wire                          int_trackerPool_velFactor_we0;
    wire [7:0]                    int_trackerPool_velFactor_be0;
    wire [63:0]                   int_trackerPool_velFactor_d0;
    wire [63:0]                   int_trackerPool_velFactor_q0;
    wire [3:0]                    int_trackerPool_velFactor_address1;
    wire                          int_trackerPool_velFactor_ce1;
    wire                          int_trackerPool_velFactor_we1;
    wire [7:0]                    int_trackerPool_velFactor_be1;
    wire [63:0]                   int_trackerPool_velFactor_d1;
    wire [63:0]                   int_trackerPool_velFactor_q1;
    reg                           int_trackerPool_velFactor_read;
    reg                           int_trackerPool_velFactor_write;
    reg  [0:0]                    int_trackerPool_velFactor_shift;
    wire [3:0]                    int_trackerPool_clusterSize_address0;
    wire                          int_trackerPool_clusterSize_ce0;
    wire                          int_trackerPool_clusterSize_we0;
    wire [7:0]                    int_trackerPool_clusterSize_be0;
    wire [63:0]                   int_trackerPool_clusterSize_d0;
    wire [63:0]                   int_trackerPool_clusterSize_q0;
    wire [3:0]                    int_trackerPool_clusterSize_address1;
    wire                          int_trackerPool_clusterSize_ce1;
    wire                          int_trackerPool_clusterSize_we1;
    wire [7:0]                    int_trackerPool_clusterSize_be1;
    wire [63:0]                   int_trackerPool_clusterSize_d1;
    wire [63:0]                   int_trackerPool_clusterSize_q1;
    reg                           int_trackerPool_clusterSize_read;
    reg                           int_trackerPool_clusterSize_write;
    reg  [0:0]                    int_trackerPool_clusterSize_shift;
    wire [3:0]                    int_trackerPool_smoothingFactor_address0;
    wire                          int_trackerPool_smoothingFactor_ce0;
    wire                          int_trackerPool_smoothingFactor_we0;
    wire [7:0]                    int_trackerPool_smoothingFactor_be0;
    wire [63:0]                   int_trackerPool_smoothingFactor_d0;
    wire [63:0]                   int_trackerPool_smoothingFactor_q0;
    wire [3:0]                    int_trackerPool_smoothingFactor_address1;
    wire                          int_trackerPool_smoothingFactor_ce1;
    wire                          int_trackerPool_smoothingFactor_we1;
    wire [7:0]                    int_trackerPool_smoothingFactor_be1;
    wire [63:0]                   int_trackerPool_smoothingFactor_d1;
    wire [63:0]                   int_trackerPool_smoothingFactor_q1;
    reg                           int_trackerPool_smoothingFactor_read;
    reg                           int_trackerPool_smoothingFactor_write;
    reg  [0:0]                    int_trackerPool_smoothingFactor_shift;
    wire [3:0]                    int_trackerPool_sp1x_address0;
    wire                          int_trackerPool_sp1x_ce0;
    wire                          int_trackerPool_sp1x_we0;
    wire [7:0]                    int_trackerPool_sp1x_be0;
    wire [63:0]                   int_trackerPool_sp1x_d0;
    wire [63:0]                   int_trackerPool_sp1x_q0;
    wire [3:0]                    int_trackerPool_sp1x_address1;
    wire                          int_trackerPool_sp1x_ce1;
    wire                          int_trackerPool_sp1x_we1;
    wire [7:0]                    int_trackerPool_sp1x_be1;
    wire [63:0]                   int_trackerPool_sp1x_d1;
    wire [63:0]                   int_trackerPool_sp1x_q1;
    reg                           int_trackerPool_sp1x_read;
    reg                           int_trackerPool_sp1x_write;
    reg  [0:0]                    int_trackerPool_sp1x_shift;
    wire [3:0]                    int_trackerPool_sp2x_address0;
    wire                          int_trackerPool_sp2x_ce0;
    wire                          int_trackerPool_sp2x_we0;
    wire [7:0]                    int_trackerPool_sp2x_be0;
    wire [63:0]                   int_trackerPool_sp2x_d0;
    wire [63:0]                   int_trackerPool_sp2x_q0;
    wire [3:0]                    int_trackerPool_sp2x_address1;
    wire                          int_trackerPool_sp2x_ce1;
    wire                          int_trackerPool_sp2x_we1;
    wire [7:0]                    int_trackerPool_sp2x_be1;
    wire [63:0]                   int_trackerPool_sp2x_d1;
    wire [63:0]                   int_trackerPool_sp2x_q1;
    reg                           int_trackerPool_sp2x_read;
    reg                           int_trackerPool_sp2x_write;
    reg  [0:0]                    int_trackerPool_sp2x_shift;
    wire [3:0]                    int_trackerPool_sp1y_address0;
    wire                          int_trackerPool_sp1y_ce0;
    wire                          int_trackerPool_sp1y_we0;
    wire [7:0]                    int_trackerPool_sp1y_be0;
    wire [63:0]                   int_trackerPool_sp1y_d0;
    wire [63:0]                   int_trackerPool_sp1y_q0;
    wire [3:0]                    int_trackerPool_sp1y_address1;
    wire                          int_trackerPool_sp1y_ce1;
    wire                          int_trackerPool_sp1y_we1;
    wire [7:0]                    int_trackerPool_sp1y_be1;
    wire [63:0]                   int_trackerPool_sp1y_d1;
    wire [63:0]                   int_trackerPool_sp1y_q1;
    reg                           int_trackerPool_sp1y_read;
    reg                           int_trackerPool_sp1y_write;
    reg  [0:0]                    int_trackerPool_sp1y_shift;
    wire [3:0]                    int_trackerPool_sp2y_address0;
    wire                          int_trackerPool_sp2y_ce0;
    wire                          int_trackerPool_sp2y_we0;
    wire [7:0]                    int_trackerPool_sp2y_be0;
    wire [63:0]                   int_trackerPool_sp2y_d0;
    wire [63:0]                   int_trackerPool_sp2y_q0;
    wire [3:0]                    int_trackerPool_sp2y_address1;
    wire                          int_trackerPool_sp2y_ce1;
    wire                          int_trackerPool_sp2y_we1;
    wire [7:0]                    int_trackerPool_sp2y_be1;
    wire [63:0]                   int_trackerPool_sp2y_d1;
    wire [63:0]                   int_trackerPool_sp2y_q1;
    reg                           int_trackerPool_sp2y_read;
    reg                           int_trackerPool_sp2y_write;
    reg  [0:0]                    int_trackerPool_sp2y_shift;
    wire [3:0]                    int_trackerPool_sigmaX_address0;
    wire                          int_trackerPool_sigmaX_ce0;
    wire                          int_trackerPool_sigmaX_we0;
    wire [7:0]                    int_trackerPool_sigmaX_be0;
    wire [63:0]                   int_trackerPool_sigmaX_d0;
    wire [63:0]                   int_trackerPool_sigmaX_q0;
    wire [3:0]                    int_trackerPool_sigmaX_address1;
    wire                          int_trackerPool_sigmaX_ce1;
    wire                          int_trackerPool_sigmaX_we1;
    wire [7:0]                    int_trackerPool_sigmaX_be1;
    wire [63:0]                   int_trackerPool_sigmaX_d1;
    wire [63:0]                   int_trackerPool_sigmaX_q1;
    reg                           int_trackerPool_sigmaX_read;
    reg                           int_trackerPool_sigmaX_write;
    reg  [0:0]                    int_trackerPool_sigmaX_shift;
    wire [3:0]                    int_trackerPool_sigmaY_address0;
    wire                          int_trackerPool_sigmaY_ce0;
    wire                          int_trackerPool_sigmaY_we0;
    wire [7:0]                    int_trackerPool_sigmaY_be0;
    wire [63:0]                   int_trackerPool_sigmaY_d0;
    wire [63:0]                   int_trackerPool_sigmaY_q0;
    wire [3:0]                    int_trackerPool_sigmaY_address1;
    wire                          int_trackerPool_sigmaY_ce1;
    wire                          int_trackerPool_sigmaY_we1;
    wire [7:0]                    int_trackerPool_sigmaY_be1;
    wire [63:0]                   int_trackerPool_sigmaY_d1;
    wire [63:0]                   int_trackerPool_sigmaY_q1;
    reg                           int_trackerPool_sigmaY_read;
    reg                           int_trackerPool_sigmaY_write;
    reg  [0:0]                    int_trackerPool_sigmaY_shift;
    wire [3:0]                    int_trackerPool_sigmaXY_address0;
    wire                          int_trackerPool_sigmaXY_ce0;
    wire                          int_trackerPool_sigmaXY_we0;
    wire [7:0]                    int_trackerPool_sigmaXY_be0;
    wire [63:0]                   int_trackerPool_sigmaXY_d0;
    wire [63:0]                   int_trackerPool_sigmaXY_q0;
    wire [3:0]                    int_trackerPool_sigmaXY_address1;
    wire                          int_trackerPool_sigmaXY_ce1;
    wire                          int_trackerPool_sigmaXY_we1;
    wire [7:0]                    int_trackerPool_sigmaXY_be1;
    wire [63:0]                   int_trackerPool_sigmaXY_d1;
    wire [63:0]                   int_trackerPool_sigmaXY_q1;
    reg                           int_trackerPool_sigmaXY_read;
    reg                           int_trackerPool_sigmaXY_write;
    reg  [0:0]                    int_trackerPool_sigmaXY_shift;
    wire [3:0]                    int_trackerPool_a_address0;
    wire                          int_trackerPool_a_ce0;
    wire                          int_trackerPool_a_we0;
    wire [7:0]                    int_trackerPool_a_be0;
    wire [63:0]                   int_trackerPool_a_d0;
    wire [63:0]                   int_trackerPool_a_q0;
    wire [3:0]                    int_trackerPool_a_address1;
    wire                          int_trackerPool_a_ce1;
    wire                          int_trackerPool_a_we1;
    wire [7:0]                    int_trackerPool_a_be1;
    wire [63:0]                   int_trackerPool_a_d1;
    wire [63:0]                   int_trackerPool_a_q1;
    reg                           int_trackerPool_a_read;
    reg                           int_trackerPool_a_write;
    reg  [0:0]                    int_trackerPool_a_shift;
    wire [3:0]                    int_trackerPool_b_address0;
    wire                          int_trackerPool_b_ce0;
    wire                          int_trackerPool_b_we0;
    wire [7:0]                    int_trackerPool_b_be0;
    wire [63:0]                   int_trackerPool_b_d0;
    wire [63:0]                   int_trackerPool_b_q0;
    wire [3:0]                    int_trackerPool_b_address1;
    wire                          int_trackerPool_b_ce1;
    wire                          int_trackerPool_b_we1;
    wire [7:0]                    int_trackerPool_b_be1;
    wire [63:0]                   int_trackerPool_b_d1;
    wire [63:0]                   int_trackerPool_b_q1;
    reg                           int_trackerPool_b_read;
    reg                           int_trackerPool_b_write;
    reg  [0:0]                    int_trackerPool_b_shift;
    wire [3:0]                    int_trackerPool_alpha_address0;
    wire                          int_trackerPool_alpha_ce0;
    wire                          int_trackerPool_alpha_we0;
    wire [7:0]                    int_trackerPool_alpha_be0;
    wire [63:0]                   int_trackerPool_alpha_d0;
    wire [63:0]                   int_trackerPool_alpha_q0;
    wire [3:0]                    int_trackerPool_alpha_address1;
    wire                          int_trackerPool_alpha_ce1;
    wire                          int_trackerPool_alpha_we1;
    wire [7:0]                    int_trackerPool_alpha_be1;
    wire [63:0]                   int_trackerPool_alpha_d1;
    wire [63:0]                   int_trackerPool_alpha_q1;
    reg                           int_trackerPool_alpha_read;
    reg                           int_trackerPool_alpha_write;
    reg  [0:0]                    int_trackerPool_alpha_shift;
    wire [3:0]                    int_trackerPool_sumFlowX_address0;
    wire                          int_trackerPool_sumFlowX_ce0;
    wire                          int_trackerPool_sumFlowX_we0;
    wire [7:0]                    int_trackerPool_sumFlowX_be0;
    wire [63:0]                   int_trackerPool_sumFlowX_d0;
    wire [63:0]                   int_trackerPool_sumFlowX_q0;
    wire [3:0]                    int_trackerPool_sumFlowX_address1;
    wire                          int_trackerPool_sumFlowX_ce1;
    wire                          int_trackerPool_sumFlowX_we1;
    wire [7:0]                    int_trackerPool_sumFlowX_be1;
    wire [63:0]                   int_trackerPool_sumFlowX_d1;
    wire [63:0]                   int_trackerPool_sumFlowX_q1;
    reg                           int_trackerPool_sumFlowX_read;
    reg                           int_trackerPool_sumFlowX_write;
    reg  [0:0]                    int_trackerPool_sumFlowX_shift;
    wire [3:0]                    int_trackerPool_sumFlowY_address0;
    wire                          int_trackerPool_sumFlowY_ce0;
    wire                          int_trackerPool_sumFlowY_we0;
    wire [7:0]                    int_trackerPool_sumFlowY_be0;
    wire [63:0]                   int_trackerPool_sumFlowY_d0;
    wire [63:0]                   int_trackerPool_sumFlowY_q0;
    wire [3:0]                    int_trackerPool_sumFlowY_address1;
    wire                          int_trackerPool_sumFlowY_ce1;
    wire                          int_trackerPool_sumFlowY_we1;
    wire [7:0]                    int_trackerPool_sumFlowY_be1;
    wire [63:0]                   int_trackerPool_sumFlowY_d1;
    wire [63:0]                   int_trackerPool_sumFlowY_q1;
    reg                           int_trackerPool_sumFlowY_read;
    reg                           int_trackerPool_sumFlowY_write;
    reg  [0:0]                    int_trackerPool_sumFlowY_shift;
    wire [3:0]                    int_trackerPool_avgFlowX_address0;
    wire                          int_trackerPool_avgFlowX_ce0;
    wire                          int_trackerPool_avgFlowX_we0;
    wire [7:0]                    int_trackerPool_avgFlowX_be0;
    wire [63:0]                   int_trackerPool_avgFlowX_d0;
    wire [63:0]                   int_trackerPool_avgFlowX_q0;
    wire [3:0]                    int_trackerPool_avgFlowX_address1;
    wire                          int_trackerPool_avgFlowX_ce1;
    wire                          int_trackerPool_avgFlowX_we1;
    wire [7:0]                    int_trackerPool_avgFlowX_be1;
    wire [63:0]                   int_trackerPool_avgFlowX_d1;
    wire [63:0]                   int_trackerPool_avgFlowX_q1;
    reg                           int_trackerPool_avgFlowX_read;
    reg                           int_trackerPool_avgFlowX_write;
    reg  [0:0]                    int_trackerPool_avgFlowX_shift;
    wire [3:0]                    int_trackerPool_avgFlowY_address0;
    wire                          int_trackerPool_avgFlowY_ce0;
    wire                          int_trackerPool_avgFlowY_we0;
    wire [7:0]                    int_trackerPool_avgFlowY_be0;
    wire [63:0]                   int_trackerPool_avgFlowY_d0;
    wire [63:0]                   int_trackerPool_avgFlowY_q0;
    wire [3:0]                    int_trackerPool_avgFlowY_address1;
    wire                          int_trackerPool_avgFlowY_ce1;
    wire                          int_trackerPool_avgFlowY_we1;
    wire [7:0]                    int_trackerPool_avgFlowY_be1;
    wire [63:0]                   int_trackerPool_avgFlowY_d1;
    wire [63:0]                   int_trackerPool_avgFlowY_q1;
    reg                           int_trackerPool_avgFlowY_read;
    reg                           int_trackerPool_avgFlowY_write;
    reg  [0:0]                    int_trackerPool_avgFlowY_shift;
    wire [3:0]                    int_trackerPool_activity_address0;
    wire                          int_trackerPool_activity_ce0;
    wire                          int_trackerPool_activity_we0;
    wire [7:0]                    int_trackerPool_activity_be0;
    wire [63:0]                   int_trackerPool_activity_d0;
    wire [63:0]                   int_trackerPool_activity_q0;
    wire [3:0]                    int_trackerPool_activity_address1;
    wire                          int_trackerPool_activity_ce1;
    wire                          int_trackerPool_activity_we1;
    wire [7:0]                    int_trackerPool_activity_be1;
    wire [63:0]                   int_trackerPool_activity_d1;
    wire [63:0]                   int_trackerPool_activity_q1;
    reg                           int_trackerPool_activity_read;
    reg                           int_trackerPool_activity_write;
    reg  [0:0]                    int_trackerPool_activity_shift;
    wire [3:0]                    int_trackerPool_lastTimeStamp_address0;
    wire                          int_trackerPool_lastTimeStamp_ce0;
    wire                          int_trackerPool_lastTimeStamp_we0;
    wire [3:0]                    int_trackerPool_lastTimeStamp_be0;
    wire [31:0]                   int_trackerPool_lastTimeStamp_d0;
    wire [31:0]                   int_trackerPool_lastTimeStamp_q0;
    wire [3:0]                    int_trackerPool_lastTimeStamp_address1;
    wire                          int_trackerPool_lastTimeStamp_ce1;
    wire                          int_trackerPool_lastTimeStamp_we1;
    wire [3:0]                    int_trackerPool_lastTimeStamp_be1;
    wire [31:0]                   int_trackerPool_lastTimeStamp_d1;
    wire [31:0]                   int_trackerPool_lastTimeStamp_q1;
    reg                           int_trackerPool_lastTimeStamp_read;
    reg                           int_trackerPool_lastTimeStamp_write;

//------------------------Instantiation------------------
// int_trackerPool_state
getTrackerID_hw_AXILiteS_s_axi_ram #(
    .BYTES    ( 4 ),
    .DEPTH    ( 4 )
) int_trackerPool_state (
    .clk0     ( ACLK ),
    .address0 ( int_trackerPool_state_address0 ),
    .ce0      ( int_trackerPool_state_ce0 ),
    .we0      ( int_trackerPool_state_we0 ),
    .be0      ( int_trackerPool_state_be0 ),
    .d0       ( int_trackerPool_state_d0 ),
    .q0       ( int_trackerPool_state_q0 ),
    .clk1     ( ACLK ),
    .address1 ( int_trackerPool_state_address1 ),
    .ce1      ( int_trackerPool_state_ce1 ),
    .we1      ( int_trackerPool_state_we1 ),
    .be1      ( int_trackerPool_state_be1 ),
    .d1       ( int_trackerPool_state_d1 ),
    .q1       ( int_trackerPool_state_q1 )
);
// int_trackerPool_eventCount
getTrackerID_hw_AXILiteS_s_axi_ram #(
    .BYTES    ( 4 ),
    .DEPTH    ( 16 )
) int_trackerPool_eventCount (
    .clk0     ( ACLK ),
    .address0 ( int_trackerPool_eventCount_address0 ),
    .ce0      ( int_trackerPool_eventCount_ce0 ),
    .we0      ( int_trackerPool_eventCount_we0 ),
    .be0      ( int_trackerPool_eventCount_be0 ),
    .d0       ( int_trackerPool_eventCount_d0 ),
    .q0       ( int_trackerPool_eventCount_q0 ),
    .clk1     ( ACLK ),
    .address1 ( int_trackerPool_eventCount_address1 ),
    .ce1      ( int_trackerPool_eventCount_ce1 ),
    .we1      ( int_trackerPool_eventCount_we1 ),
    .be1      ( int_trackerPool_eventCount_be1 ),
    .d1       ( int_trackerPool_eventCount_d1 ),
    .q1       ( int_trackerPool_eventCount_q1 )
);
// int_trackerPool_resetTime
getTrackerID_hw_AXILiteS_s_axi_ram #(
    .BYTES    ( 4 ),
    .DEPTH    ( 16 )
) int_trackerPool_resetTime (
    .clk0     ( ACLK ),
    .address0 ( int_trackerPool_resetTime_address0 ),
    .ce0      ( int_trackerPool_resetTime_ce0 ),
    .we0      ( int_trackerPool_resetTime_we0 ),
    .be0      ( int_trackerPool_resetTime_be0 ),
    .d0       ( int_trackerPool_resetTime_d0 ),
    .q0       ( int_trackerPool_resetTime_q0 ),
    .clk1     ( ACLK ),
    .address1 ( int_trackerPool_resetTime_address1 ),
    .ce1      ( int_trackerPool_resetTime_ce1 ),
    .we1      ( int_trackerPool_resetTime_we1 ),
    .be1      ( int_trackerPool_resetTime_be1 ),
    .d1       ( int_trackerPool_resetTime_d1 ),
    .q1       ( int_trackerPool_resetTime_q1 )
);
// int_trackerPool_x
getTrackerID_hw_AXILiteS_s_axi_ram #(
    .BYTES    ( 8 ),
    .DEPTH    ( 16 )
) int_trackerPool_x (
    .clk0     ( ACLK ),
    .address0 ( int_trackerPool_x_address0 ),
    .ce0      ( int_trackerPool_x_ce0 ),
    .we0      ( int_trackerPool_x_we0 ),
    .be0      ( int_trackerPool_x_be0 ),
    .d0       ( int_trackerPool_x_d0 ),
    .q0       ( int_trackerPool_x_q0 ),
    .clk1     ( ACLK ),
    .address1 ( int_trackerPool_x_address1 ),
    .ce1      ( int_trackerPool_x_ce1 ),
    .we1      ( int_trackerPool_x_we1 ),
    .be1      ( int_trackerPool_x_be1 ),
    .d1       ( int_trackerPool_x_d1 ),
    .q1       ( int_trackerPool_x_q1 )
);
// int_trackerPool_y
getTrackerID_hw_AXILiteS_s_axi_ram #(
    .BYTES    ( 8 ),
    .DEPTH    ( 16 )
) int_trackerPool_y (
    .clk0     ( ACLK ),
    .address0 ( int_trackerPool_y_address0 ),
    .ce0      ( int_trackerPool_y_ce0 ),
    .we0      ( int_trackerPool_y_we0 ),
    .be0      ( int_trackerPool_y_be0 ),
    .d0       ( int_trackerPool_y_d0 ),
    .q0       ( int_trackerPool_y_q0 ),
    .clk1     ( ACLK ),
    .address1 ( int_trackerPool_y_address1 ),
    .ce1      ( int_trackerPool_y_ce1 ),
    .we1      ( int_trackerPool_y_we1 ),
    .be1      ( int_trackerPool_y_be1 ),
    .d1       ( int_trackerPool_y_d1 ),
    .q1       ( int_trackerPool_y_q1 )
);
// int_trackerPool_prevX
getTrackerID_hw_AXILiteS_s_axi_ram #(
    .BYTES    ( 8 ),
    .DEPTH    ( 16 )
) int_trackerPool_prevX (
    .clk0     ( ACLK ),
    .address0 ( int_trackerPool_prevX_address0 ),
    .ce0      ( int_trackerPool_prevX_ce0 ),
    .we0      ( int_trackerPool_prevX_we0 ),
    .be0      ( int_trackerPool_prevX_be0 ),
    .d0       ( int_trackerPool_prevX_d0 ),
    .q0       ( int_trackerPool_prevX_q0 ),
    .clk1     ( ACLK ),
    .address1 ( int_trackerPool_prevX_address1 ),
    .ce1      ( int_trackerPool_prevX_ce1 ),
    .we1      ( int_trackerPool_prevX_we1 ),
    .be1      ( int_trackerPool_prevX_be1 ),
    .d1       ( int_trackerPool_prevX_d1 ),
    .q1       ( int_trackerPool_prevX_q1 )
);
// int_trackerPool_prevY
getTrackerID_hw_AXILiteS_s_axi_ram #(
    .BYTES    ( 8 ),
    .DEPTH    ( 16 )
) int_trackerPool_prevY (
    .clk0     ( ACLK ),
    .address0 ( int_trackerPool_prevY_address0 ),
    .ce0      ( int_trackerPool_prevY_ce0 ),
    .we0      ( int_trackerPool_prevY_we0 ),
    .be0      ( int_trackerPool_prevY_be0 ),
    .d0       ( int_trackerPool_prevY_d0 ),
    .q0       ( int_trackerPool_prevY_q0 ),
    .clk1     ( ACLK ),
    .address1 ( int_trackerPool_prevY_address1 ),
    .ce1      ( int_trackerPool_prevY_ce1 ),
    .we1      ( int_trackerPool_prevY_we1 ),
    .be1      ( int_trackerPool_prevY_be1 ),
    .d1       ( int_trackerPool_prevY_d1 ),
    .q1       ( int_trackerPool_prevY_q1 )
);
// int_trackerPool_predX
getTrackerID_hw_AXILiteS_s_axi_ram #(
    .BYTES    ( 8 ),
    .DEPTH    ( 16 )
) int_trackerPool_predX (
    .clk0     ( ACLK ),
    .address0 ( int_trackerPool_predX_address0 ),
    .ce0      ( int_trackerPool_predX_ce0 ),
    .we0      ( int_trackerPool_predX_we0 ),
    .be0      ( int_trackerPool_predX_be0 ),
    .d0       ( int_trackerPool_predX_d0 ),
    .q0       ( int_trackerPool_predX_q0 ),
    .clk1     ( ACLK ),
    .address1 ( int_trackerPool_predX_address1 ),
    .ce1      ( int_trackerPool_predX_ce1 ),
    .we1      ( int_trackerPool_predX_we1 ),
    .be1      ( int_trackerPool_predX_be1 ),
    .d1       ( int_trackerPool_predX_d1 ),
    .q1       ( int_trackerPool_predX_q1 )
);
// int_trackerPool_predY
getTrackerID_hw_AXILiteS_s_axi_ram #(
    .BYTES    ( 8 ),
    .DEPTH    ( 16 )
) int_trackerPool_predY (
    .clk0     ( ACLK ),
    .address0 ( int_trackerPool_predY_address0 ),
    .ce0      ( int_trackerPool_predY_ce0 ),
    .we0      ( int_trackerPool_predY_we0 ),
    .be0      ( int_trackerPool_predY_be0 ),
    .d0       ( int_trackerPool_predY_d0 ),
    .q0       ( int_trackerPool_predY_q0 ),
    .clk1     ( ACLK ),
    .address1 ( int_trackerPool_predY_address1 ),
    .ce1      ( int_trackerPool_predY_ce1 ),
    .we1      ( int_trackerPool_predY_we1 ),
    .be1      ( int_trackerPool_predY_be1 ),
    .d1       ( int_trackerPool_predY_d1 ),
    .q1       ( int_trackerPool_predY_q1 )
);
// int_trackerPool_shapeFactor
getTrackerID_hw_AXILiteS_s_axi_ram #(
    .BYTES    ( 8 ),
    .DEPTH    ( 16 )
) int_trackerPool_shapeFactor (
    .clk0     ( ACLK ),
    .address0 ( int_trackerPool_shapeFactor_address0 ),
    .ce0      ( int_trackerPool_shapeFactor_ce0 ),
    .we0      ( int_trackerPool_shapeFactor_we0 ),
    .be0      ( int_trackerPool_shapeFactor_be0 ),
    .d0       ( int_trackerPool_shapeFactor_d0 ),
    .q0       ( int_trackerPool_shapeFactor_q0 ),
    .clk1     ( ACLK ),
    .address1 ( int_trackerPool_shapeFactor_address1 ),
    .ce1      ( int_trackerPool_shapeFactor_ce1 ),
    .we1      ( int_trackerPool_shapeFactor_we1 ),
    .be1      ( int_trackerPool_shapeFactor_be1 ),
    .d1       ( int_trackerPool_shapeFactor_d1 ),
    .q1       ( int_trackerPool_shapeFactor_q1 )
);
// int_trackerPool_origShapeFactor
getTrackerID_hw_AXILiteS_s_axi_ram #(
    .BYTES    ( 8 ),
    .DEPTH    ( 16 )
) int_trackerPool_origShapeFactor (
    .clk0     ( ACLK ),
    .address0 ( int_trackerPool_origShapeFactor_address0 ),
    .ce0      ( int_trackerPool_origShapeFactor_ce0 ),
    .we0      ( int_trackerPool_origShapeFactor_we0 ),
    .be0      ( int_trackerPool_origShapeFactor_be0 ),
    .d0       ( int_trackerPool_origShapeFactor_d0 ),
    .q0       ( int_trackerPool_origShapeFactor_q0 ),
    .clk1     ( ACLK ),
    .address1 ( int_trackerPool_origShapeFactor_address1 ),
    .ce1      ( int_trackerPool_origShapeFactor_ce1 ),
    .we1      ( int_trackerPool_origShapeFactor_we1 ),
    .be1      ( int_trackerPool_origShapeFactor_be1 ),
    .d1       ( int_trackerPool_origShapeFactor_d1 ),
    .q1       ( int_trackerPool_origShapeFactor_q1 )
);
// int_trackerPool_posFactor
getTrackerID_hw_AXILiteS_s_axi_ram #(
    .BYTES    ( 8 ),
    .DEPTH    ( 16 )
) int_trackerPool_posFactor (
    .clk0     ( ACLK ),
    .address0 ( int_trackerPool_posFactor_address0 ),
    .ce0      ( int_trackerPool_posFactor_ce0 ),
    .we0      ( int_trackerPool_posFactor_we0 ),
    .be0      ( int_trackerPool_posFactor_be0 ),
    .d0       ( int_trackerPool_posFactor_d0 ),
    .q0       ( int_trackerPool_posFactor_q0 ),
    .clk1     ( ACLK ),
    .address1 ( int_trackerPool_posFactor_address1 ),
    .ce1      ( int_trackerPool_posFactor_ce1 ),
    .we1      ( int_trackerPool_posFactor_we1 ),
    .be1      ( int_trackerPool_posFactor_be1 ),
    .d1       ( int_trackerPool_posFactor_d1 ),
    .q1       ( int_trackerPool_posFactor_q1 )
);
// int_trackerPool_velFactor
getTrackerID_hw_AXILiteS_s_axi_ram #(
    .BYTES    ( 8 ),
    .DEPTH    ( 16 )
) int_trackerPool_velFactor (
    .clk0     ( ACLK ),
    .address0 ( int_trackerPool_velFactor_address0 ),
    .ce0      ( int_trackerPool_velFactor_ce0 ),
    .we0      ( int_trackerPool_velFactor_we0 ),
    .be0      ( int_trackerPool_velFactor_be0 ),
    .d0       ( int_trackerPool_velFactor_d0 ),
    .q0       ( int_trackerPool_velFactor_q0 ),
    .clk1     ( ACLK ),
    .address1 ( int_trackerPool_velFactor_address1 ),
    .ce1      ( int_trackerPool_velFactor_ce1 ),
    .we1      ( int_trackerPool_velFactor_we1 ),
    .be1      ( int_trackerPool_velFactor_be1 ),
    .d1       ( int_trackerPool_velFactor_d1 ),
    .q1       ( int_trackerPool_velFactor_q1 )
);
// int_trackerPool_clusterSize
getTrackerID_hw_AXILiteS_s_axi_ram #(
    .BYTES    ( 8 ),
    .DEPTH    ( 16 )
) int_trackerPool_clusterSize (
    .clk0     ( ACLK ),
    .address0 ( int_trackerPool_clusterSize_address0 ),
    .ce0      ( int_trackerPool_clusterSize_ce0 ),
    .we0      ( int_trackerPool_clusterSize_we0 ),
    .be0      ( int_trackerPool_clusterSize_be0 ),
    .d0       ( int_trackerPool_clusterSize_d0 ),
    .q0       ( int_trackerPool_clusterSize_q0 ),
    .clk1     ( ACLK ),
    .address1 ( int_trackerPool_clusterSize_address1 ),
    .ce1      ( int_trackerPool_clusterSize_ce1 ),
    .we1      ( int_trackerPool_clusterSize_we1 ),
    .be1      ( int_trackerPool_clusterSize_be1 ),
    .d1       ( int_trackerPool_clusterSize_d1 ),
    .q1       ( int_trackerPool_clusterSize_q1 )
);
// int_trackerPool_smoothingFactor
getTrackerID_hw_AXILiteS_s_axi_ram #(
    .BYTES    ( 8 ),
    .DEPTH    ( 16 )
) int_trackerPool_smoothingFactor (
    .clk0     ( ACLK ),
    .address0 ( int_trackerPool_smoothingFactor_address0 ),
    .ce0      ( int_trackerPool_smoothingFactor_ce0 ),
    .we0      ( int_trackerPool_smoothingFactor_we0 ),
    .be0      ( int_trackerPool_smoothingFactor_be0 ),
    .d0       ( int_trackerPool_smoothingFactor_d0 ),
    .q0       ( int_trackerPool_smoothingFactor_q0 ),
    .clk1     ( ACLK ),
    .address1 ( int_trackerPool_smoothingFactor_address1 ),
    .ce1      ( int_trackerPool_smoothingFactor_ce1 ),
    .we1      ( int_trackerPool_smoothingFactor_we1 ),
    .be1      ( int_trackerPool_smoothingFactor_be1 ),
    .d1       ( int_trackerPool_smoothingFactor_d1 ),
    .q1       ( int_trackerPool_smoothingFactor_q1 )
);
// int_trackerPool_sp1x
getTrackerID_hw_AXILiteS_s_axi_ram #(
    .BYTES    ( 8 ),
    .DEPTH    ( 16 )
) int_trackerPool_sp1x (
    .clk0     ( ACLK ),
    .address0 ( int_trackerPool_sp1x_address0 ),
    .ce0      ( int_trackerPool_sp1x_ce0 ),
    .we0      ( int_trackerPool_sp1x_we0 ),
    .be0      ( int_trackerPool_sp1x_be0 ),
    .d0       ( int_trackerPool_sp1x_d0 ),
    .q0       ( int_trackerPool_sp1x_q0 ),
    .clk1     ( ACLK ),
    .address1 ( int_trackerPool_sp1x_address1 ),
    .ce1      ( int_trackerPool_sp1x_ce1 ),
    .we1      ( int_trackerPool_sp1x_we1 ),
    .be1      ( int_trackerPool_sp1x_be1 ),
    .d1       ( int_trackerPool_sp1x_d1 ),
    .q1       ( int_trackerPool_sp1x_q1 )
);
// int_trackerPool_sp2x
getTrackerID_hw_AXILiteS_s_axi_ram #(
    .BYTES    ( 8 ),
    .DEPTH    ( 16 )
) int_trackerPool_sp2x (
    .clk0     ( ACLK ),
    .address0 ( int_trackerPool_sp2x_address0 ),
    .ce0      ( int_trackerPool_sp2x_ce0 ),
    .we0      ( int_trackerPool_sp2x_we0 ),
    .be0      ( int_trackerPool_sp2x_be0 ),
    .d0       ( int_trackerPool_sp2x_d0 ),
    .q0       ( int_trackerPool_sp2x_q0 ),
    .clk1     ( ACLK ),
    .address1 ( int_trackerPool_sp2x_address1 ),
    .ce1      ( int_trackerPool_sp2x_ce1 ),
    .we1      ( int_trackerPool_sp2x_we1 ),
    .be1      ( int_trackerPool_sp2x_be1 ),
    .d1       ( int_trackerPool_sp2x_d1 ),
    .q1       ( int_trackerPool_sp2x_q1 )
);
// int_trackerPool_sp1y
getTrackerID_hw_AXILiteS_s_axi_ram #(
    .BYTES    ( 8 ),
    .DEPTH    ( 16 )
) int_trackerPool_sp1y (
    .clk0     ( ACLK ),
    .address0 ( int_trackerPool_sp1y_address0 ),
    .ce0      ( int_trackerPool_sp1y_ce0 ),
    .we0      ( int_trackerPool_sp1y_we0 ),
    .be0      ( int_trackerPool_sp1y_be0 ),
    .d0       ( int_trackerPool_sp1y_d0 ),
    .q0       ( int_trackerPool_sp1y_q0 ),
    .clk1     ( ACLK ),
    .address1 ( int_trackerPool_sp1y_address1 ),
    .ce1      ( int_trackerPool_sp1y_ce1 ),
    .we1      ( int_trackerPool_sp1y_we1 ),
    .be1      ( int_trackerPool_sp1y_be1 ),
    .d1       ( int_trackerPool_sp1y_d1 ),
    .q1       ( int_trackerPool_sp1y_q1 )
);
// int_trackerPool_sp2y
getTrackerID_hw_AXILiteS_s_axi_ram #(
    .BYTES    ( 8 ),
    .DEPTH    ( 16 )
) int_trackerPool_sp2y (
    .clk0     ( ACLK ),
    .address0 ( int_trackerPool_sp2y_address0 ),
    .ce0      ( int_trackerPool_sp2y_ce0 ),
    .we0      ( int_trackerPool_sp2y_we0 ),
    .be0      ( int_trackerPool_sp2y_be0 ),
    .d0       ( int_trackerPool_sp2y_d0 ),
    .q0       ( int_trackerPool_sp2y_q0 ),
    .clk1     ( ACLK ),
    .address1 ( int_trackerPool_sp2y_address1 ),
    .ce1      ( int_trackerPool_sp2y_ce1 ),
    .we1      ( int_trackerPool_sp2y_we1 ),
    .be1      ( int_trackerPool_sp2y_be1 ),
    .d1       ( int_trackerPool_sp2y_d1 ),
    .q1       ( int_trackerPool_sp2y_q1 )
);
// int_trackerPool_sigmaX
getTrackerID_hw_AXILiteS_s_axi_ram #(
    .BYTES    ( 8 ),
    .DEPTH    ( 16 )
) int_trackerPool_sigmaX (
    .clk0     ( ACLK ),
    .address0 ( int_trackerPool_sigmaX_address0 ),
    .ce0      ( int_trackerPool_sigmaX_ce0 ),
    .we0      ( int_trackerPool_sigmaX_we0 ),
    .be0      ( int_trackerPool_sigmaX_be0 ),
    .d0       ( int_trackerPool_sigmaX_d0 ),
    .q0       ( int_trackerPool_sigmaX_q0 ),
    .clk1     ( ACLK ),
    .address1 ( int_trackerPool_sigmaX_address1 ),
    .ce1      ( int_trackerPool_sigmaX_ce1 ),
    .we1      ( int_trackerPool_sigmaX_we1 ),
    .be1      ( int_trackerPool_sigmaX_be1 ),
    .d1       ( int_trackerPool_sigmaX_d1 ),
    .q1       ( int_trackerPool_sigmaX_q1 )
);
// int_trackerPool_sigmaY
getTrackerID_hw_AXILiteS_s_axi_ram #(
    .BYTES    ( 8 ),
    .DEPTH    ( 16 )
) int_trackerPool_sigmaY (
    .clk0     ( ACLK ),
    .address0 ( int_trackerPool_sigmaY_address0 ),
    .ce0      ( int_trackerPool_sigmaY_ce0 ),
    .we0      ( int_trackerPool_sigmaY_we0 ),
    .be0      ( int_trackerPool_sigmaY_be0 ),
    .d0       ( int_trackerPool_sigmaY_d0 ),
    .q0       ( int_trackerPool_sigmaY_q0 ),
    .clk1     ( ACLK ),
    .address1 ( int_trackerPool_sigmaY_address1 ),
    .ce1      ( int_trackerPool_sigmaY_ce1 ),
    .we1      ( int_trackerPool_sigmaY_we1 ),
    .be1      ( int_trackerPool_sigmaY_be1 ),
    .d1       ( int_trackerPool_sigmaY_d1 ),
    .q1       ( int_trackerPool_sigmaY_q1 )
);
// int_trackerPool_sigmaXY
getTrackerID_hw_AXILiteS_s_axi_ram #(
    .BYTES    ( 8 ),
    .DEPTH    ( 16 )
) int_trackerPool_sigmaXY (
    .clk0     ( ACLK ),
    .address0 ( int_trackerPool_sigmaXY_address0 ),
    .ce0      ( int_trackerPool_sigmaXY_ce0 ),
    .we0      ( int_trackerPool_sigmaXY_we0 ),
    .be0      ( int_trackerPool_sigmaXY_be0 ),
    .d0       ( int_trackerPool_sigmaXY_d0 ),
    .q0       ( int_trackerPool_sigmaXY_q0 ),
    .clk1     ( ACLK ),
    .address1 ( int_trackerPool_sigmaXY_address1 ),
    .ce1      ( int_trackerPool_sigmaXY_ce1 ),
    .we1      ( int_trackerPool_sigmaXY_we1 ),
    .be1      ( int_trackerPool_sigmaXY_be1 ),
    .d1       ( int_trackerPool_sigmaXY_d1 ),
    .q1       ( int_trackerPool_sigmaXY_q1 )
);
// int_trackerPool_a
getTrackerID_hw_AXILiteS_s_axi_ram #(
    .BYTES    ( 8 ),
    .DEPTH    ( 16 )
) int_trackerPool_a (
    .clk0     ( ACLK ),
    .address0 ( int_trackerPool_a_address0 ),
    .ce0      ( int_trackerPool_a_ce0 ),
    .we0      ( int_trackerPool_a_we0 ),
    .be0      ( int_trackerPool_a_be0 ),
    .d0       ( int_trackerPool_a_d0 ),
    .q0       ( int_trackerPool_a_q0 ),
    .clk1     ( ACLK ),
    .address1 ( int_trackerPool_a_address1 ),
    .ce1      ( int_trackerPool_a_ce1 ),
    .we1      ( int_trackerPool_a_we1 ),
    .be1      ( int_trackerPool_a_be1 ),
    .d1       ( int_trackerPool_a_d1 ),
    .q1       ( int_trackerPool_a_q1 )
);
// int_trackerPool_b
getTrackerID_hw_AXILiteS_s_axi_ram #(
    .BYTES    ( 8 ),
    .DEPTH    ( 16 )
) int_trackerPool_b (
    .clk0     ( ACLK ),
    .address0 ( int_trackerPool_b_address0 ),
    .ce0      ( int_trackerPool_b_ce0 ),
    .we0      ( int_trackerPool_b_we0 ),
    .be0      ( int_trackerPool_b_be0 ),
    .d0       ( int_trackerPool_b_d0 ),
    .q0       ( int_trackerPool_b_q0 ),
    .clk1     ( ACLK ),
    .address1 ( int_trackerPool_b_address1 ),
    .ce1      ( int_trackerPool_b_ce1 ),
    .we1      ( int_trackerPool_b_we1 ),
    .be1      ( int_trackerPool_b_be1 ),
    .d1       ( int_trackerPool_b_d1 ),
    .q1       ( int_trackerPool_b_q1 )
);
// int_trackerPool_alpha
getTrackerID_hw_AXILiteS_s_axi_ram #(
    .BYTES    ( 8 ),
    .DEPTH    ( 16 )
) int_trackerPool_alpha (
    .clk0     ( ACLK ),
    .address0 ( int_trackerPool_alpha_address0 ),
    .ce0      ( int_trackerPool_alpha_ce0 ),
    .we0      ( int_trackerPool_alpha_we0 ),
    .be0      ( int_trackerPool_alpha_be0 ),
    .d0       ( int_trackerPool_alpha_d0 ),
    .q0       ( int_trackerPool_alpha_q0 ),
    .clk1     ( ACLK ),
    .address1 ( int_trackerPool_alpha_address1 ),
    .ce1      ( int_trackerPool_alpha_ce1 ),
    .we1      ( int_trackerPool_alpha_we1 ),
    .be1      ( int_trackerPool_alpha_be1 ),
    .d1       ( int_trackerPool_alpha_d1 ),
    .q1       ( int_trackerPool_alpha_q1 )
);
// int_trackerPool_sumFlowX
getTrackerID_hw_AXILiteS_s_axi_ram #(
    .BYTES    ( 8 ),
    .DEPTH    ( 16 )
) int_trackerPool_sumFlowX (
    .clk0     ( ACLK ),
    .address0 ( int_trackerPool_sumFlowX_address0 ),
    .ce0      ( int_trackerPool_sumFlowX_ce0 ),
    .we0      ( int_trackerPool_sumFlowX_we0 ),
    .be0      ( int_trackerPool_sumFlowX_be0 ),
    .d0       ( int_trackerPool_sumFlowX_d0 ),
    .q0       ( int_trackerPool_sumFlowX_q0 ),
    .clk1     ( ACLK ),
    .address1 ( int_trackerPool_sumFlowX_address1 ),
    .ce1      ( int_trackerPool_sumFlowX_ce1 ),
    .we1      ( int_trackerPool_sumFlowX_we1 ),
    .be1      ( int_trackerPool_sumFlowX_be1 ),
    .d1       ( int_trackerPool_sumFlowX_d1 ),
    .q1       ( int_trackerPool_sumFlowX_q1 )
);
// int_trackerPool_sumFlowY
getTrackerID_hw_AXILiteS_s_axi_ram #(
    .BYTES    ( 8 ),
    .DEPTH    ( 16 )
) int_trackerPool_sumFlowY (
    .clk0     ( ACLK ),
    .address0 ( int_trackerPool_sumFlowY_address0 ),
    .ce0      ( int_trackerPool_sumFlowY_ce0 ),
    .we0      ( int_trackerPool_sumFlowY_we0 ),
    .be0      ( int_trackerPool_sumFlowY_be0 ),
    .d0       ( int_trackerPool_sumFlowY_d0 ),
    .q0       ( int_trackerPool_sumFlowY_q0 ),
    .clk1     ( ACLK ),
    .address1 ( int_trackerPool_sumFlowY_address1 ),
    .ce1      ( int_trackerPool_sumFlowY_ce1 ),
    .we1      ( int_trackerPool_sumFlowY_we1 ),
    .be1      ( int_trackerPool_sumFlowY_be1 ),
    .d1       ( int_trackerPool_sumFlowY_d1 ),
    .q1       ( int_trackerPool_sumFlowY_q1 )
);
// int_trackerPool_avgFlowX
getTrackerID_hw_AXILiteS_s_axi_ram #(
    .BYTES    ( 8 ),
    .DEPTH    ( 16 )
) int_trackerPool_avgFlowX (
    .clk0     ( ACLK ),
    .address0 ( int_trackerPool_avgFlowX_address0 ),
    .ce0      ( int_trackerPool_avgFlowX_ce0 ),
    .we0      ( int_trackerPool_avgFlowX_we0 ),
    .be0      ( int_trackerPool_avgFlowX_be0 ),
    .d0       ( int_trackerPool_avgFlowX_d0 ),
    .q0       ( int_trackerPool_avgFlowX_q0 ),
    .clk1     ( ACLK ),
    .address1 ( int_trackerPool_avgFlowX_address1 ),
    .ce1      ( int_trackerPool_avgFlowX_ce1 ),
    .we1      ( int_trackerPool_avgFlowX_we1 ),
    .be1      ( int_trackerPool_avgFlowX_be1 ),
    .d1       ( int_trackerPool_avgFlowX_d1 ),
    .q1       ( int_trackerPool_avgFlowX_q1 )
);
// int_trackerPool_avgFlowY
getTrackerID_hw_AXILiteS_s_axi_ram #(
    .BYTES    ( 8 ),
    .DEPTH    ( 16 )
) int_trackerPool_avgFlowY (
    .clk0     ( ACLK ),
    .address0 ( int_trackerPool_avgFlowY_address0 ),
    .ce0      ( int_trackerPool_avgFlowY_ce0 ),
    .we0      ( int_trackerPool_avgFlowY_we0 ),
    .be0      ( int_trackerPool_avgFlowY_be0 ),
    .d0       ( int_trackerPool_avgFlowY_d0 ),
    .q0       ( int_trackerPool_avgFlowY_q0 ),
    .clk1     ( ACLK ),
    .address1 ( int_trackerPool_avgFlowY_address1 ),
    .ce1      ( int_trackerPool_avgFlowY_ce1 ),
    .we1      ( int_trackerPool_avgFlowY_we1 ),
    .be1      ( int_trackerPool_avgFlowY_be1 ),
    .d1       ( int_trackerPool_avgFlowY_d1 ),
    .q1       ( int_trackerPool_avgFlowY_q1 )
);
// int_trackerPool_activity
getTrackerID_hw_AXILiteS_s_axi_ram #(
    .BYTES    ( 8 ),
    .DEPTH    ( 16 )
) int_trackerPool_activity (
    .clk0     ( ACLK ),
    .address0 ( int_trackerPool_activity_address0 ),
    .ce0      ( int_trackerPool_activity_ce0 ),
    .we0      ( int_trackerPool_activity_we0 ),
    .be0      ( int_trackerPool_activity_be0 ),
    .d0       ( int_trackerPool_activity_d0 ),
    .q0       ( int_trackerPool_activity_q0 ),
    .clk1     ( ACLK ),
    .address1 ( int_trackerPool_activity_address1 ),
    .ce1      ( int_trackerPool_activity_ce1 ),
    .we1      ( int_trackerPool_activity_we1 ),
    .be1      ( int_trackerPool_activity_be1 ),
    .d1       ( int_trackerPool_activity_d1 ),
    .q1       ( int_trackerPool_activity_q1 )
);
// int_trackerPool_lastTimeStamp
getTrackerID_hw_AXILiteS_s_axi_ram #(
    .BYTES    ( 4 ),
    .DEPTH    ( 16 )
) int_trackerPool_lastTimeStamp (
    .clk0     ( ACLK ),
    .address0 ( int_trackerPool_lastTimeStamp_address0 ),
    .ce0      ( int_trackerPool_lastTimeStamp_ce0 ),
    .we0      ( int_trackerPool_lastTimeStamp_we0 ),
    .be0      ( int_trackerPool_lastTimeStamp_be0 ),
    .d0       ( int_trackerPool_lastTimeStamp_d0 ),
    .q0       ( int_trackerPool_lastTimeStamp_q0 ),
    .clk1     ( ACLK ),
    .address1 ( int_trackerPool_lastTimeStamp_address1 ),
    .ce1      ( int_trackerPool_lastTimeStamp_ce1 ),
    .we1      ( int_trackerPool_lastTimeStamp_we1 ),
    .be1      ( int_trackerPool_lastTimeStamp_be1 ),
    .d1       ( int_trackerPool_lastTimeStamp_d1 ),
    .q1       ( int_trackerPool_lastTimeStamp_q1 )
);

//------------------------AXI write fsm------------------
assign AWREADY = (wstate == WRIDLE);
assign WREADY  = (wstate == WRDATA);
assign BRESP   = 2'b00;  // OKAY
assign BVALID  = (wstate == WRRESP);
assign wmask   = { {8{WSTRB[3]}}, {8{WSTRB[2]}}, {8{WSTRB[1]}}, {8{WSTRB[0]}} };
assign aw_hs   = AWVALID & AWREADY;
assign w_hs    = WVALID & WREADY;

// wstate
always @(posedge ACLK) begin
    if (ARESET)
        wstate <= WRRESET;
    else if (ACLK_EN)
        wstate <= wnext;
end

// wnext
always @(*) begin
    case (wstate)
        WRIDLE:
            if (AWVALID)
                wnext = WRDATA;
            else
                wnext = WRIDLE;
        WRDATA:
            if (WVALID)
                wnext = WRRESP;
            else
                wnext = WRDATA;
        WRRESP:
            if (BREADY)
                wnext = WRIDLE;
            else
                wnext = WRRESP;
        default:
            wnext = WRIDLE;
    endcase
end

// waddr
always @(posedge ACLK) begin
    if (ACLK_EN) begin
        if (aw_hs)
            waddr <= AWADDR[ADDR_BITS-1:0];
    end
end

//------------------------AXI read fsm-------------------
assign ARREADY = (rstate == RDIDLE);
assign RDATA   = rdata;
assign RRESP   = 2'b00;  // OKAY
assign RVALID  = (rstate == RDDATA) & !int_trackerPool_state_read & !int_trackerPool_eventCount_read & !int_trackerPool_resetTime_read & !int_trackerPool_x_read & !int_trackerPool_y_read & !int_trackerPool_prevX_read & !int_trackerPool_prevY_read & !int_trackerPool_predX_read & !int_trackerPool_predY_read & !int_trackerPool_shapeFactor_read & !int_trackerPool_origShapeFactor_read & !int_trackerPool_posFactor_read & !int_trackerPool_velFactor_read & !int_trackerPool_clusterSize_read & !int_trackerPool_smoothingFactor_read & !int_trackerPool_sp1x_read & !int_trackerPool_sp2x_read & !int_trackerPool_sp1y_read & !int_trackerPool_sp2y_read & !int_trackerPool_sigmaX_read & !int_trackerPool_sigmaY_read & !int_trackerPool_sigmaXY_read & !int_trackerPool_a_read & !int_trackerPool_b_read & !int_trackerPool_alpha_read & !int_trackerPool_sumFlowX_read & !int_trackerPool_sumFlowY_read & !int_trackerPool_avgFlowX_read & !int_trackerPool_avgFlowY_read & !int_trackerPool_activity_read & !int_trackerPool_lastTimeStamp_read;
assign ar_hs   = ARVALID & ARREADY;
assign raddr   = ARADDR[ADDR_BITS-1:0];

// rstate
always @(posedge ACLK) begin
    if (ARESET)
        rstate <= RDRESET;
    else if (ACLK_EN)
        rstate <= rnext;
end

// rnext
always @(*) begin
    case (rstate)
        RDIDLE:
            if (ARVALID)
                rnext = RDDATA;
            else
                rnext = RDIDLE;
        RDDATA:
            if (RREADY & RVALID)
                rnext = RDIDLE;
            else
                rnext = RDDATA;
        default:
            rnext = RDIDLE;
    endcase
end

// rdata
always @(posedge ACLK) begin
    if (ACLK_EN) begin
        if (ar_hs) begin
            rdata <= 1'b0;
        end
        else if (int_trackerPool_state_read) begin
            rdata <= int_trackerPool_state_q1;
        end
        else if (int_trackerPool_eventCount_read) begin
            rdata <= int_trackerPool_eventCount_q1;
        end
        else if (int_trackerPool_resetTime_read) begin
            rdata <= int_trackerPool_resetTime_q1;
        end
        else if (int_trackerPool_x_read) begin
            rdata <= int_trackerPool_x_q1 >> (int_trackerPool_x_shift * 32);
        end
        else if (int_trackerPool_y_read) begin
            rdata <= int_trackerPool_y_q1 >> (int_trackerPool_y_shift * 32);
        end
        else if (int_trackerPool_prevX_read) begin
            rdata <= int_trackerPool_prevX_q1 >> (int_trackerPool_prevX_shift * 32);
        end
        else if (int_trackerPool_prevY_read) begin
            rdata <= int_trackerPool_prevY_q1 >> (int_trackerPool_prevY_shift * 32);
        end
        else if (int_trackerPool_predX_read) begin
            rdata <= int_trackerPool_predX_q1 >> (int_trackerPool_predX_shift * 32);
        end
        else if (int_trackerPool_predY_read) begin
            rdata <= int_trackerPool_predY_q1 >> (int_trackerPool_predY_shift * 32);
        end
        else if (int_trackerPool_shapeFactor_read) begin
            rdata <= int_trackerPool_shapeFactor_q1 >> (int_trackerPool_shapeFactor_shift * 32);
        end
        else if (int_trackerPool_origShapeFactor_read) begin
            rdata <= int_trackerPool_origShapeFactor_q1 >> (int_trackerPool_origShapeFactor_shift * 32);
        end
        else if (int_trackerPool_posFactor_read) begin
            rdata <= int_trackerPool_posFactor_q1 >> (int_trackerPool_posFactor_shift * 32);
        end
        else if (int_trackerPool_velFactor_read) begin
            rdata <= int_trackerPool_velFactor_q1 >> (int_trackerPool_velFactor_shift * 32);
        end
        else if (int_trackerPool_clusterSize_read) begin
            rdata <= int_trackerPool_clusterSize_q1 >> (int_trackerPool_clusterSize_shift * 32);
        end
        else if (int_trackerPool_smoothingFactor_read) begin
            rdata <= int_trackerPool_smoothingFactor_q1 >> (int_trackerPool_smoothingFactor_shift * 32);
        end
        else if (int_trackerPool_sp1x_read) begin
            rdata <= int_trackerPool_sp1x_q1 >> (int_trackerPool_sp1x_shift * 32);
        end
        else if (int_trackerPool_sp2x_read) begin
            rdata <= int_trackerPool_sp2x_q1 >> (int_trackerPool_sp2x_shift * 32);
        end
        else if (int_trackerPool_sp1y_read) begin
            rdata <= int_trackerPool_sp1y_q1 >> (int_trackerPool_sp1y_shift * 32);
        end
        else if (int_trackerPool_sp2y_read) begin
            rdata <= int_trackerPool_sp2y_q1 >> (int_trackerPool_sp2y_shift * 32);
        end
        else if (int_trackerPool_sigmaX_read) begin
            rdata <= int_trackerPool_sigmaX_q1 >> (int_trackerPool_sigmaX_shift * 32);
        end
        else if (int_trackerPool_sigmaY_read) begin
            rdata <= int_trackerPool_sigmaY_q1 >> (int_trackerPool_sigmaY_shift * 32);
        end
        else if (int_trackerPool_sigmaXY_read) begin
            rdata <= int_trackerPool_sigmaXY_q1 >> (int_trackerPool_sigmaXY_shift * 32);
        end
        else if (int_trackerPool_a_read) begin
            rdata <= int_trackerPool_a_q1 >> (int_trackerPool_a_shift * 32);
        end
        else if (int_trackerPool_b_read) begin
            rdata <= int_trackerPool_b_q1 >> (int_trackerPool_b_shift * 32);
        end
        else if (int_trackerPool_alpha_read) begin
            rdata <= int_trackerPool_alpha_q1 >> (int_trackerPool_alpha_shift * 32);
        end
        else if (int_trackerPool_sumFlowX_read) begin
            rdata <= int_trackerPool_sumFlowX_q1 >> (int_trackerPool_sumFlowX_shift * 32);
        end
        else if (int_trackerPool_sumFlowY_read) begin
            rdata <= int_trackerPool_sumFlowY_q1 >> (int_trackerPool_sumFlowY_shift * 32);
        end
        else if (int_trackerPool_avgFlowX_read) begin
            rdata <= int_trackerPool_avgFlowX_q1 >> (int_trackerPool_avgFlowX_shift * 32);
        end
        else if (int_trackerPool_avgFlowY_read) begin
            rdata <= int_trackerPool_avgFlowY_q1 >> (int_trackerPool_avgFlowY_shift * 32);
        end
        else if (int_trackerPool_activity_read) begin
            rdata <= int_trackerPool_activity_q1 >> (int_trackerPool_activity_shift * 32);
        end
        else if (int_trackerPool_lastTimeStamp_read) begin
            rdata <= int_trackerPool_lastTimeStamp_q1;
        end
    end
end


//------------------------Register logic-----------------

//------------------------Memory logic-------------------
// trackerPool_state
assign int_trackerPool_state_address0           = trackerPool_state_address0 >> 2;
assign int_trackerPool_state_ce0                = trackerPool_state_ce0;
assign int_trackerPool_state_we0                = 1'b0;
assign int_trackerPool_state_be0                = 1'b0;
assign int_trackerPool_state_d0                 = 1'b0;
assign trackerPool_state_q0                     = int_trackerPool_state_q0 >> (int_trackerPool_state_shift * 8);
assign int_trackerPool_state_address1           = ar_hs? raddr[3:2] : waddr[3:2];
assign int_trackerPool_state_ce1                = ar_hs | (int_trackerPool_state_write & WVALID);
assign int_trackerPool_state_we1                = int_trackerPool_state_write & WVALID;
assign int_trackerPool_state_be1                = WSTRB;
assign int_trackerPool_state_d1                 = WDATA;
// trackerPool_eventCount
assign int_trackerPool_eventCount_address0      = trackerPool_eventCount_address0;
assign int_trackerPool_eventCount_ce0           = trackerPool_eventCount_ce0;
assign int_trackerPool_eventCount_we0           = trackerPool_eventCount_we0;
assign int_trackerPool_eventCount_be0           = {4{trackerPool_eventCount_we0}};
assign int_trackerPool_eventCount_d0            = trackerPool_eventCount_d0;
assign int_trackerPool_eventCount_address1      = ar_hs? raddr[5:2] : waddr[5:2];
assign int_trackerPool_eventCount_ce1           = ar_hs | (int_trackerPool_eventCount_write & WVALID);
assign int_trackerPool_eventCount_we1           = int_trackerPool_eventCount_write & WVALID;
assign int_trackerPool_eventCount_be1           = WSTRB;
assign int_trackerPool_eventCount_d1            = WDATA;
// trackerPool_resetTime
assign int_trackerPool_resetTime_address0       = trackerPool_resetTime_address0;
assign int_trackerPool_resetTime_ce0            = trackerPool_resetTime_ce0;
assign int_trackerPool_resetTime_we0            = trackerPool_resetTime_we0;
assign int_trackerPool_resetTime_be0            = {4{trackerPool_resetTime_we0}};
assign int_trackerPool_resetTime_d0             = trackerPool_resetTime_d0;
assign int_trackerPool_resetTime_address1       = ar_hs? raddr[5:2] : waddr[5:2];
assign int_trackerPool_resetTime_ce1            = ar_hs | (int_trackerPool_resetTime_write & WVALID);
assign int_trackerPool_resetTime_we1            = int_trackerPool_resetTime_write & WVALID;
assign int_trackerPool_resetTime_be1            = WSTRB;
assign int_trackerPool_resetTime_d1             = WDATA;
// trackerPool_x
assign int_trackerPool_x_address0               = trackerPool_x_address0;
assign int_trackerPool_x_ce0                    = trackerPool_x_ce0;
assign int_trackerPool_x_we0                    = 1'b0;
assign int_trackerPool_x_be0                    = 1'b0;
assign int_trackerPool_x_d0                     = 1'b0;
assign trackerPool_x_q0                         = int_trackerPool_x_q0;
assign int_trackerPool_x_address1               = ar_hs? raddr[6:3] : waddr[6:3];
assign int_trackerPool_x_ce1                    = ar_hs | (int_trackerPool_x_write & WVALID);
assign int_trackerPool_x_we1                    = int_trackerPool_x_write & WVALID;
assign int_trackerPool_x_be1                    = WSTRB << (waddr[2:2] * 4);
assign int_trackerPool_x_d1                     = {2{WDATA}};
// trackerPool_y
assign int_trackerPool_y_address0               = trackerPool_y_address0;
assign int_trackerPool_y_ce0                    = trackerPool_y_ce0;
assign int_trackerPool_y_we0                    = 1'b0;
assign int_trackerPool_y_be0                    = 1'b0;
assign int_trackerPool_y_d0                     = 1'b0;
assign trackerPool_y_q0                         = int_trackerPool_y_q0;
assign int_trackerPool_y_address1               = ar_hs? raddr[6:3] : waddr[6:3];
assign int_trackerPool_y_ce1                    = ar_hs | (int_trackerPool_y_write & WVALID);
assign int_trackerPool_y_we1                    = int_trackerPool_y_write & WVALID;
assign int_trackerPool_y_be1                    = WSTRB << (waddr[2:2] * 4);
assign int_trackerPool_y_d1                     = {2{WDATA}};
// trackerPool_prevX
assign int_trackerPool_prevX_address0           = trackerPool_prevX_address0;
assign int_trackerPool_prevX_ce0                = trackerPool_prevX_ce0;
assign int_trackerPool_prevX_we0                = trackerPool_prevX_we0;
assign int_trackerPool_prevX_be0                = {8{trackerPool_prevX_we0}};
assign int_trackerPool_prevX_d0                 = trackerPool_prevX_d0;
assign int_trackerPool_prevX_address1           = ar_hs? raddr[6:3] : waddr[6:3];
assign int_trackerPool_prevX_ce1                = ar_hs | (int_trackerPool_prevX_write & WVALID);
assign int_trackerPool_prevX_we1                = int_trackerPool_prevX_write & WVALID;
assign int_trackerPool_prevX_be1                = WSTRB << (waddr[2:2] * 4);
assign int_trackerPool_prevX_d1                 = {2{WDATA}};
// trackerPool_prevY
assign int_trackerPool_prevY_address0           = trackerPool_prevY_address0;
assign int_trackerPool_prevY_ce0                = trackerPool_prevY_ce0;
assign int_trackerPool_prevY_we0                = trackerPool_prevY_we0;
assign int_trackerPool_prevY_be0                = {8{trackerPool_prevY_we0}};
assign int_trackerPool_prevY_d0                 = trackerPool_prevY_d0;
assign int_trackerPool_prevY_address1           = ar_hs? raddr[6:3] : waddr[6:3];
assign int_trackerPool_prevY_ce1                = ar_hs | (int_trackerPool_prevY_write & WVALID);
assign int_trackerPool_prevY_we1                = int_trackerPool_prevY_write & WVALID;
assign int_trackerPool_prevY_be1                = WSTRB << (waddr[2:2] * 4);
assign int_trackerPool_prevY_d1                 = {2{WDATA}};
// trackerPool_predX
assign int_trackerPool_predX_address0           = trackerPool_predX_address0;
assign int_trackerPool_predX_ce0                = trackerPool_predX_ce0;
assign int_trackerPool_predX_we0                = trackerPool_predX_we0;
assign int_trackerPool_predX_be0                = {8{trackerPool_predX_we0}};
assign int_trackerPool_predX_d0                 = trackerPool_predX_d0;
assign int_trackerPool_predX_address1           = ar_hs? raddr[6:3] : waddr[6:3];
assign int_trackerPool_predX_ce1                = ar_hs | (int_trackerPool_predX_write & WVALID);
assign int_trackerPool_predX_we1                = int_trackerPool_predX_write & WVALID;
assign int_trackerPool_predX_be1                = WSTRB << (waddr[2:2] * 4);
assign int_trackerPool_predX_d1                 = {2{WDATA}};
// trackerPool_predY
assign int_trackerPool_predY_address0           = trackerPool_predY_address0;
assign int_trackerPool_predY_ce0                = trackerPool_predY_ce0;
assign int_trackerPool_predY_we0                = trackerPool_predY_we0;
assign int_trackerPool_predY_be0                = {8{trackerPool_predY_we0}};
assign int_trackerPool_predY_d0                 = trackerPool_predY_d0;
assign int_trackerPool_predY_address1           = ar_hs? raddr[6:3] : waddr[6:3];
assign int_trackerPool_predY_ce1                = ar_hs | (int_trackerPool_predY_write & WVALID);
assign int_trackerPool_predY_we1                = int_trackerPool_predY_write & WVALID;
assign int_trackerPool_predY_be1                = WSTRB << (waddr[2:2] * 4);
assign int_trackerPool_predY_d1                 = {2{WDATA}};
// trackerPool_shapeFactor
assign int_trackerPool_shapeFactor_address0     = trackerPool_shapeFactor_address0;
assign int_trackerPool_shapeFactor_ce0          = trackerPool_shapeFactor_ce0;
assign int_trackerPool_shapeFactor_we0          = trackerPool_shapeFactor_we0;
assign int_trackerPool_shapeFactor_be0          = {8{trackerPool_shapeFactor_we0}};
assign int_trackerPool_shapeFactor_d0           = trackerPool_shapeFactor_d0;
assign int_trackerPool_shapeFactor_address1     = ar_hs? raddr[6:3] : waddr[6:3];
assign int_trackerPool_shapeFactor_ce1          = ar_hs | (int_trackerPool_shapeFactor_write & WVALID);
assign int_trackerPool_shapeFactor_we1          = int_trackerPool_shapeFactor_write & WVALID;
assign int_trackerPool_shapeFactor_be1          = WSTRB << (waddr[2:2] * 4);
assign int_trackerPool_shapeFactor_d1           = {2{WDATA}};
// trackerPool_origShapeFactor
assign int_trackerPool_origShapeFactor_address0 = trackerPool_origShapeFactor_address0;
assign int_trackerPool_origShapeFactor_ce0      = trackerPool_origShapeFactor_ce0;
assign int_trackerPool_origShapeFactor_we0      = trackerPool_origShapeFactor_we0;
assign int_trackerPool_origShapeFactor_be0      = {8{trackerPool_origShapeFactor_we0}};
assign int_trackerPool_origShapeFactor_d0       = trackerPool_origShapeFactor_d0;
assign int_trackerPool_origShapeFactor_address1 = ar_hs? raddr[6:3] : waddr[6:3];
assign int_trackerPool_origShapeFactor_ce1      = ar_hs | (int_trackerPool_origShapeFactor_write & WVALID);
assign int_trackerPool_origShapeFactor_we1      = int_trackerPool_origShapeFactor_write & WVALID;
assign int_trackerPool_origShapeFactor_be1      = WSTRB << (waddr[2:2] * 4);
assign int_trackerPool_origShapeFactor_d1       = {2{WDATA}};
// trackerPool_posFactor
assign int_trackerPool_posFactor_address0       = trackerPool_posFactor_address0;
assign int_trackerPool_posFactor_ce0            = trackerPool_posFactor_ce0;
assign int_trackerPool_posFactor_we0            = trackerPool_posFactor_we0;
assign int_trackerPool_posFactor_be0            = {8{trackerPool_posFactor_we0}};
assign int_trackerPool_posFactor_d0             = trackerPool_posFactor_d0;
assign int_trackerPool_posFactor_address1       = ar_hs? raddr[6:3] : waddr[6:3];
assign int_trackerPool_posFactor_ce1            = ar_hs | (int_trackerPool_posFactor_write & WVALID);
assign int_trackerPool_posFactor_we1            = int_trackerPool_posFactor_write & WVALID;
assign int_trackerPool_posFactor_be1            = WSTRB << (waddr[2:2] * 4);
assign int_trackerPool_posFactor_d1             = {2{WDATA}};
// trackerPool_velFactor
assign int_trackerPool_velFactor_address0       = trackerPool_velFactor_address0;
assign int_trackerPool_velFactor_ce0            = trackerPool_velFactor_ce0;
assign int_trackerPool_velFactor_we0            = trackerPool_velFactor_we0;
assign int_trackerPool_velFactor_be0            = {8{trackerPool_velFactor_we0}};
assign int_trackerPool_velFactor_d0             = trackerPool_velFactor_d0;
assign int_trackerPool_velFactor_address1       = ar_hs? raddr[6:3] : waddr[6:3];
assign int_trackerPool_velFactor_ce1            = ar_hs | (int_trackerPool_velFactor_write & WVALID);
assign int_trackerPool_velFactor_we1            = int_trackerPool_velFactor_write & WVALID;
assign int_trackerPool_velFactor_be1            = WSTRB << (waddr[2:2] * 4);
assign int_trackerPool_velFactor_d1             = {2{WDATA}};
// trackerPool_clusterSize
assign int_trackerPool_clusterSize_address0     = trackerPool_clusterSize_address0;
assign int_trackerPool_clusterSize_ce0          = trackerPool_clusterSize_ce0;
assign int_trackerPool_clusterSize_we0          = trackerPool_clusterSize_we0;
assign int_trackerPool_clusterSize_be0          = {8{trackerPool_clusterSize_we0}};
assign int_trackerPool_clusterSize_d0           = trackerPool_clusterSize_d0;
assign int_trackerPool_clusterSize_address1     = ar_hs? raddr[6:3] : waddr[6:3];
assign int_trackerPool_clusterSize_ce1          = ar_hs | (int_trackerPool_clusterSize_write & WVALID);
assign int_trackerPool_clusterSize_we1          = int_trackerPool_clusterSize_write & WVALID;
assign int_trackerPool_clusterSize_be1          = WSTRB << (waddr[2:2] * 4);
assign int_trackerPool_clusterSize_d1           = {2{WDATA}};
// trackerPool_smoothingFactor
assign int_trackerPool_smoothingFactor_address0 = trackerPool_smoothingFactor_address0;
assign int_trackerPool_smoothingFactor_ce0      = trackerPool_smoothingFactor_ce0;
assign int_trackerPool_smoothingFactor_we0      = trackerPool_smoothingFactor_we0;
assign int_trackerPool_smoothingFactor_be0      = {8{trackerPool_smoothingFactor_we0}};
assign int_trackerPool_smoothingFactor_d0       = trackerPool_smoothingFactor_d0;
assign int_trackerPool_smoothingFactor_address1 = ar_hs? raddr[6:3] : waddr[6:3];
assign int_trackerPool_smoothingFactor_ce1      = ar_hs | (int_trackerPool_smoothingFactor_write & WVALID);
assign int_trackerPool_smoothingFactor_we1      = int_trackerPool_smoothingFactor_write & WVALID;
assign int_trackerPool_smoothingFactor_be1      = WSTRB << (waddr[2:2] * 4);
assign int_trackerPool_smoothingFactor_d1       = {2{WDATA}};
// trackerPool_sp1x
assign int_trackerPool_sp1x_address0            = trackerPool_sp1x_address0;
assign int_trackerPool_sp1x_ce0                 = trackerPool_sp1x_ce0;
assign int_trackerPool_sp1x_we0                 = trackerPool_sp1x_we0;
assign int_trackerPool_sp1x_be0                 = {8{trackerPool_sp1x_we0}};
assign int_trackerPool_sp1x_d0                  = trackerPool_sp1x_d0;
assign int_trackerPool_sp1x_address1            = ar_hs? raddr[6:3] : waddr[6:3];
assign int_trackerPool_sp1x_ce1                 = ar_hs | (int_trackerPool_sp1x_write & WVALID);
assign int_trackerPool_sp1x_we1                 = int_trackerPool_sp1x_write & WVALID;
assign int_trackerPool_sp1x_be1                 = WSTRB << (waddr[2:2] * 4);
assign int_trackerPool_sp1x_d1                  = {2{WDATA}};
// trackerPool_sp2x
assign int_trackerPool_sp2x_address0            = trackerPool_sp2x_address0;
assign int_trackerPool_sp2x_ce0                 = trackerPool_sp2x_ce0;
assign int_trackerPool_sp2x_we0                 = trackerPool_sp2x_we0;
assign int_trackerPool_sp2x_be0                 = {8{trackerPool_sp2x_we0}};
assign int_trackerPool_sp2x_d0                  = trackerPool_sp2x_d0;
assign int_trackerPool_sp2x_address1            = ar_hs? raddr[6:3] : waddr[6:3];
assign int_trackerPool_sp2x_ce1                 = ar_hs | (int_trackerPool_sp2x_write & WVALID);
assign int_trackerPool_sp2x_we1                 = int_trackerPool_sp2x_write & WVALID;
assign int_trackerPool_sp2x_be1                 = WSTRB << (waddr[2:2] * 4);
assign int_trackerPool_sp2x_d1                  = {2{WDATA}};
// trackerPool_sp1y
assign int_trackerPool_sp1y_address0            = trackerPool_sp1y_address0;
assign int_trackerPool_sp1y_ce0                 = trackerPool_sp1y_ce0;
assign int_trackerPool_sp1y_we0                 = trackerPool_sp1y_we0;
assign int_trackerPool_sp1y_be0                 = {8{trackerPool_sp1y_we0}};
assign int_trackerPool_sp1y_d0                  = trackerPool_sp1y_d0;
assign int_trackerPool_sp1y_address1            = ar_hs? raddr[6:3] : waddr[6:3];
assign int_trackerPool_sp1y_ce1                 = ar_hs | (int_trackerPool_sp1y_write & WVALID);
assign int_trackerPool_sp1y_we1                 = int_trackerPool_sp1y_write & WVALID;
assign int_trackerPool_sp1y_be1                 = WSTRB << (waddr[2:2] * 4);
assign int_trackerPool_sp1y_d1                  = {2{WDATA}};
// trackerPool_sp2y
assign int_trackerPool_sp2y_address0            = trackerPool_sp2y_address0;
assign int_trackerPool_sp2y_ce0                 = trackerPool_sp2y_ce0;
assign int_trackerPool_sp2y_we0                 = trackerPool_sp2y_we0;
assign int_trackerPool_sp2y_be0                 = {8{trackerPool_sp2y_we0}};
assign int_trackerPool_sp2y_d0                  = trackerPool_sp2y_d0;
assign int_trackerPool_sp2y_address1            = ar_hs? raddr[6:3] : waddr[6:3];
assign int_trackerPool_sp2y_ce1                 = ar_hs | (int_trackerPool_sp2y_write & WVALID);
assign int_trackerPool_sp2y_we1                 = int_trackerPool_sp2y_write & WVALID;
assign int_trackerPool_sp2y_be1                 = WSTRB << (waddr[2:2] * 4);
assign int_trackerPool_sp2y_d1                  = {2{WDATA}};
// trackerPool_sigmaX
assign int_trackerPool_sigmaX_address0          = trackerPool_sigmaX_address0;
assign int_trackerPool_sigmaX_ce0               = trackerPool_sigmaX_ce0;
assign int_trackerPool_sigmaX_we0               = 1'b0;
assign int_trackerPool_sigmaX_be0               = 1'b0;
assign int_trackerPool_sigmaX_d0                = 1'b0;
assign trackerPool_sigmaX_q0                    = int_trackerPool_sigmaX_q0;
assign int_trackerPool_sigmaX_address1          = ar_hs? raddr[6:3] : waddr[6:3];
assign int_trackerPool_sigmaX_ce1               = ar_hs | (int_trackerPool_sigmaX_write & WVALID);
assign int_trackerPool_sigmaX_we1               = int_trackerPool_sigmaX_write & WVALID;
assign int_trackerPool_sigmaX_be1               = WSTRB << (waddr[2:2] * 4);
assign int_trackerPool_sigmaX_d1                = {2{WDATA}};
// trackerPool_sigmaY
assign int_trackerPool_sigmaY_address0          = trackerPool_sigmaY_address0;
assign int_trackerPool_sigmaY_ce0               = trackerPool_sigmaY_ce0;
assign int_trackerPool_sigmaY_we0               = 1'b0;
assign int_trackerPool_sigmaY_be0               = 1'b0;
assign int_trackerPool_sigmaY_d0                = 1'b0;
assign trackerPool_sigmaY_q0                    = int_trackerPool_sigmaY_q0;
assign int_trackerPool_sigmaY_address1          = ar_hs? raddr[6:3] : waddr[6:3];
assign int_trackerPool_sigmaY_ce1               = ar_hs | (int_trackerPool_sigmaY_write & WVALID);
assign int_trackerPool_sigmaY_we1               = int_trackerPool_sigmaY_write & WVALID;
assign int_trackerPool_sigmaY_be1               = WSTRB << (waddr[2:2] * 4);
assign int_trackerPool_sigmaY_d1                = {2{WDATA}};
// trackerPool_sigmaXY
assign int_trackerPool_sigmaXY_address0         = trackerPool_sigmaXY_address0;
assign int_trackerPool_sigmaXY_ce0              = trackerPool_sigmaXY_ce0;
assign int_trackerPool_sigmaXY_we0              = 1'b0;
assign int_trackerPool_sigmaXY_be0              = 1'b0;
assign int_trackerPool_sigmaXY_d0               = 1'b0;
assign trackerPool_sigmaXY_q0                   = int_trackerPool_sigmaXY_q0;
assign int_trackerPool_sigmaXY_address1         = ar_hs? raddr[6:3] : waddr[6:3];
assign int_trackerPool_sigmaXY_ce1              = ar_hs | (int_trackerPool_sigmaXY_write & WVALID);
assign int_trackerPool_sigmaXY_we1              = int_trackerPool_sigmaXY_write & WVALID;
assign int_trackerPool_sigmaXY_be1              = WSTRB << (waddr[2:2] * 4);
assign int_trackerPool_sigmaXY_d1               = {2{WDATA}};
// trackerPool_a
assign int_trackerPool_a_address0               = trackerPool_a_address0;
assign int_trackerPool_a_ce0                    = trackerPool_a_ce0;
assign int_trackerPool_a_we0                    = trackerPool_a_we0;
assign int_trackerPool_a_be0                    = {8{trackerPool_a_we0}};
assign int_trackerPool_a_d0                     = trackerPool_a_d0;
assign int_trackerPool_a_address1               = ar_hs? raddr[6:3] : waddr[6:3];
assign int_trackerPool_a_ce1                    = ar_hs | (int_trackerPool_a_write & WVALID);
assign int_trackerPool_a_we1                    = int_trackerPool_a_write & WVALID;
assign int_trackerPool_a_be1                    = WSTRB << (waddr[2:2] * 4);
assign int_trackerPool_a_d1                     = {2{WDATA}};
// trackerPool_b
assign int_trackerPool_b_address0               = trackerPool_b_address0;
assign int_trackerPool_b_ce0                    = trackerPool_b_ce0;
assign int_trackerPool_b_we0                    = trackerPool_b_we0;
assign int_trackerPool_b_be0                    = {8{trackerPool_b_we0}};
assign int_trackerPool_b_d0                     = trackerPool_b_d0;
assign int_trackerPool_b_address1               = ar_hs? raddr[6:3] : waddr[6:3];
assign int_trackerPool_b_ce1                    = ar_hs | (int_trackerPool_b_write & WVALID);
assign int_trackerPool_b_we1                    = int_trackerPool_b_write & WVALID;
assign int_trackerPool_b_be1                    = WSTRB << (waddr[2:2] * 4);
assign int_trackerPool_b_d1                     = {2{WDATA}};
// trackerPool_alpha
assign int_trackerPool_alpha_address0           = trackerPool_alpha_address0;
assign int_trackerPool_alpha_ce0                = trackerPool_alpha_ce0;
assign int_trackerPool_alpha_we0                = trackerPool_alpha_we0;
assign int_trackerPool_alpha_be0                = {8{trackerPool_alpha_we0}};
assign int_trackerPool_alpha_d0                 = trackerPool_alpha_d0;
assign int_trackerPool_alpha_address1           = ar_hs? raddr[6:3] : waddr[6:3];
assign int_trackerPool_alpha_ce1                = ar_hs | (int_trackerPool_alpha_write & WVALID);
assign int_trackerPool_alpha_we1                = int_trackerPool_alpha_write & WVALID;
assign int_trackerPool_alpha_be1                = WSTRB << (waddr[2:2] * 4);
assign int_trackerPool_alpha_d1                 = {2{WDATA}};
// trackerPool_sumFlowX
assign int_trackerPool_sumFlowX_address0        = trackerPool_sumFlowX_address0;
assign int_trackerPool_sumFlowX_ce0             = trackerPool_sumFlowX_ce0;
assign int_trackerPool_sumFlowX_we0             = trackerPool_sumFlowX_we0;
assign int_trackerPool_sumFlowX_be0             = {8{trackerPool_sumFlowX_we0}};
assign int_trackerPool_sumFlowX_d0              = trackerPool_sumFlowX_d0;
assign int_trackerPool_sumFlowX_address1        = ar_hs? raddr[6:3] : waddr[6:3];
assign int_trackerPool_sumFlowX_ce1             = ar_hs | (int_trackerPool_sumFlowX_write & WVALID);
assign int_trackerPool_sumFlowX_we1             = int_trackerPool_sumFlowX_write & WVALID;
assign int_trackerPool_sumFlowX_be1             = WSTRB << (waddr[2:2] * 4);
assign int_trackerPool_sumFlowX_d1              = {2{WDATA}};
// trackerPool_sumFlowY
assign int_trackerPool_sumFlowY_address0        = trackerPool_sumFlowY_address0;
assign int_trackerPool_sumFlowY_ce0             = trackerPool_sumFlowY_ce0;
assign int_trackerPool_sumFlowY_we0             = trackerPool_sumFlowY_we0;
assign int_trackerPool_sumFlowY_be0             = {8{trackerPool_sumFlowY_we0}};
assign int_trackerPool_sumFlowY_d0              = trackerPool_sumFlowY_d0;
assign int_trackerPool_sumFlowY_address1        = ar_hs? raddr[6:3] : waddr[6:3];
assign int_trackerPool_sumFlowY_ce1             = ar_hs | (int_trackerPool_sumFlowY_write & WVALID);
assign int_trackerPool_sumFlowY_we1             = int_trackerPool_sumFlowY_write & WVALID;
assign int_trackerPool_sumFlowY_be1             = WSTRB << (waddr[2:2] * 4);
assign int_trackerPool_sumFlowY_d1              = {2{WDATA}};
// trackerPool_avgFlowX
assign int_trackerPool_avgFlowX_address0        = trackerPool_avgFlowX_address0;
assign int_trackerPool_avgFlowX_ce0             = trackerPool_avgFlowX_ce0;
assign int_trackerPool_avgFlowX_we0             = 1'b0;
assign int_trackerPool_avgFlowX_be0             = 1'b0;
assign int_trackerPool_avgFlowX_d0              = 1'b0;
assign trackerPool_avgFlowX_q0                  = int_trackerPool_avgFlowX_q0;
assign int_trackerPool_avgFlowX_address1        = ar_hs? raddr[6:3] : waddr[6:3];
assign int_trackerPool_avgFlowX_ce1             = ar_hs | (int_trackerPool_avgFlowX_write & WVALID);
assign int_trackerPool_avgFlowX_we1             = int_trackerPool_avgFlowX_write & WVALID;
assign int_trackerPool_avgFlowX_be1             = WSTRB << (waddr[2:2] * 4);
assign int_trackerPool_avgFlowX_d1              = {2{WDATA}};
// trackerPool_avgFlowY
assign int_trackerPool_avgFlowY_address0        = trackerPool_avgFlowY_address0;
assign int_trackerPool_avgFlowY_ce0             = trackerPool_avgFlowY_ce0;
assign int_trackerPool_avgFlowY_we0             = 1'b0;
assign int_trackerPool_avgFlowY_be0             = 1'b0;
assign int_trackerPool_avgFlowY_d0              = 1'b0;
assign trackerPool_avgFlowY_q0                  = int_trackerPool_avgFlowY_q0;
assign int_trackerPool_avgFlowY_address1        = ar_hs? raddr[6:3] : waddr[6:3];
assign int_trackerPool_avgFlowY_ce1             = ar_hs | (int_trackerPool_avgFlowY_write & WVALID);
assign int_trackerPool_avgFlowY_we1             = int_trackerPool_avgFlowY_write & WVALID;
assign int_trackerPool_avgFlowY_be1             = WSTRB << (waddr[2:2] * 4);
assign int_trackerPool_avgFlowY_d1              = {2{WDATA}};
// trackerPool_activity
assign int_trackerPool_activity_address0        = trackerPool_activity_address0;
assign int_trackerPool_activity_ce0             = trackerPool_activity_ce0;
assign int_trackerPool_activity_we0             = trackerPool_activity_we0;
assign int_trackerPool_activity_be0             = {8{trackerPool_activity_we0}};
assign int_trackerPool_activity_d0              = trackerPool_activity_d0;
assign int_trackerPool_activity_address1        = ar_hs? raddr[6:3] : waddr[6:3];
assign int_trackerPool_activity_ce1             = ar_hs | (int_trackerPool_activity_write & WVALID);
assign int_trackerPool_activity_we1             = int_trackerPool_activity_write & WVALID;
assign int_trackerPool_activity_be1             = WSTRB << (waddr[2:2] * 4);
assign int_trackerPool_activity_d1              = {2{WDATA}};
// trackerPool_lastTimeStamp
assign int_trackerPool_lastTimeStamp_address0   = trackerPool_lastTimeStamp_address0;
assign int_trackerPool_lastTimeStamp_ce0        = trackerPool_lastTimeStamp_ce0;
assign int_trackerPool_lastTimeStamp_we0        = trackerPool_lastTimeStamp_we0;
assign int_trackerPool_lastTimeStamp_be0        = {4{trackerPool_lastTimeStamp_we0}};
assign int_trackerPool_lastTimeStamp_d0         = trackerPool_lastTimeStamp_d0;
assign int_trackerPool_lastTimeStamp_address1   = ar_hs? raddr[5:2] : waddr[5:2];
assign int_trackerPool_lastTimeStamp_ce1        = ar_hs | (int_trackerPool_lastTimeStamp_write & WVALID);
assign int_trackerPool_lastTimeStamp_we1        = int_trackerPool_lastTimeStamp_write & WVALID;
assign int_trackerPool_lastTimeStamp_be1        = WSTRB;
assign int_trackerPool_lastTimeStamp_d1         = WDATA;
// int_trackerPool_state_read
always @(posedge ACLK) begin
    if (ARESET)
        int_trackerPool_state_read <= 1'b0;
    else if (ACLK_EN) begin
        if (ar_hs && raddr >= ADDR_TRACKERPOOL_STATE_BASE && raddr <= ADDR_TRACKERPOOL_STATE_HIGH)
            int_trackerPool_state_read <= 1'b1;
        else
            int_trackerPool_state_read <= 1'b0;
    end
end

// int_trackerPool_state_write
always @(posedge ACLK) begin
    if (ARESET)
        int_trackerPool_state_write <= 1'b0;
    else if (ACLK_EN) begin
        if (aw_hs && AWADDR[ADDR_BITS-1:0] >= ADDR_TRACKERPOOL_STATE_BASE && AWADDR[ADDR_BITS-1:0] <= ADDR_TRACKERPOOL_STATE_HIGH)
            int_trackerPool_state_write <= 1'b1;
        else if (WVALID)
            int_trackerPool_state_write <= 1'b0;
    end
end

// int_trackerPool_state_shift
always @(posedge ACLK) begin
    if (ACLK_EN) begin
        if (trackerPool_state_ce0)
            int_trackerPool_state_shift <= trackerPool_state_address0[1:0];
    end
end

// int_trackerPool_eventCount_read
always @(posedge ACLK) begin
    if (ARESET)
        int_trackerPool_eventCount_read <= 1'b0;
    else if (ACLK_EN) begin
        if (ar_hs && raddr >= ADDR_TRACKERPOOL_EVENTCOUNT_BASE && raddr <= ADDR_TRACKERPOOL_EVENTCOUNT_HIGH)
            int_trackerPool_eventCount_read <= 1'b1;
        else
            int_trackerPool_eventCount_read <= 1'b0;
    end
end

// int_trackerPool_eventCount_write
always @(posedge ACLK) begin
    if (ARESET)
        int_trackerPool_eventCount_write <= 1'b0;
    else if (ACLK_EN) begin
        if (aw_hs && AWADDR[ADDR_BITS-1:0] >= ADDR_TRACKERPOOL_EVENTCOUNT_BASE && AWADDR[ADDR_BITS-1:0] <= ADDR_TRACKERPOOL_EVENTCOUNT_HIGH)
            int_trackerPool_eventCount_write <= 1'b1;
        else if (WVALID)
            int_trackerPool_eventCount_write <= 1'b0;
    end
end

// int_trackerPool_resetTime_read
always @(posedge ACLK) begin
    if (ARESET)
        int_trackerPool_resetTime_read <= 1'b0;
    else if (ACLK_EN) begin
        if (ar_hs && raddr >= ADDR_TRACKERPOOL_RESETTIME_BASE && raddr <= ADDR_TRACKERPOOL_RESETTIME_HIGH)
            int_trackerPool_resetTime_read <= 1'b1;
        else
            int_trackerPool_resetTime_read <= 1'b0;
    end
end

// int_trackerPool_resetTime_write
always @(posedge ACLK) begin
    if (ARESET)
        int_trackerPool_resetTime_write <= 1'b0;
    else if (ACLK_EN) begin
        if (aw_hs && AWADDR[ADDR_BITS-1:0] >= ADDR_TRACKERPOOL_RESETTIME_BASE && AWADDR[ADDR_BITS-1:0] <= ADDR_TRACKERPOOL_RESETTIME_HIGH)
            int_trackerPool_resetTime_write <= 1'b1;
        else if (WVALID)
            int_trackerPool_resetTime_write <= 1'b0;
    end
end

// int_trackerPool_x_read
always @(posedge ACLK) begin
    if (ARESET)
        int_trackerPool_x_read <= 1'b0;
    else if (ACLK_EN) begin
        if (ar_hs && raddr >= ADDR_TRACKERPOOL_X_BASE && raddr <= ADDR_TRACKERPOOL_X_HIGH)
            int_trackerPool_x_read <= 1'b1;
        else
            int_trackerPool_x_read <= 1'b0;
    end
end

// int_trackerPool_x_write
always @(posedge ACLK) begin
    if (ARESET)
        int_trackerPool_x_write <= 1'b0;
    else if (ACLK_EN) begin
        if (aw_hs && AWADDR[ADDR_BITS-1:0] >= ADDR_TRACKERPOOL_X_BASE && AWADDR[ADDR_BITS-1:0] <= ADDR_TRACKERPOOL_X_HIGH)
            int_trackerPool_x_write <= 1'b1;
        else if (WVALID)
            int_trackerPool_x_write <= 1'b0;
    end
end

// int_trackerPool_x_shift
always @(posedge ACLK) begin
    if (ACLK_EN) begin
        if (ar_hs)
            int_trackerPool_x_shift <= raddr[2:2];
    end
end

// int_trackerPool_y_read
always @(posedge ACLK) begin
    if (ARESET)
        int_trackerPool_y_read <= 1'b0;
    else if (ACLK_EN) begin
        if (ar_hs && raddr >= ADDR_TRACKERPOOL_Y_BASE && raddr <= ADDR_TRACKERPOOL_Y_HIGH)
            int_trackerPool_y_read <= 1'b1;
        else
            int_trackerPool_y_read <= 1'b0;
    end
end

// int_trackerPool_y_write
always @(posedge ACLK) begin
    if (ARESET)
        int_trackerPool_y_write <= 1'b0;
    else if (ACLK_EN) begin
        if (aw_hs && AWADDR[ADDR_BITS-1:0] >= ADDR_TRACKERPOOL_Y_BASE && AWADDR[ADDR_BITS-1:0] <= ADDR_TRACKERPOOL_Y_HIGH)
            int_trackerPool_y_write <= 1'b1;
        else if (WVALID)
            int_trackerPool_y_write <= 1'b0;
    end
end

// int_trackerPool_y_shift
always @(posedge ACLK) begin
    if (ACLK_EN) begin
        if (ar_hs)
            int_trackerPool_y_shift <= raddr[2:2];
    end
end

// int_trackerPool_prevX_read
always @(posedge ACLK) begin
    if (ARESET)
        int_trackerPool_prevX_read <= 1'b0;
    else if (ACLK_EN) begin
        if (ar_hs && raddr >= ADDR_TRACKERPOOL_PREVX_BASE && raddr <= ADDR_TRACKERPOOL_PREVX_HIGH)
            int_trackerPool_prevX_read <= 1'b1;
        else
            int_trackerPool_prevX_read <= 1'b0;
    end
end

// int_trackerPool_prevX_write
always @(posedge ACLK) begin
    if (ARESET)
        int_trackerPool_prevX_write <= 1'b0;
    else if (ACLK_EN) begin
        if (aw_hs && AWADDR[ADDR_BITS-1:0] >= ADDR_TRACKERPOOL_PREVX_BASE && AWADDR[ADDR_BITS-1:0] <= ADDR_TRACKERPOOL_PREVX_HIGH)
            int_trackerPool_prevX_write <= 1'b1;
        else if (WVALID)
            int_trackerPool_prevX_write <= 1'b0;
    end
end

// int_trackerPool_prevX_shift
always @(posedge ACLK) begin
    if (ACLK_EN) begin
        if (ar_hs)
            int_trackerPool_prevX_shift <= raddr[2:2];
    end
end

// int_trackerPool_prevY_read
always @(posedge ACLK) begin
    if (ARESET)
        int_trackerPool_prevY_read <= 1'b0;
    else if (ACLK_EN) begin
        if (ar_hs && raddr >= ADDR_TRACKERPOOL_PREVY_BASE && raddr <= ADDR_TRACKERPOOL_PREVY_HIGH)
            int_trackerPool_prevY_read <= 1'b1;
        else
            int_trackerPool_prevY_read <= 1'b0;
    end
end

// int_trackerPool_prevY_write
always @(posedge ACLK) begin
    if (ARESET)
        int_trackerPool_prevY_write <= 1'b0;
    else if (ACLK_EN) begin
        if (aw_hs && AWADDR[ADDR_BITS-1:0] >= ADDR_TRACKERPOOL_PREVY_BASE && AWADDR[ADDR_BITS-1:0] <= ADDR_TRACKERPOOL_PREVY_HIGH)
            int_trackerPool_prevY_write <= 1'b1;
        else if (WVALID)
            int_trackerPool_prevY_write <= 1'b0;
    end
end

// int_trackerPool_prevY_shift
always @(posedge ACLK) begin
    if (ACLK_EN) begin
        if (ar_hs)
            int_trackerPool_prevY_shift <= raddr[2:2];
    end
end

// int_trackerPool_predX_read
always @(posedge ACLK) begin
    if (ARESET)
        int_trackerPool_predX_read <= 1'b0;
    else if (ACLK_EN) begin
        if (ar_hs && raddr >= ADDR_TRACKERPOOL_PREDX_BASE && raddr <= ADDR_TRACKERPOOL_PREDX_HIGH)
            int_trackerPool_predX_read <= 1'b1;
        else
            int_trackerPool_predX_read <= 1'b0;
    end
end

// int_trackerPool_predX_write
always @(posedge ACLK) begin
    if (ARESET)
        int_trackerPool_predX_write <= 1'b0;
    else if (ACLK_EN) begin
        if (aw_hs && AWADDR[ADDR_BITS-1:0] >= ADDR_TRACKERPOOL_PREDX_BASE && AWADDR[ADDR_BITS-1:0] <= ADDR_TRACKERPOOL_PREDX_HIGH)
            int_trackerPool_predX_write <= 1'b1;
        else if (WVALID)
            int_trackerPool_predX_write <= 1'b0;
    end
end

// int_trackerPool_predX_shift
always @(posedge ACLK) begin
    if (ACLK_EN) begin
        if (ar_hs)
            int_trackerPool_predX_shift <= raddr[2:2];
    end
end

// int_trackerPool_predY_read
always @(posedge ACLK) begin
    if (ARESET)
        int_trackerPool_predY_read <= 1'b0;
    else if (ACLK_EN) begin
        if (ar_hs && raddr >= ADDR_TRACKERPOOL_PREDY_BASE && raddr <= ADDR_TRACKERPOOL_PREDY_HIGH)
            int_trackerPool_predY_read <= 1'b1;
        else
            int_trackerPool_predY_read <= 1'b0;
    end
end

// int_trackerPool_predY_write
always @(posedge ACLK) begin
    if (ARESET)
        int_trackerPool_predY_write <= 1'b0;
    else if (ACLK_EN) begin
        if (aw_hs && AWADDR[ADDR_BITS-1:0] >= ADDR_TRACKERPOOL_PREDY_BASE && AWADDR[ADDR_BITS-1:0] <= ADDR_TRACKERPOOL_PREDY_HIGH)
            int_trackerPool_predY_write <= 1'b1;
        else if (WVALID)
            int_trackerPool_predY_write <= 1'b0;
    end
end

// int_trackerPool_predY_shift
always @(posedge ACLK) begin
    if (ACLK_EN) begin
        if (ar_hs)
            int_trackerPool_predY_shift <= raddr[2:2];
    end
end

// int_trackerPool_shapeFactor_read
always @(posedge ACLK) begin
    if (ARESET)
        int_trackerPool_shapeFactor_read <= 1'b0;
    else if (ACLK_EN) begin
        if (ar_hs && raddr >= ADDR_TRACKERPOOL_SHAPEFACTOR_BASE && raddr <= ADDR_TRACKERPOOL_SHAPEFACTOR_HIGH)
            int_trackerPool_shapeFactor_read <= 1'b1;
        else
            int_trackerPool_shapeFactor_read <= 1'b0;
    end
end

// int_trackerPool_shapeFactor_write
always @(posedge ACLK) begin
    if (ARESET)
        int_trackerPool_shapeFactor_write <= 1'b0;
    else if (ACLK_EN) begin
        if (aw_hs && AWADDR[ADDR_BITS-1:0] >= ADDR_TRACKERPOOL_SHAPEFACTOR_BASE && AWADDR[ADDR_BITS-1:0] <= ADDR_TRACKERPOOL_SHAPEFACTOR_HIGH)
            int_trackerPool_shapeFactor_write <= 1'b1;
        else if (WVALID)
            int_trackerPool_shapeFactor_write <= 1'b0;
    end
end

// int_trackerPool_shapeFactor_shift
always @(posedge ACLK) begin
    if (ACLK_EN) begin
        if (ar_hs)
            int_trackerPool_shapeFactor_shift <= raddr[2:2];
    end
end

// int_trackerPool_origShapeFactor_read
always @(posedge ACLK) begin
    if (ARESET)
        int_trackerPool_origShapeFactor_read <= 1'b0;
    else if (ACLK_EN) begin
        if (ar_hs && raddr >= ADDR_TRACKERPOOL_ORIGSHAPEFACTOR_BASE && raddr <= ADDR_TRACKERPOOL_ORIGSHAPEFACTOR_HIGH)
            int_trackerPool_origShapeFactor_read <= 1'b1;
        else
            int_trackerPool_origShapeFactor_read <= 1'b0;
    end
end

// int_trackerPool_origShapeFactor_write
always @(posedge ACLK) begin
    if (ARESET)
        int_trackerPool_origShapeFactor_write <= 1'b0;
    else if (ACLK_EN) begin
        if (aw_hs && AWADDR[ADDR_BITS-1:0] >= ADDR_TRACKERPOOL_ORIGSHAPEFACTOR_BASE && AWADDR[ADDR_BITS-1:0] <= ADDR_TRACKERPOOL_ORIGSHAPEFACTOR_HIGH)
            int_trackerPool_origShapeFactor_write <= 1'b1;
        else if (WVALID)
            int_trackerPool_origShapeFactor_write <= 1'b0;
    end
end

// int_trackerPool_origShapeFactor_shift
always @(posedge ACLK) begin
    if (ACLK_EN) begin
        if (ar_hs)
            int_trackerPool_origShapeFactor_shift <= raddr[2:2];
    end
end

// int_trackerPool_posFactor_read
always @(posedge ACLK) begin
    if (ARESET)
        int_trackerPool_posFactor_read <= 1'b0;
    else if (ACLK_EN) begin
        if (ar_hs && raddr >= ADDR_TRACKERPOOL_POSFACTOR_BASE && raddr <= ADDR_TRACKERPOOL_POSFACTOR_HIGH)
            int_trackerPool_posFactor_read <= 1'b1;
        else
            int_trackerPool_posFactor_read <= 1'b0;
    end
end

// int_trackerPool_posFactor_write
always @(posedge ACLK) begin
    if (ARESET)
        int_trackerPool_posFactor_write <= 1'b0;
    else if (ACLK_EN) begin
        if (aw_hs && AWADDR[ADDR_BITS-1:0] >= ADDR_TRACKERPOOL_POSFACTOR_BASE && AWADDR[ADDR_BITS-1:0] <= ADDR_TRACKERPOOL_POSFACTOR_HIGH)
            int_trackerPool_posFactor_write <= 1'b1;
        else if (WVALID)
            int_trackerPool_posFactor_write <= 1'b0;
    end
end

// int_trackerPool_posFactor_shift
always @(posedge ACLK) begin
    if (ACLK_EN) begin
        if (ar_hs)
            int_trackerPool_posFactor_shift <= raddr[2:2];
    end
end

// int_trackerPool_velFactor_read
always @(posedge ACLK) begin
    if (ARESET)
        int_trackerPool_velFactor_read <= 1'b0;
    else if (ACLK_EN) begin
        if (ar_hs && raddr >= ADDR_TRACKERPOOL_VELFACTOR_BASE && raddr <= ADDR_TRACKERPOOL_VELFACTOR_HIGH)
            int_trackerPool_velFactor_read <= 1'b1;
        else
            int_trackerPool_velFactor_read <= 1'b0;
    end
end

// int_trackerPool_velFactor_write
always @(posedge ACLK) begin
    if (ARESET)
        int_trackerPool_velFactor_write <= 1'b0;
    else if (ACLK_EN) begin
        if (aw_hs && AWADDR[ADDR_BITS-1:0] >= ADDR_TRACKERPOOL_VELFACTOR_BASE && AWADDR[ADDR_BITS-1:0] <= ADDR_TRACKERPOOL_VELFACTOR_HIGH)
            int_trackerPool_velFactor_write <= 1'b1;
        else if (WVALID)
            int_trackerPool_velFactor_write <= 1'b0;
    end
end

// int_trackerPool_velFactor_shift
always @(posedge ACLK) begin
    if (ACLK_EN) begin
        if (ar_hs)
            int_trackerPool_velFactor_shift <= raddr[2:2];
    end
end

// int_trackerPool_clusterSize_read
always @(posedge ACLK) begin
    if (ARESET)
        int_trackerPool_clusterSize_read <= 1'b0;
    else if (ACLK_EN) begin
        if (ar_hs && raddr >= ADDR_TRACKERPOOL_CLUSTERSIZE_BASE && raddr <= ADDR_TRACKERPOOL_CLUSTERSIZE_HIGH)
            int_trackerPool_clusterSize_read <= 1'b1;
        else
            int_trackerPool_clusterSize_read <= 1'b0;
    end
end

// int_trackerPool_clusterSize_write
always @(posedge ACLK) begin
    if (ARESET)
        int_trackerPool_clusterSize_write <= 1'b0;
    else if (ACLK_EN) begin
        if (aw_hs && AWADDR[ADDR_BITS-1:0] >= ADDR_TRACKERPOOL_CLUSTERSIZE_BASE && AWADDR[ADDR_BITS-1:0] <= ADDR_TRACKERPOOL_CLUSTERSIZE_HIGH)
            int_trackerPool_clusterSize_write <= 1'b1;
        else if (WVALID)
            int_trackerPool_clusterSize_write <= 1'b0;
    end
end

// int_trackerPool_clusterSize_shift
always @(posedge ACLK) begin
    if (ACLK_EN) begin
        if (ar_hs)
            int_trackerPool_clusterSize_shift <= raddr[2:2];
    end
end

// int_trackerPool_smoothingFactor_read
always @(posedge ACLK) begin
    if (ARESET)
        int_trackerPool_smoothingFactor_read <= 1'b0;
    else if (ACLK_EN) begin
        if (ar_hs && raddr >= ADDR_TRACKERPOOL_SMOOTHINGFACTOR_BASE && raddr <= ADDR_TRACKERPOOL_SMOOTHINGFACTOR_HIGH)
            int_trackerPool_smoothingFactor_read <= 1'b1;
        else
            int_trackerPool_smoothingFactor_read <= 1'b0;
    end
end

// int_trackerPool_smoothingFactor_write
always @(posedge ACLK) begin
    if (ARESET)
        int_trackerPool_smoothingFactor_write <= 1'b0;
    else if (ACLK_EN) begin
        if (aw_hs && AWADDR[ADDR_BITS-1:0] >= ADDR_TRACKERPOOL_SMOOTHINGFACTOR_BASE && AWADDR[ADDR_BITS-1:0] <= ADDR_TRACKERPOOL_SMOOTHINGFACTOR_HIGH)
            int_trackerPool_smoothingFactor_write <= 1'b1;
        else if (WVALID)
            int_trackerPool_smoothingFactor_write <= 1'b0;
    end
end

// int_trackerPool_smoothingFactor_shift
always @(posedge ACLK) begin
    if (ACLK_EN) begin
        if (ar_hs)
            int_trackerPool_smoothingFactor_shift <= raddr[2:2];
    end
end

// int_trackerPool_sp1x_read
always @(posedge ACLK) begin
    if (ARESET)
        int_trackerPool_sp1x_read <= 1'b0;
    else if (ACLK_EN) begin
        if (ar_hs && raddr >= ADDR_TRACKERPOOL_SP1X_BASE && raddr <= ADDR_TRACKERPOOL_SP1X_HIGH)
            int_trackerPool_sp1x_read <= 1'b1;
        else
            int_trackerPool_sp1x_read <= 1'b0;
    end
end

// int_trackerPool_sp1x_write
always @(posedge ACLK) begin
    if (ARESET)
        int_trackerPool_sp1x_write <= 1'b0;
    else if (ACLK_EN) begin
        if (aw_hs && AWADDR[ADDR_BITS-1:0] >= ADDR_TRACKERPOOL_SP1X_BASE && AWADDR[ADDR_BITS-1:0] <= ADDR_TRACKERPOOL_SP1X_HIGH)
            int_trackerPool_sp1x_write <= 1'b1;
        else if (WVALID)
            int_trackerPool_sp1x_write <= 1'b0;
    end
end

// int_trackerPool_sp1x_shift
always @(posedge ACLK) begin
    if (ACLK_EN) begin
        if (ar_hs)
            int_trackerPool_sp1x_shift <= raddr[2:2];
    end
end

// int_trackerPool_sp2x_read
always @(posedge ACLK) begin
    if (ARESET)
        int_trackerPool_sp2x_read <= 1'b0;
    else if (ACLK_EN) begin
        if (ar_hs && raddr >= ADDR_TRACKERPOOL_SP2X_BASE && raddr <= ADDR_TRACKERPOOL_SP2X_HIGH)
            int_trackerPool_sp2x_read <= 1'b1;
        else
            int_trackerPool_sp2x_read <= 1'b0;
    end
end

// int_trackerPool_sp2x_write
always @(posedge ACLK) begin
    if (ARESET)
        int_trackerPool_sp2x_write <= 1'b0;
    else if (ACLK_EN) begin
        if (aw_hs && AWADDR[ADDR_BITS-1:0] >= ADDR_TRACKERPOOL_SP2X_BASE && AWADDR[ADDR_BITS-1:0] <= ADDR_TRACKERPOOL_SP2X_HIGH)
            int_trackerPool_sp2x_write <= 1'b1;
        else if (WVALID)
            int_trackerPool_sp2x_write <= 1'b0;
    end
end

// int_trackerPool_sp2x_shift
always @(posedge ACLK) begin
    if (ACLK_EN) begin
        if (ar_hs)
            int_trackerPool_sp2x_shift <= raddr[2:2];
    end
end

// int_trackerPool_sp1y_read
always @(posedge ACLK) begin
    if (ARESET)
        int_trackerPool_sp1y_read <= 1'b0;
    else if (ACLK_EN) begin
        if (ar_hs && raddr >= ADDR_TRACKERPOOL_SP1Y_BASE && raddr <= ADDR_TRACKERPOOL_SP1Y_HIGH)
            int_trackerPool_sp1y_read <= 1'b1;
        else
            int_trackerPool_sp1y_read <= 1'b0;
    end
end

// int_trackerPool_sp1y_write
always @(posedge ACLK) begin
    if (ARESET)
        int_trackerPool_sp1y_write <= 1'b0;
    else if (ACLK_EN) begin
        if (aw_hs && AWADDR[ADDR_BITS-1:0] >= ADDR_TRACKERPOOL_SP1Y_BASE && AWADDR[ADDR_BITS-1:0] <= ADDR_TRACKERPOOL_SP1Y_HIGH)
            int_trackerPool_sp1y_write <= 1'b1;
        else if (WVALID)
            int_trackerPool_sp1y_write <= 1'b0;
    end
end

// int_trackerPool_sp1y_shift
always @(posedge ACLK) begin
    if (ACLK_EN) begin
        if (ar_hs)
            int_trackerPool_sp1y_shift <= raddr[2:2];
    end
end

// int_trackerPool_sp2y_read
always @(posedge ACLK) begin
    if (ARESET)
        int_trackerPool_sp2y_read <= 1'b0;
    else if (ACLK_EN) begin
        if (ar_hs && raddr >= ADDR_TRACKERPOOL_SP2Y_BASE && raddr <= ADDR_TRACKERPOOL_SP2Y_HIGH)
            int_trackerPool_sp2y_read <= 1'b1;
        else
            int_trackerPool_sp2y_read <= 1'b0;
    end
end

// int_trackerPool_sp2y_write
always @(posedge ACLK) begin
    if (ARESET)
        int_trackerPool_sp2y_write <= 1'b0;
    else if (ACLK_EN) begin
        if (aw_hs && AWADDR[ADDR_BITS-1:0] >= ADDR_TRACKERPOOL_SP2Y_BASE && AWADDR[ADDR_BITS-1:0] <= ADDR_TRACKERPOOL_SP2Y_HIGH)
            int_trackerPool_sp2y_write <= 1'b1;
        else if (WVALID)
            int_trackerPool_sp2y_write <= 1'b0;
    end
end

// int_trackerPool_sp2y_shift
always @(posedge ACLK) begin
    if (ACLK_EN) begin
        if (ar_hs)
            int_trackerPool_sp2y_shift <= raddr[2:2];
    end
end

// int_trackerPool_sigmaX_read
always @(posedge ACLK) begin
    if (ARESET)
        int_trackerPool_sigmaX_read <= 1'b0;
    else if (ACLK_EN) begin
        if (ar_hs && raddr >= ADDR_TRACKERPOOL_SIGMAX_BASE && raddr <= ADDR_TRACKERPOOL_SIGMAX_HIGH)
            int_trackerPool_sigmaX_read <= 1'b1;
        else
            int_trackerPool_sigmaX_read <= 1'b0;
    end
end

// int_trackerPool_sigmaX_write
always @(posedge ACLK) begin
    if (ARESET)
        int_trackerPool_sigmaX_write <= 1'b0;
    else if (ACLK_EN) begin
        if (aw_hs && AWADDR[ADDR_BITS-1:0] >= ADDR_TRACKERPOOL_SIGMAX_BASE && AWADDR[ADDR_BITS-1:0] <= ADDR_TRACKERPOOL_SIGMAX_HIGH)
            int_trackerPool_sigmaX_write <= 1'b1;
        else if (WVALID)
            int_trackerPool_sigmaX_write <= 1'b0;
    end
end

// int_trackerPool_sigmaX_shift
always @(posedge ACLK) begin
    if (ACLK_EN) begin
        if (ar_hs)
            int_trackerPool_sigmaX_shift <= raddr[2:2];
    end
end

// int_trackerPool_sigmaY_read
always @(posedge ACLK) begin
    if (ARESET)
        int_trackerPool_sigmaY_read <= 1'b0;
    else if (ACLK_EN) begin
        if (ar_hs && raddr >= ADDR_TRACKERPOOL_SIGMAY_BASE && raddr <= ADDR_TRACKERPOOL_SIGMAY_HIGH)
            int_trackerPool_sigmaY_read <= 1'b1;
        else
            int_trackerPool_sigmaY_read <= 1'b0;
    end
end

// int_trackerPool_sigmaY_write
always @(posedge ACLK) begin
    if (ARESET)
        int_trackerPool_sigmaY_write <= 1'b0;
    else if (ACLK_EN) begin
        if (aw_hs && AWADDR[ADDR_BITS-1:0] >= ADDR_TRACKERPOOL_SIGMAY_BASE && AWADDR[ADDR_BITS-1:0] <= ADDR_TRACKERPOOL_SIGMAY_HIGH)
            int_trackerPool_sigmaY_write <= 1'b1;
        else if (WVALID)
            int_trackerPool_sigmaY_write <= 1'b0;
    end
end

// int_trackerPool_sigmaY_shift
always @(posedge ACLK) begin
    if (ACLK_EN) begin
        if (ar_hs)
            int_trackerPool_sigmaY_shift <= raddr[2:2];
    end
end

// int_trackerPool_sigmaXY_read
always @(posedge ACLK) begin
    if (ARESET)
        int_trackerPool_sigmaXY_read <= 1'b0;
    else if (ACLK_EN) begin
        if (ar_hs && raddr >= ADDR_TRACKERPOOL_SIGMAXY_BASE && raddr <= ADDR_TRACKERPOOL_SIGMAXY_HIGH)
            int_trackerPool_sigmaXY_read <= 1'b1;
        else
            int_trackerPool_sigmaXY_read <= 1'b0;
    end
end

// int_trackerPool_sigmaXY_write
always @(posedge ACLK) begin
    if (ARESET)
        int_trackerPool_sigmaXY_write <= 1'b0;
    else if (ACLK_EN) begin
        if (aw_hs && AWADDR[ADDR_BITS-1:0] >= ADDR_TRACKERPOOL_SIGMAXY_BASE && AWADDR[ADDR_BITS-1:0] <= ADDR_TRACKERPOOL_SIGMAXY_HIGH)
            int_trackerPool_sigmaXY_write <= 1'b1;
        else if (WVALID)
            int_trackerPool_sigmaXY_write <= 1'b0;
    end
end

// int_trackerPool_sigmaXY_shift
always @(posedge ACLK) begin
    if (ACLK_EN) begin
        if (ar_hs)
            int_trackerPool_sigmaXY_shift <= raddr[2:2];
    end
end

// int_trackerPool_a_read
always @(posedge ACLK) begin
    if (ARESET)
        int_trackerPool_a_read <= 1'b0;
    else if (ACLK_EN) begin
        if (ar_hs && raddr >= ADDR_TRACKERPOOL_A_BASE && raddr <= ADDR_TRACKERPOOL_A_HIGH)
            int_trackerPool_a_read <= 1'b1;
        else
            int_trackerPool_a_read <= 1'b0;
    end
end

// int_trackerPool_a_write
always @(posedge ACLK) begin
    if (ARESET)
        int_trackerPool_a_write <= 1'b0;
    else if (ACLK_EN) begin
        if (aw_hs && AWADDR[ADDR_BITS-1:0] >= ADDR_TRACKERPOOL_A_BASE && AWADDR[ADDR_BITS-1:0] <= ADDR_TRACKERPOOL_A_HIGH)
            int_trackerPool_a_write <= 1'b1;
        else if (WVALID)
            int_trackerPool_a_write <= 1'b0;
    end
end

// int_trackerPool_a_shift
always @(posedge ACLK) begin
    if (ACLK_EN) begin
        if (ar_hs)
            int_trackerPool_a_shift <= raddr[2:2];
    end
end

// int_trackerPool_b_read
always @(posedge ACLK) begin
    if (ARESET)
        int_trackerPool_b_read <= 1'b0;
    else if (ACLK_EN) begin
        if (ar_hs && raddr >= ADDR_TRACKERPOOL_B_BASE && raddr <= ADDR_TRACKERPOOL_B_HIGH)
            int_trackerPool_b_read <= 1'b1;
        else
            int_trackerPool_b_read <= 1'b0;
    end
end

// int_trackerPool_b_write
always @(posedge ACLK) begin
    if (ARESET)
        int_trackerPool_b_write <= 1'b0;
    else if (ACLK_EN) begin
        if (aw_hs && AWADDR[ADDR_BITS-1:0] >= ADDR_TRACKERPOOL_B_BASE && AWADDR[ADDR_BITS-1:0] <= ADDR_TRACKERPOOL_B_HIGH)
            int_trackerPool_b_write <= 1'b1;
        else if (WVALID)
            int_trackerPool_b_write <= 1'b0;
    end
end

// int_trackerPool_b_shift
always @(posedge ACLK) begin
    if (ACLK_EN) begin
        if (ar_hs)
            int_trackerPool_b_shift <= raddr[2:2];
    end
end

// int_trackerPool_alpha_read
always @(posedge ACLK) begin
    if (ARESET)
        int_trackerPool_alpha_read <= 1'b0;
    else if (ACLK_EN) begin
        if (ar_hs && raddr >= ADDR_TRACKERPOOL_ALPHA_BASE && raddr <= ADDR_TRACKERPOOL_ALPHA_HIGH)
            int_trackerPool_alpha_read <= 1'b1;
        else
            int_trackerPool_alpha_read <= 1'b0;
    end
end

// int_trackerPool_alpha_write
always @(posedge ACLK) begin
    if (ARESET)
        int_trackerPool_alpha_write <= 1'b0;
    else if (ACLK_EN) begin
        if (aw_hs && AWADDR[ADDR_BITS-1:0] >= ADDR_TRACKERPOOL_ALPHA_BASE && AWADDR[ADDR_BITS-1:0] <= ADDR_TRACKERPOOL_ALPHA_HIGH)
            int_trackerPool_alpha_write <= 1'b1;
        else if (WVALID)
            int_trackerPool_alpha_write <= 1'b0;
    end
end

// int_trackerPool_alpha_shift
always @(posedge ACLK) begin
    if (ACLK_EN) begin
        if (ar_hs)
            int_trackerPool_alpha_shift <= raddr[2:2];
    end
end

// int_trackerPool_sumFlowX_read
always @(posedge ACLK) begin
    if (ARESET)
        int_trackerPool_sumFlowX_read <= 1'b0;
    else if (ACLK_EN) begin
        if (ar_hs && raddr >= ADDR_TRACKERPOOL_SUMFLOWX_BASE && raddr <= ADDR_TRACKERPOOL_SUMFLOWX_HIGH)
            int_trackerPool_sumFlowX_read <= 1'b1;
        else
            int_trackerPool_sumFlowX_read <= 1'b0;
    end
end

// int_trackerPool_sumFlowX_write
always @(posedge ACLK) begin
    if (ARESET)
        int_trackerPool_sumFlowX_write <= 1'b0;
    else if (ACLK_EN) begin
        if (aw_hs && AWADDR[ADDR_BITS-1:0] >= ADDR_TRACKERPOOL_SUMFLOWX_BASE && AWADDR[ADDR_BITS-1:0] <= ADDR_TRACKERPOOL_SUMFLOWX_HIGH)
            int_trackerPool_sumFlowX_write <= 1'b1;
        else if (WVALID)
            int_trackerPool_sumFlowX_write <= 1'b0;
    end
end

// int_trackerPool_sumFlowX_shift
always @(posedge ACLK) begin
    if (ACLK_EN) begin
        if (ar_hs)
            int_trackerPool_sumFlowX_shift <= raddr[2:2];
    end
end

// int_trackerPool_sumFlowY_read
always @(posedge ACLK) begin
    if (ARESET)
        int_trackerPool_sumFlowY_read <= 1'b0;
    else if (ACLK_EN) begin
        if (ar_hs && raddr >= ADDR_TRACKERPOOL_SUMFLOWY_BASE && raddr <= ADDR_TRACKERPOOL_SUMFLOWY_HIGH)
            int_trackerPool_sumFlowY_read <= 1'b1;
        else
            int_trackerPool_sumFlowY_read <= 1'b0;
    end
end

// int_trackerPool_sumFlowY_write
always @(posedge ACLK) begin
    if (ARESET)
        int_trackerPool_sumFlowY_write <= 1'b0;
    else if (ACLK_EN) begin
        if (aw_hs && AWADDR[ADDR_BITS-1:0] >= ADDR_TRACKERPOOL_SUMFLOWY_BASE && AWADDR[ADDR_BITS-1:0] <= ADDR_TRACKERPOOL_SUMFLOWY_HIGH)
            int_trackerPool_sumFlowY_write <= 1'b1;
        else if (WVALID)
            int_trackerPool_sumFlowY_write <= 1'b0;
    end
end

// int_trackerPool_sumFlowY_shift
always @(posedge ACLK) begin
    if (ACLK_EN) begin
        if (ar_hs)
            int_trackerPool_sumFlowY_shift <= raddr[2:2];
    end
end

// int_trackerPool_avgFlowX_read
always @(posedge ACLK) begin
    if (ARESET)
        int_trackerPool_avgFlowX_read <= 1'b0;
    else if (ACLK_EN) begin
        if (ar_hs && raddr >= ADDR_TRACKERPOOL_AVGFLOWX_BASE && raddr <= ADDR_TRACKERPOOL_AVGFLOWX_HIGH)
            int_trackerPool_avgFlowX_read <= 1'b1;
        else
            int_trackerPool_avgFlowX_read <= 1'b0;
    end
end

// int_trackerPool_avgFlowX_write
always @(posedge ACLK) begin
    if (ARESET)
        int_trackerPool_avgFlowX_write <= 1'b0;
    else if (ACLK_EN) begin
        if (aw_hs && AWADDR[ADDR_BITS-1:0] >= ADDR_TRACKERPOOL_AVGFLOWX_BASE && AWADDR[ADDR_BITS-1:0] <= ADDR_TRACKERPOOL_AVGFLOWX_HIGH)
            int_trackerPool_avgFlowX_write <= 1'b1;
        else if (WVALID)
            int_trackerPool_avgFlowX_write <= 1'b0;
    end
end

// int_trackerPool_avgFlowX_shift
always @(posedge ACLK) begin
    if (ACLK_EN) begin
        if (ar_hs)
            int_trackerPool_avgFlowX_shift <= raddr[2:2];
    end
end

// int_trackerPool_avgFlowY_read
always @(posedge ACLK) begin
    if (ARESET)
        int_trackerPool_avgFlowY_read <= 1'b0;
    else if (ACLK_EN) begin
        if (ar_hs && raddr >= ADDR_TRACKERPOOL_AVGFLOWY_BASE && raddr <= ADDR_TRACKERPOOL_AVGFLOWY_HIGH)
            int_trackerPool_avgFlowY_read <= 1'b1;
        else
            int_trackerPool_avgFlowY_read <= 1'b0;
    end
end

// int_trackerPool_avgFlowY_write
always @(posedge ACLK) begin
    if (ARESET)
        int_trackerPool_avgFlowY_write <= 1'b0;
    else if (ACLK_EN) begin
        if (aw_hs && AWADDR[ADDR_BITS-1:0] >= ADDR_TRACKERPOOL_AVGFLOWY_BASE && AWADDR[ADDR_BITS-1:0] <= ADDR_TRACKERPOOL_AVGFLOWY_HIGH)
            int_trackerPool_avgFlowY_write <= 1'b1;
        else if (WVALID)
            int_trackerPool_avgFlowY_write <= 1'b0;
    end
end

// int_trackerPool_avgFlowY_shift
always @(posedge ACLK) begin
    if (ACLK_EN) begin
        if (ar_hs)
            int_trackerPool_avgFlowY_shift <= raddr[2:2];
    end
end

// int_trackerPool_activity_read
always @(posedge ACLK) begin
    if (ARESET)
        int_trackerPool_activity_read <= 1'b0;
    else if (ACLK_EN) begin
        if (ar_hs && raddr >= ADDR_TRACKERPOOL_ACTIVITY_BASE && raddr <= ADDR_TRACKERPOOL_ACTIVITY_HIGH)
            int_trackerPool_activity_read <= 1'b1;
        else
            int_trackerPool_activity_read <= 1'b0;
    end
end

// int_trackerPool_activity_write
always @(posedge ACLK) begin
    if (ARESET)
        int_trackerPool_activity_write <= 1'b0;
    else if (ACLK_EN) begin
        if (aw_hs && AWADDR[ADDR_BITS-1:0] >= ADDR_TRACKERPOOL_ACTIVITY_BASE && AWADDR[ADDR_BITS-1:0] <= ADDR_TRACKERPOOL_ACTIVITY_HIGH)
            int_trackerPool_activity_write <= 1'b1;
        else if (WVALID)
            int_trackerPool_activity_write <= 1'b0;
    end
end

// int_trackerPool_activity_shift
always @(posedge ACLK) begin
    if (ACLK_EN) begin
        if (ar_hs)
            int_trackerPool_activity_shift <= raddr[2:2];
    end
end

// int_trackerPool_lastTimeStamp_read
always @(posedge ACLK) begin
    if (ARESET)
        int_trackerPool_lastTimeStamp_read <= 1'b0;
    else if (ACLK_EN) begin
        if (ar_hs && raddr >= ADDR_TRACKERPOOL_LASTTIMESTAMP_BASE && raddr <= ADDR_TRACKERPOOL_LASTTIMESTAMP_HIGH)
            int_trackerPool_lastTimeStamp_read <= 1'b1;
        else
            int_trackerPool_lastTimeStamp_read <= 1'b0;
    end
end

// int_trackerPool_lastTimeStamp_write
always @(posedge ACLK) begin
    if (ARESET)
        int_trackerPool_lastTimeStamp_write <= 1'b0;
    else if (ACLK_EN) begin
        if (aw_hs && AWADDR[ADDR_BITS-1:0] >= ADDR_TRACKERPOOL_LASTTIMESTAMP_BASE && AWADDR[ADDR_BITS-1:0] <= ADDR_TRACKERPOOL_LASTTIMESTAMP_HIGH)
            int_trackerPool_lastTimeStamp_write <= 1'b1;
        else if (WVALID)
            int_trackerPool_lastTimeStamp_write <= 1'b0;
    end
end


endmodule


`timescale 1ns/1ps

module getTrackerID_hw_AXILiteS_s_axi_ram
#(parameter
    BYTES  = 4,
    DEPTH  = 256,
    AWIDTH = log2(DEPTH)
) (
    input  wire               clk0,
    input  wire [AWIDTH-1:0]  address0,
    input  wire               ce0,
    input  wire               we0,
    input  wire [BYTES-1:0]   be0,
    input  wire [BYTES*8-1:0] d0,
    output reg  [BYTES*8-1:0] q0,
    input  wire               clk1,
    input  wire [AWIDTH-1:0]  address1,
    input  wire               ce1,
    input  wire               we1,
    input  wire [BYTES-1:0]   be1,
    input  wire [BYTES*8-1:0] d1,
    output reg  [BYTES*8-1:0] q1
);
//------------------------Local signal-------------------
reg  [BYTES*8-1:0] mem[0:DEPTH-1];
//------------------------Task and function--------------
function integer log2;
    input integer x;
    integer n, m;
begin
    n = 1;
    m = 2;
    while (m < x) begin
        n = n + 1;
        m = m * 2;
    end
    log2 = n;
end
endfunction
//------------------------Body---------------------------
// read port 0
always @(posedge clk0) begin
    if (ce0) q0 <= mem[address0];
end

// read port 1
always @(posedge clk1) begin
    if (ce1) q1 <= mem[address1];
end

genvar i;
generate
    for (i = 0; i < BYTES; i = i + 1) begin : gen_write
        // write port 0
        always @(posedge clk0) begin
            if (ce0 & we0 & be0[i]) begin
                mem[address0][8*i+7:8*i] <= d0[8*i+7:8*i];
            end
        end
        // write port 1
        always @(posedge clk1) begin
            if (ce1 & we1 & be1[i]) begin
                mem[address1][8*i+7:8*i] <= d1[8*i+7:8*i];
            end
        end
    end
endgenerate

endmodule

