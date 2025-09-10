; ModuleID = 'llvm-link'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@crctab = external constant [8 x [256 x i64]], align 16

; Function Attrs: noinline nounwind optnone uwtable
define dso_local zeroext i1 @cksum_pclmul(ptr noundef %fp, ptr noundef %crc_out, ptr noundef %length_out) #0 {
entry:
  %__p.addr.i195 = alloca ptr, align 8
  %__b.addr.i196 = alloca <2 x i64>, align 16
  %__p.addr.i193 = alloca ptr, align 8
  %__b.addr.i194 = alloca <2 x i64>, align 16
  %__p.addr.i191 = alloca ptr, align 8
  %__b.addr.i192 = alloca <2 x i64>, align 16
  %__p.addr.i189 = alloca ptr, align 8
  %__b.addr.i190 = alloca <2 x i64>, align 16
  %__p.addr.i187 = alloca ptr, align 8
  %__b.addr.i188 = alloca <2 x i64>, align 16
  %__a.addr.i184 = alloca <2 x i64>, align 16
  %__b.addr.i185 = alloca <2 x i64>, align 16
  %__a.addr.i181 = alloca <2 x i64>, align 16
  %__b.addr.i182 = alloca <2 x i64>, align 16
  %__a.addr.i178 = alloca <2 x i64>, align 16
  %__b.addr.i179 = alloca <2 x i64>, align 16
  %__a.addr.i175 = alloca <2 x i64>, align 16
  %__b.addr.i176 = alloca <2 x i64>, align 16
  %__a.addr.i172 = alloca <2 x i64>, align 16
  %__b.addr.i173 = alloca <2 x i64>, align 16
  %__a.addr.i169 = alloca <2 x i64>, align 16
  %__b.addr.i170 = alloca <2 x i64>, align 16
  %__a.addr.i166 = alloca <2 x i64>, align 16
  %__b.addr.i167 = alloca <2 x i64>, align 16
  %__a.addr.i163 = alloca <2 x i64>, align 16
  %__b.addr.i164 = alloca <2 x i64>, align 16
  %__a.addr.i160 = alloca <2 x i64>, align 16
  %__b.addr.i161 = alloca <2 x i64>, align 16
  %__a.addr.i157 = alloca <2 x i64>, align 16
  %__b.addr.i158 = alloca <2 x i64>, align 16
  %__a.addr.i154 = alloca <2 x i64>, align 16
  %__b.addr.i155 = alloca <2 x i64>, align 16
  %__a.addr.i152 = alloca <2 x i64>, align 16
  %__b.addr.i153 = alloca <2 x i64>, align 16
  %__i3.addr.i143 = alloca i32, align 4
  %__i2.addr.i144 = alloca i32, align 4
  %__i1.addr.i145 = alloca i32, align 4
  %__i0.addr.i146 = alloca i32, align 4
  %.compoundliteral.i147 = alloca <4 x i32>, align 16
  %__i3.addr.i = alloca i32, align 4
  %__i2.addr.i = alloca i32, align 4
  %__i1.addr.i = alloca i32, align 4
  %__i0.addr.i = alloca i32, align 4
  %.compoundliteral.i138 = alloca <4 x i32>, align 16
  %__a.addr.i136 = alloca <2 x i64>, align 16
  %__b.addr.i137 = alloca <2 x i64>, align 16
  %__a.addr.i134 = alloca <2 x i64>, align 16
  %__b.addr.i135 = alloca <2 x i64>, align 16
  %__a.addr.i132 = alloca <2 x i64>, align 16
  %__b.addr.i133 = alloca <2 x i64>, align 16
  %__a.addr.i130 = alloca <2 x i64>, align 16
  %__b.addr.i131 = alloca <2 x i64>, align 16
  %__a.addr.i128 = alloca <2 x i64>, align 16
  %__b.addr.i129 = alloca <2 x i64>, align 16
  %__a.addr.i126 = alloca <2 x i64>, align 16
  %__b.addr.i127 = alloca <2 x i64>, align 16
  %__a.addr.i124 = alloca <2 x i64>, align 16
  %__b.addr.i125 = alloca <2 x i64>, align 16
  %__a.addr.i122 = alloca <2 x i64>, align 16
  %__b.addr.i123 = alloca <2 x i64>, align 16
  %__a.addr.i120 = alloca <2 x i64>, align 16
  %__b.addr.i121 = alloca <2 x i64>, align 16
  %__a.addr.i118 = alloca <2 x i64>, align 16
  %__b.addr.i119 = alloca <2 x i64>, align 16
  %__a.addr.i116 = alloca <2 x i64>, align 16
  %__b.addr.i117 = alloca <2 x i64>, align 16
  %__a.addr.i114 = alloca <2 x i64>, align 16
  %__b.addr.i115 = alloca <2 x i64>, align 16
  %__a.addr.i112 = alloca <2 x i64>, align 16
  %__b.addr.i113 = alloca <2 x i64>, align 16
  %__a.addr.i110 = alloca <2 x i64>, align 16
  %__b.addr.i111 = alloca <2 x i64>, align 16
  %__a.addr.i = alloca <2 x i64>, align 16
  %__b.addr.i = alloca <2 x i64>, align 16
  %__p.addr.i109 = alloca ptr, align 8
  %__p.addr.i108 = alloca ptr, align 8
  %__p.addr.i107 = alloca ptr, align 8
  %__p.addr.i106 = alloca ptr, align 8
  %__p.addr.i105 = alloca ptr, align 8
  %__p.addr.i104 = alloca ptr, align 8
  %__p.addr.i103 = alloca ptr, align 8
  %__p.addr.i102 = alloca ptr, align 8
  %__p.addr.i101 = alloca ptr, align 8
  %__p.addr.i = alloca ptr, align 8
  %__b15.addr.i = alloca i8, align 1
  %__b14.addr.i = alloca i8, align 1
  %__b13.addr.i = alloca i8, align 1
  %__b12.addr.i = alloca i8, align 1
  %__b11.addr.i = alloca i8, align 1
  %__b10.addr.i = alloca i8, align 1
  %__b9.addr.i = alloca i8, align 1
  %__b8.addr.i = alloca i8, align 1
  %__b7.addr.i = alloca i8, align 1
  %__b6.addr.i = alloca i8, align 1
  %__b5.addr.i = alloca i8, align 1
  %__b4.addr.i = alloca i8, align 1
  %__b3.addr.i = alloca i8, align 1
  %__b2.addr.i = alloca i8, align 1
  %__b1.addr.i = alloca i8, align 1
  %__b0.addr.i = alloca i8, align 1
  %.compoundliteral.i98 = alloca <16 x i8>, align 16
  %__q1.addr.i93 = alloca i64, align 8
  %__q0.addr.i94 = alloca i64, align 8
  %.compoundliteral.i95 = alloca <2 x i64>, align 16
  %__q1.addr.i = alloca i64, align 8
  %__q0.addr.i = alloca i64, align 8
  %.compoundliteral.i = alloca <2 x i64>, align 16
  %retval = alloca i1, align 1
  %fp.addr = alloca ptr, align 8
  %crc_out.addr = alloca ptr, align 8
  %length_out.addr = alloca ptr, align 8
  %buf = alloca [4096 x <2 x i64>], align 16
  %crc = alloca i64, align 8
  %length = alloca i64, align 8
  %bytes_read = alloca i64, align 8
  %single_mult_constant = alloca <2 x i64>, align 16
  %four_mult_constant = alloca <2 x i64>, align 16
  %shuffle_constant = alloca <2 x i64>, align 16
  %datap = alloca ptr, align 8
  %data = alloca <2 x i64>, align 16
  %data2 = alloca <2 x i64>, align 16
  %data3 = alloca <2 x i64>, align 16
  %data4 = alloca <2 x i64>, align 16
  %data5 = alloca <2 x i64>, align 16
  %data6 = alloca <2 x i64>, align 16
  %data7 = alloca <2 x i64>, align 16
  %data8 = alloca <2 x i64>, align 16
  %fold_data = alloca <2 x i64>, align 16
  %xor_crc = alloca <2 x i64>, align 16
  %cp = alloca ptr, align 8
  store ptr %fp, ptr %fp.addr, align 8
  store ptr %crc_out, ptr %crc_out.addr, align 8
  store ptr %length_out, ptr %length_out.addr, align 8
  store i64 0, ptr %crc, align 8
  store i64 0, ptr %length, align 8
  %0 = load ptr, ptr %fp.addr, align 8
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %entry
  %1 = load ptr, ptr %crc_out.addr, align 8
  %tobool1 = icmp ne ptr %1, null
  br i1 %tobool1, label %lor.lhs.false2, label %if.then

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %2 = load ptr, ptr %length_out.addr, align 8
  %tobool3 = icmp ne ptr %2, null
  br i1 %tobool3, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false2, %lor.lhs.false, %entry
  store i1 false, ptr %retval, align 1
  br label %return

