; ModuleID = 'llvm-link'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.infomap = type { ptr, ptr }
%struct.__va_list_tag = type { i32, i32, ptr, ptr }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }

@stderr = external global ptr, align 8
@.str = private unnamed_addr constant [39 x i8] c"Try '%s --help' for more information.\0A\00", align 1
@program_name = external global ptr, align 8
@.str.1 = private unnamed_addr constant [85 x i8] c"Usage: test EXPRESSION\0A  or:  test\0A  or:  [ EXPRESSION ]\0A  or:  [ ]\0A  or:  [ OPTION\0A\00", align 1
@stdout = external global ptr, align 8
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
@argv = internal global ptr null, align 8
@.str.23 = private unnamed_addr constant [7 x i8] c"--help\00", align 1
@.str.24 = private unnamed_addr constant [10 x i8] c"--version\00", align 1
@.str.25 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@Version = external global ptr, align 8
@.str.26 = private unnamed_addr constant [17 x i8] c"Kevin Braunsdorf\00", align 1
@.str.27 = private unnamed_addr constant [17 x i8] c"Matthew Bradburn\00", align 1
@.str.28 = private unnamed_addr constant [2 x i8] c"]\00", align 1
@.str.29 = private unnamed_addr constant [11 x i8] c"missing %s\00", align 1
@argc = internal global i32 0, align 4
@pos = internal global i32 0, align 4
@.str.30 = private unnamed_addr constant [18 x i8] c"extra argument %s\00", align 1
@.str.31 = private unnamed_addr constant [16 x i8] c"test invocation\00", align 1
@.str.32 = private unnamed_addr constant [22 x i8] c"Multi-call invocation\00", align 1
@.str.33 = private unnamed_addr constant [10 x i8] c"sha224sum\00", align 1
@.str.34 = private unnamed_addr constant [15 x i8] c"sha2 utilities\00", align 1
@.str.35 = private unnamed_addr constant [10 x i8] c"sha256sum\00", align 1
@.str.36 = private unnamed_addr constant [10 x i8] c"sha384sum\00", align 1
@.str.37 = private unnamed_addr constant [10 x i8] c"sha512sum\00", align 1
@__const.emit_ancillary_info.infomap = private unnamed_addr constant [7 x %struct.infomap] [%struct.infomap { ptr @.str.19, ptr @.str.31 }, %struct.infomap { ptr @.str.21, ptr @.str.32 }, %struct.infomap { ptr @.str.33, ptr @.str.34 }, %struct.infomap { ptr @.str.35, ptr @.str.34 }, %struct.infomap { ptr @.str.36, ptr @.str.34 }, %struct.infomap { ptr @.str.37, ptr @.str.34 }, %struct.infomap zeroinitializer], align 16
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
  %3 = load ptr, ptr @stdout, align 8
  %call3 = call i32 @fputs_unlocked(ptr noundef %call2, ptr noundef %3)
  %call4 = call ptr @gettext(ptr noundef @.str.2) #10
  %4 = load ptr, ptr @stdout, align 8
  %call5 = call i32 @fputs_unlocked(ptr noundef %call4, ptr noundef %4)
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
  %call20 = call ptr @gettext(ptr noundef @.str.10) #10
  %12 = load ptr, ptr @stdout, align 8
  %call21 = call i32 @fputs_unlocked(ptr noundef %call20, ptr noundef %12)
  %call22 = call ptr @gettext(ptr noundef @.str.11) #10
  %13 = load ptr, ptr @stdout, align 8
  %call23 = call i32 @fputs_unlocked(ptr noundef %call22, ptr noundef %13)
  %call24 = call ptr @gettext(ptr noundef @.str.12) #10
  %14 = load ptr, ptr @stdout, align 8
  %call25 = call i32 @fputs_unlocked(ptr noundef %call24, ptr noundef %14)
  %call26 = call ptr @gettext(ptr noundef @.str.13) #10
  %15 = load ptr, ptr @stdout, align 8
  %call27 = call i32 @fputs_unlocked(ptr noundef %call26, ptr noundef %15)
  %call28 = call ptr @gettext(ptr noundef @.str.14) #10
  %16 = load ptr, ptr @stdout, align 8
  %call29 = call i32 @fputs_unlocked(ptr noundef %call28, ptr noundef %16)
  %call30 = call ptr @gettext(ptr noundef @.str.15) #10
  %17 = load ptr, ptr @stdout, align 8
  %call31 = call i32 @fputs_unlocked(ptr noundef %call30, ptr noundef %17)
  %call32 = call ptr @gettext(ptr noundef @.str.16) #10
  %18 = load ptr, ptr @stdout, align 8
  %call33 = call i32 @fputs_unlocked(ptr noundef %call32, ptr noundef %18)
  %call34 = call ptr @gettext(ptr noundef @.str.17) #10
  %call35 = call ptr @gettext(ptr noundef @.str.18) #10
  %call36 = call i32 (ptr, ...) @printf(ptr noundef %call34, ptr noundef %call35)
  call void @emit_ancillary_info(ptr noundef @.str.19)
  br label %if.end

if.end:                                           ; preds = %if.else, %do.end
  %19 = load i32, ptr %status.addr, align 4
  call void @exit(i32 noundef %19) #11
  unreachable
}

; Function Attrs: nounwind
declare ptr @gettext(ptr noundef) #1

declare i32 @fprintf(ptr noundef, ptr noundef, ...) #2

declare i32 @fputs_unlocked(ptr noundef, ptr noundef) #2

declare i32 @printf(ptr noundef, ...) #2

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
  %call6 = call ptr @gettext(ptr noundef @.str.38) #10
  %call7 = call i32 (ptr, ...) @printf(ptr noundef %call6, ptr noundef @.str.25, ptr noundef @.str.39)
  %call8 = call ptr @setlocale(i32 noundef 5, ptr noundef null) #10
  store ptr %call8, ptr %lc_messages, align 8
  %12 = load ptr, ptr %lc_messages, align 8
  %tobool9 = icmp ne ptr %12, null
  br i1 %tobool9, label %land.lhs.true, label %if.end15

land.lhs.true:                                    ; preds = %if.end
  %13 = load ptr, ptr %lc_messages, align 8
  %call10 = call i32 @strncmp(ptr noundef %13, ptr noundef @.str.40, i64 noundef 3) #12
  %tobool11 = icmp ne i32 %call10, 0
  br i1 %tobool11, label %if.then12, label %if.end15

if.then12:                                        ; preds = %land.lhs.true
  %call13 = call ptr @gettext(ptr noundef @.str.41) #10
  %14 = load ptr, ptr @stdout, align 8
  %call14 = call i32 @fputs_unlocked(ptr noundef %call13, ptr noundef %14)
  br label %if.end15

if.end15:                                         ; preds = %if.then12, %land.lhs.true, %if.end
  %15 = load ptr, ptr %program.addr, align 8
  %call16 = call i32 @strcmp(ptr noundef %15, ptr noundef @.str.19) #12
  %cmp17 = icmp eq i32 %call16, 0
  br i1 %cmp17, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end15
  br label %cond.end

cond.false:                                       ; preds = %if.end15
  %16 = load ptr, ptr %program.addr, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ @.str.42, %cond.true ], [ %16, %cond.false ]
  store ptr %cond, ptr %url_program, align 8
  %call18 = call ptr @gettext(ptr noundef @.str.43) #10
  %17 = load ptr, ptr %url_program, align 8
  %call19 = call i32 (ptr, ...) @printf(ptr noundef %call18, ptr noundef @.str.39, ptr noundef %17)
  %call20 = call ptr @gettext(ptr noundef @.str.44) #10
  %18 = load ptr, ptr %node, align 8
  %19 = load ptr, ptr %node, align 8
  %20 = load ptr, ptr %program.addr, align 8
  %cmp21 = icmp eq ptr %19, %20
  %21 = zext i1 %cmp21 to i64
  %cond22 = select i1 %cmp21, ptr @.str.45, ptr @.str.20
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
define dso_local i32 @main(i32 noundef %margc, ptr noundef %margv) #3 {
entry:
  %retval = alloca i32, align 4
  %margc.addr = alloca i32, align 4
  %margv.addr = alloca ptr, align 8
  %value = alloca i8, align 1
  store i32 0, ptr %retval, align 4
  store i32 %margc, ptr %margc.addr, align 4
  store ptr %margv, ptr %margv.addr, align 8
  %0 = load ptr, ptr %margv.addr, align 8
  %arrayidx = getelementptr inbounds ptr, ptr %0, i64 0
  %1 = load ptr, ptr %arrayidx, align 8
  call void @set_program_name(ptr noundef %1)
  %call = call ptr @setlocale(i32 noundef 6, ptr noundef @.str.20) #10
  %call1 = call ptr @bindtextdomain(ptr noundef @.str.21, ptr noundef @.str.22) #10
  %call2 = call ptr @textdomain(ptr noundef @.str.21) #10
  call void @initialize_exit_failure(i32 noundef 2)
  %call3 = call i32 @atexit(ptr noundef @close_stdout) #10
  %2 = load ptr, ptr %margv.addr, align 8
  store ptr %2, ptr @argv, align 8
  %3 = load i32, ptr %margc.addr, align 4
  %cmp = icmp eq i32 %3, 2
  br i1 %cmp, label %if.then, label %if.end15

if.then:                                          ; preds = %entry
  %4 = load ptr, ptr %margv.addr, align 8
  %arrayidx4 = getelementptr inbounds ptr, ptr %4, i64 1
  %5 = load ptr, ptr %arrayidx4, align 8
  %call5 = call i32 @strcmp(ptr noundef %5, ptr noundef @.str.23) #12
  %cmp6 = icmp eq i32 %call5, 0
  br i1 %cmp6, label %if.then7, label %if.end

if.then7:                                         ; preds = %if.then
  call void @usage(i32 noundef 0) #13
  unreachable

if.end:                                           ; preds = %if.then
  %6 = load ptr, ptr %margv.addr, align 8
  %arrayidx8 = getelementptr inbounds ptr, ptr %6, i64 1
  %7 = load ptr, ptr %arrayidx8, align 8
  %call9 = call i32 @strcmp(ptr noundef %7, ptr noundef @.str.24) #12
  %cmp10 = icmp eq i32 %call9, 0
  br i1 %cmp10, label %if.then11, label %if.end14

if.then11:                                        ; preds = %if.end
  %8 = load ptr, ptr @stdout, align 8
  %9 = load ptr, ptr @Version, align 8
  %call12 = call ptr @proper_name_lite(ptr noundef @.str.26, ptr noundef @.str.26)
  %call13 = call ptr @proper_name_lite(ptr noundef @.str.27, ptr noundef @.str.27)
  call void (ptr, ptr, ptr, ptr, ...) @version_etc(ptr noundef %8, ptr noundef @.str.19, ptr noundef @.str.25, ptr noundef %9, ptr noundef %call12, ptr noundef %call13, ptr noundef null)
  store i32 0, ptr %retval, align 4
  br label %return

if.end14:                                         ; preds = %if.end
  br label %if.end15

if.end15:                                         ; preds = %if.end14, %entry
  %10 = load i32, ptr %margc.addr, align 4
  %cmp16 = icmp slt i32 %10, 2
  br i1 %cmp16, label %if.then20, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end15
  %11 = load ptr, ptr %margv.addr, align 8
  %12 = load i32, ptr %margc.addr, align 4
  %sub = sub nsw i32 %12, 1
  %idxprom = sext i32 %sub to i64
  %arrayidx17 = getelementptr inbounds ptr, ptr %11, i64 %idxprom
  %13 = load ptr, ptr %arrayidx17, align 8
  %call18 = call i32 @strcmp(ptr noundef %13, ptr noundef @.str.28) #12
  %cmp19 = icmp eq i32 %call18, 0
  br i1 %cmp19, label %if.end23, label %if.then20

if.then20:                                        ; preds = %lor.lhs.false, %if.end15
  %call21 = call ptr @gettext(ptr noundef @.str.29) #10
  %call22 = call ptr @quote(ptr noundef @.str.28)
  call void (ptr, ...) @test_syntax_error(ptr noundef %call21, ptr noundef %call22) #13
  unreachable

if.end23:                                         ; preds = %lor.lhs.false
  %14 = load i32, ptr %margc.addr, align 4
  %dec = add nsw i32 %14, -1
  store i32 %dec, ptr %margc.addr, align 4
  %15 = load i32, ptr %margc.addr, align 4
  store i32 %15, ptr @argc, align 4
  store i32 1, ptr @pos, align 4
  %16 = load i32, ptr @pos, align 4
  %17 = load i32, ptr @argc, align 4
  %cmp24 = icmp sge i32 %16, %17
  br i1 %cmp24, label %if.then25, label %if.end26

if.then25:                                        ; preds = %if.end23
  store i32 1, ptr %retval, align 4
  br label %return

if.end26:                                         ; preds = %if.end23
  %18 = load i32, ptr @argc, align 4
  %sub27 = sub nsw i32 %18, 1
  %call28 = call zeroext i1 @posixtest(i32 noundef %sub27)
  %frombool = zext i1 %call28 to i8
  store i8 %frombool, ptr %value, align 1
  %19 = load i32, ptr @pos, align 4
  %20 = load i32, ptr @argc, align 4
  %cmp29 = icmp ne i32 %19, %20
  br i1 %cmp29, label %if.then30, label %if.end35

if.then30:                                        ; preds = %if.end26
  %call31 = call ptr @gettext(ptr noundef @.str.30) #10
  %21 = load ptr, ptr @argv, align 8
  %22 = load i32, ptr @pos, align 4
  %idxprom32 = sext i32 %22 to i64
  %arrayidx33 = getelementptr inbounds ptr, ptr %21, i64 %idxprom32
  %23 = load ptr, ptr %arrayidx33, align 8
  %call34 = call ptr @quote(ptr noundef %23)
  call void (ptr, ...) @test_syntax_error(ptr noundef %call31, ptr noundef %call34) #13
  unreachable

if.end35:                                         ; preds = %if.end26
  %24 = load i8, ptr %value, align 1
  %tobool = trunc i8 %24 to i1
  %25 = zext i1 %tobool to i64
  %cond = select i1 %tobool, i32 0, i32 1
  store i32 %cond, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end35, %if.then25, %if.then11
  %26 = load i32, ptr %retval, align 4
  ret i32 %26
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

declare ptr @proper_name_lite(ptr noundef, ptr noundef) #2

declare void @version_etc(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ...) #2

declare ptr @quote(ptr noundef) #2

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @test_syntax_error(ptr noundef %format, ...) #0 {
entry:
  %format.addr = alloca ptr, align 8
  %ap = alloca [1 x %struct.__va_list_tag], align 16
  store ptr %format, ptr %format.addr, align 8
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %ap, i64 0, i64 0
  call void @llvm.va_start(ptr %arraydecay)
  %0 = load ptr, ptr %format.addr, align 8
  %arraydecay1 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %ap, i64 0, i64 0
  call void @verror(i32 noundef 0, i32 noundef 0, ptr noundef %0, ptr noundef %arraydecay1) #14
  call void @exit(i32 noundef 2) #11
  unreachable
}

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i1 @posixtest(i32 noundef %nargs) #3 {
entry:
  %nargs.addr = alloca i32, align 4
  %value = alloca i8, align 1
  store i32 %nargs, ptr %nargs.addr, align 4
  %0 = load i32, ptr %nargs.addr, align 4
  switch i32 %0, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb1
    i32 3, label %sw.bb4
    i32 4, label %sw.bb7
    i32 5, label %sw.bb23
  ]

sw.bb:                                            ; preds = %entry
  %call = call zeroext i1 @one_argument()
  %frombool = zext i1 %call to i8
  store i8 %frombool, ptr %value, align 1
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  %call2 = call zeroext i1 @two_arguments()
  %frombool3 = zext i1 %call2 to i8
  store i8 %frombool3, ptr %value, align 1
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry
  %call5 = call zeroext i1 @three_arguments()
  %frombool6 = zext i1 %call5 to i8
  store i8 %frombool6, ptr %value, align 1
  br label %sw.epilog

sw.bb7:                                           ; preds = %entry
  %1 = load ptr, ptr @argv, align 8
  %2 = load i32, ptr @pos, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds ptr, ptr %1, i64 %idxprom
  %3 = load ptr, ptr %arrayidx, align 8
  %call8 = call i32 @strcmp(ptr noundef %3, ptr noundef @.str.46) #12
  %cmp = icmp eq i32 %call8, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb7
  call void @advance(i1 noundef zeroext true)
  %call9 = call zeroext i1 @three_arguments()
  %lnot = xor i1 %call9, true
  %frombool10 = zext i1 %lnot to i8
  store i8 %frombool10, ptr %value, align 1
  br label %sw.epilog

if.end:                                           ; preds = %sw.bb7
  %4 = load ptr, ptr @argv, align 8
  %5 = load i32, ptr @pos, align 4
  %idxprom11 = sext i32 %5 to i64
  %arrayidx12 = getelementptr inbounds ptr, ptr %4, i64 %idxprom11
  %6 = load ptr, ptr %arrayidx12, align 8
  %call13 = call i32 @strcmp(ptr noundef %6, ptr noundef @.str.47) #12
  %cmp14 = icmp eq i32 %call13, 0
  br i1 %cmp14, label %land.lhs.true, label %if.end22

