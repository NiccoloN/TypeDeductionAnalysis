; ModuleID = 'llvm-link'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.field_range_pair = type { i64, i64 }

@.str = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"invalid byte or character range\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"invalid field range\00", align 1
@.str.3 = private unnamed_addr constant [45 x i8] c"byte/character positions are numbered from 1\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"fields are numbered from 1\00", align 1
@.str.5 = private unnamed_addr constant [34 x i8] c"invalid range with no endpoint: -\00", align 1
@.str.6 = private unnamed_addr constant [25 x i8] c"invalid decreasing range\00", align 1
@set_fields.num_start = internal global ptr null, align 8
@.str.7 = private unnamed_addr constant [11 x i8] c"0123456789\00", align 1
@.str.8 = private unnamed_addr constant [38 x i8] c"byte/character offset %s is too large\00", align 1
@.str.9 = private unnamed_addr constant [29 x i8] c"field number %s is too large\00", align 1
@.str.10 = private unnamed_addr constant [35 x i8] c"invalid byte/character position %s\00", align 1
@.str.11 = private unnamed_addr constant [23 x i8] c"invalid field value %s\00", align 1
@n_frp = dso_local global i64 0, align 8
@.str.12 = private unnamed_addr constant [41 x i8] c"missing list of byte/character positions\00", align 1
@.str.13 = private unnamed_addr constant [23 x i8] c"missing list of fields\00", align 1
@frp = dso_local global ptr null, align 8
@n_frp_allocated = internal global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @set_fields(ptr noundef %fieldstr, i32 noundef %options) #0 {
entry:
  %fieldstr.addr = alloca ptr, align 8
  %options.addr = alloca i32, align 4
  %initial = alloca i64, align 8
  %value = alloca i64, align 8
  %lhs_specified = alloca i8, align 1
  %rhs_specified = alloca i8, align 1
  %dash_found = alloca i8, align 1
  %in_digits = alloca i8, align 1
  %bad_num = alloca ptr, align 8
  %i = alloca i64, align 8
  %j = alloca i64, align 8
  store ptr %fieldstr, ptr %fieldstr.addr, align 8
  store i32 %options, ptr %options.addr, align 4
  store i64 1, ptr %initial, align 8
  store i64 0, ptr %value, align 8
  store i8 0, ptr %lhs_specified, align 1
  store i8 0, ptr %rhs_specified, align 1
  store i8 0, ptr %dash_found, align 1
  store i8 0, ptr %in_digits, align 1
  %0 = load i32, ptr %options.addr, align 4
  %and = and i32 %0, 1
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %1 = load ptr, ptr %fieldstr.addr, align 8
  %call = call i32 @strcmp(ptr noundef %1, ptr noundef @.str) #10
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  store i64 1, ptr %value, align 8
  store i8 1, ptr %lhs_specified, align 1
  store i8 1, ptr %dash_found, align 1
  %2 = load ptr, ptr %fieldstr.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %2, i32 1
  store ptr %incdec.ptr, ptr %fieldstr.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  br label %while.body

while.body:                                       ; preds = %if.end140, %if.end
  %3 = load ptr, ptr %fieldstr.addr, align 8
  %4 = load i8, ptr %3, align 1
  %conv = sext i8 %4 to i32
  %cmp1 = icmp eq i32 %conv, 45
  br i1 %cmp1, label %if.then3, label %if.else

if.then3:                                         ; preds = %while.body
  store i8 0, ptr %in_digits, align 1
  %5 = load i8, ptr %dash_found, align 1
  %tobool4 = trunc i8 %5 to i1
  br i1 %tobool4, label %if.then5, label %if.end10

if.then5:                                         ; preds = %if.then3
  br label %do.body

do.body:                                          ; preds = %if.then5
  %6 = load i32, ptr %options.addr, align 4
  %and6 = and i32 %6, 4
  %tobool7 = icmp ne i32 %and6, 0
  br i1 %tobool7, label %cond.true, label %cond.false

cond.true:                                        ; preds = %do.body
  %call8 = call ptr @gettext(ptr noundef @.str.1) #11
  br label %cond.end

cond.false:                                       ; preds = %do.body
  %call9 = call ptr @gettext(ptr noundef @.str.2) #11
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %call8, %cond.true ], [ %call9, %cond.false ]
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %cond) #12
  call void @usage(i32 noundef 1) #13
  unreachable

do.end:                                           ; No predecessors!
  br label %if.end10

if.end10:                                         ; preds = %do.end, %if.then3
  store i8 1, ptr %dash_found, align 1
  %7 = load ptr, ptr %fieldstr.addr, align 8
  %incdec.ptr11 = getelementptr inbounds i8, ptr %7, i32 1
  store ptr %incdec.ptr11, ptr %fieldstr.addr, align 8
  %8 = load i8, ptr %lhs_specified, align 1
  %tobool12 = trunc i8 %8 to i1
  br i1 %tobool12, label %land.lhs.true14, label %if.end27

