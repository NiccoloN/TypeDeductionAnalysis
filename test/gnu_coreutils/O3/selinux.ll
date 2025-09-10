; ModuleID = 'llvm-link'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.FTS = type { ptr, ptr, ptr, i64, ptr, i32, i32, i64, i64, ptr, i32, ptr, %union.anon, %struct.I_ring }
%union.anon = type { ptr }
%struct.I_ring = type { [4 x i32], i32, i32, i32, i8 }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }

; Function Attrs: nounwind uwtable
define dso_local i32 @defaultcon(ptr noundef %selabel_handle, ptr noundef %path, i32 noundef %mode) local_unnamed_addr #0 {
entry:
  %scon_raw.i = alloca ptr, align 8
  %tcon_raw.i = alloca ptr, align 8
  %scon_raw = alloca ptr, align 8
  %tcon_raw = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %scon_raw) #7
  store ptr null, ptr %scon_raw, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tcon_raw) #7
  store ptr null, ptr %tcon_raw, align 8, !tbaa !5
  %0 = load i8, ptr %path, align 1, !tbaa !9
  %cmp = icmp eq i8 %0, 47
  br i1 %cmp, label %if.end3, label %if.then

if.then:                                          ; preds = %entry
  %call = tail call noalias ptr @canonicalize_filename_mode(ptr noundef nonnull %path, i32 noundef 2) #7
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.then.quit_crit_edge, label %if.end3

if.then.quit_crit_edge:                           ; preds = %if.then
  %.pre = tail call ptr @__errno_location() #8
  br label %quit

if.end3:                                          ; preds = %if.then, %entry
  %newpath.0 = phi ptr [ null, %entry ], [ %call, %if.then ]
  %path.addr.0 = phi ptr [ %path, %entry ], [ %call, %if.then ]
  %call4 = call i32 @selabel_lookup_raw(ptr noundef %selabel_handle, ptr noundef nonnull %scon_raw, ptr noundef nonnull %path.addr.0, i32 noundef %mode) #7
  %cmp5 = icmp slt i32 %call4, 0
  br i1 %cmp5, label %if.then7, label %if.end14

if.then7:                                         ; preds = %if.end3
  %call8 = tail call ptr @__errno_location() #8
  %1 = load i32, ptr %call8, align 4, !tbaa !10
  %cmp9 = icmp eq i32 %1, 2
  br i1 %cmp9, label %if.then11, label %quit

if.then11:                                        ; preds = %if.then7
  store i32 61, ptr %call8, align 4, !tbaa !10
  br label %quit

if.end14:                                         ; preds = %if.end3
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %scon_raw.i) #7
  store ptr null, ptr %scon_raw.i, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tcon_raw.i) #7
  store ptr null, ptr %tcon_raw.i, align 8, !tbaa !5
  %call.i = call noalias nonnull ptr @dir_name(ptr noundef nonnull %path.addr.0) #7
  %call1.i = call i32 @getcon_raw(ptr noundef nonnull %scon_raw.i) #7
  %cmp.i = icmp slt i32 %call1.i, 0
  br i1 %cmp.i, label %quit.critedge, label %if.end3.i

if.end3.i:                                        ; preds = %if.end14
  %call4.i = call i32 @rpl_getfilecon_raw(ptr noundef nonnull %call.i, ptr noundef nonnull %tcon_raw.i) #7
  %cmp5.i = icmp slt i32 %call4.i, 0
  br i1 %cmp5.i, label %quit.critedge, label %if.end7.i

if.end7.i:                                        ; preds = %if.end3.i
  %call8.i = call zeroext i16 @mode_to_security_class(i32 noundef %mode) #7
  %tobool9.not.i = icmp eq i16 %call8.i, 0
  br i1 %tobool9.not.i, label %quit.critedge, label %if.end11.i

