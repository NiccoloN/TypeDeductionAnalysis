; ModuleID = 'llvm-link'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.infomap = type { ptr, ptr }

@stderr = external global ptr, align 8
@.str = private unnamed_addr constant [39 x i8] c"Try '%s --help' for more information.\0A\00", align 1
@program_name = external global ptr, align 8
@.str.1 = private unnamed_addr constant [40 x i8] c"Usage: %s [STRING]...\0A  or:  %s OPTION\0A\00", align 1
@.str.2 = private unnamed_addr constant [65 x i8] c"Repeatedly output a line with all specified STRING(s), or 'y'.\0A\0A\00", align 1
@stdout = external global ptr, align 8
@.str.3 = private unnamed_addr constant [48 x i8] c"      --help        display this help and exit\0A\00", align 1
@.str.4 = private unnamed_addr constant [57 x i8] c"      --version     output version information and exit\0A\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"yes\00", align 1
@.str.6 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1
@.str.8 = private unnamed_addr constant [24 x i8] c"/usr/local/share/locale\00", align 1
@.str.9 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@Version = external global ptr, align 8
@.str.10 = private unnamed_addr constant [16 x i8] c"David MacKenzie\00", align 1
@optind = external global i32, align 4
@.str.11 = private unnamed_addr constant [2 x i8] c"y\00", align 1
@.str.12 = private unnamed_addr constant [16 x i8] c"standard output\00", align 1
@.str.13 = private unnamed_addr constant [2 x i8] c"[\00", align 1
@.str.14 = private unnamed_addr constant [16 x i8] c"test invocation\00", align 1
@.str.15 = private unnamed_addr constant [22 x i8] c"Multi-call invocation\00", align 1
@.str.16 = private unnamed_addr constant [10 x i8] c"sha224sum\00", align 1
@.str.17 = private unnamed_addr constant [15 x i8] c"sha2 utilities\00", align 1
@.str.18 = private unnamed_addr constant [10 x i8] c"sha256sum\00", align 1
@.str.19 = private unnamed_addr constant [10 x i8] c"sha384sum\00", align 1
@.str.20 = private unnamed_addr constant [10 x i8] c"sha512sum\00", align 1
@__const.emit_ancillary_info.infomap = private unnamed_addr constant [7 x %struct.infomap] [%struct.infomap { ptr @.str.13, ptr @.str.14 }, %struct.infomap { ptr @.str.7, ptr @.str.15 }, %struct.infomap { ptr @.str.16, ptr @.str.17 }, %struct.infomap { ptr @.str.18, ptr @.str.17 }, %struct.infomap { ptr @.str.19, ptr @.str.17 }, %struct.infomap { ptr @.str.20, ptr @.str.17 }, %struct.infomap zeroinitializer], align 16
@.str.21 = private unnamed_addr constant [23 x i8] c"\0A%s online help: <%s>\0A\00", align 1
@.str.22 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1
@.str.23 = private unnamed_addr constant [4 x i8] c"en_\00", align 1
@.str.24 = private unnamed_addr constant [71 x i8] c"Report any translation bugs to <https://translationproject.org/team/>\0A\00", align 1
@.str.25 = private unnamed_addr constant [5 x i8] c"test\00", align 1
@.str.26 = private unnamed_addr constant [27 x i8] c"Full documentation <%s%s>\0A\00", align 1
@.str.27 = private unnamed_addr constant [51 x i8] c"or available locally via: info '(coreutils) %s%s'\0A\00", align 1
@.str.28 = private unnamed_addr constant [12 x i8] c" invocation\00", align 1

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
  %4 = load ptr, ptr @program_name, align 8
  %call3 = call i32 (ptr, ...) @printf(ptr noundef %call2, ptr noundef %3, ptr noundef %4)
  %call4 = call ptr @gettext(ptr noundef @.str.2) #10
  %5 = load ptr, ptr @stdout, align 8
  %call5 = call i32 @fputs_unlocked(ptr noundef %call4, ptr noundef %5)
  %call6 = call ptr @gettext(ptr noundef @.str.3) #10
  %6 = load ptr, ptr @stdout, align 8
  %call7 = call i32 @fputs_unlocked(ptr noundef %call6, ptr noundef %6)
  %call8 = call ptr @gettext(ptr noundef @.str.4) #10
  %7 = load ptr, ptr @stdout, align 8
  %call9 = call i32 @fputs_unlocked(ptr noundef %call8, ptr noundef %7)
  call void @emit_ancillary_info(ptr noundef @.str.5)
  br label %if.end

