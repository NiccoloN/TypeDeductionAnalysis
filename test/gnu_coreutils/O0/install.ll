; ModuleID = 'llvm-link'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.option = type { ptr, i32, ptr, i32 }
%struct.infomap = type { ptr, ptr }
%struct.cp_options = type { i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, ptr, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i8, i8, i8, i8, i8, i8, i32, i32, ptr, ptr }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.passwd = type { ptr, ptr, i32, i32, ptr, ptr, ptr }
%struct.group = type { ptr, ptr, i32, ptr }
%struct.savewd = type { i32, %union.anon }
%union.anon = type { i32 }

@stderr = external global ptr, align 8
@.str = private unnamed_addr constant [39 x i8] c"Try '%s --help' for more information.\0A\00", align 1
@program_name = external global ptr, align 8
@.str.1 = private unnamed_addr constant [165 x i8] c"Usage: %s [OPTION]... [-T] SOURCE DEST\0A  or:  %s [OPTION]... SOURCE... DIRECTORY\0A  or:  %s [OPTION]... -t DIRECTORY SOURCE...\0A  or:  %s [OPTION]... -d DIRECTORY...\0A\00", align 1
@.str.2 = private unnamed_addr constant [465 x i8] c"\0AThis install program copies files (often just compiled) into destination\0Alocations you choose.  If you want to download and install a ready-to-use\0Apackage on a GNU/Linux system, you should instead be using a package manager\0Alike yum(1) or apt-get(1).\0A\0AIn the first three forms, copy SOURCE to DEST or multiple SOURCE(s) to\0Athe existing DIRECTORY, while setting permission modes and owner/group.\0AIn the 4th form, create all components of the given DIRECTORY(ies).\0A\00", align 1
@stdout = external global ptr, align 8
@.str.3 = private unnamed_addr constant [525 x i8] c"      --backup[=CONTROL]  make a backup of each existing destination file\0A  -b                  like --backup but does not accept an argument\0A  -c                  (ignored)\0A  -C, --compare       compare content of source and destination files, and\0A                        if no change to content, ownership, and permissions,\0A                        do not modify the destination at all\0A  -d, --directory     treat all arguments as directory names; create all\0A                        components of the specified directories\0A\00", align 1
@.str.4 = private unnamed_addr constant [192 x i8] c"  -D                  create all leading components of DEST except the last,\0A                        or all components of --target-directory,\0A                        then copy SOURCE to DEST\0A\00", align 1
@.str.5 = private unnamed_addr constant [65 x i8] c"      --debug         explain how a file is copied.  Implies -v\0A\00", align 1
@.str.6 = private unnamed_addr constant [210 x i8] c"  -g, --group=GROUP   set group ownership, instead of process' current group\0A  -m, --mode=MODE     set permission mode (as in chmod), instead of rwxr-xr-x\0A  -o, --owner=OWNER   set ownership (super-user only)\0A\00", align 1
@.str.7 = private unnamed_addr constant [432 x i8] c"  -p, --preserve-timestamps   apply access/modification times of SOURCE files\0A                        to corresponding destination files\0A  -s, --strip         strip symbol tables\0A      --strip-program=PROGRAM  program used to strip binaries\0A  -S, --suffix=SUFFIX  override the usual backup suffix\0A  -t, --target-directory=DIRECTORY  copy all SOURCE arguments into DIRECTORY\0A  -T, --no-target-directory  treat DEST as a normal file\0A\00", align 1
@.str.8 = private unnamed_addr constant [72 x i8] c"  -v, --verbose       print the name of each created file or directory\0A\00", align 1
@.str.9 = private unnamed_addr constant [347 x i8] c"      --preserve-context  preserve SELinux security context\0A  -Z                      set SELinux security context of destination\0A                            file and each created directory to default type\0A      --context[=CTX]     like -Z, or if CTX is specified then set the\0A                            SELinux or SMACK security context to CTX\0A\00", align 1
@.str.10 = private unnamed_addr constant [48 x i8] c"      --help        display this help and exit\0A\00", align 1
@.str.11 = private unnamed_addr constant [57 x i8] c"      --version     output version information and exit\0A\00", align 1
@.str.12 = private unnamed_addr constant [8 x i8] c"install\00", align 1
@selinux_enabled = internal global i32 0, align 4
@.str.13 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.14 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1
@.str.15 = private unnamed_addr constant [24 x i8] c"/usr/local/share/locale\00", align 1
@owner_name = internal global ptr null, align 8
@group_name = internal global ptr null, align 8
@strip_files = internal global i8 0, align 1
@dir_arg = internal global i8 0, align 1
@.str.16 = private unnamed_addr constant [21 x i8] c"bcCsDdg:m:o:pt:TvS:Z\00", align 1
@long_options = internal constant [19 x %struct.option] [%struct.option { ptr @.str.57, i32 2, ptr null, i32 98 }, %struct.option { ptr @.str.58, i32 0, ptr null, i32 67 }, %struct.option { ptr @.str.59, i32 2, ptr null, i32 90 }, %struct.option { ptr @.str.60, i32 0, ptr null, i32 128 }, %struct.option { ptr @.str.61, i32 0, ptr null, i32 100 }, %struct.option { ptr @.str.62, i32 1, ptr null, i32 103 }, %struct.option { ptr @.str.63, i32 1, ptr null, i32 109 }, %struct.option { ptr @.str.64, i32 0, ptr null, i32 84 }, %struct.option { ptr @.str.65, i32 1, ptr null, i32 111 }, %struct.option { ptr @.str.66, i32 0, ptr null, i32 112 }, %struct.option { ptr @.str.67, i32 0, ptr null, i32 129 }, %struct.option { ptr @.str.68, i32 0, ptr null, i32 115 }, %struct.option { ptr @.str.69, i32 1, ptr null, i32 130 }, %struct.option { ptr @.str.70, i32 1, ptr null, i32 83 }, %struct.option { ptr @.str.71, i32 1, ptr null, i32 116 }, %struct.option { ptr @.str.72, i32 0, ptr null, i32 118 }, %struct.option { ptr @.str.73, i32 0, ptr null, i32 -130 }, %struct.option { ptr @.str.74, i32 0, ptr null, i32 -131 }, %struct.option zeroinitializer], align 16
@optarg = external global ptr, align 8
@copy_only_if_needed = internal global i8 0, align 1
@strip_program = internal global ptr @.str.68, align 8
@.str.17 = private unnamed_addr constant [38 x i8] c"multiple target directories specified\00", align 1
@.str.18 = private unnamed_addr constant [73 x i8] c"WARNING: ignoring --preserve-context; this kernel is not SELinux-enabled\00", align 1
@use_default_selinux_context = internal global i8 1, align 1
@.str.19 = private unnamed_addr constant [67 x i8] c"warning: ignoring --context; it requires an SELinux-enabled kernel\00", align 1
@.str.20 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@Version = external global ptr, align 8
@.str.21 = private unnamed_addr constant [16 x i8] c"David MacKenzie\00", align 1
@.str.22 = private unnamed_addr constant [61 x i8] c"the strip option may not be used when installing a directory\00", align 1
@.str.23 = private unnamed_addr constant [57 x i8] c"target directory not allowed when installing a directory\00", align 1
@.str.24 = private unnamed_addr constant [12 x i8] c"backup type\00", align 1
@.str.25 = private unnamed_addr constant [42 x i8] c"cannot set target context and preserve it\00", align 1
@.str.26 = private unnamed_addr constant [50 x i8] c"failed to set default file creation context to %s\00", align 1
@optind = external global i32, align 4
@.str.27 = private unnamed_addr constant [21 x i8] c"missing file operand\00", align 1
@.str.28 = private unnamed_addr constant [42 x i8] c"missing destination file operand after %s\00", align 1
@.str.29 = private unnamed_addr constant [70 x i8] c"cannot combine --target-directory (-t) and --no-target-directory (-T)\00", align 1
@.str.30 = private unnamed_addr constant [17 x i8] c"extra operand %s\00", align 1
@.str.31 = private unnamed_addr constant [20 x i8] c"failed to access %s\00", align 1
@.str.32 = private unnamed_addr constant [10 x i8] c"target %s\00", align 1
@.str.33 = private unnamed_addr constant [16 x i8] c"invalid mode %s\00", align 1
@mode = internal global i32 493, align 4
@dir_mode_bits = internal global i32 4095, align 4
@dir_mode = internal global i32 493, align 4
@.str.34 = private unnamed_addr constant [72 x i8] c"WARNING: ignoring --strip-program option as -s option was not specified\00", align 1
@.str.35 = private unnamed_addr constant [72 x i8] c"options --compare (-C) and --preserve-timestamps are mutually exclusive\00", align 1
@.str.36 = private unnamed_addr constant [58 x i8] c"options --compare (-C) and --strip are mutually exclusive\00", align 1
@.str.37 = private unnamed_addr constant [86 x i8] c"the --compare (-C) option is ignored when you specify a mode with non-permission bits\00", align 1
@.str.38 = private unnamed_addr constant [75 x i8] c"\0AMandatory arguments to long options are mandatory for short options too.\0A\00", align 1
@.str.39 = private unnamed_addr constant [221 x i8] c"\0AThe backup suffix is '~', unless set with --suffix or SIMPLE_BACKUP_SUFFIX.\0AThe version control method may be selected via the --backup option or through\0Athe VERSION_CONTROL environment variable.  Here are the values:\0A\0A\00", align 1
@.str.40 = private unnamed_addr constant [222 x i8] c"  none, off       never make backups (even if --backup is given)\0A  numbered, t     make numbered backups\0A  existing, nil   numbered if numbered backups exist, simple otherwise\0A  simple, never   always make simple backups\0A\00", align 1
@.str.41 = private unnamed_addr constant [2 x i8] c"[\00", align 1
@.str.42 = private unnamed_addr constant [16 x i8] c"test invocation\00", align 1
@.str.43 = private unnamed_addr constant [22 x i8] c"Multi-call invocation\00", align 1
@.str.44 = private unnamed_addr constant [10 x i8] c"sha224sum\00", align 1
@.str.45 = private unnamed_addr constant [15 x i8] c"sha2 utilities\00", align 1
@.str.46 = private unnamed_addr constant [10 x i8] c"sha256sum\00", align 1
@.str.47 = private unnamed_addr constant [10 x i8] c"sha384sum\00", align 1
@.str.48 = private unnamed_addr constant [10 x i8] c"sha512sum\00", align 1
@__const.emit_ancillary_info.infomap = private unnamed_addr constant [7 x %struct.infomap] [%struct.infomap { ptr @.str.41, ptr @.str.42 }, %struct.infomap { ptr @.str.14, ptr @.str.43 }, %struct.infomap { ptr @.str.44, ptr @.str.45 }, %struct.infomap { ptr @.str.46, ptr @.str.45 }, %struct.infomap { ptr @.str.47, ptr @.str.45 }, %struct.infomap { ptr @.str.48, ptr @.str.45 }, %struct.infomap zeroinitializer], align 16
@.str.49 = private unnamed_addr constant [23 x i8] c"\0A%s online help: <%s>\0A\00", align 1
@.str.50 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1
@.str.51 = private unnamed_addr constant [4 x i8] c"en_\00", align 1
@.str.52 = private unnamed_addr constant [71 x i8] c"Report any translation bugs to <https://translationproject.org/team/>\0A\00", align 1
@.str.53 = private unnamed_addr constant [5 x i8] c"test\00", align 1
@.str.54 = private unnamed_addr constant [27 x i8] c"Full documentation <%s%s>\0A\00", align 1
@.str.55 = private unnamed_addr constant [51 x i8] c"or available locally via: info '(coreutils) %s%s'\0A\00", align 1
@.str.56 = private unnamed_addr constant [12 x i8] c" invocation\00", align 1
@.str.57 = private unnamed_addr constant [7 x i8] c"backup\00", align 1
@.str.58 = private unnamed_addr constant [8 x i8] c"compare\00", align 1
@.str.59 = private unnamed_addr constant [8 x i8] c"context\00", align 1
@.str.60 = private unnamed_addr constant [6 x i8] c"debug\00", align 1
@.str.61 = private unnamed_addr constant [10 x i8] c"directory\00", align 1
@.str.62 = private unnamed_addr constant [6 x i8] c"group\00", align 1
@.str.63 = private unnamed_addr constant [5 x i8] c"mode\00", align 1
@.str.64 = private unnamed_addr constant [20 x i8] c"no-target-directory\00", align 1
@.str.65 = private unnamed_addr constant [6 x i8] c"owner\00", align 1
@.str.66 = private unnamed_addr constant [20 x i8] c"preserve-timestamps\00", align 1
@.str.67 = private unnamed_addr constant [17 x i8] c"preserve-context\00", align 1
@.str.68 = private unnamed_addr constant [6 x i8] c"strip\00", align 1
@.str.69 = private unnamed_addr constant [14 x i8] c"strip-program\00", align 1
@.str.70 = private unnamed_addr constant [7 x i8] c"suffix\00", align 1
@.str.71 = private unnamed_addr constant [17 x i8] c"target-directory\00", align 1
@.str.72 = private unnamed_addr constant [8 x i8] c"verbose\00", align 1
@.str.73 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.74 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@get_labeling_handle.initialized = internal global i8 0, align 1
@get_labeling_handle.hnd = internal global ptr null, align 8
@.str.75 = private unnamed_addr constant [41 x i8] c"warning: security labeling handle failed\00", align 1
@.str.76 = private unnamed_addr constant [16 x i8] c"invalid user %s\00", align 1
@owner_id = internal global i32 0, align 4
@.str.77 = private unnamed_addr constant [17 x i8] c"invalid group %s\00", align 1
@group_id = internal global i32 0, align 4
@.str.78 = private unnamed_addr constant [33 x i8] c"failed to restore context for %s\00", align 1
@.str.79 = private unnamed_addr constant [46 x i8] c"failed to set default creation context for %s\00", align 1
@.str.80 = private unnamed_addr constant [22 x i8] c"creating directory %s\00", align 1
@.str.81 = private unnamed_addr constant [27 x i8] c"cannot create directory %s\00", align 1
@.str.82 = private unnamed_addr constant [15 x i8] c"cannot stat %s\00", align 1
@.str.83 = private unnamed_addr constant [17 x i8] c"cannot unlink %s\00", align 1
@have_same_content.a_buff = internal global [4096 x i8] zeroinitializer, align 16
@have_same_content.b_buff = internal global [4096 x i8] zeroinitializer, align 16
@.str.84 = private unnamed_addr constant [24 x i8] c"fork system call failed\00", align 1
@.str.85 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.86 = private unnamed_addr constant [14 x i8] c"cannot run %s\00", align 1
@.str.87 = private unnamed_addr constant [18 x i8] c"waiting for strip\00", align 1
@.str.88 = private unnamed_addr constant [36 x i8] c"strip process terminated abnormally\00", align 1
@.str.89 = private unnamed_addr constant [29 x i8] c"cannot set timestamps for %s\00", align 1
@.str.90 = private unnamed_addr constant [30 x i8] c"cannot change ownership of %s\00", align 1
@.str.91 = private unnamed_addr constant [32 x i8] c"cannot change permissions of %s\00", align 1
@.str.92 = private unnamed_addr constant [35 x i8] c"warning: %s: context lookup failed\00", align 1
@.str.93 = private unnamed_addr constant [44 x i8] c"warning: %s: failed to change context to %s\00", align 1
@.str.94 = private unnamed_addr constant [15 x i8] c"cannot open %s\00", align 1

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
  %call = call ptr @gettext(ptr noundef @.str) #9
  %2 = load ptr, ptr @program_name, align 8
  %call1 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef %call, ptr noundef %2)
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %entry
  %call2 = call ptr @gettext(ptr noundef @.str.1) #9
  %3 = load ptr, ptr @program_name, align 8
  %4 = load ptr, ptr @program_name, align 8
  %5 = load ptr, ptr @program_name, align 8
  %6 = load ptr, ptr @program_name, align 8
  %call3 = call i32 (ptr, ...) @printf(ptr noundef %call2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6)
  %call4 = call ptr @gettext(ptr noundef @.str.2) #9
  %7 = load ptr, ptr @stdout, align 8
  %call5 = call i32 @fputs_unlocked(ptr noundef %call4, ptr noundef %7)
  call void @emit_mandatory_arg_note()
  %call6 = call ptr @gettext(ptr noundef @.str.3) #9
  %8 = load ptr, ptr @stdout, align 8
  %call7 = call i32 @fputs_unlocked(ptr noundef %call6, ptr noundef %8)
  %call8 = call ptr @gettext(ptr noundef @.str.4) #9
  %9 = load ptr, ptr @stdout, align 8
  %call9 = call i32 @fputs_unlocked(ptr noundef %call8, ptr noundef %9)
  %call10 = call ptr @gettext(ptr noundef @.str.5) #9
  %10 = load ptr, ptr @stdout, align 8
  %call11 = call i32 @fputs_unlocked(ptr noundef %call10, ptr noundef %10)
  %call12 = call ptr @gettext(ptr noundef @.str.6) #9
  %11 = load ptr, ptr @stdout, align 8
  %call13 = call i32 @fputs_unlocked(ptr noundef %call12, ptr noundef %11)
  %call14 = call ptr @gettext(ptr noundef @.str.7) #9
  %12 = load ptr, ptr @stdout, align 8
  %call15 = call i32 @fputs_unlocked(ptr noundef %call14, ptr noundef %12)
  %call16 = call ptr @gettext(ptr noundef @.str.8) #9
  %13 = load ptr, ptr @stdout, align 8
  %call17 = call i32 @fputs_unlocked(ptr noundef %call16, ptr noundef %13)
  %call18 = call ptr @gettext(ptr noundef @.str.9) #9
  %14 = load ptr, ptr @stdout, align 8
  %call19 = call i32 @fputs_unlocked(ptr noundef %call18, ptr noundef %14)
  %call20 = call ptr @gettext(ptr noundef @.str.10) #9
  %15 = load ptr, ptr @stdout, align 8
  %call21 = call i32 @fputs_unlocked(ptr noundef %call20, ptr noundef %15)
  %call22 = call ptr @gettext(ptr noundef @.str.11) #9
  %16 = load ptr, ptr @stdout, align 8
  %call23 = call i32 @fputs_unlocked(ptr noundef %call22, ptr noundef %16)
  call void @emit_backup_suffix_note()
  call void @emit_ancillary_info(ptr noundef @.str.12)
  br label %if.end

