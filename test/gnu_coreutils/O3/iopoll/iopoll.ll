; ModuleID = 'llvm-link'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pollfd = type { i32, i16, i16 }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }

@.str = private unnamed_addr constant [10 x i8] c"size >= 0\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"src/iopoll.c\00", align 1
@__PRETTY_FUNCTION__.fwrite_wait = private unnamed_addr constant [49 x i8] c"_Bool fwrite_wait(const char *, ssize_t, FILE *)\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"fdin != -1 || fdout != -1\00", align 1
@__PRETTY_FUNCTION__.iopoll_internal = private unnamed_addr constant [44 x i8] c"int iopoll_internal(int, int, _Bool, _Bool)\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"0 < ret\00", align 1

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @iopoll(i32 noundef %fdin, i32 noundef %fdout, i1 noundef zeroext %block) local_unnamed_addr #0 {
entry:
  %call = tail call fastcc i32 @iopoll_internal(i32 noundef %fdin, i32 noundef %fdout, i1 noundef zeroext %block, i1 noundef zeroext true), !range !5
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef i32 @iopoll_internal(i32 noundef %fdin, i32 noundef %fdout, i1 noundef zeroext %block, i1 noundef zeroext %broken_output) unnamed_addr #0 {
entry:
  %pfds = alloca [2 x %struct.pollfd], align 16
  %0 = and i32 %fdout, %fdin
  %or.cond.not = icmp eq i32 %0, -1
  br i1 %or.cond.not, label %if.else, label %if.end

if.else:                                          ; preds = %entry
  tail call void @__assert_fail(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 64, ptr noundef nonnull @__PRETTY_FUNCTION__.iopoll_internal) #8
  unreachable

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %pfds) #9
  store i32 %fdin, ptr %pfds, align 16, !tbaa !6
  %events = getelementptr inbounds %struct.pollfd, ptr %pfds, i64 0, i32 1
  store i16 129, ptr %events, align 4, !tbaa !12
  %revents = getelementptr inbounds %struct.pollfd, ptr %pfds, i64 0, i32 2
  store i16 0, ptr %revents, align 2, !tbaa !13
  %arrayinit.element = getelementptr inbounds %struct.pollfd, ptr %pfds, i64 1
  store i32 %fdout, ptr %arrayinit.element, align 8, !tbaa !6
  %events4 = getelementptr inbounds %struct.pollfd, ptr %pfds, i64 1, i32 1
  store i16 128, ptr %events4, align 4, !tbaa !12
  %revents5 = getelementptr inbounds %struct.pollfd, ptr %pfds, i64 1, i32 2
  store i16 0, ptr %revents5, align 2, !tbaa !13
  br i1 %broken_output, label %if.end10, label %if.then6

if.then6:                                         ; preds = %if.end
  store i16 4, ptr %events4, align 4, !tbaa !12
  store i16 4, ptr %events, align 4, !tbaa !12
  br label %if.end10

if.end10:                                         ; preds = %if.then6, %if.end
  %check_out_events.0 = phi i32 [ 56, %if.end ], [ 4, %if.then6 ]
  %cond = sext i1 %block to i32
  br i1 %block, label %while.cond.us, label %while.cond

while.cond.us:                                    ; preds = %while.cond.us.backedge, %if.end10
  %ret.0.us = phi i32 [ %call14.us, %while.cond.us.backedge ], [ 0, %if.end10 ]
  %cmp11.us = icmp sgt i32 %ret.0.us, -1
  br i1 %cmp11.us, label %while.body.us, label %lor.rhs.us

lor.rhs.us:                                       ; preds = %while.cond.us
  %call.us = tail call ptr @__errno_location() #10
  %1 = load i32, ptr %call.us, align 4, !tbaa !14
  %cmp12.us = icmp eq i32 %1, 4
  br i1 %cmp12.us, label %while.body.us, label %cleanup

while.body.us:                                    ; preds = %lor.rhs.us, %while.cond.us
  %call14.us = call i32 @poll(ptr noundef nonnull %pfds, i64 noundef 2, i32 noundef %cond) #9
  %cmp15.us = icmp slt i32 %call14.us, 0
  br i1 %cmp15.us, label %while.cond.us.backedge, label %if.end17.us

if.end17.us:                                      ; preds = %while.body.us
  %cmp18.us.not = icmp eq i32 %call14.us, 0
  br i1 %cmp18.us.not, label %if.else24, label %if.end25.us

if.end25.us:                                      ; preds = %if.end17.us
  %2 = load i16, ptr %revents, align 2, !tbaa !13
  %tobool28.not.us = icmp eq i16 %2, 0
  br i1 %tobool28.not.us, label %if.end30.us, label %cleanup

if.end30.us:                                      ; preds = %if.end25.us
  %3 = load i16, ptr %revents5, align 2, !tbaa !13
  %conv.us51 = zext i16 %3 to i32
  %and.us = and i32 %check_out_events.0, %conv.us51
  %tobool33.not.us = icmp eq i32 %and.us, 0
  br i1 %tobool33.not.us, label %while.cond.us.backedge, label %if.then34

