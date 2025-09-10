; ModuleID = 'llvm-link'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.option = type { ptr, i32, ptr, i32 }
%struct.anon = type { i64, i32, ptr }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }

@stderr = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [39 x i8] c"Try '%s --help' for more information.\0A\00", align 1
@program_name = external local_unnamed_addr global ptr, align 8
@.str.1 = private unnamed_addr constant [29 x i8] c"Usage: %s OPTION... COMMAND\0A\00", align 1
@.str.2 = private unnamed_addr constant [75 x i8] c"Run COMMAND, with modified buffering operations for its standard streams.\0A\00", align 1
@stdout = external local_unnamed_addr global ptr, align 8
@.str.3 = private unnamed_addr constant [182 x i8] c"  -i, --input=MODE   adjust standard input stream buffering\0A  -o, --output=MODE  adjust standard output stream buffering\0A  -e, --error=MODE   adjust standard error stream buffering\0A\00", align 1
@.str.4 = private unnamed_addr constant [48 x i8] c"      --help        display this help and exit\0A\00", align 1
@.str.5 = private unnamed_addr constant [57 x i8] c"      --version     output version information and exit\0A\00", align 1
@.str.6 = private unnamed_addr constant [109 x i8] c"\0AIf MODE is 'L' the corresponding stream will be line buffered.\0AThis option is invalid with standard input.\0A\00", align 1
@.str.7 = private unnamed_addr constant [62 x i8] c"\0AIf MODE is '0' the corresponding stream will be unbuffered.\0A\00", align 1
@.str.8 = private unnamed_addr constant [311 x i8] c"\0AOtherwise MODE is a number which may be followed by one of the following:\0AKB 1000, K 1024, MB 1000*1000, M 1024*1024, and so on for G,T,P,E,Z,Y,R,Q.\0ABinary prefixes can be used, too: KiB=K, MiB=M, and so on.\0AIn this case the corresponding stream will be fully buffered with the buffer\0Asize set to MODE bytes.\0A\00", align 1
@.str.9 = private unnamed_addr constant [267 x i8] c"\0ANOTE: If COMMAND adjusts the buffering of its standard streams ('tee' does\0Afor example) then that will override corresponding changes by 'stdbuf'.\0AAlso some filters (like 'dd' and 'cat' etc.) don't use streams for I/O,\0Aand are thus unaffected by 'stdbuf' settings.\0A\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"stdbuf\00", align 1
@.str.11 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.12 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1
@.str.13 = private unnamed_addr constant [24 x i8] c"/usr/local/share/locale\00", align 1
@.str.14 = private unnamed_addr constant [8 x i8] c"+i:o:e:\00", align 1
@longopts = internal constant [6 x %struct.option] [%struct.option { ptr @.str.45, i32 1, ptr null, i32 105 }, %struct.option { ptr @.str.46, i32 1, ptr null, i32 111 }, %struct.option { ptr @.str.47, i32 1, ptr null, i32 101 }, %struct.option { ptr @.str.48, i32 0, ptr null, i32 -130 }, %struct.option { ptr @.str.49, i32 0, ptr null, i32 -131 }, %struct.option zeroinitializer], align 16
@stdbuf = internal unnamed_addr global [3 x %struct.anon] zeroinitializer, align 16
@optarg = external local_unnamed_addr global ptr, align 8
@.str.17 = private unnamed_addr constant [36 x i8] c"line buffering stdin is meaningless\00", align 1
@.str.18 = private unnamed_addr constant [2 x i8] c"L\00", align 1
@.str.19 = private unnamed_addr constant [16 x i8] c"invalid mode %s\00", align 1
@.str.20 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@Version = external local_unnamed_addr global ptr, align 8
@.str.21 = private unnamed_addr constant [14 x i8] c"Padraig Brady\00", align 1
@.str.22 = private unnamed_addr constant [15 x i8] c"P\C3\A1draig Brady\00", align 1
@optind = external local_unnamed_addr global i32, align 4
@.str.23 = private unnamed_addr constant [16 x i8] c"missing operand\00", align 1
@.str.24 = private unnamed_addr constant [41 x i8] c"you must specify a buffering mode option\00", align 1
@program_path = internal unnamed_addr global ptr null, align 8
@.str.25 = private unnamed_addr constant [25 x i8] c"/usr/local/lib/coreutils\00", align 1
@.str.26 = private unnamed_addr constant [25 x i8] c"failed to run command %s\00", align 1
@.str.27 = private unnamed_addr constant [75 x i8] c"\0AMandatory arguments to long options are mandatory for short options too.\0A\00", align 1
@.str.28 = private unnamed_addr constant [180 x i8] c"\0AExit status:\0A  125  if the %s command itself fails\0A  126  if COMMAND is found but cannot be invoked\0A  127  if COMMAND cannot be found\0A  -    the exit status of COMMAND otherwise\0A\00", align 1
@.str.37 = private unnamed_addr constant [23 x i8] c"\0A%s online help: <%s>\0A\00", align 1
@.str.38 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1
@.str.39 = private unnamed_addr constant [4 x i8] c"en_\00", align 1
@.str.40 = private unnamed_addr constant [71 x i8] c"Report any translation bugs to <https://translationproject.org/team/>\0A\00", align 1
@.str.42 = private unnamed_addr constant [27 x i8] c"Full documentation <%s%s>\0A\00", align 1
@.str.43 = private unnamed_addr constant [51 x i8] c"or available locally via: info '(coreutils) %s%s'\0A\00", align 1
@.str.44 = private unnamed_addr constant [12 x i8] c" invocation\00", align 1
@exit_failure = external global i32, align 4
@.str.45 = private unnamed_addr constant [6 x i8] c"input\00", align 1
@.str.46 = private unnamed_addr constant [7 x i8] c"output\00", align 1
@.str.47 = private unnamed_addr constant [6 x i8] c"error\00", align 1
@.str.48 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.49 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@.str.50 = private unnamed_addr constant [13 x i8] c"EGkKMPQRTYZ0\00", align 1
@.str.51 = private unnamed_addr constant [7 x i8] c"%s%c=L\00", align 1
@.str.52 = private unnamed_addr constant [9 x i8] c"_STDBUF_\00", align 1
@.str.53 = private unnamed_addr constant [9 x i8] c"%s%c=%zu\00", align 1
@.str.54 = private unnamed_addr constant [41 x i8] c"failed to update the environment with %s\00", align 1
@.str.55 = private unnamed_addr constant [15 x i8] c"/proc/self/exe\00", align 1
@.str.56 = private unnamed_addr constant [5 x i8] c"PATH\00", align 1
@.str.57 = private unnamed_addr constant [2 x i8] c":\00", align 1
@.str.58 = private unnamed_addr constant [11 x i8] c"LD_PRELOAD\00", align 1
@.str.59 = private unnamed_addr constant [29 x i8] c"/usr/local/libexec/coreutils\00", align 1
@.str.60 = private unnamed_addr constant [13 x i8] c"libstdbuf.so\00", align 1
@.str.61 = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1
@.str.62 = private unnamed_addr constant [18 x i8] c"failed to find %s\00", align 1
@.str.63 = private unnamed_addr constant [9 x i8] c"%s=%s:%s\00", align 1
@.str.64 = private unnamed_addr constant [6 x i8] c"%s=%s\00", align 1