if.end:                                           ; preds = %if.else, %do.end
  %8 = load i32, ptr %status.addr, align 4
  call void @exit(i32 noundef %8) #11
  unreachable
}

; Function Attrs: nounwind
declare ptr @gettext(ptr noundef) #1

declare i32 @fprintf(ptr noundef, ptr noundef, ...) #2

declare i32 @printf(ptr noundef, ...) #2

declare i32 @fputs_unlocked(ptr noundef, ptr noundef) #2

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
  %call6 = call ptr @gettext(ptr noundef @.str.21) #10
  %call7 = call i32 (ptr, ...) @printf(ptr noundef %call6, ptr noundef @.str.9, ptr noundef @.str.22)
  %call8 = call ptr @setlocale(i32 noundef 5, ptr noundef null) #10
  store ptr %call8, ptr %lc_messages, align 8
  %12 = load ptr, ptr %lc_messages, align 8
  %tobool9 = icmp ne ptr %12, null
  br i1 %tobool9, label %land.lhs.true, label %if.end15

land.lhs.true:                                    ; preds = %if.end
  %13 = load ptr, ptr %lc_messages, align 8
  %call10 = call i32 @strncmp(ptr noundef %13, ptr noundef @.str.23, i64 noundef 3) #12
  %tobool11 = icmp ne i32 %call10, 0
  br i1 %tobool11, label %if.then12, label %if.end15

if.then12:                                        ; preds = %land.lhs.true
  %call13 = call ptr @gettext(ptr noundef @.str.24) #10
  %14 = load ptr, ptr @stdout, align 8
  %call14 = call i32 @fputs_unlocked(ptr noundef %call13, ptr noundef %14)
  br label %if.end15

if.end15:                                         ; preds = %if.then12, %land.lhs.true, %if.end
  %15 = load ptr, ptr %program.addr, align 8
  %call16 = call i32 @strcmp(ptr noundef %15, ptr noundef @.str.13) #12
  %cmp17 = icmp eq i32 %call16, 0
  br i1 %cmp17, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end15
  br label %cond.end