while.cond.us.backedge:                           ; preds = %if.end30.us, %while.body.us
  br label %while.cond.us, !llvm.loop !15

while.cond:                                       ; preds = %while.cond.backedge, %if.end10
  %ret.0 = phi i32 [ %call14, %while.cond.backedge ], [ 0, %if.end10 ]
  %cmp11 = icmp sgt i32 %ret.0, -1
  br i1 %cmp11, label %while.body, label %lor.rhs

lor.rhs:                                          ; preds = %while.cond
  %call = tail call ptr @__errno_location() #10
  %4 = load i32, ptr %call, align 4, !tbaa !14
  %cmp12 = icmp eq i32 %4, 4
  br i1 %cmp12, label %while.body, label %cleanup

while.body:                                       ; preds = %lor.rhs, %while.cond
  %call14 = call i32 @poll(ptr noundef nonnull %pfds, i64 noundef 2, i32 noundef %cond) #9
  %cmp15 = icmp slt i32 %call14, 0
  br i1 %cmp15, label %while.cond.backedge, label %if.end17

while.cond.backedge:                              ; preds = %if.end30, %while.body
  br label %while.cond, !llvm.loop !15

if.end17:                                         ; preds = %while.body
  %cmp18 = icmp ne i32 %call14, 0
  %5 = load i16, ptr %revents, align 2
  %tobool28.not = icmp eq i16 %5, 0
  %or.cond = select i1 %cmp18, i1 %tobool28.not, i1 false
  br i1 %or.cond, label %if.end30, label %cleanup

if.else24:                                        ; preds = %if.end17.us
  call void @__assert_fail(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef 88, ptr noundef nonnull @__PRETTY_FUNCTION__.iopoll_internal) #8
  unreachable

if.end30:                                         ; preds = %if.end17
  %6 = load i16, ptr %revents5, align 2, !tbaa !13
  %conv52 = zext i16 %6 to i32
  %and = and i32 %check_out_events.0, %conv52
  %tobool33.not = icmp eq i32 %and, 0
  br i1 %tobool33.not, label %while.cond.backedge, label %if.then34

if.then34:                                        ; preds = %if.end30, %if.end30.us
  %cond37 = select i1 %broken_output, i32 -2, i32 0
  br label %cleanup

cleanup:                                          ; preds = %if.then34, %if.end17, %lor.rhs, %if.end25.us, %lor.rhs.us
  %retval.0 = phi i32 [ %cond37, %if.then34 ], [ -3, %lor.rhs.us ], [ 0, %if.end25.us ], [ -3, %lor.rhs ], [ 0, %if.end17 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %pfds) #9
  ret i32 %retval.0
}

; Function Attrs: noreturn nounwind
declare void @__assert_fail(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #3

declare i32 @poll(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nofree nounwind uwtable
define dso_local zeroext i1 @iopoll_input_ok(i32 noundef %fdin) local_unnamed_addr #5 {
entry:
  %st = alloca %struct.stat, align 8
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %st) #9
  %call = call i32 @fstat(i32 noundef %fdin, ptr noundef nonnull %st) #9
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %st_mode = getelementptr inbounds %struct.stat, ptr %st, i64 0, i32 3
  %0 = load i32, ptr %st_mode, align 8
  %and = and i32 %0, 61440
  %cmp1 = icmp ne i32 %and, 32768
  %cmp4 = icmp ne i32 %and, 24576
  %.not = and i1 %cmp1, %cmp4
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %lnot = phi i1 [ true, %entry ], [ %.not, %land.rhs ]
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %st) #9
  ret i1 %lnot
}

; Function Attrs: nofree nounwind
declare noundef i32 @fstat(i32 noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define dso_local zeroext i1 @iopoll_output_ok(i32 noundef %fdout) local_unnamed_addr #0 {
entry:
  %call = tail call i32 @isapipe(i32 noundef %fdout) #9
  %cmp = icmp sgt i32 %call, 0
  ret i1 %cmp
}

