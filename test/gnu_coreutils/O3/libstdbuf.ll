; ModuleID = 'llvm-link'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @stdbuf, ptr null }]
@.str = private unnamed_addr constant [10 x i8] c"_STDBUF_E\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"_STDBUF_I\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"_STDBUF_O\00", align 1
@stderr = external local_unnamed_addr global ptr, align 8
@stdin = external local_unnamed_addr global ptr, align 8
@stdout = external local_unnamed_addr global ptr, align 8
@.str.3 = private unnamed_addr constant [34 x i8] c"invalid buffering mode %s for %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [44 x i8] c"failed to allocate a %ju byte stdio buffer\0A\00", align 1
@.str.5 = private unnamed_addr constant [42 x i8] c"could not set buffering of %s to mode %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"stdin\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"stdout\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"stderr\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@switch.table.apply_mode.10 = private unnamed_addr constant [3 x ptr] [ptr @.str.6, ptr @.str.7, ptr @.str.8], align 8

; Function Attrs: nounwind uwtable
define internal void @stdbuf() #0 {
entry:
  %call = tail call ptr @getenv(ptr noundef nonnull @.str) #7
  %call1 = tail call ptr @getenv(ptr noundef nonnull @.str.1) #7
  %call2 = tail call ptr @getenv(ptr noundef nonnull @.str.2) #7
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %0 = load ptr, ptr @stderr, align 8, !tbaa !4
  tail call fastcc void @apply_mode(ptr noundef %0, ptr noundef nonnull %call)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %tobool3.not = icmp eq ptr %call1, null
  br i1 %tobool3.not, label %if.end5, label %if.then4

if.then4:                                         ; preds = %if.end
  %1 = load ptr, ptr @stdin, align 8, !tbaa !4
  tail call fastcc void @apply_mode(ptr noundef %1, ptr noundef nonnull %call1)
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %if.end
  %tobool6.not = icmp eq ptr %call2, null
  br i1 %tobool6.not, label %if.end8, label %if.then7

if.then7:                                         ; preds = %if.end5
  %2 = load ptr, ptr @stdout, align 8, !tbaa !4
  tail call fastcc void @apply_mode(ptr noundef %2, ptr noundef nonnull %call2)
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %if.end5
  ret void
}

; Function Attrs: nofree nounwind memory(read)
declare noundef ptr @getenv(ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc void @apply_mode(ptr nocapture noundef %stream, ptr noundef %mode) unnamed_addr #0 {
entry:
  %mode_end = alloca ptr, align 8
  %0 = load i8, ptr %mode, align 1, !tbaa !8
  switch i8 %0, label %if.else6 [
    i8 48, label %if.end24
    i8 76, label %if.then5
  ]

if.then5:                                         ; preds = %entry
  br label %if.end24

if.else6:                                         ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %mode_end) #7
  %call = call i64 @__isoc23_strtoumax(ptr noundef nonnull %mode, ptr noundef nonnull %mode_end, i32 noundef 10) #7
  %cmp7 = icmp eq i64 %call, 0
  br i1 %cmp7, label %if.then10, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else6
  %1 = load ptr, ptr %mode_end, align 8, !tbaa !4
  %2 = load i8, ptr %1, align 1, !tbaa !8
  %tobool.not = icmp eq i8 %2, 0
  br i1 %tobool.not, label %cond.true, label %if.then10

if.then10:                                        ; preds = %lor.lhs.false, %if.else6
  %3 = load ptr, ptr @stderr, align 8, !tbaa !4
  %call11 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.3, i32 noundef 5) #7
  %call12 = call i32 @fileno(ptr noundef %stream) #7
  %4 = icmp ult i32 %call12, 3
  br i1 %4, label %switch.lookup, label %fileno_to_name.exit

switch.lookup:                                    ; preds = %if.then10
  %5 = zext nneg i32 %call12 to i64
  %switch.gep = getelementptr inbounds [3 x ptr], ptr @switch.table.apply_mode.10, i64 0, i64 %5
  %switch.load = load ptr, ptr %switch.gep, align 8
  br label %fileno_to_name.exit

