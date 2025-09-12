; ModuleID = 'llvm-link'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.saved_cwd = type { i32, ptr }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }

@.str = private unnamed_addr constant [29 x i8] c"cannot get current directory\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"cannot change to directory %s\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.3 = private unnamed_addr constant [39 x i8] c"cannot stat current directory (now %s)\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"..\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"cannot stat %s\00", align 1
@.str.6 = private unnamed_addr constant [46 x i8] c"failed to return to initial working directory\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local noalias ptr @find_mount_point(ptr noundef nonnull %file, ptr noundef nonnull %file_stat) #0 {
entry:
  %retval = alloca ptr, align 8
  %file.addr = alloca ptr, align 8
  %file_stat.addr = alloca ptr, align 8
  %cwd = alloca %struct.saved_cwd, align 8
  %last_stat = alloca %struct.stat, align 8
  %mp = alloca ptr, align 8
  %xdir = alloca ptr, align 8
  %dir = alloca ptr, align 8
  %__old = alloca ptr, align 8
  %__len = alloca i64, align 8
  %__new = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %st = alloca %struct.stat, align 8
  %save_errno = alloca i32, align 4
  store ptr %file, ptr %file.addr, align 8
  store ptr %file_stat, ptr %file_stat.addr, align 8
  store ptr null, ptr %mp, align 8
  %call = call i32 @save_cwd(ptr noundef %cwd)
  %cmp = icmp ne i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call1 = call ptr @__errno_location() #7
  %0 = load i32, ptr %call1, align 4
  %call2 = call ptr @gettext(ptr noundef @.str) #8
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %0, ptr noundef %call2) #9
  store ptr null, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %file_stat.addr, align 8
  %st_mode = getelementptr inbounds %struct.stat, ptr %1, i32 0, i32 3
  %2 = load i32, ptr %st_mode, align 8
  %and = and i32 %2, 61440
  %cmp3 = icmp eq i32 %and, 16384
  br i1 %cmp3, label %if.then4, label %if.else

if.then4:                                         ; preds = %if.end
  %3 = load ptr, ptr %file_stat.addr, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %last_stat, ptr align 8 %3, i64 144, i1 false)
  %4 = load ptr, ptr %file.addr, align 8
  %call5 = call i32 @chdir(ptr noundef %4) #8
  %cmp6 = icmp slt i32 %call5, 0
  br i1 %cmp6, label %if.then7, label %if.end11

if.then7:                                         ; preds = %if.then4
  %call8 = call ptr @__errno_location() #7
  %5 = load i32, ptr %call8, align 4
  %call9 = call ptr @gettext(ptr noundef @.str.1) #8
  %6 = load ptr, ptr %file.addr, align 8
  %call10 = call ptr @quotearg_style(i32 noundef 4, ptr noundef %6)
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %5, ptr noundef %call9, ptr noundef %call10) #9
  store ptr null, ptr %retval, align 8
  br label %return

if.end11:                                         ; preds = %if.then4
  br label %if.end28

if.else:                                          ; preds = %if.end
  %7 = load ptr, ptr %file.addr, align 8
  %call12 = call noalias nonnull ptr @dir_name(ptr noundef %7)
  store ptr %call12, ptr %xdir, align 8
  br label %do.body

do.body:                                          ; preds = %if.else
  %8 = load ptr, ptr %xdir, align 8
  store ptr %8, ptr %__old, align 8
  %9 = load ptr, ptr %__old, align 8
  %call13 = call i64 @strlen(ptr noundef %9) #10
  %add = add i64 %call13, 1
  store i64 %add, ptr %__len, align 8
  %10 = load i64, ptr %__len, align 8
  %11 = alloca i8, i64 %10, align 16
  store ptr %11, ptr %__new, align 8
  %12 = load ptr, ptr %__new, align 8
  %13 = load ptr, ptr %__old, align 8
  %14 = load i64, ptr %__len, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %12, ptr align 1 %13, i64 %14, i1 false)
  store ptr %12, ptr %tmp, align 8
  %15 = load ptr, ptr %tmp, align 8
  store ptr %15, ptr %dir, align 8
  br label %do.end

do.end:                                           ; preds = %do.body
  %16 = load ptr, ptr %xdir, align 8
  call void @free(ptr noundef %16) #8
  %17 = load ptr, ptr %dir, align 8
  %call14 = call i32 @chdir(ptr noundef %17) #8
  %cmp15 = icmp slt i32 %call14, 0
  br i1 %cmp15, label %if.then16, label %if.end20

if.then16:                                        ; preds = %do.end
  %call17 = call ptr @__errno_location() #7
  %18 = load i32, ptr %call17, align 4
  %call18 = call ptr @gettext(ptr noundef @.str.1) #8
  %19 = load ptr, ptr %dir, align 8
  %call19 = call ptr @quotearg_style(i32 noundef 4, ptr noundef %19)
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %18, ptr noundef %call18, ptr noundef %call19) #9
  store ptr null, ptr %retval, align 8
  br label %return

if.end20:                                         ; preds = %do.end
  %call21 = call i32 @stat(ptr noundef @.str.2, ptr noundef %last_stat) #8
  %cmp22 = icmp slt i32 %call21, 0
  br i1 %cmp22, label %if.then23, label %if.end27

if.then23:                                        ; preds = %if.end20
  %call24 = call ptr @__errno_location() #7
  %20 = load i32, ptr %call24, align 4
  %call25 = call ptr @gettext(ptr noundef @.str.3) #8
  %21 = load ptr, ptr %dir, align 8
  %call26 = call ptr @quotearg_style(i32 noundef 4, ptr noundef %21)
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %20, ptr noundef %call25, ptr noundef %call26) #9
  br label %done

