; ModuleID = 'llvm-link'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.prime = type { i32, i64, i64 }

@stderr = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [56 x i8] c"Usage: %s LIMIT\0AProduces a list of odd primes <= LIMIT\0A\00", align 1
@stdout = external local_unnamed_addr global ptr, align 8
@.str.1 = private unnamed_addr constant [17 x i8] c"write error: %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"Virtual memory exhausted.\0A\00", align 1
@.str.3 = private unnamed_addr constant [37 x i8] c"/* Generated file -- DO NOT EDIT */\0A\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"#define WIDE_UINT_BITS %u\0A\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"P (%u, %u,\0A   (\00", align 1
@.str.6 = private unnamed_addr constant [25 x i8] c"),\0A   UINTMAX_MAX / %u)\0A\00", align 1
@.str.7 = private unnamed_addr constant [29 x i8] c"\0A#undef FIRST_OMITTED_PRIME\0A\00", align 1
@.str.8 = private unnamed_addr constant [32 x i8] c"#define FIRST_OMITTED_PRIME %u\0A\00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c"(\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c")\0A%*s\00", align 1
@.str.11 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.12 = private unnamed_addr constant [10 x i8] c" << %d | \00", align 1
@.str.13 = private unnamed_addr constant [13 x i8] c"(uintmax_t) \00", align 1
@.str.14 = private unnamed_addr constant [8 x i8] c"0x%0*xU\00", align 1

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @main(i32 noundef %argc, ptr nocapture noundef readonly %argv) local_unnamed_addr #0 {
entry:
  %cmp.not = icmp eq i32 %argc, 2
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %0 = load ptr, ptr @stderr, align 8, !tbaa !5
  %1 = load ptr, ptr %argv, align 8, !tbaa !5
  %call = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str, ptr noundef %1) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %arrayidx1 = getelementptr inbounds ptr, ptr %argv, i64 1
  %2 = load ptr, ptr %arrayidx1, align 8, !tbaa !5
  %call.i74 = tail call i64 @__isoc23_strtol(ptr noundef nonnull %2, ptr noundef null, i32 noundef 10) #11
  %conv.i = trunc i64 %call.i74 to i32
  %cmp3 = icmp slt i32 %conv.i, 3
  br i1 %cmp3, label %cleanup, label %if.end5

if.end5:                                          ; preds = %if.end
  %and = and i32 %conv.i, 1
  %spec.select = add nsw i32 %conv.i, -2
  %sub = add nuw nsw i32 %spec.select, %and
  %div72 = lshr i32 %sub, 1
  %conv = zext nneg i32 %div72 to i64
  %call.i75 = tail call noalias ptr @malloc(i64 noundef %conv) #12
  %tobool.not.i = icmp eq ptr %call.i75, null
  br i1 %tobool.not.i, label %if.end.i, label %xalloc.exit

if.end.i:                                         ; preds = %if.end5
  %3 = load ptr, ptr @stderr, align 8, !tbaa !5
  %call1.i = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %3, i32 noundef 1, ptr noundef nonnull @.str.2) #11
  tail call void @exit(i32 noundef 1) #13
  unreachable

xalloc.exit:                                      ; preds = %if.end5
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 %call.i75, i8 noundef 1, i64 noundef %conv, i1 noundef false) #11
  %mul = mul nuw nsw i64 %conv, 24
  %call.i76 = tail call noalias ptr @malloc(i64 noundef %mul) #12
  %tobool.not.i77 = icmp eq ptr %call.i76, null
  br i1 %tobool.not.i77, label %if.end.i78, label %for.cond.preheader

for.cond.preheader:                               ; preds = %xalloc.exit
  %cmp1192.not = icmp ult i32 %sub, 2
  br i1 %cmp1192.not, label %for.end34, label %for.body

if.end.i78:                                       ; preds = %xalloc.exit
  %4 = load ptr, ptr @stderr, align 8, !tbaa !5
  %call1.i79 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %4, i32 noundef 1, ptr noundef nonnull @.str.2) #11
  tail call void @exit(i32 noundef 1) #13
  unreachable