cond.false:                                       ; preds = %if.end15
  %16 = load ptr, ptr %program.addr, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ @.str.25, %cond.true ], [ %16, %cond.false ]
  store ptr %cond, ptr %url_program, align 8
  %call18 = call ptr @gettext(ptr noundef @.str.26) #10
  %17 = load ptr, ptr %url_program, align 8
  %call19 = call i32 (ptr, ...) @printf(ptr noundef %call18, ptr noundef @.str.22, ptr noundef %17)
  %call20 = call ptr @gettext(ptr noundef @.str.27) #10
  %18 = load ptr, ptr %node, align 8
  %19 = load ptr, ptr %node, align 8
  %20 = load ptr, ptr %program.addr, align 8
  %cmp21 = icmp eq ptr %19, %20
  %21 = zext i1 %cmp21 to i64
  %cond22 = select i1 %cmp21, ptr @.str.28, ptr @.str.6
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
  %operands = alloca ptr, align 8
  %operand_lim = alloca ptr, align 8
  %bufalloc = alloca i64, align 8
  %reuse_operand_strings = alloca i8, align 1
  %operandp = alloca ptr, align 8
  %operand_len = alloca i64, align 8
  %buf = alloca ptr, align 8
  %bufused = alloca i64, align 8
  %operand_len25 = alloca i64, align 8
  %copysize = alloca i64, align 8
  %copies = alloca i64, align 8
  store i32 0, ptr %retval, align 4
  store i32 %argc, ptr %argc.addr, align 4
  store ptr %argv, ptr %argv.addr, align 8
  %0 = load ptr, ptr %argv.addr, align 8
  %arrayidx = getelementptr inbounds ptr, ptr %0, i64 0
  %1 = load ptr, ptr %arrayidx, align 8
  call void @set_program_name(ptr noundef %1)
  %call = call ptr @setlocale(i32 noundef 6, ptr noundef @.str.6) #10
  %call1 = call ptr @bindtextdomain(ptr noundef @.str.7, ptr noundef @.str.8) #10
  %call2 = call ptr @textdomain(ptr noundef @.str.7) #10
  %call3 = call i32 @atexit(ptr noundef @close_stdout) #10
  %2 = load i32, ptr %argc.addr, align 4
  %3 = load ptr, ptr %argv.addr, align 8
  %4 = load ptr, ptr @Version, align 8
  %call4 = call ptr @proper_name_lite(ptr noundef @.str.10, ptr noundef @.str.10)
  call void (i32, ptr, ptr, ptr, ptr, i1, ptr, ...) @parse_gnu_standard_options_only(i32 noundef %2, ptr noundef %3, ptr noundef @.str.5, ptr noundef @.str.9, ptr noundef %4, i1 noundef zeroext true, ptr noundef @usage, ptr noundef %call4, ptr noundef null)
  %5 = load ptr, ptr %argv.addr, align 8
  %6 = load i32, ptr @optind, align 4
  %idx.ext = sext i32 %6 to i64
  %add.ptr = getelementptr inbounds ptr, ptr %5, i64 %idx.ext
  store ptr %add.ptr, ptr %operands, align 8
  %7 = load ptr, ptr %argv.addr, align 8
  %8 = load i32, ptr %argc.addr, align 4
  %idx.ext5 = sext i32 %8 to i64
  %add.ptr6 = getelementptr inbounds ptr, ptr %7, i64 %idx.ext5
  store ptr %add.ptr6, ptr %operand_lim, align 8
  %9 = load i32, ptr @optind, align 4
  %10 = load i32, ptr %argc.addr, align 4
  %cmp = icmp eq i32 %9, %10
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call7 = call ptr @bad_cast(ptr noundef @.str.11)
  %11 = load ptr, ptr %operand_lim, align 8
  %incdec.ptr = getelementptr inbounds ptr, ptr %11, i32 1
  store ptr %incdec.ptr, ptr %operand_lim, align 8
  store ptr %call7, ptr %11, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  store i64 0, ptr %bufalloc, align 8
  store i8 1, ptr %reuse_operand_strings, align 1
  %12 = load ptr, ptr %operands, align 8
  store ptr %12, ptr %operandp, align 8
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.end
  %13 = load ptr, ptr %operandp, align 8
  %14 = load ptr, ptr %13, align 8
  %call8 = call i64 @strlen(ptr noundef %14) #12
  store i64 %call8, ptr %operand_len, align 8
  %15 = load i64, ptr %operand_len, align 8
  %add = add i64 %15, 1
  %16 = load i64, ptr %bufalloc, align 8
  %add9 = add i64 %16, %add
  store i64 %add9, ptr %bufalloc, align 8
  %17 = load ptr, ptr %operandp, align 8
  %add.ptr10 = getelementptr inbounds ptr, ptr %17, i64 1
  %18 = load ptr, ptr %operand_lim, align 8
  %cmp11 = icmp ult ptr %add.ptr10, %18
  br i1 %cmp11, label %land.lhs.true, label %if.end17

land.lhs.true:                                    ; preds = %do.body
  %19 = load ptr, ptr %operandp, align 8
  %20 = load ptr, ptr %19, align 8
  %21 = load i64, ptr %operand_len, align 8
  %add.ptr12 = getelementptr inbounds i8, ptr %20, i64 %21
  %add.ptr13 = getelementptr inbounds i8, ptr %add.ptr12, i64 1
  %22 = load ptr, ptr %operandp, align 8
  %arrayidx14 = getelementptr inbounds ptr, ptr %22, i64 1
  %23 = load ptr, ptr %arrayidx14, align 8
  %cmp15 = icmp ne ptr %add.ptr13, %23
  br i1 %cmp15, label %if.then16, label %if.end17

