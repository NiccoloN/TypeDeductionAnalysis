; ModuleID = 'llvm-link'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.option = type { ptr, i32, ptr, i32 }
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
%struct._IO_FILE = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, [1 x i8], ptr, i64, ptr, ptr, ptr, ptr, i64, i32, [20 x i8] }

@stderr = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [39 x i8] c"Try '%s --help' for more information.\0A\00", align 1
@program_name = external local_unnamed_addr global ptr, align 8
@.str.1 = private unnamed_addr constant [71 x i8] c"Usage: %s [OPTION]... [FILE]...\0A  or:  %s [OPTION]... --files0-from=F\0A\00", align 1
@.str.2 = private unnamed_addr constant [221 x i8] c"Print newline, word, and byte counts for each FILE, and a total line if\0Amore than one FILE is specified.  A word is a nonempty sequence of non white\0Aspace delimited by white space characters or by start or end of input.\0A\00", align 1
@stdout = external local_unnamed_addr global ptr, align 8
@.str.3 = private unnamed_addr constant [301 x i8] c"\0AThe options below may be used to select which counts are printed, always in\0Athe following order: newline, word, character, byte, maximum line length.\0A  -c, --bytes            print the byte counts\0A  -m, --chars            print the character counts\0A  -l, --lines            print the newline counts\0A\00", align 1
@.str.4 = private unnamed_addr constant [301 x i8] c"      --files0-from=F    read input from the files specified by\0A                           NUL-terminated names in file F;\0A                           If F is - then read names from standard input\0A  -L, --max-line-length  print the maximum display width\0A  -w, --words            print the word counts\0A\00", align 1
@.str.5 = private unnamed_addr constant [132 x i8] c"      --total=WHEN       when to print a line with total counts;\0A                           WHEN can be: auto, always, only, never\0A\00", align 1
@.str.6 = private unnamed_addr constant [48 x i8] c"      --help        display this help and exit\0A\00", align 1
@.str.7 = private unnamed_addr constant [57 x i8] c"      --version     output version information and exit\0A\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"wc\00", align 1
@.str.9 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1
@.str.11 = private unnamed_addr constant [24 x i8] c"/usr/local/share/locale\00", align 1
@page_size = internal unnamed_addr global i64 0, align 8
@.str.12 = private unnamed_addr constant [16 x i8] c"POSIXLY_CORRECT\00", align 1
@posixly_correct = internal unnamed_addr global i8 0, align 1
@print_bytes = internal unnamed_addr global i1 false, align 1
@print_chars = internal unnamed_addr global i1 false, align 1
@print_words = internal unnamed_addr global i1 false, align 1
@print_lines = internal unnamed_addr global i1 false, align 1
@print_linelength = internal unnamed_addr global i1 false, align 1
@max_line_length = internal unnamed_addr global i64 0, align 8
@total_bytes = internal unnamed_addr global i64 0, align 8
@total_chars = internal unnamed_addr global i64 0, align 8
@total_words = internal unnamed_addr global i64 0, align 8
@total_lines = internal unnamed_addr global i64 0, align 8
@.str.13 = private unnamed_addr constant [6 x i8] c"clLmw\00", align 1
@longopts = internal constant [11 x %struct.option] [%struct.option { ptr @.str.52, i32 0, ptr null, i32 99 }, %struct.option { ptr @.str.53, i32 0, ptr null, i32 109 }, %struct.option { ptr @.str.54, i32 0, ptr null, i32 108 }, %struct.option { ptr @.str.55, i32 0, ptr null, i32 119 }, %struct.option { ptr @.str.56, i32 0, ptr null, i32 128 }, %struct.option { ptr @.str.57, i32 1, ptr null, i32 129 }, %struct.option { ptr @.str.58, i32 0, ptr null, i32 76 }, %struct.option { ptr @.str.34, i32 1, ptr null, i32 130 }, %struct.option { ptr @.str.59, i32 0, ptr null, i32 -130 }, %struct.option { ptr @.str.60, i32 0, ptr null, i32 -131 }, %struct.option zeroinitializer], align 16
@debug = internal unnamed_addr global i1 false, align 1
@optarg = external local_unnamed_addr global ptr, align 8
@total_types = internal constant [4 x i32] [i32 0, i32 1, i32 2, i32 3], align 16
@.str.14 = private unnamed_addr constant [8 x i8] c"--total\00", align 1
@total_args = internal constant [5 x ptr] [ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr null], align 16
@argmatch_die = external local_unnamed_addr global ptr, align 8
@total_mode = internal unnamed_addr global i32 0, align 4
@.str.15 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@Version = external local_unnamed_addr global ptr, align 8
@.str.16 = private unnamed_addr constant [11 x i8] c"Paul Rubin\00", align 1
@.str.17 = private unnamed_addr constant [16 x i8] c"David MacKenzie\00", align 1
@wc_isprint = internal unnamed_addr global [256 x i8] zeroinitializer, align 16
@wc_isspace = internal unnamed_addr global [256 x i8] zeroinitializer, align 16
@optind = external local_unnamed_addr global i32, align 4
@.str.18 = private unnamed_addr constant [17 x i8] c"extra operand %s\00", align 1
@.str.19 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.20 = private unnamed_addr constant [52 x i8] c"file operands cannot be combined with --files0-from\00", align 1
@.str.21 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@stdin = external local_unnamed_addr global ptr, align 8
@.str.22 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.23 = private unnamed_addr constant [27 x i8] c"cannot open %s for reading\00", align 1
@.str.24 = private unnamed_addr constant [31 x i8] c"cannot read file names from %s\00", align 1
@main.stdin_only = internal global [1 x ptr] zeroinitializer, align 8
@number_width = internal unnamed_addr global i32 0, align 4
@.str.25 = private unnamed_addr constant [63 x i8] c"when reading file names from stdin, no file name of %s allowed\00", align 1
@.str.26 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.27 = private unnamed_addr constant [30 x i8] c"invalid zero-length file name\00", align 1
@.str.28 = private unnamed_addr constant [11 x i8] c"%s:%zu: %s\00", align 1
@.str.29 = private unnamed_addr constant [15 x i8] c"%s: read error\00", align 1
@total_lines_overflow = internal unnamed_addr global i8 0, align 1
@.str.30 = private unnamed_addr constant [12 x i8] c"total lines\00", align 1
@total_words_overflow = internal unnamed_addr global i8 0, align 1
@.str.31 = private unnamed_addr constant [12 x i8] c"total words\00", align 1
@total_chars_overflow = internal unnamed_addr global i8 0, align 1
@.str.32 = private unnamed_addr constant [17 x i8] c"total characters\00", align 1
@total_bytes_overflow = internal unnamed_addr global i8 0, align 1
@.str.33 = private unnamed_addr constant [12 x i8] c"total bytes\00", align 1
@.str.34 = private unnamed_addr constant [6 x i8] c"total\00", align 1
@have_read_stdin = internal unnamed_addr global i1 false, align 1
@.str.35 = private unnamed_addr constant [56 x i8] c"\0AWith no FILE, or when FILE is -, read standard input.\0A\00", align 1
@.str.44 = private unnamed_addr constant [23 x i8] c"\0A%s online help: <%s>\0A\00", align 1
@.str.45 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1
@.str.46 = private unnamed_addr constant [4 x i8] c"en_\00", align 1
@.str.47 = private unnamed_addr constant [71 x i8] c"Report any translation bugs to <https://translationproject.org/team/>\0A\00", align 1
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
@wc_lines.use_avx2 = internal unnamed_addr global i8 0, align 1
@__cpu_model = external dso_local local_unnamed_addr global { i32, i32, i32, [1 x i32] }
@.str.66 = private unnamed_addr constant [28 x i8] c"using avx2 hardware support\00", align 1
@.str.67 = private unnamed_addr constant [26 x i8] c"avx2 support not detected\00", align 1
@write_counts.format_sp_int = internal constant [5 x i8] c" %*s\00", align 1
@.str.68 = private unnamed_addr constant [4 x i8] c" %s\00", align 1

; Function Attrs: noreturn nounwind uwtable
define dso_local void @usage(i32 noundef %status) local_unnamed_addr #0 {
entry:
  %cmp.not = icmp eq i32 %status, 0
  br i1 %cmp.not, label %if.else, label %do.body

do.body:                                          ; preds = %entry
  %0 = load ptr, ptr @stderr, align 8, !tbaa !5
  %call = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str, i32 noundef 5) #17
  %1 = load ptr, ptr @program_name, align 8, !tbaa !5
  %call1 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %call, ptr noundef %1) #17
  br label %if.end

if.else:                                          ; preds = %entry
  %call2 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.1, i32 noundef 5) #17
  %2 = load ptr, ptr @program_name, align 8, !tbaa !5
  %call3 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %call2, ptr noundef %2, ptr noundef %2) #17
  %call4 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.2, i32 noundef 5) #17
  %3 = load ptr, ptr @stdout, align 8, !tbaa !5
  %call5 = tail call i32 @fputs_unlocked(ptr noundef %call4, ptr noundef %3)
  %call.i = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.35, i32 noundef 5) #17
  %4 = load ptr, ptr @stdout, align 8, !tbaa !5
  %call1.i = tail call i32 @fputs_unlocked(ptr noundef %call.i, ptr noundef %4)
  %call6 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.3, i32 noundef 5) #17
  %5 = load ptr, ptr @stdout, align 8, !tbaa !5
  %call7 = tail call i32 @fputs_unlocked(ptr noundef %call6, ptr noundef %5)
  %call8 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.4, i32 noundef 5) #17
  %6 = load ptr, ptr @stdout, align 8, !tbaa !5
  %call9 = tail call i32 @fputs_unlocked(ptr noundef %call8, ptr noundef %6)
  %call10 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.5, i32 noundef 5) #17
  %7 = load ptr, ptr @stdout, align 8, !tbaa !5
  %call11 = tail call i32 @fputs_unlocked(ptr noundef %call10, ptr noundef %7)
  %call12 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.6, i32 noundef 5) #17
  %8 = load ptr, ptr @stdout, align 8, !tbaa !5
  %call13 = tail call i32 @fputs_unlocked(ptr noundef %call12, ptr noundef %8)
  %call14 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.7, i32 noundef 5) #17
  %9 = load ptr, ptr @stdout, align 8, !tbaa !5
  %call15 = tail call i32 @fputs_unlocked(ptr noundef %call14, ptr noundef %9)
  %call6.i = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.44, i32 noundef 5) #17
  %call7.i = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %call6.i, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.45) #17
  %call8.i = tail call ptr @setlocale(i32 noundef 5, ptr noundef null) #17
  %tobool9.not.i = icmp eq ptr %call8.i, null
  br i1 %tobool9.not.i, label %emit_ancillary_info.exit, label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %if.else
  %call10.i = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %call8.i, ptr noundef nonnull dereferenceable(4) @.str.46, i64 noundef 3) #18
  %tobool11.not.i = icmp eq i32 %call10.i, 0
  br i1 %tobool11.not.i, label %emit_ancillary_info.exit, label %if.then12.i

if.then12.i:                                      ; preds = %land.lhs.true.i
  %call13.i = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.47, i32 noundef 5) #17
  %10 = load ptr, ptr @stdout, align 8, !tbaa !5
  %call14.i = tail call i32 @fputs_unlocked(ptr noundef %call13.i, ptr noundef %10)
  br label %emit_ancillary_info.exit

emit_ancillary_info.exit:                         ; preds = %if.then12.i, %land.lhs.true.i, %if.else
  %call18.i = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.49, i32 noundef 5) #17
  %call19.i = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %call18.i, ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.8) #17
  %call20.i = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.50, i32 noundef 5) #17
  %call23.i = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %call20.i, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.51) #17
  br label %if.end

if.end:                                           ; preds = %emit_ancillary_info.exit, %do.body
  tail call void @exit(i32 noundef %status) #19
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
  %tok = alloca %struct.Tokens, align 8
  %st = alloca %struct.stat, align 8
  %ai_err = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 288, ptr nonnull %tok) #17
  %0 = load ptr, ptr %argv, align 8, !tbaa !5
  tail call void @set_program_name(ptr noundef %0) #17
  %call = tail call ptr @setlocale(i32 noundef 6, ptr noundef nonnull @.str.9) #17
  %call1 = tail call ptr @bindtextdomain(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.11) #17
  %call2 = tail call ptr @textdomain(ptr noundef nonnull @.str.10) #17
  %call3 = tail call i32 @atexit(ptr noundef nonnull @close_stdout) #17
  %call4 = tail call i32 @getpagesize() #20
  %conv = sext i32 %call4 to i64
  store i64 %conv, ptr @page_size, align 8, !tbaa !9
  %1 = load ptr, ptr @stdout, align 8, !tbaa !5
  %call5 = tail call i32 @setvbuf(ptr noundef %1, ptr noundef null, i32 noundef 1, i64 noundef 0) #17
  %call6 = tail call ptr @getenv(ptr noundef nonnull @.str.12) #17
  %cmp = icmp ne ptr %call6, null
  %frombool = zext i1 %cmp to i8
  store i8 %frombool, ptr @posixly_correct, align 1, !tbaa !11
  store i1 false, ptr @print_bytes, align 1
  store i1 false, ptr @print_chars, align 1
  store i1 false, ptr @print_words, align 1
  store i1 false, ptr @print_lines, align 1
  store i1 false, ptr @print_linelength, align 1
  store i64 0, ptr @max_line_length, align 8, !tbaa !9
  store i64 0, ptr @total_bytes, align 8, !tbaa !9
  store i64 0, ptr @total_chars, align 8, !tbaa !9
  store i64 0, ptr @total_words, align 8, !tbaa !9
  store i64 0, ptr @total_lines, align 8, !tbaa !9
  br label %while.cond

