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
@set_fields.num_start = internal unnamed_addr global ptr null, align 8
@.str.7 = private unnamed_addr constant [11 x i8] c"0123456789\00", align 1
@.str.8 = private unnamed_addr constant [38 x i8] c"byte/character offset %s is too large\00", align 1
@.str.9 = private unnamed_addr constant [29 x i8] c"field number %s is too large\00", align 1
@.str.10 = private unnamed_addr constant [35 x i8] c"invalid byte/character position %s\00", align 1
@.str.11 = private unnamed_addr constant [23 x i8] c"invalid field value %s\00", align 1
@n_frp = dso_local local_unnamed_addr global i64 0, align 8
@.str.12 = private unnamed_addr constant [41 x i8] c"missing list of byte/character positions\00", align 1
@.str.13 = private unnamed_addr constant [23 x i8] c"missing list of fields\00", align 1
@frp = dso_local local_unnamed_addr global ptr null, align 8
@n_frp_allocated = internal global i64 0, align 8

; Function Attrs: nounwind uwtable
define dso_local void @set_fields(ptr noundef %fieldstr, i32 noundef %options) local_unnamed_addr #0 {
entry:
  %and = and i32 %options, 1
  %tobool.not = icmp ne i32 %and, 0
  br i1 %tobool.not, label %land.lhs.true, label %while.cond.preheader

land.lhs.true:                                    ; preds = %entry
  %call = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %fieldstr, ptr noundef nonnull dereferenceable(2) @.str) #13
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.then, label %while.cond.preheader

if.then:                                          ; preds = %land.lhs.true
  %incdec.ptr = getelementptr inbounds i8, ptr %fieldstr, i64 1
  br label %while.cond.preheader

while.cond.preheader:                             ; preds = %if.then, %land.lhs.true, %entry
  %value.1.ph = phi i64 [ 0, %entry ], [ 0, %land.lhs.true ], [ 1, %if.then ]
  %dash_found.1.ph = phi i8 [ 0, %entry ], [ 0, %land.lhs.true ], [ 1, %if.then ]
  %fieldstr.addr.1.ph = phi ptr [ %fieldstr, %entry ], [ %fieldstr, %land.lhs.true ], [ %incdec.ptr, %if.then ]
  br label %while.cond

while.cond:                                       ; preds = %if.end144, %while.cond.preheader
  %initial.0 = phi i64 [ %initial.3, %if.end144 ], [ 1, %while.cond.preheader ]
  %value.1 = phi i64 [ %value.3, %if.end144 ], [ %value.1.ph, %while.cond.preheader ]
  %lhs_specified.1 = phi i8 [ %lhs_specified.3, %if.end144 ], [ %dash_found.1.ph, %while.cond.preheader ]
  %rhs_specified.0 = phi i8 [ %rhs_specified.2, %if.end144 ], [ 0, %while.cond.preheader ]
  %dash_found.1 = phi i8 [ %dash_found.3, %if.end144 ], [ %dash_found.1.ph, %while.cond.preheader ]
  %in_digits.0 = phi i1 [ %in_digits.1, %if.end144 ], [ false, %while.cond.preheader ]
  %fieldstr.addr.1 = phi ptr [ %fieldstr.addr.2, %if.end144 ], [ %fieldstr.addr.1.ph, %while.cond.preheader ]
  %0 = load i8, ptr %fieldstr.addr.1, align 1, !tbaa !5
  switch i8 %0, label %lor.lhs.false [
    i8 45, label %if.then3
    i8 44, label %if.then48
  ]

if.then3:                                         ; preds = %while.cond
  %1 = and i8 %dash_found.1, 1
  %tobool4.not = icmp eq i8 %1, 0
  br i1 %tobool4.not, label %if.end10, label %do.body

do.body:                                          ; preds = %if.then3
  %and6 = and i32 %options, 4
  %tobool7.not = icmp eq i32 %and6, 0
  %.str.2..str.1 = select i1 %tobool7.not, ptr @.str.2, ptr @.str.1
  %call9 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull %.str.2..str.1, i32 noundef 5) #14
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %call9) #15
  tail call void @usage(i32 noundef 1) #16
  unreachable

if.end10:                                         ; preds = %if.then3
  %2 = and i8 %lhs_specified.1, 1
  %tobool12.not269 = icmp eq i8 %2, 0
  %tobool15 = icmp ne i64 %value.1, 0
  %or.cond = or i1 %tobool15, %tobool12.not269
  br i1 %or.cond, label %if.end28, label %do.body17

