; ModuleID = 'llvm-link'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rm_options = type { i8, i32, i8, i8, i8, ptr, i8, i8, i8, i8 }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct._ftsent = type { ptr, ptr, ptr, ptr, i64, ptr, ptr, ptr, i32, i32, i64, ptr, i64, i64, i16, i16, i16, [1 x %struct.stat], [0 x i8] }
%struct.FTS = type { ptr, ptr, ptr, i64, ptr, i32, i32, i64, i64, ptr, i32, ptr, %union.anon, %struct.I_ring }
%union.anon = type { ptr }
%struct.I_ring = type { [4 x i32], i32, i32, i32, i8 }
%struct.dirent = type { i64, i64, i16, i8, [256 x i8] }

@.str = private unnamed_addr constant [16 x i8] c"fts_read failed\00", align 1
@.str.1 = private unnamed_addr constant [88 x i8] c"((s) == RM_OK || (s) == RM_USER_ACCEPTED || (s) == RM_USER_DECLINED || (s) == RM_ERROR)\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"src/remove.c\00", align 1
@__PRETTY_FUNCTION__.rm = private unnamed_addr constant [60 x i8] c"enum RM_status rm(char *const *, const struct rm_options *)\00", align 1
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
@stderr = external global ptr, align 8
@.str.19 = private unnamed_addr constant [48 x i8] c"%s: descend into write-protected directory %s? \00", align 1
@.str.20 = private unnamed_addr constant [32 x i8] c"%s: descend into directory %s? \00", align 1
@program_name = external global ptr, align 8
@.str.21 = private unnamed_addr constant [51 x i8] c"%s: attempt removal of inaccessible directory %s? \00", align 1
@.str.22 = private unnamed_addr constant [35 x i8] c"%s: remove write-protected %s %s? \00", align 1
@.str.23 = private unnamed_addr constant [19 x i8] c"%s: remove %s %s? \00", align 1
@.str.24 = private unnamed_addr constant [22 x i8] c"removed directory %s\0A\00", align 1
@.str.25 = private unnamed_addr constant [12 x i8] c"removed %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rm(ptr noundef %file, ptr noundef %x) #0 {
entry:
  %file.addr = alloca ptr, align 8
  %x.addr = alloca ptr, align 8
  %rm_status = alloca i32, align 4
  %bit_flags = alloca i32, align 4
  %fts = alloca ptr, align 8
  %ent = alloca ptr, align 8
  %s = alloca i32, align 4
  store ptr %file, ptr %file.addr, align 8
  store ptr %x, ptr %x.addr, align 8
  store i32 2, ptr %rm_status, align 4
  %0 = load ptr, ptr %file.addr, align 8
  %1 = load ptr, ptr %0, align 8
  %tobool = icmp ne ptr %1, null
  br i1 %tobool, label %if.then, label %if.end33

if.then:                                          ; preds = %entry
  store i32 536, ptr %bit_flags, align 4
  %2 = load ptr, ptr %x.addr, align 8
  %one_file_system = getelementptr inbounds %struct.rm_options, ptr %2, i32 0, i32 2
  %3 = load i8, ptr %one_file_system, align 8
  %tobool1 = trunc i8 %3 to i1
  br i1 %tobool1, label %if.then2, label %if.end

if.then2:                                         ; preds = %if.then
  %4 = load i32, ptr %bit_flags, align 4
  %or = or i32 %4, 64
  store i32 %or, ptr %bit_flags, align 4
  br label %if.end

if.end:                                           ; preds = %if.then2, %if.then
  %5 = load ptr, ptr %file.addr, align 8
  %6 = load i32, ptr %bit_flags, align 4
  %call = call noalias nonnull ptr @xfts_open(ptr noundef %5, i32 noundef %6, ptr noundef null)
  store ptr %call, ptr %fts, align 8
  br label %while.body

while.body:                                       ; preds = %do.end, %if.end
  %7 = load ptr, ptr %fts, align 8
  %call3 = call ptr @rpl_fts_read(ptr noundef %7)
  store ptr %call3, ptr %ent, align 8
  %8 = load ptr, ptr %ent, align 8
  %cmp = icmp eq ptr %8, null
  br i1 %cmp, label %if.then4, label %if.end11

if.then4:                                         ; preds = %while.body
  %call5 = call ptr @__errno_location() #7
  %9 = load i32, ptr %call5, align 4
  %cmp6 = icmp ne i32 %9, 0
  br i1 %cmp6, label %if.then7, label %if.end10

if.then7:                                         ; preds = %if.then4
  %call8 = call ptr @__errno_location() #7
  %10 = load i32, ptr %call8, align 4
  %call9 = call ptr @gettext(ptr noundef @.str) #8
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %10, ptr noundef %call9) #9
  store i32 5, ptr %rm_status, align 4
  br label %if.end10

if.end10:                                         ; preds = %if.then7, %if.then4
  br label %while.end

if.end11:                                         ; preds = %while.body
  %11 = load ptr, ptr %fts, align 8
  %12 = load ptr, ptr %ent, align 8
  %13 = load ptr, ptr %x.addr, align 8
  %call12 = call i32 @rm_fts(ptr noundef %11, ptr noundef %12, ptr noundef %13)
  store i32 %call12, ptr %s, align 4
  %14 = load i32, ptr %s, align 4
  %cmp13 = icmp eq i32 %14, 2
  br i1 %cmp13, label %if.then19, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end11
  %15 = load i32, ptr %s, align 4
  %cmp14 = icmp eq i32 %15, 3
  br i1 %cmp14, label %if.then19, label %lor.lhs.false15

lor.lhs.false15:                                  ; preds = %lor.lhs.false
  %16 = load i32, ptr %s, align 4
  %cmp16 = icmp eq i32 %16, 4
  br i1 %cmp16, label %if.then19, label %lor.lhs.false17

lor.lhs.false17:                                  ; preds = %lor.lhs.false15
  %17 = load i32, ptr %s, align 4
  %cmp18 = icmp eq i32 %17, 5
  br i1 %cmp18, label %if.then19, label %if.else

if.then19:                                        ; preds = %lor.lhs.false17, %lor.lhs.false15, %lor.lhs.false, %if.end11
  br label %if.end20

if.else:                                          ; preds = %lor.lhs.false17
  call void @__assert_fail(ptr noundef @.str.1, ptr noundef @.str.2, i32 noundef 636, ptr noundef @__PRETTY_FUNCTION__.rm) #10
  unreachable

if.end20:                                         ; preds = %if.then19
  br label %do.body

do.body:                                          ; preds = %if.end20
  %18 = load i32, ptr %s, align 4
  %cmp21 = icmp eq i32 %18, 5
  br i1 %cmp21, label %if.then25, label %lor.lhs.false22

lor.lhs.false22:                                  ; preds = %do.body
  %19 = load i32, ptr %s, align 4
  %cmp23 = icmp eq i32 %19, 4
  br i1 %cmp23, label %land.lhs.true, label %if.end26

land.lhs.true:                                    ; preds = %lor.lhs.false22
  %20 = load i32, ptr %rm_status, align 4
  %cmp24 = icmp eq i32 %20, 2
  br i1 %cmp24, label %if.then25, label %if.end26

if.then25:                                        ; preds = %land.lhs.true, %do.body
  %21 = load i32, ptr %s, align 4
  store i32 %21, ptr %rm_status, align 4
  br label %if.end26

if.end26:                                         ; preds = %if.then25, %land.lhs.true, %lor.lhs.false22
  br label %do.end

do.end:                                           ; preds = %if.end26
  br label %while.body

while.end:                                        ; preds = %if.end10
  %22 = load ptr, ptr %fts, align 8
  %call27 = call i32 @rpl_fts_close(ptr noundef %22)
  %cmp28 = icmp ne i32 %call27, 0
  br i1 %cmp28, label %if.then29, label %if.end32

if.then29:                                        ; preds = %while.end
  %call30 = call ptr @__errno_location() #7
  %23 = load i32, ptr %call30, align 4
  %call31 = call ptr @gettext(ptr noundef @.str.3) #8
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %23, ptr noundef %call31) #9
  store i32 5, ptr %rm_status, align 4
  br label %if.end32

if.end32:                                         ; preds = %if.then29, %while.end
  br label %if.end33

if.end33:                                         ; preds = %if.end32, %entry
  %24 = load i32, ptr %rm_status, align 4
  ret i32 %24
}

declare noalias nonnull ptr @xfts_open(ptr noundef, i32 noundef, ptr noundef) #1

declare ptr @rpl_fts_read(ptr noundef) #1

; Function Attrs: nounwind willreturn memory(none)
declare ptr @__errno_location() #2

; Function Attrs: nounwind
declare ptr @gettext(ptr noundef) #3

; Function Attrs: cold
declare void @error(i32 noundef, i32 noundef, ptr noundef, ...) #4

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rm_fts(ptr noundef %fts, ptr noundef %ent, ptr noundef %x) #0 {
entry:
  %retval = alloca i32, align 4
  %fts.addr = alloca ptr, align 8
  %ent.addr = alloca ptr, align 8
  %x.addr = alloca ptr, align 8
  %dir_status = alloca i32, align 4
  %err = alloca i32, align 4
  %failed = alloca i8, align 1
  %parent = alloca ptr, align 8
  %statbuf = alloca %struct.stat, align 8
  %s = alloca i32, align 4
  %is_dir = alloca i8, align 1
  %s130 = alloca i32, align 4
  store ptr %fts, ptr %fts.addr, align 8
  store ptr %ent, ptr %ent.addr, align 8
  store ptr %x, ptr %x.addr, align 8
  store i32 -2, ptr %dir_status, align 4
  %0 = load ptr, ptr %ent.addr, align 8
  %fts_info = getelementptr inbounds %struct._ftsent, ptr %0, i32 0, i32 14
  %1 = load i16, ptr %fts_info, align 8
  %conv = zext i16 %1 to i32
  switch i32 %conv, label %sw.default [
    i32 1, label %sw.bb
    i32 8, label %sw.bb98
    i32 10, label %sw.bb98
    i32 12, label %sw.bb98
    i32 13, label %sw.bb98
    i32 6, label %sw.bb98
    i32 4, label %sw.bb98
    i32 11, label %sw.bb98
    i32 3, label %sw.bb98
    i32 2, label %sw.bb142
    i32 7, label %sw.bb148
  ]