if.end:                                           ; preds = %if.else, %do.end
  %17 = load i32, ptr %status.addr, align 4
  call void @exit(i32 noundef %17) #10
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
  %call = call ptr @gettext(ptr noundef @.str.38) #9
  %0 = load ptr, ptr @stdout, align 8
  %call1 = call i32 @fputs_unlocked(ptr noundef %call, ptr noundef %0)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @emit_backup_suffix_note() #3 {
entry:
  %call = call ptr @gettext(ptr noundef @.str.39) #9
  %0 = load ptr, ptr @stdout, align 8
  %call1 = call i32 @fputs_unlocked(ptr noundef %call, ptr noundef %0)
  %call2 = call ptr @gettext(ptr noundef @.str.40) #9
  %1 = load ptr, ptr @stdout, align 8
  %call3 = call i32 @fputs_unlocked(ptr noundef %call2, ptr noundef %1)
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
  %call = call i32 @strcmp(ptr noundef %3, ptr noundef %5) #11
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
  %call6 = call ptr @gettext(ptr noundef @.str.49) #9
  %call7 = call i32 (ptr, ...) @printf(ptr noundef %call6, ptr noundef @.str.20, ptr noundef @.str.50)
  %call8 = call ptr @setlocale(i32 noundef 5, ptr noundef null) #9
  store ptr %call8, ptr %lc_messages, align 8
  %12 = load ptr, ptr %lc_messages, align 8
  %tobool9 = icmp ne ptr %12, null
  br i1 %tobool9, label %land.lhs.true, label %if.end15

land.lhs.true:                                    ; preds = %if.end
  %13 = load ptr, ptr %lc_messages, align 8
  %call10 = call i32 @strncmp(ptr noundef %13, ptr noundef @.str.51, i64 noundef 3) #11
  %tobool11 = icmp ne i32 %call10, 0
  br i1 %tobool11, label %if.then12, label %if.end15

if.then12:                                        ; preds = %land.lhs.true
  %call13 = call ptr @gettext(ptr noundef @.str.52) #9
  %14 = load ptr, ptr @stdout, align 8
  %call14 = call i32 @fputs_unlocked(ptr noundef %call13, ptr noundef %14)
  br label %if.end15

if.end15:                                         ; preds = %if.then12, %land.lhs.true, %if.end
  %15 = load ptr, ptr %program.addr, align 8
  %call16 = call i32 @strcmp(ptr noundef %15, ptr noundef @.str.41) #11
  %cmp17 = icmp eq i32 %call16, 0
  br i1 %cmp17, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end15
  br label %cond.end

cond.false:                                       ; preds = %if.end15
  %16 = load ptr, ptr %program.addr, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ @.str.53, %cond.true ], [ %16, %cond.false ]
  store ptr %cond, ptr %url_program, align 8
  %call18 = call ptr @gettext(ptr noundef @.str.54) #9
  %17 = load ptr, ptr %url_program, align 8
  %call19 = call i32 (ptr, ...) @printf(ptr noundef %call18, ptr noundef @.str.50, ptr noundef %17)
  %call20 = call ptr @gettext(ptr noundef @.str.55) #9
  %18 = load ptr, ptr %node, align 8
  %19 = load ptr, ptr %node, align 8
  %20 = load ptr, ptr %program.addr, align 8
  %cmp21 = icmp eq ptr %19, %20
  %21 = zext i1 %cmp21 to i64
  %cond22 = select i1 %cmp21, ptr @.str.56, ptr @.str.13
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
  %exit_status = alloca i32, align 4
  %specified_mode = alloca ptr, align 8
  %make_backups = alloca i8, align 1
  %backup_suffix = alloca ptr, align 8
  %version_control_string = alloca ptr, align 8
  %mkdir_and_install = alloca i8, align 1
  %x = alloca %struct.cp_options, align 8
  %target_directory = alloca ptr, align 8
  %no_target_directory = alloca i8, align 1
  %n_files = alloca i32, align 4
  %file = alloca ptr, align 8
  %strip_program_specified = alloca i8, align 1
  %scontext = alloca ptr, align 8
  %sb = alloca %struct.stat, align 8
  %target_dirfd = alloca i32, align 4
  %lastfile = alloca ptr, align 8
  %fd = alloca i32, align 4
  %change = alloca ptr, align 8
  %i = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  store i32 %argc, ptr %argc.addr, align 4
  store ptr %argv, ptr %argv.addr, align 8
  store i32 0, ptr %exit_status, align 4
  store ptr null, ptr %specified_mode, align 8
  store i8 0, ptr %make_backups, align 1
  store ptr null, ptr %backup_suffix, align 8
  store ptr null, ptr %version_control_string, align 8
  store i8 0, ptr %mkdir_and_install, align 1
  store ptr null, ptr %target_directory, align 8
  store i8 0, ptr %no_target_directory, align 1
  store i8 0, ptr %strip_program_specified, align 1
  store ptr null, ptr %scontext, align 8
  %call = call i32 @is_selinux_enabled()
  %cmp = icmp slt i32 0, %call
  %conv = zext i1 %cmp to i32
  store i32 %conv, ptr @selinux_enabled, align 4
  %0 = load ptr, ptr %argv.addr, align 8
  %arrayidx = getelementptr inbounds ptr, ptr %0, i64 0
  %1 = load ptr, ptr %arrayidx, align 8
  call void @set_program_name(ptr noundef %1)
  %call1 = call ptr @setlocale(i32 noundef 6, ptr noundef @.str.13) #9
  %call2 = call ptr @bindtextdomain(ptr noundef @.str.14, ptr noundef @.str.15) #9
  %call3 = call ptr @textdomain(ptr noundef @.str.14) #9
  %call4 = call i32 @atexit(ptr noundef @close_stdin) #9
  call void @cp_option_init(ptr noundef %x)
  store ptr null, ptr @owner_name, align 8
  store ptr null, ptr @group_name, align 8
  store i8 0, ptr @strip_files, align 1
  store i8 0, ptr @dir_arg, align 1
  %call5 = call i32 @umask(i32 noundef 0) #9
  br label %while.cond

while.cond:                                       ; preds = %sw.epilog, %entry
  %2 = load i32, ptr %argc.addr, align 4
  %3 = load ptr, ptr %argv.addr, align 8
  %call6 = call i32 @getopt_long(i32 noundef %2, ptr noundef %3, ptr noundef @.str.16, ptr noundef @long_options, ptr noundef null) #9
  store i32 %call6, ptr %optc, align 4
  %cmp7 = icmp ne i32 %call6, -1
  br i1 %cmp7, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %4 = load i32, ptr %optc, align 4
  switch i32 %4, label %sw.default [
    i32 98, label %sw.bb
    i32 99, label %sw.bb9
    i32 67, label %sw.bb10
    i32 115, label %sw.bb11
    i32 128, label %sw.bb13
    i32 130, label %sw.bb14
    i32 100, label %sw.bb16
    i32 68, label %sw.bb17
    i32 118, label %sw.bb18
    i32 103, label %sw.bb20
    i32 109, label %sw.bb21
    i32 111, label %sw.bb22
    i32 112, label %sw.bb23
    i32 83, label %sw.bb24
    i32 116, label %sw.bb25
    i32 84, label %sw.bb30
    i32 129, label %sw.bb31
    i32 90, label %sw.bb36
    i32 -130, label %sw.bb49
    i32 -131, label %sw.bb50
  ]

sw.bb:                                            ; preds = %while.body
  store i8 1, ptr %make_backups, align 1
  %5 = load ptr, ptr @optarg, align 8
  %tobool = icmp ne ptr %5, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb
  %6 = load ptr, ptr @optarg, align 8
  store ptr %6, ptr %version_control_string, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.bb
  br label %sw.epilog

sw.bb9:                                           ; preds = %while.body
  br label %sw.epilog

sw.bb10:                                          ; preds = %while.body
  store i8 1, ptr @copy_only_if_needed, align 1
  br label %sw.epilog

sw.bb11:                                          ; preds = %while.body
  store i8 1, ptr @strip_files, align 1
  %call12 = call ptr @signal(i32 noundef 17, ptr noundef null) #9
  br label %sw.epilog

sw.bb13:                                          ; preds = %while.body
  %verbose = getelementptr inbounds %struct.cp_options, ptr %x, i32 0, i32 33
  store i8 1, ptr %verbose, align 8
  %debug = getelementptr inbounds %struct.cp_options, ptr %x, i32 0, i32 35
  store i8 1, ptr %debug, align 2
  br label %sw.epilog

sw.bb14:                                          ; preds = %while.body
  %7 = load ptr, ptr @optarg, align 8
  %call15 = call noalias nonnull ptr @xstrdup(ptr noundef %7)
  store ptr %call15, ptr @strip_program, align 8
  store i8 1, ptr %strip_program_specified, align 1
  br label %sw.epilog

sw.bb16:                                          ; preds = %while.body
  store i8 1, ptr @dir_arg, align 1
  br label %sw.epilog

sw.bb17:                                          ; preds = %while.body
  store i8 1, ptr %mkdir_and_install, align 1
  br label %sw.epilog

sw.bb18:                                          ; preds = %while.body
  %verbose19 = getelementptr inbounds %struct.cp_options, ptr %x, i32 0, i32 33
  store i8 1, ptr %verbose19, align 8
  br label %sw.epilog

sw.bb20:                                          ; preds = %while.body
  %8 = load ptr, ptr @optarg, align 8
  store ptr %8, ptr @group_name, align 8
  br label %sw.epilog

sw.bb21:                                          ; preds = %while.body
  %9 = load ptr, ptr @optarg, align 8
  store ptr %9, ptr %specified_mode, align 8
  br label %sw.epilog

sw.bb22:                                          ; preds = %while.body
  %10 = load ptr, ptr @optarg, align 8
  store ptr %10, ptr @owner_name, align 8
  br label %sw.epilog

sw.bb23:                                          ; preds = %while.body
  %preserve_timestamps = getelementptr inbounds %struct.cp_options, ptr %x, i32 0, i32 18
  store i8 1, ptr %preserve_timestamps, align 1
  br label %sw.epilog

sw.bb24:                                          ; preds = %while.body
  store i8 1, ptr %make_backups, align 1
  %11 = load ptr, ptr @optarg, align 8
  store ptr %11, ptr %backup_suffix, align 8
  br label %sw.epilog

sw.bb25:                                          ; preds = %while.body
  %12 = load ptr, ptr %target_directory, align 8
  %tobool26 = icmp ne ptr %12, null
  br i1 %tobool26, label %if.then27, label %if.end29

if.then27:                                        ; preds = %sw.bb25
  %call28 = call ptr @gettext(ptr noundef @.str.17) #9
  call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef 0, ptr noundef %call28) #12
  unreachable

if.end29:                                         ; preds = %sw.bb25
  %13 = load ptr, ptr @optarg, align 8
  store ptr %13, ptr %target_directory, align 8
  br label %sw.epilog

sw.bb30:                                          ; preds = %while.body
  store i8 1, ptr %no_target_directory, align 1
  br label %sw.epilog

sw.bb31:                                          ; preds = %while.body
  %14 = load i32, ptr @selinux_enabled, align 4
  %tobool32 = icmp ne i32 %14, 0
  br i1 %tobool32, label %if.end35, label %if.then33

if.then33:                                        ; preds = %sw.bb31
  %call34 = call ptr @gettext(ptr noundef @.str.18) #9
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %call34) #12
  br label %sw.epilog

if.end35:                                         ; preds = %sw.bb31
  %preserve_security_context = getelementptr inbounds %struct.cp_options, ptr %x, i32 0, i32 24
  store i8 1, ptr %preserve_security_context, align 1
  store i8 0, ptr @use_default_selinux_context, align 1
  br label %sw.epilog

sw.bb36:                                          ; preds = %while.body
  %15 = load i32, ptr @selinux_enabled, align 4
  %tobool37 = icmp ne i32 %15, 0
  br i1 %tobool37, label %if.then38, label %if.else43

if.then38:                                        ; preds = %sw.bb36
  store i8 0, ptr @use_default_selinux_context, align 1
  %16 = load ptr, ptr @optarg, align 8
  %tobool39 = icmp ne ptr %16, null
  br i1 %tobool39, label %if.then40, label %if.else

if.then40:                                        ; preds = %if.then38
  %17 = load ptr, ptr @optarg, align 8
  store ptr %17, ptr %scontext, align 8
  br label %if.end42

if.else:                                          ; preds = %if.then38
  %call41 = call ptr @get_labeling_handle()
  %set_security_context = getelementptr inbounds %struct.cp_options, ptr %x, i32 0, i32 20
  store ptr %call41, ptr %set_security_context, align 8
  br label %if.end42

if.end42:                                         ; preds = %if.else, %if.then40
  br label %if.end48

if.else43:                                        ; preds = %sw.bb36
  %18 = load ptr, ptr @optarg, align 8
  %tobool44 = icmp ne ptr %18, null
  br i1 %tobool44, label %if.then45, label %if.end47

if.then45:                                        ; preds = %if.else43
  %call46 = call ptr @gettext(ptr noundef @.str.19) #9
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %call46) #12
  br label %if.end47

if.end47:                                         ; preds = %if.then45, %if.else43
  br label %if.end48

if.end48:                                         ; preds = %if.end47, %if.end42
  br label %sw.epilog

sw.bb49:                                          ; preds = %while.body
  call void @usage(i32 noundef 0) #13
  unreachable

sw.bb50:                                          ; preds = %while.body
  %19 = load ptr, ptr @stdout, align 8
  %20 = load ptr, ptr @Version, align 8
  %call51 = call ptr @proper_name_lite(ptr noundef @.str.21, ptr noundef @.str.21)
  call void (ptr, ptr, ptr, ptr, ...) @version_etc(ptr noundef %19, ptr noundef @.str.12, ptr noundef @.str.20, ptr noundef %20, ptr noundef %call51, ptr noundef null)
  call void @exit(i32 noundef 0) #10
  unreachable

sw.default:                                       ; preds = %while.body
  call void @usage(i32 noundef 1) #13
  unreachable

sw.epilog:                                        ; preds = %if.end48, %if.end35, %if.then33, %sw.bb30, %if.end29, %sw.bb24, %sw.bb23, %sw.bb22, %sw.bb21, %sw.bb20, %sw.bb18, %sw.bb17, %sw.bb16, %sw.bb14, %sw.bb13, %sw.bb11, %sw.bb10, %sw.bb9, %if.end
  br label %while.cond, !llvm.loop !8

while.end:                                        ; preds = %while.cond
  %21 = load i8, ptr @dir_arg, align 1
  %tobool52 = trunc i8 %21 to i1
  br i1 %tobool52, label %land.lhs.true, label %if.end58

land.lhs.true:                                    ; preds = %while.end
  %22 = load i8, ptr @strip_files, align 1
  %tobool54 = trunc i8 %22 to i1
  br i1 %tobool54, label %if.then56, label %if.end58

if.then56:                                        ; preds = %land.lhs.true
  %call57 = call ptr @gettext(ptr noundef @.str.22) #9
  call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef 0, ptr noundef %call57) #12
  unreachable

