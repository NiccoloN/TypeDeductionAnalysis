; ModuleID = 'llvm-link'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.option = type { ptr, i32, ptr, i32 }
%struct.anon = type { i64, i32, ptr }
%struct.infomap = type { ptr, ptr }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }

@stderr = external global ptr, align 8
@.str = private unnamed_addr constant [39 x i8] c"Try '%s --help' for more information.\0A\00", align 1
@program_name = external global ptr, align 8
@.str.1 = private unnamed_addr constant [29 x i8] c"Usage: %s OPTION... COMMAND\0A\00", align 1
@.str.2 = private unnamed_addr constant [75 x i8] c"Run COMMAND, with modified buffering operations for its standard streams.\0A\00", align 1
@stdout = external global ptr, align 8
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
@.str.15 = private unnamed_addr constant [69 x i8] c"0 <= opt_fileno && opt_fileno < (sizeof (stdbuf) / sizeof *(stdbuf))\00", align 1
@.str.16 = private unnamed_addr constant [13 x i8] c"src/stdbuf.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [23 x i8] c"int main(int, char **)\00", align 1
@stdbuf = internal global [3 x %struct.anon] zeroinitializer, align 16
@optarg = external global ptr, align 8
@.str.17 = private unnamed_addr constant [36 x i8] c"line buffering stdin is meaningless\00", align 1
@.str.18 = private unnamed_addr constant [2 x i8] c"L\00", align 1
@.str.19 = private unnamed_addr constant [16 x i8] c"invalid mode %s\00", align 1
@.str.20 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@Version = external global ptr, align 8
@.str.21 = private unnamed_addr constant [14 x i8] c"Padraig Brady\00", align 1
@.str.22 = private unnamed_addr constant [15 x i8] c"P\C3\A1draig Brady\00", align 1
@optind = external global i32, align 4
@.str.23 = private unnamed_addr constant [16 x i8] c"missing operand\00", align 1
@.str.24 = private unnamed_addr constant [41 x i8] c"you must specify a buffering mode option\00", align 1
@program_path = internal global ptr null, align 8
@.str.25 = private unnamed_addr constant [25 x i8] c"/usr/local/lib/coreutils\00", align 1
@.str.26 = private unnamed_addr constant [25 x i8] c"failed to run command %s\00", align 1
@.str.27 = private unnamed_addr constant [75 x i8] c"\0AMandatory arguments to long options are mandatory for short options too.\0A\00", align 1
@.str.28 = private unnamed_addr constant [180 x i8] c"\0AExit status:\0A  125  if the %s command itself fails\0A  126  if COMMAND is found but cannot be invoked\0A  127  if COMMAND cannot be found\0A  -    the exit status of COMMAND otherwise\0A\00", align 1
@.str.29 = private unnamed_addr constant [2 x i8] c"[\00", align 1
@.str.30 = private unnamed_addr constant [16 x i8] c"test invocation\00", align 1
@.str.31 = private unnamed_addr constant [22 x i8] c"Multi-call invocation\00", align 1
@.str.32 = private unnamed_addr constant [10 x i8] c"sha224sum\00", align 1
@.str.33 = private unnamed_addr constant [15 x i8] c"sha2 utilities\00", align 1
@.str.34 = private unnamed_addr constant [10 x i8] c"sha256sum\00", align 1
@.str.35 = private unnamed_addr constant [10 x i8] c"sha384sum\00", align 1
@.str.36 = private unnamed_addr constant [10 x i8] c"sha512sum\00", align 1
@__const.emit_ancillary_info.infomap = private unnamed_addr constant [7 x %struct.infomap] [%struct.infomap { ptr @.str.29, ptr @.str.30 }, %struct.infomap { ptr @.str.12, ptr @.str.31 }, %struct.infomap { ptr @.str.32, ptr @.str.33 }, %struct.infomap { ptr @.str.34, ptr @.str.33 }, %struct.infomap { ptr @.str.35, ptr @.str.33 }, %struct.infomap { ptr @.str.36, ptr @.str.33 }, %struct.infomap zeroinitializer], align 16
@.str.37 = private unnamed_addr constant [23 x i8] c"\0A%s online help: <%s>\0A\00", align 1
@.str.38 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1
@.str.39 = private unnamed_addr constant [4 x i8] c"en_\00", align 1
@.str.40 = private unnamed_addr constant [71 x i8] c"Report any translation bugs to <https://translationproject.org/team/>\0A\00", align 1
@.str.41 = private unnamed_addr constant [5 x i8] c"test\00", align 1
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

