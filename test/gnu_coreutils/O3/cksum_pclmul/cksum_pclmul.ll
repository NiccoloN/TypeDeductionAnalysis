; ModuleID = 'llvm-link'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@crctab = external local_unnamed_addr constant [8 x [256 x i64]], align 16

; Function Attrs: nofree nounwind uwtable
define dso_local zeroext i1 @cksum_pclmul(ptr noundef %fp, ptr noundef writeonly %crc_out, ptr noundef writeonly %length_out) local_unnamed_addr #0 {
entry:
  %buf = alloca [4096 x <2 x i64>], align 16
  call void @llvm.lifetime.start.p0(i64 65536, ptr nonnull %buf) #5
  %tobool = icmp ne ptr %fp, null
  %tobool1 = icmp ne ptr %crc_out, null
  %or.cond = and i1 %tobool, %tobool1
  %tobool3 = icmp ne ptr %length_out, null
  %or.cond111 = and i1 %or.cond, %tobool3
  br i1 %or.cond111, label %while.cond.preheader, label %cleanup104

while.cond.preheader:                             ; preds = %entry
  %add.ptr = getelementptr inbounds <2 x i64>, ptr %buf, i64 1
  %add.ptr21 = getelementptr inbounds <2 x i64>, ptr %buf, i64 2
  %add.ptr24 = getelementptr inbounds <2 x i64>, ptr %buf, i64 3
  br label %while.cond

while.cond:                                       ; preds = %while.end85, %while.cond.preheader
  %length.0 = phi i64 [ %add, %while.end85 ], [ 0, %while.cond.preheader ]
  %crc.0 = phi i64 [ %xor84.lcssa, %while.end85 ], [ 0, %while.cond.preheader ]
  %call6 = call i64 @fread_unlocked(ptr noundef nonnull %buf, i64 noundef 1, i64 noundef 65536, ptr noundef nonnull %fp)
  %cmp.not = icmp eq i64 %call6, 0
  br i1 %cmp.not, label %while.cond.while.end101_crit_edge, label %while.body

while.cond.while.end101_crit_edge:                ; preds = %while.cond
  %.pre = load i32, ptr %fp, align 8, !tbaa !5
  br label %while.end101

while.body:                                       ; preds = %while.cond
  %add = add i64 %call6, %length.0
  %cmp7 = icmp ult i64 %add, %length.0
  br i1 %cmp7, label %cleanup90.thread, label %if.end10

cleanup90.thread:                                 ; preds = %while.body
  %call9 = tail call ptr @__errno_location() #6
  store i32 75, ptr %call9, align 4, !tbaa !13
  br label %cleanup104

if.end10:                                         ; preds = %while.body
  %cmp13 = icmp ugt i64 %call6, 127
  br i1 %cmp13, label %if.then14, label %if.end58

if.then14:                                        ; preds = %if.end10
  %0 = load <16 x i8>, ptr %buf, align 16, !tbaa !14
  %1 = shufflevector <16 x i8> %0, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %2 = bitcast <16 x i8> %1 to <2 x i64>
  %conv = trunc i64 %crc.0 to i32
  %vecinit3.i215 = insertelement <4 x i32> <i32 0, i32 0, i32 0, i32 poison>, i32 %conv, i64 3
  %3 = bitcast <4 x i32> %vecinit3.i215 to <2 x i64>
  %xor.i226 = xor <2 x i64> %2, %3
  %4 = load <16 x i8>, ptr %add.ptr, align 16, !tbaa !14
  %5 = shufflevector <16 x i8> %4, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %6 = bitcast <16 x i8> %5 to <2 x i64>
  %7 = load <16 x i8>, ptr %add.ptr21, align 16, !tbaa !14
  %8 = shufflevector <16 x i8> %7, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %9 = bitcast <16 x i8> %8 to <2 x i64>
  %10 = load <16 x i8>, ptr %add.ptr24, align 16, !tbaa !14
  %11 = shufflevector <16 x i8> %10, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %12 = bitcast <16 x i8> %11 to <2 x i64>
  br label %while.body30