sw.bb:                                            ; preds = %entry
  %2 = load ptr, ptr %x.addr, align 8
  %recursive = getelementptr inbounds %struct.rm_options, ptr %2, i32 0, i32 3
  %3 = load i8, ptr %recursive, align 1
  %tobool = trunc i8 %3 to i1
  br i1 %tobool, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %sw.bb
  %4 = load ptr, ptr %x.addr, align 8
  %remove_empty_directories = getelementptr inbounds %struct.rm_options, ptr %4, i32 0, i32 4
  %5 = load i8, ptr %remove_empty_directories, align 2
  %tobool1 = trunc i8 %5 to i1
  br i1 %tobool1, label %land.lhs.true3, label %if.then

land.lhs.true3:                                   ; preds = %land.lhs.true
  %6 = load ptr, ptr %fts.addr, align 8
  %7 = load ptr, ptr %ent.addr, align 8
  %call = call i32 @get_dir_status(ptr noundef %6, ptr noundef %7, ptr noundef %dir_status)
  %cmp = icmp ne i32 %call, 0
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true3, %land.lhs.true
  %8 = load ptr, ptr %x.addr, align 8
  %remove_empty_directories5 = getelementptr inbounds %struct.rm_options, ptr %8, i32 0, i32 4
  %9 = load i8, ptr %remove_empty_directories5, align 2
  %tobool6 = trunc i8 %9 to i1
  %10 = zext i1 %tobool6 to i64
  %cond = select i1 %tobool6, i32 39, i32 21
  store i32 %cond, ptr %err, align 4
  %11 = load i32, ptr %err, align 4
  %call8 = call ptr @gettext(ptr noundef @.str.4) #8
  %12 = load ptr, ptr %ent.addr, align 8
  %fts_path = getelementptr inbounds %struct._ftsent, ptr %12, i32 0, i32 7
  %13 = load ptr, ptr %fts_path, align 8
  %call9 = call ptr @quotearg_style(i32 noundef 4, ptr noundef %13)
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %11, ptr noundef %call8, ptr noundef %call9) #9
  %14 = load ptr, ptr %ent.addr, align 8
  call void @mark_ancestor_dirs(ptr noundef %14)
  %15 = load ptr, ptr %fts.addr, align 8
  %16 = load ptr, ptr %ent.addr, align 8
  call void @fts_skip_tree(ptr noundef %15, ptr noundef %16)
  store i32 5, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %land.lhs.true3, %sw.bb
  %17 = load ptr, ptr %ent.addr, align 8
  %fts_level = getelementptr inbounds %struct._ftsent, ptr %17, i32 0, i32 12
  %18 = load i64, ptr %fts_level, align 8
  %cmp10 = icmp eq i64 %18, 0
  br i1 %cmp10, label %if.then12, label %if.end77

if.then12:                                        ; preds = %if.end
  %19 = load ptr, ptr %ent.addr, align 8
  %fts_accpath = getelementptr inbounds %struct._ftsent, ptr %19, i32 0, i32 6
  %20 = load ptr, ptr %fts_accpath, align 8
  %call13 = call ptr @last_component(ptr noundef %20) #11
  %call14 = call zeroext i1 @dot_or_dotdot(ptr noundef %call13)
  br i1 %call14, label %if.then15, label %if.end21

if.then15:                                        ; preds = %if.then12
  %call16 = call ptr @gettext(ptr noundef @.str.5) #8
  %call17 = call ptr @quotearg_n_style(i32 noundef 0, i32 noundef 4, ptr noundef @.str.6)
  %call18 = call ptr @quotearg_n_style(i32 noundef 1, i32 noundef 4, ptr noundef @.str.7)
  %21 = load ptr, ptr %ent.addr, align 8
  %fts_path19 = getelementptr inbounds %struct._ftsent, ptr %21, i32 0, i32 7
  %22 = load ptr, ptr %fts_path19, align 8
  %call20 = call ptr @quotearg_n_style(i32 noundef 2, i32 noundef 4, ptr noundef %22)
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %call16, ptr noundef %call17, ptr noundef %call18, ptr noundef %call20) #9
  %23 = load ptr, ptr %fts.addr, align 8
  %24 = load ptr, ptr %ent.addr, align 8
  call void @fts_skip_tree(ptr noundef %23, ptr noundef %24)
  store i32 5, ptr %retval, align 4
  br label %return

if.end21:                                         ; preds = %if.then12
  %25 = load ptr, ptr %x.addr, align 8
  %root_dev_ino = getelementptr inbounds %struct.rm_options, ptr %25, i32 0, i32 5
  %26 = load ptr, ptr %root_dev_ino, align 8
  %tobool22 = icmp ne ptr %26, null
  br i1 %tobool22, label %land.lhs.true23, label %if.end47

land.lhs.true23:                                  ; preds = %if.end21
  %27 = load ptr, ptr %ent.addr, align 8
  %fts_statp = getelementptr inbounds %struct._ftsent, ptr %27, i32 0, i32 17
  %arraydecay = getelementptr inbounds [1 x %struct.stat], ptr %fts_statp, i64 0, i64 0
  %st_dev = getelementptr inbounds %struct.stat, ptr %arraydecay, i32 0, i32 0
  %28 = load i64, ptr %st_dev, align 8
  %29 = load ptr, ptr %x.addr, align 8
  %root_dev_ino24 = getelementptr inbounds %struct.rm_options, ptr %29, i32 0, i32 5
  %30 = load ptr, ptr %root_dev_ino24, align 8
  %st_dev25 = getelementptr inbounds %struct.timespec, ptr %30, i32 0, i32 1
  %31 = load i64, ptr %st_dev25, align 8
  %xor = xor i64 %28, %31
  %32 = load ptr, ptr %ent.addr, align 8
  %fts_statp26 = getelementptr inbounds %struct._ftsent, ptr %32, i32 0, i32 17
  %arraydecay27 = getelementptr inbounds [1 x %struct.stat], ptr %fts_statp26, i64 0, i64 0
  %st_ino = getelementptr inbounds %struct.stat, ptr %arraydecay27, i32 0, i32 1
  %33 = load i64, ptr %st_ino, align 8
  %34 = load ptr, ptr %x.addr, align 8
  %root_dev_ino28 = getelementptr inbounds %struct.rm_options, ptr %34, i32 0, i32 5
  %35 = load ptr, ptr %root_dev_ino28, align 8
  %st_ino29 = getelementptr inbounds %struct.timespec, ptr %35, i32 0, i32 0
  %36 = load i64, ptr %st_ino29, align 8
  %xor30 = xor i64 %33, %36
  %or = or i64 %xor, %xor30
  %tobool31 = icmp ne i64 %or, 0
  br i1 %tobool31, label %if.end47, label %if.then32

if.then32:                                        ; preds = %land.lhs.true23
  br label %do.body

do.body:                                          ; preds = %if.then32
  %37 = load ptr, ptr %ent.addr, align 8
  %fts_path33 = getelementptr inbounds %struct._ftsent, ptr %37, i32 0, i32 7
  %38 = load ptr, ptr %fts_path33, align 8
  %call34 = call i32 @strcmp(ptr noundef %38, ptr noundef @.str.8) #11
  %cmp35 = icmp eq i32 %call34, 0
  br i1 %cmp35, label %if.then37, label %if.else

if.then37:                                        ; preds = %do.body
  %call38 = call ptr @gettext(ptr noundef @.str.9) #8
  %39 = load ptr, ptr %ent.addr, align 8
  %fts_path39 = getelementptr inbounds %struct._ftsent, ptr %39, i32 0, i32 7
  %40 = load ptr, ptr %fts_path39, align 8
  %call40 = call ptr @quotearg_style(i32 noundef 4, ptr noundef %40)
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %call38, ptr noundef %call40) #9
  br label %if.end45

if.else:                                          ; preds = %do.body
  %call41 = call ptr @gettext(ptr noundef @.str.10) #8
  %41 = load ptr, ptr %ent.addr, align 8
  %fts_path42 = getelementptr inbounds %struct._ftsent, ptr %41, i32 0, i32 7
  %42 = load ptr, ptr %fts_path42, align 8
  %call43 = call ptr @quotearg_n_style(i32 noundef 0, i32 noundef 4, ptr noundef %42)
  %call44 = call ptr @quotearg_n_style(i32 noundef 1, i32 noundef 4, ptr noundef @.str.8)
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %call41, ptr noundef %call43, ptr noundef %call44) #9
  br label %if.end45

if.end45:                                         ; preds = %if.else, %if.then37
  %call46 = call ptr @gettext(ptr noundef @.str.11) #8
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %call46) #9
  br label %do.end

do.end:                                           ; preds = %if.end45
  %43 = load ptr, ptr %fts.addr, align 8
  %44 = load ptr, ptr %ent.addr, align 8
  call void @fts_skip_tree(ptr noundef %43, ptr noundef %44)
  store i32 5, ptr %retval, align 4
  br label %return

if.end47:                                         ; preds = %land.lhs.true23, %if.end21
  %45 = load ptr, ptr %x.addr, align 8
  %preserve_all_root = getelementptr inbounds %struct.rm_options, ptr %45, i32 0, i32 6
  %46 = load i8, ptr %preserve_all_root, align 8
  %tobool48 = trunc i8 %46 to i1
  br i1 %tobool48, label %if.then49, label %if.end76

if.then49:                                        ; preds = %if.end47
  store i8 0, ptr %failed, align 1
  %47 = load ptr, ptr %ent.addr, align 8
  %fts_accpath50 = getelementptr inbounds %struct._ftsent, ptr %47, i32 0, i32 6
  %48 = load ptr, ptr %fts_accpath50, align 8
  %call51 = call noalias nonnull ptr @file_name_concat(ptr noundef %48, ptr noundef @.str.7, ptr noundef null)
  store ptr %call51, ptr %parent, align 8
  %49 = load ptr, ptr %parent, align 8
  %tobool52 = icmp ne ptr %49, null
  br i1 %tobool52, label %lor.lhs.false, label %if.then55

