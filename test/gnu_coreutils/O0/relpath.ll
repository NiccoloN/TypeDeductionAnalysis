; ModuleID = 'llvm-link'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"..\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"/..\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"generating relative path\00", align 1
@stdout = external global ptr, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local zeroext i1 @relpath(ptr noundef %can_fname, ptr noundef %can_reldir, ptr noundef %buf, i64 noundef %len) #0 {
entry:
  %retval = alloca i1, align 1
  %can_fname.addr = alloca ptr, align 8
  %can_reldir.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %len.addr = alloca i64, align 8
  %buf_err = alloca i8, align 1
  %common_index = alloca i32, align 4
  %relto_suffix = alloca ptr, align 8
  %fname_suffix = alloca ptr, align 8
  store ptr %can_fname, ptr %can_fname.addr, align 8
  store ptr %can_reldir, ptr %can_reldir.addr, align 8
  store ptr %buf, ptr %buf.addr, align 8
  store i64 %len, ptr %len.addr, align 8
  store i8 0, ptr %buf_err, align 1
  %0 = load ptr, ptr %can_reldir.addr, align 8
  %1 = load ptr, ptr %can_fname.addr, align 8
  %call = call i32 @path_common_prefix(ptr noundef %0, ptr noundef %1) #7
  store i32 %call, ptr %common_index, align 4
  %2 = load i32, ptr %common_index, align 4
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i1 false, ptr %retval, align 1
  br label %return

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %can_reldir.addr, align 8
  %4 = load i32, ptr %common_index, align 4
  %idx.ext = sext i32 %4 to i64
  %add.ptr = getelementptr inbounds i8, ptr %3, i64 %idx.ext
  store ptr %add.ptr, ptr %relto_suffix, align 8
  %5 = load ptr, ptr %can_fname.addr, align 8
  %6 = load i32, ptr %common_index, align 4
  %idx.ext1 = sext i32 %6 to i64
  %add.ptr2 = getelementptr inbounds i8, ptr %5, i64 %idx.ext1
  store ptr %add.ptr2, ptr %fname_suffix, align 8
  %7 = load ptr, ptr %relto_suffix, align 8
  %8 = load i8, ptr %7, align 1
  %conv = sext i8 %8 to i32
  %cmp = icmp eq i32 %conv, 47
  br i1 %cmp, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  %9 = load ptr, ptr %relto_suffix, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %9, i32 1
  store ptr %incdec.ptr, ptr %relto_suffix, align 8
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %if.end
  %10 = load ptr, ptr %fname_suffix, align 8
  %11 = load i8, ptr %10, align 1
  %conv6 = sext i8 %11 to i32
  %cmp7 = icmp eq i32 %conv6, 47
  br i1 %cmp7, label %if.then9, label %if.end11

if.then9:                                         ; preds = %if.end5
  %12 = load ptr, ptr %fname_suffix, align 8
  %incdec.ptr10 = getelementptr inbounds i8, ptr %12, i32 1
  store ptr %incdec.ptr10, ptr %fname_suffix, align 8
  br label %if.end11

if.end11:                                         ; preds = %if.then9, %if.end5
  %13 = load ptr, ptr %relto_suffix, align 8
  %14 = load i8, ptr %13, align 1
  %tobool12 = icmp ne i8 %14, 0
  br i1 %tobool12, label %if.then13, label %if.else

if.then13:                                        ; preds = %if.end11
  %call14 = call zeroext i1 @buffer_or_output(ptr noundef @.str, ptr noundef %buf.addr, ptr noundef %len.addr)
  %conv15 = zext i1 %call14 to i32
  %15 = load i8, ptr %buf_err, align 1
  %tobool16 = trunc i8 %15 to i1
  %conv17 = zext i1 %tobool16 to i32
  %or = or i32 %conv17, %conv15
  %tobool18 = icmp ne i32 %or, 0
  %frombool = zext i1 %tobool18 to i8
  store i8 %frombool, ptr %buf_err, align 1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then13
  %16 = load ptr, ptr %relto_suffix, align 8
  %17 = load i8, ptr %16, align 1
  %tobool19 = icmp ne i8 %17, 0
  br i1 %tobool19, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %18 = load ptr, ptr %relto_suffix, align 8
  %19 = load i8, ptr %18, align 1
  %conv20 = sext i8 %19 to i32
  %cmp21 = icmp eq i32 %conv20, 47
  br i1 %cmp21, label %if.then23, label %if.end31

