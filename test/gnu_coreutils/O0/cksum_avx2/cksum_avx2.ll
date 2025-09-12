; ModuleID = 'llvm-link'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@crctab = external constant [8 x [256 x i64]], align 16

; Function Attrs: noinline nounwind optnone uwtable
define dso_local zeroext i1 @cksum_avx2(ptr noundef %fp, ptr noundef %crc_out, ptr noundef %length_out) #0 {
entry:
  %__p.addr.i215 = alloca ptr, align 8
  %__a.addr.i216 = alloca <4 x i64>, align 32
  %__p.addr.i213 = alloca ptr, align 8
  %__a.addr.i214 = alloca <4 x i64>, align 32
  %__p.addr.i211 = alloca ptr, align 8
  %__a.addr.i212 = alloca <4 x i64>, align 32
  %__p.addr.i209 = alloca ptr, align 8
  %__a.addr.i210 = alloca <4 x i64>, align 32
  %__p.addr.i207 = alloca ptr, align 8
  %__a.addr.i208 = alloca <4 x i64>, align 32
  %__a.addr.i204 = alloca <4 x i64>, align 32
  %__b.addr.i205 = alloca <4 x i64>, align 32
  %__a.addr.i201 = alloca <4 x i64>, align 32
  %__b.addr.i202 = alloca <4 x i64>, align 32
  %__a.addr.i198 = alloca <4 x i64>, align 32
  %__b.addr.i199 = alloca <4 x i64>, align 32
  %__a.addr.i195 = alloca <4 x i64>, align 32
  %__b.addr.i196 = alloca <4 x i64>, align 32
  %__a.addr.i192 = alloca <4 x i64>, align 32
  %__b.addr.i193 = alloca <4 x i64>, align 32
  %__a.addr.i189 = alloca <4 x i64>, align 32
  %__b.addr.i190 = alloca <4 x i64>, align 32
  %__a.addr.i186 = alloca <4 x i64>, align 32
  %__b.addr.i187 = alloca <4 x i64>, align 32
  %__a.addr.i183 = alloca <4 x i64>, align 32
  %__b.addr.i184 = alloca <4 x i64>, align 32
  %__a.addr.i180 = alloca <4 x i64>, align 32
  %__b.addr.i181 = alloca <4 x i64>, align 32
  %__a.addr.i177 = alloca <4 x i64>, align 32
  %__b.addr.i178 = alloca <4 x i64>, align 32
  %__a.addr.i174 = alloca <4 x i64>, align 32
  %__b.addr.i175 = alloca <4 x i64>, align 32
  %__a.addr.i172 = alloca <4 x i64>, align 32
  %__b.addr.i173 = alloca <4 x i64>, align 32
  %__i0.addr.i155 = alloca i32, align 4
  %__i1.addr.i156 = alloca i32, align 4
  %__i2.addr.i157 = alloca i32, align 4
  %__i3.addr.i158 = alloca i32, align 4
  %__i4.addr.i159 = alloca i32, align 4
  %__i5.addr.i160 = alloca i32, align 4
  %__i6.addr.i161 = alloca i32, align 4
  %__i7.addr.i162 = alloca i32, align 4
  %.compoundliteral.i163 = alloca <8 x i32>, align 32
  %__i0.addr.i = alloca i32, align 4
  %__i1.addr.i = alloca i32, align 4
  %__i2.addr.i = alloca i32, align 4
  %__i3.addr.i = alloca i32, align 4
  %__i4.addr.i = alloca i32, align 4
  %__i5.addr.i = alloca i32, align 4
  %__i6.addr.i = alloca i32, align 4
  %__i7.addr.i = alloca i32, align 4
  %.compoundliteral.i146 = alloca <8 x i32>, align 32
  %__a.addr.i144 = alloca <4 x i64>, align 32
  %__b.addr.i145 = alloca <4 x i64>, align 32
  %__a.addr.i142 = alloca <4 x i64>, align 32
  %__b.addr.i143 = alloca <4 x i64>, align 32
  %__a.addr.i140 = alloca <4 x i64>, align 32
  %__b.addr.i141 = alloca <4 x i64>, align 32
  %__a.addr.i138 = alloca <4 x i64>, align 32
  %__b.addr.i139 = alloca <4 x i64>, align 32
  %__a.addr.i136 = alloca <4 x i64>, align 32
  %__b.addr.i137 = alloca <4 x i64>, align 32
  %__a.addr.i134 = alloca <4 x i64>, align 32
  %__b.addr.i135 = alloca <4 x i64>, align 32
  %__a.addr.i132 = alloca <4 x i64>, align 32
  %__b.addr.i133 = alloca <4 x i64>, align 32
  %__a.addr.i130 = alloca <4 x i64>, align 32
  %__b.addr.i131 = alloca <4 x i64>, align 32
  %__a.addr.i128 = alloca <4 x i64>, align 32
  %__b.addr.i129 = alloca <4 x i64>, align 32
  %__a.addr.i126 = alloca <4 x i64>, align 32
  %__b.addr.i127 = alloca <4 x i64>, align 32
  %__a.addr.i124 = alloca <4 x i64>, align 32
  %__b.addr.i125 = alloca <4 x i64>, align 32
  %__a.addr.i122 = alloca <4 x i64>, align 32
  %__b.addr.i123 = alloca <4 x i64>, align 32
  %__a.addr.i120 = alloca <4 x i64>, align 32
  %__b.addr.i121 = alloca <4 x i64>, align 32
  %__a.addr.i118 = alloca <4 x i64>, align 32
  %__b.addr.i119 = alloca <4 x i64>, align 32
  %__a.addr.i116 = alloca <4 x i64>, align 32
  %__b.addr.i117 = alloca <4 x i64>, align 32
  %__p.addr.i115 = alloca ptr, align 8
  %__p.addr.i114 = alloca ptr, align 8
  %__p.addr.i113 = alloca ptr, align 8
  %__p.addr.i112 = alloca ptr, align 8
  %__p.addr.i111 = alloca ptr, align 8
  %__p.addr.i110 = alloca ptr, align 8
  %__p.addr.i109 = alloca ptr, align 8
  %__p.addr.i108 = alloca ptr, align 8
  %__p.addr.i107 = alloca ptr, align 8
  %__p.addr.i = alloca ptr, align 8
  %__b31.addr.i = alloca i8, align 1
  %__b30.addr.i = alloca i8, align 1
  %__b29.addr.i = alloca i8, align 1
  %__b28.addr.i = alloca i8, align 1
  %__b27.addr.i = alloca i8, align 1
  %__b26.addr.i = alloca i8, align 1
  %__b25.addr.i = alloca i8, align 1
  %__b24.addr.i = alloca i8, align 1
  %__b23.addr.i = alloca i8, align 1
  %__b22.addr.i = alloca i8, align 1
  %__b21.addr.i = alloca i8, align 1
  %__b20.addr.i = alloca i8, align 1
  %__b19.addr.i = alloca i8, align 1
  %__b18.addr.i = alloca i8, align 1
  %__b17.addr.i = alloca i8, align 1
  %__b16.addr.i = alloca i8, align 1
  %__b15.addr.i = alloca i8, align 1
  %__b14.addr.i = alloca i8, align 1
  %__b13.addr.i = alloca i8, align 1
  %__b12.addr.i = alloca i8, align 1
  %__b11.addr.i = alloca i8, align 1
  %__b10.addr.i = alloca i8, align 1
  %__b09.addr.i = alloca i8, align 1
  %__b08.addr.i = alloca i8, align 1
  %__b07.addr.i = alloca i8, align 1
  %__b06.addr.i = alloca i8, align 1
  %__b05.addr.i = alloca i8, align 1
  %__b04.addr.i = alloca i8, align 1
  %__b03.addr.i = alloca i8, align 1
  %__b02.addr.i = alloca i8, align 1
  %__b01.addr.i = alloca i8, align 1
  %__b00.addr.i = alloca i8, align 1
  %.compoundliteral.i102 = alloca <32 x i8>, align 32
  %__a.addr.i93 = alloca i64, align 8
  %__b.addr.i94 = alloca i64, align 8
  %__c.addr.i95 = alloca i64, align 8
  %__d.addr.i96 = alloca i64, align 8
  %.compoundliteral.i97 = alloca <4 x i64>, align 32
  %__a.addr.i = alloca i64, align 8
  %__b.addr.i = alloca i64, align 8
  %__c.addr.i = alloca i64, align 8
  %__d.addr.i = alloca i64, align 8
  %.compoundliteral.i = alloca <4 x i64>, align 32
  %retval = alloca i1, align 1
  %fp.addr = alloca ptr, align 8
  %crc_out.addr = alloca ptr, align 8
  %length_out.addr = alloca ptr, align 8
  %buf = alloca [2048 x <4 x i64>], align 32
  %crc = alloca i64, align 8
  %length = alloca i64, align 8
  %bytes_read = alloca i64, align 8
  %single_mult_constant = alloca <4 x i64>, align 32
  %four_mult_constant = alloca <4 x i64>, align 32
  %shuffle_constant = alloca <4 x i64>, align 32
  %data = alloca <4 x i64>, align 32
  %data2 = alloca <4 x i64>, align 32
  %data3 = alloca <4 x i64>, align 32
  %data4 = alloca <4 x i64>, align 32
  %data5 = alloca <4 x i64>, align 32
  %data6 = alloca <4 x i64>, align 32
  %data7 = alloca <4 x i64>, align 32
  %data8 = alloca <4 x i64>, align 32
  %fold_data = alloca <4 x i64>, align 32
  %xor_crc = alloca <4 x i64>, align 32
  %datap = alloca ptr, align 8
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
  store i64 1452736741, ptr %__a.addr.i93, align 8
  store i64 1975404215, ptr %__b.addr.i94, align 8
  store i64 1452736741, ptr %__c.addr.i95, align 8
  store i64 1975404215, ptr %__d.addr.i96, align 8
  %3 = load i64, ptr %__d.addr.i96, align 8
  %vecinit.i98 = insertelement <4 x i64> poison, i64 %3, i32 0
  %4 = load i64, ptr %__c.addr.i95, align 8
  %vecinit1.i99 = insertelement <4 x i64> %vecinit.i98, i64 %4, i32 1
  %5 = load i64, ptr %__b.addr.i94, align 8
  %vecinit2.i100 = insertelement <4 x i64> %vecinit1.i99, i64 %5, i32 2
  %6 = load i64, ptr %__a.addr.i93, align 8
  %vecinit3.i101 = insertelement <4 x i64> %vecinit2.i100, i64 %6, i32 3
  store <4 x i64> %vecinit3.i101, ptr %.compoundliteral.i97, align 32
  %7 = load <4 x i64>, ptr %.compoundliteral.i97, align 32
  store <4 x i64> %7, ptr %single_mult_constant, align 32
  store i64 280841596, ptr %__a.addr.i, align 8
  store i64 1451220459, ptr %__b.addr.i, align 8
  store i64 280841596, ptr %__c.addr.i, align 8
  store i64 1451220459, ptr %__d.addr.i, align 8
  %8 = load i64, ptr %__d.addr.i, align 8
  %vecinit.i = insertelement <4 x i64> poison, i64 %8, i32 0
  %9 = load i64, ptr %__c.addr.i, align 8
  %vecinit1.i = insertelement <4 x i64> %vecinit.i, i64 %9, i32 1
  %10 = load i64, ptr %__b.addr.i, align 8
  %vecinit2.i = insertelement <4 x i64> %vecinit1.i, i64 %10, i32 2
  %11 = load i64, ptr %__a.addr.i, align 8
  %vecinit3.i = insertelement <4 x i64> %vecinit2.i, i64 %11, i32 3
  store <4 x i64> %vecinit3.i, ptr %.compoundliteral.i, align 32
  %12 = load <4 x i64>, ptr %.compoundliteral.i, align 32
  store <4 x i64> %12, ptr %four_mult_constant, align 32
  store i8 0, ptr %__b31.addr.i, align 1
  store i8 1, ptr %__b30.addr.i, align 1
  store i8 2, ptr %__b29.addr.i, align 1
  store i8 3, ptr %__b28.addr.i, align 1
  store i8 4, ptr %__b27.addr.i, align 1
  store i8 5, ptr %__b26.addr.i, align 1
  store i8 6, ptr %__b25.addr.i, align 1
  store i8 7, ptr %__b24.addr.i, align 1
  store i8 8, ptr %__b23.addr.i, align 1
  store i8 9, ptr %__b22.addr.i, align 1
  store i8 10, ptr %__b21.addr.i, align 1
  store i8 11, ptr %__b20.addr.i, align 1
  store i8 12, ptr %__b19.addr.i, align 1
  store i8 13, ptr %__b18.addr.i, align 1
  store i8 14, ptr %__b17.addr.i, align 1
  store i8 15, ptr %__b16.addr.i, align 1
  store i8 0, ptr %__b15.addr.i, align 1
  store i8 1, ptr %__b14.addr.i, align 1
  store i8 2, ptr %__b13.addr.i, align 1
  store i8 3, ptr %__b12.addr.i, align 1
  store i8 4, ptr %__b11.addr.i, align 1
  store i8 5, ptr %__b10.addr.i, align 1
  store i8 6, ptr %__b09.addr.i, align 1
  store i8 7, ptr %__b08.addr.i, align 1
  store i8 8, ptr %__b07.addr.i, align 1
  store i8 9, ptr %__b06.addr.i, align 1
  store i8 10, ptr %__b05.addr.i, align 1
  store i8 11, ptr %__b04.addr.i, align 1
  store i8 12, ptr %__b03.addr.i, align 1
  store i8 13, ptr %__b02.addr.i, align 1
  store i8 14, ptr %__b01.addr.i, align 1
  store i8 15, ptr %__b00.addr.i, align 1
  %13 = load i8, ptr %__b00.addr.i, align 1
  %vecinit.i103 = insertelement <32 x i8> poison, i8 %13, i32 0
  %14 = load i8, ptr %__b01.addr.i, align 1
  %vecinit1.i104 = insertelement <32 x i8> %vecinit.i103, i8 %14, i32 1
  %15 = load i8, ptr %__b02.addr.i, align 1
  %vecinit2.i105 = insertelement <32 x i8> %vecinit1.i104, i8 %15, i32 2
  %16 = load i8, ptr %__b03.addr.i, align 1
  %vecinit3.i106 = insertelement <32 x i8> %vecinit2.i105, i8 %16, i32 3
  %17 = load i8, ptr %__b04.addr.i, align 1
  %vecinit4.i = insertelement <32 x i8> %vecinit3.i106, i8 %17, i32 4
  %18 = load i8, ptr %__b05.addr.i, align 1
  %vecinit5.i = insertelement <32 x i8> %vecinit4.i, i8 %18, i32 5
  %19 = load i8, ptr %__b06.addr.i, align 1
  %vecinit6.i = insertelement <32 x i8> %vecinit5.i, i8 %19, i32 6
  %20 = load i8, ptr %__b07.addr.i, align 1
  %vecinit7.i = insertelement <32 x i8> %vecinit6.i, i8 %20, i32 7
  %21 = load i8, ptr %__b08.addr.i, align 1
  %vecinit8.i = insertelement <32 x i8> %vecinit7.i, i8 %21, i32 8
  %22 = load i8, ptr %__b09.addr.i, align 1
  %vecinit9.i = insertelement <32 x i8> %vecinit8.i, i8 %22, i32 9
  %23 = load i8, ptr %__b10.addr.i, align 1
  %vecinit10.i = insertelement <32 x i8> %vecinit9.i, i8 %23, i32 10
  %24 = load i8, ptr %__b11.addr.i, align 1
  %vecinit11.i = insertelement <32 x i8> %vecinit10.i, i8 %24, i32 11
  %25 = load i8, ptr %__b12.addr.i, align 1
  %vecinit12.i = insertelement <32 x i8> %vecinit11.i, i8 %25, i32 12
  %26 = load i8, ptr %__b13.addr.i, align 1
  %vecinit13.i = insertelement <32 x i8> %vecinit12.i, i8 %26, i32 13
  %27 = load i8, ptr %__b14.addr.i, align 1
  %vecinit14.i = insertelement <32 x i8> %vecinit13.i, i8 %27, i32 14
  %28 = load i8, ptr %__b15.addr.i, align 1
  %vecinit15.i = insertelement <32 x i8> %vecinit14.i, i8 %28, i32 15
  %29 = load i8, ptr %__b16.addr.i, align 1
  %vecinit16.i = insertelement <32 x i8> %vecinit15.i, i8 %29, i32 16
  %30 = load i8, ptr %__b17.addr.i, align 1
  %vecinit17.i = insertelement <32 x i8> %vecinit16.i, i8 %30, i32 17
  %31 = load i8, ptr %__b18.addr.i, align 1
  %vecinit18.i = insertelement <32 x i8> %vecinit17.i, i8 %31, i32 18
  %32 = load i8, ptr %__b19.addr.i, align 1
  %vecinit19.i = insertelement <32 x i8> %vecinit18.i, i8 %32, i32 19
  %33 = load i8, ptr %__b20.addr.i, align 1
  %vecinit20.i = insertelement <32 x i8> %vecinit19.i, i8 %33, i32 20
  %34 = load i8, ptr %__b21.addr.i, align 1
  %vecinit21.i = insertelement <32 x i8> %vecinit20.i, i8 %34, i32 21
  %35 = load i8, ptr %__b22.addr.i, align 1
  %vecinit22.i = insertelement <32 x i8> %vecinit21.i, i8 %35, i32 22
  %36 = load i8, ptr %__b23.addr.i, align 1
  %vecinit23.i = insertelement <32 x i8> %vecinit22.i, i8 %36, i32 23
  %37 = load i8, ptr %__b24.addr.i, align 1
  %vecinit24.i = insertelement <32 x i8> %vecinit23.i, i8 %37, i32 24
  %38 = load i8, ptr %__b25.addr.i, align 1
  %vecinit25.i = insertelement <32 x i8> %vecinit24.i, i8 %38, i32 25
  %39 = load i8, ptr %__b26.addr.i, align 1
  %vecinit26.i = insertelement <32 x i8> %vecinit25.i, i8 %39, i32 26
  %40 = load i8, ptr %__b27.addr.i, align 1
  %vecinit27.i = insertelement <32 x i8> %vecinit26.i, i8 %40, i32 27
  %41 = load i8, ptr %__b28.addr.i, align 1
  %vecinit28.i = insertelement <32 x i8> %vecinit27.i, i8 %41, i32 28
  %42 = load i8, ptr %__b29.addr.i, align 1
  %vecinit29.i = insertelement <32 x i8> %vecinit28.i, i8 %42, i32 29
  %43 = load i8, ptr %__b30.addr.i, align 1
  %vecinit30.i = insertelement <32 x i8> %vecinit29.i, i8 %43, i32 30
  %44 = load i8, ptr %__b31.addr.i, align 1
  %vecinit31.i = insertelement <32 x i8> %vecinit30.i, i8 %44, i32 31
  store <32 x i8> %vecinit31.i, ptr %.compoundliteral.i102, align 32
  %45 = load <32 x i8>, ptr %.compoundliteral.i102, align 32
  %46 = bitcast <32 x i8> %45 to <4 x i64>
  store <4 x i64> %46, ptr %shuffle_constant, align 32
  br label %while.cond

