; ModuleID = 'llvm-link'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.option = type { ptr, i32, ptr, i32 }
%struct.cp_options = type { i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, ptr, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i8, i8, i8, i8, i8, i8, i32, i32, ptr, ptr }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.passwd = type { ptr, ptr, i32, i32, ptr, ptr, ptr }
%struct.group = type { ptr, ptr, i32, ptr }
%struct.savewd = type { i32, %union.anon }
%union.anon = type { i32 }

@stderr = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [39 x i8] c"Try '%s --help' for more information.\0A\00", align 1
@program_name = external local_unnamed_addr global ptr, align 8
@.str.1 = private unnamed_addr constant [165 x i8] c"Usage: %s [OPTION]... [-T] SOURCE DEST\0A  or:  %s [OPTION]... SOURCE... DIRECTORY\0A  or:  %s [OPTION]... -t DIRECTORY SOURCE...\0A  or:  %s [OPTION]... -d DIRECTORY...\0A\00", align 1
@.str.2 = private unnamed_addr constant [465 x i8] c"\0AThis install program copies files (often just compiled) into destination\0Alocations you choose.  If you want to download and install a ready-to-use\0Apackage on a GNU/Linux system, you should instead be using a package manager\0Alike yum(1) or apt-get(1).\0A\0AIn the first three forms, copy SOURCE to DEST or multiple SOURCE(s) to\0Athe existing DIRECTORY, while setting permission modes and owner/group.\0AIn the 4th form, create all components of the given DIRECTORY(ies).\0A\00", align 1
@stdout = external local_unnamed_addr global ptr, align 8
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
@selinux_enabled = internal unnamed_addr global i32 0, align 4
@.str.13 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.14 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1
@.str.15 = private unnamed_addr constant [24 x i8] c"/usr/local/share/locale\00", align 1
@owner_name = internal unnamed_addr global ptr null, align 8
@group_name = internal unnamed_addr global ptr null, align 8
@strip_files = internal unnamed_addr global i1 false, align 1
@dir_arg = internal unnamed_addr global i1 false, align 1
@.str.16 = private unnamed_addr constant [21 x i8] c"bcCsDdg:m:o:pt:TvS:Z\00", align 1
@long_options = internal constant [19 x %struct.option] [%struct.option { ptr @.str.57, i32 2, ptr null, i32 98 }, %struct.option { ptr @.str.58, i32 0, ptr null, i32 67 }, %struct.option { ptr @.str.59, i32 2, ptr null, i32 90 }, %struct.option { ptr @.str.60, i32 0, ptr null, i32 128 }, %struct.option { ptr @.str.61, i32 0, ptr null, i32 100 }, %struct.option { ptr @.str.62, i32 1, ptr null, i32 103 }, %struct.option { ptr @.str.63, i32 1, ptr null, i32 109 }, %struct.option { ptr @.str.64, i32 0, ptr null, i32 84 }, %struct.option { ptr @.str.65, i32 1, ptr null, i32 111 }, %struct.option { ptr @.str.66, i32 0, ptr null, i32 112 }, %struct.option { ptr @.str.67, i32 0, ptr null, i32 129 }, %struct.option { ptr @.str.68, i32 0, ptr null, i32 115 }, %struct.option { ptr @.str.69, i32 1, ptr null, i32 130 }, %struct.option { ptr @.str.70, i32 1, ptr null, i32 83 }, %struct.option { ptr @.str.71, i32 1, ptr null, i32 116 }, %struct.option { ptr @.str.72, i32 0, ptr null, i32 118 }, %struct.option { ptr @.str.73, i32 0, ptr null, i32 -130 }, %struct.option { ptr @.str.74, i32 0, ptr null, i32 -131 }, %struct.option zeroinitializer], align 16
@optarg = external local_unnamed_addr global ptr, align 8
@copy_only_if_needed = internal unnamed_addr global i1 false, align 1
@strip_program = internal unnamed_addr global ptr @.str.68, align 8
@.str.17 = private unnamed_addr constant [38 x i8] c"multiple target directories specified\00", align 1
@.str.18 = private unnamed_addr constant [73 x i8] c"WARNING: ignoring --preserve-context; this kernel is not SELinux-enabled\00", align 1
@use_default_selinux_context = internal unnamed_addr global i1 false, align 1
@.str.19 = private unnamed_addr constant [67 x i8] c"warning: ignoring --context; it requires an SELinux-enabled kernel\00", align 1
@.str.20 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@Version = external local_unnamed_addr global ptr, align 8
@.str.21 = private unnamed_addr constant [16 x i8] c"David MacKenzie\00", align 1
@.str.22 = private unnamed_addr constant [61 x i8] c"the strip option may not be used when installing a directory\00", align 1
@.str.23 = private unnamed_addr constant [57 x i8] c"target directory not allowed when installing a directory\00", align 1
@.str.24 = private unnamed_addr constant [12 x i8] c"backup type\00", align 1
@.str.25 = private unnamed_addr constant [42 x i8] c"cannot set target context and preserve it\00", align 1
@.str.26 = private unnamed_addr constant [50 x i8] c"failed to set default file creation context to %s\00", align 1
@optind = external local_unnamed_addr global i32, align 4
@.str.27 = private unnamed_addr constant [21 x i8] c"missing file operand\00", align 1
@.str.28 = private unnamed_addr constant [42 x i8] c"missing destination file operand after %s\00", align 1
@.str.29 = private unnamed_addr constant [70 x i8] c"cannot combine --target-directory (-t) and --no-target-directory (-T)\00", align 1
@.str.30 = private unnamed_addr constant [17 x i8] c"extra operand %s\00", align 1
@.str.31 = private unnamed_addr constant [20 x i8] c"failed to access %s\00", align 1
@.str.32 = private unnamed_addr constant [10 x i8] c"target %s\00", align 1
@.str.33 = private unnamed_addr constant [16 x i8] c"invalid mode %s\00", align 1
@mode = internal unnamed_addr global i32 493, align 4
@dir_mode_bits = internal global i32 4095, align 4
@dir_mode = internal unnamed_addr global i32 493, align 4
@.str.34 = private unnamed_addr constant [72 x i8] c"WARNING: ignoring --strip-program option as -s option was not specified\00", align 1
@.str.35 = private unnamed_addr constant [72 x i8] c"options --compare (-C) and --preserve-timestamps are mutually exclusive\00", align 1
@.str.36 = private unnamed_addr constant [58 x i8] c"options --compare (-C) and --strip are mutually exclusive\00", align 1
@.str.37 = private unnamed_addr constant [86 x i8] c"the --compare (-C) option is ignored when you specify a mode with non-permission bits\00", align 1
@.str.38 = private unnamed_addr constant [75 x i8] c"\0AMandatory arguments to long options are mandatory for short options too.\0A\00", align 1
@.str.39 = private unnamed_addr constant [221 x i8] c"\0AThe backup suffix is '~', unless set with --suffix or SIMPLE_BACKUP_SUFFIX.\0AThe version control method may be selected via the --backup option or through\0Athe VERSION_CONTROL environment variable.  Here are the values:\0A\0A\00", align 1
@.str.40 = private unnamed_addr constant [222 x i8] c"  none, off       never make backups (even if --backup is given)\0A  numbered, t     make numbered backups\0A  existing, nil   numbered if numbered backups exist, simple otherwise\0A  simple, never   always make simple backups\0A\00", align 1
@.str.49 = private unnamed_addr constant [23 x i8] c"\0A%s online help: <%s>\0A\00", align 1
@.str.50 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1
@.str.51 = private unnamed_addr constant [4 x i8] c"en_\00", align 1
@.str.52 = private unnamed_addr constant [71 x i8] c"Report any translation bugs to <https://translationproject.org/team/>\0A\00", align 1
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
@get_labeling_handle.initialized = internal unnamed_addr global i1 false, align 1
@get_labeling_handle.hnd = internal unnamed_addr global ptr null, align 8
@.str.75 = private unnamed_addr constant [41 x i8] c"warning: security labeling handle failed\00", align 1
@.str.76 = private unnamed_addr constant [16 x i8] c"invalid user %s\00", align 1
@owner_id = internal unnamed_addr global i32 0, align 4
@.str.77 = private unnamed_addr constant [17 x i8] c"invalid group %s\00", align 1
@group_id = internal unnamed_addr global i32 0, align 4
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

; Function Attrs: noreturn nounwind uwtable
define dso_local void @usage(i32 noundef %status) local_unnamed_addr #0 {
entry:
  %cmp.not = icmp eq i32 %status, 0
  br i1 %cmp.not, label %if.else, label %do.body

do.body:                                          ; preds = %entry
  %0 = load ptr, ptr @stderr, align 8, !tbaa !5
  %call = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str, i32 noundef 5) #15
  %1 = load ptr, ptr @program_name, align 8, !tbaa !5
  %call1 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %call, ptr noundef %1) #15
  br label %if.end

if.else:                                          ; preds = %entry
  %call2 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.1, i32 noundef 5) #15
  %2 = load ptr, ptr @program_name, align 8, !tbaa !5
  %call3 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %call2, ptr noundef %2, ptr noundef %2, ptr noundef %2, ptr noundef %2) #15
  %call4 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.2, i32 noundef 5) #15
  %3 = load ptr, ptr @stdout, align 8, !tbaa !5
  %call5 = tail call i32 @fputs_unlocked(ptr noundef %call4, ptr noundef %3)
  %call.i = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.38, i32 noundef 5) #15
  %4 = load ptr, ptr @stdout, align 8, !tbaa !5
  %call1.i = tail call i32 @fputs_unlocked(ptr noundef %call.i, ptr noundef %4)
  %call6 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.3, i32 noundef 5) #15
  %5 = load ptr, ptr @stdout, align 8, !tbaa !5
  %call7 = tail call i32 @fputs_unlocked(ptr noundef %call6, ptr noundef %5)
  %call8 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.4, i32 noundef 5) #15
  %6 = load ptr, ptr @stdout, align 8, !tbaa !5
  %call9 = tail call i32 @fputs_unlocked(ptr noundef %call8, ptr noundef %6)
  %call10 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.5, i32 noundef 5) #15
  %7 = load ptr, ptr @stdout, align 8, !tbaa !5
  %call11 = tail call i32 @fputs_unlocked(ptr noundef %call10, ptr noundef %7)
  %call12 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.6, i32 noundef 5) #15
  %8 = load ptr, ptr @stdout, align 8, !tbaa !5
  %call13 = tail call i32 @fputs_unlocked(ptr noundef %call12, ptr noundef %8)
  %call14 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.7, i32 noundef 5) #15
  %9 = load ptr, ptr @stdout, align 8, !tbaa !5
  %call15 = tail call i32 @fputs_unlocked(ptr noundef %call14, ptr noundef %9)
  %call16 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.8, i32 noundef 5) #15
  %10 = load ptr, ptr @stdout, align 8, !tbaa !5
  %call17 = tail call i32 @fputs_unlocked(ptr noundef %call16, ptr noundef %10)
  %call18 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.9, i32 noundef 5) #15
  %11 = load ptr, ptr @stdout, align 8, !tbaa !5
  %call19 = tail call i32 @fputs_unlocked(ptr noundef %call18, ptr noundef %11)
  %call20 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.10, i32 noundef 5) #15
  %12 = load ptr, ptr @stdout, align 8, !tbaa !5
  %call21 = tail call i32 @fputs_unlocked(ptr noundef %call20, ptr noundef %12)
  %call22 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.11, i32 noundef 5) #15
  %13 = load ptr, ptr @stdout, align 8, !tbaa !5
  %call23 = tail call i32 @fputs_unlocked(ptr noundef %call22, ptr noundef %13)
  %call.i25 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.39, i32 noundef 5) #15
  %14 = load ptr, ptr @stdout, align 8, !tbaa !5
  %call1.i26 = tail call i32 @fputs_unlocked(ptr noundef %call.i25, ptr noundef %14)
  %call2.i = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.40, i32 noundef 5) #15
  %15 = load ptr, ptr @stdout, align 8, !tbaa !5
  %call3.i = tail call i32 @fputs_unlocked(ptr noundef %call2.i, ptr noundef %15)
  %call6.i = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.49, i32 noundef 5) #15
  %call7.i = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %call6.i, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.50) #15
  %call8.i = tail call ptr @setlocale(i32 noundef 5, ptr noundef null) #15
  %tobool9.not.i = icmp eq ptr %call8.i, null
  br i1 %tobool9.not.i, label %emit_ancillary_info.exit, label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %if.else
  %call10.i = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %call8.i, ptr noundef nonnull dereferenceable(4) @.str.51, i64 noundef 3) #16
  %tobool11.not.i = icmp eq i32 %call10.i, 0
  br i1 %tobool11.not.i, label %emit_ancillary_info.exit, label %if.then12.i

if.then12.i:                                      ; preds = %land.lhs.true.i
  %call13.i = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.52, i32 noundef 5) #15
  %16 = load ptr, ptr @stdout, align 8, !tbaa !5
  %call14.i = tail call i32 @fputs_unlocked(ptr noundef %call13.i, ptr noundef %16)
  br label %emit_ancillary_info.exit

emit_ancillary_info.exit:                         ; preds = %if.then12.i, %land.lhs.true.i, %if.else
  %call18.i = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.54, i32 noundef 5) #15
  %call19.i = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %call18.i, ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.12) #15
  %call20.i = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.55, i32 noundef 5) #15
  %call23.i = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %call20.i, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.56) #15
  br label %if.end