if.end58:                                         ; preds = %land.lhs.true, %while.end
  %23 = load i8, ptr @dir_arg, align 1
  %tobool59 = trunc i8 %23 to i1
  br i1 %tobool59, label %land.lhs.true61, label %if.end65

land.lhs.true61:                                  ; preds = %if.end58
  %24 = load ptr, ptr %target_directory, align 8
  %tobool62 = icmp ne ptr %24, null
  br i1 %tobool62, label %if.then63, label %if.end65

if.then63:                                        ; preds = %land.lhs.true61
  %call64 = call ptr @gettext(ptr noundef @.str.23) #9
  call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef 0, ptr noundef %call64) #12
  unreachable

if.end65:                                         ; preds = %land.lhs.true61, %if.end58
  %25 = load i8, ptr %make_backups, align 1
  %tobool66 = trunc i8 %25 to i1
  br i1 %tobool66, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end65
  %call68 = call ptr @gettext(ptr noundef @.str.24) #9
  %26 = load ptr, ptr %version_control_string, align 8
  %call69 = call i32 @xget_version(ptr noundef %call68, ptr noundef %26)
  br label %cond.end

cond.false:                                       ; preds = %if.end65
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call69, %cond.true ], [ 0, %cond.false ]
  %backup_type = getelementptr inbounds %struct.cp_options, ptr %x, i32 0, i32 0
  store i32 %cond, ptr %backup_type, align 8
  %27 = load ptr, ptr %backup_suffix, align 8
  call void @set_simple_backup_suffix(ptr noundef %27)
  %preserve_security_context70 = getelementptr inbounds %struct.cp_options, ptr %x, i32 0, i32 24
  %28 = load i8, ptr %preserve_security_context70, align 1
  %tobool71 = trunc i8 %28 to i1
  br i1 %tobool71, label %land.lhs.true73, label %if.end79

land.lhs.true73:                                  ; preds = %cond.end
  %set_security_context74 = getelementptr inbounds %struct.cp_options, ptr %x, i32 0, i32 20
  %29 = load ptr, ptr %set_security_context74, align 8
  %tobool75 = icmp ne ptr %29, null
  br i1 %tobool75, label %if.then77, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true73
  %30 = load ptr, ptr %scontext, align 8
  %tobool76 = icmp ne ptr %30, null
  br i1 %tobool76, label %if.then77, label %if.end79

if.then77:                                        ; preds = %lor.lhs.false, %land.lhs.true73
  %call78 = call ptr @gettext(ptr noundef @.str.25) #9
  call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef 0, ptr noundef %call78) #12
  unreachable

if.end79:                                         ; preds = %lor.lhs.false, %cond.end
  %31 = load ptr, ptr %scontext, align 8
  %tobool80 = icmp ne ptr %31, null
  br i1 %tobool80, label %land.lhs.true81, label %if.end89

land.lhs.true81:                                  ; preds = %if.end79
  %32 = load ptr, ptr %scontext, align 8
  %call82 = call i32 @setfscreatecon(ptr noundef %32)
  %cmp83 = icmp slt i32 %call82, 0
  br i1 %cmp83, label %if.then85, label %if.end89

if.then85:                                        ; preds = %land.lhs.true81
  %call86 = call ptr @__errno_location() #14
  %33 = load i32, ptr %call86, align 4
  %call87 = call ptr @gettext(ptr noundef @.str.26) #9
  %34 = load ptr, ptr %scontext, align 8
  %call88 = call ptr @quote(ptr noundef %34)
  call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %33, ptr noundef %call87, ptr noundef %call88) #12
  unreachable

if.end89:                                         ; preds = %land.lhs.true81, %if.end79
  %35 = load i32, ptr %argc.addr, align 4
  %36 = load i32, ptr @optind, align 4
  %sub = sub nsw i32 %35, %36
  store i32 %sub, ptr %n_files, align 4
  %37 = load ptr, ptr %argv.addr, align 8
  %38 = load i32, ptr @optind, align 4
  %idx.ext = sext i32 %38 to i64
  %add.ptr = getelementptr inbounds ptr, ptr %37, i64 %idx.ext
  store ptr %add.ptr, ptr %file, align 8
  %39 = load i32, ptr %n_files, align 4
  %40 = load i8, ptr @dir_arg, align 1
  %tobool90 = trunc i8 %40 to i1
  br i1 %tobool90, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %if.end89
  %41 = load ptr, ptr %target_directory, align 8
  %tobool92 = icmp ne ptr %41, null
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %if.end89
  %42 = phi i1 [ true, %if.end89 ], [ %tobool92, %lor.rhs ]
  %lnot = xor i1 %42, true
  %lnot.ext = zext i1 %lnot to i32
  %cmp93 = icmp sle i32 %39, %lnot.ext
  br i1 %cmp93, label %if.then95, label %if.end105

if.then95:                                        ; preds = %lor.end
  %43 = load i32, ptr %n_files, align 4
  %cmp96 = icmp sle i32 %43, 0
  br i1 %cmp96, label %if.then98, label %if.else100

if.then98:                                        ; preds = %if.then95
  %call99 = call ptr @gettext(ptr noundef @.str.27) #9
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %call99) #12
  br label %if.end104

if.else100:                                       ; preds = %if.then95
  %call101 = call ptr @gettext(ptr noundef @.str.28) #9
  %44 = load ptr, ptr %file, align 8
  %arrayidx102 = getelementptr inbounds ptr, ptr %44, i64 0
  %45 = load ptr, ptr %arrayidx102, align 8
  %call103 = call ptr @quotearg_style(i32 noundef 4, ptr noundef %45)
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %call101, ptr noundef %call103) #12
  br label %if.end104

if.end104:                                        ; preds = %if.else100, %if.then98
  call void @usage(i32 noundef 1) #13
  unreachable

if.end105:                                        ; preds = %lor.end
  store i32 -100, ptr %target_dirfd, align 4
  %46 = load i8, ptr %no_target_directory, align 1
  %tobool106 = trunc i8 %46 to i1
  br i1 %tobool106, label %if.then107, label %if.else119

if.then107:                                       ; preds = %if.end105
  %47 = load ptr, ptr %target_directory, align 8
  %tobool108 = icmp ne ptr %47, null
  br i1 %tobool108, label %if.then109, label %if.end111

if.then109:                                       ; preds = %if.then107
  %call110 = call ptr @gettext(ptr noundef @.str.29) #9
  call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef 0, ptr noundef %call110) #12
  unreachable

if.end111:                                        ; preds = %if.then107
  %48 = load i32, ptr %n_files, align 4
  %cmp112 = icmp slt i32 2, %48
  br i1 %cmp112, label %if.then114, label %if.end118

if.then114:                                       ; preds = %if.end111
  %call115 = call ptr @gettext(ptr noundef @.str.30) #9
  %49 = load ptr, ptr %file, align 8
  %arrayidx116 = getelementptr inbounds ptr, ptr %49, i64 2
  %50 = load ptr, ptr %arrayidx116, align 8
  %call117 = call ptr @quotearg_style(i32 noundef 4, ptr noundef %50)
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %call115, ptr noundef %call117) #12
  call void @usage(i32 noundef 1) #13
  unreachable

if.end118:                                        ; preds = %if.end111
  br label %if.end156

if.else119:                                       ; preds = %if.end105
  %51 = load ptr, ptr %target_directory, align 8
  %tobool120 = icmp ne ptr %51, null
  br i1 %tobool120, label %if.then121, label %if.else137

if.then121:                                       ; preds = %if.else119
  %52 = load ptr, ptr %target_directory, align 8
  %call122 = call i32 @target_directory_operand(ptr noundef %52, ptr noundef %sb)
  store i32 %call122, ptr %target_dirfd, align 4
  %53 = load i32, ptr %target_dirfd, align 4
  %call123 = call zeroext i1 @target_dirfd_valid(i32 noundef %53) #11
  br i1 %call123, label %if.end136, label %lor.lhs.false125

lor.lhs.false125:                                 ; preds = %if.then121
  %54 = load i8, ptr %mkdir_and_install, align 1
  %tobool126 = trunc i8 %54 to i1
  br i1 %tobool126, label %land.lhs.true128, label %if.then132

land.lhs.true128:                                 ; preds = %lor.lhs.false125
  %call129 = call ptr @__errno_location() #14
  %55 = load i32, ptr %call129, align 4
  %cmp130 = icmp eq i32 %55, 2
  br i1 %cmp130, label %if.end136, label %if.then132

if.then132:                                       ; preds = %land.lhs.true128, %lor.lhs.false125
  %call133 = call ptr @__errno_location() #14
  %56 = load i32, ptr %call133, align 4
  %call134 = call ptr @gettext(ptr noundef @.str.31) #9
  %57 = load ptr, ptr %target_directory, align 8
  %call135 = call ptr @quotearg_style(i32 noundef 4, ptr noundef %57)
  call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %56, ptr noundef %call134, ptr noundef %call135) #12
  unreachable

if.end136:                                        ; preds = %land.lhs.true128, %if.then121
  br label %if.end155

if.else137:                                       ; preds = %if.else119
  %58 = load i8, ptr @dir_arg, align 1
  %tobool138 = trunc i8 %58 to i1
  br i1 %tobool138, label %if.end154, label %if.then139

if.then139:                                       ; preds = %if.else137
  %59 = load ptr, ptr %file, align 8
  %60 = load i32, ptr %n_files, align 4
  %sub140 = sub nsw i32 %60, 1
  %idxprom = sext i32 %sub140 to i64
  %arrayidx141 = getelementptr inbounds ptr, ptr %59, i64 %idxprom
  %61 = load ptr, ptr %arrayidx141, align 8
  store ptr %61, ptr %lastfile, align 8
  %62 = load ptr, ptr %lastfile, align 8
  %call142 = call i32 @target_directory_operand(ptr noundef %62, ptr noundef %sb)
  store i32 %call142, ptr %fd, align 4
  %63 = load i32, ptr %fd, align 4
  %call143 = call zeroext i1 @target_dirfd_valid(i32 noundef %63) #11
  br i1 %call143, label %if.then144, label %if.else145

if.then144:                                       ; preds = %if.then139
  %64 = load i32, ptr %fd, align 4
  store i32 %64, ptr %target_dirfd, align 4
  %65 = load ptr, ptr %lastfile, align 8
  store ptr %65, ptr %target_directory, align 8
  %66 = load i32, ptr %n_files, align 4
  %dec = add nsw i32 %66, -1
  store i32 %dec, ptr %n_files, align 4
  br label %if.end153

if.else145:                                       ; preds = %if.then139
  %67 = load i32, ptr %n_files, align 4
  %cmp146 = icmp slt i32 2, %67
  br i1 %cmp146, label %if.then148, label %if.end152

if.then148:                                       ; preds = %if.else145
  %call149 = call ptr @__errno_location() #14
  %68 = load i32, ptr %call149, align 4
  %call150 = call ptr @gettext(ptr noundef @.str.32) #9
  %69 = load ptr, ptr %lastfile, align 8
  %call151 = call ptr @quotearg_style(i32 noundef 4, ptr noundef %69)
  call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %68, ptr noundef %call150, ptr noundef %call151) #12
  unreachable

if.end152:                                        ; preds = %if.else145
  br label %if.end153

if.end153:                                        ; preds = %if.end152, %if.then144
  br label %if.end154

if.end154:                                        ; preds = %if.end153, %if.else137
  br label %if.end155

if.end155:                                        ; preds = %if.end154, %if.end136
  br label %if.end156

if.end156:                                        ; preds = %if.end155, %if.end118
  %70 = load ptr, ptr %specified_mode, align 8
  %tobool157 = icmp ne ptr %70, null
  br i1 %tobool157, label %if.then158, label %if.end167

if.then158:                                       ; preds = %if.end156
  %71 = load ptr, ptr %specified_mode, align 8
  %call159 = call noalias ptr @mode_compile(ptr noundef %71)
  store ptr %call159, ptr %change, align 8
  %72 = load ptr, ptr %change, align 8
  %tobool160 = icmp ne ptr %72, null
  br i1 %tobool160, label %if.end164, label %if.then161

if.then161:                                       ; preds = %if.then158
  %call162 = call ptr @gettext(ptr noundef @.str.33) #9
  %73 = load ptr, ptr %specified_mode, align 8
  %call163 = call ptr @quote(ptr noundef %73)
  call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef 0, ptr noundef %call162, ptr noundef %call163) #12
  unreachable

if.end164:                                        ; preds = %if.then158
  %74 = load ptr, ptr %change, align 8
  %call165 = call i32 @mode_adjust(i32 noundef 0, i1 noundef zeroext false, i32 noundef 0, ptr noundef %74, ptr noundef null) #11
  store i32 %call165, ptr @mode, align 4
  %75 = load ptr, ptr %change, align 8
  %call166 = call i32 @mode_adjust(i32 noundef 0, i1 noundef zeroext true, i32 noundef 0, ptr noundef %75, ptr noundef @dir_mode_bits) #11
  store i32 %call166, ptr @dir_mode, align 4
  %76 = load ptr, ptr %change, align 8
  call void @free(ptr noundef %76) #9
  br label %if.end167

if.end167:                                        ; preds = %if.end164, %if.end156
  %77 = load i8, ptr %strip_program_specified, align 1
  %tobool168 = trunc i8 %77 to i1
  br i1 %tobool168, label %land.lhs.true170, label %if.end174

land.lhs.true170:                                 ; preds = %if.end167
  %78 = load i8, ptr @strip_files, align 1
  %tobool171 = trunc i8 %78 to i1
  br i1 %tobool171, label %if.end174, label %if.then172

if.then172:                                       ; preds = %land.lhs.true170
  %call173 = call ptr @gettext(ptr noundef @.str.34) #9
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %call173) #12
  br label %if.end174

if.end174:                                        ; preds = %if.then172, %land.lhs.true170, %if.end167
  %79 = load i8, ptr @copy_only_if_needed, align 1
  %tobool175 = trunc i8 %79 to i1
  br i1 %tobool175, label %land.lhs.true177, label %if.end183

land.lhs.true177:                                 ; preds = %if.end174
  %preserve_timestamps178 = getelementptr inbounds %struct.cp_options, ptr %x, i32 0, i32 18
  %80 = load i8, ptr %preserve_timestamps178, align 1
  %tobool179 = trunc i8 %80 to i1
  br i1 %tobool179, label %if.then181, label %if.end183

if.then181:                                       ; preds = %land.lhs.true177
  %call182 = call ptr @gettext(ptr noundef @.str.35) #9
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %call182) #12
  call void @usage(i32 noundef 1) #13
  unreachable

if.end183:                                        ; preds = %land.lhs.true177, %if.end174
  %81 = load i8, ptr @copy_only_if_needed, align 1
  %tobool184 = trunc i8 %81 to i1
  br i1 %tobool184, label %land.lhs.true186, label %if.end191

land.lhs.true186:                                 ; preds = %if.end183
  %82 = load i8, ptr @strip_files, align 1
  %tobool187 = trunc i8 %82 to i1
  br i1 %tobool187, label %if.then189, label %if.end191

if.then189:                                       ; preds = %land.lhs.true186
  %call190 = call ptr @gettext(ptr noundef @.str.36) #9
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %call190) #12
  call void @usage(i32 noundef 1) #13
  unreachable

if.end191:                                        ; preds = %land.lhs.true186, %if.end183
  %83 = load i8, ptr @copy_only_if_needed, align 1
  %tobool192 = trunc i8 %83 to i1
  br i1 %tobool192, label %land.lhs.true194, label %if.end199

land.lhs.true194:                                 ; preds = %if.end191
  %84 = load i32, ptr @mode, align 4
  %call195 = call zeroext i1 @extra_mode(i32 noundef %84)
  br i1 %call195, label %if.then197, label %if.end199

if.then197:                                       ; preds = %land.lhs.true194
  %call198 = call ptr @gettext(ptr noundef @.str.37) #9
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %call198) #12
  br label %if.end199

if.end199:                                        ; preds = %if.then197, %land.lhs.true194, %if.end191
  call void @get_ids()
  %85 = load i8, ptr @dir_arg, align 1
  %tobool200 = trunc i8 %85 to i1
  br i1 %tobool200, label %if.then201, label %if.else203

if.then201:                                       ; preds = %if.end199
  %86 = load i32, ptr %n_files, align 4
  %87 = load ptr, ptr %file, align 8
  %call202 = call i32 @savewd_process_files(i32 noundef %86, ptr noundef %87, ptr noundef @process_dir, ptr noundef %x)
  store i32 %call202, ptr %exit_status, align 4
  br label %if.end234