if.end11.i:                                       ; preds = %if.end7.i
  %2 = load ptr, ptr %scon_raw.i, align 8, !tbaa !5
  %3 = load ptr, ptr %tcon_raw.i, align 8, !tbaa !5
  %call12.i = call i32 @security_compute_create_raw(ptr noundef %2, ptr noundef %3, i16 noundef zeroext %call8.i, ptr noundef nonnull %tcon_raw) #7
  %4 = icmp slt i32 %call12.i, 0
  %call13.i = tail call ptr @__errno_location() #8
  %5 = load i32, ptr %call13.i, align 4, !tbaa !10
  call void @free(ptr noundef nonnull %call.i) #7
  %6 = load ptr, ptr %scon_raw.i, align 8, !tbaa !5
  call void @freecon(ptr noundef %6) #7
  %7 = load ptr, ptr %tcon_raw.i, align 8, !tbaa !5
  call void @freecon(ptr noundef %7) #7
  store i32 %5, ptr %call13.i, align 4, !tbaa !10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tcon_raw.i) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %scon_raw.i) #7
  br i1 %4, label %quit, label %if.end19

if.end19:                                         ; preds = %if.end11.i
  %8 = load ptr, ptr %scon_raw, align 8, !tbaa !5
  %call20 = call ptr @context_new(ptr noundef %8) #7
  %tobool21.not = icmp eq ptr %call20, null
  br i1 %tobool21.not, label %quit, label %if.end23

if.end23:                                         ; preds = %if.end19
  %9 = load ptr, ptr %tcon_raw, align 8, !tbaa !5
  %call24 = call ptr @context_new(ptr noundef %9) #7
  %tobool25.not = icmp eq ptr %call24, null
  br i1 %tobool25.not, label %quit, label %if.end27

if.end27:                                         ; preds = %if.end23
  %call28 = call ptr @context_type_get(ptr noundef nonnull %call20) #7
  %tobool29.not = icmp eq ptr %call28, null
  br i1 %tobool29.not, label %quit, label %if.end31

if.end31:                                         ; preds = %if.end27
  %call32 = call i32 @context_type_set(ptr noundef nonnull %call24, ptr noundef nonnull %call28) #7
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %if.end35, label %quit

if.end35:                                         ; preds = %if.end31
  %call36 = call ptr @context_str(ptr noundef nonnull %call24) #7
  %tobool37.not = icmp eq ptr %call36, null
  br i1 %tobool37.not, label %quit, label %if.end39

if.end39:                                         ; preds = %if.end35
  %call40 = call i32 @setfscreatecon_raw(ptr noundef nonnull %call36) #7
  br label %quit

quit.critedge:                                    ; preds = %if.end7.i, %if.end3.i, %if.end14
  %call13.i.c = tail call ptr @__errno_location() #8
  %10 = load i32, ptr %call13.i.c, align 4, !tbaa !10
  call void @free(ptr noundef nonnull %call.i) #7
  %11 = load ptr, ptr %scon_raw.i, align 8, !tbaa !5
  call void @freecon(ptr noundef %11) #7
  %12 = load ptr, ptr %tcon_raw.i, align 8, !tbaa !5
  call void @freecon(ptr noundef %12) #7
  store i32 %10, ptr %call13.i.c, align 4, !tbaa !10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tcon_raw.i) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %scon_raw.i) #7
  br label %quit

