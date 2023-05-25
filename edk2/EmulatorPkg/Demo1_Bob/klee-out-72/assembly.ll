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
@RngProtocol = hidden global %struct._EFI_RNG_PROTOCOL* null, align 8, !dbg !628
@masterKey = hidden global %struct._DEMO1_ACCESS_KEY* null, align 8, !dbg !647
@accessKeyLock = hidden global i8 0, align 1, !dbg !649
@head = hidden global %struct._LINK* null, align 8, !dbg !651
@last = hidden global %struct._LINK* null, align 8, !dbg !653
@keychain = hidden global %struct._LINK* null, align 8, !dbg !655
@.str = private unnamed_addr constant [19 x i8] c"Demo1_Access_Key.c\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"link != ((void*)0)\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"head\00", align 1
@gDemo1_Bob_Protocol = hidden global { i64 (%struct._Demo1_Bob_PROTOCOL*, i8*, i8**, i64)* } { i64 (%struct._Demo1_Bob_PROTOCOL*, i8*, i8**, i64)* @Demo1BobDataProvider }, align 8, !dbg !657
@AccessKeyProtocol = hidden global %struct._Demo1_Access_Key_PROTOCOL* null, align 8, !dbg !669
@Demo1_Bob_PeriodicTimer = hidden global i8* null, align 8, !dbg !682
@DataToProvide = hidden global i64 0, align 8, !dbg !684
@gLoadImage = hidden global %struct.EFI_LOADED_IMAGE_PROTOCOL* null, align 8, !dbg !686
@.str.3 = private unnamed_addr constant [55 x i8] c"%a: Could not locate Access Key protocol, Status = %r\0A\00", align 1
@__FUNCTION__.Demo1BobInit = private unnamed_addr constant [13 x i8] c"Demo1BobInit\00", align 1
@bobKey = hidden global %struct._DEMO1_ACCESS_KEY zeroinitializer, align 8, !dbg !701
@.str.4 = private unnamed_addr constant [41 x i8] c"%a: Could not generate key, Status = %r\0A\00", align 1
@AliceProtocol = hidden global %struct._Demo1_Alice_PROTOCOL* null, align 8, !dbg !688
@.str.5 = private unnamed_addr constant [50 x i8] c"%a: Could not locate Alice protocol, Status = %r\0A\00", align 1
@.str.6 = private unnamed_addr constant [48 x i8] c"%a: variable '%s' could not be read - bailing!\0A\00", align 1
@.str.7 = private unnamed_addr constant [11 x i32] [i32 65, i32 108, i32 105, i32 99, i32 101, i32 95, i32 77, i32 111, i32 100, i32 101, i32 0], align 4
@.str.8 = private unnamed_addr constant [40 x i8] c"%a: Alice is already running, quitting\0A\00", align 1
@.str.9 = private unnamed_addr constant [43 x i8] c"%a: Alice returned invalid mode, quitting\0A\00", align 1
@.str.10 = private unnamed_addr constant [47 x i8] c"%a: Could not create event timer, Status = %r\0A\00", align 1
@.str.11 = private unnamed_addr constant [11 x i8] c"gLoadImage\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"dest\00", align 1
@.str.13 = private unnamed_addr constant [81 x i8] c"Demo1BobDataProvider(NULL, (VOID *)address, (VOID **)&dest, size) != EFI_SUCCESS\00", align 1
@.str.14 = private unnamed_addr constant [12 x i8] c"Demo1_Bob.c\00", align 1
@__PRETTY_FUNCTION__.read_through_Demo1BobDataProvider = private unnamed_addr constant [47 x i8] c"void read_through_Demo1BobDataProvider(void *)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define hidden i64 @Demo1GenerateAccessKey(%struct._Demo1_Access_Key_PROTOCOL* noundef %0, i8* noundef %1, i8 noundef zeroext %2, %struct._DEMO1_ACCESS_KEY* noundef %3) #0 !dbg !711 {
  %5 = alloca i64, align 8
  %6 = alloca %struct._Demo1_Access_Key_PROTOCOL*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8, align 1
  %9 = alloca %struct._DEMO1_ACCESS_KEY*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct._Demo1_Access_Key_PROTOCOL* %0, %struct._Demo1_Access_Key_PROTOCOL** %6, align 8
  call void @llvm.dbg.declare(metadata %struct._Demo1_Access_Key_PROTOCOL** %6, metadata !713, metadata !DIExpression()), !dbg !714
  store i8* %1, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !715, metadata !DIExpression()), !dbg !716
  store i8 %2, i8* %8, align 1
  call void @llvm.dbg.declare(metadata i8* %8, metadata !717, metadata !DIExpression()), !dbg !718
  store %struct._DEMO1_ACCESS_KEY* %3, %struct._DEMO1_ACCESS_KEY** %9, align 8
  call void @llvm.dbg.declare(metadata %struct._DEMO1_ACCESS_KEY** %9, metadata !719, metadata !DIExpression()), !dbg !720
  call void @llvm.dbg.declare(metadata i64* %10, metadata !721, metadata !DIExpression()), !dbg !722
  store i64 0, i64* %10, align 8, !dbg !722
  call void @llvm.dbg.declare(metadata i64* %11, metadata !723, metadata !DIExpression()), !dbg !724
  store i64 0, i64* %11, align 8, !dbg !724
  %12 = load %struct._DEMO1_ACCESS_KEY*, %struct._DEMO1_ACCESS_KEY** %9, align 8, !dbg !725
  %13 = icmp eq %struct._DEMO1_ACCESS_KEY* %12, null, !dbg !727
  br i1 %13, label %14, label %15, !dbg !728

14:                                               ; preds = %4
  store i64 -9223372036854775806, i64* %5, align 8, !dbg !729
  br label %52, !dbg !729

15:                                               ; preds = %4
  %16 = load i8, i8* @accessKeyLock, align 1, !dbg !731
  %17 = zext i8 %16 to i32, !dbg !731
  %18 = icmp eq i32 %17, 1, !dbg !733
  br i1 %18, label %19, label %20, !dbg !734

19:                                               ; preds = %15
  store i64 -9223372036854775800, i64* %5, align 8, !dbg !735
  br label %52, !dbg !735

20:                                               ; preds = %15
  %21 = load %struct._EFI_RNG_PROTOCOL*, %struct._EFI_RNG_PROTOCOL** @RngProtocol, align 8, !dbg !737
  %22 = getelementptr inbounds %struct._EFI_RNG_PROTOCOL, %struct._EFI_RNG_PROTOCOL* %21, i32 0, i32 1, !dbg !738
  %23 = load i64 (%struct._EFI_RNG_PROTOCOL*, %struct.GUID*, i64, i8*)*, i64 (%struct._EFI_RNG_PROTOCOL*, %struct.GUID*, i64, i8*)** %22, align 8, !dbg !738
  %24 = load %struct._EFI_RNG_PROTOCOL*, %struct._EFI_RNG_PROTOCOL** @RngProtocol, align 8, !dbg !739
  %25 = load %struct._DEMO1_ACCESS_KEY*, %struct._DEMO1_ACCESS_KEY** %9, align 8, !dbg !740
  %26 = getelementptr inbounds %struct._DEMO1_ACCESS_KEY, %struct._DEMO1_ACCESS_KEY* %25, i32 0, i32 0, !dbg !741
  %27 = bitcast [2 x i64]* %26 to i8*, !dbg !742
  %28 = call i64 %23(%struct._EFI_RNG_PROTOCOL* noundef %24, %struct.GUID* noundef null, i64 noundef 16, i8* noundef %27), !dbg !737
  store i64 %28, i64* %10, align 8, !dbg !743
  %29 = load i64, i64* %10, align 8, !dbg !744
  %30 = icmp slt i64 %29, 0, !dbg !744
  br i1 %30, label %31, label %33, !dbg !746

31:                                               ; preds = %20
  %32 = load i64, i64* %10, align 8, !dbg !747
  store i64 %32, i64* %5, align 8, !dbg !749
  br label %52, !dbg !749

33:                                               ; preds = %20
  %34 = load i8, i8* %8, align 1, !dbg !750
  %35 = icmp ne i8 %34, 0, !dbg !750
  br i1 %35, label %36, label %37, !dbg !752

36:                                               ; preds = %33
  store i64 -2395670108176482799, i64* %11, align 8, !dbg !753
  br label %38, !dbg !755

37:                                               ; preds = %33
  store i64 -2395670108176510803, i64* %11, align 8, !dbg !756
  br label %38

38:                                               ; preds = %37, %36
  %39 = load i64, i64* %11, align 8, !dbg !758
  %40 = load %struct._DEMO1_ACCESS_KEY*, %struct._DEMO1_ACCESS_KEY** %9, align 8, !dbg !759
  %41 = getelementptr inbounds %struct._DEMO1_ACCESS_KEY, %struct._DEMO1_ACCESS_KEY* %40, i32 0, i32 0, !dbg !760
  %42 = getelementptr inbounds [2 x i64], [2 x i64]* %41, i64 0, i64 1, !dbg !759
  store i64 %39, i64* %42, align 8, !dbg !761
  %43 = load %struct._DEMO1_ACCESS_KEY*, %struct._DEMO1_ACCESS_KEY** %9, align 8, !dbg !762
  %44 = load %struct._DEMO1_ACCESS_KEY*, %struct._DEMO1_ACCESS_KEY** @masterKey, align 8, !dbg !764
  %45 = icmp ne %struct._DEMO1_ACCESS_KEY* %43, %44, !dbg !765
  br i1 %45, label %46, label %48, !dbg !766

46:                                               ; preds = %38
  %47 = load %struct._DEMO1_ACCESS_KEY*, %struct._DEMO1_ACCESS_KEY** %9, align 8, !dbg !767
  call void @InsertLast(%struct._DEMO1_ACCESS_KEY* noundef %47), !dbg !769
  br label %50, !dbg !770

48:                                               ; preds = %38
  %49 = load %struct._DEMO1_ACCESS_KEY*, %struct._DEMO1_ACCESS_KEY** %9, align 8, !dbg !771
  call void @InsertFirst(%struct._DEMO1_ACCESS_KEY* noundef %49), !dbg !773
  br label %50

50:                                               ; preds = %48, %46
  %51 = load i64, i64* %10, align 8, !dbg !774
  store i64 %51, i64* %5, align 8, !dbg !775
  br label %52, !dbg !775

52:                                               ; preds = %50, %31, %19, %14
  %53 = load i64, i64* %5, align 8, !dbg !776
  ret i64 %53, !dbg !776
}

; Function Attrs: noinline nounwind optnone uwtable
define hidden i64 @Demo1ValidateAccessKey(%struct._Demo1_Access_Key_PROTOCOL* noundef %0, i8* noundef %1, %struct._DEMO1_ACCESS_KEY* noundef %2, i8 noundef zeroext %3, i8* noundef %4) #0 !dbg !777 {
  %6 = alloca i64, align 8
  %7 = alloca %struct._Demo1_Access_Key_PROTOCOL*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct._DEMO1_ACCESS_KEY*, align 8
  %10 = alloca i8, align 1
  %11 = alloca i8*, align 8
  store %struct._Demo1_Access_Key_PROTOCOL* %0, %struct._Demo1_Access_Key_PROTOCOL** %7, align 8
  call void @llvm.dbg.declare(metadata %struct._Demo1_Access_Key_PROTOCOL** %7, metadata !780, metadata !DIExpression()), !dbg !781
  store i8* %1, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !782, metadata !DIExpression()), !dbg !783
  store %struct._DEMO1_ACCESS_KEY* %2, %struct._DEMO1_ACCESS_KEY** %9, align 8
  call void @llvm.dbg.declare(metadata %struct._DEMO1_ACCESS_KEY** %9, metadata !784, metadata !DIExpression()), !dbg !785
  store i8 %3, i8* %10, align 1
  call void @llvm.dbg.declare(metadata i8* %10, metadata !786, metadata !DIExpression()), !dbg !787
  store i8* %4, i8** %11, align 8
  call void @llvm.dbg.declare(metadata i8** %11, metadata !788, metadata !DIExpression()), !dbg !789
  %12 = load i8*, i8** %11, align 8, !dbg !790
  %13 = icmp eq i8* %12, null, !dbg !792
  br i1 %13, label %14, label %15, !dbg !793

14:                                               ; preds = %5
  store i64 -9223372036854775806, i64* %6, align 8, !dbg !794
  br label %35, !dbg !794

15:                                               ; preds = %5
  %16 = load i8*, i8** %11, align 8, !dbg !796
  store i8 0, i8* %16, align 1, !dbg !797
  %17 = load %struct._DEMO1_ACCESS_KEY*, %struct._DEMO1_ACCESS_KEY** %9, align 8, !dbg !798
  %18 = icmp eq %struct._DEMO1_ACCESS_KEY* %17, null, !dbg !800
  br i1 %18, label %19, label %20, !dbg !801

19:                                               ; preds = %15
  store i64 -9223372036854775806, i64* %6, align 8, !dbg !802
  br label %35, !dbg !802

20:                                               ; preds = %15
  %21 = load i8, i8* %10, align 1, !dbg !804
  %22 = zext i8 %21 to i32, !dbg !804
  %23 = icmp ne i32 %22, 0, !dbg !804
  br i1 %23, label %24, label %31, !dbg !806

24:                                               ; preds = %20
  %25 = load %struct._DEMO1_ACCESS_KEY*, %struct._DEMO1_ACCESS_KEY** %9, align 8, !dbg !807
  %26 = getelementptr inbounds %struct._DEMO1_ACCESS_KEY, %struct._DEMO1_ACCESS_KEY* %25, i32 0, i32 0, !dbg !808
  %27 = getelementptr inbounds [2 x i64], [2 x i64]* %26, i64 0, i64 1, !dbg !807
  %28 = load i64, i64* %27, align 8, !dbg !807
  %29 = icmp eq i64 %28, -2395670108176510803, !dbg !809
  br i1 %29, label %30, label %31, !dbg !810

30:                                               ; preds = %24
  store i64 -9223372036854775806, i64* %6, align 8, !dbg !811
  br label %35, !dbg !811

31:                                               ; preds = %24, %20
  %32 = load %struct._DEMO1_ACCESS_KEY*, %struct._DEMO1_ACCESS_KEY** %9, align 8, !dbg !813
  %33 = call zeroext i8 @DoesKeyExist(%struct._DEMO1_ACCESS_KEY* noundef %32), !dbg !814
  %34 = load i8*, i8** %11, align 8, !dbg !815
  store i8 %33, i8* %34, align 1, !dbg !816
  store i64 0, i64* %6, align 8, !dbg !817
  br label %35, !dbg !817

35:                                               ; preds = %31, %30, %19, %14
  %36 = load i64, i64* %6, align 8, !dbg !818
  ret i64 %36, !dbg !818
}

; Function Attrs: noinline nounwind optnone uwtable
define hidden zeroext i8 @IsKeychainEmpty() #0 !dbg !819 {
  %1 = load %struct._LINK*, %struct._LINK** @head, align 8, !dbg !822
  %2 = icmp eq %struct._LINK* %1, null, !dbg !823
  %3 = zext i1 %2 to i32, !dbg !823
  %4 = trunc i32 %3 to i8, !dbg !822
  ret i8 %4, !dbg !824
}

; Function Attrs: noinline nounwind optnone uwtable
define hidden i64 @KeychainLength() #0 !dbg !825 {
  %1 = alloca i64, align 8
  %2 = alloca %struct._LINK*, align 8
  call void @llvm.dbg.declare(metadata i64* %1, metadata !828, metadata !DIExpression()), !dbg !829
  store i64 0, i64* %1, align 8, !dbg !829
  call void @llvm.dbg.declare(metadata %struct._LINK** %2, metadata !830, metadata !DIExpression()), !dbg !831
  %3 = load %struct._LINK*, %struct._LINK** @head, align 8, !dbg !832
  store %struct._LINK* %3, %struct._LINK** %2, align 8, !dbg !834
  br label %4, !dbg !835

4:                                                ; preds = %10, %0
  %5 = load %struct._LINK*, %struct._LINK** %2, align 8, !dbg !836
  %6 = icmp ne %struct._LINK* %5, null, !dbg !838
  br i1 %6, label %7, label %14, !dbg !839

7:                                                ; preds = %4
  %8 = load i64, i64* %1, align 8, !dbg !840
  %9 = add i64 %8, 1, !dbg !840
  store i64 %9, i64* %1, align 8, !dbg !840
  br label %10, !dbg !842

10:                                               ; preds = %7
  %11 = load %struct._LINK*, %struct._LINK** %2, align 8, !dbg !843
  %12 = getelementptr inbounds %struct._LINK, %struct._LINK* %11, i32 0, i32 1, !dbg !844
  %13 = load %struct._LINK*, %struct._LINK** %12, align 8, !dbg !844
  store %struct._LINK* %13, %struct._LINK** %2, align 8, !dbg !845
  br label %4, !dbg !846, !llvm.loop !847

14:                                               ; preds = %4
  %15 = load i64, i64* %1, align 8, !dbg !850
  ret i64 %15, !dbg !851
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind optnone uwtable
define hidden void @InsertFirst(%struct._DEMO1_ACCESS_KEY* noundef %0) #0 !dbg !852 {
  %2 = alloca %struct._DEMO1_ACCESS_KEY*, align 8
  %3 = alloca %struct._LINK*, align 8
  store %struct._DEMO1_ACCESS_KEY* %0, %struct._DEMO1_ACCESS_KEY** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._DEMO1_ACCESS_KEY** %2, metadata !855, metadata !DIExpression()), !dbg !856
  call void @llvm.dbg.declare(metadata %struct._LINK** %3, metadata !857, metadata !DIExpression()), !dbg !858
  %4 = call i8* @AllocatePool(i64 noundef 32), !dbg !859
  %5 = bitcast i8* %4 to %struct._LINK*, !dbg !859
  store %struct._LINK* %5, %struct._LINK** %3, align 8, !dbg !858
  br label %6, !dbg !860

6:                                                ; preds = %1
  %7 = call zeroext i8 @DebugAssertEnabled(), !dbg !861
  %8 = icmp ne i8 %7, 0, !dbg !861
  br i1 %8, label %9, label %14, !dbg !864

9:                                                ; preds = %6
  %10 = load %struct._LINK*, %struct._LINK** %3, align 8, !dbg !865
  %11 = icmp ne %struct._LINK* %10, null, !dbg !865
  br i1 %11, label %13, label %12, !dbg !868

12:                                               ; preds = %9
  call void @DebugAssert(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i64 noundef 88, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0)), !dbg !869
  br label %13, !dbg !869

13:                                               ; preds = %12, %9
  br label %14, !dbg !868

14:                                               ; preds = %13, %6
  br label %15, !dbg !864

15:                                               ; preds = %14
  %16 = load %struct._LINK*, %struct._LINK** %3, align 8, !dbg !871
  %17 = getelementptr inbounds %struct._LINK, %struct._LINK* %16, i32 0, i32 0, !dbg !872
  %18 = bitcast %struct._DEMO1_ACCESS_KEY* %17 to i8*, !dbg !873
  %19 = load %struct._DEMO1_ACCESS_KEY*, %struct._DEMO1_ACCESS_KEY** %2, align 8, !dbg !874
  %20 = bitcast %struct._DEMO1_ACCESS_KEY* %19 to i8*, !dbg !874
  %21 = call i8* @CopyMem(i8* noundef %18, i8* noundef %20, i64 noundef 16), !dbg !875
  %22 = call zeroext i8 @IsKeychainEmpty(), !dbg !876
  %23 = icmp ne i8 %22, 0, !dbg !876
  br i1 %23, label %24, label %26, !dbg !878

24:                                               ; preds = %15
  %25 = load %struct._LINK*, %struct._LINK** %3, align 8, !dbg !879
  store %struct._LINK* %25, %struct._LINK** @last, align 8, !dbg !881
  br label %30, !dbg !882

26:                                               ; preds = %15
  %27 = load %struct._LINK*, %struct._LINK** %3, align 8, !dbg !883
  %28 = load %struct._LINK*, %struct._LINK** @head, align 8, !dbg !885
  %29 = getelementptr inbounds %struct._LINK, %struct._LINK* %28, i32 0, i32 2, !dbg !886
  store %struct._LINK* %27, %struct._LINK** %29, align 8, !dbg !887
  br label %30

30:                                               ; preds = %26, %24
  %31 = load %struct._LINK*, %struct._LINK** %3, align 8, !dbg !888
  %32 = getelementptr inbounds %struct._LINK, %struct._LINK* %31, i32 0, i32 2, !dbg !889
  store %struct._LINK* null, %struct._LINK** %32, align 8, !dbg !890
  %33 = load %struct._LINK*, %struct._LINK** @head, align 8, !dbg !891
  %34 = load %struct._LINK*, %struct._LINK** %3, align 8, !dbg !892
  %35 = getelementptr inbounds %struct._LINK, %struct._LINK* %34, i32 0, i32 1, !dbg !893
  store %struct._LINK* %33, %struct._LINK** %35, align 8, !dbg !894
  %36 = load %struct._LINK*, %struct._LINK** %3, align 8, !dbg !895
  store %struct._LINK* %36, %struct._LINK** @head, align 8, !dbg !896
  ret void, !dbg !897
}

declare hidden i8* @AllocatePool(i64 noundef) #2

declare hidden zeroext i8 @DebugAssertEnabled() #2

