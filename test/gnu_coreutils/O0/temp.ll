; ModuleID = 'llvm-link'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@temp_stream.tempfile = internal global ptr null, align 8
@temp_stream.tmp_fp = internal global ptr null, align 8
@.str = private unnamed_addr constant [35 x i8] c"failed to make temporary file name\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"cutmp\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"failed to create temporary file %s\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"w+\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"failed to open %s for writing\00", align 1
@.str.5 = private unnamed_addr constant [31 x i8] c"failed to rewind stream for %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local zeroext i1 @temp_stream(ptr noundef %fp, ptr noundef %file_name) #0 {
entry:
  %retval = alloca i1, align 1
  %fp.addr = alloca ptr, align 8
  %file_name.addr = alloca ptr, align 8
  %tempbuf = alloca ptr, align 8
  %tempbuf_len = alloca i64, align 8
  %fd = alloca i32, align 4
  store ptr %fp, ptr %fp.addr, align 8
  store ptr %file_name, ptr %file_name.addr, align 8
  %0 = load ptr, ptr @temp_stream.tempfile, align 8
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store ptr null, ptr %tempbuf, align 8
  store i64 128, ptr %tempbuf_len, align 8
  br label %while.body

while.body:                                       ; preds = %if.end16, %if.then
  %1 = load ptr, ptr %tempbuf, align 8
  %2 = load i64, ptr %tempbuf_len, align 8
  %call = call ptr @rpl_realloc(ptr noundef %1, i64 noundef %2)
  store ptr %call, ptr %tempbuf, align 8
  %tobool = icmp ne ptr %call, null
  br i1 %tobool, label %if.end, label %if.then1

if.then1:                                         ; preds = %while.body
  %call2 = call ptr @__errno_location() #5
  %3 = load i32, ptr %call2, align 4
  %call3 = call ptr @gettext(ptr noundef @.str) #6
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %3, ptr noundef %call3) #7
  store i1 false, ptr %retval, align 1
  br label %return

if.end:                                           ; preds = %while.body
  %4 = load ptr, ptr %tempbuf, align 8
  %5 = load i64, ptr %tempbuf_len, align 8
  %call4 = call i32 @path_search(ptr noundef %4, i64 noundef %5, ptr noundef null, ptr noundef @.str.1, i1 noundef zeroext true)
  %cmp5 = icmp eq i32 %call4, 0
  br i1 %cmp5, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.end
  br label %while.end

if.end7:                                          ; preds = %if.end
  %call8 = call ptr @__errno_location() #5
  %6 = load i32, ptr %call8, align 4
  %cmp9 = icmp ne i32 %6, 22
  br i1 %cmp9, label %if.then11, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end7
  %7 = load i64, ptr %tempbuf_len, align 8
  %cmp10 = icmp ult i64 2048, %7
  br i1 %cmp10, label %if.then11, label %if.end16

if.then11:                                        ; preds = %lor.lhs.false, %if.end7
  %call12 = call ptr @__errno_location() #5
  %8 = load i32, ptr %call12, align 4
  %cmp13 = icmp eq i32 %8, 22
  br i1 %cmp13, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then11
  br label %cond.end

cond.false:                                       ; preds = %if.then11
  %call14 = call ptr @__errno_location() #5
  %9 = load i32, ptr %call14, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 36, %cond.true ], [ %9, %cond.false ]
  %call15 = call ptr @gettext(ptr noundef @.str) #6
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %cond, ptr noundef %call15) #7
  store i1 false, ptr %retval, align 1
  br label %return

if.end16:                                         ; preds = %lor.lhs.false
  %10 = load i64, ptr %tempbuf_len, align 8
  %mul = mul i64 %10, 2
  store i64 %mul, ptr %tempbuf_len, align 8
  br label %while.body

while.end:                                        ; preds = %if.then6
  %11 = load ptr, ptr %tempbuf, align 8
  store ptr %11, ptr @temp_stream.tempfile, align 8
  %12 = load ptr, ptr @temp_stream.tempfile, align 8
  %call17 = call i32 @mkstemp_safer(ptr noundef %12)
  store i32 %call17, ptr %fd, align 4
  %13 = load i32, ptr %fd, align 4
  %cmp18 = icmp slt i32 %13, 0
  br i1 %cmp18, label %if.then19, label %if.end23

if.then19:                                        ; preds = %while.end
  %call20 = call ptr @__errno_location() #5
  %14 = load i32, ptr %call20, align 4
  %call21 = call ptr @gettext(ptr noundef @.str.2) #6
  %15 = load ptr, ptr @temp_stream.tempfile, align 8
  %call22 = call ptr @quotearg_style(i32 noundef 4, ptr noundef %15)
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %14, ptr noundef %call21, ptr noundef %call22) #7
  br label %Reset

if.end23:                                         ; preds = %while.end
  %16 = load i32, ptr %fd, align 4
  %call24 = call noalias ptr @fdopen(i32 noundef %16, ptr noundef @.str.3) #6
  store ptr %call24, ptr @temp_stream.tmp_fp, align 8
  %17 = load ptr, ptr @temp_stream.tmp_fp, align 8
  %tobool25 = icmp ne ptr %17, null
  br i1 %tobool25, label %if.end32, label %if.then26

if.then26:                                        ; preds = %if.end23
  %call27 = call ptr @__errno_location() #5
  %18 = load i32, ptr %call27, align 4
  %call28 = call ptr @gettext(ptr noundef @.str.4) #6
  %19 = load ptr, ptr @temp_stream.tempfile, align 8
  %call29 = call ptr @quotearg_style(i32 noundef 4, ptr noundef %19)
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %18, ptr noundef %call28, ptr noundef %call29) #7
  %20 = load i32, ptr %fd, align 4
  %call30 = call i32 @close(i32 noundef %20)
  %21 = load ptr, ptr @temp_stream.tempfile, align 8
  %call31 = call i32 @unlink(ptr noundef %21) #6
  br label %Reset

