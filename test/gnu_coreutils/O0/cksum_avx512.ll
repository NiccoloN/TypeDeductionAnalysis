; ModuleID = 'llvm-link'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@crctab = external constant [8 x [256 x i64]], align 16

; Function Attrs: noinline nounwind optnone uwtable
define dso_local zeroext i1 @cksum_avx512(ptr noundef %fp, ptr noundef %crc_out, ptr noundef %length_out) #0 {
entry:
  %__P.addr.i258 = alloca ptr, align 8
  %__A.addr.i259 = alloca <8 x i64>, align 64
  %__P.addr.i256 = alloca ptr, align 8
  %__A.addr.i257 = alloca <8 x i64>, align 64
  %__P.addr.i254 = alloca ptr, align 8
  %__A.addr.i255 = alloca <8 x i64>, align 64
  %__P.addr.i252 = alloca ptr, align 8
  %__A.addr.i253 = alloca <8 x i64>, align 64
  %__P.addr.i250 = alloca ptr, align 8
  %__A.addr.i251 = alloca <8 x i64>, align 64
  %__a.addr.i247 = alloca <8 x i64>, align 64
  %__b.addr.i248 = alloca <8 x i64>, align 64
  %__a.addr.i244 = alloca <8 x i64>, align 64
  %__b.addr.i245 = alloca <8 x i64>, align 64
  %__a.addr.i241 = alloca <8 x i64>, align 64
  %__b.addr.i242 = alloca <8 x i64>, align 64
  %__a.addr.i238 = alloca <8 x i64>, align 64
  %__b.addr.i239 = alloca <8 x i64>, align 64
  %__a.addr.i235 = alloca <8 x i64>, align 64
  %__b.addr.i236 = alloca <8 x i64>, align 64
  %__a.addr.i232 = alloca <8 x i64>, align 64
  %__b.addr.i233 = alloca <8 x i64>, align 64
  %__a.addr.i229 = alloca <8 x i64>, align 64
  %__b.addr.i230 = alloca <8 x i64>, align 64
  %__a.addr.i226 = alloca <8 x i64>, align 64
  %__b.addr.i227 = alloca <8 x i64>, align 64
  %__a.addr.i223 = alloca <8 x i64>, align 64
  %__b.addr.i224 = alloca <8 x i64>, align 64
  %__a.addr.i220 = alloca <8 x i64>, align 64
  %__b.addr.i221 = alloca <8 x i64>, align 64
  %__a.addr.i217 = alloca <8 x i64>, align 64
  %__b.addr.i218 = alloca <8 x i64>, align 64
  %__a.addr.i = alloca <8 x i64>, align 64
  %__b.addr.i = alloca <8 x i64>, align 64
  %__A.addr.i184 = alloca i32, align 4
  %__B.addr.i185 = alloca i32, align 4
  %__C.addr.i186 = alloca i32, align 4
  %__D.addr.i187 = alloca i32, align 4
  %__E.addr.i188 = alloca i32, align 4
  %__F.addr.i189 = alloca i32, align 4
  %__G.addr.i190 = alloca i32, align 4
  %__H.addr.i191 = alloca i32, align 4
  %__I.addr.i192 = alloca i32, align 4
  %__J.addr.i193 = alloca i32, align 4
  %__K.addr.i194 = alloca i32, align 4
  %__L.addr.i195 = alloca i32, align 4
  %__M.addr.i196 = alloca i32, align 4
  %__N.addr.i197 = alloca i32, align 4
  %__O.addr.i198 = alloca i32, align 4
  %__P.addr.i199 = alloca i32, align 4
  %.compoundliteral.i200 = alloca <16 x i32>, align 64
  %__A.addr.i158 = alloca i32, align 4
  %__B.addr.i159 = alloca i32, align 4
  %__C.addr.i160 = alloca i32, align 4
  %__D.addr.i161 = alloca i32, align 4
  %__E.addr.i162 = alloca i32, align 4
  %__F.addr.i163 = alloca i32, align 4
  %__G.addr.i164 = alloca i32, align 4
  %__H.addr.i165 = alloca i32, align 4
  %__I.addr.i = alloca i32, align 4
  %__J.addr.i = alloca i32, align 4
  %__K.addr.i = alloca i32, align 4
  %__L.addr.i = alloca i32, align 4
  %__M.addr.i = alloca i32, align 4
  %__N.addr.i = alloca i32, align 4
  %__O.addr.i = alloca i32, align 4
  %__P.addr.i166 = alloca i32, align 4
  %.compoundliteral.i167 = alloca <16 x i32>, align 64
  %__A.addr.i156 = alloca <8 x i64>, align 64
  %__B.addr.i157 = alloca <8 x i64>, align 64
  %__A.addr.i154 = alloca <8 x i64>, align 64
  %__B.addr.i155 = alloca <8 x i64>, align 64
  %__A.addr.i152 = alloca <8 x i64>, align 64
  %__B.addr.i153 = alloca <8 x i64>, align 64
  %__A.addr.i150 = alloca <8 x i64>, align 64
  %__B.addr.i151 = alloca <8 x i64>, align 64
  %__A.addr.i148 = alloca <8 x i64>, align 64
  %__B.addr.i149 = alloca <8 x i64>, align 64
  %__A.addr.i146 = alloca <8 x i64>, align 64
  %__B.addr.i147 = alloca <8 x i64>, align 64
  %__A.addr.i144 = alloca <8 x i64>, align 64
  %__B.addr.i145 = alloca <8 x i64>, align 64
  %__A.addr.i142 = alloca <8 x i64>, align 64
  %__B.addr.i143 = alloca <8 x i64>, align 64
  %__A.addr.i140 = alloca <8 x i64>, align 64
  %__B.addr.i141 = alloca <8 x i64>, align 64
  %__A.addr.i138 = alloca <8 x i64>, align 64
  %__B.addr.i139 = alloca <8 x i64>, align 64
  %__A.addr.i136 = alloca <8 x i64>, align 64
  %__B.addr.i137 = alloca <8 x i64>, align 64
  %__A.addr.i134 = alloca <8 x i64>, align 64
  %__B.addr.i135 = alloca <8 x i64>, align 64
  %__A.addr.i132 = alloca <8 x i64>, align 64
  %__B.addr.i133 = alloca <8 x i64>, align 64
  %__A.addr.i130 = alloca <8 x i64>, align 64
  %__B.addr.i131 = alloca <8 x i64>, align 64
  %__A.addr.i128 = alloca <8 x i64>, align 64
  %__B.addr.i129 = alloca <8 x i64>, align 64
  %__P.addr.i127 = alloca ptr, align 8
  %__P.addr.i126 = alloca ptr, align 8
  %__P.addr.i125 = alloca ptr, align 8
  %__P.addr.i124 = alloca ptr, align 8
  %__P.addr.i123 = alloca ptr, align 8
  %__P.addr.i122 = alloca ptr, align 8
  %__P.addr.i121 = alloca ptr, align 8
  %__P.addr.i120 = alloca ptr, align 8
  %__P.addr.i119 = alloca ptr, align 8
  %__P.addr.i = alloca ptr, align 8
  %__e63.addr.i = alloca i8, align 1
  %__e62.addr.i = alloca i8, align 1
  %__e61.addr.i = alloca i8, align 1
  %__e60.addr.i = alloca i8, align 1
  %__e59.addr.i = alloca i8, align 1
  %__e58.addr.i = alloca i8, align 1
  %__e57.addr.i = alloca i8, align 1
  %__e56.addr.i = alloca i8, align 1
  %__e55.addr.i = alloca i8, align 1
  %__e54.addr.i = alloca i8, align 1
  %__e53.addr.i = alloca i8, align 1
  %__e52.addr.i = alloca i8, align 1
  %__e51.addr.i = alloca i8, align 1
  %__e50.addr.i = alloca i8, align 1
  %__e49.addr.i = alloca i8, align 1
  %__e48.addr.i = alloca i8, align 1
  %__e47.addr.i = alloca i8, align 1
  %__e46.addr.i = alloca i8, align 1
  %__e45.addr.i = alloca i8, align 1
  %__e44.addr.i = alloca i8, align 1
  %__e43.addr.i = alloca i8, align 1
  %__e42.addr.i = alloca i8, align 1
  %__e41.addr.i = alloca i8, align 1
  %__e40.addr.i = alloca i8, align 1
  %__e39.addr.i = alloca i8, align 1
  %__e38.addr.i = alloca i8, align 1
  %__e37.addr.i = alloca i8, align 1
  %__e36.addr.i = alloca i8, align 1
  %__e35.addr.i = alloca i8, align 1
  %__e34.addr.i = alloca i8, align 1
  %__e33.addr.i = alloca i8, align 1
  %__e32.addr.i = alloca i8, align 1
  %__e31.addr.i = alloca i8, align 1
  %__e30.addr.i = alloca i8, align 1
  %__e29.addr.i = alloca i8, align 1
  %__e28.addr.i = alloca i8, align 1
  %__e27.addr.i = alloca i8, align 1
  %__e26.addr.i = alloca i8, align 1
  %__e25.addr.i = alloca i8, align 1
  %__e24.addr.i = alloca i8, align 1
  %__e23.addr.i = alloca i8, align 1
  %__e22.addr.i = alloca i8, align 1
  %__e21.addr.i = alloca i8, align 1
  %__e20.addr.i = alloca i8, align 1
  %__e19.addr.i = alloca i8, align 1
  %__e18.addr.i = alloca i8, align 1
  %__e17.addr.i = alloca i8, align 1
  %__e16.addr.i = alloca i8, align 1
  %__e15.addr.i = alloca i8, align 1
  %__e14.addr.i = alloca i8, align 1
  %__e13.addr.i = alloca i8, align 1
  %__e12.addr.i = alloca i8, align 1
  %__e11.addr.i = alloca i8, align 1
  %__e10.addr.i = alloca i8, align 1
  %__e9.addr.i = alloca i8, align 1
  %__e8.addr.i = alloca i8, align 1
  %__e7.addr.i = alloca i8, align 1
  %__e6.addr.i = alloca i8, align 1
  %__e5.addr.i = alloca i8, align 1
  %__e4.addr.i = alloca i8, align 1
  %__e3.addr.i = alloca i8, align 1
  %__e2.addr.i = alloca i8, align 1
  %__e1.addr.i = alloca i8, align 1
  %__e0.addr.i = alloca i8, align 1
  %.compoundliteral.i110 = alloca <64 x i8>, align 64
  %__A.addr.i93 = alloca i64, align 8
  %__B.addr.i94 = alloca i64, align 8
  %__C.addr.i95 = alloca i64, align 8
  %__D.addr.i96 = alloca i64, align 8
  %__E.addr.i97 = alloca i64, align 8
  %__F.addr.i98 = alloca i64, align 8
  %__G.addr.i99 = alloca i64, align 8
  %__H.addr.i100 = alloca i64, align 8
  %.compoundliteral.i101 = alloca <8 x i64>, align 64
  %__A.addr.i = alloca i64, align 8
  %__B.addr.i = alloca i64, align 8
  %__C.addr.i = alloca i64, align 8
  %__D.addr.i = alloca i64, align 8
  %__E.addr.i = alloca i64, align 8
  %__F.addr.i = alloca i64, align 8
  %__G.addr.i = alloca i64, align 8
  %__H.addr.i = alloca i64, align 8
  %.compoundliteral.i = alloca <8 x i64>, align 64
  %retval = alloca i1, align 1
  %fp.addr = alloca ptr, align 8
  %crc_out.addr = alloca ptr, align 8
  %length_out.addr = alloca ptr, align 8
  %buf = alloca [1024 x <8 x i64>], align 64
  %crc = alloca i64, align 8
  %length = alloca i64, align 8
  %bytes_read = alloca i64, align 8
  %single_mult_constant = alloca <8 x i64>, align 64
  %four_mult_constant = alloca <8 x i64>, align 64
  %shuffle_constant = alloca <8 x i64>, align 64
  %data = alloca <8 x i64>, align 64
  %data2 = alloca <8 x i64>, align 64
  %data3 = alloca <8 x i64>, align 64
  %data4 = alloca <8 x i64>, align 64
  %data5 = alloca <8 x i64>, align 64
  %data6 = alloca <8 x i64>, align 64
  %data7 = alloca <8 x i64>, align 64
  %data8 = alloca <8 x i64>, align 64
  %fold_data = alloca <8 x i64>, align 64
  %xor_crc = alloca <8 x i64>, align 64
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
  store i64 2285074764, ptr %__A.addr.i93, align 8
  store i64 3861023505, ptr %__B.addr.i94, align 8
  store i64 2285074764, ptr %__C.addr.i95, align 8
  store i64 3861023505, ptr %__D.addr.i96, align 8
  store i64 2285074764, ptr %__E.addr.i97, align 8
  store i64 3861023505, ptr %__F.addr.i98, align 8
  store i64 2285074764, ptr %__G.addr.i99, align 8
  store i64 3861023505, ptr %__H.addr.i100, align 8
  %3 = load i64, ptr %__H.addr.i100, align 8
  %vecinit.i102 = insertelement <8 x i64> poison, i64 %3, i32 0
  %4 = load i64, ptr %__G.addr.i99, align 8
  %vecinit1.i103 = insertelement <8 x i64> %vecinit.i102, i64 %4, i32 1
  %5 = load i64, ptr %__F.addr.i98, align 8
  %vecinit2.i104 = insertelement <8 x i64> %vecinit1.i103, i64 %5, i32 2
  %6 = load i64, ptr %__E.addr.i97, align 8
  %vecinit3.i105 = insertelement <8 x i64> %vecinit2.i104, i64 %6, i32 3
  %7 = load i64, ptr %__D.addr.i96, align 8
  %vecinit4.i106 = insertelement <8 x i64> %vecinit3.i105, i64 %7, i32 4
  %8 = load i64, ptr %__C.addr.i95, align 8
  %vecinit5.i107 = insertelement <8 x i64> %vecinit4.i106, i64 %8, i32 5
  %9 = load i64, ptr %__B.addr.i94, align 8
  %vecinit6.i108 = insertelement <8 x i64> %vecinit5.i107, i64 %9, i32 6
  %10 = load i64, ptr %__A.addr.i93, align 8
  %vecinit7.i109 = insertelement <8 x i64> %vecinit6.i108, i64 %10, i32 7
  store <8 x i64> %vecinit7.i109, ptr %.compoundliteral.i101, align 64
  %11 = load <8 x i64>, ptr %.compoundliteral.i101, align 64
  store <8 x i64> %11, ptr %single_mult_constant, align 64
  store i64 3419356107, ptr %__A.addr.i, align 8
  store i64 2298356279, ptr %__B.addr.i, align 8
  store i64 3419356107, ptr %__C.addr.i, align 8
  store i64 2298356279, ptr %__D.addr.i, align 8
  store i64 3419356107, ptr %__E.addr.i, align 8
  store i64 2298356279, ptr %__F.addr.i, align 8
  store i64 3419356107, ptr %__G.addr.i, align 8
  store i64 2298356279, ptr %__H.addr.i, align 8
  %12 = load i64, ptr %__H.addr.i, align 8
  %vecinit.i = insertelement <8 x i64> poison, i64 %12, i32 0
  %13 = load i64, ptr %__G.addr.i, align 8
  %vecinit1.i = insertelement <8 x i64> %vecinit.i, i64 %13, i32 1
  %14 = load i64, ptr %__F.addr.i, align 8
  %vecinit2.i = insertelement <8 x i64> %vecinit1.i, i64 %14, i32 2
  %15 = load i64, ptr %__E.addr.i, align 8
  %vecinit3.i = insertelement <8 x i64> %vecinit2.i, i64 %15, i32 3
  %16 = load i64, ptr %__D.addr.i, align 8
  %vecinit4.i = insertelement <8 x i64> %vecinit3.i, i64 %16, i32 4
  %17 = load i64, ptr %__C.addr.i, align 8
  %vecinit5.i = insertelement <8 x i64> %vecinit4.i, i64 %17, i32 5
  %18 = load i64, ptr %__B.addr.i, align 8
  %vecinit6.i = insertelement <8 x i64> %vecinit5.i, i64 %18, i32 6
  %19 = load i64, ptr %__A.addr.i, align 8
  %vecinit7.i = insertelement <8 x i64> %vecinit6.i, i64 %19, i32 7
  store <8 x i64> %vecinit7.i, ptr %.compoundliteral.i, align 64
  %20 = load <8 x i64>, ptr %.compoundliteral.i, align 64
  store <8 x i64> %20, ptr %four_mult_constant, align 64
  store i8 0, ptr %__e63.addr.i, align 1
  store i8 1, ptr %__e62.addr.i, align 1
  store i8 2, ptr %__e61.addr.i, align 1
  store i8 3, ptr %__e60.addr.i, align 1
  store i8 4, ptr %__e59.addr.i, align 1
  store i8 5, ptr %__e58.addr.i, align 1
  store i8 6, ptr %__e57.addr.i, align 1
  store i8 7, ptr %__e56.addr.i, align 1
  store i8 8, ptr %__e55.addr.i, align 1
  store i8 9, ptr %__e54.addr.i, align 1
  store i8 10, ptr %__e53.addr.i, align 1
  store i8 11, ptr %__e52.addr.i, align 1
  store i8 12, ptr %__e51.addr.i, align 1
  store i8 13, ptr %__e50.addr.i, align 1
  store i8 14, ptr %__e49.addr.i, align 1
  store i8 15, ptr %__e48.addr.i, align 1
  store i8 0, ptr %__e47.addr.i, align 1
  store i8 1, ptr %__e46.addr.i, align 1
  store i8 2, ptr %__e45.addr.i, align 1
  store i8 3, ptr %__e44.addr.i, align 1
  store i8 4, ptr %__e43.addr.i, align 1
  store i8 5, ptr %__e42.addr.i, align 1
  store i8 6, ptr %__e41.addr.i, align 1
  store i8 7, ptr %__e40.addr.i, align 1
  store i8 8, ptr %__e39.addr.i, align 1
  store i8 9, ptr %__e38.addr.i, align 1
  store i8 10, ptr %__e37.addr.i, align 1
  store i8 11, ptr %__e36.addr.i, align 1
  store i8 12, ptr %__e35.addr.i, align 1
  store i8 13, ptr %__e34.addr.i, align 1
  store i8 14, ptr %__e33.addr.i, align 1
  store i8 15, ptr %__e32.addr.i, align 1
  store i8 0, ptr %__e31.addr.i, align 1
  store i8 1, ptr %__e30.addr.i, align 1
  store i8 2, ptr %__e29.addr.i, align 1
  store i8 3, ptr %__e28.addr.i, align 1
  store i8 4, ptr %__e27.addr.i, align 1
  store i8 5, ptr %__e26.addr.i, align 1
  store i8 6, ptr %__e25.addr.i, align 1
  store i8 7, ptr %__e24.addr.i, align 1
  store i8 8, ptr %__e23.addr.i, align 1
  store i8 9, ptr %__e22.addr.i, align 1
  store i8 10, ptr %__e21.addr.i, align 1
  store i8 11, ptr %__e20.addr.i, align 1
  store i8 12, ptr %__e19.addr.i, align 1
  store i8 13, ptr %__e18.addr.i, align 1
  store i8 14, ptr %__e17.addr.i, align 1
  store i8 15, ptr %__e16.addr.i, align 1
  store i8 0, ptr %__e15.addr.i, align 1
  store i8 1, ptr %__e14.addr.i, align 1
  store i8 2, ptr %__e13.addr.i, align 1
  store i8 3, ptr %__e12.addr.i, align 1
  store i8 4, ptr %__e11.addr.i, align 1
  store i8 5, ptr %__e10.addr.i, align 1
  store i8 6, ptr %__e9.addr.i, align 1
  store i8 7, ptr %__e8.addr.i, align 1
  store i8 8, ptr %__e7.addr.i, align 1
  store i8 9, ptr %__e6.addr.i, align 1
  store i8 10, ptr %__e5.addr.i, align 1
  store i8 11, ptr %__e4.addr.i, align 1
  store i8 12, ptr %__e3.addr.i, align 1
  store i8 13, ptr %__e2.addr.i, align 1
  store i8 14, ptr %__e1.addr.i, align 1
  store i8 15, ptr %__e0.addr.i, align 1
  %21 = load i8, ptr %__e0.addr.i, align 1
  %vecinit.i111 = insertelement <64 x i8> poison, i8 %21, i32 0
  %22 = load i8, ptr %__e1.addr.i, align 1
  %vecinit1.i112 = insertelement <64 x i8> %vecinit.i111, i8 %22, i32 1
  %23 = load i8, ptr %__e2.addr.i, align 1
  %vecinit2.i113 = insertelement <64 x i8> %vecinit1.i112, i8 %23, i32 2
  %24 = load i8, ptr %__e3.addr.i, align 1
  %vecinit3.i114 = insertelement <64 x i8> %vecinit2.i113, i8 %24, i32 3
  %25 = load i8, ptr %__e4.addr.i, align 1
  %vecinit4.i115 = insertelement <64 x i8> %vecinit3.i114, i8 %25, i32 4
  %26 = load i8, ptr %__e5.addr.i, align 1
  %vecinit5.i116 = insertelement <64 x i8> %vecinit4.i115, i8 %26, i32 5
  %27 = load i8, ptr %__e6.addr.i, align 1
  %vecinit6.i117 = insertelement <64 x i8> %vecinit5.i116, i8 %27, i32 6
  %28 = load i8, ptr %__e7.addr.i, align 1
  %vecinit7.i118 = insertelement <64 x i8> %vecinit6.i117, i8 %28, i32 7
  %29 = load i8, ptr %__e8.addr.i, align 1
  %vecinit8.i = insertelement <64 x i8> %vecinit7.i118, i8 %29, i32 8
  %30 = load i8, ptr %__e9.addr.i, align 1
  %vecinit9.i = insertelement <64 x i8> %vecinit8.i, i8 %30, i32 9
  %31 = load i8, ptr %__e10.addr.i, align 1
  %vecinit10.i = insertelement <64 x i8> %vecinit9.i, i8 %31, i32 10
  %32 = load i8, ptr %__e11.addr.i, align 1
  %vecinit11.i = insertelement <64 x i8> %vecinit10.i, i8 %32, i32 11
  %33 = load i8, ptr %__e12.addr.i, align 1
  %vecinit12.i = insertelement <64 x i8> %vecinit11.i, i8 %33, i32 12
  %34 = load i8, ptr %__e13.addr.i, align 1
  %vecinit13.i = insertelement <64 x i8> %vecinit12.i, i8 %34, i32 13
  %35 = load i8, ptr %__e14.addr.i, align 1
  %vecinit14.i = insertelement <64 x i8> %vecinit13.i, i8 %35, i32 14
  %36 = load i8, ptr %__e15.addr.i, align 1
  %vecinit15.i = insertelement <64 x i8> %vecinit14.i, i8 %36, i32 15
  %37 = load i8, ptr %__e16.addr.i, align 1
  %vecinit16.i = insertelement <64 x i8> %vecinit15.i, i8 %37, i32 16
  %38 = load i8, ptr %__e17.addr.i, align 1
  %vecinit17.i = insertelement <64 x i8> %vecinit16.i, i8 %38, i32 17
  %39 = load i8, ptr %__e18.addr.i, align 1
  %vecinit18.i = insertelement <64 x i8> %vecinit17.i, i8 %39, i32 18
  %40 = load i8, ptr %__e19.addr.i, align 1
  %vecinit19.i = insertelement <64 x i8> %vecinit18.i, i8 %40, i32 19
  %41 = load i8, ptr %__e20.addr.i, align 1
  %vecinit20.i = insertelement <64 x i8> %vecinit19.i, i8 %41, i32 20
  %42 = load i8, ptr %__e21.addr.i, align 1
  %vecinit21.i = insertelement <64 x i8> %vecinit20.i, i8 %42, i32 21
  %43 = load i8, ptr %__e22.addr.i, align 1
  %vecinit22.i = insertelement <64 x i8> %vecinit21.i, i8 %43, i32 22
  %44 = load i8, ptr %__e23.addr.i, align 1
  %vecinit23.i = insertelement <64 x i8> %vecinit22.i, i8 %44, i32 23
  %45 = load i8, ptr %__e24.addr.i, align 1
  %vecinit24.i = insertelement <64 x i8> %vecinit23.i, i8 %45, i32 24
  %46 = load i8, ptr %__e25.addr.i, align 1
  %vecinit25.i = insertelement <64 x i8> %vecinit24.i, i8 %46, i32 25
  %47 = load i8, ptr %__e26.addr.i, align 1
  %vecinit26.i = insertelement <64 x i8> %vecinit25.i, i8 %47, i32 26
  %48 = load i8, ptr %__e27.addr.i, align 1
  %vecinit27.i = insertelement <64 x i8> %vecinit26.i, i8 %48, i32 27
  %49 = load i8, ptr %__e28.addr.i, align 1
  %vecinit28.i = insertelement <64 x i8> %vecinit27.i, i8 %49, i32 28
  %50 = load i8, ptr %__e29.addr.i, align 1
  %vecinit29.i = insertelement <64 x i8> %vecinit28.i, i8 %50, i32 29
  %51 = load i8, ptr %__e30.addr.i, align 1
  %vecinit30.i = insertelement <64 x i8> %vecinit29.i, i8 %51, i32 30
  %52 = load i8, ptr %__e31.addr.i, align 1
  %vecinit31.i = insertelement <64 x i8> %vecinit30.i, i8 %52, i32 31
  %53 = load i8, ptr %__e32.addr.i, align 1
  %vecinit32.i = insertelement <64 x i8> %vecinit31.i, i8 %53, i32 32
  %54 = load i8, ptr %__e33.addr.i, align 1
  %vecinit33.i = insertelement <64 x i8> %vecinit32.i, i8 %54, i32 33
  %55 = load i8, ptr %__e34.addr.i, align 1
  %vecinit34.i = insertelement <64 x i8> %vecinit33.i, i8 %55, i32 34
  %56 = load i8, ptr %__e35.addr.i, align 1
  %vecinit35.i = insertelement <64 x i8> %vecinit34.i, i8 %56, i32 35
  %57 = load i8, ptr %__e36.addr.i, align 1
  %vecinit36.i = insertelement <64 x i8> %vecinit35.i, i8 %57, i32 36
  %58 = load i8, ptr %__e37.addr.i, align 1
  %vecinit37.i = insertelement <64 x i8> %vecinit36.i, i8 %58, i32 37
  %59 = load i8, ptr %__e38.addr.i, align 1
  %vecinit38.i = insertelement <64 x i8> %vecinit37.i, i8 %59, i32 38
  %60 = load i8, ptr %__e39.addr.i, align 1
  %vecinit39.i = insertelement <64 x i8> %vecinit38.i, i8 %60, i32 39
  %61 = load i8, ptr %__e40.addr.i, align 1
  %vecinit40.i = insertelement <64 x i8> %vecinit39.i, i8 %61, i32 40
  %62 = load i8, ptr %__e41.addr.i, align 1
  %vecinit41.i = insertelement <64 x i8> %vecinit40.i, i8 %62, i32 41
  %63 = load i8, ptr %__e42.addr.i, align 1
  %vecinit42.i = insertelement <64 x i8> %vecinit41.i, i8 %63, i32 42
  %64 = load i8, ptr %__e43.addr.i, align 1
  %vecinit43.i = insertelement <64 x i8> %vecinit42.i, i8 %64, i32 43
  %65 = load i8, ptr %__e44.addr.i, align 1
  %vecinit44.i = insertelement <64 x i8> %vecinit43.i, i8 %65, i32 44
  %66 = load i8, ptr %__e45.addr.i, align 1
  %vecinit45.i = insertelement <64 x i8> %vecinit44.i, i8 %66, i32 45
  %67 = load i8, ptr %__e46.addr.i, align 1
  %vecinit46.i = insertelement <64 x i8> %vecinit45.i, i8 %67, i32 46
  %68 = load i8, ptr %__e47.addr.i, align 1
  %vecinit47.i = insertelement <64 x i8> %vecinit46.i, i8 %68, i32 47
  %69 = load i8, ptr %__e48.addr.i, align 1
  %vecinit48.i = insertelement <64 x i8> %vecinit47.i, i8 %69, i32 48
  %70 = load i8, ptr %__e49.addr.i, align 1
  %vecinit49.i = insertelement <64 x i8> %vecinit48.i, i8 %70, i32 49
  %71 = load i8, ptr %__e50.addr.i, align 1
  %vecinit50.i = insertelement <64 x i8> %vecinit49.i, i8 %71, i32 50
  %72 = load i8, ptr %__e51.addr.i, align 1
  %vecinit51.i = insertelement <64 x i8> %vecinit50.i, i8 %72, i32 51
  %73 = load i8, ptr %__e52.addr.i, align 1
  %vecinit52.i = insertelement <64 x i8> %vecinit51.i, i8 %73, i32 52
  %74 = load i8, ptr %__e53.addr.i, align 1
  %vecinit53.i = insertelement <64 x i8> %vecinit52.i, i8 %74, i32 53
  %75 = load i8, ptr %__e54.addr.i, align 1
  %vecinit54.i = insertelement <64 x i8> %vecinit53.i, i8 %75, i32 54
  %76 = load i8, ptr %__e55.addr.i, align 1
  %vecinit55.i = insertelement <64 x i8> %vecinit54.i, i8 %76, i32 55
  %77 = load i8, ptr %__e56.addr.i, align 1
  %vecinit56.i = insertelement <64 x i8> %vecinit55.i, i8 %77, i32 56
  %78 = load i8, ptr %__e57.addr.i, align 1
  %vecinit57.i = insertelement <64 x i8> %vecinit56.i, i8 %78, i32 57
  %79 = load i8, ptr %__e58.addr.i, align 1
  %vecinit58.i = insertelement <64 x i8> %vecinit57.i, i8 %79, i32 58
  %80 = load i8, ptr %__e59.addr.i, align 1
  %vecinit59.i = insertelement <64 x i8> %vecinit58.i, i8 %80, i32 59
  %81 = load i8, ptr %__e60.addr.i, align 1
  %vecinit60.i = insertelement <64 x i8> %vecinit59.i, i8 %81, i32 60
  %82 = load i8, ptr %__e61.addr.i, align 1
  %vecinit61.i = insertelement <64 x i8> %vecinit60.i, i8 %82, i32 61
  %83 = load i8, ptr %__e62.addr.i, align 1
  %vecinit62.i = insertelement <64 x i8> %vecinit61.i, i8 %83, i32 62
  %84 = load i8, ptr %__e63.addr.i, align 1
  %vecinit63.i = insertelement <64 x i8> %vecinit62.i, i8 %84, i32 63
  store <64 x i8> %vecinit63.i, ptr %.compoundliteral.i110, align 64
  %85 = load <64 x i8>, ptr %.compoundliteral.i110, align 64
  %86 = bitcast <64 x i8> %85 to <8 x i64>
  store <8 x i64> %86, ptr %shuffle_constant, align 64
  br label %while.cond

