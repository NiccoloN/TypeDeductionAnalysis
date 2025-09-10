; ModuleID = 'llvm-link'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wc_lines = type { i32, i64, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @wc_lines_avx2(ptr dead_on_unwind noalias writable sret(%struct.wc_lines) align 8 %agg.result, i32 noundef %fd) #0 {
entry:
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
  %.compoundliteral.i = alloca <32 x i8>, align 32
  %__a.addr.i23 = alloca <4 x i64>, align 32
  %__a.addr.i = alloca <4 x i64>, align 32
  %__b.addr.i22 = alloca <4 x i64>, align 32
  %__p.addr.i = alloca ptr, align 8
  %__b.addr.i = alloca i8, align 1
  %fd.addr = alloca i32, align 4
  %lines = alloca i64, align 8
  %bytes = alloca i64, align 8
  %endlines = alloca <4 x i64>, align 32
  %avx_buf = alloca [8192 x <4 x i64>], align 32
  %bytes_read = alloca i64, align 8
  %datap = alloca ptr, align 8
  %to_match = alloca <4 x i64>, align 32
  %matches = alloca <4 x i64>, align 32
  %mask = alloca i32, align 4
  %end = alloca ptr, align 8
  %p = alloca ptr, align 8
  store i32 %fd, ptr %fd.addr, align 4
  store i64 0, ptr %lines, align 8
  store i64 0, ptr %bytes, align 8
  store i8 10, ptr %__b.addr.i, align 1
  %0 = load i8, ptr %__b.addr.i, align 1
  %1 = load i8, ptr %__b.addr.i, align 1
  %2 = load i8, ptr %__b.addr.i, align 1
  %3 = load i8, ptr %__b.addr.i, align 1
  %4 = load i8, ptr %__b.addr.i, align 1
  %5 = load i8, ptr %__b.addr.i, align 1
  %6 = load i8, ptr %__b.addr.i, align 1
  %7 = load i8, ptr %__b.addr.i, align 1
  %8 = load i8, ptr %__b.addr.i, align 1
  %9 = load i8, ptr %__b.addr.i, align 1
  %10 = load i8, ptr %__b.addr.i, align 1
  %11 = load i8, ptr %__b.addr.i, align 1
  %12 = load i8, ptr %__b.addr.i, align 1
  %13 = load i8, ptr %__b.addr.i, align 1
  %14 = load i8, ptr %__b.addr.i, align 1
  %15 = load i8, ptr %__b.addr.i, align 1
  %16 = load i8, ptr %__b.addr.i, align 1
  %17 = load i8, ptr %__b.addr.i, align 1
  %18 = load i8, ptr %__b.addr.i, align 1
  %19 = load i8, ptr %__b.addr.i, align 1
  %20 = load i8, ptr %__b.addr.i, align 1
  %21 = load i8, ptr %__b.addr.i, align 1
  %22 = load i8, ptr %__b.addr.i, align 1
  %23 = load i8, ptr %__b.addr.i, align 1
  %24 = load i8, ptr %__b.addr.i, align 1
  %25 = load i8, ptr %__b.addr.i, align 1
  %26 = load i8, ptr %__b.addr.i, align 1
  %27 = load i8, ptr %__b.addr.i, align 1
  %28 = load i8, ptr %__b.addr.i, align 1
  %29 = load i8, ptr %__b.addr.i, align 1
  %30 = load i8, ptr %__b.addr.i, align 1
  %31 = load i8, ptr %__b.addr.i, align 1
  store i8 %0, ptr %__b31.addr.i, align 1
  store i8 %1, ptr %__b30.addr.i, align 1
  store i8 %2, ptr %__b29.addr.i, align 1
  store i8 %3, ptr %__b28.addr.i, align 1
  store i8 %4, ptr %__b27.addr.i, align 1
  store i8 %5, ptr %__b26.addr.i, align 1
  store i8 %6, ptr %__b25.addr.i, align 1
  store i8 %7, ptr %__b24.addr.i, align 1
  store i8 %8, ptr %__b23.addr.i, align 1
  store i8 %9, ptr %__b22.addr.i, align 1
  store i8 %10, ptr %__b21.addr.i, align 1
  store i8 %11, ptr %__b20.addr.i, align 1
  store i8 %12, ptr %__b19.addr.i, align 1
  store i8 %13, ptr %__b18.addr.i, align 1
  store i8 %14, ptr %__b17.addr.i, align 1
  store i8 %15, ptr %__b16.addr.i, align 1
  store i8 %16, ptr %__b15.addr.i, align 1
  store i8 %17, ptr %__b14.addr.i, align 1
  store i8 %18, ptr %__b13.addr.i, align 1
  store i8 %19, ptr %__b12.addr.i, align 1
  store i8 %20, ptr %__b11.addr.i, align 1
  store i8 %21, ptr %__b10.addr.i, align 1
  store i8 %22, ptr %__b09.addr.i, align 1
  store i8 %23, ptr %__b08.addr.i, align 1
  store i8 %24, ptr %__b07.addr.i, align 1
  store i8 %25, ptr %__b06.addr.i, align 1
  store i8 %26, ptr %__b05.addr.i, align 1
  store i8 %27, ptr %__b04.addr.i, align 1
  store i8 %28, ptr %__b03.addr.i, align 1
  store i8 %29, ptr %__b02.addr.i, align 1
  store i8 %30, ptr %__b01.addr.i, align 1
  store i8 %31, ptr %__b00.addr.i, align 1
  %32 = load i8, ptr %__b00.addr.i, align 1
  %vecinit.i = insertelement <32 x i8> poison, i8 %32, i32 0
  %33 = load i8, ptr %__b01.addr.i, align 1
  %vecinit1.i = insertelement <32 x i8> %vecinit.i, i8 %33, i32 1
  %34 = load i8, ptr %__b02.addr.i, align 1
  %vecinit2.i = insertelement <32 x i8> %vecinit1.i, i8 %34, i32 2
  %35 = load i8, ptr %__b03.addr.i, align 1
  %vecinit3.i = insertelement <32 x i8> %vecinit2.i, i8 %35, i32 3
  %36 = load i8, ptr %__b04.addr.i, align 1
  %vecinit4.i = insertelement <32 x i8> %vecinit3.i, i8 %36, i32 4
  %37 = load i8, ptr %__b05.addr.i, align 1
  %vecinit5.i = insertelement <32 x i8> %vecinit4.i, i8 %37, i32 5
  %38 = load i8, ptr %__b06.addr.i, align 1
  %vecinit6.i = insertelement <32 x i8> %vecinit5.i, i8 %38, i32 6
  %39 = load i8, ptr %__b07.addr.i, align 1
  %vecinit7.i = insertelement <32 x i8> %vecinit6.i, i8 %39, i32 7
  %40 = load i8, ptr %__b08.addr.i, align 1
  %vecinit8.i = insertelement <32 x i8> %vecinit7.i, i8 %40, i32 8
  %41 = load i8, ptr %__b09.addr.i, align 1
  %vecinit9.i = insertelement <32 x i8> %vecinit8.i, i8 %41, i32 9
  %42 = load i8, ptr %__b10.addr.i, align 1
  %vecinit10.i = insertelement <32 x i8> %vecinit9.i, i8 %42, i32 10
  %43 = load i8, ptr %__b11.addr.i, align 1
  %vecinit11.i = insertelement <32 x i8> %vecinit10.i, i8 %43, i32 11
  %44 = load i8, ptr %__b12.addr.i, align 1
  %vecinit12.i = insertelement <32 x i8> %vecinit11.i, i8 %44, i32 12
  %45 = load i8, ptr %__b13.addr.i, align 1
  %vecinit13.i = insertelement <32 x i8> %vecinit12.i, i8 %45, i32 13
  %46 = load i8, ptr %__b14.addr.i, align 1
  %vecinit14.i = insertelement <32 x i8> %vecinit13.i, i8 %46, i32 14
  %47 = load i8, ptr %__b15.addr.i, align 1
  %vecinit15.i = insertelement <32 x i8> %vecinit14.i, i8 %47, i32 15
  %48 = load i8, ptr %__b16.addr.i, align 1
  %vecinit16.i = insertelement <32 x i8> %vecinit15.i, i8 %48, i32 16
  %49 = load i8, ptr %__b17.addr.i, align 1
  %vecinit17.i = insertelement <32 x i8> %vecinit16.i, i8 %49, i32 17
  %50 = load i8, ptr %__b18.addr.i, align 1
  %vecinit18.i = insertelement <32 x i8> %vecinit17.i, i8 %50, i32 18
  %51 = load i8, ptr %__b19.addr.i, align 1
  %vecinit19.i = insertelement <32 x i8> %vecinit18.i, i8 %51, i32 19
  %52 = load i8, ptr %__b20.addr.i, align 1
  %vecinit20.i = insertelement <32 x i8> %vecinit19.i, i8 %52, i32 20
  %53 = load i8, ptr %__b21.addr.i, align 1
  %vecinit21.i = insertelement <32 x i8> %vecinit20.i, i8 %53, i32 21
  %54 = load i8, ptr %__b22.addr.i, align 1
  %vecinit22.i = insertelement <32 x i8> %vecinit21.i, i8 %54, i32 22
  %55 = load i8, ptr %__b23.addr.i, align 1
  %vecinit23.i = insertelement <32 x i8> %vecinit22.i, i8 %55, i32 23
  %56 = load i8, ptr %__b24.addr.i, align 1
  %vecinit24.i = insertelement <32 x i8> %vecinit23.i, i8 %56, i32 24
  %57 = load i8, ptr %__b25.addr.i, align 1
  %vecinit25.i = insertelement <32 x i8> %vecinit24.i, i8 %57, i32 25
  %58 = load i8, ptr %__b26.addr.i, align 1
  %vecinit26.i = insertelement <32 x i8> %vecinit25.i, i8 %58, i32 26
  %59 = load i8, ptr %__b27.addr.i, align 1
  %vecinit27.i = insertelement <32 x i8> %vecinit26.i, i8 %59, i32 27
  %60 = load i8, ptr %__b28.addr.i, align 1
  %vecinit28.i = insertelement <32 x i8> %vecinit27.i, i8 %60, i32 28
  %61 = load i8, ptr %__b29.addr.i, align 1
  %vecinit29.i = insertelement <32 x i8> %vecinit28.i, i8 %61, i32 29
  %62 = load i8, ptr %__b30.addr.i, align 1
  %vecinit30.i = insertelement <32 x i8> %vecinit29.i, i8 %62, i32 30
  %63 = load i8, ptr %__b31.addr.i, align 1
  %vecinit31.i = insertelement <32 x i8> %vecinit30.i, i8 %63, i32 31
  store <32 x i8> %vecinit31.i, ptr %.compoundliteral.i, align 32
  %64 = load <32 x i8>, ptr %.compoundliteral.i, align 32
  %65 = bitcast <32 x i8> %64 to <4 x i64>
  store <4 x i64> %65, ptr %endlines, align 32
  br label %while.body

while.body:                                       ; preds = %for.end, %entry
  %66 = load i32, ptr %fd.addr, align 4
  %arraydecay = getelementptr inbounds [8192 x <4 x i64>], ptr %avx_buf, i64 0, i64 0
  %call1 = call i64 @read(i32 noundef %66, ptr noundef %arraydecay, i64 noundef 262144)
  store i64 %call1, ptr %bytes_read, align 8
  %67 = load i64, ptr %bytes_read, align 8
  %cmp = icmp sle i64 %67, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  %err = getelementptr inbounds %struct.wc_lines, ptr %agg.result, i32 0, i32 0
  %68 = load i64, ptr %bytes_read, align 8
  %cmp2 = icmp eq i64 %68, 0
  br i1 %cmp2, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then
  br label %cond.end

cond.false:                                       ; preds = %if.then
  %call3 = call ptr @__errno_location() #5
  %69 = load i32, ptr %call3, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %69, %cond.false ]
  store i32 %cond, ptr %err, align 8
  %lines4 = getelementptr inbounds %struct.wc_lines, ptr %agg.result, i32 0, i32 1
  %70 = load i64, ptr %lines, align 8
  store i64 %70, ptr %lines4, align 8
  %bytes5 = getelementptr inbounds %struct.wc_lines, ptr %agg.result, i32 0, i32 2
  %71 = load i64, ptr %bytes, align 8
  store i64 %71, ptr %bytes5, align 8
  ret void

