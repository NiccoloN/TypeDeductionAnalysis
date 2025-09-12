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

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iopoll(i32 noundef %fdin, i32 noundef %fdout, i1 noundef zeroext %block) #0 {
entry:
  %fdin.addr = alloca i32, align 4
  %fdout.addr = alloca i32, align 4
  %block.addr = alloca i8, align 1
  store i32 %fdin, ptr %fdin.addr, align 4
  store i32 %fdout, ptr %fdout.addr, align 4
  %frombool = zext i1 %block to i8
  store i8 %frombool, ptr %block.addr, align 1
  %0 = load i32, ptr %fdin.addr, align 4
  %1 = load i32, ptr %fdout.addr, align 4
  %2 = load i8, ptr %block.addr, align 1
  %tobool = trunc i8 %2 to i1
  %call = call i32 @iopoll_internal(i32 noundef %0, i32 noundef %1, i1 noundef zeroext %tobool, i1 noundef zeroext true)
  ret i32 %call
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iopoll_internal(i32 noundef %fdin, i32 noundef %fdout, i1 noundef zeroext %block, i1 noundef zeroext %broken_output) #0 {
entry:
  %retval = alloca i32, align 4
  %fdin.addr = alloca i32, align 4
  %fdout.addr = alloca i32, align 4
  %block.addr = alloca i8, align 1
  %broken_output.addr = alloca i8, align 1
  %pfds = alloca [2 x %struct.pollfd], align 16
  %check_out_events = alloca i32, align 4
  %ret = alloca i32, align 4
  store i32 %fdin, ptr %fdin.addr, align 4
  store i32 %fdout, ptr %fdout.addr, align 4
  %frombool = zext i1 %block to i8
  store i8 %frombool, ptr %block.addr, align 1
  %frombool1 = zext i1 %broken_output to i8
  store i8 %frombool1, ptr %broken_output.addr, align 1
  %0 = load i32, ptr %fdin.addr, align 4
  %cmp = icmp ne i32 %0, -1
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32, ptr %fdout.addr, align 4
  %cmp2 = icmp ne i32 %1, -1
  br i1 %cmp2, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false, %entry
  br label %if.end

if.else:                                          ; preds = %lor.lhs.false
  call void @__assert_fail(ptr noundef @.str.2, ptr noundef @.str.1, i32 noundef 64, ptr noundef @__PRETTY_FUNCTION__.iopoll_internal) #5
  unreachable

if.end:                                           ; preds = %if.then
  %arrayinit.begin = getelementptr inbounds [2 x %struct.pollfd], ptr %pfds, i64 0, i64 0
  %fd = getelementptr inbounds %struct.pollfd, ptr %arrayinit.begin, i32 0, i32 0
  %2 = load i32, ptr %fdin.addr, align 4
  store i32 %2, ptr %fd, align 8
  %events = getelementptr inbounds %struct.pollfd, ptr %arrayinit.begin, i32 0, i32 1
  store i16 129, ptr %events, align 4
  %revents = getelementptr inbounds %struct.pollfd, ptr %arrayinit.begin, i32 0, i32 2
  store i16 0, ptr %revents, align 2
  %arrayinit.element = getelementptr inbounds %struct.pollfd, ptr %arrayinit.begin, i64 1
  %fd3 = getelementptr inbounds %struct.pollfd, ptr %arrayinit.element, i32 0, i32 0
  %3 = load i32, ptr %fdout.addr, align 4
  store i32 %3, ptr %fd3, align 8
  %events4 = getelementptr inbounds %struct.pollfd, ptr %arrayinit.element, i32 0, i32 1
  store i16 128, ptr %events4, align 4
  %revents5 = getelementptr inbounds %struct.pollfd, ptr %arrayinit.element, i32 0, i32 2
  store i16 0, ptr %revents5, align 2
  store i32 56, ptr %check_out_events, align 4
  store i32 0, ptr %ret, align 4
  %4 = load i8, ptr %broken_output.addr, align 1
  %tobool = trunc i8 %4 to i1
  br i1 %tobool, label %if.end10, label %if.then6

if.then6:                                         ; preds = %if.end
  %arrayidx = getelementptr inbounds [2 x %struct.pollfd], ptr %pfds, i64 0, i64 1
  %events7 = getelementptr inbounds %struct.pollfd, ptr %arrayidx, i32 0, i32 1
  store i16 4, ptr %events7, align 4
  %arrayidx8 = getelementptr inbounds [2 x %struct.pollfd], ptr %pfds, i64 0, i64 0
  %events9 = getelementptr inbounds %struct.pollfd, ptr %arrayidx8, i32 0, i32 1
  store i16 4, ptr %events9, align 4
  store i32 4, ptr %check_out_events, align 4
  br label %if.end10

