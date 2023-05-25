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
@RngProtocol = hidden global %struct._EFI_RNG_PROTOCOL* null, align 8, !dbg !630
@masterKey = hidden global %struct._DEMO1_ACCESS_KEY* null, align 8, !dbg !649
@accessKeyLock = hidden global i8 0, align 1, !dbg !651
@head = hidden global %struct._LINK* null, align 8, !dbg !653
@last = hidden global %struct._LINK* null, align 8, !dbg !655
@keychain = hidden global %struct._LINK* null, align 8, !dbg !657
@.str = private unnamed_addr constant [19 x i8] c"Demo1_Access_Key.c\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"link != ((void*)0)\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"head\00", align 1
@gDemo1_Bob_Protocol = hidden global { i64 (%struct._Demo1_Bob_PROTOCOL*, i8*, i8**, i64)* } { i64 (%struct._Demo1_Bob_PROTOCOL*, i8*, i8**, i64)* @Demo1BobDataProvider }, align 8, !dbg !659
@AccessKeyProtocol = hidden global %struct._Demo1_Access_Key_PROTOCOL* null, align 8, !dbg !671
@Demo1_Bob_PeriodicTimer = hidden global i8* null, align 8, !dbg !684
@DataToProvide = hidden global i64 0, align 8, !dbg !686
@gLoadImage = hidden global %struct.EFI_LOADED_IMAGE_PROTOCOL* null, align 8, !dbg !688
@.str.3 = private unnamed_addr constant [55 x i8] c"%a: Could not locate Access Key protocol, Status = %r\0A\00", align 1
@__FUNCTION__.Demo1BobInit = private unnamed_addr constant [13 x i8] c"Demo1BobInit\00", align 1
@bobKey = hidden global %struct._DEMO1_ACCESS_KEY zeroinitializer, align 8, !dbg !703
@.str.4 = private unnamed_addr constant [41 x i8] c"%a: Could not generate key, Status = %r\0A\00", align 1
@AliceProtocol = hidden global %struct._Demo1_Alice_PROTOCOL* null, align 8, !dbg !690
@.str.5 = private unnamed_addr constant [50 x i8] c"%a: Could not locate Alice protocol, Status = %r\0A\00", align 1
@.str.6 = private unnamed_addr constant [48 x i8] c"%a: variable '%s' could not be read - bailing!\0A\00", align 1
@.str.7 = private unnamed_addr constant [11 x i32] [i32 65, i32 108, i32 105, i32 99, i32 101, i32 95, i32 77, i32 111, i32 100, i32 101, i32 0], align 4
@.str.8 = private unnamed_addr constant [40 x i8] c"%a: Alice is already running, quitting\0A\00", align 1
@.str.9 = private unnamed_addr constant [43 x i8] c"%a: Alice returned invalid mode, quitting\0A\00", align 1
@.str.10 = private unnamed_addr constant [47 x i8] c"%a: Could not create event timer, Status = %r\0A\00", align 1
@.str.11 = private unnamed_addr constant [11 x i8] c"gLoadImage\00", align 1
@.str.12 = private unnamed_addr constant [19 x i8] c"Address value: %s\0A\00", align 1
@.str.13 = private unnamed_addr constant [10 x i8] c"Size: %d\0A\00", align 1
@.str.14 = private unnamed_addr constant [19 x i8] c"Storage value: %s\0A\00", align 1
@.str.15 = private unnamed_addr constant [16 x i8] c"Dest value: %s\0A\00", align 1
@.str.16 = private unnamed_addr constant [10 x i8] c"data: %x\0A\00", align 1
@.str.17 = private unnamed_addr constant [20 x i8] c"bobkey address: %p\0A\00", align 1
@.str.18 = private unnamed_addr constant [22 x i8] c"Rand part bobkey: %x\0A\00", align 1
@.str.19 = private unnamed_addr constant [22 x i8] c"key magic bobkey: %x\0A\00", align 1
@.str.20 = private unnamed_addr constant [24 x i8] c"value Accesskeyptr: %x\0A\00", align 1
@.str.21 = private unnamed_addr constant [37 x i8] c"Address where bobkey is written: %p\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define hidden i64 @Demo1GenerateAccessKey(%struct._Demo1_Access_Key_PROTOCOL* noundef %0, i8* noundef %1, i8 noundef zeroext %2, %struct._DEMO1_ACCESS_KEY* noundef %3) #0 !dbg !715 {
  %5 = alloca i64, align 8
  %6 = alloca %struct._Demo1_Access_Key_PROTOCOL*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8, align 1
  %9 = alloca %struct._DEMO1_ACCESS_KEY*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct._Demo1_Access_Key_PROTOCOL* %0, %struct._Demo1_Access_Key_PROTOCOL** %6, align 8
  call void @llvm.dbg.declare(metadata %struct._Demo1_Access_Key_PROTOCOL** %6, metadata !717, metadata !DIExpression()), !dbg !718
  store i8* %1, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !719, metadata !DIExpression()), !dbg !720
  store i8 %2, i8* %8, align 1
  call void @llvm.dbg.declare(metadata i8* %8, metadata !721, metadata !DIExpression()), !dbg !722
  store %struct._DEMO1_ACCESS_KEY* %3, %struct._DEMO1_ACCESS_KEY** %9, align 8
  call void @llvm.dbg.declare(metadata %struct._DEMO1_ACCESS_KEY** %9, metadata !723, metadata !DIExpression()), !dbg !724
  call void @llvm.dbg.declare(metadata i64* %10, metadata !725, metadata !DIExpression()), !dbg !726
  store i64 0, i64* %10, align 8, !dbg !726
  call void @llvm.dbg.declare(metadata i64* %11, metadata !727, metadata !DIExpression()), !dbg !728
  store i64 0, i64* %11, align 8, !dbg !728
  %12 = load %struct._DEMO1_ACCESS_KEY*, %struct._DEMO1_ACCESS_KEY** %9, align 8, !dbg !729
  %13 = icmp eq %struct._DEMO1_ACCESS_KEY* %12, null, !dbg !731
  br i1 %13, label %14, label %15, !dbg !732

14:                                               ; preds = %4
  store i64 -9223372036854775806, i64* %5, align 8, !dbg !733
  br label %52, !dbg !733

15:                                               ; preds = %4
  %16 = load i8, i8* @accessKeyLock, align 1, !dbg !735
  %17 = zext i8 %16 to i32, !dbg !735
  %18 = icmp eq i32 %17, 1, !dbg !737
  br i1 %18, label %19, label %20, !dbg !738

19:                                               ; preds = %15
  store i64 -9223372036854775800, i64* %5, align 8, !dbg !739
  br label %52, !dbg !739

20:                                               ; preds = %15
  %21 = load %struct._EFI_RNG_PROTOCOL*, %struct._EFI_RNG_PROTOCOL** @RngProtocol, align 8, !dbg !741
  %22 = getelementptr inbounds %struct._EFI_RNG_PROTOCOL, %struct._EFI_RNG_PROTOCOL* %21, i32 0, i32 1, !dbg !742
  %23 = load i64 (%struct._EFI_RNG_PROTOCOL*, %struct.GUID*, i64, i8*)*, i64 (%struct._EFI_RNG_PROTOCOL*, %struct.GUID*, i64, i8*)** %22, align 8, !dbg !742
  %24 = load %struct._EFI_RNG_PROTOCOL*, %struct._EFI_RNG_PROTOCOL** @RngProtocol, align 8, !dbg !743
  %25 = load %struct._DEMO1_ACCESS_KEY*, %struct._DEMO1_ACCESS_KEY** %9, align 8, !dbg !744
  %26 = getelementptr inbounds %struct._DEMO1_ACCESS_KEY, %struct._DEMO1_ACCESS_KEY* %25, i32 0, i32 0, !dbg !745
  %27 = bitcast [2 x i64]* %26 to i8*, !dbg !746
  %28 = call i64 %23(%struct._EFI_RNG_PROTOCOL* noundef %24, %struct.GUID* noundef null, i64 noundef 16, i8* noundef %27), !dbg !741
  store i64 %28, i64* %10, align 8, !dbg !747
  %29 = load i64, i64* %10, align 8, !dbg !748
  %30 = icmp slt i64 %29, 0, !dbg !748
  br i1 %30, label %31, label %33, !dbg !750

31:                                               ; preds = %20
  %32 = load i64, i64* %10, align 8, !dbg !751
  store i64 %32, i64* %5, align 8, !dbg !753
  br label %52, !dbg !753

33:                                               ; preds = %20
  %34 = load i8, i8* %8, align 1, !dbg !754
  %35 = icmp ne i8 %34, 0, !dbg !754
  br i1 %35, label %36, label %37, !dbg !756

36:                                               ; preds = %33
  store i64 -2395670108176482799, i64* %11, align 8, !dbg !757
  br label %38, !dbg !759

37:                                               ; preds = %33
  store i64 -2395670108176510803, i64* %11, align 8, !dbg !760
  br label %38

38:                                               ; preds = %37, %36
  %39 = load i64, i64* %11, align 8, !dbg !762
  %40 = load %struct._DEMO1_ACCESS_KEY*, %struct._DEMO1_ACCESS_KEY** %9, align 8, !dbg !763
  %41 = getelementptr inbounds %struct._DEMO1_ACCESS_KEY, %struct._DEMO1_ACCESS_KEY* %40, i32 0, i32 0, !dbg !764
  %42 = getelementptr inbounds [2 x i64], [2 x i64]* %41, i64 0, i64 1, !dbg !763
  store i64 %39, i64* %42, align 8, !dbg !765
  %43 = load %struct._DEMO1_ACCESS_KEY*, %struct._DEMO1_ACCESS_KEY** %9, align 8, !dbg !766
  %44 = load %struct._DEMO1_ACCESS_KEY*, %struct._DEMO1_ACCESS_KEY** @masterKey, align 8, !dbg !768
  %45 = icmp ne %struct._DEMO1_ACCESS_KEY* %43, %44, !dbg !769
  br i1 %45, label %46, label %48, !dbg !770

46:                                               ; preds = %38
  %47 = load %struct._DEMO1_ACCESS_KEY*, %struct._DEMO1_ACCESS_KEY** %9, align 8, !dbg !771
  call void @InsertLast(%struct._DEMO1_ACCESS_KEY* noundef %47), !dbg !773
  br label %50, !dbg !774

48:                                               ; preds = %38
  %49 = load %struct._DEMO1_ACCESS_KEY*, %struct._DEMO1_ACCESS_KEY** %9, align 8, !dbg !775
  call void @InsertFirst(%struct._DEMO1_ACCESS_KEY* noundef %49), !dbg !777
  br label %50

50:                                               ; preds = %48, %46
  %51 = load i64, i64* %10, align 8, !dbg !778
  store i64 %51, i64* %5, align 8, !dbg !779
  br label %52, !dbg !779

52:                                               ; preds = %50, %31, %19, %14
  %53 = load i64, i64* %5, align 8, !dbg !780
  ret i64 %53, !dbg !780
}

; Function Attrs: noinline nounwind optnone uwtable
define hidden i64 @Demo1ValidateAccessKey(%struct._Demo1_Access_Key_PROTOCOL* noundef %0, i8* noundef %1, %struct._DEMO1_ACCESS_KEY* noundef %2, i8 noundef zeroext %3, i8* noundef %4) #0 !dbg !781 {
  %6 = alloca i64, align 8
  %7 = alloca %struct._Demo1_Access_Key_PROTOCOL*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct._DEMO1_ACCESS_KEY*, align 8
  %10 = alloca i8, align 1
  %11 = alloca i8*, align 8
  store %struct._Demo1_Access_Key_PROTOCOL* %0, %struct._Demo1_Access_Key_PROTOCOL** %7, align 8
  call void @llvm.dbg.declare(metadata %struct._Demo1_Access_Key_PROTOCOL** %7, metadata !784, metadata !DIExpression()), !dbg !785
  store i8* %1, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !786, metadata !DIExpression()), !dbg !787
  store %struct._DEMO1_ACCESS_KEY* %2, %struct._DEMO1_ACCESS_KEY** %9, align 8
  call void @llvm.dbg.declare(metadata %struct._DEMO1_ACCESS_KEY** %9, metadata !788, metadata !DIExpression()), !dbg !789
  store i8 %3, i8* %10, align 1
  call void @llvm.dbg.declare(metadata i8* %10, metadata !790, metadata !DIExpression()), !dbg !791
  store i8* %4, i8** %11, align 8
  call void @llvm.dbg.declare(metadata i8** %11, metadata !792, metadata !DIExpression()), !dbg !793
  %12 = load i8*, i8** %11, align 8, !dbg !794
  %13 = icmp eq i8* %12, null, !dbg !796
  br i1 %13, label %14, label %15, !dbg !797

14:                                               ; preds = %5
  store i64 -9223372036854775806, i64* %6, align 8, !dbg !798
  br label %35, !dbg !798

15:                                               ; preds = %5
  %16 = load i8*, i8** %11, align 8, !dbg !800
  store i8 0, i8* %16, align 1, !dbg !801
  %17 = load %struct._DEMO1_ACCESS_KEY*, %struct._DEMO1_ACCESS_KEY** %9, align 8, !dbg !802
  %18 = icmp eq %struct._DEMO1_ACCESS_KEY* %17, null, !dbg !804
  br i1 %18, label %19, label %20, !dbg !805

19:                                               ; preds = %15
  store i64 -9223372036854775806, i64* %6, align 8, !dbg !806
  br label %35, !dbg !806

20:                                               ; preds = %15
  %21 = load i8, i8* %10, align 1, !dbg !808
  %22 = zext i8 %21 to i32, !dbg !808
  %23 = icmp ne i32 %22, 0, !dbg !808
  br i1 %23, label %24, label %31, !dbg !810

24:                                               ; preds = %20
  %25 = load %struct._DEMO1_ACCESS_KEY*, %struct._DEMO1_ACCESS_KEY** %9, align 8, !dbg !811
  %26 = getelementptr inbounds %struct._DEMO1_ACCESS_KEY, %struct._DEMO1_ACCESS_KEY* %25, i32 0, i32 0, !dbg !812
  %27 = getelementptr inbounds [2 x i64], [2 x i64]* %26, i64 0, i64 1, !dbg !811
  %28 = load i64, i64* %27, align 8, !dbg !811
  %29 = icmp eq i64 %28, -2395670108176510803, !dbg !813
  br i1 %29, label %30, label %31, !dbg !814

30:                                               ; preds = %24
  store i64 -9223372036854775806, i64* %6, align 8, !dbg !815
  br label %35, !dbg !815

31:                                               ; preds = %24, %20
  %32 = load %struct._DEMO1_ACCESS_KEY*, %struct._DEMO1_ACCESS_KEY** %9, align 8, !dbg !817
  %33 = call zeroext i8 @DoesKeyExist(%struct._DEMO1_ACCESS_KEY* noundef %32), !dbg !818
  %34 = load i8*, i8** %11, align 8, !dbg !819
  store i8 %33, i8* %34, align 1, !dbg !820
  store i64 0, i64* %6, align 8, !dbg !821
  br label %35, !dbg !821

35:                                               ; preds = %31, %30, %19, %14
  %36 = load i64, i64* %6, align 8, !dbg !822
  ret i64 %36, !dbg !822
}

; Function Attrs: noinline nounwind optnone uwtable
define hidden zeroext i8 @IsKeychainEmpty() #0 !dbg !823 {
  %1 = load %struct._LINK*, %struct._LINK** @head, align 8, !dbg !826
  %2 = icmp eq %struct._LINK* %1, null, !dbg !827
  %3 = zext i1 %2 to i32, !dbg !827
  %4 = trunc i32 %3 to i8, !dbg !826
  ret i8 %4, !dbg !828
}

; Function Attrs: noinline nounwind optnone uwtable
define hidden i64 @KeychainLength() #0 !dbg !829 {
  %1 = alloca i64, align 8
  %2 = alloca %struct._LINK*, align 8
  call void @llvm.dbg.declare(metadata i64* %1, metadata !832, metadata !DIExpression()), !dbg !833
  store i64 0, i64* %1, align 8, !dbg !833
  call void @llvm.dbg.declare(metadata %struct._LINK** %2, metadata !834, metadata !DIExpression()), !dbg !835
  %3 = load %struct._LINK*, %struct._LINK** @head, align 8, !dbg !836
  store %struct._LINK* %3, %struct._LINK** %2, align 8, !dbg !838
  br label %4, !dbg !839

4:                                                ; preds = %10, %0
  %5 = load %struct._LINK*, %struct._LINK** %2, align 8, !dbg !840
  %6 = icmp ne %struct._LINK* %5, null, !dbg !842
  br i1 %6, label %7, label %14, !dbg !843

