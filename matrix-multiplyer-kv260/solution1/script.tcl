############################################################
## This file is generated automatically by Vitis HLS.
## Please DO NOT edit it.
## Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
############################################################
open_project matrix-multiplyer-kv260
set_top dot_product_interface
add_files matrix-multiplyer-kv260/dot_product.cpp
add_files matrix-multiplyer-kv260/dot_product.hpp
open_solution "solution1" -flow_target vivado
set_part {xck26-sfvc784-2LV-c}
create_clock -period 10 -name default
config_export -format ip_catalog -library hls -rtl verilog -vendor xilinx -version 1.1.0
source "./matrix-multiplyer-kv260/solution1/directives.tcl"
#csim_design
csynth_design
#cosim_design
export_design -rtl verilog -format ip_catalog