if.else203:                                       ; preds = %if.end199
  call void @hash_init()
  %88 = load ptr, ptr %target_directory, align 8
  %tobool204 = icmp ne ptr %88, null
  br i1 %tobool204, label %if.else221, label %if.then205

if.then205:                                       ; preds = %if.else203
  %89 = load i8, ptr %mkdir_and_install, align 1
  %tobool206 = trunc i8 %89 to i1
  br i1 %tobool206, label %cond.true208, label %cond.false213

cond.true208:                                     ; preds = %if.then205
  %90 = load ptr, ptr %file, align 8
  %arrayidx209 = getelementptr inbounds ptr, ptr %90, i64 0
  %91 = load ptr, ptr %arrayidx209, align 8
  %92 = load ptr, ptr %file, align 8
  %arrayidx210 = getelementptr inbounds ptr, ptr %92, i64 1
  %93 = load ptr, ptr %arrayidx210, align 8
  %call211 = call zeroext i1 @install_file_in_file_parents(ptr noundef %91, ptr noundef %93, ptr noundef %x)
  br i1 %call211, label %if.end220, label %if.then219

cond.false213:                                    ; preds = %if.then205
  %94 = load ptr, ptr %file, align 8
  %arrayidx214 = getelementptr inbounds ptr, ptr %94, i64 0
  %95 = load ptr, ptr %arrayidx214, align 8
  %96 = load ptr, ptr %file, align 8
  %arrayidx215 = getelementptr inbounds ptr, ptr %96, i64 1
  %97 = load ptr, ptr %arrayidx215, align 8
  %98 = load ptr, ptr %file, align 8
  %arrayidx216 = getelementptr inbounds ptr, ptr %98, i64 1
  %99 = load ptr, ptr %arrayidx216, align 8
  %call217 = call zeroext i1 @install_file_in_file(ptr noundef %95, ptr noundef %97, i32 noundef -100, ptr noundef %99, ptr noundef %x)
  br i1 %call217, label %if.end220, label %if.then219

if.then219:                                       ; preds = %cond.false213, %cond.true208
  store i32 1, ptr %exit_status, align 4
  br label %if.end220

if.end220:                                        ; preds = %if.then219, %cond.false213, %cond.true208
  br label %if.end233

if.else221:                                       ; preds = %if.else203
  call void @dest_info_init(ptr noundef %x)
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.else221
  %100 = load i32, ptr %i, align 4
  %101 = load i32, ptr %n_files, align 4
  %cmp222 = icmp slt i32 %100, %101
  br i1 %cmp222, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %102 = load ptr, ptr %file, align 8
  %103 = load i32, ptr %i, align 4
  %idxprom224 = sext i32 %103 to i64
  %arrayidx225 = getelementptr inbounds ptr, ptr %102, i64 %idxprom224
  %104 = load ptr, ptr %arrayidx225, align 8
  %105 = load ptr, ptr %target_directory, align 8
  %106 = load i32, ptr %i, align 4
  %cmp226 = icmp eq i32 %106, 0
  br i1 %cmp226, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.body
  %107 = load i8, ptr %mkdir_and_install, align 1
  %tobool228 = trunc i8 %107 to i1
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.body
  %108 = phi i1 [ false, %for.body ], [ %tobool228, %land.rhs ]
  %call230 = call zeroext i1 @install_file_in_dir(ptr noundef %104, ptr noundef %105, ptr noundef %x, i1 noundef zeroext %108, ptr noundef %target_dirfd)
  br i1 %call230, label %if.end232, label %if.then231

if.then231:                                       ; preds = %land.end
  store i32 1, ptr %exit_status, align 4
  br label %if.end232

if.end232:                                        ; preds = %if.then231, %land.end
  br label %for.inc

for.inc:                                          ; preds = %if.end232
  %109 = load i32, ptr %i, align 4
  %inc = add nsw i32 %109, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !9

for.end:                                          ; preds = %for.cond
  br label %if.end233

if.end233:                                        ; preds = %for.end, %if.end220
  br label %if.end234

if.end234:                                        ; preds = %if.end233, %if.then201
  %110 = load i32, ptr %exit_status, align 4
  ret i32 %110
}

declare i32 @is_selinux_enabled() #2

declare void @set_program_name(ptr noundef) #2

; Function Attrs: nounwind
declare ptr @bindtextdomain(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind
declare ptr @textdomain(ptr noundef) #1

declare void @close_stdin() #2

; Function Attrs: nounwind
declare i32 @atexit(ptr noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cp_option_init(ptr noundef %x) #3 {
entry:
  %x.addr = alloca ptr, align 8
  store ptr %x, ptr %x.addr, align 8
  %0 = load ptr, ptr %x.addr, align 8
  call void @cp_options_default(ptr noundef %0)
  %1 = load ptr, ptr %x.addr, align 8
  %copy_as_regular = getelementptr inbounds %struct.cp_options, ptr %1, i32 0, i32 5
  store i8 1, ptr %copy_as_regular, align 4
  %2 = load ptr, ptr %x.addr, align 8
  %reflink_mode = getelementptr inbounds %struct.cp_options, ptr %2, i32 0, i32 40
  store i32 1, ptr %reflink_mode, align 4
  %3 = load ptr, ptr %x.addr, align 8
  %dereference = getelementptr inbounds %struct.cp_options, ptr %3, i32 0, i32 1
  store i32 4, ptr %dereference, align 4
  %4 = load ptr, ptr %x.addr, align 8
  %unlink_dest_before_opening = getelementptr inbounds %struct.cp_options, ptr %4, i32 0, i32 6
  store i8 1, ptr %unlink_dest_before_opening, align 1
  %5 = load ptr, ptr %x.addr, align 8
  %unlink_dest_after_failed_open = getelementptr inbounds %struct.cp_options, ptr %5, i32 0, i32 7
  store i8 0, ptr %unlink_dest_after_failed_open, align 2
  %6 = load ptr, ptr %x.addr, align 8
  %hard_link = getelementptr inbounds %struct.cp_options, ptr %6, i32 0, i32 8
  store i8 0, ptr %hard_link, align 1
  %7 = load ptr, ptr %x.addr, align 8
  %interactive = getelementptr inbounds %struct.cp_options, ptr %7, i32 0, i32 2
  store i32 0, ptr %interactive, align 8
  %8 = load ptr, ptr %x.addr, align 8
  %move_mode = getelementptr inbounds %struct.cp_options, ptr %8, i32 0, i32 9
  store i8 0, ptr %move_mode, align 8
  %9 = load ptr, ptr %x.addr, align 8
  %install_mode = getelementptr inbounds %struct.cp_options, ptr %9, i32 0, i32 12
  store i8 1, ptr %install_mode, align 1
  %10 = load ptr, ptr %x.addr, align 8
  %one_file_system = getelementptr inbounds %struct.cp_options, ptr %10, i32 0, i32 15
  store i8 0, ptr %one_file_system, align 2
  %11 = load ptr, ptr %x.addr, align 8
  %preserve_ownership = getelementptr inbounds %struct.cp_options, ptr %11, i32 0, i32 16
  store i8 0, ptr %preserve_ownership, align 1
  %12 = load ptr, ptr %x.addr, align 8
  %preserve_links = getelementptr inbounds %struct.cp_options, ptr %12, i32 0, i32 21
  store i8 0, ptr %preserve_links, align 8
  %13 = load ptr, ptr %x.addr, align 8
  %preserve_mode = getelementptr inbounds %struct.cp_options, ptr %13, i32 0, i32 17
  store i8 0, ptr %preserve_mode, align 8
  %14 = load ptr, ptr %x.addr, align 8
  %preserve_timestamps = getelementptr inbounds %struct.cp_options, ptr %14, i32 0, i32 18
  store i8 0, ptr %preserve_timestamps, align 1
  %15 = load ptr, ptr %x.addr, align 8
  %explicit_no_preserve_mode = getelementptr inbounds %struct.cp_options, ptr %15, i32 0, i32 19
  store i8 0, ptr %explicit_no_preserve_mode, align 2
  %16 = load ptr, ptr %x.addr, align 8
  %reduce_diagnostics = getelementptr inbounds %struct.cp_options, ptr %16, i32 0, i32 28
  store i8 0, ptr %reduce_diagnostics, align 1
  %17 = load ptr, ptr %x.addr, align 8
  %data_copy_required = getelementptr inbounds %struct.cp_options, ptr %17, i32 0, i32 22
  store i8 1, ptr %data_copy_required, align 1
  %18 = load ptr, ptr %x.addr, align 8
  %require_preserve = getelementptr inbounds %struct.cp_options, ptr %18, i32 0, i32 23
  store i8 0, ptr %require_preserve, align 2
  %19 = load ptr, ptr %x.addr, align 8
  %require_preserve_xattr = getelementptr inbounds %struct.cp_options, ptr %19, i32 0, i32 27
  store i8 0, ptr %require_preserve_xattr, align 2
  %20 = load ptr, ptr %x.addr, align 8
  %recursive = getelementptr inbounds %struct.cp_options, ptr %20, i32 0, i32 29
  store i8 0, ptr %recursive, align 8
  %21 = load ptr, ptr %x.addr, align 8
  %sparse_mode = getelementptr inbounds %struct.cp_options, ptr %21, i32 0, i32 3
  store i32 2, ptr %sparse_mode, align 4
  %22 = load ptr, ptr %x.addr, align 8
  %symbolic_link = getelementptr inbounds %struct.cp_options, ptr %22, i32 0, i32 31
  store i8 0, ptr %symbolic_link, align 2
  %23 = load ptr, ptr %x.addr, align 8
  %backup_type = getelementptr inbounds %struct.cp_options, ptr %23, i32 0, i32 0
  store i32 0, ptr %backup_type, align 8
  %24 = load ptr, ptr %x.addr, align 8
  %set_mode = getelementptr inbounds %struct.cp_options, ptr %24, i32 0, i32 30
  store i8 1, ptr %set_mode, align 1
  %25 = load ptr, ptr %x.addr, align 8
  %mode = getelementptr inbounds %struct.cp_options, ptr %25, i32 0, i32 4
  store i32 384, ptr %mode, align 8
  %26 = load ptr, ptr %x.addr, align 8
  %stdin_tty = getelementptr inbounds %struct.cp_options, ptr %26, i32 0, i32 36
  store i8 0, ptr %stdin_tty, align 1
  %27 = load ptr, ptr %x.addr, align 8
  %open_dangling_dest_symlink = getelementptr inbounds %struct.cp_options, ptr %27, i32 0, i32 37
  store i8 0, ptr %open_dangling_dest_symlink, align 4
  %28 = load ptr, ptr %x.addr, align 8
  %update = getelementptr inbounds %struct.cp_options, ptr %28, i32 0, i32 32
  store i32 0, ptr %update, align 4
  %29 = load ptr, ptr %x.addr, align 8
  %require_preserve_context = getelementptr inbounds %struct.cp_options, ptr %29, i32 0, i32 25
  store i8 0, ptr %require_preserve_context, align 4
  %30 = load ptr, ptr %x.addr, align 8
  %preserve_security_context = getelementptr inbounds %struct.cp_options, ptr %30, i32 0, i32 24
  store i8 0, ptr %preserve_security_context, align 1
  %31 = load ptr, ptr %x.addr, align 8
  %set_security_context = getelementptr inbounds %struct.cp_options, ptr %31, i32 0, i32 20
  store ptr null, ptr %set_security_context, align 8
  %32 = load ptr, ptr %x.addr, align 8
  %preserve_xattr = getelementptr inbounds %struct.cp_options, ptr %32, i32 0, i32 26
  store i8 0, ptr %preserve_xattr, align 1
  %33 = load ptr, ptr %x.addr, align 8
  %verbose = getelementptr inbounds %struct.cp_options, ptr %33, i32 0, i32 33
  store i8 0, ptr %verbose, align 8
  %34 = load ptr, ptr %x.addr, align 8
  %dest_info = getelementptr inbounds %struct.cp_options, ptr %34, i32 0, i32 41
  store ptr null, ptr %dest_info, align 8
  %35 = load ptr, ptr %x.addr, align 8
  %src_info = getelementptr inbounds %struct.cp_options, ptr %35, i32 0, i32 42
  store ptr null, ptr %src_info, align 8
  ret void
}

; Function Attrs: nounwind
declare i32 @umask(i32 noundef) #1

; Function Attrs: nounwind
declare i32 @getopt_long(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind
declare ptr @signal(i32 noundef, ptr noundef) #1

declare noalias nonnull ptr @xstrdup(ptr noundef) #2

; Function Attrs: cold
declare void @error(i32 noundef, i32 noundef, ptr noundef, ...) #7

; Function Attrs: noinline nounwind optnone uwtable
define internal ptr @get_labeling_handle() #3 {
entry:
  %0 = load i8, ptr @get_labeling_handle.initialized, align 1
  %tobool = trunc i8 %0 to i1
  br i1 %tobool, label %if.end5, label %if.then

if.then:                                          ; preds = %entry
  store i8 1, ptr @get_labeling_handle.initialized, align 1
  %call = call ptr @selabel_open(i32 noundef 0, ptr noundef null, i32 noundef 0)
  store ptr %call, ptr @get_labeling_handle.hnd, align 8
  %1 = load ptr, ptr @get_labeling_handle.hnd, align 8
  %tobool1 = icmp ne ptr %1, null
  br i1 %tobool1, label %if.end, label %if.then2

if.then2:                                         ; preds = %if.then
  %call3 = call ptr @__errno_location() #14
  %2 = load i32, ptr %call3, align 4
  %call4 = call ptr @gettext(ptr noundef @.str.75) #9
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %2, ptr noundef %call4) #12
  br label %if.end

if.end:                                           ; preds = %if.then2, %if.then
  br label %if.end5

if.end5:                                          ; preds = %if.end, %entry
  %3 = load ptr, ptr @get_labeling_handle.hnd, align 8
  ret ptr %3
}

declare ptr @proper_name_lite(ptr noundef, ptr noundef) #2

declare void @version_etc(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ...) #2

declare i32 @xget_version(ptr noundef, ptr noundef) #2

declare void @set_simple_backup_suffix(ptr noundef) #2

declare i32 @setfscreatecon(ptr noundef) #2

; Function Attrs: nounwind willreturn memory(none)
declare ptr @__errno_location() #8

declare ptr @quote(ptr noundef) #2

declare ptr @quotearg_style(i32 noundef, ptr noundef) #2

