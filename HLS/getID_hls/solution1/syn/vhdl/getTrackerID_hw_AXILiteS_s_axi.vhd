-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity getTrackerID_hw_AXILiteS_s_axi is
generic (
    C_S_AXI_ADDR_WIDTH    : INTEGER := 12;
    C_S_AXI_DATA_WIDTH    : INTEGER := 32);
port (
    ACLK                  :in   STD_LOGIC;
    ARESET                :in   STD_LOGIC;
    ACLK_EN               :in   STD_LOGIC;
    AWADDR                :in   STD_LOGIC_VECTOR(C_S_AXI_ADDR_WIDTH-1 downto 0);
    AWVALID               :in   STD_LOGIC;
    AWREADY               :out  STD_LOGIC;
    WDATA                 :in   STD_LOGIC_VECTOR(C_S_AXI_DATA_WIDTH-1 downto 0);
    WSTRB                 :in   STD_LOGIC_VECTOR(C_S_AXI_DATA_WIDTH/8-1 downto 0);
    WVALID                :in   STD_LOGIC;
    WREADY                :out  STD_LOGIC;
    BRESP                 :out  STD_LOGIC_VECTOR(1 downto 0);
    BVALID                :out  STD_LOGIC;
    BREADY                :in   STD_LOGIC;
    ARADDR                :in   STD_LOGIC_VECTOR(C_S_AXI_ADDR_WIDTH-1 downto 0);
    ARVALID               :in   STD_LOGIC;
    ARREADY               :out  STD_LOGIC;
    RDATA                 :out  STD_LOGIC_VECTOR(C_S_AXI_DATA_WIDTH-1 downto 0);
    RRESP                 :out  STD_LOGIC_VECTOR(1 downto 0);
    RVALID                :out  STD_LOGIC;
    RREADY                :in   STD_LOGIC;
    trackerPool_state_address0 :in   STD_LOGIC_VECTOR(3 downto 0);
    trackerPool_state_ce0 :in   STD_LOGIC;
    trackerPool_state_q0  :out  STD_LOGIC_VECTOR(1 downto 0);
    trackerPool_eventCount_address0 :in   STD_LOGIC_VECTOR(3 downto 0);
    trackerPool_eventCount_ce0 :in   STD_LOGIC;
    trackerPool_eventCount_we0 :in   STD_LOGIC;
    trackerPool_eventCount_d0 :in   STD_LOGIC_VECTOR(31 downto 0);
    trackerPool_resetTime_address0 :in   STD_LOGIC_VECTOR(3 downto 0);
    trackerPool_resetTime_ce0 :in   STD_LOGIC;
    trackerPool_resetTime_we0 :in   STD_LOGIC;
    trackerPool_resetTime_d0 :in   STD_LOGIC_VECTOR(31 downto 0);
    trackerPool_x_address0 :in   STD_LOGIC_VECTOR(3 downto 0);
    trackerPool_x_ce0     :in   STD_LOGIC;
    trackerPool_x_q0      :out  STD_LOGIC_VECTOR(63 downto 0);
    trackerPool_y_address0 :in   STD_LOGIC_VECTOR(3 downto 0);
    trackerPool_y_ce0     :in   STD_LOGIC;
    trackerPool_y_q0      :out  STD_LOGIC_VECTOR(63 downto 0);
    trackerPool_prevX_address0 :in   STD_LOGIC_VECTOR(3 downto 0);
    trackerPool_prevX_ce0 :in   STD_LOGIC;
    trackerPool_prevX_we0 :in   STD_LOGIC;
    trackerPool_prevX_d0  :in   STD_LOGIC_VECTOR(63 downto 0);
    trackerPool_prevY_address0 :in   STD_LOGIC_VECTOR(3 downto 0);
    trackerPool_prevY_ce0 :in   STD_LOGIC;
    trackerPool_prevY_we0 :in   STD_LOGIC;
    trackerPool_prevY_d0  :in   STD_LOGIC_VECTOR(63 downto 0);
    trackerPool_predX_address0 :in   STD_LOGIC_VECTOR(3 downto 0);
    trackerPool_predX_ce0 :in   STD_LOGIC;
    trackerPool_predX_we0 :in   STD_LOGIC;
    trackerPool_predX_d0  :in   STD_LOGIC_VECTOR(63 downto 0);
    trackerPool_predY_address0 :in   STD_LOGIC_VECTOR(3 downto 0);
    trackerPool_predY_ce0 :in   STD_LOGIC;
    trackerPool_predY_we0 :in   STD_LOGIC;
    trackerPool_predY_d0  :in   STD_LOGIC_VECTOR(63 downto 0);
    trackerPool_shapeFactor_address0 :in   STD_LOGIC_VECTOR(3 downto 0);
    trackerPool_shapeFactor_ce0 :in   STD_LOGIC;
    trackerPool_shapeFactor_we0 :in   STD_LOGIC;
    trackerPool_shapeFactor_d0 :in   STD_LOGIC_VECTOR(63 downto 0);
    trackerPool_origShapeFactor_address0 :in   STD_LOGIC_VECTOR(3 downto 0);
    trackerPool_origShapeFactor_ce0 :in   STD_LOGIC;
    trackerPool_origShapeFactor_we0 :in   STD_LOGIC;
    trackerPool_origShapeFactor_d0 :in   STD_LOGIC_VECTOR(63 downto 0);
    trackerPool_posFactor_address0 :in   STD_LOGIC_VECTOR(3 downto 0);
    trackerPool_posFactor_ce0 :in   STD_LOGIC;
    trackerPool_posFactor_we0 :in   STD_LOGIC;
    trackerPool_posFactor_d0 :in   STD_LOGIC_VECTOR(63 downto 0);
    trackerPool_velFactor_address0 :in   STD_LOGIC_VECTOR(3 downto 0);
    trackerPool_velFactor_ce0 :in   STD_LOGIC;
    trackerPool_velFactor_we0 :in   STD_LOGIC;
    trackerPool_velFactor_d0 :in   STD_LOGIC_VECTOR(63 downto 0);
    trackerPool_clusterSize_address0 :in   STD_LOGIC_VECTOR(3 downto 0);
    trackerPool_clusterSize_ce0 :in   STD_LOGIC;
    trackerPool_clusterSize_we0 :in   STD_LOGIC;
    trackerPool_clusterSize_d0 :in   STD_LOGIC_VECTOR(63 downto 0);
    trackerPool_smoothingFactor_address0 :in   STD_LOGIC_VECTOR(3 downto 0);
    trackerPool_smoothingFactor_ce0 :in   STD_LOGIC;
    trackerPool_smoothingFactor_we0 :in   STD_LOGIC;
    trackerPool_smoothingFactor_d0 :in   STD_LOGIC_VECTOR(63 downto 0);
    trackerPool_sp1x_address0 :in   STD_LOGIC_VECTOR(3 downto 0);
    trackerPool_sp1x_ce0  :in   STD_LOGIC;
    trackerPool_sp1x_we0  :in   STD_LOGIC;
    trackerPool_sp1x_d0   :in   STD_LOGIC_VECTOR(63 downto 0);
    trackerPool_sp2x_address0 :in   STD_LOGIC_VECTOR(3 downto 0);
    trackerPool_sp2x_ce0  :in   STD_LOGIC;
    trackerPool_sp2x_we0  :in   STD_LOGIC;
    trackerPool_sp2x_d0   :in   STD_LOGIC_VECTOR(63 downto 0);
    trackerPool_sp1y_address0 :in   STD_LOGIC_VECTOR(3 downto 0);
    trackerPool_sp1y_ce0  :in   STD_LOGIC;
    trackerPool_sp1y_we0  :in   STD_LOGIC;
    trackerPool_sp1y_d0   :in   STD_LOGIC_VECTOR(63 downto 0);
    trackerPool_sp2y_address0 :in   STD_LOGIC_VECTOR(3 downto 0);
    trackerPool_sp2y_ce0  :in   STD_LOGIC;
    trackerPool_sp2y_we0  :in   STD_LOGIC;
    trackerPool_sp2y_d0   :in   STD_LOGIC_VECTOR(63 downto 0);
    trackerPool_sigmaX_address0 :in   STD_LOGIC_VECTOR(3 downto 0);
    trackerPool_sigmaX_ce0 :in   STD_LOGIC;
    trackerPool_sigmaX_q0 :out  STD_LOGIC_VECTOR(63 downto 0);
    trackerPool_sigmaY_address0 :in   STD_LOGIC_VECTOR(3 downto 0);
    trackerPool_sigmaY_ce0 :in   STD_LOGIC;
    trackerPool_sigmaY_q0 :out  STD_LOGIC_VECTOR(63 downto 0);
    trackerPool_sigmaXY_address0 :in   STD_LOGIC_VECTOR(3 downto 0);
    trackerPool_sigmaXY_ce0 :in   STD_LOGIC;
    trackerPool_sigmaXY_q0 :out  STD_LOGIC_VECTOR(63 downto 0);
    trackerPool_a_address0 :in   STD_LOGIC_VECTOR(3 downto 0);
    trackerPool_a_ce0     :in   STD_LOGIC;
    trackerPool_a_we0     :in   STD_LOGIC;
    trackerPool_a_d0      :in   STD_LOGIC_VECTOR(63 downto 0);
    trackerPool_b_address0 :in   STD_LOGIC_VECTOR(3 downto 0);
    trackerPool_b_ce0     :in   STD_LOGIC;
    trackerPool_b_we0     :in   STD_LOGIC;
    trackerPool_b_d0      :in   STD_LOGIC_VECTOR(63 downto 0);
    trackerPool_alpha_address0 :in   STD_LOGIC_VECTOR(3 downto 0);
    trackerPool_alpha_ce0 :in   STD_LOGIC;
    trackerPool_alpha_we0 :in   STD_LOGIC;
    trackerPool_alpha_d0  :in   STD_LOGIC_VECTOR(63 downto 0);
    trackerPool_sumFlowX_address0 :in   STD_LOGIC_VECTOR(3 downto 0);
    trackerPool_sumFlowX_ce0 :in   STD_LOGIC;
    trackerPool_sumFlowX_we0 :in   STD_LOGIC;
    trackerPool_sumFlowX_d0 :in   STD_LOGIC_VECTOR(63 downto 0);
    trackerPool_sumFlowY_address0 :in   STD_LOGIC_VECTOR(3 downto 0);
    trackerPool_sumFlowY_ce0 :in   STD_LOGIC;
    trackerPool_sumFlowY_we0 :in   STD_LOGIC;
    trackerPool_sumFlowY_d0 :in   STD_LOGIC_VECTOR(63 downto 0);
    trackerPool_avgFlowX_address0 :in   STD_LOGIC_VECTOR(3 downto 0);
    trackerPool_avgFlowX_ce0 :in   STD_LOGIC;
    trackerPool_avgFlowX_q0 :out  STD_LOGIC_VECTOR(63 downto 0);
    trackerPool_avgFlowY_address0 :in   STD_LOGIC_VECTOR(3 downto 0);
    trackerPool_avgFlowY_ce0 :in   STD_LOGIC;
    trackerPool_avgFlowY_q0 :out  STD_LOGIC_VECTOR(63 downto 0);
    trackerPool_activity_address0 :in   STD_LOGIC_VECTOR(3 downto 0);
    trackerPool_activity_ce0 :in   STD_LOGIC;
    trackerPool_activity_we0 :in   STD_LOGIC;
    trackerPool_activity_d0 :in   STD_LOGIC_VECTOR(63 downto 0);
    trackerPool_lastTimeStamp_address0 :in   STD_LOGIC_VECTOR(3 downto 0);
    trackerPool_lastTimeStamp_ce0 :in   STD_LOGIC;
    trackerPool_lastTimeStamp_we0 :in   STD_LOGIC;
    trackerPool_lastTimeStamp_d0 :in   STD_LOGIC_VECTOR(31 downto 0)
);
end entity getTrackerID_hw_AXILiteS_s_axi;

-- ------------------------Address Info-------------------
-- 0x010 ~
-- 0x01f : Memory 'trackerPool_state' (16 * 2b)
--         Word n : bit [ 1: 0] - trackerPool_state[4n]
--                  bit [ 9: 8] - trackerPool_state[4n+1]
--                  bit [17:16] - trackerPool_state[4n+2]
--                  bit [25:24] - trackerPool_state[4n+3]
--                  others      - reserved
-- 0x040 ~
-- 0x07f : Memory 'trackerPool_eventCount' (16 * 32b)
--         Word n : bit [31:0] - trackerPool_eventCount[n]
-- 0x080 ~
-- 0x0bf : Memory 'trackerPool_resetTime' (16 * 32b)
--         Word n : bit [31:0] - trackerPool_resetTime[n]
-- 0x100 ~
-- 0x17f : Memory 'trackerPool_x' (16 * 64b)
--         Word 2n   : bit [31:0] - trackerPool_x[n][31: 0]
--         Word 2n+1 : bit [31:0] - trackerPool_x[n][63:32]
-- 0x180 ~
-- 0x1ff : Memory 'trackerPool_y' (16 * 64b)
--         Word 2n   : bit [31:0] - trackerPool_y[n][31: 0]
--         Word 2n+1 : bit [31:0] - trackerPool_y[n][63:32]
-- 0x200 ~
-- 0x27f : Memory 'trackerPool_prevX' (16 * 64b)
--         Word 2n   : bit [31:0] - trackerPool_prevX[n][31: 0]
--         Word 2n+1 : bit [31:0] - trackerPool_prevX[n][63:32]
-- 0x280 ~
-- 0x2ff : Memory 'trackerPool_prevY' (16 * 64b)
--         Word 2n   : bit [31:0] - trackerPool_prevY[n][31: 0]
--         Word 2n+1 : bit [31:0] - trackerPool_prevY[n][63:32]
-- 0x300 ~
-- 0x37f : Memory 'trackerPool_predX' (16 * 64b)
--         Word 2n   : bit [31:0] - trackerPool_predX[n][31: 0]
--         Word 2n+1 : bit [31:0] - trackerPool_predX[n][63:32]
-- 0x380 ~
-- 0x3ff : Memory 'trackerPool_predY' (16 * 64b)
--         Word 2n   : bit [31:0] - trackerPool_predY[n][31: 0]
--         Word 2n+1 : bit [31:0] - trackerPool_predY[n][63:32]
-- 0x400 ~
-- 0x47f : Memory 'trackerPool_shapeFactor' (16 * 64b)
--         Word 2n   : bit [31:0] - trackerPool_shapeFactor[n][31: 0]
--         Word 2n+1 : bit [31:0] - trackerPool_shapeFactor[n][63:32]
-- 0x480 ~
-- 0x4ff : Memory 'trackerPool_origShapeFactor' (16 * 64b)
--         Word 2n   : bit [31:0] - trackerPool_origShapeFactor[n][31: 0]
--         Word 2n+1 : bit [31:0] - trackerPool_origShapeFactor[n][63:32]
-- 0x500 ~
-- 0x57f : Memory 'trackerPool_posFactor' (16 * 64b)
--         Word 2n   : bit [31:0] - trackerPool_posFactor[n][31: 0]
--         Word 2n+1 : bit [31:0] - trackerPool_posFactor[n][63:32]
-- 0x580 ~
-- 0x5ff : Memory 'trackerPool_velFactor' (16 * 64b)
--         Word 2n   : bit [31:0] - trackerPool_velFactor[n][31: 0]
--         Word 2n+1 : bit [31:0] - trackerPool_velFactor[n][63:32]
-- 0x600 ~
-- 0x67f : Memory 'trackerPool_clusterSize' (16 * 64b)
--         Word 2n   : bit [31:0] - trackerPool_clusterSize[n][31: 0]
--         Word 2n+1 : bit [31:0] - trackerPool_clusterSize[n][63:32]
-- 0x680 ~
-- 0x6ff : Memory 'trackerPool_smoothingFactor' (16 * 64b)
--         Word 2n   : bit [31:0] - trackerPool_smoothingFactor[n][31: 0]
--         Word 2n+1 : bit [31:0] - trackerPool_smoothingFactor[n][63:32]
-- 0x700 ~
-- 0x77f : Memory 'trackerPool_sp1x' (16 * 64b)
--         Word 2n   : bit [31:0] - trackerPool_sp1x[n][31: 0]
--         Word 2n+1 : bit [31:0] - trackerPool_sp1x[n][63:32]
-- 0x780 ~
-- 0x7ff : Memory 'trackerPool_sp2x' (16 * 64b)
--         Word 2n   : bit [31:0] - trackerPool_sp2x[n][31: 0]
--         Word 2n+1 : bit [31:0] - trackerPool_sp2x[n][63:32]
-- 0x800 ~
-- 0x87f : Memory 'trackerPool_sp1y' (16 * 64b)
--         Word 2n   : bit [31:0] - trackerPool_sp1y[n][31: 0]
--         Word 2n+1 : bit [31:0] - trackerPool_sp1y[n][63:32]
-- 0x880 ~
-- 0x8ff : Memory 'trackerPool_sp2y' (16 * 64b)
--         Word 2n   : bit [31:0] - trackerPool_sp2y[n][31: 0]
--         Word 2n+1 : bit [31:0] - trackerPool_sp2y[n][63:32]
-- 0x900 ~
-- 0x97f : Memory 'trackerPool_sigmaX' (16 * 64b)
--         Word 2n   : bit [31:0] - trackerPool_sigmaX[n][31: 0]
--         Word 2n+1 : bit [31:0] - trackerPool_sigmaX[n][63:32]
-- 0x980 ~
-- 0x9ff : Memory 'trackerPool_sigmaY' (16 * 64b)
--         Word 2n   : bit [31:0] - trackerPool_sigmaY[n][31: 0]
--         Word 2n+1 : bit [31:0] - trackerPool_sigmaY[n][63:32]
-- 0xa00 ~
-- 0xa7f : Memory 'trackerPool_sigmaXY' (16 * 64b)
--         Word 2n   : bit [31:0] - trackerPool_sigmaXY[n][31: 0]
--         Word 2n+1 : bit [31:0] - trackerPool_sigmaXY[n][63:32]
-- 0xa80 ~
-- 0xaff : Memory 'trackerPool_a' (16 * 64b)
--         Word 2n   : bit [31:0] - trackerPool_a[n][31: 0]
--         Word 2n+1 : bit [31:0] - trackerPool_a[n][63:32]
-- 0xb00 ~
-- 0xb7f : Memory 'trackerPool_b' (16 * 64b)
--         Word 2n   : bit [31:0] - trackerPool_b[n][31: 0]
--         Word 2n+1 : bit [31:0] - trackerPool_b[n][63:32]
-- 0xb80 ~
-- 0xbff : Memory 'trackerPool_alpha' (16 * 64b)
--         Word 2n   : bit [31:0] - trackerPool_alpha[n][31: 0]
--         Word 2n+1 : bit [31:0] - trackerPool_alpha[n][63:32]
-- 0xc00 ~
-- 0xc7f : Memory 'trackerPool_sumFlowX' (16 * 64b)
--         Word 2n   : bit [31:0] - trackerPool_sumFlowX[n][31: 0]
--         Word 2n+1 : bit [31:0] - trackerPool_sumFlowX[n][63:32]
-- 0xc80 ~
-- 0xcff : Memory 'trackerPool_sumFlowY' (16 * 64b)
--         Word 2n   : bit [31:0] - trackerPool_sumFlowY[n][31: 0]
--         Word 2n+1 : bit [31:0] - trackerPool_sumFlowY[n][63:32]
-- 0xd00 ~
-- 0xd7f : Memory 'trackerPool_avgFlowX' (16 * 64b)
--         Word 2n   : bit [31:0] - trackerPool_avgFlowX[n][31: 0]
--         Word 2n+1 : bit [31:0] - trackerPool_avgFlowX[n][63:32]
-- 0xd80 ~
-- 0xdff : Memory 'trackerPool_avgFlowY' (16 * 64b)
--         Word 2n   : bit [31:0] - trackerPool_avgFlowY[n][31: 0]
--         Word 2n+1 : bit [31:0] - trackerPool_avgFlowY[n][63:32]
-- 0xe00 ~
-- 0xe7f : Memory 'trackerPool_activity' (16 * 64b)
--         Word 2n   : bit [31:0] - trackerPool_activity[n][31: 0]
--         Word 2n+1 : bit [31:0] - trackerPool_activity[n][63:32]
-- 0xe80 ~
-- 0xebf : Memory 'trackerPool_lastTimeStamp' (16 * 32b)
--         Word n : bit [31:0] - trackerPool_lastTimeStamp[n]
-- (SC = Self Clear, COR = Clear on Read, TOW = Toggle on Write, COH = Clear on Handshake)