if.end:                                           ; preds = %emit_ancillary_info.exit, %do.body
  tail call void @exit(i32 noundef %status) #17
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
  %to_relname.i = alloca ptr, align 8
  %tmp.i = alloca i64, align 8
  %tmp17.i = alloca i64, align 8
  %x = alloca %struct.cp_options, align 8
  %sb = alloca %struct.stat, align 8
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %x) #15
  %call = tail call i32 @is_selinux_enabled() #15
  %cmp = icmp sgt i32 %call, 0
  %conv = zext i1 %cmp to i32
  store i32 %conv, ptr @selinux_enabled, align 4, !tbaa !9
  %0 = load ptr, ptr %argv, align 8, !tbaa !5
  tail call void @set_program_name(ptr noundef %0) #15
  %call1 = tail call ptr @setlocale(i32 noundef 6, ptr noundef nonnull @.str.13) #15
  %call2 = tail call ptr @bindtextdomain(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.15) #15
  %call3 = tail call ptr @textdomain(ptr noundef nonnull @.str.14) #15
  %call4 = tail call i32 @atexit(ptr noundef nonnull @close_stdin) #15
  call void @cp_options_default(ptr noundef nonnull %x) #15
  %copy_as_regular.i = getelementptr inbounds %struct.cp_options, ptr %x, i64 0, i32 5
  store i8 1, ptr %copy_as_regular.i, align 4, !tbaa !11
  %reflink_mode.i = getelementptr inbounds %struct.cp_options, ptr %x, i64 0, i32 40
  store i32 1, ptr %reflink_mode.i, align 4, !tbaa !14
  %dereference.i = getelementptr inbounds %struct.cp_options, ptr %x, i64 0, i32 1
  store i32 4, ptr %dereference.i, align 4, !tbaa !15
  %unlink_dest_before_opening.i = getelementptr inbounds %struct.cp_options, ptr %x, i64 0, i32 6
  store i8 1, ptr %unlink_dest_before_opening.i, align 1, !tbaa !16
  %unlink_dest_after_failed_open.i = getelementptr inbounds %struct.cp_options, ptr %x, i64 0, i32 7
  store i8 0, ptr %unlink_dest_after_failed_open.i, align 2, !tbaa !17
  %hard_link.i = getelementptr inbounds %struct.cp_options, ptr %x, i64 0, i32 8
  store i8 0, ptr %hard_link.i, align 1, !tbaa !18
  %interactive.i = getelementptr inbounds %struct.cp_options, ptr %x, i64 0, i32 2
  store i32 0, ptr %interactive.i, align 8, !tbaa !19
  %move_mode.i = getelementptr inbounds %struct.cp_options, ptr %x, i64 0, i32 9
  store i8 0, ptr %move_mode.i, align 8, !tbaa !20
  %install_mode.i = getelementptr inbounds %struct.cp_options, ptr %x, i64 0, i32 12
  store i8 1, ptr %install_mode.i, align 1, !tbaa !21
  %one_file_system.i = getelementptr inbounds %struct.cp_options, ptr %x, i64 0, i32 15
  %preserve_links.i = getelementptr inbounds %struct.cp_options, ptr %x, i64 0, i32 21
  store i8 0, ptr %preserve_links.i, align 8, !tbaa !22
  %reduce_diagnostics.i = getelementptr inbounds %struct.cp_options, ptr %x, i64 0, i32 28
  store i8 0, ptr %reduce_diagnostics.i, align 1, !tbaa !23
  %data_copy_required.i = getelementptr inbounds %struct.cp_options, ptr %x, i64 0, i32 22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(5) %one_file_system.i, i8 0, i64 5, i1 false)
  store i8 1, ptr %data_copy_required.i, align 1, !tbaa !24
  %require_preserve.i = getelementptr inbounds %struct.cp_options, ptr %x, i64 0, i32 23
  store i8 0, ptr %require_preserve.i, align 2, !tbaa !25
  %require_preserve_xattr.i = getelementptr inbounds %struct.cp_options, ptr %x, i64 0, i32 27
  store i8 0, ptr %require_preserve_xattr.i, align 2, !tbaa !26
  %recursive.i = getelementptr inbounds %struct.cp_options, ptr %x, i64 0, i32 29
  store i8 0, ptr %recursive.i, align 8, !tbaa !27
  %sparse_mode.i = getelementptr inbounds %struct.cp_options, ptr %x, i64 0, i32 3
  store i32 2, ptr %sparse_mode.i, align 4, !tbaa !28
  %symbolic_link.i = getelementptr inbounds %struct.cp_options, ptr %x, i64 0, i32 31
  store i8 0, ptr %symbolic_link.i, align 2, !tbaa !29
  store i32 0, ptr %x, align 8, !tbaa !30
  %set_mode.i = getelementptr inbounds %struct.cp_options, ptr %x, i64 0, i32 30
  store i8 1, ptr %set_mode.i, align 1, !tbaa !31
  %mode.i = getelementptr inbounds %struct.cp_options, ptr %x, i64 0, i32 4
  store i32 384, ptr %mode.i, align 8, !tbaa !32
  %stdin_tty.i = getelementptr inbounds %struct.cp_options, ptr %x, i64 0, i32 36
  store i8 0, ptr %stdin_tty.i, align 1, !tbaa !33
  %open_dangling_dest_symlink.i = getelementptr inbounds %struct.cp_options, ptr %x, i64 0, i32 37
  store i8 0, ptr %open_dangling_dest_symlink.i, align 4, !tbaa !34
  %update.i = getelementptr inbounds %struct.cp_options, ptr %x, i64 0, i32 32
  store i32 0, ptr %update.i, align 4, !tbaa !35
  %require_preserve_context.i = getelementptr inbounds %struct.cp_options, ptr %x, i64 0, i32 25
  store i8 0, ptr %require_preserve_context.i, align 4, !tbaa !36
  %preserve_security_context.i = getelementptr inbounds %struct.cp_options, ptr %x, i64 0, i32 24
  store i8 0, ptr %preserve_security_context.i, align 1, !tbaa !37
  %set_security_context.i = getelementptr inbounds %struct.cp_options, ptr %x, i64 0, i32 20
  store ptr null, ptr %set_security_context.i, align 8, !tbaa !38
  %preserve_xattr.i = getelementptr inbounds %struct.cp_options, ptr %x, i64 0, i32 26
  store i8 0, ptr %preserve_xattr.i, align 1, !tbaa !39
  %verbose.i = getelementptr inbounds %struct.cp_options, ptr %x, i64 0, i32 33
  store i8 0, ptr %verbose.i, align 8, !tbaa !40
  %dest_info.i = getelementptr inbounds %struct.cp_options, ptr %x, i64 0, i32 41
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %dest_info.i, i8 0, i64 16, i1 false)
  store ptr null, ptr @owner_name, align 8, !tbaa !5
  store ptr null, ptr @group_name, align 8, !tbaa !5
  store i1 false, ptr @strip_files, align 1
  store i1 false, ptr @dir_arg, align 1
  %call5 = call i32 @umask(i32 noundef 0) #15
  %preserve_timestamps = getelementptr inbounds %struct.cp_options, ptr %x, i64 0, i32 18
  %debug = getelementptr inbounds %struct.cp_options, ptr %x, i64 0, i32 35
  br label %while.cond

while.cond:                                       ; preds = %while.cond.backedge, %entry
  %version_control_string.0 = phi ptr [ null, %entry ], [ %version_control_string.0.be, %while.cond.backedge ]
  %mkdir_and_install.0 = phi i8 [ 0, %entry ], [ %mkdir_and_install.0.be, %while.cond.backedge ]
  %target_directory.0 = phi ptr [ null, %entry ], [ %target_directory.0.be, %while.cond.backedge ]
  %no_target_directory.0 = phi i8 [ 0, %entry ], [ %no_target_directory.0.be, %while.cond.backedge ]
  %backup_suffix.0 = phi ptr [ null, %entry ], [ %backup_suffix.0.be, %while.cond.backedge ]
  %strip_program_specified.0 = phi i8 [ 0, %entry ], [ %strip_program_specified.0.be, %while.cond.backedge ]
  %scontext.0 = phi ptr [ null, %entry ], [ %scontext.0.be, %while.cond.backedge ]
  %make_backups.0 = phi i8 [ 0, %entry ], [ %make_backups.0.be, %while.cond.backedge ]
  %specified_mode.0 = phi ptr [ null, %entry ], [ %specified_mode.0.be, %while.cond.backedge ]
  %call6 = call i32 @getopt_long(i32 noundef %argc, ptr noundef nonnull %argv, ptr noundef nonnull @.str.16, ptr noundef nonnull @long_options, ptr noundef null) #15
  switch i32 %call6, label %sw.default [
    i32 -1, label %while.end
    i32 98, label %sw.bb
    i32 99, label %while.cond.backedge
    i32 67, label %sw.bb9
    i32 115, label %sw.bb10
    i32 128, label %sw.bb12
    i32 130, label %sw.bb13
    i32 100, label %sw.bb15
    i32 68, label %sw.bb16
    i32 118, label %sw.bb17
    i32 103, label %sw.bb19
    i32 109, label %sw.bb20
    i32 111, label %sw.bb21
    i32 112, label %sw.bb22
    i32 83, label %sw.bb23
    i32 116, label %sw.bb24
    i32 84, label %sw.bb29
    i32 129, label %sw.bb30
    i32 90, label %sw.bb35
    i32 -130, label %sw.bb48
    i32 -131, label %sw.bb49
  ]

sw.bb:                                            ; preds = %while.cond
  %1 = load ptr, ptr @optarg, align 8, !tbaa !5
  %tobool.not = icmp eq ptr %1, null
  %spec.select = select i1 %tobool.not, ptr %version_control_string.0, ptr %1
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %if.then44, %if.else42, %get_labeling_handle.exit, %if.then37, %if.end34, %if.then32, %sw.bb29, %if.end28, %sw.bb23, %sw.bb22, %sw.bb21, %sw.bb20, %sw.bb19, %sw.bb17, %sw.bb16, %sw.bb15, %sw.bb13, %sw.bb12, %sw.bb10, %sw.bb9, %sw.bb, %while.cond
  %version_control_string.0.be = phi ptr [ %version_control_string.0, %get_labeling_handle.exit ], [ %version_control_string.0, %if.then44 ], [ %version_control_string.0, %if.else42 ], [ %version_control_string.0, %if.end34 ], [ %version_control_string.0, %if.then32 ], [ %version_control_string.0, %sw.bb29 ], [ %version_control_string.0, %if.end28 ], [ %version_control_string.0, %sw.bb23 ], [ %version_control_string.0, %sw.bb22 ], [ %version_control_string.0, %sw.bb21 ], [ %version_control_string.0, %sw.bb20 ], [ %version_control_string.0, %sw.bb19 ], [ %version_control_string.0, %sw.bb17 ], [ %version_control_string.0, %sw.bb16 ], [ %version_control_string.0, %sw.bb15 ], [ %version_control_string.0, %sw.bb13 ], [ %version_control_string.0, %sw.bb12 ], [ %version_control_string.0, %sw.bb10 ], [ %version_control_string.0, %sw.bb9 ], [ %version_control_string.0, %while.cond ], [ %spec.select, %sw.bb ], [ %version_control_string.0, %if.then37 ]
  %mkdir_and_install.0.be = phi i8 [ %mkdir_and_install.0, %get_labeling_handle.exit ], [ %mkdir_and_install.0, %if.then44 ], [ %mkdir_and_install.0, %if.else42 ], [ %mkdir_and_install.0, %if.end34 ], [ %mkdir_and_install.0, %if.then32 ], [ %mkdir_and_install.0, %sw.bb29 ], [ %mkdir_and_install.0, %if.end28 ], [ %mkdir_and_install.0, %sw.bb23 ], [ %mkdir_and_install.0, %sw.bb22 ], [ %mkdir_and_install.0, %sw.bb21 ], [ %mkdir_and_install.0, %sw.bb20 ], [ %mkdir_and_install.0, %sw.bb19 ], [ %mkdir_and_install.0, %sw.bb17 ], [ 1, %sw.bb16 ], [ %mkdir_and_install.0, %sw.bb15 ], [ %mkdir_and_install.0, %sw.bb13 ], [ %mkdir_and_install.0, %sw.bb12 ], [ %mkdir_and_install.0, %sw.bb10 ], [ %mkdir_and_install.0, %sw.bb9 ], [ %mkdir_and_install.0, %while.cond ], [ %mkdir_and_install.0, %sw.bb ], [ %mkdir_and_install.0, %if.then37 ]
  %target_directory.0.be = phi ptr [ %target_directory.0, %get_labeling_handle.exit ], [ %target_directory.0, %if.then44 ], [ %target_directory.0, %if.else42 ], [ %target_directory.0, %if.end34 ], [ %target_directory.0, %if.then32 ], [ %target_directory.0, %sw.bb29 ], [ %7, %if.end28 ], [ %target_directory.0, %sw.bb23 ], [ %target_directory.0, %sw.bb22 ], [ %target_directory.0, %sw.bb21 ], [ %target_directory.0, %sw.bb20 ], [ %target_directory.0, %sw.bb19 ], [ %target_directory.0, %sw.bb17 ], [ %target_directory.0, %sw.bb16 ], [ %target_directory.0, %sw.bb15 ], [ %target_directory.0, %sw.bb13 ], [ %target_directory.0, %sw.bb12 ], [ %target_directory.0, %sw.bb10 ], [ %target_directory.0, %sw.bb9 ], [ %target_directory.0, %while.cond ], [ %target_directory.0, %sw.bb ], [ %target_directory.0, %if.then37 ]
  %no_target_directory.0.be = phi i8 [ %no_target_directory.0, %get_labeling_handle.exit ], [ %no_target_directory.0, %if.then44 ], [ %no_target_directory.0, %if.else42 ], [ %no_target_directory.0, %if.end34 ], [ %no_target_directory.0, %if.then32 ], [ 1, %sw.bb29 ], [ %no_target_directory.0, %if.end28 ], [ %no_target_directory.0, %sw.bb23 ], [ %no_target_directory.0, %sw.bb22 ], [ %no_target_directory.0, %sw.bb21 ], [ %no_target_directory.0, %sw.bb20 ], [ %no_target_directory.0, %sw.bb19 ], [ %no_target_directory.0, %sw.bb17 ], [ %no_target_directory.0, %sw.bb16 ], [ %no_target_directory.0, %sw.bb15 ], [ %no_target_directory.0, %sw.bb13 ], [ %no_target_directory.0, %sw.bb12 ], [ %no_target_directory.0, %sw.bb10 ], [ %no_target_directory.0, %sw.bb9 ], [ %no_target_directory.0, %while.cond ], [ %no_target_directory.0, %sw.bb ], [ %no_target_directory.0, %if.then37 ]
  %backup_suffix.0.be = phi ptr [ %backup_suffix.0, %get_labeling_handle.exit ], [ %backup_suffix.0, %if.then44 ], [ %backup_suffix.0, %if.else42 ], [ %backup_suffix.0, %if.end34 ], [ %backup_suffix.0, %if.then32 ], [ %backup_suffix.0, %sw.bb29 ], [ %backup_suffix.0, %if.end28 ], [ %6, %sw.bb23 ], [ %backup_suffix.0, %sw.bb22 ], [ %backup_suffix.0, %sw.bb21 ], [ %backup_suffix.0, %sw.bb20 ], [ %backup_suffix.0, %sw.bb19 ], [ %backup_suffix.0, %sw.bb17 ], [ %backup_suffix.0, %sw.bb16 ], [ %backup_suffix.0, %sw.bb15 ], [ %backup_suffix.0, %sw.bb13 ], [ %backup_suffix.0, %sw.bb12 ], [ %backup_suffix.0, %sw.bb10 ], [ %backup_suffix.0, %sw.bb9 ], [ %backup_suffix.0, %while.cond ], [ %backup_suffix.0, %sw.bb ], [ %backup_suffix.0, %if.then37 ]
  %strip_program_specified.0.be = phi i8 [ %strip_program_specified.0, %get_labeling_handle.exit ], [ %strip_program_specified.0, %if.then44 ], [ %strip_program_specified.0, %if.else42 ], [ %strip_program_specified.0, %if.end34 ], [ %strip_program_specified.0, %if.then32 ], [ %strip_program_specified.0, %sw.bb29 ], [ %strip_program_specified.0, %if.end28 ], [ %strip_program_specified.0, %sw.bb23 ], [ %strip_program_specified.0, %sw.bb22 ], [ %strip_program_specified.0, %sw.bb21 ], [ %strip_program_specified.0, %sw.bb20 ], [ %strip_program_specified.0, %sw.bb19 ], [ %strip_program_specified.0, %sw.bb17 ], [ %strip_program_specified.0, %sw.bb16 ], [ %strip_program_specified.0, %sw.bb15 ], [ 1, %sw.bb13 ], [ %strip_program_specified.0, %sw.bb12 ], [ %strip_program_specified.0, %sw.bb10 ], [ %strip_program_specified.0, %sw.bb9 ], [ %strip_program_specified.0, %while.cond ], [ %strip_program_specified.0, %sw.bb ], [ %strip_program_specified.0, %if.then37 ]
  %scontext.0.be = phi ptr [ %scontext.0, %get_labeling_handle.exit ], [ %scontext.0, %if.then44 ], [ %scontext.0, %if.else42 ], [ %scontext.0, %if.end34 ], [ %scontext.0, %if.then32 ], [ %scontext.0, %sw.bb29 ], [ %scontext.0, %if.end28 ], [ %scontext.0, %sw.bb23 ], [ %scontext.0, %sw.bb22 ], [ %scontext.0, %sw.bb21 ], [ %scontext.0, %sw.bb20 ], [ %scontext.0, %sw.bb19 ], [ %scontext.0, %sw.bb17 ], [ %scontext.0, %sw.bb16 ], [ %scontext.0, %sw.bb15 ], [ %scontext.0, %sw.bb13 ], [ %scontext.0, %sw.bb12 ], [ %scontext.0, %sw.bb10 ], [ %scontext.0, %sw.bb9 ], [ %scontext.0, %while.cond ], [ %scontext.0, %sw.bb ], [ %10, %if.then37 ]
  %make_backups.0.be = phi i8 [ %make_backups.0, %get_labeling_handle.exit ], [ %make_backups.0, %if.then44 ], [ %make_backups.0, %if.else42 ], [ %make_backups.0, %if.end34 ], [ %make_backups.0, %if.then32 ], [ %make_backups.0, %sw.bb29 ], [ %make_backups.0, %if.end28 ], [ 1, %sw.bb23 ], [ %make_backups.0, %sw.bb22 ], [ %make_backups.0, %sw.bb21 ], [ %make_backups.0, %sw.bb20 ], [ %make_backups.0, %sw.bb19 ], [ %make_backups.0, %sw.bb17 ], [ %make_backups.0, %sw.bb16 ], [ %make_backups.0, %sw.bb15 ], [ %make_backups.0, %sw.bb13 ], [ %make_backups.0, %sw.bb12 ], [ %make_backups.0, %sw.bb10 ], [ %make_backups.0, %sw.bb9 ], [ %make_backups.0, %while.cond ], [ 1, %sw.bb ], [ %make_backups.0, %if.then37 ]
  %specified_mode.0.be = phi ptr [ %specified_mode.0, %get_labeling_handle.exit ], [ %specified_mode.0, %if.then44 ], [ %specified_mode.0, %if.else42 ], [ %specified_mode.0, %if.end34 ], [ %specified_mode.0, %if.then32 ], [ %specified_mode.0, %sw.bb29 ], [ %specified_mode.0, %if.end28 ], [ %specified_mode.0, %sw.bb23 ], [ %specified_mode.0, %sw.bb22 ], [ %specified_mode.0, %sw.bb21 ], [ %4, %sw.bb20 ], [ %specified_mode.0, %sw.bb19 ], [ %specified_mode.0, %sw.bb17 ], [ %specified_mode.0, %sw.bb16 ], [ %specified_mode.0, %sw.bb15 ], [ %specified_mode.0, %sw.bb13 ], [ %specified_mode.0, %sw.bb12 ], [ %specified_mode.0, %sw.bb10 ], [ %specified_mode.0, %sw.bb9 ], [ %specified_mode.0, %while.cond ], [ %specified_mode.0, %sw.bb ], [ %specified_mode.0, %if.then37 ]
  br label %while.cond, !llvm.loop !41