if.end:                                           ; preds = %while.body
  %72 = load i64, ptr %bytes_read, align 8
  %73 = load i64, ptr %bytes, align 8
  %add = add nsw i64 %73, %72
  store i64 %add, ptr %bytes, align 8
  %arraydecay6 = getelementptr inbounds [8192 x <4 x i64>], ptr %avx_buf, i64 0, i64 0
  store ptr %arraydecay6, ptr %datap, align 8
  br label %while.cond7

while.cond7:                                      ; preds = %while.body9, %if.end
  %74 = load i64, ptr %bytes_read, align 8
  %cmp8 = icmp sge i64 %74, 32
  br i1 %cmp8, label %while.body9, label %while.end

while.body9:                                      ; preds = %while.cond7
  %75 = load ptr, ptr %datap, align 8
  store ptr %75, ptr %__p.addr.i, align 8
  %76 = load ptr, ptr %__p.addr.i, align 8
  %77 = load <4 x i64>, ptr %76, align 32
  store <4 x i64> %77, ptr %to_match, align 32
  %78 = load <4 x i64>, ptr %to_match, align 32
  %79 = load <4 x i64>, ptr %endlines, align 32
  store <4 x i64> %78, ptr %__a.addr.i, align 32
  store <4 x i64> %79, ptr %__b.addr.i22, align 32
  %80 = load <4 x i64>, ptr %__a.addr.i, align 32
  %81 = bitcast <4 x i64> %80 to <32 x i8>
  %82 = load <4 x i64>, ptr %__b.addr.i22, align 32
  %83 = bitcast <4 x i64> %82 to <32 x i8>
  %cmp.i = icmp eq <32 x i8> %81, %83
  %sext.i = sext <32 x i1> %cmp.i to <32 x i8>
  %84 = bitcast <32 x i8> %sext.i to <4 x i64>
  store <4 x i64> %84, ptr %matches, align 32
  %85 = load <4 x i64>, ptr %matches, align 32
  store <4 x i64> %85, ptr %__a.addr.i23, align 32
  %86 = load <4 x i64>, ptr %__a.addr.i23, align 32
  %87 = bitcast <4 x i64> %86 to <32 x i8>
  %88 = call i32 @llvm.x86.avx2.pmovmskb(<32 x i8> %87)
  store i32 %88, ptr %mask, align 4
  %89 = load i32, ptr %mask, align 4
  %90 = call i32 @llvm.ctpop.i32(i32 %89)
  %conv = sext i32 %90 to i64
  %91 = load i64, ptr %lines, align 8
  %add13 = add nsw i64 %91, %conv
  store i64 %add13, ptr %lines, align 8
  %92 = load ptr, ptr %datap, align 8
  %add.ptr = getelementptr inbounds <4 x i64>, ptr %92, i64 1
  store ptr %add.ptr, ptr %datap, align 8
  %93 = load i64, ptr %bytes_read, align 8
  %sub = sub nsw i64 %93, 32
  store i64 %sub, ptr %bytes_read, align 8
  br label %while.cond7, !llvm.loop !6