do.body17:                                        ; preds = %if.end10
  %and18 = and i32 %options, 4
  %tobool19.not = icmp eq i32 %and18, 0
  %.str.4..str.3 = select i1 %tobool19.not, ptr @.str.4, ptr @.str.3
  %call23 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull %.str.4..str.3, i32 noundef 5) #14
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %call23) #15
  tail call void @usage(i32 noundef 1) #16
  unreachable

if.end28:                                         ; preds = %if.end10
  %cond34 = select i1 %tobool12.not269, i64 1, i64 %value.1
  br label %if.end144

lor.lhs.false:                                    ; preds = %while.cond
  %call38 = tail call ptr @__ctype_b_loc() #17
  %3 = load ptr, ptr %call38, align 8, !tbaa !8
  %idxprom = zext i8 %0 to i64
  %arrayidx = getelementptr inbounds i16, ptr %3, i64 %idxprom
  %4 = load i16, ptr %arrayidx, align 2, !tbaa !10
  %5 = and i16 %4, 1
  %tobool43.not = icmp ne i16 %5, 0
  %cmp46 = icmp eq i8 %0, 0
  %or.cond292 = or i1 %cmp46, %tobool43.not
  br i1 %or.cond292, label %if.then48, label %if.else100

if.then48:                                        ; preds = %lor.lhs.false, %while.cond
  %6 = and i8 %dash_found.1, 1
  %tobool49.not = icmp eq i8 %6, 0
  br i1 %tobool49.not, label %if.else77, label %if.then50

if.then50:                                        ; preds = %if.then48
  %7 = and i8 %lhs_specified.1, 1
  %tobool51.not = icmp ne i8 %7, 0
  %8 = and i8 %rhs_specified.0, 1
  %tobool53.not = icmp ne i8 %8, 0
  %or.cond270.not293 = select i1 %tobool51.not, i1 true, i1 %tobool53.not
  %brmerge = or i1 %tobool.not, %or.cond270.not293
  %initial.0.mux = select i1 %or.cond270.not293, i64 %initial.0, i64 1
  br i1 %brmerge, label %if.end64, label %do.body59

do.body59:                                        ; preds = %if.then50
  %call60 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.5, i32 noundef 5) #14
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %call60) #15
  tail call void @usage(i32 noundef 1) #16
  unreachable

if.end64:                                         ; preds = %if.then50
  br i1 %tobool53.not, label %if.else67, label %if.then66

if.then66:                                        ; preds = %if.end64
  %9 = load i64, ptr @n_frp, align 8, !tbaa !12
  %10 = load i64, ptr @n_frp_allocated, align 8, !tbaa !12
  %cmp.i = icmp eq i64 %9, %10
  %.pre.i = load ptr, ptr @frp, align 8, !tbaa !8
  br i1 %cmp.i, label %if.then.i, label %add_range_pair.exit

if.then.i:                                        ; preds = %if.then66
  %call.i271 = tail call nonnull ptr @xpalloc(ptr noundef %.pre.i, ptr noundef nonnull @n_frp_allocated, i64 noundef 1, i64 noundef -1, i64 noundef 16) #14
  store ptr %call.i271, ptr @frp, align 8, !tbaa !8
  %.pre4.i = load i64, ptr @n_frp, align 8, !tbaa !12
  br label %add_range_pair.exit

add_range_pair.exit:                              ; preds = %if.then.i, %if.then66
  %11 = phi i64 [ %.pre4.i, %if.then.i ], [ %9, %if.then66 ]
  %12 = phi ptr [ %call.i271, %if.then.i ], [ %.pre.i, %if.then66 ]
  %arrayidx.i = getelementptr inbounds %struct.field_range_pair, ptr %12, i64 %11
  store i64 %initial.0.mux, ptr %arrayidx.i, align 8, !tbaa !14
  br label %if.end93

if.else67:                                        ; preds = %if.end64
  %cmp68 = icmp ult i64 %value.1, %initial.0.mux
  br i1 %cmp68, label %do.body71, label %if.end75

do.body71:                                        ; preds = %if.else67
  %call72 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.6, i32 noundef 5) #14
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %call72) #15
  tail call void @usage(i32 noundef 1) #16
  unreachable

if.end75:                                         ; preds = %if.else67
  %13 = load i64, ptr @n_frp, align 8, !tbaa !12
  %14 = load i64, ptr @n_frp_allocated, align 8, !tbaa !12
  %cmp.i272 = icmp eq i64 %13, %14
  %.pre.i273 = load ptr, ptr @frp, align 8, !tbaa !8
  br i1 %cmp.i272, label %if.then.i277, label %add_range_pair.exit280