if.end:                                           ; preds = %lor.lhs.false2
  store i64 3317288268, ptr %__q1.addr.i93, align 8
  store i64 3903084037, ptr %__q0.addr.i94, align 8
  %3 = load i64, ptr %__q0.addr.i94, align 8
  %vecinit.i96 = insertelement <2 x i64> poison, i64 %3, i32 0
  %4 = load i64, ptr %__q1.addr.i93, align 8
  %vecinit1.i97 = insertelement <2 x i64> %vecinit.i96, i64 %4, i32 1
  store <2 x i64> %vecinit1.i97, ptr %.compoundliteral.i95, align 16
  %5 = load <2 x i64>, ptr %.compoundliteral.i95, align 16
  store <2 x i64> %5, ptr %single_mult_constant, align 16
  store i64 2285074764, ptr %__q1.addr.i, align 8
  store i64 3861023505, ptr %__q0.addr.i, align 8
  %6 = load i64, ptr %__q0.addr.i, align 8
  %vecinit.i = insertelement <2 x i64> poison, i64 %6, i32 0
  %7 = load i64, ptr %__q1.addr.i, align 8
  %vecinit1.i = insertelement <2 x i64> %vecinit.i, i64 %7, i32 1
  store <2 x i64> %vecinit1.i, ptr %.compoundliteral.i, align 16
  %8 = load <2 x i64>, ptr %.compoundliteral.i, align 16
  store <2 x i64> %8, ptr %four_mult_constant, align 16
  store i8 0, ptr %__b15.addr.i, align 1
  store i8 1, ptr %__b14.addr.i, align 1
  store i8 2, ptr %__b13.addr.i, align 1
  store i8 3, ptr %__b12.addr.i, align 1
  store i8 4, ptr %__b11.addr.i, align 1
  store i8 5, ptr %__b10.addr.i, align 1
  store i8 6, ptr %__b9.addr.i, align 1
  store i8 7, ptr %__b8.addr.i, align 1
  store i8 8, ptr %__b7.addr.i, align 1
  store i8 9, ptr %__b6.addr.i, align 1
  store i8 10, ptr %__b5.addr.i, align 1
  store i8 11, ptr %__b4.addr.i, align 1
  store i8 12, ptr %__b3.addr.i, align 1
  store i8 13, ptr %__b2.addr.i, align 1
  store i8 14, ptr %__b1.addr.i, align 1
  store i8 15, ptr %__b0.addr.i, align 1
  %9 = load i8, ptr %__b0.addr.i, align 1
  %vecinit.i99 = insertelement <16 x i8> poison, i8 %9, i32 0
  %10 = load i8, ptr %__b1.addr.i, align 1
  %vecinit1.i100 = insertelement <16 x i8> %vecinit.i99, i8 %10, i32 1
  %11 = load i8, ptr %__b2.addr.i, align 1
  %vecinit2.i = insertelement <16 x i8> %vecinit1.i100, i8 %11, i32 2
  %12 = load i8, ptr %__b3.addr.i, align 1
  %vecinit3.i = insertelement <16 x i8> %vecinit2.i, i8 %12, i32 3
  %13 = load i8, ptr %__b4.addr.i, align 1
  %vecinit4.i = insertelement <16 x i8> %vecinit3.i, i8 %13, i32 4
  %14 = load i8, ptr %__b5.addr.i, align 1
  %vecinit5.i = insertelement <16 x i8> %vecinit4.i, i8 %14, i32 5
  %15 = load i8, ptr %__b6.addr.i, align 1
  %vecinit6.i = insertelement <16 x i8> %vecinit5.i, i8 %15, i32 6
  %16 = load i8, ptr %__b7.addr.i, align 1
  %vecinit7.i = insertelement <16 x i8> %vecinit6.i, i8 %16, i32 7
  %17 = load i8, ptr %__b8.addr.i, align 1
  %vecinit8.i = insertelement <16 x i8> %vecinit7.i, i8 %17, i32 8
  %18 = load i8, ptr %__b9.addr.i, align 1
  %vecinit9.i = insertelement <16 x i8> %vecinit8.i, i8 %18, i32 9
  %19 = load i8, ptr %__b10.addr.i, align 1
  %vecinit10.i = insertelement <16 x i8> %vecinit9.i, i8 %19, i32 10
  %20 = load i8, ptr %__b11.addr.i, align 1
  %vecinit11.i = insertelement <16 x i8> %vecinit10.i, i8 %20, i32 11
  %21 = load i8, ptr %__b12.addr.i, align 1
  %vecinit12.i = insertelement <16 x i8> %vecinit11.i, i8 %21, i32 12
  %22 = load i8, ptr %__b13.addr.i, align 1
  %vecinit13.i = insertelement <16 x i8> %vecinit12.i, i8 %22, i32 13
  %23 = load i8, ptr %__b14.addr.i, align 1
  %vecinit14.i = insertelement <16 x i8> %vecinit13.i, i8 %23, i32 14
  %24 = load i8, ptr %__b15.addr.i, align 1
  %vecinit15.i = insertelement <16 x i8> %vecinit14.i, i8 %24, i32 15
  store <16 x i8> %vecinit15.i, ptr %.compoundliteral.i98, align 16
  %25 = load <16 x i8>, ptr %.compoundliteral.i98, align 16
  %26 = bitcast <16 x i8> %25 to <2 x i64>
  store <2 x i64> %26, ptr %shuffle_constant, align 16
  br label %while.cond