; Function Attrs: noinline noreturn nounwind optnone uwtable
define dso_local void @usage(i32 noundef %status) #0 {
entry:
  %status.addr = alloca i32, align 4
  store i32 %status, ptr %status.addr, align 4
  %0 = load i32, ptr %status.addr, align 4
  %cmp = icmp ne i32 %0, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %if.then
  %1 = load ptr, ptr @stderr, align 8
  %call = call ptr @gettext(ptr noundef @.str) #10
  %2 = load ptr, ptr @program_name, align 8
  %call1 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef %call, ptr noundef %2)
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %entry
  %call2 = call ptr @gettext(ptr noundef @.str.1) #10
  %3 = load ptr, ptr @program_name, align 8
  %call3 = call i32 (ptr, ...) @printf(ptr noundef %call2, ptr noundef %3)
  %call4 = call ptr @gettext(ptr noundef @.str.2) #10
  %4 = load ptr, ptr @stdout, align 8
  %call5 = call i32 @fputs_unlocked(ptr noundef %call4, ptr noundef %4)
  call void @emit_mandatory_arg_note()
  %call6 = call ptr @gettext(ptr noundef @.str.3) #10
  %5 = load ptr, ptr @stdout, align 8
  %call7 = call i32 @fputs_unlocked(ptr noundef %call6, ptr noundef %5)
  %call8 = call ptr @gettext(ptr noundef @.str.4) #10
  %6 = load ptr, ptr @stdout, align 8
  %call9 = call i32 @fputs_unlocked(ptr noundef %call8, ptr noundef %6)
  %call10 = call ptr @gettext(ptr noundef @.str.5) #10
  %7 = load ptr, ptr @stdout, align 8
  %call11 = call i32 @fputs_unlocked(ptr noundef %call10, ptr noundef %7)
  %call12 = call ptr @gettext(ptr noundef @.str.6) #10
  %8 = load ptr, ptr @stdout, align 8
  %call13 = call i32 @fputs_unlocked(ptr noundef %call12, ptr noundef %8)
  %call14 = call ptr @gettext(ptr noundef @.str.7) #10
  %9 = load ptr, ptr @stdout, align 8
  %call15 = call i32 @fputs_unlocked(ptr noundef %call14, ptr noundef %9)
  %call16 = call ptr @gettext(ptr noundef @.str.8) #10
  %10 = load ptr, ptr @stdout, align 8
  %call17 = call i32 @fputs_unlocked(ptr noundef %call16, ptr noundef %10)
  %call18 = call ptr @gettext(ptr noundef @.str.9) #10
  %11 = load ptr, ptr @stdout, align 8
  %call19 = call i32 @fputs_unlocked(ptr noundef %call18, ptr noundef %11)
  call void @emit_exec_status(ptr noundef @.str.10)
  call void @emit_ancillary_info(ptr noundef @.str.10)
  br label %if.end

if.end:                                           ; preds = %if.else, %do.end
  %12 = load i32, ptr %status.addr, align 4
  call void @exit(i32 noundef %12) #11
  unreachable
}

; Function Attrs: nounwind
declare ptr @gettext(ptr noundef) #1

declare i32 @fprintf(ptr noundef, ptr noundef, ...) #2

declare i32 @printf(ptr noundef, ...) #2

declare i32 @fputs_unlocked(ptr noundef, ptr noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal void @emit_mandatory_arg_note() #3 {
entry:
  %call = call ptr @gettext(ptr noundef @.str.27) #10
  %0 = load ptr, ptr @stdout, align 8
  %call1 = call i32 @fputs_unlocked(ptr noundef %call, ptr noundef %0)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @emit_exec_status(ptr noundef %program) #3 {
entry:
  %program.addr = alloca ptr, align 8
  store ptr %program, ptr %program.addr, align 8
  %call = call ptr @gettext(ptr noundef @.str.28) #10
  %0 = load ptr, ptr %program.addr, align 8
  %call1 = call i32 (ptr, ...) @printf(ptr noundef %call, ptr noundef %0)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @emit_ancillary_info(ptr noundef %program) #3 {
entry:
  %program.addr = alloca ptr, align 8
  %infomap = alloca [7 x %struct.infomap], align 16
  %node = alloca ptr, align 8
  %map_prog = alloca ptr, align 8
  %lc_messages = alloca ptr, align 8
  %url_program = alloca ptr, align 8
  store ptr %program, ptr %program.addr, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %infomap, ptr align 16 @__const.emit_ancillary_info.infomap, i64 112, i1 false)
  %0 = load ptr, ptr %program.addr, align 8
  store ptr %0, ptr %node, align 8
  %arraydecay = getelementptr inbounds [7 x %struct.infomap], ptr %infomap, i64 0, i64 0
  store ptr %arraydecay, ptr %map_prog, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %1 = load ptr, ptr %map_prog, align 8
  %program1 = getelementptr inbounds %struct.infomap, ptr %1, i32 0, i32 0
  %2 = load ptr, ptr %program1, align 8
  %tobool = icmp ne ptr %2, null
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %3 = load ptr, ptr %program.addr, align 8
  %4 = load ptr, ptr %map_prog, align 8
  %program2 = getelementptr inbounds %struct.infomap, ptr %4, i32 0, i32 0
  %5 = load ptr, ptr %program2, align 8
  %call = call i32 @strcmp(ptr noundef %3, ptr noundef %5) #12
  %cmp = icmp eq i32 %call, 0
  %lnot = xor i1 %cmp, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %6 = phi i1 [ false, %while.cond ], [ %lnot, %land.rhs ]
  br i1 %6, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %7 = load ptr, ptr %map_prog, align 8
  %incdec.ptr = getelementptr inbounds %struct.infomap, ptr %7, i32 1
  store ptr %incdec.ptr, ptr %map_prog, align 8
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %land.end
  %8 = load ptr, ptr %map_prog, align 8
  %node3 = getelementptr inbounds %struct.infomap, ptr %8, i32 0, i32 1
  %9 = load ptr, ptr %node3, align 8
  %tobool4 = icmp ne ptr %9, null
  br i1 %tobool4, label %if.then, label %if.end

if.then:                                          ; preds = %while.end
  %10 = load ptr, ptr %map_prog, align 8
  %node5 = getelementptr inbounds %struct.infomap, ptr %10, i32 0, i32 1
  %11 = load ptr, ptr %node5, align 8
  store ptr %11, ptr %node, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %while.end
  %call6 = call ptr @gettext(ptr noundef @.str.37) #10
  %call7 = call i32 (ptr, ...) @printf(ptr noundef %call6, ptr noundef @.str.20, ptr noundef @.str.38)
  %call8 = call ptr @setlocale(i32 noundef 5, ptr noundef null) #10
  store ptr %call8, ptr %lc_messages, align 8
  %12 = load ptr, ptr %lc_messages, align 8
  %tobool9 = icmp ne ptr %12, null
  br i1 %tobool9, label %land.lhs.true, label %if.end15