declare hidden void @DebugAssert(i8* noundef, i64 noundef, i8* noundef) #2

declare hidden i8* @CopyMem(i8* noundef, i8* noundef, i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define hidden void @InsertLast(%struct._DEMO1_ACCESS_KEY* noundef %0) #0 !dbg !898 {
  %2 = alloca %struct._DEMO1_ACCESS_KEY*, align 8
  %3 = alloca %struct._LINK*, align 8
  store %struct._DEMO1_ACCESS_KEY* %0, %struct._DEMO1_ACCESS_KEY** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._DEMO1_ACCESS_KEY** %2, metadata !899, metadata !DIExpression()), !dbg !900
  call void @llvm.dbg.declare(metadata %struct._LINK** %3, metadata !901, metadata !DIExpression()), !dbg !902
  %4 = call i8* @AllocatePool(i64 noundef 32), !dbg !903
  %5 = bitcast i8* %4 to %struct._LINK*, !dbg !903
  store %struct._LINK* %5, %struct._LINK** %3, align 8, !dbg !902
  br label %6, !dbg !904

6:                                                ; preds = %1
  %7 = call zeroext i8 @DebugAssertEnabled(), !dbg !905
  %8 = icmp ne i8 %7, 0, !dbg !905
  br i1 %8, label %9, label %14, !dbg !908

9:                                                ; preds = %6
  %10 = load %struct._LINK*, %struct._LINK** %3, align 8, !dbg !909
  %11 = icmp ne %struct._LINK* %10, null, !dbg !909
  br i1 %11, label %13, label %12, !dbg !912

12:                                               ; preds = %9
  call void @DebugAssert(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i64 noundef 115, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0)), !dbg !913
  br label %13, !dbg !913

13:                                               ; preds = %12, %9
  br label %14, !dbg !912

14:                                               ; preds = %13, %6
  br label %15, !dbg !908

15:                                               ; preds = %14
  %16 = load %struct._LINK*, %struct._LINK** %3, align 8, !dbg !915
  %17 = getelementptr inbounds %struct._LINK, %struct._LINK* %16, i32 0, i32 0, !dbg !916
  %18 = bitcast %struct._DEMO1_ACCESS_KEY* %17 to i8*, !dbg !917
  %19 = load %struct._DEMO1_ACCESS_KEY*, %struct._DEMO1_ACCESS_KEY** %2, align 8, !dbg !918
  %20 = bitcast %struct._DEMO1_ACCESS_KEY* %19 to i8*, !dbg !918
  %21 = call i8* @CopyMem(i8* noundef %18, i8* noundef %20, i64 noundef 16), !dbg !919
  %22 = call zeroext i8 @IsKeychainEmpty(), !dbg !920
  %23 = icmp ne i8 %22, 0, !dbg !920
  br i1 %23, label %24, label %26, !dbg !922

24:                                               ; preds = %15
  %25 = load %struct._LINK*, %struct._LINK** %3, align 8, !dbg !923
  store %struct._LINK* %25, %struct._LINK** @last, align 8, !dbg !925
  br label %33, !dbg !926

26:                                               ; preds = %15
  %27 = load %struct._LINK*, %struct._LINK** %3, align 8, !dbg !927
  %28 = load %struct._LINK*, %struct._LINK** @last, align 8, !dbg !929
  %29 = getelementptr inbounds %struct._LINK, %struct._LINK* %28, i32 0, i32 1, !dbg !930
  store %struct._LINK* %27, %struct._LINK** %29, align 8, !dbg !931
  %30 = load %struct._LINK*, %struct._LINK** @last, align 8, !dbg !932
  %31 = load %struct._LINK*, %struct._LINK** %3, align 8, !dbg !933
  %32 = getelementptr inbounds %struct._LINK, %struct._LINK* %31, i32 0, i32 2, !dbg !934
  store %struct._LINK* %30, %struct._LINK** %32, align 8, !dbg !935
  br label %33

33:                                               ; preds = %26, %24
  %34 = load %struct._LINK*, %struct._LINK** %3, align 8, !dbg !936
  %35 = getelementptr inbounds %struct._LINK, %struct._LINK* %34, i32 0, i32 1, !dbg !937
  store %struct._LINK* null, %struct._LINK** %35, align 8, !dbg !938
  %36 = load %struct._LINK*, %struct._LINK** %3, align 8, !dbg !939
  store %struct._LINK* %36, %struct._LINK** @last, align 8, !dbg !940
  ret void, !dbg !941
}

; Function Attrs: noinline nounwind optnone uwtable
define hidden zeroext i8 @DoesKeyExist(%struct._DEMO1_ACCESS_KEY* noundef %0) #0 !dbg !942 {
  %2 = alloca i8, align 1
  %3 = alloca %struct._DEMO1_ACCESS_KEY*, align 8
  %4 = alloca %struct._LINK*, align 8
  store %struct._DEMO1_ACCESS_KEY* %0, %struct._DEMO1_ACCESS_KEY** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._DEMO1_ACCESS_KEY** %3, metadata !945, metadata !DIExpression()), !dbg !946
  call void @llvm.dbg.declare(metadata %struct._LINK** %4, metadata !947, metadata !DIExpression()), !dbg !948
  %5 = load %struct._DEMO1_ACCESS_KEY*, %struct._DEMO1_ACCESS_KEY** %3, align 8, !dbg !949
  %6 = icmp eq %struct._DEMO1_ACCESS_KEY* %5, null, !dbg !951
  br i1 %6, label %7, label %8, !dbg !952

7:                                                ; preds = %1
  store i8 0, i8* %2, align 1, !dbg !953
  br label %35, !dbg !953

8:                                                ; preds = %1
  %9 = call i8* @malloc(i64 noundef 32), !dbg !955
  %10 = bitcast i8* %9 to %struct._LINK*, !dbg !956
  store %struct._LINK* %10, %struct._LINK** @head, align 8, !dbg !957
  %11 = load %struct._LINK*, %struct._LINK** @head, align 8, !dbg !958
  %12 = bitcast %struct._LINK* %11 to i8*, !dbg !958
  call void @klee_make_symbolic(i8* noundef %12, i64 noundef 32, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)), !dbg !959
  %13 = load %struct._LINK*, %struct._LINK** @head, align 8, !dbg !960
  store %struct._LINK* %13, %struct._LINK** %4, align 8, !dbg !962
  br label %14, !dbg !963

14:                                               ; preds = %30, %8
  %15 = load %struct._LINK*, %struct._LINK** %4, align 8, !dbg !964
  %16 = icmp ne %struct._LINK* %15, null, !dbg !966
  br i1 %16, label %17, label %34, !dbg !967

17:                                               ; preds = %14
  %18 = load %struct._DEMO1_ACCESS_KEY*, %struct._DEMO1_ACCESS_KEY** %3, align 8, !dbg !968
  %19 = getelementptr inbounds %struct._DEMO1_ACCESS_KEY, %struct._DEMO1_ACCESS_KEY* %18, i32 0, i32 0, !dbg !971
  %20 = getelementptr inbounds [2 x i64], [2 x i64]* %19, i64 0, i64 0, !dbg !968
  %21 = load i64, i64* %20, align 8, !dbg !968
  %22 = load %struct._LINK*, %struct._LINK** %4, align 8, !dbg !972
  %23 = getelementptr inbounds %struct._LINK, %struct._LINK* %22, i32 0, i32 0, !dbg !973
  %24 = getelementptr inbounds %struct._DEMO1_ACCESS_KEY, %struct._DEMO1_ACCESS_KEY* %23, i32 0, i32 0, !dbg !974
  %25 = getelementptr inbounds [2 x i64], [2 x i64]* %24, i64 0, i64 0, !dbg !972
  %26 = load i64, i64* %25, align 8, !dbg !972
  %27 = icmp eq i64 %21, %26, !dbg !975
  br i1 %27, label %28, label %29, !dbg !976

28:                                               ; preds = %17
  store i8 1, i8* %2, align 1, !dbg !977
  br label %35, !dbg !977

29:                                               ; preds = %17
  br label %30, !dbg !979

30:                                               ; preds = %29
  %31 = load %struct._LINK*, %struct._LINK** %4, align 8, !dbg !980
  %32 = getelementptr inbounds %struct._LINK, %struct._LINK* %31, i32 0, i32 1, !dbg !981
  %33 = load %struct._LINK*, %struct._LINK** %32, align 8, !dbg !981
  store %struct._LINK* %33, %struct._LINK** %4, align 8, !dbg !982
  br label %14, !dbg !983, !llvm.loop !984

34:                                               ; preds = %14
  store i8 0, i8* %2, align 1, !dbg !986
  br label %35, !dbg !986

35:                                               ; preds = %34, %28, %7
  %36 = load i8, i8* %2, align 1, !dbg !987
  ret i8 %36, !dbg !987
}

declare i8* @malloc(i64 noundef) #2

declare hidden void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define hidden i64 @Demo1AccessKeyInit(i8* noundef %0, %struct.EFI_SYSTEM_TABLE* noundef %1) #0 !dbg !988 {
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.EFI_SYSTEM_TABLE*, align 8
  %6 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !991, metadata !DIExpression()), !dbg !992
  store %struct.EFI_SYSTEM_TABLE* %1, %struct.EFI_SYSTEM_TABLE** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.EFI_SYSTEM_TABLE** %5, metadata !993, metadata !DIExpression()), !dbg !994
  call void @llvm.dbg.declare(metadata i64* %6, metadata !995, metadata !DIExpression()), !dbg !996
  %7 = load i64, i64* %6, align 8, !dbg !997
  %8 = icmp slt i64 %7, 0, !dbg !997
  br i1 %8, label %12, label %9, !dbg !999

9:                                                ; preds = %2
  %10 = load %struct._EFI_RNG_PROTOCOL*, %struct._EFI_RNG_PROTOCOL** @RngProtocol, align 8, !dbg !1000
  %11 = icmp eq %struct._EFI_RNG_PROTOCOL* %10, null, !dbg !1001
  br i1 %11, label %12, label %14, !dbg !1002

12:                                               ; preds = %9, %2
  %13 = load i64, i64* %6, align 8, !dbg !1003
  store i64 %13, i64* %3, align 8, !dbg !1005
  br label %29, !dbg !1005

14:                                               ; preds = %9
  %15 = call i8* @AllocatePool(i64 noundef 16), !dbg !1006
  %16 = bitcast i8* %15 to %struct._DEMO1_ACCESS_KEY*, !dbg !1006
  store %struct._DEMO1_ACCESS_KEY* %16, %struct._DEMO1_ACCESS_KEY** @masterKey, align 8, !dbg !1007
  %17 = load %struct._DEMO1_ACCESS_KEY*, %struct._DEMO1_ACCESS_KEY** @masterKey, align 8, !dbg !1008
  %18 = call i64 @Demo1GenerateAccessKey(%struct._Demo1_Access_Key_PROTOCOL* noundef bitcast ({ i64 (%struct._Demo1_Access_Key_PROTOCOL*, i8*, i8, %struct._DEMO1_ACCESS_KEY*)*, i8* }* @gDemo1_Access_Key_Protocol to %struct._Demo1_Access_Key_PROTOCOL*), i8* noundef null, i8 noundef zeroext 1, %struct._DEMO1_ACCESS_KEY* noundef %17), !dbg !1009
  store i64 %18, i64* %6, align 8, !dbg !1010
  %19 = load i64, i64* %6, align 8, !dbg !1011
  %20 = icmp slt i64 %19, 0, !dbg !1011
  br i1 %20, label %21, label %23, !dbg !1013

21:                                               ; preds = %14
  %22 = load i64, i64* %6, align 8, !dbg !1014
  store i64 %22, i64* %3, align 8, !dbg !1016
  br label %29, !dbg !1016

23:                                               ; preds = %14
  %24 = load i64, i64* %6, align 8, !dbg !1017
  %25 = icmp slt i64 %24, 0, !dbg !1017
  br i1 %25, label %26, label %28, !dbg !1019

26:                                               ; preds = %23
  %27 = load i64, i64* %6, align 8, !dbg !1020
  store i64 %27, i64* %3, align 8, !dbg !1022
  br label %29, !dbg !1022

28:                                               ; preds = %23
  store i64 0, i64* %3, align 8, !dbg !1023
  br label %29, !dbg !1023

29:                                               ; preds = %28, %26, %21, %12
  %30 = load i64, i64* %3, align 8, !dbg !1024
  ret i64 %30, !dbg !1024
}

; Function Attrs: noinline nounwind optnone uwtable
define hidden i64 @Demo1AccessKeyUnload(i8* noundef %0) #0 !dbg !1025 {
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !1026, metadata !DIExpression()), !dbg !1027
  call void @llvm.dbg.declare(metadata i64* %3, metadata !1028, metadata !DIExpression()), !dbg !1029
  store i64 0, i64* %3, align 8, !dbg !1029
  %4 = load %struct._DEMO1_ACCESS_KEY*, %struct._DEMO1_ACCESS_KEY** @masterKey, align 8, !dbg !1030
  %5 = bitcast %struct._DEMO1_ACCESS_KEY* %4 to i8*, !dbg !1030
  call void @FreePool(i8* noundef %5), !dbg !1031
  %6 = load i64, i64* %3, align 8, !dbg !1032
  ret i64 %6, !dbg !1033
}

declare hidden void @FreePool(i8* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define hidden i64 @Demo1BobDataProvider(%struct._Demo1_Bob_PROTOCOL* noundef %0, i8* noundef %1, i8** noundef %2, i64 noundef %3) #0 !dbg !1034 {
  %5 = alloca i64, align 8
  %6 = alloca %struct._Demo1_Bob_PROTOCOL*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  store %struct._Demo1_Bob_PROTOCOL* %0, %struct._Demo1_Bob_PROTOCOL** %6, align 8
  call void @llvm.dbg.declare(metadata %struct._Demo1_Bob_PROTOCOL** %6, metadata !1035, metadata !DIExpression()), !dbg !1036
  store i8* %1, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !1037, metadata !DIExpression()), !dbg !1038
  store i8** %2, i8*** %8, align 8
  call void @llvm.dbg.declare(metadata i8*** %8, metadata !1039, metadata !DIExpression()), !dbg !1040
  store i64 %3, i64* %9, align 8
  call void @llvm.dbg.declare(metadata i64* %9, metadata !1041, metadata !DIExpression()), !dbg !1042
  call void @llvm.dbg.declare(metadata i64* %10, metadata !1043, metadata !DIExpression()), !dbg !1044
  %13 = load i8*, i8** %7, align 8, !dbg !1045
  %14 = ptrtoint i8* %13 to i64, !dbg !1046
  store i64 %14, i64* %10, align 8, !dbg !1044
  %15 = call i8* @malloc(i64 noundef 96), !dbg !1047
  %16 = bitcast i8* %15 to %struct.EFI_LOADED_IMAGE_PROTOCOL*, !dbg !1048
  store %struct.EFI_LOADED_IMAGE_PROTOCOL* %16, %struct.EFI_LOADED_IMAGE_PROTOCOL** @gLoadImage, align 8, !dbg !1049
  %17 = load %struct.EFI_LOADED_IMAGE_PROTOCOL*, %struct.EFI_LOADED_IMAGE_PROTOCOL** @gLoadImage, align 8, !dbg !1050
  %18 = bitcast %struct.EFI_LOADED_IMAGE_PROTOCOL* %17 to i8*, !dbg !1050
  call void @klee_make_symbolic(i8* noundef %18, i64 noundef 96, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.11, i64 0, i64 0)), !dbg !1051
  call void @llvm.dbg.declare(metadata i64* %11, metadata !1052, metadata !DIExpression()), !dbg !1053
  %19 = load %struct.EFI_LOADED_IMAGE_PROTOCOL*, %struct.EFI_LOADED_IMAGE_PROTOCOL** @gLoadImage, align 8, !dbg !1054
  %20 = getelementptr inbounds %struct.EFI_LOADED_IMAGE_PROTOCOL, %struct.EFI_LOADED_IMAGE_PROTOCOL* %19, i32 0, i32 8, !dbg !1055
  %21 = load i8*, i8** %20, align 8, !dbg !1055
  %22 = ptrtoint i8* %21 to i64, !dbg !1056
  store i64 %22, i64* %11, align 8, !dbg !1053
  call void @llvm.dbg.declare(metadata i8** %12, metadata !1057, metadata !DIExpression()), !dbg !1058
  store i8* null, i8** %12, align 8, !dbg !1058
  %23 = load i8**, i8*** %8, align 8, !dbg !1059
  %24 = icmp eq i8** %23, null, !dbg !1061
  br i1 %24, label %25, label %26, !dbg !1062

25:                                               ; preds = %4
  store i64 -9223372036854775806, i64* %5, align 8, !dbg !1063
  br label %54, !dbg !1063

26:                                               ; preds = %4
  %27 = load i64, i64* %10, align 8, !dbg !1065
  %28 = load i64, i64* %11, align 8, !dbg !1067
  %29 = icmp ult i64 %27, %28, !dbg !1068
  br i1 %29, label %30, label %31, !dbg !1069

30:                                               ; preds = %26
  store i64 -9223372036854775793, i64* %5, align 8, !dbg !1070
  br label %54, !dbg !1070

31:                                               ; preds = %26
  %32 = load i64, i64* %11, align 8, !dbg !1072
  %33 = load %struct.EFI_LOADED_IMAGE_PROTOCOL*, %struct.EFI_LOADED_IMAGE_PROTOCOL** @gLoadImage, align 8, !dbg !1074
  %34 = getelementptr inbounds %struct.EFI_LOADED_IMAGE_PROTOCOL, %struct.EFI_LOADED_IMAGE_PROTOCOL* %33, i32 0, i32 9, !dbg !1075
  %35 = load i64, i64* %34, align 8, !dbg !1075
  %36 = add i64 %32, %35, !dbg !1076
  %37 = load i64, i64* %10, align 8, !dbg !1077
  %38 = load i64, i64* %9, align 8, !dbg !1078
  %39 = add i64 %37, %38, !dbg !1079
  %40 = icmp ult i64 %36, %39, !dbg !1080
  br i1 %40, label %41, label %42, !dbg !1081

41:                                               ; preds = %31
  store i64 -9223372036854775793, i64* %5, align 8, !dbg !1082
  br label %54, !dbg !1082

42:                                               ; preds = %31
  %43 = load i64, i64* %9, align 8, !dbg !1084
  %44 = call i8* @malloc(i64 noundef %43), !dbg !1085
  store i8* %44, i8** %12, align 8, !dbg !1086
  %45 = load i8*, i8** %12, align 8, !dbg !1087
  %46 = icmp eq i8* %45, null, !dbg !1089
  br i1 %46, label %47, label %48, !dbg !1090

47:                                               ; preds = %42
  store i64 -9223372036854775806, i64* %5, align 8, !dbg !1091
  br label %54, !dbg !1091

48:                                               ; preds = %42
  %49 = load i8*, i8** %12, align 8, !dbg !1093
  %50 = load i8*, i8** %7, align 8, !dbg !1094
  %51 = load i64, i64* %9, align 8, !dbg !1095
  call void @CopyMem_c(i8* noundef %49, i8* noundef %50, i64 noundef %51), !dbg !1096
  %52 = load i8*, i8** %12, align 8, !dbg !1097
  %53 = load i8**, i8*** %8, align 8, !dbg !1098
  store i8* %52, i8** %53, align 8, !dbg !1099
  store i64 0, i64* %5, align 8, !dbg !1100
  br label %54, !dbg !1100

54:                                               ; preds = %48, %47, %41, %30, %25
  %55 = load i64, i64* %5, align 8, !dbg !1101
  ret i64 %55, !dbg !1101
}

; Function Attrs: noinline nounwind optnone uwtable
define hidden i64 @Demo1BobInit(i8* noundef %0, %struct.EFI_SYSTEM_TABLE* noundef %1) #0 !dbg !1102 {
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.EFI_SYSTEM_TABLE*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1103, metadata !DIExpression()), !dbg !1104
  store %struct.EFI_SYSTEM_TABLE* %1, %struct.EFI_SYSTEM_TABLE** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.EFI_SYSTEM_TABLE** %5, metadata !1105, metadata !DIExpression()), !dbg !1106
  call void @llvm.dbg.declare(metadata i64* %6, metadata !1107, metadata !DIExpression()), !dbg !1108
  call void @llvm.dbg.declare(metadata i64* %7, metadata !1109, metadata !DIExpression()), !dbg !1110
  call void @llvm.dbg.declare(metadata i64* %8, metadata !1111, metadata !DIExpression()), !dbg !1112
  store i64 8, i64* %8, align 8, !dbg !1112
  %9 = load i64, i64* %6, align 8, !dbg !1113
  %10 = icmp slt i64 %9, 0, !dbg !1113
  br i1 %10, label %14, label %11, !dbg !1115

11:                                               ; preds = %2
  %12 = load %struct._Demo1_Access_Key_PROTOCOL*, %struct._Demo1_Access_Key_PROTOCOL** @AccessKeyProtocol, align 8, !dbg !1116
  %13 = icmp eq %struct._Demo1_Access_Key_PROTOCOL* %12, null, !dbg !1117
  br i1 %13, label %14, label %29, !dbg !1118

14:                                               ; preds = %11, %2
  br label %15, !dbg !1119

15:                                               ; preds = %14
  %16 = call zeroext i8 @DebugPrintEnabled(), !dbg !1121
  %17 = icmp ne i8 %16, 0, !dbg !1121
  br i1 %17, label %18, label %26, !dbg !1124