fileno_to_name.exit:                              ; preds = %switch.lookup, %if.then10
  %ret.0.i = phi ptr [ %switch.load, %switch.lookup ], [ @.str.9, %if.then10 ]
  %call14 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %3, ptr noundef %call11, ptr noundef nonnull %mode, ptr noundef nonnull %ret.0.i) #8
  br label %cleanup.thread

cond.true:                                        ; preds = %lor.lhs.false
  %call17 = call noalias ptr @malloc(i64 noundef %call) #9
  %tobool18.not = icmp eq ptr %call17, null
  br i1 %tobool18.not, label %if.then19, label %cleanup

if.then19:                                        ; preds = %cond.true
  %6 = load ptr, ptr @stderr, align 8, !tbaa !4
  %call20 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.4, i32 noundef 5) #7
  %call21 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %6, ptr noundef %call20, i64 noundef %call) #8
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %if.then19, %fileno_to_name.exit
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %mode_end) #7
  br label %cleanup34

cleanup:                                          ; preds = %cond.true
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %mode_end) #7
  br label %if.end24

if.end24:                                         ; preds = %cleanup, %if.then5, %entry
  %buf.1 = phi ptr [ null, %if.then5 ], [ %call17, %cleanup ], [ null, %entry ]
  %setvbuf_mode.0 = phi i32 [ 1, %if.then5 ], [ 0, %cleanup ], [ 2, %entry ]
  %size.0 = phi i64 [ 0, %if.then5 ], [ %call, %cleanup ], [ 0, %entry ]
  %call25 = call i32 @setvbuf(ptr noundef %stream, ptr noundef %buf.1, i32 noundef %setvbuf_mode.0, i64 noundef %size.0) #7
  %cmp26.not = icmp eq i32 %call25, 0
  br i1 %cmp26.not, label %cleanup34, label %if.then28

if.then28:                                        ; preds = %if.end24
  %7 = load ptr, ptr @stderr, align 8, !tbaa !4
  %call29 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.5, i32 noundef 5) #7
  %call30 = call i32 @fileno(ptr noundef %stream) #7
  %8 = icmp ult i32 %call30, 3
  br i1 %8, label %switch.lookup59, label %fileno_to_name.exit56

switch.lookup59:                                  ; preds = %if.then28
  %9 = zext nneg i32 %call30 to i64
  %switch.gep60 = getelementptr inbounds [3 x ptr], ptr @switch.table.apply_mode.10, i64 0, i64 %9
  %switch.load61 = load ptr, ptr %switch.gep60, align 8
  br label %fileno_to_name.exit56

fileno_to_name.exit56:                            ; preds = %switch.lookup59, %if.then28
  %ret.0.i53 = phi ptr [ %switch.load61, %switch.lookup59 ], [ @.str.9, %if.then28 ]
  %call32 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %7, ptr noundef %call29, ptr noundef nonnull %ret.0.i53, ptr noundef nonnull %mode) #8
  call void @free(ptr noundef %buf.1) #7
  br label %cleanup34

cleanup34:                                        ; preds = %fileno_to_name.exit56, %if.end24, %cleanup.thread
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind
declare i64 @__isoc23_strtoumax(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare ptr @dcgettext(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @fileno(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nofree nounwind
declare noundef i32 @setvbuf(ptr nocapture noundef, ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #6

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind }
attributes #8 = { cold }
attributes #9 = { nounwind allocsize(0) }

!llvm.ident = !{!0}
!llvm.module.flags = !{!1, !2, !3}

!0 = !{!"clang version 18.1.8 (https://github.com/llvm/llvm-project.git 3b5b5c1ec4a3095ab096dd780e84d7ab81f3d7ff)"}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!5, !5, i64 0, i64 8}
!5 = !{!6, i64 8, !"any pointer"}
!6 = !{!7, i64 1, !"omnipotent char"}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!6, !6, i64 0, i64 1}