sw.bb9:                                           ; preds = %while.cond
  store i1 true, ptr @copy_only_if_needed, align 1
  br label %while.cond.backedge

sw.bb10:                                          ; preds = %while.cond
  store i1 true, ptr @strip_files, align 1
  %call11 = call ptr @signal(i32 noundef 17, ptr noundef null) #15
  br label %while.cond.backedge

sw.bb12:                                          ; preds = %while.cond
  store i8 1, ptr %verbose.i, align 8, !tbaa !40
  store i8 1, ptr %debug, align 2, !tbaa !43
  br label %while.cond.backedge

sw.bb13:                                          ; preds = %while.cond
  %2 = load ptr, ptr @optarg, align 8, !tbaa !5
  %call14 = call noalias nonnull ptr @xstrdup(ptr noundef %2) #15
  store ptr %call14, ptr @strip_program, align 8, !tbaa !5
  br label %while.cond.backedge

sw.bb15:                                          ; preds = %while.cond
  store i1 true, ptr @dir_arg, align 1
  br label %while.cond.backedge

sw.bb16:                                          ; preds = %while.cond
  br label %while.cond.backedge

sw.bb17:                                          ; preds = %while.cond
  store i8 1, ptr %verbose.i, align 8, !tbaa !40
  br label %while.cond.backedge

sw.bb19:                                          ; preds = %while.cond
  %3 = load ptr, ptr @optarg, align 8, !tbaa !5
  store ptr %3, ptr @group_name, align 8, !tbaa !5
  br label %while.cond.backedge

sw.bb20:                                          ; preds = %while.cond
  %4 = load ptr, ptr @optarg, align 8, !tbaa !5
  br label %while.cond.backedge

sw.bb21:                                          ; preds = %while.cond
  %5 = load ptr, ptr @optarg, align 8, !tbaa !5
  store ptr %5, ptr @owner_name, align 8, !tbaa !5
  br label %while.cond.backedge

sw.bb22:                                          ; preds = %while.cond
  store i8 1, ptr %preserve_timestamps, align 1, !tbaa !44
  br label %while.cond.backedge

sw.bb23:                                          ; preds = %while.cond
  %6 = load ptr, ptr @optarg, align 8, !tbaa !5
  br label %while.cond.backedge

sw.bb24:                                          ; preds = %while.cond
  %tobool25.not = icmp eq ptr %target_directory.0, null
  br i1 %tobool25.not, label %if.end28, label %if.then26

if.then26:                                        ; preds = %sw.bb24
  %call27 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.17, i32 noundef 5) #15
  call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef 0, ptr noundef %call27) #18
  unreachable

if.end28:                                         ; preds = %sw.bb24
  %7 = load ptr, ptr @optarg, align 8, !tbaa !5
  br label %while.cond.backedge

sw.bb29:                                          ; preds = %while.cond
  br label %while.cond.backedge

sw.bb30:                                          ; preds = %while.cond
  %8 = load i32, ptr @selinux_enabled, align 4, !tbaa !9
  %tobool31.not = icmp eq i32 %8, 0
  br i1 %tobool31.not, label %if.then32, label %if.end34

if.then32:                                        ; preds = %sw.bb30
  %call33 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.18, i32 noundef 5) #15
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %call33) #18
  br label %while.cond.backedge

if.end34:                                         ; preds = %sw.bb30
  store i8 1, ptr %preserve_security_context.i, align 1, !tbaa !37
  store i1 true, ptr @use_default_selinux_context, align 1
  br label %while.cond.backedge

sw.bb35:                                          ; preds = %while.cond
  %9 = load i32, ptr @selinux_enabled, align 4, !tbaa !9
  %tobool36.not = icmp eq i32 %9, 0
  br i1 %tobool36.not, label %if.else42, label %if.then37

if.then37:                                        ; preds = %sw.bb35
  store i1 true, ptr @use_default_selinux_context, align 1
  %10 = load ptr, ptr @optarg, align 8, !tbaa !5
  %tobool38.not = icmp eq ptr %10, null
  br i1 %tobool38.not, label %if.else, label %while.cond.backedge

if.else:                                          ; preds = %if.then37
  %.b6.i = load i1, ptr @get_labeling_handle.initialized, align 1
  br i1 %.b6.i, label %get_labeling_handle.exit, label %if.then.i

if.then.i:                                        ; preds = %if.else
  store i1 true, ptr @get_labeling_handle.initialized, align 1
  %call.i = call ptr @selabel_open(i32 noundef 0, ptr noundef null, i32 noundef 0) #15
  store ptr %call.i, ptr @get_labeling_handle.hnd, align 8, !tbaa !5
  %tobool1.not.i = icmp eq ptr %call.i, null
  br i1 %tobool1.not.i, label %if.then2.i, label %get_labeling_handle.exit

if.then2.i:                                       ; preds = %if.then.i
  %call3.i = tail call ptr @__errno_location() #19
  %11 = load i32, ptr %call3.i, align 4, !tbaa !9
  %call4.i = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.75, i32 noundef 5) #15
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %11, ptr noundef %call4.i) #18
  br label %get_labeling_handle.exit

get_labeling_handle.exit:                         ; preds = %if.then2.i, %if.then.i, %if.else
  %12 = load ptr, ptr @get_labeling_handle.hnd, align 8, !tbaa !5
  store ptr %12, ptr %set_security_context.i, align 8, !tbaa !38
  br label %while.cond.backedge

if.else42:                                        ; preds = %sw.bb35
  %13 = load ptr, ptr @optarg, align 8, !tbaa !5
  %tobool43.not = icmp eq ptr %13, null
  br i1 %tobool43.not, label %while.cond.backedge, label %if.then44

if.then44:                                        ; preds = %if.else42
  %call45 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.19, i32 noundef 5) #15
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %call45) #18
  br label %while.cond.backedge

sw.bb48:                                          ; preds = %while.cond
  call void @usage(i32 noundef 0) #20
  unreachable

sw.bb49:                                          ; preds = %while.cond
  %14 = load ptr, ptr @stdout, align 8, !tbaa !5
  %15 = load ptr, ptr @Version, align 8, !tbaa !5
  %call50 = call ptr @proper_name_lite(ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.21) #15
  call void (ptr, ptr, ptr, ptr, ...) @version_etc(ptr noundef %14, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.20, ptr noundef %15, ptr noundef %call50, ptr noundef null) #15
  call void @exit(i32 noundef 0) #17
  unreachable

sw.default:                                       ; preds = %while.cond
  call void @usage(i32 noundef 1) #20
  unreachable

while.end:                                        ; preds = %while.cond
  %.b285289 = load i1, ptr @dir_arg, align 1
  br i1 %.b285289, label %land.lhs.true, label %if.end57.thread

if.end57.thread:                                  ; preds = %while.end
  %tobool61314 = icmp ne ptr %target_directory.0, null
  br label %if.end64

land.lhs.true:                                    ; preds = %while.end
  %.b280290 = load i1, ptr @strip_files, align 1
  br i1 %.b280290, label %if.then55, label %if.end57

if.then55:                                        ; preds = %land.lhs.true
  %call56 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.22, i32 noundef 5) #15
  call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef 0, ptr noundef %call56) #18
  unreachable

if.end57:                                         ; preds = %land.lhs.true
  %tobool61.not = icmp eq ptr %target_directory.0, null
  br i1 %tobool61.not, label %if.end64, label %if.then62

if.then62:                                        ; preds = %if.end57
  %call63 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.23, i32 noundef 5) #15
  call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef 0, ptr noundef %call63) #18
  unreachable

if.end64:                                         ; preds = %if.end57, %if.end57.thread
  %tobool61316 = phi i1 [ %tobool61314, %if.end57.thread ], [ false, %if.end57 ]
  %tobool65.not = icmp eq i8 %make_backups.0, 0
  br i1 %tobool65.not, label %cond.end, label %cond.true

cond.true:                                        ; preds = %if.end64
  %call67 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.24, i32 noundef 5) #15
  %call68 = call i32 @xget_version(ptr noundef %call67, ptr noundef %version_control_string.0) #15
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %if.end64
  %cond = phi i32 [ %call68, %cond.true ], [ 0, %if.end64 ]
  store i32 %cond, ptr %x, align 8, !tbaa !30
  call void @set_simple_backup_suffix(ptr noundef %backup_suffix.0) #15
  %16 = load i8, ptr %preserve_security_context.i, align 1, !tbaa !37, !range !45, !noundef !46
  %tobool70.not = icmp eq i8 %16, 0
  br i1 %tobool70.not, label %if.end78, label %land.lhs.true72

land.lhs.true72:                                  ; preds = %cond.end
  %17 = load ptr, ptr %set_security_context.i, align 8, !tbaa !38
  %tobool74 = icmp ne ptr %17, null
  %tobool75 = icmp ne ptr %scontext.0, null
  %or.cond234 = select i1 %tobool74, i1 true, i1 %tobool75
  br i1 %or.cond234, label %if.then76, label %if.end88

if.then76:                                        ; preds = %land.lhs.true72
  %call77 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.25, i32 noundef 5) #15
  call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef 0, ptr noundef %call77) #18
  unreachable

if.end78:                                         ; preds = %cond.end
  %tobool79.not = icmp eq ptr %scontext.0, null
  br i1 %tobool79.not, label %if.end88, label %land.lhs.true80

land.lhs.true80:                                  ; preds = %if.end78
  %call81 = call i32 @setfscreatecon(ptr noundef nonnull %scontext.0) #15
  %cmp82 = icmp slt i32 %call81, 0
  br i1 %cmp82, label %if.then84, label %if.end88

if.then84:                                        ; preds = %land.lhs.true80
  %call85 = tail call ptr @__errno_location() #19
  %18 = load i32, ptr %call85, align 4, !tbaa !9
  %call86 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.26, i32 noundef 5) #15
  %call87 = call ptr @quote(ptr noundef nonnull %scontext.0) #15
  call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %18, ptr noundef %call86, ptr noundef %call87) #18
  unreachable

if.end88:                                         ; preds = %land.lhs.true80, %if.end78, %land.lhs.true72
  %19 = load i32, ptr @optind, align 4, !tbaa !9
  %sub = sub nsw i32 %argc, %19
  %idx.ext = sext i32 %19 to i64
  %add.ptr = getelementptr inbounds ptr, ptr %argv, i64 %idx.ext
  %.b283292 = load i1, ptr @dir_arg, align 1
  %20 = select i1 %.b283292, i1 true, i1 %tobool61316
  %lnot = xor i1 %20, true
  %lnot.ext = zext i1 %lnot to i32
  %cmp92.not = icmp sgt i32 %sub, %lnot.ext
  br i1 %cmp92.not, label %if.end104, label %if.then94

if.then94:                                        ; preds = %if.end88
  %cmp95 = icmp slt i32 %sub, 1
  br i1 %cmp95, label %if.then97, label %if.else99

if.then97:                                        ; preds = %if.then94
  %call98 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.27, i32 noundef 5) #15
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %call98) #18
  br label %if.end103

if.else99:                                        ; preds = %if.then94
  %call100 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.28, i32 noundef 5) #15
  %21 = load ptr, ptr %add.ptr, align 8, !tbaa !5
  %call102 = call ptr @quotearg_style(i32 noundef 4, ptr noundef %21) #15
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %call100, ptr noundef %call102) #18
  br label %if.end103

if.end103:                                        ; preds = %if.else99, %if.then97
  call void @usage(i32 noundef 1) #20
  unreachable

