; ModuleID = 'llvm-link'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.FTS = type { ptr, ptr, ptr, i64, ptr, i32, i32, i64, i64, ptr, i32, ptr, %union.anon, %struct.I_ring }
%union.anon = type { ptr }
%struct.I_ring = type { [4 x i32], i32, i32, i32, i8 }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @defaultcon(ptr noundef %selabel_handle, ptr noundef %path, i32 noundef %mode) #0 {
entry:
  %selabel_handle.addr = alloca ptr, align 8
  %path.addr = alloca ptr, align 8
  %mode.addr = alloca i32, align 4
  %rc = alloca i32, align 4
  %scon_raw = alloca ptr, align 8
  %tcon_raw = alloca ptr, align 8
  %scontext = alloca ptr, align 8
  %tcontext = alloca ptr, align 8
  %contype = alloca ptr, align 8
  %constr = alloca ptr, align 8
  %newpath = alloca ptr, align 8
  %err = alloca i32, align 4
  store ptr %selabel_handle, ptr %selabel_handle.addr, align 8
  store ptr %path, ptr %path.addr, align 8
  store i32 %mode, ptr %mode.addr, align 4
  store i32 -1, ptr %rc, align 4
  store ptr null, ptr %scon_raw, align 8
  store ptr null, ptr %tcon_raw, align 8
  store ptr null, ptr %scontext, align 8
  store ptr null, ptr %tcontext, align 8
  store ptr null, ptr %newpath, align 8
  %0 = load ptr, ptr %path.addr, align 8
  %arrayidx = getelementptr inbounds i8, ptr %0, i64 0
  %1 = load i8, ptr %arrayidx, align 1
  %conv = sext i8 %1 to i32
  %cmp = icmp eq i32 %conv, 47
  br i1 %cmp, label %if.end3, label %if.then

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %path.addr, align 8
  %call = call noalias ptr @canonicalize_filename_mode(ptr noundef %2, i32 noundef 2)
  store ptr %call, ptr %newpath, align 8
  %3 = load ptr, ptr %newpath, align 8
  %tobool = icmp ne ptr %3, null
  br i1 %tobool, label %if.end, label %if.then2

if.then2:                                         ; preds = %if.then
  br label %quit

if.end:                                           ; preds = %if.then
  %4 = load ptr, ptr %newpath, align 8
  store ptr %4, ptr %path.addr, align 8
  br label %if.end3

if.end3:                                          ; preds = %if.end, %entry
  %5 = load ptr, ptr %selabel_handle.addr, align 8
  %6 = load ptr, ptr %path.addr, align 8
  %7 = load i32, ptr %mode.addr, align 4
  %call4 = call i32 @selabel_lookup_raw(ptr noundef %5, ptr noundef %scon_raw, ptr noundef %6, i32 noundef %7)
  %cmp5 = icmp slt i32 %call4, 0
  br i1 %cmp5, label %if.then7, label %if.end14

if.then7:                                         ; preds = %if.end3
  %call8 = call ptr @__errno_location() #4
  %8 = load i32, ptr %call8, align 4
  %cmp9 = icmp eq i32 %8, 2
  br i1 %cmp9, label %if.then11, label %if.end13

if.then11:                                        ; preds = %if.then7
  %call12 = call ptr @__errno_location() #4
  store i32 61, ptr %call12, align 4
  br label %if.end13

if.end13:                                         ; preds = %if.then11, %if.then7
  br label %quit

if.end14:                                         ; preds = %if.end3
  %9 = load ptr, ptr %path.addr, align 8
  %10 = load i32, ptr %mode.addr, align 4
  %call15 = call i32 @computecon_raw(ptr noundef %9, i32 noundef %10, ptr noundef %tcon_raw)
  %cmp16 = icmp slt i32 %call15, 0
  br i1 %cmp16, label %if.then18, label %if.end19

if.then18:                                        ; preds = %if.end14
  br label %quit

if.end19:                                         ; preds = %if.end14
  %11 = load ptr, ptr %scon_raw, align 8
  %call20 = call ptr @context_new(ptr noundef %11)
  store ptr %call20, ptr %scontext, align 8
  %tobool21 = icmp ne ptr %call20, null
  br i1 %tobool21, label %if.end23, label %if.then22

if.then22:                                        ; preds = %if.end19
  br label %quit