for.body:                                         ; preds = %while.end, %for.cond.preheader
  %nprimes.094 = phi i32 [ %inc, %while.end ], [ 0, %for.cond.preheader ]
  %i.093 = phi i64 [ %inc27, %while.end ], [ 0, %for.cond.preheader ]
  %i.0.tr = trunc i64 %i.093 to i32
  %5 = shl i32 %i.0.tr, 1
  %conv14 = add i32 %5, 3
  %idxprom = zext i32 %nprimes.094 to i64
  %arrayidx15 = getelementptr inbounds %struct.prime, ptr %call.i76, i64 %idxprom
  store i32 %conv14, ptr %arrayidx15, align 8, !tbaa !9
  %conv.i81 = zext nneg i32 %conv14 to i64
  %6 = shl i32 %conv14, 1
  %sh_prom.i.i = and i32 %6, 28
  %shr.i.i = lshr i32 -180781647, %sh_prom.i.i
  %conv.i.i = zext i32 %shr.i.i to i64
  br label %for.cond.i.i

for.cond.i.i:                                     ; preds = %for.cond.i.i, %for.body
  %x.0.i.i = phi i64 [ %conv.i.i, %for.body ], [ %sub.i.i, %for.cond.i.i ]
  %mul2.i.i = mul i64 %x.0.i.i, %conv.i81
  %mul313.i.i = sub i64 2, %mul2.i.i
  %sub.i.i = mul i64 %mul313.i.i, %x.0.i.i
  %cmp.not.i.i = icmp eq i64 %sub.i.i, %x.0.i.i
  br i1 %cmp.not.i.i, label %process_prime.exit, label %for.cond.i.i

process_prime.exit:                               ; preds = %for.cond.i.i
  %inc = add i32 %nprimes.094, 1
  %pinv.i = getelementptr inbounds %struct.prime, ptr %call.i76, i64 %idxprom, i32 1
  store i64 %x.0.i.i, ptr %pinv.i, align 8, !tbaa !13
  %div.i = udiv i64 -1, %conv.i81
  %lim.i = getelementptr inbounds %struct.prime, ptr %call.i76, i64 %idxprom, i32 2
  store i64 %div.i, ptr %lim.i, align 8, !tbaa !14
  %mul16 = mul i32 %conv14, %conv14
  %sub17 = add i32 %mul16, -3
  %div1873 = lshr exact i32 %sub17, 1
  %cmp2190 = icmp ult i32 %div1873, %div72
  br i1 %cmp2190, label %for.body23, label %while.cond.preheader

while.cond.preheader:                             ; preds = %for.body23, %process_prime.exit
  %7 = add i64 %i.093, 1
  %umax = tail call i64 @llvm.umax.i64(i64 %conv, i64 %7)
  %8 = add i64 %umax, -1
  br label %while.cond

for.body23:                                       ; preds = %for.body23, %process_prime.exit
  %j.091 = phi i32 [ %add26, %for.body23 ], [ %div1873, %process_prime.exit ]
  %conv20 = zext i32 %j.091 to i64
  %arrayidx25 = getelementptr inbounds i8, ptr %call.i75, i64 %conv20
  store i8 0, ptr %arrayidx25, align 1, !tbaa !15
  %add26 = add i32 %j.091, %conv14
  %cmp21 = icmp ult i32 %add26, %div72
  br i1 %cmp21, label %for.body23, label %while.cond.preheader, !llvm.loop !16

while.cond:                                       ; preds = %land.rhs, %while.cond.preheader
  %i.1 = phi i64 [ %inc27, %land.rhs ], [ %i.093, %while.cond.preheader ]
  %exitcond.not = icmp eq i64 %i.1, %8
  br i1 %exitcond.not, label %for.end34, label %land.rhs

land.rhs:                                         ; preds = %while.cond
  %inc27 = add i64 %i.1, 1
  %arrayidx30 = getelementptr inbounds i8, ptr %call.i75, i64 %inc27
  %9 = load i8, ptr %arrayidx30, align 1, !tbaa !15
  %cmp32 = icmp eq i8 %9, 0
  br i1 %cmp32, label %while.cond, label %while.end, !llvm.loop !18