; Function Attrs: noreturn nounwind uwtable
define dso_local void @usage(i32 noundef %status) local_unnamed_addr #0 {
entry:
  %cmp.not = icmp eq i32 %status, 0
  br i1 %cmp.not, label %if.else, label %do.body

do.body:                                          ; preds = %entry
  %0 = load ptr, ptr @stderr, align 8, !tbaa !5
  %call = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str, i32 noundef 5) #14
  %1 = load ptr, ptr @program_name, align 8, !tbaa !5
  %call1 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %call, ptr noundef %1) #14
  br label %if.end

if.else:                                          ; preds = %entry
  %call2 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.1, i32 noundef 5) #14
  %2 = load ptr, ptr @program_name, align 8, !tbaa !5
  %call3 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %call2, ptr noundef %2) #14
  %call4 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.2, i32 noundef 5) #14
  %3 = load ptr, ptr @stdout, align 8, !tbaa !5
  %call5 = tail call i32 @fputs_unlocked(ptr noundef %call4, ptr noundef %3)
  %call.i = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.27, i32 noundef 5) #14
  %4 = load ptr, ptr @stdout, align 8, !tbaa !5
  %call1.i = tail call i32 @fputs_unlocked(ptr noundef %call.i, ptr noundef %4)
  %call6 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.3, i32 noundef 5) #14
  %5 = load ptr, ptr @stdout, align 8, !tbaa !5
  %call7 = tail call i32 @fputs_unlocked(ptr noundef %call6, ptr noundef %5)
  %call8 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.4, i32 noundef 5) #14
  %6 = load ptr, ptr @stdout, align 8, !tbaa !5
  %call9 = tail call i32 @fputs_unlocked(ptr noundef %call8, ptr noundef %6)
  %call10 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.5, i32 noundef 5) #14
  %7 = load ptr, ptr @stdout, align 8, !tbaa !5
  %call11 = tail call i32 @fputs_unlocked(ptr noundef %call10, ptr noundef %7)
  %call12 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.6, i32 noundef 5) #14
  %8 = load ptr, ptr @stdout, align 8, !tbaa !5
  %call13 = tail call i32 @fputs_unlocked(ptr noundef %call12, ptr noundef %8)
  %call14 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.7, i32 noundef 5) #14
  %9 = load ptr, ptr @stdout, align 8, !tbaa !5
  %call15 = tail call i32 @fputs_unlocked(ptr noundef %call14, ptr noundef %9)
  %call16 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.8, i32 noundef 5) #14
  %10 = load ptr, ptr @stdout, align 8, !tbaa !5
  %call17 = tail call i32 @fputs_unlocked(ptr noundef %call16, ptr noundef %10)
  %call18 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.9, i32 noundef 5) #14
  %11 = load ptr, ptr @stdout, align 8, !tbaa !5
  %call19 = tail call i32 @fputs_unlocked(ptr noundef %call18, ptr noundef %11)
  %call.i21 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.28, i32 noundef 5) #14
  %call1.i22 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %call.i21, ptr noundef nonnull @.str.10) #14
  %call6.i = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.37, i32 noundef 5) #14
  %call7.i = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %call6.i, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.38) #14
  %call8.i = tail call ptr @setlocale(i32 noundef 5, ptr noundef null) #14
  %tobool9.not.i = icmp eq ptr %call8.i, null
  br i1 %tobool9.not.i, label %emit_ancillary_info.exit, label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %if.else
  %call10.i = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %call8.i, ptr noundef nonnull dereferenceable(4) @.str.39, i64 noundef 3) #15
  %tobool11.not.i = icmp eq i32 %call10.i, 0
  br i1 %tobool11.not.i, label %emit_ancillary_info.exit, label %if.then12.i

