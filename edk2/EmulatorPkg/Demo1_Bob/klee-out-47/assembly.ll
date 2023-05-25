; ModuleID = 'Demo1_Bob.bc'
source_filename = "Demo1_Bob.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._Demo1_Access_Key_PROTOCOL = type { {}*, i8* }
%struct._DEMO1_ACCESS_KEY = type { [2 x i64] }
%struct._EFI_RNG_PROTOCOL = type { i64 (%struct._EFI_RNG_PROTOCOL*, i64*, %struct.GUID*)*, i64 (%struct._EFI_RNG_PROTOCOL*, %struct.GUID*, i64, i8*)* }
%struct.GUID = type { i32, i16, i16, [8 x i8] }
%struct._LINK = type { %struct._DEMO1_ACCESS_KEY, %struct._LINK*, %struct._LINK* }
%struct._Demo1_Bob_PROTOCOL = type { {}* }
%struct.EFI_LOADED_IMAGE_PROTOCOL = type { i32, i8*, %struct.EFI_SYSTEM_TABLE*, i8*, %struct.EFI_DEVICE_PATH_PROTOCOL*, i8*, i32, i8*, i8*, i64, i32, i32, i64 (i8*)* }
%struct.EFI_SYSTEM_TABLE = type { %struct.EFI_TABLE_HEADER, i16*, i32, i8*, %struct._EFI_SIMPLE_TEXT_INPUT_PROTOCOL*, i8*, %struct._EFI_SIMPLE_TEXT_OUTPUT_PROTOCOL*, i8*, %struct._EFI_SIMPLE_TEXT_OUTPUT_PROTOCOL*, %struct.EFI_RUNTIME_SERVICES*, %struct.EFI_BOOT_SERVICES*, i64, %struct.EFI_CONFIGURATION_TABLE* }
%struct.EFI_TABLE_HEADER = type { i64, i32, i32, i32, i32 }
%struct._EFI_SIMPLE_TEXT_INPUT_PROTOCOL = type { i64 (%struct._EFI_SIMPLE_TEXT_INPUT_PROTOCOL*, i8)*, i64 (%struct._EFI_SIMPLE_TEXT_INPUT_PROTOCOL*, %struct.EFI_INPUT_KEY*)*, i8* }
%struct.EFI_INPUT_KEY = type { i16, i16 }
%struct._EFI_SIMPLE_TEXT_OUTPUT_PROTOCOL = type { i64 (%struct._EFI_SIMPLE_TEXT_OUTPUT_PROTOCOL*, i8)*, i64 (%struct._EFI_SIMPLE_TEXT_OUTPUT_PROTOCOL*, i16*)*, i64 (%struct._EFI_SIMPLE_TEXT_OUTPUT_PROTOCOL*, i16*)*, i64 (%struct._EFI_SIMPLE_TEXT_OUTPUT_PROTOCOL*, i64, i64*, i64*)*, i64 (%struct._EFI_SIMPLE_TEXT_OUTPUT_PROTOCOL*, i64)*, i64 (%struct._EFI_SIMPLE_TEXT_OUTPUT_PROTOCOL*, i64)*, i64 (%struct._EFI_SIMPLE_TEXT_OUTPUT_PROTOCOL*)*, i64 (%struct._EFI_SIMPLE_TEXT_OUTPUT_PROTOCOL*, i64, i64)*, i64 (%struct._EFI_SIMPLE_TEXT_OUTPUT_PROTOCOL*, i8)*, %struct.EFI_SIMPLE_TEXT_OUTPUT_MODE* }
%struct.EFI_SIMPLE_TEXT_OUTPUT_MODE = type { i32, i32, i32, i32, i32, i8 }
%struct.EFI_RUNTIME_SERVICES = type { %struct.EFI_TABLE_HEADER, i64 (%struct.EFI_TIME*, %struct.EFI_TIME_CAPABILITIES*)*, i64 (%struct.EFI_TIME*)*, i64 (i8*, i8*, %struct.EFI_TIME*)*, i64 (i8, %struct.EFI_TIME*)*, i64 (i64, i64, i32, %struct.EFI_MEMORY_DESCRIPTOR*)*, i64 (i64, i8**)*, i64 (i16*, %struct.GUID*, i32*, i64*, i8*)*, i64 (i64*, i16*, %struct.GUID*)*, i64 (i16*, %struct.GUID*, i32, i64, i8*)*, i64 (i16*, %struct.GUID*, i32*, %struct._DEMO1_ACCESS_KEY*, i64*, i8*)*, i64 (i16*, %struct.GUID*, i32, %struct._DEMO1_ACCESS_KEY*, i64, i8*)*, i64 (i32*)*, void (i32, i64, i64, i8*)*, i64 (%struct.EFI_CAPSULE_HEADER**, i64, i64)*, i64 (%struct.EFI_CAPSULE_HEADER**, i64, i64*, i32*)*, i64 (i32, i64*, i64*, i64*)* }
%struct.EFI_TIME = type { i16, i8, i8, i8, i8, i8, i8, i32, i16, i8, i8 }
%struct.EFI_TIME_CAPABILITIES = type { i32, i32, i8 }
%struct.EFI_MEMORY_DESCRIPTOR = type { i32, i64, i64, i64, i64 }
%struct.EFI_CAPSULE_HEADER = type { %struct.GUID, i32, i32, i32 }
%struct.EFI_BOOT_SERVICES = type { %struct.EFI_TABLE_HEADER, i64 (i64)*, void (i64)*, i64 (i32, i32, i64, i64*)*, i64 (i64, i64)*, i64 (i64*, %struct.EFI_MEMORY_DESCRIPTOR*, i64*, i64*, i32*)*, i64 (i32, i64, i8**)*, i64 (i8*)*, i64 (i32, i64, void (i8*, i8*)*, i8*, i8**)*, i64 (i8*, i32, i64)*, i64 (i64, i8**, i64*)*, i64 (i8*)*, i64 (i8*)*, i64 (i8*)*, i64 (i8**, %struct.GUID*, i32, i8*)*, i64 (i8*, %struct.GUID*, i8*, i8*)*, i64 (i8*, %struct.GUID*, i8*)*, i64 (i8*, %struct.GUID*, i8**)*, i8*, i64 (%struct.GUID*, i8*, i8**)*, i64 (i32, %struct.GUID*, i8*, i64*, i8**)*, i64 (%struct.GUID*, %struct.EFI_DEVICE_PATH_PROTOCOL**, i8**)*, i64 (%struct.GUID*, i8*)*, i64 (i8, i8*, %struct.EFI_DEVICE_PATH_PROTOCOL*, i8*, i64, i8**)*, i64 (i8*, i64*, i16**)*, i64 (i8*, i64, i64, i16*)*, i64 (i8*)*, i64 (i8*, i64)*, i64 (i64*)*, i64 (i64)*, i64 (i64, i64, i64, i16*)*, i64 (i8*, i8**, %struct.EFI_DEVICE_PATH_PROTOCOL*, i8)*, i64 (i8*, i8*, i8*)*, i64 (i8*, %struct.GUID*, i8**, i8*, i8*, i32)*, i64 (i8*, %struct.GUID*, i8*, i8*)*, i64 (i8*, %struct.GUID*, %struct.EFI_OPEN_PROTOCOL_INFORMATION_ENTRY**, i64*)*, i64 (i8*, %struct.GUID***, i64*)*, i64 (i32, %struct.GUID*, i8*, i64*, i8***)*, i64 (%struct.GUID*, i8*, i8**)*, i64 (i8**, ...)*, i64 (i8*, ...)*, i64 (i8*, i64, i32*)*, void (i8*, i8*, i64)*, void (i8*, i64, i8)*, i64 (i32, i64, void (i8*, i8*)*, i8*, %struct.GUID*, i8**)* }
%struct.EFI_OPEN_PROTOCOL_INFORMATION_ENTRY = type { i8*, i8*, i32, i32 }
%struct.EFI_CONFIGURATION_TABLE = type { %struct.GUID, i8* }
%struct.EFI_DEVICE_PATH_PROTOCOL = type { i8, i8, [2 x i8] }
%struct._Demo1_Alice_PROTOCOL = type { i64 (%struct._Demo1_Alice_PROTOCOL*, i8*, i64*)*, i8* }

@gDemo1_Access_Key_Protocol = hidden global { i64 (%struct._Demo1_Access_Key_PROTOCOL*, i8*, i8, %struct._DEMO1_ACCESS_KEY*)*, i8* } { i64 (%struct._Demo1_Access_Key_PROTOCOL*, i8*, i8, %struct._DEMO1_ACCESS_KEY*)* @Demo1GenerateAccessKey, i8* bitcast (i64 (%struct._Demo1_Access_Key_PROTOCOL*, i8*, %struct._DEMO1_ACCESS_KEY*, i8, i8*)* @Demo1ValidateAccessKey to i8*) }, align 8, !dbg !0
@RngProtocol = hidden global %struct._EFI_RNG_PROTOCOL* null, align 8, !dbg !621
@masterKey = hidden global %struct._DEMO1_ACCESS_KEY* null, align 8, !dbg !640
@accessKeyLock = hidden global i8 0, align 1, !dbg !642
@head = hidden global %struct._LINK* null, align 8, !dbg !644
@last = hidden global %struct._LINK* null, align 8, !dbg !646
@keychain = hidden global %struct._LINK* null, align 8, !dbg !648
@.str = private unnamed_addr constant [19 x i8] c"Demo1_Access_Key.c\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"link != ((void*)0)\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"head\00", align 1
@gDemo1_Bob_Protocol = hidden global { i64 (%struct._Demo1_Bob_PROTOCOL*, i8*, i8**, i64)* } { i64 (%struct._Demo1_Bob_PROTOCOL*, i8*, i8**, i64)* @Demo1BobDataProvider }, align 8, !dbg !650
@AccessKeyProtocol = hidden global %struct._Demo1_Access_Key_PROTOCOL* null, align 8, !dbg !662
@Demo1_Bob_PeriodicTimer = hidden global i8* null, align 8, !dbg !675
@DataToProvide = hidden global i64 0, align 8, !dbg !677
@gLoadImage = hidden global %struct.EFI_LOADED_IMAGE_PROTOCOL* null, align 8, !dbg !679
@.str.3 = private unnamed_addr constant [55 x i8] c"%a: Could not locate Access Key protocol, Status = %r\0A\00", align 1
@__FUNCTION__.Demo1BobInit = private unnamed_addr constant [13 x i8] c"Demo1BobInit\00", align 1
@bobKey = hidden global %struct._DEMO1_ACCESS_KEY zeroinitializer, align 8, !dbg !694
@.str.4 = private unnamed_addr constant [41 x i8] c"%a: Could not generate key, Status = %r\0A\00", align 1
@AliceProtocol = hidden global %struct._Demo1_Alice_PROTOCOL* null, align 8, !dbg !681
@.str.5 = private unnamed_addr constant [50 x i8] c"%a: Could not locate Alice protocol, Status = %r\0A\00", align 1
@.str.6 = private unnamed_addr constant [48 x i8] c"%a: variable '%s' could not be read - bailing!\0A\00", align 1
@.str.7 = private unnamed_addr constant [11 x i32] [i32 65, i32 108, i32 105, i32 99, i32 101, i32 95, i32 77, i32 111, i32 100, i32 101, i32 0], align 4
@.str.8 = private unnamed_addr constant [40 x i8] c"%a: Alice is already running, quitting\0A\00", align 1
@.str.9 = private unnamed_addr constant [43 x i8] c"%a: Alice returned invalid mode, quitting\0A\00", align 1
@.str.10 = private unnamed_addr constant [47 x i8] c"%a: Could not create event timer, Status = %r\0A\00", align 1
@.str.11 = private unnamed_addr constant [11 x i8] c"gLoadImage\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"dest\00", align 1
@.str.13 = private unnamed_addr constant [22 x i8] c"0 && \22Bobkey updated\22\00", align 1
@.str.14 = private unnamed_addr constant [12 x i8] c"Demo1_Bob.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [11 x i8] c"int main()\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define hidden i64 @Demo1GenerateAccessKey(%struct._Demo1_Access_Key_PROTOCOL* noundef %0, i8* noundef %1, i8 noundef zeroext %2, %struct._DEMO1_ACCESS_KEY* noundef %3) #0 !dbg !706 {
  %5 = alloca i64, align 8
  %6 = alloca %struct._Demo1_Access_Key_PROTOCOL*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8, align 1
  %9 = alloca %struct._DEMO1_ACCESS_KEY*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct._Demo1_Access_Key_PROTOCOL* %0, %struct._Demo1_Access_Key_PROTOCOL** %6, align 8
  call void @llvm.dbg.declare(metadata %struct._Demo1_Access_Key_PROTOCOL** %6, metadata !708, metadata !DIExpression()), !dbg !709
  store i8* %1, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !710, metadata !DIExpression()), !dbg !711
  store i8 %2, i8* %8, align 1
  call void @llvm.dbg.declare(metadata i8* %8, metadata !712, metadata !DIExpression()), !dbg !713
  store %struct._DEMO1_ACCESS_KEY* %3, %struct._DEMO1_ACCESS_KEY** %9, align 8
  call void @llvm.dbg.declare(metadata %struct._DEMO1_ACCESS_KEY** %9, metadata !714, metadata !DIExpression()), !dbg !715
  call void @llvm.dbg.declare(metadata i64* %10, metadata !716, metadata !DIExpression()), !dbg !717
  store i64 0, i64* %10, align 8, !dbg !717
  call void @llvm.dbg.declare(metadata i64* %11, metadata !718, metadata !DIExpression()), !dbg !719
  store i64 0, i64* %11, align 8, !dbg !719
  %12 = load %struct._DEMO1_ACCESS_KEY*, %struct._DEMO1_ACCESS_KEY** %9, align 8, !dbg !720
  %13 = icmp eq %struct._DEMO1_ACCESS_KEY* %12, null, !dbg !722
  br i1 %13, label %14, label %15, !dbg !723

14:                                               ; preds = %4
  store i64 -9223372036854775806, i64* %5, align 8, !dbg !724
  br label %52, !dbg !724

15:                                               ; preds = %4
  %16 = load i8, i8* @accessKeyLock, align 1, !dbg !726
  %17 = zext i8 %16 to i32, !dbg !726
  %18 = icmp eq i32 %17, 1, !dbg !728
  br i1 %18, label %19, label %20, !dbg !729

19:                                               ; preds = %15
  store i64 -9223372036854775800, i64* %5, align 8, !dbg !730
  br label %52, !dbg !730

20:                                               ; preds = %15
  %21 = load %struct._EFI_RNG_PROTOCOL*, %struct._EFI_RNG_PROTOCOL** @RngProtocol, align 8, !dbg !732
  %22 = getelementptr inbounds %struct._EFI_RNG_PROTOCOL, %struct._EFI_RNG_PROTOCOL* %21, i32 0, i32 1, !dbg !733
  %23 = load i64 (%struct._EFI_RNG_PROTOCOL*, %struct.GUID*, i64, i8*)*, i64 (%struct._EFI_RNG_PROTOCOL*, %struct.GUID*, i64, i8*)** %22, align 8, !dbg !733
  %24 = load %struct._EFI_RNG_PROTOCOL*, %struct._EFI_RNG_PROTOCOL** @RngProtocol, align 8, !dbg !734
  %25 = load %struct._DEMO1_ACCESS_KEY*, %struct._DEMO1_ACCESS_KEY** %9, align 8, !dbg !735
  %26 = getelementptr inbounds %struct._DEMO1_ACCESS_KEY, %struct._DEMO1_ACCESS_KEY* %25, i32 0, i32 0, !dbg !736
  %27 = bitcast [2 x i64]* %26 to i8*, !dbg !737
  %28 = call i64 %23(%struct._EFI_RNG_PROTOCOL* noundef %24, %struct.GUID* noundef null, i64 noundef 16, i8* noundef %27), !dbg !732
  store i64 %28, i64* %10, align 8, !dbg !738
  %29 = load i64, i64* %10, align 8, !dbg !739
  %30 = icmp slt i64 %29, 0, !dbg !739
  br i1 %30, label %31, label %33, !dbg !741

31:                                               ; preds = %20
  %32 = load i64, i64* %10, align 8, !dbg !742
  store i64 %32, i64* %5, align 8, !dbg !744
  br label %52, !dbg !744

33:                                               ; preds = %20
  %34 = load i8, i8* %8, align 1, !dbg !745
  %35 = icmp ne i8 %34, 0, !dbg !745
  br i1 %35, label %36, label %37, !dbg !747

36:                                               ; preds = %33
  store i64 -2395670108176482799, i64* %11, align 8, !dbg !748
  br label %38, !dbg !750

37:                                               ; preds = %33
  store i64 -2395670108176510803, i64* %11, align 8, !dbg !751
  br label %38

38:                                               ; preds = %37, %36
  %39 = load i64, i64* %11, align 8, !dbg !753
  %40 = load %struct._DEMO1_ACCESS_KEY*, %struct._DEMO1_ACCESS_KEY** %9, align 8, !dbg !754
  %41 = getelementptr inbounds %struct._DEMO1_ACCESS_KEY, %struct._DEMO1_ACCESS_KEY* %40, i32 0, i32 0, !dbg !755
  %42 = getelementptr inbounds [2 x i64], [2 x i64]* %41, i64 0, i64 1, !dbg !754
  store i64 %39, i64* %42, align 8, !dbg !756
  %43 = load %struct._DEMO1_ACCESS_KEY*, %struct._DEMO1_ACCESS_KEY** %9, align 8, !dbg !757
  %44 = load %struct._DEMO1_ACCESS_KEY*, %struct._DEMO1_ACCESS_KEY** @masterKey, align 8, !dbg !759
  %45 = icmp ne %struct._DEMO1_ACCESS_KEY* %43, %44, !dbg !760
  br i1 %45, label %46, label %48, !dbg !761

46:                                               ; preds = %38
  %47 = load %struct._DEMO1_ACCESS_KEY*, %struct._DEMO1_ACCESS_KEY** %9, align 8, !dbg !762
  call void @InsertLast(%struct._DEMO1_ACCESS_KEY* noundef %47), !dbg !764
  br label %50, !dbg !765

48:                                               ; preds = %38
  %49 = load %struct._DEMO1_ACCESS_KEY*, %struct._DEMO1_ACCESS_KEY** %9, align 8, !dbg !766
  call void @InsertFirst(%struct._DEMO1_ACCESS_KEY* noundef %49), !dbg !768
  br label %50

50:                                               ; preds = %48, %46
  %51 = load i64, i64* %10, align 8, !dbg !769
  store i64 %51, i64* %5, align 8, !dbg !770
  br label %52, !dbg !770

52:                                               ; preds = %50, %31, %19, %14
  %53 = load i64, i64* %5, align 8, !dbg !771
  ret i64 %53, !dbg !771
}

; Function Attrs: noinline nounwind optnone uwtable
define hidden i64 @Demo1ValidateAccessKey(%struct._Demo1_Access_Key_PROTOCOL* noundef %0, i8* noundef %1, %struct._DEMO1_ACCESS_KEY* noundef %2, i8 noundef zeroext %3, i8* noundef %4) #0 !dbg !772 {
  %6 = alloca i64, align 8
  %7 = alloca %struct._Demo1_Access_Key_PROTOCOL*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct._DEMO1_ACCESS_KEY*, align 8
  %10 = alloca i8, align 1
  %11 = alloca i8*, align 8
  store %struct._Demo1_Access_Key_PROTOCOL* %0, %struct._Demo1_Access_Key_PROTOCOL** %7, align 8
  call void @llvm.dbg.declare(metadata %struct._Demo1_Access_Key_PROTOCOL** %7, metadata !775, metadata !DIExpression()), !dbg !776
  store i8* %1, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !777, metadata !DIExpression()), !dbg !778
  store %struct._DEMO1_ACCESS_KEY* %2, %struct._DEMO1_ACCESS_KEY** %9, align 8
  call void @llvm.dbg.declare(metadata %struct._DEMO1_ACCESS_KEY** %9, metadata !779, metadata !DIExpression()), !dbg !780
  store i8 %3, i8* %10, align 1
  call void @llvm.dbg.declare(metadata i8* %10, metadata !781, metadata !DIExpression()), !dbg !782
  store i8* %4, i8** %11, align 8
  call void @llvm.dbg.declare(metadata i8** %11, metadata !783, metadata !DIExpression()), !dbg !784
  %12 = load i8*, i8** %11, align 8, !dbg !785
  %13 = icmp eq i8* %12, null, !dbg !787
  br i1 %13, label %14, label %15, !dbg !788

14:                                               ; preds = %5
  store i64 -9223372036854775806, i64* %6, align 8, !dbg !789
  br label %35, !dbg !789

15:                                               ; preds = %5
  %16 = load i8*, i8** %11, align 8, !dbg !791
  store i8 0, i8* %16, align 1, !dbg !792
  %17 = load %struct._DEMO1_ACCESS_KEY*, %struct._DEMO1_ACCESS_KEY** %9, align 8, !dbg !793
  %18 = icmp eq %struct._DEMO1_ACCESS_KEY* %17, null, !dbg !795
  br i1 %18, label %19, label %20, !dbg !796

19:                                               ; preds = %15
  store i64 -9223372036854775806, i64* %6, align 8, !dbg !797
  br label %35, !dbg !797

20:                                               ; preds = %15
  %21 = load i8, i8* %10, align 1, !dbg !799
  %22 = zext i8 %21 to i32, !dbg !799
  %23 = icmp ne i32 %22, 0, !dbg !799
  br i1 %23, label %24, label %31, !dbg !801

24:                                               ; preds = %20
  %25 = load %struct._DEMO1_ACCESS_KEY*, %struct._DEMO1_ACCESS_KEY** %9, align 8, !dbg !802
  %26 = getelementptr inbounds %struct._DEMO1_ACCESS_KEY, %struct._DEMO1_ACCESS_KEY* %25, i32 0, i32 0, !dbg !803
  %27 = getelementptr inbounds [2 x i64], [2 x i64]* %26, i64 0, i64 1, !dbg !802
  %28 = load i64, i64* %27, align 8, !dbg !802
  %29 = icmp eq i64 %28, -2395670108176510803, !dbg !804
  br i1 %29, label %30, label %31, !dbg !805

30:                                               ; preds = %24
  store i64 -9223372036854775806, i64* %6, align 8, !dbg !806
  br label %35, !dbg !806

31:                                               ; preds = %24, %20
  %32 = load %struct._DEMO1_ACCESS_KEY*, %struct._DEMO1_ACCESS_KEY** %9, align 8, !dbg !808
  %33 = call zeroext i8 @DoesKeyExist(%struct._DEMO1_ACCESS_KEY* noundef %32), !dbg !809
  %34 = load i8*, i8** %11, align 8, !dbg !810
  store i8 %33, i8* %34, align 1, !dbg !811
  store i64 0, i64* %6, align 8, !dbg !812
  br label %35, !dbg !812

35:                                               ; preds = %31, %30, %19, %14
  %36 = load i64, i64* %6, align 8, !dbg !813
  ret i64 %36, !dbg !813
}

