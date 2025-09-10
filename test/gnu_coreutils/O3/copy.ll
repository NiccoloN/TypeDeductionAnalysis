; ModuleID = 'llvm-link'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cp_options = type { i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, ptr, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i8, i8, i8, i8, i8, i8, i32, i32, ptr, ptr }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.dir_list = type { ptr, i64, i64 }
%struct._IO_FILE = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, [1 x i8], ptr, i64, ptr, ptr, ptr, ptr, i64, i32, [20 x i8] }

@.str = private unnamed_addr constant [50 x i8] c"failed to set default file creation context to %s\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"failed to get security context of %s\00", align 1
@.str.2 = private unnamed_addr constant [51 x i8] c"failed to set default file creation context for %s\00", align 1
@.str.3 = private unnamed_addr constant [41 x i8] c"failed to set the security context of %s\00", align 1
@top_level_src_name = internal unnamed_addr global ptr null, align 8
@top_level_dst_name = internal unnamed_addr global ptr null, align 8
@cached_umask.mask = internal unnamed_addr global i32 -1, align 4
@.str.4 = private unnamed_addr constant [55 x i8] c"((unsigned int) (co->backup_type) <= numbered_backups)\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"src/copy.c\00", align 1
@__PRETTY_FUNCTION__.valid_options = private unnamed_addr constant [46 x i8] c"void valid_options(const struct cp_options *)\00", align 1
@.str.6 = private unnamed_addr constant [110 x i8] c"((co->sparse_mode) == SPARSE_NEVER || (co->sparse_mode) == SPARSE_AUTO || (co->sparse_mode) == SPARSE_ALWAYS)\00", align 1
@.str.7 = private unnamed_addr constant [116 x i8] c"((co->reflink_mode) == REFLINK_NEVER || (co->reflink_mode) == REFLINK_AUTO || (co->reflink_mode) == REFLINK_ALWAYS)\00", align 1
@.str.8 = private unnamed_addr constant [38 x i8] c"!(co->hard_link && co->symbolic_link)\00", align 1
@.str.9 = private unnamed_addr constant [73 x i8] c"! (co->reflink_mode == REFLINK_ALWAYS && co->sparse_mode != SPARSE_AUTO)\00", align 1
@.str.10 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.11 = private unnamed_addr constant [15 x i8] c"cannot stat %s\00", align 1
@.str.12 = private unnamed_addr constant [40 x i8] c"-r not specified; omitting directory %s\00", align 1
@.str.13 = private unnamed_addr constant [22 x i8] c"omitting directory %s\00", align 1
@.str.14 = private unnamed_addr constant [49 x i8] c"warning: source file %s specified more than once\00", align 1
@.str.15 = private unnamed_addr constant [28 x i8] c"%s and %s are the same file\00", align 1
@.str.16 = private unnamed_addr constant [17 x i8] c"not replacing %s\00", align 1
@.str.17 = private unnamed_addr constant [12 x i8] c"skipped %s\0A\00", align 1
@.str.18 = private unnamed_addr constant [52 x i8] c"cannot overwrite non-directory %s with directory %s\00", align 1
@.str.19 = private unnamed_addr constant [52 x i8] c"cannot overwrite directory %s with non-directory %s\00", align 1
@.str.20 = private unnamed_addr constant [43 x i8] c"will not overwrite just-created %s with %s\00", align 1
@.str.21 = private unnamed_addr constant [50 x i8] c"backing up %s might destroy source;  %s not moved\00", align 1
@.str.22 = private unnamed_addr constant [51 x i8] c"backing up %s might destroy source;  %s not copied\00", align 1
@.str.23 = private unnamed_addr constant [17 x i8] c"cannot backup %s\00", align 1
@.str.24 = private unnamed_addr constant [17 x i8] c"cannot remove %s\00", align 1
@.str.25 = private unnamed_addr constant [12 x i8] c"removed %s\0A\00", align 1
@.str.26 = private unnamed_addr constant [49 x i8] c"will not copy %s through just-created symlink %s\00", align 1
@.str.27 = private unnamed_addr constant [9 x i8] c"%s -> %s\00", align 1
@.str.28 = private unnamed_addr constant [45 x i8] c"cannot copy a directory, %s, into itself, %s\00", align 1
@.str.29 = private unnamed_addr constant [54 x i8] c"warning: source directory %s specified more than once\00", align 1
@.str.30 = private unnamed_addr constant [45 x i8] c"will not create hard link %s to directory %s\00", align 1
@.str.31 = private unnamed_addr constant [20 x i8] c"exchanged %s <-> %s\00", align 1
@.str.32 = private unnamed_addr constant [17 x i8] c"renamed %s -> %s\00", align 1
@.str.33 = private unnamed_addr constant [47 x i8] c"cannot move %s to a subdirectory of itself, %s\00", align 1
@.str.34 = private unnamed_addr constant [26 x i8] c"cannot exchange %s and %s\00", align 1
@.str.35 = private unnamed_addr constant [20 x i8] c"cannot overwrite %s\00", align 1
@.str.36 = private unnamed_addr constant [21 x i8] c"cannot move %s to %s\00", align 1
@.str.37 = private unnamed_addr constant [60 x i8] c"inter-device move failed: %s to %s; unable to remove target\00", align 1
@.str.38 = private unnamed_addr constant [16 x i8] c"copied %s -> %s\00", align 1
@.str.39 = private unnamed_addr constant [36 x i8] c"cannot copy cyclic symbolic link %s\00", align 1
@.str.40 = private unnamed_addr constant [27 x i8] c"cannot create directory %s\00", align 1
@.str.41 = private unnamed_addr constant [27 x i8] c"setting permissions for %s\00", align 1
@.str.42 = private unnamed_addr constant [22 x i8] c"created directory %s\0A\00", align 1
@.str.43 = private unnamed_addr constant [63 x i8] c"%s: can make relative symbolic links only in current directory\00", align 1
@.str.44 = private unnamed_addr constant [37 x i8] c"cannot create symbolic link %s to %s\00", align 1
@.str.45 = private unnamed_addr constant [22 x i8] c"cannot create fifo %s\00", align 1
@.str.46 = private unnamed_addr constant [30 x i8] c"cannot create special file %s\00", align 1
@.str.47 = private unnamed_addr constant [29 x i8] c"cannot read symbolic link %s\00", align 1
@.str.48 = private unnamed_addr constant [31 x i8] c"cannot create symbolic link %s\00", align 1
@.str.49 = private unnamed_addr constant [36 x i8] c"failed to preserve ownership for %s\00", align 1
@.str.50 = private unnamed_addr constant [25 x i8] c"%s has unknown file type\00", align 1
@.str.51 = private unnamed_addr constant [24 x i8] c"preserving times for %s\00", align 1
@.str.52 = private unnamed_addr constant [30 x i8] c"preserving permissions for %s\00", align 1
@.str.53 = private unnamed_addr constant [20 x i8] c"cannot un-backup %s\00", align 1
@.str.54 = private unnamed_addr constant [21 x i8] c"%s -> %s (unbackup)\0A\00", align 1
@.str.55 = private unnamed_addr constant [33 x i8] c"cannot create hard link %s to %s\00", align 1
@stderr = external local_unnamed_addr global ptr, align 8
@.str.57 = private unnamed_addr constant [45 x i8] c"%s: replace %s, overriding mode %04lo (%s)? \00", align 1
@.str.58 = private unnamed_addr constant [49 x i8] c"%s: unwritable %s (mode %04lo, %s); try anyway? \00", align 1
@program_name = external local_unnamed_addr global ptr, align 8
@.str.59 = private unnamed_addr constant [19 x i8] c"%s: overwrite %s? \00", align 1
@simple_backup_suffix = external local_unnamed_addr global ptr, align 8
@.str.60 = private unnamed_addr constant [14 x i8] c" (backup: %s)\00", align 1
@stdout = external local_unnamed_addr global ptr, align 8
@.str.61 = private unnamed_addr constant [17 x i8] c"cannot access %s\00", align 1
@copy_debug.0 = internal unnamed_addr global i32 0, align 4
@copy_debug.1 = internal unnamed_addr global i32 0, align 4
@copy_debug.2 = internal unnamed_addr global i32 0, align 4
@.str.62 = private unnamed_addr constant [27 x i8] c"cannot open %s for reading\00", align 1
@.str.63 = private unnamed_addr constant [16 x i8] c"cannot fstat %s\00", align 1
@.str.64 = private unnamed_addr constant [56 x i8] c"skipping file %s, as it was replaced while being copied\00", align 1
@.str.65 = private unnamed_addr constant [40 x i8] c"not writing through dangling symlink %s\00", align 1
@.str.66 = private unnamed_addr constant [30 x i8] c"cannot create regular file %s\00", align 1
@.str.67 = private unnamed_addr constant [16 x i8] c"cannot lseek %s\00", align 1
@.str.68 = private unnamed_addr constant [20 x i8] c"failed to extend %s\00", align 1
@.str.69 = private unnamed_addr constant [19 x i8] c"failed to close %s\00", align 1
@.str.70 = private unnamed_addr constant [27 x i8] c"failed to clone %s from %s\00", align 1
@.str.71 = private unnamed_addr constant [17 x i8] c"%s: write failed\00", align 1
@.str.72 = private unnamed_addr constant [22 x i8] c"error deallocating %s\00", align 1
@write_zeros.zeros = internal unnamed_addr global ptr null, align 8
@write_zeros.nz = internal unnamed_addr global i1 false, align 8
@write_zeros.fallback = internal global [1024 x i8] zeroinitializer, align 16
@.str.73 = private unnamed_addr constant [23 x i8] c"error copying %s to %s\00", align 1
@.str.74 = private unnamed_addr constant [17 x i8] c"error reading %s\00", align 1
@.str.75 = private unnamed_addr constant [17 x i8] c"error writing %s\00", align 1
@.str.76 = private unnamed_addr constant [20 x i8] c"overflow reading %s\00", align 1
@.str.77 = private unnamed_addr constant [53 x i8] c"copy offload: %s, reflink: %s, sparse detection: %s\0A\00", align 1
@.str.78 = private unnamed_addr constant [3 x i8] c"no\00", align 1
@.str.79 = private unnamed_addr constant [4 x i8] c"yes\00", align 1
@.str.80 = private unnamed_addr constant [8 x i8] c"avoided\00", align 1
@.str.81 = private unnamed_addr constant [12 x i8] c"unsupported\00", align 1
@.str.82 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@.str.83 = private unnamed_addr constant [6 x i8] c"zeros\00", align 1
@.str.84 = private unnamed_addr constant [10 x i8] c"SEEK_HOLE\00", align 1
@.str.85 = private unnamed_addr constant [18 x i8] c"SEEK_HOLE + zeros\00", align 1
@.str.86 = private unnamed_addr constant [52 x i8] c"failed to restore the default file creation context\00", align 1
@.str.87 = private unnamed_addr constant [28 x i8] c"clearing permissions for %s\00", align 1
@reltable.copy_reg = private unnamed_addr constant [5 x i32] [i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.82 to i64), i64 ptrtoint (ptr @reltable.copy_reg to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.78 to i64), i64 ptrtoint (ptr @reltable.copy_reg to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.83 to i64), i64 ptrtoint (ptr @reltable.copy_reg to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.84 to i64), i64 ptrtoint (ptr @reltable.copy_reg to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.85 to i64), i64 ptrtoint (ptr @reltable.copy_reg to i64)) to i32)], align 4
@switch.table.copy_reg.96 = private unnamed_addr constant [7 x ptr] [ptr @.str.82, ptr @.str.78, ptr @.str.79, ptr @.str.78, ptr @.str.78, ptr @.str.80, ptr @.str.81], align 8

; Function Attrs: nounwind uwtable
define dso_local noundef zeroext i1 @set_process_security_ctx(ptr noundef nonnull %src_name, ptr noundef nonnull %dst_name, i32 noundef %mode, i1 noundef zeroext %new_dst, ptr nocapture noundef nonnull readonly %x) local_unnamed_addr #0 {
entry:
  %con_raw = alloca ptr, align 8
  %preserve_security_context = getelementptr inbounds %struct.cp_options, ptr %x, i64 0, i32 24
  %0 = load i8, ptr %preserve_security_context, align 1, !tbaa !5, !range !12, !noundef !13
  %tobool.not = icmp eq i8 %0, 0
  br i1 %tobool.not, label %if.else42, label %if.then

if.then:                                          ; preds = %entry
  %data_copy_required = getelementptr inbounds %struct.cp_options, ptr %x, i64 0, i32 22
  %1 = load i8, ptr %data_copy_required, align 1, !tbaa !14, !range !12, !noundef !13
  %tobool1.not = icmp eq i8 %1, 0
  br i1 %tobool1.not, label %land.end.thread, label %lor.end

lor.end:                                          ; preds = %if.then
  %require_preserve_context = getelementptr inbounds %struct.cp_options, ptr %x, i64 0, i32 25
  %2 = load i8, ptr %require_preserve_context, align 4, !tbaa !15, !range !12, !noundef !13
  %tobool2.not = icmp eq i8 %2, 0
  br i1 %tobool2.not, label %land.end, label %land.end.thread82

land.end:                                         ; preds = %lor.end
  %reduce_diagnostics = getelementptr inbounds %struct.cp_options, ptr %x, i64 0, i32 28
  %3 = load i8, ptr %reduce_diagnostics, align 1, !tbaa !16, !range !12, !noundef !13
  %tobool5.not = icmp eq i8 %3, 0
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %con_raw) #23
  %call = call i32 @rpl_lgetfilecon_raw(ptr noundef nonnull %src_name, ptr noundef nonnull %con_raw) #23
  %cmp = icmp sgt i32 %call, -1
  br i1 %cmp, label %if.then7, label %lor.lhs.false25

land.end.thread82:                                ; preds = %lor.end
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %con_raw) #23
  %call83 = call i32 @rpl_lgetfilecon_raw(ptr noundef nonnull %src_name, ptr noundef nonnull %con_raw) #23
  %cmp84 = icmp sgt i32 %call83, -1
  br i1 %cmp84, label %if.then7.thread85, label %if.then30

land.end.thread:                                  ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %con_raw) #23
  %call76 = call i32 @rpl_lgetfilecon_raw(ptr noundef nonnull %src_name, ptr noundef nonnull %con_raw) #23
  %cmp77 = icmp sgt i32 %call76, -1
  br i1 %cmp77, label %if.then7.thread, label %if.then30

if.then7:                                         ; preds = %land.end
  %4 = load ptr, ptr %con_raw, align 8, !tbaa !17
  %call8 = call i32 @setfscreatecon_raw(ptr noundef %4) #23
  %cmp9 = icmp slt i32 %call8, 0
  br i1 %cmp9, label %lor.lhs.false, label %if.end23

if.then7.thread85:                                ; preds = %land.end.thread82
  %5 = load ptr, ptr %con_raw, align 8, !tbaa !17
  %call886 = call i32 @setfscreatecon_raw(ptr noundef %5) #23
  %cmp987 = icmp slt i32 %call886, 0
  br i1 %cmp987, label %if.then15, label %if.end23

if.then7.thread:                                  ; preds = %land.end.thread
  %6 = load ptr, ptr %con_raw, align 8, !tbaa !17
  %call880 = call i32 @setfscreatecon_raw(ptr noundef %6) #23
  %cmp981 = icmp slt i32 %call880, 0
  br i1 %cmp981, label %if.then15, label %if.end23

lor.lhs.false:                                    ; preds = %if.then7
  br i1 %tobool5.not, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %lor.lhs.false
  %call13 = tail call ptr @__errno_location() #24
  %7 = load i32, ptr %call13, align 4, !tbaa !18
  switch i32 %7, label %if.then15 [
    i32 95, label %if.end
    i32 61, label %if.end
  ]

if.then15:                                        ; preds = %land.lhs.true, %if.then7.thread, %if.then7.thread85
  %call16 = tail call ptr @__errno_location() #24
  %8 = load i32, ptr %call16, align 4, !tbaa !18
  %call17 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str, i32 noundef 5) #23
  %9 = load ptr, ptr %con_raw, align 8, !tbaa !17
  %call18 = call ptr @quote(ptr noundef %9) #23
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %8, ptr noundef %call17, ptr noundef %call18) #25
  br label %if.end

if.end:                                           ; preds = %if.then15, %land.lhs.true, %land.lhs.true, %lor.lhs.false
  %require_preserve_context19 = getelementptr inbounds %struct.cp_options, ptr %x, i64 0, i32 25
  %10 = load i8, ptr %require_preserve_context19, align 4, !tbaa !15, !range !12, !noundef !13
  %tobool20.not = icmp eq i8 %10, 0
  br i1 %tobool20.not, label %if.end23, label %if.then21

if.then21:                                        ; preds = %if.end
  %11 = load ptr, ptr %con_raw, align 8, !tbaa !17
  call void @freecon(ptr noundef %11) #23
  br label %cleanup.thread

if.end23:                                         ; preds = %if.end, %if.then7.thread, %if.then7.thread85, %if.then7
  %12 = load ptr, ptr %con_raw, align 8, !tbaa !17
  call void @freecon(ptr noundef %12) #23
  br label %cleanup

lor.lhs.false25:                                  ; preds = %land.end
  br i1 %tobool5.not, label %land.lhs.true27, label %if.end34

land.lhs.true27:                                  ; preds = %lor.lhs.false25
  %call28 = tail call ptr @__errno_location() #24
  %13 = load i32, ptr %call28, align 4, !tbaa !18
  switch i32 %13, label %if.then30 [
    i32 95, label %if.end34
    i32 61, label %if.end34
  ]

if.then30:                                        ; preds = %land.lhs.true27, %land.end.thread, %land.end.thread82
  %call31 = tail call ptr @__errno_location() #24
  %14 = load i32, ptr %call31, align 4, !tbaa !18
  %call32 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.1, i32 noundef 5) #23
  %call33 = call ptr @quotearg_style(i32 noundef 4, ptr noundef nonnull %src_name) #23
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %14, ptr noundef %call32, ptr noundef %call33) #25
  br label %if.end34

if.end34:                                         ; preds = %if.then30, %land.lhs.true27, %land.lhs.true27, %lor.lhs.false25
  %require_preserve_context35 = getelementptr inbounds %struct.cp_options, ptr %x, i64 0, i32 25
  %15 = load i8, ptr %require_preserve_context35, align 4, !tbaa !15, !range !12, !noundef !13
  %tobool36.not = icmp eq i8 %15, 0
  br i1 %tobool36.not, label %cleanup, label %cleanup.thread

cleanup.thread:                                   ; preds = %if.end34, %if.then21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %con_raw) #23
  br label %return

cleanup:                                          ; preds = %if.end34, %if.end23
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %con_raw) #23
  br label %return

if.else42:                                        ; preds = %entry
  %set_security_context = getelementptr inbounds %struct.cp_options, ptr %x, i64 0, i32 20
  %16 = load ptr, ptr %set_security_context, align 8, !tbaa !19
  %tobool43.not = icmp ne ptr %16, null
  %brmerge.not = and i1 %tobool43.not, %new_dst
  br i1 %brmerge.not, label %land.lhs.true46, label %return

land.lhs.true46:                                  ; preds = %if.else42
  %call48 = tail call i32 @defaultcon(ptr noundef nonnull %16, ptr noundef nonnull %dst_name, i32 noundef %mode) #23
  %cmp49 = icmp slt i32 %call48, 0
  br i1 %cmp49, label %land.lhs.true50, label %return

land.lhs.true50:                                  ; preds = %land.lhs.true46
  %call51 = tail call ptr @__errno_location() #24
  %17 = load i32, ptr %call51, align 4, !tbaa !18
  switch i32 %17, label %if.then53 [
    i32 95, label %return
    i32 61, label %return
  ]

if.then53:                                        ; preds = %land.lhs.true50
  %call55 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.2, i32 noundef 5) #23
  %call56 = tail call ptr @quotearg_style(i32 noundef 4, ptr noundef nonnull %dst_name) #23
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %17, ptr noundef %call55, ptr noundef %call56) #25
  br label %return

return:                                           ; preds = %if.then53, %land.lhs.true50, %land.lhs.true50, %land.lhs.true46, %if.else42, %cleanup, %cleanup.thread
  %retval.1 = phi i1 [ false, %cleanup.thread ], [ true, %cleanup ], [ true, %if.else42 ], [ true, %if.then53 ], [ true, %land.lhs.true50 ], [ true, %land.lhs.true46 ], [ true, %land.lhs.true50 ]
  ret i1 %retval.1
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare i32 @rpl_lgetfilecon_raw(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @setfscreatecon_raw(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #3

; Function Attrs: nounwind
declare ptr @dcgettext(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

declare ptr @quote(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold
declare void @error(i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #5

declare void @freecon(ptr noundef) local_unnamed_addr #2

declare ptr @quotearg_style(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

declare i32 @defaultcon(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local zeroext i1 @set_file_security_ctx(ptr noundef nonnull %dst_name, i1 noundef zeroext %recurse, ptr nocapture noundef nonnull readonly %x) local_unnamed_addr #0 {
entry:
  %data_copy_required = getelementptr inbounds %struct.cp_options, ptr %x, i64 0, i32 22
  %0 = load i8, ptr %data_copy_required, align 1, !tbaa !14, !range !12, !noundef !13
  %tobool.not = icmp eq i8 %0, 0
  br i1 %tobool.not, label %land.end.thread, label %lor.end

lor.end:                                          ; preds = %entry
  %require_preserve_context = getelementptr inbounds %struct.cp_options, ptr %x, i64 0, i32 25
  %1 = load i8, ptr %require_preserve_context, align 4, !tbaa !15, !range !12, !noundef !13
  %tobool1.not = icmp eq i8 %1, 0
  br i1 %tobool1.not, label %land.end, label %land.end.thread28

land.end:                                         ; preds = %lor.end
  %reduce_diagnostics = getelementptr inbounds %struct.cp_options, ptr %x, i64 0, i32 28
  %2 = load i8, ptr %reduce_diagnostics, align 1, !tbaa !16, !range !12, !noundef !13
  %tobool4.not = icmp ne i8 %2, 0
  %set_security_context = getelementptr inbounds %struct.cp_options, ptr %x, i64 0, i32 20
  %3 = load ptr, ptr %set_security_context, align 8, !tbaa !19
  %call = tail call zeroext i1 @restorecon(ptr noundef %3, ptr noundef nonnull %dst_name, i1 noundef zeroext %recurse) #23
  %brmerge = or i1 %call, %tobool4.not
  br i1 %brmerge, label %cleanup, label %land.lhs.true

land.end.thread28:                                ; preds = %lor.end
  %set_security_context29 = getelementptr inbounds %struct.cp_options, ptr %x, i64 0, i32 20
  %4 = load ptr, ptr %set_security_context29, align 8, !tbaa !19
  %call30 = tail call zeroext i1 @restorecon(ptr noundef %4, ptr noundef nonnull %dst_name, i1 noundef zeroext %recurse) #23
  br i1 %call30, label %cleanup, label %if.then11

land.end.thread:                                  ; preds = %entry
  %set_security_context22 = getelementptr inbounds %struct.cp_options, ptr %x, i64 0, i32 20
  %5 = load ptr, ptr %set_security_context22, align 8, !tbaa !19
  %call23 = tail call zeroext i1 @restorecon(ptr noundef %5, ptr noundef nonnull %dst_name, i1 noundef zeroext %recurse) #23
  br i1 %call23, label %cleanup, label %if.then11

land.lhs.true:                                    ; preds = %land.end
  %call9 = tail call ptr @__errno_location() #24
  %6 = load i32, ptr %call9, align 4, !tbaa !18
  switch i32 %6, label %if.then11 [
    i32 95, label %cleanup
    i32 61, label %cleanup
  ]

if.then11:                                        ; preds = %land.lhs.true, %land.end.thread, %land.end.thread28
  %call12 = tail call ptr @__errno_location() #24
  %7 = load i32, ptr %call12, align 4, !tbaa !18
  %call13 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.3, i32 noundef 5) #23
  %call14 = tail call ptr @quotearg_n_style(i32 noundef 0, i32 noundef 4, ptr noundef nonnull %dst_name) #23
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %7, ptr noundef %call13, ptr noundef %call14) #25
  br label %cleanup

cleanup:                                          ; preds = %if.then11, %land.lhs.true, %land.lhs.true, %land.end.thread, %land.end.thread28, %land.end
  %call25 = phi i1 [ true, %land.end.thread ], [ %call, %land.end ], [ false, %land.lhs.true ], [ false, %if.then11 ], [ false, %land.lhs.true ], [ true, %land.end.thread28 ]
  ret i1 %call25
}

declare zeroext i1 @restorecon(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

declare ptr @quotearg_n_style(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @dest_info_init(ptr nocapture noundef nonnull writeonly %x) local_unnamed_addr #0 {
entry:
  %call = tail call noalias ptr @hash_initialize(i64 noundef 61, ptr noundef null, ptr noundef nonnull @triple_hash, ptr noundef nonnull @triple_compare, ptr noundef nonnull @triple_free) #23
  %dest_info = getelementptr inbounds %struct.cp_options, ptr %x, i64 0, i32 41
  store ptr %call, ptr %dest_info, align 8, !tbaa !20
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @xalloc_die() #26
  unreachable

if.end:                                           ; preds = %entry
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i64 @triple_hash(ptr noundef, i64 noundef) #6

declare zeroext i1 @triple_compare(ptr noundef, ptr noundef) #2

declare void @triple_free(ptr noundef) #2

declare noalias ptr @hash_initialize(i64 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noreturn
declare void @xalloc_die() local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define dso_local void @src_info_init(ptr nocapture noundef nonnull writeonly %x) local_unnamed_addr #0 {
entry:
  %call = tail call noalias ptr @hash_initialize(i64 noundef 61, ptr noundef null, ptr noundef nonnull @triple_hash_no_name, ptr noundef nonnull @triple_compare, ptr noundef nonnull @triple_free) #23
  %src_info = getelementptr inbounds %struct.cp_options, ptr %x, i64 0, i32 42
  store ptr %call, ptr %src_info, align 8, !tbaa !21
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @xalloc_die() #26
  unreachable

if.end:                                           ; preds = %entry
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i64 @triple_hash_no_name(ptr noundef, i64 noundef) #6

; Function Attrs: nounwind uwtable
define dso_local zeroext i1 @copy(ptr noundef nonnull %src_name, ptr noundef nonnull %dst_name, i32 noundef %dst_dirfd, ptr noundef nonnull %dst_relname, i32 noundef %nonexistent_dst, ptr noundef nonnull %options, ptr nocapture noundef nonnull %copy_into_self, ptr noundef %rename_succeeded) local_unnamed_addr #0 {
entry:
  %first_dir_created_per_command_line_arg = alloca i8, align 1
  %0 = load i32, ptr %options, align 8, !tbaa !22
  %cmp.i = icmp ult i32 %0, 4
  br i1 %cmp.i, label %if.end.i, label %if.else.i

if.else.i:                                        ; preds = %entry
  tail call void @__assert_fail(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5, i32 noundef 3357, ptr noundef nonnull @__PRETTY_FUNCTION__.valid_options) #26
  unreachable

if.end.i:                                         ; preds = %entry
  %sparse_mode.i = getelementptr inbounds %struct.cp_options, ptr %options, i64 0, i32 3
  %1 = load i32, ptr %sparse_mode.i, align 4, !tbaa !23
  %.off.i = add i32 %1, -1
  %switch.i = icmp ult i32 %.off.i, 3
  br i1 %switch.i, label %if.end9.i, label %if.else8.i

if.else8.i:                                       ; preds = %if.end.i
  tail call void @__assert_fail(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.5, i32 noundef 3358, ptr noundef nonnull @__PRETTY_FUNCTION__.valid_options) #26
  unreachable

if.end9.i:                                        ; preds = %if.end.i
  %reflink_mode.i = getelementptr inbounds %struct.cp_options, ptr %options, i64 0, i32 40
  %2 = load i32, ptr %reflink_mode.i, align 4, !tbaa !24
  %switch43.i = icmp ult i32 %2, 3
  br i1 %switch43.i, label %if.end19.i, label %if.else18.i

if.else18.i:                                      ; preds = %if.end9.i
  tail call void @__assert_fail(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.5, i32 noundef 3359, ptr noundef nonnull @__PRETTY_FUNCTION__.valid_options) #26
  unreachable

if.end19.i:                                       ; preds = %if.end9.i
  %hard_link.i = getelementptr inbounds %struct.cp_options, ptr %options, i64 0, i32 8
  %3 = load i8, ptr %hard_link.i, align 1, !tbaa !25, !range !12, !noundef !13
  %tobool.not.i = icmp eq i8 %3, 0
  br i1 %tobool.not.i, label %if.end23.i, label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %if.end19.i
  %symbolic_link.i = getelementptr inbounds %struct.cp_options, ptr %options, i64 0, i32 31
  %4 = load i8, ptr %symbolic_link.i, align 2, !tbaa !26, !range !12, !noundef !13
  %tobool20.not.i = icmp eq i8 %4, 0
  br i1 %tobool20.not.i, label %if.end23.i, label %if.else22.i

if.else22.i:                                      ; preds = %land.lhs.true.i
  tail call void @__assert_fail(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.5, i32 noundef 3360, ptr noundef nonnull @__PRETTY_FUNCTION__.valid_options) #26
  unreachable

if.end23.i:                                       ; preds = %land.lhs.true.i, %if.end19.i
  %cmp25.i = icmp ne i32 %2, 2
  %cmp28.not.i = icmp eq i32 %1, 2
  %or.cond.i = or i1 %cmp28.not.i, %cmp25.i
  br i1 %or.cond.i, label %valid_options.exit, label %if.else30.i

if.else30.i:                                      ; preds = %if.end23.i
  tail call void @__assert_fail(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.5, i32 noundef 3363, ptr noundef nonnull @__PRETTY_FUNCTION__.valid_options) #26
  unreachable

valid_options.exit:                               ; preds = %if.end23.i
  store ptr %src_name, ptr @top_level_src_name, align 8, !tbaa !17
  store ptr %dst_name, ptr @top_level_dst_name, align 8, !tbaa !17
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %first_dir_created_per_command_line_arg) #23
  store i8 0, ptr %first_dir_created_per_command_line_arg, align 1, !tbaa !27
  %call = call fastcc zeroext i1 @copy_internal(ptr noundef nonnull %src_name, ptr noundef nonnull %dst_name, i32 noundef %dst_dirfd, ptr noundef nonnull %dst_relname, i32 noundef %nonexistent_dst, ptr noundef null, ptr noundef null, ptr noundef nonnull %options, i1 noundef zeroext true, ptr noundef nonnull %first_dir_created_per_command_line_arg, ptr noundef nonnull %copy_into_self, ptr noundef %rename_succeeded)
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %first_dir_created_per_command_line_arg) #23
  ret i1 %call
}

; Function Attrs: noreturn nounwind
declare void @__assert_fail(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i1 @copy_internal(ptr noundef %src_name, ptr noundef %dst_name, i32 noundef %dst_dirfd, ptr noundef %dst_relname, i32 noundef %nonexistent_dst, ptr noundef readonly %parent, ptr noundef %ancestors, ptr noundef readonly %x, i1 noundef zeroext %command_line_arg, ptr nocapture noundef %first_dir_created_per_command_line_arg, ptr nocapture noundef %copy_into_self, ptr noundef writeonly %rename_succeeded) unnamed_addr #0 {
entry:
  %non_command_line_options.i = alloca %struct.cp_options, align 8
  %local_copy_into_self.i = alloca i8, align 1
  %first_dir_created.i = alloca i8, align 1
  %rename_succeeded.i = alloca i8, align 1
  %tmp_dst_sb.i = alloca %struct.stat, align 8
  %tmp_src_sb.i = alloca %struct.stat, align 8
  %src_sb = alloca %struct.stat, align 8
  %dst_sb = alloca %struct.stat, align 8
  %dst_sb.sroa.gep = getelementptr inbounds %struct.stat, ptr %dst_sb, i64 0, i32 3
  %new_dst = alloca i8, align 1
  %tmp_buf = alloca %struct.stat, align 8
  %tmp_buf.sroa.gep = getelementptr inbounds %struct.stat, ptr %tmp_buf, i64 0, i32 3
  %dot_sb = alloca %struct.stat, align 8
  %dst_parent_sb = alloca %struct.stat, align 8
  %sb = alloca %struct.stat, align 8
  %timespec = alloca [2 x %struct.timespec], align 16
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %src_sb) #23
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %dst_sb) #23
  %0 = load i8, ptr %dst_relname, align 1, !tbaa !28
  %tobool.not = icmp eq i8 %0, 0
  %cond = select i1 %tobool.not, ptr @.str.10, ptr %dst_relname
  store i8 0, ptr %copy_into_self, align 1, !tbaa !27
  %rename_errno1 = getelementptr inbounds %struct.cp_options, ptr %x, i64 0, i32 39
  %1 = load i32, ptr %rename_errno1, align 8, !tbaa !29
  %move_mode = getelementptr inbounds %struct.cp_options, ptr %x, i64 0, i32 9
  %2 = load i8, ptr %move_mode, align 8, !tbaa !30, !range !12, !noundef !13
  %tobool2.not = icmp eq i8 %2, 0
  br i1 %tobool2.not, label %if.end17, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %exchange = getelementptr inbounds %struct.cp_options, ptr %x, i64 0, i32 11
  %3 = load i8, ptr %exchange, align 2, !tbaa !31, !range !12, !noundef !13
  %tobool4.not = icmp eq i8 %3, 0
  br i1 %tobool4.not, label %if.then, label %if.end17

if.then:                                          ; preds = %land.lhs.true
  %cmp = icmp slt i32 %1, 0
  br i1 %cmp, label %if.then6, label %if.end

if.then6:                                         ; preds = %if.then
  %call = tail call i32 @renameatu(i32 noundef -100, ptr noundef %src_name, i32 noundef %dst_dirfd, ptr noundef nonnull %cond, i32 noundef 1) #23
  %tobool7.not = icmp eq i32 %call, 0
  br i1 %tobool7.not, label %if.end, label %cond.true8

cond.true8:                                       ; preds = %if.then6
  %call9 = tail call ptr @__errno_location() #24
  %4 = load i32, ptr %call9, align 4, !tbaa !18
  br label %if.end

if.end:                                           ; preds = %cond.true8, %if.then6, %if.then
  %rename_errno.0 = phi i32 [ %1, %if.then ], [ %4, %cond.true8 ], [ 0, %if.then6 ]
  %cmp13 = icmp eq i32 %rename_errno.0, 0
  %frombool15 = zext i1 %cmp13 to i8
  store i8 %frombool15, ptr %rename_succeeded, align 1, !tbaa !27
  %conv16 = zext i1 %cmp13 to i32
  br label %if.end17

if.end17:                                         ; preds = %if.end, %land.lhs.true, %entry
  %rename_errno.1 = phi i32 [ %1, %land.lhs.true ], [ %rename_errno.0, %if.end ], [ %1, %entry ]
  %nonexistent_dst.addr.0 = phi i32 [ %nonexistent_dst, %land.lhs.true ], [ %conv16, %if.end ], [ %nonexistent_dst, %entry ]
  %cmp18 = icmp eq i32 %rename_errno.1, 0
  br i1 %cmp18, label %cond.true20, label %cond.false22

cond.true20:                                      ; preds = %if.end17
  %last_file = getelementptr inbounds %struct.cp_options, ptr %x, i64 0, i32 38
  %5 = load i8, ptr %last_file, align 1, !tbaa !32, !range !12, !noundef !13
  %tobool21.not = icmp eq i8 %5, 0
  br i1 %tobool21.not, label %if.then31, label %if.end78

cond.false22:                                     ; preds = %if.end17
  %cmp23.not = icmp eq i32 %rename_errno.1, 17
  br i1 %cmp23.not, label %lor.lhs.false, label %if.then31

lor.lhs.false:                                    ; preds = %cond.false22
  %update = getelementptr inbounds %struct.cp_options, ptr %x, i64 0, i32 32
  %6 = load i32, ptr %update, align 4, !tbaa !33
  %7 = and i32 %6, -2
  %switch1916 = icmp eq i32 %7, 2
  br i1 %switch1916, label %if.end78, label %if.then31

if.then31:                                        ; preds = %lor.lhs.false, %cond.false22, %cond.true20
  %cond49 = phi ptr [ %src_name, %cond.false22 ], [ %cond, %cond.true20 ], [ %src_name, %lor.lhs.false ]
  %cond43 = phi i32 [ -100, %cond.false22 ], [ %dst_dirfd, %cond.true20 ], [ -100, %lor.lhs.false ]
  %dereference = getelementptr inbounds %struct.cp_options, ptr %x, i64 0, i32 1
  %8 = load i32, ptr %dereference, align 4, !tbaa !34
  %cmp50 = icmp eq i32 %8, 2
  %cond52 = select i1 %cmp50, i32 256, i32 0
  %call.i1927 = call i32 @fstatat(i32 noundef %cond43, ptr noundef %cond49, ptr noundef nonnull %src_sb, i32 noundef %cond52) #23
  %cmp54.not = icmp eq i32 %call.i1927, 0
  br i1 %cmp54.not, label %if.end60, label %if.then56

if.then56:                                        ; preds = %if.then31
  %cond37 = select i1 %cmp18, ptr %dst_name, ptr %src_name
  %call57 = tail call ptr @__errno_location() #24
  %9 = load i32, ptr %call57, align 4, !tbaa !18
  %call58 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.11, i32 noundef 5) #23
  %call59 = call ptr @quotearg_style(i32 noundef 4, ptr noundef %cond37) #23
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %9, ptr noundef %call58, ptr noundef %call59) #25
  br label %cleanup1393

if.end60:                                         ; preds = %if.then31
  %st_mode = getelementptr inbounds %struct.stat, ptr %src_sb, i64 0, i32 3
  %10 = load i32, ptr %st_mode, align 8, !tbaa !35
  %and = and i32 %10, 61440
  %cmp61 = icmp eq i32 %and, 16384
  br i1 %cmp61, label %land.lhs.true63, label %if.end78

land.lhs.true63:                                  ; preds = %if.end60
  %recursive = getelementptr inbounds %struct.cp_options, ptr %x, i64 0, i32 29
  %11 = load i8, ptr %recursive, align 8, !tbaa !39, !range !12, !noundef !13
  %tobool64.not = icmp eq i8 %11, 0
  br i1 %tobool64.not, label %if.then65, label %if.end78

if.then65:                                        ; preds = %land.lhs.true63
  %install_mode = getelementptr inbounds %struct.cp_options, ptr %x, i64 0, i32 12
  %12 = load i8, ptr %install_mode, align 1, !tbaa !40, !range !12, !noundef !13
  %tobool66.not = icmp eq i8 %12, 0
  %.str.12..str.13 = select i1 %tobool66.not, ptr @.str.12, ptr @.str.13
  %call70 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull %.str.12..str.13, i32 noundef 5) #23
  %call73 = call ptr @quotearg_style(i32 noundef 4, ptr noundef %src_name) #23
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %call70, ptr noundef %call73) #25
  br label %cleanup1393

if.end78:                                         ; preds = %land.lhs.true63, %if.end60, %lor.lhs.false, %cond.true20
  %src_mode.1 = phi i32 [ undef, %cond.true20 ], [ undef, %lor.lhs.false ], [ %10, %land.lhs.true63 ], [ %10, %if.end60 ]
  br i1 %command_line_arg, label %land.lhs.true81, label %if.end99

land.lhs.true81:                                  ; preds = %if.end78
  %src_info = getelementptr inbounds %struct.cp_options, ptr %x, i64 0, i32 42
  %13 = load ptr, ptr %src_info, align 8, !tbaa !21
  %tobool82.not = icmp eq ptr %13, null
  br i1 %tobool82.not, label %if.end99, label %if.then83

if.then83:                                        ; preds = %land.lhs.true81
  %and84 = and i32 %src_mode.1, 61440
  %cmp85 = icmp eq i32 %and84, 16384
  br i1 %cmp85, label %if.end97, label %land.lhs.true87

land.lhs.true87:                                  ; preds = %if.then83
  %14 = load i32, ptr %x, align 8, !tbaa !22
  %cmp88 = icmp eq i32 %14, 0
  br i1 %cmp88, label %land.lhs.true90, label %if.end97

land.lhs.true90:                                  ; preds = %land.lhs.true87
  %call92 = call zeroext i1 @seen_file(ptr noundef nonnull %13, ptr noundef %src_name, ptr noundef nonnull %src_sb) #23
  br i1 %call92, label %if.then94, label %land.lhs.true90.if.end97_crit_edge

land.lhs.true90.if.end97_crit_edge:               ; preds = %land.lhs.true90
  %.pre = load ptr, ptr %src_info, align 8, !tbaa !21
  br label %if.end97

if.then94:                                        ; preds = %land.lhs.true90
  %call95 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.14, i32 noundef 5) #23
  %call96 = call ptr @quotearg_style(i32 noundef 4, ptr noundef %src_name) #23
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %call95, ptr noundef %call96) #25
  br label %cleanup1393

if.end97:                                         ; preds = %land.lhs.true90.if.end97_crit_edge, %land.lhs.true87, %if.then83
  %15 = phi ptr [ %.pre, %land.lhs.true90.if.end97_crit_edge ], [ %13, %land.lhs.true87 ], [ %13, %if.then83 ]
  call void @record_file(ptr noundef %15, ptr noundef %src_name, ptr noundef nonnull %src_sb) #23
  br label %if.end99

if.end99:                                         ; preds = %if.end97, %land.lhs.true81, %if.end78
  %16 = getelementptr i8, ptr %x, i64 4
  %x.val = load i32, ptr %16, align 4, !tbaa !34
  %cmp.i = icmp eq i32 %x.val, 4
  br i1 %cmp.i, label %should_dereference.exit, label %lor.rhs.i

lor.rhs.i:                                        ; preds = %if.end99
  %cmp2.i = icmp eq i32 %x.val, 3
  %17 = and i1 %cmp2.i, %command_line_arg
  br label %should_dereference.exit

should_dereference.exit:                          ; preds = %lor.rhs.i, %if.end99
  %18 = phi i1 [ true, %if.end99 ], [ %17, %lor.rhs.i ]
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %new_dst) #23
  %cmp104 = icmp sgt i32 %nonexistent_dst.addr.0, 0
  %frombool106 = zext i1 %cmp104 to i8
  store i8 %frombool106, ptr %new_dst, align 1, !tbaa !27
  br i1 %cmp104, label %if.end475, label %if.then108

if.then108:                                       ; preds = %should_dereference.exit
  %cmp109 = icmp eq i32 %rename_errno.1, 17
  br i1 %cmp109, label %land.lhs.true111, label %if.then119

land.lhs.true111:                                 ; preds = %if.then108
  %update112 = getelementptr inbounds %struct.cp_options, ptr %x, i64 0, i32 32
  %19 = load i32, ptr %update112, align 4, !tbaa !33
  %20 = and i32 %19, -2
  %switch1918 = icmp eq i32 %20, 2
  br i1 %switch1918, label %if.then196, label %if.then119

if.then119:                                       ; preds = %land.lhs.true111, %if.then108
  %and120 = and i32 %src_mode.1, 61440
  %cmp121 = icmp eq i32 %and120, 32768
  br i1 %cmp121, label %lor.lhs.false135, label %land.lhs.true123

land.lhs.true123:                                 ; preds = %if.then119
  %copy_as_regular = getelementptr inbounds %struct.cp_options, ptr %x, i64 0, i32 5
  %21 = load i8, ptr %copy_as_regular, align 4, !tbaa !41, !range !12, !noundef !13
  %tobool124.not = icmp eq i8 %21, 0
  br i1 %tobool124.not, label %if.else157.thread, label %lor.lhs.false125

lor.lhs.false125:                                 ; preds = %land.lhs.true123
  %trunc = trunc i32 %and120 to i16
  switch i16 %trunc, label %lor.lhs.false135 [
    i16 16384, label %land.lhs.true129
    i16 -24576, label %if.else157.thread
  ]

land.lhs.true129:                                 ; preds = %lor.lhs.false125
  %keep_directory_symlink = getelementptr inbounds %struct.cp_options, ptr %x, i64 0, i32 34
  %22 = load i8, ptr %keep_directory_symlink, align 1, !tbaa !42, !range !12, !noundef !13
  %tobool130.not = icmp eq i8 %22, 0
  br i1 %tobool130.not, label %if.else157.thread, label %lor.lhs.false135

lor.lhs.false135:                                 ; preds = %land.lhs.true129, %lor.lhs.false125, %if.then119
  %23 = load i8, ptr %move_mode, align 8, !tbaa !30, !range !12, !noundef !13
  %tobool137.not = icmp eq i8 %23, 0
  br i1 %tobool137.not, label %lor.lhs.false139, label %if.else157.thread

lor.lhs.false139:                                 ; preds = %lor.lhs.false135
  %symbolic_link = getelementptr inbounds %struct.cp_options, ptr %x, i64 0, i32 31
  %24 = load i8, ptr %symbolic_link, align 2, !tbaa !26, !range !12, !noundef !13
  %tobool140.not = icmp eq i8 %24, 0
  br i1 %tobool140.not, label %lor.lhs.false142, label %if.else157.thread

lor.lhs.false142:                                 ; preds = %lor.lhs.false139
  %hard_link = getelementptr inbounds %struct.cp_options, ptr %x, i64 0, i32 8
  %25 = load i8, ptr %hard_link, align 1, !tbaa !25, !range !12, !noundef !13
  %tobool143.not = icmp eq i8 %25, 0
  br i1 %tobool143.not, label %lor.lhs.false145, label %if.else157.thread

lor.lhs.false145:                                 ; preds = %lor.lhs.false142
  %26 = load i32, ptr %x, align 8, !tbaa !22
  %cmp147.not = icmp eq i32 %26, 0
  br i1 %cmp147.not, label %lor.end, label %if.else157.thread

lor.end:                                          ; preds = %lor.lhs.false145
  %unlink_dest_before_opening = getelementptr inbounds %struct.cp_options, ptr %x, i64 0, i32 6
  %27 = load i8, ptr %unlink_dest_before_opening, align 1, !tbaa !43, !range !12, !noundef !13
  %tobool149 = icmp ne i8 %27, 0
  %cmp154 = icmp eq i32 %nonexistent_dst.addr.0, 0
  %or.cond.not = select i1 %tobool149, i1 true, i1 %cmp154
  br i1 %or.cond.not, label %if.else157, label %if.then156

if.then156:                                       ; preds = %lor.end
  store i8 1, ptr %new_dst, align 1, !tbaa !27
  br label %if.end193

if.else157:                                       ; preds = %lor.end
  br i1 %tobool149, label %28, label %if.else157.thread

28:                                               ; preds = %if.else157
  br label %if.else157.thread

if.else157.thread:                                ; preds = %28, %if.else157, %lor.lhs.false145, %lor.lhs.false142, %lor.lhs.false139, %lor.lhs.false135, %land.lhs.true129, %lor.lhs.false125, %land.lhs.true123
  %29 = phi i1 [ false, %if.else157 ], [ true, %28 ], [ true, %lor.lhs.false125 ], [ true, %land.lhs.true123 ], [ true, %land.lhs.true129 ], [ true, %lor.lhs.false135 ], [ true, %lor.lhs.false139 ], [ true, %lor.lhs.false142 ], [ true, %lor.lhs.false145 ]
  %frombool15119711973 = phi i8 [ 0, %if.else157 ], [ 1, %28 ], [ 1, %lor.lhs.false125 ], [ 1, %land.lhs.true123 ], [ 1, %land.lhs.true129 ], [ 1, %lor.lhs.false135 ], [ 1, %lor.lhs.false139 ], [ 1, %lor.lhs.false142 ], [ 1, %lor.lhs.false145 ]
  %30 = phi i32 [ 0, %if.else157 ], [ 256, %28 ], [ 256, %lor.lhs.false125 ], [ 256, %land.lhs.true123 ], [ 256, %land.lhs.true129 ], [ 256, %lor.lhs.false135 ], [ 256, %lor.lhs.false139 ], [ 256, %lor.lhs.false142 ], [ 256, %lor.lhs.false145 ]
  %call.i1928 = call i32 @fstatat(i32 noundef %dst_dirfd, ptr noundef nonnull %cond, ptr noundef nonnull %dst_sb, i32 noundef %30) #23
  %cmp162 = icmp sgt i32 %call.i1928, -1
  br i1 %cmp162, label %if.then196, label %if.else167

if.else167:                                       ; preds = %if.else157.thread
  %call168 = tail call ptr @__errno_location() #24
  %31 = load i32, ptr %call168, align 4, !tbaa !18
  switch i32 %31, label %cleanup190 [
    i32 2, label %if.then171
    i32 40, label %land.lhs.true176
  ]

if.then171:                                       ; preds = %if.else167
  store i8 1, ptr %new_dst, align 1, !tbaa !27
  br label %if.end193

land.lhs.true176:                                 ; preds = %if.else167
  br i1 %29, label %cleanup190, label %land.lhs.true178

land.lhs.true178:                                 ; preds = %land.lhs.true176
  %unlink_dest_after_failed_open = getelementptr inbounds %struct.cp_options, ptr %x, i64 0, i32 7
  %32 = load i8, ptr %unlink_dest_after_failed_open, align 2, !tbaa !44, !range !12, !noundef !13
  %tobool179.not = icmp eq i8 %32, 0
  br i1 %tobool179.not, label %cleanup190, label %if.end193

cleanup190:                                       ; preds = %land.lhs.true178, %land.lhs.true176, %if.else167
  %call184 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.11, i32 noundef 5) #23
  %call185 = call ptr @quotearg_style(i32 noundef 4, ptr noundef %dst_name) #23
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %31, ptr noundef %call184, ptr noundef %call185) #25
  br label %cleanup1391

if.end193:                                        ; preds = %land.lhs.true178, %if.then171, %if.then156
  br i1 %cmp109, label %if.then196, label %if.end475

if.then196:                                       ; preds = %if.end193, %if.else157.thread, %land.lhs.true111
  %have_dst_lstat.21981 = phi i8 [ 0, %if.end193 ], [ 0, %land.lhs.true111 ], [ %frombool15119711973, %if.else157.thread ]
  %update197 = getelementptr inbounds %struct.cp_options, ptr %x, i64 0, i32 32
  %33 = load i32, ptr %update197, align 4, !tbaa !33
  %34 = and i32 %33, -2
  %switch1920 = icmp eq i32 %34, 2
  br i1 %switch1920, label %if.end210, label %land.lhs.true204

land.lhs.true204:                                 ; preds = %if.then196
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %tmp_dst_sb.i) #23
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %tmp_src_sb.i) #23
  %35 = load i64, ptr %src_sb, align 8, !tbaa !45
  %36 = load i64, ptr %dst_sb, align 8, !tbaa !45
  %37 = icmp eq i64 %35, %36
  %st_ino.i.i = getelementptr inbounds %struct.stat, ptr %src_sb, i64 0, i32 1
  %38 = load i64, ptr %st_ino.i.i, align 8, !tbaa !46
  %st_ino8.i.i = getelementptr inbounds %struct.stat, ptr %dst_sb, i64 0, i32 1
  %39 = load i64, ptr %st_ino8.i.i, align 8, !tbaa !46
  %40 = icmp eq i64 %38, %39
  %tobool11.not.i.i = and i1 %37, %40
  br i1 %tobool11.not.i.i, label %land.lhs.true.i, label %if.end.thread.i

land.lhs.true.i:                                  ; preds = %land.lhs.true204
  %hard_link.i = getelementptr inbounds %struct.cp_options, ptr %x, i64 0, i32 8
  %41 = load i8, ptr %hard_link.i, align 1, !tbaa !25, !range !12, !noundef !13
  %tobool1.not.i = icmp eq i8 %41, 0
  br i1 %tobool1.not.i, label %if.end.i, label %same_file_ok.exit.thread

if.end.i:                                         ; preds = %land.lhs.true.i
  %42 = load i32, ptr %16, align 4, !tbaa !34
  %cmp.i1929 = icmp eq i32 %42, 2
  br i1 %cmp.i1929, label %if.then2.i, label %if.end28.i

if.end.thread.i:                                  ; preds = %land.lhs.true204
  %43 = load i32, ptr %16, align 4, !tbaa !34
  %cmp254.i = icmp eq i32 %43, 2
  br i1 %cmp254.i, label %if.then2.i, label %same_file_ok.exit.thread

if.then2.i:                                       ; preds = %if.end.thread.i, %if.end.i
  %st_mode.i = getelementptr inbounds %struct.stat, ptr %src_sb, i64 0, i32 3
  %44 = load i32, ptr %st_mode.i, align 8, !tbaa !35
  %and.i = and i32 %44, 61440
  %cmp5.i = icmp eq i32 %and.i, 40960
  br i1 %cmp5.i, label %land.lhs.true6.i, label %if.end48.i

land.lhs.true6.i:                                 ; preds = %if.then2.i
  %45 = load i32, ptr %dst_sb.sroa.gep, align 8, !tbaa !35
  %and8.i = and i32 %45, 61440
  %cmp9.i = icmp eq i32 %and8.i, 40960
  br i1 %cmp9.i, label %if.then10.i, label %if.end48.i

if.then10.i:                                      ; preds = %land.lhs.true6.i
  %call11.i = call zeroext i1 @same_nameat(i32 noundef -100, ptr noundef %src_name, i32 noundef %dst_dirfd, ptr noundef nonnull %cond) #23
  br i1 %call11.i, label %if.end22.i, label %if.then14.i

if.then14.i:                                      ; preds = %if.then10.i
  %46 = load i32, ptr %x, align 8, !tbaa !22
  %cmp15.not.i = icmp eq i32 %46, 0
  br i1 %cmp15.not.i, label %if.end17.i, label %same_file_ok.exit.thread

if.end17.i:                                       ; preds = %if.then14.i
  br i1 %tobool11.not.i.i, label %same_file_ok.exit, label %if.end22.i.thread

if.end22.i.thread:                                ; preds = %if.end17.i
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %tmp_src_sb.i) #23
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %tmp_dst_sb.i) #23
  br label %if.end210

if.end22.i:                                       ; preds = %if.then10.i
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %tmp_src_sb.i) #23
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %tmp_dst_sb.i) #23
  br label %if.then206

if.end28.i:                                       ; preds = %if.end.i
  %call29.i = call i32 @fstatat(i32 noundef %dst_dirfd, ptr noundef nonnull %cond, ptr noundef nonnull %tmp_dst_sb.i, i32 noundef 256) #23
  %cmp30.not.i = icmp eq i32 %call29.i, 0
  br i1 %cmp30.not.i, label %lor.lhs.false.i, label %same_file_ok.exit.thread

lor.lhs.false.i:                                  ; preds = %if.end28.i
  %call31.i = call i32 @lstat(ptr noundef %src_name, ptr noundef nonnull %tmp_src_sb.i) #23
  %cmp32.not.i = icmp eq i32 %call31.i, 0
  br i1 %cmp32.not.i, label %if.end34.i, label %same_file_ok.exit.thread

if.end34.i:                                       ; preds = %lor.lhs.false.i
  %47 = load i64, ptr %tmp_src_sb.i, align 8, !tbaa !45
  %48 = load i64, ptr %tmp_dst_sb.i, align 8, !tbaa !45
  %49 = icmp eq i64 %47, %48
  %st_ino.i244.i = getelementptr inbounds %struct.stat, ptr %tmp_src_sb.i, i64 0, i32 1
  %50 = load i64, ptr %st_ino.i244.i, align 8, !tbaa !46
  %st_ino8.i245.i = getelementptr inbounds %struct.stat, ptr %tmp_dst_sb.i, i64 0, i32 1
  %51 = load i64, ptr %st_ino8.i245.i, align 8, !tbaa !46
  %52 = icmp eq i64 %50, %51
  %tobool11.not.i246.i = and i1 %49, %52
  %st_mode37.i = getelementptr inbounds %struct.stat, ptr %tmp_src_sb.i, i64 0, i32 3
  %53 = load i32, ptr %st_mode37.i, align 8, !tbaa !35
  %and38.i = and i32 %53, 61440
  %cmp39.i = icmp eq i32 %and38.i, 40960
  br i1 %cmp39.i, label %land.lhs.true40.i, label %if.end48.i

land.lhs.true40.i:                                ; preds = %if.end34.i
  %st_mode41.i = getelementptr inbounds %struct.stat, ptr %tmp_dst_sb.i, i64 0, i32 3
  %54 = load i32, ptr %st_mode41.i, align 8, !tbaa !35
  %and42.i = and i32 %54, 61440
  %cmp43.i = icmp eq i32 %and42.i, 40960
  br i1 %cmp43.i, label %land.lhs.true44.i, label %if.end48.i

land.lhs.true44.i:                                ; preds = %land.lhs.true40.i
  %unlink_dest_before_opening.i = getelementptr inbounds %struct.cp_options, ptr %x, i64 0, i32 6
  %55 = load i8, ptr %unlink_dest_before_opening.i, align 1, !tbaa !43, !range !12, !noundef !13
  %tobool45.not.i = icmp eq i8 %55, 0
  br i1 %tobool45.not.i, label %if.end48.i, label %same_file_ok.exit.thread

if.end48.i:                                       ; preds = %land.lhs.true44.i, %land.lhs.true40.i, %if.end34.i, %land.lhs.true6.i, %if.then2.i
  %56 = phi i32 [ %53, %land.lhs.true44.i ], [ %53, %land.lhs.true40.i ], [ %53, %if.end34.i ], [ %44, %land.lhs.true6.i ], [ %44, %if.then2.i ]
  %same_link.0.in.i = phi i1 [ %tobool11.not.i246.i, %land.lhs.true44.i ], [ %tobool11.not.i246.i, %land.lhs.true40.i ], [ %tobool11.not.i246.i, %if.end34.i ], [ %tobool11.not.i.i, %land.lhs.true6.i ], [ %tobool11.not.i.i, %if.then2.i ]
  %dst_sb_link.0.i = phi ptr [ %tmp_dst_sb.i, %land.lhs.true44.i ], [ %tmp_dst_sb.i, %land.lhs.true40.i ], [ %tmp_dst_sb.i, %if.end34.i ], [ %dst_sb, %land.lhs.true6.i ], [ %dst_sb, %if.then2.i ]
  %src_sb_link.0.i = phi ptr [ %tmp_src_sb.i, %land.lhs.true44.i ], [ %tmp_src_sb.i, %land.lhs.true40.i ], [ %tmp_src_sb.i, %if.end34.i ], [ %src_sb, %land.lhs.true6.i ], [ %src_sb, %if.then2.i ]
  %57 = load i32, ptr %x, align 8, !tbaa !22
  %cmp50.not.i = icmp eq i32 %57, 0
  br i1 %cmp50.not.i, label %if.end72.i, label %if.then51.i

if.then51.i:                                      ; preds = %if.end48.i
  br i1 %same_link.0.in.i, label %if.end69.i, label %if.then53.i

if.then53.i:                                      ; preds = %if.then51.i
  %58 = load i8, ptr %move_mode, align 8, !tbaa !30, !range !12, !noundef !13
  %tobool55.not.i = icmp eq i8 %58, 0
  br i1 %tobool55.not.i, label %land.lhs.true56.i, label %same_file_ok.exit.thread

land.lhs.true56.i:                                ; preds = %if.then53.i
  %59 = load i32, ptr %16, align 4, !tbaa !34
  %cmp58.not.i = icmp ne i32 %59, 2
  %and61.i = and i32 %56, 61440
  %cmp62.i = icmp eq i32 %and61.i, 40960
  %or.cond.i = and i1 %cmp62.i, %cmp58.not.i
  br i1 %or.cond.i, label %land.lhs.true63.i, label %same_file_ok.exit.thread

land.lhs.true63.i:                                ; preds = %land.lhs.true56.i
  %st_mode64.i = getelementptr inbounds %struct.stat, ptr %dst_sb_link.0.i, i64 0, i32 3
  %60 = load i32, ptr %st_mode64.i, align 8, !tbaa !35
  %and65.i = and i32 %60, 61440
  %cmp66.i = icmp eq i32 %and65.i, 40960
  br i1 %cmp66.i, label %same_file_ok.exit.thread, label %same_file_ok.exit.thread1989

if.end69.i:                                       ; preds = %if.then51.i
  %call70.i = call zeroext i1 @same_nameat(i32 noundef -100, ptr noundef %src_name, i32 noundef %dst_dirfd, ptr noundef nonnull %cond) #23
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %tmp_src_sb.i) #23
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %tmp_dst_sb.i) #23
  br i1 %call70.i, label %if.then206, label %if.end210

if.end72.i:                                       ; preds = %if.end48.i
  %61 = load i8, ptr %move_mode, align 8, !tbaa !30, !range !12, !noundef !13
  %tobool74.not.i = icmp eq i8 %61, 0
  br i1 %tobool74.not.i, label %lor.lhs.false75.i, label %if.then78.i

lor.lhs.false75.i:                                ; preds = %if.end72.i
  %unlink_dest_before_opening76.i = getelementptr inbounds %struct.cp_options, ptr %x, i64 0, i32 6
  %62 = load i8, ptr %unlink_dest_before_opening76.i, align 1, !tbaa !43, !range !12, !noundef !13
  %tobool77.not.i = icmp eq i8 %62, 0
  br i1 %tobool77.not.i, label %if.end94.i, label %if.then78.i

if.then78.i:                                      ; preds = %lor.lhs.false75.i, %if.end72.i
  %st_mode79.i = getelementptr inbounds %struct.stat, ptr %dst_sb_link.0.i, i64 0, i32 3
  %63 = load i32, ptr %st_mode79.i, align 8, !tbaa !35
  %and80.i = and i32 %63, 61440
  %cmp81.i = icmp eq i32 %and80.i, 40960
  br i1 %cmp81.i, label %same_file_ok.exit.thread, label %if.end83.i

if.end83.i:                                       ; preds = %if.then78.i
  br i1 %same_link.0.in.i, label %land.lhs.true85.i, label %if.end94.i

land.lhs.true85.i:                                ; preds = %if.end83.i
  %st_nlink.i = getelementptr inbounds %struct.stat, ptr %dst_sb_link.0.i, i64 0, i32 2
  %64 = load i64, ptr %st_nlink.i, align 8, !tbaa !47
  %cmp86.i = icmp ugt i64 %64, 1
  br i1 %cmp86.i, label %land.lhs.true87.i, label %if.end94.i

land.lhs.true87.i:                                ; preds = %land.lhs.true85.i
  %call88.i = call zeroext i1 @same_nameat(i32 noundef -100, ptr noundef %src_name, i32 noundef %dst_dirfd, ptr noundef nonnull %cond) #23
  br i1 %call88.i, label %land.lhs.true87.if.end94_crit_edge.i, label %if.then89.i

land.lhs.true87.if.end94_crit_edge.i:             ; preds = %land.lhs.true87.i
  %st_mode95.phi.trans.insert.i = getelementptr inbounds %struct.stat, ptr %src_sb_link.0.i, i64 0, i32 3
  %.pre.i = load i32, ptr %st_mode95.phi.trans.insert.i, align 8, !tbaa !35
  br label %if.end94.i

if.then89.i:                                      ; preds = %land.lhs.true87.i
  %65 = load i8, ptr %move_mode, align 8, !tbaa !30, !range !12, !noundef !13
  %tobool91.not.i = icmp eq i8 %65, 0
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %tmp_src_sb.i) #23
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %tmp_dst_sb.i) #23
  br i1 %tobool91.not.i, label %if.end210, label %if.then206

if.end94.i:                                       ; preds = %land.lhs.true87.if.end94_crit_edge.i, %land.lhs.true85.i, %if.end83.i, %lor.lhs.false75.i
  %66 = phi i32 [ %.pre.i, %land.lhs.true87.if.end94_crit_edge.i ], [ %56, %if.end83.i ], [ %56, %land.lhs.true85.i ], [ %56, %lor.lhs.false75.i ]
  %st_mode95.i = getelementptr inbounds %struct.stat, ptr %src_sb_link.0.i, i64 0, i32 3
  %and96.i = and i32 %66, 61440
  %cmp97.i = icmp eq i32 %and96.i, 40960
  br i1 %cmp97.i, label %if.end110.i, label %land.lhs.true98.i

land.lhs.true98.i:                                ; preds = %if.end94.i
  %st_mode99.i = getelementptr inbounds %struct.stat, ptr %dst_sb_link.0.i, i64 0, i32 3
  %67 = load i32, ptr %st_mode99.i, align 8, !tbaa !35
  %and100.i = and i32 %67, 61440
  %cmp101.i = icmp eq i32 %and100.i, 40960
  br i1 %cmp101.i, label %if.end110.i, label %if.then102.i

if.then102.i:                                     ; preds = %land.lhs.true98.i
  %68 = load i64, ptr %src_sb_link.0.i, align 8, !tbaa !45
  %69 = load i64, ptr %dst_sb_link.0.i, align 8, !tbaa !45
  %70 = icmp eq i64 %68, %69
  %st_ino.i247.i = getelementptr inbounds %struct.stat, ptr %src_sb_link.0.i, i64 0, i32 1
  %71 = load i64, ptr %st_ino.i247.i, align 8, !tbaa !46
  %st_ino8.i248.i = getelementptr inbounds %struct.stat, ptr %dst_sb_link.0.i, i64 0, i32 1
  %72 = load i64, ptr %st_ino8.i248.i, align 8, !tbaa !46
  %73 = icmp eq i64 %71, %72
  %tobool11.not.i249.i = and i1 %70, %73
  br i1 %tobool11.not.i249.i, label %if.end105.i, label %same_file_ok.exit.thread

if.end105.i:                                      ; preds = %if.then102.i
  %hard_link106.i = getelementptr inbounds %struct.cp_options, ptr %x, i64 0, i32 8
  %74 = load i8, ptr %hard_link106.i, align 1, !tbaa !25, !range !12, !noundef !13
  %tobool107.not.i = icmp eq i8 %74, 0
  br i1 %tobool107.not.i, label %if.end110.i, label %same_file_ok.exit.thread

if.end110.i:                                      ; preds = %if.end105.i, %land.lhs.true98.i, %if.end94.i
  %75 = load i8, ptr %move_mode, align 8, !tbaa !30, !range !12, !noundef !13
  %tobool112.not.i = icmp eq i8 %75, 0
  br i1 %tobool112.not.i, label %if.end131.i, label %land.lhs.true113.i

land.lhs.true113.i:                               ; preds = %if.end110.i
  %st_mode114.i = getelementptr inbounds %struct.stat, ptr %src_sb, i64 0, i32 3
  %76 = load i32, ptr %st_mode114.i, align 8, !tbaa !35
  %and115.i = and i32 %76, 61440
  %cmp116.i = icmp eq i32 %and115.i, 40960
  br i1 %cmp116.i, label %land.lhs.true117.i, label %if.end131.i

land.lhs.true117.i:                               ; preds = %land.lhs.true113.i
  %st_nlink118.i = getelementptr inbounds %struct.stat, ptr %dst_sb_link.0.i, i64 0, i32 2
  %77 = load i64, ptr %st_nlink118.i, align 8, !tbaa !47
  %cmp119.i = icmp ugt i64 %77, 1
  br i1 %cmp119.i, label %if.then120.i, label %if.end131.i

if.then120.i:                                     ; preds = %land.lhs.true117.i
  %call121.i = call noalias ptr @canonicalize_file_name(ptr noundef %src_name) #23
  %tobool122.not.i = icmp eq ptr %call121.i, null
  br i1 %tobool122.not.i, label %if.end131.i, label %cleanup130.i

cleanup130.i:                                     ; preds = %if.then120.i
  %call124.i = call zeroext i1 @same_nameat(i32 noundef -100, ptr noundef nonnull %call121.i, i32 noundef %dst_dirfd, ptr noundef nonnull %cond) #23
  call void @free(ptr noundef nonnull %call121.i) #23
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %tmp_src_sb.i) #23
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %tmp_dst_sb.i) #23
  br i1 %call124.i, label %if.then206, label %if.end210

if.end131.i:                                      ; preds = %if.then120.i, %land.lhs.true117.i, %land.lhs.true113.i, %if.end110.i
  %symbolic_link.i = getelementptr inbounds %struct.cp_options, ptr %x, i64 0, i32 31
  %78 = load i8, ptr %symbolic_link.i, align 2, !tbaa !26, !range !12, !noundef !13
  %tobool132.not.i = icmp eq i8 %78, 0
  br i1 %tobool132.not.i, label %if.end138.i, label %land.lhs.true133.i

land.lhs.true133.i:                               ; preds = %if.end131.i
  %st_mode134.i = getelementptr inbounds %struct.stat, ptr %dst_sb_link.0.i, i64 0, i32 3
  %79 = load i32, ptr %st_mode134.i, align 8, !tbaa !35
  %and135.i = and i32 %79, 61440
  %cmp136.i = icmp eq i32 %and135.i, 40960
  br i1 %cmp136.i, label %same_file_ok.exit.thread, label %if.end138.i

if.end138.i:                                      ; preds = %land.lhs.true133.i, %if.end131.i
  %80 = load i32, ptr %16, align 4, !tbaa !34
  %cmp140.i = icmp eq i32 %80, 2
  br i1 %cmp140.i, label %if.then141.i, label %same_file_ok.exit.thread1989

if.then141.i:                                     ; preds = %if.end138.i
  %81 = load i32, ptr %st_mode95.i, align 8, !tbaa !35
  %and143.i = and i32 %81, 61440
  %cmp144.i = icmp eq i32 %and143.i, 40960
  br i1 %cmp144.i, label %if.else146.i, label %if.then145.i

if.then145.i:                                     ; preds = %if.then141.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %tmp_src_sb.i, ptr noundef nonnull align 8 dereferenceable(144) %src_sb_link.0.i, i64 144, i1 false), !tbaa !48, !tbaa.struct !49
  br label %if.end151.i

if.else146.i:                                     ; preds = %if.then141.i
  %call147.i = call i32 @stat(ptr noundef %src_name, ptr noundef nonnull %tmp_src_sb.i) #23
  %cmp148.not.i = icmp eq i32 %call147.i, 0
  br i1 %cmp148.not.i, label %if.end151.i, label %same_file_ok.exit.thread

if.end151.i:                                      ; preds = %if.else146.i, %if.then145.i
  %st_mode152.i = getelementptr inbounds %struct.stat, ptr %dst_sb_link.0.i, i64 0, i32 3
  %82 = load i32, ptr %st_mode152.i, align 8, !tbaa !35
  %and153.i = and i32 %82, 61440
  %cmp154.i = icmp eq i32 %and153.i, 40960
  br i1 %cmp154.i, label %if.else156.i, label %if.then155.i

if.then155.i:                                     ; preds = %if.end151.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %tmp_dst_sb.i, ptr noundef nonnull align 8 dereferenceable(144) %dst_sb_link.0.i, i64 144, i1 false), !tbaa !48, !tbaa.struct !49
  br label %if.end161.i

if.else156.i:                                     ; preds = %if.end151.i
  %call157.i = call i32 @fstatat(i32 noundef %dst_dirfd, ptr noundef nonnull %cond, ptr noundef nonnull %tmp_dst_sb.i, i32 noundef 0) #23
  %cmp158.not.i = icmp eq i32 %call157.i, 0
  br i1 %cmp158.not.i, label %if.end161.i, label %same_file_ok.exit.thread

if.end161.i:                                      ; preds = %if.else156.i, %if.then155.i
  %83 = load i64, ptr %tmp_src_sb.i, align 8, !tbaa !45
  %84 = load i64, ptr %tmp_dst_sb.i, align 8, !tbaa !45
  %85 = icmp eq i64 %83, %84
  %st_ino.i250.i = getelementptr inbounds %struct.stat, ptr %tmp_src_sb.i, i64 0, i32 1
  %86 = load i64, ptr %st_ino.i250.i, align 8, !tbaa !46
  %st_ino8.i251.i = getelementptr inbounds %struct.stat, ptr %tmp_dst_sb.i, i64 0, i32 1
  %87 = load i64, ptr %st_ino8.i251.i, align 8, !tbaa !46
  %88 = icmp eq i64 %86, %87
  %tobool11.not.i252.i = and i1 %85, %88
  br i1 %tobool11.not.i252.i, label %if.end164.i, label %same_file_ok.exit.thread

if.end164.i:                                      ; preds = %if.end161.i
  %hard_link165.i = getelementptr inbounds %struct.cp_options, ptr %x, i64 0, i32 8
  %89 = load i8, ptr %hard_link165.i, align 1, !tbaa !25, !range !12, !noundef !13
  %tobool166.not.i = icmp eq i8 %89, 0
  br i1 %tobool166.not.i, label %same_file_ok.exit.thread1989, label %if.then167.i

if.then167.i:                                     ; preds = %if.end164.i
  %90 = load i32, ptr %st_mode152.i, align 8, !tbaa !35
  %and169.i = and i32 %90, 61440
  %cmp170.i = icmp ne i32 %and169.i, 40960
  %frombool172.i = zext i1 %cmp170.i to i8
  br label %same_file_ok.exit.thread

same_file_ok.exit.thread:                         ; preds = %if.then167.i, %if.end161.i, %if.else156.i, %if.else146.i, %land.lhs.true133.i, %if.end105.i, %if.then102.i, %if.then78.i, %land.lhs.true63.i, %land.lhs.true56.i, %if.then53.i, %land.lhs.true44.i, %lor.lhs.false.i, %if.end28.i, %if.then14.i, %if.end.thread.i, %land.lhs.true.i
  %return_now.0.ph = phi i8 [ 1, %if.end105.i ], [ 1, %land.lhs.true.i ], [ 0, %if.end.thread.i ], [ 0, %if.end28.i ], [ 0, %lor.lhs.false.i ], [ 0, %land.lhs.true44.i ], [ 0, %if.then78.i ], [ 0, %if.then102.i ], [ 0, %land.lhs.true133.i ], [ 0, %if.else146.i ], [ 0, %if.else156.i ], [ 0, %if.end161.i ], [ %frombool172.i, %if.then167.i ], [ 0, %if.then14.i ], [ 0, %land.lhs.true63.i ], [ 0, %land.lhs.true56.i ], [ 0, %if.then53.i ]
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %tmp_src_sb.i) #23
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %tmp_dst_sb.i) #23
  br label %if.end210

same_file_ok.exit.thread1989:                     ; preds = %if.end164.i, %if.end138.i, %land.lhs.true63.i
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %tmp_src_sb.i) #23
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %tmp_dst_sb.i) #23
  br label %if.then206

same_file_ok.exit:                                ; preds = %if.end17.i
  %91 = load i8, ptr %move_mode, align 8, !tbaa !30, !range !12, !noundef !13
  %tobool20.not.i = icmp eq i8 %91, 0
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %tmp_src_sb.i) #23
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %tmp_dst_sb.i) #23
  br i1 %tobool20.not.i, label %if.end210, label %if.then206

if.then206:                                       ; preds = %same_file_ok.exit, %same_file_ok.exit.thread1989, %cleanup130.i, %if.then89.i, %if.end69.i, %if.end22.i
  %call207 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.15, i32 noundef 5) #23
  %call208 = call ptr @quotearg_n_style(i32 noundef 0, i32 noundef 4, ptr noundef %src_name) #23
  %call209 = call ptr @quotearg_n_style(i32 noundef 1, i32 noundef 4, ptr noundef %dst_name) #23
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %call207, ptr noundef %call208, ptr noundef %call209) #25
  br label %cleanup1391

if.end210:                                        ; preds = %same_file_ok.exit, %same_file_ok.exit.thread, %cleanup130.i, %if.then89.i, %if.end69.i, %if.end22.i.thread, %if.then196
  %return_now.1 = phi i8 [ 0, %if.then196 ], [ 1, %same_file_ok.exit ], [ %return_now.0.ph, %same_file_ok.exit.thread ], [ 0, %if.end69.i ], [ 0, %cleanup130.i ], [ 0, %if.then89.i ], [ 0, %if.end22.i.thread ]
  %92 = load i32, ptr %update197, align 4, !tbaa !33
  %cmp212 = icmp ne i32 %92, 1
  %and215 = and i32 %src_mode.1, 61440
  %cmp216 = icmp eq i32 %and215, 16384
  %or.cond1896 = or i1 %cmp216, %cmp212
  br i1 %or.cond1896, label %if.end251, label %if.then218

if.then218:                                       ; preds = %if.end210
  %preserve_timestamps = getelementptr inbounds %struct.cp_options, ptr %x, i64 0, i32 18
  %93 = load i8, ptr %preserve_timestamps, align 1, !tbaa !52, !range !12, !noundef !13
  %tobool219.not = icmp eq i8 %93, 0
  br i1 %tobool219.not, label %land.end228, label %land.rhs

land.rhs:                                         ; preds = %if.then218
  %94 = load i8, ptr %move_mode, align 8, !tbaa !30, !range !12, !noundef !13
  %tobool222 = icmp eq i8 %94, 0
  %95 = load i64, ptr %dst_sb, align 8
  %96 = load i64, ptr %src_sb, align 8
  %cmp226 = icmp ne i64 %95, %96
  %.not = select i1 %tobool222, i1 true, i1 %cmp226
  br label %land.end228

land.end228:                                      ; preds = %land.rhs, %if.then218
  %97 = phi i1 [ false, %if.then218 ], [ %.not, %land.rhs ]
  %cond229 = zext i1 %97 to i32
  %call230 = call i32 @utimecmpat(i32 noundef %dst_dirfd, ptr noundef nonnull %dst_relname, ptr noundef nonnull %dst_sb, ptr noundef nonnull %src_sb, i32 noundef %cond229) #23
  %cmp231 = icmp sgt i32 %call230, -1
  br i1 %cmp231, label %if.then233, label %if.end251

if.then233:                                       ; preds = %land.end228
  %tobool234.not = icmp eq ptr %rename_succeeded, null
  br i1 %tobool234.not, label %if.end236, label %if.then235

if.then235:                                       ; preds = %if.then233
  store i8 1, ptr %rename_succeeded, align 1, !tbaa !27
  br label %if.end236

if.end236:                                        ; preds = %if.then235, %if.then233
  %st_ino = getelementptr inbounds %struct.stat, ptr %src_sb, i64 0, i32 1
  %98 = load i64, ptr %st_ino, align 8, !tbaa !46
  %99 = load i64, ptr %src_sb, align 8, !tbaa !45
  %call238 = call ptr @remember_copied(ptr noundef nonnull %dst_relname, i64 noundef %98, i64 noundef %99) #23
  %tobool239.not = icmp eq ptr %call238, null
  br i1 %tobool239.not, label %if.then290thread-pre-split, label %if.then240

if.then240:                                       ; preds = %if.end236
  %verbose = getelementptr inbounds %struct.cp_options, ptr %x, i64 0, i32 33
  %100 = load i8, ptr %verbose, align 8, !tbaa !53, !range !12, !noundef !13
  %tobool241 = icmp ne i8 %100, 0
  %call243 = call fastcc zeroext i1 @create_hard_link(ptr noundef null, i32 noundef %dst_dirfd, ptr noundef nonnull %call238, ptr noundef %dst_name, i32 noundef %dst_dirfd, ptr noundef nonnull %dst_relname, i1 noundef zeroext true, i1 noundef zeroext %tobool241, i1 noundef zeroext %18)
  br i1 %call243, label %if.then290thread-pre-split, label %un_backup

if.end251:                                        ; preds = %land.end228, %if.end210
  %101 = load i8, ptr %move_mode, align 8, !tbaa !30, !range !12, !noundef !13
  %tobool253.not = icmp eq i8 %101, 0
  br i1 %tobool253.not, label %if.else265, label %if.end.i1931

if.end.i1931:                                     ; preds = %if.end251
  %102 = load i32, ptr %update197, align 4, !tbaa !33
  %103 = and i32 %102, -2
  %switch.i = icmp eq i32 %103, 2
  br i1 %switch.i, label %if.then256, label %lor.rhs.i1932

lor.rhs.i1932:                                    ; preds = %if.end.i1931
  %interactive.i = getelementptr inbounds %struct.cp_options, ptr %x, i64 0, i32 2
  %104 = load i32, ptr %interactive.i, align 8, !tbaa !54
  switch i32 %104, label %if.end305 [
    i32 3, label %abandon_move.exit
    i32 0, label %land.lhs.true.i1933
  ]

land.lhs.true.i1933:                              ; preds = %lor.rhs.i1932
  %stdin_tty.i = getelementptr inbounds %struct.cp_options, ptr %x, i64 0, i32 36
  %105 = load i8, ptr %stdin_tty.i, align 1, !tbaa !55, !range !12, !noundef !13
  %tobool7.not.i = icmp eq i8 %105, 0
  br i1 %tobool7.not.i, label %if.end305, label %land.lhs.true8.i

land.lhs.true8.i:                                 ; preds = %land.lhs.true.i1933
  %106 = load i32, ptr %dst_sb.sroa.gep, align 8, !tbaa !35
  %and.i.i = and i32 %106, 61440
  %cmp.i.i = icmp eq i32 %and.i.i, 40960
  br i1 %cmp.i.i, label %if.end305, label %lor.lhs.false.i.i

lor.lhs.false.i.i:                                ; preds = %land.lhs.true8.i
  %call.i.i = call zeroext i1 @can_write_any_file() #23
  br i1 %call.i.i, label %if.end305, label %writable_destination.exit.i

writable_destination.exit.i:                      ; preds = %lor.lhs.false.i.i
  %call1.i.i = call i32 @faccessat(i32 noundef %dst_dirfd, ptr noundef nonnull %cond, i32 noundef 2, i32 noundef 512) #23
  %cmp2.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %cmp2.i.i, label %if.end305, label %abandon_move.exit

abandon_move.exit:                                ; preds = %writable_destination.exit.i, %lor.rhs.i1932
  %call9.i = call fastcc zeroext i1 @overwrite_ok(ptr noundef nonnull %x, ptr noundef %dst_name, i32 noundef %dst_dirfd, ptr noundef nonnull %cond, ptr noundef nonnull %dst_sb)
  br i1 %call9.i, label %if.end305, label %if.then256

if.then256:                                       ; preds = %abandon_move.exit, %if.end.i1931
  %tobool257.not = icmp eq ptr %rename_succeeded, null
  br i1 %tobool257.not, label %if.end259, label %if.then258

if.then258:                                       ; preds = %if.then256
  store i8 1, ptr %rename_succeeded, align 1, !tbaa !27
  br label %if.end259

if.end259:                                        ; preds = %if.then258, %if.then256
  %107 = load i32, ptr %update197, align 4, !tbaa !33
  %cmp261 = icmp eq i32 %107, 2
  br label %if.then290

if.else265:                                       ; preds = %if.end251
  br i1 %cmp216, label %if.end305, label %land.lhs.true269

land.lhs.true269:                                 ; preds = %if.else265
  %108 = load i32, ptr %update197, align 4, !tbaa !33
  %109 = and i32 %108, -2
  %switch1922 = icmp eq i32 %109, 2
  br i1 %switch1922, label %if.then282, label %lor.lhs.false277

lor.lhs.false277:                                 ; preds = %land.lhs.true269
  %interactive = getelementptr inbounds %struct.cp_options, ptr %x, i64 0, i32 2
  %110 = load i32, ptr %interactive, align 8, !tbaa !54
  %cmp278 = icmp eq i32 %110, 3
  br i1 %cmp278, label %land.lhs.true280, label %if.end305

land.lhs.true280:                                 ; preds = %lor.lhs.false277
  %call281 = call fastcc zeroext i1 @overwrite_ok(ptr noundef nonnull %x, ptr noundef %dst_name, i32 noundef %dst_dirfd, ptr noundef nonnull %dst_relname, ptr noundef nonnull %dst_sb)
  br i1 %call281, label %if.end305, label %land.lhs.true280.if.then282_crit_edge

land.lhs.true280.if.then282_crit_edge:            ; preds = %land.lhs.true280
  %.pre2090 = load i32, ptr %update197, align 4, !tbaa !33
  br label %if.then282

if.then282:                                       ; preds = %land.lhs.true280.if.then282_crit_edge, %land.lhs.true269
  %111 = phi i32 [ %.pre2090, %land.lhs.true280.if.then282_crit_edge ], [ %108, %land.lhs.true269 ]
  %cmp284 = icmp eq i32 %111, 2
  br label %if.then290

if.then290thread-pre-split:                       ; preds = %if.then240, %if.end236
  %.pr = load i32, ptr %update197, align 4, !tbaa !33
  br label %if.then290

if.then290:                                       ; preds = %if.then290thread-pre-split, %if.then282, %if.end259
  %112 = phi i32 [ %.pr, %if.then290thread-pre-split ], [ %111, %if.then282 ], [ %107, %if.end259 ]
  %return_val.0.shrunk = phi i1 [ true, %if.then290thread-pre-split ], [ %cmp284, %if.then282 ], [ %cmp261, %if.end259 ]
  %cmp292 = icmp eq i32 %112, 3
  br i1 %cmp292, label %if.then294, label %if.else297

if.then294:                                       ; preds = %if.then290
  %call295 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.16, i32 noundef 5) #23
  %call296 = call ptr @quotearg_style(i32 noundef 4, ptr noundef %dst_name) #23
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %call295, ptr noundef %call296) #25
  br label %cleanup1391

if.else297:                                       ; preds = %if.then290
  %debug = getelementptr inbounds %struct.cp_options, ptr %x, i64 0, i32 35
  %113 = load i8, ptr %debug, align 2, !tbaa !56, !range !12, !noundef !13
  %tobool298.not = icmp eq i8 %113, 0
  br i1 %tobool298.not, label %cleanup1391, label %if.then299

if.then299:                                       ; preds = %if.else297
  %call300 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.17, i32 noundef 5) #23
  %call301 = call ptr @quotearg_style(i32 noundef 4, ptr noundef %dst_name) #23
  %call302 = call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %call300, ptr noundef %call301) #23
  br label %cleanup1391

if.end305:                                        ; preds = %land.lhs.true280, %lor.lhs.false277, %if.else265, %abandon_move.exit, %writable_destination.exit.i, %lor.lhs.false.i.i, %land.lhs.true8.i, %land.lhs.true.i1933, %lor.rhs.i1932
  %tobool306.not = icmp eq i8 %return_now.1, 0
  br i1 %tobool306.not, label %if.end309, label %cleanup1391

if.end309:                                        ; preds = %if.end305
  %cmp311 = icmp ne i32 %and215, 16384
  %114 = load i32, ptr %dst_sb.sroa.gep, align 8, !tbaa !35
  %and315 = and i32 %114, 61440
  %115 = icmp eq i32 %and315, 16384
  %cmp320.not = xor i1 %cmp311, %115
  %.pr2010.pre2091.pre = load i32, ptr %x, align 8, !tbaa !22
  %cmp324 = icmp ne i32 %.pr2010.pre2091.pre, 0
  %or.cond.not2106 = select i1 %cmp320.not, i1 true, i1 %cmp324
  br i1 %or.cond.not2106, label %if.end337, label %land.lhs.true326

land.lhs.true326:                                 ; preds = %if.end309
  %exchange327 = getelementptr inbounds %struct.cp_options, ptr %x, i64 0, i32 11
  %116 = load i8, ptr %exchange327, align 2, !tbaa !31, !range !12, !noundef !13
  %tobool328.not = icmp eq i8 %116, 0
  br i1 %tobool328.not, label %if.then329, label %if.end337.thread

if.then329:                                       ; preds = %land.lhs.true326
  %cond333 = select i1 %cmp311, ptr @.str.19, ptr @.str.18
  %call334 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull %cond333, i32 noundef 5) #23
  %call335 = call ptr @quotearg_n_style(i32 noundef 0, i32 noundef 4, ptr noundef %dst_name) #23
  %call336 = call ptr @quotearg_n_style(i32 noundef 1, i32 noundef 4, ptr noundef %src_name) #23
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %call334, ptr noundef %call335, ptr noundef %call336) #25
  br label %cleanup1391

if.end337:                                        ; preds = %if.end309
  %command_line_arg.not = xor i1 %command_line_arg, true
  %brmerge = or i1 %115, %command_line_arg.not
  br i1 %brmerge, label %if.end359, label %land.lhs.true345

if.end337.thread:                                 ; preds = %land.lhs.true326
  %command_line_arg.not2095 = xor i1 %command_line_arg, true
  %brmerge2096 = or i1 %115, %command_line_arg.not2095
  br i1 %brmerge2096, label %if.else417, label %land.lhs.true349

land.lhs.true345:                                 ; preds = %if.end337
  %cmp347.not = icmp eq i32 %.pr2010.pre2091.pre, 3
  br i1 %cmp347.not, label %land.lhs.true363, label %land.lhs.true349

land.lhs.true349:                                 ; preds = %land.lhs.true345, %if.end337.thread
  %exchange350 = getelementptr inbounds %struct.cp_options, ptr %x, i64 0, i32 11
  %117 = load i8, ptr %exchange350, align 2, !tbaa !31, !range !12, !noundef !13
  %tobool351.not = icmp eq i8 %117, 0
  br i1 %tobool351.not, label %land.lhs.true352, label %if.end359

land.lhs.true352:                                 ; preds = %land.lhs.true349
  %dest_info = getelementptr inbounds %struct.cp_options, ptr %x, i64 0, i32 41
  %118 = load ptr, ptr %dest_info, align 8, !tbaa !20
  %call353 = call zeroext i1 @seen_file(ptr noundef %118, ptr noundef nonnull %dst_relname, ptr noundef nonnull %dst_sb) #23
  br i1 %call353, label %if.then355, label %land.lhs.true352.if.end359_crit_edge

land.lhs.true352.if.end359_crit_edge:             ; preds = %land.lhs.true352
  %.pr2010.pre = load i32, ptr %x, align 8, !tbaa !22
  br label %if.end359

if.then355:                                       ; preds = %land.lhs.true352
  %call356 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.20, i32 noundef 5) #23
  %call357 = call ptr @quotearg_n_style(i32 noundef 0, i32 noundef 4, ptr noundef %dst_name) #23
  %call358 = call ptr @quotearg_n_style(i32 noundef 1, i32 noundef 4, ptr noundef %src_name) #23
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %call356, ptr noundef %call357, ptr noundef %call358) #25
  br label %cleanup1391

if.end359:                                        ; preds = %land.lhs.true352.if.end359_crit_edge, %land.lhs.true349, %if.end337
  %.pr2010 = phi i32 [ %.pr2010.pre, %land.lhs.true352.if.end359_crit_edge ], [ %.pr2010.pre2091.pre, %if.end337 ], [ %.pr2010.pre2091.pre, %land.lhs.true349 ]
  %cmp361.not = icmp eq i32 %.pr2010, 0
  br i1 %cmp361.not, label %if.else417, label %land.lhs.true363

land.lhs.true363:                                 ; preds = %if.end359, %land.lhs.true345
  %119 = phi i32 [ %.pr2010, %if.end359 ], [ 3, %land.lhs.true345 ]
  %call364 = call ptr @last_component(ptr noundef %src_name) #27
  %120 = load i8, ptr %call364, align 1, !tbaa !28
  %cmp.i1935 = icmp eq i8 %120, 46
  br i1 %cmp.i1935, label %dot_or_dotdot.exit, label %land.lhs.true366

dot_or_dotdot.exit:                               ; preds = %land.lhs.true363
  %arrayidx2.i = getelementptr inbounds i8, ptr %call364, i64 1
  %121 = load i8, ptr %arrayidx2.i, align 1, !tbaa !28
  %cmp4.i = icmp eq i8 %121, 46
  %idxprom.i = select i1 %cmp4.i, i64 2, i64 1
  %arrayidx6.i = getelementptr inbounds i8, ptr %call364, i64 %idxprom.i
  %122 = load i8, ptr %arrayidx6.i, align 1, !tbaa !28
  switch i8 %122, label %land.lhs.true366 [
    i8 47, label %if.else417
    i8 0, label %if.else417
  ]

land.lhs.true366:                                 ; preds = %dot_or_dotdot.exit, %land.lhs.true363
  %123 = load i8, ptr %move_mode, align 8, !tbaa !30, !range !12, !noundef !13
  %tobool368.not = icmp eq i8 %123, 0
  br i1 %tobool368.not, label %lor.lhs.false370, label %if.then375

lor.lhs.false370:                                 ; preds = %land.lhs.true366
  %124 = load i32, ptr %dst_sb.sroa.gep, align 8, !tbaa !35
  %and372 = and i32 %124, 61440
  %cmp373 = icmp eq i32 %and372, 16384
  br i1 %cmp373, label %if.else417, label %if.then375

if.then375:                                       ; preds = %lor.lhs.false370, %land.lhs.true366
  %cmp377.not = icmp eq i32 %119, 3
  br i1 %cmp377.not, label %if.end395, label %land.lhs.true379

land.lhs.true379:                                 ; preds = %if.then375
  %call380 = call fastcc zeroext i1 @source_is_dst_backup(ptr noundef nonnull %call364, ptr noundef nonnull %src_sb, i32 noundef %dst_dirfd, ptr noundef nonnull %dst_relname)
  br i1 %call380, label %if.then382, label %land.lhs.true379.if.end395_crit_edge

land.lhs.true379.if.end395_crit_edge:             ; preds = %land.lhs.true379
  %.pre2093 = load i32, ptr %x, align 8, !tbaa !22
  br label %if.end395

if.then382:                                       ; preds = %land.lhs.true379
  %125 = load i8, ptr %move_mode, align 8, !tbaa !30, !range !12, !noundef !13
  %tobool384.not = icmp eq i8 %125, 0
  %.str.22..str.21 = select i1 %tobool384.not, ptr @.str.22, ptr @.str.21
  %call389 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull %.str.22..str.21, i32 noundef 5) #23
  %call392 = call ptr @quotearg_n_style(i32 noundef 0, i32 noundef 4, ptr noundef %dst_name) #23
  %call393 = call ptr @quotearg_n_style(i32 noundef 1, i32 noundef 4, ptr noundef %src_name) #23
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %call389, ptr noundef %call392, ptr noundef %call393) #25
  br label %cleanup1391

if.end395:                                        ; preds = %land.lhs.true379.if.end395_crit_edge, %if.then375
  %126 = phi i32 [ %.pre2093, %land.lhs.true379.if.end395_crit_edge ], [ 3, %if.then375 ]
  %call397 = call noalias ptr @backup_file_rename(i32 noundef %dst_dirfd, ptr noundef nonnull %dst_relname, i32 noundef %126) #23
  %tobool398.not = icmp eq ptr %call397, null
  br i1 %tobool398.not, label %if.else404, label %if.then399

if.then399:                                       ; preds = %if.end395
  %sub.ptr.lhs.cast = ptrtoint ptr %dst_relname to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %dst_name to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %call400 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %call397) #27
  %add = add i64 %call400, 1
  %add401 = add nsw i64 %add, %sub.ptr.sub
  %127 = alloca i8, i64 %add401, align 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 %127, ptr noundef nonnull align 1 %dst_name, i64 noundef %sub.ptr.sub, i1 noundef false) #23
  %mempcpy = getelementptr inbounds i8, ptr %127, i64 %sub.ptr.sub
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %mempcpy, ptr noundef nonnull align 1 %call397, i64 noundef %add, i1 noundef false) #23
  call void @free(ptr noundef nonnull %call397) #23
  br label %129

if.else404:                                       ; preds = %if.end395
  %call405 = tail call ptr @__errno_location() #24
  %128 = load i32, ptr %call405, align 4, !tbaa !18
  %cmp406.not = icmp eq i32 %128, 2
  br i1 %cmp406.not, label %129, label %cleanup414

cleanup414:                                       ; preds = %if.else404
  %call410 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.23, i32 noundef 5) #23
  %call411 = call ptr @quotearg_style(i32 noundef 4, ptr noundef %dst_name) #23
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %128, ptr noundef %call410, ptr noundef %call411) #25
  br label %cleanup1391

129:                                              ; preds = %if.else404, %if.then399
  %dst_backup.0 = phi ptr [ %127, %if.then399 ], [ null, %if.else404 ]
  store i8 1, ptr %new_dst, align 1, !tbaa !27
  br label %if.end475

if.else417:                                       ; preds = %lor.lhs.false370, %dot_or_dotdot.exit, %dot_or_dotdot.exit, %if.end359, %if.end337.thread
  %130 = load i32, ptr %dst_sb.sroa.gep, align 8, !tbaa !35
  %and419 = and i32 %130, 61440
  %cmp420 = icmp eq i32 %and419, 16384
  br i1 %cmp420, label %if.end475, label %land.lhs.true422

land.lhs.true422:                                 ; preds = %if.else417
  %131 = load i8, ptr %move_mode, align 8, !tbaa !30, !range !12, !noundef !13
  %tobool424.not = icmp eq i8 %131, 0
  br i1 %tobool424.not, label %land.lhs.true425, label %if.end475

land.lhs.true425:                                 ; preds = %land.lhs.true422
  %unlink_dest_before_opening426 = getelementptr inbounds %struct.cp_options, ptr %x, i64 0, i32 6
  %132 = load i8, ptr %unlink_dest_before_opening426, align 1, !tbaa !43, !range !12, !noundef !13
  %tobool427.not = icmp eq i8 %132, 0
  br i1 %tobool427.not, label %lor.lhs.false429, label %if.then447

lor.lhs.false429:                                 ; preds = %land.lhs.true425
  %data_copy_required = getelementptr inbounds %struct.cp_options, ptr %x, i64 0, i32 22
  %133 = load i8, ptr %data_copy_required, align 1, !tbaa !14, !range !12, !noundef !13
  %tobool430.not = icmp eq i8 %133, 0
  br i1 %tobool430.not, label %if.end475, label %land.lhs.true432

land.lhs.true432:                                 ; preds = %lor.lhs.false429
  %preserve_links = getelementptr inbounds %struct.cp_options, ptr %x, i64 0, i32 21
  %134 = load i8, ptr %preserve_links, align 8, !tbaa !57, !range !12, !noundef !13
  %tobool433 = icmp ne i8 %134, 0
  %st_nlink = getelementptr inbounds %struct.stat, ptr %dst_sb, i64 0, i32 2
  %135 = load i64, ptr %st_nlink, align 8
  %cmp436 = icmp ugt i64 %135, 1
  %or.cond1416 = select i1 %tobool433, i1 %cmp436, i1 false
  br i1 %or.cond1416, label %if.then447, label %lor.lhs.false438

lor.lhs.false438:                                 ; preds = %land.lhs.true432
  %136 = load i32, ptr %16, align 4, !tbaa !34
  %cmp440 = icmp eq i32 %136, 2
  br i1 %cmp440, label %land.lhs.true442, label %if.end475

land.lhs.true442:                                 ; preds = %lor.lhs.false438
  %st_mode443 = getelementptr inbounds %struct.stat, ptr %src_sb, i64 0, i32 3
  %137 = load i32, ptr %st_mode443, align 8, !tbaa !35
  %and444 = and i32 %137, 61440
  %cmp445 = icmp eq i32 %and444, 32768
  br i1 %cmp445, label %if.end475, label %if.then447

if.then447:                                       ; preds = %land.lhs.true442, %land.lhs.true432, %land.lhs.true425
  %call448 = call i32 @unlinkat(i32 noundef %dst_dirfd, ptr noundef nonnull %dst_relname, i32 noundef 0) #23
  %cmp449.not = icmp eq i32 %call448, 0
  br i1 %cmp449.not, label %if.end459, label %land.lhs.true451

land.lhs.true451:                                 ; preds = %if.then447
  %call452 = tail call ptr @__errno_location() #24
  %138 = load i32, ptr %call452, align 4, !tbaa !18
  %cmp453.not = icmp eq i32 %138, 2
  br i1 %cmp453.not, label %if.end459, label %if.then455

if.then455:                                       ; preds = %land.lhs.true451
  %call457 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.24, i32 noundef 5) #23
  %call458 = call ptr @quotearg_style(i32 noundef 4, ptr noundef %dst_name) #23
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %138, ptr noundef %call457, ptr noundef %call458) #25
  br label %cleanup1391

if.end459:                                        ; preds = %land.lhs.true451, %if.then447
  store i8 1, ptr %new_dst, align 1, !tbaa !27
  %verbose460 = getelementptr inbounds %struct.cp_options, ptr %x, i64 0, i32 33
  %139 = load i8, ptr %verbose460, align 8, !tbaa !53, !range !12, !noundef !13
  %tobool461.not = icmp eq i8 %139, 0
  br i1 %tobool461.not, label %if.end475, label %if.then462

if.then462:                                       ; preds = %if.end459
  %call463 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.25, i32 noundef 5) #23
  %call464 = call ptr @quotearg_style(i32 noundef 4, ptr noundef %dst_name) #23
  %call465 = call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %call463, ptr noundef %call464) #23
  br label %if.end475

if.end475:                                        ; preds = %if.then462, %if.end459, %land.lhs.true442, %lor.lhs.false438, %lor.lhs.false429, %land.lhs.true422, %if.else417, %129, %if.end193, %should_dereference.exit
  %rename_errno.5 = phi i32 [ %rename_errno.1, %should_dereference.exit ], [ %rename_errno.1, %if.end193 ], [ 17, %if.else417 ], [ 17, %land.lhs.true422 ], [ 17, %lor.lhs.false429 ], [ 17, %lor.lhs.false438 ], [ 17, %land.lhs.true442 ], [ 17, %if.then462 ], [ 17, %if.end459 ], [ 17, %129 ]
  %have_dst_lstat.3 = phi i8 [ 0, %should_dereference.exit ], [ 0, %if.end193 ], [ %have_dst_lstat.21981, %if.else417 ], [ %have_dst_lstat.21981, %land.lhs.true422 ], [ %have_dst_lstat.21981, %lor.lhs.false429 ], [ %have_dst_lstat.21981, %lor.lhs.false438 ], [ %have_dst_lstat.21981, %land.lhs.true442 ], [ %have_dst_lstat.21981, %if.then462 ], [ %have_dst_lstat.21981, %if.end459 ], [ %have_dst_lstat.21981, %129 ]
  %dst_backup.4 = phi ptr [ null, %should_dereference.exit ], [ null, %if.end193 ], [ null, %if.else417 ], [ null, %land.lhs.true422 ], [ null, %lor.lhs.false429 ], [ null, %lor.lhs.false438 ], [ null, %land.lhs.true442 ], [ null, %if.then462 ], [ null, %if.end459 ], [ %dst_backup.0, %129 ]
  br i1 %command_line_arg, label %land.lhs.true478, label %if.end521

land.lhs.true478:                                 ; preds = %if.end475
  %dest_info479 = getelementptr inbounds %struct.cp_options, ptr %x, i64 0, i32 41
  %140 = load ptr, ptr %dest_info479, align 8, !tbaa !20
  %tobool480.not = icmp eq ptr %140, null
  br i1 %tobool480.not, label %if.end521, label %land.lhs.true481

land.lhs.true481:                                 ; preds = %land.lhs.true478
  %141 = load i8, ptr %move_mode, align 8, !tbaa !30, !range !12, !noundef !13
  %tobool483.not = icmp eq i8 %141, 0
  br i1 %tobool483.not, label %land.lhs.true484, label %if.end521

land.lhs.true484:                                 ; preds = %land.lhs.true481
  %142 = load i32, ptr %x, align 8, !tbaa !22
  %cmp486 = icmp eq i32 %142, 0
  br i1 %cmp486, label %if.then488, label %if.end521

if.then488:                                       ; preds = %land.lhs.true484
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %tmp_buf) #23
  %tobool489.not = icmp eq i8 %have_dst_lstat.3, 0
  br i1 %tobool489.not, label %cond.false492, label %land.lhs.true503

cond.false492:                                    ; preds = %if.then488
  %call493 = call i32 @fstatat(i32 noundef %dst_dirfd, ptr noundef nonnull %cond, ptr noundef nonnull %tmp_buf, i32 noundef 256) #23
  %cmp494 = icmp slt i32 %call493, 0
  br i1 %cmp494, label %cleanup517.thread, label %land.lhs.true503

land.lhs.true503:                                 ; preds = %cond.false492, %if.then488
  %cond501.ph = phi ptr [ %dst_sb, %if.then488 ], [ %tmp_buf, %cond.false492 ]
  %cond501.ph.sroa.phi = phi ptr [ %dst_sb.sroa.gep, %if.then488 ], [ %tmp_buf.sroa.gep, %cond.false492 ]
  %143 = load i32, ptr %cond501.ph.sroa.phi, align 8, !tbaa !35
  %and505 = and i32 %143, 61440
  %cmp506 = icmp eq i32 %and505, 40960
  br i1 %cmp506, label %land.lhs.true508, label %cleanup517.thread

land.lhs.true508:                                 ; preds = %land.lhs.true503
  %144 = load ptr, ptr %dest_info479, align 8, !tbaa !20
  %call510 = call zeroext i1 @seen_file(ptr noundef %144, ptr noundef nonnull %dst_relname, ptr noundef nonnull %cond501.ph) #23
  br i1 %call510, label %cleanup517, label %cleanup517.thread

cleanup517.thread:                                ; preds = %land.lhs.true508, %land.lhs.true503, %cond.false492
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %tmp_buf) #23
  br label %if.end521

cleanup517:                                       ; preds = %land.lhs.true508
  %call513 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.26, i32 noundef 5) #23
  %call514 = call ptr @quotearg_n_style(i32 noundef 0, i32 noundef 4, ptr noundef %src_name) #23
  %call515 = call ptr @quotearg_n_style(i32 noundef 1, i32 noundef 4, ptr noundef %dst_name) #23
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %call513, ptr noundef %call514, ptr noundef %call515) #25
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %tmp_buf) #23
  br label %cleanup1391

if.end521:                                        ; preds = %cleanup517.thread, %land.lhs.true484, %land.lhs.true481, %land.lhs.true478, %if.end475
  %verbose522 = getelementptr inbounds %struct.cp_options, ptr %x, i64 0, i32 33
  %145 = load i8, ptr %verbose522, align 8, !tbaa !53, !range !12, !noundef !13
  %tobool523.not = icmp eq i8 %145, 0
  br i1 %tobool523.not, label %if.end533, label %land.lhs.true525

land.lhs.true525:                                 ; preds = %if.end521
  %146 = load i8, ptr %move_mode, align 8, !tbaa !30, !range !12, !noundef !13
  %tobool527.not = icmp ne i8 %146, 0
  %and529 = and i32 %src_mode.1, 61440
  %cmp530 = icmp eq i32 %and529, 16384
  %or.cond1897 = or i1 %cmp530, %tobool527.not
  br i1 %or.cond1897, label %if.end533, label %if.then532

if.then532:                                       ; preds = %land.lhs.true525
  call fastcc void @emit_verbose(ptr noundef nonnull @.str.27, ptr noundef %src_name, ptr noundef %dst_name, ptr noundef %dst_backup.4)
  br label %if.end533

if.end533:                                        ; preds = %if.then532, %land.lhs.true525, %if.end521
  %cmp534 = icmp eq i32 %rename_errno.5, 0
  br i1 %cmp534, label %if.end654.thread, label %lor.lhs.false536

lor.lhs.false536:                                 ; preds = %if.end533
  %exchange537 = getelementptr inbounds %struct.cp_options, ptr %x, i64 0, i32 11
  %147 = load i8, ptr %exchange537, align 2, !tbaa !31, !range !12, !noundef !13
  %tobool538.not = icmp eq i8 %147, 0
  br i1 %tobool538.not, label %if.else541, label %if.end654

if.else541:                                       ; preds = %lor.lhs.false536
  %recursive542 = getelementptr inbounds %struct.cp_options, ptr %x, i64 0, i32 29
  %148 = load i8, ptr %recursive542, align 8, !tbaa !39, !range !12, !noundef !13
  %tobool543.not = icmp ne i8 %148, 0
  %and546 = and i32 %src_mode.1, 61440
  %cmp547 = icmp eq i32 %and546, 16384
  %or.cond1898 = and i1 %cmp547, %tobool543.not
  br i1 %or.cond1898, label %if.then549, label %if.else560

if.then549:                                       ; preds = %if.else541
  %st_ino552 = getelementptr inbounds %struct.stat, ptr %src_sb, i64 0, i32 1
  %149 = load i64, ptr %st_ino552, align 8, !tbaa !46
  %150 = load i64, ptr %src_sb, align 8, !tbaa !45
  br i1 %command_line_arg, label %if.then551, label %if.else555

if.then551:                                       ; preds = %if.then549
  %call554 = call ptr @remember_copied(ptr noundef nonnull %dst_relname, i64 noundef %149, i64 noundef %150) #23
  br label %if.end601

if.else555:                                       ; preds = %if.then549
  %call558 = call ptr @src_to_dest_lookup(i64 noundef %149, i64 noundef %150) #23
  br label %if.end601

if.else560:                                       ; preds = %if.else541
  %151 = load i8, ptr %move_mode, align 8, !tbaa !30, !range !12, !noundef !13
  %tobool562 = icmp ne i8 %151, 0
  %st_nlink565 = getelementptr inbounds %struct.stat, ptr %src_sb, i64 0, i32 2
  %152 = load i64, ptr %st_nlink565, align 8
  %cmp566 = icmp eq i64 %152, 1
  %or.cond1417 = select i1 %tobool562, i1 %cmp566, i1 false
  br i1 %or.cond1417, label %if.then568, label %if.else572

if.then568:                                       ; preds = %if.else560
  %st_ino569 = getelementptr inbounds %struct.stat, ptr %src_sb, i64 0, i32 1
  %153 = load i64, ptr %st_ino569, align 8, !tbaa !46
  %154 = load i64, ptr %src_sb, align 8, !tbaa !45
  %call571 = call ptr @src_to_dest_lookup(i64 noundef %153, i64 noundef %154) #23
  br label %if.end601

if.else572:                                       ; preds = %if.else560
  %preserve_links573 = getelementptr inbounds %struct.cp_options, ptr %x, i64 0, i32 21
  %155 = load i8, ptr %preserve_links573, align 8, !tbaa !57, !range !12, !noundef !13
  %tobool574.not = icmp eq i8 %155, 0
  br i1 %tobool574.not, label %if.end654, label %land.lhs.true576

land.lhs.true576:                                 ; preds = %if.else572
  %hard_link577 = getelementptr inbounds %struct.cp_options, ptr %x, i64 0, i32 8
  %156 = load i8, ptr %hard_link577, align 1, !tbaa !25, !range !12, !noundef !13
  %tobool578.not = icmp eq i8 %156, 0
  br i1 %tobool578.not, label %land.lhs.true579, label %if.end654

land.lhs.true579:                                 ; preds = %land.lhs.true576
  %cmp581 = icmp ugt i64 %152, 1
  br i1 %cmp581, label %if.then594, label %lor.lhs.false583

lor.lhs.false583:                                 ; preds = %land.lhs.true579
  %157 = load i32, ptr %16, align 4, !tbaa !34
  %cmp588 = icmp eq i32 %157, 3
  %or.cond2104 = select i1 %command_line_arg, i1 %cmp588, i1 false
  %cmp592 = icmp eq i32 %157, 4
  %or.cond2105 = select i1 %or.cond2104, i1 true, i1 %cmp592
  br i1 %or.cond2105, label %if.then594, label %if.end654

if.then594:                                       ; preds = %lor.lhs.false583, %land.lhs.true579
  %st_ino595 = getelementptr inbounds %struct.stat, ptr %src_sb, i64 0, i32 1
  %158 = load i64, ptr %st_ino595, align 8, !tbaa !46
  %159 = load i64, ptr %src_sb, align 8, !tbaa !45
  %call597 = call ptr @remember_copied(ptr noundef nonnull %dst_relname, i64 noundef %158, i64 noundef %159) #23
  br label %if.end601

if.end601:                                        ; preds = %if.then594, %if.then568, %if.else555, %if.then551
  %earlier_file.5 = phi ptr [ %call554, %if.then551 ], [ %call558, %if.else555 ], [ %call571, %if.then568 ], [ %call597, %if.then594 ]
  %tobool602.not = icmp eq ptr %earlier_file.5, null
  br i1 %tobool602.not, label %if.end654, label %if.then603

if.then603:                                       ; preds = %if.end601
  br i1 %cmp547, label %if.then607, label %if.else646

if.then607:                                       ; preds = %if.then603
  %call608 = call zeroext i1 @same_nameat(i32 noundef -100, ptr noundef %src_name, i32 noundef %dst_dirfd, ptr noundef nonnull %earlier_file.5) #23
  br i1 %call608, label %if.then609, label %if.else613

if.then609:                                       ; preds = %if.then607
  %call610 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.28, i32 noundef 5) #23
  %160 = load ptr, ptr @top_level_src_name, align 8, !tbaa !17
  %call611 = call ptr @quotearg_n_style(i32 noundef 0, i32 noundef 4, ptr noundef %160) #23
  %161 = load ptr, ptr @top_level_dst_name, align 8, !tbaa !17
  %call612 = call ptr @quotearg_n_style(i32 noundef 1, i32 noundef 4, ptr noundef %161) #23
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %call610, ptr noundef %call611, ptr noundef %call612) #25
  store i8 1, ptr %copy_into_self, align 1, !tbaa !27
  br label %un_backup

if.else613:                                       ; preds = %if.then607
  %call614 = call zeroext i1 @same_nameat(i32 noundef %dst_dirfd, ptr noundef nonnull %dst_relname, i32 noundef %dst_dirfd, ptr noundef nonnull %earlier_file.5) #23
  br i1 %call614, label %if.then615, label %if.else625

if.then615:                                       ; preds = %if.else613
  %call616 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.29, i32 noundef 5) #23
  %162 = load ptr, ptr @top_level_src_name, align 8, !tbaa !17
  %call617 = call ptr @quotearg_style(i32 noundef 4, ptr noundef %162) #23
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %call616, ptr noundef %call617) #25
  %163 = load i8, ptr %move_mode, align 8, !tbaa !30, !range !12, !noundef !13
  %tobool619 = icmp ne i8 %163, 0
  %tobool622 = icmp ne ptr %rename_succeeded, null
  %or.cond1418 = and i1 %tobool622, %tobool619
  br i1 %or.cond1418, label %if.then623, label %cleanup1391

if.then623:                                       ; preds = %if.then615
  store i8 1, ptr %rename_succeeded, align 1, !tbaa !27
  br label %cleanup1391

if.else625:                                       ; preds = %if.else613
  %164 = load i32, ptr %16, align 4, !tbaa !34
  %cmp627 = icmp eq i32 %164, 4
  %cmp634 = icmp eq i32 %164, 3
  %or.cond1899 = and i1 %cmp634, %command_line_arg
  %or.cond1924 = or i1 %cmp627, %or.cond1899
  br i1 %or.cond1924, label %if.end654, label %if.else637

if.else637:                                       ; preds = %if.else625
  %call638 = call fastcc ptr @subst_suffix(ptr noundef %dst_name, ptr noundef nonnull %dst_relname, ptr noundef nonnull %earlier_file.5)
  %call639 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.30, i32 noundef 5) #23
  %call640 = call ptr @quotearg_n_style(i32 noundef 0, i32 noundef 4, ptr noundef %dst_name) #23
  %call641 = call ptr @quotearg_n_style(i32 noundef 1, i32 noundef 4, ptr noundef %call638) #23
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %call639, ptr noundef %call640, ptr noundef %call641) #25
  call void @free(ptr noundef %call638) #23
  br label %un_backup

if.else646:                                       ; preds = %if.then603
  %165 = load i8, ptr %verbose522, align 8, !tbaa !53, !range !12, !noundef !13
  %tobool648 = icmp ne i8 %165, 0
  %call650 = call fastcc zeroext i1 @create_hard_link(ptr noundef null, i32 noundef %dst_dirfd, ptr noundef nonnull %earlier_file.5, ptr noundef %dst_name, i32 noundef %dst_dirfd, ptr noundef nonnull %dst_relname, i1 noundef zeroext true, i1 noundef zeroext %tobool648, i1 noundef zeroext %18)
  br i1 %call650, label %cleanup1391, label %un_backup

if.end654:                                        ; preds = %if.else625, %if.end601, %lor.lhs.false583, %land.lhs.true576, %if.else572, %lor.lhs.false536
  %earlier_file.52035 = phi ptr [ %earlier_file.5, %if.else625 ], [ null, %if.end601 ], [ null, %land.lhs.true576 ], [ null, %if.else572 ], [ null, %lor.lhs.false536 ], [ null, %lor.lhs.false583 ]
  %166 = load i8, ptr %move_mode, align 8, !tbaa !30, !range !12, !noundef !13
  %tobool656.not = icmp eq i8 %166, 0
  br i1 %tobool656.not, label %if.end767, label %if.then657

if.end654.thread:                                 ; preds = %if.end533
  %167 = load i8, ptr %move_mode, align 8, !tbaa !30, !range !12, !noundef !13
  %tobool656.not2069 = icmp eq i8 %167, 0
  br i1 %tobool656.not2069, label %if.end767, label %if.then676

if.then657:                                       ; preds = %if.end654
  %cmp658 = icmp eq i32 %rename_errno.5, 17
  br i1 %cmp658, label %if.then660, label %if.end673

if.then660:                                       ; preds = %if.then657
  %168 = load i8, ptr %exchange537, align 2, !tbaa !31, !range !12, !noundef !13
  %tobool662.not = icmp eq i8 %168, 0
  %cond664 = select i1 %tobool662.not, i32 0, i32 2
  %call665 = call i32 @renameatu(i32 noundef -100, ptr noundef %src_name, i32 noundef %dst_dirfd, ptr noundef nonnull %cond, i32 noundef %cond664) #23
  %cmp666 = icmp eq i32 %call665, 0
  br i1 %cmp666, label %if.then676, label %cond.false669

cond.false669:                                    ; preds = %if.then660
  %call670 = tail call ptr @__errno_location() #24
  %169 = load i32, ptr %call670, align 4, !tbaa !18
  br label %if.end673

if.end673:                                        ; preds = %cond.false669, %if.then657
  %rename_errno.6 = phi i32 [ %rename_errno.5, %if.then657 ], [ %169, %cond.false669 ]
  switch i32 %rename_errno.6, label %if.then722 [
    i32 0, label %if.then676
    i32 22, label %if.then708
    i32 18, label %lor.lhs.false715
  ]

if.then676:                                       ; preds = %if.end673, %if.then660, %if.end654.thread
  %170 = load i8, ptr %verbose522, align 8, !tbaa !53, !range !12, !noundef !13
  %tobool678.not = icmp eq i8 %170, 0
  br i1 %tobool678.not, label %if.end689, label %if.then679

if.then679:                                       ; preds = %if.then676
  %exchange680 = getelementptr inbounds %struct.cp_options, ptr %x, i64 0, i32 11
  %171 = load i8, ptr %exchange680, align 2, !tbaa !31, !range !12, !noundef !13
  %tobool681.not = icmp eq i8 %171, 0
  %.str.32..str.31 = select i1 %tobool681.not, ptr @.str.32, ptr @.str.31
  %call686 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull %.str.32..str.31, i32 noundef 5) #23
  call fastcc void @emit_verbose(ptr noundef %call686, ptr noundef %src_name, ptr noundef %dst_name, ptr noundef %dst_backup.4)
  br label %if.end689

if.end689:                                        ; preds = %if.then679, %if.then676
  %set_security_context = getelementptr inbounds %struct.cp_options, ptr %x, i64 0, i32 20
  %172 = load ptr, ptr %set_security_context, align 8, !tbaa !19
  %tobool690.not = icmp eq ptr %172, null
  br i1 %tobool690.not, label %if.end693, label %if.then691

if.then691:                                       ; preds = %if.end689
  %call692 = call zeroext i1 @set_file_security_ctx(ptr noundef %dst_name, i1 noundef zeroext true, ptr noundef %x)
  br label %if.end693

if.end693:                                        ; preds = %if.then691, %if.end689
  %tobool694.not = icmp eq ptr %rename_succeeded, null
  br i1 %tobool694.not, label %if.end696, label %if.then695

if.then695:                                       ; preds = %if.end693
  store i8 1, ptr %rename_succeeded, align 1, !tbaa !27
  br label %if.end696

if.end696:                                        ; preds = %if.then695, %if.end693
  br i1 %command_line_arg, label %land.lhs.true699, label %cleanup1391

land.lhs.true699:                                 ; preds = %if.end696
  %last_file700 = getelementptr inbounds %struct.cp_options, ptr %x, i64 0, i32 38
  %173 = load i8, ptr %last_file700, align 1, !tbaa !32, !range !12, !noundef !13
  %tobool701.not = icmp eq i8 %173, 0
  br i1 %tobool701.not, label %if.then702, label %cleanup1391

if.then702:                                       ; preds = %land.lhs.true699
  %dest_info703 = getelementptr inbounds %struct.cp_options, ptr %x, i64 0, i32 41
  %174 = load ptr, ptr %dest_info703, align 8, !tbaa !20
  call void @record_file(ptr noundef %174, ptr noundef nonnull %dst_relname, ptr noundef nonnull %src_sb) #23
  br label %cleanup1391

if.then708:                                       ; preds = %if.end673
  %call709 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.33, i32 noundef 5) #23
  %175 = load ptr, ptr @top_level_src_name, align 8, !tbaa !17
  %call710 = call ptr @quotearg_n_style(i32 noundef 0, i32 noundef 4, ptr noundef %175) #23
  %176 = load ptr, ptr @top_level_dst_name, align 8, !tbaa !17
  %call711 = call ptr @quotearg_n_style(i32 noundef 1, i32 noundef 4, ptr noundef %176) #23
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %call709, ptr noundef %call710, ptr noundef %call711) #25
  store i8 1, ptr %copy_into_self, align 1, !tbaa !27
  br label %cleanup1391

lor.lhs.false715:                                 ; preds = %if.end673
  %no_copy = getelementptr inbounds %struct.cp_options, ptr %x, i64 0, i32 10
  %177 = load i8, ptr %no_copy, align 1, !tbaa !58, !range !12, !noundef !13
  %tobool716.not = icmp eq i8 %177, 0
  br i1 %tobool716.not, label %lor.lhs.false718, label %if.then722

lor.lhs.false718:                                 ; preds = %lor.lhs.false715
  %178 = load i8, ptr %exchange537, align 2, !tbaa !31, !range !12, !noundef !13
  %tobool720.not = icmp eq i8 %178, 0
  br i1 %tobool720.not, label %if.end737, label %if.then722

if.then722:                                       ; preds = %lor.lhs.false718, %lor.lhs.false715, %if.end673
  %call723 = call ptr @quotearg_n_style(i32 noundef 1, i32 noundef 4, ptr noundef %dst_name) #23
  %179 = load i8, ptr %exchange537, align 2, !tbaa !31, !range !12, !noundef !13
  %tobool725.not = icmp eq i8 %179, 0
  br i1 %tobool725.not, label %if.else729, label %if.then726

if.then726:                                       ; preds = %if.then722
  %call727 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.34, i32 noundef 5) #23
  %call728 = call ptr @quotearg_n_style(i32 noundef 0, i32 noundef 4, ptr noundef %src_name) #23
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %rename_errno.6, ptr noundef %call727, ptr noundef %call728, ptr noundef %call723) #25
  br label %if.end733

if.else729:                                       ; preds = %if.then722
  switch i32 %rename_errno.6, label %sw.default [
    i32 122, label %sw.bb
    i32 17, label %sw.bb
    i32 21, label %sw.bb
    i32 31, label %sw.bb
    i32 28, label %sw.bb
    i32 26, label %sw.bb
    i32 39, label %sw.bb
  ]

sw.bb:                                            ; preds = %if.else729, %if.else729, %if.else729, %if.else729, %if.else729, %if.else729, %if.else729
  %call730 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.35, i32 noundef 5) #23
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %rename_errno.6, ptr noundef %call730, ptr noundef %call723) #25
  br label %if.end733

sw.default:                                       ; preds = %if.else729
  %call731 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.36, i32 noundef 5) #23
  %call732 = call ptr @quotearg_n_style(i32 noundef 0, i32 noundef 4, ptr noundef %src_name) #23
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %rename_errno.6, ptr noundef %call731, ptr noundef %call732, ptr noundef %call723) #25
  br label %if.end733

if.end733:                                        ; preds = %sw.default, %sw.bb, %if.then726
  %st_ino734 = getelementptr inbounds %struct.stat, ptr %src_sb, i64 0, i32 1
  %180 = load i64, ptr %st_ino734, align 8, !tbaa !46
  %181 = load i64, ptr %src_sb, align 8, !tbaa !45
  call void @forget_created(i64 noundef %180, i64 noundef %181) #23
  br label %cleanup1391

if.end737:                                        ; preds = %lor.lhs.false718
  %and738 = and i32 %src_mode.1, 61440
  %cmp739 = icmp eq i32 %and738, 16384
  %cond741 = select i1 %cmp739, i32 512, i32 0
  %call742 = call i32 @unlinkat(i32 noundef %dst_dirfd, ptr noundef nonnull %cond, i32 noundef %cond741) #23
  %cmp743.not = icmp eq i32 %call742, 0
  br i1 %cmp743.not, label %if.end756, label %land.lhs.true745

land.lhs.true745:                                 ; preds = %if.end737
  %call746 = tail call ptr @__errno_location() #24
  %182 = load i32, ptr %call746, align 4, !tbaa !18
  %cmp747.not = icmp eq i32 %182, 2
  br i1 %cmp747.not, label %if.end756, label %if.then749

if.then749:                                       ; preds = %land.lhs.true745
  %call751 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.37, i32 noundef 5) #23
  %call752 = call ptr @quotearg_n_style(i32 noundef 0, i32 noundef 4, ptr noundef %src_name) #23
  %call753 = call ptr @quotearg_n_style(i32 noundef 1, i32 noundef 4, ptr noundef %dst_name) #23
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %182, ptr noundef %call751, ptr noundef %call752, ptr noundef %call753) #25
  %st_ino754 = getelementptr inbounds %struct.stat, ptr %src_sb, i64 0, i32 1
  %183 = load i64, ptr %st_ino754, align 8, !tbaa !46
  %184 = load i64, ptr %src_sb, align 8, !tbaa !45
  call void @forget_created(i64 noundef %183, i64 noundef %184) #23
  br label %cleanup1391

if.end756:                                        ; preds = %land.lhs.true745, %if.end737
  %185 = load i8, ptr %verbose522, align 8, !tbaa !53, !range !12, !noundef !13
  %tobool758.not = icmp eq i8 %185, 0
  %brmerge1900 = or i1 %cmp739, %tobool758.not
  br i1 %brmerge1900, label %if.end766, label %if.then764

if.then764:                                       ; preds = %if.end756
  %call765 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.38, i32 noundef 5) #23
  call fastcc void @emit_verbose(ptr noundef %call765, ptr noundef %src_name, ptr noundef %dst_name, ptr noundef %dst_backup.4)
  br label %if.end766

if.end766:                                        ; preds = %if.then764, %if.end756
  store i8 1, ptr %new_dst, align 1, !tbaa !27
  br label %if.end767

if.end767:                                        ; preds = %if.end766, %if.end654.thread, %if.end654
  %earlier_file.520352071 = phi ptr [ null, %if.end654.thread ], [ %earlier_file.52035, %if.end766 ], [ %earlier_file.52035, %if.end654 ]
  %set_mode = getelementptr inbounds %struct.cp_options, ptr %x, i64 0, i32 30
  %186 = load i8, ptr %set_mode, align 1, !tbaa !59, !range !12, !noundef !13
  %tobool768.not = icmp eq i8 %186, 0
  br i1 %tobool768.not, label %cond.end772, label %cond.true770

cond.true770:                                     ; preds = %if.end767
  %mode = getelementptr inbounds %struct.cp_options, ptr %x, i64 0, i32 4
  %187 = load i32, ptr %mode, align 8, !tbaa !60
  br label %cond.end772

cond.end772:                                      ; preds = %cond.true770, %if.end767
  %cond773 = phi i32 [ %187, %cond.true770 ], [ %src_mode.1, %if.end767 ]
  %and774 = and i32 %cond773, 4095
  %preserve_ownership = getelementptr inbounds %struct.cp_options, ptr %x, i64 0, i32 16
  %188 = load i8, ptr %preserve_ownership, align 1, !tbaa !61, !range !12, !noundef !13
  %tobool775.not = icmp eq i8 %188, 0
  %and779 = and i32 %src_mode.1, 61440
  %cmp780 = icmp eq i32 %and779, 16384
  %cond782 = select i1 %cmp780, i32 18, i32 0
  %cond784 = select i1 %tobool775.not, i32 %cond782, i32 63
  %and785 = and i32 %cond784, %cond773
  %189 = load i8, ptr %new_dst, align 1, !range !12, !noundef !13
  %tobool786 = icmp ne i8 %189, 0
  %call787 = call zeroext i1 @set_process_security_ctx(ptr noundef %src_name, ptr noundef %dst_name, i32 noundef %src_mode.1, i1 noundef zeroext %tobool786, ptr noundef %x)
  br i1 %call787, label %if.end789, label %cleanup1391

if.end789:                                        ; preds = %cond.end772
  br i1 %cmp780, label %if.then793, label %if.else898

if.then793:                                       ; preds = %if.end789
  %src_sb.val = load i64, ptr %src_sb, align 8
  %190 = getelementptr inbounds i8, ptr %src_sb, i64 8
  %src_sb.val1926 = load i64, ptr %190, align 8
  %cmp.not1.not.i = icmp eq ptr %ancestors, null
  br i1 %cmp.not1.not.i, label %if.end798, label %while.body.i

while.body.i:                                     ; preds = %if.end.i1938, %if.then793
  %ancestors.addr.02.i = phi ptr [ %193, %if.end.i1938 ], [ %ancestors, %if.then793 ]
  %ino.i = getelementptr inbounds %struct.dir_list, ptr %ancestors.addr.02.i, i64 0, i32 1
  %191 = load i64, ptr %ino.i, align 8, !tbaa !62
  %cmp1.i = icmp eq i64 %191, %src_sb.val1926
  br i1 %cmp1.i, label %land.lhs.true.i1939, label %if.end.i1938

land.lhs.true.i1939:                              ; preds = %while.body.i
  %dev.i = getelementptr inbounds %struct.dir_list, ptr %ancestors.addr.02.i, i64 0, i32 2
  %192 = load i64, ptr %dev.i, align 8, !tbaa !64
  %cmp2.i1940 = icmp eq i64 %192, %src_sb.val
  br i1 %cmp2.i1940, label %if.then795, label %if.end.i1938

if.end.i1938:                                     ; preds = %land.lhs.true.i1939, %while.body.i
  %193 = load ptr, ptr %ancestors.addr.02.i, align 8, !tbaa !65
  %cmp.not.not.i = icmp eq ptr %193, null
  br i1 %cmp.not.not.i, label %if.end798, label %while.body.i, !llvm.loop !66

if.then795:                                       ; preds = %land.lhs.true.i1939
  %call796 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.39, i32 noundef 5) #23
  %call797 = call ptr @quotearg_style(i32 noundef 4, ptr noundef %src_name) #23
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %call796, ptr noundef %call797) #25
  br label %un_backup

if.end798:                                        ; preds = %if.end.i1938, %if.then793
  %194 = alloca [24 x i8], align 16
  store ptr %ancestors, ptr %194, align 16, !tbaa !65
  %ino = getelementptr inbounds %struct.dir_list, ptr %194, i64 0, i32 1
  store i64 %src_sb.val1926, ptr %ino, align 8, !tbaa !62
  %dev = getelementptr inbounds %struct.dir_list, ptr %194, i64 0, i32 2
  store i64 %src_sb.val, ptr %dev, align 16, !tbaa !64
  %tobool802.not = icmp eq i8 %189, 0
  br i1 %tobool802.not, label %lor.lhs.false804, label %if.then809

lor.lhs.false804:                                 ; preds = %if.end798
  %195 = load i32, ptr %dst_sb.sroa.gep, align 8, !tbaa !35
  %and806 = and i32 %195, 61440
  %cmp807 = icmp eq i32 %and806, 16384
  br i1 %cmp807, label %if.else865, label %if.then809

if.then809:                                       ; preds = %lor.lhs.false804, %if.end798
  %not = xor i32 %and785, -1
  %and811 = and i32 %and774, %not
  %call812 = call i32 @mkdirat(i32 noundef %dst_dirfd, ptr noundef nonnull %cond, i32 noundef %and811) #23
  %cmp813.not = icmp eq i32 %call812, 0
  br i1 %cmp813.not, label %if.end819, label %if.then815

if.then815:                                       ; preds = %if.then809
  %call816 = tail call ptr @__errno_location() #24
  %196 = load i32, ptr %call816, align 4, !tbaa !18
  %call817 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.40, i32 noundef 5) #23
  %call818 = call ptr @quotearg_style(i32 noundef 4, ptr noundef %dst_name) #23
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %196, ptr noundef %call817, ptr noundef %call818) #25
  br label %un_backup

if.end819:                                        ; preds = %if.then809
  %call820 = call i32 @fstatat(i32 noundef %dst_dirfd, ptr noundef nonnull %cond, ptr noundef nonnull %dst_sb, i32 noundef 256) #23
  %cmp821.not = icmp eq i32 %call820, 0
  br i1 %cmp821.not, label %if.else827, label %if.then823

if.then823:                                       ; preds = %if.end819
  %call824 = tail call ptr @__errno_location() #24
  %197 = load i32, ptr %call824, align 4, !tbaa !18
  %call825 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.11, i32 noundef 5) #23
  %call826 = call ptr @quotearg_style(i32 noundef 4, ptr noundef %dst_name) #23
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %197, ptr noundef %call825, ptr noundef %call826) #25
  br label %un_backup

if.else827:                                       ; preds = %if.end819
  %198 = load i32, ptr %dst_sb.sroa.gep, align 8, !tbaa !35
  %and829 = and i32 %198, 448
  %cmp830.not = icmp eq i32 %and829, 448
  br i1 %cmp830.not, label %if.end843, label %if.then832

if.then832:                                       ; preds = %if.else827
  %or = or i32 %198, 448
  %call.i1941 = call i32 @fchmodat(i32 noundef %dst_dirfd, ptr noundef nonnull %cond, i32 noundef %or, i32 noundef 256) #23
  %cmp835.not = icmp eq i32 %call.i1941, 0
  br i1 %cmp835.not, label %if.end843, label %if.then837

if.then837:                                       ; preds = %if.then832
  %call838 = tail call ptr @__errno_location() #24
  %199 = load i32, ptr %call838, align 4, !tbaa !18
  %call839 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.41, i32 noundef 5) #23
  %call840 = call ptr @quotearg_style(i32 noundef 4, ptr noundef %dst_name) #23
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %199, ptr noundef %call839, ptr noundef %call840) #25
  br label %un_backup

if.end843:                                        ; preds = %if.then832, %if.else827
  %restore_dst_mode.0 = phi i8 [ 1, %if.then832 ], [ 0, %if.else827 ]
  %200 = load i8, ptr %first_dir_created_per_command_line_arg, align 1, !tbaa !27, !range !12, !noundef !13
  %tobool844.not = icmp eq i8 %200, 0
  br i1 %tobool844.not, label %if.then845, label %if.end849

if.then845:                                       ; preds = %if.end843
  %st_ino846 = getelementptr inbounds %struct.stat, ptr %dst_sb, i64 0, i32 1
  %201 = load i64, ptr %st_ino846, align 8, !tbaa !46
  %202 = load i64, ptr %dst_sb, align 8, !tbaa !45
  %call848 = call ptr @remember_copied(ptr noundef nonnull %dst_relname, i64 noundef %201, i64 noundef %202) #23
  store i8 1, ptr %first_dir_created_per_command_line_arg, align 1, !tbaa !27
  br label %if.end849

if.end849:                                        ; preds = %if.then845, %if.end843
  %203 = load i8, ptr %verbose522, align 8, !tbaa !53, !range !12, !noundef !13
  %tobool851.not = icmp eq i8 %203, 0
  br i1 %tobool851.not, label %if.end879, label %if.then852

if.then852:                                       ; preds = %if.end849
  %204 = load i8, ptr %move_mode, align 8, !tbaa !30, !range !12, !noundef !13
  %tobool854.not = icmp eq i8 %204, 0
  br i1 %tobool854.not, label %if.else859, label %if.then855

if.then855:                                       ; preds = %if.then852
  %call856 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.42, i32 noundef 5) #23
  %call857 = call ptr @quotearg_style(i32 noundef 4, ptr noundef %dst_name) #23
  %call858 = call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %call856, ptr noundef %call857) #23
  br label %if.end879

if.else859:                                       ; preds = %if.then852
  call fastcc void @emit_verbose(ptr noundef nonnull @.str.27, ptr noundef %src_name, ptr noundef %dst_name, ptr noundef null)
  br label %if.end879

if.else865:                                       ; preds = %lor.lhs.false804
  %set_security_context866 = getelementptr inbounds %struct.cp_options, ptr %x, i64 0, i32 20
  %205 = load ptr, ptr %set_security_context866, align 8, !tbaa !19
  %tobool867.not = icmp eq ptr %205, null
  br i1 %tobool867.not, label %lor.lhs.false868, label %if.then871

lor.lhs.false868:                                 ; preds = %if.else865
  %preserve_security_context = getelementptr inbounds %struct.cp_options, ptr %x, i64 0, i32 24
  %206 = load i8, ptr %preserve_security_context, align 1, !tbaa !5, !range !12, !noundef !13
  %tobool869.not = icmp eq i8 %206, 0
  br i1 %tobool869.not, label %if.end879, label %if.then871

if.then871:                                       ; preds = %lor.lhs.false868, %if.else865
  %call872 = call zeroext i1 @set_file_security_ctx(ptr noundef %dst_name, i1 noundef zeroext false, ptr noundef %x)
  br i1 %call872, label %if.end879, label %if.then873

if.then873:                                       ; preds = %if.then871
  %require_preserve_context = getelementptr inbounds %struct.cp_options, ptr %x, i64 0, i32 25
  %207 = load i8, ptr %require_preserve_context, align 4, !tbaa !15, !range !12, !noundef !13
  %tobool874.not = icmp eq i8 %207, 0
  br i1 %tobool874.not, label %if.end879, label %un_backup

if.end879:                                        ; preds = %if.then873, %if.then871, %lor.lhs.false868, %if.else859, %if.then855, %if.end849
  %restore_dst_mode.2 = phi i8 [ 0, %if.then871 ], [ 0, %if.then873 ], [ 0, %lor.lhs.false868 ], [ %restore_dst_mode.0, %if.then855 ], [ %restore_dst_mode.0, %if.else859 ], [ %restore_dst_mode.0, %if.end849 ]
  %omitted_permissions.0 = phi i32 [ 0, %if.then871 ], [ 0, %if.then873 ], [ 0, %lor.lhs.false868 ], [ %and785, %if.then855 ], [ %and785, %if.else859 ], [ %and785, %if.end849 ]
  %dst_mode.2 = phi i32 [ undef, %if.then871 ], [ undef, %if.then873 ], [ undef, %lor.lhs.false868 ], [ %198, %if.then855 ], [ %198, %if.else859 ], [ %198, %if.end849 ]
  %one_file_system = getelementptr inbounds %struct.cp_options, ptr %x, i64 0, i32 15
  %208 = load i8, ptr %one_file_system, align 2, !tbaa !68, !range !12, !noundef !13
  %tobool880 = icmp ne i8 %208, 0
  %tobool883 = icmp ne ptr %parent, null
  %or.cond1419 = and i1 %tobool883, %tobool880
  br i1 %or.cond1419, label %land.lhs.true884, label %if.else890

land.lhs.true884:                                 ; preds = %if.end879
  %209 = load i64, ptr %parent, align 8, !tbaa !45
  %210 = load i64, ptr %src_sb, align 8, !tbaa !45
  %cmp887.not = icmp eq i64 %209, %210
  br i1 %cmp887.not, label %if.else890, label %if.end1128

if.else890:                                       ; preds = %land.lhs.true884, %if.end879
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %non_command_line_options.i) #23
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %non_command_line_options.i, ptr noundef nonnull align 8 dereferenceable(96) %x, i64 96, i1 false), !tbaa !69, !tbaa.struct !70
  %call.i1942 = call noalias ptr @savedir(ptr noundef %src_name, i32 noundef 2) #23
  %cmp.i1943 = icmp eq ptr %call.i1942, null
  br i1 %cmp.i1943, label %if.then.i1951, label %if.end.i1944

if.then.i1951:                                    ; preds = %if.else890
  %call1.i = tail call ptr @__errno_location() #24
  %211 = load i32, ptr %call1.i, align 4, !tbaa !18
  %call2.i = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.61, i32 noundef 5) #23
  %call3.i = call ptr @quotearg_style(i32 noundef 4, ptr noundef %src_name) #23
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %211, ptr noundef %call2.i, ptr noundef %call3.i) #25
  br label %copy_dir.exit

if.end.i1944:                                     ; preds = %if.else890
  %212 = load i32, ptr %16, align 4, !tbaa !34
  %cmp4.i1946 = icmp eq i32 %212, 3
  br i1 %cmp4.i1946, label %if.then5.i, label %if.end7.i

if.then5.i:                                       ; preds = %if.end.i1944
  %dereference6.i = getelementptr inbounds %struct.cp_options, ptr %non_command_line_options.i, i64 0, i32 1
  store i32 2, ptr %dereference6.i, align 4, !tbaa !34
  br label %if.end7.i

if.end7.i:                                        ; preds = %if.then5.i, %if.end.i1944
  %213 = load i8, ptr %call.i1942, align 1, !tbaa !28
  %cmp8.not.i2083 = icmp eq i8 %213, 0
  br i1 %cmp8.not.i2083, label %while.end.i, label %while.body.i1947.lr.ph

while.body.i1947.lr.ph:                           ; preds = %if.end7.i
  %sub.ptr.lhs.cast.i = ptrtoint ptr %dst_relname to i64
  %sub.ptr.rhs.cast.i = ptrtoint ptr %dst_name to i64
  %sub.ptr.sub.i = sub i64 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %conv14.i = zext nneg i8 %189 to i32
  br label %while.body.i1947

while.body.i1947:                                 ; preds = %cleanup.i, %while.body.i1947.lr.ph
  %namep.0.i2086 = phi ptr [ %call.i1942, %while.body.i1947.lr.ph ], [ %add.ptr38.i, %cleanup.i ]
  %new_first_dir_created.0.i2085 = phi i8 [ 0, %while.body.i1947.lr.ph ], [ %or3469.i, %cleanup.i ]
  %ok.0.i2084 = phi i1 [ true, %while.body.i1947.lr.ph ], [ %tobool19.i, %cleanup.i ]
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %local_copy_into_self.i) #23
  %call10.i = call noalias nonnull ptr @file_name_concat(ptr noundef %src_name, ptr noundef nonnull %namep.0.i2086, ptr noundef null) #23
  %call11.i1948 = call noalias nonnull ptr @file_name_concat(ptr noundef %dst_name, ptr noundef nonnull %namep.0.i2086, ptr noundef null) #23
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %first_dir_created.i) #23
  %214 = load i8, ptr %first_dir_created_per_command_line_arg, align 1, !tbaa !27, !range !12, !noundef !13
  store i8 %214, ptr %first_dir_created.i, align 1, !tbaa !27
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %rename_succeeded.i) #23
  %add.ptr.i = getelementptr inbounds i8, ptr %call11.i1948, i64 %sub.ptr.sub.i
  %call15.i = call fastcc zeroext i1 @copy_internal(ptr noundef nonnull %call10.i, ptr noundef nonnull %call11.i1948, i32 noundef %dst_dirfd, ptr noundef nonnull %add.ptr.i, i32 noundef %conv14.i, ptr noundef nonnull %src_sb, ptr noundef nonnull %194, ptr noundef nonnull %non_command_line_options.i, i1 noundef zeroext false, ptr noundef nonnull %first_dir_created.i, ptr noundef nonnull %local_copy_into_self.i, ptr noundef nonnull %rename_succeeded.i)
  %tobool19.i = select i1 %call15.i, i1 %ok.0.i2084, i1 false
  %215 = load i8, ptr %local_copy_into_self.i, align 1, !tbaa !27, !range !12, !noundef !13
  %216 = load i8, ptr %copy_into_self, align 1, !tbaa !27, !range !12, !noundef !13
  %or68.i = or i8 %216, %215
  store i8 %or68.i, ptr %copy_into_self, align 1, !tbaa !27
  call void @free(ptr noundef nonnull %call11.i1948) #23
  call void @free(ptr noundef nonnull %call10.i) #23
  %tobool27.not.i = icmp eq i8 %215, 0
  br i1 %tobool27.not.i, label %cleanup.i, label %cleanup.i.thread

cleanup.i.thread:                                 ; preds = %while.body.i1947
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %rename_succeeded.i) #23
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %first_dir_created.i) #23
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %local_copy_into_self.i) #23
  br label %while.end.i

cleanup.i:                                        ; preds = %while.body.i1947
  %217 = load i8, ptr %first_dir_created.i, align 1, !tbaa !27, !range !12, !noundef !13
  %or3469.i = or i8 %217, %new_first_dir_created.0.i2085
  %call37.i = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %namep.0.i2086) #27
  %add.i = add i64 %call37.i, 1
  %add.ptr38.i = getelementptr inbounds i8, ptr %namep.0.i2086, i64 %add.i
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %rename_succeeded.i) #23
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %first_dir_created.i) #23
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %local_copy_into_self.i) #23
  %218 = load i8, ptr %add.ptr38.i, align 1, !tbaa !28
  %cmp8.not.i = icmp eq i8 %218, 0
  br i1 %cmp8.not.i, label %while.end.i, label %while.body.i1947

while.end.i:                                      ; preds = %cleanup.i, %cleanup.i.thread, %if.end7.i
  %new_first_dir_created.0.i2081 = phi i8 [ %new_first_dir_created.0.i2085, %cleanup.i.thread ], [ 0, %if.end7.i ], [ %or3469.i, %cleanup.i ]
  %ok.1.i.shrunk = phi i1 [ %tobool19.i, %cleanup.i.thread ], [ true, %if.end7.i ], [ %tobool19.i, %cleanup.i ]
  call void @free(ptr noundef %call.i1942) #23
  %219 = and i8 %new_first_dir_created.0.i2081, 1
  store i8 %219, ptr %first_dir_created_per_command_line_arg, align 1, !tbaa !27
  br label %copy_dir.exit

copy_dir.exit:                                    ; preds = %while.end.i, %if.then.i1951
  %retval.0.i1950 = phi i1 [ false, %if.then.i1951 ], [ %ok.1.i.shrunk, %while.end.i ]
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %non_command_line_options.i) #23
  br label %if.end1128

if.else898:                                       ; preds = %if.end789
  %symbolic_link899 = getelementptr inbounds %struct.cp_options, ptr %x, i64 0, i32 31
  %220 = load i8, ptr %symbolic_link899, align 2, !tbaa !26, !range !12, !noundef !13
  %tobool900.not = icmp eq i8 %220, 0
  br i1 %tobool900.not, label %if.else951, label %if.then901

if.then901:                                       ; preds = %if.else898
  %221 = load i8, ptr %src_name, align 1, !tbaa !28
  %cmp903.not = icmp eq i8 %221, 47
  br i1 %cmp903.not, label %if.end937, label %if.then905

if.then905:                                       ; preds = %if.then901
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %dot_sb) #23
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %dst_parent_sb) #23
  %call906 = call noalias nonnull ptr @dir_name(ptr noundef nonnull %dst_relname) #23
  %cmp907 = icmp eq i32 %dst_dirfd, -100
  br i1 %cmp907, label %land.lhs.true909, label %lor.lhs.false913

land.lhs.true909:                                 ; preds = %if.then905
  %call910 = call i32 @strcmp(ptr noundef nonnull dereferenceable(2) @.str.10, ptr noundef nonnull dereferenceable(1) %call906) #27
  %cmp911 = icmp eq i32 %call910, 0
  br i1 %cmp911, label %if.end930.critedge, label %lor.lhs.false913

lor.lhs.false913:                                 ; preds = %land.lhs.true909, %if.then905
  %call914 = call i32 @stat(ptr noundef nonnull @.str.10, ptr noundef nonnull %dot_sb) #23
  %cmp915.not = icmp eq i32 %call914, 0
  br i1 %cmp915.not, label %lor.lhs.false917, label %if.end930.critedge

lor.lhs.false917:                                 ; preds = %lor.lhs.false913
  %call918 = call i32 @fstatat(i32 noundef %dst_dirfd, ptr noundef nonnull %call906, ptr noundef nonnull %dst_parent_sb, i32 noundef 0) #23
  %cmp919.not = icmp eq i32 %call918, 0
  br i1 %cmp919.not, label %lor.rhs921, label %if.end930.critedge

lor.rhs921:                                       ; preds = %lor.lhs.false917
  %222 = load i64, ptr %dot_sb, align 8, !tbaa !45
  %223 = load i64, ptr %dst_parent_sb, align 8, !tbaa !45
  %224 = icmp eq i64 %222, %223
  %st_ino.i = getelementptr inbounds %struct.stat, ptr %dot_sb, i64 0, i32 1
  %225 = load i64, ptr %st_ino.i, align 8, !tbaa !46
  %st_ino8.i = getelementptr inbounds %struct.stat, ptr %dst_parent_sb, i64 0, i32 1
  %226 = load i64, ptr %st_ino8.i, align 8, !tbaa !46
  %227 = icmp eq i64 %225, %226
  %tobool11.not.i = and i1 %224, %227
  call void @free(ptr noundef nonnull %call906) #23
  br i1 %tobool11.not.i, label %cleanup931.thread, label %cleanup931

if.end930.critedge:                               ; preds = %lor.lhs.false917, %lor.lhs.false913, %land.lhs.true909
  call void @free(ptr noundef nonnull %call906) #23
  br label %cleanup931.thread

cleanup931.thread:                                ; preds = %if.end930.critedge, %lor.rhs921
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %dst_parent_sb) #23
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %dot_sb) #23
  br label %if.end937

cleanup931:                                       ; preds = %lor.rhs921
  %call928 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.43, i32 noundef 5) #23
  %call929 = call ptr @quotearg_n_style_colon(i32 noundef 0, i32 noundef 3, ptr noundef %dst_name) #23
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %call928, ptr noundef %call929) #25
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %dst_parent_sb) #23
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %dot_sb) #23
  br label %un_backup

if.end937:                                        ; preds = %cleanup931.thread, %if.then901
  %unlink_dest_after_failed_open938 = getelementptr inbounds %struct.cp_options, ptr %x, i64 0, i32 7
  %228 = load i8, ptr %unlink_dest_after_failed_open938, align 2, !tbaa !44, !range !12, !noundef !13
  %tobool939 = icmp ne i8 %228, 0
  %call940 = call i32 @force_symlinkat(ptr noundef nonnull %src_name, i32 noundef %dst_dirfd, ptr noundef nonnull %dst_relname, i1 noundef zeroext %tobool939, i32 noundef -1) #23
  %cmp941 = icmp sgt i32 %call940, 0
  br i1 %cmp941, label %cleanup948, label %if.end1128

cleanup948:                                       ; preds = %if.end937
  %call944 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.44, i32 noundef 5) #23
  %call945 = call ptr @quotearg_n_style(i32 noundef 0, i32 noundef 4, ptr noundef %dst_name) #23
  %call946 = call ptr @quotearg_n_style(i32 noundef 1, i32 noundef 4, ptr noundef nonnull %src_name) #23
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %call940, ptr noundef %call944, ptr noundef %call945, ptr noundef %call946) #25
  br label %un_backup

if.else951:                                       ; preds = %if.else898
  %hard_link952 = getelementptr inbounds %struct.cp_options, ptr %x, i64 0, i32 8
  %229 = load i8, ptr %hard_link952, align 1, !tbaa !25, !range !12, !noundef !13
  %tobool953.not = icmp eq i8 %229, 0
  br i1 %tobool953.not, label %if.else973, label %if.then955

if.then955:                                       ; preds = %if.else951
  %unlink_dest_after_failed_open956 = getelementptr inbounds %struct.cp_options, ptr %x, i64 0, i32 7
  %230 = load i8, ptr %unlink_dest_after_failed_open956, align 2, !tbaa !44, !range !12, !noundef !13
  %tobool957.not = icmp eq i8 %230, 0
  br i1 %tobool957.not, label %lor.rhs959, label %lor.end963

lor.rhs959:                                       ; preds = %if.then955
  %interactive960 = getelementptr inbounds %struct.cp_options, ptr %x, i64 0, i32 2
  %231 = load i32, ptr %interactive960, align 8, !tbaa !54
  %cmp961 = icmp eq i32 %231, 3
  br label %lor.end963

lor.end963:                                       ; preds = %lor.rhs959, %if.then955
  %232 = phi i1 [ true, %if.then955 ], [ %cmp961, %lor.rhs959 ]
  %call967 = call fastcc zeroext i1 @create_hard_link(ptr noundef %src_name, i32 noundef -100, ptr noundef %src_name, ptr noundef %dst_name, i32 noundef %dst_dirfd, ptr noundef nonnull %dst_relname, i1 noundef zeroext %232, i1 noundef zeroext false, i1 noundef zeroext %18)
  br i1 %call967, label %if.end1128, label %un_backup

if.else973:                                       ; preds = %if.else951
  %cmp975 = icmp eq i32 %and779, 32768
  br i1 %cmp975, label %if.then985, label %lor.lhs.false977

lor.lhs.false977:                                 ; preds = %if.else973
  %copy_as_regular978 = getelementptr inbounds %struct.cp_options, ptr %x, i64 0, i32 5
  %233 = load i8, ptr %copy_as_regular978, align 4, !tbaa !41, !range !12, !noundef !13
  %tobool979.not = icmp eq i8 %233, 0
  %cmp983 = icmp eq i32 %and779, 40960
  %or.cond1904 = or i1 %cmp983, %tobool979.not
  br i1 %or.cond1904, label %if.else990, label %if.then985

if.then985:                                       ; preds = %lor.lhs.false977, %if.else973
  %and986 = and i32 %cond773, 511
  %call987 = call fastcc zeroext i1 @copy_reg(ptr noundef %src_name, ptr noundef %dst_name, i32 noundef %dst_dirfd, ptr noundef nonnull %dst_relname, ptr noundef nonnull %x, i32 noundef %and986, i32 noundef %and785, ptr noundef nonnull %new_dst, ptr noundef nonnull %src_sb)
  br i1 %call987, label %if.then985.if.end1128_crit_edge, label %un_backup

if.then985.if.end1128_crit_edge:                  ; preds = %if.then985
  %.pre2094 = load i8, ptr %new_dst, align 1, !range !12
  br label %if.end1128

if.else990:                                       ; preds = %lor.lhs.false977
  %234 = add nsw i32 %and779, -4096
  %235 = lshr exact i32 %234, 12
  switch i32 %235, label %if.else1119 [
    i32 0, label %if.then994
    i32 5, label %if.then1027
    i32 1, label %if.then1027
    i32 11, label %if.then1027
    i32 9, label %if.then1046
  ]

if.then994:                                       ; preds = %if.else990
  %not996 = xor i32 %and785, -1
  %and997 = and i32 %src_mode.1, %not996
  %call998 = call i32 @mknodat(i32 noundef %dst_dirfd, ptr noundef nonnull %dst_relname, i32 noundef %and997, i64 noundef 0) #23
  %cmp999.not = icmp eq i32 %call998, 0
  br i1 %cmp999.not, label %if.end1128, label %if.then1001

if.then1001:                                      ; preds = %if.then994
  %and1002 = and i32 %and997, -61441
  %call1003 = call i32 @mkfifoat(i32 noundef %dst_dirfd, ptr noundef nonnull %dst_relname, i32 noundef %and1002) #23
  %cmp1004.not = icmp eq i32 %call1003, 0
  br i1 %cmp1004.not, label %if.end1128, label %cleanup1012

cleanup1012:                                      ; preds = %if.then1001
  %call1007 = tail call ptr @__errno_location() #24
  %236 = load i32, ptr %call1007, align 4, !tbaa !18
  %call1008 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.45, i32 noundef 5) #23
  %call1009 = call ptr @quotearg_style(i32 noundef 4, ptr noundef %dst_name) #23
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %236, ptr noundef %call1008, ptr noundef %call1009) #25
  br label %un_backup

if.then1027:                                      ; preds = %if.else990, %if.else990, %if.else990
  %not1029 = xor i32 %and785, -1
  %and1030 = and i32 %src_mode.1, %not1029
  %st_rdev = getelementptr inbounds %struct.stat, ptr %src_sb, i64 0, i32 7
  %237 = load i64, ptr %st_rdev, align 8, !tbaa !71
  %call1031 = call i32 @mknodat(i32 noundef %dst_dirfd, ptr noundef nonnull %dst_relname, i32 noundef %and1030, i64 noundef %237) #23
  %cmp1032.not = icmp eq i32 %call1031, 0
  br i1 %cmp1032.not, label %if.end1128, label %cleanup1039

cleanup1039:                                      ; preds = %if.then1027
  %call1035 = tail call ptr @__errno_location() #24
  %238 = load i32, ptr %call1035, align 4, !tbaa !18
  %call1036 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.46, i32 noundef 5) #23
  %call1037 = call ptr @quotearg_style(i32 noundef 4, ptr noundef %dst_name) #23
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %238, ptr noundef %call1036, ptr noundef %call1037) #25
  br label %un_backup

if.then1046:                                      ; preds = %if.else990
  %st_size = getelementptr inbounds %struct.stat, ptr %src_sb, i64 0, i32 8
  %239 = load i64, ptr %st_size, align 8, !tbaa !72
  %call1047 = call ptr @areadlink_with_size(ptr noundef %src_name, i64 noundef %239) #23
  %cmp1048 = icmp eq ptr %call1047, null
  br i1 %cmp1048, label %if.then1050, label %if.end1054

if.then1050:                                      ; preds = %if.then1046
  %call1051 = tail call ptr @__errno_location() #24
  %240 = load i32, ptr %call1051, align 4, !tbaa !18
  %call1052 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.47, i32 noundef 5) #23
  %call1053 = call ptr @quotearg_style(i32 noundef 4, ptr noundef %src_name) #23
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %240, ptr noundef %call1052, ptr noundef %call1053) #25
  br label %un_backup

if.end1054:                                       ; preds = %if.then1046
  %unlink_dest_after_failed_open1055 = getelementptr inbounds %struct.cp_options, ptr %x, i64 0, i32 7
  %241 = load i8, ptr %unlink_dest_after_failed_open1055, align 2, !tbaa !44, !range !12, !noundef !13
  %tobool1056 = icmp ne i8 %241, 0
  %call1057 = call i32 @force_symlinkat(ptr noundef nonnull %call1047, i32 noundef %dst_dirfd, ptr noundef nonnull %dst_relname, i1 noundef zeroext %tobool1056, i32 noundef -1) #23
  %cmp1058 = icmp sgt i32 %call1057, 0
  br i1 %cmp1058, label %land.lhs.true1060, label %if.end1093

land.lhs.true1060:                                ; preds = %if.end1054
  %update1061 = getelementptr inbounds %struct.cp_options, ptr %x, i64 0, i32 32
  %242 = load i32, ptr %update1061, align 4, !tbaa !33
  %cmp1062 = icmp eq i32 %242, 1
  %tobool1065.not = icmp eq i8 %189, 0
  %or.cond1909 = and i1 %tobool1065.not, %cmp1062
  br i1 %or.cond1909, label %land.lhs.true1066, label %if.then1090

land.lhs.true1066:                                ; preds = %land.lhs.true1060
  %243 = load i32, ptr %dst_sb.sroa.gep, align 8, !tbaa !35
  %and1068 = and i32 %243, 61440
  %cmp1069 = icmp eq i32 %and1068, 40960
  br i1 %cmp1069, label %land.lhs.true1071, label %if.then1090

land.lhs.true1071:                                ; preds = %land.lhs.true1066
  %st_size1072 = getelementptr inbounds %struct.stat, ptr %dst_sb, i64 0, i32 8
  %244 = load i64, ptr %st_size1072, align 8, !tbaa !72
  %call1073 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %call1047) #27
  %cmp1074 = icmp eq i64 %244, %call1073
  br i1 %cmp1074, label %if.then1076, label %if.then1090

if.then1076:                                      ; preds = %land.lhs.true1071
  %call1078 = call ptr @areadlinkat_with_size(i32 noundef %dst_dirfd, ptr noundef nonnull %dst_relname, i64 noundef %244) #23
  %tobool1079.not = icmp eq ptr %call1078, null
  br i1 %tobool1079.not, label %if.then1090, label %if.then1080

if.then1080:                                      ; preds = %if.then1076
  %call1081 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %call1078, ptr noundef nonnull dereferenceable(1) %call1047) #27
  %cmp1082 = icmp eq i32 %call1081, 0
  call void @free(ptr noundef nonnull %call1078) #23
  br i1 %cmp1082, label %if.end1093, label %if.then1090

if.then1090:                                      ; preds = %if.then1080, %if.then1076, %land.lhs.true1071, %land.lhs.true1066, %land.lhs.true1060
  call void @free(ptr noundef nonnull %call1047) #23
  %call1091 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.48, i32 noundef 5) #23
  %call1092 = call ptr @quotearg_style(i32 noundef 4, ptr noundef %dst_name) #23
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %call1057, ptr noundef %call1091, ptr noundef %call1092) #25
  br label %un_backup

if.end1093:                                       ; preds = %if.then1080, %if.end1054
  call void @free(ptr noundef nonnull %call1047) #23
  %preserve_security_context1094 = getelementptr inbounds %struct.cp_options, ptr %x, i64 0, i32 24
  %245 = load i8, ptr %preserve_security_context1094, align 1, !tbaa !5, !range !12, !noundef !13
  %tobool1095.not = icmp eq i8 %245, 0
  br i1 %tobool1095.not, label %if.end1097, label %if.then1096

if.then1096:                                      ; preds = %if.end1093
  call fastcc void @restore_default_fscreatecon_or_die()
  br label %if.end1097

if.end1097:                                       ; preds = %if.then1096, %if.end1093
  %246 = load i8, ptr %preserve_ownership, align 1, !tbaa !61, !range !12, !noundef !13
  %tobool1099.not = icmp eq i8 %246, 0
  br i1 %tobool1099.not, label %if.end1128, label %if.then1100

if.then1100:                                      ; preds = %if.end1097
  %st_uid = getelementptr inbounds %struct.stat, ptr %src_sb, i64 0, i32 4
  %247 = load i32, ptr %st_uid, align 4, !tbaa !73
  %st_gid = getelementptr inbounds %struct.stat, ptr %src_sb, i64 0, i32 5
  %248 = load i32, ptr %st_gid, align 8, !tbaa !74
  %call.i1952 = call i32 @fchownat(i32 noundef %dst_dirfd, ptr noundef nonnull %dst_relname, i32 noundef %247, i32 noundef %248, i32 noundef 256) #23
  %cmp1102.not = icmp eq i32 %call.i1952, 0
  br i1 %cmp1102.not, label %if.end1128, label %land.lhs.true1104

land.lhs.true1104:                                ; preds = %if.then1100
  %call.i1953 = tail call ptr @__errno_location() #24
  %249 = load i32, ptr %call.i1953, align 4, !tbaa !18
  switch i32 %249, label %if.then1106 [
    i32 1, label %chown_failure_ok.exit
    i32 22, label %chown_failure_ok.exit
    i32 13, label %chown_failure_ok.exit
  ]

chown_failure_ok.exit:                            ; preds = %land.lhs.true1104, %land.lhs.true1104, %land.lhs.true1104
  %chown_privileges.i = getelementptr inbounds %struct.cp_options, ptr %x, i64 0, i32 13
  %250 = load i8, ptr %chown_privileges.i, align 4, !tbaa !75, !range !12, !noundef !13
  %tobool.not.i1955 = icmp eq i8 %250, 0
  br i1 %tobool.not.i1955, label %if.end1128, label %if.then1106

if.then1106:                                      ; preds = %chown_failure_ok.exit, %land.lhs.true1104
  %call1108 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.49, i32 noundef 5) #23
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %249, ptr noundef %call1108, ptr noundef %dst_name) #25
  %require_preserve = getelementptr inbounds %struct.cp_options, ptr %x, i64 0, i32 23
  %251 = load i8, ptr %require_preserve, align 2, !tbaa !76, !range !12, !noundef !13
  %tobool1109.not = icmp eq i8 %251, 0
  br i1 %tobool1109.not, label %if.end1128, label %un_backup

if.else1119:                                      ; preds = %if.else990
  %call1120 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.50, i32 noundef 5) #23
  %call1121 = call ptr @quotearg_style(i32 noundef 4, ptr noundef %src_name) #23
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %call1120, ptr noundef %call1121) #25
  br label %un_backup

if.end1128:                                       ; preds = %if.then1106, %chown_failure_ok.exit, %if.then1100, %if.end1097, %if.then1027, %if.then1001, %if.then994, %if.then985.if.end1128_crit_edge, %lor.end963, %if.end937, %copy_dir.exit, %land.lhs.true884
  %252 = phi i8 [ %189, %lor.end963 ], [ %.pre2094, %if.then985.if.end1128_crit_edge ], [ %189, %copy_dir.exit ], [ %189, %land.lhs.true884 ], [ %189, %if.end1097 ], [ %189, %if.then1100 ], [ %189, %chown_failure_ok.exit ], [ %189, %if.then1106 ], [ %189, %if.end937 ], [ %189, %if.then1001 ], [ %189, %if.then994 ], [ %189, %if.then1027 ]
  %dest_is_symlink.0 = phi i1 [ false, %lor.end963 ], [ false, %if.then985.if.end1128_crit_edge ], [ false, %copy_dir.exit ], [ false, %land.lhs.true884 ], [ true, %if.end1097 ], [ true, %if.then1100 ], [ true, %chown_failure_ok.exit ], [ true, %if.then1106 ], [ true, %if.end937 ], [ false, %if.then1001 ], [ false, %if.then994 ], [ false, %if.then1027 ]
  %copied_as_regular.0 = phi i1 [ false, %lor.end963 ], [ true, %if.then985.if.end1128_crit_edge ], [ false, %copy_dir.exit ], [ false, %land.lhs.true884 ], [ false, %if.end1097 ], [ false, %if.then1100 ], [ false, %chown_failure_ok.exit ], [ false, %if.then1106 ], [ false, %if.end937 ], [ false, %if.then1001 ], [ false, %if.then994 ], [ false, %if.then1027 ]
  %delayed_ok.2 = phi i1 [ true, %lor.end963 ], [ true, %if.then985.if.end1128_crit_edge ], [ %retval.0.i1950, %copy_dir.exit ], [ true, %land.lhs.true884 ], [ true, %if.end1097 ], [ true, %if.then1100 ], [ true, %chown_failure_ok.exit ], [ true, %if.then1106 ], [ true, %if.end937 ], [ true, %if.then1001 ], [ true, %if.then994 ], [ true, %if.then1027 ]
  %restore_dst_mode.4 = phi i8 [ 0, %lor.end963 ], [ 0, %if.then985.if.end1128_crit_edge ], [ %restore_dst_mode.2, %copy_dir.exit ], [ %restore_dst_mode.2, %land.lhs.true884 ], [ 0, %if.end1097 ], [ 0, %if.then1100 ], [ 0, %chown_failure_ok.exit ], [ 0, %if.then1106 ], [ 0, %if.end937 ], [ 0, %if.then1001 ], [ 0, %if.then994 ], [ 0, %if.then1027 ]
  %omitted_permissions.2 = phi i32 [ %and785, %lor.end963 ], [ %and785, %if.then985.if.end1128_crit_edge ], [ %omitted_permissions.0, %copy_dir.exit ], [ %omitted_permissions.0, %land.lhs.true884 ], [ %and785, %if.end1097 ], [ %and785, %if.then1100 ], [ %and785, %chown_failure_ok.exit ], [ %and785, %if.then1106 ], [ %and785, %if.end937 ], [ %and785, %if.then1001 ], [ %and785, %if.then994 ], [ %and785, %if.then1027 ]
  %dst_mode.4 = phi i32 [ undef, %lor.end963 ], [ undef, %if.then985.if.end1128_crit_edge ], [ %dst_mode.2, %copy_dir.exit ], [ %dst_mode.2, %land.lhs.true884 ], [ undef, %if.end1097 ], [ undef, %if.then1100 ], [ undef, %chown_failure_ok.exit ], [ undef, %if.then1106 ], [ undef, %if.end937 ], [ undef, %if.then1001 ], [ undef, %if.then994 ], [ undef, %if.then1027 ]
  %tobool1129.not = icmp eq i8 %252, 0
  br i1 %tobool1129.not, label %land.lhs.true1130, label %if.end1152

land.lhs.true1130:                                ; preds = %if.end1128
  %copy_as_regular1131 = getelementptr inbounds %struct.cp_options, ptr %x, i64 0, i32 5
  %253 = load i8, ptr %copy_as_regular1131, align 4, !tbaa !41, !range !12, !noundef !13
  %tobool1132.not = icmp ne i8 %253, 0
  %brmerge1912 = or i1 %cmp780, %tobool1132.not
  br i1 %brmerge1912, label %if.end1152, label %land.lhs.true1137

land.lhs.true1137:                                ; preds = %land.lhs.true1130
  %set_security_context1138 = getelementptr inbounds %struct.cp_options, ptr %x, i64 0, i32 20
  %254 = load ptr, ptr %set_security_context1138, align 8, !tbaa !19
  %tobool1139.not = icmp eq ptr %254, null
  br i1 %tobool1139.not, label %lor.lhs.false1140, label %if.then1144

lor.lhs.false1140:                                ; preds = %land.lhs.true1137
  %preserve_security_context1141 = getelementptr inbounds %struct.cp_options, ptr %x, i64 0, i32 24
  %255 = load i8, ptr %preserve_security_context1141, align 1, !tbaa !5, !range !12, !noundef !13
  %tobool1142.not = icmp eq i8 %255, 0
  br i1 %tobool1142.not, label %if.end1152, label %if.then1144

if.then1144:                                      ; preds = %lor.lhs.false1140, %land.lhs.true1137
  %call1145 = call zeroext i1 @set_file_security_ctx(ptr noundef %dst_name, i1 noundef zeroext false, ptr noundef %x)
  br i1 %call1145, label %if.end1152, label %if.then1146

if.then1146:                                      ; preds = %if.then1144
  %require_preserve_context1147 = getelementptr inbounds %struct.cp_options, ptr %x, i64 0, i32 25
  %256 = load i8, ptr %require_preserve_context1147, align 4, !tbaa !15, !range !12, !noundef !13
  %tobool1148.not = icmp eq i8 %256, 0
  br i1 %tobool1148.not, label %if.end1152, label %un_backup

if.end1152:                                       ; preds = %if.then1146, %if.then1144, %lor.lhs.false1140, %land.lhs.true1130, %if.end1128
  br i1 %command_line_arg, label %land.lhs.true1155, label %if.end1165

land.lhs.true1155:                                ; preds = %if.end1152
  %dest_info1156 = getelementptr inbounds %struct.cp_options, ptr %x, i64 0, i32 41
  %257 = load ptr, ptr %dest_info1156, align 8, !tbaa !20
  %tobool1157.not = icmp eq ptr %257, null
  br i1 %tobool1157.not, label %if.end1165, label %if.then1158

if.then1158:                                      ; preds = %land.lhs.true1155
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %sb) #23
  %call1159 = call i32 @fstatat(i32 noundef %dst_dirfd, ptr noundef nonnull %cond, ptr noundef nonnull %sb, i32 noundef 256) #23
  %cmp1160 = icmp eq i32 %call1159, 0
  br i1 %cmp1160, label %if.then1162, label %if.end1164

if.then1162:                                      ; preds = %if.then1158
  %258 = load ptr, ptr %dest_info1156, align 8, !tbaa !20
  call void @record_file(ptr noundef %258, ptr noundef nonnull %dst_relname, ptr noundef nonnull %sb) #23
  br label %if.end1164

if.end1164:                                       ; preds = %if.then1162, %if.then1158
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %sb) #23
  br label %if.end1165

if.end1165:                                       ; preds = %if.end1164, %land.lhs.true1155, %if.end1152
  %hard_link1166 = getelementptr inbounds %struct.cp_options, ptr %x, i64 0, i32 8
  %259 = load i8, ptr %hard_link1166, align 1, !tbaa !25, !range !12, !noundef !13
  %tobool1167.not = icmp eq i8 %259, 0
  %brmerge1913 = or i1 %cmp780, %tobool1167.not
  %brmerge1913.not = xor i1 %brmerge1913, true
  %brmerge2079 = or i1 %copied_as_regular.0, %brmerge1913.not
  br i1 %brmerge2079, label %cleanup1391, label %if.end1179

if.end1179:                                       ; preds = %if.end1165
  %preserve_timestamps1180 = getelementptr inbounds %struct.cp_options, ptr %x, i64 0, i32 18
  %260 = load i8, ptr %preserve_timestamps1180, align 1, !tbaa !52, !range !12, !noundef !13
  %tobool1181.not = icmp eq i8 %260, 0
  br i1 %tobool1181.not, label %if.end1206, label %if.then1182

if.then1182:                                      ; preds = %if.end1179
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %timespec) #23
  %st_atim.i = getelementptr inbounds %struct.stat, ptr %src_sb, i64 0, i32 11
  %261 = load <2 x i64>, ptr %st_atim.i, align 8, !tbaa !77
  store <2 x i64> %261, ptr %timespec, align 16, !tbaa !77
  %arrayidx1184 = getelementptr inbounds [2 x %struct.timespec], ptr %timespec, i64 0, i64 1
  %st_mtim.i = getelementptr inbounds %struct.stat, ptr %src_sb, i64 0, i32 12
  %262 = load <2 x i64>, ptr %st_mtim.i, align 8, !tbaa !77
  store <2 x i64> %262, ptr %arrayidx1184, align 16, !tbaa !77
  %cond1189 = select i1 %dest_is_symlink.0, i32 256, i32 0
  %call1190 = call i32 @utimensat(i32 noundef %dst_dirfd, ptr noundef nonnull %cond, ptr noundef nonnull %timespec, i32 noundef %cond1189) #23
  %cmp1191.not = icmp eq i32 %call1190, 0
  br i1 %cmp1191.not, label %cleanup1202.thread, label %if.then1193

if.then1193:                                      ; preds = %if.then1182
  %call1194 = tail call ptr @__errno_location() #24
  %263 = load i32, ptr %call1194, align 4, !tbaa !18
  %call1195 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.51, i32 noundef 5) #23
  %call1196 = call ptr @quotearg_style(i32 noundef 4, ptr noundef %dst_name) #23
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %263, ptr noundef %call1195, ptr noundef %call1196) #25
  %require_preserve1197 = getelementptr inbounds %struct.cp_options, ptr %x, i64 0, i32 23
  %264 = load i8, ptr %require_preserve1197, align 2, !tbaa !76, !range !12, !noundef !13
  %tobool1198.not = icmp eq i8 %264, 0
  br i1 %tobool1198.not, label %cleanup1202.thread, label %cleanup1202

cleanup1202.thread:                               ; preds = %if.then1193, %if.then1182
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %timespec) #23
  br label %if.end1206

cleanup1202:                                      ; preds = %if.then1193
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %timespec) #23
  br label %cleanup1391

if.end1206:                                       ; preds = %cleanup1202.thread, %if.end1179
  br i1 %dest_is_symlink.0, label %cleanup1391, label %land.lhs.true1208

land.lhs.true1208:                                ; preds = %if.end1206
  %265 = load i8, ptr %preserve_ownership, align 1, !tbaa !61, !range !12, !noundef !13
  %tobool1210.not = icmp eq i8 %265, 0
  br i1 %tobool1210.not, label %if.end1245, label %land.lhs.true1212

land.lhs.true1212:                                ; preds = %land.lhs.true1208
  br i1 %tobool1129.not, label %lor.lhs.false1215, label %if.then1225

lor.lhs.false1215:                                ; preds = %land.lhs.true1212
  %st_uid1216 = getelementptr inbounds %struct.stat, ptr %src_sb, i64 0, i32 4
  %266 = load i32, ptr %st_uid1216, align 4, !tbaa !73
  %st_uid1217 = getelementptr inbounds %struct.stat, ptr %dst_sb, i64 0, i32 4
  %267 = load i32, ptr %st_uid1217, align 4, !tbaa !73
  %cmp1218 = icmp eq i32 %266, %267
  br i1 %cmp1218, label %land.lhs.true1220, label %if.then1225

land.lhs.true1220:                                ; preds = %lor.lhs.false1215
  %st_gid1221 = getelementptr inbounds %struct.stat, ptr %src_sb, i64 0, i32 5
  %268 = load i32, ptr %st_gid1221, align 8, !tbaa !74
  %st_gid1222 = getelementptr inbounds %struct.stat, ptr %dst_sb, i64 0, i32 5
  %269 = load i32, ptr %st_gid1222, align 8, !tbaa !74
  %cmp1223 = icmp eq i32 %268, %269
  br i1 %cmp1223, label %if.end1245, label %if.then1225

if.then1225:                                      ; preds = %land.lhs.true1220, %lor.lhs.false1215, %land.lhs.true1212
  %tobool1226 = icmp ne i8 %252, 0
  %dst_sb.val = load i32, ptr %dst_sb.sroa.gep, align 8
  %call1227 = call fastcc i32 @set_owner(ptr noundef %x, ptr noundef %dst_name, i32 noundef %dst_dirfd, ptr noundef nonnull %cond, i32 noundef -1, ptr noundef nonnull %src_sb, i1 noundef zeroext %tobool1226, i32 %dst_sb.val)
  switch i32 %call1227, label %if.end1245 [
    i32 -1, label %cleanup1391
    i32 0, label %sw.bb1229
  ]

sw.bb1229:                                        ; preds = %if.then1225
  %and1230 = and i32 %src_mode.1, -3585
  br label %if.end1245

if.end1245:                                       ; preds = %sw.bb1229, %if.then1225, %land.lhs.true1220, %land.lhs.true1208
  %src_mode.2.ph = phi i32 [ %src_mode.1, %land.lhs.true1208 ], [ %src_mode.1, %land.lhs.true1220 ], [ %and1230, %sw.bb1229 ], [ %src_mode.1, %if.then1225 ]
  %preserve_mode = getelementptr inbounds %struct.cp_options, ptr %x, i64 0, i32 17
  %270 = load i8, ptr %preserve_mode, align 8, !tbaa !78, !range !12, !noundef !13
  %tobool1246.not = icmp eq i8 %270, 0
  br i1 %tobool1246.not, label %lor.lhs.false1248, label %if.then1252

lor.lhs.false1248:                                ; preds = %if.end1245
  %271 = load i8, ptr %move_mode, align 8, !tbaa !30, !range !12, !noundef !13
  %tobool1250.not = icmp eq i8 %271, 0
  br i1 %tobool1250.not, label %if.else1262, label %if.then1252

if.then1252:                                      ; preds = %lor.lhs.false1248, %if.end1245
  %call1253 = call i32 @xcopy_acl(ptr noundef %src_name, i32 noundef -1, ptr noundef %dst_name, i32 noundef -1, i32 noundef %src_mode.2.ph) #23
  %cmp1254.not = icmp eq i32 %call1253, 0
  br i1 %cmp1254.not, label %if.end1354, label %land.lhs.true1256

land.lhs.true1256:                                ; preds = %if.then1252
  %require_preserve1257 = getelementptr inbounds %struct.cp_options, ptr %x, i64 0, i32 23
  %272 = load i8, ptr %require_preserve1257, align 2, !tbaa !76, !range !12, !noundef !13
  %tobool1258.not = icmp eq i8 %272, 0
  br i1 %tobool1258.not, label %if.end1354, label %cleanup1391

if.else1262:                                      ; preds = %lor.lhs.false1248
  %273 = load i8, ptr %set_mode, align 1, !tbaa !59, !range !12, !noundef !13
  %tobool1264.not = icmp eq i8 %273, 0
  br i1 %tobool1264.not, label %if.else1272, label %if.then1265

if.then1265:                                      ; preds = %if.else1262
  %mode1266 = getelementptr inbounds %struct.cp_options, ptr %x, i64 0, i32 4
  %274 = load i32, ptr %mode1266, align 8, !tbaa !60
  %call1267 = call i32 @xset_acl(ptr noundef %dst_name, i32 noundef -1, i32 noundef %274) #23
  %cmp1268.not = icmp eq i32 %call1267, 0
  br i1 %cmp1268.not, label %if.end1354, label %cleanup1391

if.else1272:                                      ; preds = %if.else1262
  %explicit_no_preserve_mode = getelementptr inbounds %struct.cp_options, ptr %x, i64 0, i32 19
  %275 = load i8, ptr %explicit_no_preserve_mode, align 2, !tbaa !79, !range !12, !noundef !13
  %tobool1273.not = icmp eq i8 %275, 0
  %or.cond1914 = or i1 %tobool1129.not, %tobool1273.not
  br i1 %or.cond1914, label %if.else1307, label %if.then1278

if.then1278:                                      ; preds = %if.else1272
  %and1279 = and i32 %src_mode.2.ph, 61440
  %cmp1280 = icmp eq i32 %and1279, 16384
  %cmp1284 = icmp eq i32 %and1279, 49152
  %276 = or i1 %cmp1280, %cmp1284
  %cond1287 = select i1 %276, i32 511, i32 438
  %277 = load i32, ptr %dst_sb.sroa.gep, align 8
  %and1293 = and i32 %277, 1024
  %or1294 = select i1 %cmp1280, i32 %and1293, i32 0
  %default_permissions.0 = or disjoint i32 %or1294, %cond1287
  %call1296 = call i32 @cached_umask()
  %not1297 = xor i32 %call1296, -1
  %and1298 = and i32 %default_permissions.0, %not1297
  %call1299 = call i32 @xset_acl(ptr noundef %dst_name, i32 noundef -1, i32 noundef %and1298) #23
  %cmp1300.not = icmp eq i32 %call1299, 0
  br i1 %cmp1300.not, label %if.end1354, label %cleanup1391

if.else1307:                                      ; preds = %if.else1272
  %tobool1308.not = icmp eq i32 %omitted_permissions.2, 0
  br i1 %tobool1308.not, label %if.end1335, label %if.then1309

if.then1309:                                      ; preds = %if.else1307
  %call1310 = call i32 @cached_umask()
  %not1311 = xor i32 %call1310, -1
  %and1312 = and i32 %omitted_permissions.2, %not1311
  %tobool1313.not = icmp eq i32 %and1312, 0
  br i1 %tobool1313.not, label %if.end1335, label %land.lhs.true1314

land.lhs.true1314:                                ; preds = %if.then1309
  %278 = and i8 %restore_dst_mode.4, 1
  %tobool1315.not = icmp eq i8 %278, 0
  br i1 %tobool1315.not, label %if.then1316, label %if.end1335

if.then1316:                                      ; preds = %land.lhs.true1314
  br i1 %tobool1129.not, label %if.end1327, label %land.lhs.true1319

land.lhs.true1319:                                ; preds = %if.then1316
  %call1320 = call i32 @fstatat(i32 noundef %dst_dirfd, ptr noundef nonnull %cond, ptr noundef nonnull %dst_sb, i32 noundef 256) #23
  %cmp1321.not = icmp eq i32 %call1320, 0
  br i1 %cmp1321.not, label %if.end1327, label %if.then1323

if.then1323:                                      ; preds = %land.lhs.true1319
  %call1324 = tail call ptr @__errno_location() #24
  %279 = load i32, ptr %call1324, align 4, !tbaa !18
  %call1325 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.11, i32 noundef 5) #23
  %call1326 = call ptr @quotearg_style(i32 noundef 4, ptr noundef %dst_name) #23
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %279, ptr noundef %call1325, ptr noundef %call1326) #25
  br label %cleanup1391

if.end1327:                                       ; preds = %land.lhs.true1319, %if.then1316
  %280 = load i32, ptr %dst_sb.sroa.gep, align 8, !tbaa !35
  %not1329 = xor i32 %280, -1
  %and1330 = and i32 %and1312, %not1329
  %tobool1331.not = icmp eq i32 %and1330, 0
  %spec.select1915 = select i1 %tobool1331.not, i8 %restore_dst_mode.4, i8 1
  br label %if.end1335

if.end1335:                                       ; preds = %if.end1327, %land.lhs.true1314, %if.then1309, %if.else1307
  %restore_dst_mode.5 = phi i8 [ %restore_dst_mode.4, %land.lhs.true1314 ], [ %restore_dst_mode.4, %if.then1309 ], [ %restore_dst_mode.4, %if.else1307 ], [ %spec.select1915, %if.end1327 ]
  %omitted_permissions.3 = phi i32 [ %and1312, %land.lhs.true1314 ], [ 0, %if.then1309 ], [ 0, %if.else1307 ], [ %and1312, %if.end1327 ]
  %dst_mode.5 = phi i32 [ %dst_mode.4, %land.lhs.true1314 ], [ %dst_mode.4, %if.then1309 ], [ %dst_mode.4, %if.else1307 ], [ %280, %if.end1327 ]
  %281 = and i8 %restore_dst_mode.5, 1
  %tobool1336.not = icmp eq i8 %281, 0
  br i1 %tobool1336.not, label %if.end1354, label %if.then1337

if.then1337:                                      ; preds = %if.end1335
  %or1338 = or i32 %dst_mode.5, %omitted_permissions.3
  %call.i1960 = call i32 @fchmodat(i32 noundef %dst_dirfd, ptr noundef nonnull %cond, i32 noundef %or1338, i32 noundef 256) #23
  %cmp1340.not = icmp eq i32 %call.i1960, 0
  br i1 %cmp1340.not, label %if.end1354, label %if.then1342

if.then1342:                                      ; preds = %if.then1337
  %call1343 = tail call ptr @__errno_location() #24
  %282 = load i32, ptr %call1343, align 4, !tbaa !18
  %call1344 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.52, i32 noundef 5) #23
  %call1345 = call ptr @quotearg_style(i32 noundef 4, ptr noundef %dst_name) #23
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %282, ptr noundef %call1344, ptr noundef %call1345) #25
  %require_preserve1346 = getelementptr inbounds %struct.cp_options, ptr %x, i64 0, i32 23
  %283 = load i8, ptr %require_preserve1346, align 2, !tbaa !76, !range !12, !noundef !13
  %tobool1347.not = icmp eq i8 %283, 0
  br i1 %tobool1347.not, label %if.end1354, label %cleanup1391

if.end1354:                                       ; preds = %if.then1342, %if.then1337, %if.end1335, %if.then1278, %if.then1265, %land.lhs.true1256, %if.then1252
  br label %cleanup1391

un_backup:                                        ; preds = %if.then1146, %if.else1119, %if.then1106, %if.then1090, %if.then1050, %cleanup1039, %cleanup1012, %if.then985, %lor.end963, %cleanup948, %cleanup931, %if.then873, %if.then837, %if.then823, %if.then815, %if.then795, %if.else646, %if.else637, %if.then609, %if.then240
  %dst_backup.5 = phi ptr [ %dst_backup.4, %if.then609 ], [ %dst_backup.4, %if.then1146 ], [ %dst_backup.4, %cleanup931 ], [ %dst_backup.4, %cleanup948 ], [ %dst_backup.4, %lor.end963 ], [ %dst_backup.4, %if.then985 ], [ %dst_backup.4, %cleanup1012 ], [ %dst_backup.4, %cleanup1039 ], [ %dst_backup.4, %if.else1119 ], [ %dst_backup.4, %if.else637 ], [ %dst_backup.4, %if.else646 ], [ null, %if.then240 ], [ %dst_backup.4, %if.then795 ], [ %dst_backup.4, %if.then873 ], [ %dst_backup.4, %if.then815 ], [ %dst_backup.4, %if.then823 ], [ %dst_backup.4, %if.then837 ], [ %dst_backup.4, %if.then1050 ], [ %dst_backup.4, %if.then1090 ], [ %dst_backup.4, %if.then1106 ]
  %earlier_file.6 = phi ptr [ %earlier_file.5, %if.then609 ], [ %earlier_file.520352071, %if.then1146 ], [ %earlier_file.520352071, %cleanup931 ], [ %earlier_file.520352071, %cleanup948 ], [ %earlier_file.520352071, %lor.end963 ], [ %earlier_file.520352071, %if.then985 ], [ %earlier_file.520352071, %cleanup1012 ], [ %earlier_file.520352071, %cleanup1039 ], [ %earlier_file.520352071, %if.else1119 ], [ %earlier_file.5, %if.else637 ], [ %earlier_file.5, %if.else646 ], [ %call238, %if.then240 ], [ %earlier_file.520352071, %if.then795 ], [ %earlier_file.520352071, %if.then873 ], [ %earlier_file.520352071, %if.then815 ], [ %earlier_file.520352071, %if.then823 ], [ %earlier_file.520352071, %if.then837 ], [ %earlier_file.520352071, %if.then1050 ], [ %earlier_file.520352071, %if.then1090 ], [ %earlier_file.520352071, %if.then1106 ]
  %preserve_security_context1357 = getelementptr inbounds %struct.cp_options, ptr %x, i64 0, i32 24
  %284 = load i8, ptr %preserve_security_context1357, align 1, !tbaa !5, !range !12, !noundef !13
  %tobool1358.not = icmp eq i8 %284, 0
  br i1 %tobool1358.not, label %if.end1360, label %if.then1359

if.then1359:                                      ; preds = %un_backup
  %call.i1961 = call i32 @setfscreatecon(ptr noundef null) #23
  %cmp.not.i = icmp eq i32 %call.i1961, 0
  br i1 %cmp.not.i, label %if.end1360, label %if.then.i1962

if.then.i1962:                                    ; preds = %if.then1359
  %call1.i1963 = tail call ptr @__errno_location() #24
  %285 = load i32, ptr %call1.i1963, align 4, !tbaa !18
  %call2.i1964 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.86, i32 noundef 5) #23
  call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %285, ptr noundef %call2.i1964) #25
  unreachable

if.end1360:                                       ; preds = %if.then1359, %un_backup
  %cmp1361 = icmp eq ptr %earlier_file.6, null
  br i1 %cmp1361, label %if.then1363, label %if.end1366

if.then1363:                                      ; preds = %if.end1360
  %st_ino1364 = getelementptr inbounds %struct.stat, ptr %src_sb, i64 0, i32 1
  %286 = load i64, ptr %st_ino1364, align 8, !tbaa !46
  %287 = load i64, ptr %src_sb, align 8, !tbaa !45
  call void @forget_created(i64 noundef %286, i64 noundef %287) #23
  br label %if.end1366

if.end1366:                                       ; preds = %if.then1363, %if.end1360
  %tobool1367.not = icmp eq ptr %dst_backup.5, null
  br i1 %tobool1367.not, label %cleanup1391, label %if.then1368

if.then1368:                                      ; preds = %if.end1366
  %sub.ptr.lhs.cast1369 = ptrtoint ptr %dst_relname to i64
  %sub.ptr.rhs.cast1370 = ptrtoint ptr %dst_name to i64
  %sub.ptr.sub1371 = sub i64 %sub.ptr.lhs.cast1369, %sub.ptr.rhs.cast1370
  %arrayidx1372 = getelementptr inbounds i8, ptr %dst_backup.5, i64 %sub.ptr.sub1371
  %call1373 = call i32 @renameat(i32 noundef %dst_dirfd, ptr noundef nonnull %arrayidx1372, i32 noundef %dst_dirfd, ptr noundef nonnull %cond) #23
  %cmp1374.not = icmp eq i32 %call1373, 0
  br i1 %cmp1374.not, label %if.else1380, label %if.then1376

if.then1376:                                      ; preds = %if.then1368
  %call1377 = tail call ptr @__errno_location() #24
  %288 = load i32, ptr %call1377, align 4, !tbaa !18
  %call1378 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.53, i32 noundef 5) #23
  %call1379 = call ptr @quotearg_style(i32 noundef 4, ptr noundef %dst_name) #23
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %288, ptr noundef %call1378, ptr noundef %call1379) #25
  br label %cleanup1391

if.else1380:                                      ; preds = %if.then1368
  %verbose1381 = getelementptr inbounds %struct.cp_options, ptr %x, i64 0, i32 33
  %289 = load i8, ptr %verbose1381, align 8, !tbaa !53, !range !12, !noundef !13
  %tobool1382.not = icmp eq i8 %289, 0
  br i1 %tobool1382.not, label %cleanup1391, label %if.then1383

if.then1383:                                      ; preds = %if.else1380
  %call1384 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.54, i32 noundef 5) #23
  %call1385 = call ptr @quotearg_n_style(i32 noundef 0, i32 noundef 4, ptr noundef nonnull %dst_backup.5) #23
  %call1386 = call ptr @quotearg_n_style(i32 noundef 1, i32 noundef 4, ptr noundef %dst_name) #23
  %call1387 = call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %call1384, ptr noundef %call1385, ptr noundef %call1386) #23
  br label %cleanup1391

cleanup1391:                                      ; preds = %if.then1383, %if.else1380, %if.then1376, %if.end1366, %if.end1354, %if.then1342, %if.then1323, %if.then1278, %if.then1265, %land.lhs.true1256, %if.then1225, %if.end1206, %cleanup1202, %if.end1165, %cond.end772, %if.then749, %if.end733, %if.then708, %if.then702, %land.lhs.true699, %if.end696, %if.else646, %if.then623, %if.then615, %cleanup517, %if.then455, %cleanup414, %if.then382, %if.then355, %if.then329, %if.end305, %if.then299, %if.else297, %if.then294, %if.then206, %cleanup190
  %retval.13 = phi i1 [ true, %if.then708 ], [ false, %if.end733 ], [ false, %if.then749 ], [ %delayed_ok.2, %if.end1354 ], [ false, %if.then1278 ], [ false, %if.then1323 ], [ false, %cleanup1202 ], [ false, %cleanup517 ], [ false, %cleanup190 ], [ true, %if.then623 ], [ true, %if.then615 ], [ true, %if.else646 ], [ true, %if.then702 ], [ true, %land.lhs.true699 ], [ true, %if.end696 ], [ false, %cond.end772 ], [ false, %if.then1225 ], [ false, %land.lhs.true1256 ], [ false, %if.then1265 ], [ false, %if.then1342 ], [ false, %if.then1376 ], [ false, %if.then1383 ], [ false, %if.else1380 ], [ false, %if.end1366 ], [ false, %cleanup414 ], [ true, %if.end305 ], [ false, %if.then206 ], [ false, %if.then329 ], [ false, %if.then355 ], [ false, %if.then382 ], [ false, %if.then455 ], [ %return_val.0.shrunk, %if.else297 ], [ %return_val.0.shrunk, %if.then299 ], [ %return_val.0.shrunk, %if.then294 ], [ %delayed_ok.2, %if.end1165 ], [ %delayed_ok.2, %if.end1206 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %new_dst) #23
  br label %cleanup1393

cleanup1393:                                      ; preds = %cleanup1391, %if.then94, %if.then65, %if.then56
  %retval.14 = phi i1 [ %retval.13, %cleanup1391 ], [ true, %if.then94 ], [ false, %if.then65 ], [ false, %if.then56 ]
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %dst_sb) #23
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %src_sb) #23
  ret i1 %retval.14
}

declare i32 @renameatu(i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @fstatat(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

declare zeroext i1 @seen_file(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @record_file(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare zeroext i1 @same_nameat(i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @lstat(ptr nocapture noundef readonly, ptr nocapture noundef) local_unnamed_addr #9

; Function Attrs: nounwind
declare noalias ptr @canonicalize_file_name(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #10

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #11

; Function Attrs: nofree nounwind
declare noundef i32 @stat(ptr nocapture noundef readonly, ptr nocapture noundef) local_unnamed_addr #9

declare i32 @utimecmpat(i32 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @remember_copied(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc noundef zeroext i1 @create_hard_link(ptr noundef %src_name, i32 noundef %src_dirfd, ptr noundef %src_relname, ptr noundef %dst_name, i32 noundef %dst_dirfd, ptr noundef %dst_relname, i1 noundef zeroext %replace, i1 noundef zeroext %verbose, i1 noundef zeroext %dereference) unnamed_addr #0 {
entry:
  %cond = select i1 %dereference, i32 1024, i32 0
  %call = tail call i32 @force_linkat(i32 noundef %src_dirfd, ptr noundef %src_relname, i32 noundef %dst_dirfd, ptr noundef %dst_relname, i32 noundef %cond, i1 noundef zeroext %replace, i32 noundef -1) #23
  %cmp = icmp slt i32 %call, 1
  br i1 %cmp, label %if.end10, label %if.then

if.then:                                          ; preds = %entry
  %tobool4.not = icmp eq ptr %src_name, null
  br i1 %tobool4.not, label %if.then5, label %if.end

if.then5:                                         ; preds = %if.then
  %sub.ptr.lhs.cast.i = ptrtoint ptr %dst_relname to i64
  %sub.ptr.rhs.cast.i = ptrtoint ptr %dst_name to i64
  %sub.ptr.sub.i = sub i64 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %call.i = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %src_relname) #27
  %add.i = add i64 %call.i, 1
  %add1.i = add nsw i64 %add.i, %sub.ptr.sub.i
  %call2.i = tail call noalias nonnull ptr @ximalloc(i64 noundef %add1.i) #28
  %add.ptr.i = getelementptr inbounds i8, ptr %call2.i, i64 %sub.ptr.sub.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %add.ptr.i, ptr noundef nonnull align 1 %src_relname, i64 noundef %add.i, i1 noundef false) #23
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %call2.i, ptr noundef nonnull align 1 %dst_name, i64 noundef %sub.ptr.sub.i, i1 noundef false) #23
  br label %if.end

if.end:                                           ; preds = %if.then5, %if.then
  %src_name.addr.0 = phi ptr [ %src_name, %if.then ], [ %call2.i, %if.then5 ]
  %a_src_name.0 = phi ptr [ null, %if.then ], [ %call2.i, %if.then5 ]
  %call7 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.55, i32 noundef 5) #23
  %call8 = tail call ptr @quotearg_n_style(i32 noundef 0, i32 noundef 4, ptr noundef %dst_name) #23
  %call9 = tail call ptr @quotearg_n_style(i32 noundef 1, i32 noundef 4, ptr noundef nonnull %src_name.addr.0) #23
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %call, ptr noundef %call7, ptr noundef %call8, ptr noundef %call9) #25
  tail call void @free(ptr noundef %a_src_name.0) #23
  br label %cleanup

if.end10:                                         ; preds = %entry
  %cmp11.not25 = icmp ne i32 %call, 0
  %brmerge.not = and i1 %cmp11.not25, %verbose
  br i1 %brmerge.not, label %if.then13, label %cleanup

if.then13:                                        ; preds = %if.end10
  %call14 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.25, i32 noundef 5) #23
  %call15 = tail call ptr @quotearg_style(i32 noundef 4, ptr noundef %dst_name) #23
  %call16 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %call14, ptr noundef %call15) #23
  br label %cleanup

cleanup:                                          ; preds = %if.then13, %if.end10, %if.end
  ret i1 %cmp
}

declare zeroext i1 @can_write_any_file() local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @faccessat(i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i1 @overwrite_ok(ptr nocapture noundef readonly %x, ptr noundef %dst_name, i32 noundef %dst_dirfd, ptr noundef %dst_relname, ptr nocapture noundef readonly %dst_sb) unnamed_addr #0 {
entry:
  %perms = alloca [12 x i8], align 1
  %st_mode = getelementptr inbounds %struct.stat, ptr %dst_sb, i64 0, i32 3
  %0 = load i32, ptr %st_mode, align 8, !tbaa !35
  %and.i = and i32 %0, 61440
  %cmp.i = icmp eq i32 %and.i, 40960
  br i1 %cmp.i, label %if.else, label %lor.lhs.false.i

lor.lhs.false.i:                                  ; preds = %entry
  %call.i = tail call zeroext i1 @can_write_any_file() #23
  br i1 %call.i, label %if.else, label %writable_destination.exit

writable_destination.exit:                        ; preds = %lor.lhs.false.i
  %call1.i = tail call i32 @faccessat(i32 noundef %dst_dirfd, ptr noundef %dst_relname, i32 noundef 2, i32 noundef 512) #23
  %cmp2.i = icmp eq i32 %call1.i, 0
  br i1 %cmp2.i, label %if.else, label %if.then

if.then:                                          ; preds = %writable_destination.exit
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %perms) #23
  %1 = load i32, ptr %st_mode, align 8, !tbaa !35
  call void @strmode(i32 noundef %1, ptr noundef nonnull %perms) #23
  %arrayidx = getelementptr inbounds [12 x i8], ptr %perms, i64 0, i64 10
  store i8 0, ptr %arrayidx, align 1, !tbaa !28
  %2 = load ptr, ptr @stderr, align 8, !tbaa !17
  %move_mode = getelementptr inbounds %struct.cp_options, ptr %x, i64 0, i32 9
  %3 = load i8, ptr %move_mode, align 8, !tbaa !30, !range !12, !noundef !13
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %lor.lhs.false, label %cond.end

lor.lhs.false:                                    ; preds = %if.then
  %unlink_dest_before_opening = getelementptr inbounds %struct.cp_options, ptr %x, i64 0, i32 6
  %4 = load i8, ptr %unlink_dest_before_opening, align 1, !tbaa !43, !range !12, !noundef !13
  %tobool2.not = icmp eq i8 %4, 0
  br i1 %tobool2.not, label %lor.lhs.false3, label %cond.end

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %unlink_dest_after_failed_open = getelementptr inbounds %struct.cp_options, ptr %x, i64 0, i32 7
  %5 = load i8, ptr %unlink_dest_after_failed_open, align 2, !tbaa !44, !range !12, !noundef !13
  %tobool4.not = icmp eq i8 %5, 0
  %spec.select = select i1 %tobool4.not, ptr @.str.58, ptr @.str.57
  br label %cond.end

cond.end:                                         ; preds = %lor.lhs.false3, %lor.lhs.false, %if.then
  %.str.58.sink = phi ptr [ @.str.57, %lor.lhs.false ], [ @.str.57, %if.then ], [ %spec.select, %lor.lhs.false3 ]
  %call6 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull %.str.58.sink, i32 noundef 5) #23
  %6 = load ptr, ptr @program_name, align 8, !tbaa !17
  %call7 = call ptr @quotearg_style(i32 noundef 4, ptr noundef %dst_name) #23
  %7 = load i32, ptr %st_mode, align 8, !tbaa !35
  %and = and i32 %7, 4095
  %conv = zext nneg i32 %and to i64
  %arrayidx9 = getelementptr inbounds [12 x i8], ptr %perms, i64 0, i64 1
  %call10 = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %2, i32 noundef 1, ptr noundef %call6, ptr noundef %6, ptr noundef %call7, i64 noundef %conv, ptr noundef nonnull %arrayidx9) #23
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %perms) #23
  br label %if.end

if.else:                                          ; preds = %writable_destination.exit, %lor.lhs.false.i, %entry
  %8 = load ptr, ptr @stderr, align 8, !tbaa !17
  %call11 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.59, i32 noundef 5) #23
  %9 = load ptr, ptr @program_name, align 8, !tbaa !17
  %call12 = tail call ptr @quotearg_style(i32 noundef 4, ptr noundef %dst_name) #23
  %call13 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %8, i32 noundef 1, ptr noundef %call11, ptr noundef %9, ptr noundef %call12) #23
  br label %if.end

if.end:                                           ; preds = %if.else, %cond.end
  %call14 = call zeroext i1 @yesno() #23
  ret i1 %call14
}

declare i32 @__printf_chk(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare ptr @last_component(ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i1 @source_is_dst_backup(ptr nocapture noundef readonly %srcbase, ptr nocapture noundef readonly %src_st, i32 noundef %dst_dirfd, ptr noundef readonly %dst_relname) unnamed_addr #0 {
entry:
  %dst_back_sb = alloca %struct.stat, align 8
  %call = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %srcbase) #27
  %call1 = tail call ptr @last_component(ptr noundef %dst_relname) #27
  %call2 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %call1) #27
  %0 = load ptr, ptr @simple_backup_suffix, align 8, !tbaa !17
  %call3 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #27
  %add = add i64 %call3, %call2
  %cmp = icmp eq i64 %call, %add
  br i1 %cmp, label %land.lhs.true, label %cleanup

land.lhs.true:                                    ; preds = %entry
  %bcmp = tail call i32 @bcmp(ptr %srcbase, ptr %call1, i64 %call2)
  %cmp5 = icmp eq i32 %bcmp, 0
  br i1 %cmp5, label %land.lhs.true6, label %cleanup

land.lhs.true6:                                   ; preds = %land.lhs.true
  %add.ptr = getelementptr inbounds i8, ptr %srcbase, i64 %call2
  %call7 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %add.ptr, ptr noundef nonnull dereferenceable(1) %0) #27
  %cmp8 = icmp eq i32 %call7, 0
  br i1 %cmp8, label %if.end, label %cleanup

if.end:                                           ; preds = %land.lhs.true6
  %call9 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %dst_relname) #27
  %add.i = add i64 %call3, 1
  %add1.i = add nsw i64 %call9, %add.i
  %call2.i = tail call noalias nonnull ptr @ximalloc(i64 noundef %add1.i) #28
  %add.ptr.i = getelementptr inbounds i8, ptr %call2.i, i64 %call9
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %add.ptr.i, ptr noundef nonnull align 1 %0, i64 noundef %add.i, i1 noundef false) #23
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %call2.i, ptr noundef nonnull align 1 %dst_relname, i64 noundef %call9, i1 noundef false) #23
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %dst_back_sb) #23
  %call12 = call i32 @fstatat(i32 noundef %dst_dirfd, ptr noundef nonnull %call2.i, ptr noundef nonnull %dst_back_sb, i32 noundef 0) #23
  call void @free(ptr noundef %call2.i) #23
  %cmp13 = icmp eq i32 %call12, 0
  br i1 %cmp13, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %if.end
  %1 = load i64, ptr %src_st, align 8, !tbaa !45
  %2 = load i64, ptr %dst_back_sb, align 8, !tbaa !45
  %3 = icmp eq i64 %1, %2
  %st_ino.i = getelementptr inbounds %struct.stat, ptr %src_st, i64 0, i32 1
  %4 = load i64, ptr %st_ino.i, align 8, !tbaa !46
  %st_ino8.i = getelementptr inbounds %struct.stat, ptr %dst_back_sb, i64 0, i32 1
  %5 = load i64, ptr %st_ino8.i, align 8, !tbaa !46
  %6 = icmp eq i64 %4, %5
  %tobool11.not.i = and i1 %3, %6
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.end
  %7 = phi i1 [ false, %if.end ], [ %tobool11.not.i, %land.rhs ]
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %dst_back_sb) #23
  br label %cleanup

cleanup:                                          ; preds = %land.end, %land.lhs.true6, %land.lhs.true, %entry
  %retval.0 = phi i1 [ %7, %land.end ], [ false, %land.lhs.true6 ], [ false, %land.lhs.true ], [ false, %entry ]
  ret i1 %retval.0
}

declare noalias ptr @backup_file_rename(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #12

; Function Attrs: nounwind
declare i32 @unlinkat(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal fastcc void @emit_verbose(ptr noundef %format, ptr noundef %src, ptr noundef %dst, ptr noundef %backup_dst_name) unnamed_addr #0 {
entry:
  %call = tail call ptr @quotearg_n_style(i32 noundef 0, i32 noundef 4, ptr noundef %src) #23
  %call1 = tail call ptr @quotearg_n_style(i32 noundef 1, i32 noundef 4, ptr noundef %dst) #23
  %call2 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %format, ptr noundef %call, ptr noundef %call1) #23
  %tobool.not = icmp eq ptr %backup_dst_name, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call3 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.60, i32 noundef 5) #23
  %call4 = tail call ptr @quotearg_style(i32 noundef 4, ptr noundef nonnull %backup_dst_name) #23
  %call5 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %call3, ptr noundef %call4) #23
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %0 = load ptr, ptr @stdout, align 8, !tbaa !17
  %_IO_write_ptr.i = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 5
  %1 = load ptr, ptr %_IO_write_ptr.i, align 8, !tbaa !80
  %_IO_write_end.i = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 6
  %2 = load ptr, ptr %_IO_write_end.i, align 8, !tbaa !83
  %cmp.not.i = icmp ult ptr %1, %2
  br i1 %cmp.not.i, label %cond.false.i, label %cond.true.i, !prof !84

cond.true.i:                                      ; preds = %if.end
  %call.i = tail call i32 @__overflow(ptr noundef nonnull %0, i32 noundef 10) #23
  br label %putchar_unlocked.exit

cond.false.i:                                     ; preds = %if.end
  %incdec.ptr.i = getelementptr inbounds i8, ptr %1, i64 1
  store ptr %incdec.ptr.i, ptr %_IO_write_ptr.i, align 8, !tbaa !80
  store i8 10, ptr %1, align 1, !tbaa !28
  br label %putchar_unlocked.exit

putchar_unlocked.exit:                            ; preds = %cond.false.i, %cond.true.i
  ret void
}

declare ptr @src_to_dest_lookup(i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc ptr @subst_suffix(ptr noundef %str, ptr noundef %suffix, ptr nocapture noundef readonly %newsuffix) unnamed_addr #0 {
entry:
  %sub.ptr.lhs.cast = ptrtoint ptr %suffix to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %str to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %call = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %newsuffix) #27
  %add = add i64 %call, 1
  %add1 = add nsw i64 %add, %sub.ptr.sub
  %call2 = tail call noalias nonnull ptr @ximalloc(i64 noundef %add1) #28
  %add.ptr = getelementptr inbounds i8, ptr %call2, i64 %sub.ptr.sub
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %add.ptr, ptr noundef nonnull align 1 %newsuffix, i64 noundef %add, i1 noundef false) #23
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %call2, ptr noundef nonnull align 1 %str, i64 noundef %sub.ptr.sub, i1 noundef false) #23
  ret ptr %call2
}

declare void @forget_created(i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @mkdirat(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare i32 @fchmodat(i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

declare noalias ptr @savedir(ptr noundef, i32 noundef) local_unnamed_addr #2

declare noalias nonnull ptr @file_name_concat(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare noalias nonnull ptr @dir_name(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #12

declare ptr @quotearg_n_style_colon(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @force_symlinkat(ptr noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i1 @copy_reg(ptr noundef %src_name, ptr noundef %dst_name, i32 noundef %dst_dirfd, ptr noundef %dst_relname, ptr nocapture noundef readonly %x, i32 noundef %dst_mode, i32 noundef %omitted_permissions, ptr nocapture noundef %new_dst, ptr nocapture noundef %src_sb) unnamed_addr #0 {
entry:
  %n_read.i = alloca i64, align 8
  %read_hole.i = alloca i8, align 1
  %buf = alloca ptr, align 8
  %sb = alloca %struct.stat, align 8
  %src_open_sb = alloca %struct.stat, align 8
  %dummy = alloca [1 x i8], align 1
  %n_read = alloca i64, align 8
  %wrote_hole_at_eof = alloca i8, align 1
  %timespec = alloca [2 x %struct.timespec], align 16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %buf) #23
  store ptr null, ptr %buf, align 8, !tbaa !17
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %sb) #23
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %src_open_sb) #23
  %data_copy_required1 = getelementptr inbounds %struct.cp_options, ptr %x, i64 0, i32 22
  %0 = load i8, ptr %data_copy_required1, align 1, !tbaa !14, !range !12, !noundef !13
  %tobool.not = icmp eq i8 %0, 0
  store i32 0, ptr @copy_debug.0, align 4, !tbaa !85
  %reflink_mode = getelementptr inbounds %struct.cp_options, ptr %x, i64 0, i32 40
  %1 = load i32, ptr %reflink_mode, align 4, !tbaa !24
  %tobool6.not = icmp eq i32 %1, 0
  %cond = zext i1 %tobool6.not to i32
  store i32 %cond, ptr @copy_debug.1, align 4, !tbaa !87
  store i32 0, ptr @copy_debug.2, align 4, !tbaa !88
  %dereference = getelementptr inbounds %struct.cp_options, ptr %x, i64 0, i32 1
  %2 = load i32, ptr %dereference, align 4, !tbaa !34
  %cmp = icmp eq i32 %2, 2
  %cond8 = select i1 %cmp, i32 131072, i32 0
  %call = tail call i32 (ptr, i32, ...) @open_safer(ptr noundef %src_name, i32 noundef %cond8) #23
  %cmp9 = icmp slt i32 %call, 0
  br i1 %cmp9, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call11 = tail call ptr @__errno_location() #24
  %3 = load i32, ptr %call11, align 4, !tbaa !18
  %call12 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.62, i32 noundef 5) #23
  %call13 = tail call ptr @quotearg_style(i32 noundef 4, ptr noundef %src_name) #23
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %3, ptr noundef %call12, ptr noundef %call13) #25
  br label %cleanup461

if.end:                                           ; preds = %entry
  %call14 = call i32 @fstat(i32 noundef %call, ptr noundef nonnull %src_open_sb) #23
  %cmp15.not = icmp eq i32 %call14, 0
  br i1 %cmp15.not, label %if.end21, label %if.then17

if.then17:                                        ; preds = %if.end
  %call18 = tail call ptr @__errno_location() #24
  %4 = load i32, ptr %call18, align 4, !tbaa !18
  %call19 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.63, i32 noundef 5) #23
  %call20 = tail call ptr @quotearg_style(i32 noundef 4, ptr noundef %src_name) #23
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %4, ptr noundef %call19, ptr noundef %call20) #25
  br label %close_src_desc

if.end21:                                         ; preds = %if.end
  %5 = load i64, ptr %src_sb, align 8, !tbaa !45
  %6 = load i64, ptr %src_open_sb, align 8, !tbaa !45
  %7 = icmp eq i64 %5, %6
  %st_ino.i = getelementptr inbounds %struct.stat, ptr %src_sb, i64 0, i32 1
  %8 = load i64, ptr %st_ino.i, align 8, !tbaa !46
  %st_ino8.i = getelementptr inbounds %struct.stat, ptr %src_open_sb, i64 0, i32 1
  %9 = load i64, ptr %st_ino8.i, align 8, !tbaa !46
  %10 = icmp eq i64 %8, %9
  %tobool11.not.i = and i1 %7, %10
  br i1 %tobool11.not.i, label %if.end26, label %if.then23

if.then23:                                        ; preds = %if.end21
  %call24 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.64, i32 noundef 5) #23
  %call25 = tail call ptr @quotearg_style(i32 noundef 4, ptr noundef %src_name) #23
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %call24, ptr noundef %call25) #25
  br label %close_src_desc

if.end26:                                         ; preds = %if.end21
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %src_sb, ptr noundef nonnull align 8 dereferenceable(144) %src_open_sb, i64 144, i1 false), !tbaa !48, !tbaa.struct !49
  %st_mode = getelementptr inbounds %struct.stat, ptr %src_sb, i64 0, i32 3
  %11 = load i32, ptr %st_mode, align 8, !tbaa !35
  %12 = load i8, ptr %new_dst, align 1, !tbaa !27, !range !12, !noundef !13
  %tobool27.not = icmp eq i8 %12, 0
  br i1 %tobool27.not, label %if.then28, label %land.end

if.then28:                                        ; preds = %if.end26
  %or32 = select i1 %tobool.not, i32 1, i32 513
  %call33 = tail call i32 (i32, ptr, i32, ...) @openat_safer(i32 noundef %dst_dirfd, ptr noundef %dst_relname, i32 noundef %or32) #23
  %call34 = tail call ptr @__errno_location() #24
  %13 = load i32, ptr %call34, align 4, !tbaa !18
  %cmp35 = icmp slt i32 %call33, 0
  br i1 %cmp35, label %if.end47, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.then28
  %set_security_context = getelementptr inbounds %struct.cp_options, ptr %x, i64 0, i32 20
  %14 = load ptr, ptr %set_security_context, align 8, !tbaa !19
  %tobool37.not = icmp eq ptr %14, null
  br i1 %tobool37.not, label %lor.lhs.false, label %if.then40

lor.lhs.false:                                    ; preds = %land.lhs.true
  %preserve_security_context = getelementptr inbounds %struct.cp_options, ptr %x, i64 0, i32 24
  %15 = load i8, ptr %preserve_security_context, align 1, !tbaa !5, !range !12, !noundef !13
  %tobool38.not = icmp eq i8 %15, 0
  br i1 %tobool38.not, label %if.end91, label %if.then40

if.then40:                                        ; preds = %lor.lhs.false, %land.lhs.true
  %call41 = tail call zeroext i1 @set_file_security_ctx(ptr noundef %dst_name, i1 noundef zeroext false, ptr noundef %x)
  br i1 %call41, label %if.end91, label %if.then42

if.then42:                                        ; preds = %if.then40
  %require_preserve_context = getelementptr inbounds %struct.cp_options, ptr %x, i64 0, i32 25
  %16 = load i8, ptr %require_preserve_context, align 4, !tbaa !15, !range !12, !noundef !13
  %tobool43.not = icmp eq i8 %16, 0
  br i1 %tobool43.not, label %if.end91, label %close_src_and_dst_desc

if.end47:                                         ; preds = %if.then28
  %cmp51.not = icmp eq i32 %13, 2
  br i1 %cmp51.not, label %if.then82, label %land.lhs.true53

land.lhs.true53:                                  ; preds = %if.end47
  %unlink_dest_after_failed_open = getelementptr inbounds %struct.cp_options, ptr %x, i64 0, i32 7
  %17 = load i8, ptr %unlink_dest_after_failed_open, align 2, !tbaa !44, !range !12, !noundef !13
  %tobool54.not = icmp eq i8 %17, 0
  br i1 %tobool54.not, label %if.end91, label %if.then56

if.then56:                                        ; preds = %land.lhs.true53
  %call57 = tail call i32 @unlinkat(i32 noundef %dst_dirfd, ptr noundef %dst_relname, i32 noundef 0) #23
  %cmp58 = icmp eq i32 %call57, 0
  br i1 %cmp58, label %if.then60, label %if.else

if.then60:                                        ; preds = %if.then56
  %verbose = getelementptr inbounds %struct.cp_options, ptr %x, i64 0, i32 33
  %18 = load i8, ptr %verbose, align 8, !tbaa !53, !range !12, !noundef !13
  %tobool61.not = icmp eq i8 %18, 0
  br i1 %tobool61.not, label %if.then82, label %if.then62

if.then62:                                        ; preds = %if.then60
  %call63 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.25, i32 noundef 5) #23
  %call64 = tail call ptr @quotearg_style(i32 noundef 4, ptr noundef %dst_name) #23
  %call65 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %call63, ptr noundef %call64) #23
  br label %if.then82

if.else:                                          ; preds = %if.then56
  %19 = load i32, ptr %call34, align 4, !tbaa !18
  %cmp68.not = icmp eq i32 %19, 2
  br i1 %cmp68.not, label %if.then82, label %if.then70

if.then70:                                        ; preds = %if.else
  %call72 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.24, i32 noundef 5) #23
  %call73 = tail call ptr @quotearg_style(i32 noundef 4, ptr noundef %dst_name) #23
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %19, ptr noundef %call72, ptr noundef %call73) #25
  br label %close_src_desc

if.then82:                                        ; preds = %if.else, %if.then62, %if.then60, %if.end47
  %set_security_context83 = getelementptr inbounds %struct.cp_options, ptr %x, i64 0, i32 20
  %20 = load ptr, ptr %set_security_context83, align 8, !tbaa !19
  %tobool84.not = icmp eq ptr %20, null
  br i1 %tobool84.not, label %if.end91.thread722, label %if.then85

if.then85:                                        ; preds = %if.then82
  %call86 = tail call zeroext i1 @set_process_security_ctx(ptr noundef %src_name, ptr noundef %dst_name, i32 noundef %dst_mode, i1 noundef zeroext true, ptr noundef %x)
  br i1 %call86, label %if.end91.thread722, label %close_src_desc

if.end91.thread722:                               ; preds = %if.then85, %if.then82
  store i8 1, ptr %new_dst, align 1, !tbaa !27
  br label %land.end

if.end91:                                         ; preds = %land.lhs.true53, %if.then42, %if.then40, %lor.lhs.false
  %.pr.pr = load i8, ptr %new_dst, align 1, !tbaa !27
  %tobool92.not = icmp eq i8 %.pr.pr, 0
  br i1 %tobool92.not, label %if.end151, label %land.end

land.end:                                         ; preds = %if.end91, %if.end91.thread722, %if.end26
  %not = xor i32 %omitted_permissions, -1
  %and94 = and i32 %not, %dst_mode
  %call104 = tail call i32 (i32, ptr, i32, ...) @openat_safer(i32 noundef %dst_dirfd, ptr noundef %dst_relname, i32 noundef 193, i32 noundef %and94) #23
  %call105 = tail call ptr @__errno_location() #24
  %21 = load i32, ptr %call105, align 4, !tbaa !18
  %cmp106 = icmp slt i32 %call104, 0
  %cmp109 = icmp eq i32 %21, 17
  %or.cond474 = select i1 %cmp106, i1 %cmp109, i1 false
  br i1 %or.cond474, label %land.lhs.true111, label %if.end130

land.lhs.true111:                                 ; preds = %land.end
  %move_mode = getelementptr inbounds %struct.cp_options, ptr %x, i64 0, i32 9
  %22 = load i8, ptr %move_mode, align 8, !tbaa !30, !range !12, !noundef !13
  %tobool112.not = icmp eq i8 %22, 0
  br i1 %tobool112.not, label %if.then113, label %if.then154

if.then113:                                       ; preds = %land.lhs.true111
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %dummy) #23
  %call114 = call i64 @readlinkat(i32 noundef %dst_dirfd, ptr noundef %dst_relname, ptr noundef nonnull %dummy, i64 noundef 1) #23
  %cmp115 = icmp sgt i64 %call114, -1
  br i1 %cmp115, label %if.then117, label %cleanup127.thread

if.then117:                                       ; preds = %if.then113
  %open_dangling_dest_symlink = getelementptr inbounds %struct.cp_options, ptr %x, i64 0, i32 37
  %23 = load i8, ptr %open_dangling_dest_symlink, align 4, !tbaa !89, !range !12, !noundef !13
  %tobool118.not = icmp eq i8 %23, 0
  br i1 %tobool118.not, label %cleanup146, label %if.then119

if.then119:                                       ; preds = %if.then117
  %call120 = call i32 (i32, ptr, i32, ...) @openat_safer(i32 noundef %dst_dirfd, ptr noundef %dst_relname, i32 noundef 65, i32 noundef %and94) #23
  %24 = load i32, ptr %call105, align 4, !tbaa !18
  br label %cleanup127.thread

cleanup127.thread:                                ; preds = %if.then119, %if.then113
  %dest_errno.4.ph = phi i32 [ 17, %if.then113 ], [ %24, %if.then119 ]
  %dest_desc.2.ph = phi i32 [ %call104, %if.then113 ], [ %call120, %if.then119 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %dummy) #23
  br label %if.end130

if.end130:                                        ; preds = %cleanup127.thread, %land.end
  %dest_errno.5 = phi i32 [ %21, %land.end ], [ %dest_errno.4.ph, %cleanup127.thread ]
  %dest_desc.3 = phi i32 [ %call104, %land.end ], [ %dest_desc.2.ph, %cleanup127.thread ]
  %cmp131 = icmp slt i32 %dest_desc.3, 0
  %cmp134 = icmp eq i32 %dest_errno.5, 21
  %or.cond475 = select i1 %cmp131, i1 %cmp134, i1 false
  br i1 %or.cond475, label %land.lhs.true136, label %if.end151

land.lhs.true136:                                 ; preds = %if.end130
  %25 = load i8, ptr %dst_name, align 1, !tbaa !28
  %tobool138.not = icmp eq i8 %25, 0
  br i1 %tobool138.not, label %if.then154, label %land.lhs.true139

land.lhs.true139:                                 ; preds = %land.lhs.true136
  %call140 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %dst_name) #27
  %26 = getelementptr i8, ptr %dst_name, i64 %call140
  %arrayidx = getelementptr i8, ptr %26, i64 -1
  %27 = load i8, ptr %arrayidx, align 1, !tbaa !28
  %cmp142 = icmp eq i8 %27, 47
  %spec.select = select i1 %cmp142, i32 20, i32 21
  br label %if.then154

cleanup146:                                       ; preds = %if.then117
  %call123 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.65, i32 noundef 5) #23
  %call124 = call ptr @quotearg_style(i32 noundef 4, ptr noundef %dst_name) #23
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %call123, ptr noundef %call124) #25
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %dummy) #23
  br label %close_src_desc

if.end151:                                        ; preds = %if.end130, %if.end91
  %dest_errno.8 = phi i32 [ %13, %if.end91 ], [ %dest_errno.5, %if.end130 ]
  %dest_desc.5 = phi i32 [ %call33, %if.end91 ], [ %dest_desc.3, %if.end130 ]
  %omitted_permissions.addr.0 = phi i32 [ 0, %if.end91 ], [ %omitted_permissions, %if.end130 ]
  %cmp152 = icmp slt i32 %dest_desc.5, 0
  br i1 %cmp152, label %if.then154, label %if.end157

if.then154:                                       ; preds = %if.end151, %land.lhs.true139, %land.lhs.true136, %land.lhs.true111
  %dest_errno.8774 = phi i32 [ %dest_errno.8, %if.end151 ], [ 17, %land.lhs.true111 ], [ 21, %land.lhs.true136 ], [ %spec.select, %land.lhs.true139 ]
  %call155 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.66, i32 noundef 5) #23
  %call156 = call ptr @quotearg_style(i32 noundef 4, ptr noundef %dst_name) #23
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %dest_errno.8774, ptr noundef %call155, ptr noundef %call156) #25
  br label %close_src_desc

if.end157:                                        ; preds = %if.end151
  br i1 %tobool.not, label %if.end175, label %land.lhs.true160

land.lhs.true160:                                 ; preds = %if.end157
  %28 = load i32, ptr %reflink_mode, align 4, !tbaa !24
  %tobool162.not = icmp eq i32 %28, 0
  br i1 %tobool162.not, label %if.end175, label %if.then163

if.then163:                                       ; preds = %land.lhs.true160
  %call.i = call i32 (i32, i64, ...) @ioctl(i32 noundef %dest_desc.5, i64 noundef 1074041865, i32 noundef %call) #23
  %cmp165 = icmp ne i32 %call.i, 0
  br i1 %cmp165, label %if.else168, label %if.end175.sink.split

if.else168:                                       ; preds = %if.then163
  %29 = load i8, ptr %new_dst, align 1, !tbaa !27, !range !12, !noundef !13
  %tobool169 = icmp ne i8 %29, 0
  %30 = load i32, ptr %reflink_mode, align 4, !tbaa !24
  %call.i665 = tail call ptr @__errno_location() #24
  %31 = load i32, ptr %call.i665, align 4, !tbaa !18
  switch i32 %31, label %is_terminal_error.exit.i [
    i32 28, label %is_terminal_error.exit.thread.i
    i32 12, label %is_terminal_error.exit.thread.i
    i32 5, label %is_terminal_error.exit.thread.i
    i32 122, label %is_terminal_error.exit.thread.i
  ]

is_terminal_error.exit.thread.i:                  ; preds = %if.else168, %if.else168, %if.else168, %if.else168
  %cmp40.i = icmp eq i32 %30, 2
  br label %if.end.i

is_terminal_error.exit.i:                         ; preds = %if.else168
  %cmp.i = icmp eq i32 %30, 2
  br i1 %cmp.i, label %if.end.i, label %if.end175.sink.split

if.end.i:                                         ; preds = %is_terminal_error.exit.i, %is_terminal_error.exit.thread.i
  %cmp43.i = phi i1 [ %cmp40.i, %is_terminal_error.exit.thread.i ], [ true, %is_terminal_error.exit.i ]
  %32 = phi i1 [ true, %is_terminal_error.exit.thread.i ], [ false, %is_terminal_error.exit.i ]
  %call4.i = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.70, i32 noundef 5) #23
  %call5.i = call ptr @quotearg_n_style(i32 noundef 0, i32 noundef 4, ptr noundef %dst_name) #23
  %call6.i = call ptr @quotearg_n_style(i32 noundef 1, i32 noundef 4, ptr noundef %src_name) #23
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %31, ptr noundef %call4.i, ptr noundef %call5.i, ptr noundef %call6.i) #25
  %or.cond.i = and i1 %tobool169, %cmp43.i
  br i1 %or.cond.i, label %land.lhs.true9.i, label %if.end24.i

land.lhs.true9.i:                                 ; preds = %if.end.i
  br i1 %32, label %lor.lhs.false11.i, label %land.lhs.true14.i

lor.lhs.false11.i:                                ; preds = %land.lhs.true9.i
  %call12.i = call i64 @lseek(i32 noundef %dest_desc.5, i64 noundef 0, i32 noundef 2) #23
  %cmp13.i = icmp eq i64 %call12.i, 0
  br i1 %cmp13.i, label %land.lhs.true14.i, label %close_src_and_dst_desc

land.lhs.true14.i:                                ; preds = %lor.lhs.false11.i, %land.lhs.true9.i
  %call15.i = call i32 @unlinkat(i32 noundef %dst_dirfd, ptr noundef %dst_relname, i32 noundef 0) #23
  %cmp16.not.i = icmp eq i32 %call15.i, 0
  br i1 %cmp16.not.i, label %if.end24.i, label %land.lhs.true17.i

land.lhs.true17.i:                                ; preds = %land.lhs.true14.i
  %33 = load i32, ptr %call.i665, align 4, !tbaa !18
  %cmp19.not.i = icmp eq i32 %33, 2
  br i1 %cmp19.not.i, label %if.end24.i, label %if.then20.i

if.then20.i:                                      ; preds = %land.lhs.true17.i
  %call22.i = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.24, i32 noundef 5) #23
  %call23.i = call ptr @quotearg_style(i32 noundef 4, ptr noundef %dst_name) #23
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %33, ptr noundef %call22.i, ptr noundef %call23.i) #25
  br i1 %32, label %close_src_and_dst_desc, label %handle_clone_fail.exit.thread742

if.end24.i:                                       ; preds = %land.lhs.true17.i, %land.lhs.true14.i, %if.end.i
  br i1 %32, label %close_src_and_dst_desc, label %handle_clone_fail.exit.thread742

handle_clone_fail.exit.thread742:                 ; preds = %if.end24.i, %if.then20.i
  store i32 6, ptr @copy_debug.1, align 4, !tbaa !87
  br label %close_src_and_dst_desc

if.end175.sink.split:                             ; preds = %is_terminal_error.exit.i, %if.then163
  %.sink = phi i32 [ 2, %if.then163 ], [ 6, %is_terminal_error.exit.i ]
  store i32 %.sink, ptr @copy_debug.1, align 4, !tbaa !87
  br label %if.end175

if.end175:                                        ; preds = %if.end175.sink.split, %land.lhs.true160, %if.end157
  %data_copy_required.0 = phi i1 [ true, %land.lhs.true160 ], [ false, %if.end157 ], [ %cmp165, %if.end175.sink.split ]
  %preserve_ownership = getelementptr inbounds %struct.cp_options, ptr %x, i64 0, i32 16
  %34 = load i8, ptr %preserve_ownership, align 1, !tbaa !61, !range !12, !noundef !13
  %35 = zext i1 %data_copy_required.0 to i8
  %36 = or i8 %34, %35
  %tobool182.not = icmp eq i8 %36, 0
  br i1 %tobool182.not, label %if.then183, label %if.else185

if.then183:                                       ; preds = %if.end175
  %st_mode184 = getelementptr inbounds %struct.stat, ptr %sb, i64 0, i32 3
  store i32 0, ptr %st_mode184, align 8, !tbaa !35
  br label %if.end194

if.else185:                                       ; preds = %if.end175
  %call186 = call i32 @fstat(i32 noundef %dest_desc.5, ptr noundef nonnull %sb) #23
  %cmp187.not = icmp eq i32 %call186, 0
  br i1 %cmp187.not, label %if.end194, label %if.then189

if.then189:                                       ; preds = %if.else185
  %call190 = tail call ptr @__errno_location() #24
  %37 = load i32, ptr %call190, align 4, !tbaa !18
  %call191 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.63, i32 noundef 5) #23
  %call192 = call ptr @quotearg_style(i32 noundef 4, ptr noundef %dst_name) #23
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %37, ptr noundef %call191, ptr noundef %call192) #25
  br label %close_src_and_dst_desc

if.end194:                                        ; preds = %if.else185, %if.then183
  %st_mode195 = getelementptr inbounds %struct.stat, ptr %sb, i64 0, i32 3
  br i1 %data_copy_required.0, label %if.then207, label %if.end319

if.then207:                                       ; preds = %if.end194
  %sb.val = load i32, ptr %st_mode195, align 8, !tbaa !35
  %38 = getelementptr inbounds i8, ptr %sb, i64 56
  %sb.val663 = load i64, ptr %38, align 8
  %39 = add i64 %sb.val663, -1
  %or.cond46.i = icmp ult i64 %39, 2305843009213693952
  %cond18.i = select i1 %or.cond46.i, i64 %sb.val663, i64 512
  %rem.i = urem i64 262143, %cond18.i
  %sub.i = xor i64 %rem.i, 262143
  %add.i = add nuw nsw i64 %cond18.i, %sub.i
  %and.i = and i32 %sb.val, 61440
  %cmp19.i = icmp ne i32 %and.i, 32768
  %40 = call i64 @llvm.ctpop.i64(i64 %add.i), !range !90
  %tobool.not.i = icmp ult i64 %40, 2
  %or.cond47.i = select i1 %cmp19.i, i1 true, i1 %tobool.not.i
  %41 = call i64 @llvm.ctlz.i64(i64 %add.i, i1 true), !range !91
  %sub23.i = sub nuw nsw i64 64, %41
  %shl.i = shl nuw nsw i64 1, %sub23.i
  %blocksize.1.i = select i1 %or.cond47.i, i64 %add.i, i64 %shl.i
  %cond31.i = call i64 @llvm.umin.i64(i64 %blocksize.1.i, i64 4611686018427387904)
  %st_mode.i = getelementptr inbounds %struct.stat, ptr %src_open_sb, i64 0, i32 3
  %42 = load i32, ptr %st_mode.i, align 8, !tbaa !35
  %and.i666 = and i32 %42, 61440
  %cmp.i667 = icmp eq i32 %and.i666, 32768
  br i1 %cmp.i667, label %land.lhs.true.i, label %if.end224

land.lhs.true.i:                                  ; preds = %if.then207
  %st_blocks.i = getelementptr inbounds %struct.stat, ptr %src_open_sb, i64 0, i32 10
  %43 = load i64, ptr %st_blocks.i, align 8, !tbaa !92
  %st_size.i = getelementptr inbounds %struct.stat, ptr %src_open_sb, i64 0, i32 8
  %44 = load i64, ptr %st_size.i, align 8, !tbaa !72
  %div.i = sdiv i64 %44, 512
  %cmp1.i = icmp slt i64 %43, %div.i
  br i1 %cmp1.i, label %if.end.i668, label %if.end224

if.end.i668:                                      ; preds = %land.lhs.true.i
  %call.i669 = call i64 @lseek(i32 noundef %call, i64 noundef 0, i32 noundef 3) #23
  %cmp2.i = icmp sgt i64 %call.i669, -1
  br i1 %cmp2.i, label %if.end224, label %lor.lhs.false.i

lor.lhs.false.i:                                  ; preds = %if.end.i668
  %call3.i = tail call ptr @__errno_location() #24
  %45 = load i32, ptr %call3.i, align 4, !tbaa !18
  switch i32 %45, label %cleanup314.thread [
    i32 6, label %if.end224
    i32 22, label %if.end13.i
    i32 95, label %if.end13.i
  ]

if.end13.i:                                       ; preds = %lor.lhs.false.i, %lor.lhs.false.i
  br label %if.end224

cleanup314.thread:                                ; preds = %lor.lhs.false.i
  %call222 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.67, i32 noundef 5) #23
  %call223 = call ptr @quotearg_style(i32 noundef 4, ptr noundef %src_name) #23
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %45, ptr noundef %call222, ptr noundef %call223) #25
  br label %close_src_and_dst_desc

if.end224:                                        ; preds = %if.end13.i, %lor.lhs.false.i, %if.end.i668, %land.lhs.true.i, %if.then207
  %scan_inference.sroa.0.0.ph = phi i64 [ -1, %if.then207 ], [ -1, %land.lhs.true.i ], [ -1, %if.end13.i ], [ %call.i669, %lor.lhs.false.i ], [ %call.i669, %if.end.i668 ]
  %cmp236 = phi i1 [ false, %if.then207 ], [ false, %land.lhs.true.i ], [ true, %if.end13.i ], [ true, %lor.lhs.false.i ], [ true, %if.end.i668 ]
  %cmp266 = phi i1 [ false, %if.then207 ], [ false, %land.lhs.true.i ], [ false, %if.end13.i ], [ true, %lor.lhs.false.i ], [ true, %if.end.i668 ]
  %cmp227 = icmp eq i32 %and.i, 32768
  br i1 %cmp227, label %land.rhs229, label %land.end239.thread749

land.end239.thread749:                            ; preds = %if.end224
  call void @fdadvise(i32 noundef %call, i64 noundef 0, i64 noundef 0, i32 noundef 2) #23
  br label %if.end265.thread828

land.rhs229:                                      ; preds = %if.end224
  %sparse_mode = getelementptr inbounds %struct.cp_options, ptr %x, i64 0, i32 3
  %46 = load i32, ptr %sparse_mode, align 4, !tbaa !23
  %cmp230 = icmp eq i32 %46, 3
  br i1 %cmp230, label %if.end265.thread, label %land.end239

land.end239:                                      ; preds = %land.rhs229
  %cmp233 = icmp eq i32 %46, 2
  %47 = and i1 %cmp236, %cmp233
  call void @fdadvise(i32 noundef %call, i64 noundef 0, i64 noundef 0, i32 noundef 2) #23
  br i1 %47, label %if.end265, label %if.end265.thread828

if.end265:                                        ; preds = %land.end239
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %n_read) #23
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %wrote_hole_at_eof) #23
  store i8 0, ptr %wrote_hole_at_eof, align 1, !tbaa !27
  br i1 %cmp266, label %cond.true272, label %cond.false282.thread

if.end265.thread828:                              ; preds = %land.end239, %land.end239.thread749
  %48 = getelementptr inbounds i8, ptr %src_open_sb, i64 56
  %src_open_sb.val662 = load i64, ptr %48, align 8, !tbaa !93
  %49 = add i64 %src_open_sb.val662, -1
  %or.cond46.i670 = icmp ult i64 %49, 2305843009213693952
  %cond18.i671 = select i1 %or.cond46.i670, i64 %src_open_sb.val662, i64 512
  %rem.i672 = urem i64 262143, %cond18.i671
  %sub.i673 = xor i64 %rem.i672, 262143
  %add.i674 = add nuw nsw i64 %cond18.i671, %sub.i673
  %cmp19.i676 = icmp ne i32 %and.i666, 32768
  %50 = call i64 @llvm.ctpop.i64(i64 %add.i674), !range !90
  %tobool.not.i677 = icmp ult i64 %50, 2
  %or.cond47.i678 = select i1 %cmp19.i676, i1 true, i1 %tobool.not.i677
  %51 = call i64 @llvm.ctlz.i64(i64 %add.i674, i1 true), !range !91
  %sub23.i679 = sub nuw nsw i64 64, %51
  %shl.i680 = shl nuw nsw i64 1, %sub23.i679
  %blocksize.1.i681 = select i1 %or.cond47.i678, i64 %add.i674, i64 %shl.i680
  %cond31.i682 = call i64 @llvm.umin.i64(i64 %blocksize.1.i681, i64 4611686018427387904)
  %call244 = call i64 @buffer_lcm(i64 noundef %cond31.i682, i64 noundef %cond31.i, i64 noundef 9223372036854775807) #24
  %st_size = getelementptr inbounds %struct.stat, ptr %src_open_sb, i64 0, i32 8
  %52 = load i64, ptr %st_size, align 8
  %cmp250 = icmp ult i64 %52, %cond31.i
  %add = add nuw nsw i64 %52, 1
  %53 = select i1 %cmp.i667, i1 %cmp250, i1 false
  %buf_size.0 = select i1 %53, i64 %add, i64 %cond31.i
  %sub255 = add i64 %call244, -1
  %add256 = add i64 %sub255, %buf_size.0
  %rem = urem i64 %add256, %call244
  %sub257 = sub i64 %add256, %rem
  %cmp258 = icmp eq i64 %add256, %rem
  %cmp261 = icmp slt i64 %sub257, 0
  %or.cond657 = or i1 %cmp258, %cmp261
  %buf_size.1 = select i1 %or.cond657, i64 %call244, i64 %sub257
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %n_read) #23
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %wrote_hole_at_eof) #23
  store i8 0, ptr %wrote_hole_at_eof, align 1, !tbaa !27
  br i1 %cmp266, label %cond.true268.thread832, label %cond.false282.thread

cond.true268.thread832:                           ; preds = %if.end265.thread828
  %st_size269834 = getelementptr inbounds %struct.stat, ptr %src_open_sb, i64 0, i32 8
  %54 = load i64, ptr %st_size269834, align 8, !tbaa !72
  br label %cond.end275

if.end265.thread:                                 ; preds = %land.rhs229
  call void @fdadvise(i32 noundef %call, i64 noundef 0, i64 noundef 0, i32 noundef 2) #23
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %n_read) #23
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %wrote_hole_at_eof) #23
  store i8 0, ptr %wrote_hole_at_eof, align 1, !tbaa !27
  br i1 %cmp266, label %cond.true272, label %cond.false282.thread

cond.true272:                                     ; preds = %if.end265.thread, %if.end265
  %st_size269 = getelementptr inbounds %struct.stat, ptr %src_open_sb, i64 0, i32 8
  %55 = load i64, ptr %st_size269, align 8, !tbaa !72
  %sparse_mode273 = getelementptr inbounds %struct.cp_options, ptr %x, i64 0, i32 3
  %56 = load i32, ptr %sparse_mode273, align 4, !tbaa !23
  br label %cond.end275

cond.end275:                                      ; preds = %cond.true272, %cond.true268.thread832
  %57 = phi i64 [ %55, %cond.true272 ], [ %54, %cond.true268.thread832 ]
  %buf_size.2753756 = phi i64 [ %cond31.i, %cond.true272 ], [ %buf_size.1, %cond.true268.thread832 ]
  %cond276 = phi i32 [ %56, %cond.true272 ], [ 1, %cond.true268.thread832 ]
  %58 = load i32, ptr %reflink_mode, align 4, !tbaa !24
  %cmp278 = icmp ne i32 %58, 0
  store i32 3, ptr @copy_debug.2, align 4, !tbaa !88
  %cmp227.i = icmp sgt i64 %scan_inference.sroa.0.0.ph, -1
  br i1 %cmp227.i, label %while.body.lr.ph.i, label %while.end.thread.i

while.end.thread.i:                               ; preds = %cond.end275
  %cmp63246.i = icmp slt i64 %57, 1
  br label %land.lhs.true65.i

while.body.lr.ph.i:                               ; preds = %cond.end275
  %cmp25.not.i = icmp eq i32 %cond276, 1
  %cmp27.i = icmp eq i32 %cond276, 3
  %cond.i = select i1 %cmp27.i, i64 %cond18.i, i64 0
  br label %while.body.i

while.body.i:                                     ; preds = %cleanup62.i, %while.body.lr.ph.i
  %ext_start.addr.0233.i = phi i64 [ %scan_inference.sroa.0.0.ph, %while.body.lr.ph.i ], [ %call53.i, %cleanup62.i ]
  %wrote_hole_at_eof.0232.i = phi i8 [ 1, %while.body.lr.ph.i ], [ %spec.select147.i, %cleanup62.i ]
  %dest_pos.0231.i = phi i64 [ 0, %while.body.lr.ph.i ], [ %add.i688, %cleanup62.i ]
  %last_ext_len.0230.i = phi i64 [ 0, %while.body.lr.ph.i ], [ %sub39.i, %cleanup62.i ]
  %last_ext_start.0229.i = phi i64 [ 0, %while.body.lr.ph.i ], [ %ext_start.addr.0233.i, %cleanup62.i ]
  %src_total_size.addr.0228.i = phi i64 [ %57, %while.body.lr.ph.i ], [ %spec.select.i, %cleanup62.i ]
  %call.i683 = call i64 @lseek(i32 noundef %call, i64 noundef %ext_start.addr.0233.i, i32 noundef 4) #23
  %cmp1.i684 = icmp slt i64 %call.i683, 0
  br i1 %cmp1.i684, label %if.then.i, label %if.end15.i

if.then.i:                                        ; preds = %while.body.i
  %call2.i = tail call ptr @__errno_location() #24
  %59 = load i32, ptr %call2.i, align 4, !tbaa !18
  %cmp3.not.i = icmp eq i32 %59, 6
  br i1 %cmp3.not.i, label %if.end.i691, label %cannot_lseek.i

if.end.i691:                                      ; preds = %if.then.i
  %cmp5.not.i = icmp sgt i64 %src_total_size.addr.0228.i, %ext_start.addr.0233.i
  br i1 %cmp5.not.i, label %if.end15.i, label %if.then6.i

if.then6.i:                                       ; preds = %if.end.i691
  %call7.i = call i64 @lseek(i32 noundef %call, i64 noundef 0, i32 noundef 2) #23
  %cmp8.i = icmp slt i64 %call7.i, 0
  br i1 %cmp8.i, label %cannot_lseek.i, label %if.end10.i

if.end10.i:                                       ; preds = %if.then6.i
  %cmp11.not.i = icmp ugt i64 %call7.i, %ext_start.addr.0233.i
  br i1 %cmp11.not.i, label %if.end15.i, label %while.end.i

if.end15.i:                                       ; preds = %if.end10.i, %if.end.i691, %while.body.i
  %src_total_size.addr.1.i = phi i64 [ %src_total_size.addr.0228.i, %if.end.i691 ], [ %src_total_size.addr.0228.i, %while.body.i ], [ %call7.i, %if.end10.i ]
  %ext_end.0.i = phi i64 [ %src_total_size.addr.0228.i, %if.end.i691 ], [ %call.i683, %while.body.i ], [ %call7.i, %if.end10.i ]
  %spec.select.i = call i64 @llvm.smax.i64(i64 %src_total_size.addr.1.i, i64 %ext_end.0.i)
  %call19.i = call i64 @lseek(i32 noundef %call, i64 noundef %ext_start.addr.0233.i, i32 noundef 0) #23
  %cmp20.i = icmp slt i64 %call19.i, 0
  br i1 %cmp20.i, label %if.end15.cannot_lseek.loopexit_crit_edge.i, label %if.end22.i

if.end15.cannot_lseek.loopexit_crit_edge.i:       ; preds = %if.end15.i
  %.pre241.i = tail call ptr @__errno_location() #24
  br label %cannot_lseek.i

if.end22.i:                                       ; preds = %if.end15.i
  %60 = add i64 %last_ext_start.0229.i, %last_ext_len.0230.i
  %sub23.i685 = sub i64 %ext_start.addr.0233.i, %60
  %tobool.not.i686 = icmp eq i64 %ext_start.addr.0233.i, %60
  br i1 %tobool.not.i686, label %if.end38.i, label %if.then24.i

if.then24.i:                                      ; preds = %if.end22.i
  br i1 %cmp25.not.i, label %if.else.i, label %if.then26.i687

if.then26.i687:                                   ; preds = %if.then24.i
  %call28.i = call fastcc zeroext i1 @create_hole(i32 noundef %dest_desc.5, ptr noundef %dst_name, i1 noundef zeroext %cmp27.i, i64 noundef %sub23.i685)
  br i1 %call28.i, label %if.end38.i, label %cleanup314.thread765

if.else.i:                                        ; preds = %if.then24.i
  %61 = load ptr, ptr @write_zeros.zeros, align 8, !tbaa !17
  %cmp.i.i = icmp eq ptr %61, null
  br i1 %cmp.i.i, label %if.then.i.i, label %while.cond.i.i.preheader

if.then.i.i:                                      ; preds = %if.else.i
  %.b14.i.i = load i1, ptr @write_zeros.nz, align 8
  %62 = select i1 %.b14.i.i, i64 1024, i64 262144
  %call.i.i = call noalias ptr @calloc(i64 noundef %62, i64 noundef 1) #29
  store ptr %call.i.i, ptr @write_zeros.zeros, align 8, !tbaa !17
  %cmp1.i.i = icmp eq ptr %call.i.i, null
  br i1 %cmp1.i.i, label %if.then2.i.i, label %while.cond.i.i.preheader

if.then2.i.i:                                     ; preds = %if.then.i.i
  store ptr @write_zeros.fallback, ptr @write_zeros.zeros, align 8, !tbaa !17
  store i1 true, ptr @write_zeros.nz, align 8
  br label %while.cond.i.i.preheader

while.cond.i.i.preheader:                         ; preds = %if.then2.i.i, %if.then.i.i, %if.else.i
  br label %while.cond.i.i

while.cond.i.i:                                   ; preds = %while.body.i.i, %while.cond.i.i.preheader
  %n_bytes.addr.0.i.i = phi i64 [ %sub.i.i, %while.body.i.i ], [ %sub23.i685, %while.cond.i.i.preheader ]
  %tobool.not.i.i = icmp eq i64 %n_bytes.addr.0.i.i, 0
  br i1 %tobool.not.i.i, label %if.end38.i, label %while.body.i.i

while.body.i.i:                                   ; preds = %while.cond.i.i
  %.b.i.i = load i1, ptr @write_zeros.nz, align 8
  %63 = select i1 %.b.i.i, i64 1024, i64 262144
  %cond.i.i = call i64 @llvm.umin.i64(i64 %63, i64 %n_bytes.addr.0.i.i)
  %64 = load ptr, ptr @write_zeros.zeros, align 8, !tbaa !17
  %call5.i.i = call i64 @full_write(i32 noundef %dest_desc.5, ptr noundef %64, i64 noundef %cond.i.i) #23
  %cmp6.not.not.i.i = icmp eq i64 %call5.i.i, %cond.i.i
  %sub.i.i = sub i64 %n_bytes.addr.0.i.i, %cond.i.i
  br i1 %cmp6.not.not.i.i, label %while.cond.i.i, label %if.then32.i

if.then32.i:                                      ; preds = %while.body.i.i
  %call33.i = tail call ptr @__errno_location() #24
  %65 = load i32, ptr %call33.i, align 4, !tbaa !18
  %call34.i = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.71, i32 noundef 5) #23
  %call35.i = call ptr @quotearg_n_style_colon(i32 noundef 0, i32 noundef 3, ptr noundef %dst_name) #23
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %65, ptr noundef %call34.i, ptr noundef %call35.i) #25
  br label %cleanup314.thread765

if.end38.i:                                       ; preds = %while.cond.i.i, %if.then26.i687, %if.end22.i
  %wrote_hole_at_eof.1.i = phi i8 [ 0, %if.end22.i ], [ 1, %if.then26.i687 ], [ 0, %while.cond.i.i ]
  %sub39.i = sub nsw i64 %ext_end.0.i, %ext_start.addr.0233.i
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %n_read.i) #23
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %read_hole.i) #23
  %call42.i = call fastcc zeroext i1 @sparse_copy(i32 noundef %call, i32 noundef %dest_desc.5, ptr noundef nonnull %buf, i64 noundef %buf_size.2753756, i64 noundef %cond.i, i1 noundef zeroext true, i1 noundef zeroext %cmp278, ptr noundef %src_name, ptr noundef %dst_name, i64 noundef %sub39.i, ptr noundef nonnull %n_read.i, ptr noundef nonnull %read_hole.i)
  br i1 %call42.i, label %if.end44.i, label %cleanup62.thread193.i

cleanup62.thread193.i:                            ; preds = %if.end38.i
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %read_hole.i) #23
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %n_read.i) #23
  br label %cleanup314.thread765

if.end44.i:                                       ; preds = %if.end38.i
  %66 = load i64, ptr %n_read.i, align 8, !tbaa !50
  %add.i688 = add nsw i64 %66, %ext_start.addr.0233.i
  %tobool45.not.i = icmp eq i64 %66, 0
  %67 = load i8, ptr %read_hole.i, align 1, !range !12
  %spec.select147.i = select i1 %tobool45.not.i, i8 %wrote_hole_at_eof.1.i, i8 %67
  %cmp50.i = icmp slt i64 %66, %sub39.i
  br i1 %cmp50.i, label %cleanup62.thread199.i, label %if.end52.i

cleanup62.thread199.i:                            ; preds = %if.end44.i
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %read_hole.i) #23
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %n_read.i) #23
  br label %while.end.i

if.end52.i:                                       ; preds = %if.end44.i
  %call53.i = call i64 @lseek(i32 noundef %call, i64 noundef %add.i688, i32 noundef 3) #23
  %cmp54.i = icmp slt i64 %call53.i, 0
  br i1 %cmp54.i, label %land.lhs.true.i689, label %cleanup62.i

land.lhs.true.i689:                               ; preds = %if.end52.i
  %call55.i = tail call ptr @__errno_location() #24
  %68 = load i32, ptr %call55.i, align 4, !tbaa !18
  %cmp56.not.i = icmp eq i32 %68, 6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %read_hole.i) #23
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %n_read.i) #23
  br i1 %cmp56.not.i, label %while.end.i, label %cannot_lseek.i

cleanup62.i:                                      ; preds = %if.end52.i
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %read_hole.i) #23
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %n_read.i) #23
  br label %while.body.i

while.end.i:                                      ; preds = %land.lhs.true.i689, %cleanup62.thread199.i, %if.end10.i
  %src_total_size.addr.6.i = phi i64 [ %add.i688, %cleanup62.thread199.i ], [ %spec.select.i, %land.lhs.true.i689 ], [ %call7.i, %if.end10.i ]
  %dest_pos.4.i = phi i64 [ %add.i688, %cleanup62.thread199.i ], [ %add.i688, %land.lhs.true.i689 ], [ %dest_pos.0231.i, %if.end10.i ]
  %wrote_hole_at_eof.6.i = phi i8 [ %spec.select147.i, %cleanup62.thread199.i ], [ %spec.select147.i, %land.lhs.true.i689 ], [ %wrote_hole_at_eof.0232.i, %if.end10.i ]
  %cmp63.i = icmp sge i64 %dest_pos.4.i, %src_total_size.addr.6.i
  %tobool64.not.i = icmp eq i8 %wrote_hole_at_eof.6.i, 0
  %or.cond.i690 = select i1 %cmp63.i, i1 %tobool64.not.i, i1 false
  br i1 %or.cond.i690, label %cleanup314, label %land.lhs.true65.i

land.lhs.true65.i:                                ; preds = %while.end.i, %while.end.thread.i
  %cmp63253.i = phi i1 [ %cmp63246.i, %while.end.thread.i ], [ %cmp63.i, %while.end.i ]
  %dest_pos.4251.i = phi i64 [ 0, %while.end.thread.i ], [ %dest_pos.4.i, %while.end.i ]
  %src_total_size.addr.6249.i = phi i64 [ %57, %while.end.thread.i ], [ %src_total_size.addr.6.i, %while.end.i ]
  %cmp66.i = icmp eq i32 %cond276, 1
  br i1 %cmp66.i, label %cond.true67.i, label %cond.false70.i

cond.true67.i:                                    ; preds = %land.lhs.true65.i
  %sub68.i = sub nsw i64 %src_total_size.addr.6249.i, %dest_pos.4251.i
  %69 = load ptr, ptr @write_zeros.zeros, align 8, !tbaa !17
  %cmp.i149.i = icmp eq ptr %69, null
  br i1 %cmp.i149.i, label %if.then.i160.i, label %while.cond.i151.i.preheader

if.then.i160.i:                                   ; preds = %cond.true67.i
  %.b14.i161.i = load i1, ptr @write_zeros.nz, align 8
  %70 = select i1 %.b14.i161.i, i64 1024, i64 262144
  %call.i162.i = call noalias ptr @calloc(i64 noundef %70, i64 noundef 1) #29
  store ptr %call.i162.i, ptr @write_zeros.zeros, align 8, !tbaa !17
  %cmp1.i163.i = icmp eq ptr %call.i162.i, null
  br i1 %cmp1.i163.i, label %if.then2.i164.i, label %while.cond.i151.i.preheader

if.then2.i164.i:                                  ; preds = %if.then.i160.i
  store ptr @write_zeros.fallback, ptr @write_zeros.zeros, align 8, !tbaa !17
  store i1 true, ptr @write_zeros.nz, align 8
  br label %while.cond.i151.i.preheader

while.cond.i151.i.preheader:                      ; preds = %if.then2.i164.i, %if.then.i160.i, %cond.true67.i
  br label %while.cond.i151.i

while.cond.i151.i:                                ; preds = %while.body.i154.i, %while.cond.i151.i.preheader
  %n_bytes.addr.0.i152.i = phi i64 [ %sub.i159.i, %while.body.i154.i ], [ %sub68.i, %while.cond.i151.i.preheader ]
  %tobool.not.i153.i = icmp eq i64 %n_bytes.addr.0.i152.i, 0
  br i1 %tobool.not.i153.i, label %if.end77.i, label %while.body.i154.i

while.body.i154.i:                                ; preds = %while.cond.i151.i
  %.b.i155.i = load i1, ptr @write_zeros.nz, align 8
  %71 = select i1 %.b.i155.i, i64 1024, i64 262144
  %cond.i156.i = call i64 @llvm.umin.i64(i64 %71, i64 %n_bytes.addr.0.i152.i)
  %72 = load ptr, ptr @write_zeros.zeros, align 8, !tbaa !17
  %call5.i157.i = call i64 @full_write(i32 noundef %dest_desc.5, ptr noundef %72, i64 noundef %cond.i156.i) #23
  %cmp6.not.not.i158.i = icmp eq i64 %call5.i157.i, %cond.i156.i
  %sub.i159.i = sub i64 %n_bytes.addr.0.i152.i, %cond.i156.i
  br i1 %cmp6.not.not.i158.i, label %while.cond.i151.i, label %if.then73.i

cond.false70.i:                                   ; preds = %land.lhs.true65.i
  %call71.i = call i32 @ftruncate(i32 noundef %dest_desc.5, i64 noundef %src_total_size.addr.6249.i) #23
  %cmp72.i = icmp eq i32 %call71.i, 0
  br i1 %cmp72.i, label %if.end77.i, label %if.then73.i

if.then73.i:                                      ; preds = %cond.false70.i, %while.body.i154.i
  %call74.i = tail call ptr @__errno_location() #24
  %73 = load i32, ptr %call74.i, align 4, !tbaa !18
  %call75.i = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.68, i32 noundef 5) #23
  %call76.i = call ptr @quotearg_style(i32 noundef 4, ptr noundef %dst_name) #23
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %73, ptr noundef %call75.i, ptr noundef %call76.i) #25
  br label %cleanup314.thread765

if.end77.i:                                       ; preds = %cond.false70.i, %while.cond.i151.i
  %cmp78.i = icmp ne i32 %cond276, 3
  %brmerge.i = or i1 %cmp78.i, %cmp63253.i
  br i1 %brmerge.i, label %cleanup314, label %land.lhs.true81.i

land.lhs.true81.i:                                ; preds = %if.end77.i
  %sub82.i = sub nsw i64 %src_total_size.addr.6249.i, %dest_pos.4251.i
  %call.i166.i = call i32 @fallocate(i32 noundef %dest_desc.5, i32 noundef 3, i64 noundef %dest_pos.4251.i, i64 noundef %sub82.i) #23
  %cmp.i167.i = icmp slt i32 %call.i166.i, 0
  br i1 %cmp.i167.i, label %land.lhs.true.i.i, label %cleanup314

land.lhs.true.i.i:                                ; preds = %land.lhs.true81.i
  %call1.i.i = tail call ptr @__errno_location() #24
  %74 = load i32, ptr %call1.i.i, align 4, !tbaa !18
  switch i32 %74, label %if.then85.i [
    i32 95, label %cleanup314
    i32 38, label %cleanup314
  ]

if.then85.i:                                      ; preds = %land.lhs.true.i.i
  %call87.i = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.72, i32 noundef 5) #23
  %call88.i = call ptr @quotearg_style(i32 noundef 4, ptr noundef %dst_name) #23
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %74, ptr noundef %call87.i, ptr noundef %call88.i) #25
  br label %cleanup314.thread765

cannot_lseek.i:                                   ; preds = %land.lhs.true.i689, %if.end15.cannot_lseek.loopexit_crit_edge.i, %if.then6.i, %if.then.i
  %call90.pre-phi.i = phi ptr [ %.pre241.i, %if.end15.cannot_lseek.loopexit_crit_edge.i ], [ %call55.i, %land.lhs.true.i689 ], [ %call2.i, %if.then.i ], [ %call2.i, %if.then6.i ]
  %75 = load i32, ptr %call90.pre-phi.i, align 4, !tbaa !18
  %call91.i = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.67, i32 noundef 5) #23
  %call92.i = call ptr @quotearg_style(i32 noundef 4, ptr noundef %src_name) #23
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %75, ptr noundef %call91.i, ptr noundef %call92.i) #25
  br label %cleanup314.thread765

cond.false282.thread:                             ; preds = %if.end265.thread, %if.end265.thread828, %if.end265
  %buf_size.2752761 = phi i64 [ %cond31.i, %if.end265.thread ], [ %buf_size.1, %if.end265.thread828 ], [ %cond31.i, %if.end265 ]
  %76 = phi i64 [ %cond18.i, %if.end265.thread ], [ 0, %if.end265.thread828 ], [ %cond18.i, %if.end265 ]
  %sparse_mode289 = getelementptr inbounds %struct.cp_options, ptr %x, i64 0, i32 3
  %77 = load i32, ptr %sparse_mode289, align 4, !tbaa !23
  %cmp290 = icmp eq i32 %77, 3
  %78 = load i32, ptr %reflink_mode, align 4, !tbaa !24
  %cmp293 = icmp ne i32 %78, 0
  %call295 = call fastcc zeroext i1 @sparse_copy(i32 noundef %call, i32 noundef %dest_desc.5, ptr noundef nonnull %buf, i64 noundef %buf_size.2752761, i64 noundef %76, i1 noundef zeroext %cmp290, i1 noundef zeroext %cmp293, ptr noundef %src_name, ptr noundef %dst_name, i64 noundef -1, ptr noundef nonnull %n_read, ptr noundef nonnull %wrote_hole_at_eof)
  br i1 %call295, label %if.else298, label %cleanup314.thread765

if.else298:                                       ; preds = %cond.false282.thread
  %.pre = load i8, ptr %wrote_hole_at_eof, align 1, !tbaa !27, !range !12
  %tobool299.not = icmp eq i8 %.pre, 0
  br i1 %tobool299.not, label %cleanup314, label %land.lhs.true301

land.lhs.true301:                                 ; preds = %if.else298
  %79 = load i64, ptr %n_read, align 8, !tbaa !50
  %call302 = call i32 @ftruncate(i32 noundef %dest_desc.5, i64 noundef %79) #23
  %cmp303 = icmp slt i32 %call302, 0
  br i1 %cmp303, label %if.then305, label %cleanup314

if.then305:                                       ; preds = %land.lhs.true301
  %call306 = tail call ptr @__errno_location() #24
  %80 = load i32, ptr %call306, align 4, !tbaa !18
  %call307 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.68, i32 noundef 5) #23
  %call308 = call ptr @quotearg_style(i32 noundef 4, ptr noundef %dst_name) #23
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %80, ptr noundef %call307, ptr noundef %call308) #25
  br label %cleanup314.thread765

cleanup314.thread765:                             ; preds = %if.then305, %cond.false282.thread, %cannot_lseek.i, %if.then85.i, %if.then73.i, %cleanup62.thread193.i, %if.then32.i, %if.then26.i687
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %wrote_hole_at_eof) #23
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %n_read) #23
  br label %close_src_and_dst_desc

cleanup314:                                       ; preds = %land.lhs.true301, %if.else298, %land.lhs.true.i.i, %land.lhs.true.i.i, %land.lhs.true81.i, %if.end77.i, %while.end.i
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %wrote_hole_at_eof) #23
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %n_read) #23
  br label %if.end319

if.end319:                                        ; preds = %cleanup314, %if.end194
  %preserve_timestamps = getelementptr inbounds %struct.cp_options, ptr %x, i64 0, i32 18
  %81 = load i8, ptr %preserve_timestamps, align 1, !tbaa !52, !range !12, !noundef !13
  %tobool320.not = icmp eq i8 %81, 0
  br i1 %tobool320.not, label %if.end342, label %if.then321

if.then321:                                       ; preds = %if.end319
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %timespec) #23
  %st_atim.i = getelementptr inbounds %struct.stat, ptr %src_sb, i64 0, i32 11
  %82 = load <2 x i64>, ptr %st_atim.i, align 8, !tbaa !77
  store <2 x i64> %82, ptr %timespec, align 16, !tbaa !77
  %arrayidx324 = getelementptr inbounds [2 x %struct.timespec], ptr %timespec, i64 0, i64 1
  %st_mtim.i = getelementptr inbounds %struct.stat, ptr %src_sb, i64 0, i32 12
  %83 = load <2 x i64>, ptr %st_mtim.i, align 8, !tbaa !77
  store <2 x i64> %83, ptr %arrayidx324, align 16, !tbaa !77
  %call328 = call i32 @fdutimensat(i32 noundef %dest_desc.5, i32 noundef %dst_dirfd, ptr noundef %dst_relname, ptr noundef nonnull %timespec, i32 noundef 0) #23
  %cmp329.not = icmp eq i32 %call328, 0
  br i1 %cmp329.not, label %cleanup339.thread, label %if.then331

if.then331:                                       ; preds = %if.then321
  %call332 = tail call ptr @__errno_location() #24
  %84 = load i32, ptr %call332, align 4, !tbaa !18
  %call333 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.51, i32 noundef 5) #23
  %call334 = call ptr @quotearg_style(i32 noundef 4, ptr noundef %dst_name) #23
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %84, ptr noundef %call333, ptr noundef %call334) #25
  %require_preserve = getelementptr inbounds %struct.cp_options, ptr %x, i64 0, i32 23
  %85 = load i8, ptr %require_preserve, align 2, !tbaa !76, !range !12, !noundef !13
  %tobool335.not = icmp eq i8 %85, 0
  br i1 %tobool335.not, label %cleanup339.thread, label %cleanup339

cleanup339.thread:                                ; preds = %if.then331, %if.then321
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %timespec) #23
  br label %if.end342

cleanup339:                                       ; preds = %if.then331
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %timespec) #23
  br label %close_src_and_dst_desc

if.end342:                                        ; preds = %cleanup339.thread, %if.end319
  %86 = load i8, ptr %preserve_ownership, align 1, !tbaa !61, !range !12, !noundef !13
  %tobool344.not = icmp eq i8 %86, 0
  br i1 %tobool344.not, label %if.end368, label %land.lhs.true346

land.lhs.true346:                                 ; preds = %if.end342
  %st_uid = getelementptr inbounds %struct.stat, ptr %src_sb, i64 0, i32 4
  %87 = load i32, ptr %st_uid, align 4, !tbaa !73
  %st_uid347 = getelementptr inbounds %struct.stat, ptr %sb, i64 0, i32 4
  %88 = load i32, ptr %st_uid347, align 4, !tbaa !73
  %cmp348 = icmp eq i32 %87, %88
  br i1 %cmp348, label %land.lhs.true350, label %if.then354

land.lhs.true350:                                 ; preds = %land.lhs.true346
  %st_gid = getelementptr inbounds %struct.stat, ptr %src_sb, i64 0, i32 5
  %89 = load i32, ptr %st_gid, align 8, !tbaa !74
  %st_gid351 = getelementptr inbounds %struct.stat, ptr %sb, i64 0, i32 5
  %90 = load i32, ptr %st_gid351, align 8, !tbaa !74
  %cmp352 = icmp eq i32 %89, %90
  br i1 %cmp352, label %if.end368, label %if.then354

if.then354:                                       ; preds = %land.lhs.true350, %land.lhs.true346
  %91 = load i8, ptr %new_dst, align 1, !tbaa !27, !range !12, !noundef !13
  %tobool355 = icmp ne i8 %91, 0
  %sb.val664 = load i32, ptr %st_mode195, align 8
  %call356 = call fastcc i32 @set_owner(ptr noundef nonnull %x, ptr noundef %dst_name, i32 noundef %dst_dirfd, ptr noundef %dst_relname, i32 noundef %dest_desc.5, ptr noundef nonnull %src_sb, i1 noundef zeroext %tobool355, i32 %sb.val664)
  switch i32 %call356, label %if.end368 [
    i32 -1, label %close_src_and_dst_desc
    i32 0, label %sw.bb357
  ]

sw.bb357:                                         ; preds = %if.then354
  %and358 = and i32 %11, -3585
  br label %if.end368

if.end368:                                        ; preds = %sw.bb357, %if.then354, %land.lhs.true350, %if.end342
  %src_mode.0 = phi i32 [ %11, %land.lhs.true350 ], [ %11, %if.then354 ], [ %and358, %sw.bb357 ], [ %11, %if.end342 ]
  %preserve_mode = getelementptr inbounds %struct.cp_options, ptr %x, i64 0, i32 17
  %92 = load i8, ptr %preserve_mode, align 8, !tbaa !78, !range !12, !noundef !13
  %tobool369.not = icmp eq i8 %92, 0
  br i1 %tobool369.not, label %lor.lhs.false371, label %if.then375

lor.lhs.false371:                                 ; preds = %if.end368
  %move_mode372 = getelementptr inbounds %struct.cp_options, ptr %x, i64 0, i32 9
  %93 = load i8, ptr %move_mode372, align 8, !tbaa !30, !range !12, !noundef !13
  %tobool373.not = icmp eq i8 %93, 0
  br i1 %tobool373.not, label %if.else385, label %if.then375

if.then375:                                       ; preds = %lor.lhs.false371, %if.end368
  %call376 = call i32 @xcopy_acl(ptr noundef %src_name, i32 noundef %call, ptr noundef %dst_name, i32 noundef %dest_desc.5, i32 noundef %src_mode.0) #23
  %cmp377.not = icmp eq i32 %call376, 0
  br i1 %cmp377.not, label %close_src_and_dst_desc, label %land.lhs.true379

land.lhs.true379:                                 ; preds = %if.then375
  %require_preserve380 = getelementptr inbounds %struct.cp_options, ptr %x, i64 0, i32 23
  %94 = load i8, ptr %require_preserve380, align 2, !tbaa !76, !range !12, !noundef !13
  %spec.select658 = xor i8 %94, 1
  br label %close_src_and_dst_desc

if.else385:                                       ; preds = %lor.lhs.false371
  %set_mode = getelementptr inbounds %struct.cp_options, ptr %x, i64 0, i32 30
  %95 = load i8, ptr %set_mode, align 1, !tbaa !59, !range !12, !noundef !13
  %tobool386.not = icmp eq i8 %95, 0
  br i1 %tobool386.not, label %if.else393, label %if.then387

if.then387:                                       ; preds = %if.else385
  %mode = getelementptr inbounds %struct.cp_options, ptr %x, i64 0, i32 4
  %96 = load i32, ptr %mode, align 8, !tbaa !60
  %call388 = call i32 @xset_acl(ptr noundef %dst_name, i32 noundef %dest_desc.5, i32 noundef %96) #23
  %cmp389.not = icmp eq i32 %call388, 0
  %spec.select659 = zext i1 %cmp389.not to i8
  br label %close_src_and_dst_desc

if.else393:                                       ; preds = %if.else385
  %explicit_no_preserve_mode = getelementptr inbounds %struct.cp_options, ptr %x, i64 0, i32 19
  %97 = load i8, ptr %explicit_no_preserve_mode, align 2, !tbaa !79, !range !12, !noundef !13
  %tobool394.not = icmp eq i8 %97, 0
  br i1 %tobool394.not, label %if.else408, label %land.lhs.true396

land.lhs.true396:                                 ; preds = %if.else393
  %98 = load i8, ptr %new_dst, align 1, !tbaa !27, !range !12, !noundef !13
  %tobool397.not = icmp eq i8 %98, 0
  br i1 %tobool397.not, label %if.else408, label %if.then399

if.then399:                                       ; preds = %land.lhs.true396
  %call400 = call i32 @cached_umask()
  %not401 = and i32 %call400, 438
  %and402 = xor i32 %not401, 438
  %call403 = call i32 @xset_acl(ptr noundef %dst_name, i32 noundef %dest_desc.5, i32 noundef %and402) #23
  %cmp404.not = icmp eq i32 %call403, 0
  %spec.select660 = zext i1 %cmp404.not to i8
  br label %close_src_and_dst_desc

if.else408:                                       ; preds = %land.lhs.true396, %if.else393
  %tobool410.not = icmp eq i32 %omitted_permissions.addr.0, 0
  br i1 %tobool410.not, label %close_src_and_dst_desc, label %if.then411

if.then411:                                       ; preds = %if.else408
  %call412 = call i32 @cached_umask()
  %not413 = xor i32 %call412, -1
  %and414 = and i32 %omitted_permissions.addr.0, %not413
  %tobool416.not = icmp eq i32 %and414, 0
  br i1 %tobool416.not, label %close_src_and_dst_desc, label %land.lhs.true417

land.lhs.true417:                                 ; preds = %if.then411
  %call418 = call i32 @cached_umask()
  %not419 = xor i32 %call418, -1
  %and420 = and i32 %not419, %dst_mode
  %call.i696 = call i32 @fchmod(i32 noundef %dest_desc.5, i32 noundef %and420) #23
  %cmp422.not = icmp eq i32 %call.i696, 0
  br i1 %cmp422.not, label %close_src_and_dst_desc, label %if.then424

if.then424:                                       ; preds = %land.lhs.true417
  %call425 = tail call ptr @__errno_location() #24
  %99 = load i32, ptr %call425, align 4, !tbaa !18
  %call426 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.52, i32 noundef 5) #23
  %call427 = call ptr @quotearg_style(i32 noundef 4, ptr noundef %dst_name) #23
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %99, ptr noundef %call426, ptr noundef %call427) #25
  %require_preserve428 = getelementptr inbounds %struct.cp_options, ptr %x, i64 0, i32 23
  %100 = load i8, ptr %require_preserve428, align 2, !tbaa !76, !range !12, !noundef !13
  %spec.select661 = xor i8 %100, 1
  br label %close_src_and_dst_desc

close_src_and_dst_desc:                           ; preds = %if.then424, %land.lhs.true417, %if.then411, %if.else408, %if.then399, %if.then387, %land.lhs.true379, %if.then375, %if.then354, %cleanup339, %cleanup314.thread765, %cleanup314.thread, %if.then189, %handle_clone_fail.exit.thread742, %if.end24.i, %if.then20.i, %lor.lhs.false11.i, %if.then42
  %return_val.13 = phi i8 [ 0, %if.then189 ], [ 0, %cleanup339 ], [ 0, %if.then354 ], [ 1, %if.then375 ], [ 1, %land.lhs.true417 ], [ 1, %if.then411 ], [ 1, %if.else408 ], [ %spec.select658, %land.lhs.true379 ], [ %spec.select659, %if.then387 ], [ %spec.select660, %if.then399 ], [ %spec.select661, %if.then424 ], [ 0, %if.then42 ], [ 0, %handle_clone_fail.exit.thread742 ], [ 0, %cleanup314.thread ], [ 0, %cleanup314.thread765 ], [ 0, %if.end24.i ], [ 0, %if.then20.i ], [ 0, %lor.lhs.false11.i ]
  %dest_desc.6 = phi i32 [ %dest_desc.5, %if.then189 ], [ %dest_desc.5, %cleanup339 ], [ %dest_desc.5, %if.then354 ], [ %dest_desc.5, %if.then375 ], [ %dest_desc.5, %land.lhs.true417 ], [ %dest_desc.5, %if.then411 ], [ %dest_desc.5, %if.else408 ], [ %dest_desc.5, %land.lhs.true379 ], [ %dest_desc.5, %if.then387 ], [ %dest_desc.5, %if.then399 ], [ %dest_desc.5, %if.then424 ], [ %call33, %if.then42 ], [ %dest_desc.5, %handle_clone_fail.exit.thread742 ], [ %dest_desc.5, %cleanup314.thread ], [ %dest_desc.5, %cleanup314.thread765 ], [ %dest_desc.5, %if.end24.i ], [ %dest_desc.5, %if.then20.i ], [ %dest_desc.5, %lor.lhs.false11.i ]
  %call441 = call i32 @close(i32 noundef %dest_desc.6) #23
  %cmp442 = icmp slt i32 %call441, 0
  br i1 %cmp442, label %if.then444, label %close_src_desc

if.then444:                                       ; preds = %close_src_and_dst_desc
  %call445 = tail call ptr @__errno_location() #24
  %101 = load i32, ptr %call445, align 4, !tbaa !18
  %call446 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.69, i32 noundef 5) #23
  %call447 = call ptr @quotearg_style(i32 noundef 4, ptr noundef %dst_name) #23
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %101, ptr noundef %call446, ptr noundef %call447) #25
  br label %close_src_desc

close_src_desc:                                   ; preds = %if.then444, %close_src_and_dst_desc, %if.then154, %cleanup146, %if.then85, %if.then70, %if.then23, %if.then17
  %return_val.14 = phi i8 [ 0, %if.then17 ], [ 0, %cleanup146 ], [ 0, %if.then154 ], [ 0, %if.then444 ], [ %return_val.13, %close_src_and_dst_desc ], [ 0, %if.then23 ], [ 0, %if.then70 ], [ 0, %if.then85 ]
  %call449 = call i32 @close(i32 noundef %call) #23
  %cmp450 = icmp slt i32 %call449, 0
  br i1 %cmp450, label %if.then452, label %if.end456

if.then452:                                       ; preds = %close_src_desc
  %call453 = tail call ptr @__errno_location() #24
  %102 = load i32, ptr %call453, align 4, !tbaa !18
  %call454 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.69, i32 noundef 5) #23
  %call455 = call ptr @quotearg_style(i32 noundef 4, ptr noundef %src_name) #23
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %102, ptr noundef %call454, ptr noundef %call455) #25
  br label %if.end456

if.end456:                                        ; preds = %if.then452, %close_src_desc
  %return_val.15 = phi i8 [ 0, %if.then452 ], [ %return_val.14, %close_src_desc ]
  %debug = getelementptr inbounds %struct.cp_options, ptr %x, i64 0, i32 35
  %103 = load i8, ptr %debug, align 2, !tbaa !56, !range !12, !noundef !13
  %tobool457.not = icmp eq i8 %103, 0
  br i1 %tobool457.not, label %if.end459, label %if.then458

if.then458:                                       ; preds = %if.end456
  %hard_link.i = getelementptr inbounds %struct.cp_options, ptr %x, i64 0, i32 8
  %104 = load i8, ptr %hard_link.i, align 1, !tbaa !25, !range !12, !noundef !13
  %tobool.not.i697 = icmp eq i8 %104, 0
  br i1 %tobool.not.i697, label %land.lhs.true.i699, label %if.end459

land.lhs.true.i699:                               ; preds = %if.then458
  %symbolic_link.i = getelementptr inbounds %struct.cp_options, ptr %x, i64 0, i32 31
  %105 = load i8, ptr %symbolic_link.i, align 2, !tbaa !26, !range !12, !noundef !13
  %tobool1.not.i = icmp eq i8 %105, 0
  br i1 %tobool1.not.i, label %land.lhs.true2.i, label %if.end459

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i699
  %106 = load i8, ptr %data_copy_required1, align 1, !tbaa !14, !range !12, !noundef !13
  %tobool3.not.i = icmp eq i8 %106, 0
  br i1 %tobool3.not.i, label %if.end459, label %if.then.i700

if.then.i700:                                     ; preds = %land.lhs.true2.i
  %107 = load i32, ptr @copy_debug.0, align 4, !tbaa !85
  %switch.maskindex = trunc i32 %107 to i8
  %switch.shifted = lshr i8 103, %switch.maskindex
  %108 = and i8 %switch.shifted, 1
  %switch.lobit = icmp ne i8 %108, 0
  call void @llvm.assume(i1 %switch.lobit)
  %109 = sext i32 %107 to i64
  %switch.gep = getelementptr inbounds [7 x ptr], ptr @switch.table.copy_reg.96, i64 0, i64 %109
  %switch.load = load ptr, ptr %switch.gep, align 8
  %110 = load i32, ptr @copy_debug.1, align 4, !tbaa !87
  %switch.maskindex891 = trunc i32 %110 to i8
  %switch.shifted892 = lshr i8 103, %switch.maskindex891
  %111 = and i8 %switch.shifted892, 1
  %switch.lobit893 = icmp ne i8 %111, 0
  call void @llvm.assume(i1 %switch.lobit893)
  %112 = sext i32 %110 to i64
  %switch.gep894 = getelementptr inbounds [7 x ptr], ptr @switch.table.copy_reg.96, i64 0, i64 %112
  %switch.load895 = load ptr, ptr %switch.gep894, align 8
  %113 = load i32, ptr @copy_debug.2, align 4, !tbaa !88
  %114 = sext i32 %113 to i64
  %reltable.shift = shl i64 %114, 2
  %reltable.intrinsic = call ptr @llvm.load.relative.i64(ptr @reltable.copy_reg, i64 %reltable.shift)
  %call6.i701 = call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.77, ptr noundef nonnull %switch.load, ptr noundef nonnull %switch.load895, ptr noundef nonnull %reltable.intrinsic) #23
  br label %if.end459

if.end459:                                        ; preds = %if.then.i700, %land.lhs.true2.i, %land.lhs.true.i699, %if.then458, %if.end456
  %115 = load ptr, ptr %buf, align 8, !tbaa !17
  call void @free(ptr noundef %115) #23
  %tobool460 = icmp ne i8 %return_val.15, 0
  br label %cleanup461

cleanup461:                                       ; preds = %if.end459, %if.then
  %retval.0 = phi i1 [ false, %if.then ], [ %tobool460, %if.end459 ]
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %src_open_sb) #23
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %sb) #23
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %buf) #23
  ret i1 %retval.0
}

; Function Attrs: nounwind
declare i32 @mknodat(i32 noundef, ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare i32 @mkfifoat(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

declare ptr @areadlink_with_size(ptr noundef, i64 noundef) local_unnamed_addr #2

declare ptr @areadlinkat_with_size(i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @restore_default_fscreatecon_or_die() unnamed_addr #0 {
entry:
  %call = tail call i32 @setfscreatecon(ptr noundef null) #23
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call1 = tail call ptr @__errno_location() #24
  %0 = load i32, ptr %call1, align 4, !tbaa !18
  %call2 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.86, i32 noundef 5) #23
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %0, ptr noundef %call2) #25
  unreachable

if.end:                                           ; preds = %entry
  ret void
}

; Function Attrs: nounwind
declare i32 @fchownat(i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare i32 @utimensat(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal fastcc i32 @set_owner(ptr nocapture noundef readonly %x, ptr noundef %dst_name, i32 noundef %dst_dirfd, ptr noundef %dst_relname, i32 noundef %dest_desc, ptr nocapture noundef readonly %src_sb, i1 noundef zeroext %new_dst, i32 %dst_sb.24.val) unnamed_addr #0 {
entry:
  %st_uid = getelementptr inbounds %struct.stat, ptr %src_sb, i64 0, i32 4
  %0 = load i32, ptr %st_uid, align 4, !tbaa !73
  %st_gid = getelementptr inbounds %struct.stat, ptr %src_sb, i64 0, i32 5
  %1 = load i32, ptr %st_gid, align 8, !tbaa !74
  br i1 %new_dst, label %if.end28, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %preserve_mode = getelementptr inbounds %struct.cp_options, ptr %x, i64 0, i32 17
  %2 = load i8, ptr %preserve_mode, align 8, !tbaa !78, !range !12, !noundef !13
  %tobool1.not = icmp eq i8 %2, 0
  br i1 %tobool1.not, label %lor.lhs.false, label %cond.true

lor.lhs.false:                                    ; preds = %land.lhs.true
  %move_mode = getelementptr inbounds %struct.cp_options, ptr %x, i64 0, i32 9
  %3 = load i8, ptr %move_mode, align 8, !tbaa !30, !range !12, !noundef !13
  %tobool2.not = icmp eq i8 %3, 0
  br i1 %tobool2.not, label %lor.lhs.false3, label %cond.true

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %set_mode = getelementptr inbounds %struct.cp_options, ptr %x, i64 0, i32 30
  %4 = load i8, ptr %set_mode, align 1, !tbaa !59, !range !12, !noundef !13
  %tobool4.not = icmp eq i8 %4, 0
  br i1 %tobool4.not, label %if.end28, label %cond.false

cond.true:                                        ; preds = %lor.lhs.false, %land.lhs.true
  %st_mode10 = getelementptr inbounds %struct.stat, ptr %src_sb, i64 0, i32 3
  br label %cond.end

cond.false:                                       ; preds = %lor.lhs.false3
  %mode = getelementptr inbounds %struct.cp_options, ptr %x, i64 0, i32 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond.in = phi ptr [ %st_mode10, %cond.true ], [ %mode, %cond.false ]
  %cond = load i32, ptr %cond.in, align 8, !tbaa !94
  %and12 = and i32 %dst_sb.24.val, 4095
  %not = xor i32 %cond, -1
  %or14 = or i32 %not, 3584
  %and15 = and i32 %and12, %or14
  %tobool16.not = icmp eq i32 %and15, 0
  br i1 %tobool16.not, label %if.end28, label %land.lhs.true17

land.lhs.true17:                                  ; preds = %cond.end
  %and = and i32 %dst_sb.24.val, 448
  %and11 = and i32 %and, %cond
  %call = tail call i32 @qset_acl(ptr noundef %dst_name, i32 noundef %dest_desc, i32 noundef %and11) #23
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %if.end28, label %if.then18

if.then18:                                        ; preds = %land.lhs.true17
  %call.i = tail call ptr @__errno_location() #24
  %5 = load i32, ptr %call.i, align 4, !tbaa !18
  switch i32 %5, label %if.then20 [
    i32 1, label %owner_failure_ok.exit
    i32 22, label %owner_failure_ok.exit
    i32 13, label %owner_failure_ok.exit
  ]

owner_failure_ok.exit:                            ; preds = %if.then18, %if.then18, %if.then18
  %owner_privileges.i = getelementptr inbounds %struct.cp_options, ptr %x, i64 0, i32 14
  %6 = load i8, ptr %owner_privileges.i, align 1, !tbaa !95, !range !12, !noundef !13
  %tobool.not.i = icmp eq i8 %6, 0
  br i1 %tobool.not.i, label %cleanup, label %if.then20

if.then20:                                        ; preds = %owner_failure_ok.exit, %if.then18
  %call22 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.87, i32 noundef 5) #23
  %call23 = tail call ptr @quotearg_style(i32 noundef 4, ptr noundef %dst_name) #23
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %5, ptr noundef %call22, ptr noundef %call23) #25
  br label %cleanup

cleanup:                                          ; preds = %if.then20, %owner_failure_ok.exit
  %require_preserve = getelementptr inbounds %struct.cp_options, ptr %x, i64 0, i32 23
  %7 = load i8, ptr %require_preserve, align 2, !tbaa !76, !range !12, !noundef !13
  %conv = zext nneg i8 %7 to i32
  %sub = sub nsw i32 0, %conv
  br label %cleanup45

if.end28:                                         ; preds = %land.lhs.true17, %cond.end, %lor.lhs.false3, %entry
  %cmp.i = icmp sgt i32 %dest_desc, -1
  br i1 %cmp.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %if.end28
  %call.i68 = tail call i32 @fchown(i32 noundef %dest_desc, i32 noundef %0, i32 noundef %1) #23
  br label %fchown_or_lchown.exit

if.end.i:                                         ; preds = %if.end28
  %call.i.i = tail call i32 @fchownat(i32 noundef %dst_dirfd, ptr noundef %dst_relname, i32 noundef %0, i32 noundef %1, i32 noundef 256) #23
  br label %fchown_or_lchown.exit

fchown_or_lchown.exit:                            ; preds = %if.end.i, %if.then.i
  %retval.0.i = phi i32 [ %call.i68, %if.then.i ], [ %call.i.i, %if.end.i ]
  %cmp30 = icmp eq i32 %retval.0.i, 0
  br i1 %cmp30, label %cleanup45, label %if.end33

if.end33:                                         ; preds = %fchown_or_lchown.exit
  %call.i69 = tail call ptr @__errno_location() #24
  %8 = load i32, ptr %call.i69, align 4, !tbaa !18
  switch i32 %8, label %if.else [
    i32 1, label %chown_failure_ok.exit
    i32 22, label %chown_failure_ok.exit
    i32 13, label %chown_failure_ok.exit
  ]

chown_failure_ok.exit:                            ; preds = %if.end33, %if.end33, %if.end33
  %chown_privileges.i = getelementptr inbounds %struct.cp_options, ptr %x, i64 0, i32 13
  %9 = load i8, ptr %chown_privileges.i, align 4, !tbaa !75, !range !12, !noundef !13
  %tobool.not.i71 = icmp eq i8 %9, 0
  br i1 %tobool.not.i71, label %if.then35, label %if.else

if.then35:                                        ; preds = %chown_failure_ok.exit
  br i1 %cmp.i, label %if.then.i76, label %if.end.i73

if.then.i76:                                      ; preds = %if.then35
  %call.i77 = tail call i32 @fchown(i32 noundef %dest_desc, i32 noundef -1, i32 noundef %1) #23
  br label %if.end44

if.end.i73:                                       ; preds = %if.then35
  %call.i.i74 = tail call i32 @fchownat(i32 noundef %dst_dirfd, ptr noundef %dst_relname, i32 noundef -1, i32 noundef %1, i32 noundef 256) #23
  br label %if.end44

if.else:                                          ; preds = %chown_failure_ok.exit, %if.end33
  %call38 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.49, i32 noundef 5) #23
  %call39 = tail call ptr @quotearg_style(i32 noundef 4, ptr noundef %dst_name) #23
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %8, ptr noundef %call38, ptr noundef %call39) #25
  %require_preserve40 = getelementptr inbounds %struct.cp_options, ptr %x, i64 0, i32 23
  %10 = load i8, ptr %require_preserve40, align 2, !tbaa !76, !range !12, !noundef !13
  %tobool41.not = icmp eq i8 %10, 0
  br i1 %tobool41.not, label %if.end44, label %cleanup45

if.end44:                                         ; preds = %if.else, %if.end.i73, %if.then.i76
  br label %cleanup45

cleanup45:                                        ; preds = %if.end44, %if.else, %fchown_or_lchown.exit, %cleanup
  %retval.1 = phi i32 [ 0, %if.end44 ], [ %sub, %cleanup ], [ 1, %fchown_or_lchown.exit ], [ -1, %if.else ]
  ret i32 %retval.1
}

declare i32 @xcopy_acl(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare i32 @xset_acl(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @cached_umask() local_unnamed_addr #0 {
entry:
  %0 = load i32, ptr @cached_umask.mask, align 4, !tbaa !18
  %cmp = icmp eq i32 %0, -1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = tail call i32 @umask(i32 noundef 0) #23
  store i32 %call, ptr @cached_umask.mask, align 4, !tbaa !18
  %call1 = tail call i32 @umask(i32 noundef %call) #23
  %.pre = load i32, ptr @cached_umask.mask, align 4, !tbaa !18
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = phi i32 [ %.pre, %if.then ], [ %0, %entry ]
  ret i32 %1
}

declare i32 @setfscreatecon(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @renameat(i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare i32 @umask(i32 noundef) local_unnamed_addr #4

declare i32 @qset_acl(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @fchown(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

declare i32 @open_safer(ptr noundef, i32 noundef, ...) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @fstat(i32 noundef, ptr nocapture noundef) local_unnamed_addr #9

declare i32 @openat_safer(i32 noundef, ptr noundef, i32 noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind
declare i64 @readlinkat(i32 noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare i32 @ioctl(i32 noundef, i64 noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind
declare i64 @lseek(i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctpop.i64(i64) #13

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #13

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #13

declare void @fdadvise(i32 noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare i64 @buffer_lcm(i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #13

; Function Attrs: nounwind uwtable
define internal fastcc noundef zeroext i1 @create_hole(i32 noundef %fd, ptr noundef %name, i1 noundef zeroext %punch_holes, i64 noundef %size) unnamed_addr #0 {
entry:
  %call = tail call i64 @lseek(i32 noundef %fd, i64 noundef %size, i32 noundef 1) #23
  %cmp = icmp slt i64 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call1 = tail call ptr @__errno_location() #24
  %0 = load i32, ptr %call1, align 4, !tbaa !18
  br label %cleanup.sink.split

if.end:                                           ; preds = %entry
  br i1 %punch_holes, label %land.lhs.true, label %cleanup

land.lhs.true:                                    ; preds = %if.end
  %sub = sub nsw i64 %call, %size
  %call.i = tail call i32 @fallocate(i32 noundef %fd, i32 noundef 3, i64 noundef %sub, i64 noundef %size) #23
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %land.lhs.true.i, label %cleanup

land.lhs.true.i:                                  ; preds = %land.lhs.true
  %call1.i = tail call ptr @__errno_location() #24
  %1 = load i32, ptr %call1.i, align 4, !tbaa !18
  switch i32 %1, label %cleanup.sink.split [
    i32 95, label %cleanup
    i32 38, label %cleanup
  ]

cleanup.sink.split:                               ; preds = %land.lhs.true.i, %if.then
  %.str.72.sink = phi ptr [ @.str.67, %if.then ], [ @.str.72, %land.lhs.true.i ]
  %.sink = phi i32 [ %0, %if.then ], [ %1, %land.lhs.true.i ]
  %call8 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull %.str.72.sink, i32 noundef 5) #23
  %call9 = tail call ptr @quotearg_style(i32 noundef 4, ptr noundef %name) #23
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %.sink, ptr noundef %call8, ptr noundef %call9) #25
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %land.lhs.true.i, %land.lhs.true.i, %land.lhs.true, %if.end
  %retval.0 = phi i1 [ true, %if.end ], [ true, %land.lhs.true ], [ true, %land.lhs.true.i ], [ true, %land.lhs.true.i ], [ false, %cleanup.sink.split ]
  ret i1 %retval.0
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #14

declare i64 @full_write(i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc noundef zeroext i1 @sparse_copy(i32 noundef %src_fd, i32 noundef %dest_fd, ptr nocapture noundef %abuf, i64 noundef %buf_size, i64 noundef %hole_size, i1 noundef zeroext %punch_holes, i1 noundef zeroext %allow_reflink, ptr noundef %src_name, ptr noundef %dst_name, i64 noundef %max_n_read, ptr nocapture noundef %total_n_read, ptr nocapture noundef writeonly %last_write_made_hole) unnamed_addr #0 {
entry:
  store i8 0, ptr %last_write_made_hole, align 1, !tbaa !27
  store i64 0, ptr %total_n_read, align 8, !tbaa !50
  %0 = load i32, ptr @copy_debug.2, align 4
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %tobool.not = icmp eq i64 %hole_size, 0
  %cond = select i1 %tobool.not, i32 1, i32 2
  store i32 %cond, ptr @copy_debug.2, align 4, !tbaa !88
  br label %if.end5

if.else:                                          ; preds = %entry
  %tobool2 = icmp ne i64 %hole_size, 0
  %cmp3 = icmp eq i32 %0, 3
  %or.cond = and i1 %tobool2, %cmp3
  br i1 %or.cond, label %if.end5.thread, label %if.end5

if.end5.thread:                                   ; preds = %if.else
  store i32 4, ptr @copy_debug.2, align 4, !tbaa !88
  br label %if.else44

if.end5:                                          ; preds = %if.else, %if.then
  %tobool6 = icmp ne i64 %hole_size, 0
  %allow_reflink.not = xor i1 %allow_reflink, true
  %brmerge = or i1 %tobool6, %allow_reflink.not
  br i1 %brmerge, label %if.else44, label %while.cond.preheader

while.cond.preheader:                             ; preds = %if.end5
  %tobool10.not316 = icmp eq i64 %max_n_read, 0
  br i1 %tobool10.not316, label %if.else180, label %while.body

while.body:                                       ; preds = %cleanup, %while.cond.preheader
  %max_n_read.addr.0317 = phi i64 [ %sub, %cleanup ], [ %max_n_read, %while.cond.preheader ]
  %cond12 = tail call i64 @llvm.umin.i64(i64 %max_n_read.addr.0317, i64 9223372035781033984)
  %call = tail call i64 @rpl_copy_file_range(i32 noundef %src_fd, ptr noundef null, i32 noundef %dest_fd, ptr noundef null, i64 noundef %cond12, i32 noundef 0) #23
  %cmp13 = icmp eq i64 %call, 0
  br i1 %cmp13, label %if.then14, label %if.end18

if.then14:                                        ; preds = %while.body
  %1 = load i64, ptr %total_n_read, align 8, !tbaa !50
  %cmp15 = icmp eq i64 %1, 0
  br i1 %cmp15, label %while.body48.lr.ph.thread, label %if.end17

if.end17:                                         ; preds = %if.then14
  store i32 2, ptr @copy_debug.0, align 4, !tbaa !85
  br label %return

if.end18:                                         ; preds = %while.body
  %cmp19 = icmp slt i64 %call, 0
  %.pre = load i64, ptr %total_n_read, align 8, !tbaa !50
  br i1 %cmp19, label %if.then20, label %cleanup

if.then20:                                        ; preds = %if.end18
  store i32 6, ptr @copy_debug.0, align 4, !tbaa !85
  %cmp21 = icmp eq i64 %.pre, 0
  %call23 = tail call ptr @__errno_location() #24
  %2 = load i32, ptr %call23, align 4, !tbaa !18
  br i1 %cmp21, label %land.lhs.true22, label %if.end32

land.lhs.true22:                                  ; preds = %if.then20
  switch i32 %2, label %if.else36 [
    i32 38, label %if.end45
    i32 25, label %if.end45
    i32 95, label %if.end45
    i32 26, label %if.end45
    i32 22, label %if.end45
    i32 18, label %if.end45
    i32 9, label %if.end45
    i32 1, label %if.end45
    i32 13, label %if.end45
    i32 2, label %if.end45
    i32 4, label %cleanup
  ]

if.end32:                                         ; preds = %if.then20
  %cmp34 = icmp eq i32 %2, 4
  br i1 %cmp34, label %cleanup, label %if.else36

if.else36:                                        ; preds = %if.end32, %land.lhs.true22
  %call38 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.73, i32 noundef 5) #23
  %call39 = tail call ptr @quotearg_n_style(i32 noundef 0, i32 noundef 4, ptr noundef %src_name) #23
  %call40 = tail call ptr @quotearg_n_style(i32 noundef 1, i32 noundef 4, ptr noundef %dst_name) #23
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %2, ptr noundef %call38, ptr noundef %call39, ptr noundef %call40) #25
  br label %return

cleanup:                                          ; preds = %if.end32, %land.lhs.true22, %if.end18
  %n_copied.0 = phi i64 [ %call, %if.end18 ], [ 0, %if.end32 ], [ 0, %land.lhs.true22 ]
  store i32 2, ptr @copy_debug.0, align 4, !tbaa !85
  %sub = sub i64 %max_n_read.addr.0317, %n_copied.0
  %add = add nsw i64 %.pre, %n_copied.0
  store i64 %add, ptr %total_n_read, align 8, !tbaa !50
  %tobool10.not = icmp eq i64 %sub, 0
  br i1 %tobool10.not, label %if.else180, label %while.body

if.else44:                                        ; preds = %if.end5, %if.end5.thread
  %tobool6272 = phi i1 [ true, %if.end5.thread ], [ %tobool6, %if.end5 ]
  store i32 5, ptr @copy_debug.0, align 4, !tbaa !85
  br label %if.end45

if.end45:                                         ; preds = %if.else44, %land.lhs.true22, %land.lhs.true22, %land.lhs.true22, %land.lhs.true22, %land.lhs.true22, %land.lhs.true22, %land.lhs.true22, %land.lhs.true22, %land.lhs.true22, %land.lhs.true22
  %tobool6271 = phi i1 [ %tobool6272, %if.else44 ], [ false, %land.lhs.true22 ], [ false, %land.lhs.true22 ], [ false, %land.lhs.true22 ], [ false, %land.lhs.true22 ], [ false, %land.lhs.true22 ], [ false, %land.lhs.true22 ], [ false, %land.lhs.true22 ], [ false, %land.lhs.true22 ], [ false, %land.lhs.true22 ], [ false, %land.lhs.true22 ]
  %max_n_read.addr.2 = phi i64 [ %max_n_read, %if.else44 ], [ %max_n_read.addr.0317, %land.lhs.true22 ], [ %max_n_read.addr.0317, %land.lhs.true22 ], [ %max_n_read.addr.0317, %land.lhs.true22 ], [ %max_n_read.addr.0317, %land.lhs.true22 ], [ %max_n_read.addr.0317, %land.lhs.true22 ], [ %max_n_read.addr.0317, %land.lhs.true22 ], [ %max_n_read.addr.0317, %land.lhs.true22 ], [ %max_n_read.addr.0317, %land.lhs.true22 ], [ %max_n_read.addr.0317, %land.lhs.true22 ], [ %max_n_read.addr.0317, %land.lhs.true22 ]
  %tobool47.not345 = icmp eq i64 %max_n_read.addr.2, 0
  br i1 %tobool47.not345, label %if.else180, label %while.body48.lr.ph

while.body48.lr.ph:                               ; preds = %if.end45
  %spec.select387 = select i1 %tobool6271, i64 %hole_size, i64 %buf_size
  br label %while.body48.lr.ph.thread

while.body48.lr.ph.thread:                        ; preds = %while.body48.lr.ph, %if.then14
  %tobool6271368373 = phi i1 [ false, %if.then14 ], [ %tobool6271, %while.body48.lr.ph ]
  %max_n_read.addr.2369372 = phi i64 [ %max_n_read.addr.0317, %if.then14 ], [ %max_n_read.addr.2, %while.body48.lr.ph ]
  %3 = phi i64 [ %buf_size, %if.then14 ], [ %spec.select387, %while.body48.lr.ph ]
  br label %while.body48

while.body48:                                     ; preds = %cleanup169, %while.body48.lr.ph.thread
  %max_n_read.addr.3348 = phi i64 [ %max_n_read.addr.2369372, %while.body48.lr.ph.thread ], [ %max_n_read.addr.4, %cleanup169 ]
  %psize.0347 = phi i64 [ 0, %while.body48.lr.ph.thread ], [ %psize.6, %cleanup169 ]
  %make_hole.0346 = phi i8 [ 0, %while.body48.lr.ph.thread ], [ %make_hole.4, %cleanup169 ]
  %4 = load ptr, ptr %abuf, align 8, !tbaa !17
  %tobool49.not = icmp eq ptr %4, null
  br i1 %tobool49.not, label %if.then50, label %if.end53

if.then50:                                        ; preds = %while.body48
  %call51 = tail call i32 @getpagesize() #24
  %conv = sext i32 %call51 to i64
  %call52 = tail call noalias nonnull ptr @xalignalloc(i64 noundef %conv, i64 noundef %buf_size) #30
  store ptr %call52, ptr %abuf, align 8, !tbaa !17
  br label %if.end53

if.end53:                                         ; preds = %if.then50, %while.body48
  %5 = phi ptr [ %call52, %if.then50 ], [ %4, %while.body48 ]
  %cond59 = tail call i64 @llvm.umin.i64(i64 %max_n_read.addr.3348, i64 %buf_size)
  %call60 = tail call i64 @read(i32 noundef %src_fd, ptr noundef nonnull %5, i64 noundef %cond59) #23
  %cmp61 = icmp slt i64 %call60, 0
  br i1 %cmp61, label %if.then63, label %if.end72

if.then63:                                        ; preds = %if.end53
  %call64 = tail call ptr @__errno_location() #24
  %6 = load i32, ptr %call64, align 4, !tbaa !18
  %cmp65 = icmp eq i32 %6, 4
  br i1 %cmp65, label %cleanup169, label %if.end68, !llvm.loop !96

if.end68:                                         ; preds = %if.then63
  %call70 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.74, i32 noundef 5) #23
  %call71 = tail call ptr @quotearg_style(i32 noundef 4, ptr noundef %src_name) #23
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %6, ptr noundef %call70, ptr noundef %call71) #25
  br label %return

if.end72:                                         ; preds = %if.end53
  %cmp73 = icmp eq i64 %call60, 0
  br i1 %cmp73, label %while.end173, label %if.end76

if.end76:                                         ; preds = %if.end72
  %sub77 = sub i64 %max_n_read.addr.3348, %call60
  %7 = load i64, ptr %total_n_read, align 8, !tbaa !50
  %add78 = add nsw i64 %7, %call60
  store i64 %add78, ptr %total_n_read, align 8, !tbaa !50
  br label %while.body86

while.body86:                                     ; preds = %cleanup158, %if.end76
  %pbuf.0344 = phi ptr [ %5, %if.end76 ], [ %pbuf.1, %cleanup158 ]
  %cbuf.0341 = phi ptr [ %5, %if.end76 ], [ %add.ptr, %cleanup158 ]
  %csize.0340 = phi i64 [ %3, %if.end76 ], [ %csize.1, %cleanup158 ]
  %n_read.0339 = phi i64 [ %call60, %if.end76 ], [ %sub157, %cleanup158 ]
  %psize.1338 = phi i64 [ %psize.0347, %if.end76 ], [ %psize.3, %cleanup158 ]
  %make_hole.1337 = phi i8 [ %make_hole.0346, %if.end76 ], [ %make_hole.2, %cleanup158 ]
  %8 = and i8 %make_hole.1337, 1
  %tobool87.not = icmp eq i8 %8, 0
  %cond94 = tail call i64 @llvm.umin.i64(i64 %csize.0340, i64 %n_read.0339)
  %tobool97 = icmp ne i64 %csize.0340, 0
  %or.cond184 = and i1 %tobool6271368373, %tobool97
  br i1 %or.cond184, label %if.then98, label %if.end101

if.then98:                                        ; preds = %while.body86
  %9 = add i64 %cond94, 15
  %10 = and i64 %9, 15
  %11 = getelementptr i8, ptr %cbuf.0341, i64 %10
  %scevgep.i = getelementptr i8, ptr %11, i64 1
  br label %for.cond.i

for.cond.i:                                       ; preds = %if.end13.i, %if.then98
  %length.addr.1.i = phi i64 [ %cond94, %if.then98 ], [ %sub.i, %if.end13.i ]
  %p.1.i = phi ptr [ %cbuf.0341, %if.then98 ], [ %add.ptr.i, %if.end13.i ]
  %12 = load i8, ptr %p.1.i, align 1
  %tobool8.not.i = icmp eq i8 %12, 0
  br i1 %tobool8.not.i, label %if.end10.i, label %is_nul.exit

if.end10.i:                                       ; preds = %for.cond.i
  %sub.i = add i64 %length.addr.1.i, -1
  %tobool11.not.i = icmp eq i64 %sub.i, 0
  br i1 %tobool11.not.i, label %is_nul.exit, label %if.end13.i

if.end13.i:                                       ; preds = %if.end10.i
  %add.ptr.i = getelementptr inbounds i8, ptr %p.1.i, i64 1
  %and14.i = and i64 %sub.i, 15
  %cmp.i = icmp eq i64 %and14.i, 0
  br i1 %cmp.i, label %for.end.i, label %for.cond.i, !prof !84

for.end.i:                                        ; preds = %if.end13.i
  %bcmp.i = tail call i32 @bcmp(ptr %cbuf.0341, ptr nonnull %scevgep.i, i64 %sub.i)
  %cmp19.i = icmp eq i32 %bcmp.i, 0
  br label %is_nul.exit

is_nul.exit:                                      ; preds = %for.end.i, %if.end10.i, %for.cond.i
  %retval.0.i = phi i1 [ %cmp19.i, %for.end.i ], [ %tobool8.not.i, %if.end10.i ], [ %tobool8.not.i, %for.cond.i ]
  %frombool100 = zext i1 %retval.0.i to i8
  br label %if.end101

if.end101:                                        ; preds = %is_nul.exit, %while.body86
  %.pre-phi = phi i8 [ %frombool100, %is_nul.exit ], [ %8, %while.body86 ]
  %make_hole.2 = phi i8 [ %frombool100, %is_nul.exit ], [ %make_hole.1337, %while.body86 ]
  %cmp106 = icmp ne i8 %.pre-phi, %8
  %tobool108 = icmp ne i64 %psize.1338, 0
  %13 = select i1 %cmp106, i1 %tobool108, i1 false
  %cmp110.not = icmp ule i64 %n_read.0339, %csize.0340
  %tobool102.not = icmp eq i8 %.pre-phi, 0
  %or.cond263 = and i1 %cmp110.not, %tobool102.not
  %lnot = xor i1 %tobool97, true
  %14 = or i1 %or.cond263, %lnot
  %brmerge264 = or i1 %13, %14
  br i1 %brmerge264, label %if.then120, label %if.else151

if.then120:                                       ; preds = %if.end101
  %add123 = select i1 %13, i64 0, i64 %cond94
  %spec.select = add i64 %add123, %psize.1338
  br i1 %tobool87.not, label %if.then126, label %if.else135

if.then126:                                       ; preds = %if.then120
  %call127 = tail call i64 @full_write(i32 noundef %dest_fd, ptr noundef %pbuf.0344, i64 noundef %spec.select) #23
  %cmp128.not = icmp eq i64 %call127, %spec.select
  br i1 %cmp128.not, label %if.end140, label %if.then130

if.then130:                                       ; preds = %if.then126
  %call131 = tail call ptr @__errno_location() #24
  %15 = load i32, ptr %call131, align 4, !tbaa !18
  %call132 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.75, i32 noundef 5) #23
  %call133 = tail call ptr @quotearg_style(i32 noundef 4, ptr noundef %dst_name) #23
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %15, ptr noundef %call132, ptr noundef %call133) #25
  br label %return

if.else135:                                       ; preds = %if.then120
  %call137 = tail call fastcc zeroext i1 @create_hole(i32 noundef %dest_fd, ptr noundef %dst_name, i1 noundef zeroext %punch_holes, i64 noundef %spec.select)
  br i1 %call137, label %if.end140, label %return

if.end140:                                        ; preds = %if.else135, %if.then126
  br i1 %14, label %if.then142, label %cleanup158

if.then142:                                       ; preds = %if.end140
  %spec.select265 = select i1 %tobool97, i64 %n_read.0339, i64 0
  %spec.select266 = select i1 %13, i64 %cond94, i64 0
  br label %cleanup158

if.else151:                                       ; preds = %if.end101
  %16 = sext i64 %psize.1338 to i65
  %17 = zext i64 %cond94 to i65
  %18 = tail call { i65, i1 } @llvm.sadd.with.overflow.i65(i65 %16, i65 %17)
  %19 = extractvalue { i65, i1 } %18, 1
  %20 = extractvalue { i65, i1 } %18, 0
  %21 = trunc i65 %20 to i64
  %22 = sext i64 %21 to i65
  %23 = icmp ne i65 %20, %22
  %24 = or i1 %19, %23
  br i1 %24, label %if.then152, label %cleanup158

if.then152:                                       ; preds = %if.else151
  %call153 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.76, i32 noundef 5) #23
  %call154 = tail call ptr @quotearg_style(i32 noundef 4, ptr noundef %src_name) #23
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %call153, ptr noundef %call154) #25
  br label %return

cleanup158:                                       ; preds = %if.else151, %if.then142, %if.end140
  %psize.3 = phi i64 [ %cond94, %if.end140 ], [ %21, %if.else151 ], [ %spec.select266, %if.then142 ]
  %n_read.2 = phi i64 [ %n_read.0339, %if.end140 ], [ %n_read.0339, %if.else151 ], [ %spec.select265, %if.then142 ]
  %csize.1 = phi i64 [ %cond94, %if.end140 ], [ %cond94, %if.else151 ], [ %add123, %if.then142 ]
  %pbuf.1 = phi ptr [ %cbuf.0341, %if.end140 ], [ %pbuf.0344, %if.else151 ], [ %cbuf.0341, %if.then142 ]
  %sub157 = sub i64 %n_read.2, %csize.1
  %add.ptr = getelementptr inbounds i8, ptr %cbuf.0341, i64 %csize.1
  %tobool85.not = icmp eq i64 %sub157, 0
  br i1 %tobool85.not, label %while.end163, label %while.body86, !llvm.loop !97

while.end163:                                     ; preds = %cleanup158
  store i8 %.pre-phi, ptr %last_write_made_hole, align 1, !tbaa !27
  br label %cleanup169

cleanup169:                                       ; preds = %while.end163, %if.then63
  %make_hole.4 = phi i8 [ %make_hole.0346, %if.then63 ], [ %make_hole.2, %while.end163 ]
  %psize.6 = phi i64 [ %psize.0347, %if.then63 ], [ %psize.3, %while.end163 ]
  %max_n_read.addr.4 = phi i64 [ %max_n_read.addr.3348, %if.then63 ], [ %sub77, %while.end163 ]
  %tobool47.not = icmp eq i64 %max_n_read.addr.4, 0
  br i1 %tobool47.not, label %while.end173, label %while.body48

while.end173:                                     ; preds = %cleanup169, %if.end72
  %make_hole.0.lcssa.ph = phi i8 [ %make_hole.4, %cleanup169 ], [ %make_hole.0346, %if.end72 ]
  %psize.0.lcssa.ph = phi i64 [ %psize.6, %cleanup169 ], [ %psize.0347, %if.end72 ]
  %25 = and i8 %make_hole.0.lcssa.ph, 1
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %if.else180, label %land.lhs.true176

land.lhs.true176:                                 ; preds = %while.end173
  %call178 = tail call fastcc zeroext i1 @create_hole(i32 noundef %dest_fd, ptr noundef %dst_name, i1 noundef zeroext %punch_holes, i64 noundef %psize.0.lcssa.ph)
  br i1 %call178, label %if.else180, label %return

if.else180:                                       ; preds = %land.lhs.true176, %while.end173, %if.end45, %cleanup, %while.cond.preheader
  br label %return

return:                                           ; preds = %if.else180, %land.lhs.true176, %if.then152, %if.else135, %if.then130, %if.end68, %if.else36, %if.end17
  %retval.9 = phi i1 [ true, %if.else180 ], [ false, %land.lhs.true176 ], [ false, %if.else36 ], [ true, %if.end17 ], [ false, %if.end68 ], [ false, %if.then130 ], [ false, %if.then152 ], [ false, %if.else135 ]
  ret i1 %retval.9
}

; Function Attrs: nounwind
declare i32 @ftruncate(i32 noundef, i64 noundef) local_unnamed_addr #4

declare i32 @fallocate(i32 noundef, i32 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

declare i32 @fdutimensat(i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @fchmod(i32 noundef, i32 noundef) local_unnamed_addr #4

declare i32 @close(i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #15

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @llvm.load.relative.i64(ptr, i64) #16

declare i64 @rpl_copy_file_range(i32 noundef, ptr noundef, i32 noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare i32 @getpagesize() local_unnamed_addr #3

; Function Attrs: allocsize(1)
declare noalias nonnull ptr @xalignalloc(i64 noundef, i64 noundef) local_unnamed_addr #17

; Function Attrs: nofree
declare noundef i64 @read(i32 noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #18

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #19

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i65, i1 } @llvm.sadd.with.overflow.i65(i65, i65) #13

; Function Attrs: allocsize(0)
declare noalias nonnull ptr @ximalloc(i64 noundef) local_unnamed_addr #20

declare i32 @__overflow(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @strmode(i32 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @__fprintf_chk(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

declare zeroext i1 @yesno() local_unnamed_addr #2

declare i32 @force_linkat(i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @cp_options_default(ptr noundef nonnull %x) local_unnamed_addr #0 {
entry:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(96) %x, i8 noundef 0, i64 noundef 96, i1 noundef false) #23
  %call1 = tail call i32 @geteuid() #23
  %cmp = icmp eq i32 %call1, 0
  %owner_privileges = getelementptr inbounds %struct.cp_options, ptr %x, i64 0, i32 14
  %frombool = zext i1 %cmp to i8
  store i8 %frombool, ptr %owner_privileges, align 1, !tbaa !95
  %chown_privileges = getelementptr inbounds %struct.cp_options, ptr %x, i64 0, i32 13
  store i8 %frombool, ptr %chown_privileges, align 4, !tbaa !75
  %rename_errno = getelementptr inbounds %struct.cp_options, ptr %x, i64 0, i32 39
  store i32 -1, ptr %rename_errno, align 8, !tbaa !29
  ret void
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #21

; Function Attrs: nounwind
declare i32 @geteuid() local_unnamed_addr #4

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local noundef zeroext i1 @chown_failure_ok(ptr nocapture noundef nonnull readonly %x) local_unnamed_addr #22 {
entry:
  %call = tail call ptr @__errno_location() #24
  %0 = load i32, ptr %call, align 4, !tbaa !18
  switch i32 %0, label %land.end [
    i32 1, label %land.rhs
    i32 22, label %land.rhs
    i32 13, label %land.rhs
  ]

land.rhs:                                         ; preds = %entry, %entry, %entry
  %chown_privileges = getelementptr inbounds %struct.cp_options, ptr %x, i64 0, i32 13
  %1 = load i8, ptr %chown_privileges, align 4, !tbaa !75, !range !12, !noundef !13
  %tobool.not = icmp eq i8 %1, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %2 = phi i1 [ %tobool.not, %land.rhs ], [ false, %entry ]
  ret i1 %2
}

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #12 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #14 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #17 = { allocsize(1) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nofree nounwind willreturn memory(argmem: read) }
attributes #20 = { allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #22 = { mustprogress nofree nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { nounwind }
attributes #24 = { nounwind willreturn memory(none) }
attributes #25 = { cold nounwind }
attributes #26 = { noreturn nounwind }
attributes #27 = { nounwind willreturn memory(read) }
attributes #28 = { nounwind allocsize(0) }
attributes #29 = { nounwind allocsize(0,1) }
attributes #30 = { nounwind allocsize(1) }

!llvm.ident = !{!0}
!llvm.module.flags = !{!1, !2, !3, !4}

!0 = !{!"clang version 18.1.8 (https://github.com/llvm/llvm-project.git 3b5b5c1ec4a3095ab096dd780e84d7ab81f3d7ff)"}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!6, !10, i64 51, i64 1}
!6 = !{!7, i64 96, !"cp_options", !9, i64 0, i64 4, !9, i64 4, i64 4, !9, i64 8, i64 4, !9, i64 12, i64 4, !9, i64 16, i64 4, !10, i64 20, i64 1, !10, i64 21, i64 1, !10, i64 22, i64 1, !10, i64 23, i64 1, !10, i64 24, i64 1, !10, i64 25, i64 1, !10, i64 26, i64 1, !10, i64 27, i64 1, !10, i64 28, i64 1, !10, i64 29, i64 1, !10, i64 30, i64 1, !10, i64 31, i64 1, !10, i64 32, i64 1, !10, i64 33, i64 1, !10, i64 34, i64 1, !11, i64 40, i64 8, !10, i64 48, i64 1, !10, i64 49, i64 1, !10, i64 50, i64 1, !10, i64 51, i64 1, !10, i64 52, i64 1, !10, i64 53, i64 1, !10, i64 54, i64 1, !10, i64 55, i64 1, !10, i64 56, i64 1, !10, i64 57, i64 1, !10, i64 58, i64 1, !9, i64 60, i64 4, !10, i64 64, i64 1, !10, i64 65, i64 1, !10, i64 66, i64 1, !10, i64 67, i64 1, !10, i64 68, i64 1, !10, i64 69, i64 1, !9, i64 72, i64 4, !9, i64 76, i64 4, !11, i64 80, i64 8, !11, i64 88, i64 8}
!7 = !{!8, i64 1, !"omnipotent char"}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!7, i64 4, !"int"}
!10 = !{!7, i64 1, !"_Bool"}
!11 = !{!7, i64 8, !"any pointer"}
!12 = !{i8 0, i8 2}
!13 = !{}
!14 = !{!6, !10, i64 49, i64 1}
!15 = !{!6, !10, i64 52, i64 1}
!16 = !{!6, !10, i64 55, i64 1}
!17 = !{!11, !11, i64 0, i64 8}
!18 = !{!9, !9, i64 0, i64 4}
!19 = !{!6, !11, i64 40, i64 8}
!20 = !{!6, !11, i64 80, i64 8}
!21 = !{!6, !11, i64 88, i64 8}
!22 = !{!6, !9, i64 0, i64 4}
!23 = !{!6, !9, i64 12, i64 4}
!24 = !{!6, !9, i64 76, i64 4}
!25 = !{!6, !10, i64 23, i64 1}
!26 = !{!6, !10, i64 58, i64 1}
!27 = !{!10, !10, i64 0, i64 1}
!28 = !{!7, !7, i64 0, i64 1}
!29 = !{!6, !9, i64 72, i64 4}
!30 = !{!6, !10, i64 24, i64 1}
!31 = !{!6, !10, i64 26, i64 1}
!32 = !{!6, !10, i64 69, i64 1}
!33 = !{!6, !9, i64 60, i64 4}
!34 = !{!6, !9, i64 4, i64 4}
!35 = !{!36, !9, i64 24, i64 4}
!36 = !{!7, i64 144, !"stat", !37, i64 0, i64 8, !37, i64 8, i64 8, !37, i64 16, i64 8, !9, i64 24, i64 4, !9, i64 28, i64 4, !9, i64 32, i64 4, !9, i64 36, i64 4, !37, i64 40, i64 8, !37, i64 48, i64 8, !37, i64 56, i64 8, !37, i64 64, i64 8, !38, i64 72, i64 16, !38, i64 88, i64 16, !38, i64 104, i64 16, !37, i64 120, i64 24}
!37 = !{!7, i64 8, !"long"}
!38 = !{!7, i64 16, !"timespec", !37, i64 0, i64 8, !37, i64 8, i64 8}
!39 = !{!6, !10, i64 56, i64 1}
!40 = !{!6, !10, i64 27, i64 1}
!41 = !{!6, !10, i64 20, i64 1}
!42 = !{!6, !10, i64 65, i64 1}
!43 = !{!6, !10, i64 21, i64 1}
!44 = !{!6, !10, i64 22, i64 1}
!45 = !{!36, !37, i64 0, i64 8}
!46 = !{!36, !37, i64 8, i64 8}
!47 = !{!36, !37, i64 16, i64 8}
!48 = !{!36, !36, i64 0, i64 144}
!49 = !{i64 0, i64 8, !50, i64 8, i64 8, !50, i64 16, i64 8, !50, i64 24, i64 4, !18, i64 28, i64 4, !18, i64 32, i64 4, !18, i64 36, i64 4, !18, i64 40, i64 8, !50, i64 48, i64 8, !50, i64 56, i64 8, !50, i64 64, i64 8, !50, i64 72, i64 8, !50, i64 80, i64 8, !50, i64 88, i64 8, !50, i64 96, i64 8, !50, i64 104, i64 8, !50, i64 112, i64 8, !50, i64 120, i64 24, !51}
!50 = !{!37, !37, i64 0, i64 8}
!51 = !{!37, !37, i64 0, i64 24}
!52 = !{!6, !10, i64 33, i64 1}
!53 = !{!6, !10, i64 64, i64 1}
!54 = !{!6, !9, i64 8, i64 4}
!55 = !{!6, !10, i64 67, i64 1}
!56 = !{!6, !10, i64 66, i64 1}
!57 = !{!6, !10, i64 48, i64 1}
!58 = !{!6, !10, i64 25, i64 1}
!59 = !{!6, !10, i64 57, i64 1}
!60 = !{!6, !9, i64 16, i64 4}
!61 = !{!6, !10, i64 31, i64 1}
!62 = !{!63, !37, i64 8, i64 8}
!63 = !{!7, i64 24, !"dir_list", !11, i64 0, i64 8, !37, i64 8, i64 8, !37, i64 16, i64 8}
!64 = !{!63, !37, i64 16, i64 8}
!65 = !{!63, !11, i64 0, i64 8}
!66 = distinct !{!66, !67}
!67 = !{!"llvm.loop.mustprogress"}
!68 = !{!6, !10, i64 30, i64 1}
!69 = !{!6, !6, i64 0, i64 96}
!70 = !{i64 0, i64 4, !18, i64 4, i64 4, !18, i64 8, i64 4, !18, i64 12, i64 4, !18, i64 16, i64 4, !18, i64 20, i64 1, !27, i64 21, i64 1, !27, i64 22, i64 1, !27, i64 23, i64 1, !27, i64 24, i64 1, !27, i64 25, i64 1, !27, i64 26, i64 1, !27, i64 27, i64 1, !27, i64 28, i64 1, !27, i64 29, i64 1, !27, i64 30, i64 1, !27, i64 31, i64 1, !27, i64 32, i64 1, !27, i64 33, i64 1, !27, i64 34, i64 1, !27, i64 40, i64 8, !17, i64 48, i64 1, !27, i64 49, i64 1, !27, i64 50, i64 1, !27, i64 51, i64 1, !27, i64 52, i64 1, !27, i64 53, i64 1, !27, i64 54, i64 1, !27, i64 55, i64 1, !27, i64 56, i64 1, !27, i64 57, i64 1, !27, i64 58, i64 1, !27, i64 60, i64 4, !18, i64 64, i64 1, !27, i64 65, i64 1, !27, i64 66, i64 1, !27, i64 67, i64 1, !27, i64 68, i64 1, !27, i64 69, i64 1, !27, i64 72, i64 4, !18, i64 76, i64 4, !18, i64 80, i64 8, !17, i64 88, i64 8, !17}
!71 = !{!36, !37, i64 40, i64 8}
!72 = !{!36, !37, i64 48, i64 8}
!73 = !{!36, !9, i64 28, i64 4}
!74 = !{!36, !9, i64 32, i64 4}
!75 = !{!6, !10, i64 28, i64 1}
!76 = !{!6, !10, i64 50, i64 1}
!77 = !{!38, !38, i64 0, i64 16}
!78 = !{!6, !10, i64 32, i64 1}
!79 = !{!6, !10, i64 34, i64 1}
!80 = !{!81, !11, i64 40, i64 8}
!81 = !{!7, i64 216, !"_IO_FILE", !9, i64 0, i64 4, !11, i64 8, i64 8, !11, i64 16, i64 8, !11, i64 24, i64 8, !11, i64 32, i64 8, !11, i64 40, i64 8, !11, i64 48, i64 8, !11, i64 56, i64 8, !11, i64 64, i64 8, !11, i64 72, i64 8, !11, i64 80, i64 8, !11, i64 88, i64 8, !11, i64 96, i64 8, !11, i64 104, i64 8, !9, i64 112, i64 4, !9, i64 116, i64 4, !37, i64 120, i64 8, !82, i64 128, i64 2, !7, i64 130, i64 1, !7, i64 131, i64 1, !11, i64 136, i64 8, !37, i64 144, i64 8, !11, i64 152, i64 8, !11, i64 160, i64 8, !11, i64 168, i64 8, !11, i64 176, i64 8, !37, i64 184, i64 8, !9, i64 192, i64 4, !7, i64 196, i64 20}
!82 = !{!7, i64 2, !"short"}
!83 = !{!81, !11, i64 48, i64 8}
!84 = !{!"branch_weights", i32 2000, i32 1}
!85 = !{!86, !9, i64 0, i64 4}
!86 = !{!7, i64 12, !"copy_debug", !9, i64 0, i64 4, !9, i64 4, i64 4, !9, i64 8, i64 4}
!87 = !{!86, !9, i64 4, i64 4}
!88 = !{!86, !9, i64 8, i64 4}
!89 = !{!6, !10, i64 68, i64 1}
!90 = !{i64 0, i64 64}
!91 = !{i64 0, i64 65}
!92 = !{!36, !37, i64 64, i64 8}
!93 = !{!36, !37, i64 56, i64 8}
!94 = !{!9, !9, i64 0, i64 -1}
!95 = !{!6, !10, i64 29, i64 1}
!96 = distinct !{!96, !67}
!97 = distinct !{!97, !67}
