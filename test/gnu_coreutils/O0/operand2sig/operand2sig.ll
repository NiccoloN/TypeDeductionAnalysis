; ModuleID = 'llvm-link'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [27 x i8] c"abcdefghijklmnopqrstuvwxyz\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"%s: invalid signal\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @operand2sig(ptr noundef nonnull %operand) #0 {
entry:
  %retval = alloca i32, align 4
  %operand.addr = alloca ptr, align 8
  %signum = alloca i32, align 4
  %endp = alloca ptr, align 8
  %l = alloca i64, align 8
  %i = alloca i32, align 4
  %upcased = alloca ptr, align 8
  %p = alloca ptr, align 8
  store ptr %operand, ptr %operand.addr, align 8
  %0 = load ptr, ptr %operand.addr, align 8
  %1 = load i8, ptr %0, align 1
  %conv = sext i8 %1 to i32
  %call = call zeroext i1 @c_isdigit(i32 noundef %conv)
  br i1 %call, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call1 = call ptr @__errno_location() #6
  store i32 0, ptr %call1, align 4
  %2 = load ptr, ptr %operand.addr, align 8
  %call2 = call i64 @__isoc23_strtol(ptr noundef %2, ptr noundef %endp, i32 noundef 10) #7
  store i64 %call2, ptr %l, align 8
  %3 = load i64, ptr %l, align 8
  %conv3 = trunc i64 %3 to i32
  store i32 %conv3, ptr %i, align 4
  %4 = load ptr, ptr %operand.addr, align 8
  %5 = load ptr, ptr %endp, align 8
  %cmp = icmp eq ptr %4, %5
  br i1 %cmp, label %cond.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then
  %6 = load ptr, ptr %endp, align 8
  %7 = load i8, ptr %6, align 1
  %conv5 = sext i8 %7 to i32
  %tobool = icmp ne i32 %conv5, 0
  br i1 %tobool, label %cond.true, label %lor.lhs.false6

lor.lhs.false6:                                   ; preds = %lor.lhs.false
  %call7 = call ptr @__errno_location() #6
  %8 = load i32, ptr %call7, align 4
  %tobool8 = icmp ne i32 %8, 0
  br i1 %tobool8, label %cond.true, label %lor.lhs.false9

lor.lhs.false9:                                   ; preds = %lor.lhs.false6
  %9 = load i32, ptr %i, align 4
  %conv10 = sext i32 %9 to i64
  %10 = load i64, ptr %l, align 8
  %cmp11 = icmp ne i64 %conv10, %10
  br i1 %cmp11, label %cond.true, label %cond.false

cond.true:                                        ; preds = %lor.lhs.false9, %lor.lhs.false6, %lor.lhs.false, %if.then
  br label %cond.end

cond.false:                                       ; preds = %lor.lhs.false9
  %11 = load i32, ptr %i, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ -1, %cond.true ], [ %11, %cond.false ]
  store i32 %cond, ptr %signum, align 4
  %12 = load i32, ptr %signum, align 4
  %cmp13 = icmp ne i32 %12, -1
  br i1 %cmp13, label %if.then15, label %if.end

if.then15:                                        ; preds = %cond.end
  %13 = load i32, ptr %signum, align 4
  %cmp16 = icmp sge i32 %13, 255
  %14 = zext i1 %cmp16 to i64
  %cond18 = select i1 %cmp16, i32 255, i32 127
  %15 = load i32, ptr %signum, align 4
  %and = and i32 %15, %cond18
  store i32 %and, ptr %signum, align 4
  br label %if.end

if.end:                                           ; preds = %if.then15, %cond.end
  br label %if.end50

if.else:                                          ; preds = %entry
  %16 = load ptr, ptr %operand.addr, align 8
  %call19 = call noalias nonnull ptr @xstrdup(ptr noundef %16)
  store ptr %call19, ptr %upcased, align 8
  %17 = load ptr, ptr %upcased, align 8
  store ptr %17, ptr %p, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.else
  %18 = load ptr, ptr %p, align 8
  %19 = load i8, ptr %18, align 1
  %tobool20 = icmp ne i8 %19, 0
  br i1 %tobool20, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %20 = load ptr, ptr %p, align 8
  %21 = load i8, ptr %20, align 1
  %conv21 = sext i8 %21 to i32
  %call22 = call ptr @strchr(ptr noundef @.str, i32 noundef %conv21) #8
  %tobool23 = icmp ne ptr %call22, null
  br i1 %tobool23, label %if.then24, label %if.end27

if.then24:                                        ; preds = %for.body
  %22 = load ptr, ptr %p, align 8
  %23 = load i8, ptr %22, align 1
  %conv25 = sext i8 %23 to i32
  %add = add nsw i32 %conv25, -32
  %conv26 = trunc i32 %add to i8
  store i8 %conv26, ptr %22, align 1
  br label %if.end27