while.cond:                                       ; preds = %while.cond.backedge, %entry
  %files_from.0 = phi ptr [ null, %entry ], [ %files_from.0.be, %while.cond.backedge ]
  %call8 = tail call i32 @getopt_long(i32 noundef %argc, ptr noundef nonnull %argv, ptr noundef nonnull @.str.13, ptr noundef nonnull @longopts, ptr noundef null) #17
  switch i32 %call8, label %sw.default [
    i32 -1, label %while.end
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

sw.bb:                                            ; preds = %while.cond
  store i1 true, ptr @print_bytes, align 1
  br label %while.cond.backedge

sw.bb11:                                          ; preds = %while.cond
  store i1 true, ptr @print_chars, align 1
  br label %while.cond.backedge

sw.bb12:                                          ; preds = %while.cond
  store i1 true, ptr @print_lines, align 1
  br label %while.cond.backedge

sw.bb13:                                          ; preds = %while.cond
  store i1 true, ptr @print_words, align 1
  br label %while.cond.backedge

sw.bb14:                                          ; preds = %while.cond
  store i1 true, ptr @print_linelength, align 1
  br label %while.cond.backedge

sw.bb15:                                          ; preds = %while.cond
  store i1 true, ptr @debug, align 1
  br label %while.cond.backedge

sw.bb16:                                          ; preds = %while.cond
  %2 = load ptr, ptr @optarg, align 8, !tbaa !5
  br label %while.cond.backedge

sw.bb17:                                          ; preds = %while.cond
  %3 = load ptr, ptr @optarg, align 8, !tbaa !5
  %4 = load ptr, ptr @argmatch_die, align 8, !tbaa !5
  %call18 = tail call i64 @__xargmatch_internal(ptr noundef nonnull @.str.14, ptr noundef %3, ptr noundef nonnull @total_args, ptr noundef nonnull @total_types, i64 noundef 4, ptr noundef %4, i1 noundef zeroext true) #17
  %arrayidx19 = getelementptr inbounds [4 x i32], ptr @total_types, i64 0, i64 %call18
  %5 = load i32, ptr %arrayidx19, align 4, !tbaa !13
  store i32 %5, ptr @total_mode, align 4, !tbaa !13
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %sw.bb17, %sw.bb16, %sw.bb15, %sw.bb14, %sw.bb13, %sw.bb12, %sw.bb11, %sw.bb
  %files_from.0.be = phi ptr [ %files_from.0, %sw.bb17 ], [ %2, %sw.bb16 ], [ %files_from.0, %sw.bb15 ], [ %files_from.0, %sw.bb14 ], [ %files_from.0, %sw.bb13 ], [ %files_from.0, %sw.bb12 ], [ %files_from.0, %sw.bb11 ], [ %files_from.0, %sw.bb ]
  br label %while.cond, !llvm.loop !15

sw.bb20:                                          ; preds = %while.cond
  tail call void @usage(i32 noundef 0) #21
  unreachable

sw.bb21:                                          ; preds = %while.cond
  %6 = load ptr, ptr @stdout, align 8, !tbaa !5
  %7 = load ptr, ptr @Version, align 8, !tbaa !5
  %call22 = tail call ptr @proper_name_lite(ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.16) #17
  %call23 = tail call ptr @proper_name_lite(ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.17) #17
  tail call void (ptr, ptr, ptr, ptr, ...) @version_etc(ptr noundef %6, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.15, ptr noundef %7, ptr noundef %call22, ptr noundef %call23, ptr noundef null) #17
  tail call void @exit(i32 noundef 0) #19
  unreachable

sw.default:                                       ; preds = %while.cond
  tail call void @usage(i32 noundef 1) #21
  unreachable

while.end:                                        ; preds = %while.cond
  %.b339343 = load i1, ptr @print_lines, align 1
  br i1 %.b339343, label %if.endthread-pre-split, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %while.end
  %.b338344 = load i1, ptr @print_words, align 1
  br i1 %.b338344, label %if.endthread-pre-split, label %lor.lhs.false27

lor.lhs.false27:                                  ; preds = %lor.lhs.false
  %.b336345 = load i1, ptr @print_chars, align 1
  br i1 %.b336345, label %if.endthread-pre-split, label %lor.lhs.false30

lor.lhs.false30:                                  ; preds = %lor.lhs.false27
  %.b346 = load i1, ptr @print_bytes, align 1
  br i1 %.b346, label %if.endthread-pre-split, label %lor.lhs.false33

lor.lhs.false33:                                  ; preds = %lor.lhs.false30
  %.b341347 = load i1, ptr @print_linelength, align 1
  br i1 %.b341347, label %vector.body, label %if.end48

if.endthread-pre-split:                           ; preds = %lor.lhs.false30, %lor.lhs.false27, %lor.lhs.false, %while.end
  %.b340348.pr = load i1, ptr @print_linelength, align 1
  br i1 %.b340348.pr, label %vector.body, label %if.end48thread-pre-split

vector.body:                                      ; preds = %if.endthread-pre-split, %lor.lhs.false33
  %call40 = tail call ptr @__ctype_b_loc() #20
  %8 = load ptr, ptr %call40, align 8, !tbaa !5
  %9 = getelementptr inbounds i16, ptr %8, i64 8
  %wide.load = load <8 x i16>, ptr %8, align 2, !tbaa !17
  %wide.load413 = load <8 x i16>, ptr %9, align 2, !tbaa !17
  %10 = lshr <8 x i16> %wide.load, <i16 14, i16 14, i16 14, i16 14, i16 14, i16 14, i16 14, i16 14>
  %11 = lshr <8 x i16> %wide.load413, <i16 14, i16 14, i16 14, i16 14, i16 14, i16 14, i16 14, i16 14>
  %12 = trunc <8 x i16> %10 to <8 x i8>
  %13 = trunc <8 x i16> %11 to <8 x i8>
  %14 = and <8 x i8> %12, <i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1>
  %15 = and <8 x i8> %13, <i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1>
  store <8 x i8> %14, ptr @wc_isprint, align 16, !tbaa !11
  store <8 x i8> %15, ptr getelementptr inbounds ([256 x i8], ptr @wc_isprint, i64 0, i64 8), align 8, !tbaa !11
  %16 = getelementptr inbounds i16, ptr %8, i64 16
  %17 = getelementptr inbounds i16, ptr %8, i64 24
  %wide.load.1 = load <8 x i16>, ptr %16, align 2, !tbaa !17
  %wide.load413.1 = load <8 x i16>, ptr %17, align 2, !tbaa !17
  %18 = lshr <8 x i16> %wide.load.1, <i16 14, i16 14, i16 14, i16 14, i16 14, i16 14, i16 14, i16 14>
  %19 = lshr <8 x i16> %wide.load413.1, <i16 14, i16 14, i16 14, i16 14, i16 14, i16 14, i16 14, i16 14>
  %20 = trunc <8 x i16> %18 to <8 x i8>
  %21 = trunc <8 x i16> %19 to <8 x i8>
  %22 = and <8 x i8> %20, <i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1>
  %23 = and <8 x i8> %21, <i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1>
  store <8 x i8> %22, ptr getelementptr inbounds ([256 x i8], ptr @wc_isprint, i64 0, i64 16), align 16, !tbaa !11
  store <8 x i8> %23, ptr getelementptr inbounds ([256 x i8], ptr @wc_isprint, i64 0, i64 24), align 8, !tbaa !11
  %24 = getelementptr inbounds i16, ptr %8, i64 32
  %25 = getelementptr inbounds i16, ptr %8, i64 40
  %wide.load.2 = load <8 x i16>, ptr %24, align 2, !tbaa !17
  %wide.load413.2 = load <8 x i16>, ptr %25, align 2, !tbaa !17
  %26 = lshr <8 x i16> %wide.load.2, <i16 14, i16 14, i16 14, i16 14, i16 14, i16 14, i16 14, i16 14>
  %27 = lshr <8 x i16> %wide.load413.2, <i16 14, i16 14, i16 14, i16 14, i16 14, i16 14, i16 14, i16 14>
  %28 = trunc <8 x i16> %26 to <8 x i8>
  %29 = trunc <8 x i16> %27 to <8 x i8>
  %30 = and <8 x i8> %28, <i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1>
  %31 = and <8 x i8> %29, <i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1>
  store <8 x i8> %30, ptr getelementptr inbounds ([256 x i8], ptr @wc_isprint, i64 0, i64 32), align 16, !tbaa !11
  store <8 x i8> %31, ptr getelementptr inbounds ([256 x i8], ptr @wc_isprint, i64 0, i64 40), align 8, !tbaa !11
  %32 = getelementptr inbounds i16, ptr %8, i64 48
  %33 = getelementptr inbounds i16, ptr %8, i64 56
  %wide.load.3 = load <8 x i16>, ptr %32, align 2, !tbaa !17
  %wide.load413.3 = load <8 x i16>, ptr %33, align 2, !tbaa !17
  %34 = lshr <8 x i16> %wide.load.3, <i16 14, i16 14, i16 14, i16 14, i16 14, i16 14, i16 14, i16 14>
  %35 = lshr <8 x i16> %wide.load413.3, <i16 14, i16 14, i16 14, i16 14, i16 14, i16 14, i16 14, i16 14>
  %36 = trunc <8 x i16> %34 to <8 x i8>
  %37 = trunc <8 x i16> %35 to <8 x i8>
  %38 = and <8 x i8> %36, <i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1>
  %39 = and <8 x i8> %37, <i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1>
  store <8 x i8> %38, ptr getelementptr inbounds ([256 x i8], ptr @wc_isprint, i64 0, i64 48), align 16, !tbaa !11
  store <8 x i8> %39, ptr getelementptr inbounds ([256 x i8], ptr @wc_isprint, i64 0, i64 56), align 8, !tbaa !11
  %40 = getelementptr inbounds i16, ptr %8, i64 64
  %41 = getelementptr inbounds i16, ptr %8, i64 72
  %wide.load.4 = load <8 x i16>, ptr %40, align 2, !tbaa !17
  %wide.load413.4 = load <8 x i16>, ptr %41, align 2, !tbaa !17
  %42 = lshr <8 x i16> %wide.load.4, <i16 14, i16 14, i16 14, i16 14, i16 14, i16 14, i16 14, i16 14>
  %43 = lshr <8 x i16> %wide.load413.4, <i16 14, i16 14, i16 14, i16 14, i16 14, i16 14, i16 14, i16 14>
  %44 = trunc <8 x i16> %42 to <8 x i8>
  %45 = trunc <8 x i16> %43 to <8 x i8>
  %46 = and <8 x i8> %44, <i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1>
  %47 = and <8 x i8> %45, <i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1>
  store <8 x i8> %46, ptr getelementptr inbounds ([256 x i8], ptr @wc_isprint, i64 0, i64 64), align 16, !tbaa !11
  store <8 x i8> %47, ptr getelementptr inbounds ([256 x i8], ptr @wc_isprint, i64 0, i64 72), align 8, !tbaa !11
  %48 = getelementptr inbounds i16, ptr %8, i64 80
  %49 = getelementptr inbounds i16, ptr %8, i64 88
  %wide.load.5 = load <8 x i16>, ptr %48, align 2, !tbaa !17
  %wide.load413.5 = load <8 x i16>, ptr %49, align 2, !tbaa !17
  %50 = lshr <8 x i16> %wide.load.5, <i16 14, i16 14, i16 14, i16 14, i16 14, i16 14, i16 14, i16 14>
  %51 = lshr <8 x i16> %wide.load413.5, <i16 14, i16 14, i16 14, i16 14, i16 14, i16 14, i16 14, i16 14>
  %52 = trunc <8 x i16> %50 to <8 x i8>
  %53 = trunc <8 x i16> %51 to <8 x i8>
  %54 = and <8 x i8> %52, <i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1>
  %55 = and <8 x i8> %53, <i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1>
  store <8 x i8> %54, ptr getelementptr inbounds ([256 x i8], ptr @wc_isprint, i64 0, i64 80), align 16, !tbaa !11
  store <8 x i8> %55, ptr getelementptr inbounds ([256 x i8], ptr @wc_isprint, i64 0, i64 88), align 8, !tbaa !11
  %56 = getelementptr inbounds i16, ptr %8, i64 96
  %57 = getelementptr inbounds i16, ptr %8, i64 104
  %wide.load.6 = load <8 x i16>, ptr %56, align 2, !tbaa !17
  %wide.load413.6 = load <8 x i16>, ptr %57, align 2, !tbaa !17
  %58 = lshr <8 x i16> %wide.load.6, <i16 14, i16 14, i16 14, i16 14, i16 14, i16 14, i16 14, i16 14>
  %59 = lshr <8 x i16> %wide.load413.6, <i16 14, i16 14, i16 14, i16 14, i16 14, i16 14, i16 14, i16 14>
  %60 = trunc <8 x i16> %58 to <8 x i8>
  %61 = trunc <8 x i16> %59 to <8 x i8>
  %62 = and <8 x i8> %60, <i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1>
  %63 = and <8 x i8> %61, <i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1>
  store <8 x i8> %62, ptr getelementptr inbounds ([256 x i8], ptr @wc_isprint, i64 0, i64 96), align 16, !tbaa !11
  store <8 x i8> %63, ptr getelementptr inbounds ([256 x i8], ptr @wc_isprint, i64 0, i64 104), align 8, !tbaa !11
  %64 = getelementptr inbounds i16, ptr %8, i64 112
  %65 = getelementptr inbounds i16, ptr %8, i64 120
  %wide.load.7 = load <8 x i16>, ptr %64, align 2, !tbaa !17
  %wide.load413.7 = load <8 x i16>, ptr %65, align 2, !tbaa !17
  %66 = lshr <8 x i16> %wide.load.7, <i16 14, i16 14, i16 14, i16 14, i16 14, i16 14, i16 14, i16 14>
  %67 = lshr <8 x i16> %wide.load413.7, <i16 14, i16 14, i16 14, i16 14, i16 14, i16 14, i16 14, i16 14>
  %68 = trunc <8 x i16> %66 to <8 x i8>
  %69 = trunc <8 x i16> %67 to <8 x i8>
  %70 = and <8 x i8> %68, <i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1>
  %71 = and <8 x i8> %69, <i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1>
  store <8 x i8> %70, ptr getelementptr inbounds ([256 x i8], ptr @wc_isprint, i64 0, i64 112), align 16, !tbaa !11
  store <8 x i8> %71, ptr getelementptr inbounds ([256 x i8], ptr @wc_isprint, i64 0, i64 120), align 8, !tbaa !11
  %72 = getelementptr inbounds i16, ptr %8, i64 128
  %73 = getelementptr inbounds i16, ptr %8, i64 136
  %wide.load.8 = load <8 x i16>, ptr %72, align 2, !tbaa !17
  %wide.load413.8 = load <8 x i16>, ptr %73, align 2, !tbaa !17
  %74 = lshr <8 x i16> %wide.load.8, <i16 14, i16 14, i16 14, i16 14, i16 14, i16 14, i16 14, i16 14>
  %75 = lshr <8 x i16> %wide.load413.8, <i16 14, i16 14, i16 14, i16 14, i16 14, i16 14, i16 14, i16 14>
  %76 = trunc <8 x i16> %74 to <8 x i8>
  %77 = trunc <8 x i16> %75 to <8 x i8>
  %78 = and <8 x i8> %76, <i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1>
  %79 = and <8 x i8> %77, <i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1>
  store <8 x i8> %78, ptr getelementptr inbounds ([256 x i8], ptr @wc_isprint, i64 0, i64 128), align 16, !tbaa !11
  store <8 x i8> %79, ptr getelementptr inbounds ([256 x i8], ptr @wc_isprint, i64 0, i64 136), align 8, !tbaa !11
  %80 = getelementptr inbounds i16, ptr %8, i64 144
  %81 = getelementptr inbounds i16, ptr %8, i64 152
  %wide.load.9 = load <8 x i16>, ptr %80, align 2, !tbaa !17
  %wide.load413.9 = load <8 x i16>, ptr %81, align 2, !tbaa !17
  %82 = lshr <8 x i16> %wide.load.9, <i16 14, i16 14, i16 14, i16 14, i16 14, i16 14, i16 14, i16 14>
  %83 = lshr <8 x i16> %wide.load413.9, <i16 14, i16 14, i16 14, i16 14, i16 14, i16 14, i16 14, i16 14>
  %84 = trunc <8 x i16> %82 to <8 x i8>
  %85 = trunc <8 x i16> %83 to <8 x i8>
  %86 = and <8 x i8> %84, <i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1>
  %87 = and <8 x i8> %85, <i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1>
  store <8 x i8> %86, ptr getelementptr inbounds ([256 x i8], ptr @wc_isprint, i64 0, i64 144), align 16, !tbaa !11
  store <8 x i8> %87, ptr getelementptr inbounds ([256 x i8], ptr @wc_isprint, i64 0, i64 152), align 8, !tbaa !11
  %88 = getelementptr inbounds i16, ptr %8, i64 160
  %89 = getelementptr inbounds i16, ptr %8, i64 168
  %wide.load.10 = load <8 x i16>, ptr %88, align 2, !tbaa !17
  %wide.load413.10 = load <8 x i16>, ptr %89, align 2, !tbaa !17
  %90 = lshr <8 x i16> %wide.load.10, <i16 14, i16 14, i16 14, i16 14, i16 14, i16 14, i16 14, i16 14>
  %91 = lshr <8 x i16> %wide.load413.10, <i16 14, i16 14, i16 14, i16 14, i16 14, i16 14, i16 14, i16 14>
  %92 = trunc <8 x i16> %90 to <8 x i8>
  %93 = trunc <8 x i16> %91 to <8 x i8>
  %94 = and <8 x i8> %92, <i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1>
  %95 = and <8 x i8> %93, <i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1>
  store <8 x i8> %94, ptr getelementptr inbounds ([256 x i8], ptr @wc_isprint, i64 0, i64 160), align 16, !tbaa !11
  store <8 x i8> %95, ptr getelementptr inbounds ([256 x i8], ptr @wc_isprint, i64 0, i64 168), align 8, !tbaa !11
  %96 = getelementptr inbounds i16, ptr %8, i64 176
  %97 = getelementptr inbounds i16, ptr %8, i64 184
  %wide.load.11 = load <8 x i16>, ptr %96, align 2, !tbaa !17
  %wide.load413.11 = load <8 x i16>, ptr %97, align 2, !tbaa !17
  %98 = lshr <8 x i16> %wide.load.11, <i16 14, i16 14, i16 14, i16 14, i16 14, i16 14, i16 14, i16 14>
  %99 = lshr <8 x i16> %wide.load413.11, <i16 14, i16 14, i16 14, i16 14, i16 14, i16 14, i16 14, i16 14>
  %100 = trunc <8 x i16> %98 to <8 x i8>
  %101 = trunc <8 x i16> %99 to <8 x i8>
  %102 = and <8 x i8> %100, <i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1>
  %103 = and <8 x i8> %101, <i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1>
  store <8 x i8> %102, ptr getelementptr inbounds ([256 x i8], ptr @wc_isprint, i64 0, i64 176), align 16, !tbaa !11
  store <8 x i8> %103, ptr getelementptr inbounds ([256 x i8], ptr @wc_isprint, i64 0, i64 184), align 8, !tbaa !11
  %104 = getelementptr inbounds i16, ptr %8, i64 192
  %105 = getelementptr inbounds i16, ptr %8, i64 200
  %wide.load.12 = load <8 x i16>, ptr %104, align 2, !tbaa !17
  %wide.load413.12 = load <8 x i16>, ptr %105, align 2, !tbaa !17
  %106 = lshr <8 x i16> %wide.load.12, <i16 14, i16 14, i16 14, i16 14, i16 14, i16 14, i16 14, i16 14>
  %107 = lshr <8 x i16> %wide.load413.12, <i16 14, i16 14, i16 14, i16 14, i16 14, i16 14, i16 14, i16 14>
  %108 = trunc <8 x i16> %106 to <8 x i8>
  %109 = trunc <8 x i16> %107 to <8 x i8>
  %110 = and <8 x i8> %108, <i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1>
  %111 = and <8 x i8> %109, <i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1>
  store <8 x i8> %110, ptr getelementptr inbounds ([256 x i8], ptr @wc_isprint, i64 0, i64 192), align 16, !tbaa !11
  store <8 x i8> %111, ptr getelementptr inbounds ([256 x i8], ptr @wc_isprint, i64 0, i64 200), align 8, !tbaa !11
  %112 = getelementptr inbounds i16, ptr %8, i64 208
  %113 = getelementptr inbounds i16, ptr %8, i64 216
  %wide.load.13 = load <8 x i16>, ptr %112, align 2, !tbaa !17
  %wide.load413.13 = load <8 x i16>, ptr %113, align 2, !tbaa !17
  %114 = lshr <8 x i16> %wide.load.13, <i16 14, i16 14, i16 14, i16 14, i16 14, i16 14, i16 14, i16 14>
  %115 = lshr <8 x i16> %wide.load413.13, <i16 14, i16 14, i16 14, i16 14, i16 14, i16 14, i16 14, i16 14>
  %116 = trunc <8 x i16> %114 to <8 x i8>
  %117 = trunc <8 x i16> %115 to <8 x i8>
  %118 = and <8 x i8> %116, <i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1>
  %119 = and <8 x i8> %117, <i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1>
  store <8 x i8> %118, ptr getelementptr inbounds ([256 x i8], ptr @wc_isprint, i64 0, i64 208), align 16, !tbaa !11
  store <8 x i8> %119, ptr getelementptr inbounds ([256 x i8], ptr @wc_isprint, i64 0, i64 216), align 8, !tbaa !11
  %120 = getelementptr inbounds i16, ptr %8, i64 224
  %121 = getelementptr inbounds i16, ptr %8, i64 232
  %wide.load.14 = load <8 x i16>, ptr %120, align 2, !tbaa !17
  %wide.load413.14 = load <8 x i16>, ptr %121, align 2, !tbaa !17
  %122 = lshr <8 x i16> %wide.load.14, <i16 14, i16 14, i16 14, i16 14, i16 14, i16 14, i16 14, i16 14>
  %123 = lshr <8 x i16> %wide.load413.14, <i16 14, i16 14, i16 14, i16 14, i16 14, i16 14, i16 14, i16 14>
  %124 = trunc <8 x i16> %122 to <8 x i8>
  %125 = trunc <8 x i16> %123 to <8 x i8>
  %126 = and <8 x i8> %124, <i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1>
  %127 = and <8 x i8> %125, <i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1>
  store <8 x i8> %126, ptr getelementptr inbounds ([256 x i8], ptr @wc_isprint, i64 0, i64 224), align 16, !tbaa !11
  store <8 x i8> %127, ptr getelementptr inbounds ([256 x i8], ptr @wc_isprint, i64 0, i64 232), align 8, !tbaa !11
  %128 = getelementptr inbounds i16, ptr %8, i64 240
  %129 = getelementptr inbounds i16, ptr %8, i64 248
  %wide.load.15 = load <8 x i16>, ptr %128, align 2, !tbaa !17
  %wide.load413.15 = load <8 x i16>, ptr %129, align 2, !tbaa !17
  %130 = lshr <8 x i16> %wide.load.15, <i16 14, i16 14, i16 14, i16 14, i16 14, i16 14, i16 14, i16 14>
  %131 = lshr <8 x i16> %wide.load413.15, <i16 14, i16 14, i16 14, i16 14, i16 14, i16 14, i16 14, i16 14>
  %132 = trunc <8 x i16> %130 to <8 x i8>
  %133 = trunc <8 x i16> %131 to <8 x i8>
  %134 = and <8 x i8> %132, <i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1>
  %135 = and <8 x i8> %133, <i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1>
  store <8 x i8> %134, ptr getelementptr inbounds ([256 x i8], ptr @wc_isprint, i64 0, i64 240), align 16, !tbaa !11
  store <8 x i8> %135, ptr getelementptr inbounds ([256 x i8], ptr @wc_isprint, i64 0, i64 248), align 8, !tbaa !11
  br label %if.end48thread-pre-split

if.end48thread-pre-split:                         ; preds = %vector.body, %if.endthread-pre-split
  %.b337349.pr = load i1, ptr @print_words, align 1
  br i1 %.b337349.pr, label %for.cond52.preheader, label %if.end72

if.end48:                                         ; preds = %lor.lhs.false33
  store i1 true, ptr @print_bytes, align 1
  store i1 true, ptr @print_words, align 1
  store i1 true, ptr @print_lines, align 1
  br label %for.cond52.preheader

for.cond52.preheader:                             ; preds = %if.end48, %if.end48thread-pre-split
  %call57 = tail call ptr @__ctype_b_loc() #20
  %136 = load ptr, ptr %call57, align 8, !tbaa !5
  %137 = load i8, ptr @posixly_correct, align 1, !range !19
  %.fr = freeze i8 %137
  %tobool.not.i = icmp eq i8 %.fr, 0
  br i1 %tobool.not.i, label %for.body56.us, label %vector.body418

vector.body418:                                   ; preds = %for.cond52.preheader
  %138 = getelementptr inbounds i16, ptr %136, i64 8
  %wide.load420 = load <8 x i16>, ptr %136, align 2, !tbaa !17
  %wide.load421 = load <8 x i16>, ptr %138, align 2, !tbaa !17
  %139 = lshr <8 x i16> %wide.load420, <i16 13, i16 13, i16 13, i16 13, i16 13, i16 13, i16 13, i16 13>
  %140 = lshr <8 x i16> %wide.load421, <i16 13, i16 13, i16 13, i16 13, i16 13, i16 13, i16 13, i16 13>
  %141 = trunc <8 x i16> %139 to <8 x i8>
  %142 = trunc <8 x i16> %140 to <8 x i8>
  %143 = and <8 x i8> %141, <i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1>
  %144 = and <8 x i8> %142, <i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1>
  store <8 x i8> %143, ptr @wc_isspace, align 16, !tbaa !11
  store <8 x i8> %144, ptr getelementptr inbounds ([256 x i8], ptr @wc_isspace, i64 0, i64 8), align 8, !tbaa !11
  %145 = getelementptr inbounds i16, ptr %136, i64 16
  %146 = getelementptr inbounds i16, ptr %136, i64 24
  %wide.load420.1 = load <8 x i16>, ptr %145, align 2, !tbaa !17
  %wide.load421.1 = load <8 x i16>, ptr %146, align 2, !tbaa !17
  %147 = lshr <8 x i16> %wide.load420.1, <i16 13, i16 13, i16 13, i16 13, i16 13, i16 13, i16 13, i16 13>
  %148 = lshr <8 x i16> %wide.load421.1, <i16 13, i16 13, i16 13, i16 13, i16 13, i16 13, i16 13, i16 13>
  %149 = trunc <8 x i16> %147 to <8 x i8>
  %150 = trunc <8 x i16> %148 to <8 x i8>
  %151 = and <8 x i8> %149, <i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1>
  %152 = and <8 x i8> %150, <i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1>
  store <8 x i8> %151, ptr getelementptr inbounds ([256 x i8], ptr @wc_isspace, i64 0, i64 16), align 16, !tbaa !11
  store <8 x i8> %152, ptr getelementptr inbounds ([256 x i8], ptr @wc_isspace, i64 0, i64 24), align 8, !tbaa !11
  %153 = getelementptr inbounds i16, ptr %136, i64 32
  %154 = getelementptr inbounds i16, ptr %136, i64 40
  %wide.load420.2 = load <8 x i16>, ptr %153, align 2, !tbaa !17
  %wide.load421.2 = load <8 x i16>, ptr %154, align 2, !tbaa !17
  %155 = lshr <8 x i16> %wide.load420.2, <i16 13, i16 13, i16 13, i16 13, i16 13, i16 13, i16 13, i16 13>
  %156 = lshr <8 x i16> %wide.load421.2, <i16 13, i16 13, i16 13, i16 13, i16 13, i16 13, i16 13, i16 13>
  %157 = trunc <8 x i16> %155 to <8 x i8>
  %158 = trunc <8 x i16> %156 to <8 x i8>
  %159 = and <8 x i8> %157, <i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1>
  %160 = and <8 x i8> %158, <i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1>
  store <8 x i8> %159, ptr getelementptr inbounds ([256 x i8], ptr @wc_isspace, i64 0, i64 32), align 16, !tbaa !11
  store <8 x i8> %160, ptr getelementptr inbounds ([256 x i8], ptr @wc_isspace, i64 0, i64 40), align 8, !tbaa !11
  %161 = getelementptr inbounds i16, ptr %136, i64 48
  %162 = getelementptr inbounds i16, ptr %136, i64 56
  %wide.load420.3 = load <8 x i16>, ptr %161, align 2, !tbaa !17
  %wide.load421.3 = load <8 x i16>, ptr %162, align 2, !tbaa !17
  %163 = lshr <8 x i16> %wide.load420.3, <i16 13, i16 13, i16 13, i16 13, i16 13, i16 13, i16 13, i16 13>
  %164 = lshr <8 x i16> %wide.load421.3, <i16 13, i16 13, i16 13, i16 13, i16 13, i16 13, i16 13, i16 13>
  %165 = trunc <8 x i16> %163 to <8 x i8>
  %166 = trunc <8 x i16> %164 to <8 x i8>
  %167 = and <8 x i8> %165, <i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1>
  %168 = and <8 x i8> %166, <i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1>
  store <8 x i8> %167, ptr getelementptr inbounds ([256 x i8], ptr @wc_isspace, i64 0, i64 48), align 16, !tbaa !11
  store <8 x i8> %168, ptr getelementptr inbounds ([256 x i8], ptr @wc_isspace, i64 0, i64 56), align 8, !tbaa !11
  %169 = getelementptr inbounds i16, ptr %136, i64 64
  %170 = getelementptr inbounds i16, ptr %136, i64 72
  %wide.load420.4 = load <8 x i16>, ptr %169, align 2, !tbaa !17
  %wide.load421.4 = load <8 x i16>, ptr %170, align 2, !tbaa !17
  %171 = lshr <8 x i16> %wide.load420.4, <i16 13, i16 13, i16 13, i16 13, i16 13, i16 13, i16 13, i16 13>
  %172 = lshr <8 x i16> %wide.load421.4, <i16 13, i16 13, i16 13, i16 13, i16 13, i16 13, i16 13, i16 13>
  %173 = trunc <8 x i16> %171 to <8 x i8>
  %174 = trunc <8 x i16> %172 to <8 x i8>
  %175 = and <8 x i8> %173, <i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1>
  %176 = and <8 x i8> %174, <i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1>
  store <8 x i8> %175, ptr getelementptr inbounds ([256 x i8], ptr @wc_isspace, i64 0, i64 64), align 16, !tbaa !11
  store <8 x i8> %176, ptr getelementptr inbounds ([256 x i8], ptr @wc_isspace, i64 0, i64 72), align 8, !tbaa !11
  %177 = getelementptr inbounds i16, ptr %136, i64 80
  %178 = getelementptr inbounds i16, ptr %136, i64 88
  %wide.load420.5 = load <8 x i16>, ptr %177, align 2, !tbaa !17
  %wide.load421.5 = load <8 x i16>, ptr %178, align 2, !tbaa !17
  %179 = lshr <8 x i16> %wide.load420.5, <i16 13, i16 13, i16 13, i16 13, i16 13, i16 13, i16 13, i16 13>
  %180 = lshr <8 x i16> %wide.load421.5, <i16 13, i16 13, i16 13, i16 13, i16 13, i16 13, i16 13, i16 13>
  %181 = trunc <8 x i16> %179 to <8 x i8>
  %182 = trunc <8 x i16> %180 to <8 x i8>
  %183 = and <8 x i8> %181, <i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1>
  %184 = and <8 x i8> %182, <i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1>
  store <8 x i8> %183, ptr getelementptr inbounds ([256 x i8], ptr @wc_isspace, i64 0, i64 80), align 16, !tbaa !11
  store <8 x i8> %184, ptr getelementptr inbounds ([256 x i8], ptr @wc_isspace, i64 0, i64 88), align 8, !tbaa !11
  %185 = getelementptr inbounds i16, ptr %136, i64 96
  %186 = getelementptr inbounds i16, ptr %136, i64 104
  %wide.load420.6 = load <8 x i16>, ptr %185, align 2, !tbaa !17
  %wide.load421.6 = load <8 x i16>, ptr %186, align 2, !tbaa !17
  %187 = lshr <8 x i16> %wide.load420.6, <i16 13, i16 13, i16 13, i16 13, i16 13, i16 13, i16 13, i16 13>
  %188 = lshr <8 x i16> %wide.load421.6, <i16 13, i16 13, i16 13, i16 13, i16 13, i16 13, i16 13, i16 13>
  %189 = trunc <8 x i16> %187 to <8 x i8>
  %190 = trunc <8 x i16> %188 to <8 x i8>
  %191 = and <8 x i8> %189, <i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1>
  %192 = and <8 x i8> %190, <i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1>
  store <8 x i8> %191, ptr getelementptr inbounds ([256 x i8], ptr @wc_isspace, i64 0, i64 96), align 16, !tbaa !11
  store <8 x i8> %192, ptr getelementptr inbounds ([256 x i8], ptr @wc_isspace, i64 0, i64 104), align 8, !tbaa !11
  %193 = getelementptr inbounds i16, ptr %136, i64 112
  %194 = getelementptr inbounds i16, ptr %136, i64 120
  %wide.load420.7 = load <8 x i16>, ptr %193, align 2, !tbaa !17
  %wide.load421.7 = load <8 x i16>, ptr %194, align 2, !tbaa !17
  %195 = lshr <8 x i16> %wide.load420.7, <i16 13, i16 13, i16 13, i16 13, i16 13, i16 13, i16 13, i16 13>
  %196 = lshr <8 x i16> %wide.load421.7, <i16 13, i16 13, i16 13, i16 13, i16 13, i16 13, i16 13, i16 13>
  %197 = trunc <8 x i16> %195 to <8 x i8>
  %198 = trunc <8 x i16> %196 to <8 x i8>
  %199 = and <8 x i8> %197, <i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1>
  %200 = and <8 x i8> %198, <i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1>
  store <8 x i8> %199, ptr getelementptr inbounds ([256 x i8], ptr @wc_isspace, i64 0, i64 112), align 16, !tbaa !11
  store <8 x i8> %200, ptr getelementptr inbounds ([256 x i8], ptr @wc_isspace, i64 0, i64 120), align 8, !tbaa !11
  %201 = getelementptr inbounds i16, ptr %136, i64 128
  %202 = getelementptr inbounds i16, ptr %136, i64 136
  %wide.load420.8 = load <8 x i16>, ptr %201, align 2, !tbaa !17
  %wide.load421.8 = load <8 x i16>, ptr %202, align 2, !tbaa !17
  %203 = lshr <8 x i16> %wide.load420.8, <i16 13, i16 13, i16 13, i16 13, i16 13, i16 13, i16 13, i16 13>
  %204 = lshr <8 x i16> %wide.load421.8, <i16 13, i16 13, i16 13, i16 13, i16 13, i16 13, i16 13, i16 13>
  %205 = trunc <8 x i16> %203 to <8 x i8>
  %206 = trunc <8 x i16> %204 to <8 x i8>
  %207 = and <8 x i8> %205, <i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1>
  %208 = and <8 x i8> %206, <i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1>
  store <8 x i8> %207, ptr getelementptr inbounds ([256 x i8], ptr @wc_isspace, i64 0, i64 128), align 16, !tbaa !11
  store <8 x i8> %208, ptr getelementptr inbounds ([256 x i8], ptr @wc_isspace, i64 0, i64 136), align 8, !tbaa !11
  %209 = getelementptr inbounds i16, ptr %136, i64 144
  %210 = getelementptr inbounds i16, ptr %136, i64 152
  %wide.load420.9 = load <8 x i16>, ptr %209, align 2, !tbaa !17
  %wide.load421.9 = load <8 x i16>, ptr %210, align 2, !tbaa !17
  %211 = lshr <8 x i16> %wide.load420.9, <i16 13, i16 13, i16 13, i16 13, i16 13, i16 13, i16 13, i16 13>
  %212 = lshr <8 x i16> %wide.load421.9, <i16 13, i16 13, i16 13, i16 13, i16 13, i16 13, i16 13, i16 13>
  %213 = trunc <8 x i16> %211 to <8 x i8>
  %214 = trunc <8 x i16> %212 to <8 x i8>
  %215 = and <8 x i8> %213, <i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1>
  %216 = and <8 x i8> %214, <i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1>
  store <8 x i8> %215, ptr getelementptr inbounds ([256 x i8], ptr @wc_isspace, i64 0, i64 144), align 16, !tbaa !11
  store <8 x i8> %216, ptr getelementptr inbounds ([256 x i8], ptr @wc_isspace, i64 0, i64 152), align 8, !tbaa !11
  %217 = getelementptr inbounds i16, ptr %136, i64 160
  %218 = getelementptr inbounds i16, ptr %136, i64 168
  %wide.load420.10 = load <8 x i16>, ptr %217, align 2, !tbaa !17
  %wide.load421.10 = load <8 x i16>, ptr %218, align 2, !tbaa !17
  %219 = lshr <8 x i16> %wide.load420.10, <i16 13, i16 13, i16 13, i16 13, i16 13, i16 13, i16 13, i16 13>
  %220 = lshr <8 x i16> %wide.load421.10, <i16 13, i16 13, i16 13, i16 13, i16 13, i16 13, i16 13, i16 13>
  %221 = trunc <8 x i16> %219 to <8 x i8>
  %222 = trunc <8 x i16> %220 to <8 x i8>
  %223 = and <8 x i8> %221, <i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1>
  %224 = and <8 x i8> %222, <i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1>
  store <8 x i8> %223, ptr getelementptr inbounds ([256 x i8], ptr @wc_isspace, i64 0, i64 160), align 16, !tbaa !11
  store <8 x i8> %224, ptr getelementptr inbounds ([256 x i8], ptr @wc_isspace, i64 0, i64 168), align 8, !tbaa !11
  %225 = getelementptr inbounds i16, ptr %136, i64 176
  %226 = getelementptr inbounds i16, ptr %136, i64 184
  %wide.load420.11 = load <8 x i16>, ptr %225, align 2, !tbaa !17
  %wide.load421.11 = load <8 x i16>, ptr %226, align 2, !tbaa !17
  %227 = lshr <8 x i16> %wide.load420.11, <i16 13, i16 13, i16 13, i16 13, i16 13, i16 13, i16 13, i16 13>
  %228 = lshr <8 x i16> %wide.load421.11, <i16 13, i16 13, i16 13, i16 13, i16 13, i16 13, i16 13, i16 13>
  %229 = trunc <8 x i16> %227 to <8 x i8>
  %230 = trunc <8 x i16> %228 to <8 x i8>
  %231 = and <8 x i8> %229, <i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1>
  %232 = and <8 x i8> %230, <i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1>
  store <8 x i8> %231, ptr getelementptr inbounds ([256 x i8], ptr @wc_isspace, i64 0, i64 176), align 16, !tbaa !11
  store <8 x i8> %232, ptr getelementptr inbounds ([256 x i8], ptr @wc_isspace, i64 0, i64 184), align 8, !tbaa !11
  %233 = getelementptr inbounds i16, ptr %136, i64 192
  %234 = getelementptr inbounds i16, ptr %136, i64 200
  %wide.load420.12 = load <8 x i16>, ptr %233, align 2, !tbaa !17
  %wide.load421.12 = load <8 x i16>, ptr %234, align 2, !tbaa !17
  %235 = lshr <8 x i16> %wide.load420.12, <i16 13, i16 13, i16 13, i16 13, i16 13, i16 13, i16 13, i16 13>
  %236 = lshr <8 x i16> %wide.load421.12, <i16 13, i16 13, i16 13, i16 13, i16 13, i16 13, i16 13, i16 13>
  %237 = trunc <8 x i16> %235 to <8 x i8>
  %238 = trunc <8 x i16> %236 to <8 x i8>
  %239 = and <8 x i8> %237, <i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1>
  %240 = and <8 x i8> %238, <i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1>
  store <8 x i8> %239, ptr getelementptr inbounds ([256 x i8], ptr @wc_isspace, i64 0, i64 192), align 16, !tbaa !11
  store <8 x i8> %240, ptr getelementptr inbounds ([256 x i8], ptr @wc_isspace, i64 0, i64 200), align 8, !tbaa !11
  %241 = getelementptr inbounds i16, ptr %136, i64 208
  %242 = getelementptr inbounds i16, ptr %136, i64 216
  %wide.load420.13 = load <8 x i16>, ptr %241, align 2, !tbaa !17
  %wide.load421.13 = load <8 x i16>, ptr %242, align 2, !tbaa !17
  %243 = lshr <8 x i16> %wide.load420.13, <i16 13, i16 13, i16 13, i16 13, i16 13, i16 13, i16 13, i16 13>
  %244 = lshr <8 x i16> %wide.load421.13, <i16 13, i16 13, i16 13, i16 13, i16 13, i16 13, i16 13, i16 13>
  %245 = trunc <8 x i16> %243 to <8 x i8>
  %246 = trunc <8 x i16> %244 to <8 x i8>
  %247 = and <8 x i8> %245, <i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1>
  %248 = and <8 x i8> %246, <i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1>
  store <8 x i8> %247, ptr getelementptr inbounds ([256 x i8], ptr @wc_isspace, i64 0, i64 208), align 16, !tbaa !11
  store <8 x i8> %248, ptr getelementptr inbounds ([256 x i8], ptr @wc_isspace, i64 0, i64 216), align 8, !tbaa !11
  %249 = getelementptr inbounds i16, ptr %136, i64 224
  %250 = getelementptr inbounds i16, ptr %136, i64 232
  %wide.load420.14 = load <8 x i16>, ptr %249, align 2, !tbaa !17
  %wide.load421.14 = load <8 x i16>, ptr %250, align 2, !tbaa !17
  %251 = lshr <8 x i16> %wide.load420.14, <i16 13, i16 13, i16 13, i16 13, i16 13, i16 13, i16 13, i16 13>
  %252 = lshr <8 x i16> %wide.load421.14, <i16 13, i16 13, i16 13, i16 13, i16 13, i16 13, i16 13, i16 13>
  %253 = trunc <8 x i16> %251 to <8 x i8>
  %254 = trunc <8 x i16> %252 to <8 x i8>
  %255 = and <8 x i8> %253, <i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1>
  %256 = and <8 x i8> %254, <i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1>
  store <8 x i8> %255, ptr getelementptr inbounds ([256 x i8], ptr @wc_isspace, i64 0, i64 224), align 16, !tbaa !11
  store <8 x i8> %256, ptr getelementptr inbounds ([256 x i8], ptr @wc_isspace, i64 0, i64 232), align 8, !tbaa !11
  %257 = getelementptr inbounds i16, ptr %136, i64 240
  %258 = getelementptr inbounds i16, ptr %136, i64 248
  %wide.load420.15 = load <8 x i16>, ptr %257, align 2, !tbaa !17
  %wide.load421.15 = load <8 x i16>, ptr %258, align 2, !tbaa !17
  %259 = lshr <8 x i16> %wide.load420.15, <i16 13, i16 13, i16 13, i16 13, i16 13, i16 13, i16 13, i16 13>
  %260 = lshr <8 x i16> %wide.load421.15, <i16 13, i16 13, i16 13, i16 13, i16 13, i16 13, i16 13, i16 13>
  %261 = trunc <8 x i16> %259 to <8 x i8>
  %262 = trunc <8 x i16> %260 to <8 x i8>
  %263 = and <8 x i8> %261, <i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1>
  %264 = and <8 x i8> %262, <i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1>
  store <8 x i8> %263, ptr getelementptr inbounds ([256 x i8], ptr @wc_isspace, i64 0, i64 240), align 16, !tbaa !11
  store <8 x i8> %264, ptr getelementptr inbounds ([256 x i8], ptr @wc_isspace, i64 0, i64 248), align 8, !tbaa !11
  br label %if.end72

for.body56.us:                                    ; preds = %lor.end.us, %for.cond52.preheader
  %indvars.iv389 = phi i64 [ %indvars.iv.next390, %lor.end.us ], [ 0, %for.cond52.preheader ]
  %arrayidx59.us = getelementptr inbounds i16, ptr %136, i64 %indvars.iv389
  %265 = load i16, ptr %arrayidx59.us, align 2, !tbaa !17
  %266 = and i16 %265, 8192
  %tobool62.not.us = icmp eq i16 %266, 0
  br i1 %tobool62.not.us, label %lor.rhs.us, label %lor.end.us

lor.rhs.us:                                       ; preds = %for.body56.us
  %267 = trunc i64 %indvars.iv389 to i32
  %call.i.us = tail call i32 @rpl_btowc(i32 noundef %267) #18
  switch i32 %call.i.us, label %lor.rhs.i.us [
    i32 8239, label %lor.end.us
    i32 8199, label %lor.end.us
    i32 160, label %lor.end.us
    i32 8288, label %lor.end.us
  ]

lor.rhs.i.us:                                     ; preds = %lor.rhs.us
  br label %lor.end.us

lor.end.us:                                       ; preds = %lor.rhs.i.us, %lor.rhs.us, %lor.rhs.us, %lor.rhs.us, %lor.rhs.us, %for.body56.us
  %frombool68.us = phi i8 [ 1, %for.body56.us ], [ 1, %lor.rhs.us ], [ 0, %lor.rhs.i.us ], [ 1, %lor.rhs.us ], [ 1, %lor.rhs.us ], [ 1, %lor.rhs.us ]
  %arrayidx67.us = getelementptr inbounds [256 x i8], ptr @wc_isspace, i64 0, i64 %indvars.iv389
  store i8 %frombool68.us, ptr %arrayidx67.us, align 1, !tbaa !11
  %indvars.iv.next390 = add nuw nsw i64 %indvars.iv389, 1
  %exitcond392.not = icmp eq i64 %indvars.iv.next390, 256
  br i1 %exitcond392.not, label %if.end72, label %for.body56.us, !llvm.loop !20

if.end72:                                         ; preds = %lor.end.us, %vector.body418, %if.end48thread-pre-split
  %tobool73 = icmp eq ptr %files_from.0, null
  %268 = load i32, ptr @optind, align 4
  %cmp130 = icmp slt i32 %268, %argc
  br i1 %tobool73, label %if.else129, label %if.then74

if.then74:                                        ; preds = %if.end72
  br i1 %cmp130, label %if.then77, label %if.end84

if.then77:                                        ; preds = %if.then74
  %call78 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.18, i32 noundef 5) #17
  %269 = load i32, ptr @optind, align 4, !tbaa !13
  %idxprom79 = sext i32 %269 to i64
  %arrayidx80 = getelementptr inbounds ptr, ptr %argv, i64 %idxprom79
  %270 = load ptr, ptr %arrayidx80, align 8, !tbaa !5
  %call81 = tail call ptr @quotearg_style(i32 noundef 4, ptr noundef %270) #17
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %call78, ptr noundef %call81) #22
  %271 = load ptr, ptr @stderr, align 8, !tbaa !5
  %call82 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.20, i32 noundef 5) #17
  %call83 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %271, i32 noundef 1, ptr noundef nonnull @.str.19, ptr noundef %call82) #17
  tail call void @usage(i32 noundef 1) #21
  unreachable

