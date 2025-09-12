; ModuleID = 'llvm-link'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.__va_list_tag = type { i32, i32, ptr, ptr }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }

@stderr = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [39 x i8] c"Try '%s --help' for more information.\0A\00", align 1
@program_name = external local_unnamed_addr global ptr, align 8
@.str.1 = private unnamed_addr constant [85 x i8] c"Usage: test EXPRESSION\0A  or:  test\0A  or:  [ EXPRESSION ]\0A  or:  [ ]\0A  or:  [ OPTION\0A\00", align 1
@stdout = external local_unnamed_addr global ptr, align 8
@.str.2 = private unnamed_addr constant [49 x i8] c"Exit with the status determined by EXPRESSION.\0A\0A\00", align 1
@.str.3 = private unnamed_addr constant [48 x i8] c"      --help        display this help and exit\0A\00", align 1
@.str.4 = private unnamed_addr constant [57 x i8] c"      --version     output version information and exit\0A\00", align 1
@.str.5 = private unnamed_addr constant [120 x i8] c"\0AAn omitted EXPRESSION defaults to false.  Otherwise,\0AEXPRESSION is true or false and sets exit status.  It is one of:\0A\00", align 1
@.str.6 = private unnamed_addr constant [249 x i8] c"\0A  ( EXPRESSION )               EXPRESSION is true\0A  ! EXPRESSION                 EXPRESSION is false\0A  EXPRESSION1 -a EXPRESSION2   both EXPRESSION1 and EXPRESSION2 are true\0A  EXPRESSION1 -o EXPRESSION2   either EXPRESSION1 or EXPRESSION2 is true\0A\00", align 1
@.str.7 = private unnamed_addr constant [401 x i8] c"\0A  -n STRING            the length of STRING is nonzero\0A  STRING               equivalent to -n STRING\0A  -z STRING            the length of STRING is zero\0A  STRING1 = STRING2    the strings are equal\0A  STRING1 != STRING2   the strings are not equal\0A  STRING1 > STRING2    STRING1 is greater than STRING2 in the current locale\0A  STRING1 < STRING2    STRING1 is less than STRING2 in the current locale\0A\00", align 1
@.str.8 = private unnamed_addr constant [376 x i8] c"\0A  INTEGER1 -eq INTEGER2   INTEGER1 is equal to INTEGER2\0A  INTEGER1 -ge INTEGER2   INTEGER1 is greater than or equal to INTEGER2\0A  INTEGER1 -gt INTEGER2   INTEGER1 is greater than INTEGER2\0A  INTEGER1 -le INTEGER2   INTEGER1 is less than or equal to INTEGER2\0A  INTEGER1 -lt INTEGER2   INTEGER1 is less than INTEGER2\0A  INTEGER1 -ne INTEGER2   INTEGER1 is not equal to INTEGER2\0A\00", align 1
@.str.9 = private unnamed_addr constant [189 x i8] c"\0A  FILE1 -ef FILE2   FILE1 and FILE2 have the same device and inode numbers\0A  FILE1 -nt FILE2   FILE1 is newer (modification date) than FILE2\0A  FILE1 -ot FILE2   FILE1 is older than FILE2\0A\00", align 1
@.str.10 = private unnamed_addr constant [171 x i8] c"\0A  -b FILE     FILE exists and is block special\0A  -c FILE     FILE exists and is character special\0A  -d FILE     FILE exists and is a directory\0A  -e FILE     FILE exists\0A\00", align 1
@.str.11 = private unnamed_addr constant [275 x i8] c"  -f FILE     FILE exists and is a regular file\0A  -g FILE     FILE exists and is set-group-ID\0A  -G FILE     FILE exists and is owned by the effective group ID\0A  -h FILE     FILE exists and is a symbolic link (same as -L)\0A  -k FILE     FILE exists and has its sticky bit set\0A\00", align 1
@.str.12 = private unnamed_addr constant [358 x i8] c"  -L FILE     FILE exists and is a symbolic link (same as -h)\0A  -N FILE     FILE exists and has been modified since it was last read\0A  -O FILE     FILE exists and is owned by the effective user ID\0A  -p FILE     FILE exists and is a named pipe\0A  -r FILE     FILE exists and the user has read access\0A  -s FILE     FILE exists and has a size greater than zero\0A\00", align 1
@.str.13 = private unnamed_addr constant [283 x i8] c"  -S FILE     FILE exists and is a socket\0A  -t FD       file descriptor FD is opened on a terminal\0A  -u FILE     FILE exists and its set-user-ID bit is set\0A  -w FILE     FILE exists and the user has write access\0A  -x FILE     FILE exists and the user has execute (or search) access\0A\00", align 1
@.str.14 = private unnamed_addr constant [225 x i8] c"\0AExcept for -h and -L, all FILE-related tests dereference symbolic links.\0ABeware that parentheses need to be escaped (e.g., by backslashes) for shells.\0AINTEGER may also be -l STRING, which evaluates to the length of STRING.\0A\00", align 1
@.str.15 = private unnamed_addr constant [105 x i8] c"\0ABinary -a and -o are ambiguous.  Use 'test EXPR1 && test EXPR2'\0Aor 'test EXPR1 || test EXPR2' instead.\0A\00", align 1
@.str.16 = private unnamed_addr constant [70 x i8] c"\0A'[' honors --help and --version, but 'test' treats them as STRINGs.\0A\00", align 1
@.str.17 = private unnamed_addr constant [185 x i8] c"\0AYour shell may have its own version of %s, which usually supersedes\0Athe version described here.  Please refer to your shell's documentation\0Afor details about the options it supports.\0A\00", align 1
@.str.18 = private unnamed_addr constant [14 x i8] c"test and/or [\00", align 1
@.str.19 = private unnamed_addr constant [2 x i8] c"[\00", align 1
@.str.20 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.21 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1
@.str.22 = private unnamed_addr constant [24 x i8] c"/usr/local/share/locale\00", align 1
@argv = internal unnamed_addr global ptr null, align 8
@.str.23 = private unnamed_addr constant [7 x i8] c"--help\00", align 1
@.str.24 = private unnamed_addr constant [10 x i8] c"--version\00", align 1
@.str.25 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@Version = external local_unnamed_addr global ptr, align 8
@.str.26 = private unnamed_addr constant [17 x i8] c"Kevin Braunsdorf\00", align 1
@.str.27 = private unnamed_addr constant [17 x i8] c"Matthew Bradburn\00", align 1
@.str.28 = private unnamed_addr constant [2 x i8] c"]\00", align 1
@.str.29 = private unnamed_addr constant [11 x i8] c"missing %s\00", align 1
@argc = internal unnamed_addr global i32 0, align 4
@pos = internal unnamed_addr global i32 0, align 4
@.str.30 = private unnamed_addr constant [18 x i8] c"extra argument %s\00", align 1
@.str.31 = private unnamed_addr constant [16 x i8] c"test invocation\00", align 1
@.str.38 = private unnamed_addr constant [23 x i8] c"\0A%s online help: <%s>\0A\00", align 1
@.str.39 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1
@.str.40 = private unnamed_addr constant [4 x i8] c"en_\00", align 1
@.str.41 = private unnamed_addr constant [71 x i8] c"Report any translation bugs to <https://translationproject.org/team/>\0A\00", align 1
@.str.42 = private unnamed_addr constant [5 x i8] c"test\00", align 1
@.str.43 = private unnamed_addr constant [27 x i8] c"Full documentation <%s%s>\0A\00", align 1
@.str.44 = private unnamed_addr constant [51 x i8] c"or available locally via: info '(coreutils) %s%s'\0A\00", align 1
@.str.45 = private unnamed_addr constant [12 x i8] c" invocation\00", align 1
@exit_failure = external global i32, align 4
@.str.46 = private unnamed_addr constant [2 x i8] c"!\00", align 1
@.str.47 = private unnamed_addr constant [2 x i8] c"(\00", align 1
@.str.48 = private unnamed_addr constant [2 x i8] c")\00", align 1
@.str.49 = private unnamed_addr constant [10 x i8] c"0 < nargs\00", align 1
@.str.50 = private unnamed_addr constant [11 x i8] c"src/test.c\00", align 1
@__PRETTY_FUNCTION__.posixtest = private unnamed_addr constant [21 x i8] c"_Bool posixtest(int)\00", align 1
@.str.51 = private unnamed_addr constant [28 x i8] c"%s: unary operator expected\00", align 1
@.str.52 = private unnamed_addr constant [19 x i8] c"invalid integer %s\00", align 1
@.str.53 = private unnamed_addr constant [26 x i8] c"missing argument after %s\00", align 1
@.str.54 = private unnamed_addr constant [3 x i8] c"-a\00", align 1
@.str.55 = private unnamed_addr constant [3 x i8] c"-o\00", align 1
@.str.56 = private unnamed_addr constant [2 x i8] c">\00", align 1
@.str.57 = private unnamed_addr constant [2 x i8] c"<\00", align 1
@.str.58 = private unnamed_addr constant [29 x i8] c"%s: binary operator expected\00", align 1
@.str.59 = private unnamed_addr constant [2 x i8] c"=\00", align 1
@.str.60 = private unnamed_addr constant [3 x i8] c"!=\00", align 1
@.str.61 = private unnamed_addr constant [3 x i8] c"==\00", align 1
@.str.62 = private unnamed_addr constant [4 x i8] c"-nt\00", align 1
@.str.63 = private unnamed_addr constant [4 x i8] c"-ot\00", align 1
@.str.64 = private unnamed_addr constant [4 x i8] c"-ef\00", align 1
@.str.65 = private unnamed_addr constant [4 x i8] c"-eq\00", align 1
@.str.66 = private unnamed_addr constant [4 x i8] c"-ne\00", align 1
@.str.67 = private unnamed_addr constant [4 x i8] c"-lt\00", align 1
@.str.68 = private unnamed_addr constant [4 x i8] c"-le\00", align 1
@.str.69 = private unnamed_addr constant [4 x i8] c"-gt\00", align 1
@.str.70 = private unnamed_addr constant [4 x i8] c"-ge\00", align 1
@.str.71 = private unnamed_addr constant [3 x i8] c"-l\00", align 1
@.str.72 = private unnamed_addr constant [23 x i8] c"-nt does not accept -l\00", align 1
@.str.73 = private unnamed_addr constant [23 x i8] c"-ef does not accept -l\00", align 1
@.str.74 = private unnamed_addr constant [23 x i8] c"-ot does not accept -l\00", align 1
@.str.75 = private unnamed_addr constant [28 x i8] c"%s: unknown binary operator\00", align 1
@.str.76 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@__PRETTY_FUNCTION__.binary_operator = private unnamed_addr constant [29 x i8] c"_Bool binary_operator(_Bool)\00", align 1
@.str.77 = private unnamed_addr constant [12 x i8] c"%s expected\00", align 1
@.str.78 = private unnamed_addr constant [22 x i8] c"%s expected, found %s\00", align 1

; Function Attrs: noreturn nounwind uwtable
define dso_local void @usage(i32 noundef %status) local_unnamed_addr #0 {
entry:
  %cmp.not = icmp eq i32 %status, 0
  br i1 %cmp.not, label %if.else, label %do.body

do.body:                                          ; preds = %entry
  %0 = load ptr, ptr @stderr, align 8, !tbaa !5
  %call = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str, i32 noundef 5) #13
  %1 = load ptr, ptr @program_name, align 8, !tbaa !5
  %call1 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %call, ptr noundef %1) #13
  br label %if.end

if.else:                                          ; preds = %entry
  %call2 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.1, i32 noundef 5) #13
  %2 = load ptr, ptr @stdout, align 8, !tbaa !5
  %call3 = tail call i32 @fputs_unlocked(ptr noundef %call2, ptr noundef %2)
  %call4 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.2, i32 noundef 5) #13
  %3 = load ptr, ptr @stdout, align 8, !tbaa !5
  %call5 = tail call i32 @fputs_unlocked(ptr noundef %call4, ptr noundef %3)
  %call6 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.3, i32 noundef 5) #13
  %4 = load ptr, ptr @stdout, align 8, !tbaa !5
  %call7 = tail call i32 @fputs_unlocked(ptr noundef %call6, ptr noundef %4)
  %call8 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.4, i32 noundef 5) #13
  %5 = load ptr, ptr @stdout, align 8, !tbaa !5
  %call9 = tail call i32 @fputs_unlocked(ptr noundef %call8, ptr noundef %5)
  %call10 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.5, i32 noundef 5) #13
  %6 = load ptr, ptr @stdout, align 8, !tbaa !5
  %call11 = tail call i32 @fputs_unlocked(ptr noundef %call10, ptr noundef %6)
  %call12 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.6, i32 noundef 5) #13
  %7 = load ptr, ptr @stdout, align 8, !tbaa !5
  %call13 = tail call i32 @fputs_unlocked(ptr noundef %call12, ptr noundef %7)
  %call14 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.7, i32 noundef 5) #13
  %8 = load ptr, ptr @stdout, align 8, !tbaa !5
  %call15 = tail call i32 @fputs_unlocked(ptr noundef %call14, ptr noundef %8)
  %call16 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.8, i32 noundef 5) #13
  %9 = load ptr, ptr @stdout, align 8, !tbaa !5
  %call17 = tail call i32 @fputs_unlocked(ptr noundef %call16, ptr noundef %9)
  %call18 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.9, i32 noundef 5) #13
  %10 = load ptr, ptr @stdout, align 8, !tbaa !5
  %call19 = tail call i32 @fputs_unlocked(ptr noundef %call18, ptr noundef %10)
  %call20 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.10, i32 noundef 5) #13
  %11 = load ptr, ptr @stdout, align 8, !tbaa !5
  %call21 = tail call i32 @fputs_unlocked(ptr noundef %call20, ptr noundef %11)
  %call22 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.11, i32 noundef 5) #13
  %12 = load ptr, ptr @stdout, align 8, !tbaa !5
  %call23 = tail call i32 @fputs_unlocked(ptr noundef %call22, ptr noundef %12)
  %call24 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.12, i32 noundef 5) #13
  %13 = load ptr, ptr @stdout, align 8, !tbaa !5
  %call25 = tail call i32 @fputs_unlocked(ptr noundef %call24, ptr noundef %13)
  %call26 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.13, i32 noundef 5) #13
  %14 = load ptr, ptr @stdout, align 8, !tbaa !5
  %call27 = tail call i32 @fputs_unlocked(ptr noundef %call26, ptr noundef %14)
  %call28 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.14, i32 noundef 5) #13
  %15 = load ptr, ptr @stdout, align 8, !tbaa !5
  %call29 = tail call i32 @fputs_unlocked(ptr noundef %call28, ptr noundef %15)
  %call30 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.15, i32 noundef 5) #13
  %16 = load ptr, ptr @stdout, align 8, !tbaa !5
  %call31 = tail call i32 @fputs_unlocked(ptr noundef %call30, ptr noundef %16)
  %call32 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.16, i32 noundef 5) #13
  %17 = load ptr, ptr @stdout, align 8, !tbaa !5
  %call33 = tail call i32 @fputs_unlocked(ptr noundef %call32, ptr noundef %17)
  %call34 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.17, i32 noundef 5) #13
  %call35 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.18, i32 noundef 5) #13
  %call36 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %call34, ptr noundef %call35) #13
  %call6.i = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.38, i32 noundef 5) #13
  %call7.i = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %call6.i, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.39) #13
  %call8.i = tail call ptr @setlocale(i32 noundef 5, ptr noundef null) #13
  %tobool9.not.i = icmp eq ptr %call8.i, null
  br i1 %tobool9.not.i, label %emit_ancillary_info.exit, label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %if.else
  %call10.i = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %call8.i, ptr noundef nonnull dereferenceable(4) @.str.40, i64 noundef 3) #14
  %tobool11.not.i = icmp eq i32 %call10.i, 0
  br i1 %tobool11.not.i, label %emit_ancillary_info.exit, label %if.then12.i

if.then12.i:                                      ; preds = %land.lhs.true.i
  %call13.i = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.41, i32 noundef 5) #13
  %18 = load ptr, ptr @stdout, align 8, !tbaa !5
  %call14.i = tail call i32 @fputs_unlocked(ptr noundef %call13.i, ptr noundef %18)
  br label %emit_ancillary_info.exit

emit_ancillary_info.exit:                         ; preds = %if.then12.i, %land.lhs.true.i, %if.else
  %call18.i = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.43, i32 noundef 5) #13
  %call19.i = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %call18.i, ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.42) #13
  %call20.i = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.44, i32 noundef 5) #13
  %cond22.i = select i1 icmp eq (ptr @.str.31, ptr @.str.19), ptr @.str.45, ptr @.str.20
  %call23.i = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %call20.i, ptr noundef nonnull @.str.31, ptr noundef nonnull %cond22.i) #13
  br label %if.end

if.end:                                           ; preds = %emit_ancillary_info.exit, %do.body
  tail call void @exit(i32 noundef %status) #15
  unreachable
}