land.lhs.true14:                                  ; preds = %if.end10
  %9 = load i64, ptr %value, align 8
  %tobool15 = icmp ne i64 %9, 0
  br i1 %tobool15, label %if.end27, label %if.then16

if.then16:                                        ; preds = %land.lhs.true14
  br label %do.body17

do.body17:                                        ; preds = %if.then16
  %10 = load i32, ptr %options.addr, align 4
  %and18 = and i32 %10, 4
  %tobool19 = icmp ne i32 %and18, 0
  br i1 %tobool19, label %cond.true20, label %cond.false22

cond.true20:                                      ; preds = %do.body17
  %call21 = call ptr @gettext(ptr noundef @.str.3) #11
  br label %cond.end24

cond.false22:                                     ; preds = %do.body17
  %call23 = call ptr @gettext(ptr noundef @.str.4) #11
  br label %cond.end24

cond.end24:                                       ; preds = %cond.false22, %cond.true20
  %cond25 = phi ptr [ %call21, %cond.true20 ], [ %call23, %cond.false22 ]
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %cond25) #12
  call void @usage(i32 noundef 1) #13
  unreachable

do.end26:                                         ; No predecessors!
  br label %if.end27

if.end27:                                         ; preds = %do.end26, %land.lhs.true14, %if.end10
  %11 = load i8, ptr %lhs_specified, align 1
  %tobool28 = trunc i8 %11 to i1
  br i1 %tobool28, label %cond.true30, label %cond.false31

cond.true30:                                      ; preds = %if.end27
  %12 = load i64, ptr %value, align 8
  br label %cond.end32

cond.false31:                                     ; preds = %if.end27
  br label %cond.end32

cond.end32:                                       ; preds = %cond.false31, %cond.true30
  %cond33 = phi i64 [ %12, %cond.true30 ], [ 1, %cond.false31 ]
  store i64 %cond33, ptr %initial, align 8
  store i64 0, ptr %value, align 8
  br label %if.end140

if.else:                                          ; preds = %while.body
  %13 = load ptr, ptr %fieldstr.addr, align 8
  %14 = load i8, ptr %13, align 1
  %conv34 = sext i8 %14 to i32
  %cmp35 = icmp eq i32 %conv34, 44
  br i1 %cmp35, label %if.then47, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else
  %call37 = call ptr @__ctype_b_loc() #14
  %15 = load ptr, ptr %call37, align 8
  %16 = load ptr, ptr %fieldstr.addr, align 8
  %17 = load i8, ptr %16, align 1
  %call38 = call zeroext i8 @to_uchar(i8 noundef signext %17)
  %conv39 = zext i8 %call38 to i32
  %idxprom = sext i32 %conv39 to i64
  %arrayidx = getelementptr inbounds i16, ptr %15, i64 %idxprom
  %18 = load i16, ptr %arrayidx, align 2
  %conv40 = zext i16 %18 to i32
  %and41 = and i32 %conv40, 1
  %tobool42 = icmp ne i32 %and41, 0
  br i1 %tobool42, label %if.then47, label %lor.lhs.false43

lor.lhs.false43:                                  ; preds = %lor.lhs.false
  %19 = load ptr, ptr %fieldstr.addr, align 8
  %20 = load i8, ptr %19, align 1
  %conv44 = sext i8 %20 to i32
  %cmp45 = icmp eq i32 %conv44, 0
  br i1 %cmp45, label %if.then47, label %if.else96

if.then47:                                        ; preds = %lor.lhs.false43, %lor.lhs.false, %if.else
  store i8 0, ptr %in_digits, align 1
  %21 = load i8, ptr %dash_found, align 1
  %tobool48 = trunc i8 %21 to i1
  br i1 %tobool48, label %if.then49, label %if.else74

if.then49:                                        ; preds = %if.then47
  store i8 0, ptr %dash_found, align 1
  %22 = load i8, ptr %lhs_specified, align 1
  %tobool50 = trunc i8 %22 to i1
  br i1 %tobool50, label %if.end62, label %land.lhs.true51

land.lhs.true51:                                  ; preds = %if.then49
  %23 = load i8, ptr %rhs_specified, align 1
  %tobool52 = trunc i8 %23 to i1
  br i1 %tobool52, label %if.end62, label %if.then53

if.then53:                                        ; preds = %land.lhs.true51
  %24 = load i32, ptr %options.addr, align 4
  %and54 = and i32 %24, 1
  %tobool55 = icmp ne i32 %and54, 0
  br i1 %tobool55, label %if.then56, label %if.else57

if.then56:                                        ; preds = %if.then53
  store i64 1, ptr %initial, align 8
  br label %if.end61

if.else57:                                        ; preds = %if.then53
  br label %do.body58

do.body58:                                        ; preds = %if.else57
  %call59 = call ptr @gettext(ptr noundef @.str.5) #11
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %call59) #12
  call void @usage(i32 noundef 1) #13
  unreachable

do.end60:                                         ; No predecessors!
  br label %if.end61

if.end61:                                         ; preds = %do.end60, %if.then56
  br label %if.end62

