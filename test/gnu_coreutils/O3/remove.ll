; ModuleID = 'llvm-link'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.rm_options = type { i8, i32, i8, i8, i8, ptr, i8, i8, i8, i8 }
%struct.FTS = type { ptr, ptr, ptr, i64, ptr, i32, i32, i64, i64, ptr, i32, ptr, %union.anon, %struct.I_ring }
%union.anon = type { ptr }
%struct.I_ring = type { [4 x i32], i32, i32, i32, i8 }
%struct._ftsent = type { ptr, ptr, ptr, ptr, i64, ptr, ptr, ptr, i32, i32, i64, ptr, i64, i64, i16, i16, i16, [1 x %struct.stat], [0 x i8] }
%struct.dirent = type { i64, i64, i16, i8, [256 x i8] }

@.str = private unnamed_addr constant [16 x i8] c"fts_read failed\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"fts_close failed\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"cannot remove %s\00", align 1
@.str.5 = private unnamed_addr constant [51 x i8] c"refusing to remove %s or %s directory: skipping %s\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"..\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.9 = private unnamed_addr constant [45 x i8] c"it is dangerous to operate recursively on %s\00", align 1
@.str.10 = private unnamed_addr constant [58 x i8] c"it is dangerous to operate recursively on %s (same as %s)\00", align 1
@.str.11 = private unnamed_addr constant [49 x i8] c"use --no-preserve-root to override this failsafe\00", align 1
@.str.12 = private unnamed_addr constant [31 x i8] c"failed to stat %s: skipping %s\00", align 1
@.str.13 = private unnamed_addr constant [46 x i8] c"skipping %s, since it's on a different device\00", align 1
@.str.14 = private unnamed_addr constant [37 x i8] c"and --preserve-root=all is in effect\00", align 1
@.str.15 = private unnamed_addr constant [186 x i8] c"WARNING: Circular directory structure.\0AThis almost certainly means that you have a corrupted file system.\0ANOTIFY YOUR SYSTEM MANAGER.\0AThe following directory is part of the cycle:\0A  %s\0A\00", align 1
@.str.16 = private unnamed_addr constant [21 x i8] c"traversal failed: %s\00", align 1
@.str.17 = private unnamed_addr constant [56 x i8] c"unexpected failure: fts_info=%d: %s\0Aplease report to %s\00", align 1
@.str.18 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1
@stderr = external local_unnamed_addr global ptr, align 8
@.str.19 = private unnamed_addr constant [48 x i8] c"%s: descend into write-protected directory %s? \00", align 1
@.str.20 = private unnamed_addr constant [32 x i8] c"%s: descend into directory %s? \00", align 1
@program_name = external local_unnamed_addr global ptr, align 8
@.str.21 = private unnamed_addr constant [51 x i8] c"%s: attempt removal of inaccessible directory %s? \00", align 1
@.str.22 = private unnamed_addr constant [35 x i8] c"%s: remove write-protected %s %s? \00", align 1
@.str.23 = private unnamed_addr constant [19 x i8] c"%s: remove %s %s? \00", align 1
@.str.24 = private unnamed_addr constant [22 x i8] c"removed directory %s\0A\00", align 1
@.str.25 = private unnamed_addr constant [12 x i8] c"removed %s\0A\00", align 1

; Function Attrs: nounwind uwtable
define dso_local i32 @rm(ptr noundef %file, ptr nocapture noundef readonly %x) local_unnamed_addr #0 {
entry:
  %dir_status.i = alloca i32, align 4
  %statbuf.i = alloca %struct.stat, align 8
  %0 = load ptr, ptr %file, align 8, !tbaa !5
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %if.end33, label %if.then

if.then:                                          ; preds = %entry
  %one_file_system = getelementptr inbounds %struct.rm_options, ptr %x, i64 0, i32 2
  %1 = load i8, ptr %one_file_system, align 8, !tbaa !9, !range !13, !noundef !14
  %tobool1.not = icmp eq i8 %1, 0
  %spec.select = select i1 %tobool1.not, i32 536, i32 600
  %call = tail call noalias nonnull ptr @xfts_open(ptr noundef nonnull %file, i32 noundef %spec.select, ptr noundef null) #11
  %call373 = tail call ptr @rpl_fts_read(ptr noundef nonnull %call) #11
  %cmp74 = icmp eq ptr %call373, null
  br i1 %cmp74, label %if.then4, label %if.end11.lr.ph

if.end11.lr.ph:                                   ; preds = %if.then
  %fts_dev117.i = getelementptr inbounds %struct.FTS, ptr %call, i64 0, i32 3
  %recursive.i = getelementptr inbounds %struct.rm_options, ptr %x, i64 0, i32 3
  %remove_empty_directories.i = getelementptr inbounds %struct.rm_options, ptr %x, i64 0, i32 4
  %root_dev_ino.i = getelementptr inbounds %struct.rm_options, ptr %x, i64 0, i32 5
  %preserve_all_root.i = getelementptr inbounds %struct.rm_options, ptr %x, i64 0, i32 6
  br label %if.end11

if.then4:                                         ; preds = %cleanup, %if.then
  %rm_status.0.lcssa = phi i32 [ 2, %if.then ], [ %rm_status.3, %cleanup ]
  %call5 = tail call ptr @__errno_location() #12
  %2 = load i32, ptr %call5, align 4, !tbaa !15
  %cmp6.not = icmp eq i32 %2, 0
  br i1 %cmp6.not, label %while.end, label %if.then7

if.then7:                                         ; preds = %if.then4
  %call9 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str, i32 noundef 5) #11
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %2, ptr noundef %call9) #13
  br label %while.end

if.end11:                                         ; preds = %cleanup, %if.end11.lr.ph
  %call377 = phi ptr [ %call373, %if.end11.lr.ph ], [ %call3, %cleanup ]
  %rm_status.075 = phi i32 [ 2, %if.end11.lr.ph ], [ %rm_status.3, %cleanup ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dir_status.i) #11
  store i32 -2, ptr %dir_status.i, align 4, !tbaa !15
  %fts_info.i = getelementptr inbounds %struct._ftsent, ptr %call377, i64 0, i32 14
  %3 = load i16, ptr %fts_info.i, align 8, !tbaa !16
  switch i16 %3, label %sw.default.i [
    i16 1, label %sw.bb.i
    i16 8, label %sw.bb101.i
    i16 10, label %sw.bb101.i
    i16 12, label %sw.bb101.i
    i16 13, label %sw.bb101.i
    i16 6, label %sw.bb101.i
    i16 4, label %sw.bb101.i
    i16 11, label %sw.bb101.i
    i16 3, label %sw.bb101.i
    i16 2, label %do.body148.i
    i16 7, label %sw.bb154.i
  ]

sw.bb.i:                                          ; preds = %if.end11
  %4 = load i8, ptr %recursive.i, align 1, !tbaa !18, !range !13, !noundef !14
  %tobool.not.i = icmp eq i8 %4, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %if.end.i

land.lhs.true.i:                                  ; preds = %sw.bb.i
  %5 = load i8, ptr %remove_empty_directories.i, align 2, !tbaa !19, !range !13, !noundef !14
  %tobool1.not.i = icmp eq i8 %5, 0
  br i1 %tobool1.not.i, label %if.then.i, label %land.lhs.true3.i

land.lhs.true3.i:                                 ; preds = %land.lhs.true.i
  %call.i = call fastcc i32 @get_dir_status(ptr noundef nonnull %call, ptr noundef nonnull %call377, ptr noundef nonnull %dir_status.i)
  %cmp.not.i = icmp eq i32 %call.i, 0
  br i1 %cmp.not.i, label %land.lhs.true3.if.then_crit_edge.i, label %if.end.i

land.lhs.true3.if.then_crit_edge.i:               ; preds = %land.lhs.true3.i
  %.pre.i = load i8, ptr %remove_empty_directories.i, align 2, !tbaa !19, !range !13
  %6 = icmp eq i8 %.pre.i, 0
  %7 = select i1 %6, i32 21, i32 39
  br label %if.then.i

if.then.i:                                        ; preds = %land.lhs.true3.if.then_crit_edge.i, %land.lhs.true.i
  %tobool6.not.i = phi i32 [ %7, %land.lhs.true3.if.then_crit_edge.i ], [ 21, %land.lhs.true.i ]
  %call8.i = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.4, i32 noundef 5) #11
  %fts_path.i = getelementptr inbounds %struct._ftsent, ptr %call377, i64 0, i32 7
  %8 = load ptr, ptr %fts_path.i, align 8, !tbaa !5
  %call9.i = tail call ptr @quotearg_style(i32 noundef 4, ptr noundef %8) #11
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %tobool6.not.i, ptr noundef %call8.i, ptr noundef %call9.i) #13
  %p.0.in6.i.i = getelementptr inbounds %struct._ftsent, ptr %call377, i64 0, i32 1
  %p.07.i.i = load ptr, ptr %p.0.in6.i.i, align 8, !tbaa !5
  %fts_level8.i.i = getelementptr inbounds %struct._ftsent, ptr %p.07.i.i, i64 0, i32 12
  %9 = load i64, ptr %fts_level8.i.i, align 8, !tbaa !20
  %cmp9.i.i = icmp sgt i64 %9, -1
  br i1 %cmp9.i.i, label %for.body.i.i, label %mark_ancestor_dirs.exit.i