while.cond:                                       ; preds = %if.end89, %if.end
  %arraydecay = getelementptr inbounds [1024 x <8 x i64>], ptr %buf, i64 0, i64 0
  %87 = load ptr, ptr %fp.addr, align 8
  %call6 = call i64 @fread_unlocked(ptr noundef %arraydecay, i64 noundef 1, i64 noundef 65536, ptr noundef %87)
  store i64 %call6, ptr %bytes_read, align 8
  %cmp = icmp ugt i64 %call6, 0
  br i1 %cmp, label %while.body, label %while.end90

while.body:                                       ; preds = %while.cond
  %88 = load i64, ptr %length, align 8
  %89 = load i64, ptr %bytes_read, align 8
  %add = add i64 %88, %89
  %90 = load i64, ptr %length, align 8
  %cmp7 = icmp ult i64 %add, %90
  br i1 %cmp7, label %if.then8, label %if.end10

if.then8:                                         ; preds = %while.body
  %call9 = call ptr @__errno_location() #5
  store i32 75, ptr %call9, align 4
  store i1 false, ptr %retval, align 1
  br label %return

if.end10:                                         ; preds = %while.body
  %91 = load i64, ptr %bytes_read, align 8
  %92 = load i64, ptr %length, align 8
  %add11 = add i64 %92, %91
  store i64 %add11, ptr %length, align 8
  %arraydecay12 = getelementptr inbounds [1024 x <8 x i64>], ptr %buf, i64 0, i64 0
  store ptr %arraydecay12, ptr %datap, align 8
  %93 = load i64, ptr %bytes_read, align 8
  %cmp13 = icmp uge i64 %93, 512
  br i1 %cmp13, label %if.then14, label %if.end58

