; ModuleID = 'llvm-link'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.passwd = type { ptr, ptr, i32, i32, ptr, ptr, ptr }
%struct.group = type { ptr, ptr, i32, ptr }

@.str = private unnamed_addr constant [33 x i8] c"failed to get groups for user %s\00", align 1
@.str.1 = private unnamed_addr constant [45 x i8] c"failed to get groups for the current process\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"cannot find name for group ID %ju\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"%ju\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local zeroext i1 @print_group_list(ptr noundef %username, i32 noundef %ruid, i32 noundef %rgid, i32 noundef %egid, i1 noundef zeroext %use_names, i8 noundef signext %delim) #0 {
entry:
  %retval = alloca i1, align 1
  %username.addr = alloca ptr, align 8
  %ruid.addr = alloca i32, align 4
  %rgid.addr = alloca i32, align 4
  %egid.addr = alloca i32, align 4
  %use_names.addr = alloca i8, align 1
  %delim.addr = alloca i8, align 1
  %ok = alloca i8, align 1
  %pwd = alloca ptr, align 8
  %groups = alloca ptr, align 8
  %n_groups = alloca i32, align 4
  %i = alloca i32, align 4
  store ptr %username, ptr %username.addr, align 8
  store i32 %ruid, ptr %ruid.addr, align 4
  store i32 %rgid, ptr %rgid.addr, align 4
  store i32 %egid, ptr %egid.addr, align 4
  %frombool = zext i1 %use_names to i8
  store i8 %frombool, ptr %use_names.addr, align 1
  store i8 %delim, ptr %delim.addr, align 1
  store i8 1, ptr %ok, align 1
  store ptr null, ptr %pwd, align 8
  %0 = load ptr, ptr %username.addr, align 8
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %if.then, label %if.end2

if.then:                                          ; preds = %entry
  %1 = load i32, ptr %ruid.addr, align 4
  %call = call ptr @getpwuid(i32 noundef %1)
  store ptr %call, ptr %pwd, align 8
  %2 = load ptr, ptr %pwd, align 8
  %cmp = icmp eq ptr %2, null
  br i1 %cmp, label %if.then1, label %if.end

if.then1:                                         ; preds = %if.then
  store i8 0, ptr %ok, align 1
  br label %if.end

if.end:                                           ; preds = %if.then1, %if.then
  br label %if.end2

if.end2:                                          ; preds = %if.end, %entry
  %3 = load i32, ptr %rgid.addr, align 4
  %4 = load i8, ptr %use_names.addr, align 1
  %tobool3 = trunc i8 %4 to i1
  %call4 = call zeroext i1 @print_group(i32 noundef %3, i1 noundef zeroext %tobool3)
  br i1 %call4, label %if.end6, label %if.then5

if.then5:                                         ; preds = %if.end2
  store i8 0, ptr %ok, align 1
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %if.end2
  %5 = load i32, ptr %egid.addr, align 4
  %6 = load i32, ptr %rgid.addr, align 4
  %cmp7 = icmp ne i32 %5, %6
  br i1 %cmp7, label %if.then8, label %if.end14

if.then8:                                         ; preds = %if.end6
  %7 = load i8, ptr %delim.addr, align 1
  %conv = sext i8 %7 to i32
  %call9 = call i32 @putchar_unlocked(i32 noundef %conv)
  %8 = load i32, ptr %egid.addr, align 4
  %9 = load i8, ptr %use_names.addr, align 1
  %tobool10 = trunc i8 %9 to i1
  %call11 = call zeroext i1 @print_group(i32 noundef %8, i1 noundef zeroext %tobool10)
  br i1 %call11, label %if.end13, label %if.then12

if.then12:                                        ; preds = %if.then8
  store i8 0, ptr %ok, align 1
  br label %if.end13

if.end13:                                         ; preds = %if.then12, %if.then8
  br label %if.end14