if.end23:                                         ; preds = %if.end19
  %12 = load ptr, ptr %tcon_raw, align 8
  %call24 = call ptr @context_new(ptr noundef %12)
  store ptr %call24, ptr %tcontext, align 8
  %tobool25 = icmp ne ptr %call24, null
  br i1 %tobool25, label %if.end27, label %if.then26

if.then26:                                        ; preds = %if.end23
  br label %quit

if.end27:                                         ; preds = %if.end23
  %13 = load ptr, ptr %scontext, align 8
  %call28 = call ptr @context_type_get(ptr noundef %13)
  store ptr %call28, ptr %contype, align 8
  %tobool29 = icmp ne ptr %call28, null
  br i1 %tobool29, label %if.end31, label %if.then30

if.then30:                                        ; preds = %if.end27
  br label %quit

if.end31:                                         ; preds = %if.end27
  %14 = load ptr, ptr %tcontext, align 8
  %15 = load ptr, ptr %contype, align 8
  %call32 = call i32 @context_type_set(ptr noundef %14, ptr noundef %15)
  %tobool33 = icmp ne i32 %call32, 0
  br i1 %tobool33, label %if.then34, label %if.end35

if.then34:                                        ; preds = %if.end31
  br label %quit

if.end35:                                         ; preds = %if.end31
  %16 = load ptr, ptr %tcontext, align 8
  %call36 = call ptr @context_str(ptr noundef %16)
  store ptr %call36, ptr %constr, align 8
  %tobool37 = icmp ne ptr %call36, null
  br i1 %tobool37, label %if.end39, label %if.then38

if.then38:                                        ; preds = %if.end35
  br label %quit

if.end39:                                         ; preds = %if.end35
  %17 = load ptr, ptr %constr, align 8
  %call40 = call i32 @setfscreatecon_raw(ptr noundef %17)
  store i32 %call40, ptr %rc, align 4
  br label %quit

quit:                                             ; preds = %if.end39, %if.then38, %if.then34, %if.then30, %if.then26, %if.then22, %if.then18, %if.end13, %if.then2
  %call41 = call ptr @__errno_location() #4
  %18 = load i32, ptr %call41, align 4
  store i32 %18, ptr %err, align 4
  %19 = load ptr, ptr %scontext, align 8
  call void @context_free(ptr noundef %19)
  %20 = load ptr, ptr %tcontext, align 8
  call void @context_free(ptr noundef %20)
  %21 = load ptr, ptr %scon_raw, align 8
  call void @freecon(ptr noundef %21)
  %22 = load ptr, ptr %tcon_raw, align 8
  call void @freecon(ptr noundef %22)
  %23 = load ptr, ptr %newpath, align 8
  call void @free(ptr noundef %23) #5
  %24 = load i32, ptr %err, align 4
  %call42 = call ptr @__errno_location() #4
  store i32 %24, ptr %call42, align 4
  %25 = load i32, ptr %rc, align 4
  ret i32 %25
}

declare noalias ptr @canonicalize_filename_mode(ptr noundef, i32 noundef) #1