while.end:                                        ; preds = %while.cond7
  %94 = load ptr, ptr %datap, align 8
  %95 = load i64, ptr %bytes_read, align 8
  %add.ptr14 = getelementptr inbounds i8, ptr %94, i64 %95
  store ptr %add.ptr14, ptr %end, align 8
  %96 = load ptr, ptr %datap, align 8
  store ptr %96, ptr %p, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %while.end
  %97 = load ptr, ptr %p, align 8
  %98 = load ptr, ptr %end, align 8
  %cmp15 = icmp ult ptr %97, %98
  br i1 %cmp15, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %99 = load ptr, ptr %p, align 8
  %100 = load i8, ptr %99, align 1
  %conv17 = sext i8 %100 to i32
  %cmp18 = icmp eq i32 %conv17, 10
  %conv19 = zext i1 %cmp18 to i32
  %conv20 = sext i32 %conv19 to i64
  %101 = load i64, ptr %lines, align 8
  %add21 = add nsw i64 %101, %conv20
  store i64 %add21, ptr %lines, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %102 = load ptr, ptr %p, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %102, i32 1
  store ptr %incdec.ptr, ptr %p, align 8
  br label %for.cond, !llvm.loop !8

for.end:                                          ; preds = %for.cond
  br label %while.body
}

declare i64 @read(i32 noundef, ptr noundef, i64 noundef) #1

; Function Attrs: nounwind willreturn memory(none)
declare ptr @__errno_location() #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i32 @llvm.x86.avx2.pmovmskb(<32 x i8>) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctpop.i32(i32) #4

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="256" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #2 = { nounwind willreturn memory(none) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nounwind willreturn memory(none) }

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