lor.lhs.false:                                    ; preds = %if.then49
  %50 = load ptr, ptr %parent, align 8
  %call53 = call i32 @lstat(ptr noundef %50, ptr noundef %statbuf) #8
  %tobool54 = icmp ne i32 %call53, 0
  br i1 %tobool54, label %if.then55, label %if.end60

if.then55:                                        ; preds = %lor.lhs.false, %if.then49
  %call56 = call ptr @gettext(ptr noundef @.str.12) #8
  %51 = load ptr, ptr %parent, align 8
  %call57 = call ptr @quotearg_n_style(i32 noundef 0, i32 noundef 4, ptr noundef %51)
  %52 = load ptr, ptr %ent.addr, align 8
  %fts_accpath58 = getelementptr inbounds %struct._ftsent, ptr %52, i32 0, i32 6
  %53 = load ptr, ptr %fts_accpath58, align 8
  %call59 = call ptr @quotearg_n_style(i32 noundef 1, i32 noundef 4, ptr noundef %53)
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %call56, ptr noundef %call57, ptr noundef %call59) #9
  store i8 1, ptr %failed, align 1
  br label %if.end60

if.end60:                                         ; preds = %if.then55, %lor.lhs.false
  %54 = load ptr, ptr %parent, align 8
  call void @free(ptr noundef %54) #8
  %55 = load i8, ptr %failed, align 1
  %tobool61 = trunc i8 %55 to i1
  br i1 %tobool61, label %if.then67, label %lor.lhs.false63

lor.lhs.false63:                                  ; preds = %if.end60
  %56 = load ptr, ptr %fts.addr, align 8
  %fts_dev = getelementptr inbounds %struct.FTS, ptr %56, i32 0, i32 3
  %57 = load i64, ptr %fts_dev, align 8
  %st_dev64 = getelementptr inbounds %struct.stat, ptr %statbuf, i32 0, i32 0
  %58 = load i64, ptr %st_dev64, align 8
  %cmp65 = icmp ne i64 %57, %58
  br i1 %cmp65, label %if.then67, label %if.end75

if.then67:                                        ; preds = %lor.lhs.false63, %if.end60
  %59 = load i8, ptr %failed, align 1
  %tobool68 = trunc i8 %59 to i1
  br i1 %tobool68, label %if.end74, label %if.then69

if.then69:                                        ; preds = %if.then67
  %call70 = call ptr @gettext(ptr noundef @.str.13) #8
  %60 = load ptr, ptr %ent.addr, align 8
  %fts_path71 = getelementptr inbounds %struct._ftsent, ptr %60, i32 0, i32 7
  %61 = load ptr, ptr %fts_path71, align 8
  %call72 = call ptr @quotearg_style(i32 noundef 4, ptr noundef %61)
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %call70, ptr noundef %call72) #9
  %call73 = call ptr @gettext(ptr noundef @.str.14) #8
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %call73) #9
  br label %if.end74

if.end74:                                         ; preds = %if.then69, %if.then67
  %62 = load ptr, ptr %fts.addr, align 8
  %63 = load ptr, ptr %ent.addr, align 8
  call void @fts_skip_tree(ptr noundef %62, ptr noundef %63)
  store i32 5, ptr %retval, align 4
  br label %return

if.end75:                                         ; preds = %lor.lhs.false63
  br label %if.end76

if.end76:                                         ; preds = %if.end75, %if.end47
  br label %if.end77

if.end77:                                         ; preds = %if.end76, %if.end
  %64 = load ptr, ptr %fts.addr, align 8
  %65 = load ptr, ptr %ent.addr, align 8
  %66 = load ptr, ptr %x.addr, align 8
  %call78 = call i32 @prompt(ptr noundef %64, ptr noundef %65, i1 noundef zeroext true, ptr noundef %66, i32 noundef 2, ptr noundef %dir_status)
  store i32 %call78, ptr %s, align 4
  %67 = load i32, ptr %s, align 4
  %cmp79 = icmp eq i32 %67, 3
  br i1 %cmp79, label %land.lhs.true81, label %if.end90

land.lhs.true81:                                  ; preds = %if.end77
  %68 = load i32, ptr %dir_status, align 4
  %cmp82 = icmp eq i32 %68, -1
  br i1 %cmp82, label %if.then84, label %if.end90

if.then84:                                        ; preds = %land.lhs.true81
  %69 = load ptr, ptr %fts.addr, align 8
  %70 = load ptr, ptr %ent.addr, align 8
  %71 = load ptr, ptr %x.addr, align 8
  %call85 = call i32 @excise(ptr noundef %69, ptr noundef %70, ptr noundef %71, i1 noundef zeroext true)
  store i32 %call85, ptr %s, align 4
  %72 = load i32, ptr %s, align 4
  %cmp86 = icmp eq i32 %72, 2
  br i1 %cmp86, label %if.then88, label %if.end89

if.then88:                                        ; preds = %if.then84
  %73 = load ptr, ptr %fts.addr, align 8
  %74 = load ptr, ptr %ent.addr, align 8
  call void @fts_skip_tree(ptr noundef %73, ptr noundef %74)
  br label %if.end89

if.end89:                                         ; preds = %if.then88, %if.then84
  br label %if.end90

if.end90:                                         ; preds = %if.end89, %land.lhs.true81, %if.end77
  %75 = load i32, ptr %s, align 4
  %cmp91 = icmp eq i32 %75, 2
  br i1 %cmp91, label %if.end97, label %lor.lhs.false93

lor.lhs.false93:                                  ; preds = %if.end90
  %76 = load i32, ptr %s, align 4
  %cmp94 = icmp eq i32 %76, 3
  br i1 %cmp94, label %if.end97, label %if.then96

if.then96:                                        ; preds = %lor.lhs.false93
  %77 = load ptr, ptr %ent.addr, align 8
  call void @mark_ancestor_dirs(ptr noundef %77)
  %78 = load ptr, ptr %fts.addr, align 8
  %79 = load ptr, ptr %ent.addr, align 8
  call void @fts_skip_tree(ptr noundef %78, ptr noundef %79)
  br label %if.end97

if.end97:                                         ; preds = %if.then96, %lor.lhs.false93, %if.end90
  %80 = load i32, ptr %s, align 4
  store i32 %80, ptr %retval, align 4
  br label %return

sw.bb98:                                          ; preds = %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry
  %81 = load ptr, ptr %ent.addr, align 8
  %fts_info99 = getelementptr inbounds %struct._ftsent, ptr %81, i32 0, i32 14
  %82 = load i16, ptr %fts_info99, align 8
  %conv100 = zext i16 %82 to i32
  %cmp101 = icmp eq i32 %conv100, 6
  br i1 %cmp101, label %land.lhs.true103, label %if.end121

land.lhs.true103:                                 ; preds = %sw.bb98
  %83 = load ptr, ptr %x.addr, align 8
  %one_file_system = getelementptr inbounds %struct.rm_options, ptr %83, i32 0, i32 2
  %84 = load i8, ptr %one_file_system, align 8
  %tobool104 = trunc i8 %84 to i1
  br i1 %tobool104, label %land.lhs.true106, label %if.end121

land.lhs.true106:                                 ; preds = %land.lhs.true103
  %85 = load ptr, ptr %ent.addr, align 8
  %fts_level107 = getelementptr inbounds %struct._ftsent, ptr %85, i32 0, i32 12
  %86 = load i64, ptr %fts_level107, align 8
  %cmp108 = icmp slt i64 0, %86
  br i1 %cmp108, label %land.lhs.true110, label %if.end121

land.lhs.true110:                                 ; preds = %land.lhs.true106
  %87 = load ptr, ptr %ent.addr, align 8
  %fts_statp111 = getelementptr inbounds %struct._ftsent, ptr %87, i32 0, i32 17
  %arraydecay112 = getelementptr inbounds [1 x %struct.stat], ptr %fts_statp111, i64 0, i64 0
  %st_dev113 = getelementptr inbounds %struct.stat, ptr %arraydecay112, i32 0, i32 0
  %88 = load i64, ptr %st_dev113, align 8
  %89 = load ptr, ptr %fts.addr, align 8
  %fts_dev114 = getelementptr inbounds %struct.FTS, ptr %89, i32 0, i32 3
  %90 = load i64, ptr %fts_dev114, align 8
  %cmp115 = icmp ne i64 %88, %90
  br i1 %cmp115, label %if.then117, label %if.end121

if.then117:                                       ; preds = %land.lhs.true110
  %91 = load ptr, ptr %ent.addr, align 8
  call void @mark_ancestor_dirs(ptr noundef %91)
  %call118 = call ptr @gettext(ptr noundef @.str.13) #8
  %92 = load ptr, ptr %ent.addr, align 8
  %fts_path119 = getelementptr inbounds %struct._ftsent, ptr %92, i32 0, i32 7
  %93 = load ptr, ptr %fts_path119, align 8
  %call120 = call ptr @quotearg_style(i32 noundef 4, ptr noundef %93)
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %call118, ptr noundef %call120) #9
  store i32 5, ptr %retval, align 4
  br label %return

if.end121:                                        ; preds = %land.lhs.true110, %land.lhs.true106, %land.lhs.true103, %sw.bb98
  %94 = load ptr, ptr %ent.addr, align 8
  %fts_info122 = getelementptr inbounds %struct._ftsent, ptr %94, i32 0, i32 14
  %95 = load i16, ptr %fts_info122, align 8
  %conv123 = zext i16 %95 to i32
  %cmp124 = icmp eq i32 %conv123, 6
  br i1 %cmp124, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %if.end121
  %96 = load ptr, ptr %ent.addr, align 8
  %fts_info126 = getelementptr inbounds %struct._ftsent, ptr %96, i32 0, i32 14
  %97 = load i16, ptr %fts_info126, align 8
  %conv127 = zext i16 %97 to i32
  %cmp128 = icmp eq i32 %conv127, 4
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %if.end121
  %98 = phi i1 [ true, %if.end121 ], [ %cmp128, %lor.rhs ]
  %frombool = zext i1 %98 to i8
  store i8 %frombool, ptr %is_dir, align 1
  %99 = load ptr, ptr %fts.addr, align 8
  %100 = load ptr, ptr %ent.addr, align 8
  %101 = load i8, ptr %is_dir, align 1
  %tobool131 = trunc i8 %101 to i1
  %102 = load ptr, ptr %x.addr, align 8
  %call132 = call i32 @prompt(ptr noundef %99, ptr noundef %100, i1 noundef zeroext %tobool131, ptr noundef %102, i32 noundef 3, ptr noundef %dir_status)
  store i32 %call132, ptr %s130, align 4
  %103 = load i32, ptr %s130, align 4
  %cmp133 = icmp eq i32 %103, 2
  br i1 %cmp133, label %if.end139, label %lor.lhs.false135