if.end84:                                         ; preds = %if.then74
  %call85 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %files_from.0, ptr noundef nonnull dereferenceable(2) @.str.21) #18
  %cmp86 = icmp eq i32 %call85, 0
  br i1 %cmp86, label %if.then88, label %if.else

if.then88:                                        ; preds = %if.end84
  %272 = load ptr, ptr @stdin, align 8, !tbaa !5
  br label %if.end97

if.else:                                          ; preds = %if.end84
  %call89 = tail call noalias ptr @rpl_fopen(ptr noundef nonnull %files_from.0, ptr noundef nonnull @.str.22) #17
  %cmp90 = icmp eq ptr %call89, null
  br i1 %cmp90, label %if.then92, label %if.end97

if.then92:                                        ; preds = %if.else
  %call93 = tail call ptr @__errno_location() #20
  %273 = load i32, ptr %call93, align 4, !tbaa !13
  %call94 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.23, i32 noundef 5) #17
  %call95 = tail call ptr @quotearg_style(i32 noundef 4, ptr noundef nonnull %files_from.0) #17
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %273, ptr noundef %call94, ptr noundef %call95) #22
  unreachable

if.end97:                                         ; preds = %if.else, %if.then88
  %stream.0 = phi ptr [ %272, %if.then88 ], [ %call89, %if.else ]
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %st) #17
  %call98 = tail call i32 @fileno(ptr noundef %stream.0) #17
  %call99 = call i32 @fstat(i32 noundef %call98, ptr noundef nonnull %st) #17
  %cmp100 = icmp eq i32 %call99, 0
  br i1 %cmp100, label %land.lhs.true, label %if.else126