while.cond:                                       ; preds = %if.end89, %if.end
  %arraydecay = getelementptr inbounds [2048 x <4 x i64>], ptr %buf, i64 0, i64 0
  %47 = load ptr, ptr %fp.addr, align 8
  %call6 = call i64 @fread_unlocked(ptr noundef %arraydecay, i64 noundef 1, i64 noundef 65536, ptr noundef %47)
  store i64 %call6, ptr %bytes_read, align 8
  %cmp = icmp ugt i64 %call6, 0
  br i1 %cmp, label %while.body, label %while.end90

while.body:                                       ; preds = %while.cond
  %48 = load i64, ptr %length, align 8
  %49 = load i64, ptr %bytes_read, align 8
  %add = add i64 %48, %49
  %50 = load i64, ptr %length, align 8
  %cmp7 = icmp ult i64 %add, %50
  br i1 %cmp7, label %if.then8, label %if.end10

if.then8:                                         ; preds = %while.body
  %call9 = call ptr @__errno_location() #5
  store i32 75, ptr %call9, align 4
  store i1 false, ptr %retval, align 1
  br label %return

if.end10:                                         ; preds = %while.body
  %51 = load i64, ptr %bytes_read, align 8
  %52 = load i64, ptr %length, align 8
  %add11 = add i64 %52, %51
  store i64 %add11, ptr %length, align 8
  %arraydecay12 = getelementptr inbounds [2048 x <4 x i64>], ptr %buf, i64 0, i64 0
  store ptr %arraydecay12, ptr %datap, align 8
  %53 = load i64, ptr %bytes_read, align 8
  %cmp13 = icmp uge i64 %53, 256
  br i1 %cmp13, label %if.then14, label %if.end58