for.body.i.i:                                     ; preds = %if.end.i.i, %if.then.i
  %p.010.i.i = phi ptr [ %p.0.i.i, %if.end.i.i ], [ %p.07.i.i, %if.then.i ]
  %fts_number.i.i = getelementptr inbounds %struct._ftsent, ptr %p.010.i.i, i64 0, i32 4
  %10 = load i64, ptr %fts_number.i.i, align 8, !tbaa !20
  %tobool.not.i.i = icmp eq i64 %10, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %mark_ancestor_dirs.exit.i

if.end.i.i:                                       ; preds = %for.body.i.i
  store i64 1, ptr %fts_number.i.i, align 8, !tbaa !20
  %p.0.in.i.i = getelementptr inbounds %struct._ftsent, ptr %p.010.i.i, i64 0, i32 1
  %p.0.i.i = load ptr, ptr %p.0.in.i.i, align 8, !tbaa !5
  %fts_level.i.i = getelementptr inbounds %struct._ftsent, ptr %p.0.i.i, i64 0, i32 12
  %11 = load i64, ptr %fts_level.i.i, align 8, !tbaa !20
  %cmp.i.i = icmp sgt i64 %11, -1
  br i1 %cmp.i.i, label %for.body.i.i, label %mark_ancestor_dirs.exit.i, !llvm.loop !22

mark_ancestor_dirs.exit.i:                        ; preds = %if.end.i.i, %for.body.i.i, %if.then.i
  %call.i.i = tail call i32 @rpl_fts_set(ptr noundef nonnull %call, ptr noundef nonnull %call377, i32 noundef 4) #11
  %call1.i.i = tail call ptr @rpl_fts_read(ptr noundef nonnull %call) #11
  br label %rm_fts.exit.thread

if.end.i:                                         ; preds = %land.lhs.true3.i, %sw.bb.i
  %fts_level.i = getelementptr inbounds %struct._ftsent, ptr %call377, i64 0, i32 12
  %12 = load i64, ptr %fts_level.i, align 8, !tbaa !20
  %cmp10.i = icmp eq i64 %12, 0
  br i1 %cmp10.i, label %if.then12.i, label %if.end79.i

if.then12.i:                                      ; preds = %if.end.i
  %fts_accpath.i = getelementptr inbounds %struct._ftsent, ptr %call377, i64 0, i32 6
  %13 = load ptr, ptr %fts_accpath.i, align 8, !tbaa !5
  %call13.i = tail call ptr @last_component(ptr noundef %13) #14
  %14 = load i8, ptr %call13.i, align 1, !tbaa !24
  %cmp.i242.i = icmp eq i8 %14, 46
  br i1 %cmp.i242.i, label %dot_or_dotdot.exit.i, label %if.end21.i

dot_or_dotdot.exit.i:                             ; preds = %if.then12.i
  %arrayidx2.i.i = getelementptr inbounds i8, ptr %call13.i, i64 1
  %15 = load i8, ptr %arrayidx2.i.i, align 1, !tbaa !24
  %cmp4.i.i = icmp eq i8 %15, 46
  %idxprom.i.i = select i1 %cmp4.i.i, i64 2, i64 1
  %arrayidx6.i.i = getelementptr inbounds i8, ptr %call13.i, i64 %idxprom.i.i
  %16 = load i8, ptr %arrayidx6.i.i, align 1, !tbaa !24
  switch i8 %16, label %if.end21.i [
    i8 47, label %if.then15.i
    i8 0, label %if.then15.i
  ]

if.then15.i:                                      ; preds = %dot_or_dotdot.exit.i, %dot_or_dotdot.exit.i
  %call16.i = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.5, i32 noundef 5) #11
  %call17.i = tail call ptr @quotearg_n_style(i32 noundef 0, i32 noundef 4, ptr noundef nonnull @.str.6) #11
  %call18.i = tail call ptr @quotearg_n_style(i32 noundef 1, i32 noundef 4, ptr noundef nonnull @.str.7) #11
  %fts_path19.i = getelementptr inbounds %struct._ftsent, ptr %call377, i64 0, i32 7
  %17 = load ptr, ptr %fts_path19.i, align 8, !tbaa !5
  %call20.i = tail call ptr @quotearg_n_style(i32 noundef 2, i32 noundef 4, ptr noundef %17) #11
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %call16.i, ptr noundef %call17.i, ptr noundef %call18.i, ptr noundef %call20.i) #13
  %call.i244.i = tail call i32 @rpl_fts_set(ptr noundef nonnull %call, ptr noundef nonnull %call377, i32 noundef 4) #11
  %call1.i245.i = tail call ptr @rpl_fts_read(ptr noundef nonnull %call) #11
  br label %rm_fts.exit.thread

if.end21.i:                                       ; preds = %dot_or_dotdot.exit.i, %if.then12.i
  %18 = load ptr, ptr %root_dev_ino.i, align 8, !tbaa !25
  %tobool22.not.i = icmp eq ptr %18, null
  br i1 %tobool22.not.i, label %if.end47.i, label %land.lhs.true23.i

land.lhs.true23.i:                                ; preds = %if.end21.i
  %fts_statp.i = getelementptr inbounds %struct._ftsent, ptr %call377, i64 0, i32 17
  %19 = load i64, ptr %fts_statp.i, align 8, !tbaa !26
  %st_dev25.i = getelementptr inbounds %struct.timespec, ptr %18, i64 0, i32 1
  %20 = load i64, ptr %st_dev25.i, align 8, !tbaa !29
  %st_ino.i = getelementptr inbounds %struct._ftsent, ptr %call377, i64 0, i32 17, i64 0, i32 1
  %21 = load i64, ptr %st_ino.i, align 8, !tbaa !31
  %22 = load i64, ptr %18, align 8, !tbaa !32
  %23 = icmp eq i64 %19, %20
  %24 = icmp eq i64 %21, %22
  %tobool31.not.i = and i1 %23, %24
  br i1 %tobool31.not.i, label %do.body.i, label %if.end47.i

do.body.i:                                        ; preds = %land.lhs.true23.i
  %fts_path33.i = getelementptr inbounds %struct._ftsent, ptr %call377, i64 0, i32 7
  %25 = load ptr, ptr %fts_path33.i, align 8, !tbaa !5
  %call34.i = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %25, ptr noundef nonnull dereferenceable(2) @.str.8) #14
  %cmp35.i = icmp eq i32 %call34.i, 0
  br i1 %cmp35.i, label %if.then37.i, label %if.else.i

if.then37.i:                                      ; preds = %do.body.i
  %call38.i = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.9, i32 noundef 5) #11
  %26 = load ptr, ptr %fts_path33.i, align 8, !tbaa !5
  %call40.i = tail call ptr @quotearg_style(i32 noundef 4, ptr noundef %26) #11
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %call38.i, ptr noundef %call40.i) #13
  br label %if.end45.i

if.else.i:                                        ; preds = %do.body.i
  %call41.i = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.10, i32 noundef 5) #11
  %27 = load ptr, ptr %fts_path33.i, align 8, !tbaa !5
  %call43.i = tail call ptr @quotearg_n_style(i32 noundef 0, i32 noundef 4, ptr noundef %27) #11
  %call44.i = tail call ptr @quotearg_n_style(i32 noundef 1, i32 noundef 4, ptr noundef nonnull @.str.8) #11
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %call41.i, ptr noundef %call43.i, ptr noundef %call44.i) #13
  br label %if.end45.i

if.end45.i:                                       ; preds = %if.else.i, %if.then37.i
  %call46.i = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.11, i32 noundef 5) #11
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %call46.i) #13
  %call.i246.i = tail call i32 @rpl_fts_set(ptr noundef nonnull %call, ptr noundef nonnull %call377, i32 noundef 4) #11
  %call1.i247.i = tail call ptr @rpl_fts_read(ptr noundef nonnull %call) #11
  br label %rm_fts.exit.thread

if.end47.i:                                       ; preds = %land.lhs.true23.i, %if.end21.i
  %28 = load i8, ptr %preserve_all_root.i, align 8, !tbaa !33, !range !13, !noundef !14
  %tobool48.not.i = icmp eq i8 %28, 0
  br i1 %tobool48.not.i, label %if.end79.i, label %if.then49.i

if.then49.i:                                      ; preds = %if.end47.i
  %call51.i = tail call noalias nonnull ptr @file_name_concat(ptr noundef %13, ptr noundef nonnull @.str.7, ptr noundef null) #11
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %statbuf.i) #11
  %call53.i = call i32 @lstat(ptr noundef nonnull %call51.i, ptr noundef nonnull %statbuf.i) #11
  %tobool54.not.not.i = icmp eq i32 %call53.i, 0
  br i1 %tobool54.not.not.i, label %lor.lhs.false63.critedge.i, label %if.then55.i