while.cond:                                       ; preds = %if.end89, %if.end
  %arraydecay = getelementptr inbounds [4096 x <2 x i64>], ptr %buf, i64 0, i64 0
  %27 = load ptr, ptr %fp.addr, align 8
  %call6 = call i64 @fread_unlocked(ptr noundef %arraydecay, i64 noundef 1, i64 noundef 65536, ptr noundef %27)
  store i64 %call6, ptr %bytes_read, align 8
  %cmp = icmp ugt i64 %call6, 0
  br i1 %cmp, label %while.body, label %while.end90

while.body:                                       ; preds = %while.cond
  %28 = load i64, ptr %length, align 8
  %29 = load i64, ptr %bytes_read, align 8
  %add = add i64 %28, %29
  %30 = load i64, ptr %length, align 8
  %cmp7 = icmp ult i64 %add, %30
  br i1 %cmp7, label %if.then8, label %if.end10

if.then8:                                         ; preds = %while.body
  %call9 = call ptr @__errno_location() #5
  store i32 75, ptr %call9, align 4
  store i1 false, ptr %retval, align 1
  br label %return

if.end10:                                         ; preds = %while.body
  %31 = load i64, ptr %bytes_read, align 8
  %32 = load i64, ptr %length, align 8
  %add11 = add i64 %32, %31
  store i64 %add11, ptr %length, align 8
  %arraydecay12 = getelementptr inbounds [4096 x <2 x i64>], ptr %buf, i64 0, i64 0
  store ptr %arraydecay12, ptr %datap, align 8
  %33 = load i64, ptr %bytes_read, align 8
  %cmp13 = icmp uge i64 %33, 128
  br i1 %cmp13, label %if.then14, label %if.end58