lor.lhs.false135:                                 ; preds = %lor.end
  %104 = load i32, ptr %s130, align 4
  %cmp136 = icmp eq i32 %104, 3
  br i1 %cmp136, label %if.end139, label %if.then138

if.then138:                                       ; preds = %lor.lhs.false135
  %105 = load i32, ptr %s130, align 4
  store i32 %105, ptr %retval, align 4
  br label %return

if.end139:                                        ; preds = %lor.lhs.false135, %lor.end
  %106 = load ptr, ptr %fts.addr, align 8
  %107 = load ptr, ptr %ent.addr, align 8
  %108 = load ptr, ptr %x.addr, align 8
  %109 = load i8, ptr %is_dir, align 1
  %tobool140 = trunc i8 %109 to i1
  %call141 = call i32 @excise(ptr noundef %106, ptr noundef %107, ptr noundef %108, i1 noundef zeroext %tobool140)
  store i32 %call141, ptr %retval, align 4
  br label %return

sw.bb142:                                         ; preds = %entry
  br label %do.body143

do.body143:                                       ; preds = %sw.bb142
  %call144 = call ptr @gettext(ptr noundef @.str.15) #8
  %110 = load ptr, ptr %ent.addr, align 8
  %fts_path145 = getelementptr inbounds %struct._ftsent, ptr %110, i32 0, i32 7
  %111 = load ptr, ptr %fts_path145, align 8
  %call146 = call ptr @quotearg_n_style_colon(i32 noundef 0, i32 noundef 3, ptr noundef %111)
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %call144, ptr noundef %call146) #9
  br label %do.end147

do.end147:                                        ; preds = %do.body143
  %112 = load ptr, ptr %fts.addr, align 8
  %113 = load ptr, ptr %ent.addr, align 8
  call void @fts_skip_tree(ptr noundef %112, ptr noundef %113)
  store i32 5, ptr %retval, align 4
  br label %return

sw.bb148:                                         ; preds = %entry
  %114 = load ptr, ptr %ent.addr, align 8
  %fts_errno = getelementptr inbounds %struct._ftsent, ptr %114, i32 0, i32 8
  %115 = load i32, ptr %fts_errno, align 8
  %call149 = call ptr @gettext(ptr noundef @.str.16) #8
  %116 = load ptr, ptr %ent.addr, align 8
  %fts_path150 = getelementptr inbounds %struct._ftsent, ptr %116, i32 0, i32 7
  %117 = load ptr, ptr %fts_path150, align 8
  %call151 = call ptr @quotearg_n_style_colon(i32 noundef 0, i32 noundef 3, ptr noundef %117)
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %115, ptr noundef %call149, ptr noundef %call151) #9
  %118 = load ptr, ptr %fts.addr, align 8
  %119 = load ptr, ptr %ent.addr, align 8
  call void @fts_skip_tree(ptr noundef %118, ptr noundef %119)
  store i32 5, ptr %retval, align 4
  br label %return

sw.default:                                       ; preds = %entry
  %call152 = call ptr @gettext(ptr noundef @.str.17) #8
  %120 = load ptr, ptr %ent.addr, align 8
  %fts_info153 = getelementptr inbounds %struct._ftsent, ptr %120, i32 0, i32 14
  %121 = load i16, ptr %fts_info153, align 8
  %conv154 = zext i16 %121 to i32
  %122 = load ptr, ptr %ent.addr, align 8
  %fts_path155 = getelementptr inbounds %struct._ftsent, ptr %122, i32 0, i32 7
  %123 = load ptr, ptr %fts_path155, align 8
  %call156 = call ptr @quotearg_n_style_colon(i32 noundef 0, i32 noundef 3, ptr noundef %123)
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %call152, i32 noundef %conv154, ptr noundef %call156, ptr noundef @.str.18) #9
  call void @abort() #10
  unreachable

return:                                           ; preds = %sw.bb148, %do.end147, %if.end139, %if.then138, %if.then117, %if.end97, %if.end74, %do.end, %if.then15, %if.then
  %124 = load i32, ptr %retval, align 4
  ret i32 %124
}

