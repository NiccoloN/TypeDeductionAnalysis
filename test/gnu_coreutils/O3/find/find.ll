; ModuleID = 'llvm-link'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.saved_cwd = type { i32, ptr }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }

@.str = private unnamed_addr constant [29 x i8] c"cannot get current directory\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"cannot change to directory %s\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.3 = private unnamed_addr constant [39 x i8] c"cannot stat current directory (now %s)\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"..\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"cannot stat %s\00", align 1
@.str.6 = private unnamed_addr constant [46 x i8] c"failed to return to initial working directory\00", align 1

; Function Attrs: nounwind uwtable
define dso_local noalias ptr @find_mount_point(ptr noundef nonnull %file, ptr nocapture noundef nonnull readonly %file_stat) local_unnamed_addr #0 {
entry:
  %cwd = alloca %struct.saved_cwd, align 8
  %last_stat = alloca %struct.stat, align 8
  %st = alloca %struct.stat, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %cwd) #10
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %last_stat) #10
  %call = call i32 @save_cwd(ptr noundef nonnull %cwd) #10
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call1 = tail call ptr @__errno_location() #11
  %0 = load i32, ptr %call1, align 4, !tbaa !5
  %call2 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str, i32 noundef 5) #10
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %0, ptr noundef %call2) #12
  br label %cleanup63

if.end:                                           ; preds = %entry
  %st_mode = getelementptr inbounds %struct.stat, ptr %file_stat, i64 0, i32 3
  %1 = load i32, ptr %st_mode, align 8, !tbaa !9
  %and = and i32 %1, 61440
  %cmp3 = icmp eq i32 %and, 16384
  br i1 %cmp3, label %if.then4, label %if.else

if.then4:                                         ; preds = %if.end
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %last_stat, ptr noundef nonnull align 8 dereferenceable(144) %file_stat, i64 144, i1 false), !tbaa !13, !tbaa.struct !14
  %call5 = call i32 @chdir(ptr noundef nonnull %file) #10
  %cmp6 = icmp slt i32 %call5, 0
  br i1 %cmp6, label %if.then7, label %if.end30

if.then7:                                         ; preds = %if.then4
  %call8 = tail call ptr @__errno_location() #11
  %2 = load i32, ptr %call8, align 4, !tbaa !5
  %call9 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.1, i32 noundef 5) #10
  %call10 = call ptr @quotearg_style(i32 noundef 4, ptr noundef nonnull %file) #10
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %2, ptr noundef %call9, ptr noundef %call10) #12
  br label %cleanup63

if.else:                                          ; preds = %if.end
  %call12 = call noalias nonnull ptr @dir_name(ptr noundef nonnull %file) #10
  %call13 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %call12) #13
  %add = add i64 %call13, 1
  %3 = alloca i8, i64 %add, align 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 %3, ptr noundef nonnull align 1 %call12, i64 noundef %add, i1 noundef false) #10
  call void @free(ptr noundef nonnull %call12) #10
  %call15 = call i32 @chdir(ptr noundef nonnull %3) #10
  %cmp16 = icmp slt i32 %call15, 0
  br i1 %cmp16, label %cleanup.thread, label %if.end21

cleanup.thread:                                   ; preds = %if.else
  %call18 = tail call ptr @__errno_location() #11
  %4 = load i32, ptr %call18, align 4, !tbaa !5
  %call19 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.1, i32 noundef 5) #10
  %call20 = call ptr @quotearg_style(i32 noundef 4, ptr noundef nonnull %3) #10
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %4, ptr noundef %call19, ptr noundef %call20) #12
  br label %cleanup63

if.end21:                                         ; preds = %if.else
  %call22 = call i32 @stat(ptr noundef nonnull @.str.2, ptr noundef nonnull %last_stat) #10
  %cmp23 = icmp slt i32 %call22, 0
  br i1 %cmp23, label %cleanup, label %if.end30

cleanup:                                          ; preds = %if.end21
  %call25 = tail call ptr @__errno_location() #11
  %5 = load i32, ptr %call25, align 4, !tbaa !5
  %call26 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.3, i32 noundef 5) #10
  %call27 = call ptr @quotearg_style(i32 noundef 4, ptr noundef nonnull %3) #10
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %5, ptr noundef %call26, ptr noundef %call27) #12
  br label %done

if.end30:                                         ; preds = %if.end21, %if.then4
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %st) #10
  %call3182 = call i32 @stat(ptr noundef nonnull @.str.4, ptr noundef nonnull %st) #10
  %cmp3283 = icmp slt i32 %call3182, 0
  br i1 %cmp3283, label %cleanup51.thread80, label %if.end37.lr.ph

if.end37.lr.ph:                                   ; preds = %if.end30
  %st_ino = getelementptr inbounds %struct.stat, ptr %st, i64 0, i32 1
  %st_ino40 = getelementptr inbounds %struct.stat, ptr %last_stat, i64 0, i32 1
  %6 = load i64, ptr %st_ino40, align 8
  br label %if.end37

if.end37:                                         ; preds = %cleanup51, %if.end37.lr.ph
  %7 = load i64, ptr %st, align 8, !tbaa !17
  %8 = load i64, ptr %last_stat, align 8, !tbaa !17
  %cmp39.not = icmp ne i64 %7, %8
  %9 = load i64, ptr %st_ino, align 8
  %cmp41 = icmp eq i64 %9, %6
  %or.cond = select i1 %cmp39.not, i1 true, i1 %cmp41
  br i1 %or.cond, label %while.end, label %if.end43