if.then14:                                        ; preds = %if.end10
  %94 = load ptr, ptr %datap, align 8
  store ptr %94, ptr %__P.addr.i127, align 8
  %95 = load ptr, ptr %__P.addr.i127, align 8
  %96 = load <8 x i64>, ptr %95, align 1
  store <8 x i64> %96, ptr %data, align 64
  %97 = load <8 x i64>, ptr %data, align 64
  %98 = load <8 x i64>, ptr %shuffle_constant, align 64
  store <8 x i64> %97, ptr %__A.addr.i156, align 64
  store <8 x i64> %98, ptr %__B.addr.i157, align 64
  %99 = load <8 x i64>, ptr %__A.addr.i156, align 64
  %100 = bitcast <8 x i64> %99 to <64 x i8>
  %101 = load <8 x i64>, ptr %__B.addr.i157, align 64
  %102 = bitcast <8 x i64> %101 to <64 x i8>
  %103 = call <64 x i8> @llvm.x86.avx512.pshuf.b.512(<64 x i8> %100, <64 x i8> %102)
  %104 = bitcast <64 x i8> %103 to <8 x i64>
  store <8 x i64> %104, ptr %data, align 64
  %105 = load i64, ptr %crc, align 8
  %conv = trunc i64 %105 to i32
  store i32 0, ptr %__A.addr.i184, align 4
  store i32 0, ptr %__B.addr.i185, align 4
  store i32 0, ptr %__C.addr.i186, align 4
  store i32 0, ptr %__D.addr.i187, align 4
  store i32 0, ptr %__E.addr.i188, align 4
  store i32 0, ptr %__F.addr.i189, align 4
  store i32 0, ptr %__G.addr.i190, align 4
  store i32 0, ptr %__H.addr.i191, align 4
  store i32 0, ptr %__I.addr.i192, align 4
  store i32 0, ptr %__J.addr.i193, align 4
  store i32 0, ptr %__K.addr.i194, align 4
  store i32 0, ptr %__L.addr.i195, align 4
  store i32 %conv, ptr %__M.addr.i196, align 4
  store i32 0, ptr %__N.addr.i197, align 4
  store i32 0, ptr %__O.addr.i198, align 4
  store i32 0, ptr %__P.addr.i199, align 4
  %106 = load i32, ptr %__P.addr.i199, align 4
  %vecinit.i201 = insertelement <16 x i32> poison, i32 %106, i32 0
  %107 = load i32, ptr %__O.addr.i198, align 4
  %vecinit1.i202 = insertelement <16 x i32> %vecinit.i201, i32 %107, i32 1
  %108 = load i32, ptr %__N.addr.i197, align 4
  %vecinit2.i203 = insertelement <16 x i32> %vecinit1.i202, i32 %108, i32 2
  %109 = load i32, ptr %__M.addr.i196, align 4
  %vecinit3.i204 = insertelement <16 x i32> %vecinit2.i203, i32 %109, i32 3
  %110 = load i32, ptr %__L.addr.i195, align 4
  %vecinit4.i205 = insertelement <16 x i32> %vecinit3.i204, i32 %110, i32 4
  %111 = load i32, ptr %__K.addr.i194, align 4
  %vecinit5.i206 = insertelement <16 x i32> %vecinit4.i205, i32 %111, i32 5
  %112 = load i32, ptr %__J.addr.i193, align 4
  %vecinit6.i207 = insertelement <16 x i32> %vecinit5.i206, i32 %112, i32 6
  %113 = load i32, ptr %__I.addr.i192, align 4
  %vecinit7.i208 = insertelement <16 x i32> %vecinit6.i207, i32 %113, i32 7
  %114 = load i32, ptr %__H.addr.i191, align 4
  %vecinit8.i209 = insertelement <16 x i32> %vecinit7.i208, i32 %114, i32 8
  %115 = load i32, ptr %__G.addr.i190, align 4
  %vecinit9.i210 = insertelement <16 x i32> %vecinit8.i209, i32 %115, i32 9
  %116 = load i32, ptr %__F.addr.i189, align 4
  %vecinit10.i211 = insertelement <16 x i32> %vecinit9.i210, i32 %116, i32 10
  %117 = load i32, ptr %__E.addr.i188, align 4
  %vecinit11.i212 = insertelement <16 x i32> %vecinit10.i211, i32 %117, i32 11
  %118 = load i32, ptr %__D.addr.i187, align 4
  %vecinit12.i213 = insertelement <16 x i32> %vecinit11.i212, i32 %118, i32 12
  %119 = load i32, ptr %__C.addr.i186, align 4
  %vecinit13.i214 = insertelement <16 x i32> %vecinit12.i213, i32 %119, i32 13
  %120 = load i32, ptr %__B.addr.i185, align 4
  %vecinit14.i215 = insertelement <16 x i32> %vecinit13.i214, i32 %120, i32 14
  %121 = load i32, ptr %__A.addr.i184, align 4
  %vecinit15.i216 = insertelement <16 x i32> %vecinit14.i215, i32 %121, i32 15
  store <16 x i32> %vecinit15.i216, ptr %.compoundliteral.i200, align 64
  %122 = load <16 x i32>, ptr %.compoundliteral.i200, align 64
  %123 = bitcast <16 x i32> %122 to <8 x i64>
  store <8 x i64> %123, ptr %xor_crc, align 64
  store i64 0, ptr %crc, align 8
  %124 = load <8 x i64>, ptr %data, align 64
  %125 = load <8 x i64>, ptr %xor_crc, align 64
  store <8 x i64> %124, ptr %__a.addr.i247, align 64
  store <8 x i64> %125, ptr %__b.addr.i248, align 64
  %126 = load <8 x i64>, ptr %__a.addr.i247, align 64
  %127 = load <8 x i64>, ptr %__b.addr.i248, align 64
  %xor.i249 = xor <8 x i64> %126, %127
  store <8 x i64> %xor.i249, ptr %data, align 64
  %128 = load ptr, ptr %datap, align 8
  %add.ptr = getelementptr inbounds <8 x i64>, ptr %128, i64 1
  store ptr %add.ptr, ptr %__P.addr.i126, align 8
  %129 = load ptr, ptr %__P.addr.i126, align 8
  %130 = load <8 x i64>, ptr %129, align 1
  store <8 x i64> %130, ptr %data3, align 64
  %131 = load <8 x i64>, ptr %data3, align 64
  %132 = load <8 x i64>, ptr %shuffle_constant, align 64
  store <8 x i64> %131, ptr %__A.addr.i154, align 64
  store <8 x i64> %132, ptr %__B.addr.i155, align 64
  %133 = load <8 x i64>, ptr %__A.addr.i154, align 64
  %134 = bitcast <8 x i64> %133 to <64 x i8>
  %135 = load <8 x i64>, ptr %__B.addr.i155, align 64
  %136 = bitcast <8 x i64> %135 to <64 x i8>
  %137 = call <64 x i8> @llvm.x86.avx512.pshuf.b.512(<64 x i8> %134, <64 x i8> %136)
  %138 = bitcast <64 x i8> %137 to <8 x i64>
  store <8 x i64> %138, ptr %data3, align 64
  %139 = load ptr, ptr %datap, align 8
  %add.ptr21 = getelementptr inbounds <8 x i64>, ptr %139, i64 2
  store ptr %add.ptr21, ptr %__P.addr.i125, align 8
  %140 = load ptr, ptr %__P.addr.i125, align 8
  %141 = load <8 x i64>, ptr %140, align 1
  store <8 x i64> %141, ptr %data5, align 64
  %142 = load <8 x i64>, ptr %data5, align 64
  %143 = load <8 x i64>, ptr %shuffle_constant, align 64
  store <8 x i64> %142, ptr %__A.addr.i152, align 64
  store <8 x i64> %143, ptr %__B.addr.i153, align 64
  %144 = load <8 x i64>, ptr %__A.addr.i152, align 64
  %145 = bitcast <8 x i64> %144 to <64 x i8>
  %146 = load <8 x i64>, ptr %__B.addr.i153, align 64
  %147 = bitcast <8 x i64> %146 to <64 x i8>
  %148 = call <64 x i8> @llvm.x86.avx512.pshuf.b.512(<64 x i8> %145, <64 x i8> %147)
  %149 = bitcast <64 x i8> %148 to <8 x i64>
  store <8 x i64> %149, ptr %data5, align 64
  %150 = load ptr, ptr %datap, align 8
  %add.ptr24 = getelementptr inbounds <8 x i64>, ptr %150, i64 3
  store ptr %add.ptr24, ptr %__P.addr.i124, align 8
  %151 = load ptr, ptr %__P.addr.i124, align 8
  %152 = load <8 x i64>, ptr %151, align 1
  store <8 x i64> %152, ptr %data7, align 64
  %153 = load <8 x i64>, ptr %data7, align 64
  %154 = load <8 x i64>, ptr %shuffle_constant, align 64
  store <8 x i64> %153, ptr %__A.addr.i150, align 64
  store <8 x i64> %154, ptr %__B.addr.i151, align 64
  %155 = load <8 x i64>, ptr %__A.addr.i150, align 64
  %156 = bitcast <8 x i64> %155 to <64 x i8>
  %157 = load <8 x i64>, ptr %__B.addr.i151, align 64
  %158 = bitcast <8 x i64> %157 to <64 x i8>
  %159 = call <64 x i8> @llvm.x86.avx512.pshuf.b.512(<64 x i8> %156, <64 x i8> %158)
  %160 = bitcast <64 x i8> %159 to <8 x i64>
  store <8 x i64> %160, ptr %data7, align 64
  br label %while.cond27