land.lhs.true:                                    ; preds = %if.end
  %13 = load ptr, ptr %lc_messages, align 8
  %call10 = call i32 @strncmp(ptr noundef %13, ptr noundef @.str.39, i64 noundef 3) #12
  %tobool11 = icmp ne i32 %call10, 0
  br i1 %tobool11, label %if.then12, label %if.end15

if.then12:                                        ; preds = %land.lhs.true
  %call13 = call ptr @gettext(ptr noundef @.str.40) #10
  %14 = load ptr, ptr @stdout, align 8
  %call14 = call i32 @fputs_unlocked(ptr noundef %call13, ptr noundef %14)
  br label %if.end15

if.end15:                                         ; preds = %if.then12, %land.lhs.true, %if.end
  %15 = load ptr, ptr %program.addr, align 8
  %call16 = call i32 @strcmp(ptr noundef %15, ptr noundef @.str.29) #12
  %cmp17 = icmp eq i32 %call16, 0
  br i1 %cmp17, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end15
  br label %cond.end

cond.false:                                       ; preds = %if.end15
  %16 = load ptr, ptr %program.addr, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ @.str.41, %cond.true ], [ %16, %cond.false ]
  store ptr %cond, ptr %url_program, align 8
  %call18 = call ptr @gettext(ptr noundef @.str.42) #10
  %17 = load ptr, ptr %url_program, align 8
  %call19 = call i32 (ptr, ...) @printf(ptr noundef %call18, ptr noundef @.str.38, ptr noundef %17)
  %call20 = call ptr @gettext(ptr noundef @.str.43) #10
  %18 = load ptr, ptr %node, align 8
  %19 = load ptr, ptr %node, align 8
  %20 = load ptr, ptr %program.addr, align 8
  %cmp21 = icmp eq ptr %19, %20
  %21 = zext i1 %cmp21 to i64
  %cond22 = select i1 %cmp21, ptr @.str.44, ptr @.str.11
  %call23 = call i32 (ptr, ...) @printf(ptr noundef %call20, ptr noundef %18, ptr noundef %cond22)
  ret void
}

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) #4

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: nounwind willreturn memory(read)
declare i32 @strcmp(ptr noundef, ptr noundef) #6

; Function Attrs: nounwind
declare ptr @setlocale(i32 noundef, ptr noundef) #1

; Function Attrs: nounwind willreturn memory(read)
declare i32 @strncmp(ptr noundef, ptr noundef, i64 noundef) #6

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 noundef %argc, ptr noundef %argv) #3 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca ptr, align 8
  %c = alloca i32, align 4
  %opt_fileno = alloca i32, align 4
  %exit_status = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  store i32 %argc, ptr %argc.addr, align 4
  store ptr %argv, ptr %argv.addr, align 8
  %0 = load ptr, ptr %argv.addr, align 8
  %arrayidx = getelementptr inbounds ptr, ptr %0, i64 0
  %1 = load ptr, ptr %arrayidx, align 8
  call void @set_program_name(ptr noundef %1)
  %call = call ptr @setlocale(i32 noundef 6, ptr noundef @.str.11) #10
  %call1 = call ptr @bindtextdomain(ptr noundef @.str.12, ptr noundef @.str.13) #10
  %call2 = call ptr @textdomain(ptr noundef @.str.12) #10
  call void @initialize_exit_failure(i32 noundef 125)
  %call3 = call i32 @atexit(ptr noundef @close_stdout) #10
  br label %while.cond

while.cond:                                       ; preds = %sw.epilog, %entry
  %2 = load i32, ptr %argc.addr, align 4
  %3 = load ptr, ptr %argv.addr, align 8
  %call4 = call i32 @getopt_long(i32 noundef %2, ptr noundef %3, ptr noundef @.str.14, ptr noundef @longopts, ptr noundef null) #10
  store i32 %call4, ptr %c, align 4
  %cmp = icmp ne i32 %call4, -1
  br i1 %cmp, label %while.body, label %while.end42

while.body:                                       ; preds = %while.cond
  %4 = load i32, ptr %c, align 4
  switch i32 %4, label %sw.default [
    i32 101, label %sw.bb
    i32 105, label %sw.bb
    i32 111, label %sw.bb
    i32 -130, label %sw.bb39
    i32 -131, label %sw.bb40
  ]

sw.bb:                                            ; preds = %while.body, %while.body, %while.body
  %5 = load i32, ptr %c, align 4
  %call5 = call i32 @optc_to_fileno(i32 noundef %5)
  store i32 %call5, ptr %opt_fileno, align 4
  %6 = load i32, ptr %opt_fileno, align 4
  %cmp6 = icmp sle i32 0, %6
  br i1 %cmp6, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %sw.bb
  %7 = load i32, ptr %opt_fileno, align 4
  %conv = sext i32 %7 to i64
  %cmp7 = icmp ult i64 %conv, 3
  br i1 %cmp7, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  br label %if.end

if.else:                                          ; preds = %land.lhs.true, %sw.bb
  call void @__assert_fail(ptr noundef @.str.15, ptr noundef @.str.16, i32 noundef 333, ptr noundef @__PRETTY_FUNCTION__.main) #11
  unreachable

