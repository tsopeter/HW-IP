############################################################
## This file is generated automatically by Vitis HLS.
## Please DO NOT edit it.
## Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
############################################################
set_directive_top -name dot_product_interface "dot_product_interface"
set_directive_dataflow "dot_product_interface"
set_directive_inline "dot_product"
set_directive_interface -mode s_axilite -offset 0x0 "dot_product_interface" A
set_directive_interface -mode s_axilite -offset 0x4 "dot_product_interface" B
set_directive_interface -mode s_axilite -offset 0x8 "dot_product_interface" C
set_directive_interface -mode s_axilite -offset 0xC "dot_product_interface" m
set_directive_interface -mode s_axilite -offset 0x10 "dot_product_interface" n
set_directive_interface -mode s_axilite -offset 0x14 "dot_product_interface" h
