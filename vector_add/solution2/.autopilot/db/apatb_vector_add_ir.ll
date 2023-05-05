; ModuleID = 'C:/Users/tsope/OneDrive/Documents/GitHub/HW-IP/vector_add/solution2/.autopilot/db/a.g.ld.5.gdce.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-i128:128-i256:256-i512:512-i1024:1024-i2048:2048-i4096:4096-n8:16:32:64-S128-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024"
target triple = "fpga64-xilinx-none"

%"class.hls::stream<ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>, 0>" = type { %"struct.ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>" }
%"struct.ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>" = type { %"struct.ap_fixed_base<8, 8, true, AP_TRN, AP_WRAP, 0>" }
%"struct.ap_fixed_base<8, 8, true, AP_TRN, AP_WRAP, 0>" = type { %"struct.ssdm_int<8, true>" }
%"struct.ssdm_int<8, true>" = type { i8 }

; Function Attrs: inaccessiblememonly nounwind
declare void @llvm.sideeffect() #0

; Function Attrs: noinline
define void @apatb_vector_add_ir(%"class.hls::stream<ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>, 0>"* noalias nocapture nonnull dereferenceable(1) %x, %"class.hls::stream<ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>, 0>"* noalias nocapture nonnull dereferenceable(1) %w, %"struct.ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>"* noalias nocapture nonnull dereferenceable(1) %y) local_unnamed_addr #1 {
entry:
  %x_copy = alloca %"class.hls::stream<ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>, 0>", align 512
  call void @llvm.sideeffect() #8 [ "stream_interface"(%"class.hls::stream<ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>, 0>"* %x_copy, i32 0) ]
  %w_copy = alloca %"class.hls::stream<ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>, 0>", align 512
  call void @llvm.sideeffect() #8 [ "stream_interface"(%"class.hls::stream<ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>, 0>"* %w_copy, i32 0) ]
  %y_copy = alloca i8, align 512
  call fastcc void @copy_in(%"class.hls::stream<ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>, 0>"* nonnull %x, %"class.hls::stream<ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>, 0>"* nonnull align 512 %x_copy, %"class.hls::stream<ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>, 0>"* nonnull %w, %"class.hls::stream<ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>, 0>"* nonnull align 512 %w_copy, %"struct.ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>"* nonnull %y, i8* nonnull align 512 %y_copy)
  call void @apatb_vector_add_hw(%"class.hls::stream<ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>, 0>"* %x_copy, %"class.hls::stream<ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>, 0>"* %w_copy, i8* %y_copy)
  call void @copy_back(%"class.hls::stream<ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>, 0>"* %x, %"class.hls::stream<ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>, 0>"* %x_copy, %"class.hls::stream<ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>, 0>"* %w, %"class.hls::stream<ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>, 0>"* %w_copy, %"struct.ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>"* %y, i8* %y_copy)
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @copy_in(%"class.hls::stream<ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>, 0>"* noalias "unpacked"="0", %"class.hls::stream<ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>, 0>"* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "unpacked"="1", %"class.hls::stream<ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>, 0>"* noalias "unpacked"="2", %"class.hls::stream<ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>, 0>"* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "unpacked"="3", %"struct.ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>"* noalias readonly "unpacked"="4", i8* noalias nocapture align 512 "unpacked"="5.0.0.0") unnamed_addr #2 {
entry:
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>, 0>"(%"class.hls::stream<ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>, 0>"* align 512 %1, %"class.hls::stream<ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>, 0>"* %0)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>, 0>"(%"class.hls::stream<ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>, 0>"* align 512 %3, %"class.hls::stream<ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>, 0>"* %2)
  call fastcc void @"onebyonecpy_hls.p0struct.ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>"(i8* align 512 %5, %"struct.ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>"* %4)
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @"onebyonecpy_hls.p0class.hls::stream<ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>, 0>"(%"class.hls::stream<ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>, 0>"* noalias align 512 "fpga.caller.interfaces"="layout_transformed", %"class.hls::stream<ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>, 0>"* noalias "fpga.caller.interfaces"="layout_transformed") unnamed_addr #3 {
entry:
  %2 = icmp eq %"class.hls::stream<ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>, 0>"* %0, null
  %3 = icmp eq %"class.hls::stream<ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>, 0>"* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  call fastcc void @"streamcpy_hls.p0class.hls::stream<ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>, 0>"(%"class.hls::stream<ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>, 0>"* nonnull align 512 %0, %"class.hls::stream<ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>, 0>"* nonnull %1)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @"streamcpy_hls.p0class.hls::stream<ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>, 0>"(%"class.hls::stream<ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>, 0>"* noalias nocapture align 512 "fpga.caller.interfaces"="layout_transformed", %"class.hls::stream<ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>, 0>"* noalias nocapture "fpga.caller.interfaces"="layout_transformed") unnamed_addr #4 {