while.end:                                        ; preds = %land.rhs
  %cmp11 = icmp ult i64 %inc27, %conv
  br i1 %cmp11, label %for.body, label %for.end34, !llvm.loop !19

for.end34:                                        ; preds = %while.end, %while.cond, %for.cond.preheader
  %nprimes.0.lcssa = phi i32 [ 0, %for.cond.preheader ], [ %inc, %while.cond ], [ %inc, %while.end ]
  %call.i82 = tail call i32 @puts(ptr noundef nonnull dereferenceable(1) @.str.3)
  %call1.i83 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.4, i32 noundef 64) #11
  %cmp95.not.i = icmp eq i32 %nprimes.0.lcssa, 0
  br i1 %cmp95.not.i, label %for.end27.i, label %for.body3.preheader.i

for.body3.preheader.i:                            ; preds = %for.end34
  %wide.trip.count.i = zext i32 %nprimes.0.lcssa to i64
  br label %for.body3.i

for.body3.i:                                      ; preds = %if.end.i84, %for.body3.preheader.i
  %indvars.iv.i = phi i64 [ 0, %for.body3.preheader.i ], [ %indvars.iv.next.i, %if.end.i84 ]
  %p.096.i = phi i32 [ 2, %for.body3.preheader.i ], [ %13, %if.end.i84 ]
  %10 = trunc i64 %indvars.iv.i to i32
  %add.i = add i32 %10, 8
  %cmp4.i = icmp ult i32 %add.i, %nprimes.0.lcssa
  br i1 %cmp4.i, label %cond.end.i, label %for.body3.if.end_crit_edge.i

for.body3.if.end_crit_edge.i:                     ; preds = %for.body3.i
  %arrayidx12.phi.trans.insert.i = getelementptr inbounds %struct.prime, ptr %call.i76, i64 %indvars.iv.i
  %.pre.i = load i32, ptr %arrayidx12.phi.trans.insert.i, align 8, !tbaa !9
  br label %if.end.i84

cond.end.i:                                       ; preds = %for.body3.i
  %idxprom.i = zext i32 %add.i to i64
  %arrayidx.i = getelementptr inbounds %struct.prime, ptr %call.i76, i64 %idxprom.i
  %11 = load i32, ptr %arrayidx.i, align 8, !tbaa !9
  %arrayidx8.i = getelementptr inbounds %struct.prime, ptr %call.i76, i64 %indvars.iv.i
  %12 = load i32, ptr %arrayidx8.i, align 8, !tbaa !9
  %sub.i = sub i32 %11, %12
  %cmp10.i = icmp ugt i32 %sub.i, 255
  br i1 %cmp10.i, label %if.then.i, label %if.end.i84

if.then.i:                                        ; preds = %cond.end.i
  tail call void @abort() #13
  unreachable

if.end.i84:                                       ; preds = %cond.end.i, %for.body3.if.end_crit_edge.i
  %13 = phi i32 [ %12, %cond.end.i ], [ %.pre.i, %for.body3.if.end_crit_edge.i ]
  %cond91.i = phi i32 [ %sub.i, %cond.end.i ], [ 255, %for.body3.if.end_crit_edge.i ]
  %sub14.i = sub i32 %13, %p.096.i
  %call15.i = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.5, i32 noundef %sub14.i, i32 noundef %cond91.i) #11
  %pinv.i85 = getelementptr inbounds %struct.prime, ptr %call.i76, i64 %indvars.iv.i, i32 1
  %14 = load i64, ptr %pinv.i85, align 8, !tbaa !13
  tail call fastcc void @print_wide_uint(i64 noundef %14, i32 noundef 0, i32 noundef 64)
  %call21.i = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.6, i32 noundef %13) #11
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %for.end27.loopexit.i, label %for.body3.i, !llvm.loop !20

for.end27.loopexit.i:                             ; preds = %if.end.i84
  %15 = add i32 %13, 2
  br label %for.end27.i