if.end104:                                        ; preds = %if.end88
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %sb) #15
  %tobool105.not = icmp eq i8 %no_target_directory.0, 0
  br i1 %tobool105.not, label %if.else118, label %if.then106

if.then106:                                       ; preds = %if.end104
  br i1 %tobool61316, label %if.then108, label %if.end110

if.then108:                                       ; preds = %if.then106
  %call109 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.29, i32 noundef 5) #15
  call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef 0, ptr noundef %call109) #18
  unreachable

if.end110:                                        ; preds = %if.then106
  %cmp111 = icmp ugt i32 %sub, 2
  br i1 %cmp111, label %if.then113, label %if.end155

if.then113:                                       ; preds = %if.end110
  %call114 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.30, i32 noundef 5) #15
  %arrayidx115 = getelementptr inbounds ptr, ptr %add.ptr, i64 2
  %22 = load ptr, ptr %arrayidx115, align 8, !tbaa !5
  %call116 = call ptr @quotearg_style(i32 noundef 4, ptr noundef %22) #15
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %call114, ptr noundef %call116) #18
  call void @usage(i32 noundef 1) #20
  unreachable

if.else118:                                       ; preds = %if.end104
  br i1 %tobool61316, label %if.then120, label %if.else136

if.then120:                                       ; preds = %if.else118
  %call121 = call i32 @target_directory_operand(ptr noundef nonnull %target_directory.0, ptr noundef nonnull %sb) #15
  %cmp.i.not = icmp eq i32 %call121, -1
  br i1 %cmp.i.not, label %lor.lhs.false124, label %if.end155

lor.lhs.false124:                                 ; preds = %if.then120
  %tobool125.not = icmp eq i8 %mkdir_and_install.0, 0
  %.pre408 = tail call ptr @__errno_location() #19
  br i1 %tobool125.not, label %if.then131, label %land.lhs.true127

land.lhs.true127:                                 ; preds = %lor.lhs.false124
  %23 = load i32, ptr %.pre408, align 4, !tbaa !9
  %cmp129 = icmp eq i32 %23, 2
  br i1 %cmp129, label %if.end155, label %if.then131

if.then131:                                       ; preds = %land.lhs.true127, %lor.lhs.false124
  %24 = load i32, ptr %.pre408, align 4, !tbaa !9
  %call133 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.31, i32 noundef 5) #15
  %call134 = call ptr @quotearg_style(i32 noundef 4, ptr noundef nonnull %target_directory.0) #15
  call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %24, ptr noundef %call133, ptr noundef %call134) #18
  unreachable

if.else136:                                       ; preds = %if.else118
  br i1 %.b283292, label %if.end155, label %if.then138

if.then138:                                       ; preds = %if.else136
  %25 = zext nneg i32 %sub to i64
  %26 = getelementptr ptr, ptr %add.ptr, i64 %25
  %arrayidx140 = getelementptr ptr, ptr %26, i64 -1
  %27 = load ptr, ptr %arrayidx140, align 8, !tbaa !5
  %call141 = call i32 @target_directory_operand(ptr noundef %27, ptr noundef nonnull %sb) #15
  %cmp.i302.not = icmp eq i32 %call141, -1
  br i1 %cmp.i302.not, label %if.else144, label %if.then143

if.then143:                                       ; preds = %if.then138
  %dec = add nsw i32 %sub, -1
  br label %if.end155

if.else144:                                       ; preds = %if.then138
  %cmp145 = icmp ugt i32 %sub, 2
  br i1 %cmp145, label %if.then147, label %if.end155

if.then147:                                       ; preds = %if.else144
  %call148 = tail call ptr @__errno_location() #19
  %28 = load i32, ptr %call148, align 4, !tbaa !9
  %call149 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.32, i32 noundef 5) #15
  %call150 = call ptr @quotearg_style(i32 noundef 4, ptr noundef %27) #15
  call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %28, ptr noundef %call149, ptr noundef %call150) #18
  unreachable

if.end155:                                        ; preds = %if.else144, %if.then143, %if.else136, %land.lhs.true127, %if.then120, %if.end110
  %target_dirfd.0 = phi i32 [ %call121, %if.then120 ], [ -1, %land.lhs.true127 ], [ -100, %if.else136 ], [ %call141, %if.then143 ], [ -100, %if.else144 ], [ -100, %if.end110 ]
  %target_directory.3 = phi ptr [ %target_directory.0, %if.then120 ], [ %target_directory.0, %land.lhs.true127 ], [ null, %if.else136 ], [ %27, %if.then143 ], [ null, %if.else144 ], [ null, %if.end110 ]
  %n_files.1 = phi i32 [ %sub, %if.then120 ], [ %sub, %land.lhs.true127 ], [ %sub, %if.else136 ], [ %dec, %if.then143 ], [ %sub, %if.else144 ], [ %sub, %if.end110 ]
  %tobool156.not = icmp eq ptr %specified_mode.0, null
  br i1 %tobool156.not, label %if.end166, label %if.then157

if.then157:                                       ; preds = %if.end155
  %call158 = call noalias ptr @mode_compile(ptr noundef nonnull %specified_mode.0) #15
  %tobool159.not = icmp eq ptr %call158, null
  br i1 %tobool159.not, label %if.then160, label %if.end163

if.then160:                                       ; preds = %if.then157
  %call161 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.33, i32 noundef 5) #15
  %call162 = call ptr @quote(ptr noundef nonnull %specified_mode.0) #15
  call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef 0, ptr noundef %call161, ptr noundef %call162) #18
  unreachable

if.end163:                                        ; preds = %if.then157
  %call164 = call i32 @mode_adjust(i32 noundef 0, i1 noundef zeroext false, i32 noundef 0, ptr noundef nonnull %call158, ptr noundef null) #16
  store i32 %call164, ptr @mode, align 4, !tbaa !9
  %call165 = call i32 @mode_adjust(i32 noundef 0, i1 noundef zeroext true, i32 noundef 0, ptr noundef nonnull %call158, ptr noundef nonnull @dir_mode_bits) #16
  store i32 %call165, ptr @dir_mode, align 4, !tbaa !9
  call void @free(ptr noundef nonnull %call158) #15
  br label %if.end166

if.end166:                                        ; preds = %if.end163, %if.end155
  %tobool167.not = icmp eq i8 %strip_program_specified.0, 0
  br i1 %tobool167.not, label %if.end173, label %land.lhs.true169

land.lhs.true169:                                 ; preds = %if.end166
  %.b279294 = load i1, ptr @strip_files, align 1
  br i1 %.b279294, label %if.end173, label %if.then171

if.then171:                                       ; preds = %land.lhs.true169
  %call172 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.34, i32 noundef 5) #15
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %call172) #18
  br label %if.end173

if.end173:                                        ; preds = %if.then171, %land.lhs.true169, %if.end166
  %.b288295 = load i1, ptr @copy_only_if_needed, align 1
  %29 = load i8, ptr %preserve_timestamps, align 1, !range !45
  %tobool178.not = icmp ne i8 %29, 0
  %or.cond300.not = select i1 %.b288295, i1 %tobool178.not, i1 false
  br i1 %or.cond300.not, label %if.then180, label %if.end182

if.then180:                                       ; preds = %if.end173
  %call181 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.35, i32 noundef 5) #15
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %call181) #18
  call void @usage(i32 noundef 1) #20
  unreachable

if.end182:                                        ; preds = %if.end173
  br i1 %.b288295, label %land.lhs.true185, label %if.end198

land.lhs.true185:                                 ; preds = %if.end182
  %.b297 = load i1, ptr @strip_files, align 1
  br i1 %.b297, label %if.then188, label %land.lhs.true193

if.then188:                                       ; preds = %land.lhs.true185
  %call189 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.36, i32 noundef 5) #15
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %call189) #18
  call void @usage(i32 noundef 1) #20
  unreachable

land.lhs.true193:                                 ; preds = %land.lhs.true185
  %30 = load i32, ptr @mode, align 4, !tbaa !9
  %and.i = and i32 %30, -61952
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %if.end198, label %if.then196

if.then196:                                       ; preds = %land.lhs.true193
  %call197 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.37, i32 noundef 5) #15
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %call197) #18
  br label %if.end198

if.end198:                                        ; preds = %if.then196, %land.lhs.true193, %if.end182
  %31 = load ptr, ptr @owner_name, align 8, !tbaa !5
  %tobool.not.i = icmp eq ptr %31, null
  br i1 %tobool.not.i, label %if.else9.i, label %if.then.i303

if.then.i303:                                     ; preds = %if.end198
  %call.i304 = call ptr @getpwnam(ptr noundef nonnull %31)
  %cmp.i305 = icmp eq ptr %call.i304, null
  br i1 %cmp.i305, label %if.then1.i, label %if.else.i

if.then1.i:                                       ; preds = %if.then.i303
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp.i) #15
  %32 = load ptr, ptr @owner_name, align 8, !tbaa !5
  %call2.i = call i32 @xstrtoumax(ptr noundef %32, ptr noundef null, i32 noundef 0, ptr noundef nonnull %tmp.i, ptr noundef nonnull @.str.13) #15
  %cmp3.i = icmp ne i32 %call2.i, 0
  %33 = load i64, ptr %tmp.i, align 8
  %cmp4.i = icmp ugt i64 %33, 4294967295
  %or.cond.i = select i1 %cmp3.i, i1 true, i1 %cmp4.i
  br i1 %or.cond.i, label %if.then5.i, label %if.end.i

if.then5.i:                                       ; preds = %if.then1.i
  %call6.i = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.76, i32 noundef 5) #15
  %34 = load ptr, ptr @owner_name, align 8, !tbaa !5
  %call7.i = call ptr @quotearg_style(i32 noundef 4, ptr noundef %34) #15
  call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef 0, ptr noundef %call6.i, ptr noundef %call7.i) #18
  unreachable

if.end.i:                                         ; preds = %if.then1.i
  %conv.i = trunc i64 %33 to i32
  store i32 %conv.i, ptr @owner_id, align 4, !tbaa !9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp.i) #15
  br label %if.end8.i

if.else.i:                                        ; preds = %if.then.i303
  %pw_uid.i = getelementptr inbounds %struct.passwd, ptr %call.i304, i64 0, i32 2
  %35 = load i32, ptr %pw_uid.i, align 8, !tbaa !47
  store i32 %35, ptr @owner_id, align 4, !tbaa !9
  br label %if.end8.i

if.end8.i:                                        ; preds = %if.else.i, %if.end.i
  call void @endpwent() #15
  br label %if.end10.i

if.else9.i:                                       ; preds = %if.end198
  store i32 -1, ptr @owner_id, align 4, !tbaa !9
  br label %if.end10.i

if.end10.i:                                       ; preds = %if.else9.i, %if.end8.i
  %36 = load ptr, ptr @group_name, align 8, !tbaa !5
  %tobool11.not.i = icmp eq ptr %36, null
  br i1 %tobool11.not.i, label %if.else31.i, label %if.then12.i

if.then12.i:                                      ; preds = %if.end10.i
  %call13.i = call ptr @getgrnam(ptr noundef nonnull %36) #15
  %cmp14.i = icmp eq ptr %call13.i, null
  br i1 %cmp14.i, label %if.then16.i, label %if.else29.i

if.then16.i:                                      ; preds = %if.then12.i
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp17.i) #15
  %37 = load ptr, ptr @group_name, align 8, !tbaa !5
  %call18.i = call i32 @xstrtoumax(ptr noundef %37, ptr noundef null, i32 noundef 0, ptr noundef nonnull %tmp17.i, ptr noundef nonnull @.str.13) #15
  %cmp19.i = icmp ne i32 %call18.i, 0
  %38 = load i64, ptr %tmp17.i, align 8
  %cmp22.i = icmp ugt i64 %38, 4294967295
  %or.cond33.i = select i1 %cmp19.i, i1 true, i1 %cmp22.i
  br i1 %or.cond33.i, label %if.then24.i, label %if.end27.i

if.then24.i:                                      ; preds = %if.then16.i
  %call25.i = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.77, i32 noundef 5) #15
  %39 = load ptr, ptr @group_name, align 8, !tbaa !5
  %call26.i = call ptr @quotearg_style(i32 noundef 4, ptr noundef %39) #15
  call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef 0, ptr noundef %call25.i, ptr noundef %call26.i) #18
  unreachable

if.end27.i:                                       ; preds = %if.then16.i
  %conv28.i = trunc i64 %38 to i32
  store i32 %conv28.i, ptr @group_id, align 4, !tbaa !9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp17.i) #15
  br label %if.end30.i

if.else29.i:                                      ; preds = %if.then12.i
  %gr_gid.i = getelementptr inbounds %struct.group, ptr %call13.i, i64 0, i32 2
  %40 = load i32, ptr %gr_gid.i, align 8, !tbaa !49
  store i32 %40, ptr @group_id, align 4, !tbaa !9
  br label %if.end30.i

if.end30.i:                                       ; preds = %if.else29.i, %if.end27.i
  call void @endgrent() #15
  br label %get_ids.exit

if.else31.i:                                      ; preds = %if.end10.i
  store i32 -1, ptr @group_id, align 4, !tbaa !9
  br label %get_ids.exit

get_ids.exit:                                     ; preds = %if.else31.i, %if.end30.i
  %.b281299 = load i1, ptr @dir_arg, align 1
  br i1 %.b281299, label %if.then200, label %if.else202

if.then200:                                       ; preds = %get_ids.exit
  %call201 = call i32 @savewd_process_files(i32 noundef %n_files.1, ptr noundef nonnull %add.ptr, ptr noundef nonnull @process_dir, ptr noundef nonnull %x) #15
  br label %if.end233

if.else202:                                       ; preds = %get_ids.exit
  call void @hash_init() #15
  %tobool203.not = icmp eq ptr %target_directory.3, null
  br i1 %tobool203.not, label %if.then204, label %if.else220

if.then204:                                       ; preds = %if.else202
  %tobool205.not = icmp eq i8 %mkdir_and_install.0, 0
  %41 = load ptr, ptr %add.ptr, align 8, !tbaa !5
  %arrayidx214 = getelementptr inbounds ptr, ptr %add.ptr, i64 1
  %42 = load ptr, ptr %arrayidx214, align 8, !tbaa !5
  br i1 %tobool205.not, label %cond.false212, label %cond.true207

cond.true207:                                     ; preds = %if.then204
  %call.i306 = call fastcc zeroext i1 @mkancesdirs_safe_wd(ptr noundef %41, ptr noundef %42, ptr noundef nonnull %x, i1 noundef zeroext false)
  br i1 %call.i306, label %install_file_in_file_parents.exit, label %if.then218

install_file_in_file_parents.exit:                ; preds = %cond.true207
  %call1.i = call fastcc zeroext i1 @install_file_in_file(ptr noundef %41, ptr noundef %42, i32 noundef -100, ptr noundef %42, ptr noundef nonnull %x)
  br i1 %call1.i, label %if.end233, label %if.then218

cond.false212:                                    ; preds = %if.then204
  %call216 = call fastcc zeroext i1 @install_file_in_file(ptr noundef %41, ptr noundef %42, i32 noundef -100, ptr noundef %42, ptr noundef nonnull %x)
  br i1 %call216, label %if.end233, label %if.then218