entry:
  %2 = alloca %"class.hls::stream<ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>, 0>"
  br label %empty

empty:                                            ; preds = %push, %entry
  %3 = bitcast %"class.hls::stream<ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>, 0>"* %1 to i8*
  %4 = call i1 @fpga_fifo_not_empty_1(i8* %3)
  br i1 %4, label %push, label %ret

push:                                             ; preds = %empty
  %5 = bitcast %"class.hls::stream<ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>, 0>"* %2 to i8*
  %6 = bitcast %"class.hls::stream<ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>, 0>"* %1 to i8*
  call void @fpga_fifo_pop_1(i8* %5, i8* %6)
  %7 = load volatile %"class.hls::stream<ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>, 0>", %"class.hls::stream<ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>, 0>"* %2
  %8 = bitcast %"class.hls::stream<ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>, 0>"* %2 to i8*
  %9 = bitcast %"class.hls::stream<ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>, 0>"* %0 to i8*
  call void @fpga_fifo_push_1(i8* %8, i8* %9)
  br label %empty, !llvm.loop !5

ret:                                              ; preds = %empty
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @copy_out(%"class.hls::stream<ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>, 0>"* noalias "unpacked"="0", %"class.hls::stream<ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>, 0>"* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "unpacked"="1", %"class.hls::stream<ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>, 0>"* noalias "unpacked"="2", %"class.hls::stream<ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>, 0>"* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "unpacked"="3", %"struct.ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>"* noalias "unpacked"="4", i8* noalias nocapture readonly align 512 "unpacked"="5.0.0.0") unnamed_addr #5 {
entry:
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>, 0>"(%"class.hls::stream<ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>, 0>"* %0, %"class.hls::stream<ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>, 0>"* align 512 %1)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>, 0>"(%"class.hls::stream<ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>, 0>"* %2, %"class.hls::stream<ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>, 0>"* align 512 %3)
  call fastcc void @"onebyonecpy_hls.p0struct.ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>.7"(%"struct.ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>"* %4, i8* align 512 %5)
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @"onebyonecpy_hls.p0struct.ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>.7"(%"struct.ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>"* noalias "unpacked"="0", i8* noalias nocapture readonly align 512 "unpacked"="1.0.0.0") unnamed_addr #6 {
entry:
  %2 = icmp eq %"struct.ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>"* %0, null
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  %.01.0.05 = getelementptr %"struct.ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>", %"struct.ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>"* %0, i32 0, i32 0, i32 0, i32 0
  %3 = load i8, i8* %1, align 512
  store i8 %3, i8* %.01.0.05, align 1
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @"onebyonecpy_hls.p0struct.ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>"(i8* noalias nocapture align 512 "unpacked"="0.0.0.0", %"struct.ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>"* noalias readonly "unpacked"="1") unnamed_addr #6 {
entry:
  %2 = icmp eq %"struct.ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>"* %1, null
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  %.0.0.04 = getelementptr %"struct.ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>", %"struct.ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>"* %1, i32 0, i32 0, i32 0, i32 0
  %3 = load i8, i8* %.0.0.04, align 1
  store i8 %3, i8* %0, align 512
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