; Function Attrs: noreturn nounwind
declare void @__assert_fail(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #5

declare i32 @rpl_fts_close(ptr noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_dir_status(ptr noundef %fts, ptr noundef %ent, ptr noundef %dir_status) #0 {
entry:
  %fts.addr = alloca ptr, align 8
  %ent.addr = alloca ptr, align 8
  %dir_status.addr = alloca ptr, align 8
  store ptr %fts, ptr %fts.addr, align 8
  store ptr %ent, ptr %ent.addr, align 8
  store ptr %dir_status, ptr %dir_status.addr, align 8
  %0 = load ptr, ptr %dir_status.addr, align 8
  %1 = load i32, ptr %0, align 4
  %cmp = icmp eq i32 %1, -2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %fts.addr, align 8
  %fts_cwd_fd = getelementptr inbounds %struct.FTS, ptr %2, i32 0, i32 6
  %3 = load i32, ptr %fts_cwd_fd, align 4
  %4 = load ptr, ptr %ent.addr, align 8
  %fts_accpath = getelementptr inbounds %struct._ftsent, ptr %4, i32 0, i32 6
  %5 = load ptr, ptr %fts_accpath, align 8
  %call = call i32 @directory_status(i32 noundef %3, ptr noundef %5)
  %6 = load ptr, ptr %dir_status.addr, align 8
  store i32 %call, ptr %6, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %7 = load ptr, ptr %dir_status.addr, align 8
  %8 = load i32, ptr %7, align 4
  ret i32 %8
}

declare ptr @quotearg_style(i32 noundef, ptr noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mark_ancestor_dirs(ptr noundef %ent) #0 {
entry:
  %ent.addr = alloca ptr, align 8
  %p = alloca ptr, align 8
  store ptr %ent, ptr %ent.addr, align 8
  %0 = load ptr, ptr %ent.addr, align 8
  %fts_parent = getelementptr inbounds %struct._ftsent, ptr %0, i32 0, i32 1
  %1 = load ptr, ptr %fts_parent, align 8
  store ptr %1, ptr %p, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load ptr, ptr %p, align 8
  %fts_level = getelementptr inbounds %struct._ftsent, ptr %2, i32 0, i32 12
  %3 = load i64, ptr %fts_level, align 8
  %cmp = icmp sle i64 0, %3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load ptr, ptr %p, align 8
  %fts_number = getelementptr inbounds %struct._ftsent, ptr %4, i32 0, i32 4
  %5 = load i64, ptr %fts_number, align 8
  %tobool = icmp ne i64 %5, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  br label %for.end

if.end:                                           ; preds = %for.body
  %6 = load ptr, ptr %p, align 8
  %fts_number1 = getelementptr inbounds %struct._ftsent, ptr %6, i32 0, i32 4
  store i64 1, ptr %fts_number1, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %7 = load ptr, ptr %p, align 8
  %fts_parent2 = getelementptr inbounds %struct._ftsent, ptr %7, i32 0, i32 1
  %8 = load ptr, ptr %fts_parent2, align 8
  store ptr %8, ptr %p, align 8
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %if.then, %for.cond
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fts_skip_tree(ptr noundef %fts, ptr noundef %ent) #0 {
entry:
  %fts.addr = alloca ptr, align 8
  %ent.addr = alloca ptr, align 8
  store ptr %fts, ptr %fts.addr, align 8
  store ptr %ent, ptr %ent.addr, align 8
  %0 = load ptr, ptr %fts.addr, align 8
  %1 = load ptr, ptr %ent.addr, align 8
  %call = call i32 @rpl_fts_set(ptr noundef %0, ptr noundef %1, i32 noundef 4)
  %2 = load ptr, ptr %fts.addr, align 8
  %call1 = call ptr @rpl_fts_read(ptr noundef %2)
  ret void
}

; Function Attrs: nounwind willreturn memory(read)
declare ptr @last_component(ptr noundef) #6

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

declare ptr @quotearg_n_style(i32 noundef, i32 noundef, ptr noundef) #1

; Function Attrs: nounwind willreturn memory(read)
declare i32 @strcmp(ptr noundef, ptr noundef) #6

declare noalias nonnull ptr @file_name_concat(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind
declare i32 @lstat(ptr noundef, ptr noundef) #3

; Function Attrs: nounwind
declare void @free(ptr noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @prompt(ptr noundef %fts, ptr noundef %ent, i1 noundef zeroext %is_dir, ptr noundef %x, i32 noundef %mode, ptr noundef %dir_status) #0 {
entry:
  %retval = alloca i32, align 4
  %fts.addr = alloca ptr, align 8
  %ent.addr = alloca ptr, align 8
  %is_dir.addr = alloca i8, align 1
  %x.addr = alloca ptr, align 8
  %mode.addr = alloca i32, align 4
  %dir_status.addr = alloca ptr, align 8
  %fd_cwd = alloca i32, align 4
  %full_name = alloca ptr, align 8
  %filename = alloca ptr, align 8
  %st = alloca %struct.stat, align 8
  %sbuf = alloca ptr, align 8
  %dirent_type = alloca i32, align 4
  %write_protected = alloca i32, align 4
  %wp_errno = alloca i32, align 4
  %quoted_name = alloca ptr, align 8
  store ptr %fts, ptr %fts.addr, align 8
  store ptr %ent, ptr %ent.addr, align 8
  %frombool = zext i1 %is_dir to i8
  store i8 %frombool, ptr %is_dir.addr, align 1
  store ptr %x, ptr %x.addr, align 8
  store i32 %mode, ptr %mode.addr, align 4
  store ptr %dir_status, ptr %dir_status.addr, align 8
  %0 = load ptr, ptr %fts.addr, align 8
  %fts_cwd_fd = getelementptr inbounds %struct.FTS, ptr %0, i32 0, i32 6
  %1 = load i32, ptr %fts_cwd_fd, align 4
  store i32 %1, ptr %fd_cwd, align 4
  %2 = load ptr, ptr %ent.addr, align 8
  %fts_path = getelementptr inbounds %struct._ftsent, ptr %2, i32 0, i32 7
  %3 = load ptr, ptr %fts_path, align 8
  store ptr %3, ptr %full_name, align 8
  %4 = load ptr, ptr %ent.addr, align 8
  %fts_accpath = getelementptr inbounds %struct._ftsent, ptr %4, i32 0, i32 6
  %5 = load ptr, ptr %fts_accpath, align 8
  store ptr %5, ptr %filename, align 8
  store ptr %st, ptr %sbuf, align 8
  %6 = load ptr, ptr %sbuf, align 8
  %call = call ptr @cache_stat_init(ptr noundef %6)
  %7 = load i8, ptr %is_dir.addr, align 1
  %tobool = trunc i8 %7 to i1
  %8 = zext i1 %tobool to i64
  %cond = select i1 %tobool, i32 4, i32 0
  store i32 %cond, ptr %dirent_type, align 4
  store i32 0, ptr %write_protected, align 4
  %9 = load ptr, ptr %ent.addr, align 8
  %fts_number = getelementptr inbounds %struct._ftsent, ptr %9, i32 0, i32 4
  %10 = load i64, ptr %fts_number, align 8
  %tobool1 = icmp ne i64 %10, 0
  br i1 %tobool1, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 4, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %11 = load ptr, ptr %x.addr, align 8
  %interactive = getelementptr inbounds %struct.rm_options, ptr %11, i32 0, i32 1
  %12 = load i32, ptr %interactive, align 4
  %cmp = icmp eq i32 %12, 5
  br i1 %cmp, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  store i32 2, ptr %retval, align 4
  br label %return

if.end3:                                          ; preds = %if.end
  store i32 0, ptr %wp_errno, align 4
  %13 = load ptr, ptr %x.addr, align 8
  %ignore_missing_files = getelementptr inbounds %struct.rm_options, ptr %13, i32 0, i32 0
  %14 = load i8, ptr %ignore_missing_files, align 8
  %tobool4 = trunc i8 %14 to i1
  br i1 %tobool4, label %if.end13, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end3
  %15 = load ptr, ptr %x.addr, align 8
  %interactive5 = getelementptr inbounds %struct.rm_options, ptr %15, i32 0, i32 1
  %16 = load i32, ptr %interactive5, align 4
  %cmp6 = icmp eq i32 %16, 3
  br i1 %cmp6, label %land.lhs.true8, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %17 = load ptr, ptr %x.addr, align 8
  %stdin_tty = getelementptr inbounds %struct.rm_options, ptr %17, i32 0, i32 7
  %18 = load i8, ptr %stdin_tty, align 1
  %tobool7 = trunc i8 %18 to i1
  br i1 %tobool7, label %land.lhs.true8, label %if.end13

land.lhs.true8:                                   ; preds = %lor.lhs.false, %land.lhs.true
  %19 = load i32, ptr %dirent_type, align 4
  %cmp9 = icmp ne i32 %19, 10
  br i1 %cmp9, label %if.then10, label %if.end13

if.then10:                                        ; preds = %land.lhs.true8
  %20 = load i32, ptr %fd_cwd, align 4
  %21 = load ptr, ptr %filename, align 8
  %22 = load ptr, ptr %sbuf, align 8
  %call11 = call i32 @write_protected_non_symlink(i32 noundef %20, ptr noundef %21, ptr noundef %22)
  store i32 %call11, ptr %write_protected, align 4
  %call12 = call ptr @__errno_location() #7
  %23 = load i32, ptr %call12, align 4
  store i32 %23, ptr %wp_errno, align 4
  br label %if.end13

if.end13:                                         ; preds = %if.then10, %land.lhs.true8, %lor.lhs.false, %if.end3
  %24 = load i32, ptr %write_protected, align 4
  %tobool14 = icmp ne i32 %24, 0
  br i1 %tobool14, label %if.then18, label %lor.lhs.false15

lor.lhs.false15:                                  ; preds = %if.end13
  %25 = load ptr, ptr %x.addr, align 8
  %interactive16 = getelementptr inbounds %struct.rm_options, ptr %25, i32 0, i32 1
  %26 = load i32, ptr %interactive16, align 4
  %cmp17 = icmp eq i32 %26, 3
  br i1 %cmp17, label %if.then18, label %if.end111

if.then18:                                        ; preds = %lor.lhs.false15, %if.end13
  %27 = load i32, ptr %write_protected, align 4
  %cmp19 = icmp sle i32 0, %27
  br i1 %cmp19, label %land.lhs.true20, label %if.end37

land.lhs.true20:                                  ; preds = %if.then18
  %28 = load i32, ptr %dirent_type, align 4
  %cmp21 = icmp eq i32 %28, 0
  br i1 %cmp21, label %if.then22, label %if.end37

if.then22:                                        ; preds = %land.lhs.true20
  %29 = load i32, ptr %fd_cwd, align 4
  %30 = load ptr, ptr %filename, align 8
  %31 = load ptr, ptr %sbuf, align 8
  %call23 = call i32 @cache_fstatat(i32 noundef %29, ptr noundef %30, ptr noundef %31, i32 noundef 256)
  %cmp24 = icmp eq i32 %call23, 0
  br i1 %cmp24, label %if.then25, label %if.else34

if.then25:                                        ; preds = %if.then22
  %32 = load ptr, ptr %sbuf, align 8
  %st_mode = getelementptr inbounds %struct.stat, ptr %32, i32 0, i32 3
  %33 = load i32, ptr %st_mode, align 8
  %and = and i32 %33, 61440
  %cmp26 = icmp eq i32 %and, 40960
  br i1 %cmp26, label %if.then27, label %if.else

if.then27:                                        ; preds = %if.then25
  store i32 10, ptr %dirent_type, align 4
  br label %if.end33

if.else:                                          ; preds = %if.then25
  %34 = load ptr, ptr %sbuf, align 8
  %st_mode28 = getelementptr inbounds %struct.stat, ptr %34, i32 0, i32 3
  %35 = load i32, ptr %st_mode28, align 8
  %and29 = and i32 %35, 61440
  %cmp30 = icmp eq i32 %and29, 16384
  br i1 %cmp30, label %if.then31, label %if.end32

if.then31:                                        ; preds = %if.else
  store i32 4, ptr %dirent_type, align 4
  br label %if.end32

if.end32:                                         ; preds = %if.then31, %if.else
  br label %if.end33

if.end33:                                         ; preds = %if.end32, %if.then27
  br label %if.end36

if.else34:                                        ; preds = %if.then22
  store i32 -1, ptr %write_protected, align 4
  %call35 = call ptr @__errno_location() #7
  %36 = load i32, ptr %call35, align 4
  store i32 %36, ptr %wp_errno, align 4
  br label %if.end36

if.end36:                                         ; preds = %if.else34, %if.end33
  br label %if.end37

if.end37:                                         ; preds = %if.end36, %land.lhs.true20, %if.then18
  %37 = load i32, ptr %write_protected, align 4
  %cmp38 = icmp sle i32 0, %37
  br i1 %cmp38, label %if.then39, label %if.end55

if.then39:                                        ; preds = %if.end37
  %38 = load i32, ptr %dirent_type, align 4
  switch i32 %38, label %sw.epilog [
    i32 10, label %sw.bb
    i32 4, label %sw.bb44
  ]

sw.bb:                                            ; preds = %if.then39
  %39 = load ptr, ptr %x.addr, align 8
  %interactive40 = getelementptr inbounds %struct.rm_options, ptr %39, i32 0, i32 1
  %40 = load i32, ptr %interactive40, align 4
  %cmp41 = icmp ne i32 %40, 3
  br i1 %cmp41, label %if.then42, label %if.end43

if.then42:                                        ; preds = %sw.bb
  store i32 2, ptr %retval, align 4
  br label %return

if.end43:                                         ; preds = %sw.bb
  br label %sw.epilog

sw.bb44:                                          ; preds = %if.then39
  %41 = load ptr, ptr %x.addr, align 8
  %recursive = getelementptr inbounds %struct.rm_options, ptr %41, i32 0, i32 3
  %42 = load i8, ptr %recursive, align 1
  %tobool45 = trunc i8 %42 to i1
  br i1 %tobool45, label %if.end54, label %lor.lhs.false46

lor.lhs.false46:                                  ; preds = %sw.bb44
  %43 = load ptr, ptr %x.addr, align 8
  %remove_empty_directories = getelementptr inbounds %struct.rm_options, ptr %43, i32 0, i32 4
  %44 = load i8, ptr %remove_empty_directories, align 2
  %tobool47 = trunc i8 %44 to i1
  br i1 %tobool47, label %land.lhs.true48, label %if.then51

land.lhs.true48:                                  ; preds = %lor.lhs.false46
  %45 = load ptr, ptr %fts.addr, align 8
  %46 = load ptr, ptr %ent.addr, align 8
  %47 = load ptr, ptr %dir_status.addr, align 8
  %call49 = call i32 @get_dir_status(ptr noundef %45, ptr noundef %46, ptr noundef %47)
  %cmp50 = icmp ne i32 %call49, 0
  br i1 %cmp50, label %if.end54, label %if.then51

if.then51:                                        ; preds = %land.lhs.true48, %lor.lhs.false46
  store i32 -1, ptr %write_protected, align 4
  %48 = load ptr, ptr %dir_status.addr, align 8
  %49 = load i32, ptr %48, align 4
  %cmp52 = icmp sle i32 %49, 0
  br i1 %cmp52, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then51
  br label %cond.end

cond.false:                                       ; preds = %if.then51
  %50 = load ptr, ptr %dir_status.addr, align 8
  %51 = load i32, ptr %50, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond53 = phi i32 [ 21, %cond.true ], [ %51, %cond.false ]
  store i32 %cond53, ptr %wp_errno, align 4
  br label %if.end54

if.end54:                                         ; preds = %cond.end, %land.lhs.true48, %sw.bb44
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end54, %if.end43, %if.then39
  br label %if.end55

if.end55:                                         ; preds = %sw.epilog, %if.end37
  %52 = load ptr, ptr %full_name, align 8
  %call56 = call ptr @quotearg_style(i32 noundef 4, ptr noundef %52)
  store ptr %call56, ptr %quoted_name, align 8
  %53 = load i32, ptr %write_protected, align 4
  %cmp57 = icmp slt i32 %53, 0
  br i1 %cmp57, label %if.then58, label %if.end60

if.then58:                                        ; preds = %if.end55
  %54 = load i32, ptr %wp_errno, align 4
  %call59 = call ptr @gettext(ptr noundef @.str.4) #8
  %55 = load ptr, ptr %quoted_name, align 8
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %54, ptr noundef %call59, ptr noundef %55) #9
  store i32 5, ptr %retval, align 4
  br label %return

if.end60:                                         ; preds = %if.end55
  %56 = load i32, ptr %dirent_type, align 4
  %cmp61 = icmp eq i32 %56, 4
  br i1 %cmp61, label %land.lhs.true62, label %if.else76

land.lhs.true62:                                  ; preds = %if.end60
  %57 = load i32, ptr %mode.addr, align 4
  %cmp63 = icmp eq i32 %57, 2
  br i1 %cmp63, label %land.lhs.true64, label %if.else76

land.lhs.true64:                                  ; preds = %land.lhs.true62
  %58 = load ptr, ptr %fts.addr, align 8
  %59 = load ptr, ptr %ent.addr, align 8
  %60 = load ptr, ptr %dir_status.addr, align 8
  %call65 = call i32 @get_dir_status(ptr noundef %58, ptr noundef %59, ptr noundef %60)
  %cmp66 = icmp eq i32 %call65, 0
  br i1 %cmp66, label %if.then67, label %if.else76

if.then67:                                        ; preds = %land.lhs.true64
  %61 = load ptr, ptr @stderr, align 8
  %62 = load i32, ptr %write_protected, align 4
  %tobool68 = icmp ne i32 %62, 0
  br i1 %tobool68, label %cond.true69, label %cond.false71

cond.true69:                                      ; preds = %if.then67
  %call70 = call ptr @gettext(ptr noundef @.str.19) #8
  br label %cond.end73

cond.false71:                                     ; preds = %if.then67
  %call72 = call ptr @gettext(ptr noundef @.str.20) #8
  br label %cond.end73

cond.end73:                                       ; preds = %cond.false71, %cond.true69
  %cond74 = phi ptr [ %call70, %cond.true69 ], [ %call72, %cond.false71 ]
  %63 = load ptr, ptr @program_name, align 8
  %64 = load ptr, ptr %quoted_name, align 8
  %call75 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %61, ptr noundef %cond74, ptr noundef %63, ptr noundef %64)
  br label %if.end108

if.else76:                                        ; preds = %land.lhs.true64, %land.lhs.true62, %if.end60
  %65 = load ptr, ptr %dir_status.addr, align 8
  %66 = load i32, ptr %65, align 4
  %cmp77 = icmp slt i32 0, %66
  br i1 %cmp77, label %if.then78, label %if.else91

if.then78:                                        ; preds = %if.else76
  %67 = load ptr, ptr %x.addr, align 8
  %remove_empty_directories79 = getelementptr inbounds %struct.rm_options, ptr %67, i32 0, i32 4
  %68 = load i8, ptr %remove_empty_directories79, align 2
  %tobool80 = trunc i8 %68 to i1
  br i1 %tobool80, label %land.lhs.true81, label %if.then83

land.lhs.true81:                                  ; preds = %if.then78
  %69 = load ptr, ptr %dir_status.addr, align 8
  %70 = load i32, ptr %69, align 4
  %cmp82 = icmp eq i32 %70, 13
  br i1 %cmp82, label %if.end85, label %if.then83

if.then83:                                        ; preds = %land.lhs.true81, %if.then78
  %71 = load ptr, ptr %dir_status.addr, align 8
  %72 = load i32, ptr %71, align 4
  %call84 = call ptr @gettext(ptr noundef @.str.4) #8
  %73 = load ptr, ptr %quoted_name, align 8
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %72, ptr noundef %call84, ptr noundef %73) #9
  store i32 5, ptr %retval, align 4
  br label %return