if.then218:                                       ; preds = %cond.false212, %install_file_in_file_parents.exit, %cond.true207
  br label %if.end233

if.else220:                                       ; preds = %if.else202
  call void @dest_info_init(ptr noundef nonnull %x) #15
  %cmp221358.not = icmp eq i32 %n_files.1, 0
  br i1 %cmp221358.not, label %if.end233, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %if.else220
  %tobool227.not = icmp eq i8 %mkdir_and_install.0, 0
  %wide.trip.count406 = zext nneg i32 %n_files.1 to i64
  br i1 %tobool227.not, label %for.body.us.preheader, label %for.body.preheader

for.body.preheader:                               ; preds = %for.body.lr.ph
  %43 = load ptr, ptr %add.ptr, align 8, !tbaa !5
  %call.i307.peel = call ptr @last_component(ptr noundef %43) #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %to_relname.i) #15
  %call1.i308.peel = call noalias nonnull ptr @file_name_concat(ptr noundef nonnull %target_directory.3, ptr noundef %call.i307.peel, ptr noundef nonnull %to_relname.i) #15
  %cmp.i.not.i.peel = icmp eq i32 %target_dirfd.0, -1
  br i1 %cmp.i.not.i.peel, label %land.lhs.true4.i.peel, label %install_file_in_dir.exit.peel

land.lhs.true4.i.peel:                            ; preds = %for.body.preheader
  %call5.i.peel = call fastcc zeroext i1 @mkancesdirs_safe_wd(ptr noundef %43, ptr noundef nonnull %call1.i308.peel, ptr noundef nonnull %x, i1 noundef zeroext true)
  br i1 %call5.i.peel, label %if.then.i310.peel, label %install_file_in_dir.exit.thread.peel

if.then.i310.peel:                                ; preds = %land.lhs.true4.i.peel
  %call7.i311.peel = call i32 (ptr, i32, ...) @open(ptr noundef nonnull %target_directory.3, i32 noundef 2162688) #15
  %cmp.i312.peel = icmp slt i32 %call7.i311.peel, 0
  br i1 %cmp.i312.peel, label %if.then8.i.peel, label %install_file_in_dir.exit.peel

install_file_in_dir.exit.peel:                    ; preds = %if.then.i310.peel, %for.body.preheader
  %target_dirfd.2.peel = phi i32 [ %target_dirfd.0, %for.body.preheader ], [ %call7.i311.peel, %if.then.i310.peel ]
  %44 = load ptr, ptr %to_relname.i, align 8, !tbaa !5
  %call18.i309.peel = call fastcc zeroext i1 @install_file_in_file(ptr noundef %43, ptr noundef nonnull %call1.i308.peel, i32 noundef %target_dirfd.2.peel, ptr noundef %44, ptr noundef nonnull %x)
  call void @free(ptr noundef nonnull %call1.i308.peel) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %to_relname.i) #15
  %not.call18.i309.peel = xor i1 %call18.i309.peel, true
  %spec.select321.peel = zext i1 %not.call18.i309.peel to i32
  br label %for.cond.peel

if.then8.i.peel:                                  ; preds = %if.then.i310.peel
  %call9.i.peel = tail call ptr @__errno_location() #19
  %45 = load i32, ptr %call9.i.peel, align 4, !tbaa !9
  %call10.i.peel = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.94, i32 noundef 5) #15
  %call11.i.peel = call ptr @quotearg_style(i32 noundef 4, ptr noundef nonnull %call1.i308.peel) #15
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %45, ptr noundef %call10.i.peel, ptr noundef %call11.i.peel) #18
  br label %install_file_in_dir.exit.thread.peel

install_file_in_dir.exit.thread.peel:             ; preds = %if.then8.i.peel, %land.lhs.true4.i.peel
  call void @free(ptr noundef nonnull %call1.i308.peel) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %to_relname.i) #15
  br label %for.cond.peel

for.cond.peel:                                    ; preds = %install_file_in_dir.exit.thread.peel, %install_file_in_dir.exit.peel
  %target_dirfd.3320.peel = phi i32 [ -1, %install_file_in_dir.exit.thread.peel ], [ %target_dirfd.2.peel, %install_file_in_dir.exit.peel ]
  %46 = phi i32 [ 1, %install_file_in_dir.exit.thread.peel ], [ %spec.select321.peel, %install_file_in_dir.exit.peel ]
  %exitcond.peel.not = icmp eq i32 %n_files.1, 1
  br i1 %exitcond.peel.not, label %if.end233, label %for.body.peel.next

for.body.peel.next:                               ; preds = %for.cond.peel
  %cmp.i.not.i = icmp eq i32 %target_dirfd.3320.peel, -1
  br label %for.body

for.body.us.preheader:                            ; preds = %for.body.lr.ph
  %cmp.i.not.i.us = icmp eq i32 %target_dirfd.0, -1
  br label %for.body.us

for.body.us:                                      ; preds = %for.cond.us, %for.body.us.preheader
  %indvars.iv403 = phi i64 [ 0, %for.body.us.preheader ], [ %indvars.iv.next404, %for.cond.us ]
  %exit_status.0360.us = phi i32 [ 0, %for.body.us.preheader ], [ %49, %for.cond.us ]
  %arrayidx224.us = getelementptr inbounds ptr, ptr %add.ptr, i64 %indvars.iv403
  %47 = load ptr, ptr %arrayidx224.us, align 8, !tbaa !5
  %call.i307.us = call ptr @last_component(ptr noundef %47) #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %to_relname.i) #15
  %call1.i308.us = call noalias nonnull ptr @file_name_concat(ptr noundef nonnull %target_directory.3, ptr noundef %call.i307.us, ptr noundef nonnull %to_relname.i) #15
  br i1 %cmp.i.not.i.us, label %land.lhs.true.i.us, label %install_file_in_dir.exit.us

land.lhs.true.i.us:                               ; preds = %for.body.us
  call void @free(ptr noundef nonnull %call1.i308.us) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %to_relname.i) #15
  br label %for.cond.us

install_file_in_dir.exit.us:                      ; preds = %for.body.us
  %48 = load ptr, ptr %to_relname.i, align 8, !tbaa !5
  %call18.i309.us = call fastcc zeroext i1 @install_file_in_file(ptr noundef %47, ptr noundef nonnull %call1.i308.us, i32 noundef %target_dirfd.0, ptr noundef %48, ptr noundef nonnull %x)
  call void @free(ptr noundef nonnull %call1.i308.us) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %to_relname.i) #15
  %spec.select321.us = select i1 %call18.i309.us, i32 %exit_status.0360.us, i32 1
  br label %for.cond.us

for.cond.us:                                      ; preds = %install_file_in_dir.exit.us, %land.lhs.true.i.us
  %49 = phi i32 [ 1, %land.lhs.true.i.us ], [ %spec.select321.us, %install_file_in_dir.exit.us ]
  %indvars.iv.next404 = add nuw nsw i64 %indvars.iv403, 1
  %exitcond407.not = icmp eq i64 %indvars.iv.next404, %wide.trip.count406
  br i1 %exitcond407.not, label %if.end233, label %for.body.us, !llvm.loop !51

for.body:                                         ; preds = %for.cond, %for.body.peel.next
  %indvars.iv = phi i64 [ 1, %for.body.peel.next ], [ %indvars.iv.next, %for.cond ]
  %exit_status.0360 = phi i32 [ %46, %for.body.peel.next ], [ %51, %for.cond ]
  %arrayidx224 = getelementptr inbounds ptr, ptr %add.ptr, i64 %indvars.iv
  %50 = load ptr, ptr %arrayidx224, align 8, !tbaa !5
  %call.i307 = call ptr @last_component(ptr noundef %50) #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %to_relname.i) #15
  %call1.i308 = call noalias nonnull ptr @file_name_concat(ptr noundef nonnull %target_directory.3, ptr noundef %call.i307, ptr noundef nonnull %to_relname.i) #15
  br i1 %cmp.i.not.i, label %install_file_in_dir.exit.thread, label %install_file_in_dir.exit

install_file_in_dir.exit.thread:                  ; preds = %for.body
  call void @free(ptr noundef nonnull %call1.i308) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %to_relname.i) #15
  br label %for.cond

install_file_in_dir.exit:                         ; preds = %for.body
  %.pre = load ptr, ptr %to_relname.i, align 8, !tbaa !5
  %call18.i309 = call fastcc zeroext i1 @install_file_in_file(ptr noundef %50, ptr noundef nonnull %call1.i308, i32 noundef %target_dirfd.3320.peel, ptr noundef %.pre, ptr noundef nonnull %x)
  call void @free(ptr noundef nonnull %call1.i308) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %to_relname.i) #15
  %spec.select321 = select i1 %call18.i309, i32 %exit_status.0360, i32 1
  br label %for.cond

for.cond:                                         ; preds = %install_file_in_dir.exit, %install_file_in_dir.exit.thread
  %51 = phi i32 [ 1, %install_file_in_dir.exit.thread ], [ %spec.select321, %install_file_in_dir.exit ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count406
  br i1 %exitcond.not, label %if.end233, label %for.body, !llvm.loop !52

if.end233:                                        ; preds = %for.cond, %for.cond.us, %for.cond.peel, %if.else220, %if.then218, %cond.false212, %install_file_in_file_parents.exit, %if.then200
  %exit_status.2 = phi i32 [ %call201, %if.then200 ], [ 0, %install_file_in_file_parents.exit ], [ 1, %if.then218 ], [ 0, %cond.false212 ], [ 0, %if.else220 ], [ %46, %for.cond.peel ], [ %49, %for.cond.us ], [ %51, %for.cond ]
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %sb) #15
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %x) #15
  ret i32 %exit_status.2
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #7

declare i32 @is_selinux_enabled() local_unnamed_addr #2

