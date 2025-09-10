; ModuleID = 'llvm-link'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.prime = type { i32, i64, i64 }

@stderr = external global ptr, align 8
@.str = private unnamed_addr constant [56 x i8] c"Usage: %s LIMIT\0AProduces a list of odd primes <= LIMIT\0A\00", align 1
@stdout = external global ptr, align 8
@.str.1 = private unnamed_addr constant [17 x i8] c"write error: %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"Virtual memory exhausted.\0A\00", align 1
@.str.3 = private unnamed_addr constant [37 x i8] c"/* Generated file -- DO NOT EDIT */\0A\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"#define WIDE_UINT_BITS %u\0A\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"P (%u, %u,\0A   (\00", align 1
@.str.6 = private unnamed_addr constant [25 x i8] c"),\0A   UINTMAX_MAX / %u)\0A\00", align 1
@.str.7 = private unnamed_addr constant [29 x i8] c"\0A#undef FIRST_OMITTED_PRIME\0A\00", align 1
@.str.8 = private unnamed_addr constant [32 x i8] c"#define FIRST_OMITTED_PRIME %u\0A\00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c"(\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c")\0A%*s\00", align 1
@.str.11 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.12 = private unnamed_addr constant [10 x i8] c" << %d | \00", align 1
@.str.13 = private unnamed_addr constant [13 x i8] c"(uintmax_t) \00", align 1
@.str.14 = private unnamed_addr constant [8 x i8] c"0x%0*xU\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 noundef %argc, ptr noundef %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca ptr, align 8
  %limit = alloca i32, align 4
  %sieve = alloca ptr, align 8
  %size = alloca i64, align 8
  %i = alloca i64, align 8
  %prime_list = alloca ptr, align 8
  %nprimes = alloca i32, align 4
  %p = alloca i32, align 4
  %j = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  store i32 %argc, ptr %argc.addr, align 4
  store ptr %argv, ptr %argv.addr, align 8
  %0 = load i32, ptr %argc.addr, align 4
  %cmp = icmp ne i32 %0, 2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr @stderr, align 8
  %2 = load ptr, ptr %argv.addr, align 8
  %arrayidx = getelementptr inbounds ptr, ptr %2, i64 0
  %3 = load ptr, ptr %arrayidx, align 8
  %call = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef @.str, ptr noundef %3)
  store i32 1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %4 = load ptr, ptr %argv.addr, align 8
  %arrayidx1 = getelementptr inbounds ptr, ptr %4, i64 1
  %5 = load ptr, ptr %arrayidx1, align 8
  %call2 = call i32 @atoi(ptr noundef %5) #9
  store i32 %call2, ptr %limit, align 4
  %6 = load i32, ptr %limit, align 4
  %cmp3 = icmp slt i32 %6, 3
  br i1 %cmp3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  store i32 0, ptr %retval, align 4
  br label %return

if.end5:                                          ; preds = %if.end
  %7 = load i32, ptr %limit, align 4
  %and = and i32 %7, 1
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.end7, label %if.then6

if.then6:                                         ; preds = %if.end5
  %8 = load i32, ptr %limit, align 4
  %dec = add nsw i32 %8, -1
  store i32 %dec, ptr %limit, align 4
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %if.end5
  %9 = load i32, ptr %limit, align 4
  %sub = sub nsw i32 %9, 1
  %div = sdiv i32 %sub, 2
  %conv = sext i32 %div to i64
  store i64 %conv, ptr %size, align 8
  %10 = load i64, ptr %size, align 8
  %call8 = call noalias ptr @xalloc(i64 noundef %10)
  store ptr %call8, ptr %sieve, align 8
  %11 = load ptr, ptr %sieve, align 8
  %12 = load i64, ptr %size, align 8
  call void @llvm.memset.p0.i64(ptr align 1 %11, i8 1, i64 %12, i1 false)
  %13 = load i64, ptr %size, align 8
  %mul = mul i64 %13, 24
  %call9 = call noalias ptr @xalloc(i64 noundef %mul)
  store ptr %call9, ptr %prime_list, align 8
  store i32 0, ptr %nprimes, align 4
  store i64 0, ptr %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %while.end, %if.end7
  %14 = load i64, ptr %i, align 8
  %15 = load i64, ptr %size, align 8
  %cmp10 = icmp ult i64 %14, %15
  br i1 %cmp10, label %for.body, label %for.end33