land.lhs.true:                                    ; preds = %if.end97
  %st_mode = getelementptr inbounds %struct.stat, ptr %st, i64 0, i32 3
  %274 = load i32, ptr %st_mode, align 8, !tbaa !21
  %and102 = and i32 %274, 61440
  %cmp103 = icmp eq i32 %and102, 32768
  br i1 %cmp103, label %land.lhs.true105, label %if.else126

land.lhs.true105:                                 ; preds = %land.lhs.true
  %st_size = getelementptr inbounds %struct.stat, ptr %st, i64 0, i32 8
  %275 = load i64, ptr %st_size, align 8, !tbaa !24
  %conv106 = sitofp i64 %275 to double
  %call107 = tail call double @physmem_available() #17
  %div = fmul double %call107, 5.000000e-01
  %cmp108 = fcmp ogt double %div, 0x4164000000000000
  br i1 %cmp108, label %cond.end, label %cond.false

cond.false:                                       ; preds = %land.lhs.true105
  %call110 = tail call double @physmem_available() #17
  %div111 = fmul double %call110, 5.000000e-01
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %land.lhs.true105
  %cond = phi double [ %div111, %cond.false ], [ 0x4164000000000000, %land.lhs.true105 ]
  %cmp112 = fcmp ult double %cond, %conv106
  br i1 %cmp112, label %if.else126, label %if.then114

if.then114:                                       ; preds = %cond.end
  call void @readtokens0_init(ptr noundef nonnull %tok) #17
  %call115 = call zeroext i1 @readtokens0(ptr noundef %stream.0, ptr noundef nonnull %tok) #17
  br i1 %call115, label %lor.lhs.false116, label %if.then120

lor.lhs.false116:                                 ; preds = %if.then114
  %call117 = call i32 @rpl_fclose(ptr noundef %stream.0) #17
  %cmp118.not = icmp eq i32 %call117, 0
  br i1 %cmp118.not, label %if.end123, label %if.then120

if.then120:                                       ; preds = %lor.lhs.false116, %if.then114
  %call121 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.24, i32 noundef 5) #17
  %call122 = call ptr @quotearg_style(i32 noundef 4, ptr noundef nonnull %files_from.0) #17
  call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef 0, ptr noundef %call121, ptr noundef %call122) #22
  unreachable

if.end123:                                        ; preds = %lor.lhs.false116
  %tok124 = getelementptr inbounds %struct.Tokens, ptr %tok, i64 0, i32 1
  %276 = load ptr, ptr %tok124, align 8, !tbaa !25
  %277 = load i64, ptr %tok, align 8, !tbaa !28
  %call125 = call ptr @argv_iter_init_argv(ptr noundef %276) #17
  br label %if.end128

if.else126:                                       ; preds = %cond.end, %land.lhs.true, %if.end97
  %call127 = tail call ptr @argv_iter_init_stream(ptr noundef %stream.0) #17
  br label %if.end128

if.end128:                                        ; preds = %if.else126, %if.end123
  %files.0 = phi ptr [ %276, %if.end123 ], [ null, %if.else126 ]
  %read_tokens.0 = phi i1 [ true, %if.end123 ], [ false, %if.else126 ]
  %ai.0 = phi ptr [ %call125, %if.end123 ], [ %call127, %if.else126 ]
  %nfiles.0 = phi i64 [ %277, %if.end123 ], [ 0, %if.else126 ]
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %st) #17
  br label %if.end144

if.else129:                                       ; preds = %if.end72
  %idx.ext = sext i32 %268 to i64
  %add.ptr = getelementptr inbounds ptr, ptr %argv, i64 %idx.ext
  %cond135 = select i1 %cmp130, ptr %add.ptr, ptr @main.stdin_only
  %sub = sub nsw i32 %argc, %268
  %cond141 = select i1 %cmp130, i32 %sub, i32 1
  %conv142 = sext i32 %cond141 to i64
  %call143 = tail call ptr @argv_iter_init_argv(ptr noundef nonnull %cond135) #17
  br label %if.end144

if.end144:                                        ; preds = %if.else129, %if.end128
  %files.1 = phi ptr [ %files.0, %if.end128 ], [ %cond135, %if.else129 ]
  %read_tokens.1 = phi i1 [ %read_tokens.0, %if.end128 ], [ false, %if.else129 ]
  %ai.1 = phi ptr [ %ai.0, %if.end128 ], [ %call143, %if.else129 ]
  %nfiles.1 = phi i64 [ %nfiles.0, %if.end128 ], [ %conv142, %if.else129 ]
  %tobool145.not = icmp eq ptr %ai.1, null
  br i1 %tobool145.not, label %if.then146, label %if.end147

if.then146:                                       ; preds = %if.end144
  call void @xalloc_die() #19
  unreachable

if.end147:                                        ; preds = %if.end144
  %cond.i = call i64 @llvm.umax.i64(i64 %nfiles.1, i64 1)
  %call.i353 = call noalias nonnull ptr @xnmalloc(i64 noundef %cond.i, i64 noundef 152) #23
  switch i64 %nfiles.1, label %if.else.i [
    i64 0, label %if.then.i
    i64 1, label %land.lhs.true.i
  ]

land.lhs.true.i:                                  ; preds = %if.end147
  %.b5658.i = load i1, ptr @print_lines, align 1
  %conv.i = zext i1 %.b5658.i to i32
  %.b5559.i = load i1, ptr @print_words, align 1
  %conv4.i = zext i1 %.b5559.i to i32
  %add.i = add nuw nsw i32 %conv4.i, %conv.i
  %.b5460.i = load i1, ptr @print_chars, align 1
  %conv6.i = zext i1 %.b5460.i to i32
  %add7.i = add nuw nsw i32 %add.i, %conv6.i
  %.b61.i = load i1, ptr @print_bytes, align 1
  %conv9.i = zext i1 %.b61.i to i32
  %add10.i = add nuw nsw i32 %add7.i, %conv9.i
  %.b5762.i = load i1, ptr @print_linelength, align 1
  %conv12.i = zext i1 %.b5762.i to i32
  %add13.i = add nuw nsw i32 %add10.i, %conv12.i
  %cmp14.i = icmp eq i32 %add13.i, 1
  br i1 %cmp14.i, label %if.then.i, label %for.body.i.preheader

if.then.i:                                        ; preds = %land.lhs.true.i, %if.end147
  store i32 1, ptr %call.i353, align 8, !tbaa !29
  br label %get_input_fstatus.exit

if.else.i:                                        ; preds = %if.end147
  %cmp1663.i = icmp sgt i64 %nfiles.1, 0
  br i1 %cmp1663.i, label %for.body.i.preheader, label %if.end154

for.body.i.preheader:                             ; preds = %if.else.i, %land.lhs.true.i
  br label %for.body.i

for.body.i:                                       ; preds = %cond.end33.i, %for.body.i.preheader
  %i.064.i = phi i64 [ %inc.i, %cond.end33.i ], [ 0, %for.body.i.preheader ]
  %arrayidx18.i = getelementptr inbounds ptr, ptr %files.1, i64 %i.064.i
  %278 = load ptr, ptr %arrayidx18.i, align 8, !tbaa !5
  %tobool19.not.i = icmp eq ptr %278, null
  br i1 %tobool19.not.i, label %cond.true25.i, label %lor.lhs.false20.i

lor.lhs.false20.i:                                ; preds = %for.body.i
  %call22.i = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %278, ptr noundef nonnull dereferenceable(2) @.str.21) #18
  %cmp23.i = icmp eq i32 %call22.i, 0
  br i1 %cmp23.i, label %cond.true25.i, label %cond.false28.i

cond.true25.i:                                    ; preds = %lor.lhs.false20.i, %for.body.i
  %st.i = getelementptr inbounds %struct.fstatus, ptr %call.i353, i64 %i.064.i, i32 1
  %call27.i = call i32 @fstat(i32 noundef 0, ptr noundef nonnull %st.i) #17
  br label %cond.end33.i

cond.false28.i:                                   ; preds = %lor.lhs.false20.i
  %st31.i = getelementptr inbounds %struct.fstatus, ptr %call.i353, i64 %i.064.i, i32 1
  %call32.i = call i32 @stat(ptr noundef nonnull %278, ptr noundef nonnull %st31.i) #17
  br label %cond.end33.i

cond.end33.i:                                     ; preds = %cond.false28.i, %cond.true25.i
  %cond34.i = phi i32 [ %call27.i, %cond.true25.i ], [ %call32.i, %cond.false28.i ]
  %arrayidx35.i = getelementptr inbounds %struct.fstatus, ptr %call.i353, i64 %i.064.i
  store i32 %cond34.i, ptr %arrayidx35.i, align 8, !tbaa !29
  %inc.i = add nuw nsw i64 %i.064.i, 1
  %exitcond.not.i = icmp eq i64 %inc.i, %nfiles.1
  br i1 %exitcond.not.i, label %get_input_fstatus.exit, label %for.body.i, !llvm.loop !31

get_input_fstatus.exit:                           ; preds = %cond.end33.i, %if.then.i
  %279 = load i32, ptr @total_mode, align 4, !tbaa !13
  %cmp149 = icmp ne i32 %279, 2
  %cmp.i = icmp sgt i64 %nfiles.1, 0
  %or.cond = select i1 %cmp149, i1 %cmp.i, i1 false
  br i1 %or.cond, label %land.lhs.true.i354, label %if.end154

land.lhs.true.i354:                               ; preds = %get_input_fstatus.exit
  %280 = load i32, ptr %call.i353, align 8, !tbaa !29
  %cmp1.i = icmp slt i32 %280, 1
  br i1 %cmp1.i, label %for.body.i355, label %if.end154

for.body.i355:                                    ; preds = %for.inc.i, %land.lhs.true.i354
  %i.041.i = phi i64 [ %inc.i357, %for.inc.i ], [ 0, %land.lhs.true.i354 ]
  %regular_total.040.i = phi i64 [ %regular_total.1.i, %for.inc.i ], [ 0, %land.lhs.true.i354 ]
  %minimum_width.039.i = phi i32 [ %minimum_width.1.i, %for.inc.i ], [ 1, %land.lhs.true.i354 ]
  %arrayidx3.i = getelementptr inbounds %struct.fstatus, ptr %call.i353, i64 %i.041.i
  %281 = load i32, ptr %arrayidx3.i, align 8, !tbaa !29
  %tobool.not.i356 = icmp eq i32 %281, 0
  br i1 %tobool.not.i356, label %if.then5.i, label %for.inc.i

if.then5.i:                                       ; preds = %for.body.i355
  %st_mode.i = getelementptr inbounds %struct.fstatus, ptr %call.i353, i64 %i.041.i, i32 1, i32 3
  %282 = load i32, ptr %st_mode.i, align 8, !tbaa !32
  %and.i = and i32 %282, 61440
  %cmp7.i = icmp eq i32 %and.i, 32768
  br i1 %cmp7.i, label %if.else.i359, label %for.inc.i

if.else.i359:                                     ; preds = %if.then5.i
  %st_size.i = getelementptr inbounds %struct.fstatus, ptr %call.i353, i64 %i.041.i, i32 1, i32 8
  %283 = load i64, ptr %st_size.i, align 8, !tbaa !33
  %284 = zext i64 %regular_total.040.i to i65
  %285 = sext i64 %283 to i65
  %286 = call { i65, i1 } @llvm.sadd.with.overflow.i65(i65 %284, i65 %285)
  %287 = extractvalue { i65, i1 } %286, 1
  %288 = extractvalue { i65, i1 } %286, 0
  %289 = trunc i65 %288 to i64
  %290 = icmp slt i65 %288, 0
  %291 = or i1 %287, %290
  br i1 %291, label %for.body16.preheader.i, label %for.inc.i

for.inc.i:                                        ; preds = %if.else.i359, %if.then5.i, %for.body.i355
  %minimum_width.1.i = phi i32 [ %minimum_width.039.i, %for.body.i355 ], [ %minimum_width.039.i, %if.else.i359 ], [ 7, %if.then5.i ]
  %regular_total.1.i = phi i64 [ %regular_total.040.i, %for.body.i355 ], [ %289, %if.else.i359 ], [ %regular_total.040.i, %if.then5.i ]
  %inc.i357 = add nuw nsw i64 %i.041.i, 1
  %exitcond.not.i358 = icmp eq i64 %inc.i357, %nfiles.1
  br i1 %exitcond.not.i358, label %cleanup.i, label %for.body.i355, !llvm.loop !34

cleanup.i:                                        ; preds = %for.inc.i
  %cmp1545.i = icmp ugt i64 %regular_total.1.i, 9
  br i1 %cmp1545.i, label %for.body16.preheader.i, label %for.end19.i

for.body16.preheader.i:                           ; preds = %cleanup.i, %if.else.i359
  %regular_total.2.ph54.i = phi i64 [ %regular_total.1.i, %cleanup.i ], [ -1, %if.else.i359 ]
  %minimum_width.0.lcssa.ph53.i = phi i32 [ %minimum_width.1.i, %cleanup.i ], [ %minimum_width.039.i, %if.else.i359 ]
  br label %for.body16.i

for.body16.i:                                     ; preds = %for.body16.i, %for.body16.preheader.i
  %regular_total.347.i = phi i64 [ %div.i, %for.body16.i ], [ %regular_total.2.ph54.i, %for.body16.preheader.i ]
  %width.046.i = phi i32 [ %inc17.i, %for.body16.i ], [ 1, %for.body16.preheader.i ]
  %inc17.i = add nuw nsw i32 %width.046.i, 1
  %div.i = udiv i64 %regular_total.347.i, 10
  %cmp15.i = icmp ugt i64 %regular_total.347.i, 99
  br i1 %cmp15.i, label %for.body16.i, label %for.end19.i, !llvm.loop !35

for.end19.i:                                      ; preds = %for.body16.i, %cleanup.i
  %minimum_width.0.lcssa.ph52.i = phi i32 [ %minimum_width.1.i, %cleanup.i ], [ %minimum_width.0.lcssa.ph53.i, %for.body16.i ]
  %width.0.lcssa.i = phi i32 [ 1, %cleanup.i ], [ %inc17.i, %for.body16.i ]
  %spec.select.i = call i32 @llvm.smax.i32(i32 %width.0.lcssa.i, i32 %minimum_width.0.lcssa.ph52.i)
  br label %if.end154

if.end154:                                        ; preds = %for.end19.i, %land.lhs.true.i354, %get_input_fstatus.exit, %if.else.i
  %storemerge = phi i32 [ 1, %get_input_fstatus.exit ], [ %spec.select.i, %for.end19.i ], [ 1, %land.lhs.true.i354 ], [ 1, %if.else.i ]
  store i32 %storemerge, ptr @number_width, align 4, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ai_err) #17
  %call157374 = call ptr @argv_iter(ptr noundef nonnull %ai.1, ptr noundef nonnull %ai_err) #17
  %tobool158.not375 = icmp eq ptr %call157374, null
  br i1 %tobool158.not375, label %for.cond.cleanup159, label %for.body160.lr.ph

for.body160.lr.ph:                                ; preds = %if.end154
  %tobool190.not = icmp eq i64 %nfiles.1, 0
  br label %for.body160

for.cond.cleanup159:                              ; preds = %if.end208, %if.end154
  %ok.0.lcssa = phi i8 [ 1, %if.end154 ], [ %ok.1, %if.end208 ]
  %292 = load i32, ptr %ai_err, align 4, !tbaa !13
  switch i32 %292, label %sw.default218 [
    i32 2, label %sw.epilog219
    i32 4, label %sw.epilog219.thread
    i32 3, label %sw.bb216
  ]

for.body160:                                      ; preds = %if.end208, %for.body160.lr.ph
  %indvars.iv393 = phi i64 [ 0, %for.body160.lr.ph ], [ %indvars.iv.next394, %if.end208 ]
  %call157378 = phi ptr [ %call157374, %for.body160.lr.ph ], [ %call157, %if.end208 ]
  %ok.0376 = phi i8 [ 1, %for.body160.lr.ph ], [ %ok.1, %if.end208 ]
  br i1 %tobool73, label %if.end173.thread, label %land.lhs.true162

land.lhs.true162:                                 ; preds = %for.body160
  %call163 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %files_from.0, ptr noundef nonnull dereferenceable(2) @.str.21) #18
  %cmp164 = icmp eq i32 %call163, 0
  br i1 %cmp164, label %land.lhs.true166, label %if.end173

land.lhs.true166:                                 ; preds = %land.lhs.true162
  %call167 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %call157378, ptr noundef nonnull dereferenceable(2) @.str.21) #18
  %cmp168 = icmp eq i32 %call167, 0
  br i1 %cmp168, label %if.end173.thread398, label %if.end173

if.end173:                                        ; preds = %land.lhs.true166, %land.lhs.true162
  %293 = load i8, ptr %call157378, align 1, !tbaa !36
  %tobool175.not = icmp eq i8 %293, 0
  br i1 %tobool175.not, label %if.then176, label %if.else189

if.end173.thread398:                              ; preds = %land.lhs.true166
  %call171 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.25, i32 noundef 5) #17
  %call172 = call ptr @quotearg_style(i32 noundef 4, ptr noundef nonnull %call157378) #17
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %call171, ptr noundef %call172) #22
  %294 = load i8, ptr %call157378, align 1, !tbaa !36
  %tobool175.not400 = icmp eq i8 %294, 0
  br i1 %tobool175.not400, label %if.then176, label %if.end204

if.end173.thread:                                 ; preds = %for.body160
  %295 = load i8, ptr %call157378, align 1, !tbaa !36
  %tobool175.not362 = icmp eq i8 %295, 0
  br i1 %tobool175.not362, label %if.then179, label %if.else189

