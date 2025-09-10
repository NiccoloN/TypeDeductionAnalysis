; ModuleID = 'llvm-link'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.option = type { ptr, i32, ptr, i32 }
%struct.infomap = type { ptr, ptr }
%struct.Tokens = type { i64, ptr, ptr, %struct.obstack, %struct.obstack, %struct.obstack }
%struct.obstack = type { i64, ptr, ptr, ptr, ptr, %union.anon, i64, %union.anon.0, %union.anon.0, ptr, i8 }
%union.anon = type { i64 }
%union.anon.0 = type { ptr }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.fstatus = type { i32, %struct.stat }
%struct.wc_lines = type { i32, i64, i64 }
%struct.__mbstate_t = type { i32, %union.anon.2 }
%union.anon.2 = type { i32 }

@stderr = external global ptr, align 8
@.str = private unnamed_addr constant [39 x i8] c"Try '%s --help' for more information.\0A\00", align 1
@program_name = external global ptr, align 8
@.str.1 = private unnamed_addr constant [71 x i8] c"Usage: %s [OPTION]... [FILE]...\0A  or:  %s [OPTION]... --files0-from=F\0A\00", align 1
@.str.2 = private unnamed_addr constant [221 x i8] c"Print newline, word, and byte counts for each FILE, and a total line if\0Amore than one FILE is specified.  A word is a nonempty sequence of non white\0Aspace delimited by white space characters or by start or end of input.\0A\00", align 1
@stdout = external global ptr, align 8
@.str.3 = private unnamed_addr constant [301 x i8] c"\0AThe options below may be used to select which counts are printed, always in\0Athe following order: newline, word, character, byte, maximum line length.\0A  -c, --bytes            print the byte counts\0A  -m, --chars            print the character counts\0A  -l, --lines            print the newline counts\0A\00", align 1
@.str.4 = private unnamed_addr constant [301 x i8] c"      --files0-from=F    read input from the files specified by\0A                           NUL-terminated names in file F;\0A                           If F is - then read names from standard input\0A  -L, --max-line-length  print the maximum display width\0A  -w, --words            print the word counts\0A\00", align 1
@.str.5 = private unnamed_addr constant [132 x i8] c"      --total=WHEN       when to print a line with total counts;\0A                           WHEN can be: auto, always, only, never\0A\00", align 1
@.str.6 = private unnamed_addr constant [48 x i8] c"      --help        display this help and exit\0A\00", align 1
@.str.7 = private unnamed_addr constant [57 x i8] c"      --version     output version information and exit\0A\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"wc\00", align 1
@.str.9 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1
@.str.11 = private unnamed_addr constant [24 x i8] c"/usr/local/share/locale\00", align 1
@page_size = internal global i64 0, align 8
@.str.12 = private unnamed_addr constant [16 x i8] c"POSIXLY_CORRECT\00", align 1
@posixly_correct = internal global i8 0, align 1
@print_bytes = internal global i8 0, align 1
@print_chars = internal global i8 0, align 1
@print_words = internal global i8 0, align 1
@print_lines = internal global i8 0, align 1
@print_linelength = internal global i8 0, align 1
@max_line_length = internal global i64 0, align 8
@total_bytes = internal global i64 0, align 8
@total_chars = internal global i64 0, align 8
@total_words = internal global i64 0, align 8
@total_lines = internal global i64 0, align 8
@.str.13 = private unnamed_addr constant [6 x i8] c"clLmw\00", align 1
@longopts = internal constant [11 x %struct.option] [%struct.option { ptr @.str.52, i32 0, ptr null, i32 99 }, %struct.option { ptr @.str.53, i32 0, ptr null, i32 109 }, %struct.option { ptr @.str.54, i32 0, ptr null, i32 108 }, %struct.option { ptr @.str.55, i32 0, ptr null, i32 119 }, %struct.option { ptr @.str.56, i32 0, ptr null, i32 128 }, %struct.option { ptr @.str.57, i32 1, ptr null, i32 129 }, %struct.option { ptr @.str.58, i32 0, ptr null, i32 76 }, %struct.option { ptr @.str.34, i32 1, ptr null, i32 130 }, %struct.option { ptr @.str.59, i32 0, ptr null, i32 -130 }, %struct.option { ptr @.str.60, i32 0, ptr null, i32 -131 }, %struct.option zeroinitializer], align 16
@debug = internal global i8 0, align 1
@optarg = external global ptr, align 8
@total_types = internal constant [4 x i32] [i32 0, i32 1, i32 2, i32 3], align 16
@.str.14 = private unnamed_addr constant [8 x i8] c"--total\00", align 1
@total_args = internal constant [5 x ptr] [ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr null], align 16
@argmatch_die = external global ptr, align 8
@total_mode = internal global i32 0, align 4
@.str.15 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@Version = external global ptr, align 8
@.str.16 = private unnamed_addr constant [11 x i8] c"Paul Rubin\00", align 1
@.str.17 = private unnamed_addr constant [16 x i8] c"David MacKenzie\00", align 1
@wc_isprint = internal global [256 x i8] zeroinitializer, align 16
@wc_isspace = internal global [256 x i8] zeroinitializer, align 16
@optind = external global i32, align 4
@.str.18 = private unnamed_addr constant [17 x i8] c"extra operand %s\00", align 1
@.str.19 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.20 = private unnamed_addr constant [52 x i8] c"file operands cannot be combined with --files0-from\00", align 1
@.str.21 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@stdin = external global ptr, align 8
@.str.22 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.23 = private unnamed_addr constant [27 x i8] c"cannot open %s for reading\00", align 1
@.str.24 = private unnamed_addr constant [31 x i8] c"cannot read file names from %s\00", align 1
@main.stdin_only = internal global [1 x ptr] zeroinitializer, align 8
@number_width = internal global i32 0, align 4
@.str.25 = private unnamed_addr constant [63 x i8] c"when reading file names from stdin, no file name of %s allowed\00", align 1
@.str.26 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.27 = private unnamed_addr constant [30 x i8] c"invalid zero-length file name\00", align 1
@.str.28 = private unnamed_addr constant [11 x i8] c"%s:%zu: %s\00", align 1
@.str.29 = private unnamed_addr constant [15 x i8] c"%s: read error\00", align 1
@total_lines_overflow = internal global i8 0, align 1
@.str.30 = private unnamed_addr constant [12 x i8] c"total lines\00", align 1
@total_words_overflow = internal global i8 0, align 1
@.str.31 = private unnamed_addr constant [12 x i8] c"total words\00", align 1
@total_chars_overflow = internal global i8 0, align 1
@.str.32 = private unnamed_addr constant [17 x i8] c"total characters\00", align 1
@total_bytes_overflow = internal global i8 0, align 1
@.str.33 = private unnamed_addr constant [12 x i8] c"total bytes\00", align 1
@.str.34 = private unnamed_addr constant [6 x i8] c"total\00", align 1
@have_read_stdin = internal global i8 0, align 1
@.str.35 = private unnamed_addr constant [56 x i8] c"\0AWith no FILE, or when FILE is -, read standard input.\0A\00", align 1
@.str.36 = private unnamed_addr constant [2 x i8] c"[\00", align 1
@.str.37 = private unnamed_addr constant [16 x i8] c"test invocation\00", align 1
@.str.38 = private unnamed_addr constant [22 x i8] c"Multi-call invocation\00", align 1
@.str.39 = private unnamed_addr constant [10 x i8] c"sha224sum\00", align 1
@.str.40 = private unnamed_addr constant [15 x i8] c"sha2 utilities\00", align 1
@.str.41 = private unnamed_addr constant [10 x i8] c"sha256sum\00", align 1
@.str.42 = private unnamed_addr constant [10 x i8] c"sha384sum\00", align 1
@.str.43 = private unnamed_addr constant [10 x i8] c"sha512sum\00", align 1
@__const.emit_ancillary_info.infomap = private unnamed_addr constant [7 x %struct.infomap] [%struct.infomap { ptr @.str.36, ptr @.str.37 }, %struct.infomap { ptr @.str.10, ptr @.str.38 }, %struct.infomap { ptr @.str.39, ptr @.str.40 }, %struct.infomap { ptr @.str.41, ptr @.str.40 }, %struct.infomap { ptr @.str.42, ptr @.str.40 }, %struct.infomap { ptr @.str.43, ptr @.str.40 }, %struct.infomap zeroinitializer], align 16
@.str.44 = private unnamed_addr constant [23 x i8] c"\0A%s online help: <%s>\0A\00", align 1
@.str.45 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1
@.str.46 = private unnamed_addr constant [4 x i8] c"en_\00", align 1
@.str.47 = private unnamed_addr constant [71 x i8] c"Report any translation bugs to <https://translationproject.org/team/>\0A\00", align 1
@.str.48 = private unnamed_addr constant [5 x i8] c"test\00", align 1
@.str.49 = private unnamed_addr constant [27 x i8] c"Full documentation <%s%s>\0A\00", align 1
@.str.50 = private unnamed_addr constant [51 x i8] c"or available locally via: info '(coreutils) %s%s'\0A\00", align 1
@.str.51 = private unnamed_addr constant [12 x i8] c" invocation\00", align 1
@.str.52 = private unnamed_addr constant [6 x i8] c"bytes\00", align 1
@.str.53 = private unnamed_addr constant [6 x i8] c"chars\00", align 1
@.str.54 = private unnamed_addr constant [6 x i8] c"lines\00", align 1
@.str.55 = private unnamed_addr constant [6 x i8] c"words\00", align 1
@.str.56 = private unnamed_addr constant [6 x i8] c"debug\00", align 1
@.str.57 = private unnamed_addr constant [12 x i8] c"files0-from\00", align 1
@.str.58 = private unnamed_addr constant [16 x i8] c"max-line-length\00", align 1
@.str.59 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.60 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@.str.61 = private unnamed_addr constant [5 x i8] c"auto\00", align 1
@.str.62 = private unnamed_addr constant [7 x i8] c"always\00", align 1
@.str.63 = private unnamed_addr constant [5 x i8] c"only\00", align 1
@.str.64 = private unnamed_addr constant [6 x i8] c"never\00", align 1
@.str.65 = private unnamed_addr constant [15 x i8] c"standard input\00", align 1
@wc_lines.use_avx2 = internal global i8 0, align 1
@__cpu_model = external dso_local global { i32, i32, i32, [1 x i32] }
@.str.66 = private unnamed_addr constant [28 x i8] c"using avx2 hardware support\00", align 1
@.str.67 = private unnamed_addr constant [26 x i8] c"avx2 support not detected\00", align 1
@write_counts.format_sp_int = internal constant [5 x i8] c" %*s\00", align 1
@.str.68 = private unnamed_addr constant [4 x i8] c" %s\00", align 1

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
  %call = call ptr @gettext(ptr noundef @.str) #13
  %2 = load ptr, ptr @program_name, align 8
  %call1 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef %call, ptr noundef %2)
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %entry
  %call2 = call ptr @gettext(ptr noundef @.str.1) #13
  %3 = load ptr, ptr @program_name, align 8
  %4 = load ptr, ptr @program_name, align 8
  %call3 = call i32 (ptr, ...) @printf(ptr noundef %call2, ptr noundef %3, ptr noundef %4)
  %call4 = call ptr @gettext(ptr noundef @.str.2) #13
  %5 = load ptr, ptr @stdout, align 8
  %call5 = call i32 @fputs_unlocked(ptr noundef %call4, ptr noundef %5)
  call void @emit_stdin_note()
  %call6 = call ptr @gettext(ptr noundef @.str.3) #13
  %6 = load ptr, ptr @stdout, align 8
  %call7 = call i32 @fputs_unlocked(ptr noundef %call6, ptr noundef %6)
  %call8 = call ptr @gettext(ptr noundef @.str.4) #13
  %7 = load ptr, ptr @stdout, align 8
  %call9 = call i32 @fputs_unlocked(ptr noundef %call8, ptr noundef %7)
  %call10 = call ptr @gettext(ptr noundef @.str.5) #13
  %8 = load ptr, ptr @stdout, align 8
  %call11 = call i32 @fputs_unlocked(ptr noundef %call10, ptr noundef %8)
  %call12 = call ptr @gettext(ptr noundef @.str.6) #13
  %9 = load ptr, ptr @stdout, align 8
  %call13 = call i32 @fputs_unlocked(ptr noundef %call12, ptr noundef %9)
  %call14 = call ptr @gettext(ptr noundef @.str.7) #13
  %10 = load ptr, ptr @stdout, align 8
  %call15 = call i32 @fputs_unlocked(ptr noundef %call14, ptr noundef %10)
  call void @emit_ancillary_info(ptr noundef @.str.8)
  br label %if.end

if.end:                                           ; preds = %if.else, %do.end
  %11 = load i32, ptr %status.addr, align 4
  call void @exit(i32 noundef %11) #14
  unreachable
}

; Function Attrs: nounwind
declare ptr @gettext(ptr noundef) #1

declare i32 @fprintf(ptr noundef, ptr noundef, ...) #2

declare i32 @printf(ptr noundef, ...) #2

declare i32 @fputs_unlocked(ptr noundef, ptr noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal void @emit_stdin_note() #3 {
entry:
  %call = call ptr @gettext(ptr noundef @.str.35) #13
  %0 = load ptr, ptr @stdout, align 8
  %call1 = call i32 @fputs_unlocked(ptr noundef %call, ptr noundef %0)
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
  %call = call i32 @strcmp(ptr noundef %3, ptr noundef %5) #15
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
  %call6 = call ptr @gettext(ptr noundef @.str.44) #13
  %call7 = call i32 (ptr, ...) @printf(ptr noundef %call6, ptr noundef @.str.15, ptr noundef @.str.45)
  %call8 = call ptr @setlocale(i32 noundef 5, ptr noundef null) #13
  store ptr %call8, ptr %lc_messages, align 8
  %12 = load ptr, ptr %lc_messages, align 8
  %tobool9 = icmp ne ptr %12, null
  br i1 %tobool9, label %land.lhs.true, label %if.end15

land.lhs.true:                                    ; preds = %if.end
  %13 = load ptr, ptr %lc_messages, align 8
  %call10 = call i32 @strncmp(ptr noundef %13, ptr noundef @.str.46, i64 noundef 3) #15
  %tobool11 = icmp ne i32 %call10, 0
  br i1 %tobool11, label %if.then12, label %if.end15

if.then12:                                        ; preds = %land.lhs.true
  %call13 = call ptr @gettext(ptr noundef @.str.47) #13
  %14 = load ptr, ptr @stdout, align 8
  %call14 = call i32 @fputs_unlocked(ptr noundef %call13, ptr noundef %14)
  br label %if.end15

if.end15:                                         ; preds = %if.then12, %land.lhs.true, %if.end
  %15 = load ptr, ptr %program.addr, align 8
  %call16 = call i32 @strcmp(ptr noundef %15, ptr noundef @.str.36) #15
  %cmp17 = icmp eq i32 %call16, 0
  br i1 %cmp17, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end15
  br label %cond.end

cond.false:                                       ; preds = %if.end15
  %16 = load ptr, ptr %program.addr, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ @.str.48, %cond.true ], [ %16, %cond.false ]
  store ptr %cond, ptr %url_program, align 8
  %call18 = call ptr @gettext(ptr noundef @.str.49) #13
  %17 = load ptr, ptr %url_program, align 8
  %call19 = call i32 (ptr, ...) @printf(ptr noundef %call18, ptr noundef @.str.45, ptr noundef %17)
  %call20 = call ptr @gettext(ptr noundef @.str.50) #13
  %18 = load ptr, ptr %node, align 8
  %19 = load ptr, ptr %node, align 8
  %20 = load ptr, ptr %program.addr, align 8
  %cmp21 = icmp eq ptr %19, %20
  %21 = zext i1 %cmp21 to i64
  %cond22 = select i1 %cmp21, ptr @.str.51, ptr @.str.9
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
  %optc = alloca i32, align 4
  %nfiles = alloca i64, align 8
  %files = alloca ptr, align 8
  %files_from = alloca ptr, align 8
  %fstatus = alloca ptr, align 8
  %tok = alloca %struct.Tokens, align 8
  %i = alloca i32, align 4
  %i51 = alloca i32, align 4
  %read_tokens = alloca i8, align 1
  %ai = alloca ptr, align 8
  %stream = alloca ptr, align 8
  %st = alloca %struct.stat, align 8
  %ok = alloca i8, align 1
  %ai_err = alloca i32, align 4
  %file_name = alloca ptr, align 8
  %i154 = alloca i32, align 4
  %skip_file = alloca i8, align 1
  store i32 0, ptr %retval, align 4
  store i32 %argc, ptr %argc.addr, align 4
  store ptr %argv, ptr %argv.addr, align 8
  store ptr null, ptr %files_from, align 8
  %0 = load ptr, ptr %argv.addr, align 8
  %arrayidx = getelementptr inbounds ptr, ptr %0, i64 0
  %1 = load ptr, ptr %arrayidx, align 8
  call void @set_program_name(ptr noundef %1)
  %call = call ptr @setlocale(i32 noundef 6, ptr noundef @.str.9) #13
  %call1 = call ptr @bindtextdomain(ptr noundef @.str.10, ptr noundef @.str.11) #13
  %call2 = call ptr @textdomain(ptr noundef @.str.10) #13
  %call3 = call i32 @atexit(ptr noundef @close_stdout) #13
  %call4 = call i32 @getpagesize() #16
  %conv = sext i32 %call4 to i64
  store i64 %conv, ptr @page_size, align 8
  %2 = load ptr, ptr @stdout, align 8
  %call5 = call i32 @setvbuf(ptr noundef %2, ptr noundef null, i32 noundef 1, i64 noundef 0) #13
  %call6 = call ptr @getenv(ptr noundef @.str.12) #13
  %cmp = icmp ne ptr %call6, null
  %frombool = zext i1 %cmp to i8
  store i8 %frombool, ptr @posixly_correct, align 1
  store i8 0, ptr @print_bytes, align 1
  store i8 0, ptr @print_chars, align 1
  store i8 0, ptr @print_words, align 1
  store i8 0, ptr @print_lines, align 1
  store i8 0, ptr @print_linelength, align 1
  store i64 0, ptr @max_line_length, align 8
  store i64 0, ptr @total_bytes, align 8
  store i64 0, ptr @total_chars, align 8
  store i64 0, ptr @total_words, align 8
  store i64 0, ptr @total_lines, align 8
  br label %while.cond

