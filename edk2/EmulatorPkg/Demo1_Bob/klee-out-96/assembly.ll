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
@.str.12 = private unnamed_addr constant [16 x i8] c"Dest value: %x\0A\00", align 1
@.str.13 = private unnamed_addr constant [16 x i8] c"Read value: %p\0A\00", align 1
@.str.14 = private unnamed_addr constant [20 x i8] c"bobkey address: %p\0A\00", align 1
@.str.15 = private unnamed_addr constant [22 x i8] c"Rand part bobkey: %x\0A\00", align 1
@.str.16 = private unnamed_addr constant [22 x i8] c"key magic bobkey: %x\0A\00", align 1
@.str.17 = private unnamed_addr constant [24 x i8] c"value Accesskeyptr: %x\0A\00", align 1
@.str.18 = private unnamed_addr constant [37 x i8] c"Address where bobkey is written: %p\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define hidden i64 @Demo1GenerateAccessKey(%struct._Demo1_Access_Key_PROTOCOL* noundef %0, i8* noundef %1, i8 noundef zeroext %2, %struct._DEMO1_ACCESS_KEY* noundef %3) #0 !dbg !713 {
  %5 = alloca i64, align 8
  %6 = alloca %struct._Demo1_Access_Key_PROTOCOL*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8, align 1
  %9 = alloca %struct._DEMO1_ACCESS_KEY*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct._Demo1_Access_Key_PROTOCOL* %0, %struct._Demo1_Access_Key_PROTOCOL** %6, align 8
  call void @llvm.dbg.declare(metadata %struct._Demo1_Access_Key_PROTOCOL** %6, metadata !715, metadata !DIExpression()), !dbg !716
  store i8* %1, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !717, metadata !DIExpression()), !dbg !718
  store i8 %2, i8* %8, align 1
  call void @llvm.dbg.declare(metadata i8* %8, metadata !719, metadata !DIExpression()), !dbg !720
  store %struct._DEMO1_ACCESS_KEY* %3, %struct._DEMO1_ACCESS_KEY** %9, align 8
  call void @llvm.dbg.declare(metadata %struct._DEMO1_ACCESS_KEY** %9, metadata !721, metadata !DIExpression()), !dbg !722
  call void @llvm.dbg.declare(metadata i64* %10, metadata !723, metadata !DIExpression()), !dbg !724
  store i64 0, i64* %10, align 8, !dbg !724
  call void @llvm.dbg.declare(metadata i64* %11, metadata !725, metadata !DIExpression()), !dbg !726
  store i64 0, i64* %11, align 8, !dbg !726
  %12 = load %struct._DEMO1_ACCESS_KEY*, %struct._DEMO1_ACCESS_KEY** %9, align 8, !dbg !727
  %13 = icmp eq %struct._DEMO1_ACCESS_KEY* %12, null, !dbg !729
  br i1 %13, label %14, label %15, !dbg !730

14:                                               ; preds = %4
  store i64 -9223372036854775806, i64* %5, align 8, !dbg !731
  br label %52, !dbg !731

15:                                               ; preds = %4
  %16 = load i8, i8* @accessKeyLock, align 1, !dbg !733
  %17 = zext i8 %16 to i32, !dbg !733
  %18 = icmp eq i32 %17, 1, !dbg !735
  br i1 %18, label %19, label %20, !dbg !736

19:                                               ; preds = %15
  store i64 -9223372036854775800, i64* %5, align 8, !dbg !737
  br label %52, !dbg !737

20:                                               ; preds = %15
  %21 = load %struct._EFI_RNG_PROTOCOL*, %struct._EFI_RNG_PROTOCOL** @RngProtocol, align 8, !dbg !739
  %22 = getelementptr inbounds %struct._EFI_RNG_PROTOCOL, %struct._EFI_RNG_PROTOCOL* %21, i32 0, i32 1, !dbg !740
  %23 = load i64 (%struct._EFI_RNG_PROTOCOL*, %struct.GUID*, i64, i8*)*, i64 (%struct._EFI_RNG_PROTOCOL*, %struct.GUID*, i64, i8*)** %22, align 8, !dbg !740
  %24 = load %struct._EFI_RNG_PROTOCOL*, %struct._EFI_RNG_PROTOCOL** @RngProtocol, align 8, !dbg !741
  %25 = load %struct._DEMO1_ACCESS_KEY*, %struct._DEMO1_ACCESS_KEY** %9, align 8, !dbg !742
  %26 = getelementptr inbounds %struct._DEMO1_ACCESS_KEY, %struct._DEMO1_ACCESS_KEY* %25, i32 0, i32 0, !dbg !743
  %27 = bitcast [2 x i64]* %26 to i8*, !dbg !744
  %28 = call i64 %23(%struct._EFI_RNG_PROTOCOL* noundef %24, %struct.GUID* noundef null, i64 noundef 16, i8* noundef %27), !dbg !739
  store i64 %28, i64* %10, align 8, !dbg !745
  %29 = load i64, i64* %10, align 8, !dbg !746
  %30 = icmp slt i64 %29, 0, !dbg !746
  br i1 %30, label %31, label %33, !dbg !748

31:                                               ; preds = %20
  %32 = load i64, i64* %10, align 8, !dbg !749
  store i64 %32, i64* %5, align 8, !dbg !751
  br label %52, !dbg !751

33:                                               ; preds = %20
  %34 = load i8, i8* %8, align 1, !dbg !752
  %35 = icmp ne i8 %34, 0, !dbg !752
  br i1 %35, label %36, label %37, !dbg !754

36:                                               ; preds = %33
  store i64 -2395670108176482799, i64* %11, align 8, !dbg !755
  br label %38, !dbg !757

37:                                               ; preds = %33
  store i64 -2395670108176510803, i64* %11, align 8, !dbg !758
  br label %38

38:                                               ; preds = %37, %36
  %39 = load i64, i64* %11, align 8, !dbg !760
  %40 = load %struct._DEMO1_ACCESS_KEY*, %struct._DEMO1_ACCESS_KEY** %9, align 8, !dbg !761
  %41 = getelementptr inbounds %struct._DEMO1_ACCESS_KEY, %struct._DEMO1_ACCESS_KEY* %40, i32 0, i32 0, !dbg !762
  %42 = getelementptr inbounds [2 x i64], [2 x i64]* %41, i64 0, i64 1, !dbg !761
  store i64 %39, i64* %42, align 8, !dbg !763
  %43 = load %struct._DEMO1_ACCESS_KEY*, %struct._DEMO1_ACCESS_KEY** %9, align 8, !dbg !764
  %44 = load %struct._DEMO1_ACCESS_KEY*, %struct._DEMO1_ACCESS_KEY** @masterKey, align 8, !dbg !766
  %45 = icmp ne %struct._DEMO1_ACCESS_KEY* %43, %44, !dbg !767
  br i1 %45, label %46, label %48, !dbg !768

46:                                               ; preds = %38
  %47 = load %struct._DEMO1_ACCESS_KEY*, %struct._DEMO1_ACCESS_KEY** %9, align 8, !dbg !769
  call void @InsertLast(%struct._DEMO1_ACCESS_KEY* noundef %47), !dbg !771
  br label %50, !dbg !772

48:                                               ; preds = %38
  %49 = load %struct._DEMO1_ACCESS_KEY*, %struct._DEMO1_ACCESS_KEY** %9, align 8, !dbg !773
  call void @InsertFirst(%struct._DEMO1_ACCESS_KEY* noundef %49), !dbg !775
  br label %50

50:                                               ; preds = %48, %46
  %51 = load i64, i64* %10, align 8, !dbg !776
  store i64 %51, i64* %5, align 8, !dbg !777
  br label %52, !dbg !777

52:                                               ; preds = %50, %31, %19, %14
  %53 = load i64, i64* %5, align 8, !dbg !778
  ret i64 %53, !dbg !778
}

; Function Attrs: noinline nounwind optnone uwtable
define hidden i64 @Demo1ValidateAccessKey(%struct._Demo1_Access_Key_PROTOCOL* noundef %0, i8* noundef %1, %struct._DEMO1_ACCESS_KEY* noundef %2, i8 noundef zeroext %3, i8* noundef %4) #0 !dbg !779 {
  %6 = alloca i64, align 8
  %7 = alloca %struct._Demo1_Access_Key_PROTOCOL*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct._DEMO1_ACCESS_KEY*, align 8
  %10 = alloca i8, align 1
  %11 = alloca i8*, align 8
  store %struct._Demo1_Access_Key_PROTOCOL* %0, %struct._Demo1_Access_Key_PROTOCOL** %7, align 8
  call void @llvm.dbg.declare(metadata %struct._Demo1_Access_Key_PROTOCOL** %7, metadata !782, metadata !DIExpression()), !dbg !783
  store i8* %1, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !784, metadata !DIExpression()), !dbg !785
  store %struct._DEMO1_ACCESS_KEY* %2, %struct._DEMO1_ACCESS_KEY** %9, align 8
  call void @llvm.dbg.declare(metadata %struct._DEMO1_ACCESS_KEY** %9, metadata !786, metadata !DIExpression()), !dbg !787
  store i8 %3, i8* %10, align 1
  call void @llvm.dbg.declare(metadata i8* %10, metadata !788, metadata !DIExpression()), !dbg !789
  store i8* %4, i8** %11, align 8
  call void @llvm.dbg.declare(metadata i8** %11, metadata !790, metadata !DIExpression()), !dbg !791
  %12 = load i8*, i8** %11, align 8, !dbg !792
  %13 = icmp eq i8* %12, null, !dbg !794
  br i1 %13, label %14, label %15, !dbg !795

14:                                               ; preds = %5
  store i64 -9223372036854775806, i64* %6, align 8, !dbg !796
  br label %35, !dbg !796

15:                                               ; preds = %5
  %16 = load i8*, i8** %11, align 8, !dbg !798
  store i8 0, i8* %16, align 1, !dbg !799
  %17 = load %struct._DEMO1_ACCESS_KEY*, %struct._DEMO1_ACCESS_KEY** %9, align 8, !dbg !800
  %18 = icmp eq %struct._DEMO1_ACCESS_KEY* %17, null, !dbg !802
  br i1 %18, label %19, label %20, !dbg !803

19:                                               ; preds = %15
  store i64 -9223372036854775806, i64* %6, align 8, !dbg !804
  br label %35, !dbg !804

20:                                               ; preds = %15
  %21 = load i8, i8* %10, align 1, !dbg !806
  %22 = zext i8 %21 to i32, !dbg !806
  %23 = icmp ne i32 %22, 0, !dbg !806
  br i1 %23, label %24, label %31, !dbg !808

24:                                               ; preds = %20
  %25 = load %struct._DEMO1_ACCESS_KEY*, %struct._DEMO1_ACCESS_KEY** %9, align 8, !dbg !809
  %26 = getelementptr inbounds %struct._DEMO1_ACCESS_KEY, %struct._DEMO1_ACCESS_KEY* %25, i32 0, i32 0, !dbg !810
  %27 = getelementptr inbounds [2 x i64], [2 x i64]* %26, i64 0, i64 1, !dbg !809
  %28 = load i64, i64* %27, align 8, !dbg !809
  %29 = icmp eq i64 %28, -2395670108176510803, !dbg !811
  br i1 %29, label %30, label %31, !dbg !812

30:                                               ; preds = %24
  store i64 -9223372036854775806, i64* %6, align 8, !dbg !813
  br label %35, !dbg !813

31:                                               ; preds = %24, %20
  %32 = load %struct._DEMO1_ACCESS_KEY*, %struct._DEMO1_ACCESS_KEY** %9, align 8, !dbg !815
  %33 = call zeroext i8 @DoesKeyExist(%struct._DEMO1_ACCESS_KEY* noundef %32), !dbg !816
  %34 = load i8*, i8** %11, align 8, !dbg !817
  store i8 %33, i8* %34, align 1, !dbg !818
  store i64 0, i64* %6, align 8, !dbg !819
  br label %35, !dbg !819

35:                                               ; preds = %31, %30, %19, %14
  %36 = load i64, i64* %6, align 8, !dbg !820
  ret i64 %36, !dbg !820
}

; Function Attrs: noinline nounwind optnone uwtable
define hidden zeroext i8 @IsKeychainEmpty() #0 !dbg !821 {
  %1 = load %struct._LINK*, %struct._LINK** @head, align 8, !dbg !824
  %2 = icmp eq %struct._LINK* %1, null, !dbg !825
  %3 = zext i1 %2 to i32, !dbg !825
  %4 = trunc i32 %3 to i8, !dbg !824
  ret i8 %4, !dbg !826
}

; Function Attrs: noinline nounwind optnone uwtable
define hidden i64 @KeychainLength() #0 !dbg !827 {
  %1 = alloca i64, align 8
  %2 = alloca %struct._LINK*, align 8
  call void @llvm.dbg.declare(metadata i64* %1, metadata !830, metadata !DIExpression()), !dbg !831
  store i64 0, i64* %1, align 8, !dbg !831
  call void @llvm.dbg.declare(metadata %struct._LINK** %2, metadata !832, metadata !DIExpression()), !dbg !833
  %3 = load %struct._LINK*, %struct._LINK** @head, align 8, !dbg !834
  store %struct._LINK* %3, %struct._LINK** %2, align 8, !dbg !836
  br label %4, !dbg !837

4:                                                ; preds = %10, %0
  %5 = load %struct._LINK*, %struct._LINK** %2, align 8, !dbg !838
  %6 = icmp ne %struct._LINK* %5, null, !dbg !840
  br i1 %6, label %7, label %14, !dbg !841

7:                                                ; preds = %4
  %8 = load i64, i64* %1, align 8, !dbg !842
  %9 = add i64 %8, 1, !dbg !842
  store i64 %9, i64* %1, align 8, !dbg !842
  br label %10, !dbg !844

10:                                               ; preds = %7
  %11 = load %struct._LINK*, %struct._LINK** %2, align 8, !dbg !845
  %12 = getelementptr inbounds %struct._LINK, %struct._LINK* %11, i32 0, i32 1, !dbg !846
  %13 = load %struct._LINK*, %struct._LINK** %12, align 8, !dbg !846
  store %struct._LINK* %13, %struct._LINK** %2, align 8, !dbg !847
  br label %4, !dbg !848, !llvm.loop !849

14:                                               ; preds = %4
  %15 = load i64, i64* %1, align 8, !dbg !852
  ret i64 %15, !dbg !853
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind optnone uwtable
define hidden void @InsertFirst(%struct._DEMO1_ACCESS_KEY* noundef %0) #0 !dbg !854 {
  %2 = alloca %struct._DEMO1_ACCESS_KEY*, align 8
  %3 = alloca %struct._LINK*, align 8
  store %struct._DEMO1_ACCESS_KEY* %0, %struct._DEMO1_ACCESS_KEY** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._DEMO1_ACCESS_KEY** %2, metadata !857, metadata !DIExpression()), !dbg !858
  call void @llvm.dbg.declare(metadata %struct._LINK** %3, metadata !859, metadata !DIExpression()), !dbg !860
  %4 = call i8* @AllocatePool(i64 noundef 32), !dbg !861
  %5 = bitcast i8* %4 to %struct._LINK*, !dbg !861
  store %struct._LINK* %5, %struct._LINK** %3, align 8, !dbg !860
  br label %6, !dbg !862