if.then55.i:                                      ; preds = %if.then49.i
  %call56.i = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.12, i32 noundef 5) #11
  %call57.i = tail call ptr @quotearg_n_style(i32 noundef 0, i32 noundef 4, ptr noundef nonnull %call51.i) #11
  %29 = load ptr, ptr %fts_accpath.i, align 8, !tbaa !5
  %call59.i = tail call ptr @quotearg_n_style(i32 noundef 1, i32 noundef 4, ptr noundef %29) #11
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %call56.i, ptr noundef %call57.i, ptr noundef %call59.i) #13
  tail call void @free(ptr noundef nonnull %call51.i) #11
  br label %if.end74.i

lor.lhs.false63.critedge.i:                       ; preds = %if.then49.i
  tail call void @free(ptr noundef nonnull %call51.i) #11
  %30 = load i64, ptr %fts_dev117.i, align 8, !tbaa !34
  %31 = load i64, ptr %statbuf.i, align 8, !tbaa !26
  %cmp65.not.i = icmp eq i64 %30, %31
  br i1 %cmp65.not.i, label %cleanup.i, label %if.then69.i

if.then69.i:                                      ; preds = %lor.lhs.false63.critedge.i
  %call70.i = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.13, i32 noundef 5) #11
  %fts_path71.i = getelementptr inbounds %struct._ftsent, ptr %call377, i64 0, i32 7
  %32 = load ptr, ptr %fts_path71.i, align 8, !tbaa !5
  %call72.i = tail call ptr @quotearg_style(i32 noundef 4, ptr noundef %32) #11
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %call70.i, ptr noundef %call72.i) #13
  %call73.i = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.14, i32 noundef 5) #11
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %call73.i) #13
  br label %if.end74.i

if.end74.i:                                       ; preds = %if.then69.i, %if.then55.i
  %call.i248.i = tail call i32 @rpl_fts_set(ptr noundef nonnull %call, ptr noundef nonnull %call377, i32 noundef 4) #11
  %call1.i249.i = tail call ptr @rpl_fts_read(ptr noundef nonnull %call) #11
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %statbuf.i) #11
  br label %rm_fts.exit.thread

cleanup.i:                                        ; preds = %lor.lhs.false63.critedge.i
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %statbuf.i) #11
  br label %if.end79.i

if.end79.i:                                       ; preds = %cleanup.i, %if.end47.i, %if.end.i
  %call80.i = call fastcc i32 @prompt(ptr noundef nonnull %call, ptr noundef nonnull %call377, i1 noundef zeroext true, ptr noundef nonnull %x, i32 noundef 2, ptr noundef nonnull %dir_status.i), !range !37
  %cmp81.i = icmp eq i32 %call80.i, 3
  %33 = load i32, ptr %dir_status.i, align 4
  %cmp84.i = icmp eq i32 %33, -1
  %or.cond.i = select i1 %cmp81.i, i1 %cmp84.i, i1 false
  br i1 %or.cond.i, label %if.then86.i, label %if.end92.i

if.then86.i:                                      ; preds = %if.end79.i
  %call87.i = tail call fastcc i32 @excise(ptr noundef nonnull %call, ptr noundef nonnull %call377, ptr noundef nonnull %x, i1 noundef zeroext true), !range !37
  %cmp88.i = icmp eq i32 %call87.i, 2
  br i1 %cmp88.i, label %lor.lhs.false22.thread, label %if.end92.i

lor.lhs.false22.thread:                           ; preds = %if.then86.i
  %call.i250.i = tail call i32 @rpl_fts_set(ptr noundef nonnull %call, ptr noundef nonnull %call377, i32 noundef 4) #11
  %call1.i251.i = tail call ptr @rpl_fts_read(ptr noundef nonnull %call) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dir_status.i) #11
  br label %cleanup

if.end92.i:                                       ; preds = %if.then86.i, %if.end79.i
  %s.0.i = phi i32 [ %call87.i, %if.then86.i ], [ %call80.i, %if.end79.i ]
  %34 = and i32 %s.0.i, 6
  %or.cond165.i = icmp eq i32 %34, 2
  br i1 %or.cond165.i, label %rm_fts.exit, label %if.then98.i

if.then98.i:                                      ; preds = %if.end92.i
  %p.0.in6.i252.i = getelementptr inbounds %struct._ftsent, ptr %call377, i64 0, i32 1
  %p.07.i253.i = load ptr, ptr %p.0.in6.i252.i, align 8, !tbaa !5
  %fts_level8.i254.i = getelementptr inbounds %struct._ftsent, ptr %p.07.i253.i, i64 0, i32 12
  %35 = load i64, ptr %fts_level8.i254.i, align 8, !tbaa !20
  %cmp9.i255.i = icmp sgt i64 %35, -1
  br i1 %cmp9.i255.i, label %for.body.i256.i, label %mark_ancestor_dirs.exit265.i

for.body.i256.i:                                  ; preds = %if.end.i260.i, %if.then98.i
  %p.010.i257.i = phi ptr [ %p.0.i262.i, %if.end.i260.i ], [ %p.07.i253.i, %if.then98.i ]
  %fts_number.i258.i = getelementptr inbounds %struct._ftsent, ptr %p.010.i257.i, i64 0, i32 4
  %36 = load i64, ptr %fts_number.i258.i, align 8, !tbaa !20
  %tobool.not.i259.i = icmp eq i64 %36, 0
  br i1 %tobool.not.i259.i, label %if.end.i260.i, label %mark_ancestor_dirs.exit265.i

if.end.i260.i:                                    ; preds = %for.body.i256.i
  store i64 1, ptr %fts_number.i258.i, align 8, !tbaa !20
  %p.0.in.i261.i = getelementptr inbounds %struct._ftsent, ptr %p.010.i257.i, i64 0, i32 1
  %p.0.i262.i = load ptr, ptr %p.0.in.i261.i, align 8, !tbaa !5
  %fts_level.i263.i = getelementptr inbounds %struct._ftsent, ptr %p.0.i262.i, i64 0, i32 12
  %37 = load i64, ptr %fts_level.i263.i, align 8, !tbaa !20
  %cmp.i264.i = icmp sgt i64 %37, -1
  br i1 %cmp.i264.i, label %for.body.i256.i, label %mark_ancestor_dirs.exit265.i, !llvm.loop !22

mark_ancestor_dirs.exit265.i:                     ; preds = %if.end.i260.i, %for.body.i256.i, %if.then98.i
  %call.i266.i = tail call i32 @rpl_fts_set(ptr noundef nonnull %call, ptr noundef nonnull %call377, i32 noundef 4) #11
  %call1.i267.i = tail call ptr @rpl_fts_read(ptr noundef nonnull %call) #11
  br label %rm_fts.exit

sw.bb101.i:                                       ; preds = %if.end11, %if.end11, %if.end11, %if.end11, %if.end11, %if.end11, %if.end11, %if.end11
  %cmp104.i = icmp eq i16 %3, 6
  br i1 %cmp104.i, label %land.lhs.true106.i, label %if.end124.i

land.lhs.true106.i:                               ; preds = %sw.bb101.i
  %38 = load i8, ptr %one_file_system, align 8, !tbaa !9, !range !13, !noundef !14
  %tobool107.not.i = icmp eq i8 %38, 0
  br i1 %tobool107.not.i, label %if.end124.i, label %land.lhs.true109.i

land.lhs.true109.i:                               ; preds = %land.lhs.true106.i
  %fts_level110.i = getelementptr inbounds %struct._ftsent, ptr %call377, i64 0, i32 12
  %39 = load i64, ptr %fts_level110.i, align 8, !tbaa !20
  %cmp111.i = icmp sgt i64 %39, 0
  br i1 %cmp111.i, label %land.lhs.true113.i, label %if.end124.i

land.lhs.true113.i:                               ; preds = %land.lhs.true109.i
  %fts_statp114.i = getelementptr inbounds %struct._ftsent, ptr %call377, i64 0, i32 17
  %40 = load i64, ptr %fts_statp114.i, align 8, !tbaa !26
  %41 = load i64, ptr %fts_dev117.i, align 8, !tbaa !34
  %cmp118.not.i = icmp eq i64 %40, %41
  br i1 %cmp118.not.i, label %if.end124.i, label %if.then120.i

if.then120.i:                                     ; preds = %land.lhs.true113.i
  %p.0.in6.i268.i = getelementptr inbounds %struct._ftsent, ptr %call377, i64 0, i32 1
  %p.07.i269.i = load ptr, ptr %p.0.in6.i268.i, align 8, !tbaa !5
  %fts_level8.i270.i = getelementptr inbounds %struct._ftsent, ptr %p.07.i269.i, i64 0, i32 12
  %42 = load i64, ptr %fts_level8.i270.i, align 8, !tbaa !20
  %cmp9.i271.i = icmp sgt i64 %42, -1
  br i1 %cmp9.i271.i, label %for.body.i272.i, label %mark_ancestor_dirs.exit281.i