while.body30:                                     ; preds = %while.body30, %if.then14
  %data7.0241 = phi <2 x i64> [ %12, %if.then14 ], [ %xor.i218, %while.body30 ]
  %data5.0240 = phi <2 x i64> [ %9, %if.then14 ], [ %xor.i220, %while.body30 ]
  %bytes_read.0239 = phi i64 [ %call6, %if.then14 ], [ %sub, %while.body30 ]
  %data3.0238 = phi <2 x i64> [ %6, %if.then14 ], [ %xor.i222, %while.body30 ]
  %data.0237 = phi <2 x i64> [ %xor.i226, %if.then14 ], [ %xor.i224, %while.body30 ]
  %datap.0236 = phi ptr [ %buf, %if.then14 ], [ %add.ptr31, %while.body30 ]
  %add.ptr31 = getelementptr inbounds <2 x i64>, ptr %datap.0236, i64 4
  %13 = tail call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %data.0237, <2 x i64> <i64 3861023505, i64 poison>, i8 0)
  %14 = tail call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %data.0237, <2 x i64> <i64 poison, i64 2285074764>, i8 17)
  %15 = tail call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %data3.0238, <2 x i64> <i64 3861023505, i64 poison>, i8 0)
  %16 = tail call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %data3.0238, <2 x i64> <i64 poison, i64 2285074764>, i8 17)
  %17 = tail call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %data5.0240, <2 x i64> <i64 3861023505, i64 poison>, i8 0)
  %18 = tail call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %data5.0240, <2 x i64> <i64 poison, i64 2285074764>, i8 17)
  %19 = tail call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %data7.0241, <2 x i64> <i64 3861023505, i64 poison>, i8 0)
  %20 = tail call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %data7.0241, <2 x i64> <i64 poison, i64 2285074764>, i8 17)
  %xor.i225 = xor <2 x i64> %14, %13
  %21 = load <16 x i8>, ptr %add.ptr31, align 1, !tbaa !14
  %22 = shufflevector <16 x i8> %21, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %23 = bitcast <16 x i8> %22 to <2 x i64>
  %xor.i224 = xor <2 x i64> %xor.i225, %23
  %xor.i223 = xor <2 x i64> %16, %15
  %add.ptr37 = getelementptr inbounds <2 x i64>, ptr %datap.0236, i64 5
  %24 = load <16 x i8>, ptr %add.ptr37, align 1, !tbaa !14
  %25 = shufflevector <16 x i8> %24, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %26 = bitcast <16 x i8> %25 to <2 x i64>
  %xor.i222 = xor <2 x i64> %xor.i223, %26
  %xor.i221 = xor <2 x i64> %18, %17
  %add.ptr42 = getelementptr inbounds <2 x i64>, ptr %datap.0236, i64 6
  %27 = load <16 x i8>, ptr %add.ptr42, align 1, !tbaa !14
  %28 = shufflevector <16 x i8> %27, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %29 = bitcast <16 x i8> %28 to <2 x i64>
  %xor.i220 = xor <2 x i64> %xor.i221, %29
  %xor.i219 = xor <2 x i64> %20, %19
  %add.ptr47 = getelementptr inbounds <2 x i64>, ptr %datap.0236, i64 7
  %30 = load <16 x i8>, ptr %add.ptr47, align 1, !tbaa !14
  %31 = shufflevector <16 x i8> %30, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %32 = bitcast <16 x i8> %31 to <2 x i64>
  %xor.i218 = xor <2 x i64> %xor.i219, %32
  %sub = add i64 %bytes_read.0239, -64
  %cmp28 = icmp ugt i64 %sub, 127
  br i1 %cmp28, label %while.body30, label %if.end58.thread, !llvm.loop !15