7:                                                ; preds = %4
  %8 = load i64, i64* %1, align 8, !dbg !844
  %9 = add i64 %8, 1, !dbg !844
  store i64 %9, i64* %1, align 8, !dbg !844
  br label %10, !dbg !846

10:                                               ; preds = %7
  %11 = load %struct._LINK*, %struct._LINK** %2, align 8, !dbg !847
  %12 = getelementptr inbounds %struct._LINK, %struct._LINK* %11, i32 0, i32 1, !dbg !848
  %13 = load %struct._LINK*, %struct._LINK** %12, align 8, !dbg !848
  store %struct._LINK* %13, %struct._LINK** %2, align 8, !dbg !849
  br label %4, !dbg !850, !llvm.loop !851

14:                                               ; preds = %4
  %15 = load i64, i64* %1, align 8, !dbg !854
  ret i64 %15, !dbg !855
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind optnone uwtable
define hidden void @InsertFirst(%struct._DEMO1_ACCESS_KEY* noundef %0) #0 !dbg !856 {
  %2 = alloca %struct._DEMO1_ACCESS_KEY*, align 8
  %3 = alloca %struct._LINK*, align 8
  store %struct._DEMO1_ACCESS_KEY* %0, %struct._DEMO1_ACCESS_KEY** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._DEMO1_ACCESS_KEY** %2, metadata !859, metadata !DIExpression()), !dbg !860
  call void @llvm.dbg.declare(metadata %struct._LINK** %3, metadata !861, metadata !DIExpression()), !dbg !862
  %4 = call i8* @AllocatePool(i64 noundef 32), !dbg !863
  %5 = bitcast i8* %4 to %struct._LINK*, !dbg !863
  store %struct._LINK* %5, %struct._LINK** %3, align 8, !dbg !862
  br label %6, !dbg !864

6:                                                ; preds = %1
  %7 = call zeroext i8 @DebugAssertEnabled(), !dbg !865
  %8 = icmp ne i8 %7, 0, !dbg !865
  br i1 %8, label %9, label %14, !dbg !868

9:                                                ; preds = %6
  %10 = load %struct._LINK*, %struct._LINK** %3, align 8, !dbg !869
  %11 = icmp ne %struct._LINK* %10, null, !dbg !869
  br i1 %11, label %13, label %12, !dbg !872

12:                                               ; preds = %9
  call void @DebugAssert(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i64 noundef 88, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0)), !dbg !873
  br label %13, !dbg !873

13:                                               ; preds = %12, %9
  br label %14, !dbg !872

14:                                               ; preds = %13, %6
  br label %15, !dbg !868

15:                                               ; preds = %14
  %16 = load %struct._LINK*, %struct._LINK** %3, align 8, !dbg !875
  %17 = getelementptr inbounds %struct._LINK, %struct._LINK* %16, i32 0, i32 0, !dbg !876
  %18 = bitcast %struct._DEMO1_ACCESS_KEY* %17 to i8*, !dbg !877
  %19 = load %struct._DEMO1_ACCESS_KEY*, %struct._DEMO1_ACCESS_KEY** %2, align 8, !dbg !878
  %20 = bitcast %struct._DEMO1_ACCESS_KEY* %19 to i8*, !dbg !878
  %21 = call i8* @CopyMem(i8* noundef %18, i8* noundef %20, i64 noundef 16), !dbg !879
  %22 = call zeroext i8 @IsKeychainEmpty(), !dbg !880
  %23 = icmp ne i8 %22, 0, !dbg !880
  br i1 %23, label %24, label %26, !dbg !882

24:                                               ; preds = %15
  %25 = load %struct._LINK*, %struct._LINK** %3, align 8, !dbg !883
  store %struct._LINK* %25, %struct._LINK** @last, align 8, !dbg !885
  br label %30, !dbg !886

26:                                               ; preds = %15
  %27 = load %struct._LINK*, %struct._LINK** %3, align 8, !dbg !887
  %28 = load %struct._LINK*, %struct._LINK** @head, align 8, !dbg !889
  %29 = getelementptr inbounds %struct._LINK, %struct._LINK* %28, i32 0, i32 2, !dbg !890
  store %struct._LINK* %27, %struct._LINK** %29, align 8, !dbg !891
  br label %30

30:                                               ; preds = %26, %24
  %31 = load %struct._LINK*, %struct._LINK** %3, align 8, !dbg !892
  %32 = getelementptr inbounds %struct._LINK, %struct._LINK* %31, i32 0, i32 2, !dbg !893
  store %struct._LINK* null, %struct._LINK** %32, align 8, !dbg !894
  %33 = load %struct._LINK*, %struct._LINK** @head, align 8, !dbg !895
  %34 = load %struct._LINK*, %struct._LINK** %3, align 8, !dbg !896
  %35 = getelementptr inbounds %struct._LINK, %struct._LINK* %34, i32 0, i32 1, !dbg !897
  store %struct._LINK* %33, %struct._LINK** %35, align 8, !dbg !898
  %36 = load %struct._LINK*, %struct._LINK** %3, align 8, !dbg !899
  store %struct._LINK* %36, %struct._LINK** @head, align 8, !dbg !900
  ret void, !dbg !901
}

declare hidden i8* @AllocatePool(i64 noundef) #2

declare hidden zeroext i8 @DebugAssertEnabled() #2

declare hidden void @DebugAssert(i8* noundef, i64 noundef, i8* noundef) #2

declare hidden i8* @CopyMem(i8* noundef, i8* noundef, i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define hidden void @InsertLast(%struct._DEMO1_ACCESS_KEY* noundef %0) #0 !dbg !902 {
  %2 = alloca %struct._DEMO1_ACCESS_KEY*, align 8
  %3 = alloca %struct._LINK*, align 8
  store %struct._DEMO1_ACCESS_KEY* %0, %struct._DEMO1_ACCESS_KEY** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._DEMO1_ACCESS_KEY** %2, metadata !903, metadata !DIExpression()), !dbg !904
  call void @llvm.dbg.declare(metadata %struct._LINK** %3, metadata !905, metadata !DIExpression()), !dbg !906
  %4 = call i8* @AllocatePool(i64 noundef 32), !dbg !907
  %5 = bitcast i8* %4 to %struct._LINK*, !dbg !907
  store %struct._LINK* %5, %struct._LINK** %3, align 8, !dbg !906
  br label %6, !dbg !908

6:                                                ; preds = %1
  %7 = call zeroext i8 @DebugAssertEnabled(), !dbg !909
  %8 = icmp ne i8 %7, 0, !dbg !909
  br i1 %8, label %9, label %14, !dbg !912

9:                                                ; preds = %6
  %10 = load %struct._LINK*, %struct._LINK** %3, align 8, !dbg !913
  %11 = icmp ne %struct._LINK* %10, null, !dbg !913
  br i1 %11, label %13, label %12, !dbg !916

12:                                               ; preds = %9
  call void @DebugAssert(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i64 noundef 115, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0)), !dbg !917
  br label %13, !dbg !917

13:                                               ; preds = %12, %9
  br label %14, !dbg !916

14:                                               ; preds = %13, %6
  br label %15, !dbg !912

15:                                               ; preds = %14
  %16 = load %struct._LINK*, %struct._LINK** %3, align 8, !dbg !919
  %17 = getelementptr inbounds %struct._LINK, %struct._LINK* %16, i32 0, i32 0, !dbg !920
  %18 = bitcast %struct._DEMO1_ACCESS_KEY* %17 to i8*, !dbg !921
  %19 = load %struct._DEMO1_ACCESS_KEY*, %struct._DEMO1_ACCESS_KEY** %2, align 8, !dbg !922
  %20 = bitcast %struct._DEMO1_ACCESS_KEY* %19 to i8*, !dbg !922
  %21 = call i8* @CopyMem(i8* noundef %18, i8* noundef %20, i64 noundef 16), !dbg !923
  %22 = call zeroext i8 @IsKeychainEmpty(), !dbg !924
  %23 = icmp ne i8 %22, 0, !dbg !924
  br i1 %23, label %24, label %26, !dbg !926

24:                                               ; preds = %15
  %25 = load %struct._LINK*, %struct._LINK** %3, align 8, !dbg !927
  store %struct._LINK* %25, %struct._LINK** @last, align 8, !dbg !929
  br label %33, !dbg !930

26:                                               ; preds = %15
  %27 = load %struct._LINK*, %struct._LINK** %3, align 8, !dbg !931
  %28 = load %struct._LINK*, %struct._LINK** @last, align 8, !dbg !933
  %29 = getelementptr inbounds %struct._LINK, %struct._LINK* %28, i32 0, i32 1, !dbg !934
  store %struct._LINK* %27, %struct._LINK** %29, align 8, !dbg !935
  %30 = load %struct._LINK*, %struct._LINK** @last, align 8, !dbg !936
  %31 = load %struct._LINK*, %struct._LINK** %3, align 8, !dbg !937
  %32 = getelementptr inbounds %struct._LINK, %struct._LINK* %31, i32 0, i32 2, !dbg !938
  store %struct._LINK* %30, %struct._LINK** %32, align 8, !dbg !939
  br label %33

33:                                               ; preds = %26, %24
  %34 = load %struct._LINK*, %struct._LINK** %3, align 8, !dbg !940
  %35 = getelementptr inbounds %struct._LINK, %struct._LINK* %34, i32 0, i32 1, !dbg !941
  store %struct._LINK* null, %struct._LINK** %35, align 8, !dbg !942
  %36 = load %struct._LINK*, %struct._LINK** %3, align 8, !dbg !943
  store %struct._LINK* %36, %struct._LINK** @last, align 8, !dbg !944
  ret void, !dbg !945
}

; Function Attrs: noinline nounwind optnone uwtable
define hidden zeroext i8 @DoesKeyExist(%struct._DEMO1_ACCESS_KEY* noundef %0) #0 !dbg !946 {
  %2 = alloca i8, align 1
  %3 = alloca %struct._DEMO1_ACCESS_KEY*, align 8
  %4 = alloca %struct._LINK*, align 8
  store %struct._DEMO1_ACCESS_KEY* %0, %struct._DEMO1_ACCESS_KEY** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._DEMO1_ACCESS_KEY** %3, metadata !949, metadata !DIExpression()), !dbg !950
  call void @llvm.dbg.declare(metadata %struct._LINK** %4, metadata !951, metadata !DIExpression()), !dbg !952
  %5 = load %struct._DEMO1_ACCESS_KEY*, %struct._DEMO1_ACCESS_KEY** %3, align 8, !dbg !953
  %6 = icmp eq %struct._DEMO1_ACCESS_KEY* %5, null, !dbg !955
  br i1 %6, label %7, label %8, !dbg !956

7:                                                ; preds = %1
  store i8 0, i8* %2, align 1, !dbg !957
  br label %35, !dbg !957

8:                                                ; preds = %1
  %9 = call i8* @malloc(i64 noundef 32), !dbg !959
  %10 = bitcast i8* %9 to %struct._LINK*, !dbg !960
  store %struct._LINK* %10, %struct._LINK** @head, align 8, !dbg !961
  %11 = load %struct._LINK*, %struct._LINK** @head, align 8, !dbg !962
  %12 = bitcast %struct._LINK* %11 to i8*, !dbg !962
  call void @klee_make_symbolic(i8* noundef %12, i64 noundef 32, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)), !dbg !963
  %13 = load %struct._LINK*, %struct._LINK** @head, align 8, !dbg !964
  store %struct._LINK* %13, %struct._LINK** %4, align 8, !dbg !966
  br label %14, !dbg !967

14:                                               ; preds = %30, %8
  %15 = load %struct._LINK*, %struct._LINK** %4, align 8, !dbg !968
  %16 = icmp ne %struct._LINK* %15, null, !dbg !970
  br i1 %16, label %17, label %34, !dbg !971

17:                                               ; preds = %14
  %18 = load %struct._DEMO1_ACCESS_KEY*, %struct._DEMO1_ACCESS_KEY** %3, align 8, !dbg !972
  %19 = getelementptr inbounds %struct._DEMO1_ACCESS_KEY, %struct._DEMO1_ACCESS_KEY* %18, i32 0, i32 0, !dbg !975
  %20 = getelementptr inbounds [2 x i64], [2 x i64]* %19, i64 0, i64 0, !dbg !972
  %21 = load i64, i64* %20, align 8, !dbg !972
  %22 = load %struct._LINK*, %struct._LINK** %4, align 8, !dbg !976
  %23 = getelementptr inbounds %struct._LINK, %struct._LINK* %22, i32 0, i32 0, !dbg !977
  %24 = getelementptr inbounds %struct._DEMO1_ACCESS_KEY, %struct._DEMO1_ACCESS_KEY* %23, i32 0, i32 0, !dbg !978
  %25 = getelementptr inbounds [2 x i64], [2 x i64]* %24, i64 0, i64 0, !dbg !976
  %26 = load i64, i64* %25, align 8, !dbg !976
  %27 = icmp eq i64 %21, %26, !dbg !979
  br i1 %27, label %28, label %29, !dbg !980

28:                                               ; preds = %17
  store i8 1, i8* %2, align 1, !dbg !981
  br label %35, !dbg !981

29:                                               ; preds = %17
  br label %30, !dbg !983

30:                                               ; preds = %29
  %31 = load %struct._LINK*, %struct._LINK** %4, align 8, !dbg !984
  %32 = getelementptr inbounds %struct._LINK, %struct._LINK* %31, i32 0, i32 1, !dbg !985
  %33 = load %struct._LINK*, %struct._LINK** %32, align 8, !dbg !985
  store %struct._LINK* %33, %struct._LINK** %4, align 8, !dbg !986
  br label %14, !dbg !987, !llvm.loop !988

34:                                               ; preds = %14
  store i8 0, i8* %2, align 1, !dbg !990
  br label %35, !dbg !990

35:                                               ; preds = %34, %28, %7
  %36 = load i8, i8* %2, align 1, !dbg !991
  ret i8 %36, !dbg !991
}

declare i8* @malloc(i64 noundef) #2

declare hidden void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define hidden i64 @Demo1AccessKeyInit(i8* noundef %0, %struct.EFI_SYSTEM_TABLE* noundef %1) #0 !dbg !992 {
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.EFI_SYSTEM_TABLE*, align 8
  %6 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !995, metadata !DIExpression()), !dbg !996
  store %struct.EFI_SYSTEM_TABLE* %1, %struct.EFI_SYSTEM_TABLE** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.EFI_SYSTEM_TABLE** %5, metadata !997, metadata !DIExpression()), !dbg !998
  call void @llvm.dbg.declare(metadata i64* %6, metadata !999, metadata !DIExpression()), !dbg !1000
  %7 = load i64, i64* %6, align 8, !dbg !1001
  %8 = icmp slt i64 %7, 0, !dbg !1001
  br i1 %8, label %12, label %9, !dbg !1003

9:                                                ; preds = %2
  %10 = load %struct._EFI_RNG_PROTOCOL*, %struct._EFI_RNG_PROTOCOL** @RngProtocol, align 8, !dbg !1004
  %11 = icmp eq %struct._EFI_RNG_PROTOCOL* %10, null, !dbg !1005
  br i1 %11, label %12, label %14, !dbg !1006

12:                                               ; preds = %9, %2
  %13 = load i64, i64* %6, align 8, !dbg !1007
  store i64 %13, i64* %3, align 8, !dbg !1009
  br label %29, !dbg !1009

14:                                               ; preds = %9
  %15 = call i8* @AllocatePool(i64 noundef 16), !dbg !1010
  %16 = bitcast i8* %15 to %struct._DEMO1_ACCESS_KEY*, !dbg !1010
  store %struct._DEMO1_ACCESS_KEY* %16, %struct._DEMO1_ACCESS_KEY** @masterKey, align 8, !dbg !1011
  %17 = load %struct._DEMO1_ACCESS_KEY*, %struct._DEMO1_ACCESS_KEY** @masterKey, align 8, !dbg !1012
  %18 = call i64 @Demo1GenerateAccessKey(%struct._Demo1_Access_Key_PROTOCOL* noundef bitcast ({ i64 (%struct._Demo1_Access_Key_PROTOCOL*, i8*, i8, %struct._DEMO1_ACCESS_KEY*)*, i8* }* @gDemo1_Access_Key_Protocol to %struct._Demo1_Access_Key_PROTOCOL*), i8* noundef null, i8 noundef zeroext 1, %struct._DEMO1_ACCESS_KEY* noundef %17), !dbg !1013
  store i64 %18, i64* %6, align 8, !dbg !1014
  %19 = load i64, i64* %6, align 8, !dbg !1015
  %20 = icmp slt i64 %19, 0, !dbg !1015
  br i1 %20, label %21, label %23, !dbg !1017