for.body.i272.i:                                  ; preds = %if.end.i276.i, %if.then120.i
  %p.010.i273.i = phi ptr [ %p.0.i278.i, %if.end.i276.i ], [ %p.07.i269.i, %if.then120.i ]
  %fts_number.i274.i = getelementptr inbounds %struct._ftsent, ptr %p.010.i273.i, i64 0, i32 4
  %43 = load i64, ptr %fts_number.i274.i, align 8, !tbaa !20
  %tobool.not.i275.i = icmp eq i64 %43, 0
  br i1 %tobool.not.i275.i, label %if.end.i276.i, label %mark_ancestor_dirs.exit281.i

if.end.i276.i:                                    ; preds = %for.body.i272.i
  store i64 1, ptr %fts_number.i274.i, align 8, !tbaa !20
  %p.0.in.i277.i = getelementptr inbounds %struct._ftsent, ptr %p.010.i273.i, i64 0, i32 1
  %p.0.i278.i = load ptr, ptr %p.0.in.i277.i, align 8, !tbaa !5
  %fts_level.i279.i = getelementptr inbounds %struct._ftsent, ptr %p.0.i278.i, i64 0, i32 12
  %44 = load i64, ptr %fts_level.i279.i, align 8, !tbaa !20
  %cmp.i280.i = icmp sgt i64 %44, -1
  br i1 %cmp.i280.i, label %for.body.i272.i, label %mark_ancestor_dirs.exit281.i, !llvm.loop !22

mark_ancestor_dirs.exit281.i:                     ; preds = %if.end.i276.i, %for.body.i272.i, %if.then120.i
  %call121.i = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.13, i32 noundef 5) #11
  %fts_path122.i = getelementptr inbounds %struct._ftsent, ptr %call377, i64 0, i32 7
  %45 = load ptr, ptr %fts_path122.i, align 8, !tbaa !5
  %call123.i = tail call ptr @quotearg_style(i32 noundef 4, ptr noundef %45) #11
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %call121.i, ptr noundef %call123.i) #13
  br label %rm_fts.exit.thread

if.end124.i:                                      ; preds = %land.lhs.true113.i, %land.lhs.true109.i, %land.lhs.true106.i, %sw.bb101.i
  %cmp131.i = icmp eq i16 %3, 4
  %spec.select.i = or i1 %cmp104.i, %cmp131.i
  %call135.i = call fastcc i32 @prompt(ptr noundef nonnull %call, ptr noundef nonnull %call377, i1 noundef zeroext %spec.select.i, ptr noundef %x, i32 noundef 3, ptr noundef nonnull %dir_status.i), !range !37
  %46 = and i32 %call135.i, 6
  %or.cond166.i = icmp eq i32 %46, 2
  br i1 %or.cond166.i, label %if.end142.i, label %rm_fts.exit

if.end142.i:                                      ; preds = %if.end124.i
  %call144.i = tail call fastcc i32 @excise(ptr noundef nonnull %call, ptr noundef nonnull %call377, ptr noundef %x, i1 noundef zeroext %spec.select.i), !range !37
  br label %rm_fts.exit

do.body148.i:                                     ; preds = %if.end11
  %call149.i = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.15, i32 noundef 5) #11
  %fts_path150.i = getelementptr inbounds %struct._ftsent, ptr %call377, i64 0, i32 7
  %47 = load ptr, ptr %fts_path150.i, align 8, !tbaa !5
  %call151.i = tail call ptr @quotearg_n_style_colon(i32 noundef 0, i32 noundef 3, ptr noundef %47) #11
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %call149.i, ptr noundef %call151.i) #13
  %call.i282.i = tail call i32 @rpl_fts_set(ptr noundef nonnull %call, ptr noundef nonnull %call377, i32 noundef 4) #11
  %call1.i283.i = tail call ptr @rpl_fts_read(ptr noundef nonnull %call) #11
  br label %rm_fts.exit.thread

sw.bb154.i:                                       ; preds = %if.end11
  %fts_errno.i = getelementptr inbounds %struct._ftsent, ptr %call377, i64 0, i32 8
  %48 = load i32, ptr %fts_errno.i, align 8, !tbaa !15
  %call155.i = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.16, i32 noundef 5) #11
  %fts_path156.i = getelementptr inbounds %struct._ftsent, ptr %call377, i64 0, i32 7
  %49 = load ptr, ptr %fts_path156.i, align 8, !tbaa !5
  %call157.i = tail call ptr @quotearg_n_style_colon(i32 noundef 0, i32 noundef 3, ptr noundef %49) #11
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %48, ptr noundef %call155.i, ptr noundef %call157.i) #13
  %call.i284.i = tail call i32 @rpl_fts_set(ptr noundef nonnull %call, ptr noundef nonnull %call377, i32 noundef 4) #11
  %call1.i285.i = tail call ptr @rpl_fts_read(ptr noundef nonnull %call) #11
  br label %rm_fts.exit.thread

sw.default.i:                                     ; preds = %if.end11
  %fts_info.i.le = getelementptr inbounds %struct._ftsent, ptr %call377, i64 0, i32 14
  %call158.i = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.17, i32 noundef 5) #11
  %50 = load i16, ptr %fts_info.i.le, align 8, !tbaa !16
  %conv160.i = zext i16 %50 to i32
  %fts_path161.i = getelementptr inbounds %struct._ftsent, ptr %call377, i64 0, i32 7
  %51 = load ptr, ptr %fts_path161.i, align 8, !tbaa !5
  %call162.i = tail call ptr @quotearg_n_style_colon(i32 noundef 0, i32 noundef 3, ptr noundef %51) #11
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %call158.i, i32 noundef %conv160.i, ptr noundef %call162.i, ptr noundef nonnull @.str.18) #13
  tail call void @abort() #15
  unreachable

rm_fts.exit.thread:                               ; preds = %sw.bb154.i, %do.body148.i, %mark_ancestor_dirs.exit281.i, %if.end74.i, %if.end45.i, %if.then15.i, %mark_ancestor_dirs.exit.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dir_status.i) #11
  br label %cleanup

rm_fts.exit:                                      ; preds = %if.end142.i, %if.end124.i, %mark_ancestor_dirs.exit265.i, %if.end92.i
  %retval.2.i = phi i32 [ %s.0.i, %mark_ancestor_dirs.exit265.i ], [ %s.0.i, %if.end92.i ], [ %call144.i, %if.end142.i ], [ %call135.i, %if.end124.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dir_status.i) #11
  %switch = icmp eq i32 %retval.2.i, 5
  br i1 %switch, label %cleanup, label %lor.lhs.false22

lor.lhs.false22:                                  ; preds = %rm_fts.exit
  %cmp16 = icmp eq i32 %retval.2.i, 4
  %cmp24 = icmp eq i32 %rm_status.075, 2
  %or.cond37 = select i1 %cmp16, i1 %cmp24, i1 false
  %spec.select67 = select i1 %or.cond37, i32 %retval.2.i, i32 %rm_status.075
  br label %cleanup

cleanup:                                          ; preds = %lor.lhs.false22, %rm_fts.exit, %rm_fts.exit.thread, %lor.lhs.false22.thread
  %rm_status.3 = phi i32 [ %rm_status.075, %lor.lhs.false22.thread ], [ 5, %rm_fts.exit.thread ], [ 5, %rm_fts.exit ], [ %spec.select67, %lor.lhs.false22 ]
  %call3 = tail call ptr @rpl_fts_read(ptr noundef nonnull %call) #11
  %cmp = icmp eq ptr %call3, null
  br i1 %cmp, label %if.then4, label %if.end11

while.end:                                        ; preds = %if.then7, %if.then4
  %rm_status.3.ph = phi i32 [ %rm_status.0.lcssa, %if.then4 ], [ 5, %if.then7 ]
  %call27 = tail call i32 @rpl_fts_close(ptr noundef nonnull %call) #11
  %cmp28.not = icmp eq i32 %call27, 0
  br i1 %cmp28.not, label %if.end33, label %if.then29

if.then29:                                        ; preds = %while.end
  %52 = load i32, ptr %call5, align 4, !tbaa !15
  %call31 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.3, i32 noundef 5) #11
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %52, ptr noundef %call31) #13
  br label %if.end33

if.end33:                                         ; preds = %if.then29, %while.end, %entry
  %rm_status.5 = phi i32 [ 2, %entry ], [ 5, %if.then29 ], [ %rm_status.3.ph, %while.end ]
  ret i32 %rm_status.5
}