if.then176:                                       ; preds = %if.end173.thread398, %if.end173
  %call182 = call ptr @quotearg_n_style_colon(i32 noundef 0, i32 noundef 3, ptr noundef nonnull %files_from.0) #17
  %call183 = call i64 @argv_iter_n_args(ptr noundef nonnull %ai.1) #18
  %call184 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.27, i32 noundef 5) #17
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef nonnull @.str.28, ptr noundef %call182, i64 noundef %call183, ptr noundef %call184) #22
  br label %if.end204

if.then179:                                       ; preds = %if.end173.thread
  %call180 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.27, i32 noundef 5) #17
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef nonnull @.str.26, ptr noundef %call180) #22
  br label %if.end204

if.else189:                                       ; preds = %if.end173.thread, %if.end173
  %idxprom195 = select i1 %tobool190.not, i64 0, i64 %indvars.iv393
  %arrayidx196 = getelementptr inbounds %struct.fstatus, ptr %call.i353, i64 %idxprom195
  %call197 = call fastcc zeroext i1 @wc_file(ptr noundef nonnull %call157378, ptr noundef nonnull %arrayidx196)
  %tobool202352 = icmp ne i8 %ok.0376, 0
  %tobool202 = select i1 %call197, i1 %tobool202352, i1 false
  %frombool203 = zext i1 %tobool202 to i8
  br label %if.end204

if.end204:                                        ; preds = %if.else189, %if.then179, %if.then176, %if.end173.thread398
  %ok.1 = phi i8 [ %frombool203, %if.else189 ], [ 0, %if.then179 ], [ 0, %if.then176 ], [ 0, %if.end173.thread398 ]
  br i1 %tobool190.not, label %if.then206, label %if.end208

if.then206:                                       ; preds = %if.end204
  store i32 1, ptr %call.i353, align 8, !tbaa !29
  br label %if.end208

if.end208:                                        ; preds = %if.then206, %if.end204
  %indvars.iv.next394 = add nuw i64 %indvars.iv393, 1
  %call157 = call ptr @argv_iter(ptr noundef nonnull %ai.1, ptr noundef nonnull %ai_err) #17
  %tobool158.not = icmp eq ptr %call157, null
  br i1 %tobool158.not, label %for.cond.cleanup159, label %for.body160, !llvm.loop !37

sw.epilog219.thread:                              ; preds = %for.cond.cleanup159
  %call213 = tail call ptr @__errno_location() #20
  %296 = load i32, ptr %call213, align 4, !tbaa !13
  %call214 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.29, i32 noundef 5) #17
  %call215 = call ptr @quotearg_n_style_colon(i32 noundef 0, i32 noundef 3, ptr noundef %files_from.0) #17
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %296, ptr noundef %call214, ptr noundef %call215) #22
  br label %if.end237

sw.bb216:                                         ; preds = %for.cond.cleanup159
  call void @xalloc_die() #19
  unreachable

sw.default218:                                    ; preds = %for.cond.cleanup159
  unreachable

sw.epilog219:                                     ; preds = %for.cond.cleanup159
  %tobool220 = icmp ne i8 %ok.0.lcssa, 0
  %or.cond.not = and i1 %tobool73, %tobool220
  br i1 %or.cond.not, label %land.lhs.true224, label %if.end237

land.lhs.true224:                                 ; preds = %sw.epilog219
  %call225 = call i64 @argv_iter_n_args(ptr noundef nonnull %ai.1) #18
  %cmp226 = icmp eq i64 %call225, 0
  br i1 %cmp226, label %if.then228, label %if.end237

if.then228:                                       ; preds = %land.lhs.true224
  store i1 true, ptr @have_read_stdin, align 1
  %call125.i = call fastcc zeroext i1 @wc(i32 noundef 0, ptr noundef null, ptr noundef nonnull %call.i353, i64 noundef -1)
  %frombool236 = zext i1 %call125.i to i8
  br label %if.end237

if.end237:                                        ; preds = %if.then228, %land.lhs.true224, %sw.epilog219, %sw.epilog219.thread
  %ok.3 = phi i8 [ %ok.0.lcssa, %sw.epilog219 ], [ %frombool236, %if.then228 ], [ 1, %land.lhs.true224 ], [ 0, %sw.epilog219.thread ]
  br i1 %read_tokens.1, label %if.then239, label %if.end240

if.then239:                                       ; preds = %if.end237
  call void @readtokens0_free(ptr noundef nonnull %tok) #17
  br label %if.end240

if.end240:                                        ; preds = %if.then239, %if.end237
  %297 = load i32, ptr @total_mode, align 4, !tbaa !13
  switch i32 %297, label %if.then250 [
    i32 3, label %if.end274
    i32 0, label %lor.lhs.false246
  ]

lor.lhs.false246:                                 ; preds = %if.end240
  %call247 = call i64 @argv_iter_n_args(ptr noundef nonnull %ai.1) #18
  %cmp248 = icmp ugt i64 %call247, 1
  br i1 %cmp248, label %if.then250, label %if.end274

if.then250:                                       ; preds = %lor.lhs.false246, %if.end240
  %298 = load i8, ptr @total_lines_overflow, align 1, !tbaa !11, !range !19, !noundef !38
  %tobool251.not = icmp eq i8 %298, 0
  br i1 %tobool251.not, label %if.end254, label %if.then252

if.then252:                                       ; preds = %if.then250
  store i64 -1, ptr @total_lines, align 8, !tbaa !9
  %call253 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.30, i32 noundef 5) #17
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 75, ptr noundef %call253) #22
  br label %if.end254

if.end254:                                        ; preds = %if.then252, %if.then250
  %ok.4 = phi i8 [ 0, %if.then252 ], [ %ok.3, %if.then250 ]
  %299 = load i8, ptr @total_words_overflow, align 1, !tbaa !11, !range !19, !noundef !38
  %tobool255.not = icmp eq i8 %299, 0
  br i1 %tobool255.not, label %if.end258, label %if.then256

if.then256:                                       ; preds = %if.end254
  store i64 -1, ptr @total_words, align 8, !tbaa !9
  %call257 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.31, i32 noundef 5) #17
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 75, ptr noundef %call257) #22
  br label %if.end258

if.end258:                                        ; preds = %if.then256, %if.end254
  %ok.5 = phi i8 [ 0, %if.then256 ], [ %ok.4, %if.end254 ]
  %300 = load i8, ptr @total_chars_overflow, align 1, !tbaa !11, !range !19, !noundef !38
  %tobool259.not = icmp eq i8 %300, 0
  br i1 %tobool259.not, label %if.end262, label %if.then260

if.then260:                                       ; preds = %if.end258
  store i64 -1, ptr @total_chars, align 8, !tbaa !9
  %call261 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.32, i32 noundef 5) #17
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 75, ptr noundef %call261) #22
  br label %if.end262

if.end262:                                        ; preds = %if.then260, %if.end258
  %ok.6 = phi i8 [ 0, %if.then260 ], [ %ok.5, %if.end258 ]
  %301 = load i8, ptr @total_bytes_overflow, align 1, !tbaa !11, !range !19, !noundef !38
  %tobool263.not = icmp eq i8 %301, 0
  br i1 %tobool263.not, label %if.end266, label %if.then264

if.then264:                                       ; preds = %if.end262
  store i64 -1, ptr @total_bytes, align 8, !tbaa !9
  %call265 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.33, i32 noundef 5) #17
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 75, ptr noundef %call265) #22
  br label %if.end266

if.end266:                                        ; preds = %if.then264, %if.end262
  %ok.7 = phi i8 [ 0, %if.then264 ], [ %ok.6, %if.end262 ]
  %302 = load i64, ptr @total_lines, align 8, !tbaa !9
  %303 = load i64, ptr @total_words, align 8, !tbaa !9
  %304 = load i64, ptr @total_chars, align 8, !tbaa !9
  %305 = load i64, ptr @total_bytes, align 8, !tbaa !9
  %306 = load i64, ptr @max_line_length, align 8, !tbaa !9
  %307 = load i32, ptr @total_mode, align 4, !tbaa !13
  %cmp267.not = icmp eq i32 %307, 2
  br i1 %cmp267.not, label %cond.end272, label %cond.true269

cond.true269:                                     ; preds = %if.end266
  %call270 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.34, i32 noundef 5) #17
  br label %cond.end272

cond.end272:                                      ; preds = %cond.true269, %if.end266
  %cond273 = phi ptr [ %call270, %cond.true269 ], [ null, %if.end266 ]
  call fastcc void @write_counts(i64 noundef %302, i64 noundef %303, i64 noundef %304, i64 noundef %305, i64 noundef %306, ptr noundef %cond273)
  br label %if.end274

if.end274:                                        ; preds = %cond.end272, %lor.lhs.false246, %if.end240
  %ok.8 = phi i8 [ %ok.7, %cond.end272 ], [ %ok.3, %lor.lhs.false246 ], [ %ok.3, %if.end240 ]
  call void @argv_iter_free(ptr noundef nonnull %ai.1) #17
  call void @free(ptr noundef nonnull %call.i353) #17
  %.b342351 = load i1, ptr @have_read_stdin, align 1
  br i1 %.b342351, label %land.lhs.true277, label %if.end283

land.lhs.true277:                                 ; preds = %if.end274
  %call278 = call i32 @close(i32 noundef 0) #17
  %cmp279.not = icmp eq i32 %call278, 0
  br i1 %cmp279.not, label %if.end283, label %if.then281

if.then281:                                       ; preds = %land.lhs.true277
  %call282 = tail call ptr @__errno_location() #20
  %308 = load i32, ptr %call282, align 4, !tbaa !13
  call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %308, ptr noundef nonnull @.str.21) #22
  unreachable

if.end283:                                        ; preds = %land.lhs.true277, %if.end274
  %309 = xor i8 %ok.8, 1
  %cond286 = zext nneg i8 %309 to i32
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ai_err) #17
  call void @llvm.lifetime.end.p0(i64 288, ptr nonnull %tok) #17
  ret i32 %cond286
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #7