6:                                                ; preds = %1
  %7 = call zeroext i8 @DebugAssertEnabled(), !dbg !863
  %8 = icmp ne i8 %7, 0, !dbg !863
  br i1 %8, label %9, label %14, !dbg !866

9:                                                ; preds = %6
  %10 = load %struct._LINK*, %struct._LINK** %3, align 8, !dbg !867
  %11 = icmp ne %struct._LINK* %10, null, !dbg !867
  br i1 %11, label %13, label %12, !dbg !870

12:                                               ; preds = %9
  call void @DebugAssert(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i64 noundef 88, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0)), !dbg !871
  br label %13, !dbg !871

13:                                               ; preds = %12, %9
  br label %14, !dbg !870

14:                                               ; preds = %13, %6
  br label %15, !dbg !866

15:                                               ; preds = %14
  %16 = load %struct._LINK*, %struct._LINK** %3, align 8, !dbg !873
  %17 = getelementptr inbounds %struct._LINK, %struct._LINK* %16, i32 0, i32 0, !dbg !874
  %18 = bitcast %struct._DEMO1_ACCESS_KEY* %17 to i8*, !dbg !875
  %19 = load %struct._DEMO1_ACCESS_KEY*, %struct._DEMO1_ACCESS_KEY** %2, align 8, !dbg !876
  %20 = bitcast %struct._DEMO1_ACCESS_KEY* %19 to i8*, !dbg !876
  %21 = call i8* @CopyMem(i8* noundef %18, i8* noundef %20, i64 noundef 16), !dbg !877
  %22 = call zeroext i8 @IsKeychainEmpty(), !dbg !878
  %23 = icmp ne i8 %22, 0, !dbg !878
  br i1 %23, label %24, label %26, !dbg !880

24:                                               ; preds = %15
  %25 = load %struct._LINK*, %struct._LINK** %3, align 8, !dbg !881
  store %struct._LINK* %25, %struct._LINK** @last, align 8, !dbg !883
  br label %30, !dbg !884

26:                                               ; preds = %15
  %27 = load %struct._LINK*, %struct._LINK** %3, align 8, !dbg !885
  %28 = load %struct._LINK*, %struct._LINK** @head, align 8, !dbg !887
  %29 = getelementptr inbounds %struct._LINK, %struct._LINK* %28, i32 0, i32 2, !dbg !888
  store %struct._LINK* %27, %struct._LINK** %29, align 8, !dbg !889
  br label %30

30:                                               ; preds = %26, %24
  %31 = load %struct._LINK*, %struct._LINK** %3, align 8, !dbg !890
  %32 = getelementptr inbounds %struct._LINK, %struct._LINK* %31, i32 0, i32 2, !dbg !891
  store %struct._LINK* null, %struct._LINK** %32, align 8, !dbg !892
  %33 = load %struct._LINK*, %struct._LINK** @head, align 8, !dbg !893
  %34 = load %struct._LINK*, %struct._LINK** %3, align 8, !dbg !894
  %35 = getelementptr inbounds %struct._LINK, %struct._LINK* %34, i32 0, i32 1, !dbg !895
  store %struct._LINK* %33, %struct._LINK** %35, align 8, !dbg !896
  %36 = load %struct._LINK*, %struct._LINK** %3, align 8, !dbg !897
  store %struct._LINK* %36, %struct._LINK** @head, align 8, !dbg !898
  ret void, !dbg !899
}

declare hidden i8* @AllocatePool(i64 noundef) #2

declare hidden zeroext i8 @DebugAssertEnabled() #2

declare hidden void @DebugAssert(i8* noundef, i64 noundef, i8* noundef) #2

declare hidden i8* @CopyMem(i8* noundef, i8* noundef, i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define hidden void @InsertLast(%struct._DEMO1_ACCESS_KEY* noundef %0) #0 !dbg !900 {
  %2 = alloca %struct._DEMO1_ACCESS_KEY*, align 8
  %3 = alloca %struct._LINK*, align 8
  store %struct._DEMO1_ACCESS_KEY* %0, %struct._DEMO1_ACCESS_KEY** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._DEMO1_ACCESS_KEY** %2, metadata !901, metadata !DIExpression()), !dbg !902
  call void @llvm.dbg.declare(metadata %struct._LINK** %3, metadata !903, metadata !DIExpression()), !dbg !904
  %4 = call i8* @AllocatePool(i64 noundef 32), !dbg !905
  %5 = bitcast i8* %4 to %struct._LINK*, !dbg !905
  store %struct._LINK* %5, %struct._LINK** %3, align 8, !dbg !904
  br label %6, !dbg !906

6:                                                ; preds = %1
  %7 = call zeroext i8 @DebugAssertEnabled(), !dbg !907
  %8 = icmp ne i8 %7, 0, !dbg !907
  br i1 %8, label %9, label %14, !dbg !910

9:                                                ; preds = %6
  %10 = load %struct._LINK*, %struct._LINK** %3, align 8, !dbg !911
  %11 = icmp ne %struct._LINK* %10, null, !dbg !911
  br i1 %11, label %13, label %12, !dbg !914

12:                                               ; preds = %9
  call void @DebugAssert(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i64 noundef 115, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0)), !dbg !915
  br label %13, !dbg !915

13:                                               ; preds = %12, %9
  br label %14, !dbg !914

14:                                               ; preds = %13, %6
  br label %15, !dbg !910

15:                                               ; preds = %14
  %16 = load %struct._LINK*, %struct._LINK** %3, align 8, !dbg !917
  %17 = getelementptr inbounds %struct._LINK, %struct._LINK* %16, i32 0, i32 0, !dbg !918
  %18 = bitcast %struct._DEMO1_ACCESS_KEY* %17 to i8*, !dbg !919
  %19 = load %struct._DEMO1_ACCESS_KEY*, %struct._DEMO1_ACCESS_KEY** %2, align 8, !dbg !920
  %20 = bitcast %struct._DEMO1_ACCESS_KEY* %19 to i8*, !dbg !920
  %21 = call i8* @CopyMem(i8* noundef %18, i8* noundef %20, i64 noundef 16), !dbg !921
  %22 = call zeroext i8 @IsKeychainEmpty(), !dbg !922
  %23 = icmp ne i8 %22, 0, !dbg !922
  br i1 %23, label %24, label %26, !dbg !924

24:                                               ; preds = %15
  %25 = load %struct._LINK*, %struct._LINK** %3, align 8, !dbg !925
  store %struct._LINK* %25, %struct._LINK** @last, align 8, !dbg !927
  br label %33, !dbg !928

26:                                               ; preds = %15
  %27 = load %struct._LINK*, %struct._LINK** %3, align 8, !dbg !929
  %28 = load %struct._LINK*, %struct._LINK** @last, align 8, !dbg !931
  %29 = getelementptr inbounds %struct._LINK, %struct._LINK* %28, i32 0, i32 1, !dbg !932
  store %struct._LINK* %27, %struct._LINK** %29, align 8, !dbg !933
  %30 = load %struct._LINK*, %struct._LINK** @last, align 8, !dbg !934
  %31 = load %struct._LINK*, %struct._LINK** %3, align 8, !dbg !935
  %32 = getelementptr inbounds %struct._LINK, %struct._LINK* %31, i32 0, i32 2, !dbg !936
  store %struct._LINK* %30, %struct._LINK** %32, align 8, !dbg !937
  br label %33

33:                                               ; preds = %26, %24
  %34 = load %struct._LINK*, %struct._LINK** %3, align 8, !dbg !938
  %35 = getelementptr inbounds %struct._LINK, %struct._LINK* %34, i32 0, i32 1, !dbg !939
  store %struct._LINK* null, %struct._LINK** %35, align 8, !dbg !940
  %36 = load %struct._LINK*, %struct._LINK** %3, align 8, !dbg !941
  store %struct._LINK* %36, %struct._LINK** @last, align 8, !dbg !942
  ret void, !dbg !943
}

; Function Attrs: noinline nounwind optnone uwtable
define hidden zeroext i8 @DoesKeyExist(%struct._DEMO1_ACCESS_KEY* noundef %0) #0 !dbg !944 {
  %2 = alloca i8, align 1
  %3 = alloca %struct._DEMO1_ACCESS_KEY*, align 8
  %4 = alloca %struct._LINK*, align 8
  store %struct._DEMO1_ACCESS_KEY* %0, %struct._DEMO1_ACCESS_KEY** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._DEMO1_ACCESS_KEY** %3, metadata !947, metadata !DIExpression()), !dbg !948
  call void @llvm.dbg.declare(metadata %struct._LINK** %4, metadata !949, metadata !DIExpression()), !dbg !950
  %5 = load %struct._DEMO1_ACCESS_KEY*, %struct._DEMO1_ACCESS_KEY** %3, align 8, !dbg !951
  %6 = icmp eq %struct._DEMO1_ACCESS_KEY* %5, null, !dbg !953
  br i1 %6, label %7, label %8, !dbg !954

7:                                                ; preds = %1
  store i8 0, i8* %2, align 1, !dbg !955
  br label %35, !dbg !955

8:                                                ; preds = %1
  %9 = call i8* @malloc(i64 noundef 32), !dbg !957
  %10 = bitcast i8* %9 to %struct._LINK*, !dbg !958
  store %struct._LINK* %10, %struct._LINK** @head, align 8, !dbg !959
  %11 = load %struct._LINK*, %struct._LINK** @head, align 8, !dbg !960
  %12 = bitcast %struct._LINK* %11 to i8*, !dbg !960
  call void @klee_make_symbolic(i8* noundef %12, i64 noundef 32, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)), !dbg !961
  %13 = load %struct._LINK*, %struct._LINK** @head, align 8, !dbg !962
  store %struct._LINK* %13, %struct._LINK** %4, align 8, !dbg !964
  br label %14, !dbg !965

14:                                               ; preds = %30, %8
  %15 = load %struct._LINK*, %struct._LINK** %4, align 8, !dbg !966
  %16 = icmp ne %struct._LINK* %15, null, !dbg !968
  br i1 %16, label %17, label %34, !dbg !969

17:                                               ; preds = %14
  %18 = load %struct._DEMO1_ACCESS_KEY*, %struct._DEMO1_ACCESS_KEY** %3, align 8, !dbg !970
  %19 = getelementptr inbounds %struct._DEMO1_ACCESS_KEY, %struct._DEMO1_ACCESS_KEY* %18, i32 0, i32 0, !dbg !973
  %20 = getelementptr inbounds [2 x i64], [2 x i64]* %19, i64 0, i64 0, !dbg !970
  %21 = load i64, i64* %20, align 8, !dbg !970
  %22 = load %struct._LINK*, %struct._LINK** %4, align 8, !dbg !974
  %23 = getelementptr inbounds %struct._LINK, %struct._LINK* %22, i32 0, i32 0, !dbg !975
  %24 = getelementptr inbounds %struct._DEMO1_ACCESS_KEY, %struct._DEMO1_ACCESS_KEY* %23, i32 0, i32 0, !dbg !976
  %25 = getelementptr inbounds [2 x i64], [2 x i64]* %24, i64 0, i64 0, !dbg !974
  %26 = load i64, i64* %25, align 8, !dbg !974
  %27 = icmp eq i64 %21, %26, !dbg !977
  br i1 %27, label %28, label %29, !dbg !978

28:                                               ; preds = %17
  store i8 1, i8* %2, align 1, !dbg !979
  br label %35, !dbg !979

29:                                               ; preds = %17
  br label %30, !dbg !981

30:                                               ; preds = %29
  %31 = load %struct._LINK*, %struct._LINK** %4, align 8, !dbg !982
  %32 = getelementptr inbounds %struct._LINK, %struct._LINK* %31, i32 0, i32 1, !dbg !983
  %33 = load %struct._LINK*, %struct._LINK** %32, align 8, !dbg !983
  store %struct._LINK* %33, %struct._LINK** %4, align 8, !dbg !984
  br label %14, !dbg !985, !llvm.loop !986

34:                                               ; preds = %14
  store i8 0, i8* %2, align 1, !dbg !988
  br label %35, !dbg !988

35:                                               ; preds = %34, %28, %7
  %36 = load i8, i8* %2, align 1, !dbg !989
  ret i8 %36, !dbg !989
}

declare i8* @malloc(i64 noundef) #2

declare hidden void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define hidden i64 @Demo1AccessKeyInit(i8* noundef %0, %struct.EFI_SYSTEM_TABLE* noundef %1) #0 !dbg !990 {
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.EFI_SYSTEM_TABLE*, align 8
  %6 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !993, metadata !DIExpression()), !dbg !994
  store %struct.EFI_SYSTEM_TABLE* %1, %struct.EFI_SYSTEM_TABLE** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.EFI_SYSTEM_TABLE** %5, metadata !995, metadata !DIExpression()), !dbg !996
  call void @llvm.dbg.declare(metadata i64* %6, metadata !997, metadata !DIExpression()), !dbg !998
  %7 = load i64, i64* %6, align 8, !dbg !999
  %8 = icmp slt i64 %7, 0, !dbg !999
  br i1 %8, label %12, label %9, !dbg !1001

9:                                                ; preds = %2
  %10 = load %struct._EFI_RNG_PROTOCOL*, %struct._EFI_RNG_PROTOCOL** @RngProtocol, align 8, !dbg !1002
  %11 = icmp eq %struct._EFI_RNG_PROTOCOL* %10, null, !dbg !1003
  br i1 %11, label %12, label %14, !dbg !1004

12:                                               ; preds = %9, %2
  %13 = load i64, i64* %6, align 8, !dbg !1005
  store i64 %13, i64* %3, align 8, !dbg !1007
  br label %29, !dbg !1007

14:                                               ; preds = %9
  %15 = call i8* @AllocatePool(i64 noundef 16), !dbg !1008
  %16 = bitcast i8* %15 to %struct._DEMO1_ACCESS_KEY*, !dbg !1008
  store %struct._DEMO1_ACCESS_KEY* %16, %struct._DEMO1_ACCESS_KEY** @masterKey, align 8, !dbg !1009
  %17 = load %struct._DEMO1_ACCESS_KEY*, %struct._DEMO1_ACCESS_KEY** @masterKey, align 8, !dbg !1010
  %18 = call i64 @Demo1GenerateAccessKey(%struct._Demo1_Access_Key_PROTOCOL* noundef bitcast ({ i64 (%struct._Demo1_Access_Key_PROTOCOL*, i8*, i8, %struct._DEMO1_ACCESS_KEY*)*, i8* }* @gDemo1_Access_Key_Protocol to %struct._Demo1_Access_Key_PROTOCOL*), i8* noundef null, i8 noundef zeroext 1, %struct._DEMO1_ACCESS_KEY* noundef %17), !dbg !1011
  store i64 %18, i64* %6, align 8, !dbg !1012
  %19 = load i64, i64* %6, align 8, !dbg !1013
  %20 = icmp slt i64 %19, 0, !dbg !1013
  br i1 %20, label %21, label %23, !dbg !1015