for.body:                                         ; preds = %for.cond
  %16 = load i64, ptr %i, align 8
  %mul12 = mul i64 2, %16
  %add = add i64 3, %mul12
  %conv13 = trunc i64 %add to i32
  store i32 %conv13, ptr %p, align 4
  %17 = load ptr, ptr %prime_list, align 8
  %18 = load i32, ptr %nprimes, align 4
  %inc = add i32 %18, 1
  store i32 %inc, ptr %nprimes, align 4
  %idxprom = zext i32 %18 to i64
  %arrayidx14 = getelementptr inbounds %struct.prime, ptr %17, i64 %idxprom
  %19 = load i32, ptr %p, align 4
  call void @process_prime(ptr noundef %arrayidx14, i32 noundef %19)
  %20 = load i32, ptr %p, align 4
  %21 = load i32, ptr %p, align 4
  %mul15 = mul i32 %20, %21
  %sub16 = sub i32 %mul15, 3
  %div17 = udiv i32 %sub16, 2
  store i32 %div17, ptr %j, align 4
  br label %for.cond18

for.cond18:                                       ; preds = %for.inc, %for.body
  %22 = load i32, ptr %j, align 4
  %conv19 = zext i32 %22 to i64
  %23 = load i64, ptr %size, align 8
  %cmp20 = icmp ult i64 %conv19, %23
  br i1 %cmp20, label %for.body22, label %for.end

for.body22:                                       ; preds = %for.cond18
  %24 = load ptr, ptr %sieve, align 8
  %25 = load i32, ptr %j, align 4
  %idxprom23 = zext i32 %25 to i64
  %arrayidx24 = getelementptr inbounds i8, ptr %24, i64 %idxprom23
  store i8 0, ptr %arrayidx24, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body22
  %26 = load i32, ptr %p, align 4
  %27 = load i32, ptr %j, align 4
  %add25 = add i32 %27, %26
  store i32 %add25, ptr %j, align 4
  br label %for.cond18, !llvm.loop !6

for.end:                                          ; preds = %for.cond18
  br label %while.cond

while.cond:                                       ; preds = %while.body, %for.end
  %28 = load i64, ptr %i, align 8
  %inc26 = add i64 %28, 1
  store i64 %inc26, ptr %i, align 8
  %29 = load i64, ptr %size, align 8
  %cmp27 = icmp ult i64 %inc26, %29
  br i1 %cmp27, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %30 = load ptr, ptr %sieve, align 8
  %31 = load i64, ptr %i, align 8
  %arrayidx29 = getelementptr inbounds i8, ptr %30, i64 %31
  %32 = load i8, ptr %arrayidx29, align 1
  %conv30 = sext i8 %32 to i32
  %cmp31 = icmp eq i32 %conv30, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %33 = phi i1 [ false, %while.cond ], [ %cmp31, %land.rhs ]
  br i1 %33, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  br label %while.cond, !llvm.loop !8

while.end:                                        ; preds = %land.end
  br label %for.cond, !llvm.loop !9

for.end33:                                        ; preds = %for.cond
  %34 = load ptr, ptr %prime_list, align 8
  %35 = load i32, ptr %nprimes, align 4
  call void @output_primes(ptr noundef %34, i32 noundef %35)
  %36 = load ptr, ptr %sieve, align 8
  call void @free(ptr noundef %36) #10
  %37 = load ptr, ptr %prime_list, align 8
  call void @free(ptr noundef %37) #10
  %38 = load ptr, ptr @stdout, align 8
  %call34 = call i32 @ferror(ptr noundef %38) #10
  %39 = load ptr, ptr @stdout, align 8
  %call35 = call i32 @fclose(ptr noundef %39)
  %add36 = add nsw i32 %call34, %call35
  %tobool37 = icmp ne i32 %add36, 0
  br i1 %tobool37, label %if.then38, label %if.end42

