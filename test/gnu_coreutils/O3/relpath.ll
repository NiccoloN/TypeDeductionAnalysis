; ModuleID = 'llvm-link'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"..\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"/..\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"generating relative path\00", align 1
@stdout = external local_unnamed_addr global ptr, align 8

; Function Attrs: nounwind uwtable
define dso_local noundef zeroext i1 @relpath(ptr nocapture noundef readonly %can_fname, ptr nocapture noundef readonly %can_reldir, ptr noundef %buf, i64 noundef %len) local_unnamed_addr #0 {
entry:
  %arrayidx.i = getelementptr inbounds i8, ptr %can_reldir, i64 1
  %0 = load i8, ptr %arrayidx.i, align 1, !tbaa !5
  %cmp.i = icmp eq i8 %0, 47
  %arrayidx2.i = getelementptr inbounds i8, ptr %can_fname, i64 1
  %1 = load i8, ptr %arrayidx2.i, align 1, !tbaa !5
  %2 = icmp ne i8 %1, 47
  %cmp6.not.i = xor i1 %cmp.i, %2
  br i1 %cmp6.not.i, label %while.cond.preheader.i, label %cleanup

while.cond.preheader.i:                           ; preds = %entry
  %3 = load i8, ptr %can_reldir, align 1, !tbaa !5
  %tobool.not62.i = icmp eq i8 %3, 0
  br i1 %tobool.not62.i, label %land.lhs.true.i, label %land.rhs.i

land.rhs.i:                                       ; preds = %if.end16.i, %while.cond.preheader.i
  %4 = phi i8 [ %6, %if.end16.i ], [ %3, %while.cond.preheader.i ]
  %ret.066.i = phi i32 [ %spec.select.i, %if.end16.i ], [ 0, %while.cond.preheader.i ]
  %i.065.i = phi i32 [ %add.i, %if.end16.i ], [ 0, %while.cond.preheader.i ]
  %path2.addr.064.i = phi ptr [ %incdec.ptr22.i, %if.end16.i ], [ %can_fname, %while.cond.preheader.i ]
  %path1.addr.063.i = phi ptr [ %incdec.ptr.i, %if.end16.i ], [ %can_reldir, %while.cond.preheader.i ]
  %5 = load i8, ptr %path2.addr.064.i, align 1, !tbaa !5
  %cmp13.not.i = icmp eq i8 %4, %5
  br i1 %cmp13.not.i, label %if.end16.i, label %lor.lhs.false30.i

if.end16.i:                                       ; preds = %land.rhs.i
  %cmp18.i = icmp eq i8 %4, 47
  %add.i = add nuw nsw i32 %i.065.i, 1
  %spec.select.i = select i1 %cmp18.i, i32 %add.i, i32 %ret.066.i
  %incdec.ptr.i = getelementptr inbounds i8, ptr %path1.addr.063.i, i64 1
  %incdec.ptr22.i = getelementptr inbounds i8, ptr %path2.addr.064.i, i64 1
  %6 = load i8, ptr %incdec.ptr.i, align 1, !tbaa !5
  %tobool.not.i = icmp eq i8 %6, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %land.rhs.i, !llvm.loop !8

land.lhs.true.i:                                  ; preds = %if.end16.i, %while.cond.preheader.i
  %path2.addr.0.lcssa.i = phi ptr [ %can_fname, %while.cond.preheader.i ], [ %incdec.ptr22.i, %if.end16.i ]
  %i.0.lcssa.i = phi i32 [ 0, %while.cond.preheader.i ], [ %add.i, %if.end16.i ]
  %ret.0.lcssa.i = phi i32 [ 0, %while.cond.preheader.i ], [ %spec.select.i, %if.end16.i ]
  %7 = load i8, ptr %path2.addr.0.lcssa.i, align 1, !tbaa !5
  switch i8 %7, label %path_common_prefix.exit [
    i8 0, label %if.then36.i
    i8 47, label %if.then36.i
  ]

lor.lhs.false30.i:                                ; preds = %land.rhs.i
  %tobool31.not.i = icmp eq i8 %5, 0
  %cmp34.i = icmp eq i8 %4, 47
  %or.cond.i = and i1 %cmp34.i, %tobool31.not.i
  br i1 %or.cond.i, label %if.then36.i, label %path_common_prefix.exit