architecture behave of getTrackerID_hw_AXILiteS_s_axi is
    type states is (wridle, wrdata, wrresp, wrreset, rdidle, rddata, rdreset);  -- read and write fsm states
    signal wstate  : states := wrreset;
    signal rstate  : states := rdreset;
    signal wnext, rnext: states;
    constant ADDR_TRACKERPOOL_STATE_BASE           : INTEGER := 16#010#;
    constant ADDR_TRACKERPOOL_STATE_HIGH           : INTEGER := 16#01f#;
    constant ADDR_TRACKERPOOL_EVENTCOUNT_BASE      : INTEGER := 16#040#;
    constant ADDR_TRACKERPOOL_EVENTCOUNT_HIGH      : INTEGER := 16#07f#;
    constant ADDR_TRACKERPOOL_RESETTIME_BASE       : INTEGER := 16#080#;
    constant ADDR_TRACKERPOOL_RESETTIME_HIGH       : INTEGER := 16#0bf#;
    constant ADDR_TRACKERPOOL_X_BASE               : INTEGER := 16#100#;
    constant ADDR_TRACKERPOOL_X_HIGH               : INTEGER := 16#17f#;
    constant ADDR_TRACKERPOOL_Y_BASE               : INTEGER := 16#180#;
    constant ADDR_TRACKERPOOL_Y_HIGH               : INTEGER := 16#1ff#;
    constant ADDR_TRACKERPOOL_PREVX_BASE           : INTEGER := 16#200#;
    constant ADDR_TRACKERPOOL_PREVX_HIGH           : INTEGER := 16#27f#;
    constant ADDR_TRACKERPOOL_PREVY_BASE           : INTEGER := 16#280#;
    constant ADDR_TRACKERPOOL_PREVY_HIGH           : INTEGER := 16#2ff#;
    constant ADDR_TRACKERPOOL_PREDX_BASE           : INTEGER := 16#300#;
    constant ADDR_TRACKERPOOL_PREDX_HIGH           : INTEGER := 16#37f#;
    constant ADDR_TRACKERPOOL_PREDY_BASE           : INTEGER := 16#380#;
    constant ADDR_TRACKERPOOL_PREDY_HIGH           : INTEGER := 16#3ff#;
    constant ADDR_TRACKERPOOL_SHAPEFACTOR_BASE     : INTEGER := 16#400#;
    constant ADDR_TRACKERPOOL_SHAPEFACTOR_HIGH     : INTEGER := 16#47f#;
    constant ADDR_TRACKERPOOL_ORIGSHAPEFACTOR_BASE : INTEGER := 16#480#;
    constant ADDR_TRACKERPOOL_ORIGSHAPEFACTOR_HIGH : INTEGER := 16#4ff#;
    constant ADDR_TRACKERPOOL_POSFACTOR_BASE       : INTEGER := 16#500#;
    constant ADDR_TRACKERPOOL_POSFACTOR_HIGH       : INTEGER := 16#57f#;
    constant ADDR_TRACKERPOOL_VELFACTOR_BASE       : INTEGER := 16#580#;
    constant ADDR_TRACKERPOOL_VELFACTOR_HIGH       : INTEGER := 16#5ff#;
    constant ADDR_TRACKERPOOL_CLUSTERSIZE_BASE     : INTEGER := 16#600#;
    constant ADDR_TRACKERPOOL_CLUSTERSIZE_HIGH     : INTEGER := 16#67f#;
    constant ADDR_TRACKERPOOL_SMOOTHINGFACTOR_BASE : INTEGER := 16#680#;
    constant ADDR_TRACKERPOOL_SMOOTHINGFACTOR_HIGH : INTEGER := 16#6ff#;
    constant ADDR_TRACKERPOOL_SP1X_BASE            : INTEGER := 16#700#;
    constant ADDR_TRACKERPOOL_SP1X_HIGH            : INTEGER := 16#77f#;
    constant ADDR_TRACKERPOOL_SP2X_BASE            : INTEGER := 16#780#;
    constant ADDR_TRACKERPOOL_SP2X_HIGH            : INTEGER := 16#7ff#;
    constant ADDR_TRACKERPOOL_SP1Y_BASE            : INTEGER := 16#800#;
    constant ADDR_TRACKERPOOL_SP1Y_HIGH            : INTEGER := 16#87f#;
    constant ADDR_TRACKERPOOL_SP2Y_BASE            : INTEGER := 16#880#;
    constant ADDR_TRACKERPOOL_SP2Y_HIGH            : INTEGER := 16#8ff#;
    constant ADDR_TRACKERPOOL_SIGMAX_BASE          : INTEGER := 16#900#;
    constant ADDR_TRACKERPOOL_SIGMAX_HIGH          : INTEGER := 16#97f#;
    constant ADDR_TRACKERPOOL_SIGMAY_BASE          : INTEGER := 16#980#;
    constant ADDR_TRACKERPOOL_SIGMAY_HIGH          : INTEGER := 16#9ff#;
    constant ADDR_TRACKERPOOL_SIGMAXY_BASE         : INTEGER := 16#a00#;
    constant ADDR_TRACKERPOOL_SIGMAXY_HIGH         : INTEGER := 16#a7f#;
    constant ADDR_TRACKERPOOL_A_BASE               : INTEGER := 16#a80#;
    constant ADDR_TRACKERPOOL_A_HIGH               : INTEGER := 16#aff#;
    constant ADDR_TRACKERPOOL_B_BASE               : INTEGER := 16#b00#;
    constant ADDR_TRACKERPOOL_B_HIGH               : INTEGER := 16#b7f#;
    constant ADDR_TRACKERPOOL_ALPHA_BASE           : INTEGER := 16#b80#;
    constant ADDR_TRACKERPOOL_ALPHA_HIGH           : INTEGER := 16#bff#;
    constant ADDR_TRACKERPOOL_SUMFLOWX_BASE        : INTEGER := 16#c00#;
    constant ADDR_TRACKERPOOL_SUMFLOWX_HIGH        : INTEGER := 16#c7f#;
    constant ADDR_TRACKERPOOL_SUMFLOWY_BASE        : INTEGER := 16#c80#;
    constant ADDR_TRACKERPOOL_SUMFLOWY_HIGH        : INTEGER := 16#cff#;
    constant ADDR_TRACKERPOOL_AVGFLOWX_BASE        : INTEGER := 16#d00#;
    constant ADDR_TRACKERPOOL_AVGFLOWX_HIGH        : INTEGER := 16#d7f#;
    constant ADDR_TRACKERPOOL_AVGFLOWY_BASE        : INTEGER := 16#d80#;
    constant ADDR_TRACKERPOOL_AVGFLOWY_HIGH        : INTEGER := 16#dff#;
    constant ADDR_TRACKERPOOL_ACTIVITY_BASE        : INTEGER := 16#e00#;
    constant ADDR_TRACKERPOOL_ACTIVITY_HIGH        : INTEGER := 16#e7f#;
    constant ADDR_TRACKERPOOL_LASTTIMESTAMP_BASE   : INTEGER := 16#e80#;
    constant ADDR_TRACKERPOOL_LASTTIMESTAMP_HIGH   : INTEGER := 16#ebf#;
    constant ADDR_BITS         : INTEGER := 12;

    signal waddr               : UNSIGNED(ADDR_BITS-1 downto 0);
    signal wmask               : UNSIGNED(31 downto 0);
    signal aw_hs               : STD_LOGIC;
    signal w_hs                : STD_LOGIC;
    signal rdata_data          : UNSIGNED(31 downto 0);
    signal ar_hs               : STD_LOGIC;
    signal raddr               : UNSIGNED(ADDR_BITS-1 downto 0);
    signal AWREADY_t           : STD_LOGIC;
    signal WREADY_t            : STD_LOGIC;
    signal ARREADY_t           : STD_LOGIC;
    signal RVALID_t            : STD_LOGIC;
    -- memory signals
    signal int_trackerPool_state_address0 : UNSIGNED(1 downto 0);
    signal int_trackerPool_state_ce0 : STD_LOGIC;
    signal int_trackerPool_state_we0 : STD_LOGIC;
    signal int_trackerPool_state_be0 : UNSIGNED(3 downto 0);
    signal int_trackerPool_state_d0 : UNSIGNED(31 downto 0);
    signal int_trackerPool_state_q0 : UNSIGNED(31 downto 0);
    signal int_trackerPool_state_address1 : UNSIGNED(1 downto 0);
    signal int_trackerPool_state_ce1 : STD_LOGIC;
    signal int_trackerPool_state_we1 : STD_LOGIC;
    signal int_trackerPool_state_be1 : UNSIGNED(3 downto 0);
    signal int_trackerPool_state_d1 : UNSIGNED(31 downto 0);
    signal int_trackerPool_state_q1 : UNSIGNED(31 downto 0);
    signal int_trackerPool_state_read : STD_LOGIC;
    signal int_trackerPool_state_write : STD_LOGIC;
    signal int_trackerPool_state_shift : UNSIGNED(1 downto 0);
    signal int_trackerPool_eventCount_address0 : UNSIGNED(3 downto 0);
    signal int_trackerPool_eventCount_ce0 : STD_LOGIC;
    signal int_trackerPool_eventCount_we0 : STD_LOGIC;
    signal int_trackerPool_eventCount_be0 : UNSIGNED(3 downto 0);
    signal int_trackerPool_eventCount_d0 : UNSIGNED(31 downto 0);
    signal int_trackerPool_eventCount_q0 : UNSIGNED(31 downto 0);
    signal int_trackerPool_eventCount_address1 : UNSIGNED(3 downto 0);
    signal int_trackerPool_eventCount_ce1 : STD_LOGIC;
    signal int_trackerPool_eventCount_we1 : STD_LOGIC;
    signal int_trackerPool_eventCount_be1 : UNSIGNED(3 downto 0);
    signal int_trackerPool_eventCount_d1 : UNSIGNED(31 downto 0);
    signal int_trackerPool_eventCount_q1 : UNSIGNED(31 downto 0);
    signal int_trackerPool_eventCount_read : STD_LOGIC;
    signal int_trackerPool_eventCount_write : STD_LOGIC;
    signal int_trackerPool_resetTime_address0 : UNSIGNED(3 downto 0);
    signal int_trackerPool_resetTime_ce0 : STD_LOGIC;
    signal int_trackerPool_resetTime_we0 : STD_LOGIC;
    signal int_trackerPool_resetTime_be0 : UNSIGNED(3 downto 0);
    signal int_trackerPool_resetTime_d0 : UNSIGNED(31 downto 0);
    signal int_trackerPool_resetTime_q0 : UNSIGNED(31 downto 0);
    signal int_trackerPool_resetTime_address1 : UNSIGNED(3 downto 0);
    signal int_trackerPool_resetTime_ce1 : STD_LOGIC;
    signal int_trackerPool_resetTime_we1 : STD_LOGIC;
    signal int_trackerPool_resetTime_be1 : UNSIGNED(3 downto 0);
    signal int_trackerPool_resetTime_d1 : UNSIGNED(31 downto 0);
    signal int_trackerPool_resetTime_q1 : UNSIGNED(31 downto 0);
    signal int_trackerPool_resetTime_read : STD_LOGIC;
    signal int_trackerPool_resetTime_write : STD_LOGIC;
    signal int_trackerPool_x_address0 : UNSIGNED(3 downto 0);
    signal int_trackerPool_x_ce0 : STD_LOGIC;
    signal int_trackerPool_x_we0 : STD_LOGIC;
    signal int_trackerPool_x_be0 : UNSIGNED(7 downto 0);
    signal int_trackerPool_x_d0 : UNSIGNED(63 downto 0);
    signal int_trackerPool_x_q0 : UNSIGNED(63 downto 0);
    signal int_trackerPool_x_address1 : UNSIGNED(3 downto 0);
    signal int_trackerPool_x_ce1 : STD_LOGIC;
    signal int_trackerPool_x_we1 : STD_LOGIC;
    signal int_trackerPool_x_be1 : UNSIGNED(7 downto 0);
    signal int_trackerPool_x_d1 : UNSIGNED(63 downto 0);
    signal int_trackerPool_x_q1 : UNSIGNED(63 downto 0);
    signal int_trackerPool_x_read : STD_LOGIC;
    signal int_trackerPool_x_write : STD_LOGIC;
    signal int_trackerPool_x_shift : UNSIGNED(0 downto 0);
    signal int_trackerPool_y_address0 : UNSIGNED(3 downto 0);
    signal int_trackerPool_y_ce0 : STD_LOGIC;
    signal int_trackerPool_y_we0 : STD_LOGIC;
    signal int_trackerPool_y_be0 : UNSIGNED(7 downto 0);
    signal int_trackerPool_y_d0 : UNSIGNED(63 downto 0);
    signal int_trackerPool_y_q0 : UNSIGNED(63 downto 0);
    signal int_trackerPool_y_address1 : UNSIGNED(3 downto 0);
    signal int_trackerPool_y_ce1 : STD_LOGIC;
    signal int_trackerPool_y_we1 : STD_LOGIC;
    signal int_trackerPool_y_be1 : UNSIGNED(7 downto 0);
    signal int_trackerPool_y_d1 : UNSIGNED(63 downto 0);
    signal int_trackerPool_y_q1 : UNSIGNED(63 downto 0);
    signal int_trackerPool_y_read : STD_LOGIC;
    signal int_trackerPool_y_write : STD_LOGIC;
    signal int_trackerPool_y_shift : UNSIGNED(0 downto 0);
    signal int_trackerPool_prevX_address0 : UNSIGNED(3 downto 0);
    signal int_trackerPool_prevX_ce0 : STD_LOGIC;
    signal int_trackerPool_prevX_we0 : STD_LOGIC;
    signal int_trackerPool_prevX_be0 : UNSIGNED(7 downto 0);
    signal int_trackerPool_prevX_d0 : UNSIGNED(63 downto 0);
    signal int_trackerPool_prevX_q0 : UNSIGNED(63 downto 0);
    signal int_trackerPool_prevX_address1 : UNSIGNED(3 downto 0);
    signal int_trackerPool_prevX_ce1 : STD_LOGIC;
    signal int_trackerPool_prevX_we1 : STD_LOGIC;
    signal int_trackerPool_prevX_be1 : UNSIGNED(7 downto 0);
    signal int_trackerPool_prevX_d1 : UNSIGNED(63 downto 0);
    signal int_trackerPool_prevX_q1 : UNSIGNED(63 downto 0);
    signal int_trackerPool_prevX_read : STD_LOGIC;
    signal int_trackerPool_prevX_write : STD_LOGIC;
    signal int_trackerPool_prevX_shift : UNSIGNED(0 downto 0);
    signal int_trackerPool_prevY_address0 : UNSIGNED(3 downto 0);
    signal int_trackerPool_prevY_ce0 : STD_LOGIC;
    signal int_trackerPool_prevY_we0 : STD_LOGIC;
    signal int_trackerPool_prevY_be0 : UNSIGNED(7 downto 0);
    signal int_trackerPool_prevY_d0 : UNSIGNED(63 downto 0);
    signal int_trackerPool_prevY_q0 : UNSIGNED(63 downto 0);
    signal int_trackerPool_prevY_address1 : UNSIGNED(3 downto 0);
    signal int_trackerPool_prevY_ce1 : STD_LOGIC;
    signal int_trackerPool_prevY_we1 : STD_LOGIC;
    signal int_trackerPool_prevY_be1 : UNSIGNED(7 downto 0);
    signal int_trackerPool_prevY_d1 : UNSIGNED(63 downto 0);
    signal int_trackerPool_prevY_q1 : UNSIGNED(63 downto 0);
    signal int_trackerPool_prevY_read : STD_LOGIC;
    signal int_trackerPool_prevY_write : STD_LOGIC;
    signal int_trackerPool_prevY_shift : UNSIGNED(0 downto 0);
    signal int_trackerPool_predX_address0 : UNSIGNED(3 downto 0);
    signal int_trackerPool_predX_ce0 : STD_LOGIC;
    signal int_trackerPool_predX_we0 : STD_LOGIC;
    signal int_trackerPool_predX_be0 : UNSIGNED(7 downto 0);
    signal int_trackerPool_predX_d0 : UNSIGNED(63 downto 0);
    signal int_trackerPool_predX_q0 : UNSIGNED(63 downto 0);
    signal int_trackerPool_predX_address1 : UNSIGNED(3 downto 0);
    signal int_trackerPool_predX_ce1 : STD_LOGIC;
    signal int_trackerPool_predX_we1 : STD_LOGIC;
    signal int_trackerPool_predX_be1 : UNSIGNED(7 downto 0);
    signal int_trackerPool_predX_d1 : UNSIGNED(63 downto 0);
    signal int_trackerPool_predX_q1 : UNSIGNED(63 downto 0);
    signal int_trackerPool_predX_read : STD_LOGIC;
    signal int_trackerPool_predX_write : STD_LOGIC;
    signal int_trackerPool_predX_shift : UNSIGNED(0 downto 0);
    signal int_trackerPool_predY_address0 : UNSIGNED(3 downto 0);
    signal int_trackerPool_predY_ce0 : STD_LOGIC;
    signal int_trackerPool_predY_we0 : STD_LOGIC;
    signal int_trackerPool_predY_be0 : UNSIGNED(7 downto 0);
    signal int_trackerPool_predY_d0 : UNSIGNED(63 downto 0);
    signal int_trackerPool_predY_q0 : UNSIGNED(63 downto 0);
    signal int_trackerPool_predY_address1 : UNSIGNED(3 downto 0);
    signal int_trackerPool_predY_ce1 : STD_LOGIC;
    signal int_trackerPool_predY_we1 : STD_LOGIC;
    signal int_trackerPool_predY_be1 : UNSIGNED(7 downto 0);
    signal int_trackerPool_predY_d1 : UNSIGNED(63 downto 0);
    signal int_trackerPool_predY_q1 : UNSIGNED(63 downto 0);
    signal int_trackerPool_predY_read : STD_LOGIC;
    signal int_trackerPool_predY_write : STD_LOGIC;
    signal int_trackerPool_predY_shift : UNSIGNED(0 downto 0);
    signal int_trackerPool_shapeFactor_address0 : UNSIGNED(3 downto 0);
    signal int_trackerPool_shapeFactor_ce0 : STD_LOGIC;
    signal int_trackerPool_shapeFactor_we0 : STD_LOGIC;
    signal int_trackerPool_shapeFactor_be0 : UNSIGNED(7 downto 0);
    signal int_trackerPool_shapeFactor_d0 : UNSIGNED(63 downto 0);
    signal int_trackerPool_shapeFactor_q0 : UNSIGNED(63 downto 0);
    signal int_trackerPool_shapeFactor_address1 : UNSIGNED(3 downto 0);
    signal int_trackerPool_shapeFactor_ce1 : STD_LOGIC;
    signal int_trackerPool_shapeFactor_we1 : STD_LOGIC;
    signal int_trackerPool_shapeFactor_be1 : UNSIGNED(7 downto 0);
    signal int_trackerPool_shapeFactor_d1 : UNSIGNED(63 downto 0);
    signal int_trackerPool_shapeFactor_q1 : UNSIGNED(63 downto 0);
    signal int_trackerPool_shapeFactor_read : STD_LOGIC;
    signal int_trackerPool_shapeFactor_write : STD_LOGIC;
    signal int_trackerPool_shapeFactor_shift : UNSIGNED(0 downto 0);
    signal int_trackerPool_origShapeFactor_address0 : UNSIGNED(3 downto 0);
    signal int_trackerPool_origShapeFactor_ce0 : STD_LOGIC;
    signal int_trackerPool_origShapeFactor_we0 : STD_LOGIC;
    signal int_trackerPool_origShapeFactor_be0 : UNSIGNED(7 downto 0);
    signal int_trackerPool_origShapeFactor_d0 : UNSIGNED(63 downto 0);
    signal int_trackerPool_origShapeFactor_q0 : UNSIGNED(63 downto 0);
    signal int_trackerPool_origShapeFactor_address1 : UNSIGNED(3 downto 0);
    signal int_trackerPool_origShapeFactor_ce1 : STD_LOGIC;
    signal int_trackerPool_origShapeFactor_we1 : STD_LOGIC;
    signal int_trackerPool_origShapeFactor_be1 : UNSIGNED(7 downto 0);
    signal int_trackerPool_origShapeFactor_d1 : UNSIGNED(63 downto 0);
    signal int_trackerPool_origShapeFactor_q1 : UNSIGNED(63 downto 0);
    signal int_trackerPool_origShapeFactor_read : STD_LOGIC;
    signal int_trackerPool_origShapeFactor_write : STD_LOGIC;
    signal int_trackerPool_origShapeFactor_shift : UNSIGNED(0 downto 0);
    signal int_trackerPool_posFactor_address0 : UNSIGNED(3 downto 0);
    signal int_trackerPool_posFactor_ce0 : STD_LOGIC;
    signal int_trackerPool_posFactor_we0 : STD_LOGIC;
    signal int_trackerPool_posFactor_be0 : UNSIGNED(7 downto 0);
    signal int_trackerPool_posFactor_d0 : UNSIGNED(63 downto 0);
    signal int_trackerPool_posFactor_q0 : UNSIGNED(63 downto 0);
    signal int_trackerPool_posFactor_address1 : UNSIGNED(3 downto 0);
    signal int_trackerPool_posFactor_ce1 : STD_LOGIC;
    signal int_trackerPool_posFactor_we1 : STD_LOGIC;
    signal int_trackerPool_posFactor_be1 : UNSIGNED(7 downto 0);
    signal int_trackerPool_posFactor_d1 : UNSIGNED(63 downto 0);
    signal int_trackerPool_posFactor_q1 : UNSIGNED(63 downto 0);
    signal int_trackerPool_posFactor_read : STD_LOGIC;
    signal int_trackerPool_posFactor_write : STD_LOGIC;
    signal int_trackerPool_posFactor_shift : UNSIGNED(0 downto 0);
    signal int_trackerPool_velFactor_address0 : UNSIGNED(3 downto 0);
    signal int_trackerPool_velFactor_ce0 : STD_LOGIC;
    signal int_trackerPool_velFactor_we0 : STD_LOGIC;
    signal int_trackerPool_velFactor_be0 : UNSIGNED(7 downto 0);
    signal int_trackerPool_velFactor_d0 : UNSIGNED(63 downto 0);
    signal int_trackerPool_velFactor_q0 : UNSIGNED(63 downto 0);
    signal int_trackerPool_velFactor_address1 : UNSIGNED(3 downto 0);
    signal int_trackerPool_velFactor_ce1 : STD_LOGIC;
    signal int_trackerPool_velFactor_we1 : STD_LOGIC;
    signal int_trackerPool_velFactor_be1 : UNSIGNED(7 downto 0);
    signal int_trackerPool_velFactor_d1 : UNSIGNED(63 downto 0);
    signal int_trackerPool_velFactor_q1 : UNSIGNED(63 downto 0);
    signal int_trackerPool_velFactor_read : STD_LOGIC;
    signal int_trackerPool_velFactor_write : STD_LOGIC;
    signal int_trackerPool_velFactor_shift : UNSIGNED(0 downto 0);
    signal int_trackerPool_clusterSize_address0 : UNSIGNED(3 downto 0);
    signal int_trackerPool_clusterSize_ce0 : STD_LOGIC;
    signal int_trackerPool_clusterSize_we0 : STD_LOGIC;
    signal int_trackerPool_clusterSize_be0 : UNSIGNED(7 downto 0);
    signal int_trackerPool_clusterSize_d0 : UNSIGNED(63 downto 0);
    signal int_trackerPool_clusterSize_q0 : UNSIGNED(63 downto 0);
    signal int_trackerPool_clusterSize_address1 : UNSIGNED(3 downto 0);
    signal int_trackerPool_clusterSize_ce1 : STD_LOGIC;
    signal int_trackerPool_clusterSize_we1 : STD_LOGIC;
    signal int_trackerPool_clusterSize_be1 : UNSIGNED(7 downto 0);
    signal int_trackerPool_clusterSize_d1 : UNSIGNED(63 downto 0);
    signal int_trackerPool_clusterSize_q1 : UNSIGNED(63 downto 0);
    signal int_trackerPool_clusterSize_read : STD_LOGIC;
    signal int_trackerPool_clusterSize_write : STD_LOGIC;
    signal int_trackerPool_clusterSize_shift : UNSIGNED(0 downto 0);
    signal int_trackerPool_smoothingFactor_address0 : UNSIGNED(3 downto 0);
    signal int_trackerPool_smoothingFactor_ce0 : STD_LOGIC;
    signal int_trackerPool_smoothingFactor_we0 : STD_LOGIC;
    signal int_trackerPool_smoothingFactor_be0 : UNSIGNED(7 downto 0);
    signal int_trackerPool_smoothingFactor_d0 : UNSIGNED(63 downto 0);
    signal int_trackerPool_smoothingFactor_q0 : UNSIGNED(63 downto 0);
    signal int_trackerPool_smoothingFactor_address1 : UNSIGNED(3 downto 0);
    signal int_trackerPool_smoothingFactor_ce1 : STD_LOGIC;
    signal int_trackerPool_smoothingFactor_we1 : STD_LOGIC;
    signal int_trackerPool_smoothingFactor_be1 : UNSIGNED(7 downto 0);
    signal int_trackerPool_smoothingFactor_d1 : UNSIGNED(63 downto 0);
    signal int_trackerPool_smoothingFactor_q1 : UNSIGNED(63 downto 0);
    signal int_trackerPool_smoothingFactor_read : STD_LOGIC;
    signal int_trackerPool_smoothingFactor_write : STD_LOGIC;
    signal int_trackerPool_smoothingFactor_shift : UNSIGNED(0 downto 0);
    signal int_trackerPool_sp1x_address0 : UNSIGNED(3 downto 0);
    signal int_trackerPool_sp1x_ce0 : STD_LOGIC;
    signal int_trackerPool_sp1x_we0 : STD_LOGIC;
    signal int_trackerPool_sp1x_be0 : UNSIGNED(7 downto 0);
    signal int_trackerPool_sp1x_d0 : UNSIGNED(63 downto 0);
    signal int_trackerPool_sp1x_q0 : UNSIGNED(63 downto 0);
    signal int_trackerPool_sp1x_address1 : UNSIGNED(3 downto 0);
    signal int_trackerPool_sp1x_ce1 : STD_LOGIC;
    signal int_trackerPool_sp1x_we1 : STD_LOGIC;
    signal int_trackerPool_sp1x_be1 : UNSIGNED(7 downto 0);
    signal int_trackerPool_sp1x_d1 : UNSIGNED(63 downto 0);
    signal int_trackerPool_sp1x_q1 : UNSIGNED(63 downto 0);
    signal int_trackerPool_sp1x_read : STD_LOGIC;
    signal int_trackerPool_sp1x_write : STD_LOGIC;
    signal int_trackerPool_sp1x_shift : UNSIGNED(0 downto 0);
    signal int_trackerPool_sp2x_address0 : UNSIGNED(3 downto 0);
    signal int_trackerPool_sp2x_ce0 : STD_LOGIC;
    signal int_trackerPool_sp2x_we0 : STD_LOGIC;
    signal int_trackerPool_sp2x_be0 : UNSIGNED(7 downto 0);
    signal int_trackerPool_sp2x_d0 : UNSIGNED(63 downto 0);
    signal int_trackerPool_sp2x_q0 : UNSIGNED(63 downto 0);
    signal int_trackerPool_sp2x_address1 : UNSIGNED(3 downto 0);
    signal int_trackerPool_sp2x_ce1 : STD_LOGIC;
    signal int_trackerPool_sp2x_we1 : STD_LOGIC;
    signal int_trackerPool_sp2x_be1 : UNSIGNED(7 downto 0);
    signal int_trackerPool_sp2x_d1 : UNSIGNED(63 downto 0);
    signal int_trackerPool_sp2x_q1 : UNSIGNED(63 downto 0);
    signal int_trackerPool_sp2x_read : STD_LOGIC;
    signal int_trackerPool_sp2x_write : STD_LOGIC;
    signal int_trackerPool_sp2x_shift : UNSIGNED(0 downto 0);
    signal int_trackerPool_sp1y_address0 : UNSIGNED(3 downto 0);
    signal int_trackerPool_sp1y_ce0 : STD_LOGIC;
    signal int_trackerPool_sp1y_we0 : STD_LOGIC;
    signal int_trackerPool_sp1y_be0 : UNSIGNED(7 downto 0);
    signal int_trackerPool_sp1y_d0 : UNSIGNED(63 downto 0);
    signal int_trackerPool_sp1y_q0 : UNSIGNED(63 downto 0);
    signal int_trackerPool_sp1y_address1 : UNSIGNED(3 downto 0);
    signal int_trackerPool_sp1y_ce1 : STD_LOGIC;
    signal int_trackerPool_sp1y_we1 : STD_LOGIC;
    signal int_trackerPool_sp1y_be1 : UNSIGNED(7 downto 0);
    signal int_trackerPool_sp1y_d1 : UNSIGNED(63 downto 0);
    signal int_trackerPool_sp1y_q1 : UNSIGNED(63 downto 0);
    signal int_trackerPool_sp1y_read : STD_LOGIC;
    signal int_trackerPool_sp1y_write : STD_LOGIC;
    signal int_trackerPool_sp1y_shift : UNSIGNED(0 downto 0);
    signal int_trackerPool_sp2y_address0 : UNSIGNED(3 downto 0);
    signal int_trackerPool_sp2y_ce0 : STD_LOGIC;
    signal int_trackerPool_sp2y_we0 : STD_LOGIC;
    signal int_trackerPool_sp2y_be0 : UNSIGNED(7 downto 0);
    signal int_trackerPool_sp2y_d0 : UNSIGNED(63 downto 0);
    signal int_trackerPool_sp2y_q0 : UNSIGNED(63 downto 0);
    signal int_trackerPool_sp2y_address1 : UNSIGNED(3 downto 0);
    signal int_trackerPool_sp2y_ce1 : STD_LOGIC;
    signal int_trackerPool_sp2y_we1 : STD_LOGIC;
    signal int_trackerPool_sp2y_be1 : UNSIGNED(7 downto 0);
    signal int_trackerPool_sp2y_d1 : UNSIGNED(63 downto 0);
    signal int_trackerPool_sp2y_q1 : UNSIGNED(63 downto 0);
    signal int_trackerPool_sp2y_read : STD_LOGIC;
    signal int_trackerPool_sp2y_write : STD_LOGIC;
    signal int_trackerPool_sp2y_shift : UNSIGNED(0 downto 0);
    signal int_trackerPool_sigmaX_address0 : UNSIGNED(3 downto 0);
    signal int_trackerPool_sigmaX_ce0 : STD_LOGIC;
    signal int_trackerPool_sigmaX_we0 : STD_LOGIC;
    signal int_trackerPool_sigmaX_be0 : UNSIGNED(7 downto 0);
    signal int_trackerPool_sigmaX_d0 : UNSIGNED(63 downto 0);
    signal int_trackerPool_sigmaX_q0 : UNSIGNED(63 downto 0);
    signal int_trackerPool_sigmaX_address1 : UNSIGNED(3 downto 0);
    signal int_trackerPool_sigmaX_ce1 : STD_LOGIC;
    signal int_trackerPool_sigmaX_we1 : STD_LOGIC;
    signal int_trackerPool_sigmaX_be1 : UNSIGNED(7 downto 0);
    signal int_trackerPool_sigmaX_d1 : UNSIGNED(63 downto 0);
    signal int_trackerPool_sigmaX_q1 : UNSIGNED(63 downto 0);
    signal int_trackerPool_sigmaX_read : STD_LOGIC;
    signal int_trackerPool_sigmaX_write : STD_LOGIC;
    signal int_trackerPool_sigmaX_shift : UNSIGNED(0 downto 0);
    signal int_trackerPool_sigmaY_address0 : UNSIGNED(3 downto 0);
    signal int_trackerPool_sigmaY_ce0 : STD_LOGIC;
    signal int_trackerPool_sigmaY_we0 : STD_LOGIC;
    signal int_trackerPool_sigmaY_be0 : UNSIGNED(7 downto 0);
    signal int_trackerPool_sigmaY_d0 : UNSIGNED(63 downto 0);
    signal int_trackerPool_sigmaY_q0 : UNSIGNED(63 downto 0);
    signal int_trackerPool_sigmaY_address1 : UNSIGNED(3 downto 0);
    signal int_trackerPool_sigmaY_ce1 : STD_LOGIC;
    signal int_trackerPool_sigmaY_we1 : STD_LOGIC;
    signal int_trackerPool_sigmaY_be1 : UNSIGNED(7 downto 0);
    signal int_trackerPool_sigmaY_d1 : UNSIGNED(63 downto 0);
    signal int_trackerPool_sigmaY_q1 : UNSIGNED(63 downto 0);
    signal int_trackerPool_sigmaY_read : STD_LOGIC;
    signal int_trackerPool_sigmaY_write : STD_LOGIC;
    signal int_trackerPool_sigmaY_shift : UNSIGNED(0 downto 0);
    signal int_trackerPool_sigmaXY_address0 : UNSIGNED(3 downto 0);
    signal int_trackerPool_sigmaXY_ce0 : STD_LOGIC;
    signal int_trackerPool_sigmaXY_we0 : STD_LOGIC;
    signal int_trackerPool_sigmaXY_be0 : UNSIGNED(7 downto 0);
    signal int_trackerPool_sigmaXY_d0 : UNSIGNED(63 downto 0);
    signal int_trackerPool_sigmaXY_q0 : UNSIGNED(63 downto 0);
    signal int_trackerPool_sigmaXY_address1 : UNSIGNED(3 downto 0);
    signal int_trackerPool_sigmaXY_ce1 : STD_LOGIC;
    signal int_trackerPool_sigmaXY_we1 : STD_LOGIC;
    signal int_trackerPool_sigmaXY_be1 : UNSIGNED(7 downto 0);
    signal int_trackerPool_sigmaXY_d1 : UNSIGNED(63 downto 0);
    signal int_trackerPool_sigmaXY_q1 : UNSIGNED(63 downto 0);
    signal int_trackerPool_sigmaXY_read : STD_LOGIC;
    signal int_trackerPool_sigmaXY_write : STD_LOGIC;
    signal int_trackerPool_sigmaXY_shift : UNSIGNED(0 downto 0);
    signal int_trackerPool_a_address0 : UNSIGNED(3 downto 0);
    signal int_trackerPool_a_ce0 : STD_LOGIC;
    signal int_trackerPool_a_we0 : STD_LOGIC;
    signal int_trackerPool_a_be0 : UNSIGNED(7 downto 0);
    signal int_trackerPool_a_d0 : UNSIGNED(63 downto 0);
    signal int_trackerPool_a_q0 : UNSIGNED(63 downto 0);
    signal int_trackerPool_a_address1 : UNSIGNED(3 downto 0);
    signal int_trackerPool_a_ce1 : STD_LOGIC;
    signal int_trackerPool_a_we1 : STD_LOGIC;
    signal int_trackerPool_a_be1 : UNSIGNED(7 downto 0);
    signal int_trackerPool_a_d1 : UNSIGNED(63 downto 0);
    signal int_trackerPool_a_q1 : UNSIGNED(63 downto 0);
    signal int_trackerPool_a_read : STD_LOGIC;
    signal int_trackerPool_a_write : STD_LOGIC;
    signal int_trackerPool_a_shift : UNSIGNED(0 downto 0);
    signal int_trackerPool_b_address0 : UNSIGNED(3 downto 0);
    signal int_trackerPool_b_ce0 : STD_LOGIC;
    signal int_trackerPool_b_we0 : STD_LOGIC;
    signal int_trackerPool_b_be0 : UNSIGNED(7 downto 0);
    signal int_trackerPool_b_d0 : UNSIGNED(63 downto 0);
    signal int_trackerPool_b_q0 : UNSIGNED(63 downto 0);
    signal int_trackerPool_b_address1 : UNSIGNED(3 downto 0);
    signal int_trackerPool_b_ce1 : STD_LOGIC;
    signal int_trackerPool_b_we1 : STD_LOGIC;
    signal int_trackerPool_b_be1 : UNSIGNED(7 downto 0);
    signal int_trackerPool_b_d1 : UNSIGNED(63 downto 0);
    signal int_trackerPool_b_q1 : UNSIGNED(63 downto 0);
    signal int_trackerPool_b_read : STD_LOGIC;
    signal int_trackerPool_b_write : STD_LOGIC;
    signal int_trackerPool_b_shift : UNSIGNED(0 downto 0);
    signal int_trackerPool_alpha_address0 : UNSIGNED(3 downto 0);
    signal int_trackerPool_alpha_ce0 : STD_LOGIC;
    signal int_trackerPool_alpha_we0 : STD_LOGIC;
    signal int_trackerPool_alpha_be0 : UNSIGNED(7 downto 0);
    signal int_trackerPool_alpha_d0 : UNSIGNED(63 downto 0);
    signal int_trackerPool_alpha_q0 : UNSIGNED(63 downto 0);
    signal int_trackerPool_alpha_address1 : UNSIGNED(3 downto 0);
    signal int_trackerPool_alpha_ce1 : STD_LOGIC;
    signal int_trackerPool_alpha_we1 : STD_LOGIC;
    signal int_trackerPool_alpha_be1 : UNSIGNED(7 downto 0);
    signal int_trackerPool_alpha_d1 : UNSIGNED(63 downto 0);
    signal int_trackerPool_alpha_q1 : UNSIGNED(63 downto 0);
    signal int_trackerPool_alpha_read : STD_LOGIC;
    signal int_trackerPool_alpha_write : STD_LOGIC;
    signal int_trackerPool_alpha_shift : UNSIGNED(0 downto 0);
    signal int_trackerPool_sumFlowX_address0 : UNSIGNED(3 downto 0);
    signal int_trackerPool_sumFlowX_ce0 : STD_LOGIC;
    signal int_trackerPool_sumFlowX_we0 : STD_LOGIC;
    signal int_trackerPool_sumFlowX_be0 : UNSIGNED(7 downto 0);
    signal int_trackerPool_sumFlowX_d0 : UNSIGNED(63 downto 0);
    signal int_trackerPool_sumFlowX_q0 : UNSIGNED(63 downto 0);
    signal int_trackerPool_sumFlowX_address1 : UNSIGNED(3 downto 0);
    signal int_trackerPool_sumFlowX_ce1 : STD_LOGIC;
    signal int_trackerPool_sumFlowX_we1 : STD_LOGIC;
    signal int_trackerPool_sumFlowX_be1 : UNSIGNED(7 downto 0);
    signal int_trackerPool_sumFlowX_d1 : UNSIGNED(63 downto 0);
    signal int_trackerPool_sumFlowX_q1 : UNSIGNED(63 downto 0);
    signal int_trackerPool_sumFlowX_read : STD_LOGIC;
    signal int_trackerPool_sumFlowX_write : STD_LOGIC;
    signal int_trackerPool_sumFlowX_shift : UNSIGNED(0 downto 0);
    signal int_trackerPool_sumFlowY_address0 : UNSIGNED(3 downto 0);
    signal int_trackerPool_sumFlowY_ce0 : STD_LOGIC;
    signal int_trackerPool_sumFlowY_we0 : STD_LOGIC;
    signal int_trackerPool_sumFlowY_be0 : UNSIGNED(7 downto 0);
    signal int_trackerPool_sumFlowY_d0 : UNSIGNED(63 downto 0);
    signal int_trackerPool_sumFlowY_q0 : UNSIGNED(63 downto 0);
    signal int_trackerPool_sumFlowY_address1 : UNSIGNED(3 downto 0);
    signal int_trackerPool_sumFlowY_ce1 : STD_LOGIC;
    signal int_trackerPool_sumFlowY_we1 : STD_LOGIC;
    signal int_trackerPool_sumFlowY_be1 : UNSIGNED(7 downto 0);
    signal int_trackerPool_sumFlowY_d1 : UNSIGNED(63 downto 0);
    signal int_trackerPool_sumFlowY_q1 : UNSIGNED(63 downto 0);
    signal int_trackerPool_sumFlowY_read : STD_LOGIC;
    signal int_trackerPool_sumFlowY_write : STD_LOGIC;
    signal int_trackerPool_sumFlowY_shift : UNSIGNED(0 downto 0);
    signal int_trackerPool_avgFlowX_address0 : UNSIGNED(3 downto 0);
    signal int_trackerPool_avgFlowX_ce0 : STD_LOGIC;
    signal int_trackerPool_avgFlowX_we0 : STD_LOGIC;
    signal int_trackerPool_avgFlowX_be0 : UNSIGNED(7 downto 0);
    signal int_trackerPool_avgFlowX_d0 : UNSIGNED(63 downto 0);
    signal int_trackerPool_avgFlowX_q0 : UNSIGNED(63 downto 0);
    signal int_trackerPool_avgFlowX_address1 : UNSIGNED(3 downto 0);
    signal int_trackerPool_avgFlowX_ce1 : STD_LOGIC;
    signal int_trackerPool_avgFlowX_we1 : STD_LOGIC;
    signal int_trackerPool_avgFlowX_be1 : UNSIGNED(7 downto 0);
    signal int_trackerPool_avgFlowX_d1 : UNSIGNED(63 downto 0);
    signal int_trackerPool_avgFlowX_q1 : UNSIGNED(63 downto 0);
    signal int_trackerPool_avgFlowX_read : STD_LOGIC;
    signal int_trackerPool_avgFlowX_write : STD_LOGIC;
    signal int_trackerPool_avgFlowX_shift : UNSIGNED(0 downto 0);
    signal int_trackerPool_avgFlowY_address0 : UNSIGNED(3 downto 0);
    signal int_trackerPool_avgFlowY_ce0 : STD_LOGIC;
    signal int_trackerPool_avgFlowY_we0 : STD_LOGIC;
    signal int_trackerPool_avgFlowY_be0 : UNSIGNED(7 downto 0);
    signal int_trackerPool_avgFlowY_d0 : UNSIGNED(63 downto 0);
    signal int_trackerPool_avgFlowY_q0 : UNSIGNED(63 downto 0);
    signal int_trackerPool_avgFlowY_address1 : UNSIGNED(3 downto 0);
    signal int_trackerPool_avgFlowY_ce1 : STD_LOGIC;
    signal int_trackerPool_avgFlowY_we1 : STD_LOGIC;
    signal int_trackerPool_avgFlowY_be1 : UNSIGNED(7 downto 0);
    signal int_trackerPool_avgFlowY_d1 : UNSIGNED(63 downto 0);
    signal int_trackerPool_avgFlowY_q1 : UNSIGNED(63 downto 0);
    signal int_trackerPool_avgFlowY_read : STD_LOGIC;
    signal int_trackerPool_avgFlowY_write : STD_LOGIC;
    signal int_trackerPool_avgFlowY_shift : UNSIGNED(0 downto 0);
    signal int_trackerPool_activity_address0 : UNSIGNED(3 downto 0);
    signal int_trackerPool_activity_ce0 : STD_LOGIC;
    signal int_trackerPool_activity_we0 : STD_LOGIC;
    signal int_trackerPool_activity_be0 : UNSIGNED(7 downto 0);
    signal int_trackerPool_activity_d0 : UNSIGNED(63 downto 0);
    signal int_trackerPool_activity_q0 : UNSIGNED(63 downto 0);
    signal int_trackerPool_activity_address1 : UNSIGNED(3 downto 0);
    signal int_trackerPool_activity_ce1 : STD_LOGIC;
    signal int_trackerPool_activity_we1 : STD_LOGIC;
    signal int_trackerPool_activity_be1 : UNSIGNED(7 downto 0);
    signal int_trackerPool_activity_d1 : UNSIGNED(63 downto 0);
    signal int_trackerPool_activity_q1 : UNSIGNED(63 downto 0);
    signal int_trackerPool_activity_read : STD_LOGIC;
    signal int_trackerPool_activity_write : STD_LOGIC;
    signal int_trackerPool_activity_shift : UNSIGNED(0 downto 0);
    signal int_trackerPool_lastTimeStamp_address0 : UNSIGNED(3 downto 0);
    signal int_trackerPool_lastTimeStamp_ce0 : STD_LOGIC;
    signal int_trackerPool_lastTimeStamp_we0 : STD_LOGIC;
    signal int_trackerPool_lastTimeStamp_be0 : UNSIGNED(3 downto 0);
    signal int_trackerPool_lastTimeStamp_d0 : UNSIGNED(31 downto 0);
    signal int_trackerPool_lastTimeStamp_q0 : UNSIGNED(31 downto 0);
    signal int_trackerPool_lastTimeStamp_address1 : UNSIGNED(3 downto 0);
    signal int_trackerPool_lastTimeStamp_ce1 : STD_LOGIC;
    signal int_trackerPool_lastTimeStamp_we1 : STD_LOGIC;
    signal int_trackerPool_lastTimeStamp_be1 : UNSIGNED(3 downto 0);
    signal int_trackerPool_lastTimeStamp_d1 : UNSIGNED(31 downto 0);
    signal int_trackerPool_lastTimeStamp_q1 : UNSIGNED(31 downto 0);
    signal int_trackerPool_lastTimeStamp_read : STD_LOGIC;
    signal int_trackerPool_lastTimeStamp_write : STD_LOGIC;

    component getTrackerID_hw_AXILiteS_s_axi_ram is
        generic (
            BYTES   : INTEGER :=4;
            DEPTH   : INTEGER :=256;
            AWIDTH  : INTEGER :=8);
        port (
            clk0    : in  STD_LOGIC;
            address0: in  UNSIGNED(AWIDTH-1 downto 0);
            ce0     : in  STD_LOGIC;
            we0     : in  STD_LOGIC;
            be0     : in  UNSIGNED(BYTES-1 downto 0);
            d0      : in  UNSIGNED(BYTES*8-1 downto 0);
            q0      : out UNSIGNED(BYTES*8-1 downto 0);
            clk1    : in  STD_LOGIC;
            address1: in  UNSIGNED(AWIDTH-1 downto 0);
            ce1     : in  STD_LOGIC;
            we1     : in  STD_LOGIC;
            be1     : in  UNSIGNED(BYTES-1 downto 0);
            d1      : in  UNSIGNED(BYTES*8-1 downto 0);
            q1      : out UNSIGNED(BYTES*8-1 downto 0));
    end component getTrackerID_hw_AXILiteS_s_axi_ram;

    function log2 (x : INTEGER) return INTEGER is
        variable n, m : INTEGER;
    begin
        n := 1;
        m := 2;
        while m < x loop
            n := n + 1;
            m := m * 2;
        end loop;
        return n;
    end function log2;