if.end43:                                         ; preds = %if.end37
  %call44 = call i32 @chdir(ptr noundef nonnull @.str.4) #10
  %cmp45 = icmp slt i32 %call44, 0
  br i1 %cmp45, label %cleanup51.thread80, label %cleanup51

cleanup51.thread80:                               ; preds = %cleanup51, %if.end43, %if.end30
  %.str.5.sink = phi ptr [ @.str.5, %if.end30 ], [ @.str.5, %cleanup51 ], [ @.str.1, %if.end43 ]
  %call34 = tail call ptr @__errno_location() #11
  %10 = load i32, ptr %call34, align 4, !tbaa !5
  %call35 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull %.str.5.sink, i32 noundef 5) #10
  %call36 = call ptr @quotearg_style(i32 noundef 4, ptr noundef nonnull @.str.4) #10
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %10, ptr noundef %call35, ptr noundef %call36) #12
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %st) #10
  br label %done

cleanup51:                                        ; preds = %if.end43
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %last_stat, ptr noundef nonnull align 8 dereferenceable(144) %st, i64 144, i1 false), !tbaa !13, !tbaa.struct !14
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %st) #10
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %st) #10
  %call31 = call i32 @stat(ptr noundef nonnull @.str.4, ptr noundef nonnull %st) #10
  %cmp32 = icmp slt i32 %call31, 0
  br i1 %cmp32, label %cleanup51.thread80, label %if.end37

while.end:                                        ; preds = %if.end37
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %st) #10
  %call54 = call noalias ptr @xgetcwd() #10
  br label %done

done:                                             ; preds = %while.end, %cleanup51.thread80, %cleanup
  %mp.0 = phi ptr [ %call54, %while.end ], [ null, %cleanup ], [ null, %cleanup51.thread80 ]
  %call55 = tail call ptr @__errno_location() #11
  %11 = load i32, ptr %call55, align 4, !tbaa !5
  %call56 = call i32 @restore_cwd(ptr noundef nonnull %cwd) #10
  %cmp57.not = icmp eq i32 %call56, 0
  br i1 %cmp57.not, label %if.end61, label %if.then58

if.then58:                                        ; preds = %done
  %12 = load i32, ptr %call55, align 4, !tbaa !5
  %call60 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.6, i32 noundef 5) #10
  call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %12, ptr noundef %call60) #12
  unreachable

if.end61:                                         ; preds = %done
  call void @free_cwd(ptr noundef nonnull %cwd) #10
  store i32 %11, ptr %call55, align 4, !tbaa !5
  br label %cleanup63

cleanup63:                                        ; preds = %if.end61, %cleanup.thread, %if.then7, %if.then
  %retval.2 = phi ptr [ null, %if.then ], [ null, %if.then7 ], [ %mp.0, %if.end61 ], [ null, %cleanup.thread ]
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %last_stat) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %cwd) #10
  ret ptr %retval.2
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare i32 @save_cwd(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #3

; Function Attrs: nounwind
declare ptr @dcgettext(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: cold
declare void @error(i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #6

; Function Attrs: nounwind
declare i32 @chdir(ptr noundef) local_unnamed_addr #4

declare ptr @quotearg_style(i32 noundef, ptr noundef) local_unnamed_addr #2

declare noalias nonnull ptr @dir_name(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: nofree nounwind
declare noundef i32 @stat(ptr nocapture noundef readonly, ptr nocapture noundef) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

declare noalias ptr @xgetcwd() local_unnamed_addr #2

declare i32 @restore_cwd(ptr noundef) local_unnamed_addr #2

declare void @free_cwd(ptr noundef) local_unnamed_addr #2

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nounwind }
attributes #11 = { nounwind willreturn memory(none) }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind willreturn memory(read) }

!llvm.ident = !{!0}
!llvm.module.flags = !{!1, !2, !3, !4}

!0 = !{!"clang version 18.1.8 (https://github.com/llvm/llvm-project.git 3b5b5c1ec4a3095ab096dd780e84d7ab81f3d7ff)"}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!6, !6, i64 0, i64 4}
!6 = !{!7, i64 4, !"int"}
!7 = !{!8, i64 1, !"omnipotent char"}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !6, i64 24, i64 4}
!10 = !{!7, i64 144, !"stat", !11, i64 0, i64 8, !11, i64 8, i64 8, !11, i64 16, i64 8, !6, i64 24, i64 4, !6, i64 28, i64 4, !6, i64 32, i64 4, !6, i64 36, i64 4, !11, i64 40, i64 8, !11, i64 48, i64 8, !11, i64 56, i64 8, !11, i64 64, i64 8, !12, i64 72, i64 16, !12, i64 88, i64 16, !12, i64 104, i64 16, !11, i64 120, i64 24}
!11 = !{!7, i64 8, !"long"}
!12 = !{!7, i64 16, !"timespec", !11, i64 0, i64 8, !11, i64 8, i64 8}
!13 = !{!10, !10, i64 0, i64 144}
!14 = !{i64 0, i64 8, !15, i64 8, i64 8, !15, i64 16, i64 8, !15, i64 24, i64 4, !5, i64 28, i64 4, !5, i64 32, i64 4, !5, i64 36, i64 4, !5, i64 40, i64 8, !15, i64 48, i64 8, !15, i64 56, i64 8, !15, i64 64, i64 8, !15, i64 72, i64 8, !15, i64 80, i64 8, !15, i64 88, i64 8, !15, i64 96, i64 8, !15, i64 104, i64 8, !15, i64 112, i64 8, !15, i64 120, i64 24, !16}
!15 = !{!11, !11, i64 0, i64 8}
!16 = !{!11, !11, i64 0, i64 24}
!17 = !{!10, !11, i64 0, i64 8}