if.then12.i:                                      ; preds = %land.lhs.true.i
  %call13.i = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.40, i32 noundef 5) #14
  %12 = load ptr, ptr @stdout, align 8, !tbaa !5
  %call14.i = tail call i32 @fputs_unlocked(ptr noundef %call13.i, ptr noundef %12)
  br label %emit_ancillary_info.exit

emit_ancillary_info.exit:                         ; preds = %if.then12.i, %land.lhs.true.i, %if.else
  %call18.i = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.42, i32 noundef 5) #14
  %call19.i = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %call18.i, ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.10) #14
  %call20.i = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.43, i32 noundef 5) #14
  %call23.i = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %call20.i, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.44) #14
  br label %if.end

if.end:                                           ; preds = %emit_ancillary_info.exit, %do.body
  tail call void @exit(i32 noundef %status) #16
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
define dso_local i32 @main(i32 noundef %argc, ptr noundef %argv) local_unnamed_addr #6 {
entry:
  %LD_PRELOAD.i = alloca ptr, align 8
  %search_path.i = alloca [3 x ptr], align 16
  %libstdbuf.i = alloca ptr, align 8
  %sb.i = alloca %struct.stat, align 8
  %var.i = alloca ptr, align 8
  %tmp_size.i = alloca i64, align 8
  %0 = load ptr, ptr %argv, align 8, !tbaa !5
  tail call void @set_program_name(ptr noundef %0) #14
  %call = tail call ptr @setlocale(i32 noundef 6, ptr noundef nonnull @.str.11) #14
  %call1 = tail call ptr @bindtextdomain(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.13) #14
  %call2 = tail call ptr @textdomain(ptr noundef nonnull @.str.12) #14
  store volatile i32 125, ptr @exit_failure, align 4, !tbaa !9
  %call3 = tail call i32 @atexit(ptr noundef nonnull @close_stdout) #14
  br label %while.cond

while.cond:                                       ; preds = %while.cond.backedge, %entry
  %call4 = call i32 @getopt_long(i32 noundef %argc, ptr noundef nonnull %argv, ptr noundef nonnull @.str.14, ptr noundef nonnull @longopts, ptr noundef null) #14
  switch i32 %call4, label %sw.default [
    i32 -1, label %while.end42
    i32 -131, label %sw.bb40
    i32 -130, label %sw.bb39
    i32 101, label %if.end
    i32 105, label %sw.bb1.i
    i32 111, label %sw.bb2.i
  ]

sw.bb1.i:                                         ; preds = %while.cond
  br label %if.end

sw.bb2.i:                                         ; preds = %while.cond
  br label %if.end

if.end:                                           ; preds = %sw.bb2.i, %sw.bb1.i, %while.cond
  %ret.0.i.ph = phi i64 [ 0, %sw.bb1.i ], [ 1, %sw.bb2.i ], [ 2, %while.cond ]
  %optc = getelementptr inbounds [3 x %struct.anon], ptr @stdbuf, i64 0, i64 %ret.0.i.ph, i32 1
  store i32 %call4, ptr %optc, align 8, !tbaa !11
  %optarg.promoted = load ptr, ptr @optarg, align 8, !tbaa !5
  br label %while.cond10

while.cond10:                                     ; preds = %while.body13, %if.end
  %incdec.ptr119 = phi ptr [ %incdec.ptr, %while.body13 ], [ %optarg.promoted, %if.end ]
  %1 = load i8, ptr %incdec.ptr119, align 1, !tbaa !14
  switch i8 %1, label %while.end [
    i8 32, label %while.body13
    i8 9, label %while.body13
    i8 10, label %while.body13
    i8 11, label %while.body13
    i8 12, label %while.body13
    i8 13, label %while.body13
  ]

while.body13:                                     ; preds = %while.cond10, %while.cond10, %while.cond10, %while.cond10, %while.cond10, %while.cond10
  %incdec.ptr = getelementptr inbounds i8, ptr %incdec.ptr119, i64 1
  store ptr %incdec.ptr, ptr @optarg, align 8, !tbaa !5
  br label %while.cond10, !llvm.loop !15

while.end:                                        ; preds = %while.cond10
  %arrayidx9 = getelementptr inbounds [3 x %struct.anon], ptr @stdbuf, i64 0, i64 %ret.0.i.ph
  %optarg = getelementptr inbounds [3 x %struct.anon], ptr @stdbuf, i64 0, i64 %ret.0.i.ph, i32 2
  store ptr %incdec.ptr119, ptr %optarg, align 8, !tbaa !17
  %cmp16 = icmp eq i32 %call4, 105
  br i1 %cmp16, label %land.lhs.true18, label %if.end24

land.lhs.true18:                                  ; preds = %while.end
  %2 = load i8, ptr %incdec.ptr119, align 1, !tbaa !14
  %cmp20 = icmp eq i8 %2, 76
  br i1 %cmp20, label %if.then22, label %if.end24

if.then22:                                        ; preds = %land.lhs.true18
  %call23 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.17, i32 noundef 5) #14
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %call23) #17
  call void @usage(i32 noundef 125) #18
  unreachable

if.end24:                                         ; preds = %land.lhs.true18, %while.end
  %call25 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %incdec.ptr119, ptr noundef nonnull dereferenceable(2) @.str.18) #15
  %cmp26 = icmp eq i32 %call25, 0
  br i1 %cmp26, label %while.cond.backedge, label %land.lhs.true28

