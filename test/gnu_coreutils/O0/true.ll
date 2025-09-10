; ModuleID = 'llvm-link'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.infomap = type { ptr, ptr }

@.str = private unnamed_addr constant [61 x i8] c"Usage: %s [ignored command line arguments]\0A  or:  %s OPTION\0A\00", align 1
@program_name = external global ptr, align 8
@.str.1 = private unnamed_addr constant [5 x i8] c"%s\0A\0A\00", align 1
@.str.2 = private unnamed_addr constant [44 x i8] c"Exit with a status code indicating success.\00", align 1
@.str.3 = private unnamed_addr constant [48 x i8] c"      --help        display this help and exit\0A\00", align 1
@stdout = external global ptr, align 8
@.str.4 = private unnamed_addr constant [57 x i8] c"      --version     output version information and exit\0A\00", align 1
@.str.5 = private unnamed_addr constant [185 x i8] c"\0AYour shell may have its own version of %s, which usually supersedes\0Athe version described here.  Please refer to your shell's documentation\0Afor details about the options it supports.\0A\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"true\00", align 1
@.str.7 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1
@.str.9 = private unnamed_addr constant [24 x i8] c"/usr/local/share/locale\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"--help\00", align 1
@.str.11 = private unnamed_addr constant [10 x i8] c"--version\00", align 1
@.str.12 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@Version = external global ptr, align 8
@.str.13 = private unnamed_addr constant [13 x i8] c"Jim Meyering\00", align 1
@.str.14 = private unnamed_addr constant [2 x i8] c"[\00", align 1
@.str.15 = private unnamed_addr constant [16 x i8] c"test invocation\00", align 1
@.str.16 = private unnamed_addr constant [22 x i8] c"Multi-call invocation\00", align 1
@.str.17 = private unnamed_addr constant [10 x i8] c"sha224sum\00", align 1
@.str.18 = private unnamed_addr constant [15 x i8] c"sha2 utilities\00", align 1
@.str.19 = private unnamed_addr constant [10 x i8] c"sha256sum\00", align 1
@.str.20 = private unnamed_addr constant [10 x i8] c"sha384sum\00", align 1
@.str.21 = private unnamed_addr constant [10 x i8] c"sha512sum\00", align 1
@__const.emit_ancillary_info.infomap = private unnamed_addr constant [7 x %struct.infomap] [%struct.infomap { ptr @.str.14, ptr @.str.15 }, %struct.infomap { ptr @.str.8, ptr @.str.16 }, %struct.infomap { ptr @.str.17, ptr @.str.18 }, %struct.infomap { ptr @.str.19, ptr @.str.18 }, %struct.infomap { ptr @.str.20, ptr @.str.18 }, %struct.infomap { ptr @.str.21, ptr @.str.18 }, %struct.infomap zeroinitializer], align 16
@.str.22 = private unnamed_addr constant [23 x i8] c"\0A%s online help: <%s>\0A\00", align 1
@.str.23 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1
@.str.24 = private unnamed_addr constant [4 x i8] c"en_\00", align 1
@.str.25 = private unnamed_addr constant [71 x i8] c"Report any translation bugs to <https://translationproject.org/team/>\0A\00", align 1
@.str.26 = private unnamed_addr constant [5 x i8] c"test\00", align 1
@.str.27 = private unnamed_addr constant [27 x i8] c"Full documentation <%s%s>\0A\00", align 1
@.str.28 = private unnamed_addr constant [51 x i8] c"or available locally via: info '(coreutils) %s%s'\0A\00", align 1
@.str.29 = private unnamed_addr constant [12 x i8] c" invocation\00", align 1

; Function Attrs: noinline noreturn nounwind optnone uwtable
define dso_local void @usage(i32 noundef %status) #0 {
entry:
  %status.addr = alloca i32, align 4
  store i32 %status, ptr %status.addr, align 4
  %call = call ptr @gettext(ptr noundef @.str) #7
  %0 = load ptr, ptr @program_name, align 8
  %1 = load ptr, ptr @program_name, align 8
  %call1 = call i32 (ptr, ...) @printf(ptr noundef %call, ptr noundef %0, ptr noundef %1)
  %call2 = call ptr @gettext(ptr noundef @.str.2) #7
  %call3 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, ptr noundef %call2)
  %call4 = call ptr @gettext(ptr noundef @.str.3) #7
  %2 = load ptr, ptr @stdout, align 8
  %call5 = call i32 @fputs_unlocked(ptr noundef %call4, ptr noundef %2)
  %call6 = call ptr @gettext(ptr noundef @.str.4) #7
  %3 = load ptr, ptr @stdout, align 8
  %call7 = call i32 @fputs_unlocked(ptr noundef %call6, ptr noundef %3)
  %call8 = call ptr @gettext(ptr noundef @.str.5) #7
  %call9 = call i32 (ptr, ...) @printf(ptr noundef %call8, ptr noundef @.str.6)
  call void @emit_ancillary_info(ptr noundef @.str.6)
  %4 = load i32, ptr %status.addr, align 4
  call void @exit(i32 noundef %4) #8
  unreachable
}