if.then14:                                        ; preds = %if.end10
  %34 = load ptr, ptr %datap, align 8
  store ptr %34, ptr %__p.addr.i109, align 8
  %35 = load ptr, ptr %__p.addr.i109, align 8
  %36 = load <2 x i64>, ptr %35, align 1
  store <2 x i64> %36, ptr %data, align 16
  %37 = load <2 x i64>, ptr %data, align 16
  %38 = load <2 x i64>, ptr %shuffle_constant, align 16
  store <2 x i64> %37, ptr %__a.addr.i136, align 16
  store <2 x i64> %38, ptr %__b.addr.i137, align 16
  %39 = load <2 x i64>, ptr %__a.addr.i136, align 16
  %40 = bitcast <2 x i64> %39 to <16 x i8>
  %41 = load <2 x i64>, ptr %__b.addr.i137, align 16
  %42 = bitcast <2 x i64> %41 to <16 x i8>
  %43 = call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> %40, <16 x i8> %42)
  %44 = bitcast <16 x i8> %43 to <2 x i64>
  store <2 x i64> %44, ptr %data, align 16
  %45 = load i64, ptr %crc, align 8
  %conv = trunc i64 %45 to i32
  store i32 %conv, ptr %__i3.addr.i143, align 4
  store i32 0, ptr %__i2.addr.i144, align 4
  store i32 0, ptr %__i1.addr.i145, align 4
  store i32 0, ptr %__i0.addr.i146, align 4
  %46 = load i32, ptr %__i0.addr.i146, align 4
  %vecinit.i148 = insertelement <4 x i32> poison, i32 %46, i32 0
  %47 = load i32, ptr %__i1.addr.i145, align 4
  %vecinit1.i149 = insertelement <4 x i32> %vecinit.i148, i32 %47, i32 1
  %48 = load i32, ptr %__i2.addr.i144, align 4
  %vecinit2.i150 = insertelement <4 x i32> %vecinit1.i149, i32 %48, i32 2
  %49 = load i32, ptr %__i3.addr.i143, align 4
  %vecinit3.i151 = insertelement <4 x i32> %vecinit2.i150, i32 %49, i32 3
  store <4 x i32> %vecinit3.i151, ptr %.compoundliteral.i147, align 16
  %50 = load <4 x i32>, ptr %.compoundliteral.i147, align 16
  %51 = bitcast <4 x i32> %50 to <2 x i64>
  store <2 x i64> %51, ptr %xor_crc, align 16
  store i64 0, ptr %crc, align 8
  %52 = load <2 x i64>, ptr %data, align 16
  %53 = load <2 x i64>, ptr %xor_crc, align 16
  store <2 x i64> %52, ptr %__a.addr.i184, align 16
  store <2 x i64> %53, ptr %__b.addr.i185, align 16
  %54 = load <2 x i64>, ptr %__a.addr.i184, align 16
  %55 = load <2 x i64>, ptr %__b.addr.i185, align 16
  %xor.i186 = xor <2 x i64> %54, %55
  store <2 x i64> %xor.i186, ptr %data, align 16
  %56 = load ptr, ptr %datap, align 8
  %add.ptr = getelementptr inbounds <2 x i64>, ptr %56, i64 1
  store ptr %add.ptr, ptr %__p.addr.i108, align 8
  %57 = load ptr, ptr %__p.addr.i108, align 8
  %58 = load <2 x i64>, ptr %57, align 1
  store <2 x i64> %58, ptr %data3, align 16
  %59 = load <2 x i64>, ptr %data3, align 16
  %60 = load <2 x i64>, ptr %shuffle_constant, align 16
  store <2 x i64> %59, ptr %__a.addr.i134, align 16
  store <2 x i64> %60, ptr %__b.addr.i135, align 16
  %61 = load <2 x i64>, ptr %__a.addr.i134, align 16
  %62 = bitcast <2 x i64> %61 to <16 x i8>
  %63 = load <2 x i64>, ptr %__b.addr.i135, align 16
  %64 = bitcast <2 x i64> %63 to <16 x i8>
  %65 = call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> %62, <16 x i8> %64)
  %66 = bitcast <16 x i8> %65 to <2 x i64>
  store <2 x i64> %66, ptr %data3, align 16
  %67 = load ptr, ptr %datap, align 8
  %add.ptr21 = getelementptr inbounds <2 x i64>, ptr %67, i64 2
  store ptr %add.ptr21, ptr %__p.addr.i107, align 8
  %68 = load ptr, ptr %__p.addr.i107, align 8
  %69 = load <2 x i64>, ptr %68, align 1
  store <2 x i64> %69, ptr %data5, align 16
  %70 = load <2 x i64>, ptr %data5, align 16
  %71 = load <2 x i64>, ptr %shuffle_constant, align 16
  store <2 x i64> %70, ptr %__a.addr.i132, align 16
  store <2 x i64> %71, ptr %__b.addr.i133, align 16
  %72 = load <2 x i64>, ptr %__a.addr.i132, align 16
  %73 = bitcast <2 x i64> %72 to <16 x i8>
  %74 = load <2 x i64>, ptr %__b.addr.i133, align 16
  %75 = bitcast <2 x i64> %74 to <16 x i8>
  %76 = call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> %73, <16 x i8> %75)
  %77 = bitcast <16 x i8> %76 to <2 x i64>
  store <2 x i64> %77, ptr %data5, align 16
  %78 = load ptr, ptr %datap, align 8
  %add.ptr24 = getelementptr inbounds <2 x i64>, ptr %78, i64 3
  store ptr %add.ptr24, ptr %__p.addr.i106, align 8
  %79 = load ptr, ptr %__p.addr.i106, align 8
  %80 = load <2 x i64>, ptr %79, align 1
  store <2 x i64> %80, ptr %data7, align 16
  %81 = load <2 x i64>, ptr %data7, align 16
  %82 = load <2 x i64>, ptr %shuffle_constant, align 16
  store <2 x i64> %81, ptr %__a.addr.i130, align 16
  store <2 x i64> %82, ptr %__b.addr.i131, align 16
  %83 = load <2 x i64>, ptr %__a.addr.i130, align 16
  %84 = bitcast <2 x i64> %83 to <16 x i8>
  %85 = load <2 x i64>, ptr %__b.addr.i131, align 16
  %86 = bitcast <2 x i64> %85 to <16 x i8>
  %87 = call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> %84, <16 x i8> %86)
  %88 = bitcast <16 x i8> %87 to <2 x i64>
  store <2 x i64> %88, ptr %data7, align 16
  br label %while.cond27

while.cond27:                                     ; preds = %while.body30, %if.then14
  %89 = load i64, ptr %bytes_read, align 8
  %cmp28 = icmp uge i64 %89, 128
  br i1 %cmp28, label %while.body30, label %while.end