if.end10:                                         ; preds = %if.then6, %if.end
  br label %while.cond

while.cond:                                       ; preds = %if.end38, %if.then16, %if.end10
  %5 = load i32, ptr %ret, align 4
  %cmp11 = icmp sle i32 0, %5
  br i1 %cmp11, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %while.cond
  %call = call ptr @__errno_location() #6
  %6 = load i32, ptr %call, align 4
  %cmp12 = icmp eq i32 %6, 4
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %while.cond
  %7 = phi i1 [ true, %while.cond ], [ %cmp12, %lor.rhs ]
  br i1 %7, label %while.body, label %while.end

while.body:                                       ; preds = %lor.end
  %arraydecay = getelementptr inbounds [2 x %struct.pollfd], ptr %pfds, i64 0, i64 0
  %8 = load i8, ptr %block.addr, align 1
  %tobool13 = trunc i8 %8 to i1
  %9 = zext i1 %tobool13 to i64
  %cond = select i1 %tobool13, i32 -1, i32 0
  %call14 = call i32 @poll(ptr noundef %arraydecay, i64 noundef 2, i32 noundef %cond)
  store i32 %call14, ptr %ret, align 4
  %10 = load i32, ptr %ret, align 4
  %cmp15 = icmp slt i32 %10, 0
  br i1 %cmp15, label %if.then16, label %if.end17

if.then16:                                        ; preds = %while.body
  br label %while.cond, !llvm.loop !6

if.end17:                                         ; preds = %while.body
  %11 = load i32, ptr %ret, align 4
  %cmp18 = icmp eq i32 %11, 0
  br i1 %cmp18, label %land.lhs.true, label %if.end21

land.lhs.true:                                    ; preds = %if.end17
  %12 = load i8, ptr %block.addr, align 1
  %tobool19 = trunc i8 %12 to i1
  br i1 %tobool19, label %if.end21, label %if.then20

if.then20:                                        ; preds = %land.lhs.true
  store i32 0, ptr %retval, align 4
  br label %return

if.end21:                                         ; preds = %land.lhs.true, %if.end17
  %13 = load i32, ptr %ret, align 4
  %cmp22 = icmp slt i32 0, %13
  br i1 %cmp22, label %if.then23, label %if.else24

if.then23:                                        ; preds = %if.end21
  br label %if.end25

if.else24:                                        ; preds = %if.end21
  call void @__assert_fail(ptr noundef @.str.3, ptr noundef @.str.1, i32 noundef 88, ptr noundef @__PRETTY_FUNCTION__.iopoll_internal) #5
  unreachable

if.end25:                                         ; preds = %if.then23
  %arrayidx26 = getelementptr inbounds [2 x %struct.pollfd], ptr %pfds, i64 0, i64 0
  %revents27 = getelementptr inbounds %struct.pollfd, ptr %arrayidx26, i32 0, i32 2
  %14 = load i16, ptr %revents27, align 2
  %tobool28 = icmp ne i16 %14, 0
  br i1 %tobool28, label %if.then29, label %if.end30

if.then29:                                        ; preds = %if.end25
  store i32 0, ptr %retval, align 4
  br label %return

if.end30:                                         ; preds = %if.end25
  %arrayidx31 = getelementptr inbounds [2 x %struct.pollfd], ptr %pfds, i64 0, i64 1
  %revents32 = getelementptr inbounds %struct.pollfd, ptr %arrayidx31, i32 0, i32 2
  %15 = load i16, ptr %revents32, align 2
  %conv = sext i16 %15 to i32
  %16 = load i32, ptr %check_out_events, align 4
  %and = and i32 %conv, %16
  %tobool33 = icmp ne i32 %and, 0
  br i1 %tobool33, label %if.then34, label %if.end38

if.then34:                                        ; preds = %if.end30
  %17 = load i8, ptr %broken_output.addr, align 1
  %tobool35 = trunc i8 %17 to i1
  %18 = zext i1 %tobool35 to i64
  %cond37 = select i1 %tobool35, i32 -2, i32 0
  store i32 %cond37, ptr %retval, align 4
  br label %return

if.end38:                                         ; preds = %if.end30
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %lor.end
  store i32 -3, ptr %retval, align 4
  br label %return

