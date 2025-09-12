; ModuleID = 'llvm-link'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.option = type { ptr, i32, ptr, i32 }
%struct.quoting_options = type { i32, i32, [8 x i32], ptr, ptr }
%struct.slotvec = type { i64, ptr }
%struct.__mbstate_t = type { i32, %union.anon }
%union.anon = type { i32 }
%union.YYSTYPE = type { %struct.relative_time }
%struct.relative_time = type { i64, i64, i64, i64, i64, i64, i32 }
%struct.table = type { ptr, i32, i32 }
%struct.__va_list_tag = type { i32, i32, ptr, ptr }
%struct._IO_FILE = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, [1 x i8], ptr, i64, ptr, ptr, ptr, ptr, i64, i32, [20 x i8] }
%struct.arguments = type { i64, ptr, [7 x %struct.argument] }
%struct.argument = type { i32, %union.anon.1 }
%union.anon.1 = type { x86_fp80 }
%struct.char_directives = type { i64, ptr, i64, i64, [7 x %struct.char_directive] }
%struct.char_directive = type { ptr, ptr, i32, ptr, ptr, i64, ptr, ptr, i64, i8, i64 }
%struct.parser_control = type { ptr, i64, i32, i32, i32, i32, %struct.textint, i64, i64, i64, i64, %struct.timespec, %struct.relative_time, i8, i8, i64, i64, i64, i64, i64, i64, i64, i8, i8, i8, i8, i8, i8, i8, i8, i8, [3 x %struct.table] }
%struct.textint = type { i8, i64, i64 }
%struct.timespec = type { i64, i64 }
%struct.tm = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, ptr }
%struct.mount_entry = type { ptr, ptr, ptr, ptr, i64, i8, ptr }
%struct.mntent = type { ptr, ptr, ptr, ptr, i32, i32 }

@.str = private unnamed_addr constant [39 x i8] c"Try '%s --help' for more information.\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"Usage: %s [OPTION]...\0A\00", align 1
@.str.2 = private unnamed_addr constant [135 x i8] c"Print the file name of the terminal connected to standard input.\0A\0A  -s, --silent, --quiet   print nothing, only return an exit status\0A\00", align 1
@.str.3 = private unnamed_addr constant [48 x i8] c"      --help        display this help and exit\0A\00", align 1
@.str.4 = private unnamed_addr constant [57 x i8] c"      --version     output version information and exit\0A\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"tty\00", align 1
@.str.6 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1
@.str.8 = private unnamed_addr constant [24 x i8] c"/usr/local/share/locale\00", align 1
@silent = internal unnamed_addr global i1 false, align 1
@.str.9 = private unnamed_addr constant [2 x i8] c"s\00", align 1
@longopts = internal constant [5 x %struct.option] [%struct.option { ptr @.str.30, i32 0, ptr null, i32 115 }, %struct.option { ptr @.str.31, i32 0, ptr null, i32 115 }, %struct.option { ptr @.str.32, i32 0, ptr null, i32 -130 }, %struct.option { ptr @.str.33, i32 0, ptr null, i32 -131 }, %struct.option zeroinitializer], align 16
@.str.10 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@Version = external local_unnamed_addr global ptr, align 8
@.str.11 = private unnamed_addr constant [16 x i8] c"David MacKenzie\00", align 1
@optind = external local_unnamed_addr global i32, align 4
@.str.12 = private unnamed_addr constant [17 x i8] c"extra operand %s\00", align 1
@.str.13 = private unnamed_addr constant [10 x i8] c"not a tty\00", align 1
@.str.22 = private unnamed_addr constant [23 x i8] c"\0A%s online help: <%s>\0A\00", align 1
@.str.23 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1
@.str.24 = private unnamed_addr constant [4 x i8] c"en_\00", align 1
@.str.25 = private unnamed_addr constant [71 x i8] c"Report any translation bugs to <https://translationproject.org/team/>\0A\00", align 1
@.str.27 = private unnamed_addr constant [27 x i8] c"Full documentation <%s%s>\0A\00", align 1
@.str.28 = private unnamed_addr constant [51 x i8] c"or available locally via: info '(coreutils) %s%s'\0A\00", align 1
@.str.29 = private unnamed_addr constant [12 x i8] c" invocation\00", align 1
@.str.30 = private unnamed_addr constant [7 x i8] c"silent\00", align 1
@.str.31 = private unnamed_addr constant [6 x i8] c"quiet\00", align 1
@.str.32 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.33 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@.str.14 = private unnamed_addr constant [8 x i8] c"literal\00", align 1
@.str.1.15 = private unnamed_addr constant [6 x i8] c"shell\00", align 1
@.str.2.16 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1
@.str.3.17 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1
@.str.4.18 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1
@.str.5.19 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.6.20 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1
@.str.7.21 = private unnamed_addr constant [7 x i8] c"escape\00", align 1
@.str.8.22 = private unnamed_addr constant [7 x i8] c"locale\00", align 1
@.str.9.23 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1
@quoting_style_args = dso_local local_unnamed_addr constant [11 x ptr] [ptr @.str.14, ptr @.str.1.15, ptr @.str.2.16, ptr @.str.3.17, ptr @.str.4.18, ptr @.str.5.19, ptr @.str.6.20, ptr @.str.7.21, ptr @.str.8.22, ptr @.str.9.23, ptr null], align 16
@quoting_style_vals = dso_local local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 16
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8
@slotvec = internal unnamed_addr global ptr @slotvec0, align 8
@nslots = internal unnamed_addr global i32 1, align 4
@slot0 = internal global [256 x i8] zeroinitializer, align 16
@slotvec0 = internal global %struct.slotvec { i64 256, ptr @slot0 }, align 8
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, ptr null, ptr null }, align 8
@.str.10.26 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.11.24 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.12.25 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.13.27 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@.str.15 = private unnamed_addr constant [4 x i8] c"\E2\80\98\00", align 1
@.str.16 = private unnamed_addr constant [4 x i8] c"\E2\80\99\00", align 1
@.str.18 = private unnamed_addr constant [4 x i8] c"\A1\07e\00", align 1
@.str.19 = private unnamed_addr constant [3 x i8] c"\A1\AF\00", align 1
@file_name = internal unnamed_addr global ptr null, align 8
@ignore_EPIPE = internal unnamed_addr global i8 0, align 1
@.str.34 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@.str.1.35 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.2.36 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.3.37 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.40 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1
@.str.1.41 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1
@version_etc_copyright = external constant [0 x i8], align 1
@.str.2.42 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@.str.3.43 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1
@.str.4.44 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.5.45 = private unnamed_addr constant [171 x i8] c"License GPLv3+: GNU GPL version 3 or later <%s>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\00", align 1
@.str.6.46 = private unnamed_addr constant [34 x i8] c"https://gnu.org/licenses/gpl.html\00", align 1
@.str.7.47 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1
@.str.8.48 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1
@.str.9.49 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1
@.str.10.50 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.11.51 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.12.52 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1
@.str.13.53 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1
@.str.14.54 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.15.55 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.16.56 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1
@.str.17 = private unnamed_addr constant [20 x i8] c"Report bugs to: %s\0A\00", align 1
@.str.18.59 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1
@.str.19.60 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1
@.str.20 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.21 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1
@.str.22.61 = private unnamed_addr constant [39 x i8] c"General help using GNU software: <%s>\0A\00", align 1
@.str.23.62 = private unnamed_addr constant [29 x i8] c"https://www.gnu.org/gethelp/\00", align 1
@error_print_progname = dso_local local_unnamed_addr global ptr null, align 8
@.str.63 = private unnamed_addr constant [5 x i8] c"%s: \00", align 1
@error_one_per_line = dso_local local_unnamed_addr global i32 0, align 4
@verror_at_line.old_file_name = internal unnamed_addr global ptr null, align 8
@verror_at_line.old_line_number = internal unnamed_addr global i32 0, align 4
@.str.1.69 = private unnamed_addr constant [4 x i8] c"%s:\00", align 1
@.str.2.71 = private unnamed_addr constant [8 x i8] c"%s:%u: \00", align 1
@.str.3.70 = private unnamed_addr constant [2 x i8] c" \00", align 1
@error_message_count = dso_local local_unnamed_addr global i32 0, align 4
@stdout = external local_unnamed_addr global ptr, align 8
@.str.4.64 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@.str.5.65 = private unnamed_addr constant [21 x i8] c"Unknown system error\00", align 1
@.str.6.66 = private unnamed_addr constant [5 x i8] c": %s\00", align 1
@.str.1.74 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1
@.str.77 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1.78 = private unnamed_addr constant [6 x i8] c"ASCII\00", align 1
@.str.79 = private unnamed_addr constant [7 x i8] c"(NULL)\00", align 1
@printf_fetchargs.wide_null_string = internal constant [7 x i32] [i32 40, i32 78, i32 85, i32 76, i32 76, i32 41, i32 0], align 16
@.str.82 = private unnamed_addr constant [6 x i8] c"UTF-8\00", align 1
@.str.91 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@internal_state = internal global %struct.__mbstate_t zeroinitializer, align 4
@program_name = dso_local local_unnamed_addr global ptr null, align 8
@.str.96 = private unnamed_addr constant [56 x i8] c"A NULL argv[0] was passed through an exec system call.\0A\00", align 1
@.str.1.97 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1
@.str.2.98 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1
@program_invocation_name = external local_unnamed_addr global ptr, align 8
@program_invocation_short_name = external local_unnamed_addr global ptr, align 8
@.str.115 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1.113 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@.str.2.114 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@yyparse.yyval_default = internal unnamed_addr constant %union.YYSTYPE zeroinitializer, align 8
@yypact = internal unnamed_addr constant [115 x i8] c"\F2\07'\A5%\A5\A5\A5\A5\A5\A5\A5\A5\A5\A5\A5\A5\A5\A5\A5\0E\A5@/C\06R\FCJK\A5L\A5\A5\A5\A5\A5\A5\A5\A5\A5E\A5]\A5\A5\A5\A5\A5\A5OH\A5\A5\A5\A5\A5\A5\A5\A5\1A\A5\A5\A5\A5\A5\A5\A5\A5\A5\A5\A5\A5\A5\A5\A5>\0BPQ\A5\A5\A5\A5\A5S\A5\A5TU\A5\A5\A5\A5\A5-V\F4\A5\A5\A5\A5W\12\A5\A5XYN\A5;\A5\A5\12[", align 16
@yytranslate = internal unnamed_addr constant [278 x i8] c"\00\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\1B\02\02\1C\02\02\02\02\02\02\02\02\02\02\1A\02\02\02\02\02\17\02\02\02\02\02\02\02\02\02\18\02\02\02\02\02\02\02\02\02\19\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\01\02\03\04\05\06\07\08\09\0A\0B\0C\0D\0E\0F\10\11\12\13\14\15\16", align 16
@yycheck = internal unnamed_addr constant [115 x i8] c"\1B\05\06\07\08\09\0A\13\0C\17\04\0F\10g\1A\13\05\06\07\08\09\0A\1Aq\1C\13\13\14\15\16\13\05\06\07\08\09\0A\1A\14\00\16\1B\05\06\07\08\09\0A\0B\0C\0D\0E\1A\10\11\12\13\14\15\16\0F\18\19\19\13\1B\13\14\04\1Fa\1A\05\06\07\08\09\0A\13\0Cl\13\14\09\09\1Ar\05\06\07\08\09\0A\0F\19\13\03\13\13\1B\14\14U\14\14\14<\FF\14\14\13\FF\FF\1A\1C", align 16
@yytable = internal unnamed_addr constant [115 x i8] c"PDEFGHIfJ\01;KLlkM>?@ABCNrO<\05\06\07\08]>?@ABCY\06\0C\080\0D\0E\0F\10\11\12\13\14\15\16Y\17\18\19\1A\1B\1C\1De\1E\1F=fQ231TPg456789f:p[\\RSqp>?@ABCoU\1AVfWX_`bacdZ\00mnf\00\00Yj", align 16
@yydefact = internal unnamed_addr constant [115 x i8] c"\05\00\00\02\03VXUW\04ST\019<BEJ?R&$\1D\00\00\1F\00Y\00\00\0A \06\07\11\08\16\09\0B\0D\0C2\0E5K6\0F\10'\1E\00.7:@CF=(%[!LMOPQN8;ADG>)\130[\00\00\17ZHI\22\004-\00\00#,13\1C\1A*\00\12/\\\14[\00\18\1B\00\00\1A+\1A\15\19\00\1A", align 16
@yyr2 = internal unnamed_addr constant [93 x i8] c"\00\02\01\01\02\00\02\01\01\01\01\01\01\01\01\01\01\01\03\02\04\06\01\02\04\06\00\01\02\01\02\01\01\02\02\03\01\02\01\02\02\02\03\05\03\03\02\04\02\03\01\03\02\01\01\02\02\01\02\02\01\02\02\01\02\02\01\02\02\01\02\02\02\02\01\01\02\02\02\02\02\02\01\01\01\01\01\01\01\01\02\00\02", align 16
@.str.117 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@.str.1.118 = private unnamed_addr constant [18 x i8] c"number of seconds\00", align 1
@.str.2.119 = private unnamed_addr constant [9 x i8] c"datetime\00", align 1
@.str.3.120 = private unnamed_addr constant [5 x i8] c"time\00", align 1
@.str.4.121 = private unnamed_addr constant [11 x i8] c"local_zone\00", align 1
@.str.5.122 = private unnamed_addr constant [2 x i8] c"J\00", align 1
@.str.6.123 = private unnamed_addr constant [5 x i8] c"zone\00", align 1
@.str.7.124 = private unnamed_addr constant [5 x i8] c"date\00", align 1
@.str.8.125 = private unnamed_addr constant [4 x i8] c"day\00", align 1
@.str.9.126 = private unnamed_addr constant [9 x i8] c"relative\00", align 1
@.str.10.127 = private unnamed_addr constant [7 x i8] c"number\00", align 1
@.str.11.128 = private unnamed_addr constant [7 x i8] c"hybrid\00", align 1
@.str.12.129 = private unnamed_addr constant [56 x i8] c"warning: value %ld has %ld digits. Assuming YYYY/MM/DD\0A\00", align 1
@.str.13.130 = private unnamed_addr constant [66 x i8] c"warning: value %ld has less than 4 digits. Assuming MM/DD/YY[YY]\0A\00", align 1
@yyr1 = internal unnamed_addr constant [93 x i8] c"\00\1D\1E\1E\1F  !!!!!!!!!!\22#$$$$%%%&&'(()))))))****+++++++++,---.....................//////01122334566", align 16
@yypgoto = internal unnamed_addr constant [26 x i8] c"\A5\A5\A5\A5\A5\A5\A5\A5\11\E4\E5\A5\A5\A5\A5\A5\A5\A5&\A5\A5\A5\A6\A5\A5.", align 16
@yydefgoto = internal unnamed_addr constant [26 x i8] c"\00\02\03\04 !\22#$hi%&'()*+,-\09\0A\0B./^", align 16
@.str.20.152 = private unnamed_addr constant [3 x i8] c"TZ\00", align 1
@.str.21.131 = private unnamed_addr constant [17 x i8] c"parsed %s part: \00", align 1
@stderr = external local_unnamed_addr global ptr, align 8
@.str.22.133 = private unnamed_addr constant [26 x i8] c"(Y-M-D) %04ld-%02ld-%02ld\00", align 1
@.str.23.134 = private unnamed_addr constant [12 x i8] c"year: %04ld\00", align 1
@.str.24.135 = private unnamed_addr constant [19 x i8] c" %02ld:%02ld:%02ld\00", align 1
@.str.25.136 = private unnamed_addr constant [6 x i8] c".%09d\00", align 1
@.str.26 = private unnamed_addr constant [3 x i8] c"pm\00", align 1
@.str.27.137 = private unnamed_addr constant [31 x i8] c"%s (day ordinal=%ld number=%d)\00", align 1
@.str.28.140 = private unnamed_addr constant [12 x i8] c" isdst=%d%s\00", align 1
@.str.29.142 = private unnamed_addr constant [5 x i8] c" DST\00", align 1
@.str.30.141 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.31.143 = private unnamed_addr constant [7 x i8] c" UTC%s\00", align 1
@.str.32.144 = private unnamed_addr constant [23 x i8] c"number of seconds: %ld\00", align 1
@str_days.ordinal_values = internal constant [14 x [11 x i8]] [[11 x i8] c"last\00\00\00\00\00\00\00", [11 x i8] c"this\00\00\00\00\00\00\00", [11 x i8] c"next/first\00", [11 x i8] c"(SECOND)\00\00\00", [11 x i8] c"third\00\00\00\00\00\00", [11 x i8] c"fourth\00\00\00\00\00", [11 x i8] c"fifth\00\00\00\00\00\00", [11 x i8] c"sixth\00\00\00\00\00\00", [11 x i8] c"seventh\00\00\00\00", [11 x i8] c"eight\00\00\00\00\00\00", [11 x i8] c"ninth\00\00\00\00\00\00", [11 x i8] c"tenth\00\00\00\00\00\00", [11 x i8] c"eleventh\00\00\00", [11 x i8] c"twelfth\00\00\00\00"], align 16
@str_days.days_values = internal constant [7 x [4 x i8]] [[4 x i8] c"Sun\00", [4 x i8] c"Mon\00", [4 x i8] c"Tue\00", [4 x i8] c"Wed\00", [4 x i8] c"Thu\00", [4 x i8] c"Fri\00", [4 x i8] c"Sat\00"], align 16
@.str.33.138 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.34.139 = private unnamed_addr constant [4 x i8] c"%ld\00", align 1
@.str.35 = private unnamed_addr constant [4 x i8] c" %s\00", align 1
@.str.36 = private unnamed_addr constant [7 x i8] c"%c%02d\00", align 1
@.str.37 = private unnamed_addr constant [16 x i8] c"today/this/now\0A\00", align 1
@.str.38 = private unnamed_addr constant [8 x i8] c"year(s)\00", align 1
@.str.39 = private unnamed_addr constant [9 x i8] c"month(s)\00", align 1
@.str.40.132 = private unnamed_addr constant [7 x i8] c"day(s)\00", align 1
@.str.41 = private unnamed_addr constant [8 x i8] c"hour(s)\00", align 1
@.str.42 = private unnamed_addr constant [8 x i8] c"minutes\00", align 1
@.str.43 = private unnamed_addr constant [8 x i8] c"seconds\00", align 1
@.str.44 = private unnamed_addr constant [12 x i8] c"nanoseconds\00", align 1
@.str.45 = private unnamed_addr constant [9 x i8] c" %+ld %s\00", align 1
@.str.46 = private unnamed_addr constant [7 x i8] c"date: \00", align 1
@.str.48 = private unnamed_addr constant [26 x i8] c"error: unknown word '%s'\0A\00", align 1
@meridian_table = internal unnamed_addr constant [5 x %struct.table] [%struct.table { ptr @.str.49, i32 270, i32 0 }, %struct.table { ptr @.str.50, i32 270, i32 0 }, %struct.table { ptr @.str.51, i32 270, i32 1 }, %struct.table { ptr @.str.52, i32 270, i32 1 }, %struct.table zeroinitializer], align 16
@month_and_day_table = internal unnamed_addr constant [25 x %struct.table] [%struct.table { ptr @.str.53, i32 271, i32 1 }, %struct.table { ptr @.str.54, i32 271, i32 2 }, %struct.table { ptr @.str.55, i32 271, i32 3 }, %struct.table { ptr @.str.56, i32 271, i32 4 }, %struct.table { ptr @.str.57, i32 271, i32 5 }, %struct.table { ptr @.str.58, i32 271, i32 6 }, %struct.table { ptr @.str.59, i32 271, i32 7 }, %struct.table { ptr @.str.60, i32 271, i32 8 }, %struct.table { ptr @.str.61, i32 271, i32 9 }, %struct.table { ptr @.str.62, i32 271, i32 9 }, %struct.table { ptr @.str.63.116, i32 271, i32 10 }, %struct.table { ptr @.str.64, i32 271, i32 11 }, %struct.table { ptr @.str.65, i32 271, i32 12 }, %struct.table { ptr @.str.66, i32 267, i32 0 }, %struct.table { ptr @.str.67, i32 267, i32 1 }, %struct.table { ptr @.str.68, i32 267, i32 2 }, %struct.table { ptr @.str.69, i32 267, i32 2 }, %struct.table { ptr @.str.70, i32 267, i32 3 }, %struct.table { ptr @.str.71, i32 267, i32 3 }, %struct.table { ptr @.str.72, i32 267, i32 4 }, %struct.table { ptr @.str.73, i32 267, i32 4 }, %struct.table { ptr @.str.74, i32 267, i32 4 }, %struct.table { ptr @.str.75, i32 267, i32 5 }, %struct.table { ptr @.str.76, i32 267, i32 6 }, %struct.table zeroinitializer], align 16
@dst_table = internal unnamed_addr constant [1 x %struct.table] [%struct.table { ptr @.str.127, i32 259, i32 0 }], align 16
@time_units_table = internal unnamed_addr constant [11 x %struct.table] [%struct.table { ptr @.str.128, i32 260, i32 1 }, %struct.table { ptr @.str.129, i32 261, i32 1 }, %struct.table { ptr @.str.130, i32 265, i32 14 }, %struct.table { ptr @.str.131, i32 265, i32 7 }, %struct.table { ptr @.str.132, i32 265, i32 1 }, %struct.table { ptr @.str.133, i32 262, i32 1 }, %struct.table { ptr @.str.134, i32 263, i32 1 }, %struct.table { ptr @.str.135, i32 263, i32 1 }, %struct.table { ptr @.str.136, i32 264, i32 1 }, %struct.table { ptr @.str.137, i32 264, i32 1 }, %struct.table zeroinitializer], align 16
@relative_time_table = internal unnamed_addr constant [21 x %struct.table] [%struct.table { ptr @.str.138, i32 266, i32 1 }, %struct.table { ptr @.str.139, i32 266, i32 -1 }, %struct.table { ptr @.str.140, i32 266, i32 0 }, %struct.table { ptr @.str.141, i32 266, i32 0 }, %struct.table { ptr @.str.142, i32 272, i32 -1 }, %struct.table { ptr @.str.143, i32 272, i32 0 }, %struct.table { ptr @.str.144, i32 272, i32 1 }, %struct.table { ptr @.str.145, i32 272, i32 1 }, %struct.table { ptr @.str.146, i32 272, i32 3 }, %struct.table { ptr @.str.147, i32 272, i32 4 }, %struct.table { ptr @.str.148, i32 272, i32 5 }, %struct.table { ptr @.str.149, i32 272, i32 6 }, %struct.table { ptr @.str.150, i32 272, i32 7 }, %struct.table { ptr @.str.151, i32 272, i32 8 }, %struct.table { ptr @.str.152, i32 272, i32 9 }, %struct.table { ptr @.str.153, i32 272, i32 10 }, %struct.table { ptr @.str.154, i32 272, i32 11 }, %struct.table { ptr @.str.155, i32 272, i32 12 }, %struct.table { ptr @.str.156, i32 258, i32 -1 }, %struct.table { ptr @.str.157, i32 258, i32 1 }, %struct.table zeroinitializer], align 16
@military_table = internal unnamed_addr constant [27 x %struct.table] [%struct.table { ptr @.str.158, i32 273, i32 3600 }, %struct.table { ptr @.str.159, i32 273, i32 7200 }, %struct.table { ptr @.str.160, i32 273, i32 10800 }, %struct.table { ptr @.str.161, i32 273, i32 14400 }, %struct.table { ptr @.str.162, i32 273, i32 18000 }, %struct.table { ptr @.str.163, i32 273, i32 21600 }, %struct.table { ptr @.str.164, i32 273, i32 25200 }, %struct.table { ptr @.str.165, i32 273, i32 28800 }, %struct.table { ptr @.str.166, i32 273, i32 32400 }, %struct.table { ptr @.str.5.122, i32 74, i32 0 }, %struct.table { ptr @.str.167, i32 273, i32 36000 }, %struct.table { ptr @.str.168, i32 273, i32 39600 }, %struct.table { ptr @.str.169, i32 273, i32 43200 }, %struct.table { ptr @.str.170, i32 273, i32 -3600 }, %struct.table { ptr @.str.171, i32 273, i32 -7200 }, %struct.table { ptr @.str.172, i32 273, i32 -10800 }, %struct.table { ptr @.str.173, i32 273, i32 -14400 }, %struct.table { ptr @.str.174, i32 273, i32 -18000 }, %struct.table { ptr @.str.175, i32 273, i32 -21600 }, %struct.table { ptr @.str.176, i32 84, i32 0 }, %struct.table { ptr @.str.177, i32 273, i32 -28800 }, %struct.table { ptr @.str.178, i32 273, i32 -32400 }, %struct.table { ptr @.str.179, i32 273, i32 -36000 }, %struct.table { ptr @.str.180, i32 273, i32 -39600 }, %struct.table { ptr @.str.181, i32 273, i32 -43200 }, %struct.table { ptr @.str.182, i32 273, i32 0 }, %struct.table zeroinitializer], align 16
@.str.49 = private unnamed_addr constant [3 x i8] c"AM\00", align 1
@.str.50 = private unnamed_addr constant [5 x i8] c"A.M.\00", align 1
@.str.51 = private unnamed_addr constant [3 x i8] c"PM\00", align 1
@.str.52 = private unnamed_addr constant [5 x i8] c"P.M.\00", align 1
@.str.53 = private unnamed_addr constant [8 x i8] c"JANUARY\00", align 1
@.str.54 = private unnamed_addr constant [9 x i8] c"FEBRUARY\00", align 1
@.str.55 = private unnamed_addr constant [6 x i8] c"MARCH\00", align 1
@.str.56 = private unnamed_addr constant [6 x i8] c"APRIL\00", align 1
@.str.57 = private unnamed_addr constant [4 x i8] c"MAY\00", align 1
@.str.58 = private unnamed_addr constant [5 x i8] c"JUNE\00", align 1
@.str.59 = private unnamed_addr constant [5 x i8] c"JULY\00", align 1
@.str.60 = private unnamed_addr constant [7 x i8] c"AUGUST\00", align 1
@.str.61 = private unnamed_addr constant [10 x i8] c"SEPTEMBER\00", align 1
@.str.62 = private unnamed_addr constant [5 x i8] c"SEPT\00", align 1
@.str.63.116 = private unnamed_addr constant [8 x i8] c"OCTOBER\00", align 1
@.str.64 = private unnamed_addr constant [9 x i8] c"NOVEMBER\00", align 1
@.str.65 = private unnamed_addr constant [9 x i8] c"DECEMBER\00", align 1
@.str.66 = private unnamed_addr constant [7 x i8] c"SUNDAY\00", align 1
@.str.67 = private unnamed_addr constant [7 x i8] c"MONDAY\00", align 1
@.str.68 = private unnamed_addr constant [8 x i8] c"TUESDAY\00", align 1
@.str.69 = private unnamed_addr constant [5 x i8] c"TUES\00", align 1
@.str.70 = private unnamed_addr constant [10 x i8] c"WEDNESDAY\00", align 1
@.str.71 = private unnamed_addr constant [7 x i8] c"WEDNES\00", align 1
@.str.72 = private unnamed_addr constant [9 x i8] c"THURSDAY\00", align 1
@.str.73 = private unnamed_addr constant [5 x i8] c"THUR\00", align 1
@.str.74 = private unnamed_addr constant [6 x i8] c"THURS\00", align 1
@.str.75 = private unnamed_addr constant [7 x i8] c"FRIDAY\00", align 1
@.str.76 = private unnamed_addr constant [9 x i8] c"SATURDAY\00", align 1
@universal_time_zone_table = internal constant [4 x %struct.table] [%struct.table { ptr @.str.77.145, i32 273, i32 0 }, %struct.table { ptr @.str.78, i32 273, i32 0 }, %struct.table { ptr @.str.79.146, i32 273, i32 0 }, %struct.table zeroinitializer], align 16
@time_zone_table = internal constant [48 x %struct.table] [%struct.table { ptr @.str.80, i32 273, i32 0 }, %struct.table { ptr @.str.81, i32 268, i32 0 }, %struct.table { ptr @.str.82.147, i32 268, i32 0 }, %struct.table { ptr @.str.83, i32 273, i32 -10800 }, %struct.table { ptr @.str.84, i32 273, i32 -10800 }, %struct.table { ptr @.str.85, i32 268, i32 -10800 }, %struct.table { ptr @.str.86, i32 273, i32 -12600 }, %struct.table { ptr @.str.87, i32 268, i32 -12600 }, %struct.table { ptr @.str.88, i32 273, i32 -14400 }, %struct.table { ptr @.str.89, i32 268, i32 -14400 }, %struct.table { ptr @.str.90, i32 273, i32 -14400 }, %struct.table { ptr @.str.91.148, i32 268, i32 -14400 }, %struct.table { ptr @.str.92, i32 273, i32 -18000 }, %struct.table { ptr @.str.93, i32 268, i32 -18000 }, %struct.table { ptr @.str.94, i32 273, i32 -21600 }, %struct.table { ptr @.str.95, i32 268, i32 -21600 }, %struct.table { ptr @.str.96.149, i32 273, i32 -25200 }, %struct.table { ptr @.str.97, i32 268, i32 -25200 }, %struct.table { ptr @.str.98, i32 273, i32 -28800 }, %struct.table { ptr @.str.99, i32 268, i32 -28800 }, %struct.table { ptr @.str.100, i32 273, i32 -32400 }, %struct.table { ptr @.str.101, i32 268, i32 -32400 }, %struct.table { ptr @.str.102, i32 273, i32 -36000 }, %struct.table { ptr @.str.103, i32 273, i32 -36000 }, %struct.table { ptr @.str.104, i32 268, i32 -36000 }, %struct.table { ptr @.str.105, i32 273, i32 -43200 }, %struct.table { ptr @.str.106, i32 273, i32 3600 }, %struct.table { ptr @.str.107, i32 273, i32 3600 }, %struct.table { ptr @.str.108, i32 268, i32 3600 }, %struct.table { ptr @.str.109, i32 273, i32 3600 }, %struct.table { ptr @.str.110, i32 273, i32 3600 }, %struct.table { ptr @.str.111, i32 268, i32 3600 }, %struct.table { ptr @.str.112, i32 268, i32 3600 }, %struct.table { ptr @.str.113, i32 273, i32 7200 }, %struct.table { ptr @.str.114, i32 268, i32 7200 }, %struct.table { ptr @.str.115.150, i32 273, i32 7200 }, %struct.table { ptr @.str.116, i32 273, i32 7200 }, %struct.table { ptr @.str.117.151, i32 273, i32 10800 }, %struct.table { ptr @.str.118, i32 273, i32 10800 }, %struct.table { ptr @.str.119, i32 268, i32 10800 }, %struct.table { ptr @.str.120, i32 273, i32 19800 }, %struct.table { ptr @.str.121, i32 273, i32 28800 }, %struct.table { ptr @.str.122, i32 273, i32 32400 }, %struct.table { ptr @.str.123, i32 273, i32 32400 }, %struct.table { ptr @.str.124, i32 273, i32 36000 }, %struct.table { ptr @.str.125, i32 273, i32 43200 }, %struct.table { ptr @.str.126, i32 268, i32 43200 }, %struct.table zeroinitializer], align 16
@.str.77.145 = private unnamed_addr constant [4 x i8] c"GMT\00", align 1
@.str.78 = private unnamed_addr constant [3 x i8] c"UT\00", align 1
@.str.79.146 = private unnamed_addr constant [4 x i8] c"UTC\00", align 1
@.str.80 = private unnamed_addr constant [4 x i8] c"WET\00", align 1
@.str.81 = private unnamed_addr constant [5 x i8] c"WEST\00", align 1
@.str.82.147 = private unnamed_addr constant [4 x i8] c"BST\00", align 1
@.str.83 = private unnamed_addr constant [4 x i8] c"ART\00", align 1
@.str.84 = private unnamed_addr constant [4 x i8] c"BRT\00", align 1
@.str.85 = private unnamed_addr constant [5 x i8] c"BRST\00", align 1
@.str.86 = private unnamed_addr constant [4 x i8] c"NST\00", align 1
@.str.87 = private unnamed_addr constant [4 x i8] c"NDT\00", align 1
@.str.88 = private unnamed_addr constant [4 x i8] c"AST\00", align 1
@.str.89 = private unnamed_addr constant [4 x i8] c"ADT\00", align 1
@.str.90 = private unnamed_addr constant [4 x i8] c"CLT\00", align 1
@.str.91.148 = private unnamed_addr constant [5 x i8] c"CLST\00", align 1
@.str.92 = private unnamed_addr constant [4 x i8] c"EST\00", align 1
@.str.93 = private unnamed_addr constant [4 x i8] c"EDT\00", align 1
@.str.94 = private unnamed_addr constant [4 x i8] c"CST\00", align 1
@.str.95 = private unnamed_addr constant [4 x i8] c"CDT\00", align 1
@.str.96.149 = private unnamed_addr constant [4 x i8] c"MST\00", align 1
@.str.97 = private unnamed_addr constant [4 x i8] c"MDT\00", align 1
@.str.98 = private unnamed_addr constant [4 x i8] c"PST\00", align 1
@.str.99 = private unnamed_addr constant [4 x i8] c"PDT\00", align 1
@.str.100 = private unnamed_addr constant [5 x i8] c"AKST\00", align 1
@.str.101 = private unnamed_addr constant [5 x i8] c"AKDT\00", align 1
@.str.102 = private unnamed_addr constant [4 x i8] c"HST\00", align 1
@.str.103 = private unnamed_addr constant [5 x i8] c"HAST\00", align 1
@.str.104 = private unnamed_addr constant [5 x i8] c"HADT\00", align 1
@.str.105 = private unnamed_addr constant [4 x i8] c"SST\00", align 1
@.str.106 = private unnamed_addr constant [4 x i8] c"WAT\00", align 1
@.str.107 = private unnamed_addr constant [4 x i8] c"CET\00", align 1
@.str.108 = private unnamed_addr constant [5 x i8] c"CEST\00", align 1
@.str.109 = private unnamed_addr constant [4 x i8] c"MET\00", align 1
@.str.110 = private unnamed_addr constant [4 x i8] c"MEZ\00", align 1
@.str.111 = private unnamed_addr constant [5 x i8] c"MEST\00", align 1
@.str.112 = private unnamed_addr constant [5 x i8] c"MESZ\00", align 1
@.str.113 = private unnamed_addr constant [4 x i8] c"EET\00", align 1
@.str.114 = private unnamed_addr constant [5 x i8] c"EEST\00", align 1
@.str.115.150 = private unnamed_addr constant [4 x i8] c"CAT\00", align 1
@.str.116 = private unnamed_addr constant [5 x i8] c"SAST\00", align 1
@.str.117.151 = private unnamed_addr constant [4 x i8] c"EAT\00", align 1
@.str.118 = private unnamed_addr constant [4 x i8] c"MSK\00", align 1
@.str.119 = private unnamed_addr constant [4 x i8] c"MSD\00", align 1
@.str.120 = private unnamed_addr constant [4 x i8] c"IST\00", align 1
@.str.121 = private unnamed_addr constant [4 x i8] c"SGT\00", align 1
@.str.122 = private unnamed_addr constant [4 x i8] c"KST\00", align 1
@.str.123 = private unnamed_addr constant [4 x i8] c"JST\00", align 1
@.str.124 = private unnamed_addr constant [4 x i8] c"GST\00", align 1
@.str.125 = private unnamed_addr constant [5 x i8] c"NZST\00", align 1
@.str.126 = private unnamed_addr constant [5 x i8] c"NZDT\00", align 1
@.str.127 = private unnamed_addr constant [4 x i8] c"DST\00", align 1
@.str.128 = private unnamed_addr constant [5 x i8] c"YEAR\00", align 1
@.str.129 = private unnamed_addr constant [6 x i8] c"MONTH\00", align 1
@.str.130 = private unnamed_addr constant [10 x i8] c"FORTNIGHT\00", align 1
@.str.131 = private unnamed_addr constant [5 x i8] c"WEEK\00", align 1
@.str.132 = private unnamed_addr constant [4 x i8] c"DAY\00", align 1
@.str.133 = private unnamed_addr constant [5 x i8] c"HOUR\00", align 1
@.str.134 = private unnamed_addr constant [7 x i8] c"MINUTE\00", align 1
@.str.135 = private unnamed_addr constant [4 x i8] c"MIN\00", align 1
@.str.136 = private unnamed_addr constant [7 x i8] c"SECOND\00", align 1
@.str.137 = private unnamed_addr constant [4 x i8] c"SEC\00", align 1
@.str.138 = private unnamed_addr constant [9 x i8] c"TOMORROW\00", align 1
@.str.139 = private unnamed_addr constant [10 x i8] c"YESTERDAY\00", align 1
@.str.140 = private unnamed_addr constant [6 x i8] c"TODAY\00", align 1
@.str.141 = private unnamed_addr constant [4 x i8] c"NOW\00", align 1
@.str.142 = private unnamed_addr constant [5 x i8] c"LAST\00", align 1
@.str.143 = private unnamed_addr constant [5 x i8] c"THIS\00", align 1
@.str.144 = private unnamed_addr constant [5 x i8] c"NEXT\00", align 1
@.str.145 = private unnamed_addr constant [6 x i8] c"FIRST\00", align 1
@.str.146 = private unnamed_addr constant [6 x i8] c"THIRD\00", align 1
@.str.147 = private unnamed_addr constant [7 x i8] c"FOURTH\00", align 1
@.str.148 = private unnamed_addr constant [6 x i8] c"FIFTH\00", align 1
@.str.149 = private unnamed_addr constant [6 x i8] c"SIXTH\00", align 1
@.str.150 = private unnamed_addr constant [8 x i8] c"SEVENTH\00", align 1
@.str.151 = private unnamed_addr constant [7 x i8] c"EIGHTH\00", align 1
@.str.152 = private unnamed_addr constant [6 x i8] c"NINTH\00", align 1
@.str.153 = private unnamed_addr constant [6 x i8] c"TENTH\00", align 1
@.str.154 = private unnamed_addr constant [9 x i8] c"ELEVENTH\00", align 1
@.str.155 = private unnamed_addr constant [8 x i8] c"TWELFTH\00", align 1
@.str.156 = private unnamed_addr constant [4 x i8] c"AGO\00", align 1
@.str.157 = private unnamed_addr constant [6 x i8] c"HENCE\00", align 1
@.str.158 = private unnamed_addr constant [2 x i8] c"A\00", align 1
@.str.159 = private unnamed_addr constant [2 x i8] c"B\00", align 1
@.str.160 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str.161 = private unnamed_addr constant [2 x i8] c"D\00", align 1
@.str.162 = private unnamed_addr constant [2 x i8] c"E\00", align 1
@.str.163 = private unnamed_addr constant [2 x i8] c"F\00", align 1
@.str.164 = private unnamed_addr constant [2 x i8] c"G\00", align 1
@.str.165 = private unnamed_addr constant [2 x i8] c"H\00", align 1
@.str.166 = private unnamed_addr constant [2 x i8] c"I\00", align 1
@.str.167 = private unnamed_addr constant [2 x i8] c"K\00", align 1
@.str.168 = private unnamed_addr constant [2 x i8] c"L\00", align 1
@.str.169 = private unnamed_addr constant [2 x i8] c"M\00", align 1
@.str.170 = private unnamed_addr constant [2 x i8] c"N\00", align 1
@.str.171 = private unnamed_addr constant [2 x i8] c"O\00", align 1
@.str.172 = private unnamed_addr constant [2 x i8] c"P\00", align 1
@.str.173 = private unnamed_addr constant [2 x i8] c"Q\00", align 1
@.str.174 = private unnamed_addr constant [2 x i8] c"R\00", align 1
@.str.175 = private unnamed_addr constant [2 x i8] c"S\00", align 1
@.str.176 = private unnamed_addr constant [2 x i8] c"T\00", align 1
@.str.177 = private unnamed_addr constant [2 x i8] c"U\00", align 1
@.str.178 = private unnamed_addr constant [2 x i8] c"V\00", align 1
@.str.179 = private unnamed_addr constant [2 x i8] c"W\00", align 1
@.str.180 = private unnamed_addr constant [2 x i8] c"X\00", align 1
@.str.181 = private unnamed_addr constant [2 x i8] c"Y\00", align 1
@.str.182 = private unnamed_addr constant [2 x i8] c"Z\00", align 1
@.str.183 = private unnamed_addr constant [5 x i8] c"TZ=\22\00", align 1
@.str.184 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.186 = private unnamed_addr constant [23 x i8] c"error: parsing failed\0A\00", align 1
@.str.187 = private unnamed_addr constant [40 x i8] c"error: parsing failed, stopped at '%s'\0A\00", align 1
@.str.188 = private unnamed_addr constant [17 x i8] c"input timezone: \00", align 1
@.str.189 = private unnamed_addr constant [25 x i8] c"'@timespec' - always UTC\00", align 1
@.str.190 = private unnamed_addr constant [24 x i8] c"parsed date/time string\00", align 1
@.str.191 = private unnamed_addr constant [23 x i8] c"TZ=\22%s\22 in date string\00", align 1
@.str.192 = private unnamed_addr constant [5 x i8] c"UTC0\00", align 1
@.str.193 = private unnamed_addr constant [34 x i8] c"TZ=\22UTC0\22 environment value or -u\00", align 1
@.str.194 = private unnamed_addr constant [26 x i8] c"TZ=\22%s\22 environment value\00", align 1
@.str.195 = private unnamed_addr constant [15 x i8] c"system default\00", align 1
@.str.196 = private unnamed_addr constant [6 x i8] c", dst\00", align 1
@.str.197 = private unnamed_addr constant [6 x i8] c" (%s)\00", align 1
@.str.198 = private unnamed_addr constant [33 x i8] c"error: seen multiple time parts\0A\00", align 1
@.str.199 = private unnamed_addr constant [33 x i8] c"error: seen multiple date parts\0A\00", align 1
@.str.200 = private unnamed_addr constant [33 x i8] c"error: seen multiple days parts\0A\00", align 1
@.str.201 = private unnamed_addr constant [44 x i8] c"error: seen multiple daylight-saving parts\0A\00", align 1
@.str.202 = private unnamed_addr constant [38 x i8] c"error: seen multiple time-zone parts\0A\00", align 1
@.str.203 = private unnamed_addr constant [37 x i8] c"error: year, month, or day overflow\0A\00", align 1
@.str.204 = private unnamed_addr constant [3 x i8] c"am\00", align 1
@.str.205 = private unnamed_addr constant [27 x i8] c"error: invalid hour %ld%s\0A\00", align 1
@.str.206 = private unnamed_addr constant [46 x i8] c"using specified time as starting value: '%s'\0A\00", align 1
@.str.207 = private unnamed_addr constant [44 x i8] c"using current time as starting value: '%s'\0A\00", align 1
@.str.208 = private unnamed_addr constant [46 x i8] c"warning: using midnight as starting time: %s\0A\00", align 1
@.str.209 = private unnamed_addr constant [9 x i8] c"00:00:00\00", align 1
@.str.210 = private unnamed_addr constant [30 x i8] c"error: tzalloc (\22%s\22) failed\0A\00", align 1
@.str.211 = private unnamed_addr constant [79 x i8] c"error: day '%s' (day ordinal=%ld number=%d) resulted in an invalid date: '%s'\0A\00", align 1
@.str.212 = private unnamed_addr constant [30 x i8] c"new start date: '%s' is '%s'\0A\00", align 1
@.str.213 = private unnamed_addr constant [44 x i8] c"using current date as starting value: '%s'\0A\00", align 1
@.str.214 = private unnamed_addr constant [57 x i8] c"warning: day (%s) ignored when explicit dates are given\0A\00", align 1
@.str.215 = private unnamed_addr constant [26 x i8] c"starting date/time: '%s'\0A\00", align 1
@.str.216 = private unnamed_addr constant [97 x i8] c"warning: when adding relative months/years, it is recommended to specify the 15th of the months\0A\00", align 1
@.str.217 = private unnamed_addr constant [71 x i8] c"warning: when adding relative days, it is recommended to specify noon\0A\00", align 1
@.str.218 = private unnamed_addr constant [14 x i8] c"error: %s:%d\0A\00", align 1
@.str.219 = private unnamed_addr constant [17 x i8] c"parse-datetime.y\00", align 1
@.str.220 = private unnamed_addr constant [63 x i8] c"error: adding relative date resulted in an invalid date: '%s'\0A\00", align 1
@.str.221 = private unnamed_addr constant [61 x i8] c"after date adjustment (%+ld years, %+ld months, %+ld days),\0A\00", align 1
@.str.222 = private unnamed_addr constant [26 x i8] c"    new date/time = '%s'\0A\00", align 1
@.str.223 = private unnamed_addr constant [61 x i8] c"warning: daylight saving time changed after date adjustment\0A\00", align 1
@.str.224 = private unnamed_addr constant [59 x i8] c"warning: month/year adjustment resulted in shifted dates:\0A\00", align 1
@.str.225 = private unnamed_addr constant [35 x i8] c"     adjusted Y M D: %s %02d %02d\0A\00", align 1
@.str.226 = private unnamed_addr constant [35 x i8] c"   normalized Y M D: %s %02d %02d\0A\00", align 1
@.str.227 = private unnamed_addr constant [43 x i8] c"error: timezone %d caused time_t overflow\0A\00", align 1
@.str.228 = private unnamed_addr constant [26 x i8] c"'%s' = %ld epoch-seconds\0A\00", align 1
@.str.229 = private unnamed_addr constant [48 x i8] c"error: adding relative time caused an overflow\0A\00", align 1
@.str.230 = private unnamed_addr constant [73 x i8] c"after time adjustment (%+ld hours, %+ld minutes, %+ld seconds, %+d ns),\0A\00", align 1
@.str.231 = private unnamed_addr constant [34 x i8] c"    new time = %ld epoch-seconds\0A\00", align 1
@.str.232 = private unnamed_addr constant [61 x i8] c"warning: daylight saving time changed after time adjustment\0A\00", align 1
@.str.233 = private unnamed_addr constant [26 x i8] c"timezone: system default\0A\00", align 1
@.str.234 = private unnamed_addr constant [26 x i8] c"timezone: Universal Time\0A\00", align 1
@.str.235 = private unnamed_addr constant [37 x i8] c"timezone: TZ=\22%s\22 environment value\0A\00", align 1
@.str.236 = private unnamed_addr constant [33 x i8] c"final: %ld.%09d (epoch-seconds)\0A\00", align 1
@.str.237 = private unnamed_addr constant [17 x i8] c"final: %s (UTC)\0A\00", align 1
@.str.238 = private unnamed_addr constant [19 x i8] c"final: %s (UTC%s)\0A\00", align 1
@.str.240 = private unnamed_addr constant [42 x i8] c"warning: adjusting year value %ld to %ld\0A\00", align 1
@.str.241 = private unnamed_addr constant [30 x i8] c"error: out-of-range year %ld\0A\00", align 1
@.str.242 = private unnamed_addr constant [15 x i8] c"%02d:%02d:%02d\00", align 1
@.str.243 = private unnamed_addr constant [33 x i8] c"error: invalid date/time value:\0A\00", align 1
@.str.244 = private unnamed_addr constant [30 x i8] c"    user provided time: '%s'\0A\00", align 1
@.str.245 = private unnamed_addr constant [30 x i8] c"       normalized time: '%s'\0A\00", align 1
@.str.246 = private unnamed_addr constant [57 x i8] c"                                 %4s %2s %2s %2s %2s %2s\00", align 1
@.str.247 = private unnamed_addr constant [5 x i8] c"----\00", align 1
@.str.248 = private unnamed_addr constant [3 x i8] c"--\00", align 1
@.str.249 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.250 = private unnamed_addr constant [24 x i8] c"     possible reasons:\0A\00", align 1
@.str.251 = private unnamed_addr constant [49 x i8] c"       nonexistent due to daylight-saving time;\0A\00", align 1
@.str.252 = private unnamed_addr constant [39 x i8] c"       invalid day/month combination;\0A\00", align 1
@.str.253 = private unnamed_addr constant [33 x i8] c"       numeric values overflow;\0A\00", align 1
@.str.254 = private unnamed_addr constant [11 x i8] c"       %s\0A\00", align 1
@.str.255 = private unnamed_addr constant [19 x i8] c"incorrect timezone\00", align 1
@.str.256 = private unnamed_addr constant [17 x i8] c"missing timezone\00", align 1
@.str.257 = private unnamed_addr constant [26 x i8] c"(Y-M-D) %Y-%m-%d %H:%M:%S\00", align 1
@.str.258 = private unnamed_addr constant [7 x i8] c" TZ=%s\00", align 1
@.str.259 = private unnamed_addr constant [21 x i8] c"(Y-M-D) %s-%02d-%02d\00", align 1
@.str.260 = private unnamed_addr constant [10 x i8] c"-%02d%02d\00", align 1
@.str.185 = private unnamed_addr constant [21 x i8] c"/proc/self/mountinfo\00", align 1
@.str.1.186 = private unnamed_addr constant [3 x i8] c"re\00", align 1
@.str.2.187 = private unnamed_addr constant [17 x i8] c"%*u %*u %u:%u %n\00", align 1
@.str.3.188 = private unnamed_addr constant [4 x i8] c" - \00", align 1
@.str.4.189 = private unnamed_addr constant [7 x i8] c"autofs\00", align 1
@.str.5.190 = private unnamed_addr constant [5 x i8] c"proc\00", align 1
@.str.6.191 = private unnamed_addr constant [6 x i8] c"subfs\00", align 1
@.str.7.192 = private unnamed_addr constant [8 x i8] c"debugfs\00", align 1
@.str.8.193 = private unnamed_addr constant [7 x i8] c"devpts\00", align 1
@.str.9.194 = private unnamed_addr constant [8 x i8] c"fusectl\00", align 1
@.str.10.195 = private unnamed_addr constant [12 x i8] c"fuse.portal\00", align 1
@.str.11.196 = private unnamed_addr constant [7 x i8] c"mqueue\00", align 1
@.str.12.197 = private unnamed_addr constant [11 x i8] c"rpc_pipefs\00", align 1
@.str.13.198 = private unnamed_addr constant [6 x i8] c"sysfs\00", align 1
@.str.14.199 = private unnamed_addr constant [6 x i8] c"devfs\00", align 1
@.str.15.200 = private unnamed_addr constant [7 x i8] c"kernfs\00", align 1
@.str.16.201 = private unnamed_addr constant [7 x i8] c"ignore\00", align 1
@.str.17.202 = private unnamed_addr constant [5 x i8] c"none\00", align 1
@.str.18.203 = private unnamed_addr constant [6 x i8] c"smbfs\00", align 1
@.str.19.204 = private unnamed_addr constant [5 x i8] c"smb3\00", align 1
@.str.20.205 = private unnamed_addr constant [5 x i8] c"cifs\00", align 1
@.str.21.206 = private unnamed_addr constant [5 x i8] c"acfs\00", align 1
@.str.22.207 = private unnamed_addr constant [4 x i8] c"afs\00", align 1
@.str.23.208 = private unnamed_addr constant [5 x i8] c"coda\00", align 1
@.str.24.209 = private unnamed_addr constant [11 x i8] c"auristorfs\00", align 1
@.str.25.210 = private unnamed_addr constant [6 x i8] c"fhgfs\00", align 1
@.str.26.211 = private unnamed_addr constant [5 x i8] c"gpfs\00", align 1
@.str.27.212 = private unnamed_addr constant [6 x i8] c"ibrix\00", align 1
@.str.28.213 = private unnamed_addr constant [6 x i8] c"ocfs2\00", align 1
@.str.29.214 = private unnamed_addr constant [5 x i8] c"vxfs\00", align 1
@.str.30.215 = private unnamed_addr constant [7 x i8] c"-hosts\00", align 1
@.str.31.216 = private unnamed_addr constant [10 x i8] c"/etc/mtab\00", align 1
@.str.32.217 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.33.218 = private unnamed_addr constant [5 x i8] c"bind\00", align 1
@file_name.219 = internal unnamed_addr global ptr null, align 8
@stdin = external local_unnamed_addr global ptr, align 8
@.str.239 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@.str.1.240 = private unnamed_addr constant [19 x i8] c"error closing file\00", align 1
@.str.2.241 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.3.242 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@exit_failure = external global i32, align 4
@internal_state.243 = internal global %struct.__mbstate_t zeroinitializer, align 4

; Function Attrs: noreturn nounwind uwtable
define dso_local void @usage(i32 noundef %status) local_unnamed_addr #0 {
entry:
  %cmp.not = icmp eq i32 %status, 0
  br i1 %cmp.not, label %if.else, label %do.body

do.body:                                          ; preds = %entry
  %0 = load ptr, ptr @stderr, align 8, !tbaa !5
  %call = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str, i32 noundef 5) #41
  %1 = load ptr, ptr @program_name, align 8, !tbaa !5
  %call1 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %call, ptr noundef %1) #41
  br label %if.end

if.else:                                          ; preds = %entry
  %call2 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.1, i32 noundef 5) #41
  %2 = load ptr, ptr @program_name, align 8, !tbaa !5
  %call3 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %call2, ptr noundef %2) #41
  %call4 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.2, i32 noundef 5) #41
  %3 = load ptr, ptr @stdout, align 8, !tbaa !5
  %call5 = tail call i32 @fputs_unlocked(ptr noundef %call4, ptr noundef %3)
  %call6 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.3, i32 noundef 5) #41
  %4 = load ptr, ptr @stdout, align 8, !tbaa !5
  %call7 = tail call i32 @fputs_unlocked(ptr noundef %call6, ptr noundef %4)
  %call8 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.4, i32 noundef 5) #41
  %5 = load ptr, ptr @stdout, align 8, !tbaa !5
  %call9 = tail call i32 @fputs_unlocked(ptr noundef %call8, ptr noundef %5)
  %call6.i = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.22, i32 noundef 5) #41
  %call7.i = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %call6.i, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.23) #41
  %call8.i = tail call ptr @setlocale(i32 noundef 5, ptr noundef null) #41
  %tobool9.not.i = icmp eq ptr %call8.i, null
  br i1 %tobool9.not.i, label %emit_ancillary_info.exit, label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %if.else
  %call10.i = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %call8.i, ptr noundef nonnull dereferenceable(4) @.str.24, i64 noundef 3) #42
  %tobool11.not.i = icmp eq i32 %call10.i, 0
  br i1 %tobool11.not.i, label %emit_ancillary_info.exit, label %if.then12.i

if.then12.i:                                      ; preds = %land.lhs.true.i
  %call13.i = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.25, i32 noundef 5) #41
  %6 = load ptr, ptr @stdout, align 8, !tbaa !5
  %call14.i = tail call i32 @fputs_unlocked(ptr noundef %call13.i, ptr noundef %6)
  br label %emit_ancillary_info.exit

emit_ancillary_info.exit:                         ; preds = %if.then12.i, %land.lhs.true.i, %if.else
  %call18.i = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.27, i32 noundef 5) #41
  %call19.i = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %call18.i, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.5) #41
  %call20.i = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.28, i32 noundef 5) #41
  %call23.i = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %call20.i, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.29) #41
  br label %if.end

if.end:                                           ; preds = %emit_ancillary_info.exit, %do.body
  tail call void @exit(i32 noundef %status) #43
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
  %0 = load ptr, ptr %argv, align 8, !tbaa !5
  tail call void @set_program_name(ptr noundef %0) #41
  %call = tail call ptr @setlocale(i32 noundef 6, ptr noundef nonnull @.str.6) #41
  %call1 = tail call ptr @bindtextdomain(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8) #41
  %call2 = tail call ptr @textdomain(ptr noundef nonnull @.str.7) #41
  store volatile i32 3, ptr @exit_failure, align 4, !tbaa !9
  %call3 = tail call i32 @atexit(ptr noundef nonnull @close_stdout) #41
  store i1 false, ptr @silent, align 1
  %call4.peel = tail call i32 @getopt_long(i32 noundef %argc, ptr noundef nonnull %argv, ptr noundef nonnull @.str.9, ptr noundef nonnull @longopts, ptr noundef null) #41
  switch i32 %call4.peel, label %sw.default [
    i32 -1, label %while.end
    i32 115, label %while.cond
    i32 -130, label %sw.bb5
    i32 -131, label %sw.bb6
  ]

while.cond:                                       ; preds = %while.cond, %entry
  store i1 true, ptr @silent, align 1
  %call4 = tail call i32 @getopt_long(i32 noundef %argc, ptr noundef nonnull %argv, ptr noundef nonnull @.str.9, ptr noundef nonnull @longopts, ptr noundef null) #41
  switch i32 %call4, label %sw.default [
    i32 -1, label %while.end
    i32 115, label %while.cond
    i32 -130, label %sw.bb5
    i32 -131, label %sw.bb6
  ], !llvm.loop !11

sw.bb5:                                           ; preds = %while.cond, %entry
  tail call void @usage(i32 noundef 0) #44
  unreachable

sw.bb6:                                           ; preds = %while.cond, %entry
  %1 = load ptr, ptr @stdout, align 8, !tbaa !5
  %2 = load ptr, ptr @Version, align 8, !tbaa !5
  %call7 = tail call ptr @proper_name_lite(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.11) #41
  tail call void (ptr, ptr, ptr, ptr, ...) @version_etc(ptr noundef %1, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.10, ptr noundef %2, ptr noundef %call7, ptr noundef null) #41
  tail call void @exit(i32 noundef 0) #43
  unreachable

sw.default:                                       ; preds = %while.cond, %entry
  tail call void @usage(i32 noundef 2) #44
  unreachable

while.end:                                        ; preds = %while.cond, %entry
  %3 = load i32, ptr @optind, align 4, !tbaa !9
  %cmp8 = icmp slt i32 %3, %argc
  br i1 %cmp8, label %if.then, label %if.end

if.then:                                          ; preds = %while.end
  %call9 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.12, i32 noundef 5) #41
  %4 = load i32, ptr @optind, align 4, !tbaa !9
  %idxprom = sext i32 %4 to i64
  %arrayidx10 = getelementptr inbounds ptr, ptr %argv, i64 %idxprom
  %5 = load ptr, ptr %arrayidx10, align 8, !tbaa !5
  %call11 = tail call ptr @quote(ptr noundef %5) #41
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %call9, ptr noundef %call11) #45
  tail call void @usage(i32 noundef 2) #44
  unreachable

if.end:                                           ; preds = %while.end
  %call12 = tail call ptr @__errno_location() #46
  store i32 2, ptr %call12, align 4, !tbaa !9
  %.b27 = load i1, ptr @silent, align 1
  br i1 %.b27, label %if.then13, label %if.end16

if.then13:                                        ; preds = %if.end
  %call14 = tail call i32 @isatty(i32 noundef 0) #41
  %tobool15.not = icmp eq i32 %call14, 0
  %cond = zext i1 %tobool15.not to i32
  br label %cleanup

if.end16:                                         ; preds = %if.end
  %call17 = tail call ptr @ttyname(i32 noundef 0) #41
  %tobool18.not = icmp eq ptr %call17, null
  br i1 %tobool18.not, label %if.then19, label %if.end21

if.then19:                                        ; preds = %if.end16
  %call20 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.13, i32 noundef 5) #41
  br label %if.end21

if.end21:                                         ; preds = %if.then19, %if.end16
  %status.0 = phi i32 [ 0, %if.end16 ], [ 1, %if.then19 ]
  %tty.0 = phi ptr [ %call17, %if.end16 ], [ %call20, %if.then19 ]
  %call22 = tail call i32 @puts(ptr noundef nonnull dereferenceable(1) %tty.0)
  br label %cleanup

cleanup:                                          ; preds = %if.end21, %if.then13
  %retval.0 = phi i32 [ %cond, %if.then13 ], [ %status.0, %if.end21 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind
declare ptr @bindtextdomain(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare ptr @textdomain(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare i32 @atexit(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare i32 @getopt_long(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #7

; Function Attrs: nounwind
declare i32 @isatty(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare ptr @ttyname(i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @c_strcasecmp(ptr noundef readonly %s1, ptr noundef readonly %s2) local_unnamed_addr #8 {
entry:
  %cmp = icmp eq ptr %s1, %s2
  br i1 %cmp, label %cleanup, label %do.body

do.body:                                          ; preds = %do.body, %entry
  %p2.0 = phi ptr [ %incdec.ptr10, %do.body ], [ %s2, %entry ]
  %p1.0 = phi ptr [ %incdec.ptr, %do.body ], [ %s1, %entry ]
  %0 = load i8, ptr %p1.0, align 1, !tbaa !14
  %conv = zext i8 %0 to i32
  %c.off.i = add nsw i32 %conv, -65
  %switch.i = icmp ult i32 %c.off.i, 26
  %add.i = add nuw nsw i32 %conv, 32
  %retval.0.i = select i1 %switch.i, i32 %add.i, i32 %conv
  %1 = load i8, ptr %p2.0, align 1, !tbaa !14
  %conv2 = zext i8 %1 to i32
  %c.off.i27 = add nsw i32 %conv2, -65
  %switch.i28 = icmp ult i32 %c.off.i27, 26
  %add.i29 = add nuw nsw i32 %conv2, 32
  %retval.0.i30 = select i1 %switch.i28, i32 %add.i29, i32 %conv2
  %conv5 = and i32 %retval.0.i, 255
  %cmp6 = icmp ne i32 %conv5, 0
  %incdec.ptr = getelementptr inbounds i8, ptr %p1.0, i64 1
  %incdec.ptr10 = getelementptr inbounds i8, ptr %p2.0, i64 1
  %conv12 = and i32 %retval.0.i30, 255
  %cmp13 = icmp eq i32 %conv5, %conv12
  %or.cond = select i1 %cmp6, i1 %cmp13, i1 false
  br i1 %or.cond, label %do.body, label %do.end, !llvm.loop !15

do.end:                                           ; preds = %do.body
  %sub = sub nsw i32 %conv5, %conv12
  br label %cleanup

cleanup:                                          ; preds = %do.end, %entry
  %retval.0 = phi i32 [ %sub, %do.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: nounwind uwtable
define dso_local noalias noundef nonnull ptr @clone_quoting_options(ptr noundef %o) local_unnamed_addr #6 {
entry:
  %call = tail call ptr @__errno_location() #46
  %0 = load i32, ptr %call, align 4, !tbaa !9
  %tobool.not = icmp eq ptr %o, null
  %cond = select i1 %tobool.not, ptr @default_quoting_options, ptr %o
  %call1 = tail call noalias nonnull dereferenceable(56) ptr @xmemdup(ptr noundef nonnull %cond, i64 noundef 56) #47
  store i32 %0, ptr %call, align 4, !tbaa !9
  ret ptr %call1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @get_quoting_style(ptr noundef readonly %o) local_unnamed_addr #8 {
entry:
  %tobool.not = icmp eq ptr %o, null
  %cond = select i1 %tobool.not, ptr @default_quoting_options, ptr %o
  %0 = load i32, ptr %cond, align 8, !tbaa !16
  ret i32 %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, inaccessiblemem: none) uwtable
define dso_local void @set_quoting_style(ptr noundef writeonly %o, i32 noundef %s) local_unnamed_addr #9 {
entry:
  %tobool.not = icmp eq ptr %o, null
  %cond = select i1 %tobool.not, ptr @default_quoting_options, ptr %o
  store i32 %s, ptr %cond, align 8, !tbaa !16
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @set_char_quoting(ptr noundef %o, i8 noundef signext %c, i32 noundef %i) local_unnamed_addr #10 {
entry:
  %tobool.not = icmp eq ptr %o, null
  %cond = select i1 %tobool.not, ptr @default_quoting_options, ptr %o
  %quote_these_too = getelementptr inbounds %struct.quoting_options, ptr %cond, i64 0, i32 2
  %0 = lshr i8 %c, 5
  %div10 = zext nneg i8 %0 to i64
  %add.ptr = getelementptr inbounds i32, ptr %quote_these_too, i64 %div10
  %1 = and i8 %c, 31
  %conv2 = zext nneg i8 %1 to i32
  %2 = load i32, ptr %add.ptr, align 4, !tbaa !9
  %shr = lshr i32 %2, %conv2
  %and = and i32 %shr, 1
  %and311 = xor i32 %shr, %i
  %xor = and i32 %and311, 1
  %shl = shl nuw i32 %xor, %conv2
  %xor4 = xor i32 %shl, %2
  store i32 %xor4, ptr %add.ptr, align 4, !tbaa !9
  ret i32 %and
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @set_quoting_flags(ptr noundef %o, i32 noundef %i) local_unnamed_addr #10 {
entry:
  %tobool.not = icmp eq ptr %o, null
  %spec.store.select = select i1 %tobool.not, ptr @default_quoting_options, ptr %o
  %flags = getelementptr inbounds %struct.quoting_options, ptr %spec.store.select, i64 0, i32 1
  %0 = load i32, ptr %flags, align 4, !tbaa !18
  store i32 %i, ptr %flags, align 4, !tbaa !18
  ret i32 %0
}

; Function Attrs: nounwind uwtable
define dso_local void @set_custom_quoting(ptr noundef writeonly %o, ptr noundef %left_quote, ptr noundef %right_quote) local_unnamed_addr #6 {
entry:
  %tobool.not = icmp eq ptr %o, null
  %spec.store.select = select i1 %tobool.not, ptr @default_quoting_options, ptr %o
  store i32 10, ptr %spec.store.select, align 8, !tbaa !16
  %tobool1 = icmp ne ptr %left_quote, null
  %tobool2 = icmp ne ptr %right_quote, null
  %or.cond = and i1 %tobool1, %tobool2
  br i1 %or.cond, label %if.end4, label %if.then3

if.then3:                                         ; preds = %entry
  tail call void @abort() #43
  unreachable

if.end4:                                          ; preds = %entry
  %left_quote5 = getelementptr inbounds %struct.quoting_options, ptr %spec.store.select, i64 0, i32 3
  store ptr %left_quote, ptr %left_quote5, align 8, !tbaa !19
  %right_quote6 = getelementptr inbounds %struct.quoting_options, ptr %spec.store.select, i64 0, i32 4
  store ptr %right_quote, ptr %right_quote6, align 8, !tbaa !20
  ret void
}

; Function Attrs: noreturn nounwind
declare void @abort() local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define dso_local i64 @quotearg_buffer(ptr noundef %buffer, i64 noundef %buffersize, ptr noundef %arg, i64 noundef %argsize, ptr noundef %o) local_unnamed_addr #6 {
entry:
  %tobool.not = icmp eq ptr %o, null
  %cond = select i1 %tobool.not, ptr @default_quoting_options, ptr %o
  %call = tail call ptr @__errno_location() #46
  %0 = load i32, ptr %call, align 4, !tbaa !9
  %1 = load i32, ptr %cond, align 8, !tbaa !16
  %flags = getelementptr inbounds %struct.quoting_options, ptr %cond, i64 0, i32 1
  %2 = load i32, ptr %flags, align 4, !tbaa !18
  %quote_these_too = getelementptr inbounds %struct.quoting_options, ptr %cond, i64 0, i32 2
  %left_quote = getelementptr inbounds %struct.quoting_options, ptr %cond, i64 0, i32 3
  %3 = load ptr, ptr %left_quote, align 8, !tbaa !19
  %right_quote = getelementptr inbounds %struct.quoting_options, ptr %cond, i64 0, i32 4
  %4 = load ptr, ptr %right_quote, align 8, !tbaa !20
  %call1 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef %buffer, i64 noundef %buffersize, ptr noundef %arg, i64 noundef %argsize, i32 noundef %1, i32 noundef %2, ptr noundef nonnull %quote_these_too, ptr noundef %3, ptr noundef %4)
  store i32 %0, ptr %call, align 4, !tbaa !9
  ret i64 %call1
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @quotearg_buffer_restyled(ptr noundef %buffer, i64 noundef %buffersize, ptr noundef %arg, i64 noundef %argsize, i32 noundef %quoting_style, i32 noundef %flags, ptr noundef %quote_these_too, ptr noundef %left_quote, ptr noundef %right_quote) unnamed_addr #6 {
entry:
  %mbstate = alloca %struct.__mbstate_t, align 8
  %w = alloca i32, align 4
  %call = tail call i64 @__ctype_get_mb_cur_max() #41
  %cmp = icmp eq i64 %call, 1
  %0 = trunc i32 %flags to i8
  %1 = lshr i8 %0, 1
  %frombool2 = and i8 %1, 1
  %arrayidx285 = getelementptr inbounds i8, ptr %arg, i64 1
  %and185 = and i32 %flags, 4
  %tobool186.not = icmp eq i32 %and185, 0
  %and174 = and i32 %flags, 1
  %tobool175.not = icmp eq i32 %and174, 0
  %tobool595 = icmp ne ptr %quote_these_too, null
  %tobool595.old.not = icmp eq ptr %quote_these_too, null
  br label %process_input

process_input:                                    ; preds = %if.else725, %entry
  %quoting_style.addr.0 = phi i32 [ %quoting_style, %entry ], [ 2, %if.else725 ]
  %left_quote.addr.0 = phi ptr [ %left_quote, %entry ], [ %left_quote.addr.2, %if.else725 ]
  %right_quote.addr.0 = phi ptr [ %right_quote, %entry ], [ %right_quote.addr.2, %if.else725 ]
  %orig_buffersize.0 = phi i64 [ 0, %entry ], [ %orig_buffersize.1, %if.else725 ]
  %quote_string.0 = phi ptr [ null, %entry ], [ %quote_string.2, %if.else725 ]
  %quote_string_len.0 = phi i64 [ 0, %entry ], [ %quote_string_len.1, %if.else725 ]
  %backslash_escapes.0 = phi i8 [ 0, %entry ], [ %backslash_escapes.4, %if.else725 ]
  %argsize.addr.0 = phi i64 [ %argsize, %entry ], [ %argsize.addr.1.lcssa, %if.else725 ]
  %elide_outer_quotes.0 = phi i8 [ %frombool2, %entry ], [ %elide_outer_quotes.4, %if.else725 ]
  %encountered_single_quote.0 = phi i8 [ 0, %entry ], [ %encountered_single_quote.1, %if.else725 ]
  %all_c_and_shell_quote_compat.0 = phi i8 [ 1, %entry ], [ %all_c_and_shell_quote_compat.1, %if.else725 ]
  %buffersize.addr.0 = phi i64 [ %buffersize, %entry ], [ %orig_buffersize.1, %if.else725 ]
  switch i32 %quoting_style.addr.0, label %sw.default [
    i32 6, label %sw.bb3.thread
    i32 5, label %sw.bb3
    i32 7, label %sw.epilog
    i32 0, label %sw.bb45
    i32 2, label %sw.bb33
    i32 4, label %sw.bb29
    i32 3, label %sw.bb27
    i32 1, label %sw.bb28
    i32 10, label %if.end13
    i32 8, label %if.then10
    i32 9, label %if.then10
  ]

sw.bb3.thread:                                    ; preds = %process_input
  br label %sw.epilog

sw.bb3:                                           ; preds = %process_input
  %2 = and i8 %elide_outer_quotes.0, 1
  %tobool.not = icmp eq i8 %2, 0
  br i1 %tobool.not, label %do.body, label %sw.epilog

do.body:                                          ; preds = %sw.bb3
  %cmp4.not = icmp eq i64 %buffersize.addr.0, 0
  br i1 %cmp4.not, label %sw.epilog, label %if.then5

if.then5:                                         ; preds = %do.body
  store i8 34, ptr %buffer, align 1, !tbaa !14
  br label %sw.epilog

if.then10:                                        ; preds = %process_input, %process_input
  %call11 = call fastcc ptr @gettext_quote(ptr noundef nonnull @.str.11.24, i32 noundef %quoting_style.addr.0)
  %call12 = call fastcc ptr @gettext_quote(ptr noundef nonnull @.str.12.25, i32 noundef %quoting_style.addr.0)
  br label %if.end13

if.end13:                                         ; preds = %if.then10, %process_input
  %left_quote.addr.1 = phi ptr [ %call11, %if.then10 ], [ %left_quote.addr.0, %process_input ]
  %right_quote.addr.1 = phi ptr [ %call12, %if.then10 ], [ %right_quote.addr.0, %process_input ]
  %3 = and i8 %elide_outer_quotes.0, 1
  %tobool14.not = icmp eq i8 %3, 0
  br i1 %tobool14.not, label %for.cond.preheader, label %if.end25

for.cond.preheader:                               ; preds = %if.end13
  %4 = load i8, ptr %left_quote.addr.1, align 1, !tbaa !14
  %tobool16.not1319 = icmp eq i8 %4, 0
  br i1 %tobool16.not1319, label %if.end25, label %do.body17

do.body17:                                        ; preds = %if.end21, %for.cond.preheader
  %5 = phi i8 [ %6, %if.end21 ], [ %4, %for.cond.preheader ]
  %quote_string.11321 = phi ptr [ %incdec.ptr, %if.end21 ], [ %left_quote.addr.1, %for.cond.preheader ]
  %len.21320 = phi i64 [ %inc22, %if.end21 ], [ 0, %for.cond.preheader ]
  %cmp18 = icmp ult i64 %len.21320, %buffersize.addr.0
  br i1 %cmp18, label %if.then19, label %if.end21

if.then19:                                        ; preds = %do.body17
  %arrayidx20 = getelementptr inbounds i8, ptr %buffer, i64 %len.21320
  store i8 %5, ptr %arrayidx20, align 1, !tbaa !14
  br label %if.end21

if.end21:                                         ; preds = %if.then19, %do.body17
  %inc22 = add i64 %len.21320, 1
  %incdec.ptr = getelementptr inbounds i8, ptr %quote_string.11321, i64 1
  %6 = load i8, ptr %incdec.ptr, align 1, !tbaa !14
  %tobool16.not = icmp eq i8 %6, 0
  br i1 %tobool16.not, label %if.end25, label %do.body17, !llvm.loop !21

if.end25:                                         ; preds = %if.end21, %for.cond.preheader, %if.end13
  %len.3 = phi i64 [ 0, %if.end13 ], [ 0, %for.cond.preheader ], [ %inc22, %if.end21 ]
  %call26 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %right_quote.addr.1) #42
  br label %sw.epilog

sw.bb27:                                          ; preds = %process_input
  br label %sw.bb29

sw.bb28:                                          ; preds = %process_input
  br label %sw.bb29

sw.bb29:                                          ; preds = %sw.bb28, %sw.bb27, %process_input
  %backslash_escapes.2 = phi i8 [ %backslash_escapes.0, %process_input ], [ 1, %sw.bb27 ], [ %backslash_escapes.0, %sw.bb28 ]
  %elide_outer_quotes.2 = phi i8 [ %elide_outer_quotes.0, %process_input ], [ 1, %sw.bb27 ], [ 1, %sw.bb28 ]
  %7 = and i8 %elide_outer_quotes.2, 1
  %tobool30.not = icmp eq i8 %7, 0
  %spec.select = select i1 %tobool30.not, i8 1, i8 %backslash_escapes.2
  br label %sw.bb33

sw.bb33:                                          ; preds = %sw.bb29, %process_input
  %backslash_escapes.3 = phi i8 [ %backslash_escapes.0, %process_input ], [ %spec.select, %sw.bb29 ]
  %elide_outer_quotes.3 = phi i8 [ %elide_outer_quotes.0, %process_input ], [ %elide_outer_quotes.2, %sw.bb29 ]
  %8 = and i8 %elide_outer_quotes.3, 1
  %tobool34.not = icmp eq i8 %8, 0
  br i1 %tobool34.not, label %do.body36, label %sw.epilog

do.body36:                                        ; preds = %sw.bb33
  %cmp37.not = icmp eq i64 %buffersize.addr.0, 0
  br i1 %cmp37.not, label %sw.epilog, label %if.then38

if.then38:                                        ; preds = %do.body36
  store i8 39, ptr %buffer, align 1, !tbaa !14
  br label %sw.epilog

sw.bb45:                                          ; preds = %process_input
  br label %sw.epilog

sw.default:                                       ; preds = %process_input
  call void @abort() #43
  unreachable

sw.epilog:                                        ; preds = %sw.bb45, %if.then38, %do.body36, %sw.bb33, %if.end25, %if.then5, %do.body, %sw.bb3, %sw.bb3.thread, %process_input
  %quoting_style.addr.2 = phi i32 [ 0, %sw.bb45 ], [ %quoting_style.addr.0, %if.end25 ], [ 5, %do.body ], [ 5, %if.then5 ], [ 5, %sw.bb3 ], [ %quoting_style.addr.0, %process_input ], [ 2, %do.body36 ], [ 2, %if.then38 ], [ 2, %sw.bb33 ], [ 5, %sw.bb3.thread ]
  %left_quote.addr.2 = phi ptr [ %left_quote.addr.0, %sw.bb45 ], [ %left_quote.addr.1, %if.end25 ], [ %left_quote.addr.0, %do.body ], [ %left_quote.addr.0, %if.then5 ], [ %left_quote.addr.0, %sw.bb3 ], [ %left_quote.addr.0, %process_input ], [ %left_quote.addr.0, %do.body36 ], [ %left_quote.addr.0, %if.then38 ], [ %left_quote.addr.0, %sw.bb33 ], [ %left_quote.addr.0, %sw.bb3.thread ]
  %right_quote.addr.2 = phi ptr [ %right_quote.addr.0, %sw.bb45 ], [ %right_quote.addr.1, %if.end25 ], [ %right_quote.addr.0, %do.body ], [ %right_quote.addr.0, %if.then5 ], [ %right_quote.addr.0, %sw.bb3 ], [ %right_quote.addr.0, %process_input ], [ %right_quote.addr.0, %do.body36 ], [ %right_quote.addr.0, %if.then38 ], [ %right_quote.addr.0, %sw.bb33 ], [ %right_quote.addr.0, %sw.bb3.thread ]
  %len.5 = phi i64 [ 0, %sw.bb45 ], [ %len.3, %if.end25 ], [ 1, %do.body ], [ 1, %if.then5 ], [ 0, %sw.bb3 ], [ 0, %process_input ], [ 1, %do.body36 ], [ 1, %if.then38 ], [ 0, %sw.bb33 ], [ 0, %sw.bb3.thread ]
  %quote_string.2 = phi ptr [ %quote_string.0, %sw.bb45 ], [ %right_quote.addr.1, %if.end25 ], [ @.str.10.26, %do.body ], [ @.str.10.26, %if.then5 ], [ @.str.10.26, %sw.bb3 ], [ %quote_string.0, %process_input ], [ @.str.12.25, %do.body36 ], [ @.str.12.25, %if.then38 ], [ @.str.12.25, %sw.bb33 ], [ @.str.10.26, %sw.bb3.thread ]
  %quote_string_len.1 = phi i64 [ %quote_string_len.0, %sw.bb45 ], [ %call26, %if.end25 ], [ 1, %do.body ], [ 1, %if.then5 ], [ 1, %sw.bb3 ], [ %quote_string_len.0, %process_input ], [ 1, %do.body36 ], [ 1, %if.then38 ], [ 1, %sw.bb33 ], [ 1, %sw.bb3.thread ]
  %backslash_escapes.4 = phi i8 [ %backslash_escapes.0, %sw.bb45 ], [ 1, %if.end25 ], [ 1, %do.body ], [ 1, %if.then5 ], [ 1, %sw.bb3 ], [ 1, %process_input ], [ %backslash_escapes.3, %do.body36 ], [ %backslash_escapes.3, %if.then38 ], [ %backslash_escapes.3, %sw.bb33 ], [ 1, %sw.bb3.thread ]
  %elide_outer_quotes.4 = phi i8 [ 0, %sw.bb45 ], [ %elide_outer_quotes.0, %if.end25 ], [ %elide_outer_quotes.0, %do.body ], [ %elide_outer_quotes.0, %if.then5 ], [ %elide_outer_quotes.0, %sw.bb3 ], [ 0, %process_input ], [ %elide_outer_quotes.3, %do.body36 ], [ %elide_outer_quotes.3, %if.then38 ], [ %elide_outer_quotes.3, %sw.bb33 ], [ 1, %sw.bb3.thread ]
  %9 = and i8 %backslash_escapes.4, 1
  %tobool55 = icmp ne i8 %9, 0
  %cmp57 = icmp ne i32 %quoting_style.addr.2, 2
  %or.cond = and i1 %cmp57, %tobool55
  %tobool60 = icmp ne i64 %quote_string_len.1, 0
  %or.cond780 = select i1 %or.cond, i1 %tobool60, i1 false
  %cmp65 = icmp ugt i64 %quote_string_len.1, 1
  %10 = and i8 %elide_outer_quotes.4, 1
  %tobool79.not = icmp eq i8 %10, 0
  %cmp309 = icmp eq i32 %quoting_style.addr.2, 2
  %or.cond1130 = select i1 %cmp57, i1 true, i1 %tobool79.not
  %tobool265 = icmp ne i8 %10, 0
  %or.cond782 = select i1 %tobool265, i1 %tobool60, i1 false
  %tobool55.not = xor i1 %tobool55, true
  %or.cond786 = and i1 %tobool595, %tobool265
  br label %for.cond46

for.cond46:                                       ; preds = %for.inc701, %sw.epilog
  %i.0 = phi i64 [ 0, %sw.epilog ], [ %inc702, %for.inc701 ]
  %len.6 = phi i64 [ %len.5, %sw.epilog ], [ %len.20, %for.inc701 ]
  %orig_buffersize.1 = phi i64 [ %orig_buffersize.0, %sw.epilog ], [ %orig_buffersize.6, %for.inc701 ]
  %argsize.addr.1 = phi i64 [ %argsize.addr.0, %sw.epilog ], [ %argsize.addr.10, %for.inc701 ]
  %encountered_single_quote.1 = phi i8 [ %encountered_single_quote.0, %sw.epilog ], [ %encountered_single_quote.5, %for.inc701 ]
  %all_c_and_shell_quote_compat.1 = phi i8 [ %all_c_and_shell_quote_compat.0, %sw.epilog ], [ %all_c_and_shell_quote_compat.3, %for.inc701 ]
  %pending_shell_escape_end.0 = phi i8 [ 0, %sw.epilog ], [ %pending_shell_escape_end.13, %for.inc701 ]
  %buffersize.addr.1 = phi i64 [ %buffersize.addr.0, %sw.epilog ], [ %buffersize.addr.6, %for.inc701 ]
  %cmp47 = icmp eq i64 %argsize.addr.1, -1
  br i1 %cmp47, label %cond.true, label %cond.end

cond.true:                                        ; preds = %for.cond46
  %arrayidx48 = getelementptr inbounds i8, ptr %arg, i64 %i.0
  %11 = load i8, ptr %arrayidx48, align 1, !tbaa !14
  %cmp49 = icmp eq i8 %11, 0
  br i1 %cmp49, label %for.end703, label %for.body54

cond.end:                                         ; preds = %for.cond46
  %cmp51 = icmp eq i64 %i.0, %argsize.addr.1
  br i1 %cmp51, label %for.end703, label %for.body54

for.body54:                                       ; preds = %cond.end, %cond.true
  br i1 %or.cond780, label %land.lhs.true61, label %if.end82

land.lhs.true61:                                  ; preds = %for.body54
  %add = add i64 %i.0, %quote_string_len.1
  %or.cond781 = select i1 %cmp47, i1 %cmp65, i1 false
  br i1 %or.cond781, label %cond.true67, label %cond.end70

cond.true67:                                      ; preds = %land.lhs.true61
  %call68 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %arg) #42
  br label %cond.end70

cond.end70:                                       ; preds = %cond.true67, %land.lhs.true61
  %cond71 = phi i64 [ %call68, %cond.true67 ], [ %argsize.addr.1, %land.lhs.true61 ]
  %cmp72.not = icmp ugt i64 %add, %cond71
  br i1 %cmp72.not, label %if.end82, label %land.lhs.true74

land.lhs.true74:                                  ; preds = %cond.end70
  %add.ptr = getelementptr inbounds i8, ptr %arg, i64 %i.0
  %bcmp = call i32 @bcmp(ptr %add.ptr, ptr %quote_string.2, i64 %quote_string_len.1)
  %cmp76 = icmp ne i32 %bcmp, 0
  %brmerge1333 = select i1 %cmp76, i1 true, i1 %tobool79.not
  %not.cmp76 = xor i1 %cmp76, true
  %.mux1334 = zext i1 %not.cmp76 to i8
  br i1 %brmerge1333, label %if.end82, label %force_outer_quoting_style.thread1410

if.end82:                                         ; preds = %land.lhs.true74, %cond.end70, %for.body54
  %argsize.addr.3 = phi i64 [ %cond71, %land.lhs.true74 ], [ %cond71, %cond.end70 ], [ %argsize.addr.1, %for.body54 ]
  %tobool604.not = phi i1 [ %cmp76, %land.lhs.true74 ], [ true, %cond.end70 ], [ true, %for.body54 ]
  %is_right_quote.0 = phi i8 [ %.mux1334, %land.lhs.true74 ], [ 0, %cond.end70 ], [ 0, %for.body54 ]
  %arrayidx83 = getelementptr inbounds i8, ptr %arg, i64 %i.0
  %12 = load i8, ptr %arrayidx83, align 1, !tbaa !14
  switch i8 %12, label %sw.default349 [
    i8 0, label %sw.bb85
    i8 63, label %sw.bb179
    i8 7, label %c_escape
    i8 8, label %sw.bb248
    i8 12, label %sw.bb249
    i8 10, label %c_and_shell_escape
    i8 13, label %sw.bb251
    i8 9, label %sw.bb252
    i8 11, label %sw.bb253
    i8 92, label %sw.bb254
    i8 123, label %sw.bb281
    i8 125, label %sw.bb281
    i8 35, label %sw.bb294
    i8 126, label %sw.bb294
    i8 32, label %sw.bb299
    i8 33, label %sw.bb300
    i8 34, label %sw.bb300
    i8 36, label %sw.bb300
    i8 38, label %sw.bb300
    i8 40, label %sw.bb300
    i8 41, label %sw.bb300
    i8 42, label %sw.bb300
    i8 59, label %sw.bb300
    i8 60, label %sw.bb300
    i8 61, label %sw.bb300
    i8 62, label %sw.bb300
    i8 91, label %sw.bb300
    i8 94, label %sw.bb300
    i8 96, label %sw.bb300
    i8 124, label %sw.bb300
    i8 39, label %sw.bb308
    i8 37, label %sw.epilog585
    i8 43, label %sw.epilog585
    i8 44, label %sw.epilog585
    i8 45, label %sw.epilog585
    i8 46, label %sw.epilog585
    i8 47, label %sw.epilog585
    i8 48, label %sw.epilog585
    i8 49, label %sw.epilog585
    i8 50, label %sw.epilog585
    i8 51, label %sw.epilog585
    i8 52, label %sw.epilog585
    i8 53, label %sw.epilog585
    i8 54, label %sw.epilog585
    i8 55, label %sw.epilog585
    i8 56, label %sw.epilog585
    i8 57, label %sw.epilog585
    i8 58, label %sw.epilog585
    i8 65, label %sw.epilog585
    i8 66, label %sw.epilog585
    i8 67, label %sw.epilog585
    i8 68, label %sw.epilog585
    i8 69, label %sw.epilog585
    i8 70, label %sw.epilog585
    i8 71, label %sw.epilog585
    i8 72, label %sw.epilog585
    i8 73, label %sw.epilog585
    i8 74, label %sw.epilog585
    i8 75, label %sw.epilog585
    i8 76, label %sw.epilog585
    i8 77, label %sw.epilog585
    i8 78, label %sw.epilog585
    i8 79, label %sw.epilog585
    i8 80, label %sw.epilog585
    i8 81, label %sw.epilog585
    i8 82, label %sw.epilog585
    i8 83, label %sw.epilog585
    i8 84, label %sw.epilog585
    i8 85, label %sw.epilog585
    i8 86, label %sw.epilog585
    i8 87, label %sw.epilog585
    i8 88, label %sw.epilog585
    i8 89, label %sw.epilog585
    i8 90, label %sw.epilog585
    i8 93, label %sw.epilog585
    i8 95, label %sw.epilog585
    i8 97, label %sw.epilog585
    i8 98, label %sw.epilog585
    i8 99, label %sw.epilog585
    i8 100, label %sw.epilog585
    i8 101, label %sw.epilog585
    i8 102, label %sw.epilog585
    i8 103, label %sw.epilog585
    i8 104, label %sw.epilog585
    i8 105, label %sw.epilog585
    i8 106, label %sw.epilog585
    i8 107, label %sw.epilog585
    i8 108, label %sw.epilog585
    i8 109, label %sw.epilog585
    i8 110, label %sw.epilog585
    i8 111, label %sw.epilog585
    i8 112, label %sw.epilog585
    i8 113, label %sw.epilog585
    i8 114, label %sw.epilog585
    i8 115, label %sw.epilog585
    i8 116, label %sw.epilog585
    i8 117, label %sw.epilog585
    i8 118, label %sw.epilog585
    i8 119, label %sw.epilog585
    i8 120, label %sw.epilog585
    i8 121, label %sw.epilog585
    i8 122, label %sw.epilog585
  ]

sw.bb85:                                          ; preds = %if.end82
  br i1 %tobool55, label %do.body88, label %if.else

do.body88:                                        ; preds = %sw.bb85
  br i1 %tobool79.not, label %if.end91, label %force_outer_quoting_style

if.end91:                                         ; preds = %do.body88
  %13 = and i8 %pending_shell_escape_end.0, 1
  %tobool95.not = icmp eq i8 %13, 0
  %or.cond1127 = select i1 %cmp309, i1 %tobool95.not, i1 false
  br i1 %or.cond1127, label %do.body97, label %do.body125

do.body97:                                        ; preds = %if.end91
  %cmp98 = icmp ult i64 %len.6, %buffersize.addr.1
  br i1 %cmp98, label %if.then100, label %if.end102

if.then100:                                       ; preds = %do.body97
  %arrayidx101 = getelementptr inbounds i8, ptr %buffer, i64 %len.6
  store i8 39, ptr %arrayidx101, align 1, !tbaa !14
  br label %if.end102

if.end102:                                        ; preds = %if.then100, %do.body97
  %inc103 = add i64 %len.6, 1
  %cmp107 = icmp ult i64 %inc103, %buffersize.addr.1
  br i1 %cmp107, label %if.then109, label %if.end111

if.then109:                                       ; preds = %if.end102
  %arrayidx110 = getelementptr inbounds i8, ptr %buffer, i64 %inc103
  store i8 36, ptr %arrayidx110, align 1, !tbaa !14
  br label %if.end111

if.end111:                                        ; preds = %if.then109, %if.end102
  %inc112 = add i64 %len.6, 2
  %cmp116 = icmp ult i64 %inc112, %buffersize.addr.1
  br i1 %cmp116, label %if.then118, label %if.end120

if.then118:                                       ; preds = %if.end111
  %arrayidx119 = getelementptr inbounds i8, ptr %buffer, i64 %inc112
  store i8 39, ptr %arrayidx119, align 1, !tbaa !14
  br label %if.end120

if.end120:                                        ; preds = %if.then118, %if.end111
  %inc121 = add i64 %len.6, 3
  br label %do.body125

do.body125:                                       ; preds = %if.end120, %if.end91
  %len.7 = phi i64 [ %inc121, %if.end120 ], [ %len.6, %if.end91 ]
  %pending_shell_escape_end.1 = phi i8 [ 1, %if.end120 ], [ %pending_shell_escape_end.0, %if.end91 ]
  %cmp126 = icmp ult i64 %len.7, %buffersize.addr.1
  br i1 %cmp126, label %if.then128, label %if.end130

if.then128:                                       ; preds = %do.body125
  %arrayidx129 = getelementptr inbounds i8, ptr %buffer, i64 %len.7
  store i8 92, ptr %arrayidx129, align 1, !tbaa !14
  br label %if.end130

if.end130:                                        ; preds = %if.then128, %do.body125
  %inc131 = add i64 %len.7, 1
  br i1 %cmp57, label %land.lhs.true138, label %lor.lhs.false591

land.lhs.true138:                                 ; preds = %if.end130
  %add139 = add i64 %i.0, 1
  %cmp140 = icmp ult i64 %add139, %argsize.addr.3
  br i1 %cmp140, label %land.lhs.true142, label %sw.epilog585

land.lhs.true142:                                 ; preds = %land.lhs.true138
  %arrayidx144 = getelementptr inbounds i8, ptr %arg, i64 %add139
  %14 = load i8, ptr %arrayidx144, align 1, !tbaa !14
  %15 = add i8 %14, -48
  %or.cond1128 = icmp ult i8 %15, 10
  br i1 %or.cond1128, label %do.body155, label %sw.epilog585

do.body155:                                       ; preds = %land.lhs.true142
  %cmp156 = icmp ult i64 %inc131, %buffersize.addr.1
  br i1 %cmp156, label %if.then158, label %if.end160

if.then158:                                       ; preds = %do.body155
  %arrayidx159 = getelementptr inbounds i8, ptr %buffer, i64 %inc131
  store i8 48, ptr %arrayidx159, align 1, !tbaa !14
  br label %if.end160

if.end160:                                        ; preds = %if.then158, %do.body155
  %inc161 = add i64 %len.7, 2
  %cmp165 = icmp ult i64 %inc161, %buffersize.addr.1
  br i1 %cmp165, label %if.then167, label %if.end169

if.then167:                                       ; preds = %if.end160
  %arrayidx168 = getelementptr inbounds i8, ptr %buffer, i64 %inc161
  store i8 48, ptr %arrayidx168, align 1, !tbaa !14
  br label %if.end169

if.end169:                                        ; preds = %if.then167, %if.end160
  %inc170 = add i64 %len.7, 3
  br label %sw.epilog585

if.else:                                          ; preds = %sw.bb85
  br i1 %tobool175.not, label %lor.lhs.false591, label %for.inc701

sw.bb179:                                         ; preds = %if.end82
  switch i32 %quoting_style.addr.2, label %sw.epilog585 [
    i32 2, label %sw.bb180
    i32 5, label %sw.bb184
  ]

sw.bb180:                                         ; preds = %sw.bb179
  br i1 %tobool79.not, label %sw.epilog585, label %force_outer_quoting_style.thread

sw.bb184:                                         ; preds = %sw.bb179
  br i1 %tobool186.not, label %sw.epilog585, label %land.lhs.true187

land.lhs.true187:                                 ; preds = %sw.bb184
  %add188 = add i64 %i.0, 2
  %cmp189 = icmp ult i64 %add188, %argsize.addr.3
  br i1 %cmp189, label %land.lhs.true191, label %sw.epilog585

land.lhs.true191:                                 ; preds = %land.lhs.true187
  %arrayidx193 = getelementptr i8, ptr %arrayidx83, i64 1
  %16 = load i8, ptr %arrayidx193, align 1, !tbaa !14
  %cmp195 = icmp eq i8 %16, 63
  br i1 %cmp195, label %if.then197, label %sw.epilog585

if.then197:                                       ; preds = %land.lhs.true191
  %arrayidx199 = getelementptr inbounds i8, ptr %arg, i64 %add188
  %17 = load i8, ptr %arrayidx199, align 1, !tbaa !14
  switch i8 %17, label %sw.epilog585 [
    i8 33, label %sw.bb201
    i8 39, label %sw.bb201
    i8 40, label %sw.bb201
    i8 41, label %sw.bb201
    i8 45, label %sw.bb201
    i8 47, label %sw.bb201
    i8 60, label %sw.bb201
    i8 61, label %sw.bb201
    i8 62, label %sw.bb201
  ]

sw.bb201:                                         ; preds = %if.then197, %if.then197, %if.then197, %if.then197, %if.then197, %if.then197, %if.then197, %if.then197, %if.then197
  br i1 %tobool79.not, label %if.end204, label %force_outer_quoting_style.thread1410

if.end204:                                        ; preds = %sw.bb201
  %cmp209 = icmp ult i64 %len.6, %buffersize.addr.1
  br i1 %cmp209, label %if.then211, label %if.end213

if.then211:                                       ; preds = %if.end204
  %arrayidx212 = getelementptr inbounds i8, ptr %buffer, i64 %len.6
  store i8 63, ptr %arrayidx212, align 1, !tbaa !14
  br label %if.end213

if.end213:                                        ; preds = %if.then211, %if.end204
  %inc214 = add i64 %len.6, 1
  %cmp218 = icmp ult i64 %inc214, %buffersize.addr.1
  br i1 %cmp218, label %if.then220, label %if.end222

if.then220:                                       ; preds = %if.end213
  %arrayidx221 = getelementptr inbounds i8, ptr %buffer, i64 %inc214
  store i8 34, ptr %arrayidx221, align 1, !tbaa !14
  br label %if.end222

if.end222:                                        ; preds = %if.then220, %if.end213
  %inc223 = add i64 %len.6, 2
  %cmp227 = icmp ult i64 %inc223, %buffersize.addr.1
  br i1 %cmp227, label %if.then229, label %if.end231

if.then229:                                       ; preds = %if.end222
  %arrayidx230 = getelementptr inbounds i8, ptr %buffer, i64 %inc223
  store i8 34, ptr %arrayidx230, align 1, !tbaa !14
  br label %if.end231

if.end231:                                        ; preds = %if.then229, %if.end222
  %inc232 = add i64 %len.6, 3
  %cmp236 = icmp ult i64 %inc232, %buffersize.addr.1
  br i1 %cmp236, label %if.then238, label %if.end240

if.then238:                                       ; preds = %if.end231
  %arrayidx239 = getelementptr inbounds i8, ptr %buffer, i64 %inc232
  store i8 63, ptr %arrayidx239, align 1, !tbaa !14
  br label %if.end240

if.end240:                                        ; preds = %if.then238, %if.end231
  %inc241 = add i64 %len.6, 4
  br label %sw.epilog585

sw.bb248:                                         ; preds = %if.end82
  br label %c_escape

sw.bb249:                                         ; preds = %if.end82
  br label %c_escape

sw.bb251:                                         ; preds = %if.end82
  br label %c_and_shell_escape

sw.bb252:                                         ; preds = %if.end82
  br label %c_and_shell_escape

sw.bb253:                                         ; preds = %if.end82
  br label %c_escape

sw.bb254:                                         ; preds = %if.end82
  br i1 %cmp309, label %if.then257, label %if.end261

if.then257:                                       ; preds = %sw.bb254
  br i1 %tobool79.not, label %do.body655, label %force_outer_quoting_style.thread

if.end261:                                        ; preds = %sw.bb254
  br i1 %tobool55, label %land.lhs.true264, label %lor.lhs.false591

land.lhs.true264:                                 ; preds = %if.end261
  br i1 %or.cond782, label %do.body655, label %do.body607

c_and_shell_escape:                               ; preds = %sw.bb252, %sw.bb251, %if.end82
  %esc.0 = phi i8 [ 116, %sw.bb252 ], [ 114, %sw.bb251 ], [ 110, %if.end82 ]
  br i1 %or.cond1130, label %c_escape, label %force_outer_quoting_style.thread

c_escape:                                         ; preds = %c_and_shell_escape, %sw.bb253, %sw.bb249, %sw.bb248, %if.end82
  %esc.1 = phi i8 [ %esc.0, %c_and_shell_escape ], [ 118, %sw.bb253 ], [ 102, %sw.bb249 ], [ 98, %sw.bb248 ], [ 97, %if.end82 ]
  br i1 %tobool55, label %do.body607, label %lor.lhs.false591

sw.bb281:                                         ; preds = %if.end82, %if.end82
  switch i64 %argsize.addr.3, label %sw.epilog585 [
    i64 -1, label %cond.true284
    i64 1, label %sw.bb294
  ]

cond.true284:                                     ; preds = %sw.bb281
  %18 = load i8, ptr %arrayidx285, align 1, !tbaa !14
  %cmp287 = icmp eq i8 %18, 0
  br i1 %cmp287, label %sw.bb294, label %sw.epilog585

sw.bb294:                                         ; preds = %cond.true284, %sw.bb281, %if.end82, %if.end82
  %cmp295.not = icmp eq i64 %i.0, 0
  br i1 %cmp295.not, label %sw.bb299, label %sw.epilog585

sw.bb299:                                         ; preds = %sw.bb294, %if.end82
  br label %sw.bb300

sw.bb300:                                         ; preds = %sw.bb299, %if.end82, %if.end82, %if.end82, %if.end82, %if.end82, %if.end82, %if.end82, %if.end82, %if.end82, %if.end82, %if.end82, %if.end82, %if.end82, %if.end82, %if.end82
  %c_and_shell_quote_compat.0 = phi i8 [ 0, %if.end82 ], [ 0, %if.end82 ], [ 0, %if.end82 ], [ 0, %if.end82 ], [ 0, %if.end82 ], [ 0, %if.end82 ], [ 0, %if.end82 ], [ 0, %if.end82 ], [ 0, %if.end82 ], [ 0, %if.end82 ], [ 0, %if.end82 ], [ 0, %if.end82 ], [ 0, %if.end82 ], [ 0, %if.end82 ], [ 0, %if.end82 ], [ 1, %sw.bb299 ]
  br i1 %or.cond1130, label %sw.epilog585, label %force_outer_quoting_style.thread

sw.bb308:                                         ; preds = %if.end82
  br i1 %cmp309, label %if.then311, label %sw.epilog585

if.then311:                                       ; preds = %sw.bb308
  br i1 %tobool79.not, label %if.end314, label %force_outer_quoting_style.thread

if.end314:                                        ; preds = %if.then311
  %tobool315 = icmp eq i64 %buffersize.addr.1, 0
  %tobool317 = icmp ne i64 %orig_buffersize.1, 0
  %or.cond783 = select i1 %tobool315, i1 true, i1 %tobool317
  %spec.select1131 = select i1 %or.cond783, i64 %orig_buffersize.1, i64 %buffersize.addr.1
  %spec.select1132 = select i1 %or.cond783, i64 %buffersize.addr.1, i64 0
  %cmp321 = icmp ult i64 %len.6, %spec.select1132
  br i1 %cmp321, label %if.then323, label %if.end325

if.then323:                                       ; preds = %if.end314
  %arrayidx324 = getelementptr inbounds i8, ptr %buffer, i64 %len.6
  store i8 39, ptr %arrayidx324, align 1, !tbaa !14
  br label %if.end325

if.end325:                                        ; preds = %if.then323, %if.end314
  %inc326 = add i64 %len.6, 1
  %cmp330 = icmp ult i64 %inc326, %spec.select1132
  br i1 %cmp330, label %if.then332, label %if.end334

if.then332:                                       ; preds = %if.end325
  %arrayidx333 = getelementptr inbounds i8, ptr %buffer, i64 %inc326
  store i8 92, ptr %arrayidx333, align 1, !tbaa !14
  br label %if.end334

if.end334:                                        ; preds = %if.then332, %if.end325
  %inc335 = add i64 %len.6, 2
  %cmp339 = icmp ult i64 %inc335, %spec.select1132
  br i1 %cmp339, label %if.then341, label %if.end343

if.then341:                                       ; preds = %if.end334
  %arrayidx342 = getelementptr inbounds i8, ptr %buffer, i64 %inc335
  store i8 39, ptr %arrayidx342, align 1, !tbaa !14
  br label %if.end343

if.end343:                                        ; preds = %if.then341, %if.end334
  %inc344 = add i64 %len.6, 3
  br label %sw.epilog585

sw.default349:                                    ; preds = %if.end82
  br i1 %cmp, label %if.then351, label %if.else360

if.then351:                                       ; preds = %sw.default349
  %call352 = tail call ptr @__ctype_b_loc() #46
  %19 = load ptr, ptr %call352, align 8, !tbaa !5
  %idxprom = zext i8 %12 to i64
  %arrayidx354 = getelementptr inbounds i16, ptr %19, i64 %idxprom
  %20 = load i16, ptr %arrayidx354, align 2, !tbaa !22
  %21 = and i16 %20, 16384
  %22 = icmp ne i16 %21, 0
  br label %if.end426

if.else360:                                       ; preds = %sw.default349
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %mbstate) #41
  store i64 0, ptr %mbstate, align 8
  %cmp361 = icmp eq i64 %argsize.addr.3, -1
  br i1 %cmp361, label %if.then363, label %for.cond366

if.then363:                                       ; preds = %if.else360
  %call364 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %arg) #42
  br label %for.cond366

for.cond366:                                      ; preds = %if.then363, %if.else360
  %argsize.addr.4 = phi i64 [ %call364, %if.then363 ], [ %argsize.addr.3, %if.else360 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %w) #41
  %sub = sub i64 %argsize.addr.4, %i.0
  %call370 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %w, ptr noundef nonnull %arrayidx83, i64 noundef %sub, ptr noundef nonnull %mbstate) #41
  switch i64 %call370, label %if.else390 [
    i64 0, label %cleanup419.thread
    i64 -1, label %if.then377
    i64 -2, label %while.cond.preheader
  ]

while.cond.preheader:                             ; preds = %for.cond366
  %cmp3831322 = icmp ult i64 %i.0, %argsize.addr.4
  br i1 %cmp3831322, label %land.rhs, label %cleanup419.thread

if.then377:                                       ; preds = %for.cond366
  br label %cleanup419.thread

land.rhs:                                         ; preds = %while.body, %while.cond.preheader
  %add3821324 = phi i64 [ %add382, %while.body ], [ %i.0, %while.cond.preheader ]
  %m.01323 = phi i64 [ %inc389, %while.body ], [ 0, %while.cond.preheader ]
  %arrayidx386 = getelementptr inbounds i8, ptr %arg, i64 %add3821324
  %23 = load i8, ptr %arrayidx386, align 1, !tbaa !14
  %tobool388.not = icmp eq i8 %23, 0
  br i1 %tobool388.not, label %cleanup419.thread, label %while.body

while.body:                                       ; preds = %land.rhs
  %inc389 = add i64 %m.01323, 1
  %add382 = add i64 %inc389, %i.0
  %exitcond.not = icmp eq i64 %inc389, %sub
  br i1 %exitcond.not, label %cleanup419.thread, label %land.rhs, !llvm.loop !24

if.else390:                                       ; preds = %for.cond366
  %cmp398.not1327 = icmp ugt i64 %call370, 1
  %24 = and i1 %tobool265, %cmp398.not1327
  %or.cond1335 = and i1 %24, %cmp309
  br i1 %or.cond1335, label %for.body400, label %if.end410

for.body400:                                      ; preds = %for.inc407, %if.else390
  %j.01328 = phi i64 [ %inc408, %for.inc407 ], [ 1, %if.else390 ]
  %arrayidx403 = getelementptr i8, ptr %arrayidx83, i64 %j.01328
  %25 = load i8, ptr %arrayidx403, align 1, !tbaa !14
  switch i8 %25, label %for.inc407 [
    i8 91, label %cleanup419
    i8 92, label %cleanup419
    i8 94, label %cleanup419
    i8 96, label %cleanup419
    i8 124, label %cleanup419
  ]

for.inc407:                                       ; preds = %for.body400
  %inc408 = add nuw i64 %j.01328, 1
  %exitcond1396.not = icmp eq i64 %inc408, %call370
  br i1 %exitcond1396.not, label %if.end410, label %for.body400, !llvm.loop !25

if.end410:                                        ; preds = %for.inc407, %if.else390
  %26 = load i32, ptr %w, align 4, !tbaa !9
  %call.i = call i32 @iswprint(i32 noundef %26) #41
  %tobool412.not = icmp ne i32 %call.i, 0
  br label %cleanup419.thread

cleanup419.thread:                                ; preds = %if.end410, %while.body, %land.rhs, %if.then377, %while.cond.preheader, %for.cond366
  %m.1.ph = phi i64 [ %call370, %for.cond366 ], [ %call370, %if.end410 ], [ 0, %if.then377 ], [ 0, %while.cond.preheader ], [ %m.01323, %land.rhs ], [ %sub, %while.body ]
  %printable.1.ph = phi i1 [ true, %for.cond366 ], [ %tobool412.not, %if.end410 ], [ false, %if.then377 ], [ false, %while.cond.preheader ], [ false, %while.body ], [ false, %land.rhs ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %w) #41
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %mbstate) #41
  br label %if.end426

cleanup419:                                       ; preds = %for.body400, %for.body400, %for.body400, %for.body400, %for.body400
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %w) #41
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %mbstate) #41
  br label %force_outer_quoting_style.thread

if.end426:                                        ; preds = %cleanup419.thread, %if.then351
  %argsize.addr.5 = phi i64 [ %argsize.addr.3, %if.then351 ], [ %argsize.addr.4, %cleanup419.thread ]
  %m.2 = phi i64 [ 1, %if.then351 ], [ %m.1.ph, %cleanup419.thread ]
  %printable.2 = phi i1 [ %22, %if.then351 ], [ %printable.1.ph, %cleanup419.thread ]
  %cmp429 = icmp ult i64 %m.2, 2
  %brmerge = select i1 %tobool55.not, i1 true, i1 %printable.2
  %or.cond1152 = select i1 %cmp429, i1 %brmerge, i1 false
  br i1 %or.cond1152, label %cleanup581.thread1176, label %if.then435

if.then435:                                       ; preds = %if.end426
  %add436 = add i64 %m.2, %i.0
  br label %for.cond437

for.cond437:                                      ; preds = %if.end572, %if.then435
  %i.1 = phi i64 [ %i.0, %if.then435 ], [ %add535, %if.end572 ]
  %len.9 = phi i64 [ %len.6, %if.then435 ], [ %inc573, %if.end572 ]
  %pending_shell_escape_end.2 = phi i8 [ %pending_shell_escape_end.0, %if.then435 ], [ %pending_shell_escape_end.5, %if.end572 ]
  %c.0 = phi i8 [ %12, %if.then435 ], [ %38, %if.end572 ]
  %is_right_quote.1 = phi i8 [ %is_right_quote.0, %if.then435 ], [ %is_right_quote.2, %if.end572 ]
  %escaping.0 = phi i8 [ 0, %if.then435 ], [ %escaping.1, %if.end572 ]
  br i1 %brmerge, label %if.else521, label %do.body443

do.body443:                                       ; preds = %for.cond437
  br i1 %tobool79.not, label %if.end446, label %force_outer_quoting_style

if.end446:                                        ; preds = %do.body443
  %27 = and i8 %pending_shell_escape_end.2, 1
  %tobool450.not = icmp eq i8 %27, 0
  %or.cond1135 = select i1 %cmp309, i1 %tobool450.not, i1 false
  br i1 %or.cond1135, label %do.body452, label %do.body480

do.body452:                                       ; preds = %if.end446
  %cmp453 = icmp ult i64 %len.9, %buffersize.addr.1
  br i1 %cmp453, label %if.then455, label %if.end457

if.then455:                                       ; preds = %do.body452
  %arrayidx456 = getelementptr inbounds i8, ptr %buffer, i64 %len.9
  store i8 39, ptr %arrayidx456, align 1, !tbaa !14
  br label %if.end457

if.end457:                                        ; preds = %if.then455, %do.body452
  %inc458 = add i64 %len.9, 1
  %cmp462 = icmp ult i64 %inc458, %buffersize.addr.1
  br i1 %cmp462, label %if.then464, label %if.end466

if.then464:                                       ; preds = %if.end457
  %arrayidx465 = getelementptr inbounds i8, ptr %buffer, i64 %inc458
  store i8 36, ptr %arrayidx465, align 1, !tbaa !14
  br label %if.end466

if.end466:                                        ; preds = %if.then464, %if.end457
  %inc467 = add i64 %len.9, 2
  %cmp471 = icmp ult i64 %inc467, %buffersize.addr.1
  br i1 %cmp471, label %if.then473, label %if.end475

if.then473:                                       ; preds = %if.end466
  %arrayidx474 = getelementptr inbounds i8, ptr %buffer, i64 %inc467
  store i8 39, ptr %arrayidx474, align 1, !tbaa !14
  br label %if.end475

if.end475:                                        ; preds = %if.then473, %if.end466
  %inc476 = add i64 %len.9, 3
  br label %do.body480

do.body480:                                       ; preds = %if.end475, %if.end446
  %len.10 = phi i64 [ %inc476, %if.end475 ], [ %len.9, %if.end446 ]
  %pending_shell_escape_end.3 = phi i8 [ 1, %if.end475 ], [ %pending_shell_escape_end.2, %if.end446 ]
  %cmp481 = icmp ult i64 %len.10, %buffersize.addr.1
  br i1 %cmp481, label %if.then483, label %if.end485

if.then483:                                       ; preds = %do.body480
  %arrayidx484 = getelementptr inbounds i8, ptr %buffer, i64 %len.10
  store i8 92, ptr %arrayidx484, align 1, !tbaa !14
  br label %if.end485

if.end485:                                        ; preds = %if.then483, %do.body480
  %inc486 = add i64 %len.10, 1
  %cmp492 = icmp ult i64 %inc486, %buffersize.addr.1
  br i1 %cmp492, label %if.then494, label %if.end499

if.then494:                                       ; preds = %if.end485
  %28 = lshr i8 %c.0, 6
  %29 = or disjoint i8 %28, 48
  %arrayidx498 = getelementptr inbounds i8, ptr %buffer, i64 %inc486
  store i8 %29, ptr %arrayidx498, align 1, !tbaa !14
  br label %if.end499

if.end499:                                        ; preds = %if.then494, %if.end485
  %inc500 = add i64 %len.10, 2
  %cmp504 = icmp ult i64 %inc500, %buffersize.addr.1
  br i1 %cmp504, label %if.then506, label %if.end513

if.then506:                                       ; preds = %if.end499
  %30 = lshr i8 %c.0, 3
  %31 = and i8 %30, 7
  %32 = or disjoint i8 %31, 48
  %arrayidx512 = getelementptr inbounds i8, ptr %buffer, i64 %inc500
  store i8 %32, ptr %arrayidx512, align 1, !tbaa !14
  br label %if.end513

if.end513:                                        ; preds = %if.then506, %if.end499
  %inc514 = add i64 %len.10, 3
  %33 = and i8 %c.0, 7
  %34 = or disjoint i8 %33, 48
  br label %if.end534

if.else521:                                       ; preds = %for.cond437
  %35 = and i8 %is_right_quote.1, 1
  %tobool522.not = icmp eq i8 %35, 0
  br i1 %tobool522.not, label %if.end534, label %do.body524

do.body524:                                       ; preds = %if.else521
  %cmp525 = icmp ult i64 %len.9, %buffersize.addr.1
  br i1 %cmp525, label %if.then527, label %if.end529

if.then527:                                       ; preds = %do.body524
  %arrayidx528 = getelementptr inbounds i8, ptr %buffer, i64 %len.9
  store i8 92, ptr %arrayidx528, align 1, !tbaa !14
  br label %if.end529

if.end529:                                        ; preds = %if.then527, %do.body524
  %inc530 = add i64 %len.9, 1
  br label %if.end534

if.end534:                                        ; preds = %if.end529, %if.else521, %if.end513
  %len.11 = phi i64 [ %inc530, %if.end529 ], [ %len.9, %if.else521 ], [ %inc514, %if.end513 ]
  %pending_shell_escape_end.4 = phi i8 [ %pending_shell_escape_end.2, %if.end529 ], [ %pending_shell_escape_end.2, %if.else521 ], [ %pending_shell_escape_end.3, %if.end513 ]
  %c.1 = phi i8 [ %c.0, %if.end529 ], [ %c.0, %if.else521 ], [ %34, %if.end513 ]
  %is_right_quote.2 = phi i8 [ 0, %if.end529 ], [ %is_right_quote.1, %if.else521 ], [ %is_right_quote.1, %if.end513 ]
  %escaping.1 = phi i8 [ %escaping.0, %if.end529 ], [ %escaping.0, %if.else521 ], [ 1, %if.end513 ]
  %add535 = add i64 %i.1, 1
  %cmp536.not = icmp ugt i64 %add436, %add535
  br i1 %cmp536.not, label %do.body540, label %cleanup581

do.body540:                                       ; preds = %if.end534
  %36 = and i8 %pending_shell_escape_end.4, 1
  %tobool541.not = icmp ne i8 %36, 0
  %37 = and i8 %escaping.1, 1
  %tobool544.not = icmp eq i8 %37, 0
  %or.cond1136 = select i1 %tobool541.not, i1 %tobool544.not, i1 false
  br i1 %or.cond1136, label %do.body546, label %do.body567

do.body546:                                       ; preds = %do.body540
  %cmp547 = icmp ult i64 %len.11, %buffersize.addr.1
  br i1 %cmp547, label %if.then549, label %if.end551

if.then549:                                       ; preds = %do.body546
  %arrayidx550 = getelementptr inbounds i8, ptr %buffer, i64 %len.11
  store i8 39, ptr %arrayidx550, align 1, !tbaa !14
  br label %if.end551

if.end551:                                        ; preds = %if.then549, %do.body546
  %inc552 = add i64 %len.11, 1
  %cmp556 = icmp ult i64 %inc552, %buffersize.addr.1
  br i1 %cmp556, label %if.then558, label %if.end560

if.then558:                                       ; preds = %if.end551
  %arrayidx559 = getelementptr inbounds i8, ptr %buffer, i64 %inc552
  store i8 39, ptr %arrayidx559, align 1, !tbaa !14
  br label %if.end560

if.end560:                                        ; preds = %if.then558, %if.end551
  %inc561 = add i64 %len.11, 2
  br label %do.body567

do.body567:                                       ; preds = %if.end560, %do.body540
  %len.12 = phi i64 [ %inc561, %if.end560 ], [ %len.11, %do.body540 ]
  %pending_shell_escape_end.5 = phi i8 [ 0, %if.end560 ], [ %pending_shell_escape_end.4, %do.body540 ]
  %cmp568 = icmp ult i64 %len.12, %buffersize.addr.1
  br i1 %cmp568, label %if.then570, label %if.end572

if.then570:                                       ; preds = %do.body567
  %arrayidx571 = getelementptr inbounds i8, ptr %buffer, i64 %len.12
  store i8 %c.1, ptr %arrayidx571, align 1, !tbaa !14
  br label %if.end572

if.end572:                                        ; preds = %if.then570, %do.body567
  %inc573 = add i64 %len.12, 1
  %arrayidx577 = getelementptr inbounds i8, ptr %arg, i64 %add535
  %38 = load i8, ptr %arrayidx577, align 1, !tbaa !14
  br label %for.cond437

cleanup581.thread1176:                            ; preds = %if.end426
  %c_and_shell_quote_compat.11186 = zext i1 %printable.2 to i8
  br label %sw.epilog585

cleanup581:                                       ; preds = %if.end534
  %c_and_shell_quote_compat.1 = zext i1 %printable.2 to i8
  br label %do.body655

sw.epilog585:                                     ; preds = %cleanup581.thread1176, %if.end343, %sw.bb308, %sw.bb300, %sw.bb294, %cond.true284, %sw.bb281, %if.end240, %if.then197, %land.lhs.true191, %land.lhs.true187, %sw.bb184, %sw.bb180, %sw.bb179, %if.end169, %land.lhs.true142, %land.lhs.true138, %if.end82, %if.end82, %if.end82, %if.end82, %if.end82, %if.end82, %if.end82, %if.end82, %if.end82, %if.end82, %if.end82, %if.end82, %if.end82, %if.end82, %if.end82, %if.end82, %if.end82, %if.end82, %if.end82, %if.end82, %if.end82, %if.end82, %if.end82, %if.end82, %if.end82, %if.end82, %if.end82, %if.end82, %if.end82, %if.end82, %if.end82, %if.end82, %if.end82, %if.end82, %if.end82, %if.end82, %if.end82, %if.end82, %if.end82, %if.end82, %if.end82, %if.end82, %if.end82, %if.end82, %if.end82, %if.end82, %if.end82, %if.end82, %if.end82, %if.end82, %if.end82, %if.end82, %if.end82, %if.end82, %if.end82, %if.end82, %if.end82, %if.end82, %if.end82, %if.end82, %if.end82, %if.end82, %if.end82, %if.end82, %if.end82, %if.end82, %if.end82, %if.end82, %if.end82, %if.end82, %if.end82
  %i.3 = phi i64 [ %i.0, %if.end343 ], [ %i.0, %sw.bb308 ], [ %i.0, %sw.bb300 ], [ %i.0, %sw.bb294 ], [ %i.0, %cond.true284 ], [ %i.0, %sw.bb179 ], [ %i.0, %if.then197 ], [ %add188, %if.end240 ], [ %i.0, %land.lhs.true191 ], [ %i.0, %land.lhs.true187 ], [ %i.0, %sw.bb184 ], [ %i.0, %sw.bb180 ], [ %i.0, %if.end169 ], [ %i.0, %land.lhs.true142 ], [ %i.0, %land.lhs.true138 ], [ %i.0, %sw.bb281 ], [ %i.0, %if.end82 ], [ %i.0, %if.end82 ], [ %i.0, %if.end82 ], [ %i.0, %if.end82 ], [ %i.0, %if.end82 ], [ %i.0, %if.end82 ], [ %i.0, %if.end82 ], [ %i.0, %if.end82 ], [ %i.0, %if.end82 ], [ %i.0, %if.end82 ], [ %i.0, %if.end82 ], [ %i.0, %if.end82 ], [ %i.0, %if.end82 ], [ %i.0, %if.end82 ], [ %i.0, %if.end82 ], [ %i.0, %if.end82 ], [ %i.0, %if.end82 ], [ %i.0, %if.end82 ], [ %i.0, %if.end82 ], [ %i.0, %if.end82 ], [ %i.0, %if.end82 ], [ %i.0, %if.end82 ], [ %i.0, %if.end82 ], [ %i.0, %if.end82 ], [ %i.0, %if.end82 ], [ %i.0, %if.end82 ], [ %i.0, %if.end82 ], [ %i.0, %if.end82 ], [ %i.0, %if.end82 ], [ %i.0, %if.end82 ], [ %i.0, %if.end82 ], [ %i.0, %if.end82 ], [ %i.0, %if.end82 ], [ %i.0, %if.end82 ], [ %i.0, %if.end82 ], [ %i.0, %if.end82 ], [ %i.0, %if.end82 ], [ %i.0, %if.end82 ], [ %i.0, %if.end82 ], [ %i.0, %if.end82 ], [ %i.0, %if.end82 ], [ %i.0, %if.end82 ], [ %i.0, %if.end82 ], [ %i.0, %if.end82 ], [ %i.0, %if.end82 ], [ %i.0, %if.end82 ], [ %i.0, %if.end82 ], [ %i.0, %if.end82 ], [ %i.0, %if.end82 ], [ %i.0, %if.end82 ], [ %i.0, %if.end82 ], [ %i.0, %if.end82 ], [ %i.0, %if.end82 ], [ %i.0, %if.end82 ], [ %i.0, %if.end82 ], [ %i.0, %if.end82 ], [ %i.0, %if.end82 ], [ %i.0, %if.end82 ], [ %i.0, %if.end82 ], [ %i.0, %if.end82 ], [ %i.0, %if.end82 ], [ %i.0, %if.end82 ], [ %i.0, %if.end82 ], [ %i.0, %if.end82 ], [ %i.0, %if.end82 ], [ %i.0, %if.end82 ], [ %i.0, %if.end82 ], [ %i.0, %if.end82 ], [ %i.0, %if.end82 ], [ %i.0, %if.end82 ], [ %i.0, %if.end82 ], [ %i.0, %cleanup581.thread1176 ]
  %len.15 = phi i64 [ %inc344, %if.end343 ], [ %len.6, %sw.bb308 ], [ %len.6, %sw.bb300 ], [ %len.6, %sw.bb294 ], [ %len.6, %cond.true284 ], [ %len.6, %sw.bb179 ], [ %len.6, %if.then197 ], [ %inc241, %if.end240 ], [ %len.6, %land.lhs.true191 ], [ %len.6, %land.lhs.true187 ], [ %len.6, %sw.bb184 ], [ %len.6, %sw.bb180 ], [ %inc170, %if.end169 ], [ %inc131, %land.lhs.true142 ], [ %inc131, %land.lhs.true138 ], [ %len.6, %sw.bb281 ], [ %len.6, %if.end82 ], [ %len.6, %if.end82 ], [ %len.6, %if.end82 ], [ %len.6, %if.end82 ], [ %len.6, %if.end82 ], [ %len.6, %if.end82 ], [ %len.6, %if.end82 ], [ %len.6, %if.end82 ], [ %len.6, %if.end82 ], [ %len.6, %if.end82 ], [ %len.6, %if.end82 ], [ %len.6, %if.end82 ], [ %len.6, %if.end82 ], [ %len.6, %if.end82 ], [ %len.6, %if.end82 ], [ %len.6, %if.end82 ], [ %len.6, %if.end82 ], [ %len.6, %if.end82 ], [ %len.6, %if.end82 ], [ %len.6, %if.end82 ], [ %len.6, %if.end82 ], [ %len.6, %if.end82 ], [ %len.6, %if.end82 ], [ %len.6, %if.end82 ], [ %len.6, %if.end82 ], [ %len.6, %if.end82 ], [ %len.6, %if.end82 ], [ %len.6, %if.end82 ], [ %len.6, %if.end82 ], [ %len.6, %if.end82 ], [ %len.6, %if.end82 ], [ %len.6, %if.end82 ], [ %len.6, %if.end82 ], [ %len.6, %if.end82 ], [ %len.6, %if.end82 ], [ %len.6, %if.end82 ], [ %len.6, %if.end82 ], [ %len.6, %if.end82 ], [ %len.6, %if.end82 ], [ %len.6, %if.end82 ], [ %len.6, %if.end82 ], [ %len.6, %if.end82 ], [ %len.6, %if.end82 ], [ %len.6, %if.end82 ], [ %len.6, %if.end82 ], [ %len.6, %if.end82 ], [ %len.6, %if.end82 ], [ %len.6, %if.end82 ], [ %len.6, %if.end82 ], [ %len.6, %if.end82 ], [ %len.6, %if.end82 ], [ %len.6, %if.end82 ], [ %len.6, %if.end82 ], [ %len.6, %if.end82 ], [ %len.6, %if.end82 ], [ %len.6, %if.end82 ], [ %len.6, %if.end82 ], [ %len.6, %if.end82 ], [ %len.6, %if.end82 ], [ %len.6, %if.end82 ], [ %len.6, %if.end82 ], [ %len.6, %if.end82 ], [ %len.6, %if.end82 ], [ %len.6, %if.end82 ], [ %len.6, %if.end82 ], [ %len.6, %if.end82 ], [ %len.6, %if.end82 ], [ %len.6, %if.end82 ], [ %len.6, %if.end82 ], [ %len.6, %if.end82 ], [ %len.6, %if.end82 ], [ %len.6, %cleanup581.thread1176 ]
  %orig_buffersize.3 = phi i64 [ %spec.select1131, %if.end343 ], [ %orig_buffersize.1, %sw.bb308 ], [ %orig_buffersize.1, %sw.bb300 ], [ %orig_buffersize.1, %sw.bb294 ], [ %orig_buffersize.1, %cond.true284 ], [ %orig_buffersize.1, %sw.bb179 ], [ %orig_buffersize.1, %if.then197 ], [ %orig_buffersize.1, %if.end240 ], [ %orig_buffersize.1, %land.lhs.true191 ], [ %orig_buffersize.1, %land.lhs.true187 ], [ %orig_buffersize.1, %sw.bb184 ], [ %orig_buffersize.1, %sw.bb180 ], [ %orig_buffersize.1, %if.end169 ], [ %orig_buffersize.1, %land.lhs.true142 ], [ %orig_buffersize.1, %land.lhs.true138 ], [ %orig_buffersize.1, %sw.bb281 ], [ %orig_buffersize.1, %if.end82 ], [ %orig_buffersize.1, %if.end82 ], [ %orig_buffersize.1, %if.end82 ], [ %orig_buffersize.1, %if.end82 ], [ %orig_buffersize.1, %if.end82 ], [ %orig_buffersize.1, %if.end82 ], [ %orig_buffersize.1, %if.end82 ], [ %orig_buffersize.1, %if.end82 ], [ %orig_buffersize.1, %if.end82 ], [ %orig_buffersize.1, %if.end82 ], [ %orig_buffersize.1, %if.end82 ], [ %orig_buffersize.1, %if.end82 ], [ %orig_buffersize.1, %if.end82 ], [ %orig_buffersize.1, %if.end82 ], [ %orig_buffersize.1, %if.end82 ], [ %orig_buffersize.1, %if.end82 ], [ %orig_buffersize.1, %if.end82 ], [ %orig_buffersize.1, %if.end82 ], [ %orig_buffersize.1, %if.end82 ], [ %orig_buffersize.1, %if.end82 ], [ %orig_buffersize.1, %if.end82 ], [ %orig_buffersize.1, %if.end82 ], [ %orig_buffersize.1, %if.end82 ], [ %orig_buffersize.1, %if.end82 ], [ %orig_buffersize.1, %if.end82 ], [ %orig_buffersize.1, %if.end82 ], [ %orig_buffersize.1, %if.end82 ], [ %orig_buffersize.1, %if.end82 ], [ %orig_buffersize.1, %if.end82 ], [ %orig_buffersize.1, %if.end82 ], [ %orig_buffersize.1, %if.end82 ], [ %orig_buffersize.1, %if.end82 ], [ %orig_buffersize.1, %if.end82 ], [ %orig_buffersize.1, %if.end82 ], [ %orig_buffersize.1, %if.end82 ], [ %orig_buffersize.1, %if.end82 ], [ %orig_buffersize.1, %if.end82 ], [ %orig_buffersize.1, %if.end82 ], [ %orig_buffersize.1, %if.end82 ], [ %orig_buffersize.1, %if.end82 ], [ %orig_buffersize.1, %if.end82 ], [ %orig_buffersize.1, %if.end82 ], [ %orig_buffersize.1, %if.end82 ], [ %orig_buffersize.1, %if.end82 ], [ %orig_buffersize.1, %if.end82 ], [ %orig_buffersize.1, %if.end82 ], [ %orig_buffersize.1, %if.end82 ], [ %orig_buffersize.1, %if.end82 ], [ %orig_buffersize.1, %if.end82 ], [ %orig_buffersize.1, %if.end82 ], [ %orig_buffersize.1, %if.end82 ], [ %orig_buffersize.1, %if.end82 ], [ %orig_buffersize.1, %if.end82 ], [ %orig_buffersize.1, %if.end82 ], [ %orig_buffersize.1, %if.end82 ], [ %orig_buffersize.1, %if.end82 ], [ %orig_buffersize.1, %if.end82 ], [ %orig_buffersize.1, %if.end82 ], [ %orig_buffersize.1, %if.end82 ], [ %orig_buffersize.1, %if.end82 ], [ %orig_buffersize.1, %if.end82 ], [ %orig_buffersize.1, %if.end82 ], [ %orig_buffersize.1, %if.end82 ], [ %orig_buffersize.1, %if.end82 ], [ %orig_buffersize.1, %if.end82 ], [ %orig_buffersize.1, %if.end82 ], [ %orig_buffersize.1, %if.end82 ], [ %orig_buffersize.1, %if.end82 ], [ %orig_buffersize.1, %if.end82 ], [ %orig_buffersize.1, %if.end82 ], [ %orig_buffersize.1, %if.end82 ], [ %orig_buffersize.1, %cleanup581.thread1176 ]
  %argsize.addr.7 = phi i64 [ %argsize.addr.3, %if.end343 ], [ %argsize.addr.3, %sw.bb308 ], [ %argsize.addr.3, %sw.bb300 ], [ %argsize.addr.3, %sw.bb294 ], [ -1, %cond.true284 ], [ %argsize.addr.3, %sw.bb179 ], [ %argsize.addr.3, %if.then197 ], [ %argsize.addr.3, %if.end240 ], [ %argsize.addr.3, %land.lhs.true191 ], [ %argsize.addr.3, %land.lhs.true187 ], [ %argsize.addr.3, %sw.bb184 ], [ %argsize.addr.3, %sw.bb180 ], [ %argsize.addr.3, %if.end169 ], [ %argsize.addr.3, %land.lhs.true142 ], [ %argsize.addr.3, %land.lhs.true138 ], [ %argsize.addr.3, %sw.bb281 ], [ %argsize.addr.3, %if.end82 ], [ %argsize.addr.3, %if.end82 ], [ %argsize.addr.3, %if.end82 ], [ %argsize.addr.3, %if.end82 ], [ %argsize.addr.3, %if.end82 ], [ %argsize.addr.3, %if.end82 ], [ %argsize.addr.3, %if.end82 ], [ %argsize.addr.3, %if.end82 ], [ %argsize.addr.3, %if.end82 ], [ %argsize.addr.3, %if.end82 ], [ %argsize.addr.3, %if.end82 ], [ %argsize.addr.3, %if.end82 ], [ %argsize.addr.3, %if.end82 ], [ %argsize.addr.3, %if.end82 ], [ %argsize.addr.3, %if.end82 ], [ %argsize.addr.3, %if.end82 ], [ %argsize.addr.3, %if.end82 ], [ %argsize.addr.3, %if.end82 ], [ %argsize.addr.3, %if.end82 ], [ %argsize.addr.3, %if.end82 ], [ %argsize.addr.3, %if.end82 ], [ %argsize.addr.3, %if.end82 ], [ %argsize.addr.3, %if.end82 ], [ %argsize.addr.3, %if.end82 ], [ %argsize.addr.3, %if.end82 ], [ %argsize.addr.3, %if.end82 ], [ %argsize.addr.3, %if.end82 ], [ %argsize.addr.3, %if.end82 ], [ %argsize.addr.3, %if.end82 ], [ %argsize.addr.3, %if.end82 ], [ %argsize.addr.3, %if.end82 ], [ %argsize.addr.3, %if.end82 ], [ %argsize.addr.3, %if.end82 ], [ %argsize.addr.3, %if.end82 ], [ %argsize.addr.3, %if.end82 ], [ %argsize.addr.3, %if.end82 ], [ %argsize.addr.3, %if.end82 ], [ %argsize.addr.3, %if.end82 ], [ %argsize.addr.3, %if.end82 ], [ %argsize.addr.3, %if.end82 ], [ %argsize.addr.3, %if.end82 ], [ %argsize.addr.3, %if.end82 ], [ %argsize.addr.3, %if.end82 ], [ %argsize.addr.3, %if.end82 ], [ %argsize.addr.3, %if.end82 ], [ %argsize.addr.3, %if.end82 ], [ %argsize.addr.3, %if.end82 ], [ %argsize.addr.3, %if.end82 ], [ %argsize.addr.3, %if.end82 ], [ %argsize.addr.3, %if.end82 ], [ %argsize.addr.3, %if.end82 ], [ %argsize.addr.3, %if.end82 ], [ %argsize.addr.3, %if.end82 ], [ %argsize.addr.3, %if.end82 ], [ %argsize.addr.3, %if.end82 ], [ %argsize.addr.3, %if.end82 ], [ %argsize.addr.3, %if.end82 ], [ %argsize.addr.3, %if.end82 ], [ %argsize.addr.3, %if.end82 ], [ %argsize.addr.3, %if.end82 ], [ %argsize.addr.3, %if.end82 ], [ %argsize.addr.3, %if.end82 ], [ %argsize.addr.3, %if.end82 ], [ %argsize.addr.3, %if.end82 ], [ %argsize.addr.3, %if.end82 ], [ %argsize.addr.3, %if.end82 ], [ %argsize.addr.3, %if.end82 ], [ %argsize.addr.3, %if.end82 ], [ %argsize.addr.3, %if.end82 ], [ %argsize.addr.3, %if.end82 ], [ %argsize.addr.3, %if.end82 ], [ %argsize.addr.5, %cleanup581.thread1176 ]
  %encountered_single_quote.2 = phi i8 [ 1, %if.end343 ], [ 1, %sw.bb308 ], [ %encountered_single_quote.1, %sw.bb300 ], [ %encountered_single_quote.1, %sw.bb294 ], [ %encountered_single_quote.1, %cond.true284 ], [ %encountered_single_quote.1, %sw.bb179 ], [ %encountered_single_quote.1, %if.then197 ], [ %encountered_single_quote.1, %if.end240 ], [ %encountered_single_quote.1, %land.lhs.true191 ], [ %encountered_single_quote.1, %land.lhs.true187 ], [ %encountered_single_quote.1, %sw.bb184 ], [ %encountered_single_quote.1, %sw.bb180 ], [ %encountered_single_quote.1, %if.end169 ], [ %encountered_single_quote.1, %land.lhs.true142 ], [ %encountered_single_quote.1, %land.lhs.true138 ], [ %encountered_single_quote.1, %sw.bb281 ], [ %encountered_single_quote.1, %if.end82 ], [ %encountered_single_quote.1, %if.end82 ], [ %encountered_single_quote.1, %if.end82 ], [ %encountered_single_quote.1, %if.end82 ], [ %encountered_single_quote.1, %if.end82 ], [ %encountered_single_quote.1, %if.end82 ], [ %encountered_single_quote.1, %if.end82 ], [ %encountered_single_quote.1, %if.end82 ], [ %encountered_single_quote.1, %if.end82 ], [ %encountered_single_quote.1, %if.end82 ], [ %encountered_single_quote.1, %if.end82 ], [ %encountered_single_quote.1, %if.end82 ], [ %encountered_single_quote.1, %if.end82 ], [ %encountered_single_quote.1, %if.end82 ], [ %encountered_single_quote.1, %if.end82 ], [ %encountered_single_quote.1, %if.end82 ], [ %encountered_single_quote.1, %if.end82 ], [ %encountered_single_quote.1, %if.end82 ], [ %encountered_single_quote.1, %if.end82 ], [ %encountered_single_quote.1, %if.end82 ], [ %encountered_single_quote.1, %if.end82 ], [ %encountered_single_quote.1, %if.end82 ], [ %encountered_single_quote.1, %if.end82 ], [ %encountered_single_quote.1, %if.end82 ], [ %encountered_single_quote.1, %if.end82 ], [ %encountered_single_quote.1, %if.end82 ], [ %encountered_single_quote.1, %if.end82 ], [ %encountered_single_quote.1, %if.end82 ], [ %encountered_single_quote.1, %if.end82 ], [ %encountered_single_quote.1, %if.end82 ], [ %encountered_single_quote.1, %if.end82 ], [ %encountered_single_quote.1, %if.end82 ], [ %encountered_single_quote.1, %if.end82 ], [ %encountered_single_quote.1, %if.end82 ], [ %encountered_single_quote.1, %if.end82 ], [ %encountered_single_quote.1, %if.end82 ], [ %encountered_single_quote.1, %if.end82 ], [ %encountered_single_quote.1, %if.end82 ], [ %encountered_single_quote.1, %if.end82 ], [ %encountered_single_quote.1, %if.end82 ], [ %encountered_single_quote.1, %if.end82 ], [ %encountered_single_quote.1, %if.end82 ], [ %encountered_single_quote.1, %if.end82 ], [ %encountered_single_quote.1, %if.end82 ], [ %encountered_single_quote.1, %if.end82 ], [ %encountered_single_quote.1, %if.end82 ], [ %encountered_single_quote.1, %if.end82 ], [ %encountered_single_quote.1, %if.end82 ], [ %encountered_single_quote.1, %if.end82 ], [ %encountered_single_quote.1, %if.end82 ], [ %encountered_single_quote.1, %if.end82 ], [ %encountered_single_quote.1, %if.end82 ], [ %encountered_single_quote.1, %if.end82 ], [ %encountered_single_quote.1, %if.end82 ], [ %encountered_single_quote.1, %if.end82 ], [ %encountered_single_quote.1, %if.end82 ], [ %encountered_single_quote.1, %if.end82 ], [ %encountered_single_quote.1, %if.end82 ], [ %encountered_single_quote.1, %if.end82 ], [ %encountered_single_quote.1, %if.end82 ], [ %encountered_single_quote.1, %if.end82 ], [ %encountered_single_quote.1, %if.end82 ], [ %encountered_single_quote.1, %if.end82 ], [ %encountered_single_quote.1, %if.end82 ], [ %encountered_single_quote.1, %if.end82 ], [ %encountered_single_quote.1, %if.end82 ], [ %encountered_single_quote.1, %if.end82 ], [ %encountered_single_quote.1, %if.end82 ], [ %encountered_single_quote.1, %if.end82 ], [ %encountered_single_quote.1, %if.end82 ], [ %encountered_single_quote.1, %if.end82 ], [ %encountered_single_quote.1, %cleanup581.thread1176 ]
  %pending_shell_escape_end.8 = phi i8 [ 0, %if.end343 ], [ %pending_shell_escape_end.0, %sw.bb308 ], [ %pending_shell_escape_end.0, %sw.bb300 ], [ %pending_shell_escape_end.0, %sw.bb294 ], [ %pending_shell_escape_end.0, %cond.true284 ], [ %pending_shell_escape_end.0, %sw.bb179 ], [ %pending_shell_escape_end.0, %if.then197 ], [ %pending_shell_escape_end.0, %if.end240 ], [ %pending_shell_escape_end.0, %land.lhs.true191 ], [ %pending_shell_escape_end.0, %land.lhs.true187 ], [ %pending_shell_escape_end.0, %sw.bb184 ], [ %pending_shell_escape_end.0, %sw.bb180 ], [ %pending_shell_escape_end.1, %if.end169 ], [ %pending_shell_escape_end.1, %land.lhs.true142 ], [ %pending_shell_escape_end.1, %land.lhs.true138 ], [ %pending_shell_escape_end.0, %sw.bb281 ], [ %pending_shell_escape_end.0, %if.end82 ], [ %pending_shell_escape_end.0, %if.end82 ], [ %pending_shell_escape_end.0, %if.end82 ], [ %pending_shell_escape_end.0, %if.end82 ], [ %pending_shell_escape_end.0, %if.end82 ], [ %pending_shell_escape_end.0, %if.end82 ], [ %pending_shell_escape_end.0, %if.end82 ], [ %pending_shell_escape_end.0, %if.end82 ], [ %pending_shell_escape_end.0, %if.end82 ], [ %pending_shell_escape_end.0, %if.end82 ], [ %pending_shell_escape_end.0, %if.end82 ], [ %pending_shell_escape_end.0, %if.end82 ], [ %pending_shell_escape_end.0, %if.end82 ], [ %pending_shell_escape_end.0, %if.end82 ], [ %pending_shell_escape_end.0, %if.end82 ], [ %pending_shell_escape_end.0, %if.end82 ], [ %pending_shell_escape_end.0, %if.end82 ], [ %pending_shell_escape_end.0, %if.end82 ], [ %pending_shell_escape_end.0, %if.end82 ], [ %pending_shell_escape_end.0, %if.end82 ], [ %pending_shell_escape_end.0, %if.end82 ], [ %pending_shell_escape_end.0, %if.end82 ], [ %pending_shell_escape_end.0, %if.end82 ], [ %pending_shell_escape_end.0, %if.end82 ], [ %pending_shell_escape_end.0, %if.end82 ], [ %pending_shell_escape_end.0, %if.end82 ], [ %pending_shell_escape_end.0, %if.end82 ], [ %pending_shell_escape_end.0, %if.end82 ], [ %pending_shell_escape_end.0, %if.end82 ], [ %pending_shell_escape_end.0, %if.end82 ], [ %pending_shell_escape_end.0, %if.end82 ], [ %pending_shell_escape_end.0, %if.end82 ], [ %pending_shell_escape_end.0, %if.end82 ], [ %pending_shell_escape_end.0, %if.end82 ], [ %pending_shell_escape_end.0, %if.end82 ], [ %pending_shell_escape_end.0, %if.end82 ], [ %pending_shell_escape_end.0, %if.end82 ], [ %pending_shell_escape_end.0, %if.end82 ], [ %pending_shell_escape_end.0, %if.end82 ], [ %pending_shell_escape_end.0, %if.end82 ], [ %pending_shell_escape_end.0, %if.end82 ], [ %pending_shell_escape_end.0, %if.end82 ], [ %pending_shell_escape_end.0, %if.end82 ], [ %pending_shell_escape_end.0, %if.end82 ], [ %pending_shell_escape_end.0, %if.end82 ], [ %pending_shell_escape_end.0, %if.end82 ], [ %pending_shell_escape_end.0, %if.end82 ], [ %pending_shell_escape_end.0, %if.end82 ], [ %pending_shell_escape_end.0, %if.end82 ], [ %pending_shell_escape_end.0, %if.end82 ], [ %pending_shell_escape_end.0, %if.end82 ], [ %pending_shell_escape_end.0, %if.end82 ], [ %pending_shell_escape_end.0, %if.end82 ], [ %pending_shell_escape_end.0, %if.end82 ], [ %pending_shell_escape_end.0, %if.end82 ], [ %pending_shell_escape_end.0, %if.end82 ], [ %pending_shell_escape_end.0, %if.end82 ], [ %pending_shell_escape_end.0, %if.end82 ], [ %pending_shell_escape_end.0, %if.end82 ], [ %pending_shell_escape_end.0, %if.end82 ], [ %pending_shell_escape_end.0, %if.end82 ], [ %pending_shell_escape_end.0, %if.end82 ], [ %pending_shell_escape_end.0, %if.end82 ], [ %pending_shell_escape_end.0, %if.end82 ], [ %pending_shell_escape_end.0, %if.end82 ], [ %pending_shell_escape_end.0, %if.end82 ], [ %pending_shell_escape_end.0, %if.end82 ], [ %pending_shell_escape_end.0, %if.end82 ], [ %pending_shell_escape_end.0, %if.end82 ], [ %pending_shell_escape_end.0, %if.end82 ], [ %pending_shell_escape_end.0, %if.end82 ], [ %pending_shell_escape_end.0, %cleanup581.thread1176 ]
  %c.4 = phi i8 [ 39, %if.end343 ], [ 39, %sw.bb308 ], [ %12, %sw.bb300 ], [ %12, %sw.bb294 ], [ %12, %cond.true284 ], [ 63, %sw.bb179 ], [ 63, %if.then197 ], [ %17, %if.end240 ], [ 63, %land.lhs.true191 ], [ 63, %land.lhs.true187 ], [ 63, %sw.bb184 ], [ 63, %sw.bb180 ], [ 48, %if.end169 ], [ 48, %land.lhs.true142 ], [ 48, %land.lhs.true138 ], [ %12, %sw.bb281 ], [ %12, %if.end82 ], [ %12, %if.end82 ], [ %12, %if.end82 ], [ %12, %if.end82 ], [ %12, %if.end82 ], [ %12, %if.end82 ], [ %12, %if.end82 ], [ %12, %if.end82 ], [ %12, %if.end82 ], [ %12, %if.end82 ], [ %12, %if.end82 ], [ %12, %if.end82 ], [ %12, %if.end82 ], [ %12, %if.end82 ], [ %12, %if.end82 ], [ %12, %if.end82 ], [ %12, %if.end82 ], [ %12, %if.end82 ], [ %12, %if.end82 ], [ %12, %if.end82 ], [ %12, %if.end82 ], [ %12, %if.end82 ], [ %12, %if.end82 ], [ %12, %if.end82 ], [ %12, %if.end82 ], [ %12, %if.end82 ], [ %12, %if.end82 ], [ %12, %if.end82 ], [ %12, %if.end82 ], [ %12, %if.end82 ], [ %12, %if.end82 ], [ %12, %if.end82 ], [ %12, %if.end82 ], [ %12, %if.end82 ], [ %12, %if.end82 ], [ %12, %if.end82 ], [ %12, %if.end82 ], [ %12, %if.end82 ], [ %12, %if.end82 ], [ %12, %if.end82 ], [ %12, %if.end82 ], [ %12, %if.end82 ], [ %12, %if.end82 ], [ %12, %if.end82 ], [ %12, %if.end82 ], [ %12, %if.end82 ], [ %12, %if.end82 ], [ %12, %if.end82 ], [ %12, %if.end82 ], [ %12, %if.end82 ], [ %12, %if.end82 ], [ %12, %if.end82 ], [ %12, %if.end82 ], [ %12, %if.end82 ], [ %12, %if.end82 ], [ %12, %if.end82 ], [ %12, %if.end82 ], [ %12, %if.end82 ], [ %12, %if.end82 ], [ %12, %if.end82 ], [ %12, %if.end82 ], [ %12, %if.end82 ], [ %12, %if.end82 ], [ %12, %if.end82 ], [ %12, %if.end82 ], [ %12, %if.end82 ], [ %12, %if.end82 ], [ %12, %if.end82 ], [ %12, %if.end82 ], [ %12, %if.end82 ], [ %12, %if.end82 ], [ %12, %cleanup581.thread1176 ]
  %escaping.4 = phi i8 [ 0, %if.end343 ], [ 0, %sw.bb308 ], [ 0, %sw.bb300 ], [ 0, %sw.bb294 ], [ 0, %cond.true284 ], [ 0, %sw.bb179 ], [ 0, %if.then197 ], [ 0, %if.end240 ], [ 0, %land.lhs.true191 ], [ 0, %land.lhs.true187 ], [ 0, %sw.bb184 ], [ 0, %sw.bb180 ], [ 1, %if.end169 ], [ 1, %land.lhs.true142 ], [ 1, %land.lhs.true138 ], [ 0, %sw.bb281 ], [ 0, %if.end82 ], [ 0, %if.end82 ], [ 0, %if.end82 ], [ 0, %if.end82 ], [ 0, %if.end82 ], [ 0, %if.end82 ], [ 0, %if.end82 ], [ 0, %if.end82 ], [ 0, %if.end82 ], [ 0, %if.end82 ], [ 0, %if.end82 ], [ 0, %if.end82 ], [ 0, %if.end82 ], [ 0, %if.end82 ], [ 0, %if.end82 ], [ 0, %if.end82 ], [ 0, %if.end82 ], [ 0, %if.end82 ], [ 0, %if.end82 ], [ 0, %if.end82 ], [ 0, %if.end82 ], [ 0, %if.end82 ], [ 0, %if.end82 ], [ 0, %if.end82 ], [ 0, %if.end82 ], [ 0, %if.end82 ], [ 0, %if.end82 ], [ 0, %if.end82 ], [ 0, %if.end82 ], [ 0, %if.end82 ], [ 0, %if.end82 ], [ 0, %if.end82 ], [ 0, %if.end82 ], [ 0, %if.end82 ], [ 0, %if.end82 ], [ 0, %if.end82 ], [ 0, %if.end82 ], [ 0, %if.end82 ], [ 0, %if.end82 ], [ 0, %if.end82 ], [ 0, %if.end82 ], [ 0, %if.end82 ], [ 0, %if.end82 ], [ 0, %if.end82 ], [ 0, %if.end82 ], [ 0, %if.end82 ], [ 0, %if.end82 ], [ 0, %if.end82 ], [ 0, %if.end82 ], [ 0, %if.end82 ], [ 0, %if.end82 ], [ 0, %if.end82 ], [ 0, %if.end82 ], [ 0, %if.end82 ], [ 0, %if.end82 ], [ 0, %if.end82 ], [ 0, %if.end82 ], [ 0, %if.end82 ], [ 0, %if.end82 ], [ 0, %if.end82 ], [ 0, %if.end82 ], [ 0, %if.end82 ], [ 0, %if.end82 ], [ 0, %if.end82 ], [ 0, %if.end82 ], [ 0, %if.end82 ], [ 0, %if.end82 ], [ 0, %if.end82 ], [ 0, %if.end82 ], [ 0, %if.end82 ], [ 0, %if.end82 ], [ 0, %cleanup581.thread1176 ]
  %c_and_shell_quote_compat.2 = phi i8 [ 1, %if.end343 ], [ 1, %sw.bb308 ], [ %c_and_shell_quote_compat.0, %sw.bb300 ], [ 0, %sw.bb294 ], [ 0, %cond.true284 ], [ 0, %sw.bb179 ], [ 0, %if.then197 ], [ 0, %if.end240 ], [ 0, %land.lhs.true191 ], [ 0, %land.lhs.true187 ], [ 0, %sw.bb184 ], [ 0, %sw.bb180 ], [ 0, %if.end169 ], [ 0, %land.lhs.true142 ], [ 0, %land.lhs.true138 ], [ 0, %sw.bb281 ], [ 1, %if.end82 ], [ 1, %if.end82 ], [ 1, %if.end82 ], [ 1, %if.end82 ], [ 1, %if.end82 ], [ 1, %if.end82 ], [ 1, %if.end82 ], [ 1, %if.end82 ], [ 1, %if.end82 ], [ 1, %if.end82 ], [ 1, %if.end82 ], [ 1, %if.end82 ], [ 1, %if.end82 ], [ 1, %if.end82 ], [ 1, %if.end82 ], [ 1, %if.end82 ], [ 1, %if.end82 ], [ 1, %if.end82 ], [ 1, %if.end82 ], [ 1, %if.end82 ], [ 1, %if.end82 ], [ 1, %if.end82 ], [ 1, %if.end82 ], [ 1, %if.end82 ], [ 1, %if.end82 ], [ 1, %if.end82 ], [ 1, %if.end82 ], [ 1, %if.end82 ], [ 1, %if.end82 ], [ 1, %if.end82 ], [ 1, %if.end82 ], [ 1, %if.end82 ], [ 1, %if.end82 ], [ 1, %if.end82 ], [ 1, %if.end82 ], [ 1, %if.end82 ], [ 1, %if.end82 ], [ 1, %if.end82 ], [ 1, %if.end82 ], [ 1, %if.end82 ], [ 1, %if.end82 ], [ 1, %if.end82 ], [ 1, %if.end82 ], [ 1, %if.end82 ], [ 1, %if.end82 ], [ 1, %if.end82 ], [ 1, %if.end82 ], [ 1, %if.end82 ], [ 1, %if.end82 ], [ 1, %if.end82 ], [ 1, %if.end82 ], [ 1, %if.end82 ], [ 1, %if.end82 ], [ 1, %if.end82 ], [ 1, %if.end82 ], [ 1, %if.end82 ], [ 1, %if.end82 ], [ 1, %if.end82 ], [ 1, %if.end82 ], [ 1, %if.end82 ], [ 1, %if.end82 ], [ 1, %if.end82 ], [ 1, %if.end82 ], [ 1, %if.end82 ], [ 1, %if.end82 ], [ 1, %if.end82 ], [ 1, %if.end82 ], [ 1, %if.end82 ], [ 1, %if.end82 ], [ 1, %if.end82 ], [ 1, %if.end82 ], [ %c_and_shell_quote_compat.11186, %cleanup581.thread1176 ]
  %buffersize.addr.3 = phi i64 [ %spec.select1132, %if.end343 ], [ %buffersize.addr.1, %sw.bb308 ], [ %buffersize.addr.1, %sw.bb300 ], [ %buffersize.addr.1, %sw.bb294 ], [ %buffersize.addr.1, %cond.true284 ], [ %buffersize.addr.1, %sw.bb179 ], [ %buffersize.addr.1, %if.then197 ], [ %buffersize.addr.1, %if.end240 ], [ %buffersize.addr.1, %land.lhs.true191 ], [ %buffersize.addr.1, %land.lhs.true187 ], [ %buffersize.addr.1, %sw.bb184 ], [ %buffersize.addr.1, %sw.bb180 ], [ %buffersize.addr.1, %if.end169 ], [ %buffersize.addr.1, %land.lhs.true142 ], [ %buffersize.addr.1, %land.lhs.true138 ], [ %buffersize.addr.1, %sw.bb281 ], [ %buffersize.addr.1, %if.end82 ], [ %buffersize.addr.1, %if.end82 ], [ %buffersize.addr.1, %if.end82 ], [ %buffersize.addr.1, %if.end82 ], [ %buffersize.addr.1, %if.end82 ], [ %buffersize.addr.1, %if.end82 ], [ %buffersize.addr.1, %if.end82 ], [ %buffersize.addr.1, %if.end82 ], [ %buffersize.addr.1, %if.end82 ], [ %buffersize.addr.1, %if.end82 ], [ %buffersize.addr.1, %if.end82 ], [ %buffersize.addr.1, %if.end82 ], [ %buffersize.addr.1, %if.end82 ], [ %buffersize.addr.1, %if.end82 ], [ %buffersize.addr.1, %if.end82 ], [ %buffersize.addr.1, %if.end82 ], [ %buffersize.addr.1, %if.end82 ], [ %buffersize.addr.1, %if.end82 ], [ %buffersize.addr.1, %if.end82 ], [ %buffersize.addr.1, %if.end82 ], [ %buffersize.addr.1, %if.end82 ], [ %buffersize.addr.1, %if.end82 ], [ %buffersize.addr.1, %if.end82 ], [ %buffersize.addr.1, %if.end82 ], [ %buffersize.addr.1, %if.end82 ], [ %buffersize.addr.1, %if.end82 ], [ %buffersize.addr.1, %if.end82 ], [ %buffersize.addr.1, %if.end82 ], [ %buffersize.addr.1, %if.end82 ], [ %buffersize.addr.1, %if.end82 ], [ %buffersize.addr.1, %if.end82 ], [ %buffersize.addr.1, %if.end82 ], [ %buffersize.addr.1, %if.end82 ], [ %buffersize.addr.1, %if.end82 ], [ %buffersize.addr.1, %if.end82 ], [ %buffersize.addr.1, %if.end82 ], [ %buffersize.addr.1, %if.end82 ], [ %buffersize.addr.1, %if.end82 ], [ %buffersize.addr.1, %if.end82 ], [ %buffersize.addr.1, %if.end82 ], [ %buffersize.addr.1, %if.end82 ], [ %buffersize.addr.1, %if.end82 ], [ %buffersize.addr.1, %if.end82 ], [ %buffersize.addr.1, %if.end82 ], [ %buffersize.addr.1, %if.end82 ], [ %buffersize.addr.1, %if.end82 ], [ %buffersize.addr.1, %if.end82 ], [ %buffersize.addr.1, %if.end82 ], [ %buffersize.addr.1, %if.end82 ], [ %buffersize.addr.1, %if.end82 ], [ %buffersize.addr.1, %if.end82 ], [ %buffersize.addr.1, %if.end82 ], [ %buffersize.addr.1, %if.end82 ], [ %buffersize.addr.1, %if.end82 ], [ %buffersize.addr.1, %if.end82 ], [ %buffersize.addr.1, %if.end82 ], [ %buffersize.addr.1, %if.end82 ], [ %buffersize.addr.1, %if.end82 ], [ %buffersize.addr.1, %if.end82 ], [ %buffersize.addr.1, %if.end82 ], [ %buffersize.addr.1, %if.end82 ], [ %buffersize.addr.1, %if.end82 ], [ %buffersize.addr.1, %if.end82 ], [ %buffersize.addr.1, %if.end82 ], [ %buffersize.addr.1, %if.end82 ], [ %buffersize.addr.1, %if.end82 ], [ %buffersize.addr.1, %if.end82 ], [ %buffersize.addr.1, %if.end82 ], [ %buffersize.addr.1, %if.end82 ], [ %buffersize.addr.1, %if.end82 ], [ %buffersize.addr.1, %if.end82 ], [ %buffersize.addr.1, %cleanup581.thread1176 ]
  br i1 %or.cond, label %land.lhs.true594, label %lor.lhs.false591

lor.lhs.false591:                                 ; preds = %sw.epilog585, %c_escape, %if.end261, %if.else, %if.end130
  %buffersize.addr.31225 = phi i64 [ %buffersize.addr.3, %sw.epilog585 ], [ %buffersize.addr.1, %if.end130 ], [ %buffersize.addr.1, %c_escape ], [ %buffersize.addr.1, %if.else ], [ %buffersize.addr.1, %if.end261 ]
  %c_and_shell_quote_compat.21222 = phi i8 [ %c_and_shell_quote_compat.2, %sw.epilog585 ], [ 0, %if.end130 ], [ 0, %c_escape ], [ 0, %if.else ], [ 0, %if.end261 ]
  %escaping.41219 = phi i8 [ %escaping.4, %sw.epilog585 ], [ 1, %if.end130 ], [ 0, %c_escape ], [ 0, %if.else ], [ 0, %if.end261 ]
  %c.41216 = phi i8 [ %c.4, %sw.epilog585 ], [ 48, %if.end130 ], [ %12, %c_escape ], [ 0, %if.else ], [ 92, %if.end261 ]
  %pending_shell_escape_end.81213 = phi i8 [ %pending_shell_escape_end.8, %sw.epilog585 ], [ %pending_shell_escape_end.1, %if.end130 ], [ %pending_shell_escape_end.0, %c_escape ], [ %pending_shell_escape_end.0, %if.else ], [ %pending_shell_escape_end.0, %if.end261 ]
  %encountered_single_quote.21210 = phi i8 [ %encountered_single_quote.2, %sw.epilog585 ], [ %encountered_single_quote.1, %if.end130 ], [ %encountered_single_quote.1, %c_escape ], [ %encountered_single_quote.1, %if.else ], [ %encountered_single_quote.1, %if.end261 ]
  %argsize.addr.71207 = phi i64 [ %argsize.addr.7, %sw.epilog585 ], [ %argsize.addr.3, %if.end130 ], [ %argsize.addr.3, %c_escape ], [ %argsize.addr.3, %if.else ], [ %argsize.addr.3, %if.end261 ]
  %orig_buffersize.31204 = phi i64 [ %orig_buffersize.3, %sw.epilog585 ], [ %orig_buffersize.1, %if.end130 ], [ %orig_buffersize.1, %c_escape ], [ %orig_buffersize.1, %if.else ], [ %orig_buffersize.1, %if.end261 ]
  %len.151201 = phi i64 [ %len.15, %sw.epilog585 ], [ %inc131, %if.end130 ], [ %len.6, %c_escape ], [ %len.6, %if.else ], [ %len.6, %if.end261 ]
  %i.31198 = phi i64 [ %i.3, %sw.epilog585 ], [ %i.0, %if.end130 ], [ %i.0, %c_escape ], [ %i.0, %if.else ], [ %i.0, %if.end261 ]
  br i1 %or.cond786, label %land.lhs.true596, label %land.lhs.true603

land.lhs.true594:                                 ; preds = %sw.epilog585
  br i1 %tobool595.old.not, label %land.lhs.true603, label %land.lhs.true596

land.lhs.true596:                                 ; preds = %land.lhs.true594, %lor.lhs.false591
  %buffersize.addr.31224 = phi i64 [ %buffersize.addr.31225, %lor.lhs.false591 ], [ %buffersize.addr.3, %land.lhs.true594 ]
  %c_and_shell_quote_compat.21221 = phi i8 [ %c_and_shell_quote_compat.21222, %lor.lhs.false591 ], [ %c_and_shell_quote_compat.2, %land.lhs.true594 ]
  %escaping.41220 = phi i8 [ %escaping.41219, %lor.lhs.false591 ], [ %escaping.4, %land.lhs.true594 ]
  %c.41215 = phi i8 [ %c.41216, %lor.lhs.false591 ], [ %c.4, %land.lhs.true594 ]
  %pending_shell_escape_end.81212 = phi i8 [ %pending_shell_escape_end.81213, %lor.lhs.false591 ], [ %pending_shell_escape_end.8, %land.lhs.true594 ]
  %encountered_single_quote.21209 = phi i8 [ %encountered_single_quote.21210, %lor.lhs.false591 ], [ %encountered_single_quote.2, %land.lhs.true594 ]
  %argsize.addr.71206 = phi i64 [ %argsize.addr.71207, %lor.lhs.false591 ], [ %argsize.addr.7, %land.lhs.true594 ]
  %orig_buffersize.31203 = phi i64 [ %orig_buffersize.31204, %lor.lhs.false591 ], [ %orig_buffersize.3, %land.lhs.true594 ]
  %len.151200 = phi i64 [ %len.151201, %lor.lhs.false591 ], [ %len.15, %land.lhs.true594 ]
  %i.31197 = phi i64 [ %i.31198, %lor.lhs.false591 ], [ %i.3, %land.lhs.true594 ]
  %39 = lshr i8 %c.41215, 5
  %div1126 = zext nneg i8 %39 to i64
  %arrayidx598 = getelementptr inbounds i32, ptr %quote_these_too, i64 %div1126
  %40 = load i32, ptr %arrayidx598, align 4, !tbaa !9
  %41 = and i8 %c.41215, 31
  %sh_prom = zext nneg i8 %41 to i32
  %42 = shl nuw i32 1, %sh_prom
  %43 = and i32 %40, %42
  %tobool602.not = icmp eq i32 %43, 0
  %or.cond1137 = and i1 %tobool604.not, %tobool602.not
  br i1 %or.cond1137, label %do.body655, label %do.body607

land.lhs.true603:                                 ; preds = %land.lhs.true594, %lor.lhs.false591
  %buffersize.addr.31226 = phi i64 [ %buffersize.addr.3, %land.lhs.true594 ], [ %buffersize.addr.31225, %lor.lhs.false591 ]
  %c_and_shell_quote_compat.21223 = phi i8 [ %c_and_shell_quote_compat.2, %land.lhs.true594 ], [ %c_and_shell_quote_compat.21222, %lor.lhs.false591 ]
  %escaping.41218 = phi i8 [ %escaping.4, %land.lhs.true594 ], [ %escaping.41219, %lor.lhs.false591 ]
  %c.41217 = phi i8 [ %c.4, %land.lhs.true594 ], [ %c.41216, %lor.lhs.false591 ]
  %pending_shell_escape_end.81214 = phi i8 [ %pending_shell_escape_end.8, %land.lhs.true594 ], [ %pending_shell_escape_end.81213, %lor.lhs.false591 ]
  %encountered_single_quote.21211 = phi i8 [ %encountered_single_quote.2, %land.lhs.true594 ], [ %encountered_single_quote.21210, %lor.lhs.false591 ]
  %argsize.addr.71208 = phi i64 [ %argsize.addr.7, %land.lhs.true594 ], [ %argsize.addr.71207, %lor.lhs.false591 ]
  %orig_buffersize.31205 = phi i64 [ %orig_buffersize.3, %land.lhs.true594 ], [ %orig_buffersize.31204, %lor.lhs.false591 ]
  %len.151202 = phi i64 [ %len.15, %land.lhs.true594 ], [ %len.151201, %lor.lhs.false591 ]
  %i.31199 = phi i64 [ %i.3, %land.lhs.true594 ], [ %i.31198, %lor.lhs.false591 ]
  br i1 %tobool604.not, label %do.body655, label %do.body607

do.body607:                                       ; preds = %land.lhs.true603, %land.lhs.true596, %c_escape, %land.lhs.true264
  %i.4 = phi i64 [ %i.31197, %land.lhs.true596 ], [ %i.31199, %land.lhs.true603 ], [ %i.0, %c_escape ], [ %i.0, %land.lhs.true264 ]
  %len.16 = phi i64 [ %len.151200, %land.lhs.true596 ], [ %len.151202, %land.lhs.true603 ], [ %len.6, %c_escape ], [ %len.6, %land.lhs.true264 ]
  %orig_buffersize.4 = phi i64 [ %orig_buffersize.31203, %land.lhs.true596 ], [ %orig_buffersize.31205, %land.lhs.true603 ], [ %orig_buffersize.1, %c_escape ], [ %orig_buffersize.1, %land.lhs.true264 ]
  %argsize.addr.8 = phi i64 [ %argsize.addr.71206, %land.lhs.true596 ], [ %argsize.addr.71208, %land.lhs.true603 ], [ %argsize.addr.3, %c_escape ], [ %argsize.addr.3, %land.lhs.true264 ]
  %encountered_single_quote.3 = phi i8 [ %encountered_single_quote.21209, %land.lhs.true596 ], [ %encountered_single_quote.21211, %land.lhs.true603 ], [ %encountered_single_quote.1, %c_escape ], [ %encountered_single_quote.1, %land.lhs.true264 ]
  %pending_shell_escape_end.9 = phi i8 [ %pending_shell_escape_end.81212, %land.lhs.true596 ], [ %pending_shell_escape_end.81214, %land.lhs.true603 ], [ %pending_shell_escape_end.0, %c_escape ], [ %pending_shell_escape_end.0, %land.lhs.true264 ]
  %c.5 = phi i8 [ %c.41215, %land.lhs.true596 ], [ %c.41217, %land.lhs.true603 ], [ %esc.1, %c_escape ], [ 92, %land.lhs.true264 ]
  %c_and_shell_quote_compat.3 = phi i8 [ %c_and_shell_quote_compat.21221, %land.lhs.true596 ], [ %c_and_shell_quote_compat.21223, %land.lhs.true603 ], [ 0, %c_escape ], [ 0, %land.lhs.true264 ]
  %buffersize.addr.4 = phi i64 [ %buffersize.addr.31224, %land.lhs.true596 ], [ %buffersize.addr.31226, %land.lhs.true603 ], [ %buffersize.addr.1, %c_escape ], [ %buffersize.addr.1, %land.lhs.true264 ]
  br i1 %tobool79.not, label %if.end610, label %force_outer_quoting_style

if.end610:                                        ; preds = %do.body607
  %44 = and i8 %pending_shell_escape_end.9, 1
  %tobool614.not = icmp eq i8 %44, 0
  %or.cond1139 = select i1 %cmp309, i1 %tobool614.not, i1 false
  br i1 %or.cond1139, label %do.body616, label %do.body644

do.body616:                                       ; preds = %if.end610
  %cmp617 = icmp ult i64 %len.16, %buffersize.addr.4
  br i1 %cmp617, label %if.then619, label %if.end621

if.then619:                                       ; preds = %do.body616
  %arrayidx620 = getelementptr inbounds i8, ptr %buffer, i64 %len.16
  store i8 39, ptr %arrayidx620, align 1, !tbaa !14
  br label %if.end621

if.end621:                                        ; preds = %if.then619, %do.body616
  %inc622 = add i64 %len.16, 1
  %cmp626 = icmp ult i64 %inc622, %buffersize.addr.4
  br i1 %cmp626, label %if.then628, label %if.end630

if.then628:                                       ; preds = %if.end621
  %arrayidx629 = getelementptr inbounds i8, ptr %buffer, i64 %inc622
  store i8 36, ptr %arrayidx629, align 1, !tbaa !14
  br label %if.end630

if.end630:                                        ; preds = %if.then628, %if.end621
  %inc631 = add i64 %len.16, 2
  %cmp635 = icmp ult i64 %inc631, %buffersize.addr.4
  br i1 %cmp635, label %if.then637, label %if.end639

if.then637:                                       ; preds = %if.end630
  %arrayidx638 = getelementptr inbounds i8, ptr %buffer, i64 %inc631
  store i8 39, ptr %arrayidx638, align 1, !tbaa !14
  br label %if.end639

if.end639:                                        ; preds = %if.then637, %if.end630
  %inc640 = add i64 %len.16, 3
  br label %do.body644

do.body644:                                       ; preds = %if.end639, %if.end610
  %len.17 = phi i64 [ %inc640, %if.end639 ], [ %len.16, %if.end610 ]
  %pending_shell_escape_end.10 = phi i8 [ 1, %if.end639 ], [ %pending_shell_escape_end.9, %if.end610 ]
  %cmp645 = icmp ult i64 %len.17, %buffersize.addr.4
  br i1 %cmp645, label %if.then647, label %do.body655.thread

if.then647:                                       ; preds = %do.body644
  %arrayidx648 = getelementptr inbounds i8, ptr %buffer, i64 %len.17
  store i8 92, ptr %arrayidx648, align 1, !tbaa !14
  br label %do.body655.thread

do.body655.thread:                                ; preds = %if.then647, %do.body644
  %inc650 = add i64 %len.17, 1
  br label %do.body682

do.body655:                                       ; preds = %land.lhs.true603, %land.lhs.true596, %cleanup581, %land.lhs.true264, %if.then257
  %i.5 = phi i64 [ %i.1, %cleanup581 ], [ %i.31199, %land.lhs.true603 ], [ %i.0, %if.then257 ], [ %i.0, %land.lhs.true264 ], [ %i.31197, %land.lhs.true596 ]
  %len.18 = phi i64 [ %len.11, %cleanup581 ], [ %len.151202, %land.lhs.true603 ], [ %len.6, %if.then257 ], [ %len.6, %land.lhs.true264 ], [ %len.151200, %land.lhs.true596 ]
  %orig_buffersize.5 = phi i64 [ %orig_buffersize.1, %cleanup581 ], [ %orig_buffersize.31205, %land.lhs.true603 ], [ %orig_buffersize.1, %if.then257 ], [ %orig_buffersize.1, %land.lhs.true264 ], [ %orig_buffersize.31203, %land.lhs.true596 ]
  %argsize.addr.9 = phi i64 [ %argsize.addr.5, %cleanup581 ], [ %argsize.addr.71208, %land.lhs.true603 ], [ %argsize.addr.3, %if.then257 ], [ %argsize.addr.3, %land.lhs.true264 ], [ %argsize.addr.71206, %land.lhs.true596 ]
  %encountered_single_quote.4 = phi i8 [ %encountered_single_quote.1, %cleanup581 ], [ %encountered_single_quote.21211, %land.lhs.true603 ], [ %encountered_single_quote.1, %if.then257 ], [ %encountered_single_quote.1, %land.lhs.true264 ], [ %encountered_single_quote.21209, %land.lhs.true596 ]
  %pending_shell_escape_end.11 = phi i8 [ %pending_shell_escape_end.4, %cleanup581 ], [ %pending_shell_escape_end.81214, %land.lhs.true603 ], [ %pending_shell_escape_end.0, %if.then257 ], [ %pending_shell_escape_end.0, %land.lhs.true264 ], [ %pending_shell_escape_end.81212, %land.lhs.true596 ]
  %c.6 = phi i8 [ %c.1, %cleanup581 ], [ %c.41217, %land.lhs.true603 ], [ 92, %if.then257 ], [ 92, %land.lhs.true264 ], [ %c.41215, %land.lhs.true596 ]
  %escaping.5 = phi i8 [ %escaping.1, %cleanup581 ], [ %escaping.41218, %land.lhs.true603 ], [ 0, %if.then257 ], [ 0, %land.lhs.true264 ], [ %escaping.41220, %land.lhs.true596 ]
  %c_and_shell_quote_compat.4 = phi i8 [ %c_and_shell_quote_compat.1, %cleanup581 ], [ %c_and_shell_quote_compat.21223, %land.lhs.true603 ], [ 0, %if.then257 ], [ 0, %land.lhs.true264 ], [ %c_and_shell_quote_compat.21221, %land.lhs.true596 ]
  %buffersize.addr.5 = phi i64 [ %buffersize.addr.1, %cleanup581 ], [ %buffersize.addr.31226, %land.lhs.true603 ], [ %buffersize.addr.1, %if.then257 ], [ %buffersize.addr.1, %land.lhs.true264 ], [ %buffersize.addr.31224, %land.lhs.true596 ]
  %45 = and i8 %pending_shell_escape_end.11, 1
  %tobool656.not = icmp ne i8 %45, 0
  %46 = and i8 %escaping.5, 1
  %tobool659.not = icmp eq i8 %46, 0
  %or.cond1141 = select i1 %tobool656.not, i1 %tobool659.not, i1 false
  br i1 %or.cond1141, label %do.body661, label %do.body682

do.body661:                                       ; preds = %do.body655
  %cmp662 = icmp ult i64 %len.18, %buffersize.addr.5
  br i1 %cmp662, label %if.then664, label %if.end666

if.then664:                                       ; preds = %do.body661
  %arrayidx665 = getelementptr inbounds i8, ptr %buffer, i64 %len.18
  store i8 39, ptr %arrayidx665, align 1, !tbaa !14
  br label %if.end666

if.end666:                                        ; preds = %if.then664, %do.body661
  %inc667 = add i64 %len.18, 1
  %cmp671 = icmp ult i64 %inc667, %buffersize.addr.5
  br i1 %cmp671, label %if.then673, label %if.end675

if.then673:                                       ; preds = %if.end666
  %arrayidx674 = getelementptr inbounds i8, ptr %buffer, i64 %inc667
  store i8 39, ptr %arrayidx674, align 1, !tbaa !14
  br label %if.end675

if.end675:                                        ; preds = %if.then673, %if.end666
  %inc676 = add i64 %len.18, 2
  br label %do.body682

do.body682:                                       ; preds = %if.end675, %do.body655, %do.body655.thread
  %buffersize.addr.51246 = phi i64 [ %buffersize.addr.5, %if.end675 ], [ %buffersize.addr.5, %do.body655 ], [ %buffersize.addr.4, %do.body655.thread ]
  %c_and_shell_quote_compat.41245 = phi i8 [ %c_and_shell_quote_compat.4, %if.end675 ], [ %c_and_shell_quote_compat.4, %do.body655 ], [ %c_and_shell_quote_compat.3, %do.body655.thread ]
  %c.61244 = phi i8 [ %c.6, %if.end675 ], [ %c.6, %do.body655 ], [ %c.5, %do.body655.thread ]
  %encountered_single_quote.41243 = phi i8 [ %encountered_single_quote.4, %if.end675 ], [ %encountered_single_quote.4, %do.body655 ], [ %encountered_single_quote.3, %do.body655.thread ]
  %argsize.addr.91242 = phi i64 [ %argsize.addr.9, %if.end675 ], [ %argsize.addr.9, %do.body655 ], [ %argsize.addr.8, %do.body655.thread ]
  %orig_buffersize.51241 = phi i64 [ %orig_buffersize.5, %if.end675 ], [ %orig_buffersize.5, %do.body655 ], [ %orig_buffersize.4, %do.body655.thread ]
  %i.51240 = phi i64 [ %i.5, %if.end675 ], [ %i.5, %do.body655 ], [ %i.4, %do.body655.thread ]
  %len.19 = phi i64 [ %inc676, %if.end675 ], [ %len.18, %do.body655 ], [ %inc650, %do.body655.thread ]
  %pending_shell_escape_end.12 = phi i8 [ 0, %if.end675 ], [ %pending_shell_escape_end.11, %do.body655 ], [ %pending_shell_escape_end.10, %do.body655.thread ]
  %cmp683 = icmp ult i64 %len.19, %buffersize.addr.51246
  br i1 %cmp683, label %if.then685, label %if.end687

if.then685:                                       ; preds = %do.body682
  %arrayidx686 = getelementptr inbounds i8, ptr %buffer, i64 %len.19
  store i8 %c.61244, ptr %arrayidx686, align 1, !tbaa !14
  br label %if.end687

if.end687:                                        ; preds = %if.then685, %do.body682
  %inc688 = add i64 %len.19, 1
  %tobool691.not = icmp eq i8 %c_and_shell_quote_compat.41245, 0
  %spec.select1142 = select i1 %tobool691.not, i8 0, i8 %all_c_and_shell_quote_compat.1
  br label %for.inc701

for.inc701:                                       ; preds = %if.end687, %if.else
  %i.6 = phi i64 [ %i.51240, %if.end687 ], [ %i.0, %if.else ]
  %len.20 = phi i64 [ %inc688, %if.end687 ], [ %len.6, %if.else ]
  %orig_buffersize.6 = phi i64 [ %orig_buffersize.51241, %if.end687 ], [ %orig_buffersize.1, %if.else ]
  %argsize.addr.10 = phi i64 [ %argsize.addr.91242, %if.end687 ], [ %argsize.addr.3, %if.else ]
  %encountered_single_quote.5 = phi i8 [ %encountered_single_quote.41243, %if.end687 ], [ %encountered_single_quote.1, %if.else ]
  %all_c_and_shell_quote_compat.3 = phi i8 [ %spec.select1142, %if.end687 ], [ %all_c_and_shell_quote_compat.1, %if.else ]
  %pending_shell_escape_end.13 = phi i8 [ %pending_shell_escape_end.12, %if.end687 ], [ %pending_shell_escape_end.0, %if.else ]
  %buffersize.addr.6 = phi i64 [ %buffersize.addr.51246, %if.end687 ], [ %buffersize.addr.1, %if.else ]
  %inc702 = add i64 %i.6, 1
  br label %for.cond46, !llvm.loop !26

for.end703:                                       ; preds = %cond.end, %cond.true
  %argsize.addr.1.lcssa = phi i64 [ -1, %cond.true ], [ %i.0, %cond.end ]
  %cmp704 = icmp eq i64 %len.6, 0
  %or.cond788 = and i1 %cmp309, %cmp704
  %or.cond788.not = xor i1 %or.cond788, true
  %or.cond1144 = select i1 %or.cond788.not, i1 true, i1 %tobool79.not
  br i1 %or.cond1144, label %if.end713, label %force_outer_quoting_style.thread

if.end713:                                        ; preds = %for.end703
  %or.cond1146 = select i1 %cmp309, i1 %tobool79.not, i1 false
  %47 = and i8 %encountered_single_quote.1, 1
  %tobool719.not = icmp ne i8 %47, 0
  %or.cond1148.not = select i1 %or.cond1146, i1 %tobool719.not, i1 false
  br i1 %or.cond1148.not, label %if.then721, label %if.end732

if.then721:                                       ; preds = %if.end713
  %48 = and i8 %all_c_and_shell_quote_compat.1, 1
  %tobool722.not = icmp eq i8 %48, 0
  br i1 %tobool722.not, label %if.else725, label %if.then723

if.then723:                                       ; preds = %if.then721
  %call724 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %buffer, i64 noundef %orig_buffersize.1, ptr noundef %arg, i64 noundef %argsize.addr.1.lcssa, i32 noundef 5, i32 noundef %flags, ptr noundef %quote_these_too, ptr noundef %left_quote.addr.2, ptr noundef %right_quote.addr.2)
  br label %cleanup767

if.else725:                                       ; preds = %if.then721
  %tobool726 = icmp eq i64 %buffersize.addr.1, 0
  %tobool728 = icmp ne i64 %orig_buffersize.1, 0
  %or.cond790 = select i1 %tobool726, i1 %tobool728, i1 false
  br i1 %or.cond790, label %process_input, label %if.end732

if.end732:                                        ; preds = %if.else725, %if.end713
  %tobool710.not.lcssa1394 = phi i1 [ true, %if.else725 ], [ %tobool79.not, %if.end713 ]
  %tobool733.not = icmp ne ptr %quote_string.2, null
  %or.cond1150 = select i1 %tobool733.not, i1 %tobool710.not.lcssa1394, i1 false
  br i1 %or.cond1150, label %for.cond737.preheader, label %if.end752

for.cond737.preheader:                            ; preds = %if.end732
  %49 = load i8, ptr %quote_string.2, align 1, !tbaa !14
  %tobool738.not1329 = icmp eq i8 %49, 0
  br i1 %tobool738.not1329, label %if.end752, label %do.body740

do.body740:                                       ; preds = %if.end745, %for.cond737.preheader
  %50 = phi i8 [ %51, %if.end745 ], [ %49, %for.cond737.preheader ]
  %quote_string.31331 = phi ptr [ %incdec.ptr750, %if.end745 ], [ %quote_string.2, %for.cond737.preheader ]
  %len.211330 = phi i64 [ %inc746, %if.end745 ], [ %len.6, %for.cond737.preheader ]
  %cmp741 = icmp ult i64 %len.211330, %buffersize.addr.1
  br i1 %cmp741, label %if.then743, label %if.end745

if.then743:                                       ; preds = %do.body740
  %arrayidx744 = getelementptr inbounds i8, ptr %buffer, i64 %len.211330
  store i8 %50, ptr %arrayidx744, align 1, !tbaa !14
  br label %if.end745

if.end745:                                        ; preds = %if.then743, %do.body740
  %inc746 = add i64 %len.211330, 1
  %incdec.ptr750 = getelementptr inbounds i8, ptr %quote_string.31331, i64 1
  %51 = load i8, ptr %incdec.ptr750, align 1, !tbaa !14
  %tobool738.not = icmp eq i8 %51, 0
  br i1 %tobool738.not, label %if.end752, label %do.body740, !llvm.loop !27

if.end752:                                        ; preds = %if.end745, %for.cond737.preheader, %if.end732
  %len.22 = phi i64 [ %len.6, %if.end732 ], [ %len.6, %for.cond737.preheader ], [ %inc746, %if.end745 ]
  %cmp753 = icmp ult i64 %len.22, %buffersize.addr.1
  br i1 %cmp753, label %if.then755, label %cleanup767

if.then755:                                       ; preds = %if.end752
  %arrayidx756 = getelementptr inbounds i8, ptr %buffer, i64 %len.22
  store i8 0, ptr %arrayidx756, align 1, !tbaa !14
  br label %cleanup767

force_outer_quoting_style.thread:                 ; preds = %for.end703, %cleanup419, %if.then311, %sw.bb300, %c_and_shell_escape, %if.then257, %sw.bb180
  %argsize.addr.11.ph = phi i64 [ %argsize.addr.4, %cleanup419 ], [ %argsize.addr.3, %if.then311 ], [ %argsize.addr.3, %sw.bb300 ], [ %argsize.addr.3, %c_and_shell_escape ], [ %argsize.addr.3, %if.then257 ], [ %argsize.addr.3, %sw.bb180 ], [ %argsize.addr.1.lcssa, %for.end703 ]
  %tobool761.not1401 = icmp eq i8 %9, 0
  %spec.select11511402 = select i1 %tobool761.not1401, i32 2, i32 4
  br label %force_outer_quoting_style.thread1410

force_outer_quoting_style:                        ; preds = %do.body607, %do.body443, %do.body88
  %argsize.addr.11 = phi i64 [ %argsize.addr.5, %do.body443 ], [ %argsize.addr.8, %do.body607 ], [ %argsize.addr.3, %do.body88 ]
  %buffersize.addr.7 = phi i64 [ %buffersize.addr.1, %do.body443 ], [ %buffersize.addr.4, %do.body607 ], [ %buffersize.addr.1, %do.body88 ]
  %cmp758 = icmp eq i32 %quoting_style.addr.2, 2
  %tobool761.not = icmp eq i8 %9, 0
  %spec.select1151 = select i1 %tobool761.not, i32 2, i32 4
  %spec.select1500 = select i1 %cmp758, i32 %spec.select1151, i32 %quoting_style.addr.2
  br label %force_outer_quoting_style.thread1410

force_outer_quoting_style.thread1410:             ; preds = %force_outer_quoting_style, %force_outer_quoting_style.thread, %sw.bb201, %land.lhs.true74
  %buffersize.addr.71405 = phi i64 [ %buffersize.addr.1, %force_outer_quoting_style.thread ], [ %buffersize.addr.7, %force_outer_quoting_style ], [ %buffersize.addr.1, %land.lhs.true74 ], [ %buffersize.addr.1, %sw.bb201 ]
  %argsize.addr.111403 = phi i64 [ %argsize.addr.11.ph, %force_outer_quoting_style.thread ], [ %argsize.addr.11, %force_outer_quoting_style ], [ %argsize.addr.3, %sw.bb201 ], [ %cond71, %land.lhs.true74 ]
  %52 = phi i32 [ %spec.select11511402, %force_outer_quoting_style.thread ], [ %spec.select1500, %force_outer_quoting_style ], [ 5, %sw.bb201 ], [ %quoting_style.addr.2, %land.lhs.true74 ]
  %and765 = and i32 %flags, -3
  %call766 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %buffer, i64 noundef %buffersize.addr.71405, ptr noundef %arg, i64 noundef %argsize.addr.111403, i32 noundef %52, i32 noundef %and765, ptr noundef null, ptr noundef %left_quote.addr.2, ptr noundef %right_quote.addr.2)
  br label %cleanup767

cleanup767:                                       ; preds = %force_outer_quoting_style.thread1410, %if.then755, %if.end752, %if.then723
  %retval.0 = phi i64 [ %call766, %force_outer_quoting_style.thread1410 ], [ %call724, %if.then723 ], [ %len.22, %if.then755 ], [ %len.22, %if.end752 ]
  ret i64 %retval.0
}

; Function Attrs: nounwind
declare i64 @__ctype_get_mb_cur_max() local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc ptr @gettext_quote(ptr noundef %msgid, i32 noundef %s) unnamed_addr #6 {
entry:
  %call = tail call ptr @dcgettext(ptr noundef nonnull @.str.13.27, ptr noundef %msgid, i32 noundef 5) #41
  %cmp.not = icmp eq ptr %call, %msgid
  br i1 %cmp.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call ptr @locale_charset() #41
  %0 = load i8, ptr %call1, align 1, !tbaa !14
  %1 = and i8 %0, -33
  switch i8 %1, label %if.end15 [
    i8 85, label %if.else.i
    i8 71, label %if.else.i27
  ]

if.else.i:                                        ; preds = %if.end
  %arrayidx.i.i = getelementptr inbounds i8, ptr %call1, i64 1
  %2 = load i8, ptr %arrayidx.i.i, align 1, !tbaa !14
  %3 = and i8 %2, -33
  %cmp.i.i = icmp eq i8 %3, 84
  br i1 %cmp.i.i, label %if.else.i.i, label %if.end15

if.else.i.i:                                      ; preds = %if.else.i
  %arrayidx.i.i.i = getelementptr inbounds i8, ptr %call1, i64 2
  %4 = load i8, ptr %arrayidx.i.i.i, align 1, !tbaa !14
  %5 = and i8 %4, -33
  %cmp.i.i.i = icmp eq i8 %5, 70
  br i1 %cmp.i.i.i, label %if.else.i.i.i, label %if.end15

if.else.i.i.i:                                    ; preds = %if.else.i.i
  %arrayidx.i.i.i.i = getelementptr inbounds i8, ptr %call1, i64 3
  %6 = load i8, ptr %arrayidx.i.i.i.i, align 1, !tbaa !14
  %cmp8.i.i.i.i = icmp eq i8 %6, 45
  br i1 %cmp8.i.i.i.i, label %if.else.i.i.i.i, label %if.end15

if.else.i.i.i.i:                                  ; preds = %if.else.i.i.i
  %arrayidx.i.i.i.i.i = getelementptr inbounds i8, ptr %call1, i64 4
  %7 = load i8, ptr %arrayidx.i.i.i.i.i, align 1, !tbaa !14
  %cmp8.i.i.i.i.i = icmp eq i8 %7, 56
  br i1 %cmp8.i.i.i.i.i, label %if.else.i.i.i.i.i, label %if.end15

if.else.i.i.i.i.i:                                ; preds = %if.else.i.i.i.i
  %arrayidx.i.i.i.i.i.i = getelementptr inbounds i8, ptr %call1, i64 5
  %8 = load i8, ptr %arrayidx.i.i.i.i.i.i, align 1, !tbaa !14
  %cmp8.i.i.i.i.i.i = icmp eq i8 %8, 0
  br i1 %cmp8.i.i.i.i.i.i, label %if.then3, label %if.end15

if.then3:                                         ; preds = %if.else.i.i.i.i.i
  %9 = load i8, ptr %msgid, align 1, !tbaa !14
  %cmp4 = icmp eq i8 %9, 96
  %cond = select i1 %cmp4, ptr @.str.15, ptr @.str.16
  br label %cleanup

if.else.i27:                                      ; preds = %if.end
  %arrayidx.i.i28 = getelementptr inbounds i8, ptr %call1, i64 1
  %10 = load i8, ptr %arrayidx.i.i28, align 1, !tbaa !14
  %11 = and i8 %10, -33
  %cmp.i.i29 = icmp eq i8 %11, 66
  br i1 %cmp.i.i29, label %if.else.i.i30, label %if.end15

if.else.i.i30:                                    ; preds = %if.else.i27
  %arrayidx.i.i.i31 = getelementptr inbounds i8, ptr %call1, i64 2
  %12 = load i8, ptr %arrayidx.i.i.i31, align 1, !tbaa !14
  %cmp8.i.i.i = icmp eq i8 %12, 49
  br i1 %cmp8.i.i.i, label %if.else.i.i.i32, label %if.end15

if.else.i.i.i32:                                  ; preds = %if.else.i.i30
  %arrayidx.i.i.i.i33 = getelementptr inbounds i8, ptr %call1, i64 3
  %13 = load i8, ptr %arrayidx.i.i.i.i33, align 1, !tbaa !14
  %cmp8.i.i.i.i34 = icmp eq i8 %13, 56
  br i1 %cmp8.i.i.i.i34, label %if.else.i.i.i.i35, label %if.end15

if.else.i.i.i.i35:                                ; preds = %if.else.i.i.i32
  %arrayidx.i.i.i.i.i36 = getelementptr inbounds i8, ptr %call1, i64 4
  %14 = load i8, ptr %arrayidx.i.i.i.i.i36, align 1, !tbaa !14
  %cmp8.i.i.i.i.i37 = icmp eq i8 %14, 48
  br i1 %cmp8.i.i.i.i.i37, label %if.else.i.i.i.i.i38, label %if.end15

if.else.i.i.i.i.i38:                              ; preds = %if.else.i.i.i.i35
  %arrayidx.i.i.i.i.i.i39 = getelementptr inbounds i8, ptr %call1, i64 5
  %15 = load i8, ptr %arrayidx.i.i.i.i.i.i39, align 1, !tbaa !14
  %cmp8.i.i.i.i.i.i40 = icmp eq i8 %15, 51
  br i1 %cmp8.i.i.i.i.i.i40, label %if.then.i.i.i.i.i.i41, label %if.end15

if.then.i.i.i.i.i.i41:                            ; preds = %if.else.i.i.i.i.i38
  %arrayidx.i.i.i.i.i.i.i = getelementptr inbounds i8, ptr %call1, i64 6
  %16 = load i8, ptr %arrayidx.i.i.i.i.i.i.i, align 1, !tbaa !14
  %cmp8.i.i.i.i.i.i.i = icmp eq i8 %16, 48
  br i1 %cmp8.i.i.i.i.i.i.i, label %strcaseeq0.exit42, label %if.end15

strcaseeq0.exit42:                                ; preds = %if.then.i.i.i.i.i.i41
  %arrayidx5.i.i.i.i.i.i.i.i = getelementptr inbounds i8, ptr %call1, i64 7
  %17 = load i8, ptr %arrayidx5.i.i.i.i.i.i.i.i, align 1, !tbaa !14
  %cmp8.i.i.i.i.i.i.i.i.not = icmp eq i8 %17, 0
  br i1 %cmp8.i.i.i.i.i.i.i.i.not, label %if.then9, label %if.end15

if.then9:                                         ; preds = %strcaseeq0.exit42
  %18 = load i8, ptr %msgid, align 1, !tbaa !14
  %cmp12 = icmp eq i8 %18, 96
  %cond14 = select i1 %cmp12, ptr @.str.18, ptr @.str.19
  br label %cleanup

if.end15:                                         ; preds = %strcaseeq0.exit42, %if.then.i.i.i.i.i.i41, %if.else.i.i.i.i.i38, %if.else.i.i.i.i35, %if.else.i.i.i32, %if.else.i.i30, %if.else.i27, %if.else.i.i.i.i.i, %if.else.i.i.i.i, %if.else.i.i.i, %if.else.i.i, %if.else.i, %if.end
  %cmp16 = icmp eq i32 %s, 9
  %cond18 = select i1 %cmp16, ptr @.str.10.26, ptr @.str.12.25
  br label %cleanup

cleanup:                                          ; preds = %if.end15, %if.then9, %if.then3, %entry
  %retval.0 = phi ptr [ %cond, %if.then3 ], [ %cond14, %if.then9 ], [ %cond18, %if.end15 ], [ %call, %entry ]
  ret ptr %retval.0
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #11

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__ctype_b_loc() local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #12

; Function Attrs: nounwind
declare i32 @iswprint(i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #12

; Function Attrs: nounwind uwtable
define dso_local noalias noundef nonnull ptr @quotearg_alloc(ptr noundef %arg, i64 noundef %argsize, ptr noundef %o) local_unnamed_addr #6 {
entry:
  %tobool.not.i = icmp eq ptr %o, null
  %cond.i = select i1 %tobool.not.i, ptr @default_quoting_options, ptr %o
  %call.i = tail call ptr @__errno_location() #46
  %0 = load i32, ptr %call.i, align 4, !tbaa !9
  %flags1.i = getelementptr inbounds %struct.quoting_options, ptr %cond.i, i64 0, i32 1
  %1 = load i32, ptr %flags1.i, align 4, !tbaa !18
  %or.i = or i32 %1, 1
  %2 = load i32, ptr %cond.i, align 8, !tbaa !16
  %quote_these_too.i = getelementptr inbounds %struct.quoting_options, ptr %cond.i, i64 0, i32 2
  %left_quote.i = getelementptr inbounds %struct.quoting_options, ptr %cond.i, i64 0, i32 3
  %3 = load ptr, ptr %left_quote.i, align 8, !tbaa !19
  %right_quote.i = getelementptr inbounds %struct.quoting_options, ptr %cond.i, i64 0, i32 4
  %4 = load ptr, ptr %right_quote.i, align 8, !tbaa !20
  %call4.i = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef null, i64 noundef 0, ptr noundef %arg, i64 noundef %argsize, i32 noundef %2, i32 noundef %or.i, ptr noundef nonnull %quote_these_too.i, ptr noundef %3, ptr noundef %4)
  %add.i = add i64 %call4.i, 1
  %call5.i = tail call noalias nonnull ptr @xcharalloc(i64 noundef %add.i) #48
  %5 = load i32, ptr %cond.i, align 8, !tbaa !16
  %6 = load ptr, ptr %left_quote.i, align 8, !tbaa !19
  %7 = load ptr, ptr %right_quote.i, align 8, !tbaa !20
  %call11.i = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %call5.i, i64 noundef %add.i, ptr noundef %arg, i64 noundef %argsize, i32 noundef %5, i32 noundef %or.i, ptr noundef nonnull %quote_these_too.i, ptr noundef %6, ptr noundef %7)
  store i32 %0, ptr %call.i, align 4, !tbaa !9
  ret ptr %call5.i
}

; Function Attrs: nounwind uwtable
define dso_local noalias noundef nonnull ptr @quotearg_alloc_mem(ptr noundef %arg, i64 noundef %argsize, ptr noundef writeonly %size, ptr noundef %o) local_unnamed_addr #6 {
entry:
  %tobool.not = icmp eq ptr %o, null
  %cond = select i1 %tobool.not, ptr @default_quoting_options, ptr %o
  %call = tail call ptr @__errno_location() #46
  %0 = load i32, ptr %call, align 4, !tbaa !9
  %flags1 = getelementptr inbounds %struct.quoting_options, ptr %cond, i64 0, i32 1
  %1 = load i32, ptr %flags1, align 4, !tbaa !18
  %tobool2.not = icmp eq ptr %size, null
  %cond3 = zext i1 %tobool2.not to i32
  %or = or i32 %1, %cond3
  %2 = load i32, ptr %cond, align 8, !tbaa !16
  %quote_these_too = getelementptr inbounds %struct.quoting_options, ptr %cond, i64 0, i32 2
  %left_quote = getelementptr inbounds %struct.quoting_options, ptr %cond, i64 0, i32 3
  %3 = load ptr, ptr %left_quote, align 8, !tbaa !19
  %right_quote = getelementptr inbounds %struct.quoting_options, ptr %cond, i64 0, i32 4
  %4 = load ptr, ptr %right_quote, align 8, !tbaa !20
  %call4 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef null, i64 noundef 0, ptr noundef %arg, i64 noundef %argsize, i32 noundef %2, i32 noundef %or, ptr noundef nonnull %quote_these_too, ptr noundef %3, ptr noundef %4)
  %add = add i64 %call4, 1
  %call5 = tail call noalias nonnull ptr @xcharalloc(i64 noundef %add) #48
  %5 = load i32, ptr %cond, align 8, !tbaa !16
  %6 = load ptr, ptr %left_quote, align 8, !tbaa !19
  %7 = load ptr, ptr %right_quote, align 8, !tbaa !20
  %call11 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %call5, i64 noundef %add, ptr noundef %arg, i64 noundef %argsize, i32 noundef %5, i32 noundef %or, ptr noundef nonnull %quote_these_too, ptr noundef %6, ptr noundef %7)
  store i32 %0, ptr %call, align 4, !tbaa !9
  br i1 %tobool2.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i64 %call4, ptr %size, align 8, !tbaa !28
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret ptr %call5
}

; Function Attrs: nounwind uwtable
define dso_local void @quotearg_free() local_unnamed_addr #6 {
entry:
  %0 = load ptr, ptr @slotvec, align 8, !tbaa !5
  %1 = load i32, ptr @nslots, align 4, !tbaa !9
  %cmp16 = icmp sgt i32 %1, 1
  br i1 %cmp16, label %for.body.preheader, label %for.end

for.body.preheader:                               ; preds = %entry
  %wide.trip.count = zext nneg i32 %1 to i64
  br label %for.body

for.body:                                         ; preds = %for.body, %for.body.preheader
  %indvars.iv = phi i64 [ 1, %for.body.preheader ], [ %indvars.iv.next, %for.body ]
  %val = getelementptr inbounds %struct.slotvec, ptr %0, i64 %indvars.iv, i32 1
  %2 = load ptr, ptr %val, align 8, !tbaa !30
  tail call void @free(ptr noundef %2) #41
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %for.end, label %for.body, !llvm.loop !32

for.end:                                          ; preds = %for.body, %entry
  %val2 = getelementptr inbounds %struct.slotvec, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %val2, align 8, !tbaa !30
  %cmp3.not = icmp eq ptr %3, @slot0
  br i1 %cmp3.not, label %if.end, label %if.then

if.then:                                          ; preds = %for.end
  tail call void @free(ptr noundef %3) #41
  store i64 256, ptr @slotvec0, align 8, !tbaa !33
  store ptr @slot0, ptr getelementptr inbounds (%struct.slotvec, ptr @slotvec0, i64 0, i32 1), align 8, !tbaa !30
  br label %if.end

if.end:                                           ; preds = %if.then, %for.end
  %cmp6.not = icmp eq ptr %0, @slotvec0
  br i1 %cmp6.not, label %if.end8, label %if.then7

if.then7:                                         ; preds = %if.end
  tail call void @free(ptr noundef %0) #41
  store ptr @slotvec0, ptr @slotvec, align 8, !tbaa !5
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %if.end
  store i32 1, ptr @nslots, align 4, !tbaa !9
  ret void
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #13

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n(i32 noundef %n, ptr noundef %arg) local_unnamed_addr #6 {
entry:
  %call = tail call fastcc ptr @quotearg_n_options(i32 noundef %n, ptr noundef %arg, i64 noundef -1, ptr noundef nonnull @default_quoting_options)
  ret ptr %call
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef ptr @quotearg_n_options(i32 noundef %n, ptr noundef %arg, i64 noundef %argsize, ptr noundef %options) unnamed_addr #6 {
entry:
  %new_nslots = alloca i64, align 8
  %call = tail call ptr @__errno_location() #46
  %0 = load i32, ptr %call, align 4, !tbaa !9
  %1 = load ptr, ptr @slotvec, align 8, !tbaa !5
  %or.cond = icmp ugt i32 %n, 2147483646
  br i1 %or.cond, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @abort() #43
  unreachable

if.end:                                           ; preds = %entry
  %2 = load i32, ptr @nslots, align 4, !tbaa !9
  %cmp2.not = icmp sgt i32 %2, %n
  br i1 %cmp2.not, label %if.end16, label %if.then3

if.then3:                                         ; preds = %if.end
  %cmp4 = icmp eq ptr %1, @slotvec0
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %new_nslots) #41
  %conv = sext i32 %2 to i64
  store i64 %conv, ptr %new_nslots, align 8, !tbaa !28
  %cond = select i1 %cmp4, ptr null, ptr %1
  %sub = add nuw nsw i32 %n, 1
  %add = sub i32 %sub, %2
  %conv6 = sext i32 %add to i64
  %call8 = call nonnull ptr @xpalloc(ptr noundef %cond, ptr noundef nonnull %new_nslots, i64 noundef %conv6, i64 noundef 2147483647, i64 noundef 16) #41
  store ptr %call8, ptr @slotvec, align 8, !tbaa !5
  br i1 %cmp4, label %if.then10, label %if.end11

if.then10:                                        ; preds = %if.then3
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %call8, ptr noundef nonnull align 8 dereferenceable(16) @slotvec0, i64 16, i1 false), !tbaa !34, !tbaa.struct !35
  br label %if.end11

if.end11:                                         ; preds = %if.then10, %if.then3
  %3 = load i32, ptr @nslots, align 4, !tbaa !9
  %idx.ext = sext i32 %3 to i64
  %add.ptr = getelementptr inbounds %struct.slotvec, ptr %call8, i64 %idx.ext
  %4 = load i64, ptr %new_nslots, align 8, !tbaa !28
  %sub13 = sub nsw i64 %4, %idx.ext
  %mul = shl i64 %sub13, 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 %add.ptr, i8 noundef 0, i64 noundef %mul, i1 noundef false) #41
  %5 = load i64, ptr %new_nslots, align 8, !tbaa !28
  %conv15 = trunc i64 %5 to i32
  store i32 %conv15, ptr @nslots, align 4, !tbaa !9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %new_nslots) #41
  br label %if.end16

if.end16:                                         ; preds = %if.end11, %if.end
  %sv.0 = phi ptr [ %call8, %if.end11 ], [ %1, %if.end ]
  %idxprom = zext nneg i32 %n to i64
  %arrayidx = getelementptr inbounds %struct.slotvec, ptr %sv.0, i64 %idxprom
  %6 = load i64, ptr %arrayidx, align 8, !tbaa !33
  %val20 = getelementptr inbounds %struct.slotvec, ptr %sv.0, i64 %idxprom, i32 1
  %7 = load ptr, ptr %val20, align 8, !tbaa !30
  %flags21 = getelementptr inbounds %struct.quoting_options, ptr %options, i64 0, i32 1
  %8 = load i32, ptr %flags21, align 4, !tbaa !18
  %or = or i32 %8, 1
  %9 = load i32, ptr %options, align 8, !tbaa !16
  %quote_these_too = getelementptr inbounds %struct.quoting_options, ptr %options, i64 0, i32 2
  %left_quote = getelementptr inbounds %struct.quoting_options, ptr %options, i64 0, i32 3
  %10 = load ptr, ptr %left_quote, align 8, !tbaa !19
  %right_quote = getelementptr inbounds %struct.quoting_options, ptr %options, i64 0, i32 4
  %11 = load ptr, ptr %right_quote, align 8, !tbaa !20
  %call22 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %7, i64 noundef %6, ptr noundef %arg, i64 noundef %argsize, i32 noundef %9, i32 noundef %or, ptr noundef nonnull %quote_these_too, ptr noundef %10, ptr noundef %11)
  %cmp23.not = icmp ugt i64 %6, %call22
  br i1 %cmp23.not, label %if.end44, label %if.then25

if.then25:                                        ; preds = %if.end16
  %add26 = add i64 %call22, 1
  store i64 %add26, ptr %arrayidx, align 8, !tbaa !33
  %cmp30.not = icmp eq ptr %7, @slot0
  br i1 %cmp30.not, label %if.end33, label %if.then32

if.then32:                                        ; preds = %if.then25
  call void @free(ptr noundef %7) #41
  br label %if.end33

if.end33:                                         ; preds = %if.then32, %if.then25
  %call34 = call noalias nonnull ptr @xcharalloc(i64 noundef %add26) #48
  store ptr %call34, ptr %val20, align 8, !tbaa !30
  %12 = load i32, ptr %options, align 8, !tbaa !16
  %13 = load ptr, ptr %left_quote, align 8, !tbaa !19
  %14 = load ptr, ptr %right_quote, align 8, !tbaa !20
  %call43 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %call34, i64 noundef %add26, ptr noundef %arg, i64 noundef %argsize, i32 noundef %12, i32 noundef %or, ptr noundef nonnull %quote_these_too, ptr noundef %13, ptr noundef %14)
  br label %if.end44

if.end44:                                         ; preds = %if.end33, %if.end16
  %val.0 = phi ptr [ %call34, %if.end33 ], [ %7, %if.end16 ]
  store i32 %0, ptr %call, align 4, !tbaa !9
  ret ptr %val.0
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #14

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #15

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_mem(i32 noundef %n, ptr noundef %arg, i64 noundef %argsize) local_unnamed_addr #6 {
entry:
  %call = tail call fastcc ptr @quotearg_n_options(i32 noundef %n, ptr noundef %arg, i64 noundef %argsize, ptr noundef nonnull @default_quoting_options)
  ret ptr %call
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg(ptr noundef %arg) local_unnamed_addr #6 {
entry:
  %call.i = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %arg, i64 noundef -1, ptr noundef nonnull @default_quoting_options)
  ret ptr %call.i
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_mem(ptr noundef %arg, i64 noundef %argsize) local_unnamed_addr #6 {
entry:
  %call.i = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %arg, i64 noundef %argsize, ptr noundef nonnull @default_quoting_options)
  ret ptr %call.i
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_style(i32 noundef %n, i32 noundef %s, ptr noundef %arg) local_unnamed_addr #6 {
entry:
  %o = alloca %struct.quoting_options, align 8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %o) #41
  tail call void @llvm.experimental.noalias.scope.decl(metadata !36)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %o, i8 0, i64 56, i1 false), !alias.scope !36
  %cmp.i = icmp eq i32 %s, 10
  br i1 %cmp.i, label %if.then.i, label %quoting_options_from_style.exit

if.then.i:                                        ; preds = %entry
  tail call void @abort() #43, !noalias !36
  unreachable

quoting_options_from_style.exit:                  ; preds = %entry
  store i32 %s, ptr %o, align 8, !tbaa !16, !alias.scope !36
  %call = call fastcc ptr @quotearg_n_options(i32 noundef %n, ptr noundef %arg, i64 noundef -1, ptr noundef nonnull %o)
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %o) #41
  ret ptr %call
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #16

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_style_mem(i32 noundef %n, i32 noundef %s, ptr noundef %arg, i64 noundef %argsize) local_unnamed_addr #6 {
entry:
  %o = alloca %struct.quoting_options, align 8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %o) #41
  tail call void @llvm.experimental.noalias.scope.decl(metadata !39)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %o, i8 0, i64 56, i1 false), !alias.scope !39
  %cmp.i = icmp eq i32 %s, 10
  br i1 %cmp.i, label %if.then.i, label %quoting_options_from_style.exit

if.then.i:                                        ; preds = %entry
  tail call void @abort() #43, !noalias !39
  unreachable

quoting_options_from_style.exit:                  ; preds = %entry
  store i32 %s, ptr %o, align 8, !tbaa !16, !alias.scope !39
  %call = call fastcc ptr @quotearg_n_options(i32 noundef %n, ptr noundef %arg, i64 noundef %argsize, ptr noundef nonnull %o)
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %o) #41
  ret ptr %call
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_style(i32 noundef %s, ptr noundef %arg) local_unnamed_addr #6 {
entry:
  %o.i = alloca %struct.quoting_options, align 8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %o.i) #41
  tail call void @llvm.experimental.noalias.scope.decl(metadata !42)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %o.i, i8 0, i64 56, i1 false), !alias.scope !42
  %cmp.i.i = icmp eq i32 %s, 10
  br i1 %cmp.i.i, label %if.then.i.i, label %quotearg_n_style.exit

if.then.i.i:                                      ; preds = %entry
  tail call void @abort() #43, !noalias !42
  unreachable

quotearg_n_style.exit:                            ; preds = %entry
  store i32 %s, ptr %o.i, align 8, !tbaa !16, !alias.scope !42
  %call.i = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %arg, i64 noundef -1, ptr noundef nonnull %o.i)
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %o.i) #41
  ret ptr %call.i
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_style_mem(i32 noundef %s, ptr noundef %arg, i64 noundef %argsize) local_unnamed_addr #6 {
entry:
  %o.i = alloca %struct.quoting_options, align 8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %o.i) #41
  tail call void @llvm.experimental.noalias.scope.decl(metadata !45)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %o.i, i8 0, i64 56, i1 false), !alias.scope !45
  %cmp.i.i = icmp eq i32 %s, 10
  br i1 %cmp.i.i, label %if.then.i.i, label %quotearg_n_style_mem.exit

if.then.i.i:                                      ; preds = %entry
  tail call void @abort() #43, !noalias !45
  unreachable

quotearg_n_style_mem.exit:                        ; preds = %entry
  store i32 %s, ptr %o.i, align 8, !tbaa !16, !alias.scope !45
  %call.i = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %arg, i64 noundef %argsize, ptr noundef nonnull %o.i)
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %o.i) #41
  ret ptr %call.i
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_char_mem(ptr noundef %arg, i64 noundef %argsize, i8 noundef signext %ch) local_unnamed_addr #6 {
entry:
  %options = alloca %struct.quoting_options, align 8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %options) #41
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %options, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !tbaa !48, !tbaa.struct !49
  %quote_these_too.i = getelementptr inbounds %struct.quoting_options, ptr %options, i64 0, i32 2
  %0 = lshr i8 %ch, 5
  %div10.i = zext nneg i8 %0 to i64
  %add.ptr.i = getelementptr inbounds i32, ptr %quote_these_too.i, i64 %div10.i
  %1 = and i8 %ch, 31
  %conv2.i = zext nneg i8 %1 to i32
  %2 = load i32, ptr %add.ptr.i, align 4, !tbaa !9
  %shr.i = lshr i32 %2, %conv2.i
  %and311.i = and i32 %shr.i, 1
  %xor.i = xor i32 %and311.i, 1
  %shl.i = shl nuw i32 %xor.i, %conv2.i
  %xor4.i = xor i32 %shl.i, %2
  store i32 %xor4.i, ptr %add.ptr.i, align 4, !tbaa !9
  %call1 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %arg, i64 noundef %argsize, ptr noundef nonnull %options)
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %options) #41
  ret ptr %call1
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_char(ptr noundef %arg, i8 noundef signext %ch) local_unnamed_addr #6 {
entry:
  %options.i = alloca %struct.quoting_options, align 8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %options.i) #41
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %options.i, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !tbaa !48, !tbaa.struct !49
  %quote_these_too.i.i = getelementptr inbounds %struct.quoting_options, ptr %options.i, i64 0, i32 2
  %0 = lshr i8 %ch, 5
  %div10.i.i = zext nneg i8 %0 to i64
  %add.ptr.i.i = getelementptr inbounds i32, ptr %quote_these_too.i.i, i64 %div10.i.i
  %1 = and i8 %ch, 31
  %conv2.i.i = zext nneg i8 %1 to i32
  %2 = load i32, ptr %add.ptr.i.i, align 4, !tbaa !9
  %shr.i.i = lshr i32 %2, %conv2.i.i
  %and311.i.i = and i32 %shr.i.i, 1
  %xor.i.i = xor i32 %and311.i.i, 1
  %shl.i.i = shl nuw i32 %xor.i.i, %conv2.i.i
  %xor4.i.i = xor i32 %shl.i.i, %2
  store i32 %xor4.i.i, ptr %add.ptr.i.i, align 4, !tbaa !9
  %call1.i = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %arg, i64 noundef -1, ptr noundef nonnull %options.i)
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %options.i) #41
  ret ptr %call1.i
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_colon(ptr noundef %arg) local_unnamed_addr #6 {
entry:
  %options.i.i = alloca %struct.quoting_options, align 8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %options.i.i) #41
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %options.i.i, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !tbaa !48, !tbaa.struct !49
  %add.ptr.i.i.i = getelementptr inbounds %struct.quoting_options, ptr %options.i.i, i64 0, i32 2, i64 1
  %0 = load i32, ptr %add.ptr.i.i.i, align 4, !tbaa !9
  %xor4.i.i.i = or i32 %0, 67108864
  store i32 %xor4.i.i.i, ptr %add.ptr.i.i.i, align 4, !tbaa !9
  %call1.i.i = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %arg, i64 noundef -1, ptr noundef nonnull %options.i.i)
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %options.i.i) #41
  ret ptr %call1.i.i
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_colon_mem(ptr noundef %arg, i64 noundef %argsize) local_unnamed_addr #6 {
entry:
  %options.i = alloca %struct.quoting_options, align 8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %options.i) #41
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %options.i, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !tbaa !48, !tbaa.struct !49
  %add.ptr.i.i = getelementptr inbounds %struct.quoting_options, ptr %options.i, i64 0, i32 2, i64 1
  %0 = load i32, ptr %add.ptr.i.i, align 4, !tbaa !9
  %xor4.i.i = or i32 %0, 67108864
  store i32 %xor4.i.i, ptr %add.ptr.i.i, align 4, !tbaa !9
  %call1.i = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %arg, i64 noundef %argsize, ptr noundef nonnull %options.i)
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %options.i) #41
  ret ptr %call1.i
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_style_colon(i32 noundef %n, i32 noundef %s, ptr noundef %arg) local_unnamed_addr #6 {
entry:
  %options = alloca %struct.quoting_options, align 8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %options) #41
  %cmp.i = icmp eq i32 %s, 10
  br i1 %cmp.i, label %if.then.i, label %quoting_options_from_style.exit

if.then.i:                                        ; preds = %entry
  tail call void @abort() #43, !noalias !51
  unreachable

quoting_options_from_style.exit:                  ; preds = %entry
  store i32 %s, ptr %options, align 8, !tbaa !48, !tbaa.struct !49
  %tmp.sroa.5.0.options.sroa_idx = getelementptr inbounds i8, ptr %options, i64 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(52) %tmp.sroa.5.0.options.sroa_idx, i8 0, i64 52, i1 false)
  %add.ptr.i = getelementptr inbounds %struct.quoting_options, ptr %options, i64 0, i32 2, i64 1
  %0 = load i32, ptr %add.ptr.i, align 4, !tbaa !9
  %xor4.i = or i32 %0, 67108864
  store i32 %xor4.i, ptr %add.ptr.i, align 4, !tbaa !9
  %call1 = call fastcc ptr @quotearg_n_options(i32 noundef %n, ptr noundef %arg, i64 noundef -1, ptr noundef nonnull %options)
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %options) #41
  ret ptr %call1
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_custom(i32 noundef %n, ptr noundef %left_quote, ptr noundef %right_quote, ptr noundef %arg) local_unnamed_addr #6 {
entry:
  %o.i = alloca %struct.quoting_options, align 8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %o.i) #41
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %o.i, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !tbaa !48, !tbaa.struct !49
  store i32 10, ptr %o.i, align 8, !tbaa !16
  %tobool1.i.i = icmp ne ptr %left_quote, null
  %tobool2.i.i = icmp ne ptr %right_quote, null
  %or.cond.i.i = and i1 %tobool1.i.i, %tobool2.i.i
  br i1 %or.cond.i.i, label %quotearg_n_custom_mem.exit, label %if.then3.i.i

if.then3.i.i:                                     ; preds = %entry
  tail call void @abort() #43
  unreachable

quotearg_n_custom_mem.exit:                       ; preds = %entry
  %left_quote5.i.i = getelementptr inbounds %struct.quoting_options, ptr %o.i, i64 0, i32 3
  store ptr %left_quote, ptr %left_quote5.i.i, align 8, !tbaa !19
  %right_quote6.i.i = getelementptr inbounds %struct.quoting_options, ptr %o.i, i64 0, i32 4
  store ptr %right_quote, ptr %right_quote6.i.i, align 8, !tbaa !20
  %call.i = call fastcc noundef ptr @quotearg_n_options(i32 noundef %n, ptr noundef %arg, i64 noundef -1, ptr noundef nonnull %o.i)
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %o.i) #41
  ret ptr %call.i
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_custom_mem(i32 noundef %n, ptr noundef %left_quote, ptr noundef %right_quote, ptr noundef %arg, i64 noundef %argsize) local_unnamed_addr #6 {
entry:
  %o = alloca %struct.quoting_options, align 8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %o) #41
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %o, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !tbaa !48, !tbaa.struct !49
  store i32 10, ptr %o, align 8, !tbaa !16
  %tobool1.i = icmp ne ptr %left_quote, null
  %tobool2.i = icmp ne ptr %right_quote, null
  %or.cond.i = and i1 %tobool1.i, %tobool2.i
  br i1 %or.cond.i, label %set_custom_quoting.exit, label %if.then3.i

if.then3.i:                                       ; preds = %entry
  tail call void @abort() #43
  unreachable

set_custom_quoting.exit:                          ; preds = %entry
  %left_quote5.i = getelementptr inbounds %struct.quoting_options, ptr %o, i64 0, i32 3
  store ptr %left_quote, ptr %left_quote5.i, align 8, !tbaa !19
  %right_quote6.i = getelementptr inbounds %struct.quoting_options, ptr %o, i64 0, i32 4
  store ptr %right_quote, ptr %right_quote6.i, align 8, !tbaa !20
  %call = call fastcc ptr @quotearg_n_options(i32 noundef %n, ptr noundef %arg, i64 noundef %argsize, ptr noundef nonnull %o)
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %o) #41
  ret ptr %call
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_custom(ptr noundef %left_quote, ptr noundef %right_quote, ptr noundef %arg) local_unnamed_addr #6 {
entry:
  %o.i.i = alloca %struct.quoting_options, align 8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %o.i.i) #41
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %o.i.i, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !tbaa !48, !tbaa.struct !49
  store i32 10, ptr %o.i.i, align 8, !tbaa !16
  %tobool1.i.i.i = icmp ne ptr %left_quote, null
  %tobool2.i.i.i = icmp ne ptr %right_quote, null
  %or.cond.i.i.i = and i1 %tobool1.i.i.i, %tobool2.i.i.i
  br i1 %or.cond.i.i.i, label %quotearg_n_custom.exit, label %if.then3.i.i.i

if.then3.i.i.i:                                   ; preds = %entry
  tail call void @abort() #43
  unreachable

quotearg_n_custom.exit:                           ; preds = %entry
  %left_quote5.i.i.i = getelementptr inbounds %struct.quoting_options, ptr %o.i.i, i64 0, i32 3
  store ptr %left_quote, ptr %left_quote5.i.i.i, align 8, !tbaa !19
  %right_quote6.i.i.i = getelementptr inbounds %struct.quoting_options, ptr %o.i.i, i64 0, i32 4
  store ptr %right_quote, ptr %right_quote6.i.i.i, align 8, !tbaa !20
  %call.i.i = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %arg, i64 noundef -1, ptr noundef nonnull %o.i.i)
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %o.i.i) #41
  ret ptr %call.i.i
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_custom_mem(ptr noundef %left_quote, ptr noundef %right_quote, ptr noundef %arg, i64 noundef %argsize) local_unnamed_addr #6 {
entry:
  %o.i = alloca %struct.quoting_options, align 8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %o.i) #41
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %o.i, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !tbaa !48, !tbaa.struct !49
  store i32 10, ptr %o.i, align 8, !tbaa !16
  %tobool1.i.i = icmp ne ptr %left_quote, null
  %tobool2.i.i = icmp ne ptr %right_quote, null
  %or.cond.i.i = and i1 %tobool1.i.i, %tobool2.i.i
  br i1 %or.cond.i.i, label %quotearg_n_custom_mem.exit, label %if.then3.i.i

if.then3.i.i:                                     ; preds = %entry
  tail call void @abort() #43
  unreachable

quotearg_n_custom_mem.exit:                       ; preds = %entry
  %left_quote5.i.i = getelementptr inbounds %struct.quoting_options, ptr %o.i, i64 0, i32 3
  store ptr %left_quote, ptr %left_quote5.i.i, align 8, !tbaa !19
  %right_quote6.i.i = getelementptr inbounds %struct.quoting_options, ptr %o.i, i64 0, i32 4
  store ptr %right_quote, ptr %right_quote6.i.i, align 8, !tbaa !20
  %call.i = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %arg, i64 noundef %argsize, ptr noundef nonnull %o.i)
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %o.i) #41
  ret ptr %call.i
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quote_n_mem(i32 noundef %n, ptr noundef %arg, i64 noundef %argsize) local_unnamed_addr #6 {
entry:
  %call = tail call fastcc ptr @quotearg_n_options(i32 noundef %n, ptr noundef %arg, i64 noundef %argsize, ptr noundef nonnull @quote_quoting_options)
  ret ptr %call
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quote_mem(ptr noundef %arg, i64 noundef %argsize) local_unnamed_addr #6 {
entry:
  %call.i = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %arg, i64 noundef %argsize, ptr noundef nonnull @quote_quoting_options)
  ret ptr %call.i
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quote_n(i32 noundef %n, ptr noundef %arg) local_unnamed_addr #6 {
entry:
  %call.i = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef %n, ptr noundef %arg, i64 noundef -1, ptr noundef nonnull @quote_quoting_options)
  ret ptr %call.i
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quote(ptr noundef %arg) local_unnamed_addr #6 {
entry:
  %call.i.i = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %arg, i64 noundef -1, ptr noundef nonnull @quote_quoting_options)
  ret ptr %call.i.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @close_stdout_set_file_name(ptr noundef %file) local_unnamed_addr #17 {
entry:
  store ptr %file, ptr @file_name, align 8, !tbaa !5
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @close_stdout_set_ignore_EPIPE(i1 noundef zeroext %ignore) local_unnamed_addr #17 {
entry:
  %frombool = zext i1 %ignore to i8
  store i8 %frombool, ptr @ignore_EPIPE, align 1, !tbaa !54
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @close_stdout() #6 {
entry:
  %0 = load ptr, ptr @stdout, align 8, !tbaa !5
  %call = tail call i32 @close_stream(ptr noundef %0) #41
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %if.end10, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %1 = load i8, ptr @ignore_EPIPE, align 1, !tbaa !54, !range !56, !noundef !57
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.then, label %land.lhs.true1

land.lhs.true1:                                   ; preds = %land.lhs.true
  %call2 = tail call ptr @__errno_location() #46
  %2 = load i32, ptr %call2, align 4, !tbaa !9
  %cmp3 = icmp eq i32 %2, 32
  br i1 %cmp3, label %if.end10, label %if.then

if.then:                                          ; preds = %land.lhs.true1, %land.lhs.true
  %call4 = tail call ptr @dcgettext(ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.1.35, i32 noundef 5) #41
  %3 = load ptr, ptr @file_name, align 8, !tbaa !5
  %tobool5.not = icmp eq ptr %3, null
  %call9 = tail call ptr @__errno_location() #46
  %4 = load i32, ptr %call9, align 4, !tbaa !9
  br i1 %tobool5.not, label %if.else, label %if.then6

if.then6:                                         ; preds = %if.then
  %call8 = tail call ptr @quotearg_colon(ptr noundef nonnull %3) #41
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %4, ptr noundef nonnull @.str.2.36, ptr noundef %call8, ptr noundef %call4) #45
  br label %if.end

if.else:                                          ; preds = %if.then
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %4, ptr noundef nonnull @.str.3.37, ptr noundef %call4) #45
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then6
  %5 = load volatile i32, ptr @exit_failure, align 4, !tbaa !9
  tail call void @_exit(i32 noundef %5) #43
  unreachable

if.end10:                                         ; preds = %land.lhs.true1, %entry
  %6 = load ptr, ptr @stderr, align 8, !tbaa !5
  %call11 = tail call i32 @close_stream(ptr noundef %6) #41
  %cmp12.not = icmp eq i32 %call11, 0
  br i1 %cmp12.not, label %if.end14, label %if.then13

if.then13:                                        ; preds = %if.end10
  %7 = load volatile i32, ptr @exit_failure, align 4, !tbaa !9
  tail call void @_exit(i32 noundef %7) #43
  unreachable

if.end14:                                         ; preds = %if.end10
  ret void
}

; Function Attrs: noreturn
declare void @_exit(i32 noundef) local_unnamed_addr #18

; Function Attrs: nounwind uwtable
define dso_local i32 @close_stream(ptr noundef %stream) local_unnamed_addr #6 {
entry:
  %call = tail call i64 @__fpending(ptr noundef %stream) #41
  %0 = load i32, ptr %stream, align 8, !tbaa !58
  %1 = and i32 %0, 32
  %cmp2.not = icmp eq i32 %1, 0
  %call4 = tail call i32 @rpl_fclose(ptr noundef nonnull %stream) #41
  %cmp5.not = icmp eq i32 %call4, 0
  br i1 %cmp2.not, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %entry
  %cmp.not = icmp ne i64 %call, 0
  %brmerge = select i1 %cmp5.not, i1 true, i1 %cmp.not
  %not.cmp5.not = xor i1 %cmp5.not, true
  %.mux21 = sext i1 %not.cmp5.not to i32
  br i1 %brmerge, label %cleanup, label %lor.lhs.false9

lor.lhs.false9:                                   ; preds = %lor.lhs.false
  %call10 = tail call ptr @__errno_location() #46
  %2 = load i32, ptr %call10, align 4, !tbaa !9
  %cmp11.not = icmp ne i32 %2, 9
  %.mux = sext i1 %cmp11.not to i32
  br label %cleanup

if.then:                                          ; preds = %entry
  br i1 %cmp5.not, label %if.then13, label %cleanup

if.then13:                                        ; preds = %if.then
  %call14 = tail call ptr @__errno_location() #46
  store i32 0, ptr %call14, align 4, !tbaa !9
  br label %cleanup

cleanup:                                          ; preds = %if.then13, %if.then, %lor.lhs.false9, %lor.lhs.false
  %retval.0 = phi i32 [ -1, %if.then13 ], [ -1, %if.then ], [ %.mux, %lor.lhs.false9 ], [ %.mux21, %lor.lhs.false ]
  ret i32 %retval.0
}

; Function Attrs: nounwind
declare i64 @__fpending(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_arn(ptr noundef %stream, ptr noundef %command_name, ptr noundef %package, ptr noundef %version, ptr nocapture noundef readonly %authors, i64 noundef %n_authors) local_unnamed_addr #6 {
entry:
  %tobool.not = icmp eq ptr %command_name, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %call = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %stream, i32 noundef 1, ptr noundef nonnull @.str.40, ptr noundef nonnull %command_name, ptr noundef %package, ptr noundef %version) #41
  br label %if.end

if.else:                                          ; preds = %entry
  %call1 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %stream, i32 noundef 1, ptr noundef nonnull @.str.1.41, ptr noundef %package, ptr noundef %version) #41
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %call2 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.42, ptr noundef nonnull @.str.3.43, i32 noundef 5) #41
  %call3 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %stream, i32 noundef 1, ptr noundef nonnull @version_etc_copyright, ptr noundef %call2, i32 noundef 2025) #41
  %call4 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.44, ptr noundef %stream)
  %call5 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.42, ptr noundef nonnull @.str.5.45, i32 noundef 5) #41
  %call6 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %stream, i32 noundef 1, ptr noundef %call5, ptr noundef nonnull @.str.6.46) #41
  %call7 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.44, ptr noundef %stream)
  switch i64 %n_authors, label %sw.default [
    i64 0, label %sw.epilog
    i64 1, label %sw.bb
    i64 2, label %sw.bb10
    i64 3, label %sw.bb15
    i64 4, label %sw.bb21
    i64 5, label %sw.bb28
    i64 6, label %sw.bb36
    i64 7, label %sw.bb45
    i64 8, label %sw.bb55
    i64 9, label %sw.bb66
  ]

sw.bb:                                            ; preds = %if.end
  %call8 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.42, ptr noundef nonnull @.str.7.47, i32 noundef 5) #41
  %0 = load ptr, ptr %authors, align 8, !tbaa !5
  %call9 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %stream, i32 noundef 1, ptr noundef %call8, ptr noundef %0) #41
  br label %sw.epilog

sw.bb10:                                          ; preds = %if.end
  %call11 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.42, ptr noundef nonnull @.str.8.48, i32 noundef 5) #41
  %1 = load ptr, ptr %authors, align 8, !tbaa !5
  %arrayidx13 = getelementptr inbounds ptr, ptr %authors, i64 1
  %2 = load ptr, ptr %arrayidx13, align 8, !tbaa !5
  %call14 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %stream, i32 noundef 1, ptr noundef %call11, ptr noundef %1, ptr noundef %2) #41
  br label %sw.epilog

sw.bb15:                                          ; preds = %if.end
  %call16 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.42, ptr noundef nonnull @.str.9.49, i32 noundef 5) #41
  %3 = load ptr, ptr %authors, align 8, !tbaa !5
  %arrayidx18 = getelementptr inbounds ptr, ptr %authors, i64 1
  %4 = load ptr, ptr %arrayidx18, align 8, !tbaa !5
  %arrayidx19 = getelementptr inbounds ptr, ptr %authors, i64 2
  %5 = load ptr, ptr %arrayidx19, align 8, !tbaa !5
  %call20 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %stream, i32 noundef 1, ptr noundef %call16, ptr noundef %3, ptr noundef %4, ptr noundef %5) #41
  br label %sw.epilog

sw.bb21:                                          ; preds = %if.end
  %call22 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.42, ptr noundef nonnull @.str.10.50, i32 noundef 5) #41
  %6 = load ptr, ptr %authors, align 8, !tbaa !5
  %arrayidx24 = getelementptr inbounds ptr, ptr %authors, i64 1
  %7 = load ptr, ptr %arrayidx24, align 8, !tbaa !5
  %arrayidx25 = getelementptr inbounds ptr, ptr %authors, i64 2
  %8 = load ptr, ptr %arrayidx25, align 8, !tbaa !5
  %arrayidx26 = getelementptr inbounds ptr, ptr %authors, i64 3
  %9 = load ptr, ptr %arrayidx26, align 8, !tbaa !5
  %call27 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %stream, i32 noundef 1, ptr noundef %call22, ptr noundef %6, ptr noundef %7, ptr noundef %8, ptr noundef %9) #41
  br label %sw.epilog

sw.bb28:                                          ; preds = %if.end
  %call29 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.42, ptr noundef nonnull @.str.11.51, i32 noundef 5) #41
  %10 = load ptr, ptr %authors, align 8, !tbaa !5
  %arrayidx31 = getelementptr inbounds ptr, ptr %authors, i64 1
  %11 = load ptr, ptr %arrayidx31, align 8, !tbaa !5
  %arrayidx32 = getelementptr inbounds ptr, ptr %authors, i64 2
  %12 = load ptr, ptr %arrayidx32, align 8, !tbaa !5
  %arrayidx33 = getelementptr inbounds ptr, ptr %authors, i64 3
  %13 = load ptr, ptr %arrayidx33, align 8, !tbaa !5
  %arrayidx34 = getelementptr inbounds ptr, ptr %authors, i64 4
  %14 = load ptr, ptr %arrayidx34, align 8, !tbaa !5
  %call35 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %stream, i32 noundef 1, ptr noundef %call29, ptr noundef %10, ptr noundef %11, ptr noundef %12, ptr noundef %13, ptr noundef %14) #41
  br label %sw.epilog

sw.bb36:                                          ; preds = %if.end
  %call37 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.42, ptr noundef nonnull @.str.12.52, i32 noundef 5) #41
  %15 = load ptr, ptr %authors, align 8, !tbaa !5
  %arrayidx39 = getelementptr inbounds ptr, ptr %authors, i64 1
  %16 = load ptr, ptr %arrayidx39, align 8, !tbaa !5
  %arrayidx40 = getelementptr inbounds ptr, ptr %authors, i64 2
  %17 = load ptr, ptr %arrayidx40, align 8, !tbaa !5
  %arrayidx41 = getelementptr inbounds ptr, ptr %authors, i64 3
  %18 = load ptr, ptr %arrayidx41, align 8, !tbaa !5
  %arrayidx42 = getelementptr inbounds ptr, ptr %authors, i64 4
  %19 = load ptr, ptr %arrayidx42, align 8, !tbaa !5
  %arrayidx43 = getelementptr inbounds ptr, ptr %authors, i64 5
  %20 = load ptr, ptr %arrayidx43, align 8, !tbaa !5
  %call44 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %stream, i32 noundef 1, ptr noundef %call37, ptr noundef %15, ptr noundef %16, ptr noundef %17, ptr noundef %18, ptr noundef %19, ptr noundef %20) #41
  br label %sw.epilog

sw.bb45:                                          ; preds = %if.end
  %call46 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.42, ptr noundef nonnull @.str.13.53, i32 noundef 5) #41
  %21 = load ptr, ptr %authors, align 8, !tbaa !5
  %arrayidx48 = getelementptr inbounds ptr, ptr %authors, i64 1
  %22 = load ptr, ptr %arrayidx48, align 8, !tbaa !5
  %arrayidx49 = getelementptr inbounds ptr, ptr %authors, i64 2
  %23 = load ptr, ptr %arrayidx49, align 8, !tbaa !5
  %arrayidx50 = getelementptr inbounds ptr, ptr %authors, i64 3
  %24 = load ptr, ptr %arrayidx50, align 8, !tbaa !5
  %arrayidx51 = getelementptr inbounds ptr, ptr %authors, i64 4
  %25 = load ptr, ptr %arrayidx51, align 8, !tbaa !5
  %arrayidx52 = getelementptr inbounds ptr, ptr %authors, i64 5
  %26 = load ptr, ptr %arrayidx52, align 8, !tbaa !5
  %arrayidx53 = getelementptr inbounds ptr, ptr %authors, i64 6
  %27 = load ptr, ptr %arrayidx53, align 8, !tbaa !5
  %call54 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %stream, i32 noundef 1, ptr noundef %call46, ptr noundef %21, ptr noundef %22, ptr noundef %23, ptr noundef %24, ptr noundef %25, ptr noundef %26, ptr noundef %27) #41
  br label %sw.epilog

sw.bb55:                                          ; preds = %if.end
  %call56 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.42, ptr noundef nonnull @.str.14.54, i32 noundef 5) #41
  %28 = load ptr, ptr %authors, align 8, !tbaa !5
  %arrayidx58 = getelementptr inbounds ptr, ptr %authors, i64 1
  %29 = load ptr, ptr %arrayidx58, align 8, !tbaa !5
  %arrayidx59 = getelementptr inbounds ptr, ptr %authors, i64 2
  %30 = load ptr, ptr %arrayidx59, align 8, !tbaa !5
  %arrayidx60 = getelementptr inbounds ptr, ptr %authors, i64 3
  %31 = load ptr, ptr %arrayidx60, align 8, !tbaa !5
  %arrayidx61 = getelementptr inbounds ptr, ptr %authors, i64 4
  %32 = load ptr, ptr %arrayidx61, align 8, !tbaa !5
  %arrayidx62 = getelementptr inbounds ptr, ptr %authors, i64 5
  %33 = load ptr, ptr %arrayidx62, align 8, !tbaa !5
  %arrayidx63 = getelementptr inbounds ptr, ptr %authors, i64 6
  %34 = load ptr, ptr %arrayidx63, align 8, !tbaa !5
  %arrayidx64 = getelementptr inbounds ptr, ptr %authors, i64 7
  %35 = load ptr, ptr %arrayidx64, align 8, !tbaa !5
  %call65 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %stream, i32 noundef 1, ptr noundef %call56, ptr noundef %28, ptr noundef %29, ptr noundef %30, ptr noundef %31, ptr noundef %32, ptr noundef %33, ptr noundef %34, ptr noundef %35) #41
  br label %sw.epilog

sw.bb66:                                          ; preds = %if.end
  %call67 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.42, ptr noundef nonnull @.str.15.55, i32 noundef 5) #41
  %36 = load ptr, ptr %authors, align 8, !tbaa !5
  %arrayidx69 = getelementptr inbounds ptr, ptr %authors, i64 1
  %37 = load ptr, ptr %arrayidx69, align 8, !tbaa !5
  %arrayidx70 = getelementptr inbounds ptr, ptr %authors, i64 2
  %38 = load ptr, ptr %arrayidx70, align 8, !tbaa !5
  %arrayidx71 = getelementptr inbounds ptr, ptr %authors, i64 3
  %39 = load ptr, ptr %arrayidx71, align 8, !tbaa !5
  %arrayidx72 = getelementptr inbounds ptr, ptr %authors, i64 4
  %40 = load ptr, ptr %arrayidx72, align 8, !tbaa !5
  %arrayidx73 = getelementptr inbounds ptr, ptr %authors, i64 5
  %41 = load ptr, ptr %arrayidx73, align 8, !tbaa !5
  %arrayidx74 = getelementptr inbounds ptr, ptr %authors, i64 6
  %42 = load ptr, ptr %arrayidx74, align 8, !tbaa !5
  %arrayidx75 = getelementptr inbounds ptr, ptr %authors, i64 7
  %43 = load ptr, ptr %arrayidx75, align 8, !tbaa !5
  %arrayidx76 = getelementptr inbounds ptr, ptr %authors, i64 8
  %44 = load ptr, ptr %arrayidx76, align 8, !tbaa !5
  %call77 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %stream, i32 noundef 1, ptr noundef %call67, ptr noundef %36, ptr noundef %37, ptr noundef %38, ptr noundef %39, ptr noundef %40, ptr noundef %41, ptr noundef %42, ptr noundef %43, ptr noundef %44) #41
  br label %sw.epilog

sw.default:                                       ; preds = %if.end
  %call78 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.42, ptr noundef nonnull @.str.16.56, i32 noundef 5) #41
  %45 = load ptr, ptr %authors, align 8, !tbaa !5
  %arrayidx80 = getelementptr inbounds ptr, ptr %authors, i64 1
  %46 = load ptr, ptr %arrayidx80, align 8, !tbaa !5
  %arrayidx81 = getelementptr inbounds ptr, ptr %authors, i64 2
  %47 = load ptr, ptr %arrayidx81, align 8, !tbaa !5
  %arrayidx82 = getelementptr inbounds ptr, ptr %authors, i64 3
  %48 = load ptr, ptr %arrayidx82, align 8, !tbaa !5
  %arrayidx83 = getelementptr inbounds ptr, ptr %authors, i64 4
  %49 = load ptr, ptr %arrayidx83, align 8, !tbaa !5
  %arrayidx84 = getelementptr inbounds ptr, ptr %authors, i64 5
  %50 = load ptr, ptr %arrayidx84, align 8, !tbaa !5
  %arrayidx85 = getelementptr inbounds ptr, ptr %authors, i64 6
  %51 = load ptr, ptr %arrayidx85, align 8, !tbaa !5
  %arrayidx86 = getelementptr inbounds ptr, ptr %authors, i64 7
  %52 = load ptr, ptr %arrayidx86, align 8, !tbaa !5
  %arrayidx87 = getelementptr inbounds ptr, ptr %authors, i64 8
  %53 = load ptr, ptr %arrayidx87, align 8, !tbaa !5
  %call88 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %stream, i32 noundef 1, ptr noundef %call78, ptr noundef %45, ptr noundef %46, ptr noundef %47, ptr noundef %48, ptr noundef %49, ptr noundef %50, ptr noundef %51, ptr noundef %52, ptr noundef %53) #41
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb66, %sw.bb55, %sw.bb45, %sw.bb36, %sw.bb28, %sw.bb21, %sw.bb15, %sw.bb10, %sw.bb, %if.end
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_ar(ptr noundef %stream, ptr noundef %command_name, ptr noundef %package, ptr noundef %version, ptr nocapture noundef readonly %authors) local_unnamed_addr #6 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.cond, %entry
  %n_authors.0 = phi i64 [ 0, %entry ], [ %inc, %for.cond ]
  %arrayidx = getelementptr inbounds ptr, ptr %authors, i64 %n_authors.0
  %0 = load ptr, ptr %arrayidx, align 8, !tbaa !5
  %tobool.not = icmp eq ptr %0, null
  %inc = add i64 %n_authors.0, 1
  br i1 %tobool.not, label %for.end, label %for.cond, !llvm.loop !60

for.end:                                          ; preds = %for.cond
  tail call void @version_etc_arn(ptr noundef %stream, ptr noundef %command_name, ptr noundef %package, ptr noundef %version, ptr noundef nonnull %authors, i64 noundef %n_authors.0)
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_va(ptr noundef %stream, ptr noundef %command_name, ptr noundef %package, ptr noundef %version, ptr nocapture noundef %authors) local_unnamed_addr #6 {
entry:
  %authtab = alloca [10 x ptr], align 16
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %authtab) #41
  %overflow_arg_area_p = getelementptr inbounds %struct.__va_list_tag, ptr %authors, i64 0, i32 2
  %0 = getelementptr inbounds %struct.__va_list_tag, ptr %authors, i64 0, i32 3
  %authors.promoted = load i32, ptr %authors, align 8
  %fits_in_gp = icmp ult i32 %authors.promoted, 41
  br i1 %fits_in_gp, label %vaarg.in_reg, label %vaarg.in_mem

vaarg.in_reg:                                     ; preds = %entry
  %reg_save_area = load ptr, ptr %0, align 8
  %1 = zext nneg i32 %authors.promoted to i64
  %2 = getelementptr i8, ptr %reg_save_area, i64 %1
  %3 = add nuw nsw i32 %authors.promoted, 8
  store i32 %3, ptr %authors, align 8
  br label %vaarg.end

vaarg.in_mem:                                     ; preds = %entry
  %overflow_arg_area = load ptr, ptr %overflow_arg_area_p, align 8
  %overflow_arg_area.next = getelementptr i8, ptr %overflow_arg_area, i64 8
  store ptr %overflow_arg_area.next, ptr %overflow_arg_area_p, align 8
  br label %vaarg.end

vaarg.end:                                        ; preds = %vaarg.in_mem, %vaarg.in_reg
  %gp_offset6 = phi i32 [ %3, %vaarg.in_reg ], [ %authors.promoted, %vaarg.in_mem ]
  %vaarg.addr = phi ptr [ %2, %vaarg.in_reg ], [ %overflow_arg_area, %vaarg.in_mem ]
  %4 = load ptr, ptr %vaarg.addr, align 8
  store ptr %4, ptr %authtab, align 16, !tbaa !5
  %cmp1.not = icmp eq ptr %4, null
  br i1 %cmp1.not, label %for.end, label %for.inc

for.inc:                                          ; preds = %vaarg.end
  %fits_in_gp.1 = icmp ult i32 %gp_offset6, 41
  br i1 %fits_in_gp.1, label %vaarg.in_reg.1, label %vaarg.in_mem.1

vaarg.in_mem.1:                                   ; preds = %for.inc
  %overflow_arg_area.1 = load ptr, ptr %overflow_arg_area_p, align 8
  %overflow_arg_area.next.1 = getelementptr i8, ptr %overflow_arg_area.1, i64 8
  store ptr %overflow_arg_area.next.1, ptr %overflow_arg_area_p, align 8
  br label %vaarg.end.1

vaarg.in_reg.1:                                   ; preds = %for.inc
  %reg_save_area.1 = load ptr, ptr %0, align 8
  %5 = zext nneg i32 %gp_offset6 to i64
  %6 = getelementptr i8, ptr %reg_save_area.1, i64 %5
  %7 = add nuw nsw i32 %gp_offset6, 8
  store i32 %7, ptr %authors, align 8
  br label %vaarg.end.1

vaarg.end.1:                                      ; preds = %vaarg.in_reg.1, %vaarg.in_mem.1
  %gp_offset6.1 = phi i32 [ %7, %vaarg.in_reg.1 ], [ %gp_offset6, %vaarg.in_mem.1 ]
  %vaarg.addr.1 = phi ptr [ %6, %vaarg.in_reg.1 ], [ %overflow_arg_area.1, %vaarg.in_mem.1 ]
  %8 = load ptr, ptr %vaarg.addr.1, align 8
  %arrayidx.1 = getelementptr inbounds [10 x ptr], ptr %authtab, i64 0, i64 1
  store ptr %8, ptr %arrayidx.1, align 8, !tbaa !5
  %cmp1.not.1 = icmp eq ptr %8, null
  br i1 %cmp1.not.1, label %for.end, label %for.inc.1

for.inc.1:                                        ; preds = %vaarg.end.1
  %fits_in_gp.2 = icmp ult i32 %gp_offset6.1, 41
  br i1 %fits_in_gp.2, label %vaarg.in_reg.2, label %vaarg.in_mem.2

vaarg.in_mem.2:                                   ; preds = %for.inc.1
  %overflow_arg_area.2 = load ptr, ptr %overflow_arg_area_p, align 8
  %overflow_arg_area.next.2 = getelementptr i8, ptr %overflow_arg_area.2, i64 8
  store ptr %overflow_arg_area.next.2, ptr %overflow_arg_area_p, align 8
  br label %vaarg.end.2

vaarg.in_reg.2:                                   ; preds = %for.inc.1
  %reg_save_area.2 = load ptr, ptr %0, align 8
  %9 = zext nneg i32 %gp_offset6.1 to i64
  %10 = getelementptr i8, ptr %reg_save_area.2, i64 %9
  %11 = add nuw nsw i32 %gp_offset6.1, 8
  store i32 %11, ptr %authors, align 8
  br label %vaarg.end.2

vaarg.end.2:                                      ; preds = %vaarg.in_reg.2, %vaarg.in_mem.2
  %gp_offset6.2 = phi i32 [ %11, %vaarg.in_reg.2 ], [ %gp_offset6.1, %vaarg.in_mem.2 ]
  %vaarg.addr.2 = phi ptr [ %10, %vaarg.in_reg.2 ], [ %overflow_arg_area.2, %vaarg.in_mem.2 ]
  %12 = load ptr, ptr %vaarg.addr.2, align 8
  %arrayidx.2 = getelementptr inbounds [10 x ptr], ptr %authtab, i64 0, i64 2
  store ptr %12, ptr %arrayidx.2, align 16, !tbaa !5
  %cmp1.not.2 = icmp eq ptr %12, null
  br i1 %cmp1.not.2, label %for.end, label %for.inc.2

for.inc.2:                                        ; preds = %vaarg.end.2
  %fits_in_gp.3 = icmp ult i32 %gp_offset6.2, 41
  br i1 %fits_in_gp.3, label %vaarg.in_reg.3, label %vaarg.in_mem.3

vaarg.in_mem.3:                                   ; preds = %for.inc.2
  %overflow_arg_area.3 = load ptr, ptr %overflow_arg_area_p, align 8
  %overflow_arg_area.next.3 = getelementptr i8, ptr %overflow_arg_area.3, i64 8
  store ptr %overflow_arg_area.next.3, ptr %overflow_arg_area_p, align 8
  br label %vaarg.end.3

vaarg.in_reg.3:                                   ; preds = %for.inc.2
  %reg_save_area.3 = load ptr, ptr %0, align 8
  %13 = zext nneg i32 %gp_offset6.2 to i64
  %14 = getelementptr i8, ptr %reg_save_area.3, i64 %13
  %15 = add nuw nsw i32 %gp_offset6.2, 8
  store i32 %15, ptr %authors, align 8
  br label %vaarg.end.3

vaarg.end.3:                                      ; preds = %vaarg.in_reg.3, %vaarg.in_mem.3
  %gp_offset6.3 = phi i32 [ %15, %vaarg.in_reg.3 ], [ %gp_offset6.2, %vaarg.in_mem.3 ]
  %vaarg.addr.3 = phi ptr [ %14, %vaarg.in_reg.3 ], [ %overflow_arg_area.3, %vaarg.in_mem.3 ]
  %16 = load ptr, ptr %vaarg.addr.3, align 8
  %arrayidx.3 = getelementptr inbounds [10 x ptr], ptr %authtab, i64 0, i64 3
  store ptr %16, ptr %arrayidx.3, align 8, !tbaa !5
  %cmp1.not.3 = icmp eq ptr %16, null
  br i1 %cmp1.not.3, label %for.end, label %for.inc.3

for.inc.3:                                        ; preds = %vaarg.end.3
  %fits_in_gp.4 = icmp ult i32 %gp_offset6.3, 41
  br i1 %fits_in_gp.4, label %vaarg.in_reg.4, label %vaarg.in_mem.4

vaarg.in_mem.4:                                   ; preds = %for.inc.3
  %overflow_arg_area.4 = load ptr, ptr %overflow_arg_area_p, align 8
  %overflow_arg_area.next.4 = getelementptr i8, ptr %overflow_arg_area.4, i64 8
  store ptr %overflow_arg_area.next.4, ptr %overflow_arg_area_p, align 8
  br label %vaarg.end.4

vaarg.in_reg.4:                                   ; preds = %for.inc.3
  %reg_save_area.4 = load ptr, ptr %0, align 8
  %17 = zext nneg i32 %gp_offset6.3 to i64
  %18 = getelementptr i8, ptr %reg_save_area.4, i64 %17
  %19 = add nuw nsw i32 %gp_offset6.3, 8
  store i32 %19, ptr %authors, align 8
  br label %vaarg.end.4

vaarg.end.4:                                      ; preds = %vaarg.in_reg.4, %vaarg.in_mem.4
  %gp_offset6.4 = phi i32 [ %19, %vaarg.in_reg.4 ], [ %gp_offset6.3, %vaarg.in_mem.4 ]
  %vaarg.addr.4 = phi ptr [ %18, %vaarg.in_reg.4 ], [ %overflow_arg_area.4, %vaarg.in_mem.4 ]
  %20 = load ptr, ptr %vaarg.addr.4, align 8
  %arrayidx.4 = getelementptr inbounds [10 x ptr], ptr %authtab, i64 0, i64 4
  store ptr %20, ptr %arrayidx.4, align 16, !tbaa !5
  %cmp1.not.4 = icmp eq ptr %20, null
  br i1 %cmp1.not.4, label %for.end, label %for.inc.4

for.inc.4:                                        ; preds = %vaarg.end.4
  %fits_in_gp.5 = icmp ult i32 %gp_offset6.4, 41
  br i1 %fits_in_gp.5, label %vaarg.in_reg.5, label %vaarg.in_mem.5

vaarg.in_mem.5:                                   ; preds = %for.inc.4
  %overflow_arg_area.5 = load ptr, ptr %overflow_arg_area_p, align 8
  %overflow_arg_area.next.5 = getelementptr i8, ptr %overflow_arg_area.5, i64 8
  store ptr %overflow_arg_area.next.5, ptr %overflow_arg_area_p, align 8
  br label %vaarg.end.5

vaarg.in_reg.5:                                   ; preds = %for.inc.4
  %reg_save_area.5 = load ptr, ptr %0, align 8
  %21 = zext nneg i32 %gp_offset6.4 to i64
  %22 = getelementptr i8, ptr %reg_save_area.5, i64 %21
  %23 = add nuw nsw i32 %gp_offset6.4, 8
  store i32 %23, ptr %authors, align 8
  br label %vaarg.end.5

vaarg.end.5:                                      ; preds = %vaarg.in_reg.5, %vaarg.in_mem.5
  %vaarg.addr.5 = phi ptr [ %22, %vaarg.in_reg.5 ], [ %overflow_arg_area.5, %vaarg.in_mem.5 ]
  %24 = load ptr, ptr %vaarg.addr.5, align 8
  %arrayidx.5 = getelementptr inbounds [10 x ptr], ptr %authtab, i64 0, i64 5
  store ptr %24, ptr %arrayidx.5, align 8, !tbaa !5
  %cmp1.not.5 = icmp eq ptr %24, null
  br i1 %cmp1.not.5, label %for.end, label %vaarg.end.6

vaarg.end.6:                                      ; preds = %vaarg.end.5
  %overflow_arg_area.6 = load ptr, ptr %overflow_arg_area_p, align 8
  %overflow_arg_area.next.6 = getelementptr i8, ptr %overflow_arg_area.6, i64 8
  store ptr %overflow_arg_area.next.6, ptr %overflow_arg_area_p, align 8
  %25 = load ptr, ptr %overflow_arg_area.6, align 8
  %arrayidx.6 = getelementptr inbounds [10 x ptr], ptr %authtab, i64 0, i64 6
  store ptr %25, ptr %arrayidx.6, align 16, !tbaa !5
  %cmp1.not.6 = icmp eq ptr %25, null
  br i1 %cmp1.not.6, label %for.end, label %vaarg.end.7

vaarg.end.7:                                      ; preds = %vaarg.end.6
  %overflow_arg_area.7 = load ptr, ptr %overflow_arg_area_p, align 8
  %overflow_arg_area.next.7 = getelementptr i8, ptr %overflow_arg_area.7, i64 8
  store ptr %overflow_arg_area.next.7, ptr %overflow_arg_area_p, align 8
  %26 = load ptr, ptr %overflow_arg_area.7, align 8
  %arrayidx.7 = getelementptr inbounds [10 x ptr], ptr %authtab, i64 0, i64 7
  store ptr %26, ptr %arrayidx.7, align 8, !tbaa !5
  %cmp1.not.7 = icmp eq ptr %26, null
  br i1 %cmp1.not.7, label %for.end, label %vaarg.end.8

vaarg.end.8:                                      ; preds = %vaarg.end.7
  %overflow_arg_area.8 = load ptr, ptr %overflow_arg_area_p, align 8
  %overflow_arg_area.next.8 = getelementptr i8, ptr %overflow_arg_area.8, i64 8
  store ptr %overflow_arg_area.next.8, ptr %overflow_arg_area_p, align 8
  %27 = load ptr, ptr %overflow_arg_area.8, align 8
  %arrayidx.8 = getelementptr inbounds [10 x ptr], ptr %authtab, i64 0, i64 8
  store ptr %27, ptr %arrayidx.8, align 16, !tbaa !5
  %cmp1.not.8 = icmp eq ptr %27, null
  br i1 %cmp1.not.8, label %for.end, label %vaarg.end.9

vaarg.end.9:                                      ; preds = %vaarg.end.8
  %overflow_arg_area.9 = load ptr, ptr %overflow_arg_area_p, align 8
  %overflow_arg_area.next.9 = getelementptr i8, ptr %overflow_arg_area.9, i64 8
  store ptr %overflow_arg_area.next.9, ptr %overflow_arg_area_p, align 8
  %28 = load ptr, ptr %overflow_arg_area.9, align 8
  %arrayidx.9 = getelementptr inbounds [10 x ptr], ptr %authtab, i64 0, i64 9
  store ptr %28, ptr %arrayidx.9, align 8, !tbaa !5
  %cmp1.not.9 = icmp eq ptr %28, null
  %spec.select = select i1 %cmp1.not.9, i64 9, i64 10
  br label %for.end

for.end:                                          ; preds = %vaarg.end.9, %vaarg.end.8, %vaarg.end.7, %vaarg.end.6, %vaarg.end.5, %vaarg.end.4, %vaarg.end.3, %vaarg.end.2, %vaarg.end.1, %vaarg.end
  %n_authors.0.lcssa = phi i64 [ 0, %vaarg.end ], [ 1, %vaarg.end.1 ], [ 2, %vaarg.end.2 ], [ 3, %vaarg.end.3 ], [ 4, %vaarg.end.4 ], [ 5, %vaarg.end.5 ], [ 6, %vaarg.end.6 ], [ 7, %vaarg.end.7 ], [ 8, %vaarg.end.8 ], [ %spec.select, %vaarg.end.9 ]
  call void @version_etc_arn(ptr noundef %stream, ptr noundef %command_name, ptr noundef %package, ptr noundef %version, ptr noundef nonnull %authtab, i64 noundef %n_authors.0.lcssa)
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %authtab) #41
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc(ptr noundef %stream, ptr noundef %command_name, ptr noundef %package, ptr noundef %version, ...) local_unnamed_addr #6 {
entry:
  %authors = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %authors) #41
  call void @llvm.va_start(ptr nonnull %authors)
  call void @version_etc_va(ptr noundef %stream, ptr noundef %command_name, ptr noundef %package, ptr noundef %version, ptr noundef nonnull %authors)
  call void @llvm.va_end(ptr nonnull %authors)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %authors) #41
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #19

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #19

; Function Attrs: nounwind uwtable
define dso_local void @emit_bug_reporting_address() local_unnamed_addr #6 {
entry:
  %0 = load ptr, ptr @stdout, align 8, !tbaa !5
  %call = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.44, ptr noundef %0)
  %call1 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.42, ptr noundef nonnull @.str.17, i32 noundef 5) #41
  %call2 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %call1, ptr noundef nonnull @.str.18.59) #41
  %call3 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.42, ptr noundef nonnull @.str.19.60, i32 noundef 5) #41
  %call4 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %call3, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.21) #41
  %call5 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.42, ptr noundef nonnull @.str.22.61, i32 noundef 5) #41
  %call6 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %call5, ptr noundef nonnull @.str.23.62) #41
  ret void
}

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror(i32 noundef %status, i32 noundef %errnum, ptr noundef %message, ptr noundef %args) local_unnamed_addr #20 {
entry:
  tail call fastcc void @flush_stdout()
  %0 = load ptr, ptr @error_print_progname, align 8, !tbaa !5
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  tail call void %0() #41
  br label %if.end

if.else:                                          ; preds = %entry
  %1 = load ptr, ptr @stderr, align 8, !tbaa !5
  %call = tail call ptr @getprogname() #42
  %call1 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %1, i32 noundef 1, ptr noundef nonnull @.str.63, ptr noundef %call) #41
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  tail call fastcc void @error_tail(i32 noundef %status, i32 noundef %errnum, ptr noundef %message, ptr noundef %args)
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @flush_stdout() unnamed_addr #6 {
entry:
  %call.i = tail call i32 (i32, i32, ...) @fcntl(i32 noundef 1, i32 noundef 3) #41
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %0 = load ptr, ptr @stdout, align 8, !tbaa !5
  %call1 = tail call i32 @fflush_unlocked(ptr noundef %0) #41
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @error_tail(i32 noundef %status, i32 noundef %errnum, ptr noundef nonnull %message, ptr noundef %args) unnamed_addr #6 {
entry:
  %errbuf.i = alloca [1024 x i8], align 16
  %0 = load ptr, ptr @stderr, align 8, !tbaa !5
  %call.i = tail call i32 @__vfprintf_chk(ptr noundef nonnull %0, i32 noundef 1, ptr noundef nonnull %message, ptr noundef %args) #41
  %1 = load i32, ptr @error_message_count, align 4, !tbaa !9
  %inc = add i32 %1, 1
  store i32 %inc, ptr @error_message_count, align 4, !tbaa !9
  %tobool.not = icmp eq i32 %errnum, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %errbuf.i) #41
  %call.i8 = call ptr @strerror_r(i32 noundef %errnum, ptr noundef nonnull %errbuf.i, i64 noundef 1024) #41
  %tobool.not.i = icmp eq ptr %call.i8, null
  br i1 %tobool.not.i, label %if.then.i, label %print_errno_message.exit

if.then.i:                                        ; preds = %if.then
  %call1.i = call ptr @dcgettext(ptr noundef nonnull @.str.4.64, ptr noundef nonnull @.str.5.65, i32 noundef 5) #41
  br label %print_errno_message.exit

print_errno_message.exit:                         ; preds = %if.then.i, %if.then
  %s.0.i = phi ptr [ %call.i8, %if.then ], [ %call1.i, %if.then.i ]
  %2 = load ptr, ptr @stderr, align 8, !tbaa !5
  %call2.i = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %2, i32 noundef 1, ptr noundef nonnull @.str.6.66, ptr noundef %s.0.i) #41
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %errbuf.i) #41
  br label %if.end

if.end:                                           ; preds = %print_errno_message.exit, %entry
  %3 = load ptr, ptr @stderr, align 8, !tbaa !5
  %_IO_write_ptr.i = getelementptr inbounds %struct._IO_FILE, ptr %3, i64 0, i32 5
  %4 = load ptr, ptr %_IO_write_ptr.i, align 8, !tbaa !61
  %_IO_write_end.i = getelementptr inbounds %struct._IO_FILE, ptr %3, i64 0, i32 6
  %5 = load ptr, ptr %_IO_write_end.i, align 8, !tbaa !62
  %cmp.not.i = icmp ult ptr %4, %5
  br i1 %cmp.not.i, label %cond.false.i, label %cond.true.i, !prof !63

cond.true.i:                                      ; preds = %if.end
  %call.i9 = call i32 @__overflow(ptr noundef nonnull %3, i32 noundef 10) #41
  br label %putc_unlocked.exit

cond.false.i:                                     ; preds = %if.end
  %incdec.ptr.i = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %incdec.ptr.i, ptr %_IO_write_ptr.i, align 8, !tbaa !61
  store i8 10, ptr %4, align 1, !tbaa !14
  br label %putc_unlocked.exit

putc_unlocked.exit:                               ; preds = %cond.false.i, %cond.true.i
  %6 = load ptr, ptr @stderr, align 8, !tbaa !5
  %call2 = call i32 @fflush_unlocked(ptr noundef %6) #41
  %tobool3.not = icmp eq i32 %status, 0
  br i1 %tobool3.not, label %if.end5, label %if.then4

if.then4:                                         ; preds = %putc_unlocked.exit
  call void @exit(i32 noundef %status) #43
  unreachable

if.end5:                                          ; preds = %putc_unlocked.exit
  ret void
}

declare i32 @__vfprintf_chk(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare ptr @strerror_r(i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare i32 @__overflow(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @fflush_unlocked(ptr noundef) local_unnamed_addr #2

declare i32 @fcntl(i32 noundef, i32 noundef, ...) local_unnamed_addr #2

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @error(i32 noundef %status, i32 noundef %errnum, ptr noundef %message, ...) local_unnamed_addr #20 {
entry:
  %ap = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %ap) #41
  call void @llvm.va_start(ptr nonnull %ap)
  call void @verror(i32 noundef %status, i32 noundef %errnum, ptr noundef %message, ptr noundef nonnull %ap) #49
  call void @llvm.va_end(ptr nonnull %ap)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %ap) #41
  ret void
}

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror_at_line(i32 noundef %status, i32 noundef %errnum, ptr noundef %file_name, i32 noundef %line_number, ptr noundef %message, ptr noundef %args) local_unnamed_addr #20 {
entry:
  %0 = load i32, ptr @error_one_per_line, align 4, !tbaa !9
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %if.end8, label %if.then

if.then:                                          ; preds = %entry
  %1 = load i32, ptr @verror_at_line.old_line_number, align 4, !tbaa !9
  %cmp = icmp eq i32 %1, %line_number
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %if.then
  %2 = load ptr, ptr @verror_at_line.old_file_name, align 8, !tbaa !5
  %cmp1 = icmp eq ptr %2, %file_name
  br i1 %cmp1, label %return, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %cmp2 = icmp ne ptr %2, null
  %cmp4 = icmp ne ptr %file_name, null
  %or.cond = and i1 %cmp4, %cmp2
  br i1 %or.cond, label %land.lhs.true5, label %if.end

land.lhs.true5:                                   ; preds = %lor.lhs.false
  %call = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %2, ptr noundef nonnull dereferenceable(1) %file_name) #42
  %cmp6 = icmp eq i32 %call, 0
  br i1 %cmp6, label %return, label %if.end

if.end:                                           ; preds = %land.lhs.true5, %lor.lhs.false, %if.then
  store ptr %file_name, ptr @verror_at_line.old_file_name, align 8, !tbaa !5
  store i32 %line_number, ptr @verror_at_line.old_line_number, align 4, !tbaa !9
  br label %if.end8

if.end8:                                          ; preds = %if.end, %entry
  tail call fastcc void @flush_stdout()
  %3 = load ptr, ptr @error_print_progname, align 8, !tbaa !5
  %tobool9.not = icmp eq ptr %3, null
  br i1 %tobool9.not, label %if.else, label %if.then10

if.then10:                                        ; preds = %if.end8
  tail call void %3() #41
  br label %if.end13

if.else:                                          ; preds = %if.end8
  %4 = load ptr, ptr @stderr, align 8, !tbaa !5
  %call11 = tail call ptr @getprogname() #42
  %call12 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %4, i32 noundef 1, ptr noundef nonnull @.str.1.69, ptr noundef %call11) #41
  br label %if.end13

if.end13:                                         ; preds = %if.else, %if.then10
  %5 = load ptr, ptr @stderr, align 8, !tbaa !5
  %cmp14.not = icmp eq ptr %file_name, null
  %cond = select i1 %cmp14.not, ptr @.str.3.70, ptr @.str.2.71
  %call15 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %5, i32 noundef 1, ptr noundef nonnull %cond, ptr noundef %file_name, i32 noundef %line_number) #41
  tail call fastcc void @error_tail(i32 noundef %status, i32 noundef %errnum, ptr noundef %message, ptr noundef %args)
  br label %return

return:                                           ; preds = %if.end13, %land.lhs.true5, %land.lhs.true
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @error_at_line(i32 noundef %status, i32 noundef %errnum, ptr noundef %file_name, i32 noundef %line_number, ptr noundef %message, ...) local_unnamed_addr #20 {
entry:
  %ap = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %ap) #41
  call void @llvm.va_start(ptr nonnull %ap)
  call void @verror_at_line(i32 noundef %status, i32 noundef %errnum, ptr noundef %file_name, i32 noundef %line_number, ptr noundef %message, ptr noundef nonnull %ap) #49
  call void @llvm.va_end(ptr nonnull %ap)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %ap) #41
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @fseterr(ptr nocapture noundef %fp) local_unnamed_addr #21 {
entry:
  %0 = load i32, ptr %fp, align 8, !tbaa !58
  %or = or i32 %0, 32
  store i32 %or, ptr %fp, align 8, !tbaa !58
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local ptr @getprogname() local_unnamed_addr #22 {
entry:
  %0 = load ptr, ptr @program_invocation_short_name, align 8, !tbaa !5
  ret ptr %0
}

; Function Attrs: nounwind uwtable
define dso_local noundef zeroext i1 @hard_locale(i32 noundef %category) local_unnamed_addr #6 {
entry:
  %locale = alloca [257 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 257, ptr nonnull %locale) #41
  %call = call i32 @setlocale_null_r(i32 noundef %category, ptr noundef nonnull %locale, i64 noundef 257) #41
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %lhsv = load i16, ptr %locale, align 16
  %.not = icmp eq i16 %lhsv, 67
  br i1 %.not, label %if.end7, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %bcmp = call i32 @bcmp(ptr noundef nonnull dereferenceable(6) %locale, ptr noundef nonnull dereferenceable(6) @.str.1.74, i64 6)
  %cmp5 = icmp eq i32 %bcmp, 0
  br i1 %cmp5, label %if.end7, label %cleanup

if.end7:                                          ; preds = %lor.lhs.false, %if.end
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %lor.lhs.false, %entry
  %retval.0 = phi i1 [ false, %if.end7 ], [ false, %entry ], [ true, %lor.lhs.false ]
  call void @llvm.lifetime.end.p0(i64 257, ptr nonnull %locale) #41
  ret i1 %retval.0
}

; Function Attrs: nounwind uwtable
define dso_local nonnull ptr @locale_charset() local_unnamed_addr #6 {
entry:
  %call = tail call ptr @rpl_nl_langinfo(i32 noundef 14) #41
  %cmp = icmp eq ptr %call, null
  %spec.store.select = select i1 %cmp, ptr @.str.77, ptr %call
  %0 = load i8, ptr %spec.store.select, align 1, !tbaa !14
  %cmp1 = icmp eq i8 %0, 0
  %spec.store.select5 = select i1 %cmp1, ptr @.str.1.78, ptr %spec.store.select
  ret ptr %spec.store.select5
}

declare ptr @rpl_nl_langinfo(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @printf_fetchargs(ptr noundef %args, ptr nocapture noundef readonly %a) local_unnamed_addr #6 {
entry:
  %0 = load i64, ptr %a, align 16, !tbaa !64
  %cmp696.not = icmp eq i64 %0, 0
  br i1 %cmp696.not, label %cleanup, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %entry
  %arg = getelementptr inbounds %struct.arguments, ptr %a, i64 0, i32 1
  %1 = load ptr, ptr %arg, align 8, !tbaa !67
  %overflow_arg_area_p589 = getelementptr inbounds %struct.__va_list_tag, ptr %args, i64 0, i32 2
  %2 = getelementptr inbounds %struct.__va_list_tag, ptr %args, i64 0, i32 3
  %fp_offset_p = getelementptr inbounds %struct.__va_list_tag, ptr %args, i64 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc, %for.body.lr.ph
  %ap.0698 = phi ptr [ %1, %for.body.lr.ph ], [ %incdec.ptr, %for.inc ]
  %i.0697 = phi i64 [ 0, %for.body.lr.ph ], [ %inc, %for.inc ]
  %3 = load i32, ptr %ap.0698, align 16, !tbaa !68
  switch i32 %3, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb2
    i32 3, label %sw.bb16
    i32 4, label %sw.bb30
    i32 5, label %sw.bb44
    i32 6, label %sw.bb57
    i32 7, label %sw.bb70
    i32 8, label %sw.bb83
    i32 9, label %sw.bb96
    i32 10, label %sw.bb109
    i32 11, label %sw.bb122
    i32 12, label %sw.bb136
    i32 13, label %sw.bb150
    i32 14, label %sw.bb164
    i32 15, label %sw.bb178
    i32 16, label %sw.bb191
    i32 17, label %sw.bb204
    i32 18, label %sw.bb217
    i32 19, label %sw.bb230
    i32 20, label %sw.bb244
    i32 21, label %sw.bb258
    i32 22, label %sw.bb271
    i32 23, label %sw.bb284
    i32 24, label %sw.bb297
    i32 25, label %sw.bb310
    i32 26, label %sw.bb323
    i32 27, label %sw.bb336
    i32 28, label %sw.bb346
    i32 29, label %sw.bb351
    i32 30, label %sw.bb364
    i32 31, label %sw.bb377
    i32 32, label %sw.bb394
    i32 33, label %sw.bb413
    i32 34, label %sw.bb426
    i32 35, label %sw.bb439
    i32 36, label %sw.bb452
    i32 37, label %sw.bb465
    i32 38, label %sw.bb478
    i32 39, label %sw.bb491
    i32 40, label %sw.bb504
    i32 41, label %sw.bb517
    i32 42, label %sw.bb530
    i32 43, label %sw.bb543
    i32 44, label %sw.bb556
    i32 45, label %sw.bb569
    i32 46, label %sw.bb582
    i32 0, label %cleanup
  ]

sw.bb:                                            ; preds = %for.body
  %gp_offset = load i32, ptr %args, align 8
  %fits_in_gp = icmp ult i32 %gp_offset, 41
  br i1 %fits_in_gp, label %vaarg.in_reg, label %vaarg.in_mem

vaarg.in_reg:                                     ; preds = %sw.bb
  %reg_save_area = load ptr, ptr %2, align 8
  %4 = zext nneg i32 %gp_offset to i64
  %5 = getelementptr i8, ptr %reg_save_area, i64 %4
  %6 = add nuw nsw i32 %gp_offset, 8
  store i32 %6, ptr %args, align 8
  br label %vaarg.end

vaarg.in_mem:                                     ; preds = %sw.bb
  %overflow_arg_area = load ptr, ptr %overflow_arg_area_p589, align 8
  %overflow_arg_area.next = getelementptr i8, ptr %overflow_arg_area, i64 8
  store ptr %overflow_arg_area.next, ptr %overflow_arg_area_p589, align 8
  br label %vaarg.end

vaarg.end:                                        ; preds = %vaarg.in_mem, %vaarg.in_reg
  %vaarg.addr = phi ptr [ %5, %vaarg.in_reg ], [ %overflow_arg_area, %vaarg.in_mem ]
  %7 = load i32, ptr %vaarg.addr, align 4
  %conv = trunc i32 %7 to i8
  %a1 = getelementptr inbounds %struct.argument, ptr %ap.0698, i64 0, i32 1
  store i8 %conv, ptr %a1, align 16, !tbaa !69
  br label %for.inc

sw.bb2:                                           ; preds = %for.body
  %gp_offset4 = load i32, ptr %args, align 8
  %fits_in_gp5 = icmp ult i32 %gp_offset4, 41
  br i1 %fits_in_gp5, label %vaarg.in_reg6, label %vaarg.in_mem8

vaarg.in_reg6:                                    ; preds = %sw.bb2
  %reg_save_area7 = load ptr, ptr %2, align 8
  %8 = zext nneg i32 %gp_offset4 to i64
  %9 = getelementptr i8, ptr %reg_save_area7, i64 %8
  %10 = add nuw nsw i32 %gp_offset4, 8
  store i32 %10, ptr %args, align 8
  br label %vaarg.end12

vaarg.in_mem8:                                    ; preds = %sw.bb2
  %overflow_arg_area10 = load ptr, ptr %overflow_arg_area_p589, align 8
  %overflow_arg_area.next11 = getelementptr i8, ptr %overflow_arg_area10, i64 8
  store ptr %overflow_arg_area.next11, ptr %overflow_arg_area_p589, align 8
  br label %vaarg.end12

vaarg.end12:                                      ; preds = %vaarg.in_mem8, %vaarg.in_reg6
  %vaarg.addr13 = phi ptr [ %9, %vaarg.in_reg6 ], [ %overflow_arg_area10, %vaarg.in_mem8 ]
  %11 = load i32, ptr %vaarg.addr13, align 4
  %conv14 = trunc i32 %11 to i8
  %a15 = getelementptr inbounds %struct.argument, ptr %ap.0698, i64 0, i32 1
  store i8 %conv14, ptr %a15, align 16, !tbaa !69
  br label %for.inc

sw.bb16:                                          ; preds = %for.body
  %gp_offset18 = load i32, ptr %args, align 8
  %fits_in_gp19 = icmp ult i32 %gp_offset18, 41
  br i1 %fits_in_gp19, label %vaarg.in_reg20, label %vaarg.in_mem22

vaarg.in_reg20:                                   ; preds = %sw.bb16
  %reg_save_area21 = load ptr, ptr %2, align 8
  %12 = zext nneg i32 %gp_offset18 to i64
  %13 = getelementptr i8, ptr %reg_save_area21, i64 %12
  %14 = add nuw nsw i32 %gp_offset18, 8
  store i32 %14, ptr %args, align 8
  br label %vaarg.end26

vaarg.in_mem22:                                   ; preds = %sw.bb16
  %overflow_arg_area24 = load ptr, ptr %overflow_arg_area_p589, align 8
  %overflow_arg_area.next25 = getelementptr i8, ptr %overflow_arg_area24, i64 8
  store ptr %overflow_arg_area.next25, ptr %overflow_arg_area_p589, align 8
  br label %vaarg.end26

vaarg.end26:                                      ; preds = %vaarg.in_mem22, %vaarg.in_reg20
  %vaarg.addr27 = phi ptr [ %13, %vaarg.in_reg20 ], [ %overflow_arg_area24, %vaarg.in_mem22 ]
  %15 = load i32, ptr %vaarg.addr27, align 4
  %conv28 = trunc i32 %15 to i16
  %a29 = getelementptr inbounds %struct.argument, ptr %ap.0698, i64 0, i32 1
  store i16 %conv28, ptr %a29, align 16, !tbaa !69
  br label %for.inc

sw.bb30:                                          ; preds = %for.body
  %gp_offset32 = load i32, ptr %args, align 8
  %fits_in_gp33 = icmp ult i32 %gp_offset32, 41
  br i1 %fits_in_gp33, label %vaarg.in_reg34, label %vaarg.in_mem36

vaarg.in_reg34:                                   ; preds = %sw.bb30
  %reg_save_area35 = load ptr, ptr %2, align 8
  %16 = zext nneg i32 %gp_offset32 to i64
  %17 = getelementptr i8, ptr %reg_save_area35, i64 %16
  %18 = add nuw nsw i32 %gp_offset32, 8
  store i32 %18, ptr %args, align 8
  br label %vaarg.end40

vaarg.in_mem36:                                   ; preds = %sw.bb30
  %overflow_arg_area38 = load ptr, ptr %overflow_arg_area_p589, align 8
  %overflow_arg_area.next39 = getelementptr i8, ptr %overflow_arg_area38, i64 8
  store ptr %overflow_arg_area.next39, ptr %overflow_arg_area_p589, align 8
  br label %vaarg.end40

vaarg.end40:                                      ; preds = %vaarg.in_mem36, %vaarg.in_reg34
  %vaarg.addr41 = phi ptr [ %17, %vaarg.in_reg34 ], [ %overflow_arg_area38, %vaarg.in_mem36 ]
  %19 = load i32, ptr %vaarg.addr41, align 4
  %conv42 = trunc i32 %19 to i16
  %a43 = getelementptr inbounds %struct.argument, ptr %ap.0698, i64 0, i32 1
  store i16 %conv42, ptr %a43, align 16, !tbaa !69
  br label %for.inc

sw.bb44:                                          ; preds = %for.body
  %gp_offset46 = load i32, ptr %args, align 8
  %fits_in_gp47 = icmp ult i32 %gp_offset46, 41
  br i1 %fits_in_gp47, label %vaarg.in_reg48, label %vaarg.in_mem50

vaarg.in_reg48:                                   ; preds = %sw.bb44
  %reg_save_area49 = load ptr, ptr %2, align 8
  %20 = zext nneg i32 %gp_offset46 to i64
  %21 = getelementptr i8, ptr %reg_save_area49, i64 %20
  %22 = add nuw nsw i32 %gp_offset46, 8
  store i32 %22, ptr %args, align 8
  br label %vaarg.end54

vaarg.in_mem50:                                   ; preds = %sw.bb44
  %overflow_arg_area52 = load ptr, ptr %overflow_arg_area_p589, align 8
  %overflow_arg_area.next53 = getelementptr i8, ptr %overflow_arg_area52, i64 8
  store ptr %overflow_arg_area.next53, ptr %overflow_arg_area_p589, align 8
  br label %vaarg.end54

vaarg.end54:                                      ; preds = %vaarg.in_mem50, %vaarg.in_reg48
  %vaarg.addr55 = phi ptr [ %21, %vaarg.in_reg48 ], [ %overflow_arg_area52, %vaarg.in_mem50 ]
  %23 = load i32, ptr %vaarg.addr55, align 4
  %a56 = getelementptr inbounds %struct.argument, ptr %ap.0698, i64 0, i32 1
  store i32 %23, ptr %a56, align 16, !tbaa !69
  br label %for.inc

sw.bb57:                                          ; preds = %for.body
  %gp_offset59 = load i32, ptr %args, align 8
  %fits_in_gp60 = icmp ult i32 %gp_offset59, 41
  br i1 %fits_in_gp60, label %vaarg.in_reg61, label %vaarg.in_mem63

vaarg.in_reg61:                                   ; preds = %sw.bb57
  %reg_save_area62 = load ptr, ptr %2, align 8
  %24 = zext nneg i32 %gp_offset59 to i64
  %25 = getelementptr i8, ptr %reg_save_area62, i64 %24
  %26 = add nuw nsw i32 %gp_offset59, 8
  store i32 %26, ptr %args, align 8
  br label %vaarg.end67

vaarg.in_mem63:                                   ; preds = %sw.bb57
  %overflow_arg_area65 = load ptr, ptr %overflow_arg_area_p589, align 8
  %overflow_arg_area.next66 = getelementptr i8, ptr %overflow_arg_area65, i64 8
  store ptr %overflow_arg_area.next66, ptr %overflow_arg_area_p589, align 8
  br label %vaarg.end67

vaarg.end67:                                      ; preds = %vaarg.in_mem63, %vaarg.in_reg61
  %vaarg.addr68 = phi ptr [ %25, %vaarg.in_reg61 ], [ %overflow_arg_area65, %vaarg.in_mem63 ]
  %27 = load i32, ptr %vaarg.addr68, align 4
  %a69 = getelementptr inbounds %struct.argument, ptr %ap.0698, i64 0, i32 1
  store i32 %27, ptr %a69, align 16, !tbaa !69
  br label %for.inc

sw.bb70:                                          ; preds = %for.body
  %gp_offset72 = load i32, ptr %args, align 8
  %fits_in_gp73 = icmp ult i32 %gp_offset72, 41
  br i1 %fits_in_gp73, label %vaarg.in_reg74, label %vaarg.in_mem76

vaarg.in_reg74:                                   ; preds = %sw.bb70
  %reg_save_area75 = load ptr, ptr %2, align 8
  %28 = zext nneg i32 %gp_offset72 to i64
  %29 = getelementptr i8, ptr %reg_save_area75, i64 %28
  %30 = add nuw nsw i32 %gp_offset72, 8
  store i32 %30, ptr %args, align 8
  br label %vaarg.end80

vaarg.in_mem76:                                   ; preds = %sw.bb70
  %overflow_arg_area78 = load ptr, ptr %overflow_arg_area_p589, align 8
  %overflow_arg_area.next79 = getelementptr i8, ptr %overflow_arg_area78, i64 8
  store ptr %overflow_arg_area.next79, ptr %overflow_arg_area_p589, align 8
  br label %vaarg.end80

vaarg.end80:                                      ; preds = %vaarg.in_mem76, %vaarg.in_reg74
  %vaarg.addr81 = phi ptr [ %29, %vaarg.in_reg74 ], [ %overflow_arg_area78, %vaarg.in_mem76 ]
  %31 = load i64, ptr %vaarg.addr81, align 8
  %a82 = getelementptr inbounds %struct.argument, ptr %ap.0698, i64 0, i32 1
  store i64 %31, ptr %a82, align 16, !tbaa !69
  br label %for.inc

sw.bb83:                                          ; preds = %for.body
  %gp_offset85 = load i32, ptr %args, align 8
  %fits_in_gp86 = icmp ult i32 %gp_offset85, 41
  br i1 %fits_in_gp86, label %vaarg.in_reg87, label %vaarg.in_mem89

vaarg.in_reg87:                                   ; preds = %sw.bb83
  %reg_save_area88 = load ptr, ptr %2, align 8
  %32 = zext nneg i32 %gp_offset85 to i64
  %33 = getelementptr i8, ptr %reg_save_area88, i64 %32
  %34 = add nuw nsw i32 %gp_offset85, 8
  store i32 %34, ptr %args, align 8
  br label %vaarg.end93

vaarg.in_mem89:                                   ; preds = %sw.bb83
  %overflow_arg_area91 = load ptr, ptr %overflow_arg_area_p589, align 8
  %overflow_arg_area.next92 = getelementptr i8, ptr %overflow_arg_area91, i64 8
  store ptr %overflow_arg_area.next92, ptr %overflow_arg_area_p589, align 8
  br label %vaarg.end93

vaarg.end93:                                      ; preds = %vaarg.in_mem89, %vaarg.in_reg87
  %vaarg.addr94 = phi ptr [ %33, %vaarg.in_reg87 ], [ %overflow_arg_area91, %vaarg.in_mem89 ]
  %35 = load i64, ptr %vaarg.addr94, align 8
  %a95 = getelementptr inbounds %struct.argument, ptr %ap.0698, i64 0, i32 1
  store i64 %35, ptr %a95, align 16, !tbaa !69
  br label %for.inc

sw.bb96:                                          ; preds = %for.body
  %gp_offset98 = load i32, ptr %args, align 8
  %fits_in_gp99 = icmp ult i32 %gp_offset98, 41
  br i1 %fits_in_gp99, label %vaarg.in_reg100, label %vaarg.in_mem102

vaarg.in_reg100:                                  ; preds = %sw.bb96
  %reg_save_area101 = load ptr, ptr %2, align 8
  %36 = zext nneg i32 %gp_offset98 to i64
  %37 = getelementptr i8, ptr %reg_save_area101, i64 %36
  %38 = add nuw nsw i32 %gp_offset98, 8
  store i32 %38, ptr %args, align 8
  br label %vaarg.end106

vaarg.in_mem102:                                  ; preds = %sw.bb96
  %overflow_arg_area104 = load ptr, ptr %overflow_arg_area_p589, align 8
  %overflow_arg_area.next105 = getelementptr i8, ptr %overflow_arg_area104, i64 8
  store ptr %overflow_arg_area.next105, ptr %overflow_arg_area_p589, align 8
  br label %vaarg.end106

vaarg.end106:                                     ; preds = %vaarg.in_mem102, %vaarg.in_reg100
  %vaarg.addr107 = phi ptr [ %37, %vaarg.in_reg100 ], [ %overflow_arg_area104, %vaarg.in_mem102 ]
  %39 = load i64, ptr %vaarg.addr107, align 8
  %a108 = getelementptr inbounds %struct.argument, ptr %ap.0698, i64 0, i32 1
  store i64 %39, ptr %a108, align 16, !tbaa !69
  br label %for.inc

sw.bb109:                                         ; preds = %for.body
  %gp_offset111 = load i32, ptr %args, align 8
  %fits_in_gp112 = icmp ult i32 %gp_offset111, 41
  br i1 %fits_in_gp112, label %vaarg.in_reg113, label %vaarg.in_mem115

vaarg.in_reg113:                                  ; preds = %sw.bb109
  %reg_save_area114 = load ptr, ptr %2, align 8
  %40 = zext nneg i32 %gp_offset111 to i64
  %41 = getelementptr i8, ptr %reg_save_area114, i64 %40
  %42 = add nuw nsw i32 %gp_offset111, 8
  store i32 %42, ptr %args, align 8
  br label %vaarg.end119

vaarg.in_mem115:                                  ; preds = %sw.bb109
  %overflow_arg_area117 = load ptr, ptr %overflow_arg_area_p589, align 8
  %overflow_arg_area.next118 = getelementptr i8, ptr %overflow_arg_area117, i64 8
  store ptr %overflow_arg_area.next118, ptr %overflow_arg_area_p589, align 8
  br label %vaarg.end119

vaarg.end119:                                     ; preds = %vaarg.in_mem115, %vaarg.in_reg113
  %vaarg.addr120 = phi ptr [ %41, %vaarg.in_reg113 ], [ %overflow_arg_area117, %vaarg.in_mem115 ]
  %43 = load i64, ptr %vaarg.addr120, align 8
  %a121 = getelementptr inbounds %struct.argument, ptr %ap.0698, i64 0, i32 1
  store i64 %43, ptr %a121, align 16, !tbaa !69
  br label %for.inc

sw.bb122:                                         ; preds = %for.body
  %gp_offset124 = load i32, ptr %args, align 8
  %fits_in_gp125 = icmp ult i32 %gp_offset124, 41
  br i1 %fits_in_gp125, label %vaarg.in_reg126, label %vaarg.in_mem128

vaarg.in_reg126:                                  ; preds = %sw.bb122
  %reg_save_area127 = load ptr, ptr %2, align 8
  %44 = zext nneg i32 %gp_offset124 to i64
  %45 = getelementptr i8, ptr %reg_save_area127, i64 %44
  %46 = add nuw nsw i32 %gp_offset124, 8
  store i32 %46, ptr %args, align 8
  br label %vaarg.end132

vaarg.in_mem128:                                  ; preds = %sw.bb122
  %overflow_arg_area130 = load ptr, ptr %overflow_arg_area_p589, align 8
  %overflow_arg_area.next131 = getelementptr i8, ptr %overflow_arg_area130, i64 8
  store ptr %overflow_arg_area.next131, ptr %overflow_arg_area_p589, align 8
  br label %vaarg.end132

vaarg.end132:                                     ; preds = %vaarg.in_mem128, %vaarg.in_reg126
  %vaarg.addr133 = phi ptr [ %45, %vaarg.in_reg126 ], [ %overflow_arg_area130, %vaarg.in_mem128 ]
  %47 = load i32, ptr %vaarg.addr133, align 4
  %conv134 = trunc i32 %47 to i8
  %a135 = getelementptr inbounds %struct.argument, ptr %ap.0698, i64 0, i32 1
  store i8 %conv134, ptr %a135, align 16, !tbaa !69
  br label %for.inc

sw.bb136:                                         ; preds = %for.body
  %gp_offset138 = load i32, ptr %args, align 8
  %fits_in_gp139 = icmp ult i32 %gp_offset138, 41
  br i1 %fits_in_gp139, label %vaarg.in_reg140, label %vaarg.in_mem142

vaarg.in_reg140:                                  ; preds = %sw.bb136
  %reg_save_area141 = load ptr, ptr %2, align 8
  %48 = zext nneg i32 %gp_offset138 to i64
  %49 = getelementptr i8, ptr %reg_save_area141, i64 %48
  %50 = add nuw nsw i32 %gp_offset138, 8
  store i32 %50, ptr %args, align 8
  br label %vaarg.end146

vaarg.in_mem142:                                  ; preds = %sw.bb136
  %overflow_arg_area144 = load ptr, ptr %overflow_arg_area_p589, align 8
  %overflow_arg_area.next145 = getelementptr i8, ptr %overflow_arg_area144, i64 8
  store ptr %overflow_arg_area.next145, ptr %overflow_arg_area_p589, align 8
  br label %vaarg.end146

vaarg.end146:                                     ; preds = %vaarg.in_mem142, %vaarg.in_reg140
  %vaarg.addr147 = phi ptr [ %49, %vaarg.in_reg140 ], [ %overflow_arg_area144, %vaarg.in_mem142 ]
  %51 = load i32, ptr %vaarg.addr147, align 4
  %conv148 = trunc i32 %51 to i8
  %a149 = getelementptr inbounds %struct.argument, ptr %ap.0698, i64 0, i32 1
  store i8 %conv148, ptr %a149, align 16, !tbaa !69
  br label %for.inc

sw.bb150:                                         ; preds = %for.body
  %gp_offset152 = load i32, ptr %args, align 8
  %fits_in_gp153 = icmp ult i32 %gp_offset152, 41
  br i1 %fits_in_gp153, label %vaarg.in_reg154, label %vaarg.in_mem156

vaarg.in_reg154:                                  ; preds = %sw.bb150
  %reg_save_area155 = load ptr, ptr %2, align 8
  %52 = zext nneg i32 %gp_offset152 to i64
  %53 = getelementptr i8, ptr %reg_save_area155, i64 %52
  %54 = add nuw nsw i32 %gp_offset152, 8
  store i32 %54, ptr %args, align 8
  br label %vaarg.end160

vaarg.in_mem156:                                  ; preds = %sw.bb150
  %overflow_arg_area158 = load ptr, ptr %overflow_arg_area_p589, align 8
  %overflow_arg_area.next159 = getelementptr i8, ptr %overflow_arg_area158, i64 8
  store ptr %overflow_arg_area.next159, ptr %overflow_arg_area_p589, align 8
  br label %vaarg.end160

vaarg.end160:                                     ; preds = %vaarg.in_mem156, %vaarg.in_reg154
  %vaarg.addr161 = phi ptr [ %53, %vaarg.in_reg154 ], [ %overflow_arg_area158, %vaarg.in_mem156 ]
  %55 = load i32, ptr %vaarg.addr161, align 4
  %conv162 = trunc i32 %55 to i16
  %a163 = getelementptr inbounds %struct.argument, ptr %ap.0698, i64 0, i32 1
  store i16 %conv162, ptr %a163, align 16, !tbaa !69
  br label %for.inc

sw.bb164:                                         ; preds = %for.body
  %gp_offset166 = load i32, ptr %args, align 8
  %fits_in_gp167 = icmp ult i32 %gp_offset166, 41
  br i1 %fits_in_gp167, label %vaarg.in_reg168, label %vaarg.in_mem170

vaarg.in_reg168:                                  ; preds = %sw.bb164
  %reg_save_area169 = load ptr, ptr %2, align 8
  %56 = zext nneg i32 %gp_offset166 to i64
  %57 = getelementptr i8, ptr %reg_save_area169, i64 %56
  %58 = add nuw nsw i32 %gp_offset166, 8
  store i32 %58, ptr %args, align 8
  br label %vaarg.end174

vaarg.in_mem170:                                  ; preds = %sw.bb164
  %overflow_arg_area172 = load ptr, ptr %overflow_arg_area_p589, align 8
  %overflow_arg_area.next173 = getelementptr i8, ptr %overflow_arg_area172, i64 8
  store ptr %overflow_arg_area.next173, ptr %overflow_arg_area_p589, align 8
  br label %vaarg.end174

vaarg.end174:                                     ; preds = %vaarg.in_mem170, %vaarg.in_reg168
  %vaarg.addr175 = phi ptr [ %57, %vaarg.in_reg168 ], [ %overflow_arg_area172, %vaarg.in_mem170 ]
  %59 = load i32, ptr %vaarg.addr175, align 4
  %conv176 = trunc i32 %59 to i16
  %a177 = getelementptr inbounds %struct.argument, ptr %ap.0698, i64 0, i32 1
  store i16 %conv176, ptr %a177, align 16, !tbaa !69
  br label %for.inc

sw.bb178:                                         ; preds = %for.body
  %gp_offset180 = load i32, ptr %args, align 8
  %fits_in_gp181 = icmp ult i32 %gp_offset180, 41
  br i1 %fits_in_gp181, label %vaarg.in_reg182, label %vaarg.in_mem184

vaarg.in_reg182:                                  ; preds = %sw.bb178
  %reg_save_area183 = load ptr, ptr %2, align 8
  %60 = zext nneg i32 %gp_offset180 to i64
  %61 = getelementptr i8, ptr %reg_save_area183, i64 %60
  %62 = add nuw nsw i32 %gp_offset180, 8
  store i32 %62, ptr %args, align 8
  br label %vaarg.end188

vaarg.in_mem184:                                  ; preds = %sw.bb178
  %overflow_arg_area186 = load ptr, ptr %overflow_arg_area_p589, align 8
  %overflow_arg_area.next187 = getelementptr i8, ptr %overflow_arg_area186, i64 8
  store ptr %overflow_arg_area.next187, ptr %overflow_arg_area_p589, align 8
  br label %vaarg.end188

vaarg.end188:                                     ; preds = %vaarg.in_mem184, %vaarg.in_reg182
  %vaarg.addr189 = phi ptr [ %61, %vaarg.in_reg182 ], [ %overflow_arg_area186, %vaarg.in_mem184 ]
  %63 = load i32, ptr %vaarg.addr189, align 4
  %a190 = getelementptr inbounds %struct.argument, ptr %ap.0698, i64 0, i32 1
  store i32 %63, ptr %a190, align 16, !tbaa !69
  br label %for.inc

sw.bb191:                                         ; preds = %for.body
  %gp_offset193 = load i32, ptr %args, align 8
  %fits_in_gp194 = icmp ult i32 %gp_offset193, 41
  br i1 %fits_in_gp194, label %vaarg.in_reg195, label %vaarg.in_mem197

vaarg.in_reg195:                                  ; preds = %sw.bb191
  %reg_save_area196 = load ptr, ptr %2, align 8
  %64 = zext nneg i32 %gp_offset193 to i64
  %65 = getelementptr i8, ptr %reg_save_area196, i64 %64
  %66 = add nuw nsw i32 %gp_offset193, 8
  store i32 %66, ptr %args, align 8
  br label %vaarg.end201

vaarg.in_mem197:                                  ; preds = %sw.bb191
  %overflow_arg_area199 = load ptr, ptr %overflow_arg_area_p589, align 8
  %overflow_arg_area.next200 = getelementptr i8, ptr %overflow_arg_area199, i64 8
  store ptr %overflow_arg_area.next200, ptr %overflow_arg_area_p589, align 8
  br label %vaarg.end201

vaarg.end201:                                     ; preds = %vaarg.in_mem197, %vaarg.in_reg195
  %vaarg.addr202 = phi ptr [ %65, %vaarg.in_reg195 ], [ %overflow_arg_area199, %vaarg.in_mem197 ]
  %67 = load i32, ptr %vaarg.addr202, align 4
  %a203 = getelementptr inbounds %struct.argument, ptr %ap.0698, i64 0, i32 1
  store i32 %67, ptr %a203, align 16, !tbaa !69
  br label %for.inc

sw.bb204:                                         ; preds = %for.body
  %gp_offset206 = load i32, ptr %args, align 8
  %fits_in_gp207 = icmp ult i32 %gp_offset206, 41
  br i1 %fits_in_gp207, label %vaarg.in_reg208, label %vaarg.in_mem210

vaarg.in_reg208:                                  ; preds = %sw.bb204
  %reg_save_area209 = load ptr, ptr %2, align 8
  %68 = zext nneg i32 %gp_offset206 to i64
  %69 = getelementptr i8, ptr %reg_save_area209, i64 %68
  %70 = add nuw nsw i32 %gp_offset206, 8
  store i32 %70, ptr %args, align 8
  br label %vaarg.end214

vaarg.in_mem210:                                  ; preds = %sw.bb204
  %overflow_arg_area212 = load ptr, ptr %overflow_arg_area_p589, align 8
  %overflow_arg_area.next213 = getelementptr i8, ptr %overflow_arg_area212, i64 8
  store ptr %overflow_arg_area.next213, ptr %overflow_arg_area_p589, align 8
  br label %vaarg.end214

vaarg.end214:                                     ; preds = %vaarg.in_mem210, %vaarg.in_reg208
  %vaarg.addr215 = phi ptr [ %69, %vaarg.in_reg208 ], [ %overflow_arg_area212, %vaarg.in_mem210 ]
  %71 = load i64, ptr %vaarg.addr215, align 8
  %a216 = getelementptr inbounds %struct.argument, ptr %ap.0698, i64 0, i32 1
  store i64 %71, ptr %a216, align 16, !tbaa !69
  br label %for.inc

sw.bb217:                                         ; preds = %for.body
  %gp_offset219 = load i32, ptr %args, align 8
  %fits_in_gp220 = icmp ult i32 %gp_offset219, 41
  br i1 %fits_in_gp220, label %vaarg.in_reg221, label %vaarg.in_mem223

vaarg.in_reg221:                                  ; preds = %sw.bb217
  %reg_save_area222 = load ptr, ptr %2, align 8
  %72 = zext nneg i32 %gp_offset219 to i64
  %73 = getelementptr i8, ptr %reg_save_area222, i64 %72
  %74 = add nuw nsw i32 %gp_offset219, 8
  store i32 %74, ptr %args, align 8
  br label %vaarg.end227

vaarg.in_mem223:                                  ; preds = %sw.bb217
  %overflow_arg_area225 = load ptr, ptr %overflow_arg_area_p589, align 8
  %overflow_arg_area.next226 = getelementptr i8, ptr %overflow_arg_area225, i64 8
  store ptr %overflow_arg_area.next226, ptr %overflow_arg_area_p589, align 8
  br label %vaarg.end227

vaarg.end227:                                     ; preds = %vaarg.in_mem223, %vaarg.in_reg221
  %vaarg.addr228 = phi ptr [ %73, %vaarg.in_reg221 ], [ %overflow_arg_area225, %vaarg.in_mem223 ]
  %75 = load i64, ptr %vaarg.addr228, align 8
  %a229 = getelementptr inbounds %struct.argument, ptr %ap.0698, i64 0, i32 1
  store i64 %75, ptr %a229, align 16, !tbaa !69
  br label %for.inc

sw.bb230:                                         ; preds = %for.body
  %gp_offset232 = load i32, ptr %args, align 8
  %fits_in_gp233 = icmp ult i32 %gp_offset232, 41
  br i1 %fits_in_gp233, label %vaarg.in_reg234, label %vaarg.in_mem236

vaarg.in_reg234:                                  ; preds = %sw.bb230
  %reg_save_area235 = load ptr, ptr %2, align 8
  %76 = zext nneg i32 %gp_offset232 to i64
  %77 = getelementptr i8, ptr %reg_save_area235, i64 %76
  %78 = add nuw nsw i32 %gp_offset232, 8
  store i32 %78, ptr %args, align 8
  br label %vaarg.end240

vaarg.in_mem236:                                  ; preds = %sw.bb230
  %overflow_arg_area238 = load ptr, ptr %overflow_arg_area_p589, align 8
  %overflow_arg_area.next239 = getelementptr i8, ptr %overflow_arg_area238, i64 8
  store ptr %overflow_arg_area.next239, ptr %overflow_arg_area_p589, align 8
  br label %vaarg.end240

vaarg.end240:                                     ; preds = %vaarg.in_mem236, %vaarg.in_reg234
  %vaarg.addr241 = phi ptr [ %77, %vaarg.in_reg234 ], [ %overflow_arg_area238, %vaarg.in_mem236 ]
  %79 = load i32, ptr %vaarg.addr241, align 4
  %conv242 = trunc i32 %79 to i8
  %a243 = getelementptr inbounds %struct.argument, ptr %ap.0698, i64 0, i32 1
  store i8 %conv242, ptr %a243, align 16, !tbaa !69
  br label %for.inc

sw.bb244:                                         ; preds = %for.body
  %gp_offset246 = load i32, ptr %args, align 8
  %fits_in_gp247 = icmp ult i32 %gp_offset246, 41
  br i1 %fits_in_gp247, label %vaarg.in_reg248, label %vaarg.in_mem250

vaarg.in_reg248:                                  ; preds = %sw.bb244
  %reg_save_area249 = load ptr, ptr %2, align 8
  %80 = zext nneg i32 %gp_offset246 to i64
  %81 = getelementptr i8, ptr %reg_save_area249, i64 %80
  %82 = add nuw nsw i32 %gp_offset246, 8
  store i32 %82, ptr %args, align 8
  br label %vaarg.end254

vaarg.in_mem250:                                  ; preds = %sw.bb244
  %overflow_arg_area252 = load ptr, ptr %overflow_arg_area_p589, align 8
  %overflow_arg_area.next253 = getelementptr i8, ptr %overflow_arg_area252, i64 8
  store ptr %overflow_arg_area.next253, ptr %overflow_arg_area_p589, align 8
  br label %vaarg.end254

vaarg.end254:                                     ; preds = %vaarg.in_mem250, %vaarg.in_reg248
  %vaarg.addr255 = phi ptr [ %81, %vaarg.in_reg248 ], [ %overflow_arg_area252, %vaarg.in_mem250 ]
  %83 = load i32, ptr %vaarg.addr255, align 4
  %conv256 = trunc i32 %83 to i8
  %a257 = getelementptr inbounds %struct.argument, ptr %ap.0698, i64 0, i32 1
  store i8 %conv256, ptr %a257, align 16, !tbaa !69
  br label %for.inc

sw.bb258:                                         ; preds = %for.body
  %gp_offset260 = load i32, ptr %args, align 8
  %fits_in_gp261 = icmp ult i32 %gp_offset260, 41
  br i1 %fits_in_gp261, label %vaarg.in_reg262, label %vaarg.in_mem264

vaarg.in_reg262:                                  ; preds = %sw.bb258
  %reg_save_area263 = load ptr, ptr %2, align 8
  %84 = zext nneg i32 %gp_offset260 to i64
  %85 = getelementptr i8, ptr %reg_save_area263, i64 %84
  %86 = add nuw nsw i32 %gp_offset260, 8
  store i32 %86, ptr %args, align 8
  br label %vaarg.end268

vaarg.in_mem264:                                  ; preds = %sw.bb258
  %overflow_arg_area266 = load ptr, ptr %overflow_arg_area_p589, align 8
  %overflow_arg_area.next267 = getelementptr i8, ptr %overflow_arg_area266, i64 8
  store ptr %overflow_arg_area.next267, ptr %overflow_arg_area_p589, align 8
  br label %vaarg.end268

vaarg.end268:                                     ; preds = %vaarg.in_mem264, %vaarg.in_reg262
  %vaarg.addr269 = phi ptr [ %85, %vaarg.in_reg262 ], [ %overflow_arg_area266, %vaarg.in_mem264 ]
  %87 = load i64, ptr %vaarg.addr269, align 8
  %a270 = getelementptr inbounds %struct.argument, ptr %ap.0698, i64 0, i32 1
  store i64 %87, ptr %a270, align 16, !tbaa !69
  br label %for.inc

sw.bb271:                                         ; preds = %for.body
  %gp_offset273 = load i32, ptr %args, align 8
  %fits_in_gp274 = icmp ult i32 %gp_offset273, 41
  br i1 %fits_in_gp274, label %vaarg.in_reg275, label %vaarg.in_mem277

vaarg.in_reg275:                                  ; preds = %sw.bb271
  %reg_save_area276 = load ptr, ptr %2, align 8
  %88 = zext nneg i32 %gp_offset273 to i64
  %89 = getelementptr i8, ptr %reg_save_area276, i64 %88
  %90 = add nuw nsw i32 %gp_offset273, 8
  store i32 %90, ptr %args, align 8
  br label %vaarg.end281

vaarg.in_mem277:                                  ; preds = %sw.bb271
  %overflow_arg_area279 = load ptr, ptr %overflow_arg_area_p589, align 8
  %overflow_arg_area.next280 = getelementptr i8, ptr %overflow_arg_area279, i64 8
  store ptr %overflow_arg_area.next280, ptr %overflow_arg_area_p589, align 8
  br label %vaarg.end281

vaarg.end281:                                     ; preds = %vaarg.in_mem277, %vaarg.in_reg275
  %vaarg.addr282 = phi ptr [ %89, %vaarg.in_reg275 ], [ %overflow_arg_area279, %vaarg.in_mem277 ]
  %91 = load i64, ptr %vaarg.addr282, align 8
  %a283 = getelementptr inbounds %struct.argument, ptr %ap.0698, i64 0, i32 1
  store i64 %91, ptr %a283, align 16, !tbaa !69
  br label %for.inc

sw.bb284:                                         ; preds = %for.body
  %gp_offset286 = load i32, ptr %args, align 8
  %fits_in_gp287 = icmp ult i32 %gp_offset286, 41
  br i1 %fits_in_gp287, label %vaarg.in_reg288, label %vaarg.in_mem290

vaarg.in_reg288:                                  ; preds = %sw.bb284
  %reg_save_area289 = load ptr, ptr %2, align 8
  %92 = zext nneg i32 %gp_offset286 to i64
  %93 = getelementptr i8, ptr %reg_save_area289, i64 %92
  %94 = add nuw nsw i32 %gp_offset286, 8
  store i32 %94, ptr %args, align 8
  br label %vaarg.end294

vaarg.in_mem290:                                  ; preds = %sw.bb284
  %overflow_arg_area292 = load ptr, ptr %overflow_arg_area_p589, align 8
  %overflow_arg_area.next293 = getelementptr i8, ptr %overflow_arg_area292, i64 8
  store ptr %overflow_arg_area.next293, ptr %overflow_arg_area_p589, align 8
  br label %vaarg.end294

vaarg.end294:                                     ; preds = %vaarg.in_mem290, %vaarg.in_reg288
  %vaarg.addr295 = phi ptr [ %93, %vaarg.in_reg288 ], [ %overflow_arg_area292, %vaarg.in_mem290 ]
  %95 = load i64, ptr %vaarg.addr295, align 8
  %a296 = getelementptr inbounds %struct.argument, ptr %ap.0698, i64 0, i32 1
  store i64 %95, ptr %a296, align 16, !tbaa !69
  br label %for.inc

sw.bb297:                                         ; preds = %for.body
  %gp_offset299 = load i32, ptr %args, align 8
  %fits_in_gp300 = icmp ult i32 %gp_offset299, 41
  br i1 %fits_in_gp300, label %vaarg.in_reg301, label %vaarg.in_mem303

vaarg.in_reg301:                                  ; preds = %sw.bb297
  %reg_save_area302 = load ptr, ptr %2, align 8
  %96 = zext nneg i32 %gp_offset299 to i64
  %97 = getelementptr i8, ptr %reg_save_area302, i64 %96
  %98 = add nuw nsw i32 %gp_offset299, 8
  store i32 %98, ptr %args, align 8
  br label %vaarg.end307

vaarg.in_mem303:                                  ; preds = %sw.bb297
  %overflow_arg_area305 = load ptr, ptr %overflow_arg_area_p589, align 8
  %overflow_arg_area.next306 = getelementptr i8, ptr %overflow_arg_area305, i64 8
  store ptr %overflow_arg_area.next306, ptr %overflow_arg_area_p589, align 8
  br label %vaarg.end307

vaarg.end307:                                     ; preds = %vaarg.in_mem303, %vaarg.in_reg301
  %vaarg.addr308 = phi ptr [ %97, %vaarg.in_reg301 ], [ %overflow_arg_area305, %vaarg.in_mem303 ]
  %99 = load i64, ptr %vaarg.addr308, align 8
  %a309 = getelementptr inbounds %struct.argument, ptr %ap.0698, i64 0, i32 1
  store i64 %99, ptr %a309, align 16, !tbaa !69
  br label %for.inc

sw.bb310:                                         ; preds = %for.body
  %gp_offset312 = load i32, ptr %args, align 8
  %fits_in_gp313 = icmp ult i32 %gp_offset312, 41
  br i1 %fits_in_gp313, label %vaarg.in_reg314, label %vaarg.in_mem316

vaarg.in_reg314:                                  ; preds = %sw.bb310
  %reg_save_area315 = load ptr, ptr %2, align 8
  %100 = zext nneg i32 %gp_offset312 to i64
  %101 = getelementptr i8, ptr %reg_save_area315, i64 %100
  %102 = add nuw nsw i32 %gp_offset312, 8
  store i32 %102, ptr %args, align 8
  br label %vaarg.end320

vaarg.in_mem316:                                  ; preds = %sw.bb310
  %overflow_arg_area318 = load ptr, ptr %overflow_arg_area_p589, align 8
  %overflow_arg_area.next319 = getelementptr i8, ptr %overflow_arg_area318, i64 8
  store ptr %overflow_arg_area.next319, ptr %overflow_arg_area_p589, align 8
  br label %vaarg.end320

vaarg.end320:                                     ; preds = %vaarg.in_mem316, %vaarg.in_reg314
  %vaarg.addr321 = phi ptr [ %101, %vaarg.in_reg314 ], [ %overflow_arg_area318, %vaarg.in_mem316 ]
  %103 = load i64, ptr %vaarg.addr321, align 8
  %a322 = getelementptr inbounds %struct.argument, ptr %ap.0698, i64 0, i32 1
  store i64 %103, ptr %a322, align 16, !tbaa !69
  br label %for.inc

sw.bb323:                                         ; preds = %for.body
  %gp_offset325 = load i32, ptr %args, align 8
  %fits_in_gp326 = icmp ult i32 %gp_offset325, 41
  br i1 %fits_in_gp326, label %vaarg.in_reg327, label %vaarg.in_mem329

vaarg.in_reg327:                                  ; preds = %sw.bb323
  %reg_save_area328 = load ptr, ptr %2, align 8
  %104 = zext nneg i32 %gp_offset325 to i64
  %105 = getelementptr i8, ptr %reg_save_area328, i64 %104
  %106 = add nuw nsw i32 %gp_offset325, 8
  store i32 %106, ptr %args, align 8
  br label %vaarg.end333

vaarg.in_mem329:                                  ; preds = %sw.bb323
  %overflow_arg_area331 = load ptr, ptr %overflow_arg_area_p589, align 8
  %overflow_arg_area.next332 = getelementptr i8, ptr %overflow_arg_area331, i64 8
  store ptr %overflow_arg_area.next332, ptr %overflow_arg_area_p589, align 8
  br label %vaarg.end333

vaarg.end333:                                     ; preds = %vaarg.in_mem329, %vaarg.in_reg327
  %vaarg.addr334 = phi ptr [ %105, %vaarg.in_reg327 ], [ %overflow_arg_area331, %vaarg.in_mem329 ]
  %107 = load i64, ptr %vaarg.addr334, align 8
  %a335 = getelementptr inbounds %struct.argument, ptr %ap.0698, i64 0, i32 1
  store i64 %107, ptr %a335, align 16, !tbaa !69
  br label %for.inc

sw.bb336:                                         ; preds = %for.body
  %fp_offset = load i32, ptr %fp_offset_p, align 4
  %fits_in_fp = icmp ult i32 %fp_offset, 161
  br i1 %fits_in_fp, label %vaarg.in_reg337, label %vaarg.in_mem339

vaarg.in_reg337:                                  ; preds = %sw.bb336
  %reg_save_area338 = load ptr, ptr %2, align 8
  %108 = zext nneg i32 %fp_offset to i64
  %109 = getelementptr i8, ptr %reg_save_area338, i64 %108
  %110 = add nuw nsw i32 %fp_offset, 16
  store i32 %110, ptr %fp_offset_p, align 4
  br label %vaarg.end343

vaarg.in_mem339:                                  ; preds = %sw.bb336
  %overflow_arg_area341 = load ptr, ptr %overflow_arg_area_p589, align 8
  %overflow_arg_area.next342 = getelementptr i8, ptr %overflow_arg_area341, i64 8
  store ptr %overflow_arg_area.next342, ptr %overflow_arg_area_p589, align 8
  br label %vaarg.end343

vaarg.end343:                                     ; preds = %vaarg.in_mem339, %vaarg.in_reg337
  %vaarg.addr344 = phi ptr [ %109, %vaarg.in_reg337 ], [ %overflow_arg_area341, %vaarg.in_mem339 ]
  %111 = load double, ptr %vaarg.addr344, align 8
  %a345 = getelementptr inbounds %struct.argument, ptr %ap.0698, i64 0, i32 1
  store double %111, ptr %a345, align 16, !tbaa !69
  br label %for.inc

sw.bb346:                                         ; preds = %for.body
  %overflow_arg_area348 = load ptr, ptr %overflow_arg_area_p589, align 8
  %112 = getelementptr inbounds i8, ptr %overflow_arg_area348, i64 15
  %overflow_arg_area348.aligned = tail call align 16 ptr @llvm.ptrmask.p0.i64(ptr nonnull %112, i64 -16)
  %overflow_arg_area.next349 = getelementptr i8, ptr %overflow_arg_area348.aligned, i64 16
  store ptr %overflow_arg_area.next349, ptr %overflow_arg_area_p589, align 8
  %113 = load x86_fp80, ptr %overflow_arg_area348.aligned, align 16
  %a350 = getelementptr inbounds %struct.argument, ptr %ap.0698, i64 0, i32 1
  store x86_fp80 %113, ptr %a350, align 16, !tbaa !69
  br label %for.inc

sw.bb351:                                         ; preds = %for.body
  %gp_offset353 = load i32, ptr %args, align 8
  %fits_in_gp354 = icmp ult i32 %gp_offset353, 41
  br i1 %fits_in_gp354, label %vaarg.in_reg355, label %vaarg.in_mem357

vaarg.in_reg355:                                  ; preds = %sw.bb351
  %reg_save_area356 = load ptr, ptr %2, align 8
  %114 = zext nneg i32 %gp_offset353 to i64
  %115 = getelementptr i8, ptr %reg_save_area356, i64 %114
  %116 = add nuw nsw i32 %gp_offset353, 8
  store i32 %116, ptr %args, align 8
  br label %vaarg.end361

vaarg.in_mem357:                                  ; preds = %sw.bb351
  %overflow_arg_area359 = load ptr, ptr %overflow_arg_area_p589, align 8
  %overflow_arg_area.next360 = getelementptr i8, ptr %overflow_arg_area359, i64 8
  store ptr %overflow_arg_area.next360, ptr %overflow_arg_area_p589, align 8
  br label %vaarg.end361

vaarg.end361:                                     ; preds = %vaarg.in_mem357, %vaarg.in_reg355
  %vaarg.addr362 = phi ptr [ %115, %vaarg.in_reg355 ], [ %overflow_arg_area359, %vaarg.in_mem357 ]
  %117 = load i32, ptr %vaarg.addr362, align 4
  %a363 = getelementptr inbounds %struct.argument, ptr %ap.0698, i64 0, i32 1
  store i32 %117, ptr %a363, align 16, !tbaa !69
  br label %for.inc

sw.bb364:                                         ; preds = %for.body
  %gp_offset366 = load i32, ptr %args, align 8
  %fits_in_gp367 = icmp ult i32 %gp_offset366, 41
  br i1 %fits_in_gp367, label %vaarg.in_reg368, label %vaarg.in_mem370

vaarg.in_reg368:                                  ; preds = %sw.bb364
  %reg_save_area369 = load ptr, ptr %2, align 8
  %118 = zext nneg i32 %gp_offset366 to i64
  %119 = getelementptr i8, ptr %reg_save_area369, i64 %118
  %120 = add nuw nsw i32 %gp_offset366, 8
  store i32 %120, ptr %args, align 8
  br label %vaarg.end374

vaarg.in_mem370:                                  ; preds = %sw.bb364
  %overflow_arg_area372 = load ptr, ptr %overflow_arg_area_p589, align 8
  %overflow_arg_area.next373 = getelementptr i8, ptr %overflow_arg_area372, i64 8
  store ptr %overflow_arg_area.next373, ptr %overflow_arg_area_p589, align 8
  br label %vaarg.end374

vaarg.end374:                                     ; preds = %vaarg.in_mem370, %vaarg.in_reg368
  %vaarg.addr375 = phi ptr [ %119, %vaarg.in_reg368 ], [ %overflow_arg_area372, %vaarg.in_mem370 ]
  %121 = load i32, ptr %vaarg.addr375, align 4
  %a376 = getelementptr inbounds %struct.argument, ptr %ap.0698, i64 0, i32 1
  store i32 %121, ptr %a376, align 16, !tbaa !69
  br label %for.inc

sw.bb377:                                         ; preds = %for.body
  %gp_offset379 = load i32, ptr %args, align 8
  %fits_in_gp380 = icmp ult i32 %gp_offset379, 41
  br i1 %fits_in_gp380, label %vaarg.in_reg381, label %vaarg.in_mem383

vaarg.in_reg381:                                  ; preds = %sw.bb377
  %reg_save_area382 = load ptr, ptr %2, align 8
  %122 = zext nneg i32 %gp_offset379 to i64
  %123 = getelementptr i8, ptr %reg_save_area382, i64 %122
  %124 = add nuw nsw i32 %gp_offset379, 8
  store i32 %124, ptr %args, align 8
  br label %vaarg.end387

vaarg.in_mem383:                                  ; preds = %sw.bb377
  %overflow_arg_area385 = load ptr, ptr %overflow_arg_area_p589, align 8
  %overflow_arg_area.next386 = getelementptr i8, ptr %overflow_arg_area385, i64 8
  store ptr %overflow_arg_area.next386, ptr %overflow_arg_area_p589, align 8
  br label %vaarg.end387

vaarg.end387:                                     ; preds = %vaarg.in_mem383, %vaarg.in_reg381
  %vaarg.addr388 = phi ptr [ %123, %vaarg.in_reg381 ], [ %overflow_arg_area385, %vaarg.in_mem383 ]
  %125 = load ptr, ptr %vaarg.addr388, align 8
  %a389 = getelementptr inbounds %struct.argument, ptr %ap.0698, i64 0, i32 1
  %cmp391 = icmp eq ptr %125, null
  %spec.store.select = select i1 %cmp391, ptr @.str.79, ptr %125
  store ptr %spec.store.select, ptr %a389, align 16
  br label %for.inc

sw.bb394:                                         ; preds = %for.body
  %gp_offset396 = load i32, ptr %args, align 8
  %fits_in_gp397 = icmp ult i32 %gp_offset396, 41
  br i1 %fits_in_gp397, label %vaarg.in_reg398, label %vaarg.in_mem400

vaarg.in_reg398:                                  ; preds = %sw.bb394
  %reg_save_area399 = load ptr, ptr %2, align 8
  %126 = zext nneg i32 %gp_offset396 to i64
  %127 = getelementptr i8, ptr %reg_save_area399, i64 %126
  %128 = add nuw nsw i32 %gp_offset396, 8
  store i32 %128, ptr %args, align 8
  br label %vaarg.end404

vaarg.in_mem400:                                  ; preds = %sw.bb394
  %overflow_arg_area402 = load ptr, ptr %overflow_arg_area_p589, align 8
  %overflow_arg_area.next403 = getelementptr i8, ptr %overflow_arg_area402, i64 8
  store ptr %overflow_arg_area.next403, ptr %overflow_arg_area_p589, align 8
  br label %vaarg.end404

vaarg.end404:                                     ; preds = %vaarg.in_mem400, %vaarg.in_reg398
  %vaarg.addr405 = phi ptr [ %127, %vaarg.in_reg398 ], [ %overflow_arg_area402, %vaarg.in_mem400 ]
  %129 = load ptr, ptr %vaarg.addr405, align 8
  %a406 = getelementptr inbounds %struct.argument, ptr %ap.0698, i64 0, i32 1
  %cmp408 = icmp eq ptr %129, null
  %spec.store.select695 = select i1 %cmp408, ptr @printf_fetchargs.wide_null_string, ptr %129
  store ptr %spec.store.select695, ptr %a406, align 16
  br label %for.inc

sw.bb413:                                         ; preds = %for.body
  %gp_offset415 = load i32, ptr %args, align 8
  %fits_in_gp416 = icmp ult i32 %gp_offset415, 41
  br i1 %fits_in_gp416, label %vaarg.in_reg417, label %vaarg.in_mem419

vaarg.in_reg417:                                  ; preds = %sw.bb413
  %reg_save_area418 = load ptr, ptr %2, align 8
  %130 = zext nneg i32 %gp_offset415 to i64
  %131 = getelementptr i8, ptr %reg_save_area418, i64 %130
  %132 = add nuw nsw i32 %gp_offset415, 8
  store i32 %132, ptr %args, align 8
  br label %vaarg.end423

vaarg.in_mem419:                                  ; preds = %sw.bb413
  %overflow_arg_area421 = load ptr, ptr %overflow_arg_area_p589, align 8
  %overflow_arg_area.next422 = getelementptr i8, ptr %overflow_arg_area421, i64 8
  store ptr %overflow_arg_area.next422, ptr %overflow_arg_area_p589, align 8
  br label %vaarg.end423

vaarg.end423:                                     ; preds = %vaarg.in_mem419, %vaarg.in_reg417
  %vaarg.addr424 = phi ptr [ %131, %vaarg.in_reg417 ], [ %overflow_arg_area421, %vaarg.in_mem419 ]
  %133 = load ptr, ptr %vaarg.addr424, align 8
  %a425 = getelementptr inbounds %struct.argument, ptr %ap.0698, i64 0, i32 1
  store ptr %133, ptr %a425, align 16, !tbaa !69
  br label %for.inc

sw.bb426:                                         ; preds = %for.body
  %gp_offset428 = load i32, ptr %args, align 8
  %fits_in_gp429 = icmp ult i32 %gp_offset428, 41
  br i1 %fits_in_gp429, label %vaarg.in_reg430, label %vaarg.in_mem432

vaarg.in_reg430:                                  ; preds = %sw.bb426
  %reg_save_area431 = load ptr, ptr %2, align 8
  %134 = zext nneg i32 %gp_offset428 to i64
  %135 = getelementptr i8, ptr %reg_save_area431, i64 %134
  %136 = add nuw nsw i32 %gp_offset428, 8
  store i32 %136, ptr %args, align 8
  br label %vaarg.end436

vaarg.in_mem432:                                  ; preds = %sw.bb426
  %overflow_arg_area434 = load ptr, ptr %overflow_arg_area_p589, align 8
  %overflow_arg_area.next435 = getelementptr i8, ptr %overflow_arg_area434, i64 8
  store ptr %overflow_arg_area.next435, ptr %overflow_arg_area_p589, align 8
  br label %vaarg.end436

vaarg.end436:                                     ; preds = %vaarg.in_mem432, %vaarg.in_reg430
  %vaarg.addr437 = phi ptr [ %135, %vaarg.in_reg430 ], [ %overflow_arg_area434, %vaarg.in_mem432 ]
  %137 = load ptr, ptr %vaarg.addr437, align 8
  %a438 = getelementptr inbounds %struct.argument, ptr %ap.0698, i64 0, i32 1
  store ptr %137, ptr %a438, align 16, !tbaa !69
  br label %for.inc

sw.bb439:                                         ; preds = %for.body
  %gp_offset441 = load i32, ptr %args, align 8
  %fits_in_gp442 = icmp ult i32 %gp_offset441, 41
  br i1 %fits_in_gp442, label %vaarg.in_reg443, label %vaarg.in_mem445

vaarg.in_reg443:                                  ; preds = %sw.bb439
  %reg_save_area444 = load ptr, ptr %2, align 8
  %138 = zext nneg i32 %gp_offset441 to i64
  %139 = getelementptr i8, ptr %reg_save_area444, i64 %138
  %140 = add nuw nsw i32 %gp_offset441, 8
  store i32 %140, ptr %args, align 8
  br label %vaarg.end449

vaarg.in_mem445:                                  ; preds = %sw.bb439
  %overflow_arg_area447 = load ptr, ptr %overflow_arg_area_p589, align 8
  %overflow_arg_area.next448 = getelementptr i8, ptr %overflow_arg_area447, i64 8
  store ptr %overflow_arg_area.next448, ptr %overflow_arg_area_p589, align 8
  br label %vaarg.end449

vaarg.end449:                                     ; preds = %vaarg.in_mem445, %vaarg.in_reg443
  %vaarg.addr450 = phi ptr [ %139, %vaarg.in_reg443 ], [ %overflow_arg_area447, %vaarg.in_mem445 ]
  %141 = load ptr, ptr %vaarg.addr450, align 8
  %a451 = getelementptr inbounds %struct.argument, ptr %ap.0698, i64 0, i32 1
  store ptr %141, ptr %a451, align 16, !tbaa !69
  br label %for.inc

sw.bb452:                                         ; preds = %for.body
  %gp_offset454 = load i32, ptr %args, align 8
  %fits_in_gp455 = icmp ult i32 %gp_offset454, 41
  br i1 %fits_in_gp455, label %vaarg.in_reg456, label %vaarg.in_mem458

vaarg.in_reg456:                                  ; preds = %sw.bb452
  %reg_save_area457 = load ptr, ptr %2, align 8
  %142 = zext nneg i32 %gp_offset454 to i64
  %143 = getelementptr i8, ptr %reg_save_area457, i64 %142
  %144 = add nuw nsw i32 %gp_offset454, 8
  store i32 %144, ptr %args, align 8
  br label %vaarg.end462

vaarg.in_mem458:                                  ; preds = %sw.bb452
  %overflow_arg_area460 = load ptr, ptr %overflow_arg_area_p589, align 8
  %overflow_arg_area.next461 = getelementptr i8, ptr %overflow_arg_area460, i64 8
  store ptr %overflow_arg_area.next461, ptr %overflow_arg_area_p589, align 8
  br label %vaarg.end462

vaarg.end462:                                     ; preds = %vaarg.in_mem458, %vaarg.in_reg456
  %vaarg.addr463 = phi ptr [ %143, %vaarg.in_reg456 ], [ %overflow_arg_area460, %vaarg.in_mem458 ]
  %145 = load ptr, ptr %vaarg.addr463, align 8
  %a464 = getelementptr inbounds %struct.argument, ptr %ap.0698, i64 0, i32 1
  store ptr %145, ptr %a464, align 16, !tbaa !69
  br label %for.inc

sw.bb465:                                         ; preds = %for.body
  %gp_offset467 = load i32, ptr %args, align 8
  %fits_in_gp468 = icmp ult i32 %gp_offset467, 41
  br i1 %fits_in_gp468, label %vaarg.in_reg469, label %vaarg.in_mem471

vaarg.in_reg469:                                  ; preds = %sw.bb465
  %reg_save_area470 = load ptr, ptr %2, align 8
  %146 = zext nneg i32 %gp_offset467 to i64
  %147 = getelementptr i8, ptr %reg_save_area470, i64 %146
  %148 = add nuw nsw i32 %gp_offset467, 8
  store i32 %148, ptr %args, align 8
  br label %vaarg.end475

vaarg.in_mem471:                                  ; preds = %sw.bb465
  %overflow_arg_area473 = load ptr, ptr %overflow_arg_area_p589, align 8
  %overflow_arg_area.next474 = getelementptr i8, ptr %overflow_arg_area473, i64 8
  store ptr %overflow_arg_area.next474, ptr %overflow_arg_area_p589, align 8
  br label %vaarg.end475

vaarg.end475:                                     ; preds = %vaarg.in_mem471, %vaarg.in_reg469
  %vaarg.addr476 = phi ptr [ %147, %vaarg.in_reg469 ], [ %overflow_arg_area473, %vaarg.in_mem471 ]
  %149 = load ptr, ptr %vaarg.addr476, align 8
  %a477 = getelementptr inbounds %struct.argument, ptr %ap.0698, i64 0, i32 1
  store ptr %149, ptr %a477, align 16, !tbaa !69
  br label %for.inc

sw.bb478:                                         ; preds = %for.body
  %gp_offset480 = load i32, ptr %args, align 8
  %fits_in_gp481 = icmp ult i32 %gp_offset480, 41
  br i1 %fits_in_gp481, label %vaarg.in_reg482, label %vaarg.in_mem484

vaarg.in_reg482:                                  ; preds = %sw.bb478
  %reg_save_area483 = load ptr, ptr %2, align 8
  %150 = zext nneg i32 %gp_offset480 to i64
  %151 = getelementptr i8, ptr %reg_save_area483, i64 %150
  %152 = add nuw nsw i32 %gp_offset480, 8
  store i32 %152, ptr %args, align 8
  br label %vaarg.end488

vaarg.in_mem484:                                  ; preds = %sw.bb478
  %overflow_arg_area486 = load ptr, ptr %overflow_arg_area_p589, align 8
  %overflow_arg_area.next487 = getelementptr i8, ptr %overflow_arg_area486, i64 8
  store ptr %overflow_arg_area.next487, ptr %overflow_arg_area_p589, align 8
  br label %vaarg.end488

vaarg.end488:                                     ; preds = %vaarg.in_mem484, %vaarg.in_reg482
  %vaarg.addr489 = phi ptr [ %151, %vaarg.in_reg482 ], [ %overflow_arg_area486, %vaarg.in_mem484 ]
  %153 = load ptr, ptr %vaarg.addr489, align 8
  %a490 = getelementptr inbounds %struct.argument, ptr %ap.0698, i64 0, i32 1
  store ptr %153, ptr %a490, align 16, !tbaa !69
  br label %for.inc

sw.bb491:                                         ; preds = %for.body
  %gp_offset493 = load i32, ptr %args, align 8
  %fits_in_gp494 = icmp ult i32 %gp_offset493, 41
  br i1 %fits_in_gp494, label %vaarg.in_reg495, label %vaarg.in_mem497

vaarg.in_reg495:                                  ; preds = %sw.bb491
  %reg_save_area496 = load ptr, ptr %2, align 8
  %154 = zext nneg i32 %gp_offset493 to i64
  %155 = getelementptr i8, ptr %reg_save_area496, i64 %154
  %156 = add nuw nsw i32 %gp_offset493, 8
  store i32 %156, ptr %args, align 8
  br label %vaarg.end501

vaarg.in_mem497:                                  ; preds = %sw.bb491
  %overflow_arg_area499 = load ptr, ptr %overflow_arg_area_p589, align 8
  %overflow_arg_area.next500 = getelementptr i8, ptr %overflow_arg_area499, i64 8
  store ptr %overflow_arg_area.next500, ptr %overflow_arg_area_p589, align 8
  br label %vaarg.end501

vaarg.end501:                                     ; preds = %vaarg.in_mem497, %vaarg.in_reg495
  %vaarg.addr502 = phi ptr [ %155, %vaarg.in_reg495 ], [ %overflow_arg_area499, %vaarg.in_mem497 ]
  %157 = load ptr, ptr %vaarg.addr502, align 8
  %a503 = getelementptr inbounds %struct.argument, ptr %ap.0698, i64 0, i32 1
  store ptr %157, ptr %a503, align 16, !tbaa !69
  br label %for.inc

sw.bb504:                                         ; preds = %for.body
  %gp_offset506 = load i32, ptr %args, align 8
  %fits_in_gp507 = icmp ult i32 %gp_offset506, 41
  br i1 %fits_in_gp507, label %vaarg.in_reg508, label %vaarg.in_mem510

vaarg.in_reg508:                                  ; preds = %sw.bb504
  %reg_save_area509 = load ptr, ptr %2, align 8
  %158 = zext nneg i32 %gp_offset506 to i64
  %159 = getelementptr i8, ptr %reg_save_area509, i64 %158
  %160 = add nuw nsw i32 %gp_offset506, 8
  store i32 %160, ptr %args, align 8
  br label %vaarg.end514

vaarg.in_mem510:                                  ; preds = %sw.bb504
  %overflow_arg_area512 = load ptr, ptr %overflow_arg_area_p589, align 8
  %overflow_arg_area.next513 = getelementptr i8, ptr %overflow_arg_area512, i64 8
  store ptr %overflow_arg_area.next513, ptr %overflow_arg_area_p589, align 8
  br label %vaarg.end514

vaarg.end514:                                     ; preds = %vaarg.in_mem510, %vaarg.in_reg508
  %vaarg.addr515 = phi ptr [ %159, %vaarg.in_reg508 ], [ %overflow_arg_area512, %vaarg.in_mem510 ]
  %161 = load ptr, ptr %vaarg.addr515, align 8
  %a516 = getelementptr inbounds %struct.argument, ptr %ap.0698, i64 0, i32 1
  store ptr %161, ptr %a516, align 16, !tbaa !69
  br label %for.inc

sw.bb517:                                         ; preds = %for.body
  %gp_offset519 = load i32, ptr %args, align 8
  %fits_in_gp520 = icmp ult i32 %gp_offset519, 41
  br i1 %fits_in_gp520, label %vaarg.in_reg521, label %vaarg.in_mem523

vaarg.in_reg521:                                  ; preds = %sw.bb517
  %reg_save_area522 = load ptr, ptr %2, align 8
  %162 = zext nneg i32 %gp_offset519 to i64
  %163 = getelementptr i8, ptr %reg_save_area522, i64 %162
  %164 = add nuw nsw i32 %gp_offset519, 8
  store i32 %164, ptr %args, align 8
  br label %vaarg.end527

vaarg.in_mem523:                                  ; preds = %sw.bb517
  %overflow_arg_area525 = load ptr, ptr %overflow_arg_area_p589, align 8
  %overflow_arg_area.next526 = getelementptr i8, ptr %overflow_arg_area525, i64 8
  store ptr %overflow_arg_area.next526, ptr %overflow_arg_area_p589, align 8
  br label %vaarg.end527

vaarg.end527:                                     ; preds = %vaarg.in_mem523, %vaarg.in_reg521
  %vaarg.addr528 = phi ptr [ %163, %vaarg.in_reg521 ], [ %overflow_arg_area525, %vaarg.in_mem523 ]
  %165 = load ptr, ptr %vaarg.addr528, align 8
  %a529 = getelementptr inbounds %struct.argument, ptr %ap.0698, i64 0, i32 1
  store ptr %165, ptr %a529, align 16, !tbaa !69
  br label %for.inc

sw.bb530:                                         ; preds = %for.body
  %gp_offset532 = load i32, ptr %args, align 8
  %fits_in_gp533 = icmp ult i32 %gp_offset532, 41
  br i1 %fits_in_gp533, label %vaarg.in_reg534, label %vaarg.in_mem536

vaarg.in_reg534:                                  ; preds = %sw.bb530
  %reg_save_area535 = load ptr, ptr %2, align 8
  %166 = zext nneg i32 %gp_offset532 to i64
  %167 = getelementptr i8, ptr %reg_save_area535, i64 %166
  %168 = add nuw nsw i32 %gp_offset532, 8
  store i32 %168, ptr %args, align 8
  br label %vaarg.end540

vaarg.in_mem536:                                  ; preds = %sw.bb530
  %overflow_arg_area538 = load ptr, ptr %overflow_arg_area_p589, align 8
  %overflow_arg_area.next539 = getelementptr i8, ptr %overflow_arg_area538, i64 8
  store ptr %overflow_arg_area.next539, ptr %overflow_arg_area_p589, align 8
  br label %vaarg.end540

vaarg.end540:                                     ; preds = %vaarg.in_mem536, %vaarg.in_reg534
  %vaarg.addr541 = phi ptr [ %167, %vaarg.in_reg534 ], [ %overflow_arg_area538, %vaarg.in_mem536 ]
  %169 = load ptr, ptr %vaarg.addr541, align 8
  %a542 = getelementptr inbounds %struct.argument, ptr %ap.0698, i64 0, i32 1
  store ptr %169, ptr %a542, align 16, !tbaa !69
  br label %for.inc

sw.bb543:                                         ; preds = %for.body
  %gp_offset545 = load i32, ptr %args, align 8
  %fits_in_gp546 = icmp ult i32 %gp_offset545, 41
  br i1 %fits_in_gp546, label %vaarg.in_reg547, label %vaarg.in_mem549

vaarg.in_reg547:                                  ; preds = %sw.bb543
  %reg_save_area548 = load ptr, ptr %2, align 8
  %170 = zext nneg i32 %gp_offset545 to i64
  %171 = getelementptr i8, ptr %reg_save_area548, i64 %170
  %172 = add nuw nsw i32 %gp_offset545, 8
  store i32 %172, ptr %args, align 8
  br label %vaarg.end553

vaarg.in_mem549:                                  ; preds = %sw.bb543
  %overflow_arg_area551 = load ptr, ptr %overflow_arg_area_p589, align 8
  %overflow_arg_area.next552 = getelementptr i8, ptr %overflow_arg_area551, i64 8
  store ptr %overflow_arg_area.next552, ptr %overflow_arg_area_p589, align 8
  br label %vaarg.end553

vaarg.end553:                                     ; preds = %vaarg.in_mem549, %vaarg.in_reg547
  %vaarg.addr554 = phi ptr [ %171, %vaarg.in_reg547 ], [ %overflow_arg_area551, %vaarg.in_mem549 ]
  %173 = load ptr, ptr %vaarg.addr554, align 8
  %a555 = getelementptr inbounds %struct.argument, ptr %ap.0698, i64 0, i32 1
  store ptr %173, ptr %a555, align 16, !tbaa !69
  br label %for.inc

sw.bb556:                                         ; preds = %for.body
  %gp_offset558 = load i32, ptr %args, align 8
  %fits_in_gp559 = icmp ult i32 %gp_offset558, 41
  br i1 %fits_in_gp559, label %vaarg.in_reg560, label %vaarg.in_mem562

vaarg.in_reg560:                                  ; preds = %sw.bb556
  %reg_save_area561 = load ptr, ptr %2, align 8
  %174 = zext nneg i32 %gp_offset558 to i64
  %175 = getelementptr i8, ptr %reg_save_area561, i64 %174
  %176 = add nuw nsw i32 %gp_offset558, 8
  store i32 %176, ptr %args, align 8
  br label %vaarg.end566

vaarg.in_mem562:                                  ; preds = %sw.bb556
  %overflow_arg_area564 = load ptr, ptr %overflow_arg_area_p589, align 8
  %overflow_arg_area.next565 = getelementptr i8, ptr %overflow_arg_area564, i64 8
  store ptr %overflow_arg_area.next565, ptr %overflow_arg_area_p589, align 8
  br label %vaarg.end566

vaarg.end566:                                     ; preds = %vaarg.in_mem562, %vaarg.in_reg560
  %vaarg.addr567 = phi ptr [ %175, %vaarg.in_reg560 ], [ %overflow_arg_area564, %vaarg.in_mem562 ]
  %177 = load ptr, ptr %vaarg.addr567, align 8
  %a568 = getelementptr inbounds %struct.argument, ptr %ap.0698, i64 0, i32 1
  store ptr %177, ptr %a568, align 16, !tbaa !69
  br label %for.inc

sw.bb569:                                         ; preds = %for.body
  %gp_offset571 = load i32, ptr %args, align 8
  %fits_in_gp572 = icmp ult i32 %gp_offset571, 41
  br i1 %fits_in_gp572, label %vaarg.in_reg573, label %vaarg.in_mem575

vaarg.in_reg573:                                  ; preds = %sw.bb569
  %reg_save_area574 = load ptr, ptr %2, align 8
  %178 = zext nneg i32 %gp_offset571 to i64
  %179 = getelementptr i8, ptr %reg_save_area574, i64 %178
  %180 = add nuw nsw i32 %gp_offset571, 8
  store i32 %180, ptr %args, align 8
  br label %vaarg.end579

vaarg.in_mem575:                                  ; preds = %sw.bb569
  %overflow_arg_area577 = load ptr, ptr %overflow_arg_area_p589, align 8
  %overflow_arg_area.next578 = getelementptr i8, ptr %overflow_arg_area577, i64 8
  store ptr %overflow_arg_area.next578, ptr %overflow_arg_area_p589, align 8
  br label %vaarg.end579

vaarg.end579:                                     ; preds = %vaarg.in_mem575, %vaarg.in_reg573
  %vaarg.addr580 = phi ptr [ %179, %vaarg.in_reg573 ], [ %overflow_arg_area577, %vaarg.in_mem575 ]
  %181 = load ptr, ptr %vaarg.addr580, align 8
  %a581 = getelementptr inbounds %struct.argument, ptr %ap.0698, i64 0, i32 1
  store ptr %181, ptr %a581, align 16, !tbaa !69
  br label %for.inc

sw.bb582:                                         ; preds = %for.body
  %gp_offset584 = load i32, ptr %args, align 8
  %fits_in_gp585 = icmp ult i32 %gp_offset584, 41
  br i1 %fits_in_gp585, label %vaarg.in_reg586, label %vaarg.in_mem588

vaarg.in_reg586:                                  ; preds = %sw.bb582
  %reg_save_area587 = load ptr, ptr %2, align 8
  %182 = zext nneg i32 %gp_offset584 to i64
  %183 = getelementptr i8, ptr %reg_save_area587, i64 %182
  %184 = add nuw nsw i32 %gp_offset584, 8
  store i32 %184, ptr %args, align 8
  br label %vaarg.end592

vaarg.in_mem588:                                  ; preds = %sw.bb582
  %overflow_arg_area590 = load ptr, ptr %overflow_arg_area_p589, align 8
  %overflow_arg_area.next591 = getelementptr i8, ptr %overflow_arg_area590, i64 8
  store ptr %overflow_arg_area.next591, ptr %overflow_arg_area_p589, align 8
  br label %vaarg.end592

vaarg.end592:                                     ; preds = %vaarg.in_mem588, %vaarg.in_reg586
  %vaarg.addr593 = phi ptr [ %183, %vaarg.in_reg586 ], [ %overflow_arg_area590, %vaarg.in_mem588 ]
  %185 = load ptr, ptr %vaarg.addr593, align 8
  %a594 = getelementptr inbounds %struct.argument, ptr %ap.0698, i64 0, i32 1
  store ptr %185, ptr %a594, align 16, !tbaa !69
  br label %for.inc

sw.default:                                       ; preds = %for.body
  tail call void @abort() #43
  unreachable

for.inc:                                          ; preds = %vaarg.end592, %vaarg.end579, %vaarg.end566, %vaarg.end553, %vaarg.end540, %vaarg.end527, %vaarg.end514, %vaarg.end501, %vaarg.end488, %vaarg.end475, %vaarg.end462, %vaarg.end449, %vaarg.end436, %vaarg.end423, %vaarg.end404, %vaarg.end387, %vaarg.end374, %vaarg.end361, %sw.bb346, %vaarg.end343, %vaarg.end333, %vaarg.end320, %vaarg.end307, %vaarg.end294, %vaarg.end281, %vaarg.end268, %vaarg.end254, %vaarg.end240, %vaarg.end227, %vaarg.end214, %vaarg.end201, %vaarg.end188, %vaarg.end174, %vaarg.end160, %vaarg.end146, %vaarg.end132, %vaarg.end119, %vaarg.end106, %vaarg.end93, %vaarg.end80, %vaarg.end67, %vaarg.end54, %vaarg.end40, %vaarg.end26, %vaarg.end12, %vaarg.end
  %inc = add nuw i64 %i.0697, 1
  %incdec.ptr = getelementptr inbounds %struct.argument, ptr %ap.0698, i64 1
  %186 = load i64, ptr %a, align 16, !tbaa !64
  %cmp = icmp ult i64 %inc, %186
  br i1 %cmp, label %for.body, label %cleanup, !llvm.loop !70

cleanup:                                          ; preds = %for.inc, %for.body, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ 0, %for.inc ], [ -1, %for.body ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare ptr @llvm.ptrmask.p0.i64(ptr, i64) #23

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @printf_parse(ptr noundef %format, ptr noundef %d, ptr noundef %a) local_unnamed_addr #6 {
entry:
  store i64 0, ptr %d, align 8, !tbaa !71
  %direct_alloc_dir = getelementptr inbounds %struct.char_directives, ptr %d, i64 0, i32 4
  %dir = getelementptr inbounds %struct.char_directives, ptr %d, i64 0, i32 1
  store ptr %direct_alloc_dir, ptr %dir, align 8, !tbaa !74
  store i64 0, ptr %a, align 16, !tbaa !64
  %direct_alloc_arg = getelementptr inbounds %struct.arguments, ptr %a, i64 0, i32 2
  %arg = getelementptr inbounds %struct.arguments, ptr %a, i64 0, i32 1
  store ptr %direct_alloc_arg, ptr %arg, align 8, !tbaa !67
  %0 = load i8, ptr %format, align 1, !tbaa !14
  %cmp.not1566 = icmp eq i8 %0, 0
  br i1 %cmp.not1566, label %while.end937, label %while.body

while.body:                                       ; preds = %cleanup934, %entry
  %1 = phi i8 [ %64, %cleanup934 ], [ %0, %entry ]
  %cp.01572 = phi ptr [ %cp.22, %cleanup934 ], [ %format, %entry ]
  %arg_posn.01571 = phi i64 [ %arg_posn.10, %cleanup934 ], [ 0, %entry ]
  %d_allocated.01570 = phi i64 [ %d_allocated.4, %cleanup934 ], [ 7, %entry ]
  %a_allocated.01569 = phi i64 [ %a_allocated.16, %cleanup934 ], [ 7, %entry ]
  %max_width_length.01568 = phi i64 [ %max_width_length.5, %cleanup934 ], [ 0, %entry ]
  %max_precision_length.01567 = phi i64 [ %max_precision_length.5, %cleanup934 ], [ 0, %entry ]
  %incdec.ptr = getelementptr inbounds i8, ptr %cp.01572, i64 1
  %cmp5 = icmp eq i8 %1, 37
  br i1 %cmp5, label %if.then, label %cleanup934

if.then:                                          ; preds = %while.body
  %2 = load ptr, ptr %dir, align 8, !tbaa !74
  %3 = load i64, ptr %d, align 8, !tbaa !71
  %arrayidx = getelementptr inbounds %struct.char_directive, ptr %2, i64 %3
  store ptr %cp.01572, ptr %arrayidx, align 8, !tbaa !75
  %flags = getelementptr inbounds %struct.char_directive, ptr %2, i64 %3, i32 2
  store i32 0, ptr %flags, align 8, !tbaa !76
  %width_start = getelementptr inbounds %struct.char_directive, ptr %2, i64 %3, i32 3
  %width_end = getelementptr inbounds %struct.char_directive, ptr %2, i64 %3, i32 4
  %width_arg_index = getelementptr inbounds %struct.char_directive, ptr %2, i64 %3, i32 5
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %width_start, i8 0, i64 16, i1 false)
  store i64 -1, ptr %width_arg_index, align 8, !tbaa !77
  %precision_start = getelementptr inbounds %struct.char_directive, ptr %2, i64 %3, i32 6
  %precision_end = getelementptr inbounds %struct.char_directive, ptr %2, i64 %3, i32 7
  %precision_arg_index = getelementptr inbounds %struct.char_directive, ptr %2, i64 %3, i32 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %precision_start, i8 0, i64 16, i1 false)
  store i64 -1, ptr %precision_arg_index, align 8, !tbaa !78
  %arg_index9 = getelementptr inbounds %struct.char_directive, ptr %2, i64 %3, i32 10
  store i64 -1, ptr %arg_index9, align 8, !tbaa !79
  %4 = load i8, ptr %incdec.ptr, align 1, !tbaa !14
  %5 = add i8 %4, -48
  %or.cond1359 = icmp ult i8 %5, 10
  br i1 %or.cond1359, label %for.inc, label %if.end58

for.inc:                                          ; preds = %for.inc, %if.then
  %np.01481 = phi ptr [ %incdec.ptr23, %for.inc ], [ %incdec.ptr, %if.then ]
  %incdec.ptr23 = getelementptr inbounds i8, ptr %np.01481, i64 1
  %.pr = load i8, ptr %incdec.ptr23, align 1, !tbaa !14
  %6 = add i8 %.pr, -48
  %or.cond1360 = icmp ult i8 %6, 10
  br i1 %or.cond1360, label %for.inc, label %for.end, !llvm.loop !80

for.end:                                          ; preds = %for.inc
  %cmp25 = icmp eq i8 %.pr, 36
  br i1 %cmp25, label %for.body37, label %if.end58

for.body37:                                       ; preds = %for.body37, %for.end
  %7 = phi i8 [ %8, %for.body37 ], [ %4, %for.end ]
  %np.11484 = phi ptr [ %incdec.ptr43, %for.body37 ], [ %incdec.ptr, %for.end ]
  %n.01483 = phi i64 [ %cond.i, %for.body37 ], [ 0, %for.end ]
  %cmp38 = icmp ult i64 %n.01483, 1844674407370955162
  %mul = mul i64 %n.01483, 10
  %cond = select i1 %cmp38, i64 %mul, i64 -1
  %narrow1358 = add nsw i8 %7, -48
  %sub = zext nneg i8 %narrow1358 to i64
  %cond.i = tail call i64 @llvm.uadd.sat.i64(i64 %cond, i64 %sub)
  %incdec.ptr43 = getelementptr inbounds i8, ptr %np.11484, i64 1
  %8 = load i8, ptr %incdec.ptr43, align 1, !tbaa !14
  %9 = add i8 %8, -48
  %or.cond1361 = icmp ult i8 %9, 10
  br i1 %or.cond1361, label %for.body37, label %for.end44, !llvm.loop !81

for.end44:                                        ; preds = %for.body37
  switch i64 %cond.i, label %10 [
    i64 0, label %error
    i64 -1, label %error
  ]

10:                                               ; preds = %for.end44
  %sub52 = add i64 %cond.i, -1
  %add.ptr53 = getelementptr inbounds i8, ptr %np.11484, i64 2
  br label %if.end58

if.end58:                                         ; preds = %10, %for.end, %if.then
  %arg_index.3 = phi i64 [ -1, %if.then ], [ %sub52, %10 ], [ -1, %for.end ]
  %cp.4 = phi ptr [ %incdec.ptr, %if.then ], [ %add.ptr53, %10 ], [ %incdec.ptr, %for.end ]
  br label %for.cond59

for.cond59:                                       ; preds = %if.end120, %if.end58
  %11 = phi i32 [ 0, %if.end58 ], [ %or71, %if.end120 ]
  %cp.5 = phi ptr [ %cp.4, %if.end58 ], [ %cp.6, %if.end120 ]
  %12 = load i8, ptr %cp.5, align 1, !tbaa !14
  switch i8 %12, label %if.else305 [
    i8 39, label %if.end120
    i8 45, label %if.then69
    i8 43, label %if.then77
    i8 32, label %if.then85
    i8 35, label %if.then93
    i8 48, label %if.then101
    i8 73, label %if.then109
    i8 42, label %if.then125
  ]

if.then69:                                        ; preds = %for.cond59
  br label %if.end120

if.then77:                                        ; preds = %for.cond59
  br label %if.end120

if.then85:                                        ; preds = %for.cond59
  br label %if.end120

if.then93:                                        ; preds = %for.cond59
  br label %if.end120

if.then101:                                       ; preds = %for.cond59
  br label %if.end120

if.then109:                                       ; preds = %for.cond59
  br label %if.end120

if.end120:                                        ; preds = %if.then109, %if.then101, %if.then93, %if.then85, %if.then77, %if.then69, %for.cond59
  %.sink = phi i32 [ 2, %if.then69 ], [ 8, %if.then85 ], [ 32, %if.then101 ], [ 64, %if.then109 ], [ 16, %if.then93 ], [ 4, %if.then77 ], [ 1, %for.cond59 ]
  %or71 = or i32 %11, %.sink
  store i32 %or71, ptr %flags, align 8, !tbaa !76
  %cp.6 = getelementptr inbounds i8, ptr %cp.5, i64 1
  br label %for.cond59

if.then125:                                       ; preds = %for.cond59
  store ptr %cp.5, ptr %width_start, align 8, !tbaa !82
  %incdec.ptr127 = getelementptr inbounds i8, ptr %cp.5, i64 1
  store ptr %incdec.ptr127, ptr %width_end, align 8, !tbaa !83
  %spec.store.select = tail call i64 @llvm.umax.i64(i64 %max_width_length.01568, i64 1)
  %13 = load i8, ptr %incdec.ptr127, align 1, !tbaa !14
  %14 = add i8 %13, -48
  %or.cond1362 = icmp ult i8 %14, 10
  br i1 %or.cond1362, label %for.inc152, label %if.then206

for.inc152:                                       ; preds = %for.inc152, %if.then125
  %np141.01488 = phi ptr [ %incdec.ptr153, %for.inc152 ], [ %incdec.ptr127, %if.then125 ]
  %incdec.ptr153 = getelementptr inbounds i8, ptr %np141.01488, i64 1
  %.pr1406 = load i8, ptr %incdec.ptr153, align 1, !tbaa !14
  %15 = add i8 %.pr1406, -48
  %or.cond1363 = icmp ult i8 %15, 10
  br i1 %or.cond1363, label %for.inc152, label %for.end154, !llvm.loop !84

for.end154:                                       ; preds = %for.inc152
  %cmp156 = icmp eq i8 %.pr1406, 36
  br i1 %cmp156, label %for.body169, label %if.then206

for.body169:                                      ; preds = %for.body169, %for.end154
  %16 = phi i8 [ %17, %for.body169 ], [ %13, %for.end154 ]
  %np141.11492 = phi ptr [ %incdec.ptr182, %for.body169 ], [ %incdec.ptr127, %for.end154 ]
  %n159.01491 = phi i64 [ %cond.i1381, %for.body169 ], [ 0, %for.end154 ]
  %cmp170 = icmp ult i64 %n159.01491, 1844674407370955162
  %mul173 = mul i64 %n159.01491, 10
  %cond176 = select i1 %cmp170, i64 %mul173, i64 -1
  %narrow1357 = add nsw i8 %16, -48
  %sub178 = zext nneg i8 %narrow1357 to i64
  %cond.i1381 = tail call i64 @llvm.uadd.sat.i64(i64 %cond176, i64 %sub178)
  %incdec.ptr182 = getelementptr inbounds i8, ptr %np141.11492, i64 1
  %17 = load i8, ptr %incdec.ptr182, align 1, !tbaa !14
  %18 = add i8 %17, -48
  %or.cond1364 = icmp ult i8 %18, 10
  br i1 %or.cond1364, label %for.body169, label %for.end183, !llvm.loop !85

for.end183:                                       ; preds = %for.body169
  switch i64 %cond.i1381, label %if.end202.thread [
    i64 0, label %error
    i64 -1, label %error
  ]

if.end202.thread:                                 ; preds = %for.end183
  %sub192 = add i64 %cond.i1381, -1
  store i64 %sub192, ptr %width_arg_index, align 8, !tbaa !77
  %add.ptr194 = getelementptr inbounds i8, ptr %np141.11492, i64 2
  br label %if.end213

if.then206:                                       ; preds = %for.end154, %if.then125
  %inc = add i64 %arg_posn.01571, 1
  store i64 %arg_posn.01571, ptr %width_arg_index, align 8, !tbaa !77
  %cmp209 = icmp eq i64 %arg_posn.01571, -1
  br i1 %cmp209, label %error, label %if.end213

if.end213:                                        ; preds = %if.then206, %if.end202.thread
  %19 = phi i64 [ %arg_posn.01571, %if.then206 ], [ %sub192, %if.end202.thread ]
  %cp.101459 = phi ptr [ %incdec.ptr127, %if.then206 ], [ %add.ptr194, %if.end202.thread ]
  %arg_posn.1 = phi i64 [ %inc, %if.then206 ], [ %arg_posn.01571, %if.end202.thread ]
  %cmp216.not = icmp ult i64 %19, %a_allocated.01569
  br i1 %cmp216.not, label %if.end213.if.end274_crit_edge, label %if.then218

if.end213.if.end274_crit_edge:                    ; preds = %if.end213
  %.pre.pre = load ptr, ptr %arg, align 8, !tbaa !67
  br label %if.end274

if.then218:                                       ; preds = %if.end213
  %cmp219 = icmp sgt i64 %a_allocated.01569, -1
  %mul222 = shl i64 %a_allocated.01569, 1
  %cond225 = select i1 %cmp219, i64 %mul222, i64 -1
  %cmp226.not = icmp ugt i64 %cond225, %19
  %cond.i13821549 = add nuw i64 %19, 1
  %a_allocated.1 = select i1 %cmp226.not, i64 %cond225, i64 %cond.i13821549
  %cmp231 = icmp ugt i64 %a_allocated.1, 576460752303423487
  %mul234 = shl i64 %a_allocated.1, 5
  br i1 %cmp231, label %out_of_memory, label %if.end241

if.end241:                                        ; preds = %if.then218
  %20 = load ptr, ptr %arg, align 8, !tbaa !67
  %cmp245.not = icmp eq ptr %20, %direct_alloc_arg
  br i1 %cmp245.not, label %cond.false250, label %cond.true247

cond.true247:                                     ; preds = %if.end241
  %cond.i1383 = tail call i64 @llvm.umax.i64(i64 %mul234, i64 1)
  %call.i1384 = tail call ptr @realloc(ptr noundef %20, i64 noundef %cond.i1383) #47
  br label %cond.end252

cond.false250:                                    ; preds = %if.end241
  %call251 = tail call noalias ptr @malloc(i64 noundef %mul234) #48
  br label %cond.end252

cond.end252:                                      ; preds = %cond.false250, %cond.true247
  %cond253 = phi ptr [ %call.i1384, %cond.true247 ], [ %call251, %cond.false250 ]
  %cmp254 = icmp eq ptr %cond253, null
  br i1 %cmp254, label %out_of_memory, label %if.end257

if.end257:                                        ; preds = %cond.end252
  %21 = load ptr, ptr %arg, align 8, !tbaa !67
  %cmp261 = icmp eq ptr %21, %direct_alloc_arg
  br i1 %cmp261, label %if.then263, label %cleanup270

if.then263:                                       ; preds = %if.end257
  %22 = load i64, ptr %a, align 16, !tbaa !64
  %mul266 = shl i64 %22, 5
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %cond253, ptr noundef nonnull align 1 %direct_alloc_arg, i64 noundef %mul266, i1 noundef false) #41
  br label %cleanup270

cleanup270:                                       ; preds = %if.then263, %if.end257
  store ptr %cond253, ptr %arg, align 8, !tbaa !67
  br label %if.end274

if.end274:                                        ; preds = %cleanup270, %if.end213.if.end274_crit_edge
  %.pre = phi ptr [ %cond253, %cleanup270 ], [ %.pre.pre, %if.end213.if.end274_crit_edge ]
  %a_allocated.2 = phi i64 [ %a_allocated.1, %cleanup270 ], [ %a_allocated.01569, %if.end213.if.end274_crit_edge ]
  %a.promoted = load i64, ptr %a, align 16, !tbaa !64
  %cmp277.not1496 = icmp ugt i64 %a.promoted, %19
  br i1 %cmp277.not1496, label %while.end, label %while.body279

while.body279:                                    ; preds = %while.body279, %if.end274
  %inc28214951497 = phi i64 [ %inc282, %while.body279 ], [ %a.promoted, %if.end274 ]
  %inc282 = add i64 %inc28214951497, 1
  %arrayidx283 = getelementptr inbounds %struct.argument, ptr %.pre, i64 %inc28214951497
  store i32 0, ptr %arrayidx283, align 16, !tbaa !68
  %cmp277.not = icmp ugt i64 %inc282, %19
  br i1 %cmp277.not, label %while.cond275.while.end_crit_edge, label %while.body279, !llvm.loop !86

while.cond275.while.end_crit_edge:                ; preds = %while.body279
  store i64 %inc282, ptr %a, align 16, !tbaa !64
  br label %while.end

while.end:                                        ; preds = %while.cond275.while.end_crit_edge, %if.end274
  %arrayidx285 = getelementptr inbounds %struct.argument, ptr %.pre, i64 %19
  %23 = load i32, ptr %arrayidx285, align 16, !tbaa !68
  switch i32 %23, label %error [
    i32 0, label %if.then289
    i32 5, label %if.end336thread-pre-split
  ]

if.then289:                                       ; preds = %while.end
  store i32 5, ptr %arrayidx285, align 16, !tbaa !68
  br label %if.end336thread-pre-split

if.else305:                                       ; preds = %for.cond59
  %24 = add i8 %12, -48
  %or.cond1365 = icmp ult i8 %24, 10
  br i1 %or.cond1365, label %if.then313, label %if.end336

if.then313:                                       ; preds = %if.else305
  store ptr %cp.5, ptr %width_start, align 8, !tbaa !82
  br label %for.cond315

for.cond315:                                      ; preds = %for.cond315, %if.then313
  %cp.11 = phi ptr [ %cp.5, %if.then313 ], [ %incdec.ptr326, %for.cond315 ]
  %25 = load i8, ptr %cp.11, align 1, !tbaa !14
  %26 = add i8 %25, -48
  %or.cond1366 = icmp ult i8 %26, 10
  %incdec.ptr326 = getelementptr inbounds i8, ptr %cp.11, i64 1
  br i1 %or.cond1366, label %for.cond315, label %for.end327, !llvm.loop !87

for.end327:                                       ; preds = %for.cond315
  store ptr %cp.11, ptr %width_end, align 8, !tbaa !83
  %sub.ptr.lhs.cast = ptrtoint ptr %cp.11 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %cp.5 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %spec.select = tail call i64 @llvm.umax.i64(i64 %max_width_length.01568, i64 %sub.ptr.sub)
  br label %if.end336thread-pre-split

if.end336thread-pre-split:                        ; preds = %for.end327, %if.then289, %while.end
  %max_width_length.2.ph = phi i64 [ %spec.store.select, %while.end ], [ %spec.store.select, %if.then289 ], [ %spec.select, %for.end327 ]
  %a_allocated.4.ph = phi i64 [ %a_allocated.2, %while.end ], [ %a_allocated.2, %if.then289 ], [ %a_allocated.01569, %for.end327 ]
  %arg_posn.2.ph = phi i64 [ %arg_posn.1, %while.end ], [ %arg_posn.1, %if.then289 ], [ %arg_posn.01571, %for.end327 ]
  %cp.12.ph = phi ptr [ %cp.101459, %while.end ], [ %cp.101459, %if.then289 ], [ %cp.11, %for.end327 ]
  %.pr1420 = load i8, ptr %cp.12.ph, align 1, !tbaa !14
  br label %if.end336

if.end336:                                        ; preds = %if.end336thread-pre-split, %if.else305
  %27 = phi i8 [ %.pr1420, %if.end336thread-pre-split ], [ %12, %if.else305 ]
  %max_width_length.2 = phi i64 [ %max_width_length.2.ph, %if.end336thread-pre-split ], [ %max_width_length.01568, %if.else305 ]
  %a_allocated.4 = phi i64 [ %a_allocated.4.ph, %if.end336thread-pre-split ], [ %a_allocated.01569, %if.else305 ]
  %arg_posn.2 = phi i64 [ %arg_posn.2.ph, %if.end336thread-pre-split ], [ %arg_posn.01571, %if.else305 ]
  %cp.12 = phi ptr [ %cp.12.ph, %if.end336thread-pre-split ], [ %cp.5, %if.else305 ]
  %cmp338 = icmp eq i8 %27, 46
  br i1 %cmp338, label %if.then340, label %if.end558

if.then340:                                       ; preds = %if.end336
  %incdec.ptr341 = getelementptr inbounds i8, ptr %cp.12, i64 1
  %28 = load i8, ptr %incdec.ptr341, align 1, !tbaa !14
  %cmp343 = icmp eq i8 %28, 42
  store ptr %cp.12, ptr %precision_start, align 8, !tbaa !88
  br i1 %cmp343, label %if.then345, label %for.cond534

if.then345:                                       ; preds = %if.then340
  %incdec.ptr348 = getelementptr inbounds i8, ptr %cp.12, i64 2
  store ptr %incdec.ptr348, ptr %precision_end, align 8, !tbaa !89
  %spec.store.select999 = tail call i64 @llvm.umax.i64(i64 %max_precision_length.01567, i64 2)
  %29 = load i8, ptr %incdec.ptr348, align 1, !tbaa !14
  %30 = add i8 %29, -48
  %or.cond1367 = icmp ult i8 %30, 10
  br i1 %or.cond1367, label %for.inc373, label %if.end423

for.inc373:                                       ; preds = %for.inc373, %if.then345
  %np362.01499 = phi ptr [ %incdec.ptr374, %for.inc373 ], [ %incdec.ptr348, %if.then345 ]
  %incdec.ptr374 = getelementptr inbounds i8, ptr %np362.01499, i64 1
  %.pr1421 = load i8, ptr %incdec.ptr374, align 1, !tbaa !14
  %31 = add i8 %.pr1421, -48
  %or.cond1368 = icmp ult i8 %31, 10
  br i1 %or.cond1368, label %for.inc373, label %for.end375, !llvm.loop !90

for.end375:                                       ; preds = %for.inc373
  %cmp377 = icmp eq i8 %.pr1421, 36
  br i1 %cmp377, label %for.body390, label %if.end423

for.body390:                                      ; preds = %for.body390, %for.end375
  %32 = phi i8 [ %33, %for.body390 ], [ %29, %for.end375 ]
  %n380.01503 = phi i64 [ %cond.i1385, %for.body390 ], [ 0, %for.end375 ]
  %np362.11502 = phi ptr [ %incdec.ptr403, %for.body390 ], [ %incdec.ptr348, %for.end375 ]
  %cmp391 = icmp ult i64 %n380.01503, 1844674407370955162
  %mul394 = mul i64 %n380.01503, 10
  %cond397 = select i1 %cmp391, i64 %mul394, i64 -1
  %narrow = add nsw i8 %32, -48
  %sub399 = zext nneg i8 %narrow to i64
  %cond.i1385 = tail call i64 @llvm.uadd.sat.i64(i64 %cond397, i64 %sub399)
  %incdec.ptr403 = getelementptr inbounds i8, ptr %np362.11502, i64 1
  %33 = load i8, ptr %incdec.ptr403, align 1, !tbaa !14
  %34 = add i8 %33, -48
  %or.cond1369 = icmp ult i8 %34, 10
  br i1 %or.cond1369, label %for.body390, label %for.end404, !llvm.loop !91

for.end404:                                       ; preds = %for.body390
  switch i64 %cond.i1385, label %if.end423.thread [
    i64 0, label %error
    i64 -1, label %error
  ]

if.end423.thread:                                 ; preds = %for.end404
  %sub413 = add i64 %cond.i1385, -1
  store i64 %sub413, ptr %precision_arg_index, align 8, !tbaa !78
  %add.ptr415 = getelementptr inbounds i8, ptr %np362.11502, i64 2
  br label %if.end435

if.end423:                                        ; preds = %for.end375, %if.then345
  %.pr1461 = load i64, ptr %precision_arg_index, align 8, !tbaa !78
  %cmp425 = icmp eq i64 %.pr1461, -1
  br i1 %cmp425, label %if.then427, label %if.end435

if.then427:                                       ; preds = %if.end423
  %inc428 = add i64 %arg_posn.2, 1
  store i64 %arg_posn.2, ptr %precision_arg_index, align 8, !tbaa !78
  %cmp431 = icmp eq i64 %arg_posn.2, -1
  br i1 %cmp431, label %error, label %if.end435

if.end435:                                        ; preds = %if.then427, %if.end423, %if.end423.thread
  %35 = phi i64 [ %arg_posn.2, %if.then427 ], [ %.pr1461, %if.end423 ], [ %sub413, %if.end423.thread ]
  %cp.161464 = phi ptr [ %incdec.ptr348, %if.then427 ], [ %incdec.ptr348, %if.end423 ], [ %add.ptr415, %if.end423.thread ]
  %arg_posn.3 = phi i64 [ %inc428, %if.then427 ], [ %arg_posn.2, %if.end423 ], [ %arg_posn.2, %if.end423.thread ]
  %cmp438.not = icmp ult i64 %35, %a_allocated.4
  br i1 %cmp438.not, label %if.end435.if.end498_crit_edge, label %if.then440

if.end435.if.end498_crit_edge:                    ; preds = %if.end435
  %.pre1526.pre = load ptr, ptr %arg, align 8, !tbaa !67
  br label %if.end498

if.then440:                                       ; preds = %if.end435
  %cmp443 = icmp sgt i64 %a_allocated.4, -1
  %mul446 = shl i64 %a_allocated.4, 1
  %cond449 = select i1 %cmp443, i64 %mul446, i64 -1
  %cmp450.not = icmp ugt i64 %cond449, %35
  %cond.i13861548 = add nuw i64 %35, 1
  %a_allocated.5 = select i1 %cmp450.not, i64 %cond449, i64 %cond.i13861548
  %cmp455 = icmp ugt i64 %a_allocated.5, 576460752303423487
  %mul458 = shl i64 %a_allocated.5, 5
  br i1 %cmp455, label %out_of_memory, label %if.end465

if.end465:                                        ; preds = %if.then440
  %36 = load ptr, ptr %arg, align 8, !tbaa !67
  %cmp469.not = icmp eq ptr %36, %direct_alloc_arg
  br i1 %cmp469.not, label %cond.false474, label %cond.true471

cond.true471:                                     ; preds = %if.end465
  %cond.i1387 = tail call i64 @llvm.umax.i64(i64 %mul458, i64 1)
  %call.i1388 = tail call ptr @realloc(ptr noundef %36, i64 noundef %cond.i1387) #47
  br label %cond.end476

cond.false474:                                    ; preds = %if.end465
  %call475 = tail call noalias ptr @malloc(i64 noundef %mul458) #48
  br label %cond.end476

cond.end476:                                      ; preds = %cond.false474, %cond.true471
  %cond477 = phi ptr [ %call.i1388, %cond.true471 ], [ %call475, %cond.false474 ]
  %cmp478 = icmp eq ptr %cond477, null
  br i1 %cmp478, label %out_of_memory, label %if.end481

if.end481:                                        ; preds = %cond.end476
  %37 = load ptr, ptr %arg, align 8, !tbaa !67
  %cmp485 = icmp eq ptr %37, %direct_alloc_arg
  br i1 %cmp485, label %if.then487, label %cleanup494

if.then487:                                       ; preds = %if.end481
  %38 = load i64, ptr %a, align 16, !tbaa !64
  %mul490 = shl i64 %38, 5
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %cond477, ptr noundef nonnull align 1 %direct_alloc_arg, i64 noundef %mul490, i1 noundef false) #41
  br label %cleanup494

cleanup494:                                       ; preds = %if.then487, %if.end481
  store ptr %cond477, ptr %arg, align 8, !tbaa !67
  br label %if.end498

if.end498:                                        ; preds = %cleanup494, %if.end435.if.end498_crit_edge
  %.pre1526 = phi ptr [ %cond477, %cleanup494 ], [ %.pre1526.pre, %if.end435.if.end498_crit_edge ]
  %a_allocated.6 = phi i64 [ %a_allocated.5, %cleanup494 ], [ %a_allocated.4, %if.end435.if.end498_crit_edge ]
  %a.promoted1506 = load i64, ptr %a, align 16, !tbaa !64
  %cmp501.not1508 = icmp ugt i64 %a.promoted1506, %35
  br i1 %cmp501.not1508, label %while.end509, label %while.body503

while.body503:                                    ; preds = %while.body503, %if.end498
  %inc50615071509 = phi i64 [ %inc506, %while.body503 ], [ %a.promoted1506, %if.end498 ]
  %inc506 = add i64 %inc50615071509, 1
  %arrayidx507 = getelementptr inbounds %struct.argument, ptr %.pre1526, i64 %inc50615071509
  store i32 0, ptr %arrayidx507, align 16, !tbaa !68
  %cmp501.not = icmp ugt i64 %inc506, %35
  br i1 %cmp501.not, label %while.cond499.while.end509_crit_edge, label %while.body503, !llvm.loop !92

while.cond499.while.end509_crit_edge:             ; preds = %while.body503
  store i64 %inc506, ptr %a, align 16, !tbaa !64
  br label %while.end509

while.end509:                                     ; preds = %while.cond499.while.end509_crit_edge, %if.end498
  %arrayidx511 = getelementptr inbounds %struct.argument, ptr %.pre1526, i64 %35
  %39 = load i32, ptr %arrayidx511, align 16, !tbaa !68
  switch i32 %39, label %error [
    i32 0, label %if.then515
    i32 5, label %if.end558
  ]

if.then515:                                       ; preds = %while.end509
  store i32 5, ptr %arrayidx511, align 16, !tbaa !68
  br label %if.end558

for.cond534:                                      ; preds = %for.cond534, %if.then340
  %cp.17 = phi ptr [ %incdec.ptr545, %for.cond534 ], [ %incdec.ptr341, %if.then340 ]
  %40 = load i8, ptr %cp.17, align 1, !tbaa !14
  %41 = add i8 %40, -48
  %or.cond1370 = icmp ult i8 %41, 10
  %incdec.ptr545 = getelementptr inbounds i8, ptr %cp.17, i64 1
  br i1 %or.cond1370, label %for.cond534, label %for.end546, !llvm.loop !93

for.end546:                                       ; preds = %for.cond534
  store ptr %cp.17, ptr %precision_end, align 8, !tbaa !89
  %sub.ptr.lhs.cast550 = ptrtoint ptr %cp.17 to i64
  %sub.ptr.rhs.cast551 = ptrtoint ptr %cp.12 to i64
  %sub.ptr.sub552 = sub i64 %sub.ptr.lhs.cast550, %sub.ptr.rhs.cast551
  %spec.select1371 = tail call i64 @llvm.umax.i64(i64 %max_precision_length.01567, i64 %sub.ptr.sub552)
  br label %if.end558

if.end558:                                        ; preds = %for.end546, %if.then515, %while.end509, %if.end336
  %max_precision_length.2 = phi i64 [ %spec.select1371, %for.end546 ], [ %max_precision_length.01567, %if.end336 ], [ %spec.store.select999, %if.then515 ], [ %spec.store.select999, %while.end509 ]
  %a_allocated.8 = phi i64 [ %a_allocated.4, %for.end546 ], [ %a_allocated.4, %if.end336 ], [ %a_allocated.6, %if.then515 ], [ %a_allocated.6, %while.end509 ]
  %arg_posn.4 = phi i64 [ %arg_posn.2, %for.end546 ], [ %arg_posn.2, %if.end336 ], [ %arg_posn.3, %if.then515 ], [ %arg_posn.3, %while.end509 ]
  %cp.18 = phi ptr [ %cp.17, %for.end546 ], [ %cp.12, %if.end336 ], [ %cp.161464, %if.then515 ], [ %cp.161464, %while.end509 ]
  %42 = load i8, ptr %cp.18, align 1, !tbaa !14
  switch i8 %42, label %if.end724 [
    i8 104, label %if.then563
    i8 108, label %if.then577
    i8 106, label %if.then591
    i8 122, label %if.then600
    i8 90, label %if.then600
    i8 116, label %if.then606
    i8 119, label %if.then612
    i8 76, label %if.then716
  ]

if.then563:                                       ; preds = %if.end558
  %arrayidx564 = getelementptr inbounds i8, ptr %cp.18, i64 1
  %43 = load i8, ptr %arrayidx564, align 1, !tbaa !14
  %cmp566 = icmp eq i8 %43, 104
  br i1 %cmp566, label %if.then568, label %if.end724

if.then568:                                       ; preds = %if.then563
  %add.ptr569 = getelementptr inbounds i8, ptr %cp.18, i64 2
  br label %if.end724

if.then577:                                       ; preds = %if.end558
  %arrayidx578 = getelementptr inbounds i8, ptr %cp.18, i64 1
  %44 = load i8, ptr %arrayidx578, align 1, !tbaa !14
  %cmp580 = icmp eq i8 %44, 108
  br i1 %cmp580, label %if.then582, label %if.end724

if.then582:                                       ; preds = %if.then577
  %add.ptr583 = getelementptr inbounds i8, ptr %cp.18, i64 2
  br label %if.end724

if.then591:                                       ; preds = %if.end558
  %incdec.ptr592 = getelementptr inbounds i8, ptr %cp.18, i64 1
  br label %if.end724

if.then600:                                       ; preds = %if.end558, %if.end558
  %incdec.ptr601 = getelementptr inbounds i8, ptr %cp.18, i64 1
  br label %if.end724

if.then606:                                       ; preds = %if.end558
  %incdec.ptr607 = getelementptr inbounds i8, ptr %cp.18, i64 1
  br label %if.end724

if.then612:                                       ; preds = %if.end558
  %arrayidx613 = getelementptr inbounds i8, ptr %cp.18, i64 1
  %45 = load i8, ptr %arrayidx613, align 1, !tbaa !14
  switch i8 %45, label %if.end724 [
    i8 102, label %if.then617
    i8 56, label %if.then669
    i8 49, label %land.lhs.true676
    i8 51, label %land.lhs.true688
    i8 54, label %land.lhs.true700
  ]

if.then617:                                       ; preds = %if.then612
  %arrayidx618 = getelementptr inbounds i8, ptr %cp.18, i64 2
  %46 = load i8, ptr %arrayidx618, align 1, !tbaa !14
  switch i8 %46, label %if.end724 [
    i8 56, label %if.then622
    i8 49, label %land.lhs.true629
    i8 51, label %land.lhs.true641
    i8 54, label %land.lhs.true653
  ]

if.then622:                                       ; preds = %if.then617
  %add.ptr623 = getelementptr inbounds i8, ptr %cp.18, i64 3
  br label %if.end724

land.lhs.true629:                                 ; preds = %if.then617
  %arrayidx630 = getelementptr inbounds i8, ptr %cp.18, i64 3
  %47 = load i8, ptr %arrayidx630, align 1, !tbaa !14
  %cmp632 = icmp eq i8 %47, 54
  br i1 %cmp632, label %if.then634, label %if.end724

if.then634:                                       ; preds = %land.lhs.true629
  %add.ptr635 = getelementptr inbounds i8, ptr %cp.18, i64 4
  br label %if.end724

land.lhs.true641:                                 ; preds = %if.then617
  %arrayidx642 = getelementptr inbounds i8, ptr %cp.18, i64 3
  %48 = load i8, ptr %arrayidx642, align 1, !tbaa !14
  %cmp644 = icmp eq i8 %48, 50
  br i1 %cmp644, label %if.then646, label %if.end724

if.then646:                                       ; preds = %land.lhs.true641
  %add.ptr647 = getelementptr inbounds i8, ptr %cp.18, i64 4
  br label %if.end724

land.lhs.true653:                                 ; preds = %if.then617
  %arrayidx654 = getelementptr inbounds i8, ptr %cp.18, i64 3
  %49 = load i8, ptr %arrayidx654, align 1, !tbaa !14
  %cmp656 = icmp eq i8 %49, 52
  br i1 %cmp656, label %if.then658, label %if.end724

if.then658:                                       ; preds = %land.lhs.true653
  %add.ptr659 = getelementptr inbounds i8, ptr %cp.18, i64 4
  br label %if.end724

if.then669:                                       ; preds = %if.then612
  %add.ptr670 = getelementptr inbounds i8, ptr %cp.18, i64 2
  br label %if.end724

land.lhs.true676:                                 ; preds = %if.then612
  %arrayidx677 = getelementptr inbounds i8, ptr %cp.18, i64 2
  %50 = load i8, ptr %arrayidx677, align 1, !tbaa !14
  %cmp679 = icmp eq i8 %50, 54
  br i1 %cmp679, label %if.then681, label %if.end724

if.then681:                                       ; preds = %land.lhs.true676
  %add.ptr682 = getelementptr inbounds i8, ptr %cp.18, i64 3
  br label %if.end724

land.lhs.true688:                                 ; preds = %if.then612
  %arrayidx689 = getelementptr inbounds i8, ptr %cp.18, i64 2
  %51 = load i8, ptr %arrayidx689, align 1, !tbaa !14
  %cmp691 = icmp eq i8 %51, 50
  br i1 %cmp691, label %if.then693, label %if.end724

if.then693:                                       ; preds = %land.lhs.true688
  %add.ptr694 = getelementptr inbounds i8, ptr %cp.18, i64 3
  br label %if.end724

land.lhs.true700:                                 ; preds = %if.then612
  %arrayidx701 = getelementptr inbounds i8, ptr %cp.18, i64 2
  %52 = load i8, ptr %arrayidx701, align 1, !tbaa !14
  %cmp703 = icmp eq i8 %52, 52
  br i1 %cmp703, label %if.then705, label %if.end724

if.then705:                                       ; preds = %land.lhs.true700
  %add.ptr706 = getelementptr inbounds i8, ptr %cp.18, i64 3
  br label %if.end724

if.then716:                                       ; preds = %if.end558
  %incdec.ptr717 = getelementptr inbounds i8, ptr %cp.18, i64 1
  br label %if.end724

if.end724:                                        ; preds = %if.then716, %if.then705, %land.lhs.true700, %if.then693, %land.lhs.true688, %if.then681, %land.lhs.true676, %if.then669, %if.then658, %land.lhs.true653, %if.then646, %land.lhs.true641, %if.then634, %land.lhs.true629, %if.then622, %if.then617, %if.then612, %if.then606, %if.then600, %if.then591, %if.then582, %if.then577, %if.then568, %if.then563, %if.end558
  %cmp740 = phi i1 [ false, %if.then568 ], [ false, %if.then582 ], [ true, %if.then591 ], [ true, %if.then600 ], [ true, %if.then606 ], [ false, %if.then622 ], [ false, %if.then634 ], [ false, %if.then646 ], [ false, %if.then658 ], [ false, %land.lhs.true653 ], [ false, %if.then669 ], [ false, %if.then681 ], [ false, %if.then693 ], [ false, %if.then705 ], [ false, %land.lhs.true700 ], [ false, %if.then716 ], [ false, %if.then563 ], [ true, %if.then577 ], [ false, %if.end558 ], [ false, %land.lhs.true641 ], [ false, %land.lhs.true629 ], [ false, %land.lhs.true688 ], [ false, %land.lhs.true676 ], [ false, %if.then617 ], [ false, %if.then612 ]
  %cmp743 = phi i1 [ false, %if.then568 ], [ true, %if.then582 ], [ false, %if.then591 ], [ false, %if.then600 ], [ false, %if.then606 ], [ false, %if.then622 ], [ false, %if.then634 ], [ false, %if.then646 ], [ false, %if.then658 ], [ false, %land.lhs.true653 ], [ false, %if.then669 ], [ false, %if.then681 ], [ false, %if.then693 ], [ false, %if.then705 ], [ false, %land.lhs.true700 ], [ true, %if.then716 ], [ false, %if.then563 ], [ false, %if.then577 ], [ false, %if.end558 ], [ false, %land.lhs.true641 ], [ false, %land.lhs.true629 ], [ false, %land.lhs.true688 ], [ false, %land.lhs.true676 ], [ false, %if.then617 ], [ false, %if.then612 ]
  %signed_type.0 = phi i32 [ 1, %if.then568 ], [ 9, %if.then582 ], [ 7, %if.then591 ], [ 7, %if.then600 ], [ 7, %if.then606 ], [ 19, %if.then622 ], [ 21, %if.then634 ], [ 23, %if.then646 ], [ 25, %if.then658 ], [ 5, %land.lhs.true653 ], [ 11, %if.then669 ], [ 13, %if.then681 ], [ 15, %if.then693 ], [ 17, %if.then705 ], [ 5, %land.lhs.true700 ], [ 9, %if.then716 ], [ 3, %if.then563 ], [ 7, %if.then577 ], [ 5, %if.end558 ], [ 5, %land.lhs.true641 ], [ 5, %land.lhs.true629 ], [ 5, %land.lhs.true688 ], [ 5, %land.lhs.true676 ], [ 5, %if.then617 ], [ 5, %if.then612 ]
  %unsigned_type.0 = phi i32 [ 2, %if.then568 ], [ 10, %if.then582 ], [ 8, %if.then591 ], [ 8, %if.then600 ], [ 8, %if.then606 ], [ 20, %if.then622 ], [ 22, %if.then634 ], [ 24, %if.then646 ], [ 26, %if.then658 ], [ 6, %land.lhs.true653 ], [ 12, %if.then669 ], [ 14, %if.then681 ], [ 16, %if.then693 ], [ 18, %if.then705 ], [ 6, %land.lhs.true700 ], [ 10, %if.then716 ], [ 4, %if.then563 ], [ 8, %if.then577 ], [ 6, %if.end558 ], [ 6, %land.lhs.true641 ], [ 6, %land.lhs.true629 ], [ 6, %land.lhs.true688 ], [ 6, %land.lhs.true676 ], [ 6, %if.then617 ], [ 6, %if.then612 ]
  %floatingpoint_type.0 = phi i32 [ 27, %if.then568 ], [ 28, %if.then582 ], [ 27, %if.then591 ], [ 27, %if.then600 ], [ 27, %if.then606 ], [ 27, %if.then622 ], [ 27, %if.then634 ], [ 27, %if.then646 ], [ 27, %if.then658 ], [ 27, %land.lhs.true653 ], [ 27, %if.then669 ], [ 27, %if.then681 ], [ 27, %if.then693 ], [ 27, %if.then705 ], [ 27, %land.lhs.true700 ], [ 28, %if.then716 ], [ 27, %if.then563 ], [ 27, %if.then577 ], [ 27, %if.end558 ], [ 27, %land.lhs.true641 ], [ 27, %land.lhs.true629 ], [ 27, %land.lhs.true688 ], [ 27, %land.lhs.true676 ], [ 27, %if.then617 ], [ 27, %if.then612 ]
  %cp.19 = phi ptr [ %add.ptr569, %if.then568 ], [ %add.ptr583, %if.then582 ], [ %incdec.ptr592, %if.then591 ], [ %incdec.ptr601, %if.then600 ], [ %incdec.ptr607, %if.then606 ], [ %add.ptr623, %if.then622 ], [ %add.ptr635, %if.then634 ], [ %add.ptr647, %if.then646 ], [ %add.ptr659, %if.then658 ], [ %cp.18, %land.lhs.true653 ], [ %add.ptr670, %if.then669 ], [ %add.ptr682, %if.then681 ], [ %add.ptr694, %if.then693 ], [ %add.ptr706, %if.then705 ], [ %cp.18, %land.lhs.true700 ], [ %incdec.ptr717, %if.then716 ], [ %arrayidx564, %if.then563 ], [ %arrayidx578, %if.then577 ], [ %cp.18, %if.end558 ], [ %cp.18, %land.lhs.true641 ], [ %cp.18, %land.lhs.true629 ], [ %cp.18, %land.lhs.true688 ], [ %cp.18, %land.lhs.true676 ], [ %cp.18, %if.then617 ], [ %cp.18, %if.then612 ]
  %incdec.ptr725 = getelementptr inbounds i8, ptr %cp.19, i64 1
  %53 = load i8, ptr %cp.19, align 1, !tbaa !14
  switch i8 %53, label %error [
    i8 100, label %if.then753
    i8 105, label %if.then753
    i8 98, label %sw.bb727
    i8 111, label %sw.bb727
    i8 117, label %sw.bb727
    i8 120, label %sw.bb727
    i8 88, label %sw.bb727
    i8 66, label %sw.bb727
    i8 102, label %sw.bb728
    i8 70, label %sw.bb728
    i8 101, label %sw.bb728
    i8 69, label %sw.bb728
    i8 103, label %sw.bb728
    i8 71, label %sw.bb728
    i8 97, label %sw.bb728
    i8 65, label %sw.bb728
    i8 99, label %sw.bb729
    i8 67, label %sw.bb738
    i8 115, label %sw.bb739
    i8 83, label %sw.bb748
    i8 112, label %sw.bb749
    i8 37, label %cleanup.cont869
  ]

sw.bb727:                                         ; preds = %if.end724, %if.end724, %if.end724, %if.end724, %if.end724, %if.end724
  br label %if.then753

sw.bb728:                                         ; preds = %if.end724, %if.end724, %if.end724, %if.end724, %if.end724, %if.end724, %if.end724, %if.end724
  br label %if.then753

sw.bb729:                                         ; preds = %if.end724
  %or.cond = or i1 %cmp740, %cmp743
  %. = select i1 %or.cond, i32 30, i32 29
  br label %if.then753

sw.bb738:                                         ; preds = %if.end724
  br label %if.then753

sw.bb739:                                         ; preds = %if.end724
  %or.cond1000 = or i1 %cmp740, %cmp743
  %.1372 = select i1 %or.cond1000, i32 32, i32 31
  br label %if.then753

sw.bb748:                                         ; preds = %if.end724
  br label %if.then753

sw.bb749:                                         ; preds = %if.end724
  br label %if.then753

if.then753:                                       ; preds = %sw.bb749, %sw.bb748, %sw.bb739, %sw.bb738, %sw.bb729, %sw.bb728, %sw.bb727, %if.end724, %if.end724
  %c.0.ph = phi i8 [ 115, %sw.bb739 ], [ 99, %sw.bb729 ], [ %53, %if.end724 ], [ %53, %if.end724 ], [ %53, %sw.bb727 ], [ %53, %sw.bb728 ], [ 99, %sw.bb738 ], [ 115, %sw.bb748 ], [ 112, %sw.bb749 ]
  %type559.0.ph = phi i32 [ %.1372, %sw.bb739 ], [ %., %sw.bb729 ], [ %signed_type.0, %if.end724 ], [ %signed_type.0, %if.end724 ], [ %unsigned_type.0, %sw.bb727 ], [ %floatingpoint_type.0, %sw.bb728 ], [ 30, %sw.bb738 ], [ 32, %sw.bb748 ], [ 33, %sw.bb749 ]
  store i64 %arg_index.3, ptr %arg_index9, align 8, !tbaa !79
  %cmp756 = icmp eq i64 %arg_index.3, -1
  br i1 %cmp756, label %if.then758, label %if.end766

if.then758:                                       ; preds = %if.then753
  %inc759 = add i64 %arg_posn.4, 1
  store i64 %arg_posn.4, ptr %arg_index9, align 8, !tbaa !79
  %cmp762 = icmp eq i64 %arg_posn.4, -1
  br i1 %cmp762, label %error, label %if.end766

if.end766:                                        ; preds = %if.then758, %if.then753
  %54 = phi i64 [ %arg_posn.4, %if.then758 ], [ %arg_index.3, %if.then753 ]
  %arg_posn.5 = phi i64 [ %inc759, %if.then758 ], [ %arg_posn.4, %if.then753 ]
  %cmp769.not = icmp ult i64 %54, %a_allocated.8
  br i1 %cmp769.not, label %if.end766.if.end829_crit_edge, label %if.then771

if.end766.if.end829_crit_edge:                    ; preds = %if.end766
  %.pre1527.pre = load ptr, ptr %arg, align 8, !tbaa !67
  br label %if.end829

if.then771:                                       ; preds = %if.end766
  %cmp774 = icmp sgt i64 %a_allocated.8, -1
  %mul777 = shl i64 %a_allocated.8, 1
  %cond780 = select i1 %cmp774, i64 %mul777, i64 -1
  %cmp781.not = icmp ugt i64 %cond780, %54
  %cond.i13891547 = add nuw i64 %54, 1
  %a_allocated.9 = select i1 %cmp781.not, i64 %cond780, i64 %cond.i13891547
  %cmp786 = icmp ugt i64 %a_allocated.9, 576460752303423487
  %mul789 = shl i64 %a_allocated.9, 5
  br i1 %cmp786, label %out_of_memory, label %if.end796

if.end796:                                        ; preds = %if.then771
  %55 = load ptr, ptr %arg, align 8, !tbaa !67
  %cmp800.not = icmp eq ptr %55, %direct_alloc_arg
  br i1 %cmp800.not, label %cond.false805, label %cond.true802

cond.true802:                                     ; preds = %if.end796
  %cond.i1390 = tail call i64 @llvm.umax.i64(i64 %mul789, i64 1)
  %call.i1391 = tail call ptr @realloc(ptr noundef %55, i64 noundef %cond.i1390) #47
  br label %cond.end807

cond.false805:                                    ; preds = %if.end796
  %call806 = tail call noalias ptr @malloc(i64 noundef %mul789) #48
  br label %cond.end807

cond.end807:                                      ; preds = %cond.false805, %cond.true802
  %cond808 = phi ptr [ %call.i1391, %cond.true802 ], [ %call806, %cond.false805 ]
  %cmp809 = icmp eq ptr %cond808, null
  br i1 %cmp809, label %out_of_memory, label %if.end812

if.end812:                                        ; preds = %cond.end807
  %56 = load ptr, ptr %arg, align 8, !tbaa !67
  %cmp816 = icmp eq ptr %56, %direct_alloc_arg
  br i1 %cmp816, label %if.then818, label %cleanup825

if.then818:                                       ; preds = %if.end812
  %57 = load i64, ptr %a, align 16, !tbaa !64
  %mul821 = shl i64 %57, 5
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %cond808, ptr noundef nonnull align 1 %direct_alloc_arg, i64 noundef %mul821, i1 noundef false) #41
  br label %cleanup825

cleanup825:                                       ; preds = %if.then818, %if.end812
  store ptr %cond808, ptr %arg, align 8, !tbaa !67
  br label %if.end829

if.end829:                                        ; preds = %cleanup825, %if.end766.if.end829_crit_edge
  %.pre1527 = phi ptr [ %cond808, %cleanup825 ], [ %.pre1527.pre, %if.end766.if.end829_crit_edge ]
  %a_allocated.10 = phi i64 [ %a_allocated.9, %cleanup825 ], [ %a_allocated.8, %if.end766.if.end829_crit_edge ]
  %a.promoted1510 = load i64, ptr %a, align 16, !tbaa !64
  %cmp832.not1512 = icmp ugt i64 %a.promoted1510, %54
  br i1 %cmp832.not1512, label %while.end840, label %while.body834

while.body834:                                    ; preds = %while.body834, %if.end829
  %inc83715111513 = phi i64 [ %inc837, %while.body834 ], [ %a.promoted1510, %if.end829 ]
  %inc837 = add i64 %inc83715111513, 1
  %arrayidx838 = getelementptr inbounds %struct.argument, ptr %.pre1527, i64 %inc83715111513
  store i32 0, ptr %arrayidx838, align 16, !tbaa !68
  %cmp832.not = icmp ugt i64 %inc837, %54
  br i1 %cmp832.not, label %while.cond830.while.end840_crit_edge, label %while.body834, !llvm.loop !94

while.cond830.while.end840_crit_edge:             ; preds = %while.body834
  store i64 %inc837, ptr %a, align 16, !tbaa !64
  br label %while.end840

while.end840:                                     ; preds = %while.cond830.while.end840_crit_edge, %if.end829
  %arrayidx842 = getelementptr inbounds %struct.argument, ptr %.pre1527, i64 %54
  %58 = load i32, ptr %arrayidx842, align 16, !tbaa !68
  %cmp844 = icmp eq i32 %58, 0
  br i1 %cmp844, label %if.then846, label %if.else850

if.then846:                                       ; preds = %while.end840
  store i32 %type559.0.ph, ptr %arrayidx842, align 16, !tbaa !68
  br label %cleanup.cont869

if.else850:                                       ; preds = %while.end840
  %cmp854.not = icmp eq i32 %58, %type559.0.ph
  br i1 %cmp854.not, label %cleanup.cont869, label %error

cleanup.cont869:                                  ; preds = %if.else850, %if.then846, %if.end724
  %c.01443 = phi i8 [ %53, %if.end724 ], [ %c.0.ph, %if.then846 ], [ %c.0.ph, %if.else850 ]
  %a_allocated.12 = phi i64 [ %a_allocated.8, %if.end724 ], [ %a_allocated.10, %if.then846 ], [ %a_allocated.10, %if.else850 ]
  %arg_posn.6 = phi i64 [ %arg_posn.4, %if.end724 ], [ %arg_posn.5, %if.then846 ], [ %arg_posn.5, %if.else850 ]
  %conversion = getelementptr inbounds %struct.char_directive, ptr %2, i64 %3, i32 9
  store i8 %c.01443, ptr %conversion, align 8, !tbaa !95
  %dir_end = getelementptr inbounds %struct.char_directive, ptr %2, i64 %3, i32 1
  store ptr %incdec.ptr725, ptr %dir_end, align 8, !tbaa !96
  %59 = load i64, ptr %d, align 8, !tbaa !71
  %inc871 = add i64 %59, 1
  store i64 %inc871, ptr %d, align 8, !tbaa !71
  %cmp873.not = icmp ult i64 %inc871, %d_allocated.01570
  br i1 %cmp873.not, label %cleanup934, label %if.then875

if.then875:                                       ; preds = %cleanup.cont869
  %cmp878 = icmp sgt i64 %d_allocated.01570, -1
  %mul881 = shl i64 %d_allocated.01570, 1
  %cond884 = select i1 %cmp878, i64 %mul881, i64 -1
  %cmp885 = icmp ugt i64 %cond884, 209622091746699450
  %mul888 = mul i64 %cond884, 88
  br i1 %cmp885, label %out_of_memory, label %if.end895

if.end895:                                        ; preds = %if.then875
  %60 = load ptr, ptr %dir, align 8, !tbaa !74
  %cmp899.not = icmp eq ptr %60, %direct_alloc_dir
  br i1 %cmp899.not, label %cond.false904, label %cond.true901

cond.true901:                                     ; preds = %if.end895
  %cond.i1392 = tail call i64 @llvm.umax.i64(i64 %mul888, i64 1)
  %call.i1393 = tail call ptr @realloc(ptr noundef %60, i64 noundef %cond.i1392) #47
  br label %cond.end906

cond.false904:                                    ; preds = %if.end895
  %call905 = tail call noalias ptr @malloc(i64 noundef %mul888) #48
  br label %cond.end906

cond.end906:                                      ; preds = %cond.false904, %cond.true901
  %cond907 = phi ptr [ %call.i1393, %cond.true901 ], [ %call905, %cond.false904 ]
  %cmp908 = icmp eq ptr %cond907, null
  br i1 %cmp908, label %out_of_memory, label %if.end911

if.end911:                                        ; preds = %cond.end906
  %61 = load ptr, ptr %dir, align 8, !tbaa !74
  %cmp915 = icmp eq ptr %61, %direct_alloc_dir
  br i1 %cmp915, label %if.then917, label %63

if.then917:                                       ; preds = %if.end911
  %62 = load i64, ptr %d, align 8, !tbaa !71
  %mul920 = mul i64 %62, 88
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %cond907, ptr noundef nonnull align 1 %direct_alloc_dir, i64 noundef %mul920, i1 noundef false) #41
  br label %63

63:                                               ; preds = %if.then917, %if.end911
  store ptr %cond907, ptr %dir, align 8, !tbaa !74
  br label %cleanup934

cleanup934:                                       ; preds = %63, %cleanup.cont869, %while.body
  %max_precision_length.5 = phi i64 [ %max_precision_length.01567, %while.body ], [ %max_precision_length.2, %cleanup.cont869 ], [ %max_precision_length.2, %63 ]
  %max_width_length.5 = phi i64 [ %max_width_length.01568, %while.body ], [ %max_width_length.2, %cleanup.cont869 ], [ %max_width_length.2, %63 ]
  %a_allocated.16 = phi i64 [ %a_allocated.01569, %while.body ], [ %a_allocated.12, %cleanup.cont869 ], [ %a_allocated.12, %63 ]
  %d_allocated.4 = phi i64 [ %d_allocated.01570, %while.body ], [ %d_allocated.01570, %cleanup.cont869 ], [ %mul881, %63 ]
  %arg_posn.10 = phi i64 [ %arg_posn.01571, %while.body ], [ %arg_posn.6, %cleanup.cont869 ], [ %arg_posn.6, %63 ]
  %cp.22 = phi ptr [ %incdec.ptr, %while.body ], [ %incdec.ptr725, %cleanup.cont869 ], [ %incdec.ptr725, %63 ]
  %64 = load i8, ptr %cp.22, align 1, !tbaa !14
  %cmp.not = icmp eq i8 %64, 0
  br i1 %cmp.not, label %while.end937, label %while.body

while.end937:                                     ; preds = %cleanup934, %entry
  %max_precision_length.0.lcssa = phi i64 [ 0, %entry ], [ %max_precision_length.5, %cleanup934 ]
  %max_width_length.0.lcssa = phi i64 [ 0, %entry ], [ %max_width_length.5, %cleanup934 ]
  %cp.0.lcssa = phi ptr [ %format, %entry ], [ %cp.22, %cleanup934 ]
  %65 = load ptr, ptr %dir, align 8, !tbaa !74
  %66 = load i64, ptr %d, align 8, !tbaa !71
  %arrayidx940 = getelementptr inbounds %struct.char_directive, ptr %65, i64 %66
  store ptr %cp.0.lcssa, ptr %arrayidx940, align 8, !tbaa !75
  %max_width_length942 = getelementptr inbounds %struct.char_directives, ptr %d, i64 0, i32 2
  store i64 %max_width_length.0.lcssa, ptr %max_width_length942, align 8, !tbaa !97
  %max_precision_length943 = getelementptr inbounds %struct.char_directives, ptr %d, i64 0, i32 3
  store i64 %max_precision_length.0.lcssa, ptr %max_precision_length943, align 8, !tbaa !98
  br label %cleanup978

error:                                            ; preds = %if.else850, %if.then758, %if.end724, %while.end509, %if.then427, %for.end404, %for.end404, %while.end, %if.then206, %for.end183, %for.end183, %for.end44, %for.end44
  %67 = load ptr, ptr %arg, align 8, !tbaa !67
  %cmp947.not = icmp eq ptr %67, %direct_alloc_arg
  br i1 %cmp947.not, label %if.end951, label %if.then949

if.then949:                                       ; preds = %error
  tail call void @free(ptr noundef %67) #41
  br label %if.end951

if.end951:                                        ; preds = %if.then949, %error
  %68 = load ptr, ptr %dir, align 8, !tbaa !74
  %cmp955.not = icmp eq ptr %68, %direct_alloc_dir
  br i1 %cmp955.not, label %if.end959, label %if.then957

if.then957:                                       ; preds = %if.end951
  tail call void @free(ptr noundef %68) #41
  br label %if.end959

if.end959:                                        ; preds = %if.then957, %if.end951
  %call960 = tail call ptr @__errno_location() #46
  store i32 22, ptr %call960, align 4, !tbaa !9
  br label %cleanup978

out_of_memory:                                    ; preds = %cond.end906, %if.then875, %cond.end807, %if.then771, %cond.end476, %if.then440, %cond.end252, %if.then218
  %69 = load ptr, ptr %arg, align 8, !tbaa !67
  %cmp964.not = icmp eq ptr %69, %direct_alloc_arg
  br i1 %cmp964.not, label %if.end968, label %if.then966

if.then966:                                       ; preds = %out_of_memory
  tail call void @free(ptr noundef %69) #41
  br label %if.end968

if.end968:                                        ; preds = %if.then966, %out_of_memory
  %70 = load ptr, ptr %dir, align 8, !tbaa !74
  %cmp972.not = icmp eq ptr %70, %direct_alloc_dir
  br i1 %cmp972.not, label %if.end976, label %if.then974

if.then974:                                       ; preds = %if.end968
  tail call void @free(ptr noundef %70) #41
  br label %if.end976

if.end976:                                        ; preds = %if.then974, %if.end968
  %call977 = tail call ptr @__errno_location() #46
  store i32 12, ptr %call977, align 4, !tbaa !9
  br label %cleanup978

cleanup978:                                       ; preds = %if.end976, %if.end959, %while.end937
  %retval.0 = phi i32 [ -1, %if.end976 ], [ -1, %if.end959 ], [ 0, %while.end937 ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.uadd.sat.i64(i64, i64) #23

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #23

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite)
declare noalias noundef ptr @realloc(ptr allocptr nocapture noundef, i64 noundef) local_unnamed_addr #24

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #25

; Function Attrs: nounwind uwtable
define dso_local ptr @proper_name_lite(ptr noundef %name_ascii, ptr noundef readnone %name_utf8) local_unnamed_addr #6 {
entry:
  %call = tail call ptr @dcgettext(ptr noundef null, ptr noundef %name_ascii, i32 noundef 5) #41
  %cmp.not = icmp eq ptr %call, %name_ascii
  br i1 %cmp.not, label %cond.false, label %cond.end6

cond.false:                                       ; preds = %entry
  %call1 = tail call ptr @locale_charset() #41
  %call2 = tail call i32 @c_strcasecmp(ptr noundef %call1, ptr noundef nonnull @.str.82) #42
  %cmp3 = icmp eq i32 %call2, 0
  %cond = select i1 %cmp3, ptr %name_utf8, ptr %name_ascii
  br label %cond.end6

cond.end6:                                        ; preds = %cond.false, %entry
  %cond7 = phi ptr [ %cond, %cond.false ], [ %call, %entry ]
  ret ptr %cond7
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @rpl_fclose(ptr noundef nonnull %fp) local_unnamed_addr #6 {
entry:
  %call = tail call i32 @fileno(ptr noundef nonnull %fp) #41
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call1 = tail call i32 @fclose(ptr noundef nonnull %fp)
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @__freading(ptr noundef nonnull %fp) #41
  %cmp3.not = icmp eq i32 %call2, 0
  br i1 %cmp3.not, label %land.lhs.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %call4 = tail call i32 @fileno(ptr noundef nonnull %fp) #41
  %call5 = tail call i64 @lseek(i32 noundef %call4, i64 noundef 0, i32 noundef 1) #41
  %cmp6.not = icmp eq i64 %call5, -1
  br i1 %cmp6.not, label %if.end10.thread, label %land.lhs.true

land.lhs.true:                                    ; preds = %lor.lhs.false, %if.end
  %call7 = tail call i32 @rpl_fflush(ptr noundef nonnull %fp) #41
  %tobool.not = icmp eq i32 %call7, 0
  br i1 %tobool.not, label %if.end10.thread, label %if.end10

if.end10.thread:                                  ; preds = %land.lhs.true, %lor.lhs.false
  %call1125 = tail call i32 @fclose(ptr noundef nonnull %fp)
  br label %cleanup

if.end10:                                         ; preds = %land.lhs.true
  %call9 = tail call ptr @__errno_location() #46
  %0 = load i32, ptr %call9, align 4, !tbaa !9
  %call11 = tail call i32 @fclose(ptr noundef nonnull %fp)
  %cmp12.not = icmp eq i32 %0, 0
  br i1 %cmp12.not, label %cleanup, label %if.then13

if.then13:                                        ; preds = %if.end10
  store i32 %0, ptr %call9, align 4, !tbaa !9
  br label %cleanup

cleanup:                                          ; preds = %if.then13, %if.end10, %if.end10.thread, %if.then
  %retval.0 = phi i32 [ %call1, %if.then ], [ -1, %if.then13 ], [ %call11, %if.end10 ], [ %call1125, %if.end10.thread ]
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind
declare noundef i32 @fileno(ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare i32 @__freading(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare i64 @lseek(i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @rpl_fflush(ptr noundef %stream) local_unnamed_addr #6 {
entry:
  %cmp = icmp eq ptr %stream, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %call = tail call i32 @__freading(ptr noundef nonnull %stream) #41
  %cmp1.not = icmp eq i32 %call, 0
  br i1 %cmp1.not, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %call2 = tail call i32 @fflush(ptr noundef %stream)
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %0 = load i32, ptr %stream, align 8, !tbaa !58
  %and.i = and i32 %0, 256
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %clear_ungetc_buffer_preserving_position.exit, label %if.then.i

if.then.i:                                        ; preds = %if.end
  %call.i = tail call i32 @rpl_fseeko(ptr noundef nonnull %stream, i64 noundef 0, i32 noundef 1) #41
  br label %clear_ungetc_buffer_preserving_position.exit

clear_ungetc_buffer_preserving_position.exit:     ; preds = %if.then.i, %if.end
  %call3 = tail call i32 @fflush(ptr noundef nonnull %stream)
  br label %return

return:                                           ; preds = %clear_ungetc_buffer_preserving_position.exit, %if.then
  %retval.0 = phi i32 [ %call2, %if.then ], [ %call3, %clear_ungetc_buffer_preserving_position.exit ]
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind
declare noundef i32 @fflush(ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @rpl_fseeko(ptr nocapture noundef nonnull %fp, i64 noundef %offset, i32 noundef %whence) local_unnamed_addr #6 {
entry:
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, ptr %fp, i64 0, i32 2
  %0 = load ptr, ptr %_IO_read_end, align 8, !tbaa !99
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, ptr %fp, i64 0, i32 1
  %1 = load ptr, ptr %_IO_read_ptr, align 8, !tbaa !100
  %cmp = icmp eq ptr %0, %1
  br i1 %cmp, label %land.lhs.true, label %if.end7

land.lhs.true:                                    ; preds = %entry
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, ptr %fp, i64 0, i32 5
  %2 = load ptr, ptr %_IO_write_ptr, align 8, !tbaa !61
  %_IO_write_base = getelementptr inbounds %struct._IO_FILE, ptr %fp, i64 0, i32 4
  %3 = load ptr, ptr %_IO_write_base, align 8, !tbaa !101
  %cmp1 = icmp eq ptr %2, %3
  br i1 %cmp1, label %land.lhs.true2, label %if.end7

land.lhs.true2:                                   ; preds = %land.lhs.true
  %_IO_save_base = getelementptr inbounds %struct._IO_FILE, ptr %fp, i64 0, i32 9
  %4 = load ptr, ptr %_IO_save_base, align 8, !tbaa !102
  %cmp3 = icmp eq ptr %4, null
  br i1 %cmp3, label %if.then, label %if.end7

if.then:                                          ; preds = %land.lhs.true2
  %call = tail call i32 @fileno(ptr noundef nonnull %fp) #41
  %call4 = tail call i64 @lseek(i32 noundef %call, i64 noundef %offset, i32 noundef %whence) #41
  %cmp5 = icmp eq i64 %call4, -1
  br i1 %cmp5, label %return, label %if.end

if.end:                                           ; preds = %if.then
  %5 = load i32, ptr %fp, align 8, !tbaa !58
  %and = and i32 %5, -17
  store i32 %and, ptr %fp, align 8, !tbaa !58
  %_offset = getelementptr inbounds %struct._IO_FILE, ptr %fp, i64 0, i32 21
  store i64 %call4, ptr %_offset, align 8, !tbaa !103
  br label %return

if.end7:                                          ; preds = %land.lhs.true2, %land.lhs.true, %entry
  %call8 = tail call i32 @fseeko(ptr noundef nonnull %fp, i64 noundef %offset, i32 noundef %whence)
  br label %return

return:                                           ; preds = %if.end7, %if.end, %if.then
  %retval.1 = phi i32 [ %call8, %if.end7 ], [ 0, %if.end ], [ -1, %if.then ]
  ret i32 %retval.1
}

; Function Attrs: nofree nounwind
declare noundef i32 @fseeko(ptr nocapture noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local i64 @rpl_mbrtoc32(ptr noundef %pwc, ptr noundef %s, i64 noundef %n, ptr noundef %ps) local_unnamed_addr #6 {
entry:
  %cmp = icmp eq ptr %s, null
  %pwc.addr.0 = select i1 %cmp, ptr null, ptr %pwc
  %s.addr.0 = select i1 %cmp, ptr @.str.91, ptr %s
  %n.addr.0 = select i1 %cmp, i64 1, i64 %n
  %cmp1 = icmp eq ptr %ps, null
  %spec.store.select = select i1 %cmp1, ptr @internal_state, ptr %ps
  %call = tail call i64 @mbrtoc32(ptr noundef %pwc.addr.0, ptr noundef nonnull %s.addr.0, i64 noundef %n.addr.0, ptr noundef nonnull %spec.store.select) #41
  %cmp4 = icmp ult i64 %call, -3
  br i1 %cmp4, label %land.lhs.true, label %if.end7

land.lhs.true:                                    ; preds = %entry
  %call5 = tail call i32 @mbsinit(ptr noundef nonnull %spec.store.select) #42
  %tobool.not = icmp eq i32 %call5, 0
  br i1 %tobool.not, label %if.then6, label %cleanup

if.then6:                                         ; preds = %land.lhs.true
  store i64 0, ptr %spec.store.select, align 1
  br label %cleanup

if.end7:                                          ; preds = %entry
  %cmp8 = icmp eq i64 %call, -3
  br i1 %cmp8, label %if.then9, label %if.end10

if.then9:                                         ; preds = %if.end7
  tail call void @abort() #43
  unreachable

if.end10:                                         ; preds = %if.end7
  %cmp13.not = icmp eq i64 %n.addr.0, 0
  br i1 %cmp13.not, label %cleanup, label %land.lhs.true14

land.lhs.true14:                                  ; preds = %if.end10
  %call15 = tail call zeroext i1 @hard_locale(i32 noundef 0) #41
  br i1 %call15, label %cleanup, label %if.then16

if.then16:                                        ; preds = %land.lhs.true14
  %cmp17.not = icmp eq ptr %pwc.addr.0, null
  br i1 %cmp17.not, label %cleanup, label %if.then18

if.then18:                                        ; preds = %if.then16
  %0 = load i8, ptr %s.addr.0, align 1, !tbaa !14
  %conv = zext i8 %0 to i32
  store i32 %conv, ptr %pwc.addr.0, align 4, !tbaa !9
  br label %cleanup

cleanup:                                          ; preds = %if.then18, %if.then16, %land.lhs.true14, %if.end10, %if.then6, %land.lhs.true
  %retval.0 = phi i64 [ 1, %if.then18 ], [ 1, %if.then16 ], [ %call, %land.lhs.true14 ], [ %call, %if.end10 ], [ %call, %land.lhs.true ], [ %call, %if.then6 ]
  ret i64 %retval.0
}

; Function Attrs: nounwind
declare i64 @mbrtoc32(ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i32 @mbsinit(ptr noundef) local_unnamed_addr #26

; Function Attrs: nounwind uwtable
define dso_local void @set_program_name(ptr noundef %argv0) local_unnamed_addr #6 {
entry:
  %cmp = icmp eq ptr %argv0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load ptr, ptr @stderr, align 8, !tbaa !5
  %1 = tail call i64 @fwrite(ptr nonnull @.str.96, i64 55, i64 1, ptr %0) #49
  tail call void @abort() #43
  unreachable

if.end:                                           ; preds = %entry
  %call1 = tail call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %argv0, i32 noundef 47) #42
  %cmp2.not = icmp eq ptr %call1, null
  %add.ptr = getelementptr inbounds i8, ptr %call1, i64 1
  %cond = select i1 %cmp2.not, ptr %argv0, ptr %add.ptr
  %sub.ptr.lhs.cast = ptrtoint ptr %cond to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %argv0 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %cmp3 = icmp sgt i64 %sub.ptr.sub, 6
  br i1 %cmp3, label %land.lhs.true, label %if.end13

land.lhs.true:                                    ; preds = %if.end
  %add.ptr4 = getelementptr inbounds i8, ptr %cond, i64 -7
  %call5 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %add.ptr4, ptr noundef nonnull dereferenceable(8) @.str.1.97, i64 noundef 7) #42
  %cmp6 = icmp eq i32 %call5, 0
  br i1 %cmp6, label %if.then7, label %if.end13

if.then7:                                         ; preds = %land.lhs.true
  %call8 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %cond, ptr noundef nonnull dereferenceable(4) @.str.2.98, i64 noundef 3) #42
  %cmp9 = icmp eq i32 %call8, 0
  %spec.select.idx = select i1 %cmp9, i64 3, i64 0
  %spec.select = getelementptr inbounds i8, ptr %cond, i64 %spec.select.idx
  br label %if.end13

if.end13:                                         ; preds = %if.then7, %land.lhs.true, %if.end
  %argv0.addr.0 = phi ptr [ %argv0, %land.lhs.true ], [ %argv0, %if.end ], [ %spec.select, %if.then7 ]
  %base.0 = phi ptr [ %cond, %land.lhs.true ], [ %cond, %if.end ], [ %spec.select, %if.then7 ]
  store ptr %argv0.addr.0, ptr @program_name, align 8, !tbaa !5
  store ptr %argv0.addr.0, ptr @program_invocation_name, align 8, !tbaa !5
  store ptr %base.0, ptr @program_invocation_short_name, align 8, !tbaa !5
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #27

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare ptr @strrchr(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @setlocale_null_r(i32 noundef %category, ptr noundef nonnull %buf, i64 noundef %bufsize) local_unnamed_addr #6 {
entry:
  %call = tail call i32 @setlocale_null_r_unlocked(i32 noundef %category, ptr noundef nonnull %buf, i64 noundef %bufsize) #41
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define dso_local ptr @setlocale_null(i32 noundef %category) local_unnamed_addr #6 {
entry:
  %call = tail call ptr @setlocale_null_unlocked(i32 noundef %category) #41
  ret ptr %call
}

; Function Attrs: nounwind uwtable
define dso_local ptr @setlocale_null_unlocked(i32 noundef %category) local_unnamed_addr #6 {
entry:
  %call = tail call ptr @setlocale(i32 noundef %category, ptr noundef null) #41
  ret ptr %call
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @setlocale_null_r_unlocked(i32 noundef %category, ptr noundef nonnull %buf, i64 noundef %bufsize) local_unnamed_addr #6 {
entry:
  %call.i27 = tail call ptr @setlocale(i32 noundef %category, ptr noundef null) #41
  %cmp = icmp eq ptr %call.i27, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %cmp1.not = icmp eq i64 %bufsize, 0
  br i1 %cmp1.not, label %cleanup14, label %if.then2

if.then2:                                         ; preds = %if.then
  store i8 0, ptr %buf, align 1, !tbaa !14
  br label %cleanup14

if.else:                                          ; preds = %entry
  %call3 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %call.i27) #42
  %cmp4 = icmp ult i64 %call3, %bufsize
  br i1 %cmp4, label %if.then5, label %if.else7

if.then5:                                         ; preds = %if.else
  %add = add nuw i64 %call3, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %buf, ptr noundef nonnull align 1 dereferenceable(1) %call.i27, i64 noundef %add, i1 noundef false) #41
  br label %cleanup14

if.else7:                                         ; preds = %if.else
  %cmp8.not = icmp eq i64 %bufsize, 0
  br i1 %cmp8.not, label %cleanup14, label %if.then9

if.then9:                                         ; preds = %if.else7
  %sub = add i64 %bufsize, -1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %buf, ptr noundef nonnull align 1 %call.i27, i64 noundef %sub, i1 noundef false) #41
  %arrayidx12 = getelementptr inbounds i8, ptr %buf, i64 %sub
  store i8 0, ptr %arrayidx12, align 1, !tbaa !14
  br label %cleanup14

cleanup14:                                        ; preds = %if.then9, %if.else7, %if.then5, %if.then2, %if.then
  %retval.1 = phi i32 [ 22, %if.then2 ], [ 22, %if.then ], [ 0, %if.then5 ], [ 34, %if.then9 ], [ 34, %if.else7 ]
  ret i32 %retval.1
}

; Function Attrs: nounwind uwtable
define dso_local ptr @vasnprintf(ptr noundef %resultbuf, ptr nocapture noundef %lengthp, ptr noundef %format, ptr noundef %args) local_unnamed_addr #6 {
entry:
  %d = alloca %struct.char_directives, align 8
  %a = alloca %struct.arguments, align 16
  %state = alloca %struct.__mbstate_t, align 8
  %cbuf = alloca [64 x i8], align 16
  %state557 = alloca %struct.__mbstate_t, align 8
  %cbuf559 = alloca [64 x i8], align 16
  %state669 = alloca %struct.__mbstate_t, align 8
  %cbuf733 = alloca [64 x i8], align 16
  %state765 = alloca %struct.__mbstate_t, align 8
  %cbuf770 = alloca [64 x i8], align 16
  %prefixes = alloca [2 x i32], align 4
  %count1188 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 648, ptr nonnull %d) #41
  call void @llvm.lifetime.start.p0(i64 240, ptr nonnull %a) #41
  %call = call i32 @printf_parse(ptr noundef %format, ptr noundef nonnull %d, ptr noundef nonnull %a) #41
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %cleanup2192, label %if.end

if.end:                                           ; preds = %entry
  %call1 = call i32 @printf_fetchargs(ptr noundef %args, ptr noundef nonnull %a) #41
  %cmp2 = icmp slt i32 %call1, 0
  br i1 %cmp2, label %fail_1_with_errno, label %if.end4

if.end4:                                          ; preds = %if.end
  %max_width_length = getelementptr inbounds %struct.char_directives, ptr %d, i64 0, i32 2
  %0 = load i64, ptr %max_width_length, align 8, !tbaa !97
  %max_precision_length = getelementptr inbounds %struct.char_directives, ptr %d, i64 0, i32 3
  %1 = load i64, ptr %max_precision_length, align 8, !tbaa !98
  %cond.i.i = call i64 @llvm.uadd.sat.i64(i64 %0, i64 7)
  %cond.i3.i = call i64 @llvm.uadd.sat.i64(i64 %cond.i.i, i64 %1)
  %cond.i4.i = call i64 @llvm.uadd.sat.i64(i64 %cond.i3.i, i64 6)
  %cmp6 = icmp ult i64 %cond.i4.i, 4000
  br i1 %cmp6, label %if.then7, label %if.else

if.then7:                                         ; preds = %if.end4
  %2 = alloca i8, i64 %cond.i4.i, align 16
  br label %if.end17

if.else:                                          ; preds = %if.end4
  %cmp10 = icmp eq i64 %cond.i4.i, -1
  br i1 %cmp10, label %fail_1_with_errno, label %cleanup

cleanup:                                          ; preds = %if.else
  %call13 = call noalias ptr @malloc(i64 noundef %cond.i4.i) #48
  %cmp14.not = icmp eq ptr %call13, null
  br i1 %cmp14.not, label %fail_1_with_errno, label %if.end17

if.end17:                                         ; preds = %cleanup, %if.then7
  %buf_malloced.1 = phi ptr [ null, %if.then7 ], [ %call13, %cleanup ]
  %buf.1 = phi ptr [ %2, %if.then7 ], [ %call13, %cleanup ]
  %cmp18.not = icmp eq ptr %resultbuf, null
  br i1 %cmp18.not, label %cond.end21, label %cond.true19

cond.true19:                                      ; preds = %if.end17
  %3 = load i64, ptr %lengthp, align 8, !tbaa !28
  br label %cond.end21

cond.end21:                                       ; preds = %cond.true19, %if.end17
  %cond22 = phi i64 [ %3, %cond.true19 ], [ 0, %if.end17 ]
  %dir = getelementptr inbounds %struct.char_directives, ptr %d, i64 0, i32 1
  %4 = load ptr, ptr %dir, align 8, !tbaa !74
  %arg = getelementptr inbounds %struct.arguments, ptr %a, i64 0, i32 1
  %incdec.ptr958 = getelementptr inbounds i8, ptr %buf.1, i64 1
  %incdec.ptr962 = getelementptr inbounds i8, ptr %buf.1, i64 2
  %arrayidx1874 = getelementptr inbounds [2 x i32], ptr %prefixes, i64 0, i64 1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %cond.end21
  %length.0 = phi i64 [ 0, %cond.end21 ], [ %length.23, %for.inc ]
  %allocated.0 = phi i64 [ %cond22, %cond.end21 ], [ %allocated.39, %for.inc ]
  %result.0 = phi ptr [ %resultbuf, %cond.end21 ], [ %result.39, %for.inc ]
  %dp.0 = phi ptr [ %4, %cond.end21 ], [ %incdec.ptr2040, %for.inc ]
  %i.0 = phi i64 [ 0, %cond.end21 ], [ %inc2039, %for.inc ]
  %cp.0 = phi ptr [ %format, %cond.end21 ], [ %320, %for.inc ]
  %5 = load ptr, ptr %dp.0, align 8, !tbaa !75
  %cmp23.not = icmp eq ptr %cp.0, %5
  br i1 %cmp23.not, label %if.end76, label %if.then24

if.then24:                                        ; preds = %for.cond
  %sub.ptr.lhs.cast = ptrtoint ptr %5 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %cp.0 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %cond.i = call i64 @llvm.uadd.sat.i64(i64 %length.0, i64 %sub.ptr.sub)
  %cmp27 = icmp ugt i64 %cond.i, %allocated.0
  br i1 %cmp27, label %if.then28, label %cleanup72

if.then28:                                        ; preds = %if.then24
  %cmp29.not = icmp eq i64 %allocated.0, 0
  %cmp31 = icmp sgt i64 %allocated.0, -1
  %mul33 = shl i64 %allocated.0, 1
  %cond36 = select i1 %cmp31, i64 %mul33, i64 -1
  %cond39 = select i1 %cmp29.not, i64 12, i64 %cond36
  %allocated.1 = call i64 @llvm.umax.i64(i64 %cond.i, i64 %cond39)
  %cmp49 = icmp eq i64 %allocated.1, -1
  br i1 %cmp49, label %out_of_memory, label %if.end51

if.end51:                                         ; preds = %if.then28
  %cmp52 = icmp eq ptr %result.0, %resultbuf
  br i1 %cmp52, label %if.then53, label %if.else55

if.then53:                                        ; preds = %if.end51
  %call54 = call noalias ptr @malloc(i64 noundef %allocated.1) #48
  br label %if.end57

if.else55:                                        ; preds = %if.end51
  %call.i3343 = call ptr @realloc(ptr noundef %result.0, i64 noundef %allocated.1) #47
  br label %if.end57

if.end57:                                         ; preds = %if.else55, %if.then53
  %memory.0 = phi ptr [ %call54, %if.then53 ], [ %call.i3343, %if.else55 ]
  %cmp58 = icmp eq ptr %memory.0, null
  br i1 %cmp58, label %out_of_memory, label %if.end60

if.end60:                                         ; preds = %if.end57
  %cmp62 = icmp ne i64 %length.0, 0
  %or.cond = select i1 %cmp52, i1 %cmp62, i1 false
  br i1 %or.cond, label %if.then63, label %cleanup72

if.then63:                                        ; preds = %if.end60
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %memory.0, ptr noundef nonnull align 1 %resultbuf, i64 noundef %length.0, i1 noundef false) #41
  br label %cleanup72

cleanup72:                                        ; preds = %if.then63, %if.end60, %if.then24
  %allocated.2 = phi i64 [ %allocated.0, %if.then24 ], [ %allocated.1, %if.then63 ], [ %allocated.1, %if.end60 ]
  %result.2 = phi ptr [ %result.0, %if.then24 ], [ %memory.0, %if.then63 ], [ %memory.0, %if.end60 ]
  %add.ptr = getelementptr inbounds i8, ptr %result.2, i64 %length.0
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %add.ptr, ptr noundef nonnull align 1 %cp.0, i64 noundef %sub.ptr.sub, i1 noundef false) #41
  br label %if.end76

if.end76:                                         ; preds = %cleanup72, %for.cond
  %length.2 = phi i64 [ %cond.i, %cleanup72 ], [ %length.0, %for.cond ]
  %allocated.4 = phi i64 [ %allocated.2, %cleanup72 ], [ %allocated.0, %for.cond ]
  %result.4 = phi ptr [ %result.2, %cleanup72 ], [ %result.0, %for.cond ]
  %6 = load i64, ptr %d, align 8, !tbaa !71
  %cmp77 = icmp eq i64 %i.0, %6
  br i1 %cmp77, label %for.end2041, label %if.end79

if.end79:                                         ; preds = %if.end76
  %conversion = getelementptr inbounds %struct.char_directive, ptr %dp.0, i64 0, i32 9
  %7 = load i8, ptr %conversion, align 8, !tbaa !95
  %cmp80 = icmp eq i8 %7, 37
  %arg_index = getelementptr inbounds %struct.char_directive, ptr %dp.0, i64 0, i32 10
  %8 = load i64, ptr %arg_index, align 8, !tbaa !79
  %cmp84 = icmp eq i64 %8, -1
  br i1 %cmp80, label %if.then82, label %if.else150

if.then82:                                        ; preds = %if.end79
  br i1 %cmp84, label %if.end87, label %if.then86

if.then86:                                        ; preds = %if.then82
  call void @abort() #43
  unreachable

if.end87:                                         ; preds = %if.then82
  %cond.i3344 = call i64 @llvm.uadd.sat.i64(i64 %length.2, i64 1)
  %cmp89 = icmp ugt i64 %cond.i3344, %allocated.4
  br i1 %cmp89, label %if.then91, label %cleanup147

if.then91:                                        ; preds = %if.end87
  %cmp94.not = icmp eq i64 %allocated.4, 0
  %cmp97 = icmp sgt i64 %allocated.4, -1
  %mul100 = shl i64 %allocated.4, 1
  %cond103 = select i1 %cmp97, i64 %mul100, i64 -1
  %cond106 = select i1 %cmp94.not, i64 12, i64 %cond103
  %allocated.5 = call i64 @llvm.umax.i64(i64 %cond.i3344, i64 %cond106)
  %cmp118 = icmp eq i64 %allocated.5, -1
  br i1 %cmp118, label %out_of_memory, label %if.end121

if.end121:                                        ; preds = %if.then91
  %cmp122 = icmp eq ptr %result.4, %resultbuf
  br i1 %cmp122, label %if.then124, label %if.else126

if.then124:                                       ; preds = %if.end121
  %call125 = call noalias ptr @malloc(i64 noundef %allocated.5) #48
  br label %if.end128

if.else126:                                       ; preds = %if.end121
  %call.i3346 = call ptr @realloc(ptr noundef %result.4, i64 noundef %allocated.5) #47
  br label %if.end128

if.end128:                                        ; preds = %if.else126, %if.then124
  %memory93.0 = phi ptr [ %call125, %if.then124 ], [ %call.i3346, %if.else126 ]
  %cmp129 = icmp eq ptr %memory93.0, null
  br i1 %cmp129, label %out_of_memory, label %if.end132

if.end132:                                        ; preds = %if.end128
  %cmp136 = icmp ne i64 %length.2, 0
  %or.cond2216 = select i1 %cmp122, i1 %cmp136, i1 false
  br i1 %or.cond2216, label %if.then138, label %cleanup147

if.then138:                                       ; preds = %if.end132
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %memory93.0, ptr noundef nonnull align 1 %resultbuf, i64 noundef %length.2, i1 noundef false) #41
  br label %cleanup147

cleanup147:                                       ; preds = %if.then138, %if.end132, %if.end87
  %allocated.6 = phi i64 [ %allocated.4, %if.end87 ], [ %allocated.5, %if.then138 ], [ %allocated.5, %if.end132 ]
  %result.6 = phi ptr [ %result.4, %if.end87 ], [ %memory93.0, %if.then138 ], [ %memory93.0, %if.end132 ]
  %arrayidx146 = getelementptr inbounds i8, ptr %result.6, i64 %length.2
  store i8 37, ptr %arrayidx146, align 1, !tbaa !14
  br label %for.inc

if.else150:                                       ; preds = %if.end79
  br i1 %cmp84, label %if.then154, label %if.end155

if.then154:                                       ; preds = %if.else150
  call void @abort() #43
  unreachable

if.end155:                                        ; preds = %if.else150
  switch i8 %7, label %if.else950 [
    i8 110, label %if.then160
    i8 115, label %land.lhs.true166
  ]

if.then160:                                       ; preds = %if.end155
  call void @abort() #43
  unreachable

land.lhs.true166:                                 ; preds = %if.end155
  %9 = load ptr, ptr %arg, align 8, !tbaa !67
  %arrayidx168 = getelementptr inbounds %struct.argument, ptr %9, i64 %8
  %10 = load i32, ptr %arrayidx168, align 16, !tbaa !68
  %cmp169.not = icmp eq i32 %10, 32
  %flags400 = getelementptr inbounds %struct.char_directive, ptr %dp.0, i64 0, i32 2
  %11 = load i32, ptr %flags400, align 8, !tbaa !76
  %width_start405 = getelementptr inbounds %struct.char_directive, ptr %dp.0, i64 0, i32 3
  %12 = load ptr, ptr %width_start405, align 8, !tbaa !82
  %13 = ptrtoint ptr %12 to i64
  %width_end406 = getelementptr inbounds %struct.char_directive, ptr %dp.0, i64 0, i32 4
  %14 = load ptr, ptr %width_end406, align 8, !tbaa !83
  %15 = ptrtoint ptr %14 to i64
  br i1 %cmp169.not, label %if.then398, label %if.then171

if.then171:                                       ; preds = %land.lhs.true166
  %cmp173.not = icmp eq ptr %12, %14
  br i1 %cmp173.not, label %if.end218, label %if.then175

if.then175:                                       ; preds = %if.then171
  %width_arg_index = getelementptr inbounds %struct.char_directive, ptr %dp.0, i64 0, i32 5
  %16 = load i64, ptr %width_arg_index, align 8, !tbaa !77
  %cmp176.not = icmp eq i64 %16, -1
  br i1 %cmp176.not, label %do.body.preheader, label %if.then178

do.body.preheader:                                ; preds = %if.then175
  %17 = sub i64 %15, %13
  %xtraiter = and i64 %17, 1
  %18 = add i64 %15, -1
  %19 = icmp eq i64 %18, %13
  br i1 %19, label %if.end213.loopexit.unr-lcssa, label %do.body.preheader.new

do.body.preheader.new:                            ; preds = %do.body.preheader
  %unroll_iter = and i64 %17, -2
  br label %do.body

if.then178:                                       ; preds = %if.then175
  %arrayidx182 = getelementptr inbounds %struct.argument, ptr %9, i64 %16
  %20 = load i32, ptr %arrayidx182, align 16, !tbaa !68
  %cmp184 = icmp eq i32 %20, 5
  br i1 %cmp184, label %if.end187, label %if.then186

if.then186:                                       ; preds = %if.then178
  call void @abort() #43
  unreachable

if.end187:                                        ; preds = %if.then178
  %a191 = getelementptr inbounds %struct.argument, ptr %9, i64 %16, i32 1
  %21 = load i32, ptr %a191, align 16, !tbaa !69
  %22 = call i32 @llvm.abs.i32(i32 %21, i1 false)
  %width.0 = zext i32 %22 to i64
  %23 = lshr i32 %21, 30
  %24 = and i32 %23, 2
  %flags.0 = or i32 %24, %11
  br label %if.end213

do.body:                                          ; preds = %do.body, %do.body.preheader.new
  %digitp.0 = phi ptr [ %12, %do.body.preheader.new ], [ %incdec.ptr.1, %do.body ]
  %width.1 = phi i64 [ 0, %do.body.preheader.new ], [ %cond.i3347.1, %do.body ]
  %niter = phi i64 [ 0, %do.body.preheader.new ], [ %niter.next.1, %do.body ]
  %cmp199 = icmp ult i64 %width.1, 1844674407370955162
  %mul202 = mul i64 %width.1, 10
  %cond205 = select i1 %cmp199, i64 %mul202, i64 -1
  %incdec.ptr = getelementptr inbounds i8, ptr %digitp.0, i64 1
  %25 = load i8, ptr %digitp.0, align 1, !tbaa !14
  %conv206 = sext i8 %25 to i64
  %sub207 = add nsw i64 %conv206, -48
  %cond.i3347 = call i64 @llvm.uadd.sat.i64(i64 %cond205, i64 %sub207)
  %cmp199.1 = icmp ult i64 %cond.i3347, 1844674407370955162
  %mul202.1 = mul i64 %cond.i3347, 10
  %cond205.1 = select i1 %cmp199.1, i64 %mul202.1, i64 -1
  %incdec.ptr.1 = getelementptr inbounds i8, ptr %digitp.0, i64 2
  %26 = load i8, ptr %incdec.ptr, align 1, !tbaa !14
  %conv206.1 = sext i8 %26 to i64
  %sub207.1 = add nsw i64 %conv206.1, -48
  %cond.i3347.1 = call i64 @llvm.uadd.sat.i64(i64 %cond205.1, i64 %sub207.1)
  %niter.next.1 = add i64 %niter, 2
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %if.end213.loopexit.unr-lcssa, label %do.body, !llvm.loop !104

if.end213.loopexit.unr-lcssa:                     ; preds = %do.body, %do.body.preheader
  %cond.i3347.lcssa.ph = phi i64 [ undef, %do.body.preheader ], [ %cond.i3347.1, %do.body ]
  %digitp.0.unr = phi ptr [ %12, %do.body.preheader ], [ %incdec.ptr.1, %do.body ]
  %width.1.unr = phi i64 [ 0, %do.body.preheader ], [ %cond.i3347.1, %do.body ]
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %if.end213, label %do.body.epil

do.body.epil:                                     ; preds = %if.end213.loopexit.unr-lcssa
  %cmp199.epil = icmp ult i64 %width.1.unr, 1844674407370955162
  %mul202.epil = mul i64 %width.1.unr, 10
  %cond205.epil = select i1 %cmp199.epil, i64 %mul202.epil, i64 -1
  %27 = load i8, ptr %digitp.0.unr, align 1, !tbaa !14
  %conv206.epil = sext i8 %27 to i64
  %sub207.epil = add nsw i64 %conv206.epil, -48
  %cond.i3347.epil = call i64 @llvm.uadd.sat.i64(i64 %cond205.epil, i64 %sub207.epil)
  br label %if.end213

if.end213:                                        ; preds = %do.body.epil, %if.end213.loopexit.unr-lcssa, %if.end187
  %width.2 = phi i64 [ %width.0, %if.end187 ], [ %cond.i3347.lcssa.ph, %if.end213.loopexit.unr-lcssa ], [ %cond.i3347.epil, %do.body.epil ]
  %flags.1 = phi i32 [ %flags.0, %if.end187 ], [ %11, %if.end213.loopexit.unr-lcssa ], [ %11, %do.body.epil ]
  %cmp214 = icmp ugt i64 %width.2, 2147483647
  br i1 %cmp214, label %overflow, label %if.end218

if.end218:                                        ; preds = %if.end213, %if.then171
  %width.3 = phi i64 [ 0, %if.then171 ], [ %width.2, %if.end213 ]
  %flags.2 = phi i32 [ %11, %if.then171 ], [ %flags.1, %if.end213 ]
  %precision_start = getelementptr inbounds %struct.char_directive, ptr %dp.0, i64 0, i32 6
  %28 = load ptr, ptr %precision_start, align 8, !tbaa !88
  %29 = ptrtoint ptr %28 to i64
  %precision_end = getelementptr inbounds %struct.char_directive, ptr %dp.0, i64 0, i32 7
  %30 = load ptr, ptr %precision_end, align 8, !tbaa !89
  %31 = ptrtoint ptr %30 to i64
  %cmp219.not = icmp eq ptr %28, %30
  br i1 %cmp219.not, label %if.else271, label %if.then221

if.then221:                                       ; preds = %if.end218
  %precision_arg_index = getelementptr inbounds %struct.char_directive, ptr %dp.0, i64 0, i32 8
  %32 = load i64, ptr %precision_arg_index, align 8, !tbaa !78
  %cmp222.not = icmp eq i64 %32, -1
  br i1 %cmp222.not, label %while.cond.preheader, label %if.then224

while.cond.preheader:                             ; preds = %if.then221
  %digitp244.03724 = getelementptr inbounds i8, ptr %28, i64 1
  %cmp248.not3725 = icmp eq ptr %digitp244.03724, %30
  br i1 %cmp248.not3725, label %if.then269, label %while.body.preheader

while.body.preheader:                             ; preds = %while.cond.preheader
  %33 = xor i64 %29, -1
  %34 = add i64 %33, %31
  %35 = add i64 %31, -2
  %xtraiter4352 = and i64 %34, 1
  %36 = icmp eq i64 %35, %29
  br i1 %36, label %if.then269.loopexit.unr-lcssa, label %while.body.preheader.new

while.body.preheader.new:                         ; preds = %while.body.preheader
  %unroll_iter4355 = and i64 %34, -2
  br label %while.body

if.then224:                                       ; preds = %if.then221
  %arrayidx228 = getelementptr inbounds %struct.argument, ptr %9, i64 %32
  %37 = load i32, ptr %arrayidx228, align 16, !tbaa !68
  %cmp230 = icmp eq i32 %37, 5
  br i1 %cmp230, label %if.end233, label %if.then232

if.then232:                                       ; preds = %if.then224
  call void @abort() #43
  unreachable

if.end233:                                        ; preds = %if.then224
  %a237 = getelementptr inbounds %struct.argument, ptr %9, i64 %32, i32 1
  %38 = load i32, ptr %a237, align 16, !tbaa !69
  %cmp238 = icmp sgt i32 %38, -1
  %conv241 = zext nneg i32 %38 to i64
  br i1 %cmp238, label %if.then269, label %if.else271

while.body:                                       ; preds = %while.body, %while.body.preheader.new
  %digitp244.03727 = phi ptr [ %digitp244.03724, %while.body.preheader.new ], [ %digitp244.0.1, %while.body ]
  %precision.13726 = phi i64 [ 0, %while.body.preheader.new ], [ %cond.i3348.1, %while.body ]
  %niter4356 = phi i64 [ 0, %while.body.preheader.new ], [ %niter4356.next.1, %while.body ]
  %cmp250 = icmp ult i64 %precision.13726, 1844674407370955162
  %mul253 = mul i64 %precision.13726, 10
  %cond256 = select i1 %cmp250, i64 %mul253, i64 -1
  %39 = load i8, ptr %digitp244.03727, align 1, !tbaa !14
  %conv258 = sext i8 %39 to i64
  %sub259 = add nsw i64 %conv258, -48
  %cond.i3348 = call i64 @llvm.uadd.sat.i64(i64 %cond256, i64 %sub259)
  %digitp244.0 = getelementptr inbounds i8, ptr %digitp244.03727, i64 1
  %cmp250.1 = icmp ult i64 %cond.i3348, 1844674407370955162
  %mul253.1 = mul i64 %cond.i3348, 10
  %cond256.1 = select i1 %cmp250.1, i64 %mul253.1, i64 -1
  %40 = load i8, ptr %digitp244.0, align 1, !tbaa !14
  %conv258.1 = sext i8 %40 to i64
  %sub259.1 = add nsw i64 %conv258.1, -48
  %cond.i3348.1 = call i64 @llvm.uadd.sat.i64(i64 %cond256.1, i64 %sub259.1)
  %digitp244.0.1 = getelementptr inbounds i8, ptr %digitp244.03727, i64 2
  %niter4356.next.1 = add i64 %niter4356, 2
  %niter4356.ncmp.1 = icmp eq i64 %niter4356.next.1, %unroll_iter4355
  br i1 %niter4356.ncmp.1, label %if.then269.loopexit.unr-lcssa, label %while.body, !llvm.loop !105

if.then269.loopexit.unr-lcssa:                    ; preds = %while.body, %while.body.preheader
  %cond.i3348.lcssa.ph = phi i64 [ undef, %while.body.preheader ], [ %cond.i3348.1, %while.body ]
  %digitp244.03727.unr = phi ptr [ %digitp244.03724, %while.body.preheader ], [ %digitp244.0.1, %while.body ]
  %precision.13726.unr = phi i64 [ 0, %while.body.preheader ], [ %cond.i3348.1, %while.body ]
  %lcmp.mod4353.not = icmp eq i64 %xtraiter4352, 0
  br i1 %lcmp.mod4353.not, label %if.then269, label %while.body.epil

while.body.epil:                                  ; preds = %if.then269.loopexit.unr-lcssa
  %cmp250.epil = icmp ult i64 %precision.13726.unr, 1844674407370955162
  %mul253.epil = mul i64 %precision.13726.unr, 10
  %cond256.epil = select i1 %cmp250.epil, i64 %mul253.epil, i64 -1
  %41 = load i8, ptr %digitp244.03727.unr, align 1, !tbaa !14
  %conv258.epil = sext i8 %41 to i64
  %sub259.epil = add nsw i64 %conv258.epil, -48
  %cond.i3348.epil = call i64 @llvm.uadd.sat.i64(i64 %cond256.epil, i64 %sub259.epil)
  br label %if.then269

if.then269:                                       ; preds = %while.body.epil, %if.then269.loopexit.unr-lcssa, %if.end233, %while.cond.preheader
  %precision.2 = phi i64 [ %conv241, %if.end233 ], [ 0, %while.cond.preheader ], [ %cond.i3348.lcssa.ph, %if.then269.loopexit.unr-lcssa ], [ %cond.i3348.epil, %while.body.epil ]
  %a268 = getelementptr inbounds %struct.argument, ptr %9, i64 %8, i32 1
  %42 = load ptr, ptr %a268, align 16, !tbaa !69
  %call270 = call i64 @strnlen(ptr noundef %42, i64 noundef %precision.2) #42
  br label %if.end273

if.else271:                                       ; preds = %if.end233, %if.end218
  %a2683409 = getelementptr inbounds %struct.argument, ptr %9, i64 %8, i32 1
  %43 = load ptr, ptr %a2683409, align 16, !tbaa !69
  %call272 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %43) #42
  br label %if.end273

if.end273:                                        ; preds = %if.else271, %if.then269
  %44 = phi ptr [ %42, %if.then269 ], [ %43, %if.else271 ]
  %bytes.0 = phi i64 [ %call270, %if.then269 ], [ %call272, %if.else271 ]
  %.bytes.0 = select i1 %cmp173.not, i64 0, i64 %bytes.0
  %cmp278 = icmp ult i64 %.bytes.0, %width.3
  %sub281 = sub i64 %width.3, %.bytes.0
  %cond284 = call i64 @llvm.usub.sat.i64(i64 %width.3, i64 %.bytes.0)
  %add = add i64 %cond284, %bytes.0
  %cond.i3349 = call i64 @llvm.uadd.sat.i64(i64 %length.2, i64 %add)
  %cmp286 = icmp ugt i64 %cond.i3349, %allocated.4
  br i1 %cmp286, label %if.then288, label %if.end344

if.then288:                                       ; preds = %if.end273
  %cmp291.not = icmp eq i64 %allocated.4, 0
  %cmp294 = icmp sgt i64 %allocated.4, -1
  %mul297 = shl i64 %allocated.4, 1
  %cond300 = select i1 %cmp294, i64 %mul297, i64 -1
  %cond303 = select i1 %cmp291.not, i64 12, i64 %cond300
  %allocated.8 = call i64 @llvm.umax.i64(i64 %cond.i3349, i64 %cond303)
  %cmp317 = icmp eq i64 %allocated.8, -1
  br i1 %cmp317, label %out_of_memory, label %if.end320

if.end320:                                        ; preds = %if.then288
  %cmp321 = icmp eq ptr %result.4, %resultbuf
  br i1 %cmp321, label %if.then323, label %if.else325

if.then323:                                       ; preds = %if.end320
  %call324 = call noalias ptr @malloc(i64 noundef %allocated.8) #48
  br label %if.end327

if.else325:                                       ; preds = %if.end320
  %call.i3352 = call ptr @realloc(ptr noundef %result.4, i64 noundef %allocated.8) #47
  br label %if.end327

if.end327:                                        ; preds = %if.else325, %if.then323
  %memory290.0 = phi ptr [ %call324, %if.then323 ], [ %call.i3352, %if.else325 ]
  %cmp328 = icmp eq ptr %memory290.0, null
  br i1 %cmp328, label %out_of_memory, label %if.end331

if.end331:                                        ; preds = %if.end327
  %cmp335 = icmp ne i64 %length.2, 0
  %or.cond2217 = select i1 %cmp321, i1 %cmp335, i1 false
  br i1 %or.cond2217, label %if.then337, label %if.end344

if.then337:                                       ; preds = %if.end331
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %memory290.0, ptr noundef nonnull align 1 %resultbuf, i64 noundef %length.2, i1 noundef false) #41
  br label %if.end344

if.end344:                                        ; preds = %if.then337, %if.end331, %if.end273
  %allocated.9 = phi i64 [ %allocated.4, %if.end273 ], [ %allocated.8, %if.then337 ], [ %allocated.8, %if.end331 ]
  %result.9 = phi ptr [ %result.4, %if.end273 ], [ %memory290.0, %if.then337 ], [ %memory290.0, %if.end331 ]
  %and = and i32 %flags.2, 2
  %tobool348.not = icmp eq i32 %and, 0
  %or.cond3312 = select i1 %cmp278, i1 %tobool348.not, i1 false
  br i1 %or.cond3312, label %if.then349, label %if.end355

if.then349:                                       ; preds = %if.end344
  %add.ptr352 = getelementptr inbounds i8, ptr %result.9, i64 %length.2
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 %add.ptr352, i8 noundef 32, i64 noundef %sub281, i1 noundef false) #41
  %add354 = add i64 %sub281, %length.2
  br label %if.end355

if.end355:                                        ; preds = %if.then349, %if.end344
  %length.4 = phi i64 [ %add354, %if.then349 ], [ %length.2, %if.end344 ]
  %add.ptr356 = getelementptr inbounds i8, ptr %result.9, i64 %length.4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %add.ptr356, ptr noundef nonnull align 1 %44, i64 noundef %bytes.0, i1 noundef false) #41
  %add358 = add i64 %length.4, %bytes.0
  %cmp278.not = xor i1 %cmp278, true
  %or.cond3313 = select i1 %cmp278.not, i1 true, i1 %tobool348.not
  br i1 %or.cond3313, label %for.inc, label %if.then364

if.then364:                                       ; preds = %if.end355
  %add.ptr367 = getelementptr inbounds i8, ptr %result.9, i64 %add358
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 %add.ptr367, i8 noundef 32, i64 noundef %sub281, i1 noundef false) #41
  %add369 = add i64 %add358, %sub281
  br label %for.inc

if.then398:                                       ; preds = %land.lhs.true166
  %cmp407.not = icmp ne ptr %12, %14
  br i1 %cmp407.not, label %if.then409, label %if.end460

if.then409:                                       ; preds = %if.then398
  %width_arg_index410 = getelementptr inbounds %struct.char_directive, ptr %dp.0, i64 0, i32 5
  %45 = load i64, ptr %width_arg_index410, align 8, !tbaa !77
  %cmp411.not = icmp eq i64 %45, -1
  br i1 %cmp411.not, label %do.body437.preheader, label %if.then413

do.body437.preheader:                             ; preds = %if.then409
  %46 = sub i64 %15, %13
  %xtraiter4357 = and i64 %46, 1
  %47 = add i64 %15, -1
  %48 = icmp eq i64 %47, %13
  br i1 %48, label %if.end455.loopexit.unr-lcssa, label %do.body437.preheader.new

do.body437.preheader.new:                         ; preds = %do.body437.preheader
  %unroll_iter4360 = and i64 %46, -2
  br label %do.body437

if.then413:                                       ; preds = %if.then409
  %arrayidx417 = getelementptr inbounds %struct.argument, ptr %9, i64 %45
  %49 = load i32, ptr %arrayidx417, align 16, !tbaa !68
  %cmp419 = icmp eq i32 %49, 5
  br i1 %cmp419, label %if.end422, label %if.then421

if.then421:                                       ; preds = %if.then413
  call void @abort() #43
  unreachable

if.end422:                                        ; preds = %if.then413
  %a426 = getelementptr inbounds %struct.argument, ptr %9, i64 %45, i32 1
  %50 = load i32, ptr %a426, align 16, !tbaa !69
  %51 = call i32 @llvm.abs.i32(i32 %50, i1 false)
  %width402.0 = zext i32 %51 to i64
  %52 = lshr i32 %50, 30
  %53 = and i32 %52, 2
  %flags399.0 = or i32 %53, %11
  br label %if.end455

do.body437:                                       ; preds = %do.body437, %do.body437.preheader.new
  %digitp435.0 = phi ptr [ %12, %do.body437.preheader.new ], [ %incdec.ptr445.1, %do.body437 ]
  %width402.1 = phi i64 [ 0, %do.body437.preheader.new ], [ %cond.i3353.1, %do.body437 ]
  %niter4361 = phi i64 [ 0, %do.body437.preheader.new ], [ %niter4361.next.1, %do.body437 ]
  %cmp438 = icmp ult i64 %width402.1, 1844674407370955162
  %mul441 = mul i64 %width402.1, 10
  %cond444 = select i1 %cmp438, i64 %mul441, i64 -1
  %incdec.ptr445 = getelementptr inbounds i8, ptr %digitp435.0, i64 1
  %54 = load i8, ptr %digitp435.0, align 1, !tbaa !14
  %conv446 = sext i8 %54 to i64
  %sub447 = add nsw i64 %conv446, -48
  %cond.i3353 = call i64 @llvm.uadd.sat.i64(i64 %cond444, i64 %sub447)
  %cmp438.1 = icmp ult i64 %cond.i3353, 1844674407370955162
  %mul441.1 = mul i64 %cond.i3353, 10
  %cond444.1 = select i1 %cmp438.1, i64 %mul441.1, i64 -1
  %incdec.ptr445.1 = getelementptr inbounds i8, ptr %digitp435.0, i64 2
  %55 = load i8, ptr %incdec.ptr445, align 1, !tbaa !14
  %conv446.1 = sext i8 %55 to i64
  %sub447.1 = add nsw i64 %conv446.1, -48
  %cond.i3353.1 = call i64 @llvm.uadd.sat.i64(i64 %cond444.1, i64 %sub447.1)
  %niter4361.next.1 = add i64 %niter4361, 2
  %niter4361.ncmp.1 = icmp eq i64 %niter4361.next.1, %unroll_iter4360
  br i1 %niter4361.ncmp.1, label %if.end455.loopexit.unr-lcssa, label %do.body437, !llvm.loop !106

if.end455.loopexit.unr-lcssa:                     ; preds = %do.body437, %do.body437.preheader
  %cond.i3353.lcssa.ph = phi i64 [ undef, %do.body437.preheader ], [ %cond.i3353.1, %do.body437 ]
  %digitp435.0.unr = phi ptr [ %12, %do.body437.preheader ], [ %incdec.ptr445.1, %do.body437 ]
  %width402.1.unr = phi i64 [ 0, %do.body437.preheader ], [ %cond.i3353.1, %do.body437 ]
  %lcmp.mod4358.not = icmp eq i64 %xtraiter4357, 0
  br i1 %lcmp.mod4358.not, label %if.end455, label %do.body437.epil

do.body437.epil:                                  ; preds = %if.end455.loopexit.unr-lcssa
  %cmp438.epil = icmp ult i64 %width402.1.unr, 1844674407370955162
  %mul441.epil = mul i64 %width402.1.unr, 10
  %cond444.epil = select i1 %cmp438.epil, i64 %mul441.epil, i64 -1
  %56 = load i8, ptr %digitp435.0.unr, align 1, !tbaa !14
  %conv446.epil = sext i8 %56 to i64
  %sub447.epil = add nsw i64 %conv446.epil, -48
  %cond.i3353.epil = call i64 @llvm.uadd.sat.i64(i64 %cond444.epil, i64 %sub447.epil)
  br label %if.end455

if.end455:                                        ; preds = %do.body437.epil, %if.end455.loopexit.unr-lcssa, %if.end422
  %width402.2 = phi i64 [ %width402.0, %if.end422 ], [ %cond.i3353.lcssa.ph, %if.end455.loopexit.unr-lcssa ], [ %cond.i3353.epil, %do.body437.epil ]
  %flags399.1 = phi i32 [ %flags399.0, %if.end422 ], [ %11, %if.end455.loopexit.unr-lcssa ], [ %11, %do.body437.epil ]
  %cmp456 = icmp ugt i64 %width402.2, 2147483647
  br i1 %cmp456, label %overflow, label %if.end460

if.end460:                                        ; preds = %if.end455, %if.then398
  %width402.3 = phi i64 [ 0, %if.then398 ], [ %width402.2, %if.end455 ]
  %flags399.2 = phi i32 [ %11, %if.then398 ], [ %flags399.1, %if.end455 ]
  %precision_start461 = getelementptr inbounds %struct.char_directive, ptr %dp.0, i64 0, i32 6
  %57 = load ptr, ptr %precision_start461, align 8, !tbaa !88
  %58 = ptrtoint ptr %57 to i64
  %precision_end462 = getelementptr inbounds %struct.char_directive, ptr %dp.0, i64 0, i32 7
  %59 = load ptr, ptr %precision_end462, align 8, !tbaa !89
  %60 = ptrtoint ptr %59 to i64
  %cmp463.not = icmp eq ptr %57, %59
  br i1 %cmp463.not, label %if.else554, label %if.then465

if.then465:                                       ; preds = %if.end460
  %precision_arg_index466 = getelementptr inbounds %struct.char_directive, ptr %dp.0, i64 0, i32 8
  %61 = load i64, ptr %precision_arg_index466, align 8, !tbaa !78
  %cmp467.not = icmp eq i64 %61, -1
  br i1 %cmp467.not, label %while.cond492.preheader, label %if.then469

while.cond492.preheader:                          ; preds = %if.then465
  %digitp489.03728 = getelementptr inbounds i8, ptr %57, i64 1
  %cmp494.not3729 = icmp eq ptr %digitp489.03728, %59
  br i1 %cmp494.not3729, label %if.then520.thread, label %while.body496.preheader

while.body496.preheader:                          ; preds = %while.cond492.preheader
  %62 = xor i64 %58, -1
  %63 = add i64 %62, %60
  %64 = add i64 %60, -2
  %xtraiter4362 = and i64 %63, 1
  %65 = icmp eq i64 %64, %58
  br i1 %65, label %if.then520.loopexit.unr-lcssa, label %while.body496.preheader.new

while.body496.preheader.new:                      ; preds = %while.body496.preheader
  %unroll_iter4365 = and i64 %63, -2
  br label %while.body496

if.then520.thread:                                ; preds = %while.cond492.preheader
  %a51634283905 = getelementptr inbounds %struct.argument, ptr %9, i64 %8, i32 1
  %66 = load ptr, ptr %a51634283905, align 16, !tbaa !69
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %state) #41
  br label %cleanup551.thread

if.then469:                                       ; preds = %if.then465
  %arrayidx473 = getelementptr inbounds %struct.argument, ptr %9, i64 %61
  %67 = load i32, ptr %arrayidx473, align 16, !tbaa !68
  %cmp475 = icmp eq i32 %67, 5
  br i1 %cmp475, label %if.end478, label %if.then477

if.then477:                                       ; preds = %if.then469
  call void @abort() #43
  unreachable

if.end478:                                        ; preds = %if.then469
  %a482 = getelementptr inbounds %struct.argument, ptr %9, i64 %61, i32 1
  %68 = load i32, ptr %a482, align 16, !tbaa !69
  %cmp483 = icmp sgt i32 %68, -1
  %conv486 = zext nneg i32 %68 to i64
  br i1 %cmp483, label %if.then520, label %if.else554

while.body496:                                    ; preds = %while.body496, %while.body496.preheader.new
  %digitp489.03731 = phi ptr [ %digitp489.03728, %while.body496.preheader.new ], [ %digitp489.0.1, %while.body496 ]
  %precision404.13730 = phi i64 [ 0, %while.body496.preheader.new ], [ %cond.i3354.1, %while.body496 ]
  %niter4366 = phi i64 [ 0, %while.body496.preheader.new ], [ %niter4366.next.1, %while.body496 ]
  %cmp497 = icmp ult i64 %precision404.13730, 1844674407370955162
  %mul500 = mul i64 %precision404.13730, 10
  %cond503 = select i1 %cmp497, i64 %mul500, i64 -1
  %69 = load i8, ptr %digitp489.03731, align 1, !tbaa !14
  %conv505 = sext i8 %69 to i64
  %sub506 = add nsw i64 %conv505, -48
  %cond.i3354 = call i64 @llvm.uadd.sat.i64(i64 %cond503, i64 %sub506)
  %digitp489.0 = getelementptr inbounds i8, ptr %digitp489.03731, i64 1
  %cmp497.1 = icmp ult i64 %cond.i3354, 1844674407370955162
  %mul500.1 = mul i64 %cond.i3354, 10
  %cond503.1 = select i1 %cmp497.1, i64 %mul500.1, i64 -1
  %70 = load i8, ptr %digitp489.0, align 1, !tbaa !14
  %conv505.1 = sext i8 %70 to i64
  %sub506.1 = add nsw i64 %conv505.1, -48
  %cond.i3354.1 = call i64 @llvm.uadd.sat.i64(i64 %cond503.1, i64 %sub506.1)
  %digitp489.0.1 = getelementptr inbounds i8, ptr %digitp489.03731, i64 2
  %niter4366.next.1 = add i64 %niter4366, 2
  %niter4366.ncmp.1 = icmp eq i64 %niter4366.next.1, %unroll_iter4365
  br i1 %niter4366.ncmp.1, label %if.then520.loopexit.unr-lcssa, label %while.body496, !llvm.loop !107

if.then520.loopexit.unr-lcssa:                    ; preds = %while.body496, %while.body496.preheader
  %cond.i3354.lcssa.ph = phi i64 [ undef, %while.body496.preheader ], [ %cond.i3354.1, %while.body496 ]
  %digitp489.03731.unr = phi ptr [ %digitp489.03728, %while.body496.preheader ], [ %digitp489.0.1, %while.body496 ]
  %precision404.13730.unr = phi i64 [ 0, %while.body496.preheader ], [ %cond.i3354.1, %while.body496 ]
  %lcmp.mod4363.not = icmp eq i64 %xtraiter4362, 0
  br i1 %lcmp.mod4363.not, label %if.then520, label %while.body496.epil

while.body496.epil:                               ; preds = %if.then520.loopexit.unr-lcssa
  %cmp497.epil = icmp ult i64 %precision404.13730.unr, 1844674407370955162
  %mul500.epil = mul i64 %precision404.13730.unr, 10
  %cond503.epil = select i1 %cmp497.epil, i64 %mul500.epil, i64 -1
  %71 = load i8, ptr %digitp489.03731.unr, align 1, !tbaa !14
  %conv505.epil = sext i8 %71 to i64
  %sub506.epil = add nsw i64 %conv505.epil, -48
  %cond.i3354.epil = call i64 @llvm.uadd.sat.i64(i64 %cond503.epil, i64 %sub506.epil)
  br label %if.then520

if.then520:                                       ; preds = %while.body496.epil, %if.then520.loopexit.unr-lcssa, %if.end478
  %precision404.2.ph = phi i64 [ %conv486, %if.end478 ], [ %cond.i3354.lcssa.ph, %if.then520.loopexit.unr-lcssa ], [ %cond.i3354.epil, %while.body496.epil ]
  %a5163428 = getelementptr inbounds %struct.argument, ptr %9, i64 %8, i32 1
  %72 = load ptr, ptr %a5163428, align 16, !tbaa !69
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %state) #41
  store i64 0, ptr %state, align 8
  %cmp522.not3733 = icmp eq i64 %precision404.2.ph, 0
  br i1 %cmp522.not3733, label %cleanup551.thread, label %while.body524

while.body524:                                    ; preds = %cleanup546, %if.then520
  %precision404.33736 = phi i64 [ %sub545, %cleanup546 ], [ %precision404.2.ph, %if.then520 ]
  %arg_end.03735 = phi ptr [ %incdec.ptr541, %cleanup546 ], [ %72, %if.then520 ]
  %bytes517.03734 = phi i64 [ %add543, %cleanup546 ], [ 0, %if.then520 ]
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %cbuf) #41
  %73 = load i32, ptr %arg_end.03735, align 4, !tbaa !9
  %cmp526 = icmp eq i32 %73, 0
  br i1 %cmp526, label %while.end550, label %if.end529

if.end529:                                        ; preds = %while.body524
  %call530 = call i64 @wcrtomb(ptr noundef nonnull %cbuf, i32 noundef %73, ptr noundef nonnull %state) #41
  %74 = and i64 %call530, 2147483648
  %cmp532.not = icmp eq i64 %74, 0
  br i1 %cmp532.not, label %if.end535, label %cleanup551

if.end535:                                        ; preds = %if.end529
  %conv536 = and i64 %call530, 2147483647
  %cmp537 = icmp ult i64 %precision404.33736, %conv536
  br i1 %cmp537, label %while.end550, label %cleanup546

cleanup546:                                       ; preds = %if.end535
  %incdec.ptr541 = getelementptr inbounds i32, ptr %arg_end.03735, i64 1
  %add543 = add i64 %conv536, %bytes517.03734
  %sub545 = sub i64 %precision404.33736, %conv536
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %cbuf) #41
  %cmp522.not = icmp eq i64 %sub545, 0
  br i1 %cmp522.not, label %cleanup551.thread, label %while.body524

while.end550:                                     ; preds = %if.end535, %while.body524
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %cbuf) #41
  br label %cleanup551.thread

cleanup551.thread:                                ; preds = %while.end550, %cleanup546, %if.then520, %if.then520.thread
  %75 = phi ptr [ %72, %while.end550 ], [ %72, %if.then520 ], [ %66, %if.then520.thread ], [ %72, %cleanup546 ]
  %bytes517.03574 = phi i64 [ %bytes517.03734, %while.end550 ], [ 0, %if.then520 ], [ 0, %if.then520.thread ], [ %add543, %cleanup546 ]
  %arg_end.03571 = phi ptr [ %arg_end.03735, %while.end550 ], [ %72, %if.then520 ], [ %66, %if.then520.thread ], [ %incdec.ptr541, %cleanup546 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %state) #41
  br label %if.end586

cleanup551:                                       ; preds = %if.end529
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %cbuf) #41
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %state) #41
  br label %fail_with_EILSEQ

if.else554:                                       ; preds = %if.end478, %if.end460
  %a516 = getelementptr inbounds %struct.argument, ptr %9, i64 %8, i32 1
  %76 = load ptr, ptr %a516, align 16, !tbaa !69
  br i1 %cmp407.not, label %if.then556, label %if.else582

if.then556:                                       ; preds = %if.else554
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %state557) #41
  store i64 0, ptr %state557, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %cbuf559) #41
  %77 = load i32, ptr %76, align 4, !tbaa !9
  %cmp5613739 = icmp eq i32 %77, 0
  br i1 %cmp5613739, label %cleanup579.thread, label %if.end564

if.end564:                                        ; preds = %cleanup575, %if.then556
  %78 = phi i32 [ %80, %cleanup575 ], [ %77, %if.then556 ]
  %arg_end.43741 = phi ptr [ %incdec.ptr572, %cleanup575 ], [ %76, %if.then556 ]
  %bytes517.43740 = phi i64 [ %add574, %cleanup575 ], [ 0, %if.then556 ]
  %call566 = call i64 @wcrtomb(ptr noundef nonnull %cbuf559, i32 noundef %78, ptr noundef nonnull %state557) #41
  %79 = and i64 %call566, 2147483648
  %cmp568.not = icmp eq i64 %79, 0
  br i1 %cmp568.not, label %cleanup575, label %cleanup579

cleanup575:                                       ; preds = %if.end564
  %incdec.ptr572 = getelementptr inbounds i32, ptr %arg_end.43741, i64 1
  %conv573 = and i64 %call566, 2147483647
  %add574 = add i64 %conv573, %bytes517.43740
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %cbuf559) #41
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %cbuf559) #41
  %80 = load i32, ptr %incdec.ptr572, align 4, !tbaa !9
  %cmp561 = icmp eq i32 %80, 0
  br i1 %cmp561, label %cleanup579.thread, label %if.end564

cleanup579.thread:                                ; preds = %cleanup575, %if.then556
  %bytes517.4.lcssa = phi i64 [ 0, %if.then556 ], [ %add574, %cleanup575 ]
  %arg_end.4.lcssa = phi ptr [ %76, %if.then556 ], [ %incdec.ptr572, %cleanup575 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %cbuf559) #41
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %state557) #41
  br label %if.end586

cleanup579:                                       ; preds = %if.end564
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %cbuf559) #41
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %state557) #41
  br label %fail_with_EILSEQ

if.else582:                                       ; preds = %if.else554
  %call583 = call i64 @wcslen(ptr noundef %76) #42
  %add.ptr584 = getelementptr inbounds i32, ptr %76, i64 %call583
  br label %if.end586

if.end586:                                        ; preds = %if.else582, %cleanup579.thread, %cleanup551.thread
  %tobool5193431 = phi i1 [ false, %if.else582 ], [ true, %cleanup551.thread ], [ false, %cleanup579.thread ]
  %81 = phi ptr [ %76, %if.else582 ], [ %75, %cleanup551.thread ], [ %76, %cleanup579.thread ]
  %bytes517.6 = phi i64 [ 0, %if.else582 ], [ %bytes517.03574, %cleanup551.thread ], [ %bytes517.4.lcssa, %cleanup579.thread ]
  %arg_end.6 = phi ptr [ %add.ptr584, %if.else582 ], [ %arg_end.03571, %cleanup551.thread ], [ %arg_end.4.lcssa, %cleanup579.thread ]
  %bytes517.6. = select i1 %cmp407.not, i64 %bytes517.6, i64 0
  %cmp591 = icmp ult i64 %bytes517.6., %width402.3
  %and594 = and i32 %flags399.2, 2
  %tobool595.not = icmp eq i32 %and594, 0
  %or.cond3316 = select i1 %cmp591, i1 %tobool595.not, i1 false
  br i1 %or.cond3316, label %if.then596, label %if.end665

if.then596:                                       ; preds = %if.end586
  %sub598 = sub nsw i64 %width402.3, %bytes517.6.
  %cond.i3356 = call i64 @llvm.uadd.sat.i64(i64 %length.2, i64 %sub598)
  %cmp600 = icmp ugt i64 %cond.i3356, %allocated.4
  br i1 %cmp600, label %if.then602, label %cleanup662

if.then602:                                       ; preds = %if.then596
  %cmp605.not = icmp eq i64 %allocated.4, 0
  %cmp608 = icmp sgt i64 %allocated.4, -1
  %mul611 = shl i64 %allocated.4, 1
  %cond614 = select i1 %cmp608, i64 %mul611, i64 -1
  %cond617 = select i1 %cmp605.not, i64 12, i64 %cond614
  %allocated.12 = call i64 @llvm.umax.i64(i64 %cond.i3356, i64 %cond617)
  %cmp631 = icmp eq i64 %allocated.12, -1
  br i1 %cmp631, label %out_of_memory, label %if.end634

if.end634:                                        ; preds = %if.then602
  %cmp635 = icmp eq ptr %result.4, %resultbuf
  br i1 %cmp635, label %if.then637, label %if.else639

if.then637:                                       ; preds = %if.end634
  %call638 = call noalias ptr @malloc(i64 noundef %allocated.12) #48
  br label %if.end641

if.else639:                                       ; preds = %if.end634
  %call.i3359 = call ptr @realloc(ptr noundef %result.4, i64 noundef %allocated.12) #47
  br label %if.end641

if.end641:                                        ; preds = %if.else639, %if.then637
  %memory604.0 = phi ptr [ %call638, %if.then637 ], [ %call.i3359, %if.else639 ]
  %cmp642 = icmp eq ptr %memory604.0, null
  br i1 %cmp642, label %out_of_memory, label %if.end645

if.end645:                                        ; preds = %if.end641
  %cmp649 = icmp ne i64 %length.2, 0
  %or.cond2218 = select i1 %cmp635, i1 %cmp649, i1 false
  br i1 %or.cond2218, label %if.then651, label %cleanup662

if.then651:                                       ; preds = %if.end645
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %memory604.0, ptr noundef nonnull align 1 %resultbuf, i64 noundef %length.2, i1 noundef false) #41
  br label %cleanup662

cleanup662:                                       ; preds = %if.then651, %if.end645, %if.then596
  %allocated.13 = phi i64 [ %allocated.4, %if.then596 ], [ %allocated.12, %if.then651 ], [ %allocated.12, %if.end645 ]
  %result.13 = phi ptr [ %result.4, %if.then596 ], [ %memory604.0, %if.then651 ], [ %memory604.0, %if.end645 ]
  %add.ptr659 = getelementptr inbounds i8, ptr %result.13, i64 %length.2
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 %add.ptr659, i8 noundef 32, i64 noundef %sub598, i1 noundef false) #41
  %add661 = add i64 %sub598, %length.2
  br label %if.end665

if.end665:                                        ; preds = %cleanup662, %if.end586
  %length.9 = phi i64 [ %add661, %cleanup662 ], [ %length.2, %if.end586 ]
  %allocated.15 = phi i64 [ %allocated.13, %cleanup662 ], [ %allocated.4, %if.end586 ]
  %result.15 = phi ptr [ %result.13, %cleanup662 ], [ %result.4, %if.end586 ]
  %or.cond2219 = or i1 %cmp407.not, %tobool5193431
  br i1 %or.cond2219, label %if.then668, label %if.else764

if.then668:                                       ; preds = %if.end665
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %state669) #41
  store i64 0, ptr %state669, align 8
  %cond.i3361 = call i64 @llvm.uadd.sat.i64(i64 %length.9, i64 %bytes517.6)
  %cmp671 = icmp ugt i64 %cond.i3361, %allocated.15
  br i1 %cmp671, label %if.then673, label %if.end729

if.then673:                                       ; preds = %if.then668
  %cmp676.not = icmp eq i64 %allocated.15, 0
  %cmp679 = icmp sgt i64 %allocated.15, -1
  %mul682 = shl i64 %allocated.15, 1
  %cond685 = select i1 %cmp679, i64 %mul682, i64 -1
  %cond688 = select i1 %cmp676.not, i64 12, i64 %cond685
  %allocated.16 = call i64 @llvm.umax.i64(i64 %cond.i3361, i64 %cond688)
  %cmp702 = icmp eq i64 %allocated.16, -1
  br i1 %cmp702, label %cleanup760.thread, label %if.end705

if.end705:                                        ; preds = %if.then673
  %cmp706 = icmp eq ptr %result.15, %resultbuf
  br i1 %cmp706, label %if.then708, label %if.else710

if.then708:                                       ; preds = %if.end705
  %call709 = call noalias ptr @malloc(i64 noundef %allocated.16) #48
  br label %if.end712

if.else710:                                       ; preds = %if.end705
  %call.i3364 = call ptr @realloc(ptr noundef %result.15, i64 noundef %allocated.16) #47
  br label %if.end712

if.end712:                                        ; preds = %if.else710, %if.then708
  %memory675.0 = phi ptr [ %call709, %if.then708 ], [ %call.i3364, %if.else710 ]
  %cmp713 = icmp eq ptr %memory675.0, null
  br i1 %cmp713, label %cleanup760.thread, label %if.end716

if.end716:                                        ; preds = %if.end712
  %cmp720 = icmp ne i64 %length.9, 0
  %or.cond2220 = select i1 %cmp706, i1 %cmp720, i1 false
  br i1 %or.cond2220, label %if.then722, label %if.end729

if.then722:                                       ; preds = %if.end716
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %memory675.0, ptr noundef nonnull align 1 %resultbuf, i64 noundef %length.9, i1 noundef false) #41
  br label %if.end729

if.end729:                                        ; preds = %if.then722, %if.end716, %if.then668
  %allocated.17 = phi i64 [ %allocated.15, %if.then668 ], [ %allocated.16, %if.then722 ], [ %allocated.16, %if.end716 ]
  %result.17 = phi ptr [ %result.15, %if.then668 ], [ %memory675.0, %if.then722 ], [ %memory675.0, %if.end716 ]
  %cmp731.not3752 = icmp eq i64 %bytes517.6, 0
  br i1 %cmp731.not3752, label %for.end755, label %for.body

for.body:                                         ; preds = %if.end745, %if.end729
  %length.103755 = phi i64 [ %add751, %if.end745 ], [ %length.9, %if.end729 ]
  %arg512.03754 = phi ptr [ %incdec.ptr752, %if.end745 ], [ %81, %if.end729 ]
  %remaining.03753 = phi i64 [ %sub754, %if.end745 ], [ %bytes517.6, %if.end729 ]
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %cbuf733) #41
  %82 = load i32, ptr %arg512.03754, align 4, !tbaa !9
  %cmp735 = icmp eq i32 %82, 0
  br i1 %cmp735, label %if.then737, label %if.end738

if.then737:                                       ; preds = %for.body
  call void @abort() #43
  unreachable

if.end738:                                        ; preds = %for.body
  %call740 = call i64 @wcrtomb(ptr noundef nonnull %cbuf733, i32 noundef %82, ptr noundef nonnull %state669) #41
  %conv741 = trunc i64 %call740 to i32
  %cmp742 = icmp slt i32 %conv741, 1
  br i1 %cmp742, label %if.then744, label %if.end745

if.then744:                                       ; preds = %if.end738
  call void @abort() #43
  unreachable

if.end745:                                        ; preds = %if.end738
  %add.ptr746 = getelementptr inbounds i8, ptr %result.17, i64 %length.103755
  %conv748 = and i64 %call740, 4294967295
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %add.ptr746, ptr noundef nonnull align 16 %cbuf733, i64 noundef %conv748, i1 noundef false) #41
  %add751 = add i64 %conv748, %length.103755
  %incdec.ptr752 = getelementptr inbounds i32, ptr %arg512.03754, i64 1
  %sub754 = sub i64 %remaining.03753, %conv748
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %cbuf733) #41
  %cmp731.not = icmp eq i64 %sub754, 0
  br i1 %cmp731.not, label %for.end755, label %for.body, !llvm.loop !108

for.end755:                                       ; preds = %if.end745, %if.end729
  %arg512.0.lcssa = phi ptr [ %81, %if.end729 ], [ %incdec.ptr752, %if.end745 ]
  %length.10.lcssa = phi i64 [ %length.9, %if.end729 ], [ %add751, %if.end745 ]
  %cmp756 = icmp eq ptr %arg512.0.lcssa, %arg_end.6
  br i1 %cmp756, label %cleanup760, label %if.then758

if.then758:                                       ; preds = %for.end755
  call void @abort() #43
  unreachable

cleanup760.thread:                                ; preds = %if.end712, %if.then673
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %state669) #41
  br label %out_of_memory

cleanup760:                                       ; preds = %for.end755
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %state669) #41
  br label %if.end861

if.else764:                                       ; preds = %if.end665
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %state765) #41
  store i64 0, ptr %state765, align 8
  %cmp7673744 = icmp ult ptr %81, %arg_end.6
  br i1 %cmp7673744, label %while.body769, label %cleanup858.thread

cleanup858.thread:                                ; preds = %cleanup853, %if.else764
  %length.12.lcssa = phi i64 [ %length.9, %if.else764 ], [ %add851, %cleanup853 ]
  %allocated.19.lcssa = phi i64 [ %allocated.15, %if.else764 ], [ %allocated.21, %cleanup853 ]
  %result.19.lcssa = phi ptr [ %result.15, %if.else764 ], [ %result.21, %cleanup853 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %state765) #41
  br label %if.end861

while.body769:                                    ; preds = %cleanup853, %if.else764
  %result.193748 = phi ptr [ %result.21, %cleanup853 ], [ %result.15, %if.else764 ]
  %allocated.193747 = phi i64 [ %allocated.21, %cleanup853 ], [ %allocated.15, %if.else764 ]
  %length.123746 = phi i64 [ %add851, %cleanup853 ], [ %length.9, %if.else764 ]
  %arg512.13745 = phi ptr [ %incdec.ptr852, %cleanup853 ], [ %81, %if.else764 ]
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %cbuf770) #41
  %83 = load i32, ptr %arg512.13745, align 4, !tbaa !9
  %cmp772 = icmp eq i32 %83, 0
  br i1 %cmp772, label %if.then774, label %if.end775

if.then774:                                       ; preds = %while.body769
  call void @abort() #43
  unreachable

if.end775:                                        ; preds = %while.body769
  %call777 = call i64 @wcrtomb(ptr noundef nonnull %cbuf770, i32 noundef %83, ptr noundef nonnull %state765) #41
  %conv778 = trunc i64 %call777 to i32
  %cmp779 = icmp slt i32 %conv778, 1
  br i1 %cmp779, label %fail_with_EILSEQ.loopexit, label %if.end782

if.end782:                                        ; preds = %if.end775
  %conv783 = and i64 %call777, 4294967295
  %cond.i3366 = call i64 @llvm.uadd.sat.i64(i64 %length.123746, i64 %conv783)
  %cmp785 = icmp ugt i64 %cond.i3366, %allocated.193747
  br i1 %cmp785, label %if.then787, label %cleanup853

if.then787:                                       ; preds = %if.end782
  %cmp790.not = icmp eq i64 %allocated.193747, 0
  %cmp793 = icmp sgt i64 %allocated.193747, -1
  %mul796 = shl i64 %allocated.193747, 1
  %cond799 = select i1 %cmp793, i64 %mul796, i64 -1
  %cond802 = select i1 %cmp790.not, i64 12, i64 %cond799
  %allocated.20 = call i64 @llvm.umax.i64(i64 %cond.i3366, i64 %cond802)
  %cmp818 = icmp eq i64 %allocated.20, -1
  br i1 %cmp818, label %cleanup943.thread3917, label %if.end821

if.end821:                                        ; preds = %if.then787
  %cmp822 = icmp eq ptr %result.193748, %resultbuf
  br i1 %cmp822, label %if.then824, label %if.else826

if.then824:                                       ; preds = %if.end821
  %call825 = call noalias ptr @malloc(i64 noundef %allocated.20) #48
  br label %if.end828

if.else826:                                       ; preds = %if.end821
  %call.i3369 = call ptr @realloc(ptr noundef %result.193748, i64 noundef %allocated.20) #47
  br label %if.end828

if.end828:                                        ; preds = %if.else826, %if.then824
  %memory789.0 = phi ptr [ %call825, %if.then824 ], [ %call.i3369, %if.else826 ]
  %cmp829 = icmp eq ptr %memory789.0, null
  br i1 %cmp829, label %cleanup943.thread3917, label %if.end832

if.end832:                                        ; preds = %if.end828
  %cmp836 = icmp ne i64 %length.123746, 0
  %or.cond2221 = select i1 %cmp822, i1 %cmp836, i1 false
  br i1 %or.cond2221, label %if.then838, label %cleanup853

if.then838:                                       ; preds = %if.end832
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %memory789.0, ptr noundef nonnull align 1 %resultbuf, i64 noundef %length.123746, i1 noundef false) #41
  br label %cleanup853

cleanup853:                                       ; preds = %if.then838, %if.end832, %if.end782
  %allocated.21 = phi i64 [ %allocated.193747, %if.end782 ], [ %allocated.20, %if.then838 ], [ %allocated.20, %if.end832 ]
  %result.21 = phi ptr [ %result.193748, %if.end782 ], [ %memory789.0, %if.then838 ], [ %memory789.0, %if.end832 ]
  %add.ptr846 = getelementptr inbounds i8, ptr %result.21, i64 %length.123746
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %add.ptr846, ptr noundef nonnull align 16 %cbuf770, i64 noundef %conv783, i1 noundef false) #41
  %add851 = add i64 %conv783, %length.123746
  %incdec.ptr852 = getelementptr inbounds i32, ptr %arg512.13745, i64 1
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %cbuf770) #41
  %cmp767 = icmp ult ptr %incdec.ptr852, %arg_end.6
  br i1 %cmp767, label %while.body769, label %cleanup858.thread, !llvm.loop !109

if.end861:                                        ; preds = %cleanup858.thread, %cleanup760
  %length.15 = phi i64 [ %length.10.lcssa, %cleanup760 ], [ %length.12.lcssa, %cleanup858.thread ]
  %allocated.24 = phi i64 [ %allocated.17, %cleanup760 ], [ %allocated.19.lcssa, %cleanup858.thread ]
  %result.24 = phi ptr [ %result.17, %cleanup760 ], [ %result.19.lcssa, %cleanup858.thread ]
  %cmp591.not = xor i1 %cmp591, true
  %or.cond3317 = select i1 %cmp591.not, i1 true, i1 %tobool595.not
  br i1 %or.cond3317, label %for.inc, label %if.then867

if.then867:                                       ; preds = %if.end861
  %sub869 = sub nsw i64 %width402.3, %bytes517.6.
  %cond.i3370 = call i64 @llvm.uadd.sat.i64(i64 %length.15, i64 %sub869)
  %cmp871 = icmp ugt i64 %cond.i3370, %allocated.24
  br i1 %cmp871, label %if.then873, label %cleanup943.thread3911

if.then873:                                       ; preds = %if.then867
  %cmp876.not = icmp eq i64 %allocated.24, 0
  %cmp879 = icmp sgt i64 %allocated.24, -1
  %mul882 = shl i64 %allocated.24, 1
  %cond885 = select i1 %cmp879, i64 %mul882, i64 -1
  %cond888 = select i1 %cmp876.not, i64 12, i64 %cond885
  %allocated.25 = call i64 @llvm.umax.i64(i64 %cond.i3370, i64 %cond888)
  %cmp902 = icmp eq i64 %allocated.25, -1
  br i1 %cmp902, label %out_of_memory, label %if.end905

if.end905:                                        ; preds = %if.then873
  %cmp906 = icmp eq ptr %result.24, %resultbuf
  br i1 %cmp906, label %if.then908, label %if.else910

if.then908:                                       ; preds = %if.end905
  %call909 = call noalias ptr @malloc(i64 noundef %allocated.25) #48
  br label %if.end912

if.else910:                                       ; preds = %if.end905
  %call.i3373 = call ptr @realloc(ptr noundef %result.24, i64 noundef %allocated.25) #47
  br label %if.end912

if.end912:                                        ; preds = %if.else910, %if.then908
  %memory875.0 = phi ptr [ %call909, %if.then908 ], [ %call.i3373, %if.else910 ]
  %cmp913 = icmp eq ptr %memory875.0, null
  br i1 %cmp913, label %out_of_memory, label %if.end916

if.end916:                                        ; preds = %if.end912
  %cmp920 = icmp ne i64 %length.15, 0
  %or.cond2222 = select i1 %cmp906, i1 %cmp920, i1 false
  br i1 %or.cond2222, label %if.then922, label %cleanup943.thread3911

if.then922:                                       ; preds = %if.end916
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %memory875.0, ptr noundef nonnull align 1 %resultbuf, i64 noundef %length.15, i1 noundef false) #41
  br label %cleanup943.thread3911

cleanup943.thread3911:                            ; preds = %if.then922, %if.end916, %if.then867
  %allocated.26 = phi i64 [ %allocated.24, %if.then867 ], [ %allocated.25, %if.then922 ], [ %allocated.25, %if.end916 ]
  %result.26 = phi ptr [ %result.24, %if.then867 ], [ %memory875.0, %if.then922 ], [ %memory875.0, %if.end916 ]
  %add.ptr930 = getelementptr inbounds i8, ptr %result.26, i64 %length.15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 %add.ptr930, i8 noundef 32, i64 noundef %sub869, i1 noundef false) #41
  %add932 = add i64 %length.15, %sub869
  br label %for.inc

cleanup943.thread3917:                            ; preds = %if.end828, %if.then787
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %cbuf770) #41
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %state765) #41
  br label %out_of_memory

if.else950:                                       ; preds = %if.end155
  %84 = load ptr, ptr %arg, align 8, !tbaa !67
  %arrayidx954 = getelementptr inbounds %struct.argument, ptr %84, i64 %8
  %85 = load i32, ptr %arrayidx954, align 16, !tbaa !68
  %flags957 = getelementptr inbounds %struct.char_directive, ptr %dp.0, i64 0, i32 2
  %86 = load i32, ptr %flags957, align 8, !tbaa !76
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %prefixes) #41
  store i8 37, ptr %buf.1, align 1, !tbaa !14
  %and959 = and i32 %86, 1
  %tobool960.not = icmp eq i32 %and959, 0
  br i1 %tobool960.not, label %if.end963, label %if.then961

if.then961:                                       ; preds = %if.else950
  store i8 39, ptr %incdec.ptr958, align 1, !tbaa !14
  br label %if.end963

if.end963:                                        ; preds = %if.then961, %if.else950
  %fbp.0 = phi ptr [ %incdec.ptr962, %if.then961 ], [ %incdec.ptr958, %if.else950 ]
  %and964 = and i32 %86, 2
  %tobool965.not = icmp eq i32 %and964, 0
  br i1 %tobool965.not, label %if.end968, label %if.then966

if.then966:                                       ; preds = %if.end963
  %incdec.ptr967 = getelementptr inbounds i8, ptr %fbp.0, i64 1
  store i8 45, ptr %fbp.0, align 1, !tbaa !14
  br label %if.end968

if.end968:                                        ; preds = %if.then966, %if.end963
  %fbp.1 = phi ptr [ %incdec.ptr967, %if.then966 ], [ %fbp.0, %if.end963 ]
  %and969 = and i32 %86, 4
  %tobool970.not = icmp eq i32 %and969, 0
  br i1 %tobool970.not, label %if.end973, label %if.then971

if.then971:                                       ; preds = %if.end968
  %incdec.ptr972 = getelementptr inbounds i8, ptr %fbp.1, i64 1
  store i8 43, ptr %fbp.1, align 1, !tbaa !14
  br label %if.end973

if.end973:                                        ; preds = %if.then971, %if.end968
  %fbp.2 = phi ptr [ %incdec.ptr972, %if.then971 ], [ %fbp.1, %if.end968 ]
  %and974 = and i32 %86, 8
  %tobool975.not = icmp eq i32 %and974, 0
  br i1 %tobool975.not, label %if.end978, label %if.then976

if.then976:                                       ; preds = %if.end973
  %incdec.ptr977 = getelementptr inbounds i8, ptr %fbp.2, i64 1
  store i8 32, ptr %fbp.2, align 1, !tbaa !14
  br label %if.end978

if.end978:                                        ; preds = %if.then976, %if.end973
  %fbp.3 = phi ptr [ %incdec.ptr977, %if.then976 ], [ %fbp.2, %if.end973 ]
  %and979 = and i32 %86, 16
  %tobool980.not = icmp eq i32 %and979, 0
  br i1 %tobool980.not, label %if.end983, label %if.then981

if.then981:                                       ; preds = %if.end978
  %incdec.ptr982 = getelementptr inbounds i8, ptr %fbp.3, i64 1
  store i8 35, ptr %fbp.3, align 1, !tbaa !14
  br label %if.end983

if.end983:                                        ; preds = %if.then981, %if.end978
  %fbp.4 = phi ptr [ %incdec.ptr982, %if.then981 ], [ %fbp.3, %if.end978 ]
  %and984 = and i32 %86, 64
  %tobool985.not = icmp eq i32 %and984, 0
  br i1 %tobool985.not, label %if.end988, label %if.then986

if.then986:                                       ; preds = %if.end983
  %incdec.ptr987 = getelementptr inbounds i8, ptr %fbp.4, i64 1
  store i8 73, ptr %fbp.4, align 1, !tbaa !14
  br label %if.end988

if.end988:                                        ; preds = %if.then986, %if.end983
  %fbp.5 = phi ptr [ %incdec.ptr987, %if.then986 ], [ %fbp.4, %if.end983 ]
  %and989 = and i32 %86, 32
  %tobool990.not = icmp eq i32 %and989, 0
  br i1 %tobool990.not, label %if.end993, label %if.then991

if.then991:                                       ; preds = %if.end988
  %incdec.ptr992 = getelementptr inbounds i8, ptr %fbp.5, i64 1
  store i8 48, ptr %fbp.5, align 1, !tbaa !14
  br label %if.end993

if.end993:                                        ; preds = %if.then991, %if.end988
  %fbp.6 = phi ptr [ %incdec.ptr992, %if.then991 ], [ %fbp.5, %if.end988 ]
  %width_start994 = getelementptr inbounds %struct.char_directive, ptr %dp.0, i64 0, i32 3
  %87 = load ptr, ptr %width_start994, align 8, !tbaa !82
  %88 = ptrtoint ptr %87 to i64
  %width_end995 = getelementptr inbounds %struct.char_directive, ptr %dp.0, i64 0, i32 4
  %89 = load ptr, ptr %width_end995, align 8, !tbaa !83
  %90 = ptrtoint ptr %89 to i64
  %cmp996.not = icmp eq ptr %87, %89
  br i1 %cmp996.not, label %if.end1063, label %if.then998

if.then998:                                       ; preds = %if.end993
  %sub.ptr.lhs.cast1002 = ptrtoint ptr %89 to i64
  %sub.ptr.rhs.cast1003 = ptrtoint ptr %87 to i64
  %sub.ptr.sub1004 = sub i64 %sub.ptr.lhs.cast1002, %sub.ptr.rhs.cast1003
  %width_arg_index1006 = getelementptr inbounds %struct.char_directive, ptr %dp.0, i64 0, i32 5
  %91 = load i64, ptr %width_arg_index1006, align 8, !tbaa !77
  %cmp1007.not = icmp eq i64 %91, -1
  br i1 %cmp1007.not, label %do.body1032.preheader, label %if.then1009

do.body1032.preheader:                            ; preds = %if.then998
  %92 = sub i64 %90, %88
  %xtraiter4367 = and i64 %92, 1
  %93 = add i64 %90, -1
  %94 = icmp eq i64 %93, %88
  br i1 %94, label %if.end1050.loopexit.unr-lcssa, label %do.body1032.preheader.new

do.body1032.preheader.new:                        ; preds = %do.body1032.preheader
  %unroll_iter4370 = and i64 %92, -2
  br label %do.body1032

if.then1009:                                      ; preds = %if.then998
  %95 = load ptr, ptr %arg, align 8, !tbaa !67
  %arrayidx1013 = getelementptr inbounds %struct.argument, ptr %95, i64 %91
  %96 = load i32, ptr %arrayidx1013, align 16, !tbaa !68
  %cmp1015 = icmp eq i32 %96, 5
  br i1 %cmp1015, label %if.end1018, label %if.then1017

if.then1017:                                      ; preds = %if.then1009
  call void @abort() #43
  unreachable

if.end1018:                                       ; preds = %if.then1009
  %a1022 = getelementptr inbounds %struct.argument, ptr %95, i64 %91, i32 1
  %97 = load i32, ptr %a1022, align 16, !tbaa !69
  %98 = call i32 @llvm.abs.i32(i32 %97, i1 false)
  %spec.select3318 = zext i32 %98 to i64
  br label %if.end1050

do.body1032:                                      ; preds = %do.body1032, %do.body1032.preheader.new
  %width1005.1 = phi i64 [ 0, %do.body1032.preheader.new ], [ %cond.i3374.1, %do.body1032 ]
  %digitp1030.0 = phi ptr [ %87, %do.body1032.preheader.new ], [ %incdec.ptr1040.1, %do.body1032 ]
  %niter4371 = phi i64 [ 0, %do.body1032.preheader.new ], [ %niter4371.next.1, %do.body1032 ]
  %cmp1033 = icmp ult i64 %width1005.1, 1844674407370955162
  %mul1036 = mul i64 %width1005.1, 10
  %cond1039 = select i1 %cmp1033, i64 %mul1036, i64 -1
  %incdec.ptr1040 = getelementptr inbounds i8, ptr %digitp1030.0, i64 1
  %99 = load i8, ptr %digitp1030.0, align 1, !tbaa !14
  %conv1041 = sext i8 %99 to i64
  %sub1042 = add nsw i64 %conv1041, -48
  %cond.i3374 = call i64 @llvm.uadd.sat.i64(i64 %cond1039, i64 %sub1042)
  %cmp1033.1 = icmp ult i64 %cond.i3374, 1844674407370955162
  %mul1036.1 = mul i64 %cond.i3374, 10
  %cond1039.1 = select i1 %cmp1033.1, i64 %mul1036.1, i64 -1
  %incdec.ptr1040.1 = getelementptr inbounds i8, ptr %digitp1030.0, i64 2
  %100 = load i8, ptr %incdec.ptr1040, align 1, !tbaa !14
  %conv1041.1 = sext i8 %100 to i64
  %sub1042.1 = add nsw i64 %conv1041.1, -48
  %cond.i3374.1 = call i64 @llvm.uadd.sat.i64(i64 %cond1039.1, i64 %sub1042.1)
  %niter4371.next.1 = add i64 %niter4371, 2
  %niter4371.ncmp.1 = icmp eq i64 %niter4371.next.1, %unroll_iter4370
  br i1 %niter4371.ncmp.1, label %if.end1050.loopexit.unr-lcssa, label %do.body1032, !llvm.loop !110

if.end1050.loopexit.unr-lcssa:                    ; preds = %do.body1032, %do.body1032.preheader
  %cond.i3374.lcssa.ph = phi i64 [ undef, %do.body1032.preheader ], [ %cond.i3374.1, %do.body1032 ]
  %width1005.1.unr = phi i64 [ 0, %do.body1032.preheader ], [ %cond.i3374.1, %do.body1032 ]
  %digitp1030.0.unr = phi ptr [ %87, %do.body1032.preheader ], [ %incdec.ptr1040.1, %do.body1032 ]
  %lcmp.mod4368.not = icmp eq i64 %xtraiter4367, 0
  br i1 %lcmp.mod4368.not, label %if.end1050, label %do.body1032.epil

do.body1032.epil:                                 ; preds = %if.end1050.loopexit.unr-lcssa
  %cmp1033.epil = icmp ult i64 %width1005.1.unr, 1844674407370955162
  %mul1036.epil = mul i64 %width1005.1.unr, 10
  %cond1039.epil = select i1 %cmp1033.epil, i64 %mul1036.epil, i64 -1
  %101 = load i8, ptr %digitp1030.0.unr, align 1, !tbaa !14
  %conv1041.epil = sext i8 %101 to i64
  %sub1042.epil = add nsw i64 %conv1041.epil, -48
  %cond.i3374.epil = call i64 @llvm.uadd.sat.i64(i64 %cond1039.epil, i64 %sub1042.epil)
  br label %if.end1050

if.end1050:                                       ; preds = %do.body1032.epil, %if.end1050.loopexit.unr-lcssa, %if.end1018
  %width1005.2 = phi i64 [ %spec.select3318, %if.end1018 ], [ %cond.i3374.lcssa.ph, %if.end1050.loopexit.unr-lcssa ], [ %cond.i3374.epil, %do.body1032.epil ]
  %cmp1051 = icmp ult i64 %width1005.2, 2147483648
  br i1 %cmp1051, label %cleanup1059.thread, label %cleanup2027.thread3547

cleanup2027.thread3547:                           ; preds = %if.end1050
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %prefixes) #41
  br label %overflow

cleanup1059.thread:                               ; preds = %if.end1050
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %fbp.6, ptr noundef nonnull align 1 %87, i64 noundef %sub.ptr.sub1004, i1 noundef false) #41
  %add.ptr1058 = getelementptr inbounds i8, ptr %fbp.6, i64 %sub.ptr.sub1004
  br label %if.end1063

if.end1063:                                       ; preds = %cleanup1059.thread, %if.end993
  %fbp.8 = phi ptr [ %fbp.6, %if.end993 ], [ %add.ptr1058, %cleanup1059.thread ]
  %precision_start1064 = getelementptr inbounds %struct.char_directive, ptr %dp.0, i64 0, i32 6
  %102 = load ptr, ptr %precision_start1064, align 8, !tbaa !88
  %precision_end1065 = getelementptr inbounds %struct.char_directive, ptr %dp.0, i64 0, i32 7
  %103 = load ptr, ptr %precision_end1065, align 8, !tbaa !89
  %cmp1066.not = icmp eq ptr %102, %103
  br i1 %cmp1066.not, label %if.end1079, label %if.then1068

if.then1068:                                      ; preds = %if.end1063
  %sub.ptr.lhs.cast1072 = ptrtoint ptr %103 to i64
  %sub.ptr.rhs.cast1073 = ptrtoint ptr %102 to i64
  %sub.ptr.sub1074 = sub i64 %sub.ptr.lhs.cast1072, %sub.ptr.rhs.cast1073
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %fbp.8, ptr noundef nonnull align 1 %102, i64 noundef %sub.ptr.sub1074, i1 noundef false) #41
  %add.ptr1078 = getelementptr inbounds i8, ptr %fbp.8, i64 %sub.ptr.sub1074
  br label %if.end1079

if.end1079:                                       ; preds = %if.then1068, %if.end1063
  %fbp.9 = phi ptr [ %add.ptr1078, %if.then1068 ], [ %fbp.8, %if.end1063 ]
  switch i32 %85, label %sw.epilog [
    i32 9, label %sw.bb
    i32 10, label %sw.bb
    i32 7, label %sw.bb1081
    i32 8, label %sw.bb1081
    i32 17, label %sw.bb1081
    i32 18, label %sw.bb1081
    i32 21, label %sw.bb1081
    i32 22, label %sw.bb1081
    i32 23, label %sw.bb1081
    i32 24, label %sw.bb1081
    i32 25, label %sw.bb1081
    i32 26, label %sw.bb1081
    i32 30, label %sw.bb1081
    i32 32, label %sw.bb1081
    i32 28, label %sw.bb1083
  ]

sw.bb:                                            ; preds = %if.end1079, %if.end1079
  %incdec.ptr1080 = getelementptr inbounds i8, ptr %fbp.9, i64 1
  store i8 108, ptr %fbp.9, align 1, !tbaa !14
  br label %sw.bb1081

sw.bb1081:                                        ; preds = %sw.bb, %if.end1079, %if.end1079, %if.end1079, %if.end1079, %if.end1079, %if.end1079, %if.end1079, %if.end1079, %if.end1079, %if.end1079, %if.end1079, %if.end1079
  %fbp.10 = phi ptr [ %fbp.9, %if.end1079 ], [ %fbp.9, %if.end1079 ], [ %fbp.9, %if.end1079 ], [ %fbp.9, %if.end1079 ], [ %fbp.9, %if.end1079 ], [ %fbp.9, %if.end1079 ], [ %fbp.9, %if.end1079 ], [ %fbp.9, %if.end1079 ], [ %fbp.9, %if.end1079 ], [ %fbp.9, %if.end1079 ], [ %fbp.9, %if.end1079 ], [ %fbp.9, %if.end1079 ], [ %incdec.ptr1080, %sw.bb ]
  %incdec.ptr1082 = getelementptr inbounds i8, ptr %fbp.10, i64 1
  store i8 108, ptr %fbp.10, align 1, !tbaa !14
  br label %sw.epilog

sw.bb1083:                                        ; preds = %if.end1079
  %incdec.ptr1084 = getelementptr inbounds i8, ptr %fbp.9, i64 1
  store i8 76, ptr %fbp.9, align 1, !tbaa !14
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb1083, %sw.bb1081, %if.end1079
  %fbp.11 = phi ptr [ %fbp.9, %if.end1079 ], [ %incdec.ptr1084, %sw.bb1083 ], [ %incdec.ptr1082, %sw.bb1081 ]
  %104 = load i8, ptr %conversion, align 8, !tbaa !95
  store i8 %104, ptr %fbp.11, align 1, !tbaa !14
  %arrayidx1086 = getelementptr inbounds i8, ptr %fbp.11, i64 1
  store i8 0, ptr %arrayidx1086, align 1, !tbaa !14
  %width_arg_index1087 = getelementptr inbounds %struct.char_directive, ptr %dp.0, i64 0, i32 5
  %105 = load i64, ptr %width_arg_index1087, align 8, !tbaa !77
  %cmp1088.not = icmp eq i64 %105, -1
  br i1 %cmp1088.not, label %if.end1104, label %if.then1090

if.then1090:                                      ; preds = %sw.epilog
  %106 = load ptr, ptr %arg, align 8, !tbaa !67
  %arrayidx1093 = getelementptr inbounds %struct.argument, ptr %106, i64 %105
  %107 = load i32, ptr %arrayidx1093, align 16, !tbaa !68
  %cmp1095 = icmp eq i32 %107, 5
  br i1 %cmp1095, label %if.end1098, label %if.then1097

if.then1097:                                      ; preds = %if.then1090
  call void @abort() #43
  unreachable

if.end1098:                                       ; preds = %if.then1090
  %a1102 = getelementptr inbounds %struct.argument, ptr %106, i64 %105, i32 1
  %108 = load i32, ptr %a1102, align 16, !tbaa !69
  store i32 %108, ptr %prefixes, align 4, !tbaa !9
  br label %if.end1104

if.end1104:                                       ; preds = %if.end1098, %sw.epilog
  %prefix_count.0 = phi i32 [ 1, %if.end1098 ], [ 0, %sw.epilog ]
  %precision_arg_index1105 = getelementptr inbounds %struct.char_directive, ptr %dp.0, i64 0, i32 8
  %109 = load i64, ptr %precision_arg_index1105, align 8, !tbaa !78
  %cmp1106.not = icmp eq i64 %109, -1
  br i1 %cmp1106.not, label %if.end1124, label %if.then1108

if.then1108:                                      ; preds = %if.end1104
  %110 = load ptr, ptr %arg, align 8, !tbaa !67
  %arrayidx1111 = getelementptr inbounds %struct.argument, ptr %110, i64 %109
  %111 = load i32, ptr %arrayidx1111, align 16, !tbaa !68
  %cmp1113 = icmp eq i32 %111, 5
  br i1 %cmp1113, label %if.end1116, label %if.then1115

if.then1115:                                      ; preds = %if.then1108
  call void @abort() #43
  unreachable

if.end1116:                                       ; preds = %if.then1108
  %a1120 = getelementptr inbounds %struct.argument, ptr %110, i64 %109, i32 1
  %112 = load i32, ptr %a1120, align 16, !tbaa !69
  %inc1121 = add nuw nsw i32 %prefix_count.0, 1
  %idxprom1122 = zext nneg i32 %prefix_count.0 to i64
  %arrayidx1123 = getelementptr inbounds [2 x i32], ptr %prefixes, i64 0, i64 %idxprom1122
  store i32 %112, ptr %arrayidx1123, align 4, !tbaa !9
  br label %if.end1124

if.end1124:                                       ; preds = %if.end1116, %if.end1104
  %prefix_count.1 = phi i32 [ %inc1121, %if.end1116 ], [ %prefix_count.0, %if.end1104 ]
  %cond.i3375 = call i64 @llvm.uadd.sat.i64(i64 %length.2, i64 2)
  %cmp1126 = icmp ugt i64 %cond.i3375, %allocated.4
  br i1 %cmp1126, label %if.then1128, label %if.end1184

if.then1128:                                      ; preds = %if.end1124
  %cmp1131.not = icmp eq i64 %allocated.4, 0
  %cmp1134 = icmp sgt i64 %allocated.4, -1
  %mul1137 = shl i64 %allocated.4, 1
  %cond1140 = select i1 %cmp1134, i64 %mul1137, i64 -1
  %cond1143 = select i1 %cmp1131.not, i64 12, i64 %cond1140
  %allocated.31 = call i64 @llvm.umax.i64(i64 %cond.i3375, i64 %cond1143)
  %cmp1157 = icmp eq i64 %allocated.31, -1
  br i1 %cmp1157, label %cleanup2027.thread, label %if.end1160

if.end1160:                                       ; preds = %if.then1128
  %cmp1161 = icmp eq ptr %result.4, %resultbuf
  br i1 %cmp1161, label %if.then1163, label %if.else1165

if.then1163:                                      ; preds = %if.end1160
  %call1164 = call noalias ptr @malloc(i64 noundef %allocated.31) #48
  br label %if.end1167

if.else1165:                                      ; preds = %if.end1160
  %call.i3378 = call ptr @realloc(ptr noundef %result.4, i64 noundef %allocated.31) #47
  br label %if.end1167

if.end1167:                                       ; preds = %if.else1165, %if.then1163
  %memory1130.0 = phi ptr [ %call1164, %if.then1163 ], [ %call.i3378, %if.else1165 ]
  %cmp1168 = icmp eq ptr %memory1130.0, null
  br i1 %cmp1168, label %cleanup2027.thread, label %if.end1171

if.end1171:                                       ; preds = %if.end1167
  %cmp1175 = icmp ne i64 %length.2, 0
  %or.cond2224 = select i1 %cmp1161, i1 %cmp1175, i1 false
  br i1 %or.cond2224, label %if.then1177, label %if.end1184

if.then1177:                                      ; preds = %if.end1171
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %memory1130.0, ptr noundef nonnull align 1 %resultbuf, i64 noundef %length.2, i1 noundef false) #41
  br label %if.end1184

if.end1184:                                       ; preds = %if.then1177, %if.end1171, %if.end1124
  %allocated.32 = phi i64 [ %allocated.4, %if.end1124 ], [ %allocated.31, %if.then1177 ], [ %allocated.31, %if.end1171 ]
  %result.32 = phi ptr [ %result.4, %if.end1124 ], [ %memory1130.0, %if.then1177 ], [ %memory1130.0, %if.end1171 ]
  %add.ptr1185 = getelementptr inbounds i8, ptr %result.32, i64 %length.2
  store i8 0, ptr %add.ptr1185, align 1, !tbaa !14
  %call1186 = tail call ptr @__errno_location() #46
  %113 = load i32, ptr %call1186, align 4, !tbaa !9
  %cmp2007 = icmp ne i64 %length.2, 0
  br label %for.cond1187

for.cond1187:                                     ; preds = %cleanup2021, %if.end1184
  %allocated.33 = phi i64 [ %allocated.32, %if.end1184 ], [ %allocated.37, %cleanup2021 ]
  %result.33 = phi ptr [ %result.32, %if.end1184 ], [ %result.37, %cleanup2021 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %count1188) #41
  store i32 -1, ptr %count1188, align 4, !tbaa !9
  %sub1189 = sub i64 %allocated.33, %length.2
  %spec.store.select2225 = call i64 @llvm.umin.i64(i64 %sub1189, i64 2147483647)
  store i32 0, ptr %call1186, align 4, !tbaa !9
  switch i32 %85, label %sw.default1878 [
    i32 1, label %sw.bb1196
    i32 2, label %sw.bb1217
    i32 3, label %sw.bb1238
    i32 4, label %sw.bb1259
    i32 5, label %sw.bb1280
    i32 6, label %sw.bb1300
    i32 7, label %sw.bb1320
    i32 8, label %sw.bb1340
    i32 9, label %sw.bb1360
    i32 10, label %sw.bb1380
    i32 11, label %sw.bb1400
    i32 12, label %sw.bb1423
    i32 13, label %sw.bb1446
    i32 14, label %sw.bb1469
    i32 15, label %sw.bb1492
    i32 16, label %sw.bb1512
    i32 17, label %sw.bb1532
    i32 18, label %sw.bb1552
    i32 19, label %sw.bb1572
    i32 20, label %sw.bb1595
    i32 21, label %sw.bb1618
    i32 22, label %sw.bb1638
    i32 23, label %sw.bb1658
    i32 24, label %sw.bb1678
    i32 25, label %sw.bb1698
    i32 26, label %sw.bb1718
    i32 27, label %sw.bb1738
    i32 28, label %sw.bb1758
    i32 29, label %sw.bb1778
    i32 30, label %sw.bb1798
    i32 31, label %sw.bb1818
    i32 32, label %sw.bb1838
    i32 33, label %sw.bb1858
  ]

sw.bb1196:                                        ; preds = %for.cond1187
  %114 = load ptr, ptr %arg, align 8, !tbaa !67
  %115 = load i64, ptr %arg_index, align 8, !tbaa !79
  %a1201 = getelementptr inbounds %struct.argument, ptr %114, i64 %115, i32 1
  %116 = load i8, ptr %a1201, align 16, !tbaa !69
  %conv1202 = sext i8 %116 to i32
  switch i32 %prefix_count.1, label %default.unreachable3903 [
    i32 0, label %sw.bb1203
    i32 1, label %sw.bb1206
    i32 2, label %sw.bb1210
  ]

sw.bb1203:                                        ; preds = %sw.bb1196
  %add.ptr1204 = getelementptr inbounds i8, ptr %result.33, i64 %length.2
  %call1205 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %add.ptr1204, i64 noundef %spec.store.select2225, ptr noundef nonnull %buf.1, i32 noundef %conv1202, ptr noundef nonnull %count1188) #41
  br label %sw.epilog1879

sw.bb1206:                                        ; preds = %sw.bb1196
  %add.ptr1207 = getelementptr inbounds i8, ptr %result.33, i64 %length.2
  %117 = load i32, ptr %prefixes, align 4, !tbaa !9
  %call1209 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %add.ptr1207, i64 noundef %spec.store.select2225, ptr noundef nonnull %buf.1, i32 noundef %117, i32 noundef %conv1202, ptr noundef nonnull %count1188) #41
  br label %sw.epilog1879

sw.bb1210:                                        ; preds = %sw.bb1196
  %add.ptr1211 = getelementptr inbounds i8, ptr %result.33, i64 %length.2
  %118 = load i32, ptr %prefixes, align 4, !tbaa !9
  %119 = load i32, ptr %arrayidx1874, align 4, !tbaa !9
  %call1214 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %add.ptr1211, i64 noundef %spec.store.select2225, ptr noundef nonnull %buf.1, i32 noundef %118, i32 noundef %119, i32 noundef %conv1202, ptr noundef nonnull %count1188) #41
  br label %sw.epilog1879

default.unreachable3903:                          ; preds = %sw.bb1858, %sw.bb1838, %sw.bb1818, %sw.bb1798, %sw.bb1778, %sw.bb1758, %sw.bb1738, %sw.bb1718, %sw.bb1698, %sw.bb1678, %sw.bb1658, %sw.bb1638, %sw.bb1618, %sw.bb1595, %sw.bb1572, %sw.bb1552, %sw.bb1532, %sw.bb1512, %sw.bb1492, %sw.bb1469, %sw.bb1446, %sw.bb1423, %sw.bb1400, %sw.bb1380, %sw.bb1360, %sw.bb1340, %sw.bb1320, %sw.bb1300, %sw.bb1280, %sw.bb1259, %sw.bb1238, %sw.bb1217, %sw.bb1196
  unreachable

sw.bb1217:                                        ; preds = %for.cond1187
  %120 = load ptr, ptr %arg, align 8, !tbaa !67
  %121 = load i64, ptr %arg_index, align 8, !tbaa !79
  %a1222 = getelementptr inbounds %struct.argument, ptr %120, i64 %121, i32 1
  %122 = load i8, ptr %a1222, align 16, !tbaa !69
  %conv1223 = zext i8 %122 to i32
  switch i32 %prefix_count.1, label %default.unreachable3903 [
    i32 0, label %sw.bb1224
    i32 1, label %sw.bb1227
    i32 2, label %sw.bb1231
  ]

sw.bb1224:                                        ; preds = %sw.bb1217
  %add.ptr1225 = getelementptr inbounds i8, ptr %result.33, i64 %length.2
  %call1226 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %add.ptr1225, i64 noundef %spec.store.select2225, ptr noundef nonnull %buf.1, i32 noundef %conv1223, ptr noundef nonnull %count1188) #41
  br label %sw.epilog1879

sw.bb1227:                                        ; preds = %sw.bb1217
  %add.ptr1228 = getelementptr inbounds i8, ptr %result.33, i64 %length.2
  %123 = load i32, ptr %prefixes, align 4, !tbaa !9
  %call1230 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %add.ptr1228, i64 noundef %spec.store.select2225, ptr noundef nonnull %buf.1, i32 noundef %123, i32 noundef %conv1223, ptr noundef nonnull %count1188) #41
  br label %sw.epilog1879

sw.bb1231:                                        ; preds = %sw.bb1217
  %add.ptr1232 = getelementptr inbounds i8, ptr %result.33, i64 %length.2
  %124 = load i32, ptr %prefixes, align 4, !tbaa !9
  %125 = load i32, ptr %arrayidx1874, align 4, !tbaa !9
  %call1235 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %add.ptr1232, i64 noundef %spec.store.select2225, ptr noundef nonnull %buf.1, i32 noundef %124, i32 noundef %125, i32 noundef %conv1223, ptr noundef nonnull %count1188) #41
  br label %sw.epilog1879

sw.bb1238:                                        ; preds = %for.cond1187
  %126 = load ptr, ptr %arg, align 8, !tbaa !67
  %127 = load i64, ptr %arg_index, align 8, !tbaa !79
  %a1243 = getelementptr inbounds %struct.argument, ptr %126, i64 %127, i32 1
  %128 = load i16, ptr %a1243, align 16, !tbaa !69
  %conv1244 = sext i16 %128 to i32
  switch i32 %prefix_count.1, label %default.unreachable3903 [
    i32 0, label %sw.bb1245
    i32 1, label %sw.bb1248
    i32 2, label %sw.bb1252
  ]

sw.bb1245:                                        ; preds = %sw.bb1238
  %add.ptr1246 = getelementptr inbounds i8, ptr %result.33, i64 %length.2
  %call1247 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %add.ptr1246, i64 noundef %spec.store.select2225, ptr noundef nonnull %buf.1, i32 noundef %conv1244, ptr noundef nonnull %count1188) #41
  br label %sw.epilog1879

sw.bb1248:                                        ; preds = %sw.bb1238
  %add.ptr1249 = getelementptr inbounds i8, ptr %result.33, i64 %length.2
  %129 = load i32, ptr %prefixes, align 4, !tbaa !9
  %call1251 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %add.ptr1249, i64 noundef %spec.store.select2225, ptr noundef nonnull %buf.1, i32 noundef %129, i32 noundef %conv1244, ptr noundef nonnull %count1188) #41
  br label %sw.epilog1879

sw.bb1252:                                        ; preds = %sw.bb1238
  %add.ptr1253 = getelementptr inbounds i8, ptr %result.33, i64 %length.2
  %130 = load i32, ptr %prefixes, align 4, !tbaa !9
  %131 = load i32, ptr %arrayidx1874, align 4, !tbaa !9
  %call1256 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %add.ptr1253, i64 noundef %spec.store.select2225, ptr noundef nonnull %buf.1, i32 noundef %130, i32 noundef %131, i32 noundef %conv1244, ptr noundef nonnull %count1188) #41
  br label %sw.epilog1879

sw.bb1259:                                        ; preds = %for.cond1187
  %132 = load ptr, ptr %arg, align 8, !tbaa !67
  %133 = load i64, ptr %arg_index, align 8, !tbaa !79
  %a1264 = getelementptr inbounds %struct.argument, ptr %132, i64 %133, i32 1
  %134 = load i16, ptr %a1264, align 16, !tbaa !69
  %conv1265 = zext i16 %134 to i32
  switch i32 %prefix_count.1, label %default.unreachable3903 [
    i32 0, label %sw.bb1266
    i32 1, label %sw.bb1269
    i32 2, label %sw.bb1273
  ]

sw.bb1266:                                        ; preds = %sw.bb1259
  %add.ptr1267 = getelementptr inbounds i8, ptr %result.33, i64 %length.2
  %call1268 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %add.ptr1267, i64 noundef %spec.store.select2225, ptr noundef nonnull %buf.1, i32 noundef %conv1265, ptr noundef nonnull %count1188) #41
  br label %sw.epilog1879

sw.bb1269:                                        ; preds = %sw.bb1259
  %add.ptr1270 = getelementptr inbounds i8, ptr %result.33, i64 %length.2
  %135 = load i32, ptr %prefixes, align 4, !tbaa !9
  %call1272 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %add.ptr1270, i64 noundef %spec.store.select2225, ptr noundef nonnull %buf.1, i32 noundef %135, i32 noundef %conv1265, ptr noundef nonnull %count1188) #41
  br label %sw.epilog1879

sw.bb1273:                                        ; preds = %sw.bb1259
  %add.ptr1274 = getelementptr inbounds i8, ptr %result.33, i64 %length.2
  %136 = load i32, ptr %prefixes, align 4, !tbaa !9
  %137 = load i32, ptr %arrayidx1874, align 4, !tbaa !9
  %call1277 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %add.ptr1274, i64 noundef %spec.store.select2225, ptr noundef nonnull %buf.1, i32 noundef %136, i32 noundef %137, i32 noundef %conv1265, ptr noundef nonnull %count1188) #41
  br label %sw.epilog1879

sw.bb1280:                                        ; preds = %for.cond1187
  %138 = load ptr, ptr %arg, align 8, !tbaa !67
  %139 = load i64, ptr %arg_index, align 8, !tbaa !79
  %a1285 = getelementptr inbounds %struct.argument, ptr %138, i64 %139, i32 1
  %140 = load i32, ptr %a1285, align 16, !tbaa !69
  switch i32 %prefix_count.1, label %default.unreachable3903 [
    i32 0, label %sw.bb1286
    i32 1, label %sw.bb1289
    i32 2, label %sw.bb1293
  ]

sw.bb1286:                                        ; preds = %sw.bb1280
  %add.ptr1287 = getelementptr inbounds i8, ptr %result.33, i64 %length.2
  %call1288 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %add.ptr1287, i64 noundef %spec.store.select2225, ptr noundef nonnull %buf.1, i32 noundef %140, ptr noundef nonnull %count1188) #41
  br label %sw.epilog1879

sw.bb1289:                                        ; preds = %sw.bb1280
  %add.ptr1290 = getelementptr inbounds i8, ptr %result.33, i64 %length.2
  %141 = load i32, ptr %prefixes, align 4, !tbaa !9
  %call1292 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %add.ptr1290, i64 noundef %spec.store.select2225, ptr noundef nonnull %buf.1, i32 noundef %141, i32 noundef %140, ptr noundef nonnull %count1188) #41
  br label %sw.epilog1879

sw.bb1293:                                        ; preds = %sw.bb1280
  %add.ptr1294 = getelementptr inbounds i8, ptr %result.33, i64 %length.2
  %142 = load i32, ptr %prefixes, align 4, !tbaa !9
  %143 = load i32, ptr %arrayidx1874, align 4, !tbaa !9
  %call1297 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %add.ptr1294, i64 noundef %spec.store.select2225, ptr noundef nonnull %buf.1, i32 noundef %142, i32 noundef %143, i32 noundef %140, ptr noundef nonnull %count1188) #41
  br label %sw.epilog1879

sw.bb1300:                                        ; preds = %for.cond1187
  %144 = load ptr, ptr %arg, align 8, !tbaa !67
  %145 = load i64, ptr %arg_index, align 8, !tbaa !79
  %a1305 = getelementptr inbounds %struct.argument, ptr %144, i64 %145, i32 1
  %146 = load i32, ptr %a1305, align 16, !tbaa !69
  switch i32 %prefix_count.1, label %default.unreachable3903 [
    i32 0, label %sw.bb1306
    i32 1, label %sw.bb1309
    i32 2, label %sw.bb1313
  ]

sw.bb1306:                                        ; preds = %sw.bb1300
  %add.ptr1307 = getelementptr inbounds i8, ptr %result.33, i64 %length.2
  %call1308 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %add.ptr1307, i64 noundef %spec.store.select2225, ptr noundef nonnull %buf.1, i32 noundef %146, ptr noundef nonnull %count1188) #41
  br label %sw.epilog1879

sw.bb1309:                                        ; preds = %sw.bb1300
  %add.ptr1310 = getelementptr inbounds i8, ptr %result.33, i64 %length.2
  %147 = load i32, ptr %prefixes, align 4, !tbaa !9
  %call1312 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %add.ptr1310, i64 noundef %spec.store.select2225, ptr noundef nonnull %buf.1, i32 noundef %147, i32 noundef %146, ptr noundef nonnull %count1188) #41
  br label %sw.epilog1879

sw.bb1313:                                        ; preds = %sw.bb1300
  %add.ptr1314 = getelementptr inbounds i8, ptr %result.33, i64 %length.2
  %148 = load i32, ptr %prefixes, align 4, !tbaa !9
  %149 = load i32, ptr %arrayidx1874, align 4, !tbaa !9
  %call1317 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %add.ptr1314, i64 noundef %spec.store.select2225, ptr noundef nonnull %buf.1, i32 noundef %148, i32 noundef %149, i32 noundef %146, ptr noundef nonnull %count1188) #41
  br label %sw.epilog1879

sw.bb1320:                                        ; preds = %for.cond1187
  %150 = load ptr, ptr %arg, align 8, !tbaa !67
  %151 = load i64, ptr %arg_index, align 8, !tbaa !79
  %a1325 = getelementptr inbounds %struct.argument, ptr %150, i64 %151, i32 1
  %152 = load i64, ptr %a1325, align 16, !tbaa !69
  switch i32 %prefix_count.1, label %default.unreachable3903 [
    i32 0, label %sw.bb1326
    i32 1, label %sw.bb1329
    i32 2, label %sw.bb1333
  ]

sw.bb1326:                                        ; preds = %sw.bb1320
  %add.ptr1327 = getelementptr inbounds i8, ptr %result.33, i64 %length.2
  %call1328 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %add.ptr1327, i64 noundef %spec.store.select2225, ptr noundef nonnull %buf.1, i64 noundef %152, ptr noundef nonnull %count1188) #41
  br label %sw.epilog1879

sw.bb1329:                                        ; preds = %sw.bb1320
  %add.ptr1330 = getelementptr inbounds i8, ptr %result.33, i64 %length.2
  %153 = load i32, ptr %prefixes, align 4, !tbaa !9
  %call1332 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %add.ptr1330, i64 noundef %spec.store.select2225, ptr noundef nonnull %buf.1, i32 noundef %153, i64 noundef %152, ptr noundef nonnull %count1188) #41
  br label %sw.epilog1879

sw.bb1333:                                        ; preds = %sw.bb1320
  %add.ptr1334 = getelementptr inbounds i8, ptr %result.33, i64 %length.2
  %154 = load i32, ptr %prefixes, align 4, !tbaa !9
  %155 = load i32, ptr %arrayidx1874, align 4, !tbaa !9
  %call1337 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %add.ptr1334, i64 noundef %spec.store.select2225, ptr noundef nonnull %buf.1, i32 noundef %154, i32 noundef %155, i64 noundef %152, ptr noundef nonnull %count1188) #41
  br label %sw.epilog1879

sw.bb1340:                                        ; preds = %for.cond1187
  %156 = load ptr, ptr %arg, align 8, !tbaa !67
  %157 = load i64, ptr %arg_index, align 8, !tbaa !79
  %a1345 = getelementptr inbounds %struct.argument, ptr %156, i64 %157, i32 1
  %158 = load i64, ptr %a1345, align 16, !tbaa !69
  switch i32 %prefix_count.1, label %default.unreachable3903 [
    i32 0, label %sw.bb1346
    i32 1, label %sw.bb1349
    i32 2, label %sw.bb1353
  ]

sw.bb1346:                                        ; preds = %sw.bb1340
  %add.ptr1347 = getelementptr inbounds i8, ptr %result.33, i64 %length.2
  %call1348 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %add.ptr1347, i64 noundef %spec.store.select2225, ptr noundef nonnull %buf.1, i64 noundef %158, ptr noundef nonnull %count1188) #41
  br label %sw.epilog1879

sw.bb1349:                                        ; preds = %sw.bb1340
  %add.ptr1350 = getelementptr inbounds i8, ptr %result.33, i64 %length.2
  %159 = load i32, ptr %prefixes, align 4, !tbaa !9
  %call1352 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %add.ptr1350, i64 noundef %spec.store.select2225, ptr noundef nonnull %buf.1, i32 noundef %159, i64 noundef %158, ptr noundef nonnull %count1188) #41
  br label %sw.epilog1879

sw.bb1353:                                        ; preds = %sw.bb1340
  %add.ptr1354 = getelementptr inbounds i8, ptr %result.33, i64 %length.2
  %160 = load i32, ptr %prefixes, align 4, !tbaa !9
  %161 = load i32, ptr %arrayidx1874, align 4, !tbaa !9
  %call1357 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %add.ptr1354, i64 noundef %spec.store.select2225, ptr noundef nonnull %buf.1, i32 noundef %160, i32 noundef %161, i64 noundef %158, ptr noundef nonnull %count1188) #41
  br label %sw.epilog1879

sw.bb1360:                                        ; preds = %for.cond1187
  %162 = load ptr, ptr %arg, align 8, !tbaa !67
  %163 = load i64, ptr %arg_index, align 8, !tbaa !79
  %a1365 = getelementptr inbounds %struct.argument, ptr %162, i64 %163, i32 1
  %164 = load i64, ptr %a1365, align 16, !tbaa !69
  switch i32 %prefix_count.1, label %default.unreachable3903 [
    i32 0, label %sw.bb1366
    i32 1, label %sw.bb1369
    i32 2, label %sw.bb1373
  ]

sw.bb1366:                                        ; preds = %sw.bb1360
  %add.ptr1367 = getelementptr inbounds i8, ptr %result.33, i64 %length.2
  %call1368 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %add.ptr1367, i64 noundef %spec.store.select2225, ptr noundef nonnull %buf.1, i64 noundef %164, ptr noundef nonnull %count1188) #41
  br label %sw.epilog1879

sw.bb1369:                                        ; preds = %sw.bb1360
  %add.ptr1370 = getelementptr inbounds i8, ptr %result.33, i64 %length.2
  %165 = load i32, ptr %prefixes, align 4, !tbaa !9
  %call1372 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %add.ptr1370, i64 noundef %spec.store.select2225, ptr noundef nonnull %buf.1, i32 noundef %165, i64 noundef %164, ptr noundef nonnull %count1188) #41
  br label %sw.epilog1879

sw.bb1373:                                        ; preds = %sw.bb1360
  %add.ptr1374 = getelementptr inbounds i8, ptr %result.33, i64 %length.2
  %166 = load i32, ptr %prefixes, align 4, !tbaa !9
  %167 = load i32, ptr %arrayidx1874, align 4, !tbaa !9
  %call1377 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %add.ptr1374, i64 noundef %spec.store.select2225, ptr noundef nonnull %buf.1, i32 noundef %166, i32 noundef %167, i64 noundef %164, ptr noundef nonnull %count1188) #41
  br label %sw.epilog1879

sw.bb1380:                                        ; preds = %for.cond1187
  %168 = load ptr, ptr %arg, align 8, !tbaa !67
  %169 = load i64, ptr %arg_index, align 8, !tbaa !79
  %a1385 = getelementptr inbounds %struct.argument, ptr %168, i64 %169, i32 1
  %170 = load i64, ptr %a1385, align 16, !tbaa !69
  switch i32 %prefix_count.1, label %default.unreachable3903 [
    i32 0, label %sw.bb1386
    i32 1, label %sw.bb1389
    i32 2, label %sw.bb1393
  ]

sw.bb1386:                                        ; preds = %sw.bb1380
  %add.ptr1387 = getelementptr inbounds i8, ptr %result.33, i64 %length.2
  %call1388 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %add.ptr1387, i64 noundef %spec.store.select2225, ptr noundef nonnull %buf.1, i64 noundef %170, ptr noundef nonnull %count1188) #41
  br label %sw.epilog1879

sw.bb1389:                                        ; preds = %sw.bb1380
  %add.ptr1390 = getelementptr inbounds i8, ptr %result.33, i64 %length.2
  %171 = load i32, ptr %prefixes, align 4, !tbaa !9
  %call1392 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %add.ptr1390, i64 noundef %spec.store.select2225, ptr noundef nonnull %buf.1, i32 noundef %171, i64 noundef %170, ptr noundef nonnull %count1188) #41
  br label %sw.epilog1879

sw.bb1393:                                        ; preds = %sw.bb1380
  %add.ptr1394 = getelementptr inbounds i8, ptr %result.33, i64 %length.2
  %172 = load i32, ptr %prefixes, align 4, !tbaa !9
  %173 = load i32, ptr %arrayidx1874, align 4, !tbaa !9
  %call1397 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %add.ptr1394, i64 noundef %spec.store.select2225, ptr noundef nonnull %buf.1, i32 noundef %172, i32 noundef %173, i64 noundef %170, ptr noundef nonnull %count1188) #41
  br label %sw.epilog1879

sw.bb1400:                                        ; preds = %for.cond1187
  %174 = load ptr, ptr %arg, align 8, !tbaa !67
  %175 = load i64, ptr %arg_index, align 8, !tbaa !79
  %a1405 = getelementptr inbounds %struct.argument, ptr %174, i64 %175, i32 1
  %176 = load i8, ptr %a1405, align 16, !tbaa !69
  switch i32 %prefix_count.1, label %default.unreachable3903 [
    i32 0, label %sw.bb1406
    i32 1, label %sw.bb1410
    i32 2, label %sw.bb1415
  ]

sw.bb1406:                                        ; preds = %sw.bb1400
  %add.ptr1407 = getelementptr inbounds i8, ptr %result.33, i64 %length.2
  %conv1408 = sext i8 %176 to i32
  %call1409 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %add.ptr1407, i64 noundef %spec.store.select2225, ptr noundef nonnull %buf.1, i32 noundef %conv1408, ptr noundef nonnull %count1188) #41
  br label %sw.epilog1879

sw.bb1410:                                        ; preds = %sw.bb1400
  %add.ptr1411 = getelementptr inbounds i8, ptr %result.33, i64 %length.2
  %177 = load i32, ptr %prefixes, align 4, !tbaa !9
  %conv1413 = sext i8 %176 to i32
  %call1414 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %add.ptr1411, i64 noundef %spec.store.select2225, ptr noundef nonnull %buf.1, i32 noundef %177, i32 noundef %conv1413, ptr noundef nonnull %count1188) #41
  br label %sw.epilog1879

sw.bb1415:                                        ; preds = %sw.bb1400
  %add.ptr1416 = getelementptr inbounds i8, ptr %result.33, i64 %length.2
  %178 = load i32, ptr %prefixes, align 4, !tbaa !9
  %179 = load i32, ptr %arrayidx1874, align 4, !tbaa !9
  %conv1419 = sext i8 %176 to i32
  %call1420 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %add.ptr1416, i64 noundef %spec.store.select2225, ptr noundef nonnull %buf.1, i32 noundef %178, i32 noundef %179, i32 noundef %conv1419, ptr noundef nonnull %count1188) #41
  br label %sw.epilog1879

sw.bb1423:                                        ; preds = %for.cond1187
  %180 = load ptr, ptr %arg, align 8, !tbaa !67
  %181 = load i64, ptr %arg_index, align 8, !tbaa !79
  %a1428 = getelementptr inbounds %struct.argument, ptr %180, i64 %181, i32 1
  %182 = load i8, ptr %a1428, align 16, !tbaa !69
  switch i32 %prefix_count.1, label %default.unreachable3903 [
    i32 0, label %sw.bb1429
    i32 1, label %sw.bb1433
    i32 2, label %sw.bb1438
  ]

sw.bb1429:                                        ; preds = %sw.bb1423
  %add.ptr1430 = getelementptr inbounds i8, ptr %result.33, i64 %length.2
  %conv1431 = zext i8 %182 to i32
  %call1432 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %add.ptr1430, i64 noundef %spec.store.select2225, ptr noundef nonnull %buf.1, i32 noundef %conv1431, ptr noundef nonnull %count1188) #41
  br label %sw.epilog1879

sw.bb1433:                                        ; preds = %sw.bb1423
  %add.ptr1434 = getelementptr inbounds i8, ptr %result.33, i64 %length.2
  %183 = load i32, ptr %prefixes, align 4, !tbaa !9
  %conv1436 = zext i8 %182 to i32
  %call1437 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %add.ptr1434, i64 noundef %spec.store.select2225, ptr noundef nonnull %buf.1, i32 noundef %183, i32 noundef %conv1436, ptr noundef nonnull %count1188) #41
  br label %sw.epilog1879

sw.bb1438:                                        ; preds = %sw.bb1423
  %add.ptr1439 = getelementptr inbounds i8, ptr %result.33, i64 %length.2
  %184 = load i32, ptr %prefixes, align 4, !tbaa !9
  %185 = load i32, ptr %arrayidx1874, align 4, !tbaa !9
  %conv1442 = zext i8 %182 to i32
  %call1443 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %add.ptr1439, i64 noundef %spec.store.select2225, ptr noundef nonnull %buf.1, i32 noundef %184, i32 noundef %185, i32 noundef %conv1442, ptr noundef nonnull %count1188) #41
  br label %sw.epilog1879

sw.bb1446:                                        ; preds = %for.cond1187
  %186 = load ptr, ptr %arg, align 8, !tbaa !67
  %187 = load i64, ptr %arg_index, align 8, !tbaa !79
  %a1451 = getelementptr inbounds %struct.argument, ptr %186, i64 %187, i32 1
  %188 = load i16, ptr %a1451, align 16, !tbaa !69
  switch i32 %prefix_count.1, label %default.unreachable3903 [
    i32 0, label %sw.bb1452
    i32 1, label %sw.bb1456
    i32 2, label %sw.bb1461
  ]

sw.bb1452:                                        ; preds = %sw.bb1446
  %add.ptr1453 = getelementptr inbounds i8, ptr %result.33, i64 %length.2
  %conv1454 = sext i16 %188 to i32
  %call1455 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %add.ptr1453, i64 noundef %spec.store.select2225, ptr noundef nonnull %buf.1, i32 noundef %conv1454, ptr noundef nonnull %count1188) #41
  br label %sw.epilog1879

sw.bb1456:                                        ; preds = %sw.bb1446
  %add.ptr1457 = getelementptr inbounds i8, ptr %result.33, i64 %length.2
  %189 = load i32, ptr %prefixes, align 4, !tbaa !9
  %conv1459 = sext i16 %188 to i32
  %call1460 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %add.ptr1457, i64 noundef %spec.store.select2225, ptr noundef nonnull %buf.1, i32 noundef %189, i32 noundef %conv1459, ptr noundef nonnull %count1188) #41
  br label %sw.epilog1879

sw.bb1461:                                        ; preds = %sw.bb1446
  %add.ptr1462 = getelementptr inbounds i8, ptr %result.33, i64 %length.2
  %190 = load i32, ptr %prefixes, align 4, !tbaa !9
  %191 = load i32, ptr %arrayidx1874, align 4, !tbaa !9
  %conv1465 = sext i16 %188 to i32
  %call1466 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %add.ptr1462, i64 noundef %spec.store.select2225, ptr noundef nonnull %buf.1, i32 noundef %190, i32 noundef %191, i32 noundef %conv1465, ptr noundef nonnull %count1188) #41
  br label %sw.epilog1879

sw.bb1469:                                        ; preds = %for.cond1187
  %192 = load ptr, ptr %arg, align 8, !tbaa !67
  %193 = load i64, ptr %arg_index, align 8, !tbaa !79
  %a1474 = getelementptr inbounds %struct.argument, ptr %192, i64 %193, i32 1
  %194 = load i16, ptr %a1474, align 16, !tbaa !69
  switch i32 %prefix_count.1, label %default.unreachable3903 [
    i32 0, label %sw.bb1475
    i32 1, label %sw.bb1479
    i32 2, label %sw.bb1484
  ]

sw.bb1475:                                        ; preds = %sw.bb1469
  %add.ptr1476 = getelementptr inbounds i8, ptr %result.33, i64 %length.2
  %conv1477 = zext i16 %194 to i32
  %call1478 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %add.ptr1476, i64 noundef %spec.store.select2225, ptr noundef nonnull %buf.1, i32 noundef %conv1477, ptr noundef nonnull %count1188) #41
  br label %sw.epilog1879

sw.bb1479:                                        ; preds = %sw.bb1469
  %add.ptr1480 = getelementptr inbounds i8, ptr %result.33, i64 %length.2
  %195 = load i32, ptr %prefixes, align 4, !tbaa !9
  %conv1482 = zext i16 %194 to i32
  %call1483 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %add.ptr1480, i64 noundef %spec.store.select2225, ptr noundef nonnull %buf.1, i32 noundef %195, i32 noundef %conv1482, ptr noundef nonnull %count1188) #41
  br label %sw.epilog1879

sw.bb1484:                                        ; preds = %sw.bb1469
  %add.ptr1485 = getelementptr inbounds i8, ptr %result.33, i64 %length.2
  %196 = load i32, ptr %prefixes, align 4, !tbaa !9
  %197 = load i32, ptr %arrayidx1874, align 4, !tbaa !9
  %conv1488 = zext i16 %194 to i32
  %call1489 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %add.ptr1485, i64 noundef %spec.store.select2225, ptr noundef nonnull %buf.1, i32 noundef %196, i32 noundef %197, i32 noundef %conv1488, ptr noundef nonnull %count1188) #41
  br label %sw.epilog1879

sw.bb1492:                                        ; preds = %for.cond1187
  %198 = load ptr, ptr %arg, align 8, !tbaa !67
  %199 = load i64, ptr %arg_index, align 8, !tbaa !79
  %a1497 = getelementptr inbounds %struct.argument, ptr %198, i64 %199, i32 1
  %200 = load i32, ptr %a1497, align 16, !tbaa !69
  switch i32 %prefix_count.1, label %default.unreachable3903 [
    i32 0, label %sw.bb1498
    i32 1, label %sw.bb1501
    i32 2, label %sw.bb1505
  ]

sw.bb1498:                                        ; preds = %sw.bb1492
  %add.ptr1499 = getelementptr inbounds i8, ptr %result.33, i64 %length.2
  %call1500 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %add.ptr1499, i64 noundef %spec.store.select2225, ptr noundef nonnull %buf.1, i32 noundef %200, ptr noundef nonnull %count1188) #41
  br label %sw.epilog1879

sw.bb1501:                                        ; preds = %sw.bb1492
  %add.ptr1502 = getelementptr inbounds i8, ptr %result.33, i64 %length.2
  %201 = load i32, ptr %prefixes, align 4, !tbaa !9
  %call1504 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %add.ptr1502, i64 noundef %spec.store.select2225, ptr noundef nonnull %buf.1, i32 noundef %201, i32 noundef %200, ptr noundef nonnull %count1188) #41
  br label %sw.epilog1879

sw.bb1505:                                        ; preds = %sw.bb1492
  %add.ptr1506 = getelementptr inbounds i8, ptr %result.33, i64 %length.2
  %202 = load i32, ptr %prefixes, align 4, !tbaa !9
  %203 = load i32, ptr %arrayidx1874, align 4, !tbaa !9
  %call1509 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %add.ptr1506, i64 noundef %spec.store.select2225, ptr noundef nonnull %buf.1, i32 noundef %202, i32 noundef %203, i32 noundef %200, ptr noundef nonnull %count1188) #41
  br label %sw.epilog1879

sw.bb1512:                                        ; preds = %for.cond1187
  %204 = load ptr, ptr %arg, align 8, !tbaa !67
  %205 = load i64, ptr %arg_index, align 8, !tbaa !79
  %a1517 = getelementptr inbounds %struct.argument, ptr %204, i64 %205, i32 1
  %206 = load i32, ptr %a1517, align 16, !tbaa !69
  switch i32 %prefix_count.1, label %default.unreachable3903 [
    i32 0, label %sw.bb1518
    i32 1, label %sw.bb1521
    i32 2, label %sw.bb1525
  ]

sw.bb1518:                                        ; preds = %sw.bb1512
  %add.ptr1519 = getelementptr inbounds i8, ptr %result.33, i64 %length.2
  %call1520 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %add.ptr1519, i64 noundef %spec.store.select2225, ptr noundef nonnull %buf.1, i32 noundef %206, ptr noundef nonnull %count1188) #41
  br label %sw.epilog1879

sw.bb1521:                                        ; preds = %sw.bb1512
  %add.ptr1522 = getelementptr inbounds i8, ptr %result.33, i64 %length.2
  %207 = load i32, ptr %prefixes, align 4, !tbaa !9
  %call1524 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %add.ptr1522, i64 noundef %spec.store.select2225, ptr noundef nonnull %buf.1, i32 noundef %207, i32 noundef %206, ptr noundef nonnull %count1188) #41
  br label %sw.epilog1879

sw.bb1525:                                        ; preds = %sw.bb1512
  %add.ptr1526 = getelementptr inbounds i8, ptr %result.33, i64 %length.2
  %208 = load i32, ptr %prefixes, align 4, !tbaa !9
  %209 = load i32, ptr %arrayidx1874, align 4, !tbaa !9
  %call1529 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %add.ptr1526, i64 noundef %spec.store.select2225, ptr noundef nonnull %buf.1, i32 noundef %208, i32 noundef %209, i32 noundef %206, ptr noundef nonnull %count1188) #41
  br label %sw.epilog1879

sw.bb1532:                                        ; preds = %for.cond1187
  %210 = load ptr, ptr %arg, align 8, !tbaa !67
  %211 = load i64, ptr %arg_index, align 8, !tbaa !79
  %a1537 = getelementptr inbounds %struct.argument, ptr %210, i64 %211, i32 1
  %212 = load i64, ptr %a1537, align 16, !tbaa !69
  switch i32 %prefix_count.1, label %default.unreachable3903 [
    i32 0, label %sw.bb1538
    i32 1, label %sw.bb1541
    i32 2, label %sw.bb1545
  ]

sw.bb1538:                                        ; preds = %sw.bb1532
  %add.ptr1539 = getelementptr inbounds i8, ptr %result.33, i64 %length.2
  %call1540 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %add.ptr1539, i64 noundef %spec.store.select2225, ptr noundef nonnull %buf.1, i64 noundef %212, ptr noundef nonnull %count1188) #41
  br label %sw.epilog1879

sw.bb1541:                                        ; preds = %sw.bb1532
  %add.ptr1542 = getelementptr inbounds i8, ptr %result.33, i64 %length.2
  %213 = load i32, ptr %prefixes, align 4, !tbaa !9
  %call1544 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %add.ptr1542, i64 noundef %spec.store.select2225, ptr noundef nonnull %buf.1, i32 noundef %213, i64 noundef %212, ptr noundef nonnull %count1188) #41
  br label %sw.epilog1879

sw.bb1545:                                        ; preds = %sw.bb1532
  %add.ptr1546 = getelementptr inbounds i8, ptr %result.33, i64 %length.2
  %214 = load i32, ptr %prefixes, align 4, !tbaa !9
  %215 = load i32, ptr %arrayidx1874, align 4, !tbaa !9
  %call1549 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %add.ptr1546, i64 noundef %spec.store.select2225, ptr noundef nonnull %buf.1, i32 noundef %214, i32 noundef %215, i64 noundef %212, ptr noundef nonnull %count1188) #41
  br label %sw.epilog1879

sw.bb1552:                                        ; preds = %for.cond1187
  %216 = load ptr, ptr %arg, align 8, !tbaa !67
  %217 = load i64, ptr %arg_index, align 8, !tbaa !79
  %a1557 = getelementptr inbounds %struct.argument, ptr %216, i64 %217, i32 1
  %218 = load i64, ptr %a1557, align 16, !tbaa !69
  switch i32 %prefix_count.1, label %default.unreachable3903 [
    i32 0, label %sw.bb1558
    i32 1, label %sw.bb1561
    i32 2, label %sw.bb1565
  ]

sw.bb1558:                                        ; preds = %sw.bb1552
  %add.ptr1559 = getelementptr inbounds i8, ptr %result.33, i64 %length.2
  %call1560 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %add.ptr1559, i64 noundef %spec.store.select2225, ptr noundef nonnull %buf.1, i64 noundef %218, ptr noundef nonnull %count1188) #41
  br label %sw.epilog1879

sw.bb1561:                                        ; preds = %sw.bb1552
  %add.ptr1562 = getelementptr inbounds i8, ptr %result.33, i64 %length.2
  %219 = load i32, ptr %prefixes, align 4, !tbaa !9
  %call1564 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %add.ptr1562, i64 noundef %spec.store.select2225, ptr noundef nonnull %buf.1, i32 noundef %219, i64 noundef %218, ptr noundef nonnull %count1188) #41
  br label %sw.epilog1879

sw.bb1565:                                        ; preds = %sw.bb1552
  %add.ptr1566 = getelementptr inbounds i8, ptr %result.33, i64 %length.2
  %220 = load i32, ptr %prefixes, align 4, !tbaa !9
  %221 = load i32, ptr %arrayidx1874, align 4, !tbaa !9
  %call1569 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %add.ptr1566, i64 noundef %spec.store.select2225, ptr noundef nonnull %buf.1, i32 noundef %220, i32 noundef %221, i64 noundef %218, ptr noundef nonnull %count1188) #41
  br label %sw.epilog1879

sw.bb1572:                                        ; preds = %for.cond1187
  %222 = load ptr, ptr %arg, align 8, !tbaa !67
  %223 = load i64, ptr %arg_index, align 8, !tbaa !79
  %a1577 = getelementptr inbounds %struct.argument, ptr %222, i64 %223, i32 1
  %224 = load i8, ptr %a1577, align 16, !tbaa !69
  switch i32 %prefix_count.1, label %default.unreachable3903 [
    i32 0, label %sw.bb1578
    i32 1, label %sw.bb1582
    i32 2, label %sw.bb1587
  ]

sw.bb1578:                                        ; preds = %sw.bb1572
  %add.ptr1579 = getelementptr inbounds i8, ptr %result.33, i64 %length.2
  %conv1580 = sext i8 %224 to i32
  %call1581 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %add.ptr1579, i64 noundef %spec.store.select2225, ptr noundef nonnull %buf.1, i32 noundef %conv1580, ptr noundef nonnull %count1188) #41
  br label %sw.epilog1879

sw.bb1582:                                        ; preds = %sw.bb1572
  %add.ptr1583 = getelementptr inbounds i8, ptr %result.33, i64 %length.2
  %225 = load i32, ptr %prefixes, align 4, !tbaa !9
  %conv1585 = sext i8 %224 to i32
  %call1586 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %add.ptr1583, i64 noundef %spec.store.select2225, ptr noundef nonnull %buf.1, i32 noundef %225, i32 noundef %conv1585, ptr noundef nonnull %count1188) #41
  br label %sw.epilog1879

sw.bb1587:                                        ; preds = %sw.bb1572
  %add.ptr1588 = getelementptr inbounds i8, ptr %result.33, i64 %length.2
  %226 = load i32, ptr %prefixes, align 4, !tbaa !9
  %227 = load i32, ptr %arrayidx1874, align 4, !tbaa !9
  %conv1591 = sext i8 %224 to i32
  %call1592 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %add.ptr1588, i64 noundef %spec.store.select2225, ptr noundef nonnull %buf.1, i32 noundef %226, i32 noundef %227, i32 noundef %conv1591, ptr noundef nonnull %count1188) #41
  br label %sw.epilog1879

sw.bb1595:                                        ; preds = %for.cond1187
  %228 = load ptr, ptr %arg, align 8, !tbaa !67
  %229 = load i64, ptr %arg_index, align 8, !tbaa !79
  %a1600 = getelementptr inbounds %struct.argument, ptr %228, i64 %229, i32 1
  %230 = load i8, ptr %a1600, align 16, !tbaa !69
  switch i32 %prefix_count.1, label %default.unreachable3903 [
    i32 0, label %sw.bb1601
    i32 1, label %sw.bb1605
    i32 2, label %sw.bb1610
  ]

sw.bb1601:                                        ; preds = %sw.bb1595
  %add.ptr1602 = getelementptr inbounds i8, ptr %result.33, i64 %length.2
  %conv1603 = zext i8 %230 to i32
  %call1604 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %add.ptr1602, i64 noundef %spec.store.select2225, ptr noundef nonnull %buf.1, i32 noundef %conv1603, ptr noundef nonnull %count1188) #41
  br label %sw.epilog1879

sw.bb1605:                                        ; preds = %sw.bb1595
  %add.ptr1606 = getelementptr inbounds i8, ptr %result.33, i64 %length.2
  %231 = load i32, ptr %prefixes, align 4, !tbaa !9
  %conv1608 = zext i8 %230 to i32
  %call1609 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %add.ptr1606, i64 noundef %spec.store.select2225, ptr noundef nonnull %buf.1, i32 noundef %231, i32 noundef %conv1608, ptr noundef nonnull %count1188) #41
  br label %sw.epilog1879

sw.bb1610:                                        ; preds = %sw.bb1595
  %add.ptr1611 = getelementptr inbounds i8, ptr %result.33, i64 %length.2
  %232 = load i32, ptr %prefixes, align 4, !tbaa !9
  %233 = load i32, ptr %arrayidx1874, align 4, !tbaa !9
  %conv1614 = zext i8 %230 to i32
  %call1615 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %add.ptr1611, i64 noundef %spec.store.select2225, ptr noundef nonnull %buf.1, i32 noundef %232, i32 noundef %233, i32 noundef %conv1614, ptr noundef nonnull %count1188) #41
  br label %sw.epilog1879

sw.bb1618:                                        ; preds = %for.cond1187
  %234 = load ptr, ptr %arg, align 8, !tbaa !67
  %235 = load i64, ptr %arg_index, align 8, !tbaa !79
  %a1623 = getelementptr inbounds %struct.argument, ptr %234, i64 %235, i32 1
  %236 = load i64, ptr %a1623, align 16, !tbaa !69
  switch i32 %prefix_count.1, label %default.unreachable3903 [
    i32 0, label %sw.bb1624
    i32 1, label %sw.bb1627
    i32 2, label %sw.bb1631
  ]

sw.bb1624:                                        ; preds = %sw.bb1618
  %add.ptr1625 = getelementptr inbounds i8, ptr %result.33, i64 %length.2
  %call1626 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %add.ptr1625, i64 noundef %spec.store.select2225, ptr noundef nonnull %buf.1, i64 noundef %236, ptr noundef nonnull %count1188) #41
  br label %sw.epilog1879

sw.bb1627:                                        ; preds = %sw.bb1618
  %add.ptr1628 = getelementptr inbounds i8, ptr %result.33, i64 %length.2
  %237 = load i32, ptr %prefixes, align 4, !tbaa !9
  %call1630 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %add.ptr1628, i64 noundef %spec.store.select2225, ptr noundef nonnull %buf.1, i32 noundef %237, i64 noundef %236, ptr noundef nonnull %count1188) #41
  br label %sw.epilog1879

sw.bb1631:                                        ; preds = %sw.bb1618
  %add.ptr1632 = getelementptr inbounds i8, ptr %result.33, i64 %length.2
  %238 = load i32, ptr %prefixes, align 4, !tbaa !9
  %239 = load i32, ptr %arrayidx1874, align 4, !tbaa !9
  %call1635 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %add.ptr1632, i64 noundef %spec.store.select2225, ptr noundef nonnull %buf.1, i32 noundef %238, i32 noundef %239, i64 noundef %236, ptr noundef nonnull %count1188) #41
  br label %sw.epilog1879

sw.bb1638:                                        ; preds = %for.cond1187
  %240 = load ptr, ptr %arg, align 8, !tbaa !67
  %241 = load i64, ptr %arg_index, align 8, !tbaa !79
  %a1643 = getelementptr inbounds %struct.argument, ptr %240, i64 %241, i32 1
  %242 = load i64, ptr %a1643, align 16, !tbaa !69
  switch i32 %prefix_count.1, label %default.unreachable3903 [
    i32 0, label %sw.bb1644
    i32 1, label %sw.bb1647
    i32 2, label %sw.bb1651
  ]

sw.bb1644:                                        ; preds = %sw.bb1638
  %add.ptr1645 = getelementptr inbounds i8, ptr %result.33, i64 %length.2
  %call1646 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %add.ptr1645, i64 noundef %spec.store.select2225, ptr noundef nonnull %buf.1, i64 noundef %242, ptr noundef nonnull %count1188) #41
  br label %sw.epilog1879

sw.bb1647:                                        ; preds = %sw.bb1638
  %add.ptr1648 = getelementptr inbounds i8, ptr %result.33, i64 %length.2
  %243 = load i32, ptr %prefixes, align 4, !tbaa !9
  %call1650 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %add.ptr1648, i64 noundef %spec.store.select2225, ptr noundef nonnull %buf.1, i32 noundef %243, i64 noundef %242, ptr noundef nonnull %count1188) #41
  br label %sw.epilog1879

sw.bb1651:                                        ; preds = %sw.bb1638
  %add.ptr1652 = getelementptr inbounds i8, ptr %result.33, i64 %length.2
  %244 = load i32, ptr %prefixes, align 4, !tbaa !9
  %245 = load i32, ptr %arrayidx1874, align 4, !tbaa !9
  %call1655 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %add.ptr1652, i64 noundef %spec.store.select2225, ptr noundef nonnull %buf.1, i32 noundef %244, i32 noundef %245, i64 noundef %242, ptr noundef nonnull %count1188) #41
  br label %sw.epilog1879

sw.bb1658:                                        ; preds = %for.cond1187
  %246 = load ptr, ptr %arg, align 8, !tbaa !67
  %247 = load i64, ptr %arg_index, align 8, !tbaa !79
  %a1663 = getelementptr inbounds %struct.argument, ptr %246, i64 %247, i32 1
  %248 = load i64, ptr %a1663, align 16, !tbaa !69
  switch i32 %prefix_count.1, label %default.unreachable3903 [
    i32 0, label %sw.bb1664
    i32 1, label %sw.bb1667
    i32 2, label %sw.bb1671
  ]

sw.bb1664:                                        ; preds = %sw.bb1658
  %add.ptr1665 = getelementptr inbounds i8, ptr %result.33, i64 %length.2
  %call1666 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %add.ptr1665, i64 noundef %spec.store.select2225, ptr noundef nonnull %buf.1, i64 noundef %248, ptr noundef nonnull %count1188) #41
  br label %sw.epilog1879

sw.bb1667:                                        ; preds = %sw.bb1658
  %add.ptr1668 = getelementptr inbounds i8, ptr %result.33, i64 %length.2
  %249 = load i32, ptr %prefixes, align 4, !tbaa !9
  %call1670 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %add.ptr1668, i64 noundef %spec.store.select2225, ptr noundef nonnull %buf.1, i32 noundef %249, i64 noundef %248, ptr noundef nonnull %count1188) #41
  br label %sw.epilog1879

sw.bb1671:                                        ; preds = %sw.bb1658
  %add.ptr1672 = getelementptr inbounds i8, ptr %result.33, i64 %length.2
  %250 = load i32, ptr %prefixes, align 4, !tbaa !9
  %251 = load i32, ptr %arrayidx1874, align 4, !tbaa !9
  %call1675 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %add.ptr1672, i64 noundef %spec.store.select2225, ptr noundef nonnull %buf.1, i32 noundef %250, i32 noundef %251, i64 noundef %248, ptr noundef nonnull %count1188) #41
  br label %sw.epilog1879

sw.bb1678:                                        ; preds = %for.cond1187
  %252 = load ptr, ptr %arg, align 8, !tbaa !67
  %253 = load i64, ptr %arg_index, align 8, !tbaa !79
  %a1683 = getelementptr inbounds %struct.argument, ptr %252, i64 %253, i32 1
  %254 = load i64, ptr %a1683, align 16, !tbaa !69
  switch i32 %prefix_count.1, label %default.unreachable3903 [
    i32 0, label %sw.bb1684
    i32 1, label %sw.bb1687
    i32 2, label %sw.bb1691
  ]

sw.bb1684:                                        ; preds = %sw.bb1678
  %add.ptr1685 = getelementptr inbounds i8, ptr %result.33, i64 %length.2
  %call1686 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %add.ptr1685, i64 noundef %spec.store.select2225, ptr noundef nonnull %buf.1, i64 noundef %254, ptr noundef nonnull %count1188) #41
  br label %sw.epilog1879

sw.bb1687:                                        ; preds = %sw.bb1678
  %add.ptr1688 = getelementptr inbounds i8, ptr %result.33, i64 %length.2
  %255 = load i32, ptr %prefixes, align 4, !tbaa !9
  %call1690 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %add.ptr1688, i64 noundef %spec.store.select2225, ptr noundef nonnull %buf.1, i32 noundef %255, i64 noundef %254, ptr noundef nonnull %count1188) #41
  br label %sw.epilog1879

sw.bb1691:                                        ; preds = %sw.bb1678
  %add.ptr1692 = getelementptr inbounds i8, ptr %result.33, i64 %length.2
  %256 = load i32, ptr %prefixes, align 4, !tbaa !9
  %257 = load i32, ptr %arrayidx1874, align 4, !tbaa !9
  %call1695 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %add.ptr1692, i64 noundef %spec.store.select2225, ptr noundef nonnull %buf.1, i32 noundef %256, i32 noundef %257, i64 noundef %254, ptr noundef nonnull %count1188) #41
  br label %sw.epilog1879

sw.bb1698:                                        ; preds = %for.cond1187
  %258 = load ptr, ptr %arg, align 8, !tbaa !67
  %259 = load i64, ptr %arg_index, align 8, !tbaa !79
  %a1703 = getelementptr inbounds %struct.argument, ptr %258, i64 %259, i32 1
  %260 = load i64, ptr %a1703, align 16, !tbaa !69
  switch i32 %prefix_count.1, label %default.unreachable3903 [
    i32 0, label %sw.bb1704
    i32 1, label %sw.bb1707
    i32 2, label %sw.bb1711
  ]

sw.bb1704:                                        ; preds = %sw.bb1698
  %add.ptr1705 = getelementptr inbounds i8, ptr %result.33, i64 %length.2
  %call1706 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %add.ptr1705, i64 noundef %spec.store.select2225, ptr noundef nonnull %buf.1, i64 noundef %260, ptr noundef nonnull %count1188) #41
  br label %sw.epilog1879

sw.bb1707:                                        ; preds = %sw.bb1698
  %add.ptr1708 = getelementptr inbounds i8, ptr %result.33, i64 %length.2
  %261 = load i32, ptr %prefixes, align 4, !tbaa !9
  %call1710 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %add.ptr1708, i64 noundef %spec.store.select2225, ptr noundef nonnull %buf.1, i32 noundef %261, i64 noundef %260, ptr noundef nonnull %count1188) #41
  br label %sw.epilog1879

sw.bb1711:                                        ; preds = %sw.bb1698
  %add.ptr1712 = getelementptr inbounds i8, ptr %result.33, i64 %length.2
  %262 = load i32, ptr %prefixes, align 4, !tbaa !9
  %263 = load i32, ptr %arrayidx1874, align 4, !tbaa !9
  %call1715 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %add.ptr1712, i64 noundef %spec.store.select2225, ptr noundef nonnull %buf.1, i32 noundef %262, i32 noundef %263, i64 noundef %260, ptr noundef nonnull %count1188) #41
  br label %sw.epilog1879

sw.bb1718:                                        ; preds = %for.cond1187
  %264 = load ptr, ptr %arg, align 8, !tbaa !67
  %265 = load i64, ptr %arg_index, align 8, !tbaa !79
  %a1723 = getelementptr inbounds %struct.argument, ptr %264, i64 %265, i32 1
  %266 = load i64, ptr %a1723, align 16, !tbaa !69
  switch i32 %prefix_count.1, label %default.unreachable3903 [
    i32 0, label %sw.bb1724
    i32 1, label %sw.bb1727
    i32 2, label %sw.bb1731
  ]

sw.bb1724:                                        ; preds = %sw.bb1718
  %add.ptr1725 = getelementptr inbounds i8, ptr %result.33, i64 %length.2
  %call1726 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %add.ptr1725, i64 noundef %spec.store.select2225, ptr noundef nonnull %buf.1, i64 noundef %266, ptr noundef nonnull %count1188) #41
  br label %sw.epilog1879

sw.bb1727:                                        ; preds = %sw.bb1718
  %add.ptr1728 = getelementptr inbounds i8, ptr %result.33, i64 %length.2
  %267 = load i32, ptr %prefixes, align 4, !tbaa !9
  %call1730 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %add.ptr1728, i64 noundef %spec.store.select2225, ptr noundef nonnull %buf.1, i32 noundef %267, i64 noundef %266, ptr noundef nonnull %count1188) #41
  br label %sw.epilog1879

sw.bb1731:                                        ; preds = %sw.bb1718
  %add.ptr1732 = getelementptr inbounds i8, ptr %result.33, i64 %length.2
  %268 = load i32, ptr %prefixes, align 4, !tbaa !9
  %269 = load i32, ptr %arrayidx1874, align 4, !tbaa !9
  %call1735 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %add.ptr1732, i64 noundef %spec.store.select2225, ptr noundef nonnull %buf.1, i32 noundef %268, i32 noundef %269, i64 noundef %266, ptr noundef nonnull %count1188) #41
  br label %sw.epilog1879

sw.bb1738:                                        ; preds = %for.cond1187
  %270 = load ptr, ptr %arg, align 8, !tbaa !67
  %271 = load i64, ptr %arg_index, align 8, !tbaa !79
  %a1743 = getelementptr inbounds %struct.argument, ptr %270, i64 %271, i32 1
  %272 = load double, ptr %a1743, align 16, !tbaa !69
  switch i32 %prefix_count.1, label %default.unreachable3903 [
    i32 0, label %sw.bb1744
    i32 1, label %sw.bb1747
    i32 2, label %sw.bb1751
  ]

sw.bb1744:                                        ; preds = %sw.bb1738
  %add.ptr1745 = getelementptr inbounds i8, ptr %result.33, i64 %length.2
  %call1746 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %add.ptr1745, i64 noundef %spec.store.select2225, ptr noundef nonnull %buf.1, double noundef %272, ptr noundef nonnull %count1188) #41
  br label %sw.epilog1879

sw.bb1747:                                        ; preds = %sw.bb1738
  %add.ptr1748 = getelementptr inbounds i8, ptr %result.33, i64 %length.2
  %273 = load i32, ptr %prefixes, align 4, !tbaa !9
  %call1750 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %add.ptr1748, i64 noundef %spec.store.select2225, ptr noundef nonnull %buf.1, i32 noundef %273, double noundef %272, ptr noundef nonnull %count1188) #41
  br label %sw.epilog1879

sw.bb1751:                                        ; preds = %sw.bb1738
  %add.ptr1752 = getelementptr inbounds i8, ptr %result.33, i64 %length.2
  %274 = load i32, ptr %prefixes, align 4, !tbaa !9
  %275 = load i32, ptr %arrayidx1874, align 4, !tbaa !9
  %call1755 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %add.ptr1752, i64 noundef %spec.store.select2225, ptr noundef nonnull %buf.1, i32 noundef %274, i32 noundef %275, double noundef %272, ptr noundef nonnull %count1188) #41
  br label %sw.epilog1879

sw.bb1758:                                        ; preds = %for.cond1187
  %276 = load ptr, ptr %arg, align 8, !tbaa !67
  %277 = load i64, ptr %arg_index, align 8, !tbaa !79
  %a1763 = getelementptr inbounds %struct.argument, ptr %276, i64 %277, i32 1
  %278 = load x86_fp80, ptr %a1763, align 16, !tbaa !69
  switch i32 %prefix_count.1, label %default.unreachable3903 [
    i32 0, label %sw.bb1764
    i32 1, label %sw.bb1767
    i32 2, label %sw.bb1771
  ]

sw.bb1764:                                        ; preds = %sw.bb1758
  %add.ptr1765 = getelementptr inbounds i8, ptr %result.33, i64 %length.2
  %call1766 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %add.ptr1765, i64 noundef %spec.store.select2225, ptr noundef nonnull %buf.1, x86_fp80 noundef %278, ptr noundef nonnull %count1188) #41
  br label %sw.epilog1879

sw.bb1767:                                        ; preds = %sw.bb1758
  %add.ptr1768 = getelementptr inbounds i8, ptr %result.33, i64 %length.2
  %279 = load i32, ptr %prefixes, align 4, !tbaa !9
  %call1770 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %add.ptr1768, i64 noundef %spec.store.select2225, ptr noundef nonnull %buf.1, i32 noundef %279, x86_fp80 noundef %278, ptr noundef nonnull %count1188) #41
  br label %sw.epilog1879

sw.bb1771:                                        ; preds = %sw.bb1758
  %add.ptr1772 = getelementptr inbounds i8, ptr %result.33, i64 %length.2
  %280 = load i32, ptr %prefixes, align 4, !tbaa !9
  %281 = load i32, ptr %arrayidx1874, align 4, !tbaa !9
  %call1775 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %add.ptr1772, i64 noundef %spec.store.select2225, ptr noundef nonnull %buf.1, i32 noundef %280, i32 noundef %281, x86_fp80 noundef %278, ptr noundef nonnull %count1188) #41
  br label %sw.epilog1879

sw.bb1778:                                        ; preds = %for.cond1187
  %282 = load ptr, ptr %arg, align 8, !tbaa !67
  %283 = load i64, ptr %arg_index, align 8, !tbaa !79
  %a1783 = getelementptr inbounds %struct.argument, ptr %282, i64 %283, i32 1
  %284 = load i32, ptr %a1783, align 16, !tbaa !69
  switch i32 %prefix_count.1, label %default.unreachable3903 [
    i32 0, label %sw.bb1784
    i32 1, label %sw.bb1787
    i32 2, label %sw.bb1791
  ]

sw.bb1784:                                        ; preds = %sw.bb1778
  %add.ptr1785 = getelementptr inbounds i8, ptr %result.33, i64 %length.2
  %call1786 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %add.ptr1785, i64 noundef %spec.store.select2225, ptr noundef nonnull %buf.1, i32 noundef %284, ptr noundef nonnull %count1188) #41
  br label %sw.epilog1879

sw.bb1787:                                        ; preds = %sw.bb1778
  %add.ptr1788 = getelementptr inbounds i8, ptr %result.33, i64 %length.2
  %285 = load i32, ptr %prefixes, align 4, !tbaa !9
  %call1790 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %add.ptr1788, i64 noundef %spec.store.select2225, ptr noundef nonnull %buf.1, i32 noundef %285, i32 noundef %284, ptr noundef nonnull %count1188) #41
  br label %sw.epilog1879

sw.bb1791:                                        ; preds = %sw.bb1778
  %add.ptr1792 = getelementptr inbounds i8, ptr %result.33, i64 %length.2
  %286 = load i32, ptr %prefixes, align 4, !tbaa !9
  %287 = load i32, ptr %arrayidx1874, align 4, !tbaa !9
  %call1795 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %add.ptr1792, i64 noundef %spec.store.select2225, ptr noundef nonnull %buf.1, i32 noundef %286, i32 noundef %287, i32 noundef %284, ptr noundef nonnull %count1188) #41
  br label %sw.epilog1879

sw.bb1798:                                        ; preds = %for.cond1187
  %288 = load ptr, ptr %arg, align 8, !tbaa !67
  %289 = load i64, ptr %arg_index, align 8, !tbaa !79
  %a1803 = getelementptr inbounds %struct.argument, ptr %288, i64 %289, i32 1
  %290 = load i32, ptr %a1803, align 16, !tbaa !69
  switch i32 %prefix_count.1, label %default.unreachable3903 [
    i32 0, label %sw.bb1804
    i32 1, label %sw.bb1807
    i32 2, label %sw.bb1811
  ]

sw.bb1804:                                        ; preds = %sw.bb1798
  %add.ptr1805 = getelementptr inbounds i8, ptr %result.33, i64 %length.2
  %call1806 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %add.ptr1805, i64 noundef %spec.store.select2225, ptr noundef nonnull %buf.1, i32 noundef %290, ptr noundef nonnull %count1188) #41
  br label %sw.epilog1879

sw.bb1807:                                        ; preds = %sw.bb1798
  %add.ptr1808 = getelementptr inbounds i8, ptr %result.33, i64 %length.2
  %291 = load i32, ptr %prefixes, align 4, !tbaa !9
  %call1810 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %add.ptr1808, i64 noundef %spec.store.select2225, ptr noundef nonnull %buf.1, i32 noundef %291, i32 noundef %290, ptr noundef nonnull %count1188) #41
  br label %sw.epilog1879

sw.bb1811:                                        ; preds = %sw.bb1798
  %add.ptr1812 = getelementptr inbounds i8, ptr %result.33, i64 %length.2
  %292 = load i32, ptr %prefixes, align 4, !tbaa !9
  %293 = load i32, ptr %arrayidx1874, align 4, !tbaa !9
  %call1815 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %add.ptr1812, i64 noundef %spec.store.select2225, ptr noundef nonnull %buf.1, i32 noundef %292, i32 noundef %293, i32 noundef %290, ptr noundef nonnull %count1188) #41
  br label %sw.epilog1879

sw.bb1818:                                        ; preds = %for.cond1187
  %294 = load ptr, ptr %arg, align 8, !tbaa !67
  %295 = load i64, ptr %arg_index, align 8, !tbaa !79
  %a1823 = getelementptr inbounds %struct.argument, ptr %294, i64 %295, i32 1
  %296 = load ptr, ptr %a1823, align 16, !tbaa !69
  switch i32 %prefix_count.1, label %default.unreachable3903 [
    i32 0, label %sw.bb1824
    i32 1, label %sw.bb1827
    i32 2, label %sw.bb1831
  ]

sw.bb1824:                                        ; preds = %sw.bb1818
  %add.ptr1825 = getelementptr inbounds i8, ptr %result.33, i64 %length.2
  %call1826 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %add.ptr1825, i64 noundef %spec.store.select2225, ptr noundef nonnull %buf.1, ptr noundef %296, ptr noundef nonnull %count1188) #41
  br label %sw.epilog1879

sw.bb1827:                                        ; preds = %sw.bb1818
  %add.ptr1828 = getelementptr inbounds i8, ptr %result.33, i64 %length.2
  %297 = load i32, ptr %prefixes, align 4, !tbaa !9
  %call1830 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %add.ptr1828, i64 noundef %spec.store.select2225, ptr noundef nonnull %buf.1, i32 noundef %297, ptr noundef %296, ptr noundef nonnull %count1188) #41
  br label %sw.epilog1879

sw.bb1831:                                        ; preds = %sw.bb1818
  %add.ptr1832 = getelementptr inbounds i8, ptr %result.33, i64 %length.2
  %298 = load i32, ptr %prefixes, align 4, !tbaa !9
  %299 = load i32, ptr %arrayidx1874, align 4, !tbaa !9
  %call1835 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %add.ptr1832, i64 noundef %spec.store.select2225, ptr noundef nonnull %buf.1, i32 noundef %298, i32 noundef %299, ptr noundef %296, ptr noundef nonnull %count1188) #41
  br label %sw.epilog1879

sw.bb1838:                                        ; preds = %for.cond1187
  %300 = load ptr, ptr %arg, align 8, !tbaa !67
  %301 = load i64, ptr %arg_index, align 8, !tbaa !79
  %a1843 = getelementptr inbounds %struct.argument, ptr %300, i64 %301, i32 1
  %302 = load ptr, ptr %a1843, align 16, !tbaa !69
  switch i32 %prefix_count.1, label %default.unreachable3903 [
    i32 0, label %sw.bb1844
    i32 1, label %sw.bb1847
    i32 2, label %sw.bb1851
  ]

sw.bb1844:                                        ; preds = %sw.bb1838
  %add.ptr1845 = getelementptr inbounds i8, ptr %result.33, i64 %length.2
  %call1846 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %add.ptr1845, i64 noundef %spec.store.select2225, ptr noundef nonnull %buf.1, ptr noundef %302, ptr noundef nonnull %count1188) #41
  br label %sw.epilog1879

sw.bb1847:                                        ; preds = %sw.bb1838
  %add.ptr1848 = getelementptr inbounds i8, ptr %result.33, i64 %length.2
  %303 = load i32, ptr %prefixes, align 4, !tbaa !9
  %call1850 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %add.ptr1848, i64 noundef %spec.store.select2225, ptr noundef nonnull %buf.1, i32 noundef %303, ptr noundef %302, ptr noundef nonnull %count1188) #41
  br label %sw.epilog1879

sw.bb1851:                                        ; preds = %sw.bb1838
  %add.ptr1852 = getelementptr inbounds i8, ptr %result.33, i64 %length.2
  %304 = load i32, ptr %prefixes, align 4, !tbaa !9
  %305 = load i32, ptr %arrayidx1874, align 4, !tbaa !9
  %call1855 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %add.ptr1852, i64 noundef %spec.store.select2225, ptr noundef nonnull %buf.1, i32 noundef %304, i32 noundef %305, ptr noundef %302, ptr noundef nonnull %count1188) #41
  br label %sw.epilog1879

sw.bb1858:                                        ; preds = %for.cond1187
  %306 = load ptr, ptr %arg, align 8, !tbaa !67
  %307 = load i64, ptr %arg_index, align 8, !tbaa !79
  %a1863 = getelementptr inbounds %struct.argument, ptr %306, i64 %307, i32 1
  %308 = load ptr, ptr %a1863, align 16, !tbaa !69
  switch i32 %prefix_count.1, label %default.unreachable3903 [
    i32 0, label %sw.bb1864
    i32 1, label %sw.bb1867
    i32 2, label %sw.bb1871
  ]

sw.bb1864:                                        ; preds = %sw.bb1858
  %add.ptr1865 = getelementptr inbounds i8, ptr %result.33, i64 %length.2
  %call1866 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %add.ptr1865, i64 noundef %spec.store.select2225, ptr noundef nonnull %buf.1, ptr noundef %308, ptr noundef nonnull %count1188) #41
  br label %sw.epilog1879

sw.bb1867:                                        ; preds = %sw.bb1858
  %add.ptr1868 = getelementptr inbounds i8, ptr %result.33, i64 %length.2
  %309 = load i32, ptr %prefixes, align 4, !tbaa !9
  %call1870 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %add.ptr1868, i64 noundef %spec.store.select2225, ptr noundef nonnull %buf.1, i32 noundef %309, ptr noundef %308, ptr noundef nonnull %count1188) #41
  br label %sw.epilog1879

sw.bb1871:                                        ; preds = %sw.bb1858
  %add.ptr1872 = getelementptr inbounds i8, ptr %result.33, i64 %length.2
  %310 = load i32, ptr %prefixes, align 4, !tbaa !9
  %311 = load i32, ptr %arrayidx1874, align 4, !tbaa !9
  %call1875 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %add.ptr1872, i64 noundef %spec.store.select2225, ptr noundef nonnull %buf.1, i32 noundef %310, i32 noundef %311, ptr noundef %308, ptr noundef nonnull %count1188) #41
  br label %sw.epilog1879

sw.default1878:                                   ; preds = %for.cond1187
  call void @abort() #43
  unreachable

sw.epilog1879:                                    ; preds = %sw.bb1871, %sw.bb1867, %sw.bb1864, %sw.bb1851, %sw.bb1847, %sw.bb1844, %sw.bb1831, %sw.bb1827, %sw.bb1824, %sw.bb1811, %sw.bb1807, %sw.bb1804, %sw.bb1791, %sw.bb1787, %sw.bb1784, %sw.bb1771, %sw.bb1767, %sw.bb1764, %sw.bb1751, %sw.bb1747, %sw.bb1744, %sw.bb1731, %sw.bb1727, %sw.bb1724, %sw.bb1711, %sw.bb1707, %sw.bb1704, %sw.bb1691, %sw.bb1687, %sw.bb1684, %sw.bb1671, %sw.bb1667, %sw.bb1664, %sw.bb1651, %sw.bb1647, %sw.bb1644, %sw.bb1631, %sw.bb1627, %sw.bb1624, %sw.bb1610, %sw.bb1605, %sw.bb1601, %sw.bb1587, %sw.bb1582, %sw.bb1578, %sw.bb1565, %sw.bb1561, %sw.bb1558, %sw.bb1545, %sw.bb1541, %sw.bb1538, %sw.bb1525, %sw.bb1521, %sw.bb1518, %sw.bb1505, %sw.bb1501, %sw.bb1498, %sw.bb1484, %sw.bb1479, %sw.bb1475, %sw.bb1461, %sw.bb1456, %sw.bb1452, %sw.bb1438, %sw.bb1433, %sw.bb1429, %sw.bb1415, %sw.bb1410, %sw.bb1406, %sw.bb1393, %sw.bb1389, %sw.bb1386, %sw.bb1373, %sw.bb1369, %sw.bb1366, %sw.bb1353, %sw.bb1349, %sw.bb1346, %sw.bb1333, %sw.bb1329, %sw.bb1326, %sw.bb1313, %sw.bb1309, %sw.bb1306, %sw.bb1293, %sw.bb1289, %sw.bb1286, %sw.bb1273, %sw.bb1269, %sw.bb1266, %sw.bb1252, %sw.bb1248, %sw.bb1245, %sw.bb1231, %sw.bb1227, %sw.bb1224, %sw.bb1210, %sw.bb1206, %sw.bb1203
  %retcount.33 = phi i32 [ %call1214, %sw.bb1210 ], [ %call1209, %sw.bb1206 ], [ %call1205, %sw.bb1203 ], [ %call1235, %sw.bb1231 ], [ %call1230, %sw.bb1227 ], [ %call1226, %sw.bb1224 ], [ %call1256, %sw.bb1252 ], [ %call1251, %sw.bb1248 ], [ %call1247, %sw.bb1245 ], [ %call1277, %sw.bb1273 ], [ %call1272, %sw.bb1269 ], [ %call1268, %sw.bb1266 ], [ %call1297, %sw.bb1293 ], [ %call1292, %sw.bb1289 ], [ %call1288, %sw.bb1286 ], [ %call1317, %sw.bb1313 ], [ %call1312, %sw.bb1309 ], [ %call1308, %sw.bb1306 ], [ %call1337, %sw.bb1333 ], [ %call1332, %sw.bb1329 ], [ %call1328, %sw.bb1326 ], [ %call1357, %sw.bb1353 ], [ %call1352, %sw.bb1349 ], [ %call1348, %sw.bb1346 ], [ %call1377, %sw.bb1373 ], [ %call1372, %sw.bb1369 ], [ %call1368, %sw.bb1366 ], [ %call1397, %sw.bb1393 ], [ %call1392, %sw.bb1389 ], [ %call1388, %sw.bb1386 ], [ %call1420, %sw.bb1415 ], [ %call1414, %sw.bb1410 ], [ %call1409, %sw.bb1406 ], [ %call1443, %sw.bb1438 ], [ %call1437, %sw.bb1433 ], [ %call1432, %sw.bb1429 ], [ %call1466, %sw.bb1461 ], [ %call1460, %sw.bb1456 ], [ %call1455, %sw.bb1452 ], [ %call1489, %sw.bb1484 ], [ %call1483, %sw.bb1479 ], [ %call1478, %sw.bb1475 ], [ %call1509, %sw.bb1505 ], [ %call1504, %sw.bb1501 ], [ %call1500, %sw.bb1498 ], [ %call1529, %sw.bb1525 ], [ %call1524, %sw.bb1521 ], [ %call1520, %sw.bb1518 ], [ %call1549, %sw.bb1545 ], [ %call1544, %sw.bb1541 ], [ %call1540, %sw.bb1538 ], [ %call1569, %sw.bb1565 ], [ %call1564, %sw.bb1561 ], [ %call1560, %sw.bb1558 ], [ %call1592, %sw.bb1587 ], [ %call1586, %sw.bb1582 ], [ %call1581, %sw.bb1578 ], [ %call1615, %sw.bb1610 ], [ %call1609, %sw.bb1605 ], [ %call1604, %sw.bb1601 ], [ %call1635, %sw.bb1631 ], [ %call1630, %sw.bb1627 ], [ %call1626, %sw.bb1624 ], [ %call1655, %sw.bb1651 ], [ %call1650, %sw.bb1647 ], [ %call1646, %sw.bb1644 ], [ %call1675, %sw.bb1671 ], [ %call1670, %sw.bb1667 ], [ %call1666, %sw.bb1664 ], [ %call1695, %sw.bb1691 ], [ %call1690, %sw.bb1687 ], [ %call1686, %sw.bb1684 ], [ %call1715, %sw.bb1711 ], [ %call1710, %sw.bb1707 ], [ %call1706, %sw.bb1704 ], [ %call1735, %sw.bb1731 ], [ %call1730, %sw.bb1727 ], [ %call1726, %sw.bb1724 ], [ %call1755, %sw.bb1751 ], [ %call1750, %sw.bb1747 ], [ %call1746, %sw.bb1744 ], [ %call1775, %sw.bb1771 ], [ %call1770, %sw.bb1767 ], [ %call1766, %sw.bb1764 ], [ %call1795, %sw.bb1791 ], [ %call1790, %sw.bb1787 ], [ %call1786, %sw.bb1784 ], [ %call1815, %sw.bb1811 ], [ %call1810, %sw.bb1807 ], [ %call1806, %sw.bb1804 ], [ %call1835, %sw.bb1831 ], [ %call1830, %sw.bb1827 ], [ %call1826, %sw.bb1824 ], [ %call1855, %sw.bb1851 ], [ %call1850, %sw.bb1847 ], [ %call1846, %sw.bb1844 ], [ %call1875, %sw.bb1871 ], [ %call1870, %sw.bb1867 ], [ %call1866, %sw.bb1864 ]
  %312 = load i32, ptr %count1188, align 4, !tbaa !9
  %cmp1880 = icmp sgt i32 %312, -1
  br i1 %cmp1880, label %if.then1882, label %if.else1899

if.then1882:                                      ; preds = %sw.epilog1879
  %conv1883 = zext nneg i32 %312 to i64
  %cmp1884 = icmp ugt i64 %spec.store.select2225, %conv1883
  br i1 %cmp1884, label %land.lhs.true1886, label %if.end1894

land.lhs.true1886:                                ; preds = %if.then1882
  %add.ptr1887 = getelementptr inbounds i8, ptr %result.33, i64 %length.2
  %arrayidx1889 = getelementptr inbounds i8, ptr %add.ptr1887, i64 %conv1883
  %313 = load i8, ptr %arrayidx1889, align 1, !tbaa !14
  %cmp1891.not = icmp eq i8 %313, 0
  br i1 %cmp1891.not, label %if.end1894, label %if.then1893

if.then1893:                                      ; preds = %land.lhs.true1886
  call void @abort() #43
  unreachable

if.end1894:                                       ; preds = %land.lhs.true1886, %if.then1882
  %cmp1895 = icmp sgt i32 %retcount.33, %312
  br i1 %cmp1895, label %if.then1897, label %if.end1936

if.then1897:                                      ; preds = %if.end1894
  store i32 %retcount.33, ptr %count1188, align 4, !tbaa !9
  br label %if.end1936

if.else1899:                                      ; preds = %sw.epilog1879
  %314 = load i8, ptr %arrayidx1086, align 1, !tbaa !14
  %cmp1902.not = icmp eq i8 %314, 0
  br i1 %cmp1902.not, label %if.else1906, label %if.then1904

if.then1904:                                      ; preds = %if.else1899
  store i8 0, ptr %arrayidx1086, align 1, !tbaa !14
  br label %cleanup2021

if.else1906:                                      ; preds = %if.else1899
  %cmp1907 = icmp slt i32 %retcount.33, 0
  br i1 %cmp1907, label %if.then1916, label %if.else1910

if.else1910:                                      ; preds = %if.else1906
  store i32 %retcount.33, ptr %count1188, align 4, !tbaa !9
  br label %if.end1936

if.then1916:                                      ; preds = %if.else1906
  %315 = load i32, ptr %call1186, align 4, !tbaa !9
  %cmp1918 = icmp eq i32 %315, 0
  br i1 %cmp1918, label %if.then1920, label %cleanup2027.thread3553

if.then1920:                                      ; preds = %if.then1916
  %316 = load i8, ptr %conversion, align 8, !tbaa !95
  %317 = add i8 %316, -99
  %switch.and = and i8 %317, -17
  %switch.selectcmp = icmp eq i8 %switch.and, 0
  %318 = select i1 %switch.selectcmp, i32 84, i32 22
  store i32 %318, ptr %call1186, align 4, !tbaa !9
  br label %cleanup2027.thread3553

if.end1936:                                       ; preds = %if.else1910, %if.then1897, %if.end1894
  %319 = phi i32 [ %retcount.33, %if.else1910 ], [ %retcount.33, %if.then1897 ], [ %312, %if.end1894 ]
  %add1937 = add nuw i32 %319, 1
  %conv1938 = zext i32 %add1937 to i64
  %cmp1939.not = icmp ugt i64 %spec.store.select2225, %conv1938
  br i1 %cmp1939.not, label %cleanup2027.thread3542, label %if.then1941

if.then1941:                                      ; preds = %if.end1936
  %cmp1942 = icmp ugt i64 %sub1189, 2147483646
  br i1 %cmp1942, label %cleanup2027, label %if.else1945

if.else1945:                                      ; preds = %if.then1941
  %add1947 = add nuw i32 %319, 2
  %conv1948 = zext i32 %add1947 to i64
  %cond.i3379 = call i64 @llvm.uadd.sat.i64(i64 %length.2, i64 %conv1948)
  %cmp1952 = icmp sgt i64 %allocated.33, -1
  %mul1955 = shl i64 %allocated.33, 1
  %cond1958 = select i1 %cmp1952, i64 %mul1955, i64 -1
  %cond.i3380 = call i64 @llvm.umax.i64(i64 %cond.i3379, i64 %cond1958)
  %cmp1960 = icmp ugt i64 %cond.i3380, %allocated.33
  br i1 %cmp1960, label %if.then1962, label %cleanup2021

if.then1962:                                      ; preds = %if.else1945
  %cmp1965.not = icmp eq i64 %allocated.33, 0
  %spec.select3319 = select i1 %cmp1965.not, i64 12, i64 %cond1958
  %allocated.34 = call i64 @llvm.umax.i64(i64 %cond.i3380, i64 %spec.select3319)
  %cmp1989 = icmp eq i64 %allocated.34, -1
  br i1 %cmp1989, label %cleanup2027.thread3557, label %if.end1992

if.end1992:                                       ; preds = %if.then1962
  %cmp1993 = icmp eq ptr %result.33, %resultbuf
  br i1 %cmp1993, label %if.then1995, label %if.else1997

if.then1995:                                      ; preds = %if.end1992
  %call1996 = call noalias ptr @malloc(i64 noundef %allocated.34) #48
  br label %if.end1999

if.else1997:                                      ; preds = %if.end1992
  %call.i3382 = call ptr @realloc(ptr noundef %result.33, i64 noundef %allocated.34) #47
  br label %if.end1999

if.end1999:                                       ; preds = %if.else1997, %if.then1995
  %memory1964.0 = phi ptr [ %call1996, %if.then1995 ], [ %call.i3382, %if.else1997 ]
  %cmp2000 = icmp eq ptr %memory1964.0, null
  br i1 %cmp2000, label %cleanup2027.thread3557, label %if.end2003

if.end2003:                                       ; preds = %if.end1999
  %or.cond2226 = select i1 %cmp1993, i1 %cmp2007, i1 false
  br i1 %or.cond2226, label %if.then2009, label %cleanup2021

if.then2009:                                      ; preds = %if.end2003
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %memory1964.0, ptr noundef nonnull align 1 %resultbuf, i64 noundef %length.2, i1 noundef false) #41
  br label %cleanup2021

cleanup2021:                                      ; preds = %if.then2009, %if.end2003, %if.else1945, %if.then1904
  %allocated.37 = phi i64 [ %allocated.33, %if.then1904 ], [ %allocated.33, %if.else1945 ], [ %allocated.34, %if.end2003 ], [ %allocated.34, %if.then2009 ]
  %result.37 = phi ptr [ %result.33, %if.then1904 ], [ %result.33, %if.else1945 ], [ %memory1964.0, %if.end2003 ], [ %memory1964.0, %if.then2009 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %count1188) #41
  br label %for.cond1187

cleanup2027.thread3542:                           ; preds = %if.end1936
  %conv2019 = zext nneg i32 %319 to i64
  %add2020 = add i64 %length.2, %conv2019
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %count1188) #41
  store i32 %113, ptr %call1186, align 4, !tbaa !9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %prefixes) #41
  br label %for.inc

cleanup2027.thread:                               ; preds = %if.end1167, %if.then1128
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %prefixes) #41
  br label %out_of_memory

cleanup2027.thread3553:                           ; preds = %if.then1920, %if.then1916
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %count1188) #41
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %prefixes) #41
  br label %fail_with_errno

cleanup2027.thread3557:                           ; preds = %if.end1999, %if.then1962
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %count1188) #41
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %prefixes) #41
  br label %out_of_memory

cleanup2027:                                      ; preds = %if.then1941
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %count1188) #41
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %prefixes) #41
  br label %overflow

for.inc:                                          ; preds = %cleanup2027.thread3542, %cleanup943.thread3911, %if.end861, %if.then364, %if.end355, %cleanup147
  %length.23 = phi i64 [ %cond.i3344, %cleanup147 ], [ %add2020, %cleanup2027.thread3542 ], [ %add358, %if.end355 ], [ %add369, %if.then364 ], [ %length.15, %if.end861 ], [ %add932, %cleanup943.thread3911 ]
  %allocated.39 = phi i64 [ %allocated.6, %cleanup147 ], [ %allocated.33, %cleanup2027.thread3542 ], [ %allocated.9, %if.end355 ], [ %allocated.9, %if.then364 ], [ %allocated.24, %if.end861 ], [ %allocated.26, %cleanup943.thread3911 ]
  %result.39 = phi ptr [ %result.6, %cleanup147 ], [ %result.33, %cleanup2027.thread3542 ], [ %result.9, %if.end355 ], [ %result.9, %if.then364 ], [ %result.24, %if.end861 ], [ %result.26, %cleanup943.thread3911 ]
  %dir_end = getelementptr inbounds %struct.char_directive, ptr %dp.0, i64 0, i32 1
  %320 = load ptr, ptr %dir_end, align 8, !tbaa !96
  %inc2039 = add i64 %i.0, 1
  %incdec.ptr2040 = getelementptr inbounds %struct.char_directive, ptr %dp.0, i64 1
  br label %for.cond

for.end2041:                                      ; preds = %if.end76
  %cond.i3383 = call i64 @llvm.uadd.sat.i64(i64 %length.2, i64 1)
  %cmp2043 = icmp ugt i64 %cond.i3383, %allocated.4
  br i1 %cmp2043, label %if.then2045, label %if.end2101

if.then2045:                                      ; preds = %for.end2041
  %cmp2048.not = icmp eq i64 %allocated.4, 0
  %cmp2051 = icmp sgt i64 %allocated.4, -1
  %mul2054 = shl i64 %allocated.4, 1
  %cond2057 = select i1 %cmp2051, i64 %mul2054, i64 -1
  %cond2060 = select i1 %cmp2048.not, i64 12, i64 %cond2057
  %allocated.40 = call i64 @llvm.umax.i64(i64 %cond.i3383, i64 %cond2060)
  %cmp2074 = icmp eq i64 %allocated.40, -1
  br i1 %cmp2074, label %out_of_memory, label %if.end2077

if.end2077:                                       ; preds = %if.then2045
  %cmp2078 = icmp eq ptr %result.4, %resultbuf
  br i1 %cmp2078, label %if.then2080, label %if.else2082

if.then2080:                                      ; preds = %if.end2077
  %call2081 = call noalias ptr @malloc(i64 noundef %allocated.40) #48
  br label %if.end2084

if.else2082:                                      ; preds = %if.end2077
  %call.i3386 = call ptr @realloc(ptr noundef %result.4, i64 noundef %allocated.40) #47
  br label %if.end2084

if.end2084:                                       ; preds = %if.else2082, %if.then2080
  %memory2047.0 = phi ptr [ %call2081, %if.then2080 ], [ %call.i3386, %if.else2082 ]
  %cmp2085 = icmp eq ptr %memory2047.0, null
  br i1 %cmp2085, label %out_of_memory, label %if.end2088

if.end2088:                                       ; preds = %if.end2084
  %cmp2092 = icmp ne i64 %length.2, 0
  %or.cond2227 = select i1 %cmp2078, i1 %cmp2092, i1 false
  br i1 %or.cond2227, label %if.then2094, label %if.end2101

if.then2094:                                      ; preds = %if.end2088
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %memory2047.0, ptr noundef nonnull align 1 %resultbuf, i64 noundef %length.2, i1 noundef false) #41
  br label %if.end2101

if.end2101:                                       ; preds = %if.then2094, %if.end2088, %for.end2041
  %allocated.41 = phi i64 [ %allocated.4, %for.end2041 ], [ %allocated.40, %if.then2094 ], [ %allocated.40, %if.end2088 ]
  %result.41 = phi ptr [ %result.4, %for.end2041 ], [ %memory2047.0, %if.then2094 ], [ %memory2047.0, %if.end2088 ]
  %arrayidx2102 = getelementptr inbounds i8, ptr %result.41, i64 %length.2
  store i8 0, ptr %arrayidx2102, align 1, !tbaa !14
  %cmp2103.not = icmp eq ptr %result.41, %resultbuf
  br i1 %cmp2103.not, label %if.end2118, label %land.lhs.true2105

land.lhs.true2105:                                ; preds = %if.end2101
  %add2106 = add i64 %length.2, 1
  %cmp2107 = icmp ult i64 %add2106, %allocated.41
  br i1 %cmp2107, label %if.then2109, label %if.end2118

if.then2109:                                      ; preds = %land.lhs.true2105
  %cond.i3387 = call i64 @llvm.umax.i64(i64 %add2106, i64 1)
  %call.i3388 = call ptr @realloc(ptr noundef nonnull %result.41, i64 noundef %cond.i3387) #47
  %cmp2114.not = icmp eq ptr %call.i3388, null
  %spec.select3320 = select i1 %cmp2114.not, ptr %result.41, ptr %call.i3388
  br label %if.end2118

if.end2118:                                       ; preds = %if.then2109, %land.lhs.true2105, %if.end2101
  %result.43 = phi ptr [ %spec.select3320, %if.then2109 ], [ %result.41, %land.lhs.true2105 ], [ %resultbuf, %if.end2101 ]
  %cmp2119.not = icmp eq ptr %buf_malloced.1, null
  br i1 %cmp2119.not, label %if.end2122, label %if.then2121

if.then2121:                                      ; preds = %if.end2118
  call void @free(ptr noundef nonnull %buf_malloced.1) #41
  br label %if.end2122

if.end2122:                                       ; preds = %if.then2121, %if.end2118
  %321 = load ptr, ptr %dir, align 8, !tbaa !74
  %direct_alloc_dir = getelementptr inbounds %struct.char_directives, ptr %d, i64 0, i32 4
  %cmp2125.not = icmp eq ptr %321, %direct_alloc_dir
  br i1 %cmp2125.not, label %if.end2129, label %if.then2127

if.then2127:                                      ; preds = %if.end2122
  call void @free(ptr noundef %321) #41
  br label %if.end2129

if.end2129:                                       ; preds = %if.then2127, %if.end2122
  %322 = load ptr, ptr %arg, align 8, !tbaa !67
  %direct_alloc_arg = getelementptr inbounds %struct.arguments, ptr %a, i64 0, i32 2
  %cmp2132.not = icmp eq ptr %322, %direct_alloc_arg
  br i1 %cmp2132.not, label %if.end2136, label %if.then2134

if.then2134:                                      ; preds = %if.end2129
  call void @free(ptr noundef %322) #41
  br label %if.end2136

if.end2136:                                       ; preds = %if.then2134, %if.end2129
  store i64 %length.2, ptr %lengthp, align 8, !tbaa !28
  br label %cleanup2192

overflow:                                         ; preds = %cleanup2027, %cleanup2027.thread3547, %if.end455, %if.end213
  %result.44 = phi ptr [ %result.33, %cleanup2027 ], [ %result.4, %cleanup2027.thread3547 ], [ %result.4, %if.end213 ], [ %result.4, %if.end455 ]
  %call2137 = tail call ptr @__errno_location() #46
  store i32 75, ptr %call2137, align 4, !tbaa !9
  br label %fail_with_errno

out_of_memory:                                    ; preds = %if.end2084, %if.then2045, %cleanup2027.thread3557, %cleanup2027.thread, %cleanup943.thread3917, %if.end912, %if.then873, %cleanup760.thread, %if.end641, %if.then602, %if.end327, %if.then288, %if.end128, %if.then91, %if.end57, %if.then28
  %result.45 = phi ptr [ %result.4, %cleanup2027.thread ], [ %result.33, %cleanup2027.thread3557 ], [ %result.4, %if.then2045 ], [ %result.4, %if.end2084 ], [ %result.15, %cleanup760.thread ], [ %result.193748, %cleanup943.thread3917 ], [ %result.24, %if.then873 ], [ %result.24, %if.end912 ], [ %result.4, %if.end641 ], [ %result.4, %if.then602 ], [ %result.4, %if.end327 ], [ %result.4, %if.then288 ], [ %result.4, %if.end128 ], [ %result.4, %if.then91 ], [ %result.0, %if.end57 ], [ %result.0, %if.then28 ]
  %call2138 = tail call ptr @__errno_location() #46
  store i32 12, ptr %call2138, align 4, !tbaa !9
  br label %fail_with_errno

fail_with_EILSEQ.loopexit:                        ; preds = %if.end775
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %cbuf770) #41
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %state765) #41
  br label %fail_with_EILSEQ

fail_with_EILSEQ:                                 ; preds = %fail_with_EILSEQ.loopexit, %cleanup579, %cleanup551
  %result.303504 = phi ptr [ %result.4, %cleanup551 ], [ %result.4, %cleanup579 ], [ %result.193748, %fail_with_EILSEQ.loopexit ]
  %call2139 = tail call ptr @__errno_location() #46
  store i32 84, ptr %call2139, align 4, !tbaa !9
  br label %fail_with_errno

fail_with_errno:                                  ; preds = %fail_with_EILSEQ, %out_of_memory, %overflow, %cleanup2027.thread3553
  %result.46 = phi ptr [ %result.45, %out_of_memory ], [ %result.44, %overflow ], [ %result.303504, %fail_with_EILSEQ ], [ %result.33, %cleanup2027.thread3553 ]
  %cmp2140.not = icmp eq ptr %result.46, %resultbuf
  br i1 %cmp2140.not, label %if.end2143, label %if.then2142

if.then2142:                                      ; preds = %fail_with_errno
  call void @free(ptr noundef %result.46) #41
  br label %if.end2143

if.end2143:                                       ; preds = %if.then2142, %fail_with_errno
  %cmp2144.not = icmp eq ptr %buf_malloced.1, null
  br i1 %cmp2144.not, label %if.end2147, label %if.then2146

if.then2146:                                      ; preds = %if.end2143
  call void @free(ptr noundef nonnull %buf_malloced.1) #41
  br label %if.end2147

if.end2147:                                       ; preds = %if.then2146, %if.end2143
  %323 = load ptr, ptr %dir, align 8, !tbaa !74
  %direct_alloc_dir2149 = getelementptr inbounds %struct.char_directives, ptr %d, i64 0, i32 4
  %cmp2151.not = icmp eq ptr %323, %direct_alloc_dir2149
  br i1 %cmp2151.not, label %if.end2155, label %if.then2153

if.then2153:                                      ; preds = %if.end2147
  call void @free(ptr noundef %323) #41
  br label %if.end2155

if.end2155:                                       ; preds = %if.then2153, %if.end2147
  %324 = load ptr, ptr %arg, align 8, !tbaa !67
  %direct_alloc_arg2157 = getelementptr inbounds %struct.arguments, ptr %a, i64 0, i32 2
  %cmp2159.not = icmp eq ptr %324, %direct_alloc_arg2157
  br i1 %cmp2159.not, label %cleanup2192, label %if.then2161

if.then2161:                                      ; preds = %if.end2155
  call void @free(ptr noundef %324) #41
  br label %cleanup2192

fail_1_with_errno:                                ; preds = %cleanup, %if.else, %if.end
  %.sink4064 = phi i32 [ 12, %cleanup ], [ 12, %if.else ], [ 22, %if.end ]
  %call2175 = tail call ptr @__errno_location() #46
  store i32 %.sink4064, ptr %call2175, align 4, !tbaa !9
  %dir2176 = getelementptr inbounds %struct.char_directives, ptr %d, i64 0, i32 1
  %325 = load ptr, ptr %dir2176, align 8, !tbaa !74
  %direct_alloc_dir2177 = getelementptr inbounds %struct.char_directives, ptr %d, i64 0, i32 4
  %cmp2179.not = icmp eq ptr %325, %direct_alloc_dir2177
  br i1 %cmp2179.not, label %if.end2183, label %if.then2181

if.then2181:                                      ; preds = %fail_1_with_errno
  call void @free(ptr noundef %325) #41
  br label %if.end2183

if.end2183:                                       ; preds = %if.then2181, %fail_1_with_errno
  %arg2184 = getelementptr inbounds %struct.arguments, ptr %a, i64 0, i32 1
  %326 = load ptr, ptr %arg2184, align 8, !tbaa !67
  %direct_alloc_arg2185 = getelementptr inbounds %struct.arguments, ptr %a, i64 0, i32 2
  %cmp2187.not = icmp eq ptr %326, %direct_alloc_arg2185
  br i1 %cmp2187.not, label %cleanup2192, label %if.then2189

if.then2189:                                      ; preds = %if.end2183
  call void @free(ptr noundef %326) #41
  br label %cleanup2192

cleanup2192:                                      ; preds = %if.then2189, %if.end2183, %if.then2161, %if.end2155, %if.end2136, %entry
  %retval.1 = phi ptr [ null, %entry ], [ null, %if.then2189 ], [ null, %if.end2183 ], [ null, %if.end2155 ], [ null, %if.then2161 ], [ %result.43, %if.end2136 ]
  call void @llvm.lifetime.end.p0(i64 240, ptr nonnull %a) #41
  call void @llvm.lifetime.end.p0(i64 648, ptr nonnull %d) #41
  ret ptr %retval.1
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #23

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i64 @strnlen(ptr nocapture noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #23

; Function Attrs: nounwind
declare i64 @wcrtomb(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i64 @wcslen(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #23

; Function Attrs: nofree nounwind
declare noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i64 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local i64 @vfzprintf(ptr noundef nonnull %fp, ptr noundef nonnull %format, ptr noundef %args) local_unnamed_addr #6 {
entry:
  %buf = alloca [2000 x i8], align 16
  %lenbuf = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 2000, ptr nonnull %buf) #41
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %lenbuf) #41
  store i64 2000, ptr %lenbuf, align 8, !tbaa !28
  %call = call ptr @vasnprintf(ptr noundef nonnull %buf, ptr noundef nonnull %lenbuf, ptr noundef nonnull %format, ptr noundef %args) #41
  %0 = load i64, ptr %lenbuf, align 8, !tbaa !28
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @fseterr(ptr noundef nonnull %fp) #41
  br label %cleanup

if.end:                                           ; preds = %entry
  %cmp = icmp slt i64 %0, 0
  br i1 %cmp, label %if.then1, label %if.end7

if.then1:                                         ; preds = %if.end
  %cmp3.not = icmp eq ptr %call, %buf
  br i1 %cmp3.not, label %if.end5, label %if.then4

if.then4:                                         ; preds = %if.then1
  call void @free(ptr noundef nonnull %call) #41
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %if.then1
  call void @fseterr(ptr noundef nonnull %fp) #41
  %call6 = tail call ptr @__errno_location() #46
  store i32 12, ptr %call6, align 4, !tbaa !9
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %call8 = call i64 @fwrite(ptr noundef nonnull %call, i64 noundef 1, i64 noundef %0, ptr noundef nonnull %fp)
  %cmp9 = icmp ult i64 %call8, %0
  %cmp12.not = icmp eq ptr %call, %buf
  br i1 %cmp9, label %if.then10, label %if.end15

if.then10:                                        ; preds = %if.end7
  br i1 %cmp12.not, label %cleanup, label %if.then13

if.then13:                                        ; preds = %if.then10
  call void @free(ptr noundef nonnull %call) #41
  br label %cleanup

if.end15:                                         ; preds = %if.end7
  br i1 %cmp12.not, label %cleanup, label %if.then18

if.then18:                                        ; preds = %if.end15
  call void @free(ptr noundef nonnull %call) #41
  br label %cleanup

cleanup:                                          ; preds = %if.then18, %if.end15, %if.then13, %if.then10, %if.end5, %if.then
  %retval.0 = phi i64 [ -1, %if.end5 ], [ -1, %if.then ], [ -1, %if.then13 ], [ -1, %if.then10 ], [ %0, %if.then18 ], [ %0, %if.end15 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %lenbuf) #41
  call void @llvm.lifetime.end.p0(i64 2000, ptr nonnull %buf) #41
  ret i64 %retval.0
}

; Function Attrs: inlinehint nounwind allocsize(1,2) uwtable
define dso_local ptr @xnrealloc(ptr noundef %p, i64 noundef %n, i64 noundef %s) local_unnamed_addr #28 {
entry:
  %call.i = tail call ptr @rpl_reallocarray(ptr noundef %p, i64 noundef %n, i64 noundef %s) #41
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.then.i, label %xreallocarray.exit

if.then.i:                                        ; preds = %entry
  tail call void @xalloc_die() #43
  unreachable

xreallocarray.exit:                               ; preds = %entry
  ret ptr %call.i
}

declare ptr @rpl_reallocarray(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind allocsize(1,2) uwtable
define dso_local ptr @xreallocarray(ptr noundef %p, i64 noundef %n, i64 noundef %s) local_unnamed_addr #29 {
entry:
  %call = tail call ptr @rpl_reallocarray(ptr noundef %p, i64 noundef %n, i64 noundef %s) #41
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @xalloc_die() #43
  unreachable

if.end:                                           ; preds = %entry
  ret ptr %call
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @xmalloc(i64 noundef %s) local_unnamed_addr #30 {
entry:
  %call = tail call noalias ptr @malloc(i64 noundef %s) #48
  %tobool.not.i = icmp eq ptr %call, null
  br i1 %tobool.not.i, label %if.then.i, label %check_nonnull.exit

if.then.i:                                        ; preds = %entry
  tail call void @xalloc_die() #43
  unreachable

check_nonnull.exit:                               ; preds = %entry
  ret ptr %call
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @ximalloc(i64 noundef %s) local_unnamed_addr #30 {
entry:
  %call.i = tail call noalias ptr @malloc(i64 noundef %s) #48
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.then.i, label %check_nonnull.exit

if.then.i:                                        ; preds = %entry
  tail call void @xalloc_die() #43
  unreachable

check_nonnull.exit:                               ; preds = %entry
  ret ptr %call.i
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @xcharalloc(i64 noundef %n) local_unnamed_addr #30 {
entry:
  %call.i = tail call noalias ptr @malloc(i64 noundef %n) #48
  %tobool.not.i.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i.i, label %if.then.i.i, label %xmalloc.exit

if.then.i.i:                                      ; preds = %entry
  tail call void @xalloc_die() #43
  unreachable

xmalloc.exit:                                     ; preds = %entry
  ret ptr %call.i
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias noundef ptr @xrealloc(ptr nocapture noundef %p, i64 noundef %s) local_unnamed_addr #31 {
entry:
  %cond.i = tail call i64 @llvm.umax.i64(i64 %s, i64 1)
  %call.i = tail call ptr @realloc(ptr noundef %p, i64 noundef %cond.i) #47
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @xalloc_die() #43
  unreachable

if.end:                                           ; preds = %entry
  ret ptr %call.i
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias noundef nonnull ptr @xirealloc(ptr nocapture noundef %p, i64 noundef %s) local_unnamed_addr #31 {
entry:
  %cond.i.i = tail call i64 @llvm.umax.i64(i64 %s, i64 1)
  %call.i.i = tail call ptr @realloc(ptr noundef %p, i64 noundef %cond.i.i) #47
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %if.then.i, label %check_nonnull.exit

if.then.i:                                        ; preds = %entry
  tail call void @xalloc_die() #43
  unreachable

check_nonnull.exit:                               ; preds = %entry
  ret ptr %call.i.i
}

; Function Attrs: nounwind allocsize(1,2) uwtable
define dso_local nonnull ptr @xireallocarray(ptr noundef %p, i64 noundef %n, i64 noundef %s) local_unnamed_addr #29 {
entry:
  %call.i = tail call ptr @rpl_reallocarray(ptr noundef %p, i64 noundef %n, i64 noundef %s) #41
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.then.i, label %check_nonnull.exit

if.then.i:                                        ; preds = %entry
  tail call void @xalloc_die() #43
  unreachable

check_nonnull.exit:                               ; preds = %entry
  ret ptr %call.i
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xnmalloc(i64 noundef %n, i64 noundef %s) local_unnamed_addr #32 {
entry:
  %call.i = tail call ptr @rpl_reallocarray(ptr noundef null, i64 noundef %n, i64 noundef %s) #41
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.then.i, label %xreallocarray.exit

if.then.i:                                        ; preds = %entry
  tail call void @xalloc_die() #43
  unreachable

xreallocarray.exit:                               ; preds = %entry
  ret ptr %call.i
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xinmalloc(i64 noundef %n, i64 noundef %s) local_unnamed_addr #32 {
entry:
  %call.i.i = tail call ptr @rpl_reallocarray(ptr noundef null, i64 noundef %n, i64 noundef %s) #41
  %tobool.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i, label %if.then.i.i, label %xireallocarray.exit

if.then.i.i:                                      ; preds = %entry
  tail call void @xalloc_die() #43
  unreachable

xireallocarray.exit:                              ; preds = %entry
  ret ptr %call.i.i
}

; Function Attrs: nounwind uwtable
define dso_local nonnull ptr @x2realloc(ptr noundef %p, ptr nocapture noundef %ps) local_unnamed_addr #6 {
entry:
  %0 = load i64, ptr %ps, align 8, !tbaa !28
  %tobool.not.i = icmp eq ptr %p, null
  br i1 %tobool.not.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %entry
  %tobool1.not.i = icmp eq i64 %0, 0
  %spec.select = select i1 %tobool1.not.i, i64 128, i64 %0
  br label %if.end7.i

if.else.i:                                        ; preds = %entry
  %shr.i = lshr i64 %0, 1
  %add4.i = add nuw i64 %shr.i, 1
  %1 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %0, i64 %add4.i)
  %2 = extractvalue { i64, i1 } %1, 1
  %3 = extractvalue { i64, i1 } %1, 0
  br i1 %2, label %if.then5.i, label %if.end7.i

if.then5.i:                                       ; preds = %if.else.i
  tail call void @xalloc_die() #43
  unreachable

if.end7.i:                                        ; preds = %if.else.i, %if.then.i
  %n.0.i = phi i64 [ %3, %if.else.i ], [ %spec.select, %if.then.i ]
  %call.i.i = tail call ptr @rpl_reallocarray(ptr noundef %p, i64 noundef %n.0.i, i64 noundef 1) #41
  %tobool.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i, label %if.then.i.i, label %x2nrealloc.exit

if.then.i.i:                                      ; preds = %if.end7.i
  tail call void @xalloc_die() #43
  unreachable

x2nrealloc.exit:                                  ; preds = %if.end7.i
  store i64 %n.0.i, ptr %ps, align 8, !tbaa !28
  ret ptr %call.i.i
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #23

; Function Attrs: nounwind uwtable
define dso_local nonnull ptr @x2nrealloc(ptr noundef %p, ptr nocapture noundef %pn, i64 noundef %s) local_unnamed_addr #6 {
entry:
  %0 = load i64, ptr %pn, align 8, !tbaa !28
  %tobool.not = icmp eq ptr %p, null
  br i1 %tobool.not, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %tobool1.not = icmp eq i64 %0, 0
  br i1 %tobool1.not, label %if.then2, label %if.end7

if.then2:                                         ; preds = %if.then
  %div = udiv i64 128, %s
  %tobool3.not = icmp ugt i64 %s, 128
  %conv = zext i1 %tobool3.not to i64
  %add = add nuw nsw i64 %div, %conv
  br label %if.end7

if.else:                                          ; preds = %entry
  %shr = lshr i64 %0, 1
  %add4 = add nuw i64 %shr, 1
  %1 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %0, i64 %add4)
  %2 = extractvalue { i64, i1 } %1, 1
  %3 = extractvalue { i64, i1 } %1, 0
  br i1 %2, label %if.then5, label %if.end7

if.then5:                                         ; preds = %if.else
  tail call void @xalloc_die() #43
  unreachable

if.end7:                                          ; preds = %if.else, %if.then2, %if.then
  %n.0 = phi i64 [ %3, %if.else ], [ %0, %if.then ], [ %add, %if.then2 ]
  %call.i = tail call ptr @rpl_reallocarray(ptr noundef %p, i64 noundef %n.0, i64 noundef %s) #41
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.then.i, label %xreallocarray.exit

if.then.i:                                        ; preds = %if.end7
  tail call void @xalloc_die() #43
  unreachable

xreallocarray.exit:                               ; preds = %if.end7
  store i64 %n.0, ptr %pn, align 8, !tbaa !28
  ret ptr %call.i
}

; Function Attrs: nounwind uwtable
define dso_local noalias noundef nonnull ptr @xpalloc(ptr noundef %pa, ptr nocapture noundef %pn, i64 noundef %n_incr_min, i64 noundef %n_max, i64 noundef %s) local_unnamed_addr #6 {
entry:
  %0 = load i64, ptr %pn, align 8, !tbaa !28
  %shr = ashr i64 %0, 1
  %1 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %0, i64 %shr)
  %2 = extractvalue { i64, i1 } %1, 1
  %3 = extractvalue { i64, i1 } %1, 0
  %spec.store.select = select i1 %2, i64 9223372036854775807, i64 %3
  %cmp = icmp sgt i64 %n_max, -1
  %4 = tail call i64 @llvm.smin.i64(i64 %spec.store.select, i64 %n_max)
  %n.0 = select i1 %cmp, i64 %4, i64 %spec.store.select
  %5 = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %n.0, i64 %s)
  %6 = extractvalue { i64, i1 } %5, 1
  %7 = extractvalue { i64, i1 } %5, 0
  %cmp4 = icmp slt i64 %7, 128
  %conv = select i1 %cmp4, i64 128, i64 0
  %cond5 = select i1 %6, i64 9223372036854775807, i64 %conv
  %tobool.not = icmp eq i64 %cond5, 0
  br i1 %tobool.not, label %if.end7, label %if.then6

if.then6:                                         ; preds = %entry
  %div = sdiv i64 %cond5, %s
  %rem = srem i64 %cond5, %s
  %sub = sub nsw i64 %cond5, %rem
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %entry
  %n.1 = phi i64 [ %div, %if.then6 ], [ %n.0, %entry ]
  %nbytes.0 = phi i64 [ %sub, %if.then6 ], [ %7, %entry ]
  %tobool8.not = icmp eq ptr %pa, null
  br i1 %tobool8.not, label %if.then9, label %if.end10

if.then9:                                         ; preds = %if.end7
  store i64 0, ptr %pn, align 8, !tbaa !28
  br label %if.end10

if.end10:                                         ; preds = %if.then9, %if.end7
  %sub11 = sub nsw i64 %n.1, %0
  %cmp12 = icmp slt i64 %sub11, %n_incr_min
  br i1 %cmp12, label %land.lhs.true14, label %if.end24

land.lhs.true14:                                  ; preds = %if.end10
  %8 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %0, i64 %n_incr_min)
  %9 = extractvalue { i64, i1 } %8, 1
  %10 = extractvalue { i64, i1 } %8, 0
  %cmp19 = icmp sgt i64 %10, %n_max
  %or.cond49 = select i1 %cmp, i1 %cmp19, i1 false
  %or.cond50 = or i1 %9, %or.cond49
  br i1 %or.cond50, label %if.then23, label %lor.lhs.false21

lor.lhs.false21:                                  ; preds = %land.lhs.true14
  %11 = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %10, i64 %s)
  %12 = extractvalue { i64, i1 } %11, 1
  %13 = extractvalue { i64, i1 } %11, 0
  br i1 %12, label %if.then23, label %if.end24

if.then23:                                        ; preds = %lor.lhs.false21, %land.lhs.true14
  tail call void @xalloc_die() #43
  unreachable

if.end24:                                         ; preds = %lor.lhs.false21, %if.end10
  %n.2 = phi i64 [ %10, %lor.lhs.false21 ], [ %n.1, %if.end10 ]
  %nbytes.1 = phi i64 [ %13, %lor.lhs.false21 ], [ %nbytes.0, %if.end10 ]
  %cond.i.i = tail call i64 @llvm.umax.i64(i64 %nbytes.1, i64 1)
  %call.i.i = tail call ptr @realloc(ptr noundef %pa, i64 noundef %cond.i.i) #47
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %if.then.i, label %xrealloc.exit

if.then.i:                                        ; preds = %if.end24
  tail call void @xalloc_die() #43
  unreachable

xrealloc.exit:                                    ; preds = %if.end24
  store i64 %n.2, ptr %pn, align 8, !tbaa !28
  ret ptr %call.i.i
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.sadd.with.overflow.i64(i64, i64) #23

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #23

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.smul.with.overflow.i64(i64, i64) #23

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @xzalloc(i64 noundef %s) local_unnamed_addr #30 {
entry:
  %call.i = tail call noalias ptr @calloc(i64 noundef %s, i64 noundef 1) #50
  %tobool.not.i.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i.i, label %if.then.i.i, label %xcalloc.exit

if.then.i.i:                                      ; preds = %entry
  tail call void @xalloc_die() #43
  unreachable

xcalloc.exit:                                     ; preds = %entry
  ret ptr %call.i
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #33

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias noundef nonnull ptr @xcalloc(i64 noundef %n, i64 noundef %s) local_unnamed_addr #32 {
entry:
  %call = tail call noalias ptr @calloc(i64 noundef %n, i64 noundef %s) #50
  %tobool.not.i = icmp eq ptr %call, null
  br i1 %tobool.not.i, label %if.then.i, label %check_nonnull.exit

if.then.i:                                        ; preds = %entry
  tail call void @xalloc_die() #43
  unreachable

check_nonnull.exit:                               ; preds = %entry
  ret ptr %call
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @xizalloc(i64 noundef %s) local_unnamed_addr #30 {
entry:
  %call11.i.i = tail call noalias ptr @calloc(i64 noundef %s, i64 noundef 1) #50
  %tobool.not.i.i = icmp eq ptr %call11.i.i, null
  br i1 %tobool.not.i.i, label %if.then.i.i, label %xicalloc.exit

if.then.i.i:                                      ; preds = %entry
  tail call void @xalloc_die() #43
  unreachable

xicalloc.exit:                                    ; preds = %entry
  ret ptr %call11.i.i
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias noundef nonnull ptr @xicalloc(i64 noundef %n, i64 noundef %s) local_unnamed_addr #32 {
entry:
  %call11.i = tail call noalias ptr @calloc(i64 noundef %n, i64 noundef %s) #50
  %tobool.not.i = icmp eq ptr %call11.i, null
  br i1 %tobool.not.i, label %if.then.i, label %check_nonnull.exit

if.then.i:                                        ; preds = %entry
  tail call void @xalloc_die() #43
  unreachable

check_nonnull.exit:                               ; preds = %entry
  ret ptr %call11.i
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @xmemdup(ptr nocapture noundef readonly %p, i64 noundef %s) local_unnamed_addr #31 {
entry:
  %call.i3 = tail call noalias ptr @malloc(i64 noundef %s) #48
  %tobool.not.i.i = icmp eq ptr %call.i3, null
  br i1 %tobool.not.i.i, label %if.then.i.i, label %xmalloc.exit

if.then.i.i:                                      ; preds = %entry
  tail call void @xalloc_die() #43
  unreachable

xmalloc.exit:                                     ; preds = %entry
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %call.i3, ptr noundef nonnull align 1 %p, i64 noundef %s, i1 noundef false) #41
  ret ptr %call.i3
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @ximemdup(ptr nocapture noundef readonly %p, i64 noundef %s) local_unnamed_addr #31 {
entry:
  %call.i.i = tail call noalias ptr @malloc(i64 noundef %s) #48
  %tobool.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i, label %if.then.i.i, label %ximalloc.exit

if.then.i.i:                                      ; preds = %entry
  tail call void @xalloc_die() #43
  unreachable

ximalloc.exit:                                    ; preds = %entry
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %call.i.i, ptr noundef nonnull align 1 %p, i64 noundef %s, i1 noundef false) #41
  ret ptr %call.i.i
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @ximemdup0(ptr nocapture noundef readonly %p, i64 noundef %s) local_unnamed_addr #6 {
entry:
  %add = add nsw i64 %s, 1
  %call.i.i = tail call noalias ptr @malloc(i64 noundef %add) #48
  %tobool.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i, label %if.then.i.i, label %ximalloc.exit

if.then.i.i:                                      ; preds = %entry
  tail call void @xalloc_die() #43
  unreachable

ximalloc.exit:                                    ; preds = %entry
  %arrayidx = getelementptr inbounds i8, ptr %call.i.i, i64 %s
  store i8 0, ptr %arrayidx, align 1, !tbaa !14
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %call.i.i, ptr noundef nonnull align 1 %p, i64 noundef %s, i1 noundef false) #41
  ret ptr %call.i.i
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @xstrdup(ptr nocapture noundef readonly %string) local_unnamed_addr #6 {
entry:
  %call = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %string) #42
  %add = add i64 %call, 1
  %call.i3.i = tail call noalias ptr @malloc(i64 noundef %add) #48
  %tobool.not.i.i.i = icmp eq ptr %call.i3.i, null
  br i1 %tobool.not.i.i.i, label %if.then.i.i.i, label %xmemdup.exit

if.then.i.i.i:                                    ; preds = %entry
  tail call void @xalloc_die() #43
  unreachable

xmemdup.exit:                                     ; preds = %entry
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %call.i3.i, ptr noundef nonnull align 1 %string, i64 noundef %add, i1 noundef false) #41
  ret ptr %call.i3.i
}

; Function Attrs: noreturn nounwind uwtable
define dso_local void @xalloc_die() local_unnamed_addr #0 {
entry:
  %0 = load volatile i32, ptr @exit_failure, align 4, !tbaa !9
  %call = tail call ptr @dcgettext(ptr noundef nonnull @.str.1.113, ptr noundef nonnull @.str.2.114, i32 noundef 5) #41
  tail call void (i32, i32, ptr, ...) @error(i32 noundef %0, i32 noundef 0, ptr noundef nonnull @.str.115, ptr noundef %call) #45
  %cmp.not = icmp eq i32 %0, 0
  tail call void @llvm.assume(i1 %cmp.not)
  tail call void @abort() #43
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #34

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @yyparse(ptr noundef %pc) local_unnamed_addr #6 {
entry:
  %buff.i = alloca [20 x i8], align 16
  %yyssa = alloca [20 x i8], align 16
  %yyvsa = alloca [20 x %union.YYSTYPE], align 16
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %yyssa) #41
  call void @llvm.lifetime.start.p0(i64 1120, ptr nonnull %yyvsa) #41
  %invariant.gep = getelementptr i8, ptr %buff.i, i64 -1
  store i8 0, ptr %yyssa, align 16, !tbaa !14
  %arrayidx.i.i = getelementptr inbounds i8, ptr %buff.i, i64 3
  %0 = getelementptr i8, ptr %pc, i64 225
  %dates_seen.i1618 = getelementptr inbounds %struct.parser_control, ptr %pc, i64 0, i32 15
  %year.i1621 = getelementptr inbounds %struct.parser_control, ptr %pc, i64 0, i32 6
  %digits.i1622 = getelementptr inbounds %struct.parser_control, ptr %pc, i64 0, i32 6, i32 2
  %rels_seen.i1653 = getelementptr inbounds %struct.parser_control, ptr %pc, i64 0, i32 14
  %times_seen.i1656 = getelementptr inbounds %struct.parser_control, ptr %pc, i64 0, i32 20
  %year_seen.i1662 = getelementptr inbounds %struct.parser_control, ptr %pc, i64 0, i32 22
  %arrayidx7041617.sroa.4.0.year.i1621.sroa_idx = getelementptr inbounds %struct.parser_control, ptr %pc, i64 0, i32 6, i32 1
  %1 = getelementptr inbounds %struct.parser_control, ptr %pc, i64 0, i32 9
  %2 = getelementptr inbounds %struct.parser_control, ptr %pc, i64 0, i32 10
  %seconds.i1638 = getelementptr inbounds %struct.parser_control, ptr %pc, i64 0, i32 11
  %meridian.i1639 = getelementptr inbounds %struct.parser_control, ptr %pc, i64 0, i32 5
  %day.i1644 = getelementptr inbounds %struct.parser_control, ptr %pc, i64 0, i32 8
  %month.i1647 = getelementptr inbounds %struct.parser_control, ptr %pc, i64 0, i32 7
  %rel1.i1665 = getelementptr inbounds %struct.parser_control, ptr %pc, i64 0, i32 12
  %ns.i1666 = getelementptr inbounds %struct.parser_control, ptr %pc, i64 0, i32 12, i32 6
  %seconds.i1668 = getelementptr inbounds %struct.parser_control, ptr %pc, i64 0, i32 12, i32 5
  %minutes.i1670 = getelementptr inbounds %struct.parser_control, ptr %pc, i64 0, i32 12, i32 4
  %hour.i1672 = getelementptr inbounds %struct.parser_control, ptr %pc, i64 0, i32 12, i32 3
  %day68.i1678 = getelementptr inbounds %struct.parser_control, ptr %pc, i64 0, i32 12, i32 2
  %month75.i1681 = getelementptr inbounds %struct.parser_control, ptr %pc, i64 0, i32 12, i32 1
  %day_ordinal262 = getelementptr inbounds %struct.parser_control, ptr %pc, i64 0, i32 1
  %day_number265 = getelementptr inbounds %struct.parser_control, ptr %pc, i64 0, i32 2
  %debug_ordinal_day_seen266 = getelementptr inbounds %struct.parser_control, ptr %pc, i64 0, i32 30
  %time_zone244 = getelementptr inbounds %struct.parser_control, ptr %pc, i64 0, i32 4
  %local_isdst201 = getelementptr inbounds %struct.parser_control, ptr %pc, i64 0, i32 3
  %dsts_seen = getelementptr inbounds %struct.parser_control, ptr %pc, i64 0, i32 19
  %zones_seen190 = getelementptr inbounds %struct.parser_control, ptr %pc, i64 0, i32 21
  %.compoundliteral.sroa.2.0.seconds.sroa_idx.i1454 = getelementptr inbounds %struct.parser_control, ptr %pc, i64 0, i32 11, i32 1
  %days_seen = getelementptr inbounds %struct.parser_control, ptr %pc, i64 0, i32 16
  %J_zones_seen = getelementptr inbounds %struct.parser_control, ptr %pc, i64 0, i32 17
  %local_zones_seen = getelementptr inbounds %struct.parser_control, ptr %pc, i64 0, i32 18
  %timespec_seen = getelementptr inbounds %struct.parser_control, ptr %pc, i64 0, i32 13
  br label %if.end47

yynewstate:                                       ; preds = %cond.end747, %if.end97
  %yylval.sroa.0.sroa.7.sroa.0.0 = phi i56 [ %yylval.sroa.0.sroa.7.sroa.0.6, %cond.end747 ], [ %yylval.sroa.0.sroa.7.sroa.0.41723, %if.end97 ]
  %yylval.sroa.0.sroa.0.0 = phi i8 [ %yylval.sroa.0.sroa.0.6, %cond.end747 ], [ %yylval.sroa.0.sroa.0.41725, %if.end97 ]
  %yylval.sroa.9.0 = phi i64 [ %yylval.sroa.9.5, %cond.end747 ], [ %yylval.sroa.9.31727, %if.end97 ]
  %yylval.sroa.7.0 = phi i64 [ %yylval.sroa.7.5, %cond.end747 ], [ %yylval.sroa.7.31729, %if.end97 ]
  %yyvsp.0 = phi ptr [ %incdec.ptr717, %cond.end747 ], [ %incdec.ptr101, %if.end97 ]
  %yyssp.0.idx = phi i64 [ %yyssp.1.add, %cond.end747 ], [ %yyssp.1.idx1810, %if.end97 ]
  %yystate.0 = phi i32 [ %cond748, %cond.end747 ], [ %conv93, %if.end97 ]
  %yychar.0 = phi i32 [ %yychar.5, %cond.end747 ], [ -2, %if.end97 ]
  %yyssp.0.add = add nsw i64 %yyssp.0.idx, 1
  %yyssp.1.ptr = getelementptr inbounds i8, ptr %yyssa, i64 %yyssp.0.add
  %conv = trunc i32 %yystate.0 to i8
  store i8 %conv, ptr %yyssp.1.ptr, align 1, !tbaa !14
  %cmp.not = icmp slt i64 %yyssp.0.idx, 18
  br i1 %cmp.not, label %if.end47, label %yyreturnlab

if.end47:                                         ; preds = %yynewstate, %entry
  %yychar.11814 = phi i32 [ -2, %entry ], [ %yychar.0, %yynewstate ]
  %yystate.11813 = phi i32 [ 0, %entry ], [ %yystate.0, %yynewstate ]
  %yyssp.1.idx1810 = phi i64 [ 0, %entry ], [ %yyssp.0.add, %yynewstate ]
  %yyvsp.11809 = phi ptr [ %yyvsa, %entry ], [ %yyvsp.0, %yynewstate ]
  %yylval.sroa.7.11808 = phi i64 [ 0, %entry ], [ %yylval.sroa.7.0, %yynewstate ]
  %yylval.sroa.9.11807 = phi i64 [ 0, %entry ], [ %yylval.sroa.9.0, %yynewstate ]
  %yylval.sroa.0.sroa.0.11806 = phi i8 [ 0, %entry ], [ %yylval.sroa.0.sroa.0.0, %yynewstate ]
  %yylval.sroa.0.sroa.7.sroa.0.11805 = phi i56 [ 0, %entry ], [ %yylval.sroa.0.sroa.7.sroa.0.0, %yynewstate ]
  %cmp48 = icmp eq i32 %yystate.11813, 12
  br i1 %cmp48, label %yyreturnlab, label %yybackup

yybackup:                                         ; preds = %if.end47
  %idxprom = sext i32 %yystate.11813 to i64
  %arrayidx = getelementptr inbounds [115 x i8], ptr @yypact, i64 0, i64 %idxprom
  %3 = load i8, ptr %arrayidx, align 1, !tbaa !14
  %conv52 = sext i8 %3 to i32
  %cmp53 = icmp eq i8 %3, -91
  br i1 %cmp53, label %yydefault, label %if.end56

if.end56:                                         ; preds = %yybackup
  %cmp57 = icmp eq i32 %yychar.11814, -2
  br i1 %cmp57, label %if.then59, label %if.end61

if.then59:                                        ; preds = %if.end56
  %pc.promoted445.i = load ptr, ptr %pc, align 8, !tbaa !111
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.cond.i.backedge, %if.then59
  %pc.promoted.i = phi ptr [ %pc.promoted445.i, %if.then59 ], [ %pc.promoted.i.be, %while.cond.i.backedge ]
  %4 = load i8, ptr %pc.promoted.i, align 1, !tbaa !14
  switch i8 %4, label %while.end.i [
    i8 32, label %while.body.i
    i8 9, label %while.body.i
    i8 10, label %while.body.i
    i8 11, label %while.body.i
    i8 12, label %while.body.i
    i8 13, label %while.body.i
  ]

while.body.i:                                     ; preds = %while.cond.i, %while.cond.i, %while.cond.i, %while.cond.i, %while.cond.i, %while.cond.i
  %incdec.ptr.i = getelementptr inbounds i8, ptr %pc.promoted.i, i64 1
  store ptr %incdec.ptr.i, ptr %pc, align 8, !tbaa !111
  br label %while.cond.i.backedge

while.cond.i.backedge:                            ; preds = %do.cond190.i, %while.end29.i, %while.body.i
  %pc.promoted.i.be = phi ptr [ %incdec.ptr.i, %while.body.i ], [ %incdec.ptr24.i, %while.end29.i ], [ %incdec.ptr171.i, %do.cond190.i ]
  br label %while.cond.i, !llvm.loop !117

while.end.i:                                      ; preds = %while.cond.i
  %conv.i = zext i8 %4 to i32
  %c.off.i.i = add nsw i32 %conv.i, -48
  %switch.i.i = icmp ult i32 %c.off.i.i, 10
  br i1 %switch.i.i, label %if.then.i, label %switch.early.test.i

switch.early.test.i:                              ; preds = %while.end.i
  switch i8 %4, label %if.then163.i [
    i8 45, label %while.cond23.i.preheader
    i8 43, label %while.cond23.i.preheader
    i8 97, label %if.then124.i
    i8 98, label %if.then124.i
    i8 99, label %if.then124.i
    i8 100, label %if.then124.i
    i8 101, label %if.then124.i
    i8 102, label %if.then124.i
    i8 103, label %if.then124.i
    i8 104, label %if.then124.i
    i8 105, label %if.then124.i
    i8 106, label %if.then124.i
    i8 107, label %if.then124.i
    i8 108, label %if.then124.i
    i8 109, label %if.then124.i
    i8 110, label %if.then124.i
    i8 111, label %if.then124.i
    i8 112, label %if.then124.i
    i8 113, label %if.then124.i
    i8 114, label %if.then124.i
    i8 115, label %if.then124.i
    i8 116, label %if.then124.i
    i8 117, label %if.then124.i
    i8 118, label %if.then124.i
    i8 119, label %if.then124.i
    i8 120, label %if.then124.i
    i8 121, label %if.then124.i
    i8 122, label %if.then124.i
    i8 65, label %if.then124.i
    i8 66, label %if.then124.i
    i8 67, label %if.then124.i
    i8 68, label %if.then124.i
    i8 69, label %if.then124.i
    i8 70, label %if.then124.i
    i8 71, label %if.then124.i
    i8 72, label %if.then124.i
    i8 73, label %if.then124.i
    i8 74, label %if.then124.i
    i8 75, label %if.then124.i
    i8 76, label %if.then124.i
    i8 77, label %if.then124.i
    i8 78, label %if.then124.i
    i8 79, label %if.then124.i
    i8 80, label %if.then124.i
    i8 81, label %if.then124.i
    i8 82, label %if.then124.i
    i8 83, label %if.then124.i
    i8 84, label %if.then124.i
    i8 85, label %if.then124.i
    i8 86, label %if.then124.i
    i8 87, label %if.then124.i
    i8 88, label %if.then124.i
    i8 89, label %if.then124.i
    i8 90, label %if.then124.i
    i8 40, label %do.body169.i
  ]

if.then.i:                                        ; preds = %while.end.i
  switch i8 %4, label %if.end33.i [
    i8 45, label %while.cond23.i.preheader
    i8 43, label %while.cond23.i.preheader
  ]

while.cond23.i.preheader:                         ; preds = %if.then.i, %if.then.i, %switch.early.test.i, %switch.early.test.i
  br label %while.cond23.i

while.cond23.i:                                   ; preds = %while.cond23.i.backedge, %while.cond23.i.preheader
  %p.0.i = phi ptr [ %pc.promoted.i, %while.cond23.i.preheader ], [ %incdec.ptr24.i, %while.cond23.i.backedge ]
  %incdec.ptr24.i = getelementptr inbounds i8, ptr %p.0.i, i64 1
  store ptr %incdec.ptr24.i, ptr %pc, align 8, !tbaa !111
  %5 = load i8, ptr %incdec.ptr24.i, align 1, !tbaa !14
  switch i8 %5, label %while.end29.i [
    i8 32, label %while.cond23.i.backedge
    i8 9, label %while.cond23.i.backedge
    i8 10, label %while.cond23.i.backedge
    i8 11, label %while.cond23.i.backedge
    i8 12, label %while.cond23.i.backedge
    i8 13, label %while.cond23.i.backedge
  ]

while.cond23.i.backedge:                          ; preds = %while.cond23.i, %while.cond23.i, %while.cond23.i, %while.cond23.i, %while.cond23.i, %while.cond23.i
  br label %while.cond23.i, !llvm.loop !118

while.end29.i:                                    ; preds = %while.cond23.i
  %conv26.i = zext i8 %5 to i32
  %c.off.i279.i = add nsw i32 %conv26.i, -48
  %switch.i280.i = icmp ult i32 %c.off.i279.i, 10
  br i1 %switch.i280.i, label %if.end33.split.loop.exit441.i, label %while.cond.i.backedge

if.end33.split.loop.exit441.i:                    ; preds = %while.end29.i
  %cmp.le.i = icmp eq i8 %4, 45
  %cond.le.i = select i1 %cmp.le.i, i32 -1, i32 1
  br label %if.end33.i

if.end33.i:                                       ; preds = %if.end33.split.loop.exit441.i, %if.then.i
  %sign.0.i = phi i32 [ %cond.le.i, %if.end33.split.loop.exit441.i ], [ 0, %if.then.i ]
  %6 = phi ptr [ %incdec.ptr24.i, %if.end33.split.loop.exit441.i ], [ %pc.promoted.i, %if.then.i ]
  %c.0.i = phi i8 [ %5, %if.end33.split.loop.exit441.i ], [ %4, %if.then.i ]
  %cmp36.i = icmp slt i32 %sign.0.i, 0
  br label %do.body.i

do.body.i:                                        ; preds = %if.end43.i, %if.end33.i
  %value.0.i = phi i64 [ 0, %if.end33.i ], [ %13, %if.end43.i ]
  %p.2.i = phi ptr [ %6, %if.end33.i ], [ %incdec.ptr44.i, %if.end43.i ]
  %c.1.i = phi i8 [ %c.0.i, %if.end33.i ], [ %14, %if.end43.i ]
  %7 = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %value.0.i, i64 10)
  %8 = extractvalue { i64, i1 } %7, 1
  br i1 %8, label %cond.true, label %if.end35.i

if.end35.i:                                       ; preds = %do.body.i
  %9 = extractvalue { i64, i1 } %7, 0
  %conv38.i = zext i8 %c.1.i to i32
  %sub.i = sub nsw i32 48, %conv38.i
  %sub40.i = add nsw i32 %conv38.i, -48
  %cond41.i = select i1 %cmp36.i, i32 %sub.i, i32 %sub40.i
  %10 = sext i32 %cond41.i to i64
  %11 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %9, i64 %10)
  %12 = extractvalue { i64, i1 } %11, 1
  br i1 %12, label %cond.true, label %if.end43.i

if.end43.i:                                       ; preds = %if.end35.i
  %13 = extractvalue { i64, i1 } %11, 0
  %incdec.ptr44.i = getelementptr inbounds i8, ptr %p.2.i, i64 1
  %14 = load i8, ptr %incdec.ptr44.i, align 1, !tbaa !14
  %conv45.i = zext i8 %14 to i32
  %c.off.i281.i = add nsw i32 %conv45.i, -48
  %switch.i282.i = icmp ult i32 %c.off.i281.i, 10
  br i1 %switch.i282.i, label %do.body.i, label %do.end.i, !llvm.loop !119

do.end.i:                                         ; preds = %if.end43.i
  %15 = and i8 %14, -3
  %or.cond201.i = icmp eq i8 %15, 44
  br i1 %or.cond201.i, label %land.lhs.true.i, label %if.else109.i

land.lhs.true.i:                                  ; preds = %do.end.i
  %arrayidx.i = getelementptr inbounds i8, ptr %p.2.i, i64 2
  %16 = load i8, ptr %arrayidx.i, align 1, !tbaa !14
  %conv54.i = sext i8 %16 to i32
  %c.off.i283.i = add nsw i32 %conv54.i, -48
  %switch.i284.i = icmp ult i32 %c.off.i283.i, 10
  br i1 %switch.i284.i, label %if.then57.i, label %if.else109.i

if.then57.i:                                      ; preds = %land.lhs.true.i
  %incdec.ptr59.i = getelementptr inbounds i8, ptr %p.2.i, i64 3
  %mul.i = mul nuw nsw i32 %c.off.i283.i, 10
  %17 = load i8, ptr %incdec.ptr59.i, align 1, !tbaa !14
  %conv65.i = sext i8 %17 to i32
  %c.off.i285.i = add nsw i32 %conv65.i, -48
  %switch.i286.i = icmp ult i32 %c.off.i285.i, 10
  %add.i = select i1 %switch.i286.i, i32 %c.off.i285.i, i32 0
  %ns.1.i = add nsw i32 %add.i, %mul.i
  %p.4.idx.i = zext i1 %switch.i286.i to i64
  %p.4.i = getelementptr inbounds i8, ptr %incdec.ptr59.i, i64 %p.4.idx.i
  %mul.1.i = mul nsw i32 %ns.1.i, 10
  %18 = load i8, ptr %p.4.i, align 1, !tbaa !14
  %conv65.1.i = sext i8 %18 to i32
  %c.off.i285.1.i = add nsw i32 %conv65.1.i, -48
  %switch.i286.1.i = icmp ult i32 %c.off.i285.1.i, 10
  %add.1.i = select i1 %switch.i286.1.i, i32 %c.off.i285.1.i, i32 0
  %ns.1.1.i = add nsw i32 %mul.1.i, %add.1.i
  %p.4.idx.1.i = zext i1 %switch.i286.1.i to i64
  %p.4.1.i = getelementptr inbounds i8, ptr %p.4.i, i64 %p.4.idx.1.i
  %mul.2.i = mul nsw i32 %ns.1.1.i, 10
  %19 = load i8, ptr %p.4.1.i, align 1, !tbaa !14
  %conv65.2.i = sext i8 %19 to i32
  %c.off.i285.2.i = add nsw i32 %conv65.2.i, -48
  %switch.i286.2.i = icmp ult i32 %c.off.i285.2.i, 10
  %add.2.i = select i1 %switch.i286.2.i, i32 %c.off.i285.2.i, i32 0
  %ns.1.2.i = add nsw i32 %mul.2.i, %add.2.i
  %p.4.idx.2.i = zext i1 %switch.i286.2.i to i64
  %p.4.2.i = getelementptr inbounds i8, ptr %p.4.1.i, i64 %p.4.idx.2.i
  %mul.3.i = mul nsw i32 %ns.1.2.i, 10
  %20 = load i8, ptr %p.4.2.i, align 1, !tbaa !14
  %conv65.3.i = sext i8 %20 to i32
  %c.off.i285.3.i = add nsw i32 %conv65.3.i, -48
  %switch.i286.3.i = icmp ult i32 %c.off.i285.3.i, 10
  %add.3.i = select i1 %switch.i286.3.i, i32 %c.off.i285.3.i, i32 0
  %ns.1.3.i = add nsw i32 %mul.3.i, %add.3.i
  %p.4.idx.3.i = zext i1 %switch.i286.3.i to i64
  %p.4.3.i = getelementptr inbounds i8, ptr %p.4.2.i, i64 %p.4.idx.3.i
  %mul.4.i = mul nsw i32 %ns.1.3.i, 10
  %21 = load i8, ptr %p.4.3.i, align 1, !tbaa !14
  %conv65.4.i = sext i8 %21 to i32
  %c.off.i285.4.i = add nsw i32 %conv65.4.i, -48
  %switch.i286.4.i = icmp ult i32 %c.off.i285.4.i, 10
  %add.4.i = select i1 %switch.i286.4.i, i32 %c.off.i285.4.i, i32 0
  %ns.1.4.i = add nsw i32 %mul.4.i, %add.4.i
  %p.4.idx.4.i = zext i1 %switch.i286.4.i to i64
  %p.4.4.i = getelementptr inbounds i8, ptr %p.4.3.i, i64 %p.4.idx.4.i
  %mul.5.i = mul nsw i32 %ns.1.4.i, 10
  %22 = load i8, ptr %p.4.4.i, align 1, !tbaa !14
  %conv65.5.i = sext i8 %22 to i32
  %c.off.i285.5.i = add nsw i32 %conv65.5.i, -48
  %switch.i286.5.i = icmp ult i32 %c.off.i285.5.i, 10
  %add.5.i = select i1 %switch.i286.5.i, i32 %c.off.i285.5.i, i32 0
  %ns.1.5.i = add nsw i32 %mul.5.i, %add.5.i
  %p.4.idx.5.i = zext i1 %switch.i286.5.i to i64
  %p.4.5.i = getelementptr inbounds i8, ptr %p.4.4.i, i64 %p.4.idx.5.i
  %mul.6.i = mul nsw i32 %ns.1.5.i, 10
  %23 = load i8, ptr %p.4.5.i, align 1, !tbaa !14
  %conv65.6.i = sext i8 %23 to i32
  %c.off.i285.6.i = add nsw i32 %conv65.6.i, -48
  %switch.i286.6.i = icmp ult i32 %c.off.i285.6.i, 10
  %add.6.i = select i1 %switch.i286.6.i, i32 %c.off.i285.6.i, i32 0
  %ns.1.6.i = add nsw i32 %mul.6.i, %add.6.i
  %p.4.idx.6.i = zext i1 %switch.i286.6.i to i64
  %p.4.6.i = getelementptr inbounds i8, ptr %p.4.5.i, i64 %p.4.idx.6.i
  %mul.7.i = mul nsw i32 %ns.1.6.i, 10
  %24 = load i8, ptr %p.4.6.i, align 1, !tbaa !14
  %conv65.7.i = sext i8 %24 to i32
  %c.off.i285.7.i = add nsw i32 %conv65.7.i, -48
  %switch.i286.7.i = icmp ult i32 %c.off.i285.7.i, 10
  %add.7.i = select i1 %switch.i286.7.i, i32 %c.off.i285.7.i, i32 0
  %ns.1.7.i = add nsw i32 %mul.7.i, %add.7.i
  %p.4.idx.7.i = zext i1 %switch.i286.7.i to i64
  %p.4.7.i = getelementptr inbounds i8, ptr %p.4.6.i, i64 %p.4.idx.7.i
  br i1 %cmp36.i, label %for.cond75.preheader.i, label %if.end88.i

for.cond75.preheader.i:                           ; preds = %if.then57.i
  %25 = load i8, ptr %p.4.7.i, align 1, !tbaa !14
  %conv76454.i = sext i8 %25 to i32
  %c.off.i287455.i = add nsw i32 %conv76454.i, -48
  %switch.i288456.i = icmp ult i32 %c.off.i287455.i, 10
  br i1 %switch.i288456.i, label %for.body78.i, label %if.end88.i

for.body78.i:                                     ; preds = %for.inc85.i, %for.cond75.preheader.i
  %26 = phi i8 [ %27, %for.inc85.i ], [ %25, %for.cond75.preheader.i ]
  %p.5457.i = phi ptr [ %incdec.ptr86.i, %for.inc85.i ], [ %p.4.7.i, %for.cond75.preheader.i ]
  %cmp80.not.i = icmp eq i8 %26, 48
  br i1 %cmp80.not.i, label %for.inc85.i, label %if.then82.i

if.then82.i:                                      ; preds = %for.body78.i
  %inc83.i = add nsw i32 %ns.1.7.i, 1
  br label %if.end88.i

for.inc85.i:                                      ; preds = %for.body78.i
  %incdec.ptr86.i = getelementptr inbounds i8, ptr %p.5457.i, i64 1
  %27 = load i8, ptr %incdec.ptr86.i, align 1, !tbaa !14
  %conv76.i = sext i8 %27 to i32
  %c.off.i287.i = add nsw i32 %conv76.i, -48
  %switch.i288.i = icmp ult i32 %c.off.i287.i, 10
  br i1 %switch.i288.i, label %for.body78.i, label %if.end88.i, !llvm.loop !120

if.end88.i:                                       ; preds = %for.inc85.i, %if.then82.i, %for.cond75.preheader.i, %if.then57.i
  %ns.2.i = phi i32 [ %inc83.i, %if.then82.i ], [ %ns.1.7.i, %if.then57.i ], [ %ns.1.7.i, %for.cond75.preheader.i ], [ %ns.1.7.i, %for.inc85.i ]
  %p.6.i = phi ptr [ %p.5457.i, %if.then82.i ], [ %p.4.7.i, %if.then57.i ], [ %p.4.7.i, %for.cond75.preheader.i ], [ %incdec.ptr86.i, %for.inc85.i ]
  br label %while.cond89.i

while.cond89.i:                                   ; preds = %while.cond89.i, %if.end88.i
  %p.7.i = phi ptr [ %p.6.i, %if.end88.i ], [ %incdec.ptr93.i, %while.cond89.i ]
  %28 = load i8, ptr %p.7.i, align 1, !tbaa !14
  %conv90.i = sext i8 %28 to i32
  %c.off.i289.i = add nsw i32 %conv90.i, -48
  %switch.i290.i = icmp ult i32 %c.off.i289.i, 10
  %incdec.ptr93.i = getelementptr inbounds i8, ptr %p.7.i, i64 1
  br i1 %switch.i290.i, label %while.cond89.i, label %while.end94.i, !llvm.loop !121

while.end94.i:                                    ; preds = %while.cond89.i
  %tobool.i = icmp ne i32 %ns.2.i, 0
  %or.cond202.i = select i1 %cmp36.i, i1 %tobool.i, i1 false
  br i1 %or.cond202.i, label %if.then98.i, label %if.end102.i

if.then98.i:                                      ; preds = %while.end94.i
  %29 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %13, i64 -1)
  %30 = extractvalue { i64, i1 } %29, 1
  br i1 %30, label %cond.true, label %if.end100.i

if.end100.i:                                      ; preds = %if.then98.i
  %31 = extractvalue { i64, i1 } %29, 0
  %sub101.i = sub nsw i32 1000000000, %ns.2.i
  br label %if.end102.i

if.end102.i:                                      ; preds = %if.end100.i, %while.end94.i
  %s.0.i = phi i64 [ %31, %if.end100.i ], [ %13, %while.end94.i ]
  %ns.3.i = phi i32 [ %sub101.i, %if.end100.i ], [ %ns.2.i, %while.end94.i ]
  %conv103.i = sext i32 %ns.3.i to i64
  %yylval.sroa.0.sroa.0.0.extract.trunc1692 = trunc i64 %s.0.i to i8
  %yylval.sroa.0.sroa.7.0.extract.shift1694 = lshr i64 %s.0.i, 8
  %yylval.sroa.0.sroa.7.0.extract.trunc1695 = trunc i64 %yylval.sroa.0.sroa.7.0.extract.shift1694 to i56
  store ptr %p.7.i, ptr %pc, align 8, !tbaa !111
  %tobool105.not.i = icmp eq i32 %sign.0.i, 0
  %cond106.i = select i1 %tobool105.not.i, i32 277, i32 276
  br label %cond.true

if.else109.i:                                     ; preds = %land.lhs.true.i, %do.end.i
  %sign.0.lobit.i = lshr i32 %sign.0.i, 31
  %frombool.i = trunc i32 %sign.0.lobit.i to i8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %incdec.ptr44.i to i64
  %sub.ptr.rhs.cast.i = ptrtoint ptr %6 to i64
  %sub.ptr.sub.i = sub i64 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  store ptr %incdec.ptr44.i, ptr %pc, align 8, !tbaa !111
  %tobool116.not.i = icmp eq i32 %sign.0.i, 0
  %cond117.i = select i1 %tobool116.not.i, i32 275, i32 274
  br label %cond.true

if.then124.i:                                     ; preds = %switch.early.test.i, %switch.early.test.i, %switch.early.test.i, %switch.early.test.i, %switch.early.test.i, %switch.early.test.i, %switch.early.test.i, %switch.early.test.i, %switch.early.test.i, %switch.early.test.i, %switch.early.test.i, %switch.early.test.i, %switch.early.test.i, %switch.early.test.i, %switch.early.test.i, %switch.early.test.i, %switch.early.test.i, %switch.early.test.i, %switch.early.test.i, %switch.early.test.i, %switch.early.test.i, %switch.early.test.i, %switch.early.test.i, %switch.early.test.i, %switch.early.test.i, %switch.early.test.i, %switch.early.test.i, %switch.early.test.i, %switch.early.test.i, %switch.early.test.i, %switch.early.test.i, %switch.early.test.i, %switch.early.test.i, %switch.early.test.i, %switch.early.test.i, %switch.early.test.i, %switch.early.test.i, %switch.early.test.i, %switch.early.test.i, %switch.early.test.i, %switch.early.test.i, %switch.early.test.i, %switch.early.test.i, %switch.early.test.i, %switch.early.test.i, %switch.early.test.i, %switch.early.test.i, %switch.early.test.i, %switch.early.test.i, %switch.early.test.i, %switch.early.test.i, %switch.early.test.i
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %buff.i) #41
  br label %do.body126.i

do.body126.i:                                     ; preds = %if.end133.i, %if.then124.i
  %32 = phi ptr [ %pc.promoted.i, %if.then124.i ], [ %incdec.ptr135.i, %if.end133.i ]
  %c.2.i = phi i8 [ %4, %if.then124.i ], [ %33, %if.end133.i ]
  %p125.0.idx.i = phi i64 [ 0, %if.then124.i ], [ %p125.1.idx.i, %if.end133.i ]
  %cmp129.i = icmp slt i64 %p125.0.idx.i, 19
  br i1 %cmp129.i, label %if.then131.i, label %if.end133.i

if.then131.i:                                     ; preds = %do.body126.i
  %p125.0.ptr.i = getelementptr inbounds i8, ptr %buff.i, i64 %p125.0.idx.i
  %p125.0.add.i = add nsw i64 %p125.0.idx.i, 1
  store i8 %c.2.i, ptr %p125.0.ptr.i, align 1, !tbaa !14
  br label %if.end133.i

if.end133.i:                                      ; preds = %if.then131.i, %do.body126.i
  %p125.1.idx.i = phi i64 [ %p125.0.add.i, %if.then131.i ], [ %p125.0.idx.i, %do.body126.i ]
  %incdec.ptr135.i = getelementptr inbounds i8, ptr %32, i64 1
  store ptr %incdec.ptr135.i, ptr %pc, align 8, !tbaa !111
  %33 = load i8, ptr %incdec.ptr135.i, align 1, !tbaa !14
  %switch.tableidx = add i8 %33, -65
  %34 = icmp ult i8 %switch.tableidx, 58
  %switch.cast = zext nneg i8 %switch.tableidx to i58
  %switch.downshift = lshr i58 -4227858433, %switch.cast
  %35 = and i58 %switch.downshift, 1
  %switch.masked = icmp ne i58 %35, 0
  %retval.0.i293.i = select i1 %34, i1 %switch.masked, i1 false
  %cmp141.i = icmp eq i8 %33, 46
  %36 = or i1 %cmp141.i, %retval.0.i293.i
  br i1 %36, label %do.body126.i, label %do.end143.i, !llvm.loop !122

do.end143.i:                                      ; preds = %if.end133.i
  %p125.1.ptr.i = getelementptr inbounds i8, ptr %buff.i, i64 %p125.1.idx.i
  store i8 0, ptr %p125.1.ptr.i, align 1, !tbaa !14
  %37 = load i8, ptr %buff.i, align 16, !tbaa !14
  %tobool.not210.i.i = icmp eq i8 %37, 0
  br i1 %tobool.not210.i.i, label %for.cond3.preheader.i.i, label %for.body.i.i

for.cond3.preheader.i.i:                          ; preds = %for.body.i.i, %do.end143.i
  %bcmp.i = call i32 @bcmp(ptr noundef nonnull dereferenceable(3) %buff.i, ptr noundef nonnull dereferenceable(3) @.str.49, i64 3)
  %cmp.i.i = icmp eq i32 %bcmp.i, 0
  br i1 %cmp.i.i, label %if.end153.i, label %for.inc9.i.i

for.body.i.i:                                     ; preds = %for.body.i.i, %do.end143.i
  %38 = phi i8 [ %39, %for.body.i.i ], [ %37, %do.end143.i ]
  %p.0211.i.i = phi ptr [ %incdec.ptr.i.i, %for.body.i.i ], [ %buff.i, %do.end143.i ]
  %conv.i.i = zext i8 %38 to i32
  %c.off.i.i.i = add nsw i32 %conv.i.i, -97
  %switch.i.i.i = icmp ult i32 %c.off.i.i.i, 26
  %add.i.i.i = add i8 %38, -32
  %retval.0.i.i.i = select i1 %switch.i.i.i, i8 %add.i.i.i, i8 %38
  store i8 %retval.0.i.i.i, ptr %p.0211.i.i, align 1, !tbaa !14
  %incdec.ptr.i.i = getelementptr inbounds i8, ptr %p.0211.i.i, i64 1
  %39 = load i8, ptr %incdec.ptr.i.i, align 1, !tbaa !14
  %tobool.not.i.i = icmp eq i8 %39, 0
  br i1 %tobool.not.i.i, label %for.cond3.preheader.i.i, label %for.body.i.i, !llvm.loop !123

for.inc9.i.i:                                     ; preds = %for.cond3.preheader.i.i
  %bcmp306.i = call i32 @bcmp(ptr noundef nonnull dereferenceable(5) %buff.i, ptr noundef nonnull dereferenceable(5) @.str.50, i64 5)
  %cmp.1.i.i = icmp eq i32 %bcmp306.i, 0
  br i1 %cmp.1.i.i, label %if.end153.i, label %for.inc9.1.i.i

for.inc9.1.i.i:                                   ; preds = %for.inc9.i.i
  %bcmp307.i = call i32 @bcmp(ptr noundef nonnull dereferenceable(3) %buff.i, ptr noundef nonnull dereferenceable(3) @.str.51, i64 3)
  %cmp.2.i.i = icmp eq i32 %bcmp307.i, 0
  br i1 %cmp.2.i.i, label %if.end153.i, label %for.inc9.2.i.i

for.inc9.2.i.i:                                   ; preds = %for.inc9.1.i.i
  %bcmp308.i = call i32 @bcmp(ptr noundef nonnull dereferenceable(5) %buff.i, ptr noundef nonnull dereferenceable(5) @.str.52, i64 5)
  %cmp.3.i.i = icmp eq i32 %bcmp308.i, 0
  br i1 %cmp.3.i.i, label %if.end153.i, label %for.inc9.3.i.i

for.inc9.3.i.i:                                   ; preds = %for.inc9.2.i.i
  %call12.i.i = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %buff.i) #42
  switch i64 %call12.i.i, label %lor.end.split.i.i [
    i64 3, label %lor.end.split.us.i.i
    i64 4, label %land.rhs.i.i
  ]

land.rhs.i.i:                                     ; preds = %for.inc9.3.i.i
  %40 = load i8, ptr %arrayidx.i.i, align 1, !tbaa !14
  %cmp18.i.i = icmp eq i8 %40, 46
  br i1 %cmp18.i.i, label %lor.end.split.us.i.i, label %lor.end.split.i.i

lor.end.split.us.i.i:                             ; preds = %land.rhs.i.i, %for.inc9.3.i.i
  %bcmp309.i = call i32 @bcmp(ptr noundef nonnull dereferenceable(3) %buff.i, ptr noundef nonnull dereferenceable(3) @.str.53, i64 3)
  %cmp30.us.i.i = icmp eq i32 %bcmp309.i, 0
  br i1 %cmp30.us.i.i, label %if.end153.i, label %for.inc34.us.i.i

for.inc34.us.i.i:                                 ; preds = %lor.end.split.us.i.i
  %bcmp310.i = call i32 @bcmp(ptr noundef nonnull dereferenceable(3) %buff.i, ptr noundef nonnull dereferenceable(3) @.str.54, i64 3)
  %cmp30.us.1.i.i = icmp eq i32 %bcmp310.i, 0
  br i1 %cmp30.us.1.i.i, label %if.end153.i, label %for.inc34.us.1.i.i

for.inc34.us.1.i.i:                               ; preds = %for.inc34.us.i.i
  %bcmp311.i = call i32 @bcmp(ptr noundef nonnull dereferenceable(3) %buff.i, ptr noundef nonnull dereferenceable(3) @.str.55, i64 3)
  %cmp30.us.2.i.i = icmp eq i32 %bcmp311.i, 0
  br i1 %cmp30.us.2.i.i, label %if.end153.i, label %for.inc34.us.2.i.i

for.inc34.us.2.i.i:                               ; preds = %for.inc34.us.1.i.i
  %bcmp312.i = call i32 @bcmp(ptr noundef nonnull dereferenceable(3) %buff.i, ptr noundef nonnull dereferenceable(3) @.str.56, i64 3)
  %cmp30.us.3.i.i = icmp eq i32 %bcmp312.i, 0
  br i1 %cmp30.us.3.i.i, label %if.end153.i, label %for.inc34.us.3.i.i

for.inc34.us.3.i.i:                               ; preds = %for.inc34.us.2.i.i
  %bcmp313.i = call i32 @bcmp(ptr noundef nonnull dereferenceable(3) %buff.i, ptr noundef nonnull dereferenceable(3) @.str.57, i64 3)
  %cmp30.us.4.i.i = icmp eq i32 %bcmp313.i, 0
  br i1 %cmp30.us.4.i.i, label %if.end153.i, label %for.inc34.us.4.i.i

for.inc34.us.4.i.i:                               ; preds = %for.inc34.us.3.i.i
  %bcmp314.i = call i32 @bcmp(ptr noundef nonnull dereferenceable(3) %buff.i, ptr noundef nonnull dereferenceable(3) @.str.58, i64 3)
  %cmp30.us.5.i.i = icmp eq i32 %bcmp314.i, 0
  br i1 %cmp30.us.5.i.i, label %if.end153.i, label %for.inc34.us.5.i.i

for.inc34.us.5.i.i:                               ; preds = %for.inc34.us.4.i.i
  %bcmp315.i = call i32 @bcmp(ptr noundef nonnull dereferenceable(3) %buff.i, ptr noundef nonnull dereferenceable(3) @.str.59, i64 3)
  %cmp30.us.6.i.i = icmp eq i32 %bcmp315.i, 0
  br i1 %cmp30.us.6.i.i, label %if.end153.i, label %for.inc34.us.6.i.i

for.inc34.us.6.i.i:                               ; preds = %for.inc34.us.5.i.i
  %bcmp316.i = call i32 @bcmp(ptr noundef nonnull dereferenceable(3) %buff.i, ptr noundef nonnull dereferenceable(3) @.str.60, i64 3)
  %cmp30.us.7.i.i = icmp eq i32 %bcmp316.i, 0
  br i1 %cmp30.us.7.i.i, label %if.end153.i, label %for.inc34.us.7.i.i

for.inc34.us.7.i.i:                               ; preds = %for.inc34.us.6.i.i
  %bcmp317.i = call i32 @bcmp(ptr noundef nonnull dereferenceable(3) %buff.i, ptr noundef nonnull dereferenceable(3) @.str.61, i64 3)
  %cmp30.us.8.i.i = icmp eq i32 %bcmp317.i, 0
  br i1 %cmp30.us.8.i.i, label %if.end153.i, label %for.inc34.us.8.i.i

for.inc34.us.8.i.i:                               ; preds = %for.inc34.us.7.i.i
  %bcmp318.i = call i32 @bcmp(ptr noundef nonnull dereferenceable(3) %buff.i, ptr noundef nonnull dereferenceable(3) @.str.62, i64 3)
  %cmp30.us.9.i.i = icmp eq i32 %bcmp318.i, 0
  br i1 %cmp30.us.9.i.i, label %if.end153.i, label %for.inc34.us.9.i.i

for.inc34.us.9.i.i:                               ; preds = %for.inc34.us.8.i.i
  %bcmp319.i = call i32 @bcmp(ptr noundef nonnull dereferenceable(3) %buff.i, ptr noundef nonnull dereferenceable(3) @.str.63.116, i64 3)
  %cmp30.us.10.i.i = icmp eq i32 %bcmp319.i, 0
  br i1 %cmp30.us.10.i.i, label %if.end153.i, label %for.inc34.us.10.i.i

for.inc34.us.10.i.i:                              ; preds = %for.inc34.us.9.i.i
  %bcmp320.i = call i32 @bcmp(ptr noundef nonnull dereferenceable(3) %buff.i, ptr noundef nonnull dereferenceable(3) @.str.64, i64 3)
  %cmp30.us.11.i.i = icmp eq i32 %bcmp320.i, 0
  br i1 %cmp30.us.11.i.i, label %if.end153.i, label %for.inc34.us.11.i.i

for.inc34.us.11.i.i:                              ; preds = %for.inc34.us.10.i.i
  %bcmp321.i = call i32 @bcmp(ptr noundef nonnull dereferenceable(3) %buff.i, ptr noundef nonnull dereferenceable(3) @.str.65, i64 3)
  %cmp30.us.12.i.i = icmp eq i32 %bcmp321.i, 0
  br i1 %cmp30.us.12.i.i, label %if.end153.i, label %for.inc34.us.12.i.i

for.inc34.us.12.i.i:                              ; preds = %for.inc34.us.11.i.i
  %bcmp322.i = call i32 @bcmp(ptr noundef nonnull dereferenceable(3) %buff.i, ptr noundef nonnull dereferenceable(3) @.str.66, i64 3)
  %cmp30.us.13.i.i = icmp eq i32 %bcmp322.i, 0
  br i1 %cmp30.us.13.i.i, label %if.end153.i, label %for.inc34.us.13.i.i

for.inc34.us.13.i.i:                              ; preds = %for.inc34.us.12.i.i
  %bcmp323.i = call i32 @bcmp(ptr noundef nonnull dereferenceable(3) %buff.i, ptr noundef nonnull dereferenceable(3) @.str.67, i64 3)
  %cmp30.us.14.i.i = icmp eq i32 %bcmp323.i, 0
  br i1 %cmp30.us.14.i.i, label %if.end153.i, label %for.inc34.us.14.i.i

for.inc34.us.14.i.i:                              ; preds = %for.inc34.us.13.i.i
  %bcmp324.i = call i32 @bcmp(ptr noundef nonnull dereferenceable(3) %buff.i, ptr noundef nonnull dereferenceable(3) @.str.68, i64 3)
  %cmp30.us.15.i.i = icmp eq i32 %bcmp324.i, 0
  br i1 %cmp30.us.15.i.i, label %if.end153.i, label %for.inc34.us.15.i.i

for.inc34.us.15.i.i:                              ; preds = %for.inc34.us.14.i.i
  %bcmp325.i = call i32 @bcmp(ptr noundef nonnull dereferenceable(3) %buff.i, ptr noundef nonnull dereferenceable(3) @.str.69, i64 3)
  %cmp30.us.16.i.i = icmp eq i32 %bcmp325.i, 0
  br i1 %cmp30.us.16.i.i, label %if.end153.i, label %for.inc34.us.16.i.i

for.inc34.us.16.i.i:                              ; preds = %for.inc34.us.15.i.i
  %bcmp326.i = call i32 @bcmp(ptr noundef nonnull dereferenceable(3) %buff.i, ptr noundef nonnull dereferenceable(3) @.str.70, i64 3)
  %cmp30.us.17.i.i = icmp eq i32 %bcmp326.i, 0
  br i1 %cmp30.us.17.i.i, label %if.end153.i, label %for.inc34.us.17.i.i

for.inc34.us.17.i.i:                              ; preds = %for.inc34.us.16.i.i
  %bcmp327.i = call i32 @bcmp(ptr noundef nonnull dereferenceable(3) %buff.i, ptr noundef nonnull dereferenceable(3) @.str.71, i64 3)
  %cmp30.us.18.i.i = icmp eq i32 %bcmp327.i, 0
  br i1 %cmp30.us.18.i.i, label %if.end153.i, label %for.inc34.us.18.i.i

for.inc34.us.18.i.i:                              ; preds = %for.inc34.us.17.i.i
  %bcmp328.i = call i32 @bcmp(ptr noundef nonnull dereferenceable(3) %buff.i, ptr noundef nonnull dereferenceable(3) @.str.72, i64 3)
  %cmp30.us.19.i.i = icmp eq i32 %bcmp328.i, 0
  br i1 %cmp30.us.19.i.i, label %if.end153.i, label %for.inc34.us.19.i.i

for.inc34.us.19.i.i:                              ; preds = %for.inc34.us.18.i.i
  %bcmp329.i = call i32 @bcmp(ptr noundef nonnull dereferenceable(3) %buff.i, ptr noundef nonnull dereferenceable(3) @.str.73, i64 3)
  %cmp30.us.20.i.i = icmp eq i32 %bcmp329.i, 0
  br i1 %cmp30.us.20.i.i, label %if.end153.i, label %for.inc34.us.20.i.i

for.inc34.us.20.i.i:                              ; preds = %for.inc34.us.19.i.i
  %bcmp330.i = call i32 @bcmp(ptr noundef nonnull dereferenceable(3) %buff.i, ptr noundef nonnull dereferenceable(3) @.str.74, i64 3)
  %cmp30.us.21.i.i = icmp eq i32 %bcmp330.i, 0
  br i1 %cmp30.us.21.i.i, label %if.end153.i, label %for.inc34.us.21.i.i

for.inc34.us.21.i.i:                              ; preds = %for.inc34.us.20.i.i
  %bcmp331.i = call i32 @bcmp(ptr noundef nonnull dereferenceable(3) %buff.i, ptr noundef nonnull dereferenceable(3) @.str.75, i64 3)
  %cmp30.us.22.i.i = icmp eq i32 %bcmp331.i, 0
  br i1 %cmp30.us.22.i.i, label %if.end153.i, label %for.inc34.us.22.i.i

for.inc34.us.22.i.i:                              ; preds = %for.inc34.us.21.i.i
  %bcmp332.i = call i32 @bcmp(ptr noundef nonnull dereferenceable(3) %buff.i, ptr noundef nonnull dereferenceable(3) @.str.76, i64 3)
  %cmp30.us.23.i.i = icmp eq i32 %bcmp332.i, 0
  br i1 %cmp30.us.23.i.i, label %if.end153.i, label %for.end36.i.i

lor.end.split.i.i:                                ; preds = %land.rhs.i.i, %for.inc9.3.i.i
  %lhsv.i = load i64, ptr %buff.i, align 16
  %.not.i = icmp eq i64 %lhsv.i, 25141713484792138
  br i1 %.not.i, label %if.end153.i, label %for.inc34.i.i

for.inc34.i.i:                                    ; preds = %lor.end.split.i.i
  %bcmp334.i = call i32 @bcmp(ptr noundef nonnull dereferenceable(9) %buff.i, ptr noundef nonnull dereferenceable(9) @.str.54, i64 9)
  %cmp30.1.i.i = icmp eq i32 %bcmp334.i, 0
  br i1 %cmp30.1.i.i, label %if.end153.i, label %for.inc34.1.i.i

for.inc34.1.i.i:                                  ; preds = %for.inc34.i.i
  %bcmp335.i = call i32 @bcmp(ptr noundef nonnull dereferenceable(6) %buff.i, ptr noundef nonnull dereferenceable(6) @.str.55, i64 6)
  %cmp30.2.i.i = icmp eq i32 %bcmp335.i, 0
  br i1 %cmp30.2.i.i, label %if.end153.i, label %for.inc34.2.i.i

for.inc34.2.i.i:                                  ; preds = %for.inc34.1.i.i
  %bcmp336.i = call i32 @bcmp(ptr noundef nonnull dereferenceable(6) %buff.i, ptr noundef nonnull dereferenceable(6) @.str.56, i64 6)
  %cmp30.3.i.i = icmp eq i32 %bcmp336.i, 0
  br i1 %cmp30.3.i.i, label %if.end153.i, label %for.inc34.3.i.i

for.inc34.3.i.i:                                  ; preds = %for.inc34.2.i.i
  %41 = and i64 %lhsv.i, 4294967295
  %.not339.i = icmp eq i64 %41, 5849421
  br i1 %.not339.i, label %if.end153.i, label %for.inc34.4.i.i

for.inc34.4.i.i:                                  ; preds = %for.inc34.3.i.i
  %bcmp340.i = call i32 @bcmp(ptr noundef nonnull dereferenceable(5) %buff.i, ptr noundef nonnull dereferenceable(5) @.str.58, i64 5)
  %cmp30.5.i.i = icmp eq i32 %bcmp340.i, 0
  br i1 %cmp30.5.i.i, label %if.end153.i, label %for.inc34.5.i.i

for.inc34.5.i.i:                                  ; preds = %for.inc34.4.i.i
  %bcmp341.i = call i32 @bcmp(ptr noundef nonnull dereferenceable(5) %buff.i, ptr noundef nonnull dereferenceable(5) @.str.59, i64 5)
  %cmp30.6.i.i = icmp eq i32 %bcmp341.i, 0
  br i1 %cmp30.6.i.i, label %if.end153.i, label %for.inc34.6.i.i

for.inc34.6.i.i:                                  ; preds = %for.inc34.5.i.i
  %bcmp342.i = call i32 @bcmp(ptr noundef nonnull dereferenceable(7) %buff.i, ptr noundef nonnull dereferenceable(7) @.str.60, i64 7)
  %cmp30.7.i.i = icmp eq i32 %bcmp342.i, 0
  br i1 %cmp30.7.i.i, label %if.end153.i, label %for.inc34.7.i.i

for.inc34.7.i.i:                                  ; preds = %for.inc34.6.i.i
  %bcmp343.i = call i32 @bcmp(ptr noundef nonnull dereferenceable(10) %buff.i, ptr noundef nonnull dereferenceable(10) @.str.61, i64 10)
  %cmp30.8.i.i = icmp eq i32 %bcmp343.i, 0
  br i1 %cmp30.8.i.i, label %if.end153.i, label %for.inc34.8.i.i

for.inc34.8.i.i:                                  ; preds = %for.inc34.7.i.i
  %bcmp344.i = call i32 @bcmp(ptr noundef nonnull dereferenceable(5) %buff.i, ptr noundef nonnull dereferenceable(5) @.str.62, i64 5)
  %cmp30.9.i.i = icmp eq i32 %bcmp344.i, 0
  br i1 %cmp30.9.i.i, label %if.end153.i, label %for.inc34.9.i.i

for.inc34.9.i.i:                                  ; preds = %for.inc34.8.i.i
  %.not347.i = icmp eq i64 %lhsv.i, 23157099191354191
  br i1 %.not347.i, label %if.end153.i, label %for.inc34.10.i.i

for.inc34.10.i.i:                                 ; preds = %for.inc34.9.i.i
  %bcmp348.i = call i32 @bcmp(ptr noundef nonnull dereferenceable(9) %buff.i, ptr noundef nonnull dereferenceable(9) @.str.64, i64 9)
  %cmp30.11.i.i = icmp eq i32 %bcmp348.i, 0
  br i1 %cmp30.11.i.i, label %if.end153.i, label %for.inc34.11.i.i

for.inc34.11.i.i:                                 ; preds = %for.inc34.10.i.i
  %bcmp349.i = call i32 @bcmp(ptr noundef nonnull dereferenceable(9) %buff.i, ptr noundef nonnull dereferenceable(9) @.str.65, i64 9)
  %cmp30.12.i.i = icmp eq i32 %bcmp349.i, 0
  br i1 %cmp30.12.i.i, label %if.end153.i, label %for.inc34.12.i.i

for.inc34.12.i.i:                                 ; preds = %for.inc34.11.i.i
  %bcmp350.i = call i32 @bcmp(ptr noundef nonnull dereferenceable(7) %buff.i, ptr noundef nonnull dereferenceable(7) @.str.66, i64 7)
  %cmp30.13.i.i = icmp eq i32 %bcmp350.i, 0
  br i1 %cmp30.13.i.i, label %if.end153.i, label %for.inc34.13.i.i

for.inc34.13.i.i:                                 ; preds = %for.inc34.12.i.i
  %bcmp351.i = call i32 @bcmp(ptr noundef nonnull dereferenceable(7) %buff.i, ptr noundef nonnull dereferenceable(7) @.str.67, i64 7)
  %cmp30.14.i.i = icmp eq i32 %bcmp351.i, 0
  br i1 %cmp30.14.i.i, label %if.end153.i, label %for.inc34.14.i.i

for.inc34.14.i.i:                                 ; preds = %for.inc34.13.i.i
  %.not354.i = icmp eq i64 %lhsv.i, 25123034637882708
  br i1 %.not354.i, label %if.end153.i, label %for.inc34.15.i.i

for.inc34.15.i.i:                                 ; preds = %for.inc34.14.i.i
  %bcmp355.i = call i32 @bcmp(ptr noundef nonnull dereferenceable(5) %buff.i, ptr noundef nonnull dereferenceable(5) @.str.69, i64 5)
  %cmp30.16.i.i = icmp eq i32 %bcmp355.i, 0
  br i1 %cmp30.16.i.i, label %if.end153.i, label %for.inc34.16.i.i

for.inc34.16.i.i:                                 ; preds = %for.inc34.15.i.i
  %bcmp356.i = call i32 @bcmp(ptr noundef nonnull dereferenceable(10) %buff.i, ptr noundef nonnull dereferenceable(10) @.str.70, i64 10)
  %cmp30.17.i.i = icmp eq i32 %bcmp356.i, 0
  br i1 %cmp30.17.i.i, label %if.end153.i, label %for.inc34.17.i.i

for.inc34.17.i.i:                                 ; preds = %for.inc34.16.i.i
  %bcmp357.i = call i32 @bcmp(ptr noundef nonnull dereferenceable(7) %buff.i, ptr noundef nonnull dereferenceable(7) @.str.71, i64 7)
  %cmp30.18.i.i = icmp eq i32 %bcmp357.i, 0
  br i1 %cmp30.18.i.i, label %if.end153.i, label %for.inc34.18.i.i

for.inc34.18.i.i:                                 ; preds = %for.inc34.17.i.i
  %bcmp358.i = call i32 @bcmp(ptr noundef nonnull dereferenceable(9) %buff.i, ptr noundef nonnull dereferenceable(9) @.str.72, i64 9)
  %cmp30.19.i.i = icmp eq i32 %bcmp358.i, 0
  br i1 %cmp30.19.i.i, label %if.end153.i, label %for.inc34.19.i.i

for.inc34.19.i.i:                                 ; preds = %for.inc34.18.i.i
  %bcmp359.i = call i32 @bcmp(ptr noundef nonnull dereferenceable(5) %buff.i, ptr noundef nonnull dereferenceable(5) @.str.73, i64 5)
  %cmp30.20.i.i = icmp eq i32 %bcmp359.i, 0
  br i1 %cmp30.20.i.i, label %if.end153.i, label %for.inc34.20.i.i

for.inc34.20.i.i:                                 ; preds = %for.inc34.19.i.i
  %bcmp360.i = call i32 @bcmp(ptr noundef nonnull dereferenceable(6) %buff.i, ptr noundef nonnull dereferenceable(6) @.str.74, i64 6)
  %cmp30.21.i.i = icmp eq i32 %bcmp360.i, 0
  br i1 %cmp30.21.i.i, label %if.end153.i, label %for.inc34.21.i.i

for.inc34.21.i.i:                                 ; preds = %for.inc34.20.i.i
  %bcmp361.i = call i32 @bcmp(ptr noundef nonnull dereferenceable(7) %buff.i, ptr noundef nonnull dereferenceable(7) @.str.75, i64 7)
  %cmp30.22.i.i = icmp eq i32 %bcmp361.i, 0
  br i1 %cmp30.22.i.i, label %if.end153.i, label %for.inc34.22.i.i

for.inc34.22.i.i:                                 ; preds = %for.inc34.21.i.i
  %bcmp362.i = call i32 @bcmp(ptr noundef nonnull dereferenceable(9) %buff.i, ptr noundef nonnull dereferenceable(9) @.str.76, i64 9)
  %cmp30.23.i.i = icmp eq i32 %bcmp362.i, 0
  br i1 %cmp30.23.i.i, label %if.end153.i, label %for.end36.i.i

for.end36.i.i:                                    ; preds = %for.inc34.22.i.i, %for.inc34.us.22.i.i
  %call37.i.i = call fastcc ptr @lookup_zone(ptr noundef nonnull %pc, ptr noundef nonnull %buff.i) #42
  %tobool38.not.i.i = icmp eq ptr %call37.i.i, null
  br i1 %tobool38.not.i.i, label %if.end40.i.i, label %if.end153.i

if.end40.i.i:                                     ; preds = %for.end36.i.i
  %lhsv363.i = load i32, ptr %buff.i, align 16
  %.not365.i = icmp eq i32 %lhsv363.i, 5526340
  br i1 %.not365.i, label %if.end153.i, label %for.body49.preheader.i.i

for.body49.preheader.i.i:                         ; preds = %if.end40.i.i
  %bcmp366.i = call i32 @bcmp(ptr noundef nonnull dereferenceable(5) %buff.i, ptr noundef nonnull dereferenceable(5) @.str.128, i64 5)
  %cmp52.i.i = icmp eq i32 %bcmp366.i, 0
  br i1 %cmp52.i.i, label %if.end153.i, label %for.inc56.i.i

for.inc56.i.i:                                    ; preds = %for.body49.preheader.i.i
  %bcmp367.i = call i32 @bcmp(ptr noundef nonnull dereferenceable(6) %buff.i, ptr noundef nonnull dereferenceable(6) @.str.129, i64 6)
  %cmp52.1.i.i = icmp eq i32 %bcmp367.i, 0
  br i1 %cmp52.1.i.i, label %if.end153.i, label %for.inc56.1.i.i

for.inc56.1.i.i:                                  ; preds = %for.inc56.i.i
  %bcmp368.i = call i32 @bcmp(ptr noundef nonnull dereferenceable(10) %buff.i, ptr noundef nonnull dereferenceable(10) @.str.130, i64 10)
  %cmp52.2.i.i = icmp eq i32 %bcmp368.i, 0
  br i1 %cmp52.2.i.i, label %if.end153.i, label %for.inc56.2.i.i

for.inc56.2.i.i:                                  ; preds = %for.inc56.1.i.i
  %bcmp369.i = call i32 @bcmp(ptr noundef nonnull dereferenceable(5) %buff.i, ptr noundef nonnull dereferenceable(5) @.str.131, i64 5)
  %cmp52.3.i.i = icmp eq i32 %bcmp369.i, 0
  br i1 %cmp52.3.i.i, label %if.end153.i, label %for.inc56.3.i.i

for.inc56.3.i.i:                                  ; preds = %for.inc56.2.i.i
  %.not372.i = icmp eq i32 %lhsv363.i, 5849412
  br i1 %.not372.i, label %if.end153.i, label %for.inc56.4.i.i

for.inc56.4.i.i:                                  ; preds = %for.inc56.3.i.i
  %bcmp373.i = call i32 @bcmp(ptr noundef nonnull dereferenceable(5) %buff.i, ptr noundef nonnull dereferenceable(5) @.str.133, i64 5)
  %cmp52.5.i.i = icmp eq i32 %bcmp373.i, 0
  br i1 %cmp52.5.i.i, label %if.end153.i, label %for.inc56.5.i.i

for.inc56.5.i.i:                                  ; preds = %for.inc56.4.i.i
  %bcmp374.i = call i32 @bcmp(ptr noundef nonnull dereferenceable(7) %buff.i, ptr noundef nonnull dereferenceable(7) @.str.134, i64 7)
  %cmp52.6.i.i = icmp eq i32 %bcmp374.i, 0
  br i1 %cmp52.6.i.i, label %if.end153.i, label %for.inc56.6.i.i

for.inc56.6.i.i:                                  ; preds = %for.inc56.5.i.i
  %.not377.i = icmp eq i32 %lhsv363.i, 5130573
  br i1 %.not377.i, label %if.end153.i, label %for.inc56.7.i.i

for.inc56.7.i.i:                                  ; preds = %for.inc56.6.i.i
  %bcmp378.i = call i32 @bcmp(ptr noundef nonnull dereferenceable(7) %buff.i, ptr noundef nonnull dereferenceable(7) @.str.136, i64 7)
  %cmp52.8.i.i = icmp eq i32 %bcmp378.i, 0
  br i1 %cmp52.8.i.i, label %if.end153.i, label %for.inc56.8.i.i

for.inc56.8.i.i:                                  ; preds = %for.inc56.7.i.i
  %.not381.i = icmp eq i32 %lhsv363.i, 4408659
  br i1 %.not381.i, label %if.end153.i, label %for.inc56.9.i.i

for.inc56.9.i.i:                                  ; preds = %for.inc56.8.i.i
  %gep = getelementptr i8, ptr %invariant.gep, i64 %call12.i.i
  %42 = load i8, ptr %gep, align 1, !tbaa !14
  %cmp61.i.i = icmp eq i8 %42, 83
  br i1 %cmp61.i.i, label %if.then63.i.i, label %if.end81.i.i

if.then63.i.i:                                    ; preds = %for.inc56.9.i.i
  store i8 0, ptr %gep, align 1, !tbaa !14
  %bcmp382.i = call i32 @bcmp(ptr noundef nonnull dereferenceable(5) %buff.i, ptr noundef nonnull dereferenceable(5) @.str.128, i64 5)
  %cmp72.i.i = icmp eq i32 %bcmp382.i, 0
  br i1 %cmp72.i.i, label %if.end153.i, label %for.inc76.i.i

for.inc76.i.i:                                    ; preds = %if.then63.i.i
  %bcmp383.i = call i32 @bcmp(ptr noundef nonnull dereferenceable(6) %buff.i, ptr noundef nonnull dereferenceable(6) @.str.129, i64 6)
  %cmp72.1.i.i = icmp eq i32 %bcmp383.i, 0
  br i1 %cmp72.1.i.i, label %if.end153.i, label %for.inc76.1.i.i

for.inc76.1.i.i:                                  ; preds = %for.inc76.i.i
  %bcmp384.i = call i32 @bcmp(ptr noundef nonnull dereferenceable(10) %buff.i, ptr noundef nonnull dereferenceable(10) @.str.130, i64 10)
  %cmp72.2.i.i = icmp eq i32 %bcmp384.i, 0
  br i1 %cmp72.2.i.i, label %if.end153.i, label %for.inc76.2.i.i

for.inc76.2.i.i:                                  ; preds = %for.inc76.1.i.i
  %bcmp385.i = call i32 @bcmp(ptr noundef nonnull dereferenceable(5) %buff.i, ptr noundef nonnull dereferenceable(5) @.str.131, i64 5)
  %cmp72.3.i.i = icmp eq i32 %bcmp385.i, 0
  br i1 %cmp72.3.i.i, label %if.end153.i, label %for.inc76.3.i.i

for.inc76.3.i.i:                                  ; preds = %for.inc76.2.i.i
  %lhsv386.i = load i32, ptr %buff.i, align 16
  %.not388.i = icmp eq i32 %lhsv386.i, 5849412
  br i1 %.not388.i, label %if.end153.i, label %for.inc76.4.i.i

for.inc76.4.i.i:                                  ; preds = %for.inc76.3.i.i
  %bcmp389.i = call i32 @bcmp(ptr noundef nonnull dereferenceable(5) %buff.i, ptr noundef nonnull dereferenceable(5) @.str.133, i64 5)
  %cmp72.5.i.i = icmp eq i32 %bcmp389.i, 0
  br i1 %cmp72.5.i.i, label %if.end153.i, label %for.inc76.5.i.i

for.inc76.5.i.i:                                  ; preds = %for.inc76.4.i.i
  %bcmp390.i = call i32 @bcmp(ptr noundef nonnull dereferenceable(7) %buff.i, ptr noundef nonnull dereferenceable(7) @.str.134, i64 7)
  %cmp72.6.i.i = icmp eq i32 %bcmp390.i, 0
  br i1 %cmp72.6.i.i, label %if.end153.i, label %for.inc76.6.i.i

for.inc76.6.i.i:                                  ; preds = %for.inc76.5.i.i
  %.not393.i = icmp eq i32 %lhsv386.i, 5130573
  br i1 %.not393.i, label %if.end153.i, label %for.inc76.7.i.i

for.inc76.7.i.i:                                  ; preds = %for.inc76.6.i.i
  %bcmp394.i = call i32 @bcmp(ptr noundef nonnull dereferenceable(7) %buff.i, ptr noundef nonnull dereferenceable(7) @.str.136, i64 7)
  %cmp72.8.i.i = icmp eq i32 %bcmp394.i, 0
  br i1 %cmp72.8.i.i, label %if.end153.i, label %for.inc76.8.i.i

for.inc76.8.i.i:                                  ; preds = %for.inc76.7.i.i
  %.not397.i = icmp eq i32 %lhsv386.i, 4408659
  br i1 %.not397.i, label %if.end153.i, label %for.inc76.9.i.i

for.inc76.9.i.i:                                  ; preds = %for.inc76.8.i.i
  store i8 83, ptr %gep, align 1, !tbaa !14
  br label %if.end81.i.i

if.end81.i.i:                                     ; preds = %for.inc76.9.i.i, %for.inc56.9.i.i
  %bcmp398.i = call i32 @bcmp(ptr noundef nonnull dereferenceable(9) %buff.i, ptr noundef nonnull dereferenceable(9) @.str.138, i64 9)
  %cmp88.i.i = icmp eq i32 %bcmp398.i, 0
  br i1 %cmp88.i.i, label %if.end153.i, label %for.inc92.i.i

for.inc92.i.i:                                    ; preds = %if.end81.i.i
  %bcmp399.i = call i32 @bcmp(ptr noundef nonnull dereferenceable(10) %buff.i, ptr noundef nonnull dereferenceable(10) @.str.139, i64 10)
  %cmp88.1.i.i = icmp eq i32 %bcmp399.i, 0
  br i1 %cmp88.1.i.i, label %if.end153.i, label %for.inc92.1.i.i

for.inc92.1.i.i:                                  ; preds = %for.inc92.i.i
  %bcmp400.i = call i32 @bcmp(ptr noundef nonnull dereferenceable(6) %buff.i, ptr noundef nonnull dereferenceable(6) @.str.140, i64 6)
  %cmp88.2.i.i = icmp eq i32 %bcmp400.i, 0
  br i1 %cmp88.2.i.i, label %if.end153.i, label %for.inc92.2.i.i

for.inc92.2.i.i:                                  ; preds = %for.inc92.1.i.i
  %lhsv401.i = load i32, ptr %buff.i, align 16
  %.not403.i = icmp eq i32 %lhsv401.i, 5721934
  br i1 %.not403.i, label %if.end153.i, label %for.inc92.3.i.i

for.inc92.3.i.i:                                  ; preds = %for.inc92.2.i.i
  %bcmp404.i = call i32 @bcmp(ptr noundef nonnull dereferenceable(5) %buff.i, ptr noundef nonnull dereferenceable(5) @.str.142, i64 5)
  %cmp88.4.i.i = icmp eq i32 %bcmp404.i, 0
  br i1 %cmp88.4.i.i, label %if.end153.i, label %for.inc92.4.i.i

for.inc92.4.i.i:                                  ; preds = %for.inc92.3.i.i
  %bcmp405.i = call i32 @bcmp(ptr noundef nonnull dereferenceable(5) %buff.i, ptr noundef nonnull dereferenceable(5) @.str.143, i64 5)
  %cmp88.5.i.i = icmp eq i32 %bcmp405.i, 0
  br i1 %cmp88.5.i.i, label %if.end153.i, label %for.inc92.5.i.i

for.inc92.5.i.i:                                  ; preds = %for.inc92.4.i.i
  %bcmp406.i = call i32 @bcmp(ptr noundef nonnull dereferenceable(5) %buff.i, ptr noundef nonnull dereferenceable(5) @.str.144, i64 5)
  %cmp88.6.i.i = icmp eq i32 %bcmp406.i, 0
  br i1 %cmp88.6.i.i, label %if.end153.i, label %for.inc92.6.i.i

for.inc92.6.i.i:                                  ; preds = %for.inc92.5.i.i
  %bcmp407.i = call i32 @bcmp(ptr noundef nonnull dereferenceable(6) %buff.i, ptr noundef nonnull dereferenceable(6) @.str.145, i64 6)
  %cmp88.7.i.i = icmp eq i32 %bcmp407.i, 0
  br i1 %cmp88.7.i.i, label %if.end153.i, label %for.inc92.7.i.i

for.inc92.7.i.i:                                  ; preds = %for.inc92.6.i.i
  %bcmp408.i = call i32 @bcmp(ptr noundef nonnull dereferenceable(6) %buff.i, ptr noundef nonnull dereferenceable(6) @.str.146, i64 6)
  %cmp88.8.i.i = icmp eq i32 %bcmp408.i, 0
  br i1 %cmp88.8.i.i, label %if.end153.i, label %for.inc92.8.i.i

for.inc92.8.i.i:                                  ; preds = %for.inc92.7.i.i
  %bcmp409.i = call i32 @bcmp(ptr noundef nonnull dereferenceable(7) %buff.i, ptr noundef nonnull dereferenceable(7) @.str.147, i64 7)
  %cmp88.9.i.i = icmp eq i32 %bcmp409.i, 0
  br i1 %cmp88.9.i.i, label %if.end153.i, label %for.inc92.9.i.i

for.inc92.9.i.i:                                  ; preds = %for.inc92.8.i.i
  %bcmp410.i = call i32 @bcmp(ptr noundef nonnull dereferenceable(6) %buff.i, ptr noundef nonnull dereferenceable(6) @.str.148, i64 6)
  %cmp88.10.i.i = icmp eq i32 %bcmp410.i, 0
  br i1 %cmp88.10.i.i, label %if.end153.i, label %for.inc92.10.i.i

for.inc92.10.i.i:                                 ; preds = %for.inc92.9.i.i
  %bcmp411.i = call i32 @bcmp(ptr noundef nonnull dereferenceable(6) %buff.i, ptr noundef nonnull dereferenceable(6) @.str.149, i64 6)
  %cmp88.11.i.i = icmp eq i32 %bcmp411.i, 0
  br i1 %cmp88.11.i.i, label %if.end153.i, label %for.inc92.11.i.i

for.inc92.11.i.i:                                 ; preds = %for.inc92.10.i.i
  %lhsv412.i = load i64, ptr %buff.i, align 16
  %.not414.i = icmp eq i64 %lhsv412.i, 20358893470631251
  %43 = trunc i64 %lhsv412.i to i8
  br i1 %.not414.i, label %if.end153.i, label %for.inc92.12.i.i

for.inc92.12.i.i:                                 ; preds = %for.inc92.11.i.i
  %bcmp415.i = call i32 @bcmp(ptr noundef nonnull dereferenceable(7) %buff.i, ptr noundef nonnull dereferenceable(7) @.str.151, i64 7)
  %cmp88.13.i.i = icmp eq i32 %bcmp415.i, 0
  br i1 %cmp88.13.i.i, label %if.end153.i, label %for.inc92.13.i.i

for.inc92.13.i.i:                                 ; preds = %for.inc92.12.i.i
  %bcmp416.i = call i32 @bcmp(ptr noundef nonnull dereferenceable(6) %buff.i, ptr noundef nonnull dereferenceable(6) @.str.152, i64 6)
  %cmp88.14.i.i = icmp eq i32 %bcmp416.i, 0
  br i1 %cmp88.14.i.i, label %if.end153.i, label %for.inc92.14.i.i

for.inc92.14.i.i:                                 ; preds = %for.inc92.13.i.i
  %bcmp417.i = call i32 @bcmp(ptr noundef nonnull dereferenceable(6) %buff.i, ptr noundef nonnull dereferenceable(6) @.str.153, i64 6)
  %cmp88.15.i.i = icmp eq i32 %bcmp417.i, 0
  br i1 %cmp88.15.i.i, label %if.end153.i, label %for.inc92.15.i.i

for.inc92.15.i.i:                                 ; preds = %for.inc92.14.i.i
  %bcmp418.i = call i32 @bcmp(ptr noundef nonnull dereferenceable(9) %buff.i, ptr noundef nonnull dereferenceable(9) @.str.154, i64 9)
  %cmp88.16.i.i = icmp eq i32 %bcmp418.i, 0
  br i1 %cmp88.16.i.i, label %if.end153.i, label %for.inc92.16.i.i

for.inc92.16.i.i:                                 ; preds = %for.inc92.15.i.i
  %.not421.i = icmp eq i64 %lhsv412.i, 20358859227223892
  br i1 %.not421.i, label %if.end153.i, label %for.inc92.17.i.i

for.inc92.17.i.i:                                 ; preds = %for.inc92.16.i.i
  %44 = and i64 %lhsv412.i, 4294967295
  %.not424.i = icmp eq i64 %44, 5195585
  br i1 %.not424.i, label %if.end153.i, label %for.inc92.18.i.i

for.inc92.18.i.i:                                 ; preds = %for.inc92.17.i.i
  %bcmp425.i = call i32 @bcmp(ptr noundef nonnull dereferenceable(6) %buff.i, ptr noundef nonnull dereferenceable(6) @.str.157, i64 6)
  %cmp88.19.i.i = icmp eq i32 %bcmp425.i, 0
  br i1 %cmp88.19.i.i, label %if.end153.i, label %for.inc92.19.i.i

for.inc92.19.i.i:                                 ; preds = %for.inc92.18.i.i
  %cmp95.i.i = icmp eq i64 %call12.i.i, 1
  br i1 %cmp95.i.i, label %for.cond98.preheader.i.i, label %if.end114.i.i

for.cond98.preheader.i.i:                         ; preds = %for.inc92.19.i.i
  switch i8 %43, label %for.body117.i.i.preheader [
    i8 65, label %if.end153.i
    i8 66, label %cleanup.fold.split.i.i
    i8 67, label %cleanup.fold.split237.i.i
    i8 68, label %cleanup.fold.split238.i.i
    i8 69, label %cleanup.fold.split239.i.i
    i8 70, label %cleanup.fold.split240.i.i
    i8 71, label %cleanup.fold.split241.i.i
    i8 72, label %cleanup.fold.split242.i.i
    i8 73, label %cleanup.fold.split243.i.i
    i8 74, label %cleanup.fold.split244.i.i
    i8 75, label %cleanup.fold.split245.i.i
    i8 76, label %cleanup.fold.split246.i.i
    i8 77, label %cleanup.fold.split247.i.i
    i8 78, label %cleanup.fold.split248.i.i
    i8 79, label %cleanup.fold.split249.i.i
    i8 80, label %cleanup.fold.split250.i.i
    i8 81, label %cleanup.fold.split251.i.i
    i8 82, label %cleanup.fold.split252.i.i
    i8 83, label %cleanup.fold.split253.i.i
    i8 84, label %cleanup.fold.split254.i.i
    i8 85, label %cleanup.fold.split255.i.i
    i8 86, label %cleanup.fold.split256.i.i
    i8 87, label %cleanup.fold.split257.i.i
    i8 88, label %cleanup.fold.split258.i.i
    i8 89, label %cleanup.fold.split259.i.i
    i8 90, label %cleanup.fold.split260.i.i
    i8 0, label %if.then147.i
  ]

if.end114.i.i:                                    ; preds = %for.inc92.19.i.i
  %tobool116.not218.i.i = icmp eq i8 %43, 0
  br i1 %tobool116.not218.i.i, label %if.then147.i, label %for.body117.i.i.preheader

for.body117.i.i.preheader:                        ; preds = %if.end114.i.i, %for.cond98.preheader.i.i
  br label %for.body117.i.i

for.body117.i.i:                                  ; preds = %for.body117.i.i, %for.body117.i.i.preheader
  %45 = phi i8 [ %46, %for.body117.i.i ], [ %43, %for.body117.i.i.preheader ]
  %period_found.0221.i.i = phi i8 [ %period_found.1.i.i, %for.body117.i.i ], [ 0, %for.body117.i.i.preheader ]
  %p.1220.i.i = phi ptr [ %p.2.i.i, %for.body117.i.i ], [ %buff.i, %for.body117.i.i.preheader ]
  %q.0219.i.i = phi ptr [ %incdec.ptr125.i.i, %for.body117.i.i ], [ %buff.i, %for.body117.i.i.preheader ]
  %cmp119.i.i = icmp ne i8 %45, 46
  %p.2.idx.i.i = zext i1 %cmp119.i.i to i64
  %p.2.i.i = getelementptr inbounds i8, ptr %p.1220.i.i, i64 %p.2.idx.i.i
  %period_found.1.i.i = select i1 %cmp119.i.i, i8 %period_found.0221.i.i, i8 1
  %incdec.ptr125.i.i = getelementptr inbounds i8, ptr %q.0219.i.i, i64 1
  %46 = load i8, ptr %incdec.ptr125.i.i, align 1, !tbaa !14
  store i8 %46, ptr %p.2.i.i, align 1, !tbaa !14
  %tobool116.not.i.i = icmp eq i8 %46, 0
  br i1 %tobool116.not.i.i, label %for.end126.i.i, label %for.body117.i.i, !llvm.loop !124

for.end126.i.i:                                   ; preds = %for.body117.i.i
  %47 = and i8 %period_found.1.i.i, 1
  %48 = icmp eq i8 %47, 0
  br i1 %48, label %if.then147.i, label %land.lhs.true.i.i

land.lhs.true.i.i:                                ; preds = %for.end126.i.i
  %call129.i.i = call fastcc ptr @lookup_zone(ptr noundef nonnull %pc, ptr noundef nonnull %buff.i) #42
  %tobool130.not.i.i = icmp eq ptr %call129.i.i, null
  br i1 %tobool130.not.i.i, label %if.then147.i, label %if.end153.i

cleanup.fold.split.i.i:                           ; preds = %for.cond98.preheader.i.i
  br label %if.end153.i

cleanup.fold.split237.i.i:                        ; preds = %for.cond98.preheader.i.i
  br label %if.end153.i

cleanup.fold.split238.i.i:                        ; preds = %for.cond98.preheader.i.i
  br label %if.end153.i

cleanup.fold.split239.i.i:                        ; preds = %for.cond98.preheader.i.i
  br label %if.end153.i

cleanup.fold.split240.i.i:                        ; preds = %for.cond98.preheader.i.i
  br label %if.end153.i

cleanup.fold.split241.i.i:                        ; preds = %for.cond98.preheader.i.i
  br label %if.end153.i

cleanup.fold.split242.i.i:                        ; preds = %for.cond98.preheader.i.i
  br label %if.end153.i

cleanup.fold.split243.i.i:                        ; preds = %for.cond98.preheader.i.i
  br label %if.end153.i

cleanup.fold.split244.i.i:                        ; preds = %for.cond98.preheader.i.i
  br label %if.end153.i

cleanup.fold.split245.i.i:                        ; preds = %for.cond98.preheader.i.i
  br label %if.end153.i

cleanup.fold.split246.i.i:                        ; preds = %for.cond98.preheader.i.i
  br label %if.end153.i

cleanup.fold.split247.i.i:                        ; preds = %for.cond98.preheader.i.i
  br label %if.end153.i

cleanup.fold.split248.i.i:                        ; preds = %for.cond98.preheader.i.i
  br label %if.end153.i

cleanup.fold.split249.i.i:                        ; preds = %for.cond98.preheader.i.i
  br label %if.end153.i

cleanup.fold.split250.i.i:                        ; preds = %for.cond98.preheader.i.i
  br label %if.end153.i

cleanup.fold.split251.i.i:                        ; preds = %for.cond98.preheader.i.i
  br label %if.end153.i

cleanup.fold.split252.i.i:                        ; preds = %for.cond98.preheader.i.i
  br label %if.end153.i

cleanup.fold.split253.i.i:                        ; preds = %for.cond98.preheader.i.i
  br label %if.end153.i

cleanup.fold.split254.i.i:                        ; preds = %for.cond98.preheader.i.i
  br label %if.end153.i

cleanup.fold.split255.i.i:                        ; preds = %for.cond98.preheader.i.i
  br label %if.end153.i

cleanup.fold.split256.i.i:                        ; preds = %for.cond98.preheader.i.i
  br label %if.end153.i

cleanup.fold.split257.i.i:                        ; preds = %for.cond98.preheader.i.i
  br label %if.end153.i

cleanup.fold.split258.i.i:                        ; preds = %for.cond98.preheader.i.i
  br label %if.end153.i

cleanup.fold.split259.i.i:                        ; preds = %for.cond98.preheader.i.i
  br label %if.end153.i

cleanup.fold.split260.i.i:                        ; preds = %for.cond98.preheader.i.i
  br label %if.end153.i

if.then147.i:                                     ; preds = %land.lhs.true.i.i, %for.end126.i.i, %if.end114.i.i, %for.cond98.preheader.i.i
  %pc.val.i = load i8, ptr %0, align 1, !tbaa !125, !range !56, !noundef !57
  %tobool.i.not.i = icmp eq i8 %pc.val.i, 0
  br i1 %tobool.i.not.i, label %cleanup156.i, label %if.then149.i

if.then149.i:                                     ; preds = %if.then147.i
  %call150.i = call ptr @dcgettext(ptr noundef nonnull @.str.117, ptr noundef nonnull @.str.48, i32 noundef 5) #41
  call void (ptr, ...) @dbg_printf(ptr noundef %call150.i, ptr noundef nonnull %buff.i)
  br label %cleanup156.i

if.end153.i:                                      ; preds = %cleanup.fold.split260.i.i, %cleanup.fold.split259.i.i, %cleanup.fold.split258.i.i, %cleanup.fold.split257.i.i, %cleanup.fold.split256.i.i, %cleanup.fold.split255.i.i, %cleanup.fold.split254.i.i, %cleanup.fold.split253.i.i, %cleanup.fold.split252.i.i, %cleanup.fold.split251.i.i, %cleanup.fold.split250.i.i, %cleanup.fold.split249.i.i, %cleanup.fold.split248.i.i, %cleanup.fold.split247.i.i, %cleanup.fold.split246.i.i, %cleanup.fold.split245.i.i, %cleanup.fold.split244.i.i, %cleanup.fold.split243.i.i, %cleanup.fold.split242.i.i, %cleanup.fold.split241.i.i, %cleanup.fold.split240.i.i, %cleanup.fold.split239.i.i, %cleanup.fold.split238.i.i, %cleanup.fold.split237.i.i, %cleanup.fold.split.i.i, %land.lhs.true.i.i, %for.cond98.preheader.i.i, %for.inc92.18.i.i, %for.inc92.17.i.i, %for.inc92.16.i.i, %for.inc92.15.i.i, %for.inc92.14.i.i, %for.inc92.13.i.i, %for.inc92.12.i.i, %for.inc92.11.i.i, %for.inc92.10.i.i, %for.inc92.9.i.i, %for.inc92.8.i.i, %for.inc92.7.i.i, %for.inc92.6.i.i, %for.inc92.5.i.i, %for.inc92.4.i.i, %for.inc92.3.i.i, %for.inc92.2.i.i, %for.inc92.1.i.i, %for.inc92.i.i, %if.end81.i.i, %for.inc76.8.i.i, %for.inc76.7.i.i, %for.inc76.6.i.i, %for.inc76.5.i.i, %for.inc76.4.i.i, %for.inc76.3.i.i, %for.inc76.2.i.i, %for.inc76.1.i.i, %for.inc76.i.i, %if.then63.i.i, %for.inc56.8.i.i, %for.inc56.7.i.i, %for.inc56.6.i.i, %for.inc56.5.i.i, %for.inc56.4.i.i, %for.inc56.3.i.i, %for.inc56.2.i.i, %for.inc56.1.i.i, %for.inc56.i.i, %for.body49.preheader.i.i, %if.end40.i.i, %for.end36.i.i, %for.inc34.22.i.i, %for.inc34.21.i.i, %for.inc34.20.i.i, %for.inc34.19.i.i, %for.inc34.18.i.i, %for.inc34.17.i.i, %for.inc34.16.i.i, %for.inc34.15.i.i, %for.inc34.14.i.i, %for.inc34.13.i.i, %for.inc34.12.i.i, %for.inc34.11.i.i, %for.inc34.10.i.i, %for.inc34.9.i.i, %for.inc34.8.i.i, %for.inc34.7.i.i, %for.inc34.6.i.i, %for.inc34.5.i.i, %for.inc34.4.i.i, %for.inc34.3.i.i, %for.inc34.2.i.i, %for.inc34.1.i.i, %for.inc34.i.i, %lor.end.split.i.i, %for.inc34.us.22.i.i, %for.inc34.us.21.i.i, %for.inc34.us.20.i.i, %for.inc34.us.19.i.i, %for.inc34.us.18.i.i, %for.inc34.us.17.i.i, %for.inc34.us.16.i.i, %for.inc34.us.15.i.i, %for.inc34.us.14.i.i, %for.inc34.us.13.i.i, %for.inc34.us.12.i.i, %for.inc34.us.11.i.i, %for.inc34.us.10.i.i, %for.inc34.us.9.i.i, %for.inc34.us.8.i.i, %for.inc34.us.7.i.i, %for.inc34.us.6.i.i, %for.inc34.us.5.i.i, %for.inc34.us.4.i.i, %for.inc34.us.3.i.i, %for.inc34.us.2.i.i, %for.inc34.us.1.i.i, %for.inc34.us.i.i, %lor.end.split.us.i.i, %for.inc9.2.i.i, %for.inc9.1.i.i, %for.inc9.i.i, %for.cond3.preheader.i.i
  %retval.0.i296.ph.i = phi ptr [ getelementptr inbounds ([27 x %struct.table], ptr @military_table, i64 0, i64 25), %cleanup.fold.split260.i.i ], [ getelementptr inbounds ([27 x %struct.table], ptr @military_table, i64 0, i64 24), %cleanup.fold.split259.i.i ], [ getelementptr inbounds ([27 x %struct.table], ptr @military_table, i64 0, i64 23), %cleanup.fold.split258.i.i ], [ getelementptr inbounds ([27 x %struct.table], ptr @military_table, i64 0, i64 22), %cleanup.fold.split257.i.i ], [ getelementptr inbounds ([27 x %struct.table], ptr @military_table, i64 0, i64 21), %cleanup.fold.split256.i.i ], [ getelementptr inbounds ([27 x %struct.table], ptr @military_table, i64 0, i64 20), %cleanup.fold.split255.i.i ], [ getelementptr inbounds ([27 x %struct.table], ptr @military_table, i64 0, i64 19), %cleanup.fold.split254.i.i ], [ getelementptr inbounds ([27 x %struct.table], ptr @military_table, i64 0, i64 18), %cleanup.fold.split253.i.i ], [ getelementptr inbounds ([27 x %struct.table], ptr @military_table, i64 0, i64 17), %cleanup.fold.split252.i.i ], [ getelementptr inbounds ([27 x %struct.table], ptr @military_table, i64 0, i64 16), %cleanup.fold.split251.i.i ], [ getelementptr inbounds ([27 x %struct.table], ptr @military_table, i64 0, i64 15), %cleanup.fold.split250.i.i ], [ getelementptr inbounds ([27 x %struct.table], ptr @military_table, i64 0, i64 14), %cleanup.fold.split249.i.i ], [ getelementptr inbounds ([27 x %struct.table], ptr @military_table, i64 0, i64 13), %cleanup.fold.split248.i.i ], [ getelementptr inbounds ([27 x %struct.table], ptr @military_table, i64 0, i64 12), %cleanup.fold.split247.i.i ], [ getelementptr inbounds ([27 x %struct.table], ptr @military_table, i64 0, i64 11), %cleanup.fold.split246.i.i ], [ getelementptr inbounds ([27 x %struct.table], ptr @military_table, i64 0, i64 10), %cleanup.fold.split245.i.i ], [ getelementptr inbounds ([27 x %struct.table], ptr @military_table, i64 0, i64 9), %cleanup.fold.split244.i.i ], [ getelementptr inbounds ([27 x %struct.table], ptr @military_table, i64 0, i64 8), %cleanup.fold.split243.i.i ], [ getelementptr inbounds ([27 x %struct.table], ptr @military_table, i64 0, i64 7), %cleanup.fold.split242.i.i ], [ getelementptr inbounds ([27 x %struct.table], ptr @military_table, i64 0, i64 6), %cleanup.fold.split241.i.i ], [ getelementptr inbounds ([27 x %struct.table], ptr @military_table, i64 0, i64 5), %cleanup.fold.split240.i.i ], [ getelementptr inbounds ([27 x %struct.table], ptr @military_table, i64 0, i64 4), %cleanup.fold.split239.i.i ], [ getelementptr inbounds ([27 x %struct.table], ptr @military_table, i64 0, i64 3), %cleanup.fold.split238.i.i ], [ getelementptr inbounds ([27 x %struct.table], ptr @military_table, i64 0, i64 2), %cleanup.fold.split237.i.i ], [ getelementptr inbounds ([27 x %struct.table], ptr @military_table, i64 0, i64 1), %cleanup.fold.split.i.i ], [ getelementptr inbounds ([5 x %struct.table], ptr @meridian_table, i64 0, i64 3), %for.inc9.2.i.i ], [ getelementptr inbounds ([5 x %struct.table], ptr @meridian_table, i64 0, i64 2), %for.inc9.1.i.i ], [ getelementptr inbounds ([5 x %struct.table], ptr @meridian_table, i64 0, i64 1), %for.inc9.i.i ], [ @meridian_table, %for.cond3.preheader.i.i ], [ getelementptr inbounds ([25 x %struct.table], ptr @month_and_day_table, i64 0, i64 23), %for.inc34.us.22.i.i ], [ getelementptr inbounds ([25 x %struct.table], ptr @month_and_day_table, i64 0, i64 22), %for.inc34.us.21.i.i ], [ getelementptr inbounds ([25 x %struct.table], ptr @month_and_day_table, i64 0, i64 21), %for.inc34.us.20.i.i ], [ getelementptr inbounds ([25 x %struct.table], ptr @month_and_day_table, i64 0, i64 20), %for.inc34.us.19.i.i ], [ getelementptr inbounds ([25 x %struct.table], ptr @month_and_day_table, i64 0, i64 19), %for.inc34.us.18.i.i ], [ getelementptr inbounds ([25 x %struct.table], ptr @month_and_day_table, i64 0, i64 18), %for.inc34.us.17.i.i ], [ getelementptr inbounds ([25 x %struct.table], ptr @month_and_day_table, i64 0, i64 17), %for.inc34.us.16.i.i ], [ getelementptr inbounds ([25 x %struct.table], ptr @month_and_day_table, i64 0, i64 16), %for.inc34.us.15.i.i ], [ getelementptr inbounds ([25 x %struct.table], ptr @month_and_day_table, i64 0, i64 15), %for.inc34.us.14.i.i ], [ getelementptr inbounds ([25 x %struct.table], ptr @month_and_day_table, i64 0, i64 14), %for.inc34.us.13.i.i ], [ getelementptr inbounds ([25 x %struct.table], ptr @month_and_day_table, i64 0, i64 13), %for.inc34.us.12.i.i ], [ getelementptr inbounds ([25 x %struct.table], ptr @month_and_day_table, i64 0, i64 12), %for.inc34.us.11.i.i ], [ getelementptr inbounds ([25 x %struct.table], ptr @month_and_day_table, i64 0, i64 11), %for.inc34.us.10.i.i ], [ getelementptr inbounds ([25 x %struct.table], ptr @month_and_day_table, i64 0, i64 10), %for.inc34.us.9.i.i ], [ getelementptr inbounds ([25 x %struct.table], ptr @month_and_day_table, i64 0, i64 9), %for.inc34.us.8.i.i ], [ getelementptr inbounds ([25 x %struct.table], ptr @month_and_day_table, i64 0, i64 8), %for.inc34.us.7.i.i ], [ getelementptr inbounds ([25 x %struct.table], ptr @month_and_day_table, i64 0, i64 7), %for.inc34.us.6.i.i ], [ getelementptr inbounds ([25 x %struct.table], ptr @month_and_day_table, i64 0, i64 6), %for.inc34.us.5.i.i ], [ getelementptr inbounds ([25 x %struct.table], ptr @month_and_day_table, i64 0, i64 5), %for.inc34.us.4.i.i ], [ getelementptr inbounds ([25 x %struct.table], ptr @month_and_day_table, i64 0, i64 4), %for.inc34.us.3.i.i ], [ getelementptr inbounds ([25 x %struct.table], ptr @month_and_day_table, i64 0, i64 3), %for.inc34.us.2.i.i ], [ getelementptr inbounds ([25 x %struct.table], ptr @month_and_day_table, i64 0, i64 2), %for.inc34.us.1.i.i ], [ getelementptr inbounds ([25 x %struct.table], ptr @month_and_day_table, i64 0, i64 1), %for.inc34.us.i.i ], [ @month_and_day_table, %lor.end.split.us.i.i ], [ getelementptr inbounds ([25 x %struct.table], ptr @month_and_day_table, i64 0, i64 23), %for.inc34.22.i.i ], [ getelementptr inbounds ([25 x %struct.table], ptr @month_and_day_table, i64 0, i64 22), %for.inc34.21.i.i ], [ getelementptr inbounds ([25 x %struct.table], ptr @month_and_day_table, i64 0, i64 21), %for.inc34.20.i.i ], [ getelementptr inbounds ([25 x %struct.table], ptr @month_and_day_table, i64 0, i64 20), %for.inc34.19.i.i ], [ getelementptr inbounds ([25 x %struct.table], ptr @month_and_day_table, i64 0, i64 19), %for.inc34.18.i.i ], [ getelementptr inbounds ([25 x %struct.table], ptr @month_and_day_table, i64 0, i64 18), %for.inc34.17.i.i ], [ getelementptr inbounds ([25 x %struct.table], ptr @month_and_day_table, i64 0, i64 17), %for.inc34.16.i.i ], [ getelementptr inbounds ([25 x %struct.table], ptr @month_and_day_table, i64 0, i64 16), %for.inc34.15.i.i ], [ getelementptr inbounds ([25 x %struct.table], ptr @month_and_day_table, i64 0, i64 15), %for.inc34.14.i.i ], [ getelementptr inbounds ([25 x %struct.table], ptr @month_and_day_table, i64 0, i64 14), %for.inc34.13.i.i ], [ getelementptr inbounds ([25 x %struct.table], ptr @month_and_day_table, i64 0, i64 13), %for.inc34.12.i.i ], [ getelementptr inbounds ([25 x %struct.table], ptr @month_and_day_table, i64 0, i64 12), %for.inc34.11.i.i ], [ getelementptr inbounds ([25 x %struct.table], ptr @month_and_day_table, i64 0, i64 11), %for.inc34.10.i.i ], [ getelementptr inbounds ([25 x %struct.table], ptr @month_and_day_table, i64 0, i64 10), %for.inc34.9.i.i ], [ getelementptr inbounds ([25 x %struct.table], ptr @month_and_day_table, i64 0, i64 9), %for.inc34.8.i.i ], [ getelementptr inbounds ([25 x %struct.table], ptr @month_and_day_table, i64 0, i64 8), %for.inc34.7.i.i ], [ getelementptr inbounds ([25 x %struct.table], ptr @month_and_day_table, i64 0, i64 7), %for.inc34.6.i.i ], [ getelementptr inbounds ([25 x %struct.table], ptr @month_and_day_table, i64 0, i64 6), %for.inc34.5.i.i ], [ getelementptr inbounds ([25 x %struct.table], ptr @month_and_day_table, i64 0, i64 5), %for.inc34.4.i.i ], [ getelementptr inbounds ([25 x %struct.table], ptr @month_and_day_table, i64 0, i64 4), %for.inc34.3.i.i ], [ getelementptr inbounds ([25 x %struct.table], ptr @month_and_day_table, i64 0, i64 3), %for.inc34.2.i.i ], [ getelementptr inbounds ([25 x %struct.table], ptr @month_and_day_table, i64 0, i64 2), %for.inc34.1.i.i ], [ getelementptr inbounds ([25 x %struct.table], ptr @month_and_day_table, i64 0, i64 1), %for.inc34.i.i ], [ @month_and_day_table, %lor.end.split.i.i ], [ getelementptr inbounds ([11 x %struct.table], ptr @time_units_table, i64 0, i64 9), %for.inc56.8.i.i ], [ getelementptr inbounds ([11 x %struct.table], ptr @time_units_table, i64 0, i64 8), %for.inc56.7.i.i ], [ getelementptr inbounds ([11 x %struct.table], ptr @time_units_table, i64 0, i64 7), %for.inc56.6.i.i ], [ getelementptr inbounds ([11 x %struct.table], ptr @time_units_table, i64 0, i64 6), %for.inc56.5.i.i ], [ getelementptr inbounds ([11 x %struct.table], ptr @time_units_table, i64 0, i64 5), %for.inc56.4.i.i ], [ getelementptr inbounds ([11 x %struct.table], ptr @time_units_table, i64 0, i64 4), %for.inc56.3.i.i ], [ getelementptr inbounds ([11 x %struct.table], ptr @time_units_table, i64 0, i64 3), %for.inc56.2.i.i ], [ getelementptr inbounds ([11 x %struct.table], ptr @time_units_table, i64 0, i64 2), %for.inc56.1.i.i ], [ getelementptr inbounds ([11 x %struct.table], ptr @time_units_table, i64 0, i64 1), %for.inc56.i.i ], [ @time_units_table, %for.body49.preheader.i.i ], [ getelementptr inbounds ([11 x %struct.table], ptr @time_units_table, i64 0, i64 9), %for.inc76.8.i.i ], [ getelementptr inbounds ([11 x %struct.table], ptr @time_units_table, i64 0, i64 8), %for.inc76.7.i.i ], [ getelementptr inbounds ([11 x %struct.table], ptr @time_units_table, i64 0, i64 7), %for.inc76.6.i.i ], [ getelementptr inbounds ([11 x %struct.table], ptr @time_units_table, i64 0, i64 6), %for.inc76.5.i.i ], [ getelementptr inbounds ([11 x %struct.table], ptr @time_units_table, i64 0, i64 5), %for.inc76.4.i.i ], [ getelementptr inbounds ([11 x %struct.table], ptr @time_units_table, i64 0, i64 4), %for.inc76.3.i.i ], [ getelementptr inbounds ([11 x %struct.table], ptr @time_units_table, i64 0, i64 3), %for.inc76.2.i.i ], [ getelementptr inbounds ([11 x %struct.table], ptr @time_units_table, i64 0, i64 2), %for.inc76.1.i.i ], [ getelementptr inbounds ([11 x %struct.table], ptr @time_units_table, i64 0, i64 1), %for.inc76.i.i ], [ @time_units_table, %if.then63.i.i ], [ getelementptr inbounds ([21 x %struct.table], ptr @relative_time_table, i64 0, i64 19), %for.inc92.18.i.i ], [ getelementptr inbounds ([21 x %struct.table], ptr @relative_time_table, i64 0, i64 18), %for.inc92.17.i.i ], [ getelementptr inbounds ([21 x %struct.table], ptr @relative_time_table, i64 0, i64 17), %for.inc92.16.i.i ], [ getelementptr inbounds ([21 x %struct.table], ptr @relative_time_table, i64 0, i64 16), %for.inc92.15.i.i ], [ getelementptr inbounds ([21 x %struct.table], ptr @relative_time_table, i64 0, i64 15), %for.inc92.14.i.i ], [ getelementptr inbounds ([21 x %struct.table], ptr @relative_time_table, i64 0, i64 14), %for.inc92.13.i.i ], [ getelementptr inbounds ([21 x %struct.table], ptr @relative_time_table, i64 0, i64 13), %for.inc92.12.i.i ], [ getelementptr inbounds ([21 x %struct.table], ptr @relative_time_table, i64 0, i64 12), %for.inc92.11.i.i ], [ getelementptr inbounds ([21 x %struct.table], ptr @relative_time_table, i64 0, i64 11), %for.inc92.10.i.i ], [ getelementptr inbounds ([21 x %struct.table], ptr @relative_time_table, i64 0, i64 10), %for.inc92.9.i.i ], [ getelementptr inbounds ([21 x %struct.table], ptr @relative_time_table, i64 0, i64 9), %for.inc92.8.i.i ], [ getelementptr inbounds ([21 x %struct.table], ptr @relative_time_table, i64 0, i64 8), %for.inc92.7.i.i ], [ getelementptr inbounds ([21 x %struct.table], ptr @relative_time_table, i64 0, i64 7), %for.inc92.6.i.i ], [ getelementptr inbounds ([21 x %struct.table], ptr @relative_time_table, i64 0, i64 6), %for.inc92.5.i.i ], [ getelementptr inbounds ([21 x %struct.table], ptr @relative_time_table, i64 0, i64 5), %for.inc92.4.i.i ], [ getelementptr inbounds ([21 x %struct.table], ptr @relative_time_table, i64 0, i64 4), %for.inc92.3.i.i ], [ getelementptr inbounds ([21 x %struct.table], ptr @relative_time_table, i64 0, i64 3), %for.inc92.2.i.i ], [ getelementptr inbounds ([21 x %struct.table], ptr @relative_time_table, i64 0, i64 2), %for.inc92.1.i.i ], [ getelementptr inbounds ([21 x %struct.table], ptr @relative_time_table, i64 0, i64 1), %for.inc92.i.i ], [ @relative_time_table, %if.end81.i.i ], [ @military_table, %for.cond98.preheader.i.i ], [ %call129.i.i, %land.lhs.true.i.i ], [ @dst_table, %if.end40.i.i ], [ %call37.i.i, %for.end36.i.i ]
  %value154.i = getelementptr inbounds %struct.table, ptr %retval.0.i296.ph.i, i64 0, i32 2
  %49 = load i32, ptr %value154.i, align 4, !tbaa !126
  %yylval.sroa.0.sroa.0.0.extract.trunc = trunc i32 %49 to i8
  %50 = ashr i32 %49, 8
  %yylval.sroa.0.sroa.7.0.extract.trunc = sext i32 %50 to i56
  %type.i = getelementptr inbounds %struct.table, ptr %retval.0.i296.ph.i, i64 0, i32 1
  %51 = load i32, ptr %type.i, align 8, !tbaa !127
  br label %cleanup156.i

cleanup156.i:                                     ; preds = %if.end153.i, %if.then149.i, %if.then147.i
  %yylval.sroa.0.sroa.7.sroa.0.2 = phi i56 [ %yylval.sroa.0.sroa.7.0.extract.trunc, %if.end153.i ], [ %yylval.sroa.0.sroa.7.sroa.0.11805, %if.then147.i ], [ %yylval.sroa.0.sroa.7.sroa.0.11805, %if.then149.i ]
  %yylval.sroa.0.sroa.0.2 = phi i8 [ %yylval.sroa.0.sroa.0.0.extract.trunc, %if.end153.i ], [ %yylval.sroa.0.sroa.0.11806, %if.then147.i ], [ %yylval.sroa.0.sroa.0.11806, %if.then149.i ]
  %retval.4.i = phi i32 [ %51, %if.end153.i ], [ 63, %if.then147.i ], [ 63, %if.then149.i ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %buff.i) #41
  br label %if.end61

if.then163.i:                                     ; preds = %switch.early.test.i
  %incdec.ptr165.i = getelementptr inbounds i8, ptr %pc.promoted.i, i64 1
  store ptr %incdec.ptr165.i, ptr %pc, align 8, !tbaa !111
  %52 = load i8, ptr %pc.promoted.i, align 1, !tbaa !14
  %conv167.i = zext i8 %52 to i32
  br label %if.end61

do.body169.i:                                     ; preds = %do.cond190.i, %switch.early.test.i
  %53 = phi ptr [ %incdec.ptr171.i, %do.cond190.i ], [ %pc.promoted.i, %switch.early.test.i ]
  %count.0.i = phi i64 [ %count.1.i, %do.cond190.i ], [ 0, %switch.early.test.i ]
  %incdec.ptr171.i = getelementptr inbounds i8, ptr %53, i64 1
  store ptr %incdec.ptr171.i, ptr %pc, align 8, !tbaa !111
  %54 = load i8, ptr %53, align 1, !tbaa !14
  switch i8 %54, label %do.cond190.i [
    i8 0, label %if.end77
    i8 40, label %if.then181.i
    i8 41, label %if.then187.i
  ]

if.then181.i:                                     ; preds = %do.body169.i
  %inc182.i = add nsw i64 %count.0.i, 1
  br label %do.cond190.i

if.then187.i:                                     ; preds = %do.body169.i
  %dec.i = add nsw i64 %count.0.i, -1
  br label %do.cond190.i

do.cond190.i:                                     ; preds = %if.then187.i, %if.then181.i, %do.body169.i
  %count.1.i = phi i64 [ %inc182.i, %if.then181.i ], [ %dec.i, %if.then187.i ], [ %count.0.i, %do.body169.i ]
  %cmp191.not.i = icmp eq i64 %count.1.i, 0
  br i1 %cmp191.not.i, label %while.cond.i.backedge, label %do.body169.i, !llvm.loop !128

if.end61:                                         ; preds = %if.then163.i, %cleanup156.i, %if.end56
  %yylval.sroa.0.sroa.7.sroa.0.4 = phi i56 [ %yylval.sroa.0.sroa.7.sroa.0.11805, %if.end56 ], [ %yylval.sroa.0.sroa.7.sroa.0.11805, %if.then163.i ], [ %yylval.sroa.0.sroa.7.sroa.0.2, %cleanup156.i ]
  %yylval.sroa.0.sroa.0.4 = phi i8 [ %yylval.sroa.0.sroa.0.11806, %if.end56 ], [ %yylval.sroa.0.sroa.0.11806, %if.then163.i ], [ %yylval.sroa.0.sroa.0.2, %cleanup156.i ]
  %yychar.2 = phi i32 [ %yychar.11814, %if.end56 ], [ %conv167.i, %if.then163.i ], [ %retval.4.i, %cleanup156.i ]
  %cmp62 = icmp slt i32 %yychar.2, 1
  br i1 %cmp62, label %if.end77, label %if.else

if.else:                                          ; preds = %if.end61
  %cmp65 = icmp eq i32 %yychar.2, 256
  br i1 %cmp65, label %yyreturnlab, label %if.else68

if.else68:                                        ; preds = %if.else
  %cmp71 = icmp ult i32 %yychar.2, 278
  br i1 %cmp71, label %cond.true, label %if.end77

cond.true:                                        ; preds = %if.else68, %if.else109.i, %if.end102.i, %if.then98.i, %if.end35.i, %do.body.i
  %yychar.2173017441759 = phi i32 [ %yychar.2, %if.else68 ], [ %cond117.i, %if.else109.i ], [ %cond106.i, %if.end102.i ], [ 63, %if.then98.i ], [ 63, %if.end35.i ], [ 63, %do.body.i ]
  %yylval.sroa.7.3172817451758 = phi i64 [ %yylval.sroa.7.11808, %if.else68 ], [ %13, %if.else109.i ], [ %conv103.i, %if.end102.i ], [ %yylval.sroa.7.11808, %if.then98.i ], [ %yylval.sroa.7.11808, %if.end35.i ], [ %yylval.sroa.7.11808, %do.body.i ]
  %yylval.sroa.9.3172617461757 = phi i64 [ %yylval.sroa.9.11807, %if.else68 ], [ %sub.ptr.sub.i, %if.else109.i ], [ %yylval.sroa.9.11807, %if.end102.i ], [ %yylval.sroa.9.11807, %if.then98.i ], [ %yylval.sroa.9.11807, %if.end35.i ], [ %yylval.sroa.9.11807, %do.body.i ]
  %yylval.sroa.0.sroa.0.4172417471756 = phi i8 [ %yylval.sroa.0.sroa.0.4, %if.else68 ], [ %frombool.i, %if.else109.i ], [ %yylval.sroa.0.sroa.0.0.extract.trunc1692, %if.end102.i ], [ %yylval.sroa.0.sroa.0.11806, %if.then98.i ], [ %yylval.sroa.0.sroa.0.11806, %if.end35.i ], [ %yylval.sroa.0.sroa.0.11806, %do.body.i ]
  %yylval.sroa.0.sroa.7.sroa.0.4172217481755 = phi i56 [ %yylval.sroa.0.sroa.7.sroa.0.4, %if.else68 ], [ %yylval.sroa.0.sroa.7.sroa.0.11805, %if.else109.i ], [ %yylval.sroa.0.sroa.7.0.extract.trunc1695, %if.end102.i ], [ %yylval.sroa.0.sroa.7.sroa.0.11805, %if.then98.i ], [ %yylval.sroa.0.sroa.7.sroa.0.11805, %if.end35.i ], [ %yylval.sroa.0.sroa.7.sroa.0.11805, %do.body.i ]
  %idxprom73 = zext nneg i32 %yychar.2173017441759 to i64
  %arrayidx74 = getelementptr inbounds [278 x i8], ptr @yytranslate, i64 0, i64 %idxprom73
  %55 = load i8, ptr %arrayidx74, align 1, !tbaa !14
  %conv75 = sext i8 %55 to i32
  br label %if.end77

if.end77:                                         ; preds = %cond.true, %if.else68, %if.end61, %do.body169.i
  %yylval.sroa.7.31729 = phi i64 [ %yylval.sroa.7.11808, %if.end61 ], [ %yylval.sroa.7.3172817451758, %cond.true ], [ %yylval.sroa.7.11808, %if.else68 ], [ %yylval.sroa.7.11808, %do.body169.i ]
  %yylval.sroa.9.31727 = phi i64 [ %yylval.sroa.9.11807, %if.end61 ], [ %yylval.sroa.9.3172617461757, %cond.true ], [ %yylval.sroa.9.11807, %if.else68 ], [ %yylval.sroa.9.11807, %do.body169.i ]
  %yylval.sroa.0.sroa.0.41725 = phi i8 [ %yylval.sroa.0.sroa.0.4, %if.end61 ], [ %yylval.sroa.0.sroa.0.4172417471756, %cond.true ], [ %yylval.sroa.0.sroa.0.4, %if.else68 ], [ %yylval.sroa.0.sroa.0.11806, %do.body169.i ]
  %yylval.sroa.0.sroa.7.sroa.0.41723 = phi i56 [ %yylval.sroa.0.sroa.7.sroa.0.4, %if.end61 ], [ %yylval.sroa.0.sroa.7.sroa.0.4172217481755, %cond.true ], [ %yylval.sroa.0.sroa.7.sroa.0.4, %if.else68 ], [ %yylval.sroa.0.sroa.7.sroa.0.11805, %do.body169.i ]
  %yytoken.0 = phi i32 [ 0, %if.end61 ], [ %conv75, %cond.true ], [ 2, %if.else68 ], [ 0, %do.body169.i ]
  %yychar.3 = phi i32 [ 0, %if.end61 ], [ %yychar.2173017441759, %cond.true ], [ %yychar.2, %if.else68 ], [ 0, %do.body169.i ]
  %add78 = add nsw i32 %yytoken.0, %conv52
  %or.cond884 = icmp ugt i32 %add78, 114
  br i1 %or.cond884, label %yydefault, label %lor.lhs.false83

lor.lhs.false83:                                  ; preds = %if.end77
  %idxprom84 = zext nneg i32 %add78 to i64
  %arrayidx85 = getelementptr inbounds [115 x i8], ptr @yycheck, i64 0, i64 %idxprom84
  %56 = load i8, ptr %arrayidx85, align 1, !tbaa !14
  %conv86 = sext i8 %56 to i32
  %cmp87.not = icmp eq i32 %yytoken.0, %conv86
  br i1 %cmp87.not, label %if.end90, label %yydefault

if.end90:                                         ; preds = %lor.lhs.false83
  %arrayidx92 = getelementptr inbounds [115 x i8], ptr @yytable, i64 0, i64 %idxprom84
  %57 = load i8, ptr %arrayidx92, align 1, !tbaa !14
  %conv93 = sext i8 %57 to i32
  %cmp94 = icmp slt i8 %57, 1
  br i1 %cmp94, label %if.then96, label %if.end97

if.then96:                                        ; preds = %if.end90
  %sub = sub nsw i32 0, %conv93
  br label %yyreduce

if.end97:                                         ; preds = %if.end90
  %incdec.ptr101 = getelementptr inbounds %union.YYSTYPE, ptr %yyvsp.11809, i64 1
  %yylval.sroa.0.sroa.7.0.insert.ext = zext i56 %yylval.sroa.0.sroa.7.sroa.0.41723 to i64
  %yylval.sroa.0.sroa.7.0.insert.shift = shl nuw i64 %yylval.sroa.0.sroa.7.0.insert.ext, 8
  %yylval.sroa.0.sroa.0.0.insert.ext = zext i8 %yylval.sroa.0.sroa.0.41725 to i64
  %yylval.sroa.0.sroa.0.0.insert.insert = or disjoint i64 %yylval.sroa.0.sroa.7.0.insert.shift, %yylval.sroa.0.sroa.0.0.insert.ext
  store i64 %yylval.sroa.0.sroa.0.0.insert.insert, ptr %incdec.ptr101, align 8, !tbaa !129, !tbaa.struct !130
  %yylval.sroa.7.0.incdec.ptr101.sroa_idx = getelementptr inbounds %union.YYSTYPE, ptr %yyvsp.11809, i64 1, i32 0, i32 1
  store i64 %yylval.sroa.7.31729, ptr %yylval.sroa.7.0.incdec.ptr101.sroa_idx, align 8, !tbaa !129, !tbaa.struct !131
  %yylval.sroa.9.0.incdec.ptr101.sroa_idx = getelementptr inbounds %union.YYSTYPE, ptr %yyvsp.11809, i64 1, i32 0, i32 2
  store i64 %yylval.sroa.9.31727, ptr %yylval.sroa.9.0.incdec.ptr101.sroa_idx, align 8, !tbaa !129, !tbaa.struct !132
  %yylval.sroa.10.0.incdec.ptr101.sroa_idx = getelementptr inbounds %union.YYSTYPE, ptr %yyvsp.11809, i64 1, i32 0, i32 3
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %yylval.sroa.10.0.incdec.ptr101.sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) getelementptr inbounds (%union.YYSTYPE, ptr @yyparse.yyval_default, i64 0, i32 0, i32 3), i64 32, i1 false), !tbaa !129, !tbaa.struct !133
  br label %yynewstate

yydefault:                                        ; preds = %lor.lhs.false83, %if.end77, %yybackup
  %yylval.sroa.0.sroa.7.sroa.0.5 = phi i56 [ %yylval.sroa.0.sroa.7.sroa.0.11805, %yybackup ], [ %yylval.sroa.0.sroa.7.sroa.0.41723, %if.end77 ], [ %yylval.sroa.0.sroa.7.sroa.0.41723, %lor.lhs.false83 ]
  %yylval.sroa.0.sroa.0.5 = phi i8 [ %yylval.sroa.0.sroa.0.11806, %yybackup ], [ %yylval.sroa.0.sroa.0.41725, %if.end77 ], [ %yylval.sroa.0.sroa.0.41725, %lor.lhs.false83 ]
  %yylval.sroa.9.4 = phi i64 [ %yylval.sroa.9.11807, %yybackup ], [ %yylval.sroa.9.31727, %if.end77 ], [ %yylval.sroa.9.31727, %lor.lhs.false83 ]
  %yylval.sroa.7.4 = phi i64 [ %yylval.sroa.7.11808, %yybackup ], [ %yylval.sroa.7.31729, %if.end77 ], [ %yylval.sroa.7.31729, %lor.lhs.false83 ]
  %yychar.4 = phi i32 [ %yychar.11814, %yybackup ], [ %yychar.3, %if.end77 ], [ %yychar.3, %lor.lhs.false83 ]
  %arrayidx103 = getelementptr inbounds [115 x i8], ptr @yydefact, i64 0, i64 %idxprom
  %58 = load i8, ptr %arrayidx103, align 1, !tbaa !14
  %conv104 = sext i8 %58 to i32
  %cmp105 = icmp eq i8 %58, 0
  br i1 %cmp105, label %yyreturnlab, label %yyreduce

yyreduce:                                         ; preds = %yydefault, %if.then96
  %yylval.sroa.0.sroa.7.sroa.0.6 = phi i56 [ %yylval.sroa.0.sroa.7.sroa.0.5, %yydefault ], [ %yylval.sroa.0.sroa.7.sroa.0.41723, %if.then96 ]
  %yylval.sroa.0.sroa.0.6 = phi i8 [ %yylval.sroa.0.sroa.0.5, %yydefault ], [ %yylval.sroa.0.sroa.0.41725, %if.then96 ]
  %yylval.sroa.9.5 = phi i64 [ %yylval.sroa.9.4, %yydefault ], [ %yylval.sroa.9.31727, %if.then96 ]
  %yylval.sroa.7.5 = phi i64 [ %yylval.sroa.7.4, %yydefault ], [ %yylval.sroa.7.31729, %if.then96 ]
  %yyn.0 = phi i32 [ %conv104, %yydefault ], [ %sub, %if.then96 ]
  %yychar.5 = phi i32 [ %yychar.4, %yydefault ], [ %yychar.3, %if.then96 ]
  %idxprom109 = sext i32 %yyn.0 to i64
  %arrayidx110 = getelementptr inbounds [93 x i8], ptr @yyr2, i64 0, i64 %idxprom109
  %59 = load i8, ptr %arrayidx110, align 1, !tbaa !14
  %conv111 = sext i8 %59 to i64
  %sub112 = sub nsw i64 1, %conv111
  %arrayidx114 = getelementptr inbounds %union.YYSTYPE, ptr %yyvsp.11809, i64 %sub112
  %yyval.sroa.0.0.copyload = load i64, ptr %arrayidx114, align 8, !tbaa !129, !tbaa.struct !130
  %yyval.sroa.39.0.arrayidx114.sroa_idx = getelementptr inbounds i8, ptr %arrayidx114, i64 8
  %yyval.sroa.39.0.copyload = load i64, ptr %yyval.sroa.39.0.arrayidx114.sroa_idx, align 8, !tbaa !129, !tbaa.struct !131
  %yyval.sroa.45.0.arrayidx114.sroa_idx = getelementptr inbounds i8, ptr %arrayidx114, i64 16
  %yyval.sroa.45.0.copyload = load i64, ptr %yyval.sroa.45.0.arrayidx114.sroa_idx, align 8, !tbaa !129, !tbaa.struct !132
  %yyval.sroa.50.0.arrayidx114.sroa_idx = getelementptr inbounds i8, ptr %arrayidx114, i64 24
  %yyval.sroa.50.0.copyload = load i64, ptr %yyval.sroa.50.0.arrayidx114.sroa_idx, align 8, !tbaa !129, !tbaa.struct !133
  %yyval.sroa.54.0.arrayidx114.sroa_idx = getelementptr inbounds i8, ptr %arrayidx114, i64 32
  %yyval.sroa.54.0.copyload = load i64, ptr %yyval.sroa.54.0.arrayidx114.sroa_idx, align 8, !tbaa !129, !tbaa.struct !134
  %yyval.sroa.58.0.arrayidx114.sroa_idx = getelementptr inbounds i8, ptr %arrayidx114, i64 40
  %yyval.sroa.58.0.copyload = load i64, ptr %yyval.sroa.58.0.arrayidx114.sroa_idx, align 8, !tbaa !129, !tbaa.struct !135
  %yyval.sroa.64.0.arrayidx114.sroa_idx = getelementptr inbounds i8, ptr %arrayidx114, i64 48
  %yyval.sroa.64.0.copyload = load i32, ptr %yyval.sroa.64.0.arrayidx114.sroa_idx, align 8, !tbaa !129, !tbaa.struct !136
  %yyval.sroa.66.0.arrayidx114.sroa_idx = getelementptr inbounds i8, ptr %arrayidx114, i64 52
  %yyval.sroa.66.0.copyload = load i32, ptr %yyval.sroa.66.0.arrayidx114.sroa_idx, align 4, !tbaa !129, !tbaa.struct !57
  switch i32 %yyn.0, label %sw.epilog [
    i32 4, label %sw.bb
    i32 7, label %sw.bb117
    i32 8, label %sw.bb120
    i32 9, label %sw.bb124
    i32 10, label %sw.bb127
    i32 11, label %sw.bb129
    i32 12, label %sw.bb132
    i32 13, label %sw.bb136
    i32 14, label %sw.bb139
    i32 15, label %sw.bb141
    i32 16, label %sw.bb143
    i32 19, label %sw.bb145
    i32 20, label %sw.bb149
    i32 21, label %sw.bb157
    i32 23, label %sw.bb168
    i32 24, label %sw.bb172
    i32 25, label %sw.bb178
    i32 28, label %sw.bb189
    i32 29, label %sw.bb197
    i32 30, label %sw.bb200
    i32 31, label %sw.bb203
    i32 32, label %sw.bb206
    i32 33, label %sw.bb208
    i32 34, label %sw.bb217
    i32 35, label %sw.bb224
    i32 36, label %sw.bb235
    i32 37, label %sw.bb240
    i32 38, label %sw.bb245
    i32 39, label %sw.bb248
    i32 40, label %sw.bb253
    i32 41, label %sw.bb259
    i32 42, label %sw.bb267
    i32 43, label %sw.bb272
    i32 44, label %sw.bb309
    i32 45, label %sw.bb325
    i32 46, label %sw.bb343
    i32 47, label %sw.bb349
    i32 48, label %sw.bb357
    i32 49, label %sw.bb363
    i32 51, label %sw.bb371
    i32 52, label %sw.bb384
    i32 53, label %sw.bb391
    i32 54, label %sw.bb396
    i32 55, label %sw.bb401
    i32 56, label %sw.bb408
    i32 57, label %sw.bb417
    i32 58, label %sw.bb424
    i32 59, label %sw.bb432
    i32 60, label %sw.bb441
    i32 61, label %sw.bb448
    i32 62, label %sw.bb459
    i32 63, label %sw.bb471
    i32 64, label %sw.bb479
    i32 65, label %sw.bb486
    i32 66, label %sw.bb496
    i32 67, label %sw.bb504
    i32 68, label %sw.bb512
    i32 69, label %sw.bb523
    i32 70, label %sw.bb532
    i32 71, label %sw.bb542
    i32 72, label %sw.bb553
    i32 73, label %sw.bb567
    i32 74, label %sw.bb583
    i32 76, label %sw.bb593
    i32 77, label %sw.bb605
    i32 78, label %sw.bb617
    i32 79, label %sw.bb632
    i32 80, label %sw.bb644
    i32 81, label %sw.bb656
    i32 82, label %sw.bb668
    i32 86, label %sw.bb679
    i32 88, label %sw.bb690
    i32 89, label %sw.bb701
    i32 90, label %sw.bb703
    i32 91, label %sw.bb709
    i32 92, label %sw.bb710
  ]

sw.bb:                                            ; preds = %yyreduce
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %seconds.i1638, ptr noundef nonnull align 8 dereferenceable(16) %yyvsp.11809, i64 16, i1 false), !tbaa !137, !tbaa.struct !138
  store i8 1, ptr %timespec_seen, align 8, !tbaa !139
  %call116 = call ptr @dcgettext(ptr noundef nonnull @.str.117, ptr noundef nonnull @.str.1.118, i32 noundef 5) #41
  call fastcc void @debug_print_current_time(ptr noundef %call116, ptr noundef %pc)
  br label %sw.epilog

sw.bb117:                                         ; preds = %yyreduce
  %60 = load i64, ptr %times_seen.i1656, align 8, !tbaa !140
  %inc = add nsw i64 %60, 1
  store i64 %inc, ptr %times_seen.i1656, align 8, !tbaa !140
  %61 = load i64, ptr %dates_seen.i1618, align 8, !tbaa !141
  %inc118 = add nsw i64 %61, 1
  store i64 %inc118, ptr %dates_seen.i1618, align 8, !tbaa !141
  %call119 = call ptr @dcgettext(ptr noundef nonnull @.str.117, ptr noundef nonnull @.str.2.119, i32 noundef 5) #41
  call fastcc void @debug_print_current_time(ptr noundef %call119, ptr noundef %pc)
  br label %sw.epilog

sw.bb120:                                         ; preds = %yyreduce
  %62 = load i64, ptr %times_seen.i1656, align 8, !tbaa !140
  %inc122 = add nsw i64 %62, 1
  store i64 %inc122, ptr %times_seen.i1656, align 8, !tbaa !140
  %call123 = call ptr @dcgettext(ptr noundef nonnull @.str.117, ptr noundef nonnull @.str.3.120, i32 noundef 5) #41
  call fastcc void @debug_print_current_time(ptr noundef %call123, ptr noundef %pc)
  br label %sw.epilog

sw.bb124:                                         ; preds = %yyreduce
  %63 = load i64, ptr %local_zones_seen, align 8, !tbaa !142
  %inc125 = add nsw i64 %63, 1
  store i64 %inc125, ptr %local_zones_seen, align 8, !tbaa !142
  %call126 = call ptr @dcgettext(ptr noundef nonnull @.str.117, ptr noundef nonnull @.str.4.121, i32 noundef 5) #41
  call fastcc void @debug_print_current_time(ptr noundef %call126, ptr noundef %pc)
  br label %sw.epilog

sw.bb127:                                         ; preds = %yyreduce
  %64 = load i64, ptr %J_zones_seen, align 8, !tbaa !143
  %inc128 = add nsw i64 %64, 1
  store i64 %inc128, ptr %J_zones_seen, align 8, !tbaa !143
  call fastcc void @debug_print_current_time(ptr noundef nonnull @.str.5.122, ptr noundef %pc)
  br label %sw.epilog

sw.bb129:                                         ; preds = %yyreduce
  %65 = load i64, ptr %zones_seen190, align 8, !tbaa !144
  %inc130 = add nsw i64 %65, 1
  store i64 %inc130, ptr %zones_seen190, align 8, !tbaa !144
  %call131 = call ptr @dcgettext(ptr noundef nonnull @.str.117, ptr noundef nonnull @.str.6.123, i32 noundef 5) #41
  call fastcc void @debug_print_current_time(ptr noundef %call131, ptr noundef %pc)
  br label %sw.epilog

sw.bb132:                                         ; preds = %yyreduce
  %66 = load i64, ptr %dates_seen.i1618, align 8, !tbaa !141
  %inc134 = add nsw i64 %66, 1
  store i64 %inc134, ptr %dates_seen.i1618, align 8, !tbaa !141
  %call135 = call ptr @dcgettext(ptr noundef nonnull @.str.117, ptr noundef nonnull @.str.7.124, i32 noundef 5) #41
  call fastcc void @debug_print_current_time(ptr noundef %call135, ptr noundef %pc)
  br label %sw.epilog

sw.bb136:                                         ; preds = %yyreduce
  %67 = load i64, ptr %days_seen, align 8, !tbaa !145
  %inc137 = add nsw i64 %67, 1
  store i64 %inc137, ptr %days_seen, align 8, !tbaa !145
  %call138 = call ptr @dcgettext(ptr noundef nonnull @.str.117, ptr noundef nonnull @.str.8.125, i32 noundef 5) #41
  call fastcc void @debug_print_current_time(ptr noundef %call138, ptr noundef %pc)
  br label %sw.epilog

sw.bb139:                                         ; preds = %yyreduce
  %call140 = call ptr @dcgettext(ptr noundef nonnull @.str.117, ptr noundef nonnull @.str.9.126, i32 noundef 5) #41
  call fastcc void @debug_print_relative_time(ptr noundef %call140, ptr noundef %pc)
  br label %sw.epilog

sw.bb141:                                         ; preds = %yyreduce
  %call142 = call ptr @dcgettext(ptr noundef nonnull @.str.117, ptr noundef nonnull @.str.10.127, i32 noundef 5) #41
  call fastcc void @debug_print_current_time(ptr noundef %call142, ptr noundef %pc)
  br label %sw.epilog

sw.bb143:                                         ; preds = %yyreduce
  %call144 = call ptr @dcgettext(ptr noundef nonnull @.str.117, ptr noundef nonnull @.str.11.128, i32 noundef 5) #41
  call fastcc void @debug_print_relative_time(ptr noundef %call144, ptr noundef %pc)
  br label %sw.epilog

sw.bb145:                                         ; preds = %yyreduce
  %value = getelementptr %union.YYSTYPE, ptr %yyvsp.11809, i64 -1, i32 0, i32 1
  %68 = load i64, ptr %value, align 8, !tbaa !69
  store i64 %68, ptr %1, align 8, !tbaa !146
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  %69 = load i64, ptr %yyvsp.11809, align 8, !tbaa !69
  %conv148 = trunc i64 %69 to i32
  store i32 %conv148, ptr %meridian.i1639, align 4, !tbaa !147
  br label %sw.epilog

sw.bb149:                                         ; preds = %yyreduce
  %value151 = getelementptr %union.YYSTYPE, ptr %yyvsp.11809, i64 -3, i32 0, i32 1
  %70 = load i64, ptr %value151, align 8, !tbaa !69
  %value153 = getelementptr %union.YYSTYPE, ptr %yyvsp.11809, i64 -1, i32 0, i32 1
  %71 = load i64, ptr %value153, align 8, !tbaa !69
  store i64 %70, ptr %1, align 8, !tbaa !146
  store i64 %71, ptr %2, align 8, !tbaa !148
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %seconds.i1638, i8 0, i64 16, i1 false)
  %72 = load i64, ptr %yyvsp.11809, align 8, !tbaa !69
  %conv155 = trunc i64 %72 to i32
  store i32 %conv155, ptr %meridian.i1639, align 4, !tbaa !147
  br label %sw.epilog

sw.bb157:                                         ; preds = %yyreduce
  %value159 = getelementptr %union.YYSTYPE, ptr %yyvsp.11809, i64 -5, i32 0, i32 1
  %73 = load i64, ptr %value159, align 8, !tbaa !69
  %value161 = getelementptr %union.YYSTYPE, ptr %yyvsp.11809, i64 -3, i32 0, i32 1
  %74 = load i64, ptr %value161, align 8, !tbaa !69
  %arrayidx162 = getelementptr inbounds %union.YYSTYPE, ptr %yyvsp.11809, i64 -1
  %75 = load i64, ptr %arrayidx162, align 8, !tbaa !69
  %tv_nsec = getelementptr %union.YYSTYPE, ptr %yyvsp.11809, i64 -1, i32 0, i32 1
  %76 = load i64, ptr %tv_nsec, align 8, !tbaa !69
  store i64 %73, ptr %1, align 8, !tbaa !146
  store i64 %74, ptr %2, align 8, !tbaa !148
  %sext1775 = shl i64 %76, 32
  %conv.i1440 = ashr exact i64 %sext1775, 32
  store i64 %75, ptr %seconds.i1638, align 8, !tbaa !137, !tbaa.struct !138
  store i64 %conv.i1440, ptr %.compoundliteral.sroa.2.0.seconds.sroa_idx.i1454, align 8, !tbaa !137, !tbaa.struct !149
  %77 = load i64, ptr %yyvsp.11809, align 8, !tbaa !69
  %conv166 = trunc i64 %77 to i32
  store i32 %conv166, ptr %meridian.i1639, align 4, !tbaa !147
  br label %sw.epilog

sw.bb168:                                         ; preds = %yyreduce
  %value170 = getelementptr %union.YYSTYPE, ptr %yyvsp.11809, i64 -1, i32 0, i32 1
  %78 = load i64, ptr %value170, align 8, !tbaa !69
  store i64 %78, ptr %1, align 8, !tbaa !146
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  store i32 2, ptr %meridian.i1639, align 4, !tbaa !147
  br label %sw.epilog

sw.bb172:                                         ; preds = %yyreduce
  %value174 = getelementptr %union.YYSTYPE, ptr %yyvsp.11809, i64 -3, i32 0, i32 1
  %79 = load i64, ptr %value174, align 8, !tbaa !69
  %value176 = getelementptr %union.YYSTYPE, ptr %yyvsp.11809, i64 -1, i32 0, i32 1
  %80 = load i64, ptr %value176, align 8, !tbaa !69
  store i64 %79, ptr %1, align 8, !tbaa !146
  store i64 %80, ptr %2, align 8, !tbaa !148
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %seconds.i1638, i8 0, i64 16, i1 false)
  store i32 2, ptr %meridian.i1639, align 4, !tbaa !147
  br label %sw.epilog

sw.bb178:                                         ; preds = %yyreduce
  %value180 = getelementptr %union.YYSTYPE, ptr %yyvsp.11809, i64 -5, i32 0, i32 1
  %81 = load i64, ptr %value180, align 8, !tbaa !69
  %value182 = getelementptr %union.YYSTYPE, ptr %yyvsp.11809, i64 -3, i32 0, i32 1
  %82 = load i64, ptr %value182, align 8, !tbaa !69
  %arrayidx183 = getelementptr inbounds %union.YYSTYPE, ptr %yyvsp.11809, i64 -1
  %83 = load i64, ptr %arrayidx183, align 8, !tbaa !69
  %tv_nsec186 = getelementptr %union.YYSTYPE, ptr %yyvsp.11809, i64 -1, i32 0, i32 1
  %84 = load i64, ptr %tv_nsec186, align 8, !tbaa !69
  store i64 %81, ptr %1, align 8, !tbaa !146
  store i64 %82, ptr %2, align 8, !tbaa !148
  %sext = shl i64 %84, 32
  %conv.i1453 = ashr exact i64 %sext, 32
  store i64 %83, ptr %seconds.i1638, align 8, !tbaa !137, !tbaa.struct !138
  store i64 %conv.i1453, ptr %.compoundliteral.sroa.2.0.seconds.sroa_idx.i1454, align 8, !tbaa !137, !tbaa.struct !149
  store i32 2, ptr %meridian.i1639, align 4, !tbaa !147
  br label %sw.epilog

sw.bb189:                                         ; preds = %yyreduce
  %85 = load i64, ptr %zones_seen190, align 8, !tbaa !144
  %inc191 = add nsw i64 %85, 1
  store i64 %inc191, ptr %zones_seen190, align 8, !tbaa !144
  %arrayidx192 = getelementptr inbounds %union.YYSTYPE, ptr %yyvsp.11809, i64 -1
  %86 = load i64, ptr %yyvsp.11809, align 8, !tbaa !69
  %arrayidx1921455.sroa.0.0.copyload = load i8, ptr %arrayidx192, align 1
  %arrayidx1921455.sroa.41698.0.arrayidx192.sroa_idx = getelementptr %union.YYSTYPE, ptr %yyvsp.11809, i64 -1, i32 0, i32 1
  %arrayidx1921455.sroa.41698.0.copyload = load i64, ptr %arrayidx1921455.sroa.41698.0.arrayidx192.sroa_idx, align 1
  %arrayidx1921455.sroa.5.0.arrayidx192.sroa_idx = getelementptr %union.YYSTYPE, ptr %yyvsp.11809, i64 -1, i32 0, i32 2
  %arrayidx1921455.sroa.5.0.copyload = load i64, ptr %arrayidx1921455.sroa.5.0.arrayidx192.sroa_idx, align 1
  %cmp.i = icmp slt i64 %arrayidx1921455.sroa.5.0.copyload, 3
  %cmp1.i = icmp slt i64 %86, 0
  %or.cond.i = and i1 %cmp1.i, %cmp.i
  br i1 %or.cond.i, label %if.end.thread.i, label %if.end.i

if.end.thread.i:                                  ; preds = %sw.bb189
  %mul.i1457 = mul nsw i64 %arrayidx1921455.sroa.41698.0.copyload, 100
  br label %if.then3.i

if.end.i:                                         ; preds = %sw.bb189
  br i1 %cmp1.i, label %if.then3.i, label %if.else.i

if.then3.i:                                       ; preds = %if.end.i, %if.end.thread.i
  %87 = phi i64 [ %mul.i1457, %if.end.thread.i ], [ %arrayidx1921455.sroa.41698.0.copyload, %if.end.i ]
  %div.i = sdiv i64 %87, 100
  %mul5.i = mul nsw i64 %div.i, 60
  %rem.i = srem i64 %87, 100
  %add.i1456 = add nsw i64 %mul5.i, %rem.i
  br label %if.end19.i

if.else.i:                                        ; preds = %if.end.i
  %88 = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %arrayidx1921455.sroa.41698.0.copyload, i64 60)
  %89 = extractvalue { i64, i1 } %88, 1
  %90 = extractvalue { i64, i1 } %88, 0
  %tobool10.not.i = icmp eq i8 %arrayidx1921455.sroa.0.0.copyload, 0
  br i1 %tobool10.not.i, label %cond.false.i, label %cond.true.i

cond.true.i:                                      ; preds = %if.else.i
  %91 = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %90, i64 %86)
  br label %cond.end.i

cond.false.i:                                     ; preds = %if.else.i
  %92 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %90, i64 %86)
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.false.i, %cond.true.i
  %.pn.i = phi { i64, i1 } [ %91, %cond.true.i ], [ %92, %cond.false.i ]
  %cond.in.i = extractvalue { i64, i1 } %.pn.i, 1
  %n_minutes.0.i = extractvalue { i64, i1 } %.pn.i, 0
  %or1644.i = or i1 %89, %cond.in.i
  %93 = xor i1 %or1644.i, true
  br label %if.end19.i

if.end19.i:                                       ; preds = %cond.end.i, %if.then3.i
  %n_minutes.1.i = phi i64 [ %add.i1456, %if.then3.i ], [ %n_minutes.0.i, %cond.end.i ]
  %overflow.0.i = phi i1 [ true, %if.then3.i ], [ %93, %cond.end.i ]
  %cmp22.i = icmp sgt i64 %n_minutes.1.i, -1441
  %or.cond32.i = select i1 %overflow.0.i, i1 %cmp22.i, i1 false
  %cmp25.i = icmp slt i64 %n_minutes.1.i, 1441
  %or.cond33.i = select i1 %or.cond32.i, i1 %cmp25.i, i1 false
  br i1 %or.cond33.i, label %time_zone_hhmm.exit.thread, label %yyreturnlab

time_zone_hhmm.exit.thread:                       ; preds = %if.end19.i
  %94 = trunc i64 %n_minutes.1.i to i32
  %conv30.i = mul nsw i32 %94, 60
  store i32 %conv30.i, ptr %time_zone244, align 8, !tbaa !150
  br label %sw.epilog

sw.bb197:                                         ; preds = %yyreduce
  %95 = load i64, ptr %yyvsp.11809, align 8, !tbaa !69
  %conv199 = trunc i64 %95 to i32
  store i32 %conv199, ptr %local_isdst201, align 4, !tbaa !151
  br label %sw.epilog

sw.bb200:                                         ; preds = %yyreduce
  store i32 1, ptr %local_isdst201, align 4, !tbaa !151
  %96 = load i64, ptr %dsts_seen, align 8, !tbaa !152
  %inc202 = add nsw i64 %96, 1
  store i64 %inc202, ptr %dsts_seen, align 8, !tbaa !152
  br label %sw.epilog

sw.bb203:                                         ; preds = %yyreduce
  %97 = load i64, ptr %yyvsp.11809, align 8, !tbaa !69
  %conv205 = trunc i64 %97 to i32
  store i32 %conv205, ptr %time_zone244, align 8, !tbaa !150
  br label %sw.epilog

sw.bb206:                                         ; preds = %yyreduce
  store i32 -25200, ptr %time_zone244, align 8, !tbaa !150
  br label %sw.epilog

sw.bb208:                                         ; preds = %yyreduce
  %arrayidx209 = getelementptr inbounds %union.YYSTYPE, ptr %yyvsp.11809, i64 -1
  %98 = load i64, ptr %arrayidx209, align 8, !tbaa !69
  %conv210 = trunc i64 %98 to i32
  store i32 %conv210, ptr %time_zone244, align 8, !tbaa !150
  %yyvsp.11458.sroa.0.0.copyload = load i64, ptr %yyvsp.11809, align 1
  %yyvsp.11458.sroa.4.0.yyvsp.1.sroa_idx = getelementptr inbounds i8, ptr %yyvsp.11809, i64 8
  %yyvsp.11458.sroa.4.0.copyload = load i64, ptr %yyvsp.11458.sroa.4.0.yyvsp.1.sroa_idx, align 1
  %yyvsp.11458.sroa.5.0.yyvsp.1.sroa_idx = getelementptr inbounds i8, ptr %yyvsp.11809, i64 16
  %yyvsp.11458.sroa.5.0.copyload = load i64, ptr %yyvsp.11458.sroa.5.0.yyvsp.1.sroa_idx, align 1
  %yyvsp.11458.sroa.6.0.yyvsp.1.sroa_idx = getelementptr inbounds i8, ptr %yyvsp.11809, i64 24
  %yyvsp.11458.sroa.6.0.copyload = load i64, ptr %yyvsp.11458.sroa.6.0.yyvsp.1.sroa_idx, align 1
  %yyvsp.11458.sroa.7.0.yyvsp.1.sroa_idx = getelementptr inbounds i8, ptr %yyvsp.11809, i64 32
  %yyvsp.11458.sroa.7.0.copyload = load i64, ptr %yyvsp.11458.sroa.7.0.yyvsp.1.sroa_idx, align 1
  %yyvsp.11458.sroa.8.0.yyvsp.1.sroa_idx = getelementptr inbounds i8, ptr %yyvsp.11809, i64 40
  %yyvsp.11458.sroa.8.0.copyload = load i64, ptr %yyvsp.11458.sroa.8.0.yyvsp.1.sroa_idx, align 1
  %yyvsp.11458.sroa.9.0.yyvsp.1.sroa_idx = getelementptr inbounds i8, ptr %yyvsp.11809, i64 48
  %yyvsp.11458.sroa.9.0.copyload = load i32, ptr %yyvsp.11458.sroa.9.0.yyvsp.1.sroa_idx, align 1
  %99 = load i32, ptr %ns.i1666, align 8, !tbaa !153
  %100 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %99, i32 %yyvsp.11458.sroa.9.0.copyload)
  %101 = extractvalue { i32, i1 } %100, 1
  %102 = extractvalue { i32, i1 } %100, 0
  store i32 %102, ptr %ns.i1666, align 8
  %103 = load i64, ptr %seconds.i1668, align 8, !tbaa !154
  %104 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %103, i64 %yyvsp.11458.sroa.8.0.copyload)
  %105 = extractvalue { i64, i1 } %104, 1
  %106 = extractvalue { i64, i1 } %104, 0
  store i64 %106, ptr %seconds.i1668, align 8
  %or52117.i = or i1 %101, %105
  %107 = load i64, ptr %minutes.i1670, align 8, !tbaa !155
  %108 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %107, i64 %yyvsp.11458.sroa.7.0.copyload)
  %109 = extractvalue { i64, i1 } %108, 1
  %110 = extractvalue { i64, i1 } %108, 0
  store i64 %110, ptr %minutes.i1670, align 8
  %or59118.i = or i1 %or52117.i, %109
  %111 = load i64, ptr %hour.i1672, align 8, !tbaa !156
  %112 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %111, i64 %yyvsp.11458.sroa.6.0.copyload)
  %113 = extractvalue { i64, i1 } %112, 1
  %114 = extractvalue { i64, i1 } %112, 0
  store i64 %114, ptr %hour.i1672, align 8
  %or66119.i = or i1 %or59118.i, %113
  %115 = load i64, ptr %day68.i1678, align 8, !tbaa !157
  %116 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %115, i64 %yyvsp.11458.sroa.5.0.copyload)
  %117 = extractvalue { i64, i1 } %116, 1
  %118 = extractvalue { i64, i1 } %116, 0
  store i64 %118, ptr %day68.i1678, align 8
  %or73120.i = or i1 %or66119.i, %117
  %119 = load i64, ptr %month75.i1681, align 8, !tbaa !158
  %120 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %119, i64 %yyvsp.11458.sroa.4.0.copyload)
  %121 = extractvalue { i64, i1 } %120, 1
  %122 = extractvalue { i64, i1 } %120, 0
  store i64 %122, ptr %month75.i1681, align 8
  %or80121.i = or i1 %or73120.i, %121
  %123 = load i64, ptr %rel1.i1665, align 8, !tbaa !159
  %124 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %123, i64 %yyvsp.11458.sroa.0.0.copyload)
  %125 = extractvalue { i64, i1 } %124, 1
  %126 = extractvalue { i64, i1 } %124, 0
  store i64 %126, ptr %rel1.i1665, align 8
  %or87122.i = or i1 %or80121.i, %125
  br i1 %or87122.i, label %yyreturnlab, label %if.end215

if.end215:                                        ; preds = %sw.bb208
  store i8 1, ptr %rels_seen.i1653, align 1, !tbaa !160
  %call216 = call ptr @dcgettext(ptr noundef nonnull @.str.117, ptr noundef nonnull @.str.9.126, i32 noundef 5) #41
  call fastcc void @debug_print_relative_time(ptr noundef %call216, ptr noundef nonnull %pc)
  br label %sw.epilog

sw.bb217:                                         ; preds = %yyreduce
  store i32 -25200, ptr %time_zone244, align 8, !tbaa !150
  %yyvsp.11462.sroa.0.0.copyload = load i64, ptr %yyvsp.11809, align 1
  %yyvsp.11462.sroa.4.0.yyvsp.1.sroa_idx = getelementptr inbounds i8, ptr %yyvsp.11809, i64 8
  %yyvsp.11462.sroa.4.0.copyload = load i64, ptr %yyvsp.11462.sroa.4.0.yyvsp.1.sroa_idx, align 1
  %yyvsp.11462.sroa.5.0.yyvsp.1.sroa_idx = getelementptr inbounds i8, ptr %yyvsp.11809, i64 16
  %yyvsp.11462.sroa.5.0.copyload = load i64, ptr %yyvsp.11462.sroa.5.0.yyvsp.1.sroa_idx, align 1
  %yyvsp.11462.sroa.6.0.yyvsp.1.sroa_idx = getelementptr inbounds i8, ptr %yyvsp.11809, i64 24
  %yyvsp.11462.sroa.6.0.copyload = load i64, ptr %yyvsp.11462.sroa.6.0.yyvsp.1.sroa_idx, align 1
  %yyvsp.11462.sroa.7.0.yyvsp.1.sroa_idx = getelementptr inbounds i8, ptr %yyvsp.11809, i64 32
  %yyvsp.11462.sroa.7.0.copyload = load i64, ptr %yyvsp.11462.sroa.7.0.yyvsp.1.sroa_idx, align 1
  %yyvsp.11462.sroa.8.0.yyvsp.1.sroa_idx = getelementptr inbounds i8, ptr %yyvsp.11809, i64 40
  %yyvsp.11462.sroa.8.0.copyload = load i64, ptr %yyvsp.11462.sroa.8.0.yyvsp.1.sroa_idx, align 1
  %yyvsp.11462.sroa.9.0.yyvsp.1.sroa_idx = getelementptr inbounds i8, ptr %yyvsp.11809, i64 48
  %yyvsp.11462.sroa.9.0.copyload = load i32, ptr %yyvsp.11462.sroa.9.0.yyvsp.1.sroa_idx, align 1
  %127 = load i32, ptr %ns.i1666, align 8, !tbaa !153
  %128 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %127, i32 %yyvsp.11462.sroa.9.0.copyload)
  %129 = extractvalue { i32, i1 } %128, 1
  %130 = extractvalue { i32, i1 } %128, 0
  store i32 %130, ptr %ns.i1666, align 8
  %131 = load i64, ptr %seconds.i1668, align 8, !tbaa !154
  %132 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %131, i64 %yyvsp.11462.sroa.8.0.copyload)
  %133 = extractvalue { i64, i1 } %132, 1
  %134 = extractvalue { i64, i1 } %132, 0
  store i64 %134, ptr %seconds.i1668, align 8
  %or52117.i1473 = or i1 %129, %133
  %135 = load i64, ptr %minutes.i1670, align 8, !tbaa !155
  %136 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %135, i64 %yyvsp.11462.sroa.7.0.copyload)
  %137 = extractvalue { i64, i1 } %136, 1
  %138 = extractvalue { i64, i1 } %136, 0
  store i64 %138, ptr %minutes.i1670, align 8
  %or59118.i1474 = or i1 %or52117.i1473, %137
  %139 = load i64, ptr %hour.i1672, align 8, !tbaa !156
  %140 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %139, i64 %yyvsp.11462.sroa.6.0.copyload)
  %141 = extractvalue { i64, i1 } %140, 1
  %142 = extractvalue { i64, i1 } %140, 0
  store i64 %142, ptr %hour.i1672, align 8
  %or66119.i1475 = or i1 %or59118.i1474, %141
  %143 = load i64, ptr %day68.i1678, align 8, !tbaa !157
  %144 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %143, i64 %yyvsp.11462.sroa.5.0.copyload)
  %145 = extractvalue { i64, i1 } %144, 1
  %146 = extractvalue { i64, i1 } %144, 0
  store i64 %146, ptr %day68.i1678, align 8
  %or73120.i1478 = or i1 %or66119.i1475, %145
  %147 = load i64, ptr %month75.i1681, align 8, !tbaa !158
  %148 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %147, i64 %yyvsp.11462.sroa.4.0.copyload)
  %149 = extractvalue { i64, i1 } %148, 1
  %150 = extractvalue { i64, i1 } %148, 0
  store i64 %150, ptr %month75.i1681, align 8
  %or80121.i1481 = or i1 %or73120.i1478, %149
  %151 = load i64, ptr %rel1.i1665, align 8, !tbaa !159
  %152 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %151, i64 %yyvsp.11462.sroa.0.0.copyload)
  %153 = extractvalue { i64, i1 } %152, 1
  %154 = extractvalue { i64, i1 } %152, 0
  store i64 %154, ptr %rel1.i1665, align 8
  %or87122.i1482 = or i1 %or80121.i1481, %153
  br i1 %or87122.i1482, label %yyreturnlab, label %if.end222

if.end222:                                        ; preds = %sw.bb217
  store i8 1, ptr %rels_seen.i1653, align 1, !tbaa !160
  %call223 = call ptr @dcgettext(ptr noundef nonnull @.str.117, ptr noundef nonnull @.str.9.126, i32 noundef 5) #41
  call fastcc void @debug_print_relative_time(ptr noundef %call223, ptr noundef nonnull %pc)
  br label %sw.epilog

sw.bb224:                                         ; preds = %yyreduce
  %arrayidx225 = getelementptr inbounds %union.YYSTYPE, ptr %yyvsp.11809, i64 -1
  %155 = load i64, ptr %yyvsp.11809, align 8, !tbaa !69
  %arrayidx2251487.sroa.0.0.copyload = load i8, ptr %arrayidx225, align 1
  %arrayidx2251487.sroa.41699.0.arrayidx225.sroa_idx = getelementptr %union.YYSTYPE, ptr %yyvsp.11809, i64 -1, i32 0, i32 1
  %arrayidx2251487.sroa.41699.0.copyload = load i64, ptr %arrayidx2251487.sroa.41699.0.arrayidx225.sroa_idx, align 1
  %arrayidx2251487.sroa.5.0.arrayidx225.sroa_idx = getelementptr %union.YYSTYPE, ptr %yyvsp.11809, i64 -1, i32 0, i32 2
  %arrayidx2251487.sroa.5.0.copyload = load i64, ptr %arrayidx2251487.sroa.5.0.arrayidx225.sroa_idx, align 1
  %cmp.i1489 = icmp slt i64 %arrayidx2251487.sroa.5.0.copyload, 3
  %cmp1.i1490 = icmp slt i64 %155, 0
  %or.cond.i1491 = and i1 %cmp1.i1490, %cmp.i1489
  br i1 %or.cond.i1491, label %if.end.thread.i1518, label %if.end.i1493

if.end.thread.i1518:                              ; preds = %sw.bb224
  %mul.i1519 = mul nsw i64 %arrayidx2251487.sroa.41699.0.copyload, 100
  br label %if.then3.i1513

if.end.i1493:                                     ; preds = %sw.bb224
  br i1 %cmp1.i1490, label %if.then3.i1513, label %if.else.i1494

if.then3.i1513:                                   ; preds = %if.end.i1493, %if.end.thread.i1518
  %156 = phi i64 [ %mul.i1519, %if.end.thread.i1518 ], [ %arrayidx2251487.sroa.41699.0.copyload, %if.end.i1493 ]
  %div.i1514 = sdiv i64 %156, 100
  %mul5.i1515 = mul nsw i64 %div.i1514, 60
  %rem.i1516 = srem i64 %156, 100
  %add.i1517 = add nsw i64 %mul5.i1515, %rem.i1516
  br label %if.end19.i1502

if.else.i1494:                                    ; preds = %if.end.i1493
  %157 = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %arrayidx2251487.sroa.41699.0.copyload, i64 60)
  %158 = extractvalue { i64, i1 } %157, 1
  %159 = extractvalue { i64, i1 } %157, 0
  %tobool10.not.i1495 = icmp eq i8 %arrayidx2251487.sroa.0.0.copyload, 0
  br i1 %tobool10.not.i1495, label %cond.false.i1512, label %cond.true.i1496

cond.true.i1496:                                  ; preds = %if.else.i1494
  %160 = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %159, i64 %155)
  br label %cond.end.i1497

cond.false.i1512:                                 ; preds = %if.else.i1494
  %161 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %159, i64 %155)
  br label %cond.end.i1497

cond.end.i1497:                                   ; preds = %cond.false.i1512, %cond.true.i1496
  %.pn.i1498 = phi { i64, i1 } [ %160, %cond.true.i1496 ], [ %161, %cond.false.i1512 ]
  %cond.in.i1499 = extractvalue { i64, i1 } %.pn.i1498, 1
  %n_minutes.0.i1500 = extractvalue { i64, i1 } %.pn.i1498, 0
  %or1644.i1501 = or i1 %158, %cond.in.i1499
  %162 = xor i1 %or1644.i1501, true
  br label %if.end19.i1502

if.end19.i1502:                                   ; preds = %cond.end.i1497, %if.then3.i1513
  %n_minutes.1.i1503 = phi i64 [ %add.i1517, %if.then3.i1513 ], [ %n_minutes.0.i1500, %cond.end.i1497 ]
  %overflow.0.i1504 = phi i1 [ true, %if.then3.i1513 ], [ %162, %cond.end.i1497 ]
  %cmp22.i1505 = icmp sgt i64 %n_minutes.1.i1503, -1441
  %or.cond32.i1506 = select i1 %overflow.0.i1504, i1 %cmp22.i1505, i1 false
  %cmp25.i1507 = icmp slt i64 %n_minutes.1.i1503, 1441
  %or.cond33.i1508 = select i1 %or.cond32.i1506, i1 %cmp25.i1507, i1 false
  br i1 %or.cond33.i1508, label %if.end229, label %yyreturnlab

if.end229:                                        ; preds = %if.end19.i1502
  %163 = trunc i64 %n_minutes.1.i1503 to i32
  %conv30.i1510 = mul nsw i32 %163, 60
  store i32 %conv30.i1510, ptr %time_zone244, align 8, !tbaa !150
  %arrayidx231 = getelementptr inbounds %union.YYSTYPE, ptr %yyvsp.11809, i64 -2
  %164 = load i64, ptr %arrayidx231, align 8, !tbaa !69
  %165 = sext i32 %conv30.i1510 to i64
  %166 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %165, i64 %164)
  %167 = extractvalue { i64, i1 } %166, 1
  %168 = extractvalue { i64, i1 } %166, 0
  %169 = trunc i64 %168 to i32
  %170 = add i64 %168, -2147483648
  %171 = icmp ult i64 %170, -4294967296
  %172 = or i1 %167, %171
  store i32 %169, ptr %time_zone244, align 8
  br i1 %172, label %yyreturnlab, label %sw.epilog

sw.bb235:                                         ; preds = %yyreduce
  %173 = load i64, ptr %yyvsp.11809, align 8, !tbaa !69
  %174 = trunc i64 %173 to i32
  %conv238 = add i32 %174, 3600
  store i32 %conv238, ptr %time_zone244, align 8, !tbaa !150
  br label %sw.epilog

sw.bb240:                                         ; preds = %yyreduce
  %arrayidx241 = getelementptr inbounds %union.YYSTYPE, ptr %yyvsp.11809, i64 -1
  %175 = load i64, ptr %arrayidx241, align 8, !tbaa !69
  %176 = trunc i64 %175 to i32
  %conv243 = add i32 %176, 3600
  store i32 %conv243, ptr %time_zone244, align 8, !tbaa !150
  br label %sw.epilog

sw.bb245:                                         ; preds = %yyreduce
  store i64 0, ptr %day_ordinal262, align 8, !tbaa !161
  %177 = load i64, ptr %yyvsp.11809, align 8, !tbaa !69
  %conv247 = trunc i64 %177 to i32
  store i32 %conv247, ptr %day_number265, align 8, !tbaa !162
  br label %sw.epilog

sw.bb248:                                         ; preds = %yyreduce
  store i64 0, ptr %day_ordinal262, align 8, !tbaa !161
  %arrayidx250 = getelementptr inbounds %union.YYSTYPE, ptr %yyvsp.11809, i64 -1
  %178 = load i64, ptr %arrayidx250, align 8, !tbaa !69
  %conv251 = trunc i64 %178 to i32
  store i32 %conv251, ptr %day_number265, align 8, !tbaa !162
  br label %sw.epilog

sw.bb253:                                         ; preds = %yyreduce
  %arrayidx254 = getelementptr inbounds %union.YYSTYPE, ptr %yyvsp.11809, i64 -1
  %179 = load i64, ptr %arrayidx254, align 8, !tbaa !69
  store i64 %179, ptr %day_ordinal262, align 8, !tbaa !161
  %180 = load i64, ptr %yyvsp.11809, align 8, !tbaa !69
  %conv257 = trunc i64 %180 to i32
  store i32 %conv257, ptr %day_number265, align 8, !tbaa !162
  store i8 1, ptr %debug_ordinal_day_seen266, align 8, !tbaa !163
  br label %sw.epilog

sw.bb259:                                         ; preds = %yyreduce
  %value261 = getelementptr %union.YYSTYPE, ptr %yyvsp.11809, i64 -1, i32 0, i32 1
  %181 = load i64, ptr %value261, align 8, !tbaa !69
  store i64 %181, ptr %day_ordinal262, align 8, !tbaa !161
  %182 = load i64, ptr %yyvsp.11809, align 8, !tbaa !69
  %conv264 = trunc i64 %182 to i32
  store i32 %conv264, ptr %day_number265, align 8, !tbaa !162
  store i8 1, ptr %debug_ordinal_day_seen266, align 8, !tbaa !163
  br label %sw.epilog

sw.bb267:                                         ; preds = %yyreduce
  %value269 = getelementptr %union.YYSTYPE, ptr %yyvsp.11809, i64 -2, i32 0, i32 1
  %183 = load i64, ptr %value269, align 8, !tbaa !69
  store i64 %183, ptr %month.i1647, align 8, !tbaa !164
  %value271 = getelementptr inbounds %struct.textint, ptr %yyvsp.11809, i64 0, i32 1
  %184 = load i64, ptr %value271, align 8, !tbaa !69
  store i64 %184, ptr %day.i1644, align 8, !tbaa !165
  br label %sw.epilog

sw.bb272:                                         ; preds = %yyreduce
  %arrayidx273 = getelementptr inbounds %union.YYSTYPE, ptr %yyvsp.11809, i64 -4
  %digits = getelementptr %union.YYSTYPE, ptr %yyvsp.11809, i64 -4, i32 0, i32 2
  %185 = load i64, ptr %digits, align 8, !tbaa !69
  %cmp274 = icmp sgt i64 %185, 3
  %pc.val1432 = load i8, ptr %0, align 1, !tbaa !125, !range !56, !noundef !57
  %tobool.i1521.not = icmp eq i8 %pc.val1432, 0
  br i1 %cmp274, label %if.then276, label %if.else293

if.then276:                                       ; preds = %sw.bb272
  br i1 %tobool.i1521.not, label %if.end285, label %if.then278

if.then278:                                       ; preds = %if.then276
  %call282 = call ptr @dcgettext(ptr noundef nonnull @.str.117, ptr noundef nonnull @.str.12.129, i32 noundef 5) #41
  %value284 = getelementptr %union.YYSTYPE, ptr %yyvsp.11809, i64 -4, i32 0, i32 1
  %186 = load i64, ptr %value284, align 8, !tbaa !69
  call void (ptr, ...) @dbg_printf(ptr noundef %call282, i64 noundef %186, i64 noundef %185)
  br label %if.end285

if.end285:                                        ; preds = %if.then278, %if.then276
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %year.i1621, ptr noundef nonnull align 8 dereferenceable(24) %arrayidx273, i64 24, i1 false), !tbaa !166, !tbaa.struct !167
  %value288 = getelementptr %union.YYSTYPE, ptr %yyvsp.11809, i64 -2, i32 0, i32 1
  %187 = load i64, ptr %value288, align 8, !tbaa !69
  store i64 %187, ptr %month.i1647, align 8, !tbaa !164
  %value291 = getelementptr inbounds %struct.textint, ptr %yyvsp.11809, i64 0, i32 1
  %188 = load i64, ptr %value291, align 8, !tbaa !69
  store i64 %188, ptr %day.i1644, align 8, !tbaa !165
  br label %sw.epilog

if.else293:                                       ; preds = %sw.bb272
  br i1 %tobool.i1521.not, label %if.end299, label %if.then295

if.then295:                                       ; preds = %if.else293
  %call296 = call ptr @dcgettext(ptr noundef nonnull @.str.117, ptr noundef nonnull @.str.13.130, i32 noundef 5) #41
  %value298 = getelementptr %union.YYSTYPE, ptr %yyvsp.11809, i64 -4, i32 0, i32 1
  %189 = load i64, ptr %value298, align 8, !tbaa !69
  call void (ptr, ...) @dbg_printf(ptr noundef %call296, i64 noundef %189)
  br label %if.end299

if.end299:                                        ; preds = %if.then295, %if.else293
  %value301 = getelementptr %union.YYSTYPE, ptr %yyvsp.11809, i64 -4, i32 0, i32 1
  %190 = load i64, ptr %value301, align 8, !tbaa !69
  store i64 %190, ptr %month.i1647, align 8, !tbaa !164
  %value304 = getelementptr %union.YYSTYPE, ptr %yyvsp.11809, i64 -2, i32 0, i32 1
  %191 = load i64, ptr %value304, align 8, !tbaa !69
  store i64 %191, ptr %day.i1644, align 8, !tbaa !165
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %year.i1621, ptr noundef nonnull align 8 dereferenceable(24) %yyvsp.11809, i64 24, i1 false), !tbaa !166, !tbaa.struct !167
  br label %sw.epilog

sw.bb309:                                         ; preds = %yyreduce
  %value311 = getelementptr %union.YYSTYPE, ptr %yyvsp.11809, i64 -2, i32 0, i32 1
  %192 = load i64, ptr %value311, align 8, !tbaa !69
  store i64 %192, ptr %day.i1644, align 8, !tbaa !165
  %arrayidx313 = getelementptr inbounds %union.YYSTYPE, ptr %yyvsp.11809, i64 -1
  %193 = load i64, ptr %arrayidx313, align 8, !tbaa !69
  store i64 %193, ptr %month.i1647, align 8, !tbaa !164
  %value316 = getelementptr inbounds %struct.textint, ptr %yyvsp.11809, i64 0, i32 1
  %194 = load i64, ptr %value316, align 8, !tbaa !69
  %195 = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 0, i64 %194)
  %196 = extractvalue { i64, i1 } %195, 1
  %197 = extractvalue { i64, i1 } %195, 0
  store i64 %197, ptr %arrayidx7041617.sroa.4.0.year.i1621.sroa_idx, align 8
  br i1 %196, label %yyreturnlab, label %if.end320

if.end320:                                        ; preds = %sw.bb309
  %digits322 = getelementptr inbounds %struct.textint, ptr %yyvsp.11809, i64 0, i32 2
  %198 = load i64, ptr %digits322, align 8, !tbaa !69
  store i64 %198, ptr %digits.i1622, align 8, !tbaa !168
  br label %sw.epilog

sw.bb325:                                         ; preds = %yyreduce
  %arrayidx326 = getelementptr inbounds %union.YYSTYPE, ptr %yyvsp.11809, i64 -2
  %199 = load i64, ptr %arrayidx326, align 8, !tbaa !69
  store i64 %199, ptr %month.i1647, align 8, !tbaa !164
  %value329 = getelementptr %union.YYSTYPE, ptr %yyvsp.11809, i64 -1, i32 0, i32 1
  %200 = load i64, ptr %value329, align 8, !tbaa !69
  %201 = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 0, i64 %200)
  %202 = extractvalue { i64, i1 } %201, 1
  %203 = extractvalue { i64, i1 } %201, 0
  store i64 %203, ptr %day.i1644, align 8
  br i1 %202, label %yyreturnlab, label %if.end332

if.end332:                                        ; preds = %sw.bb325
  %value334 = getelementptr inbounds %struct.textint, ptr %yyvsp.11809, i64 0, i32 1
  %204 = load i64, ptr %value334, align 8, !tbaa !69
  %205 = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 0, i64 %204)
  %206 = extractvalue { i64, i1 } %205, 1
  %207 = extractvalue { i64, i1 } %205, 0
  store i64 %207, ptr %arrayidx7041617.sroa.4.0.year.i1621.sroa_idx, align 8
  br i1 %206, label %yyreturnlab, label %if.end338

if.end338:                                        ; preds = %if.end332
  %digits340 = getelementptr inbounds %struct.textint, ptr %yyvsp.11809, i64 0, i32 2
  %208 = load i64, ptr %digits340, align 8, !tbaa !69
  store i64 %208, ptr %digits.i1622, align 8, !tbaa !168
  br label %sw.epilog

sw.bb343:                                         ; preds = %yyreduce
  %arrayidx344 = getelementptr inbounds %union.YYSTYPE, ptr %yyvsp.11809, i64 -1
  %209 = load i64, ptr %arrayidx344, align 8, !tbaa !69
  store i64 %209, ptr %month.i1647, align 8, !tbaa !164
  %value347 = getelementptr inbounds %struct.textint, ptr %yyvsp.11809, i64 0, i32 1
  %210 = load i64, ptr %value347, align 8, !tbaa !69
  store i64 %210, ptr %day.i1644, align 8, !tbaa !165
  br label %sw.epilog

sw.bb349:                                         ; preds = %yyreduce
  %arrayidx350 = getelementptr inbounds %union.YYSTYPE, ptr %yyvsp.11809, i64 -3
  %211 = load i64, ptr %arrayidx350, align 8, !tbaa !69
  store i64 %211, ptr %month.i1647, align 8, !tbaa !164
  %value353 = getelementptr %union.YYSTYPE, ptr %yyvsp.11809, i64 -2, i32 0, i32 1
  %212 = load i64, ptr %value353, align 8, !tbaa !69
  store i64 %212, ptr %day.i1644, align 8, !tbaa !165
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %year.i1621, ptr noundef nonnull align 8 dereferenceable(24) %yyvsp.11809, i64 24, i1 false), !tbaa !166, !tbaa.struct !167
  br label %sw.epilog

sw.bb357:                                         ; preds = %yyreduce
  %value359 = getelementptr %union.YYSTYPE, ptr %yyvsp.11809, i64 -1, i32 0, i32 1
  %213 = load i64, ptr %value359, align 8, !tbaa !69
  store i64 %213, ptr %day.i1644, align 8, !tbaa !165
  %214 = load i64, ptr %yyvsp.11809, align 8, !tbaa !69
  store i64 %214, ptr %month.i1647, align 8, !tbaa !164
  br label %sw.epilog

sw.bb363:                                         ; preds = %yyreduce
  %value365 = getelementptr %union.YYSTYPE, ptr %yyvsp.11809, i64 -2, i32 0, i32 1
  %215 = load i64, ptr %value365, align 8, !tbaa !69
  store i64 %215, ptr %day.i1644, align 8, !tbaa !165
  %arrayidx367 = getelementptr inbounds %union.YYSTYPE, ptr %yyvsp.11809, i64 -1
  %216 = load i64, ptr %arrayidx367, align 8, !tbaa !69
  store i64 %216, ptr %month.i1647, align 8, !tbaa !164
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %year.i1621, ptr noundef nonnull align 8 dereferenceable(24) %yyvsp.11809, i64 24, i1 false), !tbaa !166, !tbaa.struct !167
  br label %sw.epilog

sw.bb371:                                         ; preds = %yyreduce
  %arrayidx373 = getelementptr inbounds %union.YYSTYPE, ptr %yyvsp.11809, i64 -2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %year.i1621, ptr noundef nonnull align 8 dereferenceable(24) %arrayidx373, i64 24, i1 false), !tbaa !166, !tbaa.struct !167
  %value375 = getelementptr %union.YYSTYPE, ptr %yyvsp.11809, i64 -1, i32 0, i32 1
  %217 = load i64, ptr %value375, align 8, !tbaa !69
  %218 = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 0, i64 %217)
  %219 = extractvalue { i64, i1 } %218, 1
  %220 = extractvalue { i64, i1 } %218, 0
  store i64 %220, ptr %month.i1647, align 8
  br i1 %219, label %yyreturnlab, label %if.end378

if.end378:                                        ; preds = %sw.bb371
  %value380 = getelementptr inbounds %struct.textint, ptr %yyvsp.11809, i64 0, i32 1
  %221 = load i64, ptr %value380, align 8, !tbaa !69
  %222 = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 0, i64 %221)
  %223 = extractvalue { i64, i1 } %222, 1
  %224 = extractvalue { i64, i1 } %222, 0
  store i64 %224, ptr %day.i1644, align 8
  br i1 %223, label %yyreturnlab, label %sw.epilog

sw.bb384:                                         ; preds = %yyreduce
  %arrayidx385 = getelementptr inbounds %union.YYSTYPE, ptr %yyvsp.11809, i64 -1
  %225 = load i64, ptr %yyvsp.11809, align 8, !tbaa !69
  %arrayidx3851523.sroa.0.0.copyload = load i64, ptr %arrayidx385, align 1
  %arrayidx3851523.sroa.5.0.arrayidx385.sroa_idx = getelementptr %union.YYSTYPE, ptr %yyvsp.11809, i64 -1, i32 0, i32 1
  %arrayidx3851523.sroa.5.0.copyload = load i64, ptr %arrayidx3851523.sroa.5.0.arrayidx385.sroa_idx, align 1
  %arrayidx3851523.sroa.7.0.arrayidx385.sroa_idx = getelementptr %union.YYSTYPE, ptr %yyvsp.11809, i64 -1, i32 0, i32 2
  %arrayidx3851523.sroa.7.0.copyload = load i64, ptr %arrayidx3851523.sroa.7.0.arrayidx385.sroa_idx, align 1
  %arrayidx3851523.sroa.9.0.arrayidx385.sroa_idx = getelementptr %union.YYSTYPE, ptr %yyvsp.11809, i64 -1, i32 0, i32 3
  %arrayidx3851523.sroa.9.0.copyload = load i64, ptr %arrayidx3851523.sroa.9.0.arrayidx385.sroa_idx, align 1
  %arrayidx3851523.sroa.11.0.arrayidx385.sroa_idx = getelementptr %union.YYSTYPE, ptr %yyvsp.11809, i64 -1, i32 0, i32 4
  %arrayidx3851523.sroa.11.0.copyload = load i64, ptr %arrayidx3851523.sroa.11.0.arrayidx385.sroa_idx, align 1
  %arrayidx3851523.sroa.13.0.arrayidx385.sroa_idx = getelementptr %union.YYSTYPE, ptr %yyvsp.11809, i64 -1, i32 0, i32 5
  %arrayidx3851523.sroa.13.0.copyload = load i64, ptr %arrayidx3851523.sroa.13.0.arrayidx385.sroa_idx, align 1
  %arrayidx3851523.sroa.15.0.arrayidx385.sroa_idx = getelementptr %union.YYSTYPE, ptr %yyvsp.11809, i64 -1, i32 0, i32 6
  %arrayidx3851523.sroa.15.0.copyload = load i32, ptr %arrayidx3851523.sroa.15.0.arrayidx385.sroa_idx, align 1
  %226 = and i64 %225, 2147483648
  %cmp.i1524.not = icmp eq i64 %226, 0
  %227 = load i32, ptr %ns.i1666, align 8, !tbaa !153
  br i1 %cmp.i1524.not, label %cond.false.i1534, label %cond.true.i1548

cond.true.i1548:                                  ; preds = %sw.bb384
  %228 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %227, i32 %arrayidx3851523.sroa.15.0.copyload)
  %229 = extractvalue { i32, i1 } %228, 1
  %230 = extractvalue { i32, i1 } %228, 0
  store i32 %230, ptr %ns.i1666, align 8
  %231 = load i64, ptr %seconds.i1668, align 8, !tbaa !154
  %232 = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %231, i64 %arrayidx3851523.sroa.13.0.copyload)
  %233 = extractvalue { i64, i1 } %232, 1
  %234 = extractvalue { i64, i1 } %232, 0
  store i64 %234, ptr %seconds.i1668, align 8
  %or123.i = or i1 %229, %233
  %235 = load i64, ptr %minutes.i1670, align 8, !tbaa !155
  %236 = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %235, i64 %arrayidx3851523.sroa.11.0.copyload)
  %237 = extractvalue { i64, i1 } %236, 1
  %238 = extractvalue { i64, i1 } %236, 0
  store i64 %238, ptr %minutes.i1670, align 8
  %or15124.i = or i1 %or123.i, %237
  %239 = load i64, ptr %hour.i1672, align 8, !tbaa !156
  %240 = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %239, i64 %arrayidx3851523.sroa.9.0.copyload)
  %241 = extractvalue { i64, i1 } %240, 1
  %242 = extractvalue { i64, i1 } %240, 0
  store i64 %242, ptr %hour.i1672, align 8
  %or21125.i = or i1 %or15124.i, %241
  %243 = load i64, ptr %day68.i1678, align 8, !tbaa !157
  %244 = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %243, i64 %arrayidx3851523.sroa.7.0.copyload)
  %245 = extractvalue { i64, i1 } %244, 1
  %246 = extractvalue { i64, i1 } %244, 0
  store i64 %246, ptr %day68.i1678, align 8
  %or27126.i = or i1 %or21125.i, %245
  %247 = load i64, ptr %month75.i1681, align 8, !tbaa !158
  %248 = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %247, i64 %arrayidx3851523.sroa.5.0.copyload)
  %249 = extractvalue { i64, i1 } %248, 1
  %250 = extractvalue { i64, i1 } %248, 0
  store i64 %250, ptr %month75.i1681, align 8
  %or33127.i = or i1 %or27126.i, %249
  %251 = load i64, ptr %rel1.i1665, align 8, !tbaa !159
  %252 = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %251, i64 %arrayidx3851523.sroa.0.0.copyload)
  %253 = extractvalue { i64, i1 } %252, 1
  %254 = extractvalue { i64, i1 } %252, 0
  store i64 %254, ptr %rel1.i1665, align 8
  %or39128.i = or i1 %or33127.i, %253
  br i1 %or39128.i, label %yyreturnlab, label %apply_relative_time.exit1549

cond.false.i1534:                                 ; preds = %sw.bb384
  %255 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %227, i32 %arrayidx3851523.sroa.15.0.copyload)
  %256 = extractvalue { i32, i1 } %255, 1
  %257 = extractvalue { i32, i1 } %255, 0
  store i32 %257, ptr %ns.i1666, align 8
  %258 = load i64, ptr %seconds.i1668, align 8, !tbaa !154
  %259 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %258, i64 %arrayidx3851523.sroa.13.0.copyload)
  %260 = extractvalue { i64, i1 } %259, 1
  %261 = extractvalue { i64, i1 } %259, 0
  store i64 %261, ptr %seconds.i1668, align 8
  %or52117.i1535 = or i1 %256, %260
  %262 = load i64, ptr %minutes.i1670, align 8, !tbaa !155
  %263 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %262, i64 %arrayidx3851523.sroa.11.0.copyload)
  %264 = extractvalue { i64, i1 } %263, 1
  %265 = extractvalue { i64, i1 } %263, 0
  store i64 %265, ptr %minutes.i1670, align 8
  %or59118.i1536 = or i1 %or52117.i1535, %264
  %266 = load i64, ptr %hour.i1672, align 8, !tbaa !156
  %267 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %266, i64 %arrayidx3851523.sroa.9.0.copyload)
  %268 = extractvalue { i64, i1 } %267, 1
  %269 = extractvalue { i64, i1 } %267, 0
  store i64 %269, ptr %hour.i1672, align 8
  %or66119.i1537 = or i1 %or59118.i1536, %268
  %270 = load i64, ptr %day68.i1678, align 8, !tbaa !157
  %271 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %270, i64 %arrayidx3851523.sroa.7.0.copyload)
  %272 = extractvalue { i64, i1 } %271, 1
  %273 = extractvalue { i64, i1 } %271, 0
  store i64 %273, ptr %day68.i1678, align 8
  %or73120.i1540 = or i1 %or66119.i1537, %272
  %274 = load i64, ptr %month75.i1681, align 8, !tbaa !158
  %275 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %274, i64 %arrayidx3851523.sroa.5.0.copyload)
  %276 = extractvalue { i64, i1 } %275, 1
  %277 = extractvalue { i64, i1 } %275, 0
  store i64 %277, ptr %month75.i1681, align 8
  %or80121.i1543 = or i1 %or73120.i1540, %276
  %278 = load i64, ptr %rel1.i1665, align 8, !tbaa !159
  %279 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %278, i64 %arrayidx3851523.sroa.0.0.copyload)
  %280 = extractvalue { i64, i1 } %279, 1
  %281 = extractvalue { i64, i1 } %279, 0
  store i64 %281, ptr %rel1.i1665, align 8
  %or87122.i1544 = or i1 %or80121.i1543, %280
  br i1 %or87122.i1544, label %yyreturnlab, label %apply_relative_time.exit1549

apply_relative_time.exit1549:                     ; preds = %cond.false.i1534, %cond.true.i1548
  store i8 1, ptr %rels_seen.i1653, align 1, !tbaa !160
  br label %sw.epilog

sw.bb391:                                         ; preds = %yyreduce
  %yyvsp.11550.sroa.0.0.copyload = load i64, ptr %yyvsp.11809, align 1
  %yyvsp.11550.sroa.4.0.yyvsp.1.sroa_idx = getelementptr inbounds i8, ptr %yyvsp.11809, i64 8
  %yyvsp.11550.sroa.4.0.copyload = load i64, ptr %yyvsp.11550.sroa.4.0.yyvsp.1.sroa_idx, align 1
  %yyvsp.11550.sroa.5.0.yyvsp.1.sroa_idx = getelementptr inbounds i8, ptr %yyvsp.11809, i64 16
  %yyvsp.11550.sroa.5.0.copyload = load i64, ptr %yyvsp.11550.sroa.5.0.yyvsp.1.sroa_idx, align 1
  %yyvsp.11550.sroa.6.0.yyvsp.1.sroa_idx = getelementptr inbounds i8, ptr %yyvsp.11809, i64 24
  %yyvsp.11550.sroa.6.0.copyload = load i64, ptr %yyvsp.11550.sroa.6.0.yyvsp.1.sroa_idx, align 1
  %yyvsp.11550.sroa.7.0.yyvsp.1.sroa_idx = getelementptr inbounds i8, ptr %yyvsp.11809, i64 32
  %yyvsp.11550.sroa.7.0.copyload = load i64, ptr %yyvsp.11550.sroa.7.0.yyvsp.1.sroa_idx, align 1
  %yyvsp.11550.sroa.8.0.yyvsp.1.sroa_idx = getelementptr inbounds i8, ptr %yyvsp.11809, i64 40
  %yyvsp.11550.sroa.8.0.copyload = load i64, ptr %yyvsp.11550.sroa.8.0.yyvsp.1.sroa_idx, align 1
  %yyvsp.11550.sroa.9.0.yyvsp.1.sroa_idx = getelementptr inbounds i8, ptr %yyvsp.11809, i64 48
  %yyvsp.11550.sroa.9.0.copyload = load i32, ptr %yyvsp.11550.sroa.9.0.yyvsp.1.sroa_idx, align 1
  %282 = load i32, ptr %ns.i1666, align 8, !tbaa !153
  %283 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %282, i32 %yyvsp.11550.sroa.9.0.copyload)
  %284 = extractvalue { i32, i1 } %283, 1
  %285 = extractvalue { i32, i1 } %283, 0
  store i32 %285, ptr %ns.i1666, align 8
  %286 = load i64, ptr %seconds.i1668, align 8, !tbaa !154
  %287 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %286, i64 %yyvsp.11550.sroa.8.0.copyload)
  %288 = extractvalue { i64, i1 } %287, 1
  %289 = extractvalue { i64, i1 } %287, 0
  store i64 %289, ptr %seconds.i1668, align 8
  %or52117.i1561 = or i1 %284, %288
  %290 = load i64, ptr %minutes.i1670, align 8, !tbaa !155
  %291 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %290, i64 %yyvsp.11550.sroa.7.0.copyload)
  %292 = extractvalue { i64, i1 } %291, 1
  %293 = extractvalue { i64, i1 } %291, 0
  store i64 %293, ptr %minutes.i1670, align 8
  %or59118.i1562 = or i1 %or52117.i1561, %292
  %294 = load i64, ptr %hour.i1672, align 8, !tbaa !156
  %295 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %294, i64 %yyvsp.11550.sroa.6.0.copyload)
  %296 = extractvalue { i64, i1 } %295, 1
  %297 = extractvalue { i64, i1 } %295, 0
  store i64 %297, ptr %hour.i1672, align 8
  %or66119.i1563 = or i1 %or59118.i1562, %296
  %298 = load i64, ptr %day68.i1678, align 8, !tbaa !157
  %299 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %298, i64 %yyvsp.11550.sroa.5.0.copyload)
  %300 = extractvalue { i64, i1 } %299, 1
  %301 = extractvalue { i64, i1 } %299, 0
  store i64 %301, ptr %day68.i1678, align 8
  %or73120.i1566 = or i1 %or66119.i1563, %300
  %302 = load i64, ptr %month75.i1681, align 8, !tbaa !158
  %303 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %302, i64 %yyvsp.11550.sroa.4.0.copyload)
  %304 = extractvalue { i64, i1 } %303, 1
  %305 = extractvalue { i64, i1 } %303, 0
  store i64 %305, ptr %month75.i1681, align 8
  %or80121.i1569 = or i1 %or73120.i1566, %304
  %306 = load i64, ptr %rel1.i1665, align 8, !tbaa !159
  %307 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %306, i64 %yyvsp.11550.sroa.0.0.copyload)
  %308 = extractvalue { i64, i1 } %307, 1
  %309 = extractvalue { i64, i1 } %307, 0
  store i64 %309, ptr %rel1.i1665, align 8
  %or87122.i1570 = or i1 %or80121.i1569, %308
  br i1 %or87122.i1570, label %yyreturnlab, label %apply_relative_time.exit1574.thread

apply_relative_time.exit1574.thread:              ; preds = %sw.bb391
  store i8 1, ptr %rels_seen.i1653, align 1, !tbaa !160
  br label %sw.epilog

sw.bb396:                                         ; preds = %yyreduce
  %yyvsp.11575.sroa.0.0.copyload = load i64, ptr %yyvsp.11809, align 1
  %yyvsp.11575.sroa.4.0.yyvsp.1.sroa_idx = getelementptr inbounds i8, ptr %yyvsp.11809, i64 8
  %yyvsp.11575.sroa.4.0.copyload = load i64, ptr %yyvsp.11575.sroa.4.0.yyvsp.1.sroa_idx, align 1
  %yyvsp.11575.sroa.5.0.yyvsp.1.sroa_idx = getelementptr inbounds i8, ptr %yyvsp.11809, i64 16
  %yyvsp.11575.sroa.5.0.copyload = load i64, ptr %yyvsp.11575.sroa.5.0.yyvsp.1.sroa_idx, align 1
  %yyvsp.11575.sroa.6.0.yyvsp.1.sroa_idx = getelementptr inbounds i8, ptr %yyvsp.11809, i64 24
  %yyvsp.11575.sroa.6.0.copyload = load i64, ptr %yyvsp.11575.sroa.6.0.yyvsp.1.sroa_idx, align 1
  %yyvsp.11575.sroa.7.0.yyvsp.1.sroa_idx = getelementptr inbounds i8, ptr %yyvsp.11809, i64 32
  %yyvsp.11575.sroa.7.0.copyload = load i64, ptr %yyvsp.11575.sroa.7.0.yyvsp.1.sroa_idx, align 1
  %yyvsp.11575.sroa.8.0.yyvsp.1.sroa_idx = getelementptr inbounds i8, ptr %yyvsp.11809, i64 40
  %yyvsp.11575.sroa.8.0.copyload = load i64, ptr %yyvsp.11575.sroa.8.0.yyvsp.1.sroa_idx, align 1
  %yyvsp.11575.sroa.9.0.yyvsp.1.sroa_idx = getelementptr inbounds i8, ptr %yyvsp.11809, i64 48
  %yyvsp.11575.sroa.9.0.copyload = load i32, ptr %yyvsp.11575.sroa.9.0.yyvsp.1.sroa_idx, align 1
  %310 = load i32, ptr %ns.i1666, align 8, !tbaa !153
  %311 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %310, i32 %yyvsp.11575.sroa.9.0.copyload)
  %312 = extractvalue { i32, i1 } %311, 1
  %313 = extractvalue { i32, i1 } %311, 0
  store i32 %313, ptr %ns.i1666, align 8
  %314 = load i64, ptr %seconds.i1668, align 8, !tbaa !154
  %315 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %314, i64 %yyvsp.11575.sroa.8.0.copyload)
  %316 = extractvalue { i64, i1 } %315, 1
  %317 = extractvalue { i64, i1 } %315, 0
  store i64 %317, ptr %seconds.i1668, align 8
  %or52117.i1586 = or i1 %312, %316
  %318 = load i64, ptr %minutes.i1670, align 8, !tbaa !155
  %319 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %318, i64 %yyvsp.11575.sroa.7.0.copyload)
  %320 = extractvalue { i64, i1 } %319, 1
  %321 = extractvalue { i64, i1 } %319, 0
  store i64 %321, ptr %minutes.i1670, align 8
  %or59118.i1587 = or i1 %or52117.i1586, %320
  %322 = load i64, ptr %hour.i1672, align 8, !tbaa !156
  %323 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %322, i64 %yyvsp.11575.sroa.6.0.copyload)
  %324 = extractvalue { i64, i1 } %323, 1
  %325 = extractvalue { i64, i1 } %323, 0
  store i64 %325, ptr %hour.i1672, align 8
  %or66119.i1588 = or i1 %or59118.i1587, %324
  %326 = load i64, ptr %day68.i1678, align 8, !tbaa !157
  %327 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %326, i64 %yyvsp.11575.sroa.5.0.copyload)
  %328 = extractvalue { i64, i1 } %327, 1
  %329 = extractvalue { i64, i1 } %327, 0
  store i64 %329, ptr %day68.i1678, align 8
  %or73120.i1591 = or i1 %or66119.i1588, %328
  %330 = load i64, ptr %month75.i1681, align 8, !tbaa !158
  %331 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %330, i64 %yyvsp.11575.sroa.4.0.copyload)
  %332 = extractvalue { i64, i1 } %331, 1
  %333 = extractvalue { i64, i1 } %331, 0
  store i64 %333, ptr %month75.i1681, align 8
  %or80121.i1594 = or i1 %or73120.i1591, %332
  %334 = load i64, ptr %rel1.i1665, align 8, !tbaa !159
  %335 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %334, i64 %yyvsp.11575.sroa.0.0.copyload)
  %336 = extractvalue { i64, i1 } %335, 1
  %337 = extractvalue { i64, i1 } %335, 0
  store i64 %337, ptr %rel1.i1665, align 8
  %or87122.i1595 = or i1 %or80121.i1594, %336
  br i1 %or87122.i1595, label %yyreturnlab, label %apply_relative_time.exit1599.thread

apply_relative_time.exit1599.thread:              ; preds = %sw.bb396
  store i8 1, ptr %rels_seen.i1653, align 1, !tbaa !160
  br label %sw.epilog

sw.bb401:                                         ; preds = %yyreduce
  %arrayidx406 = getelementptr inbounds %union.YYSTYPE, ptr %yyvsp.11809, i64 -1
  %338 = load i64, ptr %arrayidx406, align 8, !tbaa !69
  br label %sw.epilog

sw.bb408:                                         ; preds = %yyreduce
  %value415 = getelementptr %union.YYSTYPE, ptr %yyvsp.11809, i64 -1, i32 0, i32 1
  %339 = load i64, ptr %value415, align 8, !tbaa !69
  br label %sw.epilog

sw.bb417:                                         ; preds = %yyreduce
  br label %sw.epilog

sw.bb424:                                         ; preds = %yyreduce
  %arrayidx430 = getelementptr inbounds %union.YYSTYPE, ptr %yyvsp.11809, i64 -1
  %340 = load i64, ptr %arrayidx430, align 8, !tbaa !69
  br label %sw.epilog

sw.bb432:                                         ; preds = %yyreduce
  %value439 = getelementptr %union.YYSTYPE, ptr %yyvsp.11809, i64 -1, i32 0, i32 1
  %341 = load i64, ptr %value439, align 8, !tbaa !69
  br label %sw.epilog

sw.bb441:                                         ; preds = %yyreduce
  br label %sw.epilog

sw.bb448:                                         ; preds = %yyreduce
  %arrayidx454 = getelementptr inbounds %union.YYSTYPE, ptr %yyvsp.11809, i64 -1
  %342 = load i64, ptr %arrayidx454, align 8, !tbaa !69
  %343 = load i64, ptr %yyvsp.11809, align 8, !tbaa !69
  %344 = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %342, i64 %343)
  %345 = extractvalue { i64, i1 } %344, 1
  %346 = extractvalue { i64, i1 } %344, 0
  br i1 %345, label %yyreturnlab, label %sw.epilog

sw.bb459:                                         ; preds = %yyreduce
  %value466 = getelementptr %union.YYSTYPE, ptr %yyvsp.11809, i64 -1, i32 0, i32 1
  %347 = load i64, ptr %value466, align 8, !tbaa !69
  %348 = load i64, ptr %yyvsp.11809, align 8, !tbaa !69
  %349 = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %347, i64 %348)
  %350 = extractvalue { i64, i1 } %349, 1
  %351 = extractvalue { i64, i1 } %349, 0
  br i1 %350, label %yyreturnlab, label %sw.epilog

sw.bb471:                                         ; preds = %yyreduce
  %352 = load i64, ptr %yyvsp.11809, align 8, !tbaa !69
  br label %sw.epilog

sw.bb479:                                         ; preds = %yyreduce
  %arrayidx485 = getelementptr inbounds %union.YYSTYPE, ptr %yyvsp.11809, i64 -1
  %353 = load i64, ptr %arrayidx485, align 8, !tbaa !69
  br label %sw.epilog

sw.bb486:                                         ; preds = %yyreduce
  %value494 = getelementptr %union.YYSTYPE, ptr %yyvsp.11809, i64 -1, i32 0, i32 1
  %354 = load i64, ptr %value494, align 8, !tbaa !69
  br label %sw.epilog

sw.bb496:                                         ; preds = %yyreduce
  br label %sw.epilog

sw.bb504:                                         ; preds = %yyreduce
  %arrayidx511 = getelementptr inbounds %union.YYSTYPE, ptr %yyvsp.11809, i64 -1
  %355 = load i64, ptr %arrayidx511, align 8, !tbaa !69
  br label %sw.epilog

sw.bb512:                                         ; preds = %yyreduce
  %value521 = getelementptr %union.YYSTYPE, ptr %yyvsp.11809, i64 -1, i32 0, i32 1
  %356 = load i64, ptr %value521, align 8, !tbaa !69
  br label %sw.epilog

sw.bb523:                                         ; preds = %yyreduce
  br label %sw.epilog

sw.bb532:                                         ; preds = %yyreduce
  %arrayidx540 = getelementptr inbounds %union.YYSTYPE, ptr %yyvsp.11809, i64 -1
  %357 = load i64, ptr %arrayidx540, align 8, !tbaa !69
  br label %sw.epilog

sw.bb542:                                         ; preds = %yyreduce
  %value551 = getelementptr %union.YYSTYPE, ptr %yyvsp.11809, i64 -1, i32 0, i32 1
  %358 = load i64, ptr %value551, align 8, !tbaa !69
  br label %sw.epilog

sw.bb553:                                         ; preds = %yyreduce
  %arrayidx561 = getelementptr inbounds %union.YYSTYPE, ptr %yyvsp.11809, i64 -1
  %359 = load i64, ptr %arrayidx561, align 8, !tbaa !69
  %tv_nsec565 = getelementptr %union.YYSTYPE, ptr %yyvsp.11809, i64 -1, i32 0, i32 1
  %360 = load i64, ptr %tv_nsec565, align 8, !tbaa !69
  %conv566 = trunc i64 %360 to i32
  br label %sw.epilog

sw.bb567:                                         ; preds = %yyreduce
  %arrayidx576 = getelementptr inbounds %union.YYSTYPE, ptr %yyvsp.11809, i64 -1
  %361 = load i64, ptr %arrayidx576, align 8, !tbaa !69
  %tv_nsec580 = getelementptr %union.YYSTYPE, ptr %yyvsp.11809, i64 -1, i32 0, i32 1
  %362 = load i64, ptr %tv_nsec580, align 8, !tbaa !69
  %conv581 = trunc i64 %362 to i32
  br label %sw.epilog

sw.bb583:                                         ; preds = %yyreduce
  br label %sw.epilog

sw.bb593:                                         ; preds = %yyreduce
  %value603 = getelementptr %union.YYSTYPE, ptr %yyvsp.11809, i64 -1, i32 0, i32 1
  %363 = load i64, ptr %value603, align 8, !tbaa !69
  br label %sw.epilog

sw.bb605:                                         ; preds = %yyreduce
  %value615 = getelementptr %union.YYSTYPE, ptr %yyvsp.11809, i64 -1, i32 0, i32 1
  %364 = load i64, ptr %value615, align 8, !tbaa !69
  br label %sw.epilog

sw.bb617:                                         ; preds = %yyreduce
  %value627 = getelementptr %union.YYSTYPE, ptr %yyvsp.11809, i64 -1, i32 0, i32 1
  %365 = load i64, ptr %value627, align 8, !tbaa !69
  %366 = load i64, ptr %yyvsp.11809, align 8, !tbaa !69
  %367 = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %365, i64 %366)
  %368 = extractvalue { i64, i1 } %367, 1
  %369 = extractvalue { i64, i1 } %367, 0
  br i1 %368, label %yyreturnlab, label %sw.epilog

sw.bb632:                                         ; preds = %yyreduce
  %value642 = getelementptr %union.YYSTYPE, ptr %yyvsp.11809, i64 -1, i32 0, i32 1
  %370 = load i64, ptr %value642, align 8, !tbaa !69
  br label %sw.epilog

sw.bb644:                                         ; preds = %yyreduce
  %value654 = getelementptr %union.YYSTYPE, ptr %yyvsp.11809, i64 -1, i32 0, i32 1
  %371 = load i64, ptr %value654, align 8, !tbaa !69
  br label %sw.epilog

sw.bb656:                                         ; preds = %yyreduce
  %value666 = getelementptr %union.YYSTYPE, ptr %yyvsp.11809, i64 -1, i32 0, i32 1
  %372 = load i64, ptr %value666, align 8, !tbaa !69
  br label %sw.epilog

sw.bb668:                                         ; preds = %yyreduce
  %373 = load i64, ptr %yyvsp.11809, align 8, !tbaa !69
  br label %sw.epilog

sw.bb679:                                         ; preds = %yyreduce
  %value681 = getelementptr inbounds %struct.textint, ptr %yyvsp.11809, i64 0, i32 1
  %374 = load i64, ptr %value681, align 8, !tbaa !69
  br label %sw.epilog

sw.bb690:                                         ; preds = %yyreduce
  %value692 = getelementptr inbounds %struct.textint, ptr %yyvsp.11809, i64 0, i32 1
  %375 = load i64, ptr %value692, align 8, !tbaa !69
  br label %sw.epilog

sw.bb701:                                         ; preds = %yyreduce
  %yyvsp.11600.sroa.0.0.copyload1706 = load i64, ptr %yyvsp.11809, align 1
  %yyvsp.11600.sroa.4.0.yyvsp.1.sroa_idx = getelementptr inbounds i8, ptr %yyvsp.11809, i64 8
  %yyvsp.11600.sroa.4.0.copyload1707 = load i64, ptr %yyvsp.11600.sroa.4.0.yyvsp.1.sroa_idx, align 1
  %yyvsp.11600.sroa.6.0.yyvsp.1.sroa_idx = getelementptr inbounds i8, ptr %yyvsp.11809, i64 16
  %yyvsp.11600.sroa.6.0.copyload1709 = load i64, ptr %yyvsp.11600.sroa.6.0.yyvsp.1.sroa_idx, align 1
  %376 = load i64, ptr %dates_seen.i1618, align 8, !tbaa !141
  %tobool.not.i = icmp eq i64 %376, 0
  br i1 %tobool.not.i, label %if.else.i1603, label %land.lhs.true.i1601

land.lhs.true.i1601:                              ; preds = %sw.bb701
  %377 = load i64, ptr %digits.i1622, align 8, !tbaa !168
  %tobool1.not.i = icmp eq i64 %377, 0
  br i1 %tobool1.not.i, label %land.lhs.true2.i, label %if.else.i1603

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i1601
  %378 = load i8, ptr %rels_seen.i1653, align 1, !tbaa !160, !range !56, !noundef !57
  %tobool3.not.i = icmp eq i8 %378, 0
  br i1 %tobool3.not.i, label %land.lhs.true4.i, label %if.else.i1603

land.lhs.true4.i:                                 ; preds = %land.lhs.true2.i
  %379 = load i64, ptr %times_seen.i1656, align 8, !tbaa !140
  %tobool5.i = icmp ne i64 %379, 0
  %cmp.i1614 = icmp sgt i64 %yyvsp.11600.sroa.6.0.copyload1709, 2
  %or.cond.i1615 = select i1 %tobool5.i, i1 true, i1 %cmp.i1614
  br i1 %or.cond.i1615, label %if.then.i1616, label %if.else21.i.thread

if.else21.i.thread:                               ; preds = %land.lhs.true4.i
  store i64 1, ptr %times_seen.i1656, align 8, !tbaa !140
  br label %if.end.i1605

if.then.i1616:                                    ; preds = %land.lhs.true4.i
  store i8 1, ptr %year_seen.i1662, align 8, !tbaa !169
  store i64 %yyvsp.11600.sroa.0.0.copyload1706, ptr %year.i1621, align 8, !tbaa !166, !tbaa.struct !167
  store i64 %yyvsp.11600.sroa.4.0.copyload1707, ptr %arrayidx7041617.sroa.4.0.year.i1621.sroa_idx, align 8, !tbaa !166, !tbaa.struct !138
  store i64 %yyvsp.11600.sroa.6.0.copyload1709, ptr %digits.i1622, align 8, !tbaa !166, !tbaa.struct !149
  br label %sw.epilog

if.else.i1603:                                    ; preds = %land.lhs.true2.i, %land.lhs.true.i1601, %sw.bb701
  %cmp9.i = icmp sgt i64 %yyvsp.11600.sroa.6.0.copyload1709, 4
  br i1 %cmp9.i, label %if.then10.i, label %if.else21.i

if.then10.i:                                      ; preds = %if.else.i1603
  %inc.i = add nsw i64 %376, 1
  store i64 %inc.i, ptr %dates_seen.i1618, align 8, !tbaa !141
  %rem.i1608 = srem i64 %yyvsp.11600.sroa.4.0.copyload1707, 100
  store i64 %rem.i1608, ptr %day.i1644, align 8, !tbaa !165
  %div.i1610 = sdiv i64 %yyvsp.11600.sroa.4.0.copyload1707, 100
  %rem13.i = srem i64 %div.i1610, 100
  store i64 %rem13.i, ptr %month.i1647, align 8, !tbaa !164
  %div15.i = sdiv i64 %yyvsp.11600.sroa.4.0.copyload1707, 10000
  store i64 %div15.i, ptr %arrayidx7041617.sroa.4.0.year.i1621.sroa_idx, align 8, !tbaa !170
  %sub.i1612 = add nsw i64 %yyvsp.11600.sroa.6.0.copyload1709, -4
  store i64 %sub.i1612, ptr %digits.i1622, align 8, !tbaa !168
  br label %sw.epilog

if.else21.i:                                      ; preds = %if.else.i1603
  %380 = load i64, ptr %times_seen.i1656, align 8, !tbaa !140
  %inc23.i = add nsw i64 %380, 1
  store i64 %inc23.i, ptr %times_seen.i1656, align 8, !tbaa !140
  %cmp25.i1604 = icmp slt i64 %yyvsp.11600.sroa.6.0.copyload1709, 3
  br i1 %cmp25.i1604, label %if.end.i1605, label %if.else28.i

if.else28.i:                                      ; preds = %if.else21.i
  %div30.i = sdiv i64 %yyvsp.11600.sroa.4.0.copyload1707, 100
  %rem33.i = srem i64 %yyvsp.11600.sroa.4.0.copyload1707, 100
  br label %if.end.i1605

if.end.i1605:                                     ; preds = %if.else28.i, %if.else21.i, %if.else21.i.thread
  %div30.sink.i = phi i64 [ %div30.i, %if.else28.i ], [ %yyvsp.11600.sroa.4.0.copyload1707, %if.else21.i ], [ %yyvsp.11600.sroa.4.0.copyload1707, %if.else21.i.thread ]
  %rem33.sink.i = phi i64 [ %rem33.i, %if.else28.i ], [ 0, %if.else21.i ], [ 0, %if.else21.i.thread ]
  store i64 %div30.sink.i, ptr %1, align 8
  store i64 %rem33.sink.i, ptr %2, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %seconds.i1638, i8 0, i64 16, i1 false)
  store i32 2, ptr %meridian.i1639, align 4, !tbaa !147
  br label %sw.epilog

sw.bb703:                                         ; preds = %yyreduce
  %arrayidx704 = getelementptr inbounds %union.YYSTYPE, ptr %yyvsp.11809, i64 -1
  %arrayidx7041617.sroa.0.0.copyload1711 = load i64, ptr %arrayidx704, align 1
  %arrayidx7041617.sroa.4.0.arrayidx704.sroa_idx = getelementptr %union.YYSTYPE, ptr %yyvsp.11809, i64 -1, i32 0, i32 1
  %arrayidx7041617.sroa.4.0.copyload1712 = load i64, ptr %arrayidx7041617.sroa.4.0.arrayidx704.sroa_idx, align 1
  %arrayidx7041617.sroa.6.0.arrayidx704.sroa_idx = getelementptr %union.YYSTYPE, ptr %yyvsp.11809, i64 -1, i32 0, i32 2
  %arrayidx7041617.sroa.6.0.copyload1714 = load i64, ptr %arrayidx7041617.sroa.6.0.arrayidx704.sroa_idx, align 1
  %381 = load i64, ptr %dates_seen.i1618, align 8, !tbaa !141
  %tobool.not.i1619 = icmp eq i64 %381, 0
  br i1 %tobool.not.i1619, label %if.else.i1624, label %land.lhs.true.i1620

land.lhs.true.i1620:                              ; preds = %sw.bb703
  %382 = load i64, ptr %digits.i1622, align 8, !tbaa !168
  %tobool1.not.i1623 = icmp eq i64 %382, 0
  br i1 %tobool1.not.i1623, label %land.lhs.true2.i1652, label %if.else.i1624

land.lhs.true2.i1652:                             ; preds = %land.lhs.true.i1620
  %383 = load i8, ptr %rels_seen.i1653, align 1, !tbaa !160, !range !56, !noundef !57
  %tobool3.not.i1654 = icmp eq i8 %383, 0
  br i1 %tobool3.not.i1654, label %land.lhs.true4.i1655, label %if.else.i1624

land.lhs.true4.i1655:                             ; preds = %land.lhs.true2.i1652
  %384 = load i64, ptr %times_seen.i1656, align 8, !tbaa !140
  %tobool5.i1657 = icmp ne i64 %384, 0
  %cmp.i1659 = icmp sgt i64 %arrayidx7041617.sroa.6.0.copyload1714, 2
  %or.cond.i1660 = select i1 %tobool5.i1657, i1 true, i1 %cmp.i1659
  br i1 %or.cond.i1660, label %if.then.i1661, label %if.else21.i1627.thread

if.else21.i1627.thread:                           ; preds = %land.lhs.true4.i1655
  store i64 1, ptr %times_seen.i1656, align 8, !tbaa !140
  br label %if.end.i1635

if.then.i1661:                                    ; preds = %land.lhs.true4.i1655
  store i8 1, ptr %year_seen.i1662, align 8, !tbaa !169
  store i64 %arrayidx7041617.sroa.0.0.copyload1711, ptr %year.i1621, align 8, !tbaa !166, !tbaa.struct !167
  store i64 %arrayidx7041617.sroa.4.0.copyload1712, ptr %arrayidx7041617.sroa.4.0.year.i1621.sroa_idx, align 8, !tbaa !166, !tbaa.struct !138
  store i64 %arrayidx7041617.sroa.6.0.copyload1714, ptr %digits.i1622, align 8, !tbaa !166, !tbaa.struct !149
  br label %digits_to_date_time.exit1663

if.else.i1624:                                    ; preds = %land.lhs.true2.i1652, %land.lhs.true.i1620, %sw.bb703
  %cmp9.i1626 = icmp sgt i64 %arrayidx7041617.sroa.6.0.copyload1714, 4
  br i1 %cmp9.i1626, label %if.then10.i1640, label %if.else21.i1627

if.then10.i1640:                                  ; preds = %if.else.i1624
  %inc.i1641 = add nsw i64 %381, 1
  store i64 %inc.i1641, ptr %dates_seen.i1618, align 8, !tbaa !141
  %rem.i1643 = srem i64 %arrayidx7041617.sroa.4.0.copyload1712, 100
  store i64 %rem.i1643, ptr %day.i1644, align 8, !tbaa !165
  %div.i1645 = sdiv i64 %arrayidx7041617.sroa.4.0.copyload1712, 100
  %rem13.i1646 = srem i64 %div.i1645, 100
  store i64 %rem13.i1646, ptr %month.i1647, align 8, !tbaa !164
  %div15.i1648 = sdiv i64 %arrayidx7041617.sroa.4.0.copyload1712, 10000
  store i64 %div15.i1648, ptr %arrayidx7041617.sroa.4.0.year.i1621.sroa_idx, align 8, !tbaa !170
  %sub.i1650 = add nsw i64 %arrayidx7041617.sroa.6.0.copyload1714, -4
  store i64 %sub.i1650, ptr %digits.i1622, align 8, !tbaa !168
  br label %digits_to_date_time.exit1663

if.else21.i1627:                                  ; preds = %if.else.i1624
  %385 = load i64, ptr %times_seen.i1656, align 8, !tbaa !140
  %inc23.i1629 = add nsw i64 %385, 1
  store i64 %inc23.i1629, ptr %times_seen.i1656, align 8, !tbaa !140
  %cmp25.i1630 = icmp slt i64 %arrayidx7041617.sroa.6.0.copyload1714, 3
  br i1 %cmp25.i1630, label %if.end.i1635, label %if.else28.i1632

if.else28.i1632:                                  ; preds = %if.else21.i1627
  %div30.i1633 = sdiv i64 %arrayidx7041617.sroa.4.0.copyload1712, 100
  %rem33.i1634 = srem i64 %arrayidx7041617.sroa.4.0.copyload1712, 100
  br label %if.end.i1635

if.end.i1635:                                     ; preds = %if.else28.i1632, %if.else21.i1627, %if.else21.i1627.thread
  %div30.sink.i1636 = phi i64 [ %div30.i1633, %if.else28.i1632 ], [ %arrayidx7041617.sroa.4.0.copyload1712, %if.else21.i1627 ], [ %arrayidx7041617.sroa.4.0.copyload1712, %if.else21.i1627.thread ]
  %rem33.sink.i1637 = phi i64 [ %rem33.i1634, %if.else28.i1632 ], [ 0, %if.else21.i1627 ], [ 0, %if.else21.i1627.thread ]
  store i64 %div30.sink.i1636, ptr %1, align 8
  store i64 %rem33.sink.i1637, ptr %2, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %seconds.i1638, i8 0, i64 16, i1 false)
  store i32 2, ptr %meridian.i1639, align 4, !tbaa !147
  br label %digits_to_date_time.exit1663

digits_to_date_time.exit1663:                     ; preds = %if.end.i1635, %if.then10.i1640, %if.then.i1661
  %yyvsp.11664.sroa.0.0.copyload = load i64, ptr %yyvsp.11809, align 1
  %yyvsp.11664.sroa.4.0.yyvsp.1.sroa_idx = getelementptr inbounds i8, ptr %yyvsp.11809, i64 8
  %yyvsp.11664.sroa.4.0.copyload = load i64, ptr %yyvsp.11664.sroa.4.0.yyvsp.1.sroa_idx, align 1
  %yyvsp.11664.sroa.5.0.yyvsp.1.sroa_idx = getelementptr inbounds i8, ptr %yyvsp.11809, i64 16
  %yyvsp.11664.sroa.5.0.copyload = load i64, ptr %yyvsp.11664.sroa.5.0.yyvsp.1.sroa_idx, align 1
  %yyvsp.11664.sroa.6.0.yyvsp.1.sroa_idx = getelementptr inbounds i8, ptr %yyvsp.11809, i64 24
  %yyvsp.11664.sroa.6.0.copyload = load i64, ptr %yyvsp.11664.sroa.6.0.yyvsp.1.sroa_idx, align 1
  %yyvsp.11664.sroa.7.0.yyvsp.1.sroa_idx = getelementptr inbounds i8, ptr %yyvsp.11809, i64 32
  %yyvsp.11664.sroa.7.0.copyload = load i64, ptr %yyvsp.11664.sroa.7.0.yyvsp.1.sroa_idx, align 1
  %yyvsp.11664.sroa.8.0.yyvsp.1.sroa_idx = getelementptr inbounds i8, ptr %yyvsp.11809, i64 40
  %yyvsp.11664.sroa.8.0.copyload = load i64, ptr %yyvsp.11664.sroa.8.0.yyvsp.1.sroa_idx, align 1
  %yyvsp.11664.sroa.9.0.yyvsp.1.sroa_idx = getelementptr inbounds i8, ptr %yyvsp.11809, i64 48
  %yyvsp.11664.sroa.9.0.copyload = load i32, ptr %yyvsp.11664.sroa.9.0.yyvsp.1.sroa_idx, align 1
  %386 = load i32, ptr %ns.i1666, align 8, !tbaa !153
  %387 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %386, i32 %yyvsp.11664.sroa.9.0.copyload)
  %388 = extractvalue { i32, i1 } %387, 1
  %389 = extractvalue { i32, i1 } %387, 0
  store i32 %389, ptr %ns.i1666, align 8
  %390 = load i64, ptr %seconds.i1668, align 8, !tbaa !154
  %391 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %390, i64 %yyvsp.11664.sroa.8.0.copyload)
  %392 = extractvalue { i64, i1 } %391, 1
  %393 = extractvalue { i64, i1 } %391, 0
  store i64 %393, ptr %seconds.i1668, align 8
  %or52117.i1675 = or i1 %388, %392
  %394 = load i64, ptr %minutes.i1670, align 8, !tbaa !155
  %395 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %394, i64 %yyvsp.11664.sroa.7.0.copyload)
  %396 = extractvalue { i64, i1 } %395, 1
  %397 = extractvalue { i64, i1 } %395, 0
  store i64 %397, ptr %minutes.i1670, align 8
  %or59118.i1676 = or i1 %or52117.i1675, %396
  %398 = load i64, ptr %hour.i1672, align 8, !tbaa !156
  %399 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %398, i64 %yyvsp.11664.sroa.6.0.copyload)
  %400 = extractvalue { i64, i1 } %399, 1
  %401 = extractvalue { i64, i1 } %399, 0
  store i64 %401, ptr %hour.i1672, align 8
  %or66119.i1677 = or i1 %or59118.i1676, %400
  %402 = load i64, ptr %day68.i1678, align 8, !tbaa !157
  %403 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %402, i64 %yyvsp.11664.sroa.5.0.copyload)
  %404 = extractvalue { i64, i1 } %403, 1
  %405 = extractvalue { i64, i1 } %403, 0
  store i64 %405, ptr %day68.i1678, align 8
  %or73120.i1680 = or i1 %or66119.i1677, %404
  %406 = load i64, ptr %month75.i1681, align 8, !tbaa !158
  %407 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %406, i64 %yyvsp.11664.sroa.4.0.copyload)
  %408 = extractvalue { i64, i1 } %407, 1
  %409 = extractvalue { i64, i1 } %407, 0
  store i64 %409, ptr %month75.i1681, align 8
  %or80121.i1683 = or i1 %or73120.i1680, %408
  %410 = load i64, ptr %rel1.i1665, align 8, !tbaa !159
  %411 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %410, i64 %yyvsp.11664.sroa.0.0.copyload)
  %412 = extractvalue { i64, i1 } %411, 1
  %413 = extractvalue { i64, i1 } %411, 0
  store i64 %413, ptr %rel1.i1665, align 8
  %or87122.i1684 = or i1 %or80121.i1683, %412
  br i1 %or87122.i1684, label %yyreturnlab, label %apply_relative_time.exit1688.thread

apply_relative_time.exit1688.thread:              ; preds = %digits_to_date_time.exit1663
  store i8 1, ptr %rels_seen.i1653, align 1, !tbaa !160
  br label %sw.epilog

sw.bb709:                                         ; preds = %yyreduce
  br label %sw.epilog

sw.bb710:                                         ; preds = %yyreduce
  %value712 = getelementptr inbounds %struct.textint, ptr %yyvsp.11809, i64 0, i32 1
  %414 = load i64, ptr %value712, align 8, !tbaa !69
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb710, %sw.bb709, %apply_relative_time.exit1688.thread, %if.end.i1605, %if.then10.i, %if.then.i1616, %sw.bb690, %sw.bb679, %sw.bb668, %sw.bb656, %sw.bb644, %sw.bb632, %sw.bb617, %sw.bb605, %sw.bb593, %sw.bb583, %sw.bb567, %sw.bb553, %sw.bb542, %sw.bb532, %sw.bb523, %sw.bb512, %sw.bb504, %sw.bb496, %sw.bb486, %sw.bb479, %sw.bb471, %sw.bb459, %sw.bb448, %sw.bb441, %sw.bb432, %sw.bb424, %sw.bb417, %sw.bb408, %sw.bb401, %apply_relative_time.exit1599.thread, %apply_relative_time.exit1574.thread, %apply_relative_time.exit1549, %if.end378, %sw.bb363, %sw.bb357, %sw.bb349, %sw.bb343, %if.end338, %if.end320, %if.end299, %if.end285, %sw.bb267, %sw.bb259, %sw.bb253, %sw.bb248, %sw.bb245, %sw.bb240, %sw.bb235, %if.end229, %if.end222, %if.end215, %sw.bb206, %sw.bb203, %sw.bb200, %sw.bb197, %time_zone_hhmm.exit.thread, %sw.bb178, %sw.bb172, %sw.bb168, %sw.bb157, %sw.bb149, %sw.bb145, %sw.bb143, %sw.bb141, %sw.bb139, %sw.bb136, %sw.bb132, %sw.bb129, %sw.bb127, %sw.bb124, %sw.bb120, %sw.bb117, %sw.bb, %yyreduce
  %yyval.sroa.66.0 = phi i32 [ %yyval.sroa.66.0.copyload, %yyreduce ], [ %yyval.sroa.66.0.copyload, %sw.bb710 ], [ %yyval.sroa.66.0.copyload, %sw.bb709 ], [ %yyval.sroa.66.0.copyload, %sw.bb690 ], [ %yyval.sroa.66.0.copyload, %sw.bb679 ], [ 0, %sw.bb668 ], [ 0, %sw.bb656 ], [ 0, %sw.bb644 ], [ 0, %sw.bb632 ], [ 0, %sw.bb617 ], [ 0, %sw.bb605 ], [ 0, %sw.bb593 ], [ 0, %sw.bb583 ], [ 0, %sw.bb567 ], [ 0, %sw.bb553 ], [ 0, %sw.bb542 ], [ 0, %sw.bb532 ], [ 0, %sw.bb523 ], [ 0, %sw.bb512 ], [ 0, %sw.bb504 ], [ 0, %sw.bb496 ], [ 0, %sw.bb486 ], [ 0, %sw.bb479 ], [ 0, %sw.bb471 ], [ 0, %sw.bb459 ], [ 0, %sw.bb448 ], [ 0, %sw.bb441 ], [ 0, %sw.bb432 ], [ 0, %sw.bb424 ], [ 0, %sw.bb417 ], [ 0, %sw.bb408 ], [ 0, %sw.bb401 ], [ %yyval.sroa.66.0.copyload, %apply_relative_time.exit1549 ], [ %yyval.sroa.66.0.copyload, %if.end378 ], [ %yyval.sroa.66.0.copyload, %sw.bb363 ], [ %yyval.sroa.66.0.copyload, %sw.bb357 ], [ %yyval.sroa.66.0.copyload, %sw.bb349 ], [ %yyval.sroa.66.0.copyload, %sw.bb343 ], [ %yyval.sroa.66.0.copyload, %if.end338 ], [ %yyval.sroa.66.0.copyload, %if.end320 ], [ %yyval.sroa.66.0.copyload, %if.end285 ], [ %yyval.sroa.66.0.copyload, %if.end299 ], [ %yyval.sroa.66.0.copyload, %sw.bb267 ], [ %yyval.sroa.66.0.copyload, %sw.bb259 ], [ %yyval.sroa.66.0.copyload, %sw.bb253 ], [ %yyval.sroa.66.0.copyload, %sw.bb248 ], [ %yyval.sroa.66.0.copyload, %sw.bb245 ], [ %yyval.sroa.66.0.copyload, %sw.bb240 ], [ %yyval.sroa.66.0.copyload, %sw.bb235 ], [ %yyval.sroa.66.0.copyload, %if.end229 ], [ %yyval.sroa.66.0.copyload, %if.end222 ], [ %yyval.sroa.66.0.copyload, %if.end215 ], [ %yyval.sroa.66.0.copyload, %sw.bb206 ], [ %yyval.sroa.66.0.copyload, %sw.bb203 ], [ %yyval.sroa.66.0.copyload, %sw.bb200 ], [ %yyval.sroa.66.0.copyload, %sw.bb197 ], [ %yyval.sroa.66.0.copyload, %sw.bb178 ], [ %yyval.sroa.66.0.copyload, %sw.bb172 ], [ %yyval.sroa.66.0.copyload, %sw.bb168 ], [ %yyval.sroa.66.0.copyload, %sw.bb157 ], [ %yyval.sroa.66.0.copyload, %sw.bb149 ], [ %yyval.sroa.66.0.copyload, %sw.bb145 ], [ %yyval.sroa.66.0.copyload, %sw.bb143 ], [ %yyval.sroa.66.0.copyload, %sw.bb141 ], [ %yyval.sroa.66.0.copyload, %sw.bb139 ], [ %yyval.sroa.66.0.copyload, %sw.bb136 ], [ %yyval.sroa.66.0.copyload, %sw.bb132 ], [ %yyval.sroa.66.0.copyload, %sw.bb129 ], [ %yyval.sroa.66.0.copyload, %sw.bb127 ], [ %yyval.sroa.66.0.copyload, %sw.bb124 ], [ %yyval.sroa.66.0.copyload, %sw.bb120 ], [ %yyval.sroa.66.0.copyload, %sw.bb117 ], [ %yyval.sroa.66.0.copyload, %sw.bb ], [ %yyval.sroa.66.0.copyload, %time_zone_hhmm.exit.thread ], [ %yyval.sroa.66.0.copyload, %apply_relative_time.exit1574.thread ], [ %yyval.sroa.66.0.copyload, %apply_relative_time.exit1599.thread ], [ %yyval.sroa.66.0.copyload, %if.then.i1616 ], [ %yyval.sroa.66.0.copyload, %if.then10.i ], [ %yyval.sroa.66.0.copyload, %if.end.i1605 ], [ %yyval.sroa.66.0.copyload, %apply_relative_time.exit1688.thread ]
  %yyval.sroa.64.0 = phi i32 [ %yyval.sroa.64.0.copyload, %yyreduce ], [ %yyval.sroa.64.0.copyload, %sw.bb710 ], [ %yyval.sroa.64.0.copyload, %sw.bb709 ], [ %yyval.sroa.64.0.copyload, %sw.bb690 ], [ %yyval.sroa.64.0.copyload, %sw.bb679 ], [ 0, %sw.bb668 ], [ 0, %sw.bb656 ], [ 0, %sw.bb644 ], [ 0, %sw.bb632 ], [ 0, %sw.bb617 ], [ 0, %sw.bb605 ], [ 0, %sw.bb593 ], [ 0, %sw.bb583 ], [ %conv581, %sw.bb567 ], [ %conv566, %sw.bb553 ], [ 0, %sw.bb542 ], [ 0, %sw.bb532 ], [ 0, %sw.bb523 ], [ 0, %sw.bb512 ], [ 0, %sw.bb504 ], [ 0, %sw.bb496 ], [ 0, %sw.bb486 ], [ 0, %sw.bb479 ], [ 0, %sw.bb471 ], [ 0, %sw.bb459 ], [ 0, %sw.bb448 ], [ 0, %sw.bb441 ], [ 0, %sw.bb432 ], [ 0, %sw.bb424 ], [ 0, %sw.bb417 ], [ 0, %sw.bb408 ], [ 0, %sw.bb401 ], [ %yyval.sroa.64.0.copyload, %apply_relative_time.exit1549 ], [ %yyval.sroa.64.0.copyload, %if.end378 ], [ %yyval.sroa.64.0.copyload, %sw.bb363 ], [ %yyval.sroa.64.0.copyload, %sw.bb357 ], [ %yyval.sroa.64.0.copyload, %sw.bb349 ], [ %yyval.sroa.64.0.copyload, %sw.bb343 ], [ %yyval.sroa.64.0.copyload, %if.end338 ], [ %yyval.sroa.64.0.copyload, %if.end320 ], [ %yyval.sroa.64.0.copyload, %if.end285 ], [ %yyval.sroa.64.0.copyload, %if.end299 ], [ %yyval.sroa.64.0.copyload, %sw.bb267 ], [ %yyval.sroa.64.0.copyload, %sw.bb259 ], [ %yyval.sroa.64.0.copyload, %sw.bb253 ], [ %yyval.sroa.64.0.copyload, %sw.bb248 ], [ %yyval.sroa.64.0.copyload, %sw.bb245 ], [ %yyval.sroa.64.0.copyload, %sw.bb240 ], [ %yyval.sroa.64.0.copyload, %sw.bb235 ], [ %yyval.sroa.64.0.copyload, %if.end229 ], [ %yyval.sroa.64.0.copyload, %if.end222 ], [ %yyval.sroa.64.0.copyload, %if.end215 ], [ %yyval.sroa.64.0.copyload, %sw.bb206 ], [ %yyval.sroa.64.0.copyload, %sw.bb203 ], [ %yyval.sroa.64.0.copyload, %sw.bb200 ], [ %yyval.sroa.64.0.copyload, %sw.bb197 ], [ %yyval.sroa.64.0.copyload, %sw.bb178 ], [ %yyval.sroa.64.0.copyload, %sw.bb172 ], [ %yyval.sroa.64.0.copyload, %sw.bb168 ], [ %yyval.sroa.64.0.copyload, %sw.bb157 ], [ %yyval.sroa.64.0.copyload, %sw.bb149 ], [ %yyval.sroa.64.0.copyload, %sw.bb145 ], [ %yyval.sroa.64.0.copyload, %sw.bb143 ], [ %yyval.sroa.64.0.copyload, %sw.bb141 ], [ %yyval.sroa.64.0.copyload, %sw.bb139 ], [ %yyval.sroa.64.0.copyload, %sw.bb136 ], [ %yyval.sroa.64.0.copyload, %sw.bb132 ], [ %yyval.sroa.64.0.copyload, %sw.bb129 ], [ %yyval.sroa.64.0.copyload, %sw.bb127 ], [ %yyval.sroa.64.0.copyload, %sw.bb124 ], [ %yyval.sroa.64.0.copyload, %sw.bb120 ], [ %yyval.sroa.64.0.copyload, %sw.bb117 ], [ %yyval.sroa.64.0.copyload, %sw.bb ], [ %yyval.sroa.64.0.copyload, %time_zone_hhmm.exit.thread ], [ %yyval.sroa.64.0.copyload, %apply_relative_time.exit1574.thread ], [ %yyval.sroa.64.0.copyload, %apply_relative_time.exit1599.thread ], [ %yyval.sroa.64.0.copyload, %if.then.i1616 ], [ %yyval.sroa.64.0.copyload, %if.then10.i ], [ %yyval.sroa.64.0.copyload, %if.end.i1605 ], [ %yyval.sroa.64.0.copyload, %apply_relative_time.exit1688.thread ]
  %yyval.sroa.58.0 = phi i64 [ %yyval.sroa.58.0.copyload, %yyreduce ], [ %yyval.sroa.58.0.copyload, %sw.bb710 ], [ %yyval.sroa.58.0.copyload, %sw.bb709 ], [ %yyval.sroa.58.0.copyload, %sw.bb690 ], [ %yyval.sroa.58.0.copyload, %sw.bb679 ], [ 0, %sw.bb668 ], [ %372, %sw.bb656 ], [ 0, %sw.bb644 ], [ 0, %sw.bb632 ], [ 0, %sw.bb617 ], [ 0, %sw.bb605 ], [ 0, %sw.bb593 ], [ 1, %sw.bb583 ], [ %361, %sw.bb567 ], [ %359, %sw.bb553 ], [ %358, %sw.bb542 ], [ %357, %sw.bb532 ], [ 0, %sw.bb523 ], [ 0, %sw.bb512 ], [ 0, %sw.bb504 ], [ 0, %sw.bb496 ], [ 0, %sw.bb486 ], [ 0, %sw.bb479 ], [ 0, %sw.bb471 ], [ 0, %sw.bb459 ], [ 0, %sw.bb448 ], [ 0, %sw.bb441 ], [ 0, %sw.bb432 ], [ 0, %sw.bb424 ], [ 0, %sw.bb417 ], [ 0, %sw.bb408 ], [ 0, %sw.bb401 ], [ %yyval.sroa.58.0.copyload, %apply_relative_time.exit1549 ], [ %yyval.sroa.58.0.copyload, %if.end378 ], [ %yyval.sroa.58.0.copyload, %sw.bb363 ], [ %yyval.sroa.58.0.copyload, %sw.bb357 ], [ %yyval.sroa.58.0.copyload, %sw.bb349 ], [ %yyval.sroa.58.0.copyload, %sw.bb343 ], [ %yyval.sroa.58.0.copyload, %if.end338 ], [ %yyval.sroa.58.0.copyload, %if.end320 ], [ %yyval.sroa.58.0.copyload, %if.end285 ], [ %yyval.sroa.58.0.copyload, %if.end299 ], [ %yyval.sroa.58.0.copyload, %sw.bb267 ], [ %yyval.sroa.58.0.copyload, %sw.bb259 ], [ %yyval.sroa.58.0.copyload, %sw.bb253 ], [ %yyval.sroa.58.0.copyload, %sw.bb248 ], [ %yyval.sroa.58.0.copyload, %sw.bb245 ], [ %yyval.sroa.58.0.copyload, %sw.bb240 ], [ %yyval.sroa.58.0.copyload, %sw.bb235 ], [ %yyval.sroa.58.0.copyload, %if.end229 ], [ %yyval.sroa.58.0.copyload, %if.end222 ], [ %yyval.sroa.58.0.copyload, %if.end215 ], [ %yyval.sroa.58.0.copyload, %sw.bb206 ], [ %yyval.sroa.58.0.copyload, %sw.bb203 ], [ %yyval.sroa.58.0.copyload, %sw.bb200 ], [ %yyval.sroa.58.0.copyload, %sw.bb197 ], [ %yyval.sroa.58.0.copyload, %sw.bb178 ], [ %yyval.sroa.58.0.copyload, %sw.bb172 ], [ %yyval.sroa.58.0.copyload, %sw.bb168 ], [ %yyval.sroa.58.0.copyload, %sw.bb157 ], [ %yyval.sroa.58.0.copyload, %sw.bb149 ], [ %yyval.sroa.58.0.copyload, %sw.bb145 ], [ %yyval.sroa.58.0.copyload, %sw.bb143 ], [ %yyval.sroa.58.0.copyload, %sw.bb141 ], [ %yyval.sroa.58.0.copyload, %sw.bb139 ], [ %yyval.sroa.58.0.copyload, %sw.bb136 ], [ %yyval.sroa.58.0.copyload, %sw.bb132 ], [ %yyval.sroa.58.0.copyload, %sw.bb129 ], [ %yyval.sroa.58.0.copyload, %sw.bb127 ], [ %yyval.sroa.58.0.copyload, %sw.bb124 ], [ %yyval.sroa.58.0.copyload, %sw.bb120 ], [ %yyval.sroa.58.0.copyload, %sw.bb117 ], [ %yyval.sroa.58.0.copyload, %sw.bb ], [ %yyval.sroa.58.0.copyload, %time_zone_hhmm.exit.thread ], [ %yyval.sroa.58.0.copyload, %apply_relative_time.exit1574.thread ], [ %yyval.sroa.58.0.copyload, %apply_relative_time.exit1599.thread ], [ %yyval.sroa.58.0.copyload, %if.then.i1616 ], [ %yyval.sroa.58.0.copyload, %if.then10.i ], [ %yyval.sroa.58.0.copyload, %if.end.i1605 ], [ %yyval.sroa.58.0.copyload, %apply_relative_time.exit1688.thread ]
  %yyval.sroa.54.0 = phi i64 [ %yyval.sroa.54.0.copyload, %yyreduce ], [ %yyval.sroa.54.0.copyload, %sw.bb710 ], [ %yyval.sroa.54.0.copyload, %sw.bb709 ], [ %yyval.sroa.54.0.copyload, %sw.bb690 ], [ %yyval.sroa.54.0.copyload, %sw.bb679 ], [ 0, %sw.bb668 ], [ 0, %sw.bb656 ], [ %371, %sw.bb644 ], [ 0, %sw.bb632 ], [ 0, %sw.bb617 ], [ 0, %sw.bb605 ], [ 0, %sw.bb593 ], [ 0, %sw.bb583 ], [ 0, %sw.bb567 ], [ 0, %sw.bb553 ], [ 0, %sw.bb542 ], [ 0, %sw.bb532 ], [ 1, %sw.bb523 ], [ %356, %sw.bb512 ], [ %355, %sw.bb504 ], [ 0, %sw.bb496 ], [ 0, %sw.bb486 ], [ 0, %sw.bb479 ], [ 0, %sw.bb471 ], [ 0, %sw.bb459 ], [ 0, %sw.bb448 ], [ 0, %sw.bb441 ], [ 0, %sw.bb432 ], [ 0, %sw.bb424 ], [ 0, %sw.bb417 ], [ 0, %sw.bb408 ], [ 0, %sw.bb401 ], [ %yyval.sroa.54.0.copyload, %apply_relative_time.exit1549 ], [ %yyval.sroa.54.0.copyload, %if.end378 ], [ %yyval.sroa.54.0.copyload, %sw.bb363 ], [ %yyval.sroa.54.0.copyload, %sw.bb357 ], [ %yyval.sroa.54.0.copyload, %sw.bb349 ], [ %yyval.sroa.54.0.copyload, %sw.bb343 ], [ %yyval.sroa.54.0.copyload, %if.end338 ], [ %yyval.sroa.54.0.copyload, %if.end320 ], [ %yyval.sroa.54.0.copyload, %if.end285 ], [ %yyval.sroa.54.0.copyload, %if.end299 ], [ %yyval.sroa.54.0.copyload, %sw.bb267 ], [ %yyval.sroa.54.0.copyload, %sw.bb259 ], [ %yyval.sroa.54.0.copyload, %sw.bb253 ], [ %yyval.sroa.54.0.copyload, %sw.bb248 ], [ %yyval.sroa.54.0.copyload, %sw.bb245 ], [ %yyval.sroa.54.0.copyload, %sw.bb240 ], [ %yyval.sroa.54.0.copyload, %sw.bb235 ], [ %yyval.sroa.54.0.copyload, %if.end229 ], [ %yyval.sroa.54.0.copyload, %if.end222 ], [ %yyval.sroa.54.0.copyload, %if.end215 ], [ %yyval.sroa.54.0.copyload, %sw.bb206 ], [ %yyval.sroa.54.0.copyload, %sw.bb203 ], [ %yyval.sroa.54.0.copyload, %sw.bb200 ], [ %yyval.sroa.54.0.copyload, %sw.bb197 ], [ %yyval.sroa.54.0.copyload, %sw.bb178 ], [ %yyval.sroa.54.0.copyload, %sw.bb172 ], [ %yyval.sroa.54.0.copyload, %sw.bb168 ], [ %yyval.sroa.54.0.copyload, %sw.bb157 ], [ %yyval.sroa.54.0.copyload, %sw.bb149 ], [ %yyval.sroa.54.0.copyload, %sw.bb145 ], [ %yyval.sroa.54.0.copyload, %sw.bb143 ], [ %yyval.sroa.54.0.copyload, %sw.bb141 ], [ %yyval.sroa.54.0.copyload, %sw.bb139 ], [ %yyval.sroa.54.0.copyload, %sw.bb136 ], [ %yyval.sroa.54.0.copyload, %sw.bb132 ], [ %yyval.sroa.54.0.copyload, %sw.bb129 ], [ %yyval.sroa.54.0.copyload, %sw.bb127 ], [ %yyval.sroa.54.0.copyload, %sw.bb124 ], [ %yyval.sroa.54.0.copyload, %sw.bb120 ], [ %yyval.sroa.54.0.copyload, %sw.bb117 ], [ %yyval.sroa.54.0.copyload, %sw.bb ], [ %yyval.sroa.54.0.copyload, %time_zone_hhmm.exit.thread ], [ %yyval.sroa.54.0.copyload, %apply_relative_time.exit1574.thread ], [ %yyval.sroa.54.0.copyload, %apply_relative_time.exit1599.thread ], [ %yyval.sroa.54.0.copyload, %if.then.i1616 ], [ %yyval.sroa.54.0.copyload, %if.then10.i ], [ %yyval.sroa.54.0.copyload, %if.end.i1605 ], [ %yyval.sroa.54.0.copyload, %apply_relative_time.exit1688.thread ]
  %yyval.sroa.50.0 = phi i64 [ %yyval.sroa.50.0.copyload, %yyreduce ], [ %yyval.sroa.50.0.copyload, %sw.bb710 ], [ %yyval.sroa.50.0.copyload, %sw.bb709 ], [ %yyval.sroa.50.0.copyload, %sw.bb690 ], [ %yyval.sroa.50.0.copyload, %sw.bb679 ], [ 0, %sw.bb668 ], [ 0, %sw.bb656 ], [ 0, %sw.bb644 ], [ %370, %sw.bb632 ], [ 0, %sw.bb617 ], [ 0, %sw.bb605 ], [ 0, %sw.bb593 ], [ 0, %sw.bb583 ], [ 0, %sw.bb567 ], [ 0, %sw.bb553 ], [ 0, %sw.bb542 ], [ 0, %sw.bb532 ], [ 0, %sw.bb523 ], [ 0, %sw.bb512 ], [ 0, %sw.bb504 ], [ 1, %sw.bb496 ], [ %354, %sw.bb486 ], [ %353, %sw.bb479 ], [ 0, %sw.bb471 ], [ 0, %sw.bb459 ], [ 0, %sw.bb448 ], [ 0, %sw.bb441 ], [ 0, %sw.bb432 ], [ 0, %sw.bb424 ], [ 0, %sw.bb417 ], [ 0, %sw.bb408 ], [ 0, %sw.bb401 ], [ %yyval.sroa.50.0.copyload, %apply_relative_time.exit1549 ], [ %yyval.sroa.50.0.copyload, %if.end378 ], [ %yyval.sroa.50.0.copyload, %sw.bb363 ], [ %yyval.sroa.50.0.copyload, %sw.bb357 ], [ %yyval.sroa.50.0.copyload, %sw.bb349 ], [ %yyval.sroa.50.0.copyload, %sw.bb343 ], [ %yyval.sroa.50.0.copyload, %if.end338 ], [ %yyval.sroa.50.0.copyload, %if.end320 ], [ %yyval.sroa.50.0.copyload, %if.end285 ], [ %yyval.sroa.50.0.copyload, %if.end299 ], [ %yyval.sroa.50.0.copyload, %sw.bb267 ], [ %yyval.sroa.50.0.copyload, %sw.bb259 ], [ %yyval.sroa.50.0.copyload, %sw.bb253 ], [ %yyval.sroa.50.0.copyload, %sw.bb248 ], [ %yyval.sroa.50.0.copyload, %sw.bb245 ], [ %yyval.sroa.50.0.copyload, %sw.bb240 ], [ %yyval.sroa.50.0.copyload, %sw.bb235 ], [ %yyval.sroa.50.0.copyload, %if.end229 ], [ %yyval.sroa.50.0.copyload, %if.end222 ], [ %yyval.sroa.50.0.copyload, %if.end215 ], [ %yyval.sroa.50.0.copyload, %sw.bb206 ], [ %yyval.sroa.50.0.copyload, %sw.bb203 ], [ %yyval.sroa.50.0.copyload, %sw.bb200 ], [ %yyval.sroa.50.0.copyload, %sw.bb197 ], [ %yyval.sroa.50.0.copyload, %sw.bb178 ], [ %yyval.sroa.50.0.copyload, %sw.bb172 ], [ %yyval.sroa.50.0.copyload, %sw.bb168 ], [ %yyval.sroa.50.0.copyload, %sw.bb157 ], [ %yyval.sroa.50.0.copyload, %sw.bb149 ], [ %yyval.sroa.50.0.copyload, %sw.bb145 ], [ %yyval.sroa.50.0.copyload, %sw.bb143 ], [ %yyval.sroa.50.0.copyload, %sw.bb141 ], [ %yyval.sroa.50.0.copyload, %sw.bb139 ], [ %yyval.sroa.50.0.copyload, %sw.bb136 ], [ %yyval.sroa.50.0.copyload, %sw.bb132 ], [ %yyval.sroa.50.0.copyload, %sw.bb129 ], [ %yyval.sroa.50.0.copyload, %sw.bb127 ], [ %yyval.sroa.50.0.copyload, %sw.bb124 ], [ %yyval.sroa.50.0.copyload, %sw.bb120 ], [ %yyval.sroa.50.0.copyload, %sw.bb117 ], [ %yyval.sroa.50.0.copyload, %sw.bb ], [ %yyval.sroa.50.0.copyload, %time_zone_hhmm.exit.thread ], [ %yyval.sroa.50.0.copyload, %apply_relative_time.exit1574.thread ], [ %yyval.sroa.50.0.copyload, %apply_relative_time.exit1599.thread ], [ %yyval.sroa.50.0.copyload, %if.then.i1616 ], [ %yyval.sroa.50.0.copyload, %if.then10.i ], [ %yyval.sroa.50.0.copyload, %if.end.i1605 ], [ %yyval.sroa.50.0.copyload, %apply_relative_time.exit1688.thread ]
  %yyval.sroa.45.0 = phi i64 [ %yyval.sroa.45.0.copyload, %yyreduce ], [ %yyval.sroa.45.0.copyload, %sw.bb710 ], [ %yyval.sroa.45.0.copyload, %sw.bb709 ], [ %yyval.sroa.45.0.copyload, %sw.bb690 ], [ %yyval.sroa.45.0.copyload, %sw.bb679 ], [ %373, %sw.bb668 ], [ 0, %sw.bb656 ], [ 0, %sw.bb644 ], [ 0, %sw.bb632 ], [ %369, %sw.bb617 ], [ 0, %sw.bb605 ], [ 0, %sw.bb593 ], [ 0, %sw.bb583 ], [ 0, %sw.bb567 ], [ 0, %sw.bb553 ], [ 0, %sw.bb542 ], [ 0, %sw.bb532 ], [ 0, %sw.bb523 ], [ 0, %sw.bb512 ], [ 0, %sw.bb504 ], [ 0, %sw.bb496 ], [ 0, %sw.bb486 ], [ 0, %sw.bb479 ], [ %352, %sw.bb471 ], [ %351, %sw.bb459 ], [ %346, %sw.bb448 ], [ 0, %sw.bb441 ], [ 0, %sw.bb432 ], [ 0, %sw.bb424 ], [ 0, %sw.bb417 ], [ 0, %sw.bb408 ], [ 0, %sw.bb401 ], [ %yyval.sroa.45.0.copyload, %apply_relative_time.exit1549 ], [ %yyval.sroa.45.0.copyload, %if.end378 ], [ %yyval.sroa.45.0.copyload, %sw.bb363 ], [ %yyval.sroa.45.0.copyload, %sw.bb357 ], [ %yyval.sroa.45.0.copyload, %sw.bb349 ], [ %yyval.sroa.45.0.copyload, %sw.bb343 ], [ %yyval.sroa.45.0.copyload, %if.end338 ], [ %yyval.sroa.45.0.copyload, %if.end320 ], [ %yyval.sroa.45.0.copyload, %if.end285 ], [ %yyval.sroa.45.0.copyload, %if.end299 ], [ %yyval.sroa.45.0.copyload, %sw.bb267 ], [ %yyval.sroa.45.0.copyload, %sw.bb259 ], [ %yyval.sroa.45.0.copyload, %sw.bb253 ], [ %yyval.sroa.45.0.copyload, %sw.bb248 ], [ %yyval.sroa.45.0.copyload, %sw.bb245 ], [ %yyval.sroa.45.0.copyload, %sw.bb240 ], [ %yyval.sroa.45.0.copyload, %sw.bb235 ], [ %yyval.sroa.45.0.copyload, %if.end229 ], [ %yyval.sroa.45.0.copyload, %if.end222 ], [ %yyval.sroa.45.0.copyload, %if.end215 ], [ %yyval.sroa.45.0.copyload, %sw.bb206 ], [ %yyval.sroa.45.0.copyload, %sw.bb203 ], [ %yyval.sroa.45.0.copyload, %sw.bb200 ], [ %yyval.sroa.45.0.copyload, %sw.bb197 ], [ %yyval.sroa.45.0.copyload, %sw.bb178 ], [ %yyval.sroa.45.0.copyload, %sw.bb172 ], [ %yyval.sroa.45.0.copyload, %sw.bb168 ], [ %yyval.sroa.45.0.copyload, %sw.bb157 ], [ %yyval.sroa.45.0.copyload, %sw.bb149 ], [ %yyval.sroa.45.0.copyload, %sw.bb145 ], [ %yyval.sroa.45.0.copyload, %sw.bb143 ], [ %yyval.sroa.45.0.copyload, %sw.bb141 ], [ %yyval.sroa.45.0.copyload, %sw.bb139 ], [ %yyval.sroa.45.0.copyload, %sw.bb136 ], [ %yyval.sroa.45.0.copyload, %sw.bb132 ], [ %yyval.sroa.45.0.copyload, %sw.bb129 ], [ %yyval.sroa.45.0.copyload, %sw.bb127 ], [ %yyval.sroa.45.0.copyload, %sw.bb124 ], [ %yyval.sroa.45.0.copyload, %sw.bb120 ], [ %yyval.sroa.45.0.copyload, %sw.bb117 ], [ %yyval.sroa.45.0.copyload, %sw.bb ], [ %yyval.sroa.45.0.copyload, %time_zone_hhmm.exit.thread ], [ %yyval.sroa.45.0.copyload, %apply_relative_time.exit1574.thread ], [ %yyval.sroa.45.0.copyload, %apply_relative_time.exit1599.thread ], [ %yyval.sroa.45.0.copyload, %if.then.i1616 ], [ %yyval.sroa.45.0.copyload, %if.then10.i ], [ %yyval.sroa.45.0.copyload, %if.end.i1605 ], [ %yyval.sroa.45.0.copyload, %apply_relative_time.exit1688.thread ]
  %yyval.sroa.39.0 = phi i64 [ %yyval.sroa.39.0.copyload, %yyreduce ], [ %yyval.sroa.39.0.copyload, %sw.bb710 ], [ %yyval.sroa.39.0.copyload, %sw.bb709 ], [ 0, %sw.bb690 ], [ 0, %sw.bb679 ], [ 0, %sw.bb668 ], [ 0, %sw.bb656 ], [ 0, %sw.bb644 ], [ 0, %sw.bb632 ], [ 0, %sw.bb617 ], [ %364, %sw.bb605 ], [ 0, %sw.bb593 ], [ 0, %sw.bb583 ], [ 0, %sw.bb567 ], [ 0, %sw.bb553 ], [ 0, %sw.bb542 ], [ 0, %sw.bb532 ], [ 0, %sw.bb523 ], [ 0, %sw.bb512 ], [ 0, %sw.bb504 ], [ 0, %sw.bb496 ], [ 0, %sw.bb486 ], [ 0, %sw.bb479 ], [ 0, %sw.bb471 ], [ 0, %sw.bb459 ], [ 0, %sw.bb448 ], [ 1, %sw.bb441 ], [ %341, %sw.bb432 ], [ %340, %sw.bb424 ], [ 0, %sw.bb417 ], [ 0, %sw.bb408 ], [ 0, %sw.bb401 ], [ %yyval.sroa.39.0.copyload, %apply_relative_time.exit1549 ], [ %yyval.sroa.39.0.copyload, %if.end378 ], [ %yyval.sroa.39.0.copyload, %sw.bb363 ], [ %yyval.sroa.39.0.copyload, %sw.bb357 ], [ %yyval.sroa.39.0.copyload, %sw.bb349 ], [ %yyval.sroa.39.0.copyload, %sw.bb343 ], [ %yyval.sroa.39.0.copyload, %if.end338 ], [ %yyval.sroa.39.0.copyload, %if.end320 ], [ %yyval.sroa.39.0.copyload, %if.end285 ], [ %yyval.sroa.39.0.copyload, %if.end299 ], [ %yyval.sroa.39.0.copyload, %sw.bb267 ], [ %yyval.sroa.39.0.copyload, %sw.bb259 ], [ %yyval.sroa.39.0.copyload, %sw.bb253 ], [ %yyval.sroa.39.0.copyload, %sw.bb248 ], [ %yyval.sroa.39.0.copyload, %sw.bb245 ], [ %yyval.sroa.39.0.copyload, %sw.bb240 ], [ %yyval.sroa.39.0.copyload, %sw.bb235 ], [ %yyval.sroa.39.0.copyload, %if.end229 ], [ %yyval.sroa.39.0.copyload, %if.end222 ], [ %yyval.sroa.39.0.copyload, %if.end215 ], [ %yyval.sroa.39.0.copyload, %sw.bb206 ], [ %yyval.sroa.39.0.copyload, %sw.bb203 ], [ %yyval.sroa.39.0.copyload, %sw.bb200 ], [ %yyval.sroa.39.0.copyload, %sw.bb197 ], [ %yyval.sroa.39.0.copyload, %sw.bb178 ], [ %yyval.sroa.39.0.copyload, %sw.bb172 ], [ %yyval.sroa.39.0.copyload, %sw.bb168 ], [ %yyval.sroa.39.0.copyload, %sw.bb157 ], [ %yyval.sroa.39.0.copyload, %sw.bb149 ], [ %yyval.sroa.39.0.copyload, %sw.bb145 ], [ %yyval.sroa.39.0.copyload, %sw.bb143 ], [ %yyval.sroa.39.0.copyload, %sw.bb141 ], [ %yyval.sroa.39.0.copyload, %sw.bb139 ], [ %yyval.sroa.39.0.copyload, %sw.bb136 ], [ %yyval.sroa.39.0.copyload, %sw.bb132 ], [ %yyval.sroa.39.0.copyload, %sw.bb129 ], [ %yyval.sroa.39.0.copyload, %sw.bb127 ], [ %yyval.sroa.39.0.copyload, %sw.bb124 ], [ %yyval.sroa.39.0.copyload, %sw.bb120 ], [ %yyval.sroa.39.0.copyload, %sw.bb117 ], [ %yyval.sroa.39.0.copyload, %sw.bb ], [ %yyval.sroa.39.0.copyload, %time_zone_hhmm.exit.thread ], [ %yyval.sroa.39.0.copyload, %apply_relative_time.exit1574.thread ], [ %yyval.sroa.39.0.copyload, %apply_relative_time.exit1599.thread ], [ %yyval.sroa.39.0.copyload, %if.then.i1616 ], [ %yyval.sroa.39.0.copyload, %if.then10.i ], [ %yyval.sroa.39.0.copyload, %if.end.i1605 ], [ %yyval.sroa.39.0.copyload, %apply_relative_time.exit1688.thread ]
  %yyval.sroa.0.0 = phi i64 [ %yyval.sroa.0.0.copyload, %yyreduce ], [ %414, %sw.bb710 ], [ -1, %sw.bb709 ], [ %375, %sw.bb690 ], [ %374, %sw.bb679 ], [ 0, %sw.bb668 ], [ 0, %sw.bb656 ], [ 0, %sw.bb644 ], [ 0, %sw.bb632 ], [ 0, %sw.bb617 ], [ 0, %sw.bb605 ], [ %363, %sw.bb593 ], [ 0, %sw.bb583 ], [ 0, %sw.bb567 ], [ 0, %sw.bb553 ], [ 0, %sw.bb542 ], [ 0, %sw.bb532 ], [ 0, %sw.bb523 ], [ 0, %sw.bb512 ], [ 0, %sw.bb504 ], [ 0, %sw.bb496 ], [ 0, %sw.bb486 ], [ 0, %sw.bb479 ], [ 0, %sw.bb471 ], [ 0, %sw.bb459 ], [ 0, %sw.bb448 ], [ 0, %sw.bb441 ], [ 0, %sw.bb432 ], [ 0, %sw.bb424 ], [ 1, %sw.bb417 ], [ %339, %sw.bb408 ], [ %338, %sw.bb401 ], [ %yyval.sroa.0.0.copyload, %apply_relative_time.exit1549 ], [ %yyval.sroa.0.0.copyload, %if.end378 ], [ %yyval.sroa.0.0.copyload, %sw.bb363 ], [ %yyval.sroa.0.0.copyload, %sw.bb357 ], [ %yyval.sroa.0.0.copyload, %sw.bb349 ], [ %yyval.sroa.0.0.copyload, %sw.bb343 ], [ %yyval.sroa.0.0.copyload, %if.end338 ], [ %yyval.sroa.0.0.copyload, %if.end320 ], [ %yyval.sroa.0.0.copyload, %if.end285 ], [ %yyval.sroa.0.0.copyload, %if.end299 ], [ %yyval.sroa.0.0.copyload, %sw.bb267 ], [ %yyval.sroa.0.0.copyload, %sw.bb259 ], [ %yyval.sroa.0.0.copyload, %sw.bb253 ], [ %yyval.sroa.0.0.copyload, %sw.bb248 ], [ %yyval.sroa.0.0.copyload, %sw.bb245 ], [ %yyval.sroa.0.0.copyload, %sw.bb240 ], [ %yyval.sroa.0.0.copyload, %sw.bb235 ], [ %yyval.sroa.0.0.copyload, %if.end229 ], [ %yyval.sroa.0.0.copyload, %if.end222 ], [ %yyval.sroa.0.0.copyload, %if.end215 ], [ %yyval.sroa.0.0.copyload, %sw.bb206 ], [ %yyval.sroa.0.0.copyload, %sw.bb203 ], [ %yyval.sroa.0.0.copyload, %sw.bb200 ], [ %yyval.sroa.0.0.copyload, %sw.bb197 ], [ %yyval.sroa.0.0.copyload, %sw.bb178 ], [ %yyval.sroa.0.0.copyload, %sw.bb172 ], [ %yyval.sroa.0.0.copyload, %sw.bb168 ], [ %yyval.sroa.0.0.copyload, %sw.bb157 ], [ %yyval.sroa.0.0.copyload, %sw.bb149 ], [ %yyval.sroa.0.0.copyload, %sw.bb145 ], [ %yyval.sroa.0.0.copyload, %sw.bb143 ], [ %yyval.sroa.0.0.copyload, %sw.bb141 ], [ %yyval.sroa.0.0.copyload, %sw.bb139 ], [ %yyval.sroa.0.0.copyload, %sw.bb136 ], [ %yyval.sroa.0.0.copyload, %sw.bb132 ], [ %yyval.sroa.0.0.copyload, %sw.bb129 ], [ %yyval.sroa.0.0.copyload, %sw.bb127 ], [ %yyval.sroa.0.0.copyload, %sw.bb124 ], [ %yyval.sroa.0.0.copyload, %sw.bb120 ], [ %yyval.sroa.0.0.copyload, %sw.bb117 ], [ %yyval.sroa.0.0.copyload, %sw.bb ], [ %yyval.sroa.0.0.copyload, %time_zone_hhmm.exit.thread ], [ %yyval.sroa.0.0.copyload, %apply_relative_time.exit1574.thread ], [ %yyval.sroa.0.0.copyload, %apply_relative_time.exit1599.thread ], [ %yyval.sroa.0.0.copyload, %if.then.i1616 ], [ %yyval.sroa.0.0.copyload, %if.then10.i ], [ %yyval.sroa.0.0.copyload, %if.end.i1605 ], [ %yyval.sroa.0.0.copyload, %apply_relative_time.exit1688.thread ]
  %idx.ext = sext i8 %59 to i64
  %idx.neg = sub nsw i64 0, %idx.ext
  %add.ptr713 = getelementptr inbounds %union.YYSTYPE, ptr %yyvsp.11809, i64 %idx.neg
  %yyssp.1.add = sub i64 %yyssp.1.idx1810, %idx.ext
  %add.ptr716.ptr = getelementptr inbounds i8, ptr %yyssa, i64 %yyssp.1.add
  %incdec.ptr717 = getelementptr inbounds %union.YYSTYPE, ptr %add.ptr713, i64 1
  store i64 %yyval.sroa.0.0, ptr %incdec.ptr717, align 8, !tbaa !129, !tbaa.struct !130
  %yyval.sroa.39.0.incdec.ptr717.sroa_idx = getelementptr inbounds %union.YYSTYPE, ptr %add.ptr713, i64 1, i32 0, i32 1
  store i64 %yyval.sroa.39.0, ptr %yyval.sroa.39.0.incdec.ptr717.sroa_idx, align 8, !tbaa !129, !tbaa.struct !131
  %yyval.sroa.45.0.incdec.ptr717.sroa_idx = getelementptr inbounds %union.YYSTYPE, ptr %add.ptr713, i64 1, i32 0, i32 2
  store i64 %yyval.sroa.45.0, ptr %yyval.sroa.45.0.incdec.ptr717.sroa_idx, align 8, !tbaa !129, !tbaa.struct !132
  %yyval.sroa.50.0.incdec.ptr717.sroa_idx = getelementptr inbounds %union.YYSTYPE, ptr %add.ptr713, i64 1, i32 0, i32 3
  store i64 %yyval.sroa.50.0, ptr %yyval.sroa.50.0.incdec.ptr717.sroa_idx, align 8, !tbaa !129, !tbaa.struct !133
  %yyval.sroa.54.0.incdec.ptr717.sroa_idx = getelementptr inbounds %union.YYSTYPE, ptr %add.ptr713, i64 1, i32 0, i32 4
  store i64 %yyval.sroa.54.0, ptr %yyval.sroa.54.0.incdec.ptr717.sroa_idx, align 8, !tbaa !129, !tbaa.struct !134
  %yyval.sroa.58.0.incdec.ptr717.sroa_idx = getelementptr inbounds %union.YYSTYPE, ptr %add.ptr713, i64 1, i32 0, i32 5
  store i64 %yyval.sroa.58.0, ptr %yyval.sroa.58.0.incdec.ptr717.sroa_idx, align 8, !tbaa !129, !tbaa.struct !135
  %yyval.sroa.64.0.incdec.ptr717.sroa_idx = getelementptr inbounds %union.YYSTYPE, ptr %add.ptr713, i64 1, i32 0, i32 6
  store i32 %yyval.sroa.64.0, ptr %yyval.sroa.64.0.incdec.ptr717.sroa_idx, align 8, !tbaa !129, !tbaa.struct !136
  %yyval.sroa.66.0.incdec.ptr717.sroa_idx = getelementptr inbounds i8, ptr %add.ptr713, i64 108
  store i32 %yyval.sroa.66.0, ptr %yyval.sroa.66.0.incdec.ptr717.sroa_idx, align 4, !tbaa !129, !tbaa.struct !57
  %arrayidx719 = getelementptr inbounds [93 x i8], ptr @yyr1, i64 0, i64 %idxprom109
  %415 = load i8, ptr %arrayidx719, align 1, !tbaa !14
  %conv720 = sext i8 %415 to i64
  %sub721 = add nsw i64 %conv720, -29
  %arrayidx723 = getelementptr inbounds [26 x i8], ptr @yypgoto, i64 0, i64 %sub721
  %416 = load i8, ptr %arrayidx723, align 1, !tbaa !14
  %conv724 = sext i8 %416 to i32
  %417 = load i8, ptr %add.ptr716.ptr, align 1, !tbaa !14
  %conv725 = sext i8 %417 to i32
  %add726 = add nsw i32 %conv725, %conv724
  %or.cond885 = icmp ult i32 %add726, 115
  br i1 %or.cond885, label %land.lhs.true732, label %cond.false743

land.lhs.true732:                                 ; preds = %sw.epilog
  %idxprom733 = zext nneg i32 %add726 to i64
  %arrayidx734 = getelementptr inbounds [115 x i8], ptr @yycheck, i64 0, i64 %idxprom733
  %418 = load i8, ptr %arrayidx734, align 1, !tbaa !14
  %cmp737 = icmp eq i8 %418, %417
  br i1 %cmp737, label %cond.true739, label %cond.false743

cond.true739:                                     ; preds = %land.lhs.true732
  %arrayidx741 = getelementptr inbounds [115 x i8], ptr @yytable, i64 0, i64 %idxprom733
  br label %cond.end747

cond.false743:                                    ; preds = %land.lhs.true732, %sw.epilog
  %arrayidx745 = getelementptr inbounds [26 x i8], ptr @yydefgoto, i64 0, i64 %sub721
  br label %cond.end747

cond.end747:                                      ; preds = %cond.false743, %cond.true739
  %cond748.in.in = phi ptr [ %arrayidx741, %cond.true739 ], [ %arrayidx745, %cond.false743 ]
  %cond748.in = load i8, ptr %cond748.in.in, align 1, !tbaa !14
  %cond748 = sext i8 %cond748.in to i32
  br label %yynewstate

yyreturnlab:                                      ; preds = %digits_to_date_time.exit1663, %sw.bb617, %sw.bb459, %sw.bb448, %sw.bb396, %sw.bb391, %cond.false.i1534, %cond.true.i1548, %if.end378, %sw.bb371, %if.end332, %sw.bb325, %sw.bb309, %if.end229, %if.end19.i1502, %sw.bb217, %sw.bb208, %if.end19.i, %yydefault, %if.else, %if.end47, %yynewstate
  %yyresult.0 = phi i32 [ 1, %if.end19.i1502 ], [ 1, %if.end19.i ], [ 1, %cond.true.i1548 ], [ 1, %cond.false.i1534 ], [ 1, %digits_to_date_time.exit1663 ], [ 1, %sw.bb396 ], [ 1, %sw.bb391 ], [ 1, %sw.bb217 ], [ 1, %sw.bb208 ], [ 1, %sw.bb617 ], [ 1, %sw.bb459 ], [ 1, %sw.bb448 ], [ 1, %if.end378 ], [ 1, %sw.bb371 ], [ 1, %if.end332 ], [ 1, %sw.bb325 ], [ 1, %sw.bb309 ], [ 1, %if.end229 ], [ 1, %yydefault ], [ 1, %if.else ], [ 0, %if.end47 ], [ 2, %yynewstate ]
  call void @llvm.lifetime.end.p0(i64 1120, ptr nonnull %yyvsa) #41
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %yyssa) #41
  ret i32 %yyresult.0
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @lookup_zone(ptr noundef readonly %pc, ptr nocapture noundef readonly %name) unnamed_addr #35 {
entry:
  %call = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %name, ptr noundef nonnull dereferenceable(4) @.str.77.145) #42
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %cleanup, label %for.inc

for.inc:                                          ; preds = %entry
  %call.1 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %name, ptr noundef nonnull dereferenceable(3) @.str.78) #42
  %cmp.1 = icmp eq i32 %call.1, 0
  br i1 %cmp.1, label %cleanup, label %for.inc.1

for.inc.1:                                        ; preds = %for.inc
  %call.2 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %name, ptr noundef nonnull dereferenceable(4) @.str.79.146) #42
  %cmp.2 = icmp eq i32 %call.2, 0
  br i1 %cmp.2, label %cleanup, label %for.inc.2

for.inc.2:                                        ; preds = %for.inc.1
  %local_time_zone_table = getelementptr inbounds %struct.parser_control, ptr %pc, i64 0, i32 31
  %0 = load ptr, ptr %local_time_zone_table, align 8, !tbaa !171
  %tobool5.not47 = icmp eq ptr %0, null
  br i1 %tobool5.not47, label %for.cond15.preheader, label %for.body6

for.cond15.preheader:                             ; preds = %for.inc12, %for.inc.2
  %call20 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %name, ptr noundef nonnull dereferenceable(4) @.str.80) #42
  %cmp21 = icmp eq i32 %call20, 0
  br i1 %cmp21, label %cleanup, label %for.inc24

for.body6:                                        ; preds = %for.inc12, %for.inc.2
  %1 = phi ptr [ %2, %for.inc12 ], [ %0, %for.inc.2 ]
  %tp.148 = phi ptr [ %incdec.ptr13, %for.inc12 ], [ %local_time_zone_table, %for.inc.2 ]
  %call8 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %name, ptr noundef nonnull dereferenceable(1) %1) #42
  %cmp9 = icmp eq i32 %call8, 0
  br i1 %cmp9, label %cleanup, label %for.inc12

for.inc12:                                        ; preds = %for.body6
  %incdec.ptr13 = getelementptr inbounds %struct.table, ptr %tp.148, i64 1
  %2 = load ptr, ptr %incdec.ptr13, align 8, !tbaa !171
  %tobool5.not = icmp eq ptr %2, null
  br i1 %tobool5.not, label %for.cond15.preheader, label %for.body6, !llvm.loop !172

for.inc24:                                        ; preds = %for.cond15.preheader
  %call20.1 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %name, ptr noundef nonnull dereferenceable(5) @.str.81) #42
  %cmp21.1 = icmp eq i32 %call20.1, 0
  br i1 %cmp21.1, label %cleanup, label %for.inc24.1

for.inc24.1:                                      ; preds = %for.inc24
  %call20.2 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %name, ptr noundef nonnull dereferenceable(4) @.str.82.147) #42
  %cmp21.2 = icmp eq i32 %call20.2, 0
  br i1 %cmp21.2, label %cleanup, label %for.inc24.2

for.inc24.2:                                      ; preds = %for.inc24.1
  %call20.3 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %name, ptr noundef nonnull dereferenceable(4) @.str.83) #42
  %cmp21.3 = icmp eq i32 %call20.3, 0
  br i1 %cmp21.3, label %cleanup, label %for.inc24.3

for.inc24.3:                                      ; preds = %for.inc24.2
  %call20.4 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %name, ptr noundef nonnull dereferenceable(4) @.str.84) #42
  %cmp21.4 = icmp eq i32 %call20.4, 0
  br i1 %cmp21.4, label %cleanup, label %for.inc24.4

for.inc24.4:                                      ; preds = %for.inc24.3
  %call20.5 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %name, ptr noundef nonnull dereferenceable(5) @.str.85) #42
  %cmp21.5 = icmp eq i32 %call20.5, 0
  br i1 %cmp21.5, label %cleanup, label %for.inc24.5

for.inc24.5:                                      ; preds = %for.inc24.4
  %call20.6 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %name, ptr noundef nonnull dereferenceable(4) @.str.86) #42
  %cmp21.6 = icmp eq i32 %call20.6, 0
  br i1 %cmp21.6, label %cleanup, label %for.inc24.6

for.inc24.6:                                      ; preds = %for.inc24.5
  %call20.7 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %name, ptr noundef nonnull dereferenceable(4) @.str.87) #42
  %cmp21.7 = icmp eq i32 %call20.7, 0
  br i1 %cmp21.7, label %cleanup, label %for.inc24.7

for.inc24.7:                                      ; preds = %for.inc24.6
  %call20.8 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %name, ptr noundef nonnull dereferenceable(4) @.str.88) #42
  %cmp21.8 = icmp eq i32 %call20.8, 0
  br i1 %cmp21.8, label %cleanup, label %for.inc24.8

for.inc24.8:                                      ; preds = %for.inc24.7
  %call20.9 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %name, ptr noundef nonnull dereferenceable(4) @.str.89) #42
  %cmp21.9 = icmp eq i32 %call20.9, 0
  br i1 %cmp21.9, label %cleanup, label %for.inc24.9

for.inc24.9:                                      ; preds = %for.inc24.8
  %call20.10 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %name, ptr noundef nonnull dereferenceable(4) @.str.90) #42
  %cmp21.10 = icmp eq i32 %call20.10, 0
  br i1 %cmp21.10, label %cleanup, label %for.inc24.10

for.inc24.10:                                     ; preds = %for.inc24.9
  %call20.11 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %name, ptr noundef nonnull dereferenceable(5) @.str.91.148) #42
  %cmp21.11 = icmp eq i32 %call20.11, 0
  br i1 %cmp21.11, label %cleanup, label %for.inc24.11

for.inc24.11:                                     ; preds = %for.inc24.10
  %call20.12 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %name, ptr noundef nonnull dereferenceable(4) @.str.92) #42
  %cmp21.12 = icmp eq i32 %call20.12, 0
  br i1 %cmp21.12, label %cleanup, label %for.inc24.12

for.inc24.12:                                     ; preds = %for.inc24.11
  %call20.13 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %name, ptr noundef nonnull dereferenceable(4) @.str.93) #42
  %cmp21.13 = icmp eq i32 %call20.13, 0
  br i1 %cmp21.13, label %cleanup, label %for.inc24.13

for.inc24.13:                                     ; preds = %for.inc24.12
  %call20.14 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %name, ptr noundef nonnull dereferenceable(4) @.str.94) #42
  %cmp21.14 = icmp eq i32 %call20.14, 0
  br i1 %cmp21.14, label %cleanup, label %for.inc24.14

for.inc24.14:                                     ; preds = %for.inc24.13
  %call20.15 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %name, ptr noundef nonnull dereferenceable(4) @.str.95) #42
  %cmp21.15 = icmp eq i32 %call20.15, 0
  br i1 %cmp21.15, label %cleanup, label %for.inc24.15

for.inc24.15:                                     ; preds = %for.inc24.14
  %call20.16 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %name, ptr noundef nonnull dereferenceable(4) @.str.96.149) #42
  %cmp21.16 = icmp eq i32 %call20.16, 0
  br i1 %cmp21.16, label %cleanup, label %for.inc24.16

for.inc24.16:                                     ; preds = %for.inc24.15
  %call20.17 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %name, ptr noundef nonnull dereferenceable(4) @.str.97) #42
  %cmp21.17 = icmp eq i32 %call20.17, 0
  br i1 %cmp21.17, label %cleanup, label %for.inc24.17

for.inc24.17:                                     ; preds = %for.inc24.16
  %call20.18 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %name, ptr noundef nonnull dereferenceable(4) @.str.98) #42
  %cmp21.18 = icmp eq i32 %call20.18, 0
  br i1 %cmp21.18, label %cleanup, label %for.inc24.18

for.inc24.18:                                     ; preds = %for.inc24.17
  %call20.19 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %name, ptr noundef nonnull dereferenceable(4) @.str.99) #42
  %cmp21.19 = icmp eq i32 %call20.19, 0
  br i1 %cmp21.19, label %cleanup, label %for.inc24.19

for.inc24.19:                                     ; preds = %for.inc24.18
  %call20.20 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %name, ptr noundef nonnull dereferenceable(5) @.str.100) #42
  %cmp21.20 = icmp eq i32 %call20.20, 0
  br i1 %cmp21.20, label %cleanup, label %for.inc24.20

for.inc24.20:                                     ; preds = %for.inc24.19
  %call20.21 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %name, ptr noundef nonnull dereferenceable(5) @.str.101) #42
  %cmp21.21 = icmp eq i32 %call20.21, 0
  br i1 %cmp21.21, label %cleanup, label %for.inc24.21

for.inc24.21:                                     ; preds = %for.inc24.20
  %call20.22 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %name, ptr noundef nonnull dereferenceable(4) @.str.102) #42
  %cmp21.22 = icmp eq i32 %call20.22, 0
  br i1 %cmp21.22, label %cleanup, label %for.inc24.22

for.inc24.22:                                     ; preds = %for.inc24.21
  %call20.23 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %name, ptr noundef nonnull dereferenceable(5) @.str.103) #42
  %cmp21.23 = icmp eq i32 %call20.23, 0
  br i1 %cmp21.23, label %cleanup, label %for.inc24.23

for.inc24.23:                                     ; preds = %for.inc24.22
  %call20.24 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %name, ptr noundef nonnull dereferenceable(5) @.str.104) #42
  %cmp21.24 = icmp eq i32 %call20.24, 0
  br i1 %cmp21.24, label %cleanup, label %for.inc24.24

for.inc24.24:                                     ; preds = %for.inc24.23
  %call20.25 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %name, ptr noundef nonnull dereferenceable(4) @.str.105) #42
  %cmp21.25 = icmp eq i32 %call20.25, 0
  br i1 %cmp21.25, label %cleanup, label %for.inc24.25

for.inc24.25:                                     ; preds = %for.inc24.24
  %call20.26 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %name, ptr noundef nonnull dereferenceable(4) @.str.106) #42
  %cmp21.26 = icmp eq i32 %call20.26, 0
  br i1 %cmp21.26, label %cleanup, label %for.inc24.26

for.inc24.26:                                     ; preds = %for.inc24.25
  %call20.27 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %name, ptr noundef nonnull dereferenceable(4) @.str.107) #42
  %cmp21.27 = icmp eq i32 %call20.27, 0
  br i1 %cmp21.27, label %cleanup, label %for.inc24.27

for.inc24.27:                                     ; preds = %for.inc24.26
  %call20.28 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %name, ptr noundef nonnull dereferenceable(5) @.str.108) #42
  %cmp21.28 = icmp eq i32 %call20.28, 0
  br i1 %cmp21.28, label %cleanup, label %for.inc24.28

for.inc24.28:                                     ; preds = %for.inc24.27
  %call20.29 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %name, ptr noundef nonnull dereferenceable(4) @.str.109) #42
  %cmp21.29 = icmp eq i32 %call20.29, 0
  br i1 %cmp21.29, label %cleanup, label %for.inc24.29

for.inc24.29:                                     ; preds = %for.inc24.28
  %call20.30 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %name, ptr noundef nonnull dereferenceable(4) @.str.110) #42
  %cmp21.30 = icmp eq i32 %call20.30, 0
  br i1 %cmp21.30, label %cleanup, label %for.inc24.30

for.inc24.30:                                     ; preds = %for.inc24.29
  %call20.31 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %name, ptr noundef nonnull dereferenceable(5) @.str.111) #42
  %cmp21.31 = icmp eq i32 %call20.31, 0
  br i1 %cmp21.31, label %cleanup, label %for.inc24.31

for.inc24.31:                                     ; preds = %for.inc24.30
  %call20.32 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %name, ptr noundef nonnull dereferenceable(5) @.str.112) #42
  %cmp21.32 = icmp eq i32 %call20.32, 0
  br i1 %cmp21.32, label %cleanup, label %for.inc24.32

for.inc24.32:                                     ; preds = %for.inc24.31
  %call20.33 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %name, ptr noundef nonnull dereferenceable(4) @.str.113) #42
  %cmp21.33 = icmp eq i32 %call20.33, 0
  br i1 %cmp21.33, label %cleanup, label %for.inc24.33

for.inc24.33:                                     ; preds = %for.inc24.32
  %call20.34 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %name, ptr noundef nonnull dereferenceable(5) @.str.114) #42
  %cmp21.34 = icmp eq i32 %call20.34, 0
  br i1 %cmp21.34, label %cleanup, label %for.inc24.34

for.inc24.34:                                     ; preds = %for.inc24.33
  %call20.35 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %name, ptr noundef nonnull dereferenceable(4) @.str.115.150) #42
  %cmp21.35 = icmp eq i32 %call20.35, 0
  br i1 %cmp21.35, label %cleanup, label %for.inc24.35

for.inc24.35:                                     ; preds = %for.inc24.34
  %call20.36 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %name, ptr noundef nonnull dereferenceable(5) @.str.116) #42
  %cmp21.36 = icmp eq i32 %call20.36, 0
  br i1 %cmp21.36, label %cleanup, label %for.inc24.36

for.inc24.36:                                     ; preds = %for.inc24.35
  %call20.37 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %name, ptr noundef nonnull dereferenceable(4) @.str.117.151) #42
  %cmp21.37 = icmp eq i32 %call20.37, 0
  br i1 %cmp21.37, label %cleanup, label %for.inc24.37

for.inc24.37:                                     ; preds = %for.inc24.36
  %call20.38 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %name, ptr noundef nonnull dereferenceable(4) @.str.118) #42
  %cmp21.38 = icmp eq i32 %call20.38, 0
  br i1 %cmp21.38, label %cleanup, label %for.inc24.38

for.inc24.38:                                     ; preds = %for.inc24.37
  %call20.39 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %name, ptr noundef nonnull dereferenceable(4) @.str.119) #42
  %cmp21.39 = icmp eq i32 %call20.39, 0
  br i1 %cmp21.39, label %cleanup, label %for.inc24.39

for.inc24.39:                                     ; preds = %for.inc24.38
  %call20.40 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %name, ptr noundef nonnull dereferenceable(4) @.str.120) #42
  %cmp21.40 = icmp eq i32 %call20.40, 0
  br i1 %cmp21.40, label %cleanup, label %for.inc24.40

for.inc24.40:                                     ; preds = %for.inc24.39
  %call20.41 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %name, ptr noundef nonnull dereferenceable(4) @.str.121) #42
  %cmp21.41 = icmp eq i32 %call20.41, 0
  br i1 %cmp21.41, label %cleanup, label %for.inc24.41

for.inc24.41:                                     ; preds = %for.inc24.40
  %call20.42 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %name, ptr noundef nonnull dereferenceable(4) @.str.122) #42
  %cmp21.42 = icmp eq i32 %call20.42, 0
  br i1 %cmp21.42, label %cleanup, label %for.inc24.42

for.inc24.42:                                     ; preds = %for.inc24.41
  %call20.43 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %name, ptr noundef nonnull dereferenceable(4) @.str.123) #42
  %cmp21.43 = icmp eq i32 %call20.43, 0
  br i1 %cmp21.43, label %cleanup, label %for.inc24.43

for.inc24.43:                                     ; preds = %for.inc24.42
  %call20.44 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %name, ptr noundef nonnull dereferenceable(4) @.str.124) #42
  %cmp21.44 = icmp eq i32 %call20.44, 0
  br i1 %cmp21.44, label %cleanup, label %for.inc24.44

for.inc24.44:                                     ; preds = %for.inc24.43
  %call20.45 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %name, ptr noundef nonnull dereferenceable(5) @.str.125) #42
  %cmp21.45 = icmp eq i32 %call20.45, 0
  br i1 %cmp21.45, label %cleanup, label %for.inc24.45

for.inc24.45:                                     ; preds = %for.inc24.44
  %call20.46 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %name, ptr noundef nonnull dereferenceable(5) @.str.126) #42
  %cmp21.46 = icmp eq i32 %call20.46, 0
  %spec.select = select i1 %cmp21.46, ptr getelementptr inbounds ([48 x %struct.table], ptr @time_zone_table, i64 0, i64 46), ptr null
  br label %cleanup

cleanup:                                          ; preds = %for.inc24.45, %for.inc24.44, %for.inc24.43, %for.inc24.42, %for.inc24.41, %for.inc24.40, %for.inc24.39, %for.inc24.38, %for.inc24.37, %for.inc24.36, %for.inc24.35, %for.inc24.34, %for.inc24.33, %for.inc24.32, %for.inc24.31, %for.inc24.30, %for.inc24.29, %for.inc24.28, %for.inc24.27, %for.inc24.26, %for.inc24.25, %for.inc24.24, %for.inc24.23, %for.inc24.22, %for.inc24.21, %for.inc24.20, %for.inc24.19, %for.inc24.18, %for.inc24.17, %for.inc24.16, %for.inc24.15, %for.inc24.14, %for.inc24.13, %for.inc24.12, %for.inc24.11, %for.inc24.10, %for.inc24.9, %for.inc24.8, %for.inc24.7, %for.inc24.6, %for.inc24.5, %for.inc24.4, %for.inc24.3, %for.inc24.2, %for.inc24.1, %for.inc24, %for.body6, %for.cond15.preheader, %for.inc.1, %for.inc, %entry
  %retval.0 = phi ptr [ @time_zone_table, %for.cond15.preheader ], [ getelementptr inbounds ([48 x %struct.table], ptr @time_zone_table, i64 0, i64 1), %for.inc24 ], [ getelementptr inbounds ([48 x %struct.table], ptr @time_zone_table, i64 0, i64 2), %for.inc24.1 ], [ getelementptr inbounds ([48 x %struct.table], ptr @time_zone_table, i64 0, i64 3), %for.inc24.2 ], [ getelementptr inbounds ([48 x %struct.table], ptr @time_zone_table, i64 0, i64 4), %for.inc24.3 ], [ getelementptr inbounds ([48 x %struct.table], ptr @time_zone_table, i64 0, i64 5), %for.inc24.4 ], [ getelementptr inbounds ([48 x %struct.table], ptr @time_zone_table, i64 0, i64 6), %for.inc24.5 ], [ getelementptr inbounds ([48 x %struct.table], ptr @time_zone_table, i64 0, i64 7), %for.inc24.6 ], [ getelementptr inbounds ([48 x %struct.table], ptr @time_zone_table, i64 0, i64 8), %for.inc24.7 ], [ getelementptr inbounds ([48 x %struct.table], ptr @time_zone_table, i64 0, i64 9), %for.inc24.8 ], [ getelementptr inbounds ([48 x %struct.table], ptr @time_zone_table, i64 0, i64 10), %for.inc24.9 ], [ getelementptr inbounds ([48 x %struct.table], ptr @time_zone_table, i64 0, i64 11), %for.inc24.10 ], [ getelementptr inbounds ([48 x %struct.table], ptr @time_zone_table, i64 0, i64 12), %for.inc24.11 ], [ getelementptr inbounds ([48 x %struct.table], ptr @time_zone_table, i64 0, i64 13), %for.inc24.12 ], [ getelementptr inbounds ([48 x %struct.table], ptr @time_zone_table, i64 0, i64 14), %for.inc24.13 ], [ getelementptr inbounds ([48 x %struct.table], ptr @time_zone_table, i64 0, i64 15), %for.inc24.14 ], [ getelementptr inbounds ([48 x %struct.table], ptr @time_zone_table, i64 0, i64 16), %for.inc24.15 ], [ getelementptr inbounds ([48 x %struct.table], ptr @time_zone_table, i64 0, i64 17), %for.inc24.16 ], [ getelementptr inbounds ([48 x %struct.table], ptr @time_zone_table, i64 0, i64 18), %for.inc24.17 ], [ getelementptr inbounds ([48 x %struct.table], ptr @time_zone_table, i64 0, i64 19), %for.inc24.18 ], [ getelementptr inbounds ([48 x %struct.table], ptr @time_zone_table, i64 0, i64 20), %for.inc24.19 ], [ getelementptr inbounds ([48 x %struct.table], ptr @time_zone_table, i64 0, i64 21), %for.inc24.20 ], [ getelementptr inbounds ([48 x %struct.table], ptr @time_zone_table, i64 0, i64 22), %for.inc24.21 ], [ getelementptr inbounds ([48 x %struct.table], ptr @time_zone_table, i64 0, i64 23), %for.inc24.22 ], [ getelementptr inbounds ([48 x %struct.table], ptr @time_zone_table, i64 0, i64 24), %for.inc24.23 ], [ getelementptr inbounds ([48 x %struct.table], ptr @time_zone_table, i64 0, i64 25), %for.inc24.24 ], [ getelementptr inbounds ([48 x %struct.table], ptr @time_zone_table, i64 0, i64 26), %for.inc24.25 ], [ getelementptr inbounds ([48 x %struct.table], ptr @time_zone_table, i64 0, i64 27), %for.inc24.26 ], [ getelementptr inbounds ([48 x %struct.table], ptr @time_zone_table, i64 0, i64 28), %for.inc24.27 ], [ getelementptr inbounds ([48 x %struct.table], ptr @time_zone_table, i64 0, i64 29), %for.inc24.28 ], [ getelementptr inbounds ([48 x %struct.table], ptr @time_zone_table, i64 0, i64 30), %for.inc24.29 ], [ getelementptr inbounds ([48 x %struct.table], ptr @time_zone_table, i64 0, i64 31), %for.inc24.30 ], [ getelementptr inbounds ([48 x %struct.table], ptr @time_zone_table, i64 0, i64 32), %for.inc24.31 ], [ getelementptr inbounds ([48 x %struct.table], ptr @time_zone_table, i64 0, i64 33), %for.inc24.32 ], [ getelementptr inbounds ([48 x %struct.table], ptr @time_zone_table, i64 0, i64 34), %for.inc24.33 ], [ getelementptr inbounds ([48 x %struct.table], ptr @time_zone_table, i64 0, i64 35), %for.inc24.34 ], [ getelementptr inbounds ([48 x %struct.table], ptr @time_zone_table, i64 0, i64 36), %for.inc24.35 ], [ getelementptr inbounds ([48 x %struct.table], ptr @time_zone_table, i64 0, i64 37), %for.inc24.36 ], [ getelementptr inbounds ([48 x %struct.table], ptr @time_zone_table, i64 0, i64 38), %for.inc24.37 ], [ getelementptr inbounds ([48 x %struct.table], ptr @time_zone_table, i64 0, i64 39), %for.inc24.38 ], [ getelementptr inbounds ([48 x %struct.table], ptr @time_zone_table, i64 0, i64 40), %for.inc24.39 ], [ getelementptr inbounds ([48 x %struct.table], ptr @time_zone_table, i64 0, i64 41), %for.inc24.40 ], [ getelementptr inbounds ([48 x %struct.table], ptr @time_zone_table, i64 0, i64 42), %for.inc24.41 ], [ getelementptr inbounds ([48 x %struct.table], ptr @time_zone_table, i64 0, i64 43), %for.inc24.42 ], [ getelementptr inbounds ([48 x %struct.table], ptr @time_zone_table, i64 0, i64 44), %for.inc24.43 ], [ getelementptr inbounds ([48 x %struct.table], ptr @time_zone_table, i64 0, i64 45), %for.inc24.44 ], [ @universal_time_zone_table, %entry ], [ getelementptr inbounds ([4 x %struct.table], ptr @universal_time_zone_table, i64 0, i64 1), %for.inc ], [ getelementptr inbounds ([4 x %struct.table], ptr @universal_time_zone_table, i64 0, i64 2), %for.inc.1 ], [ %spec.select, %for.inc24.45 ], [ %tp.148, %for.body6 ]
  ret ptr %retval.0
}

; Function Attrs: nounwind uwtable
define internal void @dbg_printf(ptr noundef %msgid, ...) unnamed_addr #6 {
entry:
  %args = alloca [1 x %struct.__va_list_tag], align 16
  %0 = load ptr, ptr @stderr, align 8, !tbaa !5
  %1 = tail call i64 @fwrite(ptr nonnull @.str.46, i64 6, i64 1, ptr %0) #49
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %args) #41
  call void @llvm.va_start(ptr nonnull %args)
  %2 = load ptr, ptr @stderr, align 8, !tbaa !5
  %call.i = call i32 @__vfprintf_chk(ptr noundef nonnull %2, i32 noundef 1, ptr noundef %msgid, ptr noundef nonnull %args) #41
  call void @llvm.va_end(ptr nonnull %args)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %args) #41
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @debug_print_current_time(ptr noundef %item, ptr nocapture noundef %pc) unnamed_addr #6 {
entry:
  %tmp = alloca [100 x i8], align 16
  %time_zone_buf = alloca [27 x i8], align 16
  %0 = getelementptr i8, ptr %pc, i64 225
  %pc.val = load i8, ptr %0, align 1, !tbaa !125, !range !56, !noundef !57
  %tobool.i.not = icmp eq i8 %pc.val, 0
  br i1 %tobool.i.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call1 = tail call ptr @dcgettext(ptr noundef nonnull @.str.117, ptr noundef nonnull @.str.21.131, i32 noundef 5) #41
  tail call void (ptr, ...) @dbg_printf(ptr noundef %call1, ptr noundef %item)
  %dates_seen = getelementptr inbounds %struct.parser_control, ptr %pc, i64 0, i32 15
  %1 = load i64, ptr %dates_seen, align 8, !tbaa !141
  %tobool.not = icmp eq i64 %1, 0
  br i1 %tobool.not, label %if.end6, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  %debug_dates_seen = getelementptr inbounds %struct.parser_control, ptr %pc, i64 0, i32 24
  %2 = load i8, ptr %debug_dates_seen, align 2, !tbaa !173, !range !56, !noundef !57
  %tobool2.not = icmp eq i8 %2, 0
  br i1 %tobool2.not, label %if.end6.thread, label %if.end6

if.end6:                                          ; preds = %land.lhs.true, %if.end
  %year_seen = getelementptr inbounds %struct.parser_control, ptr %pc, i64 0, i32 22
  %3 = load i8, ptr %year_seen, align 8, !tbaa !169, !range !56, !noundef !57
  %debug_year_seen = getelementptr inbounds %struct.parser_control, ptr %pc, i64 0, i32 29
  %4 = load i8, ptr %debug_year_seen, align 1, !tbaa !174, !range !56, !noundef !57
  %cmp.not = icmp eq i8 %3, %4
  br i1 %cmp.not, label %if.end23, label %if.end15

if.end6.thread:                                   ; preds = %land.lhs.true
  %5 = load ptr, ptr @stderr, align 8, !tbaa !5
  %value = getelementptr inbounds %struct.parser_control, ptr %pc, i64 0, i32 6, i32 1
  %6 = load i64, ptr %value, align 8, !tbaa !170
  %month = getelementptr inbounds %struct.parser_control, ptr %pc, i64 0, i32 7
  %7 = load i64, ptr %month, align 8, !tbaa !164
  %day = getelementptr inbounds %struct.parser_control, ptr %pc, i64 0, i32 8
  %8 = load i64, ptr %day, align 8, !tbaa !165
  %call4 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %5, i32 noundef 1, ptr noundef nonnull @.str.22.133, i64 noundef %6, i64 noundef %7, i64 noundef %8) #41
  store i8 1, ptr %debug_dates_seen, align 2, !tbaa !173
  %year_seen150 = getelementptr inbounds %struct.parser_control, ptr %pc, i64 0, i32 22
  %9 = load i8, ptr %year_seen150, align 8, !tbaa !169, !range !56, !noundef !57
  %debug_year_seen151 = getelementptr inbounds %struct.parser_control, ptr %pc, i64 0, i32 29
  %10 = load i8, ptr %debug_year_seen151, align 1, !tbaa !174, !range !56, !noundef !57
  %cmp.not152 = icmp eq i8 %9, %10
  br i1 %cmp.not152, label %if.end23, label %if.then13

if.then13:                                        ; preds = %if.end6.thread
  %11 = load ptr, ptr @stderr, align 8, !tbaa !5
  %call14 = tail call i32 @fputc(i32 noundef 32, ptr noundef %11)
  br label %if.end15

if.end15:                                         ; preds = %if.then13, %if.end6
  %year_seen154162 = phi ptr [ %year_seen150, %if.then13 ], [ %year_seen, %if.end6 ]
  %debug_year_seen155160 = phi ptr [ %debug_year_seen151, %if.then13 ], [ %debug_year_seen, %if.end6 ]
  %12 = load ptr, ptr @stderr, align 8, !tbaa !5
  %call16 = tail call ptr @dcgettext(ptr noundef nonnull @.str.117, ptr noundef nonnull @.str.23.134, i32 noundef 5) #41
  %value18 = getelementptr inbounds %struct.parser_control, ptr %pc, i64 0, i32 6, i32 1
  %13 = load i64, ptr %value18, align 8, !tbaa !170
  %call19 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %12, i32 noundef 1, ptr noundef %call16, i64 noundef %13) #41
  %14 = load i8, ptr %year_seen154162, align 8, !tbaa !169, !range !56, !noundef !57
  store i8 %14, ptr %debug_year_seen155160, align 1, !tbaa !174
  br label %if.end23

if.end23:                                         ; preds = %if.end15, %if.end6.thread, %if.end6
  %space.1 = phi i8 [ 1, %if.end15 ], [ 0, %if.end6 ], [ 1, %if.end6.thread ]
  %times_seen = getelementptr inbounds %struct.parser_control, ptr %pc, i64 0, i32 20
  %15 = load i64, ptr %times_seen, align 8, !tbaa !140
  %tobool24.not = icmp eq i64 %15, 0
  br i1 %tobool24.not, label %if.end45, label %land.lhs.true25

land.lhs.true25:                                  ; preds = %if.end23
  %debug_times_seen = getelementptr inbounds %struct.parser_control, ptr %pc, i64 0, i32 27
  %16 = load i8, ptr %debug_times_seen, align 1, !tbaa !175, !range !56, !noundef !57
  %tobool26.not = icmp eq i8 %16, 0
  br i1 %tobool26.not, label %if.then27, label %if.end45

if.then27:                                        ; preds = %land.lhs.true25
  %seconds = getelementptr inbounds %struct.parser_control, ptr %pc, i64 0, i32 11
  %17 = load i64, ptr %seconds, align 8, !tbaa !176
  %18 = load ptr, ptr @stderr, align 8, !tbaa !5
  %19 = xor i8 %space.1, 1
  %idxprom = zext nneg i8 %19 to i64
  %arrayidx = getelementptr inbounds [19 x i8], ptr @.str.24.135, i64 0, i64 %idxprom
  %hour = getelementptr inbounds %struct.parser_control, ptr %pc, i64 0, i32 9
  %20 = load i64, ptr %hour, align 8, !tbaa !146
  %minutes = getelementptr inbounds %struct.parser_control, ptr %pc, i64 0, i32 10
  %21 = load i64, ptr %minutes, align 8, !tbaa !148
  %call29 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %18, i32 noundef 1, ptr noundef nonnull %arrayidx, i64 noundef %20, i64 noundef %21, i64 noundef %17) #41
  %tv_nsec = getelementptr inbounds %struct.parser_control, ptr %pc, i64 0, i32 11, i32 1
  %22 = load i64, ptr %tv_nsec, align 8, !tbaa !177
  %cmp31.not = icmp eq i64 %22, 0
  br i1 %cmp31.not, label %if.end38, label %if.then33

if.then33:                                        ; preds = %if.then27
  %conv36 = trunc i64 %22 to i32
  %23 = load ptr, ptr @stderr, align 8, !tbaa !5
  %call37 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %23, i32 noundef 1, ptr noundef nonnull @.str.25.136, i32 noundef %conv36) #41
  br label %if.end38

if.end38:                                         ; preds = %if.then33, %if.then27
  %meridian = getelementptr inbounds %struct.parser_control, ptr %pc, i64 0, i32 5
  %24 = load i32, ptr %meridian, align 4, !tbaa !147
  %cmp39 = icmp eq i32 %24, 1
  br i1 %cmp39, label %if.then41, label %if.end43

if.then41:                                        ; preds = %if.end38
  %25 = load ptr, ptr @stderr, align 8, !tbaa !5
  %26 = tail call i64 @fwrite(ptr nonnull @.str.26, i64 2, i64 1, ptr %25) #49
  br label %if.end43

if.end43:                                         ; preds = %if.then41, %if.end38
  store i8 1, ptr %debug_times_seen, align 1, !tbaa !175
  br label %if.end45

if.end45:                                         ; preds = %if.end43, %land.lhs.true25, %if.end23
  %space.2 = phi i8 [ %space.1, %land.lhs.true25 ], [ 1, %if.end43 ], [ %space.1, %if.end23 ]
  %days_seen = getelementptr inbounds %struct.parser_control, ptr %pc, i64 0, i32 16
  %27 = load i64, ptr %days_seen, align 8, !tbaa !145
  %tobool46.not = icmp eq i64 %27, 0
  br i1 %tobool46.not, label %if.end58, label %land.lhs.true47

land.lhs.true47:                                  ; preds = %if.end45
  %debug_days_seen = getelementptr inbounds %struct.parser_control, ptr %pc, i64 0, i32 25
  %28 = load i8, ptr %debug_days_seen, align 1, !tbaa !178, !range !56, !noundef !57
  %tobool48.not = icmp eq i8 %28, 0
  br i1 %tobool48.not, label %if.then49, label %if.end58

if.then49:                                        ; preds = %land.lhs.true47
  %tobool50.not = icmp eq i8 %space.2, 0
  br i1 %tobool50.not, label %if.end53, label %if.then51

if.then51:                                        ; preds = %if.then49
  %29 = load ptr, ptr @stderr, align 8, !tbaa !5
  %call52 = tail call i32 @fputc(i32 noundef 32, ptr noundef %29)
  br label %if.end53

if.end53:                                         ; preds = %if.then51, %if.then49
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %tmp) #41
  %30 = load ptr, ptr @stderr, align 8, !tbaa !5
  %call54 = tail call ptr @dcgettext(ptr noundef nonnull @.str.117, ptr noundef nonnull @.str.27.137, i32 noundef 5) #41
  %debug_ordinal_day_seen.i = getelementptr inbounds %struct.parser_control, ptr %pc, i64 0, i32 30
  %31 = load i8, ptr %debug_ordinal_day_seen.i, align 8, !tbaa !163, !range !56, !noundef !57
  %tobool.not.i = icmp eq i8 %31, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.end53
  %day_ordinal.i = getelementptr inbounds %struct.parser_control, ptr %pc, i64 0, i32 1
  %32 = load i64, ptr %day_ordinal.i, align 8, !tbaa !161
  %33 = add i64 %32, 1
  %or.cond57.i = icmp ult i64 %33, 14
  br i1 %or.cond57.i, label %cond.true.i, label %cond.false.i

cond.true.i:                                      ; preds = %if.then.i
  %arrayidx.i = getelementptr inbounds [14 x [11 x i8]], ptr @str_days.ordinal_values, i64 0, i64 %33
  %call.i = call i32 (ptr, i64, i32, i64, ptr, ...) @__snprintf_chk(ptr noundef nonnull %tmp, i64 noundef 100, i32 noundef 1, i64 noundef 100, ptr noundef nonnull @.str.33.138, ptr noundef nonnull %arrayidx.i) #41
  br label %if.end.i

cond.false.i:                                     ; preds = %if.then.i
  %call6.i = call i32 (ptr, i64, i32, i64, ptr, ...) @__snprintf_chk(ptr noundef nonnull %tmp, i64 noundef 100, i32 noundef 1, i64 noundef 100, ptr noundef nonnull @.str.34.139, i64 noundef %32) #41
  br label %if.end.i

if.else.i:                                        ; preds = %if.end53
  store i8 0, ptr %tmp, align 16, !tbaa !14
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %cond.false.i, %cond.true.i
  %len.0.i = phi i32 [ 0, %if.else.i ], [ %call.i, %cond.true.i ], [ %call6.i, %cond.false.i ]
  %day_number.i = getelementptr inbounds %struct.parser_control, ptr %pc, i64 0, i32 2
  %34 = load i32, ptr %day_number.i, align 8, !tbaa !162
  %cmp8.i = icmp sgt i32 %34, -1
  br i1 %cmp8.i, label %land.lhs.true10.i, label %str_days.exit

land.lhs.true10.i:                                ; preds = %if.end.i
  %cmp12.i = icmp ult i32 %34, 7
  %cmp15.i = icmp sgt i32 %len.0.i, -1
  %or.cond.i = select i1 %cmp12.i, i1 %cmp15.i, i1 false
  %cmp18.i = icmp slt i32 %len.0.i, 100
  %or.cond58.i = select i1 %or.cond.i, i1 %cmp18.i, i1 false
  br i1 %or.cond58.i, label %if.then20.i, label %str_days.exit

if.then20.i:                                      ; preds = %land.lhs.true10.i
  %idx.ext.i = zext nneg i32 %len.0.i to i64
  %add.ptr.i = getelementptr inbounds i8, ptr %tmp, i64 %idx.ext.i
  %sub.i = sub nuw nsw i32 100, %len.0.i
  %conv21.i = zext nneg i32 %sub.i to i64
  %cmp24.i = icmp eq i32 %len.0.i, 0
  %idxprom.i = zext i1 %cmp24.i to i64
  %arrayidx26.i = getelementptr inbounds [4 x i8], ptr @.str.35, i64 0, i64 %idxprom.i
  %idxprom28.i = zext nneg i32 %34 to i64
  %arrayidx29.i = getelementptr inbounds [7 x [4 x i8]], ptr @str_days.days_values, i64 0, i64 %idxprom28.i
  %call31.i = call i32 (ptr, i64, i32, i64, ptr, ...) @__snprintf_chk(ptr noundef nonnull %add.ptr.i, i64 noundef %conv21.i, i32 noundef 1, i64 noundef -1, ptr noundef nonnull %arrayidx26.i, ptr noundef nonnull %arrayidx29.i) #41
  %.pre = load i32, ptr %day_number.i, align 8, !tbaa !162
  br label %str_days.exit

str_days.exit:                                    ; preds = %if.then20.i, %land.lhs.true10.i, %if.end.i
  %35 = phi i32 [ %34, %if.end.i ], [ %34, %land.lhs.true10.i ], [ %.pre, %if.then20.i ]
  %day_ordinal = getelementptr inbounds %struct.parser_control, ptr %pc, i64 0, i32 1
  %36 = load i64, ptr %day_ordinal, align 8, !tbaa !161
  %call56 = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %30, i32 noundef 1, ptr noundef %call54, ptr noundef nonnull %tmp, i64 noundef %36, i32 noundef %35) #41
  store i8 1, ptr %debug_days_seen, align 1, !tbaa !178
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %tmp) #41
  br label %if.end58

if.end58:                                         ; preds = %str_days.exit, %land.lhs.true47, %if.end45
  %space.3 = phi i8 [ %space.2, %land.lhs.true47 ], [ 1, %str_days.exit ], [ %space.2, %if.end45 ]
  %local_zones_seen = getelementptr inbounds %struct.parser_control, ptr %pc, i64 0, i32 18
  %37 = load i64, ptr %local_zones_seen, align 8, !tbaa !142
  %tobool59.not = icmp eq i64 %37, 0
  br i1 %tobool59.not, label %if.end71, label %land.lhs.true60

land.lhs.true60:                                  ; preds = %if.end58
  %debug_local_zones_seen = getelementptr inbounds %struct.parser_control, ptr %pc, i64 0, i32 26
  %38 = load i8, ptr %debug_local_zones_seen, align 4, !tbaa !179, !range !56, !noundef !57
  %tobool61.not = icmp eq i8 %38, 0
  br i1 %tobool61.not, label %if.then62, label %if.end71

if.then62:                                        ; preds = %land.lhs.true60
  %39 = load ptr, ptr @stderr, align 8, !tbaa !5
  %40 = xor i8 %space.3, 1
  %idxprom66 = zext nneg i8 %40 to i64
  %arrayidx67 = getelementptr inbounds [12 x i8], ptr @.str.28.140, i64 0, i64 %idxprom66
  %local_isdst = getelementptr inbounds %struct.parser_control, ptr %pc, i64 0, i32 3
  %41 = load i32, ptr %local_isdst, align 4, !tbaa !151
  %dsts_seen = getelementptr inbounds %struct.parser_control, ptr %pc, i64 0, i32 19
  %42 = load i64, ptr %dsts_seen, align 8, !tbaa !152
  %tobool68.not = icmp eq i64 %42, 0
  %cond = select i1 %tobool68.not, ptr @.str.30.141, ptr @.str.29.142
  %call69 = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %39, i32 noundef 1, ptr noundef nonnull %arrayidx67, i32 noundef %41, ptr noundef nonnull %cond) #41
  store i8 1, ptr %debug_local_zones_seen, align 4, !tbaa !179
  br label %if.end71

if.end71:                                         ; preds = %if.then62, %land.lhs.true60, %if.end58
  %space.4 = phi i8 [ %space.3, %land.lhs.true60 ], [ 1, %if.then62 ], [ %space.3, %if.end58 ]
  %zones_seen = getelementptr inbounds %struct.parser_control, ptr %pc, i64 0, i32 21
  %43 = load i64, ptr %zones_seen, align 8, !tbaa !144
  %tobool72.not = icmp eq i64 %43, 0
  br i1 %tobool72.not, label %if.end85, label %land.lhs.true73

land.lhs.true73:                                  ; preds = %if.end71
  %debug_zones_seen = getelementptr inbounds %struct.parser_control, ptr %pc, i64 0, i32 28
  %44 = load i8, ptr %debug_zones_seen, align 2, !tbaa !180, !range !56, !noundef !57
  %tobool74.not = icmp eq i8 %44, 0
  br i1 %tobool74.not, label %if.then75, label %if.end85

if.then75:                                        ; preds = %land.lhs.true73
  call void @llvm.lifetime.start.p0(i64 27, ptr nonnull %time_zone_buf) #41
  %45 = load ptr, ptr @stderr, align 8, !tbaa !5
  %46 = xor i8 %space.4, 1
  %idxprom79 = zext nneg i8 %46 to i64
  %arrayidx80 = getelementptr inbounds [7 x i8], ptr @.str.31.143, i64 0, i64 %idxprom79
  %time_zone = getelementptr inbounds %struct.parser_control, ptr %pc, i64 0, i32 4
  %47 = load i32, ptr %time_zone, align 8, !tbaa !150
  %cmp.i = icmp slt i32 %47, 0
  %div.i = sdiv i32 %47, 3600
  %48 = call i32 @llvm.abs.i32(i32 %div.i, i1 true)
  %conv1.i = select i1 %cmp.i, i32 45, i32 43
  %call.i141 = call i32 (ptr, i32, i64, ptr, ...) @__sprintf_chk(ptr noundef nonnull %time_zone_buf, i32 noundef 1, i64 noundef 27, ptr noundef nonnull @.str.36, i32 noundef %conv1.i, i32 noundef %48) #41
  %rem.i = srem i32 %47, 3600
  %cmp2.not.i = icmp eq i32 %rem.i, 0
  br i1 %cmp2.not.i, label %if.end85.thread, label %if.then.i142

if.then.i142:                                     ; preds = %if.then75
  %49 = call i32 @llvm.abs.i32(i32 %rem.i, i1 true)
  %idx.ext.i143 = sext i32 %call.i141 to i64
  %add.ptr.i144 = getelementptr inbounds i8, ptr %time_zone_buf, i64 %idx.ext.i143
  %div4.lhs.trunc.i = trunc i32 %49 to i16
  %div441.i = udiv i16 %div4.lhs.trunc.i, 60
  %rem542.i = urem i16 %div4.lhs.trunc.i, 60
  %incdec.ptr.i = getelementptr inbounds i8, ptr %add.ptr.i144, i64 1
  store i8 58, ptr %add.ptr.i144, align 1, !tbaa !14
  %div643.i = udiv i16 %div4.lhs.trunc.i, 600
  %50 = trunc i16 %div643.i to i8
  %conv7.i = add nuw nsw i8 %50, 48
  %incdec.ptr8.i = getelementptr inbounds i8, ptr %add.ptr.i144, i64 2
  store i8 %conv7.i, ptr %incdec.ptr.i, align 1, !tbaa !14
  %rem9.lhs.trunc.i = trunc i16 %div441.i to i8
  %rem944.i = urem i8 %rem9.lhs.trunc.i, 10
  %conv11.i = or disjoint i8 %rem944.i, 48
  %incdec.ptr12.i = getelementptr inbounds i8, ptr %add.ptr.i144, i64 3
  store i8 %conv11.i, ptr %incdec.ptr8.i, align 1, !tbaa !14
  %tobool.not.i145 = icmp eq i16 %rem542.i, 0
  br i1 %tobool.not.i145, label %if.end.i147, label %if.then13.i

if.then13.i:                                      ; preds = %if.then.i142
  %incdec.ptr14.i = getelementptr inbounds i8, ptr %add.ptr.i144, i64 4
  store i8 58, ptr %incdec.ptr12.i, align 1, !tbaa !14
  %div15.lhs.trunc.i = trunc i16 %rem542.i to i8
  %div1545.i = udiv i8 %div15.lhs.trunc.i, 10
  %conv17.i = or disjoint i8 %div1545.i, 48
  %incdec.ptr18.i = getelementptr inbounds i8, ptr %add.ptr.i144, i64 5
  store i8 %conv17.i, ptr %incdec.ptr14.i, align 1, !tbaa !14
  %rem1946.i = urem i8 %div15.lhs.trunc.i, 10
  %conv21.i146 = or disjoint i8 %rem1946.i, 48
  %incdec.ptr22.i = getelementptr inbounds i8, ptr %add.ptr.i144, i64 6
  store i8 %conv21.i146, ptr %incdec.ptr18.i, align 1, !tbaa !14
  br label %if.end.i147

if.end.i147:                                      ; preds = %if.then13.i, %if.then.i142
  %p.0.i = phi ptr [ %incdec.ptr22.i, %if.then13.i ], [ %incdec.ptr12.i, %if.then.i142 ]
  store i8 0, ptr %p.0.i, align 1, !tbaa !14
  br label %if.end85.thread

if.end85:                                         ; preds = %land.lhs.true73, %if.end71
  %timespec_seen = getelementptr inbounds %struct.parser_control, ptr %pc, i64 0, i32 13
  %51 = load i8, ptr %timespec_seen, align 8, !tbaa !139, !range !56, !noundef !57
  %tobool86.not = icmp eq i8 %51, 0
  br i1 %tobool86.not, label %if.end97, label %if.then87

if.end85.thread:                                  ; preds = %if.end.i147, %if.then75
  %call83 = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %45, i32 noundef 1, ptr noundef nonnull %arrayidx80, ptr noundef nonnull %time_zone_buf) #41
  store i8 1, ptr %debug_zones_seen, align 2, !tbaa !180
  call void @llvm.lifetime.end.p0(i64 27, ptr nonnull %time_zone_buf) #41
  %timespec_seen164 = getelementptr inbounds %struct.parser_control, ptr %pc, i64 0, i32 13
  %52 = load i8, ptr %timespec_seen164, align 8, !tbaa !139, !range !56, !noundef !57
  %tobool86.not165 = icmp eq i8 %52, 0
  br i1 %tobool86.not165, label %if.end97, label %if.then87.thread

if.then87.thread:                                 ; preds = %if.end85.thread
  %seconds89168 = getelementptr inbounds %struct.parser_control, ptr %pc, i64 0, i32 11
  %53 = load i64, ptr %seconds89168, align 8, !tbaa !176
  br label %if.then92

if.then87:                                        ; preds = %if.end85
  %seconds89 = getelementptr inbounds %struct.parser_control, ptr %pc, i64 0, i32 11
  %54 = load i64, ptr %seconds89, align 8, !tbaa !176
  %tobool91.not = icmp eq i8 %space.4, 0
  br i1 %tobool91.not, label %if.end94, label %if.then92

if.then92:                                        ; preds = %if.then87, %if.then87.thread
  %55 = phi i64 [ %53, %if.then87.thread ], [ %54, %if.then87 ]
  %56 = load ptr, ptr @stderr, align 8, !tbaa !5
  %call93 = call i32 @fputc(i32 noundef 32, ptr noundef %56)
  br label %if.end94

if.end94:                                         ; preds = %if.then92, %if.then87
  %57 = phi i64 [ %55, %if.then92 ], [ %54, %if.then87 ]
  %58 = load ptr, ptr @stderr, align 8, !tbaa !5
  %call95 = call ptr @dcgettext(ptr noundef nonnull @.str.117, ptr noundef nonnull @.str.32.144, i32 noundef 5) #41
  %call96 = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %58, i32 noundef 1, ptr noundef %call95, i64 noundef %57) #41
  br label %if.end97

if.end97:                                         ; preds = %if.end94, %if.end85.thread, %if.end85
  %59 = load ptr, ptr @stderr, align 8, !tbaa !5
  %call98 = call i32 @fputc(i32 noundef 10, ptr noundef %59)
  br label %cleanup

cleanup:                                          ; preds = %if.end97, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @debug_print_relative_time(ptr noundef %item, ptr nocapture noundef readonly %pc) unnamed_addr #6 {
entry:
  %0 = getelementptr i8, ptr %pc, i64 225
  %pc.val = load i8, ptr %0, align 1, !tbaa !125, !range !56, !noundef !57
  %tobool.i.not = icmp eq i8 %pc.val, 0
  br i1 %tobool.i.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call1 = tail call ptr @dcgettext(ptr noundef nonnull @.str.117, ptr noundef nonnull @.str.21.131, i32 noundef 5) #41
  tail call void (ptr, ...) @dbg_printf(ptr noundef %call1, ptr noundef %item)
  %rel = getelementptr inbounds %struct.parser_control, ptr %pc, i64 0, i32 12
  %1 = load i64, ptr %rel, align 8, !tbaa !159
  %cmp.not = icmp eq i64 %1, 0
  br i1 %cmp.not, label %land.lhs.true, label %print_rel_part.exit

land.lhs.true:                                    ; preds = %if.end
  %month = getelementptr inbounds %struct.parser_control, ptr %pc, i64 0, i32 12, i32 1
  %2 = load i64, ptr %month, align 8, !tbaa !158
  %cmp3 = icmp eq i64 %2, 0
  br i1 %cmp3, label %land.lhs.true4, label %if.end.i77

land.lhs.true4:                                   ; preds = %land.lhs.true
  %day = getelementptr inbounds %struct.parser_control, ptr %pc, i64 0, i32 12, i32 2
  %3 = load i64, ptr %day, align 8, !tbaa !157
  %cmp6 = icmp eq i64 %3, 0
  br i1 %cmp6, label %land.lhs.true7, label %print_rel_part.exit80

land.lhs.true7:                                   ; preds = %land.lhs.true4
  %hour = getelementptr inbounds %struct.parser_control, ptr %pc, i64 0, i32 12, i32 3
  %4 = load i64, ptr %hour, align 8, !tbaa !156
  %cmp9 = icmp eq i64 %4, 0
  br i1 %cmp9, label %land.lhs.true10, label %print_rel_part.exit80

land.lhs.true10:                                  ; preds = %land.lhs.true7
  %minutes = getelementptr inbounds %struct.parser_control, ptr %pc, i64 0, i32 12, i32 4
  %5 = load i64, ptr %minutes, align 8, !tbaa !155
  %cmp12 = icmp eq i64 %5, 0
  br i1 %cmp12, label %land.lhs.true13, label %print_rel_part.exit80

land.lhs.true13:                                  ; preds = %land.lhs.true10
  %seconds = getelementptr inbounds %struct.parser_control, ptr %pc, i64 0, i32 12, i32 5
  %6 = load i64, ptr %seconds, align 8, !tbaa !154
  %cmp15 = icmp eq i64 %6, 0
  br i1 %cmp15, label %land.lhs.true16, label %print_rel_part.exit80

land.lhs.true16:                                  ; preds = %land.lhs.true13
  %ns = getelementptr inbounds %struct.parser_control, ptr %pc, i64 0, i32 12, i32 6
  %7 = load i32, ptr %ns, align 8, !tbaa !153
  %cmp18 = icmp eq i32 %7, 0
  br i1 %cmp18, label %if.then19, label %print_rel_part.exit80

if.then19:                                        ; preds = %land.lhs.true16
  %call20 = tail call ptr @dcgettext(ptr noundef nonnull @.str.117, ptr noundef nonnull @.str.37, i32 noundef 5) #41
  %8 = load ptr, ptr @stderr, align 8, !tbaa !5
  %call21 = tail call i32 @fputs(ptr noundef %call20, ptr noundef %8) #49
  br label %cleanup

print_rel_part.exit:                              ; preds = %if.end
  %9 = load ptr, ptr @stderr, align 8, !tbaa !5
  %call.i = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %9, i32 noundef 1, ptr noundef nonnull getelementptr inbounds ([9 x i8], ptr @.str.45, i64 0, i64 1), i64 noundef %1, ptr noundef nonnull @.str.38) #41
  %month28.phi.trans.insert = getelementptr inbounds %struct.parser_control, ptr %pc, i64 0, i32 12, i32 1
  %.pre = load i64, ptr %month28.phi.trans.insert, align 8, !tbaa !158
  %cmp.i76 = icmp eq i64 %.pre, 0
  br i1 %cmp.i76, label %print_rel_part.exit80, label %if.end.i77

if.end.i77:                                       ; preds = %print_rel_part.exit, %land.lhs.true
  %10 = phi i64 [ %.pre, %print_rel_part.exit ], [ %2, %land.lhs.true ]
  %11 = load ptr, ptr @stderr, align 8, !tbaa !5
  %idxprom.i = zext i1 %cmp.not to i64
  %arrayidx.i = getelementptr inbounds [9 x i8], ptr @.str.45, i64 0, i64 %idxprom.i
  %call.i78 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %11, i32 noundef 1, ptr noundef nonnull %arrayidx.i, i64 noundef %10, ptr noundef nonnull @.str.39) #41
  br label %print_rel_part.exit80

print_rel_part.exit80:                            ; preds = %if.end.i77, %print_rel_part.exit, %land.lhs.true16, %land.lhs.true13, %land.lhs.true10, %land.lhs.true7, %land.lhs.true4
  %retval.0.i79 = phi i1 [ true, %if.end.i77 ], [ true, %print_rel_part.exit ], [ false, %land.lhs.true4 ], [ false, %land.lhs.true7 ], [ false, %land.lhs.true10 ], [ false, %land.lhs.true13 ], [ false, %land.lhs.true16 ]
  %day33 = getelementptr inbounds %struct.parser_control, ptr %pc, i64 0, i32 12, i32 2
  %12 = load i64, ptr %day33, align 8, !tbaa !157
  %cmp.i81 = icmp eq i64 %12, 0
  br i1 %cmp.i81, label %print_rel_part.exit88, label %if.end.i82

if.end.i82:                                       ; preds = %print_rel_part.exit80
  %13 = load ptr, ptr @stderr, align 8, !tbaa !5
  %lnot.i83 = xor i1 %retval.0.i79, true
  %idxprom.i84 = zext i1 %lnot.i83 to i64
  %arrayidx.i85 = getelementptr inbounds [9 x i8], ptr @.str.45, i64 0, i64 %idxprom.i84
  %call.i86 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %13, i32 noundef 1, ptr noundef nonnull %arrayidx.i85, i64 noundef %12, ptr noundef nonnull @.str.40.132) #41
  br label %print_rel_part.exit88

print_rel_part.exit88:                            ; preds = %if.end.i82, %print_rel_part.exit80
  %retval.0.i87 = phi i1 [ true, %if.end.i82 ], [ %retval.0.i79, %print_rel_part.exit80 ]
  %hour38 = getelementptr inbounds %struct.parser_control, ptr %pc, i64 0, i32 12, i32 3
  %14 = load i64, ptr %hour38, align 8, !tbaa !156
  %cmp.i89 = icmp eq i64 %14, 0
  br i1 %cmp.i89, label %print_rel_part.exit96, label %if.end.i90

if.end.i90:                                       ; preds = %print_rel_part.exit88
  %15 = load ptr, ptr @stderr, align 8, !tbaa !5
  %lnot.i91 = xor i1 %retval.0.i87, true
  %idxprom.i92 = zext i1 %lnot.i91 to i64
  %arrayidx.i93 = getelementptr inbounds [9 x i8], ptr @.str.45, i64 0, i64 %idxprom.i92
  %call.i94 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %15, i32 noundef 1, ptr noundef nonnull %arrayidx.i93, i64 noundef %14, ptr noundef nonnull @.str.41) #41
  br label %print_rel_part.exit96

print_rel_part.exit96:                            ; preds = %if.end.i90, %print_rel_part.exit88
  %retval.0.i95 = phi i1 [ true, %if.end.i90 ], [ %retval.0.i87, %print_rel_part.exit88 ]
  %minutes43 = getelementptr inbounds %struct.parser_control, ptr %pc, i64 0, i32 12, i32 4
  %16 = load i64, ptr %minutes43, align 8, !tbaa !155
  %cmp.i97 = icmp eq i64 %16, 0
  br i1 %cmp.i97, label %print_rel_part.exit104, label %if.end.i98

if.end.i98:                                       ; preds = %print_rel_part.exit96
  %17 = load ptr, ptr @stderr, align 8, !tbaa !5
  %lnot.i99 = xor i1 %retval.0.i95, true
  %idxprom.i100 = zext i1 %lnot.i99 to i64
  %arrayidx.i101 = getelementptr inbounds [9 x i8], ptr @.str.45, i64 0, i64 %idxprom.i100
  %call.i102 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %17, i32 noundef 1, ptr noundef nonnull %arrayidx.i101, i64 noundef %16, ptr noundef nonnull @.str.42) #41
  br label %print_rel_part.exit104

print_rel_part.exit104:                           ; preds = %if.end.i98, %print_rel_part.exit96
  %retval.0.i103 = phi i1 [ true, %if.end.i98 ], [ %retval.0.i95, %print_rel_part.exit96 ]
  %seconds48 = getelementptr inbounds %struct.parser_control, ptr %pc, i64 0, i32 12, i32 5
  %18 = load i64, ptr %seconds48, align 8, !tbaa !154
  %cmp.i105 = icmp eq i64 %18, 0
  br i1 %cmp.i105, label %print_rel_part.exit112, label %if.end.i106

if.end.i106:                                      ; preds = %print_rel_part.exit104
  %19 = load ptr, ptr @stderr, align 8, !tbaa !5
  %lnot.i107 = xor i1 %retval.0.i103, true
  %idxprom.i108 = zext i1 %lnot.i107 to i64
  %arrayidx.i109 = getelementptr inbounds [9 x i8], ptr @.str.45, i64 0, i64 %idxprom.i108
  %call.i110 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %19, i32 noundef 1, ptr noundef nonnull %arrayidx.i109, i64 noundef %18, ptr noundef nonnull @.str.43) #41
  br label %print_rel_part.exit112

print_rel_part.exit112:                           ; preds = %if.end.i106, %print_rel_part.exit104
  %retval.0.i111 = phi i1 [ true, %if.end.i106 ], [ %retval.0.i103, %print_rel_part.exit104 ]
  %ns53 = getelementptr inbounds %struct.parser_control, ptr %pc, i64 0, i32 12, i32 6
  %20 = load i32, ptr %ns53, align 8, !tbaa !153
  %cmp.i113 = icmp eq i32 %20, 0
  br i1 %cmp.i113, label %print_rel_part.exit120, label %if.end.i114

if.end.i114:                                      ; preds = %print_rel_part.exit112
  %conv = sext i32 %20 to i64
  %21 = load ptr, ptr @stderr, align 8, !tbaa !5
  %lnot.i115 = xor i1 %retval.0.i111, true
  %idxprom.i116 = zext i1 %lnot.i115 to i64
  %arrayidx.i117 = getelementptr inbounds [9 x i8], ptr @.str.45, i64 0, i64 %idxprom.i116
  %call.i118 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %21, i32 noundef 1, ptr noundef nonnull %arrayidx.i117, i64 noundef %conv, ptr noundef nonnull @.str.44) #41
  br label %print_rel_part.exit120

print_rel_part.exit120:                           ; preds = %if.end.i114, %print_rel_part.exit112
  %22 = load ptr, ptr @stderr, align 8, !tbaa !5
  %call55 = tail call i32 @fputc(i32 noundef 10, ptr noundef %22)
  br label %cleanup

cleanup:                                          ; preds = %print_rel_part.exit120, %if.then19, %entry
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.ssub.with.overflow.i64(i64, i64) #23

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i32, i1 } @llvm.sadd.with.overflow.i32(i32, i32) #23

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i32, i1 } @llvm.ssub.with.overflow.i32(i32, i32) #23

; Function Attrs: nofree nounwind
declare noundef i32 @fputs(ptr nocapture noundef readonly, ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: nofree
declare i32 @__snprintf_chk(ptr noundef, i64 noundef, i32 noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #36

; Function Attrs: nofree
declare i32 @__sprintf_chk(ptr noundef, i32 noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #36

; Function Attrs: nounwind uwtable
define dso_local noundef zeroext i1 @parse_datetime2(ptr noundef %result, ptr noundef %p, ptr noundef %now, i32 noundef %flags, ptr noundef %tzdefault, ptr noundef %tzstring) local_unnamed_addr #6 {
entry:
  %call = tail call fastcc zeroext i1 @parse_datetime_body(ptr noundef %result, ptr noundef %p, ptr noundef %now, i32 noundef %flags, ptr noundef %tzdefault, ptr noundef %tzstring)
  ret i1 %call
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef zeroext i1 @parse_datetime_body(ptr noundef %result, ptr noundef %p, ptr noundef %now, i32 noundef %flags, ptr noundef %tzdefault, ptr noundef %tzstring) unnamed_addr #6 {
entry:
  %tm = alloca %struct.tm, align 16
  %tm0 = alloca %struct.tm, align 16
  %time_zone_buf = alloca [27 x i8], align 16
  %dbg_tm = alloca [100 x i8], align 16
  %tz1buf = alloca [100 x i8], align 16
  %gettime_buffer = alloca %struct.timespec, align 8
  %rel_time_0 = alloca %struct.relative_time, align 8
  %tmp = alloca %struct.tm, align 8
  %pc = alloca %struct.parser_control, align 8
  %probe = alloca i64, align 8
  %probe_tm = alloca %struct.tm, align 8
  %tz2buf = alloca [30 x i8], align 16
  %dbg_ord = alloca [100 x i8], align 16
  %tm_year_buf = alloca [13 x i8], align 1
  %lmt = alloca %struct.tm, align 8
  %gmt = alloca %struct.tm, align 8
  %lmt837 = alloca %struct.tm, align 8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %tm) #41
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %tm0) #41
  call void @llvm.lifetime.start.p0(i64 27, ptr nonnull %time_zone_buf) #41
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %dbg_tm) #41
  %call = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %p) #42
  %add.ptr = getelementptr inbounds i8, ptr %p, i64 %call
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %tz1buf) #41
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %gettime_buffer) #41
  %tobool.not = icmp eq ptr %now, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @gettime(ptr noundef nonnull %gettime_buffer) #41
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %now.addr.0 = phi ptr [ %now, %entry ], [ %gettime_buffer, %if.then ]
  %0 = load i64, ptr %now.addr.0, align 8, !tbaa !181
  %tv_nsec = getelementptr inbounds %struct.timespec, ptr %now.addr.0, i64 0, i32 1
  %1 = load i64, ptr %tv_nsec, align 8, !tbaa !182
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end
  %p.addr.0 = phi ptr [ %p, %if.end ], [ %incdec.ptr, %while.body ]
  %2 = load i8, ptr %p.addr.0, align 1, !tbaa !14
  switch i8 %2, label %while.end [
    i8 32, label %while.body
    i8 9, label %while.body
    i8 10, label %while.body
    i8 11, label %while.body
    i8 12, label %while.body
    i8 13, label %while.body
  ]

while.body:                                       ; preds = %while.cond, %while.cond, %while.cond, %while.cond, %while.cond, %while.cond
  %incdec.ptr = getelementptr inbounds i8, ptr %p.addr.0, i64 1
  br label %while.cond, !llvm.loop !183

while.end:                                        ; preds = %while.cond
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %rel_time_0)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %rel_time_0, i8 0, i64 56, i1 false)
  %call3 = call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %p.addr.0, ptr noundef nonnull dereferenceable(5) @.str.183, i64 noundef 4) #42
  %cmp = icmp eq i32 %call3, 0
  br i1 %cmp, label %if.then5, label %if.end66

if.then5:                                         ; preds = %while.end
  %add.ptr6 = getelementptr inbounds i8, ptr %p.addr.0, i64 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc59, %if.then5
  %s.0 = phi ptr [ %add.ptr6, %if.then5 ], [ %incdec.ptr60, %for.inc59 ]
  %tzsize.0 = phi i64 [ 1, %if.then5 ], [ %inc, %for.inc59 ]
  %3 = load i8, ptr %s.0, align 1, !tbaa !14
  switch i8 %3, label %for.inc59 [
    i8 0, label %if.end66
    i8 92, label %if.then11
    i8 34, label %if.then24
  ]

if.then11:                                        ; preds = %for.cond
  %incdec.ptr12 = getelementptr inbounds i8, ptr %s.0, i64 1
  %4 = load i8, ptr %incdec.ptr12, align 1, !tbaa !14
  switch i8 %4, label %if.end66 [
    i8 92, label %for.inc59
    i8 34, label %for.inc59
  ]

if.then24:                                        ; preds = %for.cond
  %cmp25 = icmp ugt i64 %tzsize.0, 100
  br i1 %cmp25, label %if.then27, label %if.end32

if.then27:                                        ; preds = %if.then24
  %call28 = call noalias ptr @malloc(i64 noundef %tzsize.0) #48
  %tobool29.not = icmp eq ptr %call28, null
  br i1 %tobool29.not, label %cleanup876, label %if.end32

if.end32:                                         ; preds = %if.then27, %if.then24
  %tz1string.0 = phi ptr [ %tz1buf, %if.then24 ], [ %call28, %if.then27 ]
  %tz1alloc.0 = phi ptr [ null, %if.then24 ], [ %call28, %if.then27 ]
  %5 = load i8, ptr %add.ptr6, align 1, !tbaa !14
  %cmp35.not1185 = icmp eq i8 %5, 34
  br i1 %cmp35.not1185, label %for.end, label %for.body37

for.body37:                                       ; preds = %for.body37, %if.end32
  %6 = phi i8 [ %8, %for.body37 ], [ %5, %if.end32 ]
  %s.11187 = phi ptr [ %incdec.ptr43, %for.body37 ], [ %add.ptr6, %if.end32 ]
  %z.01186 = phi ptr [ %incdec.ptr42, %for.body37 ], [ %tz1string.0, %if.end32 ]
  %cmp39 = icmp eq i8 %6, 92
  %idx.ext = zext i1 %cmp39 to i64
  %add.ptr41 = getelementptr inbounds i8, ptr %s.11187, i64 %idx.ext
  %7 = load i8, ptr %add.ptr41, align 1, !tbaa !14
  %incdec.ptr42 = getelementptr inbounds i8, ptr %z.01186, i64 1
  store i8 %7, ptr %z.01186, align 1, !tbaa !14
  %incdec.ptr43 = getelementptr inbounds i8, ptr %add.ptr41, i64 1
  %8 = load i8, ptr %incdec.ptr43, align 1, !tbaa !14
  %cmp35.not = icmp eq i8 %8, 34
  br i1 %cmp35.not, label %for.end, label %for.body37, !llvm.loop !184

for.end:                                          ; preds = %for.body37, %if.end32
  %z.0.lcssa = phi ptr [ %tz1string.0, %if.end32 ], [ %incdec.ptr42, %for.body37 ]
  %s.1.lcssa = phi ptr [ %add.ptr6, %if.end32 ], [ %incdec.ptr43, %for.body37 ]
  store i8 0, ptr %z.0.lcssa, align 1, !tbaa !14
  %call44 = call ptr @tzalloc(ptr noundef nonnull %tz1string.0) #41
  %tobool45.not = icmp eq ptr %call44, null
  br i1 %tobool45.not, label %cleanup876, label %while.cond49

while.cond49:                                     ; preds = %while.cond49.backedge, %for.end
  %s.1.pn = phi ptr [ %p.addr.1, %while.cond49.backedge ], [ %s.1.lcssa, %for.end ]
  %p.addr.1 = getelementptr inbounds i8, ptr %s.1.pn, i64 1
  %9 = load i8, ptr %p.addr.1, align 1, !tbaa !14
  switch i8 %9, label %if.end66 [
    i8 32, label %while.cond49.backedge
    i8 9, label %while.cond49.backedge
    i8 10, label %while.cond49.backedge
    i8 11, label %while.cond49.backedge
    i8 12, label %while.cond49.backedge
    i8 13, label %while.cond49.backedge
  ]

while.cond49.backedge:                            ; preds = %while.cond49, %while.cond49, %while.cond49, %while.cond49, %while.cond49, %while.cond49
  br label %while.cond49, !llvm.loop !185

for.inc59:                                        ; preds = %if.then11, %if.then11, %for.cond
  %s.2 = phi ptr [ %incdec.ptr12, %if.then11 ], [ %incdec.ptr12, %if.then11 ], [ %s.0, %for.cond ]
  %incdec.ptr60 = getelementptr inbounds i8, ptr %s.2, i64 1
  %inc = add nuw nsw i64 %tzsize.0, 1
  br label %for.cond, !llvm.loop !186

if.end66:                                         ; preds = %while.cond49, %if.then11, %for.cond, %while.end
  %tz.3 = phi ptr [ %tzdefault, %while.end ], [ %call44, %while.cond49 ], [ %tzdefault, %for.cond ], [ %tzdefault, %if.then11 ]
  %tz1alloc.4 = phi ptr [ null, %while.end ], [ %tz1alloc.0, %while.cond49 ], [ null, %for.cond ], [ null, %if.then11 ]
  %tzstring.addr.3 = phi ptr [ %tzstring, %while.end ], [ %tz1string.0, %while.cond49 ], [ %tzstring, %for.cond ], [ %tzstring, %if.then11 ]
  %p.addr.5 = phi ptr [ %p.addr.0, %while.end ], [ %p.addr.1, %while.cond49 ], [ %p.addr.0, %for.cond ], [ %p.addr.0, %if.then11 ]
  %call68 = call ptr @localtime_rz(ptr noundef %tz.3, ptr noundef nonnull %now.addr.0, ptr noundef nonnull %tmp) #41
  %tobool69.not = icmp eq ptr %call68, null
  br i1 %tobool69.not, label %fail, label %if.end71

if.end71:                                         ; preds = %if.end66
  %10 = load i8, ptr %p.addr.5, align 1, !tbaa !14
  %cmp73 = icmp eq i8 %10, 0
  %spec.store.select = select i1 %cmp73, ptr @.str.184, ptr %p.addr.5
  store ptr %spec.store.select, ptr %pc, align 8, !tbaa !111
  %parse_datetime_debug = getelementptr inbounds %struct.parser_control, ptr %pc, i64 0, i32 23
  %11 = trunc i32 %flags to i8
  %frombool = and i8 %11, 1
  store i8 %frombool, ptr %parse_datetime_debug, align 1, !tbaa !125
  %tm_year = getelementptr inbounds %struct.tm, ptr %tmp, i64 0, i32 5
  %12 = load i32, ptr %tm_year, align 4, !tbaa !187
  %value = getelementptr inbounds %struct.parser_control, ptr %pc, i64 0, i32 6, i32 1
  %13 = sext i32 %12 to i64
  %14 = add nsw i64 %13, 1900
  store i64 %14, ptr %value, align 8
  %digits = getelementptr inbounds %struct.parser_control, ptr %pc, i64 0, i32 6, i32 2
  store i64 0, ptr %digits, align 8, !tbaa !168
  %tm_mon = getelementptr inbounds %struct.tm, ptr %tmp, i64 0, i32 4
  %15 = load i32, ptr %tm_mon, align 8, !tbaa !189
  %add = add nsw i32 %15, 1
  %conv86 = sext i32 %add to i64
  %month = getelementptr inbounds %struct.parser_control, ptr %pc, i64 0, i32 7
  store i64 %conv86, ptr %month, align 8, !tbaa !164
  %tm_mday = getelementptr inbounds %struct.tm, ptr %tmp, i64 0, i32 3
  %16 = load i32, ptr %tm_mday, align 4, !tbaa !190
  %conv87 = sext i32 %16 to i64
  %day = getelementptr inbounds %struct.parser_control, ptr %pc, i64 0, i32 8
  store i64 %conv87, ptr %day, align 8, !tbaa !165
  %tm_hour = getelementptr inbounds %struct.tm, ptr %tmp, i64 0, i32 2
  %17 = load i32, ptr %tm_hour, align 8, !tbaa !191
  %conv88 = sext i32 %17 to i64
  %hour = getelementptr inbounds %struct.parser_control, ptr %pc, i64 0, i32 9
  store i64 %conv88, ptr %hour, align 8, !tbaa !146
  %tm_min = getelementptr inbounds %struct.tm, ptr %tmp, i64 0, i32 1
  %18 = load i32, ptr %tm_min, align 4, !tbaa !192
  %conv89 = sext i32 %18 to i64
  %minutes = getelementptr inbounds %struct.parser_control, ptr %pc, i64 0, i32 10
  store i64 %conv89, ptr %minutes, align 8, !tbaa !148
  %seconds = getelementptr inbounds %struct.parser_control, ptr %pc, i64 0, i32 11
  %19 = load i32, ptr %tmp, align 8, !tbaa !193
  %conv91 = sext i32 %19 to i64
  %sext = shl i64 %1, 32
  %conv93 = ashr exact i64 %sext, 32
  store i64 %conv91, ptr %seconds, align 8, !tbaa !137, !tbaa.struct !138
  %.compoundliteral.sroa.2.0.seconds.sroa_idx = getelementptr inbounds %struct.parser_control, ptr %pc, i64 0, i32 11, i32 1
  store i64 %conv93, ptr %.compoundliteral.sroa.2.0.seconds.sroa_idx, align 8, !tbaa !137, !tbaa.struct !149
  %tm_isdst = getelementptr inbounds %struct.tm, ptr %tmp, i64 0, i32 8
  %20 = load i32, ptr %tm_isdst, align 8, !tbaa !194
  %tm_isdst94 = getelementptr inbounds %struct.tm, ptr %tm, i64 0, i32 8
  store i32 %20, ptr %tm_isdst94, align 16, !tbaa !194
  %meridian = getelementptr inbounds %struct.parser_control, ptr %pc, i64 0, i32 5
  store i32 2, ptr %meridian, align 4, !tbaa !147
  %rel = getelementptr inbounds %struct.parser_control, ptr %pc, i64 0, i32 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %rel, ptr noundef nonnull align 8 dereferenceable(56) %rel_time_0, i64 56, i1 false), !tbaa !195, !tbaa.struct !196
  %timespec_seen = getelementptr inbounds %struct.parser_control, ptr %pc, i64 0, i32 13
  store i8 0, ptr %timespec_seen, align 8, !tbaa !139
  %rels_seen = getelementptr inbounds %struct.parser_control, ptr %pc, i64 0, i32 14
  store i8 0, ptr %rels_seen, align 1, !tbaa !160
  %dates_seen = getelementptr inbounds %struct.parser_control, ptr %pc, i64 0, i32 15
  %days_seen = getelementptr inbounds %struct.parser_control, ptr %pc, i64 0, i32 16
  %times_seen = getelementptr inbounds %struct.parser_control, ptr %pc, i64 0, i32 20
  %J_zones_seen = getelementptr inbounds %struct.parser_control, ptr %pc, i64 0, i32 17
  %local_zones_seen = getelementptr inbounds %struct.parser_control, ptr %pc, i64 0, i32 18
  %dsts_seen = getelementptr inbounds %struct.parser_control, ptr %pc, i64 0, i32 19
  %zones_seen = getelementptr inbounds %struct.parser_control, ptr %pc, i64 0, i32 21
  %debug_dates_seen = getelementptr inbounds %struct.parser_control, ptr %pc, i64 0, i32 24
  %local_time_zone_table = getelementptr inbounds %struct.parser_control, ptr %pc, i64 0, i32 31
  store ptr null, ptr %local_time_zone_table, align 8, !tbaa !171
  %21 = getelementptr inbounds i8, ptr %tmp, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(57) %dates_seen, i8 0, i64 57, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(7) %debug_dates_seen, i8 0, i64 7, i1 false)
  %tmp.val1029 = load ptr, ptr %21, align 8, !tbaa !197
  %type.i = getelementptr inbounds %struct.parser_control, ptr %pc, i64 0, i32 31, i64 0, i32 1
  store i32 269, ptr %type.i, align 8, !tbaa !127
  %value.i = getelementptr inbounds %struct.parser_control, ptr %pc, i64 0, i32 31, i64 0, i32 2
  store i32 %20, ptr %value.i, align 4, !tbaa !126
  %22 = load i8, ptr %tmp.val1029, align 1, !tbaa !14
  %tobool6.not.i = icmp eq i8 %22, 0
  %spec.select.i = select i1 %tobool6.not.i, ptr null, ptr %tmp.val1029
  store ptr %spec.select.i, ptr %local_time_zone_table, align 8, !tbaa !171
  %arrayidx9.i = getelementptr inbounds %struct.parser_control, ptr %pc, i64 0, i32 31, i64 1
  store ptr null, ptr %arrayidx9.i, align 8, !tbaa !171
  %tm_isdst108 = getelementptr inbounds %struct.tm, ptr %probe_tm, i64 0, i32 8
  %23 = getelementptr inbounds i8, ptr %probe_tm, i64 48
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %probe) #41
  %24 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %0, i64 7776000)
  %25 = extractvalue { i64, i1 } %24, 1
  %26 = extractvalue { i64, i1 } %24, 0
  store i64 %26, ptr %probe, align 8
  br i1 %25, label %cleanup139.thread, label %if.end100

cleanup139.thread:                                ; preds = %for.inc142.1, %for.inc142, %if.end71
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %probe) #41
  br label %cleanup144

if.end100:                                        ; preds = %if.end71
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %probe_tm) #41
  %call101 = call ptr @localtime_rz(ptr noundef %tz.3, ptr noundef nonnull %probe, ptr noundef nonnull %probe_tm) #41
  %tobool102.not = icmp eq ptr %call101, null
  br i1 %tobool102.not, label %for.inc142, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end100
  %27 = load ptr, ptr %local_time_zone_table, align 8, !tbaa !171
  %tobool106.not = icmp ne ptr %27, null
  %probe_tm.val.pre = load i32, ptr %tm_isdst108, align 8, !tbaa !194
  %28 = load i32, ptr %value.i, align 4
  %cmp112.not = icmp eq i32 %probe_tm.val.pre, %28
  %or.cond1204 = select i1 %tobool106.not, i1 %cmp112.not, i1 false
  br i1 %or.cond1204, label %for.inc142, label %if.then114

if.then114:                                       ; preds = %land.lhs.true
  %probe_tm.val1028 = load ptr, ptr %23, align 8, !tbaa !197
  %tobool.i1035 = icmp ne ptr %27, null
  %idxprom.i1036 = zext i1 %tobool.i1035 to i64
  %type.i1037 = getelementptr inbounds %struct.parser_control, ptr %pc, i64 0, i32 31, i64 %idxprom.i1036, i32 1
  store i32 269, ptr %type.i1037, align 8, !tbaa !127
  %value.i1038 = getelementptr inbounds %struct.parser_control, ptr %pc, i64 0, i32 31, i64 %idxprom.i1036, i32 2
  store i32 %probe_tm.val.pre, ptr %value.i1038, align 4, !tbaa !126
  %29 = load i8, ptr %probe_tm.val1028, align 1, !tbaa !14
  %tobool6.not.i1039 = icmp eq i8 %29, 0
  %spec.select.i1040 = select i1 %tobool6.not.i1039, ptr null, ptr %probe_tm.val1028
  %arrayidx4.i1041 = getelementptr inbounds %struct.parser_control, ptr %pc, i64 0, i32 31, i64 %idxprom.i1036
  store ptr %spec.select.i1040, ptr %arrayidx4.i1041, align 8, !tbaa !171
  %arrayidx9.i1042 = getelementptr inbounds %struct.table, ptr %arrayidx4.i1041, i64 1
  store ptr null, ptr %arrayidx9.i1042, align 8, !tbaa !171
  %30 = load ptr, ptr %arrayidx9.i, align 8, !tbaa !171
  %tobool118.not = icmp eq ptr %30, null
  br i1 %tobool118.not, label %for.inc142, label %if.then119

if.then119:                                       ; preds = %if.then114.2, %if.then114.1, %if.then114
  %.lcssa = phi ptr [ %30, %if.then114 ], [ %38, %if.then114.1 ], [ %45, %if.then114.2 ]
  %31 = load ptr, ptr %local_time_zone_table, align 8, !tbaa !171
  %call126 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %31, ptr noundef nonnull dereferenceable(1) %.lcssa) #42
  %tobool127.not = icmp eq i32 %call126, 0
  br i1 %tobool127.not, label %if.then128, label %cleanup139

if.then128:                                       ; preds = %if.then119
  store i32 -1, ptr %value.i, align 4, !tbaa !126
  store ptr null, ptr %arrayidx9.i, align 8, !tbaa !171
  br label %cleanup139

cleanup139:                                       ; preds = %if.then128, %if.then119
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %probe_tm) #41
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %probe) #41
  br label %cleanup144

for.inc142:                                       ; preds = %if.then114, %land.lhs.true, %if.end100
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %probe_tm) #41
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %probe) #41
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %probe) #41
  %32 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %0, i64 15552000)
  %33 = extractvalue { i64, i1 } %32, 1
  %34 = extractvalue { i64, i1 } %32, 0
  store i64 %34, ptr %probe, align 8
  br i1 %33, label %cleanup139.thread, label %if.end100.1

if.end100.1:                                      ; preds = %for.inc142
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %probe_tm) #41
  %call101.1 = call ptr @localtime_rz(ptr noundef %tz.3, ptr noundef nonnull %probe, ptr noundef nonnull %probe_tm) #41
  %tobool102.not.1 = icmp eq ptr %call101.1, null
  br i1 %tobool102.not.1, label %for.inc142.1, label %land.lhs.true.1

land.lhs.true.1:                                  ; preds = %if.end100.1
  %35 = load ptr, ptr %local_time_zone_table, align 8, !tbaa !171
  %tobool106.not.1 = icmp ne ptr %35, null
  %probe_tm.val.1.pre = load i32, ptr %tm_isdst108, align 8, !tbaa !194
  %36 = load i32, ptr %value.i, align 4
  %cmp112.not.1 = icmp eq i32 %probe_tm.val.1.pre, %36
  %or.cond1205 = select i1 %tobool106.not.1, i1 %cmp112.not.1, i1 false
  br i1 %or.cond1205, label %for.inc142.1, label %if.then114.1

if.then114.1:                                     ; preds = %land.lhs.true.1
  %probe_tm.val1028.1 = load ptr, ptr %23, align 8, !tbaa !197
  %tobool.i1035.1 = icmp ne ptr %35, null
  %idxprom.i1036.1 = zext i1 %tobool.i1035.1 to i64
  %type.i1037.1 = getelementptr inbounds %struct.parser_control, ptr %pc, i64 0, i32 31, i64 %idxprom.i1036.1, i32 1
  store i32 269, ptr %type.i1037.1, align 8, !tbaa !127
  %value.i1038.1 = getelementptr inbounds %struct.parser_control, ptr %pc, i64 0, i32 31, i64 %idxprom.i1036.1, i32 2
  store i32 %probe_tm.val.1.pre, ptr %value.i1038.1, align 4, !tbaa !126
  %37 = load i8, ptr %probe_tm.val1028.1, align 1, !tbaa !14
  %tobool6.not.i1039.1 = icmp eq i8 %37, 0
  %spec.select.i1040.1 = select i1 %tobool6.not.i1039.1, ptr null, ptr %probe_tm.val1028.1
  %arrayidx4.i1041.1 = getelementptr inbounds %struct.parser_control, ptr %pc, i64 0, i32 31, i64 %idxprom.i1036.1
  store ptr %spec.select.i1040.1, ptr %arrayidx4.i1041.1, align 8, !tbaa !171
  %arrayidx9.i1042.1 = getelementptr inbounds %struct.table, ptr %arrayidx4.i1041.1, i64 1
  store ptr null, ptr %arrayidx9.i1042.1, align 8, !tbaa !171
  %38 = load ptr, ptr %arrayidx9.i, align 8, !tbaa !171
  %tobool118.not.1 = icmp eq ptr %38, null
  br i1 %tobool118.not.1, label %for.inc142.1, label %if.then119

for.inc142.1:                                     ; preds = %if.then114.1, %land.lhs.true.1, %if.end100.1
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %probe_tm) #41
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %probe) #41
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %probe) #41
  %39 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %0, i64 23328000)
  %40 = extractvalue { i64, i1 } %39, 1
  %41 = extractvalue { i64, i1 } %39, 0
  store i64 %41, ptr %probe, align 8
  br i1 %40, label %cleanup139.thread, label %if.end100.2

if.end100.2:                                      ; preds = %for.inc142.1
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %probe_tm) #41
  %call101.2 = call ptr @localtime_rz(ptr noundef %tz.3, ptr noundef nonnull %probe, ptr noundef nonnull %probe_tm) #41
  %tobool102.not.2 = icmp eq ptr %call101.2, null
  br i1 %tobool102.not.2, label %for.inc142.2, label %land.lhs.true.2

land.lhs.true.2:                                  ; preds = %if.end100.2
  %42 = load ptr, ptr %local_time_zone_table, align 8, !tbaa !171
  %tobool106.not.2 = icmp ne ptr %42, null
  %probe_tm.val.2.pre = load i32, ptr %tm_isdst108, align 8, !tbaa !194
  %43 = load i32, ptr %value.i, align 4
  %cmp112.not.2 = icmp eq i32 %probe_tm.val.2.pre, %43
  %or.cond1206 = select i1 %tobool106.not.2, i1 %cmp112.not.2, i1 false
  br i1 %or.cond1206, label %for.inc142.2, label %if.then114.2

if.then114.2:                                     ; preds = %land.lhs.true.2
  %probe_tm.val1028.2 = load ptr, ptr %23, align 8, !tbaa !197
  %tobool.i1035.2 = icmp ne ptr %42, null
  %idxprom.i1036.2 = zext i1 %tobool.i1035.2 to i64
  %type.i1037.2 = getelementptr inbounds %struct.parser_control, ptr %pc, i64 0, i32 31, i64 %idxprom.i1036.2, i32 1
  store i32 269, ptr %type.i1037.2, align 8, !tbaa !127
  %value.i1038.2 = getelementptr inbounds %struct.parser_control, ptr %pc, i64 0, i32 31, i64 %idxprom.i1036.2, i32 2
  store i32 %probe_tm.val.2.pre, ptr %value.i1038.2, align 4, !tbaa !126
  %44 = load i8, ptr %probe_tm.val1028.2, align 1, !tbaa !14
  %tobool6.not.i1039.2 = icmp eq i8 %44, 0
  %spec.select.i1040.2 = select i1 %tobool6.not.i1039.2, ptr null, ptr %probe_tm.val1028.2
  %arrayidx4.i1041.2 = getelementptr inbounds %struct.parser_control, ptr %pc, i64 0, i32 31, i64 %idxprom.i1036.2
  store ptr %spec.select.i1040.2, ptr %arrayidx4.i1041.2, align 8, !tbaa !171
  %arrayidx9.i1042.2 = getelementptr inbounds %struct.table, ptr %arrayidx4.i1041.2, i64 1
  store ptr null, ptr %arrayidx9.i1042.2, align 8, !tbaa !171
  %45 = load ptr, ptr %arrayidx9.i, align 8, !tbaa !171
  %tobool118.not.2 = icmp eq ptr %45, null
  br i1 %tobool118.not.2, label %for.inc142.2, label %if.then119

for.inc142.2:                                     ; preds = %if.then114.2, %land.lhs.true.2, %if.end100.2
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %probe_tm) #41
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %probe) #41
  br label %cleanup144

cleanup144:                                       ; preds = %for.inc142.2, %cleanup139, %cleanup139.thread
  %call146 = call i32 @yyparse(ptr noundef nonnull %pc)
  %cmp147.not = icmp eq i32 %call146, 0
  %pc.val1026 = load i8, ptr %parse_datetime_debug, align 1, !tbaa !125, !range !56, !noundef !57
  %tobool.i1044.not = icmp eq i8 %pc.val1026, 0
  br i1 %cmp147.not, label %if.end159, label %if.then149

if.then149:                                       ; preds = %cleanup144
  br i1 %tobool.i1044.not, label %fail, label %if.then151

if.then151:                                       ; preds = %if.then149
  %46 = load ptr, ptr %pc, align 8, !tbaa !111
  %cmp153.not = icmp ugt ptr %add.ptr, %46
  %.str.187..str.186 = select i1 %cmp153.not, ptr @.str.187, ptr @.str.186
  %call156 = call ptr @dcgettext(ptr noundef nonnull @.str.117, ptr noundef nonnull %.str.187..str.186, i32 noundef 5) #41
  %47 = load ptr, ptr %pc, align 8, !tbaa !111
  call void (ptr, ...) @dbg_printf(ptr noundef %call156, ptr noundef %47)
  br label %fail

if.end159:                                        ; preds = %cleanup144
  br i1 %tobool.i1044.not, label %if.end219, label %if.then161

if.then161:                                       ; preds = %if.end159
  %call162 = call ptr @dcgettext(ptr noundef nonnull @.str.117, ptr noundef nonnull @.str.188, i32 noundef 5) #41
  %48 = load ptr, ptr @stderr, align 8, !tbaa !5
  %49 = call i64 @fwrite(ptr nonnull @.str.46, i64 6, i64 1, ptr %48) #49
  %50 = load ptr, ptr @stderr, align 8, !tbaa !5
  %call.i = call i32 @fputs(ptr noundef %call162, ptr noundef %50) #49
  %51 = load i8, ptr %timespec_seen, align 8, !tbaa !139, !range !56, !noundef !57
  %tobool164.not = icmp eq i8 %51, 0
  br i1 %tobool164.not, label %if.else168, label %if.then165

if.then165:                                       ; preds = %if.then161
  %call166 = call ptr @dcgettext(ptr noundef nonnull @.str.117, ptr noundef nonnull @.str.189, i32 noundef 5) #41
  %52 = load ptr, ptr @stderr, align 8, !tbaa !5
  %call167 = call i32 @fputs(ptr noundef %call166, ptr noundef %52) #49
  br label %if.end199

if.else168:                                       ; preds = %if.then161
  %53 = load i64, ptr %zones_seen, align 8, !tbaa !144
  %tobool170.not = icmp eq i64 %53, 0
  br i1 %tobool170.not, label %if.else174, label %if.then171

if.then171:                                       ; preds = %if.else168
  %call172 = call ptr @dcgettext(ptr noundef nonnull @.str.117, ptr noundef nonnull @.str.190, i32 noundef 5) #41
  %54 = load ptr, ptr @stderr, align 8, !tbaa !5
  %call173 = call i32 @fputs(ptr noundef %call172, ptr noundef %54) #49
  br label %if.end199

if.else174:                                       ; preds = %if.else168
  %tobool175.not = icmp eq ptr %tzstring.addr.3, null
  br i1 %tobool175.not, label %if.else194, label %if.then176

if.then176:                                       ; preds = %if.else174
  %cmp177.not = icmp eq ptr %tz.3, %tzdefault
  br i1 %cmp177.not, label %if.else182, label %if.then179

if.then179:                                       ; preds = %if.then176
  %55 = load ptr, ptr @stderr, align 8, !tbaa !5
  %call180 = call ptr @dcgettext(ptr noundef nonnull @.str.117, ptr noundef nonnull @.str.191, i32 noundef 5) #41
  %call181 = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %55, i32 noundef 1, ptr noundef %call180, ptr noundef nonnull %tzstring.addr.3) #41
  br label %if.end199

if.else182:                                       ; preds = %if.then176
  %call183 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %tzstring.addr.3, ptr noundef nonnull dereferenceable(5) @.str.192) #42
  %cmp184 = icmp eq i32 %call183, 0
  br i1 %cmp184, label %if.then186, label %if.else189

if.then186:                                       ; preds = %if.else182
  %call187 = call ptr @dcgettext(ptr noundef nonnull @.str.117, ptr noundef nonnull @.str.193, i32 noundef 5) #41
  %56 = load ptr, ptr @stderr, align 8, !tbaa !5
  %call188 = call i32 @fputs(ptr noundef %call187, ptr noundef %56) #49
  br label %if.end199

if.else189:                                       ; preds = %if.else182
  %57 = load ptr, ptr @stderr, align 8, !tbaa !5
  %call190 = call ptr @dcgettext(ptr noundef nonnull @.str.117, ptr noundef nonnull @.str.194, i32 noundef 5) #41
  %call191 = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %57, i32 noundef 1, ptr noundef %call190, ptr noundef nonnull %tzstring.addr.3) #41
  br label %if.end199

if.else194:                                       ; preds = %if.else174
  %call195 = call ptr @dcgettext(ptr noundef nonnull @.str.117, ptr noundef nonnull @.str.195, i32 noundef 5) #41
  %58 = load ptr, ptr @stderr, align 8, !tbaa !5
  %call196 = call i32 @fputs(ptr noundef %call195, ptr noundef %58) #49
  br label %if.end199

if.end199:                                        ; preds = %if.else194, %if.else189, %if.then186, %if.then179, %if.then171, %if.then165
  %59 = load i64, ptr %local_zones_seen, align 8, !tbaa !142
  %tobool201 = icmp ne i64 %59, 0
  %60 = load i64, ptr %zones_seen, align 8
  %tobool204 = icmp eq i64 %60, 0
  %or.cond.not997 = select i1 %tobool201, i1 %tobool204, i1 false
  %local_isdst = getelementptr inbounds %struct.parser_control, ptr %pc, i64 0, i32 3
  %61 = load i32, ptr %local_isdst, align 4
  %cmp206 = icmp sgt i32 %61, 0
  %or.cond898 = select i1 %or.cond.not997, i1 %cmp206, i1 false
  br i1 %or.cond898, label %if.then208, label %if.end210

if.then208:                                       ; preds = %if.end199
  %62 = load ptr, ptr @stderr, align 8, !tbaa !5
  %63 = call i64 @fwrite(ptr nonnull @.str.196, i64 5, i64 1, ptr %62) #49
  %.pre = load i64, ptr %zones_seen, align 8, !tbaa !144
  br label %if.end210

if.end210:                                        ; preds = %if.then208, %if.end199
  %64 = phi i64 [ %.pre, %if.then208 ], [ %60, %if.end199 ]
  %tobool212.not = icmp eq i64 %64, 0
  br i1 %tobool212.not, label %if.end217, label %if.then213

if.then213:                                       ; preds = %if.end210
  %65 = load ptr, ptr @stderr, align 8, !tbaa !5
  %time_zone = getelementptr inbounds %struct.parser_control, ptr %pc, i64 0, i32 4
  %66 = load i32, ptr %time_zone, align 8, !tbaa !150
  %cmp.i = icmp slt i32 %66, 0
  %div.i = sdiv i32 %66, 3600
  %67 = call i32 @llvm.abs.i32(i32 %div.i, i1 true)
  %conv1.i = select i1 %cmp.i, i32 45, i32 43
  %call.i1045 = call i32 (ptr, i32, i64, ptr, ...) @__sprintf_chk(ptr noundef nonnull %time_zone_buf, i32 noundef 1, i64 noundef 27, ptr noundef nonnull @.str.36, i32 noundef %conv1.i, i32 noundef %67) #41
  %rem.i = srem i32 %66, 3600
  %cmp2.not.i = icmp eq i32 %rem.i, 0
  br i1 %cmp2.not.i, label %time_zone_str.exit, label %if.then.i

if.then.i:                                        ; preds = %if.then213
  %68 = call i32 @llvm.abs.i32(i32 %rem.i, i1 true)
  %idx.ext.i = sext i32 %call.i1045 to i64
  %add.ptr.i = getelementptr inbounds i8, ptr %time_zone_buf, i64 %idx.ext.i
  %div4.lhs.trunc.i = trunc i32 %68 to i16
  %div441.i = udiv i16 %div4.lhs.trunc.i, 60
  %rem542.i = urem i16 %div4.lhs.trunc.i, 60
  %incdec.ptr.i = getelementptr inbounds i8, ptr %add.ptr.i, i64 1
  store i8 58, ptr %add.ptr.i, align 1, !tbaa !14
  %div643.i = udiv i16 %div4.lhs.trunc.i, 600
  %69 = trunc i16 %div643.i to i8
  %conv7.i = add nuw nsw i8 %69, 48
  %incdec.ptr8.i = getelementptr inbounds i8, ptr %add.ptr.i, i64 2
  store i8 %conv7.i, ptr %incdec.ptr.i, align 1, !tbaa !14
  %rem9.lhs.trunc.i = trunc i16 %div441.i to i8
  %rem944.i = urem i8 %rem9.lhs.trunc.i, 10
  %conv11.i = or disjoint i8 %rem944.i, 48
  %incdec.ptr12.i = getelementptr inbounds i8, ptr %add.ptr.i, i64 3
  store i8 %conv11.i, ptr %incdec.ptr8.i, align 1, !tbaa !14
  %tobool.not.i = icmp eq i16 %rem542.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then13.i

if.then13.i:                                      ; preds = %if.then.i
  %incdec.ptr14.i = getelementptr inbounds i8, ptr %add.ptr.i, i64 4
  store i8 58, ptr %incdec.ptr12.i, align 1, !tbaa !14
  %div15.lhs.trunc.i = trunc i16 %rem542.i to i8
  %div1545.i = udiv i8 %div15.lhs.trunc.i, 10
  %conv17.i = or disjoint i8 %div1545.i, 48
  %incdec.ptr18.i = getelementptr inbounds i8, ptr %add.ptr.i, i64 5
  store i8 %conv17.i, ptr %incdec.ptr14.i, align 1, !tbaa !14
  %rem1946.i = urem i8 %div15.lhs.trunc.i, 10
  %conv21.i = or disjoint i8 %rem1946.i, 48
  %incdec.ptr22.i = getelementptr inbounds i8, ptr %add.ptr.i, i64 6
  store i8 %conv21.i, ptr %incdec.ptr18.i, align 1, !tbaa !14
  br label %if.end.i

if.end.i:                                         ; preds = %if.then13.i, %if.then.i
  %p.0.i = phi ptr [ %incdec.ptr22.i, %if.then13.i ], [ %incdec.ptr12.i, %if.then.i ]
  store i8 0, ptr %p.0.i, align 1, !tbaa !14
  br label %time_zone_str.exit

time_zone_str.exit:                               ; preds = %if.end.i, %if.then213
  %call216 = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %65, i32 noundef 1, ptr noundef nonnull @.str.197, ptr noundef nonnull %time_zone_buf) #41
  br label %if.end217

if.end217:                                        ; preds = %time_zone_str.exit, %if.end210
  %70 = load ptr, ptr @stderr, align 8, !tbaa !5
  %call218 = call i32 @fputc(i32 noundef 10, ptr noundef %70)
  br label %if.end219

if.end219:                                        ; preds = %if.end217, %if.end159
  %71 = load i8, ptr %timespec_seen, align 8, !tbaa !139, !range !56, !noundef !57
  %tobool221.not = icmp eq i8 %71, 0
  br i1 %tobool221.not, label %if.else224, label %if.then222

if.then222:                                       ; preds = %if.end219
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %result, ptr noundef nonnull align 8 dereferenceable(16) %seconds, i64 16, i1 false), !tbaa !137, !tbaa.struct !138
  br label %if.end817

if.else224:                                       ; preds = %if.end219
  %72 = load i64, ptr %times_seen, align 8, !tbaa !140
  %73 = load i64, ptr %dates_seen, align 8, !tbaa !141
  %74 = load i64, ptr %days_seen, align 8, !tbaa !145
  %75 = load i64, ptr %dsts_seen, align 8, !tbaa !152
  %76 = load i64, ptr %J_zones_seen, align 8, !tbaa !143
  %77 = load i64, ptr %local_zones_seen, align 8, !tbaa !142
  %add233 = add nsw i64 %77, %76
  %78 = load i64, ptr %zones_seen, align 8, !tbaa !144
  %add235 = add nsw i64 %add233, %78
  %79 = or i64 %74, %75
  %80 = or i64 %79, %add235
  %81 = or i64 %80, %73
  %or236 = or i64 %81, %72
  %cmp237 = icmp sgt i64 %or236, 1
  %pc.val1025 = load i8, ptr %parse_datetime_debug, align 1, !tbaa !125, !range !56, !noundef !57
  %tobool.i1046.not = icmp eq i8 %pc.val1025, 0
  br i1 %cmp237, label %if.then239, label %if.end277

if.then239:                                       ; preds = %if.else224
  br i1 %tobool.i1046.not, label %fail, label %if.then241

if.then241:                                       ; preds = %if.then239
  %cmp243 = icmp sgt i64 %72, 1
  br i1 %cmp243, label %if.then245, label %if.end247

if.then245:                                       ; preds = %if.then241
  %call246 = call ptr @dcgettext(ptr noundef nonnull @.str.117, ptr noundef nonnull @.str.198, i32 noundef 5) #41
  call fastcc void @dbg_fputs(ptr noundef %call246)
  %.pre1199 = load i64, ptr %dates_seen, align 8, !tbaa !141
  br label %if.end247

if.end247:                                        ; preds = %if.then245, %if.then241
  %82 = phi i64 [ %.pre1199, %if.then245 ], [ %73, %if.then241 ]
  %cmp249 = icmp sgt i64 %82, 1
  br i1 %cmp249, label %if.then251, label %if.end253

if.then251:                                       ; preds = %if.end247
  %call252 = call ptr @dcgettext(ptr noundef nonnull @.str.117, ptr noundef nonnull @.str.199, i32 noundef 5) #41
  call fastcc void @dbg_fputs(ptr noundef %call252)
  br label %if.end253

if.end253:                                        ; preds = %if.then251, %if.end247
  %83 = load i64, ptr %days_seen, align 8, !tbaa !145
  %cmp255 = icmp sgt i64 %83, 1
  br i1 %cmp255, label %if.then257, label %if.end259

if.then257:                                       ; preds = %if.end253
  %call258 = call ptr @dcgettext(ptr noundef nonnull @.str.117, ptr noundef nonnull @.str.200, i32 noundef 5) #41
  call fastcc void @dbg_fputs(ptr noundef %call258)
  br label %if.end259

if.end259:                                        ; preds = %if.then257, %if.end253
  %84 = load i64, ptr %dsts_seen, align 8, !tbaa !152
  %cmp261 = icmp sgt i64 %84, 1
  br i1 %cmp261, label %if.then263, label %if.end265

if.then263:                                       ; preds = %if.end259
  %call264 = call ptr @dcgettext(ptr noundef nonnull @.str.117, ptr noundef nonnull @.str.201, i32 noundef 5) #41
  call fastcc void @dbg_fputs(ptr noundef %call264)
  br label %if.end265

if.end265:                                        ; preds = %if.then263, %if.end259
  %85 = load i64, ptr %J_zones_seen, align 8, !tbaa !143
  %86 = load i64, ptr %local_zones_seen, align 8, !tbaa !142
  %add268 = add nsw i64 %86, %85
  %87 = load i64, ptr %zones_seen, align 8, !tbaa !144
  %add270 = add nsw i64 %add268, %87
  %cmp271 = icmp sgt i64 %add270, 1
  br i1 %cmp271, label %if.then273, label %fail

if.then273:                                       ; preds = %if.end265
  %call274 = call ptr @dcgettext(ptr noundef nonnull @.str.117, ptr noundef nonnull @.str.202, i32 noundef 5) #41
  call fastcc void @dbg_fputs(ptr noundef %call274)
  br label %fail

if.end277:                                        ; preds = %if.else224
  %tm_year280 = getelementptr inbounds %struct.tm, ptr %tm, i64 0, i32 5
  %year.val = load i64, ptr %value, align 8, !tbaa !198
  %year.val1030 = load i64, ptr %digits, align 8
  %cmp.i1048 = icmp sgt i64 %year.val, -1
  %cmp1.i = icmp eq i64 %year.val1030, 2
  %or.cond.i = select i1 %cmp.i1048, i1 %cmp1.i, i1 false
  br i1 %or.cond.i, label %if.then.i1050, label %if.end5.i

if.then.i1050:                                    ; preds = %if.end277
  %cmp2.i = icmp ult i64 %year.val, 69
  %conv.i = select i1 %cmp2.i, i64 2000, i64 1900
  %add.i = add nuw nsw i64 %conv.i, %year.val
  br i1 %tobool.i1046.not, label %cond.false.thread.i, label %if.then3.i

cond.false.thread.i:                              ; preds = %if.then.i1050
  %88 = trunc i64 %add.i to i32
  %89 = add i32 %88, -1900
  %90 = icmp ult i64 %add.i, 2147485548
  store i32 %89, ptr %tm_year280, align 4
  br i1 %90, label %lor.lhs.false282, label %if.then290

if.then3.i:                                       ; preds = %if.then.i1050
  %call.i1051 = call ptr @dcgettext(ptr noundef nonnull @.str.117, ptr noundef nonnull @.str.240, i32 noundef 5) #41
  call void (ptr, ...) @dbg_printf(ptr noundef %call.i1051, i64 noundef %year.val, i64 noundef %add.i)
  br label %cond.false.i

if.end5.i:                                        ; preds = %if.end277
  %cmp6.i = icmp slt i64 %year.val, 0
  br i1 %cmp6.i, label %cond.true.i, label %cond.false.i

cond.true.i:                                      ; preds = %if.end5.i
  %91 = trunc i64 %year.val to i32
  %92 = sub i32 -1900, %91
  %93 = add nsw i64 %year.val, 2147485547
  %94 = icmp ult i64 %93, 4294967296
  store i32 %92, ptr %tm_year280, align 4
  %brmerge27.i = or i1 %tobool.i1046.not, %94
  br i1 %brmerge27.i, label %to_tm_year.exit, label %to_tm_year.exit.thread

cond.false.i:                                     ; preds = %if.end5.i, %if.then3.i
  %year.04.i = phi i64 [ %year.val, %if.end5.i ], [ %add.i, %if.then3.i ]
  %95 = trunc i64 %year.04.i to i32
  %96 = add i32 %95, -1900
  %97 = icmp ult i64 %year.04.i, 2147485548
  store i32 %96, ptr %tm_year280, align 4
  %brmerge.i = or i1 %tobool.i1046.not, %97
  br i1 %brmerge.i, label %to_tm_year.exit, label %to_tm_year.exit.thread

to_tm_year.exit.thread:                           ; preds = %cond.false.i, %cond.true.i
  %year.03.i = phi i64 [ %year.val, %cond.true.i ], [ %year.04.i, %cond.false.i ]
  %call13.i = call ptr @dcgettext(ptr noundef nonnull @.str.117, ptr noundef nonnull @.str.241, i32 noundef 5) #41
  call void (ptr, ...) @dbg_printf(ptr noundef %call13.i, i64 noundef %year.03.i)
  br label %if.then290

to_tm_year.exit:                                  ; preds = %cond.false.i, %cond.true.i
  %retval.0.i1049 = phi i1 [ %97, %cond.false.i ], [ %94, %cond.true.i ]
  br i1 %retval.0.i1049, label %lor.lhs.false282, label %if.then290

lor.lhs.false282:                                 ; preds = %to_tm_year.exit, %cond.false.thread.i
  %98 = load i64, ptr %month, align 8, !tbaa !164
  %tm_mon284 = getelementptr inbounds %struct.tm, ptr %tm, i64 0, i32 4
  %99 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %98, i64 -1)
  %100 = extractvalue { i64, i1 } %99, 1
  %101 = extractvalue { i64, i1 } %99, 0
  %102 = trunc i64 %101 to i32
  %103 = add i64 %101, -2147483648
  %104 = icmp ult i64 %103, -4294967296
  %105 = or i1 %100, %104
  store i32 %102, ptr %tm_mon284, align 16
  br i1 %105, label %if.then290, label %lor.lhs.false286

lor.lhs.false286:                                 ; preds = %lor.lhs.false282
  %106 = load i64, ptr %day, align 8, !tbaa !165
  %tm_mday288 = getelementptr inbounds %struct.tm, ptr %tm, i64 0, i32 3
  %107 = trunc i64 %106 to i32
  %108 = add i64 %106, -2147483648
  %109 = icmp ult i64 %108, -4294967296
  store i32 %107, ptr %tm_mday288, align 4
  br i1 %109, label %if.then290, label %if.end295

if.then290:                                       ; preds = %lor.lhs.false286, %lor.lhs.false282, %to_tm_year.exit, %to_tm_year.exit.thread, %cond.false.thread.i
  %pc.val1023 = load i8, ptr %parse_datetime_debug, align 1, !tbaa !125, !range !56, !noundef !57
  %tobool.i1052.not = icmp eq i8 %pc.val1023, 0
  br i1 %tobool.i1052.not, label %fail, label %if.then292

if.then292:                                       ; preds = %if.then290
  %call293 = call ptr @dcgettext(ptr noundef nonnull @.str.117, ptr noundef nonnull @.str.203, i32 noundef 5) #41
  call fastcc void @dbg_fputs(ptr noundef %call293)
  br label %fail

if.end295:                                        ; preds = %lor.lhs.false286
  %110 = load i64, ptr %times_seen, align 8, !tbaa !140
  %tobool297.not = icmp eq i64 %110, 0
  br i1 %tobool297.not, label %lor.lhs.false298, label %if.then308

lor.lhs.false298:                                 ; preds = %if.end295
  %111 = load i8, ptr %rels_seen, align 1, !tbaa !160, !range !56, !noundef !57
  %tobool300.not1000 = icmp eq i8 %111, 0
  %112 = load i64, ptr %dates_seen, align 8
  %tobool304 = icmp ne i64 %112, 0
  %or.cond899 = select i1 %tobool300.not1000, i1 true, i1 %tobool304
  %113 = load i64, ptr %days_seen, align 8
  %tobool307 = icmp ne i64 %113, 0
  %or.cond900 = select i1 %or.cond899, i1 true, i1 %tobool307
  br i1 %or.cond900, label %if.else355, label %if.then308

if.then308:                                       ; preds = %lor.lhs.false298, %if.end295
  %114 = load i64, ptr %hour, align 8, !tbaa !146
  %115 = load i32, ptr %meridian, align 4, !tbaa !147
  %call311 = call fastcc i32 @to_hour(i64 noundef %114, i32 noundef %115)
  %tm_hour312 = getelementptr inbounds %struct.tm, ptr %tm, i64 0, i32 2
  store i32 %call311, ptr %tm_hour312, align 8, !tbaa !191
  %cmp314 = icmp slt i32 %call311, 0
  br i1 %cmp314, label %if.then316, label %if.end334

if.then316:                                       ; preds = %if.then308
  %pc.val1022 = load i8, ptr %parse_datetime_debug, align 1, !tbaa !125, !range !56, !noundef !57
  %tobool.i1053.not = icmp eq i8 %pc.val1022, 0
  br i1 %tobool.i1053.not, label %fail, label %if.then329

if.then329:                                       ; preds = %if.then316
  %cmp318 = icmp eq i32 %115, 0
  %cmp323 = icmp eq i32 %115, 1
  %cond325 = select i1 %cmp323, ptr @.str.26, ptr @.str.30.141
  %cond327 = select i1 %cmp318, ptr @.str.204, ptr %cond325
  %call330 = call ptr @dcgettext(ptr noundef nonnull @.str.117, ptr noundef nonnull @.str.205, i32 noundef 5) #41
  %116 = load i64, ptr %hour, align 8, !tbaa !146
  call void (ptr, ...) @dbg_printf(ptr noundef %call330, i64 noundef %116, ptr noundef nonnull %cond327)
  br label %fail

if.end334:                                        ; preds = %if.then308
  %117 = load i64, ptr %minutes, align 8, !tbaa !148
  %conv336 = trunc i64 %117 to i32
  %tm_min337 = getelementptr inbounds %struct.tm, ptr %tm, i64 0, i32 1
  store i32 %conv336, ptr %tm_min337, align 4, !tbaa !192
  %118 = load i64, ptr %seconds, align 8, !tbaa !176
  %conv340 = trunc i64 %118 to i32
  store i32 %conv340, ptr %tm, align 16, !tbaa !193
  %pc.val1021 = load i8, ptr %parse_datetime_debug, align 1, !tbaa !125, !range !56, !noundef !57
  %tobool.i1054.not = icmp eq i8 %pc.val1021, 0
  br i1 %tobool.i1054.not, label %if.end365, label %if.then343

if.then343:                                       ; preds = %if.end334
  %.str.207..str.206 = select i1 %tobool297.not, ptr @.str.207, ptr @.str.206
  %call349 = call ptr @dcgettext(ptr noundef nonnull @.str.117, ptr noundef nonnull %.str.207..str.206, i32 noundef 5) #41
  %119 = load i32, ptr %tm_hour312, align 8, !tbaa !191
  %120 = load i32, ptr %tm_min337, align 4, !tbaa !192
  %121 = load i32, ptr %tm, align 16, !tbaa !193
  %call.i1055 = call i32 (ptr, i64, i32, i64, ptr, ...) @__snprintf_chk(ptr noundef nonnull %dbg_tm, i64 noundef 100, i32 noundef 1, i64 noundef 100, ptr noundef nonnull @.str.242, i32 noundef %119, i32 noundef %120, i32 noundef %121) #41
  call void (ptr, ...) @dbg_printf(ptr noundef %call349, ptr noundef nonnull %dbg_tm)
  br label %if.end365

if.else355:                                       ; preds = %lor.lhs.false298
  store i32 0, ptr %tm, align 16, !tbaa !193
  %tm_min357 = getelementptr inbounds %struct.tm, ptr %tm, i64 0, i32 1
  store i32 0, ptr %tm_min357, align 4, !tbaa !192
  %tm_hour358 = getelementptr inbounds %struct.tm, ptr %tm, i64 0, i32 2
  store i32 0, ptr %tm_hour358, align 8, !tbaa !191
  store i64 0, ptr %.compoundliteral.sroa.2.0.seconds.sroa_idx, align 8, !tbaa !177
  %pc.val1020 = load i8, ptr %parse_datetime_debug, align 1, !tbaa !125, !range !56, !noundef !57
  %tobool.i1056.not = icmp eq i8 %pc.val1020, 0
  br i1 %tobool.i1056.not, label %if.end365, label %if.then362

if.then362:                                       ; preds = %if.else355
  %call363 = call ptr @dcgettext(ptr noundef nonnull @.str.117, ptr noundef nonnull @.str.208, i32 noundef 5) #41
  call void (ptr, ...) @dbg_printf(ptr noundef %call363, ptr noundef nonnull @.str.209)
  br label %if.end365

if.end365:                                        ; preds = %if.then362, %if.else355, %if.then343, %if.end334
  %122 = load i64, ptr %dates_seen, align 8, !tbaa !141
  %123 = load i64, ptr %days_seen, align 8, !tbaa !145
  %or368 = or i64 %123, %122
  %124 = load i64, ptr %times_seen, align 8, !tbaa !140
  %or370 = or i64 %or368, %124
  %tobool371.not = icmp eq i64 %or370, 0
  br i1 %tobool371.not, label %if.end374, label %if.then372

if.then372:                                       ; preds = %if.end365
  store i32 -1, ptr %tm_isdst94, align 16, !tbaa !194
  br label %if.end374

if.end374:                                        ; preds = %if.then372, %if.end365
  %125 = load i64, ptr %local_zones_seen, align 8, !tbaa !142
  %tobool376.not = icmp eq i64 %125, 0
  br i1 %tobool376.not, label %if.end374.if.end380_crit_edge, label %if.then377

if.end374.if.end380_crit_edge:                    ; preds = %if.end374
  %.pre1194 = load i32, ptr %tm_isdst94, align 16, !tbaa !194
  br label %if.end380

if.then377:                                       ; preds = %if.end374
  %local_isdst378 = getelementptr inbounds %struct.parser_control, ptr %pc, i64 0, i32 3
  %126 = load i32, ptr %local_isdst378, align 4, !tbaa !151
  store i32 %126, ptr %tm_isdst94, align 16, !tbaa !194
  br label %if.end380

if.end380:                                        ; preds = %if.then377, %if.end374.if.end380_crit_edge
  %127 = phi i32 [ %.pre1194, %if.end374.if.end380_crit_edge ], [ %126, %if.then377 ]
  %tm_min383 = getelementptr inbounds %struct.tm, ptr %tm, i64 0, i32 1
  %tm_hour385 = getelementptr inbounds %struct.tm, ptr %tm, i64 0, i32 2
  %128 = load <4 x i32>, ptr %tm, align 16, !tbaa !199
  store <4 x i32> %128, ptr %tm0, align 16, !tbaa !199
  %129 = load i32, ptr %tm_mon284, align 16, !tbaa !189
  %tm_mon390 = getelementptr inbounds %struct.tm, ptr %tm0, i64 0, i32 4
  store i32 %129, ptr %tm_mon390, align 16, !tbaa !189
  %130 = load i32, ptr %tm_year280, align 4, !tbaa !187
  %tm_year392 = getelementptr inbounds %struct.tm, ptr %tm0, i64 0, i32 5
  store i32 %130, ptr %tm_year392, align 4, !tbaa !187
  %tm_isdst394 = getelementptr inbounds %struct.tm, ptr %tm0, i64 0, i32 8
  store i32 %127, ptr %tm_isdst394, align 16, !tbaa !194
  %tm_wday = getelementptr inbounds %struct.tm, ptr %tm, i64 0, i32 6
  store i32 -1, ptr %tm_wday, align 8, !tbaa !200
  %call395 = call i64 @mktime_z(ptr noundef %tz.3, ptr noundef nonnull %tm) #41
  %131 = load i32, ptr %tm_wday, align 8, !tbaa !200
  %cmp.i1057 = icmp slt i32 %131, 0
  br i1 %cmp.i1057, label %if.then397, label %mktime_ok.exit

mktime_ok.exit:                                   ; preds = %if.end380
  %132 = load i32, ptr %tm_mon284, align 16, !tbaa !189
  %133 = load i32, ptr %tm_year280, align 4, !tbaa !187
  %134 = load <4 x i32>, ptr %tm, align 16, !tbaa !199
  %135 = icmp eq i32 %129, %132
  %136 = icmp eq i32 %130, %133
  %137 = icmp ne <4 x i32> %128, %134
  %138 = bitcast <4 x i1> %137 to i4
  %139 = icmp eq i4 %138, 0
  %op.rdx1210 = and i1 %139, %135
  %op.rdx1211 = and i1 %op.rdx1210, %136
  br i1 %op.rdx1211, label %if.end451, label %if.then397

if.then397:                                       ; preds = %mktime_ok.exit, %if.end380
  %140 = load i64, ptr %zones_seen, align 8, !tbaa !144
  %cmp399 = icmp ne i64 %140, 0
  br i1 %cmp399, label %if.then403, label %if.then444

if.then403:                                       ; preds = %if.then397
  call void @llvm.lifetime.start.p0(i64 30, ptr nonnull %tz2buf) #41
  %arrayidx404 = getelementptr inbounds [30 x i8], ptr %tz2buf, i64 0, i64 2
  store i8 88, ptr %arrayidx404, align 2, !tbaa !14
  %arrayidx405 = getelementptr inbounds [30 x i8], ptr %tz2buf, i64 0, i64 1
  store i8 88, ptr %arrayidx405, align 1, !tbaa !14
  store i8 88, ptr %tz2buf, align 16, !tbaa !14
  %time_zone407 = getelementptr inbounds %struct.parser_control, ptr %pc, i64 0, i32 4
  %141 = load i32, ptr %time_zone407, align 8, !tbaa !150
  %arrayidx408 = getelementptr inbounds [30 x i8], ptr %tz2buf, i64 0, i64 3
  %call409 = call fastcc ptr @time_zone_str(i32 noundef %141, ptr noundef nonnull %arrayidx408)
  %call411 = call ptr @tzalloc(ptr noundef nonnull %tz2buf) #41
  %tobool412.not.not = icmp eq ptr %call411, null
  br i1 %tobool412.not.not, label %if.then413, label %if.end419

if.then413:                                       ; preds = %if.then403
  %pc.val1019 = load i8, ptr %parse_datetime_debug, align 1, !tbaa !125, !range !56, !noundef !57
  %tobool.i1063.not = icmp eq i8 %pc.val1019, 0
  br i1 %tobool.i1063.not, label %cleanup438.thread, label %if.then415

if.then415:                                       ; preds = %if.then413
  %call416 = call ptr @dcgettext(ptr noundef nonnull @.str.117, ptr noundef nonnull @.str.210, i32 noundef 5) #41
  call void (ptr, ...) @dbg_printf(ptr noundef %call416, ptr noundef nonnull %tz2buf)
  br label %cleanup438.thread

if.end419:                                        ; preds = %if.then403
  store <4 x i32> %128, ptr %tm, align 16, !tbaa !199
  store i32 %129, ptr %tm_mon284, align 16, !tbaa !189
  store i32 %130, ptr %tm_year280, align 4, !tbaa !187
  store i32 %127, ptr %tm_isdst94, align 16, !tbaa !194
  store i32 -1, ptr %tm_wday, align 8, !tbaa !200
  %call435 = call i64 @mktime_z(ptr noundef nonnull %call411, ptr noundef nonnull %tm) #41
  %142 = load i32, ptr %tm_wday, align 8, !tbaa !200
  %cmp.i1065 = icmp slt i32 %142, 0
  br i1 %cmp.i1065, label %if.end442.thread1162, label %if.end442

if.end442.thread1162:                             ; preds = %if.end419
  call void @tzfree(ptr noundef nonnull %call411) #41
  call void @llvm.lifetime.end.p0(i64 30, ptr nonnull %tz2buf) #41
  br label %if.then444

cleanup438.thread:                                ; preds = %if.then415, %if.then413
  call void @llvm.lifetime.end.p0(i64 30, ptr nonnull %tz2buf) #41
  br label %fail

if.end442:                                        ; preds = %if.end419
  %143 = load i32, ptr %tm_mon284, align 16, !tbaa !189
  %144 = load i32, ptr %tm_year280, align 4, !tbaa !187
  %145 = load <4 x i32>, ptr %tm, align 16, !tbaa !199
  %146 = icmp eq i32 %129, %143
  %147 = icmp eq i32 %130, %144
  %148 = icmp ne <4 x i32> %128, %145
  %149 = bitcast <4 x i1> %148 to i4
  %150 = icmp eq i4 %149, 0
  %op.rdx = and i1 %150, %146
  %op.rdx1209 = and i1 %op.rdx, %147
  call void @tzfree(ptr noundef nonnull %call411) #41
  call void @llvm.lifetime.end.p0(i64 30, ptr nonnull %tz2buf) #41
  br i1 %op.rdx1209, label %if.end451, label %if.then444

if.then444:                                       ; preds = %if.end442, %if.end442.thread1162, %if.then397
  call fastcc void @debug_mktime_not_ok(ptr noundef nonnull %tm0, ptr noundef nonnull %tm, ptr noundef nonnull %pc, i1 noundef zeroext %cmp399)
  br label %fail

if.end451:                                        ; preds = %if.end442, %mktime_ok.exit
  %Start.3 = phi i64 [ %call395, %mktime_ok.exit ], [ %call435, %if.end442 ]
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %dbg_ord) #41
  %151 = load i64, ptr %days_seen, align 8, !tbaa !145
  %tobool453 = icmp eq i64 %151, 0
  %152 = load i64, ptr %dates_seen, align 8
  %tobool456 = icmp ne i64 %152, 0
  %or.cond901 = select i1 %tobool453, i1 true, i1 %tobool456
  br i1 %or.cond901, label %if.end508, label %if.then457

if.then457:                                       ; preds = %if.end451
  %tm_yday = getelementptr inbounds %struct.tm, ptr %tm, i64 0, i32 7
  store i32 -1, ptr %tm_yday, align 4, !tbaa !201
  %day_ordinal458 = getelementptr inbounds %struct.parser_control, ptr %pc, i64 0, i32 1
  %153 = load i64, ptr %day_ordinal458, align 8, !tbaa !161
  %cmp460 = icmp sgt i64 %153, 0
  %154 = load i32, ptr %tm_wday, align 8
  %day_number = getelementptr inbounds %struct.parser_control, ptr %pc, i64 0, i32 2
  %155 = load i32, ptr %day_number, align 8
  %cmp463 = icmp ne i32 %154, %155
  %156 = select i1 %cmp460, i1 %cmp463, i1 false
  %conv465.neg = sext i1 %156 to i64
  %sub = add i64 %153, %conv465.neg
  %157 = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %sub, i64 7)
  %158 = extractvalue { i64, i1 } %157, 1
  br i1 %158, label %if.then484, label %lor.lhs.false467

lor.lhs.false467:                                 ; preds = %if.then457
  %159 = extractvalue { i64, i1 } %157, 0
  %reass.sub = sub i32 %155, %154
  %add471 = add i32 %reass.sub, 7
  %rem = srem i32 %add471, 7
  %160 = sext i32 %rem to i64
  %161 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %160, i64 %159)
  %162 = extractvalue { i64, i1 } %161, 1
  br i1 %162, label %if.then484, label %lor.lhs.false473

lor.lhs.false473:                                 ; preds = %lor.lhs.false467
  %163 = extractvalue { i64, i1 } %161, 0
  %164 = load i32, ptr %tm_mday288, align 4, !tbaa !190
  %165 = sext i32 %164 to i64
  %166 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %163, i64 %165)
  %167 = extractvalue { i64, i1 } %166, 1
  %168 = extractvalue { i64, i1 } %166, 0
  %169 = trunc i64 %168 to i32
  %170 = add i64 %168, -2147483648
  %171 = icmp ult i64 %170, -4294967296
  %172 = or i1 %167, %171
  store i32 %169, ptr %tm_mday288, align 4
  br i1 %172, label %if.then484, label %if.end480

if.end480:                                        ; preds = %lor.lhs.false473
  store i32 -1, ptr %tm_isdst94, align 16, !tbaa !194
  %call479 = call i64 @mktime_z(ptr noundef %tz.3, ptr noundef nonnull %tm) #41
  %.pre1195 = load i32, ptr %tm_yday, align 4, !tbaa !201
  %cmp482 = icmp sgt i32 %.pre1195, -1
  br i1 %cmp482, label %if.end495, label %if.then484

if.then484:                                       ; preds = %if.end480, %lor.lhs.false473, %lor.lhs.false467, %if.then457
  %pc.val1018 = load i8, ptr %parse_datetime_debug, align 1, !tbaa !125, !range !56, !noundef !57
  %tobool.i1080.not = icmp eq i8 %pc.val1018, 0
  br i1 %tobool.i1080.not, label %cleanup814.thread, label %if.then486

if.then486:                                       ; preds = %if.then484
  %call487 = call ptr @dcgettext(ptr noundef nonnull @.str.117, ptr noundef nonnull @.str.211, i32 noundef 5) #41
  %173 = call fastcc ptr @str_days(ptr noundef nonnull %pc, ptr noundef nonnull %dbg_ord)
  %174 = load i64, ptr %day_ordinal458, align 8, !tbaa !161
  %175 = load i32, ptr %day_number, align 8, !tbaa !162
  %176 = call fastcc ptr @debug_strfdatetime(ptr noundef nonnull %tm, ptr noundef nonnull %pc, ptr noundef nonnull %dbg_tm)
  call void (ptr, ...) @dbg_printf(ptr noundef %call487, ptr noundef nonnull %dbg_ord, i64 noundef %174, i32 noundef %175, ptr noundef nonnull %dbg_tm)
  br label %cleanup814.thread

if.end495:                                        ; preds = %if.end480
  %pc.val1017 = load i8, ptr %parse_datetime_debug, align 1, !tbaa !125, !range !56, !noundef !57
  %tobool.i1081.not = icmp eq i8 %pc.val1017, 0
  br i1 %tobool.i1081.not, label %if.end534, label %if.then497

if.then497:                                       ; preds = %if.end495
  %call498 = call ptr @dcgettext(ptr noundef nonnull @.str.117, ptr noundef nonnull @.str.212, i32 noundef 5) #41
  %177 = call fastcc ptr @str_days(ptr noundef nonnull %pc, ptr noundef nonnull %dbg_ord)
  %178 = call fastcc ptr @debug_strfdatetime(ptr noundef nonnull %tm, ptr noundef nonnull %pc, ptr noundef nonnull %dbg_tm)
  call void (ptr, ...) @dbg_printf(ptr noundef %call498, ptr noundef nonnull %dbg_ord, ptr noundef nonnull %dbg_tm)
  br label %if.end508

if.end508:                                        ; preds = %if.then497, %if.end451
  %Start.5.ph = phi i64 [ %call479, %if.then497 ], [ %Start.3, %if.end451 ]
  %pc.val1016.pr = load i8, ptr %parse_datetime_debug, align 1, !tbaa !125
  %tobool.i1082.not = icmp eq i8 %pc.val1016.pr, 0
  br i1 %tobool.i1082.not, label %if.end534, label %if.then510

if.then510:                                       ; preds = %if.end508
  %179 = load i64, ptr %dates_seen, align 8
  %tobool512 = icmp ne i64 %179, 0
  %180 = load i64, ptr %days_seen, align 8
  %tobool515 = icmp ne i64 %180, 0
  %or.cond902 = select i1 %tobool512, i1 true, i1 %tobool515
  br i1 %or.cond902, label %if.end520, label %if.then516

if.then516:                                       ; preds = %if.then510
  %call517 = call ptr @dcgettext(ptr noundef nonnull @.str.117, ptr noundef nonnull @.str.213, i32 noundef 5) #41
  %181 = call fastcc ptr @debug_strfdate(ptr noundef nonnull %tm, ptr noundef nonnull %dbg_tm)
  call void (ptr, ...) @dbg_printf(ptr noundef %call517, ptr noundef nonnull %dbg_tm)
  %.pre1196 = load i64, ptr %days_seen, align 8, !tbaa !145
  %.pre1197 = load i64, ptr %dates_seen, align 8
  br label %if.end520

if.end520:                                        ; preds = %if.then516, %if.then510
  %182 = phi i64 [ %.pre1197, %if.then516 ], [ %179, %if.then510 ]
  %183 = phi i64 [ %.pre1196, %if.then516 ], [ %180, %if.then510 ]
  %tobool522 = icmp ne i64 %183, 0
  %tobool525 = icmp ne i64 %182, 0
  %or.cond903 = select i1 %tobool522, i1 %tobool525, i1 false
  br i1 %or.cond903, label %if.then526, label %if.end530

if.then526:                                       ; preds = %if.end520
  %call527 = call ptr @dcgettext(ptr noundef nonnull @.str.117, ptr noundef nonnull @.str.214, i32 noundef 5) #41
  %184 = call fastcc ptr @str_days(ptr noundef nonnull %pc, ptr noundef nonnull %dbg_ord)
  call void (ptr, ...) @dbg_printf(ptr noundef %call527, ptr noundef nonnull %dbg_ord)
  br label %if.end530

if.end530:                                        ; preds = %if.then526, %if.end520
  %call531 = call ptr @dcgettext(ptr noundef nonnull @.str.117, ptr noundef nonnull @.str.215, i32 noundef 5) #41
  %185 = call fastcc ptr @debug_strfdatetime(ptr noundef nonnull %tm, ptr noundef nonnull %pc, ptr noundef nonnull %dbg_tm)
  call void (ptr, ...) @dbg_printf(ptr noundef %call531, ptr noundef nonnull %dbg_tm)
  br label %if.end534

if.end534:                                        ; preds = %if.end530, %if.end508, %if.end495
  %Start.51182 = phi i64 [ %Start.5.ph, %if.end530 ], [ %Start.5.ph, %if.end508 ], [ %call479, %if.end495 ]
  %186 = load i64, ptr %rel, align 8, !tbaa !159
  %month538 = getelementptr inbounds %struct.parser_control, ptr %pc, i64 0, i32 12, i32 1
  %187 = load i64, ptr %month538, align 8
  %day541 = getelementptr inbounds %struct.parser_control, ptr %pc, i64 0, i32 12, i32 2
  %188 = load i64, ptr %day541, align 8, !tbaa !157
  %189 = or i64 %186, %188
  %or542 = or i64 %189, %187
  %tobool543.not = icmp eq i64 %or542, 0
  br i1 %tobool543.not, label %if.end682, label %if.then544

if.then544:                                       ; preds = %if.end534
  %pc.val1015 = load i8, ptr %parse_datetime_debug, align 1, !tbaa !125, !range !56, !noundef !57
  %tobool.i1083.not = icmp eq i8 %pc.val1015, 0
  br i1 %tobool.i1083.not, label %if.end574, label %if.then546

if.then546:                                       ; preds = %if.then544
  %190 = or i64 %187, %186
  %or.cond904 = icmp ne i64 %190, 0
  %191 = load i32, ptr %tm_mday288, align 4
  %cmp558 = icmp ne i32 %191, 15
  %or.cond905 = select i1 %or.cond904, i1 %cmp558, i1 false
  br i1 %or.cond905, label %if.then560, label %if.end562

if.then560:                                       ; preds = %if.then546
  %call561 = call ptr @dcgettext(ptr noundef nonnull @.str.117, ptr noundef nonnull @.str.216, i32 noundef 5) #41
  call fastcc void @dbg_fputs(ptr noundef %call561)
  %.pre1198 = load i64, ptr %day541, align 8, !tbaa !157
  br label %if.end562

if.end562:                                        ; preds = %if.then560, %if.then546
  %192 = phi i64 [ %188, %if.then546 ], [ %.pre1198, %if.then560 ]
  %cmp565 = icmp ne i64 %192, 0
  %193 = load i32, ptr %tm_hour385, align 8
  %cmp569 = icmp ne i32 %193, 12
  %or.cond906 = select i1 %cmp565, i1 %cmp569, i1 false
  br i1 %or.cond906, label %if.then571, label %if.end574

if.then571:                                       ; preds = %if.end562
  %call572 = call ptr @dcgettext(ptr noundef nonnull @.str.117, ptr noundef nonnull @.str.217, i32 noundef 5) #41
  call fastcc void @dbg_fputs(ptr noundef %call572)
  br label %if.end574

if.end574:                                        ; preds = %if.then571, %if.end562, %if.then544
  %194 = load i32, ptr %tm_year280, align 4, !tbaa !187
  %195 = load i64, ptr %rel, align 8, !tbaa !159
  %196 = sext i32 %194 to i64
  %197 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %196, i64 %195)
  %198 = extractvalue { i64, i1 } %197, 1
  %199 = extractvalue { i64, i1 } %197, 0
  %200 = trunc i64 %199 to i32
  %201 = add i64 %199, -2147483648
  %202 = icmp ult i64 %201, -4294967296
  %203 = or i1 %198, %202
  br i1 %203, label %if.then592, label %lor.lhs.false582

lor.lhs.false582:                                 ; preds = %if.end574
  %204 = load i32, ptr %tm_mon284, align 16, !tbaa !189
  %205 = load i64, ptr %month538, align 8, !tbaa !158
  %206 = sext i32 %204 to i64
  %207 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %206, i64 %205)
  %208 = extractvalue { i64, i1 } %207, 1
  %209 = extractvalue { i64, i1 } %207, 0
  %210 = trunc i64 %209 to i32
  %211 = add i64 %209, -2147483648
  %212 = icmp ult i64 %211, -4294967296
  %213 = or i1 %208, %212
  br i1 %213, label %if.then592, label %lor.lhs.false587

lor.lhs.false587:                                 ; preds = %lor.lhs.false582
  %214 = load i32, ptr %tm_mday288, align 4, !tbaa !190
  %215 = load i64, ptr %day541, align 8, !tbaa !157
  %216 = sext i32 %214 to i64
  %217 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %216, i64 %215)
  %218 = extractvalue { i64, i1 } %217, 1
  %219 = extractvalue { i64, i1 } %217, 0
  %220 = trunc i64 %219 to i32
  %221 = add i64 %219, -2147483648
  %222 = icmp ult i64 %221, -4294967296
  %223 = or i1 %218, %222
  br i1 %223, label %if.then592, label %if.end597

if.then592:                                       ; preds = %lor.lhs.false587, %lor.lhs.false582, %if.end574
  %pc.val1014 = load i8, ptr %parse_datetime_debug, align 1, !tbaa !125, !range !56, !noundef !57
  %tobool.i1084.not = icmp eq i8 %pc.val1014, 0
  br i1 %tobool.i1084.not, label %cleanup814.thread, label %if.then594

if.then594:                                       ; preds = %if.then592
  %call595 = call ptr @dcgettext(ptr noundef nonnull @.str.117, ptr noundef nonnull @.str.218, i32 noundef 5) #41
  call void (ptr, ...) @dbg_printf(ptr noundef %call595, ptr noundef nonnull @.str.219, i32 noundef 2158)
  br label %cleanup814.thread

if.end597:                                        ; preds = %lor.lhs.false587
  store i32 %200, ptr %tm_year280, align 4, !tbaa !187
  store i32 %210, ptr %tm_mon284, align 16, !tbaa !189
  store i32 %220, ptr %tm_mday288, align 4, !tbaa !190
  %224 = extractelement <4 x i32> %128, i64 2
  store i32 %224, ptr %tm_hour385, align 8, !tbaa !191
  %225 = extractelement <4 x i32> %128, i64 1
  store i32 %225, ptr %tm_min383, align 4, !tbaa !192
  %226 = extractelement <4 x i32> %128, i64 0
  store i32 %226, ptr %tm, align 16, !tbaa !193
  store i32 %127, ptr %tm_isdst94, align 16, !tbaa !194
  store i32 -1, ptr %tm_wday, align 8, !tbaa !200
  %call610 = call i64 @mktime_z(ptr noundef %tz.3, ptr noundef nonnull %tm) #41
  %227 = load i32, ptr %tm_wday, align 8, !tbaa !200
  %cmp612 = icmp slt i32 %227, 0
  %pc.val1013 = load i8, ptr %parse_datetime_debug, align 1, !tbaa !125, !range !56, !noundef !57
  %tobool.i1085.not = icmp eq i8 %pc.val1013, 0
  br i1 %cmp612, label %if.then614, label %if.end621

if.then614:                                       ; preds = %if.end597
  br i1 %tobool.i1085.not, label %cleanup814.thread, label %if.then616

if.then616:                                       ; preds = %if.then614
  %call617 = call ptr @dcgettext(ptr noundef nonnull @.str.117, ptr noundef nonnull @.str.220, i32 noundef 5) #41
  %228 = call fastcc ptr @debug_strfdatetime(ptr noundef nonnull %tm, ptr noundef nonnull %pc, ptr noundef nonnull %dbg_tm)
  call void (ptr, ...) @dbg_printf(ptr noundef %call617, ptr noundef nonnull %dbg_tm)
  br label %cleanup814.thread

if.end621:                                        ; preds = %if.end597
  br i1 %tobool.i1085.not, label %if.end682, label %if.then623

if.then623:                                       ; preds = %if.end621
  %call624 = call ptr @dcgettext(ptr noundef nonnull @.str.117, ptr noundef nonnull @.str.221, i32 noundef 5) #41
  %229 = load i64, ptr %rel, align 8, !tbaa !159
  %230 = load i64, ptr %month538, align 8, !tbaa !158
  %231 = load i64, ptr %day541, align 8, !tbaa !157
  call void (ptr, ...) @dbg_printf(ptr noundef %call624, i64 noundef %229, i64 noundef %230, i64 noundef %231)
  %call631 = call ptr @dcgettext(ptr noundef nonnull @.str.117, ptr noundef nonnull @.str.222, i32 noundef 5) #41
  %232 = call fastcc ptr @debug_strfdatetime(ptr noundef nonnull %tm, ptr noundef nonnull %pc, ptr noundef nonnull %dbg_tm)
  call void (ptr, ...) @dbg_printf(ptr noundef %call631, ptr noundef nonnull %dbg_tm)
  %cmp635.not = icmp eq i32 %127, -1
  %233 = load i32, ptr %tm_isdst94, align 16
  %cmp640.not = icmp eq i32 %233, %127
  %or.cond = select i1 %cmp635.not, i1 true, i1 %cmp640.not
  br i1 %or.cond, label %if.end644, label %if.then642

if.then642:                                       ; preds = %if.then623
  %call643 = call ptr @dcgettext(ptr noundef nonnull @.str.117, ptr noundef nonnull @.str.223, i32 noundef 5) #41
  call fastcc void @dbg_fputs(ptr noundef %call643)
  br label %if.end644

if.end644:                                        ; preds = %if.then642, %if.then623
  %234 = load i64, ptr %day541, align 8, !tbaa !157
  %cmp647 = icmp eq i64 %234, 0
  br i1 %cmp647, label %land.lhs.true649, label %if.end682

land.lhs.true649:                                 ; preds = %if.end644
  %235 = load i32, ptr %tm_mday288, align 4, !tbaa !190
  %cmp651.not = icmp eq i32 %235, %220
  br i1 %cmp651.not, label %lor.lhs.false653, label %if.then662

lor.lhs.false653:                                 ; preds = %land.lhs.true649
  %236 = load i64, ptr %month538, align 8, !tbaa !158
  %cmp656 = icmp ne i64 %236, 0
  %237 = load i32, ptr %tm_mon284, align 16
  %cmp660.not = icmp eq i32 %237, %210
  %or.cond1007 = select i1 %cmp656, i1 true, i1 %cmp660.not
  br i1 %or.cond1007, label %if.end682, label %if.then662

if.then662:                                       ; preds = %lor.lhs.false653, %land.lhs.true649
  %call663 = call ptr @dcgettext(ptr noundef nonnull @.str.117, ptr noundef nonnull @.str.224, i32 noundef 5) #41
  call fastcc void @dbg_fputs(ptr noundef %call663)
  call void @llvm.lifetime.start.p0(i64 13, ptr nonnull %tm_year_buf) #41
  %call664 = call ptr @dcgettext(ptr noundef nonnull @.str.117, ptr noundef nonnull @.str.225, i32 noundef 5) #41
  %call666 = call fastcc ptr @tm_year_str(i32 noundef %200, ptr noundef nonnull %tm_year_buf)
  %add667 = add nsw i32 %210, 1
  call void (ptr, ...) @dbg_printf(ptr noundef %call664, ptr noundef nonnull %tm_year_buf, i32 noundef %add667, i32 noundef %220)
  %call668 = call ptr @dcgettext(ptr noundef nonnull @.str.117, ptr noundef nonnull @.str.226, i32 noundef 5) #41
  %238 = load i32, ptr %tm_year280, align 4, !tbaa !187
  %call671 = call fastcc ptr @tm_year_str(i32 noundef %238, ptr noundef nonnull %tm_year_buf)
  %239 = load i32, ptr %tm_mon284, align 16, !tbaa !189
  %add673 = add nsw i32 %239, 1
  %240 = load i32, ptr %tm_mday288, align 4, !tbaa !190
  call void (ptr, ...) @dbg_printf(ptr noundef %call668, ptr noundef nonnull %tm_year_buf, i32 noundef %add673, i32 noundef %240)
  call void @llvm.lifetime.end.p0(i64 13, ptr nonnull %tm_year_buf) #41
  br label %if.end682

if.end682:                                        ; preds = %if.then662, %lor.lhs.false653, %if.end644, %if.end621, %if.end534
  %Start.7 = phi i64 [ %Start.51182, %if.end534 ], [ %call610, %if.end644 ], [ %call610, %lor.lhs.false653 ], [ %call610, %if.then662 ], [ %call610, %if.end621 ]
  %241 = load i64, ptr %zones_seen, align 8, !tbaa !144
  %tobool684.not = icmp eq i64 %241, 0
  br i1 %tobool684.not, label %if.end713, label %if.then685

if.then685:                                       ; preds = %if.end682
  %tm_gmtoff = getelementptr inbounds %struct.tm, ptr %tm, i64 0, i32 9
  %242 = load i64, ptr %tm_gmtoff, align 8, !tbaa !202
  %time_zone686 = getelementptr inbounds %struct.parser_control, ptr %pc, i64 0, i32 4
  %243 = load i32, ptr %time_zone686, align 8, !tbaa !150
  %244 = sext i32 %243 to i64
  %245 = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %244, i64 %242)
  %246 = extractvalue { i64, i1 } %245, 1
  %247 = extractvalue { i64, i1 } %245, 0
  %248 = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %Start.7, i64 %247)
  %249 = extractvalue { i64, i1 } %248, 1
  %or6961005 = or i1 %246, %249
  br i1 %or6961005, label %if.then700, label %cleanup707

if.then700:                                       ; preds = %if.then685
  %pc.val1011 = load i8, ptr %parse_datetime_debug, align 1, !tbaa !125, !range !56, !noundef !57
  %tobool.i1087.not = icmp eq i8 %pc.val1011, 0
  br i1 %tobool.i1087.not, label %cleanup814.thread, label %if.then702

if.then702:                                       ; preds = %if.then700
  %call703 = call ptr @dcgettext(ptr noundef nonnull @.str.117, ptr noundef nonnull @.str.227, i32 noundef 5) #41
  %250 = load i32, ptr %time_zone686, align 8, !tbaa !150
  call void (ptr, ...) @dbg_printf(ptr noundef %call703, i32 noundef %250)
  br label %cleanup814.thread

cleanup707:                                       ; preds = %if.then685
  %251 = extractvalue { i64, i1 } %248, 0
  br label %if.end713

if.end713:                                        ; preds = %cleanup707, %if.end682
  %Start.9 = phi i64 [ %251, %cleanup707 ], [ %Start.7, %if.end682 ]
  %pc.val1010 = load i8, ptr %parse_datetime_debug, align 1, !tbaa !125, !range !56, !noundef !57
  %tobool.i1088.not = icmp eq i8 %pc.val1010, 0
  br i1 %tobool.i1088.not, label %if.end719, label %if.then715

if.then715:                                       ; preds = %if.end713
  %call716 = call ptr @dcgettext(ptr noundef nonnull @.str.117, ptr noundef nonnull @.str.228, i32 noundef 5) #41
  %252 = call fastcc ptr @debug_strfdatetime(ptr noundef nonnull %tm, ptr noundef nonnull %pc, ptr noundef nonnull %dbg_tm)
  call void (ptr, ...) @dbg_printf(ptr noundef %call716, ptr noundef nonnull %dbg_tm, i64 noundef %Start.9)
  br label %if.end719

if.end719:                                        ; preds = %if.then715, %if.end713
  %253 = load i64, ptr %.compoundliteral.sroa.2.0.seconds.sroa_idx, align 8, !tbaa !177
  %ns = getelementptr inbounds %struct.parser_control, ptr %pc, i64 0, i32 12, i32 6
  %254 = load i32, ptr %ns, align 8, !tbaa !153
  %conv723 = sext i32 %254 to i64
  %add724 = add nsw i64 %253, %conv723
  %add724.fr = freeze i64 %add724
  %rem725 = srem i64 %add724.fr, 1000000000
  %add726 = add nsw i64 %rem725, 1000000000
  %rem727.cmp = icmp ugt i64 %rem725, -1000000001
  %rem727 = select i1 %rem727.cmp, i64 %add726, i64 %rem725
  %sub730 = sub nsw i64 %add724.fr, %rem727
  %div = sdiv i64 %sub730, 1000000000
  %hour734 = getelementptr inbounds %struct.parser_control, ptr %pc, i64 0, i32 12, i32 3
  %255 = load i64, ptr %hour734, align 8, !tbaa !156
  %256 = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %255, i64 3600)
  %257 = extractvalue { i64, i1 } %256, 1
  br i1 %257, label %if.then750, label %lor.lhs.false736

lor.lhs.false736:                                 ; preds = %if.end719
  %258 = extractvalue { i64, i1 } %256, 0
  %259 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %Start.9, i64 %258)
  %260 = extractvalue { i64, i1 } %259, 1
  %261 = extractvalue { i64, i1 } %259, 0
  br i1 %260, label %if.then750, label %lor.lhs.false738

lor.lhs.false738:                                 ; preds = %lor.lhs.false736
  %minutes740 = getelementptr inbounds %struct.parser_control, ptr %pc, i64 0, i32 12, i32 4
  %262 = load i64, ptr %minutes740, align 8, !tbaa !155
  %263 = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %262, i64 60)
  %264 = extractvalue { i64, i1 } %263, 1
  br i1 %264, label %if.then750, label %lor.lhs.false742

lor.lhs.false742:                                 ; preds = %lor.lhs.false738
  %265 = extractvalue { i64, i1 } %263, 0
  %266 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %261, i64 %265)
  %267 = extractvalue { i64, i1 } %266, 1
  br i1 %267, label %if.then750, label %lor.lhs.false744

lor.lhs.false744:                                 ; preds = %lor.lhs.false742
  %268 = extractvalue { i64, i1 } %266, 0
  %seconds746 = getelementptr inbounds %struct.parser_control, ptr %pc, i64 0, i32 12, i32 5
  %269 = load i64, ptr %seconds746, align 8, !tbaa !154
  %270 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %268, i64 %269)
  %271 = extractvalue { i64, i1 } %270, 1
  br i1 %271, label %if.then750, label %lor.lhs.false748

lor.lhs.false748:                                 ; preds = %lor.lhs.false744
  %272 = extractvalue { i64, i1 } %270, 0
  %sext1006 = shl i64 %div, 32
  %273 = ashr exact i64 %sext1006, 32
  %274 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %272, i64 %273)
  %275 = extractvalue { i64, i1 } %274, 1
  %276 = extractvalue { i64, i1 } %274, 0
  br i1 %275, label %if.then750, label %if.end755

if.then750:                                       ; preds = %lor.lhs.false748, %lor.lhs.false744, %lor.lhs.false742, %lor.lhs.false738, %lor.lhs.false736, %if.end719
  %pc.val1009 = load i8, ptr %parse_datetime_debug, align 1, !tbaa !125, !range !56, !noundef !57
  %tobool.i1089.not = icmp eq i8 %pc.val1009, 0
  br i1 %tobool.i1089.not, label %cleanup814.thread, label %if.then752

if.then752:                                       ; preds = %if.then750
  %call753 = call ptr @dcgettext(ptr noundef nonnull @.str.117, ptr noundef nonnull @.str.229, i32 noundef 5) #41
  call fastcc void @dbg_fputs(ptr noundef %call753)
  br label %cleanup814.thread

if.end755:                                        ; preds = %lor.lhs.false748
  store i64 %276, ptr %result, align 8, !tbaa !181
  %tv_nsec758 = getelementptr inbounds %struct.timespec, ptr %result, i64 0, i32 1
  store i64 %rem727, ptr %tv_nsec758, align 8, !tbaa !182
  %pc.val1008 = load i8, ptr %parse_datetime_debug, align 1, !tbaa !125, !range !56, !noundef !57
  %tobool.i1090.not = icmp eq i8 %pc.val1008, 0
  br i1 %tobool.i1090.not, label %cleanup814, label %land.lhs.true761

land.lhs.true761:                                 ; preds = %if.end755
  %or766 = or i64 %255, %conv723
  %or769 = or i64 %or766, %262
  %or773 = or i64 %or769, %269
  %tobool774.not = icmp eq i64 %or773, 0
  br i1 %tobool774.not, label %cleanup814, label %if.then775

if.then775:                                       ; preds = %land.lhs.true761
  %call776 = call ptr @dcgettext(ptr noundef nonnull @.str.117, ptr noundef nonnull @.str.230, i32 noundef 5) #41
  %277 = load i64, ptr %hour734, align 8, !tbaa !156
  %278 = load i64, ptr %minutes740, align 8, !tbaa !155
  %279 = load i64, ptr %seconds746, align 8, !tbaa !154
  %280 = load i32, ptr %ns, align 8, !tbaa !153
  call void (ptr, ...) @dbg_printf(ptr noundef %call776, i64 noundef %277, i64 noundef %278, i64 noundef %279, i32 noundef %280)
  %call785 = call ptr @dcgettext(ptr noundef nonnull @.str.117, ptr noundef nonnull @.str.231, i32 noundef 5) #41
  call void (ptr, ...) @dbg_printf(ptr noundef %call785, i64 noundef %276)
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %lmt) #41
  %281 = load i32, ptr %tm_isdst94, align 16, !tbaa !194
  %cmp787.not = icmp eq i32 %281, -1
  br i1 %cmp787.not, label %if.end800, label %land.lhs.true789

land.lhs.true789:                                 ; preds = %if.then775
  %call791 = call ptr @localtime_rz(ptr noundef %tz.3, ptr noundef nonnull %result, ptr noundef nonnull %lmt) #41
  %tobool792.not = icmp eq ptr %call791, null
  br i1 %tobool792.not, label %if.end800, label %land.lhs.true793

land.lhs.true793:                                 ; preds = %land.lhs.true789
  %282 = load i32, ptr %tm_isdst94, align 16, !tbaa !194
  %tm_isdst795 = getelementptr inbounds %struct.tm, ptr %lmt, i64 0, i32 8
  %283 = load i32, ptr %tm_isdst795, align 8, !tbaa !194
  %cmp796.not = icmp eq i32 %282, %283
  br i1 %cmp796.not, label %if.end800, label %if.then798

if.then798:                                       ; preds = %land.lhs.true793
  %call799 = call ptr @dcgettext(ptr noundef nonnull @.str.117, ptr noundef nonnull @.str.232, i32 noundef 5) #41
  call fastcc void @dbg_fputs(ptr noundef %call799)
  br label %if.end800

if.end800:                                        ; preds = %if.then798, %land.lhs.true793, %land.lhs.true789, %if.then775
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %lmt) #41
  br label %cleanup814

cleanup814.thread:                                ; preds = %if.then752, %if.then750, %if.then702, %if.then700, %if.then616, %if.then614, %if.then594, %if.then592, %if.then486, %if.then484
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %dbg_ord) #41
  br label %fail

cleanup814:                                       ; preds = %if.end800, %land.lhs.true761, %if.end755
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %dbg_ord) #41
  br label %if.end817

if.end817:                                        ; preds = %cleanup814, %if.then222
  %pc.val = load i8, ptr %parse_datetime_debug, align 1, !tbaa !125, !range !56, !noundef !57
  %tobool.i1091.not = icmp eq i8 %pc.val, 0
  br i1 %tobool.i1091.not, label %fail, label %if.then819

if.then819:                                       ; preds = %if.end817
  %tobool820.not = icmp eq ptr %tzstring.addr.3, null
  br i1 %tobool820.not, label %if.then821, label %if.else823

if.then821:                                       ; preds = %if.then819
  %call822 = call ptr @dcgettext(ptr noundef nonnull @.str.117, ptr noundef nonnull @.str.233, i32 noundef 5) #41
  %284 = load ptr, ptr @stderr, align 8, !tbaa !5
  %285 = call i64 @fwrite(ptr nonnull @.str.46, i64 6, i64 1, ptr %284) #49
  %286 = load ptr, ptr @stderr, align 8, !tbaa !5
  %call.i1092 = call i32 @fputs(ptr noundef %call822, ptr noundef %286) #49
  br label %if.end832

if.else823:                                       ; preds = %if.then819
  %call824 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %tzstring.addr.3, ptr noundef nonnull dereferenceable(5) @.str.192) #42
  %cmp825 = icmp eq i32 %call824, 0
  br i1 %cmp825, label %if.then827, label %if.else829

if.then827:                                       ; preds = %if.else823
  %call828 = call ptr @dcgettext(ptr noundef nonnull @.str.117, ptr noundef nonnull @.str.234, i32 noundef 5) #41
  call fastcc void @dbg_fputs(ptr noundef %call828)
  br label %if.end832

if.else829:                                       ; preds = %if.else823
  %call830 = call ptr @dcgettext(ptr noundef nonnull @.str.117, ptr noundef nonnull @.str.235, i32 noundef 5) #41
  call void (ptr, ...) @dbg_printf(ptr noundef %call830, ptr noundef nonnull %tzstring.addr.3)
  br label %if.end832

if.end832:                                        ; preds = %if.else829, %if.then827, %if.then821
  %287 = load i64, ptr %result, align 8, !tbaa !181
  %tv_nsec834 = getelementptr inbounds %struct.timespec, ptr %result, i64 0, i32 1
  %288 = load i64, ptr %tv_nsec834, align 8, !tbaa !182
  %conv835 = trunc i64 %288 to i32
  %call836 = call ptr @dcgettext(ptr noundef nonnull @.str.117, ptr noundef nonnull @.str.236, i32 noundef 5) #41
  call void (ptr, ...) @dbg_printf(ptr noundef %call836, i64 noundef %287, i32 noundef %conv835)
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %gmt) #41
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %lmt837) #41
  %call839 = call ptr @gmtime_r(ptr noundef nonnull %result, ptr noundef nonnull %gmt) #41
  %tobool840.not = icmp eq ptr %call839, null
  br i1 %tobool840.not, label %if.end848, label %if.then844

if.then844:                                       ; preds = %if.end832
  %call845 = call ptr @dcgettext(ptr noundef nonnull @.str.117, ptr noundef nonnull @.str.237, i32 noundef 5) #41
  %call.i1093 = call i64 @strftime(ptr noundef nonnull %dbg_tm, i64 noundef 100, ptr noundef nonnull @.str.257, ptr noundef nonnull %gmt) #41
  call void (ptr, ...) @dbg_printf(ptr noundef %call845, ptr noundef nonnull %dbg_tm)
  br label %if.end848

if.end848:                                        ; preds = %if.then844, %if.end832
  %call850 = call ptr @localtime_rz(ptr noundef %tz.3, ptr noundef nonnull %result, ptr noundef nonnull %lmt837) #41
  %tobool851.not = icmp eq ptr %call850, null
  br i1 %tobool851.not, label %if.end868, label %if.then856

if.then856:                                       ; preds = %if.end848
  %tm_gmtoff854 = getelementptr inbounds %struct.tm, ptr %lmt837, i64 0, i32 9
  %289 = load i64, ptr %tm_gmtoff854, align 8, !tbaa !202
  %call857 = call ptr @dcgettext(ptr noundef nonnull @.str.117, ptr noundef nonnull @.str.238, i32 noundef 5) #41
  %call.i1096 = call i64 @strftime(ptr noundef nonnull %dbg_tm, i64 noundef 100, ptr noundef nonnull @.str.257, ptr noundef nonnull %lmt837) #41
  %conv860 = trunc i64 %289 to i32
  %cmp.i1099 = icmp slt i32 %conv860, 0
  %div.i1100 = sdiv i32 %conv860, 3600
  %290 = call i32 @llvm.abs.i32(i32 %div.i1100, i1 true)
  %conv1.i1101 = select i1 %cmp.i1099, i32 45, i32 43
  %call.i1102 = call i32 (ptr, i32, i64, ptr, ...) @__sprintf_chk(ptr noundef nonnull %time_zone_buf, i32 noundef 1, i64 noundef 27, ptr noundef nonnull @.str.36, i32 noundef %conv1.i1101, i32 noundef %290) #41
  %rem.i1103 = srem i32 %conv860, 3600
  %cmp2.not.i1104 = icmp eq i32 %rem.i1103, 0
  br i1 %cmp2.not.i1104, label %time_zone_str.exit1131, label %if.then.i1105

if.then.i1105:                                    ; preds = %if.then856
  %291 = call i32 @llvm.abs.i32(i32 %rem.i1103, i1 true)
  %idx.ext.i1106 = sext i32 %call.i1102 to i64
  %add.ptr.i1107 = getelementptr inbounds i8, ptr %time_zone_buf, i64 %idx.ext.i1106
  %div4.lhs.trunc.i1108 = trunc i32 %291 to i16
  %div441.i1109 = udiv i16 %div4.lhs.trunc.i1108, 60
  %rem542.i1110 = urem i16 %div4.lhs.trunc.i1108, 60
  %incdec.ptr.i1111 = getelementptr inbounds i8, ptr %add.ptr.i1107, i64 1
  store i8 58, ptr %add.ptr.i1107, align 1, !tbaa !14
  %div643.i1112 = udiv i16 %div4.lhs.trunc.i1108, 600
  %292 = trunc i16 %div643.i1112 to i8
  %conv7.i1113 = add nuw nsw i8 %292, 48
  %incdec.ptr8.i1114 = getelementptr inbounds i8, ptr %add.ptr.i1107, i64 2
  store i8 %conv7.i1113, ptr %incdec.ptr.i1111, align 1, !tbaa !14
  %rem9.lhs.trunc.i1115 = trunc i16 %div441.i1109 to i8
  %rem944.i1116 = urem i8 %rem9.lhs.trunc.i1115, 10
  %conv11.i1117 = or disjoint i8 %rem944.i1116, 48
  %incdec.ptr12.i1118 = getelementptr inbounds i8, ptr %add.ptr.i1107, i64 3
  store i8 %conv11.i1117, ptr %incdec.ptr8.i1114, align 1, !tbaa !14
  %tobool.not.i1119 = icmp eq i16 %rem542.i1110, 0
  br i1 %tobool.not.i1119, label %if.end.i1129, label %if.then13.i1120

if.then13.i1120:                                  ; preds = %if.then.i1105
  %incdec.ptr14.i1121 = getelementptr inbounds i8, ptr %add.ptr.i1107, i64 4
  store i8 58, ptr %incdec.ptr12.i1118, align 1, !tbaa !14
  %div15.lhs.trunc.i1122 = trunc i16 %rem542.i1110 to i8
  %div1545.i1123 = udiv i8 %div15.lhs.trunc.i1122, 10
  %conv17.i1124 = or disjoint i8 %div1545.i1123, 48
  %incdec.ptr18.i1125 = getelementptr inbounds i8, ptr %add.ptr.i1107, i64 5
  store i8 %conv17.i1124, ptr %incdec.ptr14.i1121, align 1, !tbaa !14
  %rem1946.i1126 = urem i8 %div15.lhs.trunc.i1122, 10
  %conv21.i1127 = or disjoint i8 %rem1946.i1126, 48
  %incdec.ptr22.i1128 = getelementptr inbounds i8, ptr %add.ptr.i1107, i64 6
  store i8 %conv21.i1127, ptr %incdec.ptr18.i1125, align 1, !tbaa !14
  br label %if.end.i1129

if.end.i1129:                                     ; preds = %if.then13.i1120, %if.then.i1105
  %p.0.i1130 = phi ptr [ %incdec.ptr22.i1128, %if.then13.i1120 ], [ %incdec.ptr12.i1118, %if.then.i1105 ]
  store i8 0, ptr %p.0.i1130, align 1, !tbaa !14
  br label %time_zone_str.exit1131

time_zone_str.exit1131:                           ; preds = %if.end.i1129, %if.then856
  call void (ptr, ...) @dbg_printf(ptr noundef %call857, ptr noundef nonnull %dbg_tm, ptr noundef nonnull %time_zone_buf)
  br label %if.end868

if.end868:                                        ; preds = %time_zone_str.exit1131, %if.end848
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %lmt837) #41
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %gmt) #41
  br label %fail

fail:                                             ; preds = %if.end868, %if.end817, %cleanup814.thread, %if.then444, %cleanup438.thread, %if.then329, %if.then316, %if.then292, %if.then290, %if.then273, %if.end265, %if.then239, %if.then151, %if.then149, %if.end66
  %ok.0 = phi i1 [ false, %if.then151 ], [ false, %if.then149 ], [ false, %if.then273 ], [ false, %if.end265 ], [ false, %if.then239 ], [ false, %if.then292 ], [ false, %if.then290 ], [ false, %if.end66 ], [ false, %if.then329 ], [ false, %if.then316 ], [ true, %if.end868 ], [ true, %if.end817 ], [ false, %cleanup814.thread ], [ false, %if.then444 ], [ false, %cleanup438.thread ]
  %cmp871.not = icmp eq ptr %tz.3, %tzdefault
  br i1 %cmp871.not, label %cleanup876, label %if.then873

if.then873:                                       ; preds = %fail
  call void @tzfree(ptr noundef %tz.3) #41
  br label %cleanup876

cleanup876:                                       ; preds = %if.then873, %fail, %for.end, %if.then27
  %ok.01178 = phi i1 [ %ok.0, %if.then873 ], [ %ok.0, %fail ], [ false, %if.then27 ], [ false, %for.end ]
  %tz1alloc.51177 = phi ptr [ %tz1alloc.4, %if.then873 ], [ %tz1alloc.4, %fail ], [ null, %if.then27 ], [ %tz1alloc.0, %for.end ]
  call void @free(ptr noundef %tz1alloc.51177) #41
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %rel_time_0)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %gettime_buffer) #41
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %tz1buf) #41
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %dbg_tm) #41
  call void @llvm.lifetime.end.p0(i64 27, ptr nonnull %time_zone_buf) #41
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %tm0) #41
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %tm) #41
  ret i1 %ok.01178
}

declare void @gettime(ptr noundef) local_unnamed_addr #2

declare ptr @tzalloc(ptr noundef) local_unnamed_addr #2

declare ptr @localtime_rz(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind uwtable
define internal fastcc void @dbg_fputs(ptr nocapture noundef readonly %msgid) unnamed_addr #37 {
entry:
  %0 = load ptr, ptr @stderr, align 8, !tbaa !5
  %1 = tail call i64 @fwrite(ptr nonnull @.str.46, i64 6, i64 1, ptr %0) #49
  %2 = load ptr, ptr @stderr, align 8, !tbaa !5
  %call = tail call i32 @fputs(ptr noundef %msgid, ptr noundef %2) #49
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal fastcc i32 @to_hour(i64 noundef %hours, i32 noundef %meridian) unnamed_addr #38 {
entry:
  switch i32 %meridian, label %sw.bb [
    i32 1, label %sw.bb17
    i32 0, label %sw.bb2
  ]

sw.bb:                                            ; preds = %entry
  %or.cond = icmp ult i64 %hours, 24
  %0 = trunc i64 %hours to i32
  %conv = select i1 %or.cond, i32 %0, i32 -1
  br label %return

sw.bb2:                                           ; preds = %entry
  %1 = add i64 %hours, -1
  %or.cond32 = icmp ult i64 %1, 11
  %cmp10 = icmp ne i64 %hours, 12
  %conv13 = sext i1 %cmp10 to i64
  %cond15 = select i1 %or.cond32, i64 %hours, i64 %conv13
  %conv16 = trunc i64 %cond15 to i32
  br label %return

sw.bb17:                                          ; preds = %entry
  %2 = add i64 %hours, -1
  %or.cond33 = icmp ult i64 %2, 11
  %add = add nuw nsw i64 %hours, 12
  %cmp25 = icmp eq i64 %hours, 12
  %conv28 = select i1 %cmp25, i64 12, i64 4294967295
  %cond30 = select i1 %or.cond33, i64 %add, i64 %conv28
  %conv31 = trunc i64 %cond30 to i32
  br label %return

return:                                           ; preds = %sw.bb17, %sw.bb2, %sw.bb
  %retval.0 = phi i32 [ %conv, %sw.bb ], [ %conv16, %sw.bb2 ], [ %conv31, %sw.bb17 ]
  ret i32 %retval.0
}

declare i64 @mktime_z(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind uwtable
define internal fastcc noundef ptr @time_zone_str(i32 noundef %time_zone, ptr noundef returned %time_zone_buf) unnamed_addr #37 {
entry:
  %cmp = icmp slt i32 %time_zone, 0
  %div = sdiv i32 %time_zone, 3600
  %0 = tail call i32 @llvm.abs.i32(i32 %div, i1 true)
  %conv1 = select i1 %cmp, i32 45, i32 43
  %call = tail call i32 (ptr, i32, i64, ptr, ...) @__sprintf_chk(ptr noundef %time_zone_buf, i32 noundef 1, i64 noundef -1, ptr noundef nonnull @.str.36, i32 noundef %conv1, i32 noundef %0) #41
  %rem = srem i32 %time_zone, 3600
  %cmp2.not = icmp eq i32 %rem, 0
  br i1 %cmp2.not, label %if.end23, label %if.then

if.then:                                          ; preds = %entry
  %1 = tail call i32 @llvm.abs.i32(i32 %rem, i1 true)
  %idx.ext = sext i32 %call to i64
  %add.ptr = getelementptr inbounds i8, ptr %time_zone_buf, i64 %idx.ext
  %div4.lhs.trunc = trunc i32 %1 to i16
  %div441 = udiv i16 %div4.lhs.trunc, 60
  %rem542 = urem i16 %div4.lhs.trunc, 60
  %incdec.ptr = getelementptr inbounds i8, ptr %add.ptr, i64 1
  store i8 58, ptr %add.ptr, align 1, !tbaa !14
  %div643 = udiv i16 %div4.lhs.trunc, 600
  %2 = trunc i16 %div643 to i8
  %conv7 = add nuw nsw i8 %2, 48
  %incdec.ptr8 = getelementptr inbounds i8, ptr %add.ptr, i64 2
  store i8 %conv7, ptr %incdec.ptr, align 1, !tbaa !14
  %rem9.lhs.trunc = trunc i16 %div441 to i8
  %rem944 = urem i8 %rem9.lhs.trunc, 10
  %conv11 = or disjoint i8 %rem944, 48
  %incdec.ptr12 = getelementptr inbounds i8, ptr %add.ptr, i64 3
  store i8 %conv11, ptr %incdec.ptr8, align 1, !tbaa !14
  %tobool.not = icmp eq i16 %rem542, 0
  br i1 %tobool.not, label %if.end, label %if.then13

if.then13:                                        ; preds = %if.then
  %incdec.ptr14 = getelementptr inbounds i8, ptr %add.ptr, i64 4
  store i8 58, ptr %incdec.ptr12, align 1, !tbaa !14
  %div15.lhs.trunc = trunc i16 %rem542 to i8
  %div1545 = udiv i8 %div15.lhs.trunc, 10
  %conv17 = or disjoint i8 %div1545, 48
  %incdec.ptr18 = getelementptr inbounds i8, ptr %add.ptr, i64 5
  store i8 %conv17, ptr %incdec.ptr14, align 1, !tbaa !14
  %rem1946 = urem i8 %div15.lhs.trunc, 10
  %conv21 = or disjoint i8 %rem1946, 48
  %incdec.ptr22 = getelementptr inbounds i8, ptr %add.ptr, i64 6
  store i8 %conv21, ptr %incdec.ptr18, align 1, !tbaa !14
  br label %if.end

if.end:                                           ; preds = %if.then13, %if.then
  %p.0 = phi ptr [ %incdec.ptr22, %if.then13 ], [ %incdec.ptr12, %if.then ]
  store i8 0, ptr %p.0, align 1, !tbaa !14
  br label %if.end23

if.end23:                                         ; preds = %if.end, %entry
  ret ptr %time_zone_buf
}

declare void @tzfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @debug_mktime_not_ok(ptr noundef %tm0, ptr noundef %tm1, ptr noundef %pc, i1 noundef zeroext %time_zone_seen) unnamed_addr #6 {
entry:
  %tmp = alloca [100 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %tmp) #41
  %0 = load i32, ptr %tm0, align 8, !tbaa !193
  %1 = load i32, ptr %tm1, align 8, !tbaa !193
  %cmp = icmp ne i32 %0, %1
  %tm_min = getelementptr inbounds %struct.tm, ptr %tm0, i64 0, i32 1
  %2 = load i32, ptr %tm_min, align 4, !tbaa !192
  %tm_min3 = getelementptr inbounds %struct.tm, ptr %tm1, i64 0, i32 1
  %3 = load i32, ptr %tm_min3, align 4, !tbaa !192
  %cmp4 = icmp ne i32 %2, %3
  %tm_hour = getelementptr inbounds %struct.tm, ptr %tm0, i64 0, i32 2
  %4 = load i32, ptr %tm_hour, align 8, !tbaa !191
  %tm_hour6 = getelementptr inbounds %struct.tm, ptr %tm1, i64 0, i32 2
  %5 = load i32, ptr %tm_hour6, align 8, !tbaa !191
  %cmp7 = icmp eq i32 %4, %5
  %tm_mday = getelementptr inbounds %struct.tm, ptr %tm0, i64 0, i32 3
  %6 = load i32, ptr %tm_mday, align 4, !tbaa !190
  %tm_mday9 = getelementptr inbounds %struct.tm, ptr %tm1, i64 0, i32 3
  %7 = load i32, ptr %tm_mday9, align 4, !tbaa !190
  %cmp10 = icmp eq i32 %6, %7
  %tm_mon = getelementptr inbounds %struct.tm, ptr %tm0, i64 0, i32 4
  %8 = load i32, ptr %tm_mon, align 8, !tbaa !189
  %tm_mon12 = getelementptr inbounds %struct.tm, ptr %tm1, i64 0, i32 4
  %9 = load i32, ptr %tm_mon12, align 8, !tbaa !189
  %cmp13 = icmp eq i32 %8, %9
  %tm_year = getelementptr inbounds %struct.tm, ptr %tm0, i64 0, i32 5
  %10 = load i32, ptr %tm_year, align 4, !tbaa !187
  %tm_year15 = getelementptr inbounds %struct.tm, ptr %tm1, i64 0, i32 5
  %11 = load i32, ptr %tm_year15, align 4, !tbaa !187
  %cmp16 = icmp eq i32 %10, %11
  %brmerge = select i1 %cmp, i1 true, i1 %cmp4
  %brmerge115 = select i1 %brmerge, i1 true, i1 %cmp7
  %not.brmerge115 = xor i1 %brmerge115, true
  %not.brmerge116 = select i1 %not.brmerge115, i1 %cmp10, i1 false
  %12 = select i1 %not.brmerge116, i1 %cmp13, i1 false
  %spec.select118 = select i1 %12, i1 %cmp16, i1 false
  %13 = getelementptr i8, ptr %pc, i64 225
  %pc.val = load i8, ptr %13, align 1, !tbaa !125, !range !56, !noundef !57
  %tobool.i.not = icmp eq i8 %pc.val, 0
  br i1 %tobool.i.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call27 = tail call ptr @dcgettext(ptr noundef nonnull @.str.117, ptr noundef nonnull @.str.243, i32 noundef 5) #41
  %14 = load ptr, ptr @stderr, align 8, !tbaa !5
  %15 = tail call i64 @fwrite(ptr nonnull @.str.46, i64 6, i64 1, ptr %14) #49
  %16 = load ptr, ptr @stderr, align 8, !tbaa !5
  %call.i = tail call i32 @fputs(ptr noundef %call27, ptr noundef %16) #49
  %call28 = tail call ptr @dcgettext(ptr noundef nonnull @.str.117, ptr noundef nonnull @.str.244, i32 noundef 5) #41
  %17 = call fastcc ptr @debug_strfdatetime(ptr noundef nonnull %tm0, ptr noundef nonnull %pc, ptr noundef nonnull %tmp)
  call void (ptr, ...) @dbg_printf(ptr noundef %call28, ptr noundef nonnull %tmp)
  %call30 = call ptr @dcgettext(ptr noundef nonnull @.str.117, ptr noundef nonnull @.str.245, i32 noundef 5) #41
  %18 = call fastcc ptr @debug_strfdatetime(ptr noundef nonnull %tm1, ptr noundef nonnull %pc, ptr noundef nonnull %tmp)
  call void (ptr, ...) @dbg_printf(ptr noundef %call30, ptr noundef nonnull %tmp)
  %cond = select i1 %cmp16, ptr @.str.30.141, ptr @.str.247
  %cond36 = select i1 %cmp13, ptr @.str.30.141, ptr @.str.248
  %cond38 = select i1 %cmp10, ptr @.str.30.141, ptr @.str.248
  %cond40 = select i1 %cmp7, ptr @.str.30.141, ptr @.str.248
  %cond42 = select i1 %cmp4, ptr @.str.248, ptr @.str.30.141
  %cond44 = select i1 %cmp, ptr @.str.248, ptr @.str.30.141
  %call45 = call i32 (ptr, i64, i32, i64, ptr, ...) @__snprintf_chk(ptr noundef nonnull %tmp, i64 noundef 100, i32 noundef 1, i64 noundef 100, ptr noundef nonnull @.str.246, ptr noundef nonnull %cond, ptr noundef nonnull %cond36, ptr noundef nonnull %cond38, ptr noundef nonnull %cond40, ptr noundef nonnull %cond42, ptr noundef nonnull %cond44) #41
  %cmp46 = icmp sgt i32 %call45, -1
  br i1 %cmp46, label %if.then47, label %if.end61

if.then47:                                        ; preds = %if.end
  %spec.store.select = call i32 @llvm.umin.i32(i32 %call45, i32 99)
  %19 = call i32 @llvm.umin.i32(i32 %call45, i32 99)
  %umin = zext nneg i32 %19 to i64
  %20 = sub nsw i32 %19, %spec.store.select
  br label %while.cond

while.cond:                                       ; preds = %land.rhs54, %if.then47
  %indvars.iv = phi i64 [ %indvars.iv.next, %land.rhs54 ], [ %umin, %if.then47 ]
  %cmp52 = icmp sgt i64 %indvars.iv, 0
  br i1 %cmp52, label %land.rhs54, label %while.end

land.rhs54:                                       ; preds = %while.cond
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %arrayidx = getelementptr inbounds [100 x i8], ptr %tmp, i64 0, i64 %indvars.iv.next
  %21 = load i8, ptr %arrayidx, align 1, !tbaa !14
  %cmp56 = icmp eq i8 %21, 32
  br i1 %cmp56, label %while.cond, label %while.end.split.loop.exit123, !llvm.loop !203

while.end.split.loop.exit123:                     ; preds = %land.rhs54
  %22 = trunc i64 %indvars.iv to i32
  br label %while.end

while.end:                                        ; preds = %while.end.split.loop.exit123, %while.cond
  %i.0.lcssa = phi i32 [ %22, %while.end.split.loop.exit123 ], [ %20, %while.cond ]
  %idxprom59 = zext nneg i32 %i.0.lcssa to i64
  %arrayidx60 = getelementptr inbounds [100 x i8], ptr %tmp, i64 0, i64 %idxprom59
  store i8 0, ptr %arrayidx60, align 1, !tbaa !14
  br label %if.end61

if.end61:                                         ; preds = %while.end, %if.end
  call void (ptr, ...) @dbg_printf(ptr noundef nonnull @.str.249, ptr noundef nonnull %tmp)
  %call63 = call ptr @dcgettext(ptr noundef nonnull @.str.117, ptr noundef nonnull @.str.250, i32 noundef 5) #41
  %23 = load ptr, ptr @stderr, align 8, !tbaa !5
  %24 = call i64 @fwrite(ptr nonnull @.str.46, i64 6, i64 1, ptr %23) #49
  %25 = load ptr, ptr @stderr, align 8, !tbaa !5
  %call.i119 = call i32 @fputs(ptr noundef %call63, ptr noundef %25) #49
  br i1 %spec.select118, label %if.then65, label %if.end67

if.then65:                                        ; preds = %if.end61
  %call66 = call ptr @dcgettext(ptr noundef nonnull @.str.117, ptr noundef nonnull @.str.251, i32 noundef 5) #41
  %26 = load ptr, ptr @stderr, align 8, !tbaa !5
  %27 = call i64 @fwrite(ptr nonnull @.str.46, i64 6, i64 1, ptr %26) #49
  %28 = load ptr, ptr @stderr, align 8, !tbaa !5
  %call.i120 = call i32 @fputs(ptr noundef %call66, ptr noundef %28) #49
  br label %if.end67

if.end67:                                         ; preds = %if.then65, %if.end61
  %brmerge117 = select i1 %cmp10, i1 true, i1 %cmp13
  br i1 %brmerge117, label %if.end73, label %if.then71

if.then71:                                        ; preds = %if.end67
  %call72 = call ptr @dcgettext(ptr noundef nonnull @.str.117, ptr noundef nonnull @.str.252, i32 noundef 5) #41
  %29 = load ptr, ptr @stderr, align 8, !tbaa !5
  %30 = call i64 @fwrite(ptr nonnull @.str.46, i64 6, i64 1, ptr %29) #49
  %31 = load ptr, ptr @stderr, align 8, !tbaa !5
  %call.i121 = call i32 @fputs(ptr noundef %call72, ptr noundef %31) #49
  br label %if.end73

if.end73:                                         ; preds = %if.then71, %if.end67
  %call74 = call ptr @dcgettext(ptr noundef nonnull @.str.117, ptr noundef nonnull @.str.253, i32 noundef 5) #41
  %32 = load ptr, ptr @stderr, align 8, !tbaa !5
  %33 = call i64 @fwrite(ptr nonnull @.str.46, i64 6, i64 1, ptr %32) #49
  %34 = load ptr, ptr @stderr, align 8, !tbaa !5
  %call.i122 = call i32 @fputs(ptr noundef %call74, ptr noundef %34) #49
  %.str.255..str.256 = select i1 %time_zone_seen, ptr @.str.255, ptr @.str.256
  %call78 = call ptr @dcgettext(ptr noundef nonnull @.str.117, ptr noundef nonnull %.str.255..str.256, i32 noundef 5) #41
  call void (ptr, ...) @dbg_printf(ptr noundef nonnull @.str.254, ptr noundef %call78)
  br label %cleanup

cleanup:                                          ; preds = %if.end73, %entry
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %tmp) #41
  ret void
}

; Function Attrs: nofree nounwind uwtable
define internal fastcc noundef ptr @str_days(ptr nocapture noundef readonly %pc, ptr noundef returned %buffer) unnamed_addr #37 {
entry:
  %debug_ordinal_day_seen = getelementptr inbounds %struct.parser_control, ptr %pc, i64 0, i32 30
  %0 = load i8, ptr %debug_ordinal_day_seen, align 8, !tbaa !163, !range !56, !noundef !57
  %tobool.not = icmp eq i8 %0, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %day_ordinal = getelementptr inbounds %struct.parser_control, ptr %pc, i64 0, i32 1
  %1 = load i64, ptr %day_ordinal, align 8, !tbaa !161
  %2 = add i64 %1, 1
  %or.cond57 = icmp ult i64 %2, 14
  br i1 %or.cond57, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then
  %arrayidx = getelementptr inbounds [14 x [11 x i8]], ptr @str_days.ordinal_values, i64 0, i64 %2
  %call = tail call i32 (ptr, i64, i32, i64, ptr, ...) @__snprintf_chk(ptr noundef %buffer, i64 noundef 100, i32 noundef 1, i64 noundef -1, ptr noundef nonnull @.str.33.138, ptr noundef nonnull %arrayidx) #41
  br label %if.end

cond.false:                                       ; preds = %if.then
  %call6 = tail call i32 (ptr, i64, i32, i64, ptr, ...) @__snprintf_chk(ptr noundef %buffer, i64 noundef 100, i32 noundef 1, i64 noundef -1, ptr noundef nonnull @.str.34.139, i64 noundef %1) #41
  br label %if.end

if.else:                                          ; preds = %entry
  store i8 0, ptr %buffer, align 1, !tbaa !14
  br label %if.end

if.end:                                           ; preds = %if.else, %cond.false, %cond.true
  %len.0 = phi i32 [ 0, %if.else ], [ %call, %cond.true ], [ %call6, %cond.false ]
  %day_number = getelementptr inbounds %struct.parser_control, ptr %pc, i64 0, i32 2
  %3 = load i32, ptr %day_number, align 8, !tbaa !162
  %cmp8 = icmp sgt i32 %3, -1
  br i1 %cmp8, label %land.lhs.true10, label %if.end33

land.lhs.true10:                                  ; preds = %if.end
  %cmp12 = icmp ult i32 %3, 7
  %cmp15 = icmp sgt i32 %len.0, -1
  %or.cond = select i1 %cmp12, i1 %cmp15, i1 false
  %cmp18 = icmp slt i32 %len.0, 100
  %or.cond58 = select i1 %or.cond, i1 %cmp18, i1 false
  br i1 %or.cond58, label %if.then20, label %if.end33

if.then20:                                        ; preds = %land.lhs.true10
  %idx.ext = zext nneg i32 %len.0 to i64
  %add.ptr = getelementptr inbounds i8, ptr %buffer, i64 %idx.ext
  %sub = sub nuw nsw i32 100, %len.0
  %conv21 = zext nneg i32 %sub to i64
  %cmp24 = icmp eq i32 %len.0, 0
  %idxprom = zext i1 %cmp24 to i64
  %arrayidx26 = getelementptr inbounds [4 x i8], ptr @.str.35, i64 0, i64 %idxprom
  %idxprom28 = zext nneg i32 %3 to i64
  %arrayidx29 = getelementptr inbounds [7 x [4 x i8]], ptr @str_days.days_values, i64 0, i64 %idxprom28
  %call31 = tail call i32 (ptr, i64, i32, i64, ptr, ...) @__snprintf_chk(ptr noundef %add.ptr, i64 noundef %conv21, i32 noundef 1, i64 noundef -1, ptr noundef nonnull %arrayidx26, ptr noundef nonnull %arrayidx29) #41
  br label %if.end33

if.end33:                                         ; preds = %if.then20, %land.lhs.true10, %if.end
  ret ptr %buffer
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef ptr @debug_strfdatetime(ptr noundef %tm, ptr noundef readonly %pc, ptr noundef returned %buf) unnamed_addr #6 {
entry:
  %time_zone_buf = alloca [27 x i8], align 16
  %call = tail call i64 @strftime(ptr noundef %buf, i64 noundef 100, ptr noundef nonnull @.str.257, ptr noundef %tm) #41
  %tobool.not = icmp ne ptr %pc, null
  %conv1 = trunc i64 %call to i32
  %cmp = icmp slt i32 %conv1, 100
  %or.cond = select i1 %tobool.not, i1 %cmp, i1 false
  br i1 %or.cond, label %land.lhs.true3, label %if.end18

land.lhs.true3:                                   ; preds = %entry
  %zones_seen = getelementptr inbounds %struct.parser_control, ptr %pc, i64 0, i32 21
  %0 = load i64, ptr %zones_seen, align 8, !tbaa !144
  %tobool4.not = icmp eq i64 %0, 0
  br i1 %tobool4.not, label %if.end18, label %if.then

if.then:                                          ; preds = %land.lhs.true3
  %time_zone = getelementptr inbounds %struct.parser_control, ptr %pc, i64 0, i32 4
  %1 = load i32, ptr %time_zone, align 8, !tbaa !150
  call void @llvm.lifetime.start.p0(i64 27, ptr nonnull %time_zone_buf) #41
  %sext = shl i64 %call, 32
  %idxprom = ashr exact i64 %sext, 32
  %arrayidx = getelementptr inbounds i8, ptr %buf, i64 %idxprom
  %sext33 = sub i64 429496729600, %sext
  %conv13 = ashr exact i64 %sext33, 32
  %cmp.i = icmp slt i32 %1, 0
  %div.i = sdiv i32 %1, 3600
  %2 = tail call i32 @llvm.abs.i32(i32 %div.i, i1 true)
  %conv1.i = select i1 %cmp.i, i32 45, i32 43
  %call.i = call i32 (ptr, i32, i64, ptr, ...) @__sprintf_chk(ptr noundef nonnull %time_zone_buf, i32 noundef 1, i64 noundef 27, ptr noundef nonnull @.str.36, i32 noundef %conv1.i, i32 noundef %2) #41
  %rem.i = srem i32 %1, 3600
  %cmp2.not.i = icmp eq i32 %rem.i, 0
  br i1 %cmp2.not.i, label %time_zone_str.exit, label %if.then.i

if.then.i:                                        ; preds = %if.then
  %3 = call i32 @llvm.abs.i32(i32 %rem.i, i1 true)
  %idx.ext.i = sext i32 %call.i to i64
  %add.ptr.i = getelementptr inbounds i8, ptr %time_zone_buf, i64 %idx.ext.i
  %div4.lhs.trunc.i = trunc i32 %3 to i16
  %div441.i = udiv i16 %div4.lhs.trunc.i, 60
  %rem542.i = urem i16 %div4.lhs.trunc.i, 60
  %incdec.ptr.i = getelementptr inbounds i8, ptr %add.ptr.i, i64 1
  store i8 58, ptr %add.ptr.i, align 1, !tbaa !14
  %div643.i = udiv i16 %div4.lhs.trunc.i, 600
  %4 = trunc i16 %div643.i to i8
  %conv7.i = add nuw nsw i8 %4, 48
  %incdec.ptr8.i = getelementptr inbounds i8, ptr %add.ptr.i, i64 2
  store i8 %conv7.i, ptr %incdec.ptr.i, align 1, !tbaa !14
  %rem9.lhs.trunc.i = trunc i16 %div441.i to i8
  %rem944.i = urem i8 %rem9.lhs.trunc.i, 10
  %conv11.i = or disjoint i8 %rem944.i, 48
  %incdec.ptr12.i = getelementptr inbounds i8, ptr %add.ptr.i, i64 3
  store i8 %conv11.i, ptr %incdec.ptr8.i, align 1, !tbaa !14
  %tobool.not.i = icmp eq i16 %rem542.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then13.i

if.then13.i:                                      ; preds = %if.then.i
  %incdec.ptr14.i = getelementptr inbounds i8, ptr %add.ptr.i, i64 4
  store i8 58, ptr %incdec.ptr12.i, align 1, !tbaa !14
  %div15.lhs.trunc.i = trunc i16 %rem542.i to i8
  %div1545.i = udiv i8 %div15.lhs.trunc.i, 10
  %conv17.i = or disjoint i8 %div1545.i, 48
  %incdec.ptr18.i = getelementptr inbounds i8, ptr %add.ptr.i, i64 5
  store i8 %conv17.i, ptr %incdec.ptr14.i, align 1, !tbaa !14
  %rem1946.i = urem i8 %div15.lhs.trunc.i, 10
  %conv21.i = or disjoint i8 %rem1946.i, 48
  %incdec.ptr22.i = getelementptr inbounds i8, ptr %add.ptr.i, i64 6
  store i8 %conv21.i, ptr %incdec.ptr18.i, align 1, !tbaa !14
  br label %if.end.i

if.end.i:                                         ; preds = %if.then13.i, %if.then.i
  %p.0.i = phi ptr [ %incdec.ptr22.i, %if.then13.i ], [ %incdec.ptr12.i, %if.then.i ]
  store i8 0, ptr %p.0.i, align 1, !tbaa !14
  br label %time_zone_str.exit

time_zone_str.exit:                               ; preds = %if.end.i, %if.then
  %call17 = call i32 (ptr, i64, i32, i64, ptr, ...) @__snprintf_chk(ptr noundef %arrayidx, i64 noundef %conv13, i32 noundef 1, i64 noundef -1, ptr noundef nonnull @.str.258, ptr noundef nonnull %time_zone_buf) #41
  call void @llvm.lifetime.end.p0(i64 27, ptr nonnull %time_zone_buf) #41
  br label %if.end18

if.end18:                                         ; preds = %time_zone_str.exit, %land.lhs.true3, %entry
  ret ptr %buf
}

; Function Attrs: nofree nounwind uwtable
define internal fastcc noundef ptr @debug_strfdate(ptr nocapture noundef readonly %tm, ptr noundef returned %buf) unnamed_addr #37 {
entry:
  %tm_year_buf = alloca [13 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 13, ptr nonnull %tm_year_buf) #41
  %tm_year = getelementptr inbounds %struct.tm, ptr %tm, i64 0, i32 5
  %0 = load i32, ptr %tm_year, align 4, !tbaa !187
  %cmp.i = icmp sgt i32 %0, -1901
  %idxprom.i = zext i1 %cmp.i to i64
  %arrayidx.i = getelementptr inbounds [10 x i8], ptr @.str.260, i64 0, i64 %idxprom.i
  %div.i = sdiv i32 %0, 100
  %add.i = add nsw i32 %div.i, 19
  %1 = tail call i32 @llvm.abs.i32(i32 %add.i, i1 true)
  %rem.i = srem i32 %0, 100
  %2 = tail call i32 @llvm.abs.i32(i32 %rem.i, i1 true)
  %call.i = call i32 (ptr, i32, i64, ptr, ...) @__sprintf_chk(ptr noundef nonnull %tm_year_buf, i32 noundef 1, i64 noundef 13, ptr noundef nonnull %arrayidx.i, i32 noundef %1, i32 noundef %2) #41
  %tm_mon = getelementptr inbounds %struct.tm, ptr %tm, i64 0, i32 4
  %3 = load i32, ptr %tm_mon, align 8, !tbaa !189
  %add = add nsw i32 %3, 1
  %tm_mday = getelementptr inbounds %struct.tm, ptr %tm, i64 0, i32 3
  %4 = load i32, ptr %tm_mday, align 4, !tbaa !190
  %call1 = call i32 (ptr, i64, i32, i64, ptr, ...) @__snprintf_chk(ptr noundef %buf, i64 noundef 100, i32 noundef 1, i64 noundef -1, ptr noundef nonnull @.str.259, ptr noundef nonnull %tm_year_buf, i32 noundef %add, i32 noundef %4) #41
  call void @llvm.lifetime.end.p0(i64 13, ptr nonnull %tm_year_buf) #41
  ret ptr %buf
}

; Function Attrs: nofree nounwind uwtable
define internal fastcc noundef ptr @tm_year_str(i32 noundef %tm_year, ptr noundef returned %buf) unnamed_addr #37 {
entry:
  %cmp = icmp sgt i32 %tm_year, -1901
  %idxprom = zext i1 %cmp to i64
  %arrayidx = getelementptr inbounds [10 x i8], ptr @.str.260, i64 0, i64 %idxprom
  %div = sdiv i32 %tm_year, 100
  %add = add nsw i32 %div, 19
  %0 = tail call i32 @llvm.abs.i32(i32 %add, i1 true)
  %rem = srem i32 %tm_year, 100
  %1 = tail call i32 @llvm.abs.i32(i32 %rem, i1 true)
  %call = tail call i32 (ptr, i32, i64, ptr, ...) @__sprintf_chk(ptr noundef %buf, i32 noundef 1, i64 noundef -1, ptr noundef nonnull %arrayidx, i32 noundef %0, i32 noundef %1) #41
  ret ptr %buf
}

; Function Attrs: nounwind
declare ptr @gmtime_r(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare i64 @strftime(ptr noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #23

; Function Attrs: nounwind uwtable
define dso_local noundef zeroext i1 @parse_datetime(ptr noundef %result, ptr noundef %p, ptr noundef %now) local_unnamed_addr #6 {
entry:
  %call = tail call ptr @getenv(ptr noundef nonnull @.str.20.152) #41
  %call1 = tail call ptr @tzalloc(ptr noundef %call) #41
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call2 = tail call fastcc zeroext i1 @parse_datetime_body(ptr noundef %result, ptr noundef %p, ptr noundef %now, i32 noundef 0, ptr noundef nonnull %call1, ptr noundef %call)
  tail call void @tzfree(ptr noundef nonnull %call1) #41
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry
  %retval.0 = phi i1 [ %call2, %if.end ], [ false, %entry ]
  ret i1 %retval.0
}

; Function Attrs: nofree nounwind memory(read)
declare noundef ptr @getenv(ptr nocapture noundef) local_unnamed_addr #39

; Function Attrs: nounwind uwtable
define dso_local noalias ptr @read_file_system_list(i1 noundef zeroext %need_fs_type) local_unnamed_addr #6 {
entry:
  %mount_list = alloca ptr, align 8
  %line = alloca ptr, align 8
  %buf_size = alloca i64, align 8
  %devmaj = alloca i32, align 4
  %devmin = alloca i32, align 4
  %mntroot_s = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %mount_list)
  %call = tail call noalias ptr @rpl_fopen(ptr noundef nonnull @.str.185, ptr noundef nonnull @.str.1.186) #41
  %cmp.not = icmp eq ptr %call, null
  br i1 %cmp.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %line) #41
  store ptr null, ptr %line, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %buf_size) #41
  store i64 0, ptr %buf_size, align 8, !tbaa !28
  %call.i688 = call i64 @__getdelim(ptr noundef nonnull %line, ptr noundef nonnull %buf_size, i32 noundef 10, ptr noundef nonnull %call) #41
  %cmp2.not689 = icmp eq i64 %call.i688, -1
  br i1 %cmp2.not689, label %while.end, label %while.body

while.body:                                       ; preds = %cleanup183, %if.then
  %mtail.0690 = phi ptr [ %mtail.6, %cleanup183 ], [ %mount_list, %if.then ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %devmaj) #41
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %devmin) #41
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mntroot_s) #41
  %0 = load ptr, ptr %line, align 8, !tbaa !5
  %call3 = call i32 (ptr, ptr, ...) @__isoc23_sscanf(ptr noundef %0, ptr noundef nonnull @.str.2.187, ptr noundef nonnull %devmaj, ptr noundef nonnull %devmin, ptr noundef nonnull %mntroot_s) #41
  %1 = add i32 %call3, -4
  %or.cond = icmp ult i32 %1, -2
  br i1 %or.cond, label %cleanup183, label %if.end, !llvm.loop !204

if.end:                                           ; preds = %while.body
  %2 = load ptr, ptr %line, align 8, !tbaa !5
  %3 = load i32, ptr %mntroot_s, align 4, !tbaa !9
  %idx.ext = sext i32 %3 to i64
  %add.ptr = getelementptr inbounds i8, ptr %2, i64 %idx.ext
  %call.i546 = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %add.ptr, i32 noundef 32) #42
  %tobool.not.i = icmp eq ptr %call.i546, null
  br i1 %tobool.not.i, label %cleanup183, label %if.end10

if.end10:                                         ; preds = %if.end
  store i8 0, ptr %call.i546, align 1, !tbaa !14
  %add.ptr11 = getelementptr inbounds i8, ptr %call.i546, i64 1
  %call.i547 = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %add.ptr11, i32 noundef 32) #42
  %tobool.not.i548 = icmp eq ptr %call.i547, null
  br i1 %tobool.not.i548, label %cleanup183, label %if.end15

if.end15:                                         ; preds = %if.end10
  store i8 0, ptr %call.i547, align 1, !tbaa !14
  %add.ptr16 = getelementptr inbounds i8, ptr %call.i547, i64 1
  %call17 = call ptr @strstr(ptr noundef nonnull dereferenceable(1) %add.ptr16, ptr noundef nonnull dereferenceable(1) @.str.3.188) #42
  %tobool18.not = icmp eq ptr %call17, null
  br i1 %tobool18.not, label %cleanup183, label %if.end20, !llvm.loop !204

if.end20:                                         ; preds = %if.end15
  %add.ptr21 = getelementptr inbounds i8, ptr %call17, i64 3
  %call.i551 = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %add.ptr21, i32 noundef 32) #42
  %tobool.not.i552 = icmp eq ptr %call.i551, null
  br i1 %tobool.not.i552, label %cleanup183, label %if.end25

if.end25:                                         ; preds = %if.end20
  store i8 0, ptr %call.i551, align 1, !tbaa !14
  %add.ptr26 = getelementptr inbounds i8, ptr %call.i551, i64 1
  %call.i555 = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %add.ptr26, i32 noundef 32) #42
  %tobool.not.i556 = icmp eq ptr %call.i555, null
  br i1 %tobool.not.i556, label %cleanup183, label %if.end30

if.end30:                                         ; preds = %if.end25
  store i8 0, ptr %call.i555, align 1, !tbaa !14
  %call.i559 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %add.ptr26) #42
  %add.i = add i64 %call.i559, 1
  %cmp97.not.i = icmp eq i64 %add.i, 0
  br i1 %cmp97.not.i, label %unescape_tab.exit, label %for.body.i

for.body.i:                                       ; preds = %for.inc.i, %if.end30
  %i.099.i = phi i64 [ %inc62.i, %for.inc.i ], [ 0, %if.end30 ]
  %j.098.i = phi i64 [ %j.1.i, %for.inc.i ], [ 0, %if.end30 ]
  %arrayidx.i = getelementptr inbounds i8, ptr %add.ptr26, i64 %i.099.i
  %4 = load i8, ptr %arrayidx.i, align 1, !tbaa !14
  %cmp1.i = icmp eq i8 %4, 92
  %add3.i = add i64 %i.099.i, 4
  %cmp4.i = icmp ult i64 %add3.i, %add.i
  %or.cond.i = and i1 %cmp4.i, %cmp1.i
  br i1 %or.cond.i, label %land.lhs.true6.i, label %for.inc.i

land.lhs.true6.i:                                 ; preds = %for.body.i
  %arrayidx8.i = getelementptr i8, ptr %arrayidx.i, i64 1
  %5 = load i8, ptr %arrayidx8.i, align 1, !tbaa !14
  %6 = and i8 %5, -4
  %or.cond94.i = icmp eq i8 %6, 48
  br i1 %or.cond94.i, label %land.lhs.true18.i, label %for.inc.i

land.lhs.true18.i:                                ; preds = %land.lhs.true6.i
  %arrayidx20.i = getelementptr i8, ptr %arrayidx.i, i64 2
  %7 = load i8, ptr %arrayidx20.i, align 1, !tbaa !14
  %8 = and i8 %7, -8
  %or.cond95.i = icmp eq i8 %8, 48
  br i1 %or.cond95.i, label %land.lhs.true30.i, label %for.inc.i

land.lhs.true30.i:                                ; preds = %land.lhs.true18.i
  %add31.i = add i64 %i.099.i, 3
  %arrayidx32.i = getelementptr inbounds i8, ptr %add.ptr26, i64 %add31.i
  %9 = load i8, ptr %arrayidx32.i, align 1, !tbaa !14
  %10 = and i8 %9, -8
  %or.cond96.i = icmp eq i8 %10, 48
  br i1 %or.cond96.i, label %if.then.i560, label %for.inc.i

if.then.i560:                                     ; preds = %land.lhs.true30.i
  %mul.i = shl i8 %5, 6
  %11 = shl i8 %7, 3
  %mul49.i = and i8 %11, 56
  %add50.i = or disjoint i8 %mul49.i, %mul.i
  %narrow93.i = add nsw i8 %9, -48
  %add55.i = or disjoint i8 %narrow93.i, %add50.i
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then.i560, %land.lhs.true30.i, %land.lhs.true18.i, %land.lhs.true6.i, %for.body.i
  %add55.sink.i = phi i8 [ %add55.i, %if.then.i560 ], [ 92, %land.lhs.true30.i ], [ 92, %land.lhs.true18.i ], [ 92, %land.lhs.true6.i ], [ %4, %for.body.i ]
  %i.1.i = phi i64 [ %add31.i, %if.then.i560 ], [ %i.099.i, %land.lhs.true30.i ], [ %i.099.i, %land.lhs.true18.i ], [ %i.099.i, %land.lhs.true6.i ], [ %i.099.i, %for.body.i ]
  %arrayidx57.i = getelementptr inbounds i8, ptr %add.ptr26, i64 %j.098.i
  store i8 %add55.sink.i, ptr %arrayidx57.i, align 1, !tbaa !14
  %j.1.i = add i64 %j.098.i, 1
  %inc62.i = add i64 %i.1.i, 1
  %cmp.i = icmp ult i64 %inc62.i, %add.i
  br i1 %cmp.i, label %for.body.i, label %unescape_tab.exit, !llvm.loop !205

unescape_tab.exit:                                ; preds = %for.inc.i, %if.end30
  %call.i561 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %add.ptr11) #42
  %add.i562 = add i64 %call.i561, 1
  %cmp97.not.i563 = icmp eq i64 %add.i562, 0
  br i1 %cmp97.not.i563, label %unescape_tab.exit595, label %for.body.i564

for.body.i564:                                    ; preds = %for.inc.i572, %unescape_tab.exit
  %i.099.i565 = phi i64 [ %inc62.i577, %for.inc.i572 ], [ 0, %unescape_tab.exit ]
  %j.098.i566 = phi i64 [ %j.1.i576, %for.inc.i572 ], [ 0, %unescape_tab.exit ]
  %arrayidx.i567 = getelementptr inbounds i8, ptr %add.ptr11, i64 %i.099.i565
  %12 = load i8, ptr %arrayidx.i567, align 1, !tbaa !14
  %cmp1.i568 = icmp eq i8 %12, 92
  %add3.i569 = add i64 %i.099.i565, 4
  %cmp4.i570 = icmp ult i64 %add3.i569, %add.i562
  %or.cond.i571 = and i1 %cmp4.i570, %cmp1.i568
  br i1 %or.cond.i571, label %land.lhs.true6.i579, label %for.inc.i572

land.lhs.true6.i579:                              ; preds = %for.body.i564
  %arrayidx8.i580 = getelementptr i8, ptr %arrayidx.i567, i64 1
  %13 = load i8, ptr %arrayidx8.i580, align 1, !tbaa !14
  %14 = and i8 %13, -4
  %or.cond94.i581 = icmp eq i8 %14, 48
  br i1 %or.cond94.i581, label %land.lhs.true18.i582, label %for.inc.i572

land.lhs.true18.i582:                             ; preds = %land.lhs.true6.i579
  %arrayidx20.i583 = getelementptr i8, ptr %arrayidx.i567, i64 2
  %15 = load i8, ptr %arrayidx20.i583, align 1, !tbaa !14
  %16 = and i8 %15, -8
  %or.cond95.i584 = icmp eq i8 %16, 48
  br i1 %or.cond95.i584, label %land.lhs.true30.i585, label %for.inc.i572

land.lhs.true30.i585:                             ; preds = %land.lhs.true18.i582
  %add31.i586 = add i64 %i.099.i565, 3
  %arrayidx32.i587 = getelementptr inbounds i8, ptr %add.ptr11, i64 %add31.i586
  %17 = load i8, ptr %arrayidx32.i587, align 1, !tbaa !14
  %18 = and i8 %17, -8
  %or.cond96.i588 = icmp eq i8 %18, 48
  br i1 %or.cond96.i588, label %if.then.i589, label %for.inc.i572

if.then.i589:                                     ; preds = %land.lhs.true30.i585
  %mul.i590 = shl i8 %13, 6
  %19 = shl i8 %15, 3
  %mul49.i591 = and i8 %19, 56
  %add50.i592 = or disjoint i8 %mul49.i591, %mul.i590
  %narrow93.i593 = add nsw i8 %17, -48
  %add55.i594 = or disjoint i8 %narrow93.i593, %add50.i592
  br label %for.inc.i572

for.inc.i572:                                     ; preds = %if.then.i589, %land.lhs.true30.i585, %land.lhs.true18.i582, %land.lhs.true6.i579, %for.body.i564
  %add55.sink.i573 = phi i8 [ %add55.i594, %if.then.i589 ], [ 92, %land.lhs.true30.i585 ], [ 92, %land.lhs.true18.i582 ], [ 92, %land.lhs.true6.i579 ], [ %12, %for.body.i564 ]
  %i.1.i574 = phi i64 [ %add31.i586, %if.then.i589 ], [ %i.099.i565, %land.lhs.true30.i585 ], [ %i.099.i565, %land.lhs.true18.i582 ], [ %i.099.i565, %land.lhs.true6.i579 ], [ %i.099.i565, %for.body.i564 ]
  %arrayidx57.i575 = getelementptr inbounds i8, ptr %add.ptr11, i64 %j.098.i566
  store i8 %add55.sink.i573, ptr %arrayidx57.i575, align 1, !tbaa !14
  %j.1.i576 = add i64 %j.098.i566, 1
  %inc62.i577 = add i64 %i.1.i574, 1
  %cmp.i578 = icmp ult i64 %inc62.i577, %add.i562
  br i1 %cmp.i578, label %for.body.i564, label %unescape_tab.exit595, !llvm.loop !205

unescape_tab.exit595:                             ; preds = %for.inc.i572, %unescape_tab.exit
  %call.i596 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %add.ptr) #42
  %add.i597 = add i64 %call.i596, 1
  %cmp97.not.i598 = icmp eq i64 %add.i597, 0
  br i1 %cmp97.not.i598, label %unescape_tab.exit630, label %for.body.i599

for.body.i599:                                    ; preds = %for.inc.i607, %unescape_tab.exit595
  %i.099.i600 = phi i64 [ %inc62.i612, %for.inc.i607 ], [ 0, %unescape_tab.exit595 ]
  %j.098.i601 = phi i64 [ %j.1.i611, %for.inc.i607 ], [ 0, %unescape_tab.exit595 ]
  %arrayidx.i602 = getelementptr inbounds i8, ptr %add.ptr, i64 %i.099.i600
  %20 = load i8, ptr %arrayidx.i602, align 1, !tbaa !14
  %cmp1.i603 = icmp eq i8 %20, 92
  %add3.i604 = add i64 %i.099.i600, 4
  %cmp4.i605 = icmp ult i64 %add3.i604, %add.i597
  %or.cond.i606 = and i1 %cmp4.i605, %cmp1.i603
  br i1 %or.cond.i606, label %land.lhs.true6.i614, label %for.inc.i607

land.lhs.true6.i614:                              ; preds = %for.body.i599
  %arrayidx8.i615 = getelementptr i8, ptr %arrayidx.i602, i64 1
  %21 = load i8, ptr %arrayidx8.i615, align 1, !tbaa !14
  %22 = and i8 %21, -4
  %or.cond94.i616 = icmp eq i8 %22, 48
  br i1 %or.cond94.i616, label %land.lhs.true18.i617, label %for.inc.i607

land.lhs.true18.i617:                             ; preds = %land.lhs.true6.i614
  %arrayidx20.i618 = getelementptr i8, ptr %arrayidx.i602, i64 2
  %23 = load i8, ptr %arrayidx20.i618, align 1, !tbaa !14
  %24 = and i8 %23, -8
  %or.cond95.i619 = icmp eq i8 %24, 48
  br i1 %or.cond95.i619, label %land.lhs.true30.i620, label %for.inc.i607

land.lhs.true30.i620:                             ; preds = %land.lhs.true18.i617
  %add31.i621 = add i64 %i.099.i600, 3
  %arrayidx32.i622 = getelementptr inbounds i8, ptr %add.ptr, i64 %add31.i621
  %25 = load i8, ptr %arrayidx32.i622, align 1, !tbaa !14
  %26 = and i8 %25, -8
  %or.cond96.i623 = icmp eq i8 %26, 48
  br i1 %or.cond96.i623, label %if.then.i624, label %for.inc.i607

if.then.i624:                                     ; preds = %land.lhs.true30.i620
  %mul.i625 = shl i8 %21, 6
  %27 = shl i8 %23, 3
  %mul49.i626 = and i8 %27, 56
  %add50.i627 = or disjoint i8 %mul49.i626, %mul.i625
  %narrow93.i628 = add nsw i8 %25, -48
  %add55.i629 = or disjoint i8 %narrow93.i628, %add50.i627
  br label %for.inc.i607

for.inc.i607:                                     ; preds = %if.then.i624, %land.lhs.true30.i620, %land.lhs.true18.i617, %land.lhs.true6.i614, %for.body.i599
  %add55.sink.i608 = phi i8 [ %add55.i629, %if.then.i624 ], [ 92, %land.lhs.true30.i620 ], [ 92, %land.lhs.true18.i617 ], [ 92, %land.lhs.true6.i614 ], [ %20, %for.body.i599 ]
  %i.1.i609 = phi i64 [ %add31.i621, %if.then.i624 ], [ %i.099.i600, %land.lhs.true30.i620 ], [ %i.099.i600, %land.lhs.true18.i617 ], [ %i.099.i600, %land.lhs.true6.i614 ], [ %i.099.i600, %for.body.i599 ]
  %arrayidx57.i610 = getelementptr inbounds i8, ptr %add.ptr, i64 %j.098.i601
  store i8 %add55.sink.i608, ptr %arrayidx57.i610, align 1, !tbaa !14
  %j.1.i611 = add i64 %j.098.i601, 1
  %inc62.i612 = add i64 %i.1.i609, 1
  %cmp.i613 = icmp ult i64 %inc62.i612, %add.i597
  br i1 %cmp.i613, label %for.body.i599, label %unescape_tab.exit630, !llvm.loop !205

unescape_tab.exit630:                             ; preds = %for.inc.i607, %unescape_tab.exit595
  %call.i631 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %add.ptr21) #42
  %add.i632 = add i64 %call.i631, 1
  %cmp97.not.i633 = icmp eq i64 %add.i632, 0
  br i1 %cmp97.not.i633, label %unescape_tab.exit665, label %for.body.i634

for.body.i634:                                    ; preds = %for.inc.i642, %unescape_tab.exit630
  %i.099.i635 = phi i64 [ %inc62.i647, %for.inc.i642 ], [ 0, %unescape_tab.exit630 ]
  %j.098.i636 = phi i64 [ %j.1.i646, %for.inc.i642 ], [ 0, %unescape_tab.exit630 ]
  %arrayidx.i637 = getelementptr inbounds i8, ptr %add.ptr21, i64 %i.099.i635
  %28 = load i8, ptr %arrayidx.i637, align 1, !tbaa !14
  %cmp1.i638 = icmp eq i8 %28, 92
  %add3.i639 = add i64 %i.099.i635, 4
  %cmp4.i640 = icmp ult i64 %add3.i639, %add.i632
  %or.cond.i641 = and i1 %cmp4.i640, %cmp1.i638
  br i1 %or.cond.i641, label %land.lhs.true6.i649, label %for.inc.i642

land.lhs.true6.i649:                              ; preds = %for.body.i634
  %arrayidx8.i650 = getelementptr i8, ptr %arrayidx.i637, i64 1
  %29 = load i8, ptr %arrayidx8.i650, align 1, !tbaa !14
  %30 = and i8 %29, -4
  %or.cond94.i651 = icmp eq i8 %30, 48
  br i1 %or.cond94.i651, label %land.lhs.true18.i652, label %for.inc.i642

land.lhs.true18.i652:                             ; preds = %land.lhs.true6.i649
  %arrayidx20.i653 = getelementptr i8, ptr %arrayidx.i637, i64 2
  %31 = load i8, ptr %arrayidx20.i653, align 1, !tbaa !14
  %32 = and i8 %31, -8
  %or.cond95.i654 = icmp eq i8 %32, 48
  br i1 %or.cond95.i654, label %land.lhs.true30.i655, label %for.inc.i642

land.lhs.true30.i655:                             ; preds = %land.lhs.true18.i652
  %add31.i656 = add i64 %i.099.i635, 3
  %arrayidx32.i657 = getelementptr inbounds i8, ptr %add.ptr21, i64 %add31.i656
  %33 = load i8, ptr %arrayidx32.i657, align 1, !tbaa !14
  %34 = and i8 %33, -8
  %or.cond96.i658 = icmp eq i8 %34, 48
  br i1 %or.cond96.i658, label %if.then.i659, label %for.inc.i642

if.then.i659:                                     ; preds = %land.lhs.true30.i655
  %mul.i660 = shl i8 %29, 6
  %35 = shl i8 %31, 3
  %mul49.i661 = and i8 %35, 56
  %add50.i662 = or disjoint i8 %mul49.i661, %mul.i660
  %narrow93.i663 = add nsw i8 %33, -48
  %add55.i664 = or disjoint i8 %narrow93.i663, %add50.i662
  br label %for.inc.i642

for.inc.i642:                                     ; preds = %if.then.i659, %land.lhs.true30.i655, %land.lhs.true18.i652, %land.lhs.true6.i649, %for.body.i634
  %add55.sink.i643 = phi i8 [ %add55.i664, %if.then.i659 ], [ 92, %land.lhs.true30.i655 ], [ 92, %land.lhs.true18.i652 ], [ 92, %land.lhs.true6.i649 ], [ %28, %for.body.i634 ]
  %i.1.i644 = phi i64 [ %add31.i656, %if.then.i659 ], [ %i.099.i635, %land.lhs.true30.i655 ], [ %i.099.i635, %land.lhs.true18.i652 ], [ %i.099.i635, %land.lhs.true6.i649 ], [ %i.099.i635, %for.body.i634 ]
  %arrayidx57.i645 = getelementptr inbounds i8, ptr %add.ptr21, i64 %j.098.i636
  store i8 %add55.sink.i643, ptr %arrayidx57.i645, align 1, !tbaa !14
  %j.1.i646 = add i64 %j.098.i636, 1
  %inc62.i647 = add i64 %i.1.i644, 1
  %cmp.i648 = icmp ult i64 %inc62.i647, %add.i632
  br i1 %cmp.i648, label %for.body.i634, label %unescape_tab.exit665, !llvm.loop !205

unescape_tab.exit665:                             ; preds = %for.inc.i642, %unescape_tab.exit630
  %call31 = call noalias nonnull dereferenceable(56) ptr @xmalloc(i64 noundef 56) #48
  %call32 = call noalias nonnull ptr @xstrdup(ptr noundef nonnull %add.ptr26) #41
  store ptr %call32, ptr %call31, align 8, !tbaa !206
  %call33 = call noalias nonnull ptr @xstrdup(ptr noundef nonnull %add.ptr11) #41
  %me_mountdir = getelementptr inbounds %struct.mount_entry, ptr %call31, i64 0, i32 1
  store ptr %call33, ptr %me_mountdir, align 8, !tbaa !208
  %call34 = call noalias nonnull ptr @xstrdup(ptr noundef %add.ptr) #41
  %me_mntroot = getelementptr inbounds %struct.mount_entry, ptr %call31, i64 0, i32 2
  store ptr %call34, ptr %me_mntroot, align 8, !tbaa !209
  %call35 = call noalias nonnull ptr @xstrdup(ptr noundef nonnull %add.ptr21) #41
  %me_type = getelementptr inbounds %struct.mount_entry, ptr %call31, i64 0, i32 3
  store ptr %call35, ptr %me_type, align 8, !tbaa !210
  %me_type_malloced = getelementptr inbounds %struct.mount_entry, ptr %call31, i64 0, i32 5
  %bf.load = load i8, ptr %me_type_malloced, align 8
  %36 = load i32, ptr %devmaj, align 4, !tbaa !9
  %37 = load i32, ptr %devmin, align 4, !tbaa !9
  %and.i = shl i32 %36, 8
  %38 = and i32 %and.i, 1048320
  %shl.i = zext nneg i32 %38 to i64
  %and1.i = and i32 %36, -4096
  %conv2.i = zext i32 %and1.i to i64
  %shl3.i = shl nuw i64 %conv2.i, 32
  %or.i = or disjoint i64 %shl3.i, %shl.i
  %and4.i = and i32 %37, 255
  %conv5.i = zext nneg i32 %and4.i to i64
  %or7.i = or disjoint i64 %or.i, %conv5.i
  %and8.i = and i32 %37, -256
  %conv9.i = zext i32 %and8.i to i64
  %shl10.i = shl nuw nsw i64 %conv9.i, 12
  %or11.i = or disjoint i64 %or7.i, %shl10.i
  %me_dev = getelementptr inbounds %struct.mount_entry, ptr %call31, i64 0, i32 4
  store i64 %or11.i, ptr %me_dev, align 8, !tbaa !211
  %call38 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %call35, ptr noundef nonnull dereferenceable(7) @.str.4.189) #42
  %cmp39 = icmp eq i32 %call38, 0
  br i1 %cmp39, label %lor.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %unescape_tab.exit665
  %call41 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %call35, ptr noundef nonnull dereferenceable(5) @.str.5.190) #42
  %cmp42 = icmp eq i32 %call41, 0
  br i1 %cmp42, label %lor.end, label %lor.lhs.false43

lor.lhs.false43:                                  ; preds = %lor.lhs.false
  %call45 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %call35, ptr noundef nonnull dereferenceable(6) @.str.6.191) #42
  %cmp46 = icmp eq i32 %call45, 0
  br i1 %cmp46, label %lor.end, label %lor.lhs.false47

lor.lhs.false47:                                  ; preds = %lor.lhs.false43
  %call49 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %call35, ptr noundef nonnull dereferenceable(8) @.str.7.192) #42
  %cmp50 = icmp eq i32 %call49, 0
  br i1 %cmp50, label %lor.end, label %lor.lhs.false51

lor.lhs.false51:                                  ; preds = %lor.lhs.false47
  %call53 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %call35, ptr noundef nonnull dereferenceable(7) @.str.8.193) #42
  %cmp54 = icmp eq i32 %call53, 0
  br i1 %cmp54, label %lor.end, label %lor.lhs.false55

lor.lhs.false55:                                  ; preds = %lor.lhs.false51
  %call57 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %call35, ptr noundef nonnull dereferenceable(8) @.str.9.194) #42
  %cmp58 = icmp eq i32 %call57, 0
  br i1 %cmp58, label %lor.end, label %lor.lhs.false59

lor.lhs.false59:                                  ; preds = %lor.lhs.false55
  %call61 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %call35, ptr noundef nonnull dereferenceable(12) @.str.10.195) #42
  %cmp62 = icmp eq i32 %call61, 0
  br i1 %cmp62, label %lor.end, label %lor.lhs.false63

lor.lhs.false63:                                  ; preds = %lor.lhs.false59
  %call65 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %call35, ptr noundef nonnull dereferenceable(7) @.str.11.196) #42
  %cmp66 = icmp eq i32 %call65, 0
  br i1 %cmp66, label %lor.end, label %lor.lhs.false67

lor.lhs.false67:                                  ; preds = %lor.lhs.false63
  %call69 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %call35, ptr noundef nonnull dereferenceable(11) @.str.12.197) #42
  %cmp70 = icmp eq i32 %call69, 0
  br i1 %cmp70, label %lor.end, label %lor.lhs.false71

lor.lhs.false71:                                  ; preds = %lor.lhs.false67
  %call73 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %call35, ptr noundef nonnull dereferenceable(6) @.str.13.198) #42
  %cmp74 = icmp eq i32 %call73, 0
  br i1 %cmp74, label %lor.end, label %lor.lhs.false75

lor.lhs.false75:                                  ; preds = %lor.lhs.false71
  %call77 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %call35, ptr noundef nonnull dereferenceable(6) @.str.14.199) #42
  %cmp78 = icmp eq i32 %call77, 0
  br i1 %cmp78, label %lor.end, label %lor.lhs.false79

lor.lhs.false79:                                  ; preds = %lor.lhs.false75
  %call81 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %call35, ptr noundef nonnull dereferenceable(7) @.str.15.200) #42
  %cmp82 = icmp eq i32 %call81, 0
  br i1 %cmp82, label %lor.end, label %lor.lhs.false83

lor.lhs.false83:                                  ; preds = %lor.lhs.false79
  %call85 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %call35, ptr noundef nonnull dereferenceable(7) @.str.16.201) #42
  %cmp86 = icmp eq i32 %call85, 0
  br i1 %cmp86, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %lor.lhs.false83
  %call88 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %call35, ptr noundef nonnull dereferenceable(5) @.str.17.202) #42
  %cmp89 = icmp eq i32 %call88, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %lor.lhs.false83, %lor.lhs.false79, %lor.lhs.false75, %lor.lhs.false71, %lor.lhs.false67, %lor.lhs.false63, %lor.lhs.false59, %lor.lhs.false55, %lor.lhs.false51, %lor.lhs.false47, %lor.lhs.false43, %lor.lhs.false, %unescape_tab.exit665
  %39 = phi i1 [ true, %lor.lhs.false83 ], [ true, %lor.lhs.false79 ], [ true, %lor.lhs.false75 ], [ true, %lor.lhs.false71 ], [ true, %lor.lhs.false67 ], [ true, %lor.lhs.false63 ], [ true, %lor.lhs.false59 ], [ true, %lor.lhs.false55 ], [ true, %lor.lhs.false51 ], [ true, %lor.lhs.false47 ], [ true, %lor.lhs.false43 ], [ true, %lor.lhs.false ], [ true, %unescape_tab.exit665 ], [ %cmp89, %lor.rhs ]
  %40 = zext i1 %39 to i8
  %bf.set = and i8 %bf.load, -6
  %bf.clear91 = or disjoint i8 %bf.set, %40
  %bf.set92 = or disjoint i8 %bf.clear91, 4
  store i8 %bf.set92, ptr %me_type_malloced, align 8
  %41 = load ptr, ptr %call31, align 8, !tbaa !206
  %call94 = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %41, i32 noundef 58) #42
  %cmp95.not = icmp eq ptr %call94, null
  br i1 %cmp95.not, label %lor.lhs.false96, label %lor.end171.thread

lor.lhs.false96:                                  ; preds = %lor.end
  %42 = load i8, ptr %41, align 1, !tbaa !14
  %cmp98 = icmp eq i8 %42, 47
  br i1 %cmp98, label %land.lhs.true100, label %lor.lhs.false121

land.lhs.true100:                                 ; preds = %lor.lhs.false96
  %arrayidx102 = getelementptr inbounds i8, ptr %41, i64 1
  %43 = load i8, ptr %arrayidx102, align 1, !tbaa !14
  %cmp104 = icmp eq i8 %43, 47
  br i1 %cmp104, label %land.lhs.true106, label %lor.lhs.false121

land.lhs.true106:                                 ; preds = %land.lhs.true100
  %call108 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %call35, ptr noundef nonnull dereferenceable(6) @.str.18.203) #42
  %cmp109 = icmp eq i32 %call108, 0
  br i1 %cmp109, label %lor.end171.thread, label %lor.lhs.false111

lor.lhs.false111:                                 ; preds = %land.lhs.true106
  %call113 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %call35, ptr noundef nonnull dereferenceable(5) @.str.19.204) #42
  %cmp114 = icmp eq i32 %call113, 0
  br i1 %cmp114, label %lor.end171.thread, label %lor.lhs.false116

lor.lhs.false116:                                 ; preds = %lor.lhs.false111
  %call118 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %call35, ptr noundef nonnull dereferenceable(5) @.str.20.205) #42
  %cmp119 = icmp eq i32 %call118, 0
  br i1 %cmp119, label %lor.end171.thread, label %lor.lhs.false121

lor.lhs.false121:                                 ; preds = %lor.lhs.false116, %land.lhs.true100, %lor.lhs.false96
  %call123 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %call35, ptr noundef nonnull dereferenceable(5) @.str.21.206) #42
  %cmp124 = icmp eq i32 %call123, 0
  br i1 %cmp124, label %lor.end171.thread, label %lor.lhs.false126

lor.lhs.false126:                                 ; preds = %lor.lhs.false121
  %call128 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %call35, ptr noundef nonnull dereferenceable(4) @.str.22.207) #42
  %cmp129 = icmp eq i32 %call128, 0
  br i1 %cmp129, label %lor.end171.thread, label %lor.lhs.false131

lor.lhs.false131:                                 ; preds = %lor.lhs.false126
  %call133 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %call35, ptr noundef nonnull dereferenceable(5) @.str.23.208) #42
  %cmp134 = icmp eq i32 %call133, 0
  br i1 %cmp134, label %lor.end171.thread, label %lor.lhs.false136

lor.lhs.false136:                                 ; preds = %lor.lhs.false131
  %call138 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %call35, ptr noundef nonnull dereferenceable(11) @.str.24.209) #42
  %cmp139 = icmp eq i32 %call138, 0
  br i1 %cmp139, label %lor.end171.thread, label %lor.lhs.false141

lor.lhs.false141:                                 ; preds = %lor.lhs.false136
  %call143 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %call35, ptr noundef nonnull dereferenceable(6) @.str.25.210) #42
  %cmp144 = icmp eq i32 %call143, 0
  br i1 %cmp144, label %lor.end171.thread, label %lor.lhs.false146

lor.lhs.false146:                                 ; preds = %lor.lhs.false141
  %call148 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %call35, ptr noundef nonnull dereferenceable(5) @.str.26.211) #42
  %cmp149 = icmp eq i32 %call148, 0
  br i1 %cmp149, label %lor.end171.thread, label %lor.lhs.false151

lor.lhs.false151:                                 ; preds = %lor.lhs.false146
  %call153 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %call35, ptr noundef nonnull dereferenceable(6) @.str.27.212) #42
  %cmp154 = icmp eq i32 %call153, 0
  br i1 %cmp154, label %lor.end171.thread, label %lor.lhs.false156

lor.lhs.false156:                                 ; preds = %lor.lhs.false151
  %call158 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %call35, ptr noundef nonnull dereferenceable(6) @.str.28.213) #42
  %cmp159 = icmp eq i32 %call158, 0
  br i1 %cmp159, label %lor.end171.thread, label %lor.lhs.false161

lor.lhs.false161:                                 ; preds = %lor.lhs.false156
  %call163 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %call35, ptr noundef nonnull dereferenceable(5) @.str.29.214) #42
  %cmp164 = icmp eq i32 %call163, 0
  br i1 %cmp164, label %lor.end171.thread, label %lor.end171

lor.end171:                                       ; preds = %lor.lhs.false161
  %call168 = call i32 @strcmp(ptr noundef nonnull dereferenceable(7) @.str.30.215, ptr noundef nonnull dereferenceable(1) %41) #42
  %call168.fr = freeze i32 %call168
  %cmp169 = icmp eq i32 %call168.fr, 0
  br i1 %cmp169, label %lor.end171.thread, label %44

lor.end171.thread:                                ; preds = %lor.end171, %lor.lhs.false161, %lor.lhs.false156, %lor.lhs.false151, %lor.lhs.false146, %lor.lhs.false141, %lor.lhs.false136, %lor.lhs.false131, %lor.lhs.false126, %lor.lhs.false121, %lor.lhs.false116, %lor.lhs.false111, %land.lhs.true106, %lor.end
  br label %44

44:                                               ; preds = %lor.end171.thread, %lor.end171
  %45 = phi i8 [ 2, %lor.end171.thread ], [ 0, %lor.end171 ]
  %bf.clear175 = and i8 %bf.set92, -3
  %bf.set176 = or disjoint i8 %45, %bf.clear175
  store i8 %bf.set176, ptr %me_type_malloced, align 8
  store ptr %call31, ptr %mtail.0690, align 8, !tbaa !5
  %me_next = getelementptr inbounds %struct.mount_entry, ptr %call31, i64 0, i32 6
  br label %cleanup183

cleanup183:                                       ; preds = %44, %if.end25, %if.end20, %if.end15, %if.end10, %if.end, %while.body
  %mtail.6 = phi ptr [ %mtail.0690, %while.body ], [ %mtail.0690, %if.end15 ], [ %me_next, %44 ], [ %mtail.0690, %if.end ], [ %mtail.0690, %if.end10 ], [ %mtail.0690, %if.end20 ], [ %mtail.0690, %if.end25 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mntroot_s) #41
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %devmin) #41
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %devmaj) #41
  %call.i = call i64 @__getdelim(ptr noundef nonnull %line, ptr noundef nonnull %buf_size, i32 noundef 10, ptr noundef nonnull %call) #41
  %cmp2.not = icmp eq i64 %call.i, -1
  br i1 %cmp2.not, label %while.end, label %while.body

while.end:                                        ; preds = %cleanup183, %if.then
  %mtail.0.lcssa = phi ptr [ %mount_list, %if.then ], [ %mtail.6, %cleanup183 ]
  %46 = load ptr, ptr %line, align 8, !tbaa !5
  call void @free(ptr noundef %46) #41
  %47 = load i32, ptr %call, align 8, !tbaa !58
  %48 = and i32 %47, 32
  %tobool188.not = icmp eq i32 %48, 0
  br i1 %tobool188.not, label %cleanup200, label %cleanup412.thread683

cleanup412.thread683:                             ; preds = %while.end
  %call190 = tail call ptr @__errno_location() #46
  %49 = load i32, ptr %call190, align 4, !tbaa !9
  %call191 = call i32 @rpl_fclose(ptr noundef nonnull %call) #41
  store i32 %49, ptr %call190, align 4, !tbaa !9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %buf_size) #41
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %line) #41
  br label %free_then_fail

cleanup200:                                       ; preds = %while.end
  %call195 = call i32 @rpl_fclose(ptr noundef nonnull %call) #41
  %cmp196.not = icmp eq i32 %call195, -1
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %buf_size) #41
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %line) #41
  br i1 %cmp196.not, label %cleanup412.free_then_fail_crit_edge, label %cleanup.cont415

if.else:                                          ; preds = %entry
  %call204 = tail call ptr @setmntent(ptr noundef nonnull @.str.31.216, ptr noundef nonnull @.str.32.217) #41
  %cmp205 = icmp eq ptr %call204, null
  br i1 %cmp205, label %cleanup425, label %while.cond209.preheader

while.cond209.preheader:                          ; preds = %if.else
  %call210691 = tail call ptr @getmntent(ptr noundef nonnull %call204) #41
  %tobool211.not692 = icmp eq ptr %call210691, null
  br i1 %tobool211.not692, label %cleanup407, label %while.body212

while.body212:                                    ; preds = %while.cond209, %while.cond209.preheader
  %call210694 = phi ptr [ %call210, %while.cond209 ], [ %call210691, %while.cond209.preheader ]
  %mtail.7693 = phi ptr [ %me_next400, %while.cond209 ], [ %mount_list, %while.cond209.preheader ]
  %call213 = tail call ptr @hasmntopt(ptr noundef nonnull %call210694, ptr noundef nonnull @.str.33.218) #41
  %tobool214.not = icmp eq ptr %call213, null
  %call216 = tail call noalias nonnull dereferenceable(56) ptr @xmalloc(i64 noundef 56) #48
  %50 = load ptr, ptr %call210694, align 8, !tbaa !212
  %call217 = tail call noalias nonnull ptr @xstrdup(ptr noundef %50) #41
  store ptr %call217, ptr %call216, align 8, !tbaa !206
  %mnt_dir = getelementptr inbounds %struct.mntent, ptr %call210694, i64 0, i32 1
  %51 = load ptr, ptr %mnt_dir, align 8, !tbaa !214
  %call219 = tail call noalias nonnull ptr @xstrdup(ptr noundef %51) #41
  %me_mountdir220 = getelementptr inbounds %struct.mount_entry, ptr %call216, i64 0, i32 1
  store ptr %call219, ptr %me_mountdir220, align 8, !tbaa !208
  %me_mntroot221 = getelementptr inbounds %struct.mount_entry, ptr %call216, i64 0, i32 2
  store ptr null, ptr %me_mntroot221, align 8, !tbaa !209
  %mnt_type = getelementptr inbounds %struct.mntent, ptr %call210694, i64 0, i32 2
  %52 = load ptr, ptr %mnt_type, align 8, !tbaa !215
  %call222 = tail call noalias nonnull ptr @xstrdup(ptr noundef %52) #41
  %me_type223 = getelementptr inbounds %struct.mount_entry, ptr %call216, i64 0, i32 3
  store ptr %call222, ptr %me_type223, align 8, !tbaa !210
  %me_type_malloced224 = getelementptr inbounds %struct.mount_entry, ptr %call216, i64 0, i32 5
  %bf.load225 = load i8, ptr %me_type_malloced224, align 8
  %call229 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %call222, ptr noundef nonnull dereferenceable(7) @.str.4.189) #42
  %cmp230 = icmp eq i32 %call229, 0
  br i1 %cmp230, label %lor.end300, label %lor.lhs.false232

lor.lhs.false232:                                 ; preds = %while.body212
  %call234 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %call222, ptr noundef nonnull dereferenceable(5) @.str.5.190) #42
  %cmp235 = icmp eq i32 %call234, 0
  br i1 %cmp235, label %lor.end300, label %lor.lhs.false237

lor.lhs.false237:                                 ; preds = %lor.lhs.false232
  %call239 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %call222, ptr noundef nonnull dereferenceable(6) @.str.6.191) #42
  %cmp240 = icmp eq i32 %call239, 0
  br i1 %cmp240, label %lor.end300, label %lor.lhs.false242

lor.lhs.false242:                                 ; preds = %lor.lhs.false237
  %call244 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %call222, ptr noundef nonnull dereferenceable(8) @.str.7.192) #42
  %cmp245 = icmp eq i32 %call244, 0
  br i1 %cmp245, label %lor.end300, label %lor.lhs.false247

lor.lhs.false247:                                 ; preds = %lor.lhs.false242
  %call249 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %call222, ptr noundef nonnull dereferenceable(7) @.str.8.193) #42
  %cmp250 = icmp eq i32 %call249, 0
  br i1 %cmp250, label %lor.end300, label %lor.lhs.false252

lor.lhs.false252:                                 ; preds = %lor.lhs.false247
  %call254 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %call222, ptr noundef nonnull dereferenceable(8) @.str.9.194) #42
  %cmp255 = icmp eq i32 %call254, 0
  br i1 %cmp255, label %lor.end300, label %lor.lhs.false257

lor.lhs.false257:                                 ; preds = %lor.lhs.false252
  %call259 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %call222, ptr noundef nonnull dereferenceable(12) @.str.10.195) #42
  %cmp260 = icmp eq i32 %call259, 0
  br i1 %cmp260, label %lor.end300, label %lor.lhs.false262

lor.lhs.false262:                                 ; preds = %lor.lhs.false257
  %call264 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %call222, ptr noundef nonnull dereferenceable(7) @.str.11.196) #42
  %cmp265 = icmp eq i32 %call264, 0
  br i1 %cmp265, label %lor.end300, label %lor.lhs.false267

lor.lhs.false267:                                 ; preds = %lor.lhs.false262
  %call269 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %call222, ptr noundef nonnull dereferenceable(11) @.str.12.197) #42
  %cmp270 = icmp eq i32 %call269, 0
  br i1 %cmp270, label %lor.end300, label %lor.lhs.false272

lor.lhs.false272:                                 ; preds = %lor.lhs.false267
  %call274 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %call222, ptr noundef nonnull dereferenceable(6) @.str.13.198) #42
  %cmp275 = icmp eq i32 %call274, 0
  br i1 %cmp275, label %lor.end300, label %lor.lhs.false277

lor.lhs.false277:                                 ; preds = %lor.lhs.false272
  %call279 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %call222, ptr noundef nonnull dereferenceable(6) @.str.14.199) #42
  %cmp280 = icmp eq i32 %call279, 0
  br i1 %cmp280, label %lor.end300, label %lor.lhs.false282

lor.lhs.false282:                                 ; preds = %lor.lhs.false277
  %call284 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %call222, ptr noundef nonnull dereferenceable(7) @.str.15.200) #42
  %cmp285 = icmp eq i32 %call284, 0
  br i1 %cmp285, label %lor.end300, label %lor.lhs.false287

lor.lhs.false287:                                 ; preds = %lor.lhs.false282
  %call289 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %call222, ptr noundef nonnull dereferenceable(7) @.str.16.201) #42
  %cmp290 = icmp eq i32 %call289, 0
  br i1 %cmp290, label %lor.end300, label %lor.rhs292

lor.rhs292:                                       ; preds = %lor.lhs.false287
  %call294 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %call222, ptr noundef nonnull dereferenceable(5) @.str.17.202) #42
  %cmp295 = icmp eq i32 %call294, 0
  %53 = select i1 %cmp295, i1 %tobool214.not, i1 false
  br label %lor.end300

lor.end300:                                       ; preds = %lor.rhs292, %lor.lhs.false287, %lor.lhs.false282, %lor.lhs.false277, %lor.lhs.false272, %lor.lhs.false267, %lor.lhs.false262, %lor.lhs.false257, %lor.lhs.false252, %lor.lhs.false247, %lor.lhs.false242, %lor.lhs.false237, %lor.lhs.false232, %while.body212
  %54 = phi i1 [ true, %lor.lhs.false287 ], [ true, %lor.lhs.false282 ], [ true, %lor.lhs.false277 ], [ true, %lor.lhs.false272 ], [ true, %lor.lhs.false267 ], [ true, %lor.lhs.false262 ], [ true, %lor.lhs.false257 ], [ true, %lor.lhs.false252 ], [ true, %lor.lhs.false247 ], [ true, %lor.lhs.false242 ], [ true, %lor.lhs.false237 ], [ true, %lor.lhs.false232 ], [ true, %while.body212 ], [ %53, %lor.rhs292 ]
  %55 = zext i1 %54 to i8
  %bf.set227 = and i8 %bf.load225, -6
  %bf.clear305 = or disjoint i8 %bf.set227, %55
  %bf.set306 = or disjoint i8 %bf.clear305, 4
  store i8 %bf.set306, ptr %me_type_malloced224, align 8
  %56 = load ptr, ptr %call216, align 8, !tbaa !206
  %call309 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %56, i32 noundef 58) #42
  %cmp310.not = icmp eq ptr %call309, null
  br i1 %cmp310.not, label %lor.lhs.false312, label %lor.end389.thread

lor.lhs.false312:                                 ; preds = %lor.end300
  %57 = load i8, ptr %56, align 1, !tbaa !14
  %cmp316 = icmp eq i8 %57, 47
  br i1 %cmp316, label %land.lhs.true318, label %lor.lhs.false339

land.lhs.true318:                                 ; preds = %lor.lhs.false312
  %arrayidx320 = getelementptr inbounds i8, ptr %56, i64 1
  %58 = load i8, ptr %arrayidx320, align 1, !tbaa !14
  %cmp322 = icmp eq i8 %58, 47
  br i1 %cmp322, label %land.lhs.true324, label %lor.lhs.false339

land.lhs.true324:                                 ; preds = %land.lhs.true318
  %call326 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %call222, ptr noundef nonnull dereferenceable(6) @.str.18.203) #42
  %cmp327 = icmp eq i32 %call326, 0
  br i1 %cmp327, label %lor.end389.thread, label %lor.lhs.false329

lor.lhs.false329:                                 ; preds = %land.lhs.true324
  %call331 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %call222, ptr noundef nonnull dereferenceable(5) @.str.19.204) #42
  %cmp332 = icmp eq i32 %call331, 0
  br i1 %cmp332, label %lor.end389.thread, label %lor.lhs.false334

lor.lhs.false334:                                 ; preds = %lor.lhs.false329
  %call336 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %call222, ptr noundef nonnull dereferenceable(5) @.str.20.205) #42
  %cmp337 = icmp eq i32 %call336, 0
  br i1 %cmp337, label %lor.end389.thread, label %lor.lhs.false339

lor.lhs.false339:                                 ; preds = %lor.lhs.false334, %land.lhs.true318, %lor.lhs.false312
  %call341 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %call222, ptr noundef nonnull dereferenceable(5) @.str.21.206) #42
  %cmp342 = icmp eq i32 %call341, 0
  br i1 %cmp342, label %lor.end389.thread, label %lor.lhs.false344

lor.lhs.false344:                                 ; preds = %lor.lhs.false339
  %call346 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %call222, ptr noundef nonnull dereferenceable(4) @.str.22.207) #42
  %cmp347 = icmp eq i32 %call346, 0
  br i1 %cmp347, label %lor.end389.thread, label %lor.lhs.false349

lor.lhs.false349:                                 ; preds = %lor.lhs.false344
  %call351 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %call222, ptr noundef nonnull dereferenceable(5) @.str.23.208) #42
  %cmp352 = icmp eq i32 %call351, 0
  br i1 %cmp352, label %lor.end389.thread, label %lor.lhs.false354

lor.lhs.false354:                                 ; preds = %lor.lhs.false349
  %call356 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %call222, ptr noundef nonnull dereferenceable(11) @.str.24.209) #42
  %cmp357 = icmp eq i32 %call356, 0
  br i1 %cmp357, label %lor.end389.thread, label %lor.lhs.false359

lor.lhs.false359:                                 ; preds = %lor.lhs.false354
  %call361 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %call222, ptr noundef nonnull dereferenceable(6) @.str.25.210) #42
  %cmp362 = icmp eq i32 %call361, 0
  br i1 %cmp362, label %lor.end389.thread, label %lor.lhs.false364

lor.lhs.false364:                                 ; preds = %lor.lhs.false359
  %call366 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %call222, ptr noundef nonnull dereferenceable(5) @.str.26.211) #42
  %cmp367 = icmp eq i32 %call366, 0
  br i1 %cmp367, label %lor.end389.thread, label %lor.lhs.false369

lor.lhs.false369:                                 ; preds = %lor.lhs.false364
  %call371 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %call222, ptr noundef nonnull dereferenceable(6) @.str.27.212) #42
  %cmp372 = icmp eq i32 %call371, 0
  br i1 %cmp372, label %lor.end389.thread, label %lor.lhs.false374

lor.lhs.false374:                                 ; preds = %lor.lhs.false369
  %call376 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %call222, ptr noundef nonnull dereferenceable(6) @.str.28.213) #42
  %cmp377 = icmp eq i32 %call376, 0
  br i1 %cmp377, label %lor.end389.thread, label %lor.lhs.false379

lor.lhs.false379:                                 ; preds = %lor.lhs.false374
  %call381 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %call222, ptr noundef nonnull dereferenceable(5) @.str.29.214) #42
  %cmp382 = icmp eq i32 %call381, 0
  br i1 %cmp382, label %lor.end389.thread, label %lor.end389

lor.end389:                                       ; preds = %lor.lhs.false379
  %call386 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(7) @.str.30.215, ptr noundef nonnull dereferenceable(1) %56) #42
  %call386.fr = freeze i32 %call386
  %cmp387 = icmp eq i32 %call386.fr, 0
  br i1 %cmp387, label %lor.end389.thread, label %while.cond209

lor.end389.thread:                                ; preds = %lor.end389, %lor.lhs.false379, %lor.lhs.false374, %lor.lhs.false369, %lor.lhs.false364, %lor.lhs.false359, %lor.lhs.false354, %lor.lhs.false349, %lor.lhs.false344, %lor.lhs.false339, %lor.lhs.false334, %lor.lhs.false329, %land.lhs.true324, %lor.end300
  br label %while.cond209

while.cond209:                                    ; preds = %lor.end389.thread, %lor.end389
  %59 = phi i8 [ 2, %lor.end389.thread ], [ 0, %lor.end389 ]
  %bf.clear395 = and i8 %bf.set306, -3
  %bf.set396 = or disjoint i8 %59, %bf.clear395
  store i8 %bf.set396, ptr %me_type_malloced224, align 8
  %me_dev399 = getelementptr inbounds %struct.mount_entry, ptr %call216, i64 0, i32 4
  store i64 -1, ptr %me_dev399, align 8, !tbaa !211
  store ptr %call216, ptr %mtail.7693, align 8, !tbaa !5
  %me_next400 = getelementptr inbounds %struct.mount_entry, ptr %call216, i64 0, i32 6
  %call210 = tail call ptr @getmntent(ptr noundef nonnull %call204) #41
  %tobool211.not = icmp eq ptr %call210, null
  br i1 %tobool211.not, label %cleanup407, label %while.body212, !llvm.loop !216

cleanup407:                                       ; preds = %while.cond209, %while.cond209.preheader
  %mtail.7.lcssa = phi ptr [ %mount_list, %while.cond209.preheader ], [ %me_next400, %while.cond209 ]
  %call402 = tail call i32 @endmntent(ptr noundef nonnull %call204) #41
  %cmp403.not = icmp eq i32 %call402, 0
  br i1 %cmp403.not, label %cleanup412.free_then_fail_crit_edge, label %cleanup.cont415

cleanup412.free_then_fail_crit_edge:              ; preds = %cleanup407, %cleanup200
  %mtail.10 = phi ptr [ %mtail.0.lcssa, %cleanup200 ], [ %mtail.7.lcssa, %cleanup407 ]
  %.pre = tail call ptr @__errno_location() #46
  br label %free_then_fail

cleanup.cont415:                                  ; preds = %cleanup407, %cleanup200
  %mtail.10682 = phi ptr [ %mtail.0.lcssa, %cleanup200 ], [ %mtail.7.lcssa, %cleanup407 ]
  store ptr null, ptr %mtail.10682, align 8, !tbaa !5
  %mount_list.0.mount_list.0.mount_list.0.mount_list.0. = load ptr, ptr %mount_list, align 8, !tbaa !5
  br label %cleanup425

free_then_fail:                                   ; preds = %cleanup412.free_then_fail_crit_edge, %cleanup412.thread683
  %call417.pre-phi = phi ptr [ %.pre, %cleanup412.free_then_fail_crit_edge ], [ %call190, %cleanup412.thread683 ]
  %mtail.10686 = phi ptr [ %mtail.10, %cleanup412.free_then_fail_crit_edge ], [ %mtail.0.lcssa, %cleanup412.thread683 ]
  %60 = load i32, ptr %call417.pre-phi, align 4, !tbaa !9
  store ptr null, ptr %mtail.10686, align 8, !tbaa !5
  %mount_list.0.mount_list.0.mount_list.0.mount_list.0.540.pr = load ptr, ptr %mount_list, align 8, !tbaa !5
  %tobool419.not696 = icmp eq ptr %mount_list.0.mount_list.0.mount_list.0.mount_list.0.540.pr, null
  br i1 %tobool419.not696, label %while.end422, label %while.body420

while.body420:                                    ; preds = %free_mount_entry.exit, %free_then_fail
  %mount_list.0.mount_list.0.540697 = phi ptr [ %61, %free_mount_entry.exit ], [ %mount_list.0.mount_list.0.mount_list.0.mount_list.0.540.pr, %free_then_fail ]
  %me_next421 = getelementptr inbounds %struct.mount_entry, ptr %mount_list.0.mount_list.0.540697, i64 0, i32 6
  %61 = load ptr, ptr %me_next421, align 8, !tbaa !217
  %62 = load ptr, ptr %mount_list.0.mount_list.0.540697, align 8, !tbaa !206
  call void @free(ptr noundef %62) #41
  %me_mountdir.i = getelementptr inbounds %struct.mount_entry, ptr %mount_list.0.mount_list.0.540697, i64 0, i32 1
  %63 = load ptr, ptr %me_mountdir.i, align 8, !tbaa !208
  call void @free(ptr noundef %63) #41
  %me_mntroot.i = getelementptr inbounds %struct.mount_entry, ptr %mount_list.0.mount_list.0.540697, i64 0, i32 2
  %64 = load ptr, ptr %me_mntroot.i, align 8, !tbaa !209
  call void @free(ptr noundef %64) #41
  %me_type_malloced.i = getelementptr inbounds %struct.mount_entry, ptr %mount_list.0.mount_list.0.540697, i64 0, i32 5
  %bf.load.i = load i8, ptr %me_type_malloced.i, align 8
  %65 = and i8 %bf.load.i, 4
  %tobool.not.i667 = icmp eq i8 %65, 0
  br i1 %tobool.not.i667, label %free_mount_entry.exit, label %if.then.i668

if.then.i668:                                     ; preds = %while.body420
  %me_type.i = getelementptr inbounds %struct.mount_entry, ptr %mount_list.0.mount_list.0.540697, i64 0, i32 3
  %66 = load ptr, ptr %me_type.i, align 8, !tbaa !210
  call void @free(ptr noundef %66) #41
  br label %free_mount_entry.exit

free_mount_entry.exit:                            ; preds = %if.then.i668, %while.body420
  call void @free(ptr noundef nonnull %mount_list.0.mount_list.0.540697) #41
  %tobool419.not = icmp eq ptr %61, null
  br i1 %tobool419.not, label %while.end422, label %while.body420, !llvm.loop !218

while.end422:                                     ; preds = %free_mount_entry.exit, %free_then_fail
  store i32 %60, ptr %call417.pre-phi, align 4, !tbaa !9
  br label %cleanup425

cleanup425:                                       ; preds = %while.end422, %cleanup.cont415, %if.else
  %retval.3 = phi ptr [ null, %while.end422 ], [ %mount_list.0.mount_list.0.mount_list.0.mount_list.0., %cleanup.cont415 ], [ null, %if.else ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %mount_list)
  ret ptr %retval.3
}

declare noalias ptr @rpl_fopen(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i64 @__getdelim(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @__isoc23_sscanf(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare ptr @strstr(ptr noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare ptr @setmntent(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare ptr @getmntent(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare ptr @hasmntopt(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare i32 @endmntent(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind willreturn uwtable
define dso_local void @free_mount_entry(ptr nocapture noundef %me) local_unnamed_addr #40 {
entry:
  %0 = load ptr, ptr %me, align 8, !tbaa !206
  tail call void @free(ptr noundef %0) #41
  %me_mountdir = getelementptr inbounds %struct.mount_entry, ptr %me, i64 0, i32 1
  %1 = load ptr, ptr %me_mountdir, align 8, !tbaa !208
  tail call void @free(ptr noundef %1) #41
  %me_mntroot = getelementptr inbounds %struct.mount_entry, ptr %me, i64 0, i32 2
  %2 = load ptr, ptr %me_mntroot, align 8, !tbaa !209
  tail call void @free(ptr noundef %2) #41
  %me_type_malloced = getelementptr inbounds %struct.mount_entry, ptr %me, i64 0, i32 5
  %bf.load = load i8, ptr %me_type_malloced, align 8
  %3 = and i8 %bf.load, 4
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %me_type = getelementptr inbounds %struct.mount_entry, ptr %me, i64 0, i32 3
  %4 = load ptr, ptr %me_type, align 8, !tbaa !210
  tail call void @free(ptr noundef %4) #41
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  tail call void @free(ptr noundef nonnull %me) #41
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @close_stdin_set_file_name(ptr noundef %file) local_unnamed_addr #17 {
entry:
  store ptr %file, ptr @file_name.219, align 8, !tbaa !5
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @close_stdin() local_unnamed_addr #6 {
entry:
  %0 = load ptr, ptr @stdin, align 8, !tbaa !5
  %call = tail call i64 @freadahead(ptr noundef %0) #42
  %cmp.not = icmp eq i64 %call, 0
  br i1 %cmp.not, label %if.end6, label %if.then

if.then:                                          ; preds = %entry
  %call1 = tail call i32 @rpl_fseeko(ptr noundef %0, i64 noundef 0, i32 noundef 1) #41
  %cmp2 = icmp eq i32 %call1, 0
  %.pre26 = load ptr, ptr @stdin, align 8, !tbaa !5
  br i1 %cmp2, label %land.lhs.true, label %if.end6

land.lhs.true:                                    ; preds = %if.then
  %call3 = tail call i32 @rpl_fflush(ptr noundef %.pre26) #41
  %cmp4.not = icmp ne i32 %call3, 0
  %.pre = load ptr, ptr @stdin, align 8, !tbaa !5
  br label %if.end6

if.end6:                                          ; preds = %land.lhs.true, %if.then, %entry
  %1 = phi ptr [ %.pre26, %if.then ], [ %0, %entry ], [ %.pre, %land.lhs.true ]
  %fail.0 = phi i1 [ false, %if.then ], [ false, %entry ], [ %cmp4.not, %land.lhs.true ]
  %call7 = tail call i32 @close_stream(ptr noundef %1) #41
  %cmp8.not = icmp ne i32 %call7, 0
  %spec.select25 = select i1 %cmp8.not, i1 true, i1 %fail.0
  br i1 %spec.select25, label %if.then11, label %if.end22

if.then11:                                        ; preds = %if.end6
  %call12 = tail call ptr @dcgettext(ptr noundef nonnull @.str.239, ptr noundef nonnull @.str.1.240, i32 noundef 5) #41
  %2 = load ptr, ptr @file_name.219, align 8, !tbaa !5
  %tobool13.not = icmp eq ptr %2, null
  %call17 = tail call ptr @__errno_location() #46
  %3 = load i32, ptr %call17, align 4, !tbaa !9
  br i1 %tobool13.not, label %if.else, label %if.then14

if.then14:                                        ; preds = %if.then11
  %call16 = tail call ptr @quotearg_colon(ptr noundef nonnull %2) #41
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %3, ptr noundef nonnull @.str.2.241, ptr noundef %call16, ptr noundef %call12) #45
  br label %if.then21

if.else:                                          ; preds = %if.then11
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %3, ptr noundef nonnull @.str.3.242, ptr noundef %call12) #45
  br label %if.then21

if.then21:                                        ; preds = %if.else, %if.then14
  tail call void @close_stdout() #41
  %4 = load volatile i32, ptr @exit_failure, align 4, !tbaa !9
  tail call void @_exit(i32 noundef %4) #43
  unreachable

if.end22:                                         ; preds = %if.end6
  tail call void @close_stdout() #41
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i64 @freadahead(ptr noundef) local_unnamed_addr #26

; Function Attrs: nounwind uwtable
define dso_local i64 @rpl_mbrlen(ptr noundef %s, i64 noundef %n, ptr noundef %ps) local_unnamed_addr #6 {
entry:
  %cmp = icmp eq ptr %ps, null
  %spec.store.select = select i1 %cmp, ptr @internal_state.243, ptr %ps
  %call = tail call i64 @rpl_mbrtowc(ptr noundef null, ptr noundef %s, i64 noundef %n, ptr noundef nonnull %spec.store.select) #41
  ret i64 %call
}

declare i64 @rpl_mbrtowc(ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

attributes #0 = { noreturn nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree nounwind willreturn memory(argmem: read) }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #13 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #15 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #17 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nocallback nofree nosync nounwind willreturn }
attributes #20 = { cold nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #24 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #25 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #26 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #27 = { nofree nounwind }
attributes #28 = { inlinehint nounwind allocsize(1,2) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #29 = { nounwind allocsize(1,2) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #30 = { nounwind allocsize(0) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #31 = { nounwind allocsize(1) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #32 = { nounwind allocsize(0,1) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #33 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #34 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #35 = { mustprogress nofree nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #36 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #37 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #38 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #39 = { nofree nounwind memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #40 = { mustprogress nounwind willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #41 = { nounwind }
attributes #42 = { nounwind willreturn memory(read) }
attributes #43 = { noreturn nounwind }
attributes #44 = { noreturn }
attributes #45 = { cold nounwind }
attributes #46 = { nounwind willreturn memory(none) }
attributes #47 = { nounwind allocsize(1) }
attributes #48 = { nounwind allocsize(0) }
attributes #49 = { cold }
attributes #50 = { nounwind allocsize(0,1) }

!llvm.ident = !{!0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0}
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
!11 = distinct !{!11, !12, !13}
!12 = !{!"llvm.loop.mustprogress"}
!13 = !{!"llvm.loop.peeled.count", i32 1}
!14 = !{!7, !7, i64 0, i64 1}
!15 = distinct !{!15, !12}
!16 = !{!17, !10, i64 0, i64 4}
!17 = !{!7, i64 56, !"quoting_options", !10, i64 0, i64 4, !10, i64 4, i64 4, !10, i64 8, i64 32, !6, i64 40, i64 8, !6, i64 48, i64 8}
!18 = !{!17, !10, i64 4, i64 4}
!19 = !{!17, !6, i64 40, i64 8}
!20 = !{!17, !6, i64 48, i64 8}
!21 = distinct !{!21, !12}
!22 = !{!23, !23, i64 0, i64 2}
!23 = !{!7, i64 2, !"short"}
!24 = distinct !{!24, !12}
!25 = distinct !{!25, !12}
!26 = distinct !{!26, !12}
!27 = distinct !{!27, !12}
!28 = !{!29, !29, i64 0, i64 8}
!29 = !{!7, i64 8, !"long"}
!30 = !{!31, !6, i64 8, i64 8}
!31 = !{!7, i64 16, !"slotvec", !29, i64 0, i64 8, !6, i64 8, i64 8}
!32 = distinct !{!32, !12}
!33 = !{!31, !29, i64 0, i64 8}
!34 = !{!31, !31, i64 0, i64 16}
!35 = !{i64 0, i64 8, !28, i64 8, i64 8, !5}
!36 = !{!37}
!37 = distinct !{!37, !38, !"quoting_options_from_style: %agg.result"}
!38 = distinct !{!38, !"quoting_options_from_style"}
!39 = !{!40}
!40 = distinct !{!40, !41, !"quoting_options_from_style: %agg.result"}
!41 = distinct !{!41, !"quoting_options_from_style"}
!42 = !{!43}
!43 = distinct !{!43, !44, !"quoting_options_from_style: %agg.result"}
!44 = distinct !{!44, !"quoting_options_from_style"}
!45 = !{!46}
!46 = distinct !{!46, !47, !"quoting_options_from_style: %agg.result"}
!47 = distinct !{!47, !"quoting_options_from_style"}
!48 = !{!17, !17, i64 0, i64 56}
!49 = !{i64 0, i64 4, !9, i64 4, i64 4, !9, i64 8, i64 32, !50, i64 40, i64 8, !5, i64 48, i64 8, !5}
!50 = !{!10, !10, i64 0, i64 32}
!51 = !{!52}
!52 = distinct !{!52, !53, !"quoting_options_from_style: %agg.result"}
!53 = distinct !{!53, !"quoting_options_from_style"}
!54 = !{!55, !55, i64 0, i64 1}
!55 = !{!7, i64 1, !"_Bool"}
!56 = !{i8 0, i8 2}
!57 = !{}
!58 = !{!59, !10, i64 0, i64 4}
!59 = !{!7, i64 216, !"_IO_FILE", !10, i64 0, i64 4, !6, i64 8, i64 8, !6, i64 16, i64 8, !6, i64 24, i64 8, !6, i64 32, i64 8, !6, i64 40, i64 8, !6, i64 48, i64 8, !6, i64 56, i64 8, !6, i64 64, i64 8, !6, i64 72, i64 8, !6, i64 80, i64 8, !6, i64 88, i64 8, !6, i64 96, i64 8, !6, i64 104, i64 8, !10, i64 112, i64 4, !10, i64 116, i64 4, !29, i64 120, i64 8, !23, i64 128, i64 2, !7, i64 130, i64 1, !7, i64 131, i64 1, !6, i64 136, i64 8, !29, i64 144, i64 8, !6, i64 152, i64 8, !6, i64 160, i64 8, !6, i64 168, i64 8, !6, i64 176, i64 8, !29, i64 184, i64 8, !10, i64 192, i64 4, !7, i64 196, i64 20}
!60 = distinct !{!60, !12}
!61 = !{!59, !6, i64 40, i64 8}
!62 = !{!59, !6, i64 48, i64 8}
!63 = !{!"branch_weights", i32 2000, i32 1}
!64 = !{!65, !29, i64 0, i64 8}
!65 = !{!7, i64 240, !"", !29, i64 0, i64 8, !6, i64 8, i64 8, !66, i64 16, i64 224}
!66 = !{!7, i64 32, !"", !10, i64 0, i64 4, !7, i64 16, i64 16}
!67 = !{!65, !6, i64 8, i64 8}
!68 = !{!66, !10, i64 0, i64 4}
!69 = !{!7, !7, i64 0, i64 0}
!70 = distinct !{!70, !12}
!71 = !{!72, !29, i64 0, i64 8}
!72 = !{!7, i64 648, !"", !29, i64 0, i64 8, !6, i64 8, i64 8, !29, i64 16, i64 8, !29, i64 24, i64 8, !73, i64 32, i64 616}
!73 = !{!7, i64 88, !"", !6, i64 0, i64 8, !6, i64 8, i64 8, !10, i64 16, i64 4, !6, i64 24, i64 8, !6, i64 32, i64 8, !29, i64 40, i64 8, !6, i64 48, i64 8, !6, i64 56, i64 8, !29, i64 64, i64 8, !7, i64 72, i64 1, !29, i64 80, i64 8}
!74 = !{!72, !6, i64 8, i64 8}
!75 = !{!73, !6, i64 0, i64 8}
!76 = !{!73, !10, i64 16, i64 4}
!77 = !{!73, !29, i64 40, i64 8}
!78 = !{!73, !29, i64 64, i64 8}
!79 = !{!73, !29, i64 80, i64 8}
!80 = distinct !{!80, !12}
!81 = distinct !{!81, !12}
!82 = !{!73, !6, i64 24, i64 8}
!83 = !{!73, !6, i64 32, i64 8}
!84 = distinct !{!84, !12}
!85 = distinct !{!85, !12}
!86 = distinct !{!86, !12}
!87 = distinct !{!87, !12}
!88 = !{!73, !6, i64 48, i64 8}
!89 = !{!73, !6, i64 56, i64 8}
!90 = distinct !{!90, !12}
!91 = distinct !{!91, !12}
!92 = distinct !{!92, !12}
!93 = distinct !{!93, !12}
!94 = distinct !{!94, !12}
!95 = !{!73, !7, i64 72, i64 1}
!96 = !{!73, !6, i64 8, i64 8}
!97 = !{!72, !29, i64 16, i64 8}
!98 = !{!72, !29, i64 24, i64 8}
!99 = !{!59, !6, i64 16, i64 8}
!100 = !{!59, !6, i64 8, i64 8}
!101 = !{!59, !6, i64 32, i64 8}
!102 = !{!59, !6, i64 72, i64 8}
!103 = !{!59, !29, i64 144, i64 8}
!104 = distinct !{!104, !12}
!105 = distinct !{!105, !12}
!106 = distinct !{!106, !12}
!107 = distinct !{!107, !12}
!108 = distinct !{!108, !12}
!109 = distinct !{!109, !12}
!110 = distinct !{!110, !12}
!111 = !{!112, !6, i64 0, i64 8}
!112 = !{!7, i64 288, !"", !6, i64 0, i64 8, !29, i64 8, i64 8, !10, i64 16, i64 4, !10, i64 20, i64 4, !10, i64 24, i64 4, !10, i64 28, i64 4, !113, i64 32, i64 24, !29, i64 56, i64 8, !29, i64 64, i64 8, !29, i64 72, i64 8, !29, i64 80, i64 8, !114, i64 88, i64 16, !115, i64 104, i64 56, !55, i64 160, i64 1, !55, i64 161, i64 1, !29, i64 168, i64 8, !29, i64 176, i64 8, !29, i64 184, i64 8, !29, i64 192, i64 8, !29, i64 200, i64 8, !29, i64 208, i64 8, !29, i64 216, i64 8, !55, i64 224, i64 1, !55, i64 225, i64 1, !55, i64 226, i64 1, !55, i64 227, i64 1, !55, i64 228, i64 1, !55, i64 229, i64 1, !55, i64 230, i64 1, !55, i64 231, i64 1, !55, i64 232, i64 1, !116, i64 240, i64 48}
!113 = !{!7, i64 24, !"", !55, i64 0, i64 1, !29, i64 8, i64 8, !29, i64 16, i64 8}
!114 = !{!7, i64 16, !"timespec", !29, i64 0, i64 8, !29, i64 8, i64 8}
!115 = !{!7, i64 56, !"", !29, i64 0, i64 8, !29, i64 8, i64 8, !29, i64 16, i64 8, !29, i64 24, i64 8, !29, i64 32, i64 8, !29, i64 40, i64 8, !10, i64 48, i64 4}
!116 = !{!7, i64 16, !"", !6, i64 0, i64 8, !10, i64 8, i64 4, !10, i64 12, i64 4}
!117 = distinct !{!117, !12}
!118 = distinct !{!118, !12}
!119 = distinct !{!119, !12}
!120 = distinct !{!120, !12}
!121 = distinct !{!121, !12}
!122 = distinct !{!122, !12}
!123 = distinct !{!123, !12}
!124 = distinct !{!124, !12}
!125 = !{!112, !55, i64 225, i64 1}
!126 = !{!116, !10, i64 12, i64 4}
!127 = !{!116, !10, i64 8, i64 4}
!128 = distinct !{!128, !12}
!129 = !{!7, !7, i64 0, i64 56}
!130 = !{i64 0, i64 8, !28, i64 0, i64 1, !54, i64 8, i64 8, !28, i64 16, i64 8, !28, i64 0, i64 8, !28, i64 8, i64 8, !28, i64 0, i64 8, !28, i64 8, i64 8, !28, i64 16, i64 8, !28, i64 24, i64 8, !28, i64 32, i64 8, !28, i64 40, i64 8, !28, i64 48, i64 4, !9}
!131 = !{i64 0, i64 8, !28, i64 8, i64 8, !28, i64 0, i64 8, !28, i64 0, i64 8, !28, i64 8, i64 8, !28, i64 16, i64 8, !28, i64 24, i64 8, !28, i64 32, i64 8, !28, i64 40, i64 4, !9}
!132 = !{i64 0, i64 8, !28, i64 0, i64 8, !28, i64 8, i64 8, !28, i64 16, i64 8, !28, i64 24, i64 8, !28, i64 32, i64 4, !9}
!133 = !{i64 0, i64 8, !28, i64 8, i64 8, !28, i64 16, i64 8, !28, i64 24, i64 4, !9}
!134 = !{i64 0, i64 8, !28, i64 8, i64 8, !28, i64 16, i64 4, !9}
!135 = !{i64 0, i64 8, !28, i64 8, i64 4, !9}
!136 = !{i64 0, i64 4, !9}
!137 = !{!114, !114, i64 0, i64 16}
!138 = !{i64 0, i64 8, !28, i64 8, i64 8, !28}
!139 = !{!112, !55, i64 160, i64 1}
!140 = !{!112, !29, i64 208, i64 8}
!141 = !{!112, !29, i64 168, i64 8}
!142 = !{!112, !29, i64 192, i64 8}
!143 = !{!112, !29, i64 184, i64 8}
!144 = !{!112, !29, i64 216, i64 8}
!145 = !{!112, !29, i64 176, i64 8}
!146 = !{!112, !29, i64 72, i64 8}
!147 = !{!112, !10, i64 28, i64 4}
!148 = !{!112, !29, i64 80, i64 8}
!149 = !{i64 0, i64 8, !28}
!150 = !{!112, !10, i64 24, i64 4}
!151 = !{!112, !10, i64 20, i64 4}
!152 = !{!112, !29, i64 200, i64 8}
!153 = !{!112, !10, i64 152, i64 4}
!154 = !{!112, !29, i64 144, i64 8}
!155 = !{!112, !29, i64 136, i64 8}
!156 = !{!112, !29, i64 128, i64 8}
!157 = !{!112, !29, i64 120, i64 8}
!158 = !{!112, !29, i64 112, i64 8}
!159 = !{!112, !29, i64 104, i64 8}
!160 = !{!112, !55, i64 161, i64 1}
!161 = !{!112, !29, i64 8, i64 8}
!162 = !{!112, !10, i64 16, i64 4}
!163 = !{!112, !55, i64 232, i64 1}
!164 = !{!112, !29, i64 56, i64 8}
!165 = !{!112, !29, i64 64, i64 8}
!166 = !{!113, !113, i64 0, i64 24}
!167 = !{i64 0, i64 1, !54, i64 8, i64 8, !28, i64 16, i64 8, !28}
!168 = !{!112, !29, i64 48, i64 8}
!169 = !{!112, !55, i64 224, i64 1}
!170 = !{!112, !29, i64 40, i64 8}
!171 = !{!116, !6, i64 0, i64 8}
!172 = distinct !{!172, !12}
!173 = !{!112, !55, i64 226, i64 1}
!174 = !{!112, !55, i64 231, i64 1}
!175 = !{!112, !55, i64 229, i64 1}
!176 = !{!112, !29, i64 88, i64 8}
!177 = !{!112, !29, i64 96, i64 8}
!178 = !{!112, !55, i64 227, i64 1}
!179 = !{!112, !55, i64 228, i64 1}
!180 = !{!112, !55, i64 230, i64 1}
!181 = !{!114, !29, i64 0, i64 8}
!182 = !{!114, !29, i64 8, i64 8}
!183 = distinct !{!183, !12}
!184 = distinct !{!184, !12}
!185 = distinct !{!185, !12}
!186 = distinct !{!186, !12}
!187 = !{!188, !10, i64 20, i64 4}
!188 = !{!7, i64 56, !"tm", !10, i64 0, i64 4, !10, i64 4, i64 4, !10, i64 8, i64 4, !10, i64 12, i64 4, !10, i64 16, i64 4, !10, i64 20, i64 4, !10, i64 24, i64 4, !10, i64 28, i64 4, !10, i64 32, i64 4, !29, i64 40, i64 8, !6, i64 48, i64 8}
!189 = !{!188, !10, i64 16, i64 4}
!190 = !{!188, !10, i64 12, i64 4}
!191 = !{!188, !10, i64 8, i64 4}
!192 = !{!188, !10, i64 4, i64 4}
!193 = !{!188, !10, i64 0, i64 4}
!194 = !{!188, !10, i64 32, i64 4}
!195 = !{!115, !115, i64 0, i64 56}
!196 = !{i64 0, i64 8, !28, i64 8, i64 8, !28, i64 16, i64 8, !28, i64 24, i64 8, !28, i64 32, i64 8, !28, i64 40, i64 8, !28, i64 48, i64 4, !9}
!197 = !{!188, !6, i64 48, i64 8}
!198 = !{!113, !29, i64 8, i64 8}
!199 = !{!10, !10, i64 0, i64 -1}
!200 = !{!188, !10, i64 24, i64 4}
!201 = !{!188, !10, i64 28, i64 4}
!202 = !{!188, !29, i64 40, i64 8}
!203 = distinct !{!203, !12}
!204 = distinct !{!204, !12}
!205 = distinct !{!205, !12}
!206 = !{!207, !6, i64 0, i64 8}
!207 = !{!7, i64 56, !"mount_entry", !6, i64 0, i64 8, !6, i64 8, i64 8, !6, i64 16, i64 8, !6, i64 24, i64 8, !29, i64 32, i64 8, !10, i64 40, i64 4, !10, i64 40, i64 4, !10, i64 40, i64 4, !6, i64 48, i64 8}
!208 = !{!207, !6, i64 8, i64 8}
!209 = !{!207, !6, i64 16, i64 8}
!210 = !{!207, !6, i64 24, i64 8}
!211 = !{!207, !29, i64 32, i64 8}
!212 = !{!213, !6, i64 0, i64 8}
!213 = !{!7, i64 40, !"mntent", !6, i64 0, i64 8, !6, i64 8, i64 8, !6, i64 16, i64 8, !6, i64 24, i64 8, !10, i64 32, i64 4, !10, i64 36, i64 4}
!214 = !{!213, !6, i64 8, i64 8}
!215 = !{!213, !6, i64 16, i64 8}
!216 = distinct !{!216, !12}
!217 = !{!207, !6, i64 48, i64 8}
!218 = distinct !{!218, !12}