21:                                               ; preds = %14
  %22 = load i64, i64* %6, align 8, !dbg !1016
  store i64 %22, i64* %3, align 8, !dbg !1018
  br label %29, !dbg !1018

23:                                               ; preds = %14
  %24 = load i64, i64* %6, align 8, !dbg !1019
  %25 = icmp slt i64 %24, 0, !dbg !1019
  br i1 %25, label %26, label %28, !dbg !1021

26:                                               ; preds = %23
  %27 = load i64, i64* %6, align 8, !dbg !1022
  store i64 %27, i64* %3, align 8, !dbg !1024
  br label %29, !dbg !1024

28:                                               ; preds = %23
  store i64 0, i64* %3, align 8, !dbg !1025
  br label %29, !dbg !1025

29:                                               ; preds = %28, %26, %21, %12
  %30 = load i64, i64* %3, align 8, !dbg !1026
  ret i64 %30, !dbg !1026
}

; Function Attrs: noinline nounwind optnone uwtable
define hidden i64 @Demo1AccessKeyUnload(i8* noundef %0) #0 !dbg !1027 {
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !1028, metadata !DIExpression()), !dbg !1029
  call void @llvm.dbg.declare(metadata i64* %3, metadata !1030, metadata !DIExpression()), !dbg !1031
  store i64 0, i64* %3, align 8, !dbg !1031
  %4 = load %struct._DEMO1_ACCESS_KEY*, %struct._DEMO1_ACCESS_KEY** @masterKey, align 8, !dbg !1032
  %5 = bitcast %struct._DEMO1_ACCESS_KEY* %4 to i8*, !dbg !1032
  call void @FreePool(i8* noundef %5), !dbg !1033
  %6 = load i64, i64* %3, align 8, !dbg !1034
  ret i64 %6, !dbg !1035
}

declare hidden void @FreePool(i8* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define hidden i64 @Demo1BobDataProvider(%struct._Demo1_Bob_PROTOCOL* noundef %0, i8* noundef %1, i8** noundef %2, i64 noundef %3) #0 !dbg !1036 {
  %5 = alloca i64, align 8
  %6 = alloca %struct._Demo1_Bob_PROTOCOL*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  store %struct._Demo1_Bob_PROTOCOL* %0, %struct._Demo1_Bob_PROTOCOL** %6, align 8
  call void @llvm.dbg.declare(metadata %struct._Demo1_Bob_PROTOCOL** %6, metadata !1037, metadata !DIExpression()), !dbg !1038
  store i8* %1, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !1039, metadata !DIExpression()), !dbg !1040
  store i8** %2, i8*** %8, align 8
  call void @llvm.dbg.declare(metadata i8*** %8, metadata !1041, metadata !DIExpression()), !dbg !1042
  store i64 %3, i64* %9, align 8
  call void @llvm.dbg.declare(metadata i64* %9, metadata !1043, metadata !DIExpression()), !dbg !1044
  call void @llvm.dbg.declare(metadata i64* %10, metadata !1045, metadata !DIExpression()), !dbg !1046
  %13 = load i8*, i8** %7, align 8, !dbg !1047
  %14 = ptrtoint i8* %13 to i64, !dbg !1048
  store i64 %14, i64* %10, align 8, !dbg !1046
  %15 = call i8* @malloc(i64 noundef 96), !dbg !1049
  %16 = bitcast i8* %15 to %struct.EFI_LOADED_IMAGE_PROTOCOL*, !dbg !1050
  store %struct.EFI_LOADED_IMAGE_PROTOCOL* %16, %struct.EFI_LOADED_IMAGE_PROTOCOL** @gLoadImage, align 8, !dbg !1051
  %17 = load %struct.EFI_LOADED_IMAGE_PROTOCOL*, %struct.EFI_LOADED_IMAGE_PROTOCOL** @gLoadImage, align 8, !dbg !1052
  %18 = bitcast %struct.EFI_LOADED_IMAGE_PROTOCOL* %17 to i8*, !dbg !1052
  call void @klee_make_symbolic(i8* noundef %18, i64 noundef 96, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.11, i64 0, i64 0)), !dbg !1053
  call void @llvm.dbg.declare(metadata i64* %11, metadata !1054, metadata !DIExpression()), !dbg !1055
  %19 = load %struct.EFI_LOADED_IMAGE_PROTOCOL*, %struct.EFI_LOADED_IMAGE_PROTOCOL** @gLoadImage, align 8, !dbg !1056
  %20 = getelementptr inbounds %struct.EFI_LOADED_IMAGE_PROTOCOL, %struct.EFI_LOADED_IMAGE_PROTOCOL* %19, i32 0, i32 8, !dbg !1057
  %21 = load i8*, i8** %20, align 8, !dbg !1057
  %22 = ptrtoint i8* %21 to i64, !dbg !1058
  store i64 %22, i64* %11, align 8, !dbg !1055
  call void @llvm.dbg.declare(metadata i8** %12, metadata !1059, metadata !DIExpression()), !dbg !1060
  store i8* null, i8** %12, align 8, !dbg !1060
  %23 = load i8**, i8*** %8, align 8, !dbg !1061
  %24 = icmp eq i8** %23, null, !dbg !1063
  br i1 %24, label %25, label %26, !dbg !1064

25:                                               ; preds = %4
  store i64 -9223372036854775806, i64* %5, align 8, !dbg !1065
  br label %58, !dbg !1065

26:                                               ; preds = %4
  %27 = load i64, i64* %10, align 8, !dbg !1067
  %28 = load i64, i64* %11, align 8, !dbg !1069
  %29 = icmp ult i64 %27, %28, !dbg !1070
  br i1 %29, label %30, label %31, !dbg !1071

30:                                               ; preds = %26
  store i64 -9223372036854775793, i64* %5, align 8, !dbg !1072
  br label %58, !dbg !1072

31:                                               ; preds = %26
  %32 = load i64, i64* %11, align 8, !dbg !1074
  %33 = load %struct.EFI_LOADED_IMAGE_PROTOCOL*, %struct.EFI_LOADED_IMAGE_PROTOCOL** @gLoadImage, align 8, !dbg !1076
  %34 = getelementptr inbounds %struct.EFI_LOADED_IMAGE_PROTOCOL, %struct.EFI_LOADED_IMAGE_PROTOCOL* %33, i32 0, i32 9, !dbg !1077
  %35 = load i64, i64* %34, align 8, !dbg !1077
  %36 = add i64 %32, %35, !dbg !1078
  %37 = load i64, i64* %10, align 8, !dbg !1079
  %38 = load i64, i64* %9, align 8, !dbg !1080
  %39 = add i64 %37, %38, !dbg !1081
  %40 = icmp ult i64 %36, %39, !dbg !1082
  br i1 %40, label %41, label %42, !dbg !1083

41:                                               ; preds = %31
  store i64 -9223372036854775793, i64* %5, align 8, !dbg !1084
  br label %58, !dbg !1084

42:                                               ; preds = %31
  %43 = load i64, i64* %9, align 8, !dbg !1086
  %44 = call i8* @malloc(i64 noundef %43), !dbg !1087
  store i8* %44, i8** %12, align 8, !dbg !1088
  %45 = load i8*, i8** %12, align 8, !dbg !1089
  %46 = icmp eq i8* %45, null, !dbg !1091
  br i1 %46, label %47, label %48, !dbg !1092

47:                                               ; preds = %42
  store i64 -9223372036854775806, i64* %5, align 8, !dbg !1093
  br label %58, !dbg !1093

48:                                               ; preds = %42
  %49 = load i8*, i8** %12, align 8, !dbg !1095
  %50 = load i8*, i8** %7, align 8, !dbg !1096
  %51 = load i64, i64* %9, align 8, !dbg !1097
  %52 = call i8* @memcpy(i8* %49, i8* %50, i64 %51), !dbg !1098
  %53 = load i8*, i8** %12, align 8, !dbg !1099
  %54 = load i8**, i8*** %8, align 8, !dbg !1100
  store i8* %53, i8** %54, align 8, !dbg !1101
  %55 = load i8**, i8*** %8, align 8, !dbg !1102
  %56 = load i8*, i8** %55, align 8, !dbg !1103
  %57 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.12, i64 0, i64 0), i8* noundef %56), !dbg !1104
  store i64 0, i64* %5, align 8, !dbg !1105
  br label %58, !dbg !1105

58:                                               ; preds = %48, %47, %41, %30, %25
  %59 = load i64, i64* %5, align 8, !dbg !1106
  ret i64 %59, !dbg !1106
}

; Function Attrs: noinline nounwind optnone uwtable
define hidden i64 @Demo1BobInit(i8* noundef %0, %struct.EFI_SYSTEM_TABLE* noundef %1) #0 !dbg !1107 {
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.EFI_SYSTEM_TABLE*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1108, metadata !DIExpression()), !dbg !1109
  store %struct.EFI_SYSTEM_TABLE* %1, %struct.EFI_SYSTEM_TABLE** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.EFI_SYSTEM_TABLE** %5, metadata !1110, metadata !DIExpression()), !dbg !1111
  call void @llvm.dbg.declare(metadata i64* %6, metadata !1112, metadata !DIExpression()), !dbg !1113
  call void @llvm.dbg.declare(metadata i64* %7, metadata !1114, metadata !DIExpression()), !dbg !1115
  call void @llvm.dbg.declare(metadata i64* %8, metadata !1116, metadata !DIExpression()), !dbg !1117
  store i64 8, i64* %8, align 8, !dbg !1117
  %9 = load i64, i64* %6, align 8, !dbg !1118
  %10 = icmp slt i64 %9, 0, !dbg !1118
  br i1 %10, label %14, label %11, !dbg !1120

11:                                               ; preds = %2
  %12 = load %struct._Demo1_Access_Key_PROTOCOL*, %struct._Demo1_Access_Key_PROTOCOL** @AccessKeyProtocol, align 8, !dbg !1121
  %13 = icmp eq %struct._Demo1_Access_Key_PROTOCOL* %12, null, !dbg !1122
  br i1 %13, label %14, label %29, !dbg !1123

14:                                               ; preds = %11, %2
  br label %15, !dbg !1124

15:                                               ; preds = %14
  %16 = call zeroext i8 @DebugPrintEnabled(), !dbg !1126
  %17 = icmp ne i8 %16, 0, !dbg !1126
  br i1 %17, label %18, label %26, !dbg !1129

18:                                               ; preds = %15
  br label %19, !dbg !1130

19:                                               ; preds = %18
  %20 = call zeroext i8 @DebugPrintLevelEnabled(i64 noundef 2147483648), !dbg !1132
  %21 = icmp ne i8 %20, 0, !dbg !1132
  br i1 %21, label %22, label %24, !dbg !1135

22:                                               ; preds = %19
  %23 = load i64, i64* %6, align 8, !dbg !1136
  call void (i64, i8*, ...) @DebugPrint(i64 noundef 2147483648, i8* noundef getelementptr inbounds ([55 x i8], [55 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @__FUNCTION__.Demo1BobInit, i64 0, i64 0), i64 noundef %23), !dbg !1136
  br label %24, !dbg !1136

24:                                               ; preds = %22, %19
  br label %25, !dbg !1135

25:                                               ; preds = %24
  br label %26, !dbg !1130

26:                                               ; preds = %25, %15
  br label %27, !dbg !1129

27:                                               ; preds = %26
  %28 = load i64, i64* %6, align 8, !dbg !1138
  store i64 %28, i64* %3, align 8, !dbg !1139
  br label %146, !dbg !1139

29:                                               ; preds = %11
  %30 = load %struct._Demo1_Access_Key_PROTOCOL*, %struct._Demo1_Access_Key_PROTOCOL** @AccessKeyProtocol, align 8, !dbg !1140
  %31 = getelementptr inbounds %struct._Demo1_Access_Key_PROTOCOL, %struct._Demo1_Access_Key_PROTOCOL* %30, i32 0, i32 0, !dbg !1141
  %32 = bitcast {}** %31 to i64 (%struct._Demo1_Access_Key_PROTOCOL*, i8*, i8, %struct._DEMO1_ACCESS_KEY*)**, !dbg !1141
  %33 = load i64 (%struct._Demo1_Access_Key_PROTOCOL*, i8*, i8, %struct._DEMO1_ACCESS_KEY*)*, i64 (%struct._Demo1_Access_Key_PROTOCOL*, i8*, i8, %struct._DEMO1_ACCESS_KEY*)** %32, align 8, !dbg !1141
  %34 = call i64 %33(%struct._Demo1_Access_Key_PROTOCOL* noundef null, i8* noundef null, i8 noundef zeroext 0, %struct._DEMO1_ACCESS_KEY* noundef @bobKey), !dbg !1140
  store i64 %34, i64* %6, align 8, !dbg !1142
  %35 = load i64, i64* %6, align 8, !dbg !1143
  %36 = icmp slt i64 %35, 0, !dbg !1143
  br i1 %36, label %37, label %52, !dbg !1145

37:                                               ; preds = %29
  br label %38, !dbg !1146

38:                                               ; preds = %37
  %39 = call zeroext i8 @DebugPrintEnabled(), !dbg !1148
  %40 = icmp ne i8 %39, 0, !dbg !1148
  br i1 %40, label %41, label %49, !dbg !1151

41:                                               ; preds = %38
  br label %42, !dbg !1152

42:                                               ; preds = %41
  %43 = call zeroext i8 @DebugPrintLevelEnabled(i64 noundef 2147483648), !dbg !1154
  %44 = icmp ne i8 %43, 0, !dbg !1154
  br i1 %44, label %45, label %47, !dbg !1157

45:                                               ; preds = %42
  %46 = load i64, i64* %6, align 8, !dbg !1158
  call void (i64, i8*, ...) @DebugPrint(i64 noundef 2147483648, i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0), i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @__FUNCTION__.Demo1BobInit, i64 0, i64 0), i64 noundef %46), !dbg !1158
  br label %47, !dbg !1158

47:                                               ; preds = %45, %42
  br label %48, !dbg !1157

48:                                               ; preds = %47
  br label %49, !dbg !1152

49:                                               ; preds = %48, %38
  br label %50, !dbg !1151

50:                                               ; preds = %49
  %51 = load i64, i64* %6, align 8, !dbg !1160
  store i64 %51, i64* %3, align 8, !dbg !1161
  br label %146, !dbg !1161

52:                                               ; preds = %29
  %53 = load i64, i64* %6, align 8, !dbg !1162
  %54 = icmp slt i64 %53, 0, !dbg !1162
  br i1 %54, label %58, label %55, !dbg !1164

55:                                               ; preds = %52
  %56 = load %struct._Demo1_Alice_PROTOCOL*, %struct._Demo1_Alice_PROTOCOL** @AliceProtocol, align 8, !dbg !1165
  %57 = icmp eq %struct._Demo1_Alice_PROTOCOL* %56, null, !dbg !1166
  br i1 %57, label %58, label %73, !dbg !1167

58:                                               ; preds = %55, %52
  br label %59, !dbg !1168

59:                                               ; preds = %58
  %60 = call zeroext i8 @DebugPrintEnabled(), !dbg !1170
  %61 = icmp ne i8 %60, 0, !dbg !1170
  br i1 %61, label %62, label %70, !dbg !1173

