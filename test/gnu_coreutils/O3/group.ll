; ModuleID = 'llvm-link'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, [1 x i8], ptr, i64, ptr, ptr, ptr, ptr, i64, i32, [20 x i8] }
%struct.passwd = type { ptr, ptr, i32, i32, ptr, ptr, ptr }

@.str = private unnamed_addr constant [33 x i8] c"failed to get groups for user %s\00", align 1
@.str.1 = private unnamed_addr constant [45 x i8] c"failed to get groups for the current process\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"cannot find name for group ID %ju\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"%ju\00", align 1
@stdout = external local_unnamed_addr global ptr, align 8

; Function Attrs: nounwind uwtable
define dso_local zeroext i1 @print_group_list(ptr noundef %username, i32 noundef %ruid, i32 noundef %rgid, i32 noundef %egid, i1 noundef zeroext %use_names, i8 noundef signext %delim) local_unnamed_addr #0 {
entry:
  %groups = alloca ptr, align 8
  %tobool.not = icmp eq ptr %username, null
  br i1 %tobool.not, label %if.end2, label %if.then

if.then:                                          ; preds = %entry
  %call = tail call ptr @getpwuid(i32 noundef %ruid) #7
  %cmp = icmp ne ptr %call, null
  %spec.select = zext i1 %cmp to i8
  br label %if.end2

if.end2:                                          ; preds = %if.then, %entry
  %ok.0 = phi i8 [ 1, %entry ], [ %spec.select, %if.then ]
  %pwd.0 = phi ptr [ null, %entry ], [ %call, %if.then ]
  br i1 %use_names, label %if.then.i, label %print_group.exit.thread119

print_group.exit.thread119:                       ; preds = %if.end2
  %.pre.i = zext i32 %rgid to i64
  %call8.i122 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.4, i64 noundef %.pre.i) #7
  br label %1

if.then.i:                                        ; preds = %if.end2
  %call.i = tail call ptr @getgrgid(i32 noundef %rgid) #7
  %cmp.i = icmp eq ptr %call.i, null
  br i1 %cmp.i, label %print_group.exit, label %print_group.exit.thread

print_group.exit.thread:                          ; preds = %if.then.i
  %0 = load ptr, ptr %call.i, align 8, !tbaa !5
  %call6.i = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.3, ptr noundef %0) #7
  br label %1

print_group.exit:                                 ; preds = %if.then.i
  %conv.i = zext i32 %rgid to i64
  %call2.i = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.2, i32 noundef 5) #7
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %call2.i, i64 noundef %conv.i) #8
  %call8.i = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.4, i64 noundef %conv.i) #7
  br label %1

1:                                                ; preds = %print_group.exit, %print_group.exit.thread, %print_group.exit.thread119
  %2 = phi i8 [ 0, %print_group.exit ], [ %ok.0, %print_group.exit.thread119 ], [ %ok.0, %print_group.exit.thread ]
  %cmp7.not = icmp eq i32 %egid, %rgid
  br i1 %cmp7.not, label %if.end14, label %if.then8

if.then8:                                         ; preds = %1
  %3 = load ptr, ptr @stdout, align 8, !tbaa !11
  %_IO_write_ptr.i = getelementptr inbounds %struct._IO_FILE, ptr %3, i64 0, i32 5
  %4 = load ptr, ptr %_IO_write_ptr.i, align 8, !tbaa !12
  %_IO_write_end.i = getelementptr inbounds %struct._IO_FILE, ptr %3, i64 0, i32 6
  %5 = load ptr, ptr %_IO_write_end.i, align 8, !tbaa !16
  %cmp.not.i = icmp ult ptr %4, %5
  br i1 %cmp.not.i, label %cond.false.i, label %cond.true.i, !prof !17

cond.true.i:                                      ; preds = %if.then8
  %conv = zext i8 %delim to i32
  %call.i74 = tail call i32 @__overflow(ptr noundef nonnull %3, i32 noundef %conv) #7
  br label %putchar_unlocked.exit