if.end85:                                         ; preds = %land.lhs.true81
  %74 = load i32, ptr %mode.addr, align 4
  %cmp86 = icmp eq i32 %74, 2
  br i1 %cmp86, label %if.then87, label %if.end88

if.then87:                                        ; preds = %if.end85
  store i32 2, ptr %retval, align 4
  br label %return

if.end88:                                         ; preds = %if.end85
  %75 = load ptr, ptr @stderr, align 8
  %call89 = call ptr @gettext(ptr noundef @.str.21) #8
  %76 = load ptr, ptr @program_name, align 8
  %77 = load ptr, ptr %quoted_name, align 8
  %call90 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %75, ptr noundef %call89, ptr noundef %76, ptr noundef %77)
  br label %if.end107

if.else91:                                        ; preds = %if.else76
  %78 = load i32, ptr %fd_cwd, align 4
  %79 = load ptr, ptr %filename, align 8
  %80 = load ptr, ptr %sbuf, align 8
  %call92 = call i32 @cache_fstatat(i32 noundef %78, ptr noundef %79, ptr noundef %80, i32 noundef 256)
  %cmp93 = icmp ne i32 %call92, 0
  br i1 %cmp93, label %if.then94, label %if.end97

if.then94:                                        ; preds = %if.else91
  %call95 = call ptr @__errno_location() #7
  %81 = load i32, ptr %call95, align 4
  %call96 = call ptr @gettext(ptr noundef @.str.4) #8
  %82 = load ptr, ptr %quoted_name, align 8
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %81, ptr noundef %call96, ptr noundef %82) #9
  store i32 5, ptr %retval, align 4
  br label %return

if.end97:                                         ; preds = %if.else91
  %83 = load ptr, ptr @stderr, align 8
  %84 = load i32, ptr %write_protected, align 4
  %tobool98 = icmp ne i32 %84, 0
  br i1 %tobool98, label %cond.true99, label %cond.false101

cond.true99:                                      ; preds = %if.end97
  %call100 = call ptr @gettext(ptr noundef @.str.22) #8
  br label %cond.end103

cond.false101:                                    ; preds = %if.end97
  %call102 = call ptr @gettext(ptr noundef @.str.23) #8
  br label %cond.end103

cond.end103:                                      ; preds = %cond.false101, %cond.true99
  %cond104 = phi ptr [ %call100, %cond.true99 ], [ %call102, %cond.false101 ]
  %85 = load ptr, ptr @program_name, align 8
  %86 = load ptr, ptr %sbuf, align 8
  %call105 = call ptr @file_type(ptr noundef %86) #11
  %87 = load ptr, ptr %quoted_name, align 8
  %call106 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %83, ptr noundef %cond104, ptr noundef %85, ptr noundef %call105, ptr noundef %87)
  br label %if.end107

if.end107:                                        ; preds = %cond.end103, %if.end88
  br label %if.end108

if.end108:                                        ; preds = %if.end107, %cond.end73
  %call109 = call zeroext i1 @yesno()
  %88 = zext i1 %call109 to i64
  %cond110 = select i1 %call109, i32 3, i32 4
  store i32 %cond110, ptr %retval, align 4
  br label %return

if.end111:                                        ; preds = %lor.lhs.false15
  store i32 2, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end111, %if.end108, %if.then94, %if.then87, %if.then83, %if.then58, %if.then42, %if.then2, %if.then
  %89 = load i32, ptr %retval, align 4
  ret i32 %89
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @excise(ptr noundef %fts, ptr noundef %ent, ptr noundef %x, i1 noundef zeroext %is_dir) #0 {
entry:
  %retval = alloca i32, align 4
  %fts.addr = alloca ptr, align 8
  %ent.addr = alloca ptr, align 8
  %x.addr = alloca ptr, align 8
  %is_dir.addr = alloca i8, align 1
  %flag = alloca i32, align 4
  %st = alloca %struct.stat, align 8
  store ptr %fts, ptr %fts.addr, align 8
  store ptr %ent, ptr %ent.addr, align 8
  store ptr %x, ptr %x.addr, align 8
  %frombool = zext i1 %is_dir to i8
  store i8 %frombool, ptr %is_dir.addr, align 1
  %0 = load i8, ptr %is_dir.addr, align 1
  %tobool = trunc i8 %0 to i1
  %1 = zext i1 %tobool to i64
  %cond = select i1 %tobool, i32 512, i32 0
  store i32 %cond, ptr %flag, align 4
  %2 = load ptr, ptr %fts.addr, align 8
  %fts_cwd_fd = getelementptr inbounds %struct.FTS, ptr %2, i32 0, i32 6
  %3 = load i32, ptr %fts_cwd_fd, align 4
  %4 = load ptr, ptr %ent.addr, align 8
  %fts_accpath = getelementptr inbounds %struct._ftsent, ptr %4, i32 0, i32 6
  %5 = load ptr, ptr %fts_accpath, align 8
  %6 = load i32, ptr %flag, align 4
  %call = call i32 @unlinkat(i32 noundef %3, ptr noundef %5, i32 noundef %6) #8
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end9

if.then:                                          ; preds = %entry
  %7 = load ptr, ptr %x.addr, align 8
  %verbose = getelementptr inbounds %struct.rm_options, ptr %7, i32 0, i32 8
  %8 = load i8, ptr %verbose, align 2
  %tobool1 = trunc i8 %8 to i1
  br i1 %tobool1, label %if.then2, label %if.end