18:                                               ; preds = %15
  br label %19, !dbg !1125

19:                                               ; preds = %18
  %20 = call zeroext i8 @DebugPrintLevelEnabled(i64 noundef 2147483648), !dbg !1127
  %21 = icmp ne i8 %20, 0, !dbg !1127
  br i1 %21, label %22, label %24, !dbg !1130

22:                                               ; preds = %19
  %23 = load i64, i64* %6, align 8, !dbg !1131
  call void (i64, i8*, ...) @DebugPrint(i64 noundef 2147483648, i8* noundef getelementptr inbounds ([55 x i8], [55 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @__FUNCTION__.Demo1BobInit, i64 0, i64 0), i64 noundef %23), !dbg !1131
  br label %24, !dbg !1131

24:                                               ; preds = %22, %19
  br label %25, !dbg !1130

25:                                               ; preds = %24
  br label %26, !dbg !1125

26:                                               ; preds = %25, %15
  br label %27, !dbg !1124

27:                                               ; preds = %26
  %28 = load i64, i64* %6, align 8, !dbg !1133
  store i64 %28, i64* %3, align 8, !dbg !1134
  br label %146, !dbg !1134

29:                                               ; preds = %11
  %30 = load %struct._Demo1_Access_Key_PROTOCOL*, %struct._Demo1_Access_Key_PROTOCOL** @AccessKeyProtocol, align 8, !dbg !1135
  %31 = getelementptr inbounds %struct._Demo1_Access_Key_PROTOCOL, %struct._Demo1_Access_Key_PROTOCOL* %30, i32 0, i32 0, !dbg !1136
  %32 = bitcast {}** %31 to i64 (%struct._Demo1_Access_Key_PROTOCOL*, i8*, i8, %struct._DEMO1_ACCESS_KEY*)**, !dbg !1136
  %33 = load i64 (%struct._Demo1_Access_Key_PROTOCOL*, i8*, i8, %struct._DEMO1_ACCESS_KEY*)*, i64 (%struct._Demo1_Access_Key_PROTOCOL*, i8*, i8, %struct._DEMO1_ACCESS_KEY*)** %32, align 8, !dbg !1136
  %34 = call i64 %33(%struct._Demo1_Access_Key_PROTOCOL* noundef null, i8* noundef null, i8 noundef zeroext 0, %struct._DEMO1_ACCESS_KEY* noundef @bobKey), !dbg !1135
  store i64 %34, i64* %6, align 8, !dbg !1137
  %35 = load i64, i64* %6, align 8, !dbg !1138
  %36 = icmp slt i64 %35, 0, !dbg !1138
  br i1 %36, label %37, label %52, !dbg !1140

37:                                               ; preds = %29
  br label %38, !dbg !1141

38:                                               ; preds = %37
  %39 = call zeroext i8 @DebugPrintEnabled(), !dbg !1143
  %40 = icmp ne i8 %39, 0, !dbg !1143
  br i1 %40, label %41, label %49, !dbg !1146

41:                                               ; preds = %38
  br label %42, !dbg !1147

42:                                               ; preds = %41
  %43 = call zeroext i8 @DebugPrintLevelEnabled(i64 noundef 2147483648), !dbg !1149
  %44 = icmp ne i8 %43, 0, !dbg !1149
  br i1 %44, label %45, label %47, !dbg !1152

45:                                               ; preds = %42
  %46 = load i64, i64* %6, align 8, !dbg !1153
  call void (i64, i8*, ...) @DebugPrint(i64 noundef 2147483648, i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0), i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @__FUNCTION__.Demo1BobInit, i64 0, i64 0), i64 noundef %46), !dbg !1153
  br label %47, !dbg !1153

47:                                               ; preds = %45, %42
  br label %48, !dbg !1152

48:                                               ; preds = %47
  br label %49, !dbg !1147

49:                                               ; preds = %48, %38
  br label %50, !dbg !1146

50:                                               ; preds = %49
  %51 = load i64, i64* %6, align 8, !dbg !1155
  store i64 %51, i64* %3, align 8, !dbg !1156
  br label %146, !dbg !1156

52:                                               ; preds = %29
  %53 = load i64, i64* %6, align 8, !dbg !1157
  %54 = icmp slt i64 %53, 0, !dbg !1157
  br i1 %54, label %58, label %55, !dbg !1159

55:                                               ; preds = %52
  %56 = load %struct._Demo1_Alice_PROTOCOL*, %struct._Demo1_Alice_PROTOCOL** @AliceProtocol, align 8, !dbg !1160
  %57 = icmp eq %struct._Demo1_Alice_PROTOCOL* %56, null, !dbg !1161
  br i1 %57, label %58, label %73, !dbg !1162

58:                                               ; preds = %55, %52
  br label %59, !dbg !1163

59:                                               ; preds = %58
  %60 = call zeroext i8 @DebugPrintEnabled(), !dbg !1165
  %61 = icmp ne i8 %60, 0, !dbg !1165
  br i1 %61, label %62, label %70, !dbg !1168

62:                                               ; preds = %59
  br label %63, !dbg !1169

63:                                               ; preds = %62
  %64 = call zeroext i8 @DebugPrintLevelEnabled(i64 noundef 2147483648), !dbg !1171
  %65 = icmp ne i8 %64, 0, !dbg !1171
  br i1 %65, label %66, label %68, !dbg !1174

66:                                               ; preds = %63
  %67 = load i64, i64* %6, align 8, !dbg !1175
  call void (i64, i8*, ...) @DebugPrint(i64 noundef 2147483648, i8* noundef getelementptr inbounds ([50 x i8], [50 x i8]* @.str.5, i64 0, i64 0), i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @__FUNCTION__.Demo1BobInit, i64 0, i64 0), i64 noundef %67), !dbg !1175
  br label %68, !dbg !1175

68:                                               ; preds = %66, %63
  br label %69, !dbg !1174

69:                                               ; preds = %68
  br label %70, !dbg !1169

70:                                               ; preds = %69, %59
  br label %71, !dbg !1168

71:                                               ; preds = %70
  %72 = load i64, i64* %6, align 8, !dbg !1177
  store i64 %72, i64* %3, align 8, !dbg !1178
  br label %146, !dbg !1178

73:                                               ; preds = %55
  %74 = load i64, i64* %6, align 8, !dbg !1179
  %75 = icmp slt i64 %74, 0, !dbg !1179
  br i1 %75, label %76, label %90, !dbg !1181

76:                                               ; preds = %73
  br label %77, !dbg !1182

77:                                               ; preds = %76
  %78 = call zeroext i8 @DebugPrintEnabled(), !dbg !1184
  %79 = icmp ne i8 %78, 0, !dbg !1184
  br i1 %79, label %80, label %87, !dbg !1187

80:                                               ; preds = %77
  br label %81, !dbg !1188

81:                                               ; preds = %80
  %82 = call zeroext i8 @DebugPrintLevelEnabled(i64 noundef 2147483648), !dbg !1190
  %83 = icmp ne i8 %82, 0, !dbg !1190
  br i1 %83, label %84, label %85, !dbg !1193

84:                                               ; preds = %81
  call void (i64, i8*, ...) @DebugPrint(i64 noundef 2147483648, i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @.str.6, i64 0, i64 0), i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @__FUNCTION__.Demo1BobInit, i64 0, i64 0), i32* noundef getelementptr inbounds ([11 x i32], [11 x i32]* @.str.7, i64 0, i64 0)), !dbg !1194
  br label %85, !dbg !1194

85:                                               ; preds = %84, %81
  br label %86, !dbg !1193

86:                                               ; preds = %85
  br label %87, !dbg !1188

87:                                               ; preds = %86, %77
  br label %88, !dbg !1187

88:                                               ; preds = %87
  %89 = load i64, i64* %6, align 8, !dbg !1196
  store i64 %89, i64* %3, align 8, !dbg !1197
  br label %146, !dbg !1197

90:                                               ; preds = %73
  %91 = load i64, i64* %7, align 8, !dbg !1198
  %92 = icmp eq i64 %91, 2, !dbg !1200
  br i1 %92, label %93, label %106, !dbg !1201

93:                                               ; preds = %90
  br label %94, !dbg !1202

94:                                               ; preds = %93
  %95 = call zeroext i8 @DebugPrintEnabled(), !dbg !1204
  %96 = icmp ne i8 %95, 0, !dbg !1204
  br i1 %96, label %97, label %104, !dbg !1207

97:                                               ; preds = %94
  br label %98, !dbg !1208

98:                                               ; preds = %97
  %99 = call zeroext i8 @DebugPrintLevelEnabled(i64 noundef 2147483648), !dbg !1210
  %100 = icmp ne i8 %99, 0, !dbg !1210
  br i1 %100, label %101, label %102, !dbg !1213

101:                                              ; preds = %98
  call void (i64, i8*, ...) @DebugPrint(i64 noundef 2147483648, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.8, i64 0, i64 0), i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @__FUNCTION__.Demo1BobInit, i64 0, i64 0)), !dbg !1214
  br label %102, !dbg !1214

102:                                              ; preds = %101, %98
  br label %103, !dbg !1213

103:                                              ; preds = %102
  br label %104, !dbg !1208

104:                                              ; preds = %103, %94
  br label %105, !dbg !1207

105:                                              ; preds = %104
  store i64 -9223372036854775788, i64* %3, align 8, !dbg !1216
  br label %146, !dbg !1216

106:                                              ; preds = %90
  %107 = load i64, i64* %7, align 8, !dbg !1217
  %108 = icmp ne i64 %107, 1, !dbg !1219
  br i1 %108, label %109, label %122, !dbg !1220

109:                                              ; preds = %106
  br label %110, !dbg !1221

110:                                              ; preds = %109
  %111 = call zeroext i8 @DebugPrintEnabled(), !dbg !1223
  %112 = icmp ne i8 %111, 0, !dbg !1223
  br i1 %112, label %113, label %120, !dbg !1226

113:                                              ; preds = %110
  br label %114, !dbg !1227

114:                                              ; preds = %113
  %115 = call zeroext i8 @DebugPrintLevelEnabled(i64 noundef 2147483648), !dbg !1229
  %116 = icmp ne i8 %115, 0, !dbg !1229
  br i1 %116, label %117, label %118, !dbg !1232

117:                                              ; preds = %114
  call void (i64, i8*, ...) @DebugPrint(i64 noundef 2147483648, i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.9, i64 0, i64 0), i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @__FUNCTION__.Demo1BobInit, i64 0, i64 0)), !dbg !1233
  br label %118, !dbg !1233

118:                                              ; preds = %117, %114
  br label %119, !dbg !1232

119:                                              ; preds = %118
  br label %120, !dbg !1227

120:                                              ; preds = %119, %110
  br label %121, !dbg !1226

121:                                              ; preds = %120
  store i64 -9223372036854775805, i64* %3, align 8, !dbg !1235
  br label %146, !dbg !1235

122:                                              ; preds = %106
  %123 = load i64, i64* %6, align 8, !dbg !1236
  %124 = icmp slt i64 %123, 0, !dbg !1236
  br i1 %124, label %125, label %140, !dbg !1238

125:                                              ; preds = %122
  br label %126, !dbg !1239

126:                                              ; preds = %125
  %127 = call zeroext i8 @DebugPrintEnabled(), !dbg !1241
  %128 = icmp ne i8 %127, 0, !dbg !1241
  br i1 %128, label %129, label %137, !dbg !1244

129:                                              ; preds = %126
  br label %130, !dbg !1245

130:                                              ; preds = %129
  %131 = call zeroext i8 @DebugPrintLevelEnabled(i64 noundef 2147483648), !dbg !1247
  %132 = icmp ne i8 %131, 0, !dbg !1247
  br i1 %132, label %133, label %135, !dbg !1250

133:                                              ; preds = %130
  %134 = load i64, i64* %6, align 8, !dbg !1251
  call void (i64, i8*, ...) @DebugPrint(i64 noundef 2147483648, i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @.str.10, i64 0, i64 0), i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @__FUNCTION__.Demo1BobInit, i64 0, i64 0), i64 noundef %134), !dbg !1251
  br label %135, !dbg !1251

135:                                              ; preds = %133, %130
  br label %136, !dbg !1250

136:                                              ; preds = %135
  br label %137, !dbg !1245

137:                                              ; preds = %136, %126
  br label %138, !dbg !1244

138:                                              ; preds = %137
  %139 = load i64, i64* %6, align 8, !dbg !1253
  store i64 %139, i64* %3, align 8, !dbg !1254
  br label %146, !dbg !1254

140:                                              ; preds = %122
  %141 = load i64, i64* %6, align 8, !dbg !1255
  %142 = icmp slt i64 %141, 0, !dbg !1255
  br i1 %142, label %143, label %145, !dbg !1257

143:                                              ; preds = %140
  %144 = load i64, i64* %6, align 8, !dbg !1258
  store i64 %144, i64* %3, align 8, !dbg !1260
  br label %146, !dbg !1260

145:                                              ; preds = %140
  store i64 0, i64* %3, align 8, !dbg !1261
  br label %146, !dbg !1261

146:                                              ; preds = %145, %143, %138, %121, %105, %88, %71, %50, %27
  %147 = load i64, i64* %3, align 8, !dbg !1262
  ret i64 %147, !dbg !1262
}

declare hidden zeroext i8 @DebugPrintEnabled() #2

declare hidden zeroext i8 @DebugPrintLevelEnabled(i64 noundef) #2

declare hidden void @DebugPrint(i64 noundef, i8* noundef, ...) #2

; Function Attrs: noinline nounwind optnone uwtable
define hidden i64 @Demo1BobUnload(i8* noundef %0) #0 !dbg !1263 {
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !1264, metadata !DIExpression()), !dbg !1265
  call void @llvm.dbg.declare(metadata i64* %3, metadata !1266, metadata !DIExpression()), !dbg !1267
  store i64 0, i64* %3, align 8, !dbg !1267
  %4 = load i64, i64* %3, align 8, !dbg !1268
  ret i64 %4, !dbg !1269
}

; Function Attrs: noinline nounwind optnone uwtable
define hidden void @CopyMem_c(i8* noundef %0, i8* noundef %1, i64 noundef %2) #0 !dbg !1270 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1276, metadata !DIExpression()), !dbg !1277
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !1278, metadata !DIExpression()), !dbg !1279
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !1280, metadata !DIExpression()), !dbg !1281
  call void @llvm.dbg.declare(metadata i8** %7, metadata !1282, metadata !DIExpression()), !dbg !1283
  %10 = load i8*, i8** %4, align 8, !dbg !1284
  store i8* %10, i8** %7, align 8, !dbg !1283
  call void @llvm.dbg.declare(metadata i8** %8, metadata !1285, metadata !DIExpression()), !dbg !1286
  %11 = load i8*, i8** %5, align 8, !dbg !1287
  store i8* %11, i8** %8, align 8, !dbg !1286
  call void @llvm.dbg.declare(metadata i64* %9, metadata !1288, metadata !DIExpression()), !dbg !1290
  store i64 0, i64* %9, align 8, !dbg !1290
  br label %12, !dbg !1291

12:                                               ; preds = %24, %3
  %13 = load i64, i64* %9, align 8, !dbg !1292
  %14 = load i64, i64* %6, align 8, !dbg !1294
  %15 = icmp ult i64 %13, %14, !dbg !1295
  br i1 %15, label %16, label %27, !dbg !1296

16:                                               ; preds = %12
  %17 = load i8*, i8** %8, align 8, !dbg !1297
  %18 = load i64, i64* %9, align 8, !dbg !1299
  %19 = getelementptr inbounds i8, i8* %17, i64 %18, !dbg !1297
  %20 = load i8, i8* %19, align 1, !dbg !1297
  %21 = load i8*, i8** %7, align 8, !dbg !1300
  %22 = load i64, i64* %9, align 8, !dbg !1301
  %23 = getelementptr inbounds i8, i8* %21, i64 %22, !dbg !1300
  store i8 %20, i8* %23, align 1, !dbg !1302
  br label %24, !dbg !1303

24:                                               ; preds = %16
  %25 = load i64, i64* %9, align 8, !dbg !1304
  %26 = add i64 %25, 1, !dbg !1304
  store i64 %26, i64* %9, align 8, !dbg !1304
  br label %12, !dbg !1305, !llvm.loop !1306

27:                                               ; preds = %12
  ret void, !dbg !1308
}

; Function Attrs: noinline nounwind optnone uwtable
define hidden void @read_through_Demo1BobDataProvider(i8* noundef %0) #0 !dbg !1309 {
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct._DEMO1_ACCESS_KEY*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !1312, metadata !DIExpression()), !dbg !1313
  call void @llvm.dbg.declare(metadata i64* %3, metadata !1314, metadata !DIExpression()), !dbg !1315
  call void @llvm.dbg.declare(metadata i64* %4, metadata !1316, metadata !DIExpression()), !dbg !1317
  store i64 16, i64* %4, align 8, !dbg !1317
  call void @llvm.dbg.declare(metadata %struct._DEMO1_ACCESS_KEY** %5, metadata !1318, metadata !DIExpression()), !dbg !1319
  %6 = call i8* @malloc(i64 noundef 16), !dbg !1320
  %7 = bitcast i8* %6 to %struct._DEMO1_ACCESS_KEY*, !dbg !1320
  store %struct._DEMO1_ACCESS_KEY* %7, %struct._DEMO1_ACCESS_KEY** %5, align 8, !dbg !1319
  %8 = load %struct._DEMO1_ACCESS_KEY*, %struct._DEMO1_ACCESS_KEY** %5, align 8, !dbg !1321
  %9 = bitcast %struct._DEMO1_ACCESS_KEY* %8 to i8*, !dbg !1321
  call void @klee_make_symbolic(i8* noundef %9, i64 noundef 16, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0)), !dbg !1322
  %10 = load i64, i64* %3, align 8, !dbg !1323
  %11 = inttoptr i64 %10 to i8*, !dbg !1323
  %12 = bitcast %struct._DEMO1_ACCESS_KEY** %5 to i8**, !dbg !1323
  %13 = load i64, i64* %4, align 8, !dbg !1323
  %14 = call i64 @Demo1BobDataProvider(%struct._Demo1_Bob_PROTOCOL* noundef null, i8* noundef %11, i8** noundef %12, i64 noundef %13), !dbg !1323
  %15 = icmp ne i64 %14, 0, !dbg !1323
  br i1 %15, label %16, label %17, !dbg !1323

16:                                               ; preds = %1
  br label %19, !dbg !1323

17:                                               ; preds = %1
  %18 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([81 x i8], [81 x i8]* @.str.13, i64 0, i64 0), i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.14, i64 0, i64 0), i32 noundef 383, i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @__PRETTY_FUNCTION__.read_through_Demo1BobDataProvider, i64 0, i64 0)), !dbg !1323
  br label %19, !dbg !1323

19:                                               ; preds = %17, %16
  ret void, !dbg !1324
}

; Function Attrs: noreturn
declare hidden i32 @__assert_fail(...) #3