declare void @set_program_name(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare ptr @bindtextdomain(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare ptr @textdomain(ptr noundef) local_unnamed_addr #1

declare void @close_stdout() #2

; Function Attrs: nounwind
declare i32 @atexit(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare i32 @getpagesize() local_unnamed_addr #8

; Function Attrs: nofree nounwind
declare noundef i32 @setvbuf(ptr nocapture noundef, ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind memory(read)
declare noundef ptr @getenv(ptr nocapture noundef) local_unnamed_addr #9

; Function Attrs: nounwind
declare i32 @getopt_long(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare i64 @__xargmatch_internal(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

declare ptr @proper_name_lite(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @version_etc(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__ctype_b_loc() local_unnamed_addr #8

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i32 @rpl_btowc(i32 noundef) local_unnamed_addr #10

declare ptr @quotearg_style(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold
declare void @error(i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #11

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #4

declare noalias ptr @rpl_fopen(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #8

; Function Attrs: nofree nounwind
declare noundef i32 @fileno(ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @fstat(i32 noundef, ptr nocapture noundef) local_unnamed_addr #3

declare double @physmem_available() local_unnamed_addr #2

declare void @readtokens0_init(ptr noundef) local_unnamed_addr #2

declare zeroext i1 @readtokens0(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @rpl_fclose(ptr noundef) local_unnamed_addr #2

declare ptr @argv_iter_init_argv(ptr noundef) local_unnamed_addr #2

declare ptr @argv_iter_init_stream(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #7

; Function Attrs: noreturn
declare void @xalloc_die() local_unnamed_addr #12

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #13

; Function Attrs: allocsize(0,1)
declare noalias nonnull ptr @xnmalloc(i64 noundef, i64 noundef) local_unnamed_addr #14

; Function Attrs: nofree nounwind
declare noundef i32 @stat(ptr nocapture noundef readonly, ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i65, i1 } @llvm.sadd.with.overflow.i65(i65, i65) #13

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #13

declare ptr @argv_iter(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @quotearg_n_style_colon(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i64 @argv_iter_n_args(ptr noundef) local_unnamed_addr #10

; Function Attrs: nounwind uwtable
define internal fastcc noundef zeroext i1 @wc_file(ptr noundef %file, ptr nocapture noundef %fstatus) unnamed_addr #6 {
entry:
  %tobool.not = icmp eq ptr %file, null
  br i1 %tobool.not, label %entry.split, label %lor.lhs.false

entry.split:                                      ; preds = %entry
  store i1 true, ptr @have_read_stdin, align 1
  %call125 = tail call fastcc zeroext i1 @wc(i32 noundef 0, ptr noundef null, ptr noundef %fstatus, i64 noundef -1)
  br label %return

lor.lhs.false:                                    ; preds = %entry
  %call = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %file, ptr noundef nonnull dereferenceable(2) @.str.21) #18
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %lor.lhs.false.split, label %if.else

lor.lhs.false.split:                              ; preds = %lor.lhs.false
  store i1 true, ptr @have_read_stdin, align 1
  %call126 = tail call fastcc zeroext i1 @wc(i32 noundef 0, ptr noundef nonnull %file, ptr noundef %fstatus, i64 noundef -1)
  br label %return

if.else:                                          ; preds = %lor.lhs.false
  %call2 = tail call i32 (ptr, i32, ...) @open(ptr noundef nonnull %file, i32 noundef 0) #17
  %cmp3 = icmp eq i32 %call2, -1
  br i1 %cmp3, label %if.then4, label %if.else7

if.then4:                                         ; preds = %if.else
  %call5 = tail call ptr @__errno_location() #20
  %0 = load i32, ptr %call5, align 4, !tbaa !13
  %call6 = tail call ptr @quotearg_n_style_colon(i32 noundef 0, i32 noundef 3, ptr noundef nonnull %file) #17
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %0, ptr noundef nonnull @.str.26, ptr noundef %call6) #22
  br label %return

if.else7:                                         ; preds = %if.else
  %call8 = tail call fastcc zeroext i1 @wc(i32 noundef %call2, ptr noundef nonnull %file, ptr noundef %fstatus, i64 noundef 0)
  %call9 = tail call i32 @close(i32 noundef %call2) #17
  %cmp10.not = icmp eq i32 %call9, 0
  br i1 %cmp10.not, label %return, label %if.then11

if.then11:                                        ; preds = %if.else7
  %call12 = tail call ptr @__errno_location() #20
  %1 = load i32, ptr %call12, align 4, !tbaa !13
  %call13 = tail call ptr @quotearg_n_style_colon(i32 noundef 0, i32 noundef 3, ptr noundef nonnull %file) #17
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %1, ptr noundef nonnull @.str.26, ptr noundef %call13) #22
  br label %return

return:                                           ; preds = %if.then11, %if.else7, %if.then4, %lor.lhs.false.split, %entry.split
  %retval.2 = phi i1 [ %call125, %entry.split ], [ %call126, %lor.lhs.false.split ], [ false, %if.then4 ], [ false, %if.then11 ], [ %call8, %if.else7 ]
  ret i1 %retval.2
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef zeroext i1 @wc(i32 noundef %fd, ptr noundef %file_x, ptr nocapture noundef %fstatus, i64 noundef %current_pos) unnamed_addr #6 {
entry:
  %buf.i = alloca [262145 x i8], align 16
  %buf.i718 = ptrtoint ptr %buf.i to i64
  %buf = alloca [262145 x i8], align 16
  %w = alloca %struct.wc_lines, align 8
  %state = alloca %struct.__mbstate_t, align 8
  %wide_char = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 262145, ptr nonnull %buf) #17
  %tobool.not = icmp eq ptr %file_x, null
  br i1 %tobool.not, label %cond.false, label %cond.end

cond.false:                                       ; preds = %entry
  %call = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.65, i32 noundef 5) #17
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %entry
  %cond = phi ptr [ %call, %cond.false ], [ %file_x, %entry ]
  %call1 = tail call i64 @__ctype_get_mb_cur_max() #17
  %cmp = icmp ugt i64 %call1, 1
  %.b500511 = load i1, ptr @print_bytes, align 1
  %.b503512 = load i1, ptr @print_chars, align 1
  %0 = select i1 %.b500511, i1 true, i1 %.b503512
  %count_chars.0 = select i1 %cmp, i1 %.b503512, i1 false
  %count_bytes.0.in = select i1 %cmp, i1 %.b500511, i1 %0
  %.b504513 = load i1, ptr @print_words, align 1
  %.b508514 = load i1, ptr @print_linelength, align 1
  %1 = select i1 %.b504513, i1 true, i1 %.b508514
  %count_bytes.0.in.not = xor i1 %count_bytes.0.in, true
  %brmerge = select i1 %count_bytes.0.in.not, i1 true, i1 %count_chars.0
  %.b506515 = load i1, ptr @print_lines, align 1
  %2 = select i1 %brmerge, i1 true, i1 %.b506515
  %or.cond535 = select i1 %2, i1 true, i1 %1
  br i1 %or.cond535, label %if.then19, label %if.end20

if.then19:                                        ; preds = %cond.end
  tail call void @fdadvise(i32 noundef %fd, i64 noundef 0, i64 noundef 0, i32 noundef 2) #17
  %.b505516.pre = load i1, ptr @print_lines, align 1
  br label %if.end20

if.end20:                                         ; preds = %if.then19, %cond.end
  %.b505516 = phi i1 [ false, %cond.end ], [ %.b505516.pre, %if.then19 ]
  %3 = select i1 %brmerge, i1 true, i1 %.b505516
  %or.cond536 = select i1 %3, i1 true, i1 %1
  br i1 %or.cond536, label %if.else98, label %if.then27

if.then27:                                        ; preds = %if.end20
  %4 = load i32, ptr %fstatus, align 8, !tbaa !29
  %cmp28 = icmp sgt i32 %4, 0
  br i1 %cmp28, label %if.then29, label %if.end32

if.then29:                                        ; preds = %if.then27
  %st = getelementptr inbounds %struct.fstatus, ptr %fstatus, i64 0, i32 1
  %call30 = tail call i32 @fstat(i32 noundef %fd, ptr noundef nonnull %st) #17
  store i32 %call30, ptr %fstatus, align 8, !tbaa !29
  br label %if.end32

if.end32:                                         ; preds = %if.then29, %if.then27
  %5 = phi i32 [ %call30, %if.then29 ], [ %4, %if.then27 ]
  %tobool34.not = icmp eq i32 %5, 0
  br i1 %tobool34.not, label %land.lhs.true35, label %if.then89

land.lhs.true35:                                  ; preds = %if.end32
  %6 = getelementptr %struct.fstatus, ptr %fstatus, i64 0, i32 1, i32 3
  %st36.val = load i32, ptr %6, align 8, !tbaa !21
  %7 = and i32 %st36.val, 53248
  %switch.selectcmp.i = icmp eq i32 %7, 32768
  br i1 %switch.selectcmp.i, label %land.lhs.true38, label %if.then89

land.lhs.true38:                                  ; preds = %land.lhs.true35
  %st_size = getelementptr inbounds %struct.fstatus, ptr %fstatus, i64 0, i32 1, i32 8
  %8 = load i64, ptr %st_size, align 8, !tbaa !33
  %cmp40 = icmp sgt i64 %8, -1
  br i1 %cmp40, label %if.then41, label %if.then89

if.then41:                                        ; preds = %land.lhs.true38
  %cmp44 = icmp slt i64 %current_pos, 0
  br i1 %cmp44, label %if.then45, label %if.end47

if.then45:                                        ; preds = %if.then41
  %call46 = tail call i64 @lseek(i32 noundef %fd, i64 noundef 0, i32 noundef 1) #17
  br label %if.end47

if.end47:                                         ; preds = %if.then45, %if.then41
  %current_pos.addr.0 = phi i64 [ %call46, %if.then45 ], [ 0, %if.then41 ]
  %9 = load i64, ptr @page_size, align 8, !tbaa !9
  %rem = srem i64 %8, %9
  %tobool48.not = icmp eq i64 %rem, 0
  br i1 %tobool48.not, label %if.else62, label %if.then49

if.then49:                                        ; preds = %if.end47
  %cmp50 = icmp slt i64 %8, %current_pos.addr.0
  %sub = sub nsw i64 %8, %current_pos.addr.0
  %cond54 = select i1 %cmp50, i64 0, i64 %sub
  %tobool55.not = icmp eq i64 %cond54, 0
  br i1 %tobool55.not, label %if.then89, label %land.lhs.true56

land.lhs.true56:                                  ; preds = %if.then49
  %call57 = tail call i64 @lseek(i32 noundef %fd, i64 noundef %cond54, i32 noundef 1) #17
  %cmp58 = icmp sgt i64 %call57, -1
  br i1 %cmp58, label %if.end325, label %if.then89

if.else62:                                        ; preds = %if.end47
  %st_blksize = getelementptr inbounds %struct.fstatus, ptr %fstatus, i64 0, i32 1, i32 9
  %10 = load i64, ptr %st_blksize, align 8, !tbaa !39
  %11 = add i64 %10, -1
  %or.cond526 = icmp ult i64 %11, 2305843009213693952
  %12 = add nuw nsw i64 %10, 1
  %cond74 = select i1 %or.cond526, i64 %12, i64 513
  %rem75 = urem i64 %8, %cond74
  %sub76 = sub nsw i64 %8, %rem75
  %cmp77 = icmp sgt i64 %current_pos.addr.0, -1
  %cmp79 = icmp slt i64 %current_pos.addr.0, %sub76
  %or.cond527 = select i1 %cmp77, i1 %cmp79, i1 false
  br i1 %or.cond527, label %land.lhs.true80, label %if.then89

land.lhs.true80:                                  ; preds = %if.else62
  %call81 = tail call i64 @lseek(i32 noundef %fd, i64 noundef %sub76, i32 noundef 1) #17
  %sub84 = sub nsw i64 %sub76, %current_pos.addr.0
  %cmp82.inv = icmp slt i64 %call81, 0
  %spec.select = select i1 %cmp82.inv, i64 0, i64 %sub84
  br label %if.then89

if.then89:                                        ; preds = %land.lhs.true80, %if.else62, %land.lhs.true56, %if.then49, %land.lhs.true38, %land.lhs.true35, %if.end32
  %bytes.2.ph = phi i64 [ %spec.select, %land.lhs.true80 ], [ 0, %if.else62 ], [ 0, %land.lhs.true35 ], [ 0, %land.lhs.true38 ], [ 0, %if.end32 ], [ 0, %land.lhs.true56 ], [ 0, %if.then49 ]
  tail call void @fdadvise(i32 noundef %fd, i64 noundef 0, i64 noundef 0, i32 noundef 2) #17
  %call90610 = call i64 @read(i32 noundef %fd, ptr noundef nonnull %buf, i64 noundef 262144) #17
  %tobool91.not611 = icmp eq i64 %call90610, 0
  br i1 %tobool91.not611, label %if.end325, label %for.body

for.cond:                                         ; preds = %for.body
  %add96 = add nsw i64 %call90613, %bytes.3612
  %call90 = call i64 @read(i32 noundef %fd, ptr noundef nonnull %buf, i64 noundef 262144) #17
  %tobool91.not = icmp eq i64 %call90, 0
  br i1 %tobool91.not, label %if.end325, label %for.body, !llvm.loop !40

for.body:                                         ; preds = %for.cond, %if.then89
  %call90613 = phi i64 [ %call90, %for.cond ], [ %call90610, %if.then89 ]
  %bytes.3612 = phi i64 [ %add96, %for.cond ], [ %bytes.2.ph, %if.then89 ]
  %cmp92 = icmp slt i64 %call90613, 0
  br i1 %cmp92, label %if.then93, label %for.cond

if.then93:                                        ; preds = %for.body
  %call94 = tail call ptr @__errno_location() #20
  %13 = load i32, ptr %call94, align 4, !tbaa !13
  br label %if.end325

if.else98:                                        ; preds = %if.end20
  %brmerge528 = select i1 %count_chars.0, i1 true, i1 %1
  br i1 %brmerge528, label %if.else106, label %if.then102

if.then102:                                       ; preds = %if.else98
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %w) #17
  %14 = load i8, ptr @wc_lines.use_avx2, align 1, !tbaa !36, !noalias !41
  %tobool.not.i = icmp eq i8 %14, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %if.then102
  %15 = load i32, ptr getelementptr inbounds ({ i32, i32, i32, [1 x i32] }, ptr @__cpu_model, i64 0, i32 3, i64 0), align 4, !noalias !41
  %16 = and i32 %15, 1024
  %.not.i = icmp eq i32 %16, 0
  %.b7.i.i = load i1, ptr @debug, align 1, !noalias !41
  br i1 %.b7.i.i, label %if.then.i.i, label %avx2_supported.exit.i

if.then.i.i:                                      ; preds = %if.then.i
  %.str.66..str.67.i.i = select i1 %.not.i, ptr @.str.67, ptr @.str.66
  %call4.i.i = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull %.str.66..str.67.i.i, i32 noundef 5) #17, !noalias !41
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %call4.i.i) #22, !noalias !41
  br label %avx2_supported.exit.i

avx2_supported.exit.i:                            ; preds = %if.then.i.i, %if.then.i
  %conv.i = select i1 %.not.i, i8 -1, i8 1
  store i8 %conv.i, ptr @wc_lines.use_avx2, align 1, !tbaa !36, !noalias !41
  br label %if.end.i

if.end.i:                                         ; preds = %avx2_supported.exit.i, %if.then102
  %17 = phi i8 [ %conv.i, %avx2_supported.exit.i ], [ %14, %if.then102 ]
  %cmp.i = icmp sgt i8 %17, 0
  br i1 %cmp.i, label %if.then3.i, label %while.cond.preheader.split.i

while.cond.preheader.split.i:                     ; preds = %if.end.i
  call void @llvm.lifetime.start.p0(i64 262145, ptr nonnull %buf.i) #17, !noalias !41
  %call577.i = call i64 @read(i32 noundef %fd, ptr noundef nonnull %buf.i, i64 noundef 262144) #17, !noalias !41
  %cmp678.i = icmp sgt i64 %call577.i, 0
  br i1 %cmp678.i, label %if.end15.i.preheader, label %if.then8.i

if.end15.i.preheader:                             ; preds = %while.cond.preheader.split.i
  %18 = or disjoint i64 %buf.i718, 1
  br label %if.end15.i

if.then3.i:                                       ; preds = %if.end.i
  call void @wc_lines_avx2(ptr dead_on_unwind nonnull writable sret(%struct.wc_lines) align 8 %w, i32 noundef %fd) #17
  %.pre = load i32, ptr %w, align 8, !tbaa !44
  %lines104.phi.trans.insert = getelementptr inbounds %struct.wc_lines, ptr %w, i64 0, i32 1
  %.pre674 = load i64, ptr %lines104.phi.trans.insert, align 8, !tbaa !46
  %bytes105.phi.trans.insert = getelementptr inbounds %struct.wc_lines, ptr %w, i64 0, i32 2
  %.pre675 = load i64, ptr %bytes105.phi.trans.insert, align 8, !tbaa !47
  br label %wc_lines.exit

if.then8.i:                                       ; preds = %cleanup.i, %while.cond.preheader.split.i
  %bytes.0.lcssa.i = phi i64 [ 0, %while.cond.preheader.split.i ], [ %add.i, %cleanup.i ]
  %lines.0.lcssa.i = phi i64 [ 0, %while.cond.preheader.split.i ], [ %add41.i, %cleanup.i ]
  %call5.lcssa.i = phi i64 [ %call577.i, %while.cond.preheader.split.i ], [ %call5.i, %cleanup.i ]
  %cmp9.i = icmp eq i64 %call5.lcssa.i, 0
  br i1 %cmp9.i, label %cleanup.thread.i, label %cond.false.i

cond.false.i:                                     ; preds = %if.then8.i
  %call11.i = tail call ptr @__errno_location() #20
  %19 = load i32, ptr %call11.i, align 4, !tbaa !13, !noalias !41
  br label %cleanup.thread.i

cleanup.thread.i:                                 ; preds = %cond.false.i, %if.then8.i
  %cond12.i = phi i32 [ %19, %cond.false.i ], [ 0, %if.then8.i ]
  call void @llvm.lifetime.end.p0(i64 262145, ptr nonnull %buf.i) #17, !noalias !41
  br label %wc_lines.exit

if.end15.i:                                       ; preds = %cleanup.i, %if.end15.i.preheader
  %call582.i = phi i64 [ %call5.i, %cleanup.i ], [ %call577.i, %if.end15.i.preheader ]
  %lines.081.i = phi i64 [ %add41.i, %cleanup.i ], [ 0, %if.end15.i.preheader ]
  %bytes.080.i = phi i64 [ %add.i, %cleanup.i ], [ 0, %if.end15.i.preheader ]
  %long_lines.079.i = phi i8 [ %frombool.i, %cleanup.i ], [ 0, %if.end15.i.preheader ]
  %add.i = add nuw nsw i64 %bytes.080.i, %call582.i
  %add.ptr.i = getelementptr inbounds i8, ptr %buf.i, i64 %call582.i
  %tobool17.not.i = icmp eq i8 %long_lines.079.i, 0
  br i1 %tobool17.not.i, label %for.body.i.preheader, label %if.else.i

for.body.i.preheader:                             ; preds = %if.end15.i
  %20 = add i64 %call582.i, %buf.i718
  %umax = call i64 @llvm.umax.i64(i64 %20, i64 %18)
  %21 = sub i64 %umax, %buf.i718
  %min.iters.check = icmp ult i64 %21, 4
  br i1 %min.iters.check, label %for.body.i.preheader740, label %vector.ph

vector.ph:                                        ; preds = %for.body.i.preheader
  %n.mod.vf = and i64 %umax, 3
  %n.vec = sub i64 %21, %n.mod.vf
  %ind.end = getelementptr i8, ptr %buf.i, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %27, %vector.body ]
  %vec.phi720 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %28, %vector.body ]
  %next.gep = getelementptr i8, ptr %buf.i, i64 %index
  %22 = getelementptr i8, ptr %next.gep, i64 2
  %wide.load = load <2 x i8>, ptr %next.gep, align 4, !tbaa !36, !noalias !41
  %wide.load721 = load <2 x i8>, ptr %22, align 2, !tbaa !36, !noalias !41
  %23 = icmp eq <2 x i8> %wide.load, <i8 10, i8 10>
  %24 = icmp eq <2 x i8> %wide.load721, <i8 10, i8 10>
  %25 = zext <2 x i1> %23 to <2 x i64>
  %26 = zext <2 x i1> %24 to <2 x i64>
  %27 = add <2 x i64> %vec.phi, %25
  %28 = add <2 x i64> %vec.phi720, %26
  %index.next = add nuw i64 %index, 4
  %29 = icmp eq i64 %index.next, %n.vec
  br i1 %29, label %middle.block, label %vector.body, !llvm.loop !48

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %28, %27
  %30 = call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx)
  %cmp.n = icmp eq i64 %n.mod.vf, 0
  br i1 %cmp.n, label %cleanup.i, label %for.body.i.preheader740

for.body.i.preheader740:                          ; preds = %middle.block, %for.body.i.preheader
  %p.075.i.ph = phi ptr [ %buf.i, %for.body.i.preheader ], [ %ind.end, %middle.block ]
  %buflines.074.i.ph = phi i64 [ 0, %for.body.i.preheader ], [ %30, %middle.block ]
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i, %for.body.i.preheader740
  %p.075.i = phi ptr [ %incdec.ptr.i, %for.body.i ], [ %p.075.i.ph, %for.body.i.preheader740 ]
  %buflines.074.i = phi i64 [ %add26.i, %for.body.i ], [ %buflines.074.i.ph, %for.body.i.preheader740 ]
  %31 = load i8, ptr %p.075.i, align 1, !tbaa !36, !noalias !41
  %cmp23.i = icmp eq i8 %31, 10
  %conv25.i = zext i1 %cmp23.i to i64
  %add26.i = add nuw nsw i64 %buflines.074.i, %conv25.i
  %incdec.ptr.i = getelementptr inbounds i8, ptr %p.075.i, i64 1
  %cmp20.i = icmp ult ptr %incdec.ptr.i, %add.ptr.i
  br i1 %cmp20.i, label %for.body.i, label %cleanup.i, !llvm.loop !51

if.else.i:                                        ; preds = %if.end15.i
  store i8 10, ptr %add.ptr.i, align 1, !tbaa !36, !noalias !41
  %call3069.i = call ptr @rawmemchr(ptr noundef nonnull %buf.i, i32 noundef 10) #18, !noalias !41
  %cmp3170.i = icmp ult ptr %call3069.i, %add.ptr.i
  br i1 %cmp3170.i, label %for.body34.i, label %cleanup.i

for.body34.i:                                     ; preds = %for.body34.i, %if.else.i
  %call3072.i = phi ptr [ %call30.i, %for.body34.i ], [ %call3069.i, %if.else.i ]
  %buflines.171.i = phi i64 [ %inc.i, %for.body34.i ], [ 0, %if.else.i ]
  %inc.i = add nuw nsw i64 %buflines.171.i, 1
  %incdec.ptr36.i = getelementptr inbounds i8, ptr %call3072.i, i64 1
  %call30.i = call ptr @rawmemchr(ptr noundef nonnull %incdec.ptr36.i, i32 noundef 10) #18, !noalias !41
  %cmp31.i = icmp ult ptr %call30.i, %add.ptr.i
  br i1 %cmp31.i, label %for.body34.i, label %cleanup.i, !llvm.loop !52

cleanup.i:                                        ; preds = %for.body34.i, %if.else.i, %for.body.i, %middle.block
  %buflines.2.i = phi i64 [ 0, %if.else.i ], [ %30, %middle.block ], [ %add26.i, %for.body.i ], [ %inc.i, %for.body34.i ]
  %mul.i = mul nsw i64 %buflines.2.i, 15
  %cmp39.i = icmp sle i64 %mul.i, %call582.i
  %frombool.i = zext i1 %cmp39.i to i8
  %add41.i = add nsw i64 %buflines.2.i, %lines.081.i
  call void @llvm.lifetime.end.p0(i64 262145, ptr nonnull %buf.i) #17, !noalias !41
  call void @llvm.lifetime.start.p0(i64 262145, ptr nonnull %buf.i) #17, !noalias !41
  %call5.i = call i64 @read(i32 noundef %fd, ptr noundef nonnull %buf.i, i64 noundef 262144) #17, !noalias !41
  %cmp6.i = icmp sgt i64 %call5.i, 0
  br i1 %cmp6.i, label %if.end15.i, label %if.then8.i

wc_lines.exit:                                    ; preds = %cleanup.thread.i, %if.then3.i
  %32 = phi i64 [ %.pre675, %if.then3.i ], [ %bytes.0.lcssa.i, %cleanup.thread.i ]
  %33 = phi i64 [ %.pre674, %if.then3.i ], [ %lines.0.lcssa.i, %cleanup.thread.i ]
  %34 = phi i32 [ %.pre, %if.then3.i ], [ %cond12.i, %cleanup.thread.i ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %w) #17
  br label %if.end325

if.else106:                                       ; preds = %if.else98
  %call107 = tail call i64 @__ctype_get_mb_cur_max() #17
  %cmp108 = icmp ugt i64 %call107, 1
  br i1 %cmp108, label %if.then109, label %for.cond258.preheader

for.cond258.preheader:                            ; preds = %if.else106
  %call260614 = call i64 @read(i32 noundef %fd, ptr noundef nonnull %buf, i64 noundef 262144) #17
  %tobool261.not615 = icmp eq i64 %call260614, 0
  br i1 %tobool261.not615, label %cleanup317, label %for.body263

if.then109:                                       ; preds = %if.else106
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %state) #17
  store i64 0, ptr %state, align 8
  %call114628 = call i64 @read(i32 noundef %fd, ptr noundef nonnull %buf, i64 noundef 262144) #17
  %.not630 = icmp eq i64 %call114628, 0
  br i1 %.not630, label %cleanup248, label %for.body120

for.body120:                                      ; preds = %do.end, %if.then109
  %call114643 = phi i64 [ %call114, %do.end ], [ %call114628, %if.then109 ]
  %add.ptr642 = phi ptr [ %add.ptr, %do.end ], [ %buf, %if.then109 ]
  %lines.0641 = phi i64 [ %lines.4576, %do.end ], [ 0, %if.then109 ]
  %words.0640 = phi i64 [ %words.5575, %do.end ], [ 0, %if.then109 ]
  %chars.0639 = phi i64 [ %chars.2574, %do.end ], [ 0, %if.then109 ]
  %bytes.5636 = phi i64 [ %add125, %do.end ], [ 0, %if.then109 ]
  %linelength.0635 = phi i64 [ %linelength.4571, %do.end ], [ 0, %if.then109 ]
  %prev.0634 = phi i64 [ %prev.4570, %do.end ], [ 0, %if.then109 ]
  %in_shift.0633 = phi i8 [ %in_shift.4569, %do.end ], [ 0, %if.then109 ]
  %linepos.0632 = phi i64 [ %linepos.7568, %do.end ], [ 0, %if.then109 ]
  %in_word.0631 = phi i8 [ %in_word.5567, %do.end ], [ 0, %if.then109 ]
  %tobool115644 = icmp ne i64 %call114643, 0
  %cmp121 = icmp slt i64 %call114643, 0
  br i1 %cmp121, label %if.then122, label %if.end124

if.then122:                                       ; preds = %for.body120
  %call123 = tail call ptr @__errno_location() #20
  %35 = load i32, ptr %call123, align 4, !tbaa !13
  br label %cleanup248

if.end124:                                        ; preds = %for.body120
  %add125 = add nuw nsw i64 %call114643, %bytes.5636
  %add.ptr128 = getelementptr inbounds i8, ptr %add.ptr642, i64 %call114643
  %sub.ptr.lhs.cast = ptrtoint ptr %add.ptr128 to i64
  br label %do.body

do.body:                                          ; preds = %cleanup241, %if.end124
  %in_word.1 = phi i8 [ %in_word.0631, %if.end124 ], [ %in_word.5, %cleanup241 ]
  %linepos.1 = phi i64 [ %linepos.0632, %if.end124 ], [ %linepos.7, %cleanup241 ]
  %in_shift.1 = phi i8 [ %in_shift.0633, %if.end124 ], [ %in_shift.4, %cleanup241 ]
  %prev.1 = phi i64 [ %prev.0634, %if.end124 ], [ %prev.4, %cleanup241 ]
  %linelength.1 = phi i64 [ %linelength.0635, %if.end124 ], [ %linelength.4, %cleanup241 ]
  %p.0 = phi ptr [ %buf, %if.end124 ], [ %p.3, %cleanup241 ]
  %chars.1 = phi i64 [ %chars.0639, %if.end124 ], [ %chars.2, %cleanup241 ]
  %words.1 = phi i64 [ %words.0640, %if.end124 ], [ %words.5, %cleanup241 ]
  %lines.1 = phi i64 [ %lines.0641, %if.end124 ], [ %lines.4, %cleanup241 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %wide_char) #17
  %36 = and i8 %in_shift.1, 1
  %tobool129.not = icmp eq i8 %36, 0
  br i1 %tobool129.not, label %land.lhs.true130, label %if.else139

land.lhs.true130:                                 ; preds = %do.body
  %37 = load i8, ptr %p.0, align 1, !tbaa !36
  %cmp131 = icmp sgt i8 %37, -1
  br i1 %cmp131, label %if.then137, label %if.else139

if.then137:                                       ; preds = %land.lhs.true130
  %conv = zext nneg i8 %37 to i32
  store i32 %conv, ptr %wide_char, align 4, !tbaa !13
  br label %if.end186

if.else139:                                       ; preds = %land.lhs.true130, %do.body
  %add.ptr140 = getelementptr inbounds i8, ptr %p.0, i64 %prev.1
  %sub.ptr.rhs.cast = ptrtoint ptr %add.ptr140 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %call142 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %wide_char, ptr noundef %add.ptr140, i64 noundef %sub.ptr.sub, ptr noundef nonnull %state) #17
  %cmp143.not = icmp ult i64 %sub.ptr.sub, %call142
  br i1 %cmp143.not, label %if.then145, label %cleanup184

if.then145:                                       ; preds = %if.else139
  %cmp146 = icmp eq i64 %call142, -2
  br i1 %cmp146, label %land.lhs.true148, label %if.end162

land.lhs.true148:                                 ; preds = %if.then145
  %sub.ptr.rhs.cast150 = ptrtoint ptr %p.0 to i64
  %sub.ptr.sub151 = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast150
  %cmp152 = icmp slt i64 %sub.ptr.sub151, 262144
  %or.cond = and i1 %tobool115644, %cmp152
  br i1 %or.cond, label %cleanup241.thread, label %if.end162

cleanup241.thread:                                ; preds = %land.lhs.true148
  %call.i = call ptr @__memmove_chk(ptr noundef nonnull %buf, ptr noundef nonnull %p.0, i64 noundef %sub.ptr.sub151, i64 noundef 262145) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %wide_char) #17
  br label %do.end

if.end162:                                        ; preds = %land.lhs.true148, %if.then145
  %incdec.ptr = getelementptr inbounds i8, ptr %p.0, i64 1
  store i64 0, ptr %state, align 8
  %38 = and i8 %in_word.1, 1
  %39 = xor i8 %38, 1
  %conv164 = zext nneg i8 %39 to i64
  %add165 = add nsw i64 %words.1, %conv164
  br label %cleanup241

cleanup184:                                       ; preds = %if.else139
  %tobool167.not = icmp eq i64 %call142, 0
  %conv170 = zext i1 %tobool167.not to i64
  %add171 = add i64 %call142, %conv170
  %40 = xor i8 %36, 1
  %conv175 = zext nneg i8 %40 to i64
  %cmp176 = icmp eq i64 %add171, %conv175
  %frombool178 = zext i1 %cmp176 to i8
  %call179 = call i32 @mbsinit(ptr noundef nonnull %state) #18
  %tobool180.not = icmp eq i32 %call179, 0
  %frombool183 = zext i1 %tobool180.not to i8
  %.pre676 = load i32, ptr %wide_char, align 4, !tbaa !13
  br label %if.end186

if.end186:                                        ; preds = %cleanup184, %if.then137
  %41 = phi i32 [ %.pre676, %cleanup184 ], [ %conv, %if.then137 ]
  %in_shift.3 = phi i8 [ %frombool183, %cleanup184 ], [ %in_shift.1, %if.then137 ]
  %prev.3 = phi i64 [ 0, %cleanup184 ], [ %prev.1, %if.then137 ]
  %charbytes.3 = phi i64 [ %add171, %cleanup184 ], [ 1, %if.then137 ]
  %single_byte.3 = phi i8 [ %frombool178, %cleanup184 ], [ 1, %if.then137 ]
  switch i32 %41, label %sw.default [
    i32 10, label %sw.bb
    i32 13, label %sw.bb187
    i32 12, label %sw.bb187
    i32 9, label %sw.bb192
    i32 32, label %sw.bb196
    i32 11, label %sw.epilog
  ]

sw.bb:                                            ; preds = %if.end186
  %inc = add nsw i64 %lines.1, 1
  br label %sw.bb187

sw.bb187:                                         ; preds = %sw.bb, %if.end186, %if.end186
  %lines.2 = phi i64 [ %lines.1, %if.end186 ], [ %lines.1, %if.end186 ], [ %inc, %sw.bb ]
  %spec.select529 = call i64 @llvm.smax.i64(i64 %linepos.1, i64 %linelength.1)
  br label %sw.epilog

sw.bb192:                                         ; preds = %if.end186
  %rem193 = srem i64 %linepos.1, 8
  %reass.sub518 = add i64 %linepos.1, 8
  %add195 = sub i64 %reass.sub518, %rem193
  br label %sw.epilog

sw.bb196:                                         ; preds = %if.end186
  %inc197 = add nsw i64 %linepos.1, 1
  br label %sw.epilog

sw.default:                                       ; preds = %if.end186
  %tobool199.not = icmp eq i8 %single_byte.3, 0
  br i1 %tobool199.not, label %if.else210, label %if.then200

if.then200:                                       ; preds = %sw.default
  %idxprom = zext i32 %41 to i64
  %arrayidx = getelementptr inbounds [256 x i8], ptr @wc_isprint, i64 0, i64 %idxprom
  %42 = load i8, ptr %arrayidx, align 1, !tbaa !11, !range !19, !noundef !38
  %conv202 = zext nneg i8 %42 to i64
  %add203 = add nsw i64 %linepos.1, %conv202
  %arrayidx205 = getelementptr inbounds [256 x i8], ptr @wc_isspace, i64 0, i64 %idxprom
  %43 = load i8, ptr %arrayidx205, align 1, !tbaa !11, !range !19, !noundef !38
  %frombool209 = xor i8 %43, 1
  br label %if.end228

if.else210:                                       ; preds = %sw.default
  %.b507519 = load i1, ptr @print_linelength, align 1
  br i1 %.b507519, label %if.then212, label %if.end220

if.then212:                                       ; preds = %if.else210
  %call.i538 = call i32 @wcwidth(i32 noundef %41) #17
  %narrow = call i32 @llvm.smax.i32(i32 %call.i538, i32 0)
  %add218 = zext nneg i32 %narrow to i64
  %linepos.3 = add nsw i64 %linepos.1, %add218
  %.pre677 = load i32, ptr %wide_char, align 4, !tbaa !13
  br label %if.end220

if.end220:                                        ; preds = %if.then212, %if.else210
  %44 = phi i32 [ %.pre677, %if.then212 ], [ %41, %if.else210 ]
  %linepos.4 = phi i64 [ %linepos.3, %if.then212 ], [ %linepos.1, %if.else210 ]
  %call221 = call i32 @iswspace(i32 noundef %44) #17
  %tobool222.not = icmp eq i32 %call221, 0
  br i1 %tobool222.not, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %if.end220
  %45 = load i32, ptr %wide_char, align 4, !tbaa !13
  %46 = load i8, ptr @posixly_correct, align 1, !tbaa !11, !range !19, !noundef !38
  %tobool.not.i539 = icmp eq i8 %46, 0
  br i1 %tobool.not.i539, label %land.rhs.i, label %iswnbspace.exit

land.rhs.i:                                       ; preds = %land.rhs
  switch i32 %45, label %lor.rhs.i [
    i32 8239, label %iswnbspace.exit
    i32 8199, label %iswnbspace.exit
    i32 160, label %iswnbspace.exit
  ]

lor.rhs.i:                                        ; preds = %land.rhs.i
  %cmp4.i = icmp eq i32 %45, 8288
  %47 = zext i1 %cmp4.i to i32
  br label %iswnbspace.exit

iswnbspace.exit:                                  ; preds = %lor.rhs.i, %land.rhs.i, %land.rhs.i, %land.rhs.i, %land.rhs
  %land.ext.i = phi i32 [ 0, %land.rhs ], [ 1, %land.rhs.i ], [ %47, %lor.rhs.i ], [ 1, %land.rhs.i ], [ 1, %land.rhs.i ]
  %tobool224.not = icmp eq i32 %land.ext.i, 0
  br label %land.end

land.end:                                         ; preds = %iswnbspace.exit, %if.end220
  %48 = phi i1 [ false, %if.end220 ], [ %tobool224.not, %iswnbspace.exit ]
  %frombool227 = zext i1 %48 to i8
  br label %if.end228

if.end228:                                        ; preds = %land.end, %if.then200
  %linepos.5 = phi i64 [ %add203, %if.then200 ], [ %linepos.4, %land.end ]
  %in_word2.0 = phi i8 [ %frombool209, %if.then200 ], [ %frombool227, %land.end ]
  %49 = xor i8 %in_word.1, -1
  %and520 = and i8 %in_word2.0, %49
  %conv234 = zext nneg i8 %and520 to i64
  %add235 = add nsw i64 %words.1, %conv234
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end228, %sw.bb196, %sw.bb192, %sw.bb187, %if.end186
  %in_word.4 = phi i8 [ %in_word2.0, %if.end228 ], [ 0, %sw.bb192 ], [ 0, %sw.bb187 ], [ 0, %if.end186 ], [ 0, %sw.bb196 ]
  %linepos.6 = phi i64 [ %linepos.5, %if.end228 ], [ %add195, %sw.bb192 ], [ 0, %sw.bb187 ], [ %linepos.1, %if.end186 ], [ %inc197, %sw.bb196 ]
  %linelength.3 = phi i64 [ %linelength.1, %if.end228 ], [ %linelength.1, %sw.bb192 ], [ %spec.select529, %sw.bb187 ], [ %linelength.1, %if.end186 ], [ %linelength.1, %sw.bb196 ]
  %words.4 = phi i64 [ %add235, %if.end228 ], [ %words.1, %sw.bb192 ], [ %words.1, %sw.bb187 ], [ %words.1, %if.end186 ], [ %words.1, %sw.bb196 ]
  %lines.3 = phi i64 [ %lines.1, %if.end228 ], [ %lines.1, %sw.bb192 ], [ %lines.2, %sw.bb187 ], [ %lines.1, %if.end186 ], [ %lines.1, %sw.bb196 ]
  %add.ptr239 = getelementptr inbounds i8, ptr %p.0, i64 %charbytes.3
  %inc240 = add nsw i64 %chars.1, 1
  br label %cleanup241

cleanup241:                                       ; preds = %sw.epilog, %if.end162
  %in_word.5 = phi i8 [ %in_word.4, %sw.epilog ], [ 1, %if.end162 ]
  %linepos.7 = phi i64 [ %linepos.6, %sw.epilog ], [ %linepos.1, %if.end162 ]
  %in_shift.4 = phi i8 [ %in_shift.3, %sw.epilog ], [ 0, %if.end162 ]
  %prev.4 = phi i64 [ %prev.3, %sw.epilog ], [ 0, %if.end162 ]
  %linelength.4 = phi i64 [ %linelength.3, %sw.epilog ], [ %linelength.1, %if.end162 ]
  %p.3 = phi ptr [ %add.ptr239, %sw.epilog ], [ %incdec.ptr, %if.end162 ]
  %chars.2 = phi i64 [ %inc240, %sw.epilog ], [ %chars.1, %if.end162 ]
  %words.5 = phi i64 [ %words.4, %sw.epilog ], [ %add165, %if.end162 ]
  %lines.4 = phi i64 [ %lines.3, %sw.epilog ], [ %lines.1, %if.end162 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %wide_char) #17
  %cmp246 = icmp ult ptr %p.3, %add.ptr128
  br i1 %cmp246, label %do.body, label %do.end, !llvm.loop !53

do.end:                                           ; preds = %cleanup241, %cleanup241.thread
  %lines.4576 = phi i64 [ %lines.1, %cleanup241.thread ], [ %lines.4, %cleanup241 ]
  %words.5575 = phi i64 [ %words.1, %cleanup241.thread ], [ %words.5, %cleanup241 ]
  %chars.2574 = phi i64 [ %chars.1, %cleanup241.thread ], [ %chars.2, %cleanup241 ]
  %linelength.4571 = phi i64 [ %linelength.1, %cleanup241.thread ], [ %linelength.4, %cleanup241 ]
  %prev.4570 = phi i64 [ %sub.ptr.sub151, %cleanup241.thread ], [ %prev.4, %cleanup241 ]
  %in_shift.4569 = phi i8 [ 1, %cleanup241.thread ], [ %in_shift.4, %cleanup241 ]
  %linepos.7568 = phi i64 [ %linepos.1, %cleanup241.thread ], [ %linepos.7, %cleanup241 ]
  %in_word.5567 = phi i8 [ %in_word.1, %cleanup241.thread ], [ %in_word.5, %cleanup241 ]
  %add.ptr = getelementptr inbounds i8, ptr %buf, i64 %prev.4570
  %sub113 = sub nsw i64 262144, %prev.4570
  %call114 = call i64 @read(i32 noundef %fd, ptr noundef nonnull %add.ptr, i64 noundef %sub113) #17
  %50 = or i64 %call114, %prev.4570
  %.not = icmp eq i64 %50, 0
  br i1 %.not, label %cleanup248, label %for.body120, !llvm.loop !54

cleanup248:                                       ; preds = %do.end, %if.then122, %if.then109
  %linepos.0598 = phi i64 [ %linepos.0632, %if.then122 ], [ 0, %if.then109 ], [ %linepos.7568, %do.end ]
  %linelength.0596 = phi i64 [ %linelength.0635, %if.then122 ], [ 0, %if.then109 ], [ %linelength.4571, %do.end ]
  %bytes.5594 = phi i64 [ %bytes.5636, %if.then122 ], [ 0, %if.then109 ], [ %add125, %do.end ]
  %chars.0592 = phi i64 [ %chars.0639, %if.then122 ], [ 0, %if.then109 ], [ %chars.2574, %do.end ]
  %words.0590 = phi i64 [ %words.0640, %if.then122 ], [ 0, %if.then109 ], [ %words.5575, %do.end ]
  %lines.0588 = phi i64 [ %lines.0641, %if.then122 ], [ 0, %if.then109 ], [ %lines.4576, %do.end ]
  %err.2 = phi i32 [ %35, %if.then122 ], [ 0, %if.then109 ], [ 0, %do.end ]
  %spec.select531 = call i64 @llvm.smax.i64(i64 %linepos.0598, i64 %linelength.0596)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %state) #17
  br label %if.end325

for.body263:                                      ; preds = %do.end316, %for.cond258.preheader
  %call260622 = phi i64 [ %call260, %do.end316 ], [ %call260614, %for.cond258.preheader ]
  %linepos256.0621 = phi i64 [ %linepos256.3, %do.end316 ], [ 0, %for.cond258.preheader ]
  %in_word255.0620 = phi i8 [ %in_word255.2, %do.end316 ], [ 0, %for.cond258.preheader ]
  %lines.5619 = phi i64 [ %lines.8, %do.end316 ], [ 0, %for.cond258.preheader ]
  %words.6618 = phi i64 [ %words.8, %do.end316 ], [ 0, %for.cond258.preheader ]
  %bytes.6617 = phi i64 [ %add269, %do.end316 ], [ 0, %for.cond258.preheader ]
  %linelength.6616 = phi i64 [ %linelength.9, %do.end316 ], [ 0, %for.cond258.preheader ]
  %cmp264 = icmp slt i64 %call260622, 0
  br i1 %cmp264, label %if.then266, label %do.body272

if.then266:                                       ; preds = %for.body263
  %call267 = tail call ptr @__errno_location() #20
  %51 = load i32, ptr %call267, align 4, !tbaa !13
  br label %cleanup317

do.body272:                                       ; preds = %sw.epilog313, %for.body263
  %linelength.7 = phi i64 [ %linelength.9, %sw.epilog313 ], [ %linelength.6616, %for.body263 ]
  %words.7 = phi i64 [ %words.8, %sw.epilog313 ], [ %words.6618, %for.body263 ]
  %lines.6 = phi i64 [ %lines.8, %sw.epilog313 ], [ %lines.5619, %for.body263 ]
  %in_word255.1 = phi i8 [ %in_word255.2, %sw.epilog313 ], [ %in_word255.0620, %for.body263 ]
  %linepos256.1 = phi i64 [ %linepos256.3, %sw.epilog313 ], [ %linepos256.0621, %for.body263 ]
  %bytes_read257.0 = phi i64 [ %dec, %sw.epilog313 ], [ %call260622, %for.body263 ]
  %p270.0 = phi ptr [ %incdec.ptr273, %sw.epilog313 ], [ %buf, %for.body263 ]
  %incdec.ptr273 = getelementptr inbounds i8, ptr %p270.0, i64 1
  %52 = load i8, ptr %p270.0, align 1, !tbaa !36
  switch i8 %52, label %sw.default289 [
    i8 10, label %sw.bb275
    i8 13, label %sw.bb277
    i8 12, label %sw.bb277
    i8 9, label %sw.bb282
    i8 32, label %sw.bb286
    i8 11, label %sw.epilog313
  ]

sw.bb275:                                         ; preds = %do.body272
  %inc276 = add nsw i64 %lines.6, 1
  br label %sw.bb277

sw.bb277:                                         ; preds = %sw.bb275, %do.body272, %do.body272
  %lines.7 = phi i64 [ %lines.6, %do.body272 ], [ %lines.6, %do.body272 ], [ %inc276, %sw.bb275 ]
  %spec.select532 = tail call i64 @llvm.smax.i64(i64 %linepos256.1, i64 %linelength.7)
  br label %sw.epilog313

sw.bb282:                                         ; preds = %do.body272
  %rem283 = srem i64 %linepos256.1, 8
  %reass.sub = add i64 %linepos256.1, 8
  %add285 = sub i64 %reass.sub, %rem283
  br label %sw.epilog313

sw.bb286:                                         ; preds = %do.body272
  %inc287 = add nsw i64 %linepos256.1, 1
  br label %sw.epilog313

sw.default289:                                    ; preds = %do.body272
  %idxprom290 = zext i8 %52 to i64
  %arrayidx291 = getelementptr inbounds [256 x i8], ptr @wc_isprint, i64 0, i64 %idxprom290
  %53 = load i8, ptr %arrayidx291, align 1, !tbaa !11, !range !19, !noundef !38
  %conv293 = zext nneg i8 %53 to i64
  %add294 = add nsw i64 %linepos256.1, %conv293
  %arrayidx297 = getelementptr inbounds [256 x i8], ptr @wc_isspace, i64 0, i64 %idxprom290
  %54 = load i8, ptr %arrayidx297, align 1, !tbaa !11, !range !19, !noundef !38
  %frombool301 = xor i8 %54, 1
  %55 = xor i8 %in_word255.1, -1
  %and307517 = and i8 %frombool301, %55
  %conv308 = zext nneg i8 %and307517 to i64
  %add309 = add nsw i64 %words.7, %conv308
  br label %sw.epilog313

sw.epilog313:                                     ; preds = %sw.default289, %sw.bb286, %sw.bb282, %sw.bb277, %do.body272
  %linelength.9 = phi i64 [ %linelength.7, %sw.default289 ], [ %linelength.7, %sw.bb282 ], [ %spec.select532, %sw.bb277 ], [ %linelength.7, %do.body272 ], [ %linelength.7, %sw.bb286 ]
  %words.8 = phi i64 [ %add309, %sw.default289 ], [ %words.7, %sw.bb282 ], [ %words.7, %sw.bb277 ], [ %words.7, %do.body272 ], [ %words.7, %sw.bb286 ]
  %lines.8 = phi i64 [ %lines.6, %sw.default289 ], [ %lines.6, %sw.bb282 ], [ %lines.7, %sw.bb277 ], [ %lines.6, %do.body272 ], [ %lines.6, %sw.bb286 ]
  %in_word255.2 = phi i8 [ %frombool301, %sw.default289 ], [ 0, %sw.bb282 ], [ 0, %sw.bb277 ], [ 0, %do.body272 ], [ 0, %sw.bb286 ]
  %linepos256.3 = phi i64 [ %add294, %sw.default289 ], [ %add285, %sw.bb282 ], [ 0, %sw.bb277 ], [ %linepos256.1, %do.body272 ], [ %inc287, %sw.bb286 ]
  %dec = add nsw i64 %bytes_read257.0, -1
  %tobool315.not = icmp eq i64 %dec, 0
  br i1 %tobool315.not, label %do.end316, label %do.body272, !llvm.loop !55

do.end316:                                        ; preds = %sw.epilog313
  %add269 = add nuw nsw i64 %call260622, %bytes.6617
  %call260 = call i64 @read(i32 noundef %fd, ptr noundef nonnull %buf, i64 noundef 262144) #17
  %tobool261.not = icmp eq i64 %call260, 0
  br i1 %tobool261.not, label %cleanup317, label %for.body263, !llvm.loop !56

cleanup317:                                       ; preds = %do.end316, %if.then266, %for.cond258.preheader
  %linelength.6608 = phi i64 [ %linelength.6616, %if.then266 ], [ 0, %for.cond258.preheader ], [ %linelength.9, %do.end316 ]
  %bytes.6606 = phi i64 [ %bytes.6617, %if.then266 ], [ 0, %for.cond258.preheader ], [ %add269, %do.end316 ]
  %words.6604 = phi i64 [ %words.6618, %if.then266 ], [ 0, %for.cond258.preheader ], [ %words.8, %do.end316 ]
  %lines.5602 = phi i64 [ %lines.5619, %if.then266 ], [ 0, %for.cond258.preheader ], [ %lines.8, %do.end316 ]
  %linepos256.0600 = phi i64 [ %linepos256.0621, %if.then266 ], [ 0, %for.cond258.preheader ], [ %linepos256.3, %do.end316 ]
  %err.3 = phi i32 [ %51, %if.then266 ], [ 0, %for.cond258.preheader ], [ 0, %do.end316 ]
  %spec.select533 = tail call i64 @llvm.smax.i64(i64 %linepos256.0600, i64 %linelength.6608)
  br label %if.end325

if.end325:                                        ; preds = %cleanup317, %cleanup248, %wc_lines.exit, %if.then93, %for.cond, %if.then89, %land.lhs.true56
  %linelength.11 = phi i64 [ %spec.select531, %cleanup248 ], [ %spec.select533, %cleanup317 ], [ 0, %wc_lines.exit ], [ 0, %if.then93 ], [ 0, %land.lhs.true56 ], [ 0, %if.then89 ], [ 0, %for.cond ]
  %bytes.7 = phi i64 [ %bytes.5594, %cleanup248 ], [ %bytes.6606, %cleanup317 ], [ %32, %wc_lines.exit ], [ %bytes.3612, %if.then93 ], [ %cond54, %land.lhs.true56 ], [ %bytes.2.ph, %if.then89 ], [ %add96, %for.cond ]
  %chars.3 = phi i64 [ %chars.0592, %cleanup248 ], [ 0, %cleanup317 ], [ 0, %wc_lines.exit ], [ 0, %if.then93 ], [ 0, %land.lhs.true56 ], [ 0, %if.then89 ], [ 0, %for.cond ]
  %words.9 = phi i64 [ %words.0590, %cleanup248 ], [ %words.6604, %cleanup317 ], [ 0, %wc_lines.exit ], [ 0, %if.then93 ], [ 0, %land.lhs.true56 ], [ 0, %if.then89 ], [ 0, %for.cond ]
  %lines.9 = phi i64 [ %lines.0588, %cleanup248 ], [ %lines.5602, %cleanup317 ], [ %33, %wc_lines.exit ], [ 0, %if.then93 ], [ 0, %land.lhs.true56 ], [ 0, %if.then89 ], [ 0, %for.cond ]
  %err.4 = phi i32 [ %err.2, %cleanup248 ], [ %err.3, %cleanup317 ], [ %34, %wc_lines.exit ], [ %13, %if.then93 ], [ 0, %land.lhs.true56 ], [ 0, %if.then89 ], [ 0, %for.cond ]
  %.b501521 = load i1, ptr @print_chars, align 1
  %56 = xor i1 %count_chars.0, true
  %cmp330 = and i1 %.b501521, %56
  %spec.select534 = select i1 %cmp330, i64 %bytes.7, i64 %chars.3
  %57 = load i32, ptr @total_mode, align 4, !tbaa !13
  %cmp334.not = icmp eq i32 %57, 2
  br i1 %cmp334.not, label %if.end337, label %if.then336

if.then336:                                       ; preds = %if.end325
  call fastcc void @write_counts(i64 noundef %lines.9, i64 noundef %words.9, i64 noundef %spec.select534, i64 noundef %bytes.7, i64 noundef %linelength.11, ptr noundef %file_x)
  br label %if.end337

if.end337:                                        ; preds = %if.then336, %if.end325
  %58 = load i64, ptr @total_lines, align 8, !tbaa !9
  %59 = zext i64 %58 to i65
  %60 = sext i64 %lines.9 to i65
  %61 = call { i65, i1 } @llvm.sadd.with.overflow.i65(i65 %59, i65 %60)
  %62 = extractvalue { i65, i1 } %61, 1
  %63 = extractvalue { i65, i1 } %61, 0
  %64 = trunc i65 %63 to i64
  %65 = icmp slt i65 %63, 0
  %66 = or i1 %62, %65
  store i64 %64, ptr @total_lines, align 8
  %67 = load i8, ptr @total_lines_overflow, align 1, !tbaa !11, !range !19, !noundef !38
  %68 = zext i1 %66 to i8
  %69 = or i8 %67, %68
  store i8 %69, ptr @total_lines_overflow, align 1, !tbaa !11
  %70 = load i64, ptr @total_words, align 8, !tbaa !9
  %71 = zext i64 %70 to i65
  %72 = sext i64 %words.9 to i65
  %73 = call { i65, i1 } @llvm.sadd.with.overflow.i65(i65 %71, i65 %72)
  %74 = extractvalue { i65, i1 } %73, 1
  %75 = extractvalue { i65, i1 } %73, 0
  %76 = trunc i65 %75 to i64
  %77 = icmp slt i65 %75, 0
  %78 = or i1 %74, %77
  store i64 %76, ptr @total_words, align 8
  %79 = load i8, ptr @total_words_overflow, align 1, !tbaa !11, !range !19, !noundef !38
  %80 = zext i1 %78 to i8
  %81 = or i8 %79, %80
  store i8 %81, ptr @total_words_overflow, align 1, !tbaa !11
  %82 = load i64, ptr @total_chars, align 8, !tbaa !9
  %83 = zext i64 %82 to i65
  %84 = sext i64 %spec.select534 to i65
  %85 = call { i65, i1 } @llvm.sadd.with.overflow.i65(i65 %83, i65 %84)
  %86 = extractvalue { i65, i1 } %85, 1
  %87 = extractvalue { i65, i1 } %85, 0
  %88 = trunc i65 %87 to i64
  %89 = icmp slt i65 %87, 0
  %90 = or i1 %86, %89
  store i64 %88, ptr @total_chars, align 8
  %91 = load i8, ptr @total_chars_overflow, align 1, !tbaa !11, !range !19, !noundef !38
  %92 = zext i1 %90 to i8
  %93 = or i8 %91, %92
  store i8 %93, ptr @total_chars_overflow, align 1, !tbaa !11
  %94 = load i64, ptr @total_bytes, align 8, !tbaa !9
  %95 = zext i64 %94 to i65
  %96 = sext i64 %bytes.7 to i65
  %97 = call { i65, i1 } @llvm.sadd.with.overflow.i65(i65 %95, i65 %96)
  %98 = extractvalue { i65, i1 } %97, 1
  %99 = extractvalue { i65, i1 } %97, 0
  %100 = trunc i65 %99 to i64
  %101 = icmp slt i65 %99, 0
  %102 = or i1 %98, %101
  store i64 %100, ptr @total_bytes, align 8
  %103 = load i8, ptr @total_bytes_overflow, align 1, !tbaa !11, !range !19, !noundef !38
  %104 = zext i1 %102 to i8
  %105 = or i8 %103, %104
  store i8 %105, ptr @total_bytes_overflow, align 1, !tbaa !11
  %106 = load i64, ptr @max_line_length, align 8, !tbaa !9
  %cmp361 = icmp sgt i64 %linelength.11, %106
  br i1 %cmp361, label %if.then363, label %if.end364

if.then363:                                       ; preds = %if.end337
  store i64 %linelength.11, ptr @max_line_length, align 8, !tbaa !9
  br label %if.end364

if.end364:                                        ; preds = %if.then363, %if.end337
  %tobool365.not = icmp eq i32 %err.4, 0
  br i1 %tobool365.not, label %if.end368, label %if.then366

if.then366:                                       ; preds = %if.end364
  %call367 = call ptr @quotearg_n_style_colon(i32 noundef 0, i32 noundef 3, ptr noundef %cond) #17
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %err.4, ptr noundef nonnull @.str.26, ptr noundef %call367) #22
  br label %if.end368