while.cond27:                                     ; preds = %while.body30, %if.then14
  %161 = load i64, ptr %bytes_read, align 8
  %cmp28 = icmp uge i64 %161, 512
  br i1 %cmp28, label %while.body30, label %while.end

while.body30:                                     ; preds = %while.cond27
  %162 = load ptr, ptr %datap, align 8
  %add.ptr31 = getelementptr inbounds <8 x i64>, ptr %162, i64 4
  store ptr %add.ptr31, ptr %datap, align 8
  %163 = load <8 x i64>, ptr %data, align 64
  %164 = load <8 x i64>, ptr %four_mult_constant, align 64
  %165 = call <8 x i64> @llvm.x86.pclmulqdq.512(<8 x i64> %163, <8 x i64> %164, i8 0)
  store <8 x i64> %165, ptr %data2, align 64
  %166 = load <8 x i64>, ptr %data, align 64
  %167 = load <8 x i64>, ptr %four_mult_constant, align 64
  %168 = call <8 x i64> @llvm.x86.pclmulqdq.512(<8 x i64> %166, <8 x i64> %167, i8 17)
  store <8 x i64> %168, ptr %data, align 64
  %169 = load <8 x i64>, ptr %data3, align 64
  %170 = load <8 x i64>, ptr %four_mult_constant, align 64
  %171 = call <8 x i64> @llvm.x86.pclmulqdq.512(<8 x i64> %169, <8 x i64> %170, i8 0)
  store <8 x i64> %171, ptr %data4, align 64
  %172 = load <8 x i64>, ptr %data3, align 64
  %173 = load <8 x i64>, ptr %four_mult_constant, align 64
  %174 = call <8 x i64> @llvm.x86.pclmulqdq.512(<8 x i64> %172, <8 x i64> %173, i8 17)
  store <8 x i64> %174, ptr %data3, align 64
  %175 = load <8 x i64>, ptr %data5, align 64
  %176 = load <8 x i64>, ptr %four_mult_constant, align 64
  %177 = call <8 x i64> @llvm.x86.pclmulqdq.512(<8 x i64> %175, <8 x i64> %176, i8 0)
  store <8 x i64> %177, ptr %data6, align 64
  %178 = load <8 x i64>, ptr %data5, align 64
  %179 = load <8 x i64>, ptr %four_mult_constant, align 64
  %180 = call <8 x i64> @llvm.x86.pclmulqdq.512(<8 x i64> %178, <8 x i64> %179, i8 17)
  store <8 x i64> %180, ptr %data5, align 64
  %181 = load <8 x i64>, ptr %data7, align 64
  %182 = load <8 x i64>, ptr %four_mult_constant, align 64
  %183 = call <8 x i64> @llvm.x86.pclmulqdq.512(<8 x i64> %181, <8 x i64> %182, i8 0)
  store <8 x i64> %183, ptr %data8, align 64
  %184 = load <8 x i64>, ptr %data7, align 64
  %185 = load <8 x i64>, ptr %four_mult_constant, align 64
  %186 = call <8 x i64> @llvm.x86.pclmulqdq.512(<8 x i64> %184, <8 x i64> %185, i8 17)
  store <8 x i64> %186, ptr %data7, align 64
  %187 = load <8 x i64>, ptr %data, align 64
  %188 = load <8 x i64>, ptr %data2, align 64
  store <8 x i64> %187, ptr %__a.addr.i244, align 64
  store <8 x i64> %188, ptr %__b.addr.i245, align 64
  %189 = load <8 x i64>, ptr %__a.addr.i244, align 64
  %190 = load <8 x i64>, ptr %__b.addr.i245, align 64
  %xor.i246 = xor <8 x i64> %189, %190
  store <8 x i64> %xor.i246, ptr %data, align 64
  %191 = load ptr, ptr %datap, align 8
  store ptr %191, ptr %__P.addr.i123, align 8
  %192 = load ptr, ptr %__P.addr.i123, align 8
  %193 = load <8 x i64>, ptr %192, align 1
  store <8 x i64> %193, ptr %data2, align 64
  %194 = load <8 x i64>, ptr %data2, align 64
  %195 = load <8 x i64>, ptr %shuffle_constant, align 64
  store <8 x i64> %194, ptr %__A.addr.i148, align 64
  store <8 x i64> %195, ptr %__B.addr.i149, align 64
  %196 = load <8 x i64>, ptr %__A.addr.i148, align 64
  %197 = bitcast <8 x i64> %196 to <64 x i8>
  %198 = load <8 x i64>, ptr %__B.addr.i149, align 64
  %199 = bitcast <8 x i64> %198 to <64 x i8>
  %200 = call <64 x i8> @llvm.x86.avx512.pshuf.b.512(<64 x i8> %197, <64 x i8> %199)
  %201 = bitcast <64 x i8> %200 to <8 x i64>
  store <8 x i64> %201, ptr %data2, align 64
  %202 = load <8 x i64>, ptr %data, align 64
  %203 = load <8 x i64>, ptr %data2, align 64
  store <8 x i64> %202, ptr %__a.addr.i241, align 64
  store <8 x i64> %203, ptr %__b.addr.i242, align 64
  %204 = load <8 x i64>, ptr %__a.addr.i241, align 64
  %205 = load <8 x i64>, ptr %__b.addr.i242, align 64
  %xor.i243 = xor <8 x i64> %204, %205
  store <8 x i64> %xor.i243, ptr %data, align 64
  %206 = load <8 x i64>, ptr %data3, align 64
  %207 = load <8 x i64>, ptr %data4, align 64
  store <8 x i64> %206, ptr %__a.addr.i238, align 64
  store <8 x i64> %207, ptr %__b.addr.i239, align 64
  %208 = load <8 x i64>, ptr %__a.addr.i238, align 64
  %209 = load <8 x i64>, ptr %__b.addr.i239, align 64
  %xor.i240 = xor <8 x i64> %208, %209
  store <8 x i64> %xor.i240, ptr %data3, align 64
  %210 = load ptr, ptr %datap, align 8
  %add.ptr37 = getelementptr inbounds <8 x i64>, ptr %210, i64 1
  store ptr %add.ptr37, ptr %__P.addr.i122, align 8
  %211 = load ptr, ptr %__P.addr.i122, align 8
  %212 = load <8 x i64>, ptr %211, align 1
  store <8 x i64> %212, ptr %data4, align 64
  %213 = load <8 x i64>, ptr %data4, align 64
  %214 = load <8 x i64>, ptr %shuffle_constant, align 64
  store <8 x i64> %213, ptr %__A.addr.i146, align 64
  store <8 x i64> %214, ptr %__B.addr.i147, align 64
  %215 = load <8 x i64>, ptr %__A.addr.i146, align 64
  %216 = bitcast <8 x i64> %215 to <64 x i8>
  %217 = load <8 x i64>, ptr %__B.addr.i147, align 64
  %218 = bitcast <8 x i64> %217 to <64 x i8>
  %219 = call <64 x i8> @llvm.x86.avx512.pshuf.b.512(<64 x i8> %216, <64 x i8> %218)
  %220 = bitcast <64 x i8> %219 to <8 x i64>
  store <8 x i64> %220, ptr %data4, align 64
  %221 = load <8 x i64>, ptr %data3, align 64
  %222 = load <8 x i64>, ptr %data4, align 64
  store <8 x i64> %221, ptr %__a.addr.i235, align 64
  store <8 x i64> %222, ptr %__b.addr.i236, align 64
  %223 = load <8 x i64>, ptr %__a.addr.i235, align 64
  %224 = load <8 x i64>, ptr %__b.addr.i236, align 64
  %xor.i237 = xor <8 x i64> %223, %224
  store <8 x i64> %xor.i237, ptr %data3, align 64
  %225 = load <8 x i64>, ptr %data5, align 64
  %226 = load <8 x i64>, ptr %data6, align 64
  store <8 x i64> %225, ptr %__a.addr.i232, align 64
  store <8 x i64> %226, ptr %__b.addr.i233, align 64
  %227 = load <8 x i64>, ptr %__a.addr.i232, align 64
  %228 = load <8 x i64>, ptr %__b.addr.i233, align 64
  %xor.i234 = xor <8 x i64> %227, %228
  store <8 x i64> %xor.i234, ptr %data5, align 64
  %229 = load ptr, ptr %datap, align 8
  %add.ptr42 = getelementptr inbounds <8 x i64>, ptr %229, i64 2
  store ptr %add.ptr42, ptr %__P.addr.i121, align 8
  %230 = load ptr, ptr %__P.addr.i121, align 8
  %231 = load <8 x i64>, ptr %230, align 1
  store <8 x i64> %231, ptr %data6, align 64
  %232 = load <8 x i64>, ptr %data6, align 64
  %233 = load <8 x i64>, ptr %shuffle_constant, align 64
  store <8 x i64> %232, ptr %__A.addr.i144, align 64
  store <8 x i64> %233, ptr %__B.addr.i145, align 64
  %234 = load <8 x i64>, ptr %__A.addr.i144, align 64
  %235 = bitcast <8 x i64> %234 to <64 x i8>
  %236 = load <8 x i64>, ptr %__B.addr.i145, align 64
  %237 = bitcast <8 x i64> %236 to <64 x i8>
  %238 = call <64 x i8> @llvm.x86.avx512.pshuf.b.512(<64 x i8> %235, <64 x i8> %237)
  %239 = bitcast <64 x i8> %238 to <8 x i64>
  store <8 x i64> %239, ptr %data6, align 64
  %240 = load <8 x i64>, ptr %data5, align 64
  %241 = load <8 x i64>, ptr %data6, align 64
  store <8 x i64> %240, ptr %__a.addr.i229, align 64
  store <8 x i64> %241, ptr %__b.addr.i230, align 64
  %242 = load <8 x i64>, ptr %__a.addr.i229, align 64
  %243 = load <8 x i64>, ptr %__b.addr.i230, align 64
  %xor.i231 = xor <8 x i64> %242, %243
  store <8 x i64> %xor.i231, ptr %data5, align 64
  %244 = load <8 x i64>, ptr %data7, align 64
  %245 = load <8 x i64>, ptr %data8, align 64
  store <8 x i64> %244, ptr %__a.addr.i226, align 64
  store <8 x i64> %245, ptr %__b.addr.i227, align 64
  %246 = load <8 x i64>, ptr %__a.addr.i226, align 64
  %247 = load <8 x i64>, ptr %__b.addr.i227, align 64
  %xor.i228 = xor <8 x i64> %246, %247
  store <8 x i64> %xor.i228, ptr %data7, align 64
  %248 = load ptr, ptr %datap, align 8
  %add.ptr47 = getelementptr inbounds <8 x i64>, ptr %248, i64 3
  store ptr %add.ptr47, ptr %__P.addr.i120, align 8
  %249 = load ptr, ptr %__P.addr.i120, align 8
  %250 = load <8 x i64>, ptr %249, align 1
  store <8 x i64> %250, ptr %data8, align 64
  %251 = load <8 x i64>, ptr %data8, align 64
  %252 = load <8 x i64>, ptr %shuffle_constant, align 64
  store <8 x i64> %251, ptr %__A.addr.i142, align 64
  store <8 x i64> %252, ptr %__B.addr.i143, align 64
  %253 = load <8 x i64>, ptr %__A.addr.i142, align 64
  %254 = bitcast <8 x i64> %253 to <64 x i8>
  %255 = load <8 x i64>, ptr %__B.addr.i143, align 64
  %256 = bitcast <8 x i64> %255 to <64 x i8>
  %257 = call <64 x i8> @llvm.x86.avx512.pshuf.b.512(<64 x i8> %254, <64 x i8> %256)
  %258 = bitcast <64 x i8> %257 to <8 x i64>
  store <8 x i64> %258, ptr %data8, align 64
  %259 = load <8 x i64>, ptr %data7, align 64
  %260 = load <8 x i64>, ptr %data8, align 64
  store <8 x i64> %259, ptr %__a.addr.i223, align 64
  store <8 x i64> %260, ptr %__b.addr.i224, align 64
  %261 = load <8 x i64>, ptr %__a.addr.i223, align 64
  %262 = load <8 x i64>, ptr %__b.addr.i224, align 64
  %xor.i225 = xor <8 x i64> %261, %262
  store <8 x i64> %xor.i225, ptr %data7, align 64
  %263 = load i64, ptr %bytes_read, align 8
  %sub = sub i64 %263, 256
  store i64 %sub, ptr %bytes_read, align 8
  br label %while.cond27, !llvm.loop !6

