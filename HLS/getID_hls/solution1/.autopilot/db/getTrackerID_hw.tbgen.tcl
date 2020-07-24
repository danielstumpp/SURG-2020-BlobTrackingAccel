set moduleName getTrackerID_hw
set isTopModule 1
set isTaskLevelControl 1
set isCombinational 0
set isDatapathOnly 0
set isFreeRunPipelineModule 0
set isPipelined 1
set pipeline_type function
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {getTrackerID_hw}
set C_modelType { int 32 }
set C_modelArgList {
	{ trackerPool_state int 2 regular {axi_slave 0}  }
	{ trackerPool_eventCount int 32 unused {axi_slave 3}  }
	{ trackerPool_resetTime int 32 unused {axi_slave 3}  }
	{ trackerPool_x double 64 regular {axi_slave 0}  }
	{ trackerPool_y double 64 regular {axi_slave 0}  }
	{ trackerPool_prevX double 64 unused {axi_slave 3}  }
	{ trackerPool_prevY double 64 unused {axi_slave 3}  }
	{ trackerPool_predX double 64 unused {axi_slave 3}  }
	{ trackerPool_predY double 64 unused {axi_slave 3}  }
	{ trackerPool_shapeFactor double 64 unused {axi_slave 3}  }
	{ trackerPool_origShapeFactor double 64 unused {axi_slave 3}  }
	{ trackerPool_posFactor double 64 unused {axi_slave 3}  }
	{ trackerPool_velFactor double 64 unused {axi_slave 3}  }
	{ trackerPool_clusterSize double 64 unused {axi_slave 3}  }
	{ trackerPool_smoothingFactor double 64 unused {axi_slave 3}  }
	{ trackerPool_sp1x double 64 unused {axi_slave 3}  }
	{ trackerPool_sp2x double 64 unused {axi_slave 3}  }
	{ trackerPool_sp1y double 64 unused {axi_slave 3}  }
	{ trackerPool_sp2y double 64 unused {axi_slave 3}  }
	{ trackerPool_sigmaX double 64 regular {axi_slave 0}  }
	{ trackerPool_sigmaY double 64 regular {axi_slave 0}  }
	{ trackerPool_sigmaXY double 64 regular {axi_slave 0}  }
	{ trackerPool_a double 64 unused {axi_slave 3}  }
	{ trackerPool_b double 64 unused {axi_slave 3}  }
	{ trackerPool_alpha double 64 unused {axi_slave 3}  }
	{ trackerPool_sumFlowX double 64 unused {axi_slave 3}  }
	{ trackerPool_sumFlowY double 64 unused {axi_slave 3}  }
	{ trackerPool_avgFlowX double 64 regular {axi_slave 0}  }
	{ trackerPool_avgFlowY double 64 regular {axi_slave 0}  }
	{ trackerPool_activity double 64 unused {axi_slave 3}  }
	{ trackerPool_lastTimeStamp int 32 unused {axi_slave 3}  }
	{ eventX int 32 regular  }
	{ eventY int 32 regular  }
	{ newFlow double 64 regular {array 2 { 1 1 } 1 1 }  }
	{ maxProb double 64 regular {pointer 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "trackerPool_state", "interface" : "axi_slave", "bundle":"AXILiteS","type":"ap_memory","bitwidth" : 2, "direction" : "READONLY", "bitSlice":[{"low":0,"up":1,"cElement": [{"cName": "trackerPool.state","cData": "enum State","bit_use": { "low": 0,"up": 1},"cArray": [{"low" : 0,"up" : 15,"step" : 1}]}]}], "offset" : {"in":16}, "offset_end" : {"in":31}} , 
 	{ "Name" : "trackerPool_eventCount", "interface" : "axi_slave", "bundle":"AXILiteS","type":"ap_memory","bitwidth" : 32, "direction" : "NONE", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "trackerPool.eventCount","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 15,"step" : 1}]}]}], "offset" : {"in":64}, "offset_end" : {"in":127}} , 
 	{ "Name" : "trackerPool_resetTime", "interface" : "axi_slave", "bundle":"AXILiteS","type":"ap_memory","bitwidth" : 32, "direction" : "NONE", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "trackerPool.resetTime","cData": "long unsigned int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 15,"step" : 1}]}]}], "offset" : {"in":128}, "offset_end" : {"in":191}} , 
 	{ "Name" : "trackerPool_x", "interface" : "axi_slave", "bundle":"AXILiteS","type":"ap_memory","bitwidth" : 64, "direction" : "READONLY", "bitSlice":[{"low":0,"up":63,"cElement": [{"cName": "trackerPool.x","cData": "double","bit_use": { "low": 0,"up": 63},"cArray": [{"low" : 0,"up" : 15,"step" : 1}]}]}], "offset" : {"in":256}, "offset_end" : {"in":383}} , 
 	{ "Name" : "trackerPool_y", "interface" : "axi_slave", "bundle":"AXILiteS","type":"ap_memory","bitwidth" : 64, "direction" : "READONLY", "bitSlice":[{"low":0,"up":63,"cElement": [{"cName": "trackerPool.y","cData": "double","bit_use": { "low": 0,"up": 63},"cArray": [{"low" : 0,"up" : 15,"step" : 1}]}]}], "offset" : {"in":384}, "offset_end" : {"in":511}} , 
 	{ "Name" : "trackerPool_prevX", "interface" : "axi_slave", "bundle":"AXILiteS","type":"ap_memory","bitwidth" : 64, "direction" : "NONE", "bitSlice":[{"low":0,"up":63,"cElement": [{"cName": "trackerPool.prevX","cData": "double","bit_use": { "low": 0,"up": 63},"cArray": [{"low" : 0,"up" : 15,"step" : 1}]}]}], "offset" : {"in":512}, "offset_end" : {"in":639}} , 
 	{ "Name" : "trackerPool_prevY", "interface" : "axi_slave", "bundle":"AXILiteS","type":"ap_memory","bitwidth" : 64, "direction" : "NONE", "bitSlice":[{"low":0,"up":63,"cElement": [{"cName": "trackerPool.prevY","cData": "double","bit_use": { "low": 0,"up": 63},"cArray": [{"low" : 0,"up" : 15,"step" : 1}]}]}], "offset" : {"in":640}, "offset_end" : {"in":767}} , 
 	{ "Name" : "trackerPool_predX", "interface" : "axi_slave", "bundle":"AXILiteS","type":"ap_memory","bitwidth" : 64, "direction" : "NONE", "bitSlice":[{"low":0,"up":63,"cElement": [{"cName": "trackerPool.predX","cData": "double","bit_use": { "low": 0,"up": 63},"cArray": [{"low" : 0,"up" : 15,"step" : 1}]}]}], "offset" : {"in":768}, "offset_end" : {"in":895}} , 
 	{ "Name" : "trackerPool_predY", "interface" : "axi_slave", "bundle":"AXILiteS","type":"ap_memory","bitwidth" : 64, "direction" : "NONE", "bitSlice":[{"low":0,"up":63,"cElement": [{"cName": "trackerPool.predY","cData": "double","bit_use": { "low": 0,"up": 63},"cArray": [{"low" : 0,"up" : 15,"step" : 1}]}]}], "offset" : {"in":896}, "offset_end" : {"in":1023}} , 
 	{ "Name" : "trackerPool_shapeFactor", "interface" : "axi_slave", "bundle":"AXILiteS","type":"ap_memory","bitwidth" : 64, "direction" : "NONE", "bitSlice":[{"low":0,"up":63,"cElement": [{"cName": "trackerPool.shapeFactor","cData": "double","bit_use": { "low": 0,"up": 63},"cArray": [{"low" : 0,"up" : 15,"step" : 1}]}]}], "offset" : {"in":1024}, "offset_end" : {"in":1151}} , 
 	{ "Name" : "trackerPool_origShapeFactor", "interface" : "axi_slave", "bundle":"AXILiteS","type":"ap_memory","bitwidth" : 64, "direction" : "NONE", "bitSlice":[{"low":0,"up":63,"cElement": [{"cName": "trackerPool.origShapeFactor","cData": "double","bit_use": { "low": 0,"up": 63},"cArray": [{"low" : 0,"up" : 15,"step" : 1}]}]}], "offset" : {"in":1152}, "offset_end" : {"in":1279}} , 
 	{ "Name" : "trackerPool_posFactor", "interface" : "axi_slave", "bundle":"AXILiteS","type":"ap_memory","bitwidth" : 64, "direction" : "NONE", "bitSlice":[{"low":0,"up":63,"cElement": [{"cName": "trackerPool.posFactor","cData": "double","bit_use": { "low": 0,"up": 63},"cArray": [{"low" : 0,"up" : 15,"step" : 1}]}]}], "offset" : {"in":1280}, "offset_end" : {"in":1407}} , 
 	{ "Name" : "trackerPool_velFactor", "interface" : "axi_slave", "bundle":"AXILiteS","type":"ap_memory","bitwidth" : 64, "direction" : "NONE", "bitSlice":[{"low":0,"up":63,"cElement": [{"cName": "trackerPool.velFactor","cData": "double","bit_use": { "low": 0,"up": 63},"cArray": [{"low" : 0,"up" : 15,"step" : 1}]}]}], "offset" : {"in":1408}, "offset_end" : {"in":1535}} , 
 	{ "Name" : "trackerPool_clusterSize", "interface" : "axi_slave", "bundle":"AXILiteS","type":"ap_memory","bitwidth" : 64, "direction" : "NONE", "bitSlice":[{"low":0,"up":63,"cElement": [{"cName": "trackerPool.clusterSize","cData": "double","bit_use": { "low": 0,"up": 63},"cArray": [{"low" : 0,"up" : 15,"step" : 1}]}]}], "offset" : {"in":1536}, "offset_end" : {"in":1663}} , 
 	{ "Name" : "trackerPool_smoothingFactor", "interface" : "axi_slave", "bundle":"AXILiteS","type":"ap_memory","bitwidth" : 64, "direction" : "NONE", "bitSlice":[{"low":0,"up":63,"cElement": [{"cName": "trackerPool.smoothingFactor","cData": "double","bit_use": { "low": 0,"up": 63},"cArray": [{"low" : 0,"up" : 15,"step" : 1}]}]}], "offset" : {"in":1664}, "offset_end" : {"in":1791}} , 
 	{ "Name" : "trackerPool_sp1x", "interface" : "axi_slave", "bundle":"AXILiteS","type":"ap_memory","bitwidth" : 64, "direction" : "NONE", "bitSlice":[{"low":0,"up":63,"cElement": [{"cName": "trackerPool.sp1x","cData": "double","bit_use": { "low": 0,"up": 63},"cArray": [{"low" : 0,"up" : 15,"step" : 1}]}]}], "offset" : {"in":1792}, "offset_end" : {"in":1919}} , 
 	{ "Name" : "trackerPool_sp2x", "interface" : "axi_slave", "bundle":"AXILiteS","type":"ap_memory","bitwidth" : 64, "direction" : "NONE", "bitSlice":[{"low":0,"up":63,"cElement": [{"cName": "trackerPool.sp2x","cData": "double","bit_use": { "low": 0,"up": 63},"cArray": [{"low" : 0,"up" : 15,"step" : 1}]}]}], "offset" : {"in":1920}, "offset_end" : {"in":2047}} , 
 	{ "Name" : "trackerPool_sp1y", "interface" : "axi_slave", "bundle":"AXILiteS","type":"ap_memory","bitwidth" : 64, "direction" : "NONE", "bitSlice":[{"low":0,"up":63,"cElement": [{"cName": "trackerPool.sp1y","cData": "double","bit_use": { "low": 0,"up": 63},"cArray": [{"low" : 0,"up" : 15,"step" : 1}]}]}], "offset" : {"in":2048}, "offset_end" : {"in":2175}} , 
 	{ "Name" : "trackerPool_sp2y", "interface" : "axi_slave", "bundle":"AXILiteS","type":"ap_memory","bitwidth" : 64, "direction" : "NONE", "bitSlice":[{"low":0,"up":63,"cElement": [{"cName": "trackerPool.sp2y","cData": "double","bit_use": { "low": 0,"up": 63},"cArray": [{"low" : 0,"up" : 15,"step" : 1}]}]}], "offset" : {"in":2176}, "offset_end" : {"in":2303}} , 
 	{ "Name" : "trackerPool_sigmaX", "interface" : "axi_slave", "bundle":"AXILiteS","type":"ap_memory","bitwidth" : 64, "direction" : "READONLY", "bitSlice":[{"low":0,"up":63,"cElement": [{"cName": "trackerPool.sigmaX","cData": "double","bit_use": { "low": 0,"up": 63},"cArray": [{"low" : 0,"up" : 15,"step" : 1}]}]}], "offset" : {"in":2304}, "offset_end" : {"in":2431}} , 
 	{ "Name" : "trackerPool_sigmaY", "interface" : "axi_slave", "bundle":"AXILiteS","type":"ap_memory","bitwidth" : 64, "direction" : "READONLY", "bitSlice":[{"low":0,"up":63,"cElement": [{"cName": "trackerPool.sigmaY","cData": "double","bit_use": { "low": 0,"up": 63},"cArray": [{"low" : 0,"up" : 15,"step" : 1}]}]}], "offset" : {"in":2432}, "offset_end" : {"in":2559}} , 
 	{ "Name" : "trackerPool_sigmaXY", "interface" : "axi_slave", "bundle":"AXILiteS","type":"ap_memory","bitwidth" : 64, "direction" : "READONLY", "bitSlice":[{"low":0,"up":63,"cElement": [{"cName": "trackerPool.sigmaXY","cData": "double","bit_use": { "low": 0,"up": 63},"cArray": [{"low" : 0,"up" : 15,"step" : 1}]}]}], "offset" : {"in":2560}, "offset_end" : {"in":2687}} , 
 	{ "Name" : "trackerPool_a", "interface" : "axi_slave", "bundle":"AXILiteS","type":"ap_memory","bitwidth" : 64, "direction" : "NONE", "bitSlice":[{"low":0,"up":63,"cElement": [{"cName": "trackerPool.a","cData": "double","bit_use": { "low": 0,"up": 63},"cArray": [{"low" : 0,"up" : 15,"step" : 1}]}]}], "offset" : {"in":2688}, "offset_end" : {"in":2815}} , 
 	{ "Name" : "trackerPool_b", "interface" : "axi_slave", "bundle":"AXILiteS","type":"ap_memory","bitwidth" : 64, "direction" : "NONE", "bitSlice":[{"low":0,"up":63,"cElement": [{"cName": "trackerPool.b","cData": "double","bit_use": { "low": 0,"up": 63},"cArray": [{"low" : 0,"up" : 15,"step" : 1}]}]}], "offset" : {"in":2816}, "offset_end" : {"in":2943}} , 
 	{ "Name" : "trackerPool_alpha", "interface" : "axi_slave", "bundle":"AXILiteS","type":"ap_memory","bitwidth" : 64, "direction" : "NONE", "bitSlice":[{"low":0,"up":63,"cElement": [{"cName": "trackerPool.alpha","cData": "double","bit_use": { "low": 0,"up": 63},"cArray": [{"low" : 0,"up" : 15,"step" : 1}]}]}], "offset" : {"in":2944}, "offset_end" : {"in":3071}} , 
 	{ "Name" : "trackerPool_sumFlowX", "interface" : "axi_slave", "bundle":"AXILiteS","type":"ap_memory","bitwidth" : 64, "direction" : "NONE", "bitSlice":[{"low":0,"up":63,"cElement": [{"cName": "trackerPool.sumFlowX","cData": "double","bit_use": { "low": 0,"up": 63},"cArray": [{"low" : 0,"up" : 15,"step" : 1}]}]}], "offset" : {"in":3072}, "offset_end" : {"in":3199}} , 
 	{ "Name" : "trackerPool_sumFlowY", "interface" : "axi_slave", "bundle":"AXILiteS","type":"ap_memory","bitwidth" : 64, "direction" : "NONE", "bitSlice":[{"low":0,"up":63,"cElement": [{"cName": "trackerPool.sumFlowY","cData": "double","bit_use": { "low": 0,"up": 63},"cArray": [{"low" : 0,"up" : 15,"step" : 1}]}]}], "offset" : {"in":3200}, "offset_end" : {"in":3327}} , 
 	{ "Name" : "trackerPool_avgFlowX", "interface" : "axi_slave", "bundle":"AXILiteS","type":"ap_memory","bitwidth" : 64, "direction" : "READONLY", "bitSlice":[{"low":0,"up":63,"cElement": [{"cName": "trackerPool.avgFlowX","cData": "double","bit_use": { "low": 0,"up": 63},"cArray": [{"low" : 0,"up" : 15,"step" : 1}]}]}], "offset" : {"in":3328}, "offset_end" : {"in":3455}} , 
 	{ "Name" : "trackerPool_avgFlowY", "interface" : "axi_slave", "bundle":"AXILiteS","type":"ap_memory","bitwidth" : 64, "direction" : "READONLY", "bitSlice":[{"low":0,"up":63,"cElement": [{"cName": "trackerPool.avgFlowY","cData": "double","bit_use": { "low": 0,"up": 63},"cArray": [{"low" : 0,"up" : 15,"step" : 1}]}]}], "offset" : {"in":3456}, "offset_end" : {"in":3583}} , 
 	{ "Name" : "trackerPool_activity", "interface" : "axi_slave", "bundle":"AXILiteS","type":"ap_memory","bitwidth" : 64, "direction" : "NONE", "bitSlice":[{"low":0,"up":63,"cElement": [{"cName": "trackerPool.activity","cData": "double","bit_use": { "low": 0,"up": 63},"cArray": [{"low" : 0,"up" : 15,"step" : 1}]}]}], "offset" : {"in":3584}, "offset_end" : {"in":3711}} , 
 	{ "Name" : "trackerPool_lastTimeStamp", "interface" : "axi_slave", "bundle":"AXILiteS","type":"ap_memory","bitwidth" : 32, "direction" : "NONE", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "trackerPool.lastTimeStamp","cData": "long unsigned int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 15,"step" : 1}]}]}], "offset" : {"in":3712}, "offset_end" : {"in":3775}} , 
 	{ "Name" : "eventX", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "eventX","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "eventY", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "eventY","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "newFlow", "interface" : "memory", "bitwidth" : 64, "direction" : "READONLY", "bitSlice":[{"low":0,"up":63,"cElement": [{"cName": "newFlow","cData": "double","bit_use": { "low": 0,"up": 63},"cArray": [{"low" : 0,"up" : 1,"step" : 1}]}]}]} , 
 	{ "Name" : "maxProb", "interface" : "wire", "bitwidth" : 64, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":63,"cElement": [{"cName": "maxProb","cData": "double","bit_use": { "low": 0,"up": 63},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "ap_return", "interface" : "wire", "bitwidth" : 32,"bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "return","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 1,"step" : 0}]}]}]} ]}
# RTL Port declarations: 
set portNum 34
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst_n sc_in sc_logic 1 reset -1 active_low_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ eventX sc_in sc_lv 32 signal 31 } 
	{ eventY sc_in sc_lv 32 signal 32 } 
	{ newFlow_address0 sc_out sc_lv 1 signal 33 } 
	{ newFlow_ce0 sc_out sc_logic 1 signal 33 } 
	{ newFlow_q0 sc_in sc_lv 64 signal 33 } 
	{ newFlow_address1 sc_out sc_lv 1 signal 33 } 
	{ newFlow_ce1 sc_out sc_logic 1 signal 33 } 
	{ newFlow_q1 sc_in sc_lv 64 signal 33 } 
	{ maxProb sc_out sc_lv 64 signal 34 } 
	{ maxProb_ap_vld sc_out sc_logic 1 outvld 34 } 
	{ ap_return sc_out sc_lv 32 signal -1 } 
	{ s_axi_AXILiteS_AWVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_AXILiteS_AWREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_AXILiteS_AWADDR sc_in sc_lv 12 signal -1 } 
	{ s_axi_AXILiteS_WVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_AXILiteS_WREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_AXILiteS_WDATA sc_in sc_lv 32 signal -1 } 
	{ s_axi_AXILiteS_WSTRB sc_in sc_lv 4 signal -1 } 
	{ s_axi_AXILiteS_ARVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_AXILiteS_ARREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_AXILiteS_ARADDR sc_in sc_lv 12 signal -1 } 
	{ s_axi_AXILiteS_RVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_AXILiteS_RREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_AXILiteS_RDATA sc_out sc_lv 32 signal -1 } 
	{ s_axi_AXILiteS_RRESP sc_out sc_lv 2 signal -1 } 
	{ s_axi_AXILiteS_BVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_AXILiteS_BREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_AXILiteS_BRESP sc_out sc_lv 2 signal -1 } 
}
set NewPortList {[ 
	{ "name": "s_axi_AXILiteS_AWADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "AXILiteS", "role": "AWADDR" },"address":[{"name":"trackerPool_state","role":"data","value":"16"},{"name":"trackerPool_eventCount","role":"data","value":"64"},{"name":"trackerPool_resetTime","role":"data","value":"128"},{"name":"trackerPool_x","role":"data","value":"256"},{"name":"trackerPool_y","role":"data","value":"384"},{"name":"trackerPool_prevX","role":"data","value":"512"},{"name":"trackerPool_prevY","role":"data","value":"640"},{"name":"trackerPool_predX","role":"data","value":"768"},{"name":"trackerPool_predY","role":"data","value":"896"},{"name":"trackerPool_shapeFactor","role":"data","value":"1024"},{"name":"trackerPool_origShapeFactor","role":"data","value":"1152"},{"name":"trackerPool_posFactor","role":"data","value":"1280"},{"name":"trackerPool_velFactor","role":"data","value":"1408"},{"name":"trackerPool_clusterSize","role":"data","value":"1536"},{"name":"trackerPool_smoothingFactor","role":"data","value":"1664"},{"name":"trackerPool_sp1x","role":"data","value":"1792"},{"name":"trackerPool_sp2x","role":"data","value":"1920"},{"name":"trackerPool_sp1y","role":"data","value":"2048"},{"name":"trackerPool_sp2y","role":"data","value":"2176"},{"name":"trackerPool_sigmaX","role":"data","value":"2304"},{"name":"trackerPool_sigmaY","role":"data","value":"2432"},{"name":"trackerPool_sigmaXY","role":"data","value":"2560"},{"name":"trackerPool_a","role":"data","value":"2688"},{"name":"trackerPool_b","role":"data","value":"2816"},{"name":"trackerPool_alpha","role":"data","value":"2944"},{"name":"trackerPool_sumFlowX","role":"data","value":"3072"},{"name":"trackerPool_sumFlowY","role":"data","value":"3200"},{"name":"trackerPool_avgFlowX","role":"data","value":"3328"},{"name":"trackerPool_avgFlowY","role":"data","value":"3456"},{"name":"trackerPool_activity","role":"data","value":"3584"},{"name":"trackerPool_lastTimeStamp","role":"data","value":"3712"}] },
	{ "name": "s_axi_AXILiteS_AWVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXILiteS", "role": "AWVALID" } },
	{ "name": "s_axi_AXILiteS_AWREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXILiteS", "role": "AWREADY" } },
	{ "name": "s_axi_AXILiteS_WVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXILiteS", "role": "WVALID" } },
	{ "name": "s_axi_AXILiteS_WREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXILiteS", "role": "WREADY" } },
	{ "name": "s_axi_AXILiteS_WDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "AXILiteS", "role": "WDATA" } },
	{ "name": "s_axi_AXILiteS_WSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "AXILiteS", "role": "WSTRB" } },
	{ "name": "s_axi_AXILiteS_ARADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "AXILiteS", "role": "ARADDR" },"address":[{"name":"trackerPool_eventCount","role":"data","value":"64"},{"name":"trackerPool_resetTime","role":"data","value":"128"},{"name":"trackerPool_prevX","role":"data","value":"512"},{"name":"trackerPool_prevY","role":"data","value":"640"},{"name":"trackerPool_predX","role":"data","value":"768"},{"name":"trackerPool_predY","role":"data","value":"896"},{"name":"trackerPool_shapeFactor","role":"data","value":"1024"},{"name":"trackerPool_origShapeFactor","role":"data","value":"1152"},{"name":"trackerPool_posFactor","role":"data","value":"1280"},{"name":"trackerPool_velFactor","role":"data","value":"1408"},{"name":"trackerPool_clusterSize","role":"data","value":"1536"},{"name":"trackerPool_smoothingFactor","role":"data","value":"1664"},{"name":"trackerPool_sp1x","role":"data","value":"1792"},{"name":"trackerPool_sp2x","role":"data","value":"1920"},{"name":"trackerPool_sp1y","role":"data","value":"2048"},{"name":"trackerPool_sp2y","role":"data","value":"2176"},{"name":"trackerPool_a","role":"data","value":"2688"},{"name":"trackerPool_b","role":"data","value":"2816"},{"name":"trackerPool_alpha","role":"data","value":"2944"},{"name":"trackerPool_sumFlowX","role":"data","value":"3072"},{"name":"trackerPool_sumFlowY","role":"data","value":"3200"},{"name":"trackerPool_activity","role":"data","value":"3584"},{"name":"trackerPool_lastTimeStamp","role":"data","value":"3712"}] },
	{ "name": "s_axi_AXILiteS_ARVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXILiteS", "role": "ARVALID" } },
	{ "name": "s_axi_AXILiteS_ARREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXILiteS", "role": "ARREADY" } },
	{ "name": "s_axi_AXILiteS_RVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXILiteS", "role": "RVALID" } },
	{ "name": "s_axi_AXILiteS_RREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXILiteS", "role": "RREADY" } },
	{ "name": "s_axi_AXILiteS_RDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "AXILiteS", "role": "RDATA" } },
	{ "name": "s_axi_AXILiteS_RRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "AXILiteS", "role": "RRESP" } },
	{ "name": "s_axi_AXILiteS_BVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXILiteS", "role": "BVALID" } },
	{ "name": "s_axi_AXILiteS_BREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXILiteS", "role": "BREADY" } },
	{ "name": "s_axi_AXILiteS_BRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "AXILiteS", "role": "BRESP" } }, 
 	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst_n", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "eventX", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "eventX", "role": "default" }} , 
 	{ "name": "eventY", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "eventY", "role": "default" }} , 
 	{ "name": "newFlow_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "newFlow", "role": "address0" }} , 
 	{ "name": "newFlow_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "newFlow", "role": "ce0" }} , 
 	{ "name": "newFlow_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "newFlow", "role": "q0" }} , 
 	{ "name": "newFlow_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "newFlow", "role": "address1" }} , 
 	{ "name": "newFlow_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "newFlow", "role": "ce1" }} , 
 	{ "name": "newFlow_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "newFlow", "role": "q1" }} , 
 	{ "name": "maxProb", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "maxProb", "role": "default" }} , 
 	{ "name": "maxProb_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "maxProb", "role": "ap_vld" }} , 
 	{ "name": "ap_return", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24"],
		"CDFG" : "getTrackerID_hw",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "100",
		"VariableLatency" : "0", "ExactLatency" : "571", "EstimateLatencyMin" : "571", "EstimateLatencyMax" : "571",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "trackerPool_state", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "trackerPool_eventCount", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "trackerPool_resetTime", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "trackerPool_x", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "trackerPool_y", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "trackerPool_prevX", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "trackerPool_prevY", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "trackerPool_predX", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "trackerPool_predY", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "trackerPool_shapeFactor", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "trackerPool_origShapeFactor", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "trackerPool_posFactor", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "trackerPool_velFactor", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "trackerPool_clusterSize", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "trackerPool_smoothingFactor", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "trackerPool_sp1x", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "trackerPool_sp2x", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "trackerPool_sp1y", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "trackerPool_sp2y", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "trackerPool_sigmaX", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "trackerPool_sigmaY", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "trackerPool_sigmaXY", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "trackerPool_a", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "trackerPool_b", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "trackerPool_alpha", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "trackerPool_sumFlowX", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "trackerPool_sumFlowY", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "trackerPool_avgFlowX", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "trackerPool_avgFlowY", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "trackerPool_activity", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "trackerPool_lastTimeStamp", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "eventX", "Type" : "None", "Direction" : "I"},
			{"Name" : "eventY", "Type" : "None", "Direction" : "I"},
			{"Name" : "newFlow", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "maxProb", "Type" : "Vld", "Direction" : "O"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.getTrackerID_hw_AXILiteS_s_axi_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_GaussianP_fu_4496", "Parent" : "0", "Child" : ["3", "4", "5", "6", "7", "8", "9", "10", "11"],
		"CDFG" : "GaussianP",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "5",
		"VariableLatency" : "0", "ExactLatency" : "115", "EstimateLatencyMin" : "115", "EstimateLatencyMax" : "115",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "eventX", "Type" : "None", "Direction" : "I"},
			{"Name" : "eventY", "Type" : "None", "Direction" : "I"},
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"},
			{"Name" : "sigmaX", "Type" : "None", "Direction" : "I"},
			{"Name" : "sigmaY", "Type" : "None", "Direction" : "I"},
			{"Name" : "sigmaXY", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_GaussianP_fu_4496.getTrackerID_hw_dbkb_U1", "Parent" : "2"},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_GaussianP_fu_4496.getTrackerID_hw_dcud_U2", "Parent" : "2"},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_GaussianP_fu_4496.getTrackerID_hw_dcud_U3", "Parent" : "2"},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_GaussianP_fu_4496.getTrackerID_hw_dcud_U4", "Parent" : "2"},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_GaussianP_fu_4496.getTrackerID_hw_ddEe_U5", "Parent" : "2"},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_GaussianP_fu_4496.getTrackerID_hw_deOg_U6", "Parent" : "2"},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_GaussianP_fu_4496.getTrackerID_hw_sfYi_U7", "Parent" : "2"},
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_GaussianP_fu_4496.getTrackerID_hw_dg8j_U8", "Parent" : "2"},
	{"ID" : "11", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_GaussianP_fu_4496.getTrackerID_hw_dhbi_U9", "Parent" : "2"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_p_hls_fptosi_float_i_fu_4507", "Parent" : "0",
		"CDFG" : "p_hls_fptosi_float_i",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "1",
		"Combinational" : "0",
		"Datapath" : "1",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.getTrackerID_hw_fibs_U25", "Parent" : "0"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.getTrackerID_hw_fjbC_U26", "Parent" : "0"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.getTrackerID_hw_skbM_U27", "Parent" : "0"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.getTrackerID_hw_flbW_U28", "Parent" : "0"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.getTrackerID_hw_fmb6_U29", "Parent" : "0"},
	{"ID" : "18", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.getTrackerID_hw_fmb6_U30", "Parent" : "0"},
	{"ID" : "19", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.getTrackerID_hw_fncg_U31", "Parent" : "0"},
	{"ID" : "20", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.getTrackerID_hw_focq_U32", "Parent" : "0"},
	{"ID" : "21", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.getTrackerID_hw_dpcA_U33", "Parent" : "0"},
	{"ID" : "22", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.getTrackerID_hw_dcud_U34", "Parent" : "0"},
	{"ID" : "23", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.getTrackerID_hw_deOg_U35", "Parent" : "0"},
	{"ID" : "24", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.getTrackerID_hw_sfYi_U36", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	getTrackerID_hw {
		trackerPool_state {Type I LastRead 15 FirstWrite -1}
		trackerPool_eventCount {Type X LastRead -1 FirstWrite -1}
		trackerPool_resetTime {Type X LastRead -1 FirstWrite -1}
		trackerPool_x {Type I LastRead 15 FirstWrite -1}
		trackerPool_y {Type I LastRead 15 FirstWrite -1}
		trackerPool_prevX {Type X LastRead -1 FirstWrite -1}
		trackerPool_prevY {Type X LastRead -1 FirstWrite -1}
		trackerPool_predX {Type X LastRead -1 FirstWrite -1}
		trackerPool_predY {Type X LastRead -1 FirstWrite -1}
		trackerPool_shapeFactor {Type X LastRead -1 FirstWrite -1}
		trackerPool_origShapeFactor {Type X LastRead -1 FirstWrite -1}
		trackerPool_posFactor {Type X LastRead -1 FirstWrite -1}
		trackerPool_velFactor {Type X LastRead -1 FirstWrite -1}
		trackerPool_clusterSize {Type X LastRead -1 FirstWrite -1}
		trackerPool_smoothingFactor {Type X LastRead -1 FirstWrite -1}
		trackerPool_sp1x {Type X LastRead -1 FirstWrite -1}
		trackerPool_sp2x {Type X LastRead -1 FirstWrite -1}
		trackerPool_sp1y {Type X LastRead -1 FirstWrite -1}
		trackerPool_sp2y {Type X LastRead -1 FirstWrite -1}
		trackerPool_sigmaX {Type I LastRead 15 FirstWrite -1}
		trackerPool_sigmaY {Type I LastRead 15 FirstWrite -1}
		trackerPool_sigmaXY {Type I LastRead 15 FirstWrite -1}
		trackerPool_a {Type X LastRead -1 FirstWrite -1}
		trackerPool_b {Type X LastRead -1 FirstWrite -1}
		trackerPool_alpha {Type X LastRead -1 FirstWrite -1}
		trackerPool_sumFlowX {Type X LastRead -1 FirstWrite -1}
		trackerPool_sumFlowY {Type X LastRead -1 FirstWrite -1}
		trackerPool_avgFlowX {Type I LastRead 15 FirstWrite -1}
		trackerPool_avgFlowY {Type I LastRead 15 FirstWrite -1}
		trackerPool_activity {Type X LastRead -1 FirstWrite -1}
		trackerPool_lastTimeStamp {Type X LastRead -1 FirstWrite -1}
		eventX {Type I LastRead 0 FirstWrite -1}
		eventY {Type I LastRead 1 FirstWrite -1}
		newFlow {Type I LastRead 1 FirstWrite -1}
		maxProb {Type O LastRead -1 FirstWrite 571}}
	GaussianP {
		eventX {Type I LastRead 0 FirstWrite -1}
		eventY {Type I LastRead 1 FirstWrite -1}
		x {Type I LastRead 4 FirstWrite -1}
		y {Type I LastRead 4 FirstWrite -1}
		sigmaX {Type I LastRead 0 FirstWrite -1}
		sigmaY {Type I LastRead 0 FirstWrite -1}
		sigmaXY {Type I LastRead 0 FirstWrite -1}}
	p_hls_fptosi_float_i {
		x {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "571", "Max" : "571"}
	, {"Name" : "Interval", "Min" : "100", "Max" : "100"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	eventX { ap_none {  { eventX in_data 0 32 } } }
	eventY { ap_none {  { eventY in_data 0 32 } } }
	newFlow { ap_memory {  { newFlow_address0 mem_address 1 1 }  { newFlow_ce0 mem_ce 1 1 }  { newFlow_q0 mem_dout 0 64 }  { newFlow_address1 MemPortADDR2 1 1 }  { newFlow_ce1 MemPortCE2 1 1 }  { newFlow_q1 MemPortDOUT2 0 64 } } }
	maxProb { ap_vld {  { maxProb out_data 1 64 }  { maxProb_ap_vld out_vld 1 1 } } }
}

set busDeadlockParameterList { 
}

# RTL port scheduling information:
set fifoSchedulingInfoList { 
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}