while.body30:                                     ; preds = %while.cond27
  %90 = load ptr, ptr %datap, align 8
  %add.ptr31 = getelementptr inbounds <2 x i64>, ptr %90, i64 4
  store ptr %add.ptr31, ptr %datap, align 8
  %91 = load <2 x i64>, ptr %data, align 16
  %92 = load <2 x i64>, ptr %four_mult_constant, align 16
  %93 = call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %91, <2 x i64> %92, i8 0)
  store <2 x i64> %93, ptr %data2, align 16
  %94 = load <2 x i64>, ptr %data, align 16
  %95 = load <2 x i64>, ptr %four_mult_constant, align 16
  %96 = call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %94, <2 x i64> %95, i8 17)
  store <2 x i64> %96, ptr %data, align 16
  %97 = load <2 x i64>, ptr %data3, align 16
  %98 = load <2 x i64>, ptr %four_mult_constant, align 16
  %99 = call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %97, <2 x i64> %98, i8 0)
  store <2 x i64> %99, ptr %data4, align 16
  %100 = load <2 x i64>, ptr %data3, align 16
  %101 = load <2 x i64>, ptr %four_mult_constant, align 16
  %102 = call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %100, <2 x i64> %101, i8 17)
  store <2 x i64> %102, ptr %data3, align 16
  %103 = load <2 x i64>, ptr %data5, align 16
  %104 = load <2 x i64>, ptr %four_mult_constant, align 16
  %105 = call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %103, <2 x i64> %104, i8 0)
  store <2 x i64> %105, ptr %data6, align 16
  %106 = load <2 x i64>, ptr %data5, align 16
  %107 = load <2 x i64>, ptr %four_mult_constant, align 16
  %108 = call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %106, <2 x i64> %107, i8 17)
  store <2 x i64> %108, ptr %data5, align 16
  %109 = load <2 x i64>, ptr %data7, align 16
  %110 = load <2 x i64>, ptr %four_mult_constant, align 16
  %111 = call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %109, <2 x i64> %110, i8 0)
  store <2 x i64> %111, ptr %data8, align 16
  %112 = load <2 x i64>, ptr %data7, align 16
  %113 = load <2 x i64>, ptr %four_mult_constant, align 16
  %114 = call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %112, <2 x i64> %113, i8 17)
  store <2 x i64> %114, ptr %data7, align 16
  %115 = load <2 x i64>, ptr %data, align 16
  %116 = load <2 x i64>, ptr %data2, align 16
  store <2 x i64> %115, ptr %__a.addr.i181, align 16
  store <2 x i64> %116, ptr %__b.addr.i182, align 16
  %117 = load <2 x i64>, ptr %__a.addr.i181, align 16
  %118 = load <2 x i64>, ptr %__b.addr.i182, align 16
  %xor.i183 = xor <2 x i64> %117, %118
  store <2 x i64> %xor.i183, ptr %data, align 16
  %119 = load ptr, ptr %datap, align 8
  store ptr %119, ptr %__p.addr.i105, align 8
  %120 = load ptr, ptr %__p.addr.i105, align 8
  %121 = load <2 x i64>, ptr %120, align 1
  store <2 x i64> %121, ptr %data2, align 16
  %122 = load <2 x i64>, ptr %data2, align 16
  %123 = load <2 x i64>, ptr %shuffle_constant, align 16
  store <2 x i64> %122, ptr %__a.addr.i128, align 16
  store <2 x i64> %123, ptr %__b.addr.i129, align 16
  %124 = load <2 x i64>, ptr %__a.addr.i128, align 16
  %125 = bitcast <2 x i64> %124 to <16 x i8>
  %126 = load <2 x i64>, ptr %__b.addr.i129, align 16
  %127 = bitcast <2 x i64> %126 to <16 x i8>
  %128 = call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> %125, <16 x i8> %127)
  %129 = bitcast <16 x i8> %128 to <2 x i64>
  store <2 x i64> %129, ptr %data2, align 16
  %130 = load <2 x i64>, ptr %data, align 16
  %131 = load <2 x i64>, ptr %data2, align 16
  store <2 x i64> %130, ptr %__a.addr.i178, align 16
  store <2 x i64> %131, ptr %__b.addr.i179, align 16
  %132 = load <2 x i64>, ptr %__a.addr.i178, align 16
  %133 = load <2 x i64>, ptr %__b.addr.i179, align 16
  %xor.i180 = xor <2 x i64> %132, %133
  store <2 x i64> %xor.i180, ptr %data, align 16
  %134 = load <2 x i64>, ptr %data3, align 16
  %135 = load <2 x i64>, ptr %data4, align 16
  store <2 x i64> %134, ptr %__a.addr.i175, align 16
  store <2 x i64> %135, ptr %__b.addr.i176, align 16
  %136 = load <2 x i64>, ptr %__a.addr.i175, align 16
  %137 = load <2 x i64>, ptr %__b.addr.i176, align 16
  %xor.i177 = xor <2 x i64> %136, %137
  store <2 x i64> %xor.i177, ptr %data3, align 16
  %138 = load ptr, ptr %datap, align 8
  %add.ptr37 = getelementptr inbounds <2 x i64>, ptr %138, i64 1
  store ptr %add.ptr37, ptr %__p.addr.i104, align 8
  %139 = load ptr, ptr %__p.addr.i104, align 8
  %140 = load <2 x i64>, ptr %139, align 1
  store <2 x i64> %140, ptr %data4, align 16
  %141 = load <2 x i64>, ptr %data4, align 16
  %142 = load <2 x i64>, ptr %shuffle_constant, align 16
  store <2 x i64> %141, ptr %__a.addr.i126, align 16
  store <2 x i64> %142, ptr %__b.addr.i127, align 16
  %143 = load <2 x i64>, ptr %__a.addr.i126, align 16
  %144 = bitcast <2 x i64> %143 to <16 x i8>
  %145 = load <2 x i64>, ptr %__b.addr.i127, align 16
  %146 = bitcast <2 x i64> %145 to <16 x i8>
  %147 = call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> %144, <16 x i8> %146)
  %148 = bitcast <16 x i8> %147 to <2 x i64>
  store <2 x i64> %148, ptr %data4, align 16
  %149 = load <2 x i64>, ptr %data3, align 16
  %150 = load <2 x i64>, ptr %data4, align 16
  store <2 x i64> %149, ptr %__a.addr.i172, align 16
  store <2 x i64> %150, ptr %__b.addr.i173, align 16
  %151 = load <2 x i64>, ptr %__a.addr.i172, align 16
  %152 = load <2 x i64>, ptr %__b.addr.i173, align 16
  %xor.i174 = xor <2 x i64> %151, %152
  store <2 x i64> %xor.i174, ptr %data3, align 16
  %153 = load <2 x i64>, ptr %data5, align 16
  %154 = load <2 x i64>, ptr %data6, align 16
  store <2 x i64> %153, ptr %__a.addr.i169, align 16
  store <2 x i64> %154, ptr %__b.addr.i170, align 16
  %155 = load <2 x i64>, ptr %__a.addr.i169, align 16
  %156 = load <2 x i64>, ptr %__b.addr.i170, align 16
  %xor.i171 = xor <2 x i64> %155, %156
  store <2 x i64> %xor.i171, ptr %data5, align 16
  %157 = load ptr, ptr %datap, align 8
  %add.ptr42 = getelementptr inbounds <2 x i64>, ptr %157, i64 2
  store ptr %add.ptr42, ptr %__p.addr.i103, align 8
  %158 = load ptr, ptr %__p.addr.i103, align 8
  %159 = load <2 x i64>, ptr %158, align 1
  store <2 x i64> %159, ptr %data6, align 16
  %160 = load <2 x i64>, ptr %data6, align 16
  %161 = load <2 x i64>, ptr %shuffle_constant, align 16
  store <2 x i64> %160, ptr %__a.addr.i124, align 16
  store <2 x i64> %161, ptr %__b.addr.i125, align 16
  %162 = load <2 x i64>, ptr %__a.addr.i124, align 16
  %163 = bitcast <2 x i64> %162 to <16 x i8>
  %164 = load <2 x i64>, ptr %__b.addr.i125, align 16
  %165 = bitcast <2 x i64> %164 to <16 x i8>
  %166 = call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> %163, <16 x i8> %165)
  %167 = bitcast <16 x i8> %166 to <2 x i64>
  store <2 x i64> %167, ptr %data6, align 16
  %168 = load <2 x i64>, ptr %data5, align 16
  %169 = load <2 x i64>, ptr %data6, align 16
  store <2 x i64> %168, ptr %__a.addr.i166, align 16
  store <2 x i64> %169, ptr %__b.addr.i167, align 16
  %170 = load <2 x i64>, ptr %__a.addr.i166, align 16
  %171 = load <2 x i64>, ptr %__b.addr.i167, align 16
  %xor.i168 = xor <2 x i64> %170, %171
  store <2 x i64> %xor.i168, ptr %data5, align 16
  %172 = load <2 x i64>, ptr %data7, align 16
  %173 = load <2 x i64>, ptr %data8, align 16
  store <2 x i64> %172, ptr %__a.addr.i163, align 16
  store <2 x i64> %173, ptr %__b.addr.i164, align 16
  %174 = load <2 x i64>, ptr %__a.addr.i163, align 16
  %175 = load <2 x i64>, ptr %__b.addr.i164, align 16
  %xor.i165 = xor <2 x i64> %174, %175
  store <2 x i64> %xor.i165, ptr %data7, align 16
  %176 = load ptr, ptr %datap, align 8
  %add.ptr47 = getelementptr inbounds <2 x i64>, ptr %176, i64 3
  store ptr %add.ptr47, ptr %__p.addr.i102, align 8
  %177 = load ptr, ptr %__p.addr.i102, align 8
  %178 = load <2 x i64>, ptr %177, align 1
  store <2 x i64> %178, ptr %data8, align 16
  %179 = load <2 x i64>, ptr %data8, align 16
  %180 = load <2 x i64>, ptr %shuffle_constant, align 16
  store <2 x i64> %179, ptr %__a.addr.i122, align 16
  store <2 x i64> %180, ptr %__b.addr.i123, align 16
  %181 = load <2 x i64>, ptr %__a.addr.i122, align 16
  %182 = bitcast <2 x i64> %181 to <16 x i8>
  %183 = load <2 x i64>, ptr %__b.addr.i123, align 16
  %184 = bitcast <2 x i64> %183 to <16 x i8>
  %185 = call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> %182, <16 x i8> %184)
  %186 = bitcast <16 x i8> %185 to <2 x i64>
  store <2 x i64> %186, ptr %data8, align 16
  %187 = load <2 x i64>, ptr %data7, align 16
  %188 = load <2 x i64>, ptr %data8, align 16
  store <2 x i64> %187, ptr %__a.addr.i160, align 16
  store <2 x i64> %188, ptr %__b.addr.i161, align 16
  %189 = load <2 x i64>, ptr %__a.addr.i160, align 16
  %190 = load <2 x i64>, ptr %__b.addr.i161, align 16
  %xor.i162 = xor <2 x i64> %189, %190
  store <2 x i64> %xor.i162, ptr %data7, align 16
  %191 = load i64, ptr %bytes_read, align 8
  %sub = sub i64 %191, 64
  store i64 %sub, ptr %bytes_read, align 8
  br label %while.cond27, !llvm.loop !6