declare i32 @target_directory_operand(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind willreturn memory(read)
declare zeroext i1 @target_dirfd_valid(i32 noundef) #6

declare noalias ptr @mode_compile(ptr noundef) #2

; Function Attrs: nounwind willreturn memory(read)
declare i32 @mode_adjust(i32 noundef, i1 noundef zeroext, i32 noundef, ptr noundef, ptr noundef) #6

; Function Attrs: nounwind
declare void @free(ptr noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i1 @extra_mode(i32 noundef %input) #3 {
entry:
  %input.addr = alloca i32, align 4
  %mask = alloca i32, align 4
  store i32 %input, ptr %input.addr, align 4
  store i32 61951, ptr %mask, align 4
  %0 = load i32, ptr %input.addr, align 4
  %1 = load i32, ptr %mask, align 4
  %not = xor i32 %1, -1
  %and = and i32 %0, %not
  %tobool = icmp ne i32 %and, 0
  %lnot = xor i1 %tobool, true
  %lnot1 = xor i1 %lnot, true
  ret i1 %lnot1
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @get_ids() #3 {
entry:
  %pw = alloca ptr, align 8
  %gr = alloca ptr, align 8
  %tmp = alloca i64, align 8
  %tmp17 = alloca i64, align 8
  %0 = load ptr, ptr @owner_name, align 8
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %if.then, label %if.else9

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr @owner_name, align 8
  %call = call ptr @getpwnam(ptr noundef %1)
  store ptr %call, ptr %pw, align 8
  %2 = load ptr, ptr %pw, align 8
  %cmp = icmp eq ptr %2, null
  br i1 %cmp, label %if.then1, label %if.else

if.then1:                                         ; preds = %if.then
  %3 = load ptr, ptr @owner_name, align 8
  %call2 = call i32 @xstrtoumax(ptr noundef %3, ptr noundef null, i32 noundef 0, ptr noundef %tmp, ptr noundef @.str.13)
  %cmp3 = icmp ne i32 %call2, 0
  br i1 %cmp3, label %if.then5, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then1
  %4 = load i64, ptr %tmp, align 8
  %cmp4 = icmp ult i64 4294967295, %4
  br i1 %cmp4, label %if.then5, label %if.end

if.then5:                                         ; preds = %lor.lhs.false, %if.then1
  %call6 = call ptr @gettext(ptr noundef @.str.76) #9
  %5 = load ptr, ptr @owner_name, align 8
  %call7 = call ptr @quotearg_style(i32 noundef 4, ptr noundef %5)
  call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef 0, ptr noundef %call6, ptr noundef %call7) #12
  unreachable

if.end:                                           ; preds = %lor.lhs.false
  %6 = load i64, ptr %tmp, align 8
  %conv = trunc i64 %6 to i32
  store i32 %conv, ptr @owner_id, align 4
  br label %if.end8

if.else:                                          ; preds = %if.then
  %7 = load ptr, ptr %pw, align 8
  %pw_uid = getelementptr inbounds %struct.passwd, ptr %7, i32 0, i32 2
  %8 = load i32, ptr %pw_uid, align 8
  store i32 %8, ptr @owner_id, align 4
  br label %if.end8

if.end8:                                          ; preds = %if.else, %if.end
  call void @endpwent()
  br label %if.end10

if.else9:                                         ; preds = %entry
  store i32 -1, ptr @owner_id, align 4
  br label %if.end10

if.end10:                                         ; preds = %if.else9, %if.end8
  %9 = load ptr, ptr @group_name, align 8
  %tobool11 = icmp ne ptr %9, null
  br i1 %tobool11, label %if.then12, label %if.else31

if.then12:                                        ; preds = %if.end10
  %10 = load ptr, ptr @group_name, align 8
  %call13 = call ptr @getgrnam(ptr noundef %10)
  store ptr %call13, ptr %gr, align 8
  %11 = load ptr, ptr %gr, align 8
  %cmp14 = icmp eq ptr %11, null
  br i1 %cmp14, label %if.then16, label %if.else29

if.then16:                                        ; preds = %if.then12
  %12 = load ptr, ptr @group_name, align 8
  %call18 = call i32 @xstrtoumax(ptr noundef %12, ptr noundef null, i32 noundef 0, ptr noundef %tmp17, ptr noundef @.str.13)
  %cmp19 = icmp ne i32 %call18, 0
  br i1 %cmp19, label %if.then24, label %lor.lhs.false21

lor.lhs.false21:                                  ; preds = %if.then16
  %13 = load i64, ptr %tmp17, align 8
  %cmp22 = icmp ult i64 4294967295, %13
  br i1 %cmp22, label %if.then24, label %if.end27

if.then24:                                        ; preds = %lor.lhs.false21, %if.then16
  %call25 = call ptr @gettext(ptr noundef @.str.77) #9
  %14 = load ptr, ptr @group_name, align 8
  %call26 = call ptr @quotearg_style(i32 noundef 4, ptr noundef %14)
  call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef 0, ptr noundef %call25, ptr noundef %call26) #12
  unreachable

if.end27:                                         ; preds = %lor.lhs.false21
  %15 = load i64, ptr %tmp17, align 8
  %conv28 = trunc i64 %15 to i32
  store i32 %conv28, ptr @group_id, align 4
  br label %if.end30

if.else29:                                        ; preds = %if.then12
  %16 = load ptr, ptr %gr, align 8
  %gr_gid = getelementptr inbounds %struct.group, ptr %16, i32 0, i32 2
  %17 = load i32, ptr %gr_gid, align 8
  store i32 %17, ptr @group_id, align 4
  br label %if.end30

if.end30:                                         ; preds = %if.else29, %if.end27
  call void @endgrent()
  br label %if.end32

if.else31:                                        ; preds = %if.end10
  store i32 -1, ptr @group_id, align 4
  br label %if.end32

if.end32:                                         ; preds = %if.else31, %if.end30
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @process_dir(ptr noundef %dir, ptr noundef %wd, ptr noundef %options) #3 {
entry:
  %dir.addr = alloca ptr, align 8
  %wd.addr = alloca ptr, align 8
  %options.addr = alloca ptr, align 8
  %x = alloca ptr, align 8
  %ret = alloca i32, align 4
  store ptr %dir, ptr %dir.addr, align 8
  store ptr %wd, ptr %wd.addr, align 8
  store ptr %options, ptr %options.addr, align 8
  %0 = load ptr, ptr %options.addr, align 8
  store ptr %0, ptr %x, align 8
  %1 = load ptr, ptr %dir.addr, align 8
  %2 = load ptr, ptr %wd.addr, align 8
  %3 = load ptr, ptr %options.addr, align 8
  %4 = load i32, ptr @dir_mode, align 4
  %5 = load i32, ptr @dir_mode_bits, align 4
  %6 = load i32, ptr @owner_id, align 4
  %7 = load i32, ptr @group_id, align 4
  %call = call zeroext i1 @make_dir_parents(ptr noundef %1, ptr noundef %2, ptr noundef @make_ancestor, ptr noundef %3, i32 noundef %4, ptr noundef @announce_mkdir, i32 noundef %5, i32 noundef %6, i32 noundef %7, i1 noundef zeroext false)
  %8 = zext i1 %call to i64
  %cond = select i1 %call, i32 0, i32 1
  store i32 %cond, ptr %ret, align 4
  %9 = load i32, ptr %ret, align 4
  %cmp = icmp eq i32 %9, 0
  br i1 %cmp, label %land.lhs.true, label %if.end11

land.lhs.true:                                    ; preds = %entry
  %10 = load ptr, ptr %x, align 8
  %set_security_context = getelementptr inbounds %struct.cp_options, ptr %10, i32 0, i32 20
  %11 = load ptr, ptr %set_security_context, align 8
  %tobool = icmp ne ptr %11, null
  br i1 %tobool, label %if.then, label %if.end11

if.then:                                          ; preds = %land.lhs.true
  %12 = load ptr, ptr %x, align 8
  %set_security_context1 = getelementptr inbounds %struct.cp_options, ptr %12, i32 0, i32 20
  %13 = load ptr, ptr %set_security_context1, align 8
  %14 = load ptr, ptr %dir.addr, align 8
  %call2 = call ptr @last_component(ptr noundef %14) #11
  %call3 = call zeroext i1 @restorecon(ptr noundef %13, ptr noundef %call2, i1 noundef zeroext false)
  br i1 %call3, label %if.end, label %land.lhs.true4

land.lhs.true4:                                   ; preds = %if.then
  %call5 = call ptr @__errno_location() #14
  %15 = load i32, ptr %call5, align 4
  %call6 = call zeroext i1 @ignorable_ctx_err(i32 noundef %15)
  br i1 %call6, label %if.end, label %if.then7

if.then7:                                         ; preds = %land.lhs.true4
  %call8 = call ptr @__errno_location() #14
  %16 = load i32, ptr %call8, align 4
  %call9 = call ptr @gettext(ptr noundef @.str.78) #9
  %17 = load ptr, ptr %dir.addr, align 8
  %call10 = call ptr @quotearg_style(i32 noundef 4, ptr noundef %17)
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %16, ptr noundef %call9, ptr noundef %call10) #12
  br label %if.end

if.end:                                           ; preds = %if.then7, %land.lhs.true4, %if.then
  br label %if.end11

if.end11:                                         ; preds = %if.end, %land.lhs.true, %entry
  %18 = load i32, ptr %ret, align 4
  ret i32 %18
}

declare i32 @savewd_process_files(i32 noundef, ptr noundef, ptr noundef, ptr noundef) #2

declare void @hash_init() #2

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i1 @install_file_in_file_parents(ptr noundef %from, ptr noundef %to, ptr noundef %x) #3 {
entry:
  %from.addr = alloca ptr, align 8
  %to.addr = alloca ptr, align 8
  %x.addr = alloca ptr, align 8
  store ptr %from, ptr %from.addr, align 8
  store ptr %to, ptr %to.addr, align 8
  store ptr %x, ptr %x.addr, align 8
  %0 = load ptr, ptr %from.addr, align 8
  %1 = load ptr, ptr %to.addr, align 8
  %2 = load ptr, ptr %x.addr, align 8
  %call = call zeroext i1 @mkancesdirs_safe_wd(ptr noundef %0, ptr noundef %1, ptr noundef %2, i1 noundef zeroext false)
  br i1 %call, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %3 = load ptr, ptr %from.addr, align 8
  %4 = load ptr, ptr %to.addr, align 8
  %5 = load ptr, ptr %to.addr, align 8
  %6 = load ptr, ptr %x.addr, align 8
  %call1 = call zeroext i1 @install_file_in_file(ptr noundef %3, ptr noundef %4, i32 noundef -100, ptr noundef %5, ptr noundef %6)
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %7 = phi i1 [ false, %entry ], [ %call1, %land.rhs ]
  ret i1 %7
}

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i1 @install_file_in_file(ptr noundef %from, ptr noundef %to, i32 noundef %to_dirfd, ptr noundef %to_relname, ptr noundef %x) #3 {
entry:
  %retval = alloca i1, align 1
  %from.addr = alloca ptr, align 8
  %to.addr = alloca ptr, align 8
  %to_dirfd.addr = alloca i32, align 4
  %to_relname.addr = alloca ptr, align 8
  %x.addr = alloca ptr, align 8
  %from_sb = alloca %struct.stat, align 8
  store ptr %from, ptr %from.addr, align 8
  store ptr %to, ptr %to.addr, align 8
  store i32 %to_dirfd, ptr %to_dirfd.addr, align 4
  store ptr %to_relname, ptr %to_relname.addr, align 8
  store ptr %x, ptr %x.addr, align 8
  %0 = load ptr, ptr %x.addr, align 8
  %preserve_timestamps = getelementptr inbounds %struct.cp_options, ptr %0, i32 0, i32 18
  %1 = load i8, ptr %preserve_timestamps, align 1
  %tobool = trunc i8 %1 to i1
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %2 = load ptr, ptr %from.addr, align 8
  %call = call i32 @stat(ptr noundef %2, ptr noundef %from_sb) #9
  %cmp = icmp ne i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %call1 = call ptr @__errno_location() #14
  %3 = load i32, ptr %call1, align 4
  %call2 = call ptr @gettext(ptr noundef @.str.82) #9
  %4 = load ptr, ptr %from.addr, align 8
  %call3 = call ptr @quotearg_style(i32 noundef 4, ptr noundef %4)
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %3, ptr noundef %call2, ptr noundef %call3) #12
  store i1 false, ptr %retval, align 1
  br label %return

if.end:                                           ; preds = %land.lhs.true, %entry
  %5 = load ptr, ptr %from.addr, align 8
  %6 = load ptr, ptr %to.addr, align 8
  %7 = load i32, ptr %to_dirfd.addr, align 4
  %8 = load ptr, ptr %to_relname.addr, align 8
  %9 = load ptr, ptr %x.addr, align 8
  %call4 = call zeroext i1 @copy_file(ptr noundef %5, ptr noundef %6, i32 noundef %7, ptr noundef %8, ptr noundef %9)
  br i1 %call4, label %if.end6, label %if.then5

if.then5:                                         ; preds = %if.end
  store i1 false, ptr %retval, align 1
  br label %return

if.end6:                                          ; preds = %if.end
  %10 = load i8, ptr @strip_files, align 1
  %tobool7 = trunc i8 %10 to i1
  br i1 %tobool7, label %if.then8, label %if.end19

if.then8:                                         ; preds = %if.end6
  %11 = load ptr, ptr %to.addr, align 8
  %call9 = call zeroext i1 @strip(ptr noundef %11)
  br i1 %call9, label %if.end18, label %if.then10

if.then10:                                        ; preds = %if.then8
  %12 = load i32, ptr %to_dirfd.addr, align 4
  %13 = load ptr, ptr %to_relname.addr, align 8
  %call11 = call i32 @unlinkat(i32 noundef %12, ptr noundef %13, i32 noundef 0) #9
  %cmp12 = icmp ne i32 %call11, 0
  br i1 %cmp12, label %if.then13, label %if.end17

if.then13:                                        ; preds = %if.then10
  %call14 = call ptr @__errno_location() #14
  %14 = load i32, ptr %call14, align 4
  %call15 = call ptr @gettext(ptr noundef @.str.83) #9
  %15 = load ptr, ptr %to.addr, align 8
  %call16 = call ptr @quotearg_style(i32 noundef 4, ptr noundef %15)
  call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %14, ptr noundef %call15, ptr noundef %call16) #12
  unreachable

if.end17:                                         ; preds = %if.then10
  store i1 false, ptr %retval, align 1
  br label %return

if.end18:                                         ; preds = %if.then8
  br label %if.end19

if.end19:                                         ; preds = %if.end18, %if.end6
  %16 = load ptr, ptr %x.addr, align 8
  %preserve_timestamps20 = getelementptr inbounds %struct.cp_options, ptr %16, i32 0, i32 18
  %17 = load i8, ptr %preserve_timestamps20, align 1
  %tobool21 = trunc i8 %17 to i1
  br i1 %tobool21, label %land.lhs.true22, label %if.end28

land.lhs.true22:                                  ; preds = %if.end19
  %18 = load i8, ptr @strip_files, align 1
  %tobool23 = trunc i8 %18 to i1
  br i1 %tobool23, label %land.lhs.true25, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true22
  %st_mode = getelementptr inbounds %struct.stat, ptr %from_sb, i32 0, i32 3
  %19 = load i32, ptr %st_mode, align 8
  %and = and i32 %19, 61440
  %cmp24 = icmp eq i32 %and, 32768
  br i1 %cmp24, label %if.end28, label %land.lhs.true25

land.lhs.true25:                                  ; preds = %lor.lhs.false, %land.lhs.true22
  %20 = load ptr, ptr %to.addr, align 8
  %21 = load i32, ptr %to_dirfd.addr, align 4
  %22 = load ptr, ptr %to_relname.addr, align 8
  %call26 = call zeroext i1 @change_timestamps(ptr noundef %from_sb, ptr noundef %20, i32 noundef %21, ptr noundef %22)
  br i1 %call26, label %if.end28, label %if.then27

if.then27:                                        ; preds = %land.lhs.true25
  store i1 false, ptr %retval, align 1
  br label %return

if.end28:                                         ; preds = %land.lhs.true25, %lor.lhs.false, %if.end19
  %23 = load ptr, ptr %to.addr, align 8
  %24 = load i32, ptr %to_dirfd.addr, align 4
  %25 = load ptr, ptr %to_relname.addr, align 8
  %call29 = call zeroext i1 @change_attributes(ptr noundef %23, i32 noundef %24, ptr noundef %25)
  store i1 %call29, ptr %retval, align 1
  br label %return

return:                                           ; preds = %if.end28, %if.then27, %if.end17, %if.then5, %if.then
  %26 = load i1, ptr %retval, align 1
  ret i1 %26
}

declare void @dest_info_init(ptr noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i1 @install_file_in_dir(ptr noundef %from, ptr noundef %to_dir, ptr noundef %x, i1 noundef zeroext %mkdir_and_install, ptr noundef %target_dirfd) #3 {
entry:
  %from.addr = alloca ptr, align 8
  %to_dir.addr = alloca ptr, align 8
  %x.addr = alloca ptr, align 8
  %mkdir_and_install.addr = alloca i8, align 1
  %target_dirfd.addr = alloca ptr, align 8
  %from_base = alloca ptr, align 8
  %to_relname = alloca ptr, align 8
  %to = alloca ptr, align 8
  %ret = alloca i8, align 1
  %fd = alloca i32, align 4
  %to_dirfd = alloca i32, align 4
  store ptr %from, ptr %from.addr, align 8
  store ptr %to_dir, ptr %to_dir.addr, align 8
  store ptr %x, ptr %x.addr, align 8
  %frombool = zext i1 %mkdir_and_install to i8
  store i8 %frombool, ptr %mkdir_and_install.addr, align 1
  store ptr %target_dirfd, ptr %target_dirfd.addr, align 8
  %0 = load ptr, ptr %from.addr, align 8
  %call = call ptr @last_component(ptr noundef %0) #11
  store ptr %call, ptr %from_base, align 8
  %1 = load ptr, ptr %to_dir.addr, align 8
  %2 = load ptr, ptr %from_base, align 8
  %call1 = call noalias nonnull ptr @file_name_concat(ptr noundef %1, ptr noundef %2, ptr noundef %to_relname)
  store ptr %call1, ptr %to, align 8
  store i8 1, ptr %ret, align 1
  %3 = load ptr, ptr %target_dirfd.addr, align 8
  %4 = load i32, ptr %3, align 4
  %call2 = call zeroext i1 @target_dirfd_valid(i32 noundef %4) #11
  br i1 %call2, label %if.end12, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %5 = load i8, ptr %mkdir_and_install.addr, align 1
  %tobool = trunc i8 %5 to i1
  %frombool3 = zext i1 %tobool to i8
  store i8 %frombool3, ptr %ret, align 1
  br i1 %tobool, label %land.lhs.true4, label %if.end12

land.lhs.true4:                                   ; preds = %land.lhs.true
  %6 = load ptr, ptr %from.addr, align 8
  %7 = load ptr, ptr %to, align 8
  %8 = load ptr, ptr %x.addr, align 8
  %call5 = call zeroext i1 @mkancesdirs_safe_wd(ptr noundef %6, ptr noundef %7, ptr noundef %8, i1 noundef zeroext true)
  %frombool6 = zext i1 %call5 to i8
  store i8 %frombool6, ptr %ret, align 1
  br i1 %call5, label %if.then, label %if.end12

if.then:                                          ; preds = %land.lhs.true4
  %9 = load ptr, ptr %to_dir.addr, align 8
  %call7 = call i32 (ptr, i32, ...) @open(ptr noundef %9, i32 noundef 2162688)
  store i32 %call7, ptr %fd, align 4
  %10 = load i32, ptr %fd, align 4
  %cmp = icmp slt i32 %10, 0
  br i1 %cmp, label %if.then8, label %if.else

if.then8:                                         ; preds = %if.then
  %call9 = call ptr @__errno_location() #14
  %11 = load i32, ptr %call9, align 4
  %call10 = call ptr @gettext(ptr noundef @.str.94) #9
  %12 = load ptr, ptr %to, align 8
  %call11 = call ptr @quotearg_style(i32 noundef 4, ptr noundef %12)
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %11, ptr noundef %call10, ptr noundef %call11) #12
  store i8 0, ptr %ret, align 1
  br label %if.end