if.then14:                                        ; preds = %if.end10
  %54 = load ptr, ptr %datap, align 8
  store ptr %54, ptr %__p.addr.i115, align 8
  %55 = load ptr, ptr %__p.addr.i115, align 8
  %56 = load <4 x i64>, ptr %55, align 1
  store <4 x i64> %56, ptr %data, align 32
  %57 = load <4 x i64>, ptr %data, align 32
  %58 = load <4 x i64>, ptr %shuffle_constant, align 32
  store <4 x i64> %57, ptr %__a.addr.i144, align 32
  store <4 x i64> %58, ptr %__b.addr.i145, align 32
  %59 = load <4 x i64>, ptr %__a.addr.i144, align 32
  %60 = bitcast <4 x i64> %59 to <32 x i8>
  %61 = load <4 x i64>, ptr %__b.addr.i145, align 32
  %62 = bitcast <4 x i64> %61 to <32 x i8>
  %63 = call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> %60, <32 x i8> %62)
  %64 = bitcast <32 x i8> %63 to <4 x i64>
  store <4 x i64> %64, ptr %data, align 32
  %65 = load i64, ptr %crc, align 8
  %conv = trunc i64 %65 to i32
  store i32 0, ptr %__i0.addr.i155, align 4
  store i32 0, ptr %__i1.addr.i156, align 4
  store i32 0, ptr %__i2.addr.i157, align 4
  store i32 0, ptr %__i3.addr.i158, align 4
  store i32 %conv, ptr %__i4.addr.i159, align 4
  store i32 0, ptr %__i5.addr.i160, align 4
  store i32 0, ptr %__i6.addr.i161, align 4
  store i32 0, ptr %__i7.addr.i162, align 4
  %66 = load i32, ptr %__i7.addr.i162, align 4
  %vecinit.i164 = insertelement <8 x i32> poison, i32 %66, i32 0
  %67 = load i32, ptr %__i6.addr.i161, align 4
  %vecinit1.i165 = insertelement <8 x i32> %vecinit.i164, i32 %67, i32 1
  %68 = load i32, ptr %__i5.addr.i160, align 4
  %vecinit2.i166 = insertelement <8 x i32> %vecinit1.i165, i32 %68, i32 2
  %69 = load i32, ptr %__i4.addr.i159, align 4
  %vecinit3.i167 = insertelement <8 x i32> %vecinit2.i166, i32 %69, i32 3
  %70 = load i32, ptr %__i3.addr.i158, align 4
  %vecinit4.i168 = insertelement <8 x i32> %vecinit3.i167, i32 %70, i32 4
  %71 = load i32, ptr %__i2.addr.i157, align 4
  %vecinit5.i169 = insertelement <8 x i32> %vecinit4.i168, i32 %71, i32 5
  %72 = load i32, ptr %__i1.addr.i156, align 4
  %vecinit6.i170 = insertelement <8 x i32> %vecinit5.i169, i32 %72, i32 6
  %73 = load i32, ptr %__i0.addr.i155, align 4
  %vecinit7.i171 = insertelement <8 x i32> %vecinit6.i170, i32 %73, i32 7
  store <8 x i32> %vecinit7.i171, ptr %.compoundliteral.i163, align 32
  %74 = load <8 x i32>, ptr %.compoundliteral.i163, align 32
  %75 = bitcast <8 x i32> %74 to <4 x i64>
  store <4 x i64> %75, ptr %xor_crc, align 32
  store i64 0, ptr %crc, align 8
  %76 = load <4 x i64>, ptr %data, align 32
  %77 = load <4 x i64>, ptr %xor_crc, align 32
  store <4 x i64> %76, ptr %__a.addr.i204, align 32
  store <4 x i64> %77, ptr %__b.addr.i205, align 32
  %78 = load <4 x i64>, ptr %__a.addr.i204, align 32
  %79 = load <4 x i64>, ptr %__b.addr.i205, align 32
  %xor.i206 = xor <4 x i64> %78, %79
  store <4 x i64> %xor.i206, ptr %data, align 32
  %80 = load ptr, ptr %datap, align 8
  %add.ptr = getelementptr inbounds <4 x i64>, ptr %80, i64 1
  store ptr %add.ptr, ptr %__p.addr.i114, align 8
  %81 = load ptr, ptr %__p.addr.i114, align 8
  %82 = load <4 x i64>, ptr %81, align 1
  store <4 x i64> %82, ptr %data3, align 32
  %83 = load <4 x i64>, ptr %data3, align 32
  %84 = load <4 x i64>, ptr %shuffle_constant, align 32
  store <4 x i64> %83, ptr %__a.addr.i142, align 32
  store <4 x i64> %84, ptr %__b.addr.i143, align 32
  %85 = load <4 x i64>, ptr %__a.addr.i142, align 32
  %86 = bitcast <4 x i64> %85 to <32 x i8>
  %87 = load <4 x i64>, ptr %__b.addr.i143, align 32
  %88 = bitcast <4 x i64> %87 to <32 x i8>
  %89 = call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> %86, <32 x i8> %88)
  %90 = bitcast <32 x i8> %89 to <4 x i64>
  store <4 x i64> %90, ptr %data3, align 32
  %91 = load ptr, ptr %datap, align 8
  %add.ptr21 = getelementptr inbounds <4 x i64>, ptr %91, i64 2
  store ptr %add.ptr21, ptr %__p.addr.i113, align 8
  %92 = load ptr, ptr %__p.addr.i113, align 8
  %93 = load <4 x i64>, ptr %92, align 1
  store <4 x i64> %93, ptr %data5, align 32
  %94 = load <4 x i64>, ptr %data5, align 32
  %95 = load <4 x i64>, ptr %shuffle_constant, align 32
  store <4 x i64> %94, ptr %__a.addr.i140, align 32
  store <4 x i64> %95, ptr %__b.addr.i141, align 32
  %96 = load <4 x i64>, ptr %__a.addr.i140, align 32
  %97 = bitcast <4 x i64> %96 to <32 x i8>
  %98 = load <4 x i64>, ptr %__b.addr.i141, align 32
  %99 = bitcast <4 x i64> %98 to <32 x i8>
  %100 = call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> %97, <32 x i8> %99)
  %101 = bitcast <32 x i8> %100 to <4 x i64>
  store <4 x i64> %101, ptr %data5, align 32
  %102 = load ptr, ptr %datap, align 8
  %add.ptr24 = getelementptr inbounds <4 x i64>, ptr %102, i64 3
  store ptr %add.ptr24, ptr %__p.addr.i112, align 8
  %103 = load ptr, ptr %__p.addr.i112, align 8
  %104 = load <4 x i64>, ptr %103, align 1
  store <4 x i64> %104, ptr %data7, align 32
  %105 = load <4 x i64>, ptr %data7, align 32
  %106 = load <4 x i64>, ptr %shuffle_constant, align 32
  store <4 x i64> %105, ptr %__a.addr.i138, align 32
  store <4 x i64> %106, ptr %__b.addr.i139, align 32
  %107 = load <4 x i64>, ptr %__a.addr.i138, align 32
  %108 = bitcast <4 x i64> %107 to <32 x i8>
  %109 = load <4 x i64>, ptr %__b.addr.i139, align 32
  %110 = bitcast <4 x i64> %109 to <32 x i8>
  %111 = call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> %108, <32 x i8> %110)
  %112 = bitcast <32 x i8> %111 to <4 x i64>
  store <4 x i64> %112, ptr %data7, align 32
  br label %while.cond27