quit:                                             ; preds = %quit.critedge, %if.end39, %if.end35, %if.end31, %if.end27, %if.end23, %if.end19, %if.end11.i, %if.then11, %if.then7, %if.then.quit_crit_edge
  %call41.pre-phi = phi ptr [ %.pre, %if.then.quit_crit_edge ], [ %call13.i.c, %quit.critedge ], [ %call13.i, %if.end35 ], [ %call13.i, %if.end31 ], [ %call13.i, %if.end27 ], [ %call13.i, %if.end23 ], [ %call13.i, %if.end19 ], [ %call13.i, %if.end11.i ], [ %call8, %if.then7 ], [ %call8, %if.then11 ], [ %call13.i, %if.end39 ]
  %tcontext.0 = phi ptr [ null, %if.then.quit_crit_edge ], [ null, %quit.critedge ], [ %call24, %if.end35 ], [ %call24, %if.end31 ], [ %call24, %if.end27 ], [ null, %if.end23 ], [ null, %if.end19 ], [ null, %if.end11.i ], [ null, %if.then7 ], [ null, %if.then11 ], [ %call24, %if.end39 ]
  %scontext.0 = phi ptr [ null, %if.then.quit_crit_edge ], [ null, %quit.critedge ], [ %call20, %if.end35 ], [ %call20, %if.end31 ], [ %call20, %if.end27 ], [ %call20, %if.end23 ], [ null, %if.end19 ], [ null, %if.end11.i ], [ null, %if.then7 ], [ null, %if.then11 ], [ %call20, %if.end39 ]
  %rc.0 = phi i32 [ -1, %if.then.quit_crit_edge ], [ -1, %quit.critedge ], [ -1, %if.end35 ], [ -1, %if.end31 ], [ -1, %if.end27 ], [ -1, %if.end23 ], [ -1, %if.end19 ], [ -1, %if.end11.i ], [ -1, %if.then7 ], [ -1, %if.then11 ], [ %call40, %if.end39 ]
  %newpath.1 = phi ptr [ null, %if.then.quit_crit_edge ], [ %newpath.0, %quit.critedge ], [ %newpath.0, %if.end35 ], [ %newpath.0, %if.end31 ], [ %newpath.0, %if.end27 ], [ %newpath.0, %if.end23 ], [ %newpath.0, %if.end19 ], [ %newpath.0, %if.end11.i ], [ %newpath.0, %if.then7 ], [ %newpath.0, %if.then11 ], [ %newpath.0, %if.end39 ]
  %13 = load i32, ptr %call41.pre-phi, align 4, !tbaa !10
  call void @context_free(ptr noundef %scontext.0) #7
  call void @context_free(ptr noundef %tcontext.0) #7
  %14 = load ptr, ptr %scon_raw, align 8, !tbaa !5
  call void @freecon(ptr noundef %14) #7
  %15 = load ptr, ptr %tcon_raw, align 8, !tbaa !5
  call void @freecon(ptr noundef %15) #7
  call void @free(ptr noundef %newpath.1) #7
  store i32 %13, ptr %call41.pre-phi, align 4, !tbaa !10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tcon_raw) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %scon_raw) #7
  ret i32 %rc.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare noalias ptr @canonicalize_filename_mode(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #3

declare i32 @selabel_lookup_raw(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare noalias nonnull ptr @dir_name(ptr noundef) local_unnamed_addr #2

declare i32 @getcon_raw(ptr noundef) local_unnamed_addr #2

declare i32 @rpl_getfilecon_raw(ptr noundef, ptr noundef) local_unnamed_addr #2

declare zeroext i16 @mode_to_security_class(i32 noundef) local_unnamed_addr #2

declare i32 @security_compute_create_raw(ptr noundef, ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #4

declare void @freecon(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

declare ptr @context_new(ptr noundef) local_unnamed_addr #2

declare ptr @context_type_get(ptr noundef) local_unnamed_addr #2

declare i32 @context_type_set(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @context_str(ptr noundef) local_unnamed_addr #2

declare i32 @setfscreatecon_raw(ptr noundef) local_unnamed_addr #2

declare void @context_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local zeroext i1 @restorecon(ptr noundef %selabel_handle, ptr noundef %path, i1 noundef zeroext %recurse) local_unnamed_addr #0 {
entry:
  %ftspath = alloca [2 x ptr], align 16
  %0 = load i8, ptr %path, align 1, !tbaa !9
  %cmp = icmp eq i8 %0, 47
  br i1 %cmp, label %if.end3, label %if.then

if.then:                                          ; preds = %entry
  %call = tail call noalias ptr @canonicalize_filename_mode(ptr noundef nonnull %path, i32 noundef 2) #7
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %cleanup, label %if.end3

if.end3:                                          ; preds = %if.then, %entry
  %newpath.0 = phi ptr [ null, %entry ], [ %call, %if.then ]
  %path.addr.0 = phi ptr [ %path, %entry ], [ %call, %if.then ]
  br i1 %recurse, label %if.end13, label %if.then5

if.then5:                                         ; preds = %if.end3
  %call6 = tail call fastcc i32 @restorecon_private(ptr noundef %selabel_handle, ptr noundef nonnull %path.addr.0)
  %cmp7 = icmp ne i32 %call6, -1
  %call10 = tail call ptr @__errno_location() #8
  %1 = load i32, ptr %call10, align 4, !tbaa !10
  tail call void @free(ptr noundef %newpath.0) #7
  store i32 %1, ptr %call10, align 4, !tbaa !10
  br label %cleanup

if.end13:                                         ; preds = %if.end3
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %ftspath) #7
  store ptr %path.addr.0, ptr %ftspath, align 16, !tbaa !5
  %arrayinit.element = getelementptr inbounds ptr, ptr %ftspath, i64 1
  store ptr null, ptr %arrayinit.element, align 8, !tbaa !5
  %call14 = call noalias nonnull ptr @xfts_open(ptr noundef nonnull %ftspath, i32 noundef 16, ptr noundef null) #7
  %call1646 = call ptr @rpl_fts_read(ptr noundef nonnull %call14) #7
  %tobool17.not47 = icmp eq ptr %call1646, null
  br i1 %tobool17.not47, label %for.cond.cleanup, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %if.end13
  %fts_path = getelementptr inbounds %struct.FTS, ptr %call14, i64 0, i32 4
  br label %for.body

for.cond.cleanup:                                 ; preds = %if.end23, %if.end13
  %err15.0.lcssa = phi i32 [ 0, %if.end13 ], [ %err15.1, %if.end23 ]
  %call24 = tail call ptr @__errno_location() #8
  %2 = load i32, ptr %call24, align 4, !tbaa !10
  %cmp25.not = icmp eq i32 %2, 0
  %spec.select = select i1 %cmp25.not, i32 %err15.0.lcssa, i32 %2
  %call30 = call i32 @rpl_fts_close(ptr noundef nonnull %call14) #7
  %cmp31.not = icmp eq i32 %call30, 0
  br i1 %cmp31.not, label %if.end35, label %if.then33

for.body:                                         ; preds = %if.end23, %for.body.lr.ph
  %err15.048 = phi i32 [ 0, %for.body.lr.ph ], [ %err15.1, %if.end23 ]
  %3 = load ptr, ptr %fts_path, align 8, !tbaa !12
  %call18 = call fastcc i32 @restorecon_private(ptr noundef %selabel_handle, ptr noundef %3)
  %cmp19 = icmp slt i32 %call18, 0
  br i1 %cmp19, label %if.then21, label %if.end23

if.then21:                                        ; preds = %for.body
  %call22 = tail call ptr @__errno_location() #8
  %4 = load i32, ptr %call22, align 4, !tbaa !10
  br label %if.end23

if.end23:                                         ; preds = %if.then21, %for.body
  %err15.1 = phi i32 [ %4, %if.then21 ], [ %err15.048, %for.body ]
  %call16 = call ptr @rpl_fts_read(ptr noundef nonnull %call14) #7
  %tobool17.not = icmp eq ptr %call16, null
  br i1 %tobool17.not, label %for.cond.cleanup, label %for.body, !llvm.loop !17

if.then33:                                        ; preds = %for.cond.cleanup
  %5 = load i32, ptr %call24, align 4, !tbaa !10
  br label %if.end35

if.end35:                                         ; preds = %if.then33, %for.cond.cleanup
  %err15.3 = phi i32 [ %5, %if.then33 ], [ %spec.select, %for.cond.cleanup ]
  call void @free(ptr noundef %newpath.0) #7
  %tobool36.not = icmp eq i32 %err15.3, 0
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %ftspath) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end35, %if.then5, %if.then
  %retval.0 = phi i1 [ %tobool36.not, %if.end35 ], [ %cmp7, %if.then5 ], [ false, %if.then ]
  ret i1 %retval.0
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @restorecon_private(ptr noundef %selabel_handle, ptr noundef %path) unnamed_addr #0 {
entry:
  %sb = alloca %struct.stat, align 8
  %scon_raw = alloca ptr, align 8
  %tcon_raw = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %sb) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %scon_raw) #7
  store ptr null, ptr %scon_raw, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tcon_raw) #7
  store ptr null, ptr %tcon_raw, align 8, !tbaa !5
  %tobool.not = icmp eq ptr %selabel_handle, null
  br i1 %tobool.not, label %if.then, label %if.end9