cond.false.i:                                     ; preds = %if.then8
  %incdec.ptr.i = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %incdec.ptr.i, ptr %_IO_write_ptr.i, align 8, !tbaa !12
  store i8 %delim, ptr %4, align 1, !tbaa !18
  br label %putchar_unlocked.exit

putchar_unlocked.exit:                            ; preds = %cond.false.i, %cond.true.i
  br i1 %use_names, label %if.then.i82, label %print_group.exit90.thread124

print_group.exit90.thread124:                     ; preds = %putchar_unlocked.exit
  %.pre.i76 = zext i32 %egid to i64
  %call8.i80127 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.4, i64 noundef %.pre.i76) #7
  br label %if.end14

if.then.i82:                                      ; preds = %putchar_unlocked.exit
  %call.i83 = tail call ptr @getgrgid(i32 noundef %egid) #7
  %cmp.i84 = icmp eq ptr %call.i83, null
  br i1 %cmp.i84, label %print_group.exit90, label %print_group.exit90.thread

print_group.exit90.thread:                        ; preds = %if.then.i82
  %6 = load ptr, ptr %call.i83, align 8, !tbaa !5
  %call6.i86 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.3, ptr noundef %6) #7
  br label %if.end14

print_group.exit90:                               ; preds = %if.then.i82
  %conv.i88 = zext i32 %egid to i64
  %call2.i89 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.2, i32 noundef 5) #7
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %call2.i89, i64 noundef %conv.i88) #8
  %call8.i80 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.4, i64 noundef %conv.i88) #7
  br label %if.end14

if.end14:                                         ; preds = %print_group.exit90, %print_group.exit90.thread, %print_group.exit90.thread124, %1
  %ok.2 = phi i8 [ %2, %1 ], [ 0, %print_group.exit90 ], [ %2, %print_group.exit90.thread124 ], [ %2, %print_group.exit90.thread ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %groups) #7
  %tobool15.not = icmp eq ptr %pwd.0, null
  br i1 %tobool15.not, label %cond.end, label %cond.true

cond.true:                                        ; preds = %if.end14
  %pw_gid = getelementptr inbounds %struct.passwd, ptr %pwd.0, i64 0, i32 3
  %7 = load i32, ptr %pw_gid, align 4, !tbaa !19
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %if.end14
  %cond = phi i32 [ %7, %cond.true ], [ %egid, %if.end14 ]
  %call16 = call i32 @xgetgroups(ptr noundef %username, i32 noundef %cond, ptr noundef nonnull %groups) #7
  %cmp17 = icmp sgt i32 %call16, -1
  br i1 %cmp17, label %for.cond.preheader, label %if.then19

for.cond.preheader:                               ; preds = %cond.end
  %cmp29133.not = icmp eq i32 %call16, 0
  br i1 %cmp29133.not, label %for.cond.cleanup, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %conv38 = zext i8 %delim to i32
  %wide.trip.count140 = zext nneg i32 %call16 to i64
  br i1 %use_names, label %for.body.us, label %for.body

for.body.us:                                      ; preds = %for.inc.us, %for.body.lr.ph
  %indvars.iv138 = phi i64 [ %indvars.iv.next139, %for.inc.us ], [ 0, %for.body.lr.ph ]
  %ok.3134.us = phi i8 [ %ok.4.us, %for.inc.us ], [ %ok.2, %for.body.lr.ph ]
  %8 = load ptr, ptr %groups, align 8, !tbaa !11
  %arrayidx.us = getelementptr inbounds i32, ptr %8, i64 %indvars.iv138
  %9 = load i32, ptr %arrayidx.us, align 4, !tbaa !21
  %cmp31.not.us = icmp eq i32 %9, %rgid
  %cmp35.not.us = icmp eq i32 %9, %egid
  %or.cond.us = or i1 %cmp31.not.us, %cmp35.not.us
  br i1 %or.cond.us, label %for.inc.us, label %if.then37.us