while.end:                                        ; preds = %while.cond27
  %264 = load <8 x i64>, ptr %data, align 64
  %265 = load <8 x i64>, ptr %shuffle_constant, align 64
  store <8 x i64> %264, ptr %__A.addr.i140, align 64
  store <8 x i64> %265, ptr %__B.addr.i141, align 64
  %266 = load <8 x i64>, ptr %__A.addr.i140, align 64
  %267 = bitcast <8 x i64> %266 to <64 x i8>
  %268 = load <8 x i64>, ptr %__B.addr.i141, align 64
  %269 = bitcast <8 x i64> %268 to <64 x i8>
  %270 = call <64 x i8> @llvm.x86.avx512.pshuf.b.512(<64 x i8> %267, <64 x i8> %269)
  %271 = bitcast <64 x i8> %270 to <8 x i64>
  store <8 x i64> %271, ptr %data, align 64
  %272 = load ptr, ptr %datap, align 8
  %273 = load <8 x i64>, ptr %data, align 64
  store ptr %272, ptr %__P.addr.i258, align 8
  store <8 x i64> %273, ptr %__A.addr.i259, align 64
  %274 = load <8 x i64>, ptr %__A.addr.i259, align 64
  %275 = load ptr, ptr %__P.addr.i258, align 8
  store <8 x i64> %274, ptr %275, align 1
  %276 = load <8 x i64>, ptr %data3, align 64
  %277 = load <8 x i64>, ptr %shuffle_constant, align 64
  store <8 x i64> %276, ptr %__A.addr.i138, align 64
  store <8 x i64> %277, ptr %__B.addr.i139, align 64
  %278 = load <8 x i64>, ptr %__A.addr.i138, align 64
  %279 = bitcast <8 x i64> %278 to <64 x i8>
  %280 = load <8 x i64>, ptr %__B.addr.i139, align 64
  %281 = bitcast <8 x i64> %280 to <64 x i8>
  %282 = call <64 x i8> @llvm.x86.avx512.pshuf.b.512(<64 x i8> %279, <64 x i8> %281)
  %283 = bitcast <64 x i8> %282 to <8 x i64>
  store <8 x i64> %283, ptr %data3, align 64
  %284 = load ptr, ptr %datap, align 8
  %add.ptr53 = getelementptr inbounds <8 x i64>, ptr %284, i64 1
  %285 = load <8 x i64>, ptr %data3, align 64
  store ptr %add.ptr53, ptr %__P.addr.i256, align 8
  store <8 x i64> %285, ptr %__A.addr.i257, align 64
  %286 = load <8 x i64>, ptr %__A.addr.i257, align 64
  %287 = load ptr, ptr %__P.addr.i256, align 8
  store <8 x i64> %286, ptr %287, align 1
  %288 = load <8 x i64>, ptr %data5, align 64
  %289 = load <8 x i64>, ptr %shuffle_constant, align 64
  store <8 x i64> %288, ptr %__A.addr.i136, align 64
  store <8 x i64> %289, ptr %__B.addr.i137, align 64
  %290 = load <8 x i64>, ptr %__A.addr.i136, align 64
  %291 = bitcast <8 x i64> %290 to <64 x i8>
  %292 = load <8 x i64>, ptr %__B.addr.i137, align 64
  %293 = bitcast <8 x i64> %292 to <64 x i8>
  %294 = call <64 x i8> @llvm.x86.avx512.pshuf.b.512(<64 x i8> %291, <64 x i8> %293)
  %295 = bitcast <64 x i8> %294 to <8 x i64>
  store <8 x i64> %295, ptr %data5, align 64
  %296 = load ptr, ptr %datap, align 8
  %add.ptr55 = getelementptr inbounds <8 x i64>, ptr %296, i64 2
  %297 = load <8 x i64>, ptr %data5, align 64
  store ptr %add.ptr55, ptr %__P.addr.i254, align 8
  store <8 x i64> %297, ptr %__A.addr.i255, align 64
  %298 = load <8 x i64>, ptr %__A.addr.i255, align 64
  %299 = load ptr, ptr %__P.addr.i254, align 8
  store <8 x i64> %298, ptr %299, align 1
  %300 = load <8 x i64>, ptr %data7, align 64
  %301 = load <8 x i64>, ptr %shuffle_constant, align 64
  store <8 x i64> %300, ptr %__A.addr.i134, align 64
  store <8 x i64> %301, ptr %__B.addr.i135, align 64
  %302 = load <8 x i64>, ptr %__A.addr.i134, align 64
  %303 = bitcast <8 x i64> %302 to <64 x i8>
  %304 = load <8 x i64>, ptr %__B.addr.i135, align 64
  %305 = bitcast <8 x i64> %304 to <64 x i8>
  %306 = call <64 x i8> @llvm.x86.avx512.pshuf.b.512(<64 x i8> %303, <64 x i8> %305)
  %307 = bitcast <64 x i8> %306 to <8 x i64>
  store <8 x i64> %307, ptr %data7, align 64
  %308 = load ptr, ptr %datap, align 8
  %add.ptr57 = getelementptr inbounds <8 x i64>, ptr %308, i64 3
  %309 = load <8 x i64>, ptr %data7, align 64
  store ptr %add.ptr57, ptr %__P.addr.i252, align 8
  store <8 x i64> %309, ptr %__A.addr.i253, align 64
  %310 = load <8 x i64>, ptr %__A.addr.i253, align 64
  %311 = load ptr, ptr %__P.addr.i252, align 8
  store <8 x i64> %310, ptr %311, align 1
  br label %if.end58