; Function Attrs: nounwind
declare ptr @dcgettext(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare i32 @__fprintf_chk(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @fputs_unlocked(ptr nocapture noundef readonly, ptr nocapture noundef) local_unnamed_addr #3

declare i32 @__printf_chk(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind
declare ptr @setlocale(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define dso_local i32 @main(i32 noundef %margc, ptr noundef %margv) local_unnamed_addr #6 {
entry:
  %0 = load ptr, ptr %margv, align 8, !tbaa !5
  tail call void @set_program_name(ptr noundef %0) #13
  %call = tail call ptr @setlocale(i32 noundef 6, ptr noundef nonnull @.str.20) #13
  %call1 = tail call ptr @bindtextdomain(ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.22) #13
  %call2 = tail call ptr @textdomain(ptr noundef nonnull @.str.21) #13
  store volatile i32 2, ptr @exit_failure, align 4, !tbaa !9
  %call3 = tail call i32 @atexit(ptr noundef nonnull @close_stdout) #13
  store ptr %margv, ptr @argv, align 8, !tbaa !5
  %cmp = icmp eq i32 %margc, 2
  br i1 %cmp, label %if.then, label %if.end15

if.then:                                          ; preds = %entry
  %arrayidx4 = getelementptr inbounds ptr, ptr %margv, i64 1
  %1 = load ptr, ptr %arrayidx4, align 8, !tbaa !5
  %call5 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(7) @.str.23) #14
  %cmp6 = icmp eq i32 %call5, 0
  br i1 %cmp6, label %if.then7, label %if.end

if.then7:                                         ; preds = %if.then
  tail call void @usage(i32 noundef 0) #16
  unreachable

if.end:                                           ; preds = %if.then
  %call9 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(10) @.str.24) #14
  %cmp10 = icmp eq i32 %call9, 0
  br i1 %cmp10, label %if.then11, label %lor.lhs.false

if.then11:                                        ; preds = %if.end
  %2 = load ptr, ptr @stdout, align 8, !tbaa !5
  %3 = load ptr, ptr @Version, align 8, !tbaa !5
  %call12 = tail call ptr @proper_name_lite(ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.26) #13
  %call13 = tail call ptr @proper_name_lite(ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.27) #13
  tail call void (ptr, ptr, ptr, ptr, ...) @version_etc(ptr noundef %2, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.25, ptr noundef %3, ptr noundef %call12, ptr noundef %call13, ptr noundef null) #13
  br label %cleanup

if.end15:                                         ; preds = %entry
  %cmp16 = icmp slt i32 %margc, 2
  br i1 %cmp16, label %if.then20, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end15, %if.end
  %4 = zext nneg i32 %margc to i64
  %5 = getelementptr ptr, ptr %margv, i64 %4
  %arrayidx17 = getelementptr ptr, ptr %5, i64 -1
  %6 = load ptr, ptr %arrayidx17, align 8, !tbaa !5
  %call18 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %6, ptr noundef nonnull dereferenceable(2) @.str.28) #14
  %cmp19 = icmp eq i32 %call18, 0
  br i1 %cmp19, label %if.end23, label %if.then20

if.then20:                                        ; preds = %lor.lhs.false, %if.end15
  %call21 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.29, i32 noundef 5) #13
  %call22 = tail call ptr @quote(ptr noundef nonnull @.str.28) #13
  tail call void (ptr, ...) @test_syntax_error(ptr noundef %call21, ptr noundef %call22) #16
  unreachable

if.end23:                                         ; preds = %lor.lhs.false
  %dec = add nsw i32 %margc, -1
  store i32 %dec, ptr @argc, align 4, !tbaa !9
  store i32 1, ptr @pos, align 4, !tbaa !9
  br i1 %cmp, label %cleanup, label %if.end26

if.end26:                                         ; preds = %if.end23
  %sub27 = add nsw i32 %margc, -2
  %call28 = tail call fastcc zeroext i1 @posixtest(i32 noundef %sub27)
  %7 = load i32, ptr @pos, align 4, !tbaa !9
  %8 = load i32, ptr @argc, align 4, !tbaa !9
  %cmp29.not = icmp eq i32 %7, %8
  br i1 %cmp29.not, label %if.end35, label %if.then30

if.then30:                                        ; preds = %if.end26
  %call31 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.30, i32 noundef 5) #13
  %9 = load ptr, ptr @argv, align 8, !tbaa !5
  %10 = load i32, ptr @pos, align 4, !tbaa !9
  %idxprom32 = sext i32 %10 to i64
  %arrayidx33 = getelementptr inbounds ptr, ptr %9, i64 %idxprom32
  %11 = load ptr, ptr %arrayidx33, align 8, !tbaa !5
  %call34 = tail call ptr @quote(ptr noundef %11) #13
  tail call void (ptr, ...) @test_syntax_error(ptr noundef %call31, ptr noundef %call34) #16
  unreachable

if.end35:                                         ; preds = %if.end26
  %not.call28 = xor i1 %call28, true
  %cond = zext i1 %not.call28 to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end35, %if.end23, %if.then11
  %retval.0 = phi i32 [ 0, %if.then11 ], [ %cond, %if.end35 ], [ 1, %if.end23 ]
  ret i32 %retval.0
}

declare void @set_program_name(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare ptr @bindtextdomain(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare ptr @textdomain(ptr noundef) local_unnamed_addr #1

declare void @close_stdout() #2

; Function Attrs: nounwind
declare i32 @atexit(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #4

declare ptr @proper_name_lite(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @version_etc(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

declare ptr @quote(ptr noundef) local_unnamed_addr #2

; Function Attrs: noreturn nounwind uwtable
define internal void @test_syntax_error(ptr noundef %format, ...) unnamed_addr #0 {
entry:
  %ap = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %ap) #13
  call void @llvm.va_start(ptr nonnull %ap)
  call void @verror(i32 noundef 0, i32 noundef 0, ptr noundef %format, ptr noundef nonnull %ap) #17
  call void @exit(i32 noundef 2) #15
  unreachable
}

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i1 @posixtest(i32 noundef %nargs) unnamed_addr #6 {
entry:
  switch i32 %nargs, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb1
    i32 3, label %sw.bb4
    i32 4, label %sw.bb7
  ]

sw.bb:                                            ; preds = %entry
  %0 = load ptr, ptr @argv, align 8, !tbaa !5
  %1 = load i32, ptr @pos, align 4, !tbaa !9
  %inc.i = add nsw i32 %1, 1
  store i32 %inc.i, ptr @pos, align 4, !tbaa !9
  %idxprom.i = sext i32 %1 to i64
  %arrayidx.i = getelementptr inbounds ptr, ptr %0, i64 %idxprom.i
  %2 = load ptr, ptr %arrayidx.i, align 8, !tbaa !5
  %3 = load i8, ptr %2, align 1, !tbaa !11
  %cmp.i = icmp ne i8 %3, 0
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  %4 = load ptr, ptr @argv, align 8, !tbaa !5
  %5 = load i32, ptr @pos, align 4, !tbaa !9
  %idxprom.i30 = sext i32 %5 to i64
  %arrayidx.i31 = getelementptr ptr, ptr %4, i64 %idxprom.i30
  %6 = load ptr, ptr %arrayidx.i31, align 8, !tbaa !5
  %call.i = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %6, ptr noundef nonnull dereferenceable(2) @.str.46) #14
  %cmp.i32 = icmp eq i32 %call.i, 0
  br i1 %cmp.i32, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %sw.bb1
  %inc.i25.i = add nsw i32 %5, 2
  store i32 %inc.i25.i, ptr @pos, align 4, !tbaa !9
  %arrayidx.i.i = getelementptr ptr, ptr %arrayidx.i31, i64 1
  %7 = load ptr, ptr %arrayidx.i.i, align 8, !tbaa !5
  %8 = load i8, ptr %7, align 1, !tbaa !11
  %cmp.i.not.i = icmp eq i8 %8, 0
  br label %sw.epilog

if.else.i:                                        ; preds = %sw.bb1
  %9 = load i8, ptr %6, align 1, !tbaa !11
  %cmp5.i = icmp eq i8 %9, 45
  br i1 %cmp5.i, label %land.lhs.true.i, label %if.else23.i

land.lhs.true.i:                                  ; preds = %if.else.i
  %arrayidx9.i = getelementptr inbounds i8, ptr %6, i64 1
  %10 = load i8, ptr %arrayidx9.i, align 1, !tbaa !11
  %cmp11.not.i = icmp eq i8 %10, 0
  br i1 %cmp11.not.i, label %if.else23.i, label %land.lhs.true13.i

land.lhs.true13.i:                                ; preds = %land.lhs.true.i
  %arrayidx16.i = getelementptr inbounds i8, ptr %6, i64 2
  %11 = load i8, ptr %arrayidx16.i, align 1, !tbaa !11
  %cmp18.i = icmp eq i8 %11, 0
  br i1 %cmp18.i, label %if.then20.i, label %if.else23.i

if.then20.i:                                      ; preds = %land.lhs.true13.i
  %call21.i = tail call fastcc zeroext i1 @unary_operator()
  br label %sw.epilog

if.else23.i:                                      ; preds = %land.lhs.true13.i, %land.lhs.true.i, %if.else.i
  tail call fastcc void @beyond() #16
  unreachable

sw.bb4:                                           ; preds = %entry
  %call5 = tail call fastcc zeroext i1 @three_arguments()
  br label %sw.epilog

sw.bb7:                                           ; preds = %entry
  %12 = load ptr, ptr @argv, align 8, !tbaa !5
  %13 = load i32, ptr @pos, align 4, !tbaa !9
  %idxprom = sext i32 %13 to i64
  %arrayidx = getelementptr inbounds ptr, ptr %12, i64 %idxprom
  %14 = load ptr, ptr %arrayidx, align 8, !tbaa !5
  %call8 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %14, ptr noundef nonnull dereferenceable(2) @.str.46) #14
  %cmp = icmp eq i32 %call8, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb7
  %inc.i33 = add nsw i32 %13, 1
  store i32 %inc.i33, ptr @pos, align 4, !tbaa !9
  %15 = load i32, ptr @argc, align 4
  %cmp.not.i.not = icmp slt i32 %inc.i33, %15
  br i1 %cmp.not.i.not, label %advance.exit, label %if.then.i34

if.then.i34:                                      ; preds = %if.then
  tail call fastcc void @beyond()
  unreachable

advance.exit:                                     ; preds = %if.then
  %call9 = tail call fastcc zeroext i1 @three_arguments()
  %lnot = xor i1 %call9, true
  br label %sw.epilog

if.end:                                           ; preds = %sw.bb7
  %call13 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %14, ptr noundef nonnull dereferenceable(2) @.str.47) #14
  %cmp14 = icmp eq i32 %call13, 0
  br i1 %cmp14, label %land.lhs.true, label %if.end26

land.lhs.true:                                    ; preds = %if.end
  %arrayidx16 = getelementptr ptr, ptr %arrayidx, i64 3
  %16 = load ptr, ptr %arrayidx16, align 8, !tbaa !5
  %call17 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %16, ptr noundef nonnull dereferenceable(2) @.str.48) #14
  %cmp18 = icmp eq i32 %call17, 0
  br i1 %cmp18, label %if.then19, label %if.end26

if.then19:                                        ; preds = %land.lhs.true
  %inc.i35 = add nsw i32 %13, 1
  store i32 %inc.i35, ptr @pos, align 4, !tbaa !9
  %call20 = tail call fastcc zeroext i1 @two_arguments()
  %17 = load i32, ptr @pos, align 4, !tbaa !9
  %inc.i37 = add nsw i32 %17, 1
  store i32 %inc.i37, ptr @pos, align 4, !tbaa !9
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  %cmp24 = icmp sgt i32 %nargs, 0
  br i1 %cmp24, label %sw.default.if.end26_crit_edge, label %if.else

sw.default.if.end26_crit_edge:                    ; preds = %sw.default
  %.pre = load i32, ptr @pos, align 4, !tbaa !9
  br label %if.end26

if.else:                                          ; preds = %sw.default
  tail call void @__assert_fail(ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.50, i32 noundef 679, ptr noundef nonnull @__PRETTY_FUNCTION__.posixtest) #15
  unreachable

if.end26:                                         ; preds = %sw.default.if.end26_crit_edge, %land.lhs.true, %if.end
  %18 = phi i32 [ %.pre, %sw.default.if.end26_crit_edge ], [ %13, %if.end ], [ %13, %land.lhs.true ]
  %19 = load i32, ptr @argc, align 4, !tbaa !9
  %cmp.not.i39 = icmp slt i32 %18, %19
  br i1 %cmp.not.i39, label %while.cond.i.preheader, label %if.then.i40

while.cond.i.preheader:                           ; preds = %if.end26
  %call.i.i5965 = tail call fastcc zeroext i1 @term()
  %20 = load i32, ptr @pos, align 4, !tbaa !9
  %21 = load i32, ptr @argc, align 4
  %cmp.i.i6066 = icmp slt i32 %20, %21
  br i1 %cmp.i.i6066, label %land.lhs.true.i.i.lr.ph, label %and.exit.i

if.then.i40:                                      ; preds = %if.end26
  tail call fastcc void @beyond() #16
  unreachable

land.lhs.true.i.i.lr.ph:                          ; preds = %if.end.i, %while.cond.i.preheader
  %22 = phi i32 [ %28, %if.end.i ], [ %20, %while.cond.i.preheader ]
  %call.i.i5968 = phi i1 [ %call.i.i59, %if.end.i ], [ %call.i.i5965, %while.cond.i.preheader ]
  %value.0.i67 = phi i1 [ %or9.i53, %if.end.i ], [ false, %while.cond.i.preheader ]
  br label %land.lhs.true.i.i

land.lhs.true.i.i:                                ; preds = %if.end.i.i, %land.lhs.true.i.i.lr.ph
  %23 = phi i32 [ %22, %land.lhs.true.i.i.lr.ph ], [ %26, %if.end.i.i ]
  %and9.i.i61 = phi i1 [ %call.i.i5968, %land.lhs.true.i.i.lr.ph ], [ %and9.i.i, %if.end.i.i ]
  %24 = load ptr, ptr @argv, align 8, !tbaa !5
  %idxprom.i.i = sext i32 %23 to i64
  %arrayidx.i.i48 = getelementptr inbounds ptr, ptr %24, i64 %idxprom.i.i
  %25 = load ptr, ptr %arrayidx.i.i48, align 8, !tbaa !5
  %call4.i.i = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %25, ptr noundef nonnull dereferenceable(3) @.str.54) #14
  %cmp5.i.i = icmp eq i32 %call4.i.i, 0
  br i1 %cmp5.i.i, label %if.end.i.i, label %land.lhs.true.i44

if.end.i.i:                                       ; preds = %land.lhs.true.i.i
  %inc.i49 = add nsw i32 %23, 1
  store i32 %inc.i49, ptr @pos, align 4, !tbaa !9
  %call.i.i = tail call fastcc zeroext i1 @term()
  %and9.i.i = and i1 %and9.i.i61, %call.i.i
  %26 = load i32, ptr @pos, align 4, !tbaa !9
  %27 = load i32, ptr @argc, align 4
  %cmp.i.i = icmp slt i32 %26, %27
  br i1 %cmp.i.i, label %land.lhs.true.i.i, label %and.exit.i

and.exit.i:                                       ; preds = %if.end.i, %if.end.i.i, %while.cond.i.preheader
  %value.0.i.lcssa = phi i1 [ false, %while.cond.i.preheader ], [ %value.0.i67, %if.end.i.i ], [ %or9.i53, %if.end.i ]
  %and9.i.i.lcssa = phi i1 [ %call.i.i5965, %while.cond.i.preheader ], [ %and9.i.i, %if.end.i.i ], [ %call.i.i59, %if.end.i ]
  %or9.i = or i1 %value.0.i.lcssa, %and9.i.i.lcssa
  br label %sw.epilog

land.lhs.true.i44:                                ; preds = %land.lhs.true.i.i
  %or9.i53 = or i1 %value.0.i67, %and9.i.i61
  %call4.i = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %25, ptr noundef nonnull dereferenceable(3) @.str.55) #14
  %cmp5.i47 = icmp eq i32 %call4.i, 0
  br i1 %cmp5.i47, label %if.end.i, label %sw.epilog

if.end.i:                                         ; preds = %land.lhs.true.i44
  %inc.i.i = add nsw i32 %23, 1
  store i32 %inc.i.i, ptr @pos, align 4, !tbaa !9
  %call.i.i59 = tail call fastcc zeroext i1 @term()
  %28 = load i32, ptr @pos, align 4, !tbaa !9
  %29 = load i32, ptr @argc, align 4
  %cmp.i.i60 = icmp slt i32 %28, %29
  br i1 %cmp.i.i60, label %land.lhs.true.i.i.lr.ph, label %and.exit.i

sw.epilog:                                        ; preds = %land.lhs.true.i44, %and.exit.i, %if.then19, %advance.exit, %sw.bb4, %if.then20.i, %if.then.i, %sw.bb
  %value.0.in = phi i1 [ %lnot, %advance.exit ], [ %call20, %if.then19 ], [ %call5, %sw.bb4 ], [ %cmp.i, %sw.bb ], [ %cmp.i.not.i, %if.then.i ], [ %call21.i, %if.then20.i ], [ %or9.i, %and.exit.i ], [ %or9.i53, %land.lhs.true.i44 ]
  ret i1 %value.0.in
}

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i1 @unary_operator() unnamed_addr #6 {
entry:
  %stat_buf = alloca %struct.stat, align 8
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %stat_buf) #13
  %0 = load ptr, ptr @argv, align 8, !tbaa !5
  %1 = load i32, ptr @pos, align 4, !tbaa !9
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds ptr, ptr %0, i64 %idxprom
  %2 = load ptr, ptr %arrayidx, align 8, !tbaa !5
  %arrayidx1 = getelementptr inbounds i8, ptr %2, i64 1
  %3 = load i8, ptr %arrayidx1, align 1, !tbaa !11
  switch i8 %3, label %sw.default [
    i8 101, label %sw.bb
    i8 114, label %sw.bb9
    i8 119, label %sw.bb16
    i8 120, label %sw.bb23
    i8 78, label %sw.bb30
    i8 79, label %sw.bb42
    i8 71, label %sw.bb58
    i8 102, label %sw.bb78
    i8 100, label %sw.bb89
    i8 115, label %sw.bb102
    i8 83, label %sw.bb113
    i8 99, label %sw.bb126
    i8 98, label %sw.bb139
    i8 112, label %sw.bb152
    i8 76, label %sw.bb165
    i8 104, label %sw.bb165
    i8 117, label %sw.bb178
    i8 103, label %sw.bb190
    i8 107, label %sw.bb202
    i8 116, label %sw.bb214
    i8 110, label %sw.bb235
    i8 122, label %sw.bb243
  ]