if.then2:                                         ; preds = %if.then
  %9 = load i8, ptr %is_dir.addr, align 1
  %tobool3 = trunc i8 %9 to i1
  br i1 %tobool3, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then2
  %call4 = call ptr @gettext(ptr noundef @.str.24) #8
  br label %cond.end

cond.false:                                       ; preds = %if.then2
  %call5 = call ptr @gettext(ptr noundef @.str.25) #8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond6 = phi ptr [ %call4, %cond.true ], [ %call5, %cond.false ]
  %10 = load ptr, ptr %ent.addr, align 8
  %fts_path = getelementptr inbounds %struct._ftsent, ptr %10, i32 0, i32 7
  %11 = load ptr, ptr %fts_path, align 8
  %call7 = call ptr @quotearg_style(i32 noundef 4, ptr noundef %11)
  %call8 = call i32 (ptr, ...) @printf(ptr noundef %cond6, ptr noundef %call7)
  br label %if.end

if.end:                                           ; preds = %cond.end, %if.then
  store i32 2, ptr %retval, align 4
  br label %return

if.end9:                                          ; preds = %entry
  %call10 = call ptr @__errno_location() #7
  %12 = load i32, ptr %call10, align 4
  %cmp11 = icmp eq i32 %12, 30
  br i1 %cmp11, label %if.then12, label %if.end22

if.then12:                                        ; preds = %if.end9
  %13 = load ptr, ptr %fts.addr, align 8
  %fts_cwd_fd13 = getelementptr inbounds %struct.FTS, ptr %13, i32 0, i32 6
  %14 = load i32, ptr %fts_cwd_fd13, align 4
  %15 = load ptr, ptr %ent.addr, align 8
  %fts_accpath14 = getelementptr inbounds %struct._ftsent, ptr %15, i32 0, i32 6
  %16 = load ptr, ptr %fts_accpath14, align 8
  %call15 = call i32 @fstatat(i32 noundef %14, ptr noundef %16, ptr noundef %st, i32 noundef 256) #8
  %tobool16 = icmp ne i32 %call15, 0
  br i1 %tobool16, label %land.lhs.true, label %if.then19

land.lhs.true:                                    ; preds = %if.then12
  %call17 = call ptr @__errno_location() #7
  %17 = load i32, ptr %call17, align 4
  %cmp18 = icmp eq i32 %17, 2
  br i1 %cmp18, label %if.end21, label %if.then19

if.then19:                                        ; preds = %land.lhs.true, %if.then12
  %call20 = call ptr @__errno_location() #7
  store i32 30, ptr %call20, align 4
  br label %if.end21

if.end21:                                         ; preds = %if.then19, %land.lhs.true
  br label %if.end22

if.end22:                                         ; preds = %if.end21, %if.end9
  %18 = load ptr, ptr %x.addr, align 8
  %call23 = call ptr @__errno_location() #7
  %19 = load i32, ptr %call23, align 4
  %call24 = call zeroext i1 @ignorable_missing(ptr noundef %18, i32 noundef %19)
  br i1 %call24, label %if.then25, label %if.end26

if.then25:                                        ; preds = %if.end22
  store i32 2, ptr %retval, align 4
  br label %return

if.end26:                                         ; preds = %if.end22
  %20 = load ptr, ptr %ent.addr, align 8
  %fts_info = getelementptr inbounds %struct._ftsent, ptr %20, i32 0, i32 14
  %21 = load i16, ptr %fts_info, align 8
  %conv = zext i16 %21 to i32
  %cmp27 = icmp eq i32 %conv, 4
  br i1 %cmp27, label %land.lhs.true29, label %if.end50

land.lhs.true29:                                  ; preds = %if.end26
  %call30 = call ptr @__errno_location() #7
  %22 = load i32, ptr %call30, align 4
  %cmp31 = icmp eq i32 %22, 39
  br i1 %cmp31, label %land.lhs.true44, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true29
  %call33 = call ptr @__errno_location() #7
  %23 = load i32, ptr %call33, align 4
  %cmp34 = icmp eq i32 %23, 21
  br i1 %cmp34, label %land.lhs.true44, label %lor.lhs.false36

lor.lhs.false36:                                  ; preds = %lor.lhs.false
  %call37 = call ptr @__errno_location() #7
  %24 = load i32, ptr %call37, align 4
  %cmp38 = icmp eq i32 %24, 20
  br i1 %cmp38, label %land.lhs.true44, label %lor.lhs.false40

lor.lhs.false40:                                  ; preds = %lor.lhs.false36
  %call41 = call ptr @__errno_location() #7
  %25 = load i32, ptr %call41, align 4
  %cmp42 = icmp eq i32 %25, 17
  br i1 %cmp42, label %land.lhs.true44, label %if.end50

land.lhs.true44:                                  ; preds = %lor.lhs.false40, %lor.lhs.false36, %lor.lhs.false, %land.lhs.true29
  %26 = load ptr, ptr %ent.addr, align 8
  %fts_errno = getelementptr inbounds %struct._ftsent, ptr %26, i32 0, i32 8
  %27 = load i32, ptr %fts_errno, align 8
  %cmp45 = icmp ne i32 %27, 0
  br i1 %cmp45, label %if.then47, label %if.end50

if.then47:                                        ; preds = %land.lhs.true44
  %28 = load ptr, ptr %ent.addr, align 8
  %fts_errno48 = getelementptr inbounds %struct._ftsent, ptr %28, i32 0, i32 8
  %29 = load i32, ptr %fts_errno48, align 8
  %call49 = call ptr @__errno_location() #7
  store i32 %29, ptr %call49, align 4
  br label %if.end50

if.end50:                                         ; preds = %if.then47, %land.lhs.true44, %lor.lhs.false40, %if.end26
  %call51 = call ptr @__errno_location() #7
  %30 = load i32, ptr %call51, align 4
  %call52 = call ptr @gettext(ptr noundef @.str.4) #8
  %31 = load ptr, ptr %ent.addr, align 8
  %fts_path53 = getelementptr inbounds %struct._ftsent, ptr %31, i32 0, i32 7
  %32 = load ptr, ptr %fts_path53, align 8
  %call54 = call ptr @quotearg_style(i32 noundef 4, ptr noundef %32)
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %30, ptr noundef %call52, ptr noundef %call54) #9
  %33 = load ptr, ptr %ent.addr, align 8
  call void @mark_ancestor_dirs(ptr noundef %33)
  store i32 5, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end50, %if.then25, %if.end
  %34 = load i32, ptr %retval, align 4
  ret i32 %34
}

declare ptr @quotearg_n_style_colon(i32 noundef, i32 noundef, ptr noundef) #1

; Function Attrs: noreturn nounwind
declare void @abort() #5

; Function Attrs: nounwind
declare i32 @unlinkat(i32 noundef, ptr noundef, i32 noundef) #3

declare i32 @printf(ptr noundef, ...) #1

; Function Attrs: nounwind
declare i32 @fstatat(i32 noundef, ptr noundef, ptr noundef, i32 noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i1 @ignorable_missing(ptr noundef %x, i32 noundef %errnum) #0 {
entry:
  %x.addr = alloca ptr, align 8
  %errnum.addr = alloca i32, align 4
  store ptr %x, ptr %x.addr, align 8
  store i32 %errnum, ptr %errnum.addr, align 4
  %0 = load ptr, ptr %x.addr, align 8
  %ignore_missing_files = getelementptr inbounds %struct.rm_options, ptr %0, i32 0, i32 0
  %1 = load i8, ptr %ignore_missing_files, align 8
  %tobool = trunc i8 %1 to i1
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %2 = load i32, ptr %errnum.addr, align 4
  %call = call zeroext i1 @nonexistent_file_errno(i32 noundef %2)
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %3 = phi i1 [ false, %entry ], [ %call, %land.rhs ]
  ret i1 %3
}

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i1 @nonexistent_file_errno(i32 noundef %errnum) #0 {
entry:
  %retval = alloca i1, align 1
  %errnum.addr = alloca i32, align 4
  store i32 %errnum, ptr %errnum.addr, align 4
  %0 = load i32, ptr %errnum.addr, align 4
  switch i32 %0, label %sw.default [
    i32 84, label %sw.bb
    i32 22, label %sw.bb
    i32 2, label %sw.bb
    i32 20, label %sw.bb
  ]

sw.bb:                                            ; preds = %entry, %entry, %entry, %entry
  store i1 true, ptr %retval, align 1
  br label %return

sw.default:                                       ; preds = %entry
  store i1 false, ptr %retval, align 1
  br label %return

return:                                           ; preds = %sw.default, %sw.bb
  %1 = load i1, ptr %retval, align 1
  ret i1 %1
}

; Function Attrs: noinline nounwind optnone uwtable
define internal ptr @cache_stat_init(ptr noundef %st) #0 {
entry:
  %st.addr = alloca ptr, align 8
  store ptr %st, ptr %st.addr, align 8
  %0 = load ptr, ptr %st.addr, align 8
  %st_atim = getelementptr inbounds %struct.stat, ptr %0, i32 0, i32 11
  %tv_nsec = getelementptr inbounds %struct.timespec, ptr %st_atim, i32 0, i32 1
  store i64 -1, ptr %tv_nsec, align 8
  %1 = load ptr, ptr %st.addr, align 8
  ret ptr %1
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @write_protected_non_symlink(i32 noundef %fd_cwd, ptr noundef %file, ptr noundef %buf) #0 {
entry:
  %retval = alloca i32, align 4
  %fd_cwd.addr = alloca i32, align 4
  %file.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  store i32 %fd_cwd, ptr %fd_cwd.addr, align 4
  store ptr %file, ptr %file.addr, align 8
  store ptr %buf, ptr %buf.addr, align 8
  %call = call zeroext i1 @can_write_any_file()
  br i1 %call, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %0 = load i32, ptr %fd_cwd.addr, align 4
  %1 = load ptr, ptr %file.addr, align 8
  %2 = load ptr, ptr %buf.addr, align 8
  %call1 = call i32 @cache_fstatat(i32 noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef 256)
  %cmp = icmp ne i32 %call1, 0
  br i1 %cmp, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  store i32 -1, ptr %retval, align 4
  br label %return