while.end:                                        ; preds = %while.cond27
  %192 = load <2 x i64>, ptr %data, align 16
  %193 = load <2 x i64>, ptr %shuffle_constant, align 16
  store <2 x i64> %192, ptr %__a.addr.i120, align 16
  store <2 x i64> %193, ptr %__b.addr.i121, align 16
  %194 = load <2 x i64>, ptr %__a.addr.i120, align 16
  %195 = bitcast <2 x i64> %194 to <16 x i8>
  %196 = load <2 x i64>, ptr %__b.addr.i121, align 16
  %197 = bitcast <2 x i64> %196 to <16 x i8>
  %198 = call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> %195, <16 x i8> %197)
  %199 = bitcast <16 x i8> %198 to <2 x i64>
  store <2 x i64> %199, ptr %data, align 16
  %200 = load ptr, ptr %datap, align 8
  %201 = load <2 x i64>, ptr %data, align 16
  store ptr %200, ptr %__p.addr.i195, align 8
  store <2 x i64> %201, ptr %__b.addr.i196, align 16
  %202 = load <2 x i64>, ptr %__b.addr.i196, align 16
  %203 = load ptr, ptr %__p.addr.i195, align 8
  store <2 x i64> %202, ptr %203, align 1
  %204 = load <2 x i64>, ptr %data3, align 16
  %205 = load <2 x i64>, ptr %shuffle_constant, align 16
  store <2 x i64> %204, ptr %__a.addr.i118, align 16
  store <2 x i64> %205, ptr %__b.addr.i119, align 16
  %206 = load <2 x i64>, ptr %__a.addr.i118, align 16
  %207 = bitcast <2 x i64> %206 to <16 x i8>
  %208 = load <2 x i64>, ptr %__b.addr.i119, align 16
  %209 = bitcast <2 x i64> %208 to <16 x i8>
  %210 = call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> %207, <16 x i8> %209)
  %211 = bitcast <16 x i8> %210 to <2 x i64>
  store <2 x i64> %211, ptr %data3, align 16
  %212 = load ptr, ptr %datap, align 8
  %add.ptr53 = getelementptr inbounds <2 x i64>, ptr %212, i64 1
  %213 = load <2 x i64>, ptr %data3, align 16
  store ptr %add.ptr53, ptr %__p.addr.i193, align 8
  store <2 x i64> %213, ptr %__b.addr.i194, align 16
  %214 = load <2 x i64>, ptr %__b.addr.i194, align 16
  %215 = load ptr, ptr %__p.addr.i193, align 8
  store <2 x i64> %214, ptr %215, align 1
  %216 = load <2 x i64>, ptr %data5, align 16
  %217 = load <2 x i64>, ptr %shuffle_constant, align 16
  store <2 x i64> %216, ptr %__a.addr.i116, align 16
  store <2 x i64> %217, ptr %__b.addr.i117, align 16
  %218 = load <2 x i64>, ptr %__a.addr.i116, align 16
  %219 = bitcast <2 x i64> %218 to <16 x i8>
  %220 = load <2 x i64>, ptr %__b.addr.i117, align 16
  %221 = bitcast <2 x i64> %220 to <16 x i8>
  %222 = call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> %219, <16 x i8> %221)
  %223 = bitcast <16 x i8> %222 to <2 x i64>
  store <2 x i64> %223, ptr %data5, align 16
  %224 = load ptr, ptr %datap, align 8
  %add.ptr55 = getelementptr inbounds <2 x i64>, ptr %224, i64 2
  %225 = load <2 x i64>, ptr %data5, align 16
  store ptr %add.ptr55, ptr %__p.addr.i191, align 8
  store <2 x i64> %225, ptr %__b.addr.i192, align 16
  %226 = load <2 x i64>, ptr %__b.addr.i192, align 16
  %227 = load ptr, ptr %__p.addr.i191, align 8
  store <2 x i64> %226, ptr %227, align 1
  %228 = load <2 x i64>, ptr %data7, align 16
  %229 = load <2 x i64>, ptr %shuffle_constant, align 16
  store <2 x i64> %228, ptr %__a.addr.i114, align 16
  store <2 x i64> %229, ptr %__b.addr.i115, align 16
  %230 = load <2 x i64>, ptr %__a.addr.i114, align 16
  %231 = bitcast <2 x i64> %230 to <16 x i8>
  %232 = load <2 x i64>, ptr %__b.addr.i115, align 16
  %233 = bitcast <2 x i64> %232 to <16 x i8>
  %234 = call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> %231, <16 x i8> %233)
  %235 = bitcast <16 x i8> %234 to <2 x i64>
  store <2 x i64> %235, ptr %data7, align 16
  %236 = load ptr, ptr %datap, align 8
  %add.ptr57 = getelementptr inbounds <2 x i64>, ptr %236, i64 3
  %237 = load <2 x i64>, ptr %data7, align 16
  store ptr %add.ptr57, ptr %__p.addr.i189, align 8
  store <2 x i64> %237, ptr %__b.addr.i190, align 16
  %238 = load <2 x i64>, ptr %__b.addr.i190, align 16
  %239 = load ptr, ptr %__p.addr.i189, align 8
  store <2 x i64> %238, ptr %239, align 1
  br label %if.end58