if.then16:                                        ; preds = %land.lhs.true
  store i8 0, ptr %reuse_operand_strings, align 1
  br label %if.end17

if.end17:                                         ; preds = %if.then16, %land.lhs.true, %do.body
  br label %do.cond

do.cond:                                          ; preds = %if.end17
  %24 = load ptr, ptr %operandp, align 8
  %incdec.ptr18 = getelementptr inbounds ptr, ptr %24, i32 1
  store ptr %incdec.ptr18, ptr %operandp, align 8
  %25 = load ptr, ptr %operand_lim, align 8
  %cmp19 = icmp ult ptr %incdec.ptr18, %25
  br i1 %cmp19, label %do.body, label %do.end, !llvm.loop !8

do.end:                                           ; preds = %do.cond
  %26 = load i64, ptr %bufalloc, align 8
  %cmp20 = icmp ule i64 %26, 4096
  br i1 %cmp20, label %if.then21, label %if.end22

if.then21:                                        ; preds = %do.end
  store i64 8192, ptr %bufalloc, align 8
  store i8 0, ptr %reuse_operand_strings, align 1
  br label %if.end22

if.end22:                                         ; preds = %if.then21, %do.end
  %27 = load i8, ptr %reuse_operand_strings, align 1
  %tobool = trunc i8 %27 to i1
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end22
  %28 = load ptr, ptr %operands, align 8
  %29 = load ptr, ptr %28, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end22
  %30 = load i64, ptr %bufalloc, align 8
  %call23 = call noalias nonnull ptr @xmalloc(i64 noundef %30) #13
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %29, %cond.true ], [ %call23, %cond.false ]
  store ptr %cond, ptr %buf, align 8
  store i64 0, ptr %bufused, align 8
  %31 = load ptr, ptr %operands, align 8
  store ptr %31, ptr %operandp, align 8
  br label %do.body24

do.body24:                                        ; preds = %do.cond33, %cond.end
  %32 = load ptr, ptr %operandp, align 8
  %33 = load ptr, ptr %32, align 8
  %call26 = call i64 @strlen(ptr noundef %33) #12
  store i64 %call26, ptr %operand_len25, align 8
  %34 = load i8, ptr %reuse_operand_strings, align 1
  %tobool27 = trunc i8 %34 to i1
  br i1 %tobool27, label %if.end30, label %if.then28

if.then28:                                        ; preds = %do.body24
  %35 = load ptr, ptr %buf, align 8
  %36 = load i64, ptr %bufused, align 8
  %add.ptr29 = getelementptr inbounds i8, ptr %35, i64 %36
  %37 = load ptr, ptr %operandp, align 8
  %38 = load ptr, ptr %37, align 8
  %39 = load i64, ptr %operand_len25, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %add.ptr29, ptr align 1 %38, i64 %39, i1 false)
  br label %if.end30

if.end30:                                         ; preds = %if.then28, %do.body24
  %40 = load i64, ptr %operand_len25, align 8
  %41 = load i64, ptr %bufused, align 8
  %add31 = add i64 %41, %40
  store i64 %add31, ptr %bufused, align 8
  %42 = load ptr, ptr %buf, align 8
  %43 = load i64, ptr %bufused, align 8
  %inc = add i64 %43, 1
  store i64 %inc, ptr %bufused, align 8
  %arrayidx32 = getelementptr inbounds i8, ptr %42, i64 %43
  store i8 32, ptr %arrayidx32, align 1
  br label %do.cond33

do.cond33:                                        ; preds = %if.end30
  %44 = load ptr, ptr %operandp, align 8
  %incdec.ptr34 = getelementptr inbounds ptr, ptr %44, i32 1
  store ptr %incdec.ptr34, ptr %operandp, align 8
  %45 = load ptr, ptr %operand_lim, align 8
  %cmp35 = icmp ult ptr %incdec.ptr34, %45
  br i1 %cmp35, label %do.body24, label %do.end36, !llvm.loop !9