land.lhs.true:                                    ; preds = %if.end
  %7 = load ptr, ptr @argv, align 8
  %8 = load i32, ptr @pos, align 4
  %add = add nsw i32 %8, 3
  %idxprom15 = sext i32 %add to i64
  %arrayidx16 = getelementptr inbounds ptr, ptr %7, i64 %idxprom15
  %9 = load ptr, ptr %arrayidx16, align 8
  %call17 = call i32 @strcmp(ptr noundef %9, ptr noundef @.str.48) #12
  %cmp18 = icmp eq i32 %call17, 0
  br i1 %cmp18, label %if.then19, label %if.end22

if.then19:                                        ; preds = %land.lhs.true
  call void @advance(i1 noundef zeroext false)
  %call20 = call zeroext i1 @two_arguments()
  %frombool21 = zext i1 %call20 to i8
  store i8 %frombool21, ptr %value, align 1
  call void @advance(i1 noundef zeroext false)
  br label %sw.epilog

if.end22:                                         ; preds = %land.lhs.true, %if.end
  br label %sw.bb23

sw.bb23:                                          ; preds = %if.end22, %entry
  br label %sw.default

sw.default:                                       ; preds = %sw.bb23, %entry
  %10 = load i32, ptr %nargs.addr, align 4
  %cmp24 = icmp slt i32 0, %10
  br i1 %cmp24, label %if.then25, label %if.else

if.then25:                                        ; preds = %sw.default
  br label %if.end26

if.else:                                          ; preds = %sw.default
  call void @__assert_fail(ptr noundef @.str.49, ptr noundef @.str.50, i32 noundef 679, ptr noundef @__PRETTY_FUNCTION__.posixtest) #11
  unreachable

if.end26:                                         ; preds = %if.then25
  %call27 = call zeroext i1 @expr()
  %frombool28 = zext i1 %call27 to i8
  store i8 %frombool28, ptr %value, align 1
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end26, %if.then19, %if.then, %sw.bb4, %sw.bb1, %sw.bb
  %11 = load i8, ptr %value, align 1
  %tobool = trunc i8 %11 to i1
  ret i1 %tobool
}

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i1 @one_argument() #3 {
entry:
  %0 = load ptr, ptr @argv, align 8
  %1 = load i32, ptr @pos, align 4
  %inc = add nsw i32 %1, 1
  store i32 %inc, ptr @pos, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds ptr, ptr %0, i64 %idxprom
  %2 = load ptr, ptr %arrayidx, align 8
  %arrayidx1 = getelementptr inbounds i8, ptr %2, i64 0
  %3 = load i8, ptr %arrayidx1, align 1
  %conv = sext i8 %3 to i32
  %cmp = icmp ne i32 %conv, 0
  ret i1 %cmp
}

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i1 @two_arguments() #3 {
entry:
  %value = alloca i8, align 1
  %0 = load ptr, ptr @argv, align 8
  %1 = load i32, ptr @pos, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds ptr, ptr %0, i64 %idxprom
  %2 = load ptr, ptr %arrayidx, align 8
  %call = call i32 @strcmp(ptr noundef %2, ptr noundef @.str.46) #12
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @advance(i1 noundef zeroext false)
  %call1 = call zeroext i1 @one_argument()
  %lnot = xor i1 %call1, true
  %frombool = zext i1 %lnot to i8
  store i8 %frombool, ptr %value, align 1
  br label %if.end24

if.else:                                          ; preds = %entry
  %3 = load ptr, ptr @argv, align 8
  %4 = load i32, ptr @pos, align 4
  %idxprom2 = sext i32 %4 to i64
  %arrayidx3 = getelementptr inbounds ptr, ptr %3, i64 %idxprom2
  %5 = load ptr, ptr %arrayidx3, align 8
  %arrayidx4 = getelementptr inbounds i8, ptr %5, i64 0
  %6 = load i8, ptr %arrayidx4, align 1
  %conv = sext i8 %6 to i32
  %cmp5 = icmp eq i32 %conv, 45
  br i1 %cmp5, label %land.lhs.true, label %if.else23

land.lhs.true:                                    ; preds = %if.else
  %7 = load ptr, ptr @argv, align 8
  %8 = load i32, ptr @pos, align 4
  %idxprom7 = sext i32 %8 to i64
  %arrayidx8 = getelementptr inbounds ptr, ptr %7, i64 %idxprom7
  %9 = load ptr, ptr %arrayidx8, align 8
  %arrayidx9 = getelementptr inbounds i8, ptr %9, i64 1
  %10 = load i8, ptr %arrayidx9, align 1
  %conv10 = sext i8 %10 to i32
  %cmp11 = icmp ne i32 %conv10, 0
  br i1 %cmp11, label %land.lhs.true13, label %if.else23

land.lhs.true13:                                  ; preds = %land.lhs.true
  %11 = load ptr, ptr @argv, align 8
  %12 = load i32, ptr @pos, align 4
  %idxprom14 = sext i32 %12 to i64
  %arrayidx15 = getelementptr inbounds ptr, ptr %11, i64 %idxprom14
  %13 = load ptr, ptr %arrayidx15, align 8
  %arrayidx16 = getelementptr inbounds i8, ptr %13, i64 2
  %14 = load i8, ptr %arrayidx16, align 1
  %conv17 = sext i8 %14 to i32
  %cmp18 = icmp eq i32 %conv17, 0
  br i1 %cmp18, label %if.then20, label %if.else23

if.then20:                                        ; preds = %land.lhs.true13
  %call21 = call zeroext i1 @unary_operator()
  %frombool22 = zext i1 %call21 to i8
  store i8 %frombool22, ptr %value, align 1
  br label %if.end

if.else23:                                        ; preds = %land.lhs.true13, %land.lhs.true, %if.else
  call void @beyond() #13
  unreachable

if.end:                                           ; preds = %if.then20
  br label %if.end24

if.end24:                                         ; preds = %if.end, %if.then
  %15 = load i8, ptr %value, align 1
  %tobool = trunc i8 %15 to i1
  ret i1 %tobool
}

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i1 @three_arguments() #3 {
entry:
  %value = alloca i8, align 1
  %0 = load ptr, ptr @argv, align 8
  %1 = load i32, ptr @pos, align 4
  %add = add nsw i32 %1, 1
  %idxprom = sext i32 %add to i64
  %arrayidx = getelementptr inbounds ptr, ptr %0, i64 %idxprom
  %2 = load ptr, ptr %arrayidx, align 8
  %call = call zeroext i1 @binop(ptr noundef %2)
  br i1 %call, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call1 = call zeroext i1 @binary_operator(i1 noundef zeroext false)
  %frombool = zext i1 %call1 to i8
  store i8 %frombool, ptr %value, align 1
  br label %if.end55

if.else:                                          ; preds = %entry
  %3 = load ptr, ptr @argv, align 8
  %4 = load i32, ptr @pos, align 4
  %idxprom2 = sext i32 %4 to i64
  %arrayidx3 = getelementptr inbounds ptr, ptr %3, i64 %idxprom2
  %5 = load ptr, ptr %arrayidx3, align 8
  %call4 = call i32 @strcmp(ptr noundef %5, ptr noundef @.str.46) #12
  %cmp = icmp eq i32 %call4, 0
  br i1 %cmp, label %if.then5, label %if.else8

if.then5:                                         ; preds = %if.else
  call void @advance(i1 noundef zeroext true)
  %call6 = call zeroext i1 @two_arguments()
  %lnot = xor i1 %call6, true
  %frombool7 = zext i1 %lnot to i8
  store i8 %frombool7, ptr %value, align 1
  br label %if.end54

if.else8:                                         ; preds = %if.else
  %6 = load ptr, ptr @argv, align 8
  %7 = load i32, ptr @pos, align 4
  %idxprom9 = sext i32 %7 to i64
  %arrayidx10 = getelementptr inbounds ptr, ptr %6, i64 %idxprom9
  %8 = load ptr, ptr %arrayidx10, align 8
  %call11 = call i32 @strcmp(ptr noundef %8, ptr noundef @.str.47) #12
  %cmp12 = icmp eq i32 %call11, 0
  br i1 %cmp12, label %land.lhs.true, label %if.else21

land.lhs.true:                                    ; preds = %if.else8
  %9 = load ptr, ptr @argv, align 8
  %10 = load i32, ptr @pos, align 4
  %add13 = add nsw i32 %10, 2
  %idxprom14 = sext i32 %add13 to i64
  %arrayidx15 = getelementptr inbounds ptr, ptr %9, i64 %idxprom14
  %11 = load ptr, ptr %arrayidx15, align 8
  %call16 = call i32 @strcmp(ptr noundef %11, ptr noundef @.str.48) #12
  %cmp17 = icmp eq i32 %call16, 0
  br i1 %cmp17, label %if.then18, label %if.else21

if.then18:                                        ; preds = %land.lhs.true
  call void @advance(i1 noundef zeroext false)
  %call19 = call zeroext i1 @one_argument()
  %frombool20 = zext i1 %call19 to i8
  store i8 %frombool20, ptr %value, align 1
  call void @advance(i1 noundef zeroext false)
  br label %if.end53

if.else21:                                        ; preds = %land.lhs.true, %if.else8
  %12 = load ptr, ptr @argv, align 8
  %13 = load i32, ptr @pos, align 4
  %add22 = add nsw i32 %13, 1
  %idxprom23 = sext i32 %add22 to i64
  %arrayidx24 = getelementptr inbounds ptr, ptr %12, i64 %idxprom23
  %14 = load ptr, ptr %arrayidx24, align 8
  %call25 = call i32 @strcmp(ptr noundef %14, ptr noundef @.str.54) #12
  %cmp26 = icmp eq i32 %call25, 0
  br i1 %cmp26, label %if.then44, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else21
  %15 = load ptr, ptr @argv, align 8
  %16 = load i32, ptr @pos, align 4
  %add27 = add nsw i32 %16, 1
  %idxprom28 = sext i32 %add27 to i64
  %arrayidx29 = getelementptr inbounds ptr, ptr %15, i64 %idxprom28
  %17 = load ptr, ptr %arrayidx29, align 8
  %call30 = call i32 @strcmp(ptr noundef %17, ptr noundef @.str.55) #12
  %cmp31 = icmp eq i32 %call30, 0
  br i1 %cmp31, label %if.then44, label %lor.lhs.false32

lor.lhs.false32:                                  ; preds = %lor.lhs.false
  %18 = load ptr, ptr @argv, align 8
  %19 = load i32, ptr @pos, align 4
  %add33 = add nsw i32 %19, 1
  %idxprom34 = sext i32 %add33 to i64
  %arrayidx35 = getelementptr inbounds ptr, ptr %18, i64 %idxprom34
  %20 = load ptr, ptr %arrayidx35, align 8
  %call36 = call i32 @strcmp(ptr noundef %20, ptr noundef @.str.56) #12
  %cmp37 = icmp eq i32 %call36, 0
  br i1 %cmp37, label %if.then44, label %lor.lhs.false38

lor.lhs.false38:                                  ; preds = %lor.lhs.false32
  %21 = load ptr, ptr @argv, align 8
  %22 = load i32, ptr @pos, align 4
  %add39 = add nsw i32 %22, 1
  %idxprom40 = sext i32 %add39 to i64
  %arrayidx41 = getelementptr inbounds ptr, ptr %21, i64 %idxprom40
  %23 = load ptr, ptr %arrayidx41, align 8
  %call42 = call i32 @strcmp(ptr noundef %23, ptr noundef @.str.57) #12
  %cmp43 = icmp eq i32 %call42, 0
  br i1 %cmp43, label %if.then44, label %if.else47

if.then44:                                        ; preds = %lor.lhs.false38, %lor.lhs.false32, %lor.lhs.false, %if.else21
  %call45 = call zeroext i1 @expr()
  %frombool46 = zext i1 %call45 to i8
  store i8 %frombool46, ptr %value, align 1
  br label %if.end

if.else47:                                        ; preds = %lor.lhs.false38
  %call48 = call ptr @gettext(ptr noundef @.str.58) #10
  %24 = load ptr, ptr @argv, align 8
  %25 = load i32, ptr @pos, align 4
  %add49 = add nsw i32 %25, 1
  %idxprom50 = sext i32 %add49 to i64
  %arrayidx51 = getelementptr inbounds ptr, ptr %24, i64 %idxprom50
  %26 = load ptr, ptr %arrayidx51, align 8
  %call52 = call ptr @quote(ptr noundef %26)
  call void (ptr, ...) @test_syntax_error(ptr noundef %call48, ptr noundef %call52) #13
  unreachable

if.end:                                           ; preds = %if.then44
  br label %if.end53

if.end53:                                         ; preds = %if.end, %if.then18
  br label %if.end54

if.end54:                                         ; preds = %if.end53, %if.then5
  br label %if.end55

if.end55:                                         ; preds = %if.end54, %if.then
  %27 = load i8, ptr %value, align 1
  %tobool = trunc i8 %27 to i1
  ret i1 %tobool
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @advance(i1 noundef zeroext %f) #3 {
entry:
  %f.addr = alloca i8, align 1
  %frombool = zext i1 %f to i8
  store i8 %frombool, ptr %f.addr, align 1
  %0 = load i32, ptr @pos, align 4
  %inc = add nsw i32 %0, 1
  store i32 %inc, ptr @pos, align 4
  %1 = load i8, ptr %f.addr, align 1
  %tobool = trunc i8 %1 to i1
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %2 = load i32, ptr @pos, align 4
  %3 = load i32, ptr @argc, align 4
  %cmp = icmp sge i32 %2, %3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @beyond()
  unreachable

if.end:                                           ; preds = %land.lhs.true, %entry
  ret void
}

; Function Attrs: noreturn nounwind
declare void @__assert_fail(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #4

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i1 @expr() #3 {
entry:
  %0 = load i32, ptr @pos, align 4
  %1 = load i32, ptr @argc, align 4
  %cmp = icmp sge i32 %0, %1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @beyond() #13
  unreachable

if.end:                                           ; preds = %entry
  %call = call zeroext i1 @or()
  ret i1 %call
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @beyond() #0 {
entry:
  %call = call ptr @gettext(ptr noundef @.str.53) #10
  %0 = load ptr, ptr @argv, align 8
  %1 = load i32, ptr @argc, align 4
  %sub = sub nsw i32 %1, 1
  %idxprom = sext i32 %sub to i64
  %arrayidx = getelementptr inbounds ptr, ptr %0, i64 %idxprom
  %2 = load ptr, ptr %arrayidx, align 8
  %call1 = call ptr @quote(ptr noundef %2)
  call void (ptr, ...) @test_syntax_error(ptr noundef %call, ptr noundef %call1) #13
  unreachable
}

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i1 @or() #3 {
entry:
  %value = alloca i8, align 1
  store i8 0, ptr %value, align 1
  br label %while.body

while.body:                                       ; preds = %if.end, %entry
  %call = call zeroext i1 @and()
  %conv = zext i1 %call to i32
  %0 = load i8, ptr %value, align 1
  %tobool = trunc i8 %0 to i1
  %conv1 = zext i1 %tobool to i32
  %or = or i32 %conv1, %conv
  %tobool2 = icmp ne i32 %or, 0
  %frombool = zext i1 %tobool2 to i8
  store i8 %frombool, ptr %value, align 1
  %1 = load i32, ptr @pos, align 4
  %2 = load i32, ptr @argc, align 4
  %cmp = icmp slt i32 %1, %2
  br i1 %cmp, label %land.lhs.true, label %if.then

land.lhs.true:                                    ; preds = %while.body
  %3 = load ptr, ptr @argv, align 8
  %4 = load i32, ptr @pos, align 4
  %idxprom = sext i32 %4 to i64
  %arrayidx = getelementptr inbounds ptr, ptr %3, i64 %idxprom
  %5 = load ptr, ptr %arrayidx, align 8
  %call4 = call i32 @strcmp(ptr noundef %5, ptr noundef @.str.55) #12
  %cmp5 = icmp eq i32 %call4, 0
  br i1 %cmp5, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true, %while.body
  %6 = load i8, ptr %value, align 1
  %tobool7 = trunc i8 %6 to i1
  ret i1 %tobool7

if.end:                                           ; preds = %land.lhs.true
  call void @advance(i1 noundef zeroext false)
  br label %while.body
}

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i1 @and() #3 {
entry:
  %value = alloca i8, align 1
  store i8 1, ptr %value, align 1
  br label %while.body

while.body:                                       ; preds = %if.end, %entry
  %call = call zeroext i1 @term()
  %conv = zext i1 %call to i32
  %0 = load i8, ptr %value, align 1
  %tobool = trunc i8 %0 to i1
  %conv1 = zext i1 %tobool to i32
  %and = and i32 %conv1, %conv
  %tobool2 = icmp ne i32 %and, 0
  %frombool = zext i1 %tobool2 to i8
  store i8 %frombool, ptr %value, align 1
  %1 = load i32, ptr @pos, align 4
  %2 = load i32, ptr @argc, align 4
  %cmp = icmp slt i32 %1, %2
  br i1 %cmp, label %land.lhs.true, label %if.then