begin
-- ----------------------- Instantiation------------------
-- int_trackerPool_state
int_trackerPool_state : getTrackerID_hw_AXILiteS_s_axi_ram
generic map (
     BYTES    => 4,
     DEPTH    => 4,
     AWIDTH   => log2(4))
port map (
     clk0     => ACLK,
     address0 => int_trackerPool_state_address0,
     ce0      => int_trackerPool_state_ce0,
     we0      => int_trackerPool_state_we0,
     be0      => int_trackerPool_state_be0,
     d0       => int_trackerPool_state_d0,
     q0       => int_trackerPool_state_q0,
     clk1     => ACLK,
     address1 => int_trackerPool_state_address1,
     ce1      => int_trackerPool_state_ce1,
     we1      => int_trackerPool_state_we1,
     be1      => int_trackerPool_state_be1,
     d1       => int_trackerPool_state_d1,
     q1       => int_trackerPool_state_q1);
-- int_trackerPool_eventCount
int_trackerPool_eventCount : getTrackerID_hw_AXILiteS_s_axi_ram
generic map (
     BYTES    => 4,
     DEPTH    => 16,
     AWIDTH   => log2(16))
port map (
     clk0     => ACLK,
     address0 => int_trackerPool_eventCount_address0,
     ce0      => int_trackerPool_eventCount_ce0,
     we0      => int_trackerPool_eventCount_we0,
     be0      => int_trackerPool_eventCount_be0,
     d0       => int_trackerPool_eventCount_d0,
     q0       => int_trackerPool_eventCount_q0,
     clk1     => ACLK,
     address1 => int_trackerPool_eventCount_address1,
     ce1      => int_trackerPool_eventCount_ce1,
     we1      => int_trackerPool_eventCount_we1,
     be1      => int_trackerPool_eventCount_be1,
     d1       => int_trackerPool_eventCount_d1,
     q1       => int_trackerPool_eventCount_q1);
