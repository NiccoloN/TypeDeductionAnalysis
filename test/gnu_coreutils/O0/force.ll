; ModuleID = 'llvm-link'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.link_arg = type { i32, ptr, i32, i32 }
%struct.symlink_arg = type { ptr, i32 }

@simple_pattern = internal constant [9 x i8] c"CuXXXXXX\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @force_linkat(i32 noundef %srcdir, ptr noundef nonnull %srcname, i32 noundef %dstdir, ptr noundef nonnull %dstname, i32 noundef %flags, i1 noundef zeroext %force, i32 noundef %linkat_errno) #0 {
entry:
  %retval = alloca i32, align 4
  %srcdir.addr = alloca i32, align 4
  %srcname.addr = alloca ptr, align 8
  %dstdir.addr = alloca i32, align 4
  %dstname.addr = alloca ptr, align 8
  %flags.addr = alloca i32, align 4
  %force.addr = alloca i8, align 1
  %linkat_errno.addr = alloca i32, align 4
  %buf = alloca [256 x i8], align 16
  %dsttmp = alloca ptr, align 8
  %arg = alloca %struct.link_arg, align 8
  %err = alloca i32, align 4
  store i32 %srcdir, ptr %srcdir.addr, align 4
  store ptr %srcname, ptr %srcname.addr, align 8
  store i32 %dstdir, ptr %dstdir.addr, align 4
  store ptr %dstname, ptr %dstname.addr, align 8
  store i32 %flags, ptr %flags.addr, align 4
  %frombool = zext i1 %force to i8
  store i8 %frombool, ptr %force.addr, align 1
  store i32 %linkat_errno, ptr %linkat_errno.addr, align 4
  %0 = load i32, ptr %linkat_errno.addr, align 4
  %cmp = icmp slt i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i32, ptr %srcdir.addr, align 4
  %2 = load ptr, ptr %srcname.addr, align 8
  %3 = load i32, ptr %dstdir.addr, align 4
  %4 = load ptr, ptr %dstname.addr, align 8
  %5 = load i32, ptr %flags.addr, align 4
  %call = call i32 @linkat(i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, i32 noundef %5) #7
  %cmp1 = icmp eq i32 %call, 0
  br i1 %cmp1, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then
  br label %cond.end

cond.false:                                       ; preds = %if.then
  %call2 = call ptr @__errno_location() #8
  %6 = load i32, ptr %call2, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %6, %cond.false ]
  store i32 %cond, ptr %linkat_errno.addr, align 4
  br label %if.end

if.end:                                           ; preds = %cond.end, %entry
  %7 = load i8, ptr %force.addr, align 1
  %tobool = trunc i8 %7 to i1
  br i1 %tobool, label %lor.lhs.false, label %if.then4

lor.lhs.false:                                    ; preds = %if.end
  %8 = load i32, ptr %linkat_errno.addr, align 4
  %cmp3 = icmp ne i32 %8, 17
  br i1 %cmp3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %lor.lhs.false, %if.end
  %9 = load i32, ptr %linkat_errno.addr, align 4
  store i32 %9, ptr %retval, align 4
  br label %return

if.end5:                                          ; preds = %lor.lhs.false
  %10 = load ptr, ptr %dstname.addr, align 8
  %arraydecay = getelementptr inbounds [256 x i8], ptr %buf, i64 0, i64 0
  %call6 = call ptr @samedir_template(ptr noundef %10, ptr noundef %arraydecay)
  store ptr %call6, ptr %dsttmp, align 8
  %11 = load ptr, ptr %dsttmp, align 8
  %tobool7 = icmp ne ptr %11, null
  br i1 %tobool7, label %if.end10, label %if.then8

if.then8:                                         ; preds = %if.end5
  %call9 = call ptr @__errno_location() #8
  %12 = load i32, ptr %call9, align 4
  store i32 %12, ptr %retval, align 4
  br label %return