sw.default:                                       ; preds = %entry
  %call = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.51, i32 noundef 5) #13
  %4 = load ptr, ptr @argv, align 8, !tbaa !5
  %5 = load i32, ptr @pos, align 4, !tbaa !9
  %idxprom2 = sext i32 %5 to i64
  %arrayidx3 = getelementptr inbounds ptr, ptr %4, i64 %idxprom2
  %6 = load ptr, ptr %arrayidx3, align 8, !tbaa !5
  %call4 = tail call ptr @quote(ptr noundef %6) #13
  tail call void (ptr, ...) @test_syntax_error(ptr noundef %call, ptr noundef %call4) #16
  unreachable

sw.bb:                                            ; preds = %entry
  %inc.i.i = add nsw i32 %1, 1
  store i32 %inc.i.i, ptr @pos, align 4, !tbaa !9
  %7 = load i32, ptr @argc, align 4
  %cmp.not.i.not.i = icmp slt i32 %inc.i.i, %7
  br i1 %cmp.not.i.not.i, label %unary_advance.exit, label %if.then.i.i

if.then.i.i:                                      ; preds = %sw.bb
  tail call fastcc void @beyond()
  unreachable

unary_advance.exit:                               ; preds = %sw.bb
  %inc.i = add nsw i32 %1, 2
  store i32 %inc.i, ptr @pos, align 4, !tbaa !9
  %8 = sext i32 %inc.i to i64
  %9 = getelementptr ptr, ptr %0, i64 %8
  %arrayidx6 = getelementptr ptr, ptr %9, i64 -1
  %10 = load ptr, ptr %arrayidx6, align 8, !tbaa !5
  %call7 = call i32 @stat(ptr noundef %10, ptr noundef nonnull %stat_buf) #13
  %cmp = icmp eq i32 %call7, 0
  br label %cleanup

sw.bb9:                                           ; preds = %entry
  %inc.i.i256 = add nsw i32 %1, 1
  store i32 %inc.i.i256, ptr @pos, align 4, !tbaa !9
  %11 = load i32, ptr @argc, align 4
  %cmp.not.i.not.i257 = icmp slt i32 %inc.i.i256, %11
  br i1 %cmp.not.i.not.i257, label %unary_advance.exit260, label %if.then.i.i258

if.then.i.i258:                                   ; preds = %sw.bb9
  tail call fastcc void @beyond()
  unreachable

unary_advance.exit260:                            ; preds = %sw.bb9
  %inc.i259 = add nsw i32 %1, 2
  store i32 %inc.i259, ptr @pos, align 4, !tbaa !9
  %12 = sext i32 %inc.i259 to i64
  %13 = getelementptr ptr, ptr %0, i64 %12
  %arrayidx12 = getelementptr ptr, ptr %13, i64 -1
  %14 = load ptr, ptr %arrayidx12, align 8, !tbaa !5
  %call13 = tail call i32 @euidaccess(ptr noundef %14, i32 noundef 4) #13
  %cmp14 = icmp eq i32 %call13, 0
  br label %cleanup

sw.bb16:                                          ; preds = %entry
  %inc.i.i261 = add nsw i32 %1, 1
  store i32 %inc.i.i261, ptr @pos, align 4, !tbaa !9
  %15 = load i32, ptr @argc, align 4
  %cmp.not.i.not.i262 = icmp slt i32 %inc.i.i261, %15
  br i1 %cmp.not.i.not.i262, label %unary_advance.exit265, label %if.then.i.i263

if.then.i.i263:                                   ; preds = %sw.bb16
  tail call fastcc void @beyond()
  unreachable

unary_advance.exit265:                            ; preds = %sw.bb16
  %inc.i264 = add nsw i32 %1, 2
  store i32 %inc.i264, ptr @pos, align 4, !tbaa !9
  %16 = sext i32 %inc.i264 to i64
  %17 = getelementptr ptr, ptr %0, i64 %16
  %arrayidx19 = getelementptr ptr, ptr %17, i64 -1
  %18 = load ptr, ptr %arrayidx19, align 8, !tbaa !5
  %call20 = tail call i32 @euidaccess(ptr noundef %18, i32 noundef 2) #13
  %cmp21 = icmp eq i32 %call20, 0
  br label %cleanup

sw.bb23:                                          ; preds = %entry
  %inc.i.i266 = add nsw i32 %1, 1
  store i32 %inc.i.i266, ptr @pos, align 4, !tbaa !9
  %19 = load i32, ptr @argc, align 4
  %cmp.not.i.not.i267 = icmp slt i32 %inc.i.i266, %19
  br i1 %cmp.not.i.not.i267, label %unary_advance.exit270, label %if.then.i.i268

if.then.i.i268:                                   ; preds = %sw.bb23
  tail call fastcc void @beyond()
  unreachable

unary_advance.exit270:                            ; preds = %sw.bb23
  %inc.i269 = add nsw i32 %1, 2
  store i32 %inc.i269, ptr @pos, align 4, !tbaa !9
  %20 = sext i32 %inc.i269 to i64
  %21 = getelementptr ptr, ptr %0, i64 %20
  %arrayidx26 = getelementptr ptr, ptr %21, i64 -1
  %22 = load ptr, ptr %arrayidx26, align 8, !tbaa !5
  %call27 = tail call i32 @euidaccess(ptr noundef %22, i32 noundef 1) #13
  %cmp28 = icmp eq i32 %call27, 0
  br label %cleanup

sw.bb30:                                          ; preds = %entry
  %inc.i.i271 = add nsw i32 %1, 1
  store i32 %inc.i.i271, ptr @pos, align 4, !tbaa !9
  %23 = load i32, ptr @argc, align 4
  %cmp.not.i.not.i272 = icmp slt i32 %inc.i.i271, %23
  br i1 %cmp.not.i.not.i272, label %unary_advance.exit275, label %if.then.i.i273

if.then.i.i273:                                   ; preds = %sw.bb30
  tail call fastcc void @beyond()
  unreachable

unary_advance.exit275:                            ; preds = %sw.bb30
  %inc.i274 = add nsw i32 %1, 2
  store i32 %inc.i274, ptr @pos, align 4, !tbaa !9
  %24 = sext i32 %inc.i274 to i64
  %25 = getelementptr ptr, ptr %0, i64 %24
  %arrayidx33 = getelementptr ptr, ptr %25, i64 -1
  %26 = load ptr, ptr %arrayidx33, align 8, !tbaa !5
  %call34 = call i32 @stat(ptr noundef %26, ptr noundef nonnull %stat_buf) #13
  %cmp35.not = icmp eq i32 %call34, 0
  br i1 %cmp35.not, label %if.end, label %cleanup

if.end:                                           ; preds = %unary_advance.exit275
  %st_atim.i = getelementptr inbounds %struct.stat, ptr %stat_buf, i64 0, i32 11
  %retval.sroa.0.0.copyload.i = load i64, ptr %st_atim.i, align 8, !tbaa !12, !tbaa.struct !15
  %retval.sroa.2.0.st_atim.sroa_idx.i = getelementptr inbounds %struct.stat, ptr %stat_buf, i64 0, i32 11, i32 1
  %retval.sroa.2.0.copyload.i = load i64, ptr %retval.sroa.2.0.st_atim.sroa_idx.i, align 8, !tbaa !12, !tbaa.struct !17
  %st_mtim.i = getelementptr inbounds %struct.stat, ptr %stat_buf, i64 0, i32 12
  %retval.sroa.0.0.copyload.i276 = load i64, ptr %st_mtim.i, align 8, !tbaa !12, !tbaa.struct !15
  %retval.sroa.2.0.st_mtim.sroa_idx.i = getelementptr inbounds %struct.stat, ptr %stat_buf, i64 0, i32 12, i32 1
  %retval.sroa.2.0.copyload.i277 = load i64, ptr %retval.sroa.2.0.st_mtim.sroa_idx.i, align 8, !tbaa !12, !tbaa.struct !17
  %cmp.i = icmp sgt i64 %retval.sroa.0.0.copyload.i276, %retval.sroa.0.0.copyload.i
  %conv.i = zext i1 %cmp.i to i32
  %cmp4.i = icmp slt i64 %retval.sroa.0.0.copyload.i276, %retval.sroa.0.0.copyload.i
  %conv5.neg.i = sext i1 %cmp4.i to i32
  %sub.i = add nsw i32 %conv5.neg.i, %conv.i
  %mul.i = shl nsw i32 %sub.i, 1
  %cmp7.i = icmp sgt i64 %retval.sroa.2.0.copyload.i277, %retval.sroa.2.0.copyload.i
  %conv8.i = zext i1 %cmp7.i to i32
  %cmp11.i = icmp slt i64 %retval.sroa.2.0.copyload.i277, %retval.sroa.2.0.copyload.i
  %conv12.neg.i = sext i1 %cmp11.i to i32
  %sub13.i = add nsw i32 %conv12.neg.i, %conv8.i
  %add.i = add nsw i32 %sub13.i, %mul.i
  %cmp40 = icmp sgt i32 %add.i, 0
  br label %cleanup

sw.bb42:                                          ; preds = %entry
  %inc.i.i280 = add nsw i32 %1, 1
  store i32 %inc.i.i280, ptr @pos, align 4, !tbaa !9
  %27 = load i32, ptr @argc, align 4
  %cmp.not.i.not.i281 = icmp slt i32 %inc.i.i280, %27
  br i1 %cmp.not.i.not.i281, label %unary_advance.exit284, label %if.then.i.i282

if.then.i.i282:                                   ; preds = %sw.bb42
  tail call fastcc void @beyond()
  unreachable

unary_advance.exit284:                            ; preds = %sw.bb42
  %inc.i283 = add nsw i32 %1, 2
  store i32 %inc.i283, ptr @pos, align 4, !tbaa !9
  %28 = sext i32 %inc.i283 to i64
  %29 = getelementptr ptr, ptr %0, i64 %28
  %arrayidx45 = getelementptr ptr, ptr %29, i64 -1
  %30 = load ptr, ptr %arrayidx45, align 8, !tbaa !5
  %call46 = call i32 @stat(ptr noundef %30, ptr noundef nonnull %stat_buf) #13
  %cmp47.not = icmp eq i32 %call46, 0
  br i1 %cmp47.not, label %if.end50, label %cleanup

if.end50:                                         ; preds = %unary_advance.exit284
  %call51 = tail call ptr @__errno_location() #18
  store i32 0, ptr %call51, align 4, !tbaa !9
  %call52 = tail call i32 @geteuid() #13
  %cmp53 = icmp eq i32 %call52, -1
  br i1 %cmp53, label %land.lhs.true, label %land.rhs

land.lhs.true:                                    ; preds = %if.end50
  %31 = load i32, ptr %call51, align 4, !tbaa !9
  %tobool.not = icmp eq i32 %31, 0
  br i1 %tobool.not, label %land.rhs, label %cleanup

land.rhs:                                         ; preds = %land.lhs.true, %if.end50
  %st_uid = getelementptr inbounds %struct.stat, ptr %stat_buf, i64 0, i32 4
  %32 = load i32, ptr %st_uid, align 4, !tbaa !18
  %cmp56 = icmp eq i32 %call52, %32
  br label %cleanup

sw.bb58:                                          ; preds = %entry
  %inc.i.i285 = add nsw i32 %1, 1
  store i32 %inc.i.i285, ptr @pos, align 4, !tbaa !9
  %33 = load i32, ptr @argc, align 4
  %cmp.not.i.not.i286 = icmp slt i32 %inc.i.i285, %33
  br i1 %cmp.not.i.not.i286, label %unary_advance.exit289, label %if.then.i.i287

if.then.i.i287:                                   ; preds = %sw.bb58
  tail call fastcc void @beyond()
  unreachable

unary_advance.exit289:                            ; preds = %sw.bb58
  %inc.i288 = add nsw i32 %1, 2
  store i32 %inc.i288, ptr @pos, align 4, !tbaa !9
  %34 = sext i32 %inc.i288 to i64
  %35 = getelementptr ptr, ptr %0, i64 %34
  %arrayidx61 = getelementptr ptr, ptr %35, i64 -1
  %36 = load ptr, ptr %arrayidx61, align 8, !tbaa !5
  %call62 = call i32 @stat(ptr noundef %36, ptr noundef nonnull %stat_buf) #13
  %cmp63.not = icmp eq i32 %call62, 0
  br i1 %cmp63.not, label %if.end66, label %cleanup

if.end66:                                         ; preds = %unary_advance.exit289
  %call67 = tail call ptr @__errno_location() #18
  store i32 0, ptr %call67, align 4, !tbaa !9
  %call68 = tail call i32 @getegid() #13
  %cmp69 = icmp eq i32 %call68, -1
  br i1 %cmp69, label %land.lhs.true71, label %land.rhs74

land.lhs.true71:                                  ; preds = %if.end66
  %37 = load i32, ptr %call67, align 4, !tbaa !9
  %tobool73.not = icmp eq i32 %37, 0
  br i1 %tobool73.not, label %land.rhs74, label %cleanup

land.rhs74:                                       ; preds = %land.lhs.true71, %if.end66
  %st_gid = getelementptr inbounds %struct.stat, ptr %stat_buf, i64 0, i32 5
  %38 = load i32, ptr %st_gid, align 8, !tbaa !20
  %cmp75 = icmp eq i32 %call68, %38
  br label %cleanup

sw.bb78:                                          ; preds = %entry
  %inc.i.i290 = add nsw i32 %1, 1
  store i32 %inc.i.i290, ptr @pos, align 4, !tbaa !9
  %39 = load i32, ptr @argc, align 4
  %cmp.not.i.not.i291 = icmp slt i32 %inc.i.i290, %39
  br i1 %cmp.not.i.not.i291, label %unary_advance.exit294, label %if.then.i.i292

if.then.i.i292:                                   ; preds = %sw.bb78
  tail call fastcc void @beyond()
  unreachable

unary_advance.exit294:                            ; preds = %sw.bb78
  %inc.i293 = add nsw i32 %1, 2
  store i32 %inc.i293, ptr @pos, align 4, !tbaa !9
  %40 = sext i32 %inc.i293 to i64
  %41 = getelementptr ptr, ptr %0, i64 %40
  %arrayidx81 = getelementptr ptr, ptr %41, i64 -1
  %42 = load ptr, ptr %arrayidx81, align 8, !tbaa !5
  %call82 = call i32 @stat(ptr noundef %42, ptr noundef nonnull %stat_buf) #13
  %cmp83 = icmp eq i32 %call82, 0
  %st_mode = getelementptr inbounds %struct.stat, ptr %stat_buf, i64 0, i32 3
  %43 = load i32, ptr %st_mode, align 8
  %and = and i32 %43, 61440
  %cmp86 = icmp eq i32 %and, 32768
  %44 = select i1 %cmp83, i1 %cmp86, i1 false
  br label %cleanup

sw.bb89:                                          ; preds = %entry
  %inc.i.i295 = add nsw i32 %1, 1
  store i32 %inc.i.i295, ptr @pos, align 4, !tbaa !9
  %45 = load i32, ptr @argc, align 4
  %cmp.not.i.not.i296 = icmp slt i32 %inc.i.i295, %45
  br i1 %cmp.not.i.not.i296, label %unary_advance.exit299, label %if.then.i.i297

if.then.i.i297:                                   ; preds = %sw.bb89
  tail call fastcc void @beyond()
  unreachable

unary_advance.exit299:                            ; preds = %sw.bb89
  %inc.i298 = add nsw i32 %1, 2
  store i32 %inc.i298, ptr @pos, align 4, !tbaa !9
  %46 = sext i32 %inc.i298 to i64
  %47 = getelementptr ptr, ptr %0, i64 %46
  %arrayidx92 = getelementptr ptr, ptr %47, i64 -1
  %48 = load ptr, ptr %arrayidx92, align 8, !tbaa !5
  %call93 = call i32 @stat(ptr noundef %48, ptr noundef nonnull %stat_buf) #13
  %cmp94 = icmp eq i32 %call93, 0
  %st_mode97 = getelementptr inbounds %struct.stat, ptr %stat_buf, i64 0, i32 3
  %49 = load i32, ptr %st_mode97, align 8
  %and98 = and i32 %49, 61440
  %cmp99 = icmp eq i32 %and98, 16384
  %50 = select i1 %cmp94, i1 %cmp99, i1 false
  br label %cleanup

sw.bb102:                                         ; preds = %entry
  %inc.i.i300 = add nsw i32 %1, 1
  store i32 %inc.i.i300, ptr @pos, align 4, !tbaa !9
  %51 = load i32, ptr @argc, align 4
  %cmp.not.i.not.i301 = icmp slt i32 %inc.i.i300, %51
  br i1 %cmp.not.i.not.i301, label %unary_advance.exit304, label %if.then.i.i302

if.then.i.i302:                                   ; preds = %sw.bb102
  tail call fastcc void @beyond()
  unreachable

unary_advance.exit304:                            ; preds = %sw.bb102
  %inc.i303 = add nsw i32 %1, 2
  store i32 %inc.i303, ptr @pos, align 4, !tbaa !9
  %52 = sext i32 %inc.i303 to i64
  %53 = getelementptr ptr, ptr %0, i64 %52
  %arrayidx105 = getelementptr ptr, ptr %53, i64 -1
  %54 = load ptr, ptr %arrayidx105, align 8, !tbaa !5
  %call106 = call i32 @stat(ptr noundef %54, ptr noundef nonnull %stat_buf) #13
  %cmp107 = icmp eq i32 %call106, 0
  %st_size = getelementptr inbounds %struct.stat, ptr %stat_buf, i64 0, i32 8
  %55 = load i64, ptr %st_size, align 8
  %cmp110 = icmp sgt i64 %55, 0
  %56 = select i1 %cmp107, i1 %cmp110, i1 false
  br label %cleanup