if.end58.thread:                                  ; preds = %while.body30
  %add.ptr37.le = getelementptr inbounds <2 x i64>, ptr %datap.0236, i64 5
  %add.ptr42.le = getelementptr inbounds <2 x i64>, ptr %datap.0236, i64 6
  %add.ptr47.le = getelementptr inbounds <2 x i64>, ptr %datap.0236, i64 7
  %33 = bitcast <2 x i64> %xor.i224 to <16 x i8>
  %34 = shufflevector <16 x i8> %33, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  store <16 x i8> %34, ptr %add.ptr31, align 1, !tbaa !14
  %35 = bitcast <2 x i64> %xor.i222 to <16 x i8>
  %36 = shufflevector <16 x i8> %35, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  store <16 x i8> %36, ptr %add.ptr37.le, align 1, !tbaa !14
  %37 = bitcast <2 x i64> %xor.i220 to <16 x i8>
  %38 = shufflevector <16 x i8> %37, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  store <16 x i8> %38, ptr %add.ptr42.le, align 1, !tbaa !14
  %39 = bitcast <2 x i64> %xor.i218 to <16 x i8>
  %40 = shufflevector <16 x i8> %39, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  store <16 x i8> %40, ptr %add.ptr47.le, align 1, !tbaa !14
  br label %if.then61

if.end58:                                         ; preds = %if.end10
  %cmp59 = icmp ugt i64 %call6, 31
  br i1 %cmp59, label %if.then61, label %while.body81.preheader

if.then61:                                        ; preds = %if.end58, %if.end58.thread
  %crc.1255 = phi i64 [ 0, %if.end58.thread ], [ %crc.0, %if.end58 ]
  %bytes_read.1254 = phi i64 [ %sub, %if.end58.thread ], [ %call6, %if.end58 ]
  %datap.1253 = phi ptr [ %add.ptr31, %if.end58.thread ], [ %buf, %if.end58 ]
  %41 = load <16 x i8>, ptr %datap.1253, align 1, !tbaa !14
  %42 = shufflevector <16 x i8> %41, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %43 = bitcast <16 x i8> %42 to <2 x i64>
  %conv64 = trunc i64 %crc.1255 to i32
  %vecinit3.i = insertelement <4 x i32> <i32 0, i32 0, i32 0, i32 poison>, i32 %conv64, i64 3
  %44 = bitcast <4 x i32> %vecinit3.i to <2 x i64>
  %xor.i217 = xor <2 x i64> %43, %44
  br label %while.body70

while.body70:                                     ; preds = %while.body70, %if.then61
  %bytes_read.2244 = phi i64 [ %bytes_read.1254, %if.then61 ], [ %sub75, %while.body70 ]
  %data.1243 = phi <2 x i64> [ %xor.i217, %if.then61 ], [ %xor.i, %while.body70 ]
  %datap.2242 = phi ptr [ %datap.1253, %if.then61 ], [ %incdec.ptr, %while.body70 ]
  %incdec.ptr = getelementptr inbounds <2 x i64>, ptr %datap.2242, i64 1
  %45 = tail call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %data.1243, <2 x i64> <i64 3903084037, i64 poison>, i8 0)
  %46 = tail call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %data.1243, <2 x i64> <i64 poison, i64 3317288268>, i8 17)
  %47 = load <16 x i8>, ptr %incdec.ptr, align 1, !tbaa !14
  %48 = shufflevector <16 x i8> %47, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %49 = bitcast <16 x i8> %48 to <2 x i64>
  %xor.i216 = xor <2 x i64> %46, %45
  %xor.i = xor <2 x i64> %xor.i216, %49
  %sub75 = add nsw i64 %bytes_read.2244, -16
  %cmp68 = icmp ugt i64 %sub75, 31
  br i1 %cmp68, label %while.body70, label %while.end76, !llvm.loop !17

while.end76:                                      ; preds = %while.body70
  %50 = bitcast <2 x i64> %xor.i to <16 x i8>
  %51 = shufflevector <16 x i8> %50, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  store <16 x i8> %51, ptr %incdec.ptr, align 1, !tbaa !14
  br label %while.body81.preheader

while.body81.preheader:                           ; preds = %while.end76, %if.end58
  %cp.0248.ph = phi ptr [ %buf, %if.end58 ], [ %incdec.ptr, %while.end76 ]
  %crc.3247.ph = phi i64 [ %crc.0, %if.end58 ], [ 0, %while.end76 ]
  %bytes_read.4246.ph = phi i64 [ %call6, %if.end58 ], [ %sub75, %while.end76 ]
  %xtraiter = and i64 %bytes_read.4246.ph, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %while.body81.prol.loopexit, label %while.body81.prol