if.end62:                                         ; preds = %if.end61, %land.lhs.true51, %if.then49
  %25 = load i8, ptr %rhs_specified, align 1
  %tobool63 = trunc i8 %25 to i1
  br i1 %tobool63, label %if.else65, label %if.then64

if.then64:                                        ; preds = %if.end62
  %26 = load i64, ptr %initial, align 8
  call void @add_range_pair(i64 noundef %26, i64 noundef -1)
  br label %if.end73

if.else65:                                        ; preds = %if.end62
  %27 = load i64, ptr %value, align 8
  %28 = load i64, ptr %initial, align 8
  %cmp66 = icmp ult i64 %27, %28
  br i1 %cmp66, label %if.then68, label %if.end72

if.then68:                                        ; preds = %if.else65
  br label %do.body69

do.body69:                                        ; preds = %if.then68
  %call70 = call ptr @gettext(ptr noundef @.str.6) #11
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %call70) #12
  call void @usage(i32 noundef 1) #13
  unreachable

do.end71:                                         ; No predecessors!
  br label %if.end72

if.end72:                                         ; preds = %do.end71, %if.else65
  %29 = load i64, ptr %initial, align 8
  %30 = load i64, ptr %value, align 8
  call void @add_range_pair(i64 noundef %29, i64 noundef %30)
  br label %if.end73

if.end73:                                         ; preds = %if.end72, %if.then64
  store i64 0, ptr %value, align 8
  br label %if.end89

if.else74:                                        ; preds = %if.then47
  %31 = load i64, ptr %value, align 8
  %cmp75 = icmp eq i64 %31, 0
  br i1 %cmp75, label %if.then77, label %if.end88

if.then77:                                        ; preds = %if.else74
  br label %do.body78

do.body78:                                        ; preds = %if.then77
  %32 = load i32, ptr %options.addr, align 4
  %and79 = and i32 %32, 4
  %tobool80 = icmp ne i32 %and79, 0
  br i1 %tobool80, label %cond.true81, label %cond.false83

cond.true81:                                      ; preds = %do.body78
  %call82 = call ptr @gettext(ptr noundef @.str.3) #11
  br label %cond.end85

cond.false83:                                     ; preds = %do.body78
  %call84 = call ptr @gettext(ptr noundef @.str.4) #11
  br label %cond.end85

cond.end85:                                       ; preds = %cond.false83, %cond.true81
  %cond86 = phi ptr [ %call82, %cond.true81 ], [ %call84, %cond.false83 ]
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %cond86) #12
  call void @usage(i32 noundef 1) #13
  unreachable

do.end87:                                         ; No predecessors!
  br label %if.end88

if.end88:                                         ; preds = %do.end87, %if.else74
  %33 = load i64, ptr %value, align 8
  %34 = load i64, ptr %value, align 8
  call void @add_range_pair(i64 noundef %33, i64 noundef %34)
  store i64 0, ptr %value, align 8
  br label %if.end89

if.end89:                                         ; preds = %if.end88, %if.end73
  %35 = load ptr, ptr %fieldstr.addr, align 8
  %36 = load i8, ptr %35, align 1
  %conv90 = sext i8 %36 to i32
  %cmp91 = icmp eq i32 %conv90, 0
  br i1 %cmp91, label %if.then93, label %if.end94

if.then93:                                        ; preds = %if.end89
  br label %while.end

if.end94:                                         ; preds = %if.end89
  %37 = load ptr, ptr %fieldstr.addr, align 8
  %incdec.ptr95 = getelementptr inbounds i8, ptr %37, i32 1
  store ptr %incdec.ptr95, ptr %fieldstr.addr, align 8
  store i8 0, ptr %lhs_specified, align 1
  store i8 0, ptr %rhs_specified, align 1
  br label %if.end139

if.else96:                                        ; preds = %lor.lhs.false43
  %38 = load ptr, ptr %fieldstr.addr, align 8
  %39 = load i8, ptr %38, align 1
  %conv97 = sext i8 %39 to i32
  %call98 = call zeroext i1 @c_isdigit(i32 noundef %conv97)
  br i1 %call98, label %if.then99, label %if.else128

if.then99:                                        ; preds = %if.else96
  %40 = load i8, ptr %in_digits, align 1
  %tobool100 = trunc i8 %40 to i1
  br i1 %tobool100, label %lor.lhs.false101, label %if.then103

lor.lhs.false101:                                 ; preds = %if.then99
  %41 = load ptr, ptr @set_fields.num_start, align 8
  %tobool102 = icmp ne ptr %41, null
  br i1 %tobool102, label %if.end104, label %if.then103

if.then103:                                       ; preds = %lor.lhs.false101, %if.then99
  %42 = load ptr, ptr %fieldstr.addr, align 8
  store ptr %42, ptr @set_fields.num_start, align 8
  br label %if.end104

if.end104:                                        ; preds = %if.then103, %lor.lhs.false101
  store i8 1, ptr %in_digits, align 1
  %43 = load i8, ptr %dash_found, align 1
  %tobool105 = trunc i8 %43 to i1
  br i1 %tobool105, label %if.then106, label %if.else107