if.then:                                          ; preds = %entry
  %call = call i32 @getfscreatecon_raw(ptr noundef nonnull %tcon_raw) #7
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %if.then
  %0 = load ptr, ptr %tcon_raw, align 8, !tbaa !5
  %tobool2.not = icmp eq ptr %0, null
  br i1 %tobool2.not, label %if.then3, label %if.end5

if.then3:                                         ; preds = %if.end
  %call4 = tail call ptr @__errno_location() #8
  store i32 61, ptr %call4, align 4, !tbaa !10
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %call6 = call i32 @lsetfilecon_raw(ptr noundef %path, ptr noundef nonnull %0) #7
  %call7 = tail call ptr @__errno_location() #8
  %1 = load i32, ptr %call7, align 4, !tbaa !10
  %2 = load ptr, ptr %tcon_raw, align 8, !tbaa !5
  call void @freecon(ptr noundef %2) #7
  store i32 %1, ptr %call7, align 4, !tbaa !10
  br label %cleanup

if.end9:                                          ; preds = %entry
  %call10 = tail call i32 (ptr, i32, ...) @open(ptr noundef %path, i32 noundef 131072) #7
  %cmp11 = icmp eq i32 %call10, -1
  br i1 %cmp11, label %land.lhs.true, label %if.then17