if.end58:                                         ; preds = %while.end, %if.end10
  %312 = load i64, ptr %bytes_read, align 8
  %cmp59 = icmp uge i64 %312, 128
  br i1 %cmp59, label %if.then61, label %if.end78

if.then61:                                        ; preds = %if.end58
  %313 = load ptr, ptr %datap, align 8
  store ptr %313, ptr %__P.addr.i119, align 8
  %314 = load ptr, ptr %__P.addr.i119, align 8
  %315 = load <8 x i64>, ptr %314, align 1
  store <8 x i64> %315, ptr %data, align 64
  %316 = load <8 x i64>, ptr %data, align 64
  %317 = load <8 x i64>, ptr %shuffle_constant, align 64
  store <8 x i64> %316, ptr %__A.addr.i132, align 64
  store <8 x i64> %317, ptr %__B.addr.i133, align 64
  %318 = load <8 x i64>, ptr %__A.addr.i132, align 64
  %319 = bitcast <8 x i64> %318 to <64 x i8>
  %320 = load <8 x i64>, ptr %__B.addr.i133, align 64
  %321 = bitcast <8 x i64> %320 to <64 x i8>
  %322 = call <64 x i8> @llvm.x86.avx512.pshuf.b.512(<64 x i8> %319, <64 x i8> %321)
  %323 = bitcast <64 x i8> %322 to <8 x i64>
  store <8 x i64> %323, ptr %data, align 64
  %324 = load i64, ptr %crc, align 8
  %conv64 = trunc i64 %324 to i32
  store i32 0, ptr %__A.addr.i158, align 4
  store i32 0, ptr %__B.addr.i159, align 4
  store i32 0, ptr %__C.addr.i160, align 4
  store i32 0, ptr %__D.addr.i161, align 4
  store i32 0, ptr %__E.addr.i162, align 4
  store i32 0, ptr %__F.addr.i163, align 4
  store i32 0, ptr %__G.addr.i164, align 4
  store i32 0, ptr %__H.addr.i165, align 4
  store i32 0, ptr %__I.addr.i, align 4
  store i32 0, ptr %__J.addr.i, align 4
  store i32 0, ptr %__K.addr.i, align 4
  store i32 0, ptr %__L.addr.i, align 4
  store i32 %conv64, ptr %__M.addr.i, align 4
  store i32 0, ptr %__N.addr.i, align 4
  store i32 0, ptr %__O.addr.i, align 4
  store i32 0, ptr %__P.addr.i166, align 4
  %325 = load i32, ptr %__P.addr.i166, align 4
  %vecinit.i168 = insertelement <16 x i32> poison, i32 %325, i32 0
  %326 = load i32, ptr %__O.addr.i, align 4
  %vecinit1.i169 = insertelement <16 x i32> %vecinit.i168, i32 %326, i32 1
  %327 = load i32, ptr %__N.addr.i, align 4
  %vecinit2.i170 = insertelement <16 x i32> %vecinit1.i169, i32 %327, i32 2
  %328 = load i32, ptr %__M.addr.i, align 4
  %vecinit3.i171 = insertelement <16 x i32> %vecinit2.i170, i32 %328, i32 3
  %329 = load i32, ptr %__L.addr.i, align 4
  %vecinit4.i172 = insertelement <16 x i32> %vecinit3.i171, i32 %329, i32 4
  %330 = load i32, ptr %__K.addr.i, align 4
  %vecinit5.i173 = insertelement <16 x i32> %vecinit4.i172, i32 %330, i32 5
  %331 = load i32, ptr %__J.addr.i, align 4
  %vecinit6.i174 = insertelement <16 x i32> %vecinit5.i173, i32 %331, i32 6
  %332 = load i32, ptr %__I.addr.i, align 4
  %vecinit7.i175 = insertelement <16 x i32> %vecinit6.i174, i32 %332, i32 7
  %333 = load i32, ptr %__H.addr.i165, align 4
  %vecinit8.i176 = insertelement <16 x i32> %vecinit7.i175, i32 %333, i32 8
  %334 = load i32, ptr %__G.addr.i164, align 4
  %vecinit9.i177 = insertelement <16 x i32> %vecinit8.i176, i32 %334, i32 9
  %335 = load i32, ptr %__F.addr.i163, align 4
  %vecinit10.i178 = insertelement <16 x i32> %vecinit9.i177, i32 %335, i32 10
  %336 = load i32, ptr %__E.addr.i162, align 4
  %vecinit11.i179 = insertelement <16 x i32> %vecinit10.i178, i32 %336, i32 11
  %337 = load i32, ptr %__D.addr.i161, align 4
  %vecinit12.i180 = insertelement <16 x i32> %vecinit11.i179, i32 %337, i32 12
  %338 = load i32, ptr %__C.addr.i160, align 4
  %vecinit13.i181 = insertelement <16 x i32> %vecinit12.i180, i32 %338, i32 13
  %339 = load i32, ptr %__B.addr.i159, align 4
  %vecinit14.i182 = insertelement <16 x i32> %vecinit13.i181, i32 %339, i32 14
  %340 = load i32, ptr %__A.addr.i158, align 4
  %vecinit15.i183 = insertelement <16 x i32> %vecinit14.i182, i32 %340, i32 15
  store <16 x i32> %vecinit15.i183, ptr %.compoundliteral.i167, align 64
  %341 = load <16 x i32>, ptr %.compoundliteral.i167, align 64
  %342 = bitcast <16 x i32> %341 to <8 x i64>
  store <8 x i64> %342, ptr %xor_crc, align 64
  store i64 0, ptr %crc, align 8
  %343 = load <8 x i64>, ptr %data, align 64
  %344 = load <8 x i64>, ptr %xor_crc, align 64
  store <8 x i64> %343, ptr %__a.addr.i220, align 64
  store <8 x i64> %344, ptr %__b.addr.i221, align 64
  %345 = load <8 x i64>, ptr %__a.addr.i220, align 64
  %346 = load <8 x i64>, ptr %__b.addr.i221, align 64
  %xor.i222 = xor <8 x i64> %345, %346
  store <8 x i64> %xor.i222, ptr %data, align 64
  br label %while.cond67