if.then106:                                       ; preds = %if.end104
  store i8 1, ptr %rhs_specified, align 1
  br label %if.end108

if.else107:                                       ; preds = %if.end104
  store i8 1, ptr %lhs_specified, align 1
  br label %if.end108

if.end108:                                        ; preds = %if.else107, %if.then106
  %44 = load i64, ptr %value, align 8
  %45 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 10, i64 %44)
  %46 = extractvalue { i64, i1 } %45, 1
  %47 = extractvalue { i64, i1 } %45, 0
  %48 = icmp ne i64 %47, 0
  %49 = and i1 false, %48
  %50 = or i1 %46, %49
  %51 = sub i64 0, %47
  %52 = select i1 false, i64 %51, i64 %47
  store i64 %52, ptr %value, align 8
  br i1 %50, label %if.then114, label %land.lhs.true109

land.lhs.true109:                                 ; preds = %if.end108
  %53 = load i64, ptr %value, align 8
  %54 = load ptr, ptr %fieldstr.addr, align 8
  %55 = load i8, ptr %54, align 1
  %conv110 = sext i8 %55 to i32
  %sub = sub nsw i32 %conv110, 48
  %56 = zext i64 %53 to i65
  %57 = sext i32 %sub to i65
  %58 = call { i65, i1 } @llvm.sadd.with.overflow.i65(i65 %56, i65 %57)
  %59 = extractvalue { i65, i1 } %58, 1
  %60 = extractvalue { i65, i1 } %58, 0
  %61 = trunc i65 %60 to i64
  %62 = zext i64 %61 to i65
  %63 = icmp ne i65 %60, %62
  %64 = or i1 %59, %63
  store i64 %61, ptr %value, align 8
  br i1 %64, label %if.then114, label %lor.lhs.false111

lor.lhs.false111:                                 ; preds = %land.lhs.true109
  %65 = load i64, ptr %value, align 8
  %cmp112 = icmp eq i64 %65, -1
  br i1 %cmp112, label %if.then114, label %if.end126

if.then114:                                       ; preds = %lor.lhs.false111, %land.lhs.true109, %if.end108
  %66 = load ptr, ptr @set_fields.num_start, align 8
  %67 = load ptr, ptr @set_fields.num_start, align 8
  %call115 = call i64 @strspn(ptr noundef %67, ptr noundef @.str.7) #10
  %call116 = call noalias nonnull ptr @ximemdup0(ptr noundef %66, i64 noundef %call115)
  store ptr %call116, ptr %bad_num, align 8
  %68 = load i32, ptr %options.addr, align 4
  %and117 = and i32 %68, 4
  %tobool118 = icmp ne i32 %and117, 0
  br i1 %tobool118, label %cond.true119, label %cond.false121

cond.true119:                                     ; preds = %if.then114
  %call120 = call ptr @gettext(ptr noundef @.str.8) #11
  br label %cond.end123

cond.false121:                                    ; preds = %if.then114
  %call122 = call ptr @gettext(ptr noundef @.str.9) #11
  br label %cond.end123

cond.end123:                                      ; preds = %cond.false121, %cond.true119
  %cond124 = phi ptr [ %call120, %cond.true119 ], [ %call122, %cond.false121 ]
  %69 = load ptr, ptr %bad_num, align 8
  %call125 = call ptr @quote(ptr noundef %69)
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %cond124, ptr noundef %call125) #12
  %70 = load ptr, ptr %bad_num, align 8
  call void @free(ptr noundef %70) #11
  call void @usage(i32 noundef 1) #13
  unreachable

if.end126:                                        ; preds = %lor.lhs.false111
  %71 = load ptr, ptr %fieldstr.addr, align 8
  %incdec.ptr127 = getelementptr inbounds i8, ptr %71, i32 1
  store ptr %incdec.ptr127, ptr %fieldstr.addr, align 8
  br label %if.end138

if.else128:                                       ; preds = %if.else96
  %72 = load i32, ptr %options.addr, align 4
  %and129 = and i32 %72, 4
  %tobool130 = icmp ne i32 %and129, 0
  br i1 %tobool130, label %cond.true131, label %cond.false133

cond.true131:                                     ; preds = %if.else128
  %call132 = call ptr @gettext(ptr noundef @.str.10) #11
  br label %cond.end135

cond.false133:                                    ; preds = %if.else128
  %call134 = call ptr @gettext(ptr noundef @.str.11) #11
  br label %cond.end135

cond.end135:                                      ; preds = %cond.false133, %cond.true131
  %cond136 = phi ptr [ %call132, %cond.true131 ], [ %call134, %cond.false133 ]
  %73 = load ptr, ptr %fieldstr.addr, align 8
  %call137 = call ptr @quote(ptr noundef %73)
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %cond136, ptr noundef %call137) #12
  call void @usage(i32 noundef 1) #13
  unreachable

if.end138:                                        ; preds = %if.end126
  br label %if.end139