if.then36.i:                                      ; preds = %lor.lhs.false30.i, %land.lhs.true.i, %land.lhs.true.i
  %i.059.i = phi i32 [ %i.065.i, %lor.lhs.false30.i ], [ %i.0.lcssa.i, %land.lhs.true.i ], [ %i.0.lcssa.i, %land.lhs.true.i ]
  br label %path_common_prefix.exit

path_common_prefix.exit:                          ; preds = %if.then36.i, %lor.lhs.false30.i, %land.lhs.true.i
  %retval.0.i = phi i32 [ %ret.066.i, %lor.lhs.false30.i ], [ %i.059.i, %if.then36.i ], [ %ret.0.lcssa.i, %land.lhs.true.i ]
  %tobool.not = icmp eq i32 %retval.0.i, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %path_common_prefix.exit
  %idx.ext = sext i32 %retval.0.i to i64
  %add.ptr = getelementptr inbounds i8, ptr %can_reldir, i64 %idx.ext
  %add.ptr2 = getelementptr inbounds i8, ptr %can_fname, i64 %idx.ext
  %8 = load i8, ptr %add.ptr, align 1, !tbaa !5
  %cmp = icmp eq i8 %8, 47
  %spec.select.idx = zext i1 %cmp to i64
  %spec.select = getelementptr inbounds i8, ptr %add.ptr, i64 %spec.select.idx
  %9 = load i8, ptr %add.ptr2, align 1, !tbaa !5
  %cmp7 = icmp eq i8 %9, 47
  %fname_suffix.0.idx = zext i1 %cmp7 to i64
  %fname_suffix.0 = getelementptr inbounds i8, ptr %add.ptr2, i64 %fname_suffix.0.idx
  %10 = load i8, ptr %spec.select, align 1, !tbaa !5
  %tobool12.not = icmp eq i8 %10, 0
  br i1 %tobool12.not, label %if.else, label %if.then13

if.then13:                                        ; preds = %if.end
  %tobool.not.i86 = icmp eq ptr %buf, null
  br i1 %tobool.not.i86, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.then13
  %cmp.not.not.i = icmp ugt i64 %len, 2
  br i1 %cmp.not.not.i, label %cleanup.thread.i, label %for.cond.preheader

cleanup.thread.i:                                 ; preds = %if.then.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %buf, ptr noundef nonnull align 1 dereferenceable(3) @.str, i64 noundef 3, i1 noundef false) #6
  %add.ptr.i = getelementptr inbounds i8, ptr %buf, i64 2
  %sub.i = add i64 %len, -2
  br label %for.cond.preheader

if.else.i:                                        ; preds = %if.then13
  %11 = load ptr, ptr @stdout, align 8, !tbaa !10
  %call3.i = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str, ptr noundef %11)
  br label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.else.i, %cleanup.thread.i, %if.then.i
  %buf.addr.1.ph = phi ptr [ %buf, %if.then.i ], [ %add.ptr.i, %cleanup.thread.i ], [ null, %if.else.i ]
  %len.addr.1.ph = phi i64 [ %len, %if.then.i ], [ %sub.i, %cleanup.thread.i ], [ %len, %if.else.i ]
  %buf_err.0.ph = phi i8 [ 1, %if.then.i ], [ 0, %cleanup.thread.i ], [ 0, %if.else.i ]
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %for.cond.preheader
  %buf.addr.1 = phi ptr [ %buf.addr.3, %for.inc ], [ %buf.addr.1.ph, %for.cond.preheader ]
  %len.addr.1 = phi i64 [ %len.addr.3, %for.inc ], [ %len.addr.1.ph, %for.cond.preheader ]
  %buf_err.0 = phi i8 [ %buf_err.1, %for.inc ], [ %buf_err.0.ph, %for.cond.preheader ]
  %relto_suffix.1 = phi ptr [ %incdec.ptr32, %for.inc ], [ %spec.select, %for.cond.preheader ]
  %12 = load i8, ptr %relto_suffix.1, align 1, !tbaa !5
  switch i8 %12, label %for.inc [
    i8 0, label %for.end
    i8 47, label %if.then23
  ]

if.then23:                                        ; preds = %for.cond
  %tobool.not.i88 = icmp eq ptr %buf.addr.1, null
  br i1 %tobool.not.i88, label %if.else.i98, label %if.then.i89