if.end58:                                         ; preds = %while.end, %if.end10
  %240 = load i64, ptr %bytes_read, align 8
  %cmp59 = icmp uge i64 %240, 32
  br i1 %cmp59, label %if.then61, label %if.end78

if.then61:                                        ; preds = %if.end58
  %241 = load ptr, ptr %datap, align 8
  store ptr %241, ptr %__p.addr.i101, align 8
  %242 = load ptr, ptr %__p.addr.i101, align 8
  %243 = load <2 x i64>, ptr %242, align 1
  store <2 x i64> %243, ptr %data, align 16
  %244 = load <2 x i64>, ptr %data, align 16
  %245 = load <2 x i64>, ptr %shuffle_constant, align 16
  store <2 x i64> %244, ptr %__a.addr.i112, align 16
  store <2 x i64> %245, ptr %__b.addr.i113, align 16
  %246 = load <2 x i64>, ptr %__a.addr.i112, align 16
  %247 = bitcast <2 x i64> %246 to <16 x i8>
  %248 = load <2 x i64>, ptr %__b.addr.i113, align 16
  %249 = bitcast <2 x i64> %248 to <16 x i8>
  %250 = call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> %247, <16 x i8> %249)
  %251 = bitcast <16 x i8> %250 to <2 x i64>
  store <2 x i64> %251, ptr %data, align 16
  %252 = load i64, ptr %crc, align 8
  %conv64 = trunc i64 %252 to i32
  store i32 %conv64, ptr %__i3.addr.i, align 4
  store i32 0, ptr %__i2.addr.i, align 4
  store i32 0, ptr %__i1.addr.i, align 4
  store i32 0, ptr %__i0.addr.i, align 4
  %253 = load i32, ptr %__i0.addr.i, align 4
  %vecinit.i139 = insertelement <4 x i32> poison, i32 %253, i32 0
  %254 = load i32, ptr %__i1.addr.i, align 4
  %vecinit1.i140 = insertelement <4 x i32> %vecinit.i139, i32 %254, i32 1
  %255 = load i32, ptr %__i2.addr.i, align 4
  %vecinit2.i141 = insertelement <4 x i32> %vecinit1.i140, i32 %255, i32 2
  %256 = load i32, ptr %__i3.addr.i, align 4
  %vecinit3.i142 = insertelement <4 x i32> %vecinit2.i141, i32 %256, i32 3
  store <4 x i32> %vecinit3.i142, ptr %.compoundliteral.i138, align 16
  %257 = load <4 x i32>, ptr %.compoundliteral.i138, align 16
  %258 = bitcast <4 x i32> %257 to <2 x i64>
  store <2 x i64> %258, ptr %xor_crc, align 16
  store i64 0, ptr %crc, align 8
  %259 = load <2 x i64>, ptr %data, align 16
  %260 = load <2 x i64>, ptr %xor_crc, align 16
  store <2 x i64> %259, ptr %__a.addr.i157, align 16
  store <2 x i64> %260, ptr %__b.addr.i158, align 16
  %261 = load <2 x i64>, ptr %__a.addr.i157, align 16
  %262 = load <2 x i64>, ptr %__b.addr.i158, align 16
  %xor.i159 = xor <2 x i64> %261, %262
  store <2 x i64> %xor.i159, ptr %data, align 16
  br label %while.cond67

while.cond67:                                     ; preds = %while.body70, %if.then61
  %263 = load i64, ptr %bytes_read, align 8
  %cmp68 = icmp uge i64 %263, 32
  br i1 %cmp68, label %while.body70, label %while.end76

while.body70:                                     ; preds = %while.cond67
  %264 = load ptr, ptr %datap, align 8
  %incdec.ptr = getelementptr inbounds <2 x i64>, ptr %264, i32 1
  store ptr %incdec.ptr, ptr %datap, align 8
  %265 = load <2 x i64>, ptr %data, align 16
  %266 = load <2 x i64>, ptr %single_mult_constant, align 16
  %267 = call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %265, <2 x i64> %266, i8 0)
  store <2 x i64> %267, ptr %data2, align 16
  %268 = load <2 x i64>, ptr %data, align 16
  %269 = load <2 x i64>, ptr %single_mult_constant, align 16
  %270 = call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %268, <2 x i64> %269, i8 17)
  store <2 x i64> %270, ptr %data, align 16
  %271 = load ptr, ptr %datap, align 8
  store ptr %271, ptr %__p.addr.i, align 8
  %272 = load ptr, ptr %__p.addr.i, align 8
  %273 = load <2 x i64>, ptr %272, align 1
  store <2 x i64> %273, ptr %fold_data, align 16
  %274 = load <2 x i64>, ptr %fold_data, align 16
  %275 = load <2 x i64>, ptr %shuffle_constant, align 16
  store <2 x i64> %274, ptr %__a.addr.i110, align 16
  store <2 x i64> %275, ptr %__b.addr.i111, align 16
  %276 = load <2 x i64>, ptr %__a.addr.i110, align 16
  %277 = bitcast <2 x i64> %276 to <16 x i8>
  %278 = load <2 x i64>, ptr %__b.addr.i111, align 16
  %279 = bitcast <2 x i64> %278 to <16 x i8>
  %280 = call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> %277, <16 x i8> %279)
  %281 = bitcast <16 x i8> %280 to <2 x i64>
  store <2 x i64> %281, ptr %fold_data, align 16
  %282 = load <2 x i64>, ptr %data, align 16
  %283 = load <2 x i64>, ptr %data2, align 16
  store <2 x i64> %282, ptr %__a.addr.i154, align 16
  store <2 x i64> %283, ptr %__b.addr.i155, align 16
  %284 = load <2 x i64>, ptr %__a.addr.i154, align 16
  %285 = load <2 x i64>, ptr %__b.addr.i155, align 16
  %xor.i156 = xor <2 x i64> %284, %285
  store <2 x i64> %xor.i156, ptr %data, align 16
  %286 = load <2 x i64>, ptr %data, align 16
  %287 = load <2 x i64>, ptr %fold_data, align 16
  store <2 x i64> %286, ptr %__a.addr.i152, align 16
  store <2 x i64> %287, ptr %__b.addr.i153, align 16
  %288 = load <2 x i64>, ptr %__a.addr.i152, align 16
  %289 = load <2 x i64>, ptr %__b.addr.i153, align 16
  %xor.i = xor <2 x i64> %288, %289
  store <2 x i64> %xor.i, ptr %data, align 16
  %290 = load i64, ptr %bytes_read, align 8
  %sub75 = sub i64 %290, 16
  store i64 %sub75, ptr %bytes_read, align 8
  br label %while.cond67, !llvm.loop !8