if.end:                                           ; preds = %if.then
  %8 = load i32, ptr %c, align 4
  %9 = load i32, ptr %opt_fileno, align 4
  %idxprom = sext i32 %9 to i64
  %arrayidx9 = getelementptr inbounds [3 x %struct.anon], ptr @stdbuf, i64 0, i64 %idxprom
  %optc = getelementptr inbounds %struct.anon, ptr %arrayidx9, i32 0, i32 1
  store i32 %8, ptr %optc, align 8
  br label %while.cond10

while.cond10:                                     ; preds = %while.body13, %if.end
  %10 = load ptr, ptr @optarg, align 8
  %11 = load i8, ptr %10, align 1
  %conv11 = sext i8 %11 to i32
  %call12 = call zeroext i1 @c_isspace(i32 noundef %conv11)
  br i1 %call12, label %while.body13, label %while.end

while.body13:                                     ; preds = %while.cond10
  %12 = load ptr, ptr @optarg, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %12, i32 1
  store ptr %incdec.ptr, ptr @optarg, align 8
  br label %while.cond10, !llvm.loop !8

while.end:                                        ; preds = %while.cond10
  %13 = load ptr, ptr @optarg, align 8
  %14 = load i32, ptr %opt_fileno, align 4
  %idxprom14 = sext i32 %14 to i64
  %arrayidx15 = getelementptr inbounds [3 x %struct.anon], ptr @stdbuf, i64 0, i64 %idxprom14
  %optarg = getelementptr inbounds %struct.anon, ptr %arrayidx15, i32 0, i32 2
  store ptr %13, ptr %optarg, align 8
  %15 = load i32, ptr %c, align 4
  %cmp16 = icmp eq i32 %15, 105
  br i1 %cmp16, label %land.lhs.true18, label %if.end24

land.lhs.true18:                                  ; preds = %while.end
  %16 = load ptr, ptr @optarg, align 8
  %17 = load i8, ptr %16, align 1
  %conv19 = sext i8 %17 to i32
  %cmp20 = icmp eq i32 %conv19, 76
  br i1 %cmp20, label %if.then22, label %if.end24

if.then22:                                        ; preds = %land.lhs.true18
  %call23 = call ptr @gettext(ptr noundef @.str.17) #10
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %call23) #13
  call void @usage(i32 noundef 125) #14
  unreachable

if.end24:                                         ; preds = %land.lhs.true18, %while.end
  %18 = load ptr, ptr @optarg, align 8
  %call25 = call i32 @strcmp(ptr noundef %18, ptr noundef @.str.18) #12
  %cmp26 = icmp eq i32 %call25, 0
  br i1 %cmp26, label %if.end38, label %land.lhs.true28

land.lhs.true28:                                  ; preds = %if.end24
  %19 = load ptr, ptr @optarg, align 8
  %20 = load i32, ptr %opt_fileno, align 4
  %idxprom29 = sext i32 %20 to i64
  %arrayidx30 = getelementptr inbounds [3 x %struct.anon], ptr @stdbuf, i64 0, i64 %idxprom29
  %size = getelementptr inbounds %struct.anon, ptr %arrayidx30, i32 0, i32 0
  %call31 = call i32 @parse_size(ptr noundef %19, ptr noundef %size)
  %cmp32 = icmp eq i32 %call31, -1
  br i1 %cmp32, label %if.then34, label %if.end38

if.then34:                                        ; preds = %land.lhs.true28
  %call35 = call ptr @__errno_location() #15
  %21 = load i32, ptr %call35, align 4
  %call36 = call ptr @gettext(ptr noundef @.str.19) #10
  %22 = load ptr, ptr @optarg, align 8
  %call37 = call ptr @quote(ptr noundef %22)
  call void (i32, i32, ptr, ...) @error(i32 noundef 125, i32 noundef %21, ptr noundef %call36, ptr noundef %call37) #13
  unreachable

if.end38:                                         ; preds = %land.lhs.true28, %if.end24
  br label %sw.epilog

sw.bb39:                                          ; preds = %while.body
  call void @usage(i32 noundef 0) #14
  unreachable

sw.bb40:                                          ; preds = %while.body
  %23 = load ptr, ptr @stdout, align 8
  %24 = load ptr, ptr @Version, align 8
  %call41 = call ptr @proper_name_lite(ptr noundef @.str.21, ptr noundef @.str.22)
  call void (ptr, ptr, ptr, ptr, ...) @version_etc(ptr noundef %23, ptr noundef @.str.10, ptr noundef @.str.20, ptr noundef %24, ptr noundef %call41, ptr noundef null)
  call void @exit(i32 noundef 0) #11
  unreachable

sw.default:                                       ; preds = %while.body
  call void @usage(i32 noundef 125) #14
  unreachable

sw.epilog:                                        ; preds = %if.end38
  br label %while.cond, !llvm.loop !9

while.end42:                                      ; preds = %while.cond
  %25 = load i32, ptr @optind, align 4
  %26 = load ptr, ptr %argv.addr, align 8
  %idx.ext = sext i32 %25 to i64
  %add.ptr = getelementptr inbounds ptr, ptr %26, i64 %idx.ext
  store ptr %add.ptr, ptr %argv.addr, align 8
  %27 = load i32, ptr @optind, align 4
  %28 = load i32, ptr %argc.addr, align 4
  %sub = sub nsw i32 %28, %27
  store i32 %sub, ptr %argc.addr, align 4
  %29 = load i32, ptr %argc.addr, align 4
  %cmp43 = icmp slt i32 %29, 1
  br i1 %cmp43, label %if.then45, label %if.end47

if.then45:                                        ; preds = %while.end42
  %call46 = call ptr @gettext(ptr noundef @.str.23) #10
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %call46) #13
  call void @usage(i32 noundef 125) #14
  unreachable

