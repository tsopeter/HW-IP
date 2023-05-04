; ModuleID = 'C:/Users/tsope/AppData/Roaming/Xilinx/Vitis/matrix-multiplyer-kv260/solution1/.autopilot/db/a.g.ld.5.gdce.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-i128:128-i256:256-i512:512-i1024:1024-i2048:2048-i4096:4096-n8:16:32:64-S128-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024"
target triple = "fpga64-xilinx-none"

%"struct.ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>" = type { %"struct.ap_fixed_base<8, 8, true, AP_TRN, AP_WRAP, 0>" }
%"struct.ap_fixed_base<8, 8, true, AP_TRN, AP_WRAP, 0>" = type { %"struct.ssdm_int<8, true>" }
%"struct.ssdm_int<8, true>" = type { i8 }

; Function Attrs: noinline
define void @apatb_dot_product_interface_ir([1024 x %"struct.ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>"]* noalias nocapture nonnull readonly "fpga.decayed.dim.hint"="1024" %A, [1024 x %"struct.ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>"]* noalias nocapture nonnull readonly "fpga.decayed.dim.hint"="1024" %B, [1024 x %"struct.ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>"]* noalias nocapture nonnull "fpga.decayed.dim.hint"="1024" %C, i32 %m, i32 %n, i32 %h) local_unnamed_addr #0 {
entry:
  %malloccall = tail call i8* @malloc(i64 1048576)
  %A_copy = bitcast i8* %malloccall to [1024 x [1024 x %"struct.ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>"]]*
  %malloccall1 = tail call i8* @malloc(i64 1048576)
  %B_copy = bitcast i8* %malloccall1 to [1024 x [1024 x %"struct.ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>"]]*
  %malloccall2 = tail call i8* @malloc(i64 1048576)
  %C_copy = bitcast i8* %malloccall2 to [1024 x [1024 x %"struct.ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>"]]*
  %0 = bitcast [1024 x %"struct.ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>"]* %A to [1024 x [1024 x %"struct.ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>"]]*
  %1 = bitcast [1024 x %"struct.ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>"]* %B to [1024 x [1024 x %"struct.ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>"]]*
  %2 = bitcast [1024 x %"struct.ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>"]* %C to [1024 x [1024 x %"struct.ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>"]]*
  call fastcc void @copy_in([1024 x [1024 x %"struct.ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>"]]* nonnull %0, [1024 x [1024 x %"struct.ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>"]]* %A_copy, [1024 x [1024 x %"struct.ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>"]]* nonnull %1, [1024 x [1024 x %"struct.ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>"]]* %B_copy, [1024 x [1024 x %"struct.ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>"]]* nonnull %2, [1024 x [1024 x %"struct.ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>"]]* %C_copy)
  %3 = getelementptr inbounds [1024 x [1024 x %"struct.ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>"]], [1024 x [1024 x %"struct.ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>"]]* %A_copy, i32 0, i32 0
  %4 = getelementptr inbounds [1024 x [1024 x %"struct.ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>"]], [1024 x [1024 x %"struct.ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>"]]* %B_copy, i32 0, i32 0
  %5 = getelementptr inbounds [1024 x [1024 x %"struct.ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>"]], [1024 x [1024 x %"struct.ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>"]]* %C_copy, i32 0, i32 0
  call void @apatb_dot_product_interface_hw([1024 x %"struct.ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>"]* %3, [1024 x %"struct.ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>"]* %4, [1024 x %"struct.ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>"]* %5, i32 %m, i32 %n, i32 %h)
  call void @copy_back([1024 x [1024 x %"struct.ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>"]]* %0, [1024 x [1024 x %"struct.ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>"]]* %A_copy, [1024 x [1024 x %"struct.ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>"]]* %1, [1024 x [1024 x %"struct.ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>"]]* %B_copy, [1024 x [1024 x %"struct.ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>"]]* %2, [1024 x [1024 x %"struct.ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>"]]* %C_copy)
  tail call void @free(i8* %malloccall)
  tail call void @free(i8* %malloccall1)
  tail call void @free(i8* %malloccall2)
  ret void
}

