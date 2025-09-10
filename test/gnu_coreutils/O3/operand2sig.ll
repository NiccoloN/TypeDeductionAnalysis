; ModuleID = 'llvm-link'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str.1 = private unnamed_addr constant [19 x i8] c"%s: invalid signal\00", align 1

; Function Attrs: nounwind uwtable
define dso_local i32 @operand2sig(ptr noundef nonnull %operand) local_unnamed_addr #0 {
entry:
  %signum = alloca i32, align 4
  %endp = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %signum) #7
  %0 = load i8, ptr %operand, align 1, !tbaa !5
  %conv = sext i8 %0 to i32
  %c.off.i = add nsw i32 %conv, -48
  %switch.i = icmp ult i32 %c.off.i, 10
  br i1 %switch.i, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %endp) #7
  %call1 = tail call ptr @__errno_location() #8
  store i32 0, ptr %call1, align 4, !tbaa !8
  %call2 = call i64 @__isoc23_strtol(ptr noundef nonnull %operand, ptr noundef nonnull %endp, i32 noundef 10) #7
  %call2.fr = freeze i64 %call2
  %conv3 = trunc i64 %call2.fr to i32
  %1 = load ptr, ptr %endp, align 8, !tbaa !10
  %cmp = icmp eq ptr %1, %operand
  br i1 %cmp, label %.thread, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then
  %2 = load i8, ptr %1, align 1, !tbaa !5
  %tobool.not = icmp eq i8 %2, 0
  br i1 %tobool.not, label %lor.lhs.false6, label %.thread

lor.lhs.false6:                                   ; preds = %lor.lhs.false
  %3 = load i32, ptr %call1, align 4, !tbaa !8
  %tobool8.not = icmp eq i32 %3, 0
  %4 = add i64 %call2.fr, 2147483648
  %cmp11.not = icmp ult i64 %4, 4294967296
  %or.cond93 = and i1 %tobool8.not, %cmp11.not
  br i1 %or.cond93, label %cond.end, label %.thread

cond.end:                                         ; preds = %lor.lhs.false6
  %cmp16.inv = icmp slt i32 %conv3, 255
  br i1 %cmp16.inv, label %5, label %6

5:                                                ; preds = %cond.end
  %cmp13.not = icmp eq i32 %conv3, -1
  %and91 = and i32 %conv3, 127
  %spec.select = select i1 %cmp13.not, i32 -1, i32 %and91
  br label %.thread

6:                                                ; preds = %cond.end
  %and = and i32 %conv3, 255
  br label %.thread

.thread:                                          ; preds = %6, %5, %lor.lhs.false6, %lor.lhs.false, %if.then
  %7 = phi i32 [ %and, %6 ], [ -1, %if.then ], [ -1, %lor.lhs.false ], [ -1, %lor.lhs.false6 ], [ %spec.select, %5 ]
  store i32 %7, ptr %signum, align 4, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %endp) #7
  br label %if.end50

if.else:                                          ; preds = %entry
  %call19 = tail call noalias nonnull ptr @xstrdup(ptr noundef nonnull %operand) #7
  %8 = load i8, ptr %call19, align 1, !tbaa !5
  %tobool20.not94 = icmp eq i8 %8, 0
  br i1 %tobool20.not94, label %for.end, label %for.body

for.body:                                         ; preds = %for.inc, %if.else
  %9 = phi i8 [ %12, %for.inc ], [ %8, %if.else ]
  %p.095 = phi ptr [ %incdec.ptr, %for.inc ], [ %call19, %if.else ]
  %10 = add i8 %9, -123
  %11 = icmp ult i8 %10, -26
  br i1 %11, label %for.inc, label %if.then24

if.then24:                                        ; preds = %for.body
  %narrow = add nsw i8 %9, -32
  store i8 %narrow, ptr %p.095, align 1, !tbaa !5
  br label %for.inc