if.else:                                          ; preds = %if.then
  %13 = load i32, ptr %fd, align 4
  %14 = load ptr, ptr %target_dirfd.addr, align 8
  store i32 %13, ptr %14, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then8
  br label %if.end12

if.end12:                                         ; preds = %if.end, %land.lhs.true4, %land.lhs.true, %entry
  %15 = load i8, ptr %ret, align 1
  %tobool13 = trunc i8 %15 to i1
  br i1 %tobool13, label %if.then14, label %if.end20

if.then14:                                        ; preds = %if.end12
  %16 = load ptr, ptr %target_dirfd.addr, align 8
  %17 = load i32, ptr %16, align 4
  store i32 %17, ptr %to_dirfd, align 4
  %18 = load i32, ptr %to_dirfd, align 4
  %call15 = call zeroext i1 @target_dirfd_valid(i32 noundef %18) #11
  br i1 %call15, label %if.end17, label %if.then16

if.then16:                                        ; preds = %if.then14
  store i32 -100, ptr %to_dirfd, align 4
  %19 = load ptr, ptr %to, align 8
  store ptr %19, ptr %to_relname, align 8
  br label %if.end17

if.end17:                                         ; preds = %if.then16, %if.then14
  %20 = load ptr, ptr %from.addr, align 8
  %21 = load ptr, ptr %to, align 8
  %22 = load i32, ptr %to_dirfd, align 4
  %23 = load ptr, ptr %to_relname, align 8
  %24 = load ptr, ptr %x.addr, align 8
  %call18 = call zeroext i1 @install_file_in_file(ptr noundef %20, ptr noundef %21, i32 noundef %22, ptr noundef %23, ptr noundef %24)
  %frombool19 = zext i1 %call18 to i8
  store i8 %frombool19, ptr %ret, align 1
  br label %if.end20

if.end20:                                         ; preds = %if.end17, %if.end12
  %25 = load ptr, ptr %to, align 8
  call void @free(ptr noundef %25) #9
  %26 = load i8, ptr %ret, align 1
  %tobool21 = trunc i8 %26 to i1
  ret i1 %tobool21
}

; Function Attrs: nounwind willreturn memory(read)
declare ptr @last_component(ptr noundef) #6

declare noalias nonnull ptr @file_name_concat(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i1 @mkancesdirs_safe_wd(ptr noundef %from, ptr noundef %to, ptr noundef %x, i1 noundef zeroext %save_always) #3 {
entry:
  %retval = alloca i1, align 1
  %from.addr = alloca ptr, align 8
  %to.addr = alloca ptr, align 8
  %x.addr = alloca ptr, align 8
  %save_always.addr = alloca i8, align 1
  %save_working_directory = alloca i8, align 1
  %status = alloca i32, align 4
  %wd = alloca %struct.savewd, align 4
  %restore_result = alloca i32, align 4
  %restore_errno = alloca i32, align 4
  store ptr %from, ptr %from.addr, align 8
  store ptr %to, ptr %to.addr, align 8
  store ptr %x, ptr %x.addr, align 8
  %frombool = zext i1 %save_always to i8
  store i8 %frombool, ptr %save_always.addr, align 1
  %0 = load i8, ptr %save_always.addr, align 1
  %tobool = trunc i8 %0 to i1
  br i1 %tobool, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %entry
  %1 = load ptr, ptr %from.addr, align 8
  %arrayidx = getelementptr inbounds i8, ptr %1, i64 0
  %2 = load i8, ptr %arrayidx, align 1
  %conv = sext i8 %2 to i32
  %cmp = icmp eq i32 %conv, 47
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %lor.rhs
  %3 = load ptr, ptr %to.addr, align 8
  %arrayidx2 = getelementptr inbounds i8, ptr %3, i64 0
  %4 = load i8, ptr %arrayidx2, align 1
  %conv3 = sext i8 %4 to i32
  %cmp4 = icmp eq i32 %conv3, 47
  br label %land.end

land.end:                                         ; preds = %land.rhs, %lor.rhs
  %5 = phi i1 [ false, %lor.rhs ], [ %cmp4, %land.rhs ]
  %lnot = xor i1 %5, true
  br label %lor.end

lor.end:                                          ; preds = %land.end, %entry
  %6 = phi i1 [ true, %entry ], [ %lnot, %land.end ]
  %frombool6 = zext i1 %6 to i8
  store i8 %frombool6, ptr %save_working_directory, align 1
  store i32 0, ptr %status, align 4
  call void @savewd_init(ptr noundef %wd)
  %7 = load i8, ptr %save_working_directory, align 1
  %tobool7 = trunc i8 %7 to i1
  br i1 %tobool7, label %if.end, label %if.then

if.then:                                          ; preds = %lor.end
  call void @savewd_finish(ptr noundef %wd)
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.end
  %8 = load ptr, ptr %to.addr, align 8
  %9 = load ptr, ptr %x.addr, align 8
  %call = call i64 @mkancesdirs(ptr noundef %8, ptr noundef %wd, ptr noundef @make_ancestor, ptr noundef %9)
  %cmp8 = icmp eq i64 %call, -1
  br i1 %cmp8, label %if.then10, label %if.end14

if.then10:                                        ; preds = %if.end
  %call11 = call ptr @__errno_location() #14
  %10 = load i32, ptr %call11, align 4
  %call12 = call ptr @gettext(ptr noundef @.str.81) #9
  %11 = load ptr, ptr %to.addr, align 8
  %call13 = call ptr @quotearg_style(i32 noundef 4, ptr noundef %11)
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %10, ptr noundef %call12, ptr noundef %call13) #12
  store i32 1, ptr %status, align 4
  br label %if.end14

if.end14:                                         ; preds = %if.then10, %if.end
  %12 = load i8, ptr %save_working_directory, align 1
  %tobool15 = trunc i8 %12 to i1
  br i1 %tobool15, label %if.then16, label %if.end31

if.then16:                                        ; preds = %if.end14
  %13 = load i32, ptr %status, align 4
  %call17 = call i32 @savewd_restore(ptr noundef %wd, i32 noundef %13)
  store i32 %call17, ptr %restore_result, align 4
  %call18 = call ptr @__errno_location() #14
  %14 = load i32, ptr %call18, align 4
  store i32 %14, ptr %restore_errno, align 4
  call void @savewd_finish(ptr noundef %wd)
  %15 = load i32, ptr %restore_result, align 4
  %cmp19 = icmp slt i32 0, %15
  br i1 %cmp19, label %if.then21, label %if.end22

if.then21:                                        ; preds = %if.then16
  store i1 false, ptr %retval, align 1
  br label %return

if.end22:                                         ; preds = %if.then16
  %16 = load i32, ptr %restore_result, align 4
  %cmp23 = icmp slt i32 %16, 0
  br i1 %cmp23, label %land.lhs.true, label %if.end30

land.lhs.true:                                    ; preds = %if.end22
  %17 = load i32, ptr %status, align 4
  %cmp25 = icmp eq i32 %17, 0
  br i1 %cmp25, label %if.then27, label %if.end30

if.then27:                                        ; preds = %land.lhs.true
  %18 = load i32, ptr %restore_errno, align 4
  %call28 = call ptr @gettext(ptr noundef @.str.81) #9
  %19 = load ptr, ptr %to.addr, align 8
  %call29 = call ptr @quotearg_style(i32 noundef 4, ptr noundef %19)
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %18, ptr noundef %call28, ptr noundef %call29) #12
  store i1 false, ptr %retval, align 1
  br label %return

if.end30:                                         ; preds = %land.lhs.true, %if.end22
  br label %if.end31

if.end31:                                         ; preds = %if.end30, %if.end14
  %20 = load i32, ptr %status, align 4
  %cmp32 = icmp eq i32 %20, 0
  store i1 %cmp32, ptr %retval, align 1
  br label %return

return:                                           ; preds = %if.end31, %if.then27, %if.then21
  %21 = load i1, ptr %retval, align 1
  ret i1 %21
}

declare i32 @open(ptr noundef, i32 noundef, ...) #2

declare void @savewd_init(ptr noundef) #2

declare void @savewd_finish(ptr noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @make_ancestor(ptr noundef %dir, ptr noundef %component, ptr noundef %options) #3 {
entry:
  %dir.addr = alloca ptr, align 8
  %component.addr = alloca ptr, align 8
  %options.addr = alloca ptr, align 8
  %x = alloca ptr, align 8
  %r = alloca i32, align 4
  store ptr %dir, ptr %dir.addr, align 8
  store ptr %component, ptr %component.addr, align 8
  store ptr %options, ptr %options.addr, align 8
  %0 = load ptr, ptr %options.addr, align 8
  store ptr %0, ptr %x, align 8
  %1 = load ptr, ptr %x, align 8
  %set_security_context = getelementptr inbounds %struct.cp_options, ptr %1, i32 0, i32 20
  %2 = load ptr, ptr %set_security_context, align 8
  %tobool = icmp ne ptr %2, null
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %3 = load ptr, ptr %x, align 8
  %set_security_context1 = getelementptr inbounds %struct.cp_options, ptr %3, i32 0, i32 20
  %4 = load ptr, ptr %set_security_context1, align 8
  %5 = load ptr, ptr %component.addr, align 8
  %call = call i32 @defaultcon(ptr noundef %4, ptr noundef %5, i32 noundef 16384)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %land.lhs.true2, label %if.end

land.lhs.true2:                                   ; preds = %land.lhs.true
  %call3 = call ptr @__errno_location() #14
  %6 = load i32, ptr %call3, align 4
  %call4 = call zeroext i1 @ignorable_ctx_err(i32 noundef %6)
  br i1 %call4, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true2
  %call5 = call ptr @__errno_location() #14
  %7 = load i32, ptr %call5, align 4
  %call6 = call ptr @gettext(ptr noundef @.str.79) #9
  %8 = load ptr, ptr %dir.addr, align 8
  %call7 = call ptr @quotearg_style(i32 noundef 4, ptr noundef %8)
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %7, ptr noundef %call6, ptr noundef %call7) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true2, %land.lhs.true, %entry
  %9 = load ptr, ptr %component.addr, align 8
  %call8 = call i32 @mkdir(ptr noundef %9, i32 noundef 493) #9
  store i32 %call8, ptr %r, align 4
  %10 = load i32, ptr %r, align 4
  %cmp9 = icmp eq i32 %10, 0
  br i1 %cmp9, label %if.then10, label %if.end11

if.then10:                                        ; preds = %if.end
  %11 = load ptr, ptr %dir.addr, align 8
  %12 = load ptr, ptr %options.addr, align 8
  call void @announce_mkdir(ptr noundef %11, ptr noundef %12)
  br label %if.end11

if.end11:                                         ; preds = %if.then10, %if.end
  %13 = load i32, ptr %r, align 4
  ret i32 %13
}

declare i64 @mkancesdirs(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

declare i32 @savewd_restore(ptr noundef, i32 noundef) #2

declare i32 @defaultcon(ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i1 @ignorable_ctx_err(i32 noundef %err) #3 {
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
declare i32 @mkdir(ptr noundef, i32 noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal void @announce_mkdir(ptr noundef %dir, ptr noundef %options) #3 {
entry:
  %dir.addr = alloca ptr, align 8
  %options.addr = alloca ptr, align 8
  %x = alloca ptr, align 8
  store ptr %dir, ptr %dir.addr, align 8
  store ptr %options, ptr %options.addr, align 8
  %0 = load ptr, ptr %options.addr, align 8
  store ptr %0, ptr %x, align 8
  %1 = load ptr, ptr %x, align 8
  %verbose = getelementptr inbounds %struct.cp_options, ptr %1, i32 0, i32 33
  %2 = load i8, ptr %verbose, align 8
  %tobool = trunc i8 %2 to i1
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr @stdout, align 8
  %call = call ptr @gettext(ptr noundef @.str.80) #9
  %4 = load ptr, ptr %dir.addr, align 8
  %call1 = call ptr @quotearg_style(i32 noundef 4, ptr noundef %4)
  call void (ptr, ptr, ...) @prog_fprintf(ptr noundef %3, ptr noundef %call, ptr noundef %call1)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare void @prog_fprintf(ptr noundef, ptr noundef, ...) #2

; Function Attrs: nounwind
declare i32 @stat(ptr noundef, ptr noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i1 @copy_file(ptr noundef %from, ptr noundef %to, i32 noundef %to_dirfd, ptr noundef %to_relname, ptr noundef %x) #3 {
entry:
  %retval = alloca i1, align 1
  %from.addr = alloca ptr, align 8
  %to.addr = alloca ptr, align 8
  %to_dirfd.addr = alloca i32, align 4
  %to_relname.addr = alloca ptr, align 8
  %x.addr = alloca ptr, align 8
  %copy_into_self = alloca i8, align 1
  store ptr %from, ptr %from.addr, align 8
  store ptr %to, ptr %to.addr, align 8
  store i32 %to_dirfd, ptr %to_dirfd.addr, align 4
  store ptr %to_relname, ptr %to_relname.addr, align 8
  store ptr %x, ptr %x.addr, align 8
  %0 = load i8, ptr @copy_only_if_needed, align 1
  %tobool = trunc i8 %0 to i1
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %1 = load ptr, ptr %from.addr, align 8
  %2 = load ptr, ptr %to.addr, align 8
  %3 = load i32, ptr %to_dirfd.addr, align 4
  %4 = load ptr, ptr %to_relname.addr, align 8
  %5 = load ptr, ptr %x.addr, align 8
  %call = call zeroext i1 @need_copy(ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5)
  br i1 %call, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  store i1 true, ptr %retval, align 1
  br label %return

if.end:                                           ; preds = %land.lhs.true, %entry
  %6 = load ptr, ptr %from.addr, align 8
  %7 = load ptr, ptr %to.addr, align 8
  %8 = load i32, ptr %to_dirfd.addr, align 4
  %9 = load ptr, ptr %to_relname.addr, align 8
  %10 = load ptr, ptr %x.addr, align 8
  %call1 = call zeroext i1 @copy(ptr noundef %6, ptr noundef %7, i32 noundef %8, ptr noundef %9, i32 noundef 0, ptr noundef %10, ptr noundef %copy_into_self, ptr noundef null)
  store i1 %call1, ptr %retval, align 1
  br label %return

return:                                           ; preds = %if.end, %if.then
  %11 = load i1, ptr %retval, align 1
  ret i1 %11
}

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i1 @strip(ptr noundef %name) #3 {
entry:
  %name.addr = alloca ptr, align 8
  %status = alloca i32, align 4
  %ok = alloca i8, align 1
  %pid = alloca i32, align 4
  %safe_name = alloca ptr, align 8
  store ptr %name, ptr %name.addr, align 8
  store i8 0, ptr %ok, align 1
  %call = call i32 @fork() #9
  store i32 %call, ptr %pid, align 4
  %0 = load i32, ptr %pid, align 4
  switch i32 %0, label %sw.default [
    i32 -1, label %sw.bb
    i32 0, label %sw.bb3
  ]

sw.bb:                                            ; preds = %entry
  %call1 = call ptr @__errno_location() #14
  %1 = load i32, ptr %call1, align 4
  %call2 = call ptr @gettext(ptr noundef @.str.84) #9
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %1, ptr noundef %call2) #12
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  %2 = load ptr, ptr %name.addr, align 8
  store ptr %2, ptr %safe_name, align 8
  %3 = load ptr, ptr %name.addr, align 8
  %tobool = icmp ne ptr %3, null
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %sw.bb3
  %4 = load ptr, ptr %name.addr, align 8
  %5 = load i8, ptr %4, align 1
  %conv = sext i8 %5 to i32
  %cmp = icmp eq i32 %conv, 45
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %6 = load ptr, ptr %name.addr, align 8
  %call5 = call noalias nonnull ptr @file_name_concat(ptr noundef @.str.85, ptr noundef %6, ptr noundef null)
  store ptr %call5, ptr %safe_name, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %sw.bb3
  %7 = load ptr, ptr @strip_program, align 8
  %8 = load ptr, ptr @strip_program, align 8
  %9 = load ptr, ptr %safe_name, align 8
  %call6 = call i32 (ptr, ptr, ...) @execlp(ptr noundef %7, ptr noundef %8, ptr noundef %9, ptr noundef null) #9
  %call7 = call ptr @__errno_location() #14
  %10 = load i32, ptr %call7, align 4
  %call8 = call ptr @gettext(ptr noundef @.str.86) #9
  %11 = load ptr, ptr @strip_program, align 8
  %call9 = call ptr @quotearg_style(i32 noundef 4, ptr noundef %11)
  call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %10, ptr noundef %call8, ptr noundef %call9) #12
  unreachable

sw.default:                                       ; preds = %entry
  %12 = load i32, ptr %pid, align 4
  %call10 = call i32 @waitpid(i32 noundef %12, ptr noundef %status, i32 noundef 0)
  %cmp11 = icmp slt i32 %call10, 0
  br i1 %cmp11, label %if.then13, label %if.else

if.then13:                                        ; preds = %sw.default
  %call14 = call ptr @__errno_location() #14
  %13 = load i32, ptr %call14, align 4
  %call15 = call ptr @gettext(ptr noundef @.str.87) #9
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %13, ptr noundef %call15) #12
  br label %if.end24