if.end14:                                         ; preds = %if.end13, %if.end6
  %10 = load ptr, ptr %username.addr, align 8
  %11 = load ptr, ptr %pwd, align 8
  %tobool15 = icmp ne ptr %11, null
  br i1 %tobool15, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end14
  %12 = load ptr, ptr %pwd, align 8
  %pw_gid = getelementptr inbounds %struct.passwd, ptr %12, i32 0, i32 3
  %13 = load i32, ptr %pw_gid, align 4
  br label %cond.end

cond.false:                                       ; preds = %if.end14
  %14 = load i32, ptr %egid.addr, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %13, %cond.true ], [ %14, %cond.false ]
  %call16 = call i32 @xgetgroups(ptr noundef %10, i32 noundef %cond, ptr noundef %groups)
  store i32 %call16, ptr %n_groups, align 4
  %15 = load i32, ptr %n_groups, align 4
  %cmp17 = icmp slt i32 %15, 0
  br i1 %cmp17, label %if.then19, label %if.end28

if.then19:                                        ; preds = %cond.end
  %16 = load ptr, ptr %username.addr, align 8
  %tobool20 = icmp ne ptr %16, null
  br i1 %tobool20, label %if.then21, label %if.else

if.then21:                                        ; preds = %if.then19
  %call22 = call ptr @__errno_location() #5
  %17 = load i32, ptr %call22, align 4
  %call23 = call ptr @gettext(ptr noundef @.str) #6
  %18 = load ptr, ptr %username.addr, align 8
  %call24 = call ptr @quote(ptr noundef %18)
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %17, ptr noundef %call23, ptr noundef %call24) #7
  br label %if.end27

if.else:                                          ; preds = %if.then19
  %call25 = call ptr @__errno_location() #5
  %19 = load i32, ptr %call25, align 4
  %call26 = call ptr @gettext(ptr noundef @.str.1) #6
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %19, ptr noundef %call26) #7
  br label %if.end27

if.end27:                                         ; preds = %if.else, %if.then21
  store i1 false, ptr %retval, align 1
  br label %return

if.end28:                                         ; preds = %cond.end
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end28
  %20 = load i32, ptr %i, align 4
  %21 = load i32, ptr %n_groups, align 4
  %cmp29 = icmp slt i32 %20, %21
  br i1 %cmp29, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %22 = load ptr, ptr %groups, align 8
  %23 = load i32, ptr %i, align 4
  %idxprom = sext i32 %23 to i64
  %arrayidx = getelementptr inbounds i32, ptr %22, i64 %idxprom
  %24 = load i32, ptr %arrayidx, align 4
  %25 = load i32, ptr %rgid.addr, align 4
  %cmp31 = icmp ne i32 %24, %25
  br i1 %cmp31, label %land.lhs.true, label %if.end46

land.lhs.true:                                    ; preds = %for.body
  %26 = load ptr, ptr %groups, align 8
  %27 = load i32, ptr %i, align 4
  %idxprom33 = sext i32 %27 to i64
  %arrayidx34 = getelementptr inbounds i32, ptr %26, i64 %idxprom33
  %28 = load i32, ptr %arrayidx34, align 4
  %29 = load i32, ptr %egid.addr, align 4
  %cmp35 = icmp ne i32 %28, %29
  br i1 %cmp35, label %if.then37, label %if.end46

if.then37:                                        ; preds = %land.lhs.true
  %30 = load i8, ptr %delim.addr, align 1
  %conv38 = sext i8 %30 to i32
  %call39 = call i32 @putchar_unlocked(i32 noundef %conv38)
  %31 = load ptr, ptr %groups, align 8
  %32 = load i32, ptr %i, align 4
  %idxprom40 = sext i32 %32 to i64
  %arrayidx41 = getelementptr inbounds i32, ptr %31, i64 %idxprom40
  %33 = load i32, ptr %arrayidx41, align 4
  %34 = load i8, ptr %use_names.addr, align 1
  %tobool42 = trunc i8 %34 to i1
  %call43 = call zeroext i1 @print_group(i32 noundef %33, i1 noundef zeroext %tobool42)
  br i1 %call43, label %if.end45, label %if.then44

if.then44:                                        ; preds = %if.then37
  store i8 0, ptr %ok, align 1
  br label %if.end45

