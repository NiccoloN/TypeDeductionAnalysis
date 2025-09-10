; ModuleID = 'llvm-link'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @stdbuf, ptr null }]
@.str = private unnamed_addr constant [10 x i8] c"_STDBUF_E\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"_STDBUF_I\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"_STDBUF_O\00", align 1
@stderr = external global ptr, align 8
@stdin = external global ptr, align 8
@stdout = external global ptr, align 8
@.str.3 = private unnamed_addr constant [34 x i8] c"invalid buffering mode %s for %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [44 x i8] c"failed to allocate a %ju byte stdio buffer\0A\00", align 1
@.str.5 = private unnamed_addr constant [42 x i8] c"could not set buffering of %s to mode %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"stdin\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"stdout\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"stderr\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stdbuf() #0 {
entry:
  %e_mode = alloca ptr, align 8
  %i_mode = alloca ptr, align 8
  %o_mode = alloca ptr, align 8
  %call = call ptr @getenv(ptr noundef @.str) #4
  store ptr %call, ptr %e_mode, align 8
  %call1 = call ptr @getenv(ptr noundef @.str.1) #4
  store ptr %call1, ptr %i_mode, align 8
  %call2 = call ptr @getenv(ptr noundef @.str.2) #4
  store ptr %call2, ptr %o_mode, align 8
  %0 = load ptr, ptr %e_mode, align 8
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr @stderr, align 8
  %2 = load ptr, ptr %e_mode, align 8
  call void @apply_mode(ptr noundef %1, ptr noundef %2)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load ptr, ptr %i_mode, align 8
  %tobool3 = icmp ne ptr %3, null
  br i1 %tobool3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  %4 = load ptr, ptr @stdin, align 8
  %5 = load ptr, ptr %i_mode, align 8
  call void @apply_mode(ptr noundef %4, ptr noundef %5)
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %if.end
  %6 = load ptr, ptr %o_mode, align 8
  %tobool6 = icmp ne ptr %6, null
  br i1 %tobool6, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.end5
  %7 = load ptr, ptr @stdout, align 8
  %8 = load ptr, ptr %o_mode, align 8
  call void @apply_mode(ptr noundef %7, ptr noundef %8)
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %if.end5
  ret void
}

; Function Attrs: nounwind
declare ptr @getenv(ptr noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal void @apply_mode(ptr noundef %stream, ptr noundef %mode) #0 {
entry:
  %stream.addr = alloca ptr, align 8
  %mode.addr = alloca ptr, align 8
  %buf = alloca ptr, align 8
  %setvbuf_mode = alloca i32, align 4
  %size = alloca i64, align 8
  %mode_end = alloca ptr, align 8
  store ptr %stream, ptr %stream.addr, align 8
  store ptr %mode, ptr %mode.addr, align 8
  store ptr null, ptr %buf, align 8
  store i64 0, ptr %size, align 8
  %0 = load ptr, ptr %mode.addr, align 8
  %1 = load i8, ptr %0, align 1
  %conv = sext i8 %1 to i32
  %cmp = icmp eq i32 %conv, 48
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 2, ptr %setvbuf_mode, align 4
  br label %if.end24

if.else:                                          ; preds = %entry
  %2 = load ptr, ptr %mode.addr, align 8
  %3 = load i8, ptr %2, align 1
  %conv2 = sext i8 %3 to i32
  %cmp3 = icmp eq i32 %conv2, 76
  br i1 %cmp3, label %if.then5, label %if.else6

if.then5:                                         ; preds = %if.else
  store i32 1, ptr %setvbuf_mode, align 4
  br label %if.end23

if.else6:                                         ; preds = %if.else
  store i32 0, ptr %setvbuf_mode, align 4
  %4 = load ptr, ptr %mode.addr, align 8
  %call = call i64 @__isoc23_strtoumax(ptr noundef %4, ptr noundef %mode_end, i32 noundef 10) #4
  store i64 %call, ptr %size, align 8
  %5 = load i64, ptr %size, align 8
  %cmp7 = icmp eq i64 %5, 0
  br i1 %cmp7, label %if.then10, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else6
  %6 = load ptr, ptr %mode_end, align 8
  %7 = load i8, ptr %6, align 1
  %conv9 = sext i8 %7 to i32
  %tobool = icmp ne i32 %conv9, 0
  br i1 %tobool, label %if.then10, label %if.end

if.then10:                                        ; preds = %lor.lhs.false, %if.else6
  %8 = load ptr, ptr @stderr, align 8
  %call11 = call ptr @gettext(ptr noundef @.str.3) #4
  %9 = load ptr, ptr %mode.addr, align 8
  %10 = load ptr, ptr %stream.addr, align 8
  %call12 = call i32 @fileno(ptr noundef %10) #4
  %call13 = call ptr @fileno_to_name(i32 noundef %call12)
  %call14 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %8, ptr noundef %call11, ptr noundef %9, ptr noundef %call13)
  br label %if.end33