if.then38:                                        ; preds = %for.end33
  %40 = load ptr, ptr @stderr, align 8
  %call39 = call ptr @__errno_location() #11
  %41 = load i32, ptr %call39, align 4
  %call40 = call ptr @strerror(i32 noundef %41) #10
  %call41 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %40, ptr noundef @.str.1, ptr noundef %call40)
  store i32 1, ptr %retval, align 4
  br label %return

if.end42:                                         ; preds = %for.end33
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end42, %if.then38, %if.then4, %if.then
  %42 = load i32, ptr %retval, align 4
  ret i32 %42
}

declare i32 @fprintf(ptr noundef, ptr noundef, ...) #1

; Function Attrs: nounwind willreturn memory(read)
declare i32 @atoi(ptr noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal noalias ptr @xalloc(i64 noundef %s) #0 {
entry:
  %s.addr = alloca i64, align 8
  %p = alloca ptr, align 8
  store i64 %s, ptr %s.addr, align 8
  %0 = load i64, ptr %s.addr, align 8
  %call = call noalias ptr @malloc(i64 noundef %0) #12
  store ptr %call, ptr %p, align 8
  %1 = load ptr, ptr %p, align 8
  %tobool = icmp ne ptr %1, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %p, align 8
  ret ptr %2

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr @stderr, align 8
  %call1 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %3, ptr noundef @.str.2)
  call void @exit(i32 noundef 1) #13
  unreachable
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: noinline nounwind optnone uwtable
define internal void @process_prime(ptr noundef %info, i32 noundef %p) #0 {
entry:
  %info.addr = alloca ptr, align 8
  %p.addr = alloca i32, align 4
  %max = alloca i64, align 8
  store ptr %info, ptr %info.addr, align 8
  store i32 %p, ptr %p.addr, align 4
  store i64 -1, ptr %max, align 8
  %0 = load i32, ptr %p.addr, align 4
  %1 = load ptr, ptr %info.addr, align 8
  %p1 = getelementptr inbounds %struct.prime, ptr %1, i32 0, i32 0
  store i32 %0, ptr %p1, align 8
  %2 = load i32, ptr %p.addr, align 4
  %conv = zext i32 %2 to i64
  %call = call i64 @binvert(i64 noundef %conv) #11
  %3 = load ptr, ptr %info.addr, align 8
  %pinv = getelementptr inbounds %struct.prime, ptr %3, i32 0, i32 1
  store i64 %call, ptr %pinv, align 8
  %4 = load i64, ptr %max, align 8
  %5 = load i32, ptr %p.addr, align 4
  %conv2 = zext i32 %5 to i64
  %div = udiv i64 %4, %conv2
  %6 = load ptr, ptr %info.addr, align 8
  %lim = getelementptr inbounds %struct.prime, ptr %6, i32 0, i32 2
  store i64 %div, ptr %lim, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @output_primes(ptr noundef %primes, i32 noundef %nprimes) #0 {
entry:
  %primes.addr = alloca ptr, align 8
  %nprimes.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %p = alloca i32, align 4
  %is_prime = alloca i32, align 4
  %wide_uint_bits = alloca i32, align 4
  %mask = alloca i64, align 8
  %d8 = alloca i32, align 4
  store ptr %primes, ptr %primes.addr, align 8
  store i32 %nprimes, ptr %nprimes.addr, align 4
  store i32 0, ptr %wide_uint_bits, align 4
  store i64 -1, ptr %mask, align 8
  store i32 0, ptr %wide_uint_bits, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, ptr %mask, align 8
  %tobool = icmp ne i64 %0, 0
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i64, ptr %mask, align 8
  %shr = lshr i64 %1, 1
  store i64 %shr, ptr %mask, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %2 = load i32, ptr %wide_uint_bits, align 4
  %inc = add i32 %2, 1
  store i32 %inc, ptr %wide_uint_bits, align 4
  br label %for.cond, !llvm.loop !10

