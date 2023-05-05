############################################################
## This file is generated automatically by Vitis HLS.
## Please DO NOT edit it.
## Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
############################################################
open_project vector_add
set_top vector_add
add_files vector_add/vector_add.cpp
open_solution "solution1" -flow_target vivado
set_part {xck26-sfvc784-2LV-c}
create_clock -period 10 -name default
config_export -format ip_catalog -library math -rtl verilog -vendor ku -version 1.1.0
#source "./vector_add/solution1/directives.tcl"
#csim_design
csynth_design
#cosim_design
export_design -rtl verilog -format ip_catalog