if.else:                                          ; preds = %sw.default
  %14 = load i32, ptr %status, align 4
  %and = and i32 %14, 127
  %cmp16 = icmp eq i32 %and, 0
  br i1 %cmp16, label %lor.lhs.false, label %if.then20

lor.lhs.false:                                    ; preds = %if.else
  %15 = load i32, ptr %status, align 4
  %and18 = and i32 %15, 65280
  %shr = ashr i32 %and18, 8
  %tobool19 = icmp ne i32 %shr, 0
  br i1 %tobool19, label %if.then20, label %if.else22

if.then20:                                        ; preds = %lor.lhs.false, %if.else
  %call21 = call ptr @gettext(ptr noundef @.str.88) #9
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %call21) #12
  br label %if.end23

if.else22:                                        ; preds = %lor.lhs.false
  store i8 1, ptr %ok, align 1
  br label %if.end23

if.end23:                                         ; preds = %if.else22, %if.then20
  br label %if.end24

if.end24:                                         ; preds = %if.end23, %if.then13
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end24, %sw.bb
  %16 = load i8, ptr %ok, align 1
  %tobool25 = trunc i8 %16 to i1
  ret i1 %tobool25
}

; Function Attrs: nounwind
declare i32 @unlinkat(i32 noundef, ptr noundef, i32 noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i1 @change_timestamps(ptr noundef %src_sb, ptr noundef %dest, i32 noundef %dirfd, ptr noundef %relname) #3 {
entry:
  %retval = alloca i1, align 1
  %src_sb.addr = alloca ptr, align 8
  %dest.addr = alloca ptr, align 8
  %dirfd.addr = alloca i32, align 4
  %relname.addr = alloca ptr, align 8
  %timespec = alloca [2 x %struct.timespec], align 16
  %tmp = alloca %struct.timespec, align 8
  %tmp2 = alloca %struct.timespec, align 8
  store ptr %src_sb, ptr %src_sb.addr, align 8
  store ptr %dest, ptr %dest.addr, align 8
  store i32 %dirfd, ptr %dirfd.addr, align 4
  store ptr %relname, ptr %relname.addr, align 8
  %arrayidx = getelementptr inbounds [2 x %struct.timespec], ptr %timespec, i64 0, i64 0
  %0 = load ptr, ptr %src_sb.addr, align 8
  %call = call { i64, i64 } @get_stat_atime(ptr noundef %0) #11
  %1 = getelementptr inbounds { i64, i64 }, ptr %tmp, i32 0, i32 0
  %2 = extractvalue { i64, i64 } %call, 0
  store i64 %2, ptr %1, align 8
  %3 = getelementptr inbounds { i64, i64 }, ptr %tmp, i32 0, i32 1
  %4 = extractvalue { i64, i64 } %call, 1
  store i64 %4, ptr %3, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %arrayidx, ptr align 8 %tmp, i64 16, i1 false)
  %arrayidx1 = getelementptr inbounds [2 x %struct.timespec], ptr %timespec, i64 0, i64 1
  %5 = load ptr, ptr %src_sb.addr, align 8
  %call3 = call { i64, i64 } @get_stat_mtime(ptr noundef %5) #11
  %6 = getelementptr inbounds { i64, i64 }, ptr %tmp2, i32 0, i32 0
  %7 = extractvalue { i64, i64 } %call3, 0
  store i64 %7, ptr %6, align 8
  %8 = getelementptr inbounds { i64, i64 }, ptr %tmp2, i32 0, i32 1
  %9 = extractvalue { i64, i64 } %call3, 1
  store i64 %9, ptr %8, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %arrayidx1, ptr align 8 %tmp2, i64 16, i1 false)
  %10 = load i32, ptr %dirfd.addr, align 4
  %11 = load ptr, ptr %relname.addr, align 8
  %arraydecay = getelementptr inbounds [2 x %struct.timespec], ptr %timespec, i64 0, i64 0
  %call4 = call i32 @utimensat(i32 noundef %10, ptr noundef %11, ptr noundef %arraydecay, i32 noundef 0) #9
  %tobool = icmp ne i32 %call4, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call5 = call ptr @__errno_location() #14
  %12 = load i32, ptr %call5, align 4
  %call6 = call ptr @gettext(ptr noundef @.str.89) #9
  %13 = load ptr, ptr %dest.addr, align 8
  %call7 = call ptr @quotearg_style(i32 noundef 4, ptr noundef %13)
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %12, ptr noundef %call6, ptr noundef %call7) #12
  store i1 false, ptr %retval, align 1
  br label %return

if.end:                                           ; preds = %entry
  store i1 true, ptr %retval, align 1
  br label %return

return:                                           ; preds = %if.end, %if.then
  %14 = load i1, ptr %retval, align 1
  ret i1 %14
}

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i1 @change_attributes(ptr noundef %name, i32 noundef %dirfd, ptr noundef %relname) #3 {
entry:
  %name.addr = alloca ptr, align 8
  %dirfd.addr = alloca i32, align 4
  %relname.addr = alloca ptr, align 8
  %ok = alloca i8, align 1
  store ptr %name, ptr %name.addr, align 8
  store i32 %dirfd, ptr %dirfd.addr, align 4
  store ptr %relname, ptr %relname.addr, align 8
  store i8 0, ptr %ok, align 1
  %0 = load i32, ptr @owner_id, align 4
  %cmp = icmp eq i32 %0, -1
  br i1 %cmp, label %land.lhs.true, label %land.lhs.true2

land.lhs.true:                                    ; preds = %entry
  %1 = load i32, ptr @group_id, align 4
  %cmp1 = icmp eq i32 %1, -1
  br i1 %cmp1, label %if.else, label %land.lhs.true2

land.lhs.true2:                                   ; preds = %land.lhs.true, %entry
  %2 = load i32, ptr %dirfd.addr, align 4
  %3 = load ptr, ptr %relname.addr, align 8
  %4 = load i32, ptr @owner_id, align 4
  %5 = load i32, ptr @group_id, align 4
  %call = call i32 @lchownat(i32 noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5)
  %cmp3 = icmp ne i32 %call, 0
  br i1 %cmp3, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true2
  %call4 = call ptr @__errno_location() #14
  %6 = load i32, ptr %call4, align 4
  %call5 = call ptr @gettext(ptr noundef @.str.90) #9
  %7 = load ptr, ptr %name.addr, align 8
  %call6 = call ptr @quotearg_style(i32 noundef 4, ptr noundef %7)
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %6, ptr noundef %call5, ptr noundef %call6) #12
  br label %if.end14

if.else:                                          ; preds = %land.lhs.true2, %land.lhs.true
  %8 = load i32, ptr %dirfd.addr, align 4
  %9 = load ptr, ptr %relname.addr, align 8
  %10 = load i32, ptr @mode, align 4
  %call7 = call i32 @chmodat(i32 noundef %8, ptr noundef %9, i32 noundef %10)
  %cmp8 = icmp ne i32 %call7, 0
  br i1 %cmp8, label %if.then9, label %if.else13

if.then9:                                         ; preds = %if.else
  %call10 = call ptr @__errno_location() #14
  %11 = load i32, ptr %call10, align 4
  %call11 = call ptr @gettext(ptr noundef @.str.91) #9
  %12 = load ptr, ptr %name.addr, align 8
  %call12 = call ptr @quotearg_style(i32 noundef 4, ptr noundef %12)
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %11, ptr noundef %call11, ptr noundef %call12) #12
  br label %if.end

if.else13:                                        ; preds = %if.else
  store i8 1, ptr %ok, align 1
  br label %if.end

if.end:                                           ; preds = %if.else13, %if.then9
  br label %if.end14

if.end14:                                         ; preds = %if.end, %if.then
  %13 = load i8, ptr @use_default_selinux_context, align 1
  %tobool = trunc i8 %13 to i1
  br i1 %tobool, label %if.then15, label %if.end16

if.then15:                                        ; preds = %if.end14
  %14 = load ptr, ptr %name.addr, align 8
  call void @setdefaultfilecon(ptr noundef %14)
  br label %if.end16

if.end16:                                         ; preds = %if.then15, %if.end14
  %15 = load i8, ptr %ok, align 1
  %tobool17 = trunc i8 %15 to i1
  ret i1 %tobool17
}

declare i32 @lchownat(i32 noundef, ptr noundef, i32 noundef, i32 noundef) #2

declare i32 @chmodat(i32 noundef, ptr noundef, i32 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal void @setdefaultfilecon(ptr noundef %file) #3 {
entry:
  %file.addr = alloca ptr, align 8
  %st = alloca %struct.stat, align 8
  %scontext_raw = alloca ptr, align 8
  %hnd = alloca ptr, align 8
  store ptr %file, ptr %file.addr, align 8
  store ptr null, ptr %scontext_raw, align 8
  %0 = load i32, ptr @selinux_enabled, align 4
  %cmp = icmp ne i32 %0, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %file.addr, align 8
  %call = call i32 @lstat(ptr noundef %1, ptr noundef %st) #9
  %cmp1 = icmp ne i32 %call, 0
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  br label %return

if.end3:                                          ; preds = %if.end
  %call4 = call ptr @get_labeling_handle()
  store ptr %call4, ptr %hnd, align 8
  %2 = load ptr, ptr %hnd, align 8
  %tobool = icmp ne ptr %2, null
  br i1 %tobool, label %if.end6, label %if.then5

if.then5:                                         ; preds = %if.end3
  br label %return

if.end6:                                          ; preds = %if.end3
  %3 = load ptr, ptr %hnd, align 8
  %4 = load ptr, ptr %file.addr, align 8
  %st_mode = getelementptr inbounds %struct.stat, ptr %st, i32 0, i32 3
  %5 = load i32, ptr %st_mode, align 8
  %call7 = call i32 @selabel_lookup_raw(ptr noundef %3, ptr noundef %scontext_raw, ptr noundef %4, i32 noundef %5)
  %cmp8 = icmp ne i32 %call7, 0
  br i1 %cmp8, label %if.then9, label %if.end19

if.then9:                                         ; preds = %if.end6
  %call10 = call ptr @__errno_location() #14
  %6 = load i32, ptr %call10, align 4
  %cmp11 = icmp ne i32 %6, 2
  br i1 %cmp11, label %land.lhs.true, label %if.end18

land.lhs.true:                                    ; preds = %if.then9
  %call12 = call ptr @__errno_location() #14
  %7 = load i32, ptr %call12, align 4
  %call13 = call zeroext i1 @ignorable_ctx_err(i32 noundef %7)
  br i1 %call13, label %if.end18, label %if.then14

if.then14:                                        ; preds = %land.lhs.true
  %call15 = call ptr @__errno_location() #14
  %8 = load i32, ptr %call15, align 4
  %call16 = call ptr @gettext(ptr noundef @.str.92) #9
  %9 = load ptr, ptr %file.addr, align 8
  %call17 = call ptr @quotearg_n_style_colon(i32 noundef 0, i32 noundef 3, ptr noundef %9)
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %8, ptr noundef %call16, ptr noundef %call17) #12
  br label %if.end18

if.end18:                                         ; preds = %if.then14, %land.lhs.true, %if.then9
  br label %return

if.end19:                                         ; preds = %if.end6
  %10 = load ptr, ptr %file.addr, align 8
  %11 = load ptr, ptr %scontext_raw, align 8
  %call20 = call i32 @lsetfilecon_raw(ptr noundef %10, ptr noundef %11)
  %cmp21 = icmp slt i32 %call20, 0
  br i1 %cmp21, label %land.lhs.true22, label %if.end30

land.lhs.true22:                                  ; preds = %if.end19
  %call23 = call ptr @__errno_location() #14
  %12 = load i32, ptr %call23, align 4
  %cmp24 = icmp ne i32 %12, 95
  br i1 %cmp24, label %if.then25, label %if.end30

if.then25:                                        ; preds = %land.lhs.true22
  %call26 = call ptr @__errno_location() #14
  %13 = load i32, ptr %call26, align 4
  %call27 = call ptr @gettext(ptr noundef @.str.93) #9
  %14 = load ptr, ptr %file.addr, align 8
  %call28 = call ptr @quotearg_n_style_colon(i32 noundef 0, i32 noundef 3, ptr noundef %14)
  %15 = load ptr, ptr %scontext_raw, align 8
  %call29 = call ptr @quote_n(i32 noundef 1, ptr noundef %15)
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %13, ptr noundef %call27, ptr noundef %call28, ptr noundef %call29) #12
  br label %if.end30

if.end30:                                         ; preds = %if.then25, %land.lhs.true22, %if.end19
  %16 = load ptr, ptr %scontext_raw, align 8
  call void @freecon(ptr noundef %16)
  br label %return

return:                                           ; preds = %if.end30, %if.end18, %if.then5, %if.then2, %if.then
  ret void
}

; Function Attrs: nounwind
declare i32 @lstat(ptr noundef, ptr noundef) #1

declare i32 @selabel_lookup_raw(ptr noundef, ptr noundef, ptr noundef, i32 noundef) #2

declare ptr @quotearg_n_style_colon(i32 noundef, i32 noundef, ptr noundef) #2

declare i32 @lsetfilecon_raw(ptr noundef, ptr noundef) #2

declare ptr @quote_n(i32 noundef, ptr noundef) #2

declare void @freecon(ptr noundef) #2

; Function Attrs: nounwind willreturn memory(read)
declare { i64, i64 } @get_stat_atime(ptr noundef) #6

; Function Attrs: nounwind willreturn memory(read)
declare { i64, i64 } @get_stat_mtime(ptr noundef) #6