62:                                               ; preds = %59
  br label %63, !dbg !1174

63:                                               ; preds = %62
  %64 = call zeroext i8 @DebugPrintLevelEnabled(i64 noundef 2147483648), !dbg !1176
  %65 = icmp ne i8 %64, 0, !dbg !1176
  br i1 %65, label %66, label %68, !dbg !1179

66:                                               ; preds = %63
  %67 = load i64, i64* %6, align 8, !dbg !1180
  call void (i64, i8*, ...) @DebugPrint(i64 noundef 2147483648, i8* noundef getelementptr inbounds ([50 x i8], [50 x i8]* @.str.5, i64 0, i64 0), i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @__FUNCTION__.Demo1BobInit, i64 0, i64 0), i64 noundef %67), !dbg !1180
  br label %68, !dbg !1180

68:                                               ; preds = %66, %63
  br label %69, !dbg !1179

69:                                               ; preds = %68
  br label %70, !dbg !1174

70:                                               ; preds = %69, %59
  br label %71, !dbg !1173

71:                                               ; preds = %70
  %72 = load i64, i64* %6, align 8, !dbg !1182
  store i64 %72, i64* %3, align 8, !dbg !1183
  br label %146, !dbg !1183

73:                                               ; preds = %55
  %74 = load i64, i64* %6, align 8, !dbg !1184
  %75 = icmp slt i64 %74, 0, !dbg !1184
  br i1 %75, label %76, label %90, !dbg !1186

76:                                               ; preds = %73
  br label %77, !dbg !1187

77:                                               ; preds = %76
  %78 = call zeroext i8 @DebugPrintEnabled(), !dbg !1189
  %79 = icmp ne i8 %78, 0, !dbg !1189
  br i1 %79, label %80, label %87, !dbg !1192

80:                                               ; preds = %77
  br label %81, !dbg !1193

81:                                               ; preds = %80
  %82 = call zeroext i8 @DebugPrintLevelEnabled(i64 noundef 2147483648), !dbg !1195
  %83 = icmp ne i8 %82, 0, !dbg !1195
  br i1 %83, label %84, label %85, !dbg !1198

84:                                               ; preds = %81
  call void (i64, i8*, ...) @DebugPrint(i64 noundef 2147483648, i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @.str.6, i64 0, i64 0), i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @__FUNCTION__.Demo1BobInit, i64 0, i64 0), i32* noundef getelementptr inbounds ([11 x i32], [11 x i32]* @.str.7, i64 0, i64 0)), !dbg !1199
  br label %85, !dbg !1199

85:                                               ; preds = %84, %81
  br label %86, !dbg !1198

86:                                               ; preds = %85
  br label %87, !dbg !1193

87:                                               ; preds = %86, %77
  br label %88, !dbg !1192

88:                                               ; preds = %87
  %89 = load i64, i64* %6, align 8, !dbg !1201
  store i64 %89, i64* %3, align 8, !dbg !1202
  br label %146, !dbg !1202

90:                                               ; preds = %73
  %91 = load i64, i64* %7, align 8, !dbg !1203
  %92 = icmp eq i64 %91, 2, !dbg !1205
  br i1 %92, label %93, label %106, !dbg !1206

93:                                               ; preds = %90
  br label %94, !dbg !1207

94:                                               ; preds = %93
  %95 = call zeroext i8 @DebugPrintEnabled(), !dbg !1209
  %96 = icmp ne i8 %95, 0, !dbg !1209
  br i1 %96, label %97, label %104, !dbg !1212

97:                                               ; preds = %94
  br label %98, !dbg !1213

98:                                               ; preds = %97
  %99 = call zeroext i8 @DebugPrintLevelEnabled(i64 noundef 2147483648), !dbg !1215
  %100 = icmp ne i8 %99, 0, !dbg !1215
  br i1 %100, label %101, label %102, !dbg !1218

101:                                              ; preds = %98
  call void (i64, i8*, ...) @DebugPrint(i64 noundef 2147483648, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.8, i64 0, i64 0), i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @__FUNCTION__.Demo1BobInit, i64 0, i64 0)), !dbg !1219
  br label %102, !dbg !1219

102:                                              ; preds = %101, %98
  br label %103, !dbg !1218

103:                                              ; preds = %102
  br label %104, !dbg !1213

104:                                              ; preds = %103, %94
  br label %105, !dbg !1212

105:                                              ; preds = %104
  store i64 -9223372036854775788, i64* %3, align 8, !dbg !1221
  br label %146, !dbg !1221

106:                                              ; preds = %90
  %107 = load i64, i64* %7, align 8, !dbg !1222
  %108 = icmp ne i64 %107, 1, !dbg !1224
  br i1 %108, label %109, label %122, !dbg !1225

109:                                              ; preds = %106
  br label %110, !dbg !1226

110:                                              ; preds = %109
  %111 = call zeroext i8 @DebugPrintEnabled(), !dbg !1228
  %112 = icmp ne i8 %111, 0, !dbg !1228
  br i1 %112, label %113, label %120, !dbg !1231

113:                                              ; preds = %110
  br label %114, !dbg !1232

114:                                              ; preds = %113
  %115 = call zeroext i8 @DebugPrintLevelEnabled(i64 noundef 2147483648), !dbg !1234
  %116 = icmp ne i8 %115, 0, !dbg !1234
  br i1 %116, label %117, label %118, !dbg !1237

117:                                              ; preds = %114
  call void (i64, i8*, ...) @DebugPrint(i64 noundef 2147483648, i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.9, i64 0, i64 0), i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @__FUNCTION__.Demo1BobInit, i64 0, i64 0)), !dbg !1238
  br label %118, !dbg !1238

118:                                              ; preds = %117, %114
  br label %119, !dbg !1237

119:                                              ; preds = %118
  br label %120, !dbg !1232

120:                                              ; preds = %119, %110
  br label %121, !dbg !1231

121:                                              ; preds = %120
  store i64 -9223372036854775805, i64* %3, align 8, !dbg !1240
  br label %146, !dbg !1240

122:                                              ; preds = %106
  %123 = load i64, i64* %6, align 8, !dbg !1241
  %124 = icmp slt i64 %123, 0, !dbg !1241
  br i1 %124, label %125, label %140, !dbg !1243

125:                                              ; preds = %122
  br label %126, !dbg !1244

126:                                              ; preds = %125
  %127 = call zeroext i8 @DebugPrintEnabled(), !dbg !1246
  %128 = icmp ne i8 %127, 0, !dbg !1246
  br i1 %128, label %129, label %137, !dbg !1249

129:                                              ; preds = %126
  br label %130, !dbg !1250

130:                                              ; preds = %129
  %131 = call zeroext i8 @DebugPrintLevelEnabled(i64 noundef 2147483648), !dbg !1252
  %132 = icmp ne i8 %131, 0, !dbg !1252
  br i1 %132, label %133, label %135, !dbg !1255

133:                                              ; preds = %130
  %134 = load i64, i64* %6, align 8, !dbg !1256
  call void (i64, i8*, ...) @DebugPrint(i64 noundef 2147483648, i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @.str.10, i64 0, i64 0), i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @__FUNCTION__.Demo1BobInit, i64 0, i64 0), i64 noundef %134), !dbg !1256
  br label %135, !dbg !1256

135:                                              ; preds = %133, %130
  br label %136, !dbg !1255

136:                                              ; preds = %135
  br label %137, !dbg !1250

137:                                              ; preds = %136, %126
  br label %138, !dbg !1249

138:                                              ; preds = %137
  %139 = load i64, i64* %6, align 8, !dbg !1258
  store i64 %139, i64* %3, align 8, !dbg !1259
  br label %146, !dbg !1259

140:                                              ; preds = %122
  %141 = load i64, i64* %6, align 8, !dbg !1260
  %142 = icmp slt i64 %141, 0, !dbg !1260
  br i1 %142, label %143, label %145, !dbg !1262

143:                                              ; preds = %140
  %144 = load i64, i64* %6, align 8, !dbg !1263
  store i64 %144, i64* %3, align 8, !dbg !1265
  br label %146, !dbg !1265

145:                                              ; preds = %140
  store i64 0, i64* %3, align 8, !dbg !1266
  br label %146, !dbg !1266

146:                                              ; preds = %145, %143, %138, %121, %105, %88, %71, %50, %27
  %147 = load i64, i64* %3, align 8, !dbg !1267
  ret i64 %147, !dbg !1267
}

declare hidden zeroext i8 @DebugPrintEnabled() #2

declare hidden zeroext i8 @DebugPrintLevelEnabled(i64 noundef) #2

declare hidden void @DebugPrint(i64 noundef, i8* noundef, ...) #2

; Function Attrs: noinline nounwind optnone uwtable
define hidden i64 @Demo1BobUnload(i8* noundef %0) #0 !dbg !1268 {
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !1269, metadata !DIExpression()), !dbg !1270
  call void @llvm.dbg.declare(metadata i64* %3, metadata !1271, metadata !DIExpression()), !dbg !1272
  store i64 0, i64* %3, align 8, !dbg !1272
  %4 = load i64, i64* %3, align 8, !dbg !1273
  ret i64 %4, !dbg !1274
}

; Function Attrs: noinline nounwind optnone uwtable
define hidden void @CopyMem_c(i8* noundef %0, i8* noundef %1, i64 noundef %2) #0 !dbg !1275 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1281, metadata !DIExpression()), !dbg !1282
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !1283, metadata !DIExpression()), !dbg !1284
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !1285, metadata !DIExpression()), !dbg !1286
  call void @llvm.dbg.declare(metadata i8** %7, metadata !1287, metadata !DIExpression()), !dbg !1288
  %10 = load i8*, i8** %4, align 8, !dbg !1289
  store i8* %10, i8** %7, align 8, !dbg !1288
  call void @llvm.dbg.declare(metadata i8** %8, metadata !1290, metadata !DIExpression()), !dbg !1291
  %11 = load i8*, i8** %5, align 8, !dbg !1292
  store i8* %11, i8** %8, align 8, !dbg !1291
  call void @llvm.dbg.declare(metadata i64* %9, metadata !1293, metadata !DIExpression()), !dbg !1295
  store i64 0, i64* %9, align 8, !dbg !1295
  br label %12, !dbg !1296

12:                                               ; preds = %24, %3
  %13 = load i64, i64* %9, align 8, !dbg !1297
  %14 = load i64, i64* %6, align 8, !dbg !1299
  %15 = icmp ult i64 %13, %14, !dbg !1300
  br i1 %15, label %16, label %27, !dbg !1301

16:                                               ; preds = %12
  %17 = load i8*, i8** %8, align 8, !dbg !1302
  %18 = load i64, i64* %9, align 8, !dbg !1304
  %19 = getelementptr inbounds i8, i8* %17, i64 %18, !dbg !1302
  %20 = load i8, i8* %19, align 1, !dbg !1302
  %21 = load i8*, i8** %7, align 8, !dbg !1305
  %22 = load i64, i64* %9, align 8, !dbg !1306
  %23 = getelementptr inbounds i8, i8* %21, i64 %22, !dbg !1305
  store i8 %20, i8* %23, align 1, !dbg !1307
  br label %24, !dbg !1308

24:                                               ; preds = %16
  %25 = load i64, i64* %9, align 8, !dbg !1309
  %26 = add i64 %25, 1, !dbg !1309
  store i64 %26, i64* %9, align 8, !dbg !1309
  br label %12, !dbg !1310, !llvm.loop !1311

27:                                               ; preds = %12
  ret void, !dbg !1313
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

declare i32 @printf(i8* noundef, ...) #2

; Function Attrs: noinline nounwind optnone uwtable
define hidden void @read_bobkey_addr_through_Demo1BobDataProvider() #0 !dbg !1314 {
  %1 = alloca i64, align 8
  %2 = alloca %struct._DEMO1_ACCESS_KEY*, align 8
  %3 = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i64* %1, metadata !1317, metadata !DIExpression()), !dbg !1318
  store i64 16, i64* %1, align 8, !dbg !1318
  call void @llvm.dbg.declare(metadata %struct._DEMO1_ACCESS_KEY** %2, metadata !1319, metadata !DIExpression()), !dbg !1320
  call void @llvm.dbg.declare(metadata i8** %3, metadata !1321, metadata !DIExpression()), !dbg !1322
  store i8* bitcast (%struct._DEMO1_ACCESS_KEY* @bobKey to i8*), i8** %3, align 8, !dbg !1322
  %4 = load i8*, i8** %3, align 8, !dbg !1323
  %5 = load %struct._DEMO1_ACCESS_KEY*, %struct._DEMO1_ACCESS_KEY** %2, align 8, !dbg !1325
  %6 = bitcast %struct._DEMO1_ACCESS_KEY* %5 to i8**, !dbg !1325
  %7 = load i64, i64* %1, align 8, !dbg !1326
  %8 = call i64 @Demo1BobDataProvider(%struct._Demo1_Bob_PROTOCOL* noundef null, i8* noundef %4, i8** noundef %6, i64 noundef %7), !dbg !1327
  %9 = icmp ne i64 %8, 0, !dbg !1328
  br i1 %9, label %10, label %13, !dbg !1329

10:                                               ; preds = %0
  %11 = bitcast %struct._DEMO1_ACCESS_KEY** %2 to i8*, !dbg !1330
  %12 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.13, i64 0, i64 0), i8* noundef %11), !dbg !1332
  br label %13, !dbg !1333

13:                                               ; preds = %10, %0
  ret void, !dbg !1334
}

