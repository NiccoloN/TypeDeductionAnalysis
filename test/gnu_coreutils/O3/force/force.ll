; ModuleID = 'llvm-link'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.link_arg = type { i32, ptr, i32, i32 }
%struct.symlink_arg = type { ptr, i32 }

@simple_pattern = internal constant [9 x i8] c"CuXXXXXX\00", align 1

; Function Attrs: nounwind uwtable
define dso_local i32 @force_linkat(i32 noundef %srcdir, ptr noundef nonnull %srcname, i32 noundef %dstdir, ptr noundef nonnull %dstname, i32 noundef %flags, i1 noundef zeroext %force, i32 noundef %linkat_errno) local_unnamed_addr #0 {
entry:
  %buf = alloca [256 x i8], align 16
  %arg = alloca %struct.link_arg, align 8
  %cmp = icmp slt i32 %linkat_errno, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = tail call i32 @linkat(i32 noundef %srcdir, ptr noundef nonnull %srcname, i32 noundef %dstdir, ptr noundef nonnull %dstname, i32 noundef %flags) #9
  %cmp1 = icmp eq i32 %call, 0
  br i1 %cmp1, label %return, label %cond.false

cond.false:                                       ; preds = %if.then
  %call2 = tail call ptr @__errno_location() #10
  %0 = load i32, ptr %call2, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %cond.false, %entry
  %linkat_errno.addr.0 = phi i32 [ %linkat_errno, %entry ], [ %0, %cond.false ]
  %cmp3 = icmp eq i32 %linkat_errno.addr.0, 17
  %or.cond.not = select i1 %force, i1 %cmp3, i1 false
  br i1 %or.cond.not, label %if.end5, label %return

if.end5:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %buf) #9
  %call.i = tail call ptr @last_component(ptr noundef nonnull %dstname) #11
  %sub.ptr.lhs.cast.i = ptrtoint ptr %call.i to i64
  %sub.ptr.rhs.cast.i = ptrtoint ptr %dstname to i64
  %sub.ptr.sub.i = sub i64 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %add.i = add i64 %sub.ptr.sub.i, 9
  %cmp.i = icmp ult i64 %add.i, 257
  br i1 %cmp.i, label %if.end10, label %if.else.i

if.else.i:                                        ; preds = %if.end5
  %call1.i = tail call noalias ptr @malloc(i64 noundef %add.i) #12
  %tobool.not.i = icmp eq ptr %call1.i, null
  br i1 %tobool.not.i, label %if.then8, label %if.end10

if.then8:                                         ; preds = %if.else.i
  %call9 = tail call ptr @__errno_location() #10
  %1 = load i32, ptr %call9, align 4, !tbaa !5
  br label %cleanup

if.end10:                                         ; preds = %if.else.i, %if.end5
  %dsttmp.0.i = phi ptr [ %call1.i, %if.else.i ], [ %buf, %if.end5 ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %dsttmp.0.i, ptr noundef nonnull align 1 %dstname, i64 noundef %sub.ptr.sub.i, i1 noundef false) #9
  %mempcpy = getelementptr inbounds i8, ptr %dsttmp.0.i, i64 %sub.ptr.sub.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(9) %mempcpy, ptr noundef nonnull align 1 dereferenceable(9) @simple_pattern, i64 9, i1 false)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %arg) #9
  store i32 %srcdir, ptr %arg, align 8, !tbaa !9
  %srcname12 = getelementptr inbounds %struct.link_arg, ptr %arg, i64 0, i32 1
  store ptr %srcname, ptr %srcname12, align 8, !tbaa !12
  %dstdir13 = getelementptr inbounds %struct.link_arg, ptr %arg, i64 0, i32 2
  store i32 %dstdir, ptr %dstdir13, align 8, !tbaa !13
  %flags14 = getelementptr inbounds %struct.link_arg, ptr %arg, i64 0, i32 3
  store i32 %flags, ptr %flags14, align 4, !tbaa !14
  %call15 = call i32 @try_tempname_len(ptr noundef nonnull %dsttmp.0.i, i32 noundef 0, ptr noundef nonnull %arg, ptr noundef nonnull @try_link, i64 noundef 6) #9
  %cmp16.not = icmp eq i32 %call15, 0
  br i1 %cmp16.not, label %if.else, label %if.then17

if.then17:                                        ; preds = %if.end10
  %call18 = tail call ptr @__errno_location() #10
  %2 = load i32, ptr %call18, align 4, !tbaa !5
  br label %if.end27

if.else:                                          ; preds = %if.end10
  %call19 = call i32 @renameat(i32 noundef %dstdir, ptr noundef nonnull %dsttmp.0.i, i32 noundef %dstdir, ptr noundef nonnull %dstname) #9
  %cmp20 = icmp eq i32 %call19, 0
  br i1 %cmp20, label %cond.end24, label %cond.false22