declare void @set_program_name(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare ptr @bindtextdomain(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare ptr @textdomain(ptr noundef) local_unnamed_addr #1

declare void @close_stdin() #2

; Function Attrs: nounwind
declare i32 @atexit(ptr noundef) local_unnamed_addr #1

declare void @cp_options_default(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #8

; Function Attrs: nounwind
declare i32 @umask(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare i32 @getopt_long(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare ptr @signal(i32 noundef, ptr noundef) local_unnamed_addr #1

declare noalias nonnull ptr @xstrdup(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold
declare void @error(i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #9

declare ptr @selabel_open(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #10

declare ptr @proper_name_lite(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @version_etc(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

declare i32 @xget_version(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @set_simple_backup_suffix(ptr noundef) local_unnamed_addr #2

declare i32 @setfscreatecon(ptr noundef) local_unnamed_addr #2

declare ptr @quote(ptr noundef) local_unnamed_addr #2

declare ptr @quotearg_style(i32 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @target_directory_operand(ptr noundef, ptr noundef) local_unnamed_addr #2

declare noalias ptr @mode_compile(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i32 @mode_adjust(i32 noundef, i1 noundef zeroext, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #11

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #12

; Function Attrs: nofree nounwind
declare noundef ptr @getpwnam(ptr nocapture noundef readonly) local_unnamed_addr #3

declare i32 @xstrtoumax(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #7

declare void @endpwent() local_unnamed_addr #2

declare ptr @getgrnam(ptr noundef) local_unnamed_addr #2

declare void @endgrent() local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal noundef i32 @process_dir(ptr noundef %dir, ptr noundef %wd, ptr noundef %options) #6 {
entry:
  %0 = load i32, ptr @dir_mode, align 4, !tbaa !9
  %1 = load i32, ptr @dir_mode_bits, align 4, !tbaa !9
  %2 = load i32, ptr @owner_id, align 4, !tbaa !9
  %3 = load i32, ptr @group_id, align 4, !tbaa !9
  %call = tail call zeroext i1 @make_dir_parents(ptr noundef %dir, ptr noundef %wd, ptr noundef nonnull @make_ancestor, ptr noundef %options, i32 noundef %0, ptr noundef nonnull @announce_mkdir, i32 noundef %1, i32 noundef %2, i32 noundef %3, i1 noundef zeroext false) #15
  br i1 %call, label %land.lhs.true, label %if.end11

land.lhs.true:                                    ; preds = %entry
  %set_security_context = getelementptr inbounds %struct.cp_options, ptr %options, i64 0, i32 20
  %4 = load ptr, ptr %set_security_context, align 8, !tbaa !38
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %if.end11, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %call2 = tail call ptr @last_component(ptr noundef %dir) #16
  %call3 = tail call zeroext i1 @restorecon(ptr noundef nonnull %4, ptr noundef %call2, i1 noundef zeroext false) #15
  br i1 %call3, label %if.end11, label %land.lhs.true4

land.lhs.true4:                                   ; preds = %if.then
  %call5 = tail call ptr @__errno_location() #19
  %5 = load i32, ptr %call5, align 4, !tbaa !9
  switch i32 %5, label %if.then7 [
    i32 95, label %if.end11
    i32 61, label %if.end11
  ]

if.then7:                                         ; preds = %land.lhs.true4
  %call9 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.78, i32 noundef 5) #15
  %call10 = tail call ptr @quotearg_style(i32 noundef 4, ptr noundef %dir) #15
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %5, ptr noundef %call9, ptr noundef %call10) #18
  br label %if.end11

if.end11:                                         ; preds = %if.then7, %land.lhs.true4, %land.lhs.true4, %if.then, %land.lhs.true, %entry
  %not.call = xor i1 %call, true
  %cond = zext i1 %not.call to i32
  ret i32 %cond
}

declare i32 @savewd_process_files(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @hash_init() local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc noundef zeroext i1 @mkancesdirs_safe_wd(ptr nocapture noundef readonly %from, ptr noundef %to, ptr noundef %x, i1 noundef zeroext %save_always) unnamed_addr #6 {
entry:
  %wd = alloca %struct.savewd, align 4
  br i1 %save_always, label %lor.end.thread, label %lor.rhs

lor.rhs:                                          ; preds = %entry
  %0 = load i8, ptr %from, align 1, !tbaa !54
  %cmp = icmp eq i8 %0, 47
  br i1 %cmp, label %lor.end, label %lor.end.thread

lor.end.thread:                                   ; preds = %lor.rhs, %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %wd) #15
  store i32 0, ptr %wd, align 4, !tbaa !55
  br label %if.end

lor.end:                                          ; preds = %lor.rhs
  %1 = load i8, ptr %to, align 1, !tbaa !54
  %cmp4.not = icmp eq i8 %1, 47
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %wd) #15
  store i32 0, ptr %wd, align 4, !tbaa !55
  br i1 %cmp4.not, label %if.then, label %if.end

if.then:                                          ; preds = %lor.end
  call void @savewd_finish(ptr noundef nonnull %wd) #15
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.end, %lor.end.thread
  %2 = phi i1 [ true, %lor.end.thread ], [ false, %if.then ], [ true, %lor.end ]
  %call = call i64 @mkancesdirs(ptr noundef %to, ptr noundef nonnull %wd, ptr noundef nonnull @make_ancestor, ptr noundef %x) #15
  %cmp8 = icmp ne i64 %call, -1
  br i1 %cmp8, label %if.end14, label %if.then10

if.then10:                                        ; preds = %if.end
  %call11 = tail call ptr @__errno_location() #19
  %3 = load i32, ptr %call11, align 4, !tbaa !9
  %call12 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.81, i32 noundef 5) #15
  %call13 = call ptr @quotearg_style(i32 noundef 4, ptr noundef %to) #15
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %3, ptr noundef %call12, ptr noundef %call13) #18
  br label %if.end14

if.end14:                                         ; preds = %if.then10, %if.end
  %status.0 = phi i32 [ 1, %if.then10 ], [ 0, %if.end ]
  br i1 %2, label %if.then16, label %cleanup35

if.then16:                                        ; preds = %if.end14
  %call17 = call i32 @savewd_restore(ptr noundef nonnull %wd, i32 noundef %status.0) #15
  %call18 = tail call ptr @__errno_location() #19
  %4 = load i32, ptr %call18, align 4, !tbaa !9
  call void @savewd_finish(ptr noundef nonnull %wd) #15
  %cmp19 = icmp sgt i32 %call17, 0
  br i1 %cmp19, label %cleanup35, label %if.end22

if.end22:                                         ; preds = %if.then16
  %cmp23 = icmp ne i32 %call17, 0
  %or.cond = and i1 %cmp8, %cmp23
  br i1 %or.cond, label %if.then27, label %cleanup35

if.then27:                                        ; preds = %if.end22
  %call28 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.81, i32 noundef 5) #15
  %call29 = call ptr @quotearg_style(i32 noundef 4, ptr noundef %to) #15
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %4, ptr noundef %call28, ptr noundef %call29) #18
  br label %cleanup35

cleanup35:                                        ; preds = %if.then27, %if.end22, %if.then16, %if.end14
  %retval.1 = phi i1 [ %cmp8, %if.end22 ], [ %cmp8, %if.end14 ], [ false, %if.then16 ], [ false, %if.then27 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %wd) #15
  ret i1 %retval.1
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef zeroext i1 @install_file_in_file(ptr noundef %from, ptr noundef %to, i32 noundef %to_dirfd, ptr noundef %to_relname, ptr noundef %x) unnamed_addr #6 {
entry:
  %st.i.i = alloca %struct.stat, align 8
  %scontext_raw.i.i = alloca ptr, align 8
  %timespec.i = alloca [2 x %struct.timespec], align 16
  %status.i = alloca i32, align 4
  %src_sb.i.i = alloca %struct.stat, align 8
  %dest_sb.i.i = alloca %struct.stat, align 8
  %file_scontext_raw.i.i = alloca ptr, align 8
  %to_scontext_raw.i.i = alloca ptr, align 8
  %copy_into_self.i = alloca i8, align 1
  %from_sb = alloca %struct.stat, align 8
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %from_sb) #15
  %preserve_timestamps = getelementptr inbounds %struct.cp_options, ptr %x, i64 0, i32 18
  %0 = load i8, ptr %preserve_timestamps, align 1, !tbaa !44, !range !45, !noundef !46
  %tobool.not = icmp eq i8 %0, 0
  br i1 %tobool.not, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %call = call i32 @stat(ptr noundef %from, ptr noundef nonnull %from_sb) #15
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %call1 = tail call ptr @__errno_location() #19
  %1 = load i32, ptr %call1, align 4, !tbaa !9
  %call2 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.82, i32 noundef 5) #15
  %call3 = tail call ptr @quotearg_style(i32 noundef 4, ptr noundef %from) #15
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %1, ptr noundef %call2, ptr noundef %call3) #18
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true, %entry
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %copy_into_self.i) #15
  %.b7.i = load i1, ptr @copy_only_if_needed, align 1
  br i1 %.b7.i, label %land.lhs.true.i, label %copy_file.exit

land.lhs.true.i:                                  ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %src_sb.i.i) #15
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %dest_sb.i.i) #15
  %2 = load i32, ptr @mode, align 4, !tbaa !9
  %and.i.i.i = and i32 %2, -61952
  %tobool.i.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.i.not.i.i, label %if.end.i.i, label %need_copy.exit.thread.i

if.end.i.i:                                       ; preds = %land.lhs.true.i
  %call1.i.i = call i32 @stat(ptr noundef %from, ptr noundef nonnull %src_sb.i.i) #15
  %cmp.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %cmp.not.i.i, label %if.end3.i.i, label %need_copy.exit.thread.i

if.end3.i.i:                                      ; preds = %if.end.i.i
  %call4.i.i = call i32 @fstatat(i32 noundef %to_dirfd, ptr noundef %to_relname, ptr noundef nonnull %dest_sb.i.i, i32 noundef 256) #15
  %cmp5.not.i.i = icmp eq i32 %call4.i.i, 0
  br i1 %cmp5.not.i.i, label %if.end7.i.i, label %need_copy.exit.thread.i

if.end7.i.i:                                      ; preds = %if.end3.i.i
  %st_mode.i.i = getelementptr inbounds %struct.stat, ptr %src_sb.i.i, i64 0, i32 3
  %3 = load i32, ptr %st_mode.i.i, align 8, !tbaa !57
  %and.i.i = and i32 %3, 61440
  %cmp8.i.i = icmp eq i32 %and.i.i, 32768
  br i1 %cmp8.i.i, label %lor.lhs.false.i.i, label %need_copy.exit.thread.i

lor.lhs.false.i.i:                                ; preds = %if.end7.i.i
  %st_mode9.i.i = getelementptr inbounds %struct.stat, ptr %dest_sb.i.i, i64 0, i32 3
  %4 = load i32, ptr %st_mode9.i.i, align 8, !tbaa !57
  %and.i124.i.i = and i32 %3, -61952
  %tobool.i125.i.i = icmp ne i32 %and.i124.i.i, 0
  %5 = and i32 %4, -512
  %6 = icmp ne i32 %5, 32768
  %or.cond129.i.i = or i1 %tobool.i125.i.i, %6
  br i1 %or.cond129.i.i, label %need_copy.exit.thread.i, label %if.end19.i.i

if.end19.i.i:                                     ; preds = %lor.lhs.false.i.i
  %st_size.i.i = getelementptr inbounds %struct.stat, ptr %src_sb.i.i, i64 0, i32 8
  %7 = load i64, ptr %st_size.i.i, align 8, !tbaa !61
  %st_size20.i.i = getelementptr inbounds %struct.stat, ptr %dest_sb.i.i, i64 0, i32 8
  %8 = load i64, ptr %st_size20.i.i, align 8, !tbaa !61
  %cmp21.not.i.i = icmp eq i64 %7, %8
  br i1 %cmp21.not.i.i, label %lor.lhs.false22.i.i, label %need_copy.exit.thread.i

lor.lhs.false22.i.i:                              ; preds = %if.end19.i.i
  %and24.i.i = and i32 %4, 4095
  %9 = load i32, ptr @mode, align 4, !tbaa !9
  %cmp25.not.i.i = icmp eq i32 %and24.i.i, %9
  br i1 %cmp25.not.i.i, label %if.end27.i.i, label %need_copy.exit.thread.i

if.end27.i.i:                                     ; preds = %lor.lhs.false22.i.i
  %10 = load i32, ptr @owner_id, align 4, !tbaa !9
  %cmp28.i.i = icmp eq i32 %10, -1
  br i1 %cmp28.i.i, label %if.then29.i.i, label %if.else.i.i

if.then29.i.i:                                    ; preds = %if.end27.i.i
  %call30.i.i = tail call ptr @__errno_location() #19
  store i32 0, ptr %call30.i.i, align 4, !tbaa !9
  %call31.i.i = call i32 @getuid() #15
  %cmp32.i.i = icmp eq i32 %call31.i.i, -1
  br i1 %cmp32.i.i, label %land.lhs.true.i.i, label %lor.lhs.false34.i.i

land.lhs.true.i.i:                                ; preds = %if.then29.i.i
  %11 = load i32, ptr %call30.i.i, align 4, !tbaa !9
  %tobool.not.i.i = icmp eq i32 %11, 0
  %st_uid.i.i = getelementptr inbounds %struct.stat, ptr %dest_sb.i.i, i64 0, i32 4
  %12 = load i32, ptr %st_uid.i.i, align 4
  %cmp35.not.i.i = icmp eq i32 %12, -1
  %or.cond.i.i = select i1 %tobool.not.i.i, i1 %cmp35.not.i.i, i1 false
  br i1 %or.cond.i.i, label %if.end42.i.i, label %need_copy.exit.thread.i

lor.lhs.false34.i.i:                              ; preds = %if.then29.i.i
  %st_uid.old.i.i = getelementptr inbounds %struct.stat, ptr %dest_sb.i.i, i64 0, i32 4
  %.old.i.i = load i32, ptr %st_uid.old.i.i, align 4, !tbaa !62
  %cmp35.not.old.i.i = icmp eq i32 %.old.i.i, %call31.i.i
  br i1 %cmp35.not.old.i.i, label %if.end42.i.i, label %need_copy.exit.thread.i

if.else.i.i:                                      ; preds = %if.end27.i.i
  %st_uid38.i.i = getelementptr inbounds %struct.stat, ptr %dest_sb.i.i, i64 0, i32 4
  %13 = load i32, ptr %st_uid38.i.i, align 4, !tbaa !62
  %cmp39.not.i.i = icmp eq i32 %13, %10
  br i1 %cmp39.not.i.i, label %if.end42.i.i, label %need_copy.exit.thread.i

if.end42.i.i:                                     ; preds = %if.else.i.i, %lor.lhs.false34.i.i, %land.lhs.true.i.i
  %14 = load i32, ptr @group_id, align 4, !tbaa !9
  %cmp43.i.i = icmp eq i32 %14, -1
  br i1 %cmp43.i.i, label %if.then44.i.i, label %if.else58.i.i

if.then44.i.i:                                    ; preds = %if.end42.i.i
  %call45.i.i = tail call ptr @__errno_location() #19
  store i32 0, ptr %call45.i.i, align 4, !tbaa !9
  %call46.i.i = call i32 @getgid() #15
  %cmp47.i.i = icmp eq i32 %call46.i.i, -1
  br i1 %cmp47.i.i, label %land.lhs.true48.i.i, label %lor.lhs.false51.i.i

land.lhs.true48.i.i:                              ; preds = %if.then44.i.i
  %15 = load i32, ptr %call45.i.i, align 4, !tbaa !9
  %tobool50.not.i.i = icmp eq i32 %15, 0
  %st_gid.i.i = getelementptr inbounds %struct.stat, ptr %dest_sb.i.i, i64 0, i32 5
  %16 = load i32, ptr %st_gid.i.i, align 8
  %cmp52.not.i.i = icmp eq i32 %16, -1
  %or.cond123.i.i = select i1 %tobool50.not.i.i, i1 %cmp52.not.i.i, i1 false
  br i1 %or.cond123.i.i, label %if.end63.i.i, label %need_copy.exit.thread.i

lor.lhs.false51.i.i:                              ; preds = %if.then44.i.i
  %st_gid.old.i.i = getelementptr inbounds %struct.stat, ptr %dest_sb.i.i, i64 0, i32 5
  %.old122.i.i = load i32, ptr %st_gid.old.i.i, align 8, !tbaa !63
  %cmp52.not.old.i.i = icmp eq i32 %.old122.i.i, %call46.i.i
  br i1 %cmp52.not.old.i.i, label %if.end63.i.i, label %need_copy.exit.thread.i

if.else58.i.i:                                    ; preds = %if.end42.i.i
  %st_gid59.i.i = getelementptr inbounds %struct.stat, ptr %dest_sb.i.i, i64 0, i32 5
  %17 = load i32, ptr %st_gid59.i.i, align 8, !tbaa !63
  %cmp60.not.i.i = icmp eq i32 %17, %14
  br i1 %cmp60.not.i.i, label %if.end63.i.i, label %need_copy.exit.thread.i

if.end63.i.i:                                     ; preds = %if.else58.i.i, %lor.lhs.false51.i.i, %land.lhs.true48.i.i
  %18 = load i32, ptr @selinux_enabled, align 4, !tbaa !9
  %tobool64.not.i.i = icmp eq i32 %18, 0
  br i1 %tobool64.not.i.i, label %if.end86.i.i, label %land.lhs.true65.i.i

land.lhs.true65.i.i:                              ; preds = %if.end63.i.i
  %preserve_security_context.i.i = getelementptr inbounds %struct.cp_options, ptr %x, i64 0, i32 24
  %19 = load i8, ptr %preserve_security_context.i.i, align 1, !tbaa !37, !range !45, !noundef !46
  %tobool66.not.i.i = icmp eq i8 %19, 0
  br i1 %tobool66.not.i.i, label %if.end86.i.i, label %if.then67.i.i

if.then67.i.i:                                    ; preds = %land.lhs.true65.i.i
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %file_scontext_raw.i.i) #15
  store ptr null, ptr %file_scontext_raw.i.i, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %to_scontext_raw.i.i) #15
  store ptr null, ptr %to_scontext_raw.i.i, align 8, !tbaa !5
  %call68.i.i = call i32 @rpl_getfilecon_raw(ptr noundef %from, ptr noundef nonnull %file_scontext_raw.i.i) #15
  %cmp69.i.i = icmp eq i32 %call68.i.i, -1
  br i1 %cmp69.i.i, label %cleanup101.critedge.i.i, label %if.end71.i.i

if.end71.i.i:                                     ; preds = %if.then67.i.i
  %call72.i.i = call i32 @rpl_getfilecon_raw(ptr noundef %to, ptr noundef nonnull %to_scontext_raw.i.i) #15
  %cmp73.i.i = icmp eq i32 %call72.i.i, -1
  %20 = load ptr, ptr %file_scontext_raw.i.i, align 8, !tbaa !5
  br i1 %cmp73.i.i, label %if.then74.i.i, label %if.end75.i.i

if.then74.i.i:                                    ; preds = %if.end71.i.i
  call void @freecon(ptr noundef %20) #15
  br label %cleanup101.critedge.i.i

if.end75.i.i:                                     ; preds = %if.end71.i.i
  %21 = load ptr, ptr %to_scontext_raw.i.i, align 8, !tbaa !5
  %call76.i.i = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %20, ptr noundef nonnull dereferenceable(1) %21) #16
  %cmp77.i.i = icmp eq i32 %call76.i.i, 0
  call void @freecon(ptr noundef %20) #15
  %22 = load ptr, ptr %to_scontext_raw.i.i, align 8, !tbaa !5
  call void @freecon(ptr noundef %22) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %to_scontext_raw.i.i) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %file_scontext_raw.i.i) #15
  br i1 %cmp77.i.i, label %if.end86.i.i, label %need_copy.exit.thread.i

if.end86.i.i:                                     ; preds = %if.end75.i.i, %land.lhs.true65.i.i, %if.end63.i.i
  %call87.i.i = call i32 (ptr, i32, ...) @open(ptr noundef %from, i32 noundef 0) #15
  %cmp88.i.i = icmp slt i32 %call87.i.i, 0
  br i1 %cmp88.i.i, label %need_copy.exit.thread.i, label %if.end90.i.i