while.cond27:                                     ; preds = %while.body30, %if.then14
  %113 = load i64, ptr %bytes_read, align 8
  %cmp28 = icmp uge i64 %113, 256
  br i1 %cmp28, label %while.body30, label %while.end

while.body30:                                     ; preds = %while.cond27
  %114 = load ptr, ptr %datap, align 8
  %add.ptr31 = getelementptr inbounds <4 x i64>, ptr %114, i64 4
  store ptr %add.ptr31, ptr %datap, align 8
  %115 = load <4 x i64>, ptr %data, align 32
  %116 = load <4 x i64>, ptr %four_mult_constant, align 32
  %117 = call <4 x i64> @llvm.x86.pclmulqdq.256(<4 x i64> %115, <4 x i64> %116, i8 0)
  store <4 x i64> %117, ptr %data2, align 32
  %118 = load <4 x i64>, ptr %data, align 32
  %119 = load <4 x i64>, ptr %four_mult_constant, align 32
  %120 = call <4 x i64> @llvm.x86.pclmulqdq.256(<4 x i64> %118, <4 x i64> %119, i8 17)
  store <4 x i64> %120, ptr %data, align 32
  %121 = load <4 x i64>, ptr %data3, align 32
  %122 = load <4 x i64>, ptr %four_mult_constant, align 32
  %123 = call <4 x i64> @llvm.x86.pclmulqdq.256(<4 x i64> %121, <4 x i64> %122, i8 0)
  store <4 x i64> %123, ptr %data4, align 32
  %124 = load <4 x i64>, ptr %data3, align 32
  %125 = load <4 x i64>, ptr %four_mult_constant, align 32
  %126 = call <4 x i64> @llvm.x86.pclmulqdq.256(<4 x i64> %124, <4 x i64> %125, i8 17)
  store <4 x i64> %126, ptr %data3, align 32
  %127 = load <4 x i64>, ptr %data5, align 32
  %128 = load <4 x i64>, ptr %four_mult_constant, align 32
  %129 = call <4 x i64> @llvm.x86.pclmulqdq.256(<4 x i64> %127, <4 x i64> %128, i8 0)
  store <4 x i64> %129, ptr %data6, align 32
  %130 = load <4 x i64>, ptr %data5, align 32
  %131 = load <4 x i64>, ptr %four_mult_constant, align 32
  %132 = call <4 x i64> @llvm.x86.pclmulqdq.256(<4 x i64> %130, <4 x i64> %131, i8 17)
  store <4 x i64> %132, ptr %data5, align 32
  %133 = load <4 x i64>, ptr %data7, align 32
  %134 = load <4 x i64>, ptr %four_mult_constant, align 32
  %135 = call <4 x i64> @llvm.x86.pclmulqdq.256(<4 x i64> %133, <4 x i64> %134, i8 0)
  store <4 x i64> %135, ptr %data8, align 32
  %136 = load <4 x i64>, ptr %data7, align 32
  %137 = load <4 x i64>, ptr %four_mult_constant, align 32
  %138 = call <4 x i64> @llvm.x86.pclmulqdq.256(<4 x i64> %136, <4 x i64> %137, i8 17)
  store <4 x i64> %138, ptr %data7, align 32
  %139 = load <4 x i64>, ptr %data, align 32
  %140 = load <4 x i64>, ptr %data2, align 32
  store <4 x i64> %139, ptr %__a.addr.i201, align 32
  store <4 x i64> %140, ptr %__b.addr.i202, align 32
  %141 = load <4 x i64>, ptr %__a.addr.i201, align 32
  %142 = load <4 x i64>, ptr %__b.addr.i202, align 32
  %xor.i203 = xor <4 x i64> %141, %142
  store <4 x i64> %xor.i203, ptr %data, align 32
  %143 = load ptr, ptr %datap, align 8
  store ptr %143, ptr %__p.addr.i111, align 8
  %144 = load ptr, ptr %__p.addr.i111, align 8
  %145 = load <4 x i64>, ptr %144, align 1
  store <4 x i64> %145, ptr %data2, align 32
  %146 = load <4 x i64>, ptr %data2, align 32
  %147 = load <4 x i64>, ptr %shuffle_constant, align 32
  store <4 x i64> %146, ptr %__a.addr.i136, align 32
  store <4 x i64> %147, ptr %__b.addr.i137, align 32
  %148 = load <4 x i64>, ptr %__a.addr.i136, align 32
  %149 = bitcast <4 x i64> %148 to <32 x i8>
  %150 = load <4 x i64>, ptr %__b.addr.i137, align 32
  %151 = bitcast <4 x i64> %150 to <32 x i8>
  %152 = call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> %149, <32 x i8> %151)
  %153 = bitcast <32 x i8> %152 to <4 x i64>
  store <4 x i64> %153, ptr %data2, align 32
  %154 = load <4 x i64>, ptr %data, align 32
  %155 = load <4 x i64>, ptr %data2, align 32
  store <4 x i64> %154, ptr %__a.addr.i198, align 32
  store <4 x i64> %155, ptr %__b.addr.i199, align 32
  %156 = load <4 x i64>, ptr %__a.addr.i198, align 32
  %157 = load <4 x i64>, ptr %__b.addr.i199, align 32
  %xor.i200 = xor <4 x i64> %156, %157
  store <4 x i64> %xor.i200, ptr %data, align 32
  %158 = load <4 x i64>, ptr %data3, align 32
  %159 = load <4 x i64>, ptr %data4, align 32
  store <4 x i64> %158, ptr %__a.addr.i195, align 32
  store <4 x i64> %159, ptr %__b.addr.i196, align 32
  %160 = load <4 x i64>, ptr %__a.addr.i195, align 32
  %161 = load <4 x i64>, ptr %__b.addr.i196, align 32
  %xor.i197 = xor <4 x i64> %160, %161
  store <4 x i64> %xor.i197, ptr %data3, align 32
  %162 = load ptr, ptr %datap, align 8
  %add.ptr37 = getelementptr inbounds <4 x i64>, ptr %162, i64 1
  store ptr %add.ptr37, ptr %__p.addr.i110, align 8
  %163 = load ptr, ptr %__p.addr.i110, align 8
  %164 = load <4 x i64>, ptr %163, align 1
  store <4 x i64> %164, ptr %data4, align 32
  %165 = load <4 x i64>, ptr %data4, align 32
  %166 = load <4 x i64>, ptr %shuffle_constant, align 32
  store <4 x i64> %165, ptr %__a.addr.i134, align 32
  store <4 x i64> %166, ptr %__b.addr.i135, align 32
  %167 = load <4 x i64>, ptr %__a.addr.i134, align 32
  %168 = bitcast <4 x i64> %167 to <32 x i8>
  %169 = load <4 x i64>, ptr %__b.addr.i135, align 32
  %170 = bitcast <4 x i64> %169 to <32 x i8>
  %171 = call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> %168, <32 x i8> %170)
  %172 = bitcast <32 x i8> %171 to <4 x i64>
  store <4 x i64> %172, ptr %data4, align 32
  %173 = load <4 x i64>, ptr %data3, align 32
  %174 = load <4 x i64>, ptr %data4, align 32
  store <4 x i64> %173, ptr %__a.addr.i192, align 32
  store <4 x i64> %174, ptr %__b.addr.i193, align 32
  %175 = load <4 x i64>, ptr %__a.addr.i192, align 32
  %176 = load <4 x i64>, ptr %__b.addr.i193, align 32
  %xor.i194 = xor <4 x i64> %175, %176
  store <4 x i64> %xor.i194, ptr %data3, align 32
  %177 = load <4 x i64>, ptr %data5, align 32
  %178 = load <4 x i64>, ptr %data6, align 32
  store <4 x i64> %177, ptr %__a.addr.i189, align 32
  store <4 x i64> %178, ptr %__b.addr.i190, align 32
  %179 = load <4 x i64>, ptr %__a.addr.i189, align 32
  %180 = load <4 x i64>, ptr %__b.addr.i190, align 32
  %xor.i191 = xor <4 x i64> %179, %180
  store <4 x i64> %xor.i191, ptr %data5, align 32
  %181 = load ptr, ptr %datap, align 8
  %add.ptr42 = getelementptr inbounds <4 x i64>, ptr %181, i64 2
  store ptr %add.ptr42, ptr %__p.addr.i109, align 8
  %182 = load ptr, ptr %__p.addr.i109, align 8
  %183 = load <4 x i64>, ptr %182, align 1
  store <4 x i64> %183, ptr %data6, align 32
  %184 = load <4 x i64>, ptr %data6, align 32
  %185 = load <4 x i64>, ptr %shuffle_constant, align 32
  store <4 x i64> %184, ptr %__a.addr.i132, align 32
  store <4 x i64> %185, ptr %__b.addr.i133, align 32
  %186 = load <4 x i64>, ptr %__a.addr.i132, align 32
  %187 = bitcast <4 x i64> %186 to <32 x i8>
  %188 = load <4 x i64>, ptr %__b.addr.i133, align 32
  %189 = bitcast <4 x i64> %188 to <32 x i8>
  %190 = call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> %187, <32 x i8> %189)
  %191 = bitcast <32 x i8> %190 to <4 x i64>
  store <4 x i64> %191, ptr %data6, align 32
  %192 = load <4 x i64>, ptr %data5, align 32
  %193 = load <4 x i64>, ptr %data6, align 32
  store <4 x i64> %192, ptr %__a.addr.i186, align 32
  store <4 x i64> %193, ptr %__b.addr.i187, align 32
  %194 = load <4 x i64>, ptr %__a.addr.i186, align 32
  %195 = load <4 x i64>, ptr %__b.addr.i187, align 32
  %xor.i188 = xor <4 x i64> %194, %195
  store <4 x i64> %xor.i188, ptr %data5, align 32
  %196 = load <4 x i64>, ptr %data7, align 32
  %197 = load <4 x i64>, ptr %data8, align 32
  store <4 x i64> %196, ptr %__a.addr.i183, align 32
  store <4 x i64> %197, ptr %__b.addr.i184, align 32
  %198 = load <4 x i64>, ptr %__a.addr.i183, align 32
  %199 = load <4 x i64>, ptr %__b.addr.i184, align 32
  %xor.i185 = xor <4 x i64> %198, %199
  store <4 x i64> %xor.i185, ptr %data7, align 32
  %200 = load ptr, ptr %datap, align 8
  %add.ptr47 = getelementptr inbounds <4 x i64>, ptr %200, i64 3
  store ptr %add.ptr47, ptr %__p.addr.i108, align 8
  %201 = load ptr, ptr %__p.addr.i108, align 8
  %202 = load <4 x i64>, ptr %201, align 1
  store <4 x i64> %202, ptr %data8, align 32
  %203 = load <4 x i64>, ptr %data8, align 32
  %204 = load <4 x i64>, ptr %shuffle_constant, align 32
  store <4 x i64> %203, ptr %__a.addr.i130, align 32
  store <4 x i64> %204, ptr %__b.addr.i131, align 32
  %205 = load <4 x i64>, ptr %__a.addr.i130, align 32
  %206 = bitcast <4 x i64> %205 to <32 x i8>
  %207 = load <4 x i64>, ptr %__b.addr.i131, align 32
  %208 = bitcast <4 x i64> %207 to <32 x i8>
  %209 = call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> %206, <32 x i8> %208)
  %210 = bitcast <32 x i8> %209 to <4 x i64>
  store <4 x i64> %210, ptr %data8, align 32
  %211 = load <4 x i64>, ptr %data7, align 32
  %212 = load <4 x i64>, ptr %data8, align 32
  store <4 x i64> %211, ptr %__a.addr.i180, align 32
  store <4 x i64> %212, ptr %__b.addr.i181, align 32
  %213 = load <4 x i64>, ptr %__a.addr.i180, align 32
  %214 = load <4 x i64>, ptr %__b.addr.i181, align 32
  %xor.i182 = xor <4 x i64> %213, %214
  store <4 x i64> %xor.i182, ptr %data7, align 32
  %215 = load i64, ptr %bytes_read, align 8
  %sub = sub i64 %215, 128
  store i64 %sub, ptr %bytes_read, align 8
  br label %while.cond27, !llvm.loop !6