if.end3:                                          ; preds = %if.end
  %3 = load ptr, ptr %buf.addr, align 8
  %st_mode = getelementptr inbounds %struct.stat, ptr %3, i32 0, i32 3
  %4 = load i32, ptr %st_mode, align 8
  %and = and i32 %4, 61440
  %cmp4 = icmp eq i32 %and, 40960
  br i1 %cmp4, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end3
  store i32 0, ptr %retval, align 4
  br label %return

if.end6:                                          ; preds = %if.end3
  %5 = load i32, ptr %fd_cwd.addr, align 4
  %6 = load ptr, ptr %file.addr, align 8
  %call7 = call i32 @faccessat(i32 noundef %5, ptr noundef %6, i32 noundef 2, i32 noundef 512) #8
  %cmp8 = icmp eq i32 %call7, 0
  br i1 %cmp8, label %if.then9, label %if.end10

if.then9:                                         ; preds = %if.end6
  store i32 0, ptr %retval, align 4
  br label %return

if.end10:                                         ; preds = %if.end6
  %call11 = call ptr @__errno_location() #7
  %7 = load i32, ptr %call11, align 4
  %cmp12 = icmp eq i32 %7, 13
  %8 = zext i1 %cmp12 to i64
  %cond = select i1 %cmp12, i32 1, i32 -1
  store i32 %cond, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end10, %if.then9, %if.then5, %if.then2, %if.then
  %9 = load i32, ptr %retval, align 4
  ret i32 %9
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cache_fstatat(i32 noundef %fd, ptr noundef %file, ptr noundef %st, i32 noundef %flag) #0 {
entry:
  %retval = alloca i32, align 4
  %fd.addr = alloca i32, align 4
  %file.addr = alloca ptr, align 8
  %st.addr = alloca ptr, align 8
  %flag.addr = alloca i32, align 4
  store i32 %fd, ptr %fd.addr, align 4
  store ptr %file, ptr %file.addr, align 8
  store ptr %st, ptr %st.addr, align 8
  store i32 %flag, ptr %flag.addr, align 4
  %0 = load ptr, ptr %st.addr, align 8
  %st_atim = getelementptr inbounds %struct.stat, ptr %0, i32 0, i32 11
  %tv_nsec = getelementptr inbounds %struct.timespec, ptr %st_atim, i32 0, i32 1
  %1 = load i64, ptr %tv_nsec, align 8
  %cmp = icmp sle i64 0, %1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %st.addr, align 8
  %st_atim1 = getelementptr inbounds %struct.stat, ptr %2, i32 0, i32 11
  %tv_nsec2 = getelementptr inbounds %struct.timespec, ptr %st_atim1, i32 0, i32 1
  %3 = load i64, ptr %tv_nsec2, align 8
  %cmp3 = icmp eq i64 %3, -1
  br i1 %cmp3, label %if.then4, label %if.end11

if.then4:                                         ; preds = %if.end
  %4 = load i32, ptr %fd.addr, align 4
  %5 = load ptr, ptr %file.addr, align 8
  %6 = load ptr, ptr %st.addr, align 8
  %7 = load i32, ptr %flag.addr, align 4
  %call = call i32 @fstatat(i32 noundef %4, ptr noundef %5, ptr noundef %6, i32 noundef %7) #8
  %cmp5 = icmp eq i32 %call, 0
  br i1 %cmp5, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.then4
  store i32 0, ptr %retval, align 4
  br label %return

if.end7:                                          ; preds = %if.then4
  %8 = load ptr, ptr %st.addr, align 8
  %st_atim8 = getelementptr inbounds %struct.stat, ptr %8, i32 0, i32 11
  %tv_nsec9 = getelementptr inbounds %struct.timespec, ptr %st_atim8, i32 0, i32 1
  store i64 -2, ptr %tv_nsec9, align 8
  %call10 = call ptr @__errno_location() #7
  %9 = load i32, ptr %call10, align 4
  %conv = sext i32 %9 to i64
  %10 = load ptr, ptr %st.addr, align 8
  %st_ino = getelementptr inbounds %struct.stat, ptr %10, i32 0, i32 1
  store i64 %conv, ptr %st_ino, align 8
  br label %if.end11

if.end11:                                         ; preds = %if.end7, %if.end
  %11 = load ptr, ptr %st.addr, align 8
  %st_ino12 = getelementptr inbounds %struct.stat, ptr %11, i32 0, i32 1
  %12 = load i64, ptr %st_ino12, align 8
  %conv13 = trunc i64 %12 to i32
  %call14 = call ptr @__errno_location() #7
  store i32 %conv13, ptr %call14, align 4
  store i32 -1, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end11, %if.then6, %if.then
  %13 = load i32, ptr %retval, align 4
  ret i32 %13
}

declare i32 @fprintf(ptr noundef, ptr noundef, ...) #1

; Function Attrs: nounwind willreturn memory(read)
declare ptr @file_type(ptr noundef) #6

declare zeroext i1 @yesno() #1

declare zeroext i1 @can_write_any_file() #1

; Function Attrs: nounwind
declare i32 @faccessat(i32 noundef, ptr noundef, i32 noundef, i32 noundef) #3

declare i32 @rpl_fts_set(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @directory_status(i32 noundef %fd_cwd, ptr noundef %dir) #0 {
entry:
  %retval = alloca i32, align 4
  %fd_cwd.addr = alloca i32, align 4
  %dir.addr = alloca ptr, align 8
  %dirp = alloca ptr, align 8
  %no_direntries = alloca i8, align 1
  %saved_errno = alloca i32, align 4
  %fd = alloca i32, align 4
  store i32 %fd_cwd, ptr %fd_cwd.addr, align 4
  store ptr %dir, ptr %dir.addr, align 8
  %0 = load i32, ptr %fd_cwd.addr, align 4
  %1 = load ptr, ptr %dir.addr, align 8
  %call = call i32 (i32, ptr, i32, ...) @openat(i32 noundef %0, ptr noundef %1, i32 noundef 198912)
  store i32 %call, ptr %fd, align 4
  %2 = load i32, ptr %fd, align 4
  %cmp = icmp slt i32 %2, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call1 = call ptr @__errno_location() #7
  %3 = load i32, ptr %call1, align 4
  store i32 %3, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %4 = load i32, ptr %fd, align 4
  %call2 = call noalias ptr @fdopendir(i32 noundef %4)
  store ptr %call2, ptr %dirp, align 8
  %5 = load ptr, ptr %dirp, align 8
  %cmp3 = icmp eq ptr %5, null
  br i1 %cmp3, label %if.then4, label %if.end7

if.then4:                                         ; preds = %if.end
  %call5 = call ptr @__errno_location() #7
  %6 = load i32, ptr %call5, align 4
  store i32 %6, ptr %saved_errno, align 4
  %7 = load i32, ptr %fd, align 4
  %call6 = call i32 @close(i32 noundef %7)
  %8 = load i32, ptr %saved_errno, align 4
  store i32 %8, ptr %retval, align 4
  br label %return

if.end7:                                          ; preds = %if.end
  %call8 = call ptr @__errno_location() #7
  store i32 0, ptr %call8, align 4
  %9 = load ptr, ptr %dirp, align 8
  %call9 = call ptr @readdir_ignoring_dot_and_dotdot(ptr noundef %9)
  %tobool = icmp ne ptr %call9, null
  %lnot = xor i1 %tobool, true
  %frombool = zext i1 %lnot to i8
  store i8 %frombool, ptr %no_direntries, align 1
  %call10 = call ptr @__errno_location() #7
  %10 = load i32, ptr %call10, align 4
  store i32 %10, ptr %saved_errno, align 4
  %11 = load ptr, ptr %dirp, align 8
  %call11 = call i32 @closedir(ptr noundef %11)
  %12 = load i8, ptr %no_direntries, align 1
  %tobool12 = trunc i8 %12 to i1
  br i1 %tobool12, label %land.lhs.true, label %cond.false

land.lhs.true:                                    ; preds = %if.end7
  %13 = load i32, ptr %saved_errno, align 4
  %cmp13 = icmp eq i32 %13, 0
  br i1 %cmp13, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true, %if.end7
  %14 = load i32, ptr %saved_errno, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ -1, %cond.true ], [ %14, %cond.false ]
  store i32 %cond, ptr %retval, align 4
  br label %return

return:                                           ; preds = %cond.end, %if.then4, %if.then
  %15 = load i32, ptr %retval, align 4
  ret i32 %15
}

declare i32 @openat(i32 noundef, ptr noundef, i32 noundef, ...) #1

declare noalias ptr @fdopendir(i32 noundef) #1

declare i32 @close(i32 noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal ptr @readdir_ignoring_dot_and_dotdot(ptr noundef %dirp) #0 {
entry:
  %dirp.addr = alloca ptr, align 8
  %dp = alloca ptr, align 8
  store ptr %dirp, ptr %dirp.addr, align 8
  br label %while.body

while.body:                                       ; preds = %if.end, %entry
  %0 = load ptr, ptr %dirp.addr, align 8
  %call = call ptr @readdir(ptr noundef %0)
  store ptr %call, ptr %dp, align 8
  %1 = load ptr, ptr %dp, align 8
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %while.body
  %2 = load ptr, ptr %dp, align 8
  %d_name = getelementptr inbounds %struct.dirent, ptr %2, i32 0, i32 4
  %arraydecay = getelementptr inbounds [256 x i8], ptr %d_name, i64 0, i64 0
  %call1 = call zeroext i1 @dot_or_dotdot(ptr noundef %arraydecay)
  br i1 %call1, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false, %while.body
  %3 = load ptr, ptr %dp, align 8
  ret ptr %3

if.end:                                           ; preds = %lor.lhs.false
  br label %while.body
}

declare i32 @closedir(ptr noundef) #1

declare ptr @readdir(ptr noundef) #1

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind willreturn memory(none) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind willreturn memory(read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind willreturn memory(none) }
attributes #8 = { nounwind }
attributes #9 = { cold }
attributes #10 = { noreturn nounwind }
attributes #11 = { nounwind willreturn memory(read) }

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