land.lhs.true:                                    ; preds = %while.body
  %3 = load ptr, ptr @argv, align 8
  %4 = load i32, ptr @pos, align 4
  %idxprom = sext i32 %4 to i64
  %arrayidx = getelementptr inbounds ptr, ptr %3, i64 %idxprom
  %5 = load ptr, ptr %arrayidx, align 8
  %call4 = call i32 @strcmp(ptr noundef %5, ptr noundef @.str.54) #12
  %cmp5 = icmp eq i32 %call4, 0
  br i1 %cmp5, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true, %while.body
  %6 = load i8, ptr %value, align 1
  %tobool7 = trunc i8 %6 to i1
  ret i1 %tobool7

if.end:                                           ; preds = %land.lhs.true
  call void @advance(i1 noundef zeroext false)
  br label %while.body
}

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i1 @term() #3 {
entry:
  %value = alloca i8, align 1
  %negated = alloca i8, align 1
  %nargs = alloca i32, align 4
  store i8 0, ptr %negated, align 1
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i32, ptr @pos, align 4
  %1 = load i32, ptr @argc, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %while.cond
  %2 = load ptr, ptr @argv, align 8
  %3 = load i32, ptr @pos, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds ptr, ptr %2, i64 %idxprom
  %4 = load ptr, ptr %arrayidx, align 8
  %arrayidx1 = getelementptr inbounds i8, ptr %4, i64 0
  %5 = load i8, ptr %arrayidx1, align 1
  %conv = sext i8 %5 to i32
  %cmp2 = icmp eq i32 %conv, 33
  br i1 %cmp2, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true
  %6 = load ptr, ptr @argv, align 8
  %7 = load i32, ptr @pos, align 4
  %idxprom4 = sext i32 %7 to i64
  %arrayidx5 = getelementptr inbounds ptr, ptr %6, i64 %idxprom4
  %8 = load ptr, ptr %arrayidx5, align 8
  %arrayidx6 = getelementptr inbounds i8, ptr %8, i64 1
  %9 = load i8, ptr %arrayidx6, align 1
  %conv7 = sext i8 %9 to i32
  %cmp8 = icmp eq i32 %conv7, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %10 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %cmp8, %land.rhs ]
  br i1 %10, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  call void @advance(i1 noundef zeroext true)
  %11 = load i8, ptr %negated, align 1
  %tobool = trunc i8 %11 to i1
  %lnot = xor i1 %tobool, true
  %frombool = zext i1 %lnot to i8
  store i8 %frombool, ptr %negated, align 1
  br label %while.cond, !llvm.loop !8

while.end:                                        ; preds = %land.end
  %12 = load i32, ptr @pos, align 4
  %13 = load i32, ptr @argc, align 4
  %cmp10 = icmp sge i32 %12, %13
  br i1 %cmp10, label %if.then, label %if.end

if.then:                                          ; preds = %while.end
  call void @beyond() #13
  unreachable

if.end:                                           ; preds = %while.end
  %14 = load ptr, ptr @argv, align 8
  %15 = load i32, ptr @pos, align 4
  %idxprom12 = sext i32 %15 to i64
  %arrayidx13 = getelementptr inbounds ptr, ptr %14, i64 %idxprom12
  %16 = load ptr, ptr %arrayidx13, align 8
  %arrayidx14 = getelementptr inbounds i8, ptr %16, i64 0
  %17 = load i8, ptr %arrayidx14, align 1
  %conv15 = sext i8 %17 to i32
  %cmp16 = icmp eq i32 %conv15, 40
  br i1 %cmp16, label %land.lhs.true18, label %if.else68

land.lhs.true18:                                  ; preds = %if.end
  %18 = load ptr, ptr @argv, align 8
  %19 = load i32, ptr @pos, align 4
  %idxprom19 = sext i32 %19 to i64
  %arrayidx20 = getelementptr inbounds ptr, ptr %18, i64 %idxprom19
  %20 = load ptr, ptr %arrayidx20, align 8
  %arrayidx21 = getelementptr inbounds i8, ptr %20, i64 1
  %21 = load i8, ptr %arrayidx21, align 1
  %conv22 = sext i8 %21 to i32
  %cmp23 = icmp eq i32 %conv22, 0
  br i1 %cmp23, label %if.then25, label %if.else68

if.then25:                                        ; preds = %land.lhs.true18
  call void @advance(i1 noundef zeroext true)
  store i32 1, ptr %nargs, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then25
  %22 = load i32, ptr @pos, align 4
  %23 = load i32, ptr %nargs, align 4
  %add = add nsw i32 %22, %23
  %24 = load i32, ptr @argc, align 4
  %cmp26 = icmp slt i32 %add, %24
  br i1 %cmp26, label %land.rhs28, label %land.end35

land.rhs28:                                       ; preds = %for.cond
  %25 = load ptr, ptr @argv, align 8
  %26 = load i32, ptr @pos, align 4
  %27 = load i32, ptr %nargs, align 4
  %add29 = add nsw i32 %26, %27
  %idxprom30 = sext i32 %add29 to i64
  %arrayidx31 = getelementptr inbounds ptr, ptr %25, i64 %idxprom30
  %28 = load ptr, ptr %arrayidx31, align 8
  %call = call i32 @strcmp(ptr noundef %28, ptr noundef @.str.48) #12
  %cmp32 = icmp eq i32 %call, 0
  %lnot34 = xor i1 %cmp32, true
  br label %land.end35

land.end35:                                       ; preds = %land.rhs28, %for.cond
  %29 = phi i1 [ false, %for.cond ], [ %lnot34, %land.rhs28 ]
  br i1 %29, label %for.body, label %for.end

for.body:                                         ; preds = %land.end35
  %30 = load i32, ptr %nargs, align 4
  %cmp36 = icmp eq i32 %30, 4
  br i1 %cmp36, label %if.then38, label %if.end39

if.then38:                                        ; preds = %for.body
  %31 = load i32, ptr @argc, align 4
  %32 = load i32, ptr @pos, align 4
  %sub = sub nsw i32 %31, %32
  store i32 %sub, ptr %nargs, align 4
  br label %for.end

if.end39:                                         ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end39
  %33 = load i32, ptr %nargs, align 4
  %inc = add nsw i32 %33, 1
  store i32 %inc, ptr %nargs, align 4
  br label %for.cond, !llvm.loop !9

for.end:                                          ; preds = %if.then38, %land.end35
  %34 = load i32, ptr %nargs, align 4
  %call40 = call zeroext i1 @posixtest(i32 noundef %34)
  %frombool41 = zext i1 %call40 to i8
  store i8 %frombool41, ptr %value, align 1
  %35 = load ptr, ptr @argv, align 8
  %36 = load i32, ptr @pos, align 4
  %idxprom42 = sext i32 %36 to i64
  %arrayidx43 = getelementptr inbounds ptr, ptr %35, i64 %idxprom42
  %37 = load ptr, ptr %arrayidx43, align 8
  %cmp44 = icmp eq ptr %37, null
  br i1 %cmp44, label %if.then46, label %if.else

if.then46:                                        ; preds = %for.end
  %call47 = call ptr @gettext(ptr noundef @.str.77) #10
  %call48 = call ptr @quote(ptr noundef @.str.48)
  call void (ptr, ...) @test_syntax_error(ptr noundef %call47, ptr noundef %call48) #13
  unreachable

if.else:                                          ; preds = %for.end
  %38 = load ptr, ptr @argv, align 8
  %39 = load i32, ptr @pos, align 4
  %idxprom49 = sext i32 %39 to i64
  %arrayidx50 = getelementptr inbounds ptr, ptr %38, i64 %idxprom49
  %40 = load ptr, ptr %arrayidx50, align 8
  %arrayidx51 = getelementptr inbounds i8, ptr %40, i64 0
  %41 = load i8, ptr %arrayidx51, align 1
  %conv52 = sext i8 %41 to i32
  %cmp53 = icmp ne i32 %conv52, 41
  br i1 %cmp53, label %if.then60, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else
  %42 = load ptr, ptr @argv, align 8
  %43 = load i32, ptr @pos, align 4
  %idxprom55 = sext i32 %43 to i64
  %arrayidx56 = getelementptr inbounds ptr, ptr %42, i64 %idxprom55
  %44 = load ptr, ptr %arrayidx56, align 8
  %arrayidx57 = getelementptr inbounds i8, ptr %44, i64 1
  %45 = load i8, ptr %arrayidx57, align 1
  %conv58 = sext i8 %45 to i32
  %tobool59 = icmp ne i32 %conv58, 0
  br i1 %tobool59, label %if.then60, label %if.end66

if.then60:                                        ; preds = %lor.lhs.false, %if.else
  %call61 = call ptr @gettext(ptr noundef @.str.78) #10
  %call62 = call ptr @quote_n(i32 noundef 0, ptr noundef @.str.48)
  %46 = load ptr, ptr @argv, align 8
  %47 = load i32, ptr @pos, align 4
  %idxprom63 = sext i32 %47 to i64
  %arrayidx64 = getelementptr inbounds ptr, ptr %46, i64 %idxprom63
  %48 = load ptr, ptr %arrayidx64, align 8
  %call65 = call ptr @quote_n(i32 noundef 1, ptr noundef %48)
  call void (ptr, ...) @test_syntax_error(ptr noundef %call61, ptr noundef %call62, ptr noundef %call65) #13
  unreachable

if.end66:                                         ; preds = %lor.lhs.false
  br label %if.end67

if.end67:                                         ; preds = %if.end66
  call void @advance(i1 noundef zeroext false)
  br label %if.end134

if.else68:                                        ; preds = %land.lhs.true18, %if.end
  %49 = load i32, ptr @argc, align 4
  %50 = load i32, ptr @pos, align 4
  %sub69 = sub nsw i32 %49, %50
  %cmp70 = icmp sle i32 4, %sub69
  br i1 %cmp70, label %land.lhs.true72, label %if.else87

land.lhs.true72:                                  ; preds = %if.else68
  %51 = load ptr, ptr @argv, align 8
  %52 = load i32, ptr @pos, align 4
  %idxprom73 = sext i32 %52 to i64
  %arrayidx74 = getelementptr inbounds ptr, ptr %51, i64 %idxprom73
  %53 = load ptr, ptr %arrayidx74, align 8
  %call75 = call i32 @strcmp(ptr noundef %53, ptr noundef @.str.71) #12
  %cmp76 = icmp eq i32 %call75, 0
  br i1 %cmp76, label %land.lhs.true78, label %if.else87

land.lhs.true78:                                  ; preds = %land.lhs.true72
  %54 = load ptr, ptr @argv, align 8
  %55 = load i32, ptr @pos, align 4
  %add79 = add nsw i32 %55, 2
  %idxprom80 = sext i32 %add79 to i64
  %arrayidx81 = getelementptr inbounds ptr, ptr %54, i64 %idxprom80
  %56 = load ptr, ptr %arrayidx81, align 8
  %call82 = call zeroext i1 @binop(ptr noundef %56)
  br i1 %call82, label %if.then84, label %if.else87

if.then84:                                        ; preds = %land.lhs.true78
  %call85 = call zeroext i1 @binary_operator(i1 noundef zeroext true)
  %frombool86 = zext i1 %call85 to i8
  store i8 %frombool86, ptr %value, align 1
  br label %if.end133

if.else87:                                        ; preds = %land.lhs.true78, %land.lhs.true72, %if.else68
  %57 = load i32, ptr @argc, align 4
  %58 = load i32, ptr @pos, align 4
  %sub88 = sub nsw i32 %57, %58
  %cmp89 = icmp sle i32 3, %sub88
  br i1 %cmp89, label %land.lhs.true91, label %if.else100

land.lhs.true91:                                  ; preds = %if.else87
  %59 = load ptr, ptr @argv, align 8
  %60 = load i32, ptr @pos, align 4
  %add92 = add nsw i32 %60, 1
  %idxprom93 = sext i32 %add92 to i64
  %arrayidx94 = getelementptr inbounds ptr, ptr %59, i64 %idxprom93
  %61 = load ptr, ptr %arrayidx94, align 8
  %call95 = call zeroext i1 @binop(ptr noundef %61)
  br i1 %call95, label %if.then97, label %if.else100

if.then97:                                        ; preds = %land.lhs.true91
  %call98 = call zeroext i1 @binary_operator(i1 noundef zeroext false)
  %frombool99 = zext i1 %call98 to i8
  store i8 %frombool99, ptr %value, align 1
  br label %if.end132

if.else100:                                       ; preds = %land.lhs.true91, %if.else87
  %62 = load ptr, ptr @argv, align 8
  %63 = load i32, ptr @pos, align 4
  %idxprom101 = sext i32 %63 to i64
  %arrayidx102 = getelementptr inbounds ptr, ptr %62, i64 %idxprom101
  %64 = load ptr, ptr %arrayidx102, align 8
  %arrayidx103 = getelementptr inbounds i8, ptr %64, i64 0
  %65 = load i8, ptr %arrayidx103, align 1
  %conv104 = sext i8 %65 to i32
  %cmp105 = icmp eq i32 %conv104, 45
  br i1 %cmp105, label %land.lhs.true107, label %if.else123

land.lhs.true107:                                 ; preds = %if.else100
  %66 = load ptr, ptr @argv, align 8
  %67 = load i32, ptr @pos, align 4
  %idxprom108 = sext i32 %67 to i64
  %arrayidx109 = getelementptr inbounds ptr, ptr %66, i64 %idxprom108
  %68 = load ptr, ptr %arrayidx109, align 8
  %arrayidx110 = getelementptr inbounds i8, ptr %68, i64 1
  %69 = load i8, ptr %arrayidx110, align 1
  %conv111 = sext i8 %69 to i32
  %tobool112 = icmp ne i32 %conv111, 0
  br i1 %tobool112, label %land.lhs.true113, label %if.else123

land.lhs.true113:                                 ; preds = %land.lhs.true107
  %70 = load ptr, ptr @argv, align 8
  %71 = load i32, ptr @pos, align 4
  %idxprom114 = sext i32 %71 to i64
  %arrayidx115 = getelementptr inbounds ptr, ptr %70, i64 %idxprom114
  %72 = load ptr, ptr %arrayidx115, align 8
  %arrayidx116 = getelementptr inbounds i8, ptr %72, i64 2
  %73 = load i8, ptr %arrayidx116, align 1
  %conv117 = sext i8 %73 to i32
  %cmp118 = icmp eq i32 %conv117, 0
  br i1 %cmp118, label %if.then120, label %if.else123

if.then120:                                       ; preds = %land.lhs.true113
  %call121 = call zeroext i1 @unary_operator()
  %frombool122 = zext i1 %call121 to i8
  store i8 %frombool122, ptr %value, align 1
  br label %if.end131

if.else123:                                       ; preds = %land.lhs.true113, %land.lhs.true107, %if.else100
  %74 = load ptr, ptr @argv, align 8
  %75 = load i32, ptr @pos, align 4
  %idxprom124 = sext i32 %75 to i64
  %arrayidx125 = getelementptr inbounds ptr, ptr %74, i64 %idxprom124
  %76 = load ptr, ptr %arrayidx125, align 8
  %arrayidx126 = getelementptr inbounds i8, ptr %76, i64 0
  %77 = load i8, ptr %arrayidx126, align 1
  %conv127 = sext i8 %77 to i32
  %cmp128 = icmp ne i32 %conv127, 0
  %frombool130 = zext i1 %cmp128 to i8
  store i8 %frombool130, ptr %value, align 1
  call void @advance(i1 noundef zeroext false)
  br label %if.end131

if.end131:                                        ; preds = %if.else123, %if.then120
  br label %if.end132

if.end132:                                        ; preds = %if.end131, %if.then97
  br label %if.end133

if.end133:                                        ; preds = %if.end132, %if.then84
  br label %if.end134

if.end134:                                        ; preds = %if.end133, %if.end67
  %78 = load i8, ptr %negated, align 1
  %tobool135 = trunc i8 %78 to i1
  %conv136 = zext i1 %tobool135 to i32
  %79 = load i8, ptr %value, align 1
  %tobool137 = trunc i8 %79 to i1
  %conv138 = zext i1 %tobool137 to i32
  %xor = xor i32 %conv136, %conv138
  %tobool139 = icmp ne i32 %xor, 0
  ret i1 %tobool139
}