for.end:                                          ; preds = %for.cond
  %call = call i32 @puts(ptr noundef @.str.3)
  %3 = load i32, ptr %wide_uint_bits, align 4
  %call1 = call i32 (ptr, ...) @printf(ptr noundef @.str.4, i32 noundef %3)
  store i32 0, ptr %i, align 4
  store i32 2, ptr %p, align 4
  br label %for.cond2

for.cond2:                                        ; preds = %for.inc25, %for.end
  %4 = load i32, ptr %i, align 4
  %5 = load i32, ptr %nprimes.addr, align 4
  %cmp = icmp ult i32 %4, %5
  br i1 %cmp, label %for.body3, label %for.end27

for.body3:                                        ; preds = %for.cond2
  %6 = load i32, ptr %i, align 4
  %add = add i32 %6, 8
  %7 = load i32, ptr %nprimes.addr, align 4
  %cmp4 = icmp ult i32 %add, %7
  br i1 %cmp4, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body3
  %8 = load ptr, ptr %primes.addr, align 8
  %9 = load i32, ptr %i, align 4
  %add5 = add i32 %9, 8
  %idxprom = zext i32 %add5 to i64
  %arrayidx = getelementptr inbounds %struct.prime, ptr %8, i64 %idxprom
  %p6 = getelementptr inbounds %struct.prime, ptr %arrayidx, i32 0, i32 0
  %10 = load i32, ptr %p6, align 8
  %11 = load ptr, ptr %primes.addr, align 8
  %12 = load i32, ptr %i, align 4
  %idxprom7 = zext i32 %12 to i64
  %arrayidx8 = getelementptr inbounds %struct.prime, ptr %11, i64 %idxprom7
  %p9 = getelementptr inbounds %struct.prime, ptr %arrayidx8, i32 0, i32 0
  %13 = load i32, ptr %p9, align 8
  %sub = sub i32 %10, %13
  br label %cond.end

cond.false:                                       ; preds = %for.body3
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %sub, %cond.true ], [ 255, %cond.false ]
  store i32 %cond, ptr %d8, align 4
  %14 = load i32, ptr %d8, align 4
  %cmp10 = icmp ult i32 255, %14
  br i1 %cmp10, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  call void @abort() #13
  unreachable

if.end:                                           ; preds = %cond.end
  %15 = load ptr, ptr %primes.addr, align 8
  %16 = load i32, ptr %i, align 4
  %idxprom11 = zext i32 %16 to i64
  %arrayidx12 = getelementptr inbounds %struct.prime, ptr %15, i64 %idxprom11
  %p13 = getelementptr inbounds %struct.prime, ptr %arrayidx12, i32 0, i32 0
  %17 = load i32, ptr %p13, align 8
  %18 = load i32, ptr %p, align 4
  %sub14 = sub i32 %17, %18
  %19 = load i32, ptr %d8, align 4
  %call15 = call i32 (ptr, ...) @printf(ptr noundef @.str.5, i32 noundef %sub14, i32 noundef %19)
  %20 = load ptr, ptr %primes.addr, align 8
  %21 = load i32, ptr %i, align 4
  %idxprom16 = zext i32 %21 to i64
  %arrayidx17 = getelementptr inbounds %struct.prime, ptr %20, i64 %idxprom16
  %pinv = getelementptr inbounds %struct.prime, ptr %arrayidx17, i32 0, i32 1
  %22 = load i64, ptr %pinv, align 8
  %23 = load i32, ptr %wide_uint_bits, align 4
  call void @print_wide_uint(i64 noundef %22, i32 noundef 0, i32 noundef %23)
  %24 = load ptr, ptr %primes.addr, align 8
  %25 = load i32, ptr %i, align 4
  %idxprom18 = zext i32 %25 to i64
  %arrayidx19 = getelementptr inbounds %struct.prime, ptr %24, i64 %idxprom18
  %p20 = getelementptr inbounds %struct.prime, ptr %arrayidx19, i32 0, i32 0
  %26 = load i32, ptr %p20, align 8
  %call21 = call i32 (ptr, ...) @printf(ptr noundef @.str.6, i32 noundef %26)
  %27 = load ptr, ptr %primes.addr, align 8
  %28 = load i32, ptr %i, align 4
  %idxprom22 = zext i32 %28 to i64
  %arrayidx23 = getelementptr inbounds %struct.prime, ptr %27, i64 %idxprom22
  %p24 = getelementptr inbounds %struct.prime, ptr %arrayidx23, i32 0, i32 0
  %29 = load i32, ptr %p24, align 8
  store i32 %29, ptr %p, align 4
  br label %for.inc25