while.cond:                                       ; preds = %sw.epilog, %entry
  %3 = load i32, ptr %argc.addr, align 4
  %4 = load ptr, ptr %argv.addr, align 8
  %call8 = call i32 @getopt_long(i32 noundef %3, ptr noundef %4, ptr noundef @.str.13, ptr noundef @longopts, ptr noundef null) #13
  store i32 %call8, ptr %optc, align 4
  %cmp9 = icmp ne i32 %call8, -1
  br i1 %cmp9, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %5 = load i32, ptr %optc, align 4
  switch i32 %5, label %sw.default [
    i32 99, label %sw.bb
    i32 109, label %sw.bb11
    i32 108, label %sw.bb12
    i32 119, label %sw.bb13
    i32 76, label %sw.bb14
    i32 128, label %sw.bb15
    i32 129, label %sw.bb16
    i32 130, label %sw.bb17
    i32 -130, label %sw.bb20
    i32 -131, label %sw.bb21
  ]

sw.bb:                                            ; preds = %while.body
  store i8 1, ptr @print_bytes, align 1
  br label %sw.epilog

sw.bb11:                                          ; preds = %while.body
  store i8 1, ptr @print_chars, align 1
  br label %sw.epilog

sw.bb12:                                          ; preds = %while.body
  store i8 1, ptr @print_lines, align 1
  br label %sw.epilog

sw.bb13:                                          ; preds = %while.body
  store i8 1, ptr @print_words, align 1
  br label %sw.epilog

sw.bb14:                                          ; preds = %while.body
  store i8 1, ptr @print_linelength, align 1
  br label %sw.epilog

sw.bb15:                                          ; preds = %while.body
  store i8 1, ptr @debug, align 1
  br label %sw.epilog

sw.bb16:                                          ; preds = %while.body
  %6 = load ptr, ptr @optarg, align 8
  store ptr %6, ptr %files_from, align 8
  br label %sw.epilog

sw.bb17:                                          ; preds = %while.body
  %7 = load ptr, ptr @optarg, align 8
  %8 = load ptr, ptr @argmatch_die, align 8
  %call18 = call i64 @__xargmatch_internal(ptr noundef @.str.14, ptr noundef %7, ptr noundef @total_args, ptr noundef @total_types, i64 noundef 4, ptr noundef %8, i1 noundef zeroext true)
  %arrayidx19 = getelementptr inbounds [4 x i32], ptr @total_types, i64 0, i64 %call18
  %9 = load i32, ptr %arrayidx19, align 4
  store i32 %9, ptr @total_mode, align 4
  br label %sw.epilog

sw.bb20:                                          ; preds = %while.body
  call void @usage(i32 noundef 0) #17
  unreachable

sw.bb21:                                          ; preds = %while.body
  %10 = load ptr, ptr @stdout, align 8
  %11 = load ptr, ptr @Version, align 8
  %call22 = call ptr @proper_name_lite(ptr noundef @.str.16, ptr noundef @.str.16)
  %call23 = call ptr @proper_name_lite(ptr noundef @.str.17, ptr noundef @.str.17)
  call void (ptr, ptr, ptr, ptr, ...) @version_etc(ptr noundef %10, ptr noundef @.str.8, ptr noundef @.str.15, ptr noundef %11, ptr noundef %call22, ptr noundef %call23, ptr noundef null)
  call void @exit(i32 noundef 0) #14
  unreachable

sw.default:                                       ; preds = %while.body
  call void @usage(i32 noundef 1) #17
  unreachable

sw.epilog:                                        ; preds = %sw.bb17, %sw.bb16, %sw.bb15, %sw.bb14, %sw.bb13, %sw.bb12, %sw.bb11, %sw.bb
  br label %while.cond, !llvm.loop !8

while.end:                                        ; preds = %while.cond
  %12 = load i8, ptr @print_lines, align 1
  %tobool = trunc i8 %12 to i1
  br i1 %tobool, label %if.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %while.end
  %13 = load i8, ptr @print_words, align 1
  %tobool25 = trunc i8 %13 to i1
  br i1 %tobool25, label %if.end, label %lor.lhs.false27

lor.lhs.false27:                                  ; preds = %lor.lhs.false
  %14 = load i8, ptr @print_chars, align 1
  %tobool28 = trunc i8 %14 to i1
  br i1 %tobool28, label %if.end, label %lor.lhs.false30

lor.lhs.false30:                                  ; preds = %lor.lhs.false27
  %15 = load i8, ptr @print_bytes, align 1
  %tobool31 = trunc i8 %15 to i1
  br i1 %tobool31, label %if.end, label %lor.lhs.false33

lor.lhs.false33:                                  ; preds = %lor.lhs.false30
  %16 = load i8, ptr @print_linelength, align 1
  %tobool34 = trunc i8 %16 to i1
  br i1 %tobool34, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false33
  store i8 1, ptr @print_bytes, align 1
  store i8 1, ptr @print_words, align 1
  store i8 1, ptr @print_lines, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false33, %lor.lhs.false30, %lor.lhs.false27, %lor.lhs.false, %while.end
  %17 = load i8, ptr @print_linelength, align 1
  %tobool36 = trunc i8 %17 to i1
  br i1 %tobool36, label %if.then37, label %if.end48

if.then37:                                        ; preds = %if.end
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then37
  %18 = load i32, ptr %i, align 4
  %cmp38 = icmp sle i32 %18, 255
  br i1 %cmp38, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %call40 = call ptr @__ctype_b_loc() #16
  %19 = load ptr, ptr %call40, align 8
  %20 = load i32, ptr %i, align 4
  %idxprom = sext i32 %20 to i64
  %arrayidx41 = getelementptr inbounds i16, ptr %19, i64 %idxprom
  %21 = load i16, ptr %arrayidx41, align 2
  %conv42 = zext i16 %21 to i32
  %and = and i32 %conv42, 16384
  %tobool43 = icmp ne i32 %and, 0
  %lnot = xor i1 %tobool43, true
  %lnot44 = xor i1 %lnot, true
  %22 = load i32, ptr %i, align 4
  %idxprom45 = sext i32 %22 to i64
  %arrayidx46 = getelementptr inbounds [256 x i8], ptr @wc_isprint, i64 0, i64 %idxprom45
  %frombool47 = zext i1 %lnot44 to i8
  store i8 %frombool47, ptr %arrayidx46, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %23 = load i32, ptr %i, align 4
  %inc = add nsw i32 %23, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !9

for.end:                                          ; preds = %for.cond
  br label %if.end48

if.end48:                                         ; preds = %for.end, %if.end
  %24 = load i8, ptr @print_words, align 1
  %tobool49 = trunc i8 %24 to i1
  br i1 %tobool49, label %if.then50, label %if.end71

if.then50:                                        ; preds = %if.end48
  store i32 0, ptr %i51, align 4
  br label %for.cond52

for.cond52:                                       ; preds = %for.inc68, %if.then50
  %25 = load i32, ptr %i51, align 4
  %cmp53 = icmp sle i32 %25, 255
  br i1 %cmp53, label %for.body55, label %for.end70

for.body55:                                       ; preds = %for.cond52
  %call56 = call ptr @__ctype_b_loc() #16
  %26 = load ptr, ptr %call56, align 8
  %27 = load i32, ptr %i51, align 4
  %idxprom57 = sext i32 %27 to i64
  %arrayidx58 = getelementptr inbounds i16, ptr %26, i64 %idxprom57
  %28 = load i16, ptr %arrayidx58, align 2
  %conv59 = zext i16 %28 to i32
  %and60 = and i32 %conv59, 8192
  %tobool61 = icmp ne i32 %and60, 0
  br i1 %tobool61, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %for.body55
  %29 = load i32, ptr %i51, align 4
  %call62 = call i32 @btoc32(i32 noundef %29) #15
  %call63 = call i32 @iswnbspace(i32 noundef %call62) #15
  %tobool64 = icmp ne i32 %call63, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %for.body55
  %30 = phi i1 [ true, %for.body55 ], [ %tobool64, %lor.rhs ]
  %31 = load i32, ptr %i51, align 4
  %idxprom65 = sext i32 %31 to i64
  %arrayidx66 = getelementptr inbounds [256 x i8], ptr @wc_isspace, i64 0, i64 %idxprom65
  %frombool67 = zext i1 %30 to i8
  store i8 %frombool67, ptr %arrayidx66, align 1
  br label %for.inc68

for.inc68:                                        ; preds = %lor.end
  %32 = load i32, ptr %i51, align 4
  %inc69 = add nsw i32 %32, 1
  store i32 %inc69, ptr %i51, align 4
  br label %for.cond52, !llvm.loop !10

for.end70:                                        ; preds = %for.cond52
  br label %if.end71

if.end71:                                         ; preds = %for.end70, %if.end48
  store i8 0, ptr %read_tokens, align 1
  %33 = load ptr, ptr %files_from, align 8
  %tobool72 = icmp ne ptr %33, null
  br i1 %tobool72, label %if.then73, label %if.else128

if.then73:                                        ; preds = %if.end71
  %34 = load i32, ptr @optind, align 4
  %35 = load i32, ptr %argc.addr, align 4
  %cmp74 = icmp slt i32 %34, %35
  br i1 %cmp74, label %if.then76, label %if.end83

if.then76:                                        ; preds = %if.then73
  %call77 = call ptr @gettext(ptr noundef @.str.18) #13
  %36 = load ptr, ptr %argv.addr, align 8
  %37 = load i32, ptr @optind, align 4
  %idxprom78 = sext i32 %37 to i64
  %arrayidx79 = getelementptr inbounds ptr, ptr %36, i64 %idxprom78
  %38 = load ptr, ptr %arrayidx79, align 8
  %call80 = call ptr @quotearg_style(i32 noundef 4, ptr noundef %38)
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %call77, ptr noundef %call80) #18
  %39 = load ptr, ptr @stderr, align 8
  %call81 = call ptr @gettext(ptr noundef @.str.20) #13
  %call82 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %39, ptr noundef @.str.19, ptr noundef %call81)
  call void @usage(i32 noundef 1) #17
  unreachable

if.end83:                                         ; preds = %if.then73
  %40 = load ptr, ptr %files_from, align 8
  %call84 = call i32 @strcmp(ptr noundef %40, ptr noundef @.str.21) #15
  %cmp85 = icmp eq i32 %call84, 0
  br i1 %cmp85, label %if.then87, label %if.else

if.then87:                                        ; preds = %if.end83
  %41 = load ptr, ptr @stdin, align 8
  store ptr %41, ptr %stream, align 8
  br label %if.end96

if.else:                                          ; preds = %if.end83
  %42 = load ptr, ptr %files_from, align 8
  %call88 = call noalias ptr @rpl_fopen(ptr noundef %42, ptr noundef @.str.22)
  store ptr %call88, ptr %stream, align 8
  %43 = load ptr, ptr %stream, align 8
  %cmp89 = icmp eq ptr %43, null
  br i1 %cmp89, label %if.then91, label %if.end95

if.then91:                                        ; preds = %if.else
  %call92 = call ptr @__errno_location() #16
  %44 = load i32, ptr %call92, align 4
  %call93 = call ptr @gettext(ptr noundef @.str.23) #13
  %45 = load ptr, ptr %files_from, align 8
  %call94 = call ptr @quotearg_style(i32 noundef 4, ptr noundef %45)
  call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %44, ptr noundef %call93, ptr noundef %call94) #18
  unreachable

if.end95:                                         ; preds = %if.else
  br label %if.end96

if.end96:                                         ; preds = %if.end95, %if.then87
  %46 = load ptr, ptr %stream, align 8
  %call97 = call i32 @fileno(ptr noundef %46) #13
  %call98 = call i32 @fstat(i32 noundef %call97, ptr noundef %st) #13
  %cmp99 = icmp eq i32 %call98, 0
  br i1 %cmp99, label %land.lhs.true, label %if.else125

land.lhs.true:                                    ; preds = %if.end96
  %st_mode = getelementptr inbounds %struct.stat, ptr %st, i32 0, i32 3
  %47 = load i32, ptr %st_mode, align 8
  %and101 = and i32 %47, 61440
  %cmp102 = icmp eq i32 %and101, 32768
  br i1 %cmp102, label %land.lhs.true104, label %if.else125

land.lhs.true104:                                 ; preds = %land.lhs.true
  %st_size = getelementptr inbounds %struct.stat, ptr %st, i32 0, i32 8
  %48 = load i64, ptr %st_size, align 8
  %conv105 = sitofp i64 %48 to double
  %call106 = call double @physmem_available()
  %div = fdiv double %call106, 2.000000e+00
  %cmp107 = fcmp olt double 0x4164000000000000, %div
  br i1 %cmp107, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true104
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true104
  %call109 = call double @physmem_available()
  %div110 = fdiv double %call109, 2.000000e+00
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double [ 0x4164000000000000, %cond.true ], [ %div110, %cond.false ]
  %cmp111 = fcmp ole double %conv105, %cond
  br i1 %cmp111, label %if.then113, label %if.else125

if.then113:                                       ; preds = %cond.end
  store i8 1, ptr %read_tokens, align 1
  call void @readtokens0_init(ptr noundef %tok)
  %49 = load ptr, ptr %stream, align 8
  %call114 = call zeroext i1 @readtokens0(ptr noundef %49, ptr noundef %tok)
  br i1 %call114, label %lor.lhs.false115, label %if.then119

lor.lhs.false115:                                 ; preds = %if.then113
  %50 = load ptr, ptr %stream, align 8
  %call116 = call i32 @rpl_fclose(ptr noundef %50)
  %cmp117 = icmp ne i32 %call116, 0
  br i1 %cmp117, label %if.then119, label %if.end122

if.then119:                                       ; preds = %lor.lhs.false115, %if.then113
  %call120 = call ptr @gettext(ptr noundef @.str.24) #13
  %51 = load ptr, ptr %files_from, align 8
  %call121 = call ptr @quotearg_style(i32 noundef 4, ptr noundef %51)
  call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef 0, ptr noundef %call120, ptr noundef %call121) #18
  unreachable

if.end122:                                        ; preds = %lor.lhs.false115
  %tok123 = getelementptr inbounds %struct.Tokens, ptr %tok, i32 0, i32 1
  %52 = load ptr, ptr %tok123, align 8
  store ptr %52, ptr %files, align 8
  %n_tok = getelementptr inbounds %struct.Tokens, ptr %tok, i32 0, i32 0
  %53 = load i64, ptr %n_tok, align 8
  store i64 %53, ptr %nfiles, align 8
  %54 = load ptr, ptr %files, align 8
  %call124 = call ptr @argv_iter_init_argv(ptr noundef %54)
  store ptr %call124, ptr %ai, align 8
  br label %if.end127

if.else125:                                       ; preds = %cond.end, %land.lhs.true, %if.end96
  store ptr null, ptr %files, align 8
  store i64 0, ptr %nfiles, align 8
  %55 = load ptr, ptr %stream, align 8
  %call126 = call ptr @argv_iter_init_stream(ptr noundef %55)
  store ptr %call126, ptr %ai, align 8
  br label %if.end127

if.end127:                                        ; preds = %if.else125, %if.end122
  br label %if.end143

if.else128:                                       ; preds = %if.end71
  %56 = load i32, ptr @optind, align 4
  %57 = load i32, ptr %argc.addr, align 4
  %cmp129 = icmp slt i32 %56, %57
  br i1 %cmp129, label %cond.true131, label %cond.false132

cond.true131:                                     ; preds = %if.else128
  %58 = load ptr, ptr %argv.addr, align 8
  %59 = load i32, ptr @optind, align 4
  %idx.ext = sext i32 %59 to i64
  %add.ptr = getelementptr inbounds ptr, ptr %58, i64 %idx.ext
  br label %cond.end133

cond.false132:                                    ; preds = %if.else128
  br label %cond.end133

cond.end133:                                      ; preds = %cond.false132, %cond.true131
  %cond134 = phi ptr [ %add.ptr, %cond.true131 ], [ @main.stdin_only, %cond.false132 ]
  store ptr %cond134, ptr %files, align 8
  %60 = load i32, ptr @optind, align 4
  %61 = load i32, ptr %argc.addr, align 4
  %cmp135 = icmp slt i32 %60, %61
  br i1 %cmp135, label %cond.true137, label %cond.false138