if.end139:                                        ; preds = %if.end138, %if.end94
  br label %if.end140

if.end140:                                        ; preds = %if.end139, %cond.end32
  br label %while.body

while.end:                                        ; preds = %if.then93
  %74 = load i64, ptr @n_frp, align 8
  %tobool141 = icmp ne i64 %74, 0
  br i1 %tobool141, label %if.end153, label %if.then142

if.then142:                                       ; preds = %while.end
  br label %do.body143

do.body143:                                       ; preds = %if.then142
  %75 = load i32, ptr %options.addr, align 4
  %and144 = and i32 %75, 4
  %tobool145 = icmp ne i32 %and144, 0
  br i1 %tobool145, label %cond.true146, label %cond.false148

cond.true146:                                     ; preds = %do.body143
  %call147 = call ptr @gettext(ptr noundef @.str.12) #11
  br label %cond.end150

cond.false148:                                    ; preds = %do.body143
  %call149 = call ptr @gettext(ptr noundef @.str.13) #11
  br label %cond.end150

cond.end150:                                      ; preds = %cond.false148, %cond.true146
  %cond151 = phi ptr [ %call147, %cond.true146 ], [ %call149, %cond.false148 ]
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %cond151) #12
  call void @usage(i32 noundef 1) #13
  unreachable

do.end152:                                        ; No predecessors!
  br label %if.end153

if.end153:                                        ; preds = %do.end152, %while.end
  %76 = load ptr, ptr @frp, align 8
  %77 = load i64, ptr @n_frp, align 8
  call void @qsort(ptr noundef %76, i64 noundef %77, i64 noundef 16, ptr noundef @compare_ranges)
  store i64 0, ptr %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc188, %if.end153
  %78 = load i64, ptr %i, align 8
  %79 = load i64, ptr @n_frp, align 8
  %cmp154 = icmp slt i64 %78, %79
  br i1 %cmp154, label %for.body, label %for.end190

for.body:                                         ; preds = %for.cond
  %80 = load i64, ptr %i, align 8
  %add = add nsw i64 %80, 1
  store i64 %add, ptr %j, align 8
  br label %for.cond156

for.cond156:                                      ; preds = %for.inc, %for.body
  %81 = load i64, ptr %j, align 8
  %82 = load i64, ptr @n_frp, align 8
  %cmp157 = icmp slt i64 %81, %82
  br i1 %cmp157, label %for.body159, label %for.end

for.body159:                                      ; preds = %for.cond156
  %83 = load ptr, ptr @frp, align 8
  %84 = load i64, ptr %j, align 8
  %arrayidx160 = getelementptr inbounds %struct.field_range_pair, ptr %83, i64 %84
  %lo = getelementptr inbounds %struct.field_range_pair, ptr %arrayidx160, i32 0, i32 0
  %85 = load i64, ptr %lo, align 8
  %86 = load ptr, ptr @frp, align 8
  %87 = load i64, ptr %i, align 8
  %arrayidx161 = getelementptr inbounds %struct.field_range_pair, ptr %86, i64 %87
  %hi = getelementptr inbounds %struct.field_range_pair, ptr %arrayidx161, i32 0, i32 1
  %88 = load i64, ptr %hi, align 8
  %cmp162 = icmp ule i64 %85, %88
  br i1 %cmp162, label %if.then164, label %if.else186

if.then164:                                       ; preds = %for.body159
  %89 = load ptr, ptr @frp, align 8
  %90 = load i64, ptr %j, align 8
  %arrayidx165 = getelementptr inbounds %struct.field_range_pair, ptr %89, i64 %90
  %hi166 = getelementptr inbounds %struct.field_range_pair, ptr %arrayidx165, i32 0, i32 1
  %91 = load i64, ptr %hi166, align 8
  %92 = load ptr, ptr @frp, align 8
  %93 = load i64, ptr %i, align 8
  %arrayidx167 = getelementptr inbounds %struct.field_range_pair, ptr %92, i64 %93
  %hi168 = getelementptr inbounds %struct.field_range_pair, ptr %arrayidx167, i32 0, i32 1
  %94 = load i64, ptr %hi168, align 8
  %cmp169 = icmp ugt i64 %91, %94
  br i1 %cmp169, label %cond.true171, label %cond.false174

cond.true171:                                     ; preds = %if.then164
  %95 = load ptr, ptr @frp, align 8
  %96 = load i64, ptr %j, align 8
  %arrayidx172 = getelementptr inbounds %struct.field_range_pair, ptr %95, i64 %96
  %hi173 = getelementptr inbounds %struct.field_range_pair, ptr %arrayidx172, i32 0, i32 1
  %97 = load i64, ptr %hi173, align 8
  br label %cond.end177

cond.false174:                                    ; preds = %if.then164
  %98 = load ptr, ptr @frp, align 8
  %99 = load i64, ptr %i, align 8
  %arrayidx175 = getelementptr inbounds %struct.field_range_pair, ptr %98, i64 %99
  %hi176 = getelementptr inbounds %struct.field_range_pair, ptr %arrayidx175, i32 0, i32 1
  %100 = load i64, ptr %hi176, align 8
  br label %cond.end177