declare noalias i8* @malloc(i64) local_unnamed_addr

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @copy_in([1024 x [1024 x %"struct.ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>"]]* noalias readonly, [1024 x [1024 x %"struct.ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>"]]* noalias, [1024 x [1024 x %"struct.ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>"]]* noalias readonly, [1024 x [1024 x %"struct.ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>"]]* noalias, [1024 x [1024 x %"struct.ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>"]]* noalias readonly, [1024 x [1024 x %"struct.ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>"]]* noalias) unnamed_addr #1 {
entry:
  call fastcc void @"onebyonecpy_hls.p0a1024a1024struct.ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>"([1024 x [1024 x %"struct.ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>"]]* %1, [1024 x [1024 x %"struct.ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>"]]* %0)
  call fastcc void @"onebyonecpy_hls.p0a1024a1024struct.ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>"([1024 x [1024 x %"struct.ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>"]]* %3, [1024 x [1024 x %"struct.ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>"]]* %2)
  call fastcc void @"onebyonecpy_hls.p0a1024a1024struct.ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>"([1024 x [1024 x %"struct.ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>"]]* %5, [1024 x [1024 x %"struct.ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>"]]* %4)
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @"onebyonecpy_hls.p0a1024a1024struct.ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>"([1024 x [1024 x %"struct.ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>"]]* noalias, [1024 x [1024 x %"struct.ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>"]]* noalias readonly) unnamed_addr #2 {
entry:
  %2 = icmp eq [1024 x [1024 x %"struct.ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>"]]* %0, null
  %3 = icmp eq [1024 x [1024 x %"struct.ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>"]]* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %for.loop.split, %copy
  %for.loop.idx16 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %for.loop.split ]
  br label %for.loop2

for.loop2:                                        ; preds = %for.loop2, %for.loop
  %for.loop.idx315 = phi i64 [ 0, %for.loop ], [ %for.loop.idx3.next, %for.loop2 ]
  %src.addr6.0.0.013 = getelementptr [1024 x [1024 x %"struct.ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>"]], [1024 x [1024 x %"struct.ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>"]]* %1, i64 0, i64 %for.loop.idx16, i64 %for.loop.idx315, i32 0, i32 0, i32 0
  %dst.addr5.0.0.014 = getelementptr [1024 x [1024 x %"struct.ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>"]], [1024 x [1024 x %"struct.ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>"]]* %0, i64 0, i64 %for.loop.idx16, i64 %for.loop.idx315, i32 0, i32 0, i32 0
  %5 = load i8, i8* %src.addr6.0.0.013, align 1
  store i8 %5, i8* %dst.addr5.0.0.014, align 1
  %for.loop.idx3.next = add nuw nsw i64 %for.loop.idx315, 1
  %exitcond = icmp ne i64 %for.loop.idx3.next, 1024
  br i1 %exitcond, label %for.loop2, label %for.loop.split

for.loop.split:                                   ; preds = %for.loop2
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx16, 1
  %exitcond17 = icmp ne i64 %for.loop.idx.next, 1024
  br i1 %exitcond17, label %for.loop, label %ret

ret:                                              ; preds = %for.loop.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @copy_out([1024 x [1024 x %"struct.ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>"]]* noalias, [1024 x [1024 x %"struct.ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>"]]* noalias readonly, [1024 x [1024 x %"struct.ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>"]]* noalias, [1024 x [1024 x %"struct.ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>"]]* noalias readonly, [1024 x [1024 x %"struct.ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>"]]* noalias, [1024 x [1024 x %"struct.ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>"]]* noalias readonly) unnamed_addr #3 {
entry:
  call fastcc void @"onebyonecpy_hls.p0a1024a1024struct.ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>"([1024 x [1024 x %"struct.ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>"]]* %0, [1024 x [1024 x %"struct.ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>"]]* %1)
  call fastcc void @"onebyonecpy_hls.p0a1024a1024struct.ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>"([1024 x [1024 x %"struct.ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>"]]* %2, [1024 x [1024 x %"struct.ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>"]]* %3)
  call fastcc void @"onebyonecpy_hls.p0a1024a1024struct.ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>"([1024 x [1024 x %"struct.ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>"]]* %4, [1024 x [1024 x %"struct.ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>"]]* %5)
  ret void
}