; Function Attrs: noinline nounwind optnone uwtable
define hidden zeroext i8 @IsKeychainEmpty() #0 !dbg !814 {
  %1 = load %struct._LINK*, %struct._LINK** @head, align 8, !dbg !817
  %2 = icmp eq %struct._LINK* %1, null, !dbg !818
  %3 = zext i1 %2 to i32, !dbg !818
  %4 = trunc i32 %3 to i8, !dbg !817
  ret i8 %4, !dbg !819
}

; Function Attrs: noinline nounwind optnone uwtable
define hidden i64 @KeychainLength() #0 !dbg !820 {
  %1 = alloca i64, align 8
  %2 = alloca %struct._LINK*, align 8
  call void @llvm.dbg.declare(metadata i64* %1, metadata !823, metadata !DIExpression()), !dbg !824
  store i64 0, i64* %1, align 8, !dbg !824
  call void @llvm.dbg.declare(metadata %struct._LINK** %2, metadata !825, metadata !DIExpression()), !dbg !826
  %3 = load %struct._LINK*, %struct._LINK** @head, align 8, !dbg !827
  store %struct._LINK* %3, %struct._LINK** %2, align 8, !dbg !829
  br label %4, !dbg !830

4:                                                ; preds = %10, %0
  %5 = load %struct._LINK*, %struct._LINK** %2, align 8, !dbg !831
  %6 = icmp ne %struct._LINK* %5, null, !dbg !833
  br i1 %6, label %7, label %14, !dbg !834

7:                                                ; preds = %4
  %8 = load i64, i64* %1, align 8, !dbg !835
  %9 = add i64 %8, 1, !dbg !835
  store i64 %9, i64* %1, align 8, !dbg !835
  br label %10, !dbg !837

10:                                               ; preds = %7
  %11 = load %struct._LINK*, %struct._LINK** %2, align 8, !dbg !838
  %12 = getelementptr inbounds %struct._LINK, %struct._LINK* %11, i32 0, i32 1, !dbg !839
  %13 = load %struct._LINK*, %struct._LINK** %12, align 8, !dbg !839
  store %struct._LINK* %13, %struct._LINK** %2, align 8, !dbg !840
  br label %4, !dbg !841, !llvm.loop !842

14:                                               ; preds = %4
  %15 = load i64, i64* %1, align 8, !dbg !845
  ret i64 %15, !dbg !846
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind optnone uwtable
define hidden void @InsertFirst(%struct._DEMO1_ACCESS_KEY* noundef %0) #0 !dbg !847 {
  %2 = alloca %struct._DEMO1_ACCESS_KEY*, align 8
  %3 = alloca %struct._LINK*, align 8
  store %struct._DEMO1_ACCESS_KEY* %0, %struct._DEMO1_ACCESS_KEY** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._DEMO1_ACCESS_KEY** %2, metadata !850, metadata !DIExpression()), !dbg !851
  call void @llvm.dbg.declare(metadata %struct._LINK** %3, metadata !852, metadata !DIExpression()), !dbg !853
  %4 = call i8* @AllocatePool(i64 noundef 32), !dbg !854
  %5 = bitcast i8* %4 to %struct._LINK*, !dbg !854
  store %struct._LINK* %5, %struct._LINK** %3, align 8, !dbg !853
  br label %6, !dbg !855

6:                                                ; preds = %1
  %7 = call zeroext i8 @DebugAssertEnabled(), !dbg !856
  %8 = icmp ne i8 %7, 0, !dbg !856
  br i1 %8, label %9, label %14, !dbg !859

9:                                                ; preds = %6
  %10 = load %struct._LINK*, %struct._LINK** %3, align 8, !dbg !860
  %11 = icmp ne %struct._LINK* %10, null, !dbg !860
  br i1 %11, label %13, label %12, !dbg !863

12:                                               ; preds = %9
  call void @DebugAssert(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i64 noundef 88, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0)), !dbg !864
  br label %13, !dbg !864

13:                                               ; preds = %12, %9
  br label %14, !dbg !863

14:                                               ; preds = %13, %6
  br label %15, !dbg !859

15:                                               ; preds = %14
  %16 = load %struct._LINK*, %struct._LINK** %3, align 8, !dbg !866
  %17 = getelementptr inbounds %struct._LINK, %struct._LINK* %16, i32 0, i32 0, !dbg !867
  %18 = bitcast %struct._DEMO1_ACCESS_KEY* %17 to i8*, !dbg !868
  %19 = load %struct._DEMO1_ACCESS_KEY*, %struct._DEMO1_ACCESS_KEY** %2, align 8, !dbg !869
  %20 = bitcast %struct._DEMO1_ACCESS_KEY* %19 to i8*, !dbg !869
  %21 = call i8* @CopyMem(i8* noundef %18, i8* noundef %20, i64 noundef 16), !dbg !870
  %22 = call zeroext i8 @IsKeychainEmpty(), !dbg !871
  %23 = icmp ne i8 %22, 0, !dbg !871
  br i1 %23, label %24, label %26, !dbg !873

24:                                               ; preds = %15
  %25 = load %struct._LINK*, %struct._LINK** %3, align 8, !dbg !874
  store %struct._LINK* %25, %struct._LINK** @last, align 8, !dbg !876
  br label %30, !dbg !877

26:                                               ; preds = %15
  %27 = load %struct._LINK*, %struct._LINK** %3, align 8, !dbg !878
  %28 = load %struct._LINK*, %struct._LINK** @head, align 8, !dbg !880
  %29 = getelementptr inbounds %struct._LINK, %struct._LINK* %28, i32 0, i32 2, !dbg !881
  store %struct._LINK* %27, %struct._LINK** %29, align 8, !dbg !882
  br label %30

30:                                               ; preds = %26, %24
  %31 = load %struct._LINK*, %struct._LINK** %3, align 8, !dbg !883
  %32 = getelementptr inbounds %struct._LINK, %struct._LINK* %31, i32 0, i32 2, !dbg !884
  store %struct._LINK* null, %struct._LINK** %32, align 8, !dbg !885
  %33 = load %struct._LINK*, %struct._LINK** @head, align 8, !dbg !886
  %34 = load %struct._LINK*, %struct._LINK** %3, align 8, !dbg !887
  %35 = getelementptr inbounds %struct._LINK, %struct._LINK* %34, i32 0, i32 1, !dbg !888
  store %struct._LINK* %33, %struct._LINK** %35, align 8, !dbg !889
  %36 = load %struct._LINK*, %struct._LINK** %3, align 8, !dbg !890
  store %struct._LINK* %36, %struct._LINK** @head, align 8, !dbg !891
  ret void, !dbg !892
}

declare hidden i8* @AllocatePool(i64 noundef) #2

declare hidden zeroext i8 @DebugAssertEnabled() #2

declare hidden void @DebugAssert(i8* noundef, i64 noundef, i8* noundef) #2

declare hidden i8* @CopyMem(i8* noundef, i8* noundef, i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define hidden void @InsertLast(%struct._DEMO1_ACCESS_KEY* noundef %0) #0 !dbg !893 {
  %2 = alloca %struct._DEMO1_ACCESS_KEY*, align 8
  %3 = alloca %struct._LINK*, align 8
  store %struct._DEMO1_ACCESS_KEY* %0, %struct._DEMO1_ACCESS_KEY** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._DEMO1_ACCESS_KEY** %2, metadata !894, metadata !DIExpression()), !dbg !895
  call void @llvm.dbg.declare(metadata %struct._LINK** %3, metadata !896, metadata !DIExpression()), !dbg !897
  %4 = call i8* @AllocatePool(i64 noundef 32), !dbg !898
  %5 = bitcast i8* %4 to %struct._LINK*, !dbg !898
  store %struct._LINK* %5, %struct._LINK** %3, align 8, !dbg !897
  br label %6, !dbg !899

6:                                                ; preds = %1
  %7 = call zeroext i8 @DebugAssertEnabled(), !dbg !900
  %8 = icmp ne i8 %7, 0, !dbg !900
  br i1 %8, label %9, label %14, !dbg !903

9:                                                ; preds = %6
  %10 = load %struct._LINK*, %struct._LINK** %3, align 8, !dbg !904
  %11 = icmp ne %struct._LINK* %10, null, !dbg !904
  br i1 %11, label %13, label %12, !dbg !907

12:                                               ; preds = %9
  call void @DebugAssert(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i64 noundef 115, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0)), !dbg !908
  br label %13, !dbg !908

13:                                               ; preds = %12, %9
  br label %14, !dbg !907

14:                                               ; preds = %13, %6
  br label %15, !dbg !903

15:                                               ; preds = %14
  %16 = load %struct._LINK*, %struct._LINK** %3, align 8, !dbg !910
  %17 = getelementptr inbounds %struct._LINK, %struct._LINK* %16, i32 0, i32 0, !dbg !911
  %18 = bitcast %struct._DEMO1_ACCESS_KEY* %17 to i8*, !dbg !912
  %19 = load %struct._DEMO1_ACCESS_KEY*, %struct._DEMO1_ACCESS_KEY** %2, align 8, !dbg !913
  %20 = bitcast %struct._DEMO1_ACCESS_KEY* %19 to i8*, !dbg !913
  %21 = call i8* @CopyMem(i8* noundef %18, i8* noundef %20, i64 noundef 16), !dbg !914
  %22 = call zeroext i8 @IsKeychainEmpty(), !dbg !915
  %23 = icmp ne i8 %22, 0, !dbg !915
  br i1 %23, label %24, label %26, !dbg !917

24:                                               ; preds = %15
  %25 = load %struct._LINK*, %struct._LINK** %3, align 8, !dbg !918
  store %struct._LINK* %25, %struct._LINK** @last, align 8, !dbg !920
  br label %33, !dbg !921

26:                                               ; preds = %15
  %27 = load %struct._LINK*, %struct._LINK** %3, align 8, !dbg !922
  %28 = load %struct._LINK*, %struct._LINK** @last, align 8, !dbg !924
  %29 = getelementptr inbounds %struct._LINK, %struct._LINK* %28, i32 0, i32 1, !dbg !925
  store %struct._LINK* %27, %struct._LINK** %29, align 8, !dbg !926
  %30 = load %struct._LINK*, %struct._LINK** @last, align 8, !dbg !927
  %31 = load %struct._LINK*, %struct._LINK** %3, align 8, !dbg !928
  %32 = getelementptr inbounds %struct._LINK, %struct._LINK* %31, i32 0, i32 2, !dbg !929
  store %struct._LINK* %30, %struct._LINK** %32, align 8, !dbg !930
  br label %33

33:                                               ; preds = %26, %24
  %34 = load %struct._LINK*, %struct._LINK** %3, align 8, !dbg !931
  %35 = getelementptr inbounds %struct._LINK, %struct._LINK* %34, i32 0, i32 1, !dbg !932
  store %struct._LINK* null, %struct._LINK** %35, align 8, !dbg !933
  %36 = load %struct._LINK*, %struct._LINK** %3, align 8, !dbg !934
  store %struct._LINK* %36, %struct._LINK** @last, align 8, !dbg !935
  ret void, !dbg !936
}

; Function Attrs: noinline nounwind optnone uwtable
define hidden zeroext i8 @DoesKeyExist(%struct._DEMO1_ACCESS_KEY* noundef %0) #0 !dbg !937 {
  %2 = alloca i8, align 1
  %3 = alloca %struct._DEMO1_ACCESS_KEY*, align 8
  %4 = alloca %struct._LINK*, align 8
  store %struct._DEMO1_ACCESS_KEY* %0, %struct._DEMO1_ACCESS_KEY** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._DEMO1_ACCESS_KEY** %3, metadata !940, metadata !DIExpression()), !dbg !941
  call void @llvm.dbg.declare(metadata %struct._LINK** %4, metadata !942, metadata !DIExpression()), !dbg !943
  %5 = load %struct._DEMO1_ACCESS_KEY*, %struct._DEMO1_ACCESS_KEY** %3, align 8, !dbg !944
  %6 = icmp eq %struct._DEMO1_ACCESS_KEY* %5, null, !dbg !946
  br i1 %6, label %7, label %8, !dbg !947

7:                                                ; preds = %1
  store i8 0, i8* %2, align 1, !dbg !948
  br label %35, !dbg !948

8:                                                ; preds = %1
  %9 = call i8* @malloc(i64 noundef 32), !dbg !950
  %10 = bitcast i8* %9 to %struct._LINK*, !dbg !951
  store %struct._LINK* %10, %struct._LINK** @head, align 8, !dbg !952
  %11 = load %struct._LINK*, %struct._LINK** @head, align 8, !dbg !953
  %12 = bitcast %struct._LINK* %11 to i8*, !dbg !953
  call void @klee_make_symbolic(i8* noundef %12, i64 noundef 32, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)), !dbg !954
  %13 = load %struct._LINK*, %struct._LINK** @head, align 8, !dbg !955
  store %struct._LINK* %13, %struct._LINK** %4, align 8, !dbg !957
  br label %14, !dbg !958

14:                                               ; preds = %30, %8
  %15 = load %struct._LINK*, %struct._LINK** %4, align 8, !dbg !959
  %16 = icmp ne %struct._LINK* %15, null, !dbg !961
  br i1 %16, label %17, label %34, !dbg !962

17:                                               ; preds = %14
  %18 = load %struct._DEMO1_ACCESS_KEY*, %struct._DEMO1_ACCESS_KEY** %3, align 8, !dbg !963
  %19 = getelementptr inbounds %struct._DEMO1_ACCESS_KEY, %struct._DEMO1_ACCESS_KEY* %18, i32 0, i32 0, !dbg !966
  %20 = getelementptr inbounds [2 x i64], [2 x i64]* %19, i64 0, i64 0, !dbg !963
  %21 = load i64, i64* %20, align 8, !dbg !963
  %22 = load %struct._LINK*, %struct._LINK** %4, align 8, !dbg !967
  %23 = getelementptr inbounds %struct._LINK, %struct._LINK* %22, i32 0, i32 0, !dbg !968
  %24 = getelementptr inbounds %struct._DEMO1_ACCESS_KEY, %struct._DEMO1_ACCESS_KEY* %23, i32 0, i32 0, !dbg !969
  %25 = getelementptr inbounds [2 x i64], [2 x i64]* %24, i64 0, i64 0, !dbg !967
  %26 = load i64, i64* %25, align 8, !dbg !967
  %27 = icmp eq i64 %21, %26, !dbg !970
  br i1 %27, label %28, label %29, !dbg !971

28:                                               ; preds = %17
  store i8 1, i8* %2, align 1, !dbg !972
  br label %35, !dbg !972

29:                                               ; preds = %17
  br label %30, !dbg !974

30:                                               ; preds = %29
  %31 = load %struct._LINK*, %struct._LINK** %4, align 8, !dbg !975
  %32 = getelementptr inbounds %struct._LINK, %struct._LINK* %31, i32 0, i32 1, !dbg !976
  %33 = load %struct._LINK*, %struct._LINK** %32, align 8, !dbg !976
  store %struct._LINK* %33, %struct._LINK** %4, align 8, !dbg !977
  br label %14, !dbg !978, !llvm.loop !979

34:                                               ; preds = %14
  store i8 0, i8* %2, align 1, !dbg !981
  br label %35, !dbg !981

35:                                               ; preds = %34, %28, %7
  %36 = load i8, i8* %2, align 1, !dbg !982
  ret i8 %36, !dbg !982
}

declare i8* @malloc(i64 noundef) #2

declare hidden void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define hidden i64 @Demo1AccessKeyInit(i8* noundef %0, %struct.EFI_SYSTEM_TABLE* noundef %1) #0 !dbg !983 {
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.EFI_SYSTEM_TABLE*, align 8
  %6 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !986, metadata !DIExpression()), !dbg !987
  store %struct.EFI_SYSTEM_TABLE* %1, %struct.EFI_SYSTEM_TABLE** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.EFI_SYSTEM_TABLE** %5, metadata !988, metadata !DIExpression()), !dbg !989
  call void @llvm.dbg.declare(metadata i64* %6, metadata !990, metadata !DIExpression()), !dbg !991
  %7 = load i64, i64* %6, align 8, !dbg !992
  %8 = icmp slt i64 %7, 0, !dbg !992
  br i1 %8, label %12, label %9, !dbg !994

9:                                                ; preds = %2
  %10 = load %struct._EFI_RNG_PROTOCOL*, %struct._EFI_RNG_PROTOCOL** @RngProtocol, align 8, !dbg !995
  %11 = icmp eq %struct._EFI_RNG_PROTOCOL* %10, null, !dbg !996
  br i1 %11, label %12, label %14, !dbg !997

12:                                               ; preds = %9, %2
  %13 = load i64, i64* %6, align 8, !dbg !998
  store i64 %13, i64* %3, align 8, !dbg !1000
  br label %29, !dbg !1000

14:                                               ; preds = %9
  %15 = call i8* @AllocatePool(i64 noundef 16), !dbg !1001
  %16 = bitcast i8* %15 to %struct._DEMO1_ACCESS_KEY*, !dbg !1001
  store %struct._DEMO1_ACCESS_KEY* %16, %struct._DEMO1_ACCESS_KEY** @masterKey, align 8, !dbg !1002
  %17 = load %struct._DEMO1_ACCESS_KEY*, %struct._DEMO1_ACCESS_KEY** @masterKey, align 8, !dbg !1003
  %18 = call i64 @Demo1GenerateAccessKey(%struct._Demo1_Access_Key_PROTOCOL* noundef bitcast ({ i64 (%struct._Demo1_Access_Key_PROTOCOL*, i8*, i8, %struct._DEMO1_ACCESS_KEY*)*, i8* }* @gDemo1_Access_Key_Protocol to %struct._Demo1_Access_Key_PROTOCOL*), i8* noundef null, i8 noundef zeroext 1, %struct._DEMO1_ACCESS_KEY* noundef %17), !dbg !1004
  store i64 %18, i64* %6, align 8, !dbg !1005
  %19 = load i64, i64* %6, align 8, !dbg !1006
  %20 = icmp slt i64 %19, 0, !dbg !1006
  br i1 %20, label %21, label %23, !dbg !1008

21:                                               ; preds = %14
  %22 = load i64, i64* %6, align 8, !dbg !1009
  store i64 %22, i64* %3, align 8, !dbg !1011
  br label %29, !dbg !1011

23:                                               ; preds = %14
  %24 = load i64, i64* %6, align 8, !dbg !1012
  %25 = icmp slt i64 %24, 0, !dbg !1012
  br i1 %25, label %26, label %28, !dbg !1014

26:                                               ; preds = %23
  %27 = load i64, i64* %6, align 8, !dbg !1015
  store i64 %27, i64* %3, align 8, !dbg !1017
  br label %29, !dbg !1017

28:                                               ; preds = %23
  store i64 0, i64* %3, align 8, !dbg !1018
  br label %29, !dbg !1018

29:                                               ; preds = %28, %26, %21, %12
  %30 = load i64, i64* %3, align 8, !dbg !1019
  ret i64 %30, !dbg !1019
}

; Function Attrs: noinline nounwind optnone uwtable
define hidden i64 @Demo1AccessKeyUnload(i8* noundef %0) #0 !dbg !1020 {
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !1021, metadata !DIExpression()), !dbg !1022
  call void @llvm.dbg.declare(metadata i64* %3, metadata !1023, metadata !DIExpression()), !dbg !1024
  store i64 0, i64* %3, align 8, !dbg !1024
  %4 = load %struct._DEMO1_ACCESS_KEY*, %struct._DEMO1_ACCESS_KEY** @masterKey, align 8, !dbg !1025
  %5 = bitcast %struct._DEMO1_ACCESS_KEY* %4 to i8*, !dbg !1025
  call void @FreePool(i8* noundef %5), !dbg !1026
  %6 = load i64, i64* %3, align 8, !dbg !1027
  ret i64 %6, !dbg !1028
}

declare hidden void @FreePool(i8* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define hidden i64 @Demo1BobDataProvider(%struct._Demo1_Bob_PROTOCOL* noundef %0, i8* noundef %1, i8** noundef %2, i64 noundef %3) #0 !dbg !1029 {
  %5 = alloca i64, align 8
  %6 = alloca %struct._Demo1_Bob_PROTOCOL*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  store %struct._Demo1_Bob_PROTOCOL* %0, %struct._Demo1_Bob_PROTOCOL** %6, align 8
  call void @llvm.dbg.declare(metadata %struct._Demo1_Bob_PROTOCOL** %6, metadata !1030, metadata !DIExpression()), !dbg !1031
  store i8* %1, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !1032, metadata !DIExpression()), !dbg !1033
  store i8** %2, i8*** %8, align 8
  call void @llvm.dbg.declare(metadata i8*** %8, metadata !1034, metadata !DIExpression()), !dbg !1035
  store i64 %3, i64* %9, align 8
  call void @llvm.dbg.declare(metadata i64* %9, metadata !1036, metadata !DIExpression()), !dbg !1037
  call void @llvm.dbg.declare(metadata i64* %10, metadata !1038, metadata !DIExpression()), !dbg !1039
  %13 = load i8*, i8** %7, align 8, !dbg !1040
  %14 = ptrtoint i8* %13 to i64, !dbg !1041
  store i64 %14, i64* %10, align 8, !dbg !1039
  %15 = call i8* @malloc(i64 noundef 96), !dbg !1042
  %16 = bitcast i8* %15 to %struct.EFI_LOADED_IMAGE_PROTOCOL*, !dbg !1043
  store %struct.EFI_LOADED_IMAGE_PROTOCOL* %16, %struct.EFI_LOADED_IMAGE_PROTOCOL** @gLoadImage, align 8, !dbg !1044
  %17 = load %struct.EFI_LOADED_IMAGE_PROTOCOL*, %struct.EFI_LOADED_IMAGE_PROTOCOL** @gLoadImage, align 8, !dbg !1045
  %18 = bitcast %struct.EFI_LOADED_IMAGE_PROTOCOL* %17 to i8*, !dbg !1045
  call void @klee_make_symbolic(i8* noundef %18, i64 noundef 96, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.11, i64 0, i64 0)), !dbg !1046
  call void @llvm.dbg.declare(metadata i64* %11, metadata !1047, metadata !DIExpression()), !dbg !1048
  %19 = load %struct.EFI_LOADED_IMAGE_PROTOCOL*, %struct.EFI_LOADED_IMAGE_PROTOCOL** @gLoadImage, align 8, !dbg !1049
  %20 = getelementptr inbounds %struct.EFI_LOADED_IMAGE_PROTOCOL, %struct.EFI_LOADED_IMAGE_PROTOCOL* %19, i32 0, i32 8, !dbg !1050
  %21 = load i8*, i8** %20, align 8, !dbg !1050
  %22 = ptrtoint i8* %21 to i64, !dbg !1051
  store i64 %22, i64* %11, align 8, !dbg !1048
  call void @llvm.dbg.declare(metadata i8** %12, metadata !1052, metadata !DIExpression()), !dbg !1053
  store i8* null, i8** %12, align 8, !dbg !1053
  %23 = load i8**, i8*** %8, align 8, !dbg !1054
  %24 = icmp eq i8** %23, null, !dbg !1056
  br i1 %24, label %25, label %26, !dbg !1057