cond.true137:                                     ; preds = %cond.end133
  %62 = load i32, ptr %argc.addr, align 4
  %63 = load i32, ptr @optind, align 4
  %sub = sub nsw i32 %62, %63
  br label %cond.end139

cond.false138:                                    ; preds = %cond.end133
  br label %cond.end139

cond.end139:                                      ; preds = %cond.false138, %cond.true137
  %cond140 = phi i32 [ %sub, %cond.true137 ], [ 1, %cond.false138 ]
  %conv141 = sext i32 %cond140 to i64
  store i64 %conv141, ptr %nfiles, align 8
  %64 = load ptr, ptr %files, align 8
  %call142 = call ptr @argv_iter_init_argv(ptr noundef %64)
  store ptr %call142, ptr %ai, align 8
  br label %if.end143

if.end143:                                        ; preds = %cond.end139, %if.end127
  %65 = load ptr, ptr %ai, align 8
  %tobool144 = icmp ne ptr %65, null
  br i1 %tobool144, label %if.end146, label %if.then145

if.then145:                                       ; preds = %if.end143
  call void @xalloc_die() #17
  unreachable

if.end146:                                        ; preds = %if.end143
  %66 = load i64, ptr %nfiles, align 8
  %67 = load ptr, ptr %files, align 8
  %call147 = call ptr @get_input_fstatus(i64 noundef %66, ptr noundef %67)
  store ptr %call147, ptr %fstatus, align 8
  %68 = load i32, ptr @total_mode, align 4
  %cmp148 = icmp eq i32 %68, 2
  br i1 %cmp148, label %if.then150, label %if.else151

if.then150:                                       ; preds = %if.end146
  store i32 1, ptr @number_width, align 4
  br label %if.end153

if.else151:                                       ; preds = %if.end146
  %69 = load i64, ptr %nfiles, align 8
  %70 = load ptr, ptr %fstatus, align 8
  %call152 = call i32 @compute_number_width(i64 noundef %69, ptr noundef %70) #15
  store i32 %call152, ptr @number_width, align 4
  br label %if.end153

if.end153:                                        ; preds = %if.else151, %if.then150
  store i8 1, ptr %ok, align 1
  store i32 0, ptr %i154, align 4
  br label %for.cond155

for.cond155:                                      ; preds = %for.inc207, %if.end153
  %71 = load ptr, ptr %ai, align 8
  %call156 = call ptr @argv_iter(ptr noundef %71, ptr noundef %ai_err)
  store ptr %call156, ptr %file_name, align 8
  %tobool157 = icmp ne ptr %call156, null
  br i1 %tobool157, label %for.body158, label %for.end209

for.body158:                                      ; preds = %for.cond155
  store i8 0, ptr %skip_file, align 1
  %72 = load ptr, ptr %files_from, align 8
  %tobool159 = icmp ne ptr %72, null
  br i1 %tobool159, label %land.lhs.true160, label %if.end171

land.lhs.true160:                                 ; preds = %for.body158
  %73 = load ptr, ptr %files_from, align 8
  %call161 = call i32 @strcmp(ptr noundef %73, ptr noundef @.str.21) #15
  %cmp162 = icmp eq i32 %call161, 0
  br i1 %cmp162, label %land.lhs.true164, label %if.end171

land.lhs.true164:                                 ; preds = %land.lhs.true160
  %74 = load ptr, ptr %file_name, align 8
  %call165 = call i32 @strcmp(ptr noundef %74, ptr noundef @.str.21) #15
  %cmp166 = icmp eq i32 %call165, 0
  br i1 %cmp166, label %if.then168, label %if.end171

if.then168:                                       ; preds = %land.lhs.true164
  %call169 = call ptr @gettext(ptr noundef @.str.25) #13
  %75 = load ptr, ptr %file_name, align 8
  %call170 = call ptr @quotearg_style(i32 noundef 4, ptr noundef %75)
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %call169, ptr noundef %call170) #18
  store i8 1, ptr %skip_file, align 1
  br label %if.end171

if.end171:                                        ; preds = %if.then168, %land.lhs.true164, %land.lhs.true160, %for.body158
  %76 = load ptr, ptr %file_name, align 8
  %arrayidx172 = getelementptr inbounds i8, ptr %76, i64 0
  %77 = load i8, ptr %arrayidx172, align 1
  %tobool173 = icmp ne i8 %77, 0
  br i1 %tobool173, label %if.end184, label %if.then174

if.then174:                                       ; preds = %if.end171
  %78 = load ptr, ptr %files_from, align 8
  %cmp175 = icmp eq ptr %78, null
  br i1 %cmp175, label %if.then177, label %if.else179

if.then177:                                       ; preds = %if.then174
  %call178 = call ptr @gettext(ptr noundef @.str.27) #13
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef @.str.26, ptr noundef %call178) #18
  br label %if.end183

if.else179:                                       ; preds = %if.then174
  %79 = load ptr, ptr %files_from, align 8
  %call180 = call ptr @quotearg_n_style_colon(i32 noundef 0, i32 noundef 3, ptr noundef %79)
  %80 = load ptr, ptr %ai, align 8
  %call181 = call i64 @argv_iter_n_args(ptr noundef %80) #15
  %call182 = call ptr @gettext(ptr noundef @.str.27) #13
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef @.str.28, ptr noundef %call180, i64 noundef %call181, ptr noundef %call182) #18
  br label %if.end183

if.end183:                                        ; preds = %if.else179, %if.then177
  store i8 1, ptr %skip_file, align 1
  br label %if.end184

if.end184:                                        ; preds = %if.end183, %if.end171
  %81 = load i8, ptr %skip_file, align 1
  %tobool185 = trunc i8 %81 to i1
  br i1 %tobool185, label %if.then186, label %if.else187

if.then186:                                       ; preds = %if.end184
  store i8 0, ptr %ok, align 1
  br label %if.end202

if.else187:                                       ; preds = %if.end184
  %82 = load ptr, ptr %file_name, align 8
  %83 = load ptr, ptr %fstatus, align 8
  %84 = load i64, ptr %nfiles, align 8
  %tobool188 = icmp ne i64 %84, 0
  br i1 %tobool188, label %cond.true189, label %cond.false190

cond.true189:                                     ; preds = %if.else187
  %85 = load i32, ptr %i154, align 4
  br label %cond.end191

cond.false190:                                    ; preds = %if.else187
  br label %cond.end191

cond.end191:                                      ; preds = %cond.false190, %cond.true189
  %cond192 = phi i32 [ %85, %cond.true189 ], [ 0, %cond.false190 ]
  %idxprom193 = sext i32 %cond192 to i64
  %arrayidx194 = getelementptr inbounds %struct.fstatus, ptr %83, i64 %idxprom193
  %call195 = call zeroext i1 @wc_file(ptr noundef %82, ptr noundef %arrayidx194)
  %conv196 = zext i1 %call195 to i32
  %86 = load i8, ptr %ok, align 1
  %tobool197 = trunc i8 %86 to i1
  %conv198 = zext i1 %tobool197 to i32
  %and199 = and i32 %conv198, %conv196
  %tobool200 = icmp ne i32 %and199, 0
  %frombool201 = zext i1 %tobool200 to i8
  store i8 %frombool201, ptr %ok, align 1
  br label %if.end202

if.end202:                                        ; preds = %cond.end191, %if.then186
  %87 = load i64, ptr %nfiles, align 8
  %tobool203 = icmp ne i64 %87, 0
  br i1 %tobool203, label %if.end206, label %if.then204

if.then204:                                       ; preds = %if.end202
  %88 = load ptr, ptr %fstatus, align 8
  %arrayidx205 = getelementptr inbounds %struct.fstatus, ptr %88, i64 0
  %failed = getelementptr inbounds %struct.fstatus, ptr %arrayidx205, i32 0, i32 0
  store i32 1, ptr %failed, align 8
  br label %if.end206

if.end206:                                        ; preds = %if.then204, %if.end202
  br label %for.inc207

for.inc207:                                       ; preds = %if.end206
  %89 = load i32, ptr %i154, align 4
  %inc208 = add nsw i32 %89, 1
  store i32 %inc208, ptr %i154, align 4
  br label %for.cond155, !llvm.loop !11

for.end209:                                       ; preds = %for.cond155
  %90 = load i32, ptr %ai_err, align 4
  switch i32 %90, label %sw.default217 [
    i32 2, label %sw.bb210
    i32 4, label %sw.bb211
    i32 3, label %sw.bb215
    i32 1, label %sw.bb216
  ]

sw.bb210:                                         ; preds = %for.end209
  br label %sw.epilog218

sw.bb211:                                         ; preds = %for.end209
  %call212 = call ptr @__errno_location() #16
  %91 = load i32, ptr %call212, align 4
  %call213 = call ptr @gettext(ptr noundef @.str.29) #13
  %92 = load ptr, ptr %files_from, align 8
  %call214 = call ptr @quotearg_n_style_colon(i32 noundef 0, i32 noundef 3, ptr noundef %92)
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %91, ptr noundef %call213, ptr noundef %call214) #18
  store i8 0, ptr %ok, align 1
  br label %sw.epilog218

sw.bb215:                                         ; preds = %for.end209
  call void @xalloc_die() #17
  unreachable

sw.bb216:                                         ; preds = %for.end209
  br label %sw.default217

sw.default217:                                    ; preds = %sw.bb216, %for.end209
  unreachable

sw.epilog218:                                     ; preds = %sw.bb211, %sw.bb210
  %93 = load i8, ptr %ok, align 1
  %tobool219 = trunc i8 %93 to i1
  br i1 %tobool219, label %land.lhs.true221, label %if.end236

land.lhs.true221:                                 ; preds = %sw.epilog218
  %94 = load ptr, ptr %files_from, align 8
  %tobool222 = icmp ne ptr %94, null
  br i1 %tobool222, label %if.end236, label %land.lhs.true223

land.lhs.true223:                                 ; preds = %land.lhs.true221
  %95 = load ptr, ptr %ai, align 8
  %call224 = call i64 @argv_iter_n_args(ptr noundef %95) #15
  %cmp225 = icmp eq i64 %call224, 0
  br i1 %cmp225, label %if.then227, label %if.end236

if.then227:                                       ; preds = %land.lhs.true223
  %96 = load ptr, ptr %fstatus, align 8
  %arrayidx228 = getelementptr inbounds %struct.fstatus, ptr %96, i64 0
  %call229 = call zeroext i1 @wc_file(ptr noundef null, ptr noundef %arrayidx228)
  %conv230 = zext i1 %call229 to i32
  %97 = load i8, ptr %ok, align 1
  %tobool231 = trunc i8 %97 to i1
  %conv232 = zext i1 %tobool231 to i32
  %and233 = and i32 %conv232, %conv230
  %tobool234 = icmp ne i32 %and233, 0
  %frombool235 = zext i1 %tobool234 to i8
  store i8 %frombool235, ptr %ok, align 1
  br label %if.end236

if.end236:                                        ; preds = %if.then227, %land.lhs.true223, %land.lhs.true221, %sw.epilog218
  %98 = load i8, ptr %read_tokens, align 1
  %tobool237 = trunc i8 %98 to i1
  br i1 %tobool237, label %if.then238, label %if.end239

if.then238:                                       ; preds = %if.end236
  call void @readtokens0_free(ptr noundef %tok)
  br label %if.end239

if.end239:                                        ; preds = %if.then238, %if.end236
  %99 = load i32, ptr @total_mode, align 4
  %cmp240 = icmp ne i32 %99, 3
  br i1 %cmp240, label %land.lhs.true242, label %if.end273

land.lhs.true242:                                 ; preds = %if.end239
  %100 = load i32, ptr @total_mode, align 4
  %cmp243 = icmp ne i32 %100, 0
  br i1 %cmp243, label %if.then249, label %lor.lhs.false245

lor.lhs.false245:                                 ; preds = %land.lhs.true242
  %101 = load ptr, ptr %ai, align 8
  %call246 = call i64 @argv_iter_n_args(ptr noundef %101) #15
  %cmp247 = icmp ult i64 1, %call246
  br i1 %cmp247, label %if.then249, label %if.end273

if.then249:                                       ; preds = %lor.lhs.false245, %land.lhs.true242
  %102 = load i8, ptr @total_lines_overflow, align 1
  %tobool250 = trunc i8 %102 to i1
  br i1 %tobool250, label %if.then251, label %if.end253

if.then251:                                       ; preds = %if.then249
  store i64 -1, ptr @total_lines, align 8
  %call252 = call ptr @gettext(ptr noundef @.str.30) #13
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 75, ptr noundef %call252) #18
  store i8 0, ptr %ok, align 1
  br label %if.end253

if.end253:                                        ; preds = %if.then251, %if.then249
  %103 = load i8, ptr @total_words_overflow, align 1
  %tobool254 = trunc i8 %103 to i1
  br i1 %tobool254, label %if.then255, label %if.end257

if.then255:                                       ; preds = %if.end253
  store i64 -1, ptr @total_words, align 8
  %call256 = call ptr @gettext(ptr noundef @.str.31) #13
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 75, ptr noundef %call256) #18
  store i8 0, ptr %ok, align 1
  br label %if.end257

if.end257:                                        ; preds = %if.then255, %if.end253
  %104 = load i8, ptr @total_chars_overflow, align 1
  %tobool258 = trunc i8 %104 to i1
  br i1 %tobool258, label %if.then259, label %if.end261

if.then259:                                       ; preds = %if.end257
  store i64 -1, ptr @total_chars, align 8
  %call260 = call ptr @gettext(ptr noundef @.str.32) #13
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 75, ptr noundef %call260) #18
  store i8 0, ptr %ok, align 1
  br label %if.end261

if.end261:                                        ; preds = %if.then259, %if.end257
  %105 = load i8, ptr @total_bytes_overflow, align 1
  %tobool262 = trunc i8 %105 to i1
  br i1 %tobool262, label %if.then263, label %if.end265

if.then263:                                       ; preds = %if.end261
  store i64 -1, ptr @total_bytes, align 8
  %call264 = call ptr @gettext(ptr noundef @.str.33) #13
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 75, ptr noundef %call264) #18
  store i8 0, ptr %ok, align 1
  br label %if.end265

if.end265:                                        ; preds = %if.then263, %if.end261
  %106 = load i64, ptr @total_lines, align 8
  %107 = load i64, ptr @total_words, align 8
  %108 = load i64, ptr @total_chars, align 8
  %109 = load i64, ptr @total_bytes, align 8
  %110 = load i64, ptr @max_line_length, align 8
  %111 = load i32, ptr @total_mode, align 4
  %cmp266 = icmp ne i32 %111, 2
  br i1 %cmp266, label %cond.true268, label %cond.false270

cond.true268:                                     ; preds = %if.end265
  %call269 = call ptr @gettext(ptr noundef @.str.34) #13
  br label %cond.end271

cond.false270:                                    ; preds = %if.end265
  br label %cond.end271

cond.end271:                                      ; preds = %cond.false270, %cond.true268
  %cond272 = phi ptr [ %call269, %cond.true268 ], [ null, %cond.false270 ]
  call void @write_counts(i64 noundef %106, i64 noundef %107, i64 noundef %108, i64 noundef %109, i64 noundef %110, ptr noundef %cond272)
  br label %if.end273

if.end273:                                        ; preds = %cond.end271, %lor.lhs.false245, %if.end239
  %112 = load ptr, ptr %ai, align 8
  call void @argv_iter_free(ptr noundef %112)
  %113 = load ptr, ptr %fstatus, align 8
  call void @free(ptr noundef %113) #13
  %114 = load i8, ptr @have_read_stdin, align 1
  %tobool274 = trunc i8 %114 to i1
  br i1 %tobool274, label %land.lhs.true276, label %if.end282

land.lhs.true276:                                 ; preds = %if.end273
  %call277 = call i32 @close(i32 noundef 0)
  %cmp278 = icmp ne i32 %call277, 0
  br i1 %cmp278, label %if.then280, label %if.end282

if.then280:                                       ; preds = %land.lhs.true276
  %call281 = call ptr @__errno_location() #16
  %115 = load i32, ptr %call281, align 4
  call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %115, ptr noundef @.str.21) #18
  unreachable

if.end282:                                        ; preds = %land.lhs.true276, %if.end273
  %116 = load i8, ptr %ok, align 1
  %tobool283 = trunc i8 %116 to i1
  %117 = zext i1 %tobool283 to i64
  %cond285 = select i1 %tobool283, i32 0, i32 1
  ret i32 %cond285
}

declare void @set_program_name(ptr noundef) #2