if.then.i89:                                      ; preds = %if.then23
  %cmp.not.not.i91 = icmp ugt i64 %len.addr.1, 3
  br i1 %cmp.not.not.i91, label %cleanup.thread.i93, label %buffer_or_output.exit100

cleanup.thread.i93:                               ; preds = %if.then.i89
  store i32 3026479, ptr %buf.addr.1, align 1
  %add.ptr.i96 = getelementptr inbounds i8, ptr %buf.addr.1, i64 3
  %sub.i97 = add i64 %len.addr.1, -3
  br label %buffer_or_output.exit100

if.else.i98:                                      ; preds = %if.then23
  %13 = load ptr, ptr @stdout, align 8, !tbaa !10
  %call3.i99 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.1, ptr noundef %13)
  br label %buffer_or_output.exit100

buffer_or_output.exit100:                         ; preds = %if.else.i98, %cleanup.thread.i93, %if.then.i89
  %buf.addr.2 = phi ptr [ null, %if.else.i98 ], [ %add.ptr.i96, %cleanup.thread.i93 ], [ %buf.addr.1, %if.then.i89 ]
  %len.addr.2 = phi i64 [ %len.addr.1, %if.else.i98 ], [ %sub.i97, %cleanup.thread.i93 ], [ %len.addr.1, %if.then.i89 ]
  %retval.1.i92 = phi i8 [ 0, %if.else.i98 ], [ 0, %cleanup.thread.i93 ], [ 1, %if.then.i89 ]
  %14 = and i8 %buf_err.0, 1
  %15 = or i8 %retval.1.i92, %14
  br label %for.inc

for.inc:                                          ; preds = %buffer_or_output.exit100, %for.cond
  %buf.addr.3 = phi ptr [ %buf.addr.1, %for.cond ], [ %buf.addr.2, %buffer_or_output.exit100 ]
  %len.addr.3 = phi i64 [ %len.addr.1, %for.cond ], [ %len.addr.2, %buffer_or_output.exit100 ]
  %buf_err.1 = phi i8 [ %buf_err.0, %for.cond ], [ %15, %buffer_or_output.exit100 ]
  %incdec.ptr32 = getelementptr inbounds i8, ptr %relto_suffix.1, i64 1
  br label %for.cond, !llvm.loop !12

for.end:                                          ; preds = %for.cond
  %16 = load i8, ptr %fname_suffix.0, align 1, !tbaa !5
  %tobool33.not = icmp eq i8 %16, 0
  br i1 %tobool33.not, label %if.end59, label %if.then34

if.then34:                                        ; preds = %for.end
  %tobool.not.i101 = icmp eq ptr %buf.addr.1, null
  br i1 %tobool.not.i101, label %buffer_or_output.exit113.thread, label %if.then.i102

if.then.i102:                                     ; preds = %if.then34
  %cmp.not.not.i104 = icmp ugt i64 %len.addr.1, 1
  br i1 %cmp.not.not.i104, label %buffer_or_output.exit113, label %if.then.i115

buffer_or_output.exit113.thread:                  ; preds = %if.then34
  %17 = load ptr, ptr @stdout, align 8, !tbaa !10
  %call3.i112 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.2, ptr noundef %17)
  %18 = and i8 %buf_err.0, 1
  %19 = load ptr, ptr @stdout, align 8, !tbaa !10
  %call3.i125 = tail call i32 @fputs_unlocked(ptr noundef nonnull %fname_suffix.0, ptr noundef %19)
  br label %buffer_or_output.exit126

buffer_or_output.exit113:                         ; preds = %if.then.i102
  store i16 47, ptr %buf.addr.1, align 1
  %add.ptr.i109 = getelementptr inbounds i8, ptr %buf.addr.1, i64 1
  %sub.i110 = add i64 %len.addr.1, -1
  %20 = and i8 %buf_err.0, 1
  br label %if.then.i115

if.then.i115:                                     ; preds = %buffer_or_output.exit113, %if.then.i102
  %21 = phi i8 [ %20, %buffer_or_output.exit113 ], [ 1, %if.then.i102 ]
  %len.addr.4170 = phi i64 [ %sub.i110, %buffer_or_output.exit113 ], [ %len.addr.1, %if.then.i102 ]
  %buf.addr.4169 = phi ptr [ %add.ptr.i109, %buffer_or_output.exit113 ], [ %buf.addr.1, %if.then.i102 ]
  %call.i116 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %fname_suffix.0) #7
  %cmp.not.not.i117 = icmp ult i64 %call.i116, %len.addr.4170
  br i1 %cmp.not.not.i117, label %cleanup.thread.i119, label %buffer_or_output.exit126