sw.bb113:                                         ; preds = %entry
  %inc.i.i305 = add nsw i32 %1, 1
  store i32 %inc.i.i305, ptr @pos, align 4, !tbaa !9
  %57 = load i32, ptr @argc, align 4
  %cmp.not.i.not.i306 = icmp slt i32 %inc.i.i305, %57
  br i1 %cmp.not.i.not.i306, label %unary_advance.exit309, label %if.then.i.i307

if.then.i.i307:                                   ; preds = %sw.bb113
  tail call fastcc void @beyond()
  unreachable

unary_advance.exit309:                            ; preds = %sw.bb113
  %inc.i308 = add nsw i32 %1, 2
  store i32 %inc.i308, ptr @pos, align 4, !tbaa !9
  %58 = sext i32 %inc.i308 to i64
  %59 = getelementptr ptr, ptr %0, i64 %58
  %arrayidx116 = getelementptr ptr, ptr %59, i64 -1
  %60 = load ptr, ptr %arrayidx116, align 8, !tbaa !5
  %call117 = call i32 @stat(ptr noundef %60, ptr noundef nonnull %stat_buf) #13
  %cmp118 = icmp eq i32 %call117, 0
  %st_mode121 = getelementptr inbounds %struct.stat, ptr %stat_buf, i64 0, i32 3
  %61 = load i32, ptr %st_mode121, align 8
  %and122 = and i32 %61, 61440
  %cmp123 = icmp eq i32 %and122, 49152
  %62 = select i1 %cmp118, i1 %cmp123, i1 false
  br label %cleanup

sw.bb126:                                         ; preds = %entry
  %inc.i.i310 = add nsw i32 %1, 1
  store i32 %inc.i.i310, ptr @pos, align 4, !tbaa !9
  %63 = load i32, ptr @argc, align 4
  %cmp.not.i.not.i311 = icmp slt i32 %inc.i.i310, %63
  br i1 %cmp.not.i.not.i311, label %unary_advance.exit314, label %if.then.i.i312

if.then.i.i312:                                   ; preds = %sw.bb126
  tail call fastcc void @beyond()
  unreachable

unary_advance.exit314:                            ; preds = %sw.bb126
  %inc.i313 = add nsw i32 %1, 2
  store i32 %inc.i313, ptr @pos, align 4, !tbaa !9
  %64 = sext i32 %inc.i313 to i64
  %65 = getelementptr ptr, ptr %0, i64 %64
  %arrayidx129 = getelementptr ptr, ptr %65, i64 -1
  %66 = load ptr, ptr %arrayidx129, align 8, !tbaa !5
  %call130 = call i32 @stat(ptr noundef %66, ptr noundef nonnull %stat_buf) #13
  %cmp131 = icmp eq i32 %call130, 0
  %st_mode134 = getelementptr inbounds %struct.stat, ptr %stat_buf, i64 0, i32 3
  %67 = load i32, ptr %st_mode134, align 8
  %and135 = and i32 %67, 61440
  %cmp136 = icmp eq i32 %and135, 8192
  %68 = select i1 %cmp131, i1 %cmp136, i1 false
  br label %cleanup

sw.bb139:                                         ; preds = %entry
  %inc.i.i315 = add nsw i32 %1, 1
  store i32 %inc.i.i315, ptr @pos, align 4, !tbaa !9
  %69 = load i32, ptr @argc, align 4
  %cmp.not.i.not.i316 = icmp slt i32 %inc.i.i315, %69
  br i1 %cmp.not.i.not.i316, label %unary_advance.exit319, label %if.then.i.i317

if.then.i.i317:                                   ; preds = %sw.bb139
  tail call fastcc void @beyond()
  unreachable

unary_advance.exit319:                            ; preds = %sw.bb139
  %inc.i318 = add nsw i32 %1, 2
  store i32 %inc.i318, ptr @pos, align 4, !tbaa !9
  %70 = sext i32 %inc.i318 to i64
  %71 = getelementptr ptr, ptr %0, i64 %70
  %arrayidx142 = getelementptr ptr, ptr %71, i64 -1
  %72 = load ptr, ptr %arrayidx142, align 8, !tbaa !5
  %call143 = call i32 @stat(ptr noundef %72, ptr noundef nonnull %stat_buf) #13
  %cmp144 = icmp eq i32 %call143, 0
  %st_mode147 = getelementptr inbounds %struct.stat, ptr %stat_buf, i64 0, i32 3
  %73 = load i32, ptr %st_mode147, align 8
  %and148 = and i32 %73, 61440
  %cmp149 = icmp eq i32 %and148, 24576
  %74 = select i1 %cmp144, i1 %cmp149, i1 false
  br label %cleanup

sw.bb152:                                         ; preds = %entry
  %inc.i.i320 = add nsw i32 %1, 1
  store i32 %inc.i.i320, ptr @pos, align 4, !tbaa !9
  %75 = load i32, ptr @argc, align 4
  %cmp.not.i.not.i321 = icmp slt i32 %inc.i.i320, %75
  br i1 %cmp.not.i.not.i321, label %unary_advance.exit324, label %if.then.i.i322

if.then.i.i322:                                   ; preds = %sw.bb152
  tail call fastcc void @beyond()
  unreachable

unary_advance.exit324:                            ; preds = %sw.bb152
  %inc.i323 = add nsw i32 %1, 2
  store i32 %inc.i323, ptr @pos, align 4, !tbaa !9
  %76 = sext i32 %inc.i323 to i64
  %77 = getelementptr ptr, ptr %0, i64 %76
  %arrayidx155 = getelementptr ptr, ptr %77, i64 -1
  %78 = load ptr, ptr %arrayidx155, align 8, !tbaa !5
  %call156 = call i32 @stat(ptr noundef %78, ptr noundef nonnull %stat_buf) #13
  %cmp157 = icmp eq i32 %call156, 0
  %st_mode160 = getelementptr inbounds %struct.stat, ptr %stat_buf, i64 0, i32 3
  %79 = load i32, ptr %st_mode160, align 8
  %and161 = and i32 %79, 61440
  %cmp162 = icmp eq i32 %and161, 4096
  %80 = select i1 %cmp157, i1 %cmp162, i1 false
  br label %cleanup

sw.bb165:                                         ; preds = %entry, %entry
  %inc.i.i325 = add nsw i32 %1, 1
  store i32 %inc.i.i325, ptr @pos, align 4, !tbaa !9
  %81 = load i32, ptr @argc, align 4
  %cmp.not.i.not.i326 = icmp slt i32 %inc.i.i325, %81
  br i1 %cmp.not.i.not.i326, label %unary_advance.exit329, label %if.then.i.i327

if.then.i.i327:                                   ; preds = %sw.bb165
  tail call fastcc void @beyond()
  unreachable

unary_advance.exit329:                            ; preds = %sw.bb165
  %inc.i328 = add nsw i32 %1, 2
  store i32 %inc.i328, ptr @pos, align 4, !tbaa !9
  %82 = sext i32 %inc.i328 to i64
  %83 = getelementptr ptr, ptr %0, i64 %82
  %arrayidx168 = getelementptr ptr, ptr %83, i64 -1
  %84 = load ptr, ptr %arrayidx168, align 8, !tbaa !5
  %call169 = call i32 @lstat(ptr noundef %84, ptr noundef nonnull %stat_buf) #13
  %cmp170 = icmp eq i32 %call169, 0
  %st_mode173 = getelementptr inbounds %struct.stat, ptr %stat_buf, i64 0, i32 3
  %85 = load i32, ptr %st_mode173, align 8
  %and174 = and i32 %85, 61440
  %cmp175 = icmp eq i32 %and174, 40960
  %86 = select i1 %cmp170, i1 %cmp175, i1 false
  br label %cleanup

sw.bb178:                                         ; preds = %entry
  %inc.i.i330 = add nsw i32 %1, 1
  store i32 %inc.i.i330, ptr @pos, align 4, !tbaa !9
  %87 = load i32, ptr @argc, align 4
  %cmp.not.i.not.i331 = icmp slt i32 %inc.i.i330, %87
  br i1 %cmp.not.i.not.i331, label %unary_advance.exit334, label %if.then.i.i332

if.then.i.i332:                                   ; preds = %sw.bb178
  tail call fastcc void @beyond()
  unreachable

unary_advance.exit334:                            ; preds = %sw.bb178
  %inc.i333 = add nsw i32 %1, 2
  store i32 %inc.i333, ptr @pos, align 4, !tbaa !9
  %88 = sext i32 %inc.i333 to i64
  %89 = getelementptr ptr, ptr %0, i64 %88
  %arrayidx181 = getelementptr ptr, ptr %89, i64 -1
  %90 = load ptr, ptr %arrayidx181, align 8, !tbaa !5
  %call182 = call i32 @stat(ptr noundef %90, ptr noundef nonnull %stat_buf) #13
  %cmp183 = icmp eq i32 %call182, 0
  %st_mode186 = getelementptr inbounds %struct.stat, ptr %stat_buf, i64 0, i32 3
  %91 = load i32, ptr %st_mode186, align 8
  %and187 = and i32 %91, 2048
  %tobool188 = icmp ne i32 %and187, 0
  %92 = select i1 %cmp183, i1 %tobool188, i1 false
  br label %cleanup

sw.bb190:                                         ; preds = %entry
  %inc.i.i335 = add nsw i32 %1, 1
  store i32 %inc.i.i335, ptr @pos, align 4, !tbaa !9
  %93 = load i32, ptr @argc, align 4
  %cmp.not.i.not.i336 = icmp slt i32 %inc.i.i335, %93
  br i1 %cmp.not.i.not.i336, label %unary_advance.exit339, label %if.then.i.i337

if.then.i.i337:                                   ; preds = %sw.bb190
  tail call fastcc void @beyond()
  unreachable

unary_advance.exit339:                            ; preds = %sw.bb190
  %inc.i338 = add nsw i32 %1, 2
  store i32 %inc.i338, ptr @pos, align 4, !tbaa !9
  %94 = sext i32 %inc.i338 to i64
  %95 = getelementptr ptr, ptr %0, i64 %94
  %arrayidx193 = getelementptr ptr, ptr %95, i64 -1
  %96 = load ptr, ptr %arrayidx193, align 8, !tbaa !5
  %call194 = call i32 @stat(ptr noundef %96, ptr noundef nonnull %stat_buf) #13
  %cmp195 = icmp eq i32 %call194, 0
  %st_mode198 = getelementptr inbounds %struct.stat, ptr %stat_buf, i64 0, i32 3
  %97 = load i32, ptr %st_mode198, align 8
  %and199 = and i32 %97, 1024
  %tobool200 = icmp ne i32 %and199, 0
  %98 = select i1 %cmp195, i1 %tobool200, i1 false
  br label %cleanup

sw.bb202:                                         ; preds = %entry
  %inc.i.i340 = add nsw i32 %1, 1
  store i32 %inc.i.i340, ptr @pos, align 4, !tbaa !9
  %99 = load i32, ptr @argc, align 4
  %cmp.not.i.not.i341 = icmp slt i32 %inc.i.i340, %99
  br i1 %cmp.not.i.not.i341, label %unary_advance.exit344, label %if.then.i.i342

if.then.i.i342:                                   ; preds = %sw.bb202
  tail call fastcc void @beyond()
  unreachable

unary_advance.exit344:                            ; preds = %sw.bb202
  %inc.i343 = add nsw i32 %1, 2
  store i32 %inc.i343, ptr @pos, align 4, !tbaa !9
  %100 = sext i32 %inc.i343 to i64
  %101 = getelementptr ptr, ptr %0, i64 %100
  %arrayidx205 = getelementptr ptr, ptr %101, i64 -1
  %102 = load ptr, ptr %arrayidx205, align 8, !tbaa !5
  %call206 = call i32 @stat(ptr noundef %102, ptr noundef nonnull %stat_buf) #13
  %cmp207 = icmp eq i32 %call206, 0
  %st_mode210 = getelementptr inbounds %struct.stat, ptr %stat_buf, i64 0, i32 3
  %103 = load i32, ptr %st_mode210, align 8
  %and211 = and i32 %103, 512
  %tobool212 = icmp ne i32 %and211, 0
  %104 = select i1 %cmp207, i1 %tobool212, i1 false
  br label %cleanup

sw.bb214:                                         ; preds = %entry
  %inc.i.i345 = add nsw i32 %1, 1
  store i32 %inc.i.i345, ptr @pos, align 4, !tbaa !9
  %105 = load i32, ptr @argc, align 4
  %cmp.not.i.not.i346 = icmp slt i32 %inc.i.i345, %105
  br i1 %cmp.not.i.not.i346, label %unary_advance.exit349, label %if.then.i.i347

if.then.i.i347:                                   ; preds = %sw.bb214
  tail call fastcc void @beyond()
  unreachable

unary_advance.exit349:                            ; preds = %sw.bb214
  %inc.i348 = add nsw i32 %1, 2
  store i32 %inc.i348, ptr @pos, align 4, !tbaa !9
  %106 = sext i32 %inc.i348 to i64
  %107 = getelementptr ptr, ptr %0, i64 %106
  %arrayidx217 = getelementptr ptr, ptr %107, i64 -1
  %108 = load ptr, ptr %arrayidx217, align 8, !tbaa !5
  %call218 = tail call fastcc ptr @find_int(ptr noundef %108)
  %call219 = tail call ptr @__errno_location() #18
  store i32 0, ptr %call219, align 4, !tbaa !9
  %call220 = tail call i64 @__isoc23_strtol(ptr noundef %call218, ptr noundef null, i32 noundef 10) #13
  %109 = load i32, ptr %call219, align 4, !tbaa !9
  %cmp222 = icmp ne i32 %109, 34
  %cmp225 = icmp sgt i64 %call220, -1
  %or.cond = select i1 %cmp222, i1 %cmp225, i1 false
  %cmp228 = icmp slt i64 %call220, 2147483648
  %or.cond251 = select i1 %or.cond, i1 %cmp228, i1 false
  br i1 %or.cond251, label %land.rhs230, label %cleanup

land.rhs230:                                      ; preds = %unary_advance.exit349
  %conv231 = trunc i64 %call220 to i32
  %call232 = tail call i32 @isatty(i32 noundef %conv231) #13
  %tobool233 = icmp ne i32 %call232, 0
  br label %cleanup

sw.bb235:                                         ; preds = %entry
  %inc.i.i350 = add nsw i32 %1, 1
  store i32 %inc.i.i350, ptr @pos, align 4, !tbaa !9
  %110 = load i32, ptr @argc, align 4
  %cmp.not.i.not.i351 = icmp slt i32 %inc.i.i350, %110
  br i1 %cmp.not.i.not.i351, label %unary_advance.exit354, label %if.then.i.i352

if.then.i.i352:                                   ; preds = %sw.bb235
  tail call fastcc void @beyond()
  unreachable

unary_advance.exit354:                            ; preds = %sw.bb235
  %inc.i353 = add nsw i32 %1, 2
  store i32 %inc.i353, ptr @pos, align 4, !tbaa !9
  %111 = sext i32 %inc.i353 to i64
  %112 = getelementptr ptr, ptr %0, i64 %111
  %arrayidx238 = getelementptr ptr, ptr %112, i64 -1
  %113 = load ptr, ptr %arrayidx238, align 8, !tbaa !5
  %114 = load i8, ptr %113, align 1, !tbaa !11
  %cmp241 = icmp ne i8 %114, 0
  br label %cleanup

sw.bb243:                                         ; preds = %entry
  %inc.i.i355 = add nsw i32 %1, 1
  store i32 %inc.i.i355, ptr @pos, align 4, !tbaa !9
  %115 = load i32, ptr @argc, align 4
  %cmp.not.i.not.i356 = icmp slt i32 %inc.i.i355, %115
  br i1 %cmp.not.i.not.i356, label %unary_advance.exit359, label %if.then.i.i357

if.then.i.i357:                                   ; preds = %sw.bb243
  tail call fastcc void @beyond()
  unreachable

unary_advance.exit359:                            ; preds = %sw.bb243
  %inc.i358 = add nsw i32 %1, 2
  store i32 %inc.i358, ptr @pos, align 4, !tbaa !9
  %116 = sext i32 %inc.i358 to i64
  %117 = getelementptr ptr, ptr %0, i64 %116
  %arrayidx246 = getelementptr ptr, ptr %117, i64 -1
  %118 = load ptr, ptr %arrayidx246, align 8, !tbaa !5
  %119 = load i8, ptr %118, align 1, !tbaa !11
  %cmp249 = icmp eq i8 %119, 0
  br label %cleanup