cond.false22:                                     ; preds = %if.else
  %call23 = tail call ptr @__errno_location() #10
  %3 = load i32, ptr %call23, align 4, !tbaa !5
  br label %cond.end24

cond.end24:                                       ; preds = %cond.false22, %if.else
  %cond25 = phi i32 [ %3, %cond.false22 ], [ -1, %if.else ]
  %call26 = call i32 @unlinkat(i32 noundef %dstdir, ptr noundef nonnull %dsttmp.0.i, i32 noundef 0) #9
  br label %if.end27

if.end27:                                         ; preds = %cond.end24, %if.then17
  %err.0 = phi i32 [ %2, %if.then17 ], [ %cond25, %cond.end24 ]
  %cmp29.not = icmp eq ptr %dsttmp.0.i, %buf
  br i1 %cmp29.not, label %if.end31, label %if.then30

if.then30:                                        ; preds = %if.end27
  call void @free(ptr noundef nonnull %dsttmp.0.i) #9
  br label %if.end31

if.end31:                                         ; preds = %if.then30, %if.end27
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %arg) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end31, %if.then8
  %retval.0 = phi i32 [ %err.0, %if.end31 ], [ %1, %if.then8 ]
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %buf) #9
  br label %return

return:                                           ; preds = %cleanup, %if.end, %if.then
  %retval.1 = phi i32 [ %retval.0, %cleanup ], [ %linkat_errno.addr.0, %if.end ], [ 0, %if.then ]
  ret i32 %retval.1
}

; Function Attrs: nounwind
declare i32 @linkat(i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare ptr @last_component(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #6

; Function Attrs: nounwind uwtable
define internal i32 @try_link(ptr noundef %dest, ptr nocapture noundef readonly %arg) #0 {
entry:
  %0 = load i32, ptr %arg, align 8, !tbaa !9
  %srcname = getelementptr inbounds %struct.link_arg, ptr %arg, i64 0, i32 1
  %1 = load ptr, ptr %srcname, align 8, !tbaa !12
  %dstdir = getelementptr inbounds %struct.link_arg, ptr %arg, i64 0, i32 2
  %2 = load i32, ptr %dstdir, align 8, !tbaa !13
  %flags = getelementptr inbounds %struct.link_arg, ptr %arg, i64 0, i32 3
  %3 = load i32, ptr %flags, align 4, !tbaa !14
  %call = tail call i32 @linkat(i32 noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %dest, i32 noundef %3) #9
  ret i32 %call
}

declare i32 @try_tempname_len(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: nounwind
declare i32 @renameat(i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare i32 @unlinkat(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind uwtable
define dso_local i32 @force_symlinkat(ptr noundef nonnull %srcname, i32 noundef %dstdir, ptr noundef nonnull %dstname, i1 noundef zeroext %force, i32 noundef %symlinkat_errno) local_unnamed_addr #0 {
entry:
  %buf = alloca [256 x i8], align 16
  %arg = alloca %struct.symlink_arg, align 8
  %cmp = icmp slt i32 %symlinkat_errno, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = tail call i32 @symlinkat(ptr noundef nonnull %srcname, i32 noundef %dstdir, ptr noundef nonnull %dstname) #9
  %cmp1 = icmp eq i32 %call, 0
  br i1 %cmp1, label %return, label %cond.false

cond.false:                                       ; preds = %if.then
  %call2 = tail call ptr @__errno_location() #10
  %0 = load i32, ptr %call2, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %cond.false, %entry
  %symlinkat_errno.addr.0 = phi i32 [ %symlinkat_errno, %entry ], [ %0, %cond.false ]
  %cmp3 = icmp eq i32 %symlinkat_errno.addr.0, 17
  %or.cond.not = select i1 %force, i1 %cmp3, i1 false
  br i1 %or.cond.not, label %if.end5, label %return

if.end5:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %buf) #9
  %call.i = tail call ptr @last_component(ptr noundef nonnull %dstname) #11
  %sub.ptr.lhs.cast.i = ptrtoint ptr %call.i to i64
  %sub.ptr.rhs.cast.i = ptrtoint ptr %dstname to i64
  %sub.ptr.sub.i = sub i64 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %add.i = add i64 %sub.ptr.sub.i, 9
  %cmp.i = icmp ult i64 %add.i, 257
  br i1 %cmp.i, label %if.end10, label %if.else.i

if.else.i:                                        ; preds = %if.end5
  %call1.i = tail call noalias ptr @malloc(i64 noundef %add.i) #12
  %tobool.not.i = icmp eq ptr %call1.i, null
  br i1 %tobool.not.i, label %if.then8, label %if.end10

if.then8:                                         ; preds = %if.else.i
  %call9 = tail call ptr @__errno_location() #10
  %1 = load i32, ptr %call9, align 4, !tbaa !5
  br label %cleanup

if.end10:                                         ; preds = %if.else.i, %if.end5
  %dsttmp.0.i = phi ptr [ %call1.i, %if.else.i ], [ %buf, %if.end5 ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %dsttmp.0.i, ptr noundef nonnull align 1 %dstname, i64 noundef %sub.ptr.sub.i, i1 noundef false) #9
  %mempcpy = getelementptr inbounds i8, ptr %dsttmp.0.i, i64 %sub.ptr.sub.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(9) %mempcpy, ptr noundef nonnull align 1 dereferenceable(9) @simple_pattern, i64 9, i1 false)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %arg) #9
  store ptr %srcname, ptr %arg, align 8, !tbaa !15
  %dstdir12 = getelementptr inbounds %struct.symlink_arg, ptr %arg, i64 0, i32 1
  store i32 %dstdir, ptr %dstdir12, align 8, !tbaa !17
  %call13 = call i32 @try_tempname_len(ptr noundef nonnull %dsttmp.0.i, i32 noundef 0, ptr noundef nonnull %arg, ptr noundef nonnull @try_symlink, i64 noundef 6) #9
  %cmp14.not = icmp eq i32 %call13, 0
  br i1 %cmp14.not, label %if.else, label %if.then15

if.then15:                                        ; preds = %if.end10
  %call16 = tail call ptr @__errno_location() #10
  %2 = load i32, ptr %call16, align 4, !tbaa !5
  br label %if.end24

if.else:                                          ; preds = %if.end10
  %call17 = call i32 @renameat(i32 noundef %dstdir, ptr noundef nonnull %dsttmp.0.i, i32 noundef %dstdir, ptr noundef nonnull %dstname) #9
  %cmp18.not = icmp eq i32 %call17, 0
  br i1 %cmp18.not, label %if.end24, label %if.then19

if.then19:                                        ; preds = %if.else
  %call20 = tail call ptr @__errno_location() #10
  %3 = load i32, ptr %call20, align 4, !tbaa !5
  %call21 = call i32 @unlinkat(i32 noundef %dstdir, ptr noundef nonnull %dsttmp.0.i, i32 noundef 0) #9
  br label %if.end24

if.end24:                                         ; preds = %if.then19, %if.else, %if.then15
  %err.0 = phi i32 [ %2, %if.then15 ], [ %3, %if.then19 ], [ -1, %if.else ]
  %cmp26.not = icmp eq ptr %dsttmp.0.i, %buf
  br i1 %cmp26.not, label %if.end28, label %if.then27

if.then27:                                        ; preds = %if.end24
  call void @free(ptr noundef nonnull %dsttmp.0.i) #9
  br label %if.end28

if.end28:                                         ; preds = %if.then27, %if.end24
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %arg) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end28, %if.then8
  %retval.0 = phi i32 [ %err.0, %if.end28 ], [ %1, %if.then8 ]
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %buf) #9
  br label %return

