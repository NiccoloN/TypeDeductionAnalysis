; ModuleID = 'llvm-link'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.__va_list_tag = type { i32, i32, ptr, ptr }
%struct._IO_FILE = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, [1 x i8], ptr, i64, ptr, ptr, ptr, ptr, i64, i32, [20 x i8] }

@program_name = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [3 x i8] c": \00", align 1

; Function Attrs: nounwind uwtable
define dso_local void @prog_fprintf(ptr noundef nonnull %fp, ptr noundef nonnull %fmt, ...) local_unnamed_addr #0 {
entry:
  %ap = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %ap) #5
  %0 = load ptr, ptr @program_name, align 8, !tbaa !5
  %call = tail call i32 @fputs_unlocked(ptr noundef %0, ptr noundef nonnull %fp)
  %call1 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str, ptr noundef nonnull %fp)
  call void @llvm.va_start(ptr nonnull %ap)
  %call.i = call i32 @__vfprintf_chk(ptr noundef nonnull %fp, i32 noundef 1, ptr noundef nonnull %fmt, ptr noundef nonnull %ap) #5
  call void @llvm.va_end(ptr nonnull %ap)
  %_IO_write_ptr.i = getelementptr inbounds %struct._IO_FILE, ptr %fp, i64 0, i32 5
  %1 = load ptr, ptr %_IO_write_ptr.i, align 8, !tbaa !9
  %_IO_write_end.i = getelementptr inbounds %struct._IO_FILE, ptr %fp, i64 0, i32 6
  %2 = load ptr, ptr %_IO_write_end.i, align 8, !tbaa !14
  %cmp.not.i = icmp ult ptr %1, %2
  br i1 %cmp.not.i, label %cond.false.i, label %cond.true.i, !prof !15

cond.true.i:                                      ; preds = %entry
  %call.i9 = call i32 @__overflow(ptr noundef nonnull %fp, i32 noundef 10) #5
  br label %fputc_unlocked.exit

cond.false.i:                                     ; preds = %entry
  %incdec.ptr.i = getelementptr inbounds i8, ptr %1, i64 1
  store ptr %incdec.ptr.i, ptr %_IO_write_ptr.i, align 8, !tbaa !9
  store i8 10, ptr %1, align 1, !tbaa !16
  br label %fputc_unlocked.exit

fputc_unlocked.exit:                              ; preds = %cond.false.i, %cond.true.i
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %ap) #5
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree nounwind
declare noundef i32 @fputs_unlocked(ptr nocapture noundef readonly, ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #3

declare i32 @__vfprintf_chk(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #3

declare i32 @__overflow(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }

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
!9 = !{!10, !6, i64 40, i64 8}
!10 = !{!7, i64 216, !"_IO_FILE", !11, i64 0, i64 4, !6, i64 8, i64 8, !6, i64 16, i64 8, !6, i64 24, i64 8, !6, i64 32, i64 8, !6, i64 40, i64 8, !6, i64 48, i64 8, !6, i64 56, i64 8, !6, i64 64, i64 8, !6, i64 72, i64 8, !6, i64 80, i64 8, !6, i64 88, i64 8, !6, i64 96, i64 8, !6, i64 104, i64 8, !11, i64 112, i64 4, !11, i64 116, i64 4, !12, i64 120, i64 8, !13, i64 128, i64 2, !7, i64 130, i64 1, !7, i64 131, i64 1, !6, i64 136, i64 8, !12, i64 144, i64 8, !6, i64 152, i64 8, !6, i64 160, i64 8, !6, i64 168, i64 8, !6, i64 176, i64 8, !12, i64 184, i64 8, !11, i64 192, i64 4, !7, i64 196, i64 20}
!11 = !{!7, i64 4, !"int"}
!12 = !{!7, i64 8, !"long"}
!13 = !{!7, i64 2, !"short"}
!14 = !{!10, !6, i64 48, i64 8}
!15 = !{!"branch_weights", i32 2000, i32 1}
!16 = !{!7, !7, i64 0, i64 1}