25:                                               ; preds = %4
  store i64 -9223372036854775806, i64* %5, align 8, !dbg !1058
  br label %55, !dbg !1058

26:                                               ; preds = %4
  %27 = load i64, i64* %10, align 8, !dbg !1060
  %28 = load i64, i64* %11, align 8, !dbg !1062
  %29 = icmp ult i64 %27, %28, !dbg !1063
  br i1 %29, label %30, label %31, !dbg !1064

30:                                               ; preds = %26
  store i64 -9223372036854775793, i64* %5, align 8, !dbg !1065
  br label %55, !dbg !1065

31:                                               ; preds = %26
  %32 = load i64, i64* %11, align 8, !dbg !1067
  %33 = load %struct.EFI_LOADED_IMAGE_PROTOCOL*, %struct.EFI_LOADED_IMAGE_PROTOCOL** @gLoadImage, align 8, !dbg !1069
  %34 = getelementptr inbounds %struct.EFI_LOADED_IMAGE_PROTOCOL, %struct.EFI_LOADED_IMAGE_PROTOCOL* %33, i32 0, i32 9, !dbg !1070
  %35 = load i64, i64* %34, align 8, !dbg !1070
  %36 = add i64 %32, %35, !dbg !1071
  %37 = load i64, i64* %10, align 8, !dbg !1072
  %38 = load i64, i64* %9, align 8, !dbg !1073
  %39 = add i64 %37, %38, !dbg !1074
  %40 = icmp ult i64 %36, %39, !dbg !1075
  br i1 %40, label %41, label %42, !dbg !1076

41:                                               ; preds = %31
  store i64 -9223372036854775793, i64* %5, align 8, !dbg !1077
  br label %55, !dbg !1077

42:                                               ; preds = %31
  %43 = load i64, i64* %9, align 8, !dbg !1079
  %44 = call i8* @malloc(i64 noundef %43), !dbg !1080
  store i8* %44, i8** %12, align 8, !dbg !1081
  %45 = load i8*, i8** %12, align 8, !dbg !1082
  %46 = icmp eq i8* %45, null, !dbg !1084
  br i1 %46, label %47, label %48, !dbg !1085

47:                                               ; preds = %42
  store i64 -9223372036854775806, i64* %5, align 8, !dbg !1086
  br label %55, !dbg !1086

48:                                               ; preds = %42
  %49 = load i8*, i8** %12, align 8, !dbg !1088
  %50 = load i8*, i8** %7, align 8, !dbg !1089
  %51 = load i64, i64* %9, align 8, !dbg !1090
  %52 = call i8* @memcpy(i8* %49, i8* %50, i64 %51), !dbg !1091
  %53 = load i8*, i8** %12, align 8, !dbg !1092
  %54 = load i8**, i8*** %8, align 8, !dbg !1093
  store i8* %53, i8** %54, align 8, !dbg !1094
  store i64 0, i64* %5, align 8, !dbg !1095
  br label %55, !dbg !1095

55:                                               ; preds = %48, %47, %41, %30, %25
  %56 = load i64, i64* %5, align 8, !dbg !1096
  ret i64 %56, !dbg !1096
}

; Function Attrs: noinline nounwind optnone uwtable
define hidden i64 @Demo1BobInit(i8* noundef %0, %struct.EFI_SYSTEM_TABLE* noundef %1) #0 !dbg !1097 {
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.EFI_SYSTEM_TABLE*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1098, metadata !DIExpression()), !dbg !1099
  store %struct.EFI_SYSTEM_TABLE* %1, %struct.EFI_SYSTEM_TABLE** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.EFI_SYSTEM_TABLE** %5, metadata !1100, metadata !DIExpression()), !dbg !1101
  call void @llvm.dbg.declare(metadata i64* %6, metadata !1102, metadata !DIExpression()), !dbg !1103
  call void @llvm.dbg.declare(metadata i64* %7, metadata !1104, metadata !DIExpression()), !dbg !1105
  call void @llvm.dbg.declare(metadata i64* %8, metadata !1106, metadata !DIExpression()), !dbg !1107
  store i64 8, i64* %8, align 8, !dbg !1107
  %9 = load i64, i64* %6, align 8, !dbg !1108
  %10 = icmp slt i64 %9, 0, !dbg !1108
  br i1 %10, label %14, label %11, !dbg !1110

11:                                               ; preds = %2
  %12 = load %struct._Demo1_Access_Key_PROTOCOL*, %struct._Demo1_Access_Key_PROTOCOL** @AccessKeyProtocol, align 8, !dbg !1111
  %13 = icmp eq %struct._Demo1_Access_Key_PROTOCOL* %12, null, !dbg !1112
  br i1 %13, label %14, label %29, !dbg !1113

14:                                               ; preds = %11, %2
  br label %15, !dbg !1114

15:                                               ; preds = %14
  %16 = call zeroext i8 @DebugPrintEnabled(), !dbg !1116
  %17 = icmp ne i8 %16, 0, !dbg !1116
  br i1 %17, label %18, label %26, !dbg !1119

18:                                               ; preds = %15
  br label %19, !dbg !1120

19:                                               ; preds = %18
  %20 = call zeroext i8 @DebugPrintLevelEnabled(i64 noundef 2147483648), !dbg !1122
  %21 = icmp ne i8 %20, 0, !dbg !1122
  br i1 %21, label %22, label %24, !dbg !1125

22:                                               ; preds = %19
  %23 = load i64, i64* %6, align 8, !dbg !1126
  call void (i64, i8*, ...) @DebugPrint(i64 noundef 2147483648, i8* noundef getelementptr inbounds ([55 x i8], [55 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @__FUNCTION__.Demo1BobInit, i64 0, i64 0), i64 noundef %23), !dbg !1126
  br label %24, !dbg !1126

24:                                               ; preds = %22, %19
  br label %25, !dbg !1125

25:                                               ; preds = %24
  br label %26, !dbg !1120

26:                                               ; preds = %25, %15
  br label %27, !dbg !1119

27:                                               ; preds = %26
  %28 = load i64, i64* %6, align 8, !dbg !1128
  store i64 %28, i64* %3, align 8, !dbg !1129
  br label %146, !dbg !1129

29:                                               ; preds = %11
  %30 = load %struct._Demo1_Access_Key_PROTOCOL*, %struct._Demo1_Access_Key_PROTOCOL** @AccessKeyProtocol, align 8, !dbg !1130
  %31 = getelementptr inbounds %struct._Demo1_Access_Key_PROTOCOL, %struct._Demo1_Access_Key_PROTOCOL* %30, i32 0, i32 0, !dbg !1131
  %32 = bitcast {}** %31 to i64 (%struct._Demo1_Access_Key_PROTOCOL*, i8*, i8, %struct._DEMO1_ACCESS_KEY*)**, !dbg !1131
  %33 = load i64 (%struct._Demo1_Access_Key_PROTOCOL*, i8*, i8, %struct._DEMO1_ACCESS_KEY*)*, i64 (%struct._Demo1_Access_Key_PROTOCOL*, i8*, i8, %struct._DEMO1_ACCESS_KEY*)** %32, align 8, !dbg !1131
  %34 = call i64 %33(%struct._Demo1_Access_Key_PROTOCOL* noundef null, i8* noundef null, i8 noundef zeroext 0, %struct._DEMO1_ACCESS_KEY* noundef @bobKey), !dbg !1130
  store i64 %34, i64* %6, align 8, !dbg !1132
  %35 = load i64, i64* %6, align 8, !dbg !1133
  %36 = icmp slt i64 %35, 0, !dbg !1133
  br i1 %36, label %37, label %52, !dbg !1135

37:                                               ; preds = %29
  br label %38, !dbg !1136

38:                                               ; preds = %37
  %39 = call zeroext i8 @DebugPrintEnabled(), !dbg !1138
  %40 = icmp ne i8 %39, 0, !dbg !1138
  br i1 %40, label %41, label %49, !dbg !1141

41:                                               ; preds = %38
  br label %42, !dbg !1142

42:                                               ; preds = %41
  %43 = call zeroext i8 @DebugPrintLevelEnabled(i64 noundef 2147483648), !dbg !1144
  %44 = icmp ne i8 %43, 0, !dbg !1144
  br i1 %44, label %45, label %47, !dbg !1147

45:                                               ; preds = %42
  %46 = load i64, i64* %6, align 8, !dbg !1148
  call void (i64, i8*, ...) @DebugPrint(i64 noundef 2147483648, i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0), i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @__FUNCTION__.Demo1BobInit, i64 0, i64 0), i64 noundef %46), !dbg !1148
  br label %47, !dbg !1148

47:                                               ; preds = %45, %42
  br label %48, !dbg !1147

48:                                               ; preds = %47
  br label %49, !dbg !1142

49:                                               ; preds = %48, %38
  br label %50, !dbg !1141

50:                                               ; preds = %49
  %51 = load i64, i64* %6, align 8, !dbg !1150
  store i64 %51, i64* %3, align 8, !dbg !1151
  br label %146, !dbg !1151

52:                                               ; preds = %29
  %53 = load i64, i64* %6, align 8, !dbg !1152
  %54 = icmp slt i64 %53, 0, !dbg !1152
  br i1 %54, label %58, label %55, !dbg !1154

55:                                               ; preds = %52
  %56 = load %struct._Demo1_Alice_PROTOCOL*, %struct._Demo1_Alice_PROTOCOL** @AliceProtocol, align 8, !dbg !1155
  %57 = icmp eq %struct._Demo1_Alice_PROTOCOL* %56, null, !dbg !1156
  br i1 %57, label %58, label %73, !dbg !1157

58:                                               ; preds = %55, %52
  br label %59, !dbg !1158

59:                                               ; preds = %58
  %60 = call zeroext i8 @DebugPrintEnabled(), !dbg !1160
  %61 = icmp ne i8 %60, 0, !dbg !1160
  br i1 %61, label %62, label %70, !dbg !1163

62:                                               ; preds = %59
  br label %63, !dbg !1164

63:                                               ; preds = %62
  %64 = call zeroext i8 @DebugPrintLevelEnabled(i64 noundef 2147483648), !dbg !1166
  %65 = icmp ne i8 %64, 0, !dbg !1166
  br i1 %65, label %66, label %68, !dbg !1169

66:                                               ; preds = %63
  %67 = load i64, i64* %6, align 8, !dbg !1170
  call void (i64, i8*, ...) @DebugPrint(i64 noundef 2147483648, i8* noundef getelementptr inbounds ([50 x i8], [50 x i8]* @.str.5, i64 0, i64 0), i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @__FUNCTION__.Demo1BobInit, i64 0, i64 0), i64 noundef %67), !dbg !1170
  br label %68, !dbg !1170

68:                                               ; preds = %66, %63
  br label %69, !dbg !1169

69:                                               ; preds = %68
  br label %70, !dbg !1164

70:                                               ; preds = %69, %59
  br label %71, !dbg !1163

71:                                               ; preds = %70
  %72 = load i64, i64* %6, align 8, !dbg !1172
  store i64 %72, i64* %3, align 8, !dbg !1173
  br label %146, !dbg !1173

73:                                               ; preds = %55
  %74 = load i64, i64* %6, align 8, !dbg !1174
  %75 = icmp slt i64 %74, 0, !dbg !1174
  br i1 %75, label %76, label %90, !dbg !1176

76:                                               ; preds = %73
  br label %77, !dbg !1177

77:                                               ; preds = %76
  %78 = call zeroext i8 @DebugPrintEnabled(), !dbg !1179
  %79 = icmp ne i8 %78, 0, !dbg !1179
  br i1 %79, label %80, label %87, !dbg !1182

80:                                               ; preds = %77
  br label %81, !dbg !1183

81:                                               ; preds = %80
  %82 = call zeroext i8 @DebugPrintLevelEnabled(i64 noundef 2147483648), !dbg !1185
  %83 = icmp ne i8 %82, 0, !dbg !1185
  br i1 %83, label %84, label %85, !dbg !1188

84:                                               ; preds = %81
  call void (i64, i8*, ...) @DebugPrint(i64 noundef 2147483648, i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @.str.6, i64 0, i64 0), i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @__FUNCTION__.Demo1BobInit, i64 0, i64 0), i32* noundef getelementptr inbounds ([11 x i32], [11 x i32]* @.str.7, i64 0, i64 0)), !dbg !1189
  br label %85, !dbg !1189

85:                                               ; preds = %84, %81
  br label %86, !dbg !1188

86:                                               ; preds = %85
  br label %87, !dbg !1183

87:                                               ; preds = %86, %77
  br label %88, !dbg !1182

88:                                               ; preds = %87
  %89 = load i64, i64* %6, align 8, !dbg !1191
  store i64 %89, i64* %3, align 8, !dbg !1192
  br label %146, !dbg !1192

90:                                               ; preds = %73
  %91 = load i64, i64* %7, align 8, !dbg !1193
  %92 = icmp eq i64 %91, 2, !dbg !1195
  br i1 %92, label %93, label %106, !dbg !1196

93:                                               ; preds = %90
  br label %94, !dbg !1197

94:                                               ; preds = %93
  %95 = call zeroext i8 @DebugPrintEnabled(), !dbg !1199
  %96 = icmp ne i8 %95, 0, !dbg !1199
  br i1 %96, label %97, label %104, !dbg !1202

97:                                               ; preds = %94
  br label %98, !dbg !1203

98:                                               ; preds = %97
  %99 = call zeroext i8 @DebugPrintLevelEnabled(i64 noundef 2147483648), !dbg !1205
  %100 = icmp ne i8 %99, 0, !dbg !1205
  br i1 %100, label %101, label %102, !dbg !1208

101:                                              ; preds = %98
  call void (i64, i8*, ...) @DebugPrint(i64 noundef 2147483648, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.8, i64 0, i64 0), i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @__FUNCTION__.Demo1BobInit, i64 0, i64 0)), !dbg !1209
  br label %102, !dbg !1209

102:                                              ; preds = %101, %98
  br label %103, !dbg !1208

103:                                              ; preds = %102
  br label %104, !dbg !1203

104:                                              ; preds = %103, %94
  br label %105, !dbg !1202

105:                                              ; preds = %104
  store i64 -9223372036854775788, i64* %3, align 8, !dbg !1211
  br label %146, !dbg !1211

106:                                              ; preds = %90
  %107 = load i64, i64* %7, align 8, !dbg !1212
  %108 = icmp ne i64 %107, 1, !dbg !1214
  br i1 %108, label %109, label %122, !dbg !1215

109:                                              ; preds = %106
  br label %110, !dbg !1216

110:                                              ; preds = %109
  %111 = call zeroext i8 @DebugPrintEnabled(), !dbg !1218
  %112 = icmp ne i8 %111, 0, !dbg !1218
  br i1 %112, label %113, label %120, !dbg !1221

113:                                              ; preds = %110
  br label %114, !dbg !1222

114:                                              ; preds = %113
  %115 = call zeroext i8 @DebugPrintLevelEnabled(i64 noundef 2147483648), !dbg !1224
  %116 = icmp ne i8 %115, 0, !dbg !1224
  br i1 %116, label %117, label %118, !dbg !1227

117:                                              ; preds = %114
  call void (i64, i8*, ...) @DebugPrint(i64 noundef 2147483648, i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.9, i64 0, i64 0), i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @__FUNCTION__.Demo1BobInit, i64 0, i64 0)), !dbg !1228
  br label %118, !dbg !1228

118:                                              ; preds = %117, %114
  br label %119, !dbg !1227

119:                                              ; preds = %118
  br label %120, !dbg !1222

120:                                              ; preds = %119, %110
  br label %121, !dbg !1221

121:                                              ; preds = %120
  store i64 -9223372036854775805, i64* %3, align 8, !dbg !1230
  br label %146, !dbg !1230

122:                                              ; preds = %106
  %123 = load i64, i64* %6, align 8, !dbg !1231
  %124 = icmp slt i64 %123, 0, !dbg !1231
  br i1 %124, label %125, label %140, !dbg !1233

125:                                              ; preds = %122
  br label %126, !dbg !1234

126:                                              ; preds = %125
  %127 = call zeroext i8 @DebugPrintEnabled(), !dbg !1236
  %128 = icmp ne i8 %127, 0, !dbg !1236
  br i1 %128, label %129, label %137, !dbg !1239

129:                                              ; preds = %126
  br label %130, !dbg !1240

130:                                              ; preds = %129
  %131 = call zeroext i8 @DebugPrintLevelEnabled(i64 noundef 2147483648), !dbg !1242
  %132 = icmp ne i8 %131, 0, !dbg !1242
  br i1 %132, label %133, label %135, !dbg !1245

133:                                              ; preds = %130
  %134 = load i64, i64* %6, align 8, !dbg !1246
  call void (i64, i8*, ...) @DebugPrint(i64 noundef 2147483648, i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @.str.10, i64 0, i64 0), i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @__FUNCTION__.Demo1BobInit, i64 0, i64 0), i64 noundef %134), !dbg !1246
  br label %135, !dbg !1246

135:                                              ; preds = %133, %130
  br label %136, !dbg !1245

136:                                              ; preds = %135
  br label %137, !dbg !1240

137:                                              ; preds = %136, %126
  br label %138, !dbg !1239

138:                                              ; preds = %137
  %139 = load i64, i64* %6, align 8, !dbg !1248
  store i64 %139, i64* %3, align 8, !dbg !1249
  br label %146, !dbg !1249

140:                                              ; preds = %122
  %141 = load i64, i64* %6, align 8, !dbg !1250
  %142 = icmp slt i64 %141, 0, !dbg !1250
  br i1 %142, label %143, label %145, !dbg !1252

143:                                              ; preds = %140
  %144 = load i64, i64* %6, align 8, !dbg !1253
  store i64 %144, i64* %3, align 8, !dbg !1255
  br label %146, !dbg !1255

145:                                              ; preds = %140
  store i64 0, i64* %3, align 8, !dbg !1256
  br label %146, !dbg !1256

146:                                              ; preds = %145, %143, %138, %121, %105, %88, %71, %50, %27
  %147 = load i64, i64* %3, align 8, !dbg !1257
  ret i64 %147, !dbg !1257
}

declare hidden zeroext i8 @DebugPrintEnabled() #2

declare hidden zeroext i8 @DebugPrintLevelEnabled(i64 noundef) #2

declare hidden void @DebugPrint(i64 noundef, i8* noundef, ...) #2

; Function Attrs: noinline nounwind optnone uwtable
define hidden i64 @Demo1BobUnload(i8* noundef %0) #0 !dbg !1258 {
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !1259, metadata !DIExpression()), !dbg !1260
  call void @llvm.dbg.declare(metadata i64* %3, metadata !1261, metadata !DIExpression()), !dbg !1262
  store i64 0, i64* %3, align 8, !dbg !1262
  %4 = load i64, i64* %3, align 8, !dbg !1263
  ret i64 %4, !dbg !1264
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: noinline nounwind optnone uwtable
define hidden i32 @main() #0 !dbg !1265 {
  %1 = alloca i32, align 4
  %2 = alloca i64*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct._DEMO1_ACCESS_KEY*, align 8
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i64** %2, metadata !1268, metadata !DIExpression()), !dbg !1269
  call void @llvm.dbg.declare(metadata i64* %3, metadata !1270, metadata !DIExpression()), !dbg !1271
  store i64 16, i64* %3, align 8, !dbg !1271
  call void @llvm.dbg.declare(metadata %struct._DEMO1_ACCESS_KEY** %4, metadata !1272, metadata !DIExpression()), !dbg !1273
  %5 = call i8* @malloc(i64 noundef 16), !dbg !1274
  %6 = bitcast i8* %5 to %struct._DEMO1_ACCESS_KEY*, !dbg !1274
  store %struct._DEMO1_ACCESS_KEY* %6, %struct._DEMO1_ACCESS_KEY** %4, align 8, !dbg !1273
  %7 = load %struct._DEMO1_ACCESS_KEY*, %struct._DEMO1_ACCESS_KEY** %4, align 8, !dbg !1275
  %8 = bitcast %struct._DEMO1_ACCESS_KEY* %7 to i8*, !dbg !1275
  call void @klee_make_symbolic(i8* noundef %8, i64 noundef 16, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0)), !dbg !1276
  %9 = bitcast %struct._DEMO1_ACCESS_KEY** %4 to i8**, !dbg !1277
  %10 = load i64, i64* %3, align 8, !dbg !1279
  %11 = call i64 @Demo1BobDataProvider(%struct._Demo1_Bob_PROTOCOL* noundef null, i8* noundef bitcast (%struct._DEMO1_ACCESS_KEY* @bobKey to i8*), i8** noundef %9, i64 noundef %10), !dbg !1280
  %12 = icmp eq i64 %11, 0, !dbg !1281
  br i1 %12, label %13, label %18, !dbg !1282

13:                                               ; preds = %0
  %14 = load %struct._DEMO1_ACCESS_KEY*, %struct._DEMO1_ACCESS_KEY** %4, align 8, !dbg !1283
  %15 = getelementptr inbounds %struct._DEMO1_ACCESS_KEY, %struct._DEMO1_ACCESS_KEY* %14, i32 0, i32 0, !dbg !1285
  %16 = getelementptr inbounds [2 x i64], [2 x i64]* %15, i64 0, i64 1, !dbg !1283
  store i64 -2395670108176482799, i64* %16, align 8, !dbg !1286
  %17 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.13, i64 0, i64 0), i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.14, i64 0, i64 0), i32 noundef 377, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !1287
  br label %18, !dbg !1288

18:                                               ; preds = %13, %0
  ret i32 0, !dbg !1289
}

; Function Attrs: noreturn
declare hidden i32 @__assert_fail(...) #4

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memcpy(i8* noundef %0, i8* noundef %1, i64 noundef %2) #5 !dbg !1290 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1297, metadata !DIExpression()), !dbg !1298
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !1299, metadata !DIExpression()), !dbg !1300
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !1301, metadata !DIExpression()), !dbg !1302
  call void @llvm.dbg.declare(metadata i8** %7, metadata !1303, metadata !DIExpression()), !dbg !1306
  %9 = load i8*, i8** %4, align 8, !dbg !1307
  store i8* %9, i8** %7, align 8, !dbg !1306
  call void @llvm.dbg.declare(metadata i8** %8, metadata !1308, metadata !DIExpression()), !dbg !1311
  %10 = load i8*, i8** %5, align 8, !dbg !1312
  store i8* %10, i8** %8, align 8, !dbg !1311
  br label %11, !dbg !1313

11:                                               ; preds = %15, %3
  %12 = load i64, i64* %6, align 8, !dbg !1314
  %13 = add i64 %12, -1, !dbg !1314
  store i64 %13, i64* %6, align 8, !dbg !1314
  %14 = icmp ugt i64 %12, 0, !dbg !1315
  br i1 %14, label %15, label %21, !dbg !1313

15:                                               ; preds = %11
  %16 = load i8*, i8** %8, align 8, !dbg !1316
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !1316
  store i8* %17, i8** %8, align 8, !dbg !1316
  %18 = load i8, i8* %16, align 1, !dbg !1317
  %19 = load i8*, i8** %7, align 8, !dbg !1318
  %20 = getelementptr inbounds i8, i8* %19, i32 1, !dbg !1318
  store i8* %20, i8** %7, align 8, !dbg !1318
  store i8 %18, i8* %19, align 1, !dbg !1319
  br label %11, !dbg !1313, !llvm.loop !1320