if.then.i277:                                     ; preds = %if.end75
  %call.i278 = tail call nonnull ptr @xpalloc(ptr noundef %.pre.i273, ptr noundef nonnull @n_frp_allocated, i64 noundef 1, i64 noundef -1, i64 noundef 16) #14
  store ptr %call.i278, ptr @frp, align 8, !tbaa !8
  %.pre4.i279 = load i64, ptr @n_frp, align 8, !tbaa !12
  br label %add_range_pair.exit280

add_range_pair.exit280:                           ; preds = %if.then.i277, %if.end75
  %15 = phi i64 [ %.pre4.i279, %if.then.i277 ], [ %13, %if.end75 ]
  %16 = phi ptr [ %call.i278, %if.then.i277 ], [ %.pre.i273, %if.end75 ]
  %arrayidx.i274 = getelementptr inbounds %struct.field_range_pair, ptr %16, i64 %15
  store i64 %initial.0.mux, ptr %arrayidx.i274, align 8, !tbaa !14
  br label %if.end93

if.else77:                                        ; preds = %if.then48
  %cmp78 = icmp eq i64 %value.1, 0
  br i1 %cmp78, label %do.body81, label %if.end92

do.body81:                                        ; preds = %if.else77
  %and82 = and i32 %options, 4
  %tobool83.not = icmp eq i32 %and82, 0
  %.str.4..str.3327 = select i1 %tobool83.not, ptr @.str.4, ptr @.str.3
  %call87 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull %.str.4..str.3327, i32 noundef 5) #14
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %call87) #15
  tail call void @usage(i32 noundef 1) #16
  unreachable

if.end92:                                         ; preds = %if.else77
  %17 = load i64, ptr @n_frp, align 8, !tbaa !12
  %18 = load i64, ptr @n_frp_allocated, align 8, !tbaa !12
  %cmp.i281 = icmp eq i64 %17, %18
  %.pre.i282 = load ptr, ptr @frp, align 8, !tbaa !8
  br i1 %cmp.i281, label %if.then.i286, label %add_range_pair.exit289

if.then.i286:                                     ; preds = %if.end92
  %call.i287 = tail call nonnull ptr @xpalloc(ptr noundef %.pre.i282, ptr noundef nonnull @n_frp_allocated, i64 noundef 1, i64 noundef -1, i64 noundef 16) #14
  store ptr %call.i287, ptr @frp, align 8, !tbaa !8
  %.pre4.i288 = load i64, ptr @n_frp, align 8, !tbaa !12
  br label %add_range_pair.exit289

add_range_pair.exit289:                           ; preds = %if.then.i286, %if.end92
  %19 = phi i64 [ %.pre4.i288, %if.then.i286 ], [ %17, %if.end92 ]
  %20 = phi ptr [ %call.i287, %if.then.i286 ], [ %.pre.i282, %if.end92 ]
  %arrayidx.i283 = getelementptr inbounds %struct.field_range_pair, ptr %20, i64 %19
  store i64 %value.1, ptr %arrayidx.i283, align 8, !tbaa !14
  br label %if.end93

if.end93:                                         ; preds = %add_range_pair.exit289, %add_range_pair.exit280, %add_range_pair.exit
  %.sink344 = phi ptr [ %12, %add_range_pair.exit ], [ %16, %add_range_pair.exit280 ], [ %20, %add_range_pair.exit289 ]
  %.sink = phi i64 [ -1, %add_range_pair.exit ], [ %value.1, %add_range_pair.exit280 ], [ %value.1, %add_range_pair.exit289 ]
  %initial.2 = phi i64 [ %initial.0.mux, %add_range_pair.exit ], [ %initial.0.mux, %add_range_pair.exit280 ], [ %initial.0, %add_range_pair.exit289 ]
  %dash_found.2 = phi i8 [ 0, %add_range_pair.exit ], [ 0, %add_range_pair.exit280 ], [ %dash_found.1, %add_range_pair.exit289 ]
  %21 = load i64, ptr @n_frp, align 8, !tbaa !12
  %hi3.i = getelementptr inbounds %struct.field_range_pair, ptr %.sink344, i64 %21, i32 1
  store i64 %.sink, ptr %hi3.i, align 8, !tbaa !16
  %inc.i.sink.in = load i64, ptr @n_frp, align 8, !tbaa !12
  %inc.i.sink = add nsw i64 %inc.i.sink.in, 1
  store i64 %inc.i.sink, ptr @n_frp, align 8, !tbaa !12
  %22 = load i8, ptr %fieldstr.addr.1, align 1, !tbaa !5
  %cmp95 = icmp eq i8 %22, 0
  br i1 %cmp95, label %while.end, label %if.end144