if.end47:                                         ; preds = %while.end42
  %call48 = call zeroext i1 @set_libstdbuf_options()
  br i1 %call48, label %if.end51, label %if.then49

if.then49:                                        ; preds = %if.end47
  %call50 = call ptr @gettext(ptr noundef @.str.24) #10
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %call50) #13
  call void @usage(i32 noundef 125) #14
  unreachable

if.end51:                                         ; preds = %if.end47
  %30 = load ptr, ptr @program_name, align 8
  call void @set_program_path(ptr noundef %30)
  %31 = load ptr, ptr @program_path, align 8
  %tobool = icmp ne ptr %31, null
  br i1 %tobool, label %if.end54, label %if.then52

if.then52:                                        ; preds = %if.end51
  %call53 = call noalias nonnull ptr @xstrdup(ptr noundef @.str.25)
  store ptr %call53, ptr @program_path, align 8
  br label %if.end54

if.end54:                                         ; preds = %if.then52, %if.end51
  call void @set_LD_PRELOAD()
  %32 = load ptr, ptr @program_path, align 8
  call void @free(ptr noundef %32) #10
  %33 = load ptr, ptr %argv.addr, align 8
  %34 = load ptr, ptr %33, align 8
  %35 = load ptr, ptr %argv.addr, align 8
  %call55 = call i32 @execvp(ptr noundef %34, ptr noundef %35) #10
  %call56 = call ptr @__errno_location() #15
  %36 = load i32, ptr %call56, align 4
  %cmp57 = icmp eq i32 %36, 2
  %37 = zext i1 %cmp57 to i64
  %cond = select i1 %cmp57, i32 127, i32 126
  store i32 %cond, ptr %exit_status, align 4
  %call59 = call ptr @__errno_location() #15
  %38 = load i32, ptr %call59, align 4
  %call60 = call ptr @gettext(ptr noundef @.str.26) #10
  %39 = load ptr, ptr %argv.addr, align 8
  %arrayidx61 = getelementptr inbounds ptr, ptr %39, i64 0
  %40 = load ptr, ptr %arrayidx61, align 8
  %call62 = call ptr @quote(ptr noundef %40)
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %38, ptr noundef %call60, ptr noundef %call62) #13
  %41 = load i32, ptr %exit_status, align 4
  ret i32 %41
}

declare void @set_program_name(ptr noundef) #2