land.lhs.true:                                    ; preds = %if.end9
  %call12 = tail call ptr @__errno_location() #8
  %3 = load i32, ptr %call12, align 4, !tbaa !10
  %cmp13.not = icmp eq i32 %3, 40
  br i1 %cmp13.not, label %if.else, label %quit.thread

if.then17:                                        ; preds = %if.end9
  %call18 = call i32 @fstat(i32 noundef %call10, ptr noundef nonnull %sb) #7
  %cmp19 = icmp slt i32 %call18, 0
  br i1 %cmp19, label %quit.thread122, label %if.end26

if.else:                                          ; preds = %land.lhs.true
  %call22 = call i32 @lstat(ptr noundef %path, ptr noundef nonnull %sb) #7
  %cmp23 = icmp slt i32 %call22, 0
  br i1 %cmp23, label %quit.thread, label %if.end26

if.end26:                                         ; preds = %if.else, %if.then17
  %st_mode = getelementptr inbounds %struct.stat, ptr %sb, i64 0, i32 3
  %4 = load i32, ptr %st_mode, align 8, !tbaa !19
  %call27 = call i32 @selabel_lookup_raw(ptr noundef nonnull %selabel_handle, ptr noundef nonnull %scon_raw, ptr noundef %path, i32 noundef %4) #7
  %cmp28 = icmp slt i32 %call27, 0
  br i1 %cmp28, label %if.then29, label %if.end35

if.then29:                                        ; preds = %if.end26
  %call30 = tail call ptr @__errno_location() #8
  %5 = load i32, ptr %call30, align 4, !tbaa !10
  %cmp31 = icmp eq i32 %5, 2
  br i1 %cmp31, label %if.then32, label %quit

if.then32:                                        ; preds = %if.then29
  store i32 61, ptr %call30, align 4, !tbaa !10
  br label %quit

if.end35:                                         ; preds = %if.end26
  %6 = load ptr, ptr %scon_raw, align 8, !tbaa !5
  %call36 = call ptr @context_new(ptr noundef %6) #7
  %tobool37.not = icmp eq ptr %call36, null
  br i1 %tobool37.not, label %quit, label %if.end39

if.end39:                                         ; preds = %if.end35
  br i1 %cmp11, label %if.else46, label %if.then41

if.then41:                                        ; preds = %if.end39
  %call42 = call i32 @rpl_fgetfilecon_raw(i32 noundef %call10, ptr noundef nonnull %tcon_raw) #7
  %cmp43 = icmp slt i32 %call42, 0
  br i1 %cmp43, label %quit.thread122, label %if.end51

if.else46:                                        ; preds = %if.end39
  %call47 = call i32 @rpl_lgetfilecon_raw(ptr noundef %path, ptr noundef nonnull %tcon_raw) #7
  %cmp48 = icmp slt i32 %call47, 0
  br i1 %cmp48, label %quit.thread, label %if.end51

if.end51:                                         ; preds = %if.else46, %if.then41
  %7 = load ptr, ptr %tcon_raw, align 8, !tbaa !5
  %call52 = call ptr @context_new(ptr noundef %7) #7
  %tobool53.not = icmp eq ptr %call52, null
  br i1 %tobool53.not, label %quit, label %if.end55

if.end55:                                         ; preds = %if.end51
  %call56 = call ptr @context_type_get(ptr noundef nonnull %call36) #7
  %tobool57.not = icmp eq ptr %call56, null
  br i1 %tobool57.not, label %quit, label %if.end59