if.else100:                                       ; preds = %lor.lhs.false
  %conv45 = sext i8 %0 to i32
  %c.off.i = add nsw i32 %conv45, -48
  %switch.i = icmp ult i32 %c.off.i, 10
  br i1 %switch.i, label %if.then103, label %if.else132

if.then103:                                       ; preds = %if.else100
  %23 = load ptr, ptr @set_fields.num_start, align 8
  %tobool106 = icmp ne ptr %23, null
  %or.cond212 = select i1 %in_digits.0, i1 %tobool106, i1 false
  br i1 %or.cond212, label %if.end108, label %if.then107

if.then107:                                       ; preds = %if.then103
  store ptr %fieldstr.addr.1, ptr @set_fields.num_start, align 8, !tbaa !8
  br label %if.end108

if.end108:                                        ; preds = %if.then107, %if.then103
  %24 = phi ptr [ %23, %if.then103 ], [ %fieldstr.addr.1, %if.then107 ]
  %25 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %value.1, i64 10)
  %26 = extractvalue { i64, i1 } %25, 1
  br i1 %26, label %if.then118, label %land.lhs.true113

land.lhs.true113:                                 ; preds = %if.end108
  %27 = and i8 %dash_found.1, 1
  %tobool109.not = icmp eq i8 %27, 0
  %rhs_specified.0. = select i1 %tobool109.not, i8 %rhs_specified.0, i8 1
  %.lhs_specified.1 = select i1 %tobool109.not, i8 1, i8 %lhs_specified.1
  %28 = extractvalue { i64, i1 } %25, 0
  %29 = zext i64 %28 to i65
  %30 = zext nneg i32 %c.off.i to i65
  %31 = tail call { i65, i1 } @llvm.sadd.with.overflow.i65(i65 %29, i65 %30)
  %32 = extractvalue { i65, i1 } %31, 1
  %33 = extractvalue { i65, i1 } %31, 0
  %34 = trunc i65 %33 to i64
  %35 = icmp slt i65 %33, 0
  %36 = or i1 %32, %35
  %cmp116 = icmp eq i64 %34, -1
  %or.cond213 = or i1 %36, %cmp116
  br i1 %or.cond213, label %if.then118, label %if.end144

if.then118:                                       ; preds = %land.lhs.true113, %if.end108
  %call119 = tail call i64 @strspn(ptr noundef nonnull %24, ptr noundef nonnull @.str.7) #13
  %call120 = tail call noalias nonnull ptr @ximemdup0(ptr noundef nonnull %24, i64 noundef %call119) #14
  %and121 = and i32 %options, 4
  %tobool122.not = icmp eq i32 %and121, 0
  %.str.9..str.8 = select i1 %tobool122.not, ptr @.str.9, ptr @.str.8
  %call126 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull %.str.9..str.8, i32 noundef 5) #14
  %call129 = tail call ptr @quote(ptr noundef nonnull %call120) #14
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %call126, ptr noundef %call129) #15
  tail call void @free(ptr noundef nonnull %call120) #14
  tail call void @usage(i32 noundef 1) #16
  unreachable

if.else132:                                       ; preds = %if.else100
  %and133 = and i32 %options, 4
  %tobool134.not = icmp eq i32 %and133, 0
  %.str.11..str.10 = select i1 %tobool134.not, ptr @.str.11, ptr @.str.10
  %call138 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull %.str.11..str.10, i32 noundef 5) #14
  %call141 = tail call ptr @quote(ptr noundef nonnull %fieldstr.addr.1) #14
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %call138, ptr noundef %call141) #15
  tail call void @usage(i32 noundef 1) #16
  unreachable

if.end144:                                        ; preds = %land.lhs.true113, %if.end93, %if.end28
  %initial.3 = phi i64 [ %cond34, %if.end28 ], [ %initial.2, %if.end93 ], [ %initial.0, %land.lhs.true113 ]
  %value.3 = phi i64 [ 0, %if.end28 ], [ 0, %if.end93 ], [ %34, %land.lhs.true113 ]
  %lhs_specified.3 = phi i8 [ %lhs_specified.1, %if.end28 ], [ 0, %if.end93 ], [ %.lhs_specified.1, %land.lhs.true113 ]
  %rhs_specified.2 = phi i8 [ %rhs_specified.0, %if.end28 ], [ 0, %if.end93 ], [ %rhs_specified.0., %land.lhs.true113 ]
  %dash_found.3 = phi i8 [ 1, %if.end28 ], [ %dash_found.2, %if.end93 ], [ %dash_found.1, %land.lhs.true113 ]
  %in_digits.1 = phi i1 [ false, %if.end28 ], [ false, %if.end93 ], [ true, %land.lhs.true113 ]
  %fieldstr.addr.2 = getelementptr inbounds i8, ptr %fieldstr.addr.1, i64 1
  br label %while.cond