-- int_trackerPool_resetTime
int_trackerPool_resetTime : getTrackerID_hw_AXILiteS_s_axi_ram
generic map (
     BYTES    => 4,
     DEPTH    => 16,
     AWIDTH   => log2(16))
port map (
     clk0     => ACLK,
     address0 => int_trackerPool_resetTime_address0,
     ce0      => int_trackerPool_resetTime_ce0,
     we0      => int_trackerPool_resetTime_we0,
     be0      => int_trackerPool_resetTime_be0,
     d0       => int_trackerPool_resetTime_d0,
     q0       => int_trackerPool_resetTime_q0,
     clk1     => ACLK,
     address1 => int_trackerPool_resetTime_address1,
     ce1      => int_trackerPool_resetTime_ce1,
     we1      => int_trackerPool_resetTime_we1,
     be1      => int_trackerPool_resetTime_be1,
     d1       => int_trackerPool_resetTime_d1,
     q1       => int_trackerPool_resetTime_q1);
-- int_trackerPool_x
int_trackerPool_x : getTrackerID_hw_AXILiteS_s_axi_ram
generic map (
     BYTES    => 8,
     DEPTH    => 16,
     AWIDTH   => log2(16))
port map (
     clk0     => ACLK,
     address0 => int_trackerPool_x_address0,
     ce0      => int_trackerPool_x_ce0,
     we0      => int_trackerPool_x_we0,
     be0      => int_trackerPool_x_be0,
     d0       => int_trackerPool_x_d0,
     q0       => int_trackerPool_x_q0,
     clk1     => ACLK,
     address1 => int_trackerPool_x_address1,
     ce1      => int_trackerPool_x_ce1,
     we1      => int_trackerPool_x_we1,
     be1      => int_trackerPool_x_be1,
     d1       => int_trackerPool_x_d1,
     q1       => int_trackerPool_x_q1);
-- int_trackerPool_y
int_trackerPool_y : getTrackerID_hw_AXILiteS_s_axi_ram
generic map (
     BYTES    => 8,
     DEPTH    => 16,
     AWIDTH   => log2(16))
port map (
     clk0     => ACLK,
     address0 => int_trackerPool_y_address0,
     ce0      => int_trackerPool_y_ce0,
     we0      => int_trackerPool_y_we0,
     be0      => int_trackerPool_y_be0,
     d0       => int_trackerPool_y_d0,
     q0       => int_trackerPool_y_q0,
     clk1     => ACLK,
     address1 => int_trackerPool_y_address1,
     ce1      => int_trackerPool_y_ce1,
     we1      => int_trackerPool_y_we1,
     be1      => int_trackerPool_y_be1,
     d1       => int_trackerPool_y_d1,
     q1       => int_trackerPool_y_q1);
-- int_trackerPool_prevX
int_trackerPool_prevX : getTrackerID_hw_AXILiteS_s_axi_ram
generic map (
     BYTES    => 8,
     DEPTH    => 16,
     AWIDTH   => log2(16))
port map (
     clk0     => ACLK,
     address0 => int_trackerPool_prevX_address0,
     ce0      => int_trackerPool_prevX_ce0,
     we0      => int_trackerPool_prevX_we0,
     be0      => int_trackerPool_prevX_be0,
     d0       => int_trackerPool_prevX_d0,
     q0       => int_trackerPool_prevX_q0,
     clk1     => ACLK,
     address1 => int_trackerPool_prevX_address1,
     ce1      => int_trackerPool_prevX_ce1,
     we1      => int_trackerPool_prevX_we1,
     be1      => int_trackerPool_prevX_be1,
     d1       => int_trackerPool_prevX_d1,
     q1       => int_trackerPool_prevX_q1);
-- int_trackerPool_prevY
int_trackerPool_prevY : getTrackerID_hw_AXILiteS_s_axi_ram
generic map (
     BYTES    => 8,
     DEPTH    => 16,
     AWIDTH   => log2(16))
port map (
     clk0     => ACLK,
     address0 => int_trackerPool_prevY_address0,
     ce0      => int_trackerPool_prevY_ce0,
     we0      => int_trackerPool_prevY_we0,
     be0      => int_trackerPool_prevY_be0,
     d0       => int_trackerPool_prevY_d0,
     q0       => int_trackerPool_prevY_q0,
     clk1     => ACLK,
     address1 => int_trackerPool_prevY_address1,
     ce1      => int_trackerPool_prevY_ce1,
     we1      => int_trackerPool_prevY_we1,
     be1      => int_trackerPool_prevY_be1,
     d1       => int_trackerPool_prevY_d1,
     q1       => int_trackerPool_prevY_q1);
-- int_trackerPool_predX
int_trackerPool_predX : getTrackerID_hw_AXILiteS_s_axi_ram
generic map (
     BYTES    => 8,
     DEPTH    => 16,
     AWIDTH   => log2(16))
port map (
     clk0     => ACLK,
     address0 => int_trackerPool_predX_address0,
     ce0      => int_trackerPool_predX_ce0,
     we0      => int_trackerPool_predX_we0,
     be0      => int_trackerPool_predX_be0,
     d0       => int_trackerPool_predX_d0,
     q0       => int_trackerPool_predX_q0,
     clk1     => ACLK,
     address1 => int_trackerPool_predX_address1,
     ce1      => int_trackerPool_predX_ce1,
     we1      => int_trackerPool_predX_we1,
     be1      => int_trackerPool_predX_be1,
     d1       => int_trackerPool_predX_d1,
     q1       => int_trackerPool_predX_q1);
-- int_trackerPool_predY
int_trackerPool_predY : getTrackerID_hw_AXILiteS_s_axi_ram
generic map (
     BYTES    => 8,
     DEPTH    => 16,
     AWIDTH   => log2(16))
port map (
     clk0     => ACLK,
     address0 => int_trackerPool_predY_address0,
     ce0      => int_trackerPool_predY_ce0,
     we0      => int_trackerPool_predY_we0,
     be0      => int_trackerPool_predY_be0,
     d0       => int_trackerPool_predY_d0,
     q0       => int_trackerPool_predY_q0,
     clk1     => ACLK,
     address1 => int_trackerPool_predY_address1,
     ce1      => int_trackerPool_predY_ce1,
     we1      => int_trackerPool_predY_we1,
     be1      => int_trackerPool_predY_be1,
     d1       => int_trackerPool_predY_d1,
     q1       => int_trackerPool_predY_q1);
-- int_trackerPool_shapeFactor
int_trackerPool_shapeFactor : getTrackerID_hw_AXILiteS_s_axi_ram
generic map (
     BYTES    => 8,
     DEPTH    => 16,
     AWIDTH   => log2(16))
port map (
     clk0     => ACLK,
     address0 => int_trackerPool_shapeFactor_address0,
     ce0      => int_trackerPool_shapeFactor_ce0,
     we0      => int_trackerPool_shapeFactor_we0,
     be0      => int_trackerPool_shapeFactor_be0,
     d0       => int_trackerPool_shapeFactor_d0,
     q0       => int_trackerPool_shapeFactor_q0,
     clk1     => ACLK,
     address1 => int_trackerPool_shapeFactor_address1,
     ce1      => int_trackerPool_shapeFactor_ce1,
     we1      => int_trackerPool_shapeFactor_we1,
     be1      => int_trackerPool_shapeFactor_be1,
     d1       => int_trackerPool_shapeFactor_d1,
     q1       => int_trackerPool_shapeFactor_q1);
-- int_trackerPool_origShapeFactor
int_trackerPool_origShapeFactor : getTrackerID_hw_AXILiteS_s_axi_ram
generic map (
     BYTES    => 8,
     DEPTH    => 16,
     AWIDTH   => log2(16))
port map (
     clk0     => ACLK,
     address0 => int_trackerPool_origShapeFactor_address0,
     ce0      => int_trackerPool_origShapeFactor_ce0,
     we0      => int_trackerPool_origShapeFactor_we0,
     be0      => int_trackerPool_origShapeFactor_be0,
     d0       => int_trackerPool_origShapeFactor_d0,
     q0       => int_trackerPool_origShapeFactor_q0,
     clk1     => ACLK,
     address1 => int_trackerPool_origShapeFactor_address1,
     ce1      => int_trackerPool_origShapeFactor_ce1,
     we1      => int_trackerPool_origShapeFactor_we1,
     be1      => int_trackerPool_origShapeFactor_be1,
     d1       => int_trackerPool_origShapeFactor_d1,
     q1       => int_trackerPool_origShapeFactor_q1);
-- int_trackerPool_posFactor
int_trackerPool_posFactor : getTrackerID_hw_AXILiteS_s_axi_ram
generic map (
     BYTES    => 8,
     DEPTH    => 16,
     AWIDTH   => log2(16))
port map (
     clk0     => ACLK,
     address0 => int_trackerPool_posFactor_address0,
     ce0      => int_trackerPool_posFactor_ce0,
     we0      => int_trackerPool_posFactor_we0,
     be0      => int_trackerPool_posFactor_be0,
     d0       => int_trackerPool_posFactor_d0,
     q0       => int_trackerPool_posFactor_q0,
     clk1     => ACLK,
     address1 => int_trackerPool_posFactor_address1,
     ce1      => int_trackerPool_posFactor_ce1,
     we1      => int_trackerPool_posFactor_we1,
     be1      => int_trackerPool_posFactor_be1,
     d1       => int_trackerPool_posFactor_d1,
     q1       => int_trackerPool_posFactor_q1);
-- int_trackerPool_velFactor
int_trackerPool_velFactor : getTrackerID_hw_AXILiteS_s_axi_ram
generic map (
     BYTES    => 8,
     DEPTH    => 16,
     AWIDTH   => log2(16))
port map (
     clk0     => ACLK,
     address0 => int_trackerPool_velFactor_address0,
     ce0      => int_trackerPool_velFactor_ce0,
     we0      => int_trackerPool_velFactor_we0,
     be0      => int_trackerPool_velFactor_be0,
     d0       => int_trackerPool_velFactor_d0,
     q0       => int_trackerPool_velFactor_q0,
     clk1     => ACLK,
     address1 => int_trackerPool_velFactor_address1,
     ce1      => int_trackerPool_velFactor_ce1,
     we1      => int_trackerPool_velFactor_we1,
     be1      => int_trackerPool_velFactor_be1,
     d1       => int_trackerPool_velFactor_d1,
     q1       => int_trackerPool_velFactor_q1);
-- int_trackerPool_clusterSize
int_trackerPool_clusterSize : getTrackerID_hw_AXILiteS_s_axi_ram
generic map (
     BYTES    => 8,
     DEPTH    => 16,
     AWIDTH   => log2(16))
port map (
     clk0     => ACLK,
     address0 => int_trackerPool_clusterSize_address0,
     ce0      => int_trackerPool_clusterSize_ce0,
     we0      => int_trackerPool_clusterSize_we0,
     be0      => int_trackerPool_clusterSize_be0,
     d0       => int_trackerPool_clusterSize_d0,
     q0       => int_trackerPool_clusterSize_q0,
     clk1     => ACLK,
     address1 => int_trackerPool_clusterSize_address1,
     ce1      => int_trackerPool_clusterSize_ce1,
     we1      => int_trackerPool_clusterSize_we1,
     be1      => int_trackerPool_clusterSize_be1,
     d1       => int_trackerPool_clusterSize_d1,
     q1       => int_trackerPool_clusterSize_q1);
-- int_trackerPool_smoothingFactor
int_trackerPool_smoothingFactor : getTrackerID_hw_AXILiteS_s_axi_ram
generic map (
     BYTES    => 8,
     DEPTH    => 16,
     AWIDTH   => log2(16))
port map (
     clk0     => ACLK,
     address0 => int_trackerPool_smoothingFactor_address0,
     ce0      => int_trackerPool_smoothingFactor_ce0,
     we0      => int_trackerPool_smoothingFactor_we0,
     be0      => int_trackerPool_smoothingFactor_be0,
     d0       => int_trackerPool_smoothingFactor_d0,
     q0       => int_trackerPool_smoothingFactor_q0,
     clk1     => ACLK,
     address1 => int_trackerPool_smoothingFactor_address1,
     ce1      => int_trackerPool_smoothingFactor_ce1,
     we1      => int_trackerPool_smoothingFactor_we1,
     be1      => int_trackerPool_smoothingFactor_be1,
     d1       => int_trackerPool_smoothingFactor_d1,
     q1       => int_trackerPool_smoothingFactor_q1);
-- int_trackerPool_sp1x
int_trackerPool_sp1x : getTrackerID_hw_AXILiteS_s_axi_ram
generic map (
     BYTES    => 8,
     DEPTH    => 16,
     AWIDTH   => log2(16))
port map (
     clk0     => ACLK,
     address0 => int_trackerPool_sp1x_address0,
     ce0      => int_trackerPool_sp1x_ce0,
     we0      => int_trackerPool_sp1x_we0,
     be0      => int_trackerPool_sp1x_be0,
     d0       => int_trackerPool_sp1x_d0,
     q0       => int_trackerPool_sp1x_q0,
     clk1     => ACLK,
     address1 => int_trackerPool_sp1x_address1,
     ce1      => int_trackerPool_sp1x_ce1,
     we1      => int_trackerPool_sp1x_we1,
     be1      => int_trackerPool_sp1x_be1,
     d1       => int_trackerPool_sp1x_d1,
     q1       => int_trackerPool_sp1x_q1);
-- int_trackerPool_sp2x
int_trackerPool_sp2x : getTrackerID_hw_AXILiteS_s_axi_ram
generic map (
     BYTES    => 8,
     DEPTH    => 16,
     AWIDTH   => log2(16))
port map (
     clk0     => ACLK,
     address0 => int_trackerPool_sp2x_address0,
     ce0      => int_trackerPool_sp2x_ce0,
     we0      => int_trackerPool_sp2x_we0,
     be0      => int_trackerPool_sp2x_be0,
     d0       => int_trackerPool_sp2x_d0,
     q0       => int_trackerPool_sp2x_q0,
     clk1     => ACLK,
     address1 => int_trackerPool_sp2x_address1,
     ce1      => int_trackerPool_sp2x_ce1,
     we1      => int_trackerPool_sp2x_we1,
     be1      => int_trackerPool_sp2x_be1,
     d1       => int_trackerPool_sp2x_d1,
     q1       => int_trackerPool_sp2x_q1);
-- int_trackerPool_sp1y
int_trackerPool_sp1y : getTrackerID_hw_AXILiteS_s_axi_ram
generic map (
     BYTES    => 8,
     DEPTH    => 16,
     AWIDTH   => log2(16))
port map (
     clk0     => ACLK,
     address0 => int_trackerPool_sp1y_address0,
     ce0      => int_trackerPool_sp1y_ce0,
     we0      => int_trackerPool_sp1y_we0,
     be0      => int_trackerPool_sp1y_be0,
     d0       => int_trackerPool_sp1y_d0,
     q0       => int_trackerPool_sp1y_q0,
     clk1     => ACLK,
     address1 => int_trackerPool_sp1y_address1,
     ce1      => int_trackerPool_sp1y_ce1,
     we1      => int_trackerPool_sp1y_we1,
     be1      => int_trackerPool_sp1y_be1,
     d1       => int_trackerPool_sp1y_d1,
     q1       => int_trackerPool_sp1y_q1);
-- int_trackerPool_sp2y
int_trackerPool_sp2y : getTrackerID_hw_AXILiteS_s_axi_ram
generic map (
     BYTES    => 8,
     DEPTH    => 16,
     AWIDTH   => log2(16))
port map (
     clk0     => ACLK,
     address0 => int_trackerPool_sp2y_address0,
     ce0      => int_trackerPool_sp2y_ce0,
     we0      => int_trackerPool_sp2y_we0,
     be0      => int_trackerPool_sp2y_be0,
     d0       => int_trackerPool_sp2y_d0,
     q0       => int_trackerPool_sp2y_q0,
     clk1     => ACLK,
     address1 => int_trackerPool_sp2y_address1,
     ce1      => int_trackerPool_sp2y_ce1,
     we1      => int_trackerPool_sp2y_we1,
     be1      => int_trackerPool_sp2y_be1,
     d1       => int_trackerPool_sp2y_d1,
     q1       => int_trackerPool_sp2y_q1);
-- int_trackerPool_sigmaX
int_trackerPool_sigmaX : getTrackerID_hw_AXILiteS_s_axi_ram
generic map (
     BYTES    => 8,
     DEPTH    => 16,
     AWIDTH   => log2(16))
port map (
     clk0     => ACLK,
     address0 => int_trackerPool_sigmaX_address0,
     ce0      => int_trackerPool_sigmaX_ce0,
     we0      => int_trackerPool_sigmaX_we0,
     be0      => int_trackerPool_sigmaX_be0,
     d0       => int_trackerPool_sigmaX_d0,
     q0       => int_trackerPool_sigmaX_q0,
     clk1     => ACLK,
     address1 => int_trackerPool_sigmaX_address1,
     ce1      => int_trackerPool_sigmaX_ce1,
     we1      => int_trackerPool_sigmaX_we1,
     be1      => int_trackerPool_sigmaX_be1,
     d1       => int_trackerPool_sigmaX_d1,
     q1       => int_trackerPool_sigmaX_q1);
-- int_trackerPool_sigmaY
int_trackerPool_sigmaY : getTrackerID_hw_AXILiteS_s_axi_ram
generic map (
     BYTES    => 8,
     DEPTH    => 16,
     AWIDTH   => log2(16))
port map (
     clk0     => ACLK,
     address0 => int_trackerPool_sigmaY_address0,
     ce0      => int_trackerPool_sigmaY_ce0,
     we0      => int_trackerPool_sigmaY_we0,
     be0      => int_trackerPool_sigmaY_be0,
     d0       => int_trackerPool_sigmaY_d0,
     q0       => int_trackerPool_sigmaY_q0,
     clk1     => ACLK,
     address1 => int_trackerPool_sigmaY_address1,
     ce1      => int_trackerPool_sigmaY_ce1,
     we1      => int_trackerPool_sigmaY_we1,
     be1      => int_trackerPool_sigmaY_be1,
     d1       => int_trackerPool_sigmaY_d1,
     q1       => int_trackerPool_sigmaY_q1);
-- int_trackerPool_sigmaXY
int_trackerPool_sigmaXY : getTrackerID_hw_AXILiteS_s_axi_ram
generic map (
     BYTES    => 8,
     DEPTH    => 16,
     AWIDTH   => log2(16))
port map (
     clk0     => ACLK,
     address0 => int_trackerPool_sigmaXY_address0,
     ce0      => int_trackerPool_sigmaXY_ce0,
     we0      => int_trackerPool_sigmaXY_we0,
     be0      => int_trackerPool_sigmaXY_be0,
     d0       => int_trackerPool_sigmaXY_d0,
     q0       => int_trackerPool_sigmaXY_q0,
     clk1     => ACLK,
     address1 => int_trackerPool_sigmaXY_address1,
     ce1      => int_trackerPool_sigmaXY_ce1,
     we1      => int_trackerPool_sigmaXY_we1,
     be1      => int_trackerPool_sigmaXY_be1,
     d1       => int_trackerPool_sigmaXY_d1,
     q1       => int_trackerPool_sigmaXY_q1);
-- int_trackerPool_a
int_trackerPool_a : getTrackerID_hw_AXILiteS_s_axi_ram
generic map (
     BYTES    => 8,
     DEPTH    => 16,
     AWIDTH   => log2(16))
port map (
     clk0     => ACLK,
     address0 => int_trackerPool_a_address0,
     ce0      => int_trackerPool_a_ce0,
     we0      => int_trackerPool_a_we0,
     be0      => int_trackerPool_a_be0,
     d0       => int_trackerPool_a_d0,
     q0       => int_trackerPool_a_q0,
     clk1     => ACLK,
     address1 => int_trackerPool_a_address1,
     ce1      => int_trackerPool_a_ce1,
     we1      => int_trackerPool_a_we1,
     be1      => int_trackerPool_a_be1,
     d1       => int_trackerPool_a_d1,
     q1       => int_trackerPool_a_q1);
-- int_trackerPool_b
int_trackerPool_b : getTrackerID_hw_AXILiteS_s_axi_ram
generic map (
     BYTES    => 8,
     DEPTH    => 16,
     AWIDTH   => log2(16))