; Function Attrs: noinline nounwind optnone uwtable
define hidden i32 @main() #0 !dbg !1335 {
  %1 = alloca i32, align 4
  %2 = alloca %struct._DEMO1_ACCESS_KEY*, align 8
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata %struct._DEMO1_ACCESS_KEY** %2, metadata !1338, metadata !DIExpression()), !dbg !1339
  %3 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.14, i64 0, i64 0), %struct._DEMO1_ACCESS_KEY* noundef @bobKey), !dbg !1340
  store %struct._DEMO1_ACCESS_KEY* @bobKey, %struct._DEMO1_ACCESS_KEY** %2, align 8, !dbg !1341
  %4 = call i32 (...) @rand(), !dbg !1342
  %5 = sext i32 %4 to i64, !dbg !1342
  %6 = load %struct._DEMO1_ACCESS_KEY*, %struct._DEMO1_ACCESS_KEY** %2, align 8, !dbg !1343
  %7 = getelementptr inbounds %struct._DEMO1_ACCESS_KEY, %struct._DEMO1_ACCESS_KEY* %6, i32 0, i32 0, !dbg !1344
  %8 = getelementptr inbounds [2 x i64], [2 x i64]* %7, i64 0, i64 0, !dbg !1343
  store i64 %5, i64* %8, align 8, !dbg !1345
  %9 = load %struct._DEMO1_ACCESS_KEY*, %struct._DEMO1_ACCESS_KEY** %2, align 8, !dbg !1346
  %10 = getelementptr inbounds %struct._DEMO1_ACCESS_KEY, %struct._DEMO1_ACCESS_KEY* %9, i32 0, i32 0, !dbg !1347
  %11 = getelementptr inbounds [2 x i64], [2 x i64]* %10, i64 0, i64 1, !dbg !1346
  store i64 -2395670108176482799, i64* %11, align 8, !dbg !1348
  %12 = load %struct._DEMO1_ACCESS_KEY*, %struct._DEMO1_ACCESS_KEY** %2, align 8, !dbg !1349
  %13 = getelementptr inbounds %struct._DEMO1_ACCESS_KEY, %struct._DEMO1_ACCESS_KEY* %12, i32 0, i32 0, !dbg !1350
  %14 = getelementptr inbounds [2 x i64], [2 x i64]* %13, i64 0, i64 0, !dbg !1349
  %15 = load i64, i64* %14, align 8, !dbg !1349
  %16 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.15, i64 0, i64 0), i64 noundef %15), !dbg !1351
  %17 = load %struct._DEMO1_ACCESS_KEY*, %struct._DEMO1_ACCESS_KEY** %2, align 8, !dbg !1352
  %18 = getelementptr inbounds %struct._DEMO1_ACCESS_KEY, %struct._DEMO1_ACCESS_KEY* %17, i32 0, i32 0, !dbg !1353
  %19 = getelementptr inbounds [2 x i64], [2 x i64]* %18, i64 0, i64 1, !dbg !1352
  %20 = load i64, i64* %19, align 8, !dbg !1352
  %21 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i64 noundef %20), !dbg !1354
  %22 = load %struct._DEMO1_ACCESS_KEY*, %struct._DEMO1_ACCESS_KEY** %2, align 8, !dbg !1355
  %23 = bitcast %struct._DEMO1_ACCESS_KEY* %22 to i8*, !dbg !1356
  %24 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.17, i64 0, i64 0), i8* noundef %23), !dbg !1357
  %25 = load %struct._DEMO1_ACCESS_KEY*, %struct._DEMO1_ACCESS_KEY** %2, align 8, !dbg !1358
  %26 = bitcast %struct._DEMO1_ACCESS_KEY* %25 to i8*, !dbg !1359
  %27 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.18, i64 0, i64 0), i8* noundef %26), !dbg !1360
  call void @read_bobkey_addr_through_Demo1BobDataProvider(), !dbg !1361
  ret i32 0, !dbg !1362
}

declare hidden i32 @rand(...) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memcpy(i8* noundef %0, i8* noundef %1, i64 noundef %2) #4 !dbg !1363 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1367, metadata !DIExpression()), !dbg !1368
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !1369, metadata !DIExpression()), !dbg !1370
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !1371, metadata !DIExpression()), !dbg !1372
  call void @llvm.dbg.declare(metadata i8** %7, metadata !1373, metadata !DIExpression()), !dbg !1376
  %9 = load i8*, i8** %4, align 8, !dbg !1377
  store i8* %9, i8** %7, align 8, !dbg !1376
  call void @llvm.dbg.declare(metadata i8** %8, metadata !1378, metadata !DIExpression()), !dbg !1381
  %10 = load i8*, i8** %5, align 8, !dbg !1382
  store i8* %10, i8** %8, align 8, !dbg !1381
  br label %11, !dbg !1383

11:                                               ; preds = %15, %3
  %12 = load i64, i64* %6, align 8, !dbg !1384
  %13 = add i64 %12, -1, !dbg !1384
  store i64 %13, i64* %6, align 8, !dbg !1384
  %14 = icmp ugt i64 %12, 0, !dbg !1385
  br i1 %14, label %15, label %21, !dbg !1383

15:                                               ; preds = %11
  %16 = load i8*, i8** %8, align 8, !dbg !1386
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !1386
  store i8* %17, i8** %8, align 8, !dbg !1386
  %18 = load i8, i8* %16, align 1, !dbg !1387
  %19 = load i8*, i8** %7, align 8, !dbg !1388
  %20 = getelementptr inbounds i8, i8* %19, i32 1, !dbg !1388
  store i8* %20, i8** %7, align 8, !dbg !1388
  store i8 %18, i8* %19, align 1, !dbg !1389
  br label %11, !dbg !1383, !llvm.loop !1390