cond.end177:                                      ; preds = %cond.false174, %cond.true171
  %cond178 = phi i64 [ %97, %cond.true171 ], [ %100, %cond.false174 ]
  %101 = load ptr, ptr @frp, align 8
  %102 = load i64, ptr %i, align 8
  %arrayidx179 = getelementptr inbounds %struct.field_range_pair, ptr %101, i64 %102
  %hi180 = getelementptr inbounds %struct.field_range_pair, ptr %arrayidx179, i32 0, i32 1
  store i64 %cond178, ptr %hi180, align 8
  %103 = load ptr, ptr @frp, align 8
  %104 = load i64, ptr %j, align 8
  %add.ptr = getelementptr inbounds %struct.field_range_pair, ptr %103, i64 %104
  %105 = load ptr, ptr @frp, align 8
  %106 = load i64, ptr %j, align 8
  %add.ptr181 = getelementptr inbounds %struct.field_range_pair, ptr %105, i64 %106
  %add.ptr182 = getelementptr inbounds %struct.field_range_pair, ptr %add.ptr181, i64 1
  %107 = load i64, ptr @n_frp, align 8
  %108 = load i64, ptr %j, align 8
  %sub183 = sub nsw i64 %107, %108
  %sub184 = sub nsw i64 %sub183, 1
  %mul = mul i64 %sub184, 16
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %add.ptr, ptr align 8 %add.ptr182, i64 %mul, i1 false)
  %109 = load i64, ptr @n_frp, align 8
  %dec = add nsw i64 %109, -1
  store i64 %dec, ptr @n_frp, align 8
  %110 = load i64, ptr %j, align 8
  %dec185 = add nsw i64 %110, -1
  store i64 %dec185, ptr %j, align 8
  br label %if.end187

if.else186:                                       ; preds = %for.body159
  br label %for.end

if.end187:                                        ; preds = %cond.end177
  br label %for.inc

for.inc:                                          ; preds = %if.end187
  %111 = load i64, ptr %j, align 8
  %inc = add nsw i64 %111, 1
  store i64 %inc, ptr %j, align 8
  br label %for.cond156, !llvm.loop !6

for.end:                                          ; preds = %if.else186, %for.cond156
  br label %for.inc188

for.inc188:                                       ; preds = %for.end
  %112 = load i64, ptr %i, align 8
  %inc189 = add nsw i64 %112, 1
  store i64 %inc189, ptr %i, align 8
  br label %for.cond, !llvm.loop !8

for.end190:                                       ; preds = %for.cond
  %113 = load i32, ptr %options.addr, align 4
  %and191 = and i32 %113, 2
  %tobool192 = icmp ne i32 %and191, 0
  br i1 %tobool192, label %if.then193, label %if.end194

if.then193:                                       ; preds = %for.end190
  call void @complement_rp()
  br label %if.end194

if.end194:                                        ; preds = %if.then193, %for.end190
  %114 = load i64, ptr @n_frp, align 8
  %inc195 = add nsw i64 %114, 1
  store i64 %inc195, ptr @n_frp, align 8
  %115 = load ptr, ptr @frp, align 8
  %116 = load i64, ptr @n_frp, align 8
  %mul196 = mul i64 %116, 16
  %call197 = call ptr @xrealloc(ptr noundef %115, i64 noundef %mul196) #15
  store ptr %call197, ptr @frp, align 8
  %117 = load ptr, ptr @frp, align 8
  %118 = load i64, ptr @n_frp, align 8
  %sub198 = sub nsw i64 %118, 1
  %arrayidx199 = getelementptr inbounds %struct.field_range_pair, ptr %117, i64 %sub198
  %hi200 = getelementptr inbounds %struct.field_range_pair, ptr %arrayidx199, i32 0, i32 1
  store i64 -1, ptr %hi200, align 8
  %119 = load ptr, ptr @frp, align 8
  %120 = load i64, ptr @n_frp, align 8
  %sub201 = sub nsw i64 %120, 1
  %arrayidx202 = getelementptr inbounds %struct.field_range_pair, ptr %119, i64 %sub201
  %lo203 = getelementptr inbounds %struct.field_range_pair, ptr %arrayidx202, i32 0, i32 0
  store i64 -1, ptr %lo203, align 8
  ret void
}