port map (
     clk0     => ACLK,
     address0 => int_trackerPool_b_address0,
     ce0      => int_trackerPool_b_ce0,
     we0      => int_trackerPool_b_we0,
     be0      => int_trackerPool_b_be0,
     d0       => int_trackerPool_b_d0,
     q0       => int_trackerPool_b_q0,
     clk1     => ACLK,
     address1 => int_trackerPool_b_address1,
     ce1      => int_trackerPool_b_ce1,
     we1      => int_trackerPool_b_we1,
     be1      => int_trackerPool_b_be1,
     d1       => int_trackerPool_b_d1,
     q1       => int_trackerPool_b_q1);
-- int_trackerPool_alpha
int_trackerPool_alpha : getTrackerID_hw_AXILiteS_s_axi_ram
generic map (
     BYTES    => 8,
     DEPTH    => 16,
     AWIDTH   => log2(16))
port map (
     clk0     => ACLK,
     address0 => int_trackerPool_alpha_address0,
     ce0      => int_trackerPool_alpha_ce0,
     we0      => int_trackerPool_alpha_we0,
     be0      => int_trackerPool_alpha_be0,
     d0       => int_trackerPool_alpha_d0,
     q0       => int_trackerPool_alpha_q0,
     clk1     => ACLK,
     address1 => int_trackerPool_alpha_address1,
     ce1      => int_trackerPool_alpha_ce1,
     we1      => int_trackerPool_alpha_we1,
     be1      => int_trackerPool_alpha_be1,
     d1       => int_trackerPool_alpha_d1,
     q1       => int_trackerPool_alpha_q1);
-- int_trackerPool_sumFlowX
int_trackerPool_sumFlowX : getTrackerID_hw_AXILiteS_s_axi_ram
generic map (
     BYTES    => 8,
     DEPTH    => 16,
     AWIDTH   => log2(16))
port map (
     clk0     => ACLK,
     address0 => int_trackerPool_sumFlowX_address0,
     ce0      => int_trackerPool_sumFlowX_ce0,
     we0      => int_trackerPool_sumFlowX_we0,
     be0      => int_trackerPool_sumFlowX_be0,
     d0       => int_trackerPool_sumFlowX_d0,
     q0       => int_trackerPool_sumFlowX_q0,
     clk1     => ACLK,
     address1 => int_trackerPool_sumFlowX_address1,
     ce1      => int_trackerPool_sumFlowX_ce1,
     we1      => int_trackerPool_sumFlowX_we1,
     be1      => int_trackerPool_sumFlowX_be1,
     d1       => int_trackerPool_sumFlowX_d1,
     q1       => int_trackerPool_sumFlowX_q1);
-- int_trackerPool_sumFlowY
int_trackerPool_sumFlowY : getTrackerID_hw_AXILiteS_s_axi_ram
generic map (
     BYTES    => 8,
     DEPTH    => 16,
     AWIDTH   => log2(16))
port map (
     clk0     => ACLK,
     address0 => int_trackerPool_sumFlowY_address0,
     ce0      => int_trackerPool_sumFlowY_ce0,
     we0      => int_trackerPool_sumFlowY_we0,
     be0      => int_trackerPool_sumFlowY_be0,
     d0       => int_trackerPool_sumFlowY_d0,
     q0       => int_trackerPool_sumFlowY_q0,
     clk1     => ACLK,
     address1 => int_trackerPool_sumFlowY_address1,
     ce1      => int_trackerPool_sumFlowY_ce1,
     we1      => int_trackerPool_sumFlowY_we1,
     be1      => int_trackerPool_sumFlowY_be1,
     d1       => int_trackerPool_sumFlowY_d1,
     q1       => int_trackerPool_sumFlowY_q1);
-- int_trackerPool_avgFlowX
int_trackerPool_avgFlowX : getTrackerID_hw_AXILiteS_s_axi_ram
generic map (
     BYTES    => 8,
     DEPTH    => 16,
     AWIDTH   => log2(16))
port map (
     clk0     => ACLK,
     address0 => int_trackerPool_avgFlowX_address0,
     ce0      => int_trackerPool_avgFlowX_ce0,
     we0      => int_trackerPool_avgFlowX_we0,
     be0      => int_trackerPool_avgFlowX_be0,
     d0       => int_trackerPool_avgFlowX_d0,
     q0       => int_trackerPool_avgFlowX_q0,
     clk1     => ACLK,
     address1 => int_trackerPool_avgFlowX_address1,
     ce1      => int_trackerPool_avgFlowX_ce1,
     we1      => int_trackerPool_avgFlowX_we1,
     be1      => int_trackerPool_avgFlowX_be1,
     d1       => int_trackerPool_avgFlowX_d1,
     q1       => int_trackerPool_avgFlowX_q1);
-- int_trackerPool_avgFlowY
int_trackerPool_avgFlowY : getTrackerID_hw_AXILiteS_s_axi_ram
generic map (
     BYTES    => 8,
     DEPTH    => 16,
     AWIDTH   => log2(16))
port map (
     clk0     => ACLK,
     address0 => int_trackerPool_avgFlowY_address0,
     ce0      => int_trackerPool_avgFlowY_ce0,
     we0      => int_trackerPool_avgFlowY_we0,
     be0      => int_trackerPool_avgFlowY_be0,
     d0       => int_trackerPool_avgFlowY_d0,
     q0       => int_trackerPool_avgFlowY_q0,
     clk1     => ACLK,
     address1 => int_trackerPool_avgFlowY_address1,
     ce1      => int_trackerPool_avgFlowY_ce1,
     we1      => int_trackerPool_avgFlowY_we1,
     be1      => int_trackerPool_avgFlowY_be1,
     d1       => int_trackerPool_avgFlowY_d1,
     q1       => int_trackerPool_avgFlowY_q1);
-- int_trackerPool_activity
int_trackerPool_activity : getTrackerID_hw_AXILiteS_s_axi_ram
generic map (
     BYTES    => 8,
     DEPTH    => 16,
     AWIDTH   => log2(16))
port map (
     clk0     => ACLK,
     address0 => int_trackerPool_activity_address0,
     ce0      => int_trackerPool_activity_ce0,
     we0      => int_trackerPool_activity_we0,
     be0      => int_trackerPool_activity_be0,
     d0       => int_trackerPool_activity_d0,
     q0       => int_trackerPool_activity_q0,
     clk1     => ACLK,
     address1 => int_trackerPool_activity_address1,
     ce1      => int_trackerPool_activity_ce1,
     we1      => int_trackerPool_activity_we1,
     be1      => int_trackerPool_activity_be1,
     d1       => int_trackerPool_activity_d1,
     q1       => int_trackerPool_activity_q1);
-- int_trackerPool_lastTimeStamp
int_trackerPool_lastTimeStamp : getTrackerID_hw_AXILiteS_s_axi_ram
generic map (
     BYTES    => 4,
     DEPTH    => 16,
     AWIDTH   => log2(16))
port map (
     clk0     => ACLK,
     address0 => int_trackerPool_lastTimeStamp_address0,
     ce0      => int_trackerPool_lastTimeStamp_ce0,
     we0      => int_trackerPool_lastTimeStamp_we0,
     be0      => int_trackerPool_lastTimeStamp_be0,
     d0       => int_trackerPool_lastTimeStamp_d0,
     q0       => int_trackerPool_lastTimeStamp_q0,
     clk1     => ACLK,
     address1 => int_trackerPool_lastTimeStamp_address1,
     ce1      => int_trackerPool_lastTimeStamp_ce1,
     we1      => int_trackerPool_lastTimeStamp_we1,
     be1      => int_trackerPool_lastTimeStamp_be1,
     d1       => int_trackerPool_lastTimeStamp_d1,
     q1       => int_trackerPool_lastTimeStamp_q1);

-- ----------------------- AXI WRITE ---------------------
    AWREADY_t <=  '1' when wstate = wridle else '0';
    AWREADY   <=  AWREADY_t;
    WREADY_t  <=  '1' when wstate = wrdata else '0';
    WREADY    <=  WREADY_t;
    BRESP     <=  "00";  -- OKAY
    BVALID    <=  '1' when wstate = wrresp else '0';
    wmask     <=  (31 downto 24 => WSTRB(3), 23 downto 16 => WSTRB(2), 15 downto 8 => WSTRB(1), 7 downto 0 => WSTRB(0));
    aw_hs     <=  AWVALID and AWREADY_t;
    w_hs      <=  WVALID and WREADY_t;

    -- write FSM
    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                wstate <= wrreset;
            elsif (ACLK_EN = '1') then
                wstate <= wnext;
            end if;
        end if;
    end process;

    process (wstate, AWVALID, WVALID, BREADY)
    begin
        case (wstate) is
        when wridle =>
            if (AWVALID = '1') then
                wnext <= wrdata;
            else
                wnext <= wridle;
            end if;
        when wrdata =>
            if (WVALID = '1') then
                wnext <= wrresp;
            else
                wnext <= wrdata;
            end if;
        when wrresp =>
            if (BREADY = '1') then
                wnext <= wridle;
            else
                wnext <= wrresp;
            end if;
        when others =>
            wnext <= wridle;
        end case;
    end process;

    waddr_proc : process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (aw_hs = '1') then
                    waddr <= UNSIGNED(AWADDR(ADDR_BITS-1 downto 0));
                end if;
            end if;
        end if;
    end process;

-- ----------------------- AXI READ ----------------------
    ARREADY_t <= '1' when (rstate = rdidle) else '0';
    ARREADY <= ARREADY_t;
    RDATA   <= STD_LOGIC_VECTOR(rdata_data);
    RRESP   <= "00";  -- OKAY
    RVALID_t  <= '1' when (rstate = rddata) and (int_trackerPool_state_read = '0') and (int_trackerPool_eventCount_read = '0') and (int_trackerPool_resetTime_read = '0') and (int_trackerPool_x_read = '0') and (int_trackerPool_y_read = '0') and (int_trackerPool_prevX_read = '0') and (int_trackerPool_prevY_read = '0') and (int_trackerPool_predX_read = '0') and (int_trackerPool_predY_read = '0') and (int_trackerPool_shapeFactor_read = '0') and (int_trackerPool_origShapeFactor_read = '0') and (int_trackerPool_posFactor_read = '0') and (int_trackerPool_velFactor_read = '0') and (int_trackerPool_clusterSize_read = '0') and (int_trackerPool_smoothingFactor_read = '0') and (int_trackerPool_sp1x_read = '0') and (int_trackerPool_sp2x_read = '0') and (int_trackerPool_sp1y_read = '0') and (int_trackerPool_sp2y_read = '0') and (int_trackerPool_sigmaX_read = '0') and (int_trackerPool_sigmaY_read = '0') and (int_trackerPool_sigmaXY_read = '0') and (int_trackerPool_a_read = '0') and (int_trackerPool_b_read = '0') and (int_trackerPool_alpha_read = '0') and (int_trackerPool_sumFlowX_read = '0') and (int_trackerPool_sumFlowY_read = '0') and (int_trackerPool_avgFlowX_read = '0') and (int_trackerPool_avgFlowY_read = '0') and (int_trackerPool_activity_read = '0') and (int_trackerPool_lastTimeStamp_read = '0') else '0';
    RVALID    <= RVALID_t;
    ar_hs   <= ARVALID and ARREADY_t;
    raddr   <= UNSIGNED(ARADDR(ADDR_BITS-1 downto 0));

    -- read FSM
    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                rstate <= rdreset;
            elsif (ACLK_EN = '1') then
                rstate <= rnext;
            end if;
        end if;
    end process;

    process (rstate, ARVALID, RREADY, RVALID_t)
    begin
        case (rstate) is
        when rdidle =>
            if (ARVALID = '1') then
                rnext <= rddata;
            else
                rnext <= rdidle;
            end if;
        when rddata =>
            if (RREADY = '1' and RVALID_t = '1') then
                rnext <= rdidle;
            else
                rnext <= rddata;
            end if;
        when others =>
            rnext <= rdidle;
        end case;
    end process;

    rdata_proc : process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (ar_hs = '1') then
                elsif (int_trackerPool_state_read = '1') then
                    rdata_data <= int_trackerPool_state_q1;
                elsif (int_trackerPool_eventCount_read = '1') then
                    rdata_data <= int_trackerPool_eventCount_q1;
                elsif (int_trackerPool_resetTime_read = '1') then
                    rdata_data <= int_trackerPool_resetTime_q1;
                elsif (int_trackerPool_x_read = '1') then
                    rdata_data <= RESIZE(SHIFT_RIGHT(int_trackerPool_x_q1, TO_INTEGER(int_trackerPool_x_shift)*32), 32);
                elsif (int_trackerPool_y_read = '1') then
                    rdata_data <= RESIZE(SHIFT_RIGHT(int_trackerPool_y_q1, TO_INTEGER(int_trackerPool_y_shift)*32), 32);
                elsif (int_trackerPool_prevX_read = '1') then
                    rdata_data <= RESIZE(SHIFT_RIGHT(int_trackerPool_prevX_q1, TO_INTEGER(int_trackerPool_prevX_shift)*32), 32);
                elsif (int_trackerPool_prevY_read = '1') then
                    rdata_data <= RESIZE(SHIFT_RIGHT(int_trackerPool_prevY_q1, TO_INTEGER(int_trackerPool_prevY_shift)*32), 32);
                elsif (int_trackerPool_predX_read = '1') then
                    rdata_data <= RESIZE(SHIFT_RIGHT(int_trackerPool_predX_q1, TO_INTEGER(int_trackerPool_predX_shift)*32), 32);
                elsif (int_trackerPool_predY_read = '1') then
                    rdata_data <= RESIZE(SHIFT_RIGHT(int_trackerPool_predY_q1, TO_INTEGER(int_trackerPool_predY_shift)*32), 32);
                elsif (int_trackerPool_shapeFactor_read = '1') then
                    rdata_data <= RESIZE(SHIFT_RIGHT(int_trackerPool_shapeFactor_q1, TO_INTEGER(int_trackerPool_shapeFactor_shift)*32), 32);
                elsif (int_trackerPool_origShapeFactor_read = '1') then
                    rdata_data <= RESIZE(SHIFT_RIGHT(int_trackerPool_origShapeFactor_q1, TO_INTEGER(int_trackerPool_origShapeFactor_shift)*32), 32);
                elsif (int_trackerPool_posFactor_read = '1') then
                    rdata_data <= RESIZE(SHIFT_RIGHT(int_trackerPool_posFactor_q1, TO_INTEGER(int_trackerPool_posFactor_shift)*32), 32);
                elsif (int_trackerPool_velFactor_read = '1') then
                    rdata_data <= RESIZE(SHIFT_RIGHT(int_trackerPool_velFactor_q1, TO_INTEGER(int_trackerPool_velFactor_shift)*32), 32);
                elsif (int_trackerPool_clusterSize_read = '1') then
                    rdata_data <= RESIZE(SHIFT_RIGHT(int_trackerPool_clusterSize_q1, TO_INTEGER(int_trackerPool_clusterSize_shift)*32), 32);
                elsif (int_trackerPool_smoothingFactor_read = '1') then
                    rdata_data <= RESIZE(SHIFT_RIGHT(int_trackerPool_smoothingFactor_q1, TO_INTEGER(int_trackerPool_smoothingFactor_shift)*32), 32);
                elsif (int_trackerPool_sp1x_read = '1') then
                    rdata_data <= RESIZE(SHIFT_RIGHT(int_trackerPool_sp1x_q1, TO_INTEGER(int_trackerPool_sp1x_shift)*32), 32);
                elsif (int_trackerPool_sp2x_read = '1') then
                    rdata_data <= RESIZE(SHIFT_RIGHT(int_trackerPool_sp2x_q1, TO_INTEGER(int_trackerPool_sp2x_shift)*32), 32);
                elsif (int_trackerPool_sp1y_read = '1') then
                    rdata_data <= RESIZE(SHIFT_RIGHT(int_trackerPool_sp1y_q1, TO_INTEGER(int_trackerPool_sp1y_shift)*32), 32);
                elsif (int_trackerPool_sp2y_read = '1') then
                    rdata_data <= RESIZE(SHIFT_RIGHT(int_trackerPool_sp2y_q1, TO_INTEGER(int_trackerPool_sp2y_shift)*32), 32);
                elsif (int_trackerPool_sigmaX_read = '1') then
                    rdata_data <= RESIZE(SHIFT_RIGHT(int_trackerPool_sigmaX_q1, TO_INTEGER(int_trackerPool_sigmaX_shift)*32), 32);
                elsif (int_trackerPool_sigmaY_read = '1') then
                    rdata_data <= RESIZE(SHIFT_RIGHT(int_trackerPool_sigmaY_q1, TO_INTEGER(int_trackerPool_sigmaY_shift)*32), 32);
                elsif (int_trackerPool_sigmaXY_read = '1') then
                    rdata_data <= RESIZE(SHIFT_RIGHT(int_trackerPool_sigmaXY_q1, TO_INTEGER(int_trackerPool_sigmaXY_shift)*32), 32);
                elsif (int_trackerPool_a_read = '1') then
                    rdata_data <= RESIZE(SHIFT_RIGHT(int_trackerPool_a_q1, TO_INTEGER(int_trackerPool_a_shift)*32), 32);
                elsif (int_trackerPool_b_read = '1') then
                    rdata_data <= RESIZE(SHIFT_RIGHT(int_trackerPool_b_q1, TO_INTEGER(int_trackerPool_b_shift)*32), 32);
                elsif (int_trackerPool_alpha_read = '1') then
                    rdata_data <= RESIZE(SHIFT_RIGHT(int_trackerPool_alpha_q1, TO_INTEGER(int_trackerPool_alpha_shift)*32), 32);
                elsif (int_trackerPool_sumFlowX_read = '1') then
                    rdata_data <= RESIZE(SHIFT_RIGHT(int_trackerPool_sumFlowX_q1, TO_INTEGER(int_trackerPool_sumFlowX_shift)*32), 32);
                elsif (int_trackerPool_sumFlowY_read = '1') then
                    rdata_data <= RESIZE(SHIFT_RIGHT(int_trackerPool_sumFlowY_q1, TO_INTEGER(int_trackerPool_sumFlowY_shift)*32), 32);
                elsif (int_trackerPool_avgFlowX_read = '1') then
                    rdata_data <= RESIZE(SHIFT_RIGHT(int_trackerPool_avgFlowX_q1, TO_INTEGER(int_trackerPool_avgFlowX_shift)*32), 32);
                elsif (int_trackerPool_avgFlowY_read = '1') then
                    rdata_data <= RESIZE(SHIFT_RIGHT(int_trackerPool_avgFlowY_q1, TO_INTEGER(int_trackerPool_avgFlowY_shift)*32), 32);
                elsif (int_trackerPool_activity_read = '1') then
                    rdata_data <= RESIZE(SHIFT_RIGHT(int_trackerPool_activity_q1, TO_INTEGER(int_trackerPool_activity_shift)*32), 32);
                elsif (int_trackerPool_lastTimeStamp_read = '1') then
                    rdata_data <= int_trackerPool_lastTimeStamp_q1;
                end if;
            end if;
        end if;
    end process;

-- ----------------------- Register logic ----------------

