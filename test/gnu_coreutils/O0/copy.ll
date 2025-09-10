; ModuleID = 'llvm-link'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.copy_debug = type { i32, i32, i32 }
%struct.cp_options = type { i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, ptr, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i8, i8, i8, i8, i8, i8, i32, i32, ptr, ptr }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.dir_list = type { ptr, i64, i64 }
%union.scan_inference = type { i64 }

@.str = private unnamed_addr constant [50 x i8] c"failed to set default file creation context to %s\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"failed to get security context of %s\00", align 1
@.str.2 = private unnamed_addr constant [51 x i8] c"failed to set default file creation context for %s\00", align 1
@.str.3 = private unnamed_addr constant [41 x i8] c"failed to set the security context of %s\00", align 1
@top_level_src_name = internal global ptr null, align 8
@top_level_dst_name = internal global ptr null, align 8
@cached_umask.mask = internal global i32 -1, align 4
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
@.str.56 = private unnamed_addr constant [13 x i8] c"x->move_mode\00", align 1
@__PRETTY_FUNCTION__.abandon_move = private unnamed_addr constant [100 x i8] c"_Bool abandon_move(const struct cp_options *, const char *, int, const char *, const struct stat *)\00", align 1
@stderr = external global ptr, align 8
@.str.57 = private unnamed_addr constant [45 x i8] c"%s: replace %s, overriding mode %04lo (%s)? \00", align 1
@.str.58 = private unnamed_addr constant [49 x i8] c"%s: unwritable %s (mode %04lo, %s); try anyway? \00", align 1
@program_name = external global ptr, align 8
@.str.59 = private unnamed_addr constant [19 x i8] c"%s: overwrite %s? \00", align 1
@simple_backup_suffix = external global ptr, align 8
@.str.60 = private unnamed_addr constant [14 x i8] c" (backup: %s)\00", align 1
@.str.61 = private unnamed_addr constant [17 x i8] c"cannot access %s\00", align 1
@copy_debug = internal global %struct.copy_debug zeroinitializer, align 4
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
@write_zeros.zeros = internal global ptr null, align 8
@write_zeros.nz = internal global i64 262144, align 8
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

; Function Attrs: noinline nounwind optnone uwtable
define dso_local zeroext i1 @set_process_security_ctx(ptr noundef nonnull %src_name, ptr noundef nonnull %dst_name, i32 noundef %mode, i1 noundef zeroext %new_dst, ptr noundef nonnull %x) #0 {
entry:
  %retval = alloca i1, align 1
  %src_name.addr = alloca ptr, align 8
  %dst_name.addr = alloca ptr, align 8
  %mode.addr = alloca i32, align 4
  %new_dst.addr = alloca i8, align 1
  %x.addr = alloca ptr, align 8
  %all_errors = alloca i8, align 1
  %some_errors = alloca i8, align 1
  %con_raw = alloca ptr, align 8
  store ptr %src_name, ptr %src_name.addr, align 8
  store ptr %dst_name, ptr %dst_name.addr, align 8
  store i32 %mode, ptr %mode.addr, align 4
  %frombool = zext i1 %new_dst to i8
  store i8 %frombool, ptr %new_dst.addr, align 1
  store ptr %x, ptr %x.addr, align 8
  %0 = load ptr, ptr %x.addr, align 8
  %preserve_security_context = getelementptr inbounds %struct.cp_options, ptr %0, i32 0, i32 24
  %1 = load i8, ptr %preserve_security_context, align 1
  %tobool = trunc i8 %1 to i1
  br i1 %tobool, label %if.then, label %if.else40

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %x.addr, align 8
  %data_copy_required = getelementptr inbounds %struct.cp_options, ptr %2, i32 0, i32 22
  %3 = load i8, ptr %data_copy_required, align 1
  %tobool1 = trunc i8 %3 to i1
  br i1 %tobool1, label %lor.rhs, label %lor.end

lor.rhs:                                          ; preds = %if.then
  %4 = load ptr, ptr %x.addr, align 8
  %require_preserve_context = getelementptr inbounds %struct.cp_options, ptr %4, i32 0, i32 25
  %5 = load i8, ptr %require_preserve_context, align 4
  %tobool2 = trunc i8 %5 to i1
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %if.then
  %6 = phi i1 [ true, %if.then ], [ %tobool2, %lor.rhs ]
  %frombool3 = zext i1 %6 to i8
  store i8 %frombool3, ptr %all_errors, align 1
  %7 = load i8, ptr %all_errors, align 1
  %tobool4 = trunc i8 %7 to i1
  br i1 %tobool4, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %lor.end
  %8 = load ptr, ptr %x.addr, align 8
  %reduce_diagnostics = getelementptr inbounds %struct.cp_options, ptr %8, i32 0, i32 28
  %9 = load i8, ptr %reduce_diagnostics, align 1
  %tobool5 = trunc i8 %9 to i1
  %lnot = xor i1 %tobool5, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %lor.end
  %10 = phi i1 [ false, %lor.end ], [ %lnot, %land.rhs ]
  %frombool6 = zext i1 %10 to i8
  store i8 %frombool6, ptr %some_errors, align 1
  %11 = load ptr, ptr %src_name.addr, align 8
  %call = call i32 @rpl_lgetfilecon_raw(ptr noundef %11, ptr noundef %con_raw)
  %cmp = icmp sle i32 0, %call
  br i1 %cmp, label %if.then7, label %if.else

if.then7:                                         ; preds = %land.end
  %12 = load ptr, ptr %con_raw, align 8
  %call8 = call i32 @setfscreatecon_raw(ptr noundef %12)
  %cmp9 = icmp slt i32 %call8, 0
  br i1 %cmp9, label %if.then10, label %if.end23

if.then10:                                        ; preds = %if.then7
  %13 = load i8, ptr %all_errors, align 1
  %tobool11 = trunc i8 %13 to i1
  br i1 %tobool11, label %if.then15, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then10
  %14 = load i8, ptr %some_errors, align 1
  %tobool12 = trunc i8 %14 to i1
  br i1 %tobool12, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %lor.lhs.false
  %call13 = call ptr @__errno_location() #15
  %15 = load i32, ptr %call13, align 4
  %call14 = call zeroext i1 @errno_unsupported(i32 noundef %15)
  br i1 %call14, label %if.end, label %if.then15

if.then15:                                        ; preds = %land.lhs.true, %if.then10
  %call16 = call ptr @__errno_location() #15
  %16 = load i32, ptr %call16, align 4
  %call17 = call ptr @gettext(ptr noundef @.str) #16
  %17 = load ptr, ptr %con_raw, align 8
  %call18 = call ptr @quote(ptr noundef %17)
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %16, ptr noundef %call17, ptr noundef %call18) #17
  br label %if.end

if.end:                                           ; preds = %if.then15, %land.lhs.true, %lor.lhs.false
  %18 = load ptr, ptr %x.addr, align 8
  %require_preserve_context19 = getelementptr inbounds %struct.cp_options, ptr %18, i32 0, i32 25
  %19 = load i8, ptr %require_preserve_context19, align 4
  %tobool20 = trunc i8 %19 to i1
  br i1 %tobool20, label %if.then21, label %if.end22

if.then21:                                        ; preds = %if.end
  %20 = load ptr, ptr %con_raw, align 8
  call void @freecon(ptr noundef %20)
  store i1 false, ptr %retval, align 1
  br label %return

if.end22:                                         ; preds = %if.end
  br label %if.end23

if.end23:                                         ; preds = %if.end22, %if.then7
  %21 = load ptr, ptr %con_raw, align 8
  call void @freecon(ptr noundef %21)
  br label %if.end39

if.else:                                          ; preds = %land.end
  %22 = load i8, ptr %all_errors, align 1
  %tobool24 = trunc i8 %22 to i1
  br i1 %tobool24, label %if.then30, label %lor.lhs.false25

lor.lhs.false25:                                  ; preds = %if.else
  %23 = load i8, ptr %some_errors, align 1
  %tobool26 = trunc i8 %23 to i1
  br i1 %tobool26, label %land.lhs.true27, label %if.end34

land.lhs.true27:                                  ; preds = %lor.lhs.false25
  %call28 = call ptr @__errno_location() #15
  %24 = load i32, ptr %call28, align 4
  %call29 = call zeroext i1 @errno_unsupported(i32 noundef %24)
  br i1 %call29, label %if.end34, label %if.then30

if.then30:                                        ; preds = %land.lhs.true27, %if.else
  %call31 = call ptr @__errno_location() #15
  %25 = load i32, ptr %call31, align 4
  %call32 = call ptr @gettext(ptr noundef @.str.1) #16
  %26 = load ptr, ptr %src_name.addr, align 8
  %call33 = call ptr @quotearg_style(i32 noundef 4, ptr noundef %26)
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %25, ptr noundef %call32, ptr noundef %call33) #17
  br label %if.end34

if.end34:                                         ; preds = %if.then30, %land.lhs.true27, %lor.lhs.false25
  %27 = load ptr, ptr %x.addr, align 8
  %require_preserve_context35 = getelementptr inbounds %struct.cp_options, ptr %27, i32 0, i32 25
  %28 = load i8, ptr %require_preserve_context35, align 4
  %tobool36 = trunc i8 %28 to i1
  br i1 %tobool36, label %if.then37, label %if.end38

if.then37:                                        ; preds = %if.end34
  store i1 false, ptr %retval, align 1
  br label %return

if.end38:                                         ; preds = %if.end34
  br label %if.end39

if.end39:                                         ; preds = %if.end38, %if.end23
  br label %if.end57

if.else40:                                        ; preds = %entry
  %29 = load ptr, ptr %x.addr, align 8
  %set_security_context = getelementptr inbounds %struct.cp_options, ptr %29, i32 0, i32 20
  %30 = load ptr, ptr %set_security_context, align 8
  %tobool41 = icmp ne ptr %30, null
  br i1 %tobool41, label %if.then42, label %if.end56

if.then42:                                        ; preds = %if.else40
  %31 = load i8, ptr %new_dst.addr, align 1
  %tobool43 = trunc i8 %31 to i1
  br i1 %tobool43, label %land.lhs.true44, label %if.end55

land.lhs.true44:                                  ; preds = %if.then42
  %32 = load ptr, ptr %x.addr, align 8
  %set_security_context45 = getelementptr inbounds %struct.cp_options, ptr %32, i32 0, i32 20
  %33 = load ptr, ptr %set_security_context45, align 8
  %34 = load ptr, ptr %dst_name.addr, align 8
  %35 = load i32, ptr %mode.addr, align 4
  %call46 = call i32 @defaultcon(ptr noundef %33, ptr noundef %34, i32 noundef %35)
  %cmp47 = icmp slt i32 %call46, 0
  br i1 %cmp47, label %land.lhs.true48, label %if.end55

land.lhs.true48:                                  ; preds = %land.lhs.true44
  %call49 = call ptr @__errno_location() #15
  %36 = load i32, ptr %call49, align 4
  %call50 = call zeroext i1 @ignorable_ctx_err(i32 noundef %36)
  br i1 %call50, label %if.end55, label %if.then51

if.then51:                                        ; preds = %land.lhs.true48
  %call52 = call ptr @__errno_location() #15
  %37 = load i32, ptr %call52, align 4
  %call53 = call ptr @gettext(ptr noundef @.str.2) #16
  %38 = load ptr, ptr %dst_name.addr, align 8
  %call54 = call ptr @quotearg_style(i32 noundef 4, ptr noundef %38)
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %37, ptr noundef %call53, ptr noundef %call54) #17
  br label %if.end55

if.end55:                                         ; preds = %if.then51, %land.lhs.true48, %land.lhs.true44, %if.then42
  br label %if.end56

if.end56:                                         ; preds = %if.end55, %if.else40
  br label %if.end57

if.end57:                                         ; preds = %if.end56, %if.end39
  store i1 true, ptr %retval, align 1
  br label %return

return:                                           ; preds = %if.end57, %if.then37, %if.then21
  %39 = load i1, ptr %retval, align 1
  ret i1 %39
}

declare i32 @rpl_lgetfilecon_raw(ptr noundef, ptr noundef) #1

declare i32 @setfscreatecon_raw(ptr noundef) #1

; Function Attrs: nounwind willreturn memory(none)
declare ptr @__errno_location() #2

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i1 @errno_unsupported(i32 noundef %err) #0 {
entry:
  %err.addr = alloca i32, align 4
  store i32 %err, ptr %err.addr, align 4
  %0 = load i32, ptr %err.addr, align 4
  %cmp = icmp eq i32 %0, 95
  br i1 %cmp, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %entry
  %1 = load i32, ptr %err.addr, align 4
  %cmp1 = icmp eq i32 %1, 61
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %entry
  %2 = phi i1 [ true, %entry ], [ %cmp1, %lor.rhs ]
  ret i1 %2
}

; Function Attrs: nounwind
declare ptr @gettext(ptr noundef) #3

declare ptr @quote(ptr noundef) #1

; Function Attrs: cold
declare void @error(i32 noundef, i32 noundef, ptr noundef, ...) #4

declare void @freecon(ptr noundef) #1

declare ptr @quotearg_style(i32 noundef, ptr noundef) #1

declare i32 @defaultcon(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i1 @ignorable_ctx_err(i32 noundef %err) #0 {
entry:
  %err.addr = alloca i32, align 4
  store i32 %err, ptr %err.addr, align 4
  %0 = load i32, ptr %err.addr, align 4
  %cmp = icmp eq i32 %0, 95
  br i1 %cmp, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %entry
  %1 = load i32, ptr %err.addr, align 4
  %cmp1 = icmp eq i32 %1, 61
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %entry
  %2 = phi i1 [ true, %entry ], [ %cmp1, %lor.rhs ]
  ret i1 %2
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local zeroext i1 @set_file_security_ctx(ptr noundef nonnull %dst_name, i1 noundef zeroext %recurse, ptr noundef nonnull %x) #0 {
entry:
  %retval = alloca i1, align 1
  %dst_name.addr = alloca ptr, align 8
  %recurse.addr = alloca i8, align 1
  %x.addr = alloca ptr, align 8
  %all_errors = alloca i8, align 1
  %some_errors = alloca i8, align 1
  store ptr %dst_name, ptr %dst_name.addr, align 8
  %frombool = zext i1 %recurse to i8
  store i8 %frombool, ptr %recurse.addr, align 1
  store ptr %x, ptr %x.addr, align 8
  %0 = load ptr, ptr %x.addr, align 8
  %data_copy_required = getelementptr inbounds %struct.cp_options, ptr %0, i32 0, i32 22
  %1 = load i8, ptr %data_copy_required, align 1
  %tobool = trunc i8 %1 to i1
  br i1 %tobool, label %lor.rhs, label %lor.end

lor.rhs:                                          ; preds = %entry
  %2 = load ptr, ptr %x.addr, align 8
  %require_preserve_context = getelementptr inbounds %struct.cp_options, ptr %2, i32 0, i32 25
  %3 = load i8, ptr %require_preserve_context, align 4
  %tobool1 = trunc i8 %3 to i1
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %entry
  %4 = phi i1 [ true, %entry ], [ %tobool1, %lor.rhs ]
  %frombool2 = zext i1 %4 to i8
  store i8 %frombool2, ptr %all_errors, align 1
  %5 = load i8, ptr %all_errors, align 1
  %tobool3 = trunc i8 %5 to i1
  br i1 %tobool3, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %lor.end
  %6 = load ptr, ptr %x.addr, align 8
  %reduce_diagnostics = getelementptr inbounds %struct.cp_options, ptr %6, i32 0, i32 28
  %7 = load i8, ptr %reduce_diagnostics, align 1
  %tobool4 = trunc i8 %7 to i1
  %lnot = xor i1 %tobool4, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %lor.end
  %8 = phi i1 [ false, %lor.end ], [ %lnot, %land.rhs ]
  %frombool5 = zext i1 %8 to i8
  store i8 %frombool5, ptr %some_errors, align 1
  %9 = load ptr, ptr %x.addr, align 8
  %set_security_context = getelementptr inbounds %struct.cp_options, ptr %9, i32 0, i32 20
  %10 = load ptr, ptr %set_security_context, align 8
  %11 = load ptr, ptr %dst_name.addr, align 8
  %12 = load i8, ptr %recurse.addr, align 1
  %tobool6 = trunc i8 %12 to i1
  %call = call zeroext i1 @restorecon(ptr noundef %10, ptr noundef %11, i1 noundef zeroext %tobool6)
  br i1 %call, label %if.end15, label %if.then

if.then:                                          ; preds = %land.end
  %13 = load i8, ptr %all_errors, align 1
  %tobool7 = trunc i8 %13 to i1
  br i1 %tobool7, label %if.then11, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then
  %14 = load i8, ptr %some_errors, align 1
  %tobool8 = trunc i8 %14 to i1
  br i1 %tobool8, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %lor.lhs.false
  %call9 = call ptr @__errno_location() #15
  %15 = load i32, ptr %call9, align 4
  %call10 = call zeroext i1 @errno_unsupported(i32 noundef %15)
  br i1 %call10, label %if.end, label %if.then11

if.then11:                                        ; preds = %land.lhs.true, %if.then
  %call12 = call ptr @__errno_location() #15
  %16 = load i32, ptr %call12, align 4
  %call13 = call ptr @gettext(ptr noundef @.str.3) #16
  %17 = load ptr, ptr %dst_name.addr, align 8
  %call14 = call ptr @quotearg_n_style(i32 noundef 0, i32 noundef 4, ptr noundef %17)
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %16, ptr noundef %call13, ptr noundef %call14) #17
  br label %if.end

if.end:                                           ; preds = %if.then11, %land.lhs.true, %lor.lhs.false
  store i1 false, ptr %retval, align 1
  br label %return

if.end15:                                         ; preds = %land.end
  store i1 true, ptr %retval, align 1
  br label %return

return:                                           ; preds = %if.end15, %if.end
  %18 = load i1, ptr %retval, align 1
  ret i1 %18
}

declare zeroext i1 @restorecon(ptr noundef, ptr noundef, i1 noundef zeroext) #1

declare ptr @quotearg_n_style(i32 noundef, i32 noundef, ptr noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dest_info_init(ptr noundef nonnull %x) #0 {
entry:
  %x.addr = alloca ptr, align 8
  store ptr %x, ptr %x.addr, align 8
  %call = call noalias ptr @hash_initialize(i64 noundef 61, ptr noundef null, ptr noundef @triple_hash, ptr noundef @triple_compare, ptr noundef @triple_free)
  %0 = load ptr, ptr %x.addr, align 8
  %dest_info = getelementptr inbounds %struct.cp_options, ptr %0, i32 0, i32 41
  store ptr %call, ptr %dest_info, align 8
  %1 = load ptr, ptr %x.addr, align 8
  %dest_info1 = getelementptr inbounds %struct.cp_options, ptr %1, i32 0, i32 41
  %2 = load ptr, ptr %dest_info1, align 8
  %tobool = icmp ne ptr %2, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @xalloc_die() #18
  unreachable

if.end:                                           ; preds = %entry
  ret void
}

; Function Attrs: nounwind willreturn memory(read)
declare i64 @triple_hash(ptr noundef, i64 noundef) #5

declare zeroext i1 @triple_compare(ptr noundef, ptr noundef) #1

declare void @triple_free(ptr noundef) #1

declare noalias ptr @hash_initialize(i64 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: noreturn
declare void @xalloc_die() #6

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @src_info_init(ptr noundef nonnull %x) #0 {
entry:
  %x.addr = alloca ptr, align 8
  store ptr %x, ptr %x.addr, align 8
  %call = call noalias ptr @hash_initialize(i64 noundef 61, ptr noundef null, ptr noundef @triple_hash_no_name, ptr noundef @triple_compare, ptr noundef @triple_free)
  %0 = load ptr, ptr %x.addr, align 8
  %src_info = getelementptr inbounds %struct.cp_options, ptr %0, i32 0, i32 42
  store ptr %call, ptr %src_info, align 8
  %1 = load ptr, ptr %x.addr, align 8
  %src_info1 = getelementptr inbounds %struct.cp_options, ptr %1, i32 0, i32 42
  %2 = load ptr, ptr %src_info1, align 8
  %tobool = icmp ne ptr %2, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @xalloc_die() #18
  unreachable

if.end:                                           ; preds = %entry
  ret void
}

; Function Attrs: nounwind willreturn memory(read)
declare i64 @triple_hash_no_name(ptr noundef, i64 noundef) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local zeroext i1 @copy(ptr noundef nonnull %src_name, ptr noundef nonnull %dst_name, i32 noundef %dst_dirfd, ptr noundef nonnull %dst_relname, i32 noundef %nonexistent_dst, ptr noundef nonnull %options, ptr noundef nonnull %copy_into_self, ptr noundef %rename_succeeded) #0 {
entry:
  %src_name.addr = alloca ptr, align 8
  %dst_name.addr = alloca ptr, align 8
  %dst_dirfd.addr = alloca i32, align 4
  %dst_relname.addr = alloca ptr, align 8
  %nonexistent_dst.addr = alloca i32, align 4
  %options.addr = alloca ptr, align 8
  %copy_into_self.addr = alloca ptr, align 8
  %rename_succeeded.addr = alloca ptr, align 8
  %first_dir_created_per_command_line_arg = alloca i8, align 1
  store ptr %src_name, ptr %src_name.addr, align 8
  store ptr %dst_name, ptr %dst_name.addr, align 8
  store i32 %dst_dirfd, ptr %dst_dirfd.addr, align 4
  store ptr %dst_relname, ptr %dst_relname.addr, align 8
  store i32 %nonexistent_dst, ptr %nonexistent_dst.addr, align 4
  store ptr %options, ptr %options.addr, align 8
  store ptr %copy_into_self, ptr %copy_into_self.addr, align 8
  store ptr %rename_succeeded, ptr %rename_succeeded.addr, align 8
  %0 = load ptr, ptr %options.addr, align 8
  call void @valid_options(ptr noundef %0)
  %1 = load ptr, ptr %src_name.addr, align 8
  store ptr %1, ptr @top_level_src_name, align 8
  %2 = load ptr, ptr %dst_name.addr, align 8
  store ptr %2, ptr @top_level_dst_name, align 8
  store i8 0, ptr %first_dir_created_per_command_line_arg, align 1
  %3 = load ptr, ptr %src_name.addr, align 8
  %4 = load ptr, ptr %dst_name.addr, align 8
  %5 = load i32, ptr %dst_dirfd.addr, align 4
  %6 = load ptr, ptr %dst_relname.addr, align 8
  %7 = load i32, ptr %nonexistent_dst.addr, align 4
  %8 = load ptr, ptr %options.addr, align 8
  %9 = load ptr, ptr %copy_into_self.addr, align 8
  %10 = load ptr, ptr %rename_succeeded.addr, align 8
  %call = call zeroext i1 @copy_internal(ptr noundef %3, ptr noundef %4, i32 noundef %5, ptr noundef %6, i32 noundef %7, ptr noundef null, ptr noundef null, ptr noundef %8, i1 noundef zeroext true, ptr noundef %first_dir_created_per_command_line_arg, ptr noundef %9, ptr noundef %10)
  ret i1 %call
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @valid_options(ptr noundef %co) #0 {
entry:
  %co.addr = alloca ptr, align 8
  store ptr %co, ptr %co.addr, align 8
  %0 = load ptr, ptr %co.addr, align 8
  %backup_type = getelementptr inbounds %struct.cp_options, ptr %0, i32 0, i32 0
  %1 = load i32, ptr %backup_type, align 8
  %cmp = icmp ule i32 %1, 3
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__assert_fail(ptr noundef @.str.4, ptr noundef @.str.5, i32 noundef 3357, ptr noundef @__PRETTY_FUNCTION__.valid_options) #19
  unreachable

if.end:                                           ; preds = %if.then
  %2 = load ptr, ptr %co.addr, align 8
  %sparse_mode = getelementptr inbounds %struct.cp_options, ptr %2, i32 0, i32 3
  %3 = load i32, ptr %sparse_mode, align 4
  %cmp1 = icmp eq i32 %3, 1
  br i1 %cmp1, label %if.then7, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %4 = load ptr, ptr %co.addr, align 8
  %sparse_mode2 = getelementptr inbounds %struct.cp_options, ptr %4, i32 0, i32 3
  %5 = load i32, ptr %sparse_mode2, align 4
  %cmp3 = icmp eq i32 %5, 2
  br i1 %cmp3, label %if.then7, label %lor.lhs.false4

lor.lhs.false4:                                   ; preds = %lor.lhs.false
  %6 = load ptr, ptr %co.addr, align 8
  %sparse_mode5 = getelementptr inbounds %struct.cp_options, ptr %6, i32 0, i32 3
  %7 = load i32, ptr %sparse_mode5, align 4
  %cmp6 = icmp eq i32 %7, 3
  br i1 %cmp6, label %if.then7, label %if.else8

if.then7:                                         ; preds = %lor.lhs.false4, %lor.lhs.false, %if.end
  br label %if.end9

if.else8:                                         ; preds = %lor.lhs.false4
  call void @__assert_fail(ptr noundef @.str.6, ptr noundef @.str.5, i32 noundef 3358, ptr noundef @__PRETTY_FUNCTION__.valid_options) #19
  unreachable

if.end9:                                          ; preds = %if.then7
  %8 = load ptr, ptr %co.addr, align 8
  %reflink_mode = getelementptr inbounds %struct.cp_options, ptr %8, i32 0, i32 40
  %9 = load i32, ptr %reflink_mode, align 4
  %cmp10 = icmp eq i32 %9, 0
  br i1 %cmp10, label %if.then17, label %lor.lhs.false11

lor.lhs.false11:                                  ; preds = %if.end9
  %10 = load ptr, ptr %co.addr, align 8
  %reflink_mode12 = getelementptr inbounds %struct.cp_options, ptr %10, i32 0, i32 40
  %11 = load i32, ptr %reflink_mode12, align 4
  %cmp13 = icmp eq i32 %11, 1
  br i1 %cmp13, label %if.then17, label %lor.lhs.false14

lor.lhs.false14:                                  ; preds = %lor.lhs.false11
  %12 = load ptr, ptr %co.addr, align 8
  %reflink_mode15 = getelementptr inbounds %struct.cp_options, ptr %12, i32 0, i32 40
  %13 = load i32, ptr %reflink_mode15, align 4
  %cmp16 = icmp eq i32 %13, 2
  br i1 %cmp16, label %if.then17, label %if.else18

if.then17:                                        ; preds = %lor.lhs.false14, %lor.lhs.false11, %if.end9
  br label %if.end19

if.else18:                                        ; preds = %lor.lhs.false14
  call void @__assert_fail(ptr noundef @.str.7, ptr noundef @.str.5, i32 noundef 3359, ptr noundef @__PRETTY_FUNCTION__.valid_options) #19
  unreachable

if.end19:                                         ; preds = %if.then17
  %14 = load ptr, ptr %co.addr, align 8
  %hard_link = getelementptr inbounds %struct.cp_options, ptr %14, i32 0, i32 8
  %15 = load i8, ptr %hard_link, align 1
  %tobool = trunc i8 %15 to i1
  br i1 %tobool, label %land.lhs.true, label %if.then21

land.lhs.true:                                    ; preds = %if.end19
  %16 = load ptr, ptr %co.addr, align 8
  %symbolic_link = getelementptr inbounds %struct.cp_options, ptr %16, i32 0, i32 31
  %17 = load i8, ptr %symbolic_link, align 2
  %tobool20 = trunc i8 %17 to i1
  br i1 %tobool20, label %if.else22, label %if.then21

if.then21:                                        ; preds = %land.lhs.true, %if.end19
  br label %if.end23

if.else22:                                        ; preds = %land.lhs.true
  call void @__assert_fail(ptr noundef @.str.8, ptr noundef @.str.5, i32 noundef 3360, ptr noundef @__PRETTY_FUNCTION__.valid_options) #19
  unreachable

if.end23:                                         ; preds = %if.then21
  %18 = load ptr, ptr %co.addr, align 8
  %reflink_mode24 = getelementptr inbounds %struct.cp_options, ptr %18, i32 0, i32 40
  %19 = load i32, ptr %reflink_mode24, align 4
  %cmp25 = icmp eq i32 %19, 2
  br i1 %cmp25, label %land.lhs.true26, label %if.then29

land.lhs.true26:                                  ; preds = %if.end23
  %20 = load ptr, ptr %co.addr, align 8
  %sparse_mode27 = getelementptr inbounds %struct.cp_options, ptr %20, i32 0, i32 3
  %21 = load i32, ptr %sparse_mode27, align 4
  %cmp28 = icmp ne i32 %21, 2
  br i1 %cmp28, label %if.else30, label %if.then29

if.then29:                                        ; preds = %land.lhs.true26, %if.end23
  br label %if.end31

if.else30:                                        ; preds = %land.lhs.true26
  call void @__assert_fail(ptr noundef @.str.9, ptr noundef @.str.5, i32 noundef 3363, ptr noundef @__PRETTY_FUNCTION__.valid_options) #19
  unreachable

if.end31:                                         ; preds = %if.then29
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i1 @copy_internal(ptr noundef %src_name, ptr noundef %dst_name, i32 noundef %dst_dirfd, ptr noundef %dst_relname, i32 noundef %nonexistent_dst, ptr noundef %parent, ptr noundef %ancestors, ptr noundef %x, i1 noundef zeroext %command_line_arg, ptr noundef %first_dir_created_per_command_line_arg, ptr noundef %copy_into_self, ptr noundef %rename_succeeded) #0 {
entry:
  %retval = alloca i1, align 1
  %src_name.addr = alloca ptr, align 8
  %dst_name.addr = alloca ptr, align 8
  %dst_dirfd.addr = alloca i32, align 4
  %dst_relname.addr = alloca ptr, align 8
  %nonexistent_dst.addr = alloca i32, align 4
  %parent.addr = alloca ptr, align 8
  %ancestors.addr = alloca ptr, align 8
  %x.addr = alloca ptr, align 8
  %command_line_arg.addr = alloca i8, align 1
  %first_dir_created_per_command_line_arg.addr = alloca ptr, align 8
  %copy_into_self.addr = alloca ptr, align 8
  %rename_succeeded.addr = alloca ptr, align 8
  %src_sb = alloca %struct.stat, align 8
  %dst_sb = alloca %struct.stat, align 8
  %src_mode = alloca i32, align 4
  %dst_mode = alloca i32, align 4
  %dst_mode_bits = alloca i32, align 4
  %omitted_permissions = alloca i32, align 4
  %restore_dst_mode = alloca i8, align 1
  %earlier_file = alloca ptr, align 8
  %dst_backup = alloca ptr, align 8
  %drelname = alloca ptr, align 8
  %delayed_ok = alloca i8, align 1
  %copied_as_regular = alloca i8, align 1
  %dest_is_symlink = alloca i8, align 1
  %have_dst_lstat = alloca i8, align 1
  %rename_errno = alloca i32, align 4
  %name = alloca ptr, align 8
  %dirfd = alloca i32, align 4
  %relname = alloca ptr, align 8
  %fstatat_flags = alloca i32, align 4
  %dereference97 = alloca i8, align 1
  %new_dst = alloca i8, align 1
  %use_lstat = alloca i8, align 1
  %return_now = alloca i8, align 1
  %return_val = alloca i8, align 1
  %skipped = alloca i8, align 1
  %options = alloca i32, align 4
  %srcbase = alloca ptr, align 8
  %fmt = alloca ptr, align 8
  %tmp_backup = alloca ptr, align 8
  %dirlen = alloca i64, align 8
  %backupsize = alloca i64, align 8
  %tmp_buf = alloca %struct.stat, align 8
  %dst_lstat_sb = alloca ptr, align 8
  %earlier = alloca ptr, align 8
  %quoted_dst_name = alloca ptr, align 8
  %dir = alloca ptr, align 8
  %mode784 = alloca i32, align 4
  %dot_sb = alloca %struct.stat, align 8
  %dst_parent_sb = alloca %struct.stat, align 8
  %dst_parent = alloca ptr, align 8
  %in_current_dir = alloca i8, align 1
  %err = alloca i32, align 4
  %replace = alloca i8, align 1
  %mode951 = alloca i32, align 4
  %mode981 = alloca i32, align 4
  %src_link_val = alloca ptr, align 8
  %symlink_err = alloca i32, align 4
  %dest_link_val = alloca ptr, align 8
  %sb = alloca %struct.stat, align 8
  %timespec = alloca [2 x %struct.timespec], align 16
  %tmp = alloca %struct.timespec, align 8
  %tmp1131 = alloca %struct.timespec, align 8
  %utimensat_flags = alloca i32, align 4
  %default_permissions = alloca i32, align 4
  %dst_relbackup = alloca ptr, align 8
  store ptr %src_name, ptr %src_name.addr, align 8
  store ptr %dst_name, ptr %dst_name.addr, align 8
  store i32 %dst_dirfd, ptr %dst_dirfd.addr, align 4
  store ptr %dst_relname, ptr %dst_relname.addr, align 8
  store i32 %nonexistent_dst, ptr %nonexistent_dst.addr, align 4
  store ptr %parent, ptr %parent.addr, align 8
  store ptr %ancestors, ptr %ancestors.addr, align 8
  store ptr %x, ptr %x.addr, align 8
  %frombool = zext i1 %command_line_arg to i8
  store i8 %frombool, ptr %command_line_arg.addr, align 1
  store ptr %first_dir_created_per_command_line_arg, ptr %first_dir_created_per_command_line_arg.addr, align 8
  store ptr %copy_into_self, ptr %copy_into_self.addr, align 8
  store ptr %rename_succeeded, ptr %rename_succeeded.addr, align 8
  store i8 0, ptr %restore_dst_mode, align 1
  store ptr null, ptr %earlier_file, align 8
  store ptr null, ptr %dst_backup, align 8
  %0 = load ptr, ptr %dst_relname.addr, align 8
  %1 = load i8, ptr %0, align 1
  %conv = sext i8 %1 to i32
  %tobool = icmp ne i32 %conv, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %2 = load ptr, ptr %dst_relname.addr, align 8
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %2, %cond.true ], [ @.str.10, %cond.false ]
  store ptr %cond, ptr %drelname, align 8
  store i8 0, ptr %copied_as_regular, align 1
  store i8 0, ptr %dest_is_symlink, align 1
  store i8 0, ptr %have_dst_lstat, align 1
  %3 = load ptr, ptr %copy_into_self.addr, align 8
  store i8 0, ptr %3, align 1
  %4 = load ptr, ptr %x.addr, align 8
  %rename_errno1 = getelementptr inbounds %struct.cp_options, ptr %4, i32 0, i32 39
  %5 = load i32, ptr %rename_errno1, align 8
  store i32 %5, ptr %rename_errno, align 4
  %6 = load ptr, ptr %x.addr, align 8
  %move_mode = getelementptr inbounds %struct.cp_options, ptr %6, i32 0, i32 9
  %7 = load i8, ptr %move_mode, align 8
  %tobool2 = trunc i8 %7 to i1
  br i1 %tobool2, label %land.lhs.true, label %if.end17

land.lhs.true:                                    ; preds = %cond.end
  %8 = load ptr, ptr %x.addr, align 8
  %exchange = getelementptr inbounds %struct.cp_options, ptr %8, i32 0, i32 11
  %9 = load i8, ptr %exchange, align 2
  %tobool4 = trunc i8 %9 to i1
  br i1 %tobool4, label %if.end17, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %10 = load i32, ptr %rename_errno, align 4
  %cmp = icmp slt i32 %10, 0
  br i1 %cmp, label %if.then6, label %if.end

if.then6:                                         ; preds = %if.then
  %11 = load ptr, ptr %src_name.addr, align 8
  %12 = load i32, ptr %dst_dirfd.addr, align 4
  %13 = load ptr, ptr %drelname, align 8
  %call = call i32 @renameatu(i32 noundef -100, ptr noundef %11, i32 noundef %12, ptr noundef %13, i32 noundef 1)
  %tobool7 = icmp ne i32 %call, 0
  br i1 %tobool7, label %cond.true8, label %cond.false10

cond.true8:                                       ; preds = %if.then6
  %call9 = call ptr @__errno_location() #15
  %14 = load i32, ptr %call9, align 4
  br label %cond.end11

cond.false10:                                     ; preds = %if.then6
  br label %cond.end11

cond.end11:                                       ; preds = %cond.false10, %cond.true8
  %cond12 = phi i32 [ %14, %cond.true8 ], [ 0, %cond.false10 ]
  store i32 %cond12, ptr %rename_errno, align 4
  br label %if.end

if.end:                                           ; preds = %cond.end11, %if.then
  %15 = load i32, ptr %rename_errno, align 4
  %cmp13 = icmp eq i32 %15, 0
  %16 = load ptr, ptr %rename_succeeded.addr, align 8
  %frombool15 = zext i1 %cmp13 to i8
  store i8 %frombool15, ptr %16, align 1
  %conv16 = zext i1 %cmp13 to i32
  store i32 %conv16, ptr %nonexistent_dst.addr, align 4
  br label %if.end17

if.end17:                                         ; preds = %if.end, %land.lhs.true, %cond.end
  %17 = load i32, ptr %rename_errno, align 4
  %cmp18 = icmp eq i32 %17, 0
  br i1 %cmp18, label %cond.true20, label %cond.false22

cond.true20:                                      ; preds = %if.end17
  %18 = load ptr, ptr %x.addr, align 8
  %last_file = getelementptr inbounds %struct.cp_options, ptr %18, i32 0, i32 38
  %19 = load i8, ptr %last_file, align 1
  %tobool21 = trunc i8 %19 to i1
  br i1 %tobool21, label %if.else, label %if.then31

cond.false22:                                     ; preds = %if.end17
  %20 = load i32, ptr %rename_errno, align 4
  %cmp23 = icmp ne i32 %20, 17
  br i1 %cmp23, label %if.then31, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %cond.false22
  %21 = load ptr, ptr %x.addr, align 8
  %update = getelementptr inbounds %struct.cp_options, ptr %21, i32 0, i32 32
  %22 = load i32, ptr %update, align 4
  %cmp25 = icmp ne i32 %22, 2
  br i1 %cmp25, label %land.lhs.true27, label %if.else

land.lhs.true27:                                  ; preds = %lor.lhs.false
  %23 = load ptr, ptr %x.addr, align 8
  %update28 = getelementptr inbounds %struct.cp_options, ptr %23, i32 0, i32 32
  %24 = load i32, ptr %update28, align 4
  %cmp29 = icmp ne i32 %24, 3
  br i1 %cmp29, label %if.then31, label %if.else

if.then31:                                        ; preds = %land.lhs.true27, %cond.false22, %cond.true20
  %25 = load i32, ptr %rename_errno, align 4
  %cmp32 = icmp eq i32 %25, 0
  br i1 %cmp32, label %cond.true34, label %cond.false35

cond.true34:                                      ; preds = %if.then31
  %26 = load ptr, ptr %dst_name.addr, align 8
  br label %cond.end36

cond.false35:                                     ; preds = %if.then31
  %27 = load ptr, ptr %src_name.addr, align 8
  br label %cond.end36

cond.end36:                                       ; preds = %cond.false35, %cond.true34
  %cond37 = phi ptr [ %26, %cond.true34 ], [ %27, %cond.false35 ]
  store ptr %cond37, ptr %name, align 8
  %28 = load i32, ptr %rename_errno, align 4
  %cmp38 = icmp eq i32 %28, 0
  br i1 %cmp38, label %cond.true40, label %cond.false41

cond.true40:                                      ; preds = %cond.end36
  %29 = load i32, ptr %dst_dirfd.addr, align 4
  br label %cond.end42

cond.false41:                                     ; preds = %cond.end36
  br label %cond.end42

cond.end42:                                       ; preds = %cond.false41, %cond.true40
  %cond43 = phi i32 [ %29, %cond.true40 ], [ -100, %cond.false41 ]
  store i32 %cond43, ptr %dirfd, align 4
  %30 = load i32, ptr %rename_errno, align 4
  %cmp44 = icmp eq i32 %30, 0
  br i1 %cmp44, label %cond.true46, label %cond.false47

cond.true46:                                      ; preds = %cond.end42
  %31 = load ptr, ptr %drelname, align 8
  br label %cond.end48

cond.false47:                                     ; preds = %cond.end42
  %32 = load ptr, ptr %src_name.addr, align 8
  br label %cond.end48

cond.end48:                                       ; preds = %cond.false47, %cond.true46
  %cond49 = phi ptr [ %31, %cond.true46 ], [ %32, %cond.false47 ]
  store ptr %cond49, ptr %relname, align 8
  %33 = load ptr, ptr %x.addr, align 8
  %dereference = getelementptr inbounds %struct.cp_options, ptr %33, i32 0, i32 1
  %34 = load i32, ptr %dereference, align 4
  %cmp50 = icmp eq i32 %34, 2
  %35 = zext i1 %cmp50 to i64
  %cond52 = select i1 %cmp50, i32 256, i32 0
  store i32 %cond52, ptr %fstatat_flags, align 4
  %36 = load i32, ptr %dirfd, align 4
  %37 = load ptr, ptr %relname, align 8
  %38 = load i32, ptr %fstatat_flags, align 4
  %call53 = call i32 @follow_fstatat(i32 noundef %36, ptr noundef %37, ptr noundef %src_sb, i32 noundef %38)
  %cmp54 = icmp ne i32 %call53, 0
  br i1 %cmp54, label %if.then56, label %if.end60

if.then56:                                        ; preds = %cond.end48
  %call57 = call ptr @__errno_location() #15
  %39 = load i32, ptr %call57, align 4
  %call58 = call ptr @gettext(ptr noundef @.str.11) #16
  %40 = load ptr, ptr %name, align 8
  %call59 = call ptr @quotearg_style(i32 noundef 4, ptr noundef %40)
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %39, ptr noundef %call58, ptr noundef %call59) #17
  store i1 false, ptr %retval, align 1
  br label %return

if.end60:                                         ; preds = %cond.end48
  %st_mode = getelementptr inbounds %struct.stat, ptr %src_sb, i32 0, i32 3
  %41 = load i32, ptr %st_mode, align 8
  store i32 %41, ptr %src_mode, align 4
  %42 = load i32, ptr %src_mode, align 4
  %and = and i32 %42, 61440
  %cmp61 = icmp eq i32 %and, 16384
  br i1 %cmp61, label %land.lhs.true63, label %if.end74

land.lhs.true63:                                  ; preds = %if.end60
  %43 = load ptr, ptr %x.addr, align 8
  %recursive = getelementptr inbounds %struct.cp_options, ptr %43, i32 0, i32 29
  %44 = load i8, ptr %recursive, align 8
  %tobool64 = trunc i8 %44 to i1
  br i1 %tobool64, label %if.end74, label %if.then65

if.then65:                                        ; preds = %land.lhs.true63
  %45 = load ptr, ptr %x.addr, align 8
  %install_mode = getelementptr inbounds %struct.cp_options, ptr %45, i32 0, i32 12
  %46 = load i8, ptr %install_mode, align 1
  %tobool66 = trunc i8 %46 to i1
  br i1 %tobool66, label %cond.false69, label %cond.true67

cond.true67:                                      ; preds = %if.then65
  %call68 = call ptr @gettext(ptr noundef @.str.12) #16
  br label %cond.end71

cond.false69:                                     ; preds = %if.then65
  %call70 = call ptr @gettext(ptr noundef @.str.13) #16
  br label %cond.end71

cond.end71:                                       ; preds = %cond.false69, %cond.true67
  %cond72 = phi ptr [ %call68, %cond.true67 ], [ %call70, %cond.false69 ]
  %47 = load ptr, ptr %src_name.addr, align 8
  %call73 = call ptr @quotearg_style(i32 noundef 4, ptr noundef %47)
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %cond72, ptr noundef %call73) #17
  store i1 false, ptr %retval, align 1
  br label %return

if.end74:                                         ; preds = %land.lhs.true63, %if.end60
  br label %if.end75

if.else:                                          ; preds = %land.lhs.true27, %lor.lhs.false, %cond.true20
  br label %if.end75

if.end75:                                         ; preds = %if.else, %if.end74
  %48 = load i8, ptr %command_line_arg.addr, align 1
  %tobool76 = trunc i8 %48 to i1
  br i1 %tobool76, label %land.lhs.true78, label %if.end96

land.lhs.true78:                                  ; preds = %if.end75
  %49 = load ptr, ptr %x.addr, align 8
  %src_info = getelementptr inbounds %struct.cp_options, ptr %49, i32 0, i32 42
  %50 = load ptr, ptr %src_info, align 8
  %tobool79 = icmp ne ptr %50, null
  br i1 %tobool79, label %if.then80, label %if.end96

if.then80:                                        ; preds = %land.lhs.true78
  %51 = load i32, ptr %src_mode, align 4
  %and81 = and i32 %51, 61440
  %cmp82 = icmp eq i32 %and81, 16384
  br i1 %cmp82, label %if.end94, label %land.lhs.true84

land.lhs.true84:                                  ; preds = %if.then80
  %52 = load ptr, ptr %x.addr, align 8
  %backup_type = getelementptr inbounds %struct.cp_options, ptr %52, i32 0, i32 0
  %53 = load i32, ptr %backup_type, align 8
  %cmp85 = icmp eq i32 %53, 0
  br i1 %cmp85, label %land.lhs.true87, label %if.end94

land.lhs.true87:                                  ; preds = %land.lhs.true84
  %54 = load ptr, ptr %x.addr, align 8
  %src_info88 = getelementptr inbounds %struct.cp_options, ptr %54, i32 0, i32 42
  %55 = load ptr, ptr %src_info88, align 8
  %56 = load ptr, ptr %src_name.addr, align 8
  %call89 = call zeroext i1 @seen_file(ptr noundef %55, ptr noundef %56, ptr noundef %src_sb)
  br i1 %call89, label %if.then91, label %if.end94

if.then91:                                        ; preds = %land.lhs.true87
  %call92 = call ptr @gettext(ptr noundef @.str.14) #16
  %57 = load ptr, ptr %src_name.addr, align 8
  %call93 = call ptr @quotearg_style(i32 noundef 4, ptr noundef %57)
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %call92, ptr noundef %call93) #17
  store i1 true, ptr %retval, align 1
  br label %return

if.end94:                                         ; preds = %land.lhs.true87, %land.lhs.true84, %if.then80
  %58 = load ptr, ptr %x.addr, align 8
  %src_info95 = getelementptr inbounds %struct.cp_options, ptr %58, i32 0, i32 42
  %59 = load ptr, ptr %src_info95, align 8
  %60 = load ptr, ptr %src_name.addr, align 8
  call void @record_file(ptr noundef %59, ptr noundef %60, ptr noundef %src_sb)
  br label %if.end96

if.end96:                                         ; preds = %if.end94, %land.lhs.true78, %if.end75
  %61 = load ptr, ptr %x.addr, align 8
  %62 = load i8, ptr %command_line_arg.addr, align 1
  %tobool98 = trunc i8 %62 to i1
  %call99 = call zeroext i1 @should_dereference(ptr noundef %61, i1 noundef zeroext %tobool98) #20
  %frombool100 = zext i1 %call99 to i8
  store i8 %frombool100, ptr %dereference97, align 1
  %63 = load i32, ptr %nonexistent_dst.addr, align 4
  %cmp101 = icmp slt i32 0, %63
  %frombool103 = zext i1 %cmp101 to i8
  store i8 %frombool103, ptr %new_dst, align 1
  %64 = load i8, ptr %new_dst, align 1
  %tobool104 = trunc i8 %64 to i1
  br i1 %tobool104, label %if.end455, label %if.then105

if.then105:                                       ; preds = %if.end96
  %65 = load i32, ptr %rename_errno, align 4
  %cmp106 = icmp eq i32 %65, 17
  br i1 %cmp106, label %land.lhs.true108, label %if.then116

land.lhs.true108:                                 ; preds = %if.then105
  %66 = load ptr, ptr %x.addr, align 8
  %update109 = getelementptr inbounds %struct.cp_options, ptr %66, i32 0, i32 32
  %67 = load i32, ptr %update109, align 4
  %cmp110 = icmp eq i32 %67, 2
  br i1 %cmp110, label %if.end187, label %lor.lhs.false112

lor.lhs.false112:                                 ; preds = %land.lhs.true108
  %68 = load ptr, ptr %x.addr, align 8
  %update113 = getelementptr inbounds %struct.cp_options, ptr %68, i32 0, i32 32
  %69 = load i32, ptr %update113, align 4
  %cmp114 = icmp eq i32 %69, 3
  br i1 %cmp114, label %if.end187, label %if.then116

if.then116:                                       ; preds = %lor.lhs.false112, %if.then105
  %70 = load i32, ptr %src_mode, align 4
  %and117 = and i32 %70, 61440
  %cmp118 = icmp eq i32 %and117, 32768
  br i1 %cmp118, label %lor.lhs.false132, label %land.lhs.true120

land.lhs.true120:                                 ; preds = %if.then116
  %71 = load ptr, ptr %x.addr, align 8
  %copy_as_regular = getelementptr inbounds %struct.cp_options, ptr %71, i32 0, i32 5
  %72 = load i8, ptr %copy_as_regular, align 4
  %tobool121 = trunc i8 %72 to i1
  br i1 %tobool121, label %lor.lhs.false122, label %lor.end

lor.lhs.false122:                                 ; preds = %land.lhs.true120
  %73 = load i32, ptr %src_mode, align 4
  %and123 = and i32 %73, 61440
  %cmp124 = icmp eq i32 %and123, 16384
  br i1 %cmp124, label %land.lhs.true126, label %lor.lhs.false128

land.lhs.true126:                                 ; preds = %lor.lhs.false122
  %74 = load ptr, ptr %x.addr, align 8
  %keep_directory_symlink = getelementptr inbounds %struct.cp_options, ptr %74, i32 0, i32 34
  %75 = load i8, ptr %keep_directory_symlink, align 1
  %tobool127 = trunc i8 %75 to i1
  br i1 %tobool127, label %lor.lhs.false128, label %lor.end

lor.lhs.false128:                                 ; preds = %land.lhs.true126, %lor.lhs.false122
  %76 = load i32, ptr %src_mode, align 4
  %and129 = and i32 %76, 61440
  %cmp130 = icmp eq i32 %and129, 40960
  br i1 %cmp130, label %lor.end, label %lor.lhs.false132

lor.lhs.false132:                                 ; preds = %lor.lhs.false128, %if.then116
  %77 = load ptr, ptr %x.addr, align 8
  %move_mode133 = getelementptr inbounds %struct.cp_options, ptr %77, i32 0, i32 9
  %78 = load i8, ptr %move_mode133, align 8
  %tobool134 = trunc i8 %78 to i1
  br i1 %tobool134, label %lor.end, label %lor.lhs.false136

lor.lhs.false136:                                 ; preds = %lor.lhs.false132
  %79 = load ptr, ptr %x.addr, align 8
  %symbolic_link = getelementptr inbounds %struct.cp_options, ptr %79, i32 0, i32 31
  %80 = load i8, ptr %symbolic_link, align 2
  %tobool137 = trunc i8 %80 to i1
  br i1 %tobool137, label %lor.end, label %lor.lhs.false139

lor.lhs.false139:                                 ; preds = %lor.lhs.false136
  %81 = load ptr, ptr %x.addr, align 8
  %hard_link = getelementptr inbounds %struct.cp_options, ptr %81, i32 0, i32 8
  %82 = load i8, ptr %hard_link, align 1
  %tobool140 = trunc i8 %82 to i1
  br i1 %tobool140, label %lor.end, label %lor.lhs.false142

lor.lhs.false142:                                 ; preds = %lor.lhs.false139
  %83 = load ptr, ptr %x.addr, align 8
  %backup_type143 = getelementptr inbounds %struct.cp_options, ptr %83, i32 0, i32 0
  %84 = load i32, ptr %backup_type143, align 8
  %cmp144 = icmp ne i32 %84, 0
  br i1 %cmp144, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %lor.lhs.false142
  %85 = load ptr, ptr %x.addr, align 8
  %unlink_dest_before_opening = getelementptr inbounds %struct.cp_options, ptr %85, i32 0, i32 6
  %86 = load i8, ptr %unlink_dest_before_opening, align 1
  %tobool146 = trunc i8 %86 to i1
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %lor.lhs.false142, %lor.lhs.false139, %lor.lhs.false136, %lor.lhs.false132, %lor.lhs.false128, %land.lhs.true126, %land.lhs.true120
  %87 = phi i1 [ true, %lor.lhs.false142 ], [ true, %lor.lhs.false139 ], [ true, %lor.lhs.false136 ], [ true, %lor.lhs.false132 ], [ true, %lor.lhs.false128 ], [ true, %land.lhs.true126 ], [ true, %land.lhs.true120 ], [ %tobool146, %lor.rhs ]
  %frombool148 = zext i1 %87 to i8
  store i8 %frombool148, ptr %use_lstat, align 1
  %88 = load i8, ptr %use_lstat, align 1
  %tobool149 = trunc i8 %88 to i1
  br i1 %tobool149, label %if.else154, label %land.lhs.true150

land.lhs.true150:                                 ; preds = %lor.end
  %89 = load i32, ptr %nonexistent_dst.addr, align 4
  %cmp151 = icmp slt i32 %89, 0
  br i1 %cmp151, label %if.then153, label %if.else154

if.then153:                                       ; preds = %land.lhs.true150
  store i8 1, ptr %new_dst, align 1
  br label %if.end186

if.else154:                                       ; preds = %land.lhs.true150, %lor.end
  %90 = load i32, ptr %dst_dirfd.addr, align 4
  %91 = load ptr, ptr %drelname, align 8
  %92 = load i8, ptr %use_lstat, align 1
  %tobool155 = trunc i8 %92 to i1
  %93 = zext i1 %tobool155 to i64
  %cond157 = select i1 %tobool155, i32 256, i32 0
  %call158 = call i32 @follow_fstatat(i32 noundef %90, ptr noundef %91, ptr noundef %dst_sb, i32 noundef %cond157)
  %cmp159 = icmp sle i32 0, %call158
  br i1 %cmp159, label %if.then161, label %if.else164

if.then161:                                       ; preds = %if.else154
  %94 = load i8, ptr %use_lstat, align 1
  %tobool162 = trunc i8 %94 to i1
  %frombool163 = zext i1 %tobool162 to i8
  store i8 %frombool163, ptr %have_dst_lstat, align 1
  store i32 17, ptr %rename_errno, align 4
  br label %if.end185

if.else164:                                       ; preds = %if.else154
  %call165 = call ptr @__errno_location() #15
  %95 = load i32, ptr %call165, align 4
  %cmp166 = icmp eq i32 %95, 2
  br i1 %cmp166, label %if.then168, label %if.else169

if.then168:                                       ; preds = %if.else164
  store i8 1, ptr %new_dst, align 1
  br label %if.end184

if.else169:                                       ; preds = %if.else164
  %call170 = call ptr @__errno_location() #15
  %96 = load i32, ptr %call170, align 4
  %cmp171 = icmp eq i32 %96, 40
  br i1 %cmp171, label %land.lhs.true173, label %if.else179

land.lhs.true173:                                 ; preds = %if.else169
  %97 = load i8, ptr %use_lstat, align 1
  %tobool174 = trunc i8 %97 to i1
  br i1 %tobool174, label %if.else179, label %land.lhs.true175

land.lhs.true175:                                 ; preds = %land.lhs.true173
  %98 = load ptr, ptr %x.addr, align 8
  %unlink_dest_after_failed_open = getelementptr inbounds %struct.cp_options, ptr %98, i32 0, i32 7
  %99 = load i8, ptr %unlink_dest_after_failed_open, align 2
  %tobool176 = trunc i8 %99 to i1
  br i1 %tobool176, label %if.then178, label %if.else179

if.then178:                                       ; preds = %land.lhs.true175
  br label %if.end183

if.else179:                                       ; preds = %land.lhs.true175, %land.lhs.true173, %if.else169
  %call180 = call ptr @__errno_location() #15
  %100 = load i32, ptr %call180, align 4
  %call181 = call ptr @gettext(ptr noundef @.str.11) #16
  %101 = load ptr, ptr %dst_name.addr, align 8
  %call182 = call ptr @quotearg_style(i32 noundef 4, ptr noundef %101)
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %100, ptr noundef %call181, ptr noundef %call182) #17
  store i1 false, ptr %retval, align 1
  br label %return

if.end183:                                        ; preds = %if.then178
  br label %if.end184

if.end184:                                        ; preds = %if.end183, %if.then168
  br label %if.end185

if.end185:                                        ; preds = %if.end184, %if.then161
  br label %if.end186

if.end186:                                        ; preds = %if.end185, %if.then153
  br label %if.end187

if.end187:                                        ; preds = %if.end186, %lor.lhs.false112, %land.lhs.true108
  %102 = load i32, ptr %rename_errno, align 4
  %cmp188 = icmp eq i32 %102, 17
  br i1 %cmp188, label %if.then190, label %if.end454

if.then190:                                       ; preds = %if.end187
  store i8 0, ptr %return_now, align 1
  store i8 1, ptr %return_val, align 1
  store i8 0, ptr %skipped, align 1
  %103 = load ptr, ptr %x.addr, align 8
  %update191 = getelementptr inbounds %struct.cp_options, ptr %103, i32 0, i32 32
  %104 = load i32, ptr %update191, align 4
  %cmp192 = icmp ne i32 %104, 2
  br i1 %cmp192, label %land.lhs.true194, label %if.end204

land.lhs.true194:                                 ; preds = %if.then190
  %105 = load ptr, ptr %x.addr, align 8
  %update195 = getelementptr inbounds %struct.cp_options, ptr %105, i32 0, i32 32
  %106 = load i32, ptr %update195, align 4
  %cmp196 = icmp ne i32 %106, 3
  br i1 %cmp196, label %land.lhs.true198, label %if.end204

land.lhs.true198:                                 ; preds = %land.lhs.true194
  %107 = load ptr, ptr %src_name.addr, align 8
  %108 = load i32, ptr %dst_dirfd.addr, align 4
  %109 = load ptr, ptr %drelname, align 8
  %110 = load ptr, ptr %x.addr, align 8
  %call199 = call zeroext i1 @same_file_ok(ptr noundef %107, ptr noundef %src_sb, i32 noundef %108, ptr noundef %109, ptr noundef %dst_sb, ptr noundef %110, ptr noundef %return_now)
  br i1 %call199, label %if.end204, label %if.then200

if.then200:                                       ; preds = %land.lhs.true198
  %call201 = call ptr @gettext(ptr noundef @.str.15) #16
  %111 = load ptr, ptr %src_name.addr, align 8
  %call202 = call ptr @quotearg_n_style(i32 noundef 0, i32 noundef 4, ptr noundef %111)
  %112 = load ptr, ptr %dst_name.addr, align 8
  %call203 = call ptr @quotearg_n_style(i32 noundef 1, i32 noundef 4, ptr noundef %112)
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %call201, ptr noundef %call202, ptr noundef %call203) #17
  store i1 false, ptr %retval, align 1
  br label %return

if.end204:                                        ; preds = %land.lhs.true198, %land.lhs.true194, %if.then190
  %113 = load ptr, ptr %x.addr, align 8
  %update205 = getelementptr inbounds %struct.cp_options, ptr %113, i32 0, i32 32
  %114 = load i32, ptr %update205, align 4
  %cmp206 = icmp eq i32 %114, 1
  br i1 %cmp206, label %land.lhs.true208, label %if.end242

land.lhs.true208:                                 ; preds = %if.end204
  %115 = load i32, ptr %src_mode, align 4
  %and209 = and i32 %115, 61440
  %cmp210 = icmp eq i32 %and209, 16384
  br i1 %cmp210, label %if.end242, label %if.then212

if.then212:                                       ; preds = %land.lhs.true208
  %116 = load ptr, ptr %x.addr, align 8
  %preserve_timestamps = getelementptr inbounds %struct.cp_options, ptr %116, i32 0, i32 18
  %117 = load i8, ptr %preserve_timestamps, align 1
  %tobool213 = trunc i8 %117 to i1
  br i1 %tobool213, label %land.rhs, label %land.end222

land.rhs:                                         ; preds = %if.then212
  %118 = load ptr, ptr %x.addr, align 8
  %move_mode215 = getelementptr inbounds %struct.cp_options, ptr %118, i32 0, i32 9
  %119 = load i8, ptr %move_mode215, align 8
  %tobool216 = trunc i8 %119 to i1
  br i1 %tobool216, label %land.rhs218, label %land.end

land.rhs218:                                      ; preds = %land.rhs
  %st_dev = getelementptr inbounds %struct.stat, ptr %dst_sb, i32 0, i32 0
  %120 = load i64, ptr %st_dev, align 8
  %st_dev219 = getelementptr inbounds %struct.stat, ptr %src_sb, i32 0, i32 0
  %121 = load i64, ptr %st_dev219, align 8
  %cmp220 = icmp eq i64 %120, %121
  br label %land.end

land.end:                                         ; preds = %land.rhs218, %land.rhs
  %122 = phi i1 [ false, %land.rhs ], [ %cmp220, %land.rhs218 ]
  %lnot = xor i1 %122, true
  br label %land.end222

land.end222:                                      ; preds = %land.end, %if.then212
  %123 = phi i1 [ false, %if.then212 ], [ %lnot, %land.end ]
  %124 = zext i1 %123 to i64
  %cond223 = select i1 %123, i32 1, i32 0
  store i32 %cond223, ptr %options, align 4
  %125 = load i32, ptr %dst_dirfd.addr, align 4
  %126 = load ptr, ptr %dst_relname.addr, align 8
  %127 = load i32, ptr %options, align 4
  %call224 = call i32 @utimecmpat(i32 noundef %125, ptr noundef %126, ptr noundef %dst_sb, ptr noundef %src_sb, i32 noundef %127)
  %cmp225 = icmp sle i32 0, %call224
  br i1 %cmp225, label %if.then227, label %if.end241

if.then227:                                       ; preds = %land.end222
  %128 = load ptr, ptr %rename_succeeded.addr, align 8
  %tobool228 = icmp ne ptr %128, null
  br i1 %tobool228, label %if.then229, label %if.end230

if.then229:                                       ; preds = %if.then227
  %129 = load ptr, ptr %rename_succeeded.addr, align 8
  store i8 1, ptr %129, align 1
  br label %if.end230

if.end230:                                        ; preds = %if.then229, %if.then227
  %130 = load ptr, ptr %dst_relname.addr, align 8
  %st_ino = getelementptr inbounds %struct.stat, ptr %src_sb, i32 0, i32 1
  %131 = load i64, ptr %st_ino, align 8
  %st_dev231 = getelementptr inbounds %struct.stat, ptr %src_sb, i32 0, i32 0
  %132 = load i64, ptr %st_dev231, align 8
  %call232 = call ptr @remember_copied(ptr noundef %130, i64 noundef %131, i64 noundef %132)
  store ptr %call232, ptr %earlier_file, align 8
  %133 = load ptr, ptr %earlier_file, align 8
  %tobool233 = icmp ne ptr %133, null
  br i1 %tobool233, label %if.then234, label %if.end240

if.then234:                                       ; preds = %if.end230
  %134 = load i32, ptr %dst_dirfd.addr, align 4
  %135 = load ptr, ptr %earlier_file, align 8
  %136 = load ptr, ptr %dst_name.addr, align 8
  %137 = load i32, ptr %dst_dirfd.addr, align 4
  %138 = load ptr, ptr %dst_relname.addr, align 8
  %139 = load ptr, ptr %x.addr, align 8
  %verbose = getelementptr inbounds %struct.cp_options, ptr %139, i32 0, i32 33
  %140 = load i8, ptr %verbose, align 8
  %tobool235 = trunc i8 %140 to i1
  %141 = load i8, ptr %dereference97, align 1
  %tobool236 = trunc i8 %141 to i1
  %call237 = call zeroext i1 @create_hard_link(ptr noundef null, i32 noundef %134, ptr noundef %135, ptr noundef %136, i32 noundef %137, ptr noundef %138, i1 noundef zeroext true, i1 noundef zeroext %tobool235, i1 noundef zeroext %tobool236)
  br i1 %call237, label %if.end239, label %if.then238

if.then238:                                       ; preds = %if.then234
  br label %un_backup

if.end239:                                        ; preds = %if.then234
  br label %if.end240

if.end240:                                        ; preds = %if.end239, %if.end230
  store i8 1, ptr %skipped, align 1
  br label %skip

if.end241:                                        ; preds = %land.end222
  br label %if.end242

if.end242:                                        ; preds = %if.end241, %land.lhs.true208, %if.end204
  %142 = load ptr, ptr %x.addr, align 8
  %move_mode243 = getelementptr inbounds %struct.cp_options, ptr %142, i32 0, i32 9
  %143 = load i8, ptr %move_mode243, align 8
  %tobool244 = trunc i8 %143 to i1
  br i1 %tobool244, label %if.then245, label %if.else256

if.then245:                                       ; preds = %if.end242
  %144 = load ptr, ptr %x.addr, align 8
  %145 = load ptr, ptr %dst_name.addr, align 8
  %146 = load i32, ptr %dst_dirfd.addr, align 4
  %147 = load ptr, ptr %drelname, align 8
  %call246 = call zeroext i1 @abandon_move(ptr noundef %144, ptr noundef %145, i32 noundef %146, ptr noundef %147, ptr noundef %dst_sb)
  br i1 %call246, label %if.then247, label %if.end255

if.then247:                                       ; preds = %if.then245
  %148 = load ptr, ptr %rename_succeeded.addr, align 8
  %tobool248 = icmp ne ptr %148, null
  br i1 %tobool248, label %if.then249, label %if.end250

if.then249:                                       ; preds = %if.then247
  %149 = load ptr, ptr %rename_succeeded.addr, align 8
  store i8 1, ptr %149, align 1
  br label %if.end250

if.end250:                                        ; preds = %if.then249, %if.then247
  store i8 1, ptr %skipped, align 1
  %150 = load ptr, ptr %x.addr, align 8
  %update251 = getelementptr inbounds %struct.cp_options, ptr %150, i32 0, i32 32
  %151 = load i32, ptr %update251, align 4
  %cmp252 = icmp eq i32 %151, 2
  %frombool254 = zext i1 %cmp252 to i8
  store i8 %frombool254, ptr %return_val, align 1
  br label %if.end255

if.end255:                                        ; preds = %if.end250, %if.then245
  br label %if.end279

if.else256:                                       ; preds = %if.end242
  %152 = load i32, ptr %src_mode, align 4
  %and257 = and i32 %152, 61440
  %cmp258 = icmp eq i32 %and257, 16384
  br i1 %cmp258, label %if.end278, label %land.lhs.true260

land.lhs.true260:                                 ; preds = %if.else256
  %153 = load ptr, ptr %x.addr, align 8
  %update261 = getelementptr inbounds %struct.cp_options, ptr %153, i32 0, i32 32
  %154 = load i32, ptr %update261, align 4
  %cmp262 = icmp eq i32 %154, 2
  br i1 %cmp262, label %if.then273, label %lor.lhs.false264

lor.lhs.false264:                                 ; preds = %land.lhs.true260
  %155 = load ptr, ptr %x.addr, align 8
  %update265 = getelementptr inbounds %struct.cp_options, ptr %155, i32 0, i32 32
  %156 = load i32, ptr %update265, align 4
  %cmp266 = icmp eq i32 %156, 3
  br i1 %cmp266, label %if.then273, label %lor.lhs.false268

lor.lhs.false268:                                 ; preds = %lor.lhs.false264
  %157 = load ptr, ptr %x.addr, align 8
  %interactive = getelementptr inbounds %struct.cp_options, ptr %157, i32 0, i32 2
  %158 = load i32, ptr %interactive, align 8
  %cmp269 = icmp eq i32 %158, 3
  br i1 %cmp269, label %land.lhs.true271, label %if.end278

land.lhs.true271:                                 ; preds = %lor.lhs.false268
  %159 = load ptr, ptr %x.addr, align 8
  %160 = load ptr, ptr %dst_name.addr, align 8
  %161 = load i32, ptr %dst_dirfd.addr, align 4
  %162 = load ptr, ptr %dst_relname.addr, align 8
  %call272 = call zeroext i1 @overwrite_ok(ptr noundef %159, ptr noundef %160, i32 noundef %161, ptr noundef %162, ptr noundef %dst_sb)
  br i1 %call272, label %if.end278, label %if.then273

if.then273:                                       ; preds = %land.lhs.true271, %lor.lhs.false264, %land.lhs.true260
  store i8 1, ptr %skipped, align 1
  %163 = load ptr, ptr %x.addr, align 8
  %update274 = getelementptr inbounds %struct.cp_options, ptr %163, i32 0, i32 32
  %164 = load i32, ptr %update274, align 4
  %cmp275 = icmp eq i32 %164, 2
  %frombool277 = zext i1 %cmp275 to i8
  store i8 %frombool277, ptr %return_val, align 1
  br label %if.end278

if.end278:                                        ; preds = %if.then273, %land.lhs.true271, %lor.lhs.false268, %if.else256
  br label %if.end279

if.end279:                                        ; preds = %if.end278, %if.end255
  br label %skip

skip:                                             ; preds = %if.end279, %if.end240
  %165 = load i8, ptr %skipped, align 1
  %tobool280 = trunc i8 %165 to i1
  br i1 %tobool280, label %if.then281, label %if.end296

if.then281:                                       ; preds = %skip
  %166 = load ptr, ptr %x.addr, align 8
  %update282 = getelementptr inbounds %struct.cp_options, ptr %166, i32 0, i32 32
  %167 = load i32, ptr %update282, align 4
  %cmp283 = icmp eq i32 %167, 3
  br i1 %cmp283, label %if.then285, label %if.else288

if.then285:                                       ; preds = %if.then281
  %call286 = call ptr @gettext(ptr noundef @.str.16) #16
  %168 = load ptr, ptr %dst_name.addr, align 8
  %call287 = call ptr @quotearg_style(i32 noundef 4, ptr noundef %168)
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %call286, ptr noundef %call287) #17
  br label %if.end295

if.else288:                                       ; preds = %if.then281
  %169 = load ptr, ptr %x.addr, align 8
  %debug = getelementptr inbounds %struct.cp_options, ptr %169, i32 0, i32 35
  %170 = load i8, ptr %debug, align 2
  %tobool289 = trunc i8 %170 to i1
  br i1 %tobool289, label %if.then290, label %if.end294

if.then290:                                       ; preds = %if.else288
  %call291 = call ptr @gettext(ptr noundef @.str.17) #16
  %171 = load ptr, ptr %dst_name.addr, align 8
  %call292 = call ptr @quotearg_style(i32 noundef 4, ptr noundef %171)
  %call293 = call i32 (ptr, ...) @printf(ptr noundef %call291, ptr noundef %call292)
  br label %if.end294

if.end294:                                        ; preds = %if.then290, %if.else288
  br label %if.end295

if.end295:                                        ; preds = %if.end294, %if.then285
  store i8 1, ptr %return_now, align 1
  br label %if.end296

if.end296:                                        ; preds = %if.end295, %skip
  %172 = load i8, ptr %return_now, align 1
  %tobool297 = trunc i8 %172 to i1
  br i1 %tobool297, label %if.then298, label %if.end300

if.then298:                                       ; preds = %if.end296
  %173 = load i8, ptr %return_val, align 1
  %tobool299 = trunc i8 %173 to i1
  store i1 %tobool299, ptr %retval, align 1
  br label %return

if.end300:                                        ; preds = %if.end296
  %174 = load i32, ptr %src_mode, align 4
  %and301 = and i32 %174, 61440
  %cmp302 = icmp eq i32 %and301, 16384
  %lnot304 = xor i1 %cmp302, true
  %lnot.ext = zext i1 %lnot304 to i32
  %st_mode305 = getelementptr inbounds %struct.stat, ptr %dst_sb, i32 0, i32 3
  %175 = load i32, ptr %st_mode305, align 8
  %and306 = and i32 %175, 61440
  %cmp307 = icmp eq i32 %and306, 16384
  %lnot309 = xor i1 %cmp307, true
  %lnot.ext310 = zext i1 %lnot309 to i32
  %cmp311 = icmp ne i32 %lnot.ext, %lnot.ext310
  br i1 %cmp311, label %land.lhs.true313, label %if.end328

land.lhs.true313:                                 ; preds = %if.end300
  %176 = load ptr, ptr %x.addr, align 8
  %backup_type314 = getelementptr inbounds %struct.cp_options, ptr %176, i32 0, i32 0
  %177 = load i32, ptr %backup_type314, align 8
  %cmp315 = icmp eq i32 %177, 0
  br i1 %cmp315, label %land.lhs.true317, label %if.end328

land.lhs.true317:                                 ; preds = %land.lhs.true313
  %178 = load ptr, ptr %x.addr, align 8
  %exchange318 = getelementptr inbounds %struct.cp_options, ptr %178, i32 0, i32 11
  %179 = load i8, ptr %exchange318, align 2
  %tobool319 = trunc i8 %179 to i1
  br i1 %tobool319, label %if.end328, label %if.then320

if.then320:                                       ; preds = %land.lhs.true317
  %180 = load i32, ptr %src_mode, align 4
  %and321 = and i32 %180, 61440
  %cmp322 = icmp eq i32 %and321, 16384
  %181 = zext i1 %cmp322 to i64
  %cond324 = select i1 %cmp322, ptr @.str.18, ptr @.str.19
  %call325 = call ptr @gettext(ptr noundef %cond324) #16
  %182 = load ptr, ptr %dst_name.addr, align 8
  %call326 = call ptr @quotearg_n_style(i32 noundef 0, i32 noundef 4, ptr noundef %182)
  %183 = load ptr, ptr %src_name.addr, align 8
  %call327 = call ptr @quotearg_n_style(i32 noundef 1, i32 noundef 4, ptr noundef %183)
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %call325, ptr noundef %call326, ptr noundef %call327) #17
  store i1 false, ptr %retval, align 1
  br label %return

if.end328:                                        ; preds = %land.lhs.true317, %land.lhs.true313, %if.end300
  %st_mode329 = getelementptr inbounds %struct.stat, ptr %dst_sb, i32 0, i32 3
  %184 = load i32, ptr %st_mode329, align 8
  %and330 = and i32 %184, 61440
  %cmp331 = icmp eq i32 %and330, 16384
  br i1 %cmp331, label %if.end350, label %land.lhs.true333

land.lhs.true333:                                 ; preds = %if.end328
  %185 = load i8, ptr %command_line_arg.addr, align 1
  %tobool334 = trunc i8 %185 to i1
  br i1 %tobool334, label %land.lhs.true336, label %if.end350

land.lhs.true336:                                 ; preds = %land.lhs.true333
  %186 = load ptr, ptr %x.addr, align 8
  %backup_type337 = getelementptr inbounds %struct.cp_options, ptr %186, i32 0, i32 0
  %187 = load i32, ptr %backup_type337, align 8
  %cmp338 = icmp ne i32 %187, 3
  br i1 %cmp338, label %land.lhs.true340, label %if.end350

land.lhs.true340:                                 ; preds = %land.lhs.true336
  %188 = load ptr, ptr %x.addr, align 8
  %exchange341 = getelementptr inbounds %struct.cp_options, ptr %188, i32 0, i32 11
  %189 = load i8, ptr %exchange341, align 2
  %tobool342 = trunc i8 %189 to i1
  br i1 %tobool342, label %if.end350, label %land.lhs.true343

land.lhs.true343:                                 ; preds = %land.lhs.true340
  %190 = load ptr, ptr %x.addr, align 8
  %dest_info = getelementptr inbounds %struct.cp_options, ptr %190, i32 0, i32 41
  %191 = load ptr, ptr %dest_info, align 8
  %192 = load ptr, ptr %dst_relname.addr, align 8
  %call344 = call zeroext i1 @seen_file(ptr noundef %191, ptr noundef %192, ptr noundef %dst_sb)
  br i1 %call344, label %if.then346, label %if.end350

if.then346:                                       ; preds = %land.lhs.true343
  %call347 = call ptr @gettext(ptr noundef @.str.20) #16
  %193 = load ptr, ptr %dst_name.addr, align 8
  %call348 = call ptr @quotearg_n_style(i32 noundef 0, i32 noundef 4, ptr noundef %193)
  %194 = load ptr, ptr %src_name.addr, align 8
  %call349 = call ptr @quotearg_n_style(i32 noundef 1, i32 noundef 4, ptr noundef %194)
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %call347, ptr noundef %call348, ptr noundef %call349) #17
  store i1 false, ptr %retval, align 1
  br label %return

if.end350:                                        ; preds = %land.lhs.true343, %land.lhs.true340, %land.lhs.true336, %land.lhs.true333, %if.end328
  %195 = load ptr, ptr %x.addr, align 8
  %backup_type351 = getelementptr inbounds %struct.cp_options, ptr %195, i32 0, i32 0
  %196 = load i32, ptr %backup_type351, align 8
  %cmp352 = icmp ne i32 %196, 0
  br i1 %cmp352, label %land.lhs.true354, label %if.else402

land.lhs.true354:                                 ; preds = %if.end350
  %197 = load ptr, ptr %src_name.addr, align 8
  %call355 = call ptr @last_component(ptr noundef %197) #20
  store ptr %call355, ptr %srcbase, align 8
  %call356 = call zeroext i1 @dot_or_dotdot(ptr noundef %call355)
  br i1 %call356, label %if.else402, label %land.lhs.true357

land.lhs.true357:                                 ; preds = %land.lhs.true354
  %198 = load ptr, ptr %x.addr, align 8
  %move_mode358 = getelementptr inbounds %struct.cp_options, ptr %198, i32 0, i32 9
  %199 = load i8, ptr %move_mode358, align 8
  %tobool359 = trunc i8 %199 to i1
  br i1 %tobool359, label %if.then366, label %lor.lhs.false361

lor.lhs.false361:                                 ; preds = %land.lhs.true357
  %st_mode362 = getelementptr inbounds %struct.stat, ptr %dst_sb, i32 0, i32 3
  %200 = load i32, ptr %st_mode362, align 8
  %and363 = and i32 %200, 61440
  %cmp364 = icmp eq i32 %and363, 16384
  br i1 %cmp364, label %if.else402, label %if.then366

if.then366:                                       ; preds = %lor.lhs.false361, %land.lhs.true357
  %201 = load ptr, ptr %x.addr, align 8
  %backup_type367 = getelementptr inbounds %struct.cp_options, ptr %201, i32 0, i32 0
  %202 = load i32, ptr %backup_type367, align 8
  %cmp368 = icmp ne i32 %202, 3
  br i1 %cmp368, label %land.lhs.true370, label %if.end385

land.lhs.true370:                                 ; preds = %if.then366
  %203 = load ptr, ptr %srcbase, align 8
  %204 = load i32, ptr %dst_dirfd.addr, align 4
  %205 = load ptr, ptr %dst_relname.addr, align 8
  %call371 = call zeroext i1 @source_is_dst_backup(ptr noundef %203, ptr noundef %src_sb, i32 noundef %204, ptr noundef %205)
  br i1 %call371, label %if.then373, label %if.end385

if.then373:                                       ; preds = %land.lhs.true370
  %206 = load ptr, ptr %x.addr, align 8
  %move_mode374 = getelementptr inbounds %struct.cp_options, ptr %206, i32 0, i32 9
  %207 = load i8, ptr %move_mode374, align 8
  %tobool375 = trunc i8 %207 to i1
  br i1 %tobool375, label %cond.true377, label %cond.false379

cond.true377:                                     ; preds = %if.then373
  %call378 = call ptr @gettext(ptr noundef @.str.21) #16
  br label %cond.end381

cond.false379:                                    ; preds = %if.then373
  %call380 = call ptr @gettext(ptr noundef @.str.22) #16
  br label %cond.end381

cond.end381:                                      ; preds = %cond.false379, %cond.true377
  %cond382 = phi ptr [ %call378, %cond.true377 ], [ %call380, %cond.false379 ]
  store ptr %cond382, ptr %fmt, align 8
  %208 = load ptr, ptr %fmt, align 8
  %209 = load ptr, ptr %dst_name.addr, align 8
  %call383 = call ptr @quotearg_n_style(i32 noundef 0, i32 noundef 4, ptr noundef %209)
  %210 = load ptr, ptr %src_name.addr, align 8
  %call384 = call ptr @quotearg_n_style(i32 noundef 1, i32 noundef 4, ptr noundef %210)
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %208, ptr noundef %call383, ptr noundef %call384) #17
  store i1 false, ptr %retval, align 1
  br label %return

if.end385:                                        ; preds = %land.lhs.true370, %if.then366
  %211 = load i32, ptr %dst_dirfd.addr, align 4
  %212 = load ptr, ptr %dst_relname.addr, align 8
  %213 = load ptr, ptr %x.addr, align 8
  %backup_type386 = getelementptr inbounds %struct.cp_options, ptr %213, i32 0, i32 0
  %214 = load i32, ptr %backup_type386, align 8
  %call387 = call noalias ptr @backup_file_rename(i32 noundef %211, ptr noundef %212, i32 noundef %214)
  store ptr %call387, ptr %tmp_backup, align 8
  %215 = load ptr, ptr %tmp_backup, align 8
  %tobool388 = icmp ne ptr %215, null
  br i1 %tobool388, label %if.then389, label %if.else392

if.then389:                                       ; preds = %if.end385
  %216 = load ptr, ptr %dst_relname.addr, align 8
  %217 = load ptr, ptr %dst_name.addr, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %216 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %217 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  store i64 %sub.ptr.sub, ptr %dirlen, align 8
  %218 = load ptr, ptr %tmp_backup, align 8
  %call390 = call i64 @strlen(ptr noundef %218) #20
  %add = add i64 %call390, 1
  store i64 %add, ptr %backupsize, align 8
  %219 = load i64, ptr %dirlen, align 8
  %220 = load i64, ptr %backupsize, align 8
  %add391 = add nsw i64 %219, %220
  %221 = alloca i8, i64 %add391, align 16
  store ptr %221, ptr %dst_backup, align 8
  %222 = load ptr, ptr %dst_backup, align 8
  %223 = load ptr, ptr %dst_name.addr, align 8
  %224 = load i64, ptr %dirlen, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %222, ptr align 1 %223, i64 %224, i1 false)
  %225 = getelementptr inbounds i8, ptr %222, i64 %224
  %226 = load ptr, ptr %tmp_backup, align 8
  %227 = load i64, ptr %backupsize, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %225, ptr align 1 %226, i64 %227, i1 false)
  %228 = load ptr, ptr %tmp_backup, align 8
  call void @free(ptr noundef %228) #16
  br label %if.end401

if.else392:                                       ; preds = %if.end385
  %call393 = call ptr @__errno_location() #15
  %229 = load i32, ptr %call393, align 4
  %cmp394 = icmp ne i32 %229, 2
  br i1 %cmp394, label %if.then396, label %if.end400

if.then396:                                       ; preds = %if.else392
  %call397 = call ptr @__errno_location() #15
  %230 = load i32, ptr %call397, align 4
  %call398 = call ptr @gettext(ptr noundef @.str.23) #16
  %231 = load ptr, ptr %dst_name.addr, align 8
  %call399 = call ptr @quotearg_style(i32 noundef 4, ptr noundef %231)
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %230, ptr noundef %call398, ptr noundef %call399) #17
  store i1 false, ptr %retval, align 1
  br label %return

if.end400:                                        ; preds = %if.else392
  br label %if.end401

if.end401:                                        ; preds = %if.end400, %if.then389
  store i8 1, ptr %new_dst, align 1
  br label %if.end453

if.else402:                                       ; preds = %lor.lhs.false361, %land.lhs.true354, %if.end350
  %st_mode403 = getelementptr inbounds %struct.stat, ptr %dst_sb, i32 0, i32 3
  %232 = load i32, ptr %st_mode403, align 8
  %and404 = and i32 %232, 61440
  %cmp405 = icmp eq i32 %and404, 16384
  br i1 %cmp405, label %if.end452, label %land.lhs.true407

land.lhs.true407:                                 ; preds = %if.else402
  %233 = load ptr, ptr %x.addr, align 8
  %move_mode408 = getelementptr inbounds %struct.cp_options, ptr %233, i32 0, i32 9
  %234 = load i8, ptr %move_mode408, align 8
  %tobool409 = trunc i8 %234 to i1
  br i1 %tobool409, label %if.end452, label %land.lhs.true410

land.lhs.true410:                                 ; preds = %land.lhs.true407
  %235 = load ptr, ptr %x.addr, align 8
  %unlink_dest_before_opening411 = getelementptr inbounds %struct.cp_options, ptr %235, i32 0, i32 6
  %236 = load i8, ptr %unlink_dest_before_opening411, align 1
  %tobool412 = trunc i8 %236 to i1
  br i1 %tobool412, label %if.then432, label %lor.lhs.false414

lor.lhs.false414:                                 ; preds = %land.lhs.true410
  %237 = load ptr, ptr %x.addr, align 8
  %data_copy_required = getelementptr inbounds %struct.cp_options, ptr %237, i32 0, i32 22
  %238 = load i8, ptr %data_copy_required, align 1
  %tobool415 = trunc i8 %238 to i1
  br i1 %tobool415, label %land.lhs.true417, label %if.end452

land.lhs.true417:                                 ; preds = %lor.lhs.false414
  %239 = load ptr, ptr %x.addr, align 8
  %preserve_links = getelementptr inbounds %struct.cp_options, ptr %239, i32 0, i32 21
  %240 = load i8, ptr %preserve_links, align 8
  %tobool418 = trunc i8 %240 to i1
  br i1 %tobool418, label %land.lhs.true420, label %lor.lhs.false423

land.lhs.true420:                                 ; preds = %land.lhs.true417
  %st_nlink = getelementptr inbounds %struct.stat, ptr %dst_sb, i32 0, i32 2
  %241 = load i64, ptr %st_nlink, align 8
  %cmp421 = icmp ult i64 1, %241
  br i1 %cmp421, label %if.then432, label %lor.lhs.false423

lor.lhs.false423:                                 ; preds = %land.lhs.true420, %land.lhs.true417
  %242 = load ptr, ptr %x.addr, align 8
  %dereference424 = getelementptr inbounds %struct.cp_options, ptr %242, i32 0, i32 1
  %243 = load i32, ptr %dereference424, align 4
  %cmp425 = icmp eq i32 %243, 2
  br i1 %cmp425, label %land.lhs.true427, label %if.end452

land.lhs.true427:                                 ; preds = %lor.lhs.false423
  %st_mode428 = getelementptr inbounds %struct.stat, ptr %src_sb, i32 0, i32 3
  %244 = load i32, ptr %st_mode428, align 8
  %and429 = and i32 %244, 61440
  %cmp430 = icmp eq i32 %and429, 32768
  br i1 %cmp430, label %if.end452, label %if.then432

if.then432:                                       ; preds = %land.lhs.true427, %land.lhs.true420, %land.lhs.true410
  %245 = load i32, ptr %dst_dirfd.addr, align 4
  %246 = load ptr, ptr %dst_relname.addr, align 8
  %call433 = call i32 @unlinkat(i32 noundef %245, ptr noundef %246, i32 noundef 0) #16
  %cmp434 = icmp ne i32 %call433, 0
  br i1 %cmp434, label %land.lhs.true436, label %if.end444

land.lhs.true436:                                 ; preds = %if.then432
  %call437 = call ptr @__errno_location() #15
  %247 = load i32, ptr %call437, align 4
  %cmp438 = icmp ne i32 %247, 2
  br i1 %cmp438, label %if.then440, label %if.end444

if.then440:                                       ; preds = %land.lhs.true436
  %call441 = call ptr @__errno_location() #15
  %248 = load i32, ptr %call441, align 4
  %call442 = call ptr @gettext(ptr noundef @.str.24) #16
  %249 = load ptr, ptr %dst_name.addr, align 8
  %call443 = call ptr @quotearg_style(i32 noundef 4, ptr noundef %249)
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %248, ptr noundef %call442, ptr noundef %call443) #17
  store i1 false, ptr %retval, align 1
  br label %return

if.end444:                                        ; preds = %land.lhs.true436, %if.then432
  store i8 1, ptr %new_dst, align 1
  %250 = load ptr, ptr %x.addr, align 8
  %verbose445 = getelementptr inbounds %struct.cp_options, ptr %250, i32 0, i32 33
  %251 = load i8, ptr %verbose445, align 8
  %tobool446 = trunc i8 %251 to i1
  br i1 %tobool446, label %if.then447, label %if.end451

if.then447:                                       ; preds = %if.end444
  %call448 = call ptr @gettext(ptr noundef @.str.25) #16
  %252 = load ptr, ptr %dst_name.addr, align 8
  %call449 = call ptr @quotearg_style(i32 noundef 4, ptr noundef %252)
  %call450 = call i32 (ptr, ...) @printf(ptr noundef %call448, ptr noundef %call449)
  br label %if.end451

if.end451:                                        ; preds = %if.then447, %if.end444
  br label %if.end452

if.end452:                                        ; preds = %if.end451, %land.lhs.true427, %lor.lhs.false423, %lor.lhs.false414, %land.lhs.true407, %if.else402
  br label %if.end453

if.end453:                                        ; preds = %if.end452, %if.end401
  br label %if.end454

if.end454:                                        ; preds = %if.end453, %if.end187
  br label %if.end455

if.end455:                                        ; preds = %if.end454, %if.end96
  %253 = load i8, ptr %command_line_arg.addr, align 1
  %tobool456 = trunc i8 %253 to i1
  br i1 %tobool456, label %land.lhs.true458, label %if.end497

land.lhs.true458:                                 ; preds = %if.end455
  %254 = load ptr, ptr %x.addr, align 8
  %dest_info459 = getelementptr inbounds %struct.cp_options, ptr %254, i32 0, i32 41
  %255 = load ptr, ptr %dest_info459, align 8
  %tobool460 = icmp ne ptr %255, null
  br i1 %tobool460, label %land.lhs.true461, label %if.end497

land.lhs.true461:                                 ; preds = %land.lhs.true458
  %256 = load ptr, ptr %x.addr, align 8
  %move_mode462 = getelementptr inbounds %struct.cp_options, ptr %256, i32 0, i32 9
  %257 = load i8, ptr %move_mode462, align 8
  %tobool463 = trunc i8 %257 to i1
  br i1 %tobool463, label %if.end497, label %land.lhs.true464

land.lhs.true464:                                 ; preds = %land.lhs.true461
  %258 = load ptr, ptr %x.addr, align 8
  %backup_type465 = getelementptr inbounds %struct.cp_options, ptr %258, i32 0, i32 0
  %259 = load i32, ptr %backup_type465, align 8
  %cmp466 = icmp eq i32 %259, 0
  br i1 %cmp466, label %if.then468, label %if.end497

if.then468:                                       ; preds = %land.lhs.true464
  %260 = load i8, ptr %have_dst_lstat, align 1
  %tobool469 = trunc i8 %260 to i1
  br i1 %tobool469, label %cond.true471, label %cond.false472

cond.true471:                                     ; preds = %if.then468
  br label %cond.end480

cond.false472:                                    ; preds = %if.then468
  %261 = load i32, ptr %dst_dirfd.addr, align 4
  %262 = load ptr, ptr %drelname, align 8
  %call473 = call i32 @fstatat(i32 noundef %261, ptr noundef %262, ptr noundef %tmp_buf, i32 noundef 256) #16
  %cmp474 = icmp slt i32 %call473, 0
  br i1 %cmp474, label %cond.true476, label %cond.false477

cond.true476:                                     ; preds = %cond.false472
  br label %cond.end478

cond.false477:                                    ; preds = %cond.false472
  br label %cond.end478

cond.end478:                                      ; preds = %cond.false477, %cond.true476
  %cond479 = phi ptr [ null, %cond.true476 ], [ %tmp_buf, %cond.false477 ]
  br label %cond.end480

cond.end480:                                      ; preds = %cond.end478, %cond.true471
  %cond481 = phi ptr [ %dst_sb, %cond.true471 ], [ %cond479, %cond.end478 ]
  store ptr %cond481, ptr %dst_lstat_sb, align 8
  %263 = load ptr, ptr %dst_lstat_sb, align 8
  %tobool482 = icmp ne ptr %263, null
  br i1 %tobool482, label %land.lhs.true483, label %if.end496

land.lhs.true483:                                 ; preds = %cond.end480
  %264 = load ptr, ptr %dst_lstat_sb, align 8
  %st_mode484 = getelementptr inbounds %struct.stat, ptr %264, i32 0, i32 3
  %265 = load i32, ptr %st_mode484, align 8
  %and485 = and i32 %265, 61440
  %cmp486 = icmp eq i32 %and485, 40960
  br i1 %cmp486, label %land.lhs.true488, label %if.end496

land.lhs.true488:                                 ; preds = %land.lhs.true483
  %266 = load ptr, ptr %x.addr, align 8
  %dest_info489 = getelementptr inbounds %struct.cp_options, ptr %266, i32 0, i32 41
  %267 = load ptr, ptr %dest_info489, align 8
  %268 = load ptr, ptr %dst_relname.addr, align 8
  %269 = load ptr, ptr %dst_lstat_sb, align 8
  %call490 = call zeroext i1 @seen_file(ptr noundef %267, ptr noundef %268, ptr noundef %269)
  br i1 %call490, label %if.then492, label %if.end496

if.then492:                                       ; preds = %land.lhs.true488
  %call493 = call ptr @gettext(ptr noundef @.str.26) #16
  %270 = load ptr, ptr %src_name.addr, align 8
  %call494 = call ptr @quotearg_n_style(i32 noundef 0, i32 noundef 4, ptr noundef %270)
  %271 = load ptr, ptr %dst_name.addr, align 8
  %call495 = call ptr @quotearg_n_style(i32 noundef 1, i32 noundef 4, ptr noundef %271)
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %call493, ptr noundef %call494, ptr noundef %call495) #17
  store i1 false, ptr %retval, align 1
  br label %return

if.end496:                                        ; preds = %land.lhs.true488, %land.lhs.true483, %cond.end480
  br label %if.end497

if.end497:                                        ; preds = %if.end496, %land.lhs.true464, %land.lhs.true461, %land.lhs.true458, %if.end455
  %272 = load ptr, ptr %x.addr, align 8
  %verbose498 = getelementptr inbounds %struct.cp_options, ptr %272, i32 0, i32 33
  %273 = load i8, ptr %verbose498, align 8
  %tobool499 = trunc i8 %273 to i1
  br i1 %tobool499, label %land.lhs.true501, label %if.end509

land.lhs.true501:                                 ; preds = %if.end497
  %274 = load ptr, ptr %x.addr, align 8
  %move_mode502 = getelementptr inbounds %struct.cp_options, ptr %274, i32 0, i32 9
  %275 = load i8, ptr %move_mode502, align 8
  %tobool503 = trunc i8 %275 to i1
  br i1 %tobool503, label %if.end509, label %land.lhs.true504

land.lhs.true504:                                 ; preds = %land.lhs.true501
  %276 = load i32, ptr %src_mode, align 4
  %and505 = and i32 %276, 61440
  %cmp506 = icmp eq i32 %and505, 16384
  br i1 %cmp506, label %if.end509, label %if.then508

if.then508:                                       ; preds = %land.lhs.true504
  %277 = load ptr, ptr %src_name.addr, align 8
  %278 = load ptr, ptr %dst_name.addr, align 8
  %279 = load ptr, ptr %dst_backup, align 8
  call void @emit_verbose(ptr noundef @.str.27, ptr noundef %277, ptr noundef %278, ptr noundef %279)
  br label %if.end509

if.end509:                                        ; preds = %if.then508, %land.lhs.true504, %land.lhs.true501, %if.end497
  %280 = load i32, ptr %rename_errno, align 4
  %cmp510 = icmp eq i32 %280, 0
  br i1 %cmp510, label %if.then516, label %lor.lhs.false512

lor.lhs.false512:                                 ; preds = %if.end509
  %281 = load ptr, ptr %x.addr, align 8
  %exchange513 = getelementptr inbounds %struct.cp_options, ptr %281, i32 0, i32 11
  %282 = load i8, ptr %exchange513, align 2
  %tobool514 = trunc i8 %282 to i1
  br i1 %tobool514, label %if.then516, label %if.else517

if.then516:                                       ; preds = %lor.lhs.false512, %if.end509
  store ptr null, ptr %earlier_file, align 8
  br label %if.end577

if.else517:                                       ; preds = %lor.lhs.false512
  %283 = load ptr, ptr %x.addr, align 8
  %recursive518 = getelementptr inbounds %struct.cp_options, ptr %283, i32 0, i32 29
  %284 = load i8, ptr %recursive518, align 8
  %tobool519 = trunc i8 %284 to i1
  br i1 %tobool519, label %land.lhs.true521, label %if.else536

land.lhs.true521:                                 ; preds = %if.else517
  %285 = load i32, ptr %src_mode, align 4
  %and522 = and i32 %285, 61440
  %cmp523 = icmp eq i32 %and522, 16384
  br i1 %cmp523, label %if.then525, label %if.else536

if.then525:                                       ; preds = %land.lhs.true521
  %286 = load i8, ptr %command_line_arg.addr, align 1
  %tobool526 = trunc i8 %286 to i1
  br i1 %tobool526, label %if.then527, label %if.else531

if.then527:                                       ; preds = %if.then525
  %287 = load ptr, ptr %dst_relname.addr, align 8
  %st_ino528 = getelementptr inbounds %struct.stat, ptr %src_sb, i32 0, i32 1
  %288 = load i64, ptr %st_ino528, align 8
  %st_dev529 = getelementptr inbounds %struct.stat, ptr %src_sb, i32 0, i32 0
  %289 = load i64, ptr %st_dev529, align 8
  %call530 = call ptr @remember_copied(ptr noundef %287, i64 noundef %288, i64 noundef %289)
  store ptr %call530, ptr %earlier_file, align 8
  br label %if.end535

if.else531:                                       ; preds = %if.then525
  %st_ino532 = getelementptr inbounds %struct.stat, ptr %src_sb, i32 0, i32 1
  %290 = load i64, ptr %st_ino532, align 8
  %st_dev533 = getelementptr inbounds %struct.stat, ptr %src_sb, i32 0, i32 0
  %291 = load i64, ptr %st_dev533, align 8
  %call534 = call ptr @src_to_dest_lookup(i64 noundef %290, i64 noundef %291)
  store ptr %call534, ptr %earlier_file, align 8
  br label %if.end535

if.end535:                                        ; preds = %if.else531, %if.then527
  br label %if.end576

if.else536:                                       ; preds = %land.lhs.true521, %if.else517
  %292 = load ptr, ptr %x.addr, align 8
  %move_mode537 = getelementptr inbounds %struct.cp_options, ptr %292, i32 0, i32 9
  %293 = load i8, ptr %move_mode537, align 8
  %tobool538 = trunc i8 %293 to i1
  br i1 %tobool538, label %land.lhs.true540, label %if.else548

land.lhs.true540:                                 ; preds = %if.else536
  %st_nlink541 = getelementptr inbounds %struct.stat, ptr %src_sb, i32 0, i32 2
  %294 = load i64, ptr %st_nlink541, align 8
  %cmp542 = icmp eq i64 %294, 1
  br i1 %cmp542, label %if.then544, label %if.else548

if.then544:                                       ; preds = %land.lhs.true540
  %st_ino545 = getelementptr inbounds %struct.stat, ptr %src_sb, i32 0, i32 1
  %295 = load i64, ptr %st_ino545, align 8
  %st_dev546 = getelementptr inbounds %struct.stat, ptr %src_sb, i32 0, i32 0
  %296 = load i64, ptr %st_dev546, align 8
  %call547 = call ptr @src_to_dest_lookup(i64 noundef %295, i64 noundef %296)
  store ptr %call547, ptr %earlier_file, align 8
  br label %if.end575

if.else548:                                       ; preds = %land.lhs.true540, %if.else536
  %297 = load ptr, ptr %x.addr, align 8
  %preserve_links549 = getelementptr inbounds %struct.cp_options, ptr %297, i32 0, i32 21
  %298 = load i8, ptr %preserve_links549, align 8
  %tobool550 = trunc i8 %298 to i1
  br i1 %tobool550, label %land.lhs.true552, label %if.end574

land.lhs.true552:                                 ; preds = %if.else548
  %299 = load ptr, ptr %x.addr, align 8
  %hard_link553 = getelementptr inbounds %struct.cp_options, ptr %299, i32 0, i32 8
  %300 = load i8, ptr %hard_link553, align 1
  %tobool554 = trunc i8 %300 to i1
  br i1 %tobool554, label %if.end574, label %land.lhs.true555

land.lhs.true555:                                 ; preds = %land.lhs.true552
  %st_nlink556 = getelementptr inbounds %struct.stat, ptr %src_sb, i32 0, i32 2
  %301 = load i64, ptr %st_nlink556, align 8
  %cmp557 = icmp ult i64 1, %301
  br i1 %cmp557, label %if.then570, label %lor.lhs.false559

lor.lhs.false559:                                 ; preds = %land.lhs.true555
  %302 = load i8, ptr %command_line_arg.addr, align 1
  %tobool560 = trunc i8 %302 to i1
  br i1 %tobool560, label %land.lhs.true562, label %lor.lhs.false566

land.lhs.true562:                                 ; preds = %lor.lhs.false559
  %303 = load ptr, ptr %x.addr, align 8
  %dereference563 = getelementptr inbounds %struct.cp_options, ptr %303, i32 0, i32 1
  %304 = load i32, ptr %dereference563, align 4
  %cmp564 = icmp eq i32 %304, 3
  br i1 %cmp564, label %if.then570, label %lor.lhs.false566

lor.lhs.false566:                                 ; preds = %land.lhs.true562, %lor.lhs.false559
  %305 = load ptr, ptr %x.addr, align 8
  %dereference567 = getelementptr inbounds %struct.cp_options, ptr %305, i32 0, i32 1
  %306 = load i32, ptr %dereference567, align 4
  %cmp568 = icmp eq i32 %306, 4
  br i1 %cmp568, label %if.then570, label %if.end574

if.then570:                                       ; preds = %lor.lhs.false566, %land.lhs.true562, %land.lhs.true555
  %307 = load ptr, ptr %dst_relname.addr, align 8
  %st_ino571 = getelementptr inbounds %struct.stat, ptr %src_sb, i32 0, i32 1
  %308 = load i64, ptr %st_ino571, align 8
  %st_dev572 = getelementptr inbounds %struct.stat, ptr %src_sb, i32 0, i32 0
  %309 = load i64, ptr %st_dev572, align 8
  %call573 = call ptr @remember_copied(ptr noundef %307, i64 noundef %308, i64 noundef %309)
  store ptr %call573, ptr %earlier_file, align 8
  br label %if.end574

if.end574:                                        ; preds = %if.then570, %lor.lhs.false566, %land.lhs.true552, %if.else548
  br label %if.end575

if.end575:                                        ; preds = %if.end574, %if.then544
  br label %if.end576

if.end576:                                        ; preds = %if.end575, %if.end535
  br label %if.end577

if.end577:                                        ; preds = %if.end576, %if.then516
  %310 = load ptr, ptr %earlier_file, align 8
  %tobool578 = icmp ne ptr %310, null
  br i1 %tobool578, label %if.then579, label %if.end629

if.then579:                                       ; preds = %if.end577
  %311 = load i32, ptr %src_mode, align 4
  %and580 = and i32 %311, 61440
  %cmp581 = icmp eq i32 %and580, 16384
  br i1 %cmp581, label %if.then583, label %if.else621

if.then583:                                       ; preds = %if.then579
  %312 = load ptr, ptr %src_name.addr, align 8
  %313 = load i32, ptr %dst_dirfd.addr, align 4
  %314 = load ptr, ptr %earlier_file, align 8
  %call584 = call zeroext i1 @same_nameat(i32 noundef -100, ptr noundef %312, i32 noundef %313, ptr noundef %314)
  br i1 %call584, label %if.then585, label %if.else589

if.then585:                                       ; preds = %if.then583
  %call586 = call ptr @gettext(ptr noundef @.str.28) #16
  %315 = load ptr, ptr @top_level_src_name, align 8
  %call587 = call ptr @quotearg_n_style(i32 noundef 0, i32 noundef 4, ptr noundef %315)
  %316 = load ptr, ptr @top_level_dst_name, align 8
  %call588 = call ptr @quotearg_n_style(i32 noundef 1, i32 noundef 4, ptr noundef %316)
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %call586, ptr noundef %call587, ptr noundef %call588) #17
  %317 = load ptr, ptr %copy_into_self.addr, align 8
  store i8 1, ptr %317, align 1
  br label %un_backup

if.else589:                                       ; preds = %if.then583
  %318 = load i32, ptr %dst_dirfd.addr, align 4
  %319 = load ptr, ptr %dst_relname.addr, align 8
  %320 = load i32, ptr %dst_dirfd.addr, align 4
  %321 = load ptr, ptr %earlier_file, align 8
  %call590 = call zeroext i1 @same_nameat(i32 noundef %318, ptr noundef %319, i32 noundef %320, ptr noundef %321)
  br i1 %call590, label %if.then591, label %if.else601

if.then591:                                       ; preds = %if.else589
  %call592 = call ptr @gettext(ptr noundef @.str.29) #16
  %322 = load ptr, ptr @top_level_src_name, align 8
  %call593 = call ptr @quotearg_style(i32 noundef 4, ptr noundef %322)
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %call592, ptr noundef %call593) #17
  %323 = load ptr, ptr %x.addr, align 8
  %move_mode594 = getelementptr inbounds %struct.cp_options, ptr %323, i32 0, i32 9
  %324 = load i8, ptr %move_mode594, align 8
  %tobool595 = trunc i8 %324 to i1
  br i1 %tobool595, label %land.lhs.true597, label %if.end600

land.lhs.true597:                                 ; preds = %if.then591
  %325 = load ptr, ptr %rename_succeeded.addr, align 8
  %tobool598 = icmp ne ptr %325, null
  br i1 %tobool598, label %if.then599, label %if.end600

if.then599:                                       ; preds = %land.lhs.true597
  %326 = load ptr, ptr %rename_succeeded.addr, align 8
  store i8 1, ptr %326, align 1
  br label %if.end600

if.end600:                                        ; preds = %if.then599, %land.lhs.true597, %if.then591
  store i1 true, ptr %retval, align 1
  br label %return

if.else601:                                       ; preds = %if.else589
  %327 = load ptr, ptr %x.addr, align 8
  %dereference602 = getelementptr inbounds %struct.cp_options, ptr %327, i32 0, i32 1
  %328 = load i32, ptr %dereference602, align 4
  %cmp603 = icmp eq i32 %328, 4
  br i1 %cmp603, label %if.then612, label %lor.lhs.false605

lor.lhs.false605:                                 ; preds = %if.else601
  %329 = load i8, ptr %command_line_arg.addr, align 1
  %tobool606 = trunc i8 %329 to i1
  br i1 %tobool606, label %land.lhs.true608, label %if.else613

land.lhs.true608:                                 ; preds = %lor.lhs.false605
  %330 = load ptr, ptr %x.addr, align 8
  %dereference609 = getelementptr inbounds %struct.cp_options, ptr %330, i32 0, i32 1
  %331 = load i32, ptr %dereference609, align 4
  %cmp610 = icmp eq i32 %331, 3
  br i1 %cmp610, label %if.then612, label %if.else613

if.then612:                                       ; preds = %land.lhs.true608, %if.else601
  br label %if.end618

if.else613:                                       ; preds = %land.lhs.true608, %lor.lhs.false605
  %332 = load ptr, ptr %dst_name.addr, align 8
  %333 = load ptr, ptr %dst_relname.addr, align 8
  %334 = load ptr, ptr %earlier_file, align 8
  %call614 = call ptr @subst_suffix(ptr noundef %332, ptr noundef %333, ptr noundef %334)
  store ptr %call614, ptr %earlier, align 8
  %call615 = call ptr @gettext(ptr noundef @.str.30) #16
  %335 = load ptr, ptr %dst_name.addr, align 8
  %call616 = call ptr @quotearg_n_style(i32 noundef 0, i32 noundef 4, ptr noundef %335)
  %336 = load ptr, ptr %earlier, align 8
  %call617 = call ptr @quotearg_n_style(i32 noundef 1, i32 noundef 4, ptr noundef %336)
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %call615, ptr noundef %call616, ptr noundef %call617) #17
  %337 = load ptr, ptr %earlier, align 8
  call void @free(ptr noundef %337) #16
  br label %un_backup

if.end618:                                        ; preds = %if.then612
  br label %if.end619

if.end619:                                        ; preds = %if.end618
  br label %if.end620

if.end620:                                        ; preds = %if.end619
  br label %if.end628

if.else621:                                       ; preds = %if.then579
  %338 = load i32, ptr %dst_dirfd.addr, align 4
  %339 = load ptr, ptr %earlier_file, align 8
  %340 = load ptr, ptr %dst_name.addr, align 8
  %341 = load i32, ptr %dst_dirfd.addr, align 4
  %342 = load ptr, ptr %dst_relname.addr, align 8
  %343 = load ptr, ptr %x.addr, align 8
  %verbose622 = getelementptr inbounds %struct.cp_options, ptr %343, i32 0, i32 33
  %344 = load i8, ptr %verbose622, align 8
  %tobool623 = trunc i8 %344 to i1
  %345 = load i8, ptr %dereference97, align 1
  %tobool624 = trunc i8 %345 to i1
  %call625 = call zeroext i1 @create_hard_link(ptr noundef null, i32 noundef %338, ptr noundef %339, ptr noundef %340, i32 noundef %341, ptr noundef %342, i1 noundef zeroext true, i1 noundef zeroext %tobool623, i1 noundef zeroext %tobool624)
  br i1 %call625, label %if.end627, label %if.then626

if.then626:                                       ; preds = %if.else621
  br label %un_backup

if.end627:                                        ; preds = %if.else621
  store i1 true, ptr %retval, align 1
  br label %return

if.end628:                                        ; preds = %if.end620
  br label %if.end629

if.end629:                                        ; preds = %if.end628, %if.end577
  %346 = load ptr, ptr %x.addr, align 8
  %move_mode630 = getelementptr inbounds %struct.cp_options, ptr %346, i32 0, i32 9
  %347 = load i8, ptr %move_mode630, align 8
  %tobool631 = trunc i8 %347 to i1
  br i1 %tobool631, label %if.then632, label %if.end741

if.then632:                                       ; preds = %if.end629
  %348 = load i32, ptr %rename_errno, align 4
  %cmp633 = icmp eq i32 %348, 17
  br i1 %cmp633, label %if.then635, label %if.end648

if.then635:                                       ; preds = %if.then632
  %349 = load ptr, ptr %src_name.addr, align 8
  %350 = load i32, ptr %dst_dirfd.addr, align 4
  %351 = load ptr, ptr %drelname, align 8
  %352 = load ptr, ptr %x.addr, align 8
  %exchange636 = getelementptr inbounds %struct.cp_options, ptr %352, i32 0, i32 11
  %353 = load i8, ptr %exchange636, align 2
  %tobool637 = trunc i8 %353 to i1
  %354 = zext i1 %tobool637 to i64
  %cond639 = select i1 %tobool637, i32 2, i32 0
  %call640 = call i32 @renameatu(i32 noundef -100, ptr noundef %349, i32 noundef %350, ptr noundef %351, i32 noundef %cond639)
  %cmp641 = icmp eq i32 %call640, 0
  br i1 %cmp641, label %cond.true643, label %cond.false644

cond.true643:                                     ; preds = %if.then635
  br label %cond.end646

cond.false644:                                    ; preds = %if.then635
  %call645 = call ptr @__errno_location() #15
  %355 = load i32, ptr %call645, align 4
  br label %cond.end646

cond.end646:                                      ; preds = %cond.false644, %cond.true643
  %cond647 = phi i32 [ 0, %cond.true643 ], [ %355, %cond.false644 ]
  store i32 %cond647, ptr %rename_errno, align 4
  br label %if.end648

if.end648:                                        ; preds = %cond.end646, %if.then632
  %356 = load i32, ptr %rename_errno, align 4
  %cmp649 = icmp eq i32 %356, 0
  br i1 %cmp649, label %if.then651, label %if.end680

if.then651:                                       ; preds = %if.end648
  %357 = load ptr, ptr %x.addr, align 8
  %verbose652 = getelementptr inbounds %struct.cp_options, ptr %357, i32 0, i32 33
  %358 = load i8, ptr %verbose652, align 8
  %tobool653 = trunc i8 %358 to i1
  br i1 %tobool653, label %if.then654, label %if.end664

if.then654:                                       ; preds = %if.then651
  %359 = load ptr, ptr %x.addr, align 8
  %exchange655 = getelementptr inbounds %struct.cp_options, ptr %359, i32 0, i32 11
  %360 = load i8, ptr %exchange655, align 2
  %tobool656 = trunc i8 %360 to i1
  br i1 %tobool656, label %cond.true658, label %cond.false660

cond.true658:                                     ; preds = %if.then654
  %call659 = call ptr @gettext(ptr noundef @.str.31) #16
  br label %cond.end662

cond.false660:                                    ; preds = %if.then654
  %call661 = call ptr @gettext(ptr noundef @.str.32) #16
  br label %cond.end662

cond.end662:                                      ; preds = %cond.false660, %cond.true658
  %cond663 = phi ptr [ %call659, %cond.true658 ], [ %call661, %cond.false660 ]
  %361 = load ptr, ptr %src_name.addr, align 8
  %362 = load ptr, ptr %dst_name.addr, align 8
  %363 = load ptr, ptr %dst_backup, align 8
  call void @emit_verbose(ptr noundef %cond663, ptr noundef %361, ptr noundef %362, ptr noundef %363)
  br label %if.end664

if.end664:                                        ; preds = %cond.end662, %if.then651
  %364 = load ptr, ptr %x.addr, align 8
  %set_security_context = getelementptr inbounds %struct.cp_options, ptr %364, i32 0, i32 20
  %365 = load ptr, ptr %set_security_context, align 8
  %tobool665 = icmp ne ptr %365, null
  br i1 %tobool665, label %if.then666, label %if.end668

if.then666:                                       ; preds = %if.end664
  %366 = load ptr, ptr %dst_name.addr, align 8
  %367 = load ptr, ptr %x.addr, align 8
  %call667 = call zeroext i1 @set_file_security_ctx(ptr noundef %366, i1 noundef zeroext true, ptr noundef %367)
  br label %if.end668

if.end668:                                        ; preds = %if.then666, %if.end664
  %368 = load ptr, ptr %rename_succeeded.addr, align 8
  %tobool669 = icmp ne ptr %368, null
  br i1 %tobool669, label %if.then670, label %if.end671

if.then670:                                       ; preds = %if.end668
  %369 = load ptr, ptr %rename_succeeded.addr, align 8
  store i8 1, ptr %369, align 1
  br label %if.end671

if.end671:                                        ; preds = %if.then670, %if.end668
  %370 = load i8, ptr %command_line_arg.addr, align 1
  %tobool672 = trunc i8 %370 to i1
  br i1 %tobool672, label %land.lhs.true674, label %if.end679

land.lhs.true674:                                 ; preds = %if.end671
  %371 = load ptr, ptr %x.addr, align 8
  %last_file675 = getelementptr inbounds %struct.cp_options, ptr %371, i32 0, i32 38
  %372 = load i8, ptr %last_file675, align 1
  %tobool676 = trunc i8 %372 to i1
  br i1 %tobool676, label %if.end679, label %if.then677

if.then677:                                       ; preds = %land.lhs.true674
  %373 = load ptr, ptr %x.addr, align 8
  %dest_info678 = getelementptr inbounds %struct.cp_options, ptr %373, i32 0, i32 41
  %374 = load ptr, ptr %dest_info678, align 8
  %375 = load ptr, ptr %dst_relname.addr, align 8
  call void @record_file(ptr noundef %374, ptr noundef %375, ptr noundef %src_sb)
  br label %if.end679

if.end679:                                        ; preds = %if.then677, %land.lhs.true674, %if.end671
  store i1 true, ptr %retval, align 1
  br label %return

if.end680:                                        ; preds = %if.end648
  %376 = load i32, ptr %rename_errno, align 4
  %cmp681 = icmp eq i32 %376, 22
  br i1 %cmp681, label %if.then683, label %if.end687

if.then683:                                       ; preds = %if.end680
  %call684 = call ptr @gettext(ptr noundef @.str.33) #16
  %377 = load ptr, ptr @top_level_src_name, align 8
  %call685 = call ptr @quotearg_n_style(i32 noundef 0, i32 noundef 4, ptr noundef %377)
  %378 = load ptr, ptr @top_level_dst_name, align 8
  %call686 = call ptr @quotearg_n_style(i32 noundef 1, i32 noundef 4, ptr noundef %378)
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %call684, ptr noundef %call685, ptr noundef %call686) #17
  %379 = load ptr, ptr %copy_into_self.addr, align 8
  store i8 1, ptr %379, align 1
  store i1 true, ptr %retval, align 1
  br label %return

if.end687:                                        ; preds = %if.end680
  %380 = load i32, ptr %rename_errno, align 4
  %cmp688 = icmp ne i32 %380, 18
  br i1 %cmp688, label %if.then697, label %lor.lhs.false690

lor.lhs.false690:                                 ; preds = %if.end687
  %381 = load ptr, ptr %x.addr, align 8
  %no_copy = getelementptr inbounds %struct.cp_options, ptr %381, i32 0, i32 10
  %382 = load i8, ptr %no_copy, align 1
  %tobool691 = trunc i8 %382 to i1
  br i1 %tobool691, label %if.then697, label %lor.lhs.false693

lor.lhs.false693:                                 ; preds = %lor.lhs.false690
  %383 = load ptr, ptr %x.addr, align 8
  %exchange694 = getelementptr inbounds %struct.cp_options, ptr %383, i32 0, i32 11
  %384 = load i8, ptr %exchange694, align 2
  %tobool695 = trunc i8 %384 to i1
  br i1 %tobool695, label %if.then697, label %if.end711

if.then697:                                       ; preds = %lor.lhs.false693, %lor.lhs.false690, %if.end687
  %385 = load ptr, ptr %dst_name.addr, align 8
  %call698 = call ptr @quotearg_n_style(i32 noundef 1, i32 noundef 4, ptr noundef %385)
  store ptr %call698, ptr %quoted_dst_name, align 8
  %386 = load ptr, ptr %x.addr, align 8
  %exchange699 = getelementptr inbounds %struct.cp_options, ptr %386, i32 0, i32 11
  %387 = load i8, ptr %exchange699, align 2
  %tobool700 = trunc i8 %387 to i1
  br i1 %tobool700, label %if.then701, label %if.else704

if.then701:                                       ; preds = %if.then697
  %388 = load i32, ptr %rename_errno, align 4
  %call702 = call ptr @gettext(ptr noundef @.str.34) #16
  %389 = load ptr, ptr %src_name.addr, align 8
  %call703 = call ptr @quotearg_n_style(i32 noundef 0, i32 noundef 4, ptr noundef %389)
  %390 = load ptr, ptr %quoted_dst_name, align 8
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %388, ptr noundef %call702, ptr noundef %call703, ptr noundef %390) #17
  br label %if.end708

if.else704:                                       ; preds = %if.then697
  %391 = load i32, ptr %rename_errno, align 4
  switch i32 %391, label %sw.default [
    i32 122, label %sw.bb
    i32 17, label %sw.bb
    i32 21, label %sw.bb
    i32 31, label %sw.bb
    i32 28, label %sw.bb
    i32 26, label %sw.bb
    i32 39, label %sw.bb
  ]

sw.bb:                                            ; preds = %if.else704, %if.else704, %if.else704, %if.else704, %if.else704, %if.else704, %if.else704
  %392 = load i32, ptr %rename_errno, align 4
  %call705 = call ptr @gettext(ptr noundef @.str.35) #16
  %393 = load ptr, ptr %quoted_dst_name, align 8
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %392, ptr noundef %call705, ptr noundef %393) #17
  br label %sw.epilog

sw.default:                                       ; preds = %if.else704
  %394 = load i32, ptr %rename_errno, align 4
  %call706 = call ptr @gettext(ptr noundef @.str.36) #16
  %395 = load ptr, ptr %src_name.addr, align 8
  %call707 = call ptr @quotearg_n_style(i32 noundef 0, i32 noundef 4, ptr noundef %395)
  %396 = load ptr, ptr %quoted_dst_name, align 8
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %394, ptr noundef %call706, ptr noundef %call707, ptr noundef %396) #17
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb
  br label %if.end708

if.end708:                                        ; preds = %sw.epilog, %if.then701
  %st_ino709 = getelementptr inbounds %struct.stat, ptr %src_sb, i32 0, i32 1
  %397 = load i64, ptr %st_ino709, align 8
  %st_dev710 = getelementptr inbounds %struct.stat, ptr %src_sb, i32 0, i32 0
  %398 = load i64, ptr %st_dev710, align 8
  call void @forget_created(i64 noundef %397, i64 noundef %398)
  store i1 false, ptr %retval, align 1
  br label %return

if.end711:                                        ; preds = %lor.lhs.false693
  %399 = load i32, ptr %dst_dirfd.addr, align 4
  %400 = load ptr, ptr %drelname, align 8
  %401 = load i32, ptr %src_mode, align 4
  %and712 = and i32 %401, 61440
  %cmp713 = icmp eq i32 %and712, 16384
  %402 = zext i1 %cmp713 to i64
  %cond715 = select i1 %cmp713, i32 512, i32 0
  %call716 = call i32 @unlinkat(i32 noundef %399, ptr noundef %400, i32 noundef %cond715) #16
  %cmp717 = icmp ne i32 %call716, 0
  br i1 %cmp717, label %land.lhs.true719, label %if.end730

land.lhs.true719:                                 ; preds = %if.end711
  %call720 = call ptr @__errno_location() #15
  %403 = load i32, ptr %call720, align 4
  %cmp721 = icmp ne i32 %403, 2
  br i1 %cmp721, label %if.then723, label %if.end730

if.then723:                                       ; preds = %land.lhs.true719
  %call724 = call ptr @__errno_location() #15
  %404 = load i32, ptr %call724, align 4
  %call725 = call ptr @gettext(ptr noundef @.str.37) #16
  %405 = load ptr, ptr %src_name.addr, align 8
  %call726 = call ptr @quotearg_n_style(i32 noundef 0, i32 noundef 4, ptr noundef %405)
  %406 = load ptr, ptr %dst_name.addr, align 8
  %call727 = call ptr @quotearg_n_style(i32 noundef 1, i32 noundef 4, ptr noundef %406)
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %404, ptr noundef %call725, ptr noundef %call726, ptr noundef %call727) #17
  %st_ino728 = getelementptr inbounds %struct.stat, ptr %src_sb, i32 0, i32 1
  %407 = load i64, ptr %st_ino728, align 8
  %st_dev729 = getelementptr inbounds %struct.stat, ptr %src_sb, i32 0, i32 0
  %408 = load i64, ptr %st_dev729, align 8
  call void @forget_created(i64 noundef %407, i64 noundef %408)
  store i1 false, ptr %retval, align 1
  br label %return

if.end730:                                        ; preds = %land.lhs.true719, %if.end711
  %409 = load ptr, ptr %x.addr, align 8
  %verbose731 = getelementptr inbounds %struct.cp_options, ptr %409, i32 0, i32 33
  %410 = load i8, ptr %verbose731, align 8
  %tobool732 = trunc i8 %410 to i1
  br i1 %tobool732, label %land.lhs.true734, label %if.end740

land.lhs.true734:                                 ; preds = %if.end730
  %411 = load i32, ptr %src_mode, align 4
  %and735 = and i32 %411, 61440
  %cmp736 = icmp eq i32 %and735, 16384
  br i1 %cmp736, label %if.end740, label %if.then738

if.then738:                                       ; preds = %land.lhs.true734
  %call739 = call ptr @gettext(ptr noundef @.str.38) #16
  %412 = load ptr, ptr %src_name.addr, align 8
  %413 = load ptr, ptr %dst_name.addr, align 8
  %414 = load ptr, ptr %dst_backup, align 8
  call void @emit_verbose(ptr noundef %call739, ptr noundef %412, ptr noundef %413, ptr noundef %414)
  br label %if.end740

if.end740:                                        ; preds = %if.then738, %land.lhs.true734, %if.end730
  store i8 1, ptr %new_dst, align 1
  br label %if.end741

if.end741:                                        ; preds = %if.end740, %if.end629
  %415 = load ptr, ptr %x.addr, align 8
  %set_mode = getelementptr inbounds %struct.cp_options, ptr %415, i32 0, i32 30
  %416 = load i8, ptr %set_mode, align 1
  %tobool742 = trunc i8 %416 to i1
  br i1 %tobool742, label %cond.true744, label %cond.false745

cond.true744:                                     ; preds = %if.end741
  %417 = load ptr, ptr %x.addr, align 8
  %mode = getelementptr inbounds %struct.cp_options, ptr %417, i32 0, i32 4
  %418 = load i32, ptr %mode, align 8
  br label %cond.end746

cond.false745:                                    ; preds = %if.end741
  %419 = load i32, ptr %src_mode, align 4
  br label %cond.end746

cond.end746:                                      ; preds = %cond.false745, %cond.true744
  %cond747 = phi i32 [ %418, %cond.true744 ], [ %419, %cond.false745 ]
  %and748 = and i32 %cond747, 4095
  store i32 %and748, ptr %dst_mode_bits, align 4
  %420 = load i32, ptr %dst_mode_bits, align 4
  %421 = load ptr, ptr %x.addr, align 8
  %preserve_ownership = getelementptr inbounds %struct.cp_options, ptr %421, i32 0, i32 16
  %422 = load i8, ptr %preserve_ownership, align 1
  %tobool749 = trunc i8 %422 to i1
  br i1 %tobool749, label %cond.true751, label %cond.false752

cond.true751:                                     ; preds = %cond.end746
  br label %cond.end757

cond.false752:                                    ; preds = %cond.end746
  %423 = load i32, ptr %src_mode, align 4
  %and753 = and i32 %423, 61440
  %cmp754 = icmp eq i32 %and753, 16384
  %424 = zext i1 %cmp754 to i64
  %cond756 = select i1 %cmp754, i32 18, i32 0
  br label %cond.end757

cond.end757:                                      ; preds = %cond.false752, %cond.true751
  %cond758 = phi i32 [ 63, %cond.true751 ], [ %cond756, %cond.false752 ]
  %and759 = and i32 %420, %cond758
  store i32 %and759, ptr %omitted_permissions, align 4
  store i8 1, ptr %delayed_ok, align 1
  %425 = load ptr, ptr %src_name.addr, align 8
  %426 = load ptr, ptr %dst_name.addr, align 8
  %427 = load i32, ptr %src_mode, align 4
  %428 = load i8, ptr %new_dst, align 1
  %tobool760 = trunc i8 %428 to i1
  %429 = load ptr, ptr %x.addr, align 8
  %call761 = call zeroext i1 @set_process_security_ctx(ptr noundef %425, ptr noundef %426, i32 noundef %427, i1 noundef zeroext %tobool760, ptr noundef %429)
  br i1 %call761, label %if.end763, label %if.then762

if.then762:                                       ; preds = %cond.end757
  store i1 false, ptr %retval, align 1
  br label %return

if.end763:                                        ; preds = %cond.end757
  %430 = load i32, ptr %src_mode, align 4
  %and764 = and i32 %430, 61440
  %cmp765 = icmp eq i32 %and764, 16384
  br i1 %cmp765, label %if.then767, label %if.else866

if.then767:                                       ; preds = %if.end763
  %431 = load ptr, ptr %ancestors.addr, align 8
  %call768 = call zeroext i1 @is_ancestor(ptr noundef %src_sb, ptr noundef %431) #20
  br i1 %call768, label %if.then769, label %if.end772

if.then769:                                       ; preds = %if.then767
  %call770 = call ptr @gettext(ptr noundef @.str.39) #16
  %432 = load ptr, ptr %src_name.addr, align 8
  %call771 = call ptr @quotearg_style(i32 noundef 4, ptr noundef %432)
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %call770, ptr noundef %call771) #17
  br label %un_backup

if.end772:                                        ; preds = %if.then767
  %433 = alloca i8, i64 24, align 16
  store ptr %433, ptr %dir, align 8
  %434 = load ptr, ptr %ancestors.addr, align 8
  %435 = load ptr, ptr %dir, align 8
  %parent773 = getelementptr inbounds %struct.dir_list, ptr %435, i32 0, i32 0
  store ptr %434, ptr %parent773, align 8
  %st_ino774 = getelementptr inbounds %struct.stat, ptr %src_sb, i32 0, i32 1
  %436 = load i64, ptr %st_ino774, align 8
  %437 = load ptr, ptr %dir, align 8
  %ino = getelementptr inbounds %struct.dir_list, ptr %437, i32 0, i32 1
  store i64 %436, ptr %ino, align 8
  %st_dev775 = getelementptr inbounds %struct.stat, ptr %src_sb, i32 0, i32 0
  %438 = load i64, ptr %st_dev775, align 8
  %439 = load ptr, ptr %dir, align 8
  %dev = getelementptr inbounds %struct.dir_list, ptr %439, i32 0, i32 2
  store i64 %438, ptr %dev, align 8
  %440 = load i8, ptr %new_dst, align 1
  %tobool776 = trunc i8 %440 to i1
  br i1 %tobool776, label %if.then783, label %lor.lhs.false778

lor.lhs.false778:                                 ; preds = %if.end772
  %st_mode779 = getelementptr inbounds %struct.stat, ptr %dst_sb, i32 0, i32 3
  %441 = load i32, ptr %st_mode779, align 8
  %and780 = and i32 %441, 61440
  %cmp781 = icmp eq i32 %and780, 16384
  br i1 %cmp781, label %if.else836, label %if.then783

if.then783:                                       ; preds = %lor.lhs.false778, %if.end772
  %442 = load i32, ptr %dst_mode_bits, align 4
  %443 = load i32, ptr %omitted_permissions, align 4
  %not = xor i32 %443, -1
  %and785 = and i32 %442, %not
  store i32 %and785, ptr %mode784, align 4
  %444 = load i32, ptr %dst_dirfd.addr, align 4
  %445 = load ptr, ptr %drelname, align 8
  %446 = load i32, ptr %mode784, align 4
  %call786 = call i32 @mkdirat(i32 noundef %444, ptr noundef %445, i32 noundef %446) #16
  %cmp787 = icmp ne i32 %call786, 0
  br i1 %cmp787, label %if.then789, label %if.end793

if.then789:                                       ; preds = %if.then783
  %call790 = call ptr @__errno_location() #15
  %447 = load i32, ptr %call790, align 4
  %call791 = call ptr @gettext(ptr noundef @.str.40) #16
  %448 = load ptr, ptr %dst_name.addr, align 8
  %call792 = call ptr @quotearg_style(i32 noundef 4, ptr noundef %448)
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %447, ptr noundef %call791, ptr noundef %call792) #17
  br label %un_backup

if.end793:                                        ; preds = %if.then783
  %449 = load i32, ptr %dst_dirfd.addr, align 4
  %450 = load ptr, ptr %drelname, align 8
  %call794 = call i32 @fstatat(i32 noundef %449, ptr noundef %450, ptr noundef %dst_sb, i32 noundef 256) #16
  %cmp795 = icmp ne i32 %call794, 0
  br i1 %cmp795, label %if.then797, label %if.else801

if.then797:                                       ; preds = %if.end793
  %call798 = call ptr @__errno_location() #15
  %451 = load i32, ptr %call798, align 4
  %call799 = call ptr @gettext(ptr noundef @.str.11) #16
  %452 = load ptr, ptr %dst_name.addr, align 8
  %call800 = call ptr @quotearg_style(i32 noundef 4, ptr noundef %452)
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %451, ptr noundef %call799, ptr noundef %call800) #17
  br label %un_backup

if.else801:                                       ; preds = %if.end793
  %st_mode802 = getelementptr inbounds %struct.stat, ptr %dst_sb, i32 0, i32 3
  %453 = load i32, ptr %st_mode802, align 8
  %and803 = and i32 %453, 448
  %cmp804 = icmp ne i32 %and803, 448
  br i1 %cmp804, label %if.then806, label %if.end816

if.then806:                                       ; preds = %if.else801
  %st_mode807 = getelementptr inbounds %struct.stat, ptr %dst_sb, i32 0, i32 3
  %454 = load i32, ptr %st_mode807, align 8
  store i32 %454, ptr %dst_mode, align 4
  store i8 1, ptr %restore_dst_mode, align 1
  %455 = load i32, ptr %dst_dirfd.addr, align 4
  %456 = load ptr, ptr %drelname, align 8
  %457 = load i32, ptr %dst_mode, align 4
  %or = or i32 %457, 448
  %call808 = call i32 @lchmodat(i32 noundef %455, ptr noundef %456, i32 noundef %or)
  %cmp809 = icmp ne i32 %call808, 0
  br i1 %cmp809, label %if.then811, label %if.end815

if.then811:                                       ; preds = %if.then806
  %call812 = call ptr @__errno_location() #15
  %458 = load i32, ptr %call812, align 4
  %call813 = call ptr @gettext(ptr noundef @.str.41) #16
  %459 = load ptr, ptr %dst_name.addr, align 8
  %call814 = call ptr @quotearg_style(i32 noundef 4, ptr noundef %459)
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %458, ptr noundef %call813, ptr noundef %call814) #17
  br label %un_backup

if.end815:                                        ; preds = %if.then806
  br label %if.end816

if.end816:                                        ; preds = %if.end815, %if.else801
  br label %if.end817

if.end817:                                        ; preds = %if.end816
  %460 = load ptr, ptr %first_dir_created_per_command_line_arg.addr, align 8
  %461 = load i8, ptr %460, align 1
  %tobool818 = trunc i8 %461 to i1
  br i1 %tobool818, label %if.end823, label %if.then819

if.then819:                                       ; preds = %if.end817
  %462 = load ptr, ptr %dst_relname.addr, align 8
  %st_ino820 = getelementptr inbounds %struct.stat, ptr %dst_sb, i32 0, i32 1
  %463 = load i64, ptr %st_ino820, align 8
  %st_dev821 = getelementptr inbounds %struct.stat, ptr %dst_sb, i32 0, i32 0
  %464 = load i64, ptr %st_dev821, align 8
  %call822 = call ptr @remember_copied(ptr noundef %462, i64 noundef %463, i64 noundef %464)
  %465 = load ptr, ptr %first_dir_created_per_command_line_arg.addr, align 8
  store i8 1, ptr %465, align 1
  br label %if.end823

if.end823:                                        ; preds = %if.then819, %if.end817
  %466 = load ptr, ptr %x.addr, align 8
  %verbose824 = getelementptr inbounds %struct.cp_options, ptr %466, i32 0, i32 33
  %467 = load i8, ptr %verbose824, align 8
  %tobool825 = trunc i8 %467 to i1
  br i1 %tobool825, label %if.then826, label %if.end835

if.then826:                                       ; preds = %if.end823
  %468 = load ptr, ptr %x.addr, align 8
  %move_mode827 = getelementptr inbounds %struct.cp_options, ptr %468, i32 0, i32 9
  %469 = load i8, ptr %move_mode827, align 8
  %tobool828 = trunc i8 %469 to i1
  br i1 %tobool828, label %if.then829, label %if.else833

if.then829:                                       ; preds = %if.then826
  %call830 = call ptr @gettext(ptr noundef @.str.42) #16
  %470 = load ptr, ptr %dst_name.addr, align 8
  %call831 = call ptr @quotearg_style(i32 noundef 4, ptr noundef %470)
  %call832 = call i32 (ptr, ...) @printf(ptr noundef %call830, ptr noundef %call831)
  br label %if.end834

if.else833:                                       ; preds = %if.then826
  %471 = load ptr, ptr %src_name.addr, align 8
  %472 = load ptr, ptr %dst_name.addr, align 8
  call void @emit_verbose(ptr noundef @.str.27, ptr noundef %471, ptr noundef %472, ptr noundef null)
  br label %if.end834

if.end834:                                        ; preds = %if.else833, %if.then829
  br label %if.end835

if.end835:                                        ; preds = %if.end834, %if.end823
  br label %if.end850

if.else836:                                       ; preds = %lor.lhs.false778
  store i32 0, ptr %omitted_permissions, align 4
  %473 = load ptr, ptr %x.addr, align 8
  %set_security_context837 = getelementptr inbounds %struct.cp_options, ptr %473, i32 0, i32 20
  %474 = load ptr, ptr %set_security_context837, align 8
  %tobool838 = icmp ne ptr %474, null
  br i1 %tobool838, label %if.then842, label %lor.lhs.false839

lor.lhs.false839:                                 ; preds = %if.else836
  %475 = load ptr, ptr %x.addr, align 8
  %preserve_security_context = getelementptr inbounds %struct.cp_options, ptr %475, i32 0, i32 24
  %476 = load i8, ptr %preserve_security_context, align 1
  %tobool840 = trunc i8 %476 to i1
  br i1 %tobool840, label %if.then842, label %if.end849

if.then842:                                       ; preds = %lor.lhs.false839, %if.else836
  %477 = load ptr, ptr %dst_name.addr, align 8
  %478 = load ptr, ptr %x.addr, align 8
  %call843 = call zeroext i1 @set_file_security_ctx(ptr noundef %477, i1 noundef zeroext false, ptr noundef %478)
  br i1 %call843, label %if.end848, label %if.then844

if.then844:                                       ; preds = %if.then842
  %479 = load ptr, ptr %x.addr, align 8
  %require_preserve_context = getelementptr inbounds %struct.cp_options, ptr %479, i32 0, i32 25
  %480 = load i8, ptr %require_preserve_context, align 4
  %tobool845 = trunc i8 %480 to i1
  br i1 %tobool845, label %if.then846, label %if.end847

if.then846:                                       ; preds = %if.then844
  br label %un_backup

if.end847:                                        ; preds = %if.then844
  br label %if.end848

if.end848:                                        ; preds = %if.end847, %if.then842
  br label %if.end849

if.end849:                                        ; preds = %if.end848, %lor.lhs.false839
  br label %if.end850

if.end850:                                        ; preds = %if.end849, %if.end835
  %481 = load ptr, ptr %x.addr, align 8
  %one_file_system = getelementptr inbounds %struct.cp_options, ptr %481, i32 0, i32 15
  %482 = load i8, ptr %one_file_system, align 2
  %tobool851 = trunc i8 %482 to i1
  br i1 %tobool851, label %land.lhs.true853, label %if.else861

land.lhs.true853:                                 ; preds = %if.end850
  %483 = load ptr, ptr %parent.addr, align 8
  %tobool854 = icmp ne ptr %483, null
  br i1 %tobool854, label %land.lhs.true855, label %if.else861

land.lhs.true855:                                 ; preds = %land.lhs.true853
  %484 = load ptr, ptr %parent.addr, align 8
  %st_dev856 = getelementptr inbounds %struct.stat, ptr %484, i32 0, i32 0
  %485 = load i64, ptr %st_dev856, align 8
  %st_dev857 = getelementptr inbounds %struct.stat, ptr %src_sb, i32 0, i32 0
  %486 = load i64, ptr %st_dev857, align 8
  %cmp858 = icmp ne i64 %485, %486
  br i1 %cmp858, label %if.then860, label %if.else861

if.then860:                                       ; preds = %land.lhs.true855
  br label %if.end865

if.else861:                                       ; preds = %land.lhs.true855, %land.lhs.true853, %if.end850
  %487 = load ptr, ptr %src_name.addr, align 8
  %488 = load ptr, ptr %dst_name.addr, align 8
  %489 = load i32, ptr %dst_dirfd.addr, align 4
  %490 = load ptr, ptr %dst_relname.addr, align 8
  %491 = load i8, ptr %new_dst, align 1
  %tobool862 = trunc i8 %491 to i1
  %492 = load ptr, ptr %dir, align 8
  %493 = load ptr, ptr %x.addr, align 8
  %494 = load ptr, ptr %first_dir_created_per_command_line_arg.addr, align 8
  %495 = load ptr, ptr %copy_into_self.addr, align 8
  %call863 = call zeroext i1 @copy_dir(ptr noundef %487, ptr noundef %488, i32 noundef %489, ptr noundef %490, i1 noundef zeroext %tobool862, ptr noundef %src_sb, ptr noundef %492, ptr noundef %493, ptr noundef %494, ptr noundef %495)
  %frombool864 = zext i1 %call863 to i8
  store i8 %frombool864, ptr %delayed_ok, align 1
  br label %if.end865

if.end865:                                        ; preds = %if.else861, %if.then860
  br label %if.end1074

if.else866:                                       ; preds = %if.end763
  %496 = load ptr, ptr %x.addr, align 8
  %symbolic_link867 = getelementptr inbounds %struct.cp_options, ptr %496, i32 0, i32 31
  %497 = load i8, ptr %symbolic_link867, align 2
  %tobool868 = trunc i8 %497 to i1
  br i1 %tobool868, label %if.then869, label %if.else910

if.then869:                                       ; preds = %if.else866
  store i8 1, ptr %dest_is_symlink, align 1
  %498 = load ptr, ptr %src_name.addr, align 8
  %499 = load i8, ptr %498, align 1
  %conv870 = sext i8 %499 to i32
  %cmp871 = icmp ne i32 %conv870, 47
  br i1 %cmp871, label %if.then873, label %if.end899

if.then873:                                       ; preds = %if.then869
  %500 = load ptr, ptr %dst_relname.addr, align 8
  %call874 = call noalias nonnull ptr @dir_name(ptr noundef %500)
  store ptr %call874, ptr %dst_parent, align 8
  %501 = load i32, ptr %dst_dirfd.addr, align 4
  %cmp875 = icmp eq i32 %501, -100
  br i1 %cmp875, label %land.lhs.true877, label %lor.lhs.false881

land.lhs.true877:                                 ; preds = %if.then873
  %502 = load ptr, ptr %dst_parent, align 8
  %call878 = call i32 @strcmp(ptr noundef @.str.10, ptr noundef %502) #20
  %cmp879 = icmp eq i32 %call878, 0
  br i1 %cmp879, label %lor.end892, label %lor.lhs.false881

lor.lhs.false881:                                 ; preds = %land.lhs.true877, %if.then873
  %call882 = call i32 @stat(ptr noundef @.str.10, ptr noundef %dot_sb) #16
  %cmp883 = icmp ne i32 %call882, 0
  br i1 %cmp883, label %lor.end892, label %lor.lhs.false885

lor.lhs.false885:                                 ; preds = %lor.lhs.false881
  %503 = load i32, ptr %dst_dirfd.addr, align 4
  %504 = load ptr, ptr %dst_parent, align 8
  %call886 = call i32 @fstatat(i32 noundef %503, ptr noundef %504, ptr noundef %dst_parent_sb, i32 noundef 0) #16
  %cmp887 = icmp ne i32 %call886, 0
  br i1 %cmp887, label %lor.end892, label %lor.rhs889

lor.rhs889:                                       ; preds = %lor.lhs.false885
  %call890 = call zeroext i1 @psame_inode(ptr noundef %dot_sb, ptr noundef %dst_parent_sb)
  br label %lor.end892

lor.end892:                                       ; preds = %lor.rhs889, %lor.lhs.false885, %lor.lhs.false881, %land.lhs.true877
  %505 = phi i1 [ true, %lor.lhs.false885 ], [ true, %lor.lhs.false881 ], [ true, %land.lhs.true877 ], [ %call890, %lor.rhs889 ]
  %frombool893 = zext i1 %505 to i8
  store i8 %frombool893, ptr %in_current_dir, align 1
  %506 = load ptr, ptr %dst_parent, align 8
  call void @free(ptr noundef %506) #16
  %507 = load i8, ptr %in_current_dir, align 1
  %tobool894 = trunc i8 %507 to i1
  br i1 %tobool894, label %if.end898, label %if.then895

if.then895:                                       ; preds = %lor.end892
  %call896 = call ptr @gettext(ptr noundef @.str.43) #16
  %508 = load ptr, ptr %dst_name.addr, align 8
  %call897 = call ptr @quotearg_n_style_colon(i32 noundef 0, i32 noundef 3, ptr noundef %508)
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %call896, ptr noundef %call897) #17
  br label %un_backup

if.end898:                                        ; preds = %lor.end892
  br label %if.end899

if.end899:                                        ; preds = %if.end898, %if.then869
  %509 = load ptr, ptr %src_name.addr, align 8
  %510 = load i32, ptr %dst_dirfd.addr, align 4
  %511 = load ptr, ptr %dst_relname.addr, align 8
  %512 = load ptr, ptr %x.addr, align 8
  %unlink_dest_after_failed_open900 = getelementptr inbounds %struct.cp_options, ptr %512, i32 0, i32 7
  %513 = load i8, ptr %unlink_dest_after_failed_open900, align 2
  %tobool901 = trunc i8 %513 to i1
  %call902 = call i32 @force_symlinkat(ptr noundef %509, i32 noundef %510, ptr noundef %511, i1 noundef zeroext %tobool901, i32 noundef -1)
  store i32 %call902, ptr %err, align 4
  %514 = load i32, ptr %err, align 4
  %cmp903 = icmp slt i32 0, %514
  br i1 %cmp903, label %if.then905, label %if.end909

if.then905:                                       ; preds = %if.end899
  %515 = load i32, ptr %err, align 4
  %call906 = call ptr @gettext(ptr noundef @.str.44) #16
  %516 = load ptr, ptr %dst_name.addr, align 8
  %call907 = call ptr @quotearg_n_style(i32 noundef 0, i32 noundef 4, ptr noundef %516)
  %517 = load ptr, ptr %src_name.addr, align 8
  %call908 = call ptr @quotearg_n_style(i32 noundef 1, i32 noundef 4, ptr noundef %517)
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %515, ptr noundef %call906, ptr noundef %call907, ptr noundef %call908) #17
  br label %un_backup

if.end909:                                        ; preds = %if.end899
  br label %if.end1073

if.else910:                                       ; preds = %if.else866
  %518 = load ptr, ptr %x.addr, align 8
  %hard_link911 = getelementptr inbounds %struct.cp_options, ptr %518, i32 0, i32 8
  %519 = load i8, ptr %hard_link911, align 1
  %tobool912 = trunc i8 %519 to i1
  br i1 %tobool912, label %if.then914, label %if.else929

if.then914:                                       ; preds = %if.else910
  %520 = load ptr, ptr %x.addr, align 8
  %unlink_dest_after_failed_open915 = getelementptr inbounds %struct.cp_options, ptr %520, i32 0, i32 7
  %521 = load i8, ptr %unlink_dest_after_failed_open915, align 2
  %tobool916 = trunc i8 %521 to i1
  br i1 %tobool916, label %lor.end922, label %lor.rhs918

lor.rhs918:                                       ; preds = %if.then914
  %522 = load ptr, ptr %x.addr, align 8
  %interactive919 = getelementptr inbounds %struct.cp_options, ptr %522, i32 0, i32 2
  %523 = load i32, ptr %interactive919, align 8
  %cmp920 = icmp eq i32 %523, 3
  br label %lor.end922

lor.end922:                                       ; preds = %lor.rhs918, %if.then914
  %524 = phi i1 [ true, %if.then914 ], [ %cmp920, %lor.rhs918 ]
  %frombool923 = zext i1 %524 to i8
  store i8 %frombool923, ptr %replace, align 1
  %525 = load ptr, ptr %src_name.addr, align 8
  %526 = load ptr, ptr %src_name.addr, align 8
  %527 = load ptr, ptr %dst_name.addr, align 8
  %528 = load i32, ptr %dst_dirfd.addr, align 4
  %529 = load ptr, ptr %dst_relname.addr, align 8
  %530 = load i8, ptr %replace, align 1
  %tobool924 = trunc i8 %530 to i1
  %531 = load i8, ptr %dereference97, align 1
  %tobool925 = trunc i8 %531 to i1
  %call926 = call zeroext i1 @create_hard_link(ptr noundef %525, i32 noundef -100, ptr noundef %526, ptr noundef %527, i32 noundef %528, ptr noundef %529, i1 noundef zeroext %tobool924, i1 noundef zeroext false, i1 noundef zeroext %tobool925)
  br i1 %call926, label %if.end928, label %if.then927

if.then927:                                       ; preds = %lor.end922
  br label %un_backup

if.end928:                                        ; preds = %lor.end922
  br label %if.end1072

if.else929:                                       ; preds = %if.else910
  %532 = load i32, ptr %src_mode, align 4
  %and930 = and i32 %532, 61440
  %cmp931 = icmp eq i32 %and930, 32768
  br i1 %cmp931, label %if.then941, label %lor.lhs.false933

lor.lhs.false933:                                 ; preds = %if.else929
  %533 = load ptr, ptr %x.addr, align 8
  %copy_as_regular934 = getelementptr inbounds %struct.cp_options, ptr %533, i32 0, i32 5
  %534 = load i8, ptr %copy_as_regular934, align 4
  %tobool935 = trunc i8 %534 to i1
  br i1 %tobool935, label %land.lhs.true937, label %if.else946

land.lhs.true937:                                 ; preds = %lor.lhs.false933
  %535 = load i32, ptr %src_mode, align 4
  %and938 = and i32 %535, 61440
  %cmp939 = icmp eq i32 %and938, 40960
  br i1 %cmp939, label %if.else946, label %if.then941

if.then941:                                       ; preds = %land.lhs.true937, %if.else929
  store i8 1, ptr %copied_as_regular, align 1
  %536 = load ptr, ptr %src_name.addr, align 8
  %537 = load ptr, ptr %dst_name.addr, align 8
  %538 = load i32, ptr %dst_dirfd.addr, align 4
  %539 = load ptr, ptr %dst_relname.addr, align 8
  %540 = load ptr, ptr %x.addr, align 8
  %541 = load i32, ptr %dst_mode_bits, align 4
  %and942 = and i32 %541, 511
  %542 = load i32, ptr %omitted_permissions, align 4
  %call943 = call zeroext i1 @copy_reg(ptr noundef %536, ptr noundef %537, i32 noundef %538, ptr noundef %539, ptr noundef %540, i32 noundef %and942, i32 noundef %542, ptr noundef %new_dst, ptr noundef %src_sb)
  br i1 %call943, label %if.end945, label %if.then944

if.then944:                                       ; preds = %if.then941
  br label %un_backup

if.end945:                                        ; preds = %if.then941
  br label %if.end1071

if.else946:                                       ; preds = %land.lhs.true937, %lor.lhs.false933
  %543 = load i32, ptr %src_mode, align 4
  %and947 = and i32 %543, 61440
  %cmp948 = icmp eq i32 %and947, 4096
  br i1 %cmp948, label %if.then950, label %if.else968

if.then950:                                       ; preds = %if.else946
  %544 = load i32, ptr %src_mode, align 4
  %545 = load i32, ptr %omitted_permissions, align 4
  %not952 = xor i32 %545, -1
  %and953 = and i32 %544, %not952
  store i32 %and953, ptr %mode951, align 4
  %546 = load i32, ptr %dst_dirfd.addr, align 4
  %547 = load ptr, ptr %dst_relname.addr, align 8
  %548 = load i32, ptr %mode951, align 4
  %call954 = call i32 @mknodat(i32 noundef %546, ptr noundef %547, i32 noundef %548, i64 noundef 0) #16
  %cmp955 = icmp ne i32 %call954, 0
  br i1 %cmp955, label %if.then957, label %if.end967

if.then957:                                       ; preds = %if.then950
  %549 = load i32, ptr %dst_dirfd.addr, align 4
  %550 = load ptr, ptr %dst_relname.addr, align 8
  %551 = load i32, ptr %mode951, align 4
  %and958 = and i32 %551, -4097
  %call959 = call i32 @mkfifoat(i32 noundef %549, ptr noundef %550, i32 noundef %and958) #16
  %cmp960 = icmp ne i32 %call959, 0
  br i1 %cmp960, label %if.then962, label %if.end966

if.then962:                                       ; preds = %if.then957
  %call963 = call ptr @__errno_location() #15
  %552 = load i32, ptr %call963, align 4
  %call964 = call ptr @gettext(ptr noundef @.str.45) #16
  %553 = load ptr, ptr %dst_name.addr, align 8
  %call965 = call ptr @quotearg_style(i32 noundef 4, ptr noundef %553)
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %552, ptr noundef %call964, ptr noundef %call965) #17
  br label %un_backup

if.end966:                                        ; preds = %if.then957
  br label %if.end967

if.end967:                                        ; preds = %if.end966, %if.then950
  br label %if.end1070

if.else968:                                       ; preds = %if.else946
  %554 = load i32, ptr %src_mode, align 4
  %and969 = and i32 %554, 61440
  %cmp970 = icmp eq i32 %and969, 24576
  br i1 %cmp970, label %if.then980, label %lor.lhs.false972

lor.lhs.false972:                                 ; preds = %if.else968
  %555 = load i32, ptr %src_mode, align 4
  %and973 = and i32 %555, 61440
  %cmp974 = icmp eq i32 %and973, 8192
  br i1 %cmp974, label %if.then980, label %lor.lhs.false976

lor.lhs.false976:                                 ; preds = %lor.lhs.false972
  %556 = load i32, ptr %src_mode, align 4
  %and977 = and i32 %556, 61440
  %cmp978 = icmp eq i32 %and977, 49152
  br i1 %cmp978, label %if.then980, label %if.else992

if.then980:                                       ; preds = %lor.lhs.false976, %lor.lhs.false972, %if.else968
  %557 = load i32, ptr %src_mode, align 4
  %558 = load i32, ptr %omitted_permissions, align 4
  %not982 = xor i32 %558, -1
  %and983 = and i32 %557, %not982
  store i32 %and983, ptr %mode981, align 4
  %559 = load i32, ptr %dst_dirfd.addr, align 4
  %560 = load ptr, ptr %dst_relname.addr, align 8
  %561 = load i32, ptr %mode981, align 4
  %st_rdev = getelementptr inbounds %struct.stat, ptr %src_sb, i32 0, i32 7
  %562 = load i64, ptr %st_rdev, align 8
  %call984 = call i32 @mknodat(i32 noundef %559, ptr noundef %560, i32 noundef %561, i64 noundef %562) #16
  %cmp985 = icmp ne i32 %call984, 0
  br i1 %cmp985, label %if.then987, label %if.end991

if.then987:                                       ; preds = %if.then980
  %call988 = call ptr @__errno_location() #15
  %563 = load i32, ptr %call988, align 4
  %call989 = call ptr @gettext(ptr noundef @.str.46) #16
  %564 = load ptr, ptr %dst_name.addr, align 8
  %call990 = call ptr @quotearg_style(i32 noundef 4, ptr noundef %564)
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %563, ptr noundef %call989, ptr noundef %call990) #17
  br label %un_backup

if.end991:                                        ; preds = %if.then980
  br label %if.end1069

if.else992:                                       ; preds = %lor.lhs.false976
  %565 = load i32, ptr %src_mode, align 4
  %and993 = and i32 %565, 61440
  %cmp994 = icmp eq i32 %and993, 40960
  br i1 %cmp994, label %if.then996, label %if.else1065

if.then996:                                       ; preds = %if.else992
  %566 = load ptr, ptr %src_name.addr, align 8
  %st_size = getelementptr inbounds %struct.stat, ptr %src_sb, i32 0, i32 8
  %567 = load i64, ptr %st_size, align 8
  %call997 = call ptr @areadlink_with_size(ptr noundef %566, i64 noundef %567)
  store ptr %call997, ptr %src_link_val, align 8
  store i8 1, ptr %dest_is_symlink, align 1
  %568 = load ptr, ptr %src_link_val, align 8
  %cmp998 = icmp eq ptr %568, null
  br i1 %cmp998, label %if.then1000, label %if.end1004

if.then1000:                                      ; preds = %if.then996
  %call1001 = call ptr @__errno_location() #15
  %569 = load i32, ptr %call1001, align 4
  %call1002 = call ptr @gettext(ptr noundef @.str.47) #16
  %570 = load ptr, ptr %src_name.addr, align 8
  %call1003 = call ptr @quotearg_style(i32 noundef 4, ptr noundef %570)
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %569, ptr noundef %call1002, ptr noundef %call1003) #17
  br label %un_backup

if.end1004:                                       ; preds = %if.then996
  %571 = load ptr, ptr %src_link_val, align 8
  %572 = load i32, ptr %dst_dirfd.addr, align 4
  %573 = load ptr, ptr %dst_relname.addr, align 8
  %574 = load ptr, ptr %x.addr, align 8
  %unlink_dest_after_failed_open1005 = getelementptr inbounds %struct.cp_options, ptr %574, i32 0, i32 7
  %575 = load i8, ptr %unlink_dest_after_failed_open1005, align 2
  %tobool1006 = trunc i8 %575 to i1
  %call1007 = call i32 @force_symlinkat(ptr noundef %571, i32 noundef %572, ptr noundef %573, i1 noundef zeroext %tobool1006, i32 noundef -1)
  store i32 %call1007, ptr %symlink_err, align 4
  %576 = load i32, ptr %symlink_err, align 4
  %cmp1008 = icmp slt i32 0, %576
  br i1 %cmp1008, label %land.lhs.true1010, label %if.end1037

land.lhs.true1010:                                ; preds = %if.end1004
  %577 = load ptr, ptr %x.addr, align 8
  %update1011 = getelementptr inbounds %struct.cp_options, ptr %577, i32 0, i32 32
  %578 = load i32, ptr %update1011, align 4
  %cmp1012 = icmp eq i32 %578, 1
  br i1 %cmp1012, label %land.lhs.true1014, label %if.end1037

land.lhs.true1014:                                ; preds = %land.lhs.true1010
  %579 = load i8, ptr %new_dst, align 1
  %tobool1015 = trunc i8 %579 to i1
  br i1 %tobool1015, label %if.end1037, label %land.lhs.true1016

land.lhs.true1016:                                ; preds = %land.lhs.true1014
  %st_mode1017 = getelementptr inbounds %struct.stat, ptr %dst_sb, i32 0, i32 3
  %580 = load i32, ptr %st_mode1017, align 8
  %and1018 = and i32 %580, 61440
  %cmp1019 = icmp eq i32 %and1018, 40960
  br i1 %cmp1019, label %land.lhs.true1021, label %if.end1037

land.lhs.true1021:                                ; preds = %land.lhs.true1016
  %st_size1022 = getelementptr inbounds %struct.stat, ptr %dst_sb, i32 0, i32 8
  %581 = load i64, ptr %st_size1022, align 8
  %582 = load ptr, ptr %src_link_val, align 8
  %call1023 = call i64 @strlen(ptr noundef %582) #20
  %cmp1024 = icmp eq i64 %581, %call1023
  br i1 %cmp1024, label %if.then1026, label %if.end1037

if.then1026:                                      ; preds = %land.lhs.true1021
  %583 = load i32, ptr %dst_dirfd.addr, align 4
  %584 = load ptr, ptr %dst_relname.addr, align 8
  %st_size1027 = getelementptr inbounds %struct.stat, ptr %dst_sb, i32 0, i32 8
  %585 = load i64, ptr %st_size1027, align 8
  %call1028 = call ptr @areadlinkat_with_size(i32 noundef %583, ptr noundef %584, i64 noundef %585)
  store ptr %call1028, ptr %dest_link_val, align 8
  %586 = load ptr, ptr %dest_link_val, align 8
  %tobool1029 = icmp ne ptr %586, null
  br i1 %tobool1029, label %if.then1030, label %if.end1036

if.then1030:                                      ; preds = %if.then1026
  %587 = load ptr, ptr %dest_link_val, align 8
  %588 = load ptr, ptr %src_link_val, align 8
  %call1031 = call i32 @strcmp(ptr noundef %587, ptr noundef %588) #20
  %cmp1032 = icmp eq i32 %call1031, 0
  br i1 %cmp1032, label %if.then1034, label %if.end1035

if.then1034:                                      ; preds = %if.then1030
  store i32 0, ptr %symlink_err, align 4
  br label %if.end1035

if.end1035:                                       ; preds = %if.then1034, %if.then1030
  %589 = load ptr, ptr %dest_link_val, align 8
  call void @free(ptr noundef %589) #16
  br label %if.end1036

if.end1036:                                       ; preds = %if.end1035, %if.then1026
  br label %if.end1037

if.end1037:                                       ; preds = %if.end1036, %land.lhs.true1021, %land.lhs.true1016, %land.lhs.true1014, %land.lhs.true1010, %if.end1004
  %590 = load ptr, ptr %src_link_val, align 8
  call void @free(ptr noundef %590) #16
  %591 = load i32, ptr %symlink_err, align 4
  %cmp1038 = icmp slt i32 0, %591
  br i1 %cmp1038, label %if.then1040, label %if.end1043

if.then1040:                                      ; preds = %if.end1037
  %592 = load i32, ptr %symlink_err, align 4
  %call1041 = call ptr @gettext(ptr noundef @.str.48) #16
  %593 = load ptr, ptr %dst_name.addr, align 8
  %call1042 = call ptr @quotearg_style(i32 noundef 4, ptr noundef %593)
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %592, ptr noundef %call1041, ptr noundef %call1042) #17
  br label %un_backup

if.end1043:                                       ; preds = %if.end1037
  %594 = load ptr, ptr %x.addr, align 8
  %preserve_security_context1044 = getelementptr inbounds %struct.cp_options, ptr %594, i32 0, i32 24
  %595 = load i8, ptr %preserve_security_context1044, align 1
  %tobool1045 = trunc i8 %595 to i1
  br i1 %tobool1045, label %if.then1046, label %if.end1047

if.then1046:                                      ; preds = %if.end1043
  call void @restore_default_fscreatecon_or_die()
  br label %if.end1047

if.end1047:                                       ; preds = %if.then1046, %if.end1043
  %596 = load ptr, ptr %x.addr, align 8
  %preserve_ownership1048 = getelementptr inbounds %struct.cp_options, ptr %596, i32 0, i32 16
  %597 = load i8, ptr %preserve_ownership1048, align 1
  %tobool1049 = trunc i8 %597 to i1
  br i1 %tobool1049, label %if.then1050, label %if.end1064

if.then1050:                                      ; preds = %if.end1047
  %598 = load i32, ptr %dst_dirfd.addr, align 4
  %599 = load ptr, ptr %dst_relname.addr, align 8
  %st_uid = getelementptr inbounds %struct.stat, ptr %src_sb, i32 0, i32 4
  %600 = load i32, ptr %st_uid, align 4
  %st_gid = getelementptr inbounds %struct.stat, ptr %src_sb, i32 0, i32 5
  %601 = load i32, ptr %st_gid, align 8
  %call1051 = call i32 @lchownat(i32 noundef %598, ptr noundef %599, i32 noundef %600, i32 noundef %601)
  %cmp1052 = icmp ne i32 %call1051, 0
  br i1 %cmp1052, label %land.lhs.true1054, label %if.else1062

land.lhs.true1054:                                ; preds = %if.then1050
  %602 = load ptr, ptr %x.addr, align 8
  %call1055 = call zeroext i1 @chown_failure_ok(ptr noundef %602) #20
  br i1 %call1055, label %if.else1062, label %if.then1056

if.then1056:                                      ; preds = %land.lhs.true1054
  %call1057 = call ptr @__errno_location() #15
  %603 = load i32, ptr %call1057, align 4
  %call1058 = call ptr @gettext(ptr noundef @.str.49) #16
  %604 = load ptr, ptr %dst_name.addr, align 8
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %603, ptr noundef %call1058, ptr noundef %604) #17
  %605 = load ptr, ptr %x.addr, align 8
  %require_preserve = getelementptr inbounds %struct.cp_options, ptr %605, i32 0, i32 23
  %606 = load i8, ptr %require_preserve, align 2
  %tobool1059 = trunc i8 %606 to i1
  br i1 %tobool1059, label %if.then1060, label %if.end1061

if.then1060:                                      ; preds = %if.then1056
  br label %un_backup

if.end1061:                                       ; preds = %if.then1056
  br label %if.end1063

if.else1062:                                      ; preds = %land.lhs.true1054, %if.then1050
  br label %if.end1063

if.end1063:                                       ; preds = %if.else1062, %if.end1061
  br label %if.end1064

if.end1064:                                       ; preds = %if.end1063, %if.end1047
  br label %if.end1068

if.else1065:                                      ; preds = %if.else992
  %call1066 = call ptr @gettext(ptr noundef @.str.50) #16
  %607 = load ptr, ptr %src_name.addr, align 8
  %call1067 = call ptr @quotearg_style(i32 noundef 4, ptr noundef %607)
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %call1066, ptr noundef %call1067) #17
  br label %un_backup

if.end1068:                                       ; preds = %if.end1064
  br label %if.end1069

if.end1069:                                       ; preds = %if.end1068, %if.end991
  br label %if.end1070

if.end1070:                                       ; preds = %if.end1069, %if.end967
  br label %if.end1071

if.end1071:                                       ; preds = %if.end1070, %if.end945
  br label %if.end1072

if.end1072:                                       ; preds = %if.end1071, %if.end928
  br label %if.end1073

if.end1073:                                       ; preds = %if.end1072, %if.end909
  br label %if.end1074

if.end1074:                                       ; preds = %if.end1073, %if.end865
  %608 = load i8, ptr %new_dst, align 1
  %tobool1075 = trunc i8 %608 to i1
  br i1 %tobool1075, label %if.end1098, label %land.lhs.true1076

land.lhs.true1076:                                ; preds = %if.end1074
  %609 = load ptr, ptr %x.addr, align 8
  %copy_as_regular1077 = getelementptr inbounds %struct.cp_options, ptr %609, i32 0, i32 5
  %610 = load i8, ptr %copy_as_regular1077, align 4
  %tobool1078 = trunc i8 %610 to i1
  br i1 %tobool1078, label %if.end1098, label %land.lhs.true1079

land.lhs.true1079:                                ; preds = %land.lhs.true1076
  %611 = load i32, ptr %src_mode, align 4
  %and1080 = and i32 %611, 61440
  %cmp1081 = icmp eq i32 %and1080, 16384
  br i1 %cmp1081, label %if.end1098, label %land.lhs.true1083

land.lhs.true1083:                                ; preds = %land.lhs.true1079
  %612 = load ptr, ptr %x.addr, align 8
  %set_security_context1084 = getelementptr inbounds %struct.cp_options, ptr %612, i32 0, i32 20
  %613 = load ptr, ptr %set_security_context1084, align 8
  %tobool1085 = icmp ne ptr %613, null
  br i1 %tobool1085, label %if.then1090, label %lor.lhs.false1086

lor.lhs.false1086:                                ; preds = %land.lhs.true1083
  %614 = load ptr, ptr %x.addr, align 8
  %preserve_security_context1087 = getelementptr inbounds %struct.cp_options, ptr %614, i32 0, i32 24
  %615 = load i8, ptr %preserve_security_context1087, align 1
  %tobool1088 = trunc i8 %615 to i1
  br i1 %tobool1088, label %if.then1090, label %if.end1098

if.then1090:                                      ; preds = %lor.lhs.false1086, %land.lhs.true1083
  %616 = load ptr, ptr %dst_name.addr, align 8
  %617 = load ptr, ptr %x.addr, align 8
  %call1091 = call zeroext i1 @set_file_security_ctx(ptr noundef %616, i1 noundef zeroext false, ptr noundef %617)
  br i1 %call1091, label %if.end1097, label %if.then1092

if.then1092:                                      ; preds = %if.then1090
  %618 = load ptr, ptr %x.addr, align 8
  %require_preserve_context1093 = getelementptr inbounds %struct.cp_options, ptr %618, i32 0, i32 25
  %619 = load i8, ptr %require_preserve_context1093, align 4
  %tobool1094 = trunc i8 %619 to i1
  br i1 %tobool1094, label %if.then1095, label %if.end1096

if.then1095:                                      ; preds = %if.then1092
  br label %un_backup

if.end1096:                                       ; preds = %if.then1092
  br label %if.end1097

if.end1097:                                       ; preds = %if.end1096, %if.then1090
  br label %if.end1098

if.end1098:                                       ; preds = %if.end1097, %lor.lhs.false1086, %land.lhs.true1079, %land.lhs.true1076, %if.end1074
  %620 = load i8, ptr %command_line_arg.addr, align 1
  %tobool1099 = trunc i8 %620 to i1
  br i1 %tobool1099, label %land.lhs.true1101, label %if.end1111

land.lhs.true1101:                                ; preds = %if.end1098
  %621 = load ptr, ptr %x.addr, align 8
  %dest_info1102 = getelementptr inbounds %struct.cp_options, ptr %621, i32 0, i32 41
  %622 = load ptr, ptr %dest_info1102, align 8
  %tobool1103 = icmp ne ptr %622, null
  br i1 %tobool1103, label %if.then1104, label %if.end1111

if.then1104:                                      ; preds = %land.lhs.true1101
  %623 = load i32, ptr %dst_dirfd.addr, align 4
  %624 = load ptr, ptr %drelname, align 8
  %call1105 = call i32 @fstatat(i32 noundef %623, ptr noundef %624, ptr noundef %sb, i32 noundef 256) #16
  %cmp1106 = icmp eq i32 %call1105, 0
  br i1 %cmp1106, label %if.then1108, label %if.end1110

if.then1108:                                      ; preds = %if.then1104
  %625 = load ptr, ptr %x.addr, align 8
  %dest_info1109 = getelementptr inbounds %struct.cp_options, ptr %625, i32 0, i32 41
  %626 = load ptr, ptr %dest_info1109, align 8
  %627 = load ptr, ptr %dst_relname.addr, align 8
  call void @record_file(ptr noundef %626, ptr noundef %627, ptr noundef %sb)
  br label %if.end1110

if.end1110:                                       ; preds = %if.then1108, %if.then1104
  br label %if.end1111

if.end1111:                                       ; preds = %if.end1110, %land.lhs.true1101, %if.end1098
  %628 = load ptr, ptr %x.addr, align 8
  %hard_link1112 = getelementptr inbounds %struct.cp_options, ptr %628, i32 0, i32 8
  %629 = load i8, ptr %hard_link1112, align 1
  %tobool1113 = trunc i8 %629 to i1
  br i1 %tobool1113, label %land.lhs.true1115, label %if.end1121

land.lhs.true1115:                                ; preds = %if.end1111
  %630 = load i32, ptr %src_mode, align 4
  %and1116 = and i32 %630, 61440
  %cmp1117 = icmp eq i32 %and1116, 16384
  br i1 %cmp1117, label %if.end1121, label %if.then1119

if.then1119:                                      ; preds = %land.lhs.true1115
  %631 = load i8, ptr %delayed_ok, align 1
  %tobool1120 = trunc i8 %631 to i1
  store i1 %tobool1120, ptr %retval, align 1
  br label %return

if.end1121:                                       ; preds = %land.lhs.true1115, %if.end1111
  %632 = load i8, ptr %copied_as_regular, align 1
  %tobool1122 = trunc i8 %632 to i1
  br i1 %tobool1122, label %if.then1123, label %if.end1125

if.then1123:                                      ; preds = %if.end1121
  %633 = load i8, ptr %delayed_ok, align 1
  %tobool1124 = trunc i8 %633 to i1
  store i1 %tobool1124, ptr %retval, align 1
  br label %return

if.end1125:                                       ; preds = %if.end1121
  %634 = load ptr, ptr %x.addr, align 8
  %preserve_timestamps1126 = getelementptr inbounds %struct.cp_options, ptr %634, i32 0, i32 18
  %635 = load i8, ptr %preserve_timestamps1126, align 1
  %tobool1127 = trunc i8 %635 to i1
  br i1 %tobool1127, label %if.then1128, label %if.end1148

if.then1128:                                      ; preds = %if.end1125
  %arrayidx = getelementptr inbounds [2 x %struct.timespec], ptr %timespec, i64 0, i64 0
  %call1129 = call { i64, i64 } @get_stat_atime(ptr noundef %src_sb) #20
  %636 = getelementptr inbounds { i64, i64 }, ptr %tmp, i32 0, i32 0
  %637 = extractvalue { i64, i64 } %call1129, 0
  store i64 %637, ptr %636, align 8
  %638 = getelementptr inbounds { i64, i64 }, ptr %tmp, i32 0, i32 1
  %639 = extractvalue { i64, i64 } %call1129, 1
  store i64 %639, ptr %638, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %arrayidx, ptr align 8 %tmp, i64 16, i1 false)
  %arrayidx1130 = getelementptr inbounds [2 x %struct.timespec], ptr %timespec, i64 0, i64 1
  %call1132 = call { i64, i64 } @get_stat_mtime(ptr noundef %src_sb) #20
  %640 = getelementptr inbounds { i64, i64 }, ptr %tmp1131, i32 0, i32 0
  %641 = extractvalue { i64, i64 } %call1132, 0
  store i64 %641, ptr %640, align 8
  %642 = getelementptr inbounds { i64, i64 }, ptr %tmp1131, i32 0, i32 1
  %643 = extractvalue { i64, i64 } %call1132, 1
  store i64 %643, ptr %642, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %arrayidx1130, ptr align 8 %tmp1131, i64 16, i1 false)
  %644 = load i8, ptr %dest_is_symlink, align 1
  %tobool1133 = trunc i8 %644 to i1
  %645 = zext i1 %tobool1133 to i64
  %cond1135 = select i1 %tobool1133, i32 256, i32 0
  store i32 %cond1135, ptr %utimensat_flags, align 4
  %646 = load i32, ptr %dst_dirfd.addr, align 4
  %647 = load ptr, ptr %drelname, align 8
  %arraydecay = getelementptr inbounds [2 x %struct.timespec], ptr %timespec, i64 0, i64 0
  %648 = load i32, ptr %utimensat_flags, align 4
  %call1136 = call i32 @utimensat(i32 noundef %646, ptr noundef %647, ptr noundef %arraydecay, i32 noundef %648) #16
  %cmp1137 = icmp ne i32 %call1136, 0
  br i1 %cmp1137, label %if.then1139, label %if.end1147

if.then1139:                                      ; preds = %if.then1128
  %call1140 = call ptr @__errno_location() #15
  %649 = load i32, ptr %call1140, align 4
  %call1141 = call ptr @gettext(ptr noundef @.str.51) #16
  %650 = load ptr, ptr %dst_name.addr, align 8
  %call1142 = call ptr @quotearg_style(i32 noundef 4, ptr noundef %650)
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %649, ptr noundef %call1141, ptr noundef %call1142) #17
  %651 = load ptr, ptr %x.addr, align 8
  %require_preserve1143 = getelementptr inbounds %struct.cp_options, ptr %651, i32 0, i32 23
  %652 = load i8, ptr %require_preserve1143, align 2
  %tobool1144 = trunc i8 %652 to i1
  br i1 %tobool1144, label %if.then1145, label %if.end1146

if.then1145:                                      ; preds = %if.then1139
  store i1 false, ptr %retval, align 1
  br label %return

if.end1146:                                       ; preds = %if.then1139
  br label %if.end1147

if.end1147:                                       ; preds = %if.end1146, %if.then1128
  br label %if.end1148

if.end1148:                                       ; preds = %if.end1147, %if.end1125
  %653 = load i8, ptr %dest_is_symlink, align 1
  %tobool1149 = trunc i8 %653 to i1
  br i1 %tobool1149, label %if.end1174, label %land.lhs.true1150

land.lhs.true1150:                                ; preds = %if.end1148
  %654 = load ptr, ptr %x.addr, align 8
  %preserve_ownership1151 = getelementptr inbounds %struct.cp_options, ptr %654, i32 0, i32 16
  %655 = load i8, ptr %preserve_ownership1151, align 1
  %tobool1152 = trunc i8 %655 to i1
  br i1 %tobool1152, label %land.lhs.true1154, label %if.end1174

land.lhs.true1154:                                ; preds = %land.lhs.true1150
  %656 = load i8, ptr %new_dst, align 1
  %tobool1155 = trunc i8 %656 to i1
  br i1 %tobool1155, label %if.then1167, label %lor.lhs.false1157

lor.lhs.false1157:                                ; preds = %land.lhs.true1154
  %st_uid1158 = getelementptr inbounds %struct.stat, ptr %src_sb, i32 0, i32 4
  %657 = load i32, ptr %st_uid1158, align 4
  %st_uid1159 = getelementptr inbounds %struct.stat, ptr %dst_sb, i32 0, i32 4
  %658 = load i32, ptr %st_uid1159, align 4
  %cmp1160 = icmp eq i32 %657, %658
  br i1 %cmp1160, label %land.lhs.true1162, label %if.then1167

land.lhs.true1162:                                ; preds = %lor.lhs.false1157
  %st_gid1163 = getelementptr inbounds %struct.stat, ptr %src_sb, i32 0, i32 5
  %659 = load i32, ptr %st_gid1163, align 8
  %st_gid1164 = getelementptr inbounds %struct.stat, ptr %dst_sb, i32 0, i32 5
  %660 = load i32, ptr %st_gid1164, align 8
  %cmp1165 = icmp eq i32 %659, %660
  br i1 %cmp1165, label %if.end1174, label %if.then1167

if.then1167:                                      ; preds = %land.lhs.true1162, %lor.lhs.false1157, %land.lhs.true1154
  %661 = load ptr, ptr %x.addr, align 8
  %662 = load ptr, ptr %dst_name.addr, align 8
  %663 = load i32, ptr %dst_dirfd.addr, align 4
  %664 = load ptr, ptr %drelname, align 8
  %665 = load i8, ptr %new_dst, align 1
  %tobool1168 = trunc i8 %665 to i1
  %call1169 = call i32 @set_owner(ptr noundef %661, ptr noundef %662, i32 noundef %663, ptr noundef %664, i32 noundef -1, ptr noundef %src_sb, i1 noundef zeroext %tobool1168, ptr noundef %dst_sb)
  switch i32 %call1169, label %sw.epilog1173 [
    i32 -1, label %sw.bb1170
    i32 0, label %sw.bb1171
  ]

sw.bb1170:                                        ; preds = %if.then1167
  store i1 false, ptr %retval, align 1
  br label %return

sw.bb1171:                                        ; preds = %if.then1167
  %666 = load i32, ptr %src_mode, align 4
  %and1172 = and i32 %666, -3585
  store i32 %and1172, ptr %src_mode, align 4
  br label %sw.epilog1173

sw.epilog1173:                                    ; preds = %sw.bb1171, %if.then1167
  br label %if.end1174

if.end1174:                                       ; preds = %sw.epilog1173, %land.lhs.true1162, %land.lhs.true1150, %if.end1148
  %667 = load ptr, ptr %x.addr, align 8
  %preserve_xattr = getelementptr inbounds %struct.cp_options, ptr %667, i32 0, i32 26
  %668 = load i8, ptr %preserve_xattr, align 1
  %tobool1175 = trunc i8 %668 to i1
  br i1 %tobool1175, label %land.lhs.true1177, label %if.end1183

land.lhs.true1177:                                ; preds = %if.end1174
  %669 = load ptr, ptr %src_name.addr, align 8
  %670 = load ptr, ptr %dst_name.addr, align 8
  %671 = load ptr, ptr %x.addr, align 8
  %call1178 = call zeroext i1 @copy_attr(ptr noundef %669, i32 noundef -1, ptr noundef %670, i32 noundef -1, ptr noundef %671)
  br i1 %call1178, label %if.end1183, label %land.lhs.true1179

land.lhs.true1179:                                ; preds = %land.lhs.true1177
  %672 = load ptr, ptr %x.addr, align 8
  %require_preserve_xattr = getelementptr inbounds %struct.cp_options, ptr %672, i32 0, i32 27
  %673 = load i8, ptr %require_preserve_xattr, align 2
  %tobool1180 = trunc i8 %673 to i1
  br i1 %tobool1180, label %if.then1182, label %if.end1183

if.then1182:                                      ; preds = %land.lhs.true1179
  store i1 false, ptr %retval, align 1
  br label %return

if.end1183:                                       ; preds = %land.lhs.true1179, %land.lhs.true1177, %if.end1174
  %674 = load i8, ptr %dest_is_symlink, align 1
  %tobool1184 = trunc i8 %674 to i1
  br i1 %tobool1184, label %if.then1185, label %if.end1187

if.then1185:                                      ; preds = %if.end1183
  %675 = load i8, ptr %delayed_ok, align 1
  %tobool1186 = trunc i8 %675 to i1
  store i1 %tobool1186, ptr %retval, align 1
  br label %return

if.end1187:                                       ; preds = %if.end1183
  %676 = load ptr, ptr %dst_name.addr, align 8
  call void @set_author(ptr noundef %676, i32 noundef -1, ptr noundef %src_sb)
  %677 = load ptr, ptr %x.addr, align 8
  %preserve_mode = getelementptr inbounds %struct.cp_options, ptr %677, i32 0, i32 17
  %678 = load i8, ptr %preserve_mode, align 8
  %tobool1188 = trunc i8 %678 to i1
  br i1 %tobool1188, label %if.then1194, label %lor.lhs.false1190

lor.lhs.false1190:                                ; preds = %if.end1187
  %679 = load ptr, ptr %x.addr, align 8
  %move_mode1191 = getelementptr inbounds %struct.cp_options, ptr %679, i32 0, i32 9
  %680 = load i8, ptr %move_mode1191, align 8
  %tobool1192 = trunc i8 %680 to i1
  br i1 %tobool1192, label %if.then1194, label %if.else1204

if.then1194:                                      ; preds = %lor.lhs.false1190, %if.end1187
  %681 = load ptr, ptr %src_name.addr, align 8
  %682 = load ptr, ptr %dst_name.addr, align 8
  %683 = load i32, ptr %src_mode, align 4
  %call1195 = call i32 @xcopy_acl(ptr noundef %681, i32 noundef -1, ptr noundef %682, i32 noundef -1, i32 noundef %683)
  %cmp1196 = icmp ne i32 %call1195, 0
  br i1 %cmp1196, label %land.lhs.true1198, label %if.end1203

land.lhs.true1198:                                ; preds = %if.then1194
  %684 = load ptr, ptr %x.addr, align 8
  %require_preserve1199 = getelementptr inbounds %struct.cp_options, ptr %684, i32 0, i32 23
  %685 = load i8, ptr %require_preserve1199, align 2
  %tobool1200 = trunc i8 %685 to i1
  br i1 %tobool1200, label %if.then1202, label %if.end1203

if.then1202:                                      ; preds = %land.lhs.true1198
  store i1 false, ptr %retval, align 1
  br label %return

if.end1203:                                       ; preds = %land.lhs.true1198, %if.then1194
  br label %if.end1293

if.else1204:                                      ; preds = %lor.lhs.false1190
  %686 = load ptr, ptr %x.addr, align 8
  %set_mode1205 = getelementptr inbounds %struct.cp_options, ptr %686, i32 0, i32 30
  %687 = load i8, ptr %set_mode1205, align 1
  %tobool1206 = trunc i8 %687 to i1
  br i1 %tobool1206, label %if.then1207, label %if.else1214

if.then1207:                                      ; preds = %if.else1204
  %688 = load ptr, ptr %dst_name.addr, align 8
  %689 = load ptr, ptr %x.addr, align 8
  %mode1208 = getelementptr inbounds %struct.cp_options, ptr %689, i32 0, i32 4
  %690 = load i32, ptr %mode1208, align 8
  %call1209 = call i32 @xset_acl(ptr noundef %688, i32 noundef -1, i32 noundef %690)
  %cmp1210 = icmp ne i32 %call1209, 0
  br i1 %cmp1210, label %if.then1212, label %if.end1213

if.then1212:                                      ; preds = %if.then1207
  store i1 false, ptr %retval, align 1
  br label %return

if.end1213:                                       ; preds = %if.then1207
  br label %if.end1292

if.else1214:                                      ; preds = %if.else1204
  %691 = load ptr, ptr %x.addr, align 8
  %explicit_no_preserve_mode = getelementptr inbounds %struct.cp_options, ptr %691, i32 0, i32 19
  %692 = load i8, ptr %explicit_no_preserve_mode, align 2
  %tobool1215 = trunc i8 %692 to i1
  br i1 %tobool1215, label %land.lhs.true1217, label %if.else1246

land.lhs.true1217:                                ; preds = %if.else1214
  %693 = load i8, ptr %new_dst, align 1
  %tobool1218 = trunc i8 %693 to i1
  br i1 %tobool1218, label %if.then1220, label %if.else1246

if.then1220:                                      ; preds = %land.lhs.true1217
  %694 = load i32, ptr %src_mode, align 4
  %and1221 = and i32 %694, 61440
  %cmp1222 = icmp eq i32 %and1221, 16384
  br i1 %cmp1222, label %lor.end1228, label %lor.rhs1224

lor.rhs1224:                                      ; preds = %if.then1220
  %695 = load i32, ptr %src_mode, align 4
  %and1225 = and i32 %695, 61440
  %cmp1226 = icmp eq i32 %and1225, 49152
  br label %lor.end1228

lor.end1228:                                      ; preds = %lor.rhs1224, %if.then1220
  %696 = phi i1 [ true, %if.then1220 ], [ %cmp1226, %lor.rhs1224 ]
  %697 = zext i1 %696 to i64
  %cond1229 = select i1 %696, i32 511, i32 438
  store i32 %cond1229, ptr %default_permissions, align 4
  %st_mode1230 = getelementptr inbounds %struct.stat, ptr %dst_sb, i32 0, i32 3
  %698 = load i32, ptr %st_mode1230, align 8
  store i32 %698, ptr %dst_mode, align 4
  %699 = load i32, ptr %src_mode, align 4
  %and1231 = and i32 %699, 61440
  %cmp1232 = icmp eq i32 %and1231, 16384
  br i1 %cmp1232, label %if.then1234, label %if.end1237

if.then1234:                                      ; preds = %lor.end1228
  %700 = load i32, ptr %dst_mode, align 4
  %and1235 = and i32 %700, 1024
  %701 = load i32, ptr %default_permissions, align 4
  %or1236 = or i32 %701, %and1235
  store i32 %or1236, ptr %default_permissions, align 4
  br label %if.end1237

if.end1237:                                       ; preds = %if.then1234, %lor.end1228
  %702 = load ptr, ptr %dst_name.addr, align 8
  %703 = load i32, ptr %default_permissions, align 4
  %call1238 = call i32 @cached_umask()
  %not1239 = xor i32 %call1238, -1
  %and1240 = and i32 %703, %not1239
  %call1241 = call i32 @xset_acl(ptr noundef %702, i32 noundef -1, i32 noundef %and1240)
  %cmp1242 = icmp ne i32 %call1241, 0
  br i1 %cmp1242, label %if.then1244, label %if.end1245

if.then1244:                                      ; preds = %if.end1237
  store i1 false, ptr %retval, align 1
  br label %return

if.end1245:                                       ; preds = %if.end1237
  br label %if.end1291

if.else1246:                                      ; preds = %land.lhs.true1217, %if.else1214
  %704 = load i32, ptr %omitted_permissions, align 4
  %tobool1247 = icmp ne i32 %704, 0
  br i1 %tobool1247, label %if.then1248, label %if.end1274

if.then1248:                                      ; preds = %if.else1246
  %call1249 = call i32 @cached_umask()
  %not1250 = xor i32 %call1249, -1
  %705 = load i32, ptr %omitted_permissions, align 4
  %and1251 = and i32 %705, %not1250
  store i32 %and1251, ptr %omitted_permissions, align 4
  %706 = load i32, ptr %omitted_permissions, align 4
  %tobool1252 = icmp ne i32 %706, 0
  br i1 %tobool1252, label %land.lhs.true1253, label %if.end1273

land.lhs.true1253:                                ; preds = %if.then1248
  %707 = load i8, ptr %restore_dst_mode, align 1
  %tobool1254 = trunc i8 %707 to i1
  br i1 %tobool1254, label %if.end1273, label %if.then1255

if.then1255:                                      ; preds = %land.lhs.true1253
  %708 = load i8, ptr %new_dst, align 1
  %tobool1256 = trunc i8 %708 to i1
  br i1 %tobool1256, label %land.lhs.true1258, label %if.end1266

land.lhs.true1258:                                ; preds = %if.then1255
  %709 = load i32, ptr %dst_dirfd.addr, align 4
  %710 = load ptr, ptr %drelname, align 8
  %call1259 = call i32 @fstatat(i32 noundef %709, ptr noundef %710, ptr noundef %dst_sb, i32 noundef 256) #16
  %cmp1260 = icmp ne i32 %call1259, 0
  br i1 %cmp1260, label %if.then1262, label %if.end1266

if.then1262:                                      ; preds = %land.lhs.true1258
  %call1263 = call ptr @__errno_location() #15
  %711 = load i32, ptr %call1263, align 4
  %call1264 = call ptr @gettext(ptr noundef @.str.11) #16
  %712 = load ptr, ptr %dst_name.addr, align 8
  %call1265 = call ptr @quotearg_style(i32 noundef 4, ptr noundef %712)
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %711, ptr noundef %call1264, ptr noundef %call1265) #17
  store i1 false, ptr %retval, align 1
  br label %return

if.end1266:                                       ; preds = %land.lhs.true1258, %if.then1255
  %st_mode1267 = getelementptr inbounds %struct.stat, ptr %dst_sb, i32 0, i32 3
  %713 = load i32, ptr %st_mode1267, align 8
  store i32 %713, ptr %dst_mode, align 4
  %714 = load i32, ptr %omitted_permissions, align 4
  %715 = load i32, ptr %dst_mode, align 4
  %not1268 = xor i32 %715, -1
  %and1269 = and i32 %714, %not1268
  %tobool1270 = icmp ne i32 %and1269, 0
  br i1 %tobool1270, label %if.then1271, label %if.end1272

if.then1271:                                      ; preds = %if.end1266
  store i8 1, ptr %restore_dst_mode, align 1
  br label %if.end1272

if.end1272:                                       ; preds = %if.then1271, %if.end1266
  br label %if.end1273

if.end1273:                                       ; preds = %if.end1272, %land.lhs.true1253, %if.then1248
  br label %if.end1274

if.end1274:                                       ; preds = %if.end1273, %if.else1246
  %716 = load i8, ptr %restore_dst_mode, align 1
  %tobool1275 = trunc i8 %716 to i1
  br i1 %tobool1275, label %if.then1276, label %if.end1290

if.then1276:                                      ; preds = %if.end1274
  %717 = load i32, ptr %dst_dirfd.addr, align 4
  %718 = load ptr, ptr %drelname, align 8
  %719 = load i32, ptr %dst_mode, align 4
  %720 = load i32, ptr %omitted_permissions, align 4
  %or1277 = or i32 %719, %720
  %call1278 = call i32 @lchmodat(i32 noundef %717, ptr noundef %718, i32 noundef %or1277)
  %cmp1279 = icmp ne i32 %call1278, 0
  br i1 %cmp1279, label %if.then1281, label %if.end1289

if.then1281:                                      ; preds = %if.then1276
  %call1282 = call ptr @__errno_location() #15
  %721 = load i32, ptr %call1282, align 4
  %call1283 = call ptr @gettext(ptr noundef @.str.52) #16
  %722 = load ptr, ptr %dst_name.addr, align 8
  %call1284 = call ptr @quotearg_style(i32 noundef 4, ptr noundef %722)
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %721, ptr noundef %call1283, ptr noundef %call1284) #17
  %723 = load ptr, ptr %x.addr, align 8
  %require_preserve1285 = getelementptr inbounds %struct.cp_options, ptr %723, i32 0, i32 23
  %724 = load i8, ptr %require_preserve1285, align 2
  %tobool1286 = trunc i8 %724 to i1
  br i1 %tobool1286, label %if.then1287, label %if.end1288

if.then1287:                                      ; preds = %if.then1281
  store i1 false, ptr %retval, align 1
  br label %return

if.end1288:                                       ; preds = %if.then1281
  br label %if.end1289

if.end1289:                                       ; preds = %if.end1288, %if.then1276
  br label %if.end1290

if.end1290:                                       ; preds = %if.end1289, %if.end1274
  br label %if.end1291

if.end1291:                                       ; preds = %if.end1290, %if.end1245
  br label %if.end1292

if.end1292:                                       ; preds = %if.end1291, %if.end1213
  br label %if.end1293

if.end1293:                                       ; preds = %if.end1292, %if.end1203
  %725 = load i8, ptr %delayed_ok, align 1
  %tobool1294 = trunc i8 %725 to i1
  store i1 %tobool1294, ptr %retval, align 1
  br label %return

un_backup:                                        ; preds = %if.then1095, %if.else1065, %if.then1060, %if.then1040, %if.then1000, %if.then987, %if.then962, %if.then944, %if.then927, %if.then905, %if.then895, %if.then846, %if.then811, %if.then797, %if.then789, %if.then769, %if.then626, %if.else613, %if.then585, %if.then238
  %726 = load ptr, ptr %x.addr, align 8
  %preserve_security_context1295 = getelementptr inbounds %struct.cp_options, ptr %726, i32 0, i32 24
  %727 = load i8, ptr %preserve_security_context1295, align 1
  %tobool1296 = trunc i8 %727 to i1
  br i1 %tobool1296, label %if.then1297, label %if.end1298

if.then1297:                                      ; preds = %un_backup
  call void @restore_default_fscreatecon_or_die()
  br label %if.end1298

if.end1298:                                       ; preds = %if.then1297, %un_backup
  %728 = load ptr, ptr %earlier_file, align 8
  %cmp1299 = icmp eq ptr %728, null
  br i1 %cmp1299, label %if.then1301, label %if.end1304

if.then1301:                                      ; preds = %if.end1298
  %st_ino1302 = getelementptr inbounds %struct.stat, ptr %src_sb, i32 0, i32 1
  %729 = load i64, ptr %st_ino1302, align 8
  %st_dev1303 = getelementptr inbounds %struct.stat, ptr %src_sb, i32 0, i32 0
  %730 = load i64, ptr %st_dev1303, align 8
  call void @forget_created(i64 noundef %729, i64 noundef %730)
  br label %if.end1304

if.end1304:                                       ; preds = %if.then1301, %if.end1298
  %731 = load ptr, ptr %dst_backup, align 8
  %tobool1305 = icmp ne ptr %731, null
  br i1 %tobool1305, label %if.then1306, label %if.end1328

if.then1306:                                      ; preds = %if.end1304
  %732 = load ptr, ptr %dst_backup, align 8
  %733 = load ptr, ptr %dst_relname.addr, align 8
  %734 = load ptr, ptr %dst_name.addr, align 8
  %sub.ptr.lhs.cast1307 = ptrtoint ptr %733 to i64
  %sub.ptr.rhs.cast1308 = ptrtoint ptr %734 to i64
  %sub.ptr.sub1309 = sub i64 %sub.ptr.lhs.cast1307, %sub.ptr.rhs.cast1308
  %arrayidx1310 = getelementptr inbounds i8, ptr %732, i64 %sub.ptr.sub1309
  store ptr %arrayidx1310, ptr %dst_relbackup, align 8
  %735 = load i32, ptr %dst_dirfd.addr, align 4
  %736 = load ptr, ptr %dst_relbackup, align 8
  %737 = load i32, ptr %dst_dirfd.addr, align 4
  %738 = load ptr, ptr %drelname, align 8
  %call1311 = call i32 @renameat(i32 noundef %735, ptr noundef %736, i32 noundef %737, ptr noundef %738) #16
  %cmp1312 = icmp ne i32 %call1311, 0
  br i1 %cmp1312, label %if.then1314, label %if.else1318

if.then1314:                                      ; preds = %if.then1306
  %call1315 = call ptr @__errno_location() #15
  %739 = load i32, ptr %call1315, align 4
  %call1316 = call ptr @gettext(ptr noundef @.str.53) #16
  %740 = load ptr, ptr %dst_name.addr, align 8
  %call1317 = call ptr @quotearg_style(i32 noundef 4, ptr noundef %740)
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %739, ptr noundef %call1316, ptr noundef %call1317) #17
  br label %if.end1327

if.else1318:                                      ; preds = %if.then1306
  %741 = load ptr, ptr %x.addr, align 8
  %verbose1319 = getelementptr inbounds %struct.cp_options, ptr %741, i32 0, i32 33
  %742 = load i8, ptr %verbose1319, align 8
  %tobool1320 = trunc i8 %742 to i1
  br i1 %tobool1320, label %if.then1321, label %if.end1326

if.then1321:                                      ; preds = %if.else1318
  %call1322 = call ptr @gettext(ptr noundef @.str.54) #16
  %743 = load ptr, ptr %dst_backup, align 8
  %call1323 = call ptr @quotearg_n_style(i32 noundef 0, i32 noundef 4, ptr noundef %743)
  %744 = load ptr, ptr %dst_name.addr, align 8
  %call1324 = call ptr @quotearg_n_style(i32 noundef 1, i32 noundef 4, ptr noundef %744)
  %call1325 = call i32 (ptr, ...) @printf(ptr noundef %call1322, ptr noundef %call1323, ptr noundef %call1324)
  br label %if.end1326

if.end1326:                                       ; preds = %if.then1321, %if.else1318
  br label %if.end1327

if.end1327:                                       ; preds = %if.end1326, %if.then1314
  br label %if.end1328

if.end1328:                                       ; preds = %if.end1327, %if.end1304
  store i1 false, ptr %retval, align 1
  br label %return

return:                                           ; preds = %if.end1328, %if.end1293, %if.then1287, %if.then1262, %if.then1244, %if.then1212, %if.then1202, %if.then1185, %if.then1182, %sw.bb1170, %if.then1145, %if.then1123, %if.then1119, %if.then762, %if.then723, %if.end708, %if.then683, %if.end679, %if.end627, %if.end600, %if.then492, %if.then440, %if.then396, %cond.end381, %if.then346, %if.then320, %if.then298, %if.then200, %if.else179, %if.then91, %cond.end71, %if.then56
  %745 = load i1, ptr %retval, align 1
  ret i1 %745
}

declare i32 @renameatu(i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @follow_fstatat(i32 noundef %dirfd, ptr noundef %filename, ptr noundef %st, i32 noundef %flags) #0 {
entry:
  %dirfd.addr = alloca i32, align 4
  %filename.addr = alloca ptr, align 8
  %st.addr = alloca ptr, align 8
  %flags.addr = alloca i32, align 4
  %result = alloca i32, align 4
  store i32 %dirfd, ptr %dirfd.addr, align 4
  store ptr %filename, ptr %filename.addr, align 8
  store ptr %st, ptr %st.addr, align 8
  store i32 %flags, ptr %flags.addr, align 4
  %0 = load i32, ptr %dirfd.addr, align 4
  %1 = load ptr, ptr %filename.addr, align 8
  %2 = load ptr, ptr %st.addr, align 8
  %3 = load i32, ptr %flags.addr, align 4
  %call = call i32 @fstatat(i32 noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) #16
  store i32 %call, ptr %result, align 4
  %4 = load i32, ptr %result, align 4
  ret i32 %4
}

declare zeroext i1 @seen_file(ptr noundef, ptr noundef, ptr noundef) #1

declare void @record_file(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: noinline nounwind optnone willreturn memory(read) uwtable
define internal zeroext i1 @should_dereference(ptr noundef %x, i1 noundef zeroext %command_line_arg) #7 {
entry:
  %x.addr = alloca ptr, align 8
  %command_line_arg.addr = alloca i8, align 1
  store ptr %x, ptr %x.addr, align 8
  %frombool = zext i1 %command_line_arg to i8
  store i8 %frombool, ptr %command_line_arg.addr, align 1
  %0 = load ptr, ptr %x.addr, align 8
  %dereference = getelementptr inbounds %struct.cp_options, ptr %0, i32 0, i32 1
  %1 = load i32, ptr %dereference, align 4
  %cmp = icmp eq i32 %1, 4
  br i1 %cmp, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %entry
  %2 = load ptr, ptr %x.addr, align 8
  %dereference1 = getelementptr inbounds %struct.cp_options, ptr %2, i32 0, i32 1
  %3 = load i32, ptr %dereference1, align 4
  %cmp2 = icmp eq i32 %3, 3
  br i1 %cmp2, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %lor.rhs
  %4 = load i8, ptr %command_line_arg.addr, align 1
  %tobool = trunc i8 %4 to i1
  br label %land.end

land.end:                                         ; preds = %land.rhs, %lor.rhs
  %5 = phi i1 [ false, %lor.rhs ], [ %tobool, %land.rhs ]
  br label %lor.end

lor.end:                                          ; preds = %land.end, %entry
  %6 = phi i1 [ true, %entry ], [ %5, %land.end ]
  ret i1 %6
}

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i1 @same_file_ok(ptr noundef %src_name, ptr noundef %src_sb, i32 noundef %dst_dirfd, ptr noundef %dst_relname, ptr noundef %dst_sb, ptr noundef %x, ptr noundef %return_now) #0 {
entry:
  %retval = alloca i1, align 1
  %src_name.addr = alloca ptr, align 8
  %src_sb.addr = alloca ptr, align 8
  %dst_dirfd.addr = alloca i32, align 4
  %dst_relname.addr = alloca ptr, align 8
  %dst_sb.addr = alloca ptr, align 8
  %x.addr = alloca ptr, align 8
  %return_now.addr = alloca ptr, align 8
  %src_sb_link = alloca ptr, align 8
  %dst_sb_link = alloca ptr, align 8
  %tmp_dst_sb = alloca %struct.stat, align 8
  %tmp_src_sb = alloca %struct.stat, align 8
  %same_link = alloca i8, align 1
  %same = alloca i8, align 1
  %sn = alloca i8, align 1
  %abs_src = alloca ptr, align 8
  %result = alloca i8, align 1
  store ptr %src_name, ptr %src_name.addr, align 8
  store ptr %src_sb, ptr %src_sb.addr, align 8
  store i32 %dst_dirfd, ptr %dst_dirfd.addr, align 4
  store ptr %dst_relname, ptr %dst_relname.addr, align 8
  store ptr %dst_sb, ptr %dst_sb.addr, align 8
  store ptr %x, ptr %x.addr, align 8
  store ptr %return_now, ptr %return_now.addr, align 8
  %0 = load ptr, ptr %src_sb.addr, align 8
  %1 = load ptr, ptr %dst_sb.addr, align 8
  %call = call zeroext i1 @psame_inode(ptr noundef %0, ptr noundef %1)
  %frombool = zext i1 %call to i8
  store i8 %frombool, ptr %same, align 1
  %2 = load ptr, ptr %return_now.addr, align 8
  store i8 0, ptr %2, align 1
  %3 = load i8, ptr %same, align 1
  %tobool = trunc i8 %3 to i1
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %4 = load ptr, ptr %x.addr, align 8
  %hard_link = getelementptr inbounds %struct.cp_options, ptr %4, i32 0, i32 8
  %5 = load i8, ptr %hard_link, align 1
  %tobool1 = trunc i8 %5 to i1
  br i1 %tobool1, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %6 = load ptr, ptr %return_now.addr, align 8
  store i8 1, ptr %6, align 1
  store i1 true, ptr %retval, align 1
  br label %return

if.end:                                           ; preds = %land.lhs.true, %entry
  %7 = load ptr, ptr %x.addr, align 8
  %dereference = getelementptr inbounds %struct.cp_options, ptr %7, i32 0, i32 1
  %8 = load i32, ptr %dereference, align 4
  %cmp = icmp eq i32 %8, 2
  br i1 %cmp, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.end
  %9 = load i8, ptr %same, align 1
  %tobool3 = trunc i8 %9 to i1
  %frombool4 = zext i1 %tobool3 to i8
  store i8 %frombool4, ptr %same_link, align 1
  %10 = load ptr, ptr %src_sb.addr, align 8
  %st_mode = getelementptr inbounds %struct.stat, ptr %10, i32 0, i32 3
  %11 = load i32, ptr %st_mode, align 8
  %and = and i32 %11, 61440
  %cmp5 = icmp eq i32 %and, 40960
  br i1 %cmp5, label %land.lhs.true6, label %if.end25

land.lhs.true6:                                   ; preds = %if.then2
  %12 = load ptr, ptr %dst_sb.addr, align 8
  %st_mode7 = getelementptr inbounds %struct.stat, ptr %12, i32 0, i32 3
  %13 = load i32, ptr %st_mode7, align 8
  %and8 = and i32 %13, 61440
  %cmp9 = icmp eq i32 %and8, 40960
  br i1 %cmp9, label %if.then10, label %if.end25

if.then10:                                        ; preds = %land.lhs.true6
  %14 = load ptr, ptr %src_name.addr, align 8
  %15 = load i32, ptr %dst_dirfd.addr, align 4
  %16 = load ptr, ptr %dst_relname.addr, align 8
  %call11 = call zeroext i1 @same_nameat(i32 noundef -100, ptr noundef %14, i32 noundef %15, ptr noundef %16)
  %frombool12 = zext i1 %call11 to i8
  store i8 %frombool12, ptr %sn, align 1
  %17 = load i8, ptr %sn, align 1
  %tobool13 = trunc i8 %17 to i1
  br i1 %tobool13, label %if.end22, label %if.then14

if.then14:                                        ; preds = %if.then10
  %18 = load ptr, ptr %x.addr, align 8
  %backup_type = getelementptr inbounds %struct.cp_options, ptr %18, i32 0, i32 0
  %19 = load i32, ptr %backup_type, align 8
  %cmp15 = icmp ne i32 %19, 0
  br i1 %cmp15, label %if.then16, label %if.end17

if.then16:                                        ; preds = %if.then14
  store i1 true, ptr %retval, align 1
  br label %return

if.end17:                                         ; preds = %if.then14
  %20 = load i8, ptr %same_link, align 1
  %tobool18 = trunc i8 %20 to i1
  br i1 %tobool18, label %if.then19, label %if.end21

if.then19:                                        ; preds = %if.end17
  %21 = load ptr, ptr %return_now.addr, align 8
  store i8 1, ptr %21, align 1
  %22 = load ptr, ptr %x.addr, align 8
  %move_mode = getelementptr inbounds %struct.cp_options, ptr %22, i32 0, i32 9
  %23 = load i8, ptr %move_mode, align 8
  %tobool20 = trunc i8 %23 to i1
  %lnot = xor i1 %tobool20, true
  store i1 %lnot, ptr %retval, align 1
  br label %return

if.end21:                                         ; preds = %if.end17
  br label %if.end22

if.end22:                                         ; preds = %if.end21, %if.then10
  %24 = load i8, ptr %sn, align 1
  %tobool23 = trunc i8 %24 to i1
  %lnot24 = xor i1 %tobool23, true
  store i1 %lnot24, ptr %retval, align 1
  br label %return

if.end25:                                         ; preds = %land.lhs.true6, %if.then2
  %25 = load ptr, ptr %src_sb.addr, align 8
  store ptr %25, ptr %src_sb_link, align 8
  %26 = load ptr, ptr %dst_sb.addr, align 8
  store ptr %26, ptr %dst_sb_link, align 8
  br label %if.end48

if.else:                                          ; preds = %if.end
  %27 = load i8, ptr %same, align 1
  %tobool26 = trunc i8 %27 to i1
  br i1 %tobool26, label %if.end28, label %if.then27

if.then27:                                        ; preds = %if.else
  store i1 true, ptr %retval, align 1
  br label %return

if.end28:                                         ; preds = %if.else
  %28 = load i32, ptr %dst_dirfd.addr, align 4
  %29 = load ptr, ptr %dst_relname.addr, align 8
  %call29 = call i32 @fstatat(i32 noundef %28, ptr noundef %29, ptr noundef %tmp_dst_sb, i32 noundef 256) #16
  %cmp30 = icmp ne i32 %call29, 0
  br i1 %cmp30, label %if.then33, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end28
  %30 = load ptr, ptr %src_name.addr, align 8
  %call31 = call i32 @lstat(ptr noundef %30, ptr noundef %tmp_src_sb) #16
  %cmp32 = icmp ne i32 %call31, 0
  br i1 %cmp32, label %if.then33, label %if.end34

if.then33:                                        ; preds = %lor.lhs.false, %if.end28
  store i1 true, ptr %retval, align 1
  br label %return

if.end34:                                         ; preds = %lor.lhs.false
  store ptr %tmp_src_sb, ptr %src_sb_link, align 8
  store ptr %tmp_dst_sb, ptr %dst_sb_link, align 8
  %31 = load ptr, ptr %src_sb_link, align 8
  %32 = load ptr, ptr %dst_sb_link, align 8
  %call35 = call zeroext i1 @psame_inode(ptr noundef %31, ptr noundef %32)
  %frombool36 = zext i1 %call35 to i8
  store i8 %frombool36, ptr %same_link, align 1
  %33 = load ptr, ptr %src_sb_link, align 8
  %st_mode37 = getelementptr inbounds %struct.stat, ptr %33, i32 0, i32 3
  %34 = load i32, ptr %st_mode37, align 8
  %and38 = and i32 %34, 61440
  %cmp39 = icmp eq i32 %and38, 40960
  br i1 %cmp39, label %land.lhs.true40, label %if.end47

land.lhs.true40:                                  ; preds = %if.end34
  %35 = load ptr, ptr %dst_sb_link, align 8
  %st_mode41 = getelementptr inbounds %struct.stat, ptr %35, i32 0, i32 3
  %36 = load i32, ptr %st_mode41, align 8
  %and42 = and i32 %36, 61440
  %cmp43 = icmp eq i32 %and42, 40960
  br i1 %cmp43, label %land.lhs.true44, label %if.end47

land.lhs.true44:                                  ; preds = %land.lhs.true40
  %37 = load ptr, ptr %x.addr, align 8
  %unlink_dest_before_opening = getelementptr inbounds %struct.cp_options, ptr %37, i32 0, i32 6
  %38 = load i8, ptr %unlink_dest_before_opening, align 1
  %tobool45 = trunc i8 %38 to i1
  br i1 %tobool45, label %if.then46, label %if.end47

if.then46:                                        ; preds = %land.lhs.true44
  store i1 true, ptr %retval, align 1
  br label %return

if.end47:                                         ; preds = %land.lhs.true44, %land.lhs.true40, %if.end34
  br label %if.end48

if.end48:                                         ; preds = %if.end47, %if.end25
  %39 = load ptr, ptr %x.addr, align 8
  %backup_type49 = getelementptr inbounds %struct.cp_options, ptr %39, i32 0, i32 0
  %40 = load i32, ptr %backup_type49, align 8
  %cmp50 = icmp ne i32 %40, 0
  br i1 %cmp50, label %if.then51, label %if.end72

if.then51:                                        ; preds = %if.end48
  %41 = load i8, ptr %same_link, align 1
  %tobool52 = trunc i8 %41 to i1
  br i1 %tobool52, label %if.end69, label %if.then53

if.then53:                                        ; preds = %if.then51
  %42 = load ptr, ptr %x.addr, align 8
  %move_mode54 = getelementptr inbounds %struct.cp_options, ptr %42, i32 0, i32 9
  %43 = load i8, ptr %move_mode54, align 8
  %tobool55 = trunc i8 %43 to i1
  br i1 %tobool55, label %if.end68, label %land.lhs.true56

land.lhs.true56:                                  ; preds = %if.then53
  %44 = load ptr, ptr %x.addr, align 8
  %dereference57 = getelementptr inbounds %struct.cp_options, ptr %44, i32 0, i32 1
  %45 = load i32, ptr %dereference57, align 4
  %cmp58 = icmp ne i32 %45, 2
  br i1 %cmp58, label %land.lhs.true59, label %if.end68

land.lhs.true59:                                  ; preds = %land.lhs.true56
  %46 = load ptr, ptr %src_sb_link, align 8
  %st_mode60 = getelementptr inbounds %struct.stat, ptr %46, i32 0, i32 3
  %47 = load i32, ptr %st_mode60, align 8
  %and61 = and i32 %47, 61440
  %cmp62 = icmp eq i32 %and61, 40960
  br i1 %cmp62, label %land.lhs.true63, label %if.end68

land.lhs.true63:                                  ; preds = %land.lhs.true59
  %48 = load ptr, ptr %dst_sb_link, align 8
  %st_mode64 = getelementptr inbounds %struct.stat, ptr %48, i32 0, i32 3
  %49 = load i32, ptr %st_mode64, align 8
  %and65 = and i32 %49, 61440
  %cmp66 = icmp eq i32 %and65, 40960
  br i1 %cmp66, label %if.end68, label %if.then67

if.then67:                                        ; preds = %land.lhs.true63
  store i1 false, ptr %retval, align 1
  br label %return

if.end68:                                         ; preds = %land.lhs.true63, %land.lhs.true59, %land.lhs.true56, %if.then53
  store i1 true, ptr %retval, align 1
  br label %return

if.end69:                                         ; preds = %if.then51
  %50 = load ptr, ptr %src_name.addr, align 8
  %51 = load i32, ptr %dst_dirfd.addr, align 4
  %52 = load ptr, ptr %dst_relname.addr, align 8
  %call70 = call zeroext i1 @same_nameat(i32 noundef -100, ptr noundef %50, i32 noundef %51, ptr noundef %52)
  %lnot71 = xor i1 %call70, true
  store i1 %lnot71, ptr %retval, align 1
  br label %return

if.end72:                                         ; preds = %if.end48
  %53 = load ptr, ptr %x.addr, align 8
  %move_mode73 = getelementptr inbounds %struct.cp_options, ptr %53, i32 0, i32 9
  %54 = load i8, ptr %move_mode73, align 8
  %tobool74 = trunc i8 %54 to i1
  br i1 %tobool74, label %if.then78, label %lor.lhs.false75

lor.lhs.false75:                                  ; preds = %if.end72
  %55 = load ptr, ptr %x.addr, align 8
  %unlink_dest_before_opening76 = getelementptr inbounds %struct.cp_options, ptr %55, i32 0, i32 6
  %56 = load i8, ptr %unlink_dest_before_opening76, align 1
  %tobool77 = trunc i8 %56 to i1
  br i1 %tobool77, label %if.then78, label %if.end94

if.then78:                                        ; preds = %lor.lhs.false75, %if.end72
  %57 = load ptr, ptr %dst_sb_link, align 8
  %st_mode79 = getelementptr inbounds %struct.stat, ptr %57, i32 0, i32 3
  %58 = load i32, ptr %st_mode79, align 8
  %and80 = and i32 %58, 61440
  %cmp81 = icmp eq i32 %and80, 40960
  br i1 %cmp81, label %if.then82, label %if.end83

if.then82:                                        ; preds = %if.then78
  store i1 true, ptr %retval, align 1
  br label %return

if.end83:                                         ; preds = %if.then78
  %59 = load i8, ptr %same_link, align 1
  %tobool84 = trunc i8 %59 to i1
  br i1 %tobool84, label %land.lhs.true85, label %if.end93

land.lhs.true85:                                  ; preds = %if.end83
  %60 = load ptr, ptr %dst_sb_link, align 8
  %st_nlink = getelementptr inbounds %struct.stat, ptr %60, i32 0, i32 2
  %61 = load i64, ptr %st_nlink, align 8
  %cmp86 = icmp ult i64 1, %61
  br i1 %cmp86, label %land.lhs.true87, label %if.end93

land.lhs.true87:                                  ; preds = %land.lhs.true85
  %62 = load ptr, ptr %src_name.addr, align 8
  %63 = load i32, ptr %dst_dirfd.addr, align 4
  %64 = load ptr, ptr %dst_relname.addr, align 8
  %call88 = call zeroext i1 @same_nameat(i32 noundef -100, ptr noundef %62, i32 noundef %63, ptr noundef %64)
  br i1 %call88, label %if.end93, label %if.then89

if.then89:                                        ; preds = %land.lhs.true87
  %65 = load ptr, ptr %x.addr, align 8
  %move_mode90 = getelementptr inbounds %struct.cp_options, ptr %65, i32 0, i32 9
  %66 = load i8, ptr %move_mode90, align 8
  %tobool91 = trunc i8 %66 to i1
  %lnot92 = xor i1 %tobool91, true
  store i1 %lnot92, ptr %retval, align 1
  br label %return

if.end93:                                         ; preds = %land.lhs.true87, %land.lhs.true85, %if.end83
  br label %if.end94

if.end94:                                         ; preds = %if.end93, %lor.lhs.false75
  %67 = load ptr, ptr %src_sb_link, align 8
  %st_mode95 = getelementptr inbounds %struct.stat, ptr %67, i32 0, i32 3
  %68 = load i32, ptr %st_mode95, align 8
  %and96 = and i32 %68, 61440
  %cmp97 = icmp eq i32 %and96, 40960
  br i1 %cmp97, label %if.end110, label %land.lhs.true98

land.lhs.true98:                                  ; preds = %if.end94
  %69 = load ptr, ptr %dst_sb_link, align 8
  %st_mode99 = getelementptr inbounds %struct.stat, ptr %69, i32 0, i32 3
  %70 = load i32, ptr %st_mode99, align 8
  %and100 = and i32 %70, 61440
  %cmp101 = icmp eq i32 %and100, 40960
  br i1 %cmp101, label %if.end110, label %if.then102

if.then102:                                       ; preds = %land.lhs.true98
  %71 = load ptr, ptr %src_sb_link, align 8
  %72 = load ptr, ptr %dst_sb_link, align 8
  %call103 = call zeroext i1 @psame_inode(ptr noundef %71, ptr noundef %72)
  br i1 %call103, label %if.end105, label %if.then104

if.then104:                                       ; preds = %if.then102
  store i1 true, ptr %retval, align 1
  br label %return

if.end105:                                        ; preds = %if.then102
  %73 = load ptr, ptr %x.addr, align 8
  %hard_link106 = getelementptr inbounds %struct.cp_options, ptr %73, i32 0, i32 8
  %74 = load i8, ptr %hard_link106, align 1
  %tobool107 = trunc i8 %74 to i1
  br i1 %tobool107, label %if.then108, label %if.end109

if.then108:                                       ; preds = %if.end105
  %75 = load ptr, ptr %return_now.addr, align 8
  store i8 1, ptr %75, align 1
  store i1 true, ptr %retval, align 1
  br label %return

if.end109:                                        ; preds = %if.end105
  br label %if.end110

if.end110:                                        ; preds = %if.end109, %land.lhs.true98, %if.end94
  %76 = load ptr, ptr %x.addr, align 8
  %move_mode111 = getelementptr inbounds %struct.cp_options, ptr %76, i32 0, i32 9
  %77 = load i8, ptr %move_mode111, align 8
  %tobool112 = trunc i8 %77 to i1
  br i1 %tobool112, label %land.lhs.true113, label %if.end129

land.lhs.true113:                                 ; preds = %if.end110
  %78 = load ptr, ptr %src_sb.addr, align 8
  %st_mode114 = getelementptr inbounds %struct.stat, ptr %78, i32 0, i32 3
  %79 = load i32, ptr %st_mode114, align 8
  %and115 = and i32 %79, 61440
  %cmp116 = icmp eq i32 %and115, 40960
  br i1 %cmp116, label %land.lhs.true117, label %if.end129

land.lhs.true117:                                 ; preds = %land.lhs.true113
  %80 = load ptr, ptr %dst_sb_link, align 8
  %st_nlink118 = getelementptr inbounds %struct.stat, ptr %80, i32 0, i32 2
  %81 = load i64, ptr %st_nlink118, align 8
  %cmp119 = icmp ult i64 1, %81
  br i1 %cmp119, label %if.then120, label %if.end129

if.then120:                                       ; preds = %land.lhs.true117
  %82 = load ptr, ptr %src_name.addr, align 8
  %call121 = call noalias ptr @canonicalize_file_name(ptr noundef %82) #16
  store ptr %call121, ptr %abs_src, align 8
  %83 = load ptr, ptr %abs_src, align 8
  %tobool122 = icmp ne ptr %83, null
  br i1 %tobool122, label %if.then123, label %if.end128

if.then123:                                       ; preds = %if.then120
  %84 = load ptr, ptr %abs_src, align 8
  %85 = load i32, ptr %dst_dirfd.addr, align 4
  %86 = load ptr, ptr %dst_relname.addr, align 8
  %call124 = call zeroext i1 @same_nameat(i32 noundef -100, ptr noundef %84, i32 noundef %85, ptr noundef %86)
  %lnot125 = xor i1 %call124, true
  %frombool126 = zext i1 %lnot125 to i8
  store i8 %frombool126, ptr %result, align 1
  %87 = load ptr, ptr %abs_src, align 8
  call void @free(ptr noundef %87) #16
  %88 = load i8, ptr %result, align 1
  %tobool127 = trunc i8 %88 to i1
  store i1 %tobool127, ptr %retval, align 1
  br label %return

if.end128:                                        ; preds = %if.then120
  br label %if.end129

if.end129:                                        ; preds = %if.end128, %land.lhs.true117, %land.lhs.true113, %if.end110
  %89 = load ptr, ptr %x.addr, align 8
  %symbolic_link = getelementptr inbounds %struct.cp_options, ptr %89, i32 0, i32 31
  %90 = load i8, ptr %symbolic_link, align 2
  %tobool130 = trunc i8 %90 to i1
  br i1 %tobool130, label %land.lhs.true131, label %if.end136

land.lhs.true131:                                 ; preds = %if.end129
  %91 = load ptr, ptr %dst_sb_link, align 8
  %st_mode132 = getelementptr inbounds %struct.stat, ptr %91, i32 0, i32 3
  %92 = load i32, ptr %st_mode132, align 8
  %and133 = and i32 %92, 61440
  %cmp134 = icmp eq i32 %and133, 40960
  br i1 %cmp134, label %if.then135, label %if.end136

if.then135:                                       ; preds = %land.lhs.true131
  store i1 true, ptr %retval, align 1
  br label %return

if.end136:                                        ; preds = %land.lhs.true131, %if.end129
  %93 = load ptr, ptr %x.addr, align 8
  %dereference137 = getelementptr inbounds %struct.cp_options, ptr %93, i32 0, i32 1
  %94 = load i32, ptr %dereference137, align 4
  %cmp138 = icmp eq i32 %94, 2
  br i1 %cmp138, label %if.then139, label %if.end172

if.then139:                                       ; preds = %if.end136
  %95 = load ptr, ptr %src_sb_link, align 8
  %st_mode140 = getelementptr inbounds %struct.stat, ptr %95, i32 0, i32 3
  %96 = load i32, ptr %st_mode140, align 8
  %and141 = and i32 %96, 61440
  %cmp142 = icmp eq i32 %and141, 40960
  br i1 %cmp142, label %if.else144, label %if.then143

if.then143:                                       ; preds = %if.then139
  %97 = load ptr, ptr %src_sb_link, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %tmp_src_sb, ptr align 8 %97, i64 144, i1 false)
  br label %if.end149

if.else144:                                       ; preds = %if.then139
  %98 = load ptr, ptr %src_name.addr, align 8
  %call145 = call i32 @stat(ptr noundef %98, ptr noundef %tmp_src_sb) #16
  %cmp146 = icmp ne i32 %call145, 0
  br i1 %cmp146, label %if.then147, label %if.end148

if.then147:                                       ; preds = %if.else144
  store i1 true, ptr %retval, align 1
  br label %return

if.end148:                                        ; preds = %if.else144
  br label %if.end149

if.end149:                                        ; preds = %if.end148, %if.then143
  %99 = load ptr, ptr %dst_sb_link, align 8
  %st_mode150 = getelementptr inbounds %struct.stat, ptr %99, i32 0, i32 3
  %100 = load i32, ptr %st_mode150, align 8
  %and151 = and i32 %100, 61440
  %cmp152 = icmp eq i32 %and151, 40960
  br i1 %cmp152, label %if.else154, label %if.then153

if.then153:                                       ; preds = %if.end149
  %101 = load ptr, ptr %dst_sb_link, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %tmp_dst_sb, ptr align 8 %101, i64 144, i1 false)
  br label %if.end159

if.else154:                                       ; preds = %if.end149
  %102 = load i32, ptr %dst_dirfd.addr, align 4
  %103 = load ptr, ptr %dst_relname.addr, align 8
  %call155 = call i32 @fstatat(i32 noundef %102, ptr noundef %103, ptr noundef %tmp_dst_sb, i32 noundef 0) #16
  %cmp156 = icmp ne i32 %call155, 0
  br i1 %cmp156, label %if.then157, label %if.end158

if.then157:                                       ; preds = %if.else154
  store i1 true, ptr %retval, align 1
  br label %return

if.end158:                                        ; preds = %if.else154
  br label %if.end159

if.end159:                                        ; preds = %if.end158, %if.then153
  %call160 = call zeroext i1 @psame_inode(ptr noundef %tmp_src_sb, ptr noundef %tmp_dst_sb)
  br i1 %call160, label %if.end162, label %if.then161

if.then161:                                       ; preds = %if.end159
  store i1 true, ptr %retval, align 1
  br label %return

if.end162:                                        ; preds = %if.end159
  %104 = load ptr, ptr %x.addr, align 8
  %hard_link163 = getelementptr inbounds %struct.cp_options, ptr %104, i32 0, i32 8
  %105 = load i8, ptr %hard_link163, align 1
  %tobool164 = trunc i8 %105 to i1
  br i1 %tobool164, label %if.then165, label %if.end171

if.then165:                                       ; preds = %if.end162
  %106 = load ptr, ptr %dst_sb_link, align 8
  %st_mode166 = getelementptr inbounds %struct.stat, ptr %106, i32 0, i32 3
  %107 = load i32, ptr %st_mode166, align 8
  %and167 = and i32 %107, 61440
  %cmp168 = icmp eq i32 %and167, 40960
  %lnot169 = xor i1 %cmp168, true
  %108 = load ptr, ptr %return_now.addr, align 8
  %frombool170 = zext i1 %lnot169 to i8
  store i8 %frombool170, ptr %108, align 1
  store i1 true, ptr %retval, align 1
  br label %return

if.end171:                                        ; preds = %if.end162
  br label %if.end172

if.end172:                                        ; preds = %if.end171, %if.end136
  store i1 false, ptr %retval, align 1
  br label %return

return:                                           ; preds = %if.end172, %if.then165, %if.then161, %if.then157, %if.then147, %if.then135, %if.then123, %if.then108, %if.then104, %if.then89, %if.then82, %if.end69, %if.end68, %if.then67, %if.then46, %if.then33, %if.then27, %if.end22, %if.then19, %if.then16, %if.then
  %109 = load i1, ptr %retval, align 1
  ret i1 %109
}

declare i32 @utimecmpat(i32 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) #1

declare ptr @remember_copied(ptr noundef, i64 noundef, i64 noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i1 @create_hard_link(ptr noundef %src_name, i32 noundef %src_dirfd, ptr noundef %src_relname, ptr noundef %dst_name, i32 noundef %dst_dirfd, ptr noundef %dst_relname, i1 noundef zeroext %replace, i1 noundef zeroext %verbose, i1 noundef zeroext %dereference) #0 {
entry:
  %retval = alloca i1, align 1
  %src_name.addr = alloca ptr, align 8
  %src_dirfd.addr = alloca i32, align 4
  %src_relname.addr = alloca ptr, align 8
  %dst_name.addr = alloca ptr, align 8
  %dst_dirfd.addr = alloca i32, align 4
  %dst_relname.addr = alloca ptr, align 8
  %replace.addr = alloca i8, align 1
  %verbose.addr = alloca i8, align 1
  %dereference.addr = alloca i8, align 1
  %err = alloca i32, align 4
  %a_src_name = alloca ptr, align 8
  store ptr %src_name, ptr %src_name.addr, align 8
  store i32 %src_dirfd, ptr %src_dirfd.addr, align 4
  store ptr %src_relname, ptr %src_relname.addr, align 8
  store ptr %dst_name, ptr %dst_name.addr, align 8
  store i32 %dst_dirfd, ptr %dst_dirfd.addr, align 4
  store ptr %dst_relname, ptr %dst_relname.addr, align 8
  %frombool = zext i1 %replace to i8
  store i8 %frombool, ptr %replace.addr, align 1
  %frombool1 = zext i1 %verbose to i8
  store i8 %frombool1, ptr %verbose.addr, align 1
  %frombool2 = zext i1 %dereference to i8
  store i8 %frombool2, ptr %dereference.addr, align 1
  %0 = load i32, ptr %src_dirfd.addr, align 4
  %1 = load ptr, ptr %src_relname.addr, align 8
  %2 = load i32, ptr %dst_dirfd.addr, align 4
  %3 = load ptr, ptr %dst_relname.addr, align 8
  %4 = load i8, ptr %dereference.addr, align 1
  %tobool = trunc i8 %4 to i1
  %5 = zext i1 %tobool to i64
  %cond = select i1 %tobool, i32 1024, i32 0
  %6 = load i8, ptr %replace.addr, align 1
  %tobool3 = trunc i8 %6 to i1
  %call = call i32 @force_linkat(i32 noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %cond, i1 noundef zeroext %tobool3, i32 noundef -1)
  store i32 %call, ptr %err, align 4
  %7 = load i32, ptr %err, align 4
  %cmp = icmp slt i32 0, %7
  br i1 %cmp, label %if.then, label %if.end10

if.then:                                          ; preds = %entry
  store ptr null, ptr %a_src_name, align 8
  %8 = load ptr, ptr %src_name.addr, align 8
  %tobool4 = icmp ne ptr %8, null
  br i1 %tobool4, label %if.end, label %if.then5

if.then5:                                         ; preds = %if.then
  %9 = load ptr, ptr %dst_name.addr, align 8
  %10 = load ptr, ptr %dst_relname.addr, align 8
  %11 = load ptr, ptr %src_relname.addr, align 8
  %call6 = call ptr @subst_suffix(ptr noundef %9, ptr noundef %10, ptr noundef %11)
  store ptr %call6, ptr %a_src_name, align 8
  store ptr %call6, ptr %src_name.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.then5, %if.then
  %12 = load i32, ptr %err, align 4
  %call7 = call ptr @gettext(ptr noundef @.str.55) #16
  %13 = load ptr, ptr %dst_name.addr, align 8
  %call8 = call ptr @quotearg_n_style(i32 noundef 0, i32 noundef 4, ptr noundef %13)
  %14 = load ptr, ptr %src_name.addr, align 8
  %call9 = call ptr @quotearg_n_style(i32 noundef 1, i32 noundef 4, ptr noundef %14)
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %12, ptr noundef %call7, ptr noundef %call8, ptr noundef %call9) #17
  %15 = load ptr, ptr %a_src_name, align 8
  call void @free(ptr noundef %15) #16
  store i1 false, ptr %retval, align 1
  br label %return

if.end10:                                         ; preds = %entry
  %16 = load i32, ptr %err, align 4
  %cmp11 = icmp slt i32 %16, 0
  br i1 %cmp11, label %land.lhs.true, label %if.end17

land.lhs.true:                                    ; preds = %if.end10
  %17 = load i8, ptr %verbose.addr, align 1
  %tobool12 = trunc i8 %17 to i1
  br i1 %tobool12, label %if.then13, label %if.end17

if.then13:                                        ; preds = %land.lhs.true
  %call14 = call ptr @gettext(ptr noundef @.str.25) #16
  %18 = load ptr, ptr %dst_name.addr, align 8
  %call15 = call ptr @quotearg_style(i32 noundef 4, ptr noundef %18)
  %call16 = call i32 (ptr, ...) @printf(ptr noundef %call14, ptr noundef %call15)
  br label %if.end17

if.end17:                                         ; preds = %if.then13, %land.lhs.true, %if.end10
  store i1 true, ptr %retval, align 1
  br label %return

return:                                           ; preds = %if.end17, %if.end
  %19 = load i1, ptr %retval, align 1
  ret i1 %19
}

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i1 @abandon_move(ptr noundef %x, ptr noundef %dst_name, i32 noundef %dst_dirfd, ptr noundef %dst_relname, ptr noundef %dst_sb) #0 {
entry:
  %x.addr = alloca ptr, align 8
  %dst_name.addr = alloca ptr, align 8
  %dst_dirfd.addr = alloca i32, align 4
  %dst_relname.addr = alloca ptr, align 8
  %dst_sb.addr = alloca ptr, align 8
  store ptr %x, ptr %x.addr, align 8
  store ptr %dst_name, ptr %dst_name.addr, align 8
  store i32 %dst_dirfd, ptr %dst_dirfd.addr, align 4
  store ptr %dst_relname, ptr %dst_relname.addr, align 8
  store ptr %dst_sb, ptr %dst_sb.addr, align 8
  %0 = load ptr, ptr %x.addr, align 8
  %move_mode = getelementptr inbounds %struct.cp_options, ptr %0, i32 0, i32 9
  %1 = load i8, ptr %move_mode, align 8
  %tobool = trunc i8 %1 to i1
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__assert_fail(ptr noundef @.str.56, ptr noundef @.str.5, i32 noundef 2070, ptr noundef @__PRETTY_FUNCTION__.abandon_move) #19
  unreachable

if.end:                                           ; preds = %if.then
  %2 = load ptr, ptr %x.addr, align 8
  %update = getelementptr inbounds %struct.cp_options, ptr %2, i32 0, i32 32
  %3 = load i32, ptr %update, align 4
  %cmp = icmp eq i32 %3, 2
  br i1 %cmp, label %lor.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %4 = load ptr, ptr %x.addr, align 8
  %update1 = getelementptr inbounds %struct.cp_options, ptr %4, i32 0, i32 32
  %5 = load i32, ptr %update1, align 4
  %cmp2 = icmp eq i32 %5, 3
  br i1 %cmp2, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %lor.lhs.false
  %6 = load ptr, ptr %x.addr, align 8
  %interactive = getelementptr inbounds %struct.cp_options, ptr %6, i32 0, i32 2
  %7 = load i32, ptr %interactive, align 8
  %cmp3 = icmp eq i32 %7, 3
  br i1 %cmp3, label %land.rhs, label %lor.lhs.false4

lor.lhs.false4:                                   ; preds = %lor.rhs
  %8 = load ptr, ptr %x.addr, align 8
  %interactive5 = getelementptr inbounds %struct.cp_options, ptr %8, i32 0, i32 2
  %9 = load i32, ptr %interactive5, align 8
  %cmp6 = icmp eq i32 %9, 0
  br i1 %cmp6, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %lor.lhs.false4
  %10 = load ptr, ptr %x.addr, align 8
  %stdin_tty = getelementptr inbounds %struct.cp_options, ptr %10, i32 0, i32 36
  %11 = load i8, ptr %stdin_tty, align 1
  %tobool7 = trunc i8 %11 to i1
  br i1 %tobool7, label %land.lhs.true8, label %land.end

land.lhs.true8:                                   ; preds = %land.lhs.true
  %12 = load i32, ptr %dst_dirfd.addr, align 4
  %13 = load ptr, ptr %dst_relname.addr, align 8
  %14 = load ptr, ptr %dst_sb.addr, align 8
  %st_mode = getelementptr inbounds %struct.stat, ptr %14, i32 0, i32 3
  %15 = load i32, ptr %st_mode, align 8
  %call = call zeroext i1 @writable_destination(i32 noundef %12, ptr noundef %13, i32 noundef %15)
  br i1 %call, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %land.lhs.true8, %lor.rhs
  %16 = load ptr, ptr %x.addr, align 8
  %17 = load ptr, ptr %dst_name.addr, align 8
  %18 = load i32, ptr %dst_dirfd.addr, align 4
  %19 = load ptr, ptr %dst_relname.addr, align 8
  %20 = load ptr, ptr %dst_sb.addr, align 8
  %call9 = call zeroext i1 @overwrite_ok(ptr noundef %16, ptr noundef %17, i32 noundef %18, ptr noundef %19, ptr noundef %20)
  %lnot = xor i1 %call9, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true8, %land.lhs.true, %lor.lhs.false4
  %21 = phi i1 [ false, %land.lhs.true8 ], [ false, %land.lhs.true ], [ false, %lor.lhs.false4 ], [ %lnot, %land.rhs ]
  br label %lor.end

lor.end:                                          ; preds = %land.end, %lor.lhs.false, %if.end
  %22 = phi i1 [ true, %lor.lhs.false ], [ true, %if.end ], [ %21, %land.end ]
  ret i1 %22
}

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i1 @overwrite_ok(ptr noundef %x, ptr noundef %dst_name, i32 noundef %dst_dirfd, ptr noundef %dst_relname, ptr noundef %dst_sb) #0 {
entry:
  %x.addr = alloca ptr, align 8
  %dst_name.addr = alloca ptr, align 8
  %dst_dirfd.addr = alloca i32, align 4
  %dst_relname.addr = alloca ptr, align 8
  %dst_sb.addr = alloca ptr, align 8
  %perms = alloca [12 x i8], align 1
  store ptr %x, ptr %x.addr, align 8
  store ptr %dst_name, ptr %dst_name.addr, align 8
  store i32 %dst_dirfd, ptr %dst_dirfd.addr, align 4
  store ptr %dst_relname, ptr %dst_relname.addr, align 8
  store ptr %dst_sb, ptr %dst_sb.addr, align 8
  %0 = load i32, ptr %dst_dirfd.addr, align 4
  %1 = load ptr, ptr %dst_relname.addr, align 8
  %2 = load ptr, ptr %dst_sb.addr, align 8
  %st_mode = getelementptr inbounds %struct.stat, ptr %2, i32 0, i32 3
  %3 = load i32, ptr %st_mode, align 8
  %call = call zeroext i1 @writable_destination(i32 noundef %0, ptr noundef %1, i32 noundef %3)
  br i1 %call, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %4 = load ptr, ptr %dst_sb.addr, align 8
  %st_mode1 = getelementptr inbounds %struct.stat, ptr %4, i32 0, i32 3
  %5 = load i32, ptr %st_mode1, align 8
  %arraydecay = getelementptr inbounds [12 x i8], ptr %perms, i64 0, i64 0
  call void @strmode(i32 noundef %5, ptr noundef %arraydecay)
  %arrayidx = getelementptr inbounds [12 x i8], ptr %perms, i64 0, i64 10
  store i8 0, ptr %arrayidx, align 1
  %6 = load ptr, ptr @stderr, align 8
  %7 = load ptr, ptr %x.addr, align 8
  %move_mode = getelementptr inbounds %struct.cp_options, ptr %7, i32 0, i32 9
  %8 = load i8, ptr %move_mode, align 8
  %tobool = trunc i8 %8 to i1
  br i1 %tobool, label %cond.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then
  %9 = load ptr, ptr %x.addr, align 8
  %unlink_dest_before_opening = getelementptr inbounds %struct.cp_options, ptr %9, i32 0, i32 6
  %10 = load i8, ptr %unlink_dest_before_opening, align 1
  %tobool2 = trunc i8 %10 to i1
  br i1 %tobool2, label %cond.true, label %lor.lhs.false3

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %11 = load ptr, ptr %x.addr, align 8
  %unlink_dest_after_failed_open = getelementptr inbounds %struct.cp_options, ptr %11, i32 0, i32 7
  %12 = load i8, ptr %unlink_dest_after_failed_open, align 2
  %tobool4 = trunc i8 %12 to i1
  br i1 %tobool4, label %cond.true, label %cond.false

cond.true:                                        ; preds = %lor.lhs.false3, %lor.lhs.false, %if.then
  %call5 = call ptr @gettext(ptr noundef @.str.57) #16
  br label %cond.end

cond.false:                                       ; preds = %lor.lhs.false3
  %call6 = call ptr @gettext(ptr noundef @.str.58) #16
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %call5, %cond.true ], [ %call6, %cond.false ]
  %13 = load ptr, ptr @program_name, align 8
  %14 = load ptr, ptr %dst_name.addr, align 8
  %call7 = call ptr @quotearg_style(i32 noundef 4, ptr noundef %14)
  %15 = load ptr, ptr %dst_sb.addr, align 8
  %st_mode8 = getelementptr inbounds %struct.stat, ptr %15, i32 0, i32 3
  %16 = load i32, ptr %st_mode8, align 8
  %and = and i32 %16, 4095
  %conv = zext i32 %and to i64
  %arrayidx9 = getelementptr inbounds [12 x i8], ptr %perms, i64 0, i64 1
  %call10 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %6, ptr noundef %cond, ptr noundef %13, ptr noundef %call7, i64 noundef %conv, ptr noundef %arrayidx9)
  br label %if.end

if.else:                                          ; preds = %entry
  %17 = load ptr, ptr @stderr, align 8
  %call11 = call ptr @gettext(ptr noundef @.str.59) #16
  %18 = load ptr, ptr @program_name, align 8
  %19 = load ptr, ptr %dst_name.addr, align 8
  %call12 = call ptr @quotearg_style(i32 noundef 4, ptr noundef %19)
  %call13 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %17, ptr noundef %call11, ptr noundef %18, ptr noundef %call12)
  br label %if.end

if.end:                                           ; preds = %if.else, %cond.end
  %call14 = call zeroext i1 @yesno()
  ret i1 %call14
}

declare i32 @printf(ptr noundef, ...) #1

; Function Attrs: nounwind willreturn memory(read)
declare ptr @last_component(ptr noundef) #5

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i1 @dot_or_dotdot(ptr noundef %file_name) #0 {
entry:
  %retval = alloca i1, align 1
  %file_name.addr = alloca ptr, align 8
  %sep = alloca i8, align 1
  store ptr %file_name, ptr %file_name.addr, align 8
  %0 = load ptr, ptr %file_name.addr, align 8
  %arrayidx = getelementptr inbounds i8, ptr %0, i64 0
  %1 = load i8, ptr %arrayidx, align 1
  %conv = sext i8 %1 to i32
  %cmp = icmp eq i32 %conv, 46
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %file_name.addr, align 8
  %3 = load ptr, ptr %file_name.addr, align 8
  %arrayidx2 = getelementptr inbounds i8, ptr %3, i64 1
  %4 = load i8, ptr %arrayidx2, align 1
  %conv3 = sext i8 %4 to i32
  %cmp4 = icmp eq i32 %conv3, 46
  %conv5 = zext i1 %cmp4 to i32
  %add = add nsw i32 %conv5, 1
  %idxprom = sext i32 %add to i64
  %arrayidx6 = getelementptr inbounds i8, ptr %2, i64 %idxprom
  %5 = load i8, ptr %arrayidx6, align 1
  store i8 %5, ptr %sep, align 1
  %6 = load i8, ptr %sep, align 1
  %tobool = icmp ne i8 %6, 0
  br i1 %tobool, label %lor.rhs, label %lor.end

lor.rhs:                                          ; preds = %if.then
  %7 = load i8, ptr %sep, align 1
  %conv7 = sext i8 %7 to i32
  %cmp8 = icmp eq i32 %conv7, 47
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %if.then
  %8 = phi i1 [ true, %if.then ], [ %cmp8, %lor.rhs ]
  store i1 %8, ptr %retval, align 1
  br label %return

if.else:                                          ; preds = %entry
  store i1 false, ptr %retval, align 1
  br label %return

return:                                           ; preds = %if.else, %lor.end
  %9 = load i1, ptr %retval, align 1
  ret i1 %9
}

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i1 @source_is_dst_backup(ptr noundef %srcbase, ptr noundef %src_st, i32 noundef %dst_dirfd, ptr noundef %dst_relname) #0 {
entry:
  %retval = alloca i1, align 1
  %srcbase.addr = alloca ptr, align 8
  %src_st.addr = alloca ptr, align 8
  %dst_dirfd.addr = alloca i32, align 4
  %dst_relname.addr = alloca ptr, align 8
  %srcbaselen = alloca i64, align 8
  %dstbase = alloca ptr, align 8
  %dstbaselen = alloca i64, align 8
  %suffixlen = alloca i64, align 8
  %dst_back = alloca ptr, align 8
  %dst_back_sb = alloca %struct.stat, align 8
  %dst_back_status = alloca i32, align 4
  store ptr %srcbase, ptr %srcbase.addr, align 8
  store ptr %src_st, ptr %src_st.addr, align 8
  store i32 %dst_dirfd, ptr %dst_dirfd.addr, align 4
  store ptr %dst_relname, ptr %dst_relname.addr, align 8
  %0 = load ptr, ptr %srcbase.addr, align 8
  %call = call i64 @strlen(ptr noundef %0) #20
  store i64 %call, ptr %srcbaselen, align 8
  %1 = load ptr, ptr %dst_relname.addr, align 8
  %call1 = call ptr @last_component(ptr noundef %1) #20
  store ptr %call1, ptr %dstbase, align 8
  %2 = load ptr, ptr %dstbase, align 8
  %call2 = call i64 @strlen(ptr noundef %2) #20
  store i64 %call2, ptr %dstbaselen, align 8
  %3 = load ptr, ptr @simple_backup_suffix, align 8
  %call3 = call i64 @strlen(ptr noundef %3) #20
  store i64 %call3, ptr %suffixlen, align 8
  %4 = load i64, ptr %srcbaselen, align 8
  %5 = load i64, ptr %dstbaselen, align 8
  %6 = load i64, ptr %suffixlen, align 8
  %add = add i64 %5, %6
  %cmp = icmp eq i64 %4, %add
  br i1 %cmp, label %land.lhs.true, label %if.then

land.lhs.true:                                    ; preds = %entry
  %7 = load ptr, ptr %srcbase.addr, align 8
  %8 = load ptr, ptr %dstbase, align 8
  %9 = load i64, ptr %dstbaselen, align 8
  %call4 = call i32 @memcmp(ptr noundef %7, ptr noundef %8, i64 noundef %9) #20
  %cmp5 = icmp eq i32 %call4, 0
  br i1 %cmp5, label %land.lhs.true6, label %if.then

land.lhs.true6:                                   ; preds = %land.lhs.true
  %10 = load ptr, ptr %srcbase.addr, align 8
  %11 = load i64, ptr %dstbaselen, align 8
  %add.ptr = getelementptr inbounds i8, ptr %10, i64 %11
  %12 = load ptr, ptr @simple_backup_suffix, align 8
  %call7 = call i32 @strcmp(ptr noundef %add.ptr, ptr noundef %12) #20
  %cmp8 = icmp eq i32 %call7, 0
  br i1 %cmp8, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true6, %land.lhs.true, %entry
  store i1 false, ptr %retval, align 1
  br label %return

if.end:                                           ; preds = %land.lhs.true6
  %13 = load ptr, ptr %dst_relname.addr, align 8
  %14 = load ptr, ptr %dst_relname.addr, align 8
  %15 = load ptr, ptr %dst_relname.addr, align 8
  %call9 = call i64 @strlen(ptr noundef %15) #20
  %add.ptr10 = getelementptr inbounds i8, ptr %14, i64 %call9
  %16 = load ptr, ptr @simple_backup_suffix, align 8
  %call11 = call ptr @subst_suffix(ptr noundef %13, ptr noundef %add.ptr10, ptr noundef %16)
  store ptr %call11, ptr %dst_back, align 8
  %17 = load i32, ptr %dst_dirfd.addr, align 4
  %18 = load ptr, ptr %dst_back, align 8
  %call12 = call i32 @fstatat(i32 noundef %17, ptr noundef %18, ptr noundef %dst_back_sb, i32 noundef 0) #16
  store i32 %call12, ptr %dst_back_status, align 4
  %19 = load ptr, ptr %dst_back, align 8
  call void @free(ptr noundef %19) #16
  %20 = load i32, ptr %dst_back_status, align 4
  %cmp13 = icmp eq i32 %20, 0
  br i1 %cmp13, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %if.end
  %21 = load ptr, ptr %src_st.addr, align 8
  %call14 = call zeroext i1 @psame_inode(ptr noundef %21, ptr noundef %dst_back_sb)
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.end
  %22 = phi i1 [ false, %if.end ], [ %call14, %land.rhs ]
  store i1 %22, ptr %retval, align 1
  br label %return

return:                                           ; preds = %land.end, %if.then
  %23 = load i1, ptr %retval, align 1
  ret i1 %23
}

declare noalias ptr @backup_file_rename(i32 noundef, ptr noundef, i32 noundef) #1

; Function Attrs: nounwind willreturn memory(read)
declare i64 @strlen(ptr noundef) #5

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #8

; Function Attrs: nounwind
declare void @free(ptr noundef) #3

; Function Attrs: nounwind
declare i32 @unlinkat(i32 noundef, ptr noundef, i32 noundef) #3

; Function Attrs: nounwind
declare i32 @fstatat(i32 noundef, ptr noundef, ptr noundef, i32 noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define internal void @emit_verbose(ptr noundef %format, ptr noundef %src, ptr noundef %dst, ptr noundef %backup_dst_name) #0 {
entry:
  %format.addr = alloca ptr, align 8
  %src.addr = alloca ptr, align 8
  %dst.addr = alloca ptr, align 8
  %backup_dst_name.addr = alloca ptr, align 8
  store ptr %format, ptr %format.addr, align 8
  store ptr %src, ptr %src.addr, align 8
  store ptr %dst, ptr %dst.addr, align 8
  store ptr %backup_dst_name, ptr %backup_dst_name.addr, align 8
  %0 = load ptr, ptr %format.addr, align 8
  %1 = load ptr, ptr %src.addr, align 8
  %call = call ptr @quotearg_n_style(i32 noundef 0, i32 noundef 4, ptr noundef %1)
  %2 = load ptr, ptr %dst.addr, align 8
  %call1 = call ptr @quotearg_n_style(i32 noundef 1, i32 noundef 4, ptr noundef %2)
  %call2 = call i32 (ptr, ...) @printf(ptr noundef %0, ptr noundef %call, ptr noundef %call1)
  %3 = load ptr, ptr %backup_dst_name.addr, align 8
  %tobool = icmp ne ptr %3, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call3 = call ptr @gettext(ptr noundef @.str.60) #16
  %4 = load ptr, ptr %backup_dst_name.addr, align 8
  %call4 = call ptr @quotearg_style(i32 noundef 4, ptr noundef %4)
  %call5 = call i32 (ptr, ...) @printf(ptr noundef %call3, ptr noundef %call4)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %call6 = call i32 @putchar_unlocked(i32 noundef 10)
  ret void
}

declare ptr @src_to_dest_lookup(i64 noundef, i64 noundef) #1

declare zeroext i1 @same_nameat(i32 noundef, ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal ptr @subst_suffix(ptr noundef %str, ptr noundef %suffix, ptr noundef %newsuffix) #0 {
entry:
  %str.addr = alloca ptr, align 8
  %suffix.addr = alloca ptr, align 8
  %newsuffix.addr = alloca ptr, align 8
  %prefixlen = alloca i64, align 8
  %newsuffixsize = alloca i64, align 8
  %r = alloca ptr, align 8
  store ptr %str, ptr %str.addr, align 8
  store ptr %suffix, ptr %suffix.addr, align 8
  store ptr %newsuffix, ptr %newsuffix.addr, align 8
  %0 = load ptr, ptr %suffix.addr, align 8
  %1 = load ptr, ptr %str.addr, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %0 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %1 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  store i64 %sub.ptr.sub, ptr %prefixlen, align 8
  %2 = load ptr, ptr %newsuffix.addr, align 8
  %call = call i64 @strlen(ptr noundef %2) #20
  %add = add i64 %call, 1
  store i64 %add, ptr %newsuffixsize, align 8
  %3 = load i64, ptr %prefixlen, align 8
  %4 = load i64, ptr %newsuffixsize, align 8
  %add1 = add nsw i64 %3, %4
  %call2 = call noalias nonnull ptr @ximalloc(i64 noundef %add1) #21
  store ptr %call2, ptr %r, align 8
  %5 = load ptr, ptr %r, align 8
  %6 = load i64, ptr %prefixlen, align 8
  %add.ptr = getelementptr inbounds i8, ptr %5, i64 %6
  %7 = load ptr, ptr %newsuffix.addr, align 8
  %8 = load i64, ptr %newsuffixsize, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %add.ptr, ptr align 1 %7, i64 %8, i1 false)
  %9 = load ptr, ptr %r, align 8
  %10 = load ptr, ptr %str.addr, align 8
  %11 = load i64, ptr %prefixlen, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %9, ptr align 1 %10, i64 %11, i1 false)
  ret ptr %9
}

declare void @forget_created(i64 noundef, i64 noundef) #1

; Function Attrs: noinline nounwind optnone willreturn memory(read) uwtable
define internal zeroext i1 @is_ancestor(ptr noundef %sb, ptr noundef %ancestors) #7 {
entry:
  %retval = alloca i1, align 1
  %sb.addr = alloca ptr, align 8
  %ancestors.addr = alloca ptr, align 8
  store ptr %sb, ptr %sb.addr, align 8
  store ptr %ancestors, ptr %ancestors.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %0 = load ptr, ptr %ancestors.addr, align 8
  %cmp = icmp ne ptr %0, null
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load ptr, ptr %ancestors.addr, align 8
  %ino = getelementptr inbounds %struct.dir_list, ptr %1, i32 0, i32 1
  %2 = load i64, ptr %ino, align 8
  %3 = load ptr, ptr %sb.addr, align 8
  %st_ino = getelementptr inbounds %struct.stat, ptr %3, i32 0, i32 1
  %4 = load i64, ptr %st_ino, align 8
  %cmp1 = icmp eq i64 %2, %4
  br i1 %cmp1, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %while.body
  %5 = load ptr, ptr %ancestors.addr, align 8
  %dev = getelementptr inbounds %struct.dir_list, ptr %5, i32 0, i32 2
  %6 = load i64, ptr %dev, align 8
  %7 = load ptr, ptr %sb.addr, align 8
  %st_dev = getelementptr inbounds %struct.stat, ptr %7, i32 0, i32 0
  %8 = load i64, ptr %st_dev, align 8
  %cmp2 = icmp eq i64 %6, %8
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  store i1 true, ptr %retval, align 1
  br label %return

if.end:                                           ; preds = %land.lhs.true, %while.body
  %9 = load ptr, ptr %ancestors.addr, align 8
  %parent = getelementptr inbounds %struct.dir_list, ptr %9, i32 0, i32 0
  %10 = load ptr, ptr %parent, align 8
  store ptr %10, ptr %ancestors.addr, align 8
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %while.cond
  store i1 false, ptr %retval, align 1
  br label %return

return:                                           ; preds = %while.end, %if.then
  %11 = load i1, ptr %retval, align 1
  ret i1 %11
}

; Function Attrs: nounwind
declare i32 @mkdirat(i32 noundef, ptr noundef, i32 noundef) #3

declare i32 @lchmodat(i32 noundef, ptr noundef, i32 noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i1 @copy_dir(ptr noundef %src_name_in, ptr noundef %dst_name_in, i32 noundef %dst_dirfd, ptr noundef %dst_relname_in, i1 noundef zeroext %new_dst, ptr noundef %src_sb, ptr noundef %ancestors, ptr noundef %x, ptr noundef %first_dir_created_per_command_line_arg, ptr noundef %copy_into_self) #0 {
entry:
  %retval = alloca i1, align 1
  %src_name_in.addr = alloca ptr, align 8
  %dst_name_in.addr = alloca ptr, align 8
  %dst_dirfd.addr = alloca i32, align 4
  %dst_relname_in.addr = alloca ptr, align 8
  %new_dst.addr = alloca i8, align 1
  %src_sb.addr = alloca ptr, align 8
  %ancestors.addr = alloca ptr, align 8
  %x.addr = alloca ptr, align 8
  %first_dir_created_per_command_line_arg.addr = alloca ptr, align 8
  %copy_into_self.addr = alloca ptr, align 8
  %name_space = alloca ptr, align 8
  %namep = alloca ptr, align 8
  %non_command_line_options = alloca %struct.cp_options, align 8
  %ok = alloca i8, align 1
  %new_first_dir_created = alloca i8, align 1
  %local_copy_into_self = alloca i8, align 1
  %src_name = alloca ptr, align 8
  %dst_name = alloca ptr, align 8
  %first_dir_created = alloca i8, align 1
  %rename_succeeded = alloca i8, align 1
  store ptr %src_name_in, ptr %src_name_in.addr, align 8
  store ptr %dst_name_in, ptr %dst_name_in.addr, align 8
  store i32 %dst_dirfd, ptr %dst_dirfd.addr, align 4
  store ptr %dst_relname_in, ptr %dst_relname_in.addr, align 8
  %frombool = zext i1 %new_dst to i8
  store i8 %frombool, ptr %new_dst.addr, align 1
  store ptr %src_sb, ptr %src_sb.addr, align 8
  store ptr %ancestors, ptr %ancestors.addr, align 8
  store ptr %x, ptr %x.addr, align 8
  store ptr %first_dir_created_per_command_line_arg, ptr %first_dir_created_per_command_line_arg.addr, align 8
  store ptr %copy_into_self, ptr %copy_into_self.addr, align 8
  %0 = load ptr, ptr %x.addr, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %non_command_line_options, ptr align 8 %0, i64 96, i1 false)
  store i8 1, ptr %ok, align 1
  %1 = load ptr, ptr %src_name_in.addr, align 8
  %call = call noalias ptr @savedir(ptr noundef %1, i32 noundef 2)
  store ptr %call, ptr %name_space, align 8
  %2 = load ptr, ptr %name_space, align 8
  %cmp = icmp eq ptr %2, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call1 = call ptr @__errno_location() #15
  %3 = load i32, ptr %call1, align 4
  %call2 = call ptr @gettext(ptr noundef @.str.61) #16
  %4 = load ptr, ptr %src_name_in.addr, align 8
  %call3 = call ptr @quotearg_style(i32 noundef 4, ptr noundef %4)
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %3, ptr noundef %call2, ptr noundef %call3) #17
  store i1 false, ptr %retval, align 1
  br label %return

if.end:                                           ; preds = %entry
  %5 = load ptr, ptr %x.addr, align 8
  %dereference = getelementptr inbounds %struct.cp_options, ptr %5, i32 0, i32 1
  %6 = load i32, ptr %dereference, align 4
  %cmp4 = icmp eq i32 %6, 3
  br i1 %cmp4, label %if.then5, label %if.end7

if.then5:                                         ; preds = %if.end
  %dereference6 = getelementptr inbounds %struct.cp_options, ptr %non_command_line_options, i32 0, i32 1
  store i32 2, ptr %dereference6, align 4
  br label %if.end7

if.end7:                                          ; preds = %if.then5, %if.end
  store i8 0, ptr %new_first_dir_created, align 1
  %7 = load ptr, ptr %name_space, align 8
  store ptr %7, ptr %namep, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end29, %if.end7
  %8 = load ptr, ptr %namep, align 8
  %9 = load i8, ptr %8, align 1
  %conv = sext i8 %9 to i32
  %cmp8 = icmp ne i32 %conv, 0
  br i1 %cmp8, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %10 = load ptr, ptr %src_name_in.addr, align 8
  %11 = load ptr, ptr %namep, align 8
  %call10 = call noalias nonnull ptr @file_name_concat(ptr noundef %10, ptr noundef %11, ptr noundef null)
  store ptr %call10, ptr %src_name, align 8
  %12 = load ptr, ptr %dst_name_in.addr, align 8
  %13 = load ptr, ptr %namep, align 8
  %call11 = call noalias nonnull ptr @file_name_concat(ptr noundef %12, ptr noundef %13, ptr noundef null)
  store ptr %call11, ptr %dst_name, align 8
  %14 = load ptr, ptr %first_dir_created_per_command_line_arg.addr, align 8
  %15 = load i8, ptr %14, align 1
  %tobool = trunc i8 %15 to i1
  %frombool12 = zext i1 %tobool to i8
  store i8 %frombool12, ptr %first_dir_created, align 1
  %16 = load ptr, ptr %src_name, align 8
  %17 = load ptr, ptr %dst_name, align 8
  %18 = load i32, ptr %dst_dirfd.addr, align 4
  %19 = load ptr, ptr %dst_name, align 8
  %20 = load ptr, ptr %dst_relname_in.addr, align 8
  %21 = load ptr, ptr %dst_name_in.addr, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %20 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %21 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %add.ptr = getelementptr inbounds i8, ptr %19, i64 %sub.ptr.sub
  %22 = load i8, ptr %new_dst.addr, align 1
  %tobool13 = trunc i8 %22 to i1
  %conv14 = zext i1 %tobool13 to i32
  %23 = load ptr, ptr %src_sb.addr, align 8
  %24 = load ptr, ptr %ancestors.addr, align 8
  %call15 = call zeroext i1 @copy_internal(ptr noundef %16, ptr noundef %17, i32 noundef %18, ptr noundef %add.ptr, i32 noundef %conv14, ptr noundef %23, ptr noundef %24, ptr noundef %non_command_line_options, i1 noundef zeroext false, ptr noundef %first_dir_created, ptr noundef %local_copy_into_self, ptr noundef %rename_succeeded)
  %conv16 = zext i1 %call15 to i32
  %25 = load i8, ptr %ok, align 1
  %tobool17 = trunc i8 %25 to i1
  %conv18 = zext i1 %tobool17 to i32
  %and = and i32 %conv18, %conv16
  %tobool19 = icmp ne i32 %and, 0
  %frombool20 = zext i1 %tobool19 to i8
  store i8 %frombool20, ptr %ok, align 1
  %26 = load i8, ptr %local_copy_into_self, align 1
  %tobool21 = trunc i8 %26 to i1
  %conv22 = zext i1 %tobool21 to i32
  %27 = load ptr, ptr %copy_into_self.addr, align 8
  %28 = load i8, ptr %27, align 1
  %tobool23 = trunc i8 %28 to i1
  %conv24 = zext i1 %tobool23 to i32
  %or = or i32 %conv24, %conv22
  %tobool25 = icmp ne i32 %or, 0
  %frombool26 = zext i1 %tobool25 to i8
  store i8 %frombool26, ptr %27, align 1
  %29 = load ptr, ptr %dst_name, align 8
  call void @free(ptr noundef %29) #16
  %30 = load ptr, ptr %src_name, align 8
  call void @free(ptr noundef %30) #16
  %31 = load i8, ptr %local_copy_into_self, align 1
  %tobool27 = trunc i8 %31 to i1
  br i1 %tobool27, label %if.then28, label %if.end29

if.then28:                                        ; preds = %while.body
  br label %while.end

if.end29:                                         ; preds = %while.body
  %32 = load i8, ptr %first_dir_created, align 1
  %tobool30 = trunc i8 %32 to i1
  %conv31 = zext i1 %tobool30 to i32
  %33 = load i8, ptr %new_first_dir_created, align 1
  %tobool32 = trunc i8 %33 to i1
  %conv33 = zext i1 %tobool32 to i32
  %or34 = or i32 %conv33, %conv31
  %tobool35 = icmp ne i32 %or34, 0
  %frombool36 = zext i1 %tobool35 to i8
  store i8 %frombool36, ptr %new_first_dir_created, align 1
  %34 = load ptr, ptr %namep, align 8
  %call37 = call i64 @strlen(ptr noundef %34) #20
  %add = add i64 %call37, 1
  %35 = load ptr, ptr %namep, align 8
  %add.ptr38 = getelementptr inbounds i8, ptr %35, i64 %add
  store ptr %add.ptr38, ptr %namep, align 8
  br label %while.cond, !llvm.loop !8

while.end:                                        ; preds = %if.then28, %while.cond
  %36 = load ptr, ptr %name_space, align 8
  call void @free(ptr noundef %36) #16
  %37 = load i8, ptr %new_first_dir_created, align 1
  %tobool39 = trunc i8 %37 to i1
  %38 = load ptr, ptr %first_dir_created_per_command_line_arg.addr, align 8
  %frombool40 = zext i1 %tobool39 to i8
  store i8 %frombool40, ptr %38, align 1
  %39 = load i8, ptr %ok, align 1
  %tobool41 = trunc i8 %39 to i1
  store i1 %tobool41, ptr %retval, align 1
  br label %return

return:                                           ; preds = %while.end, %if.then
  %40 = load i1, ptr %retval, align 1
  ret i1 %40
}

declare noalias nonnull ptr @dir_name(ptr noundef) #1

; Function Attrs: nounwind willreturn memory(read)
declare i32 @strcmp(ptr noundef, ptr noundef) #5

; Function Attrs: nounwind
declare i32 @stat(ptr noundef, ptr noundef) #3

declare zeroext i1 @psame_inode(ptr noundef, ptr noundef) #1

declare ptr @quotearg_n_style_colon(i32 noundef, i32 noundef, ptr noundef) #1

declare i32 @force_symlinkat(ptr noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i32 noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i1 @copy_reg(ptr noundef %src_name, ptr noundef %dst_name, i32 noundef %dst_dirfd, ptr noundef %dst_relname, ptr noundef %x, i32 noundef %dst_mode, i32 noundef %omitted_permissions, ptr noundef %new_dst, ptr noundef %src_sb) #0 {
entry:
  %retval = alloca i1, align 1
  %src_name.addr = alloca ptr, align 8
  %dst_name.addr = alloca ptr, align 8
  %dst_dirfd.addr = alloca i32, align 4
  %dst_relname.addr = alloca ptr, align 8
  %x.addr = alloca ptr, align 8
  %dst_mode.addr = alloca i32, align 4
  %omitted_permissions.addr = alloca i32, align 4
  %new_dst.addr = alloca ptr, align 8
  %src_sb.addr = alloca ptr, align 8
  %buf = alloca ptr, align 8
  %dest_desc = alloca i32, align 4
  %dest_errno = alloca i32, align 4
  %source_desc = alloca i32, align 4
  %extra_permissions = alloca i32, align 4
  %sb = alloca %struct.stat, align 8
  %src_open_sb = alloca %struct.stat, align 8
  %scan_inference = alloca %union.scan_inference, align 8
  %return_val = alloca i8, align 1
  %data_copy_required = alloca i8, align 1
  %preserve_xattr = alloca i8, align 1
  %src_mode = alloca i32, align 4
  %open_flags = alloca i32, align 4
  %open_mode = alloca i32, align 4
  %open_flags102 = alloca i32, align 4
  %dummy = alloca [1 x i8], align 1
  %temporary_mode = alloca i32, align 4
  %buf_size = alloca i64, align 8
  %hole_size = alloca i64, align 8
  %scantype = alloca i32, align 4
  %make_holes = alloca i8, align 1
  %blcm_max = alloca i64, align 8
  %blcm = alloca i64, align 8
  %n_read = alloca i64, align 8
  %wrote_hole_at_eof = alloca i8, align 1
  %timespec = alloca [2 x %struct.timespec], align 16
  %tmp = alloca %struct.timespec, align 8
  %tmp310 = alloca %struct.timespec, align 8
  store ptr %src_name, ptr %src_name.addr, align 8
  store ptr %dst_name, ptr %dst_name.addr, align 8
  store i32 %dst_dirfd, ptr %dst_dirfd.addr, align 4
  store ptr %dst_relname, ptr %dst_relname.addr, align 8
  store ptr %x, ptr %x.addr, align 8
  store i32 %dst_mode, ptr %dst_mode.addr, align 4
  store i32 %omitted_permissions, ptr %omitted_permissions.addr, align 4
  store ptr %new_dst, ptr %new_dst.addr, align 8
  store ptr %src_sb, ptr %src_sb.addr, align 8
  store ptr null, ptr %buf, align 8
  store i8 1, ptr %return_val, align 1
  %0 = load ptr, ptr %x.addr, align 8
  %data_copy_required1 = getelementptr inbounds %struct.cp_options, ptr %0, i32 0, i32 22
  %1 = load i8, ptr %data_copy_required1, align 1
  %tobool = trunc i8 %1 to i1
  %frombool = zext i1 %tobool to i8
  store i8 %frombool, ptr %data_copy_required, align 1
  %2 = load ptr, ptr %x.addr, align 8
  %preserve_xattr2 = getelementptr inbounds %struct.cp_options, ptr %2, i32 0, i32 26
  %3 = load i8, ptr %preserve_xattr2, align 1
  %tobool3 = trunc i8 %3 to i1
  %conv = zext i1 %tobool3 to i32
  %and = and i32 0, %conv
  %tobool4 = icmp ne i32 %and, 0
  %frombool5 = zext i1 %tobool4 to i8
  store i8 %frombool5, ptr %preserve_xattr, align 1
  store i32 0, ptr @copy_debug, align 4
  %4 = load ptr, ptr %x.addr, align 8
  %reflink_mode = getelementptr inbounds %struct.cp_options, ptr %4, i32 0, i32 40
  %5 = load i32, ptr %reflink_mode, align 4
  %tobool6 = icmp ne i32 %5, 0
  %6 = zext i1 %tobool6 to i64
  %cond = select i1 %tobool6, i32 0, i32 1
  store i32 %cond, ptr getelementptr inbounds (%struct.copy_debug, ptr @copy_debug, i32 0, i32 1), align 4
  store i32 0, ptr getelementptr inbounds (%struct.copy_debug, ptr @copy_debug, i32 0, i32 2), align 4
  %7 = load ptr, ptr %src_name.addr, align 8
  %8 = load ptr, ptr %x.addr, align 8
  %dereference = getelementptr inbounds %struct.cp_options, ptr %8, i32 0, i32 1
  %9 = load i32, ptr %dereference, align 4
  %cmp = icmp eq i32 %9, 2
  %10 = zext i1 %cmp to i64
  %cond8 = select i1 %cmp, i32 131072, i32 0
  %or = or i32 0, %cond8
  %call = call i32 (ptr, i32, ...) @open_safer(ptr noundef %7, i32 noundef %or)
  store i32 %call, ptr %source_desc, align 4
  %11 = load i32, ptr %source_desc, align 4
  %cmp9 = icmp slt i32 %11, 0
  br i1 %cmp9, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call11 = call ptr @__errno_location() #15
  %12 = load i32, ptr %call11, align 4
  %call12 = call ptr @gettext(ptr noundef @.str.62) #16
  %13 = load ptr, ptr %src_name.addr, align 8
  %call13 = call ptr @quotearg_style(i32 noundef 4, ptr noundef %13)
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %12, ptr noundef %call12, ptr noundef %call13) #17
  store i1 false, ptr %retval, align 1
  br label %return

if.end:                                           ; preds = %entry
  %14 = load i32, ptr %source_desc, align 4
  %call14 = call i32 @fstat(i32 noundef %14, ptr noundef %src_open_sb) #16
  %cmp15 = icmp ne i32 %call14, 0
  br i1 %cmp15, label %if.then17, label %if.end21

if.then17:                                        ; preds = %if.end
  %call18 = call ptr @__errno_location() #15
  %15 = load i32, ptr %call18, align 4
  %call19 = call ptr @gettext(ptr noundef @.str.63) #16
  %16 = load ptr, ptr %src_name.addr, align 8
  %call20 = call ptr @quotearg_style(i32 noundef 4, ptr noundef %16)
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %15, ptr noundef %call19, ptr noundef %call20) #17
  store i8 0, ptr %return_val, align 1
  br label %close_src_desc

if.end21:                                         ; preds = %if.end
  %17 = load ptr, ptr %src_sb.addr, align 8
  %call22 = call zeroext i1 @psame_inode(ptr noundef %17, ptr noundef %src_open_sb)
  br i1 %call22, label %if.end26, label %if.then23

if.then23:                                        ; preds = %if.end21
  %call24 = call ptr @gettext(ptr noundef @.str.64) #16
  %18 = load ptr, ptr %src_name.addr, align 8
  %call25 = call ptr @quotearg_style(i32 noundef 4, ptr noundef %18)
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %call24, ptr noundef %call25) #17
  store i8 0, ptr %return_val, align 1
  br label %close_src_desc

if.end26:                                         ; preds = %if.end21
  %19 = load ptr, ptr %src_sb.addr, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %19, ptr align 8 %src_open_sb, i64 144, i1 false)
  %20 = load ptr, ptr %src_sb.addr, align 8
  %st_mode = getelementptr inbounds %struct.stat, ptr %20, i32 0, i32 3
  %21 = load i32, ptr %st_mode, align 8
  store i32 %21, ptr %src_mode, align 4
  %22 = load ptr, ptr %new_dst.addr, align 8
  %23 = load i8, ptr %22, align 1
  %tobool27 = trunc i8 %23 to i1
  br i1 %tobool27, label %if.end91, label %if.then28

if.then28:                                        ; preds = %if.end26
  %24 = load i8, ptr %data_copy_required, align 1
  %tobool29 = trunc i8 %24 to i1
  %25 = zext i1 %tobool29 to i64
  %cond31 = select i1 %tobool29, i32 512, i32 0
  %or32 = or i32 1, %cond31
  store i32 %or32, ptr %open_flags, align 4
  %26 = load i32, ptr %dst_dirfd.addr, align 4
  %27 = load ptr, ptr %dst_relname.addr, align 8
  %28 = load i32, ptr %open_flags, align 4
  %call33 = call i32 (i32, ptr, i32, ...) @openat_safer(i32 noundef %26, ptr noundef %27, i32 noundef %28)
  store i32 %call33, ptr %dest_desc, align 4
  %call34 = call ptr @__errno_location() #15
  %29 = load i32, ptr %call34, align 4
  store i32 %29, ptr %dest_errno, align 4
  %30 = load i32, ptr %dest_desc, align 4
  %cmp35 = icmp sle i32 0, %30
  br i1 %cmp35, label %land.lhs.true, label %if.end47

land.lhs.true:                                    ; preds = %if.then28
  %31 = load ptr, ptr %x.addr, align 8
  %set_security_context = getelementptr inbounds %struct.cp_options, ptr %31, i32 0, i32 20
  %32 = load ptr, ptr %set_security_context, align 8
  %tobool37 = icmp ne ptr %32, null
  br i1 %tobool37, label %if.then40, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %33 = load ptr, ptr %x.addr, align 8
  %preserve_security_context = getelementptr inbounds %struct.cp_options, ptr %33, i32 0, i32 24
  %34 = load i8, ptr %preserve_security_context, align 1
  %tobool38 = trunc i8 %34 to i1
  br i1 %tobool38, label %if.then40, label %if.end47

if.then40:                                        ; preds = %lor.lhs.false, %land.lhs.true
  %35 = load ptr, ptr %dst_name.addr, align 8
  %36 = load ptr, ptr %x.addr, align 8
  %call41 = call zeroext i1 @set_file_security_ctx(ptr noundef %35, i1 noundef zeroext false, ptr noundef %36)
  br i1 %call41, label %if.end46, label %if.then42

if.then42:                                        ; preds = %if.then40
  %37 = load ptr, ptr %x.addr, align 8
  %require_preserve_context = getelementptr inbounds %struct.cp_options, ptr %37, i32 0, i32 25
  %38 = load i8, ptr %require_preserve_context, align 4
  %tobool43 = trunc i8 %38 to i1
  br i1 %tobool43, label %if.then44, label %if.end45

if.then44:                                        ; preds = %if.then42
  store i8 0, ptr %return_val, align 1
  br label %close_src_and_dst_desc

if.end45:                                         ; preds = %if.then42
  br label %if.end46

if.end46:                                         ; preds = %if.end45, %if.then40
  br label %if.end47

if.end47:                                         ; preds = %if.end46, %lor.lhs.false, %if.then28
  %39 = load i32, ptr %dest_desc, align 4
  %cmp48 = icmp slt i32 %39, 0
  br i1 %cmp48, label %land.lhs.true50, label %if.end76

land.lhs.true50:                                  ; preds = %if.end47
  %40 = load i32, ptr %dest_errno, align 4
  %cmp51 = icmp ne i32 %40, 2
  br i1 %cmp51, label %land.lhs.true53, label %if.end76

land.lhs.true53:                                  ; preds = %land.lhs.true50
  %41 = load ptr, ptr %x.addr, align 8
  %unlink_dest_after_failed_open = getelementptr inbounds %struct.cp_options, ptr %41, i32 0, i32 7
  %42 = load i8, ptr %unlink_dest_after_failed_open, align 2
  %tobool54 = trunc i8 %42 to i1
  br i1 %tobool54, label %if.then56, label %if.end76

if.then56:                                        ; preds = %land.lhs.true53
  %43 = load i32, ptr %dst_dirfd.addr, align 4
  %44 = load ptr, ptr %dst_relname.addr, align 8
  %call57 = call i32 @unlinkat(i32 noundef %43, ptr noundef %44, i32 noundef 0) #16
  %cmp58 = icmp eq i32 %call57, 0
  br i1 %cmp58, label %if.then60, label %if.else

if.then60:                                        ; preds = %if.then56
  %45 = load ptr, ptr %x.addr, align 8
  %verbose = getelementptr inbounds %struct.cp_options, ptr %45, i32 0, i32 33
  %46 = load i8, ptr %verbose, align 8
  %tobool61 = trunc i8 %46 to i1
  br i1 %tobool61, label %if.then62, label %if.end66

if.then62:                                        ; preds = %if.then60
  %call63 = call ptr @gettext(ptr noundef @.str.25) #16
  %47 = load ptr, ptr %dst_name.addr, align 8
  %call64 = call ptr @quotearg_style(i32 noundef 4, ptr noundef %47)
  %call65 = call i32 (ptr, ...) @printf(ptr noundef %call63, ptr noundef %call64)
  br label %if.end66

if.end66:                                         ; preds = %if.then62, %if.then60
  br label %if.end75

if.else:                                          ; preds = %if.then56
  %call67 = call ptr @__errno_location() #15
  %48 = load i32, ptr %call67, align 4
  %cmp68 = icmp ne i32 %48, 2
  br i1 %cmp68, label %if.then70, label %if.end74

if.then70:                                        ; preds = %if.else
  %call71 = call ptr @__errno_location() #15
  %49 = load i32, ptr %call71, align 4
  %call72 = call ptr @gettext(ptr noundef @.str.24) #16
  %50 = load ptr, ptr %dst_name.addr, align 8
  %call73 = call ptr @quotearg_style(i32 noundef 4, ptr noundef %50)
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %49, ptr noundef %call72, ptr noundef %call73) #17
  store i8 0, ptr %return_val, align 1
  br label %close_src_desc

if.end74:                                         ; preds = %if.else
  br label %if.end75

if.end75:                                         ; preds = %if.end74, %if.end66
  store i32 2, ptr %dest_errno, align 4
  br label %if.end76

if.end76:                                         ; preds = %if.end75, %land.lhs.true53, %land.lhs.true50, %if.end47
  %51 = load i32, ptr %dest_desc, align 4
  %cmp77 = icmp slt i32 %51, 0
  br i1 %cmp77, label %land.lhs.true79, label %if.end90

land.lhs.true79:                                  ; preds = %if.end76
  %52 = load i32, ptr %dest_errno, align 4
  %cmp80 = icmp eq i32 %52, 2
  br i1 %cmp80, label %if.then82, label %if.end90

if.then82:                                        ; preds = %land.lhs.true79
  %53 = load ptr, ptr %x.addr, align 8
  %set_security_context83 = getelementptr inbounds %struct.cp_options, ptr %53, i32 0, i32 20
  %54 = load ptr, ptr %set_security_context83, align 8
  %tobool84 = icmp ne ptr %54, null
  br i1 %tobool84, label %if.then85, label %if.end89

if.then85:                                        ; preds = %if.then82
  %55 = load ptr, ptr %src_name.addr, align 8
  %56 = load ptr, ptr %dst_name.addr, align 8
  %57 = load i32, ptr %dst_mode.addr, align 4
  %58 = load ptr, ptr %x.addr, align 8
  %call86 = call zeroext i1 @set_process_security_ctx(ptr noundef %55, ptr noundef %56, i32 noundef %57, i1 noundef zeroext true, ptr noundef %58)
  br i1 %call86, label %if.end88, label %if.then87

if.then87:                                        ; preds = %if.then85
  store i8 0, ptr %return_val, align 1
  br label %close_src_desc

if.end88:                                         ; preds = %if.then85
  br label %if.end89

if.end89:                                         ; preds = %if.end88, %if.then82
  %59 = load ptr, ptr %new_dst.addr, align 8
  store i8 1, ptr %59, align 1
  br label %if.end90

if.end90:                                         ; preds = %if.end89, %land.lhs.true79, %if.end76
  br label %if.end91

if.end91:                                         ; preds = %if.end90, %if.end26
  %60 = load ptr, ptr %new_dst.addr, align 8
  %61 = load i8, ptr %60, align 1
  %tobool92 = trunc i8 %61 to i1
  br i1 %tobool92, label %if.then93, label %if.else143

if.then93:                                        ; preds = %if.end91
  %62 = load i32, ptr %dst_mode.addr, align 4
  %63 = load i32, ptr %omitted_permissions.addr, align 4
  %not = xor i32 %63, -1
  %and94 = and i32 %62, %not
  %64 = load i8, ptr %preserve_xattr, align 1
  %tobool95 = trunc i8 %64 to i1
  br i1 %tobool95, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %if.then93
  %65 = load ptr, ptr %x.addr, align 8
  %owner_privileges = getelementptr inbounds %struct.cp_options, ptr %65, i32 0, i32 14
  %66 = load i8, ptr %owner_privileges, align 1
  %tobool97 = trunc i8 %66 to i1
  %lnot = xor i1 %tobool97, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.then93
  %67 = phi i1 [ false, %if.then93 ], [ %lnot, %land.rhs ]
  %68 = zext i1 %67 to i64
  %cond98 = select i1 %67, i32 128, i32 0
  %or99 = or i32 %and94, %cond98
  store i32 %or99, ptr %open_mode, align 4
  %69 = load i32, ptr %open_mode, align 4
  %70 = load i32, ptr %dst_mode.addr, align 4
  %not100 = xor i32 %70, -1
  %and101 = and i32 %69, %not100
  store i32 %and101, ptr %extra_permissions, align 4
  store i32 65, ptr %open_flags102, align 4
  %71 = load i32, ptr %dst_dirfd.addr, align 4
  %72 = load ptr, ptr %dst_relname.addr, align 8
  %73 = load i32, ptr %open_flags102, align 4
  %or103 = or i32 %73, 128
  %74 = load i32, ptr %open_mode, align 4
  %call104 = call i32 (i32, ptr, i32, ...) @openat_safer(i32 noundef %71, ptr noundef %72, i32 noundef %or103, i32 noundef %74)
  store i32 %call104, ptr %dest_desc, align 4
  %call105 = call ptr @__errno_location() #15
  %75 = load i32, ptr %call105, align 4
  store i32 %75, ptr %dest_errno, align 4
  %76 = load i32, ptr %dest_desc, align 4
  %cmp106 = icmp slt i32 %76, 0
  br i1 %cmp106, label %land.lhs.true108, label %if.end127

land.lhs.true108:                                 ; preds = %land.end
  %77 = load i32, ptr %dest_errno, align 4
  %cmp109 = icmp eq i32 %77, 17
  br i1 %cmp109, label %land.lhs.true111, label %if.end127

land.lhs.true111:                                 ; preds = %land.lhs.true108
  %78 = load ptr, ptr %x.addr, align 8
  %move_mode = getelementptr inbounds %struct.cp_options, ptr %78, i32 0, i32 9
  %79 = load i8, ptr %move_mode, align 8
  %tobool112 = trunc i8 %79 to i1
  br i1 %tobool112, label %if.end127, label %if.then113

if.then113:                                       ; preds = %land.lhs.true111
  %80 = load i32, ptr %dst_dirfd.addr, align 4
  %81 = load ptr, ptr %dst_relname.addr, align 8
  %arraydecay = getelementptr inbounds [1 x i8], ptr %dummy, i64 0, i64 0
  %call114 = call i64 @readlinkat(i32 noundef %80, ptr noundef %81, ptr noundef %arraydecay, i64 noundef 1) #16
  %cmp115 = icmp sle i64 0, %call114
  br i1 %cmp115, label %if.then117, label %if.end126

if.then117:                                       ; preds = %if.then113
  %82 = load ptr, ptr %x.addr, align 8
  %open_dangling_dest_symlink = getelementptr inbounds %struct.cp_options, ptr %82, i32 0, i32 37
  %83 = load i8, ptr %open_dangling_dest_symlink, align 4
  %tobool118 = trunc i8 %83 to i1
  br i1 %tobool118, label %if.then119, label %if.else122

if.then119:                                       ; preds = %if.then117
  %84 = load i32, ptr %dst_dirfd.addr, align 4
  %85 = load ptr, ptr %dst_relname.addr, align 8
  %86 = load i32, ptr %open_flags102, align 4
  %87 = load i32, ptr %open_mode, align 4
  %call120 = call i32 (i32, ptr, i32, ...) @openat_safer(i32 noundef %84, ptr noundef %85, i32 noundef %86, i32 noundef %87)
  store i32 %call120, ptr %dest_desc, align 4
  %call121 = call ptr @__errno_location() #15
  %88 = load i32, ptr %call121, align 4
  store i32 %88, ptr %dest_errno, align 4
  br label %if.end125

if.else122:                                       ; preds = %if.then117
  %call123 = call ptr @gettext(ptr noundef @.str.65) #16
  %89 = load ptr, ptr %dst_name.addr, align 8
  %call124 = call ptr @quotearg_style(i32 noundef 4, ptr noundef %89)
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %call123, ptr noundef %call124) #17
  store i8 0, ptr %return_val, align 1
  br label %close_src_desc

if.end125:                                        ; preds = %if.then119
  br label %if.end126

if.end126:                                        ; preds = %if.end125, %if.then113
  br label %if.end127

if.end127:                                        ; preds = %if.end126, %land.lhs.true111, %land.lhs.true108, %land.end
  %90 = load i32, ptr %dest_desc, align 4
  %cmp128 = icmp slt i32 %90, 0
  br i1 %cmp128, label %land.lhs.true130, label %if.end142

land.lhs.true130:                                 ; preds = %if.end127
  %91 = load i32, ptr %dest_errno, align 4
  %cmp131 = icmp eq i32 %91, 21
  br i1 %cmp131, label %land.lhs.true133, label %if.end142

land.lhs.true133:                                 ; preds = %land.lhs.true130
  %92 = load ptr, ptr %dst_name.addr, align 8
  %93 = load i8, ptr %92, align 1
  %conv134 = sext i8 %93 to i32
  %tobool135 = icmp ne i32 %conv134, 0
  br i1 %tobool135, label %land.lhs.true136, label %if.end142

land.lhs.true136:                                 ; preds = %land.lhs.true133
  %94 = load ptr, ptr %dst_name.addr, align 8
  %95 = load ptr, ptr %dst_name.addr, align 8
  %call137 = call i64 @strlen(ptr noundef %95) #20
  %sub = sub i64 %call137, 1
  %arrayidx = getelementptr inbounds i8, ptr %94, i64 %sub
  %96 = load i8, ptr %arrayidx, align 1
  %conv138 = sext i8 %96 to i32
  %cmp139 = icmp eq i32 %conv138, 47
  br i1 %cmp139, label %if.then141, label %if.end142

if.then141:                                       ; preds = %land.lhs.true136
  store i32 20, ptr %dest_errno, align 4
  br label %if.end142

if.end142:                                        ; preds = %if.then141, %land.lhs.true136, %land.lhs.true133, %land.lhs.true130, %if.end127
  br label %if.end144

if.else143:                                       ; preds = %if.end91
  store i32 0, ptr %extra_permissions, align 4
  store i32 0, ptr %omitted_permissions.addr, align 4
  br label %if.end144

if.end144:                                        ; preds = %if.else143, %if.end142
  %97 = load i32, ptr %dest_desc, align 4
  %cmp145 = icmp slt i32 %97, 0
  br i1 %cmp145, label %if.then147, label %if.end150

if.then147:                                       ; preds = %if.end144
  %98 = load i32, ptr %dest_errno, align 4
  %call148 = call ptr @gettext(ptr noundef @.str.66) #16
  %99 = load ptr, ptr %dst_name.addr, align 8
  %call149 = call ptr @quotearg_style(i32 noundef 4, ptr noundef %99)
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %98, ptr noundef %call148, ptr noundef %call149) #17
  store i8 0, ptr %return_val, align 1
  br label %close_src_desc

if.end150:                                        ; preds = %if.end144
  %100 = load i8, ptr %data_copy_required, align 1
  %tobool151 = trunc i8 %100 to i1
  br i1 %tobool151, label %land.lhs.true153, label %if.end168

land.lhs.true153:                                 ; preds = %if.end150
  %101 = load ptr, ptr %x.addr, align 8
  %reflink_mode154 = getelementptr inbounds %struct.cp_options, ptr %101, i32 0, i32 40
  %102 = load i32, ptr %reflink_mode154, align 4
  %tobool155 = icmp ne i32 %102, 0
  br i1 %tobool155, label %if.then156, label %if.end168

if.then156:                                       ; preds = %land.lhs.true153
  %103 = load i32, ptr %dest_desc, align 4
  %104 = load i32, ptr %source_desc, align 4
  %call157 = call i32 @clone_file(i32 noundef %103, i32 noundef %104)
  %cmp158 = icmp eq i32 %call157, 0
  br i1 %cmp158, label %if.then160, label %if.else161

if.then160:                                       ; preds = %if.then156
  store i8 0, ptr %data_copy_required, align 1
  store i32 2, ptr getelementptr inbounds (%struct.copy_debug, ptr @copy_debug, i32 0, i32 1), align 4
  br label %if.end167

if.else161:                                       ; preds = %if.then156
  %105 = load i32, ptr %dst_dirfd.addr, align 4
  %106 = load ptr, ptr %dst_relname.addr, align 8
  %107 = load ptr, ptr %src_name.addr, align 8
  %108 = load ptr, ptr %dst_name.addr, align 8
  %109 = load i32, ptr %dest_desc, align 4
  %110 = load ptr, ptr %new_dst.addr, align 8
  %111 = load i8, ptr %110, align 1
  %tobool162 = trunc i8 %111 to i1
  %112 = load ptr, ptr %x.addr, align 8
  %reflink_mode163 = getelementptr inbounds %struct.cp_options, ptr %112, i32 0, i32 40
  %113 = load i32, ptr %reflink_mode163, align 4
  %call164 = call zeroext i1 @handle_clone_fail(i32 noundef %105, ptr noundef %106, ptr noundef %107, ptr noundef %108, i32 noundef %109, i1 noundef zeroext %tobool162, i32 noundef %113)
  br i1 %call164, label %if.end166, label %if.then165

if.then165:                                       ; preds = %if.else161
  store i8 0, ptr %return_val, align 1
  br label %close_src_and_dst_desc

if.end166:                                        ; preds = %if.else161
  br label %if.end167

if.end167:                                        ; preds = %if.end166, %if.then160
  br label %if.end168

if.end168:                                        ; preds = %if.end167, %land.lhs.true153, %if.end150
  %114 = load i8, ptr %data_copy_required, align 1
  %tobool169 = trunc i8 %114 to i1
  %conv170 = zext i1 %tobool169 to i32
  %115 = load ptr, ptr %x.addr, align 8
  %preserve_ownership = getelementptr inbounds %struct.cp_options, ptr %115, i32 0, i32 16
  %116 = load i8, ptr %preserve_ownership, align 1
  %tobool171 = trunc i8 %116 to i1
  %conv172 = zext i1 %tobool171 to i32
  %or173 = or i32 %conv170, %conv172
  %117 = load i32, ptr %extra_permissions, align 4
  %or174 = or i32 %or173, %117
  %tobool175 = icmp ne i32 %or174, 0
  br i1 %tobool175, label %if.else178, label %if.then176

if.then176:                                       ; preds = %if.end168
  %st_mode177 = getelementptr inbounds %struct.stat, ptr %sb, i32 0, i32 3
  store i32 0, ptr %st_mode177, align 8
  br label %if.end187

if.else178:                                       ; preds = %if.end168
  %118 = load i32, ptr %dest_desc, align 4
  %call179 = call i32 @fstat(i32 noundef %118, ptr noundef %sb) #16
  %cmp180 = icmp ne i32 %call179, 0
  br i1 %cmp180, label %if.then182, label %if.end186

if.then182:                                       ; preds = %if.else178
  %call183 = call ptr @__errno_location() #15
  %119 = load i32, ptr %call183, align 4
  %call184 = call ptr @gettext(ptr noundef @.str.63) #16
  %120 = load ptr, ptr %dst_name.addr, align 8
  %call185 = call ptr @quotearg_style(i32 noundef 4, ptr noundef %120)
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %119, ptr noundef %call184, ptr noundef %call185) #17
  store i8 0, ptr %return_val, align 1
  br label %close_src_and_dst_desc

if.end186:                                        ; preds = %if.else178
  br label %if.end187

if.end187:                                        ; preds = %if.end186, %if.then176
  %st_mode188 = getelementptr inbounds %struct.stat, ptr %sb, i32 0, i32 3
  %121 = load i32, ptr %st_mode188, align 8
  %122 = load i32, ptr %extra_permissions, align 4
  %or189 = or i32 %121, %122
  store i32 %or189, ptr %temporary_mode, align 4
  %123 = load i32, ptr %temporary_mode, align 4
  %st_mode190 = getelementptr inbounds %struct.stat, ptr %sb, i32 0, i32 3
  %124 = load i32, ptr %st_mode190, align 8
  %cmp191 = icmp ne i32 %123, %124
  br i1 %cmp191, label %land.lhs.true193, label %if.end198

land.lhs.true193:                                 ; preds = %if.end187
  %125 = load i32, ptr %dest_desc, align 4
  %126 = load i32, ptr %dst_dirfd.addr, align 4
  %127 = load ptr, ptr %dst_relname.addr, align 8
  %128 = load i32, ptr %temporary_mode, align 4
  %call194 = call i32 @fchmod_or_lchmod(i32 noundef %125, i32 noundef %126, ptr noundef %127, i32 noundef %128)
  %cmp195 = icmp ne i32 %call194, 0
  br i1 %cmp195, label %if.then197, label %if.end198

if.then197:                                       ; preds = %land.lhs.true193
  store i32 0, ptr %extra_permissions, align 4
  br label %if.end198

if.end198:                                        ; preds = %if.then197, %land.lhs.true193, %if.end187
  %129 = load i8, ptr %data_copy_required, align 1
  %tobool199 = trunc i8 %129 to i1
  br i1 %tobool199, label %if.then200, label %if.end304

if.then200:                                       ; preds = %if.end198
  %call201 = call i64 @io_blksize(ptr noundef %sb)
  store i64 %call201, ptr %buf_size, align 8
  %st_blksize = getelementptr inbounds %struct.stat, ptr %sb, i32 0, i32 9
  %130 = load i64, ptr %st_blksize, align 8
  %cmp202 = icmp slt i64 0, %130
  br i1 %cmp202, label %land.lhs.true204, label %cond.false

land.lhs.true204:                                 ; preds = %if.then200
  %st_blksize205 = getelementptr inbounds %struct.stat, ptr %sb, i32 0, i32 9
  %131 = load i64, ptr %st_blksize205, align 8
  %cmp206 = icmp ule i64 %131, 2305843009213693952
  br i1 %cmp206, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true204
  %st_blksize208 = getelementptr inbounds %struct.stat, ptr %sb, i32 0, i32 9
  %132 = load i64, ptr %st_blksize208, align 8
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true204, %if.then200
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond209 = phi i64 [ %132, %cond.true ], [ 512, %cond.false ]
  store i64 %cond209, ptr %hole_size, align 8
  %133 = load i32, ptr %source_desc, align 4
  %call210 = call i32 @infer_scantype(i32 noundef %133, ptr noundef %src_open_sb, ptr noundef %scan_inference)
  store i32 %call210, ptr %scantype, align 4
  %134 = load i32, ptr %scantype, align 4
  %cmp211 = icmp eq i32 %134, 0
  br i1 %cmp211, label %if.then213, label %if.end217

if.then213:                                       ; preds = %cond.end
  %call214 = call ptr @__errno_location() #15
  %135 = load i32, ptr %call214, align 4
  %call215 = call ptr @gettext(ptr noundef @.str.67) #16
  %136 = load ptr, ptr %src_name.addr, align 8
  %call216 = call ptr @quotearg_style(i32 noundef 4, ptr noundef %136)
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %135, ptr noundef %call215, ptr noundef %call216) #17
  store i8 0, ptr %return_val, align 1
  br label %close_src_and_dst_desc

if.end217:                                        ; preds = %cond.end
  %st_mode218 = getelementptr inbounds %struct.stat, ptr %sb, i32 0, i32 3
  %137 = load i32, ptr %st_mode218, align 8
  %and219 = and i32 %137, 61440
  %cmp220 = icmp eq i32 %and219, 32768
  br i1 %cmp220, label %land.rhs222, label %land.end232

land.rhs222:                                      ; preds = %if.end217
  %138 = load ptr, ptr %x.addr, align 8
  %sparse_mode = getelementptr inbounds %struct.cp_options, ptr %138, i32 0, i32 3
  %139 = load i32, ptr %sparse_mode, align 4
  %cmp223 = icmp eq i32 %139, 3
  br i1 %cmp223, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %land.rhs222
  %140 = load ptr, ptr %x.addr, align 8
  %sparse_mode225 = getelementptr inbounds %struct.cp_options, ptr %140, i32 0, i32 3
  %141 = load i32, ptr %sparse_mode225, align 4
  %cmp226 = icmp eq i32 %141, 2
  br i1 %cmp226, label %land.rhs228, label %land.end231

land.rhs228:                                      ; preds = %lor.rhs
  %142 = load i32, ptr %scantype, align 4
  %cmp229 = icmp ne i32 %142, 1
  br label %land.end231

land.end231:                                      ; preds = %land.rhs228, %lor.rhs
  %143 = phi i1 [ false, %lor.rhs ], [ %cmp229, %land.rhs228 ]
  br label %lor.end

lor.end:                                          ; preds = %land.end231, %land.rhs222
  %144 = phi i1 [ true, %land.rhs222 ], [ %143, %land.end231 ]
  br label %land.end232

land.end232:                                      ; preds = %lor.end, %if.end217
  %145 = phi i1 [ false, %if.end217 ], [ %144, %lor.end ]
  %frombool233 = zext i1 %145 to i8
  store i8 %frombool233, ptr %make_holes, align 1
  %146 = load i32, ptr %source_desc, align 4
  call void @fdadvise(i32 noundef %146, i64 noundef 0, i64 noundef 0, i32 noundef 2)
  %147 = load i8, ptr %make_holes, align 1
  %tobool234 = trunc i8 %147 to i1
  br i1 %tobool234, label %if.end258, label %if.then235

if.then235:                                       ; preds = %land.end232
  store i64 9223372036854775807, ptr %blcm_max, align 8
  %call236 = call i64 @io_blksize(ptr noundef %src_open_sb)
  %148 = load i64, ptr %buf_size, align 8
  %149 = load i64, ptr %blcm_max, align 8
  %call237 = call i64 @buffer_lcm(i64 noundef %call236, i64 noundef %148, i64 noundef %149) #15
  store i64 %call237, ptr %blcm, align 8
  %st_mode238 = getelementptr inbounds %struct.stat, ptr %src_open_sb, i32 0, i32 3
  %150 = load i32, ptr %st_mode238, align 8
  %and239 = and i32 %150, 61440
  %cmp240 = icmp eq i32 %and239, 32768
  br i1 %cmp240, label %land.lhs.true242, label %if.end247

land.lhs.true242:                                 ; preds = %if.then235
  %st_size = getelementptr inbounds %struct.stat, ptr %src_open_sb, i32 0, i32 8
  %151 = load i64, ptr %st_size, align 8
  %152 = load i64, ptr %buf_size, align 8
  %cmp243 = icmp ult i64 %151, %152
  br i1 %cmp243, label %if.then245, label %if.end247

if.then245:                                       ; preds = %land.lhs.true242
  %st_size246 = getelementptr inbounds %struct.stat, ptr %src_open_sb, i32 0, i32 8
  %153 = load i64, ptr %st_size246, align 8
  %add = add nsw i64 %153, 1
  store i64 %add, ptr %buf_size, align 8
  br label %if.end247

if.end247:                                        ; preds = %if.then245, %land.lhs.true242, %if.then235
  %154 = load i64, ptr %blcm, align 8
  %sub248 = sub i64 %154, 1
  %155 = load i64, ptr %buf_size, align 8
  %add249 = add i64 %155, %sub248
  store i64 %add249, ptr %buf_size, align 8
  %156 = load i64, ptr %buf_size, align 8
  %157 = load i64, ptr %blcm, align 8
  %rem = urem i64 %156, %157
  %158 = load i64, ptr %buf_size, align 8
  %sub250 = sub i64 %158, %rem
  store i64 %sub250, ptr %buf_size, align 8
  %159 = load i64, ptr %buf_size, align 8
  %cmp251 = icmp eq i64 %159, 0
  br i1 %cmp251, label %if.then256, label %lor.lhs.false253

lor.lhs.false253:                                 ; preds = %if.end247
  %160 = load i64, ptr %blcm_max, align 8
  %161 = load i64, ptr %buf_size, align 8
  %cmp254 = icmp ult i64 %160, %161
  br i1 %cmp254, label %if.then256, label %if.end257

if.then256:                                       ; preds = %lor.lhs.false253, %if.end247
  %162 = load i64, ptr %blcm, align 8
  store i64 %162, ptr %buf_size, align 8
  br label %if.end257

if.end257:                                        ; preds = %if.then256, %lor.lhs.false253
  br label %if.end258

if.end258:                                        ; preds = %if.end257, %land.end232
  store i8 0, ptr %wrote_hole_at_eof, align 1
  %163 = load i32, ptr %scantype, align 4
  %cmp259 = icmp eq i32 %163, 3
  br i1 %cmp259, label %cond.true261, label %cond.false275

cond.true261:                                     ; preds = %if.end258
  %164 = load i32, ptr %source_desc, align 4
  %165 = load i32, ptr %dest_desc, align 4
  %166 = load i64, ptr %buf_size, align 8
  %167 = load i64, ptr %hole_size, align 8
  %168 = load i64, ptr %scan_inference, align 8
  %st_size262 = getelementptr inbounds %struct.stat, ptr %src_open_sb, i32 0, i32 8
  %169 = load i64, ptr %st_size262, align 8
  %170 = load i8, ptr %make_holes, align 1
  %tobool263 = trunc i8 %170 to i1
  br i1 %tobool263, label %cond.true265, label %cond.false267

cond.true265:                                     ; preds = %cond.true261
  %171 = load ptr, ptr %x.addr, align 8
  %sparse_mode266 = getelementptr inbounds %struct.cp_options, ptr %171, i32 0, i32 3
  %172 = load i32, ptr %sparse_mode266, align 4
  br label %cond.end268

cond.false267:                                    ; preds = %cond.true261
  br label %cond.end268

cond.end268:                                      ; preds = %cond.false267, %cond.true265
  %cond269 = phi i32 [ %172, %cond.true265 ], [ 1, %cond.false267 ]
  %173 = load ptr, ptr %x.addr, align 8
  %reflink_mode270 = getelementptr inbounds %struct.cp_options, ptr %173, i32 0, i32 40
  %174 = load i32, ptr %reflink_mode270, align 4
  %cmp271 = icmp ne i32 %174, 0
  %175 = load ptr, ptr %src_name.addr, align 8
  %176 = load ptr, ptr %dst_name.addr, align 8
  %call273 = call zeroext i1 @lseek_copy(i32 noundef %164, i32 noundef %165, ptr noundef %buf, i64 noundef %166, i64 noundef %167, i64 noundef %168, i64 noundef %169, i32 noundef %cond269, i1 noundef zeroext %cmp271, ptr noundef %175, ptr noundef %176)
  br i1 %call273, label %if.else291, label %if.then290

cond.false275:                                    ; preds = %if.end258
  %177 = load i32, ptr %source_desc, align 4
  %178 = load i32, ptr %dest_desc, align 4
  %179 = load i64, ptr %buf_size, align 8
  %180 = load i8, ptr %make_holes, align 1
  %tobool276 = trunc i8 %180 to i1
  br i1 %tobool276, label %cond.true278, label %cond.false279

cond.true278:                                     ; preds = %cond.false275
  %181 = load i64, ptr %hole_size, align 8
  br label %cond.end280

cond.false279:                                    ; preds = %cond.false275
  br label %cond.end280

cond.end280:                                      ; preds = %cond.false279, %cond.true278
  %cond281 = phi i64 [ %181, %cond.true278 ], [ 0, %cond.false279 ]
  %182 = load ptr, ptr %x.addr, align 8
  %sparse_mode282 = getelementptr inbounds %struct.cp_options, ptr %182, i32 0, i32 3
  %183 = load i32, ptr %sparse_mode282, align 4
  %cmp283 = icmp eq i32 %183, 3
  %184 = load ptr, ptr %x.addr, align 8
  %reflink_mode285 = getelementptr inbounds %struct.cp_options, ptr %184, i32 0, i32 40
  %185 = load i32, ptr %reflink_mode285, align 4
  %cmp286 = icmp ne i32 %185, 0
  %186 = load ptr, ptr %src_name.addr, align 8
  %187 = load ptr, ptr %dst_name.addr, align 8
  %call288 = call zeroext i1 @sparse_copy(i32 noundef %177, i32 noundef %178, ptr noundef %buf, i64 noundef %179, i64 noundef %cond281, i1 noundef zeroext %cmp283, i1 noundef zeroext %cmp286, ptr noundef %186, ptr noundef %187, i64 noundef -1, ptr noundef %n_read, ptr noundef %wrote_hole_at_eof)
  br i1 %call288, label %if.else291, label %if.then290

if.then290:                                       ; preds = %cond.end280, %cond.end268
  store i8 0, ptr %return_val, align 1
  br label %close_src_and_dst_desc

if.else291:                                       ; preds = %cond.end280, %cond.end268
  %188 = load i8, ptr %wrote_hole_at_eof, align 1
  %tobool292 = trunc i8 %188 to i1
  br i1 %tobool292, label %land.lhs.true294, label %if.end302

land.lhs.true294:                                 ; preds = %if.else291
  %189 = load i32, ptr %dest_desc, align 4
  %190 = load i64, ptr %n_read, align 8
  %call295 = call i32 @ftruncate(i32 noundef %189, i64 noundef %190) #16
  %cmp296 = icmp slt i32 %call295, 0
  br i1 %cmp296, label %if.then298, label %if.end302

if.then298:                                       ; preds = %land.lhs.true294
  %call299 = call ptr @__errno_location() #15
  %191 = load i32, ptr %call299, align 4
  %call300 = call ptr @gettext(ptr noundef @.str.68) #16
  %192 = load ptr, ptr %dst_name.addr, align 8
  %call301 = call ptr @quotearg_style(i32 noundef 4, ptr noundef %192)
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %191, ptr noundef %call300, ptr noundef %call301) #17
  store i8 0, ptr %return_val, align 1
  br label %close_src_and_dst_desc

if.end302:                                        ; preds = %land.lhs.true294, %if.else291
  br label %if.end303

if.end303:                                        ; preds = %if.end302
  br label %if.end304

if.end304:                                        ; preds = %if.end303, %if.end198
  %193 = load ptr, ptr %x.addr, align 8
  %preserve_timestamps = getelementptr inbounds %struct.cp_options, ptr %193, i32 0, i32 18
  %194 = load i8, ptr %preserve_timestamps, align 1
  %tobool305 = trunc i8 %194 to i1
  br i1 %tobool305, label %if.then306, label %if.end324

if.then306:                                       ; preds = %if.end304
  %arrayidx307 = getelementptr inbounds [2 x %struct.timespec], ptr %timespec, i64 0, i64 0
  %195 = load ptr, ptr %src_sb.addr, align 8
  %call308 = call { i64, i64 } @get_stat_atime(ptr noundef %195) #20
  %196 = getelementptr inbounds { i64, i64 }, ptr %tmp, i32 0, i32 0
  %197 = extractvalue { i64, i64 } %call308, 0
  store i64 %197, ptr %196, align 8
  %198 = getelementptr inbounds { i64, i64 }, ptr %tmp, i32 0, i32 1
  %199 = extractvalue { i64, i64 } %call308, 1
  store i64 %199, ptr %198, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %arrayidx307, ptr align 8 %tmp, i64 16, i1 false)
  %arrayidx309 = getelementptr inbounds [2 x %struct.timespec], ptr %timespec, i64 0, i64 1
  %200 = load ptr, ptr %src_sb.addr, align 8
  %call311 = call { i64, i64 } @get_stat_mtime(ptr noundef %200) #20
  %201 = getelementptr inbounds { i64, i64 }, ptr %tmp310, i32 0, i32 0
  %202 = extractvalue { i64, i64 } %call311, 0
  store i64 %202, ptr %201, align 8
  %203 = getelementptr inbounds { i64, i64 }, ptr %tmp310, i32 0, i32 1
  %204 = extractvalue { i64, i64 } %call311, 1
  store i64 %204, ptr %203, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %arrayidx309, ptr align 8 %tmp310, i64 16, i1 false)
  %205 = load i32, ptr %dest_desc, align 4
  %206 = load i32, ptr %dst_dirfd.addr, align 4
  %207 = load ptr, ptr %dst_relname.addr, align 8
  %arraydecay312 = getelementptr inbounds [2 x %struct.timespec], ptr %timespec, i64 0, i64 0
  %call313 = call i32 @fdutimensat(i32 noundef %205, i32 noundef %206, ptr noundef %207, ptr noundef %arraydecay312, i32 noundef 0)
  %cmp314 = icmp ne i32 %call313, 0
  br i1 %cmp314, label %if.then316, label %if.end323

if.then316:                                       ; preds = %if.then306
  %call317 = call ptr @__errno_location() #15
  %208 = load i32, ptr %call317, align 4
  %call318 = call ptr @gettext(ptr noundef @.str.51) #16
  %209 = load ptr, ptr %dst_name.addr, align 8
  %call319 = call ptr @quotearg_style(i32 noundef 4, ptr noundef %209)
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %208, ptr noundef %call318, ptr noundef %call319) #17
  %210 = load ptr, ptr %x.addr, align 8
  %require_preserve = getelementptr inbounds %struct.cp_options, ptr %210, i32 0, i32 23
  %211 = load i8, ptr %require_preserve, align 2
  %tobool320 = trunc i8 %211 to i1
  br i1 %tobool320, label %if.then321, label %if.end322

if.then321:                                       ; preds = %if.then316
  store i8 0, ptr %return_val, align 1
  br label %close_src_and_dst_desc

if.end322:                                        ; preds = %if.then316
  br label %if.end323

if.end323:                                        ; preds = %if.end322, %if.then306
  br label %if.end324

if.end324:                                        ; preds = %if.end323, %if.end304
  %212 = load ptr, ptr %x.addr, align 8
  %preserve_ownership325 = getelementptr inbounds %struct.cp_options, ptr %212, i32 0, i32 16
  %213 = load i8, ptr %preserve_ownership325, align 1
  %tobool326 = trunc i8 %213 to i1
  br i1 %tobool326, label %land.lhs.true328, label %if.end341

land.lhs.true328:                                 ; preds = %if.end324
  %214 = load ptr, ptr %src_sb.addr, align 8
  %st_uid = getelementptr inbounds %struct.stat, ptr %214, i32 0, i32 4
  %215 = load i32, ptr %st_uid, align 4
  %st_uid329 = getelementptr inbounds %struct.stat, ptr %sb, i32 0, i32 4
  %216 = load i32, ptr %st_uid329, align 4
  %cmp330 = icmp eq i32 %215, %216
  br i1 %cmp330, label %land.lhs.true332, label %if.then336

land.lhs.true332:                                 ; preds = %land.lhs.true328
  %217 = load ptr, ptr %src_sb.addr, align 8
  %st_gid = getelementptr inbounds %struct.stat, ptr %217, i32 0, i32 5
  %218 = load i32, ptr %st_gid, align 8
  %st_gid333 = getelementptr inbounds %struct.stat, ptr %sb, i32 0, i32 5
  %219 = load i32, ptr %st_gid333, align 8
  %cmp334 = icmp eq i32 %218, %219
  br i1 %cmp334, label %if.end341, label %if.then336

if.then336:                                       ; preds = %land.lhs.true332, %land.lhs.true328
  %220 = load ptr, ptr %x.addr, align 8
  %221 = load ptr, ptr %dst_name.addr, align 8
  %222 = load i32, ptr %dst_dirfd.addr, align 4
  %223 = load ptr, ptr %dst_relname.addr, align 8
  %224 = load i32, ptr %dest_desc, align 4
  %225 = load ptr, ptr %src_sb.addr, align 8
  %226 = load ptr, ptr %new_dst.addr, align 8
  %227 = load i8, ptr %226, align 1
  %tobool337 = trunc i8 %227 to i1
  %call338 = call i32 @set_owner(ptr noundef %220, ptr noundef %221, i32 noundef %222, ptr noundef %223, i32 noundef %224, ptr noundef %225, i1 noundef zeroext %tobool337, ptr noundef %sb)
  switch i32 %call338, label %sw.epilog [
    i32 -1, label %sw.bb
    i32 0, label %sw.bb339
  ]

sw.bb:                                            ; preds = %if.then336
  store i8 0, ptr %return_val, align 1
  br label %close_src_and_dst_desc

sw.bb339:                                         ; preds = %if.then336
  %228 = load i32, ptr %src_mode, align 4
  %and340 = and i32 %228, -3585
  store i32 %and340, ptr %src_mode, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb339, %if.then336
  br label %if.end341

if.end341:                                        ; preds = %sw.epilog, %land.lhs.true332, %if.end324
  %229 = load i8, ptr %preserve_xattr, align 1
  %tobool342 = trunc i8 %229 to i1
  br i1 %tobool342, label %if.then343, label %if.end350

if.then343:                                       ; preds = %if.end341
  %230 = load ptr, ptr %src_name.addr, align 8
  %231 = load i32, ptr %source_desc, align 4
  %232 = load ptr, ptr %dst_name.addr, align 8
  %233 = load i32, ptr %dest_desc, align 4
  %234 = load ptr, ptr %x.addr, align 8
  %call344 = call zeroext i1 @copy_attr(ptr noundef %230, i32 noundef %231, ptr noundef %232, i32 noundef %233, ptr noundef %234)
  br i1 %call344, label %if.end349, label %land.lhs.true345

land.lhs.true345:                                 ; preds = %if.then343
  %235 = load ptr, ptr %x.addr, align 8
  %require_preserve_xattr = getelementptr inbounds %struct.cp_options, ptr %235, i32 0, i32 27
  %236 = load i8, ptr %require_preserve_xattr, align 2
  %tobool346 = trunc i8 %236 to i1
  br i1 %tobool346, label %if.then348, label %if.end349

if.then348:                                       ; preds = %land.lhs.true345
  store i8 0, ptr %return_val, align 1
  br label %if.end349

if.end349:                                        ; preds = %if.then348, %land.lhs.true345, %if.then343
  br label %if.end350

if.end350:                                        ; preds = %if.end349, %if.end341
  %237 = load ptr, ptr %dst_name.addr, align 8
  %238 = load i32, ptr %dest_desc, align 4
  %239 = load ptr, ptr %src_sb.addr, align 8
  call void @set_author(ptr noundef %237, i32 noundef %238, ptr noundef %239)
  %240 = load ptr, ptr %x.addr, align 8
  %preserve_mode = getelementptr inbounds %struct.cp_options, ptr %240, i32 0, i32 17
  %241 = load i8, ptr %preserve_mode, align 8
  %tobool351 = trunc i8 %241 to i1
  br i1 %tobool351, label %if.then357, label %lor.lhs.false353

lor.lhs.false353:                                 ; preds = %if.end350
  %242 = load ptr, ptr %x.addr, align 8
  %move_mode354 = getelementptr inbounds %struct.cp_options, ptr %242, i32 0, i32 9
  %243 = load i8, ptr %move_mode354, align 8
  %tobool355 = trunc i8 %243 to i1
  br i1 %tobool355, label %if.then357, label %if.else367

if.then357:                                       ; preds = %lor.lhs.false353, %if.end350
  %244 = load ptr, ptr %src_name.addr, align 8
  %245 = load i32, ptr %source_desc, align 4
  %246 = load ptr, ptr %dst_name.addr, align 8
  %247 = load i32, ptr %dest_desc, align 4
  %248 = load i32, ptr %src_mode, align 4
  %call358 = call i32 @xcopy_acl(ptr noundef %244, i32 noundef %245, ptr noundef %246, i32 noundef %247, i32 noundef %248)
  %cmp359 = icmp ne i32 %call358, 0
  br i1 %cmp359, label %land.lhs.true361, label %if.end366

land.lhs.true361:                                 ; preds = %if.then357
  %249 = load ptr, ptr %x.addr, align 8
  %require_preserve362 = getelementptr inbounds %struct.cp_options, ptr %249, i32 0, i32 23
  %250 = load i8, ptr %require_preserve362, align 2
  %tobool363 = trunc i8 %250 to i1
  br i1 %tobool363, label %if.then365, label %if.end366

if.then365:                                       ; preds = %land.lhs.true361
  store i8 0, ptr %return_val, align 1
  br label %if.end366

if.end366:                                        ; preds = %if.then365, %land.lhs.true361, %if.then357
  br label %if.end418

if.else367:                                       ; preds = %lor.lhs.false353
  %251 = load ptr, ptr %x.addr, align 8
  %set_mode = getelementptr inbounds %struct.cp_options, ptr %251, i32 0, i32 30
  %252 = load i8, ptr %set_mode, align 1
  %tobool368 = trunc i8 %252 to i1
  br i1 %tobool368, label %if.then369, label %if.else375

if.then369:                                       ; preds = %if.else367
  %253 = load ptr, ptr %dst_name.addr, align 8
  %254 = load i32, ptr %dest_desc, align 4
  %255 = load ptr, ptr %x.addr, align 8
  %mode = getelementptr inbounds %struct.cp_options, ptr %255, i32 0, i32 4
  %256 = load i32, ptr %mode, align 8
  %call370 = call i32 @xset_acl(ptr noundef %253, i32 noundef %254, i32 noundef %256)
  %cmp371 = icmp ne i32 %call370, 0
  br i1 %cmp371, label %if.then373, label %if.end374

if.then373:                                       ; preds = %if.then369
  store i8 0, ptr %return_val, align 1
  br label %if.end374

if.end374:                                        ; preds = %if.then373, %if.then369
  br label %if.end417

if.else375:                                       ; preds = %if.else367
  %257 = load ptr, ptr %x.addr, align 8
  %explicit_no_preserve_mode = getelementptr inbounds %struct.cp_options, ptr %257, i32 0, i32 19
  %258 = load i8, ptr %explicit_no_preserve_mode, align 2
  %tobool376 = trunc i8 %258 to i1
  br i1 %tobool376, label %land.lhs.true378, label %if.else390

land.lhs.true378:                                 ; preds = %if.else375
  %259 = load ptr, ptr %new_dst.addr, align 8
  %260 = load i8, ptr %259, align 1
  %tobool379 = trunc i8 %260 to i1
  br i1 %tobool379, label %if.then381, label %if.else390

if.then381:                                       ; preds = %land.lhs.true378
  %261 = load ptr, ptr %dst_name.addr, align 8
  %262 = load i32, ptr %dest_desc, align 4
  %call382 = call i32 @cached_umask()
  %not383 = xor i32 %call382, -1
  %and384 = and i32 438, %not383
  %call385 = call i32 @xset_acl(ptr noundef %261, i32 noundef %262, i32 noundef %and384)
  %cmp386 = icmp ne i32 %call385, 0
  br i1 %cmp386, label %if.then388, label %if.end389

if.then388:                                       ; preds = %if.then381
  store i8 0, ptr %return_val, align 1
  br label %if.end389

if.end389:                                        ; preds = %if.then388, %if.then381
  br label %if.end416

if.else390:                                       ; preds = %land.lhs.true378, %if.else375
  %263 = load i32, ptr %omitted_permissions.addr, align 4
  %264 = load i32, ptr %extra_permissions, align 4
  %or391 = or i32 %263, %264
  %tobool392 = icmp ne i32 %or391, 0
  br i1 %tobool392, label %if.then393, label %if.end415

if.then393:                                       ; preds = %if.else390
  %call394 = call i32 @cached_umask()
  %not395 = xor i32 %call394, -1
  %265 = load i32, ptr %omitted_permissions.addr, align 4
  %and396 = and i32 %265, %not395
  store i32 %and396, ptr %omitted_permissions.addr, align 4
  %266 = load i32, ptr %omitted_permissions.addr, align 4
  %267 = load i32, ptr %extra_permissions, align 4
  %or397 = or i32 %266, %267
  %tobool398 = icmp ne i32 %or397, 0
  br i1 %tobool398, label %land.lhs.true399, label %if.end414

land.lhs.true399:                                 ; preds = %if.then393
  %268 = load i32, ptr %dest_desc, align 4
  %269 = load i32, ptr %dst_dirfd.addr, align 4
  %270 = load ptr, ptr %dst_relname.addr, align 8
  %271 = load i32, ptr %dst_mode.addr, align 4
  %call400 = call i32 @cached_umask()
  %not401 = xor i32 %call400, -1
  %and402 = and i32 %271, %not401
  %call403 = call i32 @fchmod_or_lchmod(i32 noundef %268, i32 noundef %269, ptr noundef %270, i32 noundef %and402)
  %cmp404 = icmp ne i32 %call403, 0
  br i1 %cmp404, label %if.then406, label %if.end414

if.then406:                                       ; preds = %land.lhs.true399
  %call407 = call ptr @__errno_location() #15
  %272 = load i32, ptr %call407, align 4
  %call408 = call ptr @gettext(ptr noundef @.str.52) #16
  %273 = load ptr, ptr %dst_name.addr, align 8
  %call409 = call ptr @quotearg_style(i32 noundef 4, ptr noundef %273)
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %272, ptr noundef %call408, ptr noundef %call409) #17
  %274 = load ptr, ptr %x.addr, align 8
  %require_preserve410 = getelementptr inbounds %struct.cp_options, ptr %274, i32 0, i32 23
  %275 = load i8, ptr %require_preserve410, align 2
  %tobool411 = trunc i8 %275 to i1
  br i1 %tobool411, label %if.then412, label %if.end413

if.then412:                                       ; preds = %if.then406
  store i8 0, ptr %return_val, align 1
  br label %if.end413

if.end413:                                        ; preds = %if.then412, %if.then406
  br label %if.end414

if.end414:                                        ; preds = %if.end413, %land.lhs.true399, %if.then393
  br label %if.end415

if.end415:                                        ; preds = %if.end414, %if.else390
  br label %if.end416

if.end416:                                        ; preds = %if.end415, %if.end389
  br label %if.end417

if.end417:                                        ; preds = %if.end416, %if.end374
  br label %if.end418

if.end418:                                        ; preds = %if.end417, %if.end366
  %276 = load i32, ptr %dest_desc, align 4
  %cmp419 = icmp slt i32 %276, 0
  br i1 %cmp419, label %if.then421, label %if.end422

if.then421:                                       ; preds = %if.end418
  br label %close_src_desc

if.end422:                                        ; preds = %if.end418
  br label %close_src_and_dst_desc

close_src_and_dst_desc:                           ; preds = %if.end422, %sw.bb, %if.then321, %if.then298, %if.then290, %if.then213, %if.then182, %if.then165, %if.then44
  %277 = load i32, ptr %dest_desc, align 4
  %call423 = call i32 @close(i32 noundef %277)
  %cmp424 = icmp slt i32 %call423, 0
  br i1 %cmp424, label %if.then426, label %if.end430

if.then426:                                       ; preds = %close_src_and_dst_desc
  %call427 = call ptr @__errno_location() #15
  %278 = load i32, ptr %call427, align 4
  %call428 = call ptr @gettext(ptr noundef @.str.69) #16
  %279 = load ptr, ptr %dst_name.addr, align 8
  %call429 = call ptr @quotearg_style(i32 noundef 4, ptr noundef %279)
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %278, ptr noundef %call428, ptr noundef %call429) #17
  store i8 0, ptr %return_val, align 1
  br label %if.end430

if.end430:                                        ; preds = %if.then426, %close_src_and_dst_desc
  br label %close_src_desc

close_src_desc:                                   ; preds = %if.end430, %if.then421, %if.then147, %if.else122, %if.then87, %if.then70, %if.then23, %if.then17
  %280 = load i32, ptr %source_desc, align 4
  %call431 = call i32 @close(i32 noundef %280)
  %cmp432 = icmp slt i32 %call431, 0
  br i1 %cmp432, label %if.then434, label %if.end438

if.then434:                                       ; preds = %close_src_desc
  %call435 = call ptr @__errno_location() #15
  %281 = load i32, ptr %call435, align 4
  %call436 = call ptr @gettext(ptr noundef @.str.69) #16
  %282 = load ptr, ptr %src_name.addr, align 8
  %call437 = call ptr @quotearg_style(i32 noundef 4, ptr noundef %282)
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %281, ptr noundef %call436, ptr noundef %call437) #17
  store i8 0, ptr %return_val, align 1
  br label %if.end438

if.end438:                                        ; preds = %if.then434, %close_src_desc
  %283 = load ptr, ptr %x.addr, align 8
  %debug = getelementptr inbounds %struct.cp_options, ptr %283, i32 0, i32 35
  %284 = load i8, ptr %debug, align 2
  %tobool439 = trunc i8 %284 to i1
  br i1 %tobool439, label %if.then440, label %if.end441

if.then440:                                       ; preds = %if.end438
  %285 = load ptr, ptr %x.addr, align 8
  call void @emit_debug(ptr noundef %285)
  br label %if.end441

if.end441:                                        ; preds = %if.then440, %if.end438
  %286 = load ptr, ptr %buf, align 8
  call void @alignfree(ptr noundef %286)
  %287 = load i8, ptr %return_val, align 1
  %tobool442 = trunc i8 %287 to i1
  store i1 %tobool442, ptr %retval, align 1
  br label %return

return:                                           ; preds = %if.end441, %if.then
  %288 = load i1, ptr %retval, align 1
  ret i1 %288
}

; Function Attrs: nounwind
declare i32 @mknodat(i32 noundef, ptr noundef, i32 noundef, i64 noundef) #3

; Function Attrs: nounwind
declare i32 @mkfifoat(i32 noundef, ptr noundef, i32 noundef) #3

declare ptr @areadlink_with_size(ptr noundef, i64 noundef) #1

declare ptr @areadlinkat_with_size(i32 noundef, ptr noundef, i64 noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal void @restore_default_fscreatecon_or_die() #0 {
entry:
  %call = call i32 @setfscreatecon(ptr noundef null)
  %cmp = icmp ne i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call1 = call ptr @__errno_location() #15
  %0 = load i32, ptr %call1, align 4
  %call2 = call ptr @gettext(ptr noundef @.str.86) #16
  call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %0, ptr noundef %call2) #17
  unreachable

if.end:                                           ; preds = %entry
  ret void
}

declare i32 @lchownat(i32 noundef, ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: noinline nounwind optnone willreturn memory(read) uwtable
define dso_local zeroext i1 @chown_failure_ok(ptr noundef nonnull %x) #7 {
entry:
  %x.addr = alloca ptr, align 8
  store ptr %x, ptr %x.addr, align 8
  %call = call ptr @__errno_location() #15
  %0 = load i32, ptr %call, align 4
  %cmp = icmp eq i32 %0, 1
  br i1 %cmp, label %land.rhs, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %call1 = call ptr @__errno_location() #15
  %1 = load i32, ptr %call1, align 4
  %cmp2 = icmp eq i32 %1, 22
  br i1 %cmp2, label %land.rhs, label %lor.lhs.false3

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %call4 = call ptr @__errno_location() #15
  %2 = load i32, ptr %call4, align 4
  %cmp5 = icmp eq i32 %2, 13
  br i1 %cmp5, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %lor.lhs.false3, %lor.lhs.false, %entry
  %3 = load ptr, ptr %x.addr, align 8
  %chown_privileges = getelementptr inbounds %struct.cp_options, ptr %3, i32 0, i32 13
  %4 = load i8, ptr %chown_privileges, align 4
  %tobool = trunc i8 %4 to i1
  %lnot = xor i1 %tobool, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %lor.lhs.false3
  %5 = phi i1 [ false, %lor.lhs.false3 ], [ %lnot, %land.rhs ]
  ret i1 %5
}

; Function Attrs: nounwind willreturn memory(read)
declare { i64, i64 } @get_stat_atime(ptr noundef) #5

; Function Attrs: nounwind willreturn memory(read)
declare { i64, i64 } @get_stat_mtime(ptr noundef) #5

; Function Attrs: nounwind
declare i32 @utimensat(i32 noundef, ptr noundef, ptr noundef, i32 noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_owner(ptr noundef %x, ptr noundef %dst_name, i32 noundef %dst_dirfd, ptr noundef %dst_relname, i32 noundef %dest_desc, ptr noundef %src_sb, i1 noundef zeroext %new_dst, ptr noundef %dst_sb) #0 {
entry:
  %retval = alloca i32, align 4
  %x.addr = alloca ptr, align 8
  %dst_name.addr = alloca ptr, align 8
  %dst_dirfd.addr = alloca i32, align 4
  %dst_relname.addr = alloca ptr, align 8
  %dest_desc.addr = alloca i32, align 4
  %src_sb.addr = alloca ptr, align 8
  %new_dst.addr = alloca i8, align 1
  %dst_sb.addr = alloca ptr, align 8
  %uid = alloca i32, align 4
  %gid = alloca i32, align 4
  %old_mode = alloca i32, align 4
  %new_mode = alloca i32, align 4
  %restrictive_temp_mode = alloca i32, align 4
  store ptr %x, ptr %x.addr, align 8
  store ptr %dst_name, ptr %dst_name.addr, align 8
  store i32 %dst_dirfd, ptr %dst_dirfd.addr, align 4
  store ptr %dst_relname, ptr %dst_relname.addr, align 8
  store i32 %dest_desc, ptr %dest_desc.addr, align 4
  store ptr %src_sb, ptr %src_sb.addr, align 8
  %frombool = zext i1 %new_dst to i8
  store i8 %frombool, ptr %new_dst.addr, align 1
  store ptr %dst_sb, ptr %dst_sb.addr, align 8
  %0 = load ptr, ptr %src_sb.addr, align 8
  %st_uid = getelementptr inbounds %struct.stat, ptr %0, i32 0, i32 4
  %1 = load i32, ptr %st_uid, align 4
  store i32 %1, ptr %uid, align 4
  %2 = load ptr, ptr %src_sb.addr, align 8
  %st_gid = getelementptr inbounds %struct.stat, ptr %2, i32 0, i32 5
  %3 = load i32, ptr %st_gid, align 8
  store i32 %3, ptr %gid, align 4
  %4 = load i8, ptr %new_dst.addr, align 1
  %tobool = trunc i8 %4 to i1
  br i1 %tobool, label %if.end26, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %5 = load ptr, ptr %x.addr, align 8
  %preserve_mode = getelementptr inbounds %struct.cp_options, ptr %5, i32 0, i32 17
  %6 = load i8, ptr %preserve_mode, align 8
  %tobool1 = trunc i8 %6 to i1
  br i1 %tobool1, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %7 = load ptr, ptr %x.addr, align 8
  %move_mode = getelementptr inbounds %struct.cp_options, ptr %7, i32 0, i32 9
  %8 = load i8, ptr %move_mode, align 8
  %tobool2 = trunc i8 %8 to i1
  br i1 %tobool2, label %if.then, label %lor.lhs.false3

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %9 = load ptr, ptr %x.addr, align 8
  %set_mode = getelementptr inbounds %struct.cp_options, ptr %9, i32 0, i32 30
  %10 = load i8, ptr %set_mode, align 1
  %tobool4 = trunc i8 %10 to i1
  br i1 %tobool4, label %if.then, label %if.end26

if.then:                                          ; preds = %lor.lhs.false3, %lor.lhs.false, %land.lhs.true
  %11 = load ptr, ptr %dst_sb.addr, align 8
  %st_mode = getelementptr inbounds %struct.stat, ptr %11, i32 0, i32 3
  %12 = load i32, ptr %st_mode, align 8
  store i32 %12, ptr %old_mode, align 4
  %13 = load ptr, ptr %x.addr, align 8
  %preserve_mode5 = getelementptr inbounds %struct.cp_options, ptr %13, i32 0, i32 17
  %14 = load i8, ptr %preserve_mode5, align 8
  %tobool6 = trunc i8 %14 to i1
  br i1 %tobool6, label %cond.true, label %lor.lhs.false7

lor.lhs.false7:                                   ; preds = %if.then
  %15 = load ptr, ptr %x.addr, align 8
  %move_mode8 = getelementptr inbounds %struct.cp_options, ptr %15, i32 0, i32 9
  %16 = load i8, ptr %move_mode8, align 8
  %tobool9 = trunc i8 %16 to i1
  br i1 %tobool9, label %cond.true, label %cond.false

cond.true:                                        ; preds = %lor.lhs.false7, %if.then
  %17 = load ptr, ptr %src_sb.addr, align 8
  %st_mode10 = getelementptr inbounds %struct.stat, ptr %17, i32 0, i32 3
  %18 = load i32, ptr %st_mode10, align 8
  br label %cond.end

cond.false:                                       ; preds = %lor.lhs.false7
  %19 = load ptr, ptr %x.addr, align 8
  %mode = getelementptr inbounds %struct.cp_options, ptr %19, i32 0, i32 4
  %20 = load i32, ptr %mode, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %18, %cond.true ], [ %20, %cond.false ]
  store i32 %cond, ptr %new_mode, align 4
  %21 = load i32, ptr %old_mode, align 4
  %22 = load i32, ptr %new_mode, align 4
  %and = and i32 %21, %22
  %and11 = and i32 %and, 448
  store i32 %and11, ptr %restrictive_temp_mode, align 4
  %23 = load i32, ptr %old_mode, align 4
  %and12 = and i32 %23, 4095
  %24 = load i32, ptr %new_mode, align 4
  %not = xor i32 %24, -1
  %or = or i32 %not, 2048
  %or13 = or i32 %or, 1024
  %or14 = or i32 %or13, 512
  %and15 = and i32 %and12, %or14
  %tobool16 = icmp ne i32 %and15, 0
  br i1 %tobool16, label %land.lhs.true17, label %if.end25

land.lhs.true17:                                  ; preds = %cond.end
  %25 = load ptr, ptr %dst_name.addr, align 8
  %26 = load i32, ptr %dest_desc.addr, align 4
  %27 = load i32, ptr %restrictive_temp_mode, align 4
  %call = call i32 @qset_acl(ptr noundef %25, i32 noundef %26, i32 noundef %27)
  %cmp = icmp ne i32 %call, 0
  br i1 %cmp, label %if.then18, label %if.end25

if.then18:                                        ; preds = %land.lhs.true17
  %28 = load ptr, ptr %x.addr, align 8
  %call19 = call zeroext i1 @owner_failure_ok(ptr noundef %28)
  br i1 %call19, label %if.end, label %if.then20

if.then20:                                        ; preds = %if.then18
  %call21 = call ptr @__errno_location() #15
  %29 = load i32, ptr %call21, align 4
  %call22 = call ptr @gettext(ptr noundef @.str.87) #16
  %30 = load ptr, ptr %dst_name.addr, align 8
  %call23 = call ptr @quotearg_style(i32 noundef 4, ptr noundef %30)
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %29, ptr noundef %call22, ptr noundef %call23) #17
  br label %if.end

if.end:                                           ; preds = %if.then20, %if.then18
  %31 = load ptr, ptr %x.addr, align 8
  %require_preserve = getelementptr inbounds %struct.cp_options, ptr %31, i32 0, i32 23
  %32 = load i8, ptr %require_preserve, align 2
  %tobool24 = trunc i8 %32 to i1
  %conv = zext i1 %tobool24 to i32
  %sub = sub nsw i32 0, %conv
  store i32 %sub, ptr %retval, align 4
  br label %return

if.end25:                                         ; preds = %land.lhs.true17, %cond.end
  br label %if.end26

if.end26:                                         ; preds = %if.end25, %lor.lhs.false3, %entry
  %33 = load i32, ptr %dest_desc.addr, align 4
  %34 = load i32, ptr %dst_dirfd.addr, align 4
  %35 = load ptr, ptr %dst_relname.addr, align 8
  %36 = load i32, ptr %uid, align 4
  %37 = load i32, ptr %gid, align 4
  %call27 = call i32 @fchown_or_lchown(i32 noundef %33, i32 noundef %34, ptr noundef %35, i32 noundef %36, i32 noundef %37)
  %cmp28 = icmp eq i32 %call27, 0
  br i1 %cmp28, label %if.then30, label %if.end31

if.then30:                                        ; preds = %if.end26
  store i32 1, ptr %retval, align 4
  br label %return

if.end31:                                         ; preds = %if.end26
  %38 = load ptr, ptr %x.addr, align 8
  %call32 = call zeroext i1 @chown_failure_ok(ptr noundef %38) #20
  br i1 %call32, label %if.then33, label %if.else

if.then33:                                        ; preds = %if.end31
  %39 = load i32, ptr %dest_desc.addr, align 4
  %40 = load i32, ptr %dst_dirfd.addr, align 4
  %41 = load ptr, ptr %dst_relname.addr, align 8
  %42 = load i32, ptr %gid, align 4
  %call34 = call i32 @fchown_or_lchown(i32 noundef %39, i32 noundef %40, ptr noundef %41, i32 noundef -1, i32 noundef %42)
  br label %if.end42

if.else:                                          ; preds = %if.end31
  %call35 = call ptr @__errno_location() #15
  %43 = load i32, ptr %call35, align 4
  %call36 = call ptr @gettext(ptr noundef @.str.49) #16
  %44 = load ptr, ptr %dst_name.addr, align 8
  %call37 = call ptr @quotearg_style(i32 noundef 4, ptr noundef %44)
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %43, ptr noundef %call36, ptr noundef %call37) #17
  %45 = load ptr, ptr %x.addr, align 8
  %require_preserve38 = getelementptr inbounds %struct.cp_options, ptr %45, i32 0, i32 23
  %46 = load i8, ptr %require_preserve38, align 2
  %tobool39 = trunc i8 %46 to i1
  br i1 %tobool39, label %if.then40, label %if.end41

if.then40:                                        ; preds = %if.else
  store i32 -1, ptr %retval, align 4
  br label %return

if.end41:                                         ; preds = %if.else
  br label %if.end42

if.end42:                                         ; preds = %if.end41, %if.then33
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end42, %if.then40, %if.then30, %if.end
  %47 = load i32, ptr %retval, align 4
  ret i32 %47
}

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i1 @copy_attr(ptr noundef %src_path, i32 noundef %src_fd, ptr noundef %dst_path, i32 noundef %dst_fd, ptr noundef %x) #0 {
entry:
  %src_path.addr = alloca ptr, align 8
  %src_fd.addr = alloca i32, align 4
  %dst_path.addr = alloca ptr, align 8
  %dst_fd.addr = alloca i32, align 4
  %x.addr = alloca ptr, align 8
  store ptr %src_path, ptr %src_path.addr, align 8
  store i32 %src_fd, ptr %src_fd.addr, align 4
  store ptr %dst_path, ptr %dst_path.addr, align 8
  store i32 %dst_fd, ptr %dst_fd.addr, align 4
  store ptr %x, ptr %x.addr, align 8
  ret i1 true
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_author(ptr noundef %dst_name, i32 noundef %dest_desc, ptr noundef %src_sb) #0 {
entry:
  %dst_name.addr = alloca ptr, align 8
  %dest_desc.addr = alloca i32, align 4
  %src_sb.addr = alloca ptr, align 8
  store ptr %dst_name, ptr %dst_name.addr, align 8
  store i32 %dest_desc, ptr %dest_desc.addr, align 4
  store ptr %src_sb, ptr %src_sb.addr, align 8
  %0 = load ptr, ptr %dst_name.addr, align 8
  %1 = load i32, ptr %dest_desc.addr, align 4
  %2 = load ptr, ptr %src_sb.addr, align 8
  ret void
}

declare i32 @xcopy_acl(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) #1

declare i32 @xset_acl(ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cached_umask() #0 {
entry:
  %0 = load i32, ptr @cached_umask.mask, align 4
  %cmp = icmp eq i32 %0, -1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = call i32 @umask(i32 noundef 0) #16
  store i32 %call, ptr @cached_umask.mask, align 4
  %1 = load i32, ptr @cached_umask.mask, align 4
  %call1 = call i32 @umask(i32 noundef %1) #16
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load i32, ptr @cached_umask.mask, align 4
  ret i32 %2
}

; Function Attrs: nounwind
declare i32 @renameat(i32 noundef, ptr noundef, i32 noundef, ptr noundef) #3

; Function Attrs: nounwind
declare i32 @umask(i32 noundef) #3

declare i32 @qset_acl(ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i1 @owner_failure_ok(ptr noundef %x) #0 {
entry:
  %x.addr = alloca ptr, align 8
  store ptr %x, ptr %x.addr, align 8
  %call = call ptr @__errno_location() #15
  %0 = load i32, ptr %call, align 4
  %cmp = icmp eq i32 %0, 1
  br i1 %cmp, label %land.rhs, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %call1 = call ptr @__errno_location() #15
  %1 = load i32, ptr %call1, align 4
  %cmp2 = icmp eq i32 %1, 22
  br i1 %cmp2, label %land.rhs, label %lor.lhs.false3

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %call4 = call ptr @__errno_location() #15
  %2 = load i32, ptr %call4, align 4
  %cmp5 = icmp eq i32 %2, 13
  br i1 %cmp5, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %lor.lhs.false3, %lor.lhs.false, %entry
  %3 = load ptr, ptr %x.addr, align 8
  %owner_privileges = getelementptr inbounds %struct.cp_options, ptr %3, i32 0, i32 14
  %4 = load i8, ptr %owner_privileges, align 1
  %tobool = trunc i8 %4 to i1
  %lnot = xor i1 %tobool, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %lor.lhs.false3
  %5 = phi i1 [ false, %lor.lhs.false3 ], [ %lnot, %land.rhs ]
  ret i1 %5
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fchown_or_lchown(i32 noundef %desc, i32 noundef %dirfd, ptr noundef %name, i32 noundef %uid, i32 noundef %gid) #0 {
entry:
  %retval = alloca i32, align 4
  %desc.addr = alloca i32, align 4
  %dirfd.addr = alloca i32, align 4
  %name.addr = alloca ptr, align 8
  %uid.addr = alloca i32, align 4
  %gid.addr = alloca i32, align 4
  store i32 %desc, ptr %desc.addr, align 4
  store i32 %dirfd, ptr %dirfd.addr, align 4
  store ptr %name, ptr %name.addr, align 8
  store i32 %uid, ptr %uid.addr, align 4
  store i32 %gid, ptr %gid.addr, align 4
  %0 = load i32, ptr %desc.addr, align 4
  %cmp = icmp sle i32 0, %0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i32, ptr %desc.addr, align 4
  %2 = load i32, ptr %uid.addr, align 4
  %3 = load i32, ptr %gid.addr, align 4
  %call = call i32 @fchown(i32 noundef %1, i32 noundef %2, i32 noundef %3) #16
  store i32 %call, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %4 = load i32, ptr %dirfd.addr, align 4
  %5 = load ptr, ptr %name.addr, align 8
  %6 = load i32, ptr %uid.addr, align 4
  %7 = load i32, ptr %gid.addr, align 4
  %call1 = call i32 @lchownat(i32 noundef %4, ptr noundef %5, i32 noundef %6, i32 noundef %7)
  store i32 %call1, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %8 = load i32, ptr %retval, align 4
  ret i32 %8
}

; Function Attrs: nounwind
declare i32 @fchown(i32 noundef, i32 noundef, i32 noundef) #3

declare i32 @setfscreatecon(ptr noundef) #1

declare i32 @open_safer(ptr noundef, i32 noundef, ...) #1

; Function Attrs: nounwind
declare i32 @fstat(i32 noundef, ptr noundef) #3

declare i32 @openat_safer(i32 noundef, ptr noundef, i32 noundef, ...) #1

; Function Attrs: nounwind
declare i64 @readlinkat(i32 noundef, ptr noundef, ptr noundef, i64 noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @clone_file(i32 noundef %dest_fd, i32 noundef %src_fd) #0 {
entry:
  %dest_fd.addr = alloca i32, align 4
  %src_fd.addr = alloca i32, align 4
  store i32 %dest_fd, ptr %dest_fd.addr, align 4
  store i32 %src_fd, ptr %src_fd.addr, align 4
  %0 = load i32, ptr %dest_fd.addr, align 4
  %1 = load i32, ptr %src_fd.addr, align 4
  %call = call i32 (i32, i64, ...) @ioctl(i32 noundef %0, i64 noundef 1074041865, i32 noundef %1) #16
  ret i32 %call
}

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i1 @handle_clone_fail(i32 noundef %dst_dirfd, ptr noundef %dst_relname, ptr noundef %src_name, ptr noundef %dst_name, i32 noundef %dest_desc, i1 noundef zeroext %new_dst, i32 noundef %reflink_mode) #0 {
entry:
  %retval = alloca i1, align 1
  %dst_dirfd.addr = alloca i32, align 4
  %dst_relname.addr = alloca ptr, align 8
  %src_name.addr = alloca ptr, align 8
  %dst_name.addr = alloca ptr, align 8
  %dest_desc.addr = alloca i32, align 4
  %new_dst.addr = alloca i8, align 1
  %reflink_mode.addr = alloca i32, align 4
  %report_failure = alloca i8, align 1
  store i32 %dst_dirfd, ptr %dst_dirfd.addr, align 4
  store ptr %dst_relname, ptr %dst_relname.addr, align 8
  store ptr %src_name, ptr %src_name.addr, align 8
  store ptr %dst_name, ptr %dst_name.addr, align 8
  store i32 %dest_desc, ptr %dest_desc.addr, align 4
  %frombool = zext i1 %new_dst to i8
  store i8 %frombool, ptr %new_dst.addr, align 1
  store i32 %reflink_mode, ptr %reflink_mode.addr, align 4
  %call = call ptr @__errno_location() #15
  %0 = load i32, ptr %call, align 4
  %call1 = call zeroext i1 @is_terminal_error(i32 noundef %0)
  %frombool2 = zext i1 %call1 to i8
  store i8 %frombool2, ptr %report_failure, align 1
  %1 = load i32, ptr %reflink_mode.addr, align 4
  %cmp = icmp eq i32 %1, 2
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load i8, ptr %report_failure, align 1
  %tobool = trunc i8 %2 to i1
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %call3 = call ptr @__errno_location() #15
  %3 = load i32, ptr %call3, align 4
  %call4 = call ptr @gettext(ptr noundef @.str.70) #16
  %4 = load ptr, ptr %dst_name.addr, align 8
  %call5 = call ptr @quotearg_n_style(i32 noundef 0, i32 noundef 4, ptr noundef %4)
  %5 = load ptr, ptr %src_name.addr, align 8
  %call6 = call ptr @quotearg_n_style(i32 noundef 1, i32 noundef 4, ptr noundef %5)
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %3, ptr noundef %call4, ptr noundef %call5, ptr noundef %call6) #17
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false
  %6 = load i8, ptr %new_dst.addr, align 1
  %tobool7 = trunc i8 %6 to i1
  br i1 %tobool7, label %land.lhs.true, label %if.end24

land.lhs.true:                                    ; preds = %if.end
  %7 = load i32, ptr %reflink_mode.addr, align 4
  %cmp8 = icmp eq i32 %7, 2
  br i1 %cmp8, label %land.lhs.true9, label %if.end24

land.lhs.true9:                                   ; preds = %land.lhs.true
  %8 = load i8, ptr %report_failure, align 1
  %tobool10 = trunc i8 %8 to i1
  br i1 %tobool10, label %lor.lhs.false11, label %land.lhs.true14

lor.lhs.false11:                                  ; preds = %land.lhs.true9
  %9 = load i32, ptr %dest_desc.addr, align 4
  %call12 = call i64 @lseek(i32 noundef %9, i64 noundef 0, i32 noundef 2) #16
  %cmp13 = icmp eq i64 %call12, 0
  br i1 %cmp13, label %land.lhs.true14, label %if.end24

land.lhs.true14:                                  ; preds = %lor.lhs.false11, %land.lhs.true9
  %10 = load i32, ptr %dst_dirfd.addr, align 4
  %11 = load ptr, ptr %dst_relname.addr, align 8
  %call15 = call i32 @unlinkat(i32 noundef %10, ptr noundef %11, i32 noundef 0) #16
  %cmp16 = icmp ne i32 %call15, 0
  br i1 %cmp16, label %land.lhs.true17, label %if.end24

land.lhs.true17:                                  ; preds = %land.lhs.true14
  %call18 = call ptr @__errno_location() #15
  %12 = load i32, ptr %call18, align 4
  %cmp19 = icmp ne i32 %12, 2
  br i1 %cmp19, label %if.then20, label %if.end24

if.then20:                                        ; preds = %land.lhs.true17
  %call21 = call ptr @__errno_location() #15
  %13 = load i32, ptr %call21, align 4
  %call22 = call ptr @gettext(ptr noundef @.str.24) #16
  %14 = load ptr, ptr %dst_name.addr, align 8
  %call23 = call ptr @quotearg_style(i32 noundef 4, ptr noundef %14)
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %13, ptr noundef %call22, ptr noundef %call23) #17
  br label %if.end24

if.end24:                                         ; preds = %if.then20, %land.lhs.true17, %land.lhs.true14, %lor.lhs.false11, %land.lhs.true, %if.end
  %15 = load i8, ptr %report_failure, align 1
  %tobool25 = trunc i8 %15 to i1
  br i1 %tobool25, label %if.end27, label %if.then26

if.then26:                                        ; preds = %if.end24
  store i32 6, ptr getelementptr inbounds (%struct.copy_debug, ptr @copy_debug, i32 0, i32 1), align 4
  br label %if.end27

if.end27:                                         ; preds = %if.then26, %if.end24
  %16 = load i32, ptr %reflink_mode.addr, align 4
  %cmp28 = icmp eq i32 %16, 2
  br i1 %cmp28, label %if.then31, label %lor.lhs.false29

lor.lhs.false29:                                  ; preds = %if.end27
  %17 = load i8, ptr %report_failure, align 1
  %tobool30 = trunc i8 %17 to i1
  br i1 %tobool30, label %if.then31, label %if.end32

if.then31:                                        ; preds = %lor.lhs.false29, %if.end27
  store i1 false, ptr %retval, align 1
  br label %return

if.end32:                                         ; preds = %lor.lhs.false29
  store i1 true, ptr %retval, align 1
  br label %return

return:                                           ; preds = %if.end32, %if.then31
  %18 = load i1, ptr %retval, align 1
  ret i1 %18
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fchmod_or_lchmod(i32 noundef %desc, i32 noundef %dirfd, ptr noundef %name, i32 noundef %mode) #0 {
entry:
  %retval = alloca i32, align 4
  %desc.addr = alloca i32, align 4
  %dirfd.addr = alloca i32, align 4
  %name.addr = alloca ptr, align 8
  %mode.addr = alloca i32, align 4
  store i32 %desc, ptr %desc.addr, align 4
  store i32 %dirfd, ptr %dirfd.addr, align 4
  store ptr %name, ptr %name.addr, align 8
  store i32 %mode, ptr %mode.addr, align 4
  %0 = load i32, ptr %desc.addr, align 4
  %cmp = icmp sle i32 0, %0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i32, ptr %desc.addr, align 4
  %2 = load i32, ptr %mode.addr, align 4
  %call = call i32 @fchmod(i32 noundef %1, i32 noundef %2) #16
  store i32 %call, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %3 = load i32, ptr %dirfd.addr, align 4
  %4 = load ptr, ptr %name.addr, align 8
  %5 = load i32, ptr %mode.addr, align 4
  %call1 = call i32 @lchmodat(i32 noundef %3, ptr noundef %4, i32 noundef %5)
  store i32 %call1, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %6 = load i32, ptr %retval, align 4
  ret i32 %6
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @io_blksize(ptr noundef %st) #0 {
entry:
  %__x.addr.i = alloca i64, align 8
  %st.addr = alloca ptr, align 8
  %blocksize = alloca i64, align 8
  %leading_zeros = alloca i32, align 4
  %power = alloca i64, align 8
  store ptr %st, ptr %st.addr, align 8
  %0 = load ptr, ptr %st.addr, align 8
  %st_blksize = getelementptr inbounds %struct.stat, ptr %0, i32 0, i32 9
  %1 = load i64, ptr %st_blksize, align 8
  %cmp = icmp slt i64 0, %1
  br i1 %cmp, label %land.lhs.true, label %cond.false

land.lhs.true:                                    ; preds = %entry
  %2 = load ptr, ptr %st.addr, align 8
  %st_blksize1 = getelementptr inbounds %struct.stat, ptr %2, i32 0, i32 9
  %3 = load i64, ptr %st_blksize1, align 8
  %cmp2 = icmp ule i64 %3, 2305843009213693952
  br i1 %cmp2, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true
  %4 = load ptr, ptr %st.addr, align 8
  %st_blksize3 = getelementptr inbounds %struct.stat, ptr %4, i32 0, i32 9
  %5 = load i64, ptr %st_blksize3, align 8
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true, %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %5, %cond.true ], [ 512, %cond.false ]
  %cmp4 = icmp sle i64 %cond, 0
  br i1 %cmp4, label %cond.true5, label %cond.false6

cond.true5:                                       ; preds = %cond.end
  br label %cond.end17

cond.false6:                                      ; preds = %cond.end
  %6 = load ptr, ptr %st.addr, align 8
  %st_blksize7 = getelementptr inbounds %struct.stat, ptr %6, i32 0, i32 9
  %7 = load i64, ptr %st_blksize7, align 8
  %cmp8 = icmp slt i64 0, %7
  br i1 %cmp8, label %land.lhs.true9, label %cond.false14

land.lhs.true9:                                   ; preds = %cond.false6
  %8 = load ptr, ptr %st.addr, align 8
  %st_blksize10 = getelementptr inbounds %struct.stat, ptr %8, i32 0, i32 9
  %9 = load i64, ptr %st_blksize10, align 8
  %cmp11 = icmp ule i64 %9, 2305843009213693952
  br i1 %cmp11, label %cond.true12, label %cond.false14

cond.true12:                                      ; preds = %land.lhs.true9
  %10 = load ptr, ptr %st.addr, align 8
  %st_blksize13 = getelementptr inbounds %struct.stat, ptr %10, i32 0, i32 9
  %11 = load i64, ptr %st_blksize13, align 8
  br label %cond.end15

cond.false14:                                     ; preds = %land.lhs.true9, %cond.false6
  br label %cond.end15

cond.end15:                                       ; preds = %cond.false14, %cond.true12
  %cond16 = phi i64 [ %11, %cond.true12 ], [ 512, %cond.false14 ]
  br label %cond.end17

cond.end17:                                       ; preds = %cond.end15, %cond.true5
  %cond18 = phi i64 [ 262144, %cond.true5 ], [ %cond16, %cond.end15 ]
  store i64 %cond18, ptr %blocksize, align 8
  %12 = load i64, ptr %blocksize, align 8
  %rem = srem i64 262143, %12
  %sub = sub nsw i64 262143, %rem
  %13 = load i64, ptr %blocksize, align 8
  %add = add nsw i64 %13, %sub
  store i64 %add, ptr %blocksize, align 8
  %14 = load ptr, ptr %st.addr, align 8
  %st_mode = getelementptr inbounds %struct.stat, ptr %14, i32 0, i32 3
  %15 = load i32, ptr %st_mode, align 8
  %and = and i32 %15, 61440
  %cmp19 = icmp eq i32 %and, 32768
  br i1 %cmp19, label %land.lhs.true20, label %if.end26

land.lhs.true20:                                  ; preds = %cond.end17
  %16 = load i64, ptr %blocksize, align 8
  %17 = load i64, ptr %blocksize, align 8
  %sub21 = sub nsw i64 %17, 1
  %and22 = and i64 %16, %sub21
  %tobool = icmp ne i64 %and22, 0
  br i1 %tobool, label %if.then, label %if.end26

if.then:                                          ; preds = %land.lhs.true20
  %18 = load i64, ptr %blocksize, align 8
  store i64 %18, ptr %__x.addr.i, align 8
  %19 = load i64, ptr %__x.addr.i, align 8
  %cmp.i = icmp eq i64 %19, 0
  br i1 %cmp.i, label %cond.true.i, label %cond.false.i

cond.true.i:                                      ; preds = %if.then
  br label %__clz64_inline.exit

cond.false.i:                                     ; preds = %if.then
  %20 = load i64, ptr %__x.addr.i, align 8
  %21 = call i64 @llvm.ctlz.i64(i64 %20, i1 true)
  %cast.i = trunc i64 %21 to i32
  br label %__clz64_inline.exit

__clz64_inline.exit:                              ; preds = %cond.false.i, %cond.true.i
  %cond.i = phi i32 [ 64, %cond.true.i ], [ %cast.i, %cond.false.i ]
  store i32 %cond.i, ptr %leading_zeros, align 4
  %22 = load i32, ptr %leading_zeros, align 4
  %sub23 = sub nsw i32 64, %22
  %sh_prom = zext i32 %sub23 to i64
  %shl = shl i64 1, %sh_prom
  store i64 %shl, ptr %power, align 8
  %23 = load i64, ptr %power, align 8
  %cmp24 = icmp ule i64 %23, 9223372036854775807
  br i1 %cmp24, label %if.then25, label %if.end

if.then25:                                        ; preds = %__clz64_inline.exit
  %24 = load i64, ptr %power, align 8
  store i64 %24, ptr %blocksize, align 8
  br label %if.end

if.end:                                           ; preds = %if.then25, %__clz64_inline.exit
  br label %if.end26

if.end26:                                         ; preds = %if.end, %land.lhs.true20, %cond.end17
  %25 = load i64, ptr %blocksize, align 8
  %cmp27 = icmp ult i64 4611686018427387904, %25
  br i1 %cmp27, label %cond.true28, label %cond.false29

cond.true28:                                      ; preds = %if.end26
  br label %cond.end30

cond.false29:                                     ; preds = %if.end26
  %26 = load i64, ptr %blocksize, align 8
  br label %cond.end30

cond.end30:                                       ; preds = %cond.false29, %cond.true28
  %cond31 = phi i64 [ 4611686018427387904, %cond.true28 ], [ %26, %cond.false29 ]
  ret i64 %cond31
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @infer_scantype(i32 noundef %fd, ptr noundef %sb, ptr noundef %scan_inference) #0 {
entry:
  %retval = alloca i32, align 4
  %fd.addr = alloca i32, align 4
  %sb.addr = alloca ptr, align 8
  %scan_inference.addr = alloca ptr, align 8
  %ext_start = alloca i64, align 8
  store i32 %fd, ptr %fd.addr, align 4
  store ptr %sb, ptr %sb.addr, align 8
  store ptr %scan_inference, ptr %scan_inference.addr, align 8
  %0 = load ptr, ptr %scan_inference.addr, align 8
  store i64 -1, ptr %0, align 8
  %1 = load ptr, ptr %sb.addr, align 8
  %st_mode = getelementptr inbounds %struct.stat, ptr %1, i32 0, i32 3
  %2 = load i32, ptr %st_mode, align 8
  %and = and i32 %2, 61440
  %cmp = icmp eq i32 %and, 32768
  br i1 %cmp, label %land.lhs.true, label %if.then

land.lhs.true:                                    ; preds = %entry
  %3 = load ptr, ptr %sb.addr, align 8
  %st_blocks = getelementptr inbounds %struct.stat, ptr %3, i32 0, i32 10
  %4 = load i64, ptr %st_blocks, align 8
  %5 = load ptr, ptr %sb.addr, align 8
  %st_size = getelementptr inbounds %struct.stat, ptr %5, i32 0, i32 8
  %6 = load i64, ptr %st_size, align 8
  %div = sdiv i64 %6, 512
  %cmp1 = icmp slt i64 %4, %div
  br i1 %cmp1, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true, %entry
  store i32 1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %land.lhs.true
  %7 = load i32, ptr %fd.addr, align 4
  %call = call i64 @lseek(i32 noundef %7, i64 noundef 0, i32 noundef 3) #16
  store i64 %call, ptr %ext_start, align 8
  %8 = load i64, ptr %ext_start, align 8
  %cmp2 = icmp sle i64 0, %8
  br i1 %cmp2, label %if.then5, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %call3 = call ptr @__errno_location() #15
  %9 = load i32, ptr %call3, align 4
  %cmp4 = icmp eq i32 %9, 6
  br i1 %cmp4, label %if.then5, label %if.else

if.then5:                                         ; preds = %lor.lhs.false, %if.end
  %10 = load i64, ptr %ext_start, align 8
  %11 = load ptr, ptr %scan_inference.addr, align 8
  store i64 %10, ptr %11, align 8
  store i32 3, ptr %retval, align 4
  br label %return

if.else:                                          ; preds = %lor.lhs.false
  %call6 = call ptr @__errno_location() #15
  %12 = load i32, ptr %call6, align 4
  %cmp7 = icmp ne i32 %12, 22
  br i1 %cmp7, label %land.lhs.true8, label %if.end12

land.lhs.true8:                                   ; preds = %if.else
  %call9 = call ptr @__errno_location() #15
  %13 = load i32, ptr %call9, align 4
  %call10 = call zeroext i1 @is_ENOTSUP(i32 noundef %13)
  br i1 %call10, label %if.end12, label %if.then11

if.then11:                                        ; preds = %land.lhs.true8
  store i32 0, ptr %retval, align 4
  br label %return

if.end12:                                         ; preds = %land.lhs.true8, %if.else
  br label %if.end13

if.end13:                                         ; preds = %if.end12
  store i32 2, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end13, %if.then11, %if.then5, %if.then
  %14 = load i32, ptr %retval, align 4
  ret i32 %14
}

declare void @fdadvise(i32 noundef, i64 noundef, i64 noundef, i32 noundef) #1

; Function Attrs: nounwind willreturn memory(none)
declare i64 @buffer_lcm(i64 noundef, i64 noundef, i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i1 @lseek_copy(i32 noundef %src_fd, i32 noundef %dest_fd, ptr noundef %abuf, i64 noundef %buf_size, i64 noundef %hole_size, i64 noundef %ext_start, i64 noundef %src_total_size, i32 noundef %sparse_mode, i1 noundef zeroext %allow_reflink, ptr noundef %src_name, ptr noundef %dst_name) #0 {
entry:
  %retval = alloca i1, align 1
  %src_fd.addr = alloca i32, align 4
  %dest_fd.addr = alloca i32, align 4
  %abuf.addr = alloca ptr, align 8
  %buf_size.addr = alloca i64, align 8
  %hole_size.addr = alloca i64, align 8
  %ext_start.addr = alloca i64, align 8
  %src_total_size.addr = alloca i64, align 8
  %sparse_mode.addr = alloca i32, align 4
  %allow_reflink.addr = alloca i8, align 1
  %src_name.addr = alloca ptr, align 8
  %dst_name.addr = alloca ptr, align 8
  %last_ext_start = alloca i64, align 8
  %last_ext_len = alloca i64, align 8
  %dest_pos = alloca i64, align 8
  %wrote_hole_at_eof = alloca i8, align 1
  %ext_end = alloca i64, align 8
  %ext_hole_size = alloca i64, align 8
  %ext_len = alloca i64, align 8
  %n_read = alloca i64, align 8
  %read_hole = alloca i8, align 1
  store i32 %src_fd, ptr %src_fd.addr, align 4
  store i32 %dest_fd, ptr %dest_fd.addr, align 4
  store ptr %abuf, ptr %abuf.addr, align 8
  store i64 %buf_size, ptr %buf_size.addr, align 8
  store i64 %hole_size, ptr %hole_size.addr, align 8
  store i64 %ext_start, ptr %ext_start.addr, align 8
  store i64 %src_total_size, ptr %src_total_size.addr, align 8
  store i32 %sparse_mode, ptr %sparse_mode.addr, align 4
  %frombool = zext i1 %allow_reflink to i8
  store i8 %frombool, ptr %allow_reflink.addr, align 1
  store ptr %src_name, ptr %src_name.addr, align 8
  store ptr %dst_name, ptr %dst_name.addr, align 8
  store i64 0, ptr %last_ext_start, align 8
  store i64 0, ptr %last_ext_len, align 8
  store i64 0, ptr %dest_pos, align 8
  store i8 1, ptr %wrote_hole_at_eof, align 1
  store i32 3, ptr getelementptr inbounds (%struct.copy_debug, ptr @copy_debug, i32 0, i32 2), align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end58, %entry
  %0 = load i64, ptr %ext_start.addr, align 8
  %cmp = icmp sle i64 0, %0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load i32, ptr %src_fd.addr, align 4
  %2 = load i64, ptr %ext_start.addr, align 8
  %call = call i64 @lseek(i32 noundef %1, i64 noundef %2, i32 noundef 4) #16
  store i64 %call, ptr %ext_end, align 8
  %3 = load i64, ptr %ext_end, align 8
  %cmp1 = icmp slt i64 %3, 0
  br i1 %cmp1, label %if.then, label %if.end15

if.then:                                          ; preds = %while.body
  %call2 = call ptr @__errno_location() #15
  %4 = load i32, ptr %call2, align 4
  %cmp3 = icmp ne i32 %4, 6
  br i1 %cmp3, label %if.then4, label %if.end

if.then4:                                         ; preds = %if.then
  br label %cannot_lseek

if.end:                                           ; preds = %if.then
  %5 = load i64, ptr %src_total_size.addr, align 8
  store i64 %5, ptr %ext_end, align 8
  %6 = load i64, ptr %ext_end, align 8
  %7 = load i64, ptr %ext_start.addr, align 8
  %cmp5 = icmp sle i64 %6, %7
  br i1 %cmp5, label %if.then6, label %if.end14

if.then6:                                         ; preds = %if.end
  %8 = load i32, ptr %src_fd.addr, align 4
  %call7 = call i64 @lseek(i32 noundef %8, i64 noundef 0, i32 noundef 2) #16
  store i64 %call7, ptr %src_total_size.addr, align 8
  %9 = load i64, ptr %src_total_size.addr, align 8
  %cmp8 = icmp slt i64 %9, 0
  br i1 %cmp8, label %if.then9, label %if.end10

if.then9:                                         ; preds = %if.then6
  br label %cannot_lseek

if.end10:                                         ; preds = %if.then6
  %10 = load i64, ptr %src_total_size.addr, align 8
  %11 = load i64, ptr %ext_start.addr, align 8
  %cmp11 = icmp sle i64 %10, %11
  br i1 %cmp11, label %if.then12, label %if.end13

if.then12:                                        ; preds = %if.end10
  br label %while.end

if.end13:                                         ; preds = %if.end10
  %12 = load i64, ptr %src_total_size.addr, align 8
  store i64 %12, ptr %ext_end, align 8
  br label %if.end14

if.end14:                                         ; preds = %if.end13, %if.end
  br label %if.end15

if.end15:                                         ; preds = %if.end14, %while.body
  %13 = load i64, ptr %src_total_size.addr, align 8
  %14 = load i64, ptr %ext_end, align 8
  %cmp16 = icmp slt i64 %13, %14
  br i1 %cmp16, label %if.then17, label %if.end18

if.then17:                                        ; preds = %if.end15
  %15 = load i64, ptr %ext_end, align 8
  store i64 %15, ptr %src_total_size.addr, align 8
  br label %if.end18

if.end18:                                         ; preds = %if.then17, %if.end15
  %16 = load i32, ptr %src_fd.addr, align 4
  %17 = load i64, ptr %ext_start.addr, align 8
  %call19 = call i64 @lseek(i32 noundef %16, i64 noundef %17, i32 noundef 0) #16
  %cmp20 = icmp slt i64 %call19, 0
  br i1 %cmp20, label %if.then21, label %if.end22

if.then21:                                        ; preds = %if.end18
  br label %cannot_lseek

if.end22:                                         ; preds = %if.end18
  store i8 0, ptr %wrote_hole_at_eof, align 1
  %18 = load i64, ptr %ext_start.addr, align 8
  %19 = load i64, ptr %last_ext_start, align 8
  %sub = sub nsw i64 %18, %19
  %20 = load i64, ptr %last_ext_len, align 8
  %sub23 = sub nsw i64 %sub, %20
  store i64 %sub23, ptr %ext_hole_size, align 8
  %21 = load i64, ptr %ext_hole_size, align 8
  %tobool = icmp ne i64 %21, 0
  br i1 %tobool, label %if.then24, label %if.end38

if.then24:                                        ; preds = %if.end22
  %22 = load i32, ptr %sparse_mode.addr, align 4
  %cmp25 = icmp ne i32 %22, 1
  br i1 %cmp25, label %if.then26, label %if.else

if.then26:                                        ; preds = %if.then24
  %23 = load i32, ptr %dest_fd.addr, align 4
  %24 = load ptr, ptr %dst_name.addr, align 8
  %25 = load i32, ptr %sparse_mode.addr, align 4
  %cmp27 = icmp eq i32 %25, 3
  %26 = load i64, ptr %ext_hole_size, align 8
  %call28 = call zeroext i1 @create_hole(i32 noundef %23, ptr noundef %24, i1 noundef zeroext %cmp27, i64 noundef %26)
  br i1 %call28, label %if.end30, label %if.then29

if.then29:                                        ; preds = %if.then26
  store i1 false, ptr %retval, align 1
  br label %return

if.end30:                                         ; preds = %if.then26
  store i8 1, ptr %wrote_hole_at_eof, align 1
  br label %if.end37

if.else:                                          ; preds = %if.then24
  %27 = load i32, ptr %dest_fd.addr, align 4
  %28 = load i64, ptr %ext_hole_size, align 8
  %call31 = call zeroext i1 @write_zeros(i32 noundef %27, i64 noundef %28)
  br i1 %call31, label %if.end36, label %if.then32

if.then32:                                        ; preds = %if.else
  %call33 = call ptr @__errno_location() #15
  %29 = load i32, ptr %call33, align 4
  %call34 = call ptr @gettext(ptr noundef @.str.71) #16
  %30 = load ptr, ptr %dst_name.addr, align 8
  %call35 = call ptr @quotearg_n_style_colon(i32 noundef 0, i32 noundef 3, ptr noundef %30)
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %29, ptr noundef %call34, ptr noundef %call35) #17
  store i1 false, ptr %retval, align 1
  br label %return

if.end36:                                         ; preds = %if.else
  br label %if.end37

if.end37:                                         ; preds = %if.end36, %if.end30
  br label %if.end38

if.end38:                                         ; preds = %if.end37, %if.end22
  %31 = load i64, ptr %ext_end, align 8
  %32 = load i64, ptr %ext_start.addr, align 8
  %sub39 = sub nsw i64 %31, %32
  store i64 %sub39, ptr %ext_len, align 8
  %33 = load i64, ptr %ext_start.addr, align 8
  store i64 %33, ptr %last_ext_start, align 8
  %34 = load i64, ptr %ext_len, align 8
  store i64 %34, ptr %last_ext_len, align 8
  %35 = load i32, ptr %src_fd.addr, align 4
  %36 = load i32, ptr %dest_fd.addr, align 4
  %37 = load ptr, ptr %abuf.addr, align 8
  %38 = load i64, ptr %buf_size.addr, align 8
  %39 = load i32, ptr %sparse_mode.addr, align 4
  %cmp40 = icmp ne i32 %39, 3
  br i1 %cmp40, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end38
  br label %cond.end

cond.false:                                       ; preds = %if.end38
  %40 = load i64, ptr %hole_size.addr, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ 0, %cond.true ], [ %40, %cond.false ]
  %41 = load i8, ptr %allow_reflink.addr, align 1
  %tobool41 = trunc i8 %41 to i1
  %42 = load ptr, ptr %src_name.addr, align 8
  %43 = load ptr, ptr %dst_name.addr, align 8
  %44 = load i64, ptr %ext_len, align 8
  %call42 = call zeroext i1 @sparse_copy(i32 noundef %35, i32 noundef %36, ptr noundef %37, i64 noundef %38, i64 noundef %cond, i1 noundef zeroext true, i1 noundef zeroext %tobool41, ptr noundef %42, ptr noundef %43, i64 noundef %44, ptr noundef %n_read, ptr noundef %read_hole)
  br i1 %call42, label %if.end44, label %if.then43

if.then43:                                        ; preds = %cond.end
  store i1 false, ptr %retval, align 1
  br label %return

if.end44:                                         ; preds = %cond.end
  %45 = load i64, ptr %ext_start.addr, align 8
  %46 = load i64, ptr %n_read, align 8
  %add = add nsw i64 %45, %46
  store i64 %add, ptr %dest_pos, align 8
  %47 = load i64, ptr %n_read, align 8
  %tobool45 = icmp ne i64 %47, 0
  br i1 %tobool45, label %if.then46, label %if.end49

if.then46:                                        ; preds = %if.end44
  %48 = load i8, ptr %read_hole, align 1
  %tobool47 = trunc i8 %48 to i1
  %frombool48 = zext i1 %tobool47 to i8
  store i8 %frombool48, ptr %wrote_hole_at_eof, align 1
  br label %if.end49

if.end49:                                         ; preds = %if.then46, %if.end44
  %49 = load i64, ptr %n_read, align 8
  %50 = load i64, ptr %ext_len, align 8
  %cmp50 = icmp slt i64 %49, %50
  br i1 %cmp50, label %if.then51, label %if.end52

if.then51:                                        ; preds = %if.end49
  %51 = load i64, ptr %dest_pos, align 8
  store i64 %51, ptr %src_total_size.addr, align 8
  br label %while.end

if.end52:                                         ; preds = %if.end49
  %52 = load i32, ptr %src_fd.addr, align 4
  %53 = load i64, ptr %dest_pos, align 8
  %call53 = call i64 @lseek(i32 noundef %52, i64 noundef %53, i32 noundef 3) #16
  store i64 %call53, ptr %ext_start.addr, align 8
  %54 = load i64, ptr %ext_start.addr, align 8
  %cmp54 = icmp slt i64 %54, 0
  br i1 %cmp54, label %land.lhs.true, label %if.end58

land.lhs.true:                                    ; preds = %if.end52
  %call55 = call ptr @__errno_location() #15
  %55 = load i32, ptr %call55, align 4
  %cmp56 = icmp ne i32 %55, 6
  br i1 %cmp56, label %if.then57, label %if.end58

if.then57:                                        ; preds = %land.lhs.true
  br label %cannot_lseek

if.end58:                                         ; preds = %land.lhs.true, %if.end52
  br label %while.cond, !llvm.loop !9

while.end:                                        ; preds = %if.then51, %if.then12, %while.cond
  %56 = load i64, ptr %dest_pos, align 8
  %57 = load i64, ptr %src_total_size.addr, align 8
  %cmp59 = icmp slt i64 %56, %57
  br i1 %cmp59, label %land.lhs.true61, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %while.end
  %58 = load i8, ptr %wrote_hole_at_eof, align 1
  %tobool60 = trunc i8 %58 to i1
  br i1 %tobool60, label %land.lhs.true61, label %if.end73

land.lhs.true61:                                  ; preds = %lor.lhs.false, %while.end
  %59 = load i32, ptr %sparse_mode.addr, align 4
  %cmp62 = icmp eq i32 %59, 1
  br i1 %cmp62, label %cond.true63, label %cond.false66

cond.true63:                                      ; preds = %land.lhs.true61
  %60 = load i32, ptr %dest_fd.addr, align 4
  %61 = load i64, ptr %src_total_size.addr, align 8
  %62 = load i64, ptr %dest_pos, align 8
  %sub64 = sub nsw i64 %61, %62
  %call65 = call zeroext i1 @write_zeros(i32 noundef %60, i64 noundef %sub64)
  br i1 %call65, label %if.end73, label %if.then69

cond.false66:                                     ; preds = %land.lhs.true61
  %63 = load i32, ptr %dest_fd.addr, align 4
  %64 = load i64, ptr %src_total_size.addr, align 8
  %call67 = call i32 @ftruncate(i32 noundef %63, i64 noundef %64) #16
  %cmp68 = icmp eq i32 %call67, 0
  br i1 %cmp68, label %if.end73, label %if.then69

if.then69:                                        ; preds = %cond.false66, %cond.true63
  %call70 = call ptr @__errno_location() #15
  %65 = load i32, ptr %call70, align 4
  %call71 = call ptr @gettext(ptr noundef @.str.68) #16
  %66 = load ptr, ptr %dst_name.addr, align 8
  %call72 = call ptr @quotearg_style(i32 noundef 4, ptr noundef %66)
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %65, ptr noundef %call71, ptr noundef %call72) #17
  store i1 false, ptr %retval, align 1
  br label %return

if.end73:                                         ; preds = %cond.false66, %cond.true63, %lor.lhs.false
  %67 = load i32, ptr %sparse_mode.addr, align 4
  %cmp74 = icmp eq i32 %67, 3
  br i1 %cmp74, label %land.lhs.true75, label %if.end85

land.lhs.true75:                                  ; preds = %if.end73
  %68 = load i64, ptr %dest_pos, align 8
  %69 = load i64, ptr %src_total_size.addr, align 8
  %cmp76 = icmp slt i64 %68, %69
  br i1 %cmp76, label %land.lhs.true77, label %if.end85

land.lhs.true77:                                  ; preds = %land.lhs.true75
  %70 = load i32, ptr %dest_fd.addr, align 4
  %71 = load i64, ptr %dest_pos, align 8
  %72 = load i64, ptr %src_total_size.addr, align 8
  %73 = load i64, ptr %dest_pos, align 8
  %sub78 = sub nsw i64 %72, %73
  %call79 = call i32 @punch_hole(i32 noundef %70, i64 noundef %71, i64 noundef %sub78)
  %cmp80 = icmp slt i32 %call79, 0
  br i1 %cmp80, label %if.then81, label %if.end85

if.then81:                                        ; preds = %land.lhs.true77
  %call82 = call ptr @__errno_location() #15
  %74 = load i32, ptr %call82, align 4
  %call83 = call ptr @gettext(ptr noundef @.str.72) #16
  %75 = load ptr, ptr %dst_name.addr, align 8
  %call84 = call ptr @quotearg_style(i32 noundef 4, ptr noundef %75)
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %74, ptr noundef %call83, ptr noundef %call84) #17
  store i1 false, ptr %retval, align 1
  br label %return

if.end85:                                         ; preds = %land.lhs.true77, %land.lhs.true75, %if.end73
  store i1 true, ptr %retval, align 1
  br label %return

cannot_lseek:                                     ; preds = %if.then57, %if.then21, %if.then9, %if.then4
  %call86 = call ptr @__errno_location() #15
  %76 = load i32, ptr %call86, align 4
  %call87 = call ptr @gettext(ptr noundef @.str.67) #16
  %77 = load ptr, ptr %src_name.addr, align 8
  %call88 = call ptr @quotearg_style(i32 noundef 4, ptr noundef %77)
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %76, ptr noundef %call87, ptr noundef %call88) #17
  store i1 false, ptr %retval, align 1
  br label %return

return:                                           ; preds = %cannot_lseek, %if.end85, %if.then81, %if.then69, %if.then43, %if.then32, %if.then29
  %78 = load i1, ptr %retval, align 1
  ret i1 %78
}

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i1 @sparse_copy(i32 noundef %src_fd, i32 noundef %dest_fd, ptr noundef %abuf, i64 noundef %buf_size, i64 noundef %hole_size, i1 noundef zeroext %punch_holes, i1 noundef zeroext %allow_reflink, ptr noundef %src_name, ptr noundef %dst_name, i64 noundef %max_n_read, ptr noundef %total_n_read, ptr noundef %last_write_made_hole) #0 {
entry:
  %retval = alloca i1, align 1
  %src_fd.addr = alloca i32, align 4
  %dest_fd.addr = alloca i32, align 4
  %abuf.addr = alloca ptr, align 8
  %buf_size.addr = alloca i64, align 8
  %hole_size.addr = alloca i64, align 8
  %punch_holes.addr = alloca i8, align 1
  %allow_reflink.addr = alloca i8, align 1
  %src_name.addr = alloca ptr, align 8
  %dst_name.addr = alloca ptr, align 8
  %max_n_read.addr = alloca i64, align 8
  %total_n_read.addr = alloca ptr, align 8
  %last_write_made_hole.addr = alloca ptr, align 8
  %copy_max = alloca i64, align 8
  %n_copied = alloca i64, align 8
  %make_hole = alloca i8, align 1
  %psize = alloca i64, align 8
  %buf = alloca ptr, align 8
  %n_read = alloca i64, align 8
  %csize = alloca i64, align 8
  %cbuf = alloca ptr, align 8
  %pbuf = alloca ptr, align 8
  %prev_hole = alloca i8, align 1
  %transition = alloca i8, align 1
  %last_chunk = alloca i8, align 1
  store i32 %src_fd, ptr %src_fd.addr, align 4
  store i32 %dest_fd, ptr %dest_fd.addr, align 4
  store ptr %abuf, ptr %abuf.addr, align 8
  store i64 %buf_size, ptr %buf_size.addr, align 8
  store i64 %hole_size, ptr %hole_size.addr, align 8
  %frombool = zext i1 %punch_holes to i8
  store i8 %frombool, ptr %punch_holes.addr, align 1
  %frombool1 = zext i1 %allow_reflink to i8
  store i8 %frombool1, ptr %allow_reflink.addr, align 1
  store ptr %src_name, ptr %src_name.addr, align 8
  store ptr %dst_name, ptr %dst_name.addr, align 8
  store i64 %max_n_read, ptr %max_n_read.addr, align 8
  store ptr %total_n_read, ptr %total_n_read.addr, align 8
  store ptr %last_write_made_hole, ptr %last_write_made_hole.addr, align 8
  %0 = load ptr, ptr %last_write_made_hole.addr, align 8
  store i8 0, ptr %0, align 1
  %1 = load ptr, ptr %total_n_read.addr, align 8
  store i64 0, ptr %1, align 8
  %2 = load i32, ptr getelementptr inbounds (%struct.copy_debug, ptr @copy_debug, i32 0, i32 2), align 4
  %cmp = icmp eq i32 %2, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %3 = load i64, ptr %hole_size.addr, align 8
  %tobool = icmp ne i64 %3, 0
  %4 = zext i1 %tobool to i64
  %cond = select i1 %tobool, i32 2, i32 1
  store i32 %cond, ptr getelementptr inbounds (%struct.copy_debug, ptr @copy_debug, i32 0, i32 2), align 4
  br label %if.end5

if.else:                                          ; preds = %entry
  %5 = load i64, ptr %hole_size.addr, align 8
  %tobool2 = icmp ne i64 %5, 0
  br i1 %tobool2, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %if.else
  %6 = load i32, ptr getelementptr inbounds (%struct.copy_debug, ptr @copy_debug, i32 0, i32 2), align 4
  %cmp3 = icmp eq i32 %6, 3
  br i1 %cmp3, label %if.then4, label %if.end

if.then4:                                         ; preds = %land.lhs.true
  store i32 4, ptr getelementptr inbounds (%struct.copy_debug, ptr @copy_debug, i32 0, i32 2), align 4
  br label %if.end

if.end:                                           ; preds = %if.then4, %land.lhs.true, %if.else
  br label %if.end5

if.end5:                                          ; preds = %if.end, %if.then
  %7 = load i64, ptr %hole_size.addr, align 8
  %tobool6 = icmp ne i64 %7, 0
  br i1 %tobool6, label %if.else43, label %land.lhs.true7

land.lhs.true7:                                   ; preds = %if.end5
  %8 = load i8, ptr %allow_reflink.addr, align 1
  %tobool8 = trunc i8 %8 to i1
  br i1 %tobool8, label %if.then9, label %if.else43

if.then9:                                         ; preds = %land.lhs.true7
  br label %while.cond

while.cond:                                       ; preds = %if.end42, %if.then9
  %9 = load i64, ptr %max_n_read.addr, align 8
  %tobool10 = icmp ne i64 %9, 0
  br i1 %tobool10, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  store i64 9223372035781033984, ptr %copy_max, align 8
  %10 = load i32, ptr %src_fd.addr, align 4
  %11 = load i32, ptr %dest_fd.addr, align 4
  %12 = load i64, ptr %max_n_read.addr, align 8
  %13 = load i64, ptr %copy_max, align 8
  %cmp11 = icmp ult i64 %12, %13
  br i1 %cmp11, label %cond.true, label %cond.false

cond.true:                                        ; preds = %while.body
  %14 = load i64, ptr %max_n_read.addr, align 8
  br label %cond.end

cond.false:                                       ; preds = %while.body
  %15 = load i64, ptr %copy_max, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond12 = phi i64 [ %14, %cond.true ], [ %15, %cond.false ]
  %call = call i64 @rpl_copy_file_range(i32 noundef %10, ptr noundef null, i32 noundef %11, ptr noundef null, i64 noundef %cond12, i32 noundef 0)
  store i64 %call, ptr %n_copied, align 8
  %16 = load i64, ptr %n_copied, align 8
  %cmp13 = icmp eq i64 %16, 0
  br i1 %cmp13, label %if.then14, label %if.end18

if.then14:                                        ; preds = %cond.end
  %17 = load ptr, ptr %total_n_read.addr, align 8
  %18 = load i64, ptr %17, align 8
  %cmp15 = icmp eq i64 %18, 0
  br i1 %cmp15, label %if.then16, label %if.end17

if.then16:                                        ; preds = %if.then14
  br label %while.end

if.end17:                                         ; preds = %if.then14
  store i32 2, ptr @copy_debug, align 4
  store i1 true, ptr %retval, align 1
  br label %return

if.end18:                                         ; preds = %cond.end
  %19 = load i64, ptr %n_copied, align 8
  %cmp19 = icmp slt i64 %19, 0
  br i1 %cmp19, label %if.then20, label %if.end42

if.then20:                                        ; preds = %if.end18
  store i32 6, ptr @copy_debug, align 4
  %20 = load ptr, ptr %total_n_read.addr, align 8
  %21 = load i64, ptr %20, align 8
  %cmp21 = icmp eq i64 %21, 0
  br i1 %cmp21, label %land.lhs.true22, label %if.end26

land.lhs.true22:                                  ; preds = %if.then20
  %call23 = call ptr @__errno_location() #15
  %22 = load i32, ptr %call23, align 4
  %call24 = call zeroext i1 @is_CLONENOTSUP(i32 noundef %22)
  br i1 %call24, label %if.then25, label %if.end26

if.then25:                                        ; preds = %land.lhs.true22
  br label %while.end

if.end26:                                         ; preds = %land.lhs.true22, %if.then20
  %23 = load ptr, ptr %total_n_read.addr, align 8
  %24 = load i64, ptr %23, align 8
  %cmp27 = icmp eq i64 %24, 0
  br i1 %cmp27, label %land.lhs.true28, label %if.end32

land.lhs.true28:                                  ; preds = %if.end26
  %call29 = call ptr @__errno_location() #15
  %25 = load i32, ptr %call29, align 4
  %cmp30 = icmp eq i32 %25, 2
  br i1 %cmp30, label %if.then31, label %if.end32

if.then31:                                        ; preds = %land.lhs.true28
  br label %while.end

if.end32:                                         ; preds = %land.lhs.true28, %if.end26
  %call33 = call ptr @__errno_location() #15
  %26 = load i32, ptr %call33, align 4
  %cmp34 = icmp eq i32 %26, 4
  br i1 %cmp34, label %if.then35, label %if.else36

if.then35:                                        ; preds = %if.end32
  store i64 0, ptr %n_copied, align 8
  br label %if.end41

if.else36:                                        ; preds = %if.end32
  %call37 = call ptr @__errno_location() #15
  %27 = load i32, ptr %call37, align 4
  %call38 = call ptr @gettext(ptr noundef @.str.73) #16
  %28 = load ptr, ptr %src_name.addr, align 8
  %call39 = call ptr @quotearg_n_style(i32 noundef 0, i32 noundef 4, ptr noundef %28)
  %29 = load ptr, ptr %dst_name.addr, align 8
  %call40 = call ptr @quotearg_n_style(i32 noundef 1, i32 noundef 4, ptr noundef %29)
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %27, ptr noundef %call38, ptr noundef %call39, ptr noundef %call40) #17
  store i1 false, ptr %retval, align 1
  br label %return

if.end41:                                         ; preds = %if.then35
  br label %if.end42

if.end42:                                         ; preds = %if.end41, %if.end18
  store i32 2, ptr @copy_debug, align 4
  %30 = load i64, ptr %n_copied, align 8
  %31 = load i64, ptr %max_n_read.addr, align 8
  %sub = sub i64 %31, %30
  store i64 %sub, ptr %max_n_read.addr, align 8
  %32 = load i64, ptr %n_copied, align 8
  %33 = load ptr, ptr %total_n_read.addr, align 8
  %34 = load i64, ptr %33, align 8
  %add = add nsw i64 %34, %32
  store i64 %add, ptr %33, align 8
  br label %while.cond, !llvm.loop !10

while.end:                                        ; preds = %if.then31, %if.then25, %if.then16, %while.cond
  br label %if.end44

if.else43:                                        ; preds = %land.lhs.true7, %if.end5
  store i32 5, ptr @copy_debug, align 4
  br label %if.end44

if.end44:                                         ; preds = %if.else43, %while.end
  store i8 0, ptr %make_hole, align 1
  store i64 0, ptr %psize, align 8
  br label %while.cond45

while.cond45:                                     ; preds = %while.end157, %if.then66, %if.end44
  %35 = load i64, ptr %max_n_read.addr, align 8
  %tobool46 = icmp ne i64 %35, 0
  br i1 %tobool46, label %while.body47, label %while.end160

while.body47:                                     ; preds = %while.cond45
  %36 = load ptr, ptr %abuf.addr, align 8
  %37 = load ptr, ptr %36, align 8
  %tobool48 = icmp ne ptr %37, null
  br i1 %tobool48, label %if.end52, label %if.then49

if.then49:                                        ; preds = %while.body47
  %call50 = call i32 @getpagesize() #15
  %conv = sext i32 %call50 to i64
  %38 = load i64, ptr %buf_size.addr, align 8
  %call51 = call noalias nonnull ptr @xalignalloc(i64 noundef %conv, i64 noundef %38) #22
  %39 = load ptr, ptr %abuf.addr, align 8
  store ptr %call51, ptr %39, align 8
  br label %if.end52

if.end52:                                         ; preds = %if.then49, %while.body47
  %40 = load ptr, ptr %abuf.addr, align 8
  %41 = load ptr, ptr %40, align 8
  store ptr %41, ptr %buf, align 8
  %42 = load i32, ptr %src_fd.addr, align 4
  %43 = load ptr, ptr %buf, align 8
  %44 = load i64, ptr %max_n_read.addr, align 8
  %45 = load i64, ptr %buf_size.addr, align 8
  %cmp53 = icmp ult i64 %44, %45
  br i1 %cmp53, label %cond.true55, label %cond.false56

cond.true55:                                      ; preds = %if.end52
  %46 = load i64, ptr %max_n_read.addr, align 8
  br label %cond.end57

cond.false56:                                     ; preds = %if.end52
  %47 = load i64, ptr %buf_size.addr, align 8
  br label %cond.end57

cond.end57:                                       ; preds = %cond.false56, %cond.true55
  %cond58 = phi i64 [ %46, %cond.true55 ], [ %47, %cond.false56 ]
  %call59 = call i64 @read(i32 noundef %42, ptr noundef %43, i64 noundef %cond58)
  store i64 %call59, ptr %n_read, align 8
  %48 = load i64, ptr %n_read, align 8
  %cmp60 = icmp slt i64 %48, 0
  br i1 %cmp60, label %if.then62, label %if.end71

if.then62:                                        ; preds = %cond.end57
  %call63 = call ptr @__errno_location() #15
  %49 = load i32, ptr %call63, align 4
  %cmp64 = icmp eq i32 %49, 4
  br i1 %cmp64, label %if.then66, label %if.end67

if.then66:                                        ; preds = %if.then62
  br label %while.cond45, !llvm.loop !11

if.end67:                                         ; preds = %if.then62
  %call68 = call ptr @__errno_location() #15
  %50 = load i32, ptr %call68, align 4
  %call69 = call ptr @gettext(ptr noundef @.str.74) #16
  %51 = load ptr, ptr %src_name.addr, align 8
  %call70 = call ptr @quotearg_style(i32 noundef 4, ptr noundef %51)
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %50, ptr noundef %call69, ptr noundef %call70) #17
  store i1 false, ptr %retval, align 1
  br label %return

if.end71:                                         ; preds = %cond.end57
  %52 = load i64, ptr %n_read, align 8
  %cmp72 = icmp eq i64 %52, 0
  br i1 %cmp72, label %if.then74, label %if.end75

if.then74:                                        ; preds = %if.end71
  br label %while.end160

if.end75:                                         ; preds = %if.end71
  %53 = load i64, ptr %n_read, align 8
  %54 = load i64, ptr %max_n_read.addr, align 8
  %sub76 = sub i64 %54, %53
  store i64 %sub76, ptr %max_n_read.addr, align 8
  %55 = load i64, ptr %n_read, align 8
  %56 = load ptr, ptr %total_n_read.addr, align 8
  %57 = load i64, ptr %56, align 8
  %add77 = add nsw i64 %57, %55
  store i64 %add77, ptr %56, align 8
  %58 = load i64, ptr %hole_size.addr, align 8
  %tobool78 = icmp ne i64 %58, 0
  br i1 %tobool78, label %cond.true79, label %cond.false80

cond.true79:                                      ; preds = %if.end75
  %59 = load i64, ptr %hole_size.addr, align 8
  br label %cond.end81

cond.false80:                                     ; preds = %if.end75
  %60 = load i64, ptr %buf_size.addr, align 8
  br label %cond.end81

cond.end81:                                       ; preds = %cond.false80, %cond.true79
  %cond82 = phi i64 [ %59, %cond.true79 ], [ %60, %cond.false80 ]
  store i64 %cond82, ptr %csize, align 8
  %61 = load ptr, ptr %buf, align 8
  store ptr %61, ptr %cbuf, align 8
  %62 = load ptr, ptr %buf, align 8
  store ptr %62, ptr %pbuf, align 8
  br label %while.cond83

while.cond83:                                     ; preds = %if.end155, %cond.end81
  %63 = load i64, ptr %n_read, align 8
  %tobool84 = icmp ne i64 %63, 0
  br i1 %tobool84, label %while.body85, label %while.end157

while.body85:                                     ; preds = %while.cond83
  %64 = load i8, ptr %make_hole, align 1
  %tobool86 = trunc i8 %64 to i1
  %frombool87 = zext i1 %tobool86 to i8
  store i8 %frombool87, ptr %prev_hole, align 1
  %65 = load i64, ptr %csize, align 8
  %66 = load i64, ptr %n_read, align 8
  %cmp88 = icmp ult i64 %65, %66
  br i1 %cmp88, label %cond.true90, label %cond.false91

cond.true90:                                      ; preds = %while.body85
  %67 = load i64, ptr %csize, align 8
  br label %cond.end92

cond.false91:                                     ; preds = %while.body85
  %68 = load i64, ptr %n_read, align 8
  br label %cond.end92

cond.end92:                                       ; preds = %cond.false91, %cond.true90
  %cond93 = phi i64 [ %67, %cond.true90 ], [ %68, %cond.false91 ]
  store i64 %cond93, ptr %csize, align 8
  %69 = load i64, ptr %hole_size.addr, align 8
  %tobool94 = icmp ne i64 %69, 0
  br i1 %tobool94, label %land.lhs.true95, label %if.end100

land.lhs.true95:                                  ; preds = %cond.end92
  %70 = load i64, ptr %csize, align 8
  %tobool96 = icmp ne i64 %70, 0
  br i1 %tobool96, label %if.then97, label %if.end100

if.then97:                                        ; preds = %land.lhs.true95
  %71 = load ptr, ptr %cbuf, align 8
  %72 = load i64, ptr %csize, align 8
  %call98 = call zeroext i1 @is_nul(ptr noundef %71, i64 noundef %72) #20
  %frombool99 = zext i1 %call98 to i8
  store i8 %frombool99, ptr %make_hole, align 1
  br label %if.end100

if.end100:                                        ; preds = %if.then97, %land.lhs.true95, %cond.end92
  %73 = load i8, ptr %make_hole, align 1
  %tobool101 = trunc i8 %73 to i1
  %conv102 = zext i1 %tobool101 to i32
  %74 = load i8, ptr %prev_hole, align 1
  %tobool103 = trunc i8 %74 to i1
  %conv104 = zext i1 %tobool103 to i32
  %cmp105 = icmp ne i32 %conv102, %conv104
  br i1 %cmp105, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %if.end100
  %75 = load i64, ptr %psize, align 8
  %tobool107 = icmp ne i64 %75, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.end100
  %76 = phi i1 [ false, %if.end100 ], [ %tobool107, %land.rhs ]
  %frombool108 = zext i1 %76 to i8
  store i8 %frombool108, ptr %transition, align 1
  %77 = load i64, ptr %n_read, align 8
  %78 = load i64, ptr %csize, align 8
  %cmp109 = icmp eq i64 %77, %78
  br i1 %cmp109, label %land.lhs.true111, label %lor.rhs

land.lhs.true111:                                 ; preds = %land.end
  %79 = load i8, ptr %make_hole, align 1
  %tobool112 = trunc i8 %79 to i1
  br i1 %tobool112, label %lor.rhs, label %lor.end

lor.rhs:                                          ; preds = %land.lhs.true111, %land.end
  %80 = load i64, ptr %csize, align 8
  %tobool113 = icmp ne i64 %80, 0
  %lnot = xor i1 %tobool113, true
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %land.lhs.true111
  %81 = phi i1 [ true, %land.lhs.true111 ], [ %lnot, %lor.rhs ]
  %frombool114 = zext i1 %81 to i8
  store i8 %frombool114, ptr %last_chunk, align 1
  %82 = load i8, ptr %transition, align 1
  %tobool115 = trunc i8 %82 to i1
  br i1 %tobool115, label %if.then119, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %lor.end
  %83 = load i8, ptr %last_chunk, align 1
  %tobool117 = trunc i8 %83 to i1
  br i1 %tobool117, label %if.then119, label %if.else150

if.then119:                                       ; preds = %lor.lhs.false, %lor.end
  %84 = load i8, ptr %transition, align 1
  %tobool120 = trunc i8 %84 to i1
  br i1 %tobool120, label %if.end123, label %if.then121

if.then121:                                       ; preds = %if.then119
  %85 = load i64, ptr %csize, align 8
  %86 = load i64, ptr %psize, align 8
  %add122 = add i64 %86, %85
  store i64 %add122, ptr %psize, align 8
  br label %if.end123

if.end123:                                        ; preds = %if.then121, %if.then119
  %87 = load i8, ptr %prev_hole, align 1
  %tobool124 = trunc i8 %87 to i1
  br i1 %tobool124, label %if.else134, label %if.then125

if.then125:                                       ; preds = %if.end123
  %88 = load i32, ptr %dest_fd.addr, align 4
  %89 = load ptr, ptr %pbuf, align 8
  %90 = load i64, ptr %psize, align 8
  %call126 = call i64 @full_write(i32 noundef %88, ptr noundef %89, i64 noundef %90)
  %91 = load i64, ptr %psize, align 8
  %cmp127 = icmp ne i64 %call126, %91
  br i1 %cmp127, label %if.then129, label %if.end133

if.then129:                                       ; preds = %if.then125
  %call130 = call ptr @__errno_location() #15
  %92 = load i32, ptr %call130, align 4
  %call131 = call ptr @gettext(ptr noundef @.str.75) #16
  %93 = load ptr, ptr %dst_name.addr, align 8
  %call132 = call ptr @quotearg_style(i32 noundef 4, ptr noundef %93)
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %92, ptr noundef %call131, ptr noundef %call132) #17
  store i1 false, ptr %retval, align 1
  br label %return

if.end133:                                        ; preds = %if.then125
  br label %if.end139

if.else134:                                       ; preds = %if.end123
  %94 = load i32, ptr %dest_fd.addr, align 4
  %95 = load ptr, ptr %dst_name.addr, align 8
  %96 = load i8, ptr %punch_holes.addr, align 1
  %tobool135 = trunc i8 %96 to i1
  %97 = load i64, ptr %psize, align 8
  %call136 = call zeroext i1 @create_hole(i32 noundef %94, ptr noundef %95, i1 noundef zeroext %tobool135, i64 noundef %97)
  br i1 %call136, label %if.end138, label %if.then137

if.then137:                                       ; preds = %if.else134
  store i1 false, ptr %retval, align 1
  br label %return

if.end138:                                        ; preds = %if.else134
  br label %if.end139

if.end139:                                        ; preds = %if.end138, %if.end133
  %98 = load ptr, ptr %cbuf, align 8
  store ptr %98, ptr %pbuf, align 8
  %99 = load i64, ptr %csize, align 8
  store i64 %99, ptr %psize, align 8
  %100 = load i8, ptr %last_chunk, align 1
  %tobool140 = trunc i8 %100 to i1
  br i1 %tobool140, label %if.then141, label %if.end149

if.then141:                                       ; preds = %if.end139
  %101 = load i64, ptr %csize, align 8
  %tobool142 = icmp ne i64 %101, 0
  br i1 %tobool142, label %if.end144, label %if.then143

if.then143:                                       ; preds = %if.then141
  store i64 0, ptr %n_read, align 8
  br label %if.end144

if.end144:                                        ; preds = %if.then143, %if.then141
  %102 = load i8, ptr %transition, align 1
  %tobool145 = trunc i8 %102 to i1
  br i1 %tobool145, label %if.then146, label %if.else147

if.then146:                                       ; preds = %if.end144
  store i64 0, ptr %csize, align 8
  br label %if.end148

if.else147:                                       ; preds = %if.end144
  store i64 0, ptr %psize, align 8
  br label %if.end148

if.end148:                                        ; preds = %if.else147, %if.then146
  br label %if.end149

if.end149:                                        ; preds = %if.end148, %if.end139
  br label %if.end155

if.else150:                                       ; preds = %lor.lhs.false
  %103 = load i64, ptr %psize, align 8
  %104 = load i64, ptr %csize, align 8
  %105 = sext i64 %103 to i65
  %106 = zext i64 %104 to i65
  %107 = call { i65, i1 } @llvm.sadd.with.overflow.i65(i65 %105, i65 %106)
  %108 = extractvalue { i65, i1 } %107, 1
  %109 = extractvalue { i65, i1 } %107, 0
  %110 = trunc i65 %109 to i64
  %111 = sext i64 %110 to i65
  %112 = icmp ne i65 %109, %111
  %113 = or i1 %108, %112
  store i64 %110, ptr %psize, align 8
  br i1 %113, label %if.then151, label %if.end154

if.then151:                                       ; preds = %if.else150
  %call152 = call ptr @gettext(ptr noundef @.str.76) #16
  %114 = load ptr, ptr %src_name.addr, align 8
  %call153 = call ptr @quotearg_style(i32 noundef 4, ptr noundef %114)
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %call152, ptr noundef %call153) #17
  store i1 false, ptr %retval, align 1
  br label %return

if.end154:                                        ; preds = %if.else150
  br label %if.end155

if.end155:                                        ; preds = %if.end154, %if.end149
  %115 = load i64, ptr %csize, align 8
  %116 = load i64, ptr %n_read, align 8
  %sub156 = sub i64 %116, %115
  store i64 %sub156, ptr %n_read, align 8
  %117 = load i64, ptr %csize, align 8
  %118 = load ptr, ptr %cbuf, align 8
  %add.ptr = getelementptr inbounds i8, ptr %118, i64 %117
  store ptr %add.ptr, ptr %cbuf, align 8
  br label %while.cond83, !llvm.loop !12

while.end157:                                     ; preds = %while.cond83
  %119 = load i8, ptr %make_hole, align 1
  %tobool158 = trunc i8 %119 to i1
  %120 = load ptr, ptr %last_write_made_hole.addr, align 8
  %frombool159 = zext i1 %tobool158 to i8
  store i8 %frombool159, ptr %120, align 1
  br label %while.cond45, !llvm.loop !11

while.end160:                                     ; preds = %if.then74, %while.cond45
  %121 = load i8, ptr %make_hole, align 1
  %tobool161 = trunc i8 %121 to i1
  br i1 %tobool161, label %land.lhs.true163, label %if.else167

land.lhs.true163:                                 ; preds = %while.end160
  %122 = load i32, ptr %dest_fd.addr, align 4
  %123 = load ptr, ptr %dst_name.addr, align 8
  %124 = load i8, ptr %punch_holes.addr, align 1
  %tobool164 = trunc i8 %124 to i1
  %125 = load i64, ptr %psize, align 8
  %call165 = call zeroext i1 @create_hole(i32 noundef %122, ptr noundef %123, i1 noundef zeroext %tobool164, i64 noundef %125)
  br i1 %call165, label %if.else167, label %if.then166

if.then166:                                       ; preds = %land.lhs.true163
  store i1 false, ptr %retval, align 1
  br label %return

if.else167:                                       ; preds = %land.lhs.true163, %while.end160
  store i1 true, ptr %retval, align 1
  br label %return

return:                                           ; preds = %if.else167, %if.then166, %if.then151, %if.then137, %if.then129, %if.end67, %if.else36, %if.end17
  %126 = load i1, ptr %retval, align 1
  ret i1 %126
}

; Function Attrs: nounwind
declare i32 @ftruncate(i32 noundef, i64 noundef) #3

declare i32 @fdutimensat(i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) #1

declare i32 @close(i32 noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal void @emit_debug(ptr noundef %x) #0 {
entry:
  %x.addr = alloca ptr, align 8
  store ptr %x, ptr %x.addr, align 8
  %0 = load ptr, ptr %x.addr, align 8
  %hard_link = getelementptr inbounds %struct.cp_options, ptr %0, i32 0, i32 8
  %1 = load i8, ptr %hard_link, align 1
  %tobool = trunc i8 %1 to i1
  br i1 %tobool, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %2 = load ptr, ptr %x.addr, align 8
  %symbolic_link = getelementptr inbounds %struct.cp_options, ptr %2, i32 0, i32 31
  %3 = load i8, ptr %symbolic_link, align 2
  %tobool1 = trunc i8 %3 to i1
  br i1 %tobool1, label %if.end, label %land.lhs.true2

land.lhs.true2:                                   ; preds = %land.lhs.true
  %4 = load ptr, ptr %x.addr, align 8
  %data_copy_required = getelementptr inbounds %struct.cp_options, ptr %4, i32 0, i32 22
  %5 = load i8, ptr %data_copy_required, align 1
  %tobool3 = trunc i8 %5 to i1
  br i1 %tobool3, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true2
  %6 = load i32, ptr @copy_debug, align 4
  %call = call ptr @copy_debug_string(i32 noundef %6)
  %7 = load i32, ptr getelementptr inbounds (%struct.copy_debug, ptr @copy_debug, i32 0, i32 1), align 4
  %call4 = call ptr @copy_debug_string(i32 noundef %7)
  %8 = load i32, ptr getelementptr inbounds (%struct.copy_debug, ptr @copy_debug, i32 0, i32 2), align 4
  %call5 = call ptr @copy_debug_sparse_string(i32 noundef %8)
  %call6 = call i32 (ptr, ...) @printf(ptr noundef @.str.77, ptr noundef %call, ptr noundef %call4, ptr noundef %call5)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true2, %land.lhs.true, %entry
  ret void
}

declare void @alignfree(ptr noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal ptr @copy_debug_string(i32 noundef %debug_val) #0 {
entry:
  %retval = alloca ptr, align 8
  %debug_val.addr = alloca i32, align 4
  store i32 %debug_val, ptr %debug_val.addr, align 4
  %0 = load i32, ptr %debug_val.addr, align 4
  switch i32 %0, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb1
    i32 5, label %sw.bb2
    i32 6, label %sw.bb3
    i32 0, label %sw.bb4
    i32 3, label %sw.bb5
    i32 4, label %sw.bb5
  ]

sw.bb:                                            ; preds = %entry
  store ptr @.str.78, ptr %retval, align 8
  br label %return

sw.bb1:                                           ; preds = %entry
  store ptr @.str.79, ptr %retval, align 8
  br label %return

sw.bb2:                                           ; preds = %entry
  store ptr @.str.80, ptr %retval, align 8
  br label %return

sw.bb3:                                           ; preds = %entry
  store ptr @.str.81, ptr %retval, align 8
  br label %return

sw.bb4:                                           ; preds = %entry
  store ptr @.str.82, ptr %retval, align 8
  br label %return

sw.bb5:                                           ; preds = %entry, %entry
  br label %sw.default

sw.default:                                       ; preds = %sw.bb5, %entry
  unreachable

return:                                           ; preds = %sw.bb4, %sw.bb3, %sw.bb2, %sw.bb1, %sw.bb
  %1 = load ptr, ptr %retval, align 8
  ret ptr %1
}

; Function Attrs: noinline nounwind optnone uwtable
define internal ptr @copy_debug_sparse_string(i32 noundef %debug_val) #0 {
entry:
  %retval = alloca ptr, align 8
  %debug_val.addr = alloca i32, align 4
  store i32 %debug_val, ptr %debug_val.addr, align 4
  %0 = load i32, ptr %debug_val.addr, align 4
  switch i32 %0, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb1
    i32 3, label %sw.bb2
    i32 4, label %sw.bb3
    i32 0, label %sw.bb4
    i32 5, label %sw.bb5
    i32 6, label %sw.bb5
  ]

sw.bb:                                            ; preds = %entry
  store ptr @.str.78, ptr %retval, align 8
  br label %return

sw.bb1:                                           ; preds = %entry
  store ptr @.str.83, ptr %retval, align 8
  br label %return

sw.bb2:                                           ; preds = %entry
  store ptr @.str.84, ptr %retval, align 8
  br label %return

sw.bb3:                                           ; preds = %entry
  store ptr @.str.85, ptr %retval, align 8
  br label %return

sw.bb4:                                           ; preds = %entry
  store ptr @.str.82, ptr %retval, align 8
  br label %return

sw.bb5:                                           ; preds = %entry, %entry
  br label %sw.default

sw.default:                                       ; preds = %sw.bb5, %entry
  unreachable

return:                                           ; preds = %sw.bb4, %sw.bb3, %sw.bb2, %sw.bb1, %sw.bb
  %1 = load ptr, ptr %retval, align 8
  ret ptr %1
}

declare i64 @rpl_copy_file_range(i32 noundef, ptr noundef, i32 noundef, ptr noundef, i64 noundef, i32 noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i1 @is_CLONENOTSUP(i32 noundef %err) #0 {
entry:
  %err.addr = alloca i32, align 4
  store i32 %err, ptr %err.addr, align 4
  %0 = load i32, ptr %err.addr, align 4
  %cmp = icmp eq i32 %0, 38
  br i1 %cmp, label %lor.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32, ptr %err.addr, align 4
  %cmp1 = icmp eq i32 %1, 25
  br i1 %cmp1, label %lor.end, label %lor.lhs.false2

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %2 = load i32, ptr %err.addr, align 4
  %call = call zeroext i1 @is_ENOTSUP(i32 noundef %2)
  br i1 %call, label %lor.end, label %lor.lhs.false3

lor.lhs.false3:                                   ; preds = %lor.lhs.false2
  %3 = load i32, ptr %err.addr, align 4
  %cmp4 = icmp eq i32 %3, 22
  br i1 %cmp4, label %lor.end, label %lor.lhs.false5

lor.lhs.false5:                                   ; preds = %lor.lhs.false3
  %4 = load i32, ptr %err.addr, align 4
  %cmp6 = icmp eq i32 %4, 9
  br i1 %cmp6, label %lor.end, label %lor.lhs.false7

lor.lhs.false7:                                   ; preds = %lor.lhs.false5
  %5 = load i32, ptr %err.addr, align 4
  %cmp8 = icmp eq i32 %5, 18
  br i1 %cmp8, label %lor.end, label %lor.lhs.false9

lor.lhs.false9:                                   ; preds = %lor.lhs.false7
  %6 = load i32, ptr %err.addr, align 4
  %cmp10 = icmp eq i32 %6, 26
  br i1 %cmp10, label %lor.end, label %lor.lhs.false11

lor.lhs.false11:                                  ; preds = %lor.lhs.false9
  %7 = load i32, ptr %err.addr, align 4
  %cmp12 = icmp eq i32 %7, 1
  br i1 %cmp12, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %lor.lhs.false11
  %8 = load i32, ptr %err.addr, align 4
  %cmp13 = icmp eq i32 %8, 13
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %lor.lhs.false11, %lor.lhs.false9, %lor.lhs.false7, %lor.lhs.false5, %lor.lhs.false3, %lor.lhs.false2, %lor.lhs.false, %entry
  %9 = phi i1 [ true, %lor.lhs.false11 ], [ true, %lor.lhs.false9 ], [ true, %lor.lhs.false7 ], [ true, %lor.lhs.false5 ], [ true, %lor.lhs.false3 ], [ true, %lor.lhs.false2 ], [ true, %lor.lhs.false ], [ true, %entry ], [ %cmp13, %lor.rhs ]
  ret i1 %9
}

; Function Attrs: nounwind willreturn memory(none)
declare i32 @getpagesize() #2

; Function Attrs: allocsize(1)
declare noalias nonnull ptr @xalignalloc(i64 noundef, i64 noundef) #9

declare i64 @read(i32 noundef, ptr noundef, i64 noundef) #1

; Function Attrs: noinline nounwind optnone willreturn memory(read) uwtable
define internal zeroext i1 @is_nul(ptr noundef %buf, i64 noundef %length) #7 {
entry:
  %retval = alloca i1, align 1
  %buf.addr = alloca ptr, align 8
  %length.addr = alloca i64, align 8
  %p = alloca ptr, align 8
  %word = alloca i8, align 1
  store ptr %buf, ptr %buf.addr, align 8
  store i64 %length, ptr %length.addr, align 8
  %0 = load ptr, ptr %buf.addr, align 8
  store ptr %0, ptr %p, align 8
  %1 = load i64, ptr %length.addr, align 8
  %tobool = icmp ne i64 %1, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i1 true, ptr %retval, align 1
  br label %return

if.end:                                           ; preds = %entry
  br label %while.cond

while.cond:                                       ; preds = %if.end7, %if.end
  %2 = load i64, ptr %length.addr, align 8
  %and = and i64 %2, 0
  %tobool1 = icmp ne i64 %and, 0
  br i1 %tobool1, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %3 = load ptr, ptr %p, align 8
  %4 = load i8, ptr %3, align 1
  %tobool2 = icmp ne i8 %4, 0
  br i1 %tobool2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %while.body
  store i1 false, ptr %retval, align 1
  br label %return

if.end4:                                          ; preds = %while.body
  %5 = load ptr, ptr %p, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %5, i32 1
  store ptr %incdec.ptr, ptr %p, align 8
  %6 = load i64, ptr %length.addr, align 8
  %dec = add i64 %6, -1
  store i64 %dec, ptr %length.addr, align 8
  %7 = load i64, ptr %length.addr, align 8
  %tobool5 = icmp ne i64 %7, 0
  br i1 %tobool5, label %if.end7, label %if.then6

if.then6:                                         ; preds = %if.end4
  store i1 true, ptr %retval, align 1
  br label %return

if.end7:                                          ; preds = %if.end4
  br label %while.cond, !llvm.loop !13

while.end:                                        ; preds = %while.cond
  br label %for.cond

for.cond:                                         ; preds = %if.end16, %while.end
  %8 = load ptr, ptr %p, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %word, ptr align 1 %8, i64 1, i1 false)
  %9 = load i8, ptr %word, align 1
  %tobool8 = icmp ne i8 %9, 0
  br i1 %tobool8, label %if.then9, label %if.end10

if.then9:                                         ; preds = %for.cond
  store i1 false, ptr %retval, align 1
  br label %return

if.end10:                                         ; preds = %for.cond
  %10 = load ptr, ptr %p, align 8
  %add.ptr = getelementptr inbounds i8, ptr %10, i64 1
  store ptr %add.ptr, ptr %p, align 8
  %11 = load i64, ptr %length.addr, align 8
  %sub = sub i64 %11, 1
  store i64 %sub, ptr %length.addr, align 8
  %12 = load i64, ptr %length.addr, align 8
  %tobool11 = icmp ne i64 %12, 0
  br i1 %tobool11, label %if.end13, label %if.then12

if.then12:                                        ; preds = %if.end10
  store i1 true, ptr %retval, align 1
  br label %return

if.end13:                                         ; preds = %if.end10
  %13 = load i64, ptr %length.addr, align 8
  %and14 = and i64 %13, 15
  %cmp = icmp eq i64 %and14, 0
  br i1 %cmp, label %if.then15, label %if.end16

if.then15:                                        ; preds = %if.end13
  br label %for.end

if.end16:                                         ; preds = %if.end13
  br label %for.cond

for.end:                                          ; preds = %if.then15
  %14 = load ptr, ptr %buf.addr, align 8
  %15 = load ptr, ptr %p, align 8
  %16 = load i64, ptr %length.addr, align 8
  %call = call i32 @memcmp(ptr noundef %14, ptr noundef %15, i64 noundef %16) #20
  %cmp17 = icmp eq i32 %call, 0
  store i1 %cmp17, ptr %retval, align 1
  br label %return

return:                                           ; preds = %for.end, %if.then12, %if.then9, %if.then6, %if.then3, %if.then
  %17 = load i1, ptr %retval, align 1
  ret i1 %17
}

declare i64 @full_write(i32 noundef, ptr noundef, i64 noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i1 @create_hole(i32 noundef %fd, ptr noundef %name, i1 noundef zeroext %punch_holes, i64 noundef %size) #0 {
entry:
  %retval = alloca i1, align 1
  %fd.addr = alloca i32, align 4
  %name.addr = alloca ptr, align 8
  %punch_holes.addr = alloca i8, align 1
  %size.addr = alloca i64, align 8
  %file_end = alloca i64, align 8
  store i32 %fd, ptr %fd.addr, align 4
  store ptr %name, ptr %name.addr, align 8
  %frombool = zext i1 %punch_holes to i8
  store i8 %frombool, ptr %punch_holes.addr, align 1
  store i64 %size, ptr %size.addr, align 8
  %0 = load i32, ptr %fd.addr, align 4
  %1 = load i64, ptr %size.addr, align 8
  %call = call i64 @lseek(i32 noundef %0, i64 noundef %1, i32 noundef 1) #16
  store i64 %call, ptr %file_end, align 8
  %2 = load i64, ptr %file_end, align 8
  %cmp = icmp slt i64 %2, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call1 = call ptr @__errno_location() #15
  %3 = load i32, ptr %call1, align 4
  %call2 = call ptr @gettext(ptr noundef @.str.67) #16
  %4 = load ptr, ptr %name.addr, align 8
  %call3 = call ptr @quotearg_style(i32 noundef 4, ptr noundef %4)
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %3, ptr noundef %call2, ptr noundef %call3) #17
  store i1 false, ptr %retval, align 1
  br label %return

if.end:                                           ; preds = %entry
  %5 = load i8, ptr %punch_holes.addr, align 1
  %tobool = trunc i8 %5 to i1
  br i1 %tobool, label %land.lhs.true, label %if.end10

land.lhs.true:                                    ; preds = %if.end
  %6 = load i32, ptr %fd.addr, align 4
  %7 = load i64, ptr %file_end, align 8
  %8 = load i64, ptr %size.addr, align 8
  %sub = sub nsw i64 %7, %8
  %9 = load i64, ptr %size.addr, align 8
  %call4 = call i32 @punch_hole(i32 noundef %6, i64 noundef %sub, i64 noundef %9)
  %cmp5 = icmp slt i32 %call4, 0
  br i1 %cmp5, label %if.then6, label %if.end10

if.then6:                                         ; preds = %land.lhs.true
  %call7 = call ptr @__errno_location() #15
  %10 = load i32, ptr %call7, align 4
  %call8 = call ptr @gettext(ptr noundef @.str.72) #16
  %11 = load ptr, ptr %name.addr, align 8
  %call9 = call ptr @quotearg_style(i32 noundef 4, ptr noundef %11)
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %10, ptr noundef %call8, ptr noundef %call9) #17
  store i1 false, ptr %retval, align 1
  br label %return

if.end10:                                         ; preds = %land.lhs.true, %if.end
  store i1 true, ptr %retval, align 1
  br label %return

return:                                           ; preds = %if.end10, %if.then6, %if.then
  %12 = load i1, ptr %retval, align 1
  ret i1 %12
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i65, i1 } @llvm.sadd.with.overflow.i65(i65, i65) #10

; Function Attrs: nounwind
declare i64 @lseek(i32 noundef, i64 noundef, i32 noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @punch_hole(i32 noundef %fd, i64 noundef %offset, i64 noundef %length) #0 {
entry:
  %fd.addr = alloca i32, align 4
  %offset.addr = alloca i64, align 8
  %length.addr = alloca i64, align 8
  %ret = alloca i32, align 4
  store i32 %fd, ptr %fd.addr, align 4
  store i64 %offset, ptr %offset.addr, align 8
  store i64 %length, ptr %length.addr, align 8
  store i32 0, ptr %ret, align 4
  %0 = load i32, ptr %fd.addr, align 4
  %1 = load i64, ptr %offset.addr, align 8
  %2 = load i64, ptr %length.addr, align 8
  %call = call i32 @fallocate(i32 noundef %0, i32 noundef 3, i64 noundef %1, i64 noundef %2)
  store i32 %call, ptr %ret, align 4
  %3 = load i32, ptr %ret, align 4
  %cmp = icmp slt i32 %3, 0
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %call1 = call ptr @__errno_location() #15
  %4 = load i32, ptr %call1, align 4
  %call2 = call zeroext i1 @is_ENOTSUP(i32 noundef %4)
  br i1 %call2, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %call3 = call ptr @__errno_location() #15
  %5 = load i32, ptr %call3, align 4
  %cmp4 = icmp eq i32 %5, 38
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %land.lhs.true
  store i32 0, ptr %ret, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false, %entry
  %6 = load i32, ptr %ret, align 4
  ret i32 %6
}

declare i32 @fallocate(i32 noundef, i32 noundef, i64 noundef, i64 noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i1 @is_ENOTSUP(i32 noundef %err) #0 {
entry:
  %err.addr = alloca i32, align 4
  store i32 %err, ptr %err.addr, align 4
  %0 = load i32, ptr %err.addr, align 4
  %cmp = icmp eq i32 %0, 95
  br i1 %cmp, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %entry
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %entry
  %1 = phi i1 [ true, %entry ], [ false, %lor.rhs ]
  ret i1 %1
}

; Function Attrs: nounwind willreturn memory(read)
declare i32 @memcmp(ptr noundef, ptr noundef, i64 noundef) #5

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i1 @write_zeros(i32 noundef %fd, i64 noundef %n_bytes) #0 {
entry:
  %retval = alloca i1, align 1
  %fd.addr = alloca i32, align 4
  %n_bytes.addr = alloca i64, align 8
  %n = alloca i64, align 8
  store i32 %fd, ptr %fd.addr, align 4
  store i64 %n_bytes, ptr %n_bytes.addr, align 8
  %0 = load ptr, ptr @write_zeros.zeros, align 8
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %if.then, label %if.end3

if.then:                                          ; preds = %entry
  %1 = load i64, ptr @write_zeros.nz, align 8
  %call = call noalias ptr @calloc(i64 noundef %1, i64 noundef 1) #23
  store ptr %call, ptr @write_zeros.zeros, align 8
  %2 = load ptr, ptr @write_zeros.zeros, align 8
  %cmp1 = icmp eq ptr %2, null
  br i1 %cmp1, label %if.then2, label %if.end

if.then2:                                         ; preds = %if.then
  store ptr @write_zeros.fallback, ptr @write_zeros.zeros, align 8
  store i64 1024, ptr @write_zeros.nz, align 8
  br label %if.end

if.end:                                           ; preds = %if.then2, %if.then
  br label %if.end3

if.end3:                                          ; preds = %if.end, %entry
  br label %while.cond

while.cond:                                       ; preds = %if.end8, %if.end3
  %3 = load i64, ptr %n_bytes.addr, align 8
  %tobool = icmp ne i64 %3, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %4 = load i64, ptr @write_zeros.nz, align 8
  %5 = load i64, ptr %n_bytes.addr, align 8
  %cmp4 = icmp ult i64 %4, %5
  br i1 %cmp4, label %cond.true, label %cond.false

cond.true:                                        ; preds = %while.body
  %6 = load i64, ptr @write_zeros.nz, align 8
  br label %cond.end

cond.false:                                       ; preds = %while.body
  %7 = load i64, ptr %n_bytes.addr, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %6, %cond.true ], [ %7, %cond.false ]
  store i64 %cond, ptr %n, align 8
  %8 = load i32, ptr %fd.addr, align 4
  %9 = load ptr, ptr @write_zeros.zeros, align 8
  %10 = load i64, ptr %n, align 8
  %call5 = call i64 @full_write(i32 noundef %8, ptr noundef %9, i64 noundef %10)
  %11 = load i64, ptr %n, align 8
  %cmp6 = icmp ne i64 %call5, %11
  br i1 %cmp6, label %if.then7, label %if.end8

if.then7:                                         ; preds = %cond.end
  store i1 false, ptr %retval, align 1
  br label %return

if.end8:                                          ; preds = %cond.end
  %12 = load i64, ptr %n, align 8
  %13 = load i64, ptr %n_bytes.addr, align 8
  %sub = sub i64 %13, %12
  store i64 %sub, ptr %n_bytes.addr, align 8
  br label %while.cond, !llvm.loop !14

while.end:                                        ; preds = %while.cond
  store i1 true, ptr %retval, align 1
  br label %return

return:                                           ; preds = %while.end, %if.then7
  %14 = load i1, ptr %retval, align 1
  ret i1 %14
}

; Function Attrs: nounwind allocsize(0,1)
declare noalias ptr @calloc(i64 noundef, i64 noundef) #11

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #10

; Function Attrs: nounwind
declare i32 @fchmod(i32 noundef, i32 noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i1 @is_terminal_error(i32 noundef %err) #0 {
entry:
  %err.addr = alloca i32, align 4
  store i32 %err, ptr %err.addr, align 4
  %0 = load i32, ptr %err.addr, align 4
  %cmp = icmp eq i32 %0, 5
  br i1 %cmp, label %lor.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32, ptr %err.addr, align 4
  %cmp1 = icmp eq i32 %1, 12
  br i1 %cmp1, label %lor.end, label %lor.lhs.false2

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %2 = load i32, ptr %err.addr, align 4
  %cmp3 = icmp eq i32 %2, 28
  br i1 %cmp3, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %lor.lhs.false2
  %3 = load i32, ptr %err.addr, align 4
  %cmp4 = icmp eq i32 %3, 122
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %lor.lhs.false2, %lor.lhs.false, %entry
  %4 = phi i1 [ true, %lor.lhs.false2 ], [ true, %lor.lhs.false ], [ true, %entry ], [ %cmp4, %lor.rhs ]
  ret i1 %4
}

; Function Attrs: nounwind
declare i32 @ioctl(i32 noundef, i64 noundef, ...) #3

declare noalias ptr @savedir(ptr noundef, i32 noundef) #1

declare noalias nonnull ptr @file_name_concat(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: allocsize(0)
declare noalias nonnull ptr @ximalloc(i64 noundef) #12

declare i32 @putchar_unlocked(i32 noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i1 @writable_destination(i32 noundef %dst_dirfd, ptr noundef %dst_relname, i32 noundef %mode) #0 {
entry:
  %dst_dirfd.addr = alloca i32, align 4
  %dst_relname.addr = alloca ptr, align 8
  %mode.addr = alloca i32, align 4
  store i32 %dst_dirfd, ptr %dst_dirfd.addr, align 4
  store ptr %dst_relname, ptr %dst_relname.addr, align 8
  store i32 %mode, ptr %mode.addr, align 4
  %0 = load i32, ptr %mode.addr, align 4
  %and = and i32 %0, 61440
  %cmp = icmp eq i32 %and, 40960
  br i1 %cmp, label %lor.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %call = call zeroext i1 @can_write_any_file()
  br i1 %call, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %lor.lhs.false
  %1 = load i32, ptr %dst_dirfd.addr, align 4
  %2 = load ptr, ptr %dst_relname.addr, align 8
  %call1 = call i32 @faccessat(i32 noundef %1, ptr noundef %2, i32 noundef 2, i32 noundef 512) #16
  %cmp2 = icmp eq i32 %call1, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %lor.lhs.false, %entry
  %3 = phi i1 [ true, %lor.lhs.false ], [ true, %entry ], [ %cmp2, %lor.rhs ]
  ret i1 %3
}

declare void @strmode(i32 noundef, ptr noundef) #1

declare i32 @fprintf(ptr noundef, ptr noundef, ...) #1

declare zeroext i1 @yesno() #1

declare zeroext i1 @can_write_any_file() #1

; Function Attrs: nounwind
declare i32 @faccessat(i32 noundef, ptr noundef, i32 noundef, i32 noundef) #3

; Function Attrs: noreturn nounwind
declare void @__assert_fail(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #13

declare i32 @force_linkat(i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i32 noundef) #1

; Function Attrs: nounwind
declare i32 @lstat(ptr noundef, ptr noundef) #3

; Function Attrs: nounwind
declare noalias ptr @canonicalize_file_name(ptr noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cp_options_default(ptr noundef nonnull %x) #0 {
entry:
  %x.addr = alloca ptr, align 8
  store ptr %x, ptr %x.addr, align 8
  %0 = load ptr, ptr %x.addr, align 8
  call void @llvm.memset.p0.i64(ptr align 8 %0, i8 0, i64 96, i1 false)
  %call = call i32 @geteuid() #16
  %cmp = icmp eq i32 %call, 0
  %1 = load ptr, ptr %x.addr, align 8
  %owner_privileges = getelementptr inbounds %struct.cp_options, ptr %1, i32 0, i32 14
  %frombool = zext i1 %cmp to i8
  store i8 %frombool, ptr %owner_privileges, align 1
  %2 = load ptr, ptr %x.addr, align 8
  %chown_privileges = getelementptr inbounds %struct.cp_options, ptr %2, i32 0, i32 13
  %frombool1 = zext i1 %cmp to i8
  store i8 %frombool1, ptr %chown_privileges, align 4
  %3 = load ptr, ptr %x.addr, align 8
  %rename_errno = getelementptr inbounds %struct.cp_options, ptr %3, i32 0, i32 39
  store i32 -1, ptr %rename_errno, align 8
  ret void
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #14

; Function Attrs: nounwind
declare i32 @geteuid() #3

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind willreturn memory(none) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind willreturn memory(read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { noinline nounwind optnone willreturn memory(read) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { allocsize(1) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nounwind allocsize(0,1) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #15 = { nounwind willreturn memory(none) }
attributes #16 = { nounwind }
attributes #17 = { cold }
attributes #18 = { noreturn }
attributes #19 = { noreturn nounwind }
attributes #20 = { nounwind willreturn memory(read) }
attributes #21 = { allocsize(0) }
attributes #22 = { allocsize(1) }
attributes #23 = { nounwind allocsize(0,1) }

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
!9 = distinct !{!9, !7}
!10 = distinct !{!10, !7}
!11 = distinct !{!11, !7}
!12 = distinct !{!12, !7}
!13 = distinct !{!13, !7}
!14 = distinct !{!14, !7}