if.end368:                                        ; preds = %if.then366, %if.end364
  call void @llvm.lifetime.end.p0(i64 262145, ptr nonnull %buf) #17
  ret i1 %tobool365.not
}

declare void @readtokens0_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @write_counts(i64 noundef %lines, i64 noundef %words, i64 noundef %chars, i64 noundef %bytes, i64 noundef %linelength, ptr noundef %file) unnamed_addr #6 {
entry:
  %buf = alloca [21 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 21, ptr nonnull %buf) #17
  %.b4345 = load i1, ptr @print_lines, align 1
  br i1 %.b4345, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load i32, ptr @number_width, align 4, !tbaa !13
  %call = call ptr @umaxtostr(i64 noundef %lines, ptr noundef nonnull %buf) #17
  %call1 = call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull getelementptr inbounds ([5 x i8], ptr @write_counts.format_sp_int, i64 0, i64 1), i32 noundef %0, ptr noundef %call) #17
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %format_int.0 = phi ptr [ @write_counts.format_sp_int, %if.then ], [ getelementptr inbounds ([5 x i8], ptr @write_counts.format_sp_int, i64 0, i64 1), %entry ]
  %.b4246 = load i1, ptr @print_words, align 1
  br i1 %.b4246, label %if.then3, label %if.end7