-- ----------------------- Memory logic ------------------
    -- trackerPool_state
    int_trackerPool_state_address0 <= SHIFT_RIGHT(UNSIGNED(trackerPool_state_address0), 2)(1 downto 0);
    int_trackerPool_state_ce0 <= trackerPool_state_ce0;
    int_trackerPool_state_we0 <= '0';
    int_trackerPool_state_be0 <= (others => '0');
    int_trackerPool_state_d0 <= (others => '0');
    trackerPool_state_q0 <= STD_LOGIC_VECTOR(SHIFT_RIGHT(int_trackerPool_state_q0, TO_INTEGER(int_trackerPool_state_shift) * 8)(1 downto 0));
    int_trackerPool_state_address1 <= raddr(3 downto 2) when ar_hs = '1' else waddr(3 downto 2);
    int_trackerPool_state_ce1 <= '1' when ar_hs = '1' or (int_trackerPool_state_write = '1' and WVALID  = '1') else '0';
    int_trackerPool_state_we1 <= '1' when int_trackerPool_state_write = '1' and WVALID = '1' else '0';
    int_trackerPool_state_be1 <= UNSIGNED(WSTRB);
    int_trackerPool_state_d1 <= UNSIGNED(WDATA);
    -- trackerPool_eventCount
    int_trackerPool_eventCount_address0 <= UNSIGNED(trackerPool_eventCount_address0);
    int_trackerPool_eventCount_ce0 <= trackerPool_eventCount_ce0;
    int_trackerPool_eventCount_we0 <= trackerPool_eventCount_we0;
    int_trackerPool_eventCount_be0 <= (others => trackerPool_eventCount_we0);
    int_trackerPool_eventCount_d0 <= RESIZE(UNSIGNED(trackerPool_eventCount_d0), 32);
    int_trackerPool_eventCount_address1 <= raddr(5 downto 2) when ar_hs = '1' else waddr(5 downto 2);
    int_trackerPool_eventCount_ce1 <= '1' when ar_hs = '1' or (int_trackerPool_eventCount_write = '1' and WVALID  = '1') else '0';
    int_trackerPool_eventCount_we1 <= '1' when int_trackerPool_eventCount_write = '1' and WVALID = '1' else '0';
    int_trackerPool_eventCount_be1 <= UNSIGNED(WSTRB);
    int_trackerPool_eventCount_d1 <= UNSIGNED(WDATA);
    -- trackerPool_resetTime
    int_trackerPool_resetTime_address0 <= UNSIGNED(trackerPool_resetTime_address0);
    int_trackerPool_resetTime_ce0 <= trackerPool_resetTime_ce0;
    int_trackerPool_resetTime_we0 <= trackerPool_resetTime_we0;
    int_trackerPool_resetTime_be0 <= (others => trackerPool_resetTime_we0);
    int_trackerPool_resetTime_d0 <= RESIZE(UNSIGNED(trackerPool_resetTime_d0), 32);
    int_trackerPool_resetTime_address1 <= raddr(5 downto 2) when ar_hs = '1' else waddr(5 downto 2);
    int_trackerPool_resetTime_ce1 <= '1' when ar_hs = '1' or (int_trackerPool_resetTime_write = '1' and WVALID  = '1') else '0';
    int_trackerPool_resetTime_we1 <= '1' when int_trackerPool_resetTime_write = '1' and WVALID = '1' else '0';
    int_trackerPool_resetTime_be1 <= UNSIGNED(WSTRB);
    int_trackerPool_resetTime_d1 <= UNSIGNED(WDATA);
    -- trackerPool_x
    int_trackerPool_x_address0 <= UNSIGNED(trackerPool_x_address0);
    int_trackerPool_x_ce0 <= trackerPool_x_ce0;
    int_trackerPool_x_we0 <= '0';
    int_trackerPool_x_be0 <= (others => '0');
    int_trackerPool_x_d0 <= (others => '0');
    trackerPool_x_q0     <= STD_LOGIC_VECTOR(RESIZE(int_trackerPool_x_q0, 64));
    int_trackerPool_x_address1 <= raddr(6 downto 3) when ar_hs = '1' else waddr(6 downto 3);
    int_trackerPool_x_ce1 <= '1' when ar_hs = '1' or (int_trackerPool_x_write = '1' and WVALID  = '1') else '0';
    int_trackerPool_x_we1 <= '1' when int_trackerPool_x_write = '1' and WVALID = '1' else '0';
    int_trackerPool_x_be1 <= SHIFT_LEFT(RESIZE(UNSIGNED(WSTRB), 8), TO_INTEGER(waddr(2 downto 2)) * 4);
    int_trackerPool_x_d1 <= RESIZE(UNSIGNED(WDATA) & UNSIGNED(WDATA), 64);
    -- trackerPool_y
    int_trackerPool_y_address0 <= UNSIGNED(trackerPool_y_address0);
    int_trackerPool_y_ce0 <= trackerPool_y_ce0;
    int_trackerPool_y_we0 <= '0';
    int_trackerPool_y_be0 <= (others => '0');
    int_trackerPool_y_d0 <= (others => '0');
    trackerPool_y_q0     <= STD_LOGIC_VECTOR(RESIZE(int_trackerPool_y_q0, 64));
    int_trackerPool_y_address1 <= raddr(6 downto 3) when ar_hs = '1' else waddr(6 downto 3);
    int_trackerPool_y_ce1 <= '1' when ar_hs = '1' or (int_trackerPool_y_write = '1' and WVALID  = '1') else '0';
    int_trackerPool_y_we1 <= '1' when int_trackerPool_y_write = '1' and WVALID = '1' else '0';
    int_trackerPool_y_be1 <= SHIFT_LEFT(RESIZE(UNSIGNED(WSTRB), 8), TO_INTEGER(waddr(2 downto 2)) * 4);
    int_trackerPool_y_d1 <= RESIZE(UNSIGNED(WDATA) & UNSIGNED(WDATA), 64);
    -- trackerPool_prevX
    int_trackerPool_prevX_address0 <= UNSIGNED(trackerPool_prevX_address0);
    int_trackerPool_prevX_ce0 <= trackerPool_prevX_ce0;
    int_trackerPool_prevX_we0 <= trackerPool_prevX_we0;
    int_trackerPool_prevX_be0 <= (others => trackerPool_prevX_we0);
    int_trackerPool_prevX_d0 <= RESIZE(UNSIGNED(trackerPool_prevX_d0), 64);
    int_trackerPool_prevX_address1 <= raddr(6 downto 3) when ar_hs = '1' else waddr(6 downto 3);
    int_trackerPool_prevX_ce1 <= '1' when ar_hs = '1' or (int_trackerPool_prevX_write = '1' and WVALID  = '1') else '0';
    int_trackerPool_prevX_we1 <= '1' when int_trackerPool_prevX_write = '1' and WVALID = '1' else '0';
    int_trackerPool_prevX_be1 <= SHIFT_LEFT(RESIZE(UNSIGNED(WSTRB), 8), TO_INTEGER(waddr(2 downto 2)) * 4);
    int_trackerPool_prevX_d1 <= RESIZE(UNSIGNED(WDATA) & UNSIGNED(WDATA), 64);
    -- trackerPool_prevY
    int_trackerPool_prevY_address0 <= UNSIGNED(trackerPool_prevY_address0);
    int_trackerPool_prevY_ce0 <= trackerPool_prevY_ce0;
    int_trackerPool_prevY_we0 <= trackerPool_prevY_we0;
    int_trackerPool_prevY_be0 <= (others => trackerPool_prevY_we0);
    int_trackerPool_prevY_d0 <= RESIZE(UNSIGNED(trackerPool_prevY_d0), 64);
    int_trackerPool_prevY_address1 <= raddr(6 downto 3) when ar_hs = '1' else waddr(6 downto 3);
    int_trackerPool_prevY_ce1 <= '1' when ar_hs = '1' or (int_trackerPool_prevY_write = '1' and WVALID  = '1') else '0';
    int_trackerPool_prevY_we1 <= '1' when int_trackerPool_prevY_write = '1' and WVALID = '1' else '0';
    int_trackerPool_prevY_be1 <= SHIFT_LEFT(RESIZE(UNSIGNED(WSTRB), 8), TO_INTEGER(waddr(2 downto 2)) * 4);
    int_trackerPool_prevY_d1 <= RESIZE(UNSIGNED(WDATA) & UNSIGNED(WDATA), 64);
    -- trackerPool_predX
    int_trackerPool_predX_address0 <= UNSIGNED(trackerPool_predX_address0);
    int_trackerPool_predX_ce0 <= trackerPool_predX_ce0;
    int_trackerPool_predX_we0 <= trackerPool_predX_we0;
    int_trackerPool_predX_be0 <= (others => trackerPool_predX_we0);
    int_trackerPool_predX_d0 <= RESIZE(UNSIGNED(trackerPool_predX_d0), 64);
    int_trackerPool_predX_address1 <= raddr(6 downto 3) when ar_hs = '1' else waddr(6 downto 3);
    int_trackerPool_predX_ce1 <= '1' when ar_hs = '1' or (int_trackerPool_predX_write = '1' and WVALID  = '1') else '0';
    int_trackerPool_predX_we1 <= '1' when int_trackerPool_predX_write = '1' and WVALID = '1' else '0';
    int_trackerPool_predX_be1 <= SHIFT_LEFT(RESIZE(UNSIGNED(WSTRB), 8), TO_INTEGER(waddr(2 downto 2)) * 4);
    int_trackerPool_predX_d1 <= RESIZE(UNSIGNED(WDATA) & UNSIGNED(WDATA), 64);
    -- trackerPool_predY
    int_trackerPool_predY_address0 <= UNSIGNED(trackerPool_predY_address0);
    int_trackerPool_predY_ce0 <= trackerPool_predY_ce0;
    int_trackerPool_predY_we0 <= trackerPool_predY_we0;
    int_trackerPool_predY_be0 <= (others => trackerPool_predY_we0);
    int_trackerPool_predY_d0 <= RESIZE(UNSIGNED(trackerPool_predY_d0), 64);
    int_trackerPool_predY_address1 <= raddr(6 downto 3) when ar_hs = '1' else waddr(6 downto 3);
    int_trackerPool_predY_ce1 <= '1' when ar_hs = '1' or (int_trackerPool_predY_write = '1' and WVALID  = '1') else '0';
    int_trackerPool_predY_we1 <= '1' when int_trackerPool_predY_write = '1' and WVALID = '1' else '0';
    int_trackerPool_predY_be1 <= SHIFT_LEFT(RESIZE(UNSIGNED(WSTRB), 8), TO_INTEGER(waddr(2 downto 2)) * 4);
    int_trackerPool_predY_d1 <= RESIZE(UNSIGNED(WDATA) & UNSIGNED(WDATA), 64);
    -- trackerPool_shapeFactor
    int_trackerPool_shapeFactor_address0 <= UNSIGNED(trackerPool_shapeFactor_address0);
    int_trackerPool_shapeFactor_ce0 <= trackerPool_shapeFactor_ce0;
    int_trackerPool_shapeFactor_we0 <= trackerPool_shapeFactor_we0;
    int_trackerPool_shapeFactor_be0 <= (others => trackerPool_shapeFactor_we0);
    int_trackerPool_shapeFactor_d0 <= RESIZE(UNSIGNED(trackerPool_shapeFactor_d0), 64);
    int_trackerPool_shapeFactor_address1 <= raddr(6 downto 3) when ar_hs = '1' else waddr(6 downto 3);
    int_trackerPool_shapeFactor_ce1 <= '1' when ar_hs = '1' or (int_trackerPool_shapeFactor_write = '1' and WVALID  = '1') else '0';
    int_trackerPool_shapeFactor_we1 <= '1' when int_trackerPool_shapeFactor_write = '1' and WVALID = '1' else '0';
    int_trackerPool_shapeFactor_be1 <= SHIFT_LEFT(RESIZE(UNSIGNED(WSTRB), 8), TO_INTEGER(waddr(2 downto 2)) * 4);
    int_trackerPool_shapeFactor_d1 <= RESIZE(UNSIGNED(WDATA) & UNSIGNED(WDATA), 64);
    -- trackerPool_origShapeFactor
    int_trackerPool_origShapeFactor_address0 <= UNSIGNED(trackerPool_origShapeFactor_address0);
    int_trackerPool_origShapeFactor_ce0 <= trackerPool_origShapeFactor_ce0;
    int_trackerPool_origShapeFactor_we0 <= trackerPool_origShapeFactor_we0;
    int_trackerPool_origShapeFactor_be0 <= (others => trackerPool_origShapeFactor_we0);
    int_trackerPool_origShapeFactor_d0 <= RESIZE(UNSIGNED(trackerPool_origShapeFactor_d0), 64);
    int_trackerPool_origShapeFactor_address1 <= raddr(6 downto 3) when ar_hs = '1' else waddr(6 downto 3);
    int_trackerPool_origShapeFactor_ce1 <= '1' when ar_hs = '1' or (int_trackerPool_origShapeFactor_write = '1' and WVALID  = '1') else '0';
    int_trackerPool_origShapeFactor_we1 <= '1' when int_trackerPool_origShapeFactor_write = '1' and WVALID = '1' else '0';
    int_trackerPool_origShapeFactor_be1 <= SHIFT_LEFT(RESIZE(UNSIGNED(WSTRB), 8), TO_INTEGER(waddr(2 downto 2)) * 4);
    int_trackerPool_origShapeFactor_d1 <= RESIZE(UNSIGNED(WDATA) & UNSIGNED(WDATA), 64);
    -- trackerPool_posFactor
    int_trackerPool_posFactor_address0 <= UNSIGNED(trackerPool_posFactor_address0);
    int_trackerPool_posFactor_ce0 <= trackerPool_posFactor_ce0;
    int_trackerPool_posFactor_we0 <= trackerPool_posFactor_we0;
    int_trackerPool_posFactor_be0 <= (others => trackerPool_posFactor_we0);
    int_trackerPool_posFactor_d0 <= RESIZE(UNSIGNED(trackerPool_posFactor_d0), 64);
    int_trackerPool_posFactor_address1 <= raddr(6 downto 3) when ar_hs = '1' else waddr(6 downto 3);
    int_trackerPool_posFactor_ce1 <= '1' when ar_hs = '1' or (int_trackerPool_posFactor_write = '1' and WVALID  = '1') else '0';
    int_trackerPool_posFactor_we1 <= '1' when int_trackerPool_posFactor_write = '1' and WVALID = '1' else '0';
    int_trackerPool_posFactor_be1 <= SHIFT_LEFT(RESIZE(UNSIGNED(WSTRB), 8), TO_INTEGER(waddr(2 downto 2)) * 4);
    int_trackerPool_posFactor_d1 <= RESIZE(UNSIGNED(WDATA) & UNSIGNED(WDATA), 64);
    -- trackerPool_velFactor
    int_trackerPool_velFactor_address0 <= UNSIGNED(trackerPool_velFactor_address0);
    int_trackerPool_velFactor_ce0 <= trackerPool_velFactor_ce0;
    int_trackerPool_velFactor_we0 <= trackerPool_velFactor_we0;
    int_trackerPool_velFactor_be0 <= (others => trackerPool_velFactor_we0);
    int_trackerPool_velFactor_d0 <= RESIZE(UNSIGNED(trackerPool_velFactor_d0), 64);
    int_trackerPool_velFactor_address1 <= raddr(6 downto 3) when ar_hs = '1' else waddr(6 downto 3);
    int_trackerPool_velFactor_ce1 <= '1' when ar_hs = '1' or (int_trackerPool_velFactor_write = '1' and WVALID  = '1') else '0';
    int_trackerPool_velFactor_we1 <= '1' when int_trackerPool_velFactor_write = '1' and WVALID = '1' else '0';
    int_trackerPool_velFactor_be1 <= SHIFT_LEFT(RESIZE(UNSIGNED(WSTRB), 8), TO_INTEGER(waddr(2 downto 2)) * 4);
    int_trackerPool_velFactor_d1 <= RESIZE(UNSIGNED(WDATA) & UNSIGNED(WDATA), 64);
    -- trackerPool_clusterSize
    int_trackerPool_clusterSize_address0 <= UNSIGNED(trackerPool_clusterSize_address0);
    int_trackerPool_clusterSize_ce0 <= trackerPool_clusterSize_ce0;
    int_trackerPool_clusterSize_we0 <= trackerPool_clusterSize_we0;
    int_trackerPool_clusterSize_be0 <= (others => trackerPool_clusterSize_we0);
    int_trackerPool_clusterSize_d0 <= RESIZE(UNSIGNED(trackerPool_clusterSize_d0), 64);
    int_trackerPool_clusterSize_address1 <= raddr(6 downto 3) when ar_hs = '1' else waddr(6 downto 3);
    int_trackerPool_clusterSize_ce1 <= '1' when ar_hs = '1' or (int_trackerPool_clusterSize_write = '1' and WVALID  = '1') else '0';
    int_trackerPool_clusterSize_we1 <= '1' when int_trackerPool_clusterSize_write = '1' and WVALID = '1' else '0';
    int_trackerPool_clusterSize_be1 <= SHIFT_LEFT(RESIZE(UNSIGNED(WSTRB), 8), TO_INTEGER(waddr(2 downto 2)) * 4);
    int_trackerPool_clusterSize_d1 <= RESIZE(UNSIGNED(WDATA) & UNSIGNED(WDATA), 64);
    -- trackerPool_smoothingFactor
    int_trackerPool_smoothingFactor_address0 <= UNSIGNED(trackerPool_smoothingFactor_address0);
    int_trackerPool_smoothingFactor_ce0 <= trackerPool_smoothingFactor_ce0;
    int_trackerPool_smoothingFactor_we0 <= trackerPool_smoothingFactor_we0;
    int_trackerPool_smoothingFactor_be0 <= (others => trackerPool_smoothingFactor_we0);
    int_trackerPool_smoothingFactor_d0 <= RESIZE(UNSIGNED(trackerPool_smoothingFactor_d0), 64);
    int_trackerPool_smoothingFactor_address1 <= raddr(6 downto 3) when ar_hs = '1' else waddr(6 downto 3);
    int_trackerPool_smoothingFactor_ce1 <= '1' when ar_hs = '1' or (int_trackerPool_smoothingFactor_write = '1' and WVALID  = '1') else '0';
    int_trackerPool_smoothingFactor_we1 <= '1' when int_trackerPool_smoothingFactor_write = '1' and WVALID = '1' else '0';
    int_trackerPool_smoothingFactor_be1 <= SHIFT_LEFT(RESIZE(UNSIGNED(WSTRB), 8), TO_INTEGER(waddr(2 downto 2)) * 4);
    int_trackerPool_smoothingFactor_d1 <= RESIZE(UNSIGNED(WDATA) & UNSIGNED(WDATA), 64);
    -- trackerPool_sp1x
    int_trackerPool_sp1x_address0 <= UNSIGNED(trackerPool_sp1x_address0);
    int_trackerPool_sp1x_ce0 <= trackerPool_sp1x_ce0;
    int_trackerPool_sp1x_we0 <= trackerPool_sp1x_we0;
    int_trackerPool_sp1x_be0 <= (others => trackerPool_sp1x_we0);
    int_trackerPool_sp1x_d0 <= RESIZE(UNSIGNED(trackerPool_sp1x_d0), 64);
    int_trackerPool_sp1x_address1 <= raddr(6 downto 3) when ar_hs = '1' else waddr(6 downto 3);
    int_trackerPool_sp1x_ce1 <= '1' when ar_hs = '1' or (int_trackerPool_sp1x_write = '1' and WVALID  = '1') else '0';
    int_trackerPool_sp1x_we1 <= '1' when int_trackerPool_sp1x_write = '1' and WVALID = '1' else '0';
    int_trackerPool_sp1x_be1 <= SHIFT_LEFT(RESIZE(UNSIGNED(WSTRB), 8), TO_INTEGER(waddr(2 downto 2)) * 4);
    int_trackerPool_sp1x_d1 <= RESIZE(UNSIGNED(WDATA) & UNSIGNED(WDATA), 64);
    -- trackerPool_sp2x
    int_trackerPool_sp2x_address0 <= UNSIGNED(trackerPool_sp2x_address0);
    int_trackerPool_sp2x_ce0 <= trackerPool_sp2x_ce0;
    int_trackerPool_sp2x_we0 <= trackerPool_sp2x_we0;
    int_trackerPool_sp2x_be0 <= (others => trackerPool_sp2x_we0);
    int_trackerPool_sp2x_d0 <= RESIZE(UNSIGNED(trackerPool_sp2x_d0), 64);
    int_trackerPool_sp2x_address1 <= raddr(6 downto 3) when ar_hs = '1' else waddr(6 downto 3);
    int_trackerPool_sp2x_ce1 <= '1' when ar_hs = '1' or (int_trackerPool_sp2x_write = '1' and WVALID  = '1') else '0';
    int_trackerPool_sp2x_we1 <= '1' when int_trackerPool_sp2x_write = '1' and WVALID = '1' else '0';
    int_trackerPool_sp2x_be1 <= SHIFT_LEFT(RESIZE(UNSIGNED(WSTRB), 8), TO_INTEGER(waddr(2 downto 2)) * 4);
    int_trackerPool_sp2x_d1 <= RESIZE(UNSIGNED(WDATA) & UNSIGNED(WDATA), 64);
    -- trackerPool_sp1y
    int_trackerPool_sp1y_address0 <= UNSIGNED(trackerPool_sp1y_address0);
    int_trackerPool_sp1y_ce0 <= trackerPool_sp1y_ce0;
    int_trackerPool_sp1y_we0 <= trackerPool_sp1y_we0;
    int_trackerPool_sp1y_be0 <= (others => trackerPool_sp1y_we0);
    int_trackerPool_sp1y_d0 <= RESIZE(UNSIGNED(trackerPool_sp1y_d0), 64);
    int_trackerPool_sp1y_address1 <= raddr(6 downto 3) when ar_hs = '1' else waddr(6 downto 3);
    int_trackerPool_sp1y_ce1 <= '1' when ar_hs = '1' or (int_trackerPool_sp1y_write = '1' and WVALID  = '1') else '0';
    int_trackerPool_sp1y_we1 <= '1' when int_trackerPool_sp1y_write = '1' and WVALID = '1' else '0';
    int_trackerPool_sp1y_be1 <= SHIFT_LEFT(RESIZE(UNSIGNED(WSTRB), 8), TO_INTEGER(waddr(2 downto 2)) * 4);
    int_trackerPool_sp1y_d1 <= RESIZE(UNSIGNED(WDATA) & UNSIGNED(WDATA), 64);
    -- trackerPool_sp2y
    int_trackerPool_sp2y_address0 <= UNSIGNED(trackerPool_sp2y_address0);
    int_trackerPool_sp2y_ce0 <= trackerPool_sp2y_ce0;
    int_trackerPool_sp2y_we0 <= trackerPool_sp2y_we0;
    int_trackerPool_sp2y_be0 <= (others => trackerPool_sp2y_we0);
    int_trackerPool_sp2y_d0 <= RESIZE(UNSIGNED(trackerPool_sp2y_d0), 64);
    int_trackerPool_sp2y_address1 <= raddr(6 downto 3) when ar_hs = '1' else waddr(6 downto 3);
    int_trackerPool_sp2y_ce1 <= '1' when ar_hs = '1' or (int_trackerPool_sp2y_write = '1' and WVALID  = '1') else '0';
    int_trackerPool_sp2y_we1 <= '1' when int_trackerPool_sp2y_write = '1' and WVALID = '1' else '0';
    int_trackerPool_sp2y_be1 <= SHIFT_LEFT(RESIZE(UNSIGNED(WSTRB), 8), TO_INTEGER(waddr(2 downto 2)) * 4);
    int_trackerPool_sp2y_d1 <= RESIZE(UNSIGNED(WDATA) & UNSIGNED(WDATA), 64);
    -- trackerPool_sigmaX
    int_trackerPool_sigmaX_address0 <= UNSIGNED(trackerPool_sigmaX_address0);
    int_trackerPool_sigmaX_ce0 <= trackerPool_sigmaX_ce0;
    int_trackerPool_sigmaX_we0 <= '0';
    int_trackerPool_sigmaX_be0 <= (others => '0');
    int_trackerPool_sigmaX_d0 <= (others => '0');
    trackerPool_sigmaX_q0 <= STD_LOGIC_VECTOR(RESIZE(int_trackerPool_sigmaX_q0, 64));
    int_trackerPool_sigmaX_address1 <= raddr(6 downto 3) when ar_hs = '1' else waddr(6 downto 3);
    int_trackerPool_sigmaX_ce1 <= '1' when ar_hs = '1' or (int_trackerPool_sigmaX_write = '1' and WVALID  = '1') else '0';
    int_trackerPool_sigmaX_we1 <= '1' when int_trackerPool_sigmaX_write = '1' and WVALID = '1' else '0';
    int_trackerPool_sigmaX_be1 <= SHIFT_LEFT(RESIZE(UNSIGNED(WSTRB), 8), TO_INTEGER(waddr(2 downto 2)) * 4);
    int_trackerPool_sigmaX_d1 <= RESIZE(UNSIGNED(WDATA) & UNSIGNED(WDATA), 64);
    -- trackerPool_sigmaY
    int_trackerPool_sigmaY_address0 <= UNSIGNED(trackerPool_sigmaY_address0);
    int_trackerPool_sigmaY_ce0 <= trackerPool_sigmaY_ce0;
    int_trackerPool_sigmaY_we0 <= '0';
    int_trackerPool_sigmaY_be0 <= (others => '0');
    int_trackerPool_sigmaY_d0 <= (others => '0');
    trackerPool_sigmaY_q0 <= STD_LOGIC_VECTOR(RESIZE(int_trackerPool_sigmaY_q0, 64));
    int_trackerPool_sigmaY_address1 <= raddr(6 downto 3) when ar_hs = '1' else waddr(6 downto 3);
    int_trackerPool_sigmaY_ce1 <= '1' when ar_hs = '1' or (int_trackerPool_sigmaY_write = '1' and WVALID  = '1') else '0';
    int_trackerPool_sigmaY_we1 <= '1' when int_trackerPool_sigmaY_write = '1' and WVALID = '1' else '0';
    int_trackerPool_sigmaY_be1 <= SHIFT_LEFT(RESIZE(UNSIGNED(WSTRB), 8), TO_INTEGER(waddr(2 downto 2)) * 4);
    int_trackerPool_sigmaY_d1 <= RESIZE(UNSIGNED(WDATA) & UNSIGNED(WDATA), 64);
    -- trackerPool_sigmaXY
    int_trackerPool_sigmaXY_address0 <= UNSIGNED(trackerPool_sigmaXY_address0);
    int_trackerPool_sigmaXY_ce0 <= trackerPool_sigmaXY_ce0;
    int_trackerPool_sigmaXY_we0 <= '0';
    int_trackerPool_sigmaXY_be0 <= (others => '0');
    int_trackerPool_sigmaXY_d0 <= (others => '0');
    trackerPool_sigmaXY_q0 <= STD_LOGIC_VECTOR(RESIZE(int_trackerPool_sigmaXY_q0, 64));
    int_trackerPool_sigmaXY_address1 <= raddr(6 downto 3) when ar_hs = '1' else waddr(6 downto 3);
    int_trackerPool_sigmaXY_ce1 <= '1' when ar_hs = '1' or (int_trackerPool_sigmaXY_write = '1' and WVALID  = '1') else '0';
    int_trackerPool_sigmaXY_we1 <= '1' when int_trackerPool_sigmaXY_write = '1' and WVALID = '1' else '0';
    int_trackerPool_sigmaXY_be1 <= SHIFT_LEFT(RESIZE(UNSIGNED(WSTRB), 8), TO_INTEGER(waddr(2 downto 2)) * 4);
    int_trackerPool_sigmaXY_d1 <= RESIZE(UNSIGNED(WDATA) & UNSIGNED(WDATA), 64);
    -- trackerPool_a
    int_trackerPool_a_address0 <= UNSIGNED(trackerPool_a_address0);
    int_trackerPool_a_ce0 <= trackerPool_a_ce0;
    int_trackerPool_a_we0 <= trackerPool_a_we0;
    int_trackerPool_a_be0 <= (others => trackerPool_a_we0);
    int_trackerPool_a_d0 <= RESIZE(UNSIGNED(trackerPool_a_d0), 64);
    int_trackerPool_a_address1 <= raddr(6 downto 3) when ar_hs = '1' else waddr(6 downto 3);
    int_trackerPool_a_ce1 <= '1' when ar_hs = '1' or (int_trackerPool_a_write = '1' and WVALID  = '1') else '0';
    int_trackerPool_a_we1 <= '1' when int_trackerPool_a_write = '1' and WVALID = '1' else '0';
    int_trackerPool_a_be1 <= SHIFT_LEFT(RESIZE(UNSIGNED(WSTRB), 8), TO_INTEGER(waddr(2 downto 2)) * 4);
    int_trackerPool_a_d1 <= RESIZE(UNSIGNED(WDATA) & UNSIGNED(WDATA), 64);
    -- trackerPool_b
    int_trackerPool_b_address0 <= UNSIGNED(trackerPool_b_address0);
    int_trackerPool_b_ce0 <= trackerPool_b_ce0;
    int_trackerPool_b_we0 <= trackerPool_b_we0;
    int_trackerPool_b_be0 <= (others => trackerPool_b_we0);
    int_trackerPool_b_d0 <= RESIZE(UNSIGNED(trackerPool_b_d0), 64);
    int_trackerPool_b_address1 <= raddr(6 downto 3) when ar_hs = '1' else waddr(6 downto 3);
    int_trackerPool_b_ce1 <= '1' when ar_hs = '1' or (int_trackerPool_b_write = '1' and WVALID  = '1') else '0';
    int_trackerPool_b_we1 <= '1' when int_trackerPool_b_write = '1' and WVALID = '1' else '0';
    int_trackerPool_b_be1 <= SHIFT_LEFT(RESIZE(UNSIGNED(WSTRB), 8), TO_INTEGER(waddr(2 downto 2)) * 4);
    int_trackerPool_b_d1 <= RESIZE(UNSIGNED(WDATA) & UNSIGNED(WDATA), 64);
    -- trackerPool_alpha
    int_trackerPool_alpha_address0 <= UNSIGNED(trackerPool_alpha_address0);
    int_trackerPool_alpha_ce0 <= trackerPool_alpha_ce0;
    int_trackerPool_alpha_we0 <= trackerPool_alpha_we0;
    int_trackerPool_alpha_be0 <= (others => trackerPool_alpha_we0);
    int_trackerPool_alpha_d0 <= RESIZE(UNSIGNED(trackerPool_alpha_d0), 64);
    int_trackerPool_alpha_address1 <= raddr(6 downto 3) when ar_hs = '1' else waddr(6 downto 3);
    int_trackerPool_alpha_ce1 <= '1' when ar_hs = '1' or (int_trackerPool_alpha_write = '1' and WVALID  = '1') else '0';
    int_trackerPool_alpha_we1 <= '1' when int_trackerPool_alpha_write = '1' and WVALID = '1' else '0';
    int_trackerPool_alpha_be1 <= SHIFT_LEFT(RESIZE(UNSIGNED(WSTRB), 8), TO_INTEGER(waddr(2 downto 2)) * 4);
    int_trackerPool_alpha_d1 <= RESIZE(UNSIGNED(WDATA) & UNSIGNED(WDATA), 64);
    -- trackerPool_sumFlowX
    int_trackerPool_sumFlowX_address0 <= UNSIGNED(trackerPool_sumFlowX_address0);
    int_trackerPool_sumFlowX_ce0 <= trackerPool_sumFlowX_ce0;
    int_trackerPool_sumFlowX_we0 <= trackerPool_sumFlowX_we0;
    int_trackerPool_sumFlowX_be0 <= (others => trackerPool_sumFlowX_we0);
    int_trackerPool_sumFlowX_d0 <= RESIZE(UNSIGNED(trackerPool_sumFlowX_d0), 64);
    int_trackerPool_sumFlowX_address1 <= raddr(6 downto 3) when ar_hs = '1' else waddr(6 downto 3);
    int_trackerPool_sumFlowX_ce1 <= '1' when ar_hs = '1' or (int_trackerPool_sumFlowX_write = '1' and WVALID  = '1') else '0';
    int_trackerPool_sumFlowX_we1 <= '1' when int_trackerPool_sumFlowX_write = '1' and WVALID = '1' else '0';
    int_trackerPool_sumFlowX_be1 <= SHIFT_LEFT(RESIZE(UNSIGNED(WSTRB), 8), TO_INTEGER(waddr(2 downto 2)) * 4);
    int_trackerPool_sumFlowX_d1 <= RESIZE(UNSIGNED(WDATA) & UNSIGNED(WDATA), 64);
    -- trackerPool_sumFlowY
    int_trackerPool_sumFlowY_address0 <= UNSIGNED(trackerPool_sumFlowY_address0);
    int_trackerPool_sumFlowY_ce0 <= trackerPool_sumFlowY_ce0;
    int_trackerPool_sumFlowY_we0 <= trackerPool_sumFlowY_we0;
    int_trackerPool_sumFlowY_be0 <= (others => trackerPool_sumFlowY_we0);
    int_trackerPool_sumFlowY_d0 <= RESIZE(UNSIGNED(trackerPool_sumFlowY_d0), 64);
    int_trackerPool_sumFlowY_address1 <= raddr(6 downto 3) when ar_hs = '1' else waddr(6 downto 3);
    int_trackerPool_sumFlowY_ce1 <= '1' when ar_hs = '1' or (int_trackerPool_sumFlowY_write = '1' and WVALID  = '1') else '0';
    int_trackerPool_sumFlowY_we1 <= '1' when int_trackerPool_sumFlowY_write = '1' and WVALID = '1' else '0';
    int_trackerPool_sumFlowY_be1 <= SHIFT_LEFT(RESIZE(UNSIGNED(WSTRB), 8), TO_INTEGER(waddr(2 downto 2)) * 4);
    int_trackerPool_sumFlowY_d1 <= RESIZE(UNSIGNED(WDATA) & UNSIGNED(WDATA), 64);
    -- trackerPool_avgFlowX
    int_trackerPool_avgFlowX_address0 <= UNSIGNED(trackerPool_avgFlowX_address0);
    int_trackerPool_avgFlowX_ce0 <= trackerPool_avgFlowX_ce0;
    int_trackerPool_avgFlowX_we0 <= '0';
    int_trackerPool_avgFlowX_be0 <= (others => '0');
    int_trackerPool_avgFlowX_d0 <= (others => '0');
    trackerPool_avgFlowX_q0 <= STD_LOGIC_VECTOR(RESIZE(int_trackerPool_avgFlowX_q0, 64));
    int_trackerPool_avgFlowX_address1 <= raddr(6 downto 3) when ar_hs = '1' else waddr(6 downto 3);
    int_trackerPool_avgFlowX_ce1 <= '1' when ar_hs = '1' or (int_trackerPool_avgFlowX_write = '1' and WVALID  = '1') else '0';
    int_trackerPool_avgFlowX_we1 <= '1' when int_trackerPool_avgFlowX_write = '1' and WVALID = '1' else '0';
    int_trackerPool_avgFlowX_be1 <= SHIFT_LEFT(RESIZE(UNSIGNED(WSTRB), 8), TO_INTEGER(waddr(2 downto 2)) * 4);
    int_trackerPool_avgFlowX_d1 <= RESIZE(UNSIGNED(WDATA) & UNSIGNED(WDATA), 64);
    -- trackerPool_avgFlowY
    int_trackerPool_avgFlowY_address0 <= UNSIGNED(trackerPool_avgFlowY_address0);
    int_trackerPool_avgFlowY_ce0 <= trackerPool_avgFlowY_ce0;
    int_trackerPool_avgFlowY_we0 <= '0';
    int_trackerPool_avgFlowY_be0 <= (others => '0');
    int_trackerPool_avgFlowY_d0 <= (others => '0');
    trackerPool_avgFlowY_q0 <= STD_LOGIC_VECTOR(RESIZE(int_trackerPool_avgFlowY_q0, 64));
    int_trackerPool_avgFlowY_address1 <= raddr(6 downto 3) when ar_hs = '1' else waddr(6 downto 3);
    int_trackerPool_avgFlowY_ce1 <= '1' when ar_hs = '1' or (int_trackerPool_avgFlowY_write = '1' and WVALID  = '1') else '0';
    int_trackerPool_avgFlowY_we1 <= '1' when int_trackerPool_avgFlowY_write = '1' and WVALID = '1' else '0';
    int_trackerPool_avgFlowY_be1 <= SHIFT_LEFT(RESIZE(UNSIGNED(WSTRB), 8), TO_INTEGER(waddr(2 downto 2)) * 4);
    int_trackerPool_avgFlowY_d1 <= RESIZE(UNSIGNED(WDATA) & UNSIGNED(WDATA), 64);
    -- trackerPool_activity
    int_trackerPool_activity_address0 <= UNSIGNED(trackerPool_activity_address0);
    int_trackerPool_activity_ce0 <= trackerPool_activity_ce0;
    int_trackerPool_activity_we0 <= trackerPool_activity_we0;
    int_trackerPool_activity_be0 <= (others => trackerPool_activity_we0);
    int_trackerPool_activity_d0 <= RESIZE(UNSIGNED(trackerPool_activity_d0), 64);
    int_trackerPool_activity_address1 <= raddr(6 downto 3) when ar_hs = '1' else waddr(6 downto 3);
    int_trackerPool_activity_ce1 <= '1' when ar_hs = '1' or (int_trackerPool_activity_write = '1' and WVALID  = '1') else '0';
    int_trackerPool_activity_we1 <= '1' when int_trackerPool_activity_write = '1' and WVALID = '1' else '0';
    int_trackerPool_activity_be1 <= SHIFT_LEFT(RESIZE(UNSIGNED(WSTRB), 8), TO_INTEGER(waddr(2 downto 2)) * 4);
    int_trackerPool_activity_d1 <= RESIZE(UNSIGNED(WDATA) & UNSIGNED(WDATA), 64);
    -- trackerPool_lastTimeStamp
    int_trackerPool_lastTimeStamp_address0 <= UNSIGNED(trackerPool_lastTimeStamp_address0);
    int_trackerPool_lastTimeStamp_ce0 <= trackerPool_lastTimeStamp_ce0;
    int_trackerPool_lastTimeStamp_we0 <= trackerPool_lastTimeStamp_we0;
    int_trackerPool_lastTimeStamp_be0 <= (others => trackerPool_lastTimeStamp_we0);
    int_trackerPool_lastTimeStamp_d0 <= RESIZE(UNSIGNED(trackerPool_lastTimeStamp_d0), 32);
    int_trackerPool_lastTimeStamp_address1 <= raddr(5 downto 2) when ar_hs = '1' else waddr(5 downto 2);
    int_trackerPool_lastTimeStamp_ce1 <= '1' when ar_hs = '1' or (int_trackerPool_lastTimeStamp_write = '1' and WVALID  = '1') else '0';
    int_trackerPool_lastTimeStamp_we1 <= '1' when int_trackerPool_lastTimeStamp_write = '1' and WVALID = '1' else '0';
    int_trackerPool_lastTimeStamp_be1 <= UNSIGNED(WSTRB);
    int_trackerPool_lastTimeStamp_d1 <= UNSIGNED(WDATA);

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_trackerPool_state_read <= '0';
            elsif (ACLK_EN = '1') then
                if (ar_hs = '1' and raddr >= ADDR_TRACKERPOOL_STATE_BASE and raddr <= ADDR_TRACKERPOOL_STATE_HIGH) then
                    int_trackerPool_state_read <= '1';
                else
                    int_trackerPool_state_read <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_trackerPool_state_write <= '0';
            elsif (ACLK_EN = '1') then
                if (aw_hs = '1' and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) >= ADDR_TRACKERPOOL_STATE_BASE and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) <= ADDR_TRACKERPOOL_STATE_HIGH) then
                    int_trackerPool_state_write <= '1';
                elsif (WVALID = '1') then
                    int_trackerPool_state_write <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (trackerPool_state_ce0 = '1') then
                    int_trackerPool_state_shift <= UNSIGNED(trackerPool_state_address0(1 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_trackerPool_eventCount_read <= '0';
            elsif (ACLK_EN = '1') then
                if (ar_hs = '1' and raddr >= ADDR_TRACKERPOOL_EVENTCOUNT_BASE and raddr <= ADDR_TRACKERPOOL_EVENTCOUNT_HIGH) then
                    int_trackerPool_eventCount_read <= '1';
                else
                    int_trackerPool_eventCount_read <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_trackerPool_eventCount_write <= '0';
            elsif (ACLK_EN = '1') then
                if (aw_hs = '1' and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) >= ADDR_TRACKERPOOL_EVENTCOUNT_BASE and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) <= ADDR_TRACKERPOOL_EVENTCOUNT_HIGH) then
                    int_trackerPool_eventCount_write <= '1';
                elsif (WVALID = '1') then
                    int_trackerPool_eventCount_write <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_trackerPool_resetTime_read <= '0';
            elsif (ACLK_EN = '1') then
                if (ar_hs = '1' and raddr >= ADDR_TRACKERPOOL_RESETTIME_BASE and raddr <= ADDR_TRACKERPOOL_RESETTIME_HIGH) then
                    int_trackerPool_resetTime_read <= '1';
                else
                    int_trackerPool_resetTime_read <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_trackerPool_resetTime_write <= '0';
            elsif (ACLK_EN = '1') then
                if (aw_hs = '1' and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) >= ADDR_TRACKERPOOL_RESETTIME_BASE and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) <= ADDR_TRACKERPOOL_RESETTIME_HIGH) then
                    int_trackerPool_resetTime_write <= '1';
                elsif (WVALID = '1') then
                    int_trackerPool_resetTime_write <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_trackerPool_x_read <= '0';
            elsif (ACLK_EN = '1') then
                if (ar_hs = '1' and raddr >= ADDR_TRACKERPOOL_X_BASE and raddr <= ADDR_TRACKERPOOL_X_HIGH) then
                    int_trackerPool_x_read <= '1';
                else
                    int_trackerPool_x_read <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_trackerPool_x_write <= '0';
            elsif (ACLK_EN = '1') then
                if (aw_hs = '1' and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) >= ADDR_TRACKERPOOL_X_BASE and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) <= ADDR_TRACKERPOOL_X_HIGH) then
                    int_trackerPool_x_write <= '1';
                elsif (WVALID = '1') then
                    int_trackerPool_x_write <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (ar_hs = '1') then
                    int_trackerPool_x_shift <= raddr(2 downto 2);
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_trackerPool_y_read <= '0';
            elsif (ACLK_EN = '1') then
                if (ar_hs = '1' and raddr >= ADDR_TRACKERPOOL_Y_BASE and raddr <= ADDR_TRACKERPOOL_Y_HIGH) then
                    int_trackerPool_y_read <= '1';
                else
                    int_trackerPool_y_read <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_trackerPool_y_write <= '0';
            elsif (ACLK_EN = '1') then
                if (aw_hs = '1' and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) >= ADDR_TRACKERPOOL_Y_BASE and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) <= ADDR_TRACKERPOOL_Y_HIGH) then
                    int_trackerPool_y_write <= '1';
                elsif (WVALID = '1') then
                    int_trackerPool_y_write <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (ar_hs = '1') then
                    int_trackerPool_y_shift <= raddr(2 downto 2);
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_trackerPool_prevX_read <= '0';
            elsif (ACLK_EN = '1') then
                if (ar_hs = '1' and raddr >= ADDR_TRACKERPOOL_PREVX_BASE and raddr <= ADDR_TRACKERPOOL_PREVX_HIGH) then
                    int_trackerPool_prevX_read <= '1';
                else
                    int_trackerPool_prevX_read <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_trackerPool_prevX_write <= '0';
            elsif (ACLK_EN = '1') then
                if (aw_hs = '1' and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) >= ADDR_TRACKERPOOL_PREVX_BASE and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) <= ADDR_TRACKERPOOL_PREVX_HIGH) then
                    int_trackerPool_prevX_write <= '1';
                elsif (WVALID = '1') then
                    int_trackerPool_prevX_write <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (ar_hs = '1') then
                    int_trackerPool_prevX_shift <= raddr(2 downto 2);
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_trackerPool_prevY_read <= '0';
            elsif (ACLK_EN = '1') then
                if (ar_hs = '1' and raddr >= ADDR_TRACKERPOOL_PREVY_BASE and raddr <= ADDR_TRACKERPOOL_PREVY_HIGH) then
                    int_trackerPool_prevY_read <= '1';
                else
                    int_trackerPool_prevY_read <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_trackerPool_prevY_write <= '0';
            elsif (ACLK_EN = '1') then
                if (aw_hs = '1' and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) >= ADDR_TRACKERPOOL_PREVY_BASE and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) <= ADDR_TRACKERPOOL_PREVY_HIGH) then
                    int_trackerPool_prevY_write <= '1';
                elsif (WVALID = '1') then
                    int_trackerPool_prevY_write <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (ar_hs = '1') then
                    int_trackerPool_prevY_shift <= raddr(2 downto 2);
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_trackerPool_predX_read <= '0';
            elsif (ACLK_EN = '1') then
                if (ar_hs = '1' and raddr >= ADDR_TRACKERPOOL_PREDX_BASE and raddr <= ADDR_TRACKERPOOL_PREDX_HIGH) then
                    int_trackerPool_predX_read <= '1';
                else
                    int_trackerPool_predX_read <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_trackerPool_predX_write <= '0';
            elsif (ACLK_EN = '1') then
                if (aw_hs = '1' and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) >= ADDR_TRACKERPOOL_PREDX_BASE and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) <= ADDR_TRACKERPOOL_PREDX_HIGH) then
                    int_trackerPool_predX_write <= '1';
                elsif (WVALID = '1') then
                    int_trackerPool_predX_write <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (ar_hs = '1') then
                    int_trackerPool_predX_shift <= raddr(2 downto 2);
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_trackerPool_predY_read <= '0';
            elsif (ACLK_EN = '1') then
                if (ar_hs = '1' and raddr >= ADDR_TRACKERPOOL_PREDY_BASE and raddr <= ADDR_TRACKERPOOL_PREDY_HIGH) then
                    int_trackerPool_predY_read <= '1';
                else
                    int_trackerPool_predY_read <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_trackerPool_predY_write <= '0';
            elsif (ACLK_EN = '1') then
                if (aw_hs = '1' and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) >= ADDR_TRACKERPOOL_PREDY_BASE and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) <= ADDR_TRACKERPOOL_PREDY_HIGH) then
                    int_trackerPool_predY_write <= '1';
                elsif (WVALID = '1') then
                    int_trackerPool_predY_write <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (ar_hs = '1') then
                    int_trackerPool_predY_shift <= raddr(2 downto 2);
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_trackerPool_shapeFactor_read <= '0';
            elsif (ACLK_EN = '1') then
                if (ar_hs = '1' and raddr >= ADDR_TRACKERPOOL_SHAPEFACTOR_BASE and raddr <= ADDR_TRACKERPOOL_SHAPEFACTOR_HIGH) then
                    int_trackerPool_shapeFactor_read <= '1';
                else
                    int_trackerPool_shapeFactor_read <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_trackerPool_shapeFactor_write <= '0';
            elsif (ACLK_EN = '1') then
                if (aw_hs = '1' and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) >= ADDR_TRACKERPOOL_SHAPEFACTOR_BASE and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) <= ADDR_TRACKERPOOL_SHAPEFACTOR_HIGH) then
                    int_trackerPool_shapeFactor_write <= '1';
                elsif (WVALID = '1') then
                    int_trackerPool_shapeFactor_write <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (ar_hs = '1') then
                    int_trackerPool_shapeFactor_shift <= raddr(2 downto 2);
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_trackerPool_origShapeFactor_read <= '0';
            elsif (ACLK_EN = '1') then
                if (ar_hs = '1' and raddr >= ADDR_TRACKERPOOL_ORIGSHAPEFACTOR_BASE and raddr <= ADDR_TRACKERPOOL_ORIGSHAPEFACTOR_HIGH) then
                    int_trackerPool_origShapeFactor_read <= '1';
                else
                    int_trackerPool_origShapeFactor_read <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_trackerPool_origShapeFactor_write <= '0';
            elsif (ACLK_EN = '1') then
                if (aw_hs = '1' and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) >= ADDR_TRACKERPOOL_ORIGSHAPEFACTOR_BASE and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) <= ADDR_TRACKERPOOL_ORIGSHAPEFACTOR_HIGH) then
                    int_trackerPool_origShapeFactor_write <= '1';
                elsif (WVALID = '1') then
                    int_trackerPool_origShapeFactor_write <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (ar_hs = '1') then
                    int_trackerPool_origShapeFactor_shift <= raddr(2 downto 2);
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_trackerPool_posFactor_read <= '0';
            elsif (ACLK_EN = '1') then
                if (ar_hs = '1' and raddr >= ADDR_TRACKERPOOL_POSFACTOR_BASE and raddr <= ADDR_TRACKERPOOL_POSFACTOR_HIGH) then
                    int_trackerPool_posFactor_read <= '1';
                else
                    int_trackerPool_posFactor_read <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_trackerPool_posFactor_write <= '0';
            elsif (ACLK_EN = '1') then
                if (aw_hs = '1' and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) >= ADDR_TRACKERPOOL_POSFACTOR_BASE and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) <= ADDR_TRACKERPOOL_POSFACTOR_HIGH) then
                    int_trackerPool_posFactor_write <= '1';
                elsif (WVALID = '1') then
                    int_trackerPool_posFactor_write <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (ar_hs = '1') then
                    int_trackerPool_posFactor_shift <= raddr(2 downto 2);
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_trackerPool_velFactor_read <= '0';
            elsif (ACLK_EN = '1') then
                if (ar_hs = '1' and raddr >= ADDR_TRACKERPOOL_VELFACTOR_BASE and raddr <= ADDR_TRACKERPOOL_VELFACTOR_HIGH) then
                    int_trackerPool_velFactor_read <= '1';
                else
                    int_trackerPool_velFactor_read <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_trackerPool_velFactor_write <= '0';
            elsif (ACLK_EN = '1') then
                if (aw_hs = '1' and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) >= ADDR_TRACKERPOOL_VELFACTOR_BASE and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) <= ADDR_TRACKERPOOL_VELFACTOR_HIGH) then
                    int_trackerPool_velFactor_write <= '1';
                elsif (WVALID = '1') then
                    int_trackerPool_velFactor_write <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (ar_hs = '1') then
                    int_trackerPool_velFactor_shift <= raddr(2 downto 2);
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_trackerPool_clusterSize_read <= '0';
            elsif (ACLK_EN = '1') then
                if (ar_hs = '1' and raddr >= ADDR_TRACKERPOOL_CLUSTERSIZE_BASE and raddr <= ADDR_TRACKERPOOL_CLUSTERSIZE_HIGH) then
                    int_trackerPool_clusterSize_read <= '1';
                else
                    int_trackerPool_clusterSize_read <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_trackerPool_clusterSize_write <= '0';
            elsif (ACLK_EN = '1') then
                if (aw_hs = '1' and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) >= ADDR_TRACKERPOOL_CLUSTERSIZE_BASE and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) <= ADDR_TRACKERPOOL_CLUSTERSIZE_HIGH) then
                    int_trackerPool_clusterSize_write <= '1';
                elsif (WVALID = '1') then
                    int_trackerPool_clusterSize_write <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (ar_hs = '1') then
                    int_trackerPool_clusterSize_shift <= raddr(2 downto 2);
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_trackerPool_smoothingFactor_read <= '0';
            elsif (ACLK_EN = '1') then
                if (ar_hs = '1' and raddr >= ADDR_TRACKERPOOL_SMOOTHINGFACTOR_BASE and raddr <= ADDR_TRACKERPOOL_SMOOTHINGFACTOR_HIGH) then
                    int_trackerPool_smoothingFactor_read <= '1';
                else
                    int_trackerPool_smoothingFactor_read <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_trackerPool_smoothingFactor_write <= '0';
            elsif (ACLK_EN = '1') then
                if (aw_hs = '1' and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) >= ADDR_TRACKERPOOL_SMOOTHINGFACTOR_BASE and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) <= ADDR_TRACKERPOOL_SMOOTHINGFACTOR_HIGH) then
                    int_trackerPool_smoothingFactor_write <= '1';
                elsif (WVALID = '1') then
                    int_trackerPool_smoothingFactor_write <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (ar_hs = '1') then
                    int_trackerPool_smoothingFactor_shift <= raddr(2 downto 2);
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_trackerPool_sp1x_read <= '0';
            elsif (ACLK_EN = '1') then
                if (ar_hs = '1' and raddr >= ADDR_TRACKERPOOL_SP1X_BASE and raddr <= ADDR_TRACKERPOOL_SP1X_HIGH) then
                    int_trackerPool_sp1x_read <= '1';
                else
                    int_trackerPool_sp1x_read <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_trackerPool_sp1x_write <= '0';
            elsif (ACLK_EN = '1') then
                if (aw_hs = '1' and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) >= ADDR_TRACKERPOOL_SP1X_BASE and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) <= ADDR_TRACKERPOOL_SP1X_HIGH) then
                    int_trackerPool_sp1x_write <= '1';
                elsif (WVALID = '1') then
                    int_trackerPool_sp1x_write <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (ar_hs = '1') then
                    int_trackerPool_sp1x_shift <= raddr(2 downto 2);
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_trackerPool_sp2x_read <= '0';
            elsif (ACLK_EN = '1') then
                if (ar_hs = '1' and raddr >= ADDR_TRACKERPOOL_SP2X_BASE and raddr <= ADDR_TRACKERPOOL_SP2X_HIGH) then
                    int_trackerPool_sp2x_read <= '1';
                else
                    int_trackerPool_sp2x_read <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_trackerPool_sp2x_write <= '0';
            elsif (ACLK_EN = '1') then
                if (aw_hs = '1' and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) >= ADDR_TRACKERPOOL_SP2X_BASE and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) <= ADDR_TRACKERPOOL_SP2X_HIGH) then
                    int_trackerPool_sp2x_write <= '1';
                elsif (WVALID = '1') then
                    int_trackerPool_sp2x_write <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (ar_hs = '1') then
                    int_trackerPool_sp2x_shift <= raddr(2 downto 2);
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_trackerPool_sp1y_read <= '0';
            elsif (ACLK_EN = '1') then
                if (ar_hs = '1' and raddr >= ADDR_TRACKERPOOL_SP1Y_BASE and raddr <= ADDR_TRACKERPOOL_SP1Y_HIGH) then
                    int_trackerPool_sp1y_read <= '1';
                else
                    int_trackerPool_sp1y_read <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_trackerPool_sp1y_write <= '0';
            elsif (ACLK_EN = '1') then
                if (aw_hs = '1' and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) >= ADDR_TRACKERPOOL_SP1Y_BASE and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) <= ADDR_TRACKERPOOL_SP1Y_HIGH) then
                    int_trackerPool_sp1y_write <= '1';
                elsif (WVALID = '1') then
                    int_trackerPool_sp1y_write <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (ar_hs = '1') then
                    int_trackerPool_sp1y_shift <= raddr(2 downto 2);
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_trackerPool_sp2y_read <= '0';
            elsif (ACLK_EN = '1') then
                if (ar_hs = '1' and raddr >= ADDR_TRACKERPOOL_SP2Y_BASE and raddr <= ADDR_TRACKERPOOL_SP2Y_HIGH) then
                    int_trackerPool_sp2y_read <= '1';
                else
                    int_trackerPool_sp2y_read <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_trackerPool_sp2y_write <= '0';
            elsif (ACLK_EN = '1') then
                if (aw_hs = '1' and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) >= ADDR_TRACKERPOOL_SP2Y_BASE and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) <= ADDR_TRACKERPOOL_SP2Y_HIGH) then
                    int_trackerPool_sp2y_write <= '1';
                elsif (WVALID = '1') then
                    int_trackerPool_sp2y_write <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (ar_hs = '1') then
                    int_trackerPool_sp2y_shift <= raddr(2 downto 2);
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_trackerPool_sigmaX_read <= '0';
            elsif (ACLK_EN = '1') then
                if (ar_hs = '1' and raddr >= ADDR_TRACKERPOOL_SIGMAX_BASE and raddr <= ADDR_TRACKERPOOL_SIGMAX_HIGH) then
                    int_trackerPool_sigmaX_read <= '1';
                else
                    int_trackerPool_sigmaX_read <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_trackerPool_sigmaX_write <= '0';
            elsif (ACLK_EN = '1') then
                if (aw_hs = '1' and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) >= ADDR_TRACKERPOOL_SIGMAX_BASE and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) <= ADDR_TRACKERPOOL_SIGMAX_HIGH) then
                    int_trackerPool_sigmaX_write <= '1';
                elsif (WVALID = '1') then
                    int_trackerPool_sigmaX_write <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (ar_hs = '1') then
                    int_trackerPool_sigmaX_shift <= raddr(2 downto 2);
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_trackerPool_sigmaY_read <= '0';
            elsif (ACLK_EN = '1') then
                if (ar_hs = '1' and raddr >= ADDR_TRACKERPOOL_SIGMAY_BASE and raddr <= ADDR_TRACKERPOOL_SIGMAY_HIGH) then
                    int_trackerPool_sigmaY_read <= '1';
                else
                    int_trackerPool_sigmaY_read <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_trackerPool_sigmaY_write <= '0';
            elsif (ACLK_EN = '1') then
                if (aw_hs = '1' and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) >= ADDR_TRACKERPOOL_SIGMAY_BASE and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) <= ADDR_TRACKERPOOL_SIGMAY_HIGH) then
                    int_trackerPool_sigmaY_write <= '1';
                elsif (WVALID = '1') then
                    int_trackerPool_sigmaY_write <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (ar_hs = '1') then
                    int_trackerPool_sigmaY_shift <= raddr(2 downto 2);
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_trackerPool_sigmaXY_read <= '0';
            elsif (ACLK_EN = '1') then
                if (ar_hs = '1' and raddr >= ADDR_TRACKERPOOL_SIGMAXY_BASE and raddr <= ADDR_TRACKERPOOL_SIGMAXY_HIGH) then
                    int_trackerPool_sigmaXY_read <= '1';
                else
                    int_trackerPool_sigmaXY_read <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_trackerPool_sigmaXY_write <= '0';
            elsif (ACLK_EN = '1') then
                if (aw_hs = '1' and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) >= ADDR_TRACKERPOOL_SIGMAXY_BASE and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) <= ADDR_TRACKERPOOL_SIGMAXY_HIGH) then
                    int_trackerPool_sigmaXY_write <= '1';
                elsif (WVALID = '1') then
                    int_trackerPool_sigmaXY_write <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (ar_hs = '1') then
                    int_trackerPool_sigmaXY_shift <= raddr(2 downto 2);
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_trackerPool_a_read <= '0';
            elsif (ACLK_EN = '1') then
                if (ar_hs = '1' and raddr >= ADDR_TRACKERPOOL_A_BASE and raddr <= ADDR_TRACKERPOOL_A_HIGH) then
                    int_trackerPool_a_read <= '1';
                else
                    int_trackerPool_a_read <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_trackerPool_a_write <= '0';
            elsif (ACLK_EN = '1') then
                if (aw_hs = '1' and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) >= ADDR_TRACKERPOOL_A_BASE and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) <= ADDR_TRACKERPOOL_A_HIGH) then
                    int_trackerPool_a_write <= '1';
                elsif (WVALID = '1') then
                    int_trackerPool_a_write <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (ar_hs = '1') then
                    int_trackerPool_a_shift <= raddr(2 downto 2);
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_trackerPool_b_read <= '0';
            elsif (ACLK_EN = '1') then
                if (ar_hs = '1' and raddr >= ADDR_TRACKERPOOL_B_BASE and raddr <= ADDR_TRACKERPOOL_B_HIGH) then
                    int_trackerPool_b_read <= '1';
                else
                    int_trackerPool_b_read <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_trackerPool_b_write <= '0';
            elsif (ACLK_EN = '1') then
                if (aw_hs = '1' and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) >= ADDR_TRACKERPOOL_B_BASE and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) <= ADDR_TRACKERPOOL_B_HIGH) then
                    int_trackerPool_b_write <= '1';
                elsif (WVALID = '1') then
                    int_trackerPool_b_write <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (ar_hs = '1') then
                    int_trackerPool_b_shift <= raddr(2 downto 2);
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_trackerPool_alpha_read <= '0';
            elsif (ACLK_EN = '1') then
                if (ar_hs = '1' and raddr >= ADDR_TRACKERPOOL_ALPHA_BASE and raddr <= ADDR_TRACKERPOOL_ALPHA_HIGH) then
                    int_trackerPool_alpha_read <= '1';
                else
                    int_trackerPool_alpha_read <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_trackerPool_alpha_write <= '0';
            elsif (ACLK_EN = '1') then
                if (aw_hs = '1' and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) >= ADDR_TRACKERPOOL_ALPHA_BASE and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) <= ADDR_TRACKERPOOL_ALPHA_HIGH) then
                    int_trackerPool_alpha_write <= '1';
                elsif (WVALID = '1') then
                    int_trackerPool_alpha_write <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (ar_hs = '1') then
                    int_trackerPool_alpha_shift <= raddr(2 downto 2);
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_trackerPool_sumFlowX_read <= '0';
            elsif (ACLK_EN = '1') then
                if (ar_hs = '1' and raddr >= ADDR_TRACKERPOOL_SUMFLOWX_BASE and raddr <= ADDR_TRACKERPOOL_SUMFLOWX_HIGH) then
                    int_trackerPool_sumFlowX_read <= '1';
                else
                    int_trackerPool_sumFlowX_read <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_trackerPool_sumFlowX_write <= '0';
            elsif (ACLK_EN = '1') then
                if (aw_hs = '1' and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) >= ADDR_TRACKERPOOL_SUMFLOWX_BASE and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) <= ADDR_TRACKERPOOL_SUMFLOWX_HIGH) then
                    int_trackerPool_sumFlowX_write <= '1';
                elsif (WVALID = '1') then
                    int_trackerPool_sumFlowX_write <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (ar_hs = '1') then
                    int_trackerPool_sumFlowX_shift <= raddr(2 downto 2);
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_trackerPool_sumFlowY_read <= '0';
            elsif (ACLK_EN = '1') then
                if (ar_hs = '1' and raddr >= ADDR_TRACKERPOOL_SUMFLOWY_BASE and raddr <= ADDR_TRACKERPOOL_SUMFLOWY_HIGH) then
                    int_trackerPool_sumFlowY_read <= '1';
                else
                    int_trackerPool_sumFlowY_read <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_trackerPool_sumFlowY_write <= '0';
            elsif (ACLK_EN = '1') then
                if (aw_hs = '1' and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) >= ADDR_TRACKERPOOL_SUMFLOWY_BASE and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) <= ADDR_TRACKERPOOL_SUMFLOWY_HIGH) then
                    int_trackerPool_sumFlowY_write <= '1';
                elsif (WVALID = '1') then
                    int_trackerPool_sumFlowY_write <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (ar_hs = '1') then
                    int_trackerPool_sumFlowY_shift <= raddr(2 downto 2);
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_trackerPool_avgFlowX_read <= '0';
            elsif (ACLK_EN = '1') then
                if (ar_hs = '1' and raddr >= ADDR_TRACKERPOOL_AVGFLOWX_BASE and raddr <= ADDR_TRACKERPOOL_AVGFLOWX_HIGH) then
                    int_trackerPool_avgFlowX_read <= '1';
                else
                    int_trackerPool_avgFlowX_read <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_trackerPool_avgFlowX_write <= '0';
            elsif (ACLK_EN = '1') then
                if (aw_hs = '1' and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) >= ADDR_TRACKERPOOL_AVGFLOWX_BASE and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) <= ADDR_TRACKERPOOL_AVGFLOWX_HIGH) then
                    int_trackerPool_avgFlowX_write <= '1';
                elsif (WVALID = '1') then
                    int_trackerPool_avgFlowX_write <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (ar_hs = '1') then
                    int_trackerPool_avgFlowX_shift <= raddr(2 downto 2);
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_trackerPool_avgFlowY_read <= '0';
            elsif (ACLK_EN = '1') then
                if (ar_hs = '1' and raddr >= ADDR_TRACKERPOOL_AVGFLOWY_BASE and raddr <= ADDR_TRACKERPOOL_AVGFLOWY_HIGH) then
                    int_trackerPool_avgFlowY_read <= '1';
                else
                    int_trackerPool_avgFlowY_read <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_trackerPool_avgFlowY_write <= '0';
            elsif (ACLK_EN = '1') then
                if (aw_hs = '1' and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) >= ADDR_TRACKERPOOL_AVGFLOWY_BASE and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) <= ADDR_TRACKERPOOL_AVGFLOWY_HIGH) then
                    int_trackerPool_avgFlowY_write <= '1';
                elsif (WVALID = '1') then
                    int_trackerPool_avgFlowY_write <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (ar_hs = '1') then
                    int_trackerPool_avgFlowY_shift <= raddr(2 downto 2);
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_trackerPool_activity_read <= '0';
            elsif (ACLK_EN = '1') then
                if (ar_hs = '1' and raddr >= ADDR_TRACKERPOOL_ACTIVITY_BASE and raddr <= ADDR_TRACKERPOOL_ACTIVITY_HIGH) then
                    int_trackerPool_activity_read <= '1';
                else
                    int_trackerPool_activity_read <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_trackerPool_activity_write <= '0';
            elsif (ACLK_EN = '1') then
                if (aw_hs = '1' and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) >= ADDR_TRACKERPOOL_ACTIVITY_BASE and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) <= ADDR_TRACKERPOOL_ACTIVITY_HIGH) then
                    int_trackerPool_activity_write <= '1';
                elsif (WVALID = '1') then
                    int_trackerPool_activity_write <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (ar_hs = '1') then
                    int_trackerPool_activity_shift <= raddr(2 downto 2);
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_trackerPool_lastTimeStamp_read <= '0';
            elsif (ACLK_EN = '1') then
                if (ar_hs = '1' and raddr >= ADDR_TRACKERPOOL_LASTTIMESTAMP_BASE and raddr <= ADDR_TRACKERPOOL_LASTTIMESTAMP_HIGH) then
                    int_trackerPool_lastTimeStamp_read <= '1';
                else
                    int_trackerPool_lastTimeStamp_read <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_trackerPool_lastTimeStamp_write <= '0';
            elsif (ACLK_EN = '1') then
                if (aw_hs = '1' and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) >= ADDR_TRACKERPOOL_LASTTIMESTAMP_BASE and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) <= ADDR_TRACKERPOOL_LASTTIMESTAMP_HIGH) then
                    int_trackerPool_lastTimeStamp_write <= '1';
                elsif (WVALID = '1') then
                    int_trackerPool_lastTimeStamp_write <= '0';
                end if;
            end if;
        end if;
    end process;