cleanup:                                          ; preds = %unary_advance.exit359, %unary_advance.exit354, %land.rhs230, %unary_advance.exit349, %unary_advance.exit344, %unary_advance.exit339, %unary_advance.exit334, %unary_advance.exit329, %unary_advance.exit324, %unary_advance.exit319, %unary_advance.exit314, %unary_advance.exit309, %unary_advance.exit304, %unary_advance.exit299, %unary_advance.exit294, %land.rhs74, %land.lhs.true71, %unary_advance.exit289, %land.rhs, %land.lhs.true, %unary_advance.exit284, %if.end, %unary_advance.exit275, %unary_advance.exit270, %unary_advance.exit265, %unary_advance.exit260, %unary_advance.exit
  %retval.0 = phi i1 [ %cmp249, %unary_advance.exit359 ], [ %cmp241, %unary_advance.exit354 ], [ %104, %unary_advance.exit344 ], [ %98, %unary_advance.exit339 ], [ %92, %unary_advance.exit334 ], [ %86, %unary_advance.exit329 ], [ %80, %unary_advance.exit324 ], [ %74, %unary_advance.exit319 ], [ %68, %unary_advance.exit314 ], [ %62, %unary_advance.exit309 ], [ %56, %unary_advance.exit304 ], [ %50, %unary_advance.exit299 ], [ %44, %unary_advance.exit294 ], [ %cmp40, %if.end ], [ %cmp28, %unary_advance.exit270 ], [ %cmp21, %unary_advance.exit265 ], [ %cmp14, %unary_advance.exit260 ], [ %cmp, %unary_advance.exit ], [ false, %unary_advance.exit275 ], [ false, %unary_advance.exit284 ], [ false, %land.lhs.true ], [ %cmp56, %land.rhs ], [ false, %unary_advance.exit289 ], [ false, %land.lhs.true71 ], [ %cmp75, %land.rhs74 ], [ false, %unary_advance.exit349 ], [ %tobool233, %land.rhs230 ]
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %stat_buf) #13
  ret i1 %retval.0
}

; Function Attrs: noreturn nounwind uwtable
define internal fastcc void @beyond() unnamed_addr #0 {
entry:
  %call = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.53, i32 noundef 5) #13
  %0 = load ptr, ptr @argv, align 8, !tbaa !5
  %1 = load i32, ptr @argc, align 4, !tbaa !9
  %2 = sext i32 %1 to i64
  %3 = getelementptr ptr, ptr %0, i64 %2
  %arrayidx = getelementptr ptr, ptr %3, i64 -1
  %4 = load ptr, ptr %arrayidx, align 8, !tbaa !5
  %call1 = tail call ptr @quote(ptr noundef %4) #13
  tail call void (ptr, ...) @test_syntax_error(ptr noundef %call, ptr noundef %call1) #16
  unreachable
}

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i1 @three_arguments() unnamed_addr #6 {
entry:
  %0 = load ptr, ptr @argv, align 8, !tbaa !5
  %1 = load i32, ptr @pos, align 4, !tbaa !9
  %2 = sext i32 %1 to i64
  %3 = getelementptr ptr, ptr %0, i64 %2
  %arrayidx = getelementptr ptr, ptr %3, i64 1
  %4 = load ptr, ptr %arrayidx, align 8, !tbaa !5
  %call = tail call fastcc zeroext i1 @binop(ptr noundef %4)
  br i1 %call, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call1 = tail call fastcc zeroext i1 @binary_operator(i1 noundef zeroext false)
  br label %if.end55

if.else:                                          ; preds = %entry
  %5 = load ptr, ptr %3, align 8, !tbaa !5
  %call4 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(2) @.str.46) #14
  %cmp = icmp eq i32 %call4, 0
  br i1 %cmp, label %if.then5, label %if.else8

if.then5:                                         ; preds = %if.else
  %inc.i = add nsw i32 %1, 1
  store i32 %inc.i, ptr @pos, align 4, !tbaa !9
  %6 = load i32, ptr @argc, align 4
  %cmp.not.i.not = icmp slt i32 %inc.i, %6
  br i1 %cmp.not.i.not, label %advance.exit, label %if.then.i

if.then.i:                                        ; preds = %if.then5
  tail call fastcc void @beyond()
  unreachable

advance.exit:                                     ; preds = %if.then5
  %call.i = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %4, ptr noundef nonnull dereferenceable(2) @.str.46) #14
  %cmp.i = icmp eq i32 %call.i, 0
  br i1 %cmp.i, label %if.then.i56, label %if.else.i

if.then.i56:                                      ; preds = %advance.exit
  %idxprom.i = sext i32 %inc.i to i64
  %arrayidx.i = getelementptr ptr, ptr %0, i64 %idxprom.i
  %inc.i25.i = add nsw i32 %1, 3
  store i32 %inc.i25.i, ptr @pos, align 4, !tbaa !9
  %arrayidx.i.i = getelementptr ptr, ptr %arrayidx.i, i64 1
  %7 = load ptr, ptr %arrayidx.i.i, align 8, !tbaa !5
  %8 = load i8, ptr %7, align 1, !tbaa !11
  %cmp.i.not.i = icmp eq i8 %8, 0
  br label %two_arguments.exit

if.else.i:                                        ; preds = %advance.exit
  %9 = load i8, ptr %4, align 1, !tbaa !11
  %cmp5.i = icmp eq i8 %9, 45
  br i1 %cmp5.i, label %land.lhs.true.i, label %if.else23.i

land.lhs.true.i:                                  ; preds = %if.else.i
  %arrayidx9.i = getelementptr inbounds i8, ptr %4, i64 1
  %10 = load i8, ptr %arrayidx9.i, align 1, !tbaa !11
  %cmp11.not.i = icmp eq i8 %10, 0
  br i1 %cmp11.not.i, label %if.else23.i, label %land.lhs.true13.i

land.lhs.true13.i:                                ; preds = %land.lhs.true.i
  %arrayidx16.i = getelementptr inbounds i8, ptr %4, i64 2
  %11 = load i8, ptr %arrayidx16.i, align 1, !tbaa !11
  %cmp18.i = icmp eq i8 %11, 0
  br i1 %cmp18.i, label %if.then20.i, label %if.else23.i

if.then20.i:                                      ; preds = %land.lhs.true13.i
  %call21.i = tail call fastcc zeroext i1 @unary_operator()
  br label %two_arguments.exit

if.else23.i:                                      ; preds = %land.lhs.true13.i, %land.lhs.true.i, %if.else.i
  tail call fastcc void @beyond() #16
  unreachable

two_arguments.exit:                               ; preds = %if.then20.i, %if.then.i56
  %value.0.in.i = phi i1 [ %cmp.i.not.i, %if.then.i56 ], [ %call21.i, %if.then20.i ]
  %lnot = xor i1 %value.0.in.i, true
  br label %if.end55

if.else8:                                         ; preds = %if.else
  %call11 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(2) @.str.47) #14
  %cmp12 = icmp eq i32 %call11, 0
  br i1 %cmp12, label %land.lhs.true, label %if.else21

land.lhs.true:                                    ; preds = %if.else8
  %arrayidx15 = getelementptr ptr, ptr %3, i64 2
  %12 = load ptr, ptr %arrayidx15, align 8, !tbaa !5
  %call16 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %12, ptr noundef nonnull dereferenceable(2) @.str.48) #14
  %cmp17 = icmp eq i32 %call16, 0
  br i1 %cmp17, label %if.then18, label %if.else21

if.then18:                                        ; preds = %land.lhs.true
  %13 = load i8, ptr %4, align 1, !tbaa !11
  %cmp.i62 = icmp ne i8 %13, 0
  %inc.i63 = add nsw i32 %1, 3
  store i32 %inc.i63, ptr @pos, align 4, !tbaa !9
  br label %if.end55

if.else21:                                        ; preds = %land.lhs.true, %if.else8
  %call25 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %4, ptr noundef nonnull dereferenceable(3) @.str.54) #14
  %cmp26 = icmp eq i32 %call25, 0
  br i1 %cmp26, label %if.then44, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else21
  %call30 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %4, ptr noundef nonnull dereferenceable(3) @.str.55) #14
  %cmp31 = icmp eq i32 %call30, 0
  br i1 %cmp31, label %if.then44, label %lor.lhs.false32

lor.lhs.false32:                                  ; preds = %lor.lhs.false
  %call36 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %4, ptr noundef nonnull dereferenceable(2) @.str.56) #14
  %cmp37 = icmp eq i32 %call36, 0
  br i1 %cmp37, label %if.then44, label %lor.lhs.false38

lor.lhs.false38:                                  ; preds = %lor.lhs.false32
  %call42 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %4, ptr noundef nonnull dereferenceable(2) @.str.57) #14
  %cmp43 = icmp eq i32 %call42, 0
  br i1 %cmp43, label %if.then44, label %if.else47

if.then44:                                        ; preds = %lor.lhs.false38, %lor.lhs.false32, %lor.lhs.false, %if.else21
  %14 = load i32, ptr @argc, align 4, !tbaa !9
  %cmp.not.i65 = icmp slt i32 %1, %14
  br i1 %cmp.not.i65, label %while.cond.i.preheader, label %if.then.i66

while.cond.i.preheader:                           ; preds = %if.then44
  %call.i.i8490 = tail call fastcc zeroext i1 @term()
  %15 = load i32, ptr @pos, align 4, !tbaa !9
  %16 = load i32, ptr @argc, align 4
  %cmp.i.i8591 = icmp slt i32 %15, %16
  br i1 %cmp.i.i8591, label %land.lhs.true.i.i.lr.ph, label %and.exit.i

if.then.i66:                                      ; preds = %if.then44
  tail call fastcc void @beyond() #16
  unreachable

land.lhs.true.i.i.lr.ph:                          ; preds = %if.end.i, %while.cond.i.preheader
  %17 = phi i32 [ %23, %if.end.i ], [ %15, %while.cond.i.preheader ]
  %call.i.i8493 = phi i1 [ %call.i.i84, %if.end.i ], [ %call.i.i8490, %while.cond.i.preheader ]
  %value.0.i92 = phi i1 [ %or9.i78, %if.end.i ], [ false, %while.cond.i.preheader ]
  br label %land.lhs.true.i.i

land.lhs.true.i.i:                                ; preds = %if.end.i.i, %land.lhs.true.i.i.lr.ph
  %18 = phi i32 [ %17, %land.lhs.true.i.i.lr.ph ], [ %21, %if.end.i.i ]
  %and9.i.i86 = phi i1 [ %call.i.i8493, %land.lhs.true.i.i.lr.ph ], [ %and9.i.i, %if.end.i.i ]
  %19 = load ptr, ptr @argv, align 8, !tbaa !5
  %idxprom.i.i = sext i32 %18 to i64
  %arrayidx.i.i74 = getelementptr inbounds ptr, ptr %19, i64 %idxprom.i.i
  %20 = load ptr, ptr %arrayidx.i.i74, align 8, !tbaa !5
  %call4.i.i = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %20, ptr noundef nonnull dereferenceable(3) @.str.54) #14
  %cmp5.i.i = icmp eq i32 %call4.i.i, 0
  br i1 %cmp5.i.i, label %if.end.i.i, label %land.lhs.true.i70

if.end.i.i:                                       ; preds = %land.lhs.true.i.i
  %inc.i75 = add nsw i32 %18, 1
  store i32 %inc.i75, ptr @pos, align 4, !tbaa !9
  %call.i.i = tail call fastcc zeroext i1 @term()
  %and9.i.i = and i1 %and9.i.i86, %call.i.i
  %21 = load i32, ptr @pos, align 4, !tbaa !9
  %22 = load i32, ptr @argc, align 4
  %cmp.i.i = icmp slt i32 %21, %22
  br i1 %cmp.i.i, label %land.lhs.true.i.i, label %and.exit.i

and.exit.i:                                       ; preds = %if.end.i, %if.end.i.i, %while.cond.i.preheader
  %value.0.i.lcssa = phi i1 [ false, %while.cond.i.preheader ], [ %value.0.i92, %if.end.i.i ], [ %or9.i78, %if.end.i ]
  %and9.i.i.lcssa = phi i1 [ %call.i.i8490, %while.cond.i.preheader ], [ %and9.i.i, %if.end.i.i ], [ %call.i.i84, %if.end.i ]
  %or9.i = or i1 %value.0.i.lcssa, %and9.i.i.lcssa
  br label %if.end55

land.lhs.true.i70:                                ; preds = %land.lhs.true.i.i
  %or9.i78 = or i1 %value.0.i92, %and9.i.i86
  %call4.i = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %20, ptr noundef nonnull dereferenceable(3) @.str.55) #14
  %cmp5.i73 = icmp eq i32 %call4.i, 0
  br i1 %cmp5.i73, label %if.end.i, label %if.end55

if.end.i:                                         ; preds = %land.lhs.true.i70
  %inc.i.i = add nsw i32 %18, 1
  store i32 %inc.i.i, ptr @pos, align 4, !tbaa !9
  %call.i.i84 = tail call fastcc zeroext i1 @term()
  %23 = load i32, ptr @pos, align 4, !tbaa !9
  %24 = load i32, ptr @argc, align 4
  %cmp.i.i85 = icmp slt i32 %23, %24
  br i1 %cmp.i.i85, label %land.lhs.true.i.i.lr.ph, label %and.exit.i

if.else47:                                        ; preds = %lor.lhs.false38
  %call48 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.58, i32 noundef 5) #13
  %25 = load ptr, ptr @argv, align 8, !tbaa !5
  %26 = load i32, ptr @pos, align 4, !tbaa !9
  %27 = sext i32 %26 to i64
  %28 = getelementptr ptr, ptr %25, i64 %27
  %arrayidx51 = getelementptr ptr, ptr %28, i64 1
  %29 = load ptr, ptr %arrayidx51, align 8, !tbaa !5
  %call52 = tail call ptr @quote(ptr noundef %29) #13
  tail call void (ptr, ...) @test_syntax_error(ptr noundef %call48, ptr noundef %call52) #16
  unreachable

if.end55:                                         ; preds = %land.lhs.true.i70, %and.exit.i, %if.then18, %two_arguments.exit, %if.then
  %value.0.in = phi i1 [ %call1, %if.then ], [ %lnot, %two_arguments.exit ], [ %cmp.i62, %if.then18 ], [ %or9.i, %and.exit.i ], [ %or9.i78, %land.lhs.true.i70 ]
  ret i1 %value.0.in
}

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i1 @two_arguments() unnamed_addr #6 {
entry:
  %0 = load ptr, ptr @argv, align 8, !tbaa !5
  %1 = load i32, ptr @pos, align 4, !tbaa !9
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr ptr, ptr %0, i64 %idxprom
  %2 = load ptr, ptr %arrayidx, align 8, !tbaa !5
  %call = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %2, ptr noundef nonnull dereferenceable(2) @.str.46) #14
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %inc.i25 = add nsw i32 %1, 2
  store i32 %inc.i25, ptr @pos, align 4, !tbaa !9
  %arrayidx.i = getelementptr ptr, ptr %arrayidx, i64 1
  %3 = load ptr, ptr %arrayidx.i, align 8, !tbaa !5
  %4 = load i8, ptr %3, align 1, !tbaa !11
  %cmp.i.not = icmp eq i8 %4, 0
  br label %if.end24

if.else:                                          ; preds = %entry
  %5 = load i8, ptr %2, align 1, !tbaa !11
  %cmp5 = icmp eq i8 %5, 45
  br i1 %cmp5, label %land.lhs.true, label %if.else23

land.lhs.true:                                    ; preds = %if.else
  %arrayidx9 = getelementptr inbounds i8, ptr %2, i64 1
  %6 = load i8, ptr %arrayidx9, align 1, !tbaa !11
  %cmp11.not = icmp eq i8 %6, 0
  br i1 %cmp11.not, label %if.else23, label %land.lhs.true13

land.lhs.true13:                                  ; preds = %land.lhs.true
  %arrayidx16 = getelementptr inbounds i8, ptr %2, i64 2
  %7 = load i8, ptr %arrayidx16, align 1, !tbaa !11
  %cmp18 = icmp eq i8 %7, 0
  br i1 %cmp18, label %if.then20, label %if.else23

if.then20:                                        ; preds = %land.lhs.true13
  %call21 = tail call fastcc zeroext i1 @unary_operator()
  br label %if.end24

if.else23:                                        ; preds = %land.lhs.true13, %land.lhs.true, %if.else
  tail call fastcc void @beyond() #16
  unreachable

if.end24:                                         ; preds = %if.then20, %if.then
  %value.0.in = phi i1 [ %cmp.i.not, %if.then ], [ %call21, %if.then20 ]
  ret i1 %value.0.in
}

