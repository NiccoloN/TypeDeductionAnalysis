; ModuleID = 'llvm-link'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stderr = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [39 x i8] c"Try '%s --help' for more information.\0A\00", align 1
@program_name = external local_unnamed_addr global ptr, align 8
@.str.1 = private unnamed_addr constant [40 x i8] c"Usage: %s [STRING]...\0A  or:  %s OPTION\0A\00", align 1
@.str.2 = private unnamed_addr constant [65 x i8] c"Repeatedly output a line with all specified STRING(s), or 'y'.\0A\0A\00", align 1
@stdout = external local_unnamed_addr global ptr, align 8
@.str.3 = private unnamed_addr constant [48 x i8] c"      --help        display this help and exit\0A\00", align 1
@.str.4 = private unnamed_addr constant [57 x i8] c"      --version     output version information and exit\0A\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"yes\00", align 1
@.str.6 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1
@.str.8 = private unnamed_addr constant [24 x i8] c"/usr/local/share/locale\00", align 1
@.str.9 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@Version = external local_unnamed_addr global ptr, align 8
@.str.10 = private unnamed_addr constant [16 x i8] c"David MacKenzie\00", align 1
@optind = external local_unnamed_addr global i32, align 4
@.str.11 = private unnamed_addr constant [2 x i8] c"y\00", align 1
@.str.12 = private unnamed_addr constant [16 x i8] c"standard output\00", align 1
@.str.21 = private unnamed_addr constant [23 x i8] c"\0A%s online help: <%s>\0A\00", align 1
@.str.22 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1
@.str.23 = private unnamed_addr constant [4 x i8] c"en_\00", align 1
@.str.24 = private unnamed_addr constant [71 x i8] c"Report any translation bugs to <https://translationproject.org/team/>\0A\00", align 1
@.str.26 = private unnamed_addr constant [27 x i8] c"Full documentation <%s%s>\0A\00", align 1
@.str.27 = private unnamed_addr constant [51 x i8] c"or available locally via: info '(coreutils) %s%s'\0A\00", align 1
@.str.28 = private unnamed_addr constant [12 x i8] c" invocation\00", align 1

; Function Attrs: noreturn nounwind uwtable
define dso_local void @usage(i32 noundef %status) #0 {
entry:
  %cmp.not = icmp eq i32 %status, 0
  br i1 %cmp.not, label %if.else, label %do.body

do.body:                                          ; preds = %entry
  %0 = load ptr, ptr @stderr, align 8, !tbaa !5
  %call = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str, i32 noundef 5) #11
  %1 = load ptr, ptr @program_name, align 8, !tbaa !5
  %call1 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %call, ptr noundef %1) #11
  br label %if.end

if.else:                                          ; preds = %entry
  %call2 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.1, i32 noundef 5) #11
  %2 = load ptr, ptr @program_name, align 8, !tbaa !5
  %call3 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %call2, ptr noundef %2, ptr noundef %2) #11
  %call4 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.2, i32 noundef 5) #11
  %3 = load ptr, ptr @stdout, align 8, !tbaa !5
  %call5 = tail call i32 @fputs_unlocked(ptr noundef %call4, ptr noundef %3)
  %call6 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.3, i32 noundef 5) #11
  %4 = load ptr, ptr @stdout, align 8, !tbaa !5
  %call7 = tail call i32 @fputs_unlocked(ptr noundef %call6, ptr noundef %4)
  %call8 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.4, i32 noundef 5) #11
  %5 = load ptr, ptr @stdout, align 8, !tbaa !5
  %call9 = tail call i32 @fputs_unlocked(ptr noundef %call8, ptr noundef %5)
  %call6.i = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.21, i32 noundef 5) #11
  %call7.i = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %call6.i, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.22) #11
  %call8.i = tail call ptr @setlocale(i32 noundef 5, ptr noundef null) #11
  %tobool9.not.i = icmp eq ptr %call8.i, null
  br i1 %tobool9.not.i, label %emit_ancillary_info.exit, label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %if.else
  %call10.i = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %call8.i, ptr noundef nonnull dereferenceable(4) @.str.23, i64 noundef 3) #12
  %tobool11.not.i = icmp eq i32 %call10.i, 0
  br i1 %tobool11.not.i, label %emit_ancillary_info.exit, label %if.then12.i