land.lhs.true28:                                  ; preds = %if.end24
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp_size.i) #14
  %call.i = call i32 @xstrtoumax(ptr noundef nonnull %incdec.ptr119, ptr noundef null, i32 noundef 10, ptr noundef nonnull %tmp_size.i, ptr noundef nonnull @.str.50) #14
  %call7.i = tail call ptr @__errno_location() #19
  switch i32 %call.i, label %cond.false.i [
    i32 0, label %parse_size.exit
    i32 1, label %if.then34
  ]

cond.false.i:                                     ; preds = %land.lhs.true28
  %3 = load i32, ptr %call7.i, align 4, !tbaa !9
  br label %if.then34

parse_size.exit:                                  ; preds = %land.lhs.true28
  store i32 0, ptr %call7.i, align 4, !tbaa !9
  %4 = load i64, ptr %tmp_size.i, align 8, !tbaa !18
  store i64 %4, ptr %arrayidx9, align 8, !tbaa !18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp_size.i) #14
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %parse_size.exit, %if.end24
  br label %while.cond, !llvm.loop !19

if.then34:                                        ; preds = %cond.false.i, %land.lhs.true28
  %cond.i = phi i32 [ %3, %cond.false.i ], [ 75, %land.lhs.true28 ]
  store i32 %cond.i, ptr %call7.i, align 4, !tbaa !9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp_size.i) #14
  %5 = load i32, ptr %call7.i, align 4, !tbaa !9
  %call36 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.19, i32 noundef 5) #14
  %6 = load ptr, ptr @optarg, align 8, !tbaa !5
  %call37 = call ptr @quote(ptr noundef %6) #14
  call void (i32, i32, ptr, ...) @error(i32 noundef 125, i32 noundef %5, ptr noundef %call36, ptr noundef %call37) #17
  unreachable

sw.bb39:                                          ; preds = %while.cond
  call void @usage(i32 noundef 0) #18
  unreachable

sw.bb40:                                          ; preds = %while.cond
  %7 = load ptr, ptr @stdout, align 8, !tbaa !5
  %8 = load ptr, ptr @Version, align 8, !tbaa !5
  %call41 = call ptr @proper_name_lite(ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.22) #14
  call void (ptr, ptr, ptr, ptr, ...) @version_etc(ptr noundef %7, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.20, ptr noundef %8, ptr noundef %call41, ptr noundef null) #14
  call void @exit(i32 noundef 0) #16
  unreachable

sw.default:                                       ; preds = %while.cond
  call void @usage(i32 noundef 125) #18
  unreachable

while.end42:                                      ; preds = %while.cond
  %9 = load i32, ptr @optind, align 4, !tbaa !9
  %cmp43.not = icmp slt i32 %9, %argc
  br i1 %cmp43.not, label %if.end47, label %if.then45

if.then45:                                        ; preds = %while.end42
  %call46 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.23, i32 noundef 5) #14
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %call46) #17
  call void @usage(i32 noundef 125) #18
  unreachable

if.end47:                                         ; preds = %while.end42
  %10 = load ptr, ptr getelementptr inbounds ([3 x %struct.anon], ptr @stdbuf, i64 0, i64 0, i32 2), align 16, !tbaa !17
  %tobool.not.i = icmp eq ptr %10, null
  br i1 %tobool.not.i, label %for.inc.i, label %if.then.i

if.then.i:                                        ; preds = %if.end47
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %var.i) #14
  %11 = load i8, ptr %10, align 1, !tbaa !14
  %cmp3.i = icmp eq i8 %11, 76
  %12 = load i32, ptr getelementptr inbounds ([3 x %struct.anon], ptr @stdbuf, i64 0, i64 0, i32 1), align 8, !tbaa !11
  %c.off.i.i = add i32 %12, -97
  %switch.i.i = icmp ult i32 %c.off.i.i, 26
  %add.i.i = add nsw i32 %12, -32
  %retval.0.i.i = select i1 %switch.i.i, i32 %add.i.i, i32 %12
  br i1 %cmp3.i, label %if.then5.i, label %if.else.i

if.then5.i:                                       ; preds = %if.then.i
  %call7.i79 = call i32 (ptr, i32, ptr, ...) @__asprintf_chk(ptr noundef nonnull %var.i, i32 noundef 1, ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.52, i32 noundef %retval.0.i.i) #14
  br label %if.end.i

if.else.i:                                        ; preds = %if.then.i
  %13 = load i64, ptr @stdbuf, align 16, !tbaa !20
  %call12.i = call i32 (ptr, i32, ptr, ...) @__asprintf_chk(ptr noundef nonnull %var.i, i32 noundef 1, ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.52, i32 noundef %retval.0.i.i, i64 noundef %13) #14
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %if.then5.i
  %ret.0.i78 = phi i32 [ %call7.i79, %if.then5.i ], [ %call12.i, %if.else.i ]
  %cmp13.i = icmp slt i32 %ret.0.i78, 0
  br i1 %cmp13.i, label %if.then15.i, label %if.end16.i

if.then15.i:                                      ; preds = %if.end.2.i, %if.end.1.i, %if.end.i
  call void @xalloc_die() #16
  unreachable

if.end16.i:                                       ; preds = %if.end.i
  %14 = load ptr, ptr %var.i, align 8, !tbaa !5
  %call17.i = call i32 @putenv(ptr noundef %14) #14
  %cmp18.not.i = icmp eq i32 %call17.i, 0
  br i1 %cmp18.not.i, label %if.end24.i, label %if.then20.i