if.end90.i.i:                                     ; preds = %if.end86.i.i
  %call91.i.i = call i32 (i32, ptr, i32, ...) @openat(i32 noundef %to_dirfd, ptr noundef %to_relname, i32 noundef 0) #15
  %cmp92.i.i = icmp slt i32 %call91.i.i, 0
  br i1 %cmp92.i.i, label %if.then93.i.i, label %need_copy.exit.i

if.then93.i.i:                                    ; preds = %if.end90.i.i
  %call94.i.i = call i32 @close(i32 noundef %call87.i.i) #15
  br label %need_copy.exit.thread.i

cleanup101.critedge.i.i:                          ; preds = %if.then74.i.i, %if.then67.i.i
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %to_scontext_raw.i.i) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %file_scontext_raw.i.i) #15
  br label %need_copy.exit.thread.i

need_copy.exit.thread.i:                          ; preds = %cleanup101.critedge.i.i, %if.then93.i.i, %if.end86.i.i, %if.end75.i.i, %if.else58.i.i, %lor.lhs.false51.i.i, %land.lhs.true48.i.i, %if.else.i.i, %lor.lhs.false34.i.i, %land.lhs.true.i.i, %lor.lhs.false22.i.i, %if.end19.i.i, %lor.lhs.false.i.i, %if.end7.i.i, %if.end3.i.i, %if.end.i.i, %land.lhs.true.i
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %dest_sb.i.i) #15
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %src_sb.i.i) #15
  br label %copy_file.exit

need_copy.exit.i:                                 ; preds = %if.end90.i.i
  %call96.i.i = call fastcc zeroext i1 @have_same_content(i32 noundef %call87.i.i, i32 noundef %call91.i.i)
  %call98.i.i = call i32 @close(i32 noundef %call87.i.i) #15
  %call99.i.i = call i32 @close(i32 noundef %call91.i.i) #15
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %dest_sb.i.i) #15
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %src_sb.i.i) #15
  br i1 %call96.i.i, label %copy_file.exit.thread, label %copy_file.exit

copy_file.exit.thread:                            ; preds = %need_copy.exit.i
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %copy_into_self.i) #15
  br label %if.end6

copy_file.exit:                                   ; preds = %need_copy.exit.i, %need_copy.exit.thread.i, %if.end
  %call1.i = call zeroext i1 @copy(ptr noundef %from, ptr noundef %to, i32 noundef %to_dirfd, ptr noundef %to_relname, i32 noundef 0, ptr noundef nonnull %x, ptr noundef nonnull %copy_into_self.i, ptr noundef null) #15
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %copy_into_self.i) #15
  br i1 %call1.i, label %if.end6, label %cleanup

if.end6:                                          ; preds = %copy_file.exit, %copy_file.exit.thread
  %.b4445 = load i1, ptr @strip_files, align 1
  br i1 %.b4445, label %if.then8, label %if.end19

if.then8:                                         ; preds = %if.end6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %status.i) #15
  %call.i = call i32 @fork() #15
  switch i32 %call.i, label %sw.default.i [
    i32 -1, label %if.then10.sink.split
    i32 0, label %sw.bb3.i
  ]

sw.bb3.i:                                         ; preds = %if.then8
  %tobool.not.i = icmp eq ptr %to, null
  br i1 %tobool.not.i, label %if.end.i48, label %land.lhs.true.i47

land.lhs.true.i47:                                ; preds = %sw.bb3.i
  %23 = load i8, ptr %to, align 1, !tbaa !54
  %cmp.i = icmp eq i8 %23, 45
  br i1 %cmp.i, label %if.then.i, label %if.end.i48

if.then.i:                                        ; preds = %land.lhs.true.i47
  %call5.i = call noalias nonnull ptr @file_name_concat(ptr noundef nonnull @.str.85, ptr noundef nonnull %to, ptr noundef null) #15
  br label %if.end.i48

if.end.i48:                                       ; preds = %if.then.i, %land.lhs.true.i47, %sw.bb3.i
  %safe_name.0.i = phi ptr [ %call5.i, %if.then.i ], [ %to, %land.lhs.true.i47 ], [ null, %sw.bb3.i ]
  %24 = load ptr, ptr @strip_program, align 8, !tbaa !5
  %call6.i = call i32 (ptr, ptr, ...) @execlp(ptr noundef %24, ptr noundef %24, ptr noundef %safe_name.0.i, ptr noundef null) #15
  %call7.i = tail call ptr @__errno_location() #19
  %25 = load i32, ptr %call7.i, align 4, !tbaa !9
  %call8.i = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.86, i32 noundef 5) #15
  %26 = load ptr, ptr @strip_program, align 8, !tbaa !5
  %call9.i = call ptr @quotearg_style(i32 noundef 4, ptr noundef %26) #15
  call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %25, ptr noundef %call8.i, ptr noundef %call9.i) #18
  unreachable

sw.default.i:                                     ; preds = %if.then8
  %call10.i = call i32 @waitpid(i32 noundef %call.i, ptr noundef nonnull %status.i, i32 noundef 0) #15
  %cmp11.i = icmp slt i32 %call10.i, 0
  br i1 %cmp11.i, label %if.then10.sink.split, label %if.else.i

if.else.i:                                        ; preds = %sw.default.i
  %27 = load i32, ptr %status.i, align 4, !tbaa !9
  %28 = and i32 %27, 65407
  %or.cond.i = icmp eq i32 %28, 0
  br i1 %or.cond.i, label %strip.exit, label %if.then10

strip.exit:                                       ; preds = %if.else.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %status.i) #15
  br label %if.end19

if.then10.sink.split:                             ; preds = %sw.default.i, %if.then8
  %.str.87.sink.ph = phi ptr [ @.str.84, %if.then8 ], [ @.str.87, %sw.default.i ]
  %call14.i = tail call ptr @__errno_location() #19
  %29 = load i32, ptr %call14.i, align 4, !tbaa !9
  br label %if.then10

if.then10:                                        ; preds = %if.then10.sink.split, %if.else.i
  %.str.87.sink = phi ptr [ @.str.88, %if.else.i ], [ %.str.87.sink.ph, %if.then10.sink.split ]
  %.sink = phi i32 [ 0, %if.else.i ], [ %29, %if.then10.sink.split ]
  %call15.i = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull %.str.87.sink, i32 noundef 5) #15
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %.sink, ptr noundef %call15.i) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %status.i) #15
  %call11 = call i32 @unlinkat(i32 noundef %to_dirfd, ptr noundef %to_relname, i32 noundef 0) #15
  %cmp12.not = icmp eq i32 %call11, 0
  br i1 %cmp12.not, label %cleanup, label %if.then13

if.then13:                                        ; preds = %if.then10
  %call14 = tail call ptr @__errno_location() #19
  %30 = load i32, ptr %call14, align 4, !tbaa !9
  %call15 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.83, i32 noundef 5) #15
  %call16 = call ptr @quotearg_style(i32 noundef 4, ptr noundef %to) #15
  call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %30, ptr noundef %call15, ptr noundef %call16) #18
  unreachable

if.end19:                                         ; preds = %strip.exit, %if.end6
  %31 = load i8, ptr %preserve_timestamps, align 1, !tbaa !44, !range !45, !noundef !46
  %tobool21.not = icmp eq i8 %31, 0
  br i1 %tobool21.not, label %if.end28, label %land.lhs.true22

land.lhs.true22:                                  ; preds = %if.end19
  %.b46 = load i1, ptr @strip_files, align 1
  br i1 %.b46, label %land.lhs.true25, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true22
  %st_mode = getelementptr inbounds %struct.stat, ptr %from_sb, i64 0, i32 3
  %32 = load i32, ptr %st_mode, align 8, !tbaa !57
  %and = and i32 %32, 61440
  %cmp24 = icmp eq i32 %and, 32768
  br i1 %cmp24, label %if.end28, label %land.lhs.true25

land.lhs.true25:                                  ; preds = %lor.lhs.false, %land.lhs.true22
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %timespec.i) #15
  %st_atim.i.i = getelementptr inbounds %struct.stat, ptr %from_sb, i64 0, i32 11
  %33 = load <2 x i64>, ptr %st_atim.i.i, align 8, !tbaa !64
  store <2 x i64> %33, ptr %timespec.i, align 16, !tbaa !64
  %arrayidx1.i = getelementptr inbounds [2 x %struct.timespec], ptr %timespec.i, i64 0, i64 1
  %st_mtim.i.i = getelementptr inbounds %struct.stat, ptr %from_sb, i64 0, i32 12
  %34 = load <2 x i64>, ptr %st_mtim.i.i, align 8, !tbaa !64
  store <2 x i64> %34, ptr %arrayidx1.i, align 16, !tbaa !64
  %call4.i = call i32 @utimensat(i32 noundef %to_dirfd, ptr noundef %to_relname, ptr noundef nonnull %timespec.i, i32 noundef 0) #15
  %tobool.not.i50 = icmp eq i32 %call4.i, 0
  br i1 %tobool.not.i50, label %change_timestamps.exit.thread, label %change_timestamps.exit

change_timestamps.exit.thread:                    ; preds = %land.lhs.true25
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %timespec.i) #15
  br label %if.end28

change_timestamps.exit:                           ; preds = %land.lhs.true25
  %call5.i52 = tail call ptr @__errno_location() #19
  %35 = load i32, ptr %call5.i52, align 4, !tbaa !9
  %call6.i53 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.89, i32 noundef 5) #15
  %call7.i54 = call ptr @quotearg_style(i32 noundef 4, ptr noundef %to) #15
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %35, ptr noundef %call6.i53, ptr noundef %call7.i54) #18
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %timespec.i) #15
  br label %cleanup

if.end28:                                         ; preds = %change_timestamps.exit.thread, %lor.lhs.false, %if.end19
  %36 = load i32, ptr @owner_id, align 4, !tbaa !9
  %cmp.i55 = icmp eq i32 %36, -1
  %37 = load i32, ptr @group_id, align 4
  %cmp1.i = icmp eq i32 %37, -1
  %or.cond.i56 = select i1 %cmp.i55, i1 %cmp1.i, i1 false
  br i1 %or.cond.i56, label %if.else.i65, label %land.lhs.true2.i

land.lhs.true2.i:                                 ; preds = %if.end28
  %call.i.i = call i32 @fchownat(i32 noundef %to_dirfd, ptr noundef %to_relname, i32 noundef %36, i32 noundef %37, i32 noundef 256) #15
  %cmp3.not.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp3.not.i, label %if.else.i65, label %if.end14.sink.split.i

if.else.i65:                                      ; preds = %land.lhs.true2.i, %if.end28
  %38 = load i32, ptr @mode, align 4, !tbaa !9
  %call.i22.i = call i32 @fchmodat(i32 noundef %to_dirfd, ptr noundef %to_relname, i32 noundef %38, i32 noundef 0) #15
  %cmp8.not.i = icmp eq i32 %call.i22.i, 0
  br i1 %cmp8.not.i, label %if.end14.i, label %if.end14.sink.split.i

if.end14.sink.split.i:                            ; preds = %if.else.i65, %land.lhs.true2.i
  %.str.91.sink.i = phi ptr [ @.str.90, %land.lhs.true2.i ], [ @.str.91, %if.else.i65 ]
  %call10.i57 = tail call ptr @__errno_location() #19
  %39 = load i32, ptr %call10.i57, align 4, !tbaa !9
  %call11.i = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull %.str.91.sink.i, i32 noundef 5) #15
  %call12.i = call ptr @quotearg_style(i32 noundef 4, ptr noundef %to) #15
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %39, ptr noundef %call11.i, ptr noundef %call12.i) #18
  br label %if.end14.i

if.end14.i:                                       ; preds = %if.end14.sink.split.i, %if.else.i65
  %ok.0.i58 = phi i1 [ true, %if.else.i65 ], [ false, %if.end14.sink.split.i ]
  %.b.i = load i1, ptr @use_default_selinux_context, align 1
  br i1 %.b.i, label %cleanup, label %if.then15.i

if.then15.i:                                      ; preds = %if.end14.i
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %st.i.i) #15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %scontext_raw.i.i) #15
  store ptr null, ptr %scontext_raw.i.i, align 8, !tbaa !5
  %40 = load i32, ptr @selinux_enabled, align 4, !tbaa !9
  %cmp.not.i.i59 = icmp eq i32 %40, 1
  br i1 %cmp.not.i.i59, label %if.end.i.i60, label %setdefaultfilecon.exit.i

if.end.i.i60:                                     ; preds = %if.then15.i
  %call.i23.i = call i32 @lstat(ptr noundef %to, ptr noundef nonnull %st.i.i) #15
  %cmp1.not.i.i = icmp eq i32 %call.i23.i, 0
  br i1 %cmp1.not.i.i, label %if.end3.i.i61, label %setdefaultfilecon.exit.i

if.end3.i.i61:                                    ; preds = %if.end.i.i60
  %.b6.i.i.i = load i1, ptr @get_labeling_handle.initialized, align 1
  br i1 %.b6.i.i.i, label %get_labeling_handle.exit.i.i, label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %if.end3.i.i61
  store i1 true, ptr @get_labeling_handle.initialized, align 1
  %call.i.i.i = call ptr @selabel_open(i32 noundef 0, ptr noundef null, i32 noundef 0) #15
  store ptr %call.i.i.i, ptr @get_labeling_handle.hnd, align 8, !tbaa !5
  %tobool1.not.i.i.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool1.not.i.i.i, label %if.then2.i.i.i, label %if.end6.i.i

if.then2.i.i.i:                                   ; preds = %if.then.i.i.i
  %call3.i.i.i = tail call ptr @__errno_location() #19
  %41 = load i32, ptr %call3.i.i.i, align 4, !tbaa !9
  %call4.i.i.i = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.75, i32 noundef 5) #15
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %41, ptr noundef %call4.i.i.i) #18
  br label %get_labeling_handle.exit.i.i

get_labeling_handle.exit.i.i:                     ; preds = %if.then2.i.i.i, %if.end3.i.i61
  %.pr.i.i = load ptr, ptr @get_labeling_handle.hnd, align 8, !tbaa !5
  %tobool.not.i.i64 = icmp eq ptr %.pr.i.i, null
  br i1 %tobool.not.i.i64, label %setdefaultfilecon.exit.i, label %if.end6.i.i

if.end6.i.i:                                      ; preds = %get_labeling_handle.exit.i.i, %if.then.i.i.i
  %42 = phi ptr [ %.pr.i.i, %get_labeling_handle.exit.i.i ], [ %call.i.i.i, %if.then.i.i.i ]
  %st_mode.i.i62 = getelementptr inbounds %struct.stat, ptr %st.i.i, i64 0, i32 3
  %43 = load i32, ptr %st_mode.i.i62, align 8, !tbaa !57
  %call7.i.i = call i32 @selabel_lookup_raw(ptr noundef nonnull %42, ptr noundef nonnull %scontext_raw.i.i, ptr noundef %to, i32 noundef %43) #15
  %cmp8.not.i.i = icmp eq i32 %call7.i.i, 0
  br i1 %cmp8.not.i.i, label %if.end19.i.i63, label %if.then9.i.i