; Function Attrs: noreturn nounwind
declare void @__assert_fail(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i1 @term() unnamed_addr #6 {
entry:
  %0 = load i32, ptr @argc, align 4
  %pos.promoted = load i32, ptr @pos, align 4, !tbaa !9
  %cmp167 = icmp slt i32 %pos.promoted, %0
  br i1 %cmp167, label %land.lhs.true.lr.ph, label %if.then

land.lhs.true.lr.ph:                              ; preds = %entry
  %1 = load ptr, ptr @argv, align 8, !tbaa !5
  %2 = sext i32 %pos.promoted to i64
  %3 = add nsw i32 %0, -1
  %wide.trip.count = sext i32 %3 to i64
  %4 = add i32 %pos.promoted, 2
  %arrayidx196 = getelementptr inbounds ptr, ptr %1, i64 %2
  %5 = load ptr, ptr %arrayidx196, align 8, !tbaa !5
  %6 = load i8, ptr %5, align 1, !tbaa !11
  %cmp2197 = icmp eq i8 %6, 33
  br i1 %cmp2197, label %land.rhs, label %if.end

land.rhs:                                         ; preds = %advance.exit, %land.lhs.true.lr.ph
  %7 = phi ptr [ %10, %advance.exit ], [ %5, %land.lhs.true.lr.ph ]
  %negated.0169200 = phi i1 [ %lnot, %advance.exit ], [ false, %land.lhs.true.lr.ph ]
  %indvars.iv199 = phi i64 [ %indvars.iv.next, %advance.exit ], [ %2, %land.lhs.true.lr.ph ]
  %indvars.iv177198 = phi i32 [ %indvars.iv.next178, %advance.exit ], [ %4, %land.lhs.true.lr.ph ]
  %arrayidx6 = getelementptr inbounds i8, ptr %7, i64 1
  %8 = load i8, ptr %arrayidx6, align 1, !tbaa !11
  %cmp8 = icmp eq i8 %8, 0
  br i1 %cmp8, label %while.body, label %if.end

while.body:                                       ; preds = %land.rhs
  %indvars.iv.next = add nsw i64 %indvars.iv199, 1
  %9 = trunc i64 %indvars.iv.next to i32
  store i32 %9, ptr @pos, align 4, !tbaa !9
  %exitcond.not = icmp eq i64 %indvars.iv199, %wide.trip.count
  br i1 %exitcond.not, label %if.then.i, label %advance.exit

if.then.i:                                        ; preds = %while.body
  tail call fastcc void @beyond()
  unreachable

advance.exit:                                     ; preds = %while.body
  %lnot = xor i1 %negated.0169200, true
  %indvars.iv.next178 = add i32 %indvars.iv177198, 1
  %arrayidx = getelementptr inbounds ptr, ptr %1, i64 %indvars.iv.next
  %10 = load ptr, ptr %arrayidx, align 8, !tbaa !5
  %11 = load i8, ptr %10, align 1, !tbaa !11
  %cmp2 = icmp eq i8 %11, 33
  br i1 %cmp2, label %land.rhs, label %if.end, !llvm.loop !21

if.then:                                          ; preds = %entry
  tail call fastcc void @beyond() #16
  unreachable

if.end:                                           ; preds = %advance.exit, %land.rhs, %land.lhs.true.lr.ph
  %indvars.iv177.lcssa = phi i32 [ %4, %land.lhs.true.lr.ph ], [ %indvars.iv177198, %land.rhs ], [ %indvars.iv.next178, %advance.exit ]
  %indvars.iv.lcssa = phi i64 [ %2, %land.lhs.true.lr.ph ], [ %indvars.iv199, %land.rhs ], [ %indvars.iv.next, %advance.exit ]
  %negated.0169.lcssa = phi i1 [ false, %land.lhs.true.lr.ph ], [ %negated.0169200, %land.rhs ], [ %lnot, %advance.exit ]
  %12 = trunc i64 %indvars.iv.lcssa to i32
  %sext = shl i64 %indvars.iv.lcssa, 32
  %idxprom12 = ashr exact i64 %sext, 32
  %arrayidx13 = getelementptr inbounds ptr, ptr %1, i64 %idxprom12
  %13 = load ptr, ptr %arrayidx13, align 8, !tbaa !5
  %14 = load i8, ptr %13, align 1, !tbaa !11
  %cmp16 = icmp eq i8 %14, 40
  br i1 %cmp16, label %land.lhs.true18, label %if.else68

land.lhs.true18:                                  ; preds = %if.end
  %arrayidx21 = getelementptr inbounds i8, ptr %13, i64 1
  %15 = load i8, ptr %arrayidx21, align 1, !tbaa !11
  %cmp23 = icmp eq i8 %15, 0
  br i1 %cmp23, label %if.then25, label %if.else68

if.then25:                                        ; preds = %land.lhs.true18
  %inc.i149 = add nsw i32 %12, 1
  store i32 %inc.i149, ptr @pos, align 4, !tbaa !9
  %cmp.not.i150.not = icmp slt i32 %inc.i149, %0
  br i1 %cmp.not.i150.not, label %for.cond.preheader, label %if.then.i151

for.cond.preheader:                               ; preds = %if.then25
  %add170 = add nsw i32 %12, 2
  %cmp26171 = icmp slt i32 %add170, %0
  br i1 %cmp26171, label %land.rhs28.preheader, label %for.end

land.rhs28.preheader:                             ; preds = %for.cond.preheader
  %16 = sext i32 %indvars.iv177.lcssa to i64
  %17 = sext i32 %inc.i149 to i64
  %18 = sext i32 %0 to i64
  %arrayidx31 = getelementptr inbounds ptr, ptr %1, i64 %16
  %19 = load ptr, ptr %arrayidx31, align 8, !tbaa !5
  %call = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %19, ptr noundef nonnull dereferenceable(2) @.str.48) #14
  %cmp32.not = icmp eq i32 %call, 0
  br i1 %cmp32.not, label %for.end, label %for.body

if.then.i151:                                     ; preds = %if.then25
  tail call fastcc void @beyond()
  unreachable

for.body:                                         ; preds = %land.rhs28.preheader
  %20 = add nsw i64 %17, 2
  %cmp26 = icmp slt i64 %20, %18
  br i1 %cmp26, label %land.rhs28.1, label %for.end, !llvm.loop !23

land.rhs28.1:                                     ; preds = %for.body
  %21 = getelementptr ptr, ptr %1, i64 %16
  %arrayidx31.1 = getelementptr ptr, ptr %21, i64 1
  %22 = load ptr, ptr %arrayidx31.1, align 8, !tbaa !5
  %call.1 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %22, ptr noundef nonnull dereferenceable(2) @.str.48) #14
  %cmp32.not.1 = icmp eq i32 %call.1, 0
  br i1 %cmp32.not.1, label %for.end, label %for.body.1

for.body.1:                                       ; preds = %land.rhs28.1
  %23 = add nsw i64 %17, 3
  %cmp26.1 = icmp slt i64 %23, %18
  br i1 %cmp26.1, label %land.rhs28.2, label %for.end, !llvm.loop !23

land.rhs28.2:                                     ; preds = %for.body.1
  %24 = getelementptr ptr, ptr %1, i64 %16
  %arrayidx31.2 = getelementptr ptr, ptr %24, i64 2
  %25 = load ptr, ptr %arrayidx31.2, align 8, !tbaa !5
  %call.2 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %25, ptr noundef nonnull dereferenceable(2) @.str.48) #14
  %cmp32.not.2 = icmp eq i32 %call.2, 0
  br i1 %cmp32.not.2, label %for.end, label %for.body.2

for.body.2:                                       ; preds = %land.rhs28.2
  %26 = add nsw i64 %17, 4
  %cmp26.2 = icmp slt i64 %26, %18
  br i1 %cmp26.2, label %land.rhs28.3, label %for.end, !llvm.loop !23

land.rhs28.3:                                     ; preds = %for.body.2
  %27 = getelementptr ptr, ptr %1, i64 %16
  %arrayidx31.3 = getelementptr ptr, ptr %27, i64 3
  %28 = load ptr, ptr %arrayidx31.3, align 8, !tbaa !5
  %call.3 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %28, ptr noundef nonnull dereferenceable(2) @.str.48) #14
  %cmp32.not.3 = icmp eq i32 %call.3, 0
  %sub = sub nsw i32 %0, %inc.i149
  %spec.select = select i1 %cmp32.not.3, i32 4, i32 %sub
  br label %for.end

for.end:                                          ; preds = %land.rhs28.3, %for.body.2, %land.rhs28.2, %for.body.1, %land.rhs28.1, %for.body, %land.rhs28.preheader, %for.cond.preheader
  %nargs.1 = phi i32 [ 1, %for.cond.preheader ], [ 2, %for.body ], [ 1, %land.rhs28.preheader ], [ 2, %land.rhs28.1 ], [ 3, %for.body.1 ], [ 3, %land.rhs28.2 ], [ 4, %for.body.2 ], [ %spec.select, %land.rhs28.3 ]
  %call40 = tail call fastcc zeroext i1 @posixtest(i32 noundef %nargs.1)
  %29 = load ptr, ptr @argv, align 8, !tbaa !5
  %30 = load i32, ptr @pos, align 4, !tbaa !9
  %idxprom42 = sext i32 %30 to i64
  %arrayidx43 = getelementptr inbounds ptr, ptr %29, i64 %idxprom42
  %31 = load ptr, ptr %arrayidx43, align 8, !tbaa !5
  %cmp44 = icmp eq ptr %31, null
  br i1 %cmp44, label %if.then46, label %if.else

if.then46:                                        ; preds = %for.end
  %call47 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.77, i32 noundef 5) #13
  %call48 = tail call ptr @quote(ptr noundef nonnull @.str.48) #13
  tail call void (ptr, ...) @test_syntax_error(ptr noundef %call47, ptr noundef %call48) #16
  unreachable

if.else:                                          ; preds = %for.end
  %32 = load i8, ptr %31, align 1, !tbaa !11
  %cmp53.not = icmp eq i8 %32, 41
  br i1 %cmp53.not, label %lor.lhs.false, label %if.then60

lor.lhs.false:                                    ; preds = %if.else
  %arrayidx57 = getelementptr inbounds i8, ptr %31, i64 1
  %33 = load i8, ptr %arrayidx57, align 1, !tbaa !11
  %tobool59.not = icmp eq i8 %33, 0
  br i1 %tobool59.not, label %if.end67, label %if.then60

if.then60:                                        ; preds = %lor.lhs.false, %if.else
  %call61 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.78, i32 noundef 5) #13
  %call62 = tail call ptr @quote_n(i32 noundef 0, ptr noundef nonnull @.str.48) #13
  %34 = load ptr, ptr @argv, align 8, !tbaa !5
  %35 = load i32, ptr @pos, align 4, !tbaa !9
  %idxprom63 = sext i32 %35 to i64
  %arrayidx64 = getelementptr inbounds ptr, ptr %34, i64 %idxprom63
  %36 = load ptr, ptr %arrayidx64, align 8, !tbaa !5
  %call65 = tail call ptr @quote_n(i32 noundef 1, ptr noundef %36) #13
  tail call void (ptr, ...) @test_syntax_error(ptr noundef %call61, ptr noundef %call62, ptr noundef %call65) #16
  unreachable

if.end67:                                         ; preds = %lor.lhs.false
  %inc.i153 = add nsw i32 %30, 1
  store i32 %inc.i153, ptr @pos, align 4, !tbaa !9
  br label %if.end134

if.else68:                                        ; preds = %land.lhs.true18, %if.end
  %sub69 = sub nsw i32 %0, %12
  %cmp70 = icmp sgt i32 %sub69, 3
  br i1 %cmp70, label %land.lhs.true72, label %if.else87

land.lhs.true72:                                  ; preds = %if.else68
  %call75 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %13, ptr noundef nonnull dereferenceable(3) @.str.71) #14
  %cmp76 = icmp eq i32 %call75, 0
  br i1 %cmp76, label %land.lhs.true78, label %land.lhs.true91

land.lhs.true78:                                  ; preds = %land.lhs.true72
  %arrayidx81 = getelementptr ptr, ptr %arrayidx13, i64 2
  %37 = load ptr, ptr %arrayidx81, align 8, !tbaa !5
  %call82 = tail call fastcc zeroext i1 @binop(ptr noundef %37)
  br i1 %call82, label %if.then84, label %land.lhs.true91

if.then84:                                        ; preds = %land.lhs.true78
  %call85 = tail call fastcc zeroext i1 @binary_operator(i1 noundef zeroext true)
  br label %if.end134

if.else87:                                        ; preds = %if.else68
  %cmp89 = icmp eq i32 %sub69, 3
  br i1 %cmp89, label %land.lhs.true91, label %if.else100

land.lhs.true91:                                  ; preds = %if.else87, %land.lhs.true78, %land.lhs.true72
  %arrayidx94 = getelementptr ptr, ptr %arrayidx13, i64 1
  %38 = load ptr, ptr %arrayidx94, align 8, !tbaa !5
  %call95 = tail call fastcc zeroext i1 @binop(ptr noundef %38)
  br i1 %call95, label %if.then97, label %if.else100

if.then97:                                        ; preds = %land.lhs.true91
  %call98 = tail call fastcc zeroext i1 @binary_operator(i1 noundef zeroext false)
  br label %if.end134

if.else100:                                       ; preds = %land.lhs.true91, %if.else87
  %cmp105 = icmp eq i8 %14, 45
  br i1 %cmp105, label %land.lhs.true107, label %if.else123

land.lhs.true107:                                 ; preds = %if.else100
  %arrayidx110 = getelementptr inbounds i8, ptr %13, i64 1
  %39 = load i8, ptr %arrayidx110, align 1, !tbaa !11
  %tobool112.not = icmp eq i8 %39, 0
  br i1 %tobool112.not, label %if.else123, label %land.lhs.true113

land.lhs.true113:                                 ; preds = %land.lhs.true107
  %arrayidx116 = getelementptr inbounds i8, ptr %13, i64 2
  %40 = load i8, ptr %arrayidx116, align 1, !tbaa !11
  %cmp118 = icmp eq i8 %40, 0
  br i1 %cmp118, label %if.then120, label %if.else123

if.then120:                                       ; preds = %land.lhs.true113
  %call121 = tail call fastcc zeroext i1 @unary_operator()
  br label %if.end134

if.else123:                                       ; preds = %land.lhs.true113, %land.lhs.true107, %if.else100
  %cmp128 = icmp ne i8 %14, 0
  %inc.i155 = add nsw i32 %12, 1
  store i32 %inc.i155, ptr @pos, align 4, !tbaa !9
  br label %if.end134

if.end134:                                        ; preds = %if.else123, %if.then120, %if.then97, %if.then84, %if.end67
  %value.0.in = phi i1 [ %call40, %if.end67 ], [ %call85, %if.then84 ], [ %call98, %if.then97 ], [ %call121, %if.then120 ], [ %cmp128, %if.else123 ]
  %xor148 = xor i1 %negated.0169.lcssa, %value.0.in
  ret i1 %xor148
}

declare ptr @quote_n(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i1 @binop(ptr nocapture noundef readonly %s) unnamed_addr #7 {
entry:
  %call = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %s, ptr noundef nonnull dereferenceable(2) @.str.59) #14
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %lor.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %call1 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %s, ptr noundef nonnull dereferenceable(3) @.str.60) #14
  %cmp2 = icmp eq i32 %call1, 0
  br i1 %cmp2, label %lor.end, label %lor.lhs.false3

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %call4 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %s, ptr noundef nonnull dereferenceable(3) @.str.61) #14
  %cmp5 = icmp eq i32 %call4, 0
  br i1 %cmp5, label %lor.end, label %lor.lhs.false6

lor.lhs.false6:                                   ; preds = %lor.lhs.false3
  %call7 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %s, ptr noundef nonnull dereferenceable(4) @.str.62) #14
  %cmp8 = icmp eq i32 %call7, 0
  br i1 %cmp8, label %lor.end, label %lor.lhs.false9

lor.lhs.false9:                                   ; preds = %lor.lhs.false6
  %call10 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %s, ptr noundef nonnull dereferenceable(2) @.str.56) #14
  %cmp11 = icmp eq i32 %call10, 0
  br i1 %cmp11, label %lor.end, label %lor.lhs.false12

lor.lhs.false12:                                  ; preds = %lor.lhs.false9
  %call13 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %s, ptr noundef nonnull dereferenceable(2) @.str.57) #14
  %cmp14 = icmp eq i32 %call13, 0
  br i1 %cmp14, label %lor.end, label %lor.lhs.false15

lor.lhs.false15:                                  ; preds = %lor.lhs.false12
  %call16 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %s, ptr noundef nonnull dereferenceable(4) @.str.63) #14
  %cmp17 = icmp eq i32 %call16, 0
  br i1 %cmp17, label %lor.end, label %lor.lhs.false18

lor.lhs.false18:                                  ; preds = %lor.lhs.false15
  %call19 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %s, ptr noundef nonnull dereferenceable(4) @.str.64) #14
  %cmp20 = icmp eq i32 %call19, 0
  br i1 %cmp20, label %lor.end, label %lor.lhs.false21

lor.lhs.false21:                                  ; preds = %lor.lhs.false18
  %call22 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %s, ptr noundef nonnull dereferenceable(4) @.str.65) #14
  %cmp23 = icmp eq i32 %call22, 0
  br i1 %cmp23, label %lor.end, label %lor.lhs.false24

lor.lhs.false24:                                  ; preds = %lor.lhs.false21
  %call25 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %s, ptr noundef nonnull dereferenceable(4) @.str.66) #14
  %cmp26 = icmp eq i32 %call25, 0
  br i1 %cmp26, label %lor.end, label %lor.lhs.false27

lor.lhs.false27:                                  ; preds = %lor.lhs.false24
  %call28 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %s, ptr noundef nonnull dereferenceable(4) @.str.67) #14
  %cmp29 = icmp eq i32 %call28, 0
  br i1 %cmp29, label %lor.end, label %lor.lhs.false30

lor.lhs.false30:                                  ; preds = %lor.lhs.false27
  %call31 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %s, ptr noundef nonnull dereferenceable(4) @.str.68) #14
  %cmp32 = icmp eq i32 %call31, 0
  br i1 %cmp32, label %lor.end, label %lor.lhs.false33