if.end10:                                         ; preds = %if.end5
  %srcdir11 = getelementptr inbounds %struct.link_arg, ptr %arg, i32 0, i32 0
  %13 = load i32, ptr %srcdir.addr, align 4
  store i32 %13, ptr %srcdir11, align 8
  %srcname12 = getelementptr inbounds %struct.link_arg, ptr %arg, i32 0, i32 1
  %14 = load ptr, ptr %srcname.addr, align 8
  store ptr %14, ptr %srcname12, align 8
  %dstdir13 = getelementptr inbounds %struct.link_arg, ptr %arg, i32 0, i32 2
  %15 = load i32, ptr %dstdir.addr, align 4
  store i32 %15, ptr %dstdir13, align 8
  %flags14 = getelementptr inbounds %struct.link_arg, ptr %arg, i32 0, i32 3
  %16 = load i32, ptr %flags.addr, align 4
  store i32 %16, ptr %flags14, align 4
  %17 = load ptr, ptr %dsttmp, align 8
  %call15 = call i32 @try_tempname_len(ptr noundef %17, i32 noundef 0, ptr noundef %arg, ptr noundef @try_link, i64 noundef 6)
  %cmp16 = icmp ne i32 %call15, 0
  br i1 %cmp16, label %if.then17, label %if.else

if.then17:                                        ; preds = %if.end10
  %call18 = call ptr @__errno_location() #8
  %18 = load i32, ptr %call18, align 4
  store i32 %18, ptr %err, align 4
  br label %if.end27

if.else:                                          ; preds = %if.end10
  %19 = load i32, ptr %dstdir.addr, align 4
  %20 = load ptr, ptr %dsttmp, align 8
  %21 = load i32, ptr %dstdir.addr, align 4
  %22 = load ptr, ptr %dstname.addr, align 8
  %call19 = call i32 @renameat(i32 noundef %19, ptr noundef %20, i32 noundef %21, ptr noundef %22) #7
  %cmp20 = icmp eq i32 %call19, 0
  br i1 %cmp20, label %cond.true21, label %cond.false22

cond.true21:                                      ; preds = %if.else
  br label %cond.end24

cond.false22:                                     ; preds = %if.else
  %call23 = call ptr @__errno_location() #8
  %23 = load i32, ptr %call23, align 4
  br label %cond.end24

cond.end24:                                       ; preds = %cond.false22, %cond.true21
  %cond25 = phi i32 [ -1, %cond.true21 ], [ %23, %cond.false22 ]
  store i32 %cond25, ptr %err, align 4
  %24 = load i32, ptr %dstdir.addr, align 4
  %25 = load ptr, ptr %dsttmp, align 8
  %call26 = call i32 @unlinkat(i32 noundef %24, ptr noundef %25, i32 noundef 0) #7
  br label %if.end27

if.end27:                                         ; preds = %cond.end24, %if.then17
  %26 = load ptr, ptr %dsttmp, align 8
  %arraydecay28 = getelementptr inbounds [256 x i8], ptr %buf, i64 0, i64 0
  %cmp29 = icmp ne ptr %26, %arraydecay28
  br i1 %cmp29, label %if.then30, label %if.end31

if.then30:                                        ; preds = %if.end27
  %27 = load ptr, ptr %dsttmp, align 8
  call void @free(ptr noundef %27) #7
  br label %if.end31

if.end31:                                         ; preds = %if.then30, %if.end27
  %28 = load i32, ptr %err, align 4
  store i32 %28, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end31, %if.then8, %if.then4
  %29 = load i32, ptr %retval, align 4
  ret i32 %29
}

; Function Attrs: nounwind
declare i32 @linkat(i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) #1

; Function Attrs: nounwind willreturn memory(none)
declare ptr @__errno_location() #2