; Function Attrs: nounwind
declare ptr @bindtextdomain(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind
declare ptr @textdomain(ptr noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal void @initialize_exit_failure(i32 noundef %status) #3 {
entry:
  %status.addr = alloca i32, align 4
  store i32 %status, ptr %status.addr, align 4
  %0 = load i32, ptr %status.addr, align 4
  %cmp = icmp ne i32 %0, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i32, ptr %status.addr, align 4
  store volatile i32 %1, ptr @exit_failure, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare void @close_stdout() #2

; Function Attrs: nounwind
declare i32 @atexit(ptr noundef) #1

; Function Attrs: nounwind
declare i32 @getopt_long(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @optc_to_fileno(i32 noundef %c) #3 {
entry:
  %c.addr = alloca i32, align 4
  %ret = alloca i32, align 4
  store i32 %c, ptr %c.addr, align 4
  store i32 -1, ptr %ret, align 4
  %0 = load i32, ptr %c.addr, align 4
  switch i32 %0, label %sw.epilog [
    i32 101, label %sw.bb
    i32 105, label %sw.bb1
    i32 111, label %sw.bb2
  ]

sw.bb:                                            ; preds = %entry
  store i32 2, ptr %ret, align 4
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  store i32 0, ptr %ret, align 4
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  store i32 1, ptr %ret, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb2, %sw.bb1, %sw.bb, %entry
  %1 = load i32, ptr %ret, align 4
  ret i32 %1
}

; Function Attrs: noreturn nounwind
declare void @__assert_fail(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #4

declare zeroext i1 @c_isspace(i32 noundef) #2

; Function Attrs: cold
declare void @error(i32 noundef, i32 noundef, ptr noundef, ...) #7

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_size(ptr noundef %str, ptr noundef %size) #3 {
entry:
  %retval = alloca i32, align 4
  %str.addr = alloca ptr, align 8
  %size.addr = alloca ptr, align 8
  %tmp_size = alloca i64, align 8
  %e = alloca i32, align 4
  store ptr %str, ptr %str.addr, align 8
  store ptr %size, ptr %size.addr, align 8
  %0 = load ptr, ptr %str.addr, align 8
  %call = call i32 @xstrtoumax(ptr noundef %0, ptr noundef null, i32 noundef 10, ptr noundef %tmp_size, ptr noundef @.str.50)
  store i32 %call, ptr %e, align 4
  %1 = load i32, ptr %e, align 4
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %tmp_size, align 8
  %cmp1 = icmp ult i64 -1, %2
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  store i32 1, ptr %e, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %3 = load i32, ptr %e, align 4
  %cmp2 = icmp eq i32 %3, 0
  br i1 %cmp2, label %if.then3, label %if.end5

if.then3:                                         ; preds = %if.end
  %call4 = call ptr @__errno_location() #15
  store i32 0, ptr %call4, align 4
  %4 = load i64, ptr %tmp_size, align 8
  %5 = load ptr, ptr %size.addr, align 8
  store i64 %4, ptr %5, align 8
  store i32 0, ptr %retval, align 4
  br label %return

if.end5:                                          ; preds = %if.end
  %6 = load i32, ptr %e, align 4
  %cmp6 = icmp eq i32 %6, 1
  br i1 %cmp6, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end5
  br label %cond.end

cond.false:                                       ; preds = %if.end5
  %call7 = call ptr @__errno_location() #15
  %7 = load i32, ptr %call7, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 75, %cond.true ], [ %7, %cond.false ]
  %call8 = call ptr @__errno_location() #15
  store i32 %cond, ptr %call8, align 4
  store i32 -1, ptr %retval, align 4
  br label %return

return:                                           ; preds = %cond.end, %if.then3
  %8 = load i32, ptr %retval, align 4
  ret i32 %8
}

; Function Attrs: nounwind willreturn memory(none)
declare ptr @__errno_location() #8

declare ptr @quote(ptr noundef) #2

declare ptr @proper_name_lite(ptr noundef, ptr noundef) #2

declare void @version_etc(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ...) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i1 @set_libstdbuf_options() #3 {
entry:
  %env_set = alloca i8, align 1
  %i = alloca i64, align 8
  %var = alloca ptr, align 8
  %ret = alloca i32, align 4
  store i8 0, ptr %env_set, align 1
  store i64 0, ptr %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, ptr %i, align 8
  %cmp = icmp ult i64 %0, 3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i64, ptr %i, align 8
  %arrayidx = getelementptr inbounds [3 x %struct.anon], ptr @stdbuf, i64 0, i64 %1
  %optarg = getelementptr inbounds %struct.anon, ptr %arrayidx, i32 0, i32 2
  %2 = load ptr, ptr %optarg, align 8
  %tobool = icmp ne ptr %2, null
  br i1 %tobool, label %if.then, label %if.end25

if.then:                                          ; preds = %for.body
  %3 = load i64, ptr %i, align 8
  %arrayidx1 = getelementptr inbounds [3 x %struct.anon], ptr @stdbuf, i64 0, i64 %3
  %optarg2 = getelementptr inbounds %struct.anon, ptr %arrayidx1, i32 0, i32 2
  %4 = load ptr, ptr %optarg2, align 8
  %5 = load i8, ptr %4, align 1
  %conv = sext i8 %5 to i32
  %cmp3 = icmp eq i32 %conv, 76
  br i1 %cmp3, label %if.then5, label %if.else

if.then5:                                         ; preds = %if.then
  %6 = load i64, ptr %i, align 8
  %arrayidx6 = getelementptr inbounds [3 x %struct.anon], ptr @stdbuf, i64 0, i64 %6
  %optc = getelementptr inbounds %struct.anon, ptr %arrayidx6, i32 0, i32 1
  %7 = load i32, ptr %optc, align 8
  %call = call i32 @c_toupper(i32 noundef %7)
  %call7 = call i32 (ptr, ptr, ...) @asprintf(ptr noundef %var, ptr noundef @.str.51, ptr noundef @.str.52, i32 noundef %call) #10
  store i32 %call7, ptr %ret, align 4
  br label %if.end

if.else:                                          ; preds = %if.then
  %8 = load i64, ptr %i, align 8
  %arrayidx8 = getelementptr inbounds [3 x %struct.anon], ptr @stdbuf, i64 0, i64 %8
  %optc9 = getelementptr inbounds %struct.anon, ptr %arrayidx8, i32 0, i32 1
  %9 = load i32, ptr %optc9, align 8
  %call10 = call i32 @c_toupper(i32 noundef %9)
  %10 = load i64, ptr %i, align 8
  %arrayidx11 = getelementptr inbounds [3 x %struct.anon], ptr @stdbuf, i64 0, i64 %10
  %size = getelementptr inbounds %struct.anon, ptr %arrayidx11, i32 0, i32 0
  %11 = load i64, ptr %size, align 8
  %call12 = call i32 (ptr, ptr, ...) @asprintf(ptr noundef %var, ptr noundef @.str.53, ptr noundef @.str.52, i32 noundef %call10, i64 noundef %11) #10
  store i32 %call12, ptr %ret, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then5
  %12 = load i32, ptr %ret, align 4
  %cmp13 = icmp slt i32 %12, 0
  br i1 %cmp13, label %if.then15, label %if.end16

if.then15:                                        ; preds = %if.end
  call void @xalloc_die() #14
  unreachable

if.end16:                                         ; preds = %if.end
  %13 = load ptr, ptr %var, align 8
  %call17 = call i32 @putenv(ptr noundef %13) #10
  %cmp18 = icmp ne i32 %call17, 0
  br i1 %cmp18, label %if.then20, label %if.end24

if.then20:                                        ; preds = %if.end16
  %call21 = call ptr @__errno_location() #15
  %14 = load i32, ptr %call21, align 4
  %call22 = call ptr @gettext(ptr noundef @.str.54) #10
  %15 = load ptr, ptr %var, align 8
  %call23 = call ptr @quote(ptr noundef %15)
  call void (i32, i32, ptr, ...) @error(i32 noundef 125, i32 noundef %14, ptr noundef %call22, ptr noundef %call23) #13
  unreachable

if.end24:                                         ; preds = %if.end16
  store i8 1, ptr %env_set, align 1
  br label %if.end25

if.end25:                                         ; preds = %if.end24, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end25
  %16 = load i64, ptr %i, align 8
  %inc = add i64 %16, 1
  store i64 %inc, ptr %i, align 8
  br label %for.cond, !llvm.loop !10

for.end:                                          ; preds = %for.cond
  %17 = load i8, ptr %env_set, align 1
  %tobool26 = trunc i8 %17 to i1
  ret i1 %tobool26
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_program_path(ptr noundef %arg) #3 {
entry:
  %arg.addr = alloca ptr, align 8
  %path = alloca ptr, align 8
  %dir = alloca ptr, align 8
  %candidate = alloca ptr, align 8
  store ptr %arg, ptr %arg.addr, align 8
  %0 = load ptr, ptr %arg.addr, align 8
  %call = call ptr @strchr(ptr noundef %0, i32 noundef 47) #12
  %tobool = icmp ne ptr %call, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %arg.addr, align 8
  %call1 = call noalias nonnull ptr @dir_name(ptr noundef %1)
  store ptr %call1, ptr @program_path, align 8
  br label %if.end20

if.else:                                          ; preds = %entry
  %call2 = call noalias ptr @xreadlink(ptr noundef @.str.55)
  store ptr %call2, ptr %path, align 8
  %2 = load ptr, ptr %path, align 8
  %tobool3 = icmp ne ptr %2, null
  br i1 %tobool3, label %if.then4, label %if.else6

if.then4:                                         ; preds = %if.else
  %3 = load ptr, ptr %path, align 8
  %call5 = call noalias nonnull ptr @dir_name(ptr noundef %3)
  store ptr %call5, ptr @program_path, align 8
  br label %if.end19

if.else6:                                         ; preds = %if.else
  %call7 = call ptr @getenv(ptr noundef @.str.56) #10
  store ptr %call7, ptr %path, align 8
  %tobool8 = icmp ne ptr %call7, null
  br i1 %tobool8, label %if.then9, label %if.end18

if.then9:                                         ; preds = %if.else6
  %4 = load ptr, ptr %path, align 8
  %call10 = call noalias nonnull ptr @xstrdup(ptr noundef %4)
  store ptr %call10, ptr %path, align 8
  %5 = load ptr, ptr %path, align 8
  %call11 = call ptr @strtok(ptr noundef %5, ptr noundef @.str.57) #10
  store ptr %call11, ptr %dir, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then9
  %6 = load ptr, ptr %dir, align 8
  %cmp = icmp ne ptr %6, null
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load ptr, ptr %dir, align 8
  %8 = load ptr, ptr %arg.addr, align 8
  %call12 = call noalias nonnull ptr @file_name_concat(ptr noundef %7, ptr noundef %8, ptr noundef null)
  store ptr %call12, ptr %candidate, align 8
  %9 = load ptr, ptr %candidate, align 8
  %call13 = call i32 @access(ptr noundef %9, i32 noundef 1) #10
  %cmp14 = icmp eq i32 %call13, 0
  br i1 %cmp14, label %if.then15, label %if.end

if.then15:                                        ; preds = %for.body
  %10 = load ptr, ptr %candidate, align 8
  %call16 = call noalias nonnull ptr @dir_name(ptr noundef %10)
  store ptr %call16, ptr @program_path, align 8
  %11 = load ptr, ptr %candidate, align 8
  call void @free(ptr noundef %11) #10
  br label %for.end

if.end:                                           ; preds = %for.body
  %12 = load ptr, ptr %candidate, align 8
  call void @free(ptr noundef %12) #10
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %call17 = call ptr @strtok(ptr noundef null, ptr noundef @.str.57) #10
  store ptr %call17, ptr %dir, align 8
  br label %for.cond, !llvm.loop !11

for.end:                                          ; preds = %if.then15, %for.cond
  br label %if.end18

if.end18:                                         ; preds = %for.end, %if.else6
  br label %if.end19

if.end19:                                         ; preds = %if.end18, %if.then4
  %13 = load ptr, ptr %path, align 8
  call void @free(ptr noundef %13) #10
  br label %if.end20

if.end20:                                         ; preds = %if.end19, %if.then
  ret void
}