if.then23:                                        ; preds = %for.body
  %call24 = call zeroext i1 @buffer_or_output(ptr noundef @.str.1, ptr noundef %buf.addr, ptr noundef %len.addr)
  %conv25 = zext i1 %call24 to i32
  %20 = load i8, ptr %buf_err, align 1
  %tobool26 = trunc i8 %20 to i1
  %conv27 = zext i1 %tobool26 to i32
  %or28 = or i32 %conv27, %conv25
  %tobool29 = icmp ne i32 %or28, 0
  %frombool30 = zext i1 %tobool29 to i8
  store i8 %frombool30, ptr %buf_err, align 1
  br label %if.end31

if.end31:                                         ; preds = %if.then23, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end31
  %21 = load ptr, ptr %relto_suffix, align 8
  %incdec.ptr32 = getelementptr inbounds i8, ptr %21, i32 1
  store ptr %incdec.ptr32, ptr %relto_suffix, align 8
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %22 = load ptr, ptr %fname_suffix, align 8
  %23 = load i8, ptr %22, align 1
  %tobool33 = icmp ne i8 %23, 0
  br i1 %tobool33, label %if.then34, label %if.end49

if.then34:                                        ; preds = %for.end
  %call35 = call zeroext i1 @buffer_or_output(ptr noundef @.str.2, ptr noundef %buf.addr, ptr noundef %len.addr)
  %conv36 = zext i1 %call35 to i32
  %24 = load i8, ptr %buf_err, align 1
  %tobool37 = trunc i8 %24 to i1
  %conv38 = zext i1 %tobool37 to i32
  %or39 = or i32 %conv38, %conv36
  %tobool40 = icmp ne i32 %or39, 0
  %frombool41 = zext i1 %tobool40 to i8
  store i8 %frombool41, ptr %buf_err, align 1
  %25 = load ptr, ptr %fname_suffix, align 8
  %call42 = call zeroext i1 @buffer_or_output(ptr noundef %25, ptr noundef %buf.addr, ptr noundef %len.addr)
  %conv43 = zext i1 %call42 to i32
  %26 = load i8, ptr %buf_err, align 1
  %tobool44 = trunc i8 %26 to i1
  %conv45 = zext i1 %tobool44 to i32
  %or46 = or i32 %conv45, %conv43
  %tobool47 = icmp ne i32 %or46, 0
  %frombool48 = zext i1 %tobool47 to i8
  store i8 %frombool48, ptr %buf_err, align 1
  br label %if.end49

if.end49:                                         ; preds = %if.then34, %for.end
  br label %if.end59

if.else:                                          ; preds = %if.end11
  %27 = load ptr, ptr %fname_suffix, align 8
  %28 = load i8, ptr %27, align 1
  %conv50 = sext i8 %28 to i32
  %tobool51 = icmp ne i32 %conv50, 0
  br i1 %tobool51, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.else
  %29 = load ptr, ptr %fname_suffix, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.else
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %29, %cond.true ], [ @.str.3, %cond.false ]
  %call52 = call zeroext i1 @buffer_or_output(ptr noundef %cond, ptr noundef %buf.addr, ptr noundef %len.addr)
  %conv53 = zext i1 %call52 to i32
  %30 = load i8, ptr %buf_err, align 1
  %tobool54 = trunc i8 %30 to i1
  %conv55 = zext i1 %tobool54 to i32
  %or56 = or i32 %conv55, %conv53
  %tobool57 = icmp ne i32 %or56, 0
  %frombool58 = zext i1 %tobool57 to i8
  store i8 %frombool58, ptr %buf_err, align 1
  br label %if.end59

if.end59:                                         ; preds = %cond.end, %if.end49
  %31 = load i8, ptr %buf_err, align 1
  %tobool60 = trunc i8 %31 to i1
  br i1 %tobool60, label %if.then61, label %if.end63

if.then61:                                        ; preds = %if.end59
  %call62 = call ptr @gettext(ptr noundef @.str.5) #8
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 36, ptr noundef @.str.4, ptr noundef %call62) #9
  br label %if.end63

if.end63:                                         ; preds = %if.then61, %if.end59
  %32 = load i8, ptr %buf_err, align 1
  %tobool64 = trunc i8 %32 to i1
  %lnot = xor i1 %tobool64, true
  store i1 %lnot, ptr %retval, align 1
  br label %return

return:                                           ; preds = %if.end63, %if.then
  %33 = load i1, ptr %retval, align 1
  ret i1 %33
}