Reset:                                            ; preds = %if.then26, %if.then19
  %22 = load ptr, ptr @temp_stream.tempfile, align 8
  call void @free(ptr noundef %22) #6
  store ptr null, ptr @temp_stream.tempfile, align 8
  store i1 false, ptr %retval, align 1
  br label %return

if.end32:                                         ; preds = %if.end23
  %23 = load ptr, ptr @temp_stream.tempfile, align 8
  %24 = load ptr, ptr @temp_stream.tmp_fp, align 8
  call void @record_or_unlink_tempfile(ptr noundef %23, ptr noundef %24)
  br label %if.end44

if.else:                                          ; preds = %entry
  %25 = load ptr, ptr @temp_stream.tmp_fp, align 8
  call void @clearerr_unlocked(ptr noundef %25) #6
  %26 = load ptr, ptr @temp_stream.tmp_fp, align 8
  %call33 = call i32 @rpl_fseeko(ptr noundef %26, i64 noundef 0, i32 noundef 0)
  %cmp34 = icmp slt i32 %call33, 0
  br i1 %cmp34, label %if.then39, label %lor.lhs.false35

lor.lhs.false35:                                  ; preds = %if.else
  %27 = load ptr, ptr @temp_stream.tmp_fp, align 8
  %call36 = call i32 @fileno(ptr noundef %27) #6
  %call37 = call i32 @ftruncate(i32 noundef %call36, i64 noundef 0) #6
  %cmp38 = icmp slt i32 %call37, 0
  br i1 %cmp38, label %if.then39, label %if.end43

if.then39:                                        ; preds = %lor.lhs.false35, %if.else
  %call40 = call ptr @__errno_location() #5
  %28 = load i32, ptr %call40, align 4
  %call41 = call ptr @gettext(ptr noundef @.str.5) #6
  %29 = load ptr, ptr @temp_stream.tempfile, align 8
  %call42 = call ptr @quotearg_style(i32 noundef 4, ptr noundef %29)
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %28, ptr noundef %call41, ptr noundef %call42) #7
  store i1 false, ptr %retval, align 1
  br label %return

if.end43:                                         ; preds = %lor.lhs.false35
  br label %if.end44

if.end44:                                         ; preds = %if.end43, %if.end32
  %30 = load ptr, ptr @temp_stream.tmp_fp, align 8
  %31 = load ptr, ptr %fp.addr, align 8
  store ptr %30, ptr %31, align 8
  %32 = load ptr, ptr %file_name.addr, align 8
  %tobool45 = icmp ne ptr %32, null
  br i1 %tobool45, label %if.then46, label %if.end47

if.then46:                                        ; preds = %if.end44
  %33 = load ptr, ptr @temp_stream.tempfile, align 8
  %34 = load ptr, ptr %file_name.addr, align 8
  store ptr %33, ptr %34, align 8
  br label %if.end47

if.end47:                                         ; preds = %if.then46, %if.end44
  store i1 true, ptr %retval, align 1
  br label %return

return:                                           ; preds = %if.end47, %if.then39, %Reset, %cond.end, %if.then1
  %35 = load i1, ptr %retval, align 1
  ret i1 %35
}

declare ptr @rpl_realloc(ptr noundef, i64 noundef) #1

; Function Attrs: nounwind willreturn memory(none)
declare ptr @__errno_location() #2

; Function Attrs: nounwind
declare ptr @gettext(ptr noundef) #3

; Function Attrs: cold
declare void @error(i32 noundef, i32 noundef, ptr noundef, ...) #4

declare i32 @path_search(ptr noundef, i64 noundef, ptr noundef, ptr noundef, i1 noundef zeroext) #1

declare i32 @mkstemp_safer(ptr noundef) #1

declare ptr @quotearg_style(i32 noundef, ptr noundef) #1

; Function Attrs: nounwind
declare noalias ptr @fdopen(i32 noundef, ptr noundef) #3

declare i32 @close(i32 noundef) #1

; Function Attrs: nounwind
declare i32 @unlink(ptr noundef) #3

; Function Attrs: nounwind
declare void @free(ptr noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define internal void @record_or_unlink_tempfile(ptr noundef %fn, ptr noundef %fp) #0 {
entry:
  %fn.addr = alloca ptr, align 8
  %fp.addr = alloca ptr, align 8
  store ptr %fn, ptr %fn.addr, align 8
  store ptr %fp, ptr %fp.addr, align 8
  %0 = load ptr, ptr %fn.addr, align 8
  %call = call i32 @unlink(ptr noundef %0) #6
  ret void
}

; Function Attrs: nounwind
declare void @clearerr_unlocked(ptr noundef) #3

declare i32 @rpl_fseeko(ptr noundef, i64 noundef, i32 noundef) #1

; Function Attrs: nounwind
declare i32 @fileno(ptr noundef) #3

; Function Attrs: nounwind
declare i32 @ftruncate(i32 noundef, i64 noundef) #3

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind willreturn memory(none) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind willreturn memory(none) }
attributes #6 = { nounwind }
attributes #7 = { cold }

!llvm.ident = !{!0}
!llvm.module.flags = !{!1, !2, !3, !4, !5}

!0 = !{!"clang version 18.1.8 (https://github.com/llvm/llvm-project.git 3b5b5c1ec4a3095ab096dd780e84d7ab81f3d7ff)"}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"frame-pointer", i32 2}