declare ptr @quote_n(i32 noundef, ptr noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i1 @binop(ptr noundef %s) #3 {
entry:
  %s.addr = alloca ptr, align 8
  store ptr %s, ptr %s.addr, align 8
  %0 = load ptr, ptr %s.addr, align 8
  %call = call i32 @strcmp(ptr noundef %0, ptr noundef @.str.59) #12
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %lor.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load ptr, ptr %s.addr, align 8
  %call1 = call i32 @strcmp(ptr noundef %1, ptr noundef @.str.60) #12
  %cmp2 = icmp eq i32 %call1, 0
  br i1 %cmp2, label %lor.end, label %lor.lhs.false3

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %2 = load ptr, ptr %s.addr, align 8
  %call4 = call i32 @strcmp(ptr noundef %2, ptr noundef @.str.61) #12
  %cmp5 = icmp eq i32 %call4, 0
  br i1 %cmp5, label %lor.end, label %lor.lhs.false6

lor.lhs.false6:                                   ; preds = %lor.lhs.false3
  %3 = load ptr, ptr %s.addr, align 8
  %call7 = call i32 @strcmp(ptr noundef %3, ptr noundef @.str.62) #12
  %cmp8 = icmp eq i32 %call7, 0
  br i1 %cmp8, label %lor.end, label %lor.lhs.false9

lor.lhs.false9:                                   ; preds = %lor.lhs.false6
  %4 = load ptr, ptr %s.addr, align 8
  %call10 = call i32 @strcmp(ptr noundef %4, ptr noundef @.str.56) #12
  %cmp11 = icmp eq i32 %call10, 0
  br i1 %cmp11, label %lor.end, label %lor.lhs.false12

lor.lhs.false12:                                  ; preds = %lor.lhs.false9
  %5 = load ptr, ptr %s.addr, align 8
  %call13 = call i32 @strcmp(ptr noundef %5, ptr noundef @.str.57) #12
  %cmp14 = icmp eq i32 %call13, 0
  br i1 %cmp14, label %lor.end, label %lor.lhs.false15

lor.lhs.false15:                                  ; preds = %lor.lhs.false12
  %6 = load ptr, ptr %s.addr, align 8
  %call16 = call i32 @strcmp(ptr noundef %6, ptr noundef @.str.63) #12
  %cmp17 = icmp eq i32 %call16, 0
  br i1 %cmp17, label %lor.end, label %lor.lhs.false18

lor.lhs.false18:                                  ; preds = %lor.lhs.false15
  %7 = load ptr, ptr %s.addr, align 8
  %call19 = call i32 @strcmp(ptr noundef %7, ptr noundef @.str.64) #12
  %cmp20 = icmp eq i32 %call19, 0
  br i1 %cmp20, label %lor.end, label %lor.lhs.false21

lor.lhs.false21:                                  ; preds = %lor.lhs.false18
  %8 = load ptr, ptr %s.addr, align 8
  %call22 = call i32 @strcmp(ptr noundef %8, ptr noundef @.str.65) #12
  %cmp23 = icmp eq i32 %call22, 0
  br i1 %cmp23, label %lor.end, label %lor.lhs.false24

lor.lhs.false24:                                  ; preds = %lor.lhs.false21
  %9 = load ptr, ptr %s.addr, align 8
  %call25 = call i32 @strcmp(ptr noundef %9, ptr noundef @.str.66) #12
  %cmp26 = icmp eq i32 %call25, 0
  br i1 %cmp26, label %lor.end, label %lor.lhs.false27

lor.lhs.false27:                                  ; preds = %lor.lhs.false24
  %10 = load ptr, ptr %s.addr, align 8
  %call28 = call i32 @strcmp(ptr noundef %10, ptr noundef @.str.67) #12
  %cmp29 = icmp eq i32 %call28, 0
  br i1 %cmp29, label %lor.end, label %lor.lhs.false30

lor.lhs.false30:                                  ; preds = %lor.lhs.false27
  %11 = load ptr, ptr %s.addr, align 8
  %call31 = call i32 @strcmp(ptr noundef %11, ptr noundef @.str.68) #12
  %cmp32 = icmp eq i32 %call31, 0
  br i1 %cmp32, label %lor.end, label %lor.lhs.false33

lor.lhs.false33:                                  ; preds = %lor.lhs.false30
  %12 = load ptr, ptr %s.addr, align 8
  %call34 = call i32 @strcmp(ptr noundef %12, ptr noundef @.str.69) #12
  %cmp35 = icmp eq i32 %call34, 0
  br i1 %cmp35, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %lor.lhs.false33
  %13 = load ptr, ptr %s.addr, align 8
  %call36 = call i32 @strcmp(ptr noundef %13, ptr noundef @.str.70) #12
  %cmp37 = icmp eq i32 %call36, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %lor.lhs.false33, %lor.lhs.false30, %lor.lhs.false27, %lor.lhs.false24, %lor.lhs.false21, %lor.lhs.false18, %lor.lhs.false15, %lor.lhs.false12, %lor.lhs.false9, %lor.lhs.false6, %lor.lhs.false3, %lor.lhs.false, %entry
  %14 = phi i1 [ true, %lor.lhs.false33 ], [ true, %lor.lhs.false30 ], [ true, %lor.lhs.false27 ], [ true, %lor.lhs.false24 ], [ true, %lor.lhs.false21 ], [ true, %lor.lhs.false18 ], [ true, %lor.lhs.false15 ], [ true, %lor.lhs.false12 ], [ true, %lor.lhs.false9 ], [ true, %lor.lhs.false6 ], [ true, %lor.lhs.false3 ], [ true, %lor.lhs.false ], [ true, %entry ], [ %cmp37, %lor.rhs ]
  ret i1 %14
}

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i1 @binary_operator(i1 noundef zeroext %l_is_l) #3 {
entry:
  %retval = alloca i1, align 1
  %l_is_l.addr = alloca i8, align 1
  %op = alloca i32, align 4
  %stat_buf = alloca %struct.stat, align 8
  %stat_spare = alloca %struct.stat, align 8
  %r_is_l = alloca i8, align 1
  %lbuf = alloca [21 x i8], align 16
  %rbuf = alloca [21 x i8], align 16
  %l = alloca ptr, align 8
  %r = alloca ptr, align 8
  %cmp98 = alloca i32, align 4
  %xe_operator = alloca i8, align 1
  %lt = alloca %struct.timespec, align 8
  %rt = alloca %struct.timespec, align 8
  %le = alloca i8, align 1
  %re = alloca i8, align 1
  %lt247 = alloca %struct.timespec, align 8
  %rt248 = alloca %struct.timespec, align 8
  %le249 = alloca i8, align 1
  %re250 = alloca i8, align 1
  %value = alloca i8, align 1
  %value328 = alloca i8, align 1
  %value347 = alloca i8, align 1
  %value366 = alloca i8, align 1
  %frombool = zext i1 %l_is_l to i8
  store i8 %frombool, ptr %l_is_l.addr, align 1
  %0 = load i8, ptr %l_is_l.addr, align 1
  %tobool = trunc i8 %0 to i1
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @advance(i1 noundef zeroext false)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load i32, ptr @pos, align 4
  %add = add nsw i32 %1, 1
  store i32 %add, ptr %op, align 4
  %2 = load i32, ptr %op, align 4
  %3 = load i32, ptr @argc, align 4
  %sub = sub nsw i32 %3, 2
  %cmp = icmp slt i32 %2, %sub
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.end
  %4 = load ptr, ptr @argv, align 8
  %5 = load i32, ptr %op, align 4
  %add1 = add nsw i32 %5, 1
  %idxprom = sext i32 %add1 to i64
  %arrayidx = getelementptr inbounds ptr, ptr %4, i64 %idxprom
  %6 = load ptr, ptr %arrayidx, align 8
  %call = call i32 @strcmp(ptr noundef %6, ptr noundef @.str.71) #12
  %cmp2 = icmp eq i32 %call, 0
  br i1 %cmp2, label %if.then3, label %if.else

if.then3:                                         ; preds = %land.lhs.true
  store i8 1, ptr %r_is_l, align 1
  call void @advance(i1 noundef zeroext false)
  br label %if.end4

if.else:                                          ; preds = %land.lhs.true, %if.end
  store i8 0, ptr %r_is_l, align 1
  br label %if.end4

if.end4:                                          ; preds = %if.else, %if.then3
  %7 = load ptr, ptr @argv, align 8
  %8 = load i32, ptr %op, align 4
  %idxprom5 = sext i32 %8 to i64
  %arrayidx6 = getelementptr inbounds ptr, ptr %7, i64 %idxprom5
  %9 = load ptr, ptr %arrayidx6, align 8
  %arrayidx7 = getelementptr inbounds i8, ptr %9, i64 0
  %10 = load i8, ptr %arrayidx7, align 1
  %conv = sext i8 %10 to i32
  %cmp8 = icmp eq i32 %conv, 45
  br i1 %cmp8, label %if.then10, label %if.end285

if.then10:                                        ; preds = %if.end4
  %11 = load ptr, ptr @argv, align 8
  %12 = load i32, ptr %op, align 4
  %idxprom11 = sext i32 %12 to i64
  %arrayidx12 = getelementptr inbounds ptr, ptr %11, i64 %idxprom11
  %13 = load ptr, ptr %arrayidx12, align 8
  %arrayidx13 = getelementptr inbounds i8, ptr %13, i64 1
  %14 = load i8, ptr %arrayidx13, align 1
  %conv14 = sext i8 %14 to i32
  %cmp15 = icmp eq i32 %conv14, 108
  br i1 %cmp15, label %land.lhs.true23, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then10
  %15 = load ptr, ptr @argv, align 8
  %16 = load i32, ptr %op, align 4
  %idxprom17 = sext i32 %16 to i64
  %arrayidx18 = getelementptr inbounds ptr, ptr %15, i64 %idxprom17
  %17 = load ptr, ptr %arrayidx18, align 8
  %arrayidx19 = getelementptr inbounds i8, ptr %17, i64 1
  %18 = load i8, ptr %arrayidx19, align 1
  %conv20 = sext i8 %18 to i32
  %cmp21 = icmp eq i32 %conv20, 103
  br i1 %cmp21, label %land.lhs.true23, label %lor.lhs.false37

land.lhs.true23:                                  ; preds = %lor.lhs.false, %if.then10
  %19 = load ptr, ptr @argv, align 8
  %20 = load i32, ptr %op, align 4
  %idxprom24 = sext i32 %20 to i64
  %arrayidx25 = getelementptr inbounds ptr, ptr %19, i64 %idxprom24
  %21 = load ptr, ptr %arrayidx25, align 8
  %arrayidx26 = getelementptr inbounds i8, ptr %21, i64 2
  %22 = load i8, ptr %arrayidx26, align 1
  %conv27 = sext i8 %22 to i32
  %cmp28 = icmp eq i32 %conv27, 101
  br i1 %cmp28, label %land.lhs.true65, label %lor.lhs.false30

lor.lhs.false30:                                  ; preds = %land.lhs.true23
  %23 = load ptr, ptr @argv, align 8
  %24 = load i32, ptr %op, align 4
  %idxprom31 = sext i32 %24 to i64
  %arrayidx32 = getelementptr inbounds ptr, ptr %23, i64 %idxprom31
  %25 = load ptr, ptr %arrayidx32, align 8
  %arrayidx33 = getelementptr inbounds i8, ptr %25, i64 2
  %26 = load i8, ptr %arrayidx33, align 1
  %conv34 = sext i8 %26 to i32
  %cmp35 = icmp eq i32 %conv34, 116
  br i1 %cmp35, label %land.lhs.true65, label %lor.lhs.false37

lor.lhs.false37:                                  ; preds = %lor.lhs.false30, %lor.lhs.false
  %27 = load ptr, ptr @argv, align 8
  %28 = load i32, ptr %op, align 4
  %idxprom38 = sext i32 %28 to i64
  %arrayidx39 = getelementptr inbounds ptr, ptr %27, i64 %idxprom38
  %29 = load ptr, ptr %arrayidx39, align 8
  %arrayidx40 = getelementptr inbounds i8, ptr %29, i64 1
  %30 = load i8, ptr %arrayidx40, align 1
  %conv41 = sext i8 %30 to i32
  %cmp42 = icmp eq i32 %conv41, 101
  br i1 %cmp42, label %land.lhs.true44, label %lor.lhs.false51

land.lhs.true44:                                  ; preds = %lor.lhs.false37
  %31 = load ptr, ptr @argv, align 8
  %32 = load i32, ptr %op, align 4
  %idxprom45 = sext i32 %32 to i64
  %arrayidx46 = getelementptr inbounds ptr, ptr %31, i64 %idxprom45
  %33 = load ptr, ptr %arrayidx46, align 8
  %arrayidx47 = getelementptr inbounds i8, ptr %33, i64 2
  %34 = load i8, ptr %arrayidx47, align 1
  %conv48 = sext i8 %34 to i32
  %cmp49 = icmp eq i32 %conv48, 113
  br i1 %cmp49, label %land.lhs.true65, label %lor.lhs.false51

lor.lhs.false51:                                  ; preds = %land.lhs.true44, %lor.lhs.false37
  %35 = load ptr, ptr @argv, align 8
  %36 = load i32, ptr %op, align 4
  %idxprom52 = sext i32 %36 to i64
  %arrayidx53 = getelementptr inbounds ptr, ptr %35, i64 %idxprom52
  %37 = load ptr, ptr %arrayidx53, align 8
  %arrayidx54 = getelementptr inbounds i8, ptr %37, i64 1
  %38 = load i8, ptr %arrayidx54, align 1
  %conv55 = sext i8 %38 to i32
  %cmp56 = icmp eq i32 %conv55, 110
  br i1 %cmp56, label %land.lhs.true58, label %if.end144

land.lhs.true58:                                  ; preds = %lor.lhs.false51
  %39 = load ptr, ptr @argv, align 8
  %40 = load i32, ptr %op, align 4
  %idxprom59 = sext i32 %40 to i64
  %arrayidx60 = getelementptr inbounds ptr, ptr %39, i64 %idxprom59
  %41 = load ptr, ptr %arrayidx60, align 8
  %arrayidx61 = getelementptr inbounds i8, ptr %41, i64 2
  %42 = load i8, ptr %arrayidx61, align 1
  %conv62 = sext i8 %42 to i32
  %cmp63 = icmp eq i32 %conv62, 101
  br i1 %cmp63, label %land.lhs.true65, label %if.end144

land.lhs.true65:                                  ; preds = %land.lhs.true58, %land.lhs.true44, %lor.lhs.false30, %land.lhs.true23
  %43 = load ptr, ptr @argv, align 8
  %44 = load i32, ptr %op, align 4
  %idxprom66 = sext i32 %44 to i64
  %arrayidx67 = getelementptr inbounds ptr, ptr %43, i64 %idxprom66
  %45 = load ptr, ptr %arrayidx67, align 8
  %arrayidx68 = getelementptr inbounds i8, ptr %45, i64 3
  %46 = load i8, ptr %arrayidx68, align 1
  %tobool69 = icmp ne i8 %46, 0
  br i1 %tobool69, label %if.end144, label %if.then70

if.then70:                                        ; preds = %land.lhs.true65
  %47 = load i8, ptr %l_is_l.addr, align 1
  %tobool71 = trunc i8 %47 to i1
  br i1 %tobool71, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then70
  %48 = load ptr, ptr @argv, align 8
  %49 = load i32, ptr %op, align 4
  %sub73 = sub nsw i32 %49, 1
  %idxprom74 = sext i32 %sub73 to i64
  %arrayidx75 = getelementptr inbounds ptr, ptr %48, i64 %idxprom74
  %50 = load ptr, ptr %arrayidx75, align 8
  %call76 = call i64 @strlen(ptr noundef %50) #12
  %arraydecay = getelementptr inbounds [21 x i8], ptr %lbuf, i64 0, i64 0
  %call77 = call ptr @umaxtostr(i64 noundef %call76, ptr noundef %arraydecay)
  br label %cond.end

cond.false:                                       ; preds = %if.then70
  %51 = load ptr, ptr @argv, align 8
  %52 = load i32, ptr %op, align 4
  %sub78 = sub nsw i32 %52, 1
  %idxprom79 = sext i32 %sub78 to i64
  %arrayidx80 = getelementptr inbounds ptr, ptr %51, i64 %idxprom79
  %53 = load ptr, ptr %arrayidx80, align 8
  %call81 = call ptr @find_int(ptr noundef %53)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %call77, %cond.true ], [ %call81, %cond.false ]
  store ptr %cond, ptr %l, align 8
  %54 = load i8, ptr %r_is_l, align 1
  %tobool82 = trunc i8 %54 to i1
  br i1 %tobool82, label %cond.true84, label %cond.false91

cond.true84:                                      ; preds = %cond.end
  %55 = load ptr, ptr @argv, align 8
  %56 = load i32, ptr %op, align 4
  %add85 = add nsw i32 %56, 2
  %idxprom86 = sext i32 %add85 to i64
  %arrayidx87 = getelementptr inbounds ptr, ptr %55, i64 %idxprom86
  %57 = load ptr, ptr %arrayidx87, align 8
  %call88 = call i64 @strlen(ptr noundef %57) #12
  %arraydecay89 = getelementptr inbounds [21 x i8], ptr %rbuf, i64 0, i64 0
  %call90 = call ptr @umaxtostr(i64 noundef %call88, ptr noundef %arraydecay89)
  br label %cond.end96

cond.false91:                                     ; preds = %cond.end
  %58 = load ptr, ptr @argv, align 8
  %59 = load i32, ptr %op, align 4
  %add92 = add nsw i32 %59, 1
  %idxprom93 = sext i32 %add92 to i64
  %arrayidx94 = getelementptr inbounds ptr, ptr %58, i64 %idxprom93
  %60 = load ptr, ptr %arrayidx94, align 8
  %call95 = call ptr @find_int(ptr noundef %60)
  br label %cond.end96