if.then20.i:                                      ; preds = %if.end16.2.i, %if.end16.1.i, %if.end16.i
  %call21.i = tail call ptr @__errno_location() #19
  %15 = load i32, ptr %call21.i, align 4, !tbaa !9
  %call22.i = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.54, i32 noundef 5) #14
  %16 = load ptr, ptr %var.i, align 8, !tbaa !5
  %call23.i = call ptr @quote(ptr noundef %16) #14
  call void (i32, i32, ptr, ...) @error(i32 noundef 125, i32 noundef %15, ptr noundef %call22.i, ptr noundef %call23.i) #17
  unreachable

if.end24.i:                                       ; preds = %if.end16.i
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %var.i) #14
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end24.i, %if.end47
  %17 = load ptr, ptr getelementptr inbounds ([3 x %struct.anon], ptr @stdbuf, i64 0, i64 1, i32 2), align 8, !tbaa !17
  %tobool.not.1.i = icmp eq ptr %17, null
  br i1 %tobool.not.1.i, label %for.inc.1.i, label %if.then.1.i

if.then.1.i:                                      ; preds = %for.inc.i
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %var.i) #14
  %18 = load i8, ptr %17, align 1, !tbaa !14
  %cmp3.1.i = icmp eq i8 %18, 76
  %19 = load i32, ptr getelementptr inbounds ([3 x %struct.anon], ptr @stdbuf, i64 0, i64 1, i32 1), align 16, !tbaa !11
  %c.off.i.1.i = add i32 %19, -97
  %switch.i.1.i = icmp ult i32 %c.off.i.1.i, 26
  %add.i.1.i = add nsw i32 %19, -32
  %retval.0.i.1.i = select i1 %switch.i.1.i, i32 %add.i.1.i, i32 %19
  br i1 %cmp3.1.i, label %if.then5.1.i, label %if.else.1.i

if.else.1.i:                                      ; preds = %if.then.1.i
  %20 = load i64, ptr getelementptr inbounds ([3 x %struct.anon], ptr @stdbuf, i64 0, i64 1), align 8, !tbaa !20
  %call12.1.i = call i32 (ptr, i32, ptr, ...) @__asprintf_chk(ptr noundef nonnull %var.i, i32 noundef 1, ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.52, i32 noundef %retval.0.i.1.i, i64 noundef %20) #14
  br label %if.end.1.i

if.then5.1.i:                                     ; preds = %if.then.1.i
  %call7.1.i = call i32 (ptr, i32, ptr, ...) @__asprintf_chk(ptr noundef nonnull %var.i, i32 noundef 1, ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.52, i32 noundef %retval.0.i.1.i) #14
  br label %if.end.1.i

if.end.1.i:                                       ; preds = %if.then5.1.i, %if.else.1.i
  %ret.0.1.i = phi i32 [ %call7.1.i, %if.then5.1.i ], [ %call12.1.i, %if.else.1.i ]
  %cmp13.1.i = icmp slt i32 %ret.0.1.i, 0
  br i1 %cmp13.1.i, label %if.then15.i, label %if.end16.1.i

if.end16.1.i:                                     ; preds = %if.end.1.i
  %21 = load ptr, ptr %var.i, align 8, !tbaa !5
  %call17.1.i = call i32 @putenv(ptr noundef %21) #14
  %cmp18.not.1.i = icmp eq i32 %call17.1.i, 0
  br i1 %cmp18.not.1.i, label %for.inc.1.i.thread, label %if.then20.i

for.inc.1.i:                                      ; preds = %for.inc.i
  %22 = load ptr, ptr getelementptr inbounds ([3 x %struct.anon], ptr @stdbuf, i64 0, i64 2, i32 2), align 16, !tbaa !17
  %tobool.not.2.i = icmp eq ptr %22, null
  br i1 %tobool.not.2.i, label %set_libstdbuf_options.exit, label %if.then.2.i

for.inc.1.i.thread:                               ; preds = %if.end16.1.i
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %var.i) #14
  %23 = load ptr, ptr getelementptr inbounds ([3 x %struct.anon], ptr @stdbuf, i64 0, i64 2, i32 2), align 16, !tbaa !17
  %tobool.not.2.i124 = icmp eq ptr %23, null
  br i1 %tobool.not.2.i124, label %if.end51, label %if.then.2.i

if.then.2.i:                                      ; preds = %for.inc.1.i.thread, %for.inc.1.i
  %24 = phi ptr [ %23, %for.inc.1.i.thread ], [ %22, %for.inc.1.i ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %var.i) #14
  %25 = load i8, ptr %24, align 1, !tbaa !14
  %cmp3.2.i = icmp eq i8 %25, 76
  %26 = load i32, ptr getelementptr inbounds ([3 x %struct.anon], ptr @stdbuf, i64 0, i64 2, i32 1), align 8, !tbaa !11
  %c.off.i.2.i = add i32 %26, -97
  %switch.i.2.i = icmp ult i32 %c.off.i.2.i, 26
  %add.i.2.i = add nsw i32 %26, -32
  %retval.0.i.2.i = select i1 %switch.i.2.i, i32 %add.i.2.i, i32 %26
  br i1 %cmp3.2.i, label %if.then5.2.i, label %if.else.2.i

if.else.2.i:                                      ; preds = %if.then.2.i
  %27 = load i64, ptr getelementptr inbounds ([3 x %struct.anon], ptr @stdbuf, i64 0, i64 2), align 16, !tbaa !20
  %call12.2.i = call i32 (ptr, i32, ptr, ...) @__asprintf_chk(ptr noundef nonnull %var.i, i32 noundef 1, ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.52, i32 noundef %retval.0.i.2.i, i64 noundef %27) #14
  br label %if.end.2.i