if.end27:                                         ; preds = %if.end20
  br label %if.end28

if.end28:                                         ; preds = %if.end27, %if.end11
  br label %while.body

while.body:                                       ; preds = %if.end48, %if.end28
  %call29 = call i32 @stat(ptr noundef @.str.4, ptr noundef %st) #8
  %cmp30 = icmp slt i32 %call29, 0
  br i1 %cmp30, label %if.then31, label %if.end35

if.then31:                                        ; preds = %while.body
  %call32 = call ptr @__errno_location() #7
  %22 = load i32, ptr %call32, align 4
  %call33 = call ptr @gettext(ptr noundef @.str.5) #8
  %call34 = call ptr @quotearg_style(i32 noundef 4, ptr noundef @.str.4)
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %22, ptr noundef %call33, ptr noundef %call34) #9
  br label %done

if.end35:                                         ; preds = %while.body
  %st_dev = getelementptr inbounds %struct.stat, ptr %st, i32 0, i32 0
  %23 = load i64, ptr %st_dev, align 8
  %st_dev36 = getelementptr inbounds %struct.stat, ptr %last_stat, i32 0, i32 0
  %24 = load i64, ptr %st_dev36, align 8
  %cmp37 = icmp ne i64 %23, %24
  br i1 %cmp37, label %if.then40, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end35
  %st_ino = getelementptr inbounds %struct.stat, ptr %st, i32 0, i32 1
  %25 = load i64, ptr %st_ino, align 8
  %st_ino38 = getelementptr inbounds %struct.stat, ptr %last_stat, i32 0, i32 1
  %26 = load i64, ptr %st_ino38, align 8
  %cmp39 = icmp eq i64 %25, %26
  br i1 %cmp39, label %if.then40, label %if.end41

if.then40:                                        ; preds = %lor.lhs.false, %if.end35
  br label %while.end

if.end41:                                         ; preds = %lor.lhs.false
  %call42 = call i32 @chdir(ptr noundef @.str.4) #8
  %cmp43 = icmp slt i32 %call42, 0
  br i1 %cmp43, label %if.then44, label %if.end48

if.then44:                                        ; preds = %if.end41
  %call45 = call ptr @__errno_location() #7
  %27 = load i32, ptr %call45, align 4
  %call46 = call ptr @gettext(ptr noundef @.str.1) #8
  %call47 = call ptr @quotearg_style(i32 noundef 4, ptr noundef @.str.4)
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %27, ptr noundef %call46, ptr noundef %call47) #9
  br label %done

if.end48:                                         ; preds = %if.end41
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %last_stat, ptr align 8 %st, i64 144, i1 false)
  br label %while.body

while.end:                                        ; preds = %if.then40
  %call49 = call noalias ptr @xgetcwd()
  store ptr %call49, ptr %mp, align 8
  br label %done

done:                                             ; preds = %while.end, %if.then44, %if.then31, %if.then23
  %call50 = call ptr @__errno_location() #7
  %28 = load i32, ptr %call50, align 4
  store i32 %28, ptr %save_errno, align 4
  %call51 = call i32 @restore_cwd(ptr noundef %cwd)
  %cmp52 = icmp ne i32 %call51, 0
  br i1 %cmp52, label %if.then53, label %if.end56

if.then53:                                        ; preds = %done
  %call54 = call ptr @__errno_location() #7
  %29 = load i32, ptr %call54, align 4
  %call55 = call ptr @gettext(ptr noundef @.str.6) #8
  call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %29, ptr noundef %call55) #9
  unreachable

if.end56:                                         ; preds = %done
  call void @free_cwd(ptr noundef %cwd)
  %30 = load i32, ptr %save_errno, align 4
  %call57 = call ptr @__errno_location() #7
  store i32 %30, ptr %call57, align 4
  %31 = load ptr, ptr %mp, align 8
  store ptr %31, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end56, %if.then16, %if.then7, %if.then
  %32 = load ptr, ptr %retval, align 8
  ret ptr %32
}

declare i32 @save_cwd(ptr noundef) #1

; Function Attrs: nounwind willreturn memory(none)
declare ptr @__errno_location() #2

; Function Attrs: nounwind
declare ptr @gettext(ptr noundef) #3

; Function Attrs: cold
declare void @error(i32 noundef, i32 noundef, ptr noundef, ...) #4

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: nounwind
declare i32 @chdir(ptr noundef) #3

declare ptr @quotearg_style(i32 noundef, ptr noundef) #1

declare noalias nonnull ptr @dir_name(ptr noundef) #1

; Function Attrs: nounwind willreturn memory(read)
declare i64 @strlen(ptr noundef) #6

; Function Attrs: nounwind
declare void @free(ptr noundef) #3

; Function Attrs: nounwind
declare i32 @stat(ptr noundef, ptr noundef) #3

declare noalias ptr @xgetcwd() #1

declare i32 @restore_cwd(ptr noundef) #1

declare void @free_cwd(ptr noundef) #1

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind willreturn memory(none) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { nounwind willreturn memory(read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind willreturn memory(none) }
attributes #8 = { nounwind }
attributes #9 = { cold }
attributes #10 = { nounwind willreturn memory(read) }

!llvm.ident = !{!0}
!llvm.module.flags = !{!1, !2, !3, !4, !5}

!0 = !{!"clang version 18.1.8 (https://github.com/llvm/llvm-project.git 3b5b5c1ec4a3095ab096dd780e84d7ab81f3d7ff)"}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"frame-pointer", i32 2}