declare noalias nonnull ptr @xfts_open(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare ptr @rpl_fts_read(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #2

; Function Attrs: nounwind
declare ptr @dcgettext(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold
declare void @error(i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: nounwind uwtable
define internal fastcc i32 @get_dir_status(ptr nocapture noundef readonly %fts, ptr nocapture noundef readonly %ent, ptr nocapture noundef %dir_status) unnamed_addr #0 {
entry:
  %0 = load i32, ptr %dir_status, align 4, !tbaa !15
  %cmp = icmp eq i32 %0, -2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %fts_cwd_fd = getelementptr inbounds %struct.FTS, ptr %fts, i64 0, i32 6
  %1 = load i32, ptr %fts_cwd_fd, align 4, !tbaa !38
  %fts_accpath = getelementptr inbounds %struct._ftsent, ptr %ent, i64 0, i32 6
  %2 = load ptr, ptr %fts_accpath, align 8, !tbaa !5
  %call.i = tail call i32 (i32, ptr, i32, ...) @openat(i32 noundef %1, ptr noundef %2, i32 noundef 198912) #11
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %if.then
  %call1.i = tail call ptr @__errno_location() #12
  %3 = load i32, ptr %call1.i, align 4, !tbaa !15
  br label %directory_status.exit

if.end.i:                                         ; preds = %if.then
  %call2.i = tail call noalias ptr @fdopendir(i32 noundef %call.i) #11
  %cmp3.i = icmp eq ptr %call2.i, null
  %call5.i = tail call ptr @__errno_location() #12
  br i1 %cmp3.i, label %if.then4.i, label %if.end7.i

if.then4.i:                                       ; preds = %if.end.i
  %4 = load i32, ptr %call5.i, align 4, !tbaa !15
  %call6.i = tail call i32 @close(i32 noundef %call.i) #11
  br label %directory_status.exit

if.end7.i:                                        ; preds = %if.end.i
  store i32 0, ptr %call5.i, align 4, !tbaa !15
  br label %while.body.i.i

while.body.i.i:                                   ; preds = %dot_or_dotdot.exit.i.i, %if.end7.i
  %call.i.i = tail call ptr @readdir(ptr noundef nonnull %call2.i) #11
  %cmp.i.i = icmp eq ptr %call.i.i, null
  br i1 %cmp.i.i, label %readdir_ignoring_dot_and_dotdot.exit.i, label %lor.lhs.false.i.i

lor.lhs.false.i.i:                                ; preds = %while.body.i.i
  %d_name.i.i = getelementptr inbounds %struct.dirent, ptr %call.i.i, i64 0, i32 4
  %5 = load i8, ptr %d_name.i.i, align 1, !tbaa !24
  %cmp.i.i.i = icmp eq i8 %5, 46
  br i1 %cmp.i.i.i, label %dot_or_dotdot.exit.i.i, label %readdir_ignoring_dot_and_dotdot.exit.i

dot_or_dotdot.exit.i.i:                           ; preds = %lor.lhs.false.i.i
  %arrayidx2.i.i.i = getelementptr inbounds %struct.dirent, ptr %call.i.i, i64 0, i32 4, i64 1
  %6 = load i8, ptr %arrayidx2.i.i.i, align 1, !tbaa !24
  %cmp4.i.i.i = icmp eq i8 %6, 46
  %idxprom.i.i.i = select i1 %cmp4.i.i.i, i64 2, i64 1
  %arrayidx6.i.i.i = getelementptr inbounds i8, ptr %d_name.i.i, i64 %idxprom.i.i.i
  %7 = load i8, ptr %arrayidx6.i.i.i, align 1, !tbaa !24
  %tobool.not.i.i.i = icmp eq i8 %7, 0
  %cmp8.i.i.i = icmp eq i8 %7, 47
  %8 = or i1 %tobool.not.i.i.i, %cmp8.i.i.i
  %cond.fr.i.i = freeze i1 %8
  br i1 %cond.fr.i.i, label %while.body.i.i, label %readdir_ignoring_dot_and_dotdot.exit.i

readdir_ignoring_dot_and_dotdot.exit.i:           ; preds = %dot_or_dotdot.exit.i.i, %lor.lhs.false.i.i, %while.body.i.i
  %9 = load i32, ptr %call5.i, align 4, !tbaa !15
  %call11.i = tail call i32 @closedir(ptr noundef nonnull %call2.i)
  %cmp13.i = icmp eq i32 %9, 0
  %or.cond.i = select i1 %cmp.i.i, i1 %cmp13.i, i1 false
  %cond.i = select i1 %or.cond.i, i32 -1, i32 %9
  br label %directory_status.exit

directory_status.exit:                            ; preds = %readdir_ignoring_dot_and_dotdot.exit.i, %if.then4.i, %if.then.i
  %retval.0.i = phi i32 [ %3, %if.then.i ], [ %4, %if.then4.i ], [ %cond.i, %readdir_ignoring_dot_and_dotdot.exit.i ]
  store i32 %retval.0.i, ptr %dir_status, align 4, !tbaa !15
  br label %if.end

if.end:                                           ; preds = %directory_status.exit, %entry
  %10 = phi i32 [ %retval.0.i, %directory_status.exit ], [ %0, %entry ]
  ret i32 %10
}

declare ptr @quotearg_style(i32 noundef, ptr noundef) local_unnamed_addr #1

declare i32 @rpl_fts_set(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare ptr @last_component(ptr noundef) local_unnamed_addr #6

declare ptr @quotearg_n_style(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #7

declare noalias nonnull ptr @file_name_concat(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare noundef i32 @lstat(ptr nocapture noundef readonly, ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: nounwind uwtable
define internal fastcc i32 @prompt(ptr nocapture noundef readonly %fts, ptr nocapture noundef readonly %ent, i1 noundef zeroext %is_dir, ptr nocapture noundef readonly %x, i32 noundef %mode, ptr nocapture noundef %dir_status) unnamed_addr #0 {
entry:
  %st = alloca %struct.stat, align 8
  %fts_cwd_fd = getelementptr inbounds %struct.FTS, ptr %fts, i64 0, i32 6
  %0 = load i32, ptr %fts_cwd_fd, align 4, !tbaa !38
  %fts_path = getelementptr inbounds %struct._ftsent, ptr %ent, i64 0, i32 7
  %1 = load ptr, ptr %fts_path, align 8, !tbaa !5
  %fts_accpath = getelementptr inbounds %struct._ftsent, ptr %ent, i64 0, i32 6
  %2 = load ptr, ptr %fts_accpath, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %st) #11
  %tv_nsec.i = getelementptr inbounds %struct.stat, ptr %st, i64 0, i32 11, i32 1
  store i64 -1, ptr %tv_nsec.i, align 8, !tbaa !39
  %fts_number = getelementptr inbounds %struct._ftsent, ptr %ent, i64 0, i32 4
  %3 = load i64, ptr %fts_number, align 8, !tbaa !20
  %tobool1.not = icmp eq i64 %3, 0
  br i1 %tobool1.not, label %if.end, label %cleanup113

if.end:                                           ; preds = %entry
  %interactive = getelementptr inbounds %struct.rm_options, ptr %x, i64 0, i32 1
  %4 = load i32, ptr %interactive, align 4, !tbaa !40
  %cmp = icmp eq i32 %4, 5
  br i1 %cmp, label %cleanup113, label %if.end3

if.end3:                                          ; preds = %if.end
  %5 = load i8, ptr %x, align 8, !tbaa !41, !range !13, !noundef !14
  %tobool4.not = icmp eq i8 %5, 0
  br i1 %tobool4.not, label %land.lhs.true, label %lor.lhs.false15

land.lhs.true:                                    ; preds = %if.end3
  %cmp6 = icmp eq i32 %4, 3
  br i1 %cmp6, label %if.then10, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %stdin_tty = getelementptr inbounds %struct.rm_options, ptr %x, i64 0, i32 7
  %6 = load i8, ptr %stdin_tty, align 1, !tbaa !42, !range !13, !noundef !14
  %tobool7.not = icmp eq i8 %6, 0
  br i1 %tobool7.not, label %lor.lhs.false15, label %if.then10

if.then10:                                        ; preds = %lor.lhs.false, %land.lhs.true
  %call.i = tail call zeroext i1 @can_write_any_file() #11
  br i1 %call.i, label %if.end13.thread203, label %if.then4.i.i

if.then4.i.i:                                     ; preds = %if.then10
  %call.i.i = call i32 @fstatat(i32 noundef %0, ptr noundef %2, ptr noundef nonnull %st, i32 noundef 256) #11
  %cmp5.i.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp5.i.i, label %if.end3.i, label %if.end37.thread276

if.end37.thread276:                               ; preds = %if.then4.i.i
  store i64 -2, ptr %tv_nsec.i, align 8, !tbaa !39
  %call10.i.i = tail call ptr @__errno_location() #12
  %7 = load i32, ptr %call10.i.i, align 4, !tbaa !15
  %conv.i.i = sext i32 %7 to i64
  %st_ino.i.i = getelementptr inbounds %struct.stat, ptr %st, i64 0, i32 1
  store i64 %conv.i.i, ptr %st_ino.i.i, align 8, !tbaa !31
  store i32 %7, ptr %call10.i.i, align 4, !tbaa !15
  br label %if.then58

if.end3.i:                                        ; preds = %if.then4.i.i
  %st_mode.i.phi.trans.insert = getelementptr inbounds %struct.stat, ptr %st, i64 0, i32 3
  %.pre = load i32, ptr %st_mode.i.phi.trans.insert, align 8, !tbaa !43
  %and.i = and i32 %.pre, 61440
  %cmp4.i = icmp eq i32 %and.i, 40960
  br i1 %cmp4.i, label %if.end13.thread203, label %if.end6.i

if.end6.i:                                        ; preds = %if.end3.i
  %call7.i = call i32 @faccessat(i32 noundef %0, ptr noundef %2, i32 noundef 2, i32 noundef 512) #11
  %cmp8.i = icmp eq i32 %call7.i, 0
  br i1 %cmp8.i, label %if.end13.thread203, label %if.then18

if.end13.thread203:                               ; preds = %if.end6.i, %if.end3.i, %if.then10
  %.pr.pre = load i32, ptr %interactive, align 4, !tbaa !40
  br label %lor.lhs.false15

lor.lhs.false15:                                  ; preds = %if.end13.thread203, %lor.lhs.false, %if.end3
  %8 = phi i32 [ %4, %if.end3 ], [ %4, %lor.lhs.false ], [ %.pr.pre, %if.end13.thread203 ]
  %cmp17 = icmp eq i32 %8, 3
  br i1 %cmp17, label %if.then18.thread, label %cleanup113

if.then18:                                        ; preds = %if.end6.i
  %call11.i = tail call ptr @__errno_location() #12
  %9 = load i32, ptr %call11.i, align 4, !tbaa !15
  %cmp12.i = icmp ne i32 %9, 13
  %or.cond121.not = or i1 %cmp12.i, %is_dir
  br i1 %or.cond121.not, label %if.end37, label %if.then22

if.then18.thread:                                 ; preds = %lor.lhs.false15
  br i1 %is_dir, label %sw.bb44, label %if.then22

if.then22:                                        ; preds = %if.then18.thread, %if.then18
  %write_protected.0198257 = phi i32 [ 0, %if.then18.thread ], [ 1, %if.then18 ]
  %10 = load i64, ptr %tv_nsec.i, align 8, !tbaa !39
  %cmp.i = icmp sgt i64 %10, -1
  br i1 %cmp.i, label %if.then25, label %if.end.i172

if.end.i172:                                      ; preds = %if.then22
  %cmp3.i = icmp eq i64 %10, -1
  br i1 %cmp3.i, label %if.then4.i, label %if.end.if.end11_crit_edge.i

if.end.if.end11_crit_edge.i:                      ; preds = %if.end.i172
  %st_ino12.phi.trans.insert.i = getelementptr inbounds %struct.stat, ptr %st, i64 0, i32 1
  %.pre.i = load i64, ptr %st_ino12.phi.trans.insert.i, align 8, !tbaa !31
  %.pre20.i = tail call ptr @__errno_location() #12
  %11 = trunc i64 %.pre.i to i32
  br label %if.end37.thread217

if.then4.i:                                       ; preds = %if.end.i172
  %call.i174 = call i32 @fstatat(i32 noundef %0, ptr noundef %2, ptr noundef nonnull %st, i32 noundef 256) #11
  %cmp5.i = icmp eq i32 %call.i174, 0
  br i1 %cmp5.i, label %if.then25, label %if.end7.i

if.end7.i:                                        ; preds = %if.then4.i
  store i64 -2, ptr %tv_nsec.i, align 8, !tbaa !39
  %call10.i = tail call ptr @__errno_location() #12
  %12 = load i32, ptr %call10.i, align 4, !tbaa !15
  %conv.i = sext i32 %12 to i64
  %st_ino.i = getelementptr inbounds %struct.stat, ptr %st, i64 0, i32 1
  store i64 %conv.i, ptr %st_ino.i, align 8, !tbaa !31
  br label %if.end37.thread217

if.then25:                                        ; preds = %if.then4.i, %if.then22
  %st_mode = getelementptr inbounds %struct.stat, ptr %st, i64 0, i32 3
  %13 = load i32, ptr %st_mode, align 8, !tbaa !43
  %14 = trunc i32 %13 to i16
  %trunc = and i16 %14, -4096
  switch i16 %trunc, label %if.end60.thread [
    i16 -24576, label %sw.bb
    i16 16384, label %sw.bb44
  ]

if.end37.thread217:                               ; preds = %if.end7.i, %if.end.if.end11_crit_edge.i
  %call14.pre-phi.i = phi ptr [ %.pre20.i, %if.end.if.end11_crit_edge.i ], [ %call10.i, %if.end7.i ]
  %conv13.i = phi i32 [ %11, %if.end.if.end11_crit_edge.i ], [ %12, %if.end7.i ]
  store i32 %conv13.i, ptr %call14.pre-phi.i, align 4, !tbaa !15
  br label %if.then58

if.end37:                                         ; preds = %if.then18
  %15 = load i32, ptr %call11.i, align 4, !tbaa !15
  br i1 %cmp12.i, label %if.then58, label %if.then39

if.then39:                                        ; preds = %if.end37
  br i1 %is_dir, label %sw.bb44, label %if.end60.thread

sw.bb:                                            ; preds = %if.then25
  %16 = load i32, ptr %interactive, align 4, !tbaa !40
  %cmp41.not = icmp eq i32 %16, 3
  br i1 %cmp41.not, label %if.end60.thread, label %cleanup113

sw.bb44:                                          ; preds = %if.then39, %if.then25, %if.then18.thread
  %write_protected.0198255 = phi i32 [ 1, %if.then39 ], [ %write_protected.0198257, %if.then25 ], [ 0, %if.then18.thread ]
  %recursive = getelementptr inbounds %struct.rm_options, ptr %x, i64 0, i32 3
  %17 = load i8, ptr %recursive, align 1, !tbaa !18, !range !13, !noundef !14
  %tobool45.not = icmp eq i8 %17, 0
  br i1 %tobool45.not, label %lor.lhs.false46, label %if.end60

lor.lhs.false46:                                  ; preds = %sw.bb44
  %remove_empty_directories = getelementptr inbounds %struct.rm_options, ptr %x, i64 0, i32 4
  %18 = load i8, ptr %remove_empty_directories, align 2, !tbaa !19, !range !13, !noundef !14
  %tobool47.not = icmp eq i8 %18, 0
  br i1 %tobool47.not, label %if.then51, label %land.lhs.true48

land.lhs.true48:                                  ; preds = %lor.lhs.false46
  %call49 = call fastcc i32 @get_dir_status(ptr noundef nonnull %fts, ptr noundef nonnull %ent, ptr noundef %dir_status)
  %cmp50.not = icmp eq i32 %call49, 0
  br i1 %cmp50.not, label %if.then51, label %if.end60

if.then51:                                        ; preds = %land.lhs.true48, %lor.lhs.false46
  %19 = load i32, ptr %dir_status, align 4, !tbaa !15
  %cmp52 = icmp slt i32 %19, 1
  %spec.select = select i1 %cmp52, i32 21, i32 %19
  br label %if.then58

if.then58:                                        ; preds = %if.then51, %if.end37, %if.end37.thread217, %if.end37.thread276
  %wp_errno.2 = phi i32 [ %spec.select, %if.then51 ], [ %15, %if.end37 ], [ %conv13.i, %if.end37.thread217 ], [ %7, %if.end37.thread276 ]
  %call56 = call ptr @quotearg_style(i32 noundef 4, ptr noundef %1) #11
  %call59 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.4, i32 noundef 5) #11
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %wp_errno.2, ptr noundef %call59, ptr noundef %call56) #13
  br label %cleanup113

if.end60.thread:                                  ; preds = %sw.bb, %if.then39, %if.then25
  %write_protected.0198256.ph = phi i32 [ %write_protected.0198257, %if.then25 ], [ %write_protected.0198257, %sw.bb ], [ 1, %if.then39 ]
  %call56225265 = call ptr @quotearg_style(i32 noundef 4, ptr noundef %1) #11
  %cmp63266 = icmp eq i32 %mode, 2
  br label %if.else76

if.end60:                                         ; preds = %land.lhs.true48, %sw.bb44
  %call56225 = call ptr @quotearg_style(i32 noundef 4, ptr noundef %1) #11
  %cmp63 = icmp eq i32 %mode, 2
  br i1 %cmp63, label %land.lhs.true64, label %if.else76

land.lhs.true64:                                  ; preds = %if.end60
  %call65 = call fastcc i32 @get_dir_status(ptr noundef nonnull %fts, ptr noundef nonnull %ent, ptr noundef %dir_status)
  %cmp66 = icmp eq i32 %call65, 0
  br i1 %cmp66, label %if.then67, label %if.else76

if.then67:                                        ; preds = %land.lhs.true64
  %20 = load ptr, ptr @stderr, align 8, !tbaa !5
  %tobool68.not = icmp eq i32 %write_protected.0198255, 0
  %.str.20..str.19 = select i1 %tobool68.not, ptr @.str.20, ptr @.str.19
  %call72 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull %.str.20..str.19, i32 noundef 5) #11
  %21 = load ptr, ptr @program_name, align 8, !tbaa !5
  %call75 = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %20, i32 noundef 1, ptr noundef %call72, ptr noundef %21, ptr noundef %call56225) #11
  br label %if.end108

if.else76:                                        ; preds = %land.lhs.true64, %if.end60, %if.end60.thread
  %cmp63270 = phi i1 [ %cmp63266, %if.end60.thread ], [ true, %land.lhs.true64 ], [ false, %if.end60 ]
  %call56225269 = phi ptr [ %call56225265, %if.end60.thread ], [ %call56225, %land.lhs.true64 ], [ %call56225, %if.end60 ]
  %write_protected.0198256268 = phi i32 [ %write_protected.0198256.ph, %if.end60.thread ], [ %write_protected.0198255, %land.lhs.true64 ], [ %write_protected.0198255, %if.end60 ]
  %22 = load i32, ptr %dir_status, align 4, !tbaa !15
  %cmp77 = icmp sgt i32 %22, 0
  br i1 %cmp77, label %if.then78, label %if.else91

if.then78:                                        ; preds = %if.else76
  %remove_empty_directories79 = getelementptr inbounds %struct.rm_options, ptr %x, i64 0, i32 4
  %23 = load i8, ptr %remove_empty_directories79, align 2, !tbaa !19, !range !13, !noundef !14
  %tobool80.not = icmp ne i8 %23, 0
  %cmp82 = icmp eq i32 %22, 13
  %or.cond = and i1 %cmp82, %tobool80.not
  br i1 %or.cond, label %if.end85, label %if.then83

if.then83:                                        ; preds = %if.then78
  %call84 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.4, i32 noundef 5) #11
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %22, ptr noundef %call84, ptr noundef %call56225269) #13
  br label %cleanup113