while.end:                                        ; preds = %while.cond27
  %216 = load <4 x i64>, ptr %data, align 32
  %217 = load <4 x i64>, ptr %shuffle_constant, align 32
  store <4 x i64> %216, ptr %__a.addr.i128, align 32
  store <4 x i64> %217, ptr %__b.addr.i129, align 32
  %218 = load <4 x i64>, ptr %__a.addr.i128, align 32
  %219 = bitcast <4 x i64> %218 to <32 x i8>
  %220 = load <4 x i64>, ptr %__b.addr.i129, align 32
  %221 = bitcast <4 x i64> %220 to <32 x i8>
  %222 = call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> %219, <32 x i8> %221)
  %223 = bitcast <32 x i8> %222 to <4 x i64>
  store <4 x i64> %223, ptr %data, align 32
  %224 = load ptr, ptr %datap, align 8
  %225 = load <4 x i64>, ptr %data, align 32
  store ptr %224, ptr %__p.addr.i215, align 8
  store <4 x i64> %225, ptr %__a.addr.i216, align 32
  %226 = load <4 x i64>, ptr %__a.addr.i216, align 32
  %227 = load ptr, ptr %__p.addr.i215, align 8
  store <4 x i64> %226, ptr %227, align 1
  %228 = load <4 x i64>, ptr %data3, align 32
  %229 = load <4 x i64>, ptr %shuffle_constant, align 32
  store <4 x i64> %228, ptr %__a.addr.i126, align 32
  store <4 x i64> %229, ptr %__b.addr.i127, align 32
  %230 = load <4 x i64>, ptr %__a.addr.i126, align 32
  %231 = bitcast <4 x i64> %230 to <32 x i8>
  %232 = load <4 x i64>, ptr %__b.addr.i127, align 32
  %233 = bitcast <4 x i64> %232 to <32 x i8>
  %234 = call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> %231, <32 x i8> %233)
  %235 = bitcast <32 x i8> %234 to <4 x i64>
  store <4 x i64> %235, ptr %data3, align 32
  %236 = load ptr, ptr %datap, align 8
  %add.ptr53 = getelementptr inbounds <4 x i64>, ptr %236, i64 1
  %237 = load <4 x i64>, ptr %data3, align 32
  store ptr %add.ptr53, ptr %__p.addr.i213, align 8
  store <4 x i64> %237, ptr %__a.addr.i214, align 32
  %238 = load <4 x i64>, ptr %__a.addr.i214, align 32
  %239 = load ptr, ptr %__p.addr.i213, align 8
  store <4 x i64> %238, ptr %239, align 1
  %240 = load <4 x i64>, ptr %data5, align 32
  %241 = load <4 x i64>, ptr %shuffle_constant, align 32
  store <4 x i64> %240, ptr %__a.addr.i124, align 32
  store <4 x i64> %241, ptr %__b.addr.i125, align 32
  %242 = load <4 x i64>, ptr %__a.addr.i124, align 32
  %243 = bitcast <4 x i64> %242 to <32 x i8>
  %244 = load <4 x i64>, ptr %__b.addr.i125, align 32
  %245 = bitcast <4 x i64> %244 to <32 x i8>
  %246 = call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> %243, <32 x i8> %245)
  %247 = bitcast <32 x i8> %246 to <4 x i64>
  store <4 x i64> %247, ptr %data5, align 32
  %248 = load ptr, ptr %datap, align 8
  %add.ptr55 = getelementptr inbounds <4 x i64>, ptr %248, i64 2
  %249 = load <4 x i64>, ptr %data5, align 32
  store ptr %add.ptr55, ptr %__p.addr.i211, align 8
  store <4 x i64> %249, ptr %__a.addr.i212, align 32
  %250 = load <4 x i64>, ptr %__a.addr.i212, align 32
  %251 = load ptr, ptr %__p.addr.i211, align 8
  store <4 x i64> %250, ptr %251, align 1
  %252 = load <4 x i64>, ptr %data7, align 32
  %253 = load <4 x i64>, ptr %shuffle_constant, align 32
  store <4 x i64> %252, ptr %__a.addr.i122, align 32
  store <4 x i64> %253, ptr %__b.addr.i123, align 32
  %254 = load <4 x i64>, ptr %__a.addr.i122, align 32
  %255 = bitcast <4 x i64> %254 to <32 x i8>
  %256 = load <4 x i64>, ptr %__b.addr.i123, align 32
  %257 = bitcast <4 x i64> %256 to <32 x i8>
  %258 = call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> %255, <32 x i8> %257)
  %259 = bitcast <32 x i8> %258 to <4 x i64>
  store <4 x i64> %259, ptr %data7, align 32
  %260 = load ptr, ptr %datap, align 8
  %add.ptr57 = getelementptr inbounds <4 x i64>, ptr %260, i64 3
  %261 = load <4 x i64>, ptr %data7, align 32
  store ptr %add.ptr57, ptr %__p.addr.i209, align 8
  store <4 x i64> %261, ptr %__a.addr.i210, align 32
  %262 = load <4 x i64>, ptr %__a.addr.i210, align 32
  %263 = load ptr, ptr %__p.addr.i209, align 8
  store <4 x i64> %262, ptr %263, align 1
  br label %if.end58