if.then37.us:                                     ; preds = %for.body.us
  %10 = load ptr, ptr @stdout, align 8, !tbaa !11
  %_IO_write_ptr.i91.us = getelementptr inbounds %struct._IO_FILE, ptr %10, i64 0, i32 5
  %11 = load ptr, ptr %_IO_write_ptr.i91.us, align 8, !tbaa !12
  %_IO_write_end.i92.us = getelementptr inbounds %struct._IO_FILE, ptr %10, i64 0, i32 6
  %12 = load ptr, ptr %_IO_write_end.i92.us, align 8, !tbaa !16
  %cmp.not.i93.us = icmp ult ptr %11, %12
  br i1 %cmp.not.i93.us, label %cond.false.i98.us, label %cond.true.i94.us, !prof !17

cond.true.i94.us:                                 ; preds = %if.then37.us
  %call.i96.us = call i32 @__overflow(ptr noundef nonnull %10, i32 noundef %conv38) #7
  br label %putchar_unlocked.exit101.us

cond.false.i98.us:                                ; preds = %if.then37.us
  %incdec.ptr.i99.us = getelementptr inbounds i8, ptr %11, i64 1
  store ptr %incdec.ptr.i99.us, ptr %_IO_write_ptr.i91.us, align 8, !tbaa !12
  store i8 %delim, ptr %11, align 1, !tbaa !18
  br label %putchar_unlocked.exit101.us

putchar_unlocked.exit101.us:                      ; preds = %cond.false.i98.us, %cond.true.i94.us
  %13 = load ptr, ptr %groups, align 8, !tbaa !11
  %arrayidx41.us = getelementptr inbounds i32, ptr %13, i64 %indvars.iv138
  %14 = load i32, ptr %arrayidx41.us, align 4, !tbaa !21
  %call.i110.us = call ptr @getgrgid(i32 noundef %14) #7
  %cmp.i111.us = icmp eq ptr %call.i110.us, null
  br i1 %cmp.i111.us, label %print_group.exit117.us, label %print_group.exit117.thread.us

print_group.exit117.thread.us:                    ; preds = %putchar_unlocked.exit101.us
  %15 = load ptr, ptr %call.i110.us, align 8, !tbaa !5
  %call6.i113.us = call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.3, ptr noundef %15) #7
  br label %for.inc.us

print_group.exit117.us:                           ; preds = %putchar_unlocked.exit101.us
  %conv.i115.us = zext i32 %14 to i64
  %call2.i116.us = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.2, i32 noundef 5) #7
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %call2.i116.us, i64 noundef %conv.i115.us) #8
  %call8.i107.us = call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.4, i64 noundef %conv.i115.us) #7
  br label %for.inc.us

for.inc.us:                                       ; preds = %print_group.exit117.us, %print_group.exit117.thread.us, %for.body.us
  %ok.4.us = phi i8 [ %ok.3134.us, %for.body.us ], [ 0, %print_group.exit117.us ], [ %ok.3134.us, %print_group.exit117.thread.us ]
  %indvars.iv.next139 = add nuw nsw i64 %indvars.iv138, 1
  %exitcond141.not = icmp eq i64 %indvars.iv.next139, %wide.trip.count140
  br i1 %exitcond141.not, label %for.cond.cleanup, label %for.body.us, !llvm.loop !22

if.then19:                                        ; preds = %cond.end
  %call25 = tail call ptr @__errno_location() #9
  %16 = load i32, ptr %call25, align 4, !tbaa !21
  br i1 %tobool.not, label %if.else, label %if.then21

if.then21:                                        ; preds = %if.then19
  %call23 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str, i32 noundef 5) #7
  %call24 = call ptr @quote(ptr noundef nonnull %username) #7
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %16, ptr noundef %call23, ptr noundef %call24) #8
  br label %cleanup

if.else:                                          ; preds = %if.then19
  %call26 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.1, i32 noundef 5) #7
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %16, ptr noundef %call26) #8
  br label %cleanup