declare i32 @selabel_lookup_raw(ptr noundef, ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: nounwind willreturn memory(none)
declare ptr @__errno_location() #2

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @computecon_raw(ptr noundef %path, i32 noundef %mode, ptr noundef %con) #0 {
entry:
  %path.addr = alloca ptr, align 8
  %mode.addr = alloca i32, align 4
  %con.addr = alloca ptr, align 8
  %scon_raw = alloca ptr, align 8
  %tcon_raw = alloca ptr, align 8
  %tclass = alloca i16, align 2
  %rc = alloca i32, align 4
  %dir = alloca ptr, align 8
  %err = alloca i32, align 4
  store ptr %path, ptr %path.addr, align 8
  store i32 %mode, ptr %mode.addr, align 4
  store ptr %con, ptr %con.addr, align 8
  store ptr null, ptr %scon_raw, align 8
  store ptr null, ptr %tcon_raw, align 8
  store i32 -1, ptr %rc, align 4
  %0 = load ptr, ptr %path.addr, align 8
  %call = call noalias nonnull ptr @dir_name(ptr noundef %0)
  store ptr %call, ptr %dir, align 8
  %1 = load ptr, ptr %dir, align 8
  %tobool = icmp ne ptr %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %quit

if.end:                                           ; preds = %entry
  %call1 = call i32 @getcon_raw(ptr noundef %scon_raw)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  br label %quit

if.end3:                                          ; preds = %if.end
  %2 = load ptr, ptr %dir, align 8
  %call4 = call i32 @rpl_getfilecon_raw(ptr noundef %2, ptr noundef %tcon_raw)
  %cmp5 = icmp slt i32 %call4, 0
  br i1 %cmp5, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.end3
  br label %quit

if.end7:                                          ; preds = %if.end3
  %3 = load i32, ptr %mode.addr, align 4
  %call8 = call zeroext i16 @mode_to_security_class(i32 noundef %3)
  store i16 %call8, ptr %tclass, align 2
  %4 = load i16, ptr %tclass, align 2
  %tobool9 = icmp ne i16 %4, 0
  br i1 %tobool9, label %if.end11, label %if.then10

if.then10:                                        ; preds = %if.end7
  br label %quit

if.end11:                                         ; preds = %if.end7
  %5 = load ptr, ptr %scon_raw, align 8
  %6 = load ptr, ptr %tcon_raw, align 8
  %7 = load i16, ptr %tclass, align 2
  %8 = load ptr, ptr %con.addr, align 8
  %call12 = call i32 @security_compute_create_raw(ptr noundef %5, ptr noundef %6, i16 noundef zeroext %7, ptr noundef %8)
  store i32 %call12, ptr %rc, align 4
  br label %quit

quit:                                             ; preds = %if.end11, %if.then10, %if.then6, %if.then2, %if.then
  %call13 = call ptr @__errno_location() #4
  %9 = load i32, ptr %call13, align 4
  store i32 %9, ptr %err, align 4
  %10 = load ptr, ptr %dir, align 8
  call void @free(ptr noundef %10) #5
  %11 = load ptr, ptr %scon_raw, align 8
  call void @freecon(ptr noundef %11)
  %12 = load ptr, ptr %tcon_raw, align 8
  call void @freecon(ptr noundef %12)
  %13 = load i32, ptr %err, align 4
  %call14 = call ptr @__errno_location() #4
  store i32 %13, ptr %call14, align 4
  %14 = load i32, ptr %rc, align 4
  ret i32 %14
}

declare ptr @context_new(ptr noundef) #1

declare ptr @context_type_get(ptr noundef) #1

declare i32 @context_type_set(ptr noundef, ptr noundef) #1

declare ptr @context_str(ptr noundef) #1

declare i32 @setfscreatecon_raw(ptr noundef) #1

declare void @context_free(ptr noundef) #1

declare void @freecon(ptr noundef) #1

; Function Attrs: nounwind
declare void @free(ptr noundef) #3

declare noalias nonnull ptr @dir_name(ptr noundef) #1

declare i32 @getcon_raw(ptr noundef) #1

declare i32 @rpl_getfilecon_raw(ptr noundef, ptr noundef) #1

declare zeroext i16 @mode_to_security_class(i32 noundef) #1