if.then3:                                         ; preds = %if.end
  %1 = load i32, ptr @number_width, align 4, !tbaa !13
  %call5 = call ptr @umaxtostr(i64 noundef %words, ptr noundef nonnull %buf) #17
  %call6 = call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull %format_int.0, i32 noundef %1, ptr noundef %call5) #17
  br label %if.end7

if.end7:                                          ; preds = %if.then3, %if.end
  %format_int.1 = phi ptr [ @write_counts.format_sp_int, %if.then3 ], [ %format_int.0, %if.end ]
  %.b4147 = load i1, ptr @print_chars, align 1
  br i1 %.b4147, label %if.then9, label %if.end13

if.then9:                                         ; preds = %if.end7
  %2 = load i32, ptr @number_width, align 4, !tbaa !13
  %call11 = call ptr @umaxtostr(i64 noundef %chars, ptr noundef nonnull %buf) #17
  %call12 = call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %format_int.1, i32 noundef %2, ptr noundef %call11) #17
  br label %if.end13

if.end13:                                         ; preds = %if.then9, %if.end7
  %format_int.2 = phi ptr [ @write_counts.format_sp_int, %if.then9 ], [ %format_int.1, %if.end7 ]
  %.b48 = load i1, ptr @print_bytes, align 1
  br i1 %.b48, label %if.then15, label %if.end19

if.then15:                                        ; preds = %if.end13
  %3 = load i32, ptr @number_width, align 4, !tbaa !13
  %call17 = call ptr @umaxtostr(i64 noundef %bytes, ptr noundef nonnull %buf) #17
  %call18 = call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %format_int.2, i32 noundef %3, ptr noundef %call17) #17
  br label %if.end19

if.end19:                                         ; preds = %if.then15, %if.end13
  %format_int.3 = phi ptr [ @write_counts.format_sp_int, %if.then15 ], [ %format_int.2, %if.end13 ]
  %.b4449 = load i1, ptr @print_linelength, align 1
  br i1 %.b4449, label %if.then21, label %if.end25

if.then21:                                        ; preds = %if.end19
  %4 = load i32, ptr @number_width, align 4, !tbaa !13
  %call23 = call ptr @imaxtostr(i64 noundef %linelength, ptr noundef nonnull %buf) #17
  %call24 = call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %format_int.3, i32 noundef %4, ptr noundef %call23) #17
  br label %if.end25

if.end25:                                         ; preds = %if.then21, %if.end19
  %tobool26.not = icmp eq ptr %file, null
  br i1 %tobool26.not, label %if.end32, label %if.then27

if.then27:                                        ; preds = %if.end25
  %call28 = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %file, i32 noundef 10) #18
  %tobool29.not = icmp eq ptr %call28, null
  br i1 %tobool29.not, label %cond.end, label %cond.true

cond.true:                                        ; preds = %if.then27
  %call30 = call ptr @quotearg_n_style_colon(i32 noundef 0, i32 noundef 3, ptr noundef nonnull %file) #17
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %if.then27
  %cond = phi ptr [ %call30, %cond.true ], [ %file, %if.then27 ]
  %call31 = call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.68, ptr noundef %cond) #17
  br label %if.end32

if.end32:                                         ; preds = %cond.end, %if.end25
  %5 = load ptr, ptr @stdout, align 8, !tbaa !5
  %_IO_write_ptr.i = getelementptr inbounds %struct._IO_FILE, ptr %5, i64 0, i32 5
  %6 = load ptr, ptr %_IO_write_ptr.i, align 8, !tbaa !57
  %_IO_write_end.i = getelementptr inbounds %struct._IO_FILE, ptr %5, i64 0, i32 6
  %7 = load ptr, ptr %_IO_write_end.i, align 8, !tbaa !59
  %cmp.not.i = icmp ult ptr %6, %7
  br i1 %cmp.not.i, label %cond.false.i, label %cond.true.i, !prof !60

cond.true.i:                                      ; preds = %if.end32
  %call.i = call i32 @__overflow(ptr noundef nonnull %5, i32 noundef 10) #17
  br label %putchar_unlocked.exit

cond.false.i:                                     ; preds = %if.end32
  %incdec.ptr.i = getelementptr inbounds i8, ptr %6, i64 1
  store ptr %incdec.ptr.i, ptr %_IO_write_ptr.i, align 8, !tbaa !57
  store i8 10, ptr %6, align 1, !tbaa !36
  br label %putchar_unlocked.exit

putchar_unlocked.exit:                            ; preds = %cond.false.i, %cond.true.i
  call void @llvm.lifetime.end.p0(i64 21, ptr nonnull %buf) #17
  ret void
}

declare void @argv_iter_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #15

declare i32 @close(i32 noundef) local_unnamed_addr #2

declare ptr @umaxtostr(i64 noundef, ptr noundef) local_unnamed_addr #2

declare ptr @imaxtostr(i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #4

declare i32 @__overflow(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare i64 @__ctype_get_mb_cur_max() local_unnamed_addr #1

declare void @fdadvise(i32 noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare i64 @lseek(i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree
declare noundef i64 @read(i32 noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #16

declare void @wc_lines_avx2(ptr dead_on_unwind writable sret(%struct.wc_lines) align 8, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.add.v2i64(<2 x i64>) #13

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare ptr @rawmemchr(ptr noundef, i32 noundef) local_unnamed_addr #10

declare i64 @rpl_mbrtoc32(ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare ptr @__memmove_chk(ptr noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i32 @mbsinit(ptr noundef) local_unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #13

; Function Attrs: nounwind
declare i32 @wcwidth(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare i32 @iswspace(i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree
declare noundef i32 @open(ptr nocapture noundef readonly, i32 noundef, ...) local_unnamed_addr #16

attributes #0 = { noreturn nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree nounwind memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { cold "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #14 = { allocsize(0,1) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nounwind }
attributes #18 = { nounwind willreturn memory(read) }
attributes #19 = { noreturn nounwind }
attributes #20 = { nounwind willreturn memory(none) }
attributes #21 = { noreturn }
attributes #22 = { cold nounwind }
attributes #23 = { nounwind allocsize(0,1) }

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
!9 = !{!10, !10, i64 0, i64 8}
!10 = !{!7, i64 8, !"long"}
!11 = !{!12, !12, i64 0, i64 1}
!12 = !{!7, i64 1, !"_Bool"}
!13 = !{!14, !14, i64 0, i64 4}
!14 = !{!7, i64 4, !"int"}
!15 = distinct !{!15, !16}
!16 = !{!"llvm.loop.mustprogress"}
!17 = !{!18, !18, i64 0, i64 2}
!18 = !{!7, i64 2, !"short"}
!19 = !{i8 0, i8 2}
!20 = distinct !{!20, !16}
!21 = !{!22, !14, i64 24, i64 4}
!22 = !{!7, i64 144, !"stat", !10, i64 0, i64 8, !10, i64 8, i64 8, !10, i64 16, i64 8, !14, i64 24, i64 4, !14, i64 28, i64 4, !14, i64 32, i64 4, !14, i64 36, i64 4, !10, i64 40, i64 8, !10, i64 48, i64 8, !10, i64 56, i64 8, !10, i64 64, i64 8, !23, i64 72, i64 16, !23, i64 88, i64 16, !23, i64 104, i64 16, !10, i64 120, i64 24}
!23 = !{!7, i64 16, !"timespec", !10, i64 0, i64 8, !10, i64 8, i64 8}
!24 = !{!22, !10, i64 48, i64 8}
!25 = !{!26, !6, i64 8, i64 8}
!26 = !{!7, i64 288, !"Tokens", !10, i64 0, i64 8, !6, i64 8, i64 8, !6, i64 16, i64 8, !27, i64 24, i64 88, !27, i64 112, i64 88, !27, i64 200, i64 88}
!27 = !{!7, i64 88, !"obstack", !10, i64 0, i64 8, !6, i64 8, i64 8, !6, i64 16, i64 8, !6, i64 24, i64 8, !6, i64 32, i64 8, !7, i64 40, i64 8, !10, i64 48, i64 8, !7, i64 56, i64 8, !7, i64 64, i64 8, !6, i64 72, i64 8, !14, i64 80, i64 4, !14, i64 80, i64 4, !14, i64 80, i64 4}
!28 = !{!26, !10, i64 0, i64 8}
!29 = !{!30, !14, i64 0, i64 4}
!30 = !{!7, i64 152, !"fstatus", !14, i64 0, i64 4, !22, i64 8, i64 144}
!31 = distinct !{!31, !16}
!32 = !{!30, !14, i64 32, i64 4}
!33 = !{!30, !10, i64 56, i64 8}
!34 = distinct !{!34, !16}
!35 = distinct !{!35, !16}
!36 = !{!7, !7, i64 0, i64 1}
!37 = distinct !{!37, !16}
!38 = !{}
!39 = !{!30, !10, i64 64, i64 8}
!40 = distinct !{!40, !16}
!41 = !{!42}
!42 = distinct !{!42, !43, !"wc_lines: %agg.result"}
!43 = distinct !{!43, !"wc_lines"}
!44 = !{!45, !14, i64 0, i64 4}
!45 = !{!7, i64 24, !"wc_lines", !14, i64 0, i64 4, !10, i64 8, i64 8, !10, i64 16, i64 8}
!46 = !{!45, !10, i64 8, i64 8}
!47 = !{!45, !10, i64 16, i64 8}
!48 = distinct !{!48, !16, !49, !50}
!49 = !{!"llvm.loop.isvectorized", i32 1}
!50 = !{!"llvm.loop.unroll.runtime.disable"}
!51 = distinct !{!51, !16, !50, !49}
!52 = distinct !{!52, !16}
!53 = distinct !{!53, !16}
!54 = distinct !{!54, !16}
!55 = distinct !{!55, !16}
!56 = distinct !{!56, !16}
!57 = !{!58, !6, i64 40, i64 8}
!58 = !{!7, i64 216, !"_IO_FILE", !14, i64 0, i64 4, !6, i64 8, i64 8, !6, i64 16, i64 8, !6, i64 24, i64 8, !6, i64 32, i64 8, !6, i64 40, i64 8, !6, i64 48, i64 8, !6, i64 56, i64 8, !6, i64 64, i64 8, !6, i64 72, i64 8, !6, i64 80, i64 8, !6, i64 88, i64 8, !6, i64 96, i64 8, !6, i64 104, i64 8, !14, i64 112, i64 4, !14, i64 116, i64 4, !10, i64 120, i64 8, !18, i64 128, i64 2, !7, i64 130, i64 1, !7, i64 131, i64 1, !6, i64 136, i64 8, !10, i64 144, i64 8, !6, i64 152, i64 8, !6, i64 160, i64 8, !6, i64 168, i64 8, !6, i64 176, i64 8, !10, i64 184, i64 8, !14, i64 192, i64 4, !7, i64 196, i64 20}
!59 = !{!58, !6, i64 48, i64 8}
!60 = !{!"branch_weights", i32 2000, i32 1}