end architecture behave;

library IEEE;
USE IEEE.std_logic_1164.all;
USE IEEE.numeric_std.all;

entity getTrackerID_hw_AXILiteS_s_axi_ram is
    generic (
        BYTES   : INTEGER :=4;
        DEPTH   : INTEGER :=256;
        AWIDTH  : INTEGER :=8);
    port (
        clk0    : in  STD_LOGIC;
        address0: in  UNSIGNED(AWIDTH-1 downto 0);
        ce0     : in  STD_LOGIC;
        we0     : in  STD_LOGIC;
        be0     : in  UNSIGNED(BYTES-1 downto 0);
        d0      : in  UNSIGNED(BYTES*8-1 downto 0);
        q0      : out UNSIGNED(BYTES*8-1 downto 0);
        clk1    : in  STD_LOGIC;
        address1: in  UNSIGNED(AWIDTH-1 downto 0);
        ce1     : in  STD_LOGIC;
        we1     : in  STD_LOGIC;
        be1     : in  UNSIGNED(BYTES-1 downto 0);
        d1      : in  UNSIGNED(BYTES*8-1 downto 0);
        q1      : out UNSIGNED(BYTES*8-1 downto 0));

end entity getTrackerID_hw_AXILiteS_s_axi_ram;

architecture behave of getTrackerID_hw_AXILiteS_s_axi_ram is
    signal address0_tmp : UNSIGNED(AWIDTH-1 downto 0);
    signal address1_tmp : UNSIGNED(AWIDTH-1 downto 0);
    type RAM_T is array (0 to DEPTH - 1) of UNSIGNED(BYTES*8 - 1 downto 0);
    shared variable mem : RAM_T := (others => (others => '0'));