declare i32 @isapipe(i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local zeroext i1 @fclose_wait(ptr noundef %f) local_unnamed_addr #0 {
entry:
  %call9 = tail call i32 @fflush_unlocked(ptr noundef %f) #9
  %cmp10 = icmp eq i32 %call9, 0
  br i1 %cmp10, label %for.end, label %if.end.lr.ph

if.end.lr.ph:                                     ; preds = %entry
  %call.i = tail call ptr @__errno_location() #10
  br label %if.end

if.end:                                           ; preds = %fwait_for_nonblocking_write.exit, %if.end.lr.ph
  %0 = load i32, ptr %call.i, align 4, !tbaa !14
  %cmp.i = icmp eq i32 %0, 11
  br i1 %cmp.i, label %if.end.i, label %for.end

if.end.i:                                         ; preds = %if.end
  %call3.i = tail call i32 @fileno(ptr noundef %f) #9
  %cmp4.i = icmp eq i32 %call3.i, -1
  br i1 %cmp4.i, label %fail.i, label %if.end6.i

if.end6.i:                                        ; preds = %if.end.i
  %call7.i = tail call fastcc i32 @iopoll_internal(i32 noundef -1, i32 noundef %call3.i, i1 noundef zeroext true, i1 noundef zeroext false), !range !5
  %cmp8.not.i = icmp eq i32 %call7.i, 0
  br i1 %cmp8.not.i, label %fwait_for_nonblocking_write.exit, label %fail.i

fail.i:                                           ; preds = %if.end6.i, %if.end.i
  store i32 11, ptr %call.i, align 4, !tbaa !14
  br label %for.end

fwait_for_nonblocking_write.exit:                 ; preds = %if.end6.i
  tail call void @clearerr_unlocked(ptr noundef %f) #9
  %call = tail call i32 @fflush_unlocked(ptr noundef %f) #9
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %for.end, label %if.end

for.end:                                          ; preds = %fwait_for_nonblocking_write.exit, %fail.i, %if.end, %entry
  %call4 = tail call i32 @rpl_fclose(ptr noundef %f) #9
  %cmp5 = icmp eq i32 %call4, 0
  ret i1 %cmp5
}

declare i32 @fflush_unlocked(ptr noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i32 @fileno(ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nounwind
declare void @clearerr_unlocked(ptr noundef) local_unnamed_addr #7

declare i32 @rpl_fclose(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local noundef zeroext i1 @fwrite_wait(ptr nocapture noundef %buf, i64 noundef %size, ptr noundef %f) local_unnamed_addr #0 {
entry:
  br label %cond.false11

cond.false11:                                     ; preds = %cleanup, %entry
  %size.addr.0 = phi i64 [ %size, %entry ], [ %sub15, %cleanup ]
  %buf.addr.0 = phi ptr [ %buf, %entry ], [ %add.ptr, %cleanup ]
  %call12 = tail call i64 @fwrite_unlocked(ptr noundef %buf.addr.0, i64 noundef 1, i64 noundef %size.addr.0, ptr noundef %f)
  %sub15 = sub i64 %size.addr.0, %call12
  %cmp16 = icmp sgt i64 %sub15, -1
  br i1 %cmp16, label %if.end19, label %if.else

if.else:                                          ; preds = %cond.false11
  tail call void @__assert_fail(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 231, ptr noundef nonnull @__PRETTY_FUNCTION__.fwrite_wait) #8
  unreachable

if.end19:                                         ; preds = %cond.false11
  %cmp20 = icmp eq i64 %sub15, 0
  br i1 %cmp20, label %return, label %if.end23

if.end23:                                         ; preds = %if.end19
  %call.i47 = tail call ptr @__errno_location() #10
  %0 = load i32, ptr %call.i47, align 4, !tbaa !14
  %cmp.i = icmp eq i32 %0, 11
  br i1 %cmp.i, label %if.end.i, label %return

if.end.i:                                         ; preds = %if.end23
  %call3.i = tail call i32 @fileno(ptr noundef %f) #9
  %cmp4.i = icmp eq i32 %call3.i, -1
  br i1 %cmp4.i, label %fail.i, label %if.end6.i

if.end6.i:                                        ; preds = %if.end.i
  %call7.i = tail call fastcc i32 @iopoll_internal(i32 noundef -1, i32 noundef %call3.i, i1 noundef zeroext true, i1 noundef zeroext false), !range !5
  %cmp8.not.i = icmp eq i32 %call7.i, 0
  br i1 %cmp8.not.i, label %cleanup, label %fail.i

fail.i:                                           ; preds = %if.end6.i, %if.end.i
  store i32 11, ptr %call.i47, align 4, !tbaa !14
  br label %return

cleanup:                                          ; preds = %if.end6.i
  tail call void @clearerr_unlocked(ptr noundef %f) #9
  %add.ptr = getelementptr inbounds i8, ptr %buf.addr.0, i64 %call12
  br label %cond.false11

return:                                           ; preds = %fail.i, %if.end23, %if.end19
  ret i1 %cmp20
}

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite_unlocked(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #6

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { noreturn nounwind }
attributes #9 = { nounwind }
attributes #10 = { nounwind willreturn memory(none) }

!llvm.ident = !{!0}
!llvm.module.flags = !{!1, !2, !3, !4}

!0 = !{!"clang version 18.1.8 (https://github.com/llvm/llvm-project.git 3b5b5c1ec4a3095ab096dd780e84d7ab81f3d7ff)"}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 -3, i32 1}
!6 = !{!7, !10, i64 0, i64 4}
!7 = !{!8, i64 8, !"pollfd", !10, i64 0, i64 4, !11, i64 4, i64 2, !11, i64 6, i64 2}
!8 = !{!9, i64 1, !"omnipotent char"}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!8, i64 4, !"int"}
!11 = !{!8, i64 2, !"short"}
!12 = !{!7, !11, i64 4, i64 2}
!13 = !{!7, !11, i64 6, i64 2}
!14 = !{!10, !10, i64 0, i64 4}
!15 = distinct !{!15, !16}
!16 = !{!"llvm.loop.mustprogress"}