; Function Attrs: nounwind
declare ptr @bindtextdomain(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind
declare ptr @textdomain(ptr noundef) #1

declare void @close_stdout() #2

; Function Attrs: nounwind
declare i32 @atexit(ptr noundef) #1

; Function Attrs: nounwind willreturn memory(none)
declare i32 @getpagesize() #7

; Function Attrs: nounwind
declare i32 @setvbuf(ptr noundef, ptr noundef, i32 noundef, i64 noundef) #1

; Function Attrs: nounwind
declare ptr @getenv(ptr noundef) #1

; Function Attrs: nounwind
declare i32 @getopt_long(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

declare i64 @__xargmatch_internal(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef, i1 noundef zeroext) #2

declare ptr @proper_name_lite(ptr noundef, ptr noundef) #2

declare void @version_etc(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ...) #2

; Function Attrs: nounwind willreturn memory(none)
declare ptr @__ctype_b_loc() #7

; Function Attrs: nounwind willreturn memory(read)
declare i32 @btoc32(i32 noundef) #6

; Function Attrs: noinline nounwind optnone willreturn memory(read) uwtable
define internal i32 @iswnbspace(i32 noundef %wc) #8 {
entry:
  %wc.addr = alloca i32, align 4
  store i32 %wc, ptr %wc.addr, align 4
  %0 = load i8, ptr @posixly_correct, align 1
  %tobool = trunc i8 %0 to i1
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %1 = load i32, ptr %wc.addr, align 4
  %cmp = icmp eq i32 %1, 160
  br i1 %cmp, label %lor.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.rhs
  %2 = load i32, ptr %wc.addr, align 4
  %cmp1 = icmp eq i32 %2, 8199
  br i1 %cmp1, label %lor.end, label %lor.lhs.false2

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %3 = load i32, ptr %wc.addr, align 4
  %cmp3 = icmp eq i32 %3, 8239
  br i1 %cmp3, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %lor.lhs.false2
  %4 = load i32, ptr %wc.addr, align 4
  %cmp4 = icmp eq i32 %4, 8288
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %lor.lhs.false2, %lor.lhs.false, %land.rhs
  %5 = phi i1 [ true, %lor.lhs.false2 ], [ true, %lor.lhs.false ], [ true, %land.rhs ], [ %cmp4, %lor.rhs ]
  br label %land.end

land.end:                                         ; preds = %lor.end, %entry
  %6 = phi i1 [ false, %entry ], [ %5, %lor.end ]
  %land.ext = zext i1 %6 to i32
  ret i32 %land.ext
}

declare ptr @quotearg_style(i32 noundef, ptr noundef) #2

; Function Attrs: cold
declare void @error(i32 noundef, i32 noundef, ptr noundef, ...) #9

declare noalias ptr @rpl_fopen(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind willreturn memory(none)
declare ptr @__errno_location() #7

; Function Attrs: nounwind
declare i32 @fileno(ptr noundef) #1

; Function Attrs: nounwind
declare i32 @fstat(i32 noundef, ptr noundef) #1

declare double @physmem_available() #2

declare void @readtokens0_init(ptr noundef) #2

declare zeroext i1 @readtokens0(ptr noundef, ptr noundef) #2

declare i32 @rpl_fclose(ptr noundef) #2

declare ptr @argv_iter_init_argv(ptr noundef) #2

declare ptr @argv_iter_init_stream(ptr noundef) #2

; Function Attrs: noreturn
declare void @xalloc_die() #10

; Function Attrs: noinline nounwind optnone uwtable
define internal ptr @get_input_fstatus(i64 noundef %nfiles, ptr noundef %file) #3 {
entry:
  %nfiles.addr = alloca i64, align 8
  %file.addr = alloca ptr, align 8
  %fstatus = alloca ptr, align 8
  %i = alloca i64, align 8
  store i64 %nfiles, ptr %nfiles.addr, align 8
  store ptr %file, ptr %file.addr, align 8
  %0 = load i64, ptr %nfiles.addr, align 8
  %tobool = icmp ne i64 %0, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %1 = load i64, ptr %nfiles.addr, align 8
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %1, %cond.true ], [ 1, %cond.false ]
  %call = call noalias nonnull ptr @xnmalloc(i64 noundef %cond, i64 noundef 152) #19
  store ptr %call, ptr %fstatus, align 8
  %2 = load i64, ptr %nfiles.addr, align 8
  %cmp = icmp eq i64 %2, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %cond.end
  %3 = load i64, ptr %nfiles.addr, align 8
  %cmp1 = icmp eq i64 %3, 1
  br i1 %cmp1, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %lor.lhs.false
  %4 = load i8, ptr @print_lines, align 1
  %tobool2 = trunc i8 %4 to i1
  %conv = zext i1 %tobool2 to i32
  %5 = load i8, ptr @print_words, align 1
  %tobool3 = trunc i8 %5 to i1
  %conv4 = zext i1 %tobool3 to i32
  %add = add nsw i32 %conv, %conv4
  %6 = load i8, ptr @print_chars, align 1
  %tobool5 = trunc i8 %6 to i1
  %conv6 = zext i1 %tobool5 to i32
  %add7 = add nsw i32 %add, %conv6
  %7 = load i8, ptr @print_bytes, align 1
  %tobool8 = trunc i8 %7 to i1
  %conv9 = zext i1 %tobool8 to i32
  %add10 = add nsw i32 %add7, %conv9
  %8 = load i8, ptr @print_linelength, align 1
  %tobool11 = trunc i8 %8 to i1
  %conv12 = zext i1 %tobool11 to i32
  %add13 = add nsw i32 %add10, %conv12
  %cmp14 = icmp eq i32 %add13, 1
  br i1 %cmp14, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true, %cond.end
  %9 = load ptr, ptr %fstatus, align 8
  %arrayidx = getelementptr inbounds %struct.fstatus, ptr %9, i64 0
  %failed = getelementptr inbounds %struct.fstatus, ptr %arrayidx, i32 0, i32 0
  store i32 1, ptr %failed, align 8
  br label %if.end

if.else:                                          ; preds = %land.lhs.true, %lor.lhs.false
  store i64 0, ptr %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.else
  %10 = load i64, ptr %i, align 8
  %11 = load i64, ptr %nfiles.addr, align 8
  %cmp16 = icmp slt i64 %10, %11
  br i1 %cmp16, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %12 = load ptr, ptr %file.addr, align 8
  %13 = load i64, ptr %i, align 8
  %arrayidx18 = getelementptr inbounds ptr, ptr %12, i64 %13
  %14 = load ptr, ptr %arrayidx18, align 8
  %tobool19 = icmp ne ptr %14, null
  br i1 %tobool19, label %lor.lhs.false20, label %cond.true25

lor.lhs.false20:                                  ; preds = %for.body
  %15 = load ptr, ptr %file.addr, align 8
  %16 = load i64, ptr %i, align 8
  %arrayidx21 = getelementptr inbounds ptr, ptr %15, i64 %16
  %17 = load ptr, ptr %arrayidx21, align 8
  %call22 = call i32 @strcmp(ptr noundef %17, ptr noundef @.str.21) #15
  %cmp23 = icmp eq i32 %call22, 0
  br i1 %cmp23, label %cond.true25, label %cond.false28

cond.true25:                                      ; preds = %lor.lhs.false20, %for.body
  %18 = load ptr, ptr %fstatus, align 8
  %19 = load i64, ptr %i, align 8
  %arrayidx26 = getelementptr inbounds %struct.fstatus, ptr %18, i64 %19
  %st = getelementptr inbounds %struct.fstatus, ptr %arrayidx26, i32 0, i32 1
  %call27 = call i32 @fstat(i32 noundef 0, ptr noundef %st) #13
  br label %cond.end33

cond.false28:                                     ; preds = %lor.lhs.false20
  %20 = load ptr, ptr %file.addr, align 8
  %21 = load i64, ptr %i, align 8
  %arrayidx29 = getelementptr inbounds ptr, ptr %20, i64 %21
  %22 = load ptr, ptr %arrayidx29, align 8
  %23 = load ptr, ptr %fstatus, align 8
  %24 = load i64, ptr %i, align 8
  %arrayidx30 = getelementptr inbounds %struct.fstatus, ptr %23, i64 %24
  %st31 = getelementptr inbounds %struct.fstatus, ptr %arrayidx30, i32 0, i32 1
  %call32 = call i32 @stat(ptr noundef %22, ptr noundef %st31) #13
  br label %cond.end33

cond.end33:                                       ; preds = %cond.false28, %cond.true25
  %cond34 = phi i32 [ %call27, %cond.true25 ], [ %call32, %cond.false28 ]
  %25 = load ptr, ptr %fstatus, align 8
  %26 = load i64, ptr %i, align 8
  %arrayidx35 = getelementptr inbounds %struct.fstatus, ptr %25, i64 %26
  %failed36 = getelementptr inbounds %struct.fstatus, ptr %arrayidx35, i32 0, i32 0
  store i32 %cond34, ptr %failed36, align 8
  br label %for.inc

for.inc:                                          ; preds = %cond.end33
  %27 = load i64, ptr %i, align 8
  %inc = add nsw i64 %27, 1
  store i64 %inc, ptr %i, align 8
  br label %for.cond, !llvm.loop !12

for.end:                                          ; preds = %for.cond
  br label %if.end

if.end:                                           ; preds = %for.end, %if.then
  %28 = load ptr, ptr %fstatus, align 8
  ret ptr %28
}

; Function Attrs: noinline nounwind optnone willreturn memory(read) uwtable
define internal i32 @compute_number_width(i64 noundef %nfiles, ptr noundef %fstatus) #8 {
entry:
  %nfiles.addr = alloca i64, align 8
  %fstatus.addr = alloca ptr, align 8
  %width = alloca i32, align 4
  %minimum_width = alloca i32, align 4
  %regular_total = alloca i64, align 8
  %i = alloca i64, align 8
  store i64 %nfiles, ptr %nfiles.addr, align 8
  store ptr %fstatus, ptr %fstatus.addr, align 8
  store i32 1, ptr %width, align 4
  %0 = load i64, ptr %nfiles.addr, align 8
  %cmp = icmp slt i64 0, %0
  br i1 %cmp, label %land.lhs.true, label %if.end23

land.lhs.true:                                    ; preds = %entry
  %1 = load ptr, ptr %fstatus.addr, align 8
  %arrayidx = getelementptr inbounds %struct.fstatus, ptr %1, i64 0
  %failed = getelementptr inbounds %struct.fstatus, ptr %arrayidx, i32 0, i32 0
  %2 = load i32, ptr %failed, align 8
  %cmp1 = icmp sle i32 %2, 0
  br i1 %cmp1, label %if.then, label %if.end23

if.then:                                          ; preds = %land.lhs.true
  store i32 1, ptr %minimum_width, align 4
  store i64 0, ptr %regular_total, align 8
  store i64 0, ptr %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %3 = load i64, ptr %i, align 8
  %4 = load i64, ptr %nfiles.addr, align 8
  %cmp2 = icmp slt i64 %3, %4
  br i1 %cmp2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load ptr, ptr %fstatus.addr, align 8
  %6 = load i64, ptr %i, align 8
  %arrayidx3 = getelementptr inbounds %struct.fstatus, ptr %5, i64 %6
  %failed4 = getelementptr inbounds %struct.fstatus, ptr %arrayidx3, i32 0, i32 0
  %7 = load i32, ptr %failed4, align 8
  %tobool = icmp ne i32 %7, 0
  br i1 %tobool, label %if.end13, label %if.then5

if.then5:                                         ; preds = %for.body
  %8 = load ptr, ptr %fstatus.addr, align 8
  %9 = load i64, ptr %i, align 8
  %arrayidx6 = getelementptr inbounds %struct.fstatus, ptr %8, i64 %9
  %st = getelementptr inbounds %struct.fstatus, ptr %arrayidx6, i32 0, i32 1
  %st_mode = getelementptr inbounds %struct.stat, ptr %st, i32 0, i32 3
  %10 = load i32, ptr %st_mode, align 8
  %and = and i32 %10, 61440
  %cmp7 = icmp eq i32 %and, 32768
  br i1 %cmp7, label %if.else, label %if.then8

if.then8:                                         ; preds = %if.then5
  store i32 7, ptr %minimum_width, align 4
  br label %if.end12

if.else:                                          ; preds = %if.then5
  %11 = load i64, ptr %regular_total, align 8
  %12 = load ptr, ptr %fstatus.addr, align 8
  %13 = load i64, ptr %i, align 8
  %arrayidx9 = getelementptr inbounds %struct.fstatus, ptr %12, i64 %13
  %st10 = getelementptr inbounds %struct.fstatus, ptr %arrayidx9, i32 0, i32 1
  %st_size = getelementptr inbounds %struct.stat, ptr %st10, i32 0, i32 8
  %14 = load i64, ptr %st_size, align 8
  %15 = zext i64 %11 to i65
  %16 = sext i64 %14 to i65
  %17 = call { i65, i1 } @llvm.sadd.with.overflow.i65(i65 %15, i65 %16)
  %18 = extractvalue { i65, i1 } %17, 1
  %19 = extractvalue { i65, i1 } %17, 0
  %20 = trunc i65 %19 to i64
  %21 = zext i64 %20 to i65
  %22 = icmp ne i65 %19, %21
  %23 = or i1 %18, %22
  store i64 %20, ptr %regular_total, align 8
  br i1 %23, label %if.then11, label %if.end

if.then11:                                        ; preds = %if.else
  store i64 -1, ptr %regular_total, align 8
  br label %for.end

if.end:                                           ; preds = %if.else
  br label %if.end12

if.end12:                                         ; preds = %if.end, %if.then8
  br label %if.end13

if.end13:                                         ; preds = %if.end12, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end13
  %24 = load i64, ptr %i, align 8
  %inc = add nsw i64 %24, 1
  store i64 %inc, ptr %i, align 8
  br label %for.cond, !llvm.loop !13

for.end:                                          ; preds = %if.then11, %for.cond
  br label %for.cond14

for.cond14:                                       ; preds = %for.inc18, %for.end
  %25 = load i64, ptr %regular_total, align 8
  %cmp15 = icmp ule i64 10, %25
  br i1 %cmp15, label %for.body16, label %for.end19

for.body16:                                       ; preds = %for.cond14
  %26 = load i32, ptr %width, align 4
  %inc17 = add nsw i32 %26, 1
  store i32 %inc17, ptr %width, align 4
  br label %for.inc18

for.inc18:                                        ; preds = %for.body16
  %27 = load i64, ptr %regular_total, align 8
  %div = udiv i64 %27, 10
  store i64 %div, ptr %regular_total, align 8
  br label %for.cond14, !llvm.loop !14

for.end19:                                        ; preds = %for.cond14
  %28 = load i32, ptr %width, align 4
  %29 = load i32, ptr %minimum_width, align 4
  %cmp20 = icmp slt i32 %28, %29
  br i1 %cmp20, label %if.then21, label %if.end22

if.then21:                                        ; preds = %for.end19
  %30 = load i32, ptr %minimum_width, align 4
  store i32 %30, ptr %width, align 4
  br label %if.end22

if.end22:                                         ; preds = %if.then21, %for.end19
  br label %if.end23

if.end23:                                         ; preds = %if.end22, %land.lhs.true, %entry
  %31 = load i32, ptr %width, align 4
  ret i32 %31
}

declare ptr @argv_iter(ptr noundef, ptr noundef) #2

declare ptr @quotearg_n_style_colon(i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: nounwind willreturn memory(read)
declare i64 @argv_iter_n_args(ptr noundef) #6

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i1 @wc_file(ptr noundef %file, ptr noundef %fstatus) #3 {
entry:
  %retval = alloca i1, align 1
  %file.addr = alloca ptr, align 8
  %fstatus.addr = alloca ptr, align 8
  %fd = alloca i32, align 4
  %ok = alloca i8, align 1
  store ptr %file, ptr %file.addr, align 8
  store ptr %fstatus, ptr %fstatus.addr, align 8
  %0 = load ptr, ptr %file.addr, align 8
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %entry
  %1 = load ptr, ptr %file.addr, align 8
  %call = call i32 @strcmp(ptr noundef %1, ptr noundef @.str.21) #15
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i8 1, ptr @have_read_stdin, align 1
  call void @xset_binary_mode(i32 noundef 0, i32 noundef 0)
  %2 = load ptr, ptr %file.addr, align 8
  %3 = load ptr, ptr %fstatus.addr, align 8
  %call1 = call zeroext i1 @wc(i32 noundef 0, ptr noundef %2, ptr noundef %3, i64 noundef -1)
  store i1 %call1, ptr %retval, align 1
  br label %return

if.else:                                          ; preds = %lor.lhs.false
  %4 = load ptr, ptr %file.addr, align 8
  %call2 = call i32 (ptr, i32, ...) @open(ptr noundef %4, i32 noundef 0)
  store i32 %call2, ptr %fd, align 4
  %5 = load i32, ptr %fd, align 4
  %cmp3 = icmp eq i32 %5, -1
  br i1 %cmp3, label %if.then4, label %if.else7

if.then4:                                         ; preds = %if.else
  %call5 = call ptr @__errno_location() #16
  %6 = load i32, ptr %call5, align 4
  %7 = load ptr, ptr %file.addr, align 8
  %call6 = call ptr @quotearg_n_style_colon(i32 noundef 0, i32 noundef 3, ptr noundef %7)
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %6, ptr noundef @.str.26, ptr noundef %call6) #18
  store i1 false, ptr %retval, align 1
  br label %return

if.else7:                                         ; preds = %if.else
  %8 = load i32, ptr %fd, align 4
  %9 = load ptr, ptr %file.addr, align 8
  %10 = load ptr, ptr %fstatus.addr, align 8
  %call8 = call zeroext i1 @wc(i32 noundef %8, ptr noundef %9, ptr noundef %10, i64 noundef 0)
  %frombool = zext i1 %call8 to i8
  store i8 %frombool, ptr %ok, align 1
  %11 = load i32, ptr %fd, align 4
  %call9 = call i32 @close(i32 noundef %11)
  %cmp10 = icmp ne i32 %call9, 0
  br i1 %cmp10, label %if.then11, label %if.end

