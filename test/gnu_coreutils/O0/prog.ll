; ModuleID = 'llvm-link'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.__va_list_tag = type { i32, i32, ptr, ptr }

@program_name = external global ptr, align 8
@.str = private unnamed_addr constant [3 x i8] c": \00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @prog_fprintf(ptr noundef nonnull %fp, ptr noundef nonnull %fmt, ...) #0 {
entry:
  %fp.addr = alloca ptr, align 8
  %fmt.addr = alloca ptr, align 8
  %ap = alloca [1 x %struct.__va_list_tag], align 16
  store ptr %fp, ptr %fp.addr, align 8
  store ptr %fmt, ptr %fmt.addr, align 8
  %0 = load ptr, ptr @program_name, align 8
  %1 = load ptr, ptr %fp.addr, align 8
  %call = call i32 @fputs_unlocked(ptr noundef %0, ptr noundef %1)
  %2 = load ptr, ptr %fp.addr, align 8
  %call1 = call i32 @fputs_unlocked(ptr noundef @.str, ptr noundef %2)
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %ap, i64 0, i64 0
  call void @llvm.va_start(ptr %arraydecay)
  %3 = load ptr, ptr %fp.addr, align 8
  %4 = load ptr, ptr %fmt.addr, align 8
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %ap, i64 0, i64 0
  %call3 = call i32 @vfprintf(ptr noundef %3, ptr noundef %4, ptr noundef %arraydecay2)
  %arraydecay4 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %ap, i64 0, i64 0
  call void @llvm.va_end(ptr %arraydecay4)
  %5 = load ptr, ptr %fp.addr, align 8
  %call5 = call i32 @fputc_unlocked(i32 noundef 10, ptr noundef %5)
  ret void
}

declare i32 @fputs_unlocked(ptr noundef, ptr noundef) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #2

declare i32 @vfprintf(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #2

declare i32 @fputc_unlocked(i32 noundef, ptr noundef) #1

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn }

!llvm.ident = !{!0}
!llvm.module.flags = !{!1, !2, !3, !4, !5}

!0 = !{!"clang version 18.1.8 (https://github.com/llvm/llvm-project.git 3b5b5c1ec4a3095ab096dd780e84d7ab81f3d7ff)"}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"frame-pointer", i32 2}