if.end85:                                         ; preds = %if.then78
  br i1 %cmp63270, label %cleanup113, label %if.end88

if.end88:                                         ; preds = %if.end85
  %24 = load ptr, ptr @stderr, align 8, !tbaa !5
  %call89 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.21, i32 noundef 5) #11
  %25 = load ptr, ptr @program_name, align 8, !tbaa !5
  %call90 = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %24, i32 noundef 1, ptr noundef %call89, ptr noundef %25, ptr noundef %call56225269) #11
  br label %if.end108

if.else91:                                        ; preds = %if.else76
  %26 = load i64, ptr %tv_nsec.i, align 8, !tbaa !39
  %cmp.i176 = icmp sgt i64 %26, -1
  br i1 %cmp.i176, label %if.end97, label %if.end.i177

if.end.i177:                                      ; preds = %if.else91
  %cmp3.i178 = icmp eq i64 %26, -1
  br i1 %cmp3.i178, label %if.then4.i187, label %if.end.if.end11_crit_edge.i179

if.end.if.end11_crit_edge.i179:                   ; preds = %if.end.i177
  %st_ino12.phi.trans.insert.i180 = getelementptr inbounds %struct.stat, ptr %st, i64 0, i32 1
  %.pre.i181 = load i64, ptr %st_ino12.phi.trans.insert.i180, align 8, !tbaa !31
  %.pre20.i182 = tail call ptr @__errno_location() #12
  %27 = trunc i64 %.pre.i181 to i32
  br label %if.then94

