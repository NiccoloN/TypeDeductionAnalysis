; ModuleID = 'llvm-link'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@temp_stream.tempfile = internal unnamed_addr global ptr null, align 8
@temp_stream.tmp_fp = internal unnamed_addr global ptr null, align 8
@.str = private unnamed_addr constant [35 x i8] c"failed to make temporary file name\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"cutmp\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"failed to create temporary file %s\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"w+\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"failed to open %s for writing\00", align 1
@.str.5 = private unnamed_addr constant [31 x i8] c"failed to rewind stream for %s\00", align 1

; Function Attrs: nounwind uwtable
define dso_local noundef zeroext i1 @temp_stream(ptr nocapture noundef writeonly %fp, ptr noundef writeonly %file_name) local_unnamed_addr #0 {
entry:
  %0 = load ptr, ptr @temp_stream.tempfile, align 8, !tbaa !5
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %while.cond.preheader, label %if.else

while.cond.preheader:                             ; preds = %entry
  %malloc = tail call dereferenceable_or_null(128) ptr @malloc(i64 128)
  %tobool.not64 = icmp eq ptr %malloc, null
  br i1 %tobool.not64, label %while.cond.preheader.if.then1_crit_edge, label %if.end

while.cond.preheader.if.then1_crit_edge:          ; preds = %while.cond.preheader
  %.pre = tail call ptr @__errno_location() #10
  br label %if.then1

while.cond:                                       ; preds = %if.end7
  %mul = shl nuw nsw i64 %tempbuf_len.065, 1
  %cond.i = tail call i64 @llvm.umax.i64(i64 %mul, i64 1)
  %call.i = tail call ptr @realloc(ptr noundef nonnull %call.i66, i64 noundef %cond.i) #11
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %if.then1, label %if.end

if.then1:                                         ; preds = %while.cond, %while.cond.preheader.if.then1_crit_edge
  %call2.pre-phi = phi ptr [ %.pre, %while.cond.preheader.if.then1_crit_edge ], [ %call8, %while.cond ]
  %1 = load i32, ptr %call2.pre-phi, align 4, !tbaa !9
  %call3 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str, i32 noundef 5) #12
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %1, ptr noundef %call3) #13
  br label %return

if.end:                                           ; preds = %while.cond, %while.cond.preheader
  %call.i66 = phi ptr [ %call.i, %while.cond ], [ %malloc, %while.cond.preheader ]
  %tempbuf_len.065 = phi i64 [ %mul, %while.cond ], [ 128, %while.cond.preheader ]
  %call4 = tail call i32 @path_search(ptr noundef nonnull %call.i66, i64 noundef %tempbuf_len.065, ptr noundef null, ptr noundef nonnull @.str.1, i1 noundef zeroext true) #12
  %cmp5 = icmp eq i32 %call4, 0
  br i1 %cmp5, label %while.end, label %if.end7

if.end7:                                          ; preds = %if.end
  %call8 = tail call ptr @__errno_location() #10
  %2 = load i32, ptr %call8, align 4, !tbaa !9
  %cmp9 = icmp ne i32 %2, 22
  %cmp10 = icmp ugt i64 %tempbuf_len.065, 2048
  %or.cond = or i1 %cmp10, %cmp9
  br i1 %or.cond, label %if.then11, label %while.cond

if.then11:                                        ; preds = %if.end7
  %cmp13 = icmp eq i32 %2, 22
  %spec.select = select i1 %cmp13, i32 36, i32 %2
  %call15 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str, i32 noundef 5) #12
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %spec.select, ptr noundef %call15) #13
  br label %return

while.end:                                        ; preds = %if.end
  store ptr %call.i66, ptr @temp_stream.tempfile, align 8, !tbaa !5
  %call17 = tail call i32 @mkstemp_safer(ptr noundef nonnull %call.i66) #12
  %cmp18 = icmp slt i32 %call17, 0
  br i1 %cmp18, label %if.then19, label %if.end23

if.then19:                                        ; preds = %while.end
  %call20 = tail call ptr @__errno_location() #10
  %3 = load i32, ptr %call20, align 4, !tbaa !9
  %call21 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.2, i32 noundef 5) #12
  %4 = load ptr, ptr @temp_stream.tempfile, align 8, !tbaa !5
  %call22 = tail call ptr @quotearg_style(i32 noundef 4, ptr noundef %4) #12
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %3, ptr noundef %call21, ptr noundef %call22) #13
  br label %Reset

if.end23:                                         ; preds = %while.end
  %call24 = tail call noalias ptr @fdopen(i32 noundef %call17, ptr noundef nonnull @.str.3) #12
  store ptr %call24, ptr @temp_stream.tmp_fp, align 8, !tbaa !5
  %tobool25.not = icmp eq ptr %call24, null
  br i1 %tobool25.not, label %if.then26, label %cleanup33