while.end:                                        ; preds = %if.end93
  %tobool145.not = icmp eq i64 %inc.i.sink, 0
  br i1 %tobool145.not, label %do.body147, label %if.end158

do.body147:                                       ; preds = %while.end
  %and148 = and i32 %options, 4
  %tobool149.not = icmp eq i32 %and148, 0
  %.str.13..str.12 = select i1 %tobool149.not, ptr @.str.13, ptr @.str.12
  %call153 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull %.str.13..str.12, i32 noundef 5) #14
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %call153) #15
  tail call void @usage(i32 noundef 1) #16
  unreachable

if.end158:                                        ; preds = %while.end
  tail call void @qsort(ptr noundef nonnull %.sink344, i64 noundef %inc.i.sink, i64 noundef 16, ptr noundef nonnull @compare_ranges) #14
  %37 = load i64, ptr @n_frp, align 8, !tbaa !12
  %cmp159303 = icmp sgt i64 %37, 0
  br i1 %cmp159303, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %cleanup, %if.end158
  %.lcssa294 = phi i64 [ %37, %if.end158 ], [ %50, %cleanup ]
  %and199 = and i32 %options, 2
  %tobool200.not = icmp eq i32 %and199, 0
  %.pre314 = load ptr, ptr @frp, align 8, !tbaa !8
  br i1 %tobool200.not, label %if.end202, label %if.then201

for.body:                                         ; preds = %cleanup, %if.end158
  %38 = phi i64 [ %50, %cleanup ], [ %37, %if.end158 ]
  %i.0304 = phi i64 [ %add, %cleanup ], [ 0, %if.end158 ]
  %add = add nuw nsw i64 %i.0304, 1
  %cmp162302 = icmp slt i64 %add, %38
  br i1 %cmp162302, label %for.body165.preheader, label %cleanup

for.body165.preheader:                            ; preds = %for.body
  %39 = load ptr, ptr @frp, align 8, !tbaa !8
  %arrayidx166338 = getelementptr inbounds %struct.field_range_pair, ptr %39, i64 %add
  %40 = load i64, ptr %arrayidx166338, align 8, !tbaa !14
  %hi339 = getelementptr inbounds %struct.field_range_pair, ptr %39, i64 %i.0304, i32 1
  %41 = load i64, ptr %hi339, align 8, !tbaa !16
  %cmp168.not340 = icmp ugt i64 %40, %41
  br i1 %cmp168.not340, label %cleanup, label %if.then170

for.body165:                                      ; preds = %if.then170
  %42 = load ptr, ptr @frp, align 8, !tbaa !8
  %arrayidx166 = getelementptr inbounds %struct.field_range_pair, ptr %42, i64 %add
  %43 = load i64, ptr %arrayidx166, align 8, !tbaa !14
  %hi = getelementptr inbounds %struct.field_range_pair, ptr %42, i64 %i.0304, i32 1
  %44 = load i64, ptr %hi, align 8, !tbaa !16
  %cmp168.not = icmp ugt i64 %43, %44
  br i1 %cmp168.not, label %cleanup, label %if.then170, !llvm.loop !17

if.then170:                                       ; preds = %for.body165, %for.body165.preheader
  %45 = phi i64 [ %44, %for.body165 ], [ %41, %for.body165.preheader ]
  %hi342 = phi ptr [ %hi, %for.body165 ], [ %hi339, %for.body165.preheader ]
  %arrayidx166341 = phi ptr [ %arrayidx166, %for.body165 ], [ %arrayidx166338, %for.body165.preheader ]
  %46 = phi ptr [ %42, %for.body165 ], [ %39, %for.body165.preheader ]
  %hi172 = getelementptr inbounds %struct.field_range_pair, ptr %46, i64 %add, i32 1
  %47 = load i64, ptr %hi172, align 8, !tbaa !16
  %. = tail call i64 @llvm.umax.i64(i64 %47, i64 %45)
  store i64 %., ptr %hi342, align 8, !tbaa !16
  %add.ptr188 = getelementptr inbounds %struct.field_range_pair, ptr %arrayidx166341, i64 1
  %48 = load i64, ptr @n_frp, align 8, !tbaa !12
  %reass.sub = sub i64 %48, %i.0304
  %sub190 = shl i64 %reass.sub, 4
  %mul = add i64 %sub190, -32
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 %arrayidx166341, ptr noundef nonnull align 1 %add.ptr188, i64 noundef %mul, i1 noundef false) #14
  %49 = load i64, ptr @n_frp, align 8, !tbaa !12
  %dec = add nsw i64 %49, -1
  store i64 %dec, ptr @n_frp, align 8, !tbaa !12
  %cmp162 = icmp slt i64 %add, %dec
  br i1 %cmp162, label %for.body165, label %cleanup, !llvm.loop !17