; Function Attrs: noinline nounwind optnone uwtable
define internal ptr @samedir_template(ptr noundef %dstname, ptr noundef %buf) #0 {
entry:
  %retval = alloca ptr, align 8
  %dstname.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %dstdirlen = alloca i64, align 8
  %dsttmpsize = alloca i64, align 8
  %dsttmp = alloca ptr, align 8
  store ptr %dstname, ptr %dstname.addr, align 8
  store ptr %buf, ptr %buf.addr, align 8
  %0 = load ptr, ptr %dstname.addr, align 8
  %call = call ptr @last_component(ptr noundef %0) #9
  %1 = load ptr, ptr %dstname.addr, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %call to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %1 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  store i64 %sub.ptr.sub, ptr %dstdirlen, align 8
  %2 = load i64, ptr %dstdirlen, align 8
  %add = add i64 %2, 9
  store i64 %add, ptr %dsttmpsize, align 8
  %3 = load i64, ptr %dsttmpsize, align 8
  %cmp = icmp ule i64 %3, 256
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %4 = load ptr, ptr %buf.addr, align 8
  store ptr %4, ptr %dsttmp, align 8
  br label %if.end3

if.else:                                          ; preds = %entry
  %5 = load i64, ptr %dsttmpsize, align 8
  %call1 = call noalias ptr @malloc(i64 noundef %5) #10
  store ptr %call1, ptr %dsttmp, align 8
  %6 = load ptr, ptr %dsttmp, align 8
  %tobool = icmp ne ptr %6, null
  br i1 %tobool, label %if.end, label %if.then2

if.then2:                                         ; preds = %if.else
  %7 = load ptr, ptr %dsttmp, align 8
  store ptr %7, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %if.else
  br label %if.end3

if.end3:                                          ; preds = %if.end, %if.then
  %8 = load ptr, ptr %dsttmp, align 8
  %9 = load ptr, ptr %dstname.addr, align 8
  %10 = load i64, ptr %dstdirlen, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %8, ptr align 1 %9, i64 %10, i1 false)
  %11 = getelementptr inbounds i8, ptr %8, i64 %10
  %call4 = call ptr @strcpy(ptr noundef %11, ptr noundef @simple_pattern) #7
  %12 = load ptr, ptr %dsttmp, align 8
  store ptr %12, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end3, %if.then2
  %13 = load ptr, ptr %retval, align 8
  ret ptr %13
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @try_link(ptr noundef %dest, ptr noundef %arg) #0 {
entry:
  %dest.addr = alloca ptr, align 8
  %arg.addr = alloca ptr, align 8
  %a = alloca ptr, align 8
  store ptr %dest, ptr %dest.addr, align 8
  store ptr %arg, ptr %arg.addr, align 8
  %0 = load ptr, ptr %arg.addr, align 8
  store ptr %0, ptr %a, align 8
  %1 = load ptr, ptr %a, align 8
  %srcdir = getelementptr inbounds %struct.link_arg, ptr %1, i32 0, i32 0
  %2 = load i32, ptr %srcdir, align 8
  %3 = load ptr, ptr %a, align 8
  %srcname = getelementptr inbounds %struct.link_arg, ptr %3, i32 0, i32 1
  %4 = load ptr, ptr %srcname, align 8
  %5 = load ptr, ptr %a, align 8
  %dstdir = getelementptr inbounds %struct.link_arg, ptr %5, i32 0, i32 2
  %6 = load i32, ptr %dstdir, align 8
  %7 = load ptr, ptr %dest.addr, align 8
  %8 = load ptr, ptr %a, align 8
  %flags = getelementptr inbounds %struct.link_arg, ptr %8, i32 0, i32 3
  %9 = load i32, ptr %flags, align 4
  %call = call i32 @linkat(i32 noundef %2, ptr noundef %4, i32 noundef %6, ptr noundef %7, i32 noundef %9) #7
  ret i32 %call
}

declare i32 @try_tempname_len(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i64 noundef) #3