21:                                               ; preds = %14
  %22 = load i64, i64* %6, align 8, !dbg !1018
  store i64 %22, i64* %3, align 8, !dbg !1020
  br label %29, !dbg !1020

23:                                               ; preds = %14
  %24 = load i64, i64* %6, align 8, !dbg !1021
  %25 = icmp slt i64 %24, 0, !dbg !1021
  br i1 %25, label %26, label %28, !dbg !1023

26:                                               ; preds = %23
  %27 = load i64, i64* %6, align 8, !dbg !1024
  store i64 %27, i64* %3, align 8, !dbg !1026
  br label %29, !dbg !1026

28:                                               ; preds = %23
  store i64 0, i64* %3, align 8, !dbg !1027
  br label %29, !dbg !1027

29:                                               ; preds = %28, %26, %21, %12
  %30 = load i64, i64* %3, align 8, !dbg !1028
  ret i64 %30, !dbg !1028
}

; Function Attrs: noinline nounwind optnone uwtable
define hidden i64 @Demo1AccessKeyUnload(i8* noundef %0) #0 !dbg !1029 {
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !1030, metadata !DIExpression()), !dbg !1031
  call void @llvm.dbg.declare(metadata i64* %3, metadata !1032, metadata !DIExpression()), !dbg !1033
  store i64 0, i64* %3, align 8, !dbg !1033
  %4 = load %struct._DEMO1_ACCESS_KEY*, %struct._DEMO1_ACCESS_KEY** @masterKey, align 8, !dbg !1034
  %5 = bitcast %struct._DEMO1_ACCESS_KEY* %4 to i8*, !dbg !1034
  call void @FreePool(i8* noundef %5), !dbg !1035
  %6 = load i64, i64* %3, align 8, !dbg !1036
  ret i64 %6, !dbg !1037
}

declare hidden void @FreePool(i8* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define hidden i64 @Demo1BobDataProvider(%struct._Demo1_Bob_PROTOCOL* noundef %0, i8* noundef %1, i8** noundef %2, i64 noundef %3) #0 !dbg !1038 {
  %5 = alloca i64, align 8
  %6 = alloca %struct._Demo1_Bob_PROTOCOL*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  store %struct._Demo1_Bob_PROTOCOL* %0, %struct._Demo1_Bob_PROTOCOL** %6, align 8
  call void @llvm.dbg.declare(metadata %struct._Demo1_Bob_PROTOCOL** %6, metadata !1039, metadata !DIExpression()), !dbg !1040
  store i8* %1, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !1041, metadata !DIExpression()), !dbg !1042
  store i8** %2, i8*** %8, align 8
  call void @llvm.dbg.declare(metadata i8*** %8, metadata !1043, metadata !DIExpression()), !dbg !1044
  store i64 %3, i64* %9, align 8
  call void @llvm.dbg.declare(metadata i64* %9, metadata !1045, metadata !DIExpression()), !dbg !1046
  call void @llvm.dbg.declare(metadata i64* %10, metadata !1047, metadata !DIExpression()), !dbg !1048
  %13 = load i8*, i8** %7, align 8, !dbg !1049
  %14 = ptrtoint i8* %13 to i64, !dbg !1050
  store i64 %14, i64* %10, align 8, !dbg !1048
  %15 = call i8* @malloc(i64 noundef 96), !dbg !1051
  %16 = bitcast i8* %15 to %struct.EFI_LOADED_IMAGE_PROTOCOL*, !dbg !1052
  store %struct.EFI_LOADED_IMAGE_PROTOCOL* %16, %struct.EFI_LOADED_IMAGE_PROTOCOL** @gLoadImage, align 8, !dbg !1053
  %17 = load %struct.EFI_LOADED_IMAGE_PROTOCOL*, %struct.EFI_LOADED_IMAGE_PROTOCOL** @gLoadImage, align 8, !dbg !1054
  %18 = bitcast %struct.EFI_LOADED_IMAGE_PROTOCOL* %17 to i8*, !dbg !1054
  call void @klee_make_symbolic(i8* noundef %18, i64 noundef 96, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.11, i64 0, i64 0)), !dbg !1055
  call void @llvm.dbg.declare(metadata i64* %11, metadata !1056, metadata !DIExpression()), !dbg !1057
  %19 = load %struct.EFI_LOADED_IMAGE_PROTOCOL*, %struct.EFI_LOADED_IMAGE_PROTOCOL** @gLoadImage, align 8, !dbg !1058
  %20 = getelementptr inbounds %struct.EFI_LOADED_IMAGE_PROTOCOL, %struct.EFI_LOADED_IMAGE_PROTOCOL* %19, i32 0, i32 8, !dbg !1059
  %21 = load i8*, i8** %20, align 8, !dbg !1059
  %22 = ptrtoint i8* %21 to i64, !dbg !1060
  store i64 %22, i64* %11, align 8, !dbg !1057
  call void @llvm.dbg.declare(metadata i8** %12, metadata !1061, metadata !DIExpression()), !dbg !1062
  store i8* null, i8** %12, align 8, !dbg !1062
  %23 = load i8**, i8*** %8, align 8, !dbg !1063
  %24 = icmp eq i8** %23, null, !dbg !1065
  br i1 %24, label %25, label %26, !dbg !1066

25:                                               ; preds = %4
  store i64 -9223372036854775806, i64* %5, align 8, !dbg !1067
  br label %66, !dbg !1067

26:                                               ; preds = %4
  %27 = load i64, i64* %10, align 8, !dbg !1069
  %28 = load i64, i64* %11, align 8, !dbg !1071
  %29 = icmp ult i64 %27, %28, !dbg !1072
  br i1 %29, label %30, label %31, !dbg !1073

30:                                               ; preds = %26
  store i64 -9223372036854775793, i64* %5, align 8, !dbg !1074
  br label %66, !dbg !1074

31:                                               ; preds = %26
  %32 = load i64, i64* %11, align 8, !dbg !1076
  %33 = load %struct.EFI_LOADED_IMAGE_PROTOCOL*, %struct.EFI_LOADED_IMAGE_PROTOCOL** @gLoadImage, align 8, !dbg !1078
  %34 = getelementptr inbounds %struct.EFI_LOADED_IMAGE_PROTOCOL, %struct.EFI_LOADED_IMAGE_PROTOCOL* %33, i32 0, i32 9, !dbg !1079
  %35 = load i64, i64* %34, align 8, !dbg !1079
  %36 = add i64 %32, %35, !dbg !1080
  %37 = load i64, i64* %10, align 8, !dbg !1081
  %38 = load i64, i64* %9, align 8, !dbg !1082
  %39 = add i64 %37, %38, !dbg !1083
  %40 = icmp ult i64 %36, %39, !dbg !1084
  br i1 %40, label %41, label %42, !dbg !1085

41:                                               ; preds = %31
  store i64 -9223372036854775793, i64* %5, align 8, !dbg !1086
  br label %66, !dbg !1086

42:                                               ; preds = %31
  %43 = load i64, i64* %9, align 8, !dbg !1088
  %44 = call i8* @malloc(i64 noundef %43), !dbg !1089
  store i8* %44, i8** %12, align 8, !dbg !1090
  %45 = load i8*, i8** %12, align 8, !dbg !1091
  %46 = icmp eq i8* %45, null, !dbg !1093
  br i1 %46, label %47, label %48, !dbg !1094

47:                                               ; preds = %42
  store i64 -9223372036854775806, i64* %5, align 8, !dbg !1095
  br label %66, !dbg !1095

48:                                               ; preds = %42
  %49 = load i8*, i8** %7, align 8, !dbg !1097
  %50 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.12, i64 0, i64 0), i8* noundef %49), !dbg !1098
  %51 = load i64, i64* %9, align 8, !dbg !1099
  %52 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0), i64 noundef %51), !dbg !1100
  %53 = load i8*, i8** %12, align 8, !dbg !1101
  %54 = load i8*, i8** %7, align 8, !dbg !1102
  %55 = load i8*, i8** %7, align 8, !dbg !1103
  %56 = call i64 @strlen(i8* noundef %55), !dbg !1104
  %57 = add i64 %56, 1, !dbg !1105
  %58 = call i8* @memcpy(i8* %53, i8* %54, i64 %57), !dbg !1106
  %59 = load i8*, i8** %12, align 8, !dbg !1107
  %60 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.14, i64 0, i64 0), i8* noundef %59), !dbg !1108
  %61 = load i8*, i8** %12, align 8, !dbg !1109
  %62 = load i8**, i8*** %8, align 8, !dbg !1110
  store i8* %61, i8** %62, align 8, !dbg !1111
  %63 = load i8**, i8*** %8, align 8, !dbg !1112
  %64 = bitcast i8** %63 to i8*, !dbg !1113
  %65 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.15, i64 0, i64 0), i8* noundef %64), !dbg !1114
  store i64 0, i64* %5, align 8, !dbg !1115
  br label %66, !dbg !1115

66:                                               ; preds = %48, %47, %41, %30, %25
  %67 = load i64, i64* %5, align 8, !dbg !1116
  ret i64 %67, !dbg !1116
}

; Function Attrs: noinline nounwind optnone uwtable
define hidden i64 @Demo1BobInit(i8* noundef %0, %struct.EFI_SYSTEM_TABLE* noundef %1) #0 !dbg !1117 {
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.EFI_SYSTEM_TABLE*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1118, metadata !DIExpression()), !dbg !1119
  store %struct.EFI_SYSTEM_TABLE* %1, %struct.EFI_SYSTEM_TABLE** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.EFI_SYSTEM_TABLE** %5, metadata !1120, metadata !DIExpression()), !dbg !1121
  call void @llvm.dbg.declare(metadata i64* %6, metadata !1122, metadata !DIExpression()), !dbg !1123
  call void @llvm.dbg.declare(metadata i64* %7, metadata !1124, metadata !DIExpression()), !dbg !1125
  call void @llvm.dbg.declare(metadata i64* %8, metadata !1126, metadata !DIExpression()), !dbg !1127
  store i64 8, i64* %8, align 8, !dbg !1127
  %9 = load i64, i64* %6, align 8, !dbg !1128
  %10 = icmp slt i64 %9, 0, !dbg !1128
  br i1 %10, label %14, label %11, !dbg !1130

11:                                               ; preds = %2
  %12 = load %struct._Demo1_Access_Key_PROTOCOL*, %struct._Demo1_Access_Key_PROTOCOL** @AccessKeyProtocol, align 8, !dbg !1131
  %13 = icmp eq %struct._Demo1_Access_Key_PROTOCOL* %12, null, !dbg !1132
  br i1 %13, label %14, label %29, !dbg !1133

14:                                               ; preds = %11, %2
  br label %15, !dbg !1134

15:                                               ; preds = %14
  %16 = call zeroext i8 @DebugPrintEnabled(), !dbg !1136
  %17 = icmp ne i8 %16, 0, !dbg !1136
  br i1 %17, label %18, label %26, !dbg !1139

18:                                               ; preds = %15
  br label %19, !dbg !1140

19:                                               ; preds = %18
  %20 = call zeroext i8 @DebugPrintLevelEnabled(i64 noundef 2147483648), !dbg !1142
  %21 = icmp ne i8 %20, 0, !dbg !1142
  br i1 %21, label %22, label %24, !dbg !1145

22:                                               ; preds = %19
  %23 = load i64, i64* %6, align 8, !dbg !1146
  call void (i64, i8*, ...) @DebugPrint(i64 noundef 2147483648, i8* noundef getelementptr inbounds ([55 x i8], [55 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @__FUNCTION__.Demo1BobInit, i64 0, i64 0), i64 noundef %23), !dbg !1146
  br label %24, !dbg !1146

24:                                               ; preds = %22, %19
  br label %25, !dbg !1145

25:                                               ; preds = %24
  br label %26, !dbg !1140

26:                                               ; preds = %25, %15
  br label %27, !dbg !1139

27:                                               ; preds = %26
  %28 = load i64, i64* %6, align 8, !dbg !1148
  store i64 %28, i64* %3, align 8, !dbg !1149
  br label %146, !dbg !1149

29:                                               ; preds = %11
  %30 = load %struct._Demo1_Access_Key_PROTOCOL*, %struct._Demo1_Access_Key_PROTOCOL** @AccessKeyProtocol, align 8, !dbg !1150
  %31 = getelementptr inbounds %struct._Demo1_Access_Key_PROTOCOL, %struct._Demo1_Access_Key_PROTOCOL* %30, i32 0, i32 0, !dbg !1151
  %32 = bitcast {}** %31 to i64 (%struct._Demo1_Access_Key_PROTOCOL*, i8*, i8, %struct._DEMO1_ACCESS_KEY*)**, !dbg !1151
  %33 = load i64 (%struct._Demo1_Access_Key_PROTOCOL*, i8*, i8, %struct._DEMO1_ACCESS_KEY*)*, i64 (%struct._Demo1_Access_Key_PROTOCOL*, i8*, i8, %struct._DEMO1_ACCESS_KEY*)** %32, align 8, !dbg !1151
  %34 = call i64 %33(%struct._Demo1_Access_Key_PROTOCOL* noundef null, i8* noundef null, i8 noundef zeroext 0, %struct._DEMO1_ACCESS_KEY* noundef @bobKey), !dbg !1150
  store i64 %34, i64* %6, align 8, !dbg !1152
  %35 = load i64, i64* %6, align 8, !dbg !1153
  %36 = icmp slt i64 %35, 0, !dbg !1153
  br i1 %36, label %37, label %52, !dbg !1155

37:                                               ; preds = %29
  br label %38, !dbg !1156

38:                                               ; preds = %37
  %39 = call zeroext i8 @DebugPrintEnabled(), !dbg !1158
  %40 = icmp ne i8 %39, 0, !dbg !1158
  br i1 %40, label %41, label %49, !dbg !1161

41:                                               ; preds = %38
  br label %42, !dbg !1162

42:                                               ; preds = %41
  %43 = call zeroext i8 @DebugPrintLevelEnabled(i64 noundef 2147483648), !dbg !1164
  %44 = icmp ne i8 %43, 0, !dbg !1164
  br i1 %44, label %45, label %47, !dbg !1167

45:                                               ; preds = %42
  %46 = load i64, i64* %6, align 8, !dbg !1168
  call void (i64, i8*, ...) @DebugPrint(i64 noundef 2147483648, i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0), i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @__FUNCTION__.Demo1BobInit, i64 0, i64 0), i64 noundef %46), !dbg !1168
  br label %47, !dbg !1168

47:                                               ; preds = %45, %42
  br label %48, !dbg !1167

48:                                               ; preds = %47
  br label %49, !dbg !1162

49:                                               ; preds = %48, %38
  br label %50, !dbg !1161

50:                                               ; preds = %49
  %51 = load i64, i64* %6, align 8, !dbg !1170
  store i64 %51, i64* %3, align 8, !dbg !1171
  br label %146, !dbg !1171

52:                                               ; preds = %29
  %53 = load i64, i64* %6, align 8, !dbg !1172
  %54 = icmp slt i64 %53, 0, !dbg !1172
  br i1 %54, label %58, label %55, !dbg !1174

55:                                               ; preds = %52
  %56 = load %struct._Demo1_Alice_PROTOCOL*, %struct._Demo1_Alice_PROTOCOL** @AliceProtocol, align 8, !dbg !1175
  %57 = icmp eq %struct._Demo1_Alice_PROTOCOL* %56, null, !dbg !1176
  br i1 %57, label %58, label %73, !dbg !1177

58:                                               ; preds = %55, %52
  br label %59, !dbg !1178

59:                                               ; preds = %58
  %60 = call zeroext i8 @DebugPrintEnabled(), !dbg !1180
  %61 = icmp ne i8 %60, 0, !dbg !1180
  br i1 %61, label %62, label %70, !dbg !1183

62:                                               ; preds = %59
  br label %63, !dbg !1184

63:                                               ; preds = %62
  %64 = call zeroext i8 @DebugPrintLevelEnabled(i64 noundef 2147483648), !dbg !1186
  %65 = icmp ne i8 %64, 0, !dbg !1186
  br i1 %65, label %66, label %68, !dbg !1189

66:                                               ; preds = %63
  %67 = load i64, i64* %6, align 8, !dbg !1190
  call void (i64, i8*, ...) @DebugPrint(i64 noundef 2147483648, i8* noundef getelementptr inbounds ([50 x i8], [50 x i8]* @.str.5, i64 0, i64 0), i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @__FUNCTION__.Demo1BobInit, i64 0, i64 0), i64 noundef %67), !dbg !1190
  br label %68, !dbg !1190