if.end27:                                         ; preds = %if.then24, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end27
  %24 = load ptr, ptr %p, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %24, i32 1
  store ptr %incdec.ptr, ptr %p, align 8
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %25 = load ptr, ptr %upcased, align 8
  %call28 = call i32 @str2sig(ptr noundef %25, ptr noundef %signum)
  %cmp29 = icmp eq i32 %call28, 0
  br i1 %cmp29, label %if.end49, label %lor.lhs.false31

lor.lhs.false31:                                  ; preds = %for.end
  %26 = load ptr, ptr %upcased, align 8
  %arrayidx = getelementptr inbounds i8, ptr %26, i64 0
  %27 = load i8, ptr %arrayidx, align 1
  %conv32 = sext i8 %27 to i32
  %cmp33 = icmp eq i32 %conv32, 83
  br i1 %cmp33, label %land.lhs.true, label %if.then48

land.lhs.true:                                    ; preds = %lor.lhs.false31
  %28 = load ptr, ptr %upcased, align 8
  %arrayidx35 = getelementptr inbounds i8, ptr %28, i64 1
  %29 = load i8, ptr %arrayidx35, align 1
  %conv36 = sext i8 %29 to i32
  %cmp37 = icmp eq i32 %conv36, 73
  br i1 %cmp37, label %land.lhs.true39, label %if.then48

land.lhs.true39:                                  ; preds = %land.lhs.true
  %30 = load ptr, ptr %upcased, align 8
  %arrayidx40 = getelementptr inbounds i8, ptr %30, i64 2
  %31 = load i8, ptr %arrayidx40, align 1
  %conv41 = sext i8 %31 to i32
  %cmp42 = icmp eq i32 %conv41, 71
  br i1 %cmp42, label %land.lhs.true44, label %if.then48

land.lhs.true44:                                  ; preds = %land.lhs.true39
  %32 = load ptr, ptr %upcased, align 8
  %add.ptr = getelementptr inbounds i8, ptr %32, i64 3
  %call45 = call i32 @str2sig(ptr noundef %add.ptr, ptr noundef %signum)
  %cmp46 = icmp eq i32 %call45, 0
  br i1 %cmp46, label %if.end49, label %if.then48

if.then48:                                        ; preds = %land.lhs.true44, %land.lhs.true39, %land.lhs.true, %lor.lhs.false31
  store i32 -1, ptr %signum, align 4
  br label %if.end49

if.end49:                                         ; preds = %if.then48, %land.lhs.true44, %for.end
  %33 = load ptr, ptr %upcased, align 8
  call void @free(ptr noundef %33) #7
  br label %if.end50

if.end50:                                         ; preds = %if.end49, %if.end
  %34 = load i32, ptr %signum, align 4
  %cmp51 = icmp sgt i32 0, %34
  br i1 %cmp51, label %if.then56, label %lor.lhs.false53

lor.lhs.false53:                                  ; preds = %if.end50
  %35 = load i32, ptr %signum, align 4
  %cmp54 = icmp sgt i32 %35, 64
  br i1 %cmp54, label %if.then56, label %if.end59

if.then56:                                        ; preds = %lor.lhs.false53, %if.end50
  %call57 = call ptr @gettext(ptr noundef @.str.1) #7
  %36 = load ptr, ptr %operand.addr, align 8
  %call58 = call ptr @quote(ptr noundef %36)
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %call57, ptr noundef %call58) #9
  store i32 -1, ptr %retval, align 4
  br label %return

if.end59:                                         ; preds = %lor.lhs.false53
  %37 = load i32, ptr %signum, align 4
  store i32 %37, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end59, %if.then56
  %38 = load i32, ptr %retval, align 4
  ret i32 %38
}

declare zeroext i1 @c_isdigit(i32 noundef) #1

; Function Attrs: nounwind willreturn memory(none)
declare ptr @__errno_location() #2

; Function Attrs: nounwind
declare i64 @__isoc23_strtol(ptr noundef, ptr noundef, i32 noundef) #3

declare noalias nonnull ptr @xstrdup(ptr noundef) #1

; Function Attrs: nounwind willreturn memory(read)
declare ptr @strchr(ptr noundef, i32 noundef) #4

declare i32 @str2sig(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind
declare void @free(ptr noundef) #3

; Function Attrs: nounwind
declare ptr @gettext(ptr noundef) #3

declare ptr @quote(ptr noundef) #1

; Function Attrs: cold
declare void @error(i32 noundef, i32 noundef, ptr noundef, ...) #5

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind willreturn memory(none) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind willreturn memory(read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind willreturn memory(none) }
attributes #7 = { nounwind }
attributes #8 = { nounwind willreturn memory(read) }
attributes #9 = { cold }

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