while.cond67:                                     ; preds = %while.body70, %if.then61
  %347 = load i64, ptr %bytes_read, align 8
  %cmp68 = icmp uge i64 %347, 128
  br i1 %cmp68, label %while.body70, label %while.end76

while.body70:                                     ; preds = %while.cond67
  %348 = load ptr, ptr %datap, align 8
  %incdec.ptr = getelementptr inbounds <8 x i64>, ptr %348, i32 1
  store ptr %incdec.ptr, ptr %datap, align 8
  %349 = load <8 x i64>, ptr %data, align 64
  %350 = load <8 x i64>, ptr %single_mult_constant, align 64
  %351 = call <8 x i64> @llvm.x86.pclmulqdq.512(<8 x i64> %349, <8 x i64> %350, i8 0)
  store <8 x i64> %351, ptr %data2, align 64
  %352 = load <8 x i64>, ptr %data, align 64
  %353 = load <8 x i64>, ptr %single_mult_constant, align 64
  %354 = call <8 x i64> @llvm.x86.pclmulqdq.512(<8 x i64> %352, <8 x i64> %353, i8 17)
  store <8 x i64> %354, ptr %data, align 64
  %355 = load ptr, ptr %datap, align 8
  store ptr %355, ptr %__P.addr.i, align 8
  %356 = load ptr, ptr %__P.addr.i, align 8
  %357 = load <8 x i64>, ptr %356, align 1
  store <8 x i64> %357, ptr %fold_data, align 64
  %358 = load <8 x i64>, ptr %fold_data, align 64
  %359 = load <8 x i64>, ptr %shuffle_constant, align 64
  store <8 x i64> %358, ptr %__A.addr.i130, align 64
  store <8 x i64> %359, ptr %__B.addr.i131, align 64
  %360 = load <8 x i64>, ptr %__A.addr.i130, align 64
  %361 = bitcast <8 x i64> %360 to <64 x i8>
  %362 = load <8 x i64>, ptr %__B.addr.i131, align 64
  %363 = bitcast <8 x i64> %362 to <64 x i8>
  %364 = call <64 x i8> @llvm.x86.avx512.pshuf.b.512(<64 x i8> %361, <64 x i8> %363)
  %365 = bitcast <64 x i8> %364 to <8 x i64>
  store <8 x i64> %365, ptr %fold_data, align 64
  %366 = load <8 x i64>, ptr %data, align 64
  %367 = load <8 x i64>, ptr %data2, align 64
  store <8 x i64> %366, ptr %__a.addr.i217, align 64
  store <8 x i64> %367, ptr %__b.addr.i218, align 64
  %368 = load <8 x i64>, ptr %__a.addr.i217, align 64
  %369 = load <8 x i64>, ptr %__b.addr.i218, align 64
  %xor.i219 = xor <8 x i64> %368, %369
  store <8 x i64> %xor.i219, ptr %data, align 64
  %370 = load <8 x i64>, ptr %data, align 64
  %371 = load <8 x i64>, ptr %fold_data, align 64
  store <8 x i64> %370, ptr %__a.addr.i, align 64
  store <8 x i64> %371, ptr %__b.addr.i, align 64
  %372 = load <8 x i64>, ptr %__a.addr.i, align 64
  %373 = load <8 x i64>, ptr %__b.addr.i, align 64
  %xor.i = xor <8 x i64> %372, %373
  store <8 x i64> %xor.i, ptr %data, align 64
  %374 = load i64, ptr %bytes_read, align 8
  %sub75 = sub i64 %374, 64
  store i64 %sub75, ptr %bytes_read, align 8
  br label %while.cond67, !llvm.loop !8