if.then11:                                        ; preds = %if.else7
  %call12 = call ptr @__errno_location() #16
  %12 = load i32, ptr %call12, align 4
  %13 = load ptr, ptr %file.addr, align 8
  %call13 = call ptr @quotearg_n_style_colon(i32 noundef 0, i32 noundef 3, ptr noundef %13)
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %12, ptr noundef @.str.26, ptr noundef %call13) #18
  store i1 false, ptr %retval, align 1
  br label %return

if.end:                                           ; preds = %if.else7
  %14 = load i8, ptr %ok, align 1
  %tobool14 = trunc i8 %14 to i1
  store i1 %tobool14, ptr %retval, align 1
  br label %return

return:                                           ; preds = %if.end, %if.then11, %if.then4, %if.then
  %15 = load i1, ptr %retval, align 1
  ret i1 %15
}

declare void @readtokens0_free(ptr noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal void @write_counts(i64 noundef %lines, i64 noundef %words, i64 noundef %chars, i64 noundef %bytes, i64 noundef %linelength, ptr noundef %file) #3 {
entry:
  %lines.addr = alloca i64, align 8
  %words.addr = alloca i64, align 8
  %chars.addr = alloca i64, align 8
  %bytes.addr = alloca i64, align 8
  %linelength.addr = alloca i64, align 8
  %file.addr = alloca ptr, align 8
  %format_int = alloca ptr, align 8
  %buf = alloca [21 x i8], align 16
  store i64 %lines, ptr %lines.addr, align 8
  store i64 %words, ptr %words.addr, align 8
  store i64 %chars, ptr %chars.addr, align 8
  store i64 %bytes, ptr %bytes.addr, align 8
  store i64 %linelength, ptr %linelength.addr, align 8
  store ptr %file, ptr %file.addr, align 8
  store ptr getelementptr inbounds (i8, ptr @write_counts.format_sp_int, i64 1), ptr %format_int, align 8
  %0 = load i8, ptr @print_lines, align 1
  %tobool = trunc i8 %0 to i1
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %format_int, align 8
  %2 = load i32, ptr @number_width, align 4
  %3 = load i64, ptr %lines.addr, align 8
  %arraydecay = getelementptr inbounds [21 x i8], ptr %buf, i64 0, i64 0
  %call = call ptr @umaxtostr(i64 noundef %3, ptr noundef %arraydecay)
  %call1 = call i32 (ptr, ...) @printf(ptr noundef %1, i32 noundef %2, ptr noundef %call)
  store ptr @write_counts.format_sp_int, ptr %format_int, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load i8, ptr @print_words, align 1
  %tobool2 = trunc i8 %4 to i1
  br i1 %tobool2, label %if.then3, label %if.end7

if.then3:                                         ; preds = %if.end
  %5 = load ptr, ptr %format_int, align 8
  %6 = load i32, ptr @number_width, align 4
  %7 = load i64, ptr %words.addr, align 8
  %arraydecay4 = getelementptr inbounds [21 x i8], ptr %buf, i64 0, i64 0
  %call5 = call ptr @umaxtostr(i64 noundef %7, ptr noundef %arraydecay4)
  %call6 = call i32 (ptr, ...) @printf(ptr noundef %5, i32 noundef %6, ptr noundef %call5)
  store ptr @write_counts.format_sp_int, ptr %format_int, align 8
  br label %if.end7

if.end7:                                          ; preds = %if.then3, %if.end
  %8 = load i8, ptr @print_chars, align 1
  %tobool8 = trunc i8 %8 to i1
  br i1 %tobool8, label %if.then9, label %if.end13

if.then9:                                         ; preds = %if.end7
  %9 = load ptr, ptr %format_int, align 8
  %10 = load i32, ptr @number_width, align 4
  %11 = load i64, ptr %chars.addr, align 8
  %arraydecay10 = getelementptr inbounds [21 x i8], ptr %buf, i64 0, i64 0
  %call11 = call ptr @umaxtostr(i64 noundef %11, ptr noundef %arraydecay10)
  %call12 = call i32 (ptr, ...) @printf(ptr noundef %9, i32 noundef %10, ptr noundef %call11)
  store ptr @write_counts.format_sp_int, ptr %format_int, align 8
  br label %if.end13

if.end13:                                         ; preds = %if.then9, %if.end7
  %12 = load i8, ptr @print_bytes, align 1
  %tobool14 = trunc i8 %12 to i1
  br i1 %tobool14, label %if.then15, label %if.end19

if.then15:                                        ; preds = %if.end13
  %13 = load ptr, ptr %format_int, align 8
  %14 = load i32, ptr @number_width, align 4
  %15 = load i64, ptr %bytes.addr, align 8
  %arraydecay16 = getelementptr inbounds [21 x i8], ptr %buf, i64 0, i64 0
  %call17 = call ptr @umaxtostr(i64 noundef %15, ptr noundef %arraydecay16)
  %call18 = call i32 (ptr, ...) @printf(ptr noundef %13, i32 noundef %14, ptr noundef %call17)
  store ptr @write_counts.format_sp_int, ptr %format_int, align 8
  br label %if.end19

if.end19:                                         ; preds = %if.then15, %if.end13
  %16 = load i8, ptr @print_linelength, align 1
  %tobool20 = trunc i8 %16 to i1
  br i1 %tobool20, label %if.then21, label %if.end25

if.then21:                                        ; preds = %if.end19
  %17 = load ptr, ptr %format_int, align 8
  %18 = load i32, ptr @number_width, align 4
  %19 = load i64, ptr %linelength.addr, align 8
  %arraydecay22 = getelementptr inbounds [21 x i8], ptr %buf, i64 0, i64 0
  %call23 = call ptr @imaxtostr(i64 noundef %19, ptr noundef %arraydecay22)
  %call24 = call i32 (ptr, ...) @printf(ptr noundef %17, i32 noundef %18, ptr noundef %call23)
  br label %if.end25

if.end25:                                         ; preds = %if.then21, %if.end19
  %20 = load ptr, ptr %file.addr, align 8
  %tobool26 = icmp ne ptr %20, null
  br i1 %tobool26, label %if.then27, label %if.end32

if.then27:                                        ; preds = %if.end25
  %21 = load ptr, ptr %file.addr, align 8
  %call28 = call ptr @strchr(ptr noundef %21, i32 noundef 10) #15
  %tobool29 = icmp ne ptr %call28, null
  br i1 %tobool29, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then27
  %22 = load ptr, ptr %file.addr, align 8
  %call30 = call ptr @quotearg_n_style_colon(i32 noundef 0, i32 noundef 3, ptr noundef %22)
  br label %cond.end

cond.false:                                       ; preds = %if.then27
  %23 = load ptr, ptr %file.addr, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %call30, %cond.true ], [ %23, %cond.false ]
  %call31 = call i32 (ptr, ...) @printf(ptr noundef @.str.68, ptr noundef %cond)
  br label %if.end32

if.end32:                                         ; preds = %cond.end, %if.end25
  %call33 = call i32 @putchar_unlocked(i32 noundef 10)
  ret void
}

declare void @argv_iter_free(ptr noundef) #2

; Function Attrs: nounwind
declare void @free(ptr noundef) #1

declare i32 @close(i32 noundef) #2

declare ptr @umaxtostr(i64 noundef, ptr noundef) #2

declare ptr @imaxtostr(i64 noundef, ptr noundef) #2

; Function Attrs: nounwind willreturn memory(read)
declare ptr @strchr(ptr noundef, i32 noundef) #6

declare i32 @putchar_unlocked(i32 noundef) #2

declare void @xset_binary_mode(i32 noundef, i32 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i1 @wc(i32 noundef %fd, ptr noundef %file_x, ptr noundef %fstatus, i64 noundef %current_pos) #3 {
entry:
  %fd.addr = alloca i32, align 4
  %file_x.addr = alloca ptr, align 8
  %fstatus.addr = alloca ptr, align 8
  %current_pos.addr = alloca i64, align 8
  %err = alloca i32, align 4
  %buf = alloca [262145 x i8], align 16
  %lines = alloca i64, align 8
  %words = alloca i64, align 8
  %chars = alloca i64, align 8
  %bytes = alloca i64, align 8
  %linelength = alloca i64, align 8
  %count_bytes = alloca i8, align 1
  %count_chars = alloca i8, align 1
  %count_complicated = alloca i8, align 1
  %file = alloca ptr, align 8
  %skip_read = alloca i8, align 1
  %end_pos = alloca i64, align 8
  %hi_pos = alloca i64, align 8
  %bytes_read = alloca i64, align 8
  %w = alloca %struct.wc_lines, align 8
  %in_word = alloca i8, align 1
  %linepos = alloca i64, align 8
  %state = alloca %struct.__mbstate_t, align 4
  %in_shift = alloca i8, align 1
  %prev = alloca i64, align 8
  %bytes_read110 = alloca i64, align 8
  %p = alloca ptr, align 8
  %plim = alloca ptr, align 8
  %wide_char = alloca i32, align 4
  %charbytes = alloca i64, align 8
  %single_byte = alloca i8, align 1
  %scanbytes = alloca i64, align 8
  %n = alloca i64, align 8
  %in_word2 = alloca i8, align 1
  %width = alloca i32, align 4
  %in_word244 = alloca i8, align 1
  %linepos245 = alloca i64, align 8
  %bytes_read246 = alloca i64, align 8
  %p258 = alloca ptr, align 8
  %c = alloca i8, align 1
  %in_word2283 = alloca i8, align 1
  store i32 %fd, ptr %fd.addr, align 4
  store ptr %file_x, ptr %file_x.addr, align 8
  store ptr %fstatus, ptr %fstatus.addr, align 8
  store i64 %current_pos, ptr %current_pos.addr, align 8
  store i32 0, ptr %err, align 4
  %0 = load ptr, ptr %file_x.addr, align 8
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %1 = load ptr, ptr %file_x.addr, align 8
  br label %cond.end

cond.false:                                       ; preds = %entry
  %call = call ptr @gettext(ptr noundef @.str.65) #13
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %1, %cond.true ], [ %call, %cond.false ]
  store ptr %cond, ptr %file, align 8
  store i64 0, ptr %linelength, align 8
  store i64 0, ptr %bytes, align 8
  store i64 0, ptr %chars, align 8
  store i64 0, ptr %words, align 8
  store i64 0, ptr %lines, align 8
  %call1 = call i64 @__ctype_get_mb_cur_max() #13
  %cmp = icmp ugt i64 %call1, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %cond.end
  %2 = load i8, ptr @print_bytes, align 1
  %tobool2 = trunc i8 %2 to i1
  %frombool = zext i1 %tobool2 to i8
  store i8 %frombool, ptr %count_bytes, align 1
  %3 = load i8, ptr @print_chars, align 1
  %tobool3 = trunc i8 %3 to i1
  %frombool4 = zext i1 %tobool3 to i8
  store i8 %frombool4, ptr %count_chars, align 1
  br label %if.end

if.else:                                          ; preds = %cond.end
  %4 = load i8, ptr @print_bytes, align 1
  %tobool5 = trunc i8 %4 to i1
  br i1 %tobool5, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %if.else
  %5 = load i8, ptr @print_chars, align 1
  %tobool6 = trunc i8 %5 to i1
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %if.else
  %6 = phi i1 [ true, %if.else ], [ %tobool6, %lor.rhs ]
  %frombool7 = zext i1 %6 to i8
  store i8 %frombool7, ptr %count_bytes, align 1
  store i8 0, ptr %count_chars, align 1
  br label %if.end

if.end:                                           ; preds = %lor.end, %if.then
  %7 = load i8, ptr @print_words, align 1
  %tobool8 = trunc i8 %7 to i1
  br i1 %tobool8, label %lor.end11, label %lor.rhs9

lor.rhs9:                                         ; preds = %if.end
  %8 = load i8, ptr @print_linelength, align 1
  %tobool10 = trunc i8 %8 to i1
  br label %lor.end11

lor.end11:                                        ; preds = %lor.rhs9, %if.end
  %9 = phi i1 [ true, %if.end ], [ %tobool10, %lor.rhs9 ]
  %frombool12 = zext i1 %9 to i8
  store i8 %frombool12, ptr %count_complicated, align 1
  %10 = load i8, ptr %count_bytes, align 1
  %tobool13 = trunc i8 %10 to i1
  br i1 %tobool13, label %lor.lhs.false, label %if.then19

lor.lhs.false:                                    ; preds = %lor.end11
  %11 = load i8, ptr %count_chars, align 1
  %tobool14 = trunc i8 %11 to i1
  br i1 %tobool14, label %if.then19, label %lor.lhs.false15

lor.lhs.false15:                                  ; preds = %lor.lhs.false
  %12 = load i8, ptr @print_lines, align 1
  %tobool16 = trunc i8 %12 to i1
  br i1 %tobool16, label %if.then19, label %lor.lhs.false17

lor.lhs.false17:                                  ; preds = %lor.lhs.false15
  %13 = load i8, ptr %count_complicated, align 1
  %tobool18 = trunc i8 %13 to i1
  br i1 %tobool18, label %if.then19, label %if.end20

if.then19:                                        ; preds = %lor.lhs.false17, %lor.lhs.false15, %lor.lhs.false, %lor.end11
  %14 = load i32, ptr %fd.addr, align 4
  call void @fdadvise(i32 noundef %14, i64 noundef 0, i64 noundef 0, i32 noundef 2)
  br label %if.end20

if.end20:                                         ; preds = %if.then19, %lor.lhs.false17
  %15 = load i8, ptr %count_bytes, align 1
  %tobool21 = trunc i8 %15 to i1
  br i1 %tobool21, label %land.lhs.true, label %if.else98

land.lhs.true:                                    ; preds = %if.end20
  %16 = load i8, ptr %count_chars, align 1
  %tobool22 = trunc i8 %16 to i1
  br i1 %tobool22, label %if.else98, label %land.lhs.true23

land.lhs.true23:                                  ; preds = %land.lhs.true
  %17 = load i8, ptr @print_lines, align 1
  %tobool24 = trunc i8 %17 to i1
  br i1 %tobool24, label %if.else98, label %land.lhs.true25

land.lhs.true25:                                  ; preds = %land.lhs.true23
  %18 = load i8, ptr %count_complicated, align 1
  %tobool26 = trunc i8 %18 to i1
  br i1 %tobool26, label %if.else98, label %if.then27

if.then27:                                        ; preds = %land.lhs.true25
  store i8 0, ptr %skip_read, align 1
  %19 = load ptr, ptr %fstatus.addr, align 8
  %failed = getelementptr inbounds %struct.fstatus, ptr %19, i32 0, i32 0
  %20 = load i32, ptr %failed, align 8
  %cmp28 = icmp slt i32 0, %20
  br i1 %cmp28, label %if.then29, label %if.end32

if.then29:                                        ; preds = %if.then27
  %21 = load i32, ptr %fd.addr, align 4
  %22 = load ptr, ptr %fstatus.addr, align 8
  %st = getelementptr inbounds %struct.fstatus, ptr %22, i32 0, i32 1
  %call30 = call i32 @fstat(i32 noundef %21, ptr noundef %st) #13
  %23 = load ptr, ptr %fstatus.addr, align 8
  %failed31 = getelementptr inbounds %struct.fstatus, ptr %23, i32 0, i32 0
  store i32 %call30, ptr %failed31, align 8
  br label %if.end32

if.end32:                                         ; preds = %if.then29, %if.then27
  %24 = load ptr, ptr %fstatus.addr, align 8
  %failed33 = getelementptr inbounds %struct.fstatus, ptr %24, i32 0, i32 0
  %25 = load i32, ptr %failed33, align 8
  %tobool34 = icmp ne i32 %25, 0
  br i1 %tobool34, label %if.end87, label %land.lhs.true35

land.lhs.true35:                                  ; preds = %if.end32
  %26 = load ptr, ptr %fstatus.addr, align 8
  %st36 = getelementptr inbounds %struct.fstatus, ptr %26, i32 0, i32 1
  %call37 = call zeroext i1 @usable_st_size(ptr noundef %st36)
  br i1 %call37, label %land.lhs.true38, label %if.end87

land.lhs.true38:                                  ; preds = %land.lhs.true35
  %27 = load ptr, ptr %fstatus.addr, align 8
  %st39 = getelementptr inbounds %struct.fstatus, ptr %27, i32 0, i32 1
  %st_size = getelementptr inbounds %struct.stat, ptr %st39, i32 0, i32 8
  %28 = load i64, ptr %st_size, align 8
  %cmp40 = icmp sle i64 0, %28
  br i1 %cmp40, label %if.then41, label %if.end87

if.then41:                                        ; preds = %land.lhs.true38
  %29 = load ptr, ptr %fstatus.addr, align 8
  %st42 = getelementptr inbounds %struct.fstatus, ptr %29, i32 0, i32 1
  %st_size43 = getelementptr inbounds %struct.stat, ptr %st42, i32 0, i32 8
  %30 = load i64, ptr %st_size43, align 8
  store i64 %30, ptr %end_pos, align 8
  %31 = load i64, ptr %current_pos.addr, align 8
  %cmp44 = icmp slt i64 %31, 0
  br i1 %cmp44, label %if.then45, label %if.end47

if.then45:                                        ; preds = %if.then41
  %32 = load i32, ptr %fd.addr, align 4
  %call46 = call i64 @lseek(i32 noundef %32, i64 noundef 0, i32 noundef 1) #13
  store i64 %call46, ptr %current_pos.addr, align 8
  br label %if.end47