while.end76:                                      ; preds = %while.cond67
  %291 = load <2 x i64>, ptr %data, align 16
  %292 = load <2 x i64>, ptr %shuffle_constant, align 16
  store <2 x i64> %291, ptr %__a.addr.i, align 16
  store <2 x i64> %292, ptr %__b.addr.i, align 16
  %293 = load <2 x i64>, ptr %__a.addr.i, align 16
  %294 = bitcast <2 x i64> %293 to <16 x i8>
  %295 = load <2 x i64>, ptr %__b.addr.i, align 16
  %296 = bitcast <2 x i64> %295 to <16 x i8>
  %297 = call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> %294, <16 x i8> %296)
  %298 = bitcast <16 x i8> %297 to <2 x i64>
  store <2 x i64> %298, ptr %data, align 16
  %299 = load ptr, ptr %datap, align 8
  %300 = load <2 x i64>, ptr %data, align 16
  store ptr %299, ptr %__p.addr.i187, align 8
  store <2 x i64> %300, ptr %__b.addr.i188, align 16
  %301 = load <2 x i64>, ptr %__b.addr.i188, align 16
  %302 = load ptr, ptr %__p.addr.i187, align 8
  store <2 x i64> %301, ptr %302, align 1
  br label %if.end78

if.end78:                                         ; preds = %while.end76, %if.end58
  %303 = load ptr, ptr %datap, align 8
  store ptr %303, ptr %cp, align 8
  br label %while.cond79

while.cond79:                                     ; preds = %while.body81, %if.end78
  %304 = load i64, ptr %bytes_read, align 8
  %dec = add i64 %304, -1
  store i64 %dec, ptr %bytes_read, align 8
  %tobool80 = icmp ne i64 %304, 0
  br i1 %tobool80, label %while.body81, label %while.end85

while.body81:                                     ; preds = %while.cond79
  %305 = load i64, ptr %crc, align 8
  %shl = shl i64 %305, 8
  %306 = load i64, ptr %crc, align 8
  %shr = lshr i64 %306, 24
  %307 = load ptr, ptr %cp, align 8
  %incdec.ptr82 = getelementptr inbounds i8, ptr %307, i32 1
  store ptr %incdec.ptr82, ptr %cp, align 8
  %308 = load i8, ptr %307, align 1
  %conv83 = zext i8 %308 to i64
  %xor = xor i64 %shr, %conv83
  %and = and i64 %xor, 255
  %arrayidx = getelementptr inbounds [256 x i64], ptr @crctab, i64 0, i64 %and
  %309 = load i64, ptr %arrayidx, align 8
  %xor84 = xor i64 %shl, %309
  store i64 %xor84, ptr %crc, align 8
  br label %while.cond79, !llvm.loop !9

while.end85:                                      ; preds = %while.cond79
  %310 = load ptr, ptr %fp.addr, align 8
  %call86 = call i32 @feof_unlocked(ptr noundef %310) #6
  %tobool87 = icmp ne i32 %call86, 0
  br i1 %tobool87, label %if.then88, label %if.end89

if.then88:                                        ; preds = %while.end85
  br label %while.end90

if.end89:                                         ; preds = %while.end85
  br label %while.cond, !llvm.loop !10

while.end90:                                      ; preds = %if.then88, %while.cond
  %311 = load i64, ptr %crc, align 8
  %312 = load ptr, ptr %crc_out.addr, align 8
  store i64 %311, ptr %312, align 8
  %313 = load i64, ptr %length, align 8
  %314 = load ptr, ptr %length_out.addr, align 8
  store i64 %313, ptr %314, align 8
  %315 = load ptr, ptr %fp.addr, align 8
  %call91 = call i32 @ferror_unlocked(ptr noundef %315) #6
  %tobool92 = icmp ne i32 %call91, 0
  %lnot = xor i1 %tobool92, true
  store i1 %lnot, ptr %retval, align 1
  br label %return

return:                                           ; preds = %while.end90, %if.then8, %if.then
  %316 = load i1, ptr %retval, align 1
  ret i1 %316
}

declare i64 @fread_unlocked(ptr noundef, i64 noundef, i64 noundef, ptr noundef) #1

; Function Attrs: nounwind willreturn memory(none)
declare ptr @__errno_location() #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8>, <16 x i8>) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <2 x i64> @llvm.x86.pclmulqdq(<2 x i64>, <2 x i64>, i8 immarg) #3

; Function Attrs: nounwind
declare i32 @feof_unlocked(ptr noundef) #4

; Function Attrs: nounwind
declare i32 @ferror_unlocked(ptr noundef) #4

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+cmov,+crc32,+cx8,+fxsr,+mmx,+pclmul,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+cmov,+crc32,+cx8,+fxsr,+mmx,+pclmul,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #2 = { nounwind willreturn memory(none) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+cmov,+crc32,+cx8,+fxsr,+mmx,+pclmul,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #4 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+cmov,+crc32,+cx8,+fxsr,+mmx,+pclmul,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #5 = { nounwind willreturn memory(none) }
attributes #6 = { nounwind }

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