if.then5.2.i:                                     ; preds = %if.then.2.i
  %call7.2.i = call i32 (ptr, i32, ptr, ...) @__asprintf_chk(ptr noundef nonnull %var.i, i32 noundef 1, ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.52, i32 noundef %retval.0.i.2.i) #14
  br label %if.end.2.i

if.end.2.i:                                       ; preds = %if.then5.2.i, %if.else.2.i
  %ret.0.2.i = phi i32 [ %call7.2.i, %if.then5.2.i ], [ %call12.2.i, %if.else.2.i ]
  %cmp13.2.i = icmp slt i32 %ret.0.2.i, 0
  br i1 %cmp13.2.i, label %if.then15.i, label %if.end16.2.i

if.end16.2.i:                                     ; preds = %if.end.2.i
  %28 = load ptr, ptr %var.i, align 8, !tbaa !5
  %call17.2.i = call i32 @putenv(ptr noundef %28) #14
  %cmp18.not.2.i = icmp eq i32 %call17.2.i, 0
  br i1 %cmp18.not.2.i, label %set_libstdbuf_options.exit.thread, label %if.then20.i

set_libstdbuf_options.exit.thread:                ; preds = %if.end16.2.i
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %var.i) #14
  br label %if.end51

set_libstdbuf_options.exit:                       ; preds = %for.inc.1.i
  br i1 %tobool.not.i, label %if.then49, label %if.end51

if.then49:                                        ; preds = %set_libstdbuf_options.exit
  %call50 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.24, i32 noundef 5) #14
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %call50) #17
  call void @usage(i32 noundef 125) #18
  unreachable

if.end51:                                         ; preds = %set_libstdbuf_options.exit, %set_libstdbuf_options.exit.thread, %for.inc.1.i.thread
  %29 = load ptr, ptr @program_name, align 8, !tbaa !5
  %call.i80 = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %29, i32 noundef 47) #15
  %tobool.not.i81 = icmp eq ptr %call.i80, null
  br i1 %tobool.not.i81, label %if.else.i83, label %set_program_path.exit.thread

set_program_path.exit.thread:                     ; preds = %if.end51
  %call1.i = call noalias nonnull ptr @dir_name(ptr noundef %29) #14
  store ptr %call1.i, ptr @program_path, align 8, !tbaa !5
  br label %if.end54

if.else.i83:                                      ; preds = %if.end51
  %call2.i = call noalias ptr @xreadlink(ptr noundef nonnull @.str.55) #14
  %tobool3.not.i = icmp eq ptr %call2.i, null
  br i1 %tobool3.not.i, label %if.else6.i, label %if.then4.i

if.then4.i:                                       ; preds = %if.else.i83
  %call5.i = call noalias nonnull ptr @dir_name(ptr noundef nonnull %call2.i) #14
  store ptr %call5.i, ptr @program_path, align 8, !tbaa !5
  br label %set_program_path.exit.thread112

if.else6.i:                                       ; preds = %if.else.i83
  %call7.i84 = call ptr @getenv(ptr noundef nonnull @.str.56) #14
  %tobool8.not.i = icmp eq ptr %call7.i84, null
  br i1 %tobool8.not.i, label %set_program_path.exit, label %if.then9.i

if.then9.i:                                       ; preds = %if.else6.i
  %call10.i = call noalias nonnull ptr @xstrdup(ptr noundef nonnull %call7.i84) #14
  %call11.i = call ptr @strtok(ptr noundef nonnull %call10.i, ptr noundef nonnull @.str.57) #14
  %cmp.not33.i = icmp eq ptr %call11.i, null
  br i1 %cmp.not33.i, label %set_program_path.exit, label %for.body.i

for.body.i:                                       ; preds = %for.inc.i86, %if.then9.i
  %dir.034.i = phi ptr [ %call17.i87, %for.inc.i86 ], [ %call11.i, %if.then9.i ]
  %call12.i85 = call noalias nonnull ptr @file_name_concat(ptr noundef nonnull %dir.034.i, ptr noundef %29, ptr noundef null) #14
  %call13.i = call i32 @access(ptr noundef nonnull %call12.i85, i32 noundef 1) #14
  %cmp14.i = icmp eq i32 %call13.i, 0
  br i1 %cmp14.i, label %cleanup.i, label %for.inc.i86

cleanup.i:                                        ; preds = %for.body.i
  %call16.i = call noalias nonnull ptr @dir_name(ptr noundef nonnull %call12.i85) #14
  store ptr %call16.i, ptr @program_path, align 8, !tbaa !5
  call void @free(ptr noundef nonnull %call12.i85) #14
  br label %set_program_path.exit.thread112

for.inc.i86:                                      ; preds = %for.body.i
  call void @free(ptr noundef nonnull %call12.i85) #14
  %call17.i87 = call ptr @strtok(ptr noundef null, ptr noundef nonnull @.str.57) #14
  %cmp.not.i = icmp eq ptr %call17.i87, null
  br i1 %cmp.not.i, label %set_program_path.exit, label %for.body.i, !llvm.loop !21

set_program_path.exit.thread112:                  ; preds = %cleanup.i, %if.then4.i
  %30 = phi ptr [ %call16.i, %cleanup.i ], [ %call5.i, %if.then4.i ]
  %path.0.i.ph111 = phi ptr [ %call10.i, %cleanup.i ], [ %call2.i, %if.then4.i ]
  call void @free(ptr noundef %path.0.i.ph111) #14
  br label %if.end54