if.end:                                           ; preds = %lor.lhs.false
  %11 = load i64, ptr %size, align 8
  %cmp15 = icmp ule i64 %11, -1
  br i1 %cmp15, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %12 = load i64, ptr %size, align 8
  %call17 = call noalias ptr @malloc(i64 noundef %12) #5
  br label %cond.end

cond.false:                                       ; preds = %if.end
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %call17, %cond.true ], [ null, %cond.false ]
  store ptr %cond, ptr %buf, align 8
  %13 = load ptr, ptr %buf, align 8
  %tobool18 = icmp ne ptr %13, null
  br i1 %tobool18, label %if.end22, label %if.then19

if.then19:                                        ; preds = %cond.end
  %14 = load ptr, ptr @stderr, align 8
  %call20 = call ptr @gettext(ptr noundef @.str.4) #4
  %15 = load i64, ptr %size, align 8
  %call21 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %14, ptr noundef %call20, i64 noundef %15)
  br label %if.end33

if.end22:                                         ; preds = %cond.end
  br label %if.end23

if.end23:                                         ; preds = %if.end22, %if.then5
  br label %if.end24

if.end24:                                         ; preds = %if.end23, %if.then
  %16 = load ptr, ptr %stream.addr, align 8
  %17 = load ptr, ptr %buf, align 8
  %18 = load i32, ptr %setvbuf_mode, align 4
  %19 = load i64, ptr %size, align 8
  %call25 = call i32 @setvbuf(ptr noundef %16, ptr noundef %17, i32 noundef %18, i64 noundef %19) #4
  %cmp26 = icmp ne i32 %call25, 0
  br i1 %cmp26, label %if.then28, label %if.end33

if.then28:                                        ; preds = %if.end24
  %20 = load ptr, ptr @stderr, align 8
  %call29 = call ptr @gettext(ptr noundef @.str.5) #4
  %21 = load ptr, ptr %stream.addr, align 8
  %call30 = call i32 @fileno(ptr noundef %21) #4
  %call31 = call ptr @fileno_to_name(i32 noundef %call30)
  %22 = load ptr, ptr %mode.addr, align 8
  %call32 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %20, ptr noundef %call29, ptr noundef %call31, ptr noundef %22)
  %23 = load ptr, ptr %buf, align 8
  call void @free(ptr noundef %23) #4
  br label %if.end33

if.end33:                                         ; preds = %if.then28, %if.end24, %if.then19, %if.then10
  ret void
}

; Function Attrs: nounwind
declare i64 @__isoc23_strtoumax(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: nounwind
declare ptr @gettext(ptr noundef) #1

; Function Attrs: nounwind
declare i32 @fileno(ptr noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal ptr @fileno_to_name(i32 noundef %fd) #0 {
entry:
  %fd.addr = alloca i32, align 4
  %ret = alloca ptr, align 8
  store i32 %fd, ptr %fd.addr, align 4
  store ptr null, ptr %ret, align 8
  %0 = load i32, ptr %fd.addr, align 4
  switch i32 %0, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb1
    i32 2, label %sw.bb2
  ]

sw.bb:                                            ; preds = %entry
  store ptr @.str.6, ptr %ret, align 8
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  store ptr @.str.7, ptr %ret, align 8
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  store ptr @.str.8, ptr %ret, align 8
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  store ptr @.str.9, ptr %ret, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb2, %sw.bb1, %sw.bb
  %1 = load ptr, ptr %ret, align 8
  ret ptr %1
}

declare i32 @fprintf(ptr noundef, ptr noundef, ...) #2

; Function Attrs: nounwind allocsize(0)
declare noalias ptr @malloc(i64 noundef) #3

; Function Attrs: nounwind
declare i32 @setvbuf(ptr noundef, ptr noundef, i32 noundef, i64 noundef) #1

; Function Attrs: nounwind
declare void @free(ptr noundef) #1

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }
attributes #5 = { nounwind allocsize(0) }

!llvm.ident = !{!0}
!llvm.module.flags = !{!1, !2, !3, !4}

!0 = !{!"clang version 18.1.8 (https://github.com/llvm/llvm-project.git 3b5b5c1ec4a3095ab096dd780e84d7ab81f3d7ff)"}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
