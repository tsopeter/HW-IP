set SynModuleInfo {
  {SRCNAME Loop_L1_proc_Pipeline_SUM MODELNAME Loop_L1_proc_Pipeline_SUM RTLNAME dot_product_interface_Loop_L1_proc_Pipeline_SUM
    SUBMODULES {
      {MODELNAME dot_product_interface_mac_muladd_8s_8s_8ns_8_4_1 RTLNAME dot_product_interface_mac_muladd_8s_8s_8ns_8_4_1 BINDTYPE op TYPE all IMPL dsp48 LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME dot_product_interface_flow_control_loop_pipe_sequential_init RTLNAME dot_product_interface_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME dot_product_interface_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME Loop_L1_proc MODELNAME Loop_L1_proc RTLNAME dot_product_interface_Loop_L1_proc
    SUBMODULES {
      {MODELNAME dot_product_interface_mul_64ns_64ns_128_1_1 RTLNAME dot_product_interface_mul_64ns_64ns_128_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME dot_product_interface MODELNAME dot_product_interface RTLNAME dot_product_interface IS_TOP 1
    SUBMODULES {
      {MODELNAME dot_product_interface_control_s_axi RTLNAME dot_product_interface_control_s_axi BINDTYPE interface TYPE interface_s_axilite}
    }
  }
}
