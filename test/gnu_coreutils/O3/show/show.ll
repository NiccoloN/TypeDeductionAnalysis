; ModuleID = 'llvm-link'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timespec = type { i64, i64 }
%struct.tm = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, ptr }

@stdout = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [24 x i8] c"time %s is out of range\00", align 1

; Function Attrs: nounwind uwtable
define dso_local noundef zeroext i1 @show_date(ptr noundef %format, i64 %when.coerce0, i64 %when.coerce1, ptr noundef %tz) local_unnamed_addr #0 {
entry:
  %when = alloca %struct.timespec, align 8
  %tm = alloca %struct.tm, align 8
  %buf = alloca [21 x i8], align 16
  store i64 %when.coerce0, ptr %when, align 8
  %0 = getelementptr inbounds { i64, i64 }, ptr %when, i64 0, i32 1
  store i64 %when.coerce1, ptr %0, align 8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %tm) #5
  %call = call ptr @localtime_rz(ptr noundef %tz, ptr noundef nonnull %when, ptr noundef nonnull %tm) #5
  %tobool.not = icmp ne ptr %call, null
  br i1 %tobool.not, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr @stdout, align 8, !tbaa !5
  %2 = load i64, ptr %0, align 8, !tbaa !9
  %conv = trunc i64 %2 to i32
  %call1 = call i64 @fprintftime(ptr noundef %1, ptr noundef %format, ptr noundef nonnull %tm, ptr noundef %tz, i32 noundef %conv) #5
  br label %cleanup

if.else:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 21, ptr nonnull %buf) #5
  %call2 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str, i32 noundef 5) #5
  %3 = load i64, ptr %when, align 8, !tbaa !12
  %call.i = call ptr @imaxtostr(i64 noundef %3, ptr noundef nonnull %buf) #5
  %call5 = call ptr @quote(ptr noundef %call.i) #5
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %call2, ptr noundef %call5) #6
  call void @llvm.lifetime.end.p0(i64 21, ptr nonnull %buf) #5
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %tm) #5
  ret i1 %tobool.not
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare ptr @localtime_rz(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i64 @fprintftime(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare ptr @dcgettext(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @imaxtostr(i64 noundef, ptr noundef) local_unnamed_addr #2

declare ptr @quote(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold
declare void @error(i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }
attributes #6 = { cold nounwind }

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
!9 = !{!10, !11, i64 8, i64 8}
!10 = !{!7, i64 16, !"timespec", !11, i64 0, i64 8, !11, i64 8, i64 8}
!11 = !{!7, i64 8, !"long"}
!12 = !{!10, !11, i64 0, i64 8}