68:                                               ; preds = %66, %63
  br label %69, !dbg !1189

69:                                               ; preds = %68
  br label %70, !dbg !1184

70:                                               ; preds = %69, %59
  br label %71, !dbg !1183

71:                                               ; preds = %70
  %72 = load i64, i64* %6, align 8, !dbg !1192
  store i64 %72, i64* %3, align 8, !dbg !1193
  br label %146, !dbg !1193

73:                                               ; preds = %55
  %74 = load i64, i64* %6, align 8, !dbg !1194
  %75 = icmp slt i64 %74, 0, !dbg !1194
  br i1 %75, label %76, label %90, !dbg !1196

76:                                               ; preds = %73
  br label %77, !dbg !1197

77:                                               ; preds = %76
  %78 = call zeroext i8 @DebugPrintEnabled(), !dbg !1199
  %79 = icmp ne i8 %78, 0, !dbg !1199
  br i1 %79, label %80, label %87, !dbg !1202

80:                                               ; preds = %77
  br label %81, !dbg !1203

81:                                               ; preds = %80
  %82 = call zeroext i8 @DebugPrintLevelEnabled(i64 noundef 2147483648), !dbg !1205
  %83 = icmp ne i8 %82, 0, !dbg !1205
  br i1 %83, label %84, label %85, !dbg !1208

84:                                               ; preds = %81
  call void (i64, i8*, ...) @DebugPrint(i64 noundef 2147483648, i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @.str.6, i64 0, i64 0), i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @__FUNCTION__.Demo1BobInit, i64 0, i64 0), i32* noundef getelementptr inbounds ([11 x i32], [11 x i32]* @.str.7, i64 0, i64 0)), !dbg !1209
  br label %85, !dbg !1209

85:                                               ; preds = %84, %81
  br label %86, !dbg !1208

86:                                               ; preds = %85
  br label %87, !dbg !1203

87:                                               ; preds = %86, %77
  br label %88, !dbg !1202

88:                                               ; preds = %87
  %89 = load i64, i64* %6, align 8, !dbg !1211
  store i64 %89, i64* %3, align 8, !dbg !1212
  br label %146, !dbg !1212

90:                                               ; preds = %73
  %91 = load i64, i64* %7, align 8, !dbg !1213
  %92 = icmp eq i64 %91, 2, !dbg !1215
  br i1 %92, label %93, label %106, !dbg !1216

93:                                               ; preds = %90
  br label %94, !dbg !1217

94:                                               ; preds = %93
  %95 = call zeroext i8 @DebugPrintEnabled(), !dbg !1219
  %96 = icmp ne i8 %95, 0, !dbg !1219
  br i1 %96, label %97, label %104, !dbg !1222

97:                                               ; preds = %94
  br label %98, !dbg !1223

98:                                               ; preds = %97
  %99 = call zeroext i8 @DebugPrintLevelEnabled(i64 noundef 2147483648), !dbg !1225
  %100 = icmp ne i8 %99, 0, !dbg !1225
  br i1 %100, label %101, label %102, !dbg !1228

101:                                              ; preds = %98
  call void (i64, i8*, ...) @DebugPrint(i64 noundef 2147483648, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.8, i64 0, i64 0), i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @__FUNCTION__.Demo1BobInit, i64 0, i64 0)), !dbg !1229
  br label %102, !dbg !1229

102:                                              ; preds = %101, %98
  br label %103, !dbg !1228

103:                                              ; preds = %102
  br label %104, !dbg !1223

104:                                              ; preds = %103, %94
  br label %105, !dbg !1222

105:                                              ; preds = %104
  store i64 -9223372036854775788, i64* %3, align 8, !dbg !1231
  br label %146, !dbg !1231

106:                                              ; preds = %90
  %107 = load i64, i64* %7, align 8, !dbg !1232
  %108 = icmp ne i64 %107, 1, !dbg !1234
  br i1 %108, label %109, label %122, !dbg !1235

109:                                              ; preds = %106
  br label %110, !dbg !1236

110:                                              ; preds = %109
  %111 = call zeroext i8 @DebugPrintEnabled(), !dbg !1238
  %112 = icmp ne i8 %111, 0, !dbg !1238
  br i1 %112, label %113, label %120, !dbg !1241

113:                                              ; preds = %110
  br label %114, !dbg !1242

114:                                              ; preds = %113
  %115 = call zeroext i8 @DebugPrintLevelEnabled(i64 noundef 2147483648), !dbg !1244
  %116 = icmp ne i8 %115, 0, !dbg !1244
  br i1 %116, label %117, label %118, !dbg !1247

117:                                              ; preds = %114
  call void (i64, i8*, ...) @DebugPrint(i64 noundef 2147483648, i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.9, i64 0, i64 0), i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @__FUNCTION__.Demo1BobInit, i64 0, i64 0)), !dbg !1248
  br label %118, !dbg !1248

118:                                              ; preds = %117, %114
  br label %119, !dbg !1247

119:                                              ; preds = %118
  br label %120, !dbg !1242

120:                                              ; preds = %119, %110
  br label %121, !dbg !1241

121:                                              ; preds = %120
  store i64 -9223372036854775805, i64* %3, align 8, !dbg !1250
  br label %146, !dbg !1250

122:                                              ; preds = %106
  %123 = load i64, i64* %6, align 8, !dbg !1251
  %124 = icmp slt i64 %123, 0, !dbg !1251
  br i1 %124, label %125, label %140, !dbg !1253

125:                                              ; preds = %122
  br label %126, !dbg !1254

126:                                              ; preds = %125
  %127 = call zeroext i8 @DebugPrintEnabled(), !dbg !1256
  %128 = icmp ne i8 %127, 0, !dbg !1256
  br i1 %128, label %129, label %137, !dbg !1259

129:                                              ; preds = %126
  br label %130, !dbg !1260

130:                                              ; preds = %129
  %131 = call zeroext i8 @DebugPrintLevelEnabled(i64 noundef 2147483648), !dbg !1262
  %132 = icmp ne i8 %131, 0, !dbg !1262
  br i1 %132, label %133, label %135, !dbg !1265

133:                                              ; preds = %130
  %134 = load i64, i64* %6, align 8, !dbg !1266
  call void (i64, i8*, ...) @DebugPrint(i64 noundef 2147483648, i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @.str.10, i64 0, i64 0), i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @__FUNCTION__.Demo1BobInit, i64 0, i64 0), i64 noundef %134), !dbg !1266
  br label %135, !dbg !1266

135:                                              ; preds = %133, %130
  br label %136, !dbg !1265

136:                                              ; preds = %135
  br label %137, !dbg !1260

137:                                              ; preds = %136, %126
  br label %138, !dbg !1259

138:                                              ; preds = %137
  %139 = load i64, i64* %6, align 8, !dbg !1268
  store i64 %139, i64* %3, align 8, !dbg !1269
  br label %146, !dbg !1269

140:                                              ; preds = %122
  %141 = load i64, i64* %6, align 8, !dbg !1270
  %142 = icmp slt i64 %141, 0, !dbg !1270
  br i1 %142, label %143, label %145, !dbg !1272

143:                                              ; preds = %140
  %144 = load i64, i64* %6, align 8, !dbg !1273
  store i64 %144, i64* %3, align 8, !dbg !1275
  br label %146, !dbg !1275

145:                                              ; preds = %140
  store i64 0, i64* %3, align 8, !dbg !1276
  br label %146, !dbg !1276

146:                                              ; preds = %145, %143, %138, %121, %105, %88, %71, %50, %27
  %147 = load i64, i64* %3, align 8, !dbg !1277
  ret i64 %147, !dbg !1277
}

declare hidden zeroext i8 @DebugPrintEnabled() #2

declare hidden zeroext i8 @DebugPrintLevelEnabled(i64 noundef) #2

declare hidden void @DebugPrint(i64 noundef, i8* noundef, ...) #2

; Function Attrs: noinline nounwind optnone uwtable
define hidden i64 @Demo1BobUnload(i8* noundef %0) #0 !dbg !1278 {
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !1279, metadata !DIExpression()), !dbg !1280
  call void @llvm.dbg.declare(metadata i64* %3, metadata !1281, metadata !DIExpression()), !dbg !1282
  store i64 0, i64* %3, align 8, !dbg !1282
  %4 = load i64, i64* %3, align 8, !dbg !1283
  ret i64 %4, !dbg !1284
}

; Function Attrs: noinline nounwind optnone uwtable
define hidden void @CopyMem_c(i8* noundef %0, i8* noundef %1, i64 noundef %2) #0 !dbg !1285 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1291, metadata !DIExpression()), !dbg !1292
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !1293, metadata !DIExpression()), !dbg !1294
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !1295, metadata !DIExpression()), !dbg !1296
  call void @llvm.dbg.declare(metadata i8** %7, metadata !1297, metadata !DIExpression()), !dbg !1298
  %10 = load i8*, i8** %4, align 8, !dbg !1299
  store i8* %10, i8** %7, align 8, !dbg !1298
  call void @llvm.dbg.declare(metadata i8** %8, metadata !1300, metadata !DIExpression()), !dbg !1301
  %11 = load i8*, i8** %5, align 8, !dbg !1302
  store i8* %11, i8** %8, align 8, !dbg !1301
  call void @llvm.dbg.declare(metadata i64* %9, metadata !1303, metadata !DIExpression()), !dbg !1305
  store i64 0, i64* %9, align 8, !dbg !1305
  br label %12, !dbg !1306

12:                                               ; preds = %24, %3
  %13 = load i64, i64* %9, align 8, !dbg !1307
  %14 = load i64, i64* %6, align 8, !dbg !1309
  %15 = icmp ult i64 %13, %14, !dbg !1310
  br i1 %15, label %16, label %27, !dbg !1311

16:                                               ; preds = %12
  %17 = load i8*, i8** %8, align 8, !dbg !1312
  %18 = load i64, i64* %9, align 8, !dbg !1314
  %19 = getelementptr inbounds i8, i8* %17, i64 %18, !dbg !1312
  %20 = load i8, i8* %19, align 1, !dbg !1312
  %21 = load i8*, i8** %7, align 8, !dbg !1315
  %22 = load i64, i64* %9, align 8, !dbg !1316
  %23 = getelementptr inbounds i8, i8* %21, i64 %22, !dbg !1315
  store i8 %20, i8* %23, align 1, !dbg !1317
  br label %24, !dbg !1318

24:                                               ; preds = %16
  %25 = load i64, i64* %9, align 8, !dbg !1319
  %26 = add i64 %25, 1, !dbg !1319
  store i64 %26, i64* %9, align 8, !dbg !1319
  br label %12, !dbg !1320, !llvm.loop !1321

27:                                               ; preds = %12
  ret void, !dbg !1323
}

declare i32 @printf(i8* noundef, ...) #2

declare i64 @strlen(i8* noundef) #2

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: noinline nounwind optnone uwtable
define hidden void @read_bobkey_addr_through_Demo1BobDataProvider() #0 !dbg !1324 {
  %1 = alloca %struct._DEMO1_ACCESS_KEY, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i8, align 1
  %4 = alloca i64, align 8
  call void @llvm.dbg.declare(metadata %struct._DEMO1_ACCESS_KEY* %1, metadata !1327, metadata !DIExpression()), !dbg !1328
  call void @llvm.dbg.declare(metadata i8** %2, metadata !1329, metadata !DIExpression()), !dbg !1330
  store i8* bitcast (%struct._DEMO1_ACCESS_KEY* @bobKey to i8*), i8** %2, align 8, !dbg !1330
  call void @llvm.dbg.declare(metadata i8* %3, metadata !1331, metadata !DIExpression()), !dbg !1333
  call void @llvm.dbg.declare(metadata i64* %4, metadata !1334, metadata !DIExpression()), !dbg !1335
  store i64 8, i64* %4, align 8, !dbg !1335
  %5 = load i8*, i8** %2, align 8, !dbg !1336
  %6 = bitcast %struct._DEMO1_ACCESS_KEY* %1 to i8**, !dbg !1338
  %7 = load i64, i64* %4, align 8, !dbg !1339
  %8 = call i64 @Demo1BobDataProvider(%struct._Demo1_Bob_PROTOCOL* noundef null, i8* noundef %5, i8** noundef %6, i64 noundef %7), !dbg !1340
  %9 = icmp eq i64 %8, 0, !dbg !1341
  br i1 %9, label %10, label %17, !dbg !1342

10:                                               ; preds = %0
  %11 = bitcast %struct._DEMO1_ACCESS_KEY* %1 to { i64, i64 }*, !dbg !1343
  %12 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %11, i32 0, i32 0, !dbg !1343
  %13 = load i64, i64* %12, align 8, !dbg !1343
  %14 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %11, i32 0, i32 1, !dbg !1343
  %15 = load i64, i64* %14, align 8, !dbg !1343
  %16 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.16, i64 0, i64 0), i64 %13, i64 %15), !dbg !1343
  br label %17, !dbg !1345

17:                                               ; preds = %10, %0
  ret void, !dbg !1346
}

; Function Attrs: noinline nounwind optnone uwtable
define hidden i32 @main() #0 !dbg !1347 {
  %1 = alloca i32, align 4
  %2 = alloca %struct._DEMO1_ACCESS_KEY*, align 8
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata %struct._DEMO1_ACCESS_KEY** %2, metadata !1350, metadata !DIExpression()), !dbg !1351
  %3 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.17, i64 0, i64 0), %struct._DEMO1_ACCESS_KEY* noundef @bobKey), !dbg !1352
  store %struct._DEMO1_ACCESS_KEY* @bobKey, %struct._DEMO1_ACCESS_KEY** %2, align 8, !dbg !1353
  %4 = call i32 (...) @rand(), !dbg !1354
  %5 = sext i32 %4 to i64, !dbg !1354
  %6 = load %struct._DEMO1_ACCESS_KEY*, %struct._DEMO1_ACCESS_KEY** %2, align 8, !dbg !1355
  %7 = getelementptr inbounds %struct._DEMO1_ACCESS_KEY, %struct._DEMO1_ACCESS_KEY* %6, i32 0, i32 0, !dbg !1356
  %8 = getelementptr inbounds [2 x i64], [2 x i64]* %7, i64 0, i64 0, !dbg !1355
  store i64 %5, i64* %8, align 8, !dbg !1357
  %9 = load %struct._DEMO1_ACCESS_KEY*, %struct._DEMO1_ACCESS_KEY** %2, align 8, !dbg !1358
  %10 = getelementptr inbounds %struct._DEMO1_ACCESS_KEY, %struct._DEMO1_ACCESS_KEY* %9, i32 0, i32 0, !dbg !1359
  %11 = getelementptr inbounds [2 x i64], [2 x i64]* %10, i64 0, i64 1, !dbg !1358
  store i64 -2395670108176482799, i64* %11, align 8, !dbg !1360
  %12 = load %struct._DEMO1_ACCESS_KEY*, %struct._DEMO1_ACCESS_KEY** %2, align 8, !dbg !1361
  %13 = getelementptr inbounds %struct._DEMO1_ACCESS_KEY, %struct._DEMO1_ACCESS_KEY* %12, i32 0, i32 0, !dbg !1362
  %14 = getelementptr inbounds [2 x i64], [2 x i64]* %13, i64 0, i64 0, !dbg !1361
  %15 = load i64, i64* %14, align 8, !dbg !1361
  %16 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.18, i64 0, i64 0), i64 noundef %15), !dbg !1363
  %17 = load %struct._DEMO1_ACCESS_KEY*, %struct._DEMO1_ACCESS_KEY** %2, align 8, !dbg !1364
  %18 = getelementptr inbounds %struct._DEMO1_ACCESS_KEY, %struct._DEMO1_ACCESS_KEY* %17, i32 0, i32 0, !dbg !1365
  %19 = getelementptr inbounds [2 x i64], [2 x i64]* %18, i64 0, i64 1, !dbg !1364
  %20 = load i64, i64* %19, align 8, !dbg !1364
  %21 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.19, i64 0, i64 0), i64 noundef %20), !dbg !1366
  %22 = load %struct._DEMO1_ACCESS_KEY*, %struct._DEMO1_ACCESS_KEY** %2, align 8, !dbg !1367
  %23 = bitcast %struct._DEMO1_ACCESS_KEY* %22 to i8*, !dbg !1368
  %24 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.20, i64 0, i64 0), i8* noundef %23), !dbg !1369
  %25 = load %struct._DEMO1_ACCESS_KEY*, %struct._DEMO1_ACCESS_KEY** %2, align 8, !dbg !1370
  %26 = bitcast %struct._DEMO1_ACCESS_KEY* %25 to i8*, !dbg !1371
  %27 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.21, i64 0, i64 0), i8* noundef %26), !dbg !1372
  call void @read_bobkey_addr_through_Demo1BobDataProvider(), !dbg !1373
  ret i32 0, !dbg !1374
}