if.end58:                                         ; preds = %while.end, %if.end10
  %264 = load i64, ptr %bytes_read, align 8
  %cmp59 = icmp uge i64 %264, 64
  br i1 %cmp59, label %if.then61, label %if.end78

if.then61:                                        ; preds = %if.end58
  %265 = load ptr, ptr %datap, align 8
  store ptr %265, ptr %__p.addr.i107, align 8
  %266 = load ptr, ptr %__p.addr.i107, align 8
  %267 = load <4 x i64>, ptr %266, align 1
  store <4 x i64> %267, ptr %data, align 32
  %268 = load <4 x i64>, ptr %data, align 32
  %269 = load <4 x i64>, ptr %shuffle_constant, align 32
  store <4 x i64> %268, ptr %__a.addr.i120, align 32
  store <4 x i64> %269, ptr %__b.addr.i121, align 32
  %270 = load <4 x i64>, ptr %__a.addr.i120, align 32
  %271 = bitcast <4 x i64> %270 to <32 x i8>
  %272 = load <4 x i64>, ptr %__b.addr.i121, align 32
  %273 = bitcast <4 x i64> %272 to <32 x i8>
  %274 = call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> %271, <32 x i8> %273)
  %275 = bitcast <32 x i8> %274 to <4 x i64>
  store <4 x i64> %275, ptr %data, align 32
  %276 = load i64, ptr %crc, align 8
  %conv64 = trunc i64 %276 to i32
  store i32 0, ptr %__i0.addr.i, align 4
  store i32 0, ptr %__i1.addr.i, align 4
  store i32 0, ptr %__i2.addr.i, align 4
  store i32 0, ptr %__i3.addr.i, align 4
  store i32 %conv64, ptr %__i4.addr.i, align 4
  store i32 0, ptr %__i5.addr.i, align 4
  store i32 0, ptr %__i6.addr.i, align 4
  store i32 0, ptr %__i7.addr.i, align 4
  %277 = load i32, ptr %__i7.addr.i, align 4
  %vecinit.i147 = insertelement <8 x i32> poison, i32 %277, i32 0
  %278 = load i32, ptr %__i6.addr.i, align 4
  %vecinit1.i148 = insertelement <8 x i32> %vecinit.i147, i32 %278, i32 1
  %279 = load i32, ptr %__i5.addr.i, align 4
  %vecinit2.i149 = insertelement <8 x i32> %vecinit1.i148, i32 %279, i32 2
  %280 = load i32, ptr %__i4.addr.i, align 4
  %vecinit3.i150 = insertelement <8 x i32> %vecinit2.i149, i32 %280, i32 3
  %281 = load i32, ptr %__i3.addr.i, align 4
  %vecinit4.i151 = insertelement <8 x i32> %vecinit3.i150, i32 %281, i32 4
  %282 = load i32, ptr %__i2.addr.i, align 4
  %vecinit5.i152 = insertelement <8 x i32> %vecinit4.i151, i32 %282, i32 5
  %283 = load i32, ptr %__i1.addr.i, align 4
  %vecinit6.i153 = insertelement <8 x i32> %vecinit5.i152, i32 %283, i32 6
  %284 = load i32, ptr %__i0.addr.i, align 4
  %vecinit7.i154 = insertelement <8 x i32> %vecinit6.i153, i32 %284, i32 7
  store <8 x i32> %vecinit7.i154, ptr %.compoundliteral.i146, align 32
  %285 = load <8 x i32>, ptr %.compoundliteral.i146, align 32
  %286 = bitcast <8 x i32> %285 to <4 x i64>
  store <4 x i64> %286, ptr %xor_crc, align 32
  store i64 0, ptr %crc, align 8
  %287 = load <4 x i64>, ptr %data, align 32
  %288 = load <4 x i64>, ptr %xor_crc, align 32
  store <4 x i64> %287, ptr %__a.addr.i177, align 32
  store <4 x i64> %288, ptr %__b.addr.i178, align 32
  %289 = load <4 x i64>, ptr %__a.addr.i177, align 32
  %290 = load <4 x i64>, ptr %__b.addr.i178, align 32
  %xor.i179 = xor <4 x i64> %289, %290
  store <4 x i64> %xor.i179, ptr %data, align 32
  br label %while.cond67