; Function Attrs: nounwind
declare i32 @renameat(i32 noundef, ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: nounwind
declare i32 @unlinkat(i32 noundef, ptr noundef, i32 noundef) #1

; Function Attrs: nounwind
declare void @free(ptr noundef) #1

; Function Attrs: nounwind willreturn memory(read)
declare ptr @last_component(ptr noundef) #4

; Function Attrs: nounwind allocsize(0)
declare noalias ptr @malloc(i64 noundef) #5

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #6

; Function Attrs: nounwind
declare ptr @strcpy(ptr noundef, ptr noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @force_symlinkat(ptr noundef nonnull %srcname, i32 noundef %dstdir, ptr noundef nonnull %dstname, i1 noundef zeroext %force, i32 noundef %symlinkat_errno) #0 {
entry:
  %retval = alloca i32, align 4
  %srcname.addr = alloca ptr, align 8
  %dstdir.addr = alloca i32, align 4
  %dstname.addr = alloca ptr, align 8
  %force.addr = alloca i8, align 1
  %symlinkat_errno.addr = alloca i32, align 4
  %buf = alloca [256 x i8], align 16
  %dsttmp = alloca ptr, align 8
  %arg = alloca %struct.symlink_arg, align 8
  %err = alloca i32, align 4
  store ptr %srcname, ptr %srcname.addr, align 8
  store i32 %dstdir, ptr %dstdir.addr, align 4
  store ptr %dstname, ptr %dstname.addr, align 8
  %frombool = zext i1 %force to i8
  store i8 %frombool, ptr %force.addr, align 1
  store i32 %symlinkat_errno, ptr %symlinkat_errno.addr, align 4
  %0 = load i32, ptr %symlinkat_errno.addr, align 4
  %cmp = icmp slt i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %srcname.addr, align 8
  %2 = load i32, ptr %dstdir.addr, align 4
  %3 = load ptr, ptr %dstname.addr, align 8
  %call = call i32 @symlinkat(ptr noundef %1, i32 noundef %2, ptr noundef %3) #7
  %cmp1 = icmp eq i32 %call, 0
  br i1 %cmp1, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then
  br label %cond.end

cond.false:                                       ; preds = %if.then
  %call2 = call ptr @__errno_location() #8
  %4 = load i32, ptr %call2, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %4, %cond.false ]
  store i32 %cond, ptr %symlinkat_errno.addr, align 4
  br label %if.end

if.end:                                           ; preds = %cond.end, %entry
  %5 = load i8, ptr %force.addr, align 1
  %tobool = trunc i8 %5 to i1
  br i1 %tobool, label %lor.lhs.false, label %if.then4

lor.lhs.false:                                    ; preds = %if.end
  %6 = load i32, ptr %symlinkat_errno.addr, align 4
  %cmp3 = icmp ne i32 %6, 17
  br i1 %cmp3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %lor.lhs.false, %if.end
  %7 = load i32, ptr %symlinkat_errno.addr, align 4
  store i32 %7, ptr %retval, align 4
  br label %return

if.end5:                                          ; preds = %lor.lhs.false
  %8 = load ptr, ptr %dstname.addr, align 8
  %arraydecay = getelementptr inbounds [256 x i8], ptr %buf, i64 0, i64 0
  %call6 = call ptr @samedir_template(ptr noundef %8, ptr noundef %arraydecay)
  store ptr %call6, ptr %dsttmp, align 8
  %9 = load ptr, ptr %dsttmp, align 8
  %tobool7 = icmp ne ptr %9, null
  br i1 %tobool7, label %if.end10, label %if.then8

if.then8:                                         ; preds = %if.end5
  %call9 = call ptr @__errno_location() #8
  %10 = load i32, ptr %call9, align 4
  store i32 %10, ptr %retval, align 4
  br label %return

if.end10:                                         ; preds = %if.end5
  %srcname11 = getelementptr inbounds %struct.symlink_arg, ptr %arg, i32 0, i32 0
  %11 = load ptr, ptr %srcname.addr, align 8
  store ptr %11, ptr %srcname11, align 8
  %dstdir12 = getelementptr inbounds %struct.symlink_arg, ptr %arg, i32 0, i32 1
  %12 = load i32, ptr %dstdir.addr, align 4
  store i32 %12, ptr %dstdir12, align 8
  %13 = load ptr, ptr %dsttmp, align 8
  %call13 = call i32 @try_tempname_len(ptr noundef %13, i32 noundef 0, ptr noundef %arg, ptr noundef @try_symlink, i64 noundef 6)
  %cmp14 = icmp ne i32 %call13, 0
  br i1 %cmp14, label %if.then15, label %if.else

if.then15:                                        ; preds = %if.end10
  %call16 = call ptr @__errno_location() #8
  %14 = load i32, ptr %call16, align 4
  store i32 %14, ptr %err, align 4
  br label %if.end24

if.else:                                          ; preds = %if.end10
  %15 = load i32, ptr %dstdir.addr, align 4
  %16 = load ptr, ptr %dsttmp, align 8
  %17 = load i32, ptr %dstdir.addr, align 4
  %18 = load ptr, ptr %dstname.addr, align 8
  %call17 = call i32 @renameat(i32 noundef %15, ptr noundef %16, i32 noundef %17, ptr noundef %18) #7
  %cmp18 = icmp ne i32 %call17, 0
  br i1 %cmp18, label %if.then19, label %if.else22

if.then19:                                        ; preds = %if.else
  %call20 = call ptr @__errno_location() #8
  %19 = load i32, ptr %call20, align 4
  store i32 %19, ptr %err, align 4
  %20 = load i32, ptr %dstdir.addr, align 4
  %21 = load ptr, ptr %dsttmp, align 8
  %call21 = call i32 @unlinkat(i32 noundef %20, ptr noundef %21, i32 noundef 0) #7
  br label %if.end23

if.else22:                                        ; preds = %if.else
  store i32 -1, ptr %err, align 4
  br label %if.end23

if.end23:                                         ; preds = %if.else22, %if.then19
  br label %if.end24

if.end24:                                         ; preds = %if.end23, %if.then15
  %22 = load ptr, ptr %dsttmp, align 8
  %arraydecay25 = getelementptr inbounds [256 x i8], ptr %buf, i64 0, i64 0
  %cmp26 = icmp ne ptr %22, %arraydecay25
  br i1 %cmp26, label %if.then27, label %if.end28

if.then27:                                        ; preds = %if.end24
  %23 = load ptr, ptr %dsttmp, align 8
  call void @free(ptr noundef %23) #7
  br label %if.end28

if.end28:                                         ; preds = %if.then27, %if.end24
  %24 = load i32, ptr %err, align 4
  store i32 %24, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end28, %if.then8, %if.then4
  %25 = load i32, ptr %retval, align 4
  ret i32 %25
}