for.inc25:                                        ; preds = %if.end
  %30 = load i32, ptr %i, align 4
  %inc26 = add i32 %30, 1
  store i32 %inc26, ptr %i, align 4
  br label %for.cond2, !llvm.loop !11

for.end27:                                        ; preds = %for.cond2
  %call28 = call i32 (ptr, ...) @printf(ptr noundef @.str.7)
  br label %do.body

do.body:                                          ; preds = %do.cond, %for.end27
  %31 = load i32, ptr %p, align 4
  %add29 = add i32 %31, 2
  store i32 %add29, ptr %p, align 4
  store i32 0, ptr %i, align 4
  store i32 1, ptr %is_prime, align 4
  br label %for.cond30

for.cond30:                                       ; preds = %for.inc52, %do.body
  %32 = load i32, ptr %is_prime, align 4
  %tobool31 = icmp ne i32 %32, 0
  br i1 %tobool31, label %for.body32, label %for.end54

for.body32:                                       ; preds = %for.cond30
  %33 = load ptr, ptr %primes.addr, align 8
  %34 = load i32, ptr %i, align 4
  %idxprom33 = zext i32 %34 to i64
  %arrayidx34 = getelementptr inbounds %struct.prime, ptr %33, i64 %idxprom33
  %p35 = getelementptr inbounds %struct.prime, ptr %arrayidx34, i32 0, i32 0
  %35 = load i32, ptr %p35, align 8
  %36 = load ptr, ptr %primes.addr, align 8
  %37 = load i32, ptr %i, align 4
  %idxprom36 = zext i32 %37 to i64
  %arrayidx37 = getelementptr inbounds %struct.prime, ptr %36, i64 %idxprom36
  %p38 = getelementptr inbounds %struct.prime, ptr %arrayidx37, i32 0, i32 0
  %38 = load i32, ptr %p38, align 8
  %mul = mul i32 %35, %38
  %39 = load i32, ptr %p, align 4
  %cmp39 = icmp ugt i32 %mul, %39
  br i1 %cmp39, label %if.then40, label %if.end41

if.then40:                                        ; preds = %for.body32
  br label %for.end54

if.end41:                                         ; preds = %for.body32
  %40 = load i32, ptr %p, align 4
  %conv = zext i32 %40 to i64
  %41 = load ptr, ptr %primes.addr, align 8
  %42 = load i32, ptr %i, align 4
  %idxprom42 = zext i32 %42 to i64
  %arrayidx43 = getelementptr inbounds %struct.prime, ptr %41, i64 %idxprom42
  %pinv44 = getelementptr inbounds %struct.prime, ptr %arrayidx43, i32 0, i32 1
  %43 = load i64, ptr %pinv44, align 8
  %mul45 = mul i64 %conv, %43
  %44 = load ptr, ptr %primes.addr, align 8
  %45 = load i32, ptr %i, align 4
  %idxprom46 = zext i32 %45 to i64
  %arrayidx47 = getelementptr inbounds %struct.prime, ptr %44, i64 %idxprom46
  %lim = getelementptr inbounds %struct.prime, ptr %arrayidx47, i32 0, i32 2
  %46 = load i64, ptr %lim, align 8
  %cmp48 = icmp ule i64 %mul45, %46
  br i1 %cmp48, label %if.then50, label %if.end51

if.then50:                                        ; preds = %if.end41
  store i32 0, ptr %is_prime, align 4
  br label %for.end54

if.end51:                                         ; preds = %if.end41
  br label %for.inc52

for.inc52:                                        ; preds = %if.end51
  %47 = load i32, ptr %i, align 4
  %inc53 = add i32 %47, 1
  store i32 %inc53, ptr %i, align 4
  br label %for.cond30, !llvm.loop !12