cleanup:                                          ; preds = %if.then170, %for.body165, %for.body165.preheader, %for.body
  %50 = phi i64 [ %38, %for.body ], [ %38, %for.body165.preheader ], [ %dec, %if.then170 ], [ %dec, %for.body165 ]
  %cmp159 = icmp slt i64 %add, %50
  br i1 %cmp159, label %for.body, label %for.cond.cleanup, !llvm.loop !19

if.then201:                                       ; preds = %for.cond.cleanup
  store ptr null, ptr @frp, align 8, !tbaa !8
  store i64 0, ptr @n_frp, align 8, !tbaa !12
  store i64 0, ptr @n_frp_allocated, align 8, !tbaa !12
  %51 = load i64, ptr %.pre314, align 8, !tbaa !14
  %cmp.i290 = icmp ugt i64 %51, 1
  br i1 %cmp.i290, label %add_range_pair.exit.i, label %if.end.i

add_range_pair.exit.i:                            ; preds = %if.then201
  %sub.i = add i64 %51, -1
  %call.i.i = tail call nonnull ptr @xpalloc(ptr noundef null, ptr noundef nonnull @n_frp_allocated, i64 noundef 1, i64 noundef -1, i64 noundef 16) #14
  store ptr %call.i.i, ptr @frp, align 8, !tbaa !8
  %.pre4.i.i = load i64, ptr @n_frp, align 8, !tbaa !12
  %arrayidx.i.i = getelementptr inbounds %struct.field_range_pair, ptr %call.i.i, i64 %.pre4.i.i
  store i64 1, ptr %arrayidx.i.i, align 8, !tbaa !14
  %52 = load i64, ptr @n_frp, align 8, !tbaa !12
  %hi3.i.i = getelementptr inbounds %struct.field_range_pair, ptr %call.i.i, i64 %52, i32 1
  store i64 %sub.i, ptr %hi3.i.i, align 8, !tbaa !16
  %53 = load i64, ptr @n_frp, align 8, !tbaa !12
  %inc.i.i = add nsw i64 %53, 1
  store i64 %inc.i.i, ptr @n_frp, align 8, !tbaa !12
  br label %if.end.i

if.end.i:                                         ; preds = %add_range_pair.exit.i, %if.then201
  %.pre.i4769.i = phi ptr [ %call.i.i, %add_range_pair.exit.i ], [ null, %if.then201 ]
  %54 = phi i64 [ %inc.i.i, %add_range_pair.exit.i ], [ 0, %if.then201 ]
  %cmp364.i = icmp sgt i64 %.lcssa294, 1
  br i1 %cmp364.i, label %for.body.i, label %for.cond.cleanup.i

for.cond.cleanup.i:                               ; preds = %for.inc.i, %if.end.i
  %.pre.i56.i = phi ptr [ %.pre.i4769.i, %if.end.i ], [ %.pre.i4767.i, %for.inc.i ]
  %55 = phi i64 [ %54, %if.end.i ], [ %66, %for.inc.i ]
  %56 = getelementptr %struct.field_range_pair, ptr %.pre314, i64 %.lcssa294
  %hi20.i = getelementptr %struct.field_range_pair, ptr %56, i64 -1, i32 1
  %57 = load i64, ptr %hi20.i, align 8, !tbaa !16
  %cmp21.not.i = icmp eq i64 %57, -1
  br i1 %cmp21.not.i, label %complement_rp.exit, label %if.then22.i

for.body.i:                                       ; preds = %for.inc.i, %if.end.i
  %.pre.i47.i = phi ptr [ %.pre.i4767.i, %for.inc.i ], [ %.pre.i4769.i, %if.end.i ]
  %58 = phi i64 [ %66, %for.inc.i ], [ %54, %if.end.i ]
  %i.065.i = phi i64 [ %inc.i291, %for.inc.i ], [ 1, %if.end.i ]
  %59 = getelementptr %struct.field_range_pair, ptr %.pre314, i64 %i.065.i
  %hi.i = getelementptr %struct.field_range_pair, ptr %59, i64 -1, i32 1
  %60 = load i64, ptr %hi.i, align 8, !tbaa !16
  %add.i = add i64 %60, 1
  %61 = load i64, ptr %59, align 8, !tbaa !14
  %cmp8.i = icmp eq i64 %add.i, %61
  br i1 %cmp8.i, label %for.inc.i, label %if.end10.i