if.then12.i:                                      ; preds = %land.lhs.true.i
  %call13.i = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.24, i32 noundef 5) #11
  %6 = load ptr, ptr @stdout, align 8, !tbaa !5
  %call14.i = tail call i32 @fputs_unlocked(ptr noundef %call13.i, ptr noundef %6)
  br label %emit_ancillary_info.exit

emit_ancillary_info.exit:                         ; preds = %if.then12.i, %land.lhs.true.i, %if.else
  %call18.i = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.26, i32 noundef 5) #11
  %call19.i = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %call18.i, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.5) #11
  %call20.i = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.27, i32 noundef 5) #11
  %call23.i = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %call20.i, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.28) #11
  br label %if.end

if.end:                                           ; preds = %emit_ancillary_info.exit, %do.body
  tail call void @exit(i32 noundef %status) #13
  unreachable
}

; Function Attrs: nounwind
declare ptr @dcgettext(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare i32 @__fprintf_chk(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

declare i32 @__printf_chk(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @fputs_unlocked(ptr nocapture noundef readonly, ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare ptr @setlocale(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @main(i32 noundef %argc, ptr noundef %argv) local_unnamed_addr #6 {
entry:
  %0 = load ptr, ptr %argv, align 8, !tbaa !5
  tail call void @set_program_name(ptr noundef %0) #11
  %call = tail call ptr @setlocale(i32 noundef 6, ptr noundef nonnull @.str.6) #11
  %call1 = tail call ptr @bindtextdomain(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8) #11
  %call2 = tail call ptr @textdomain(ptr noundef nonnull @.str.7) #11
  %call3 = tail call i32 @atexit(ptr noundef nonnull @close_stdout) #11
  %1 = load ptr, ptr @Version, align 8, !tbaa !5
  %call4 = tail call ptr @proper_name_lite(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.10) #11
  tail call void (i32, ptr, ptr, ptr, ptr, i1, ptr, ...) @parse_gnu_standard_options_only(i32 noundef %argc, ptr noundef nonnull %argv, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.9, ptr noundef %1, i1 noundef zeroext true, ptr noundef nonnull @usage, ptr noundef %call4, ptr noundef null) #11
  %2 = load i32, ptr @optind, align 4, !tbaa !9
  %idx.ext = sext i32 %2 to i64
  %add.ptr = getelementptr inbounds ptr, ptr %argv, i64 %idx.ext
  %idx.ext5 = sext i32 %argc to i64
  %add.ptr6 = getelementptr inbounds ptr, ptr %argv, i64 %idx.ext5
  %cmp = icmp eq i32 %2, %argc
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %incdec.ptr = getelementptr inbounds ptr, ptr %add.ptr6, i64 1
  store ptr @.str.11, ptr %add.ptr6, align 8, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %operand_lim.0 = phi ptr [ %incdec.ptr, %if.then ], [ %add.ptr6, %entry ]
  %3 = load ptr, ptr %add.ptr, align 8, !tbaa !5
  %call891 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %3) #12
  %add992 = add i64 %call891, 1
  %add.ptr1093 = getelementptr inbounds ptr, ptr %add.ptr, i64 1
  %cmp1194 = icmp ult ptr %add.ptr1093, %operand_lim.0
  br i1 %cmp1194, label %if.end17, label %do.end

if.end17:                                         ; preds = %if.end17, %if.end
  %add.ptr1098 = phi ptr [ %add.ptr10, %if.end17 ], [ %add.ptr1093, %if.end ]
  %add997 = phi i64 [ %add9, %if.end17 ], [ %add992, %if.end ]
  %call896 = phi i64 [ %call8, %if.end17 ], [ %call891, %if.end ]
  %4 = phi ptr [ %5, %if.end17 ], [ %3, %if.end ]
  %reuse_operand_strings.095 = phi i8 [ %spec.select, %if.end17 ], [ 1, %if.end ]
  %add.ptr12 = getelementptr inbounds i8, ptr %4, i64 %call896
  %add.ptr13 = getelementptr inbounds i8, ptr %add.ptr12, i64 1
  %5 = load ptr, ptr %add.ptr1098, align 8, !tbaa !5
  %cmp15.not = icmp eq ptr %add.ptr13, %5
  %spec.select = select i1 %cmp15.not, i8 %reuse_operand_strings.095, i8 0
  %call8 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %5) #12
  %add = add i64 %add997, 1
  %add9 = add i64 %add, %call8
  %add.ptr10 = getelementptr inbounds ptr, ptr %add.ptr1098, i64 1
  %cmp11 = icmp ult ptr %add.ptr10, %operand_lim.0
  br i1 %cmp11, label %if.end17, label %do.end.loopexit

do.end.loopexit:                                  ; preds = %if.end17
  %6 = and i8 %spec.select, 1
  %7 = icmp eq i8 %6, 0
  br label %do.end

do.end:                                           ; preds = %do.end.loopexit, %if.end
  %reuse_operand_strings.0.lcssa = phi i1 [ false, %if.end ], [ %7, %do.end.loopexit ]
  %add9.lcssa = phi i64 [ %add992, %if.end ], [ %add9, %do.end.loopexit ]
  %cmp20 = icmp ult i64 %add9.lcssa, 4097
  %spec.select86 = select i1 %cmp20, i64 8192, i64 %add9.lcssa
  %tobool.not = select i1 %cmp20, i1 true, i1 %reuse_operand_strings.0.lcssa
  br i1 %tobool.not, label %do.body24.us.preheader, label %do.body24

do.body24.us.preheader:                           ; preds = %do.end
  %call23 = tail call noalias nonnull ptr @xmalloc(i64 noundef %spec.select86) #14
  br label %do.body24.us

do.body24.us:                                     ; preds = %do.body24.us, %do.body24.us.preheader
  %operandp.1.us = phi ptr [ %incdec.ptr35.us, %do.body24.us ], [ %add.ptr, %do.body24.us.preheader ]
  %bufused.0.us = phi i64 [ %inc.us, %do.body24.us ], [ 0, %do.body24.us.preheader ]
  %8 = load ptr, ptr %operandp.1.us, align 8, !tbaa !5
  %call26.us = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %8) #12
  %add.ptr29.us = getelementptr inbounds i8, ptr %call23, i64 %bufused.0.us
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %add.ptr29.us, ptr noundef nonnull align 1 %8, i64 noundef %call26.us, i1 noundef false) #11
  %add32.us = add i64 %call26.us, %bufused.0.us
  %inc.us = add i64 %add32.us, 1
  %arrayidx33.us = getelementptr inbounds i8, ptr %call23, i64 %add32.us
  store i8 32, ptr %arrayidx33.us, align 1, !tbaa !11
  %incdec.ptr35.us = getelementptr inbounds ptr, ptr %operandp.1.us, i64 1
  %cmp36.us = icmp ult ptr %incdec.ptr35.us, %operand_lim.0
  br i1 %cmp36.us, label %do.body24.us, label %do.end37, !llvm.loop !12

do.body24:                                        ; preds = %do.body24, %do.end
  %operandp.1 = phi ptr [ %incdec.ptr35, %do.body24 ], [ %add.ptr, %do.end ]
  %bufused.0 = phi i64 [ %inc, %do.body24 ], [ 0, %do.end ]
  %9 = load ptr, ptr %operandp.1, align 8, !tbaa !5
  %call26 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %9) #12
  %add32 = add i64 %call26, %bufused.0
  %inc = add i64 %add32, 1
  %arrayidx33 = getelementptr inbounds i8, ptr %3, i64 %add32
  store i8 32, ptr %arrayidx33, align 1, !tbaa !11
  %incdec.ptr35 = getelementptr inbounds ptr, ptr %operandp.1, i64 1
  %cmp36 = icmp ult ptr %incdec.ptr35, %operand_lim.0
  br i1 %cmp36, label %do.body24, label %do.end37, !llvm.loop !12