for.end54:                                        ; preds = %if.then50, %if.then40, %for.cond30
  br label %do.cond

do.cond:                                          ; preds = %for.end54
  %48 = load i32, ptr %is_prime, align 4
  %tobool55 = icmp ne i32 %48, 0
  %lnot = xor i1 %tobool55, true
  br i1 %lnot, label %do.body, label %do.end, !llvm.loop !13

do.end:                                           ; preds = %do.cond
  %49 = load i32, ptr %p, align 4
  %call56 = call i32 (ptr, ...) @printf(ptr noundef @.str.8, i32 noundef %49)
  ret void
}

; Function Attrs: nounwind
declare void @free(ptr noundef) #4

; Function Attrs: nounwind
declare i32 @ferror(ptr noundef) #4

declare i32 @fclose(ptr noundef) #1

; Function Attrs: nounwind willreturn memory(none)
declare ptr @__errno_location() #5

; Function Attrs: nounwind
declare ptr @strerror(i32 noundef) #4

declare i32 @puts(ptr noundef) #1

declare i32 @printf(ptr noundef, ...) #1

; Function Attrs: noreturn nounwind
declare void @abort() #6

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_wide_uint(i64 noundef %n, i32 noundef %nesting, i32 noundef %wide_uint_bits) #0 {
entry:
  %n.addr = alloca i64, align 8
  %nesting.addr = alloca i32, align 4
  %wide_uint_bits.addr = alloca i32, align 4
  %hex_digits_per_literal = alloca i32, align 4
  %bits_per_literal = alloca i32, align 4
  %remainder = alloca i32, align 4
  %needs_parentheses = alloca i32, align 4
  store i64 %n, ptr %n.addr, align 8
  store i32 %nesting, ptr %nesting.addr, align 4
  store i32 %wide_uint_bits, ptr %wide_uint_bits.addr, align 4
  store i32 7, ptr %hex_digits_per_literal, align 4
  %0 = load i32, ptr %hex_digits_per_literal, align 4
  %mul = mul nsw i32 %0, 4
  store i32 %mul, ptr %bits_per_literal, align 4
  %1 = load i64, ptr %n.addr, align 8
  %2 = load i32, ptr %bits_per_literal, align 4
  %shl = shl i32 1, %2
  %sub = sub nsw i32 %shl, 1
  %conv = sext i32 %sub to i64
  %and = and i64 %1, %conv
  %conv1 = trunc i64 %and to i32
  store i32 %conv1, ptr %remainder, align 4
  %3 = load i64, ptr %n.addr, align 8
  %4 = load i32, ptr %remainder, align 4
  %conv2 = zext i32 %4 to i64
  %cmp = icmp ne i64 %3, %conv2
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %5 = load i64, ptr %n.addr, align 8
  %6 = load i32, ptr %bits_per_literal, align 4
  %sh_prom = zext i32 %6 to i64
  %shr = lshr i64 %5, %sh_prom
  %7 = load i32, ptr %bits_per_literal, align 4
  %sh_prom4 = zext i32 %7 to i64
  %shr5 = lshr i64 %shr, %sh_prom4
  %cmp6 = icmp ne i64 %shr5, 0
  %conv7 = zext i1 %cmp6 to i32
  store i32 %conv7, ptr %needs_parentheses, align 4
  %8 = load i32, ptr %needs_parentheses, align 4
  %tobool = icmp ne i32 %8, 0
  br i1 %tobool, label %if.then8, label %if.end

if.then8:                                         ; preds = %if.then
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str.9)
  br label %if.end

if.end:                                           ; preds = %if.then8, %if.then
  %9 = load i64, ptr %n.addr, align 8
  %10 = load i32, ptr %bits_per_literal, align 4
  %sh_prom9 = zext i32 %10 to i64
  %shr10 = lshr i64 %9, %sh_prom9
  %11 = load i32, ptr %nesting.addr, align 4
  %add = add nsw i32 %11, 1
  %12 = load i32, ptr %wide_uint_bits.addr, align 4
  call void @print_wide_uint(i64 noundef %shr10, i32 noundef %add, i32 noundef %12)
  %13 = load i32, ptr %needs_parentheses, align 4
  %tobool11 = icmp ne i32 %13, 0
  br i1 %tobool11, label %if.then12, label %if.end15