return:                                           ; preds = %while.end, %if.then34, %if.then29, %if.then20
  %19 = load i32, ptr %retval, align 4
  ret i32 %19
}

; Function Attrs: noreturn nounwind
declare void @__assert_fail(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: nounwind willreturn memory(none)
declare ptr @__errno_location() #2

declare i32 @poll(ptr noundef, i64 noundef, i32 noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local zeroext i1 @iopoll_input_ok(i32 noundef %fdin) #0 {
entry:
  %fdin.addr = alloca i32, align 4
  %st = alloca %struct.stat, align 8
  %always_ready = alloca i8, align 1
  store i32 %fdin, ptr %fdin.addr, align 4
  %0 = load i32, ptr %fdin.addr, align 4
  %call = call i32 @fstat(i32 noundef %0, ptr noundef %st) #7
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %st_mode = getelementptr inbounds %struct.stat, ptr %st, i32 0, i32 3
  %1 = load i32, ptr %st_mode, align 8
  %and = and i32 %1, 61440
  %cmp1 = icmp eq i32 %and, 32768
  br i1 %cmp1, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %land.rhs
  %st_mode2 = getelementptr inbounds %struct.stat, ptr %st, i32 0, i32 3
  %2 = load i32, ptr %st_mode2, align 8
  %and3 = and i32 %2, 61440
  %cmp4 = icmp eq i32 %and3, 24576
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %land.rhs
  %3 = phi i1 [ true, %land.rhs ], [ %cmp4, %lor.rhs ]
  br label %land.end

land.end:                                         ; preds = %lor.end, %entry
  %4 = phi i1 [ false, %entry ], [ %3, %lor.end ]
  %frombool = zext i1 %4 to i8
  store i8 %frombool, ptr %always_ready, align 1
  %5 = load i8, ptr %always_ready, align 1
  %tobool = trunc i8 %5 to i1
  %lnot = xor i1 %tobool, true
  ret i1 %lnot
}

; Function Attrs: nounwind
declare i32 @fstat(i32 noundef, ptr noundef) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local zeroext i1 @iopoll_output_ok(i32 noundef %fdout) #0 {
entry:
  %fdout.addr = alloca i32, align 4
  store i32 %fdout, ptr %fdout.addr, align 4
  %0 = load i32, ptr %fdout.addr, align 4
  %call = call i32 @isapipe(i32 noundef %0)
  %cmp = icmp sgt i32 %call, 0
  ret i1 %cmp
}

declare i32 @isapipe(i32 noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local zeroext i1 @fclose_wait(ptr noundef %f) #0 {
entry:
  %f.addr = alloca ptr, align 8
  store ptr %f, ptr %f.addr, align 8
  br label %for.cond

for.cond:                                         ; preds = %if.end3, %entry
  %0 = load ptr, ptr %f.addr, align 8
  %call = call i32 @fflush_unlocked(ptr noundef %0)
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %for.cond
  br label %for.end

if.end:                                           ; preds = %for.cond
  %1 = load ptr, ptr %f.addr, align 8
  %call1 = call zeroext i1 @fwait_for_nonblocking_write(ptr noundef %1)
  br i1 %call1, label %if.end3, label %if.then2

if.then2:                                         ; preds = %if.end
  br label %for.end

if.end3:                                          ; preds = %if.end
  br label %for.cond

for.end:                                          ; preds = %if.then2, %if.then
  %2 = load ptr, ptr %f.addr, align 8
  %call4 = call i32 @rpl_fclose(ptr noundef %2)
  %cmp5 = icmp eq i32 %call4, 0
  ret i1 %cmp5
}