declare noalias nonnull ptr @xstrdup(ptr noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_LD_PRELOAD() #3 {
entry:
  %ret = alloca i32, align 4
  %preload_env = alloca ptr, align 8
  %old_libs = alloca ptr, align 8
  %LD_PRELOAD = alloca ptr, align 8
  %search_path = alloca [3 x ptr], align 16
  %path = alloca ptr, align 8
  %libstdbuf = alloca ptr, align 8
  %sb = alloca %struct.stat, align 8
  store ptr @.str.58, ptr %preload_env, align 8
  %0 = load ptr, ptr %preload_env, align 8
  %call = call ptr @getenv(ptr noundef %0) #10
  store ptr %call, ptr %old_libs, align 8
  %arrayinit.begin = getelementptr inbounds [3 x ptr], ptr %search_path, i64 0, i64 0
  %1 = load ptr, ptr @program_path, align 8
  store ptr %1, ptr %arrayinit.begin, align 8
  %arrayinit.element = getelementptr inbounds ptr, ptr %arrayinit.begin, i64 1
  store ptr @.str.59, ptr %arrayinit.element, align 8
  %arrayinit.element1 = getelementptr inbounds ptr, ptr %arrayinit.element, i64 1
  store ptr null, ptr %arrayinit.element1, align 8
  %arraydecay = getelementptr inbounds [3 x ptr], ptr %search_path, i64 0, i64 0
  store ptr %arraydecay, ptr %path, align 8
  br label %while.body

while.body:                                       ; preds = %if.end14, %entry
  %2 = load ptr, ptr %path, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = load i8, ptr %3, align 1
  %tobool = icmp ne i8 %4, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %while.body
  %call2 = call noalias nonnull ptr @xstrdup(ptr noundef @.str.60)
  store ptr %call2, ptr %libstdbuf, align 8
  br label %while.end

if.end:                                           ; preds = %while.body
  %5 = load ptr, ptr %path, align 8
  %6 = load ptr, ptr %5, align 8
  %call3 = call i32 (ptr, ptr, ...) @asprintf(ptr noundef %libstdbuf, ptr noundef @.str.61, ptr noundef %6, ptr noundef @.str.60) #10
  store i32 %call3, ptr %ret, align 4
  %7 = load i32, ptr %ret, align 4
  %cmp = icmp slt i32 %7, 0
  br i1 %cmp, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  call void @xalloc_die() #14
  unreachable

if.end5:                                          ; preds = %if.end
  %8 = load ptr, ptr %libstdbuf, align 8
  %call6 = call i32 @stat(ptr noundef %8, ptr noundef %sb) #10
  %cmp7 = icmp eq i32 %call6, 0
  br i1 %cmp7, label %if.then8, label %if.end9

if.then8:                                         ; preds = %if.end5
  br label %while.end

if.end9:                                          ; preds = %if.end5
  %9 = load ptr, ptr %libstdbuf, align 8
  call void @free(ptr noundef %9) #10
  %10 = load ptr, ptr %path, align 8
  %incdec.ptr = getelementptr inbounds ptr, ptr %10, i32 1
  store ptr %incdec.ptr, ptr %path, align 8
  %11 = load ptr, ptr %path, align 8
  %12 = load ptr, ptr %11, align 8
  %tobool10 = icmp ne ptr %12, null
  br i1 %tobool10, label %if.end14, label %if.then11

if.then11:                                        ; preds = %if.end9
  %call12 = call ptr @gettext(ptr noundef @.str.62) #10
  %call13 = call ptr @quote(ptr noundef @.str.60)
  call void (i32, i32, ptr, ...) @error(i32 noundef 125, i32 noundef 0, ptr noundef %call12, ptr noundef %call13) #13
  unreachable

if.end14:                                         ; preds = %if.end9
  br label %while.body

while.end:                                        ; preds = %if.then8, %if.then
  %13 = load ptr, ptr %old_libs, align 8
  %tobool15 = icmp ne ptr %13, null
  br i1 %tobool15, label %if.then16, label %if.else

if.then16:                                        ; preds = %while.end
  %14 = load ptr, ptr %preload_env, align 8
  %15 = load ptr, ptr %old_libs, align 8
  %16 = load ptr, ptr %libstdbuf, align 8
  %call17 = call i32 (ptr, ptr, ...) @asprintf(ptr noundef %LD_PRELOAD, ptr noundef @.str.63, ptr noundef %14, ptr noundef %15, ptr noundef %16) #10
  store i32 %call17, ptr %ret, align 4
  br label %if.end19

if.else:                                          ; preds = %while.end
  %17 = load ptr, ptr %preload_env, align 8
  %18 = load ptr, ptr %libstdbuf, align 8
  %call18 = call i32 (ptr, ptr, ...) @asprintf(ptr noundef %LD_PRELOAD, ptr noundef @.str.64, ptr noundef %17, ptr noundef %18) #10
  store i32 %call18, ptr %ret, align 4
  br label %if.end19

if.end19:                                         ; preds = %if.else, %if.then16
  %19 = load i32, ptr %ret, align 4
  %cmp20 = icmp slt i32 %19, 0
  br i1 %cmp20, label %if.then21, label %if.end22

if.then21:                                        ; preds = %if.end19
  call void @xalloc_die() #14
  unreachable

if.end22:                                         ; preds = %if.end19
  %20 = load ptr, ptr %libstdbuf, align 8
  call void @free(ptr noundef %20) #10
  %21 = load ptr, ptr %LD_PRELOAD, align 8
  %call23 = call i32 @putenv(ptr noundef %21) #10
  store i32 %call23, ptr %ret, align 4
  %22 = load i32, ptr %ret, align 4
  %cmp24 = icmp ne i32 %22, 0
  br i1 %cmp24, label %if.then25, label %if.end29

if.then25:                                        ; preds = %if.end22
  %call26 = call ptr @__errno_location() #15
  %23 = load i32, ptr %call26, align 4
  %call27 = call ptr @gettext(ptr noundef @.str.54) #10
  %24 = load ptr, ptr %LD_PRELOAD, align 8
  %call28 = call ptr @quote(ptr noundef %24)
  call void (i32, i32, ptr, ...) @error(i32 noundef 125, i32 noundef %23, ptr noundef %call27, ptr noundef %call28) #13
  unreachable

if.end29:                                         ; preds = %if.end22
  ret void
}