cond.end96:                                       ; preds = %cond.false91, %cond.true84
  %cond97 = phi ptr [ %call90, %cond.true84 ], [ %call95, %cond.false91 ]
  store ptr %cond97, ptr %r, align 8
  %61 = load ptr, ptr %l, align 8
  %62 = load ptr, ptr %r, align 8
  %call99 = call i32 @strintcmp(ptr noundef %61, ptr noundef %62) #12
  store i32 %call99, ptr %cmp98, align 4
  %63 = load ptr, ptr @argv, align 8
  %64 = load i32, ptr %op, align 4
  %idxprom100 = sext i32 %64 to i64
  %arrayidx101 = getelementptr inbounds ptr, ptr %63, i64 %idxprom100
  %65 = load ptr, ptr %arrayidx101, align 8
  %arrayidx102 = getelementptr inbounds i8, ptr %65, i64 2
  %66 = load i8, ptr %arrayidx102, align 1
  %conv103 = sext i8 %66 to i32
  %cmp104 = icmp eq i32 %conv103, 101
  %frombool106 = zext i1 %cmp104 to i8
  store i8 %frombool106, ptr %xe_operator, align 1
  %67 = load i32, ptr @pos, align 4
  %add107 = add nsw i32 %67, 3
  store i32 %add107, ptr @pos, align 4
  %68 = load ptr, ptr @argv, align 8
  %69 = load i32, ptr %op, align 4
  %idxprom108 = sext i32 %69 to i64
  %arrayidx109 = getelementptr inbounds ptr, ptr %68, i64 %idxprom108
  %70 = load ptr, ptr %arrayidx109, align 8
  %arrayidx110 = getelementptr inbounds i8, ptr %70, i64 1
  %71 = load i8, ptr %arrayidx110, align 1
  %conv111 = sext i8 %71 to i32
  %cmp112 = icmp eq i32 %conv111, 108
  br i1 %cmp112, label %cond.true114, label %cond.false119

cond.true114:                                     ; preds = %cond.end96
  %72 = load i32, ptr %cmp98, align 4
  %73 = load i8, ptr %xe_operator, align 1
  %tobool115 = trunc i8 %73 to i1
  %conv116 = zext i1 %tobool115 to i32
  %cmp117 = icmp slt i32 %72, %conv116
  %conv118 = zext i1 %cmp117 to i32
  br label %cond.end141

cond.false119:                                    ; preds = %cond.end96
  %74 = load ptr, ptr @argv, align 8
  %75 = load i32, ptr %op, align 4
  %idxprom120 = sext i32 %75 to i64
  %arrayidx121 = getelementptr inbounds ptr, ptr %74, i64 %idxprom120
  %76 = load ptr, ptr %arrayidx121, align 8
  %arrayidx122 = getelementptr inbounds i8, ptr %76, i64 1
  %77 = load i8, ptr %arrayidx122, align 1
  %conv123 = sext i8 %77 to i32
  %cmp124 = icmp eq i32 %conv123, 103
  br i1 %cmp124, label %cond.true126, label %cond.false132

cond.true126:                                     ; preds = %cond.false119
  %78 = load i32, ptr %cmp98, align 4
  %79 = load i8, ptr %xe_operator, align 1
  %tobool127 = trunc i8 %79 to i1
  %conv128 = zext i1 %tobool127 to i32
  %sub129 = sub nsw i32 0, %conv128
  %cmp130 = icmp sgt i32 %78, %sub129
  %conv131 = zext i1 %cmp130 to i32
  br label %cond.end139

cond.false132:                                    ; preds = %cond.false119
  %80 = load i32, ptr %cmp98, align 4
  %cmp133 = icmp ne i32 %80, 0
  %conv134 = zext i1 %cmp133 to i32
  %81 = load i8, ptr %xe_operator, align 1
  %tobool135 = trunc i8 %81 to i1
  %conv136 = zext i1 %tobool135 to i32
  %cmp137 = icmp eq i32 %conv134, %conv136
  %conv138 = zext i1 %cmp137 to i32
  br label %cond.end139

cond.end139:                                      ; preds = %cond.false132, %cond.true126
  %cond140 = phi i32 [ %conv131, %cond.true126 ], [ %conv138, %cond.false132 ]
  br label %cond.end141

cond.end141:                                      ; preds = %cond.end139, %cond.true114
  %cond142 = phi i32 [ %conv118, %cond.true114 ], [ %cond140, %cond.end139 ]
  %tobool143 = icmp ne i32 %cond142, 0
  store i1 %tobool143, ptr %retval, align 1
  br label %return

if.end144:                                        ; preds = %land.lhs.true65, %land.lhs.true58, %lor.lhs.false51
  %82 = load ptr, ptr @argv, align 8
  %83 = load i32, ptr %op, align 4
  %idxprom145 = sext i32 %83 to i64
  %arrayidx146 = getelementptr inbounds ptr, ptr %82, i64 %idxprom145
  %84 = load ptr, ptr %arrayidx146, align 8
  %arrayidx147 = getelementptr inbounds i8, ptr %84, i64 1
  %85 = load i8, ptr %arrayidx147, align 1
  %conv148 = sext i8 %85 to i32
  switch i32 %conv148, label %sw.default [
    i32 110, label %sw.bb
    i32 101, label %sw.bb187
    i32 111, label %sw.bb232
  ]

sw.default:                                       ; preds = %if.end144
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end144
  %86 = load ptr, ptr @argv, align 8
  %87 = load i32, ptr %op, align 4
  %idxprom149 = sext i32 %87 to i64
  %arrayidx150 = getelementptr inbounds ptr, ptr %86, i64 %idxprom149
  %88 = load ptr, ptr %arrayidx150, align 8
  %arrayidx151 = getelementptr inbounds i8, ptr %88, i64 2
  %89 = load i8, ptr %arrayidx151, align 1
  %conv152 = sext i8 %89 to i32
  %cmp153 = icmp eq i32 %conv152, 116
  br i1 %cmp153, label %land.lhs.true155, label %if.end186

land.lhs.true155:                                 ; preds = %sw.bb
  %90 = load ptr, ptr @argv, align 8
  %91 = load i32, ptr %op, align 4
  %idxprom156 = sext i32 %91 to i64
  %arrayidx157 = getelementptr inbounds ptr, ptr %90, i64 %idxprom156
  %92 = load ptr, ptr %arrayidx157, align 8
  %arrayidx158 = getelementptr inbounds i8, ptr %92, i64 3
  %93 = load i8, ptr %arrayidx158, align 1
  %tobool159 = icmp ne i8 %93, 0
  br i1 %tobool159, label %if.end186, label %if.then160

if.then160:                                       ; preds = %land.lhs.true155
  %94 = load i32, ptr @pos, align 4
  %add161 = add nsw i32 %94, 3
  store i32 %add161, ptr @pos, align 4
  %95 = load i8, ptr %l_is_l.addr, align 1
  %tobool162 = trunc i8 %95 to i1
  br i1 %tobool162, label %if.then167, label %lor.lhs.false164

lor.lhs.false164:                                 ; preds = %if.then160
  %96 = load i8, ptr %r_is_l, align 1
  %tobool165 = trunc i8 %96 to i1
  br i1 %tobool165, label %if.then167, label %if.end169

if.then167:                                       ; preds = %lor.lhs.false164, %if.then160
  %call168 = call ptr @gettext(ptr noundef @.str.72) #10
  call void (ptr, ...) @test_syntax_error(ptr noundef %call168) #13
  unreachable

if.end169:                                        ; preds = %lor.lhs.false164
  %97 = load ptr, ptr @argv, align 8
  %98 = load i32, ptr %op, align 4
  %sub170 = sub nsw i32 %98, 1
  %idxprom171 = sext i32 %sub170 to i64
  %arrayidx172 = getelementptr inbounds ptr, ptr %97, i64 %idxprom171
  %99 = load ptr, ptr %arrayidx172, align 8
  %call173 = call zeroext i1 @get_mtime(ptr noundef %99, ptr noundef %lt)
  %frombool174 = zext i1 %call173 to i8
  store i8 %frombool174, ptr %le, align 1
  %100 = load ptr, ptr @argv, align 8
  %101 = load i32, ptr %op, align 4
  %add175 = add nsw i32 %101, 1
  %idxprom176 = sext i32 %add175 to i64
  %arrayidx177 = getelementptr inbounds ptr, ptr %100, i64 %idxprom176
  %102 = load ptr, ptr %arrayidx177, align 8
  %call178 = call zeroext i1 @get_mtime(ptr noundef %102, ptr noundef %rt)
  %frombool179 = zext i1 %call178 to i8
  store i8 %frombool179, ptr %re, align 1
  %103 = load i8, ptr %le, align 1
  %tobool180 = trunc i8 %103 to i1
  br i1 %tobool180, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %if.end169
  %104 = load i8, ptr %re, align 1
  %tobool182 = trunc i8 %104 to i1
  br i1 %tobool182, label %lor.rhs, label %lor.end

lor.rhs:                                          ; preds = %land.rhs
  %105 = getelementptr inbounds { i64, i64 }, ptr %lt, i32 0, i32 0
  %106 = load i64, ptr %105, align 8
  %107 = getelementptr inbounds { i64, i64 }, ptr %lt, i32 0, i32 1
  %108 = load i64, ptr %107, align 8
  %109 = getelementptr inbounds { i64, i64 }, ptr %rt, i32 0, i32 0
  %110 = load i64, ptr %109, align 8
  %111 = getelementptr inbounds { i64, i64 }, ptr %rt, i32 0, i32 1
  %112 = load i64, ptr %111, align 8
  %call183 = call i32 @timespec_cmp(i64 %106, i64 %108, i64 %110, i64 %112) #12
  %cmp184 = icmp sgt i32 %call183, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %land.rhs
  %113 = phi i1 [ true, %land.rhs ], [ %cmp184, %lor.rhs ]
  br label %land.end

land.end:                                         ; preds = %lor.end, %if.end169
  %114 = phi i1 [ false, %if.end169 ], [ %113, %lor.end ]
  store i1 %114, ptr %retval, align 1
  br label %return

if.end186:                                        ; preds = %land.lhs.true155, %sw.bb
  br label %sw.epilog

sw.bb187:                                         ; preds = %if.end144
  %115 = load ptr, ptr @argv, align 8
  %116 = load i32, ptr %op, align 4
  %idxprom188 = sext i32 %116 to i64
  %arrayidx189 = getelementptr inbounds ptr, ptr %115, i64 %idxprom188
  %117 = load ptr, ptr %arrayidx189, align 8
  %arrayidx190 = getelementptr inbounds i8, ptr %117, i64 2
  %118 = load i8, ptr %arrayidx190, align 1
  %conv191 = sext i8 %118 to i32
  %cmp192 = icmp eq i32 %conv191, 102
  br i1 %cmp192, label %land.lhs.true194, label %if.end231

land.lhs.true194:                                 ; preds = %sw.bb187
  %119 = load ptr, ptr @argv, align 8
  %120 = load i32, ptr %op, align 4
  %idxprom195 = sext i32 %120 to i64
  %arrayidx196 = getelementptr inbounds ptr, ptr %119, i64 %idxprom195
  %121 = load ptr, ptr %arrayidx196, align 8
  %arrayidx197 = getelementptr inbounds i8, ptr %121, i64 3
  %122 = load i8, ptr %arrayidx197, align 1
  %tobool198 = icmp ne i8 %122, 0
  br i1 %tobool198, label %if.end231, label %if.then199

if.then199:                                       ; preds = %land.lhs.true194
  %123 = load i32, ptr @pos, align 4
  %add200 = add nsw i32 %123, 3
  store i32 %add200, ptr @pos, align 4
  %124 = load i8, ptr %l_is_l.addr, align 1
  %tobool201 = trunc i8 %124 to i1
  br i1 %tobool201, label %if.then206, label %lor.lhs.false203

lor.lhs.false203:                                 ; preds = %if.then199
  %125 = load i8, ptr %r_is_l, align 1
  %tobool204 = trunc i8 %125 to i1
  br i1 %tobool204, label %if.then206, label %if.end208

if.then206:                                       ; preds = %lor.lhs.false203, %if.then199
  %call207 = call ptr @gettext(ptr noundef @.str.73) #10
  call void (ptr, ...) @test_syntax_error(ptr noundef %call207) #13
  unreachable

if.end208:                                        ; preds = %lor.lhs.false203
  %126 = load ptr, ptr @argv, align 8
  %127 = load i32, ptr %op, align 4
  %sub209 = sub nsw i32 %127, 1
  %idxprom210 = sext i32 %sub209 to i64
  %arrayidx211 = getelementptr inbounds ptr, ptr %126, i64 %idxprom210
  %128 = load ptr, ptr %arrayidx211, align 8
  %call212 = call i32 @stat(ptr noundef %128, ptr noundef %stat_buf) #10
  %cmp213 = icmp eq i32 %call212, 0
  br i1 %cmp213, label %land.lhs.true215, label %land.end230

land.lhs.true215:                                 ; preds = %if.end208
  %129 = load ptr, ptr @argv, align 8
  %130 = load i32, ptr %op, align 4
  %add216 = add nsw i32 %130, 1
  %idxprom217 = sext i32 %add216 to i64
  %arrayidx218 = getelementptr inbounds ptr, ptr %129, i64 %idxprom217
  %131 = load ptr, ptr %arrayidx218, align 8
  %call219 = call i32 @stat(ptr noundef %131, ptr noundef %stat_spare) #10
  %cmp220 = icmp eq i32 %call219, 0
  br i1 %cmp220, label %land.lhs.true222, label %land.end230

land.lhs.true222:                                 ; preds = %land.lhs.true215
  %st_dev = getelementptr inbounds %struct.stat, ptr %stat_buf, i32 0, i32 0
  %132 = load i64, ptr %st_dev, align 8
  %st_dev223 = getelementptr inbounds %struct.stat, ptr %stat_spare, i32 0, i32 0
  %133 = load i64, ptr %st_dev223, align 8
  %cmp224 = icmp eq i64 %132, %133
  br i1 %cmp224, label %land.rhs226, label %land.end230

land.rhs226:                                      ; preds = %land.lhs.true222
  %st_ino = getelementptr inbounds %struct.stat, ptr %stat_buf, i32 0, i32 1
  %134 = load i64, ptr %st_ino, align 8
  %st_ino227 = getelementptr inbounds %struct.stat, ptr %stat_spare, i32 0, i32 1
  %135 = load i64, ptr %st_ino227, align 8
  %cmp228 = icmp eq i64 %134, %135
  br label %land.end230

land.end230:                                      ; preds = %land.rhs226, %land.lhs.true222, %land.lhs.true215, %if.end208
  %136 = phi i1 [ false, %land.lhs.true222 ], [ false, %land.lhs.true215 ], [ false, %if.end208 ], [ %cmp228, %land.rhs226 ]
  store i1 %136, ptr %retval, align 1
  br label %return

if.end231:                                        ; preds = %land.lhs.true194, %sw.bb187
  br label %sw.epilog

sw.bb232:                                         ; preds = %if.end144
  %137 = load ptr, ptr @argv, align 8
  %138 = load i32, ptr %op, align 4
  %idxprom233 = sext i32 %138 to i64
  %arrayidx234 = getelementptr inbounds ptr, ptr %137, i64 %idxprom233
  %139 = load ptr, ptr %arrayidx234, align 8
  %arrayidx235 = getelementptr inbounds i8, ptr %139, i64 2
  %140 = load i8, ptr %arrayidx235, align 1
  %conv236 = sext i8 %140 to i32
  %cmp237 = icmp eq i32 116, %conv236
  br i1 %cmp237, label %land.lhs.true239, label %if.end280

land.lhs.true239:                                 ; preds = %sw.bb232
  %141 = load ptr, ptr @argv, align 8
  %142 = load i32, ptr %op, align 4
  %idxprom240 = sext i32 %142 to i64
  %arrayidx241 = getelementptr inbounds ptr, ptr %141, i64 %idxprom240
  %143 = load ptr, ptr %arrayidx241, align 8
  %arrayidx242 = getelementptr inbounds i8, ptr %143, i64 3
  %144 = load i8, ptr %arrayidx242, align 1
  %conv243 = sext i8 %144 to i32
  %cmp244 = icmp eq i32 0, %conv243
  br i1 %cmp244, label %if.then246, label %if.end280

if.then246:                                       ; preds = %land.lhs.true239
  %145 = load i32, ptr @pos, align 4
  %add251 = add nsw i32 %145, 3
  store i32 %add251, ptr @pos, align 4
  %146 = load i8, ptr %l_is_l.addr, align 1
  %tobool252 = trunc i8 %146 to i1
  br i1 %tobool252, label %if.then257, label %lor.lhs.false254

lor.lhs.false254:                                 ; preds = %if.then246
  %147 = load i8, ptr %r_is_l, align 1
  %tobool255 = trunc i8 %147 to i1
  br i1 %tobool255, label %if.then257, label %if.end259

if.then257:                                       ; preds = %lor.lhs.false254, %if.then246
  %call258 = call ptr @gettext(ptr noundef @.str.74) #10
  call void (ptr, ...) @test_syntax_error(ptr noundef %call258) #13
  unreachable