while.cond67:                                     ; preds = %while.body70, %if.then61
  %291 = load i64, ptr %bytes_read, align 8
  %cmp68 = icmp uge i64 %291, 64
  br i1 %cmp68, label %while.body70, label %while.end76

while.body70:                                     ; preds = %while.cond67
  %292 = load ptr, ptr %datap, align 8
  %incdec.ptr = getelementptr inbounds <4 x i64>, ptr %292, i32 1
  store ptr %incdec.ptr, ptr %datap, align 8
  %293 = load <4 x i64>, ptr %data, align 32
  %294 = load <4 x i64>, ptr %single_mult_constant, align 32
  %295 = call <4 x i64> @llvm.x86.pclmulqdq.256(<4 x i64> %293, <4 x i64> %294, i8 0)
  store <4 x i64> %295, ptr %data2, align 32
  %296 = load <4 x i64>, ptr %data, align 32
  %297 = load <4 x i64>, ptr %single_mult_constant, align 32
  %298 = call <4 x i64> @llvm.x86.pclmulqdq.256(<4 x i64> %296, <4 x i64> %297, i8 17)
  store <4 x i64> %298, ptr %data, align 32
  %299 = load ptr, ptr %datap, align 8
  store ptr %299, ptr %__p.addr.i, align 8
  %300 = load ptr, ptr %__p.addr.i, align 8
  %301 = load <4 x i64>, ptr %300, align 1
  store <4 x i64> %301, ptr %fold_data, align 32
  %302 = load <4 x i64>, ptr %fold_data, align 32
  %303 = load <4 x i64>, ptr %shuffle_constant, align 32
  store <4 x i64> %302, ptr %__a.addr.i118, align 32
  store <4 x i64> %303, ptr %__b.addr.i119, align 32
  %304 = load <4 x i64>, ptr %__a.addr.i118, align 32
  %305 = bitcast <4 x i64> %304 to <32 x i8>
  %306 = load <4 x i64>, ptr %__b.addr.i119, align 32
  %307 = bitcast <4 x i64> %306 to <32 x i8>
  %308 = call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> %305, <32 x i8> %307)
  %309 = bitcast <32 x i8> %308 to <4 x i64>
  store <4 x i64> %309, ptr %fold_data, align 32
  %310 = load <4 x i64>, ptr %data, align 32
  %311 = load <4 x i64>, ptr %data2, align 32
  store <4 x i64> %310, ptr %__a.addr.i174, align 32
  store <4 x i64> %311, ptr %__b.addr.i175, align 32
  %312 = load <4 x i64>, ptr %__a.addr.i174, align 32
  %313 = load <4 x i64>, ptr %__b.addr.i175, align 32
  %xor.i176 = xor <4 x i64> %312, %313
  store <4 x i64> %xor.i176, ptr %data, align 32
  %314 = load <4 x i64>, ptr %data, align 32
  %315 = load <4 x i64>, ptr %fold_data, align 32
  store <4 x i64> %314, ptr %__a.addr.i172, align 32
  store <4 x i64> %315, ptr %__b.addr.i173, align 32
  %316 = load <4 x i64>, ptr %__a.addr.i172, align 32
  %317 = load <4 x i64>, ptr %__b.addr.i173, align 32
  %xor.i = xor <4 x i64> %316, %317
  store <4 x i64> %xor.i, ptr %data, align 32
  %318 = load i64, ptr %bytes_read, align 8
  %sub75 = sub i64 %318, 32
  store i64 %sub75, ptr %bytes_read, align 8
  br label %while.cond67, !llvm.loop !8