do.end37:                                         ; preds = %do.body24, %do.body24.us
  %cond109 = phi ptr [ %call23, %do.body24.us ], [ %3, %do.body24 ]
  %.us-phi = phi i64 [ %add32.us, %do.body24.us ], [ %add32, %do.body24 ]
  %.us-phi100 = phi i64 [ %inc.us, %do.body24.us ], [ %inc, %do.body24 ]
  %arrayidx33.le = getelementptr inbounds i8, ptr %cond109, i64 %.us-phi
  store i8 10, ptr %arrayidx33.le, align 1, !tbaa !11
  %div = udiv i64 %spec.select86, %.us-phi100
  %dec101 = add i64 %div, -1
  %tobool39.not102 = icmp eq i64 %dec101, 0
  br i1 %tobool39.not102, label %while.cond.preheader, label %for.body.preheader

for.body.preheader:                               ; preds = %do.end37
  %10 = add i64 %div, -2
  %xtraiter = and i64 %dec101, 3
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %for.body.prol.loopexit, label %for.body.prol

for.body.prol:                                    ; preds = %for.body.prol, %for.body.preheader
  %dec104.prol = phi i64 [ %dec.prol, %for.body.prol ], [ %dec101, %for.body.preheader ]
  %bufused.1103.prol = phi i64 [ %add42.prol, %for.body.prol ], [ %.us-phi100, %for.body.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %for.body.prol ], [ 0, %for.body.preheader ]
  %add.ptr40.prol = getelementptr inbounds i8, ptr %cond109, i64 %bufused.1103.prol
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %add.ptr40.prol, ptr noundef nonnull align 1 %cond109, i64 noundef %.us-phi100, i1 noundef false) #11
  %add42.prol = add i64 %bufused.1103.prol, %.us-phi100
  %dec.prol = add i64 %dec104.prol, -1
  %prol.iter.next = add i64 %prol.iter, 1
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %for.body.prol.loopexit, label %for.body.prol, !llvm.loop !14