if.end259:                                        ; preds = %lor.lhs.false254
  %148 = load ptr, ptr @argv, align 8
  %149 = load i32, ptr %op, align 4
  %sub260 = sub nsw i32 %149, 1
  %idxprom261 = sext i32 %sub260 to i64
  %arrayidx262 = getelementptr inbounds ptr, ptr %148, i64 %idxprom261
  %150 = load ptr, ptr %arrayidx262, align 8
  %call263 = call zeroext i1 @get_mtime(ptr noundef %150, ptr noundef %lt247)
  %frombool264 = zext i1 %call263 to i8
  store i8 %frombool264, ptr %le249, align 1
  %151 = load ptr, ptr @argv, align 8
  %152 = load i32, ptr %op, align 4
  %add265 = add nsw i32 %152, 1
  %idxprom266 = sext i32 %add265 to i64
  %arrayidx267 = getelementptr inbounds ptr, ptr %151, i64 %idxprom266
  %153 = load ptr, ptr %arrayidx267, align 8
  %call268 = call zeroext i1 @get_mtime(ptr noundef %153, ptr noundef %rt248)
  %frombool269 = zext i1 %call268 to i8
  store i8 %frombool269, ptr %re250, align 1
  %154 = load i8, ptr %re250, align 1
  %tobool270 = trunc i8 %154 to i1
  br i1 %tobool270, label %land.rhs272, label %land.end279

land.rhs272:                                      ; preds = %if.end259
  %155 = load i8, ptr %le249, align 1
  %tobool273 = trunc i8 %155 to i1
  br i1 %tobool273, label %lor.rhs274, label %lor.end278

lor.rhs274:                                       ; preds = %land.rhs272
  %156 = getelementptr inbounds { i64, i64 }, ptr %lt247, i32 0, i32 0
  %157 = load i64, ptr %156, align 8
  %158 = getelementptr inbounds { i64, i64 }, ptr %lt247, i32 0, i32 1
  %159 = load i64, ptr %158, align 8
  %160 = getelementptr inbounds { i64, i64 }, ptr %rt248, i32 0, i32 0
  %161 = load i64, ptr %160, align 8
  %162 = getelementptr inbounds { i64, i64 }, ptr %rt248, i32 0, i32 1
  %163 = load i64, ptr %162, align 8
  %call275 = call i32 @timespec_cmp(i64 %157, i64 %159, i64 %161, i64 %163) #12
  %cmp276 = icmp slt i32 %call275, 0
  br label %lor.end278

lor.end278:                                       ; preds = %lor.rhs274, %land.rhs272
  %164 = phi i1 [ true, %land.rhs272 ], [ %cmp276, %lor.rhs274 ]
  br label %land.end279

land.end279:                                      ; preds = %lor.end278, %if.end259
  %165 = phi i1 [ false, %if.end259 ], [ %164, %lor.end278 ]
  store i1 %165, ptr %retval, align 1
  br label %return

if.end280:                                        ; preds = %land.lhs.true239, %sw.bb232
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end280, %if.end231, %if.end186, %sw.default
  %call281 = call ptr @gettext(ptr noundef @.str.75) #10
  %166 = load ptr, ptr @argv, align 8
  %167 = load i32, ptr %op, align 4
  %idxprom282 = sext i32 %167 to i64
  %arrayidx283 = getelementptr inbounds ptr, ptr %166, i64 %idxprom282
  %168 = load ptr, ptr %arrayidx283, align 8
  %call284 = call ptr @quote(ptr noundef %168)
  call void (ptr, ...) @test_syntax_error(ptr noundef %call281, ptr noundef %call284) #13
  unreachable

if.end285:                                        ; preds = %if.end4
  %169 = load ptr, ptr @argv, align 8
  %170 = load i32, ptr %op, align 4
  %idxprom286 = sext i32 %170 to i64
  %arrayidx287 = getelementptr inbounds ptr, ptr %169, i64 %idxprom286
  %171 = load ptr, ptr %arrayidx287, align 8
  %arrayidx288 = getelementptr inbounds i8, ptr %171, i64 0
  %172 = load i8, ptr %arrayidx288, align 1
  %conv289 = sext i8 %172 to i32
  %cmp290 = icmp eq i32 %conv289, 61
  br i1 %cmp290, label %land.lhs.true292, label %if.end321

land.lhs.true292:                                 ; preds = %if.end285
  %173 = load ptr, ptr @argv, align 8
  %174 = load i32, ptr %op, align 4
  %idxprom293 = sext i32 %174 to i64
  %arrayidx294 = getelementptr inbounds ptr, ptr %173, i64 %idxprom293
  %175 = load ptr, ptr %arrayidx294, align 8
  %arrayidx295 = getelementptr inbounds i8, ptr %175, i64 1
  %176 = load i8, ptr %arrayidx295, align 1
  %tobool296 = icmp ne i8 %176, 0
  br i1 %tobool296, label %lor.lhs.false297, label %if.then309

lor.lhs.false297:                                 ; preds = %land.lhs.true292
  %177 = load ptr, ptr @argv, align 8
  %178 = load i32, ptr %op, align 4
  %idxprom298 = sext i32 %178 to i64
  %arrayidx299 = getelementptr inbounds ptr, ptr %177, i64 %idxprom298
  %179 = load ptr, ptr %arrayidx299, align 8
  %arrayidx300 = getelementptr inbounds i8, ptr %179, i64 1
  %180 = load i8, ptr %arrayidx300, align 1
  %conv301 = sext i8 %180 to i32
  %cmp302 = icmp eq i32 %conv301, 61
  br i1 %cmp302, label %land.lhs.true304, label %if.end321

land.lhs.true304:                                 ; preds = %lor.lhs.false297
  %181 = load ptr, ptr @argv, align 8
  %182 = load i32, ptr %op, align 4
  %idxprom305 = sext i32 %182 to i64
  %arrayidx306 = getelementptr inbounds ptr, ptr %181, i64 %idxprom305
  %183 = load ptr, ptr %arrayidx306, align 8
  %arrayidx307 = getelementptr inbounds i8, ptr %183, i64 2
  %184 = load i8, ptr %arrayidx307, align 1
  %tobool308 = icmp ne i8 %184, 0
  br i1 %tobool308, label %if.end321, label %if.then309

if.then309:                                       ; preds = %land.lhs.true304, %land.lhs.true292
  %185 = load ptr, ptr @argv, align 8
  %186 = load i32, ptr @pos, align 4
  %idxprom310 = sext i32 %186 to i64
  %arrayidx311 = getelementptr inbounds ptr, ptr %185, i64 %idxprom310
  %187 = load ptr, ptr %arrayidx311, align 8
  %188 = load ptr, ptr @argv, align 8
  %189 = load i32, ptr @pos, align 4
  %add312 = add nsw i32 %189, 2
  %idxprom313 = sext i32 %add312 to i64
  %arrayidx314 = getelementptr inbounds ptr, ptr %188, i64 %idxprom313
  %190 = load ptr, ptr %arrayidx314, align 8
  %call315 = call i32 @strcmp(ptr noundef %187, ptr noundef %190) #12
  %cmp316 = icmp eq i32 %call315, 0
  %frombool318 = zext i1 %cmp316 to i8
  store i8 %frombool318, ptr %value, align 1
  %191 = load i32, ptr @pos, align 4
  %add319 = add nsw i32 %191, 3
  store i32 %add319, ptr @pos, align 4
  %192 = load i8, ptr %value, align 1
  %tobool320 = trunc i8 %192 to i1
  store i1 %tobool320, ptr %retval, align 1
  br label %return

if.end321:                                        ; preds = %land.lhs.true304, %lor.lhs.false297, %if.end285
  %193 = load ptr, ptr @argv, align 8
  %194 = load i32, ptr %op, align 4
  %idxprom322 = sext i32 %194 to i64
  %arrayidx323 = getelementptr inbounds ptr, ptr %193, i64 %idxprom322
  %195 = load ptr, ptr %arrayidx323, align 8
  %call324 = call i32 @strcmp(ptr noundef %195, ptr noundef @.str.60) #12
  %cmp325 = icmp eq i32 %call324, 0
  br i1 %cmp325, label %if.then327, label %if.end340

if.then327:                                       ; preds = %if.end321
  %196 = load ptr, ptr @argv, align 8
  %197 = load i32, ptr @pos, align 4
  %idxprom329 = sext i32 %197 to i64
  %arrayidx330 = getelementptr inbounds ptr, ptr %196, i64 %idxprom329
  %198 = load ptr, ptr %arrayidx330, align 8
  %199 = load ptr, ptr @argv, align 8
  %200 = load i32, ptr @pos, align 4
  %add331 = add nsw i32 %200, 2
  %idxprom332 = sext i32 %add331 to i64
  %arrayidx333 = getelementptr inbounds ptr, ptr %199, i64 %idxprom332
  %201 = load ptr, ptr %arrayidx333, align 8
  %call334 = call i32 @strcmp(ptr noundef %198, ptr noundef %201) #12
  %cmp335 = icmp eq i32 %call334, 0
  %lnot = xor i1 %cmp335, true
  %frombool337 = zext i1 %lnot to i8
  store i8 %frombool337, ptr %value328, align 1
  %202 = load i32, ptr @pos, align 4
  %add338 = add nsw i32 %202, 3
  store i32 %add338, ptr @pos, align 4
  %203 = load i8, ptr %value328, align 1
  %tobool339 = trunc i8 %203 to i1
  store i1 %tobool339, ptr %retval, align 1
  br label %return

if.end340:                                        ; preds = %if.end321
  %204 = load ptr, ptr @argv, align 8
  %205 = load i32, ptr %op, align 4
  %idxprom341 = sext i32 %205 to i64
  %arrayidx342 = getelementptr inbounds ptr, ptr %204, i64 %idxprom341
  %206 = load ptr, ptr %arrayidx342, align 8
  %call343 = call i32 @strcmp(ptr noundef %206, ptr noundef @.str.56) #12
  %cmp344 = icmp eq i32 %call343, 0
  br i1 %cmp344, label %if.then346, label %if.end359

if.then346:                                       ; preds = %if.end340
  %207 = load ptr, ptr @argv, align 8
  %208 = load i32, ptr @pos, align 4
  %idxprom348 = sext i32 %208 to i64
  %arrayidx349 = getelementptr inbounds ptr, ptr %207, i64 %idxprom348
  %209 = load ptr, ptr %arrayidx349, align 8
  %210 = load ptr, ptr @argv, align 8
  %211 = load i32, ptr @pos, align 4
  %add350 = add nsw i32 %211, 2
  %idxprom351 = sext i32 %add350 to i64
  %arrayidx352 = getelementptr inbounds ptr, ptr %210, i64 %idxprom351
  %212 = load ptr, ptr %arrayidx352, align 8
  %call353 = call i32 @strcoll(ptr noundef %209, ptr noundef %212) #12
  %cmp354 = icmp sgt i32 %call353, 0
  %frombool356 = zext i1 %cmp354 to i8
  store i8 %frombool356, ptr %value347, align 1
  %213 = load i32, ptr @pos, align 4
  %add357 = add nsw i32 %213, 3
  store i32 %add357, ptr @pos, align 4
  %214 = load i8, ptr %value347, align 1
  %tobool358 = trunc i8 %214 to i1
  store i1 %tobool358, ptr %retval, align 1
  br label %return

if.end359:                                        ; preds = %if.end340
  %215 = load ptr, ptr @argv, align 8
  %216 = load i32, ptr %op, align 4
  %idxprom360 = sext i32 %216 to i64
  %arrayidx361 = getelementptr inbounds ptr, ptr %215, i64 %idxprom360
  %217 = load ptr, ptr %arrayidx361, align 8
  %call362 = call i32 @strcmp(ptr noundef %217, ptr noundef @.str.57) #12
  %cmp363 = icmp eq i32 %call362, 0
  br i1 %cmp363, label %if.then365, label %if.end378

if.then365:                                       ; preds = %if.end359
  %218 = load ptr, ptr @argv, align 8
  %219 = load i32, ptr @pos, align 4
  %idxprom367 = sext i32 %219 to i64
  %arrayidx368 = getelementptr inbounds ptr, ptr %218, i64 %idxprom367
  %220 = load ptr, ptr %arrayidx368, align 8
  %221 = load ptr, ptr @argv, align 8
  %222 = load i32, ptr @pos, align 4
  %add369 = add nsw i32 %222, 2
  %idxprom370 = sext i32 %add369 to i64
  %arrayidx371 = getelementptr inbounds ptr, ptr %221, i64 %idxprom370
  %223 = load ptr, ptr %arrayidx371, align 8
  %call372 = call i32 @strcoll(ptr noundef %220, ptr noundef %223) #12
  %cmp373 = icmp slt i32 %call372, 0
  %frombool375 = zext i1 %cmp373 to i8
  store i8 %frombool375, ptr %value366, align 1
  %224 = load i32, ptr @pos, align 4
  %add376 = add nsw i32 %224, 3
  store i32 %add376, ptr @pos, align 4
  %225 = load i8, ptr %value366, align 1
  %tobool377 = trunc i8 %225 to i1
  store i1 %tobool377, ptr %retval, align 1
  br label %return

if.end378:                                        ; preds = %if.end359
  call void @__assert_fail(ptr noundef @.str.76, ptr noundef @.str.50, i32 noundef 390, ptr noundef @__PRETTY_FUNCTION__.binary_operator) #11
  unreachable

return:                                           ; preds = %if.then365, %if.then346, %if.then327, %if.then309, %land.end279, %land.end230, %land.end, %cond.end141
  %226 = load i1, ptr %retval, align 1
  ret i1 %226
}

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i1 @unary_operator() #3 {
entry:
  %retval = alloca i1, align 1
  %stat_buf = alloca %struct.stat, align 8
  %atime = alloca %struct.timespec, align 8
  %mtime = alloca %struct.timespec, align 8
  %euid = alloca i32, align 4
  %NO_UID = alloca i32, align 4
  %egid = alloca i32, align 4
  %NO_GID = alloca i32, align 4
  %fd = alloca i64, align 8
  %arg = alloca ptr, align 8
  %0 = load ptr, ptr @argv, align 8
  %1 = load i32, ptr @pos, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds ptr, ptr %0, i64 %idxprom
  %2 = load ptr, ptr %arrayidx, align 8
  %arrayidx1 = getelementptr inbounds i8, ptr %2, i64 1
  %3 = load i8, ptr %arrayidx1, align 1
  %conv = sext i8 %3 to i32
  switch i32 %conv, label %sw.default [
    i32 101, label %sw.bb
    i32 114, label %sw.bb9
    i32 119, label %sw.bb16
    i32 120, label %sw.bb23
    i32 78, label %sw.bb30
    i32 79, label %sw.bb42
    i32 71, label %sw.bb58
    i32 102, label %sw.bb78
    i32 100, label %sw.bb89
    i32 115, label %sw.bb102
    i32 83, label %sw.bb113
    i32 99, label %sw.bb126
    i32 98, label %sw.bb139
    i32 112, label %sw.bb152
    i32 76, label %sw.bb165
    i32 104, label %sw.bb165
    i32 117, label %sw.bb178
    i32 103, label %sw.bb190
    i32 107, label %sw.bb202
    i32 116, label %sw.bb214
    i32 110, label %sw.bb235
    i32 122, label %sw.bb243
  ]

sw.default:                                       ; preds = %entry
  %call = call ptr @gettext(ptr noundef @.str.51) #10
  %4 = load ptr, ptr @argv, align 8
  %5 = load i32, ptr @pos, align 4
  %idxprom2 = sext i32 %5 to i64
  %arrayidx3 = getelementptr inbounds ptr, ptr %4, i64 %idxprom2
  %6 = load ptr, ptr %arrayidx3, align 8
  %call4 = call ptr @quote(ptr noundef %6)
  call void (ptr, ...) @test_syntax_error(ptr noundef %call, ptr noundef %call4) #13
  unreachable

sw.bb:                                            ; preds = %entry
  call void @unary_advance()
  %7 = load ptr, ptr @argv, align 8
  %8 = load i32, ptr @pos, align 4
  %sub = sub nsw i32 %8, 1
  %idxprom5 = sext i32 %sub to i64
  %arrayidx6 = getelementptr inbounds ptr, ptr %7, i64 %idxprom5
  %9 = load ptr, ptr %arrayidx6, align 8
  %call7 = call i32 @stat(ptr noundef %9, ptr noundef %stat_buf) #10
  %cmp = icmp eq i32 %call7, 0
  store i1 %cmp, ptr %retval, align 1
  br label %return

sw.bb9:                                           ; preds = %entry
  call void @unary_advance()
  %10 = load ptr, ptr @argv, align 8
  %11 = load i32, ptr @pos, align 4
  %sub10 = sub nsw i32 %11, 1
  %idxprom11 = sext i32 %sub10 to i64
  %arrayidx12 = getelementptr inbounds ptr, ptr %10, i64 %idxprom11
  %12 = load ptr, ptr %arrayidx12, align 8
  %call13 = call i32 @euidaccess(ptr noundef %12, i32 noundef 4) #10
  %cmp14 = icmp eq i32 %call13, 0
  store i1 %cmp14, ptr %retval, align 1
  br label %return

sw.bb16:                                          ; preds = %entry
  call void @unary_advance()
  %13 = load ptr, ptr @argv, align 8
  %14 = load i32, ptr @pos, align 4
  %sub17 = sub nsw i32 %14, 1
  %idxprom18 = sext i32 %sub17 to i64
  %arrayidx19 = getelementptr inbounds ptr, ptr %13, i64 %idxprom18
  %15 = load ptr, ptr %arrayidx19, align 8
  %call20 = call i32 @euidaccess(ptr noundef %15, i32 noundef 2) #10
  %cmp21 = icmp eq i32 %call20, 0
  store i1 %cmp21, ptr %retval, align 1
  br label %return