21:                                               ; preds = %11
  %22 = load i8*, i8** %4, align 8, !dbg !1391
  ret i8* %22, !dbg !1392
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly nofree nounwind willreturn }
attributes #4 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.dbg.cu = !{!2, !703}
!llvm.module.flags = !{!705, !706, !707, !708, !709, !710, !711}
!llvm.ident = !{!712, !712}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "gDemo1_Access_Key_Protocol", scope: !2, file: !58, line: 18, type: !672, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !51, globals: !627, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "Demo1_Bob.c", directory: "/home/hira/Research/HARDEN/repositories/HARDEN_demo1/edk2/EmulatorPkg/Demo1_Bob", checksumkind: CSK_MD5, checksum: "619edf0228ed33f2443c40b4da845a1e")
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
!51 = !{!52, !53, !56, !77, !80, !81, !83, !88, !70, !90}
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
!658 = distinct !DIGlobalVariable(name: "gDemo1_Bob_Protocol", scope: !2, file: !3, line: 21, type: !659, isLocal: false, isDefinition: true)
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
!670 = distinct !DIGlobalVariable(name: "AccessKeyProtocol", scope: !2, file: !3, line: 26, type: !671, isLocal: false, isDefinition: true)
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
!683 = distinct !DIGlobalVariable(name: "Demo1_Bob_PeriodicTimer", scope: !2, file: !3, line: 31, type: !144, isLocal: false, isDefinition: true)
!684 = !DIGlobalVariableExpression(var: !685, expr: !DIExpression())
!685 = distinct !DIGlobalVariable(name: "DataToProvide", scope: !2, file: !3, line: 32, type: !70, isLocal: false, isDefinition: true)
!686 = !DIGlobalVariableExpression(var: !687, expr: !DIExpression())
!687 = distinct !DIGlobalVariable(name: "gLoadImage", scope: !2, file: !3, line: 33, type: !90, isLocal: false, isDefinition: true)
!688 = !DIGlobalVariableExpression(var: !689, expr: !DIExpression())
!689 = distinct !DIGlobalVariable(name: "AliceProtocol", scope: !2, file: !3, line: 27, type: !690, isLocal: false, isDefinition: true)
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
!702 = distinct !DIGlobalVariable(name: "bobKey", scope: !2, file: !3, line: 30, type: !62, isLocal: false, isDefinition: true)
!703 = distinct !DICompileUnit(language: DW_LANG_C99, file: !704, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!704 = !DIFile(filename: "/home/hira/Research/klee/runtime/Freestanding/memcpy.c", directory: "/home/hira/Research/klee_build/runtime/Freestanding", checksumkind: CSK_MD5, checksum: "8fb9a7164e167db005d7d002570068bc")
!705 = !{i32 7, !"Dwarf Version", i32 5}
!706 = !{i32 2, !"Debug Info Version", i32 3}
!707 = !{i32 1, !"wchar_size", i32 4}
!708 = !{i32 7, !"PIC Level", i32 2}
!709 = !{i32 7, !"PIE Level", i32 2}
!710 = !{i32 7, !"uwtable", i32 1}
!711 = !{i32 7, !"frame-pointer", i32 2}
!712 = !{!"Ubuntu clang version 14.0.6"}
!713 = distinct !DISubprogram(name: "Demo1GenerateAccessKey", scope: !58, file: !58, line: 295, type: !679, scopeLine: 301, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !714)
!714 = !{}
!715 = !DILocalVariable(name: "This", arg: 1, scope: !713, file: !58, line: 296, type: !671)
!716 = !DILocation(line: 296, column: 35, scope: !713)
!717 = !DILocalVariable(name: "Controller", arg: 2, scope: !713, file: !58, line: 297, type: !98)
!718 = !DILocation(line: 297, column: 19, scope: !713)
!719 = !DILocalVariable(name: "WriteAccess", arg: 3, scope: !713, file: !58, line: 298, type: !53)
!720 = !DILocation(line: 298, column: 16, scope: !713)
!721 = !DILocalVariable(name: "AccessKeyPtr", arg: 4, scope: !713, file: !58, line: 299, type: !310)
!722 = !DILocation(line: 299, column: 30, scope: !713)
!723 = !DILocalVariable(name: "Status", scope: !713, file: !58, line: 302, type: !130)
!724 = !DILocation(line: 302, column: 14, scope: !713)
!725 = !DILocalVariable(name: "header", scope: !713, file: !58, line: 303, type: !70)
!726 = !DILocation(line: 303, column: 9, scope: !713)
!727 = !DILocation(line: 306, column: 7, scope: !728)
!728 = distinct !DILexicalBlock(scope: !713, file: !58, line: 306, column: 7)
!729 = !DILocation(line: 306, column: 20, scope: !728)
!730 = !DILocation(line: 306, column: 7, scope: !713)
!731 = !DILocation(line: 308, column: 5, scope: !732)
!732 = distinct !DILexicalBlock(scope: !728, file: !58, line: 307, column: 3)
!733 = !DILocation(line: 311, column: 7, scope: !734)
!734 = distinct !DILexicalBlock(scope: !713, file: !58, line: 311, column: 7)
!735 = !DILocation(line: 311, column: 21, scope: !734)
!736 = !DILocation(line: 311, column: 7, scope: !713)
!737 = !DILocation(line: 313, column: 5, scope: !738)
!738 = distinct !DILexicalBlock(scope: !734, file: !58, line: 312, column: 3)
!739 = !DILocation(line: 317, column: 12, scope: !713)
!740 = !DILocation(line: 317, column: 25, scope: !713)
!741 = !DILocation(line: 317, column: 32, scope: !713)
!742 = !DILocation(line: 317, column: 70, scope: !713)
!743 = !DILocation(line: 317, column: 84, scope: !713)
!744 = !DILocation(line: 317, column: 60, scope: !713)
!745 = !DILocation(line: 317, column: 10, scope: !713)
!746 = !DILocation(line: 318, column: 7, scope: !747)
!747 = distinct !DILexicalBlock(scope: !713, file: !58, line: 318, column: 7)
!748 = !DILocation(line: 318, column: 7, scope: !713)
!749 = !DILocation(line: 320, column: 12, scope: !750)
!750 = distinct !DILexicalBlock(scope: !747, file: !58, line: 319, column: 3)
!751 = !DILocation(line: 320, column: 5, scope: !750)
!752 = !DILocation(line: 324, column: 7, scope: !753)
!753 = distinct !DILexicalBlock(scope: !713, file: !58, line: 324, column: 7)
!754 = !DILocation(line: 324, column: 7, scope: !713)
!755 = !DILocation(line: 326, column: 12, scope: !756)
!756 = distinct !DILexicalBlock(scope: !753, file: !58, line: 325, column: 3)
!757 = !DILocation(line: 327, column: 3, scope: !756)
!758 = !DILocation(line: 330, column: 12, scope: !759)
!759 = distinct !DILexicalBlock(scope: !753, file: !58, line: 329, column: 3)
!760 = !DILocation(line: 332, column: 39, scope: !713)
!761 = !DILocation(line: 332, column: 3, scope: !713)
!762 = !DILocation(line: 332, column: 17, scope: !713)
!763 = !DILocation(line: 332, column: 37, scope: !713)
!764 = !DILocation(line: 335, column: 7, scope: !765)
!765 = distinct !DILexicalBlock(scope: !713, file: !58, line: 335, column: 7)
!766 = !DILocation(line: 335, column: 23, scope: !765)
!767 = !DILocation(line: 335, column: 20, scope: !765)
!768 = !DILocation(line: 335, column: 7, scope: !713)
!769 = !DILocation(line: 337, column: 16, scope: !770)
!770 = distinct !DILexicalBlock(scope: !765, file: !58, line: 336, column: 3)
!771 = !DILocation(line: 337, column: 5, scope: !770)
!772 = !DILocation(line: 338, column: 3, scope: !770)
!773 = !DILocation(line: 341, column: 17, scope: !774)
!774 = distinct !DILexicalBlock(scope: !765, file: !58, line: 340, column: 3)
!775 = !DILocation(line: 341, column: 5, scope: !774)
!776 = !DILocation(line: 344, column: 10, scope: !713)
!777 = !DILocation(line: 344, column: 3, scope: !713)
!778 = !DILocation(line: 345, column: 1, scope: !713)
!779 = distinct !DISubprogram(name: "Demo1ValidateAccessKey", scope: !58, file: !58, line: 363, type: !780, scopeLine: 369, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !714)
!780 = !DISubroutineType(types: !781)
!781 = !{!130, !671, !98, !310, !53, !249}
!782 = !DILocalVariable(name: "This", arg: 1, scope: !779, file: !58, line: 364, type: !671)
!783 = !DILocation(line: 364, column: 35, scope: !779)
!784 = !DILocalVariable(name: "Controller", arg: 2, scope: !779, file: !58, line: 365, type: !98)
!785 = !DILocation(line: 365, column: 19, scope: !779)
!786 = !DILocalVariable(name: "AccessKeyPtr", arg: 3, scope: !779, file: !58, line: 366, type: !310)
!787 = !DILocation(line: 366, column: 26, scope: !779)
!788 = !DILocalVariable(name: "WriteAccess", arg: 4, scope: !779, file: !58, line: 367, type: !53)
!789 = !DILocation(line: 367, column: 16, scope: !779)
!790 = !DILocalVariable(name: "Result", arg: 5, scope: !779, file: !58, line: 368, type: !249)
!791 = !DILocation(line: 368, column: 21, scope: !779)
!792 = !DILocation(line: 371, column: 7, scope: !793)
!793 = distinct !DILexicalBlock(scope: !779, file: !58, line: 371, column: 7)
!794 = !DILocation(line: 371, column: 14, scope: !793)
!795 = !DILocation(line: 371, column: 7, scope: !779)
!796 = !DILocation(line: 373, column: 5, scope: !797)
!797 = distinct !DILexicalBlock(scope: !793, file: !58, line: 372, column: 3)
!798 = !DILocation(line: 375, column: 4, scope: !779)
!799 = !DILocation(line: 375, column: 11, scope: !779)
!800 = !DILocation(line: 377, column: 7, scope: !801)
!801 = distinct !DILexicalBlock(scope: !779, file: !58, line: 377, column: 7)
!802 = !DILocation(line: 377, column: 20, scope: !801)
!803 = !DILocation(line: 377, column: 7, scope: !779)
!804 = !DILocation(line: 379, column: 5, scope: !805)
!805 = distinct !DILexicalBlock(scope: !801, file: !58, line: 378, column: 3)
!806 = !DILocation(line: 384, column: 7, scope: !807)
!807 = distinct !DILexicalBlock(scope: !779, file: !58, line: 384, column: 7)
!808 = !DILocation(line: 384, column: 19, scope: !807)
!809 = !DILocation(line: 384, column: 23, scope: !807)
!810 = !DILocation(line: 384, column: 37, scope: !807)
!811 = !DILocation(line: 384, column: 57, scope: !807)
!812 = !DILocation(line: 384, column: 7, scope: !779)
!813 = !DILocation(line: 386, column: 5, scope: !814)
!814 = distinct !DILexicalBlock(scope: !807, file: !58, line: 385, column: 3)
!815 = !DILocation(line: 389, column: 26, scope: !779)
!816 = !DILocation(line: 389, column: 13, scope: !779)
!817 = !DILocation(line: 389, column: 4, scope: !779)
!818 = !DILocation(line: 389, column: 11, scope: !779)
!819 = !DILocation(line: 390, column: 3, scope: !779)
!820 = !DILocation(line: 391, column: 1, scope: !779)
!821 = distinct !DISubprogram(name: "IsKeychainEmpty", scope: !58, file: !58, line: 54, type: !822, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !714)
!822 = !DISubroutineType(types: !823)
!823 = !{!53}
!824 = !DILocation(line: 57, column: 10, scope: !821)
!825 = !DILocation(line: 57, column: 15, scope: !821)
!826 = !DILocation(line: 57, column: 3, scope: !821)
!827 = distinct !DISubprogram(name: "KeychainLength", scope: !58, file: !58, line: 65, type: !828, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !714)
!828 = !DISubroutineType(types: !829)
!829 = !{!70}
!830 = !DILocalVariable(name: "length", scope: !827, file: !58, line: 68, type: !70)
!831 = !DILocation(line: 68, column: 9, scope: !827)
!832 = !DILocalVariable(name: "current", scope: !827, file: !58, line: 69, type: !56)
!833 = !DILocation(line: 69, column: 9, scope: !827)
!834 = !DILocation(line: 70, column: 18, scope: !835)
!835 = distinct !DILexicalBlock(scope: !827, file: !58, line: 70, column: 3)
!836 = !DILocation(line: 70, column: 16, scope: !835)
!837 = !DILocation(line: 70, column: 8, scope: !835)
!838 = !DILocation(line: 70, column: 24, scope: !839)
!839 = distinct !DILexicalBlock(scope: !835, file: !58, line: 70, column: 3)
!840 = !DILocation(line: 70, column: 32, scope: !839)
!841 = !DILocation(line: 70, column: 3, scope: !835)
!842 = !DILocation(line: 72, column: 11, scope: !843)
!843 = distinct !DILexicalBlock(scope: !839, file: !58, line: 71, column: 3)
!844 = !DILocation(line: 73, column: 3, scope: !843)
!845 = !DILocation(line: 70, column: 51, scope: !839)
!846 = !DILocation(line: 70, column: 60, scope: !839)
!847 = !DILocation(line: 70, column: 49, scope: !839)
!848 = !DILocation(line: 70, column: 3, scope: !839)
!849 = distinct !{!849, !841, !850, !851}
!850 = !DILocation(line: 73, column: 3, scope: !835)
!851 = !{!"llvm.loop.mustprogress"}
!852 = !DILocation(line: 74, column: 10, scope: !827)
!853 = !DILocation(line: 74, column: 3, scope: !827)
!854 = distinct !DISubprogram(name: "InsertFirst", scope: !58, file: !58, line: 84, type: !855, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !714)
!855 = !DISubroutineType(types: !856)
!856 = !{null, !310}
!857 = !DILocalVariable(name: "access_key", arg: 1, scope: !854, file: !58, line: 85, type: !310)
!858 = !DILocation(line: 85, column: 23, scope: !854)
!859 = !DILocalVariable(name: "link", scope: !854, file: !58, line: 87, type: !56)
!860 = !DILocation(line: 87, column: 9, scope: !854)
!861 = !DILocation(line: 87, column: 16, scope: !854)
!862 = !DILocation(line: 88, column: 3, scope: !854)
!863 = !DILocation(line: 88, column: 3, scope: !864)
!864 = distinct !DILexicalBlock(scope: !865, file: !58, line: 88, column: 3)
!865 = distinct !DILexicalBlock(scope: !854, file: !58, line: 88, column: 3)
!866 = !DILocation(line: 88, column: 3, scope: !865)
!867 = !DILocation(line: 88, column: 3, scope: !868)
!868 = distinct !DILexicalBlock(scope: !869, file: !58, line: 88, column: 3)
!869 = distinct !DILexicalBlock(scope: !864, file: !58, line: 88, column: 3)
!870 = !DILocation(line: 88, column: 3, scope: !869)
!871 = !DILocation(line: 88, column: 3, scope: !872)
!872 = distinct !DILexicalBlock(scope: !868, file: !58, line: 88, column: 3)
!873 = !DILocation(line: 89, column: 12, scope: !854)
!874 = !DILocation(line: 89, column: 18, scope: !854)
!875 = !DILocation(line: 89, column: 11, scope: !854)
!876 = !DILocation(line: 89, column: 30, scope: !854)
!877 = !DILocation(line: 89, column: 3, scope: !854)
!878 = !DILocation(line: 91, column: 7, scope: !879)
!879 = distinct !DILexicalBlock(scope: !854, file: !58, line: 91, column: 7)
!880 = !DILocation(line: 91, column: 7, scope: !854)
!881 = !DILocation(line: 93, column: 12, scope: !882)
!882 = distinct !DILexicalBlock(scope: !879, file: !58, line: 92, column: 3)
!883 = !DILocation(line: 93, column: 10, scope: !882)
!884 = !DILocation(line: 94, column: 3, scope: !882)
!885 = !DILocation(line: 97, column: 18, scope: !886)
!886 = distinct !DILexicalBlock(scope: !879, file: !58, line: 96, column: 3)
!887 = !DILocation(line: 97, column: 5, scope: !886)
!888 = !DILocation(line: 97, column: 11, scope: !886)
!889 = !DILocation(line: 97, column: 16, scope: !886)
!890 = !DILocation(line: 99, column: 3, scope: !854)
!891 = !DILocation(line: 99, column: 9, scope: !854)
!892 = !DILocation(line: 99, column: 14, scope: !854)
!893 = !DILocation(line: 100, column: 16, scope: !854)
!894 = !DILocation(line: 100, column: 3, scope: !854)
!895 = !DILocation(line: 100, column: 9, scope: !854)
!896 = !DILocation(line: 100, column: 14, scope: !854)
!897 = !DILocation(line: 101, column: 10, scope: !854)
!898 = !DILocation(line: 101, column: 8, scope: !854)
!899 = !DILocation(line: 102, column: 1, scope: !854)
!900 = distinct !DISubprogram(name: "InsertLast", scope: !58, file: !58, line: 111, type: !855, scopeLine: 113, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !714)
!901 = !DILocalVariable(name: "access_key", arg: 1, scope: !900, file: !58, line: 112, type: !310)
!902 = !DILocation(line: 112, column: 23, scope: !900)
!903 = !DILocalVariable(name: "link", scope: !900, file: !58, line: 114, type: !56)
!904 = !DILocation(line: 114, column: 9, scope: !900)
!905 = !DILocation(line: 114, column: 16, scope: !900)
!906 = !DILocation(line: 115, column: 3, scope: !900)
!907 = !DILocation(line: 115, column: 3, scope: !908)
!908 = distinct !DILexicalBlock(scope: !909, file: !58, line: 115, column: 3)
!909 = distinct !DILexicalBlock(scope: !900, file: !58, line: 115, column: 3)
!910 = !DILocation(line: 115, column: 3, scope: !909)
!911 = !DILocation(line: 115, column: 3, scope: !912)
!912 = distinct !DILexicalBlock(scope: !913, file: !58, line: 115, column: 3)
!913 = distinct !DILexicalBlock(scope: !908, file: !58, line: 115, column: 3)
!914 = !DILocation(line: 115, column: 3, scope: !913)
!915 = !DILocation(line: 115, column: 3, scope: !916)
!916 = distinct !DILexicalBlock(scope: !912, file: !58, line: 115, column: 3)
!917 = !DILocation(line: 116, column: 12, scope: !900)
!918 = !DILocation(line: 116, column: 18, scope: !900)
!919 = !DILocation(line: 116, column: 11, scope: !900)
!920 = !DILocation(line: 116, column: 30, scope: !900)
!921 = !DILocation(line: 116, column: 3, scope: !900)
!922 = !DILocation(line: 118, column: 7, scope: !923)
!923 = distinct !DILexicalBlock(scope: !900, file: !58, line: 118, column: 7)
!924 = !DILocation(line: 118, column: 7, scope: !900)
!925 = !DILocation(line: 120, column: 12, scope: !926)
!926 = distinct !DILexicalBlock(scope: !923, file: !58, line: 119, column: 3)
!927 = !DILocation(line: 120, column: 10, scope: !926)
!928 = !DILocation(line: 121, column: 3, scope: !926)
!929 = !DILocation(line: 124, column: 18, scope: !930)
!930 = distinct !DILexicalBlock(scope: !923, file: !58, line: 123, column: 3)
!931 = !DILocation(line: 124, column: 5, scope: !930)
!932 = !DILocation(line: 124, column: 11, scope: !930)
!933 = !DILocation(line: 124, column: 16, scope: !930)
!934 = !DILocation(line: 125, column: 18, scope: !930)
!935 = !DILocation(line: 125, column: 5, scope: !930)
!936 = !DILocation(line: 125, column: 11, scope: !930)
!937 = !DILocation(line: 125, column: 16, scope: !930)
!938 = !DILocation(line: 127, column: 3, scope: !900)
!939 = !DILocation(line: 127, column: 9, scope: !900)
!940 = !DILocation(line: 127, column: 14, scope: !900)
!941 = !DILocation(line: 128, column: 10, scope: !900)
!942 = !DILocation(line: 128, column: 8, scope: !900)
!943 = !DILocation(line: 129, column: 1, scope: !900)
!944 = distinct !DISubprogram(name: "DoesKeyExist", scope: !58, file: !58, line: 139, type: !945, scopeLine: 141, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !714)
!945 = !DISubroutineType(types: !946)
!946 = !{!53, !310}
!947 = !DILocalVariable(name: "access_key", arg: 1, scope: !944, file: !58, line: 140, type: !310)
!948 = !DILocation(line: 140, column: 23, scope: !944)
!949 = !DILocalVariable(name: "current", scope: !944, file: !58, line: 143, type: !56)
!950 = !DILocation(line: 143, column: 9, scope: !944)
!951 = !DILocation(line: 144, column: 7, scope: !952)
!952 = distinct !DILexicalBlock(scope: !944, file: !58, line: 144, column: 7)
!953 = !DILocation(line: 144, column: 18, scope: !952)
!954 = !DILocation(line: 144, column: 7, scope: !944)
!955 = !DILocation(line: 146, column: 5, scope: !956)
!956 = distinct !DILexicalBlock(scope: !952, file: !58, line: 145, column: 3)
!957 = !DILocation(line: 148, column: 17, scope: !944)
!958 = !DILocation(line: 148, column: 9, scope: !944)
!959 = !DILocation(line: 148, column: 8, scope: !944)
!960 = !DILocation(line: 149, column: 22, scope: !944)
!961 = !DILocation(line: 149, column: 3, scope: !944)
!962 = !DILocation(line: 151, column: 18, scope: !963)
!963 = distinct !DILexicalBlock(scope: !944, file: !58, line: 151, column: 3)
!964 = !DILocation(line: 151, column: 16, scope: !963)
!965 = !DILocation(line: 151, column: 8, scope: !963)
!966 = !DILocation(line: 151, column: 24, scope: !967)
!967 = distinct !DILexicalBlock(scope: !963, file: !58, line: 151, column: 3)
!968 = !DILocation(line: 151, column: 32, scope: !967)
!969 = !DILocation(line: 151, column: 3, scope: !963)
!970 = !DILocation(line: 153, column: 9, scope: !971)
!971 = distinct !DILexicalBlock(scope: !972, file: !58, line: 153, column: 9)
!972 = distinct !DILexicalBlock(scope: !967, file: !58, line: 152, column: 3)
!973 = !DILocation(line: 153, column: 21, scope: !971)
!974 = !DILocation(line: 153, column: 44, scope: !971)
!975 = !DILocation(line: 153, column: 53, scope: !971)
!976 = !DILocation(line: 153, column: 64, scope: !971)
!977 = !DILocation(line: 153, column: 41, scope: !971)
!978 = !DILocation(line: 153, column: 9, scope: !972)
!979 = !DILocation(line: 155, column: 7, scope: !980)
!980 = distinct !DILexicalBlock(scope: !971, file: !58, line: 154, column: 5)
!981 = !DILocation(line: 157, column: 3, scope: !972)
!982 = !DILocation(line: 151, column: 51, scope: !967)
!983 = !DILocation(line: 151, column: 60, scope: !967)
!984 = !DILocation(line: 151, column: 49, scope: !967)
!985 = !DILocation(line: 151, column: 3, scope: !967)
!986 = distinct !{!986, !969, !987, !851}
!987 = !DILocation(line: 157, column: 3, scope: !963)
!988 = !DILocation(line: 159, column: 3, scope: !944)
!989 = !DILocation(line: 160, column: 1, scope: !944)
!990 = distinct !DISubprogram(name: "Demo1AccessKeyInit", scope: !58, file: !58, line: 193, type: !991, scopeLine: 196, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !714)
!991 = !DISubroutineType(types: !992)
!992 = !{!130, !98, !100}
!993 = !DILocalVariable(name: "ImageHandle", arg: 1, scope: !990, file: !58, line: 194, type: !98)
!994 = !DILocation(line: 194, column: 19, scope: !990)
!995 = !DILocalVariable(name: "SystemTable", arg: 2, scope: !990, file: !58, line: 195, type: !100)
!996 = !DILocation(line: 195, column: 26, scope: !990)
!997 = !DILocalVariable(name: "Status", scope: !990, file: !58, line: 197, type: !130)
!998 = !DILocation(line: 197, column: 14, scope: !990)
!999 = !DILocation(line: 203, column: 7, scope: !1000)
!1000 = distinct !DILexicalBlock(scope: !990, file: !58, line: 203, column: 7)
!1001 = !DILocation(line: 203, column: 25, scope: !1000)
!1002 = !DILocation(line: 203, column: 29, scope: !1000)
!1003 = !DILocation(line: 203, column: 41, scope: !1000)
!1004 = !DILocation(line: 203, column: 7, scope: !990)
!1005 = !DILocation(line: 207, column: 12, scope: !1006)
!1006 = distinct !DILexicalBlock(scope: !1000, file: !58, line: 204, column: 3)
!1007 = !DILocation(line: 207, column: 5, scope: !1006)
!1008 = !DILocation(line: 213, column: 15, scope: !990)
!1009 = !DILocation(line: 213, column: 13, scope: !990)
!1010 = !DILocation(line: 214, column: 76, scope: !990)
!1011 = !DILocation(line: 214, column: 12, scope: !990)
!1012 = !DILocation(line: 214, column: 10, scope: !990)
!1013 = !DILocation(line: 215, column: 7, scope: !1014)
!1014 = distinct !DILexicalBlock(scope: !990, file: !58, line: 215, column: 7)
!1015 = !DILocation(line: 215, column: 7, scope: !990)
!1016 = !DILocation(line: 219, column: 12, scope: !1017)
!1017 = distinct !DILexicalBlock(scope: !1014, file: !58, line: 216, column: 3)
!1018 = !DILocation(line: 219, column: 5, scope: !1017)
!1019 = !DILocation(line: 245, column: 7, scope: !1020)
!1020 = distinct !DILexicalBlock(scope: !990, file: !58, line: 245, column: 7)
!1021 = !DILocation(line: 245, column: 7, scope: !990)
!1022 = !DILocation(line: 249, column: 12, scope: !1023)
!1023 = distinct !DILexicalBlock(scope: !1020, file: !58, line: 246, column: 3)
!1024 = !DILocation(line: 249, column: 5, scope: !1023)
!1025 = !DILocation(line: 252, column: 3, scope: !990)
!1026 = !DILocation(line: 253, column: 1, scope: !990)
!1027 = distinct !DISubprogram(name: "Demo1AccessKeyUnload", scope: !58, file: !58, line: 265, type: !501, scopeLine: 267, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !714)
!1028 = !DILocalVariable(name: "ImageHandle", arg: 1, scope: !1027, file: !58, line: 266, type: !98)
!1029 = !DILocation(line: 266, column: 19, scope: !1027)
!1030 = !DILocalVariable(name: "Status", scope: !1027, file: !58, line: 268, type: !130)
!1031 = !DILocation(line: 268, column: 14, scope: !1027)
!1032 = !DILocation(line: 274, column: 12, scope: !1027)
!1033 = !DILocation(line: 274, column: 3, scope: !1027)
!1034 = !DILocation(line: 275, column: 10, scope: !1027)
!1035 = !DILocation(line: 275, column: 3, scope: !1027)
!1036 = distinct !DISubprogram(name: "Demo1BobDataProvider", scope: !3, file: !3, line: 335, type: !666, scopeLine: 341, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !714)
!1037 = !DILocalVariable(name: "This", arg: 1, scope: !1036, file: !3, line: 336, type: !668)
!1038 = !DILocation(line: 336, column: 30, scope: !1036)
!1039 = !DILocalVariable(name: "Address", arg: 2, scope: !1036, file: !3, line: 337, type: !52)
!1040 = !DILocation(line: 337, column: 30, scope: !1036)
!1041 = !DILocalVariable(name: "Dest", arg: 3, scope: !1036, file: !3, line: 338, type: !276)
!1042 = !DILocation(line: 338, column: 31, scope: !1036)
!1043 = !DILocalVariable(name: "Size", arg: 4, scope: !1036, file: !3, line: 339, type: !70)
!1044 = !DILocation(line: 339, column: 29, scope: !1036)
!1045 = !DILocalVariable(name: "IAddress", scope: !1036, file: !3, line: 344, type: !70)
!1046 = !DILocation(line: 344, column: 9, scope: !1036)
!1047 = !DILocation(line: 344, column: 27, scope: !1036)
!1048 = !DILocation(line: 344, column: 20, scope: !1036)
!1049 = !DILocation(line: 346, column: 44, scope: !1036)
!1050 = !DILocation(line: 346, column: 16, scope: !1036)
!1051 = !DILocation(line: 346, column: 14, scope: !1036)
!1052 = !DILocation(line: 347, column: 22, scope: !1036)
!1053 = !DILocation(line: 347, column: 3, scope: !1036)
!1054 = !DILocalVariable(name: "IBase", scope: !1036, file: !3, line: 349, type: !70)
!1055 = !DILocation(line: 349, column: 9, scope: !1036)
!1056 = !DILocation(line: 349, column: 24, scope: !1036)
!1057 = !DILocation(line: 349, column: 36, scope: !1036)
!1058 = !DILocation(line: 349, column: 17, scope: !1036)
!1059 = !DILocalVariable(name: "Storage", scope: !1036, file: !3, line: 350, type: !52)
!1060 = !DILocation(line: 350, column: 9, scope: !1036)
!1061 = !DILocation(line: 352, column: 7, scope: !1062)
!1062 = distinct !DILexicalBlock(scope: !1036, file: !3, line: 352, column: 7)
!1063 = !DILocation(line: 352, column: 12, scope: !1062)
!1064 = !DILocation(line: 352, column: 7, scope: !1036)
!1065 = !DILocation(line: 353, column: 5, scope: !1066)
!1066 = distinct !DILexicalBlock(scope: !1062, file: !3, line: 352, column: 22)
!1067 = !DILocation(line: 356, column: 8, scope: !1068)
!1068 = distinct !DILexicalBlock(scope: !1036, file: !3, line: 356, column: 8)
!1069 = !DILocation(line: 356, column: 19, scope: !1068)
!1070 = !DILocation(line: 356, column: 17, scope: !1068)
!1071 = !DILocation(line: 356, column: 8, scope: !1036)
!1072 = !DILocation(line: 357, column: 5, scope: !1073)
!1073 = distinct !DILexicalBlock(scope: !1068, file: !3, line: 356, column: 27)
!1074 = !DILocation(line: 361, column: 8, scope: !1075)
!1075 = distinct !DILexicalBlock(scope: !1036, file: !3, line: 361, column: 8)
!1076 = !DILocation(line: 361, column: 16, scope: !1075)
!1077 = !DILocation(line: 361, column: 28, scope: !1075)
!1078 = !DILocation(line: 361, column: 14, scope: !1075)
!1079 = !DILocation(line: 361, column: 40, scope: !1075)
!1080 = !DILocation(line: 361, column: 51, scope: !1075)
!1081 = !DILocation(line: 361, column: 49, scope: !1075)
!1082 = !DILocation(line: 361, column: 38, scope: !1075)
!1083 = !DILocation(line: 361, column: 8, scope: !1036)
!1084 = !DILocation(line: 362, column: 5, scope: !1085)
!1085 = distinct !DILexicalBlock(scope: !1075, file: !3, line: 361, column: 58)
!1086 = !DILocation(line: 365, column: 27, scope: !1036)
!1087 = !DILocation(line: 365, column: 20, scope: !1036)
!1088 = !DILocation(line: 365, column: 11, scope: !1036)
!1089 = !DILocation(line: 367, column: 8, scope: !1090)
!1090 = distinct !DILexicalBlock(scope: !1036, file: !3, line: 367, column: 8)
!1091 = !DILocation(line: 367, column: 16, scope: !1090)
!1092 = !DILocation(line: 367, column: 8, scope: !1036)
!1093 = !DILocation(line: 368, column: 5, scope: !1094)
!1094 = distinct !DILexicalBlock(scope: !1090, file: !3, line: 367, column: 26)
!1095 = !DILocation(line: 371, column: 11, scope: !1036)
!1096 = !DILocation(line: 371, column: 20, scope: !1036)
!1097 = !DILocation(line: 371, column: 29, scope: !1036)
!1098 = !DILocation(line: 371, column: 3, scope: !1036)
!1099 = !DILocation(line: 373, column: 11, scope: !1036)
!1100 = !DILocation(line: 373, column: 4, scope: !1036)
!1101 = !DILocation(line: 373, column: 9, scope: !1036)
!1102 = !DILocation(line: 374, column: 36, scope: !1036)
!1103 = !DILocation(line: 374, column: 35, scope: !1036)
!1104 = !DILocation(line: 374, column: 8, scope: !1036)
!1105 = !DILocation(line: 376, column: 3, scope: !1036)
!1106 = !DILocation(line: 377, column: 1, scope: !1036)
!1107 = distinct !DISubprogram(name: "Demo1BobInit", scope: !3, file: !3, line: 165, type: !991, scopeLine: 169, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !714)
!1108 = !DILocalVariable(name: "ImageHandle", arg: 1, scope: !1107, file: !3, line: 166, type: !98)
!1109 = !DILocation(line: 166, column: 24, scope: !1107)
!1110 = !DILocalVariable(name: "SystemTable", arg: 2, scope: !1107, file: !3, line: 167, type: !100)
!1111 = !DILocation(line: 167, column: 25, scope: !1107)
!1112 = !DILocalVariable(name: "Status", scope: !1107, file: !3, line: 170, type: !130)
!1113 = !DILocation(line: 170, column: 21, scope: !1107)
!1114 = !DILocalVariable(name: "Mode", scope: !1107, file: !3, line: 171, type: !70)
!1115 = !DILocation(line: 171, column: 21, scope: !1107)
!1116 = !DILocalVariable(name: "BufferSize", scope: !1107, file: !3, line: 172, type: !70)
!1117 = !DILocation(line: 172, column: 21, scope: !1107)
!1118 = !DILocation(line: 188, column: 7, scope: !1119)
!1119 = distinct !DILexicalBlock(scope: !1107, file: !3, line: 188, column: 7)
!1120 = !DILocation(line: 188, column: 26, scope: !1119)
!1121 = !DILocation(line: 188, column: 30, scope: !1119)
!1122 = !DILocation(line: 188, column: 48, scope: !1119)
!1123 = !DILocation(line: 188, column: 7, scope: !1107)
!1124 = !DILocation(line: 189, column: 5, scope: !1125)
!1125 = distinct !DILexicalBlock(scope: !1119, file: !3, line: 188, column: 58)
!1126 = !DILocation(line: 189, column: 5, scope: !1127)
!1127 = distinct !DILexicalBlock(scope: !1128, file: !3, line: 189, column: 5)
!1128 = distinct !DILexicalBlock(scope: !1125, file: !3, line: 189, column: 5)
!1129 = !DILocation(line: 189, column: 5, scope: !1128)
!1130 = !DILocation(line: 189, column: 5, scope: !1131)
!1131 = distinct !DILexicalBlock(scope: !1127, file: !3, line: 189, column: 5)
!1132 = !DILocation(line: 189, column: 5, scope: !1133)
!1133 = distinct !DILexicalBlock(scope: !1134, file: !3, line: 189, column: 5)
!1134 = distinct !DILexicalBlock(scope: !1131, file: !3, line: 189, column: 5)
!1135 = !DILocation(line: 189, column: 5, scope: !1134)
!1136 = !DILocation(line: 189, column: 5, scope: !1137)
!1137 = distinct !DILexicalBlock(scope: !1133, file: !3, line: 189, column: 5)
!1138 = !DILocation(line: 191, column: 12, scope: !1125)
!1139 = !DILocation(line: 191, column: 5, scope: !1125)
!1140 = !DILocation(line: 197, column: 12, scope: !1107)
!1141 = !DILocation(line: 197, column: 31, scope: !1107)
!1142 = !DILocation(line: 197, column: 10, scope: !1107)
!1143 = !DILocation(line: 198, column: 7, scope: !1144)
!1144 = distinct !DILexicalBlock(scope: !1107, file: !3, line: 198, column: 7)
!1145 = !DILocation(line: 198, column: 7, scope: !1107)
!1146 = !DILocation(line: 199, column: 5, scope: !1147)
!1147 = distinct !DILexicalBlock(scope: !1144, file: !3, line: 198, column: 27)
!1148 = !DILocation(line: 199, column: 5, scope: !1149)
!1149 = distinct !DILexicalBlock(scope: !1150, file: !3, line: 199, column: 5)
!1150 = distinct !DILexicalBlock(scope: !1147, file: !3, line: 199, column: 5)
!1151 = !DILocation(line: 199, column: 5, scope: !1150)
!1152 = !DILocation(line: 199, column: 5, scope: !1153)
!1153 = distinct !DILexicalBlock(scope: !1149, file: !3, line: 199, column: 5)
!1154 = !DILocation(line: 199, column: 5, scope: !1155)
!1155 = distinct !DILexicalBlock(scope: !1156, file: !3, line: 199, column: 5)
!1156 = distinct !DILexicalBlock(scope: !1153, file: !3, line: 199, column: 5)
!1157 = !DILocation(line: 199, column: 5, scope: !1156)
!1158 = !DILocation(line: 199, column: 5, scope: !1159)
!1159 = distinct !DILexicalBlock(scope: !1155, file: !3, line: 199, column: 5)
!1160 = !DILocation(line: 201, column: 12, scope: !1147)
!1161 = !DILocation(line: 201, column: 5, scope: !1147)
!1162 = !DILocation(line: 208, column: 7, scope: !1163)
!1163 = distinct !DILexicalBlock(scope: !1107, file: !3, line: 208, column: 7)
!1164 = !DILocation(line: 208, column: 26, scope: !1163)
!1165 = !DILocation(line: 208, column: 30, scope: !1163)
!1166 = !DILocation(line: 208, column: 44, scope: !1163)
!1167 = !DILocation(line: 208, column: 7, scope: !1107)
!1168 = !DILocation(line: 209, column: 5, scope: !1169)
!1169 = distinct !DILexicalBlock(scope: !1163, file: !3, line: 208, column: 54)
!1170 = !DILocation(line: 209, column: 5, scope: !1171)
!1171 = distinct !DILexicalBlock(scope: !1172, file: !3, line: 209, column: 5)
!1172 = distinct !DILexicalBlock(scope: !1169, file: !3, line: 209, column: 5)
!1173 = !DILocation(line: 209, column: 5, scope: !1172)
!1174 = !DILocation(line: 209, column: 5, scope: !1175)
!1175 = distinct !DILexicalBlock(scope: !1171, file: !3, line: 209, column: 5)
!1176 = !DILocation(line: 209, column: 5, scope: !1177)
!1177 = distinct !DILexicalBlock(scope: !1178, file: !3, line: 209, column: 5)
!1178 = distinct !DILexicalBlock(scope: !1175, file: !3, line: 209, column: 5)
!1179 = !DILocation(line: 209, column: 5, scope: !1178)
!1180 = !DILocation(line: 209, column: 5, scope: !1181)
!1181 = distinct !DILexicalBlock(scope: !1177, file: !3, line: 209, column: 5)
!1182 = !DILocation(line: 211, column: 12, scope: !1169)
!1183 = !DILocation(line: 211, column: 5, scope: !1169)
!1184 = !DILocation(line: 225, column: 7, scope: !1185)
!1185 = distinct !DILexicalBlock(scope: !1107, file: !3, line: 225, column: 7)
!1186 = !DILocation(line: 225, column: 7, scope: !1107)
!1187 = !DILocation(line: 226, column: 5, scope: !1188)
!1188 = distinct !DILexicalBlock(scope: !1185, file: !3, line: 225, column: 27)
!1189 = !DILocation(line: 226, column: 5, scope: !1190)
!1190 = distinct !DILexicalBlock(scope: !1191, file: !3, line: 226, column: 5)
!1191 = distinct !DILexicalBlock(scope: !1188, file: !3, line: 226, column: 5)
!1192 = !DILocation(line: 226, column: 5, scope: !1191)
!1193 = !DILocation(line: 226, column: 5, scope: !1194)
!1194 = distinct !DILexicalBlock(scope: !1190, file: !3, line: 226, column: 5)
!1195 = !DILocation(line: 226, column: 5, scope: !1196)
!1196 = distinct !DILexicalBlock(scope: !1197, file: !3, line: 226, column: 5)
!1197 = distinct !DILexicalBlock(scope: !1194, file: !3, line: 226, column: 5)
!1198 = !DILocation(line: 226, column: 5, scope: !1197)
!1199 = !DILocation(line: 226, column: 5, scope: !1200)
!1200 = distinct !DILexicalBlock(scope: !1196, file: !3, line: 226, column: 5)
!1201 = !DILocation(line: 228, column: 12, scope: !1188)
!1202 = !DILocation(line: 228, column: 5, scope: !1188)
!1203 = !DILocation(line: 234, column: 7, scope: !1204)
!1204 = distinct !DILexicalBlock(scope: !1107, file: !3, line: 234, column: 7)
!1205 = !DILocation(line: 234, column: 12, scope: !1204)
!1206 = !DILocation(line: 234, column: 7, scope: !1107)
!1207 = !DILocation(line: 235, column: 5, scope: !1208)
!1208 = distinct !DILexicalBlock(scope: !1204, file: !3, line: 234, column: 25)
!1209 = !DILocation(line: 235, column: 5, scope: !1210)
!1210 = distinct !DILexicalBlock(scope: !1211, file: !3, line: 235, column: 5)
!1211 = distinct !DILexicalBlock(scope: !1208, file: !3, line: 235, column: 5)
!1212 = !DILocation(line: 235, column: 5, scope: !1211)
!1213 = !DILocation(line: 235, column: 5, scope: !1214)
!1214 = distinct !DILexicalBlock(scope: !1210, file: !3, line: 235, column: 5)
!1215 = !DILocation(line: 235, column: 5, scope: !1216)
!1216 = distinct !DILexicalBlock(scope: !1217, file: !3, line: 235, column: 5)
!1217 = distinct !DILexicalBlock(scope: !1214, file: !3, line: 235, column: 5)
!1218 = !DILocation(line: 235, column: 5, scope: !1217)
!1219 = !DILocation(line: 235, column: 5, scope: !1220)
!1220 = distinct !DILexicalBlock(scope: !1216, file: !3, line: 235, column: 5)
!1221 = !DILocation(line: 237, column: 5, scope: !1208)
!1222 = !DILocation(line: 239, column: 7, scope: !1223)
!1223 = distinct !DILexicalBlock(scope: !1107, file: !3, line: 239, column: 7)
!1224 = !DILocation(line: 239, column: 12, scope: !1223)
!1225 = !DILocation(line: 239, column: 7, scope: !1107)
!1226 = !DILocation(line: 240, column: 5, scope: !1227)
!1227 = distinct !DILexicalBlock(scope: !1223, file: !3, line: 239, column: 26)
!1228 = !DILocation(line: 240, column: 5, scope: !1229)
!1229 = distinct !DILexicalBlock(scope: !1230, file: !3, line: 240, column: 5)
!1230 = distinct !DILexicalBlock(scope: !1227, file: !3, line: 240, column: 5)
!1231 = !DILocation(line: 240, column: 5, scope: !1230)
!1232 = !DILocation(line: 240, column: 5, scope: !1233)
!1233 = distinct !DILexicalBlock(scope: !1229, file: !3, line: 240, column: 5)
!1234 = !DILocation(line: 240, column: 5, scope: !1235)
!1235 = distinct !DILexicalBlock(scope: !1236, file: !3, line: 240, column: 5)
!1236 = distinct !DILexicalBlock(scope: !1233, file: !3, line: 240, column: 5)
!1237 = !DILocation(line: 240, column: 5, scope: !1236)
!1238 = !DILocation(line: 240, column: 5, scope: !1239)
!1239 = distinct !DILexicalBlock(scope: !1235, file: !3, line: 240, column: 5)
!1240 = !DILocation(line: 242, column: 5, scope: !1227)
!1241 = !DILocation(line: 256, column: 7, scope: !1242)
!1242 = distinct !DILexicalBlock(scope: !1107, file: !3, line: 256, column: 7)
!1243 = !DILocation(line: 256, column: 7, scope: !1107)
!1244 = !DILocation(line: 257, column: 5, scope: !1245)
!1245 = distinct !DILexicalBlock(scope: !1242, file: !3, line: 256, column: 27)
!1246 = !DILocation(line: 257, column: 5, scope: !1247)
!1247 = distinct !DILexicalBlock(scope: !1248, file: !3, line: 257, column: 5)
!1248 = distinct !DILexicalBlock(scope: !1245, file: !3, line: 257, column: 5)
!1249 = !DILocation(line: 257, column: 5, scope: !1248)
!1250 = !DILocation(line: 257, column: 5, scope: !1251)
!1251 = distinct !DILexicalBlock(scope: !1247, file: !3, line: 257, column: 5)
!1252 = !DILocation(line: 257, column: 5, scope: !1253)
!1253 = distinct !DILexicalBlock(scope: !1254, file: !3, line: 257, column: 5)
!1254 = distinct !DILexicalBlock(scope: !1251, file: !3, line: 257, column: 5)
!1255 = !DILocation(line: 257, column: 5, scope: !1254)
!1256 = !DILocation(line: 257, column: 5, scope: !1257)
!1257 = distinct !DILexicalBlock(scope: !1253, file: !3, line: 257, column: 5)
!1258 = !DILocation(line: 259, column: 12, scope: !1245)
!1259 = !DILocation(line: 259, column: 5, scope: !1245)
!1260 = !DILocation(line: 282, column: 7, scope: !1261)
!1261 = distinct !DILexicalBlock(scope: !1107, file: !3, line: 282, column: 7)
!1262 = !DILocation(line: 282, column: 7, scope: !1107)
!1263 = !DILocation(line: 283, column: 12, scope: !1264)
!1264 = distinct !DILexicalBlock(scope: !1261, file: !3, line: 282, column: 27)
!1265 = !DILocation(line: 283, column: 5, scope: !1264)
!1266 = !DILocation(line: 286, column: 3, scope: !1107)
!1267 = !DILocation(line: 287, column: 1, scope: !1107)
!1268 = distinct !DISubprogram(name: "Demo1BobUnload", scope: !3, file: !3, line: 299, type: !501, scopeLine: 302, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !714)
!1269 = !DILocalVariable(name: "ImageHandle", arg: 1, scope: !1268, file: !3, line: 300, type: !98)
!1270 = !DILocation(line: 300, column: 18, scope: !1268)
!1271 = !DILocalVariable(name: "Status", scope: !1268, file: !3, line: 303, type: !130)
!1272 = !DILocation(line: 303, column: 14, scope: !1268)
!1273 = !DILocation(line: 309, column: 10, scope: !1268)
!1274 = !DILocation(line: 309, column: 3, scope: !1268)
!1275 = distinct !DISubprogram(name: "CopyMem_c", scope: !3, file: !3, line: 312, type: !1276, scopeLine: 312, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !714)
!1276 = !DISubroutineType(types: !1277)
!1277 = !{null, !52, !605, !1278}
!1278 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !1279, line: 46, baseType: !1280)
!1279 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!1280 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!1281 = !DILocalVariable(name: "Destination", arg: 1, scope: !1275, file: !3, line: 312, type: !52)
!1282 = !DILocation(line: 312, column: 22, scope: !1275)
!1283 = !DILocalVariable(name: "Source", arg: 2, scope: !1275, file: !3, line: 312, type: !605)
!1284 = !DILocation(line: 312, column: 47, scope: !1275)
!1285 = !DILocalVariable(name: "Length", arg: 3, scope: !1275, file: !3, line: 312, type: !1278)
!1286 = !DILocation(line: 312, column: 62, scope: !1275)
!1287 = !DILocalVariable(name: "dest", scope: !1275, file: !3, line: 313, type: !83)
!1288 = !DILocation(line: 313, column: 14, scope: !1275)
!1289 = !DILocation(line: 313, column: 32, scope: !1275)
!1290 = !DILocalVariable(name: "src", scope: !1275, file: !3, line: 314, type: !88)
!1291 = !DILocation(line: 314, column: 20, scope: !1275)
!1292 = !DILocation(line: 314, column: 43, scope: !1275)
!1293 = !DILocalVariable(name: "i", scope: !1294, file: !3, line: 316, type: !1278)
!1294 = distinct !DILexicalBlock(scope: !1275, file: !3, line: 316, column: 5)
!1295 = !DILocation(line: 316, column: 17, scope: !1294)
!1296 = !DILocation(line: 316, column: 10, scope: !1294)
!1297 = !DILocation(line: 316, column: 24, scope: !1298)
!1298 = distinct !DILexicalBlock(scope: !1294, file: !3, line: 316, column: 5)
!1299 = !DILocation(line: 316, column: 28, scope: !1298)
!1300 = !DILocation(line: 316, column: 26, scope: !1298)
!1301 = !DILocation(line: 316, column: 5, scope: !1294)
!1302 = !DILocation(line: 317, column: 19, scope: !1303)
!1303 = distinct !DILexicalBlock(scope: !1298, file: !3, line: 316, column: 41)
!1304 = !DILocation(line: 317, column: 23, scope: !1303)
!1305 = !DILocation(line: 317, column: 9, scope: !1303)
!1306 = !DILocation(line: 317, column: 14, scope: !1303)
!1307 = !DILocation(line: 317, column: 17, scope: !1303)
!1308 = !DILocation(line: 318, column: 5, scope: !1303)
!1309 = !DILocation(line: 316, column: 37, scope: !1298)
!1310 = !DILocation(line: 316, column: 5, scope: !1298)
!1311 = distinct !{!1311, !1301, !1312, !851}
!1312 = !DILocation(line: 318, column: 5, scope: !1294)
!1313 = !DILocation(line: 319, column: 1, scope: !1275)
!1314 = distinct !DISubprogram(name: "read_bobkey_addr_through_Demo1BobDataProvider", scope: !3, file: !3, line: 379, type: !1315, scopeLine: 379, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !714)
!1315 = !DISubroutineType(types: !1316)
!1316 = !{null}
!1317 = !DILocalVariable(name: "size", scope: !1314, file: !3, line: 385, type: !70)
!1318 = !DILocation(line: 385, column: 11, scope: !1314)
!1319 = !DILocalVariable(name: "data", scope: !1314, file: !3, line: 388, type: !310)
!1320 = !DILocation(line: 388, column: 23, scope: !1314)
!1321 = !DILocalVariable(name: "searchValue", scope: !1314, file: !3, line: 390, type: !52)
!1322 = !DILocation(line: 390, column: 11, scope: !1314)
!1323 = !DILocation(line: 392, column: 35, scope: !1324)
!1324 = distinct !DILexicalBlock(scope: !1314, file: !3, line: 392, column: 8)
!1325 = !DILocation(line: 392, column: 48, scope: !1324)
!1326 = !DILocation(line: 392, column: 54, scope: !1324)
!1327 = !DILocation(line: 392, column: 8, scope: !1324)
!1328 = !DILocation(line: 392, column: 60, scope: !1324)
!1329 = !DILocation(line: 392, column: 8, scope: !1314)
!1330 = !DILocation(line: 393, column: 35, scope: !1331)
!1331 = distinct !DILexicalBlock(scope: !1324, file: !3, line: 392, column: 75)
!1332 = !DILocation(line: 393, column: 8, scope: !1331)
!1333 = !DILocation(line: 397, column: 5, scope: !1331)
!1334 = !DILocation(line: 398, column: 1, scope: !1314)
!1335 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 400, type: !1336, scopeLine: 401, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !714)
!1336 = !DISubroutineType(types: !1337)
!1337 = !{!196}
!1338 = !DILocalVariable(name: "AccessKeyPtr", scope: !1335, file: !3, line: 402, type: !310)
!1339 = !DILocation(line: 402, column: 23, scope: !1335)
!1340 = !DILocation(line: 403, column: 3, scope: !1335)
!1341 = !DILocation(line: 404, column: 16, scope: !1335)
!1342 = !DILocation(line: 406, column: 37, scope: !1335)
!1343 = !DILocation(line: 406, column: 3, scope: !1335)
!1344 = !DILocation(line: 406, column: 17, scope: !1335)
!1345 = !DILocation(line: 406, column: 36, scope: !1335)
!1346 = !DILocation(line: 407, column: 3, scope: !1335)
!1347 = !DILocation(line: 407, column: 17, scope: !1335)
!1348 = !DILocation(line: 407, column: 37, scope: !1335)
!1349 = !DILocation(line: 408, column: 36, scope: !1335)
!1350 = !DILocation(line: 408, column: 50, scope: !1335)
!1351 = !DILocation(line: 408, column: 3, scope: !1335)
!1352 = !DILocation(line: 409, column: 36, scope: !1335)
!1353 = !DILocation(line: 409, column: 50, scope: !1335)
!1354 = !DILocation(line: 409, column: 3, scope: !1335)
!1355 = !DILocation(line: 410, column: 46, scope: !1335)
!1356 = !DILocation(line: 410, column: 38, scope: !1335)
!1357 = !DILocation(line: 410, column: 3, scope: !1335)
!1358 = !DILocation(line: 411, column: 59, scope: !1335)
!1359 = !DILocation(line: 411, column: 51, scope: !1335)
!1360 = !DILocation(line: 411, column: 3, scope: !1335)
!1361 = !DILocation(line: 412, column: 3, scope: !1335)
!1362 = !DILocation(line: 413, column: 3, scope: !1335)
!1363 = distinct !DISubprogram(name: "memcpy", scope: !1364, file: !1364, line: 12, type: !1365, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !703, retainedNodes: !714)
!1364 = !DIFile(filename: "klee/runtime/Freestanding/memcpy.c", directory: "/home/hira/Research", checksumkind: CSK_MD5, checksum: "8fb9a7164e167db005d7d002570068bc")
!1365 = !DISubroutineType(types: !1366)
!1366 = !{!52, !52, !605, !1278}
!1367 = !DILocalVariable(name: "destaddr", arg: 1, scope: !1363, file: !1364, line: 12, type: !52)
!1368 = !DILocation(line: 12, column: 20, scope: !1363)
!1369 = !DILocalVariable(name: "srcaddr", arg: 2, scope: !1363, file: !1364, line: 12, type: !605)
!1370 = !DILocation(line: 12, column: 42, scope: !1363)
!1371 = !DILocalVariable(name: "len", arg: 3, scope: !1363, file: !1364, line: 12, type: !1278)
!1372 = !DILocation(line: 12, column: 58, scope: !1363)
!1373 = !DILocalVariable(name: "dest", scope: !1363, file: !1364, line: 13, type: !1374)
!1374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1375, size: 64)
!1375 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!1376 = !DILocation(line: 13, column: 9, scope: !1363)
!1377 = !DILocation(line: 13, column: 16, scope: !1363)
!1378 = !DILocalVariable(name: "src", scope: !1363, file: !1364, line: 14, type: !1379)
!1379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1380, size: 64)
!1380 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1375)
!1381 = !DILocation(line: 14, column: 15, scope: !1363)
!1382 = !DILocation(line: 14, column: 21, scope: !1363)
!1383 = !DILocation(line: 16, column: 3, scope: !1363)
!1384 = !DILocation(line: 16, column: 13, scope: !1363)
!1385 = !DILocation(line: 16, column: 16, scope: !1363)
!1386 = !DILocation(line: 17, column: 19, scope: !1363)
!1387 = !DILocation(line: 17, column: 15, scope: !1363)
!1388 = !DILocation(line: 17, column: 10, scope: !1363)
!1389 = !DILocation(line: 17, column: 13, scope: !1363)
!1390 = distinct !{!1390, !1383, !1386, !851}
!1391 = !DILocation(line: 18, column: 10, scope: !1363)
!1392 = !DILocation(line: 18, column: 3, scope: !1363)