lor.lhs.false33:                                  ; preds = %lor.lhs.false30
  %call34 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %s, ptr noundef nonnull dereferenceable(4) @.str.69) #14
  %cmp35 = icmp eq i32 %call34, 0
  br i1 %cmp35, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %lor.lhs.false33
  %call36 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %s, ptr noundef nonnull dereferenceable(4) @.str.70) #14
  %cmp37 = icmp eq i32 %call36, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %lor.lhs.false33, %lor.lhs.false30, %lor.lhs.false27, %lor.lhs.false24, %lor.lhs.false21, %lor.lhs.false18, %lor.lhs.false15, %lor.lhs.false12, %lor.lhs.false9, %lor.lhs.false6, %lor.lhs.false3, %lor.lhs.false, %entry
  %0 = phi i1 [ true, %lor.lhs.false33 ], [ true, %lor.lhs.false30 ], [ true, %lor.lhs.false27 ], [ true, %lor.lhs.false24 ], [ true, %lor.lhs.false21 ], [ true, %lor.lhs.false18 ], [ true, %lor.lhs.false15 ], [ true, %lor.lhs.false12 ], [ true, %lor.lhs.false9 ], [ true, %lor.lhs.false6 ], [ true, %lor.lhs.false3 ], [ true, %lor.lhs.false ], [ true, %entry ], [ %cmp37, %lor.rhs ]
  ret i1 %0
}

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i1 @binary_operator(i1 noundef zeroext %l_is_l) unnamed_addr #6 {
entry:
  %finfo.i460 = alloca %struct.stat, align 8
  %finfo.i450 = alloca %struct.stat, align 8
  %finfo.i439 = alloca %struct.stat, align 8
  %finfo.i = alloca %struct.stat, align 8
  %stat_buf = alloca %struct.stat, align 8
  %stat_spare = alloca %struct.stat, align 8
  %lbuf = alloca [21 x i8], align 16
  %rbuf = alloca [21 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %stat_buf) #13
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %stat_spare) #13
  %.pre = load i32, ptr @pos, align 4, !tbaa !9
  br i1 %l_is_l, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %inc.i = add nsw i32 %.pre, 1
  store i32 %inc.i, ptr @pos, align 4, !tbaa !9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %0 = phi i32 [ %inc.i, %if.then ], [ %.pre, %entry ]
  %add = add nsw i32 %0, 1
  %1 = load i32, ptr @argc, align 4
  %sub = add nsw i32 %1, -2
  %cmp = icmp slt i32 %add, %sub
  %.pre498 = load ptr, ptr @argv, align 8, !tbaa !5
  br i1 %cmp, label %land.lhs.true, label %if.end4

land.lhs.true:                                    ; preds = %if.end
  %2 = sext i32 %0 to i64
  %3 = getelementptr ptr, ptr %.pre498, i64 %2
  %arrayidx = getelementptr ptr, ptr %3, i64 2
  %4 = load ptr, ptr %arrayidx, align 8, !tbaa !5
  %call = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %4, ptr noundef nonnull dereferenceable(3) @.str.71) #14
  %cmp2 = icmp eq i32 %call, 0
  br i1 %cmp2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %land.lhs.true
  store i32 %add, ptr @pos, align 4, !tbaa !9
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %land.lhs.true, %if.end
  %5 = phi i32 [ %add, %if.then3 ], [ %0, %land.lhs.true ], [ %0, %if.end ]
  %r_is_l.0 = phi i1 [ true, %if.then3 ], [ false, %land.lhs.true ], [ false, %if.end ]
  %idxprom5 = sext i32 %add to i64
  %arrayidx6 = getelementptr inbounds ptr, ptr %.pre498, i64 %idxprom5
  %6 = load ptr, ptr %arrayidx6, align 8, !tbaa !5
  %7 = load i8, ptr %6, align 1, !tbaa !11
  switch i8 %7, label %if.end321 [
    i8 45, label %if.then10
    i8 61, label %land.lhs.true292
  ]

if.then10:                                        ; preds = %if.end4
  %arrayidx13 = getelementptr inbounds i8, ptr %6, i64 1
  %8 = load i8, ptr %arrayidx13, align 1, !tbaa !11
  switch i8 %8, label %sw.epilog [
    i8 108, label %land.lhs.true23
    i8 103, label %land.lhs.true23
    i8 101, label %land.lhs.true44
    i8 110, label %land.lhs.true58
    i8 111, label %if.then10.sw.bb232_crit_edge
  ]

if.then10.sw.bb232_crit_edge:                     ; preds = %if.then10
  %arrayidx235.phi.trans.insert = getelementptr inbounds i8, ptr %6, i64 2
  %.pre499 = load i8, ptr %arrayidx235.phi.trans.insert, align 1, !tbaa !11
  %cmp237 = icmp eq i8 %.pre499, 116
  br i1 %cmp237, label %land.lhs.true239, label %sw.epilog

land.lhs.true23:                                  ; preds = %if.then10, %if.then10
  %arrayidx26 = getelementptr inbounds i8, ptr %6, i64 2
  %9 = load i8, ptr %arrayidx26, align 1, !tbaa !11
  switch i8 %9, label %if.end144 [
    i8 101, label %land.lhs.true65
    i8 116, label %land.lhs.true65
  ]

land.lhs.true44:                                  ; preds = %if.then10
  %arrayidx47 = getelementptr inbounds i8, ptr %6, i64 2
  %10 = load i8, ptr %arrayidx47, align 1, !tbaa !11
  %cmp49 = icmp eq i8 %10, 113
  br i1 %cmp49, label %land.lhs.true65, label %sw.bb187

land.lhs.true58:                                  ; preds = %if.then10
  %arrayidx61 = getelementptr inbounds i8, ptr %6, i64 2
  %11 = load i8, ptr %arrayidx61, align 1, !tbaa !11
  %cmp63 = icmp eq i8 %11, 101
  br i1 %cmp63, label %land.lhs.true65, label %sw.bb

land.lhs.true65:                                  ; preds = %land.lhs.true58, %land.lhs.true44, %land.lhs.true23, %land.lhs.true23
  %12 = phi i8 [ %9, %land.lhs.true23 ], [ %9, %land.lhs.true23 ], [ 101, %land.lhs.true58 ], [ 113, %land.lhs.true44 ]
  %arrayidx68 = getelementptr inbounds i8, ptr %6, i64 3
  %13 = load i8, ptr %arrayidx68, align 1, !tbaa !11
  %tobool69.not = icmp eq i8 %13, 0
  br i1 %tobool69.not, label %if.then70, label %if.end144

if.then70:                                        ; preds = %land.lhs.true65
  call void @llvm.lifetime.start.p0(i64 21, ptr nonnull %lbuf) #13
  call void @llvm.lifetime.start.p0(i64 21, ptr nonnull %rbuf) #13
  %idxprom74 = sext i32 %0 to i64
  %arrayidx75 = getelementptr inbounds ptr, ptr %.pre498, i64 %idxprom74
  %14 = load ptr, ptr %arrayidx75, align 8, !tbaa !5
  br i1 %l_is_l, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then70
  %call76 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %14) #14
  %call77 = call ptr @umaxtostr(i64 noundef %call76, ptr noundef nonnull %lbuf) #13
  br label %cond.end

cond.false:                                       ; preds = %if.then70
  %call81 = tail call fastcc ptr @find_int(ptr noundef %14)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %call77, %cond.true ], [ %call81, %cond.false ]
  %15 = load ptr, ptr @argv, align 8, !tbaa !5
  %16 = sext i32 %0 to i64
  %17 = getelementptr ptr, ptr %15, i64 %16
  br i1 %r_is_l.0, label %cond.true84, label %cond.false91

cond.true84:                                      ; preds = %cond.end
  %arrayidx87 = getelementptr ptr, ptr %17, i64 3
  %18 = load ptr, ptr %arrayidx87, align 8, !tbaa !5
  %call88 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %18) #14
  %call90 = call ptr @umaxtostr(i64 noundef %call88, ptr noundef nonnull %rbuf) #13
  br label %cond.end96

cond.false91:                                     ; preds = %cond.end
  %arrayidx94 = getelementptr ptr, ptr %17, i64 2
  %19 = load ptr, ptr %arrayidx94, align 8, !tbaa !5
  %call95 = call fastcc ptr @find_int(ptr noundef %19)
  br label %cond.end96

cond.end96:                                       ; preds = %cond.false91, %cond.true84
  %cond97 = phi ptr [ %call90, %cond.true84 ], [ %call95, %cond.false91 ]
  %call99 = call i32 @strintcmp(ptr noundef %cond, ptr noundef %cond97) #14
  %20 = load ptr, ptr @argv, align 8, !tbaa !5
  %arrayidx101 = getelementptr inbounds ptr, ptr %20, i64 %idxprom5
  %21 = load ptr, ptr %arrayidx101, align 8, !tbaa !5
  %arrayidx102 = getelementptr inbounds i8, ptr %21, i64 2
  %22 = load i8, ptr %arrayidx102, align 1, !tbaa !11
  %cmp104 = icmp eq i8 %22, 101
  %23 = load i32, ptr @pos, align 4, !tbaa !9
  %add107 = add nsw i32 %23, 3
  store i32 %add107, ptr @pos, align 4, !tbaa !9
  %arrayidx110 = getelementptr inbounds i8, ptr %21, i64 1
  %24 = load i8, ptr %arrayidx110, align 1, !tbaa !11
  switch i8 %24, label %cond.false132 [
    i8 108, label %cond.true114
    i8 103, label %cond.true126
  ]

cond.true114:                                     ; preds = %cond.end96
  %conv116 = zext i1 %cmp104 to i32
  %cmp117 = icmp slt i32 %call99, %conv116
  br label %cond.end141

cond.true126:                                     ; preds = %cond.end96
  %conv128.neg = sext i1 %cmp104 to i32
  %cmp130 = icmp sgt i32 %call99, %conv128.neg
  br label %cond.end141

cond.false132:                                    ; preds = %cond.end96
  %25 = icmp eq i32 %call99, 0
  %cmp137 = xor i1 %25, %cmp104
  br label %cond.end141

cond.end141:                                      ; preds = %cond.false132, %cond.true126, %cond.true114
  %cond142.in = phi i1 [ %cmp117, %cond.true114 ], [ %cmp130, %cond.true126 ], [ %cmp137, %cond.false132 ]
  call void @llvm.lifetime.end.p0(i64 21, ptr nonnull %rbuf) #13
  call void @llvm.lifetime.end.p0(i64 21, ptr nonnull %lbuf) #13
  br label %cleanup

if.end144:                                        ; preds = %land.lhs.true65, %land.lhs.true23
  %26 = phi i8 [ %9, %land.lhs.true23 ], [ %12, %land.lhs.true65 ]
  switch i8 %8, label %sw.epilog [
    i8 110, label %sw.bb
    i8 101, label %sw.bb187
  ]

sw.bb:                                            ; preds = %if.end144, %land.lhs.true58
  %27 = phi i8 [ %11, %land.lhs.true58 ], [ %26, %if.end144 ]
  %cmp153 = icmp eq i8 %27, 116
  br i1 %cmp153, label %land.lhs.true155, label %sw.epilog

land.lhs.true155:                                 ; preds = %sw.bb
  %arrayidx158 = getelementptr inbounds i8, ptr %6, i64 3
  %28 = load i8, ptr %arrayidx158, align 1, !tbaa !11
  %tobool159.not = icmp eq i8 %28, 0
  br i1 %tobool159.not, label %if.then160, label %sw.epilog

if.then160:                                       ; preds = %land.lhs.true155
  %add161 = add nsw i32 %5, 3
  store i32 %add161, ptr @pos, align 4, !tbaa !9
  %brmerge = or i1 %r_is_l.0, %l_is_l
  br i1 %brmerge, label %if.then167, label %if.end169

if.then167:                                       ; preds = %if.then160
  %call168 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.72, i32 noundef 5) #13
  tail call void (ptr, ...) @test_syntax_error(ptr noundef %call168) #16
  unreachable

if.end169:                                        ; preds = %if.then160
  %idxprom171 = sext i32 %0 to i64
  %arrayidx172 = getelementptr inbounds ptr, ptr %.pre498, i64 %idxprom171
  %29 = load ptr, ptr %arrayidx172, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %finfo.i) #13
  %call.i = call i32 @stat(ptr noundef %29, ptr noundef nonnull %finfo.i) #13
  %cmp.i.not = icmp eq i32 %call.i, 0
  %st_mtim.i.i = getelementptr inbounds %struct.stat, ptr %finfo.i, i64 0, i32 12
  %retval.sroa.0.0.copyload.i.i = load i64, ptr %st_mtim.i.i, align 8
  %retval.sroa.2.0.st_mtim.sroa_idx.i.i = getelementptr inbounds %struct.stat, ptr %finfo.i, i64 0, i32 12, i32 1
  %retval.sroa.2.0.copyload.i.i = load i64, ptr %retval.sroa.2.0.st_mtim.sroa_idx.i.i, align 8
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %finfo.i) #13
  %30 = load ptr, ptr @argv, align 8, !tbaa !5
  %31 = getelementptr ptr, ptr %30, i64 %idxprom171
  %arrayidx177 = getelementptr ptr, ptr %31, i64 2
  %32 = load ptr, ptr %arrayidx177, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %finfo.i439) #13
  %call.i440 = call i32 @stat(ptr noundef %32, ptr noundef nonnull %finfo.i439) #13
  %cmp.i441.not = icmp eq i32 %call.i440, 0
  br i1 %cmp.i441.not, label %get_mtime.exit448, label %get_mtime.exit448.thread

get_mtime.exit448.thread:                         ; preds = %if.end169
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %finfo.i439) #13
  br label %cleanup

get_mtime.exit448:                                ; preds = %if.end169
  %st_mtim.i.i443 = getelementptr inbounds %struct.stat, ptr %finfo.i439, i64 0, i32 12
  %retval.sroa.0.0.copyload.i.i444 = load i64, ptr %st_mtim.i.i443, align 8, !tbaa !12, !tbaa.struct !15
  %retval.sroa.2.0.st_mtim.sroa_idx.i.i445 = getelementptr inbounds %struct.stat, ptr %finfo.i439, i64 0, i32 12, i32 1
  %retval.sroa.2.0.copyload.i.i446 = load i64, ptr %retval.sroa.2.0.st_mtim.sroa_idx.i.i445, align 8, !tbaa !12, !tbaa.struct !17
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %finfo.i439) #13
  br i1 %cmp.i.not, label %lor.rhs, label %cleanup

lor.rhs:                                          ; preds = %get_mtime.exit448
  %cmp.i449 = icmp sgt i64 %retval.sroa.0.0.copyload.i.i, %retval.sroa.0.0.copyload.i.i444
  %conv.i = zext i1 %cmp.i449 to i32
  %cmp4.i = icmp slt i64 %retval.sroa.0.0.copyload.i.i, %retval.sroa.0.0.copyload.i.i444
  %conv5.neg.i = sext i1 %cmp4.i to i32
  %sub.i = add nsw i32 %conv5.neg.i, %conv.i
  %mul.i = shl nsw i32 %sub.i, 1
  %cmp7.i = icmp sgt i64 %retval.sroa.2.0.copyload.i.i, %retval.sroa.2.0.copyload.i.i446
  %conv8.i = zext i1 %cmp7.i to i32
  %cmp11.i = icmp slt i64 %retval.sroa.2.0.copyload.i.i, %retval.sroa.2.0.copyload.i.i446
  %conv12.neg.i = sext i1 %cmp11.i to i32
  %sub13.i = add nsw i32 %conv12.neg.i, %conv8.i
  %add.i = add nsw i32 %sub13.i, %mul.i
  %cmp184 = icmp sgt i32 %add.i, 0
  br label %cleanup

sw.bb187:                                         ; preds = %if.end144, %land.lhs.true44
  %33 = phi i8 [ %10, %land.lhs.true44 ], [ %26, %if.end144 ]
  %cmp192 = icmp eq i8 %33, 102
  br i1 %cmp192, label %land.lhs.true194, label %sw.epilog

land.lhs.true194:                                 ; preds = %sw.bb187
  %arrayidx197 = getelementptr inbounds i8, ptr %6, i64 3
  %34 = load i8, ptr %arrayidx197, align 1, !tbaa !11
  %tobool198.not = icmp eq i8 %34, 0
  br i1 %tobool198.not, label %if.then199, label %sw.epilog

if.then199:                                       ; preds = %land.lhs.true194
  %add200 = add nsw i32 %5, 3
  store i32 %add200, ptr @pos, align 4, !tbaa !9
  %brmerge433 = or i1 %r_is_l.0, %l_is_l
  br i1 %brmerge433, label %if.then206, label %if.end208

if.then206:                                       ; preds = %if.then199
  %call207 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.73, i32 noundef 5) #13
  tail call void (ptr, ...) @test_syntax_error(ptr noundef %call207) #16
  unreachable

if.end208:                                        ; preds = %if.then199
  %idxprom210 = sext i32 %0 to i64
  %arrayidx211 = getelementptr inbounds ptr, ptr %.pre498, i64 %idxprom210
  %35 = load ptr, ptr %arrayidx211, align 8, !tbaa !5
  %call212 = call i32 @stat(ptr noundef %35, ptr noundef nonnull %stat_buf) #13
  %cmp213 = icmp eq i32 %call212, 0
  br i1 %cmp213, label %land.lhs.true215, label %cleanup

land.lhs.true215:                                 ; preds = %if.end208
  %36 = load ptr, ptr @argv, align 8, !tbaa !5
  %37 = getelementptr ptr, ptr %36, i64 %idxprom210
  %arrayidx218 = getelementptr ptr, ptr %37, i64 2
  %38 = load ptr, ptr %arrayidx218, align 8, !tbaa !5
  %call219 = call i32 @stat(ptr noundef %38, ptr noundef nonnull %stat_spare) #13
  %cmp220 = icmp eq i32 %call219, 0
  br i1 %cmp220, label %land.lhs.true222, label %cleanup

land.lhs.true222:                                 ; preds = %land.lhs.true215
  %39 = load i64, ptr %stat_buf, align 8, !tbaa !24
  %40 = load i64, ptr %stat_spare, align 8, !tbaa !24
  %cmp224 = icmp eq i64 %39, %40
  br i1 %cmp224, label %land.rhs226, label %cleanup

land.rhs226:                                      ; preds = %land.lhs.true222
  %st_ino = getelementptr inbounds %struct.stat, ptr %stat_buf, i64 0, i32 1
  %41 = load i64, ptr %st_ino, align 8, !tbaa !25
  %st_ino227 = getelementptr inbounds %struct.stat, ptr %stat_spare, i64 0, i32 1
  %42 = load i64, ptr %st_ino227, align 8, !tbaa !25
  %cmp228 = icmp eq i64 %41, %42
  br label %cleanup