if.end59:                                         ; preds = %if.end55
  %call60 = call i32 @context_type_set(ptr noundef nonnull %call52, ptr noundef nonnull %call56) #7
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %if.end63, label %quit

if.end63:                                         ; preds = %if.end59
  %call64 = call ptr @context_str(ptr noundef nonnull %call52) #7
  %tobool65.not = icmp eq ptr %call64, null
  br i1 %tobool65.not, label %quit, label %if.end67

if.end67:                                         ; preds = %if.end63
  br i1 %cmp11, label %if.else71, label %if.then69

if.then69:                                        ; preds = %if.end67
  %call70 = call i32 @fsetfilecon_raw(i32 noundef %call10, ptr noundef nonnull %call64) #7
  br label %quit.thread122

if.else71:                                        ; preds = %if.end67
  %call72 = call i32 @lsetfilecon_raw(ptr noundef %path, ptr noundef nonnull %call64) #7
  br label %quit.thread

quit.thread:                                      ; preds = %if.else71, %if.else46, %if.else, %land.lhs.true
  %tcontext.0.ph = phi ptr [ null, %if.else ], [ null, %if.else46 ], [ %call52, %if.else71 ], [ null, %land.lhs.true ]
  %scontext.0.ph = phi ptr [ null, %if.else ], [ %call36, %if.else46 ], [ %call36, %if.else71 ], [ null, %land.lhs.true ]
  %rc.0.ph = phi i32 [ -1, %if.else ], [ -1, %if.else46 ], [ %call72, %if.else71 ], [ -1, %land.lhs.true ]
  %call75113 = tail call ptr @__errno_location() #8
  %8 = load i32, ptr %call75113, align 4, !tbaa !10
  br label %if.end79

quit.thread122:                                   ; preds = %if.then69, %if.then41, %if.then17
  %tcontext.0.ph119 = phi ptr [ %call52, %if.then69 ], [ null, %if.then41 ], [ null, %if.then17 ]
  %scontext.0.ph120 = phi ptr [ %call36, %if.then69 ], [ %call36, %if.then41 ], [ null, %if.then17 ]
  %rc.0.ph121 = phi i32 [ %call70, %if.then69 ], [ -1, %if.then41 ], [ -1, %if.then17 ]
  %call75126 = tail call ptr @__errno_location() #8
  %9 = load i32, ptr %call75126, align 4, !tbaa !10
  br label %if.then77

quit:                                             ; preds = %if.end63, %if.end59, %if.end55, %if.end51, %if.end35, %if.then32, %if.then29
  %tcontext.0 = phi ptr [ null, %if.then32 ], [ null, %if.then29 ], [ %call52, %if.end59 ], [ %call52, %if.end63 ], [ %call52, %if.end55 ], [ null, %if.end51 ], [ null, %if.end35 ]
  %scontext.0 = phi ptr [ null, %if.then32 ], [ null, %if.then29 ], [ %call36, %if.end59 ], [ %call36, %if.end63 ], [ %call36, %if.end55 ], [ %call36, %if.end51 ], [ null, %if.end35 ]
  %call75 = tail call ptr @__errno_location() #8
  %10 = load i32, ptr %call75, align 4, !tbaa !10
  br i1 %cmp11, label %if.end79, label %if.then77

if.then77:                                        ; preds = %quit, %quit.thread122
  %11 = phi i32 [ %9, %quit.thread122 ], [ %10, %quit ]
  %call75130 = phi ptr [ %call75126, %quit.thread122 ], [ %call75, %quit ]
  %rc.0129 = phi i32 [ %rc.0.ph121, %quit.thread122 ], [ -1, %quit ]
  %scontext.0128 = phi ptr [ %scontext.0.ph120, %quit.thread122 ], [ %scontext.0, %quit ]
  %tcontext.0127 = phi ptr [ %tcontext.0.ph119, %quit.thread122 ], [ %tcontext.0, %quit ]
  %call78 = call i32 @close(i32 noundef %call10) #7
  br label %if.end79