; Function Attrs: nounwind willreturn memory(read)
declare i32 @strcmp(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind
declare ptr @gettext(ptr noundef) #2

; Function Attrs: cold
declare void @error(i32 noundef, i32 noundef, ptr noundef, ...) #3

; Function Attrs: noreturn
declare void @usage(i32 noundef) #4

; Function Attrs: nounwind willreturn memory(none)
declare ptr @__ctype_b_loc() #5

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i8 @to_uchar(i8 noundef signext %ch) #0 {
entry:
  %ch.addr = alloca i8, align 1
  store i8 %ch, ptr %ch.addr, align 1
  %0 = load i8, ptr %ch.addr, align 1
  ret i8 %0
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_range_pair(i64 noundef %lo, i64 noundef %hi) #0 {
entry:
  %lo.addr = alloca i64, align 8
  %hi.addr = alloca i64, align 8
  store i64 %lo, ptr %lo.addr, align 8
  store i64 %hi, ptr %hi.addr, align 8
  %0 = load i64, ptr @n_frp, align 8
  %1 = load i64, ptr @n_frp_allocated, align 8
  %cmp = icmp eq i64 %0, %1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr @frp, align 8
  %call = call nonnull ptr @xpalloc(ptr noundef %2, ptr noundef @n_frp_allocated, i64 noundef 1, i64 noundef -1, i64 noundef 16)
  store ptr %call, ptr @frp, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i64, ptr %lo.addr, align 8
  %4 = load ptr, ptr @frp, align 8
  %5 = load i64, ptr @n_frp, align 8
  %arrayidx = getelementptr inbounds %struct.field_range_pair, ptr %4, i64 %5
  %lo1 = getelementptr inbounds %struct.field_range_pair, ptr %arrayidx, i32 0, i32 0
  store i64 %3, ptr %lo1, align 8
  %6 = load i64, ptr %hi.addr, align 8
  %7 = load ptr, ptr @frp, align 8
  %8 = load i64, ptr @n_frp, align 8
  %arrayidx2 = getelementptr inbounds %struct.field_range_pair, ptr %7, i64 %8
  %hi3 = getelementptr inbounds %struct.field_range_pair, ptr %arrayidx2, i32 0, i32 1
  store i64 %6, ptr %hi3, align 8
  %9 = load i64, ptr @n_frp, align 8
  %inc = add nsw i64 %9, 1
  store i64 %inc, ptr @n_frp, align 8
  ret void
}

declare zeroext i1 @c_isdigit(i32 noundef) #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #7

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i65, i1 } @llvm.sadd.with.overflow.i65(i65, i65) #7

; Function Attrs: nounwind willreturn memory(read)
declare i64 @strspn(ptr noundef, ptr noundef) #1

declare noalias nonnull ptr @ximemdup0(ptr noundef, i64 noundef) #6

declare ptr @quote(ptr noundef) #6

; Function Attrs: nounwind
declare void @free(ptr noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @compare_ranges(ptr noundef %a, ptr noundef %b) #0 {
entry:
  %a.addr = alloca ptr, align 8
  %b.addr = alloca ptr, align 8
  %ap = alloca ptr, align 8
  %bp = alloca ptr, align 8
  store ptr %a, ptr %a.addr, align 8
  store ptr %b, ptr %b.addr, align 8
  %0 = load ptr, ptr %a.addr, align 8
  store ptr %0, ptr %ap, align 8
  %1 = load ptr, ptr %b.addr, align 8
  store ptr %1, ptr %bp, align 8
  %2 = load ptr, ptr %ap, align 8
  %lo = getelementptr inbounds %struct.field_range_pair, ptr %2, i32 0, i32 0
  %3 = load i64, ptr %lo, align 8
  %4 = load ptr, ptr %bp, align 8
  %lo1 = getelementptr inbounds %struct.field_range_pair, ptr %4, i32 0, i32 0
  %5 = load i64, ptr %lo1, align 8
  %cmp = icmp ugt i64 %3, %5
  %conv = zext i1 %cmp to i32
  %6 = load ptr, ptr %ap, align 8
  %lo2 = getelementptr inbounds %struct.field_range_pair, ptr %6, i32 0, i32 0
  %7 = load i64, ptr %lo2, align 8
  %8 = load ptr, ptr %bp, align 8
  %lo3 = getelementptr inbounds %struct.field_range_pair, ptr %8, i32 0, i32 0
  %9 = load i64, ptr %lo3, align 8
  %cmp4 = icmp ult i64 %7, %9
  %conv5 = zext i1 %cmp4 to i32
  %sub = sub nsw i32 %conv, %conv5
  ret i32 %sub
}

declare void @qsort(ptr noundef, i64 noundef, i64 noundef, ptr noundef) #6

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #8