; Function Attrs: noinline nounwind optnone willreturn memory(read) uwtable
define internal i32 @path_common_prefix(ptr noundef %path1, ptr noundef %path2) #1 {
entry:
  %retval = alloca i32, align 4
  %path1.addr = alloca ptr, align 8
  %path2.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %ret = alloca i32, align 4
  store ptr %path1, ptr %path1.addr, align 8
  store ptr %path2, ptr %path2.addr, align 8
  store i32 0, ptr %i, align 4
  store i32 0, ptr %ret, align 4
  %0 = load ptr, ptr %path1.addr, align 8
  %arrayidx = getelementptr inbounds i8, ptr %0, i64 1
  %1 = load i8, ptr %arrayidx, align 1
  %conv = sext i8 %1 to i32
  %cmp = icmp eq i32 %conv, 47
  %conv1 = zext i1 %cmp to i32
  %2 = load ptr, ptr %path2.addr, align 8
  %arrayidx2 = getelementptr inbounds i8, ptr %2, i64 1
  %3 = load i8, ptr %arrayidx2, align 1
  %conv3 = sext i8 %3 to i32
  %cmp4 = icmp eq i32 %conv3, 47
  %conv5 = zext i1 %cmp4 to i32
  %cmp6 = icmp ne i32 %conv1, %conv5
  br i1 %cmp6, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  br label %while.cond

while.cond:                                       ; preds = %if.end21, %if.end
  %4 = load ptr, ptr %path1.addr, align 8
  %5 = load i8, ptr %4, align 1
  %conv8 = sext i8 %5 to i32
  %tobool = icmp ne i32 %conv8, 0
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %6 = load ptr, ptr %path2.addr, align 8
  %7 = load i8, ptr %6, align 1
  %conv9 = sext i8 %7 to i32
  %tobool10 = icmp ne i32 %conv9, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %8 = phi i1 [ false, %while.cond ], [ %tobool10, %land.rhs ]
  br i1 %8, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %9 = load ptr, ptr %path1.addr, align 8
  %10 = load i8, ptr %9, align 1
  %conv11 = sext i8 %10 to i32
  %11 = load ptr, ptr %path2.addr, align 8
  %12 = load i8, ptr %11, align 1
  %conv12 = sext i8 %12 to i32
  %cmp13 = icmp ne i32 %conv11, %conv12
  br i1 %cmp13, label %if.then15, label %if.end16

if.then15:                                        ; preds = %while.body
  br label %while.end

if.end16:                                         ; preds = %while.body
  %13 = load ptr, ptr %path1.addr, align 8
  %14 = load i8, ptr %13, align 1
  %conv17 = sext i8 %14 to i32
  %cmp18 = icmp eq i32 %conv17, 47
  br i1 %cmp18, label %if.then20, label %if.end21

if.then20:                                        ; preds = %if.end16
  %15 = load i32, ptr %i, align 4
  %add = add nsw i32 %15, 1
  store i32 %add, ptr %ret, align 4
  br label %if.end21

if.end21:                                         ; preds = %if.then20, %if.end16
  %16 = load ptr, ptr %path1.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %16, i32 1
  store ptr %incdec.ptr, ptr %path1.addr, align 8
  %17 = load ptr, ptr %path2.addr, align 8
  %incdec.ptr22 = getelementptr inbounds i8, ptr %17, i32 1
  store ptr %incdec.ptr22, ptr %path2.addr, align 8
  %18 = load i32, ptr %i, align 4
  %inc = add nsw i32 %18, 1
  store i32 %inc, ptr %i, align 4
  br label %while.cond, !llvm.loop !8

while.end:                                        ; preds = %if.then15, %land.end
  %19 = load ptr, ptr %path1.addr, align 8
  %20 = load i8, ptr %19, align 1
  %tobool23 = icmp ne i8 %20, 0
  br i1 %tobool23, label %lor.lhs.false, label %land.lhs.true

land.lhs.true:                                    ; preds = %while.end
  %21 = load ptr, ptr %path2.addr, align 8
  %22 = load i8, ptr %21, align 1
  %tobool24 = icmp ne i8 %22, 0
  br i1 %tobool24, label %lor.lhs.false, label %if.then36

lor.lhs.false:                                    ; preds = %land.lhs.true, %while.end
  %23 = load ptr, ptr %path1.addr, align 8
  %24 = load i8, ptr %23, align 1
  %tobool25 = icmp ne i8 %24, 0
  br i1 %tobool25, label %lor.lhs.false30, label %land.lhs.true26

land.lhs.true26:                                  ; preds = %lor.lhs.false
  %25 = load ptr, ptr %path2.addr, align 8
  %26 = load i8, ptr %25, align 1
  %conv27 = sext i8 %26 to i32
  %cmp28 = icmp eq i32 %conv27, 47
  br i1 %cmp28, label %if.then36, label %lor.lhs.false30