if.end79:                                         ; preds = %if.then77, %quit, %quit.thread
  %12 = phi i32 [ %8, %quit.thread ], [ %11, %if.then77 ], [ %10, %quit ]
  %call75117 = phi ptr [ %call75113, %quit.thread ], [ %call75130, %if.then77 ], [ %call75, %quit ]
  %rc.0116 = phi i32 [ %rc.0.ph, %quit.thread ], [ %rc.0129, %if.then77 ], [ -1, %quit ]
  %scontext.0115 = phi ptr [ %scontext.0.ph, %quit.thread ], [ %scontext.0128, %if.then77 ], [ %scontext.0, %quit ]
  %tcontext.0114 = phi ptr [ %tcontext.0.ph, %quit.thread ], [ %tcontext.0127, %if.then77 ], [ %tcontext.0, %quit ]
  call void @context_free(ptr noundef %scontext.0115) #7
  call void @context_free(ptr noundef %tcontext.0114) #7
  %13 = load ptr, ptr %scon_raw, align 8, !tbaa !5
  call void @freecon(ptr noundef %13) #7
  %14 = load ptr, ptr %tcon_raw, align 8, !tbaa !5
  call void @freecon(ptr noundef %14) #7
  store i32 %12, ptr %call75117, align 4, !tbaa !10
  br label %cleanup

cleanup:                                          ; preds = %if.end79, %if.end5, %if.then3, %if.then
  %retval.0 = phi i32 [ %rc.0116, %if.end79 ], [ %call6, %if.end5 ], [ -1, %if.then3 ], [ -1, %if.then ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tcon_raw) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %scon_raw) #7
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %sb) #7
  ret i32 %retval.0
}

declare noalias nonnull ptr @xfts_open(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare ptr @rpl_fts_read(ptr noundef) local_unnamed_addr #2

declare i32 @rpl_fts_close(ptr noundef) local_unnamed_addr #2

declare i32 @getfscreatecon_raw(ptr noundef) local_unnamed_addr #2

declare i32 @lsetfilecon_raw(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree
declare noundef i32 @open(ptr nocapture noundef readonly, i32 noundef, ...) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noundef i32 @fstat(i32 noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare noundef i32 @lstat(ptr nocapture noundef readonly, ptr nocapture noundef) local_unnamed_addr #6

declare i32 @rpl_fgetfilecon_raw(i32 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @rpl_lgetfilecon_raw(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @fsetfilecon_raw(i32 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @close(i32 noundef) local_unnamed_addr #2

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind }
attributes #8 = { nounwind willreturn memory(none) }

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
!9 = !{!7, !7, i64 0, i64 1}
!10 = !{!11, !11, i64 0, i64 4}
!11 = !{!7, i64 4, !"int"}
!12 = !{!13, !6, i64 32, i64 8}
!13 = !{!7, i64 128, !"", !6, i64 0, i64 8, !6, i64 8, i64 8, !6, i64 16, i64 8, !14, i64 24, i64 8, !6, i64 32, i64 8, !11, i64 40, i64 4, !11, i64 44, i64 4, !14, i64 48, i64 8, !14, i64 56, i64 8, !6, i64 64, i64 8, !11, i64 72, i64 4, !6, i64 80, i64 8, !7, i64 88, i64 8, !15, i64 96, i64 32}
!14 = !{!7, i64 8, !"long"}
!15 = !{!7, i64 32, !"I_ring", !11, i64 0, i64 16, !11, i64 16, i64 4, !11, i64 20, i64 4, !11, i64 24, i64 4, !16, i64 28, i64 1}
!16 = !{!7, i64 1, !"_Bool"}
!17 = distinct !{!17, !18}
!18 = !{!"llvm.loop.mustprogress"}
!19 = !{!20, !11, i64 24, i64 4}
!20 = !{!7, i64 144, !"stat", !14, i64 0, i64 8, !14, i64 8, i64 8, !14, i64 16, i64 8, !11, i64 24, i64 4, !11, i64 28, i64 4, !11, i64 32, i64 4, !11, i64 36, i64 4, !14, i64 40, i64 8, !14, i64 48, i64 8, !14, i64 56, i64 8, !14, i64 64, i64 8, !21, i64 72, i64 16, !21, i64 88, i64 16, !21, i64 104, i64 16, !14, i64 120, i64 24}
!21 = !{!7, i64 16, !"timespec", !14, i64 0, i64 8, !14, i64 8, i64 8}