declare i32 @fflush_unlocked(ptr noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i1 @fwait_for_nonblocking_write(ptr noundef %f) #0 {
entry:
  %retval = alloca i1, align 1
  %f.addr = alloca ptr, align 8
  %fd = alloca i32, align 4
  store ptr %f, ptr %f.addr, align 8
  %call = call ptr @__errno_location() #6
  %0 = load i32, ptr %call, align 4
  %cmp = icmp eq i32 %0, 11
  br i1 %cmp, label %if.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %call1 = call ptr @__errno_location() #6
  %1 = load i32, ptr %call1, align 4
  %cmp2 = icmp eq i32 %1, 11
  br i1 %cmp2, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false
  store i1 false, ptr %retval, align 1
  br label %return

if.end:                                           ; preds = %lor.lhs.false, %entry
  %2 = load ptr, ptr %f.addr, align 8
  %call3 = call i32 @fileno(ptr noundef %2) #7
  store i32 %call3, ptr %fd, align 4
  %3 = load i32, ptr %fd, align 4
  %cmp4 = icmp eq i32 %3, -1
  br i1 %cmp4, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end
  br label %fail

if.end6:                                          ; preds = %if.end
  %4 = load i32, ptr %fd, align 4
  %call7 = call i32 @iopoll_internal(i32 noundef -1, i32 noundef %4, i1 noundef zeroext true, i1 noundef zeroext false)
  %cmp8 = icmp ne i32 %call7, 0
  br i1 %cmp8, label %if.then9, label %if.end10

if.then9:                                         ; preds = %if.end6
  br label %fail

if.end10:                                         ; preds = %if.end6
  %5 = load ptr, ptr %f.addr, align 8
  call void @clearerr_unlocked(ptr noundef %5) #7
  store i1 true, ptr %retval, align 1
  br label %return

fail:                                             ; preds = %if.then9, %if.then5
  %call11 = call ptr @__errno_location() #6
  store i32 11, ptr %call11, align 4
  store i1 false, ptr %retval, align 1
  br label %return

return:                                           ; preds = %fail, %if.end10, %if.then
  %6 = load i1, ptr %retval, align 1
  ret i1 %6
}

declare i32 @rpl_fclose(ptr noundef) #3

; Function Attrs: nounwind
declare i32 @fileno(ptr noundef) #4

; Function Attrs: nounwind
declare void @clearerr_unlocked(ptr noundef) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local zeroext i1 @fwrite_wait(ptr noundef %buf, i64 noundef %size, ptr noundef %f) #0 {
entry:
  %retval = alloca i1, align 1
  %buf.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %f.addr = alloca ptr, align 8
  %written = alloca i64, align 8
  store ptr %buf, ptr %buf.addr, align 8
  store i64 %size, ptr %size.addr, align 8
  store ptr %f, ptr %f.addr, align 8
  br label %for.cond

for.cond:                                         ; preds = %if.end6, %entry
  %0 = load ptr, ptr %buf.addr, align 8
  %1 = load i64, ptr %size.addr, align 8
  %2 = load ptr, ptr %f.addr, align 8
  %call = call i64 @fwrite_unlocked(ptr noundef %0, i64 noundef 1, i64 noundef %1, ptr noundef %2)
  store i64 %call, ptr %written, align 8
  %3 = load i64, ptr %written, align 8
  %4 = load i64, ptr %size.addr, align 8
  %sub = sub i64 %4, %3
  store i64 %sub, ptr %size.addr, align 8
  %5 = load i64, ptr %size.addr, align 8
  %cmp = icmp sge i64 %5, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %for.cond
  br label %if.end

if.else:                                          ; preds = %for.cond
  call void @__assert_fail(ptr noundef @.str, ptr noundef @.str.1, i32 noundef 231, ptr noundef @__PRETTY_FUNCTION__.fwrite_wait) #5
  unreachable

if.end:                                           ; preds = %if.then
  %6 = load i64, ptr %size.addr, align 8
  %cmp1 = icmp sle i64 %6, 0
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  store i1 true, ptr %retval, align 1
  br label %return

if.end3:                                          ; preds = %if.end
  %7 = load ptr, ptr %f.addr, align 8
  %call4 = call zeroext i1 @fwait_for_nonblocking_write(ptr noundef %7)
  br i1 %call4, label %if.end6, label %if.then5

if.then5:                                         ; preds = %if.end3
  store i1 false, ptr %retval, align 1
  br label %return

if.end6:                                          ; preds = %if.end3
  %8 = load i64, ptr %written, align 8
  %9 = load ptr, ptr %buf.addr, align 8
  %add.ptr = getelementptr inbounds i8, ptr %9, i64 %8
  store ptr %add.ptr, ptr %buf.addr, align 8
  br label %for.cond

return:                                           ; preds = %if.then5, %if.then2
  %10 = load i1, ptr %retval, align 1
  ret i1 %10
}

declare i64 @fwrite_unlocked(ptr noundef, i64 noundef, i64 noundef, ptr noundef) #3

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind willreturn memory(none) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn nounwind }
attributes #6 = { nounwind willreturn memory(none) }
attributes #7 = { nounwind }

!llvm.ident = !{!0}
!llvm.module.flags = !{!1, !2, !3, !4, !5}

!0 = !{!"clang version 18.1.8 (https://github.com/llvm/llvm-project.git 3b5b5c1ec4a3095ab096dd780e84d7ab81f3d7ff)"}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"frame-pointer", i32 2}
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.mustprogress"}
