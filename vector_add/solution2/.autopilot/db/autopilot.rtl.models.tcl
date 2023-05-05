set SynModuleInfo {
  {SRCNAME vector_add MODELNAME vector_add RTLNAME vector_add IS_TOP 1
    SUBMODULES {
      {MODELNAME vector_add_mul_8s_8s_8_1_1 RTLNAME vector_add_mul_8s_8s_8_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME vector_add_control_s_axi RTLNAME vector_add_control_s_axi BINDTYPE interface TYPE interface_s_axilite}
      {MODELNAME vector_add_regslice_both RTLNAME vector_add_regslice_both BINDTYPE interface TYPE interface_regslice INSTNAME vector_add_regslice_both_U}
    }
  }
}