while.body81.prol:                                ; preds = %while.body81.preheader
  %dec.prol = add nsw i64 %bytes_read.4246.ph, -1
  %shl.prol = shl i64 %crc.3247.ph, 8
  %shr.prol = lshr i64 %crc.3247.ph, 24
  %incdec.ptr82.prol = getelementptr inbounds i8, ptr %cp.0248.ph, i64 1
  %52 = load i8, ptr %cp.0248.ph, align 1, !tbaa !18
  %shr.tr.prol = trunc i64 %shr.prol to i8
  %xor.narrow.prol = xor i8 %52, %shr.tr.prol
  %and.prol = zext i8 %xor.narrow.prol to i64
  %arrayidx.prol = getelementptr inbounds [256 x i64], ptr @crctab, i64 0, i64 %and.prol
  %53 = load i64, ptr %arrayidx.prol, align 8, !tbaa !19
  %xor84.prol = xor i64 %53, %shl.prol
  br label %while.body81.prol.loopexit

while.body81.prol.loopexit:                       ; preds = %while.body81.prol, %while.body81.preheader
  %xor84.lcssa.unr = phi i64 [ undef, %while.body81.preheader ], [ %xor84.prol, %while.body81.prol ]
  %cp.0248.unr = phi ptr [ %cp.0248.ph, %while.body81.preheader ], [ %incdec.ptr82.prol, %while.body81.prol ]
  %crc.3247.unr = phi i64 [ %crc.3247.ph, %while.body81.preheader ], [ %xor84.prol, %while.body81.prol ]
  %bytes_read.4246.unr = phi i64 [ %bytes_read.4246.ph, %while.body81.preheader ], [ %dec.prol, %while.body81.prol ]
  %54 = icmp eq i64 %bytes_read.4246.ph, 1
  br i1 %54, label %while.end85, label %while.body81

while.body81:                                     ; preds = %while.body81, %while.body81.prol.loopexit
  %cp.0248 = phi ptr [ %incdec.ptr82.1, %while.body81 ], [ %cp.0248.unr, %while.body81.prol.loopexit ]
  %crc.3247 = phi i64 [ %xor84.1, %while.body81 ], [ %crc.3247.unr, %while.body81.prol.loopexit ]
  %bytes_read.4246 = phi i64 [ %dec.1, %while.body81 ], [ %bytes_read.4246.unr, %while.body81.prol.loopexit ]
  %shl = shl i64 %crc.3247, 8
  %shr = lshr i64 %crc.3247, 24
  %incdec.ptr82 = getelementptr inbounds i8, ptr %cp.0248, i64 1
  %55 = load i8, ptr %cp.0248, align 1, !tbaa !18
  %shr.tr = trunc i64 %shr to i8
  %xor.narrow = xor i8 %55, %shr.tr
  %and = zext i8 %xor.narrow to i64
  %arrayidx = getelementptr inbounds [256 x i64], ptr @crctab, i64 0, i64 %and
  %56 = load i64, ptr %arrayidx, align 8, !tbaa !19
  %xor84 = xor i64 %56, %shl
  %dec.1 = add i64 %bytes_read.4246, -2
  %shl.1 = shl i64 %xor84, 8
  %shr.1 = lshr i64 %xor84, 24
  %incdec.ptr82.1 = getelementptr inbounds i8, ptr %cp.0248, i64 2
  %57 = load i8, ptr %incdec.ptr82, align 1, !tbaa !18
  %shr.tr.1 = trunc i64 %shr.1 to i8
  %xor.narrow.1 = xor i8 %57, %shr.tr.1
  %and.1 = zext i8 %xor.narrow.1 to i64
  %arrayidx.1 = getelementptr inbounds [256 x i64], ptr @crctab, i64 0, i64 %and.1
  %58 = load i64, ptr %arrayidx.1, align 8, !tbaa !19
  %xor84.1 = xor i64 %58, %shl.1
  %tobool80.not.1 = icmp eq i64 %dec.1, 0
  br i1 %tobool80.not.1, label %while.end85, label %while.body81, !llvm.loop !20