land.lhs.true239:                                 ; preds = %if.then10.sw.bb232_crit_edge
  %arrayidx242 = getelementptr inbounds i8, ptr %6, i64 3
  %43 = load i8, ptr %arrayidx242, align 1, !tbaa !11
  %cmp244 = icmp eq i8 %43, 0
  br i1 %cmp244, label %if.then246, label %sw.epilog

if.then246:                                       ; preds = %land.lhs.true239
  %add251 = add nsw i32 %5, 3
  store i32 %add251, ptr @pos, align 4, !tbaa !9
  %brmerge434 = or i1 %r_is_l.0, %l_is_l
  br i1 %brmerge434, label %if.then257, label %if.end259

if.then257:                                       ; preds = %if.then246
  %call258 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.74, i32 noundef 5) #13
  tail call void (ptr, ...) @test_syntax_error(ptr noundef %call258) #16
  unreachable

if.end259:                                        ; preds = %if.then246
  %idxprom261 = sext i32 %0 to i64
  %arrayidx262 = getelementptr inbounds ptr, ptr %.pre498, i64 %idxprom261
  %44 = load ptr, ptr %arrayidx262, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %finfo.i450) #13
  %call.i451 = call i32 @stat(ptr noundef %44, ptr noundef nonnull %finfo.i450) #13
  %st_mtim.i.i454 = getelementptr inbounds %struct.stat, ptr %finfo.i450, i64 0, i32 12
  %retval.sroa.0.0.copyload.i.i455 = load i64, ptr %st_mtim.i.i454, align 8
  %retval.sroa.2.0.st_mtim.sroa_idx.i.i456 = getelementptr inbounds %struct.stat, ptr %finfo.i450, i64 0, i32 12, i32 1
  %retval.sroa.2.0.copyload.i.i457 = load i64, ptr %retval.sroa.2.0.st_mtim.sroa_idx.i.i456, align 8
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %finfo.i450) #13
  %45 = load ptr, ptr @argv, align 8, !tbaa !5
  %46 = getelementptr ptr, ptr %45, i64 %idxprom261
  %arrayidx267 = getelementptr ptr, ptr %46, i64 2
  %47 = load ptr, ptr %arrayidx267, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %finfo.i460) #13
  %call.i461 = call i32 @stat(ptr noundef %47, ptr noundef nonnull %finfo.i460) #13
  %cmp.i462 = icmp eq i32 %call.i461, 0
  br i1 %cmp.i462, label %get_mtime.exit469, label %get_mtime.exit469.thread

get_mtime.exit469.thread:                         ; preds = %if.end259
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %finfo.i460) #13
  br label %cleanup

get_mtime.exit469:                                ; preds = %if.end259
  %cmp.i452.not = icmp eq i32 %call.i451, 0
  %st_mtim.i.i464 = getelementptr inbounds %struct.stat, ptr %finfo.i460, i64 0, i32 12
  %retval.sroa.0.0.copyload.i.i465 = load i64, ptr %st_mtim.i.i464, align 8, !tbaa !12, !tbaa.struct !15
  %retval.sroa.2.0.st_mtim.sroa_idx.i.i466 = getelementptr inbounds %struct.stat, ptr %finfo.i460, i64 0, i32 12, i32 1
  %retval.sroa.2.0.copyload.i.i467 = load i64, ptr %retval.sroa.2.0.st_mtim.sroa_idx.i.i466, align 8, !tbaa !12, !tbaa.struct !17
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %finfo.i460) #13
  br i1 %cmp.i452.not, label %lor.rhs274, label %cleanup

lor.rhs274:                                       ; preds = %get_mtime.exit469
  %cmp.i470 = icmp sgt i64 %retval.sroa.0.0.copyload.i.i455, %retval.sroa.0.0.copyload.i.i465
  %conv.i471 = zext i1 %cmp.i470 to i32
  %cmp4.i472 = icmp slt i64 %retval.sroa.0.0.copyload.i.i455, %retval.sroa.0.0.copyload.i.i465
  %conv5.neg.i473 = sext i1 %cmp4.i472 to i32
  %sub.i474 = add nsw i32 %conv5.neg.i473, %conv.i471
  %mul.i475 = shl nsw i32 %sub.i474, 1
  %cmp11.i478497 = icmp slt i64 %retval.sroa.2.0.copyload.i.i457, %retval.sroa.2.0.copyload.i.i467
  %48 = sext i1 %cmp11.i478497 to i32
  %add.i481 = add nsw i32 %mul.i475, %48
  %cmp276 = icmp slt i32 %add.i481, 0
  br label %cleanup

sw.epilog:                                        ; preds = %land.lhs.true239, %land.lhs.true194, %sw.bb187, %land.lhs.true155, %sw.bb, %if.end144, %if.then10.sw.bb232_crit_edge, %if.then10
  %call281 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.75, i32 noundef 5) #13
  %49 = load ptr, ptr @argv, align 8, !tbaa !5
  %arrayidx283 = getelementptr inbounds ptr, ptr %49, i64 %idxprom5
  %50 = load ptr, ptr %arrayidx283, align 8, !tbaa !5
  %call284 = tail call ptr @quote(ptr noundef %50) #13
  tail call void (ptr, ...) @test_syntax_error(ptr noundef %call281, ptr noundef %call284) #16
  unreachable

land.lhs.true292:                                 ; preds = %if.end4
  %arrayidx295 = getelementptr inbounds i8, ptr %6, i64 1
  %51 = load i8, ptr %arrayidx295, align 1, !tbaa !11
  switch i8 %51, label %if.end321 [
    i8 0, label %if.then309
    i8 61, label %land.lhs.true304
  ]

land.lhs.true304:                                 ; preds = %land.lhs.true292
  %arrayidx307 = getelementptr inbounds i8, ptr %6, i64 2
  %52 = load i8, ptr %arrayidx307, align 1, !tbaa !11
  %tobool308.not = icmp eq i8 %52, 0
  br i1 %tobool308.not, label %if.then309, label %if.end321

if.then309:                                       ; preds = %land.lhs.true304, %land.lhs.true292
  %idxprom310 = sext i32 %5 to i64
  %arrayidx311 = getelementptr inbounds ptr, ptr %.pre498, i64 %idxprom310
  %53 = load ptr, ptr %arrayidx311, align 8, !tbaa !5
  %arrayidx314 = getelementptr ptr, ptr %arrayidx311, i64 2
  %54 = load ptr, ptr %arrayidx314, align 8, !tbaa !5
  %call315 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %53, ptr noundef nonnull dereferenceable(1) %54) #14
  %cmp316 = icmp eq i32 %call315, 0
  %add319 = add nsw i32 %5, 3
  store i32 %add319, ptr @pos, align 4, !tbaa !9
  br label %cleanup

if.end321:                                        ; preds = %land.lhs.true304, %land.lhs.true292, %if.end4
  %call324 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %6, ptr noundef nonnull dereferenceable(3) @.str.60) #14
  %cmp325 = icmp eq i32 %call324, 0
  br i1 %cmp325, label %if.then327, label %if.end340

if.then327:                                       ; preds = %if.end321
  %idxprom329 = sext i32 %5 to i64
  %arrayidx330 = getelementptr inbounds ptr, ptr %.pre498, i64 %idxprom329
  %55 = load ptr, ptr %arrayidx330, align 8, !tbaa !5
  %arrayidx333 = getelementptr ptr, ptr %arrayidx330, i64 2
  %56 = load ptr, ptr %arrayidx333, align 8, !tbaa !5
  %call334 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %55, ptr noundef nonnull dereferenceable(1) %56) #14
  %cmp335 = icmp ne i32 %call334, 0
  %add338 = add nsw i32 %5, 3
  store i32 %add338, ptr @pos, align 4, !tbaa !9
  br label %cleanup

if.end340:                                        ; preds = %if.end321
  %call343 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %6, ptr noundef nonnull dereferenceable(2) @.str.56) #14
  %cmp344 = icmp eq i32 %call343, 0
  br i1 %cmp344, label %if.then346, label %if.end359

if.then346:                                       ; preds = %if.end340
  %idxprom348 = sext i32 %5 to i64
  %arrayidx349 = getelementptr inbounds ptr, ptr %.pre498, i64 %idxprom348
  %57 = load ptr, ptr %arrayidx349, align 8, !tbaa !5
  %arrayidx352 = getelementptr ptr, ptr %arrayidx349, i64 2
  %58 = load ptr, ptr %arrayidx352, align 8, !tbaa !5
  %call353 = tail call i32 @strcoll(ptr noundef %57, ptr noundef %58) #14
  %cmp354 = icmp sgt i32 %call353, 0
  %add357 = add nsw i32 %5, 3
  store i32 %add357, ptr @pos, align 4, !tbaa !9
  br label %cleanup

if.end359:                                        ; preds = %if.end340
  %call362 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %6, ptr noundef nonnull dereferenceable(2) @.str.57) #14
  %cmp363 = icmp eq i32 %call362, 0
  br i1 %cmp363, label %if.then365, label %if.end378

if.then365:                                       ; preds = %if.end359
  %idxprom367 = sext i32 %5 to i64
  %arrayidx368 = getelementptr inbounds ptr, ptr %.pre498, i64 %idxprom367
  %59 = load ptr, ptr %arrayidx368, align 8, !tbaa !5
  %arrayidx371 = getelementptr ptr, ptr %arrayidx368, i64 2
  %60 = load ptr, ptr %arrayidx371, align 8, !tbaa !5
  %call372 = tail call i32 @strcoll(ptr noundef %59, ptr noundef %60) #14
  %cmp373 = icmp slt i32 %call372, 0
  %add376 = add nsw i32 %5, 3
  store i32 %add376, ptr @pos, align 4, !tbaa !9
  br label %cleanup

if.end378:                                        ; preds = %if.end359
  tail call void @__assert_fail(ptr noundef nonnull @.str.76, ptr noundef nonnull @.str.50, i32 noundef 390, ptr noundef nonnull @__PRETTY_FUNCTION__.binary_operator) #15
  unreachable

cleanup:                                          ; preds = %if.then365, %if.then346, %if.then327, %if.then309, %lor.rhs274, %get_mtime.exit469, %get_mtime.exit469.thread, %land.rhs226, %land.lhs.true222, %land.lhs.true215, %if.end208, %lor.rhs, %get_mtime.exit448, %get_mtime.exit448.thread, %cond.end141
  %retval.0 = phi i1 [ %cond142.in, %cond.end141 ], [ %cmp335, %if.then327 ], [ %cmp354, %if.then346 ], [ %cmp373, %if.then365 ], [ %cmp316, %if.then309 ], [ false, %land.lhs.true222 ], [ false, %land.lhs.true215 ], [ false, %if.end208 ], [ %cmp228, %land.rhs226 ], [ false, %get_mtime.exit448 ], [ %cmp184, %lor.rhs ], [ %cmp.i.not, %get_mtime.exit448.thread ], [ true, %get_mtime.exit469 ], [ %cmp276, %lor.rhs274 ], [ false, %get_mtime.exit469.thread ]
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %stat_spare) #13
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %stat_buf) #13
  ret i1 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #8

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #4

declare ptr @umaxtostr(i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc ptr @find_int(ptr noundef %string) unnamed_addr #6 {
entry:
  %call = tail call ptr @__ctype_b_loc() #18
  %0 = load ptr, ptr %call, align 8, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.cond, %entry
  %p.0 = phi ptr [ %string, %entry ], [ %incdec.ptr, %for.cond ]
  %1 = load i8, ptr %p.0, align 1, !tbaa !11
  %idxprom = zext i8 %1 to i64
  %arrayidx = getelementptr inbounds i16, ptr %0, i64 %idxprom
  %2 = load i16, ptr %arrayidx, align 2, !tbaa !26
  %3 = and i16 %2, 8192
  %tobool.not = icmp eq i16 %3, 0
  %incdec.ptr = getelementptr inbounds i8, ptr %p.0, i64 1
  br i1 %tobool.not, label %for.end, label %for.cond, !llvm.loop !28

for.end:                                          ; preds = %for.cond
  %cmp = icmp eq i8 %1, 43
  %cmp7 = icmp eq i8 %1, 45
  %idx.ext = zext i1 %cmp7 to i64
  %add.ptr = getelementptr inbounds i8, ptr %p.0, i64 %idx.ext
  %p.1 = select i1 %cmp, ptr %incdec.ptr, ptr %add.ptr
  %4 = load i8, ptr %p.1, align 1, !tbaa !11
  %conv10 = sext i8 %4 to i32
  %c.off.i = add nsw i32 %conv10, -48
  %switch.i = icmp ult i32 %c.off.i, 10
  br i1 %switch.i, label %while.cond, label %if.end31

while.cond:                                       ; preds = %while.cond, %for.end
  %p.1.pn = phi ptr [ %p.2, %while.cond ], [ %p.1, %for.end ]
  %p.2 = getelementptr inbounds i8, ptr %p.1.pn, i64 1
  %5 = load i8, ptr %p.2, align 1, !tbaa !11
  %conv13 = sext i8 %5 to i32
  %c.off.i48 = add nsw i32 %conv13, -48
  %switch.i49 = icmp ult i32 %c.off.i48, 10
  br i1 %switch.i49, label %while.cond, label %while.cond16.preheader, !llvm.loop !29

while.cond16.preheader:                           ; preds = %while.cond
  %idxprom2053 = zext i8 %5 to i64
  %arrayidx2154 = getelementptr inbounds i16, ptr %0, i64 %idxprom2053
  %6 = load i16, ptr %arrayidx2154, align 2, !tbaa !26
  %7 = and i16 %6, 8192
  %tobool24.not55 = icmp eq i16 %7, 0
  br i1 %tobool24.not55, label %while.end27, label %while.body25

while.body25:                                     ; preds = %while.body25, %while.cond16.preheader
  %p.356 = phi ptr [ %incdec.ptr26, %while.body25 ], [ %p.2, %while.cond16.preheader ]
  %incdec.ptr26 = getelementptr inbounds i8, ptr %p.356, i64 1
  %.pr = load i8, ptr %incdec.ptr26, align 1, !tbaa !11
  %idxprom20 = zext i8 %.pr to i64
  %arrayidx21 = getelementptr inbounds i16, ptr %0, i64 %idxprom20
  %8 = load i16, ptr %arrayidx21, align 2, !tbaa !26
  %9 = and i16 %8, 8192
  %tobool24.not = icmp eq i16 %9, 0
  br i1 %tobool24.not, label %while.end27, label %while.body25, !llvm.loop !30

while.end27:                                      ; preds = %while.body25, %while.cond16.preheader
  %.lcssa = phi i8 [ %5, %while.cond16.preheader ], [ %.pr, %while.body25 ]
  %tobool28.not = icmp eq i8 %.lcssa, 0
  br i1 %tobool28.not, label %if.then29, label %if.end31

if.then29:                                        ; preds = %while.end27
  %number_start.0 = select i1 %cmp, ptr %incdec.ptr, ptr %p.0
  ret ptr %number_start.0

if.end31:                                         ; preds = %while.end27, %for.end
  %call32 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.52, i32 noundef 5) #13
  %call33 = tail call ptr @quote(ptr noundef %string) #13
  tail call void (ptr, ...) @test_syntax_error(ptr noundef %call32, ptr noundef %call33) #16
  unreachable
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i32 @strintcmp(ptr noundef, ptr noundef) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #8

; Function Attrs: nofree nounwind
declare noundef i32 @stat(ptr nocapture noundef readonly, ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i32 @strcoll(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__ctype_b_loc() local_unnamed_addr #10

; Function Attrs: nounwind
declare i32 @euidaccess(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #10

; Function Attrs: nounwind
declare i32 @geteuid() local_unnamed_addr #1

; Function Attrs: nounwind
declare i32 @getegid() local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare noundef i32 @lstat(ptr nocapture noundef readonly, ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare i64 @__isoc23_strtol(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare i32 @isatty(i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #11

; Function Attrs: cold
declare void @verror(i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #12

attributes #0 = { noreturn nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nosync nounwind willreturn }
attributes #12 = { cold "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nounwind }
attributes #14 = { nounwind willreturn memory(read) }
attributes #15 = { noreturn nounwind }
attributes #16 = { noreturn }
attributes #17 = { cold nounwind }
attributes #18 = { nounwind willreturn memory(none) }

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
!12 = !{!13, !13, i64 0, i64 16}
!13 = !{!7, i64 16, !"timespec", !14, i64 0, i64 8, !14, i64 8, i64 8}
!14 = !{!7, i64 8, !"long"}
!15 = !{i64 0, i64 8, !16, i64 8, i64 8, !16}
!16 = !{!14, !14, i64 0, i64 8}
!17 = !{i64 0, i64 8, !16}
!18 = !{!19, !10, i64 28, i64 4}
!19 = !{!7, i64 144, !"stat", !14, i64 0, i64 8, !14, i64 8, i64 8, !14, i64 16, i64 8, !10, i64 24, i64 4, !10, i64 28, i64 4, !10, i64 32, i64 4, !10, i64 36, i64 4, !14, i64 40, i64 8, !14, i64 48, i64 8, !14, i64 56, i64 8, !14, i64 64, i64 8, !13, i64 72, i64 16, !13, i64 88, i64 16, !13, i64 104, i64 16, !14, i64 120, i64 24}
!20 = !{!19, !10, i64 32, i64 4}
!21 = distinct !{!21, !22}
!22 = !{!"llvm.loop.mustprogress"}
!23 = distinct !{!23, !22}
!24 = !{!19, !14, i64 0, i64 8}
!25 = !{!19, !14, i64 8, i64 8}
!26 = !{!27, !27, i64 0, i64 2}
!27 = !{!7, i64 2, !"short"}
!28 = distinct !{!28, !22}
!29 = distinct !{!29, !22}
!30 = distinct !{!30, !22}