; Function Attrs: nounwind
declare ptr @gettext(ptr noundef) #1

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
  %call = call i32 @strcmp(ptr noundef %3, ptr noundef %5) #9
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
  %call6 = call ptr @gettext(ptr noundef @.str.22) #7
  %call7 = call i32 (ptr, ...) @printf(ptr noundef %call6, ptr noundef @.str.12, ptr noundef @.str.23)
  %call8 = call ptr @setlocale(i32 noundef 5, ptr noundef null) #7
  store ptr %call8, ptr %lc_messages, align 8
  %12 = load ptr, ptr %lc_messages, align 8
  %tobool9 = icmp ne ptr %12, null
  br i1 %tobool9, label %land.lhs.true, label %if.end15

land.lhs.true:                                    ; preds = %if.end
  %13 = load ptr, ptr %lc_messages, align 8
  %call10 = call i32 @strncmp(ptr noundef %13, ptr noundef @.str.24, i64 noundef 3) #9
  %tobool11 = icmp ne i32 %call10, 0
  br i1 %tobool11, label %if.then12, label %if.end15

if.then12:                                        ; preds = %land.lhs.true
  %call13 = call ptr @gettext(ptr noundef @.str.25) #7
  %14 = load ptr, ptr @stdout, align 8
  %call14 = call i32 @fputs_unlocked(ptr noundef %call13, ptr noundef %14)
  br label %if.end15

if.end15:                                         ; preds = %if.then12, %land.lhs.true, %if.end
  %15 = load ptr, ptr %program.addr, align 8
  %call16 = call i32 @strcmp(ptr noundef %15, ptr noundef @.str.14) #9
  %cmp17 = icmp eq i32 %call16, 0
  br i1 %cmp17, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end15
  br label %cond.end

cond.false:                                       ; preds = %if.end15
  %16 = load ptr, ptr %program.addr, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ @.str.26, %cond.true ], [ %16, %cond.false ]
  store ptr %cond, ptr %url_program, align 8
  %call18 = call ptr @gettext(ptr noundef @.str.27) #7
  %17 = load ptr, ptr %url_program, align 8
  %call19 = call i32 (ptr, ...) @printf(ptr noundef %call18, ptr noundef @.str.23, ptr noundef %17)
  %call20 = call ptr @gettext(ptr noundef @.str.28) #7
  %18 = load ptr, ptr %node, align 8
  %19 = load ptr, ptr %node, align 8
  %20 = load ptr, ptr %program.addr, align 8
  %cmp21 = icmp eq ptr %19, %20
  %21 = zext i1 %cmp21 to i64
  %cond22 = select i1 %cmp21, ptr @.str.29, ptr @.str.7
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
  store i32 0, ptr %retval, align 4
  store i32 %argc, ptr %argc.addr, align 4
  store ptr %argv, ptr %argv.addr, align 8
  %0 = load i32, ptr %argc.addr, align 4
  %cmp = icmp eq i32 %0, 2
  br i1 %cmp, label %if.then, label %if.end14

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %argv.addr, align 8
  %arrayidx = getelementptr inbounds ptr, ptr %1, i64 0
  %2 = load ptr, ptr %arrayidx, align 8
  call void @set_program_name(ptr noundef %2)
  %call = call ptr @setlocale(i32 noundef 6, ptr noundef @.str.7) #7
  %call1 = call ptr @bindtextdomain(ptr noundef @.str.8, ptr noundef @.str.9) #7
  %call2 = call ptr @textdomain(ptr noundef @.str.8) #7
  %call3 = call i32 @atexit(ptr noundef @close_stdout) #7
  %3 = load ptr, ptr %argv.addr, align 8
  %arrayidx4 = getelementptr inbounds ptr, ptr %3, i64 1
  %4 = load ptr, ptr %arrayidx4, align 8
  %call5 = call i32 @strcmp(ptr noundef %4, ptr noundef @.str.10) #9
  %cmp6 = icmp eq i32 %call5, 0
  br i1 %cmp6, label %if.then7, label %if.end

if.then7:                                         ; preds = %if.then
  call void @usage(i32 noundef 0) #10
  unreachable

if.end:                                           ; preds = %if.then
  %5 = load ptr, ptr %argv.addr, align 8
  %arrayidx8 = getelementptr inbounds ptr, ptr %5, i64 1
  %6 = load ptr, ptr %arrayidx8, align 8
  %call9 = call i32 @strcmp(ptr noundef %6, ptr noundef @.str.11) #9
  %cmp10 = icmp eq i32 %call9, 0
  br i1 %cmp10, label %if.then11, label %if.end13

if.then11:                                        ; preds = %if.end
  %7 = load ptr, ptr @stdout, align 8
  %8 = load ptr, ptr @Version, align 8
  %call12 = call ptr @proper_name_lite(ptr noundef @.str.13, ptr noundef @.str.13)
  call void (ptr, ptr, ptr, ptr, ...) @version_etc(ptr noundef %7, ptr noundef @.str.6, ptr noundef @.str.12, ptr noundef %8, ptr noundef %call12, ptr noundef null)
  br label %if.end13

if.end13:                                         ; preds = %if.then11, %if.end
  br label %if.end14

if.end14:                                         ; preds = %if.end13, %entry
  ret i32 0
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

declare void @version_etc(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ...) #2

attributes #0 = { noinline noreturn nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { nounwind willreturn memory(read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind }
attributes #8 = { noreturn nounwind }
attributes #9 = { nounwind willreturn memory(read) }
attributes #10 = { noreturn }

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