set_program_path.exit:                            ; preds = %for.inc.i86, %if.then9.i, %if.else6.i
  %path.0.i.ph = phi ptr [ %call10.i, %if.then9.i ], [ null, %if.else6.i ], [ %call10.i, %for.inc.i86 ]
  %.pr.pr = load ptr, ptr @program_path, align 8, !tbaa !5
  call void @free(ptr noundef %path.0.i.ph) #14
  %tobool.not = icmp eq ptr %.pr.pr, null
  br i1 %tobool.not, label %if.then52, label %if.end54

if.then52:                                        ; preds = %set_program_path.exit
  %call53 = call noalias nonnull ptr @xstrdup(ptr noundef nonnull @.str.25) #14
  store ptr %call53, ptr @program_path, align 8, !tbaa !5
  br label %if.end54

if.end54:                                         ; preds = %if.then52, %set_program_path.exit, %set_program_path.exit.thread112, %set_program_path.exit.thread
  %31 = phi ptr [ %30, %set_program_path.exit.thread112 ], [ %call1.i, %set_program_path.exit.thread ], [ %call53, %if.then52 ], [ %.pr.pr, %set_program_path.exit ]
  %call.i88 = call ptr @getenv(ptr noundef nonnull @.str.58) #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %LD_PRELOAD.i) #14
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %search_path.i) #14
  %arrayinit.element.i = getelementptr inbounds ptr, ptr %search_path.i, i64 1
  store ptr @.str.59, ptr %arrayinit.element.i, align 8, !tbaa !5
  %arrayinit.element1.i = getelementptr inbounds ptr, ptr %search_path.i, i64 2
  store ptr null, ptr %arrayinit.element1.i, align 16, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %libstdbuf.i) #14
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %sb.i) #14
  %32 = load i8, ptr %31, align 1, !tbaa !14
  %tobool.not41.i = icmp eq i8 %32, 0
  br i1 %tobool.not41.i, label %if.then.i92, label %if.end.i89

if.then.i92:                                      ; preds = %cleanup.i90, %if.end54
  %call2.i93 = call noalias nonnull ptr @xstrdup(ptr noundef nonnull @.str.60) #14
  store ptr %call2.i93, ptr %libstdbuf.i, align 8, !tbaa !5
  br label %while.end.i

if.end.i89:                                       ; preds = %cleanup.i90, %if.end54
  %33 = phi ptr [ %35, %cleanup.i90 ], [ %31, %if.end54 ]
  %path.042.i = phi ptr [ %incdec.ptr.i, %cleanup.i90 ], [ %search_path.i, %if.end54 ]
  %call3.i = call i32 (ptr, i32, ptr, ...) @__asprintf_chk(ptr noundef nonnull %libstdbuf.i, i32 noundef 1, ptr noundef nonnull @.str.61, ptr noundef nonnull %33, ptr noundef nonnull @.str.60) #14
  %cmp.i = icmp slt i32 %call3.i, 0
  br i1 %cmp.i, label %if.then4.i101, label %if.end5.i

if.then4.i101:                                    ; preds = %if.end.i89
  call void @xalloc_die() #16
  unreachable

if.end5.i:                                        ; preds = %if.end.i89
  %34 = load ptr, ptr %libstdbuf.i, align 8, !tbaa !5
  %call6.i = call i32 @stat(ptr noundef %34, ptr noundef nonnull %sb.i) #14
  %cmp7.i = icmp eq i32 %call6.i, 0
  %.pre = load ptr, ptr %libstdbuf.i, align 8, !tbaa !5
  br i1 %cmp7.i, label %while.end.i, label %if.end9.i

if.end9.i:                                        ; preds = %if.end5.i
  call void @free(ptr noundef %.pre) #14
  %incdec.ptr.i = getelementptr inbounds ptr, ptr %path.042.i, i64 1
  %35 = load ptr, ptr %incdec.ptr.i, align 8, !tbaa !5
  %tobool10.not.i = icmp eq ptr %35, null
  br i1 %tobool10.not.i, label %if.then11.i, label %cleanup.i90

if.then11.i:                                      ; preds = %if.end9.i
  %call12.i99 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.62, i32 noundef 5) #14
  %call13.i100 = call ptr @quote(ptr noundef nonnull @.str.60) #14
  call void (i32, i32, ptr, ...) @error(i32 noundef 125, i32 noundef 0, ptr noundef %call12.i99, ptr noundef %call13.i100) #17
  unreachable

cleanup.i90:                                      ; preds = %if.end9.i
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %sb.i) #14
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %sb.i) #14
  %36 = load i8, ptr %35, align 1, !tbaa !14
  %tobool.not.i91 = icmp eq i8 %36, 0
  br i1 %tobool.not.i91, label %if.then.i92, label %if.end.i89

while.end.i:                                      ; preds = %if.end5.i, %if.then.i92
  %37 = phi ptr [ %call2.i93, %if.then.i92 ], [ %.pre, %if.end5.i ]
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %sb.i) #14
  %tobool15.not.i = icmp eq ptr %call.i88, null
  br i1 %tobool15.not.i, label %if.else.i98, label %if.then16.i

if.then16.i:                                      ; preds = %while.end.i
  %call17.i94 = call i32 (ptr, i32, ptr, ...) @__asprintf_chk(ptr noundef nonnull %LD_PRELOAD.i, i32 noundef 1, ptr noundef nonnull @.str.63, ptr noundef nonnull @.str.58, ptr noundef nonnull %call.i88, ptr noundef %37) #14
  br label %if.end19.i95