for.body.prol.loopexit:                           ; preds = %for.body.prol, %for.body.preheader
  %add42.lcssa.unr = phi i64 [ undef, %for.body.preheader ], [ %add42.prol, %for.body.prol ]
  %dec104.unr = phi i64 [ %dec101, %for.body.preheader ], [ %dec.prol, %for.body.prol ]
  %bufused.1103.unr = phi i64 [ %.us-phi100, %for.body.preheader ], [ %add42.prol, %for.body.prol ]
  %11 = icmp ult i64 %10, 3
  br i1 %11, label %while.cond.preheader, label %for.body

while.cond.preheader:                             ; preds = %for.body, %for.body.prol.loopexit, %do.end37
  %bufused.1.lcssa = phi i64 [ %.us-phi100, %do.end37 ], [ %add42.lcssa.unr, %for.body.prol.loopexit ], [ %add42.3, %for.body ]
  br label %while.cond

for.body:                                         ; preds = %for.body, %for.body.prol.loopexit
  %dec104 = phi i64 [ %dec.3, %for.body ], [ %dec104.unr, %for.body.prol.loopexit ]
  %bufused.1103 = phi i64 [ %add42.3, %for.body ], [ %bufused.1103.unr, %for.body.prol.loopexit ]
  %add.ptr40 = getelementptr inbounds i8, ptr %cond109, i64 %bufused.1103
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %add.ptr40, ptr noundef nonnull align 1 %cond109, i64 noundef %.us-phi100, i1 noundef false) #11
  %add42 = add i64 %bufused.1103, %.us-phi100
  %add.ptr40.1 = getelementptr inbounds i8, ptr %cond109, i64 %add42
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %add.ptr40.1, ptr noundef nonnull align 1 %cond109, i64 noundef %.us-phi100, i1 noundef false) #11
  %add42.1 = add i64 %add42, %.us-phi100
  %add.ptr40.2 = getelementptr inbounds i8, ptr %cond109, i64 %add42.1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %add.ptr40.2, ptr noundef nonnull align 1 %cond109, i64 noundef %.us-phi100, i1 noundef false) #11
  %add42.2 = add i64 %add42.1, %.us-phi100
  %add.ptr40.3 = getelementptr inbounds i8, ptr %cond109, i64 %add42.2
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %add.ptr40.3, ptr noundef nonnull align 1 %cond109, i64 noundef %.us-phi100, i1 noundef false) #11
  %add42.3 = add i64 %add42.2, %.us-phi100
  %dec.3 = add i64 %dec104, -4
  %tobool39.not.3 = icmp eq i64 %dec.3, 0
  br i1 %tobool39.not.3, label %while.cond.preheader, label %for.body, !llvm.loop !16