if.end47:                                         ; preds = %if.then45, %if.then41
  %33 = load i64, ptr %end_pos, align 8
  %34 = load i64, ptr @page_size, align 8
  %rem = srem i64 %33, %34
  %tobool48 = icmp ne i64 %rem, 0
  br i1 %tobool48, label %if.then49, label %if.else62

if.then49:                                        ; preds = %if.end47
  %35 = load i64, ptr %end_pos, align 8
  %36 = load i64, ptr %current_pos.addr, align 8
  %cmp50 = icmp slt i64 %35, %36
  br i1 %cmp50, label %cond.true51, label %cond.false52

cond.true51:                                      ; preds = %if.then49
  br label %cond.end53

cond.false52:                                     ; preds = %if.then49
  %37 = load i64, ptr %end_pos, align 8
  %38 = load i64, ptr %current_pos.addr, align 8
  %sub = sub nsw i64 %37, %38
  br label %cond.end53

cond.end53:                                       ; preds = %cond.false52, %cond.true51
  %cond54 = phi i64 [ 0, %cond.true51 ], [ %sub, %cond.false52 ]
  store i64 %cond54, ptr %bytes, align 8
  %39 = load i64, ptr %bytes, align 8
  %tobool55 = icmp ne i64 %39, 0
  br i1 %tobool55, label %land.lhs.true56, label %if.else60

land.lhs.true56:                                  ; preds = %cond.end53
  %40 = load i32, ptr %fd.addr, align 4
  %41 = load i64, ptr %bytes, align 8
  %call57 = call i64 @lseek(i32 noundef %40, i64 noundef %41, i32 noundef 1) #13
  %cmp58 = icmp sle i64 0, %call57
  br i1 %cmp58, label %if.then59, label %if.else60

if.then59:                                        ; preds = %land.lhs.true56
  store i8 1, ptr %skip_read, align 1
  br label %if.end61

if.else60:                                        ; preds = %land.lhs.true56, %cond.end53
  store i64 0, ptr %bytes, align 8
  br label %if.end61

if.end61:                                         ; preds = %if.else60, %if.then59
  br label %if.end86

if.else62:                                        ; preds = %if.end47
  %42 = load i64, ptr %end_pos, align 8
  %43 = load i64, ptr %end_pos, align 8
  %44 = load ptr, ptr %fstatus.addr, align 8
  %st63 = getelementptr inbounds %struct.fstatus, ptr %44, i32 0, i32 1
  %st_blksize = getelementptr inbounds %struct.stat, ptr %st63, i32 0, i32 9
  %45 = load i64, ptr %st_blksize, align 8
  %cmp64 = icmp slt i64 0, %45
  br i1 %cmp64, label %land.lhs.true65, label %cond.false72

land.lhs.true65:                                  ; preds = %if.else62
  %46 = load ptr, ptr %fstatus.addr, align 8
  %st66 = getelementptr inbounds %struct.fstatus, ptr %46, i32 0, i32 1
  %st_blksize67 = getelementptr inbounds %struct.stat, ptr %st66, i32 0, i32 9
  %47 = load i64, ptr %st_blksize67, align 8
  %cmp68 = icmp ule i64 %47, 2305843009213693952
  br i1 %cmp68, label %cond.true69, label %cond.false72

cond.true69:                                      ; preds = %land.lhs.true65
  %48 = load ptr, ptr %fstatus.addr, align 8
  %st70 = getelementptr inbounds %struct.fstatus, ptr %48, i32 0, i32 1
  %st_blksize71 = getelementptr inbounds %struct.stat, ptr %st70, i32 0, i32 9
  %49 = load i64, ptr %st_blksize71, align 8
  br label %cond.end73

cond.false72:                                     ; preds = %land.lhs.true65, %if.else62
  br label %cond.end73

cond.end73:                                       ; preds = %cond.false72, %cond.true69
  %cond74 = phi i64 [ %49, %cond.true69 ], [ 512, %cond.false72 ]
  %add = add nsw i64 %cond74, 1
  %rem75 = srem i64 %43, %add
  %sub76 = sub nsw i64 %42, %rem75
  store i64 %sub76, ptr %hi_pos, align 8
  %50 = load i64, ptr %current_pos.addr, align 8
  %cmp77 = icmp sle i64 0, %50
  br i1 %cmp77, label %land.lhs.true78, label %if.end85

land.lhs.true78:                                  ; preds = %cond.end73
  %51 = load i64, ptr %current_pos.addr, align 8
  %52 = load i64, ptr %hi_pos, align 8
  %cmp79 = icmp slt i64 %51, %52
  br i1 %cmp79, label %land.lhs.true80, label %if.end85

land.lhs.true80:                                  ; preds = %land.lhs.true78
  %53 = load i32, ptr %fd.addr, align 4
  %54 = load i64, ptr %hi_pos, align 8
  %call81 = call i64 @lseek(i32 noundef %53, i64 noundef %54, i32 noundef 1) #13
  %cmp82 = icmp sle i64 0, %call81
  br i1 %cmp82, label %if.then83, label %if.end85

if.then83:                                        ; preds = %land.lhs.true80
  %55 = load i64, ptr %hi_pos, align 8
  %56 = load i64, ptr %current_pos.addr, align 8
  %sub84 = sub nsw i64 %55, %56
  store i64 %sub84, ptr %bytes, align 8
  br label %if.end85

if.end85:                                         ; preds = %if.then83, %land.lhs.true80, %land.lhs.true78, %cond.end73
  br label %if.end86

if.end86:                                         ; preds = %if.end85, %if.end61
  br label %if.end87

if.end87:                                         ; preds = %if.end86, %land.lhs.true38, %land.lhs.true35, %if.end32
  %57 = load i8, ptr %skip_read, align 1
  %tobool88 = trunc i8 %57 to i1
  br i1 %tobool88, label %if.end97, label %if.then89

if.then89:                                        ; preds = %if.end87
  %58 = load i32, ptr %fd.addr, align 4
  call void @fdadvise(i32 noundef %58, i64 noundef 0, i64 noundef 0, i32 noundef 2)
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then89
  %59 = load i32, ptr %fd.addr, align 4
  %arraydecay = getelementptr inbounds [262145 x i8], ptr %buf, i64 0, i64 0
  %call90 = call i64 @read(i32 noundef %59, ptr noundef %arraydecay, i64 noundef 262144)
  store i64 %call90, ptr %bytes_read, align 8
  %tobool91 = icmp ne i64 %call90, 0
  br i1 %tobool91, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %60 = load i64, ptr %bytes_read, align 8
  %cmp92 = icmp slt i64 %60, 0
  br i1 %cmp92, label %if.then93, label %if.end95

if.then93:                                        ; preds = %for.body
  %call94 = call ptr @__errno_location() #16
  %61 = load i32, ptr %call94, align 4
  store i32 %61, ptr %err, align 4
  br label %for.end

if.end95:                                         ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end95
  %62 = load i64, ptr %bytes_read, align 8
  %63 = load i64, ptr %bytes, align 8
  %add96 = add nsw i64 %63, %62
  store i64 %add96, ptr %bytes, align 8
  br label %for.cond, !llvm.loop !15

for.end:                                          ; preds = %if.then93, %for.cond
  br label %if.end97

if.end97:                                         ; preds = %for.end, %if.end87
  br label %if.end311

if.else98:                                        ; preds = %land.lhs.true25, %land.lhs.true23, %land.lhs.true, %if.end20
  %64 = load i8, ptr %count_chars, align 1
  %tobool99 = trunc i8 %64 to i1
  br i1 %tobool99, label %if.else106, label %land.lhs.true100

land.lhs.true100:                                 ; preds = %if.else98
  %65 = load i8, ptr %count_complicated, align 1
  %tobool101 = trunc i8 %65 to i1
  br i1 %tobool101, label %if.else106, label %if.then102

if.then102:                                       ; preds = %land.lhs.true100
  %66 = load i32, ptr %fd.addr, align 4
  call void @wc_lines(ptr dead_on_unwind writable sret(%struct.wc_lines) align 8 %w, i32 noundef %66)
  %err103 = getelementptr inbounds %struct.wc_lines, ptr %w, i32 0, i32 0
  %67 = load i32, ptr %err103, align 8
  store i32 %67, ptr %err, align 4
  %lines104 = getelementptr inbounds %struct.wc_lines, ptr %w, i32 0, i32 1
  %68 = load i64, ptr %lines104, align 8
  store i64 %68, ptr %lines, align 8
  %bytes105 = getelementptr inbounds %struct.wc_lines, ptr %w, i32 0, i32 2
  %69 = load i64, ptr %bytes105, align 8
  store i64 %69, ptr %bytes, align 8
  br label %if.end310

if.else106:                                       ; preds = %land.lhs.true100, %if.else98
  %call107 = call i64 @__ctype_get_mb_cur_max() #13
  %cmp108 = icmp ugt i64 %call107, 1
  br i1 %cmp108, label %if.then109, label %if.else243

if.then109:                                       ; preds = %if.else106
  store i8 0, ptr %in_word, align 1
  store i64 0, ptr %linepos, align 8
  call void @mbszero(ptr noundef %state)
  store i8 0, ptr %in_shift, align 1
  store i64 0, ptr %prev, align 8
  br label %for.cond111

for.cond111:                                      ; preds = %do.end, %if.then109
  %70 = load i32, ptr %fd.addr, align 4
  %arraydecay112 = getelementptr inbounds [262145 x i8], ptr %buf, i64 0, i64 0
  %71 = load i64, ptr %prev, align 8
  %add.ptr = getelementptr inbounds i8, ptr %arraydecay112, i64 %71
  %72 = load i64, ptr %prev, align 8
  %sub113 = sub nsw i64 262144, %72
  %call114 = call i64 @read(i32 noundef %70, ptr noundef %add.ptr, i64 noundef %sub113)
  store i64 %call114, ptr %bytes_read110, align 8
  %tobool115 = icmp ne i64 %call114, 0
  br i1 %tobool115, label %lor.end118, label %lor.rhs116

lor.rhs116:                                       ; preds = %for.cond111
  %73 = load i64, ptr %prev, align 8
  %tobool117 = icmp ne i64 %73, 0
  br label %lor.end118

lor.end118:                                       ; preds = %lor.rhs116, %for.cond111
  %74 = phi i1 [ true, %for.cond111 ], [ %tobool117, %lor.rhs116 ]
  br i1 %74, label %for.body119, label %for.end238

for.body119:                                      ; preds = %lor.end118
  %75 = load i64, ptr %bytes_read110, align 8
  %cmp120 = icmp slt i64 %75, 0
  br i1 %cmp120, label %if.then121, label %if.end123

if.then121:                                       ; preds = %for.body119
  %call122 = call ptr @__errno_location() #16
  %76 = load i32, ptr %call122, align 4
  store i32 %76, ptr %err, align 4
  br label %for.end238

if.end123:                                        ; preds = %for.body119
  %77 = load i64, ptr %bytes_read110, align 8
  %78 = load i64, ptr %bytes, align 8
  %add124 = add nsw i64 %78, %77
  store i64 %add124, ptr %bytes, align 8
  %arraydecay125 = getelementptr inbounds [262145 x i8], ptr %buf, i64 0, i64 0
  store ptr %arraydecay125, ptr %p, align 8
  %79 = load ptr, ptr %p, align 8
  %80 = load i64, ptr %prev, align 8
  %add.ptr126 = getelementptr inbounds i8, ptr %79, i64 %80
  %81 = load i64, ptr %bytes_read110, align 8
  %add.ptr127 = getelementptr inbounds i8, ptr %add.ptr126, i64 %81
  store ptr %add.ptr127, ptr %plim, align 8
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.end123
  %82 = load i8, ptr %in_shift, align 1
  %tobool128 = trunc i8 %82 to i1
  br i1 %tobool128, label %if.else138, label %land.lhs.true129

land.lhs.true129:                                 ; preds = %do.body
  %83 = load ptr, ptr %p, align 8
  %84 = load i8, ptr %83, align 1
  %conv = sext i8 %84 to i32
  %cmp130 = icmp sle i32 0, %conv
  br i1 %cmp130, label %land.lhs.true132, label %if.else138

land.lhs.true132:                                 ; preds = %land.lhs.true129
  %85 = load ptr, ptr %p, align 8
  %86 = load i8, ptr %85, align 1
  %conv133 = sext i8 %86 to i32
  %cmp134 = icmp slt i32 %conv133, 128
  br i1 %cmp134, label %if.then136, label %if.else138

if.then136:                                       ; preds = %land.lhs.true132
  store i64 1, ptr %charbytes, align 8
  %87 = load ptr, ptr %p, align 8
  %88 = load i8, ptr %87, align 1
  %conv137 = sext i8 %88 to i32
  store i32 %conv137, ptr %wide_char, align 4
  store i8 1, ptr %single_byte, align 1
  br label %if.end182

if.else138:                                       ; preds = %land.lhs.true132, %land.lhs.true129, %do.body
  %89 = load ptr, ptr %plim, align 8
  %90 = load ptr, ptr %p, align 8
  %91 = load i64, ptr %prev, align 8
  %add.ptr139 = getelementptr inbounds i8, ptr %90, i64 %91
  %sub.ptr.lhs.cast = ptrtoint ptr %89 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %add.ptr139 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  store i64 %sub.ptr.sub, ptr %scanbytes, align 8
  %92 = load ptr, ptr %p, align 8
  %93 = load i64, ptr %prev, align 8
  %add.ptr140 = getelementptr inbounds i8, ptr %92, i64 %93
  %94 = load i64, ptr %scanbytes, align 8
  %call141 = call i64 @rpl_mbrtoc32(ptr noundef %wide_char, ptr noundef %add.ptr140, i64 noundef %94, ptr noundef %state)
  store i64 %call141, ptr %n, align 8
  store i64 0, ptr %prev, align 8
  %95 = load i64, ptr %scanbytes, align 8
  %96 = load i64, ptr %n, align 8
  %cmp142 = icmp ult i64 %95, %96
  br i1 %cmp142, label %if.then144, label %if.end164

if.then144:                                       ; preds = %if.else138
  %97 = load i64, ptr %n, align 8
  %cmp145 = icmp eq i64 %97, -2
  br i1 %cmp145, label %land.lhs.true147, label %if.end160

land.lhs.true147:                                 ; preds = %if.then144
  %98 = load ptr, ptr %plim, align 8
  %99 = load ptr, ptr %p, align 8
  %sub.ptr.lhs.cast148 = ptrtoint ptr %98 to i64
  %sub.ptr.rhs.cast149 = ptrtoint ptr %99 to i64
  %sub.ptr.sub150 = sub i64 %sub.ptr.lhs.cast148, %sub.ptr.rhs.cast149
  %cmp151 = icmp slt i64 %sub.ptr.sub150, 262144
  br i1 %cmp151, label %land.lhs.true153, label %if.end160

land.lhs.true153:                                 ; preds = %land.lhs.true147
  %100 = load i64, ptr %bytes_read110, align 8
  %tobool154 = icmp ne i64 %100, 0
  br i1 %tobool154, label %if.then155, label %if.end160

if.then155:                                       ; preds = %land.lhs.true153
  %101 = load ptr, ptr %plim, align 8
  %102 = load ptr, ptr %p, align 8
  %sub.ptr.lhs.cast156 = ptrtoint ptr %101 to i64
  %sub.ptr.rhs.cast157 = ptrtoint ptr %102 to i64
  %sub.ptr.sub158 = sub i64 %sub.ptr.lhs.cast156, %sub.ptr.rhs.cast157
  store i64 %sub.ptr.sub158, ptr %prev, align 8
  %arraydecay159 = getelementptr inbounds [262145 x i8], ptr %buf, i64 0, i64 0
  %103 = load ptr, ptr %p, align 8
  %104 = load i64, ptr %prev, align 8
  call void @llvm.memmove.p0.p0.i64(ptr align 16 %arraydecay159, ptr align 1 %103, i64 %104, i1 false)
  store i8 1, ptr %in_shift, align 1
  br label %do.end

if.end160:                                        ; preds = %land.lhs.true153, %land.lhs.true147, %if.then144
  %105 = load ptr, ptr %p, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %105, i32 1
  store ptr %incdec.ptr, ptr %p, align 8
  call void @mbszero(ptr noundef %state)
  store i8 0, ptr %in_shift, align 1
  %106 = load i8, ptr %in_word, align 1
  %tobool161 = trunc i8 %106 to i1
  %lnot = xor i1 %tobool161, true
  %lnot.ext = zext i1 %lnot to i32
  %conv162 = sext i32 %lnot.ext to i64
  %107 = load i64, ptr %words, align 8
  %add163 = add nsw i64 %107, %conv162
  store i64 %add163, ptr %words, align 8
  store i8 1, ptr %in_word, align 1
  br label %do.cond