; Function Attrs: nounwind
declare i32 @utimensat(i32 noundef, ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: nounwind
declare i32 @fork() #1

; Function Attrs: nounwind
declare i32 @execlp(ptr noundef, ptr noundef, ...) #1

declare i32 @waitpid(i32 noundef, ptr noundef, i32 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i1 @need_copy(ptr noundef %src_name, ptr noundef %dest_name, i32 noundef %dest_dirfd, ptr noundef %dest_relname, ptr noundef %x) #3 {
entry:
  %retval = alloca i1, align 1
  %src_name.addr = alloca ptr, align 8
  %dest_name.addr = alloca ptr, align 8
  %dest_dirfd.addr = alloca i32, align 4
  %dest_relname.addr = alloca ptr, align 8
  %x.addr = alloca ptr, align 8
  %src_sb = alloca %struct.stat, align 8
  %dest_sb = alloca %struct.stat, align 8
  %src_fd = alloca i32, align 4
  %dest_fd = alloca i32, align 4
  %content_match = alloca i8, align 1
  %ruid = alloca i32, align 4
  %rgid = alloca i32, align 4
  %file_scontext_raw = alloca ptr, align 8
  %to_scontext_raw = alloca ptr, align 8
  %scontext_match = alloca i8, align 1
  store ptr %src_name, ptr %src_name.addr, align 8
  store ptr %dest_name, ptr %dest_name.addr, align 8
  store i32 %dest_dirfd, ptr %dest_dirfd.addr, align 4
  store ptr %dest_relname, ptr %dest_relname.addr, align 8
  store ptr %x, ptr %x.addr, align 8
  %0 = load i32, ptr @mode, align 4
  %call = call zeroext i1 @extra_mode(i32 noundef %0)
  br i1 %call, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i1 true, ptr %retval, align 1
  br label %return

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %src_name.addr, align 8
  %call1 = call i32 @stat(ptr noundef %1, ptr noundef %src_sb) #9
  %cmp = icmp ne i32 %call1, 0
  br i1 %cmp, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  store i1 true, ptr %retval, align 1
  br label %return

if.end3:                                          ; preds = %if.end
  %2 = load i32, ptr %dest_dirfd.addr, align 4
  %3 = load ptr, ptr %dest_relname.addr, align 8
  %call4 = call i32 @fstatat(i32 noundef %2, ptr noundef %3, ptr noundef %dest_sb, i32 noundef 256) #9
  %cmp5 = icmp ne i32 %call4, 0
  br i1 %cmp5, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.end3
  store i1 true, ptr %retval, align 1
  br label %return

if.end7:                                          ; preds = %if.end3
  %st_mode = getelementptr inbounds %struct.stat, ptr %src_sb, i32 0, i32 3
  %4 = load i32, ptr %st_mode, align 8
  %and = and i32 %4, 61440
  %cmp8 = icmp eq i32 %and, 32768
  br i1 %cmp8, label %lor.lhs.false, label %if.then18

lor.lhs.false:                                    ; preds = %if.end7
  %st_mode9 = getelementptr inbounds %struct.stat, ptr %dest_sb, i32 0, i32 3
  %5 = load i32, ptr %st_mode9, align 8
  %and10 = and i32 %5, 61440
  %cmp11 = icmp eq i32 %and10, 32768
  br i1 %cmp11, label %lor.lhs.false12, label %if.then18

lor.lhs.false12:                                  ; preds = %lor.lhs.false
  %st_mode13 = getelementptr inbounds %struct.stat, ptr %src_sb, i32 0, i32 3
  %6 = load i32, ptr %st_mode13, align 8
  %call14 = call zeroext i1 @extra_mode(i32 noundef %6)
  br i1 %call14, label %if.then18, label %lor.lhs.false15

lor.lhs.false15:                                  ; preds = %lor.lhs.false12
  %st_mode16 = getelementptr inbounds %struct.stat, ptr %dest_sb, i32 0, i32 3
  %7 = load i32, ptr %st_mode16, align 8
  %call17 = call zeroext i1 @extra_mode(i32 noundef %7)
  br i1 %call17, label %if.then18, label %if.end19

if.then18:                                        ; preds = %lor.lhs.false15, %lor.lhs.false12, %lor.lhs.false, %if.end7
  store i1 true, ptr %retval, align 1
  br label %return

if.end19:                                         ; preds = %lor.lhs.false15
  %st_size = getelementptr inbounds %struct.stat, ptr %src_sb, i32 0, i32 8
  %8 = load i64, ptr %st_size, align 8
  %st_size20 = getelementptr inbounds %struct.stat, ptr %dest_sb, i32 0, i32 8
  %9 = load i64, ptr %st_size20, align 8
  %cmp21 = icmp ne i64 %8, %9
  br i1 %cmp21, label %if.then26, label %lor.lhs.false22

lor.lhs.false22:                                  ; preds = %if.end19
  %st_mode23 = getelementptr inbounds %struct.stat, ptr %dest_sb, i32 0, i32 3
  %10 = load i32, ptr %st_mode23, align 8
  %and24 = and i32 %10, 4095
  %11 = load i32, ptr @mode, align 4
  %cmp25 = icmp ne i32 %and24, %11
  br i1 %cmp25, label %if.then26, label %if.end27

if.then26:                                        ; preds = %lor.lhs.false22, %if.end19
  store i1 true, ptr %retval, align 1
  br label %return

if.end27:                                         ; preds = %lor.lhs.false22
  %12 = load i32, ptr @owner_id, align 4
  %cmp28 = icmp eq i32 %12, -1
  br i1 %cmp28, label %if.then29, label %if.else

if.then29:                                        ; preds = %if.end27
  %call30 = call ptr @__errno_location() #14
  store i32 0, ptr %call30, align 4
  %call31 = call i32 @getuid() #9
  store i32 %call31, ptr %ruid, align 4
  %13 = load i32, ptr %ruid, align 4
  %cmp32 = icmp eq i32 %13, -1
  br i1 %cmp32, label %land.lhs.true, label %lor.lhs.false34

land.lhs.true:                                    ; preds = %if.then29
  %call33 = call ptr @__errno_location() #14
  %14 = load i32, ptr %call33, align 4
  %tobool = icmp ne i32 %14, 0
  br i1 %tobool, label %if.then36, label %lor.lhs.false34

lor.lhs.false34:                                  ; preds = %land.lhs.true, %if.then29
  %st_uid = getelementptr inbounds %struct.stat, ptr %dest_sb, i32 0, i32 4
  %15 = load i32, ptr %st_uid, align 4
  %16 = load i32, ptr %ruid, align 4
  %cmp35 = icmp ne i32 %15, %16
  br i1 %cmp35, label %if.then36, label %if.end37

if.then36:                                        ; preds = %lor.lhs.false34, %land.lhs.true
  store i1 true, ptr %retval, align 1
  br label %return

if.end37:                                         ; preds = %lor.lhs.false34
  br label %if.end42

if.else:                                          ; preds = %if.end27
  %st_uid38 = getelementptr inbounds %struct.stat, ptr %dest_sb, i32 0, i32 4
  %17 = load i32, ptr %st_uid38, align 4
  %18 = load i32, ptr @owner_id, align 4
  %cmp39 = icmp ne i32 %17, %18
  br i1 %cmp39, label %if.then40, label %if.end41

if.then40:                                        ; preds = %if.else
  store i1 true, ptr %retval, align 1
  br label %return

if.end41:                                         ; preds = %if.else
  br label %if.end42

if.end42:                                         ; preds = %if.end41, %if.end37
  %19 = load i32, ptr @group_id, align 4
  %cmp43 = icmp eq i32 %19, -1
  br i1 %cmp43, label %if.then44, label %if.else55

if.then44:                                        ; preds = %if.end42
  %call45 = call ptr @__errno_location() #14
  store i32 0, ptr %call45, align 4
  %call46 = call i32 @getgid() #9
  store i32 %call46, ptr %rgid, align 4
  %20 = load i32, ptr %rgid, align 4
  %cmp47 = icmp eq i32 %20, -1
  br i1 %cmp47, label %land.lhs.true48, label %lor.lhs.false51

land.lhs.true48:                                  ; preds = %if.then44
  %call49 = call ptr @__errno_location() #14
  %21 = load i32, ptr %call49, align 4
  %tobool50 = icmp ne i32 %21, 0
  br i1 %tobool50, label %if.then53, label %lor.lhs.false51

lor.lhs.false51:                                  ; preds = %land.lhs.true48, %if.then44
  %st_gid = getelementptr inbounds %struct.stat, ptr %dest_sb, i32 0, i32 5
  %22 = load i32, ptr %st_gid, align 8
  %23 = load i32, ptr %rgid, align 4
  %cmp52 = icmp ne i32 %22, %23
  br i1 %cmp52, label %if.then53, label %if.end54

if.then53:                                        ; preds = %lor.lhs.false51, %land.lhs.true48
  store i1 true, ptr %retval, align 1
  br label %return

if.end54:                                         ; preds = %lor.lhs.false51
  br label %if.end60

if.else55:                                        ; preds = %if.end42
  %st_gid56 = getelementptr inbounds %struct.stat, ptr %dest_sb, i32 0, i32 5
  %24 = load i32, ptr %st_gid56, align 8
  %25 = load i32, ptr @group_id, align 4
  %cmp57 = icmp ne i32 %24, %25
  br i1 %cmp57, label %if.then58, label %if.end59

if.then58:                                        ; preds = %if.else55
  store i1 true, ptr %retval, align 1
  br label %return

if.end59:                                         ; preds = %if.else55
  br label %if.end60

if.end60:                                         ; preds = %if.end59, %if.end54
  %26 = load i32, ptr @selinux_enabled, align 4
  %tobool61 = icmp ne i32 %26, 0
  br i1 %tobool61, label %land.lhs.true62, label %if.end78

land.lhs.true62:                                  ; preds = %if.end60
  %27 = load ptr, ptr %x.addr, align 8
  %preserve_security_context = getelementptr inbounds %struct.cp_options, ptr %27, i32 0, i32 24
  %28 = load i8, ptr %preserve_security_context, align 1
  %tobool63 = trunc i8 %28 to i1
  br i1 %tobool63, label %if.then64, label %if.end78

if.then64:                                        ; preds = %land.lhs.true62
  store ptr null, ptr %file_scontext_raw, align 8
  store ptr null, ptr %to_scontext_raw, align 8
  %29 = load ptr, ptr %src_name.addr, align 8
  %call65 = call i32 @rpl_getfilecon_raw(ptr noundef %29, ptr noundef %file_scontext_raw)
  %cmp66 = icmp eq i32 %call65, -1
  br i1 %cmp66, label %if.then67, label %if.end68

if.then67:                                        ; preds = %if.then64
  store i1 true, ptr %retval, align 1
  br label %return

if.end68:                                         ; preds = %if.then64
  %30 = load ptr, ptr %dest_name.addr, align 8
  %call69 = call i32 @rpl_getfilecon_raw(ptr noundef %30, ptr noundef %to_scontext_raw)
  %cmp70 = icmp eq i32 %call69, -1
  br i1 %cmp70, label %if.then71, label %if.end72

if.then71:                                        ; preds = %if.end68
  %31 = load ptr, ptr %file_scontext_raw, align 8
  call void @freecon(ptr noundef %31)
  store i1 true, ptr %retval, align 1
  br label %return

if.end72:                                         ; preds = %if.end68
  %32 = load ptr, ptr %file_scontext_raw, align 8
  %33 = load ptr, ptr %to_scontext_raw, align 8
  %call73 = call i32 @strcmp(ptr noundef %32, ptr noundef %33) #11
  %cmp74 = icmp eq i32 %call73, 0
  %frombool = zext i1 %cmp74 to i8
  store i8 %frombool, ptr %scontext_match, align 1
  %34 = load ptr, ptr %file_scontext_raw, align 8
  call void @freecon(ptr noundef %34)
  %35 = load ptr, ptr %to_scontext_raw, align 8
  call void @freecon(ptr noundef %35)
  %36 = load i8, ptr %scontext_match, align 1
  %tobool75 = trunc i8 %36 to i1
  br i1 %tobool75, label %if.end77, label %if.then76

if.then76:                                        ; preds = %if.end72
  store i1 true, ptr %retval, align 1
  br label %return

if.end77:                                         ; preds = %if.end72
  br label %if.end78

if.end78:                                         ; preds = %if.end77, %land.lhs.true62, %if.end60
  %37 = load ptr, ptr %src_name.addr, align 8
  %call79 = call i32 (ptr, i32, ...) @open(ptr noundef %37, i32 noundef 0)
  store i32 %call79, ptr %src_fd, align 4
  %38 = load i32, ptr %src_fd, align 4
  %cmp80 = icmp slt i32 %38, 0
  br i1 %cmp80, label %if.then81, label %if.end82

if.then81:                                        ; preds = %if.end78
  store i1 true, ptr %retval, align 1
  br label %return

if.end82:                                         ; preds = %if.end78
  %39 = load i32, ptr %dest_dirfd.addr, align 4
  %40 = load ptr, ptr %dest_relname.addr, align 8
  %call83 = call i32 (i32, ptr, i32, ...) @openat(i32 noundef %39, ptr noundef %40, i32 noundef 0)
  store i32 %call83, ptr %dest_fd, align 4
  %41 = load i32, ptr %dest_fd, align 4
  %cmp84 = icmp slt i32 %41, 0
  br i1 %cmp84, label %if.then85, label %if.end87

if.then85:                                        ; preds = %if.end82
  %42 = load i32, ptr %src_fd, align 4
  %call86 = call i32 @close(i32 noundef %42)
  store i1 true, ptr %retval, align 1
  br label %return

if.end87:                                         ; preds = %if.end82
  %43 = load i32, ptr %src_fd, align 4
  %44 = load i32, ptr %dest_fd, align 4
  %call88 = call zeroext i1 @have_same_content(i32 noundef %43, i32 noundef %44)
  %frombool89 = zext i1 %call88 to i8
  store i8 %frombool89, ptr %content_match, align 1
  %45 = load i32, ptr %src_fd, align 4
  %call90 = call i32 @close(i32 noundef %45)
  %46 = load i32, ptr %dest_fd, align 4
  %call91 = call i32 @close(i32 noundef %46)
  %47 = load i8, ptr %content_match, align 1
  %tobool92 = trunc i8 %47 to i1
  %lnot = xor i1 %tobool92, true
  store i1 %lnot, ptr %retval, align 1
  br label %return

return:                                           ; preds = %if.end87, %if.then85, %if.then81, %if.then76, %if.then71, %if.then67, %if.then58, %if.then53, %if.then40, %if.then36, %if.then26, %if.then18, %if.then6, %if.then2, %if.then
  %48 = load i1, ptr %retval, align 1
  ret i1 %48
}

declare zeroext i1 @copy(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nounwind
declare i32 @fstatat(i32 noundef, ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: nounwind
declare i32 @getuid() #1

; Function Attrs: nounwind
declare i32 @getgid() #1

declare i32 @rpl_getfilecon_raw(ptr noundef, ptr noundef) #2

declare i32 @openat(i32 noundef, ptr noundef, i32 noundef, ...) #2

declare i32 @close(i32 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i1 @have_same_content(i32 noundef %a_fd, i32 noundef %b_fd) #3 {
entry:
  %retval = alloca i1, align 1
  %a_fd.addr = alloca i32, align 4
  %b_fd.addr = alloca i32, align 4
  %size = alloca i64, align 8
  store i32 %a_fd, ptr %a_fd.addr, align 4
  store i32 %b_fd, ptr %b_fd.addr, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end6, %entry
  %0 = load i32, ptr %a_fd.addr, align 4
  %call = call i64 @full_read(i32 noundef %0, ptr noundef @have_same_content.a_buff, i64 noundef 4096)
  store i64 %call, ptr %size, align 8
  %cmp = icmp slt i64 0, %call
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load i64, ptr %size, align 8
  %2 = load i32, ptr %b_fd.addr, align 4
  %call1 = call i64 @full_read(i32 noundef %2, ptr noundef @have_same_content.b_buff, i64 noundef 4096)
  %cmp2 = icmp ne i64 %1, %call1
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  store i1 false, ptr %retval, align 1
  br label %return

if.end:                                           ; preds = %while.body
  %3 = load i64, ptr %size, align 8
  %call3 = call i32 @memcmp(ptr noundef @have_same_content.a_buff, ptr noundef @have_same_content.b_buff, i64 noundef %3) #11
  %cmp4 = icmp ne i32 %call3, 0
  br i1 %cmp4, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end
  store i1 false, ptr %retval, align 1
  br label %return

if.end6:                                          ; preds = %if.end
  br label %while.cond, !llvm.loop !10

while.end:                                        ; preds = %while.cond
  %4 = load i64, ptr %size, align 8
  %cmp7 = icmp eq i64 %4, 0
  store i1 %cmp7, ptr %retval, align 1
  br label %return

return:                                           ; preds = %while.end, %if.then5, %if.then
  %5 = load i1, ptr %retval, align 1
  ret i1 %5
}

declare i64 @full_read(i32 noundef, ptr noundef, i64 noundef) #2

; Function Attrs: nounwind willreturn memory(read)
declare i32 @memcmp(ptr noundef, ptr noundef, i64 noundef) #6

declare zeroext i1 @make_dir_parents(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i1 noundef zeroext) #2

declare zeroext i1 @restorecon(ptr noundef, ptr noundef, i1 noundef zeroext) #2

declare ptr @getpwnam(ptr noundef) #2

declare i32 @xstrtoumax(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) #2

declare void @endpwent() #2

declare ptr @getgrnam(ptr noundef) #2

declare void @endgrent() #2

declare ptr @selabel_open(i32 noundef, ptr noundef, i32 noundef) #2

declare void @cp_options_default(ptr noundef) #2

attributes #0 = { noinline noreturn nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { nounwind willreturn memory(read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { cold "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind willreturn memory(none) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind }
attributes #10 = { noreturn nounwind }
attributes #11 = { nounwind willreturn memory(read) }
attributes #12 = { cold }
attributes #13 = { noreturn }
attributes #14 = { nounwind willreturn memory(none) }

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