while.end76:                                      ; preds = %while.cond67
  %319 = load <4 x i64>, ptr %data, align 32
  %320 = load <4 x i64>, ptr %shuffle_constant, align 32
  store <4 x i64> %319, ptr %__a.addr.i116, align 32
  store <4 x i64> %320, ptr %__b.addr.i117, align 32
  %321 = load <4 x i64>, ptr %__a.addr.i116, align 32
  %322 = bitcast <4 x i64> %321 to <32 x i8>
  %323 = load <4 x i64>, ptr %__b.addr.i117, align 32
  %324 = bitcast <4 x i64> %323 to <32 x i8>
  %325 = call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> %322, <32 x i8> %324)
  %326 = bitcast <32 x i8> %325 to <4 x i64>
  store <4 x i64> %326, ptr %data, align 32
  %327 = load ptr, ptr %datap, align 8
  %328 = load <4 x i64>, ptr %data, align 32
  store ptr %327, ptr %__p.addr.i207, align 8
  store <4 x i64> %328, ptr %__a.addr.i208, align 32
  %329 = load <4 x i64>, ptr %__a.addr.i208, align 32
  %330 = load ptr, ptr %__p.addr.i207, align 8
  store <4 x i64> %329, ptr %330, align 1
  br label %if.end78

if.end78:                                         ; preds = %while.end76, %if.end58
  %331 = load ptr, ptr %datap, align 8
  store ptr %331, ptr %cp, align 8
  br label %while.cond79

while.cond79:                                     ; preds = %while.body81, %if.end78
  %332 = load i64, ptr %bytes_read, align 8
  %dec = add i64 %332, -1
  store i64 %dec, ptr %bytes_read, align 8
  %tobool80 = icmp ne i64 %332, 0
  br i1 %tobool80, label %while.body81, label %while.end85

while.body81:                                     ; preds = %while.cond79
  %333 = load i64, ptr %crc, align 8
  %shl = shl i64 %333, 8
  %334 = load i64, ptr %crc, align 8
  %shr = lshr i64 %334, 24
  %335 = load ptr, ptr %cp, align 8
  %incdec.ptr82 = getelementptr inbounds i8, ptr %335, i32 1
  store ptr %incdec.ptr82, ptr %cp, align 8
  %336 = load i8, ptr %335, align 1
  %conv83 = zext i8 %336 to i64
  %xor = xor i64 %shr, %conv83
  %and = and i64 %xor, 255
  %arrayidx = getelementptr inbounds [256 x i64], ptr @crctab, i64 0, i64 %and
  %337 = load i64, ptr %arrayidx, align 8
  %xor84 = xor i64 %shl, %337
  store i64 %xor84, ptr %crc, align 8
  br label %while.cond79, !llvm.loop !9

while.end85:                                      ; preds = %while.cond79
  %338 = load ptr, ptr %fp.addr, align 8
  %call86 = call i32 @feof_unlocked(ptr noundef %338) #6
  %tobool87 = icmp ne i32 %call86, 0
  br i1 %tobool87, label %if.then88, label %if.end89

if.then88:                                        ; preds = %while.end85
  br label %while.end90

if.end89:                                         ; preds = %while.end85
  br label %while.cond, !llvm.loop !10

while.end90:                                      ; preds = %if.then88, %while.cond
  %339 = load i64, ptr %crc, align 8
  %340 = load ptr, ptr %crc_out.addr, align 8
  store i64 %339, ptr %340, align 8
  %341 = load i64, ptr %length, align 8
  %342 = load ptr, ptr %length_out.addr, align 8
  store i64 %341, ptr %342, align 8
  %343 = load ptr, ptr %fp.addr, align 8
  %call91 = call i32 @ferror_unlocked(ptr noundef %343) #6
  %tobool92 = icmp ne i32 %call91, 0
  %lnot = xor i1 %tobool92, true
  store i1 %lnot, ptr %retval, align 1
  br label %return

return:                                           ; preds = %while.end90, %if.then8, %if.then
  %344 = load i1, ptr %retval, align 1
  ret i1 %344
}

declare i64 @fread_unlocked(ptr noundef, i64 noundef, i64 noundef, ptr noundef) #1

; Function Attrs: nounwind willreturn memory(none)
declare ptr @__errno_location() #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8>, <32 x i8>) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x i64> @llvm.x86.pclmulqdq.256(<4 x i64>, <4 x i64>, i8 immarg) #3

; Function Attrs: nounwind
declare i32 @feof_unlocked(ptr noundef) #4

; Function Attrs: nounwind
declare i32 @ferror_unlocked(ptr noundef) #4

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="256" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+cmov,+crc32,+cx8,+fxsr,+mmx,+pclmul,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vpclmulqdq,+x87,+xsave" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+cmov,+crc32,+cx8,+fxsr,+mmx,+pclmul,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vpclmulqdq,+x87,+xsave" "tune-cpu"="generic" }
attributes #2 = { nounwind willreturn memory(none) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+cmov,+crc32,+cx8,+fxsr,+mmx,+pclmul,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vpclmulqdq,+x87,+xsave" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #4 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+cmov,+crc32,+cx8,+fxsr,+mmx,+pclmul,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vpclmulqdq,+x87,+xsave" "tune-cpu"="generic" }
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