if.then26:                                        ; preds = %if.end23
  %call27 = tail call ptr @__errno_location() #10
  %5 = load i32, ptr %call27, align 4, !tbaa !9
  %call28 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.4, i32 noundef 5) #12
  %6 = load ptr, ptr @temp_stream.tempfile, align 8, !tbaa !5
  %call29 = tail call ptr @quotearg_style(i32 noundef 4, ptr noundef %6) #12
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %5, ptr noundef %call28, ptr noundef %call29) #13
  %call30 = tail call i32 @close(i32 noundef %call17) #12
  %7 = load ptr, ptr @temp_stream.tempfile, align 8, !tbaa !5
  %call31 = tail call i32 @unlink(ptr noundef %7) #12
  br label %Reset

Reset:                                            ; preds = %if.then26, %if.then19
  %8 = load ptr, ptr @temp_stream.tempfile, align 8, !tbaa !5
  tail call void @free(ptr noundef %8) #12
  store ptr null, ptr @temp_stream.tempfile, align 8, !tbaa !5
  br label %return

cleanup33:                                        ; preds = %if.end23
  %9 = load ptr, ptr @temp_stream.tempfile, align 8, !tbaa !5
  %call.i58 = tail call i32 @unlink(ptr noundef %9) #12
  br label %if.end46

if.else:                                          ; preds = %entry
  %10 = load ptr, ptr @temp_stream.tmp_fp, align 8, !tbaa !5
  tail call void @clearerr_unlocked(ptr noundef %10) #12
  %11 = load ptr, ptr @temp_stream.tmp_fp, align 8, !tbaa !5
  %call35 = tail call i32 @rpl_fseeko(ptr noundef %11, i64 noundef 0, i32 noundef 0) #12
  %cmp36 = icmp slt i32 %call35, 0
  br i1 %cmp36, label %if.then41, label %lor.lhs.false37

lor.lhs.false37:                                  ; preds = %if.else
  %12 = load ptr, ptr @temp_stream.tmp_fp, align 8, !tbaa !5
  %call38 = tail call i32 @fileno(ptr noundef %12) #12
  %call39 = tail call i32 @ftruncate(i32 noundef %call38, i64 noundef 0) #12
  %cmp40 = icmp slt i32 %call39, 0
  br i1 %cmp40, label %if.then41, label %if.end46

if.then41:                                        ; preds = %lor.lhs.false37, %if.else
  %call42 = tail call ptr @__errno_location() #10
  %13 = load i32, ptr %call42, align 4, !tbaa !9
  %call43 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.5, i32 noundef 5) #12
  %14 = load ptr, ptr @temp_stream.tempfile, align 8, !tbaa !5
  %call44 = tail call ptr @quotearg_style(i32 noundef 4, ptr noundef %14) #12
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %13, ptr noundef %call43, ptr noundef %call44) #13
  br label %return

if.end46:                                         ; preds = %lor.lhs.false37, %cleanup33
  %15 = load ptr, ptr @temp_stream.tmp_fp, align 8, !tbaa !5
  store ptr %15, ptr %fp, align 8, !tbaa !5
  %tobool47.not = icmp eq ptr %file_name, null
  br i1 %tobool47.not, label %return, label %if.then48

if.then48:                                        ; preds = %if.end46
  %16 = load ptr, ptr @temp_stream.tempfile, align 8, !tbaa !5
  store ptr %16, ptr %file_name, align 8, !tbaa !5
  br label %return

return:                                           ; preds = %if.then48, %if.end46, %if.then41, %Reset, %if.then11, %if.then1
  %retval.2 = phi i1 [ false, %if.then41 ], [ true, %if.then48 ], [ true, %if.end46 ], [ false, %if.then11 ], [ false, %if.then1 ], [ false, %Reset ]
  ret i1 %retval.2
}

; Function Attrs: nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #3

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite)
declare noalias noundef ptr @realloc(ptr allocptr nocapture noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare ptr @dcgettext(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: cold
declare void @error(i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #6

declare i32 @path_search(ptr noundef, i64 noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #7

declare i32 @mkstemp_safer(ptr noundef) local_unnamed_addr #7

declare ptr @quotearg_style(i32 noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind
declare noalias noundef ptr @fdopen(i32 noundef, ptr nocapture noundef readonly) local_unnamed_addr #8

declare i32 @close(i32 noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind
declare noundef i32 @unlink(ptr nocapture noundef readonly) local_unnamed_addr #8

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #9

; Function Attrs: nounwind
declare void @clearerr_unlocked(ptr noundef) local_unnamed_addr #5

declare i32 @rpl_fseeko(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind
declare noundef i32 @fileno(ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: nounwind
declare i32 @ftruncate(i32 noundef, i64 noundef) local_unnamed_addr #5

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" }
attributes #2 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nounwind willreturn memory(none) }
attributes #11 = { nounwind allocsize(1) }
attributes #12 = { nounwind }
attributes #13 = { cold nounwind }

!llvm.ident = !{!0}
!llvm.module.flags = !{!1, !2, !3, !4}

!0 = !{!"clang version 18.1.8 (https://github.com/llvm/llvm-project.git 3b5b5c1ec4a3095ab096dd780e84d7ab81f3d7ff)"}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!6, !6, i64 0, i64 8}
!6 = !{!7, i64 8, !"any pointer"}
!7 = !{!8, i64 1, !"omnipotent char"}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !10, i64 0, i64 4}
!10 = !{!7, i64 4, !"int"}