if.then9.i.i:                                     ; preds = %if.end6.i.i
  %call10.i.i = tail call ptr @__errno_location() #19
  %44 = load i32, ptr %call10.i.i, align 4, !tbaa !9
  switch i32 %44, label %if.then14.i.i [
    i32 2, label %setdefaultfilecon.exit.i
    i32 95, label %setdefaultfilecon.exit.i
    i32 61, label %setdefaultfilecon.exit.i
  ]

if.then14.i.i:                                    ; preds = %if.then9.i.i
  %call16.i.i = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.92, i32 noundef 5) #15
  %call17.i.i = call ptr @quotearg_n_style_colon(i32 noundef 0, i32 noundef 3, ptr noundef %to) #15
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %44, ptr noundef %call16.i.i, ptr noundef %call17.i.i) #18
  br label %setdefaultfilecon.exit.i

if.end19.i.i63:                                   ; preds = %if.end6.i.i
  %45 = load ptr, ptr %scontext_raw.i.i, align 8, !tbaa !5
  %call20.i.i = call i32 @lsetfilecon_raw(ptr noundef %to, ptr noundef %45) #15
  %cmp21.i.i = icmp slt i32 %call20.i.i, 0
  br i1 %cmp21.i.i, label %land.lhs.true22.i.i, label %if.end30.i.i

land.lhs.true22.i.i:                              ; preds = %if.end19.i.i63
  %call23.i.i = tail call ptr @__errno_location() #19
  %46 = load i32, ptr %call23.i.i, align 4, !tbaa !9
  %cmp24.not.i.i = icmp eq i32 %46, 95
  br i1 %cmp24.not.i.i, label %if.end30.i.i, label %if.then25.i.i

if.then25.i.i:                                    ; preds = %land.lhs.true22.i.i
  %call27.i.i = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.93, i32 noundef 5) #15
  %call28.i.i = call ptr @quotearg_n_style_colon(i32 noundef 0, i32 noundef 3, ptr noundef %to) #15
  %47 = load ptr, ptr %scontext_raw.i.i, align 8, !tbaa !5
  %call29.i.i = call ptr @quote_n(i32 noundef 1, ptr noundef %47) #15
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %46, ptr noundef %call27.i.i, ptr noundef %call28.i.i, ptr noundef %call29.i.i) #18
  br label %if.end30.i.i

if.end30.i.i:                                     ; preds = %if.then25.i.i, %land.lhs.true22.i.i, %if.end19.i.i63
  %48 = load ptr, ptr %scontext_raw.i.i, align 8, !tbaa !5
  call void @freecon(ptr noundef %48) #15
  br label %setdefaultfilecon.exit.i

setdefaultfilecon.exit.i:                         ; preds = %if.end30.i.i, %if.then14.i.i, %if.then9.i.i, %if.then9.i.i, %if.then9.i.i, %get_labeling_handle.exit.i.i, %if.end.i.i60, %if.then15.i
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %scontext_raw.i.i) #15
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %st.i.i) #15
  br label %cleanup

cleanup:                                          ; preds = %setdefaultfilecon.exit.i, %if.end14.i, %change_timestamps.exit, %if.then10, %copy_file.exit, %if.then
  %retval.0 = phi i1 [ false, %if.then ], [ false, %copy_file.exit ], [ false, %if.then10 ], [ false, %change_timestamps.exit ], [ %ok.0.i58, %if.end14.i ], [ %ok.0.i58, %setdefaultfilecon.exit.i ]
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %from_sb) #15
  ret i1 %retval.0
}

declare void @dest_info_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare ptr @last_component(ptr noundef) local_unnamed_addr #11

declare noalias nonnull ptr @file_name_concat(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree
declare noundef i32 @open(ptr nocapture noundef readonly, i32 noundef, ...) local_unnamed_addr #13

; Function Attrs: nofree nounwind
declare noundef i32 @stat(ptr nocapture noundef readonly, ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare i32 @fstatat(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare i32 @getuid() local_unnamed_addr #1

; Function Attrs: nounwind
declare i32 @getgid() local_unnamed_addr #1

declare i32 @rpl_getfilecon_raw(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @freecon(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #4

declare i32 @openat(i32 noundef, ptr noundef, i32 noundef, ...) local_unnamed_addr #2

declare i32 @close(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i1 @have_same_content(i32 noundef %a_fd, i32 noundef %b_fd) unnamed_addr #6 {
entry:
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %call = tail call i64 @full_read(i32 noundef %a_fd, ptr noundef nonnull @have_same_content.a_buff, i64 noundef 4096) #15
  %cmp = icmp sgt i64 %call, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %call1 = tail call i64 @full_read(i32 noundef %b_fd, ptr noundef nonnull @have_same_content.b_buff, i64 noundef 4096) #15
  %cmp2.not = icmp eq i64 %call, %call1
  br i1 %cmp2.not, label %if.end, label %cleanup

if.end:                                           ; preds = %while.body
  %bcmp = tail call i32 @bcmp(ptr nonnull @have_same_content.a_buff, ptr nonnull @have_same_content.b_buff, i64 %call)
  %cmp4.not = icmp eq i32 %bcmp, 0
  br i1 %cmp4.not, label %while.cond, label %cleanup, !llvm.loop !65

while.end:                                        ; preds = %while.cond
  %cmp7 = icmp eq i64 %call, 0
  br label %cleanup

cleanup:                                          ; preds = %while.end, %if.end, %while.body
  %retval.0 = phi i1 [ %cmp7, %while.end ], [ false, %while.body ], [ false, %if.end ]
  ret i1 %retval.0
}

declare zeroext i1 @copy(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare i32 @fork() local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare i32 @execlp(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

declare i32 @waitpid(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @unlinkat(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare i32 @utimensat(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare i32 @fchownat(i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare i32 @fchmodat(i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare noundef i32 @lstat(ptr nocapture noundef readonly, ptr nocapture noundef) local_unnamed_addr #3

declare i32 @selabel_lookup_raw(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @quotearg_n_style_colon(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @lsetfilecon_raw(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @quote_n(i32 noundef, ptr noundef) local_unnamed_addr #2

declare i64 @full_read(i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #14

declare void @savewd_finish(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal noundef i32 @make_ancestor(ptr noundef %dir, ptr noundef %component, ptr nocapture noundef readonly %options) #6 {
entry:
  %set_security_context = getelementptr inbounds %struct.cp_options, ptr %options, i64 0, i32 20
  %0 = load ptr, ptr %set_security_context, align 8, !tbaa !38
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %call = tail call i32 @defaultcon(ptr noundef nonnull %0, ptr noundef %component, i32 noundef 16384) #15
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %land.lhs.true2, label %if.end

land.lhs.true2:                                   ; preds = %land.lhs.true
  %call3 = tail call ptr @__errno_location() #19
  %1 = load i32, ptr %call3, align 4, !tbaa !9
  switch i32 %1, label %if.then [
    i32 95, label %if.end
    i32 61, label %if.end
  ]

if.then:                                          ; preds = %land.lhs.true2
  %call6 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.79, i32 noundef 5) #15
  %call7 = tail call ptr @quotearg_style(i32 noundef 4, ptr noundef %dir) #15
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %1, ptr noundef %call6, ptr noundef %call7) #18
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true2, %land.lhs.true2, %land.lhs.true, %entry
  %call8 = tail call i32 @mkdir(ptr noundef %component, i32 noundef 493) #15
  %cmp9 = icmp eq i32 %call8, 0
  br i1 %cmp9, label %if.then10, label %if.end11

if.then10:                                        ; preds = %if.end
  %verbose.i = getelementptr inbounds %struct.cp_options, ptr %options, i64 0, i32 33
  %2 = load i8, ptr %verbose.i, align 8, !tbaa !40, !range !45, !noundef !46
  %tobool.not.i = icmp eq i8 %2, 0
  br i1 %tobool.not.i, label %if.end11, label %if.then.i

if.then.i:                                        ; preds = %if.then10
  %3 = load ptr, ptr @stdout, align 8, !tbaa !5
  %call.i = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.80, i32 noundef 5) #15
  %call1.i = tail call ptr @quotearg_style(i32 noundef 4, ptr noundef %dir) #15
  tail call void (ptr, ptr, ...) @prog_fprintf(ptr noundef %3, ptr noundef %call.i, ptr noundef %call1.i) #15
  br label %if.end11

if.end11:                                         ; preds = %if.then.i, %if.then10, %if.end
  ret i32 %call8
}

declare i64 @mkancesdirs(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @savewd_restore(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @defaultcon(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @mkdir(ptr nocapture noundef readonly, i32 noundef) local_unnamed_addr #3

declare void @prog_fprintf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal void @announce_mkdir(ptr noundef %dir, ptr nocapture noundef readonly %options) #6 {
entry:
  %verbose = getelementptr inbounds %struct.cp_options, ptr %options, i64 0, i32 33
  %0 = load i8, ptr %verbose, align 8, !tbaa !40, !range !45, !noundef !46
  %tobool.not = icmp eq i8 %0, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr @stdout, align 8, !tbaa !5
  %call = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.80, i32 noundef 5) #15
  %call1 = tail call ptr @quotearg_style(i32 noundef 4, ptr noundef %dir) #15
  tail call void (ptr, ptr, ...) @prog_fprintf(ptr noundef %1, ptr noundef %call, ptr noundef %call1) #15
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare zeroext i1 @make_dir_parents(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

declare zeroext i1 @restorecon(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

attributes #0 = { noreturn nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #9 = { cold "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nofree nounwind willreturn memory(argmem: read) }
attributes #15 = { nounwind }
attributes #16 = { nounwind willreturn memory(read) }
attributes #17 = { noreturn nounwind }
attributes #18 = { cold nounwind }
attributes #19 = { nounwind willreturn memory(none) }
attributes #20 = { noreturn }

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
!11 = !{!12, !13, i64 20, i64 1}
!12 = !{!7, i64 96, !"cp_options", !10, i64 0, i64 4, !10, i64 4, i64 4, !10, i64 8, i64 4, !10, i64 12, i64 4, !10, i64 16, i64 4, !13, i64 20, i64 1, !13, i64 21, i64 1, !13, i64 22, i64 1, !13, i64 23, i64 1, !13, i64 24, i64 1, !13, i64 25, i64 1, !13, i64 26, i64 1, !13, i64 27, i64 1, !13, i64 28, i64 1, !13, i64 29, i64 1, !13, i64 30, i64 1, !13, i64 31, i64 1, !13, i64 32, i64 1, !13, i64 33, i64 1, !13, i64 34, i64 1, !6, i64 40, i64 8, !13, i64 48, i64 1, !13, i64 49, i64 1, !13, i64 50, i64 1, !13, i64 51, i64 1, !13, i64 52, i64 1, !13, i64 53, i64 1, !13, i64 54, i64 1, !13, i64 55, i64 1, !13, i64 56, i64 1, !13, i64 57, i64 1, !13, i64 58, i64 1, !10, i64 60, i64 4, !13, i64 64, i64 1, !13, i64 65, i64 1, !13, i64 66, i64 1, !13, i64 67, i64 1, !13, i64 68, i64 1, !13, i64 69, i64 1, !10, i64 72, i64 4, !10, i64 76, i64 4, !6, i64 80, i64 8, !6, i64 88, i64 8}
!13 = !{!7, i64 1, !"_Bool"}
!14 = !{!12, !10, i64 76, i64 4}
!15 = !{!12, !10, i64 4, i64 4}
!16 = !{!12, !13, i64 21, i64 1}
!17 = !{!12, !13, i64 22, i64 1}
!18 = !{!12, !13, i64 23, i64 1}
!19 = !{!12, !10, i64 8, i64 4}
!20 = !{!12, !13, i64 24, i64 1}
!21 = !{!12, !13, i64 27, i64 1}
!22 = !{!12, !13, i64 48, i64 1}
!23 = !{!12, !13, i64 55, i64 1}
!24 = !{!12, !13, i64 49, i64 1}
!25 = !{!12, !13, i64 50, i64 1}
!26 = !{!12, !13, i64 54, i64 1}
!27 = !{!12, !13, i64 56, i64 1}
!28 = !{!12, !10, i64 12, i64 4}
!29 = !{!12, !13, i64 58, i64 1}
!30 = !{!12, !10, i64 0, i64 4}
!31 = !{!12, !13, i64 57, i64 1}
!32 = !{!12, !10, i64 16, i64 4}
!33 = !{!12, !13, i64 67, i64 1}
!34 = !{!12, !13, i64 68, i64 1}
!35 = !{!12, !10, i64 60, i64 4}
!36 = !{!12, !13, i64 52, i64 1}
!37 = !{!12, !13, i64 51, i64 1}
!38 = !{!12, !6, i64 40, i64 8}
!39 = !{!12, !13, i64 53, i64 1}
!40 = !{!12, !13, i64 64, i64 1}
!41 = distinct !{!41, !42}
!42 = !{!"llvm.loop.mustprogress"}
!43 = !{!12, !13, i64 66, i64 1}
!44 = !{!12, !13, i64 33, i64 1}
!45 = !{i8 0, i8 2}
!46 = !{}
!47 = !{!48, !10, i64 16, i64 4}
!48 = !{!7, i64 48, !"passwd", !6, i64 0, i64 8, !6, i64 8, i64 8, !10, i64 16, i64 4, !10, i64 20, i64 4, !6, i64 24, i64 8, !6, i64 32, i64 8, !6, i64 40, i64 8}
!49 = !{!50, !10, i64 16, i64 4}
!50 = !{!7, i64 32, !"group", !6, i64 0, i64 8, !6, i64 8, i64 8, !10, i64 16, i64 4, !6, i64 24, i64 8}
!51 = distinct !{!51, !42}
!52 = distinct !{!52, !42, !53}
!53 = !{!"llvm.loop.peeled.count", i32 1}
!54 = !{!7, !7, i64 0, i64 1}
!55 = !{!56, !10, i64 0, i64 4}
!56 = !{!7, i64 8, !"savewd", !10, i64 0, i64 4, !7, i64 4, i64 4}
!57 = !{!58, !10, i64 24, i64 4}
!58 = !{!7, i64 144, !"stat", !59, i64 0, i64 8, !59, i64 8, i64 8, !59, i64 16, i64 8, !10, i64 24, i64 4, !10, i64 28, i64 4, !10, i64 32, i64 4, !10, i64 36, i64 4, !59, i64 40, i64 8, !59, i64 48, i64 8, !59, i64 56, i64 8, !59, i64 64, i64 8, !60, i64 72, i64 16, !60, i64 88, i64 16, !60, i64 104, i64 16, !59, i64 120, i64 24}
!59 = !{!7, i64 8, !"long"}
!60 = !{!7, i64 16, !"timespec", !59, i64 0, i64 8, !59, i64 8, i64 8}
!61 = !{!58, !59, i64 48, i64 8}
!62 = !{!58, !10, i64 28, i64 4}
!63 = !{!58, !10, i64 32, i64 4}
!64 = !{!60, !60, i64 0, i64 16}
!65 = distinct !{!65, !42}