; Function Attrs: nounwind
declare void @free(ptr noundef) #1

; Function Attrs: nounwind
declare i32 @execvp(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind
declare ptr @getenv(ptr noundef) #1

; Function Attrs: nounwind
declare i32 @asprintf(ptr noundef, ptr noundef, ...) #1

; Function Attrs: noreturn
declare void @xalloc_die() #9

; Function Attrs: nounwind
declare i32 @stat(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind
declare i32 @putenv(ptr noundef) #1

; Function Attrs: nounwind willreturn memory(read)
declare ptr @strchr(ptr noundef, i32 noundef) #6

declare noalias nonnull ptr @dir_name(ptr noundef) #2

declare noalias ptr @xreadlink(ptr noundef) #2

; Function Attrs: nounwind
declare ptr @strtok(ptr noundef, ptr noundef) #1

declare noalias nonnull ptr @file_name_concat(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nounwind
declare i32 @access(ptr noundef, i32 noundef) #1

declare i32 @c_toupper(i32 noundef) #2

declare i32 @xstrtoumax(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) #2

attributes #0 = { noinline noreturn nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { nounwind willreturn memory(read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { cold "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind willreturn memory(none) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nounwind }
attributes #11 = { noreturn nounwind }
attributes #12 = { nounwind willreturn memory(read) }
attributes #13 = { cold }
attributes #14 = { noreturn }
attributes #15 = { nounwind willreturn memory(none) }

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