for.end27.i:                                      ; preds = %for.end27.loopexit.i, %for.end34
  %p.0.lcssa.i = phi i32 [ 4, %for.end34 ], [ %15, %for.end27.loopexit.i ]
  %call28.i = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.7) #11
  %16 = load i32, ptr %call.i76, align 8, !tbaa !9
  %mul98.i = mul i32 %16, %16
  %cmp39.not99105.i = icmp ugt i32 %mul98.i, %p.0.lcssa.i
  br i1 %cmp39.not99105.i, label %output_primes.exit, label %if.end41.lr.ph.i

do.body.loopexit.i:                               ; preds = %if.end41.i
  %add29.i = add i32 %add29106.i, 2
  %cmp39.not99.i = icmp ugt i32 %mul98.i, %add29.i
  br i1 %cmp39.not99.i, label %output_primes.exit, label %if.end41.lr.ph.i, !llvm.loop !21

if.end41.lr.ph.i:                                 ; preds = %do.body.loopexit.i, %for.end27.i
  %add29106.i = phi i32 [ %add29.i, %do.body.loopexit.i ], [ %p.0.lcssa.i, %for.end27.i ]
  %conv.i86 = zext i32 %add29106.i to i64
  br label %if.end41.i

for.cond30.i:                                     ; preds = %if.end41.i
  %inc53.i = add i32 %i.1100.i, 1
  %idxprom33.i = zext i32 %inc53.i to i64
  %arrayidx34.i = getelementptr inbounds %struct.prime, ptr %call.i76, i64 %idxprom33.i
  %17 = load i32, ptr %arrayidx34.i, align 8, !tbaa !9
  %mul.i = mul i32 %17, %17
  %cmp39.not.i = icmp ugt i32 %mul.i, %add29106.i
  br i1 %cmp39.not.i, label %output_primes.exit, label %if.end41.i, !llvm.loop !22

if.end41.i:                                       ; preds = %for.cond30.i, %if.end41.lr.ph.i
  %idxprom33101.i = phi i64 [ 0, %if.end41.lr.ph.i ], [ %idxprom33.i, %for.cond30.i ]
  %i.1100.i = phi i32 [ 0, %if.end41.lr.ph.i ], [ %inc53.i, %for.cond30.i ]
  %pinv44.i = getelementptr inbounds %struct.prime, ptr %call.i76, i64 %idxprom33101.i, i32 1
  %18 = load i64, ptr %pinv44.i, align 8, !tbaa !13
  %mul45.i = mul i64 %18, %conv.i86
  %lim.i87 = getelementptr inbounds %struct.prime, ptr %call.i76, i64 %idxprom33101.i, i32 2
  %19 = load i64, ptr %lim.i87, align 8, !tbaa !14
  %cmp48.not.i = icmp ugt i64 %mul45.i, %19
  br i1 %cmp48.not.i, label %for.cond30.i, label %do.body.loopexit.i

output_primes.exit:                               ; preds = %for.cond30.i, %do.body.loopexit.i, %for.end27.i
  %add29.lcssa.i = phi i32 [ %p.0.lcssa.i, %for.end27.i ], [ %add29106.i, %for.cond30.i ], [ %add29.i, %do.body.loopexit.i ]
  %call56.i = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.8, i32 noundef %add29.lcssa.i) #11
  tail call void @free(ptr noundef %call.i75) #11
  tail call void @free(ptr noundef nonnull %call.i76) #11
  %20 = load ptr, ptr @stdout, align 8, !tbaa !5
  %call35 = tail call i32 @ferror(ptr noundef %20) #11
  %call36 = tail call i32 @fclose(ptr noundef %20)
  %add37 = sub i32 0, %call36
  %tobool38.not = icmp eq i32 %call35, %add37
  br i1 %tobool38.not, label %cleanup, label %if.then39

if.then39:                                        ; preds = %output_primes.exit
  %21 = load ptr, ptr @stderr, align 8, !tbaa !5
  %call40 = tail call ptr @__errno_location() #14
  %22 = load i32, ptr %call40, align 4, !tbaa !23
  %call41 = tail call ptr @strerror(i32 noundef %22) #11
  %call42 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %21, i32 noundef 1, ptr noundef nonnull @.str.1, ptr noundef %call41) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then39, %output_primes.exit, %if.end, %if.then
  %retval.0 = phi i32 [ 1, %if.then ], [ 1, %if.then39 ], [ 0, %if.end ], [ 0, %output_primes.exit ]
  ret i32 %retval.0
}