if.end10.i:                                       ; preds = %for.body.i
  %sub17.i = add i64 %61, -1
  %62 = load i64, ptr @n_frp_allocated, align 8, !tbaa !12
  %cmp.i46.i = icmp eq i64 %58, %62
  br i1 %cmp.i46.i, label %if.then.i51.i, label %add_range_pair.exit54.i

if.then.i51.i:                                    ; preds = %if.end10.i
  %call.i52.i = tail call nonnull ptr @xpalloc(ptr noundef %.pre.i47.i, ptr noundef nonnull @n_frp_allocated, i64 noundef 1, i64 noundef -1, i64 noundef 16) #14
  store ptr %call.i52.i, ptr @frp, align 8, !tbaa !8
  %.pre4.i53.i = load i64, ptr @n_frp, align 8, !tbaa !12
  br label %add_range_pair.exit54.i

add_range_pair.exit54.i:                          ; preds = %if.then.i51.i, %if.end10.i
  %.pre.i4766.i = phi ptr [ %call.i52.i, %if.then.i51.i ], [ %.pre.i47.i, %if.end10.i ]
  %63 = phi i64 [ %.pre4.i53.i, %if.then.i51.i ], [ %58, %if.end10.i ]
  %arrayidx.i48.i = getelementptr inbounds %struct.field_range_pair, ptr %.pre.i4766.i, i64 %63
  store i64 %add.i, ptr %arrayidx.i48.i, align 8, !tbaa !14
  %64 = load i64, ptr @n_frp, align 8, !tbaa !12
  %hi3.i49.i = getelementptr inbounds %struct.field_range_pair, ptr %.pre.i4766.i, i64 %64, i32 1
  store i64 %sub17.i, ptr %hi3.i49.i, align 8, !tbaa !16
  %65 = load i64, ptr @n_frp, align 8, !tbaa !12
  %inc.i50.i = add nsw i64 %65, 1
  store i64 %inc.i50.i, ptr @n_frp, align 8, !tbaa !12
  br label %for.inc.i

for.inc.i:                                        ; preds = %add_range_pair.exit54.i, %for.body.i
  %.pre.i4767.i = phi ptr [ %.pre.i47.i, %for.body.i ], [ %.pre.i4766.i, %add_range_pair.exit54.i ]
  %66 = phi i64 [ %58, %for.body.i ], [ %inc.i50.i, %add_range_pair.exit54.i ]
  %inc.i291 = add nuw nsw i64 %i.065.i, 1
  %exitcond.not.i = icmp eq i64 %inc.i291, %.lcssa294
  br i1 %exitcond.not.i, label %for.cond.cleanup.i, label %for.body.i, !llvm.loop !20

if.then22.i:                                      ; preds = %for.cond.cleanup.i
  %add26.i = add nuw i64 %57, 1
  %67 = load i64, ptr @n_frp_allocated, align 8, !tbaa !12
  %cmp.i55.i = icmp eq i64 %55, %67
  br i1 %cmp.i55.i, label %if.then.i60.i, label %add_range_pair.exit63.i

if.then.i60.i:                                    ; preds = %if.then22.i
  %call.i61.i = tail call nonnull ptr @xpalloc(ptr noundef %.pre.i56.i, ptr noundef nonnull @n_frp_allocated, i64 noundef 1, i64 noundef -1, i64 noundef 16) #14
  store ptr %call.i61.i, ptr @frp, align 8, !tbaa !8
  %.pre4.i62.i = load i64, ptr @n_frp, align 8, !tbaa !12
  br label %add_range_pair.exit63.i

add_range_pair.exit63.i:                          ; preds = %if.then.i60.i, %if.then22.i
  %68 = phi i64 [ %.pre4.i62.i, %if.then.i60.i ], [ %55, %if.then22.i ]
  %69 = phi ptr [ %call.i61.i, %if.then.i60.i ], [ %.pre.i56.i, %if.then22.i ]
  %arrayidx.i57.i = getelementptr inbounds %struct.field_range_pair, ptr %69, i64 %68
  store i64 %add26.i, ptr %arrayidx.i57.i, align 8, !tbaa !14
  %70 = load i64, ptr @n_frp, align 8, !tbaa !12
  %hi3.i58.i = getelementptr inbounds %struct.field_range_pair, ptr %69, i64 %70, i32 1
  store i64 -1, ptr %hi3.i58.i, align 8, !tbaa !16
  %71 = load i64, ptr @n_frp, align 8, !tbaa !12
  %inc.i59.i = add nsw i64 %71, 1
  store i64 %inc.i59.i, ptr @n_frp, align 8, !tbaa !12
  br label %complement_rp.exit

