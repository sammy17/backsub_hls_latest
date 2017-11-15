############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 2015 Xilinx Inc. All rights reserved.
############################################################
open_project backsub_hls_new
set_top backsub
add_files backsub_hls_new/core.h
add_files backsub_hls_new/core.cpp
add_files -tb backsub_hls_new/cut_out.avi
add_files -tb backsub_hls_new/test.cpp
add_files -tb backsub_hls_new/test.webm
add_files -tb backsub_hls_new/test_cam.cpp
add_files -tb backsub_hls_new/test_cam.h
open_solution "solution1"
set_part {xc7z020clg484-1}
create_clock -period 10 -name default
#source "./backsub_hls_new/solution1/directives.tcl"
csim_design -clean
csynth_design
cosim_design -setup -trace_level all
export_design -format ip_catalog