if.end45:                                         ; preds = %if.then44, %if.then37
  br label %if.end46

if.end46:                                         ; preds = %if.end45, %land.lhs.true, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end46
  %35 = load i32, ptr %i, align 4
  %inc = add nsw i32 %35, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %36 = load ptr, ptr %groups, align 8
  call void @free(ptr noundef %36) #6
  %37 = load i8, ptr %ok, align 1
  %tobool47 = trunc i8 %37 to i1
  store i1 %tobool47, ptr %retval, align 1
  br label %return

return:                                           ; preds = %for.end, %if.end27
  %38 = load i1, ptr %retval, align 1
  ret i1 %38
}

declare ptr @getpwuid(i32 noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local zeroext i1 @print_group(i32 noundef %gid, i1 noundef zeroext %use_name) #0 {
entry:
  %gid.addr = alloca i32, align 4
  %use_name.addr = alloca i8, align 1
  %grp = alloca ptr, align 8
  %ok = alloca i8, align 1
  %g = alloca i64, align 8
  store i32 %gid, ptr %gid.addr, align 4
  %frombool = zext i1 %use_name to i8
  store i8 %frombool, ptr %use_name.addr, align 1
  store ptr null, ptr %grp, align 8
  store i8 1, ptr %ok, align 1
  %0 = load i8, ptr %use_name.addr, align 1
  %tobool = trunc i8 %0 to i1
  br i1 %tobool, label %if.then, label %if.end3

if.then:                                          ; preds = %entry
  %1 = load i32, ptr %gid.addr, align 4
  %call = call ptr @getgrgid(i32 noundef %1)
  store ptr %call, ptr %grp, align 8
  %2 = load ptr, ptr %grp, align 8
  %cmp = icmp eq ptr %2, null
  br i1 %cmp, label %if.then1, label %if.end

if.then1:                                         ; preds = %if.then
  %3 = load i32, ptr %gid.addr, align 4
  %conv = zext i32 %3 to i64
  store i64 %conv, ptr %g, align 8
  %call2 = call ptr @gettext(ptr noundef @.str.2) #6
  %4 = load i64, ptr %g, align 8
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %call2, i64 noundef %4) #7
  store i8 0, ptr %ok, align 1
  br label %if.end

if.end:                                           ; preds = %if.then1, %if.then
  br label %if.end3

if.end3:                                          ; preds = %if.end, %entry
  %5 = load ptr, ptr %grp, align 8
  %tobool4 = icmp ne ptr %5, null
  br i1 %tobool4, label %if.then5, label %if.else

if.then5:                                         ; preds = %if.end3
  %6 = load ptr, ptr %grp, align 8
  %gr_name = getelementptr inbounds %struct.group, ptr %6, i32 0, i32 0
  %7 = load ptr, ptr %gr_name, align 8
  %call6 = call i32 (ptr, ...) @printf(ptr noundef @.str.3, ptr noundef %7)
  br label %if.end9

if.else:                                          ; preds = %if.end3
  %8 = load i32, ptr %gid.addr, align 4
  %conv7 = zext i32 %8 to i64
  %call8 = call i32 (ptr, ...) @printf(ptr noundef @.str.4, i64 noundef %conv7)
  br label %if.end9

if.end9:                                          ; preds = %if.else, %if.then5
  %9 = load i8, ptr %ok, align 1
  %tobool10 = trunc i8 %9 to i1
  ret i1 %tobool10
}

declare i32 @putchar_unlocked(i32 noundef) #1

declare i32 @xgetgroups(ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: nounwind willreturn memory(none)
declare ptr @__errno_location() #2

; Function Attrs: nounwind
declare ptr @gettext(ptr noundef) #3

declare ptr @quote(ptr noundef) #1

; Function Attrs: cold
declare void @error(i32 noundef, i32 noundef, ptr noundef, ...) #4

; Function Attrs: nounwind
declare void @free(ptr noundef) #3

declare ptr @getgrgid(i32 noundef) #1

declare i32 @printf(ptr noundef, ...) #1

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
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.mustprogress"}
