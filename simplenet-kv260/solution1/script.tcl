############################################################
## This file is generated automatically by Vitis HLS.
## Please DO NOT edit it.
## Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
############################################################
open_project simplenet-kv260
add_files ../../../../Downloads/simplenet-20230504T170352Z-001/simplenet/simplenet.cpp
add_files ../../../../Downloads/simplenet-20230504T170352Z-001/simplenet/simplenet.hpp
open_solution "solution1" -flow_target vivado
set_part {xck26-sfvc784-2LV-c}
create_clock -period 10 -name default
#source "./simplenet-kv260/solution1/directives.tcl"
#csim_design
csynth_design
#cosim_design
export_design -format ip_catalog