for.cond.cleanup:                                 ; preds = %for.inc, %for.inc.us, %for.cond.preheader
  %ok.3.lcssa = phi i8 [ %ok.2, %for.cond.preheader ], [ %ok.4.us, %for.inc.us ], [ %ok.2, %for.inc ]
  %17 = load ptr, ptr %groups, align 8, !tbaa !11
  call void @free(ptr noundef %17) #7
  br label %cleanup

for.body:                                         ; preds = %for.inc, %for.body.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %for.body.lr.ph ]
  %18 = load ptr, ptr %groups, align 8, !tbaa !11
  %arrayidx = getelementptr inbounds i32, ptr %18, i64 %indvars.iv
  %19 = load i32, ptr %arrayidx, align 4, !tbaa !21
  %cmp31.not = icmp eq i32 %19, %rgid
  %cmp35.not = icmp eq i32 %19, %egid
  %or.cond = or i1 %cmp31.not, %cmp35.not
  br i1 %or.cond, label %for.inc, label %if.then37

if.then37:                                        ; preds = %for.body
  %20 = load ptr, ptr @stdout, align 8, !tbaa !11
  %_IO_write_ptr.i91 = getelementptr inbounds %struct._IO_FILE, ptr %20, i64 0, i32 5
  %21 = load ptr, ptr %_IO_write_ptr.i91, align 8, !tbaa !12
  %_IO_write_end.i92 = getelementptr inbounds %struct._IO_FILE, ptr %20, i64 0, i32 6
  %22 = load ptr, ptr %_IO_write_end.i92, align 8, !tbaa !16
  %cmp.not.i93 = icmp ult ptr %21, %22
  br i1 %cmp.not.i93, label %cond.false.i98, label %cond.true.i94, !prof !17

cond.true.i94:                                    ; preds = %if.then37
  %call.i96 = call i32 @__overflow(ptr noundef nonnull %20, i32 noundef %conv38) #7
  br label %putchar_unlocked.exit101

cond.false.i98:                                   ; preds = %if.then37
  %incdec.ptr.i99 = getelementptr inbounds i8, ptr %21, i64 1
  store ptr %incdec.ptr.i99, ptr %_IO_write_ptr.i91, align 8, !tbaa !12
  store i8 %delim, ptr %21, align 1, !tbaa !18
  br label %putchar_unlocked.exit101

putchar_unlocked.exit101:                         ; preds = %cond.false.i98, %cond.true.i94
  %23 = load ptr, ptr %groups, align 8, !tbaa !11
  %arrayidx41 = getelementptr inbounds i32, ptr %23, i64 %indvars.iv
  %24 = load i32, ptr %arrayidx41, align 4, !tbaa !21
  %.pre.i103 = zext i32 %24 to i64
  %call8.i107132 = call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.4, i64 noundef %.pre.i103) #7
  br label %for.inc

for.inc:                                          ; preds = %putchar_unlocked.exit101, %for.body
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count140
  br i1 %exitcond.not, label %for.cond.cleanup, label %for.body, !llvm.loop !22

cleanup:                                          ; preds = %for.cond.cleanup, %if.else, %if.then21
  %ok.5 = phi i8 [ %ok.3.lcssa, %for.cond.cleanup ], [ %ok.2, %if.else ], [ %ok.2, %if.then21 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %groups) #7
  %25 = and i8 %ok.5, 1
  %tobool48 = icmp ne i8 %25, 0
  %retval.1 = select i1 %cmp17, i1 %tobool48, i1 false
  ret i1 %retval.1
}

declare ptr @getpwuid(i32 noundef) local_unnamed_addr #1

declare i32 @__printf_chk(i32 noundef, ptr noundef, ...) local_unnamed_addr #1