if.else.i98:                                      ; preds = %while.end.i
  %call18.i = call i32 (ptr, i32, ptr, ...) @__asprintf_chk(ptr noundef nonnull %LD_PRELOAD.i, i32 noundef 1, ptr noundef nonnull @.str.64, ptr noundef nonnull @.str.58, ptr noundef %37) #14
  br label %if.end19.i95

if.end19.i95:                                     ; preds = %if.else.i98, %if.then16.i
  %ret.0.i96 = phi i32 [ %call17.i94, %if.then16.i ], [ %call18.i, %if.else.i98 ]
  %cmp20.i = icmp slt i32 %ret.0.i96, 0
  br i1 %cmp20.i, label %if.then21.i, label %if.end22.i

if.then21.i:                                      ; preds = %if.end19.i95
  call void @xalloc_die() #16
  unreachable

if.end22.i:                                       ; preds = %if.end19.i95
  %38 = load ptr, ptr %libstdbuf.i, align 8, !tbaa !5
  call void @free(ptr noundef %38) #14
  %39 = load ptr, ptr %LD_PRELOAD.i, align 8, !tbaa !5
  %call23.i97 = call i32 @putenv(ptr noundef %39) #14
  %cmp24.not.i = icmp eq i32 %call23.i97, 0
  br i1 %cmp24.not.i, label %set_LD_PRELOAD.exit, label %if.then25.i

if.then25.i:                                      ; preds = %if.end22.i
  %call26.i = tail call ptr @__errno_location() #19
  %40 = load i32, ptr %call26.i, align 4, !tbaa !9
  %call27.i = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.54, i32 noundef 5) #14
  %41 = load ptr, ptr %LD_PRELOAD.i, align 8, !tbaa !5
  %call28.i = call ptr @quote(ptr noundef %41) #14
  call void (i32, i32, ptr, ...) @error(i32 noundef 125, i32 noundef %40, ptr noundef %call27.i, ptr noundef %call28.i) #17
  unreachable

set_LD_PRELOAD.exit:                              ; preds = %if.end22.i
  %idx.ext = sext i32 %9 to i64
  %add.ptr = getelementptr inbounds ptr, ptr %argv, i64 %idx.ext
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %libstdbuf.i) #14
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %search_path.i) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %LD_PRELOAD.i) #14
  %42 = load ptr, ptr @program_path, align 8, !tbaa !5
  call void @free(ptr noundef %42) #14
  %43 = load ptr, ptr %add.ptr, align 8, !tbaa !5
  %call55 = call i32 @execvp(ptr noundef %43, ptr noundef nonnull %add.ptr) #14
  %call56 = tail call ptr @__errno_location() #19
  %44 = load i32, ptr %call56, align 4, !tbaa !9
  %cmp57 = icmp eq i32 %44, 2
  %cond = select i1 %cmp57, i32 127, i32 126
  %call60 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.26, i32 noundef 5) #14
  %45 = load ptr, ptr %add.ptr, align 8, !tbaa !5
  %call62 = call ptr @quote(ptr noundef %45) #14
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %44, ptr noundef %call60, ptr noundef %call62) #17
  ret i32 %cond
}

declare void @set_program_name(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare ptr @bindtextdomain(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare ptr @textdomain(ptr noundef) local_unnamed_addr #1

declare void @close_stdout() #2

; Function Attrs: nounwind
declare i32 @atexit(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare i32 @getopt_long(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold
declare void @error(i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #8

declare i32 @xstrtoumax(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #8

declare ptr @quote(ptr noundef) local_unnamed_addr #2

declare ptr @proper_name_lite(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @version_etc(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @__asprintf_chk(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: noreturn
declare void @xalloc_die() local_unnamed_addr #10

; Function Attrs: nounwind
declare i32 @putenv(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #4

declare noalias nonnull ptr @dir_name(ptr noundef) local_unnamed_addr #2

declare noalias ptr @xreadlink(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind memory(read)
declare noundef ptr @getenv(ptr nocapture noundef) local_unnamed_addr #11

declare noalias nonnull ptr @xstrdup(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn
declare ptr @strtok(ptr noundef, ptr nocapture noundef readonly) local_unnamed_addr #12

declare noalias nonnull ptr @file_name_concat(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @access(ptr nocapture noundef readonly, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #13

; Function Attrs: nofree nounwind
declare noundef i32 @stat(ptr nocapture noundef readonly, ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare i32 @execvp(ptr noundef, ptr noundef) local_unnamed_addr #3

attributes #0 = { noreturn nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { cold "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree nounwind memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nounwind }
attributes #15 = { nounwind willreturn memory(read) }
attributes #16 = { noreturn nounwind }
attributes #17 = { cold nounwind }
attributes #18 = { noreturn }
attributes #19 = { nounwind willreturn memory(none) }

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
!11 = !{!12, !10, i64 8, i64 4}
!12 = !{!7, i64 24, !"", !13, i64 0, i64 8, !10, i64 8, i64 4, !6, i64 16, i64 8}
!13 = !{!7, i64 8, !"long"}
!14 = !{!7, !7, i64 0, i64 1}
!15 = distinct !{!15, !16}
!16 = !{!"llvm.loop.mustprogress"}
!17 = !{!12, !6, i64 16, i64 8}
!18 = !{!13, !13, i64 0, i64 8}
!19 = distinct !{!19, !16}
!20 = !{!12, !13, i64 0, i64 8}
!21 = distinct !{!21, !16}