sw.bb23:                                          ; preds = %entry
  call void @unary_advance()
  %16 = load ptr, ptr @argv, align 8
  %17 = load i32, ptr @pos, align 4
  %sub24 = sub nsw i32 %17, 1
  %idxprom25 = sext i32 %sub24 to i64
  %arrayidx26 = getelementptr inbounds ptr, ptr %16, i64 %idxprom25
  %18 = load ptr, ptr %arrayidx26, align 8
  %call27 = call i32 @euidaccess(ptr noundef %18, i32 noundef 1) #10
  %cmp28 = icmp eq i32 %call27, 0
  store i1 %cmp28, ptr %retval, align 1
  br label %return

sw.bb30:                                          ; preds = %entry
  call void @unary_advance()
  %19 = load ptr, ptr @argv, align 8
  %20 = load i32, ptr @pos, align 4
  %sub31 = sub nsw i32 %20, 1
  %idxprom32 = sext i32 %sub31 to i64
  %arrayidx33 = getelementptr inbounds ptr, ptr %19, i64 %idxprom32
  %21 = load ptr, ptr %arrayidx33, align 8
  %call34 = call i32 @stat(ptr noundef %21, ptr noundef %stat_buf) #10
  %cmp35 = icmp ne i32 %call34, 0
  br i1 %cmp35, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb30
  store i1 false, ptr %retval, align 1
  br label %return

if.end:                                           ; preds = %sw.bb30
  %call37 = call { i64, i64 } @get_stat_atime(ptr noundef %stat_buf) #12
  %22 = getelementptr inbounds { i64, i64 }, ptr %atime, i32 0, i32 0
  %23 = extractvalue { i64, i64 } %call37, 0
  store i64 %23, ptr %22, align 8
  %24 = getelementptr inbounds { i64, i64 }, ptr %atime, i32 0, i32 1
  %25 = extractvalue { i64, i64 } %call37, 1
  store i64 %25, ptr %24, align 8
  %call38 = call { i64, i64 } @get_stat_mtime(ptr noundef %stat_buf) #12
  %26 = getelementptr inbounds { i64, i64 }, ptr %mtime, i32 0, i32 0
  %27 = extractvalue { i64, i64 } %call38, 0
  store i64 %27, ptr %26, align 8
  %28 = getelementptr inbounds { i64, i64 }, ptr %mtime, i32 0, i32 1
  %29 = extractvalue { i64, i64 } %call38, 1
  store i64 %29, ptr %28, align 8
  %30 = getelementptr inbounds { i64, i64 }, ptr %mtime, i32 0, i32 0
  %31 = load i64, ptr %30, align 8
  %32 = getelementptr inbounds { i64, i64 }, ptr %mtime, i32 0, i32 1
  %33 = load i64, ptr %32, align 8
  %34 = getelementptr inbounds { i64, i64 }, ptr %atime, i32 0, i32 0
  %35 = load i64, ptr %34, align 8
  %36 = getelementptr inbounds { i64, i64 }, ptr %atime, i32 0, i32 1
  %37 = load i64, ptr %36, align 8
  %call39 = call i32 @timespec_cmp(i64 %31, i64 %33, i64 %35, i64 %37) #12
  %cmp40 = icmp sgt i32 %call39, 0
  store i1 %cmp40, ptr %retval, align 1
  br label %return

sw.bb42:                                          ; preds = %entry
  call void @unary_advance()
  %38 = load ptr, ptr @argv, align 8
  %39 = load i32, ptr @pos, align 4
  %sub43 = sub nsw i32 %39, 1
  %idxprom44 = sext i32 %sub43 to i64
  %arrayidx45 = getelementptr inbounds ptr, ptr %38, i64 %idxprom44
  %40 = load ptr, ptr %arrayidx45, align 8
  %call46 = call i32 @stat(ptr noundef %40, ptr noundef %stat_buf) #10
  %cmp47 = icmp ne i32 %call46, 0
  br i1 %cmp47, label %if.then49, label %if.end50

if.then49:                                        ; preds = %sw.bb42
  store i1 false, ptr %retval, align 1
  br label %return

if.end50:                                         ; preds = %sw.bb42
  %call51 = call ptr @__errno_location() #15
  store i32 0, ptr %call51, align 4
  %call52 = call i32 @geteuid() #10
  store i32 %call52, ptr %euid, align 4
  store i32 -1, ptr %NO_UID, align 4
  %41 = load i32, ptr %euid, align 4
  %42 = load i32, ptr %NO_UID, align 4
  %cmp53 = icmp eq i32 %41, %42
  br i1 %cmp53, label %land.lhs.true, label %land.rhs

land.lhs.true:                                    ; preds = %if.end50
  %call55 = call ptr @__errno_location() #15
  %43 = load i32, ptr %call55, align 4
  %tobool = icmp ne i32 %43, 0
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %land.lhs.true, %if.end50
  %44 = load i32, ptr %euid, align 4
  %st_uid = getelementptr inbounds %struct.stat, ptr %stat_buf, i32 0, i32 4
  %45 = load i32, ptr %st_uid, align 4
  %cmp56 = icmp eq i32 %44, %45
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true
  %46 = phi i1 [ false, %land.lhs.true ], [ %cmp56, %land.rhs ]
  store i1 %46, ptr %retval, align 1
  br label %return

sw.bb58:                                          ; preds = %entry
  call void @unary_advance()
  %47 = load ptr, ptr @argv, align 8
  %48 = load i32, ptr @pos, align 4
  %sub59 = sub nsw i32 %48, 1
  %idxprom60 = sext i32 %sub59 to i64
  %arrayidx61 = getelementptr inbounds ptr, ptr %47, i64 %idxprom60
  %49 = load ptr, ptr %arrayidx61, align 8
  %call62 = call i32 @stat(ptr noundef %49, ptr noundef %stat_buf) #10
  %cmp63 = icmp ne i32 %call62, 0
  br i1 %cmp63, label %if.then65, label %if.end66

if.then65:                                        ; preds = %sw.bb58
  store i1 false, ptr %retval, align 1
  br label %return

if.end66:                                         ; preds = %sw.bb58
  %call67 = call ptr @__errno_location() #15
  store i32 0, ptr %call67, align 4
  %call68 = call i32 @getegid() #10
  store i32 %call68, ptr %egid, align 4
  store i32 -1, ptr %NO_GID, align 4
  %50 = load i32, ptr %egid, align 4
  %51 = load i32, ptr %NO_GID, align 4
  %cmp69 = icmp eq i32 %50, %51
  br i1 %cmp69, label %land.lhs.true71, label %land.rhs74

land.lhs.true71:                                  ; preds = %if.end66
  %call72 = call ptr @__errno_location() #15
  %52 = load i32, ptr %call72, align 4
  %tobool73 = icmp ne i32 %52, 0
  br i1 %tobool73, label %land.end77, label %land.rhs74

land.rhs74:                                       ; preds = %land.lhs.true71, %if.end66
  %53 = load i32, ptr %egid, align 4
  %st_gid = getelementptr inbounds %struct.stat, ptr %stat_buf, i32 0, i32 5
  %54 = load i32, ptr %st_gid, align 8
  %cmp75 = icmp eq i32 %53, %54
  br label %land.end77

land.end77:                                       ; preds = %land.rhs74, %land.lhs.true71
  %55 = phi i1 [ false, %land.lhs.true71 ], [ %cmp75, %land.rhs74 ]
  store i1 %55, ptr %retval, align 1
  br label %return

sw.bb78:                                          ; preds = %entry
  call void @unary_advance()
  %56 = load ptr, ptr @argv, align 8
  %57 = load i32, ptr @pos, align 4
  %sub79 = sub nsw i32 %57, 1
  %idxprom80 = sext i32 %sub79 to i64
  %arrayidx81 = getelementptr inbounds ptr, ptr %56, i64 %idxprom80
  %58 = load ptr, ptr %arrayidx81, align 8
  %call82 = call i32 @stat(ptr noundef %58, ptr noundef %stat_buf) #10
  %cmp83 = icmp eq i32 %call82, 0
  br i1 %cmp83, label %land.rhs85, label %land.end88

land.rhs85:                                       ; preds = %sw.bb78
  %st_mode = getelementptr inbounds %struct.stat, ptr %stat_buf, i32 0, i32 3
  %59 = load i32, ptr %st_mode, align 8
  %and = and i32 %59, 61440
  %cmp86 = icmp eq i32 %and, 32768
  br label %land.end88

land.end88:                                       ; preds = %land.rhs85, %sw.bb78
  %60 = phi i1 [ false, %sw.bb78 ], [ %cmp86, %land.rhs85 ]
  store i1 %60, ptr %retval, align 1
  br label %return

sw.bb89:                                          ; preds = %entry
  call void @unary_advance()
  %61 = load ptr, ptr @argv, align 8
  %62 = load i32, ptr @pos, align 4
  %sub90 = sub nsw i32 %62, 1
  %idxprom91 = sext i32 %sub90 to i64
  %arrayidx92 = getelementptr inbounds ptr, ptr %61, i64 %idxprom91
  %63 = load ptr, ptr %arrayidx92, align 8
  %call93 = call i32 @stat(ptr noundef %63, ptr noundef %stat_buf) #10
  %cmp94 = icmp eq i32 %call93, 0
  br i1 %cmp94, label %land.rhs96, label %land.end101

land.rhs96:                                       ; preds = %sw.bb89
  %st_mode97 = getelementptr inbounds %struct.stat, ptr %stat_buf, i32 0, i32 3
  %64 = load i32, ptr %st_mode97, align 8
  %and98 = and i32 %64, 61440
  %cmp99 = icmp eq i32 %and98, 16384
  br label %land.end101

land.end101:                                      ; preds = %land.rhs96, %sw.bb89
  %65 = phi i1 [ false, %sw.bb89 ], [ %cmp99, %land.rhs96 ]
  store i1 %65, ptr %retval, align 1
  br label %return

sw.bb102:                                         ; preds = %entry
  call void @unary_advance()
  %66 = load ptr, ptr @argv, align 8
  %67 = load i32, ptr @pos, align 4
  %sub103 = sub nsw i32 %67, 1
  %idxprom104 = sext i32 %sub103 to i64
  %arrayidx105 = getelementptr inbounds ptr, ptr %66, i64 %idxprom104
  %68 = load ptr, ptr %arrayidx105, align 8
  %call106 = call i32 @stat(ptr noundef %68, ptr noundef %stat_buf) #10
  %cmp107 = icmp eq i32 %call106, 0
  br i1 %cmp107, label %land.rhs109, label %land.end112

land.rhs109:                                      ; preds = %sw.bb102
  %st_size = getelementptr inbounds %struct.stat, ptr %stat_buf, i32 0, i32 8
  %69 = load i64, ptr %st_size, align 8
  %cmp110 = icmp slt i64 0, %69
  br label %land.end112

land.end112:                                      ; preds = %land.rhs109, %sw.bb102
  %70 = phi i1 [ false, %sw.bb102 ], [ %cmp110, %land.rhs109 ]
  store i1 %70, ptr %retval, align 1
  br label %return

sw.bb113:                                         ; preds = %entry
  call void @unary_advance()
  %71 = load ptr, ptr @argv, align 8
  %72 = load i32, ptr @pos, align 4
  %sub114 = sub nsw i32 %72, 1
  %idxprom115 = sext i32 %sub114 to i64
  %arrayidx116 = getelementptr inbounds ptr, ptr %71, i64 %idxprom115
  %73 = load ptr, ptr %arrayidx116, align 8
  %call117 = call i32 @stat(ptr noundef %73, ptr noundef %stat_buf) #10
  %cmp118 = icmp eq i32 %call117, 0
  br i1 %cmp118, label %land.rhs120, label %land.end125

land.rhs120:                                      ; preds = %sw.bb113
  %st_mode121 = getelementptr inbounds %struct.stat, ptr %stat_buf, i32 0, i32 3
  %74 = load i32, ptr %st_mode121, align 8
  %and122 = and i32 %74, 61440
  %cmp123 = icmp eq i32 %and122, 49152
  br label %land.end125

land.end125:                                      ; preds = %land.rhs120, %sw.bb113
  %75 = phi i1 [ false, %sw.bb113 ], [ %cmp123, %land.rhs120 ]
  store i1 %75, ptr %retval, align 1
  br label %return

sw.bb126:                                         ; preds = %entry
  call void @unary_advance()
  %76 = load ptr, ptr @argv, align 8
  %77 = load i32, ptr @pos, align 4
  %sub127 = sub nsw i32 %77, 1
  %idxprom128 = sext i32 %sub127 to i64
  %arrayidx129 = getelementptr inbounds ptr, ptr %76, i64 %idxprom128
  %78 = load ptr, ptr %arrayidx129, align 8
  %call130 = call i32 @stat(ptr noundef %78, ptr noundef %stat_buf) #10
  %cmp131 = icmp eq i32 %call130, 0
  br i1 %cmp131, label %land.rhs133, label %land.end138

land.rhs133:                                      ; preds = %sw.bb126
  %st_mode134 = getelementptr inbounds %struct.stat, ptr %stat_buf, i32 0, i32 3
  %79 = load i32, ptr %st_mode134, align 8
  %and135 = and i32 %79, 61440
  %cmp136 = icmp eq i32 %and135, 8192
  br label %land.end138

land.end138:                                      ; preds = %land.rhs133, %sw.bb126
  %80 = phi i1 [ false, %sw.bb126 ], [ %cmp136, %land.rhs133 ]
  store i1 %80, ptr %retval, align 1
  br label %return

sw.bb139:                                         ; preds = %entry
  call void @unary_advance()
  %81 = load ptr, ptr @argv, align 8
  %82 = load i32, ptr @pos, align 4
  %sub140 = sub nsw i32 %82, 1
  %idxprom141 = sext i32 %sub140 to i64
  %arrayidx142 = getelementptr inbounds ptr, ptr %81, i64 %idxprom141
  %83 = load ptr, ptr %arrayidx142, align 8
  %call143 = call i32 @stat(ptr noundef %83, ptr noundef %stat_buf) #10
  %cmp144 = icmp eq i32 %call143, 0
  br i1 %cmp144, label %land.rhs146, label %land.end151

land.rhs146:                                      ; preds = %sw.bb139
  %st_mode147 = getelementptr inbounds %struct.stat, ptr %stat_buf, i32 0, i32 3
  %84 = load i32, ptr %st_mode147, align 8
  %and148 = and i32 %84, 61440
  %cmp149 = icmp eq i32 %and148, 24576
  br label %land.end151

land.end151:                                      ; preds = %land.rhs146, %sw.bb139
  %85 = phi i1 [ false, %sw.bb139 ], [ %cmp149, %land.rhs146 ]
  store i1 %85, ptr %retval, align 1
  br label %return

sw.bb152:                                         ; preds = %entry
  call void @unary_advance()
  %86 = load ptr, ptr @argv, align 8
  %87 = load i32, ptr @pos, align 4
  %sub153 = sub nsw i32 %87, 1
  %idxprom154 = sext i32 %sub153 to i64
  %arrayidx155 = getelementptr inbounds ptr, ptr %86, i64 %idxprom154
  %88 = load ptr, ptr %arrayidx155, align 8
  %call156 = call i32 @stat(ptr noundef %88, ptr noundef %stat_buf) #10
  %cmp157 = icmp eq i32 %call156, 0
  br i1 %cmp157, label %land.rhs159, label %land.end164

land.rhs159:                                      ; preds = %sw.bb152
  %st_mode160 = getelementptr inbounds %struct.stat, ptr %stat_buf, i32 0, i32 3
  %89 = load i32, ptr %st_mode160, align 8
  %and161 = and i32 %89, 61440
  %cmp162 = icmp eq i32 %and161, 4096
  br label %land.end164

land.end164:                                      ; preds = %land.rhs159, %sw.bb152
  %90 = phi i1 [ false, %sw.bb152 ], [ %cmp162, %land.rhs159 ]
  store i1 %90, ptr %retval, align 1
  br label %return

sw.bb165:                                         ; preds = %entry, %entry
  call void @unary_advance()
  %91 = load ptr, ptr @argv, align 8
  %92 = load i32, ptr @pos, align 4
  %sub166 = sub nsw i32 %92, 1
  %idxprom167 = sext i32 %sub166 to i64
  %arrayidx168 = getelementptr inbounds ptr, ptr %91, i64 %idxprom167
  %93 = load ptr, ptr %arrayidx168, align 8
  %call169 = call i32 @lstat(ptr noundef %93, ptr noundef %stat_buf) #10
  %cmp170 = icmp eq i32 %call169, 0
  br i1 %cmp170, label %land.rhs172, label %land.end177

land.rhs172:                                      ; preds = %sw.bb165
  %st_mode173 = getelementptr inbounds %struct.stat, ptr %stat_buf, i32 0, i32 3
  %94 = load i32, ptr %st_mode173, align 8
  %and174 = and i32 %94, 61440
  %cmp175 = icmp eq i32 %and174, 40960
  br label %land.end177

land.end177:                                      ; preds = %land.rhs172, %sw.bb165
  %95 = phi i1 [ false, %sw.bb165 ], [ %cmp175, %land.rhs172 ]
  store i1 %95, ptr %retval, align 1
  br label %return

