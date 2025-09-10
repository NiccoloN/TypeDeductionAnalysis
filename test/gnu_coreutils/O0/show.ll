; ModuleID = 'llvm-link'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timespec = type { i64, i64 }
%struct.tm = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, ptr }

@stdout = external global ptr, align 8
@.str = private unnamed_addr constant [24 x i8] c"time %s is out of range\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local zeroext i1 @show_date(ptr noundef %format, i64 %when.coerce0, i64 %when.coerce1, ptr noundef %tz) #0 {
entry:
  %retval = alloca i1, align 1
  %when = alloca %struct.timespec, align 8
  %format.addr = alloca ptr, align 8
  %tz.addr = alloca ptr, align 8
  %tm = alloca %struct.tm, align 8
  %buf = alloca [21 x i8], align 16
  %0 = getelementptr inbounds { i64, i64 }, ptr %when, i32 0, i32 0
  store i64 %when.coerce0, ptr %0, align 8
  %1 = getelementptr inbounds { i64, i64 }, ptr %when, i32 0, i32 1
  store i64 %when.coerce1, ptr %1, align 8
  store ptr %format, ptr %format.addr, align 8
  store ptr %tz, ptr %tz.addr, align 8
  %2 = load ptr, ptr %tz.addr, align 8
  %tv_sec = getelementptr inbounds %struct.timespec, ptr %when, i32 0, i32 0
  %call = call ptr @localtime_rz(ptr noundef %2, ptr noundef %tv_sec, ptr noundef %tm)
  %tobool = icmp ne ptr %call, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr @stdout, align 8
  %4 = load ptr, ptr %format.addr, align 8
  %5 = load ptr, ptr %tz.addr, align 8
  %tv_nsec = getelementptr inbounds %struct.timespec, ptr %when, i32 0, i32 1
  %6 = load i64, ptr %tv_nsec, align 8
  %conv = trunc i64 %6 to i32
  %call1 = call i64 @fprintftime(ptr noundef %3, ptr noundef %4, ptr noundef %tm, ptr noundef %5, i32 noundef %conv)
  store i1 true, ptr %retval, align 1
  br label %return

if.else:                                          ; preds = %entry
  %call2 = call ptr @gettext(ptr noundef @.str) #4
  %tv_sec3 = getelementptr inbounds %struct.timespec, ptr %when, i32 0, i32 0
  %7 = load i64, ptr %tv_sec3, align 8
  %arraydecay = getelementptr inbounds [21 x i8], ptr %buf, i64 0, i64 0
  %call4 = call ptr @timetostr(i64 noundef %7, ptr noundef %arraydecay)
  %call5 = call ptr @quote(ptr noundef %call4)
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %call2, ptr noundef %call5) #5
  store i1 false, ptr %retval, align 1
  br label %return

return:                                           ; preds = %if.else, %if.then
  %8 = load i1, ptr %retval, align 1
  ret i1 %8
}

declare ptr @localtime_rz(ptr noundef, ptr noundef, ptr noundef) #1

declare i64 @fprintftime(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: nounwind
declare ptr @gettext(ptr noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal ptr @timetostr(i64 noundef %t, ptr noundef %buf) #0 {
entry:
  %t.addr = alloca i64, align 8
  %buf.addr = alloca ptr, align 8
  store i64 %t, ptr %t.addr, align 8
  store ptr %buf, ptr %buf.addr, align 8
  %0 = load i64, ptr %t.addr, align 8
  %1 = load ptr, ptr %buf.addr, align 8
  %call = call ptr @imaxtostr(i64 noundef %0, ptr noundef %1)
  ret ptr %call
}

declare ptr @quote(ptr noundef) #1

; Function Attrs: cold
declare void @error(i32 noundef, i32 noundef, ptr noundef, ...) #3

declare ptr @imaxtostr(i64 noundef, ptr noundef) #1

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { cold "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }
attributes #5 = { cold }

!llvm.ident = !{!0}
!llvm.module.flags = !{!1, !2, !3, !4, !5}

!0 = !{!"clang version 18.1.8 (https://github.com/llvm/llvm-project.git 3b5b5c1ec4a3095ab096dd780e84d7ab81f3d7ff)"}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"frame-pointer", i32 2}