declare ptr @getgrgid(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare ptr @dcgettext(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold
declare void @error(i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

declare i32 @__overflow(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

declare i32 @xgetgroups(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #5

declare ptr @quote(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: nounwind uwtable
define dso_local noundef zeroext i1 @print_group(i32 noundef %gid, i1 noundef zeroext %use_name) local_unnamed_addr #0 {
entry:
  br i1 %use_name, label %if.then, label %entry.if.else_crit_edge

entry.if.else_crit_edge:                          ; preds = %entry
  %.pre = zext i32 %gid to i64
  br label %if.else

if.then:                                          ; preds = %entry
  %call = tail call ptr @getgrgid(i32 noundef %gid) #7
  %cmp = icmp eq ptr %call, null
  br i1 %cmp, label %if.then1, label %if.then5

if.then1:                                         ; preds = %if.then
  %conv = zext i32 %gid to i64
  %call2 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.2, i32 noundef 5) #7
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %call2, i64 noundef %conv) #8
  br label %if.else

if.then5:                                         ; preds = %if.then
  %0 = load ptr, ptr %call, align 8, !tbaa !5
  %call6 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.3, ptr noundef %0) #7
  br label %if.end9

if.else:                                          ; preds = %if.then1, %entry.if.else_crit_edge
  %conv7.pre-phi = phi i64 [ %.pre, %entry.if.else_crit_edge ], [ %conv, %if.then1 ]
  %ok.0.ph = xor i1 %use_name, true
  %call8 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.4, i64 noundef %conv7.pre-phi) #7
  br label %if.end9

if.end9:                                          ; preds = %if.else, %if.then5
  %ok.018 = phi i1 [ %ok.0.ph, %if.else ], [ true, %if.then5 ]
  ret i1 %ok.018
}

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { cold "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind }
attributes #8 = { cold nounwind }
attributes #9 = { nounwind willreturn memory(none) }

!llvm.ident = !{!0}
!llvm.module.flags = !{!1, !2, !3, !4}

!0 = !{!"clang version 18.1.8 (https://github.com/llvm/llvm-project.git 3b5b5c1ec4a3095ab096dd780e84d7ab81f3d7ff)"}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!6, !9, i64 0, i64 8}
!6 = !{!7, i64 32, !"group", !9, i64 0, i64 8, !9, i64 8, i64 8, !10, i64 16, i64 4, !9, i64 24, i64 8}
!7 = !{!8, i64 1, !"omnipotent char"}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!7, i64 8, !"any pointer"}
!10 = !{!7, i64 4, !"int"}
!11 = !{!9, !9, i64 0, i64 8}
!12 = !{!13, !9, i64 40, i64 8}
!13 = !{!7, i64 216, !"_IO_FILE", !10, i64 0, i64 4, !9, i64 8, i64 8, !9, i64 16, i64 8, !9, i64 24, i64 8, !9, i64 32, i64 8, !9, i64 40, i64 8, !9, i64 48, i64 8, !9, i64 56, i64 8, !9, i64 64, i64 8, !9, i64 72, i64 8, !9, i64 80, i64 8, !9, i64 88, i64 8, !9, i64 96, i64 8, !9, i64 104, i64 8, !10, i64 112, i64 4, !10, i64 116, i64 4, !14, i64 120, i64 8, !15, i64 128, i64 2, !7, i64 130, i64 1, !7, i64 131, i64 1, !9, i64 136, i64 8, !14, i64 144, i64 8, !9, i64 152, i64 8, !9, i64 160, i64 8, !9, i64 168, i64 8, !9, i64 176, i64 8, !14, i64 184, i64 8, !10, i64 192, i64 4, !7, i64 196, i64 20}
!14 = !{!7, i64 8, !"long"}
!15 = !{!7, i64 2, !"short"}
!16 = !{!13, !9, i64 48, i64 8}
!17 = !{!"branch_weights", i32 2000, i32 1}
!18 = !{!7, !7, i64 0, i64 1}
!19 = !{!20, !10, i64 20, i64 4}
!20 = !{!7, i64 48, !"passwd", !9, i64 0, i64 8, !9, i64 8, i64 8, !10, i64 16, i64 4, !10, i64 20, i64 4, !9, i64 24, i64 8, !9, i64 32, i64 8, !9, i64 40, i64 8}
!21 = !{!10, !10, i64 0, i64 4}
!22 = distinct !{!22, !23}
!23 = !{!"llvm.loop.mustprogress"}