; Function Attrs: noinline nounwind optnone uwtable
define internal void @complement_rp() #0 {
entry:
  %c = alloca ptr, align 8
  %n = alloca i64, align 8
  %i = alloca i64, align 8
  %0 = load ptr, ptr @frp, align 8
  store ptr %0, ptr %c, align 8
  %1 = load i64, ptr @n_frp, align 8
  store i64 %1, ptr %n, align 8
  store ptr null, ptr @frp, align 8
  store i64 0, ptr @n_frp, align 8
  store i64 0, ptr @n_frp_allocated, align 8
  %2 = load ptr, ptr %c, align 8
  %arrayidx = getelementptr inbounds %struct.field_range_pair, ptr %2, i64 0
  %lo = getelementptr inbounds %struct.field_range_pair, ptr %arrayidx, i32 0, i32 0
  %3 = load i64, ptr %lo, align 8
  %cmp = icmp ugt i64 %3, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load ptr, ptr %c, align 8
  %arrayidx1 = getelementptr inbounds %struct.field_range_pair, ptr %4, i64 0
  %lo2 = getelementptr inbounds %struct.field_range_pair, ptr %arrayidx1, i32 0, i32 0
  %5 = load i64, ptr %lo2, align 8
  %sub = sub i64 %5, 1
  call void @add_range_pair(i64 noundef 1, i64 noundef %sub)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  store i64 1, ptr %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %6 = load i64, ptr %i, align 8
  %7 = load i64, ptr %n, align 8
  %cmp3 = icmp slt i64 %6, %7
  br i1 %cmp3, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load ptr, ptr %c, align 8
  %9 = load i64, ptr %i, align 8
  %sub4 = sub nsw i64 %9, 1
  %arrayidx5 = getelementptr inbounds %struct.field_range_pair, ptr %8, i64 %sub4
  %hi = getelementptr inbounds %struct.field_range_pair, ptr %arrayidx5, i32 0, i32 1
  %10 = load i64, ptr %hi, align 8
  %add = add i64 %10, 1
  %11 = load ptr, ptr %c, align 8
  %12 = load i64, ptr %i, align 8
  %arrayidx6 = getelementptr inbounds %struct.field_range_pair, ptr %11, i64 %12
  %lo7 = getelementptr inbounds %struct.field_range_pair, ptr %arrayidx6, i32 0, i32 0
  %13 = load i64, ptr %lo7, align 8
  %cmp8 = icmp eq i64 %add, %13
  br i1 %cmp8, label %if.then9, label %if.end10

if.then9:                                         ; preds = %for.body
  br label %for.inc

if.end10:                                         ; preds = %for.body
  %14 = load ptr, ptr %c, align 8
  %15 = load i64, ptr %i, align 8
  %sub11 = sub nsw i64 %15, 1
  %arrayidx12 = getelementptr inbounds %struct.field_range_pair, ptr %14, i64 %sub11
  %hi13 = getelementptr inbounds %struct.field_range_pair, ptr %arrayidx12, i32 0, i32 1
  %16 = load i64, ptr %hi13, align 8
  %add14 = add i64 %16, 1
  %17 = load ptr, ptr %c, align 8
  %18 = load i64, ptr %i, align 8
  %arrayidx15 = getelementptr inbounds %struct.field_range_pair, ptr %17, i64 %18
  %lo16 = getelementptr inbounds %struct.field_range_pair, ptr %arrayidx15, i32 0, i32 0
  %19 = load i64, ptr %lo16, align 8
  %sub17 = sub i64 %19, 1
  call void @add_range_pair(i64 noundef %add14, i64 noundef %sub17)
  br label %for.inc

for.inc:                                          ; preds = %if.end10, %if.then9
  %20 = load i64, ptr %i, align 8
  %inc = add nsw i64 %20, 1
  store i64 %inc, ptr %i, align 8
  br label %for.cond, !llvm.loop !9

for.end:                                          ; preds = %for.cond
  %21 = load ptr, ptr %c, align 8
  %22 = load i64, ptr %n, align 8
  %sub18 = sub nsw i64 %22, 1
  %arrayidx19 = getelementptr inbounds %struct.field_range_pair, ptr %21, i64 %sub18
  %hi20 = getelementptr inbounds %struct.field_range_pair, ptr %arrayidx19, i32 0, i32 1
  %23 = load i64, ptr %hi20, align 8
  %cmp21 = icmp ult i64 %23, -1
  br i1 %cmp21, label %if.then22, label %if.end27

if.then22:                                        ; preds = %for.end
  %24 = load ptr, ptr %c, align 8
  %25 = load i64, ptr %n, align 8
  %sub23 = sub nsw i64 %25, 1
  %arrayidx24 = getelementptr inbounds %struct.field_range_pair, ptr %24, i64 %sub23
  %hi25 = getelementptr inbounds %struct.field_range_pair, ptr %arrayidx24, i32 0, i32 1
  %26 = load i64, ptr %hi25, align 8
  %add26 = add i64 %26, 1
  call void @add_range_pair(i64 noundef %add26, i64 noundef -1)
  br label %if.end27

if.end27:                                         ; preds = %if.then22, %for.end
  %27 = load ptr, ptr %c, align 8
  call void @free(ptr noundef %27) #11
  ret void
}

; Function Attrs: allocsize(1)
declare ptr @xrealloc(ptr noundef, i64 noundef) #9

declare nonnull ptr @xpalloc(ptr noundef, ptr noundef, i64 noundef, i64 noundef, i64 noundef) #6

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind willreturn memory(read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { cold "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind willreturn memory(none) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { allocsize(1) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nounwind willreturn memory(read) }
attributes #11 = { nounwind }
attributes #12 = { cold }
attributes #13 = { noreturn }
attributes #14 = { nounwind willreturn memory(none) }
attributes #15 = { allocsize(1) }

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
