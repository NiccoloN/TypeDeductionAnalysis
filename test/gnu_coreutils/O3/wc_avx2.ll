; ModuleID = 'llvm-link'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wc_lines = type { i32, i64, i64 }

; Function Attrs: nofree nounwind uwtable
define dso_local void @wc_lines_avx2(ptr dead_on_unwind noalias nocapture writable writeonly sret(%struct.wc_lines) align 8 %agg.result, i32 noundef %fd) local_unnamed_addr #0 {
entry:
  %avx_buf = alloca [8192 x <4 x i64>], align 32
  call void @llvm.lifetime.start.p0(i64 262144, ptr nonnull %avx_buf) #5
  %call155 = call i64 @read(i32 noundef %fd, ptr noundef nonnull %avx_buf, i64 noundef 262144) #5
  %cmp56 = icmp sgt i64 %call155, 0
  br i1 %cmp56, label %if.end, label %if.then

if.then:                                          ; preds = %cleanup, %entry
  %bytes.0.lcssa = phi i64 [ 0, %entry ], [ %add, %cleanup ]
  %lines.0.lcssa = phi i64 [ 0, %entry ], [ %lines.2.lcssa, %cleanup ]
  %call1.lcssa = phi i64 [ %call155, %entry ], [ %call1, %cleanup ]
  %cmp2 = icmp eq i64 %call1.lcssa, 0
  br i1 %cmp2, label %cleanup.thread, label %cond.false

cond.false:                                       ; preds = %if.then
  %call3 = tail call ptr @__errno_location() #6
  %0 = load i32, ptr %call3, align 4, !tbaa !5
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %cond.false, %if.then
  %cond = phi i32 [ %0, %cond.false ], [ 0, %if.then ]
  store i32 %cond, ptr %agg.result, align 8, !tbaa !9
  %lines4 = getelementptr inbounds %struct.wc_lines, ptr %agg.result, i64 0, i32 1
  store i64 %lines.0.lcssa, ptr %lines4, align 8, !tbaa !12
  %bytes5 = getelementptr inbounds %struct.wc_lines, ptr %agg.result, i64 0, i32 2
  store i64 %bytes.0.lcssa, ptr %bytes5, align 8, !tbaa !13
  call void @llvm.lifetime.end.p0(i64 262144, ptr nonnull %avx_buf) #5
  ret void

if.end:                                           ; preds = %cleanup, %entry
  %call159 = phi i64 [ %call1, %cleanup ], [ %call155, %entry ]
  %lines.058 = phi i64 [ %lines.2.lcssa, %cleanup ], [ 0, %entry ]
  %bytes.057 = phi i64 [ %add, %cleanup ], [ 0, %entry ]
  %add = add nuw nsw i64 %call159, %bytes.057
  %cmp845 = icmp ugt i64 %call159, 31
  br i1 %cmp845, label %while.body9, label %while.end.thread

while.end.thread:                                 ; preds = %if.end
  %add.ptr1467 = getelementptr inbounds i8, ptr %avx_buf, i64 %call159
  br label %for.body.preheader

while.body9:                                      ; preds = %while.body9, %if.end
  %lines.148 = phi i64 [ %add13, %while.body9 ], [ %lines.058, %if.end ]
  %bytes_read.047 = phi i64 [ %sub, %while.body9 ], [ %call159, %if.end ]
  %datap.046 = phi ptr [ %add.ptr, %while.body9 ], [ %avx_buf, %if.end ]
  %1 = load <32 x i8>, ptr %datap.046, align 32, !tbaa !14
  %cmp.i = icmp eq <32 x i8> %1, <i8 10, i8 10, i8 10, i8 10, i8 10, i8 10, i8 10, i8 10, i8 10, i8 10, i8 10, i8 10, i8 10, i8 10, i8 10, i8 10, i8 10, i8 10, i8 10, i8 10, i8 10, i8 10, i8 10, i8 10, i8 10, i8 10, i8 10, i8 10, i8 10, i8 10, i8 10, i8 10>
  %2 = bitcast <32 x i1> %cmp.i to i32
  %3 = call i32 @llvm.ctpop.i32(i32 %2), !range !15
  %conv = zext nneg i32 %3 to i64
  %add13 = add nsw i64 %lines.148, %conv
  %add.ptr = getelementptr inbounds <4 x i64>, ptr %datap.046, i64 1
  %sub = add nsw i64 %bytes_read.047, -32
  %cmp8 = icmp ugt i64 %bytes_read.047, 63
  br i1 %cmp8, label %while.body9, label %while.end, !llvm.loop !16