if.then4.i187:                                    ; preds = %if.end.i177
  %call.i188 = call i32 @fstatat(i32 noundef %0, ptr noundef %2, ptr noundef nonnull %st, i32 noundef 256) #11
  %cmp5.i189 = icmp eq i32 %call.i188, 0
  br i1 %cmp5.i189, label %if.end97, label %if.end7.i190

if.end7.i190:                                     ; preds = %if.then4.i187
  store i64 -2, ptr %tv_nsec.i, align 8, !tbaa !39
  %call10.i191 = tail call ptr @__errno_location() #12
  %28 = load i32, ptr %call10.i191, align 4, !tbaa !15
  %conv.i192 = sext i32 %28 to i64
  %st_ino.i193 = getelementptr inbounds %struct.stat, ptr %st, i64 0, i32 1
  store i64 %conv.i192, ptr %st_ino.i193, align 8, !tbaa !31
  br label %if.then94

if.then94:                                        ; preds = %if.end7.i190, %if.end.if.end11_crit_edge.i179
  %call95.pre-phi = phi ptr [ %call10.i191, %if.end7.i190 ], [ %.pre20.i182, %if.end.if.end11_crit_edge.i179 ]
  %conv13.i185 = phi i32 [ %28, %if.end7.i190 ], [ %27, %if.end.if.end11_crit_edge.i179 ]
  store i32 %conv13.i185, ptr %call95.pre-phi, align 4, !tbaa !15
  %call96 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.4, i32 noundef 5) #11
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %conv13.i185, ptr noundef %call96, ptr noundef %call56225269) #13
  br label %cleanup113

if.end97:                                         ; preds = %if.then4.i187, %if.else91
  %29 = load ptr, ptr @stderr, align 8, !tbaa !5
  %tobool98.not = icmp eq i32 %write_protected.0198256268, 0
  %.str.23..str.22 = select i1 %tobool98.not, ptr @.str.23, ptr @.str.22
  %call102 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull %.str.23..str.22, i32 noundef 5) #11
  %30 = load ptr, ptr @program_name, align 8, !tbaa !5
  %call105 = call ptr @file_type(ptr noundef nonnull %st) #14
  %call106 = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %29, i32 noundef 1, ptr noundef %call102, ptr noundef %30, ptr noundef %call105, ptr noundef %call56225269) #11
  br label %if.end108

if.end108:                                        ; preds = %if.end97, %if.end88, %if.then67
  %call109 = call zeroext i1 @yesno() #11
  %cond110 = select i1 %call109, i32 3, i32 4
  br label %cleanup113

cleanup113:                                       ; preds = %if.end108, %if.then94, %if.end85, %if.then83, %if.then58, %sw.bb, %lor.lhs.false15, %if.end, %entry
  %retval.2 = phi i32 [ 4, %entry ], [ 2, %if.end ], [ 2, %sw.bb ], [ 5, %if.then58 ], [ %cond110, %if.end108 ], [ 5, %if.then83 ], [ 5, %if.then94 ], [ 2, %if.end85 ], [ 2, %lor.lhs.false15 ]
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %st) #11
  ret i32 %retval.2
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef i32 @excise(ptr nocapture noundef readonly %fts, ptr nocapture noundef readonly %ent, ptr nocapture noundef readonly %x, i1 noundef zeroext %is_dir) unnamed_addr #0 {
entry:
  %st = alloca %struct.stat, align 8
  %cond = select i1 %is_dir, i32 512, i32 0
  %fts_cwd_fd = getelementptr inbounds %struct.FTS, ptr %fts, i64 0, i32 6
  %0 = load i32, ptr %fts_cwd_fd, align 4, !tbaa !38
  %fts_accpath = getelementptr inbounds %struct._ftsent, ptr %ent, i64 0, i32 6
  %1 = load ptr, ptr %fts_accpath, align 8, !tbaa !5
  %call = tail call i32 @unlinkat(i32 noundef %0, ptr noundef %1, i32 noundef %cond) #11
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end9

if.then:                                          ; preds = %entry
  %verbose = getelementptr inbounds %struct.rm_options, ptr %x, i64 0, i32 8
  %2 = load i8, ptr %verbose, align 2, !tbaa !44, !range !13, !noundef !14
  %tobool1.not = icmp eq i8 %2, 0
  br i1 %tobool1.not, label %cleanup, label %if.then2

if.then2:                                         ; preds = %if.then
  %.str.24..str.25 = select i1 %is_dir, ptr @.str.24, ptr @.str.25
  %call5 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull %.str.24..str.25, i32 noundef 5) #11
  %fts_path = getelementptr inbounds %struct._ftsent, ptr %ent, i64 0, i32 7
  %3 = load ptr, ptr %fts_path, align 8, !tbaa !5
  %call7 = tail call ptr @quotearg_style(i32 noundef 4, ptr noundef %3) #11
  %call8 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %call5, ptr noundef %call7) #11
  br label %cleanup

if.end9:                                          ; preds = %entry
  %call10 = tail call ptr @__errno_location() #12
  %4 = load i32, ptr %call10, align 4, !tbaa !15
  %cmp11 = icmp eq i32 %4, 30
  br i1 %cmp11, label %if.then12, label %if.end22

if.then12:                                        ; preds = %if.end9
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %st) #11
  %5 = load i32, ptr %fts_cwd_fd, align 4, !tbaa !38
  %6 = load ptr, ptr %fts_accpath, align 8, !tbaa !5
  %call15 = call i32 @fstatat(i32 noundef %5, ptr noundef %6, ptr noundef nonnull %st, i32 noundef 256) #11
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.then19, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.then12
  %7 = load i32, ptr %call10, align 4, !tbaa !15
  %cmp18 = icmp eq i32 %7, 2
  br i1 %cmp18, label %if.end21, label %if.then19

if.then19:                                        ; preds = %land.lhs.true, %if.then12
  store i32 30, ptr %call10, align 4, !tbaa !15
  br label %if.end21

if.end21:                                         ; preds = %if.then19, %land.lhs.true
  %.pr = phi i32 [ 30, %if.then19 ], [ 2, %land.lhs.true ]
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %st) #11
  br label %if.end22

if.end22:                                         ; preds = %if.end21, %if.end9
  %8 = phi i32 [ %.pr, %if.end21 ], [ %4, %if.end9 ]
  %x.val = load i8, ptr %x, align 8, !tbaa !41, !range !13, !noundef !14
  %tobool.not.i = icmp eq i8 %x.val, 0
  br i1 %tobool.not.i, label %if.end26, label %land.rhs.i