while.cond:                                       ; preds = %while.cond, %while.cond.preheader
  %call43 = tail call i64 @full_write(i32 noundef 1, ptr noundef %cond109, i64 noundef %bufused.1.lcssa) #11
  %cmp44 = icmp eq i64 %call43, %bufused.1.lcssa
  br i1 %cmp44, label %while.cond, label %while.end, !llvm.loop !17

while.end:                                        ; preds = %while.cond
  %call45 = tail call ptr @__errno_location() #15
  %12 = load i32, ptr %call45, align 4, !tbaa !9
  %call46 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.12, i32 noundef 5) #11
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %12, ptr noundef %call46) #16
  ret i32 1
}

declare void @set_program_name(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare ptr @bindtextdomain(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare ptr @textdomain(ptr noundef) local_unnamed_addr #1

declare void @close_stdout() #2

; Function Attrs: nounwind
declare i32 @atexit(ptr noundef) local_unnamed_addr #1

declare ptr @proper_name_lite(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @parse_gnu_standard_options_only(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: allocsize(0)
declare noalias nonnull ptr @xmalloc(i64 noundef) local_unnamed_addr #7

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #8

declare i64 @full_write(i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #9

; Function Attrs: cold
declare void @error(i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #10

attributes #0 = { noreturn nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { cold "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nounwind }
attributes #12 = { nounwind willreturn memory(read) }
attributes #13 = { noreturn nounwind }
attributes #14 = { nounwind allocsize(0) }
attributes #15 = { nounwind willreturn memory(none) }
attributes #16 = { cold nounwind }

!llvm.ident = !{!0}
!llvm.module.flags = !{!1, !2, !3, !4}

!0 = !{!"clang version 18.1.8 (https://github.com/llvm/llvm-project.git 3b5b5c1ec4a3095ab096dd780e84d7ab81f3d7ff)"}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!6, !6, i64 0, i64 8}
!6 = !{!7, i64 8, !"any pointer"}
!7 = !{!8, i64 1, !"omnipotent char"}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !10, i64 0, i64 4}
!10 = !{!7, i64 4, !"int"}
!11 = !{!7, !7, i64 0, i64 1}
!12 = distinct !{!12, !13}
!13 = !{!"llvm.loop.mustprogress"}
!14 = distinct !{!14, !15}
!15 = !{!"llvm.loop.unroll.disable"}
!16 = distinct !{!16, !13}
!17 = distinct !{!17, !13}