21:                                               ; preds = %11
  %22 = load i8*, i8** %4, align 8, !dbg !1321
  ret i8* %22, !dbg !1322
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly nofree nounwind willreturn }
attributes #4 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.dbg.cu = !{!2, !696}
!llvm.module.flags = !{!698, !699, !700, !701, !702, !703, !704}
!llvm.ident = !{!705, !705}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "gDemo1_Access_Key_Protocol", scope: !2, file: !58, line: 18, type: !665, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !51, globals: !620, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "Demo1_Bob.c", directory: "/home/hira/Research/HARDEN/repositories/HARDEN_demo1/edk2/EmulatorPkg/Demo1_Bob", checksumkind: CSK_MD5, checksum: "2e23b53114e1e3bb836e8750f72888b7")
!4 = !{!5, !13, !20, !38, !43, !46}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 112, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./Uefi/UefiMultiPhase.h", directory: "/home/hira/Research/HARDEN/repositories/HARDEN_demo1/edk2/EmulatorPkg/Demo1_Bob", checksumkind: CSK_MD5, checksum: "3f9ed88dddcb3138696e540e90ddca74")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12}
!9 = !DIEnumerator(name: "EfiResetCold", value: 0)
!10 = !DIEnumerator(name: "EfiResetWarm", value: 1)
!11 = !DIEnumerator(name: "EfiResetShutdown", value: 2)
!12 = !DIEnumerator(name: "EfiResetPlatformSpecific", value: 3)
!13 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !14, line: 28, baseType: !7, size: 32, elements: !15)
!14 = !DIFile(filename: "./Uefi/UefiSpec.h", directory: "/home/hira/Research/HARDEN/repositories/HARDEN_demo1/edk2/EmulatorPkg/Demo1_Bob", checksumkind: CSK_MD5, checksum: "fea2e09cb9bcf270fd54b16c306ae92d")
!15 = !{!16, !17, !18, !19}
!16 = !DIEnumerator(name: "AllocateAnyPages", value: 0)
!17 = !DIEnumerator(name: "AllocateMaxAddress", value: 1)
!18 = !DIEnumerator(name: "AllocateAddress", value: 2)
!19 = !DIEnumerator(name: "MaxAllocateType", value: 3)
!20 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 38, baseType: !7, size: 32, elements: !21)
!21 = !{!22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37}
!22 = !DIEnumerator(name: "EfiReservedMemoryType", value: 0)
!23 = !DIEnumerator(name: "EfiLoaderCode", value: 1)
!24 = !DIEnumerator(name: "EfiLoaderData", value: 2)
!25 = !DIEnumerator(name: "EfiBootServicesCode", value: 3)
!26 = !DIEnumerator(name: "EfiBootServicesData", value: 4)
!27 = !DIEnumerator(name: "EfiRuntimeServicesCode", value: 5)
!28 = !DIEnumerator(name: "EfiRuntimeServicesData", value: 6)
!29 = !DIEnumerator(name: "EfiConventionalMemory", value: 7)
!30 = !DIEnumerator(name: "EfiUnusableMemory", value: 8)
!31 = !DIEnumerator(name: "EfiACPIReclaimMemory", value: 9)
!32 = !DIEnumerator(name: "EfiACPIMemoryNVS", value: 10)
!33 = !DIEnumerator(name: "EfiMemoryMappedIO", value: 11)
!34 = !DIEnumerator(name: "EfiMemoryMappedIOPortSpace", value: 12)
!35 = !DIEnumerator(name: "EfiPalCode", value: 13)
!36 = !DIEnumerator(name: "EfiPersistentMemory", value: 14)
!37 = !DIEnumerator(name: "EfiMaxMemoryType", value: 15)
!38 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !14, line: 505, baseType: !7, size: 32, elements: !39)
!39 = !{!40, !41, !42}
!40 = !DIEnumerator(name: "TimerCancel", value: 0)
!41 = !DIEnumerator(name: "TimerPeriodic", value: 1)
!42 = !DIEnumerator(name: "TimerRelative", value: 2)
!43 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !14, line: 1217, baseType: !7, size: 32, elements: !44)
!44 = !{!45}
!45 = !DIEnumerator(name: "EFI_NATIVE_INTERFACE", value: 0)
!46 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !14, line: 1533, baseType: !7, size: 32, elements: !47)
!47 = !{!48, !49, !50}
!48 = !DIEnumerator(name: "AllHandles", value: 0)
!49 = !DIEnumerator(name: "ByRegisterNotify", value: 1)
!50 = !DIEnumerator(name: "ByProtocol", value: 2)
!51 = !{!52, !53, !56, !77, !80, !81, !70, !83, !269}
!52 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!53 = !DIDerivedType(tag: DW_TAG_typedef, name: "BOOLEAN", file: !54, line: 210, baseType: !55)
!54 = !DIFile(filename: "./Uefi/ProcessorBind.h", directory: "/home/hira/Research/HARDEN/repositories/HARDEN_demo1/edk2/EmulatorPkg/Demo1_Bob", checksumkind: CSK_MD5, checksum: "5a809246aab9e079e163aa7a7e32c6ad")
!55 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!56 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !57, size: 64)
!57 = !DIDerivedType(tag: DW_TAG_typedef, name: "LINK", file: !58, line: 31, baseType: !59)
!58 = !DIFile(filename: "./../Demo1_Access_Key/Demo1_Access_Key.c", directory: "/home/hira/Research/HARDEN/repositories/HARDEN_demo1/edk2/EmulatorPkg/Demo1_Bob", checksumkind: CSK_MD5, checksum: "96e9715acb360f8fe108fd8b178788c0")
!59 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_LINK", file: !58, line: 33, size: 256, elements: !60)
!60 = !{!61, !75, !76}
!61 = !DIDerivedType(tag: DW_TAG_member, name: "access_key", scope: !59, file: !58, line: 35, baseType: !62, size: 128)
!62 = !DIDerivedType(tag: DW_TAG_typedef, name: "DEMO1_ACCESS_KEY", file: !63, line: 23, baseType: !64)
!63 = !DIFile(filename: "./Uefi/UefiBaseType.h", directory: "/home/hira/Research/HARDEN/repositories/HARDEN_demo1/edk2/EmulatorPkg/Demo1_Bob", checksumkind: CSK_MD5, checksum: "6b596f77ac7c48826eabe4053c19a600")
!64 = !DIDerivedType(tag: DW_TAG_typedef, name: "_DEMO1_ACCESS_KEY", file: !65, line: 225, baseType: !66)
!65 = !DIFile(filename: "./Uefi/Base.h", directory: "/home/hira/Research/HARDEN/repositories/HARDEN_demo1/edk2/EmulatorPkg/Demo1_Bob", checksumkind: CSK_MD5, checksum: "a7888fa8d0b7ac6c240c247fa85b46e3")
!66 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !65, line: 223, size: 128, elements: !67)
!67 = !{!68}
!68 = !DIDerivedType(tag: DW_TAG_member, name: "access_key_store", scope: !66, file: !65, line: 224, baseType: !69, size: 128)
!69 = !DICompositeType(tag: DW_TAG_array_type, baseType: !70, size: 128, elements: !73)
!70 = !DIDerivedType(tag: DW_TAG_typedef, name: "UINTN", file: !54, line: 229, baseType: !71)
!71 = !DIDerivedType(tag: DW_TAG_typedef, name: "UINT64", file: !54, line: 180, baseType: !72)
!72 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!73 = !{!74}
!74 = !DISubrange(count: 2)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !59, file: !58, line: 36, baseType: !56, size: 64, offset: 128)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !59, file: !58, line: 37, baseType: !56, size: 64, offset: 192)
!77 = !DIDerivedType(tag: DW_TAG_typedef, name: "INTN", file: !54, line: 234, baseType: !78)
!78 = !DIDerivedType(tag: DW_TAG_typedef, name: "INT64", file: !54, line: 184, baseType: !79)
!79 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!80 = !DIDerivedType(tag: DW_TAG_typedef, name: "RETURN_STATUS", file: !65, line: 928, baseType: !70)
!81 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !82, size: 64)
!82 = !DIDerivedType(tag: DW_TAG_typedef, name: "UINT8", file: !54, line: 214, baseType: !55)
!83 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !84, size: 64)
!84 = !DIDerivedType(tag: DW_TAG_typedef, name: "EFI_LOADED_IMAGE_PROTOCOL", file: !85, line: 72, baseType: !86)
!85 = !DIFile(filename: "./Protocol/LoadedImage.h", directory: "/home/hira/Research/HARDEN/repositories/HARDEN_demo1/edk2/EmulatorPkg/Demo1_Bob", checksumkind: CSK_MD5, checksum: "0bfc90f5c05009801c3af3d54bff9caa")
!86 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !85, line: 43, size: 768, elements: !87)
!87 = !{!88, !90, !92, !610, !611, !612, !613, !614, !615, !616, !617, !618, !619}
!88 = !DIDerivedType(tag: DW_TAG_member, name: "Revision", scope: !86, file: !85, line: 44, baseType: !89, size: 32)
!89 = !DIDerivedType(tag: DW_TAG_typedef, name: "UINT32", file: !54, line: 188, baseType: !7)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "ParentHandle", scope: !86, file: !85, line: 46, baseType: !91, size: 64, offset: 64)
!91 = !DIDerivedType(tag: DW_TAG_typedef, name: "EFI_HANDLE", file: !63, line: 35, baseType: !52)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "SystemTable", scope: !86, file: !85, line: 48, baseType: !93, size: 64, offset: 128)
!93 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !94, size: 64)
!94 = !DIDerivedType(tag: DW_TAG_typedef, name: "EFI_SYSTEM_TABLE", file: !14, line: 2115, baseType: !95)
!95 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !14, line: 2054, size: 960, elements: !96)
!96 = !{!97, !106, !110, !111, !112, !138, !139, !195, !196, !197, !346, !602, !603}
!97 = !DIDerivedType(tag: DW_TAG_member, name: "Hdr", scope: !95, file: !14, line: 2058, baseType: !98, size: 192)
!98 = !DIDerivedType(tag: DW_TAG_typedef, name: "EFI_TABLE_HEADER", file: !6, line: 172, baseType: !99)
!99 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !6, line: 145, size: 192, elements: !100)
!100 = !{!101, !102, !103, !104, !105}
!101 = !DIDerivedType(tag: DW_TAG_member, name: "Signature", scope: !99, file: !6, line: 151, baseType: !71, size: 64)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "Revision", scope: !99, file: !6, line: 158, baseType: !89, size: 32, offset: 64)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "HeaderSize", scope: !99, file: !6, line: 162, baseType: !89, size: 32, offset: 96)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "CRC32", scope: !99, file: !6, line: 167, baseType: !89, size: 32, offset: 128)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "Reserved", scope: !99, file: !6, line: 171, baseType: !89, size: 32, offset: 160)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "FirmwareVendor", scope: !95, file: !14, line: 2063, baseType: !107, size: 64, offset: 192)
!107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !108, size: 64)
!108 = !DIDerivedType(tag: DW_TAG_typedef, name: "CHAR16", file: !54, line: 201, baseType: !109)
!109 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "FirmwareRevision", scope: !95, file: !14, line: 2068, baseType: !89, size: 32, offset: 256)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "ConsoleInHandle", scope: !95, file: !14, line: 2073, baseType: !91, size: 64, offset: 320)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "ConIn", scope: !95, file: !14, line: 2078, baseType: !113, size: 64, offset: 384)
!113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !114, size: 64)
!114 = !DIDerivedType(tag: DW_TAG_typedef, name: "EFI_SIMPLE_TEXT_INPUT_PROTOCOL", file: !115, line: 20, baseType: !116)
!115 = !DIFile(filename: "./Uefi/Protocol/SimpleTextIn.h", directory: "/home/hira/Research/HARDEN/repositories/HARDEN_demo1/edk2/EmulatorPkg/Demo1_Bob", checksumkind: CSK_MD5, checksum: "239cf4f3dddb25a8596c70fa738413fd")
!116 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_EFI_SIMPLE_TEXT_INPUT_PROTOCOL", file: !115, line: 116, size: 192, elements: !117)
!117 = !{!118, !124, !136}
!118 = !DIDerivedType(tag: DW_TAG_member, name: "Reset", scope: !116, file: !115, line: 117, baseType: !119, size: 64)
!119 = !DIDerivedType(tag: DW_TAG_typedef, name: "EFI_INPUT_RESET", file: !115, line: 86, baseType: !120)
!120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !121, size: 64)
!121 = !DISubroutineType(types: !122)
!122 = !{!123, !113, !53}
!123 = !DIDerivedType(tag: DW_TAG_typedef, name: "EFI_STATUS", file: !63, line: 31, baseType: !80)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "ReadKeyStroke", scope: !116, file: !115, line: 118, baseType: !125, size: 64, offset: 64)
!125 = !DIDerivedType(tag: DW_TAG_typedef, name: "EFI_INPUT_READ_KEY", file: !115, line: 107, baseType: !126)
!126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !127, size: 64)
!127 = !DISubroutineType(types: !128)
!128 = !{!123, !113, !129}
!129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !130, size: 64)
!130 = !DIDerivedType(tag: DW_TAG_typedef, name: "EFI_INPUT_KEY", file: !115, line: 38, baseType: !131)
!131 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !115, line: 35, size: 32, elements: !132)
!132 = !{!133, !135}
!133 = !DIDerivedType(tag: DW_TAG_member, name: "ScanCode", scope: !131, file: !115, line: 36, baseType: !134, size: 16)
!134 = !DIDerivedType(tag: DW_TAG_typedef, name: "UINT16", file: !54, line: 196, baseType: !109)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "UnicodeChar", scope: !131, file: !115, line: 37, baseType: !108, size: 16, offset: 16)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "WaitForKey", scope: !116, file: !115, line: 122, baseType: !137, size: 64, offset: 128)
!137 = !DIDerivedType(tag: DW_TAG_typedef, name: "EFI_EVENT", file: !63, line: 39, baseType: !52)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "ConsoleOutHandle", scope: !95, file: !14, line: 2082, baseType: !91, size: 64, offset: 448)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "ConOut", scope: !95, file: !14, line: 2087, baseType: !140, size: 64, offset: 512)
!140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !141, size: 64)
!141 = !DIDerivedType(tag: DW_TAG_typedef, name: "EFI_SIMPLE_TEXT_OUTPUT_PROTOCOL", file: !142, line: 27, baseType: !143)
!142 = !DIFile(filename: "./Uefi/Protocol/SimpleTextOut.h", directory: "/home/hira/Research/HARDEN/repositories/HARDEN_demo1/edk2/EmulatorPkg/Demo1_Bob", checksumkind: CSK_MD5, checksum: "685bec042927ad46d31bf42ae7f6ddcd")
!143 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_EFI_SIMPLE_TEXT_OUTPUT_PROTOCOL", file: !142, line: 387, size: 640, elements: !144)
!144 = !{!145, !150, !155, !157, !163, !168, !170, !175, !180, !182}
!145 = !DIDerivedType(tag: DW_TAG_member, name: "Reset", scope: !143, file: !142, line: 388, baseType: !146, size: 64)
!146 = !DIDerivedType(tag: DW_TAG_typedef, name: "EFI_TEXT_RESET", file: !142, line: 167, baseType: !147)
!147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !148, size: 64)
!148 = !DISubroutineType(types: !149)
!149 = !{!123, !140, !53}
!150 = !DIDerivedType(tag: DW_TAG_member, name: "OutputString", scope: !143, file: !142, line: 390, baseType: !151, size: 64, offset: 64)
!151 = !DIDerivedType(tag: DW_TAG_typedef, name: "EFI_TEXT_STRING", file: !142, line: 192, baseType: !152)
!152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !153, size: 64)
!153 = !DISubroutineType(types: !154)
!154 = !{!123, !140, !107}
!155 = !DIDerivedType(tag: DW_TAG_member, name: "TestString", scope: !143, file: !142, line: 391, baseType: !156, size: 64, offset: 128)
!156 = !DIDerivedType(tag: DW_TAG_typedef, name: "EFI_TEXT_TEST_STRING", file: !142, line: 213, baseType: !152)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "QueryMode", scope: !143, file: !142, line: 393, baseType: !158, size: 64, offset: 192)
!158 = !DIDerivedType(tag: DW_TAG_typedef, name: "EFI_TEXT_QUERY_MODE", file: !142, line: 236, baseType: !159)
!159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !160, size: 64)
!160 = !DISubroutineType(types: !161)
!161 = !{!123, !140, !70, !162, !162}
!162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !70, size: 64)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "SetMode", scope: !143, file: !142, line: 394, baseType: !164, size: 64, offset: 256)
!164 = !DIDerivedType(tag: DW_TAG_typedef, name: "EFI_TEXT_SET_MODE", file: !142, line: 256, baseType: !165)
!165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !166, size: 64)
!166 = !DISubroutineType(types: !167)
!167 = !{!123, !140, !70}
!168 = !DIDerivedType(tag: DW_TAG_member, name: "SetAttribute", scope: !143, file: !142, line: 395, baseType: !169, size: 64, offset: 320)
!169 = !DIDerivedType(tag: DW_TAG_typedef, name: "EFI_TEXT_SET_ATTRIBUTE", file: !142, line: 277, baseType: !165)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "ClearScreen", scope: !143, file: !142, line: 397, baseType: !171, size: 64, offset: 384)
!171 = !DIDerivedType(tag: DW_TAG_typedef, name: "EFI_TEXT_CLEAR_SCREEN", file: !142, line: 295, baseType: !172)
!172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !173, size: 64)
!173 = !DISubroutineType(types: !174)
!174 = !{!123, !140}
!175 = !DIDerivedType(tag: DW_TAG_member, name: "SetCursorPosition", scope: !143, file: !142, line: 398, baseType: !176, size: 64, offset: 448)
!176 = !DIDerivedType(tag: DW_TAG_typedef, name: "EFI_TEXT_SET_CURSOR_POSITION", file: !142, line: 318, baseType: !177)
!177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !178, size: 64)
!178 = !DISubroutineType(types: !179)
!179 = !{!123, !140, !70, !70}
!180 = !DIDerivedType(tag: DW_TAG_member, name: "EnableCursor", scope: !143, file: !142, line: 399, baseType: !181, size: 64, offset: 512)
!181 = !DIDerivedType(tag: DW_TAG_typedef, name: "EFI_TEXT_ENABLE_CURSOR", file: !142, line: 340, baseType: !147)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "Mode", scope: !143, file: !142, line: 404, baseType: !183, size: 64, offset: 576)
!183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !184, size: 64)
!184 = !DIDerivedType(tag: DW_TAG_typedef, name: "EFI_SIMPLE_TEXT_OUTPUT_MODE", file: !142, line: 379, baseType: !185)
!185 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !142, line: 349, size: 192, elements: !186)
!186 = !{!187, !190, !191, !192, !193, !194}
!187 = !DIDerivedType(tag: DW_TAG_member, name: "MaxMode", scope: !185, file: !142, line: 353, baseType: !188, size: 32)
!188 = !DIDerivedType(tag: DW_TAG_typedef, name: "INT32", file: !54, line: 192, baseType: !189)
!189 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "Mode", scope: !185, file: !142, line: 362, baseType: !188, size: 32, offset: 32)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "Attribute", scope: !185, file: !142, line: 366, baseType: !188, size: 32, offset: 64)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "CursorColumn", scope: !185, file: !142, line: 370, baseType: !188, size: 32, offset: 96)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "CursorRow", scope: !185, file: !142, line: 374, baseType: !188, size: 32, offset: 128)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "CursorVisible", scope: !185, file: !142, line: 378, baseType: !53, size: 8, offset: 160)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "StandardErrorHandle", scope: !95, file: !14, line: 2092, baseType: !91, size: 64, offset: 576)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "StdErr", scope: !95, file: !14, line: 2097, baseType: !140, size: 64, offset: 640)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "RuntimeServices", scope: !95, file: !14, line: 2101, baseType: !198, size: 64, offset: 704)
!198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !199, size: 64)
!199 = !DIDerivedType(tag: DW_TAG_typedef, name: "EFI_RUNTIME_SERVICES", file: !14, line: 1933, baseType: !200)
!200 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !14, line: 1886, size: 1216, elements: !201)
!201 = !{!202, !203, !232, !237, !243, !248, !264, !270, !288, !293, !298, !304, !309, !314, !320, !334, !341}
!202 = !DIDerivedType(tag: DW_TAG_member, name: "Hdr", scope: !200, file: !14, line: 1890, baseType: !98, size: 192)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "GetTime", scope: !200, file: !14, line: 1895, baseType: !204, size: 64, offset: 192)
!204 = !DIDerivedType(tag: DW_TAG_typedef, name: "EFI_GET_TIME", file: !14, line: 874, baseType: !205)
!205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !206, size: 64)
!206 = !DISubroutineType(types: !207)
!207 = !{!123, !208, !225}
!208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !209, size: 64)
!209 = !DIDerivedType(tag: DW_TAG_typedef, name: "EFI_TIME", file: !63, line: 82, baseType: !210)
!210 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !63, line: 70, size: 128, elements: !211)
!211 = !{!212, !213, !214, !215, !216, !217, !218, !219, !220, !223, !224}
!212 = !DIDerivedType(tag: DW_TAG_member, name: "Year", scope: !210, file: !63, line: 71, baseType: !134, size: 16)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "Month", scope: !210, file: !63, line: 72, baseType: !82, size: 8, offset: 16)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "Day", scope: !210, file: !63, line: 73, baseType: !82, size: 8, offset: 24)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "Hour", scope: !210, file: !63, line: 74, baseType: !82, size: 8, offset: 32)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "Minute", scope: !210, file: !63, line: 75, baseType: !82, size: 8, offset: 40)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "Second", scope: !210, file: !63, line: 76, baseType: !82, size: 8, offset: 48)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "Pad1", scope: !210, file: !63, line: 77, baseType: !82, size: 8, offset: 56)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "Nanosecond", scope: !210, file: !63, line: 78, baseType: !89, size: 32, offset: 64)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "TimeZone", scope: !210, file: !63, line: 79, baseType: !221, size: 16, offset: 96)
!221 = !DIDerivedType(tag: DW_TAG_typedef, name: "INT16", file: !54, line: 205, baseType: !222)
!222 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "Daylight", scope: !210, file: !63, line: 80, baseType: !82, size: 8, offset: 112)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "Pad2", scope: !210, file: !63, line: 81, baseType: !82, size: 8, offset: 120)
!225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !226, size: 64)
!226 = !DIDerivedType(tag: DW_TAG_typedef, name: "EFI_TIME_CAPABILITIES", file: !14, line: 857, baseType: !227)
!227 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !14, line: 834, size: 96, elements: !228)
!228 = !{!229, !230, !231}
!229 = !DIDerivedType(tag: DW_TAG_member, name: "Resolution", scope: !227, file: !14, line: 841, baseType: !89, size: 32)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "Accuracy", scope: !227, file: !14, line: 848, baseType: !89, size: 32, offset: 32)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "SetsToZero", scope: !227, file: !14, line: 856, baseType: !53, size: 8, offset: 64)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "SetTime", scope: !200, file: !14, line: 1896, baseType: !233, size: 64, offset: 256)
!233 = !DIDerivedType(tag: DW_TAG_typedef, name: "EFI_SET_TIME", file: !14, line: 891, baseType: !234)
!234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !235, size: 64)
!235 = !DISubroutineType(types: !236)
!236 = !{!123, !208}
!237 = !DIDerivedType(tag: DW_TAG_member, name: "GetWakeupTime", scope: !200, file: !14, line: 1897, baseType: !238, size: 64, offset: 320)
!238 = !DIDerivedType(tag: DW_TAG_typedef, name: "EFI_GET_WAKEUP_TIME", file: !14, line: 912, baseType: !239)
!239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !240, size: 64)
!240 = !DISubroutineType(types: !241)
!241 = !{!123, !242, !242, !208}
!242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !53, size: 64)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "SetWakeupTime", scope: !200, file: !14, line: 1898, baseType: !244, size: 64, offset: 384)
!244 = !DIDerivedType(tag: DW_TAG_typedef, name: "EFI_SET_WAKEUP_TIME", file: !14, line: 934, baseType: !245)
!245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !246, size: 64)
!246 = !DISubroutineType(types: !247)
!247 = !{!123, !53, !208}
!248 = !DIDerivedType(tag: DW_TAG_member, name: "SetVirtualAddressMap", scope: !200, file: !14, line: 1903, baseType: !249, size: 64, offset: 448)
!249 = !DIDerivedType(tag: DW_TAG_typedef, name: "EFI_SET_VIRTUAL_ADDRESS_MAP", file: !14, line: 311, baseType: !250)
!250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !251, size: 64)
!251 = !DISubroutineType(types: !252)
!252 = !{!123, !70, !70, !89, !253}
!253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !254, size: 64)
!254 = !DIDerivedType(tag: DW_TAG_typedef, name: "EFI_MEMORY_DESCRIPTOR", file: !14, line: 159, baseType: !255)
!255 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !14, line: 127, size: 320, elements: !256)
!256 = !{!257, !258, !260, !262, !263}
!257 = !DIDerivedType(tag: DW_TAG_member, name: "Type", scope: !255, file: !14, line: 133, baseType: !89, size: 32)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "PhysicalStart", scope: !255, file: !14, line: 139, baseType: !259, size: 64, offset: 64)
!259 = !DIDerivedType(tag: DW_TAG_typedef, name: "EFI_PHYSICAL_ADDRESS", file: !63, line: 52, baseType: !71)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "VirtualStart", scope: !255, file: !14, line: 145, baseType: !261, size: 64, offset: 128)
!261 = !DIDerivedType(tag: DW_TAG_typedef, name: "EFI_VIRTUAL_ADDRESS", file: !63, line: 57, baseType: !71)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "NumberOfPages", scope: !255, file: !14, line: 152, baseType: !71, size: 64, offset: 192)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "Attribute", scope: !255, file: !14, line: 158, baseType: !71, size: 64, offset: 256)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "ConvertPointer", scope: !200, file: !14, line: 1904, baseType: !265, size: 64, offset: 512)
!265 = !DIDerivedType(tag: DW_TAG_typedef, name: "EFI_CONVERT_POINTER", file: !14, line: 406, baseType: !266)
!266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !267, size: 64)
!267 = !DISubroutineType(types: !268)
!268 = !{!123, !70, !269}
!269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !52, size: 64)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "GetVariable", scope: !200, file: !14, line: 1909, baseType: !271, size: 64, offset: 576)
!271 = !DIDerivedType(tag: DW_TAG_typedef, name: "EFI_GET_VARIABLE", file: !14, line: 670, baseType: !272)
!272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !273, size: 64)
!273 = !DISubroutineType(types: !274)
!274 = !{!123, !107, !275, !287, !162, !52}
!275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !276, size: 64)
!276 = !DIDerivedType(tag: DW_TAG_typedef, name: "EFI_GUID", file: !63, line: 27, baseType: !277)
!277 = !DIDerivedType(tag: DW_TAG_typedef, name: "GUID", file: !65, line: 218, baseType: !278)
!278 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !65, line: 213, size: 128, elements: !279)
!279 = !{!280, !281, !282, !283}
!280 = !DIDerivedType(tag: DW_TAG_member, name: "Data1", scope: !278, file: !65, line: 214, baseType: !89, size: 32)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "Data2", scope: !278, file: !65, line: 215, baseType: !134, size: 16, offset: 32)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "Data3", scope: !278, file: !65, line: 216, baseType: !134, size: 16, offset: 48)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "Data4", scope: !278, file: !65, line: 217, baseType: !284, size: 64, offset: 64)
!284 = !DICompositeType(tag: DW_TAG_array_type, baseType: !82, size: 64, elements: !285)
!285 = !{!286}
!286 = !DISubrange(count: 8)
!287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !89, size: 64)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "GetNextVariableName", scope: !200, file: !14, line: 1910, baseType: !289, size: 64, offset: 640)
!289 = !DIDerivedType(tag: DW_TAG_typedef, name: "EFI_GET_NEXT_VARIABLE_NAME", file: !14, line: 739, baseType: !290)
!290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !291, size: 64)
!291 = !DISubroutineType(types: !292)
!292 = !{!123, !162, !107, !275}
!293 = !DIDerivedType(tag: DW_TAG_member, name: "SetVariable", scope: !200, file: !14, line: 1911, baseType: !294, size: 64, offset: 704)
!294 = !DIDerivedType(tag: DW_TAG_typedef, name: "EFI_SET_VARIABLE", file: !14, line: 781, baseType: !295)
!295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !296, size: 64)
!296 = !DISubroutineType(types: !297)
!297 = !{!123, !107, !275, !89, !70, !52}
!298 = !DIDerivedType(tag: DW_TAG_member, name: "GetAccessVariable", scope: !200, file: !14, line: 1914, baseType: !299, size: 64, offset: 768)
!299 = !DIDerivedType(tag: DW_TAG_typedef, name: "EFI_GET_ACCESS_VARIABLE", file: !14, line: 703, baseType: !300)
!300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !301, size: 64)
!301 = !DISubroutineType(types: !302)
!302 = !{!123, !107, !275, !287, !303, !162, !52}
!303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !62, size: 64)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "SetAccessVariable", scope: !200, file: !14, line: 1915, baseType: !305, size: 64, offset: 832)
!305 = !DIDerivedType(tag: DW_TAG_typedef, name: "EFI_SET_ACCESS_VARIABLE", file: !14, line: 822, baseType: !306)
!306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !307, size: 64)
!307 = !DISubroutineType(types: !308)
!308 = !{!123, !107, !275, !89, !303, !70, !52}
!309 = !DIDerivedType(tag: DW_TAG_member, name: "GetNextHighMonotonicCount", scope: !200, file: !14, line: 1920, baseType: !310, size: 64, offset: 896)
!310 = !DIDerivedType(tag: DW_TAG_typedef, name: "EFI_GET_NEXT_HIGH_MONO_COUNT", file: !14, line: 1155, baseType: !311)
!311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !312, size: 64)
!312 = !DISubroutineType(types: !313)
!313 = !{!123, !287}
!314 = !DIDerivedType(tag: DW_TAG_member, name: "ResetSystem", scope: !200, file: !14, line: 1921, baseType: !315, size: 64, offset: 960)
!315 = !DIDerivedType(tag: DW_TAG_typedef, name: "EFI_RESET_SYSTEM", file: !14, line: 1120, baseType: !316)
!316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !317, size: 64)
!317 = !DISubroutineType(types: !318)
!318 = !{null, !319, !123, !70, !52}
!319 = !DIDerivedType(tag: DW_TAG_typedef, name: "EFI_RESET_TYPE", file: !6, line: 140, baseType: !5)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "UpdateCapsule", scope: !200, file: !14, line: 1926, baseType: !321, size: 64, offset: 1024)
!321 = !DIDerivedType(tag: DW_TAG_typedef, name: "EFI_UPDATE_CAPSULE", file: !14, line: 1781, baseType: !322)
!322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !323, size: 64)
!323 = !DISubroutineType(types: !324)
!324 = !{!123, !325, !70, !259}
!325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !326, size: 64)
!326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !327, size: 64)
!327 = !DIDerivedType(tag: DW_TAG_typedef, name: "EFI_CAPSULE_HEADER", file: !14, line: 1727, baseType: !328)
!328 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !14, line: 1706, size: 224, elements: !329)
!329 = !{!330, !331, !332, !333}
!330 = !DIDerivedType(tag: DW_TAG_member, name: "CapsuleGuid", scope: !328, file: !14, line: 1710, baseType: !276, size: 128)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "HeaderSize", scope: !328, file: !14, line: 1716, baseType: !89, size: 32, offset: 128)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "Flags", scope: !328, file: !14, line: 1722, baseType: !89, size: 32, offset: 160)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "CapsuleImageSize", scope: !328, file: !14, line: 1726, baseType: !89, size: 32, offset: 192)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "QueryCapsuleCapabilities", scope: !200, file: !14, line: 1927, baseType: !335, size: 64, offset: 1088)
!335 = !DIDerivedType(tag: DW_TAG_typedef, name: "EFI_QUERY_CAPSULE_CAPABILITIES", file: !14, line: 1812, baseType: !336)
!336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !337, size: 64)
!337 = !DISubroutineType(types: !338)
!338 = !{!123, !325, !70, !339, !340}
!339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !71, size: 64)
!340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !319, size: 64)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "QueryVariableInfo", scope: !200, file: !14, line: 1932, baseType: !342, size: 64, offset: 1152)
!342 = !DIDerivedType(tag: DW_TAG_typedef, name: "EFI_QUERY_VARIABLE_INFO", file: !14, line: 1843, baseType: !343)
!343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !344, size: 64)
!344 = !DISubroutineType(types: !345)
!345 = !{!123, !89, !339, !339, !339}
!346 = !DIDerivedType(tag: DW_TAG_member, name: "BootServices", scope: !95, file: !14, line: 2105, baseType: !347, size: 64, offset: 768)
!347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !348, size: 64)
!348 = !DIDerivedType(tag: DW_TAG_typedef, name: "EFI_BOOT_SERVICES", file: !14, line: 2034, baseType: !349)
!349 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !14, line: 1941, size: 3008, elements: !350)
!350 = !{!351, !352, !358, !363, !371, !376, !381, !386, !391, !401, !407, !412, !417, !419, !421, !428, !433, !438, !443, !444, !449, !455, !470, !475, !480, !486, !491, !496, !501, !506, !511, !516, !521, !526, !531, !536, !550, !557, !563, !568, !573, !578, !583, !588, !593}
!351 = !DIDerivedType(tag: DW_TAG_member, name: "Hdr", scope: !349, file: !14, line: 1945, baseType: !98, size: 192)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "RaiseTPL", scope: !349, file: !14, line: 1950, baseType: !353, size: 64, offset: 192)
!353 = !DIDerivedType(tag: DW_TAG_typedef, name: "EFI_RAISE_TPL", file: !14, line: 628, baseType: !354)
!354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !355, size: 64)
!355 = !DISubroutineType(types: !356)
!356 = !{!357, !357}
!357 = !DIDerivedType(tag: DW_TAG_typedef, name: "EFI_TPL", file: !63, line: 43, baseType: !70)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "RestoreTPL", scope: !349, file: !14, line: 1951, baseType: !359, size: 64, offset: 256)
!359 = !DIDerivedType(tag: DW_TAG_typedef, name: "EFI_RESTORE_TPL", file: !14, line: 640, baseType: !360)
!360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !361, size: 64)
!361 = !DISubroutineType(types: !362)
!362 = !{null, !357}
!363 = !DIDerivedType(tag: DW_TAG_member, name: "AllocatePages", scope: !349, file: !14, line: 1956, baseType: !364, size: 64, offset: 320)
!364 = !DIDerivedType(tag: DW_TAG_typedef, name: "EFI_ALLOCATE_PAGES", file: !14, line: 187, baseType: !365)
!365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !366, size: 64)
!366 = !DISubroutineType(types: !367)
!367 = !{!123, !368, !369, !70, !370}
!368 = !DIDerivedType(tag: DW_TAG_typedef, name: "EFI_ALLOCATE_TYPE", file: !14, line: 46, baseType: !13)
!369 = !DIDerivedType(tag: DW_TAG_typedef, name: "EFI_MEMORY_TYPE", file: !6, line: 107, baseType: !20)
!370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !259, size: 64)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "FreePages", scope: !349, file: !14, line: 1957, baseType: !372, size: 64, offset: 384)
!372 = !DIDerivedType(tag: DW_TAG_typedef, name: "EFI_FREE_PAGES", file: !14, line: 208, baseType: !373)
!373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !374, size: 64)
!374 = !DISubroutineType(types: !375)
!375 = !{!123, !259, !70}
!376 = !DIDerivedType(tag: DW_TAG_member, name: "GetMemoryMap", scope: !349, file: !14, line: 1958, baseType: !377, size: 64, offset: 448)
!377 = !DIDerivedType(tag: DW_TAG_typedef, name: "EFI_GET_MEMORY_MAP", file: !14, line: 240, baseType: !378)
!378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !379, size: 64)
!379 = !DISubroutineType(types: !380)
!380 = !{!123, !162, !253, !162, !162, !287}
!381 = !DIDerivedType(tag: DW_TAG_member, name: "AllocatePool", scope: !349, file: !14, line: 1959, baseType: !382, size: 64, offset: 512)
!382 = !DIDerivedType(tag: DW_TAG_typedef, name: "EFI_ALLOCATE_POOL", file: !14, line: 269, baseType: !383)
!383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !384, size: 64)
!384 = !DISubroutineType(types: !385)
!385 = !{!123, !369, !70, !269}
!386 = !DIDerivedType(tag: DW_TAG_member, name: "FreePool", scope: !349, file: !14, line: 1960, baseType: !387, size: 64, offset: 576)
!387 = !DIDerivedType(tag: DW_TAG_typedef, name: "EFI_FREE_POOL", file: !14, line: 286, baseType: !388)
!388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !389, size: 64)
!389 = !DISubroutineType(types: !390)
!390 = !{!123, !52}
!391 = !DIDerivedType(tag: DW_TAG_member, name: "CreateEvent", scope: !349, file: !14, line: 1965, baseType: !392, size: 64, offset: 640)
!392 = !DIDerivedType(tag: DW_TAG_typedef, name: "EFI_CREATE_EVENT", file: !14, line: 464, baseType: !393)
!393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !394, size: 64)
!394 = !DISubroutineType(types: !395)
!395 = !{!123, !89, !357, !396, !52, !400}
!396 = !DIDerivedType(tag: DW_TAG_typedef, name: "EFI_EVENT_NOTIFY", file: !14, line: 441, baseType: !397)
!397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !398, size: 64)
!398 = !DISubroutineType(types: !399)
!399 = !{null, !137, !52}
!400 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !137, size: 64)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "SetTimer", scope: !349, file: !14, line: 1966, baseType: !402, size: 64, offset: 704)
!402 = !DIDerivedType(tag: DW_TAG_typedef, name: "EFI_SET_TIMER", file: !14, line: 538, baseType: !403)
!403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !404, size: 64)
!404 = !DISubroutineType(types: !405)
!405 = !{!123, !137, !406, !71}
!406 = !DIDerivedType(tag: DW_TAG_typedef, name: "EFI_TIMER_DELAY", file: !14, line: 518, baseType: !38)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "WaitForEvent", scope: !349, file: !14, line: 1967, baseType: !408, size: 64, offset: 768)
!408 = !DIDerivedType(tag: DW_TAG_typedef, name: "EFI_WAIT_FOR_EVENT", file: !14, line: 574, baseType: !409)
!409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !410, size: 64)
!410 = !DISubroutineType(types: !411)
!411 = !{!123, !70, !400, !162}
!412 = !DIDerivedType(tag: DW_TAG_member, name: "SignalEvent", scope: !349, file: !14, line: 1968, baseType: !413, size: 64, offset: 832)
!413 = !DIDerivedType(tag: DW_TAG_typedef, name: "EFI_SIGNAL_EVENT", file: !14, line: 554, baseType: !414)
!414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !415, size: 64)
!415 = !DISubroutineType(types: !416)
!416 = !{!123, !137}
!417 = !DIDerivedType(tag: DW_TAG_member, name: "CloseEvent", scope: !349, file: !14, line: 1969, baseType: !418, size: 64, offset: 896)
!418 = !DIDerivedType(tag: DW_TAG_typedef, name: "EFI_CLOSE_EVENT", file: !14, line: 590, baseType: !414)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "CheckEvent", scope: !349, file: !14, line: 1970, baseType: !420, size: 64, offset: 960)
!420 = !DIDerivedType(tag: DW_TAG_typedef, name: "EFI_CHECK_EVENT", file: !14, line: 606, baseType: !414)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "InstallProtocolInterface", scope: !349, file: !14, line: 1975, baseType: !422, size: 64, offset: 1024)
!422 = !DIDerivedType(tag: DW_TAG_typedef, name: "EFI_INSTALL_PROTOCOL_INTERFACE", file: !14, line: 1246, baseType: !423)
!423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !424, size: 64)
!424 = !DISubroutineType(types: !425)
!425 = !{!123, !426, !275, !427, !52}
!426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !91, size: 64)
!427 = !DIDerivedType(tag: DW_TAG_typedef, name: "EFI_INTERFACE_TYPE", file: !14, line: 1222, baseType: !43)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "ReinstallProtocolInterface", scope: !349, file: !14, line: 1976, baseType: !429, size: 64, offset: 1088)
!429 = !DIDerivedType(tag: DW_TAG_typedef, name: "EFI_REINSTALL_PROTOCOL_INTERFACE", file: !14, line: 1296, baseType: !430)
!430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !431, size: 64)
!431 = !DISubroutineType(types: !432)
!432 = !{!123, !91, !275, !52, !52}
!433 = !DIDerivedType(tag: DW_TAG_member, name: "UninstallProtocolInterface", scope: !349, file: !14, line: 1977, baseType: !434, size: 64, offset: 1152)
!434 = !DIDerivedType(tag: DW_TAG_typedef, name: "EFI_UNINSTALL_PROTOCOL_INTERFACE", file: !14, line: 1322, baseType: !435)
!435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !436, size: 64)
!436 = !DISubroutineType(types: !437)
!437 = !{!123, !91, !275, !52}
!438 = !DIDerivedType(tag: DW_TAG_member, name: "HandleProtocol", scope: !349, file: !14, line: 1978, baseType: !439, size: 64, offset: 1216)
!439 = !DIDerivedType(tag: DW_TAG_typedef, name: "EFI_HANDLE_PROTOCOL", file: !14, line: 1363, baseType: !440)
!440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !441, size: 64)
!441 = !DISubroutineType(types: !442)
!442 = !{!123, !91, !275, !269}
!443 = !DIDerivedType(tag: DW_TAG_member, name: "Reserved", scope: !349, file: !14, line: 1979, baseType: !52, size: 64, offset: 1280)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "RegisterProtocolNotify", scope: !349, file: !14, line: 1980, baseType: !445, size: 64, offset: 1344)
!445 = !DIDerivedType(tag: DW_TAG_typedef, name: "EFI_REGISTER_PROTOCOL_NOTIFY", file: !14, line: 1524, baseType: !446)
!446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !447, size: 64)
!447 = !DISubroutineType(types: !448)
!448 = !{!123, !275, !137, !269}
!449 = !DIDerivedType(tag: DW_TAG_member, name: "LocateHandle", scope: !349, file: !14, line: 1981, baseType: !450, size: 64, offset: 1408)
!450 = !DIDerivedType(tag: DW_TAG_typedef, name: "EFI_LOCATE_HANDLE", file: !14, line: 1573, baseType: !451)
!451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !452, size: 64)
!452 = !DISubroutineType(types: !453)
!453 = !{!123, !454, !275, !52, !162, !426}
!454 = !DIDerivedType(tag: DW_TAG_typedef, name: "EFI_LOCATE_SEARCH_TYPE", file: !14, line: 1547, baseType: !46)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "LocateDevicePath", scope: !349, file: !14, line: 1982, baseType: !456, size: 64, offset: 1472)
!456 = !DIDerivedType(tag: DW_TAG_typedef, name: "EFI_LOCATE_DEVICE_PATH", file: !14, line: 1599, baseType: !457)
!457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !458, size: 64)
!458 = !DISubroutineType(types: !459)
!459 = !{!123, !275, !460, !426}
!460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !461, size: 64)
!461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !462, size: 64)
!462 = !DIDerivedType(tag: DW_TAG_typedef, name: "EFI_DEVICE_PATH_PROTOCOL", file: !463, line: 58, baseType: !464)
!463 = !DIFile(filename: "./Uefi/Protocol/DevicePath.h", directory: "/home/hira/Research/HARDEN/repositories/HARDEN_demo1/edk2/EmulatorPkg/Demo1_Bob", checksumkind: CSK_MD5, checksum: "b97c129759f8893462bd2c573bd0d83a")
!464 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !463, line: 43, size: 32, elements: !465)
!465 = !{!466, !467, !468}
!466 = !DIDerivedType(tag: DW_TAG_member, name: "Type", scope: !464, file: !463, line: 44, baseType: !82, size: 8)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "SubType", scope: !464, file: !463, line: 51, baseType: !82, size: 8, offset: 8)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "Length", scope: !464, file: !463, line: 56, baseType: !469, size: 16, offset: 16)
!469 = !DICompositeType(tag: DW_TAG_array_type, baseType: !82, size: 16, elements: !73)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "InstallConfigurationTable", scope: !349, file: !14, line: 1983, baseType: !471, size: 64, offset: 1536)
!471 = !DIDerivedType(tag: DW_TAG_typedef, name: "EFI_INSTALL_CONFIGURATION_TABLE", file: !14, line: 1620, baseType: !472)
!472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !473, size: 64)
!473 = !DISubroutineType(types: !474)
!474 = !{!123, !275, !52}
!475 = !DIDerivedType(tag: DW_TAG_member, name: "LoadImage", scope: !349, file: !14, line: 1988, baseType: !476, size: 64, offset: 1600)
!476 = !DIDerivedType(tag: DW_TAG_typedef, name: "EFI_IMAGE_LOAD", file: !14, line: 971, baseType: !477)
!477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !478, size: 64)
!478 = !DISubroutineType(types: !479)
!479 = !{!123, !53, !91, !461, !52, !70, !426}
!480 = !DIDerivedType(tag: DW_TAG_member, name: "StartImage", scope: !349, file: !14, line: 1989, baseType: !481, size: 64, offset: 1664)
!481 = !DIDerivedType(tag: DW_TAG_typedef, name: "EFI_IMAGE_START", file: !14, line: 996, baseType: !482)
!482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !483, size: 64)
!483 = !DISubroutineType(types: !484)
!484 = !{!123, !91, !162, !485}
!485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !107, size: 64)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "Exit", scope: !349, file: !14, line: 1990, baseType: !487, size: 64, offset: 1728)
!487 = !DIDerivedType(tag: DW_TAG_typedef, name: "EFI_EXIT", file: !14, line: 1024, baseType: !488)
!488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !489, size: 64)
!489 = !DISubroutineType(types: !490)
!490 = !{!123, !91, !123, !70, !107}
!491 = !DIDerivedType(tag: DW_TAG_member, name: "UnloadImage", scope: !349, file: !14, line: 1991, baseType: !492, size: 64, offset: 1792)
!492 = !DIDerivedType(tag: DW_TAG_typedef, name: "EFI_IMAGE_UNLOAD", file: !14, line: 1042, baseType: !493)
!493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !494, size: 64)
!494 = !DISubroutineType(types: !495)
!495 = !{!123, !91}
!496 = !DIDerivedType(tag: DW_TAG_member, name: "ExitBootServices", scope: !349, file: !14, line: 1992, baseType: !497, size: 64, offset: 1856)
!497 = !DIDerivedType(tag: DW_TAG_typedef, name: "EFI_EXIT_BOOT_SERVICES", file: !14, line: 1058, baseType: !498)
!498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !499, size: 64)
!499 = !DISubroutineType(types: !500)
!500 = !{!123, !91, !70}
!501 = !DIDerivedType(tag: DW_TAG_member, name: "GetNextMonotonicCount", scope: !349, file: !14, line: 1997, baseType: !502, size: 64, offset: 1920)
!502 = !DIDerivedType(tag: DW_TAG_typedef, name: "EFI_GET_NEXT_MONOTONIC_COUNT", file: !14, line: 1139, baseType: !503)
!503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !504, size: 64)
!504 = !DISubroutineType(types: !505)
!505 = !{!123, !339}
!506 = !DIDerivedType(tag: DW_TAG_member, name: "Stall", scope: !349, file: !14, line: 1998, baseType: !507, size: 64, offset: 1984)
!507 = !DIDerivedType(tag: DW_TAG_typedef, name: "EFI_STALL", file: !14, line: 1074, baseType: !508)
!508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !509, size: 64)
!509 = !DISubroutineType(types: !510)
!510 = !{!123, !70}
!511 = !DIDerivedType(tag: DW_TAG_member, name: "SetWatchdogTimer", scope: !349, file: !14, line: 1999, baseType: !512, size: 64, offset: 2048)
!512 = !DIDerivedType(tag: DW_TAG_typedef, name: "EFI_SET_WATCHDOG_TIMER", file: !14, line: 1096, baseType: !513)
!513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !514, size: 64)
!514 = !DISubroutineType(types: !515)
!515 = !{!123, !70, !71, !70, !107}
!516 = !DIDerivedType(tag: DW_TAG_member, name: "ConnectController", scope: !349, file: !14, line: 2004, baseType: !517, size: 64, offset: 2112)
!517 = !DIDerivedType(tag: DW_TAG_typedef, name: "EFI_CONNECT_CONTROLLER", file: !14, line: 345, baseType: !518)
!518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !519, size: 64)
!519 = !DISubroutineType(types: !520)
!520 = !{!123, !91, !426, !461, !53}
!521 = !DIDerivedType(tag: DW_TAG_member, name: "DisconnectController", scope: !349, file: !14, line: 2005, baseType: !522, size: 64, offset: 2176)
!522 = !DIDerivedType(tag: DW_TAG_typedef, name: "EFI_DISCONNECT_CONTROLLER", file: !14, line: 378, baseType: !523)
!523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !524, size: 64)
!524 = !DISubroutineType(types: !525)
!525 = !{!123, !91, !91, !91}
!526 = !DIDerivedType(tag: DW_TAG_member, name: "OpenProtocol", scope: !349, file: !14, line: 2010, baseType: !527, size: 64, offset: 2240)
!527 = !DIDerivedType(tag: DW_TAG_typedef, name: "EFI_OPEN_PROTOCOL", file: !14, line: 1405, baseType: !528)
!528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !529, size: 64)
!529 = !DISubroutineType(types: !530)
!530 = !{!123, !91, !275, !269, !91, !91, !89}
!531 = !DIDerivedType(tag: DW_TAG_member, name: "CloseProtocol", scope: !349, file: !14, line: 2011, baseType: !532, size: 64, offset: 2304)
!532 = !DIDerivedType(tag: DW_TAG_typedef, name: "EFI_CLOSE_PROTOCOL", file: !14, line: 1437, baseType: !533)
!533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !534, size: 64)
!534 = !DISubroutineType(types: !535)
!535 = !{!123, !91, !275, !91, !91}
!536 = !DIDerivedType(tag: DW_TAG_member, name: "OpenProtocolInformation", scope: !349, file: !14, line: 2012, baseType: !537, size: 64, offset: 2368)
!537 = !DIDerivedType(tag: DW_TAG_typedef, name: "EFI_OPEN_PROTOCOL_INFORMATION", file: !14, line: 1471, baseType: !538)
!538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !539, size: 64)
!539 = !DISubroutineType(types: !540)
!540 = !{!123, !91, !275, !541, !162}
!541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !542, size: 64)
!542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !543, size: 64)
!543 = !DIDerivedType(tag: DW_TAG_typedef, name: "EFI_OPEN_PROTOCOL_INFORMATION_ENTRY", file: !14, line: 1452, baseType: !544)
!544 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !14, line: 1447, size: 192, elements: !545)
!545 = !{!546, !547, !548, !549}
!546 = !DIDerivedType(tag: DW_TAG_member, name: "AgentHandle", scope: !544, file: !14, line: 1448, baseType: !91, size: 64)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "ControllerHandle", scope: !544, file: !14, line: 1449, baseType: !91, size: 64, offset: 64)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "Attributes", scope: !544, file: !14, line: 1450, baseType: !89, size: 32, offset: 128)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "OpenCount", scope: !544, file: !14, line: 1451, baseType: !89, size: 32, offset: 160)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "ProtocolsPerHandle", scope: !349, file: !14, line: 2017, baseType: !551, size: 64, offset: 2432)
!551 = !DIDerivedType(tag: DW_TAG_typedef, name: "EFI_PROTOCOLS_PER_HANDLE", file: !14, line: 1501, baseType: !552)
!552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !553, size: 64)
!553 = !DISubroutineType(types: !554)
!554 = !{!123, !91, !555, !162}
!555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !556, size: 64)
!556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !275, size: 64)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "LocateHandleBuffer", scope: !349, file: !14, line: 2018, baseType: !558, size: 64, offset: 2496)
!558 = !DIDerivedType(tag: DW_TAG_typedef, name: "EFI_LOCATE_HANDLE_BUFFER", file: !14, line: 1646, baseType: !559)
!559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !560, size: 64)
!560 = !DISubroutineType(types: !561)
!561 = !{!123, !454, !275, !52, !162, !562}
!562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !426, size: 64)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "LocateProtocol", scope: !349, file: !14, line: 2019, baseType: !564, size: 64, offset: 2560)
!564 = !DIDerivedType(tag: DW_TAG_typedef, name: "EFI_LOCATE_PROTOCOL", file: !14, line: 1673, baseType: !565)
!565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !566, size: 64)
!566 = !DISubroutineType(types: !567)
!567 = !{!123, !275, !52, !269}
!568 = !DIDerivedType(tag: DW_TAG_member, name: "InstallMultipleProtocolInterfaces", scope: !349, file: !14, line: 2020, baseType: !569, size: 64, offset: 2624)
!569 = !DIDerivedType(tag: DW_TAG_typedef, name: "EFI_INSTALL_MULTIPLE_PROTOCOL_INTERFACES", file: !14, line: 1271, baseType: !570)
!570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !571, size: 64)
!571 = !DISubroutineType(types: !572)
!572 = !{!123, !426, null}
!573 = !DIDerivedType(tag: DW_TAG_member, name: "UninstallMultipleProtocolInterfaces", scope: !349, file: !14, line: 2021, baseType: !574, size: 64, offset: 2688)
!574 = !DIDerivedType(tag: DW_TAG_typedef, name: "EFI_UNINSTALL_MULTIPLE_PROTOCOL_INTERFACES", file: !14, line: 1341, baseType: !575)
!575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !576, size: 64)
!576 = !DISubroutineType(types: !577)
!577 = !{!123, !91, null}
!578 = !DIDerivedType(tag: DW_TAG_member, name: "CalculateCrc32", scope: !349, file: !14, line: 2026, baseType: !579, size: 64, offset: 2752)
!579 = !DIDerivedType(tag: DW_TAG_typedef, name: "EFI_CALCULATE_CRC32", file: !14, line: 1176, baseType: !580)
!580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !581, size: 64)
!581 = !DISubroutineType(types: !582)
!582 = !{!123, !52, !70, !287}
!583 = !DIDerivedType(tag: DW_TAG_member, name: "CopyMem", scope: !349, file: !14, line: 2031, baseType: !584, size: 64, offset: 2816)
!584 = !DIDerivedType(tag: DW_TAG_typedef, name: "EFI_COPY_MEM", file: !14, line: 1192, baseType: !585)
!585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !586, size: 64)
!586 = !DISubroutineType(types: !587)
!587 = !{null, !52, !52, !70}
!588 = !DIDerivedType(tag: DW_TAG_member, name: "SetMem", scope: !349, file: !14, line: 2032, baseType: !589, size: 64, offset: 2880)
!589 = !DIDerivedType(tag: DW_TAG_typedef, name: "EFI_SET_MEM", file: !14, line: 1208, baseType: !590)
!590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !591, size: 64)
!591 = !DISubroutineType(types: !592)
!592 = !{null, !52, !70, !82}
!593 = !DIDerivedType(tag: DW_TAG_member, name: "CreateEventEx", scope: !349, file: !14, line: 2033, baseType: !594, size: 64, offset: 2944)
!594 = !DIDerivedType(tag: DW_TAG_typedef, name: "EFI_CREATE_EVENT_EX", file: !14, line: 493, baseType: !595)
!595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !596, size: 64)
!596 = !DISubroutineType(types: !597)
!597 = !{!123, !89, !357, !396, !598, !600, !400}
!598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !599, size: 64)
!599 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !601, size: 64)
!601 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !276)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "NumberOfTableEntries", scope: !95, file: !14, line: 2109, baseType: !70, size: 64, offset: 832)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "ConfigurationTable", scope: !95, file: !14, line: 2114, baseType: !604, size: 64, offset: 896)
!604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !605, size: 64)
!605 = !DIDerivedType(tag: DW_TAG_typedef, name: "EFI_CONFIGURATION_TABLE", file: !14, line: 2049, baseType: !606)
!606 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !14, line: 2040, size: 192, elements: !607)
!607 = !{!608, !609}
!608 = !DIDerivedType(tag: DW_TAG_member, name: "VendorGuid", scope: !606, file: !14, line: 2044, baseType: !276, size: 128)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "VendorTable", scope: !606, file: !14, line: 2048, baseType: !52, size: 64, offset: 128)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "DeviceHandle", scope: !86, file: !85, line: 53, baseType: !91, size: 64, offset: 192)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "FilePath", scope: !86, file: !85, line: 54, baseType: !461, size: 64, offset: 256)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "Reserved", scope: !86, file: !85, line: 56, baseType: !52, size: 64, offset: 320)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "LoadOptionsSize", scope: !86, file: !85, line: 61, baseType: !89, size: 32, offset: 384)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "LoadOptions", scope: !86, file: !85, line: 62, baseType: !52, size: 64, offset: 448)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "ImageBase", scope: !86, file: !85, line: 67, baseType: !52, size: 64, offset: 512)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "ImageSize", scope: !86, file: !85, line: 68, baseType: !71, size: 64, offset: 576)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "ImageCodeType", scope: !86, file: !85, line: 69, baseType: !369, size: 32, offset: 640)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "ImageDataType", scope: !86, file: !85, line: 70, baseType: !369, size: 32, offset: 672)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "Unload", scope: !86, file: !85, line: 71, baseType: !492, size: 64, offset: 704)
!620 = !{!0, !621, !640, !642, !644, !646, !648, !650, !662, !675, !677, !679, !681, !694}
!621 = !DIGlobalVariableExpression(var: !622, expr: !DIExpression())
!622 = distinct !DIGlobalVariable(name: "RngProtocol", scope: !2, file: !58, line: 24, type: !623, isLocal: false, isDefinition: true)
!623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !624, size: 64)
!624 = !DIDerivedType(tag: DW_TAG_typedef, name: "EFI_RNG_PROTOCOL", file: !625, line: 22, baseType: !626)
!625 = !DIFile(filename: "./../Demo1_Alice/../Demo1_Access_Key/Protocol/Rng.h", directory: "/home/hira/Research/HARDEN/repositories/HARDEN_demo1/edk2/EmulatorPkg/Demo1_Bob", checksumkind: CSK_MD5, checksum: "1128b15f0582c0f8bfa33dc5c07b9582")
!626 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_EFI_RNG_PROTOCOL", file: !625, line: 137, size: 128, elements: !627)
!627 = !{!628, !635}
!628 = !DIDerivedType(tag: DW_TAG_member, name: "GetInfo", scope: !626, file: !625, line: 138, baseType: !629, size: 64)
!629 = !DIDerivedType(tag: DW_TAG_typedef, name: "EFI_RNG_GET_INFO", file: !625, line: 96, baseType: !630)
!630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !631, size: 64)
!631 = !DISubroutineType(types: !632)
!632 = !{!123, !623, !162, !633}
!633 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !634, size: 64)
!634 = !DIDerivedType(tag: DW_TAG_typedef, name: "EFI_RNG_ALGORITHM", file: !625, line: 30, baseType: !276)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "GetRNG", scope: !626, file: !625, line: 139, baseType: !636, size: 64, offset: 64)
!636 = !DIDerivedType(tag: DW_TAG_typedef, name: "EFI_RNG_GET_RNG", file: !625, line: 126, baseType: !637)
!637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !638, size: 64)
!638 = !DISubroutineType(types: !639)
!639 = !{!123, !623, !633, !70, !81}
!640 = !DIGlobalVariableExpression(var: !641, expr: !DIExpression())
!641 = distinct !DIGlobalVariable(name: "masterKey", scope: !2, file: !58, line: 25, type: !303, isLocal: false, isDefinition: true)
!642 = !DIGlobalVariableExpression(var: !643, expr: !DIExpression())
!643 = distinct !DIGlobalVariable(name: "accessKeyLock", scope: !2, file: !58, line: 28, type: !53, isLocal: false, isDefinition: true)
!644 = !DIGlobalVariableExpression(var: !645, expr: !DIExpression())
!645 = distinct !DIGlobalVariable(name: "head", scope: !2, file: !58, line: 40, type: !56, isLocal: false, isDefinition: true)
!646 = !DIGlobalVariableExpression(var: !647, expr: !DIExpression())
!647 = distinct !DIGlobalVariable(name: "last", scope: !2, file: !58, line: 41, type: !56, isLocal: false, isDefinition: true)
!648 = !DIGlobalVariableExpression(var: !649, expr: !DIExpression())
!649 = distinct !DIGlobalVariable(name: "keychain", scope: !2, file: !58, line: 42, type: !56, isLocal: false, isDefinition: true)
!650 = !DIGlobalVariableExpression(var: !651, expr: !DIExpression())
!651 = distinct !DIGlobalVariable(name: "gDemo1_Bob_Protocol", scope: !2, file: !3, line: 20, type: !652, isLocal: false, isDefinition: true)
!652 = !DIDerivedType(tag: DW_TAG_typedef, name: "Demo1_Bob_PROTOCOL", file: !653, line: 35, baseType: !654)
!653 = !DIFile(filename: "./Demo1_Bob.h", directory: "/home/hira/Research/HARDEN/repositories/HARDEN_demo1/edk2/EmulatorPkg/Demo1_Bob", checksumkind: CSK_MD5, checksum: "4fa74dec5a92cd7311066f39f790ce53")
!654 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Demo1_Bob_PROTOCOL", file: !653, line: 52, size: 64, elements: !655)
!655 = !{!656}
!656 = !DIDerivedType(tag: DW_TAG_member, name: "Demo1BobDataProvider", scope: !654, file: !653, line: 53, baseType: !657, size: 64)
!657 = !DIDerivedType(tag: DW_TAG_typedef, name: "BOB_CB_TYPE", file: !653, line: 42, baseType: !658)
!658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !659, size: 64)
!659 = !DISubroutineType(types: !660)
!660 = !{!123, !661, !52, !269, !70}
!661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !652, size: 64)
!662 = !DIGlobalVariableExpression(var: !663, expr: !DIExpression())
!663 = distinct !DIGlobalVariable(name: "AccessKeyProtocol", scope: !2, file: !3, line: 25, type: !664, isLocal: false, isDefinition: true)
!664 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !665, size: 64)
!665 = !DIDerivedType(tag: DW_TAG_typedef, name: "Demo1_Access_Key_PROTOCOL", file: !666, line: 36, baseType: !667)
!666 = !DIFile(filename: "./../Demo1_Access_Key/Demo1_Access_Key.h", directory: "/home/hira/Research/HARDEN/repositories/HARDEN_demo1/edk2/EmulatorPkg/Demo1_Bob", checksumkind: CSK_MD5, checksum: "a5dbaf8c3ac310b99ce95abca155b547")
!667 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Demo1_Access_Key_PROTOCOL", file: !666, line: 72, size: 128, elements: !668)
!668 = !{!669, !674}
!669 = !DIDerivedType(tag: DW_TAG_member, name: "Demo1GenerateAccessKey", scope: !667, file: !666, line: 73, baseType: !670, size: 64)
!670 = !DIDerivedType(tag: DW_TAG_typedef, name: "DRVR_FUNC_CB_TYPE1", file: !666, line: 51, baseType: !671)
!671 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !672, size: 64)
!672 = !DISubroutineType(types: !673)
!673 = !{!123, !664, !91, !53, !303}
!674 = !DIDerivedType(tag: DW_TAG_member, name: "Demo1_Ready_To_Lock_Event", scope: !667, file: !666, line: 75, baseType: !137, size: 64, offset: 64)
!675 = !DIGlobalVariableExpression(var: !676, expr: !DIExpression())
!676 = distinct !DIGlobalVariable(name: "Demo1_Bob_PeriodicTimer", scope: !2, file: !3, line: 30, type: !137, isLocal: false, isDefinition: true)
!677 = !DIGlobalVariableExpression(var: !678, expr: !DIExpression())
!678 = distinct !DIGlobalVariable(name: "DataToProvide", scope: !2, file: !3, line: 31, type: !70, isLocal: false, isDefinition: true)
!679 = !DIGlobalVariableExpression(var: !680, expr: !DIExpression())
!680 = distinct !DIGlobalVariable(name: "gLoadImage", scope: !2, file: !3, line: 32, type: !83, isLocal: false, isDefinition: true)
!681 = !DIGlobalVariableExpression(var: !682, expr: !DIExpression())
!682 = distinct !DIGlobalVariable(name: "AliceProtocol", scope: !2, file: !3, line: 26, type: !683, isLocal: false, isDefinition: true)
!683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !684, size: 64)
!684 = !DIDerivedType(tag: DW_TAG_typedef, name: "Demo1_Alice_PROTOCOL", file: !685, line: 36, baseType: !686)
!685 = !DIFile(filename: "./../Demo1_Alice/Demo1_Alice.h", directory: "/home/hira/Research/HARDEN/repositories/HARDEN_demo1/edk2/EmulatorPkg/Demo1_Bob", checksumkind: CSK_MD5, checksum: "a1a6c09027689aba8f236cb5bb922cff")
!686 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Demo1_Alice_PROTOCOL", file: !685, line: 56, size: 128, elements: !687)
!687 = !{!688, !693}
!688 = !DIDerivedType(tag: DW_TAG_member, name: "Demo1AliceProvideData", scope: !686, file: !685, line: 57, baseType: !689, size: 64)
!689 = !DIDerivedType(tag: DW_TAG_typedef, name: "ALICE_CB_TYPE", file: !685, line: 47, baseType: !690)
!690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !691, size: 64)
!691 = !DISubroutineType(types: !692)
!692 = !{!123, !683, !91, !162}
!693 = !DIDerivedType(tag: DW_TAG_member, name: "Demo1_Ready_To_Run_Event", scope: !686, file: !685, line: 58, baseType: !137, size: 64, offset: 64)
!694 = !DIGlobalVariableExpression(var: !695, expr: !DIExpression())
!695 = distinct !DIGlobalVariable(name: "bobKey", scope: !2, file: !3, line: 29, type: !62, isLocal: false, isDefinition: true)
!696 = distinct !DICompileUnit(language: DW_LANG_C99, file: !697, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!697 = !DIFile(filename: "/home/hira/Research/klee/runtime/Freestanding/memcpy.c", directory: "/home/hira/Research/klee_build/runtime/Freestanding", checksumkind: CSK_MD5, checksum: "8fb9a7164e167db005d7d002570068bc")
!698 = !{i32 7, !"Dwarf Version", i32 5}
!699 = !{i32 2, !"Debug Info Version", i32 3}
!700 = !{i32 1, !"wchar_size", i32 4}
!701 = !{i32 7, !"PIC Level", i32 2}
!702 = !{i32 7, !"PIE Level", i32 2}
!703 = !{i32 7, !"uwtable", i32 1}
!704 = !{i32 7, !"frame-pointer", i32 2}
!705 = !{!"Ubuntu clang version 14.0.6"}
!706 = distinct !DISubprogram(name: "Demo1GenerateAccessKey", scope: !58, file: !58, line: 295, type: !672, scopeLine: 301, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !707)
!707 = !{}
!708 = !DILocalVariable(name: "This", arg: 1, scope: !706, file: !58, line: 296, type: !664)
!709 = !DILocation(line: 296, column: 35, scope: !706)
!710 = !DILocalVariable(name: "Controller", arg: 2, scope: !706, file: !58, line: 297, type: !91)
!711 = !DILocation(line: 297, column: 19, scope: !706)
!712 = !DILocalVariable(name: "WriteAccess", arg: 3, scope: !706, file: !58, line: 298, type: !53)
!713 = !DILocation(line: 298, column: 16, scope: !706)
!714 = !DILocalVariable(name: "AccessKeyPtr", arg: 4, scope: !706, file: !58, line: 299, type: !303)
!715 = !DILocation(line: 299, column: 30, scope: !706)
!716 = !DILocalVariable(name: "Status", scope: !706, file: !58, line: 302, type: !123)
!717 = !DILocation(line: 302, column: 14, scope: !706)
!718 = !DILocalVariable(name: "header", scope: !706, file: !58, line: 303, type: !70)
!719 = !DILocation(line: 303, column: 9, scope: !706)
!720 = !DILocation(line: 306, column: 7, scope: !721)
!721 = distinct !DILexicalBlock(scope: !706, file: !58, line: 306, column: 7)
!722 = !DILocation(line: 306, column: 20, scope: !721)
!723 = !DILocation(line: 306, column: 7, scope: !706)
!724 = !DILocation(line: 308, column: 5, scope: !725)
!725 = distinct !DILexicalBlock(scope: !721, file: !58, line: 307, column: 3)
!726 = !DILocation(line: 311, column: 7, scope: !727)
!727 = distinct !DILexicalBlock(scope: !706, file: !58, line: 311, column: 7)
!728 = !DILocation(line: 311, column: 21, scope: !727)
!729 = !DILocation(line: 311, column: 7, scope: !706)
!730 = !DILocation(line: 313, column: 5, scope: !731)
!731 = distinct !DILexicalBlock(scope: !727, file: !58, line: 312, column: 3)
!732 = !DILocation(line: 317, column: 12, scope: !706)
!733 = !DILocation(line: 317, column: 25, scope: !706)
!734 = !DILocation(line: 317, column: 32, scope: !706)
!735 = !DILocation(line: 317, column: 70, scope: !706)
!736 = !DILocation(line: 317, column: 84, scope: !706)
!737 = !DILocation(line: 317, column: 60, scope: !706)
!738 = !DILocation(line: 317, column: 10, scope: !706)
!739 = !DILocation(line: 318, column: 7, scope: !740)
!740 = distinct !DILexicalBlock(scope: !706, file: !58, line: 318, column: 7)
!741 = !DILocation(line: 318, column: 7, scope: !706)
!742 = !DILocation(line: 320, column: 12, scope: !743)
!743 = distinct !DILexicalBlock(scope: !740, file: !58, line: 319, column: 3)
!744 = !DILocation(line: 320, column: 5, scope: !743)
!745 = !DILocation(line: 324, column: 7, scope: !746)
!746 = distinct !DILexicalBlock(scope: !706, file: !58, line: 324, column: 7)
!747 = !DILocation(line: 324, column: 7, scope: !706)
!748 = !DILocation(line: 326, column: 12, scope: !749)
!749 = distinct !DILexicalBlock(scope: !746, file: !58, line: 325, column: 3)
!750 = !DILocation(line: 327, column: 3, scope: !749)
!751 = !DILocation(line: 330, column: 12, scope: !752)
!752 = distinct !DILexicalBlock(scope: !746, file: !58, line: 329, column: 3)
!753 = !DILocation(line: 332, column: 39, scope: !706)
!754 = !DILocation(line: 332, column: 3, scope: !706)
!755 = !DILocation(line: 332, column: 17, scope: !706)
!756 = !DILocation(line: 332, column: 37, scope: !706)
!757 = !DILocation(line: 335, column: 7, scope: !758)
!758 = distinct !DILexicalBlock(scope: !706, file: !58, line: 335, column: 7)
!759 = !DILocation(line: 335, column: 23, scope: !758)
!760 = !DILocation(line: 335, column: 20, scope: !758)
!761 = !DILocation(line: 335, column: 7, scope: !706)
!762 = !DILocation(line: 337, column: 16, scope: !763)
!763 = distinct !DILexicalBlock(scope: !758, file: !58, line: 336, column: 3)
!764 = !DILocation(line: 337, column: 5, scope: !763)
!765 = !DILocation(line: 338, column: 3, scope: !763)
!766 = !DILocation(line: 341, column: 17, scope: !767)
!767 = distinct !DILexicalBlock(scope: !758, file: !58, line: 340, column: 3)
!768 = !DILocation(line: 341, column: 5, scope: !767)
!769 = !DILocation(line: 344, column: 10, scope: !706)
!770 = !DILocation(line: 344, column: 3, scope: !706)
!771 = !DILocation(line: 345, column: 1, scope: !706)
!772 = distinct !DISubprogram(name: "Demo1ValidateAccessKey", scope: !58, file: !58, line: 363, type: !773, scopeLine: 369, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !707)
!773 = !DISubroutineType(types: !774)
!774 = !{!123, !664, !91, !303, !53, !242}
!775 = !DILocalVariable(name: "This", arg: 1, scope: !772, file: !58, line: 364, type: !664)
!776 = !DILocation(line: 364, column: 35, scope: !772)
!777 = !DILocalVariable(name: "Controller", arg: 2, scope: !772, file: !58, line: 365, type: !91)
!778 = !DILocation(line: 365, column: 19, scope: !772)
!779 = !DILocalVariable(name: "AccessKeyPtr", arg: 3, scope: !772, file: !58, line: 366, type: !303)
!780 = !DILocation(line: 366, column: 26, scope: !772)
!781 = !DILocalVariable(name: "WriteAccess", arg: 4, scope: !772, file: !58, line: 367, type: !53)
!782 = !DILocation(line: 367, column: 16, scope: !772)
!783 = !DILocalVariable(name: "Result", arg: 5, scope: !772, file: !58, line: 368, type: !242)
!784 = !DILocation(line: 368, column: 21, scope: !772)
!785 = !DILocation(line: 371, column: 7, scope: !786)
!786 = distinct !DILexicalBlock(scope: !772, file: !58, line: 371, column: 7)
!787 = !DILocation(line: 371, column: 14, scope: !786)
!788 = !DILocation(line: 371, column: 7, scope: !772)
!789 = !DILocation(line: 373, column: 5, scope: !790)
!790 = distinct !DILexicalBlock(scope: !786, file: !58, line: 372, column: 3)
!791 = !DILocation(line: 375, column: 4, scope: !772)
!792 = !DILocation(line: 375, column: 11, scope: !772)
!793 = !DILocation(line: 377, column: 7, scope: !794)
!794 = distinct !DILexicalBlock(scope: !772, file: !58, line: 377, column: 7)
!795 = !DILocation(line: 377, column: 20, scope: !794)
!796 = !DILocation(line: 377, column: 7, scope: !772)
!797 = !DILocation(line: 379, column: 5, scope: !798)
!798 = distinct !DILexicalBlock(scope: !794, file: !58, line: 378, column: 3)
!799 = !DILocation(line: 384, column: 7, scope: !800)
!800 = distinct !DILexicalBlock(scope: !772, file: !58, line: 384, column: 7)
!801 = !DILocation(line: 384, column: 19, scope: !800)
!802 = !DILocation(line: 384, column: 23, scope: !800)
!803 = !DILocation(line: 384, column: 37, scope: !800)
!804 = !DILocation(line: 384, column: 57, scope: !800)
!805 = !DILocation(line: 384, column: 7, scope: !772)
!806 = !DILocation(line: 386, column: 5, scope: !807)
!807 = distinct !DILexicalBlock(scope: !800, file: !58, line: 385, column: 3)
!808 = !DILocation(line: 389, column: 26, scope: !772)
!809 = !DILocation(line: 389, column: 13, scope: !772)
!810 = !DILocation(line: 389, column: 4, scope: !772)
!811 = !DILocation(line: 389, column: 11, scope: !772)
!812 = !DILocation(line: 390, column: 3, scope: !772)
!813 = !DILocation(line: 391, column: 1, scope: !772)
!814 = distinct !DISubprogram(name: "IsKeychainEmpty", scope: !58, file: !58, line: 54, type: !815, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !707)
!815 = !DISubroutineType(types: !816)
!816 = !{!53}
!817 = !DILocation(line: 57, column: 10, scope: !814)
!818 = !DILocation(line: 57, column: 15, scope: !814)
!819 = !DILocation(line: 57, column: 3, scope: !814)
!820 = distinct !DISubprogram(name: "KeychainLength", scope: !58, file: !58, line: 65, type: !821, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !707)
!821 = !DISubroutineType(types: !822)
!822 = !{!70}
!823 = !DILocalVariable(name: "length", scope: !820, file: !58, line: 68, type: !70)
!824 = !DILocation(line: 68, column: 9, scope: !820)
!825 = !DILocalVariable(name: "current", scope: !820, file: !58, line: 69, type: !56)
!826 = !DILocation(line: 69, column: 9, scope: !820)
!827 = !DILocation(line: 70, column: 18, scope: !828)
!828 = distinct !DILexicalBlock(scope: !820, file: !58, line: 70, column: 3)
!829 = !DILocation(line: 70, column: 16, scope: !828)
!830 = !DILocation(line: 70, column: 8, scope: !828)
!831 = !DILocation(line: 70, column: 24, scope: !832)
!832 = distinct !DILexicalBlock(scope: !828, file: !58, line: 70, column: 3)
!833 = !DILocation(line: 70, column: 32, scope: !832)
!834 = !DILocation(line: 70, column: 3, scope: !828)
!835 = !DILocation(line: 72, column: 11, scope: !836)
!836 = distinct !DILexicalBlock(scope: !832, file: !58, line: 71, column: 3)
!837 = !DILocation(line: 73, column: 3, scope: !836)
!838 = !DILocation(line: 70, column: 51, scope: !832)
!839 = !DILocation(line: 70, column: 60, scope: !832)
!840 = !DILocation(line: 70, column: 49, scope: !832)
!841 = !DILocation(line: 70, column: 3, scope: !832)
!842 = distinct !{!842, !834, !843, !844}
!843 = !DILocation(line: 73, column: 3, scope: !828)
!844 = !{!"llvm.loop.mustprogress"}
!845 = !DILocation(line: 74, column: 10, scope: !820)
!846 = !DILocation(line: 74, column: 3, scope: !820)
!847 = distinct !DISubprogram(name: "InsertFirst", scope: !58, file: !58, line: 84, type: !848, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !707)
!848 = !DISubroutineType(types: !849)
!849 = !{null, !303}
!850 = !DILocalVariable(name: "access_key", arg: 1, scope: !847, file: !58, line: 85, type: !303)
!851 = !DILocation(line: 85, column: 23, scope: !847)
!852 = !DILocalVariable(name: "link", scope: !847, file: !58, line: 87, type: !56)
!853 = !DILocation(line: 87, column: 9, scope: !847)
!854 = !DILocation(line: 87, column: 16, scope: !847)
!855 = !DILocation(line: 88, column: 3, scope: !847)
!856 = !DILocation(line: 88, column: 3, scope: !857)
!857 = distinct !DILexicalBlock(scope: !858, file: !58, line: 88, column: 3)
!858 = distinct !DILexicalBlock(scope: !847, file: !58, line: 88, column: 3)
!859 = !DILocation(line: 88, column: 3, scope: !858)
!860 = !DILocation(line: 88, column: 3, scope: !861)
!861 = distinct !DILexicalBlock(scope: !862, file: !58, line: 88, column: 3)
!862 = distinct !DILexicalBlock(scope: !857, file: !58, line: 88, column: 3)
!863 = !DILocation(line: 88, column: 3, scope: !862)
!864 = !DILocation(line: 88, column: 3, scope: !865)
!865 = distinct !DILexicalBlock(scope: !861, file: !58, line: 88, column: 3)
!866 = !DILocation(line: 89, column: 12, scope: !847)
!867 = !DILocation(line: 89, column: 18, scope: !847)
!868 = !DILocation(line: 89, column: 11, scope: !847)
!869 = !DILocation(line: 89, column: 30, scope: !847)
!870 = !DILocation(line: 89, column: 3, scope: !847)
!871 = !DILocation(line: 91, column: 7, scope: !872)
!872 = distinct !DILexicalBlock(scope: !847, file: !58, line: 91, column: 7)
!873 = !DILocation(line: 91, column: 7, scope: !847)
!874 = !DILocation(line: 93, column: 12, scope: !875)
!875 = distinct !DILexicalBlock(scope: !872, file: !58, line: 92, column: 3)
!876 = !DILocation(line: 93, column: 10, scope: !875)
!877 = !DILocation(line: 94, column: 3, scope: !875)
!878 = !DILocation(line: 97, column: 18, scope: !879)
!879 = distinct !DILexicalBlock(scope: !872, file: !58, line: 96, column: 3)
!880 = !DILocation(line: 97, column: 5, scope: !879)
!881 = !DILocation(line: 97, column: 11, scope: !879)
!882 = !DILocation(line: 97, column: 16, scope: !879)
!883 = !DILocation(line: 99, column: 3, scope: !847)
!884 = !DILocation(line: 99, column: 9, scope: !847)
!885 = !DILocation(line: 99, column: 14, scope: !847)
!886 = !DILocation(line: 100, column: 16, scope: !847)
!887 = !DILocation(line: 100, column: 3, scope: !847)
!888 = !DILocation(line: 100, column: 9, scope: !847)
!889 = !DILocation(line: 100, column: 14, scope: !847)
!890 = !DILocation(line: 101, column: 10, scope: !847)
!891 = !DILocation(line: 101, column: 8, scope: !847)
!892 = !DILocation(line: 102, column: 1, scope: !847)
!893 = distinct !DISubprogram(name: "InsertLast", scope: !58, file: !58, line: 111, type: !848, scopeLine: 113, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !707)
!894 = !DILocalVariable(name: "access_key", arg: 1, scope: !893, file: !58, line: 112, type: !303)
!895 = !DILocation(line: 112, column: 23, scope: !893)
!896 = !DILocalVariable(name: "link", scope: !893, file: !58, line: 114, type: !56)
!897 = !DILocation(line: 114, column: 9, scope: !893)
!898 = !DILocation(line: 114, column: 16, scope: !893)
!899 = !DILocation(line: 115, column: 3, scope: !893)
!900 = !DILocation(line: 115, column: 3, scope: !901)
!901 = distinct !DILexicalBlock(scope: !902, file: !58, line: 115, column: 3)
!902 = distinct !DILexicalBlock(scope: !893, file: !58, line: 115, column: 3)
!903 = !DILocation(line: 115, column: 3, scope: !902)
!904 = !DILocation(line: 115, column: 3, scope: !905)
!905 = distinct !DILexicalBlock(scope: !906, file: !58, line: 115, column: 3)
!906 = distinct !DILexicalBlock(scope: !901, file: !58, line: 115, column: 3)
!907 = !DILocation(line: 115, column: 3, scope: !906)
!908 = !DILocation(line: 115, column: 3, scope: !909)
!909 = distinct !DILexicalBlock(scope: !905, file: !58, line: 115, column: 3)
!910 = !DILocation(line: 116, column: 12, scope: !893)
!911 = !DILocation(line: 116, column: 18, scope: !893)
!912 = !DILocation(line: 116, column: 11, scope: !893)
!913 = !DILocation(line: 116, column: 30, scope: !893)
!914 = !DILocation(line: 116, column: 3, scope: !893)
!915 = !DILocation(line: 118, column: 7, scope: !916)
!916 = distinct !DILexicalBlock(scope: !893, file: !58, line: 118, column: 7)
!917 = !DILocation(line: 118, column: 7, scope: !893)
!918 = !DILocation(line: 120, column: 12, scope: !919)
!919 = distinct !DILexicalBlock(scope: !916, file: !58, line: 119, column: 3)
!920 = !DILocation(line: 120, column: 10, scope: !919)
!921 = !DILocation(line: 121, column: 3, scope: !919)
!922 = !DILocation(line: 124, column: 18, scope: !923)
!923 = distinct !DILexicalBlock(scope: !916, file: !58, line: 123, column: 3)
!924 = !DILocation(line: 124, column: 5, scope: !923)
!925 = !DILocation(line: 124, column: 11, scope: !923)
!926 = !DILocation(line: 124, column: 16, scope: !923)
!927 = !DILocation(line: 125, column: 18, scope: !923)
!928 = !DILocation(line: 125, column: 5, scope: !923)
!929 = !DILocation(line: 125, column: 11, scope: !923)
!930 = !DILocation(line: 125, column: 16, scope: !923)
!931 = !DILocation(line: 127, column: 3, scope: !893)
!932 = !DILocation(line: 127, column: 9, scope: !893)
!933 = !DILocation(line: 127, column: 14, scope: !893)
!934 = !DILocation(line: 128, column: 10, scope: !893)
!935 = !DILocation(line: 128, column: 8, scope: !893)
!936 = !DILocation(line: 129, column: 1, scope: !893)
!937 = distinct !DISubprogram(name: "DoesKeyExist", scope: !58, file: !58, line: 139, type: !938, scopeLine: 141, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !707)
!938 = !DISubroutineType(types: !939)
!939 = !{!53, !303}
!940 = !DILocalVariable(name: "access_key", arg: 1, scope: !937, file: !58, line: 140, type: !303)
!941 = !DILocation(line: 140, column: 23, scope: !937)
!942 = !DILocalVariable(name: "current", scope: !937, file: !58, line: 143, type: !56)
!943 = !DILocation(line: 143, column: 9, scope: !937)
!944 = !DILocation(line: 144, column: 7, scope: !945)
!945 = distinct !DILexicalBlock(scope: !937, file: !58, line: 144, column: 7)
!946 = !DILocation(line: 144, column: 18, scope: !945)
!947 = !DILocation(line: 144, column: 7, scope: !937)
!948 = !DILocation(line: 146, column: 5, scope: !949)
!949 = distinct !DILexicalBlock(scope: !945, file: !58, line: 145, column: 3)
!950 = !DILocation(line: 148, column: 17, scope: !937)
!951 = !DILocation(line: 148, column: 9, scope: !937)
!952 = !DILocation(line: 148, column: 8, scope: !937)
!953 = !DILocation(line: 149, column: 22, scope: !937)
!954 = !DILocation(line: 149, column: 3, scope: !937)
!955 = !DILocation(line: 151, column: 18, scope: !956)
!956 = distinct !DILexicalBlock(scope: !937, file: !58, line: 151, column: 3)
!957 = !DILocation(line: 151, column: 16, scope: !956)
!958 = !DILocation(line: 151, column: 8, scope: !956)
!959 = !DILocation(line: 151, column: 24, scope: !960)
!960 = distinct !DILexicalBlock(scope: !956, file: !58, line: 151, column: 3)
!961 = !DILocation(line: 151, column: 32, scope: !960)
!962 = !DILocation(line: 151, column: 3, scope: !956)
!963 = !DILocation(line: 153, column: 9, scope: !964)
!964 = distinct !DILexicalBlock(scope: !965, file: !58, line: 153, column: 9)
!965 = distinct !DILexicalBlock(scope: !960, file: !58, line: 152, column: 3)
!966 = !DILocation(line: 153, column: 21, scope: !964)
!967 = !DILocation(line: 153, column: 44, scope: !964)
!968 = !DILocation(line: 153, column: 53, scope: !964)
!969 = !DILocation(line: 153, column: 64, scope: !964)
!970 = !DILocation(line: 153, column: 41, scope: !964)
!971 = !DILocation(line: 153, column: 9, scope: !965)
!972 = !DILocation(line: 155, column: 7, scope: !973)
!973 = distinct !DILexicalBlock(scope: !964, file: !58, line: 154, column: 5)
!974 = !DILocation(line: 157, column: 3, scope: !965)
!975 = !DILocation(line: 151, column: 51, scope: !960)
!976 = !DILocation(line: 151, column: 60, scope: !960)
!977 = !DILocation(line: 151, column: 49, scope: !960)
!978 = !DILocation(line: 151, column: 3, scope: !960)
!979 = distinct !{!979, !962, !980, !844}
!980 = !DILocation(line: 157, column: 3, scope: !956)
!981 = !DILocation(line: 159, column: 3, scope: !937)
!982 = !DILocation(line: 160, column: 1, scope: !937)
!983 = distinct !DISubprogram(name: "Demo1AccessKeyInit", scope: !58, file: !58, line: 193, type: !984, scopeLine: 196, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !707)
!984 = !DISubroutineType(types: !985)
!985 = !{!123, !91, !93}
!986 = !DILocalVariable(name: "ImageHandle", arg: 1, scope: !983, file: !58, line: 194, type: !91)
!987 = !DILocation(line: 194, column: 19, scope: !983)
!988 = !DILocalVariable(name: "SystemTable", arg: 2, scope: !983, file: !58, line: 195, type: !93)
!989 = !DILocation(line: 195, column: 26, scope: !983)
!990 = !DILocalVariable(name: "Status", scope: !983, file: !58, line: 197, type: !123)
!991 = !DILocation(line: 197, column: 14, scope: !983)
!992 = !DILocation(line: 203, column: 7, scope: !993)
!993 = distinct !DILexicalBlock(scope: !983, file: !58, line: 203, column: 7)
!994 = !DILocation(line: 203, column: 25, scope: !993)
!995 = !DILocation(line: 203, column: 29, scope: !993)
!996 = !DILocation(line: 203, column: 41, scope: !993)
!997 = !DILocation(line: 203, column: 7, scope: !983)
!998 = !DILocation(line: 207, column: 12, scope: !999)
!999 = distinct !DILexicalBlock(scope: !993, file: !58, line: 204, column: 3)
!1000 = !DILocation(line: 207, column: 5, scope: !999)
!1001 = !DILocation(line: 213, column: 15, scope: !983)
!1002 = !DILocation(line: 213, column: 13, scope: !983)
!1003 = !DILocation(line: 214, column: 76, scope: !983)
!1004 = !DILocation(line: 214, column: 12, scope: !983)
!1005 = !DILocation(line: 214, column: 10, scope: !983)
!1006 = !DILocation(line: 215, column: 7, scope: !1007)
!1007 = distinct !DILexicalBlock(scope: !983, file: !58, line: 215, column: 7)
!1008 = !DILocation(line: 215, column: 7, scope: !983)
!1009 = !DILocation(line: 219, column: 12, scope: !1010)
!1010 = distinct !DILexicalBlock(scope: !1007, file: !58, line: 216, column: 3)
!1011 = !DILocation(line: 219, column: 5, scope: !1010)
!1012 = !DILocation(line: 245, column: 7, scope: !1013)
!1013 = distinct !DILexicalBlock(scope: !983, file: !58, line: 245, column: 7)
!1014 = !DILocation(line: 245, column: 7, scope: !983)
!1015 = !DILocation(line: 249, column: 12, scope: !1016)
!1016 = distinct !DILexicalBlock(scope: !1013, file: !58, line: 246, column: 3)
!1017 = !DILocation(line: 249, column: 5, scope: !1016)
!1018 = !DILocation(line: 252, column: 3, scope: !983)
!1019 = !DILocation(line: 253, column: 1, scope: !983)
!1020 = distinct !DISubprogram(name: "Demo1AccessKeyUnload", scope: !58, file: !58, line: 265, type: !494, scopeLine: 267, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !707)
!1021 = !DILocalVariable(name: "ImageHandle", arg: 1, scope: !1020, file: !58, line: 266, type: !91)
!1022 = !DILocation(line: 266, column: 19, scope: !1020)
!1023 = !DILocalVariable(name: "Status", scope: !1020, file: !58, line: 268, type: !123)
!1024 = !DILocation(line: 268, column: 14, scope: !1020)
!1025 = !DILocation(line: 274, column: 12, scope: !1020)
!1026 = !DILocation(line: 274, column: 3, scope: !1020)
!1027 = !DILocation(line: 275, column: 10, scope: !1020)
!1028 = !DILocation(line: 275, column: 3, scope: !1020)
!1029 = distinct !DISubprogram(name: "Demo1BobDataProvider", scope: !3, file: !3, line: 325, type: !659, scopeLine: 331, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !707)
!1030 = !DILocalVariable(name: "This", arg: 1, scope: !1029, file: !3, line: 326, type: !661)
!1031 = !DILocation(line: 326, column: 30, scope: !1029)
!1032 = !DILocalVariable(name: "Address", arg: 2, scope: !1029, file: !3, line: 327, type: !52)
!1033 = !DILocation(line: 327, column: 30, scope: !1029)
!1034 = !DILocalVariable(name: "Dest", arg: 3, scope: !1029, file: !3, line: 328, type: !269)
!1035 = !DILocation(line: 328, column: 31, scope: !1029)
!1036 = !DILocalVariable(name: "Size", arg: 4, scope: !1029, file: !3, line: 329, type: !70)
!1037 = !DILocation(line: 329, column: 29, scope: !1029)
!1038 = !DILocalVariable(name: "IAddress", scope: !1029, file: !3, line: 334, type: !70)
!1039 = !DILocation(line: 334, column: 9, scope: !1029)
!1040 = !DILocation(line: 334, column: 27, scope: !1029)
!1041 = !DILocation(line: 334, column: 20, scope: !1029)
!1042 = !DILocation(line: 336, column: 44, scope: !1029)
!1043 = !DILocation(line: 336, column: 16, scope: !1029)
!1044 = !DILocation(line: 336, column: 14, scope: !1029)
!1045 = !DILocation(line: 337, column: 22, scope: !1029)
!1046 = !DILocation(line: 337, column: 3, scope: !1029)
!1047 = !DILocalVariable(name: "IBase", scope: !1029, file: !3, line: 339, type: !70)
!1048 = !DILocation(line: 339, column: 9, scope: !1029)
!1049 = !DILocation(line: 339, column: 24, scope: !1029)
!1050 = !DILocation(line: 339, column: 36, scope: !1029)
!1051 = !DILocation(line: 339, column: 17, scope: !1029)
!1052 = !DILocalVariable(name: "Storage", scope: !1029, file: !3, line: 340, type: !52)
!1053 = !DILocation(line: 340, column: 9, scope: !1029)
!1054 = !DILocation(line: 342, column: 7, scope: !1055)
!1055 = distinct !DILexicalBlock(scope: !1029, file: !3, line: 342, column: 7)
!1056 = !DILocation(line: 342, column: 12, scope: !1055)
!1057 = !DILocation(line: 342, column: 7, scope: !1029)
!1058 = !DILocation(line: 343, column: 5, scope: !1059)
!1059 = distinct !DILexicalBlock(scope: !1055, file: !3, line: 342, column: 22)
!1060 = !DILocation(line: 346, column: 8, scope: !1061)
!1061 = distinct !DILexicalBlock(scope: !1029, file: !3, line: 346, column: 8)
!1062 = !DILocation(line: 346, column: 19, scope: !1061)
!1063 = !DILocation(line: 346, column: 17, scope: !1061)
!1064 = !DILocation(line: 346, column: 8, scope: !1029)
!1065 = !DILocation(line: 347, column: 5, scope: !1066)
!1066 = distinct !DILexicalBlock(scope: !1061, file: !3, line: 346, column: 27)
!1067 = !DILocation(line: 351, column: 8, scope: !1068)
!1068 = distinct !DILexicalBlock(scope: !1029, file: !3, line: 351, column: 8)
!1069 = !DILocation(line: 351, column: 16, scope: !1068)
!1070 = !DILocation(line: 351, column: 28, scope: !1068)
!1071 = !DILocation(line: 351, column: 14, scope: !1068)
!1072 = !DILocation(line: 351, column: 40, scope: !1068)
!1073 = !DILocation(line: 351, column: 51, scope: !1068)
!1074 = !DILocation(line: 351, column: 49, scope: !1068)
!1075 = !DILocation(line: 351, column: 38, scope: !1068)
!1076 = !DILocation(line: 351, column: 8, scope: !1029)
!1077 = !DILocation(line: 352, column: 5, scope: !1078)
!1078 = distinct !DILexicalBlock(scope: !1068, file: !3, line: 351, column: 58)
!1079 = !DILocation(line: 355, column: 27, scope: !1029)
!1080 = !DILocation(line: 355, column: 20, scope: !1029)
!1081 = !DILocation(line: 355, column: 11, scope: !1029)
!1082 = !DILocation(line: 357, column: 8, scope: !1083)
!1083 = distinct !DILexicalBlock(scope: !1029, file: !3, line: 357, column: 8)
!1084 = !DILocation(line: 357, column: 16, scope: !1083)
!1085 = !DILocation(line: 357, column: 8, scope: !1029)
!1086 = !DILocation(line: 358, column: 5, scope: !1087)
!1087 = distinct !DILexicalBlock(scope: !1083, file: !3, line: 357, column: 26)
!1088 = !DILocation(line: 361, column: 11, scope: !1029)
!1089 = !DILocation(line: 361, column: 20, scope: !1029)
!1090 = !DILocation(line: 361, column: 29, scope: !1029)
!1091 = !DILocation(line: 361, column: 3, scope: !1029)
!1092 = !DILocation(line: 363, column: 11, scope: !1029)
!1093 = !DILocation(line: 363, column: 4, scope: !1029)
!1094 = !DILocation(line: 363, column: 9, scope: !1029)
!1095 = !DILocation(line: 365, column: 3, scope: !1029)
!1096 = !DILocation(line: 366, column: 1, scope: !1029)
!1097 = distinct !DISubprogram(name: "Demo1BobInit", scope: !3, file: !3, line: 164, type: !984, scopeLine: 168, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !707)
!1098 = !DILocalVariable(name: "ImageHandle", arg: 1, scope: !1097, file: !3, line: 165, type: !91)
!1099 = !DILocation(line: 165, column: 24, scope: !1097)
!1100 = !DILocalVariable(name: "SystemTable", arg: 2, scope: !1097, file: !3, line: 166, type: !93)
!1101 = !DILocation(line: 166, column: 25, scope: !1097)
!1102 = !DILocalVariable(name: "Status", scope: !1097, file: !3, line: 169, type: !123)
!1103 = !DILocation(line: 169, column: 21, scope: !1097)
!1104 = !DILocalVariable(name: "Mode", scope: !1097, file: !3, line: 170, type: !70)
!1105 = !DILocation(line: 170, column: 21, scope: !1097)
!1106 = !DILocalVariable(name: "BufferSize", scope: !1097, file: !3, line: 171, type: !70)
!1107 = !DILocation(line: 171, column: 21, scope: !1097)
!1108 = !DILocation(line: 187, column: 7, scope: !1109)
!1109 = distinct !DILexicalBlock(scope: !1097, file: !3, line: 187, column: 7)
!1110 = !DILocation(line: 187, column: 26, scope: !1109)
!1111 = !DILocation(line: 187, column: 30, scope: !1109)
!1112 = !DILocation(line: 187, column: 48, scope: !1109)
!1113 = !DILocation(line: 187, column: 7, scope: !1097)
!1114 = !DILocation(line: 188, column: 5, scope: !1115)
!1115 = distinct !DILexicalBlock(scope: !1109, file: !3, line: 187, column: 58)
!1116 = !DILocation(line: 188, column: 5, scope: !1117)
!1117 = distinct !DILexicalBlock(scope: !1118, file: !3, line: 188, column: 5)
!1118 = distinct !DILexicalBlock(scope: !1115, file: !3, line: 188, column: 5)
!1119 = !DILocation(line: 188, column: 5, scope: !1118)
!1120 = !DILocation(line: 188, column: 5, scope: !1121)
!1121 = distinct !DILexicalBlock(scope: !1117, file: !3, line: 188, column: 5)
!1122 = !DILocation(line: 188, column: 5, scope: !1123)
!1123 = distinct !DILexicalBlock(scope: !1124, file: !3, line: 188, column: 5)
!1124 = distinct !DILexicalBlock(scope: !1121, file: !3, line: 188, column: 5)
!1125 = !DILocation(line: 188, column: 5, scope: !1124)
!1126 = !DILocation(line: 188, column: 5, scope: !1127)
!1127 = distinct !DILexicalBlock(scope: !1123, file: !3, line: 188, column: 5)
!1128 = !DILocation(line: 190, column: 12, scope: !1115)
!1129 = !DILocation(line: 190, column: 5, scope: !1115)
!1130 = !DILocation(line: 196, column: 12, scope: !1097)
!1131 = !DILocation(line: 196, column: 31, scope: !1097)
!1132 = !DILocation(line: 196, column: 10, scope: !1097)
!1133 = !DILocation(line: 197, column: 7, scope: !1134)
!1134 = distinct !DILexicalBlock(scope: !1097, file: !3, line: 197, column: 7)
!1135 = !DILocation(line: 197, column: 7, scope: !1097)
!1136 = !DILocation(line: 198, column: 5, scope: !1137)
!1137 = distinct !DILexicalBlock(scope: !1134, file: !3, line: 197, column: 27)
!1138 = !DILocation(line: 198, column: 5, scope: !1139)
!1139 = distinct !DILexicalBlock(scope: !1140, file: !3, line: 198, column: 5)
!1140 = distinct !DILexicalBlock(scope: !1137, file: !3, line: 198, column: 5)
!1141 = !DILocation(line: 198, column: 5, scope: !1140)
!1142 = !DILocation(line: 198, column: 5, scope: !1143)
!1143 = distinct !DILexicalBlock(scope: !1139, file: !3, line: 198, column: 5)
!1144 = !DILocation(line: 198, column: 5, scope: !1145)
!1145 = distinct !DILexicalBlock(scope: !1146, file: !3, line: 198, column: 5)
!1146 = distinct !DILexicalBlock(scope: !1143, file: !3, line: 198, column: 5)
!1147 = !DILocation(line: 198, column: 5, scope: !1146)
!1148 = !DILocation(line: 198, column: 5, scope: !1149)
!1149 = distinct !DILexicalBlock(scope: !1145, file: !3, line: 198, column: 5)
!1150 = !DILocation(line: 200, column: 12, scope: !1137)
!1151 = !DILocation(line: 200, column: 5, scope: !1137)
!1152 = !DILocation(line: 207, column: 7, scope: !1153)
!1153 = distinct !DILexicalBlock(scope: !1097, file: !3, line: 207, column: 7)
!1154 = !DILocation(line: 207, column: 26, scope: !1153)
!1155 = !DILocation(line: 207, column: 30, scope: !1153)
!1156 = !DILocation(line: 207, column: 44, scope: !1153)
!1157 = !DILocation(line: 207, column: 7, scope: !1097)
!1158 = !DILocation(line: 208, column: 5, scope: !1159)
!1159 = distinct !DILexicalBlock(scope: !1153, file: !3, line: 207, column: 54)
!1160 = !DILocation(line: 208, column: 5, scope: !1161)
!1161 = distinct !DILexicalBlock(scope: !1162, file: !3, line: 208, column: 5)
!1162 = distinct !DILexicalBlock(scope: !1159, file: !3, line: 208, column: 5)
!1163 = !DILocation(line: 208, column: 5, scope: !1162)
!1164 = !DILocation(line: 208, column: 5, scope: !1165)
!1165 = distinct !DILexicalBlock(scope: !1161, file: !3, line: 208, column: 5)
!1166 = !DILocation(line: 208, column: 5, scope: !1167)
!1167 = distinct !DILexicalBlock(scope: !1168, file: !3, line: 208, column: 5)
!1168 = distinct !DILexicalBlock(scope: !1165, file: !3, line: 208, column: 5)
!1169 = !DILocation(line: 208, column: 5, scope: !1168)
!1170 = !DILocation(line: 208, column: 5, scope: !1171)
!1171 = distinct !DILexicalBlock(scope: !1167, file: !3, line: 208, column: 5)
!1172 = !DILocation(line: 210, column: 12, scope: !1159)
!1173 = !DILocation(line: 210, column: 5, scope: !1159)
!1174 = !DILocation(line: 224, column: 7, scope: !1175)
!1175 = distinct !DILexicalBlock(scope: !1097, file: !3, line: 224, column: 7)
!1176 = !DILocation(line: 224, column: 7, scope: !1097)
!1177 = !DILocation(line: 225, column: 5, scope: !1178)
!1178 = distinct !DILexicalBlock(scope: !1175, file: !3, line: 224, column: 27)
!1179 = !DILocation(line: 225, column: 5, scope: !1180)
!1180 = distinct !DILexicalBlock(scope: !1181, file: !3, line: 225, column: 5)
!1181 = distinct !DILexicalBlock(scope: !1178, file: !3, line: 225, column: 5)
!1182 = !DILocation(line: 225, column: 5, scope: !1181)
!1183 = !DILocation(line: 225, column: 5, scope: !1184)
!1184 = distinct !DILexicalBlock(scope: !1180, file: !3, line: 225, column: 5)
!1185 = !DILocation(line: 225, column: 5, scope: !1186)
!1186 = distinct !DILexicalBlock(scope: !1187, file: !3, line: 225, column: 5)
!1187 = distinct !DILexicalBlock(scope: !1184, file: !3, line: 225, column: 5)
!1188 = !DILocation(line: 225, column: 5, scope: !1187)
!1189 = !DILocation(line: 225, column: 5, scope: !1190)
!1190 = distinct !DILexicalBlock(scope: !1186, file: !3, line: 225, column: 5)
!1191 = !DILocation(line: 227, column: 12, scope: !1178)
!1192 = !DILocation(line: 227, column: 5, scope: !1178)
!1193 = !DILocation(line: 233, column: 7, scope: !1194)
!1194 = distinct !DILexicalBlock(scope: !1097, file: !3, line: 233, column: 7)
!1195 = !DILocation(line: 233, column: 12, scope: !1194)
!1196 = !DILocation(line: 233, column: 7, scope: !1097)
!1197 = !DILocation(line: 234, column: 5, scope: !1198)
!1198 = distinct !DILexicalBlock(scope: !1194, file: !3, line: 233, column: 25)
!1199 = !DILocation(line: 234, column: 5, scope: !1200)
!1200 = distinct !DILexicalBlock(scope: !1201, file: !3, line: 234, column: 5)
!1201 = distinct !DILexicalBlock(scope: !1198, file: !3, line: 234, column: 5)
!1202 = !DILocation(line: 234, column: 5, scope: !1201)
!1203 = !DILocation(line: 234, column: 5, scope: !1204)
!1204 = distinct !DILexicalBlock(scope: !1200, file: !3, line: 234, column: 5)
!1205 = !DILocation(line: 234, column: 5, scope: !1206)
!1206 = distinct !DILexicalBlock(scope: !1207, file: !3, line: 234, column: 5)
!1207 = distinct !DILexicalBlock(scope: !1204, file: !3, line: 234, column: 5)
!1208 = !DILocation(line: 234, column: 5, scope: !1207)
!1209 = !DILocation(line: 234, column: 5, scope: !1210)
!1210 = distinct !DILexicalBlock(scope: !1206, file: !3, line: 234, column: 5)
!1211 = !DILocation(line: 236, column: 5, scope: !1198)
!1212 = !DILocation(line: 238, column: 7, scope: !1213)
!1213 = distinct !DILexicalBlock(scope: !1097, file: !3, line: 238, column: 7)
!1214 = !DILocation(line: 238, column: 12, scope: !1213)
!1215 = !DILocation(line: 238, column: 7, scope: !1097)
!1216 = !DILocation(line: 239, column: 5, scope: !1217)
!1217 = distinct !DILexicalBlock(scope: !1213, file: !3, line: 238, column: 26)
!1218 = !DILocation(line: 239, column: 5, scope: !1219)
!1219 = distinct !DILexicalBlock(scope: !1220, file: !3, line: 239, column: 5)
!1220 = distinct !DILexicalBlock(scope: !1217, file: !3, line: 239, column: 5)
!1221 = !DILocation(line: 239, column: 5, scope: !1220)
!1222 = !DILocation(line: 239, column: 5, scope: !1223)
!1223 = distinct !DILexicalBlock(scope: !1219, file: !3, line: 239, column: 5)
!1224 = !DILocation(line: 239, column: 5, scope: !1225)
!1225 = distinct !DILexicalBlock(scope: !1226, file: !3, line: 239, column: 5)
!1226 = distinct !DILexicalBlock(scope: !1223, file: !3, line: 239, column: 5)
!1227 = !DILocation(line: 239, column: 5, scope: !1226)
!1228 = !DILocation(line: 239, column: 5, scope: !1229)
!1229 = distinct !DILexicalBlock(scope: !1225, file: !3, line: 239, column: 5)
!1230 = !DILocation(line: 241, column: 5, scope: !1217)
!1231 = !DILocation(line: 255, column: 7, scope: !1232)
!1232 = distinct !DILexicalBlock(scope: !1097, file: !3, line: 255, column: 7)
!1233 = !DILocation(line: 255, column: 7, scope: !1097)
!1234 = !DILocation(line: 256, column: 5, scope: !1235)
!1235 = distinct !DILexicalBlock(scope: !1232, file: !3, line: 255, column: 27)
!1236 = !DILocation(line: 256, column: 5, scope: !1237)
!1237 = distinct !DILexicalBlock(scope: !1238, file: !3, line: 256, column: 5)
!1238 = distinct !DILexicalBlock(scope: !1235, file: !3, line: 256, column: 5)
!1239 = !DILocation(line: 256, column: 5, scope: !1238)
!1240 = !DILocation(line: 256, column: 5, scope: !1241)
!1241 = distinct !DILexicalBlock(scope: !1237, file: !3, line: 256, column: 5)
!1242 = !DILocation(line: 256, column: 5, scope: !1243)
!1243 = distinct !DILexicalBlock(scope: !1244, file: !3, line: 256, column: 5)
!1244 = distinct !DILexicalBlock(scope: !1241, file: !3, line: 256, column: 5)
!1245 = !DILocation(line: 256, column: 5, scope: !1244)
!1246 = !DILocation(line: 256, column: 5, scope: !1247)
!1247 = distinct !DILexicalBlock(scope: !1243, file: !3, line: 256, column: 5)
!1248 = !DILocation(line: 258, column: 12, scope: !1235)
!1249 = !DILocation(line: 258, column: 5, scope: !1235)
!1250 = !DILocation(line: 281, column: 7, scope: !1251)
!1251 = distinct !DILexicalBlock(scope: !1097, file: !3, line: 281, column: 7)
!1252 = !DILocation(line: 281, column: 7, scope: !1097)
!1253 = !DILocation(line: 282, column: 12, scope: !1254)
!1254 = distinct !DILexicalBlock(scope: !1251, file: !3, line: 281, column: 27)
!1255 = !DILocation(line: 282, column: 5, scope: !1254)
!1256 = !DILocation(line: 285, column: 3, scope: !1097)
!1257 = !DILocation(line: 286, column: 1, scope: !1097)
!1258 = distinct !DISubprogram(name: "Demo1BobUnload", scope: !3, file: !3, line: 298, type: !494, scopeLine: 301, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !707)
!1259 = !DILocalVariable(name: "ImageHandle", arg: 1, scope: !1258, file: !3, line: 299, type: !91)
!1260 = !DILocation(line: 299, column: 18, scope: !1258)
!1261 = !DILocalVariable(name: "Status", scope: !1258, file: !3, line: 302, type: !123)
!1262 = !DILocation(line: 302, column: 14, scope: !1258)
!1263 = !DILocation(line: 308, column: 10, scope: !1258)
!1264 = !DILocation(line: 308, column: 3, scope: !1258)
!1265 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 369, type: !1266, scopeLine: 369, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !707)
!1266 = !DISubroutineType(types: !1267)
!1267 = !{!189}
!1268 = !DILocalVariable(name: "Address", scope: !1265, file: !3, line: 370, type: !162)
!1269 = !DILocation(line: 370, column: 12, scope: !1265)
!1270 = !DILocalVariable(name: "Size", scope: !1265, file: !3, line: 371, type: !70)
!1271 = !DILocation(line: 371, column: 11, scope: !1265)
!1272 = !DILocalVariable(name: "dest", scope: !1265, file: !3, line: 372, type: !303)
!1273 = !DILocation(line: 372, column: 23, scope: !1265)
!1274 = !DILocation(line: 372, column: 29, scope: !1265)
!1275 = !DILocation(line: 373, column: 24, scope: !1265)
!1276 = !DILocation(line: 373, column: 5, scope: !1265)
!1277 = !DILocation(line: 375, column: 52, scope: !1278)
!1278 = distinct !DILexicalBlock(scope: !1265, file: !3, line: 375, column: 8)
!1279 = !DILocation(line: 375, column: 68, scope: !1278)
!1280 = !DILocation(line: 375, column: 8, scope: !1278)
!1281 = !DILocation(line: 375, column: 74, scope: !1278)
!1282 = !DILocation(line: 375, column: 8, scope: !1265)
!1283 = !DILocation(line: 376, column: 7, scope: !1284)
!1284 = distinct !DILexicalBlock(scope: !1278, file: !3, line: 375, column: 89)
!1285 = !DILocation(line: 376, column: 13, scope: !1284)
!1286 = !DILocation(line: 376, column: 33, scope: !1284)
!1287 = !DILocation(line: 377, column: 7, scope: !1284)
!1288 = !DILocation(line: 378, column: 5, scope: !1284)
!1289 = !DILocation(line: 381, column: 3, scope: !1265)
!1290 = distinct !DISubprogram(name: "memcpy", scope: !1291, file: !1291, line: 12, type: !1292, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !696, retainedNodes: !707)
!1291 = !DIFile(filename: "klee/runtime/Freestanding/memcpy.c", directory: "/home/hira/Research", checksumkind: CSK_MD5, checksum: "8fb9a7164e167db005d7d002570068bc")
!1292 = !DISubroutineType(types: !1293)
!1293 = !{!52, !52, !598, !1294}
!1294 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !1295, line: 46, baseType: !1296)
!1295 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!1296 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!1297 = !DILocalVariable(name: "destaddr", arg: 1, scope: !1290, file: !1291, line: 12, type: !52)
!1298 = !DILocation(line: 12, column: 20, scope: !1290)
!1299 = !DILocalVariable(name: "srcaddr", arg: 2, scope: !1290, file: !1291, line: 12, type: !598)
!1300 = !DILocation(line: 12, column: 42, scope: !1290)
!1301 = !DILocalVariable(name: "len", arg: 3, scope: !1290, file: !1291, line: 12, type: !1294)
!1302 = !DILocation(line: 12, column: 58, scope: !1290)
!1303 = !DILocalVariable(name: "dest", scope: !1290, file: !1291, line: 13, type: !1304)
!1304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1305, size: 64)
!1305 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!1306 = !DILocation(line: 13, column: 9, scope: !1290)
!1307 = !DILocation(line: 13, column: 16, scope: !1290)
!1308 = !DILocalVariable(name: "src", scope: !1290, file: !1291, line: 14, type: !1309)
!1309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1310, size: 64)
!1310 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1305)
!1311 = !DILocation(line: 14, column: 15, scope: !1290)
!1312 = !DILocation(line: 14, column: 21, scope: !1290)
!1313 = !DILocation(line: 16, column: 3, scope: !1290)
!1314 = !DILocation(line: 16, column: 13, scope: !1290)
!1315 = !DILocation(line: 16, column: 16, scope: !1290)
!1316 = !DILocation(line: 17, column: 19, scope: !1290)
!1317 = !DILocation(line: 17, column: 15, scope: !1290)
!1318 = !DILocation(line: 17, column: 10, scope: !1290)
!1319 = !DILocation(line: 17, column: 13, scope: !1290)
!1320 = distinct !{!1320, !1313, !1316, !844}
!1321 = !DILocation(line: 18, column: 10, scope: !1290)
!1322 = !DILocation(line: 18, column: 3, scope: !1290)