declare hidden i32 @rand(...) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memcpy(i8* noundef %0, i8* noundef %1, i64 noundef %2) #4 !dbg !1375 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1379, metadata !DIExpression()), !dbg !1380
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !1381, metadata !DIExpression()), !dbg !1382
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !1383, metadata !DIExpression()), !dbg !1384
  call void @llvm.dbg.declare(metadata i8** %7, metadata !1385, metadata !DIExpression()), !dbg !1386
  %9 = load i8*, i8** %4, align 8, !dbg !1387
  store i8* %9, i8** %7, align 8, !dbg !1386
  call void @llvm.dbg.declare(metadata i8** %8, metadata !1388, metadata !DIExpression()), !dbg !1391
  %10 = load i8*, i8** %5, align 8, !dbg !1392
  store i8* %10, i8** %8, align 8, !dbg !1391
  br label %11, !dbg !1393

11:                                               ; preds = %15, %3
  %12 = load i64, i64* %6, align 8, !dbg !1394
  %13 = add i64 %12, -1, !dbg !1394
  store i64 %13, i64* %6, align 8, !dbg !1394
  %14 = icmp ugt i64 %12, 0, !dbg !1395
  br i1 %14, label %15, label %21, !dbg !1393

15:                                               ; preds = %11
  %16 = load i8*, i8** %8, align 8, !dbg !1396
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !1396
  store i8* %17, i8** %8, align 8, !dbg !1396
  %18 = load i8, i8* %16, align 1, !dbg !1397
  %19 = load i8*, i8** %7, align 8, !dbg !1398
  %20 = getelementptr inbounds i8, i8* %19, i32 1, !dbg !1398
  store i8* %20, i8** %7, align 8, !dbg !1398
  store i8 %18, i8* %19, align 1, !dbg !1399
  br label %11, !dbg !1393, !llvm.loop !1400