if.end164:                                        ; preds = %if.else138
  %108 = load i64, ptr %n, align 8
  %109 = load i64, ptr %n, align 8
  %tobool165 = icmp ne i64 %109, 0
  %lnot166 = xor i1 %tobool165, true
  %lnot.ext167 = zext i1 %lnot166 to i32
  %conv168 = sext i32 %lnot.ext167 to i64
  %add169 = add i64 %108, %conv168
  store i64 %add169, ptr %charbytes, align 8
  %110 = load i64, ptr %charbytes, align 8
  %111 = load i8, ptr %in_shift, align 1
  %tobool170 = trunc i8 %111 to i1
  %lnot171 = xor i1 %tobool170, true
  %lnot.ext172 = zext i1 %lnot171 to i32
  %conv173 = sext i32 %lnot.ext172 to i64
  %cmp174 = icmp eq i64 %110, %conv173
  %frombool176 = zext i1 %cmp174 to i8
  store i8 %frombool176, ptr %single_byte, align 1
  %call177 = call i32 @mbsinit(ptr noundef %state) #15
  %tobool178 = icmp ne i32 %call177, 0
  %lnot179 = xor i1 %tobool178, true
  %frombool181 = zext i1 %lnot179 to i8
  store i8 %frombool181, ptr %in_shift, align 1
  br label %if.end182

if.end182:                                        ; preds = %if.end164, %if.then136
  %112 = load i32, ptr %wide_char, align 4
  switch i32 %112, label %sw.default [
    i32 10, label %sw.bb
    i32 13, label %sw.bb183
    i32 12, label %sw.bb183
    i32 9, label %sw.bb188
    i32 32, label %sw.bb192
    i32 11, label %sw.bb194
  ]

sw.bb:                                            ; preds = %if.end182
  %113 = load i64, ptr %lines, align 8
  %inc = add nsw i64 %113, 1
  store i64 %inc, ptr %lines, align 8
  br label %sw.bb183

sw.bb183:                                         ; preds = %sw.bb, %if.end182, %if.end182
  %114 = load i64, ptr %linepos, align 8
  %115 = load i64, ptr %linelength, align 8
  %cmp184 = icmp sgt i64 %114, %115
  br i1 %cmp184, label %if.then186, label %if.end187

if.then186:                                       ; preds = %sw.bb183
  %116 = load i64, ptr %linepos, align 8
  store i64 %116, ptr %linelength, align 8
  br label %if.end187

if.end187:                                        ; preds = %if.then186, %sw.bb183
  store i64 0, ptr %linepos, align 8
  store i8 0, ptr %in_word, align 1
  br label %sw.epilog

sw.bb188:                                         ; preds = %if.end182
  %117 = load i64, ptr %linepos, align 8
  %rem189 = srem i64 %117, 8
  %sub190 = sub nsw i64 8, %rem189
  %118 = load i64, ptr %linepos, align 8
  %add191 = add nsw i64 %118, %sub190
  store i64 %add191, ptr %linepos, align 8
  store i8 0, ptr %in_word, align 1
  br label %sw.epilog

sw.bb192:                                         ; preds = %if.end182
  %119 = load i64, ptr %linepos, align 8
  %inc193 = add nsw i64 %119, 1
  store i64 %inc193, ptr %linepos, align 8
  br label %sw.bb194

sw.bb194:                                         ; preds = %sw.bb192, %if.end182
  store i8 0, ptr %in_word, align 1
  br label %sw.epilog

sw.default:                                       ; preds = %if.end182
  %120 = load i8, ptr %single_byte, align 1
  %tobool195 = trunc i8 %120 to i1
  br i1 %tobool195, label %if.then196, label %if.else206

if.then196:                                       ; preds = %sw.default
  %121 = load i32, ptr %wide_char, align 4
  %idxprom = zext i32 %121 to i64
  %arrayidx = getelementptr inbounds [256 x i8], ptr @wc_isprint, i64 0, i64 %idxprom
  %122 = load i8, ptr %arrayidx, align 1
  %tobool197 = trunc i8 %122 to i1
  %conv198 = zext i1 %tobool197 to i64
  %123 = load i64, ptr %linepos, align 8
  %add199 = add nsw i64 %123, %conv198
  store i64 %add199, ptr %linepos, align 8
  %124 = load i32, ptr %wide_char, align 4
  %idxprom200 = zext i32 %124 to i64
  %arrayidx201 = getelementptr inbounds [256 x i8], ptr @wc_isspace, i64 0, i64 %idxprom200
  %125 = load i8, ptr %arrayidx201, align 1
  %tobool202 = trunc i8 %125 to i1
  %lnot203 = xor i1 %tobool202, true
  %frombool205 = zext i1 %lnot203 to i8
  store i8 %frombool205, ptr %in_word2, align 1
  br label %if.end224

if.else206:                                       ; preds = %sw.default
  %126 = load i8, ptr @print_linelength, align 1
  %tobool207 = trunc i8 %126 to i1
  br i1 %tobool207, label %if.then208, label %if.end216

if.then208:                                       ; preds = %if.else206
  %127 = load i32, ptr %wide_char, align 4
  %call209 = call i32 @c32width(i32 noundef %127)
  store i32 %call209, ptr %width, align 4
  %128 = load i32, ptr %width, align 4
  %cmp210 = icmp sgt i32 %128, 0
  br i1 %cmp210, label %if.then212, label %if.end215

if.then212:                                       ; preds = %if.then208
  %129 = load i32, ptr %width, align 4
  %conv213 = sext i32 %129 to i64
  %130 = load i64, ptr %linepos, align 8
  %add214 = add nsw i64 %130, %conv213
  store i64 %add214, ptr %linepos, align 8
  br label %if.end215

if.end215:                                        ; preds = %if.then212, %if.then208
  br label %if.end216

if.end216:                                        ; preds = %if.end215, %if.else206
  %131 = load i32, ptr %wide_char, align 4
  %call217 = call i32 @iswspace(i32 noundef %131) #13
  %tobool218 = icmp ne i32 %call217, 0
  br i1 %tobool218, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %if.end216
  %132 = load i32, ptr %wide_char, align 4
  %call219 = call i32 @iswnbspace(i32 noundef %132) #15
  %tobool220 = icmp ne i32 %call219, 0
  %lnot221 = xor i1 %tobool220, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.end216
  %133 = phi i1 [ false, %if.end216 ], [ %lnot221, %land.rhs ]
  %frombool223 = zext i1 %133 to i8
  store i8 %frombool223, ptr %in_word2, align 1
  br label %if.end224

if.end224:                                        ; preds = %land.end, %if.then196
  %134 = load i8, ptr %in_word, align 1
  %tobool225 = trunc i8 %134 to i1
  %lnot226 = xor i1 %tobool225, true
  %lnot.ext227 = zext i1 %lnot226 to i32
  %135 = load i8, ptr %in_word2, align 1
  %tobool228 = trunc i8 %135 to i1
  %conv229 = zext i1 %tobool228 to i32
  %and = and i32 %lnot.ext227, %conv229
  %conv230 = sext i32 %and to i64
  %136 = load i64, ptr %words, align 8
  %add231 = add nsw i64 %136, %conv230
  store i64 %add231, ptr %words, align 8
  %137 = load i8, ptr %in_word2, align 1
  %tobool232 = trunc i8 %137 to i1
  %frombool233 = zext i1 %tobool232 to i8
  store i8 %frombool233, ptr %in_word, align 1
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end224, %sw.bb194, %sw.bb188, %if.end187
  %138 = load i64, ptr %charbytes, align 8
  %139 = load ptr, ptr %p, align 8
  %add.ptr234 = getelementptr inbounds i8, ptr %139, i64 %138
  store ptr %add.ptr234, ptr %p, align 8
  %140 = load i64, ptr %chars, align 8
  %inc235 = add nsw i64 %140, 1
  store i64 %inc235, ptr %chars, align 8
  br label %do.cond

do.cond:                                          ; preds = %sw.epilog, %if.end160
  %141 = load ptr, ptr %p, align 8
  %142 = load ptr, ptr %plim, align 8
  %cmp236 = icmp ult ptr %141, %142
  br i1 %cmp236, label %do.body, label %do.end, !llvm.loop !16

do.end:                                           ; preds = %do.cond, %if.then155
  br label %for.cond111, !llvm.loop !17

for.end238:                                       ; preds = %if.then121, %lor.end118
  %143 = load i64, ptr %linepos, align 8
  %144 = load i64, ptr %linelength, align 8
  %cmp239 = icmp sgt i64 %143, %144
  br i1 %cmp239, label %if.then241, label %if.end242

if.then241:                                       ; preds = %for.end238
  %145 = load i64, ptr %linepos, align 8
  store i64 %145, ptr %linelength, align 8
  br label %if.end242

if.end242:                                        ; preds = %if.then241, %for.end238
  br label %if.end309

if.else243:                                       ; preds = %if.else106
  store i8 0, ptr %in_word244, align 1
  store i64 0, ptr %linepos245, align 8
  br label %for.cond247

for.cond247:                                      ; preds = %do.end303, %if.else243
  %146 = load i32, ptr %fd.addr, align 4
  %arraydecay248 = getelementptr inbounds [262145 x i8], ptr %buf, i64 0, i64 0
  %call249 = call i64 @read(i32 noundef %146, ptr noundef %arraydecay248, i64 noundef 262144)
  store i64 %call249, ptr %bytes_read246, align 8
  %tobool250 = icmp ne i64 %call249, 0
  br i1 %tobool250, label %for.body251, label %for.end304

for.body251:                                      ; preds = %for.cond247
  %147 = load i64, ptr %bytes_read246, align 8
  %cmp252 = icmp slt i64 %147, 0
  br i1 %cmp252, label %if.then254, label %if.end256

if.then254:                                       ; preds = %for.body251
  %call255 = call ptr @__errno_location() #16
  %148 = load i32, ptr %call255, align 4
  store i32 %148, ptr %err, align 4
  br label %for.end304

if.end256:                                        ; preds = %for.body251
  %149 = load i64, ptr %bytes_read246, align 8
  %150 = load i64, ptr %bytes, align 8
  %add257 = add nsw i64 %150, %149
  store i64 %add257, ptr %bytes, align 8
  %arraydecay259 = getelementptr inbounds [262145 x i8], ptr %buf, i64 0, i64 0
  store ptr %arraydecay259, ptr %p258, align 8
  br label %do.body260

do.body260:                                       ; preds = %do.cond301, %if.end256
  %151 = load ptr, ptr %p258, align 8
  %incdec.ptr261 = getelementptr inbounds i8, ptr %151, i32 1
  store ptr %incdec.ptr261, ptr %p258, align 8
  %152 = load i8, ptr %151, align 1
  store i8 %152, ptr %c, align 1
  %153 = load i8, ptr %c, align 1
  %conv262 = zext i8 %153 to i32
  switch i32 %conv262, label %sw.default277 [
    i32 10, label %sw.bb263
    i32 13, label %sw.bb265
    i32 12, label %sw.bb265
    i32 9, label %sw.bb270
    i32 32, label %sw.bb274
    i32 11, label %sw.bb276
  ]

sw.bb263:                                         ; preds = %do.body260
  %154 = load i64, ptr %lines, align 8
  %inc264 = add nsw i64 %154, 1
  store i64 %inc264, ptr %lines, align 8
  br label %sw.bb265

sw.bb265:                                         ; preds = %sw.bb263, %do.body260, %do.body260
  %155 = load i64, ptr %linepos245, align 8
  %156 = load i64, ptr %linelength, align 8
  %cmp266 = icmp sgt i64 %155, %156
  br i1 %cmp266, label %if.then268, label %if.end269

if.then268:                                       ; preds = %sw.bb265
  %157 = load i64, ptr %linepos245, align 8
  store i64 %157, ptr %linelength, align 8
  br label %if.end269

if.end269:                                        ; preds = %if.then268, %sw.bb265
  store i64 0, ptr %linepos245, align 8
  store i8 0, ptr %in_word244, align 1
  br label %sw.epilog300

sw.bb270:                                         ; preds = %do.body260
  %158 = load i64, ptr %linepos245, align 8
  %rem271 = srem i64 %158, 8
  %sub272 = sub nsw i64 8, %rem271
  %159 = load i64, ptr %linepos245, align 8
  %add273 = add nsw i64 %159, %sub272
  store i64 %add273, ptr %linepos245, align 8
  store i8 0, ptr %in_word244, align 1
  br label %sw.epilog300

sw.bb274:                                         ; preds = %do.body260
  %160 = load i64, ptr %linepos245, align 8
  %inc275 = add nsw i64 %160, 1
  store i64 %inc275, ptr %linepos245, align 8
  br label %sw.bb276

sw.bb276:                                         ; preds = %sw.bb274, %do.body260
  store i8 0, ptr %in_word244, align 1
  br label %sw.epilog300

sw.default277:                                    ; preds = %do.body260
  %161 = load i8, ptr %c, align 1
  %idxprom278 = zext i8 %161 to i64
  %arrayidx279 = getelementptr inbounds [256 x i8], ptr @wc_isprint, i64 0, i64 %idxprom278
  %162 = load i8, ptr %arrayidx279, align 1
  %tobool280 = trunc i8 %162 to i1
  %conv281 = zext i1 %tobool280 to i64
  %163 = load i64, ptr %linepos245, align 8
  %add282 = add nsw i64 %163, %conv281
  store i64 %add282, ptr %linepos245, align 8
  %164 = load i8, ptr %c, align 1
  %idxprom284 = zext i8 %164 to i64
  %arrayidx285 = getelementptr inbounds [256 x i8], ptr @wc_isspace, i64 0, i64 %idxprom284
  %165 = load i8, ptr %arrayidx285, align 1
  %tobool286 = trunc i8 %165 to i1
  %lnot287 = xor i1 %tobool286, true
  %frombool289 = zext i1 %lnot287 to i8
  store i8 %frombool289, ptr %in_word2283, align 1
  %166 = load i8, ptr %in_word244, align 1
  %tobool290 = trunc i8 %166 to i1
  %lnot291 = xor i1 %tobool290, true
  %lnot.ext292 = zext i1 %lnot291 to i32
  %167 = load i8, ptr %in_word2283, align 1
  %tobool293 = trunc i8 %167 to i1
  %conv294 = zext i1 %tobool293 to i32
  %and295 = and i32 %lnot.ext292, %conv294
  %conv296 = sext i32 %and295 to i64
  %168 = load i64, ptr %words, align 8
  %add297 = add nsw i64 %168, %conv296
  store i64 %add297, ptr %words, align 8
  %169 = load i8, ptr %in_word2283, align 1
  %tobool298 = trunc i8 %169 to i1
  %frombool299 = zext i1 %tobool298 to i8
  store i8 %frombool299, ptr %in_word244, align 1
  br label %sw.epilog300

sw.epilog300:                                     ; preds = %sw.default277, %sw.bb276, %sw.bb270, %if.end269
  br label %do.cond301

do.cond301:                                       ; preds = %sw.epilog300
  %170 = load i64, ptr %bytes_read246, align 8
  %dec = add nsw i64 %170, -1
  store i64 %dec, ptr %bytes_read246, align 8
  %tobool302 = icmp ne i64 %dec, 0
  br i1 %tobool302, label %do.body260, label %do.end303, !llvm.loop !18

do.end303:                                        ; preds = %do.cond301
  br label %for.cond247, !llvm.loop !19

for.end304:                                       ; preds = %if.then254, %for.cond247
  %171 = load i64, ptr %linepos245, align 8
  %172 = load i64, ptr %linelength, align 8
  %cmp305 = icmp sgt i64 %171, %172
  br i1 %cmp305, label %if.then307, label %if.end308

if.then307:                                       ; preds = %for.end304
  %173 = load i64, ptr %linepos245, align 8
  store i64 %173, ptr %linelength, align 8
  br label %if.end308

if.end308:                                        ; preds = %if.then307, %for.end304
  br label %if.end309

if.end309:                                        ; preds = %if.end308, %if.end242
  br label %if.end310

if.end310:                                        ; preds = %if.end309, %if.then102
  br label %if.end311

if.end311:                                        ; preds = %if.end310, %if.end97
  %174 = load i8, ptr %count_chars, align 1
  %tobool312 = trunc i8 %174 to i1
  %conv313 = zext i1 %tobool312 to i32
  %175 = load i8, ptr @print_chars, align 1
  %tobool314 = trunc i8 %175 to i1
  %conv315 = zext i1 %tobool314 to i32
  %cmp316 = icmp slt i32 %conv313, %conv315
  br i1 %cmp316, label %if.then318, label %if.end319

if.then318:                                       ; preds = %if.end311
  %176 = load i64, ptr %bytes, align 8
  store i64 %176, ptr %chars, align 8
  br label %if.end319

if.end319:                                        ; preds = %if.then318, %if.end311
  %177 = load i32, ptr @total_mode, align 4
  %cmp320 = icmp ne i32 %177, 2
  br i1 %cmp320, label %if.then322, label %if.end323

if.then322:                                       ; preds = %if.end319
  %178 = load i64, ptr %lines, align 8
  %179 = load i64, ptr %words, align 8
  %180 = load i64, ptr %chars, align 8
  %181 = load i64, ptr %bytes, align 8
  %182 = load i64, ptr %linelength, align 8
  %183 = load ptr, ptr %file_x.addr, align 8
  call void @write_counts(i64 noundef %178, i64 noundef %179, i64 noundef %180, i64 noundef %181, i64 noundef %182, ptr noundef %183)
  br label %if.end323

