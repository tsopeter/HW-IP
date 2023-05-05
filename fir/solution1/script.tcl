############################################################
## This file is generated automatically by Vitis HLS.
## Please DO NOT edit it.
## Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
############################################################
open_project fir
set_top krnl_fir
add_files fir/fir.cpp
open_solution "solution1" -flow_target vivado
set_part {xck26-sfvc784-2LV-c}
create_clock -period 10 -name default
#source "./fir/solution1/directives.tcl"
#csim_design
csynth_design
#cosim_design
export_design -format ip_catalog