lor.lhs.false30:                                  ; preds = %land.lhs.true26, %lor.lhs.false
  %27 = load ptr, ptr %path2.addr, align 8
  %28 = load i8, ptr %27, align 1
  %tobool31 = icmp ne i8 %28, 0
  br i1 %tobool31, label %if.end37, label %land.lhs.true32

land.lhs.true32:                                  ; preds = %lor.lhs.false30
  %29 = load ptr, ptr %path1.addr, align 8
  %30 = load i8, ptr %29, align 1
  %conv33 = sext i8 %30 to i32
  %cmp34 = icmp eq i32 %conv33, 47
  br i1 %cmp34, label %if.then36, label %if.end37

if.then36:                                        ; preds = %land.lhs.true32, %land.lhs.true26, %land.lhs.true
  %31 = load i32, ptr %i, align 4
  store i32 %31, ptr %ret, align 4
  br label %if.end37

if.end37:                                         ; preds = %if.then36, %land.lhs.true32, %lor.lhs.false30
  %32 = load i32, ptr %ret, align 4
  store i32 %32, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end37, %if.then
  %33 = load i32, ptr %retval, align 4
  ret i32 %33
}

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i1 @buffer_or_output(ptr noundef %str, ptr noundef %pbuf, ptr noundef %plen) #0 {
entry:
  %retval = alloca i1, align 1
  %str.addr = alloca ptr, align 8
  %pbuf.addr = alloca ptr, align 8
  %plen.addr = alloca ptr, align 8
  %slen = alloca i64, align 8
  store ptr %str, ptr %str.addr, align 8
  store ptr %pbuf, ptr %pbuf.addr, align 8
  store ptr %plen, ptr %plen.addr, align 8
  %0 = load ptr, ptr %pbuf.addr, align 8
  %1 = load ptr, ptr %0, align 8
  %tobool = icmp ne ptr %1, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %str.addr, align 8
  %call = call i64 @strlen(ptr noundef %2) #7
  store i64 %call, ptr %slen, align 8
  %3 = load i64, ptr %slen, align 8
  %4 = load ptr, ptr %plen.addr, align 8
  %5 = load i64, ptr %4, align 8
  %cmp = icmp uge i64 %3, %5
  br i1 %cmp, label %if.then1, label %if.end

if.then1:                                         ; preds = %if.then
  store i1 true, ptr %retval, align 1
  br label %return

if.end:                                           ; preds = %if.then
  %6 = load ptr, ptr %pbuf.addr, align 8
  %7 = load ptr, ptr %6, align 8
  %8 = load ptr, ptr %str.addr, align 8
  %9 = load i64, ptr %slen, align 8
  %add = add i64 %9, 1
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %7, ptr align 1 %8, i64 %add, i1 false)
  %10 = load i64, ptr %slen, align 8
  %11 = load ptr, ptr %pbuf.addr, align 8
  %12 = load ptr, ptr %11, align 8
  %add.ptr = getelementptr inbounds i8, ptr %12, i64 %10
  store ptr %add.ptr, ptr %11, align 8
  %13 = load i64, ptr %slen, align 8
  %14 = load ptr, ptr %plen.addr, align 8
  %15 = load i64, ptr %14, align 8
  %sub = sub i64 %15, %13
  store i64 %sub, ptr %14, align 8
  br label %if.end3

if.else:                                          ; preds = %entry
  %16 = load ptr, ptr %str.addr, align 8
  %17 = load ptr, ptr @stdout, align 8
  %call2 = call i32 @fputs_unlocked(ptr noundef %16, ptr noundef %17)
  br label %if.end3

if.end3:                                          ; preds = %if.else, %if.end
  store i1 false, ptr %retval, align 1
  br label %return

return:                                           ; preds = %if.end3, %if.then1
  %18 = load i1, ptr %retval, align 1
  ret i1 %18
}

; Function Attrs: nounwind
declare ptr @gettext(ptr noundef) #2

; Function Attrs: cold
declare void @error(i32 noundef, i32 noundef, ptr noundef, ...) #3

; Function Attrs: nounwind willreturn memory(read)
declare i64 @strlen(ptr noundef) #4

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #5

declare i32 @fputs_unlocked(ptr noundef, ptr noundef) #6

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind optnone willreturn memory(read) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { cold "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind willreturn memory(read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind willreturn memory(read) }
attributes #8 = { nounwind }
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
!8 = distinct !{!8, !7}