cleanup.thread.i119:                              ; preds = %if.then.i115
  %add.i120 = add nuw i64 %call.i116, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %buf.addr.4169, ptr noundef nonnull align 1 dereferenceable(1) %fname_suffix.0, i64 noundef %add.i120, i1 noundef false) #6
  br label %buffer_or_output.exit126

buffer_or_output.exit126:                         ; preds = %cleanup.thread.i119, %if.then.i115, %buffer_or_output.exit113.thread
  %22 = phi i8 [ %21, %if.then.i115 ], [ %21, %cleanup.thread.i119 ], [ %18, %buffer_or_output.exit113.thread ]
  %retval.1.i118 = phi i8 [ 1, %if.then.i115 ], [ 0, %cleanup.thread.i119 ], [ 0, %buffer_or_output.exit113.thread ]
  %23 = or i8 %retval.1.i118, %22
  br label %if.end59

if.else:                                          ; preds = %if.end
  %24 = load i8, ptr %fname_suffix.0, align 1, !tbaa !5
  %tobool51.not = icmp eq i8 %24, 0
  %cond = select i1 %tobool51.not, ptr @.str.3, ptr %fname_suffix.0
  %tobool.not.i127 = icmp eq ptr %buf, null
  br i1 %tobool.not.i127, label %if.else.i137, label %if.then.i128

if.then.i128:                                     ; preds = %if.else
  %call.i129 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %cond) #7
  %cmp.not.not.i130 = icmp ult i64 %call.i129, %len
  br i1 %cmp.not.not.i130, label %cleanup.thread.i132, label %if.then61

cleanup.thread.i132:                              ; preds = %if.then.i128
  %add.i133 = add nuw i64 %call.i129, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %buf, ptr noundef nonnull align 1 dereferenceable(1) %cond, i64 noundef %add.i133, i1 noundef false) #6
  br label %cleanup

if.else.i137:                                     ; preds = %if.else
  %25 = load ptr, ptr @stdout, align 8, !tbaa !10
  %call3.i138 = tail call i32 @fputs_unlocked(ptr noundef nonnull %cond, ptr noundef %25)
  br label %cleanup

if.end59:                                         ; preds = %buffer_or_output.exit126, %for.end
  %buf_err.2 = phi i8 [ %23, %buffer_or_output.exit126 ], [ %buf_err.0, %for.end ]
  %26 = and i8 %buf_err.2, 1
  %tobool60.not = icmp eq i8 %26, 0
  br i1 %tobool60.not, label %cleanup, label %if.then61

if.then61:                                        ; preds = %if.end59, %if.then.i128
  %call62 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.5, i32 noundef 5) #6
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 36, ptr noundef nonnull @.str.4, ptr noundef %call62) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then61, %if.end59, %if.else.i137, %cleanup.thread.i132, %path_common_prefix.exit, %entry
  %retval.0 = phi i1 [ false, %path_common_prefix.exit ], [ false, %if.then61 ], [ true, %if.end59 ], [ false, %entry ], [ true, %cleanup.thread.i132 ], [ true, %if.else.i137 ]
  ret i1 %retval.0
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: nofree nounwind
declare noundef i32 @fputs_unlocked(ptr nocapture noundef readonly, ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare ptr @dcgettext(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: cold
declare void @error(i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #5

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind }
attributes #7 = { nounwind willreturn memory(read) }
attributes #8 = { cold nounwind }

!llvm.ident = !{!0}
!llvm.module.flags = !{!1, !2, !3, !4}

!0 = !{!"clang version 18.1.8 (https://github.com/llvm/llvm-project.git 3b5b5c1ec4a3095ab096dd780e84d7ab81f3d7ff)"}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!6, !6, i64 0, i64 1}
!6 = !{!7, i64 1, !"omnipotent char"}
!7 = !{!"Simple C/C++ TBAA"}
!8 = distinct !{!8, !9}
!9 = !{!"llvm.loop.mustprogress"}
!10 = !{!11, !11, i64 0, i64 8}
!11 = !{!6, i64 8, !"any pointer"}
!12 = distinct !{!12, !9}