if.end323:                                        ; preds = %if.then322, %if.end319
  %184 = load i64, ptr @total_lines, align 8
  %185 = load i64, ptr %lines, align 8
  %186 = zext i64 %184 to i65
  %187 = sext i64 %185 to i65
  %188 = call { i65, i1 } @llvm.sadd.with.overflow.i65(i65 %186, i65 %187)
  %189 = extractvalue { i65, i1 } %188, 1
  %190 = extractvalue { i65, i1 } %188, 0
  %191 = trunc i65 %190 to i64
  %192 = zext i64 %191 to i65
  %193 = icmp ne i65 %190, %192
  %194 = or i1 %189, %193
  store i64 %191, ptr @total_lines, align 8
  %conv324 = zext i1 %194 to i32
  %195 = load i8, ptr @total_lines_overflow, align 1
  %tobool325 = trunc i8 %195 to i1
  %conv326 = zext i1 %tobool325 to i32
  %or = or i32 %conv326, %conv324
  %tobool327 = icmp ne i32 %or, 0
  %frombool328 = zext i1 %tobool327 to i8
  store i8 %frombool328, ptr @total_lines_overflow, align 1
  %196 = load i64, ptr @total_words, align 8
  %197 = load i64, ptr %words, align 8
  %198 = zext i64 %196 to i65
  %199 = sext i64 %197 to i65
  %200 = call { i65, i1 } @llvm.sadd.with.overflow.i65(i65 %198, i65 %199)
  %201 = extractvalue { i65, i1 } %200, 1
  %202 = extractvalue { i65, i1 } %200, 0
  %203 = trunc i65 %202 to i64
  %204 = zext i64 %203 to i65
  %205 = icmp ne i65 %202, %204
  %206 = or i1 %201, %205
  store i64 %203, ptr @total_words, align 8
  %conv329 = zext i1 %206 to i32
  %207 = load i8, ptr @total_words_overflow, align 1
  %tobool330 = trunc i8 %207 to i1
  %conv331 = zext i1 %tobool330 to i32
  %or332 = or i32 %conv331, %conv329
  %tobool333 = icmp ne i32 %or332, 0
  %frombool334 = zext i1 %tobool333 to i8
  store i8 %frombool334, ptr @total_words_overflow, align 1
  %208 = load i64, ptr @total_chars, align 8
  %209 = load i64, ptr %chars, align 8
  %210 = zext i64 %208 to i65
  %211 = sext i64 %209 to i65
  %212 = call { i65, i1 } @llvm.sadd.with.overflow.i65(i65 %210, i65 %211)
  %213 = extractvalue { i65, i1 } %212, 1
  %214 = extractvalue { i65, i1 } %212, 0
  %215 = trunc i65 %214 to i64
  %216 = zext i64 %215 to i65
  %217 = icmp ne i65 %214, %216
  %218 = or i1 %213, %217
  store i64 %215, ptr @total_chars, align 8
  %conv335 = zext i1 %218 to i32
  %219 = load i8, ptr @total_chars_overflow, align 1
  %tobool336 = trunc i8 %219 to i1
  %conv337 = zext i1 %tobool336 to i32
  %or338 = or i32 %conv337, %conv335
  %tobool339 = icmp ne i32 %or338, 0
  %frombool340 = zext i1 %tobool339 to i8
  store i8 %frombool340, ptr @total_chars_overflow, align 1
  %220 = load i64, ptr @total_bytes, align 8
  %221 = load i64, ptr %bytes, align 8
  %222 = zext i64 %220 to i65
  %223 = sext i64 %221 to i65
  %224 = call { i65, i1 } @llvm.sadd.with.overflow.i65(i65 %222, i65 %223)
  %225 = extractvalue { i65, i1 } %224, 1
  %226 = extractvalue { i65, i1 } %224, 0
  %227 = trunc i65 %226 to i64
  %228 = zext i64 %227 to i65
  %229 = icmp ne i65 %226, %228
  %230 = or i1 %225, %229
  store i64 %227, ptr @total_bytes, align 8
  %conv341 = zext i1 %230 to i32
  %231 = load i8, ptr @total_bytes_overflow, align 1
  %tobool342 = trunc i8 %231 to i1
  %conv343 = zext i1 %tobool342 to i32
  %or344 = or i32 %conv343, %conv341
  %tobool345 = icmp ne i32 %or344, 0
  %frombool346 = zext i1 %tobool345 to i8
  store i8 %frombool346, ptr @total_bytes_overflow, align 1
  %232 = load i64, ptr %linelength, align 8
  %233 = load i64, ptr @max_line_length, align 8
  %cmp347 = icmp sgt i64 %232, %233
  br i1 %cmp347, label %if.then349, label %if.end350

if.then349:                                       ; preds = %if.end323
  %234 = load i64, ptr %linelength, align 8
  store i64 %234, ptr @max_line_length, align 8
  br label %if.end350

if.end350:                                        ; preds = %if.then349, %if.end323
  %235 = load i32, ptr %err, align 4
  %tobool351 = icmp ne i32 %235, 0
  br i1 %tobool351, label %if.then352, label %if.end354

if.then352:                                       ; preds = %if.end350
  %236 = load i32, ptr %err, align 4
  %237 = load ptr, ptr %file, align 8
  %call353 = call ptr @quotearg_n_style_colon(i32 noundef 0, i32 noundef 3, ptr noundef %237)
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %236, ptr noundef @.str.26, ptr noundef %call353) #18
  br label %if.end354

if.end354:                                        ; preds = %if.then352, %if.end350
  %238 = load i32, ptr %err, align 4
  %tobool355 = icmp ne i32 %238, 0
  %lnot356 = xor i1 %tobool355, true
  ret i1 %lnot356
}

declare i32 @open(ptr noundef, i32 noundef, ...) #2

; Function Attrs: nounwind
declare i64 @__ctype_get_mb_cur_max() #1

declare void @fdadvise(i32 noundef, i64 noundef, i64 noundef, i32 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i1 @usable_st_size(ptr noundef %sb) #3 {
entry:
  %sb.addr = alloca ptr, align 8
  store ptr %sb, ptr %sb.addr, align 8
  %0 = load ptr, ptr %sb.addr, align 8
  %st_mode = getelementptr inbounds %struct.stat, ptr %0, i32 0, i32 3
  %1 = load i32, ptr %st_mode, align 8
  %and = and i32 %1, 61440
  %cmp = icmp eq i32 %and, 32768
  br i1 %cmp, label %lor.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load ptr, ptr %sb.addr, align 8
  %st_mode1 = getelementptr inbounds %struct.stat, ptr %2, i32 0, i32 3
  %3 = load i32, ptr %st_mode1, align 8
  %and2 = and i32 %3, 61440
  %cmp3 = icmp eq i32 %and2, 40960
  br i1 %cmp3, label %lor.end, label %lor.lhs.false4

lor.lhs.false4:                                   ; preds = %lor.lhs.false
  %4 = load ptr, ptr %sb.addr, align 8
  %st_mode5 = getelementptr inbounds %struct.stat, ptr %4, i32 0, i32 3
  %5 = load i32, ptr %st_mode5, align 8
  %6 = load ptr, ptr %sb.addr, align 8
  %st_mode6 = getelementptr inbounds %struct.stat, ptr %6, i32 0, i32 3
  %7 = load i32, ptr %st_mode6, align 8
  %sub = sub i32 %5, %7
  %tobool = icmp ne i32 %sub, 0
  br i1 %tobool, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %lor.lhs.false4
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %lor.lhs.false4, %lor.lhs.false, %entry
  %8 = phi i1 [ true, %lor.lhs.false4 ], [ true, %lor.lhs.false ], [ true, %entry ], [ false, %lor.rhs ]
  ret i1 %8
}

; Function Attrs: nounwind
declare i64 @lseek(i32 noundef, i64 noundef, i32 noundef) #1

declare i64 @read(i32 noundef, ptr noundef, i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wc_lines(ptr dead_on_unwind noalias writable sret(%struct.wc_lines) align 8 %agg.result, i32 noundef %fd) #3 {
entry:
  %fd.addr = alloca i32, align 4
  %lines = alloca i64, align 8
  %bytes = alloca i64, align 8
  %long_lines = alloca i8, align 1
  %buf = alloca [262145 x i8], align 16
  %bytes_read = alloca i64, align 8
  %end = alloca ptr, align 8
  %buflines = alloca i64, align 8
  %p = alloca ptr, align 8
  %p27 = alloca ptr, align 8
  store i32 %fd, ptr %fd.addr, align 4
  %0 = load i8, ptr @wc_lines.use_avx2, align 1
  %tobool = icmp ne i8 %0, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = call zeroext i1 @avx2_supported()
  %1 = zext i1 %call to i64
  %cond = select i1 %call, i32 1, i32 -1
  %conv = trunc i32 %cond to i8
  store i8 %conv, ptr @wc_lines.use_avx2, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load i8, ptr @wc_lines.use_avx2, align 1
  %conv1 = sext i8 %2 to i32
  %cmp = icmp slt i32 0, %conv1
  br i1 %cmp, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  %3 = load i32, ptr %fd.addr, align 4
  call void @wc_lines_avx2(ptr dead_on_unwind writable sret(%struct.wc_lines) align 8 %agg.result, i32 noundef %3)
  br label %return

if.end4:                                          ; preds = %if.end
  store i64 0, ptr %lines, align 8
  store i64 0, ptr %bytes, align 8
  store i8 0, ptr %long_lines, align 1
  br label %while.body

while.body:                                       ; preds = %if.end37, %if.end4
  %4 = load i32, ptr %fd.addr, align 4
  %arraydecay = getelementptr inbounds [262145 x i8], ptr %buf, i64 0, i64 0
  %call5 = call i64 @read(i32 noundef %4, ptr noundef %arraydecay, i64 noundef 262144)
  store i64 %call5, ptr %bytes_read, align 8
  %5 = load i64, ptr %bytes_read, align 8
  %cmp6 = icmp sle i64 %5, 0
  br i1 %cmp6, label %if.then8, label %if.end15

if.then8:                                         ; preds = %while.body
  %err = getelementptr inbounds %struct.wc_lines, ptr %agg.result, i32 0, i32 0
  %6 = load i64, ptr %bytes_read, align 8
  %cmp9 = icmp eq i64 %6, 0
  br i1 %cmp9, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then8
  br label %cond.end

cond.false:                                       ; preds = %if.then8
  %call11 = call ptr @__errno_location() #16
  %7 = load i32, ptr %call11, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond12 = phi i32 [ 0, %cond.true ], [ %7, %cond.false ]
  store i32 %cond12, ptr %err, align 8
  %lines13 = getelementptr inbounds %struct.wc_lines, ptr %agg.result, i32 0, i32 1
  %8 = load i64, ptr %lines, align 8
  store i64 %8, ptr %lines13, align 8
  %bytes14 = getelementptr inbounds %struct.wc_lines, ptr %agg.result, i32 0, i32 2
  %9 = load i64, ptr %bytes, align 8
  store i64 %9, ptr %bytes14, align 8
  br label %return

if.end15:                                         ; preds = %while.body
  %10 = load i64, ptr %bytes_read, align 8
  %11 = load i64, ptr %bytes, align 8
  %add = add nsw i64 %11, %10
  store i64 %add, ptr %bytes, align 8
  %arraydecay16 = getelementptr inbounds [262145 x i8], ptr %buf, i64 0, i64 0
  %12 = load i64, ptr %bytes_read, align 8
  %add.ptr = getelementptr inbounds i8, ptr %arraydecay16, i64 %12
  store ptr %add.ptr, ptr %end, align 8
  store i64 0, ptr %buflines, align 8
  %13 = load i8, ptr %long_lines, align 1
  %tobool17 = trunc i8 %13 to i1
  br i1 %tobool17, label %if.else, label %if.then18

if.then18:                                        ; preds = %if.end15
  %arraydecay19 = getelementptr inbounds [262145 x i8], ptr %buf, i64 0, i64 0
  store ptr %arraydecay19, ptr %p, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then18
  %14 = load ptr, ptr %p, align 8
  %15 = load ptr, ptr %end, align 8
  %cmp20 = icmp ult ptr %14, %15
  br i1 %cmp20, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %16 = load ptr, ptr %p, align 8
  %17 = load i8, ptr %16, align 1
  %conv22 = sext i8 %17 to i32
  %cmp23 = icmp eq i32 %conv22, 10
  %conv24 = zext i1 %cmp23 to i32
  %conv25 = sext i32 %conv24 to i64
  %18 = load i64, ptr %buflines, align 8
  %add26 = add nsw i64 %18, %conv25
  store i64 %add26, ptr %buflines, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %19 = load ptr, ptr %p, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %19, i32 1
  store ptr %incdec.ptr, ptr %p, align 8
  br label %for.cond, !llvm.loop !20

for.end:                                          ; preds = %for.cond
  br label %if.end37

if.else:                                          ; preds = %if.end15
  %20 = load ptr, ptr %end, align 8
  store i8 10, ptr %20, align 1
  %arraydecay28 = getelementptr inbounds [262145 x i8], ptr %buf, i64 0, i64 0
  store ptr %arraydecay28, ptr %p27, align 8
  br label %for.cond29

for.cond29:                                       ; preds = %for.inc34, %if.else
  %21 = load ptr, ptr %p27, align 8
  %call30 = call ptr @rawmemchr(ptr noundef %21, i32 noundef 10) #15
  store ptr %call30, ptr %p27, align 8
  %22 = load ptr, ptr %end, align 8
  %cmp31 = icmp ult ptr %call30, %22
  br i1 %cmp31, label %for.body33, label %for.end36

for.body33:                                       ; preds = %for.cond29
  %23 = load i64, ptr %buflines, align 8
  %inc = add nsw i64 %23, 1
  store i64 %inc, ptr %buflines, align 8
  br label %for.inc34

for.inc34:                                        ; preds = %for.body33
  %24 = load ptr, ptr %p27, align 8
  %incdec.ptr35 = getelementptr inbounds i8, ptr %24, i32 1
  store ptr %incdec.ptr35, ptr %p27, align 8
  br label %for.cond29, !llvm.loop !21

for.end36:                                        ; preds = %for.cond29
  br label %if.end37

if.end37:                                         ; preds = %for.end36, %for.end
  %25 = load i64, ptr %buflines, align 8
  %mul = mul nsw i64 15, %25
  %26 = load i64, ptr %bytes_read, align 8
  %cmp38 = icmp sle i64 %mul, %26
  %frombool = zext i1 %cmp38 to i8
  store i8 %frombool, ptr %long_lines, align 1
  %27 = load i64, ptr %buflines, align 8
  %28 = load i64, ptr %lines, align 8
  %add40 = add nsw i64 %28, %27
  store i64 %add40, ptr %lines, align 8
  br label %while.body

return:                                           ; preds = %cond.end, %if.then3
  ret void
}

declare void @mbszero(ptr noundef) #2

declare i64 @rpl_mbrtoc32(ptr noundef, ptr noundef, i64 noundef, ptr noundef) #2

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #5

; Function Attrs: nounwind willreturn memory(read)
declare i32 @mbsinit(ptr noundef) #6

declare i32 @c32width(i32 noundef) #2

; Function Attrs: nounwind
declare i32 @iswspace(i32 noundef) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i65, i1 } @llvm.sadd.with.overflow.i65(i65, i65) #11

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i1 @avx2_supported() #3 {
entry:
  %avx_enabled = alloca i8, align 1
  %0 = load i32, ptr getelementptr inbounds ({ i32, i32, i32, [1 x i32] }, ptr @__cpu_model, i32 0, i32 3, i32 0), align 4
  %1 = and i32 %0, 1024
  %2 = icmp eq i32 %1, 1024
  %3 = and i1 true, %2
  %conv = zext i1 %3 to i32
  %cmp = icmp slt i32 0, %conv
  %frombool = zext i1 %cmp to i8
  store i8 %frombool, ptr %avx_enabled, align 1
  %4 = load i8, ptr @debug, align 1
  %tobool = trunc i8 %4 to i1
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load i8, ptr %avx_enabled, align 1
  %tobool2 = trunc i8 %5 to i1
  br i1 %tobool2, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then
  %call = call ptr @gettext(ptr noundef @.str.66) #13
  br label %cond.end

cond.false:                                       ; preds = %if.then
  %call4 = call ptr @gettext(ptr noundef @.str.67) #13
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %call, %cond.true ], [ %call4, %cond.false ]
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %cond) #18
  br label %if.end

if.end:                                           ; preds = %cond.end, %entry
  %6 = load i8, ptr %avx_enabled, align 1
  %tobool5 = trunc i8 %6 to i1
  ret i1 %tobool5
}

declare void @wc_lines_avx2(ptr dead_on_unwind writable sret(%struct.wc_lines) align 8, i32 noundef) #2

; Function Attrs: nounwind willreturn memory(read)
declare ptr @rawmemchr(ptr noundef, i32 noundef) #6

; Function Attrs: allocsize(0,1)
declare noalias nonnull ptr @xnmalloc(i64 noundef, i64 noundef) #12

; Function Attrs: nounwind
declare i32 @stat(ptr noundef, ptr noundef) #1

attributes #0 = { noinline noreturn nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { nounwind willreturn memory(read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind willreturn memory(none) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { noinline nounwind optnone willreturn memory(read) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { cold "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { allocsize(0,1) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nounwind }
attributes #14 = { noreturn nounwind }
attributes #15 = { nounwind willreturn memory(read) }
attributes #16 = { nounwind willreturn memory(none) }
attributes #17 = { noreturn }
attributes #18 = { cold }
attributes #19 = { allocsize(0,1) }

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
!15 = distinct !{!15, !7}
!16 = distinct !{!16, !7}
!17 = distinct !{!17, !7}
!18 = distinct !{!18, !7}
!19 = distinct !{!19, !7}
!20 = distinct !{!20, !7}
!21 = distinct !{!21, !7}