while.end:                                        ; preds = %while.body9
  %add.ptr14 = getelementptr inbounds i8, ptr %add.ptr, i64 %sub
  %cmp1551.not = icmp eq i64 %sub, 0
  br i1 %cmp1551.not, label %cleanup, label %for.body.preheader

for.body.preheader:                               ; preds = %while.end, %while.end.thread
  %add.ptr1471 = phi ptr [ %add.ptr1467, %while.end.thread ], [ %add.ptr14, %while.end ]
  %lines.1.lcssa70 = phi i64 [ %lines.058, %while.end.thread ], [ %add13, %while.end ]
  %datap.0.lcssa69 = phi ptr [ %avx_buf, %while.end.thread ], [ %add.ptr, %while.end ]
  %add.ptr147174 = ptrtoint ptr %add.ptr1471 to i64
  %datap.0.lcssa6975 = ptrtoint ptr %datap.0.lcssa69 to i64
  %4 = add nuw nsw i64 %datap.0.lcssa6975, 1
  %umax = call i64 @llvm.umax.i64(i64 %add.ptr147174, i64 %4)
  %5 = sub i64 %umax, %datap.0.lcssa6975
  %min.iters.check = icmp ult i64 %5, 16
  br i1 %min.iters.check, label %for.body.preheader87, label %vector.ph

vector.ph:                                        ; preds = %for.body.preheader
  %n.vec = and i64 %5, -16
  %ind.end = getelementptr i8, ptr %datap.0.lcssa69, i64 %n.vec
  %6 = insertelement <4 x i64> <i64 poison, i64 0, i64 0, i64 0>, i64 %lines.1.lcssa70, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vec.phi = phi <4 x i64> [ %6, %vector.ph ], [ %18, %vector.body ]
  %vec.phi79 = phi <4 x i64> [ zeroinitializer, %vector.ph ], [ %19, %vector.body ]
  %vec.phi80 = phi <4 x i64> [ zeroinitializer, %vector.ph ], [ %20, %vector.body ]
  %vec.phi81 = phi <4 x i64> [ zeroinitializer, %vector.ph ], [ %21, %vector.body ]
  %next.gep = getelementptr i8, ptr %datap.0.lcssa69, i64 %index
  %7 = getelementptr i8, ptr %next.gep, i64 4
  %8 = getelementptr i8, ptr %next.gep, i64 8
  %9 = getelementptr i8, ptr %next.gep, i64 12
  %wide.load = load <4 x i8>, ptr %next.gep, align 1, !tbaa !18
  %wide.load82 = load <4 x i8>, ptr %7, align 1, !tbaa !18
  %wide.load83 = load <4 x i8>, ptr %8, align 1, !tbaa !18
  %wide.load84 = load <4 x i8>, ptr %9, align 1, !tbaa !18
  %10 = icmp eq <4 x i8> %wide.load, <i8 10, i8 10, i8 10, i8 10>
  %11 = icmp eq <4 x i8> %wide.load82, <i8 10, i8 10, i8 10, i8 10>
  %12 = icmp eq <4 x i8> %wide.load83, <i8 10, i8 10, i8 10, i8 10>
  %13 = icmp eq <4 x i8> %wide.load84, <i8 10, i8 10, i8 10, i8 10>
  %14 = zext <4 x i1> %10 to <4 x i64>
  %15 = zext <4 x i1> %11 to <4 x i64>
  %16 = zext <4 x i1> %12 to <4 x i64>
  %17 = zext <4 x i1> %13 to <4 x i64>
  %18 = add <4 x i64> %vec.phi, %14
  %19 = add <4 x i64> %vec.phi79, %15
  %20 = add <4 x i64> %vec.phi80, %16
  %21 = add <4 x i64> %vec.phi81, %17
  %index.next = add nuw i64 %index, 16
  %22 = icmp eq i64 %index.next, %n.vec
  br i1 %22, label %middle.block, label %vector.body, !llvm.loop !19

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i64> %19, %18
  %bin.rdx85 = add <4 x i64> %20, %bin.rdx
  %bin.rdx86 = add <4 x i64> %21, %bin.rdx85
  %23 = call i64 @llvm.vector.reduce.add.v4i64(<4 x i64> %bin.rdx86)
  %cmp.n = icmp eq i64 %5, %n.vec
  br i1 %cmp.n, label %cleanup, label %for.body.preheader87