declare void @free(i8*) local_unnamed_addr

declare void @apatb_dot_product_interface_hw([1024 x %"struct.ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>"]*, [1024 x %"struct.ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>"]*, [1024 x %"struct.ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>"]*, i32, i32, i32)

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @copy_back([1024 x [1024 x %"struct.ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>"]]* noalias, [1024 x [1024 x %"struct.ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>"]]* noalias readonly, [1024 x [1024 x %"struct.ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>"]]* noalias, [1024 x [1024 x %"struct.ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>"]]* noalias readonly, [1024 x [1024 x %"struct.ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>"]]* noalias, [1024 x [1024 x %"struct.ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>"]]* noalias readonly) unnamed_addr #3 {
entry:
  call fastcc void @"onebyonecpy_hls.p0a1024a1024struct.ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>"([1024 x [1024 x %"struct.ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>"]]* %4, [1024 x [1024 x %"struct.ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>"]]* %5)
  ret void
}

define void @dot_product_interface_hw_stub_wrapper([1024 x %"struct.ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>"]*, [1024 x %"struct.ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>"]*, [1024 x %"struct.ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>"]*, i32, i32, i32) #4 {
entry:
  %6 = bitcast [1024 x %"struct.ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>"]* %0 to [1024 x [1024 x %"struct.ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>"]]*
  %7 = bitcast [1024 x %"struct.ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>"]* %1 to [1024 x [1024 x %"struct.ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>"]]*
  %8 = bitcast [1024 x %"struct.ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>"]* %2 to [1024 x [1024 x %"struct.ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>"]]*
  call void @copy_out([1024 x [1024 x %"struct.ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>"]]* null, [1024 x [1024 x %"struct.ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>"]]* %6, [1024 x [1024 x %"struct.ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>"]]* null, [1024 x [1024 x %"struct.ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>"]]* %7, [1024 x [1024 x %"struct.ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>"]]* null, [1024 x [1024 x %"struct.ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>"]]* %8)
  %9 = bitcast [1024 x [1024 x %"struct.ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>"]]* %6 to [1024 x %"struct.ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>"]*
  %10 = bitcast [1024 x [1024 x %"struct.ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>"]]* %7 to [1024 x %"struct.ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>"]*
  %11 = bitcast [1024 x [1024 x %"struct.ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>"]]* %8 to [1024 x %"struct.ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>"]*
  call void @dot_product_interface_hw_stub([1024 x %"struct.ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>"]* %9, [1024 x %"struct.ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>"]* %10, [1024 x %"struct.ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>"]* %11, i32 %3, i32 %4, i32 %5)
  call void @copy_in([1024 x [1024 x %"struct.ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>"]]* null, [1024 x [1024 x %"struct.ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>"]]* %6, [1024 x [1024 x %"struct.ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>"]]* null, [1024 x [1024 x %"struct.ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>"]]* %7, [1024 x [1024 x %"struct.ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>"]]* null, [1024 x [1024 x %"struct.ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>"]]* %8)
  ret void
}

declare void @dot_product_interface_hw_stub([1024 x %"struct.ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>"]*, [1024 x %"struct.ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>"]*, [1024 x %"struct.ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>"]*, i32, i32, i32)

attributes #0 = { noinline "fpga.wrapper.func"="wrapper" }
attributes #1 = { argmemonly noinline norecurse "fpga.wrapper.func"="copyin" }
attributes #2 = { argmemonly noinline norecurse "fpga.wrapper.func"="onebyonecpy_hls" }
attributes #3 = { argmemonly noinline norecurse "fpga.wrapper.func"="copyout" }
attributes #4 = { "fpga.wrapper.func"="stub" }

!llvm.dbg.cu = !{}
!llvm.ident = !{!0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0}
!llvm.module.flags = !{!1, !2, !3}
!blackbox_cfg = !{!4}

!0 = !{!"clang version 7.0.0 "}
!1 = !{i32 2, !"Dwarf Version", i32 4}
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 1, !"wchar_size", i32 4}
!4 = !{}