complement_rp.exit:                               ; preds = %add_range_pair.exit63.i, %for.cond.cleanup.i
  tail call void @free(ptr noundef nonnull %.pre314) #14
  %.pre = load i64, ptr @n_frp, align 8, !tbaa !12
  %.pre313 = load ptr, ptr @frp, align 8, !tbaa !8
  br label %if.end202

if.end202:                                        ; preds = %complement_rp.exit, %for.cond.cleanup
  %72 = phi ptr [ %.pre313, %complement_rp.exit ], [ %.pre314, %for.cond.cleanup ]
  %73 = phi i64 [ %.pre, %complement_rp.exit ], [ %.lcssa294, %for.cond.cleanup ]
  %inc203 = add nsw i64 %73, 1
  store i64 %inc203, ptr @n_frp, align 8, !tbaa !12
  %mul204 = shl i64 %inc203, 4
  %call205 = tail call ptr @xrealloc(ptr noundef %72, i64 noundef %mul204) #18
  store ptr %call205, ptr @frp, align 8, !tbaa !8
  %74 = load i64, ptr @n_frp, align 8, !tbaa !12
  %75 = getelementptr %struct.field_range_pair, ptr %call205, i64 %74
  %hi208 = getelementptr %struct.field_range_pair, ptr %75, i64 -1, i32 1
  store i64 -1, ptr %hi208, align 8, !tbaa !16
  %76 = load i64, ptr @n_frp, align 8, !tbaa !12
  %77 = getelementptr %struct.field_range_pair, ptr %call205, i64 %76
  %arrayidx210 = getelementptr %struct.field_range_pair, ptr %77, i64 -1
  store i64 -1, ptr %arrayidx210, align 8, !tbaa !14
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare ptr @dcgettext(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold
declare void @error(i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: noreturn
declare void @usage(i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__ctype_b_loc() local_unnamed_addr #5

declare nonnull ptr @xpalloc(ptr noundef, ptr noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #7

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i65, i1 } @llvm.sadd.with.overflow.i65(i65, i65) #7

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i64 @strspn(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #1

declare noalias nonnull ptr @ximemdup0(ptr noundef, i64 noundef) local_unnamed_addr #6

declare ptr @quote(ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal i32 @compare_ranges(ptr nocapture noundef readonly %a, ptr nocapture noundef readonly %b) #9 {
entry:
  %0 = load i64, ptr %a, align 8, !tbaa !14
  %1 = load i64, ptr %b, align 8, !tbaa !14
  %cmp = icmp ugt i64 %0, %1
  %conv = zext i1 %cmp to i32
  %cmp4 = icmp ult i64 %0, %1
  %conv5.neg = sext i1 %cmp4 to i32
  %sub = add nsw i32 %conv5.neg, %conv
  ret i32 %sub
}

; Function Attrs: nofree
declare void @qsort(ptr noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #7

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #11

; Function Attrs: allocsize(1)
declare ptr @xrealloc(ptr noundef, i64 noundef) local_unnamed_addr #12

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { cold "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #12 = { allocsize(1) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nounwind willreturn memory(read) }
attributes #14 = { nounwind }
attributes #15 = { cold nounwind }
attributes #16 = { noreturn nounwind }
attributes #17 = { nounwind willreturn memory(none) }
attributes #18 = { nounwind allocsize(1) }

!llvm.ident = !{!0}
!llvm.module.flags = !{!1, !2, !3, !4}

!0 = !{!"clang version 18.1.8 (https://github.com/llvm/llvm-project.git 3b5b5c1ec4a3095ab096dd780e84d7ab81f3d7ff)"}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!6, !6, i64 0, i64 1}
!6 = !{!7, i64 1, !"omnipotent char"}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !9, i64 0, i64 8}
!9 = !{!6, i64 8, !"any pointer"}
!10 = !{!11, !11, i64 0, i64 2}
!11 = !{!6, i64 2, !"short"}
!12 = !{!13, !13, i64 0, i64 8}
!13 = !{!6, i64 8, !"long"}
!14 = !{!15, !13, i64 0, i64 8}
!15 = !{!6, i64 16, !"field_range_pair", !13, i64 0, i64 8, !13, i64 8, i64 8}
!16 = !{!15, !13, i64 8, i64 8}
!17 = distinct !{!17, !18}
!18 = !{!"llvm.loop.mustprogress"}
!19 = distinct !{!19, !18}
!20 = distinct !{!20, !18}