declare i32 @__fprintf_chk(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind
declare i64 @__isoc23_strtol(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #3

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #6

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #7

declare i32 @__printf_chk(i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: noreturn nounwind
declare void @abort() local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal fastcc void @print_wide_uint(i64 noundef %n, i32 noundef %nesting, i32 noundef %wide_uint_bits) unnamed_addr #0 {
entry:
  %cmp.not = icmp ult i64 %n, 268435456
  br i1 %cmp.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %shr = lshr i64 %n, 28
  %cmp6.not = icmp ult i64 %n, 72057594037927936
  br i1 %cmp6.not, label %if.end15.critedge, label %if.then8

if.then8:                                         ; preds = %if.then
  %call = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.9) #11
  %add = add nsw i32 %nesting, 1
  tail call fastcc void @print_wide_uint(i64 noundef %shr, i32 noundef %add, i32 noundef %wide_uint_bits)
  %add13 = add nsw i32 %nesting, 3
  %call14 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.10, i32 noundef %add13, ptr noundef nonnull @.str.11) #11
  br label %if.end15

if.end15.critedge:                                ; preds = %if.then
  %add.c = add nsw i32 %nesting, 1
  tail call fastcc void @print_wide_uint(i64 noundef %shr, i32 noundef %add.c, i32 noundef %wide_uint_bits)
  br label %if.end15

if.end15:                                         ; preds = %if.end15.critedge, %if.then8
  %call16 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.12, i32 noundef 28) #11
  br label %if.end24

if.else:                                          ; preds = %entry
  %tobool17.not = icmp eq i32 %nesting, 0
  br i1 %tobool17.not, label %if.end24, label %if.then18

if.then18:                                        ; preds = %if.else
  %call19 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.13) #11
  %sub20 = add i32 %wide_uint_bits, -1
  %rem = urem i32 %sub20, 28
  %rem21 = and i32 %rem, 3
  %add22 = add nuw nsw i32 %rem21, 1
  br label %if.end24

if.end24:                                         ; preds = %if.then18, %if.else, %if.end15
  %hex_digits_per_literal.0 = phi i32 [ 7, %if.end15 ], [ %add22, %if.then18 ], [ 7, %if.else ]
  %0 = trunc i64 %n to i32
  %conv1 = and i32 %0, 268435455
  %call25 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.14, i32 noundef %hex_digits_per_literal.0, i32 noundef %conv1) #11
  ret void
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: nofree nounwind memory(read)
declare noundef i32 @ferror(ptr nocapture noundef) local_unnamed_addr #9

; Function Attrs: nofree nounwind
declare noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #10

; Function Attrs: nounwind
declare ptr @strerror(i32 noundef) local_unnamed_addr #2

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #6 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree nounwind memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nounwind }
attributes #12 = { nounwind allocsize(0) }
attributes #13 = { noreturn nounwind }
attributes #14 = { nounwind willreturn memory(none) }

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
!9 = !{!10, !11, i64 0, i64 4}
!10 = !{!7, i64 24, !"prime", !11, i64 0, i64 4, !12, i64 8, i64 8, !12, i64 16, i64 8}
!11 = !{!7, i64 4, !"int"}
!12 = !{!7, i64 8, !"long"}
!13 = !{!10, !12, i64 8, i64 8}
!14 = !{!10, !12, i64 16, i64 8}
!15 = !{!7, !7, i64 0, i64 1}
!16 = distinct !{!16, !17}
!17 = !{!"llvm.loop.mustprogress"}
!18 = distinct !{!18, !17}
!19 = distinct !{!19, !17}
!20 = distinct !{!20, !17}
!21 = distinct !{!21, !17}
!22 = distinct !{!22, !17}
!23 = !{!11, !11, i64 0, i64 4}