for.body.preheader87:                             ; preds = %middle.block, %for.body.preheader
  %p.053.ph = phi ptr [ %datap.0.lcssa69, %for.body.preheader ], [ %ind.end, %middle.block ]
  %lines.252.ph = phi i64 [ %lines.1.lcssa70, %for.body.preheader ], [ %23, %middle.block ]
  br label %for.body

for.body:                                         ; preds = %for.body, %for.body.preheader87
  %p.053 = phi ptr [ %incdec.ptr, %for.body ], [ %p.053.ph, %for.body.preheader87 ]
  %lines.252 = phi i64 [ %add21, %for.body ], [ %lines.252.ph, %for.body.preheader87 ]
  %24 = load i8, ptr %p.053, align 1, !tbaa !18
  %cmp18 = icmp eq i8 %24, 10
  %conv20 = zext i1 %cmp18 to i64
  %add21 = add nsw i64 %lines.252, %conv20
  %incdec.ptr = getelementptr inbounds i8, ptr %p.053, i64 1
  %cmp15 = icmp ult ptr %incdec.ptr, %add.ptr1471
  br i1 %cmp15, label %for.body, label %cleanup, !llvm.loop !22

cleanup:                                          ; preds = %for.body, %middle.block, %while.end
  %lines.2.lcssa = phi i64 [ %add13, %while.end ], [ %23, %middle.block ], [ %add21, %for.body ]
  call void @llvm.lifetime.end.p0(i64 262144, ptr nonnull %avx_buf) #5
  call void @llvm.lifetime.start.p0(i64 262144, ptr nonnull %avx_buf) #5
  %call1 = call i64 @read(i32 noundef %fd, ptr noundef nonnull %avx_buf, i64 noundef 262144) #5
  %cmp = icmp sgt i64 %call1, 0
  br i1 %cmp, label %if.end, label %if.then
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree
declare noundef i64 @read(i32 noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctpop.i32(i32) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.add.v4i64(<4 x i64>) #4

attributes #0 = { nofree nounwind uwtable "min-legal-vector-width"="256" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nounwind }
attributes #6 = { nounwind willreturn memory(none) }

!llvm.ident = !{!0}
!llvm.module.flags = !{!1, !2, !3, !4}

!0 = !{!"clang version 18.1.8 (https://github.com/llvm/llvm-project.git 3b5b5c1ec4a3095ab096dd780e84d7ab81f3d7ff)"}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!6, !6, i64 0, i64 4}
!6 = !{!7, i64 4, !"int"}
!7 = !{!8, i64 1, !"omnipotent char"}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !6, i64 0, i64 4}
!10 = !{!7, i64 24, !"wc_lines", !6, i64 0, i64 4, !11, i64 8, i64 8, !11, i64 16, i64 8}
!11 = !{!7, i64 8, !"long"}
!12 = !{!10, !11, i64 8, i64 8}
!13 = !{!10, !11, i64 16, i64 8}
!14 = !{!7, !7, i64 0, i64 32}
!15 = !{i32 0, i32 33}
!16 = distinct !{!16, !17}
!17 = !{!"llvm.loop.mustprogress"}
!18 = !{!7, !7, i64 0, i64 1}
!19 = distinct !{!19, !17, !20, !21}
!20 = !{!"llvm.loop.isvectorized", i32 1}
!21 = !{!"llvm.loop.unroll.runtime.disable"}
!22 = distinct !{!22, !17, !21, !20}