; Function Attrs: noinline nounwind optnone uwtable
define hidden i32 @main() #0 !dbg !1325 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i8** %2, metadata !1328, metadata !DIExpression()), !dbg !1329
  store i8* bitcast (%struct._DEMO1_ACCESS_KEY* @bobKey to i8*), i8** %2, align 8, !dbg !1329
  %3 = load i8*, i8** %2, align 8, !dbg !1330
  call void @read_through_Demo1BobDataProvider(i8* noundef %3), !dbg !1331
  ret i32 0, !dbg !1332
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!703, !704, !705, !706, !707, !708, !709}
!llvm.ident = !{!710}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "gDemo1_Access_Key_Protocol", scope: !2, file: !58, line: 18, type: !672, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !51, globals: !627, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "Demo1_Bob.c", directory: "/home/hira/Research/HARDEN/repositories/HARDEN_demo1/edk2/EmulatorPkg/Demo1_Bob", checksumkind: CSK_MD5, checksum: "6ee70b20aaaf0c8514f72ab89d050cd5")
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
!51 = !{!52, !53, !56, !77, !80, !81, !83, !88, !70, !90, !276}
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
!84 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !85, line: 24, baseType: !86)
!85 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "2bf2ae53c58c01b1a1b9383b5195125c")
!86 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !87, line: 38, baseType: !55)
!87 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!88 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !89, size: 64)
!89 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !84)
!90 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !91, size: 64)
!91 = !DIDerivedType(tag: DW_TAG_typedef, name: "EFI_LOADED_IMAGE_PROTOCOL", file: !92, line: 72, baseType: !93)
!92 = !DIFile(filename: "./Protocol/LoadedImage.h", directory: "/home/hira/Research/HARDEN/repositories/HARDEN_demo1/edk2/EmulatorPkg/Demo1_Bob", checksumkind: CSK_MD5, checksum: "0bfc90f5c05009801c3af3d54bff9caa")
!93 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !92, line: 43, size: 768, elements: !94)
!94 = !{!95, !97, !99, !617, !618, !619, !620, !621, !622, !623, !624, !625, !626}
!95 = !DIDerivedType(tag: DW_TAG_member, name: "Revision", scope: !93, file: !92, line: 44, baseType: !96, size: 32)
!96 = !DIDerivedType(tag: DW_TAG_typedef, name: "UINT32", file: !54, line: 188, baseType: !7)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "ParentHandle", scope: !93, file: !92, line: 46, baseType: !98, size: 64, offset: 64)
!98 = !DIDerivedType(tag: DW_TAG_typedef, name: "EFI_HANDLE", file: !63, line: 35, baseType: !52)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "SystemTable", scope: !93, file: !92, line: 48, baseType: !100, size: 64, offset: 128)
!100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !101, size: 64)
!101 = !DIDerivedType(tag: DW_TAG_typedef, name: "EFI_SYSTEM_TABLE", file: !14, line: 2115, baseType: !102)
!102 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !14, line: 2054, size: 960, elements: !103)
!103 = !{!104, !113, !117, !118, !119, !145, !146, !202, !203, !204, !353, !609, !610}
!104 = !DIDerivedType(tag: DW_TAG_member, name: "Hdr", scope: !102, file: !14, line: 2058, baseType: !105, size: 192)
!105 = !DIDerivedType(tag: DW_TAG_typedef, name: "EFI_TABLE_HEADER", file: !6, line: 172, baseType: !106)
!106 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !6, line: 145, size: 192, elements: !107)
!107 = !{!108, !109, !110, !111, !112}
!108 = !DIDerivedType(tag: DW_TAG_member, name: "Signature", scope: !106, file: !6, line: 151, baseType: !71, size: 64)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "Revision", scope: !106, file: !6, line: 158, baseType: !96, size: 32, offset: 64)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "HeaderSize", scope: !106, file: !6, line: 162, baseType: !96, size: 32, offset: 96)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "CRC32", scope: !106, file: !6, line: 167, baseType: !96, size: 32, offset: 128)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "Reserved", scope: !106, file: !6, line: 171, baseType: !96, size: 32, offset: 160)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "FirmwareVendor", scope: !102, file: !14, line: 2063, baseType: !114, size: 64, offset: 192)
!114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !115, size: 64)
!115 = !DIDerivedType(tag: DW_TAG_typedef, name: "CHAR16", file: !54, line: 201, baseType: !116)
!116 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "FirmwareRevision", scope: !102, file: !14, line: 2068, baseType: !96, size: 32, offset: 256)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "ConsoleInHandle", scope: !102, file: !14, line: 2073, baseType: !98, size: 64, offset: 320)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "ConIn", scope: !102, file: !14, line: 2078, baseType: !120, size: 64, offset: 384)
!120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !121, size: 64)
!121 = !DIDerivedType(tag: DW_TAG_typedef, name: "EFI_SIMPLE_TEXT_INPUT_PROTOCOL", file: !122, line: 20, baseType: !123)
!122 = !DIFile(filename: "./Uefi/Protocol/SimpleTextIn.h", directory: "/home/hira/Research/HARDEN/repositories/HARDEN_demo1/edk2/EmulatorPkg/Demo1_Bob", checksumkind: CSK_MD5, checksum: "239cf4f3dddb25a8596c70fa738413fd")
!123 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_EFI_SIMPLE_TEXT_INPUT_PROTOCOL", file: !122, line: 116, size: 192, elements: !124)
!124 = !{!125, !131, !143}
!125 = !DIDerivedType(tag: DW_TAG_member, name: "Reset", scope: !123, file: !122, line: 117, baseType: !126, size: 64)
!126 = !DIDerivedType(tag: DW_TAG_typedef, name: "EFI_INPUT_RESET", file: !122, line: 86, baseType: !127)
!127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !128, size: 64)
!128 = !DISubroutineType(types: !129)
!129 = !{!130, !120, !53}
!130 = !DIDerivedType(tag: DW_TAG_typedef, name: "EFI_STATUS", file: !63, line: 31, baseType: !80)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "ReadKeyStroke", scope: !123, file: !122, line: 118, baseType: !132, size: 64, offset: 64)
!132 = !DIDerivedType(tag: DW_TAG_typedef, name: "EFI_INPUT_READ_KEY", file: !122, line: 107, baseType: !133)
!133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !134, size: 64)
!134 = !DISubroutineType(types: !135)
!135 = !{!130, !120, !136}
!136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !137, size: 64)
!137 = !DIDerivedType(tag: DW_TAG_typedef, name: "EFI_INPUT_KEY", file: !122, line: 38, baseType: !138)
!138 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !122, line: 35, size: 32, elements: !139)
!139 = !{!140, !142}
!140 = !DIDerivedType(tag: DW_TAG_member, name: "ScanCode", scope: !138, file: !122, line: 36, baseType: !141, size: 16)
!141 = !DIDerivedType(tag: DW_TAG_typedef, name: "UINT16", file: !54, line: 196, baseType: !116)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "UnicodeChar", scope: !138, file: !122, line: 37, baseType: !115, size: 16, offset: 16)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "WaitForKey", scope: !123, file: !122, line: 122, baseType: !144, size: 64, offset: 128)
!144 = !DIDerivedType(tag: DW_TAG_typedef, name: "EFI_EVENT", file: !63, line: 39, baseType: !52)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "ConsoleOutHandle", scope: !102, file: !14, line: 2082, baseType: !98, size: 64, offset: 448)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "ConOut", scope: !102, file: !14, line: 2087, baseType: !147, size: 64, offset: 512)
!147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !148, size: 64)
!148 = !DIDerivedType(tag: DW_TAG_typedef, name: "EFI_SIMPLE_TEXT_OUTPUT_PROTOCOL", file: !149, line: 27, baseType: !150)
!149 = !DIFile(filename: "./Uefi/Protocol/SimpleTextOut.h", directory: "/home/hira/Research/HARDEN/repositories/HARDEN_demo1/edk2/EmulatorPkg/Demo1_Bob", checksumkind: CSK_MD5, checksum: "685bec042927ad46d31bf42ae7f6ddcd")
!150 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_EFI_SIMPLE_TEXT_OUTPUT_PROTOCOL", file: !149, line: 387, size: 640, elements: !151)
!151 = !{!152, !157, !162, !164, !170, !175, !177, !182, !187, !189}
!152 = !DIDerivedType(tag: DW_TAG_member, name: "Reset", scope: !150, file: !149, line: 388, baseType: !153, size: 64)
!153 = !DIDerivedType(tag: DW_TAG_typedef, name: "EFI_TEXT_RESET", file: !149, line: 167, baseType: !154)
!154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !155, size: 64)
!155 = !DISubroutineType(types: !156)
!156 = !{!130, !147, !53}
!157 = !DIDerivedType(tag: DW_TAG_member, name: "OutputString", scope: !150, file: !149, line: 390, baseType: !158, size: 64, offset: 64)
!158 = !DIDerivedType(tag: DW_TAG_typedef, name: "EFI_TEXT_STRING", file: !149, line: 192, baseType: !159)
!159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !160, size: 64)
!160 = !DISubroutineType(types: !161)
!161 = !{!130, !147, !114}
!162 = !DIDerivedType(tag: DW_TAG_member, name: "TestString", scope: !150, file: !149, line: 391, baseType: !163, size: 64, offset: 128)
!163 = !DIDerivedType(tag: DW_TAG_typedef, name: "EFI_TEXT_TEST_STRING", file: !149, line: 213, baseType: !159)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "QueryMode", scope: !150, file: !149, line: 393, baseType: !165, size: 64, offset: 192)
!165 = !DIDerivedType(tag: DW_TAG_typedef, name: "EFI_TEXT_QUERY_MODE", file: !149, line: 236, baseType: !166)
!166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !167, size: 64)
!167 = !DISubroutineType(types: !168)
!168 = !{!130, !147, !70, !169, !169}
!169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !70, size: 64)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "SetMode", scope: !150, file: !149, line: 394, baseType: !171, size: 64, offset: 256)
!171 = !DIDerivedType(tag: DW_TAG_typedef, name: "EFI_TEXT_SET_MODE", file: !149, line: 256, baseType: !172)
!172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !173, size: 64)
!173 = !DISubroutineType(types: !174)
!174 = !{!130, !147, !70}
!175 = !DIDerivedType(tag: DW_TAG_member, name: "SetAttribute", scope: !150, file: !149, line: 395, baseType: !176, size: 64, offset: 320)
!176 = !DIDerivedType(tag: DW_TAG_typedef, name: "EFI_TEXT_SET_ATTRIBUTE", file: !149, line: 277, baseType: !172)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "ClearScreen", scope: !150, file: !149, line: 397, baseType: !178, size: 64, offset: 384)
!178 = !DIDerivedType(tag: DW_TAG_typedef, name: "EFI_TEXT_CLEAR_SCREEN", file: !149, line: 295, baseType: !179)
!179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !180, size: 64)
!180 = !DISubroutineType(types: !181)
!181 = !{!130, !147}
!182 = !DIDerivedType(tag: DW_TAG_member, name: "SetCursorPosition", scope: !150, file: !149, line: 398, baseType: !183, size: 64, offset: 448)
!183 = !DIDerivedType(tag: DW_TAG_typedef, name: "EFI_TEXT_SET_CURSOR_POSITION", file: !149, line: 318, baseType: !184)
!184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !185, size: 64)
!185 = !DISubroutineType(types: !186)
!186 = !{!130, !147, !70, !70}
!187 = !DIDerivedType(tag: DW_TAG_member, name: "EnableCursor", scope: !150, file: !149, line: 399, baseType: !188, size: 64, offset: 512)
!188 = !DIDerivedType(tag: DW_TAG_typedef, name: "EFI_TEXT_ENABLE_CURSOR", file: !149, line: 340, baseType: !154)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "Mode", scope: !150, file: !149, line: 404, baseType: !190, size: 64, offset: 576)
!190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !191, size: 64)
!191 = !DIDerivedType(tag: DW_TAG_typedef, name: "EFI_SIMPLE_TEXT_OUTPUT_MODE", file: !149, line: 379, baseType: !192)
!192 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !149, line: 349, size: 192, elements: !193)
!193 = !{!194, !197, !198, !199, !200, !201}
!194 = !DIDerivedType(tag: DW_TAG_member, name: "MaxMode", scope: !192, file: !149, line: 353, baseType: !195, size: 32)
!195 = !DIDerivedType(tag: DW_TAG_typedef, name: "INT32", file: !54, line: 192, baseType: !196)
!196 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "Mode", scope: !192, file: !149, line: 362, baseType: !195, size: 32, offset: 32)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "Attribute", scope: !192, file: !149, line: 366, baseType: !195, size: 32, offset: 64)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "CursorColumn", scope: !192, file: !149, line: 370, baseType: !195, size: 32, offset: 96)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "CursorRow", scope: !192, file: !149, line: 374, baseType: !195, size: 32, offset: 128)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "CursorVisible", scope: !192, file: !149, line: 378, baseType: !53, size: 8, offset: 160)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "StandardErrorHandle", scope: !102, file: !14, line: 2092, baseType: !98, size: 64, offset: 576)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "StdErr", scope: !102, file: !14, line: 2097, baseType: !147, size: 64, offset: 640)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "RuntimeServices", scope: !102, file: !14, line: 2101, baseType: !205, size: 64, offset: 704)
!205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !206, size: 64)
!206 = !DIDerivedType(tag: DW_TAG_typedef, name: "EFI_RUNTIME_SERVICES", file: !14, line: 1933, baseType: !207)
!207 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !14, line: 1886, size: 1216, elements: !208)
!208 = !{!209, !210, !239, !244, !250, !255, !271, !277, !295, !300, !305, !311, !316, !321, !327, !341, !348}
!209 = !DIDerivedType(tag: DW_TAG_member, name: "Hdr", scope: !207, file: !14, line: 1890, baseType: !105, size: 192)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "GetTime", scope: !207, file: !14, line: 1895, baseType: !211, size: 64, offset: 192)
!211 = !DIDerivedType(tag: DW_TAG_typedef, name: "EFI_GET_TIME", file: !14, line: 874, baseType: !212)
!212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !213, size: 64)
!213 = !DISubroutineType(types: !214)
!214 = !{!130, !215, !232}
!215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !216, size: 64)
!216 = !DIDerivedType(tag: DW_TAG_typedef, name: "EFI_TIME", file: !63, line: 82, baseType: !217)
!217 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !63, line: 70, size: 128, elements: !218)
!218 = !{!219, !220, !221, !222, !223, !224, !225, !226, !227, !230, !231}
!219 = !DIDerivedType(tag: DW_TAG_member, name: "Year", scope: !217, file: !63, line: 71, baseType: !141, size: 16)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "Month", scope: !217, file: !63, line: 72, baseType: !82, size: 8, offset: 16)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "Day", scope: !217, file: !63, line: 73, baseType: !82, size: 8, offset: 24)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "Hour", scope: !217, file: !63, line: 74, baseType: !82, size: 8, offset: 32)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "Minute", scope: !217, file: !63, line: 75, baseType: !82, size: 8, offset: 40)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "Second", scope: !217, file: !63, line: 76, baseType: !82, size: 8, offset: 48)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "Pad1", scope: !217, file: !63, line: 77, baseType: !82, size: 8, offset: 56)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "Nanosecond", scope: !217, file: !63, line: 78, baseType: !96, size: 32, offset: 64)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "TimeZone", scope: !217, file: !63, line: 79, baseType: !228, size: 16, offset: 96)
!228 = !DIDerivedType(tag: DW_TAG_typedef, name: "INT16", file: !54, line: 205, baseType: !229)
!229 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "Daylight", scope: !217, file: !63, line: 80, baseType: !82, size: 8, offset: 112)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "Pad2", scope: !217, file: !63, line: 81, baseType: !82, size: 8, offset: 120)
!232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !233, size: 64)
!233 = !DIDerivedType(tag: DW_TAG_typedef, name: "EFI_TIME_CAPABILITIES", file: !14, line: 857, baseType: !234)
!234 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !14, line: 834, size: 96, elements: !235)
!235 = !{!236, !237, !238}
!236 = !DIDerivedType(tag: DW_TAG_member, name: "Resolution", scope: !234, file: !14, line: 841, baseType: !96, size: 32)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "Accuracy", scope: !234, file: !14, line: 848, baseType: !96, size: 32, offset: 32)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "SetsToZero", scope: !234, file: !14, line: 856, baseType: !53, size: 8, offset: 64)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "SetTime", scope: !207, file: !14, line: 1896, baseType: !240, size: 64, offset: 256)
!240 = !DIDerivedType(tag: DW_TAG_typedef, name: "EFI_SET_TIME", file: !14, line: 891, baseType: !241)
!241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !242, size: 64)
!242 = !DISubroutineType(types: !243)
!243 = !{!130, !215}
!244 = !DIDerivedType(tag: DW_TAG_member, name: "GetWakeupTime", scope: !207, file: !14, line: 1897, baseType: !245, size: 64, offset: 320)
!245 = !DIDerivedType(tag: DW_TAG_typedef, name: "EFI_GET_WAKEUP_TIME", file: !14, line: 912, baseType: !246)
!246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !247, size: 64)
!247 = !DISubroutineType(types: !248)
!248 = !{!130, !249, !249, !215}
!249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !53, size: 64)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "SetWakeupTime", scope: !207, file: !14, line: 1898, baseType: !251, size: 64, offset: 384)
!251 = !DIDerivedType(tag: DW_TAG_typedef, name: "EFI_SET_WAKEUP_TIME", file: !14, line: 934, baseType: !252)
!252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !253, size: 64)
!253 = !DISubroutineType(types: !254)
!254 = !{!130, !53, !215}
!255 = !DIDerivedType(tag: DW_TAG_member, name: "SetVirtualAddressMap", scope: !207, file: !14, line: 1903, baseType: !256, size: 64, offset: 448)
!256 = !DIDerivedType(tag: DW_TAG_typedef, name: "EFI_SET_VIRTUAL_ADDRESS_MAP", file: !14, line: 311, baseType: !257)
!257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !258, size: 64)
!258 = !DISubroutineType(types: !259)
!259 = !{!130, !70, !70, !96, !260}
!260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !261, size: 64)
!261 = !DIDerivedType(tag: DW_TAG_typedef, name: "EFI_MEMORY_DESCRIPTOR", file: !14, line: 159, baseType: !262)
!262 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !14, line: 127, size: 320, elements: !263)
!263 = !{!264, !265, !267, !269, !270}
!264 = !DIDerivedType(tag: DW_TAG_member, name: "Type", scope: !262, file: !14, line: 133, baseType: !96, size: 32)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "PhysicalStart", scope: !262, file: !14, line: 139, baseType: !266, size: 64, offset: 64)
!266 = !DIDerivedType(tag: DW_TAG_typedef, name: "EFI_PHYSICAL_ADDRESS", file: !63, line: 52, baseType: !71)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "VirtualStart", scope: !262, file: !14, line: 145, baseType: !268, size: 64, offset: 128)
!268 = !DIDerivedType(tag: DW_TAG_typedef, name: "EFI_VIRTUAL_ADDRESS", file: !63, line: 57, baseType: !71)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "NumberOfPages", scope: !262, file: !14, line: 152, baseType: !71, size: 64, offset: 192)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "Attribute", scope: !262, file: !14, line: 158, baseType: !71, size: 64, offset: 256)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "ConvertPointer", scope: !207, file: !14, line: 1904, baseType: !272, size: 64, offset: 512)
!272 = !DIDerivedType(tag: DW_TAG_typedef, name: "EFI_CONVERT_POINTER", file: !14, line: 406, baseType: !273)
!273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !274, size: 64)
!274 = !DISubroutineType(types: !275)
!275 = !{!130, !70, !276}
!276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !52, size: 64)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "GetVariable", scope: !207, file: !14, line: 1909, baseType: !278, size: 64, offset: 576)
!278 = !DIDerivedType(tag: DW_TAG_typedef, name: "EFI_GET_VARIABLE", file: !14, line: 670, baseType: !279)
!279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !280, size: 64)
!280 = !DISubroutineType(types: !281)
!281 = !{!130, !114, !282, !294, !169, !52}
!282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !283, size: 64)
!283 = !DIDerivedType(tag: DW_TAG_typedef, name: "EFI_GUID", file: !63, line: 27, baseType: !284)
!284 = !DIDerivedType(tag: DW_TAG_typedef, name: "GUID", file: !65, line: 218, baseType: !285)
!285 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !65, line: 213, size: 128, elements: !286)
!286 = !{!287, !288, !289, !290}
!287 = !DIDerivedType(tag: DW_TAG_member, name: "Data1", scope: !285, file: !65, line: 214, baseType: !96, size: 32)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "Data2", scope: !285, file: !65, line: 215, baseType: !141, size: 16, offset: 32)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "Data3", scope: !285, file: !65, line: 216, baseType: !141, size: 16, offset: 48)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "Data4", scope: !285, file: !65, line: 217, baseType: !291, size: 64, offset: 64)
!291 = !DICompositeType(tag: DW_TAG_array_type, baseType: !82, size: 64, elements: !292)
!292 = !{!293}
!293 = !DISubrange(count: 8)
!294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !96, size: 64)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "GetNextVariableName", scope: !207, file: !14, line: 1910, baseType: !296, size: 64, offset: 640)
!296 = !DIDerivedType(tag: DW_TAG_typedef, name: "EFI_GET_NEXT_VARIABLE_NAME", file: !14, line: 739, baseType: !297)
!297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !298, size: 64)
!298 = !DISubroutineType(types: !299)
!299 = !{!130, !169, !114, !282}
!300 = !DIDerivedType(tag: DW_TAG_member, name: "SetVariable", scope: !207, file: !14, line: 1911, baseType: !301, size: 64, offset: 704)
!301 = !DIDerivedType(tag: DW_TAG_typedef, name: "EFI_SET_VARIABLE", file: !14, line: 781, baseType: !302)
!302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !303, size: 64)
!303 = !DISubroutineType(types: !304)
!304 = !{!130, !114, !282, !96, !70, !52}
!305 = !DIDerivedType(tag: DW_TAG_member, name: "GetAccessVariable", scope: !207, file: !14, line: 1914, baseType: !306, size: 64, offset: 768)
!306 = !DIDerivedType(tag: DW_TAG_typedef, name: "EFI_GET_ACCESS_VARIABLE", file: !14, line: 703, baseType: !307)
!307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !308, size: 64)
!308 = !DISubroutineType(types: !309)
!309 = !{!130, !114, !282, !294, !310, !169, !52}
!310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !62, size: 64)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "SetAccessVariable", scope: !207, file: !14, line: 1915, baseType: !312, size: 64, offset: 832)
!312 = !DIDerivedType(tag: DW_TAG_typedef, name: "EFI_SET_ACCESS_VARIABLE", file: !14, line: 822, baseType: !313)
!313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !314, size: 64)
!314 = !DISubroutineType(types: !315)
!315 = !{!130, !114, !282, !96, !310, !70, !52}
!316 = !DIDerivedType(tag: DW_TAG_member, name: "GetNextHighMonotonicCount", scope: !207, file: !14, line: 1920, baseType: !317, size: 64, offset: 896)
!317 = !DIDerivedType(tag: DW_TAG_typedef, name: "EFI_GET_NEXT_HIGH_MONO_COUNT", file: !14, line: 1155, baseType: !318)
!318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !319, size: 64)
!319 = !DISubroutineType(types: !320)
!320 = !{!130, !294}
!321 = !DIDerivedType(tag: DW_TAG_member, name: "ResetSystem", scope: !207, file: !14, line: 1921, baseType: !322, size: 64, offset: 960)
!322 = !DIDerivedType(tag: DW_TAG_typedef, name: "EFI_RESET_SYSTEM", file: !14, line: 1120, baseType: !323)
!323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !324, size: 64)
!324 = !DISubroutineType(types: !325)
!325 = !{null, !326, !130, !70, !52}
!326 = !DIDerivedType(tag: DW_TAG_typedef, name: "EFI_RESET_TYPE", file: !6, line: 140, baseType: !5)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "UpdateCapsule", scope: !207, file: !14, line: 1926, baseType: !328, size: 64, offset: 1024)
!328 = !DIDerivedType(tag: DW_TAG_typedef, name: "EFI_UPDATE_CAPSULE", file: !14, line: 1781, baseType: !329)
!329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !330, size: 64)
!330 = !DISubroutineType(types: !331)
!331 = !{!130, !332, !70, !266}
!332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !333, size: 64)
!333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !334, size: 64)
!334 = !DIDerivedType(tag: DW_TAG_typedef, name: "EFI_CAPSULE_HEADER", file: !14, line: 1727, baseType: !335)
!335 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !14, line: 1706, size: 224, elements: !336)
!336 = !{!337, !338, !339, !340}
!337 = !DIDerivedType(tag: DW_TAG_member, name: "CapsuleGuid", scope: !335, file: !14, line: 1710, baseType: !283, size: 128)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "HeaderSize", scope: !335, file: !14, line: 1716, baseType: !96, size: 32, offset: 128)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "Flags", scope: !335, file: !14, line: 1722, baseType: !96, size: 32, offset: 160)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "CapsuleImageSize", scope: !335, file: !14, line: 1726, baseType: !96, size: 32, offset: 192)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "QueryCapsuleCapabilities", scope: !207, file: !14, line: 1927, baseType: !342, size: 64, offset: 1088)
!342 = !DIDerivedType(tag: DW_TAG_typedef, name: "EFI_QUERY_CAPSULE_CAPABILITIES", file: !14, line: 1812, baseType: !343)
!343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !344, size: 64)
!344 = !DISubroutineType(types: !345)
!345 = !{!130, !332, !70, !346, !347}
!346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !71, size: 64)
!347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !326, size: 64)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "QueryVariableInfo", scope: !207, file: !14, line: 1932, baseType: !349, size: 64, offset: 1152)
!349 = !DIDerivedType(tag: DW_TAG_typedef, name: "EFI_QUERY_VARIABLE_INFO", file: !14, line: 1843, baseType: !350)
!350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !351, size: 64)
!351 = !DISubroutineType(types: !352)
!352 = !{!130, !96, !346, !346, !346}
!353 = !DIDerivedType(tag: DW_TAG_member, name: "BootServices", scope: !102, file: !14, line: 2105, baseType: !354, size: 64, offset: 768)
!354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !355, size: 64)
!355 = !DIDerivedType(tag: DW_TAG_typedef, name: "EFI_BOOT_SERVICES", file: !14, line: 2034, baseType: !356)
!356 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !14, line: 1941, size: 3008, elements: !357)
!357 = !{!358, !359, !365, !370, !378, !383, !388, !393, !398, !408, !414, !419, !424, !426, !428, !435, !440, !445, !450, !451, !456, !462, !477, !482, !487, !493, !498, !503, !508, !513, !518, !523, !528, !533, !538, !543, !557, !564, !570, !575, !580, !585, !590, !595, !600}
!358 = !DIDerivedType(tag: DW_TAG_member, name: "Hdr", scope: !356, file: !14, line: 1945, baseType: !105, size: 192)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "RaiseTPL", scope: !356, file: !14, line: 1950, baseType: !360, size: 64, offset: 192)
!360 = !DIDerivedType(tag: DW_TAG_typedef, name: "EFI_RAISE_TPL", file: !14, line: 628, baseType: !361)
!361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !362, size: 64)
!362 = !DISubroutineType(types: !363)
!363 = !{!364, !364}
!364 = !DIDerivedType(tag: DW_TAG_typedef, name: "EFI_TPL", file: !63, line: 43, baseType: !70)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "RestoreTPL", scope: !356, file: !14, line: 1951, baseType: !366, size: 64, offset: 256)
!366 = !DIDerivedType(tag: DW_TAG_typedef, name: "EFI_RESTORE_TPL", file: !14, line: 640, baseType: !367)
!367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !368, size: 64)
!368 = !DISubroutineType(types: !369)
!369 = !{null, !364}
!370 = !DIDerivedType(tag: DW_TAG_member, name: "AllocatePages", scope: !356, file: !14, line: 1956, baseType: !371, size: 64, offset: 320)
!371 = !DIDerivedType(tag: DW_TAG_typedef, name: "EFI_ALLOCATE_PAGES", file: !14, line: 187, baseType: !372)
!372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !373, size: 64)
!373 = !DISubroutineType(types: !374)
!374 = !{!130, !375, !376, !70, !377}
!375 = !DIDerivedType(tag: DW_TAG_typedef, name: "EFI_ALLOCATE_TYPE", file: !14, line: 46, baseType: !13)
!376 = !DIDerivedType(tag: DW_TAG_typedef, name: "EFI_MEMORY_TYPE", file: !6, line: 107, baseType: !20)
!377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !266, size: 64)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "FreePages", scope: !356, file: !14, line: 1957, baseType: !379, size: 64, offset: 384)
!379 = !DIDerivedType(tag: DW_TAG_typedef, name: "EFI_FREE_PAGES", file: !14, line: 208, baseType: !380)
!380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !381, size: 64)
!381 = !DISubroutineType(types: !382)
!382 = !{!130, !266, !70}
!383 = !DIDerivedType(tag: DW_TAG_member, name: "GetMemoryMap", scope: !356, file: !14, line: 1958, baseType: !384, size: 64, offset: 448)
!384 = !DIDerivedType(tag: DW_TAG_typedef, name: "EFI_GET_MEMORY_MAP", file: !14, line: 240, baseType: !385)
!385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !386, size: 64)
!386 = !DISubroutineType(types: !387)
!387 = !{!130, !169, !260, !169, !169, !294}
!388 = !DIDerivedType(tag: DW_TAG_member, name: "AllocatePool", scope: !356, file: !14, line: 1959, baseType: !389, size: 64, offset: 512)
!389 = !DIDerivedType(tag: DW_TAG_typedef, name: "EFI_ALLOCATE_POOL", file: !14, line: 269, baseType: !390)
!390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !391, size: 64)
!391 = !DISubroutineType(types: !392)
!392 = !{!130, !376, !70, !276}
!393 = !DIDerivedType(tag: DW_TAG_member, name: "FreePool", scope: !356, file: !14, line: 1960, baseType: !394, size: 64, offset: 576)
!394 = !DIDerivedType(tag: DW_TAG_typedef, name: "EFI_FREE_POOL", file: !14, line: 286, baseType: !395)
!395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !396, size: 64)
!396 = !DISubroutineType(types: !397)
!397 = !{!130, !52}
!398 = !DIDerivedType(tag: DW_TAG_member, name: "CreateEvent", scope: !356, file: !14, line: 1965, baseType: !399, size: 64, offset: 640)
!399 = !DIDerivedType(tag: DW_TAG_typedef, name: "EFI_CREATE_EVENT", file: !14, line: 464, baseType: !400)
!400 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !401, size: 64)
!401 = !DISubroutineType(types: !402)
!402 = !{!130, !96, !364, !403, !52, !407}
!403 = !DIDerivedType(tag: DW_TAG_typedef, name: "EFI_EVENT_NOTIFY", file: !14, line: 441, baseType: !404)
!404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !405, size: 64)
!405 = !DISubroutineType(types: !406)
!406 = !{null, !144, !52}
!407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !144, size: 64)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "SetTimer", scope: !356, file: !14, line: 1966, baseType: !409, size: 64, offset: 704)
!409 = !DIDerivedType(tag: DW_TAG_typedef, name: "EFI_SET_TIMER", file: !14, line: 538, baseType: !410)
!410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !411, size: 64)
!411 = !DISubroutineType(types: !412)
!412 = !{!130, !144, !413, !71}
!413 = !DIDerivedType(tag: DW_TAG_typedef, name: "EFI_TIMER_DELAY", file: !14, line: 518, baseType: !38)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "WaitForEvent", scope: !356, file: !14, line: 1967, baseType: !415, size: 64, offset: 768)
!415 = !DIDerivedType(tag: DW_TAG_typedef, name: "EFI_WAIT_FOR_EVENT", file: !14, line: 574, baseType: !416)
!416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !417, size: 64)
!417 = !DISubroutineType(types: !418)
!418 = !{!130, !70, !407, !169}
!419 = !DIDerivedType(tag: DW_TAG_member, name: "SignalEvent", scope: !356, file: !14, line: 1968, baseType: !420, size: 64, offset: 832)
!420 = !DIDerivedType(tag: DW_TAG_typedef, name: "EFI_SIGNAL_EVENT", file: !14, line: 554, baseType: !421)
!421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !422, size: 64)
!422 = !DISubroutineType(types: !423)
!423 = !{!130, !144}
!424 = !DIDerivedType(tag: DW_TAG_member, name: "CloseEvent", scope: !356, file: !14, line: 1969, baseType: !425, size: 64, offset: 896)
!425 = !DIDerivedType(tag: DW_TAG_typedef, name: "EFI_CLOSE_EVENT", file: !14, line: 590, baseType: !421)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "CheckEvent", scope: !356, file: !14, line: 1970, baseType: !427, size: 64, offset: 960)
!427 = !DIDerivedType(tag: DW_TAG_typedef, name: "EFI_CHECK_EVENT", file: !14, line: 606, baseType: !421)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "InstallProtocolInterface", scope: !356, file: !14, line: 1975, baseType: !429, size: 64, offset: 1024)
!429 = !DIDerivedType(tag: DW_TAG_typedef, name: "EFI_INSTALL_PROTOCOL_INTERFACE", file: !14, line: 1246, baseType: !430)
!430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !431, size: 64)
!431 = !DISubroutineType(types: !432)
!432 = !{!130, !433, !282, !434, !52}
!433 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !98, size: 64)
!434 = !DIDerivedType(tag: DW_TAG_typedef, name: "EFI_INTERFACE_TYPE", file: !14, line: 1222, baseType: !43)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "ReinstallProtocolInterface", scope: !356, file: !14, line: 1976, baseType: !436, size: 64, offset: 1088)
!436 = !DIDerivedType(tag: DW_TAG_typedef, name: "EFI_REINSTALL_PROTOCOL_INTERFACE", file: !14, line: 1296, baseType: !437)
!437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !438, size: 64)
!438 = !DISubroutineType(types: !439)
!439 = !{!130, !98, !282, !52, !52}
!440 = !DIDerivedType(tag: DW_TAG_member, name: "UninstallProtocolInterface", scope: !356, file: !14, line: 1977, baseType: !441, size: 64, offset: 1152)
!441 = !DIDerivedType(tag: DW_TAG_typedef, name: "EFI_UNINSTALL_PROTOCOL_INTERFACE", file: !14, line: 1322, baseType: !442)
!442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !443, size: 64)
!443 = !DISubroutineType(types: !444)
!444 = !{!130, !98, !282, !52}
!445 = !DIDerivedType(tag: DW_TAG_member, name: "HandleProtocol", scope: !356, file: !14, line: 1978, baseType: !446, size: 64, offset: 1216)
!446 = !DIDerivedType(tag: DW_TAG_typedef, name: "EFI_HANDLE_PROTOCOL", file: !14, line: 1363, baseType: !447)
!447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !448, size: 64)
!448 = !DISubroutineType(types: !449)
!449 = !{!130, !98, !282, !276}
!450 = !DIDerivedType(tag: DW_TAG_member, name: "Reserved", scope: !356, file: !14, line: 1979, baseType: !52, size: 64, offset: 1280)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "RegisterProtocolNotify", scope: !356, file: !14, line: 1980, baseType: !452, size: 64, offset: 1344)
!452 = !DIDerivedType(tag: DW_TAG_typedef, name: "EFI_REGISTER_PROTOCOL_NOTIFY", file: !14, line: 1524, baseType: !453)
!453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !454, size: 64)
!454 = !DISubroutineType(types: !455)
!455 = !{!130, !282, !144, !276}
!456 = !DIDerivedType(tag: DW_TAG_member, name: "LocateHandle", scope: !356, file: !14, line: 1981, baseType: !457, size: 64, offset: 1408)
!457 = !DIDerivedType(tag: DW_TAG_typedef, name: "EFI_LOCATE_HANDLE", file: !14, line: 1573, baseType: !458)
!458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !459, size: 64)
!459 = !DISubroutineType(types: !460)
!460 = !{!130, !461, !282, !52, !169, !433}
!461 = !DIDerivedType(tag: DW_TAG_typedef, name: "EFI_LOCATE_SEARCH_TYPE", file: !14, line: 1547, baseType: !46)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "LocateDevicePath", scope: !356, file: !14, line: 1982, baseType: !463, size: 64, offset: 1472)
!463 = !DIDerivedType(tag: DW_TAG_typedef, name: "EFI_LOCATE_DEVICE_PATH", file: !14, line: 1599, baseType: !464)
!464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !465, size: 64)
!465 = !DISubroutineType(types: !466)
!466 = !{!130, !282, !467, !433}
!467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !468, size: 64)
!468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !469, size: 64)
!469 = !DIDerivedType(tag: DW_TAG_typedef, name: "EFI_DEVICE_PATH_PROTOCOL", file: !470, line: 58, baseType: !471)
!470 = !DIFile(filename: "./Uefi/Protocol/DevicePath.h", directory: "/home/hira/Research/HARDEN/repositories/HARDEN_demo1/edk2/EmulatorPkg/Demo1_Bob", checksumkind: CSK_MD5, checksum: "b97c129759f8893462bd2c573bd0d83a")
!471 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !470, line: 43, size: 32, elements: !472)
!472 = !{!473, !474, !475}
!473 = !DIDerivedType(tag: DW_TAG_member, name: "Type", scope: !471, file: !470, line: 44, baseType: !82, size: 8)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "SubType", scope: !471, file: !470, line: 51, baseType: !82, size: 8, offset: 8)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "Length", scope: !471, file: !470, line: 56, baseType: !476, size: 16, offset: 16)
!476 = !DICompositeType(tag: DW_TAG_array_type, baseType: !82, size: 16, elements: !73)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "InstallConfigurationTable", scope: !356, file: !14, line: 1983, baseType: !478, size: 64, offset: 1536)
!478 = !DIDerivedType(tag: DW_TAG_typedef, name: "EFI_INSTALL_CONFIGURATION_TABLE", file: !14, line: 1620, baseType: !479)
!479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !480, size: 64)
!480 = !DISubroutineType(types: !481)
!481 = !{!130, !282, !52}
!482 = !DIDerivedType(tag: DW_TAG_member, name: "LoadImage", scope: !356, file: !14, line: 1988, baseType: !483, size: 64, offset: 1600)
!483 = !DIDerivedType(tag: DW_TAG_typedef, name: "EFI_IMAGE_LOAD", file: !14, line: 971, baseType: !484)
!484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !485, size: 64)
!485 = !DISubroutineType(types: !486)
!486 = !{!130, !53, !98, !468, !52, !70, !433}
!487 = !DIDerivedType(tag: DW_TAG_member, name: "StartImage", scope: !356, file: !14, line: 1989, baseType: !488, size: 64, offset: 1664)
!488 = !DIDerivedType(tag: DW_TAG_typedef, name: "EFI_IMAGE_START", file: !14, line: 996, baseType: !489)
!489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !490, size: 64)
!490 = !DISubroutineType(types: !491)
!491 = !{!130, !98, !169, !492}
!492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !114, size: 64)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "Exit", scope: !356, file: !14, line: 1990, baseType: !494, size: 64, offset: 1728)
!494 = !DIDerivedType(tag: DW_TAG_typedef, name: "EFI_EXIT", file: !14, line: 1024, baseType: !495)
!495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !496, size: 64)
!496 = !DISubroutineType(types: !497)
!497 = !{!130, !98, !130, !70, !114}
!498 = !DIDerivedType(tag: DW_TAG_member, name: "UnloadImage", scope: !356, file: !14, line: 1991, baseType: !499, size: 64, offset: 1792)
!499 = !DIDerivedType(tag: DW_TAG_typedef, name: "EFI_IMAGE_UNLOAD", file: !14, line: 1042, baseType: !500)
!500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !501, size: 64)
!501 = !DISubroutineType(types: !502)
!502 = !{!130, !98}
!503 = !DIDerivedType(tag: DW_TAG_member, name: "ExitBootServices", scope: !356, file: !14, line: 1992, baseType: !504, size: 64, offset: 1856)
!504 = !DIDerivedType(tag: DW_TAG_typedef, name: "EFI_EXIT_BOOT_SERVICES", file: !14, line: 1058, baseType: !505)
!505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !506, size: 64)
!506 = !DISubroutineType(types: !507)
!507 = !{!130, !98, !70}
!508 = !DIDerivedType(tag: DW_TAG_member, name: "GetNextMonotonicCount", scope: !356, file: !14, line: 1997, baseType: !509, size: 64, offset: 1920)
!509 = !DIDerivedType(tag: DW_TAG_typedef, name: "EFI_GET_NEXT_MONOTONIC_COUNT", file: !14, line: 1139, baseType: !510)
!510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !511, size: 64)
!511 = !DISubroutineType(types: !512)
!512 = !{!130, !346}
!513 = !DIDerivedType(tag: DW_TAG_member, name: "Stall", scope: !356, file: !14, line: 1998, baseType: !514, size: 64, offset: 1984)
!514 = !DIDerivedType(tag: DW_TAG_typedef, name: "EFI_STALL", file: !14, line: 1074, baseType: !515)
!515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !516, size: 64)
!516 = !DISubroutineType(types: !517)
!517 = !{!130, !70}
!518 = !DIDerivedType(tag: DW_TAG_member, name: "SetWatchdogTimer", scope: !356, file: !14, line: 1999, baseType: !519, size: 64, offset: 2048)
!519 = !DIDerivedType(tag: DW_TAG_typedef, name: "EFI_SET_WATCHDOG_TIMER", file: !14, line: 1096, baseType: !520)
!520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !521, size: 64)
!521 = !DISubroutineType(types: !522)
!522 = !{!130, !70, !71, !70, !114}
!523 = !DIDerivedType(tag: DW_TAG_member, name: "ConnectController", scope: !356, file: !14, line: 2004, baseType: !524, size: 64, offset: 2112)
!524 = !DIDerivedType(tag: DW_TAG_typedef, name: "EFI_CONNECT_CONTROLLER", file: !14, line: 345, baseType: !525)
!525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !526, size: 64)
!526 = !DISubroutineType(types: !527)
!527 = !{!130, !98, !433, !468, !53}
!528 = !DIDerivedType(tag: DW_TAG_member, name: "DisconnectController", scope: !356, file: !14, line: 2005, baseType: !529, size: 64, offset: 2176)
!529 = !DIDerivedType(tag: DW_TAG_typedef, name: "EFI_DISCONNECT_CONTROLLER", file: !14, line: 378, baseType: !530)
!530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !531, size: 64)
!531 = !DISubroutineType(types: !532)
!532 = !{!130, !98, !98, !98}
!533 = !DIDerivedType(tag: DW_TAG_member, name: "OpenProtocol", scope: !356, file: !14, line: 2010, baseType: !534, size: 64, offset: 2240)
!534 = !DIDerivedType(tag: DW_TAG_typedef, name: "EFI_OPEN_PROTOCOL", file: !14, line: 1405, baseType: !535)
!535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !536, size: 64)
!536 = !DISubroutineType(types: !537)
!537 = !{!130, !98, !282, !276, !98, !98, !96}
!538 = !DIDerivedType(tag: DW_TAG_member, name: "CloseProtocol", scope: !356, file: !14, line: 2011, baseType: !539, size: 64, offset: 2304)
!539 = !DIDerivedType(tag: DW_TAG_typedef, name: "EFI_CLOSE_PROTOCOL", file: !14, line: 1437, baseType: !540)
!540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !541, size: 64)
!541 = !DISubroutineType(types: !542)
!542 = !{!130, !98, !282, !98, !98}
!543 = !DIDerivedType(tag: DW_TAG_member, name: "OpenProtocolInformation", scope: !356, file: !14, line: 2012, baseType: !544, size: 64, offset: 2368)
!544 = !DIDerivedType(tag: DW_TAG_typedef, name: "EFI_OPEN_PROTOCOL_INFORMATION", file: !14, line: 1471, baseType: !545)
!545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !546, size: 64)
!546 = !DISubroutineType(types: !547)
!547 = !{!130, !98, !282, !548, !169}
!548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !549, size: 64)
!549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !550, size: 64)
!550 = !DIDerivedType(tag: DW_TAG_typedef, name: "EFI_OPEN_PROTOCOL_INFORMATION_ENTRY", file: !14, line: 1452, baseType: !551)
!551 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !14, line: 1447, size: 192, elements: !552)
!552 = !{!553, !554, !555, !556}
!553 = !DIDerivedType(tag: DW_TAG_member, name: "AgentHandle", scope: !551, file: !14, line: 1448, baseType: !98, size: 64)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "ControllerHandle", scope: !551, file: !14, line: 1449, baseType: !98, size: 64, offset: 64)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "Attributes", scope: !551, file: !14, line: 1450, baseType: !96, size: 32, offset: 128)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "OpenCount", scope: !551, file: !14, line: 1451, baseType: !96, size: 32, offset: 160)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "ProtocolsPerHandle", scope: !356, file: !14, line: 2017, baseType: !558, size: 64, offset: 2432)
!558 = !DIDerivedType(tag: DW_TAG_typedef, name: "EFI_PROTOCOLS_PER_HANDLE", file: !14, line: 1501, baseType: !559)
!559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !560, size: 64)
!560 = !DISubroutineType(types: !561)
!561 = !{!130, !98, !562, !169}
!562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !563, size: 64)
!563 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !282, size: 64)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "LocateHandleBuffer", scope: !356, file: !14, line: 2018, baseType: !565, size: 64, offset: 2496)
!565 = !DIDerivedType(tag: DW_TAG_typedef, name: "EFI_LOCATE_HANDLE_BUFFER", file: !14, line: 1646, baseType: !566)
!566 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !567, size: 64)
!567 = !DISubroutineType(types: !568)
!568 = !{!130, !461, !282, !52, !169, !569}
!569 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !433, size: 64)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "LocateProtocol", scope: !356, file: !14, line: 2019, baseType: !571, size: 64, offset: 2560)
!571 = !DIDerivedType(tag: DW_TAG_typedef, name: "EFI_LOCATE_PROTOCOL", file: !14, line: 1673, baseType: !572)
!572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !573, size: 64)
!573 = !DISubroutineType(types: !574)
!574 = !{!130, !282, !52, !276}
!575 = !DIDerivedType(tag: DW_TAG_member, name: "InstallMultipleProtocolInterfaces", scope: !356, file: !14, line: 2020, baseType: !576, size: 64, offset: 2624)
!576 = !DIDerivedType(tag: DW_TAG_typedef, name: "EFI_INSTALL_MULTIPLE_PROTOCOL_INTERFACES", file: !14, line: 1271, baseType: !577)
!577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !578, size: 64)
!578 = !DISubroutineType(types: !579)
!579 = !{!130, !433, null}
!580 = !DIDerivedType(tag: DW_TAG_member, name: "UninstallMultipleProtocolInterfaces", scope: !356, file: !14, line: 2021, baseType: !581, size: 64, offset: 2688)
!581 = !DIDerivedType(tag: DW_TAG_typedef, name: "EFI_UNINSTALL_MULTIPLE_PROTOCOL_INTERFACES", file: !14, line: 1341, baseType: !582)
!582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !583, size: 64)
!583 = !DISubroutineType(types: !584)
!584 = !{!130, !98, null}
!585 = !DIDerivedType(tag: DW_TAG_member, name: "CalculateCrc32", scope: !356, file: !14, line: 2026, baseType: !586, size: 64, offset: 2752)
!586 = !DIDerivedType(tag: DW_TAG_typedef, name: "EFI_CALCULATE_CRC32", file: !14, line: 1176, baseType: !587)
!587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !588, size: 64)
!588 = !DISubroutineType(types: !589)
!589 = !{!130, !52, !70, !294}
!590 = !DIDerivedType(tag: DW_TAG_member, name: "CopyMem", scope: !356, file: !14, line: 2031, baseType: !591, size: 64, offset: 2816)
!591 = !DIDerivedType(tag: DW_TAG_typedef, name: "EFI_COPY_MEM", file: !14, line: 1192, baseType: !592)
!592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !593, size: 64)
!593 = !DISubroutineType(types: !594)
!594 = !{null, !52, !52, !70}
!595 = !DIDerivedType(tag: DW_TAG_member, name: "SetMem", scope: !356, file: !14, line: 2032, baseType: !596, size: 64, offset: 2880)
!596 = !DIDerivedType(tag: DW_TAG_typedef, name: "EFI_SET_MEM", file: !14, line: 1208, baseType: !597)
!597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !598, size: 64)
!598 = !DISubroutineType(types: !599)
!599 = !{null, !52, !70, !82}
!600 = !DIDerivedType(tag: DW_TAG_member, name: "CreateEventEx", scope: !356, file: !14, line: 2033, baseType: !601, size: 64, offset: 2944)
!601 = !DIDerivedType(tag: DW_TAG_typedef, name: "EFI_CREATE_EVENT_EX", file: !14, line: 493, baseType: !602)
!602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !603, size: 64)
!603 = !DISubroutineType(types: !604)
!604 = !{!130, !96, !364, !403, !605, !607, !407}
!605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !606, size: 64)
!606 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !608, size: 64)
!608 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !283)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "NumberOfTableEntries", scope: !102, file: !14, line: 2109, baseType: !70, size: 64, offset: 832)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "ConfigurationTable", scope: !102, file: !14, line: 2114, baseType: !611, size: 64, offset: 896)
!611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !612, size: 64)
!612 = !DIDerivedType(tag: DW_TAG_typedef, name: "EFI_CONFIGURATION_TABLE", file: !14, line: 2049, baseType: !613)
!613 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !14, line: 2040, size: 192, elements: !614)
!614 = !{!615, !616}
!615 = !DIDerivedType(tag: DW_TAG_member, name: "VendorGuid", scope: !613, file: !14, line: 2044, baseType: !283, size: 128)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "VendorTable", scope: !613, file: !14, line: 2048, baseType: !52, size: 64, offset: 128)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "DeviceHandle", scope: !93, file: !92, line: 53, baseType: !98, size: 64, offset: 192)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "FilePath", scope: !93, file: !92, line: 54, baseType: !468, size: 64, offset: 256)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "Reserved", scope: !93, file: !92, line: 56, baseType: !52, size: 64, offset: 320)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "LoadOptionsSize", scope: !93, file: !92, line: 61, baseType: !96, size: 32, offset: 384)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "LoadOptions", scope: !93, file: !92, line: 62, baseType: !52, size: 64, offset: 448)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "ImageBase", scope: !93, file: !92, line: 67, baseType: !52, size: 64, offset: 512)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "ImageSize", scope: !93, file: !92, line: 68, baseType: !71, size: 64, offset: 576)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "ImageCodeType", scope: !93, file: !92, line: 69, baseType: !376, size: 32, offset: 640)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "ImageDataType", scope: !93, file: !92, line: 70, baseType: !376, size: 32, offset: 672)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "Unload", scope: !93, file: !92, line: 71, baseType: !499, size: 64, offset: 704)
!627 = !{!0, !628, !647, !649, !651, !653, !655, !657, !669, !682, !684, !686, !688, !701}
!628 = !DIGlobalVariableExpression(var: !629, expr: !DIExpression())
!629 = distinct !DIGlobalVariable(name: "RngProtocol", scope: !2, file: !58, line: 24, type: !630, isLocal: false, isDefinition: true)
!630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !631, size: 64)
!631 = !DIDerivedType(tag: DW_TAG_typedef, name: "EFI_RNG_PROTOCOL", file: !632, line: 22, baseType: !633)
!632 = !DIFile(filename: "./../Demo1_Alice/../Demo1_Access_Key/Protocol/Rng.h", directory: "/home/hira/Research/HARDEN/repositories/HARDEN_demo1/edk2/EmulatorPkg/Demo1_Bob", checksumkind: CSK_MD5, checksum: "1128b15f0582c0f8bfa33dc5c07b9582")
!633 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_EFI_RNG_PROTOCOL", file: !632, line: 137, size: 128, elements: !634)
!634 = !{!635, !642}
!635 = !DIDerivedType(tag: DW_TAG_member, name: "GetInfo", scope: !633, file: !632, line: 138, baseType: !636, size: 64)
!636 = !DIDerivedType(tag: DW_TAG_typedef, name: "EFI_RNG_GET_INFO", file: !632, line: 96, baseType: !637)
!637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !638, size: 64)
!638 = !DISubroutineType(types: !639)
!639 = !{!130, !630, !169, !640}
!640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !641, size: 64)
!641 = !DIDerivedType(tag: DW_TAG_typedef, name: "EFI_RNG_ALGORITHM", file: !632, line: 30, baseType: !283)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "GetRNG", scope: !633, file: !632, line: 139, baseType: !643, size: 64, offset: 64)
!643 = !DIDerivedType(tag: DW_TAG_typedef, name: "EFI_RNG_GET_RNG", file: !632, line: 126, baseType: !644)
!644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !645, size: 64)
!645 = !DISubroutineType(types: !646)
!646 = !{!130, !630, !640, !70, !81}
!647 = !DIGlobalVariableExpression(var: !648, expr: !DIExpression())
!648 = distinct !DIGlobalVariable(name: "masterKey", scope: !2, file: !58, line: 25, type: !310, isLocal: false, isDefinition: true)
!649 = !DIGlobalVariableExpression(var: !650, expr: !DIExpression())
!650 = distinct !DIGlobalVariable(name: "accessKeyLock", scope: !2, file: !58, line: 28, type: !53, isLocal: false, isDefinition: true)
!651 = !DIGlobalVariableExpression(var: !652, expr: !DIExpression())
!652 = distinct !DIGlobalVariable(name: "head", scope: !2, file: !58, line: 40, type: !56, isLocal: false, isDefinition: true)
!653 = !DIGlobalVariableExpression(var: !654, expr: !DIExpression())
!654 = distinct !DIGlobalVariable(name: "last", scope: !2, file: !58, line: 41, type: !56, isLocal: false, isDefinition: true)
!655 = !DIGlobalVariableExpression(var: !656, expr: !DIExpression())
!656 = distinct !DIGlobalVariable(name: "keychain", scope: !2, file: !58, line: 42, type: !56, isLocal: false, isDefinition: true)
!657 = !DIGlobalVariableExpression(var: !658, expr: !DIExpression())
!658 = distinct !DIGlobalVariable(name: "gDemo1_Bob_Protocol", scope: !2, file: !3, line: 20, type: !659, isLocal: false, isDefinition: true)
!659 = !DIDerivedType(tag: DW_TAG_typedef, name: "Demo1_Bob_PROTOCOL", file: !660, line: 35, baseType: !661)
!660 = !DIFile(filename: "./Demo1_Bob.h", directory: "/home/hira/Research/HARDEN/repositories/HARDEN_demo1/edk2/EmulatorPkg/Demo1_Bob", checksumkind: CSK_MD5, checksum: "4fa74dec5a92cd7311066f39f790ce53")
!661 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Demo1_Bob_PROTOCOL", file: !660, line: 52, size: 64, elements: !662)
!662 = !{!663}
!663 = !DIDerivedType(tag: DW_TAG_member, name: "Demo1BobDataProvider", scope: !661, file: !660, line: 53, baseType: !664, size: 64)
!664 = !DIDerivedType(tag: DW_TAG_typedef, name: "BOB_CB_TYPE", file: !660, line: 42, baseType: !665)
!665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !666, size: 64)
!666 = !DISubroutineType(types: !667)
!667 = !{!130, !668, !52, !276, !70}
!668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !659, size: 64)
!669 = !DIGlobalVariableExpression(var: !670, expr: !DIExpression())
!670 = distinct !DIGlobalVariable(name: "AccessKeyProtocol", scope: !2, file: !3, line: 25, type: !671, isLocal: false, isDefinition: true)
!671 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !672, size: 64)
!672 = !DIDerivedType(tag: DW_TAG_typedef, name: "Demo1_Access_Key_PROTOCOL", file: !673, line: 36, baseType: !674)
!673 = !DIFile(filename: "./../Demo1_Access_Key/Demo1_Access_Key.h", directory: "/home/hira/Research/HARDEN/repositories/HARDEN_demo1/edk2/EmulatorPkg/Demo1_Bob", checksumkind: CSK_MD5, checksum: "a5dbaf8c3ac310b99ce95abca155b547")
!674 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Demo1_Access_Key_PROTOCOL", file: !673, line: 72, size: 128, elements: !675)
!675 = !{!676, !681}
!676 = !DIDerivedType(tag: DW_TAG_member, name: "Demo1GenerateAccessKey", scope: !674, file: !673, line: 73, baseType: !677, size: 64)
!677 = !DIDerivedType(tag: DW_TAG_typedef, name: "DRVR_FUNC_CB_TYPE1", file: !673, line: 51, baseType: !678)
!678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !679, size: 64)
!679 = !DISubroutineType(types: !680)
!680 = !{!130, !671, !98, !53, !310}
!681 = !DIDerivedType(tag: DW_TAG_member, name: "Demo1_Ready_To_Lock_Event", scope: !674, file: !673, line: 75, baseType: !144, size: 64, offset: 64)
!682 = !DIGlobalVariableExpression(var: !683, expr: !DIExpression())
!683 = distinct !DIGlobalVariable(name: "Demo1_Bob_PeriodicTimer", scope: !2, file: !3, line: 30, type: !144, isLocal: false, isDefinition: true)
!684 = !DIGlobalVariableExpression(var: !685, expr: !DIExpression())
!685 = distinct !DIGlobalVariable(name: "DataToProvide", scope: !2, file: !3, line: 31, type: !70, isLocal: false, isDefinition: true)
!686 = !DIGlobalVariableExpression(var: !687, expr: !DIExpression())
!687 = distinct !DIGlobalVariable(name: "gLoadImage", scope: !2, file: !3, line: 32, type: !90, isLocal: false, isDefinition: true)
!688 = !DIGlobalVariableExpression(var: !689, expr: !DIExpression())
!689 = distinct !DIGlobalVariable(name: "AliceProtocol", scope: !2, file: !3, line: 26, type: !690, isLocal: false, isDefinition: true)
!690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !691, size: 64)
!691 = !DIDerivedType(tag: DW_TAG_typedef, name: "Demo1_Alice_PROTOCOL", file: !692, line: 36, baseType: !693)
!692 = !DIFile(filename: "./../Demo1_Alice/Demo1_Alice.h", directory: "/home/hira/Research/HARDEN/repositories/HARDEN_demo1/edk2/EmulatorPkg/Demo1_Bob", checksumkind: CSK_MD5, checksum: "a1a6c09027689aba8f236cb5bb922cff")
!693 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Demo1_Alice_PROTOCOL", file: !692, line: 56, size: 128, elements: !694)
!694 = !{!695, !700}
!695 = !DIDerivedType(tag: DW_TAG_member, name: "Demo1AliceProvideData", scope: !693, file: !692, line: 57, baseType: !696, size: 64)
!696 = !DIDerivedType(tag: DW_TAG_typedef, name: "ALICE_CB_TYPE", file: !692, line: 47, baseType: !697)
!697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !698, size: 64)
!698 = !DISubroutineType(types: !699)
!699 = !{!130, !690, !98, !169}
!700 = !DIDerivedType(tag: DW_TAG_member, name: "Demo1_Ready_To_Run_Event", scope: !693, file: !692, line: 58, baseType: !144, size: 64, offset: 64)
!701 = !DIGlobalVariableExpression(var: !702, expr: !DIExpression())
!702 = distinct !DIGlobalVariable(name: "bobKey", scope: !2, file: !3, line: 29, type: !62, isLocal: false, isDefinition: true)
!703 = !{i32 7, !"Dwarf Version", i32 5}
!704 = !{i32 2, !"Debug Info Version", i32 3}
!705 = !{i32 1, !"wchar_size", i32 4}
!706 = !{i32 7, !"PIC Level", i32 2}
!707 = !{i32 7, !"PIE Level", i32 2}
!708 = !{i32 7, !"uwtable", i32 1}
!709 = !{i32 7, !"frame-pointer", i32 2}
!710 = !{!"Ubuntu clang version 14.0.6"}
!711 = distinct !DISubprogram(name: "Demo1GenerateAccessKey", scope: !58, file: !58, line: 295, type: !679, scopeLine: 301, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !712)
!712 = !{}
!713 = !DILocalVariable(name: "This", arg: 1, scope: !711, file: !58, line: 296, type: !671)
!714 = !DILocation(line: 296, column: 35, scope: !711)
!715 = !DILocalVariable(name: "Controller", arg: 2, scope: !711, file: !58, line: 297, type: !98)
!716 = !DILocation(line: 297, column: 19, scope: !711)
!717 = !DILocalVariable(name: "WriteAccess", arg: 3, scope: !711, file: !58, line: 298, type: !53)
!718 = !DILocation(line: 298, column: 16, scope: !711)
!719 = !DILocalVariable(name: "AccessKeyPtr", arg: 4, scope: !711, file: !58, line: 299, type: !310)
!720 = !DILocation(line: 299, column: 30, scope: !711)
!721 = !DILocalVariable(name: "Status", scope: !711, file: !58, line: 302, type: !130)
!722 = !DILocation(line: 302, column: 14, scope: !711)
!723 = !DILocalVariable(name: "header", scope: !711, file: !58, line: 303, type: !70)
!724 = !DILocation(line: 303, column: 9, scope: !711)
!725 = !DILocation(line: 306, column: 7, scope: !726)
!726 = distinct !DILexicalBlock(scope: !711, file: !58, line: 306, column: 7)
!727 = !DILocation(line: 306, column: 20, scope: !726)
!728 = !DILocation(line: 306, column: 7, scope: !711)
!729 = !DILocation(line: 308, column: 5, scope: !730)
!730 = distinct !DILexicalBlock(scope: !726, file: !58, line: 307, column: 3)
!731 = !DILocation(line: 311, column: 7, scope: !732)
!732 = distinct !DILexicalBlock(scope: !711, file: !58, line: 311, column: 7)
!733 = !DILocation(line: 311, column: 21, scope: !732)
!734 = !DILocation(line: 311, column: 7, scope: !711)
!735 = !DILocation(line: 313, column: 5, scope: !736)
!736 = distinct !DILexicalBlock(scope: !732, file: !58, line: 312, column: 3)
!737 = !DILocation(line: 317, column: 12, scope: !711)
!738 = !DILocation(line: 317, column: 25, scope: !711)
!739 = !DILocation(line: 317, column: 32, scope: !711)
!740 = !DILocation(line: 317, column: 70, scope: !711)
!741 = !DILocation(line: 317, column: 84, scope: !711)
!742 = !DILocation(line: 317, column: 60, scope: !711)
!743 = !DILocation(line: 317, column: 10, scope: !711)
!744 = !DILocation(line: 318, column: 7, scope: !745)
!745 = distinct !DILexicalBlock(scope: !711, file: !58, line: 318, column: 7)
!746 = !DILocation(line: 318, column: 7, scope: !711)
!747 = !DILocation(line: 320, column: 12, scope: !748)
!748 = distinct !DILexicalBlock(scope: !745, file: !58, line: 319, column: 3)
!749 = !DILocation(line: 320, column: 5, scope: !748)
!750 = !DILocation(line: 324, column: 7, scope: !751)
!751 = distinct !DILexicalBlock(scope: !711, file: !58, line: 324, column: 7)
!752 = !DILocation(line: 324, column: 7, scope: !711)
!753 = !DILocation(line: 326, column: 12, scope: !754)
!754 = distinct !DILexicalBlock(scope: !751, file: !58, line: 325, column: 3)
!755 = !DILocation(line: 327, column: 3, scope: !754)
!756 = !DILocation(line: 330, column: 12, scope: !757)
!757 = distinct !DILexicalBlock(scope: !751, file: !58, line: 329, column: 3)
!758 = !DILocation(line: 332, column: 39, scope: !711)
!759 = !DILocation(line: 332, column: 3, scope: !711)
!760 = !DILocation(line: 332, column: 17, scope: !711)
!761 = !DILocation(line: 332, column: 37, scope: !711)
!762 = !DILocation(line: 335, column: 7, scope: !763)
!763 = distinct !DILexicalBlock(scope: !711, file: !58, line: 335, column: 7)
!764 = !DILocation(line: 335, column: 23, scope: !763)
!765 = !DILocation(line: 335, column: 20, scope: !763)
!766 = !DILocation(line: 335, column: 7, scope: !711)
!767 = !DILocation(line: 337, column: 16, scope: !768)
!768 = distinct !DILexicalBlock(scope: !763, file: !58, line: 336, column: 3)
!769 = !DILocation(line: 337, column: 5, scope: !768)
!770 = !DILocation(line: 338, column: 3, scope: !768)
!771 = !DILocation(line: 341, column: 17, scope: !772)
!772 = distinct !DILexicalBlock(scope: !763, file: !58, line: 340, column: 3)
!773 = !DILocation(line: 341, column: 5, scope: !772)
!774 = !DILocation(line: 344, column: 10, scope: !711)
!775 = !DILocation(line: 344, column: 3, scope: !711)
!776 = !DILocation(line: 345, column: 1, scope: !711)
!777 = distinct !DISubprogram(name: "Demo1ValidateAccessKey", scope: !58, file: !58, line: 363, type: !778, scopeLine: 369, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !712)
!778 = !DISubroutineType(types: !779)
!779 = !{!130, !671, !98, !310, !53, !249}
!780 = !DILocalVariable(name: "This", arg: 1, scope: !777, file: !58, line: 364, type: !671)
!781 = !DILocation(line: 364, column: 35, scope: !777)
!782 = !DILocalVariable(name: "Controller", arg: 2, scope: !777, file: !58, line: 365, type: !98)
!783 = !DILocation(line: 365, column: 19, scope: !777)
!784 = !DILocalVariable(name: "AccessKeyPtr", arg: 3, scope: !777, file: !58, line: 366, type: !310)
!785 = !DILocation(line: 366, column: 26, scope: !777)
!786 = !DILocalVariable(name: "WriteAccess", arg: 4, scope: !777, file: !58, line: 367, type: !53)
!787 = !DILocation(line: 367, column: 16, scope: !777)
!788 = !DILocalVariable(name: "Result", arg: 5, scope: !777, file: !58, line: 368, type: !249)
!789 = !DILocation(line: 368, column: 21, scope: !777)
!790 = !DILocation(line: 371, column: 7, scope: !791)
!791 = distinct !DILexicalBlock(scope: !777, file: !58, line: 371, column: 7)
!792 = !DILocation(line: 371, column: 14, scope: !791)
!793 = !DILocation(line: 371, column: 7, scope: !777)
!794 = !DILocation(line: 373, column: 5, scope: !795)
!795 = distinct !DILexicalBlock(scope: !791, file: !58, line: 372, column: 3)
!796 = !DILocation(line: 375, column: 4, scope: !777)
!797 = !DILocation(line: 375, column: 11, scope: !777)
!798 = !DILocation(line: 377, column: 7, scope: !799)
!799 = distinct !DILexicalBlock(scope: !777, file: !58, line: 377, column: 7)
!800 = !DILocation(line: 377, column: 20, scope: !799)
!801 = !DILocation(line: 377, column: 7, scope: !777)
!802 = !DILocation(line: 379, column: 5, scope: !803)
!803 = distinct !DILexicalBlock(scope: !799, file: !58, line: 378, column: 3)
!804 = !DILocation(line: 384, column: 7, scope: !805)
!805 = distinct !DILexicalBlock(scope: !777, file: !58, line: 384, column: 7)
!806 = !DILocation(line: 384, column: 19, scope: !805)
!807 = !DILocation(line: 384, column: 23, scope: !805)
!808 = !DILocation(line: 384, column: 37, scope: !805)
!809 = !DILocation(line: 384, column: 57, scope: !805)
!810 = !DILocation(line: 384, column: 7, scope: !777)
!811 = !DILocation(line: 386, column: 5, scope: !812)
!812 = distinct !DILexicalBlock(scope: !805, file: !58, line: 385, column: 3)
!813 = !DILocation(line: 389, column: 26, scope: !777)
!814 = !DILocation(line: 389, column: 13, scope: !777)
!815 = !DILocation(line: 389, column: 4, scope: !777)
!816 = !DILocation(line: 389, column: 11, scope: !777)
!817 = !DILocation(line: 390, column: 3, scope: !777)
!818 = !DILocation(line: 391, column: 1, scope: !777)
!819 = distinct !DISubprogram(name: "IsKeychainEmpty", scope: !58, file: !58, line: 54, type: !820, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !712)
!820 = !DISubroutineType(types: !821)
!821 = !{!53}
!822 = !DILocation(line: 57, column: 10, scope: !819)
!823 = !DILocation(line: 57, column: 15, scope: !819)
!824 = !DILocation(line: 57, column: 3, scope: !819)
!825 = distinct !DISubprogram(name: "KeychainLength", scope: !58, file: !58, line: 65, type: !826, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !712)
!826 = !DISubroutineType(types: !827)
!827 = !{!70}
!828 = !DILocalVariable(name: "length", scope: !825, file: !58, line: 68, type: !70)
!829 = !DILocation(line: 68, column: 9, scope: !825)
!830 = !DILocalVariable(name: "current", scope: !825, file: !58, line: 69, type: !56)
!831 = !DILocation(line: 69, column: 9, scope: !825)
!832 = !DILocation(line: 70, column: 18, scope: !833)
!833 = distinct !DILexicalBlock(scope: !825, file: !58, line: 70, column: 3)
!834 = !DILocation(line: 70, column: 16, scope: !833)
!835 = !DILocation(line: 70, column: 8, scope: !833)
!836 = !DILocation(line: 70, column: 24, scope: !837)
!837 = distinct !DILexicalBlock(scope: !833, file: !58, line: 70, column: 3)
!838 = !DILocation(line: 70, column: 32, scope: !837)
!839 = !DILocation(line: 70, column: 3, scope: !833)
!840 = !DILocation(line: 72, column: 11, scope: !841)
!841 = distinct !DILexicalBlock(scope: !837, file: !58, line: 71, column: 3)
!842 = !DILocation(line: 73, column: 3, scope: !841)
!843 = !DILocation(line: 70, column: 51, scope: !837)
!844 = !DILocation(line: 70, column: 60, scope: !837)
!845 = !DILocation(line: 70, column: 49, scope: !837)
!846 = !DILocation(line: 70, column: 3, scope: !837)
!847 = distinct !{!847, !839, !848, !849}
!848 = !DILocation(line: 73, column: 3, scope: !833)
!849 = !{!"llvm.loop.mustprogress"}
!850 = !DILocation(line: 74, column: 10, scope: !825)
!851 = !DILocation(line: 74, column: 3, scope: !825)
!852 = distinct !DISubprogram(name: "InsertFirst", scope: !58, file: !58, line: 84, type: !853, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !712)
!853 = !DISubroutineType(types: !854)
!854 = !{null, !310}
!855 = !DILocalVariable(name: "access_key", arg: 1, scope: !852, file: !58, line: 85, type: !310)
!856 = !DILocation(line: 85, column: 23, scope: !852)
!857 = !DILocalVariable(name: "link", scope: !852, file: !58, line: 87, type: !56)
!858 = !DILocation(line: 87, column: 9, scope: !852)
!859 = !DILocation(line: 87, column: 16, scope: !852)
!860 = !DILocation(line: 88, column: 3, scope: !852)
!861 = !DILocation(line: 88, column: 3, scope: !862)
!862 = distinct !DILexicalBlock(scope: !863, file: !58, line: 88, column: 3)
!863 = distinct !DILexicalBlock(scope: !852, file: !58, line: 88, column: 3)
!864 = !DILocation(line: 88, column: 3, scope: !863)
!865 = !DILocation(line: 88, column: 3, scope: !866)
!866 = distinct !DILexicalBlock(scope: !867, file: !58, line: 88, column: 3)
!867 = distinct !DILexicalBlock(scope: !862, file: !58, line: 88, column: 3)
!868 = !DILocation(line: 88, column: 3, scope: !867)
!869 = !DILocation(line: 88, column: 3, scope: !870)
!870 = distinct !DILexicalBlock(scope: !866, file: !58, line: 88, column: 3)
!871 = !DILocation(line: 89, column: 12, scope: !852)
!872 = !DILocation(line: 89, column: 18, scope: !852)
!873 = !DILocation(line: 89, column: 11, scope: !852)
!874 = !DILocation(line: 89, column: 30, scope: !852)
!875 = !DILocation(line: 89, column: 3, scope: !852)
!876 = !DILocation(line: 91, column: 7, scope: !877)
!877 = distinct !DILexicalBlock(scope: !852, file: !58, line: 91, column: 7)
!878 = !DILocation(line: 91, column: 7, scope: !852)
!879 = !DILocation(line: 93, column: 12, scope: !880)
!880 = distinct !DILexicalBlock(scope: !877, file: !58, line: 92, column: 3)
!881 = !DILocation(line: 93, column: 10, scope: !880)
!882 = !DILocation(line: 94, column: 3, scope: !880)
!883 = !DILocation(line: 97, column: 18, scope: !884)
!884 = distinct !DILexicalBlock(scope: !877, file: !58, line: 96, column: 3)
!885 = !DILocation(line: 97, column: 5, scope: !884)
!886 = !DILocation(line: 97, column: 11, scope: !884)
!887 = !DILocation(line: 97, column: 16, scope: !884)
!888 = !DILocation(line: 99, column: 3, scope: !852)
!889 = !DILocation(line: 99, column: 9, scope: !852)
!890 = !DILocation(line: 99, column: 14, scope: !852)
!891 = !DILocation(line: 100, column: 16, scope: !852)
!892 = !DILocation(line: 100, column: 3, scope: !852)
!893 = !DILocation(line: 100, column: 9, scope: !852)
!894 = !DILocation(line: 100, column: 14, scope: !852)
!895 = !DILocation(line: 101, column: 10, scope: !852)
!896 = !DILocation(line: 101, column: 8, scope: !852)
!897 = !DILocation(line: 102, column: 1, scope: !852)
!898 = distinct !DISubprogram(name: "InsertLast", scope: !58, file: !58, line: 111, type: !853, scopeLine: 113, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !712)
!899 = !DILocalVariable(name: "access_key", arg: 1, scope: !898, file: !58, line: 112, type: !310)
!900 = !DILocation(line: 112, column: 23, scope: !898)
!901 = !DILocalVariable(name: "link", scope: !898, file: !58, line: 114, type: !56)
!902 = !DILocation(line: 114, column: 9, scope: !898)
!903 = !DILocation(line: 114, column: 16, scope: !898)
!904 = !DILocation(line: 115, column: 3, scope: !898)
!905 = !DILocation(line: 115, column: 3, scope: !906)
!906 = distinct !DILexicalBlock(scope: !907, file: !58, line: 115, column: 3)
!907 = distinct !DILexicalBlock(scope: !898, file: !58, line: 115, column: 3)
!908 = !DILocation(line: 115, column: 3, scope: !907)
!909 = !DILocation(line: 115, column: 3, scope: !910)
!910 = distinct !DILexicalBlock(scope: !911, file: !58, line: 115, column: 3)
!911 = distinct !DILexicalBlock(scope: !906, file: !58, line: 115, column: 3)
!912 = !DILocation(line: 115, column: 3, scope: !911)
!913 = !DILocation(line: 115, column: 3, scope: !914)
!914 = distinct !DILexicalBlock(scope: !910, file: !58, line: 115, column: 3)
!915 = !DILocation(line: 116, column: 12, scope: !898)
!916 = !DILocation(line: 116, column: 18, scope: !898)
!917 = !DILocation(line: 116, column: 11, scope: !898)
!918 = !DILocation(line: 116, column: 30, scope: !898)
!919 = !DILocation(line: 116, column: 3, scope: !898)
!920 = !DILocation(line: 118, column: 7, scope: !921)
!921 = distinct !DILexicalBlock(scope: !898, file: !58, line: 118, column: 7)
!922 = !DILocation(line: 118, column: 7, scope: !898)
!923 = !DILocation(line: 120, column: 12, scope: !924)
!924 = distinct !DILexicalBlock(scope: !921, file: !58, line: 119, column: 3)
!925 = !DILocation(line: 120, column: 10, scope: !924)
!926 = !DILocation(line: 121, column: 3, scope: !924)
!927 = !DILocation(line: 124, column: 18, scope: !928)
!928 = distinct !DILexicalBlock(scope: !921, file: !58, line: 123, column: 3)
!929 = !DILocation(line: 124, column: 5, scope: !928)
!930 = !DILocation(line: 124, column: 11, scope: !928)
!931 = !DILocation(line: 124, column: 16, scope: !928)
!932 = !DILocation(line: 125, column: 18, scope: !928)
!933 = !DILocation(line: 125, column: 5, scope: !928)
!934 = !DILocation(line: 125, column: 11, scope: !928)
!935 = !DILocation(line: 125, column: 16, scope: !928)
!936 = !DILocation(line: 127, column: 3, scope: !898)
!937 = !DILocation(line: 127, column: 9, scope: !898)
!938 = !DILocation(line: 127, column: 14, scope: !898)
!939 = !DILocation(line: 128, column: 10, scope: !898)
!940 = !DILocation(line: 128, column: 8, scope: !898)
!941 = !DILocation(line: 129, column: 1, scope: !898)
!942 = distinct !DISubprogram(name: "DoesKeyExist", scope: !58, file: !58, line: 139, type: !943, scopeLine: 141, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !712)
!943 = !DISubroutineType(types: !944)
!944 = !{!53, !310}
!945 = !DILocalVariable(name: "access_key", arg: 1, scope: !942, file: !58, line: 140, type: !310)
!946 = !DILocation(line: 140, column: 23, scope: !942)
!947 = !DILocalVariable(name: "current", scope: !942, file: !58, line: 143, type: !56)
!948 = !DILocation(line: 143, column: 9, scope: !942)
!949 = !DILocation(line: 144, column: 7, scope: !950)
!950 = distinct !DILexicalBlock(scope: !942, file: !58, line: 144, column: 7)
!951 = !DILocation(line: 144, column: 18, scope: !950)
!952 = !DILocation(line: 144, column: 7, scope: !942)
!953 = !DILocation(line: 146, column: 5, scope: !954)
!954 = distinct !DILexicalBlock(scope: !950, file: !58, line: 145, column: 3)
!955 = !DILocation(line: 148, column: 17, scope: !942)
!956 = !DILocation(line: 148, column: 9, scope: !942)
!957 = !DILocation(line: 148, column: 8, scope: !942)
!958 = !DILocation(line: 149, column: 22, scope: !942)
!959 = !DILocation(line: 149, column: 3, scope: !942)
!960 = !DILocation(line: 151, column: 18, scope: !961)
!961 = distinct !DILexicalBlock(scope: !942, file: !58, line: 151, column: 3)
!962 = !DILocation(line: 151, column: 16, scope: !961)
!963 = !DILocation(line: 151, column: 8, scope: !961)
!964 = !DILocation(line: 151, column: 24, scope: !965)
!965 = distinct !DILexicalBlock(scope: !961, file: !58, line: 151, column: 3)
!966 = !DILocation(line: 151, column: 32, scope: !965)
!967 = !DILocation(line: 151, column: 3, scope: !961)
!968 = !DILocation(line: 153, column: 9, scope: !969)
!969 = distinct !DILexicalBlock(scope: !970, file: !58, line: 153, column: 9)
!970 = distinct !DILexicalBlock(scope: !965, file: !58, line: 152, column: 3)
!971 = !DILocation(line: 153, column: 21, scope: !969)
!972 = !DILocation(line: 153, column: 44, scope: !969)
!973 = !DILocation(line: 153, column: 53, scope: !969)
!974 = !DILocation(line: 153, column: 64, scope: !969)
!975 = !DILocation(line: 153, column: 41, scope: !969)
!976 = !DILocation(line: 153, column: 9, scope: !970)
!977 = !DILocation(line: 155, column: 7, scope: !978)
!978 = distinct !DILexicalBlock(scope: !969, file: !58, line: 154, column: 5)
!979 = !DILocation(line: 157, column: 3, scope: !970)
!980 = !DILocation(line: 151, column: 51, scope: !965)
!981 = !DILocation(line: 151, column: 60, scope: !965)
!982 = !DILocation(line: 151, column: 49, scope: !965)
!983 = !DILocation(line: 151, column: 3, scope: !965)
!984 = distinct !{!984, !967, !985, !849}
!985 = !DILocation(line: 157, column: 3, scope: !961)
!986 = !DILocation(line: 159, column: 3, scope: !942)
!987 = !DILocation(line: 160, column: 1, scope: !942)
!988 = distinct !DISubprogram(name: "Demo1AccessKeyInit", scope: !58, file: !58, line: 193, type: !989, scopeLine: 196, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !712)
!989 = !DISubroutineType(types: !990)
!990 = !{!130, !98, !100}
!991 = !DILocalVariable(name: "ImageHandle", arg: 1, scope: !988, file: !58, line: 194, type: !98)
!992 = !DILocation(line: 194, column: 19, scope: !988)
!993 = !DILocalVariable(name: "SystemTable", arg: 2, scope: !988, file: !58, line: 195, type: !100)
!994 = !DILocation(line: 195, column: 26, scope: !988)
!995 = !DILocalVariable(name: "Status", scope: !988, file: !58, line: 197, type: !130)
!996 = !DILocation(line: 197, column: 14, scope: !988)
!997 = !DILocation(line: 203, column: 7, scope: !998)
!998 = distinct !DILexicalBlock(scope: !988, file: !58, line: 203, column: 7)
!999 = !DILocation(line: 203, column: 25, scope: !998)
!1000 = !DILocation(line: 203, column: 29, scope: !998)
!1001 = !DILocation(line: 203, column: 41, scope: !998)
!1002 = !DILocation(line: 203, column: 7, scope: !988)
!1003 = !DILocation(line: 207, column: 12, scope: !1004)
!1004 = distinct !DILexicalBlock(scope: !998, file: !58, line: 204, column: 3)
!1005 = !DILocation(line: 207, column: 5, scope: !1004)
!1006 = !DILocation(line: 213, column: 15, scope: !988)
!1007 = !DILocation(line: 213, column: 13, scope: !988)
!1008 = !DILocation(line: 214, column: 76, scope: !988)
!1009 = !DILocation(line: 214, column: 12, scope: !988)
!1010 = !DILocation(line: 214, column: 10, scope: !988)
!1011 = !DILocation(line: 215, column: 7, scope: !1012)
!1012 = distinct !DILexicalBlock(scope: !988, file: !58, line: 215, column: 7)
!1013 = !DILocation(line: 215, column: 7, scope: !988)
!1014 = !DILocation(line: 219, column: 12, scope: !1015)
!1015 = distinct !DILexicalBlock(scope: !1012, file: !58, line: 216, column: 3)
!1016 = !DILocation(line: 219, column: 5, scope: !1015)
!1017 = !DILocation(line: 245, column: 7, scope: !1018)
!1018 = distinct !DILexicalBlock(scope: !988, file: !58, line: 245, column: 7)
!1019 = !DILocation(line: 245, column: 7, scope: !988)
!1020 = !DILocation(line: 249, column: 12, scope: !1021)
!1021 = distinct !DILexicalBlock(scope: !1018, file: !58, line: 246, column: 3)
!1022 = !DILocation(line: 249, column: 5, scope: !1021)
!1023 = !DILocation(line: 252, column: 3, scope: !988)
!1024 = !DILocation(line: 253, column: 1, scope: !988)
!1025 = distinct !DISubprogram(name: "Demo1AccessKeyUnload", scope: !58, file: !58, line: 265, type: !501, scopeLine: 267, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !712)
!1026 = !DILocalVariable(name: "ImageHandle", arg: 1, scope: !1025, file: !58, line: 266, type: !98)
!1027 = !DILocation(line: 266, column: 19, scope: !1025)
!1028 = !DILocalVariable(name: "Status", scope: !1025, file: !58, line: 268, type: !130)
!1029 = !DILocation(line: 268, column: 14, scope: !1025)
!1030 = !DILocation(line: 274, column: 12, scope: !1025)
!1031 = !DILocation(line: 274, column: 3, scope: !1025)
!1032 = !DILocation(line: 275, column: 10, scope: !1025)
!1033 = !DILocation(line: 275, column: 3, scope: !1025)
!1034 = distinct !DISubprogram(name: "Demo1BobDataProvider", scope: !3, file: !3, line: 334, type: !666, scopeLine: 340, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !712)
!1035 = !DILocalVariable(name: "This", arg: 1, scope: !1034, file: !3, line: 335, type: !668)
!1036 = !DILocation(line: 335, column: 30, scope: !1034)
!1037 = !DILocalVariable(name: "Address", arg: 2, scope: !1034, file: !3, line: 336, type: !52)
!1038 = !DILocation(line: 336, column: 30, scope: !1034)
!1039 = !DILocalVariable(name: "Dest", arg: 3, scope: !1034, file: !3, line: 337, type: !276)
!1040 = !DILocation(line: 337, column: 31, scope: !1034)
!1041 = !DILocalVariable(name: "Size", arg: 4, scope: !1034, file: !3, line: 338, type: !70)
!1042 = !DILocation(line: 338, column: 29, scope: !1034)
!1043 = !DILocalVariable(name: "IAddress", scope: !1034, file: !3, line: 343, type: !70)
!1044 = !DILocation(line: 343, column: 9, scope: !1034)
!1045 = !DILocation(line: 343, column: 27, scope: !1034)
!1046 = !DILocation(line: 343, column: 20, scope: !1034)
!1047 = !DILocation(line: 345, column: 44, scope: !1034)
!1048 = !DILocation(line: 345, column: 16, scope: !1034)
!1049 = !DILocation(line: 345, column: 14, scope: !1034)
!1050 = !DILocation(line: 346, column: 22, scope: !1034)
!1051 = !DILocation(line: 346, column: 3, scope: !1034)
!1052 = !DILocalVariable(name: "IBase", scope: !1034, file: !3, line: 348, type: !70)
!1053 = !DILocation(line: 348, column: 9, scope: !1034)
!1054 = !DILocation(line: 348, column: 24, scope: !1034)
!1055 = !DILocation(line: 348, column: 36, scope: !1034)
!1056 = !DILocation(line: 348, column: 17, scope: !1034)
!1057 = !DILocalVariable(name: "Storage", scope: !1034, file: !3, line: 349, type: !52)
!1058 = !DILocation(line: 349, column: 9, scope: !1034)
!1059 = !DILocation(line: 351, column: 7, scope: !1060)
!1060 = distinct !DILexicalBlock(scope: !1034, file: !3, line: 351, column: 7)
!1061 = !DILocation(line: 351, column: 12, scope: !1060)
!1062 = !DILocation(line: 351, column: 7, scope: !1034)
!1063 = !DILocation(line: 352, column: 5, scope: !1064)
!1064 = distinct !DILexicalBlock(scope: !1060, file: !3, line: 351, column: 22)
!1065 = !DILocation(line: 355, column: 8, scope: !1066)
!1066 = distinct !DILexicalBlock(scope: !1034, file: !3, line: 355, column: 8)
!1067 = !DILocation(line: 355, column: 19, scope: !1066)
!1068 = !DILocation(line: 355, column: 17, scope: !1066)
!1069 = !DILocation(line: 355, column: 8, scope: !1034)
!1070 = !DILocation(line: 356, column: 5, scope: !1071)
!1071 = distinct !DILexicalBlock(scope: !1066, file: !3, line: 355, column: 27)
!1072 = !DILocation(line: 360, column: 8, scope: !1073)
!1073 = distinct !DILexicalBlock(scope: !1034, file: !3, line: 360, column: 8)
!1074 = !DILocation(line: 360, column: 16, scope: !1073)
!1075 = !DILocation(line: 360, column: 28, scope: !1073)
!1076 = !DILocation(line: 360, column: 14, scope: !1073)
!1077 = !DILocation(line: 360, column: 40, scope: !1073)
!1078 = !DILocation(line: 360, column: 51, scope: !1073)
!1079 = !DILocation(line: 360, column: 49, scope: !1073)
!1080 = !DILocation(line: 360, column: 38, scope: !1073)
!1081 = !DILocation(line: 360, column: 8, scope: !1034)
!1082 = !DILocation(line: 361, column: 5, scope: !1083)
!1083 = distinct !DILexicalBlock(scope: !1073, file: !3, line: 360, column: 58)
!1084 = !DILocation(line: 364, column: 27, scope: !1034)
!1085 = !DILocation(line: 364, column: 20, scope: !1034)
!1086 = !DILocation(line: 364, column: 11, scope: !1034)
!1087 = !DILocation(line: 366, column: 8, scope: !1088)
!1088 = distinct !DILexicalBlock(scope: !1034, file: !3, line: 366, column: 8)
!1089 = !DILocation(line: 366, column: 16, scope: !1088)
!1090 = !DILocation(line: 366, column: 8, scope: !1034)
!1091 = !DILocation(line: 367, column: 5, scope: !1092)
!1092 = distinct !DILexicalBlock(scope: !1088, file: !3, line: 366, column: 26)
!1093 = !DILocation(line: 370, column: 14, scope: !1034)
!1094 = !DILocation(line: 370, column: 23, scope: !1034)
!1095 = !DILocation(line: 370, column: 32, scope: !1034)
!1096 = !DILocation(line: 370, column: 3, scope: !1034)
!1097 = !DILocation(line: 372, column: 11, scope: !1034)
!1098 = !DILocation(line: 372, column: 4, scope: !1034)
!1099 = !DILocation(line: 372, column: 9, scope: !1034)
!1100 = !DILocation(line: 374, column: 3, scope: !1034)
!1101 = !DILocation(line: 375, column: 1, scope: !1034)
!1102 = distinct !DISubprogram(name: "Demo1BobInit", scope: !3, file: !3, line: 164, type: !989, scopeLine: 168, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !712)
!1103 = !DILocalVariable(name: "ImageHandle", arg: 1, scope: !1102, file: !3, line: 165, type: !98)
!1104 = !DILocation(line: 165, column: 24, scope: !1102)
!1105 = !DILocalVariable(name: "SystemTable", arg: 2, scope: !1102, file: !3, line: 166, type: !100)
!1106 = !DILocation(line: 166, column: 25, scope: !1102)
!1107 = !DILocalVariable(name: "Status", scope: !1102, file: !3, line: 169, type: !130)
!1108 = !DILocation(line: 169, column: 21, scope: !1102)
!1109 = !DILocalVariable(name: "Mode", scope: !1102, file: !3, line: 170, type: !70)
!1110 = !DILocation(line: 170, column: 21, scope: !1102)
!1111 = !DILocalVariable(name: "BufferSize", scope: !1102, file: !3, line: 171, type: !70)
!1112 = !DILocation(line: 171, column: 21, scope: !1102)
!1113 = !DILocation(line: 187, column: 7, scope: !1114)
!1114 = distinct !DILexicalBlock(scope: !1102, file: !3, line: 187, column: 7)
!1115 = !DILocation(line: 187, column: 26, scope: !1114)
!1116 = !DILocation(line: 187, column: 30, scope: !1114)
!1117 = !DILocation(line: 187, column: 48, scope: !1114)
!1118 = !DILocation(line: 187, column: 7, scope: !1102)
!1119 = !DILocation(line: 188, column: 5, scope: !1120)
!1120 = distinct !DILexicalBlock(scope: !1114, file: !3, line: 187, column: 58)
!1121 = !DILocation(line: 188, column: 5, scope: !1122)
!1122 = distinct !DILexicalBlock(scope: !1123, file: !3, line: 188, column: 5)
!1123 = distinct !DILexicalBlock(scope: !1120, file: !3, line: 188, column: 5)
!1124 = !DILocation(line: 188, column: 5, scope: !1123)
!1125 = !DILocation(line: 188, column: 5, scope: !1126)
!1126 = distinct !DILexicalBlock(scope: !1122, file: !3, line: 188, column: 5)
!1127 = !DILocation(line: 188, column: 5, scope: !1128)
!1128 = distinct !DILexicalBlock(scope: !1129, file: !3, line: 188, column: 5)
!1129 = distinct !DILexicalBlock(scope: !1126, file: !3, line: 188, column: 5)
!1130 = !DILocation(line: 188, column: 5, scope: !1129)
!1131 = !DILocation(line: 188, column: 5, scope: !1132)
!1132 = distinct !DILexicalBlock(scope: !1128, file: !3, line: 188, column: 5)
!1133 = !DILocation(line: 190, column: 12, scope: !1120)
!1134 = !DILocation(line: 190, column: 5, scope: !1120)
!1135 = !DILocation(line: 196, column: 12, scope: !1102)
!1136 = !DILocation(line: 196, column: 31, scope: !1102)
!1137 = !DILocation(line: 196, column: 10, scope: !1102)
!1138 = !DILocation(line: 197, column: 7, scope: !1139)
!1139 = distinct !DILexicalBlock(scope: !1102, file: !3, line: 197, column: 7)
!1140 = !DILocation(line: 197, column: 7, scope: !1102)
!1141 = !DILocation(line: 198, column: 5, scope: !1142)
!1142 = distinct !DILexicalBlock(scope: !1139, file: !3, line: 197, column: 27)
!1143 = !DILocation(line: 198, column: 5, scope: !1144)
!1144 = distinct !DILexicalBlock(scope: !1145, file: !3, line: 198, column: 5)
!1145 = distinct !DILexicalBlock(scope: !1142, file: !3, line: 198, column: 5)
!1146 = !DILocation(line: 198, column: 5, scope: !1145)
!1147 = !DILocation(line: 198, column: 5, scope: !1148)
!1148 = distinct !DILexicalBlock(scope: !1144, file: !3, line: 198, column: 5)
!1149 = !DILocation(line: 198, column: 5, scope: !1150)
!1150 = distinct !DILexicalBlock(scope: !1151, file: !3, line: 198, column: 5)
!1151 = distinct !DILexicalBlock(scope: !1148, file: !3, line: 198, column: 5)
!1152 = !DILocation(line: 198, column: 5, scope: !1151)
!1153 = !DILocation(line: 198, column: 5, scope: !1154)
!1154 = distinct !DILexicalBlock(scope: !1150, file: !3, line: 198, column: 5)
!1155 = !DILocation(line: 200, column: 12, scope: !1142)
!1156 = !DILocation(line: 200, column: 5, scope: !1142)
!1157 = !DILocation(line: 207, column: 7, scope: !1158)
!1158 = distinct !DILexicalBlock(scope: !1102, file: !3, line: 207, column: 7)
!1159 = !DILocation(line: 207, column: 26, scope: !1158)
!1160 = !DILocation(line: 207, column: 30, scope: !1158)
!1161 = !DILocation(line: 207, column: 44, scope: !1158)
!1162 = !DILocation(line: 207, column: 7, scope: !1102)
!1163 = !DILocation(line: 208, column: 5, scope: !1164)
!1164 = distinct !DILexicalBlock(scope: !1158, file: !3, line: 207, column: 54)
!1165 = !DILocation(line: 208, column: 5, scope: !1166)
!1166 = distinct !DILexicalBlock(scope: !1167, file: !3, line: 208, column: 5)
!1167 = distinct !DILexicalBlock(scope: !1164, file: !3, line: 208, column: 5)
!1168 = !DILocation(line: 208, column: 5, scope: !1167)
!1169 = !DILocation(line: 208, column: 5, scope: !1170)
!1170 = distinct !DILexicalBlock(scope: !1166, file: !3, line: 208, column: 5)
!1171 = !DILocation(line: 208, column: 5, scope: !1172)
!1172 = distinct !DILexicalBlock(scope: !1173, file: !3, line: 208, column: 5)
!1173 = distinct !DILexicalBlock(scope: !1170, file: !3, line: 208, column: 5)
!1174 = !DILocation(line: 208, column: 5, scope: !1173)
!1175 = !DILocation(line: 208, column: 5, scope: !1176)
!1176 = distinct !DILexicalBlock(scope: !1172, file: !3, line: 208, column: 5)
!1177 = !DILocation(line: 210, column: 12, scope: !1164)
!1178 = !DILocation(line: 210, column: 5, scope: !1164)
!1179 = !DILocation(line: 224, column: 7, scope: !1180)
!1180 = distinct !DILexicalBlock(scope: !1102, file: !3, line: 224, column: 7)
!1181 = !DILocation(line: 224, column: 7, scope: !1102)
!1182 = !DILocation(line: 225, column: 5, scope: !1183)
!1183 = distinct !DILexicalBlock(scope: !1180, file: !3, line: 224, column: 27)
!1184 = !DILocation(line: 225, column: 5, scope: !1185)
!1185 = distinct !DILexicalBlock(scope: !1186, file: !3, line: 225, column: 5)
!1186 = distinct !DILexicalBlock(scope: !1183, file: !3, line: 225, column: 5)
!1187 = !DILocation(line: 225, column: 5, scope: !1186)
!1188 = !DILocation(line: 225, column: 5, scope: !1189)
!1189 = distinct !DILexicalBlock(scope: !1185, file: !3, line: 225, column: 5)
!1190 = !DILocation(line: 225, column: 5, scope: !1191)
!1191 = distinct !DILexicalBlock(scope: !1192, file: !3, line: 225, column: 5)
!1192 = distinct !DILexicalBlock(scope: !1189, file: !3, line: 225, column: 5)
!1193 = !DILocation(line: 225, column: 5, scope: !1192)
!1194 = !DILocation(line: 225, column: 5, scope: !1195)
!1195 = distinct !DILexicalBlock(scope: !1191, file: !3, line: 225, column: 5)
!1196 = !DILocation(line: 227, column: 12, scope: !1183)
!1197 = !DILocation(line: 227, column: 5, scope: !1183)
!1198 = !DILocation(line: 233, column: 7, scope: !1199)
!1199 = distinct !DILexicalBlock(scope: !1102, file: !3, line: 233, column: 7)
!1200 = !DILocation(line: 233, column: 12, scope: !1199)
!1201 = !DILocation(line: 233, column: 7, scope: !1102)
!1202 = !DILocation(line: 234, column: 5, scope: !1203)
!1203 = distinct !DILexicalBlock(scope: !1199, file: !3, line: 233, column: 25)
!1204 = !DILocation(line: 234, column: 5, scope: !1205)
!1205 = distinct !DILexicalBlock(scope: !1206, file: !3, line: 234, column: 5)
!1206 = distinct !DILexicalBlock(scope: !1203, file: !3, line: 234, column: 5)
!1207 = !DILocation(line: 234, column: 5, scope: !1206)
!1208 = !DILocation(line: 234, column: 5, scope: !1209)
!1209 = distinct !DILexicalBlock(scope: !1205, file: !3, line: 234, column: 5)
!1210 = !DILocation(line: 234, column: 5, scope: !1211)
!1211 = distinct !DILexicalBlock(scope: !1212, file: !3, line: 234, column: 5)
!1212 = distinct !DILexicalBlock(scope: !1209, file: !3, line: 234, column: 5)
!1213 = !DILocation(line: 234, column: 5, scope: !1212)
!1214 = !DILocation(line: 234, column: 5, scope: !1215)
!1215 = distinct !DILexicalBlock(scope: !1211, file: !3, line: 234, column: 5)
!1216 = !DILocation(line: 236, column: 5, scope: !1203)
!1217 = !DILocation(line: 238, column: 7, scope: !1218)
!1218 = distinct !DILexicalBlock(scope: !1102, file: !3, line: 238, column: 7)
!1219 = !DILocation(line: 238, column: 12, scope: !1218)
!1220 = !DILocation(line: 238, column: 7, scope: !1102)
!1221 = !DILocation(line: 239, column: 5, scope: !1222)
!1222 = distinct !DILexicalBlock(scope: !1218, file: !3, line: 238, column: 26)
!1223 = !DILocation(line: 239, column: 5, scope: !1224)
!1224 = distinct !DILexicalBlock(scope: !1225, file: !3, line: 239, column: 5)
!1225 = distinct !DILexicalBlock(scope: !1222, file: !3, line: 239, column: 5)
!1226 = !DILocation(line: 239, column: 5, scope: !1225)
!1227 = !DILocation(line: 239, column: 5, scope: !1228)
!1228 = distinct !DILexicalBlock(scope: !1224, file: !3, line: 239, column: 5)
!1229 = !DILocation(line: 239, column: 5, scope: !1230)
!1230 = distinct !DILexicalBlock(scope: !1231, file: !3, line: 239, column: 5)
!1231 = distinct !DILexicalBlock(scope: !1228, file: !3, line: 239, column: 5)
!1232 = !DILocation(line: 239, column: 5, scope: !1231)
!1233 = !DILocation(line: 239, column: 5, scope: !1234)
!1234 = distinct !DILexicalBlock(scope: !1230, file: !3, line: 239, column: 5)
!1235 = !DILocation(line: 241, column: 5, scope: !1222)
!1236 = !DILocation(line: 255, column: 7, scope: !1237)
!1237 = distinct !DILexicalBlock(scope: !1102, file: !3, line: 255, column: 7)
!1238 = !DILocation(line: 255, column: 7, scope: !1102)
!1239 = !DILocation(line: 256, column: 5, scope: !1240)
!1240 = distinct !DILexicalBlock(scope: !1237, file: !3, line: 255, column: 27)
!1241 = !DILocation(line: 256, column: 5, scope: !1242)
!1242 = distinct !DILexicalBlock(scope: !1243, file: !3, line: 256, column: 5)
!1243 = distinct !DILexicalBlock(scope: !1240, file: !3, line: 256, column: 5)
!1244 = !DILocation(line: 256, column: 5, scope: !1243)
!1245 = !DILocation(line: 256, column: 5, scope: !1246)
!1246 = distinct !DILexicalBlock(scope: !1242, file: !3, line: 256, column: 5)
!1247 = !DILocation(line: 256, column: 5, scope: !1248)
!1248 = distinct !DILexicalBlock(scope: !1249, file: !3, line: 256, column: 5)
!1249 = distinct !DILexicalBlock(scope: !1246, file: !3, line: 256, column: 5)
!1250 = !DILocation(line: 256, column: 5, scope: !1249)
!1251 = !DILocation(line: 256, column: 5, scope: !1252)
!1252 = distinct !DILexicalBlock(scope: !1248, file: !3, line: 256, column: 5)
!1253 = !DILocation(line: 258, column: 12, scope: !1240)
!1254 = !DILocation(line: 258, column: 5, scope: !1240)
!1255 = !DILocation(line: 281, column: 7, scope: !1256)
!1256 = distinct !DILexicalBlock(scope: !1102, file: !3, line: 281, column: 7)
!1257 = !DILocation(line: 281, column: 7, scope: !1102)
!1258 = !DILocation(line: 282, column: 12, scope: !1259)
!1259 = distinct !DILexicalBlock(scope: !1256, file: !3, line: 281, column: 27)
!1260 = !DILocation(line: 282, column: 5, scope: !1259)
!1261 = !DILocation(line: 285, column: 3, scope: !1102)
!1262 = !DILocation(line: 286, column: 1, scope: !1102)
!1263 = distinct !DISubprogram(name: "Demo1BobUnload", scope: !3, file: !3, line: 298, type: !501, scopeLine: 301, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !712)
!1264 = !DILocalVariable(name: "ImageHandle", arg: 1, scope: !1263, file: !3, line: 299, type: !98)
!1265 = !DILocation(line: 299, column: 18, scope: !1263)
!1266 = !DILocalVariable(name: "Status", scope: !1263, file: !3, line: 302, type: !130)
!1267 = !DILocation(line: 302, column: 14, scope: !1263)
!1268 = !DILocation(line: 308, column: 10, scope: !1263)
!1269 = !DILocation(line: 308, column: 3, scope: !1263)
!1270 = distinct !DISubprogram(name: "CopyMem_c", scope: !3, file: !3, line: 311, type: !1271, scopeLine: 311, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !712)
!1271 = !DISubroutineType(types: !1272)
!1272 = !{null, !52, !605, !1273}
!1273 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !1274, line: 46, baseType: !1275)
!1274 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!1275 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!1276 = !DILocalVariable(name: "Destination", arg: 1, scope: !1270, file: !3, line: 311, type: !52)
!1277 = !DILocation(line: 311, column: 22, scope: !1270)
!1278 = !DILocalVariable(name: "Source", arg: 2, scope: !1270, file: !3, line: 311, type: !605)
!1279 = !DILocation(line: 311, column: 47, scope: !1270)
!1280 = !DILocalVariable(name: "Length", arg: 3, scope: !1270, file: !3, line: 311, type: !1273)
!1281 = !DILocation(line: 311, column: 62, scope: !1270)
!1282 = !DILocalVariable(name: "dest", scope: !1270, file: !3, line: 312, type: !83)
!1283 = !DILocation(line: 312, column: 14, scope: !1270)
!1284 = !DILocation(line: 312, column: 32, scope: !1270)
!1285 = !DILocalVariable(name: "src", scope: !1270, file: !3, line: 313, type: !88)
!1286 = !DILocation(line: 313, column: 20, scope: !1270)
!1287 = !DILocation(line: 313, column: 43, scope: !1270)
!1288 = !DILocalVariable(name: "i", scope: !1289, file: !3, line: 315, type: !1273)
!1289 = distinct !DILexicalBlock(scope: !1270, file: !3, line: 315, column: 5)
!1290 = !DILocation(line: 315, column: 17, scope: !1289)
!1291 = !DILocation(line: 315, column: 10, scope: !1289)
!1292 = !DILocation(line: 315, column: 24, scope: !1293)
!1293 = distinct !DILexicalBlock(scope: !1289, file: !3, line: 315, column: 5)
!1294 = !DILocation(line: 315, column: 28, scope: !1293)
!1295 = !DILocation(line: 315, column: 26, scope: !1293)
!1296 = !DILocation(line: 315, column: 5, scope: !1289)
!1297 = !DILocation(line: 316, column: 19, scope: !1298)
!1298 = distinct !DILexicalBlock(scope: !1293, file: !3, line: 315, column: 41)
!1299 = !DILocation(line: 316, column: 23, scope: !1298)
!1300 = !DILocation(line: 316, column: 9, scope: !1298)
!1301 = !DILocation(line: 316, column: 14, scope: !1298)
!1302 = !DILocation(line: 316, column: 17, scope: !1298)
!1303 = !DILocation(line: 317, column: 5, scope: !1298)
!1304 = !DILocation(line: 315, column: 37, scope: !1293)
!1305 = !DILocation(line: 315, column: 5, scope: !1293)
!1306 = distinct !{!1306, !1296, !1307, !849}
!1307 = !DILocation(line: 317, column: 5, scope: !1289)
!1308 = !DILocation(line: 318, column: 1, scope: !1270)
!1309 = distinct !DISubprogram(name: "read_through_Demo1BobDataProvider", scope: !3, file: !3, line: 378, type: !1310, scopeLine: 378, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !712)
!1310 = !DISubroutineType(types: !1311)
!1311 = !{null, !52}
!1312 = !DILocalVariable(name: "search_address", arg: 1, scope: !1309, file: !3, line: 378, type: !52)
!1313 = !DILocation(line: 378, column: 46, scope: !1309)
!1314 = !DILocalVariable(name: "address", scope: !1309, file: !3, line: 379, type: !70)
!1315 = !DILocation(line: 379, column: 11, scope: !1309)
!1316 = !DILocalVariable(name: "size", scope: !1309, file: !3, line: 380, type: !70)
!1317 = !DILocation(line: 380, column: 11, scope: !1309)
!1318 = !DILocalVariable(name: "dest", scope: !1309, file: !3, line: 381, type: !310)
!1319 = !DILocation(line: 381, column: 23, scope: !1309)
!1320 = !DILocation(line: 381, column: 29, scope: !1309)
!1321 = !DILocation(line: 382, column: 24, scope: !1309)
!1322 = !DILocation(line: 382, column: 5, scope: !1309)
!1323 = !DILocation(line: 383, column: 5, scope: !1309)
!1324 = !DILocation(line: 384, column: 1, scope: !1309)
!1325 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 386, type: !1326, scopeLine: 387, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !712)
!1326 = !DISubroutineType(types: !1327)
!1327 = !{!196}
!1328 = !DILocalVariable(name: "search_address", scope: !1325, file: !3, line: 388, type: !52)
!1329 = !DILocation(line: 388, column: 9, scope: !1325)
!1330 = !DILocation(line: 389, column: 37, scope: !1325)
!1331 = !DILocation(line: 389, column: 3, scope: !1325)
!1332 = !DILocation(line: 390, column: 3, scope: !1325)