declare i32 @security_compute_create_raw(ptr noundef, ptr noundef, i16 noundef zeroext, ptr noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local zeroext i1 @restorecon(ptr noundef %selabel_handle, ptr noundef %path, i1 noundef zeroext %recurse) #0 {
entry:
  %retval = alloca i1, align 1
  %selabel_handle.addr = alloca ptr, align 8
  %path.addr = alloca ptr, align 8
  %recurse.addr = alloca i8, align 1
  %newpath = alloca ptr, align 8
  %ok = alloca i8, align 1
  %err = alloca i32, align 4
  %ftspath = alloca [2 x ptr], align 16
  %fts = alloca ptr, align 8
  %err15 = alloca i32, align 4
  %ent = alloca ptr, align 8
  store ptr %selabel_handle, ptr %selabel_handle.addr, align 8
  store ptr %path, ptr %path.addr, align 8
  %frombool = zext i1 %recurse to i8
  store i8 %frombool, ptr %recurse.addr, align 1
  store ptr null, ptr %newpath, align 8
  %0 = load ptr, ptr %path.addr, align 8
  %arrayidx = getelementptr inbounds i8, ptr %0, i64 0
  %1 = load i8, ptr %arrayidx, align 1
  %conv = sext i8 %1 to i32
  %cmp = icmp eq i32 %conv, 47
  br i1 %cmp, label %if.end3, label %if.then

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %path.addr, align 8
  %call = call noalias ptr @canonicalize_filename_mode(ptr noundef %2, i32 noundef 2)
  store ptr %call, ptr %newpath, align 8
  %3 = load ptr, ptr %newpath, align 8
  %tobool = icmp ne ptr %3, null
  br i1 %tobool, label %if.end, label %if.then2

if.then2:                                         ; preds = %if.then
  store i1 false, ptr %retval, align 1
  br label %return

if.end:                                           ; preds = %if.then
  %4 = load ptr, ptr %newpath, align 8
  store ptr %4, ptr %path.addr, align 8
  br label %if.end3

if.end3:                                          ; preds = %if.end, %entry
  %5 = load i8, ptr %recurse.addr, align 1
  %tobool4 = trunc i8 %5 to i1
  br i1 %tobool4, label %if.end13, label %if.then5

if.then5:                                         ; preds = %if.end3
  %6 = load ptr, ptr %selabel_handle.addr, align 8
  %7 = load ptr, ptr %path.addr, align 8
  %call6 = call i32 @restorecon_private(ptr noundef %6, ptr noundef %7)
  %cmp7 = icmp ne i32 %call6, -1
  %frombool9 = zext i1 %cmp7 to i8
  store i8 %frombool9, ptr %ok, align 1
  %call10 = call ptr @__errno_location() #4
  %8 = load i32, ptr %call10, align 4
  store i32 %8, ptr %err, align 4
  %9 = load ptr, ptr %newpath, align 8
  call void @free(ptr noundef %9) #5
  %10 = load i32, ptr %err, align 4
  %call11 = call ptr @__errno_location() #4
  store i32 %10, ptr %call11, align 4
  %11 = load i8, ptr %ok, align 1
  %tobool12 = trunc i8 %11 to i1
  store i1 %tobool12, ptr %retval, align 1
  br label %return

if.end13:                                         ; preds = %if.end3
  %arrayinit.begin = getelementptr inbounds [2 x ptr], ptr %ftspath, i64 0, i64 0
  %12 = load ptr, ptr %path.addr, align 8
  store ptr %12, ptr %arrayinit.begin, align 8
  %arrayinit.element = getelementptr inbounds ptr, ptr %arrayinit.begin, i64 1
  store ptr null, ptr %arrayinit.element, align 8
  %arraydecay = getelementptr inbounds [2 x ptr], ptr %ftspath, i64 0, i64 0
  %call14 = call noalias nonnull ptr @xfts_open(ptr noundef %arraydecay, i32 noundef 16, ptr noundef null)
  store ptr %call14, ptr %fts, align 8
  store i32 0, ptr %err15, align 4
  br label %for.cond

for.cond:                                         ; preds = %if.end23, %if.end13
  %13 = load ptr, ptr %fts, align 8
  %call16 = call ptr @rpl_fts_read(ptr noundef %13)
  store ptr %call16, ptr %ent, align 8
  %tobool17 = icmp ne ptr %call16, null
  br i1 %tobool17, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %14 = load ptr, ptr %selabel_handle.addr, align 8
  %15 = load ptr, ptr %fts, align 8
  %fts_path = getelementptr inbounds %struct.FTS, ptr %15, i32 0, i32 4
  %16 = load ptr, ptr %fts_path, align 8
  %call18 = call i32 @restorecon_private(ptr noundef %14, ptr noundef %16)
  %cmp19 = icmp slt i32 %call18, 0
  br i1 %cmp19, label %if.then21, label %if.end23

if.then21:                                        ; preds = %for.body
  %call22 = call ptr @__errno_location() #4
  %17 = load i32, ptr %call22, align 4
  store i32 %17, ptr %err15, align 4
  br label %if.end23

if.end23:                                         ; preds = %if.then21, %for.body
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %call24 = call ptr @__errno_location() #4
  %18 = load i32, ptr %call24, align 4
  %cmp25 = icmp ne i32 %18, 0
  br i1 %cmp25, label %if.then27, label %if.end29

if.then27:                                        ; preds = %for.end
  %call28 = call ptr @__errno_location() #4
  %19 = load i32, ptr %call28, align 4
  store i32 %19, ptr %err15, align 4
  br label %if.end29

if.end29:                                         ; preds = %if.then27, %for.end
  %20 = load ptr, ptr %fts, align 8
  %call30 = call i32 @rpl_fts_close(ptr noundef %20)
  %cmp31 = icmp ne i32 %call30, 0
  br i1 %cmp31, label %if.then33, label %if.end35

if.then33:                                        ; preds = %if.end29
  %call34 = call ptr @__errno_location() #4
  %21 = load i32, ptr %call34, align 4
  store i32 %21, ptr %err15, align 4
  br label %if.end35

if.end35:                                         ; preds = %if.then33, %if.end29
  %22 = load ptr, ptr %newpath, align 8
  call void @free(ptr noundef %22) #5
  %23 = load i32, ptr %err15, align 4
  %tobool36 = icmp ne i32 %23, 0
  %lnot = xor i1 %tobool36, true
  store i1 %lnot, ptr %retval, align 1
  br label %return

return:                                           ; preds = %if.end35, %if.then5, %if.then2
  %24 = load i1, ptr %retval, align 1
  ret i1 %24
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @restorecon_private(ptr noundef %selabel_handle, ptr noundef %path) #0 {
entry:
  %retval = alloca i32, align 4
  %selabel_handle.addr = alloca ptr, align 8
  %path.addr = alloca ptr, align 8
  %rc = alloca i32, align 4
  %sb = alloca %struct.stat, align 8
  %scon_raw = alloca ptr, align 8
  %tcon_raw = alloca ptr, align 8
  %scontext = alloca ptr, align 8
  %tcontext = alloca ptr, align 8
  %contype = alloca ptr, align 8
  %constr = alloca ptr, align 8
  %fd = alloca i32, align 4
  %err = alloca i32, align 4
  %err74 = alloca i32, align 4
  store ptr %selabel_handle, ptr %selabel_handle.addr, align 8
  store ptr %path, ptr %path.addr, align 8
  store i32 -1, ptr %rc, align 4
  store ptr null, ptr %scon_raw, align 8
  store ptr null, ptr %tcon_raw, align 8
  store ptr null, ptr %scontext, align 8
  store ptr null, ptr %tcontext, align 8
  %0 = load ptr, ptr %selabel_handle.addr, align 8
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %if.end9, label %if.then

if.then:                                          ; preds = %entry
  %call = call i32 @getfscreatecon_raw(ptr noundef %tcon_raw)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then1, label %if.end

if.then1:                                         ; preds = %if.then
  %1 = load i32, ptr %rc, align 4
  store i32 %1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %if.then
  %2 = load ptr, ptr %tcon_raw, align 8
  %tobool2 = icmp ne ptr %2, null
  br i1 %tobool2, label %if.end5, label %if.then3

if.then3:                                         ; preds = %if.end
  %call4 = call ptr @__errno_location() #4
  store i32 61, ptr %call4, align 4
  %3 = load i32, ptr %rc, align 4
  store i32 %3, ptr %retval, align 4
  br label %return

if.end5:                                          ; preds = %if.end
  %4 = load ptr, ptr %path.addr, align 8
  %5 = load ptr, ptr %tcon_raw, align 8
  %call6 = call i32 @lsetfilecon_raw(ptr noundef %4, ptr noundef %5)
  store i32 %call6, ptr %rc, align 4
  %call7 = call ptr @__errno_location() #4
  %6 = load i32, ptr %call7, align 4
  store i32 %6, ptr %err, align 4
  %7 = load ptr, ptr %tcon_raw, align 8
  call void @freecon(ptr noundef %7)
  %8 = load i32, ptr %err, align 4
  %call8 = call ptr @__errno_location() #4
  store i32 %8, ptr %call8, align 4
  %9 = load i32, ptr %rc, align 4
  store i32 %9, ptr %retval, align 4
  br label %return

if.end9:                                          ; preds = %entry
  %10 = load ptr, ptr %path.addr, align 8
  %call10 = call i32 (ptr, i32, ...) @open(ptr noundef %10, i32 noundef 131072)
  store i32 %call10, ptr %fd, align 4
  %11 = load i32, ptr %fd, align 4
  %cmp11 = icmp eq i32 %11, -1
  br i1 %cmp11, label %land.lhs.true, label %if.end15

land.lhs.true:                                    ; preds = %if.end9
  %call12 = call ptr @__errno_location() #4
  %12 = load i32, ptr %call12, align 4
  %cmp13 = icmp ne i32 %12, 40
  br i1 %cmp13, label %if.then14, label %if.end15

if.then14:                                        ; preds = %land.lhs.true
  br label %quit

if.end15:                                         ; preds = %land.lhs.true, %if.end9
  %13 = load i32, ptr %fd, align 4
  %cmp16 = icmp ne i32 %13, -1
  br i1 %cmp16, label %if.then17, label %if.else

if.then17:                                        ; preds = %if.end15
  %14 = load i32, ptr %fd, align 4
  %call18 = call i32 @fstat(i32 noundef %14, ptr noundef %sb) #5
  %cmp19 = icmp slt i32 %call18, 0
  br i1 %cmp19, label %if.then20, label %if.end21

if.then20:                                        ; preds = %if.then17
  br label %quit

if.end21:                                         ; preds = %if.then17
  br label %if.end26

if.else:                                          ; preds = %if.end15
  %15 = load ptr, ptr %path.addr, align 8
  %call22 = call i32 @lstat(ptr noundef %15, ptr noundef %sb) #5
  %cmp23 = icmp slt i32 %call22, 0
  br i1 %cmp23, label %if.then24, label %if.end25

if.then24:                                        ; preds = %if.else
  br label %quit

if.end25:                                         ; preds = %if.else
  br label %if.end26

if.end26:                                         ; preds = %if.end25, %if.end21
  %16 = load ptr, ptr %selabel_handle.addr, align 8
  %17 = load ptr, ptr %path.addr, align 8
  %st_mode = getelementptr inbounds %struct.stat, ptr %sb, i32 0, i32 3
  %18 = load i32, ptr %st_mode, align 8
  %call27 = call i32 @selabel_lookup_raw(ptr noundef %16, ptr noundef %scon_raw, ptr noundef %17, i32 noundef %18)
  %cmp28 = icmp slt i32 %call27, 0
  br i1 %cmp28, label %if.then29, label %if.end35

if.then29:                                        ; preds = %if.end26
  %call30 = call ptr @__errno_location() #4
  %19 = load i32, ptr %call30, align 4
  %cmp31 = icmp eq i32 %19, 2
  br i1 %cmp31, label %if.then32, label %if.end34

if.then32:                                        ; preds = %if.then29
  %call33 = call ptr @__errno_location() #4
  store i32 61, ptr %call33, align 4
  br label %if.end34

if.end34:                                         ; preds = %if.then32, %if.then29
  br label %quit

if.end35:                                         ; preds = %if.end26
  %20 = load ptr, ptr %scon_raw, align 8
  %call36 = call ptr @context_new(ptr noundef %20)
  store ptr %call36, ptr %scontext, align 8
  %tobool37 = icmp ne ptr %call36, null
  br i1 %tobool37, label %if.end39, label %if.then38

if.then38:                                        ; preds = %if.end35
  br label %quit

if.end39:                                         ; preds = %if.end35
  %21 = load i32, ptr %fd, align 4
  %cmp40 = icmp ne i32 %21, -1
  br i1 %cmp40, label %if.then41, label %if.else46

if.then41:                                        ; preds = %if.end39
  %22 = load i32, ptr %fd, align 4
  %call42 = call i32 @rpl_fgetfilecon_raw(i32 noundef %22, ptr noundef %tcon_raw)
  %cmp43 = icmp slt i32 %call42, 0
  br i1 %cmp43, label %if.then44, label %if.end45

if.then44:                                        ; preds = %if.then41
  br label %quit

if.end45:                                         ; preds = %if.then41
  br label %if.end51

if.else46:                                        ; preds = %if.end39
  %23 = load ptr, ptr %path.addr, align 8
  %call47 = call i32 @rpl_lgetfilecon_raw(ptr noundef %23, ptr noundef %tcon_raw)
  %cmp48 = icmp slt i32 %call47, 0
  br i1 %cmp48, label %if.then49, label %if.end50

if.then49:                                        ; preds = %if.else46
  br label %quit

if.end50:                                         ; preds = %if.else46
  br label %if.end51

if.end51:                                         ; preds = %if.end50, %if.end45
  %24 = load ptr, ptr %tcon_raw, align 8
  %call52 = call ptr @context_new(ptr noundef %24)
  store ptr %call52, ptr %tcontext, align 8
  %tobool53 = icmp ne ptr %call52, null
  br i1 %tobool53, label %if.end55, label %if.then54

if.then54:                                        ; preds = %if.end51
  br label %quit

if.end55:                                         ; preds = %if.end51
  %25 = load ptr, ptr %scontext, align 8
  %call56 = call ptr @context_type_get(ptr noundef %25)
  store ptr %call56, ptr %contype, align 8
  %tobool57 = icmp ne ptr %call56, null
  br i1 %tobool57, label %if.end59, label %if.then58

if.then58:                                        ; preds = %if.end55
  br label %quit

if.end59:                                         ; preds = %if.end55
  %26 = load ptr, ptr %tcontext, align 8
  %27 = load ptr, ptr %contype, align 8
  %call60 = call i32 @context_type_set(ptr noundef %26, ptr noundef %27)
  %tobool61 = icmp ne i32 %call60, 0
  br i1 %tobool61, label %if.then62, label %if.end63

if.then62:                                        ; preds = %if.end59
  br label %quit

if.end63:                                         ; preds = %if.end59
  %28 = load ptr, ptr %tcontext, align 8
  %call64 = call ptr @context_str(ptr noundef %28)
  store ptr %call64, ptr %constr, align 8
  %tobool65 = icmp ne ptr %call64, null
  br i1 %tobool65, label %if.end67, label %if.then66

if.then66:                                        ; preds = %if.end63
  br label %quit

if.end67:                                         ; preds = %if.end63
  %29 = load i32, ptr %fd, align 4
  %cmp68 = icmp ne i32 %29, -1
  br i1 %cmp68, label %if.then69, label %if.else71

if.then69:                                        ; preds = %if.end67
  %30 = load i32, ptr %fd, align 4
  %31 = load ptr, ptr %constr, align 8
  %call70 = call i32 @fsetfilecon_raw(i32 noundef %30, ptr noundef %31)
  store i32 %call70, ptr %rc, align 4
  br label %if.end73

if.else71:                                        ; preds = %if.end67
  %32 = load ptr, ptr %path.addr, align 8
  %33 = load ptr, ptr %constr, align 8
  %call72 = call i32 @lsetfilecon_raw(ptr noundef %32, ptr noundef %33)
  store i32 %call72, ptr %rc, align 4
  br label %if.end73

if.end73:                                         ; preds = %if.else71, %if.then69
  br label %quit

quit:                                             ; preds = %if.end73, %if.then66, %if.then62, %if.then58, %if.then54, %if.then49, %if.then44, %if.then38, %if.end34, %if.then24, %if.then20, %if.then14
  %call75 = call ptr @__errno_location() #4
  %34 = load i32, ptr %call75, align 4
  store i32 %34, ptr %err74, align 4
  %35 = load i32, ptr %fd, align 4
  %cmp76 = icmp ne i32 %35, -1
  br i1 %cmp76, label %if.then77, label %if.end79

if.then77:                                        ; preds = %quit
  %36 = load i32, ptr %fd, align 4
  %call78 = call i32 @close(i32 noundef %36)
  br label %if.end79

if.end79:                                         ; preds = %if.then77, %quit
  %37 = load ptr, ptr %scontext, align 8
  call void @context_free(ptr noundef %37)
  %38 = load ptr, ptr %tcontext, align 8
  call void @context_free(ptr noundef %38)
  %39 = load ptr, ptr %scon_raw, align 8
  call void @freecon(ptr noundef %39)
  %40 = load ptr, ptr %tcon_raw, align 8
  call void @freecon(ptr noundef %40)
  %41 = load i32, ptr %err74, align 4
  %call80 = call ptr @__errno_location() #4
  store i32 %41, ptr %call80, align 4
  %42 = load i32, ptr %rc, align 4
  store i32 %42, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end79, %if.end5, %if.then3, %if.then1
  %43 = load i32, ptr %retval, align 4
  ret i32 %43
}

declare noalias nonnull ptr @xfts_open(ptr noundef, i32 noundef, ptr noundef) #1

declare ptr @rpl_fts_read(ptr noundef) #1

declare i32 @rpl_fts_close(ptr noundef) #1

declare i32 @getfscreatecon_raw(ptr noundef) #1

declare i32 @lsetfilecon_raw(ptr noundef, ptr noundef) #1

declare i32 @open(ptr noundef, i32 noundef, ...) #1

; Function Attrs: nounwind
declare i32 @fstat(i32 noundef, ptr noundef) #3

; Function Attrs: nounwind
declare i32 @lstat(ptr noundef, ptr noundef) #3

declare i32 @rpl_fgetfilecon_raw(i32 noundef, ptr noundef) #1

declare i32 @rpl_lgetfilecon_raw(ptr noundef, ptr noundef) #1

declare i32 @fsetfilecon_raw(i32 noundef, ptr noundef) #1

declare i32 @close(i32 noundef) #1

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind willreturn memory(none) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind willreturn memory(none) }
attributes #5 = { nounwind }

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