land.rhs.i:                                       ; preds = %if.end22
  switch i32 %8, label %if.end26 [
    i32 84, label %cleanup
    i32 22, label %cleanup
    i32 2, label %cleanup
    i32 20, label %cleanup
  ]

if.end26:                                         ; preds = %land.rhs.i, %if.end22
  %fts_info = getelementptr inbounds %struct._ftsent, ptr %ent, i64 0, i32 14
  %9 = load i16, ptr %fts_info, align 8, !tbaa !16
  %cmp27 = icmp eq i16 %9, 4
  br i1 %cmp27, label %land.lhs.true29, label %if.end50

land.lhs.true29:                                  ; preds = %if.end26
  switch i32 %8, label %if.end50 [
    i32 39, label %land.lhs.true44
    i32 21, label %land.lhs.true44
    i32 20, label %land.lhs.true44
    i32 17, label %land.lhs.true44
  ]

land.lhs.true44:                                  ; preds = %land.lhs.true29, %land.lhs.true29, %land.lhs.true29, %land.lhs.true29
  %fts_errno = getelementptr inbounds %struct._ftsent, ptr %ent, i64 0, i32 8
  %10 = load i32, ptr %fts_errno, align 8, !tbaa !15
  %cmp45.not = icmp eq i32 %10, 0
  br i1 %cmp45.not, label %if.end50, label %if.then47

if.then47:                                        ; preds = %land.lhs.true44
  store i32 %10, ptr %call10, align 4, !tbaa !15
  br label %if.end50

if.end50:                                         ; preds = %if.then47, %land.lhs.true44, %land.lhs.true29, %if.end26
  %11 = phi i32 [ %8, %land.lhs.true29 ], [ %10, %if.then47 ], [ %8, %land.lhs.true44 ], [ %8, %if.end26 ]
  %call52 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.4, i32 noundef 5) #11
  %fts_path53 = getelementptr inbounds %struct._ftsent, ptr %ent, i64 0, i32 7
  %12 = load ptr, ptr %fts_path53, align 8, !tbaa !5
  %call54 = call ptr @quotearg_style(i32 noundef 4, ptr noundef %12) #11
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %11, ptr noundef %call52, ptr noundef %call54) #13
  %p.0.in6.i = getelementptr inbounds %struct._ftsent, ptr %ent, i64 0, i32 1
  %p.07.i = load ptr, ptr %p.0.in6.i, align 8, !tbaa !5
  %fts_level8.i = getelementptr inbounds %struct._ftsent, ptr %p.07.i, i64 0, i32 12
  %13 = load i64, ptr %fts_level8.i, align 8, !tbaa !20
  %cmp9.i = icmp sgt i64 %13, -1
  br i1 %cmp9.i, label %for.body.i, label %cleanup

for.body.i:                                       ; preds = %if.end.i, %if.end50
  %p.010.i = phi ptr [ %p.0.i, %if.end.i ], [ %p.07.i, %if.end50 ]
  %fts_number.i = getelementptr inbounds %struct._ftsent, ptr %p.010.i, i64 0, i32 4
  %14 = load i64, ptr %fts_number.i, align 8, !tbaa !20
  %tobool.not.i66 = icmp eq i64 %14, 0
  br i1 %tobool.not.i66, label %if.end.i, label %cleanup

if.end.i:                                         ; preds = %for.body.i
  store i64 1, ptr %fts_number.i, align 8, !tbaa !20
  %p.0.in.i = getelementptr inbounds %struct._ftsent, ptr %p.010.i, i64 0, i32 1
  %p.0.i = load ptr, ptr %p.0.in.i, align 8, !tbaa !5
  %fts_level.i = getelementptr inbounds %struct._ftsent, ptr %p.0.i, i64 0, i32 12
  %15 = load i64, ptr %fts_level.i, align 8, !tbaa !20
  %cmp.i = icmp sgt i64 %15, -1
  br i1 %cmp.i, label %for.body.i, label %cleanup, !llvm.loop !22

cleanup:                                          ; preds = %if.end.i, %for.body.i, %if.end50, %land.rhs.i, %land.rhs.i, %land.rhs.i, %land.rhs.i, %if.then2, %if.then
  %retval.0 = phi i32 [ 2, %if.then2 ], [ 2, %if.then ], [ 2, %land.rhs.i ], [ 2, %land.rhs.i ], [ 2, %land.rhs.i ], [ 2, %land.rhs.i ], [ 5, %if.end50 ], [ 5, %for.body.i ], [ 5, %if.end.i ]
  ret i32 %retval.0
}

declare ptr @quotearg_n_style_colon(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noreturn nounwind
declare void @abort() local_unnamed_addr #10

declare i32 @rpl_fts_close(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare i32 @unlinkat(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @__printf_chk(i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind
declare i32 @fstatat(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare zeroext i1 @can_write_any_file() local_unnamed_addr #1

; Function Attrs: nounwind
declare i32 @faccessat(i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare i32 @__fprintf_chk(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare ptr @file_type(ptr noundef) local_unnamed_addr #6

declare zeroext i1 @yesno() local_unnamed_addr #1

declare i32 @openat(i32 noundef, ptr noundef, i32 noundef, ...) local_unnamed_addr #1

declare noalias ptr @fdopendir(i32 noundef) local_unnamed_addr #1

declare i32 @close(i32 noundef) local_unnamed_addr #1

declare ptr @readdir(ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare noundef i32 @closedir(ptr nocapture noundef) local_unnamed_addr #8

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nounwind }
attributes #12 = { nounwind willreturn memory(none) }
attributes #13 = { cold nounwind }
attributes #14 = { nounwind willreturn memory(read) }
attributes #15 = { noreturn nounwind }

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
!9 = !{!10, !11, i64 8, i64 1}
!10 = !{!7, i64 32, !"rm_options", !11, i64 0, i64 1, !12, i64 4, i64 4, !11, i64 8, i64 1, !11, i64 9, i64 1, !11, i64 10, i64 1, !6, i64 16, i64 8, !11, i64 24, i64 1, !11, i64 25, i64 1, !11, i64 26, i64 1, !11, i64 27, i64 1}
!11 = !{!7, i64 1, !"_Bool"}
!12 = !{!7, i64 4, !"int"}
!13 = !{i8 0, i8 2}
!14 = !{}
!15 = !{!12, !12, i64 0, i64 4}
!16 = !{!17, !17, i64 0, i64 2}
!17 = !{!7, i64 2, !"short"}
!18 = !{!10, !11, i64 9, i64 1}
!19 = !{!10, !11, i64 10, i64 1}
!20 = !{!21, !21, i64 0, i64 8}
!21 = !{!7, i64 8, !"long"}
!22 = distinct !{!22, !23}
!23 = !{!"llvm.loop.mustprogress"}
!24 = !{!7, !7, i64 0, i64 1}
!25 = !{!10, !6, i64 16, i64 8}
!26 = !{!27, !21, i64 0, i64 8}
!27 = !{!7, i64 144, !"stat", !21, i64 0, i64 8, !21, i64 8, i64 8, !21, i64 16, i64 8, !12, i64 24, i64 4, !12, i64 28, i64 4, !12, i64 32, i64 4, !12, i64 36, i64 4, !21, i64 40, i64 8, !21, i64 48, i64 8, !21, i64 56, i64 8, !21, i64 64, i64 8, !28, i64 72, i64 16, !28, i64 88, i64 16, !28, i64 104, i64 16, !21, i64 120, i64 24}
!28 = !{!7, i64 16, !"timespec", !21, i64 0, i64 8, !21, i64 8, i64 8}
!29 = !{!30, !21, i64 8, i64 8}
!30 = !{!7, i64 16, !"dev_ino", !21, i64 0, i64 8, !21, i64 8, i64 8}
!31 = !{!27, !21, i64 8, i64 8}
!32 = !{!30, !21, i64 0, i64 8}
!33 = !{!10, !11, i64 24, i64 1}
!34 = !{!35, !21, i64 24, i64 8}
!35 = !{!7, i64 128, !"", !6, i64 0, i64 8, !6, i64 8, i64 8, !6, i64 16, i64 8, !21, i64 24, i64 8, !6, i64 32, i64 8, !12, i64 40, i64 4, !12, i64 44, i64 4, !21, i64 48, i64 8, !21, i64 56, i64 8, !6, i64 64, i64 8, !12, i64 72, i64 4, !6, i64 80, i64 8, !7, i64 88, i64 8, !36, i64 96, i64 32}
!36 = !{!7, i64 32, !"I_ring", !12, i64 0, i64 16, !12, i64 16, i64 4, !12, i64 20, i64 4, !12, i64 24, i64 4, !11, i64 28, i64 1}
!37 = !{i32 2, i32 6}
!38 = !{!35, !12, i64 44, i64 4}
!39 = !{!27, !21, i64 80, i64 8}
!40 = !{!10, !12, i64 4, i64 4}
!41 = !{!10, !11, i64 0, i64 1}
!42 = !{!10, !11, i64 25, i64 1}
!43 = !{!27, !12, i64 24, i64 4}
!44 = !{!10, !11, i64 26, i64 1}