while.end76:                                      ; preds = %while.cond67
  %375 = load <8 x i64>, ptr %data, align 64
  %376 = load <8 x i64>, ptr %shuffle_constant, align 64
  store <8 x i64> %375, ptr %__A.addr.i128, align 64
  store <8 x i64> %376, ptr %__B.addr.i129, align 64
  %377 = load <8 x i64>, ptr %__A.addr.i128, align 64
  %378 = bitcast <8 x i64> %377 to <64 x i8>
  %379 = load <8 x i64>, ptr %__B.addr.i129, align 64
  %380 = bitcast <8 x i64> %379 to <64 x i8>
  %381 = call <64 x i8> @llvm.x86.avx512.pshuf.b.512(<64 x i8> %378, <64 x i8> %380)
  %382 = bitcast <64 x i8> %381 to <8 x i64>
  store <8 x i64> %382, ptr %data, align 64
  %383 = load ptr, ptr %datap, align 8
  %384 = load <8 x i64>, ptr %data, align 64
  store ptr %383, ptr %__P.addr.i250, align 8
  store <8 x i64> %384, ptr %__A.addr.i251, align 64
  %385 = load <8 x i64>, ptr %__A.addr.i251, align 64
  %386 = load ptr, ptr %__P.addr.i250, align 8
  store <8 x i64> %385, ptr %386, align 1
  br label %if.end78

if.end78:                                         ; preds = %while.end76, %if.end58
  %387 = load ptr, ptr %datap, align 8
  store ptr %387, ptr %cp, align 8
  br label %while.cond79

while.cond79:                                     ; preds = %while.body81, %if.end78
  %388 = load i64, ptr %bytes_read, align 8
  %dec = add i64 %388, -1
  store i64 %dec, ptr %bytes_read, align 8
  %tobool80 = icmp ne i64 %388, 0
  br i1 %tobool80, label %while.body81, label %while.end85

while.body81:                                     ; preds = %while.cond79
  %389 = load i64, ptr %crc, align 8
  %shl = shl i64 %389, 8
  %390 = load i64, ptr %crc, align 8
  %shr = lshr i64 %390, 24
  %391 = load ptr, ptr %cp, align 8
  %incdec.ptr82 = getelementptr inbounds i8, ptr %391, i32 1
  store ptr %incdec.ptr82, ptr %cp, align 8
  %392 = load i8, ptr %391, align 1
  %conv83 = zext i8 %392 to i64
  %xor = xor i64 %shr, %conv83
  %and = and i64 %xor, 255
  %arrayidx = getelementptr inbounds [256 x i64], ptr @crctab, i64 0, i64 %and
  %393 = load i64, ptr %arrayidx, align 8
  %xor84 = xor i64 %shl, %393
  store i64 %xor84, ptr %crc, align 8
  br label %while.cond79, !llvm.loop !9

while.end85:                                      ; preds = %while.cond79
  %394 = load ptr, ptr %fp.addr, align 8
  %call86 = call i32 @feof_unlocked(ptr noundef %394) #6
  %tobool87 = icmp ne i32 %call86, 0
  br i1 %tobool87, label %if.then88, label %if.end89

if.then88:                                        ; preds = %while.end85
  br label %while.end90

if.end89:                                         ; preds = %while.end85
  br label %while.cond, !llvm.loop !10

while.end90:                                      ; preds = %if.then88, %while.cond
  %395 = load i64, ptr %crc, align 8
  %396 = load ptr, ptr %crc_out.addr, align 8
  store i64 %395, ptr %396, align 8
  %397 = load i64, ptr %length, align 8
  %398 = load ptr, ptr %length_out.addr, align 8
  store i64 %397, ptr %398, align 8
  %399 = load ptr, ptr %fp.addr, align 8
  %call91 = call i32 @ferror_unlocked(ptr noundef %399) #6
  %tobool92 = icmp ne i32 %call91, 0
  %lnot = xor i1 %tobool92, true
  store i1 %lnot, ptr %retval, align 1
  br label %return

return:                                           ; preds = %while.end90, %if.then8, %if.then
  %400 = load i1, ptr %retval, align 1
  ret i1 %400
}

declare i64 @fread_unlocked(ptr noundef, i64 noundef, i64 noundef, ptr noundef) #1

; Function Attrs: nounwind willreturn memory(none)
declare ptr @__errno_location() #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <64 x i8> @llvm.x86.avx512.pshuf.b.512(<64 x i8>, <64 x i8>) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <8 x i64> @llvm.x86.pclmulqdq.512(<8 x i64>, <8 x i64>, i8 immarg) #3

; Function Attrs: nounwind
declare i32 @feof_unlocked(ptr noundef) #4

; Function Attrs: nounwind
declare i32 @ferror_unlocked(ptr noundef) #4

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="512" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+avx512bw,+avx512f,+cmov,+crc32,+cx8,+evex512,+f16c,+fma,+fxsr,+mmx,+pclmul,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vpclmulqdq,+x87,+xsave" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+avx512bw,+avx512f,+cmov,+crc32,+cx8,+evex512,+f16c,+fma,+fxsr,+mmx,+pclmul,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vpclmulqdq,+x87,+xsave" "tune-cpu"="generic" }
attributes #2 = { nounwind willreturn memory(none) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+avx512bw,+avx512f,+cmov,+crc32,+cx8,+evex512,+f16c,+fma,+fxsr,+mmx,+pclmul,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vpclmulqdq,+x87,+xsave" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #4 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+avx512bw,+avx512f,+cmov,+crc32,+cx8,+evex512,+f16c,+fma,+fxsr,+mmx,+pclmul,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vpclmulqdq,+x87,+xsave" "tune-cpu"="generic" }
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