; Function Attrs: nounwind
declare i32 @symlinkat(ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @try_symlink(ptr noundef %dest, ptr noundef %arg) #0 {
entry:
  %dest.addr = alloca ptr, align 8
  %arg.addr = alloca ptr, align 8
  %a = alloca ptr, align 8
  store ptr %dest, ptr %dest.addr, align 8
  store ptr %arg, ptr %arg.addr, align 8
  %0 = load ptr, ptr %arg.addr, align 8
  store ptr %0, ptr %a, align 8
  %1 = load ptr, ptr %a, align 8
  %srcname = getelementptr inbounds %struct.symlink_arg, ptr %1, i32 0, i32 0
  %2 = load ptr, ptr %srcname, align 8
  %3 = load ptr, ptr %a, align 8
  %dstdir = getelementptr inbounds %struct.symlink_arg, ptr %3, i32 0, i32 1
  %4 = load i32, ptr %dstdir, align 8
  %5 = load ptr, ptr %dest.addr, align 8
  %call = call i32 @symlinkat(ptr noundef %2, i32 noundef %4, ptr noundef %5) #7
  ret i32 %call
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind willreturn memory(none) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind willreturn memory(read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { nounwind }
attributes #8 = { nounwind willreturn memory(none) }
attributes #9 = { nounwind willreturn memory(read) }
attributes #10 = { nounwind allocsize(0) }

!llvm.ident = !{!0}
!llvm.module.flags = !{!1, !2, !3, !4, !5}

!0 = !{!"clang version 18.1.8 (https://github.com/llvm/llvm-project.git 3b5b5c1ec4a3095ab096dd780e84d7ab81f3d7ff)"}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"frame-pointer", i32 2}