do.end36:                                         ; preds = %do.cond33
  %46 = load ptr, ptr %buf, align 8
  %47 = load i64, ptr %bufused, align 8
  %sub = sub i64 %47, 1
  %arrayidx37 = getelementptr inbounds i8, ptr %46, i64 %sub
  store i8 10, ptr %arrayidx37, align 1
  %48 = load i64, ptr %bufused, align 8
  store i64 %48, ptr %copysize, align 8
  %49 = load i64, ptr %bufalloc, align 8
  %50 = load i64, ptr %copysize, align 8
  %div = udiv i64 %49, %50
  store i64 %div, ptr %copies, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.body, %do.end36
  %51 = load i64, ptr %copies, align 8
  %dec = add i64 %51, -1
  store i64 %dec, ptr %copies, align 8
  %tobool38 = icmp ne i64 %dec, 0
  br i1 %tobool38, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %52 = load ptr, ptr %buf, align 8
  %53 = load i64, ptr %bufused, align 8
  %add.ptr39 = getelementptr inbounds i8, ptr %52, i64 %53
  %54 = load ptr, ptr %buf, align 8
  %55 = load i64, ptr %copysize, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %add.ptr39, ptr align 1 %54, i64 %55, i1 false)
  %56 = load i64, ptr %copysize, align 8
  %57 = load i64, ptr %bufused, align 8
  %add40 = add i64 %57, %56
  store i64 %add40, ptr %bufused, align 8
  br label %for.cond, !llvm.loop !10

for.end:                                          ; preds = %for.cond
  br label %while.cond

while.cond:                                       ; preds = %while.body, %for.end
  %58 = load ptr, ptr %buf, align 8
  %59 = load i64, ptr %bufused, align 8
  %call41 = call i64 @full_write(i32 noundef 1, ptr noundef %58, i64 noundef %59)
  %60 = load i64, ptr %bufused, align 8
  %cmp42 = icmp eq i64 %call41, %60
  br i1 %cmp42, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  br label %while.cond, !llvm.loop !11

while.end:                                        ; preds = %while.cond
  %call43 = call ptr @__errno_location() #14
  %61 = load i32, ptr %call43, align 4
  %call44 = call ptr @gettext(ptr noundef @.str.12) #10
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %61, ptr noundef %call44) #15
  ret i32 1
}

declare void @set_program_name(ptr noundef) #2

; Function Attrs: nounwind
declare ptr @bindtextdomain(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind
declare ptr @textdomain(ptr noundef) #1

declare void @close_stdout() #2

; Function Attrs: nounwind
declare i32 @atexit(ptr noundef) #1

declare ptr @proper_name_lite(ptr noundef, ptr noundef) #2

declare void @parse_gnu_standard_options_only(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext, ptr noundef, ...) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal ptr @bad_cast(ptr noundef %s) #3 {
entry:
  %s.addr = alloca ptr, align 8
  store ptr %s, ptr %s.addr, align 8
  %0 = load ptr, ptr %s.addr, align 8
  ret ptr %0
}

; Function Attrs: nounwind willreturn memory(read)
declare i64 @strlen(ptr noundef) #6

; Function Attrs: allocsize(0)
declare noalias nonnull ptr @xmalloc(i64 noundef) #7

declare i64 @full_write(i32 noundef, ptr noundef, i64 noundef) #2

; Function Attrs: nounwind willreturn memory(none)
declare ptr @__errno_location() #8

; Function Attrs: cold
declare void @error(i32 noundef, i32 noundef, ptr noundef, ...) #9

attributes #0 = { noinline noreturn nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { nounwind willreturn memory(read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind willreturn memory(none) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { cold "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nounwind }
attributes #11 = { noreturn nounwind }
attributes #12 = { nounwind willreturn memory(read) }
attributes #13 = { allocsize(0) }
attributes #14 = { nounwind willreturn memory(none) }
attributes #15 = { cold }

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