sw.bb178:                                         ; preds = %entry
  call void @unary_advance()
  %96 = load ptr, ptr @argv, align 8
  %97 = load i32, ptr @pos, align 4
  %sub179 = sub nsw i32 %97, 1
  %idxprom180 = sext i32 %sub179 to i64
  %arrayidx181 = getelementptr inbounds ptr, ptr %96, i64 %idxprom180
  %98 = load ptr, ptr %arrayidx181, align 8
  %call182 = call i32 @stat(ptr noundef %98, ptr noundef %stat_buf) #10
  %cmp183 = icmp eq i32 %call182, 0
  br i1 %cmp183, label %land.rhs185, label %land.end189

land.rhs185:                                      ; preds = %sw.bb178
  %st_mode186 = getelementptr inbounds %struct.stat, ptr %stat_buf, i32 0, i32 3
  %99 = load i32, ptr %st_mode186, align 8
  %and187 = and i32 %99, 2048
  %tobool188 = icmp ne i32 %and187, 0
  br label %land.end189

land.end189:                                      ; preds = %land.rhs185, %sw.bb178
  %100 = phi i1 [ false, %sw.bb178 ], [ %tobool188, %land.rhs185 ]
  store i1 %100, ptr %retval, align 1
  br label %return

sw.bb190:                                         ; preds = %entry
  call void @unary_advance()
  %101 = load ptr, ptr @argv, align 8
  %102 = load i32, ptr @pos, align 4
  %sub191 = sub nsw i32 %102, 1
  %idxprom192 = sext i32 %sub191 to i64
  %arrayidx193 = getelementptr inbounds ptr, ptr %101, i64 %idxprom192
  %103 = load ptr, ptr %arrayidx193, align 8
  %call194 = call i32 @stat(ptr noundef %103, ptr noundef %stat_buf) #10
  %cmp195 = icmp eq i32 %call194, 0
  br i1 %cmp195, label %land.rhs197, label %land.end201

land.rhs197:                                      ; preds = %sw.bb190
  %st_mode198 = getelementptr inbounds %struct.stat, ptr %stat_buf, i32 0, i32 3
  %104 = load i32, ptr %st_mode198, align 8
  %and199 = and i32 %104, 1024
  %tobool200 = icmp ne i32 %and199, 0
  br label %land.end201

land.end201:                                      ; preds = %land.rhs197, %sw.bb190
  %105 = phi i1 [ false, %sw.bb190 ], [ %tobool200, %land.rhs197 ]
  store i1 %105, ptr %retval, align 1
  br label %return

sw.bb202:                                         ; preds = %entry
  call void @unary_advance()
  %106 = load ptr, ptr @argv, align 8
  %107 = load i32, ptr @pos, align 4
  %sub203 = sub nsw i32 %107, 1
  %idxprom204 = sext i32 %sub203 to i64
  %arrayidx205 = getelementptr inbounds ptr, ptr %106, i64 %idxprom204
  %108 = load ptr, ptr %arrayidx205, align 8
  %call206 = call i32 @stat(ptr noundef %108, ptr noundef %stat_buf) #10
  %cmp207 = icmp eq i32 %call206, 0
  br i1 %cmp207, label %land.rhs209, label %land.end213

land.rhs209:                                      ; preds = %sw.bb202
  %st_mode210 = getelementptr inbounds %struct.stat, ptr %stat_buf, i32 0, i32 3
  %109 = load i32, ptr %st_mode210, align 8
  %and211 = and i32 %109, 512
  %tobool212 = icmp ne i32 %and211, 0
  br label %land.end213

land.end213:                                      ; preds = %land.rhs209, %sw.bb202
  %110 = phi i1 [ false, %sw.bb202 ], [ %tobool212, %land.rhs209 ]
  store i1 %110, ptr %retval, align 1
  br label %return

sw.bb214:                                         ; preds = %entry
  call void @unary_advance()
  %111 = load ptr, ptr @argv, align 8
  %112 = load i32, ptr @pos, align 4
  %sub215 = sub nsw i32 %112, 1
  %idxprom216 = sext i32 %sub215 to i64
  %arrayidx217 = getelementptr inbounds ptr, ptr %111, i64 %idxprom216
  %113 = load ptr, ptr %arrayidx217, align 8
  %call218 = call ptr @find_int(ptr noundef %113)
  store ptr %call218, ptr %arg, align 8
  %call219 = call ptr @__errno_location() #15
  store i32 0, ptr %call219, align 4
  %114 = load ptr, ptr %arg, align 8
  %call220 = call i64 @__isoc23_strtol(ptr noundef %114, ptr noundef null, i32 noundef 10) #10
  store i64 %call220, ptr %fd, align 8
  %call221 = call ptr @__errno_location() #15
  %115 = load i32, ptr %call221, align 4
  %cmp222 = icmp ne i32 %115, 34
  br i1 %cmp222, label %land.lhs.true224, label %land.end234

land.lhs.true224:                                 ; preds = %sw.bb214
  %116 = load i64, ptr %fd, align 8
  %cmp225 = icmp sle i64 0, %116
  br i1 %cmp225, label %land.lhs.true227, label %land.end234

land.lhs.true227:                                 ; preds = %land.lhs.true224
  %117 = load i64, ptr %fd, align 8
  %cmp228 = icmp sle i64 %117, 2147483647
  br i1 %cmp228, label %land.rhs230, label %land.end234

land.rhs230:                                      ; preds = %land.lhs.true227
  %118 = load i64, ptr %fd, align 8
  %conv231 = trunc i64 %118 to i32
  %call232 = call i32 @isatty(i32 noundef %conv231) #10
  %tobool233 = icmp ne i32 %call232, 0
  br label %land.end234

land.end234:                                      ; preds = %land.rhs230, %land.lhs.true227, %land.lhs.true224, %sw.bb214
  %119 = phi i1 [ false, %land.lhs.true227 ], [ false, %land.lhs.true224 ], [ false, %sw.bb214 ], [ %tobool233, %land.rhs230 ]
  store i1 %119, ptr %retval, align 1
  br label %return

sw.bb235:                                         ; preds = %entry
  call void @unary_advance()
  %120 = load ptr, ptr @argv, align 8
  %121 = load i32, ptr @pos, align 4
  %sub236 = sub nsw i32 %121, 1
  %idxprom237 = sext i32 %sub236 to i64
  %arrayidx238 = getelementptr inbounds ptr, ptr %120, i64 %idxprom237
  %122 = load ptr, ptr %arrayidx238, align 8
  %arrayidx239 = getelementptr inbounds i8, ptr %122, i64 0
  %123 = load i8, ptr %arrayidx239, align 1
  %conv240 = sext i8 %123 to i32
  %cmp241 = icmp ne i32 %conv240, 0
  store i1 %cmp241, ptr %retval, align 1
  br label %return

sw.bb243:                                         ; preds = %entry
  call void @unary_advance()
  %124 = load ptr, ptr @argv, align 8
  %125 = load i32, ptr @pos, align 4
  %sub244 = sub nsw i32 %125, 1
  %idxprom245 = sext i32 %sub244 to i64
  %arrayidx246 = getelementptr inbounds ptr, ptr %124, i64 %idxprom245
  %126 = load ptr, ptr %arrayidx246, align 8
  %arrayidx247 = getelementptr inbounds i8, ptr %126, i64 0
  %127 = load i8, ptr %arrayidx247, align 1
  %conv248 = sext i8 %127 to i32
  %cmp249 = icmp eq i32 %conv248, 0
  store i1 %cmp249, ptr %retval, align 1
  br label %return

return:                                           ; preds = %sw.bb243, %sw.bb235, %land.end234, %land.end213, %land.end201, %land.end189, %land.end177, %land.end164, %land.end151, %land.end138, %land.end125, %land.end112, %land.end101, %land.end88, %land.end77, %if.then65, %land.end, %if.then49, %if.end, %if.then, %sw.bb23, %sw.bb16, %sw.bb9, %sw.bb
  %128 = load i1, ptr %retval, align 1
  ret i1 %128
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @unary_advance() #3 {
entry:
  call void @advance(i1 noundef zeroext true)
  %0 = load i32, ptr @pos, align 4
  %inc = add nsw i32 %0, 1
  store i32 %inc, ptr @pos, align 4
  ret void
}

; Function Attrs: nounwind
declare i32 @stat(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind
declare i32 @euidaccess(ptr noundef, i32 noundef) #1

; Function Attrs: nounwind willreturn memory(read)
declare { i64, i64 } @get_stat_atime(ptr noundef) #6

; Function Attrs: nounwind willreturn memory(read)
declare { i64, i64 } @get_stat_mtime(ptr noundef) #6

; Function Attrs: nounwind willreturn memory(read)
declare i32 @timespec_cmp(i64, i64, i64, i64) #6

; Function Attrs: nounwind willreturn memory(none)
declare ptr @__errno_location() #7

; Function Attrs: nounwind
declare i32 @geteuid() #1

; Function Attrs: nounwind
declare i32 @getegid() #1

; Function Attrs: nounwind
declare i32 @lstat(ptr noundef, ptr noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal ptr @find_int(ptr noundef %string) #3 {
entry:
  %string.addr = alloca ptr, align 8
  %p = alloca ptr, align 8
  %number_start = alloca ptr, align 8
  store ptr %string, ptr %string.addr, align 8
  %0 = load ptr, ptr %string.addr, align 8
  store ptr %0, ptr %p, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %call = call ptr @__ctype_b_loc() #15
  %1 = load ptr, ptr %call, align 8
  %2 = load ptr, ptr %p, align 8
  %3 = load i8, ptr %2, align 1
  %call1 = call zeroext i8 @to_uchar(i8 noundef signext %3)
  %conv = zext i8 %call1 to i32
  %idxprom = sext i32 %conv to i64
  %arrayidx = getelementptr inbounds i16, ptr %1, i64 %idxprom
  %4 = load i16, ptr %arrayidx, align 2
  %conv2 = zext i16 %4 to i32
  %and = and i32 %conv2, 8192
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %5 = load ptr, ptr %p, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %5, i32 1
  store ptr %incdec.ptr, ptr %p, align 8
  br label %for.cond, !llvm.loop !10

for.end:                                          ; preds = %for.cond
  %6 = load ptr, ptr %p, align 8
  %7 = load i8, ptr %6, align 1
  %conv3 = sext i8 %7 to i32
  %cmp = icmp eq i32 %conv3, 43
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %for.end
  %8 = load ptr, ptr %p, align 8
  %incdec.ptr5 = getelementptr inbounds i8, ptr %8, i32 1
  store ptr %incdec.ptr5, ptr %p, align 8
  %9 = load ptr, ptr %p, align 8
  store ptr %9, ptr %number_start, align 8
  br label %if.end

if.else:                                          ; preds = %for.end
  %10 = load ptr, ptr %p, align 8
  store ptr %10, ptr %number_start, align 8
  %11 = load ptr, ptr %p, align 8
  %12 = load i8, ptr %11, align 1
  %conv6 = sext i8 %12 to i32
  %cmp7 = icmp eq i32 %conv6, 45
  %conv8 = zext i1 %cmp7 to i32
  %13 = load ptr, ptr %p, align 8
  %idx.ext = sext i32 %conv8 to i64
  %add.ptr = getelementptr inbounds i8, ptr %13, i64 %idx.ext
  store ptr %add.ptr, ptr %p, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %14 = load ptr, ptr %p, align 8
  %incdec.ptr9 = getelementptr inbounds i8, ptr %14, i32 1
  store ptr %incdec.ptr9, ptr %p, align 8
  %15 = load i8, ptr %14, align 1
  %conv10 = sext i8 %15 to i32
  %call11 = call zeroext i1 @c_isdigit(i32 noundef %conv10)
  br i1 %call11, label %if.then12, label %if.end31

if.then12:                                        ; preds = %if.end
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then12
  %16 = load ptr, ptr %p, align 8
  %17 = load i8, ptr %16, align 1
  %conv13 = sext i8 %17 to i32
  %call14 = call zeroext i1 @c_isdigit(i32 noundef %conv13)
  br i1 %call14, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %18 = load ptr, ptr %p, align 8
  %incdec.ptr15 = getelementptr inbounds i8, ptr %18, i32 1
  store ptr %incdec.ptr15, ptr %p, align 8
  br label %while.cond, !llvm.loop !11

while.end:                                        ; preds = %while.cond
  br label %while.cond16

while.cond16:                                     ; preds = %while.body25, %while.end
  %call17 = call ptr @__ctype_b_loc() #15
  %19 = load ptr, ptr %call17, align 8
  %20 = load ptr, ptr %p, align 8
  %21 = load i8, ptr %20, align 1
  %call18 = call zeroext i8 @to_uchar(i8 noundef signext %21)
  %conv19 = zext i8 %call18 to i32
  %idxprom20 = sext i32 %conv19 to i64
  %arrayidx21 = getelementptr inbounds i16, ptr %19, i64 %idxprom20
  %22 = load i16, ptr %arrayidx21, align 2
  %conv22 = zext i16 %22 to i32
  %and23 = and i32 %conv22, 8192
  %tobool24 = icmp ne i32 %and23, 0
  br i1 %tobool24, label %while.body25, label %while.end27

while.body25:                                     ; preds = %while.cond16
  %23 = load ptr, ptr %p, align 8
  %incdec.ptr26 = getelementptr inbounds i8, ptr %23, i32 1
  store ptr %incdec.ptr26, ptr %p, align 8
  br label %while.cond16, !llvm.loop !12

while.end27:                                      ; preds = %while.cond16
  %24 = load ptr, ptr %p, align 8
  %25 = load i8, ptr %24, align 1
  %tobool28 = icmp ne i8 %25, 0
  br i1 %tobool28, label %if.end30, label %if.then29

if.then29:                                        ; preds = %while.end27
  %26 = load ptr, ptr %number_start, align 8
  ret ptr %26

if.end30:                                         ; preds = %while.end27
  br label %if.end31

if.end31:                                         ; preds = %if.end30, %if.end
  %call32 = call ptr @gettext(ptr noundef @.str.52) #10
  %27 = load ptr, ptr %string.addr, align 8
  %call33 = call ptr @quote(ptr noundef %27)
  call void (ptr, ...) @test_syntax_error(ptr noundef %call32, ptr noundef %call33) #13
  unreachable
}

; Function Attrs: nounwind
declare i64 @__isoc23_strtol(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: nounwind
declare i32 @isatty(i32 noundef) #1

; Function Attrs: nounwind willreturn memory(none)
declare ptr @__ctype_b_loc() #7

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i8 @to_uchar(i8 noundef signext %ch) #3 {
entry:
  %ch.addr = alloca i8, align 1
  store i8 %ch, ptr %ch.addr, align 1
  %0 = load i8, ptr %ch.addr, align 1
  ret i8 %0
}

declare zeroext i1 @c_isdigit(i32 noundef) #2

; Function Attrs: nounwind willreturn memory(read)
declare i64 @strlen(ptr noundef) #6

declare ptr @umaxtostr(i64 noundef, ptr noundef) #2

; Function Attrs: nounwind willreturn memory(read)
declare i32 @strintcmp(ptr noundef, ptr noundef) #6

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i1 @get_mtime(ptr noundef %filename, ptr noundef %mtime) #3 {
entry:
  %filename.addr = alloca ptr, align 8
  %mtime.addr = alloca ptr, align 8
  %finfo = alloca %struct.stat, align 8
  %ok = alloca i8, align 1
  %tmp = alloca %struct.timespec, align 8
  store ptr %filename, ptr %filename.addr, align 8
  store ptr %mtime, ptr %mtime.addr, align 8
  %0 = load ptr, ptr %filename.addr, align 8
  %call = call i32 @stat(ptr noundef %0, ptr noundef %finfo) #10
  %cmp = icmp eq i32 %call, 0
  %frombool = zext i1 %cmp to i8
  store i8 %frombool, ptr %ok, align 1
  %1 = load i8, ptr %ok, align 1
  %tobool = trunc i8 %1 to i1
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %mtime.addr, align 8
  %call1 = call { i64, i64 } @get_stat_mtime(ptr noundef %finfo) #12
  %3 = getelementptr inbounds { i64, i64 }, ptr %tmp, i32 0, i32 0
  %4 = extractvalue { i64, i64 } %call1, 0
  store i64 %4, ptr %3, align 8
  %5 = getelementptr inbounds { i64, i64 }, ptr %tmp, i32 0, i32 1
  %6 = extractvalue { i64, i64 } %call1, 1
  store i64 %6, ptr %5, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %2, ptr align 8 %tmp, i64 16, i1 false)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %7 = load i8, ptr %ok, align 1
  %tobool2 = trunc i8 %7 to i1
  ret i1 %tobool2
}

; Function Attrs: nounwind willreturn memory(read)
declare i32 @strcoll(ptr noundef, ptr noundef) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #8

; Function Attrs: cold
declare void @verror(i32 noundef, i32 noundef, ptr noundef, ptr noundef) #9

attributes #0 = { noinline noreturn nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { nounwind willreturn memory(read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind willreturn memory(none) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind willreturn }
attributes #9 = { cold "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nounwind }
attributes #11 = { noreturn nounwind }
attributes #12 = { nounwind willreturn memory(read) }
attributes #13 = { noreturn }
attributes #14 = { cold }
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
!12 = distinct !{!12, !7}
