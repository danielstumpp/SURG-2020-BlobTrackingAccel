############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
############################################################
open_project getID_hls
set_top getTrackerID_hw
add_files ../src/GaussianTracker.cpp
add_files ../include/GaussianTracker.h
add_files ../src/TrackerPool.cpp
add_files ../include/TrackerPool.h
add_files getID_hls/hw_functions.cpp
add_files -tb getID_hls/getID_tb.cpp
open_solution "solution1"
set_part {xc7z020clg484-1}
create_clock -period 10 -name default
#source "./getID_hls/solution1/directives.tcl"
csim_design
csynth_design
cosim_design
export_design -format ip_catalog