declare void @apatb_vector_add_hw(%"class.hls::stream<ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>, 0>"*, %"class.hls::stream<ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>, 0>"*, i8*)

; Function Attrs: argmemonly noinline
define internal fastcc void @copy_back(%"class.hls::stream<ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>, 0>"* noalias "unpacked"="0", %"class.hls::stream<ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>, 0>"* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "unpacked"="1", %"class.hls::stream<ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>, 0>"* noalias "unpacked"="2", %"class.hls::stream<ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>, 0>"* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "unpacked"="3", %"struct.ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>"* noalias "unpacked"="4", i8* noalias nocapture readonly align 512 "unpacked"="5.0.0.0") unnamed_addr #5 {
entry:
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>, 0>"(%"class.hls::stream<ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>, 0>"* %0, %"class.hls::stream<ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>, 0>"* align 512 %1)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>, 0>"(%"class.hls::stream<ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>, 0>"* %2, %"class.hls::stream<ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>, 0>"* align 512 %3)
  call fastcc void @"onebyonecpy_hls.p0struct.ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>.7"(%"struct.ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>"* %4, i8* align 512 %5)
  ret void
}

define void @vector_add_hw_stub_wrapper(%"class.hls::stream<ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>, 0>"*, %"class.hls::stream<ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>, 0>"*, i8*) #7 {
entry:
  %3 = alloca %"struct.ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>"
  call void @copy_out(%"class.hls::stream<ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>, 0>"* null, %"class.hls::stream<ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>, 0>"* %0, %"class.hls::stream<ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>, 0>"* null, %"class.hls::stream<ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>, 0>"* %1, %"struct.ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>"* %3, i8* %2)
  call void @vector_add_hw_stub(%"class.hls::stream<ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>, 0>"* %0, %"class.hls::stream<ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>, 0>"* %1, %"struct.ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>"* %3)
  call void @copy_in(%"class.hls::stream<ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>, 0>"* null, %"class.hls::stream<ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>, 0>"* %0, %"class.hls::stream<ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>, 0>"* null, %"class.hls::stream<ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>, 0>"* %1, %"struct.ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>"* %3, i8* %2)
  ret void
}

declare void @vector_add_hw_stub(%"class.hls::stream<ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>, 0>"*, %"class.hls::stream<ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>, 0>"*, %"struct.ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>"*)

declare i1 @fpga_fifo_not_empty_1(i8*)

declare void @fpga_fifo_pop_1(i8*, i8*)

declare void @fpga_fifo_push_1(i8*, i8*)

attributes #0 = { inaccessiblememonly nounwind }
attributes #1 = { noinline "fpga.wrapper.func"="wrapper" }
attributes #2 = { argmemonly noinline "fpga.wrapper.func"="copyin" }
attributes #3 = { argmemonly noinline "fpga.wrapper.func"="onebyonecpy_hls" }
attributes #4 = { argmemonly noinline "fpga.wrapper.func"="streamcpy_hls" }
attributes #5 = { argmemonly noinline "fpga.wrapper.func"="copyout" }
attributes #6 = { argmemonly noinline norecurse "fpga.wrapper.func"="onebyonecpy_hls" }
attributes #7 = { "fpga.wrapper.func"="stub" }
attributes #8 = { inaccessiblememonly nounwind "xlx.port.bitwidth"="8" "xlx.source"="user" }

!llvm.dbg.cu = !{}
!llvm.ident = !{!0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0}
!llvm.module.flags = !{!1, !2, !3}
!blackbox_cfg = !{!4}

!0 = !{!"clang version 7.0.0 "}
!1 = !{i32 2, !"Dwarf Version", i32 4}
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 1, !"wchar_size", i32 4}
!4 = !{}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.rotate.disable"}