while.end85:                                      ; preds = %while.body81, %while.body81.prol.loopexit
  %xor84.lcssa = phi i64 [ %xor84.lcssa.unr, %while.body81.prol.loopexit ], [ %xor84.1, %while.body81 ]
  %59 = load i32, ptr %fp, align 8, !tbaa !5
  %60 = and i32 %59, 16
  %tobool87.not = icmp eq i32 %60, 0
  br i1 %tobool87.not, label %while.cond, label %while.end101

while.end101:                                     ; preds = %while.end85, %while.cond.while.end101_crit_edge
  %61 = phi i32 [ %.pre, %while.cond.while.end101_crit_edge ], [ %59, %while.end85 ]
  %length.2 = phi i64 [ %length.0, %while.cond.while.end101_crit_edge ], [ %add, %while.end85 ]
  %crc.5 = phi i64 [ %crc.0, %while.cond.while.end101_crit_edge ], [ %xor84.lcssa, %while.end85 ]
  store i64 %crc.5, ptr %crc_out, align 8, !tbaa !19
  store i64 %length.2, ptr %length_out, align 8, !tbaa !19
  %62 = and i32 %61, 32
  %tobool103.not = icmp eq i32 %62, 0
  br label %cleanup104

cleanup104:                                       ; preds = %while.end101, %cleanup90.thread, %entry
  %retval.2 = phi i1 [ %tobool103.not, %while.end101 ], [ false, %entry ], [ false, %cleanup90.thread ]
  call void @llvm.lifetime.end.p0(i64 65536, ptr nonnull %buf) #5
  ret i1 %retval.2
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree nounwind
declare noundef i64 @fread_unlocked(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <2 x i64> @llvm.x86.pclmulqdq(<2 x i64>, <2 x i64>, i8 immarg) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

attributes #0 = { nofree nounwind uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+cmov,+crc32,+cx8,+fxsr,+mmx,+pclmul,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+cmov,+crc32,+cx8,+fxsr,+mmx,+pclmul,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+cmov,+crc32,+cx8,+fxsr,+mmx,+pclmul,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #5 = { nounwind }
attributes #6 = { nounwind willreturn memory(none) }

!llvm.ident = !{!0}
!llvm.module.flags = !{!1, !2, !3, !4}

!0 = !{!"clang version 18.1.8 (https://github.com/llvm/llvm-project.git 3b5b5c1ec4a3095ab096dd780e84d7ab81f3d7ff)"}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!6, !9, i64 0, i64 4}
!6 = !{!7, i64 216, !"_IO_FILE", !9, i64 0, i64 4, !10, i64 8, i64 8, !10, i64 16, i64 8, !10, i64 24, i64 8, !10, i64 32, i64 8, !10, i64 40, i64 8, !10, i64 48, i64 8, !10, i64 56, i64 8, !10, i64 64, i64 8, !10, i64 72, i64 8, !10, i64 80, i64 8, !10, i64 88, i64 8, !10, i64 96, i64 8, !10, i64 104, i64 8, !9, i64 112, i64 4, !9, i64 116, i64 4, !11, i64 120, i64 8, !12, i64 128, i64 2, !7, i64 130, i64 1, !7, i64 131, i64 1, !10, i64 136, i64 8, !11, i64 144, i64 8, !10, i64 152, i64 8, !10, i64 160, i64 8, !10, i64 168, i64 8, !10, i64 176, i64 8, !11, i64 184, i64 8, !9, i64 192, i64 4, !7, i64 196, i64 20}
!7 = !{!8, i64 1, !"omnipotent char"}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!7, i64 4, !"int"}
!10 = !{!7, i64 8, !"any pointer"}
!11 = !{!7, i64 8, !"long"}
!12 = !{!7, i64 2, !"short"}
!13 = !{!9, !9, i64 0, i64 4}
!14 = !{!7, !7, i64 0, i64 0}
!15 = distinct !{!15, !16}
!16 = !{!"llvm.loop.mustprogress"}
!17 = distinct !{!17, !16}
!18 = !{!7, !7, i64 0, i64 1}
!19 = !{!11, !11, i64 0, i64 8}
!20 = distinct !{!20, !16}