21:                                               ; preds = %11
  %22 = load i8*, i8** %4, align 8, !dbg !1401
  ret i8* %22, !dbg !1402
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly nofree nounwind willreturn }
attributes #4 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.dbg.cu = !{!2, !705}
!llvm.module.flags = !{!707, !708, !709, !710, !711, !712, !713}
!llvm.ident = !{!714, !714}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "gDemo1_Access_Key_Protocol", scope: !2, file: !58, line: 18, type: !674, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !51, globals: !629, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "Demo1_Bob.c", directory: "/home/hira/Research/HARDEN/repositories/HARDEN_demo1/edk2/EmulatorPkg/Demo1_Bob", checksumkind: CSK_MD5, checksum: "bdd6f707e456b1022fcf30c031b6a637")
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
!51 = !{!52, !53, !56, !77, !80, !81, !83, !88, !70, !90, !627, !276}
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
!627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !628, size: 64)
!628 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!629 = !{!0, !630, !649, !651, !653, !655, !657, !659, !671, !684, !686, !688, !690, !703}
!630 = !DIGlobalVariableExpression(var: !631, expr: !DIExpression())
!631 = distinct !DIGlobalVariable(name: "RngProtocol", scope: !2, file: !58, line: 24, type: !632, isLocal: false, isDefinition: true)
!632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !633, size: 64)
!633 = !DIDerivedType(tag: DW_TAG_typedef, name: "EFI_RNG_PROTOCOL", file: !634, line: 22, baseType: !635)
!634 = !DIFile(filename: "./../Demo1_Alice/../Demo1_Access_Key/Protocol/Rng.h", directory: "/home/hira/Research/HARDEN/repositories/HARDEN_demo1/edk2/EmulatorPkg/Demo1_Bob", checksumkind: CSK_MD5, checksum: "1128b15f0582c0f8bfa33dc5c07b9582")
!635 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_EFI_RNG_PROTOCOL", file: !634, line: 137, size: 128, elements: !636)
!636 = !{!637, !644}
!637 = !DIDerivedType(tag: DW_TAG_member, name: "GetInfo", scope: !635, file: !634, line: 138, baseType: !638, size: 64)
!638 = !DIDerivedType(tag: DW_TAG_typedef, name: "EFI_RNG_GET_INFO", file: !634, line: 96, baseType: !639)
!639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !640, size: 64)
!640 = !DISubroutineType(types: !641)
!641 = !{!130, !632, !169, !642}
!642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !643, size: 64)
!643 = !DIDerivedType(tag: DW_TAG_typedef, name: "EFI_RNG_ALGORITHM", file: !634, line: 30, baseType: !283)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "GetRNG", scope: !635, file: !634, line: 139, baseType: !645, size: 64, offset: 64)
!645 = !DIDerivedType(tag: DW_TAG_typedef, name: "EFI_RNG_GET_RNG", file: !634, line: 126, baseType: !646)
!646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !647, size: 64)
!647 = !DISubroutineType(types: !648)
!648 = !{!130, !632, !642, !70, !81}
!649 = !DIGlobalVariableExpression(var: !650, expr: !DIExpression())
!650 = distinct !DIGlobalVariable(name: "masterKey", scope: !2, file: !58, line: 25, type: !310, isLocal: false, isDefinition: true)
!651 = !DIGlobalVariableExpression(var: !652, expr: !DIExpression())
!652 = distinct !DIGlobalVariable(name: "accessKeyLock", scope: !2, file: !58, line: 28, type: !53, isLocal: false, isDefinition: true)
!653 = !DIGlobalVariableExpression(var: !654, expr: !DIExpression())
!654 = distinct !DIGlobalVariable(name: "head", scope: !2, file: !58, line: 40, type: !56, isLocal: false, isDefinition: true)
!655 = !DIGlobalVariableExpression(var: !656, expr: !DIExpression())
!656 = distinct !DIGlobalVariable(name: "last", scope: !2, file: !58, line: 41, type: !56, isLocal: false, isDefinition: true)
!657 = !DIGlobalVariableExpression(var: !658, expr: !DIExpression())
!658 = distinct !DIGlobalVariable(name: "keychain", scope: !2, file: !58, line: 42, type: !56, isLocal: false, isDefinition: true)
!659 = !DIGlobalVariableExpression(var: !660, expr: !DIExpression())
!660 = distinct !DIGlobalVariable(name: "gDemo1_Bob_Protocol", scope: !2, file: !3, line: 21, type: !661, isLocal: false, isDefinition: true)
!661 = !DIDerivedType(tag: DW_TAG_typedef, name: "Demo1_Bob_PROTOCOL", file: !662, line: 35, baseType: !663)
!662 = !DIFile(filename: "./Demo1_Bob.h", directory: "/home/hira/Research/HARDEN/repositories/HARDEN_demo1/edk2/EmulatorPkg/Demo1_Bob", checksumkind: CSK_MD5, checksum: "4fa74dec5a92cd7311066f39f790ce53")
!663 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Demo1_Bob_PROTOCOL", file: !662, line: 52, size: 64, elements: !664)
!664 = !{!665}
!665 = !DIDerivedType(tag: DW_TAG_member, name: "Demo1BobDataProvider", scope: !663, file: !662, line: 53, baseType: !666, size: 64)
!666 = !DIDerivedType(tag: DW_TAG_typedef, name: "BOB_CB_TYPE", file: !662, line: 42, baseType: !667)
!667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !668, size: 64)
!668 = !DISubroutineType(types: !669)
!669 = !{!130, !670, !52, !276, !70}
!670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !661, size: 64)
!671 = !DIGlobalVariableExpression(var: !672, expr: !DIExpression())
!672 = distinct !DIGlobalVariable(name: "AccessKeyProtocol", scope: !2, file: !3, line: 26, type: !673, isLocal: false, isDefinition: true)
!673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !674, size: 64)
!674 = !DIDerivedType(tag: DW_TAG_typedef, name: "Demo1_Access_Key_PROTOCOL", file: !675, line: 36, baseType: !676)
!675 = !DIFile(filename: "./../Demo1_Access_Key/Demo1_Access_Key.h", directory: "/home/hira/Research/HARDEN/repositories/HARDEN_demo1/edk2/EmulatorPkg/Demo1_Bob", checksumkind: CSK_MD5, checksum: "a5dbaf8c3ac310b99ce95abca155b547")
!676 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Demo1_Access_Key_PROTOCOL", file: !675, line: 72, size: 128, elements: !677)
!677 = !{!678, !683}
!678 = !DIDerivedType(tag: DW_TAG_member, name: "Demo1GenerateAccessKey", scope: !676, file: !675, line: 73, baseType: !679, size: 64)
!679 = !DIDerivedType(tag: DW_TAG_typedef, name: "DRVR_FUNC_CB_TYPE1", file: !675, line: 51, baseType: !680)
!680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !681, size: 64)
!681 = !DISubroutineType(types: !682)
!682 = !{!130, !673, !98, !53, !310}
!683 = !DIDerivedType(tag: DW_TAG_member, name: "Demo1_Ready_To_Lock_Event", scope: !676, file: !675, line: 75, baseType: !144, size: 64, offset: 64)
!684 = !DIGlobalVariableExpression(var: !685, expr: !DIExpression())
!685 = distinct !DIGlobalVariable(name: "Demo1_Bob_PeriodicTimer", scope: !2, file: !3, line: 31, type: !144, isLocal: false, isDefinition: true)
!686 = !DIGlobalVariableExpression(var: !687, expr: !DIExpression())
!687 = distinct !DIGlobalVariable(name: "DataToProvide", scope: !2, file: !3, line: 32, type: !70, isLocal: false, isDefinition: true)
!688 = !DIGlobalVariableExpression(var: !689, expr: !DIExpression())
!689 = distinct !DIGlobalVariable(name: "gLoadImage", scope: !2, file: !3, line: 33, type: !90, isLocal: false, isDefinition: true)
!690 = !DIGlobalVariableExpression(var: !691, expr: !DIExpression())
!691 = distinct !DIGlobalVariable(name: "AliceProtocol", scope: !2, file: !3, line: 27, type: !692, isLocal: false, isDefinition: true)
!692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !693, size: 64)
!693 = !DIDerivedType(tag: DW_TAG_typedef, name: "Demo1_Alice_PROTOCOL", file: !694, line: 36, baseType: !695)
!694 = !DIFile(filename: "./../Demo1_Alice/Demo1_Alice.h", directory: "/home/hira/Research/HARDEN/repositories/HARDEN_demo1/edk2/EmulatorPkg/Demo1_Bob", checksumkind: CSK_MD5, checksum: "a1a6c09027689aba8f236cb5bb922cff")
!695 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Demo1_Alice_PROTOCOL", file: !694, line: 56, size: 128, elements: !696)
!696 = !{!697, !702}
!697 = !DIDerivedType(tag: DW_TAG_member, name: "Demo1AliceProvideData", scope: !695, file: !694, line: 57, baseType: !698, size: 64)
!698 = !DIDerivedType(tag: DW_TAG_typedef, name: "ALICE_CB_TYPE", file: !694, line: 47, baseType: !699)
!699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !700, size: 64)
!700 = !DISubroutineType(types: !701)
!701 = !{!130, !692, !98, !169}
!702 = !DIDerivedType(tag: DW_TAG_member, name: "Demo1_Ready_To_Run_Event", scope: !695, file: !694, line: 58, baseType: !144, size: 64, offset: 64)
!703 = !DIGlobalVariableExpression(var: !704, expr: !DIExpression())
!704 = distinct !DIGlobalVariable(name: "bobKey", scope: !2, file: !3, line: 30, type: !62, isLocal: false, isDefinition: true)
!705 = distinct !DICompileUnit(language: DW_LANG_C99, file: !706, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!706 = !DIFile(filename: "/home/hira/Research/klee/runtime/Freestanding/memcpy.c", directory: "/home/hira/Research/klee_build/runtime/Freestanding", checksumkind: CSK_MD5, checksum: "8fb9a7164e167db005d7d002570068bc")
!707 = !{i32 7, !"Dwarf Version", i32 5}
!708 = !{i32 2, !"Debug Info Version", i32 3}
!709 = !{i32 1, !"wchar_size", i32 4}
!710 = !{i32 7, !"PIC Level", i32 2}
!711 = !{i32 7, !"PIE Level", i32 2}
!712 = !{i32 7, !"uwtable", i32 1}
!713 = !{i32 7, !"frame-pointer", i32 2}
!714 = !{!"Ubuntu clang version 14.0.6"}
!715 = distinct !DISubprogram(name: "Demo1GenerateAccessKey", scope: !58, file: !58, line: 295, type: !681, scopeLine: 301, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !716)
!716 = !{}
!717 = !DILocalVariable(name: "This", arg: 1, scope: !715, file: !58, line: 296, type: !673)
!718 = !DILocation(line: 296, column: 35, scope: !715)
!719 = !DILocalVariable(name: "Controller", arg: 2, scope: !715, file: !58, line: 297, type: !98)
!720 = !DILocation(line: 297, column: 19, scope: !715)
!721 = !DILocalVariable(name: "WriteAccess", arg: 3, scope: !715, file: !58, line: 298, type: !53)
!722 = !DILocation(line: 298, column: 16, scope: !715)
!723 = !DILocalVariable(name: "AccessKeyPtr", arg: 4, scope: !715, file: !58, line: 299, type: !310)
!724 = !DILocation(line: 299, column: 30, scope: !715)
!725 = !DILocalVariable(name: "Status", scope: !715, file: !58, line: 302, type: !130)
!726 = !DILocation(line: 302, column: 14, scope: !715)
!727 = !DILocalVariable(name: "header", scope: !715, file: !58, line: 303, type: !70)
!728 = !DILocation(line: 303, column: 9, scope: !715)
!729 = !DILocation(line: 306, column: 7, scope: !730)
!730 = distinct !DILexicalBlock(scope: !715, file: !58, line: 306, column: 7)
!731 = !DILocation(line: 306, column: 20, scope: !730)
!732 = !DILocation(line: 306, column: 7, scope: !715)
!733 = !DILocation(line: 308, column: 5, scope: !734)
!734 = distinct !DILexicalBlock(scope: !730, file: !58, line: 307, column: 3)
!735 = !DILocation(line: 311, column: 7, scope: !736)
!736 = distinct !DILexicalBlock(scope: !715, file: !58, line: 311, column: 7)
!737 = !DILocation(line: 311, column: 21, scope: !736)
!738 = !DILocation(line: 311, column: 7, scope: !715)
!739 = !DILocation(line: 313, column: 5, scope: !740)
!740 = distinct !DILexicalBlock(scope: !736, file: !58, line: 312, column: 3)
!741 = !DILocation(line: 317, column: 12, scope: !715)
!742 = !DILocation(line: 317, column: 25, scope: !715)
!743 = !DILocation(line: 317, column: 32, scope: !715)
!744 = !DILocation(line: 317, column: 70, scope: !715)
!745 = !DILocation(line: 317, column: 84, scope: !715)
!746 = !DILocation(line: 317, column: 60, scope: !715)
!747 = !DILocation(line: 317, column: 10, scope: !715)
!748 = !DILocation(line: 318, column: 7, scope: !749)
!749 = distinct !DILexicalBlock(scope: !715, file: !58, line: 318, column: 7)
!750 = !DILocation(line: 318, column: 7, scope: !715)
!751 = !DILocation(line: 320, column: 12, scope: !752)
!752 = distinct !DILexicalBlock(scope: !749, file: !58, line: 319, column: 3)
!753 = !DILocation(line: 320, column: 5, scope: !752)
!754 = !DILocation(line: 324, column: 7, scope: !755)
!755 = distinct !DILexicalBlock(scope: !715, file: !58, line: 324, column: 7)
!756 = !DILocation(line: 324, column: 7, scope: !715)
!757 = !DILocation(line: 326, column: 12, scope: !758)
!758 = distinct !DILexicalBlock(scope: !755, file: !58, line: 325, column: 3)
!759 = !DILocation(line: 327, column: 3, scope: !758)
!760 = !DILocation(line: 330, column: 12, scope: !761)
!761 = distinct !DILexicalBlock(scope: !755, file: !58, line: 329, column: 3)
!762 = !DILocation(line: 332, column: 39, scope: !715)
!763 = !DILocation(line: 332, column: 3, scope: !715)
!764 = !DILocation(line: 332, column: 17, scope: !715)
!765 = !DILocation(line: 332, column: 37, scope: !715)
!766 = !DILocation(line: 335, column: 7, scope: !767)
!767 = distinct !DILexicalBlock(scope: !715, file: !58, line: 335, column: 7)
!768 = !DILocation(line: 335, column: 23, scope: !767)
!769 = !DILocation(line: 335, column: 20, scope: !767)
!770 = !DILocation(line: 335, column: 7, scope: !715)
!771 = !DILocation(line: 337, column: 16, scope: !772)
!772 = distinct !DILexicalBlock(scope: !767, file: !58, line: 336, column: 3)
!773 = !DILocation(line: 337, column: 5, scope: !772)
!774 = !DILocation(line: 338, column: 3, scope: !772)
!775 = !DILocation(line: 341, column: 17, scope: !776)
!776 = distinct !DILexicalBlock(scope: !767, file: !58, line: 340, column: 3)
!777 = !DILocation(line: 341, column: 5, scope: !776)
!778 = !DILocation(line: 344, column: 10, scope: !715)
!779 = !DILocation(line: 344, column: 3, scope: !715)
!780 = !DILocation(line: 345, column: 1, scope: !715)
!781 = distinct !DISubprogram(name: "Demo1ValidateAccessKey", scope: !58, file: !58, line: 363, type: !782, scopeLine: 369, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !716)
!782 = !DISubroutineType(types: !783)
!783 = !{!130, !673, !98, !310, !53, !249}
!784 = !DILocalVariable(name: "This", arg: 1, scope: !781, file: !58, line: 364, type: !673)
!785 = !DILocation(line: 364, column: 35, scope: !781)
!786 = !DILocalVariable(name: "Controller", arg: 2, scope: !781, file: !58, line: 365, type: !98)
!787 = !DILocation(line: 365, column: 19, scope: !781)
!788 = !DILocalVariable(name: "AccessKeyPtr", arg: 3, scope: !781, file: !58, line: 366, type: !310)
!789 = !DILocation(line: 366, column: 26, scope: !781)
!790 = !DILocalVariable(name: "WriteAccess", arg: 4, scope: !781, file: !58, line: 367, type: !53)
!791 = !DILocation(line: 367, column: 16, scope: !781)
!792 = !DILocalVariable(name: "Result", arg: 5, scope: !781, file: !58, line: 368, type: !249)
!793 = !DILocation(line: 368, column: 21, scope: !781)
!794 = !DILocation(line: 371, column: 7, scope: !795)
!795 = distinct !DILexicalBlock(scope: !781, file: !58, line: 371, column: 7)
!796 = !DILocation(line: 371, column: 14, scope: !795)
!797 = !DILocation(line: 371, column: 7, scope: !781)
!798 = !DILocation(line: 373, column: 5, scope: !799)
!799 = distinct !DILexicalBlock(scope: !795, file: !58, line: 372, column: 3)
!800 = !DILocation(line: 375, column: 4, scope: !781)
!801 = !DILocation(line: 375, column: 11, scope: !781)
!802 = !DILocation(line: 377, column: 7, scope: !803)
!803 = distinct !DILexicalBlock(scope: !781, file: !58, line: 377, column: 7)
!804 = !DILocation(line: 377, column: 20, scope: !803)
!805 = !DILocation(line: 377, column: 7, scope: !781)
!806 = !DILocation(line: 379, column: 5, scope: !807)
!807 = distinct !DILexicalBlock(scope: !803, file: !58, line: 378, column: 3)
!808 = !DILocation(line: 384, column: 7, scope: !809)
!809 = distinct !DILexicalBlock(scope: !781, file: !58, line: 384, column: 7)
!810 = !DILocation(line: 384, column: 19, scope: !809)
!811 = !DILocation(line: 384, column: 23, scope: !809)
!812 = !DILocation(line: 384, column: 37, scope: !809)
!813 = !DILocation(line: 384, column: 57, scope: !809)
!814 = !DILocation(line: 384, column: 7, scope: !781)
!815 = !DILocation(line: 386, column: 5, scope: !816)
!816 = distinct !DILexicalBlock(scope: !809, file: !58, line: 385, column: 3)
!817 = !DILocation(line: 389, column: 26, scope: !781)
!818 = !DILocation(line: 389, column: 13, scope: !781)
!819 = !DILocation(line: 389, column: 4, scope: !781)
!820 = !DILocation(line: 389, column: 11, scope: !781)
!821 = !DILocation(line: 390, column: 3, scope: !781)
!822 = !DILocation(line: 391, column: 1, scope: !781)
!823 = distinct !DISubprogram(name: "IsKeychainEmpty", scope: !58, file: !58, line: 54, type: !824, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !716)
!824 = !DISubroutineType(types: !825)
!825 = !{!53}
!826 = !DILocation(line: 57, column: 10, scope: !823)
!827 = !DILocation(line: 57, column: 15, scope: !823)
!828 = !DILocation(line: 57, column: 3, scope: !823)
!829 = distinct !DISubprogram(name: "KeychainLength", scope: !58, file: !58, line: 65, type: !830, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !716)
!830 = !DISubroutineType(types: !831)
!831 = !{!70}
!832 = !DILocalVariable(name: "length", scope: !829, file: !58, line: 68, type: !70)
!833 = !DILocation(line: 68, column: 9, scope: !829)
!834 = !DILocalVariable(name: "current", scope: !829, file: !58, line: 69, type: !56)
!835 = !DILocation(line: 69, column: 9, scope: !829)
!836 = !DILocation(line: 70, column: 18, scope: !837)
!837 = distinct !DILexicalBlock(scope: !829, file: !58, line: 70, column: 3)
!838 = !DILocation(line: 70, column: 16, scope: !837)
!839 = !DILocation(line: 70, column: 8, scope: !837)
!840 = !DILocation(line: 70, column: 24, scope: !841)
!841 = distinct !DILexicalBlock(scope: !837, file: !58, line: 70, column: 3)
!842 = !DILocation(line: 70, column: 32, scope: !841)
!843 = !DILocation(line: 70, column: 3, scope: !837)
!844 = !DILocation(line: 72, column: 11, scope: !845)
!845 = distinct !DILexicalBlock(scope: !841, file: !58, line: 71, column: 3)
!846 = !DILocation(line: 73, column: 3, scope: !845)
!847 = !DILocation(line: 70, column: 51, scope: !841)
!848 = !DILocation(line: 70, column: 60, scope: !841)
!849 = !DILocation(line: 70, column: 49, scope: !841)
!850 = !DILocation(line: 70, column: 3, scope: !841)
!851 = distinct !{!851, !843, !852, !853}
!852 = !DILocation(line: 73, column: 3, scope: !837)
!853 = !{!"llvm.loop.mustprogress"}
!854 = !DILocation(line: 74, column: 10, scope: !829)
!855 = !DILocation(line: 74, column: 3, scope: !829)
!856 = distinct !DISubprogram(name: "InsertFirst", scope: !58, file: !58, line: 84, type: !857, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !716)
!857 = !DISubroutineType(types: !858)
!858 = !{null, !310}
!859 = !DILocalVariable(name: "access_key", arg: 1, scope: !856, file: !58, line: 85, type: !310)
!860 = !DILocation(line: 85, column: 23, scope: !856)
!861 = !DILocalVariable(name: "link", scope: !856, file: !58, line: 87, type: !56)
!862 = !DILocation(line: 87, column: 9, scope: !856)
!863 = !DILocation(line: 87, column: 16, scope: !856)
!864 = !DILocation(line: 88, column: 3, scope: !856)
!865 = !DILocation(line: 88, column: 3, scope: !866)
!866 = distinct !DILexicalBlock(scope: !867, file: !58, line: 88, column: 3)
!867 = distinct !DILexicalBlock(scope: !856, file: !58, line: 88, column: 3)
!868 = !DILocation(line: 88, column: 3, scope: !867)
!869 = !DILocation(line: 88, column: 3, scope: !870)
!870 = distinct !DILexicalBlock(scope: !871, file: !58, line: 88, column: 3)
!871 = distinct !DILexicalBlock(scope: !866, file: !58, line: 88, column: 3)
!872 = !DILocation(line: 88, column: 3, scope: !871)
!873 = !DILocation(line: 88, column: 3, scope: !874)
!874 = distinct !DILexicalBlock(scope: !870, file: !58, line: 88, column: 3)
!875 = !DILocation(line: 89, column: 12, scope: !856)
!876 = !DILocation(line: 89, column: 18, scope: !856)
!877 = !DILocation(line: 89, column: 11, scope: !856)
!878 = !DILocation(line: 89, column: 30, scope: !856)
!879 = !DILocation(line: 89, column: 3, scope: !856)
!880 = !DILocation(line: 91, column: 7, scope: !881)
!881 = distinct !DILexicalBlock(scope: !856, file: !58, line: 91, column: 7)
!882 = !DILocation(line: 91, column: 7, scope: !856)
!883 = !DILocation(line: 93, column: 12, scope: !884)
!884 = distinct !DILexicalBlock(scope: !881, file: !58, line: 92, column: 3)
!885 = !DILocation(line: 93, column: 10, scope: !884)
!886 = !DILocation(line: 94, column: 3, scope: !884)
!887 = !DILocation(line: 97, column: 18, scope: !888)
!888 = distinct !DILexicalBlock(scope: !881, file: !58, line: 96, column: 3)
!889 = !DILocation(line: 97, column: 5, scope: !888)
!890 = !DILocation(line: 97, column: 11, scope: !888)
!891 = !DILocation(line: 97, column: 16, scope: !888)
!892 = !DILocation(line: 99, column: 3, scope: !856)
!893 = !DILocation(line: 99, column: 9, scope: !856)
!894 = !DILocation(line: 99, column: 14, scope: !856)
!895 = !DILocation(line: 100, column: 16, scope: !856)
!896 = !DILocation(line: 100, column: 3, scope: !856)
!897 = !DILocation(line: 100, column: 9, scope: !856)
!898 = !DILocation(line: 100, column: 14, scope: !856)
!899 = !DILocation(line: 101, column: 10, scope: !856)
!900 = !DILocation(line: 101, column: 8, scope: !856)
!901 = !DILocation(line: 102, column: 1, scope: !856)
!902 = distinct !DISubprogram(name: "InsertLast", scope: !58, file: !58, line: 111, type: !857, scopeLine: 113, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !716)
!903 = !DILocalVariable(name: "access_key", arg: 1, scope: !902, file: !58, line: 112, type: !310)
!904 = !DILocation(line: 112, column: 23, scope: !902)
!905 = !DILocalVariable(name: "link", scope: !902, file: !58, line: 114, type: !56)
!906 = !DILocation(line: 114, column: 9, scope: !902)
!907 = !DILocation(line: 114, column: 16, scope: !902)
!908 = !DILocation(line: 115, column: 3, scope: !902)
!909 = !DILocation(line: 115, column: 3, scope: !910)
!910 = distinct !DILexicalBlock(scope: !911, file: !58, line: 115, column: 3)
!911 = distinct !DILexicalBlock(scope: !902, file: !58, line: 115, column: 3)
!912 = !DILocation(line: 115, column: 3, scope: !911)
!913 = !DILocation(line: 115, column: 3, scope: !914)
!914 = distinct !DILexicalBlock(scope: !915, file: !58, line: 115, column: 3)
!915 = distinct !DILexicalBlock(scope: !910, file: !58, line: 115, column: 3)
!916 = !DILocation(line: 115, column: 3, scope: !915)
!917 = !DILocation(line: 115, column: 3, scope: !918)
!918 = distinct !DILexicalBlock(scope: !914, file: !58, line: 115, column: 3)
!919 = !DILocation(line: 116, column: 12, scope: !902)
!920 = !DILocation(line: 116, column: 18, scope: !902)
!921 = !DILocation(line: 116, column: 11, scope: !902)
!922 = !DILocation(line: 116, column: 30, scope: !902)
!923 = !DILocation(line: 116, column: 3, scope: !902)
!924 = !DILocation(line: 118, column: 7, scope: !925)
!925 = distinct !DILexicalBlock(scope: !902, file: !58, line: 118, column: 7)
!926 = !DILocation(line: 118, column: 7, scope: !902)
!927 = !DILocation(line: 120, column: 12, scope: !928)
!928 = distinct !DILexicalBlock(scope: !925, file: !58, line: 119, column: 3)
!929 = !DILocation(line: 120, column: 10, scope: !928)
!930 = !DILocation(line: 121, column: 3, scope: !928)
!931 = !DILocation(line: 124, column: 18, scope: !932)
!932 = distinct !DILexicalBlock(scope: !925, file: !58, line: 123, column: 3)
!933 = !DILocation(line: 124, column: 5, scope: !932)
!934 = !DILocation(line: 124, column: 11, scope: !932)
!935 = !DILocation(line: 124, column: 16, scope: !932)
!936 = !DILocation(line: 125, column: 18, scope: !932)
!937 = !DILocation(line: 125, column: 5, scope: !932)
!938 = !DILocation(line: 125, column: 11, scope: !932)
!939 = !DILocation(line: 125, column: 16, scope: !932)
!940 = !DILocation(line: 127, column: 3, scope: !902)
!941 = !DILocation(line: 127, column: 9, scope: !902)
!942 = !DILocation(line: 127, column: 14, scope: !902)
!943 = !DILocation(line: 128, column: 10, scope: !902)
!944 = !DILocation(line: 128, column: 8, scope: !902)
!945 = !DILocation(line: 129, column: 1, scope: !902)
!946 = distinct !DISubprogram(name: "DoesKeyExist", scope: !58, file: !58, line: 139, type: !947, scopeLine: 141, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !716)
!947 = !DISubroutineType(types: !948)
!948 = !{!53, !310}
!949 = !DILocalVariable(name: "access_key", arg: 1, scope: !946, file: !58, line: 140, type: !310)
!950 = !DILocation(line: 140, column: 23, scope: !946)
!951 = !DILocalVariable(name: "current", scope: !946, file: !58, line: 143, type: !56)
!952 = !DILocation(line: 143, column: 9, scope: !946)
!953 = !DILocation(line: 144, column: 7, scope: !954)
!954 = distinct !DILexicalBlock(scope: !946, file: !58, line: 144, column: 7)
!955 = !DILocation(line: 144, column: 18, scope: !954)
!956 = !DILocation(line: 144, column: 7, scope: !946)
!957 = !DILocation(line: 146, column: 5, scope: !958)
!958 = distinct !DILexicalBlock(scope: !954, file: !58, line: 145, column: 3)
!959 = !DILocation(line: 148, column: 17, scope: !946)
!960 = !DILocation(line: 148, column: 9, scope: !946)
!961 = !DILocation(line: 148, column: 8, scope: !946)
!962 = !DILocation(line: 149, column: 22, scope: !946)
!963 = !DILocation(line: 149, column: 3, scope: !946)
!964 = !DILocation(line: 151, column: 18, scope: !965)
!965 = distinct !DILexicalBlock(scope: !946, file: !58, line: 151, column: 3)
!966 = !DILocation(line: 151, column: 16, scope: !965)
!967 = !DILocation(line: 151, column: 8, scope: !965)
!968 = !DILocation(line: 151, column: 24, scope: !969)
!969 = distinct !DILexicalBlock(scope: !965, file: !58, line: 151, column: 3)
!970 = !DILocation(line: 151, column: 32, scope: !969)
!971 = !DILocation(line: 151, column: 3, scope: !965)
!972 = !DILocation(line: 153, column: 9, scope: !973)
!973 = distinct !DILexicalBlock(scope: !974, file: !58, line: 153, column: 9)
!974 = distinct !DILexicalBlock(scope: !969, file: !58, line: 152, column: 3)
!975 = !DILocation(line: 153, column: 21, scope: !973)
!976 = !DILocation(line: 153, column: 44, scope: !973)
!977 = !DILocation(line: 153, column: 53, scope: !973)
!978 = !DILocation(line: 153, column: 64, scope: !973)
!979 = !DILocation(line: 153, column: 41, scope: !973)
!980 = !DILocation(line: 153, column: 9, scope: !974)
!981 = !DILocation(line: 155, column: 7, scope: !982)
!982 = distinct !DILexicalBlock(scope: !973, file: !58, line: 154, column: 5)
!983 = !DILocation(line: 157, column: 3, scope: !974)
!984 = !DILocation(line: 151, column: 51, scope: !969)
!985 = !DILocation(line: 151, column: 60, scope: !969)
!986 = !DILocation(line: 151, column: 49, scope: !969)
!987 = !DILocation(line: 151, column: 3, scope: !969)
!988 = distinct !{!988, !971, !989, !853}
!989 = !DILocation(line: 157, column: 3, scope: !965)
!990 = !DILocation(line: 159, column: 3, scope: !946)
!991 = !DILocation(line: 160, column: 1, scope: !946)
!992 = distinct !DISubprogram(name: "Demo1AccessKeyInit", scope: !58, file: !58, line: 193, type: !993, scopeLine: 196, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !716)
!993 = !DISubroutineType(types: !994)
!994 = !{!130, !98, !100}
!995 = !DILocalVariable(name: "ImageHandle", arg: 1, scope: !992, file: !58, line: 194, type: !98)
!996 = !DILocation(line: 194, column: 19, scope: !992)
!997 = !DILocalVariable(name: "SystemTable", arg: 2, scope: !992, file: !58, line: 195, type: !100)
!998 = !DILocation(line: 195, column: 26, scope: !992)
!999 = !DILocalVariable(name: "Status", scope: !992, file: !58, line: 197, type: !130)
!1000 = !DILocation(line: 197, column: 14, scope: !992)
!1001 = !DILocation(line: 203, column: 7, scope: !1002)
!1002 = distinct !DILexicalBlock(scope: !992, file: !58, line: 203, column: 7)
!1003 = !DILocation(line: 203, column: 25, scope: !1002)
!1004 = !DILocation(line: 203, column: 29, scope: !1002)
!1005 = !DILocation(line: 203, column: 41, scope: !1002)
!1006 = !DILocation(line: 203, column: 7, scope: !992)
!1007 = !DILocation(line: 207, column: 12, scope: !1008)
!1008 = distinct !DILexicalBlock(scope: !1002, file: !58, line: 204, column: 3)
!1009 = !DILocation(line: 207, column: 5, scope: !1008)
!1010 = !DILocation(line: 213, column: 15, scope: !992)
!1011 = !DILocation(line: 213, column: 13, scope: !992)
!1012 = !DILocation(line: 214, column: 76, scope: !992)
!1013 = !DILocation(line: 214, column: 12, scope: !992)
!1014 = !DILocation(line: 214, column: 10, scope: !992)
!1015 = !DILocation(line: 215, column: 7, scope: !1016)
!1016 = distinct !DILexicalBlock(scope: !992, file: !58, line: 215, column: 7)
!1017 = !DILocation(line: 215, column: 7, scope: !992)
!1018 = !DILocation(line: 219, column: 12, scope: !1019)
!1019 = distinct !DILexicalBlock(scope: !1016, file: !58, line: 216, column: 3)
!1020 = !DILocation(line: 219, column: 5, scope: !1019)
!1021 = !DILocation(line: 245, column: 7, scope: !1022)
!1022 = distinct !DILexicalBlock(scope: !992, file: !58, line: 245, column: 7)
!1023 = !DILocation(line: 245, column: 7, scope: !992)
!1024 = !DILocation(line: 249, column: 12, scope: !1025)
!1025 = distinct !DILexicalBlock(scope: !1022, file: !58, line: 246, column: 3)
!1026 = !DILocation(line: 249, column: 5, scope: !1025)
!1027 = !DILocation(line: 252, column: 3, scope: !992)
!1028 = !DILocation(line: 253, column: 1, scope: !992)
!1029 = distinct !DISubprogram(name: "Demo1AccessKeyUnload", scope: !58, file: !58, line: 265, type: !501, scopeLine: 267, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !716)
!1030 = !DILocalVariable(name: "ImageHandle", arg: 1, scope: !1029, file: !58, line: 266, type: !98)
!1031 = !DILocation(line: 266, column: 19, scope: !1029)
!1032 = !DILocalVariable(name: "Status", scope: !1029, file: !58, line: 268, type: !130)
!1033 = !DILocation(line: 268, column: 14, scope: !1029)
!1034 = !DILocation(line: 274, column: 12, scope: !1029)
!1035 = !DILocation(line: 274, column: 3, scope: !1029)
!1036 = !DILocation(line: 275, column: 10, scope: !1029)
!1037 = !DILocation(line: 275, column: 3, scope: !1029)
!1038 = distinct !DISubprogram(name: "Demo1BobDataProvider", scope: !3, file: !3, line: 335, type: !668, scopeLine: 341, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !716)
!1039 = !DILocalVariable(name: "This", arg: 1, scope: !1038, file: !3, line: 336, type: !670)
!1040 = !DILocation(line: 336, column: 30, scope: !1038)
!1041 = !DILocalVariable(name: "Address", arg: 2, scope: !1038, file: !3, line: 337, type: !52)
!1042 = !DILocation(line: 337, column: 30, scope: !1038)
!1043 = !DILocalVariable(name: "Dest", arg: 3, scope: !1038, file: !3, line: 338, type: !276)
!1044 = !DILocation(line: 338, column: 31, scope: !1038)
!1045 = !DILocalVariable(name: "Size", arg: 4, scope: !1038, file: !3, line: 339, type: !70)
!1046 = !DILocation(line: 339, column: 29, scope: !1038)
!1047 = !DILocalVariable(name: "IAddress", scope: !1038, file: !3, line: 344, type: !70)
!1048 = !DILocation(line: 344, column: 9, scope: !1038)
!1049 = !DILocation(line: 344, column: 27, scope: !1038)
!1050 = !DILocation(line: 344, column: 20, scope: !1038)
!1051 = !DILocation(line: 346, column: 44, scope: !1038)
!1052 = !DILocation(line: 346, column: 16, scope: !1038)
!1053 = !DILocation(line: 346, column: 14, scope: !1038)
!1054 = !DILocation(line: 347, column: 22, scope: !1038)
!1055 = !DILocation(line: 347, column: 3, scope: !1038)
!1056 = !DILocalVariable(name: "IBase", scope: !1038, file: !3, line: 349, type: !70)
!1057 = !DILocation(line: 349, column: 9, scope: !1038)
!1058 = !DILocation(line: 349, column: 24, scope: !1038)
!1059 = !DILocation(line: 349, column: 36, scope: !1038)
!1060 = !DILocation(line: 349, column: 17, scope: !1038)
!1061 = !DILocalVariable(name: "Storage", scope: !1038, file: !3, line: 350, type: !52)
!1062 = !DILocation(line: 350, column: 9, scope: !1038)
!1063 = !DILocation(line: 352, column: 7, scope: !1064)
!1064 = distinct !DILexicalBlock(scope: !1038, file: !3, line: 352, column: 7)
!1065 = !DILocation(line: 352, column: 12, scope: !1064)
!1066 = !DILocation(line: 352, column: 7, scope: !1038)
!1067 = !DILocation(line: 353, column: 5, scope: !1068)
!1068 = distinct !DILexicalBlock(scope: !1064, file: !3, line: 352, column: 22)
!1069 = !DILocation(line: 356, column: 8, scope: !1070)
!1070 = distinct !DILexicalBlock(scope: !1038, file: !3, line: 356, column: 8)
!1071 = !DILocation(line: 356, column: 19, scope: !1070)
!1072 = !DILocation(line: 356, column: 17, scope: !1070)
!1073 = !DILocation(line: 356, column: 8, scope: !1038)
!1074 = !DILocation(line: 357, column: 5, scope: !1075)
!1075 = distinct !DILexicalBlock(scope: !1070, file: !3, line: 356, column: 27)
!1076 = !DILocation(line: 361, column: 8, scope: !1077)
!1077 = distinct !DILexicalBlock(scope: !1038, file: !3, line: 361, column: 8)
!1078 = !DILocation(line: 361, column: 16, scope: !1077)
!1079 = !DILocation(line: 361, column: 28, scope: !1077)
!1080 = !DILocation(line: 361, column: 14, scope: !1077)
!1081 = !DILocation(line: 361, column: 40, scope: !1077)
!1082 = !DILocation(line: 361, column: 51, scope: !1077)
!1083 = !DILocation(line: 361, column: 49, scope: !1077)
!1084 = !DILocation(line: 361, column: 38, scope: !1077)
!1085 = !DILocation(line: 361, column: 8, scope: !1038)
!1086 = !DILocation(line: 362, column: 5, scope: !1087)
!1087 = distinct !DILexicalBlock(scope: !1077, file: !3, line: 361, column: 58)
!1088 = !DILocation(line: 365, column: 27, scope: !1038)
!1089 = !DILocation(line: 365, column: 20, scope: !1038)
!1090 = !DILocation(line: 365, column: 11, scope: !1038)
!1091 = !DILocation(line: 367, column: 8, scope: !1092)
!1092 = distinct !DILexicalBlock(scope: !1038, file: !3, line: 367, column: 8)
!1093 = !DILocation(line: 367, column: 16, scope: !1092)
!1094 = !DILocation(line: 367, column: 8, scope: !1038)
!1095 = !DILocation(line: 368, column: 5, scope: !1096)
!1096 = distinct !DILexicalBlock(scope: !1092, file: !3, line: 367, column: 26)
!1097 = !DILocation(line: 371, column: 43, scope: !1038)
!1098 = !DILocation(line: 371, column: 5, scope: !1038)
!1099 = !DILocation(line: 372, column: 26, scope: !1038)
!1100 = !DILocation(line: 372, column: 5, scope: !1038)
!1101 = !DILocation(line: 373, column: 11, scope: !1038)
!1102 = !DILocation(line: 373, column: 20, scope: !1038)
!1103 = !DILocation(line: 373, column: 36, scope: !1038)
!1104 = !DILocation(line: 373, column: 29, scope: !1038)
!1105 = !DILocation(line: 373, column: 44, scope: !1038)
!1106 = !DILocation(line: 373, column: 3, scope: !1038)
!1107 = !DILocation(line: 374, column: 42, scope: !1038)
!1108 = !DILocation(line: 374, column: 4, scope: !1038)
!1109 = !DILocation(line: 375, column: 11, scope: !1038)
!1110 = !DILocation(line: 375, column: 4, scope: !1038)
!1111 = !DILocation(line: 375, column: 9, scope: !1038)
!1112 = !DILocation(line: 376, column: 42, scope: !1038)
!1113 = !DILocation(line: 376, column: 35, scope: !1038)
!1114 = !DILocation(line: 376, column: 8, scope: !1038)
!1115 = !DILocation(line: 378, column: 3, scope: !1038)
!1116 = !DILocation(line: 379, column: 1, scope: !1038)
!1117 = distinct !DISubprogram(name: "Demo1BobInit", scope: !3, file: !3, line: 165, type: !993, scopeLine: 169, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !716)
!1118 = !DILocalVariable(name: "ImageHandle", arg: 1, scope: !1117, file: !3, line: 166, type: !98)
!1119 = !DILocation(line: 166, column: 24, scope: !1117)
!1120 = !DILocalVariable(name: "SystemTable", arg: 2, scope: !1117, file: !3, line: 167, type: !100)
!1121 = !DILocation(line: 167, column: 25, scope: !1117)
!1122 = !DILocalVariable(name: "Status", scope: !1117, file: !3, line: 170, type: !130)
!1123 = !DILocation(line: 170, column: 21, scope: !1117)
!1124 = !DILocalVariable(name: "Mode", scope: !1117, file: !3, line: 171, type: !70)
!1125 = !DILocation(line: 171, column: 21, scope: !1117)
!1126 = !DILocalVariable(name: "BufferSize", scope: !1117, file: !3, line: 172, type: !70)
!1127 = !DILocation(line: 172, column: 21, scope: !1117)
!1128 = !DILocation(line: 188, column: 7, scope: !1129)
!1129 = distinct !DILexicalBlock(scope: !1117, file: !3, line: 188, column: 7)
!1130 = !DILocation(line: 188, column: 26, scope: !1129)
!1131 = !DILocation(line: 188, column: 30, scope: !1129)
!1132 = !DILocation(line: 188, column: 48, scope: !1129)
!1133 = !DILocation(line: 188, column: 7, scope: !1117)
!1134 = !DILocation(line: 189, column: 5, scope: !1135)
!1135 = distinct !DILexicalBlock(scope: !1129, file: !3, line: 188, column: 58)
!1136 = !DILocation(line: 189, column: 5, scope: !1137)
!1137 = distinct !DILexicalBlock(scope: !1138, file: !3, line: 189, column: 5)
!1138 = distinct !DILexicalBlock(scope: !1135, file: !3, line: 189, column: 5)
!1139 = !DILocation(line: 189, column: 5, scope: !1138)
!1140 = !DILocation(line: 189, column: 5, scope: !1141)
!1141 = distinct !DILexicalBlock(scope: !1137, file: !3, line: 189, column: 5)
!1142 = !DILocation(line: 189, column: 5, scope: !1143)
!1143 = distinct !DILexicalBlock(scope: !1144, file: !3, line: 189, column: 5)
!1144 = distinct !DILexicalBlock(scope: !1141, file: !3, line: 189, column: 5)
!1145 = !DILocation(line: 189, column: 5, scope: !1144)
!1146 = !DILocation(line: 189, column: 5, scope: !1147)
!1147 = distinct !DILexicalBlock(scope: !1143, file: !3, line: 189, column: 5)
!1148 = !DILocation(line: 191, column: 12, scope: !1135)
!1149 = !DILocation(line: 191, column: 5, scope: !1135)
!1150 = !DILocation(line: 197, column: 12, scope: !1117)
!1151 = !DILocation(line: 197, column: 31, scope: !1117)
!1152 = !DILocation(line: 197, column: 10, scope: !1117)
!1153 = !DILocation(line: 198, column: 7, scope: !1154)
!1154 = distinct !DILexicalBlock(scope: !1117, file: !3, line: 198, column: 7)
!1155 = !DILocation(line: 198, column: 7, scope: !1117)
!1156 = !DILocation(line: 199, column: 5, scope: !1157)
!1157 = distinct !DILexicalBlock(scope: !1154, file: !3, line: 198, column: 27)
!1158 = !DILocation(line: 199, column: 5, scope: !1159)
!1159 = distinct !DILexicalBlock(scope: !1160, file: !3, line: 199, column: 5)
!1160 = distinct !DILexicalBlock(scope: !1157, file: !3, line: 199, column: 5)
!1161 = !DILocation(line: 199, column: 5, scope: !1160)
!1162 = !DILocation(line: 199, column: 5, scope: !1163)
!1163 = distinct !DILexicalBlock(scope: !1159, file: !3, line: 199, column: 5)
!1164 = !DILocation(line: 199, column: 5, scope: !1165)
!1165 = distinct !DILexicalBlock(scope: !1166, file: !3, line: 199, column: 5)
!1166 = distinct !DILexicalBlock(scope: !1163, file: !3, line: 199, column: 5)
!1167 = !DILocation(line: 199, column: 5, scope: !1166)
!1168 = !DILocation(line: 199, column: 5, scope: !1169)
!1169 = distinct !DILexicalBlock(scope: !1165, file: !3, line: 199, column: 5)
!1170 = !DILocation(line: 201, column: 12, scope: !1157)
!1171 = !DILocation(line: 201, column: 5, scope: !1157)
!1172 = !DILocation(line: 208, column: 7, scope: !1173)
!1173 = distinct !DILexicalBlock(scope: !1117, file: !3, line: 208, column: 7)
!1174 = !DILocation(line: 208, column: 26, scope: !1173)
!1175 = !DILocation(line: 208, column: 30, scope: !1173)
!1176 = !DILocation(line: 208, column: 44, scope: !1173)
!1177 = !DILocation(line: 208, column: 7, scope: !1117)
!1178 = !DILocation(line: 209, column: 5, scope: !1179)
!1179 = distinct !DILexicalBlock(scope: !1173, file: !3, line: 208, column: 54)
!1180 = !DILocation(line: 209, column: 5, scope: !1181)
!1181 = distinct !DILexicalBlock(scope: !1182, file: !3, line: 209, column: 5)
!1182 = distinct !DILexicalBlock(scope: !1179, file: !3, line: 209, column: 5)
!1183 = !DILocation(line: 209, column: 5, scope: !1182)
!1184 = !DILocation(line: 209, column: 5, scope: !1185)
!1185 = distinct !DILexicalBlock(scope: !1181, file: !3, line: 209, column: 5)
!1186 = !DILocation(line: 209, column: 5, scope: !1187)
!1187 = distinct !DILexicalBlock(scope: !1188, file: !3, line: 209, column: 5)
!1188 = distinct !DILexicalBlock(scope: !1185, file: !3, line: 209, column: 5)
!1189 = !DILocation(line: 209, column: 5, scope: !1188)
!1190 = !DILocation(line: 209, column: 5, scope: !1191)
!1191 = distinct !DILexicalBlock(scope: !1187, file: !3, line: 209, column: 5)
!1192 = !DILocation(line: 211, column: 12, scope: !1179)
!1193 = !DILocation(line: 211, column: 5, scope: !1179)
!1194 = !DILocation(line: 225, column: 7, scope: !1195)
!1195 = distinct !DILexicalBlock(scope: !1117, file: !3, line: 225, column: 7)
!1196 = !DILocation(line: 225, column: 7, scope: !1117)
!1197 = !DILocation(line: 226, column: 5, scope: !1198)
!1198 = distinct !DILexicalBlock(scope: !1195, file: !3, line: 225, column: 27)
!1199 = !DILocation(line: 226, column: 5, scope: !1200)
!1200 = distinct !DILexicalBlock(scope: !1201, file: !3, line: 226, column: 5)
!1201 = distinct !DILexicalBlock(scope: !1198, file: !3, line: 226, column: 5)
!1202 = !DILocation(line: 226, column: 5, scope: !1201)
!1203 = !DILocation(line: 226, column: 5, scope: !1204)
!1204 = distinct !DILexicalBlock(scope: !1200, file: !3, line: 226, column: 5)
!1205 = !DILocation(line: 226, column: 5, scope: !1206)
!1206 = distinct !DILexicalBlock(scope: !1207, file: !3, line: 226, column: 5)
!1207 = distinct !DILexicalBlock(scope: !1204, file: !3, line: 226, column: 5)
!1208 = !DILocation(line: 226, column: 5, scope: !1207)
!1209 = !DILocation(line: 226, column: 5, scope: !1210)
!1210 = distinct !DILexicalBlock(scope: !1206, file: !3, line: 226, column: 5)
!1211 = !DILocation(line: 228, column: 12, scope: !1198)
!1212 = !DILocation(line: 228, column: 5, scope: !1198)
!1213 = !DILocation(line: 234, column: 7, scope: !1214)
!1214 = distinct !DILexicalBlock(scope: !1117, file: !3, line: 234, column: 7)
!1215 = !DILocation(line: 234, column: 12, scope: !1214)
!1216 = !DILocation(line: 234, column: 7, scope: !1117)
!1217 = !DILocation(line: 235, column: 5, scope: !1218)
!1218 = distinct !DILexicalBlock(scope: !1214, file: !3, line: 234, column: 25)
!1219 = !DILocation(line: 235, column: 5, scope: !1220)
!1220 = distinct !DILexicalBlock(scope: !1221, file: !3, line: 235, column: 5)
!1221 = distinct !DILexicalBlock(scope: !1218, file: !3, line: 235, column: 5)
!1222 = !DILocation(line: 235, column: 5, scope: !1221)
!1223 = !DILocation(line: 235, column: 5, scope: !1224)
!1224 = distinct !DILexicalBlock(scope: !1220, file: !3, line: 235, column: 5)
!1225 = !DILocation(line: 235, column: 5, scope: !1226)
!1226 = distinct !DILexicalBlock(scope: !1227, file: !3, line: 235, column: 5)
!1227 = distinct !DILexicalBlock(scope: !1224, file: !3, line: 235, column: 5)
!1228 = !DILocation(line: 235, column: 5, scope: !1227)
!1229 = !DILocation(line: 235, column: 5, scope: !1230)
!1230 = distinct !DILexicalBlock(scope: !1226, file: !3, line: 235, column: 5)
!1231 = !DILocation(line: 237, column: 5, scope: !1218)
!1232 = !DILocation(line: 239, column: 7, scope: !1233)
!1233 = distinct !DILexicalBlock(scope: !1117, file: !3, line: 239, column: 7)
!1234 = !DILocation(line: 239, column: 12, scope: !1233)
!1235 = !DILocation(line: 239, column: 7, scope: !1117)
!1236 = !DILocation(line: 240, column: 5, scope: !1237)
!1237 = distinct !DILexicalBlock(scope: !1233, file: !3, line: 239, column: 26)
!1238 = !DILocation(line: 240, column: 5, scope: !1239)
!1239 = distinct !DILexicalBlock(scope: !1240, file: !3, line: 240, column: 5)
!1240 = distinct !DILexicalBlock(scope: !1237, file: !3, line: 240, column: 5)
!1241 = !DILocation(line: 240, column: 5, scope: !1240)
!1242 = !DILocation(line: 240, column: 5, scope: !1243)
!1243 = distinct !DILexicalBlock(scope: !1239, file: !3, line: 240, column: 5)
!1244 = !DILocation(line: 240, column: 5, scope: !1245)
!1245 = distinct !DILexicalBlock(scope: !1246, file: !3, line: 240, column: 5)
!1246 = distinct !DILexicalBlock(scope: !1243, file: !3, line: 240, column: 5)
!1247 = !DILocation(line: 240, column: 5, scope: !1246)
!1248 = !DILocation(line: 240, column: 5, scope: !1249)
!1249 = distinct !DILexicalBlock(scope: !1245, file: !3, line: 240, column: 5)
!1250 = !DILocation(line: 242, column: 5, scope: !1237)
!1251 = !DILocation(line: 256, column: 7, scope: !1252)
!1252 = distinct !DILexicalBlock(scope: !1117, file: !3, line: 256, column: 7)
!1253 = !DILocation(line: 256, column: 7, scope: !1117)
!1254 = !DILocation(line: 257, column: 5, scope: !1255)
!1255 = distinct !DILexicalBlock(scope: !1252, file: !3, line: 256, column: 27)
!1256 = !DILocation(line: 257, column: 5, scope: !1257)
!1257 = distinct !DILexicalBlock(scope: !1258, file: !3, line: 257, column: 5)
!1258 = distinct !DILexicalBlock(scope: !1255, file: !3, line: 257, column: 5)
!1259 = !DILocation(line: 257, column: 5, scope: !1258)
!1260 = !DILocation(line: 257, column: 5, scope: !1261)
!1261 = distinct !DILexicalBlock(scope: !1257, file: !3, line: 257, column: 5)
!1262 = !DILocation(line: 257, column: 5, scope: !1263)
!1263 = distinct !DILexicalBlock(scope: !1264, file: !3, line: 257, column: 5)
!1264 = distinct !DILexicalBlock(scope: !1261, file: !3, line: 257, column: 5)
!1265 = !DILocation(line: 257, column: 5, scope: !1264)
!1266 = !DILocation(line: 257, column: 5, scope: !1267)
!1267 = distinct !DILexicalBlock(scope: !1263, file: !3, line: 257, column: 5)
!1268 = !DILocation(line: 259, column: 12, scope: !1255)
!1269 = !DILocation(line: 259, column: 5, scope: !1255)
!1270 = !DILocation(line: 282, column: 7, scope: !1271)
!1271 = distinct !DILexicalBlock(scope: !1117, file: !3, line: 282, column: 7)
!1272 = !DILocation(line: 282, column: 7, scope: !1117)
!1273 = !DILocation(line: 283, column: 12, scope: !1274)
!1274 = distinct !DILexicalBlock(scope: !1271, file: !3, line: 282, column: 27)
!1275 = !DILocation(line: 283, column: 5, scope: !1274)
!1276 = !DILocation(line: 286, column: 3, scope: !1117)
!1277 = !DILocation(line: 287, column: 1, scope: !1117)
!1278 = distinct !DISubprogram(name: "Demo1BobUnload", scope: !3, file: !3, line: 299, type: !501, scopeLine: 302, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !716)
!1279 = !DILocalVariable(name: "ImageHandle", arg: 1, scope: !1278, file: !3, line: 300, type: !98)
!1280 = !DILocation(line: 300, column: 18, scope: !1278)
!1281 = !DILocalVariable(name: "Status", scope: !1278, file: !3, line: 303, type: !130)
!1282 = !DILocation(line: 303, column: 14, scope: !1278)
!1283 = !DILocation(line: 309, column: 10, scope: !1278)
!1284 = !DILocation(line: 309, column: 3, scope: !1278)
!1285 = distinct !DISubprogram(name: "CopyMem_c", scope: !3, file: !3, line: 312, type: !1286, scopeLine: 312, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !716)
!1286 = !DISubroutineType(types: !1287)
!1287 = !{null, !52, !605, !1288}
!1288 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !1289, line: 46, baseType: !1290)
!1289 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!1290 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!1291 = !DILocalVariable(name: "Destination", arg: 1, scope: !1285, file: !3, line: 312, type: !52)
!1292 = !DILocation(line: 312, column: 22, scope: !1285)
!1293 = !DILocalVariable(name: "Source", arg: 2, scope: !1285, file: !3, line: 312, type: !605)
!1294 = !DILocation(line: 312, column: 47, scope: !1285)
!1295 = !DILocalVariable(name: "Length", arg: 3, scope: !1285, file: !3, line: 312, type: !1288)
!1296 = !DILocation(line: 312, column: 62, scope: !1285)
!1297 = !DILocalVariable(name: "dest", scope: !1285, file: !3, line: 313, type: !83)
!1298 = !DILocation(line: 313, column: 14, scope: !1285)
!1299 = !DILocation(line: 313, column: 32, scope: !1285)
!1300 = !DILocalVariable(name: "src", scope: !1285, file: !3, line: 314, type: !88)
!1301 = !DILocation(line: 314, column: 20, scope: !1285)
!1302 = !DILocation(line: 314, column: 43, scope: !1285)
!1303 = !DILocalVariable(name: "i", scope: !1304, file: !3, line: 316, type: !1288)
!1304 = distinct !DILexicalBlock(scope: !1285, file: !3, line: 316, column: 5)
!1305 = !DILocation(line: 316, column: 17, scope: !1304)
!1306 = !DILocation(line: 316, column: 10, scope: !1304)
!1307 = !DILocation(line: 316, column: 24, scope: !1308)
!1308 = distinct !DILexicalBlock(scope: !1304, file: !3, line: 316, column: 5)
!1309 = !DILocation(line: 316, column: 28, scope: !1308)
!1310 = !DILocation(line: 316, column: 26, scope: !1308)
!1311 = !DILocation(line: 316, column: 5, scope: !1304)
!1312 = !DILocation(line: 317, column: 19, scope: !1313)
!1313 = distinct !DILexicalBlock(scope: !1308, file: !3, line: 316, column: 41)
!1314 = !DILocation(line: 317, column: 23, scope: !1313)
!1315 = !DILocation(line: 317, column: 9, scope: !1313)
!1316 = !DILocation(line: 317, column: 14, scope: !1313)
!1317 = !DILocation(line: 317, column: 17, scope: !1313)
!1318 = !DILocation(line: 318, column: 5, scope: !1313)
!1319 = !DILocation(line: 316, column: 37, scope: !1308)
!1320 = !DILocation(line: 316, column: 5, scope: !1308)
!1321 = distinct !{!1321, !1311, !1322, !853}
!1322 = !DILocation(line: 318, column: 5, scope: !1304)
!1323 = !DILocation(line: 319, column: 1, scope: !1285)
!1324 = distinct !DISubprogram(name: "read_bobkey_addr_through_Demo1BobDataProvider", scope: !3, file: !3, line: 381, type: !1325, scopeLine: 381, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !716)
!1325 = !DISubroutineType(types: !1326)
!1326 = !{null}
!1327 = !DILocalVariable(name: "data", scope: !1324, file: !3, line: 391, type: !62)
!1328 = !DILocation(line: 391, column: 22, scope: !1324)
!1329 = !DILocalVariable(name: "searchValue", scope: !1324, file: !3, line: 392, type: !52)
!1330 = !DILocation(line: 392, column: 11, scope: !1324)
!1331 = !DILocalVariable(name: "readValue", scope: !1324, file: !3, line: 393, type: !1332)
!1332 = !DIDerivedType(tag: DW_TAG_typedef, name: "CHAR8", file: !54, line: 218, baseType: !628)
!1333 = !DILocation(line: 393, column: 12, scope: !1324)
!1334 = !DILocalVariable(name: "size", scope: !1324, file: !3, line: 395, type: !70)
!1335 = !DILocation(line: 395, column: 11, scope: !1324)
!1336 = !DILocation(line: 396, column: 35, scope: !1337)
!1337 = distinct !DILexicalBlock(scope: !1324, file: !3, line: 396, column: 8)
!1338 = !DILocation(line: 396, column: 48, scope: !1337)
!1339 = !DILocation(line: 396, column: 64, scope: !1337)
!1340 = !DILocation(line: 396, column: 8, scope: !1337)
!1341 = !DILocation(line: 396, column: 70, scope: !1337)
!1342 = !DILocation(line: 396, column: 8, scope: !1324)
!1343 = !DILocation(line: 399, column: 8, scope: !1344)
!1344 = distinct !DILexicalBlock(scope: !1337, file: !3, line: 396, column: 85)
!1345 = !DILocation(line: 402, column: 5, scope: !1344)
!1346 = !DILocation(line: 403, column: 1, scope: !1324)
!1347 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 405, type: !1348, scopeLine: 406, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !716)
!1348 = !DISubroutineType(types: !1349)
!1349 = !{!196}
!1350 = !DILocalVariable(name: "AccessKeyPtr", scope: !1347, file: !3, line: 407, type: !310)
!1351 = !DILocation(line: 407, column: 23, scope: !1347)
!1352 = !DILocation(line: 408, column: 3, scope: !1347)
!1353 = !DILocation(line: 409, column: 16, scope: !1347)
!1354 = !DILocation(line: 411, column: 37, scope: !1347)
!1355 = !DILocation(line: 411, column: 3, scope: !1347)
!1356 = !DILocation(line: 411, column: 17, scope: !1347)
!1357 = !DILocation(line: 411, column: 36, scope: !1347)
!1358 = !DILocation(line: 412, column: 3, scope: !1347)
!1359 = !DILocation(line: 412, column: 17, scope: !1347)
!1360 = !DILocation(line: 412, column: 37, scope: !1347)
!1361 = !DILocation(line: 413, column: 36, scope: !1347)
!1362 = !DILocation(line: 413, column: 50, scope: !1347)
!1363 = !DILocation(line: 413, column: 3, scope: !1347)
!1364 = !DILocation(line: 414, column: 36, scope: !1347)
!1365 = !DILocation(line: 414, column: 50, scope: !1347)
!1366 = !DILocation(line: 414, column: 3, scope: !1347)
!1367 = !DILocation(line: 415, column: 46, scope: !1347)
!1368 = !DILocation(line: 415, column: 38, scope: !1347)
!1369 = !DILocation(line: 415, column: 3, scope: !1347)
!1370 = !DILocation(line: 416, column: 59, scope: !1347)
!1371 = !DILocation(line: 416, column: 51, scope: !1347)
!1372 = !DILocation(line: 416, column: 3, scope: !1347)
!1373 = !DILocation(line: 417, column: 3, scope: !1347)
!1374 = !DILocation(line: 418, column: 3, scope: !1347)
!1375 = distinct !DISubprogram(name: "memcpy", scope: !1376, file: !1376, line: 12, type: !1377, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !705, retainedNodes: !716)
!1376 = !DIFile(filename: "klee/runtime/Freestanding/memcpy.c", directory: "/home/hira/Research", checksumkind: CSK_MD5, checksum: "8fb9a7164e167db005d7d002570068bc")
!1377 = !DISubroutineType(types: !1378)
!1378 = !{!52, !52, !605, !1288}
!1379 = !DILocalVariable(name: "destaddr", arg: 1, scope: !1375, file: !1376, line: 12, type: !52)
!1380 = !DILocation(line: 12, column: 20, scope: !1375)
!1381 = !DILocalVariable(name: "srcaddr", arg: 2, scope: !1375, file: !1376, line: 12, type: !605)
!1382 = !DILocation(line: 12, column: 42, scope: !1375)
!1383 = !DILocalVariable(name: "len", arg: 3, scope: !1375, file: !1376, line: 12, type: !1288)
!1384 = !DILocation(line: 12, column: 58, scope: !1375)
!1385 = !DILocalVariable(name: "dest", scope: !1375, file: !1376, line: 13, type: !627)
!1386 = !DILocation(line: 13, column: 9, scope: !1375)
!1387 = !DILocation(line: 13, column: 16, scope: !1375)
!1388 = !DILocalVariable(name: "src", scope: !1375, file: !1376, line: 14, type: !1389)
!1389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1390, size: 64)
!1390 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !628)
!1391 = !DILocation(line: 14, column: 15, scope: !1375)
!1392 = !DILocation(line: 14, column: 21, scope: !1375)
!1393 = !DILocation(line: 16, column: 3, scope: !1375)
!1394 = !DILocation(line: 16, column: 13, scope: !1375)
!1395 = !DILocation(line: 16, column: 16, scope: !1375)
!1396 = !DILocation(line: 17, column: 19, scope: !1375)
!1397 = !DILocation(line: 17, column: 15, scope: !1375)
!1398 = !DILocation(line: 17, column: 10, scope: !1375)
!1399 = !DILocation(line: 17, column: 13, scope: !1375)
!1400 = distinct !{!1400, !1393, !1396, !853}
!1401 = !DILocation(line: 18, column: 10, scope: !1375)
!1402 = !DILocation(line: 18, column: 3, scope: !1375)