begin

    process (address0)
    begin
    address0_tmp <= address0;
    --synthesis translate_off
          if (address0 > DEPTH-1) then
              address0_tmp <= (others => '0');
          else
              address0_tmp <= address0;
          end if;
    --synthesis translate_on
    end process;

    process (address1)
    begin
    address1_tmp <= address1;
    --synthesis translate_off
          if (address1 > DEPTH-1) then
              address1_tmp <= (others => '0');
          else
              address1_tmp <= address1;
          end if;
    --synthesis translate_on
    end process;

    --read port 0
    process (clk0) begin
        if (clk0'event and clk0 = '1') then
            if (ce0 = '1') then
                q0 <= mem(to_integer(address0_tmp));
            end if;
        end if;
    end process;

    --read port 1
    process (clk1) begin
        if (clk1'event and clk1 = '1') then
            if (ce1 = '1') then
                q1 <= mem(to_integer(address1_tmp));
            end if;
        end if;
    end process;

    gen_write : for i in 0 to BYTES - 1 generate
    begin
        --write port 0
        process (clk0)
        begin
            if (clk0'event and clk0 = '1') then
                if (ce0 = '1' and we0 = '1' and be0(i) = '1') then
                    mem(to_integer(address0_tmp))(8*i+7 downto 8*i) := d0(8*i+7 downto 8*i);
                end if;
            end if;
        end process;

        --write port 1
        process (clk1)
        begin
            if (clk1'event and clk1 = '1') then
                if (ce1 = '1' and we1 = '1' and be1(i) = '1') then
                    mem(to_integer(address1_tmp))(8*i+7 downto 8*i) := d1(8*i+7 downto 8*i);
                end if;
            end if;
        end process;

    end generate;

end architecture behave;