for.inc:                                          ; preds = %if.then24, %for.body
  %incdec.ptr = getelementptr inbounds i8, ptr %p.095, i64 1
  %12 = load i8, ptr %incdec.ptr, align 1, !tbaa !5
  %tobool20.not = icmp eq i8 %12, 0
  br i1 %tobool20.not, label %for.end, label %for.body, !llvm.loop !12

for.end:                                          ; preds = %for.inc, %if.else
  %call28 = call i32 @str2sig(ptr noundef nonnull %call19, ptr noundef nonnull %signum) #7
  %cmp29 = icmp eq i32 %call28, 0
  br i1 %cmp29, label %if.end49, label %lor.lhs.false31

lor.lhs.false31:                                  ; preds = %for.end
  %13 = load i8, ptr %call19, align 1, !tbaa !5
  %cmp33 = icmp eq i8 %13, 83
  br i1 %cmp33, label %land.lhs.true, label %if.then48

land.lhs.true:                                    ; preds = %lor.lhs.false31
  %arrayidx35 = getelementptr inbounds i8, ptr %call19, i64 1
  %14 = load i8, ptr %arrayidx35, align 1, !tbaa !5
  %cmp37 = icmp eq i8 %14, 73
  br i1 %cmp37, label %land.lhs.true39, label %if.then48

land.lhs.true39:                                  ; preds = %land.lhs.true
  %arrayidx40 = getelementptr inbounds i8, ptr %call19, i64 2
  %15 = load i8, ptr %arrayidx40, align 1, !tbaa !5
  %cmp42 = icmp eq i8 %15, 71
  br i1 %cmp42, label %land.lhs.true44, label %if.then48

land.lhs.true44:                                  ; preds = %land.lhs.true39
  %add.ptr = getelementptr inbounds i8, ptr %call19, i64 3
  %call45 = call i32 @str2sig(ptr noundef nonnull %add.ptr, ptr noundef nonnull %signum) #7
  %cmp46 = icmp eq i32 %call45, 0
  br i1 %cmp46, label %if.end49, label %if.then48

if.then48:                                        ; preds = %land.lhs.true44, %land.lhs.true39, %land.lhs.true, %lor.lhs.false31
  store i32 -1, ptr %signum, align 4, !tbaa !8
  br label %if.end49

if.end49:                                         ; preds = %if.then48, %land.lhs.true44, %for.end
  call void @free(ptr noundef nonnull %call19) #7
  %.pr = load i32, ptr %signum, align 4
  br label %if.end50

if.end50:                                         ; preds = %if.end49, %.thread
  %16 = phi i32 [ %.pr, %if.end49 ], [ %7, %.thread ]
  %or.cond = icmp ugt i32 %16, 64
  br i1 %or.cond, label %if.then56, label %cleanup

if.then56:                                        ; preds = %if.end50
  %call57 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.1, i32 noundef 5) #7
  %call58 = call ptr @quote(ptr noundef nonnull %operand) #7
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %call57, ptr noundef %call58) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then56, %if.end50
  %retval.0 = phi i32 [ -1, %if.then56 ], [ %16, %if.end50 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %signum) #7
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #2

; Function Attrs: nounwind
declare i64 @__isoc23_strtol(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

declare noalias nonnull ptr @xstrdup(ptr noundef) local_unnamed_addr #4

declare i32 @str2sig(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: nounwind
declare ptr @dcgettext(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @quote(ptr noundef) local_unnamed_addr #4

; Function Attrs: cold
declare void @error(i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #6

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind }
attributes #8 = { nounwind willreturn memory(none) }
attributes #9 = { cold nounwind }

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
!8 = !{!9, !9, i64 0, i64 4}
!9 = !{!6, i64 4, !"int"}
!10 = !{!11, !11, i64 0, i64 8}
!11 = !{!6, i64 8, !"any pointer"}
!12 = distinct !{!12, !13}
!13 = !{!"llvm.loop.mustprogress"}