if.then12:                                        ; preds = %if.end
  %14 = load i32, ptr %nesting.addr, align 4
  %add13 = add nsw i32 %14, 3
  %call14 = call i32 (ptr, ...) @printf(ptr noundef @.str.10, i32 noundef %add13, ptr noundef @.str.11)
  br label %if.end15

if.end15:                                         ; preds = %if.then12, %if.end
  %15 = load i32, ptr %bits_per_literal, align 4
  %call16 = call i32 (ptr, ...) @printf(ptr noundef @.str.12, i32 noundef %15)
  br label %if.end24

if.else:                                          ; preds = %entry
  %16 = load i32, ptr %nesting.addr, align 4
  %tobool17 = icmp ne i32 %16, 0
  br i1 %tobool17, label %if.then18, label %if.end23

if.then18:                                        ; preds = %if.else
  %call19 = call i32 (ptr, ...) @printf(ptr noundef @.str.13)
  %17 = load i32, ptr %wide_uint_bits.addr, align 4
  %sub20 = sub i32 %17, 1
  %18 = load i32, ptr %bits_per_literal, align 4
  %rem = urem i32 %sub20, %18
  %rem21 = urem i32 %rem, 4
  %add22 = add i32 %rem21, 1
  store i32 %add22, ptr %hex_digits_per_literal, align 4
  br label %if.end23

if.end23:                                         ; preds = %if.then18, %if.else
  br label %if.end24

if.end24:                                         ; preds = %if.end23, %if.end15
  %19 = load i32, ptr %hex_digits_per_literal, align 4
  %20 = load i32, ptr %remainder, align 4
  %call25 = call i32 (ptr, ...) @printf(ptr noundef @.str.14, i32 noundef %19, i32 noundef %20)
  ret void
}

; Function Attrs: noinline nounwind optnone willreturn memory(none) uwtable
define internal i64 @binvert(i64 noundef %a) #7 {
entry:
  %a.addr = alloca i64, align 8
  %x = alloca i64, align 8
  %y = alloca i64, align 8
  store i64 %a, ptr %a.addr, align 8
  %0 = load i64, ptr %a.addr, align 8
  %div = udiv i64 %0, 2
  %and = and i64 %div, 7
  %mul = mul i64 4, %and
  %sh_prom = trunc i64 %mul to i32
  %shr = lshr i32 -180781647, %sh_prom
  %conv = zext i32 %shr to i64
  store i64 %conv, ptr %x, align 8
  br label %for.cond

for.cond:                                         ; preds = %if.end, %entry
  %1 = load i64, ptr %x, align 8
  %mul1 = mul i64 2, %1
  %2 = load i64, ptr %x, align 8
  %3 = load i64, ptr %x, align 8
  %mul2 = mul i64 %2, %3
  %4 = load i64, ptr %a.addr, align 8
  %mul3 = mul i64 %mul2, %4
  %sub = sub i64 %mul1, %mul3
  store i64 %sub, ptr %y, align 8
  %5 = load i64, ptr %y, align 8
  %6 = load i64, ptr %x, align 8
  %cmp = icmp eq i64 %5, %6
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %for.cond
  %7 = load i64, ptr %x, align 8
  ret i64 %7

if.end:                                           ; preds = %for.cond
  %8 = load i64, ptr %y, align 8
  store i64 %8, ptr %x, align 8
  br label %for.cond
}

; Function Attrs: nounwind allocsize(0)
declare noalias ptr @malloc(i64 noundef) #8

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) #6

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind willreturn memory(read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #4 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind willreturn memory(none) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { noinline nounwind optnone willreturn memory(none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind willreturn memory(read) }
attributes #10 = { nounwind }
attributes #11 = { nounwind willreturn memory(none) }
attributes #12 = { nounwind allocsize(0) }
attributes #13 = { noreturn nounwind }

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
!11 = distinct !{!11, !7}
!12 = distinct !{!12, !7}
!13 = distinct !{!13, !7}
