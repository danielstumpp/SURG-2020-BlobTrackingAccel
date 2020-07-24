# This script segment is generated automatically by AutoPilot

set axilite_register_dict [dict create]
set port_AXILiteS {
trackerPool_state { 
	dir I
	width 2
	depth 16
	mode ap_memory
	offset 16
	offset_end 31
}
trackerPool_eventCount { 
	dir X
	width 32
	depth 16
	mode ap_memory
	offset 64
	offset_end 127
}
trackerPool_resetTime { 
	dir X
	width 32
	depth 16
	mode ap_memory
	offset 128
	offset_end 191
}
trackerPool_x { 
	dir I
	width 64
	depth 16
	mode ap_memory
	offset 256
	offset_end 383
}
trackerPool_y { 
	dir I
	width 64
	depth 16
	mode ap_memory
	offset 384
	offset_end 511
}
trackerPool_prevX { 
	dir X
	width 64
	depth 16
	mode ap_memory
	offset 512
	offset_end 639
}
trackerPool_prevY { 
	dir X
	width 64
	depth 16
	mode ap_memory
	offset 640
	offset_end 767
}
trackerPool_predX { 
	dir X
	width 64
	depth 16
	mode ap_memory
	offset 768
	offset_end 895
}
trackerPool_predY { 
	dir X
	width 64
	depth 16
	mode ap_memory
	offset 896
	offset_end 1023
}
trackerPool_shapeFactor { 
	dir X
	width 64
	depth 16
	mode ap_memory
	offset 1024
	offset_end 1151
}
trackerPool_origShapeFactor { 
	dir X
	width 64
	depth 16
	mode ap_memory
	offset 1152
	offset_end 1279
}
trackerPool_posFactor { 
	dir X
	width 64
	depth 16
	mode ap_memory
	offset 1280
	offset_end 1407
}
trackerPool_velFactor { 
	dir X
	width 64
	depth 16
	mode ap_memory
	offset 1408
	offset_end 1535
}
trackerPool_clusterSize { 
	dir X
	width 64
	depth 16
	mode ap_memory
	offset 1536
	offset_end 1663
}
trackerPool_smoothingFactor { 
	dir X
	width 64
	depth 16
	mode ap_memory
	offset 1664
	offset_end 1791
}
trackerPool_sp1x { 
	dir X
	width 64
	depth 16
	mode ap_memory
	offset 1792
	offset_end 1919
}
trackerPool_sp2x { 
	dir X
	width 64
	depth 16
	mode ap_memory
	offset 1920
	offset_end 2047
}
trackerPool_sp1y { 
	dir X
	width 64
	depth 16
	mode ap_memory
	offset 2048
	offset_end 2175
}
trackerPool_sp2y { 
	dir X
	width 64
	depth 16
	mode ap_memory
	offset 2176
	offset_end 2303
}
trackerPool_sigmaX { 
	dir I
	width 64
	depth 16
	mode ap_memory
	offset 2304
	offset_end 2431
}
trackerPool_sigmaY { 
	dir I
	width 64
	depth 16
	mode ap_memory
	offset 2432
	offset_end 2559
}
trackerPool_sigmaXY { 
	dir I
	width 64
	depth 16
	mode ap_memory
	offset 2560
	offset_end 2687
}
trackerPool_a { 
	dir X
	width 64
	depth 16
	mode ap_memory
	offset 2688
	offset_end 2815
}
trackerPool_b { 
	dir X
	width 64
	depth 16
	mode ap_memory
	offset 2816
	offset_end 2943
}
trackerPool_alpha { 
	dir X
	width 64
	depth 16
	mode ap_memory
	offset 2944
	offset_end 3071
}
trackerPool_sumFlowX { 
	dir X
	width 64
	depth 16
	mode ap_memory
	offset 3072
	offset_end 3199
}
trackerPool_sumFlowY { 
	dir X
	width 64
	depth 16
	mode ap_memory
	offset 3200
	offset_end 3327
}
trackerPool_avgFlowX { 
	dir I
	width 64
	depth 16
	mode ap_memory
	offset 3328
	offset_end 3455
}
trackerPool_avgFlowY { 
	dir I
	width 64
	depth 16
	mode ap_memory
	offset 3456
	offset_end 3583
}
trackerPool_activity { 
	dir X
	width 64
	depth 16
	mode ap_memory
	offset 3584
	offset_end 3711
}
trackerPool_lastTimeStamp { 
	dir X
	width 32
	depth 16
	mode ap_memory
	offset 3712
	offset_end 3775
}
}
dict set axilite_register_dict AXILiteS $port_AXILiteS