return:                                           ; preds = %cleanup, %if.end, %if.then
  %retval.1 = phi i32 [ %retval.0, %cleanup ], [ %symlinkat_errno.addr.0, %if.end ], [ 0, %if.then ]
  ret i32 %retval.1
}

; Function Attrs: nounwind
declare i32 @symlinkat(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal i32 @try_symlink(ptr noundef %dest, ptr nocapture noundef readonly %arg) #0 {
entry:
  %0 = load ptr, ptr %arg, align 8, !tbaa !15
  %dstdir = getelementptr inbounds %struct.symlink_arg, ptr %arg, i64 0, i32 1
  %1 = load i32, ptr %dstdir, align 8, !tbaa !17
  %call = tail call i32 @symlinkat(ptr noundef %0, i32 noundef %1, ptr noundef %dest) #9
  ret i32 %call
}

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind }
attributes #10 = { nounwind willreturn memory(none) }
attributes #11 = { nounwind willreturn memory(read) }
attributes #12 = { nounwind allocsize(0) }

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
!10 = !{!7, i64 24, !"link_arg", !6, i64 0, i64 4, !11, i64 8, i64 8, !6, i64 16, i64 4, !6, i64 20, i64 4}
!11 = !{!7, i64 8, !"any pointer"}
!12 = !{!10, !11, i64 8, i64 8}
!13 = !{!10, !6, i64 16, i64 4}
!14 = !{!10, !6, i64 20, i64 4}
!15 = !{!16, !11, i64 0, i64 8}
!16 = !{!7, i64 16, !"symlink_arg", !11, i64 0, i64 8, !6, i64 8, i64 4}
!17 = !{!16, !6, i64 8, i64 4}
