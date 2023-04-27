; ModuleID = 'Demo1_Bob.bc'
source_filename = "Demo1_Bob.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._Demo1_Bob_PROTOCOL = type { {}* }
%struct._Demo1_Access_Key_PROTOCOL = type { i64 (%struct._Demo1_Access_Key_PROTOCOL*, i8*, i8, %struct._DEMO1_ACCESS_KEY*)*, i64 (%struct._Demo1_Access_Key_PROTOCOL*, i8*, %struct._DEMO1_ACCESS_KEY*, i8, i8*)*, i8* }
%struct._DEMO1_ACCESS_KEY = type { [2 x i64] }
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
%struct.GUID = type { i32, i16, i16, [8 x i8] }
%struct.EFI_CAPSULE_HEADER = type { %struct.GUID, i32, i32, i32 }
%struct.EFI_BOOT_SERVICES = type { %struct.EFI_TABLE_HEADER, i64 (i64)*, void (i64)*, i64 (i32, i32, i64, i64*)*, i64 (i64, i64)*, i64 (i64*, %struct.EFI_MEMORY_DESCRIPTOR*, i64*, i64*, i32*)*, i64 (i32, i64, i8**)*, i64 (i8*)*, i64 (i32, i64, void (i8*, i8*)*, i8*, i8**)*, i64 (i8*, i32, i64)*, i64 (i64, i8**, i64*)*, i64 (i8*)*, i64 (i8*)*, i64 (i8*)*, i64 (i8**, %struct.GUID*, i32, i8*)*, i64 (i8*, %struct.GUID*, i8*, i8*)*, i64 (i8*, %struct.GUID*, i8*)*, i64 (i8*, %struct.GUID*, i8**)*, i8*, i64 (%struct.GUID*, i8*, i8**)*, i64 (i32, %struct.GUID*, i8*, i64*, i8**)*, i64 (%struct.GUID*, %struct.EFI_DEVICE_PATH_PROTOCOL**, i8**)*, i64 (%struct.GUID*, i8*)*, i64 (i8, i8*, %struct.EFI_DEVICE_PATH_PROTOCOL*, i8*, i64, i8**)*, i64 (i8*, i64*, i16**)*, i64 (i8*, i64, i64, i16*)*, i64 (i8*)*, i64 (i8*, i64)*, i64 (i64*)*, i64 (i64)*, i64 (i64, i64, i64, i16*)*, i64 (i8*, i8**, %struct.EFI_DEVICE_PATH_PROTOCOL*, i8)*, i64 (i8*, i8*, i8*)*, i64 (i8*, %struct.GUID*, i8**, i8*, i8*, i32)*, i64 (i8*, %struct.GUID*, i8*, i8*)*, i64 (i8*, %struct.GUID*, %struct.EFI_OPEN_PROTOCOL_INFORMATION_ENTRY**, i64*)*, i64 (i8*, %struct.GUID***, i64*)*, i64 (i32, %struct.GUID*, i8*, i64*, i8***)*, i64 (%struct.GUID*, i8*, i8**)*, i64 (i8**, ...)*, i64 (i8*, ...)*, i64 (i8*, i64, i32*)*, void (i8*, i8*, i64)*, void (i8*, i64, i8)*, i64 (i32, i64, void (i8*, i8*)*, i8*, %struct.GUID*, i8**)* }
%struct.EFI_OPEN_PROTOCOL_INFORMATION_ENTRY = type { i8*, i8*, i32, i32 }
%struct.EFI_CONFIGURATION_TABLE = type { %struct.GUID, i8* }
%struct.EFI_DEVICE_PATH_PROTOCOL = type { i8, i8, [2 x i8] }
%struct._Demo1_Alice_PROTOCOL = type { i64 (%struct._Demo1_Alice_PROTOCOL*, i8*, i64*)*, i8* }

@gDemo1_Bob_Protocol = hidden global { i64 (%struct._Demo1_Bob_PROTOCOL*, i8*, i8**, i64)* } { i64 (%struct._Demo1_Bob_PROTOCOL*, i8*, i8**, i64)* @Demo1BobDataProvider }, align 8, !dbg !0
@AccessKeyProtocol = hidden global %struct._Demo1_Access_Key_PROTOCOL* null, align 8, !dbg !67
@Demo1_Bob_PeriodicTimer = hidden global i8* null, align 8, !dbg !99
@DataToProvide = hidden global i64 0, align 8, !dbg !101
@gLoadImage = hidden global %struct.EFI_LOADED_IMAGE_PROTOCOL* null, align 8, !dbg !103
@gBS = external hidden global %struct.EFI_BOOT_SERVICES*, align 8
@gEfiLoadedImageProtocolGuid = external hidden global %struct.GUID, align 4
@gImageHandle = external hidden global i8*, align 8
@.str = private unnamed_addr constant [55 x i8] c"%a: Could not locate Access Key protocol, Status = %r\0A\00", align 1
@__FUNCTION__.Demo1BobInit = private unnamed_addr constant [13 x i8] c"Demo1BobInit\00", align 1
@bobKey = hidden global %struct._DEMO1_ACCESS_KEY zeroinitializer, align 8, !dbg !649
@.str.1 = private unnamed_addr constant [41 x i8] c"%a: Could not generate key, Status = %r\0A\00", align 1
@AliceProtocol = hidden global %struct._Demo1_Alice_PROTOCOL* null, align 8, !dbg !636
@.str.2 = private unnamed_addr constant [50 x i8] c"%a: Could not locate Alice protocol, Status = %r\0A\00", align 1
@.str.3 = private unnamed_addr constant [48 x i8] c"%a: variable '%s' could not be read - bailing!\0A\00", align 1
@.str.4 = private unnamed_addr constant [11 x i32] [i32 65, i32 108, i32 105, i32 99, i32 101, i32 95, i32 77, i32 111, i32 100, i32 101, i32 0], align 4
@.str.5 = private unnamed_addr constant [40 x i8] c"%a: Alice is already running, quitting\0A\00", align 1
@.str.6 = private unnamed_addr constant [43 x i8] c"%a: Alice returned invalid mode, quitting\0A\00", align 1
@.str.7 = private unnamed_addr constant [47 x i8] c"%a: Could not create event timer, Status = %r\0A\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"ImageHandle\00", align 1
@.str.9 = private unnamed_addr constant [12 x i8] c"SystemTable\00", align 1
@Demo1BobTimerHandler.change = internal global i64 0, align 8, !dbg !651

; Function Attrs: noinline nounwind optnone uwtable
define hidden i64 @Demo1BobDataProvider(%struct._Demo1_Bob_PROTOCOL* noundef %0, i8* noundef %1, i8** noundef %2, i64 noundef %3) #0 !dbg !673 {
  %5 = alloca i64, align 8
  %6 = alloca %struct._Demo1_Bob_PROTOCOL*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  store %struct._Demo1_Bob_PROTOCOL* %0, %struct._Demo1_Bob_PROTOCOL** %6, align 8
  call void @llvm.dbg.declare(metadata %struct._Demo1_Bob_PROTOCOL** %6, metadata !674, metadata !DIExpression()), !dbg !675
  store i8* %1, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !676, metadata !DIExpression()), !dbg !677
  store i8** %2, i8*** %8, align 8
  call void @llvm.dbg.declare(metadata i8*** %8, metadata !678, metadata !DIExpression()), !dbg !679
  store i64 %3, i64* %9, align 8
  call void @llvm.dbg.declare(metadata i64* %9, metadata !680, metadata !DIExpression()), !dbg !681
  call void @llvm.dbg.declare(metadata i64* %10, metadata !682, metadata !DIExpression()), !dbg !683
  %13 = load i8*, i8** %7, align 8, !dbg !684
  %14 = ptrtoint i8* %13 to i64, !dbg !685
  store i64 %14, i64* %10, align 8, !dbg !683
  call void @llvm.dbg.declare(metadata i64* %11, metadata !686, metadata !DIExpression()), !dbg !687
  %15 = load %struct.EFI_LOADED_IMAGE_PROTOCOL*, %struct.EFI_LOADED_IMAGE_PROTOCOL** @gLoadImage, align 8, !dbg !688
  %16 = getelementptr inbounds %struct.EFI_LOADED_IMAGE_PROTOCOL, %struct.EFI_LOADED_IMAGE_PROTOCOL* %15, i32 0, i32 8, !dbg !689
  %17 = load i8*, i8** %16, align 8, !dbg !689
  %18 = ptrtoint i8* %17 to i64, !dbg !690
  store i64 %18, i64* %11, align 8, !dbg !687
  call void @llvm.dbg.declare(metadata i8** %12, metadata !691, metadata !DIExpression()), !dbg !692
  store i8* null, i8** %12, align 8, !dbg !692
  %19 = load i8**, i8*** %8, align 8, !dbg !693
  %20 = icmp eq i8** %19, null, !dbg !695
  br i1 %20, label %21, label %22, !dbg !696

21:                                               ; preds = %4
  store i64 -9223372036854775806, i64* %5, align 8, !dbg !697
  br label %51, !dbg !697

22:                                               ; preds = %4
  %23 = load i64, i64* %10, align 8, !dbg !699
  %24 = load i64, i64* %11, align 8, !dbg !701
  %25 = icmp ult i64 %23, %24, !dbg !702
  br i1 %25, label %26, label %27, !dbg !703

26:                                               ; preds = %22
  store i64 -9223372036854775793, i64* %5, align 8, !dbg !704
  br label %51, !dbg !704

27:                                               ; preds = %22
  %28 = load i64, i64* %11, align 8, !dbg !706
  %29 = load %struct.EFI_LOADED_IMAGE_PROTOCOL*, %struct.EFI_LOADED_IMAGE_PROTOCOL** @gLoadImage, align 8, !dbg !708
  %30 = getelementptr inbounds %struct.EFI_LOADED_IMAGE_PROTOCOL, %struct.EFI_LOADED_IMAGE_PROTOCOL* %29, i32 0, i32 9, !dbg !709
  %31 = load i64, i64* %30, align 8, !dbg !709
  %32 = add i64 %28, %31, !dbg !710
  %33 = load i64, i64* %10, align 8, !dbg !711
  %34 = load i64, i64* %9, align 8, !dbg !712
  %35 = add i64 %33, %34, !dbg !713
  %36 = icmp ult i64 %32, %35, !dbg !714
  br i1 %36, label %37, label %38, !dbg !715

37:                                               ; preds = %27
  store i64 -9223372036854775793, i64* %5, align 8, !dbg !716
  br label %51, !dbg !716

38:                                               ; preds = %27
  %39 = load i64, i64* %9, align 8, !dbg !718
  %40 = call i8* @AllocatePool(i64 noundef %39), !dbg !719
  store i8* %40, i8** %12, align 8, !dbg !720
  %41 = load i8*, i8** %12, align 8, !dbg !721
  %42 = icmp eq i8* %41, null, !dbg !723
  br i1 %42, label %43, label %44, !dbg !724

43:                                               ; preds = %38
  store i64 -9223372036854775806, i64* %5, align 8, !dbg !725
  br label %51, !dbg !725

44:                                               ; preds = %38
  %45 = load i8*, i8** %12, align 8, !dbg !727
  %46 = load i8*, i8** %7, align 8, !dbg !728
  %47 = load i64, i64* %9, align 8, !dbg !729
  %48 = call i8* @CopyMem(i8* noundef %45, i8* noundef %46, i64 noundef %47), !dbg !730
  %49 = load i8*, i8** %12, align 8, !dbg !731
  %50 = load i8**, i8*** %8, align 8, !dbg !732
  store i8* %49, i8** %50, align 8, !dbg !733
  store i64 0, i64* %5, align 8, !dbg !734
  br label %51, !dbg !734

51:                                               ; preds = %44, %43, %37, %26, %21
  %52 = load i64, i64* %5, align 8, !dbg !735
  ret i64 %52, !dbg !735
}

; Function Attrs: noinline nounwind optnone uwtable
define hidden i64 @Demo1BobInit(i8* noundef %0, %struct.EFI_SYSTEM_TABLE* noundef %1) #0 !dbg !736 {
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.EFI_SYSTEM_TABLE*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !739, metadata !DIExpression()), !dbg !740
  store %struct.EFI_SYSTEM_TABLE* %1, %struct.EFI_SYSTEM_TABLE** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.EFI_SYSTEM_TABLE** %5, metadata !741, metadata !DIExpression()), !dbg !742
  call void @llvm.dbg.declare(metadata i64* %6, metadata !743, metadata !DIExpression()), !dbg !744
  call void @llvm.dbg.declare(metadata i64* %7, metadata !745, metadata !DIExpression()), !dbg !746
  call void @llvm.dbg.declare(metadata i64* %8, metadata !747, metadata !DIExpression()), !dbg !748
  store i64 8, i64* %8, align 8, !dbg !748
  %9 = load %struct.EFI_BOOT_SERVICES*, %struct.EFI_BOOT_SERVICES** @gBS, align 8, !dbg !749
  %10 = getelementptr inbounds %struct.EFI_BOOT_SERVICES, %struct.EFI_BOOT_SERVICES* %9, i32 0, i32 33, !dbg !750
  %11 = load i64 (i8*, %struct.GUID*, i8**, i8*, i8*, i32)*, i64 (i8*, %struct.GUID*, i8**, i8*, i8*, i32)** %10, align 8, !dbg !750
  %12 = load i8*, i8** %4, align 8, !dbg !751
  %13 = load i8*, i8** @gImageHandle, align 8, !dbg !752
  %14 = call i64 %11(i8* noundef %12, %struct.GUID* noundef @gEfiLoadedImageProtocolGuid, i8** noundef bitcast (%struct.EFI_LOADED_IMAGE_PROTOCOL** @gLoadImage to i8**), i8* noundef %13, i8* noundef null, i32 noundef 2), !dbg !749
  store i64 %14, i64* %6, align 8, !dbg !753
  %15 = load i64, i64* %6, align 8, !dbg !754
  %16 = icmp slt i64 %15, 0, !dbg !754
  br i1 %16, label %20, label %17, !dbg !756

17:                                               ; preds = %2
  %18 = load %struct._Demo1_Access_Key_PROTOCOL*, %struct._Demo1_Access_Key_PROTOCOL** @AccessKeyProtocol, align 8, !dbg !757
  %19 = icmp eq %struct._Demo1_Access_Key_PROTOCOL* %18, null, !dbg !758
  br i1 %19, label %20, label %35, !dbg !759

20:                                               ; preds = %17, %2
  br label %21, !dbg !760

21:                                               ; preds = %20
  %22 = call zeroext i8 @DebugPrintEnabled(), !dbg !762
  %23 = icmp ne i8 %22, 0, !dbg !762
  br i1 %23, label %24, label %32, !dbg !765

24:                                               ; preds = %21
  br label %25, !dbg !766

25:                                               ; preds = %24
  %26 = call zeroext i8 @DebugPrintLevelEnabled(i64 noundef 2147483648), !dbg !768
  %27 = icmp ne i8 %26, 0, !dbg !768
  br i1 %27, label %28, label %30, !dbg !771

28:                                               ; preds = %25
  %29 = load i64, i64* %6, align 8, !dbg !772
  call void (i64, i8*, ...) @DebugPrint(i64 noundef 2147483648, i8* noundef getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @__FUNCTION__.Demo1BobInit, i64 0, i64 0), i64 noundef %29), !dbg !772
  br label %30, !dbg !772

30:                                               ; preds = %28, %25
  br label %31, !dbg !771

31:                                               ; preds = %30
  br label %32, !dbg !766

32:                                               ; preds = %31, %21
  br label %33, !dbg !765

33:                                               ; preds = %32
  %34 = load i64, i64* %6, align 8, !dbg !774
  store i64 %34, i64* %3, align 8, !dbg !775
  br label %166, !dbg !775

35:                                               ; preds = %17
  %36 = load %struct._Demo1_Access_Key_PROTOCOL*, %struct._Demo1_Access_Key_PROTOCOL** @AccessKeyProtocol, align 8, !dbg !776
  %37 = getelementptr inbounds %struct._Demo1_Access_Key_PROTOCOL, %struct._Demo1_Access_Key_PROTOCOL* %36, i32 0, i32 0, !dbg !777
  %38 = load i64 (%struct._Demo1_Access_Key_PROTOCOL*, i8*, i8, %struct._DEMO1_ACCESS_KEY*)*, i64 (%struct._Demo1_Access_Key_PROTOCOL*, i8*, i8, %struct._DEMO1_ACCESS_KEY*)** %37, align 8, !dbg !777
  %39 = call i64 %38(%struct._Demo1_Access_Key_PROTOCOL* noundef null, i8* noundef null, i8 noundef zeroext 0, %struct._DEMO1_ACCESS_KEY* noundef @bobKey), !dbg !776
  store i64 %39, i64* %6, align 8, !dbg !778
  %40 = load i64, i64* %6, align 8, !dbg !779
  %41 = icmp slt i64 %40, 0, !dbg !779
  br i1 %41, label %42, label %57, !dbg !781

42:                                               ; preds = %35
  br label %43, !dbg !782

43:                                               ; preds = %42
  %44 = call zeroext i8 @DebugPrintEnabled(), !dbg !784
  %45 = icmp ne i8 %44, 0, !dbg !784
  br i1 %45, label %46, label %54, !dbg !787

46:                                               ; preds = %43
  br label %47, !dbg !788

47:                                               ; preds = %46
  %48 = call zeroext i8 @DebugPrintLevelEnabled(i64 noundef 2147483648), !dbg !790
  %49 = icmp ne i8 %48, 0, !dbg !790
  br i1 %49, label %50, label %52, !dbg !793

50:                                               ; preds = %47
  %51 = load i64, i64* %6, align 8, !dbg !794
  call void (i64, i8*, ...) @DebugPrint(i64 noundef 2147483648, i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @__FUNCTION__.Demo1BobInit, i64 0, i64 0), i64 noundef %51), !dbg !794
  br label %52, !dbg !794

52:                                               ; preds = %50, %47
  br label %53, !dbg !793

53:                                               ; preds = %52
  br label %54, !dbg !788

54:                                               ; preds = %53, %43
  br label %55, !dbg !787

55:                                               ; preds = %54
  %56 = load i64, i64* %6, align 8, !dbg !796
  store i64 %56, i64* %3, align 8, !dbg !797
  br label %166, !dbg !797

57:                                               ; preds = %35
  %58 = load i64, i64* %6, align 8, !dbg !798
  %59 = icmp slt i64 %58, 0, !dbg !798
  br i1 %59, label %63, label %60, !dbg !800

60:                                               ; preds = %57
  %61 = load %struct._Demo1_Alice_PROTOCOL*, %struct._Demo1_Alice_PROTOCOL** @AliceProtocol, align 8, !dbg !801
  %62 = icmp eq %struct._Demo1_Alice_PROTOCOL* %61, null, !dbg !802
  br i1 %62, label %63, label %78, !dbg !803

63:                                               ; preds = %60, %57
  br label %64, !dbg !804

64:                                               ; preds = %63
  %65 = call zeroext i8 @DebugPrintEnabled(), !dbg !806
  %66 = icmp ne i8 %65, 0, !dbg !806
  br i1 %66, label %67, label %75, !dbg !809

67:                                               ; preds = %64
  br label %68, !dbg !810

68:                                               ; preds = %67
  %69 = call zeroext i8 @DebugPrintLevelEnabled(i64 noundef 2147483648), !dbg !812
  %70 = icmp ne i8 %69, 0, !dbg !812
  br i1 %70, label %71, label %73, !dbg !815

71:                                               ; preds = %68
  %72 = load i64, i64* %6, align 8, !dbg !816
  call void (i64, i8*, ...) @DebugPrint(i64 noundef 2147483648, i8* noundef getelementptr inbounds ([50 x i8], [50 x i8]* @.str.2, i64 0, i64 0), i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @__FUNCTION__.Demo1BobInit, i64 0, i64 0), i64 noundef %72), !dbg !816
  br label %73, !dbg !816

73:                                               ; preds = %71, %68
  br label %74, !dbg !815

74:                                               ; preds = %73
  br label %75, !dbg !810

75:                                               ; preds = %74, %64
  br label %76, !dbg !809

76:                                               ; preds = %75
  %77 = load i64, i64* %6, align 8, !dbg !818
  store i64 %77, i64* %3, align 8, !dbg !819
  br label %166, !dbg !819

78:                                               ; preds = %60
  %79 = load i64, i64* %6, align 8, !dbg !820
  %80 = icmp slt i64 %79, 0, !dbg !820
  br i1 %80, label %81, label %95, !dbg !822

81:                                               ; preds = %78
  br label %82, !dbg !823

82:                                               ; preds = %81
  %83 = call zeroext i8 @DebugPrintEnabled(), !dbg !825
  %84 = icmp ne i8 %83, 0, !dbg !825
  br i1 %84, label %85, label %92, !dbg !828

85:                                               ; preds = %82
  br label %86, !dbg !829

86:                                               ; preds = %85
  %87 = call zeroext i8 @DebugPrintLevelEnabled(i64 noundef 2147483648), !dbg !831
  %88 = icmp ne i8 %87, 0, !dbg !831
  br i1 %88, label %89, label %90, !dbg !834

89:                                               ; preds = %86
  call void (i64, i8*, ...) @DebugPrint(i64 noundef 2147483648, i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @__FUNCTION__.Demo1BobInit, i64 0, i64 0), i32* noundef getelementptr inbounds ([11 x i32], [11 x i32]* @.str.4, i64 0, i64 0)), !dbg !835
  br label %90, !dbg !835

90:                                               ; preds = %89, %86
  br label %91, !dbg !834

91:                                               ; preds = %90
  br label %92, !dbg !829

92:                                               ; preds = %91, %82
  br label %93, !dbg !828

93:                                               ; preds = %92
  %94 = load i64, i64* %6, align 8, !dbg !837
  store i64 %94, i64* %3, align 8, !dbg !838
  br label %166, !dbg !838

95:                                               ; preds = %78
  %96 = load i64, i64* %7, align 8, !dbg !839
  %97 = icmp eq i64 %96, 2, !dbg !841
  br i1 %97, label %98, label %111, !dbg !842

98:                                               ; preds = %95
  br label %99, !dbg !843

99:                                               ; preds = %98
  %100 = call zeroext i8 @DebugPrintEnabled(), !dbg !845
  %101 = icmp ne i8 %100, 0, !dbg !845
  br i1 %101, label %102, label %109, !dbg !848

102:                                              ; preds = %99
  br label %103, !dbg !849

103:                                              ; preds = %102
  %104 = call zeroext i8 @DebugPrintLevelEnabled(i64 noundef 2147483648), !dbg !851
  %105 = icmp ne i8 %104, 0, !dbg !851
  br i1 %105, label %106, label %107, !dbg !854

106:                                              ; preds = %103
  call void (i64, i8*, ...) @DebugPrint(i64 noundef 2147483648, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.5, i64 0, i64 0), i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @__FUNCTION__.Demo1BobInit, i64 0, i64 0)), !dbg !855
  br label %107, !dbg !855

107:                                              ; preds = %106, %103
  br label %108, !dbg !854

108:                                              ; preds = %107
  br label %109, !dbg !849

109:                                              ; preds = %108, %99
  br label %110, !dbg !848

110:                                              ; preds = %109
  store i64 -9223372036854775788, i64* %3, align 8, !dbg !857
  br label %166, !dbg !857

111:                                              ; preds = %95
  %112 = load i64, i64* %7, align 8, !dbg !858
  %113 = icmp ne i64 %112, 1, !dbg !860
  br i1 %113, label %114, label %127, !dbg !861

114:                                              ; preds = %111
  br label %115, !dbg !862

115:                                              ; preds = %114
  %116 = call zeroext i8 @DebugPrintEnabled(), !dbg !864
  %117 = icmp ne i8 %116, 0, !dbg !864
  br i1 %117, label %118, label %125, !dbg !867

118:                                              ; preds = %115
  br label %119, !dbg !868

119:                                              ; preds = %118
  %120 = call zeroext i8 @DebugPrintLevelEnabled(i64 noundef 2147483648), !dbg !870
  %121 = icmp ne i8 %120, 0, !dbg !870
  br i1 %121, label %122, label %123, !dbg !873

122:                                              ; preds = %119
  call void (i64, i8*, ...) @DebugPrint(i64 noundef 2147483648, i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.6, i64 0, i64 0), i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @__FUNCTION__.Demo1BobInit, i64 0, i64 0)), !dbg !874
  br label %123, !dbg !874

123:                                              ; preds = %122, %119
  br label %124, !dbg !873

124:                                              ; preds = %123
  br label %125, !dbg !868

125:                                              ; preds = %124, %115
  br label %126, !dbg !867

126:                                              ; preds = %125
  store i64 -9223372036854775805, i64* %3, align 8, !dbg !876
  br label %166, !dbg !876

127:                                              ; preds = %111
  %128 = load %struct.EFI_BOOT_SERVICES*, %struct.EFI_BOOT_SERVICES** @gBS, align 8, !dbg !877
  %129 = getelementptr inbounds %struct.EFI_BOOT_SERVICES, %struct.EFI_BOOT_SERVICES* %128, i32 0, i32 8, !dbg !878
  %130 = load i64 (i32, i64, void (i8*, i8*)*, i8*, i8**)*, i64 (i32, i64, void (i8*, i8*)*, i8*, i8**)** %129, align 8, !dbg !878
  %131 = call i64 %130(i32 noundef -2147483136, i64 noundef 16, void (i8*, i8*)* noundef @Demo1BobTimerHandler, i8* noundef null, i8** noundef @Demo1_Bob_PeriodicTimer), !dbg !877
  store i64 %131, i64* %6, align 8, !dbg !879
  %132 = load i64, i64* %6, align 8, !dbg !880
  %133 = icmp slt i64 %132, 0, !dbg !880
  br i1 %133, label %134, label %149, !dbg !882

134:                                              ; preds = %127
  br label %135, !dbg !883

135:                                              ; preds = %134
  %136 = call zeroext i8 @DebugPrintEnabled(), !dbg !885
  %137 = icmp ne i8 %136, 0, !dbg !885
  br i1 %137, label %138, label %146, !dbg !888

138:                                              ; preds = %135
  br label %139, !dbg !889

139:                                              ; preds = %138
  %140 = call zeroext i8 @DebugPrintLevelEnabled(i64 noundef 2147483648), !dbg !891
  %141 = icmp ne i8 %140, 0, !dbg !891
  br i1 %141, label %142, label %144, !dbg !894

142:                                              ; preds = %139
  %143 = load i64, i64* %6, align 8, !dbg !895
  call void (i64, i8*, ...) @DebugPrint(i64 noundef 2147483648, i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @.str.7, i64 0, i64 0), i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @__FUNCTION__.Demo1BobInit, i64 0, i64 0), i64 noundef %143), !dbg !895
  br label %144, !dbg !895

144:                                              ; preds = %142, %139
  br label %145, !dbg !894

145:                                              ; preds = %144
  br label %146, !dbg !889

146:                                              ; preds = %145, %135
  br label %147, !dbg !888

147:                                              ; preds = %146
  %148 = load i64, i64* %6, align 8, !dbg !897
  store i64 %148, i64* %3, align 8, !dbg !898
  br label %166, !dbg !898

149:                                              ; preds = %127
  %150 = load %struct.EFI_BOOT_SERVICES*, %struct.EFI_BOOT_SERVICES** @gBS, align 8, !dbg !899
  %151 = getelementptr inbounds %struct.EFI_BOOT_SERVICES, %struct.EFI_BOOT_SERVICES* %150, i32 0, i32 9, !dbg !900
  %152 = load i64 (i8*, i32, i64)*, i64 (i8*, i32, i64)** %151, align 8, !dbg !900
  %153 = load i8*, i8** @Demo1_Bob_PeriodicTimer, align 8, !dbg !901
  %154 = call i64 @MultU64x32(i64 noundef 1, i32 noundef 10000000), !dbg !902
  %155 = call i64 %152(i8* noundef %153, i32 noundef 1, i64 noundef %154), !dbg !899
  store i64 %155, i64* %6, align 8, !dbg !903
  %156 = load i64, i64* %6, align 8, !dbg !904
  %157 = icmp slt i64 %156, 0, !dbg !904
  br i1 %157, label %158, label %160, !dbg !906

158:                                              ; preds = %149
  %159 = load i64, i64* %6, align 8, !dbg !907
  store i64 %159, i64* %3, align 8, !dbg !909
  br label %166, !dbg !909

160:                                              ; preds = %149
  %161 = load i64, i64* %6, align 8, !dbg !910
  %162 = icmp slt i64 %161, 0, !dbg !910
  br i1 %162, label %163, label %165, !dbg !912

163:                                              ; preds = %160
  %164 = load i64, i64* %6, align 8, !dbg !913
  store i64 %164, i64* %3, align 8, !dbg !915
  br label %166, !dbg !915

165:                                              ; preds = %160
  store i64 0, i64* %3, align 8, !dbg !916
  br label %166, !dbg !916

166:                                              ; preds = %165, %163, %158, %147, %126, %110, %93, %76, %55, %33
  %167 = load i64, i64* %3, align 8, !dbg !917
  ret i64 %167, !dbg !917
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare hidden zeroext i8 @DebugPrintEnabled() #2

declare hidden zeroext i8 @DebugPrintLevelEnabled(i64 noundef) #2

declare hidden void @DebugPrint(i64 noundef, i8* noundef, ...) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal void @Demo1BobTimerHandler(i8* noundef %0, i8* noundef %1) #0 !dbg !653 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !918, metadata !DIExpression()), !dbg !919
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !920, metadata !DIExpression()), !dbg !921
  call void @llvm.dbg.declare(metadata i64* %5, metadata !922, metadata !DIExpression()), !dbg !923
  store i64 0, i64* %5, align 8, !dbg !923
  call void @llvm.dbg.declare(metadata i64* %6, metadata !924, metadata !DIExpression()), !dbg !925
  store i64 0, i64* %6, align 8, !dbg !925
  call void @llvm.dbg.declare(metadata i64* %7, metadata !926, metadata !DIExpression()), !dbg !927
  store i64 8, i64* %7, align 8, !dbg !927
  %8 = load i64, i64* %6, align 8, !dbg !928
  %9 = icmp eq i64 %8, 2, !dbg !930
  br i1 %9, label %10, label %17, !dbg !931

10:                                               ; preds = %2
  %11 = load %struct._Demo1_Alice_PROTOCOL*, %struct._Demo1_Alice_PROTOCOL** @AliceProtocol, align 8, !dbg !932
  %12 = getelementptr inbounds %struct._Demo1_Alice_PROTOCOL, %struct._Demo1_Alice_PROTOCOL* %11, i32 0, i32 0, !dbg !934
  %13 = load i64 (%struct._Demo1_Alice_PROTOCOL*, i8*, i64*)*, i64 (%struct._Demo1_Alice_PROTOCOL*, i8*, i64*)** %12, align 8, !dbg !934
  %14 = load %struct._Demo1_Alice_PROTOCOL*, %struct._Demo1_Alice_PROTOCOL** @AliceProtocol, align 8, !dbg !935
  %15 = call i64 %13(%struct._Demo1_Alice_PROTOCOL* noundef %14, i8* noundef null, i64* noundef %5), !dbg !932
  %16 = bitcast i64* %5 to i8*, !dbg !936
  call void @Demo1BobRunModeAction(i8* noundef null, i8* noundef %16), !dbg !937
  br label %41, !dbg !938

17:                                               ; preds = %2
  %18 = load i64, i64* %6, align 8, !dbg !939
  %19 = icmp ne i64 %18, 1, !dbg !941
  br i1 %19, label %20, label %21, !dbg !942

20:                                               ; preds = %17
  br label %41, !dbg !943

21:                                               ; preds = %17
  %22 = load %struct._Demo1_Alice_PROTOCOL*, %struct._Demo1_Alice_PROTOCOL** @AliceProtocol, align 8, !dbg !945
  %23 = getelementptr inbounds %struct._Demo1_Alice_PROTOCOL, %struct._Demo1_Alice_PROTOCOL* %22, i32 0, i32 0, !dbg !947
  %24 = load i64 (%struct._Demo1_Alice_PROTOCOL*, i8*, i64*)*, i64 (%struct._Demo1_Alice_PROTOCOL*, i8*, i64*)** %23, align 8, !dbg !947
  %25 = load %struct._Demo1_Alice_PROTOCOL*, %struct._Demo1_Alice_PROTOCOL** @AliceProtocol, align 8, !dbg !948
  %26 = call i64 %24(%struct._Demo1_Alice_PROTOCOL* noundef %25, i8* noundef null, i64* noundef %5), !dbg !945
  %27 = load i64, i64* %5, align 8, !dbg !949
  %28 = inttoptr i64 %27 to i8*, !dbg !950
  %29 = bitcast i8* %28 to i8* (...)*, !dbg !950
  call void @Demo1BobInitModeAction(i8* noundef null, i8* (...)* noundef %29), !dbg !951
  %30 = load i64, i64* @Demo1BobTimerHandler.change, align 8, !dbg !952
  %31 = icmp eq i64 %30, 0, !dbg !954
  br i1 %31, label %32, label %40, !dbg !955

32:                                               ; preds = %21
  store i64 1, i64* @Demo1BobTimerHandler.change, align 8, !dbg !956
  %33 = load %struct.EFI_BOOT_SERVICES*, %struct.EFI_BOOT_SERVICES** @gBS, align 8, !dbg !958
  %34 = getelementptr inbounds %struct.EFI_BOOT_SERVICES, %struct.EFI_BOOT_SERVICES* %33, i32 0, i32 11, !dbg !959
  %35 = load i64 (i8*)*, i64 (i8*)** %34, align 8, !dbg !959
  %36 = load %struct._Demo1_Alice_PROTOCOL*, %struct._Demo1_Alice_PROTOCOL** @AliceProtocol, align 8, !dbg !960
  %37 = getelementptr inbounds %struct._Demo1_Alice_PROTOCOL, %struct._Demo1_Alice_PROTOCOL* %36, i32 0, i32 1, !dbg !961
  %38 = load i8*, i8** %37, align 8, !dbg !961
  %39 = call i64 %35(i8* noundef %38), !dbg !958
  br label %40, !dbg !962

40:                                               ; preds = %32, %21
  br label %41

41:                                               ; preds = %10, %20, %40
  ret void, !dbg !963
}

declare hidden i64 @MultU64x32(i64 noundef, i32 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define hidden i64 @Demo1BobUnload(i8* noundef %0) #0 !dbg !964 {
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !965, metadata !DIExpression()), !dbg !966
  call void @llvm.dbg.declare(metadata i64* %3, metadata !967, metadata !DIExpression()), !dbg !968
  store i64 0, i64* %3, align 8, !dbg !968
  %4 = load i64, i64* %3, align 8, !dbg !969
  ret i64 %4, !dbg !970
}

declare hidden i8* @AllocatePool(i64 noundef) #2

declare hidden i8* @CopyMem(i8* noundef, i8* noundef, i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define hidden i32 @main() #0 !dbg !971 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = alloca %struct.EFI_SYSTEM_TABLE*, align 8
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i8** %2, metadata !974, metadata !DIExpression()), !dbg !975
  call void @llvm.dbg.declare(metadata %struct.EFI_SYSTEM_TABLE** %3, metadata !976, metadata !DIExpression()), !dbg !977
  %4 = call i32 (i8**, i64, i8*, ...) bitcast (i32 (...)* @klee_make_symbolic to i32 (i8**, i64, i8*, ...)*)(i8** noundef %2, i64 noundef 8, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i64 0, i64 0)), !dbg !978
  %5 = call i32 (%struct.EFI_SYSTEM_TABLE**, i64, i8*, ...) bitcast (i32 (...)* @klee_make_symbolic to i32 (%struct.EFI_SYSTEM_TABLE**, i64, i8*, ...)*)(%struct.EFI_SYSTEM_TABLE** noundef %3, i64 noundef 8, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i64 0, i64 0)), !dbg !979
  %6 = load i8*, i8** %2, align 8, !dbg !980
  %7 = load %struct.EFI_SYSTEM_TABLE*, %struct.EFI_SYSTEM_TABLE** %3, align 8, !dbg !981
  %8 = call i64 @Demo1BobInit(i8* noundef %6, %struct.EFI_SYSTEM_TABLE* noundef %7), !dbg !982
  ret i32 0, !dbg !983
}

declare hidden i32 @klee_make_symbolic(...) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal void @Demo1BobRunModeAction(i8* noundef %0, i8* noundef %1) #0 !dbg !984 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !987, metadata !DIExpression()), !dbg !988
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !989, metadata !DIExpression()), !dbg !990
  %5 = load i8*, i8** %4, align 8, !dbg !991
  %6 = bitcast i8* %5 to i64*, !dbg !992
  %7 = load i64, i64* %6, align 8, !dbg !993
  store i64 %7, i64* @DataToProvide, align 8, !dbg !994
  ret void, !dbg !995
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @Demo1BobInitModeAction(i8* noundef %0, i8* (...)* noundef %1) #0 !dbg !996 {
  %3 = alloca i8*, align 8
  %4 = alloca i8* (...)*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !1002, metadata !DIExpression()), !dbg !1003
  store i8* (...)* %1, i8* (...)** %4, align 8
  call void @llvm.dbg.declare(metadata i8* (...)** %4, metadata !1004, metadata !DIExpression()), !dbg !1005
  %5 = load i8* (...)*, i8* (...)** %4, align 8, !dbg !1006
  %6 = call i8* (...) %5(), !dbg !1007
  ret void, !dbg !1008
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!665, !666, !667, !668, !669, !670, !671}
!llvm.ident = !{!672}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "gDemo1_Bob_Protocol", scope: !2, file: !3, line: 19, type: !655, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !51, globals: !66, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "Demo1_Bob.c", directory: "/home/hira/Research/HARDEN/repositories/HARDEN_demo1/edk2/EmulatorPkg/Demo1_Bob", checksumkind: CSK_MD5, checksum: "16ca4e77d8d996c67fd7eef88bee1f60")
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
!51 = !{!52, !53, !54, !58, !63, !61, !60, !65}
!52 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !53, size: 64)
!53 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!54 = !DIDerivedType(tag: DW_TAG_typedef, name: "INTN", file: !55, line: 234, baseType: !56)
!55 = !DIFile(filename: "./Uefi/ProcessorBind.h", directory: "/home/hira/Research/HARDEN/repositories/HARDEN_demo1/edk2/EmulatorPkg/Demo1_Bob", checksumkind: CSK_MD5, checksum: "5a809246aab9e079e163aa7a7e32c6ad")
!56 = !DIDerivedType(tag: DW_TAG_typedef, name: "INT64", file: !55, line: 184, baseType: !57)
!57 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!58 = !DIDerivedType(tag: DW_TAG_typedef, name: "RETURN_STATUS", file: !59, line: 928, baseType: !60)
!59 = !DIFile(filename: "./Uefi/Base.h", directory: "/home/hira/Research/HARDEN/repositories/HARDEN_demo1/edk2/EmulatorPkg/Demo1_Bob", checksumkind: CSK_MD5, checksum: "a7888fa8d0b7ac6c240c247fa85b46e3")
!60 = !DIDerivedType(tag: DW_TAG_typedef, name: "UINTN", file: !55, line: 229, baseType: !61)
!61 = !DIDerivedType(tag: DW_TAG_typedef, name: "UINT64", file: !55, line: 180, baseType: !62)
!62 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!63 = !DIDerivedType(tag: DW_TAG_typedef, name: "BOOLEAN", file: !55, line: 210, baseType: !64)
!64 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!65 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !60, size: 64)
!66 = !{!0, !67, !99, !101, !103, !636, !649, !651}
!67 = !DIGlobalVariableExpression(var: !68, expr: !DIExpression())
!68 = distinct !DIGlobalVariable(name: "AccessKeyProtocol", scope: !2, file: !3, line: 24, type: !69, isLocal: false, isDefinition: true)
!69 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !70, size: 64)
!70 = !DIDerivedType(tag: DW_TAG_typedef, name: "Demo1_Access_Key_PROTOCOL", file: !71, line: 36, baseType: !72)
!71 = !DIFile(filename: "./../Demo1_Access_Key/Demo1_Access_Key.h", directory: "/home/hira/Research/HARDEN/repositories/HARDEN_demo1/edk2/EmulatorPkg/Demo1_Bob", checksumkind: CSK_MD5, checksum: "a8de816a79e3f7789966f8ae3cf8152e")
!72 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Demo1_Access_Key_PROTOCOL", file: !71, line: 72, size: 192, elements: !73)
!73 = !{!74, !91, !97}
!74 = !DIDerivedType(tag: DW_TAG_member, name: "Demo1GenerateAccessKey", scope: !72, file: !71, line: 73, baseType: !75, size: 64)
!75 = !DIDerivedType(tag: DW_TAG_typedef, name: "DRVR_FUNC_CB_TYPE1", file: !71, line: 51, baseType: !76)
!76 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !77, size: 64)
!77 = !DISubroutineType(types: !78)
!78 = !{!79, !69, !81, !63, !82}
!79 = !DIDerivedType(tag: DW_TAG_typedef, name: "EFI_STATUS", file: !80, line: 31, baseType: !58)
!80 = !DIFile(filename: "./Uefi/UefiBaseType.h", directory: "/home/hira/Research/HARDEN/repositories/HARDEN_demo1/edk2/EmulatorPkg/Demo1_Bob", checksumkind: CSK_MD5, checksum: "6b596f77ac7c48826eabe4053c19a600")
!81 = !DIDerivedType(tag: DW_TAG_typedef, name: "EFI_HANDLE", file: !80, line: 35, baseType: !53)
!82 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !83, size: 64)
!83 = !DIDerivedType(tag: DW_TAG_typedef, name: "DEMO1_ACCESS_KEY", file: !80, line: 23, baseType: !84)
!84 = !DIDerivedType(tag: DW_TAG_typedef, name: "_DEMO1_ACCESS_KEY", file: !59, line: 225, baseType: !85)
!85 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !59, line: 223, size: 128, elements: !86)
!86 = !{!87}
!87 = !DIDerivedType(tag: DW_TAG_member, name: "access_key_store", scope: !85, file: !59, line: 224, baseType: !88, size: 128)
!88 = !DICompositeType(tag: DW_TAG_array_type, baseType: !60, size: 128, elements: !89)
!89 = !{!90}
!90 = !DISubrange(count: 2)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "Demo1ValidateAccessKey", scope: !72, file: !71, line: 74, baseType: !92, size: 64, offset: 64)
!92 = !DIDerivedType(tag: DW_TAG_typedef, name: "DRVR_FUNC_CB_TYPE2", file: !71, line: 61, baseType: !93)
!93 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !94, size: 64)
!94 = !DISubroutineType(types: !95)
!95 = !{!79, !69, !81, !82, !63, !96}
!96 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !63, size: 64)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "Demo1_Ready_To_Lock_Event", scope: !72, file: !71, line: 75, baseType: !98, size: 64, offset: 128)
!98 = !DIDerivedType(tag: DW_TAG_typedef, name: "EFI_EVENT", file: !80, line: 39, baseType: !53)
!99 = !DIGlobalVariableExpression(var: !100, expr: !DIExpression())
!100 = distinct !DIGlobalVariable(name: "Demo1_Bob_PeriodicTimer", scope: !2, file: !3, line: 29, type: !98, isLocal: false, isDefinition: true)
!101 = !DIGlobalVariableExpression(var: !102, expr: !DIExpression())
!102 = distinct !DIGlobalVariable(name: "DataToProvide", scope: !2, file: !3, line: 30, type: !60, isLocal: false, isDefinition: true)
!103 = !DIGlobalVariableExpression(var: !104, expr: !DIExpression())
!104 = distinct !DIGlobalVariable(name: "gLoadImage", scope: !2, file: !3, line: 31, type: !105, isLocal: false, isDefinition: true)
!105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !106, size: 64)
!106 = !DIDerivedType(tag: DW_TAG_typedef, name: "EFI_LOADED_IMAGE_PROTOCOL", file: !107, line: 72, baseType: !108)
!107 = !DIFile(filename: "./Protocol/LoadedImage.h", directory: "/home/hira/Research/HARDEN/repositories/HARDEN_demo1/edk2/EmulatorPkg/Demo1_Bob", checksumkind: CSK_MD5, checksum: "0bfc90f5c05009801c3af3d54bff9caa")
!108 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !107, line: 43, size: 768, elements: !109)
!109 = !{!110, !112, !113, !626, !627, !628, !629, !630, !631, !632, !633, !634, !635}
!110 = !DIDerivedType(tag: DW_TAG_member, name: "Revision", scope: !108, file: !107, line: 44, baseType: !111, size: 32)
!111 = !DIDerivedType(tag: DW_TAG_typedef, name: "UINT32", file: !55, line: 188, baseType: !7)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "ParentHandle", scope: !108, file: !107, line: 46, baseType: !81, size: 64, offset: 64)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "SystemTable", scope: !108, file: !107, line: 48, baseType: !114, size: 64, offset: 128)
!114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !115, size: 64)
!115 = !DIDerivedType(tag: DW_TAG_typedef, name: "EFI_SYSTEM_TABLE", file: !14, line: 2115, baseType: !116)
!116 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !14, line: 2054, size: 960, elements: !117)
!117 = !{!118, !127, !131, !132, !133, !157, !158, !213, !214, !215, !362, !618, !619}
!118 = !DIDerivedType(tag: DW_TAG_member, name: "Hdr", scope: !116, file: !14, line: 2058, baseType: !119, size: 192)
!119 = !DIDerivedType(tag: DW_TAG_typedef, name: "EFI_TABLE_HEADER", file: !6, line: 172, baseType: !120)
!120 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !6, line: 145, size: 192, elements: !121)
!121 = !{!122, !123, !124, !125, !126}
!122 = !DIDerivedType(tag: DW_TAG_member, name: "Signature", scope: !120, file: !6, line: 151, baseType: !61, size: 64)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "Revision", scope: !120, file: !6, line: 158, baseType: !111, size: 32, offset: 64)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "HeaderSize", scope: !120, file: !6, line: 162, baseType: !111, size: 32, offset: 96)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "CRC32", scope: !120, file: !6, line: 167, baseType: !111, size: 32, offset: 128)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "Reserved", scope: !120, file: !6, line: 171, baseType: !111, size: 32, offset: 160)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "FirmwareVendor", scope: !116, file: !14, line: 2063, baseType: !128, size: 64, offset: 192)
!128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !129, size: 64)
!129 = !DIDerivedType(tag: DW_TAG_typedef, name: "CHAR16", file: !55, line: 201, baseType: !130)
!130 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "FirmwareRevision", scope: !116, file: !14, line: 2068, baseType: !111, size: 32, offset: 256)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "ConsoleInHandle", scope: !116, file: !14, line: 2073, baseType: !81, size: 64, offset: 320)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "ConIn", scope: !116, file: !14, line: 2078, baseType: !134, size: 64, offset: 384)
!134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !135, size: 64)
!135 = !DIDerivedType(tag: DW_TAG_typedef, name: "EFI_SIMPLE_TEXT_INPUT_PROTOCOL", file: !136, line: 20, baseType: !137)
!136 = !DIFile(filename: "./Uefi/Protocol/SimpleTextIn.h", directory: "/home/hira/Research/HARDEN/repositories/HARDEN_demo1/edk2/EmulatorPkg/Demo1_Bob", checksumkind: CSK_MD5, checksum: "239cf4f3dddb25a8596c70fa738413fd")
!137 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_EFI_SIMPLE_TEXT_INPUT_PROTOCOL", file: !136, line: 116, size: 192, elements: !138)
!138 = !{!139, !144, !156}
!139 = !DIDerivedType(tag: DW_TAG_member, name: "Reset", scope: !137, file: !136, line: 117, baseType: !140, size: 64)
!140 = !DIDerivedType(tag: DW_TAG_typedef, name: "EFI_INPUT_RESET", file: !136, line: 86, baseType: !141)
!141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !142, size: 64)
!142 = !DISubroutineType(types: !143)
!143 = !{!79, !134, !63}
!144 = !DIDerivedType(tag: DW_TAG_member, name: "ReadKeyStroke", scope: !137, file: !136, line: 118, baseType: !145, size: 64, offset: 64)
!145 = !DIDerivedType(tag: DW_TAG_typedef, name: "EFI_INPUT_READ_KEY", file: !136, line: 107, baseType: !146)
!146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !147, size: 64)
!147 = !DISubroutineType(types: !148)
!148 = !{!79, !134, !149}
!149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !150, size: 64)
!150 = !DIDerivedType(tag: DW_TAG_typedef, name: "EFI_INPUT_KEY", file: !136, line: 38, baseType: !151)
!151 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !136, line: 35, size: 32, elements: !152)
!152 = !{!153, !155}
!153 = !DIDerivedType(tag: DW_TAG_member, name: "ScanCode", scope: !151, file: !136, line: 36, baseType: !154, size: 16)
!154 = !DIDerivedType(tag: DW_TAG_typedef, name: "UINT16", file: !55, line: 196, baseType: !130)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "UnicodeChar", scope: !151, file: !136, line: 37, baseType: !129, size: 16, offset: 16)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "WaitForKey", scope: !137, file: !136, line: 122, baseType: !98, size: 64, offset: 128)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "ConsoleOutHandle", scope: !116, file: !14, line: 2082, baseType: !81, size: 64, offset: 448)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "ConOut", scope: !116, file: !14, line: 2087, baseType: !159, size: 64, offset: 512)
!159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !160, size: 64)
!160 = !DIDerivedType(tag: DW_TAG_typedef, name: "EFI_SIMPLE_TEXT_OUTPUT_PROTOCOL", file: !161, line: 27, baseType: !162)
!161 = !DIFile(filename: "./Uefi/Protocol/SimpleTextOut.h", directory: "/home/hira/Research/HARDEN/repositories/HARDEN_demo1/edk2/EmulatorPkg/Demo1_Bob", checksumkind: CSK_MD5, checksum: "685bec042927ad46d31bf42ae7f6ddcd")
!162 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_EFI_SIMPLE_TEXT_OUTPUT_PROTOCOL", file: !161, line: 387, size: 640, elements: !163)
!163 = !{!164, !169, !174, !176, !181, !186, !188, !193, !198, !200}
!164 = !DIDerivedType(tag: DW_TAG_member, name: "Reset", scope: !162, file: !161, line: 388, baseType: !165, size: 64)
!165 = !DIDerivedType(tag: DW_TAG_typedef, name: "EFI_TEXT_RESET", file: !161, line: 167, baseType: !166)
!166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !167, size: 64)
!167 = !DISubroutineType(types: !168)
!168 = !{!79, !159, !63}
!169 = !DIDerivedType(tag: DW_TAG_member, name: "OutputString", scope: !162, file: !161, line: 390, baseType: !170, size: 64, offset: 64)
!170 = !DIDerivedType(tag: DW_TAG_typedef, name: "EFI_TEXT_STRING", file: !161, line: 192, baseType: !171)
!171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !172, size: 64)
!172 = !DISubroutineType(types: !173)
!173 = !{!79, !159, !128}
!174 = !DIDerivedType(tag: DW_TAG_member, name: "TestString", scope: !162, file: !161, line: 391, baseType: !175, size: 64, offset: 128)
!175 = !DIDerivedType(tag: DW_TAG_typedef, name: "EFI_TEXT_TEST_STRING", file: !161, line: 213, baseType: !171)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "QueryMode", scope: !162, file: !161, line: 393, baseType: !177, size: 64, offset: 192)
!177 = !DIDerivedType(tag: DW_TAG_typedef, name: "EFI_TEXT_QUERY_MODE", file: !161, line: 236, baseType: !178)
!178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !179, size: 64)
!179 = !DISubroutineType(types: !180)
!180 = !{!79, !159, !60, !65, !65}
!181 = !DIDerivedType(tag: DW_TAG_member, name: "SetMode", scope: !162, file: !161, line: 394, baseType: !182, size: 64, offset: 256)
!182 = !DIDerivedType(tag: DW_TAG_typedef, name: "EFI_TEXT_SET_MODE", file: !161, line: 256, baseType: !183)
!183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !184, size: 64)
!184 = !DISubroutineType(types: !185)
!185 = !{!79, !159, !60}
!186 = !DIDerivedType(tag: DW_TAG_member, name: "SetAttribute", scope: !162, file: !161, line: 395, baseType: !187, size: 64, offset: 320)
!187 = !DIDerivedType(tag: DW_TAG_typedef, name: "EFI_TEXT_SET_ATTRIBUTE", file: !161, line: 277, baseType: !183)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "ClearScreen", scope: !162, file: !161, line: 397, baseType: !189, size: 64, offset: 384)
!189 = !DIDerivedType(tag: DW_TAG_typedef, name: "EFI_TEXT_CLEAR_SCREEN", file: !161, line: 295, baseType: !190)
!190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !191, size: 64)
!191 = !DISubroutineType(types: !192)
!192 = !{!79, !159}
!193 = !DIDerivedType(tag: DW_TAG_member, name: "SetCursorPosition", scope: !162, file: !161, line: 398, baseType: !194, size: 64, offset: 448)
!194 = !DIDerivedType(tag: DW_TAG_typedef, name: "EFI_TEXT_SET_CURSOR_POSITION", file: !161, line: 318, baseType: !195)
!195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !196, size: 64)
!196 = !DISubroutineType(types: !197)
!197 = !{!79, !159, !60, !60}
!198 = !DIDerivedType(tag: DW_TAG_member, name: "EnableCursor", scope: !162, file: !161, line: 399, baseType: !199, size: 64, offset: 512)
!199 = !DIDerivedType(tag: DW_TAG_typedef, name: "EFI_TEXT_ENABLE_CURSOR", file: !161, line: 340, baseType: !166)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "Mode", scope: !162, file: !161, line: 404, baseType: !201, size: 64, offset: 576)
!201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !202, size: 64)
!202 = !DIDerivedType(tag: DW_TAG_typedef, name: "EFI_SIMPLE_TEXT_OUTPUT_MODE", file: !161, line: 379, baseType: !203)
!203 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !161, line: 349, size: 192, elements: !204)
!204 = !{!205, !208, !209, !210, !211, !212}
!205 = !DIDerivedType(tag: DW_TAG_member, name: "MaxMode", scope: !203, file: !161, line: 353, baseType: !206, size: 32)
!206 = !DIDerivedType(tag: DW_TAG_typedef, name: "INT32", file: !55, line: 192, baseType: !207)
!207 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "Mode", scope: !203, file: !161, line: 362, baseType: !206, size: 32, offset: 32)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "Attribute", scope: !203, file: !161, line: 366, baseType: !206, size: 32, offset: 64)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "CursorColumn", scope: !203, file: !161, line: 370, baseType: !206, size: 32, offset: 96)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "CursorRow", scope: !203, file: !161, line: 374, baseType: !206, size: 32, offset: 128)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "CursorVisible", scope: !203, file: !161, line: 378, baseType: !63, size: 8, offset: 160)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "StandardErrorHandle", scope: !116, file: !14, line: 2092, baseType: !81, size: 64, offset: 576)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "StdErr", scope: !116, file: !14, line: 2097, baseType: !159, size: 64, offset: 640)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "RuntimeServices", scope: !116, file: !14, line: 2101, baseType: !216, size: 64, offset: 704)
!216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !217, size: 64)
!217 = !DIDerivedType(tag: DW_TAG_typedef, name: "EFI_RUNTIME_SERVICES", file: !14, line: 1933, baseType: !218)
!218 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !14, line: 1886, size: 1216, elements: !219)
!219 = !{!220, !221, !251, !256, !261, !266, !282, !287, !305, !310, !315, !320, !325, !330, !336, !350, !357}
!220 = !DIDerivedType(tag: DW_TAG_member, name: "Hdr", scope: !218, file: !14, line: 1890, baseType: !119, size: 192)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "GetTime", scope: !218, file: !14, line: 1895, baseType: !222, size: 64, offset: 192)
!222 = !DIDerivedType(tag: DW_TAG_typedef, name: "EFI_GET_TIME", file: !14, line: 874, baseType: !223)
!223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !224, size: 64)
!224 = !DISubroutineType(types: !225)
!225 = !{!79, !226, !244}
!226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !227, size: 64)
!227 = !DIDerivedType(tag: DW_TAG_typedef, name: "EFI_TIME", file: !80, line: 82, baseType: !228)
!228 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !80, line: 70, size: 128, elements: !229)
!229 = !{!230, !231, !233, !234, !235, !236, !237, !238, !239, !242, !243}
!230 = !DIDerivedType(tag: DW_TAG_member, name: "Year", scope: !228, file: !80, line: 71, baseType: !154, size: 16)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "Month", scope: !228, file: !80, line: 72, baseType: !232, size: 8, offset: 16)
!232 = !DIDerivedType(tag: DW_TAG_typedef, name: "UINT8", file: !55, line: 214, baseType: !64)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "Day", scope: !228, file: !80, line: 73, baseType: !232, size: 8, offset: 24)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "Hour", scope: !228, file: !80, line: 74, baseType: !232, size: 8, offset: 32)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "Minute", scope: !228, file: !80, line: 75, baseType: !232, size: 8, offset: 40)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "Second", scope: !228, file: !80, line: 76, baseType: !232, size: 8, offset: 48)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "Pad1", scope: !228, file: !80, line: 77, baseType: !232, size: 8, offset: 56)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "Nanosecond", scope: !228, file: !80, line: 78, baseType: !111, size: 32, offset: 64)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "TimeZone", scope: !228, file: !80, line: 79, baseType: !240, size: 16, offset: 96)
!240 = !DIDerivedType(tag: DW_TAG_typedef, name: "INT16", file: !55, line: 205, baseType: !241)
!241 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "Daylight", scope: !228, file: !80, line: 80, baseType: !232, size: 8, offset: 112)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "Pad2", scope: !228, file: !80, line: 81, baseType: !232, size: 8, offset: 120)
!244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !245, size: 64)
!245 = !DIDerivedType(tag: DW_TAG_typedef, name: "EFI_TIME_CAPABILITIES", file: !14, line: 857, baseType: !246)
!246 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !14, line: 834, size: 96, elements: !247)
!247 = !{!248, !249, !250}
!248 = !DIDerivedType(tag: DW_TAG_member, name: "Resolution", scope: !246, file: !14, line: 841, baseType: !111, size: 32)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "Accuracy", scope: !246, file: !14, line: 848, baseType: !111, size: 32, offset: 32)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "SetsToZero", scope: !246, file: !14, line: 856, baseType: !63, size: 8, offset: 64)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "SetTime", scope: !218, file: !14, line: 1896, baseType: !252, size: 64, offset: 256)
!252 = !DIDerivedType(tag: DW_TAG_typedef, name: "EFI_SET_TIME", file: !14, line: 891, baseType: !253)
!253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !254, size: 64)
!254 = !DISubroutineType(types: !255)
!255 = !{!79, !226}
!256 = !DIDerivedType(tag: DW_TAG_member, name: "GetWakeupTime", scope: !218, file: !14, line: 1897, baseType: !257, size: 64, offset: 320)
!257 = !DIDerivedType(tag: DW_TAG_typedef, name: "EFI_GET_WAKEUP_TIME", file: !14, line: 912, baseType: !258)
!258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !259, size: 64)
!259 = !DISubroutineType(types: !260)
!260 = !{!79, !96, !96, !226}
!261 = !DIDerivedType(tag: DW_TAG_member, name: "SetWakeupTime", scope: !218, file: !14, line: 1898, baseType: !262, size: 64, offset: 384)
!262 = !DIDerivedType(tag: DW_TAG_typedef, name: "EFI_SET_WAKEUP_TIME", file: !14, line: 934, baseType: !263)
!263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !264, size: 64)
!264 = !DISubroutineType(types: !265)
!265 = !{!79, !63, !226}
!266 = !DIDerivedType(tag: DW_TAG_member, name: "SetVirtualAddressMap", scope: !218, file: !14, line: 1903, baseType: !267, size: 64, offset: 448)
!267 = !DIDerivedType(tag: DW_TAG_typedef, name: "EFI_SET_VIRTUAL_ADDRESS_MAP", file: !14, line: 311, baseType: !268)
!268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !269, size: 64)
!269 = !DISubroutineType(types: !270)
!270 = !{!79, !60, !60, !111, !271}
!271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !272, size: 64)
!272 = !DIDerivedType(tag: DW_TAG_typedef, name: "EFI_MEMORY_DESCRIPTOR", file: !14, line: 159, baseType: !273)
!273 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !14, line: 127, size: 320, elements: !274)
!274 = !{!275, !276, !278, !280, !281}
!275 = !DIDerivedType(tag: DW_TAG_member, name: "Type", scope: !273, file: !14, line: 133, baseType: !111, size: 32)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "PhysicalStart", scope: !273, file: !14, line: 139, baseType: !277, size: 64, offset: 64)
!277 = !DIDerivedType(tag: DW_TAG_typedef, name: "EFI_PHYSICAL_ADDRESS", file: !80, line: 52, baseType: !61)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "VirtualStart", scope: !273, file: !14, line: 145, baseType: !279, size: 64, offset: 128)
!279 = !DIDerivedType(tag: DW_TAG_typedef, name: "EFI_VIRTUAL_ADDRESS", file: !80, line: 57, baseType: !61)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "NumberOfPages", scope: !273, file: !14, line: 152, baseType: !61, size: 64, offset: 192)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "Attribute", scope: !273, file: !14, line: 158, baseType: !61, size: 64, offset: 256)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "ConvertPointer", scope: !218, file: !14, line: 1904, baseType: !283, size: 64, offset: 512)
!283 = !DIDerivedType(tag: DW_TAG_typedef, name: "EFI_CONVERT_POINTER", file: !14, line: 406, baseType: !284)
!284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !285, size: 64)
!285 = !DISubroutineType(types: !286)
!286 = !{!79, !60, !52}
!287 = !DIDerivedType(tag: DW_TAG_member, name: "GetVariable", scope: !218, file: !14, line: 1909, baseType: !288, size: 64, offset: 576)
!288 = !DIDerivedType(tag: DW_TAG_typedef, name: "EFI_GET_VARIABLE", file: !14, line: 670, baseType: !289)
!289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !290, size: 64)
!290 = !DISubroutineType(types: !291)
!291 = !{!79, !128, !292, !304, !65, !53}
!292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !293, size: 64)
!293 = !DIDerivedType(tag: DW_TAG_typedef, name: "EFI_GUID", file: !80, line: 27, baseType: !294)
!294 = !DIDerivedType(tag: DW_TAG_typedef, name: "GUID", file: !59, line: 218, baseType: !295)
!295 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !59, line: 213, size: 128, elements: !296)
!296 = !{!297, !298, !299, !300}
!297 = !DIDerivedType(tag: DW_TAG_member, name: "Data1", scope: !295, file: !59, line: 214, baseType: !111, size: 32)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "Data2", scope: !295, file: !59, line: 215, baseType: !154, size: 16, offset: 32)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "Data3", scope: !295, file: !59, line: 216, baseType: !154, size: 16, offset: 48)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "Data4", scope: !295, file: !59, line: 217, baseType: !301, size: 64, offset: 64)
!301 = !DICompositeType(tag: DW_TAG_array_type, baseType: !232, size: 64, elements: !302)
!302 = !{!303}
!303 = !DISubrange(count: 8)
!304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !111, size: 64)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "GetNextVariableName", scope: !218, file: !14, line: 1910, baseType: !306, size: 64, offset: 640)
!306 = !DIDerivedType(tag: DW_TAG_typedef, name: "EFI_GET_NEXT_VARIABLE_NAME", file: !14, line: 739, baseType: !307)
!307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !308, size: 64)
!308 = !DISubroutineType(types: !309)
!309 = !{!79, !65, !128, !292}
!310 = !DIDerivedType(tag: DW_TAG_member, name: "SetVariable", scope: !218, file: !14, line: 1911, baseType: !311, size: 64, offset: 704)
!311 = !DIDerivedType(tag: DW_TAG_typedef, name: "EFI_SET_VARIABLE", file: !14, line: 781, baseType: !312)
!312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !313, size: 64)
!313 = !DISubroutineType(types: !314)
!314 = !{!79, !128, !292, !111, !60, !53}
!315 = !DIDerivedType(tag: DW_TAG_member, name: "GetAccessVariable", scope: !218, file: !14, line: 1914, baseType: !316, size: 64, offset: 768)
!316 = !DIDerivedType(tag: DW_TAG_typedef, name: "EFI_GET_ACCESS_VARIABLE", file: !14, line: 703, baseType: !317)
!317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !318, size: 64)
!318 = !DISubroutineType(types: !319)
!319 = !{!79, !128, !292, !304, !82, !65, !53}
!320 = !DIDerivedType(tag: DW_TAG_member, name: "SetAccessVariable", scope: !218, file: !14, line: 1915, baseType: !321, size: 64, offset: 832)
!321 = !DIDerivedType(tag: DW_TAG_typedef, name: "EFI_SET_ACCESS_VARIABLE", file: !14, line: 822, baseType: !322)
!322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !323, size: 64)
!323 = !DISubroutineType(types: !324)
!324 = !{!79, !128, !292, !111, !82, !60, !53}
!325 = !DIDerivedType(tag: DW_TAG_member, name: "GetNextHighMonotonicCount", scope: !218, file: !14, line: 1920, baseType: !326, size: 64, offset: 896)
!326 = !DIDerivedType(tag: DW_TAG_typedef, name: "EFI_GET_NEXT_HIGH_MONO_COUNT", file: !14, line: 1155, baseType: !327)
!327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !328, size: 64)
!328 = !DISubroutineType(types: !329)
!329 = !{!79, !304}
!330 = !DIDerivedType(tag: DW_TAG_member, name: "ResetSystem", scope: !218, file: !14, line: 1921, baseType: !331, size: 64, offset: 960)
!331 = !DIDerivedType(tag: DW_TAG_typedef, name: "EFI_RESET_SYSTEM", file: !14, line: 1120, baseType: !332)
!332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !333, size: 64)
!333 = !DISubroutineType(types: !334)
!334 = !{null, !335, !79, !60, !53}
!335 = !DIDerivedType(tag: DW_TAG_typedef, name: "EFI_RESET_TYPE", file: !6, line: 140, baseType: !5)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "UpdateCapsule", scope: !218, file: !14, line: 1926, baseType: !337, size: 64, offset: 1024)
!337 = !DIDerivedType(tag: DW_TAG_typedef, name: "EFI_UPDATE_CAPSULE", file: !14, line: 1781, baseType: !338)
!338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !339, size: 64)
!339 = !DISubroutineType(types: !340)
!340 = !{!79, !341, !60, !277}
!341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !342, size: 64)
!342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !343, size: 64)
!343 = !DIDerivedType(tag: DW_TAG_typedef, name: "EFI_CAPSULE_HEADER", file: !14, line: 1727, baseType: !344)
!344 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !14, line: 1706, size: 224, elements: !345)
!345 = !{!346, !347, !348, !349}
!346 = !DIDerivedType(tag: DW_TAG_member, name: "CapsuleGuid", scope: !344, file: !14, line: 1710, baseType: !293, size: 128)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "HeaderSize", scope: !344, file: !14, line: 1716, baseType: !111, size: 32, offset: 128)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "Flags", scope: !344, file: !14, line: 1722, baseType: !111, size: 32, offset: 160)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "CapsuleImageSize", scope: !344, file: !14, line: 1726, baseType: !111, size: 32, offset: 192)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "QueryCapsuleCapabilities", scope: !218, file: !14, line: 1927, baseType: !351, size: 64, offset: 1088)
!351 = !DIDerivedType(tag: DW_TAG_typedef, name: "EFI_QUERY_CAPSULE_CAPABILITIES", file: !14, line: 1812, baseType: !352)
!352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !353, size: 64)
!353 = !DISubroutineType(types: !354)
!354 = !{!79, !341, !60, !355, !356}
!355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !61, size: 64)
!356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !335, size: 64)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "QueryVariableInfo", scope: !218, file: !14, line: 1932, baseType: !358, size: 64, offset: 1152)
!358 = !DIDerivedType(tag: DW_TAG_typedef, name: "EFI_QUERY_VARIABLE_INFO", file: !14, line: 1843, baseType: !359)
!359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !360, size: 64)
!360 = !DISubroutineType(types: !361)
!361 = !{!79, !111, !355, !355, !355}
!362 = !DIDerivedType(tag: DW_TAG_member, name: "BootServices", scope: !116, file: !14, line: 2105, baseType: !363, size: 64, offset: 768)
!363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !364, size: 64)
!364 = !DIDerivedType(tag: DW_TAG_typedef, name: "EFI_BOOT_SERVICES", file: !14, line: 2034, baseType: !365)
!365 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !14, line: 1941, size: 3008, elements: !366)
!366 = !{!367, !368, !374, !379, !387, !392, !397, !402, !407, !417, !423, !428, !433, !435, !437, !444, !449, !454, !459, !460, !465, !471, !486, !491, !496, !502, !507, !512, !517, !522, !527, !532, !537, !542, !547, !552, !566, !573, !579, !584, !589, !594, !599, !604, !609}
!367 = !DIDerivedType(tag: DW_TAG_member, name: "Hdr", scope: !365, file: !14, line: 1945, baseType: !119, size: 192)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "RaiseTPL", scope: !365, file: !14, line: 1950, baseType: !369, size: 64, offset: 192)
!369 = !DIDerivedType(tag: DW_TAG_typedef, name: "EFI_RAISE_TPL", file: !14, line: 628, baseType: !370)
!370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !371, size: 64)
!371 = !DISubroutineType(types: !372)
!372 = !{!373, !373}
!373 = !DIDerivedType(tag: DW_TAG_typedef, name: "EFI_TPL", file: !80, line: 43, baseType: !60)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "RestoreTPL", scope: !365, file: !14, line: 1951, baseType: !375, size: 64, offset: 256)
!375 = !DIDerivedType(tag: DW_TAG_typedef, name: "EFI_RESTORE_TPL", file: !14, line: 640, baseType: !376)
!376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !377, size: 64)
!377 = !DISubroutineType(types: !378)
!378 = !{null, !373}
!379 = !DIDerivedType(tag: DW_TAG_member, name: "AllocatePages", scope: !365, file: !14, line: 1956, baseType: !380, size: 64, offset: 320)
!380 = !DIDerivedType(tag: DW_TAG_typedef, name: "EFI_ALLOCATE_PAGES", file: !14, line: 187, baseType: !381)
!381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !382, size: 64)
!382 = !DISubroutineType(types: !383)
!383 = !{!79, !384, !385, !60, !386}
!384 = !DIDerivedType(tag: DW_TAG_typedef, name: "EFI_ALLOCATE_TYPE", file: !14, line: 46, baseType: !13)
!385 = !DIDerivedType(tag: DW_TAG_typedef, name: "EFI_MEMORY_TYPE", file: !6, line: 107, baseType: !20)
!386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !277, size: 64)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "FreePages", scope: !365, file: !14, line: 1957, baseType: !388, size: 64, offset: 384)
!388 = !DIDerivedType(tag: DW_TAG_typedef, name: "EFI_FREE_PAGES", file: !14, line: 208, baseType: !389)
!389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !390, size: 64)
!390 = !DISubroutineType(types: !391)
!391 = !{!79, !277, !60}
!392 = !DIDerivedType(tag: DW_TAG_member, name: "GetMemoryMap", scope: !365, file: !14, line: 1958, baseType: !393, size: 64, offset: 448)
!393 = !DIDerivedType(tag: DW_TAG_typedef, name: "EFI_GET_MEMORY_MAP", file: !14, line: 240, baseType: !394)
!394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !395, size: 64)
!395 = !DISubroutineType(types: !396)
!396 = !{!79, !65, !271, !65, !65, !304}
!397 = !DIDerivedType(tag: DW_TAG_member, name: "AllocatePool", scope: !365, file: !14, line: 1959, baseType: !398, size: 64, offset: 512)
!398 = !DIDerivedType(tag: DW_TAG_typedef, name: "EFI_ALLOCATE_POOL", file: !14, line: 269, baseType: !399)
!399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !400, size: 64)
!400 = !DISubroutineType(types: !401)
!401 = !{!79, !385, !60, !52}
!402 = !DIDerivedType(tag: DW_TAG_member, name: "FreePool", scope: !365, file: !14, line: 1960, baseType: !403, size: 64, offset: 576)
!403 = !DIDerivedType(tag: DW_TAG_typedef, name: "EFI_FREE_POOL", file: !14, line: 286, baseType: !404)
!404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !405, size: 64)
!405 = !DISubroutineType(types: !406)
!406 = !{!79, !53}
!407 = !DIDerivedType(tag: DW_TAG_member, name: "CreateEvent", scope: !365, file: !14, line: 1965, baseType: !408, size: 64, offset: 640)
!408 = !DIDerivedType(tag: DW_TAG_typedef, name: "EFI_CREATE_EVENT", file: !14, line: 464, baseType: !409)
!409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !410, size: 64)
!410 = !DISubroutineType(types: !411)
!411 = !{!79, !111, !373, !412, !53, !416}
!412 = !DIDerivedType(tag: DW_TAG_typedef, name: "EFI_EVENT_NOTIFY", file: !14, line: 441, baseType: !413)
!413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !414, size: 64)
!414 = !DISubroutineType(types: !415)
!415 = !{null, !98, !53}
!416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !98, size: 64)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "SetTimer", scope: !365, file: !14, line: 1966, baseType: !418, size: 64, offset: 704)
!418 = !DIDerivedType(tag: DW_TAG_typedef, name: "EFI_SET_TIMER", file: !14, line: 538, baseType: !419)
!419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !420, size: 64)
!420 = !DISubroutineType(types: !421)
!421 = !{!79, !98, !422, !61}
!422 = !DIDerivedType(tag: DW_TAG_typedef, name: "EFI_TIMER_DELAY", file: !14, line: 518, baseType: !38)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "WaitForEvent", scope: !365, file: !14, line: 1967, baseType: !424, size: 64, offset: 768)
!424 = !DIDerivedType(tag: DW_TAG_typedef, name: "EFI_WAIT_FOR_EVENT", file: !14, line: 574, baseType: !425)
!425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !426, size: 64)
!426 = !DISubroutineType(types: !427)
!427 = !{!79, !60, !416, !65}
!428 = !DIDerivedType(tag: DW_TAG_member, name: "SignalEvent", scope: !365, file: !14, line: 1968, baseType: !429, size: 64, offset: 832)
!429 = !DIDerivedType(tag: DW_TAG_typedef, name: "EFI_SIGNAL_EVENT", file: !14, line: 554, baseType: !430)
!430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !431, size: 64)
!431 = !DISubroutineType(types: !432)
!432 = !{!79, !98}
!433 = !DIDerivedType(tag: DW_TAG_member, name: "CloseEvent", scope: !365, file: !14, line: 1969, baseType: !434, size: 64, offset: 896)
!434 = !DIDerivedType(tag: DW_TAG_typedef, name: "EFI_CLOSE_EVENT", file: !14, line: 590, baseType: !430)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "CheckEvent", scope: !365, file: !14, line: 1970, baseType: !436, size: 64, offset: 960)
!436 = !DIDerivedType(tag: DW_TAG_typedef, name: "EFI_CHECK_EVENT", file: !14, line: 606, baseType: !430)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "InstallProtocolInterface", scope: !365, file: !14, line: 1975, baseType: !438, size: 64, offset: 1024)
!438 = !DIDerivedType(tag: DW_TAG_typedef, name: "EFI_INSTALL_PROTOCOL_INTERFACE", file: !14, line: 1246, baseType: !439)
!439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !440, size: 64)
!440 = !DISubroutineType(types: !441)
!441 = !{!79, !442, !292, !443, !53}
!442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !81, size: 64)
!443 = !DIDerivedType(tag: DW_TAG_typedef, name: "EFI_INTERFACE_TYPE", file: !14, line: 1222, baseType: !43)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "ReinstallProtocolInterface", scope: !365, file: !14, line: 1976, baseType: !445, size: 64, offset: 1088)
!445 = !DIDerivedType(tag: DW_TAG_typedef, name: "EFI_REINSTALL_PROTOCOL_INTERFACE", file: !14, line: 1296, baseType: !446)
!446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !447, size: 64)
!447 = !DISubroutineType(types: !448)
!448 = !{!79, !81, !292, !53, !53}
!449 = !DIDerivedType(tag: DW_TAG_member, name: "UninstallProtocolInterface", scope: !365, file: !14, line: 1977, baseType: !450, size: 64, offset: 1152)
!450 = !DIDerivedType(tag: DW_TAG_typedef, name: "EFI_UNINSTALL_PROTOCOL_INTERFACE", file: !14, line: 1322, baseType: !451)
!451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !452, size: 64)
!452 = !DISubroutineType(types: !453)
!453 = !{!79, !81, !292, !53}
!454 = !DIDerivedType(tag: DW_TAG_member, name: "HandleProtocol", scope: !365, file: !14, line: 1978, baseType: !455, size: 64, offset: 1216)
!455 = !DIDerivedType(tag: DW_TAG_typedef, name: "EFI_HANDLE_PROTOCOL", file: !14, line: 1363, baseType: !456)
!456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !457, size: 64)
!457 = !DISubroutineType(types: !458)
!458 = !{!79, !81, !292, !52}
!459 = !DIDerivedType(tag: DW_TAG_member, name: "Reserved", scope: !365, file: !14, line: 1979, baseType: !53, size: 64, offset: 1280)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "RegisterProtocolNotify", scope: !365, file: !14, line: 1980, baseType: !461, size: 64, offset: 1344)
!461 = !DIDerivedType(tag: DW_TAG_typedef, name: "EFI_REGISTER_PROTOCOL_NOTIFY", file: !14, line: 1524, baseType: !462)
!462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !463, size: 64)
!463 = !DISubroutineType(types: !464)
!464 = !{!79, !292, !98, !52}
!465 = !DIDerivedType(tag: DW_TAG_member, name: "LocateHandle", scope: !365, file: !14, line: 1981, baseType: !466, size: 64, offset: 1408)
!466 = !DIDerivedType(tag: DW_TAG_typedef, name: "EFI_LOCATE_HANDLE", file: !14, line: 1573, baseType: !467)
!467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !468, size: 64)
!468 = !DISubroutineType(types: !469)
!469 = !{!79, !470, !292, !53, !65, !442}
!470 = !DIDerivedType(tag: DW_TAG_typedef, name: "EFI_LOCATE_SEARCH_TYPE", file: !14, line: 1547, baseType: !46)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "LocateDevicePath", scope: !365, file: !14, line: 1982, baseType: !472, size: 64, offset: 1472)
!472 = !DIDerivedType(tag: DW_TAG_typedef, name: "EFI_LOCATE_DEVICE_PATH", file: !14, line: 1599, baseType: !473)
!473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !474, size: 64)
!474 = !DISubroutineType(types: !475)
!475 = !{!79, !292, !476, !442}
!476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !477, size: 64)
!477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !478, size: 64)
!478 = !DIDerivedType(tag: DW_TAG_typedef, name: "EFI_DEVICE_PATH_PROTOCOL", file: !479, line: 58, baseType: !480)
!479 = !DIFile(filename: "./Uefi/Protocol/DevicePath.h", directory: "/home/hira/Research/HARDEN/repositories/HARDEN_demo1/edk2/EmulatorPkg/Demo1_Bob", checksumkind: CSK_MD5, checksum: "b97c129759f8893462bd2c573bd0d83a")
!480 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !479, line: 43, size: 32, elements: !481)
!481 = !{!482, !483, !484}
!482 = !DIDerivedType(tag: DW_TAG_member, name: "Type", scope: !480, file: !479, line: 44, baseType: !232, size: 8)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "SubType", scope: !480, file: !479, line: 51, baseType: !232, size: 8, offset: 8)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "Length", scope: !480, file: !479, line: 56, baseType: !485, size: 16, offset: 16)
!485 = !DICompositeType(tag: DW_TAG_array_type, baseType: !232, size: 16, elements: !89)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "InstallConfigurationTable", scope: !365, file: !14, line: 1983, baseType: !487, size: 64, offset: 1536)
!487 = !DIDerivedType(tag: DW_TAG_typedef, name: "EFI_INSTALL_CONFIGURATION_TABLE", file: !14, line: 1620, baseType: !488)
!488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !489, size: 64)
!489 = !DISubroutineType(types: !490)
!490 = !{!79, !292, !53}
!491 = !DIDerivedType(tag: DW_TAG_member, name: "LoadImage", scope: !365, file: !14, line: 1988, baseType: !492, size: 64, offset: 1600)
!492 = !DIDerivedType(tag: DW_TAG_typedef, name: "EFI_IMAGE_LOAD", file: !14, line: 971, baseType: !493)
!493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !494, size: 64)
!494 = !DISubroutineType(types: !495)
!495 = !{!79, !63, !81, !477, !53, !60, !442}
!496 = !DIDerivedType(tag: DW_TAG_member, name: "StartImage", scope: !365, file: !14, line: 1989, baseType: !497, size: 64, offset: 1664)
!497 = !DIDerivedType(tag: DW_TAG_typedef, name: "EFI_IMAGE_START", file: !14, line: 996, baseType: !498)
!498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !499, size: 64)
!499 = !DISubroutineType(types: !500)
!500 = !{!79, !81, !65, !501}
!501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !128, size: 64)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "Exit", scope: !365, file: !14, line: 1990, baseType: !503, size: 64, offset: 1728)
!503 = !DIDerivedType(tag: DW_TAG_typedef, name: "EFI_EXIT", file: !14, line: 1024, baseType: !504)
!504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !505, size: 64)
!505 = !DISubroutineType(types: !506)
!506 = !{!79, !81, !79, !60, !128}
!507 = !DIDerivedType(tag: DW_TAG_member, name: "UnloadImage", scope: !365, file: !14, line: 1991, baseType: !508, size: 64, offset: 1792)
!508 = !DIDerivedType(tag: DW_TAG_typedef, name: "EFI_IMAGE_UNLOAD", file: !14, line: 1042, baseType: !509)
!509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !510, size: 64)
!510 = !DISubroutineType(types: !511)
!511 = !{!79, !81}
!512 = !DIDerivedType(tag: DW_TAG_member, name: "ExitBootServices", scope: !365, file: !14, line: 1992, baseType: !513, size: 64, offset: 1856)
!513 = !DIDerivedType(tag: DW_TAG_typedef, name: "EFI_EXIT_BOOT_SERVICES", file: !14, line: 1058, baseType: !514)
!514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !515, size: 64)
!515 = !DISubroutineType(types: !516)
!516 = !{!79, !81, !60}
!517 = !DIDerivedType(tag: DW_TAG_member, name: "GetNextMonotonicCount", scope: !365, file: !14, line: 1997, baseType: !518, size: 64, offset: 1920)
!518 = !DIDerivedType(tag: DW_TAG_typedef, name: "EFI_GET_NEXT_MONOTONIC_COUNT", file: !14, line: 1139, baseType: !519)
!519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !520, size: 64)
!520 = !DISubroutineType(types: !521)
!521 = !{!79, !355}
!522 = !DIDerivedType(tag: DW_TAG_member, name: "Stall", scope: !365, file: !14, line: 1998, baseType: !523, size: 64, offset: 1984)
!523 = !DIDerivedType(tag: DW_TAG_typedef, name: "EFI_STALL", file: !14, line: 1074, baseType: !524)
!524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !525, size: 64)
!525 = !DISubroutineType(types: !526)
!526 = !{!79, !60}
!527 = !DIDerivedType(tag: DW_TAG_member, name: "SetWatchdogTimer", scope: !365, file: !14, line: 1999, baseType: !528, size: 64, offset: 2048)
!528 = !DIDerivedType(tag: DW_TAG_typedef, name: "EFI_SET_WATCHDOG_TIMER", file: !14, line: 1096, baseType: !529)
!529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !530, size: 64)
!530 = !DISubroutineType(types: !531)
!531 = !{!79, !60, !61, !60, !128}
!532 = !DIDerivedType(tag: DW_TAG_member, name: "ConnectController", scope: !365, file: !14, line: 2004, baseType: !533, size: 64, offset: 2112)
!533 = !DIDerivedType(tag: DW_TAG_typedef, name: "EFI_CONNECT_CONTROLLER", file: !14, line: 345, baseType: !534)
!534 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !535, size: 64)
!535 = !DISubroutineType(types: !536)
!536 = !{!79, !81, !442, !477, !63}
!537 = !DIDerivedType(tag: DW_TAG_member, name: "DisconnectController", scope: !365, file: !14, line: 2005, baseType: !538, size: 64, offset: 2176)
!538 = !DIDerivedType(tag: DW_TAG_typedef, name: "EFI_DISCONNECT_CONTROLLER", file: !14, line: 378, baseType: !539)
!539 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !540, size: 64)
!540 = !DISubroutineType(types: !541)
!541 = !{!79, !81, !81, !81}
!542 = !DIDerivedType(tag: DW_TAG_member, name: "OpenProtocol", scope: !365, file: !14, line: 2010, baseType: !543, size: 64, offset: 2240)
!543 = !DIDerivedType(tag: DW_TAG_typedef, name: "EFI_OPEN_PROTOCOL", file: !14, line: 1405, baseType: !544)
!544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !545, size: 64)
!545 = !DISubroutineType(types: !546)
!546 = !{!79, !81, !292, !52, !81, !81, !111}
!547 = !DIDerivedType(tag: DW_TAG_member, name: "CloseProtocol", scope: !365, file: !14, line: 2011, baseType: !548, size: 64, offset: 2304)
!548 = !DIDerivedType(tag: DW_TAG_typedef, name: "EFI_CLOSE_PROTOCOL", file: !14, line: 1437, baseType: !549)
!549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !550, size: 64)
!550 = !DISubroutineType(types: !551)
!551 = !{!79, !81, !292, !81, !81}
!552 = !DIDerivedType(tag: DW_TAG_member, name: "OpenProtocolInformation", scope: !365, file: !14, line: 2012, baseType: !553, size: 64, offset: 2368)
!553 = !DIDerivedType(tag: DW_TAG_typedef, name: "EFI_OPEN_PROTOCOL_INFORMATION", file: !14, line: 1471, baseType: !554)
!554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !555, size: 64)
!555 = !DISubroutineType(types: !556)
!556 = !{!79, !81, !292, !557, !65}
!557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !558, size: 64)
!558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !559, size: 64)
!559 = !DIDerivedType(tag: DW_TAG_typedef, name: "EFI_OPEN_PROTOCOL_INFORMATION_ENTRY", file: !14, line: 1452, baseType: !560)
!560 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !14, line: 1447, size: 192, elements: !561)
!561 = !{!562, !563, !564, !565}
!562 = !DIDerivedType(tag: DW_TAG_member, name: "AgentHandle", scope: !560, file: !14, line: 1448, baseType: !81, size: 64)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "ControllerHandle", scope: !560, file: !14, line: 1449, baseType: !81, size: 64, offset: 64)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "Attributes", scope: !560, file: !14, line: 1450, baseType: !111, size: 32, offset: 128)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "OpenCount", scope: !560, file: !14, line: 1451, baseType: !111, size: 32, offset: 160)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "ProtocolsPerHandle", scope: !365, file: !14, line: 2017, baseType: !567, size: 64, offset: 2432)
!567 = !DIDerivedType(tag: DW_TAG_typedef, name: "EFI_PROTOCOLS_PER_HANDLE", file: !14, line: 1501, baseType: !568)
!568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !569, size: 64)
!569 = !DISubroutineType(types: !570)
!570 = !{!79, !81, !571, !65}
!571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !572, size: 64)
!572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !292, size: 64)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "LocateHandleBuffer", scope: !365, file: !14, line: 2018, baseType: !574, size: 64, offset: 2496)
!574 = !DIDerivedType(tag: DW_TAG_typedef, name: "EFI_LOCATE_HANDLE_BUFFER", file: !14, line: 1646, baseType: !575)
!575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !576, size: 64)
!576 = !DISubroutineType(types: !577)
!577 = !{!79, !470, !292, !53, !65, !578}
!578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !442, size: 64)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "LocateProtocol", scope: !365, file: !14, line: 2019, baseType: !580, size: 64, offset: 2560)
!580 = !DIDerivedType(tag: DW_TAG_typedef, name: "EFI_LOCATE_PROTOCOL", file: !14, line: 1673, baseType: !581)
!581 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !582, size: 64)
!582 = !DISubroutineType(types: !583)
!583 = !{!79, !292, !53, !52}
!584 = !DIDerivedType(tag: DW_TAG_member, name: "InstallMultipleProtocolInterfaces", scope: !365, file: !14, line: 2020, baseType: !585, size: 64, offset: 2624)
!585 = !DIDerivedType(tag: DW_TAG_typedef, name: "EFI_INSTALL_MULTIPLE_PROTOCOL_INTERFACES", file: !14, line: 1271, baseType: !586)
!586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !587, size: 64)
!587 = !DISubroutineType(types: !588)
!588 = !{!79, !442, null}
!589 = !DIDerivedType(tag: DW_TAG_member, name: "UninstallMultipleProtocolInterfaces", scope: !365, file: !14, line: 2021, baseType: !590, size: 64, offset: 2688)
!590 = !DIDerivedType(tag: DW_TAG_typedef, name: "EFI_UNINSTALL_MULTIPLE_PROTOCOL_INTERFACES", file: !14, line: 1341, baseType: !591)
!591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !592, size: 64)
!592 = !DISubroutineType(types: !593)
!593 = !{!79, !81, null}
!594 = !DIDerivedType(tag: DW_TAG_member, name: "CalculateCrc32", scope: !365, file: !14, line: 2026, baseType: !595, size: 64, offset: 2752)
!595 = !DIDerivedType(tag: DW_TAG_typedef, name: "EFI_CALCULATE_CRC32", file: !14, line: 1176, baseType: !596)
!596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !597, size: 64)
!597 = !DISubroutineType(types: !598)
!598 = !{!79, !53, !60, !304}
!599 = !DIDerivedType(tag: DW_TAG_member, name: "CopyMem", scope: !365, file: !14, line: 2031, baseType: !600, size: 64, offset: 2816)
!600 = !DIDerivedType(tag: DW_TAG_typedef, name: "EFI_COPY_MEM", file: !14, line: 1192, baseType: !601)
!601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !602, size: 64)
!602 = !DISubroutineType(types: !603)
!603 = !{null, !53, !53, !60}
!604 = !DIDerivedType(tag: DW_TAG_member, name: "SetMem", scope: !365, file: !14, line: 2032, baseType: !605, size: 64, offset: 2880)
!605 = !DIDerivedType(tag: DW_TAG_typedef, name: "EFI_SET_MEM", file: !14, line: 1208, baseType: !606)
!606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !607, size: 64)
!607 = !DISubroutineType(types: !608)
!608 = !{null, !53, !60, !232}
!609 = !DIDerivedType(tag: DW_TAG_member, name: "CreateEventEx", scope: !365, file: !14, line: 2033, baseType: !610, size: 64, offset: 2944)
!610 = !DIDerivedType(tag: DW_TAG_typedef, name: "EFI_CREATE_EVENT_EX", file: !14, line: 493, baseType: !611)
!611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !612, size: 64)
!612 = !DISubroutineType(types: !613)
!613 = !{!79, !111, !373, !412, !614, !616, !416}
!614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !615, size: 64)
!615 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !617, size: 64)
!617 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !293)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "NumberOfTableEntries", scope: !116, file: !14, line: 2109, baseType: !60, size: 64, offset: 832)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "ConfigurationTable", scope: !116, file: !14, line: 2114, baseType: !620, size: 64, offset: 896)
!620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !621, size: 64)
!621 = !DIDerivedType(tag: DW_TAG_typedef, name: "EFI_CONFIGURATION_TABLE", file: !14, line: 2049, baseType: !622)
!622 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !14, line: 2040, size: 192, elements: !623)
!623 = !{!624, !625}
!624 = !DIDerivedType(tag: DW_TAG_member, name: "VendorGuid", scope: !622, file: !14, line: 2044, baseType: !293, size: 128)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "VendorTable", scope: !622, file: !14, line: 2048, baseType: !53, size: 64, offset: 128)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "DeviceHandle", scope: !108, file: !107, line: 53, baseType: !81, size: 64, offset: 192)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "FilePath", scope: !108, file: !107, line: 54, baseType: !477, size: 64, offset: 256)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "Reserved", scope: !108, file: !107, line: 56, baseType: !53, size: 64, offset: 320)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "LoadOptionsSize", scope: !108, file: !107, line: 61, baseType: !111, size: 32, offset: 384)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "LoadOptions", scope: !108, file: !107, line: 62, baseType: !53, size: 64, offset: 448)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "ImageBase", scope: !108, file: !107, line: 67, baseType: !53, size: 64, offset: 512)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "ImageSize", scope: !108, file: !107, line: 68, baseType: !61, size: 64, offset: 576)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "ImageCodeType", scope: !108, file: !107, line: 69, baseType: !385, size: 32, offset: 640)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "ImageDataType", scope: !108, file: !107, line: 70, baseType: !385, size: 32, offset: 672)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "Unload", scope: !108, file: !107, line: 71, baseType: !508, size: 64, offset: 704)
!636 = !DIGlobalVariableExpression(var: !637, expr: !DIExpression())
!637 = distinct !DIGlobalVariable(name: "AliceProtocol", scope: !2, file: !3, line: 25, type: !638, isLocal: false, isDefinition: true)
!638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !639, size: 64)
!639 = !DIDerivedType(tag: DW_TAG_typedef, name: "Demo1_Alice_PROTOCOL", file: !640, line: 36, baseType: !641)
!640 = !DIFile(filename: "./../Demo1_Alice/Demo1_Alice.h", directory: "/home/hira/Research/HARDEN/repositories/HARDEN_demo1/edk2/EmulatorPkg/Demo1_Bob", checksumkind: CSK_MD5, checksum: "a1a6c09027689aba8f236cb5bb922cff")
!641 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Demo1_Alice_PROTOCOL", file: !640, line: 56, size: 128, elements: !642)
!642 = !{!643, !648}
!643 = !DIDerivedType(tag: DW_TAG_member, name: "Demo1AliceProvideData", scope: !641, file: !640, line: 57, baseType: !644, size: 64)
!644 = !DIDerivedType(tag: DW_TAG_typedef, name: "ALICE_CB_TYPE", file: !640, line: 47, baseType: !645)
!645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !646, size: 64)
!646 = !DISubroutineType(types: !647)
!647 = !{!79, !638, !81, !65}
!648 = !DIDerivedType(tag: DW_TAG_member, name: "Demo1_Ready_To_Run_Event", scope: !641, file: !640, line: 58, baseType: !98, size: 64, offset: 64)
!649 = !DIGlobalVariableExpression(var: !650, expr: !DIExpression())
!650 = distinct !DIGlobalVariable(name: "bobKey", scope: !2, file: !3, line: 28, type: !83, isLocal: false, isDefinition: true)
!651 = !DIGlobalVariableExpression(var: !652, expr: !DIExpression())
!652 = distinct !DIGlobalVariable(name: "change", scope: !653, file: !3, line: 91, type: !60, isLocal: true, isDefinition: true)
!653 = distinct !DISubprogram(name: "Demo1BobTimerHandler", scope: !3, file: !3, line: 86, type: !414, scopeLine: 90, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !654)
!654 = !{}
!655 = !DIDerivedType(tag: DW_TAG_typedef, name: "Demo1_Bob_PROTOCOL", file: !656, line: 35, baseType: !657)
!656 = !DIFile(filename: "./Demo1_Bob.h", directory: "/home/hira/Research/HARDEN/repositories/HARDEN_demo1/edk2/EmulatorPkg/Demo1_Bob", checksumkind: CSK_MD5, checksum: "4fa74dec5a92cd7311066f39f790ce53")
!657 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Demo1_Bob_PROTOCOL", file: !656, line: 52, size: 64, elements: !658)
!658 = !{!659}
!659 = !DIDerivedType(tag: DW_TAG_member, name: "Demo1BobDataProvider", scope: !657, file: !656, line: 53, baseType: !660, size: 64)
!660 = !DIDerivedType(tag: DW_TAG_typedef, name: "BOB_CB_TYPE", file: !656, line: 42, baseType: !661)
!661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !662, size: 64)
!662 = !DISubroutineType(types: !663)
!663 = !{!79, !664, !53, !52, !60}
!664 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !655, size: 64)
!665 = !{i32 7, !"Dwarf Version", i32 5}
!666 = !{i32 2, !"Debug Info Version", i32 3}
!667 = !{i32 1, !"wchar_size", i32 4}
!668 = !{i32 7, !"PIC Level", i32 2}
!669 = !{i32 7, !"PIE Level", i32 2}
!670 = !{i32 7, !"uwtable", i32 1}
!671 = !{i32 7, !"frame-pointer", i32 2}
!672 = !{!"Ubuntu clang version 14.0.6"}
!673 = distinct !DISubprogram(name: "Demo1BobDataProvider", scope: !3, file: !3, line: 324, type: !662, scopeLine: 330, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !654)
!674 = !DILocalVariable(name: "This", arg: 1, scope: !673, file: !3, line: 325, type: !664)
!675 = !DILocation(line: 325, column: 30, scope: !673)
!676 = !DILocalVariable(name: "Address", arg: 2, scope: !673, file: !3, line: 326, type: !53)
!677 = !DILocation(line: 326, column: 30, scope: !673)
!678 = !DILocalVariable(name: "Dest", arg: 3, scope: !673, file: !3, line: 327, type: !52)
!679 = !DILocation(line: 327, column: 31, scope: !673)
!680 = !DILocalVariable(name: "Size", arg: 4, scope: !673, file: !3, line: 328, type: !60)
!681 = !DILocation(line: 328, column: 29, scope: !673)
!682 = !DILocalVariable(name: "IAddress", scope: !673, file: !3, line: 333, type: !60)
!683 = !DILocation(line: 333, column: 9, scope: !673)
!684 = !DILocation(line: 333, column: 27, scope: !673)
!685 = !DILocation(line: 333, column: 20, scope: !673)
!686 = !DILocalVariable(name: "IBase", scope: !673, file: !3, line: 334, type: !60)
!687 = !DILocation(line: 334, column: 9, scope: !673)
!688 = !DILocation(line: 334, column: 24, scope: !673)
!689 = !DILocation(line: 334, column: 36, scope: !673)
!690 = !DILocation(line: 334, column: 17, scope: !673)
!691 = !DILocalVariable(name: "Storage", scope: !673, file: !3, line: 335, type: !53)
!692 = !DILocation(line: 335, column: 9, scope: !673)
!693 = !DILocation(line: 337, column: 7, scope: !694)
!694 = distinct !DILexicalBlock(scope: !673, file: !3, line: 337, column: 7)
!695 = !DILocation(line: 337, column: 12, scope: !694)
!696 = !DILocation(line: 337, column: 7, scope: !673)
!697 = !DILocation(line: 338, column: 5, scope: !698)
!698 = distinct !DILexicalBlock(scope: !694, file: !3, line: 337, column: 22)
!699 = !DILocation(line: 341, column: 8, scope: !700)
!700 = distinct !DILexicalBlock(scope: !673, file: !3, line: 341, column: 8)
!701 = !DILocation(line: 341, column: 19, scope: !700)
!702 = !DILocation(line: 341, column: 17, scope: !700)
!703 = !DILocation(line: 341, column: 8, scope: !673)
!704 = !DILocation(line: 342, column: 5, scope: !705)
!705 = distinct !DILexicalBlock(scope: !700, file: !3, line: 341, column: 27)
!706 = !DILocation(line: 345, column: 8, scope: !707)
!707 = distinct !DILexicalBlock(scope: !673, file: !3, line: 345, column: 8)
!708 = !DILocation(line: 345, column: 16, scope: !707)
!709 = !DILocation(line: 345, column: 28, scope: !707)
!710 = !DILocation(line: 345, column: 14, scope: !707)
!711 = !DILocation(line: 345, column: 40, scope: !707)
!712 = !DILocation(line: 345, column: 51, scope: !707)
!713 = !DILocation(line: 345, column: 49, scope: !707)
!714 = !DILocation(line: 345, column: 38, scope: !707)
!715 = !DILocation(line: 345, column: 8, scope: !673)
!716 = !DILocation(line: 346, column: 5, scope: !717)
!717 = distinct !DILexicalBlock(scope: !707, file: !3, line: 345, column: 58)
!718 = !DILocation(line: 349, column: 26, scope: !673)
!719 = !DILocation(line: 349, column: 13, scope: !673)
!720 = !DILocation(line: 349, column: 11, scope: !673)
!721 = !DILocation(line: 351, column: 8, scope: !722)
!722 = distinct !DILexicalBlock(scope: !673, file: !3, line: 351, column: 8)
!723 = !DILocation(line: 351, column: 16, scope: !722)
!724 = !DILocation(line: 351, column: 8, scope: !673)
!725 = !DILocation(line: 352, column: 5, scope: !726)
!726 = distinct !DILexicalBlock(scope: !722, file: !3, line: 351, column: 26)
!727 = !DILocation(line: 355, column: 12, scope: !673)
!728 = !DILocation(line: 355, column: 21, scope: !673)
!729 = !DILocation(line: 355, column: 30, scope: !673)
!730 = !DILocation(line: 355, column: 3, scope: !673)
!731 = !DILocation(line: 357, column: 11, scope: !673)
!732 = !DILocation(line: 357, column: 4, scope: !673)
!733 = !DILocation(line: 357, column: 9, scope: !673)
!734 = !DILocation(line: 359, column: 3, scope: !673)
!735 = !DILocation(line: 360, column: 1, scope: !673)
!736 = distinct !DISubprogram(name: "Demo1BobInit", scope: !3, file: !3, line: 163, type: !737, scopeLine: 167, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !654)
!737 = !DISubroutineType(types: !738)
!738 = !{!79, !81, !114}
!739 = !DILocalVariable(name: "ImageHandle", arg: 1, scope: !736, file: !3, line: 164, type: !81)
!740 = !DILocation(line: 164, column: 24, scope: !736)
!741 = !DILocalVariable(name: "SystemTable", arg: 2, scope: !736, file: !3, line: 165, type: !114)
!742 = !DILocation(line: 165, column: 25, scope: !736)
!743 = !DILocalVariable(name: "Status", scope: !736, file: !3, line: 168, type: !79)
!744 = !DILocation(line: 168, column: 21, scope: !736)
!745 = !DILocalVariable(name: "Mode", scope: !736, file: !3, line: 169, type: !60)
!746 = !DILocation(line: 169, column: 21, scope: !736)
!747 = !DILocalVariable(name: "BufferSize", scope: !736, file: !3, line: 170, type: !60)
!748 = !DILocation(line: 170, column: 21, scope: !736)
!749 = !DILocation(line: 173, column: 12, scope: !736)
!750 = !DILocation(line: 173, column: 17, scope: !736)
!751 = !DILocation(line: 174, column: 5, scope: !736)
!752 = !DILocation(line: 177, column: 5, scope: !736)
!753 = !DILocation(line: 173, column: 10, scope: !736)
!754 = !DILocation(line: 186, column: 7, scope: !755)
!755 = distinct !DILexicalBlock(scope: !736, file: !3, line: 186, column: 7)
!756 = !DILocation(line: 186, column: 26, scope: !755)
!757 = !DILocation(line: 186, column: 30, scope: !755)
!758 = !DILocation(line: 186, column: 48, scope: !755)
!759 = !DILocation(line: 186, column: 7, scope: !736)
!760 = !DILocation(line: 187, column: 5, scope: !761)
!761 = distinct !DILexicalBlock(scope: !755, file: !3, line: 186, column: 58)
!762 = !DILocation(line: 187, column: 5, scope: !763)
!763 = distinct !DILexicalBlock(scope: !764, file: !3, line: 187, column: 5)
!764 = distinct !DILexicalBlock(scope: !761, file: !3, line: 187, column: 5)
!765 = !DILocation(line: 187, column: 5, scope: !764)
!766 = !DILocation(line: 187, column: 5, scope: !767)
!767 = distinct !DILexicalBlock(scope: !763, file: !3, line: 187, column: 5)
!768 = !DILocation(line: 187, column: 5, scope: !769)
!769 = distinct !DILexicalBlock(scope: !770, file: !3, line: 187, column: 5)
!770 = distinct !DILexicalBlock(scope: !767, file: !3, line: 187, column: 5)
!771 = !DILocation(line: 187, column: 5, scope: !770)
!772 = !DILocation(line: 187, column: 5, scope: !773)
!773 = distinct !DILexicalBlock(scope: !769, file: !3, line: 187, column: 5)
!774 = !DILocation(line: 189, column: 12, scope: !761)
!775 = !DILocation(line: 189, column: 5, scope: !761)
!776 = !DILocation(line: 195, column: 12, scope: !736)
!777 = !DILocation(line: 195, column: 31, scope: !736)
!778 = !DILocation(line: 195, column: 10, scope: !736)
!779 = !DILocation(line: 196, column: 7, scope: !780)
!780 = distinct !DILexicalBlock(scope: !736, file: !3, line: 196, column: 7)
!781 = !DILocation(line: 196, column: 7, scope: !736)
!782 = !DILocation(line: 197, column: 5, scope: !783)
!783 = distinct !DILexicalBlock(scope: !780, file: !3, line: 196, column: 27)
!784 = !DILocation(line: 197, column: 5, scope: !785)
!785 = distinct !DILexicalBlock(scope: !786, file: !3, line: 197, column: 5)
!786 = distinct !DILexicalBlock(scope: !783, file: !3, line: 197, column: 5)
!787 = !DILocation(line: 197, column: 5, scope: !786)
!788 = !DILocation(line: 197, column: 5, scope: !789)
!789 = distinct !DILexicalBlock(scope: !785, file: !3, line: 197, column: 5)
!790 = !DILocation(line: 197, column: 5, scope: !791)
!791 = distinct !DILexicalBlock(scope: !792, file: !3, line: 197, column: 5)
!792 = distinct !DILexicalBlock(scope: !789, file: !3, line: 197, column: 5)
!793 = !DILocation(line: 197, column: 5, scope: !792)
!794 = !DILocation(line: 197, column: 5, scope: !795)
!795 = distinct !DILexicalBlock(scope: !791, file: !3, line: 197, column: 5)
!796 = !DILocation(line: 199, column: 12, scope: !783)
!797 = !DILocation(line: 199, column: 5, scope: !783)
!798 = !DILocation(line: 206, column: 7, scope: !799)
!799 = distinct !DILexicalBlock(scope: !736, file: !3, line: 206, column: 7)
!800 = !DILocation(line: 206, column: 26, scope: !799)
!801 = !DILocation(line: 206, column: 30, scope: !799)
!802 = !DILocation(line: 206, column: 44, scope: !799)
!803 = !DILocation(line: 206, column: 7, scope: !736)
!804 = !DILocation(line: 207, column: 5, scope: !805)
!805 = distinct !DILexicalBlock(scope: !799, file: !3, line: 206, column: 54)
!806 = !DILocation(line: 207, column: 5, scope: !807)
!807 = distinct !DILexicalBlock(scope: !808, file: !3, line: 207, column: 5)
!808 = distinct !DILexicalBlock(scope: !805, file: !3, line: 207, column: 5)
!809 = !DILocation(line: 207, column: 5, scope: !808)
!810 = !DILocation(line: 207, column: 5, scope: !811)
!811 = distinct !DILexicalBlock(scope: !807, file: !3, line: 207, column: 5)
!812 = !DILocation(line: 207, column: 5, scope: !813)
!813 = distinct !DILexicalBlock(scope: !814, file: !3, line: 207, column: 5)
!814 = distinct !DILexicalBlock(scope: !811, file: !3, line: 207, column: 5)
!815 = !DILocation(line: 207, column: 5, scope: !814)
!816 = !DILocation(line: 207, column: 5, scope: !817)
!817 = distinct !DILexicalBlock(scope: !813, file: !3, line: 207, column: 5)
!818 = !DILocation(line: 209, column: 12, scope: !805)
!819 = !DILocation(line: 209, column: 5, scope: !805)
!820 = !DILocation(line: 223, column: 7, scope: !821)
!821 = distinct !DILexicalBlock(scope: !736, file: !3, line: 223, column: 7)
!822 = !DILocation(line: 223, column: 7, scope: !736)
!823 = !DILocation(line: 224, column: 5, scope: !824)
!824 = distinct !DILexicalBlock(scope: !821, file: !3, line: 223, column: 27)
!825 = !DILocation(line: 224, column: 5, scope: !826)
!826 = distinct !DILexicalBlock(scope: !827, file: !3, line: 224, column: 5)
!827 = distinct !DILexicalBlock(scope: !824, file: !3, line: 224, column: 5)
!828 = !DILocation(line: 224, column: 5, scope: !827)
!829 = !DILocation(line: 224, column: 5, scope: !830)
!830 = distinct !DILexicalBlock(scope: !826, file: !3, line: 224, column: 5)
!831 = !DILocation(line: 224, column: 5, scope: !832)
!832 = distinct !DILexicalBlock(scope: !833, file: !3, line: 224, column: 5)
!833 = distinct !DILexicalBlock(scope: !830, file: !3, line: 224, column: 5)
!834 = !DILocation(line: 224, column: 5, scope: !833)
!835 = !DILocation(line: 224, column: 5, scope: !836)
!836 = distinct !DILexicalBlock(scope: !832, file: !3, line: 224, column: 5)
!837 = !DILocation(line: 226, column: 12, scope: !824)
!838 = !DILocation(line: 226, column: 5, scope: !824)
!839 = !DILocation(line: 232, column: 7, scope: !840)
!840 = distinct !DILexicalBlock(scope: !736, file: !3, line: 232, column: 7)
!841 = !DILocation(line: 232, column: 12, scope: !840)
!842 = !DILocation(line: 232, column: 7, scope: !736)
!843 = !DILocation(line: 233, column: 5, scope: !844)
!844 = distinct !DILexicalBlock(scope: !840, file: !3, line: 232, column: 25)
!845 = !DILocation(line: 233, column: 5, scope: !846)
!846 = distinct !DILexicalBlock(scope: !847, file: !3, line: 233, column: 5)
!847 = distinct !DILexicalBlock(scope: !844, file: !3, line: 233, column: 5)
!848 = !DILocation(line: 233, column: 5, scope: !847)
!849 = !DILocation(line: 233, column: 5, scope: !850)
!850 = distinct !DILexicalBlock(scope: !846, file: !3, line: 233, column: 5)
!851 = !DILocation(line: 233, column: 5, scope: !852)
!852 = distinct !DILexicalBlock(scope: !853, file: !3, line: 233, column: 5)
!853 = distinct !DILexicalBlock(scope: !850, file: !3, line: 233, column: 5)
!854 = !DILocation(line: 233, column: 5, scope: !853)
!855 = !DILocation(line: 233, column: 5, scope: !856)
!856 = distinct !DILexicalBlock(scope: !852, file: !3, line: 233, column: 5)
!857 = !DILocation(line: 235, column: 5, scope: !844)
!858 = !DILocation(line: 237, column: 7, scope: !859)
!859 = distinct !DILexicalBlock(scope: !736, file: !3, line: 237, column: 7)
!860 = !DILocation(line: 237, column: 12, scope: !859)
!861 = !DILocation(line: 237, column: 7, scope: !736)
!862 = !DILocation(line: 238, column: 5, scope: !863)
!863 = distinct !DILexicalBlock(scope: !859, file: !3, line: 237, column: 26)
!864 = !DILocation(line: 238, column: 5, scope: !865)
!865 = distinct !DILexicalBlock(scope: !866, file: !3, line: 238, column: 5)
!866 = distinct !DILexicalBlock(scope: !863, file: !3, line: 238, column: 5)
!867 = !DILocation(line: 238, column: 5, scope: !866)
!868 = !DILocation(line: 238, column: 5, scope: !869)
!869 = distinct !DILexicalBlock(scope: !865, file: !3, line: 238, column: 5)
!870 = !DILocation(line: 238, column: 5, scope: !871)
!871 = distinct !DILexicalBlock(scope: !872, file: !3, line: 238, column: 5)
!872 = distinct !DILexicalBlock(scope: !869, file: !3, line: 238, column: 5)
!873 = !DILocation(line: 238, column: 5, scope: !872)
!874 = !DILocation(line: 238, column: 5, scope: !875)
!875 = distinct !DILexicalBlock(scope: !871, file: !3, line: 238, column: 5)
!876 = !DILocation(line: 240, column: 5, scope: !863)
!877 = !DILocation(line: 247, column: 12, scope: !736)
!878 = !DILocation(line: 247, column: 17, scope: !736)
!879 = !DILocation(line: 247, column: 10, scope: !736)
!880 = !DILocation(line: 254, column: 7, scope: !881)
!881 = distinct !DILexicalBlock(scope: !736, file: !3, line: 254, column: 7)
!882 = !DILocation(line: 254, column: 7, scope: !736)
!883 = !DILocation(line: 255, column: 5, scope: !884)
!884 = distinct !DILexicalBlock(scope: !881, file: !3, line: 254, column: 27)
!885 = !DILocation(line: 255, column: 5, scope: !886)
!886 = distinct !DILexicalBlock(scope: !887, file: !3, line: 255, column: 5)
!887 = distinct !DILexicalBlock(scope: !884, file: !3, line: 255, column: 5)
!888 = !DILocation(line: 255, column: 5, scope: !887)
!889 = !DILocation(line: 255, column: 5, scope: !890)
!890 = distinct !DILexicalBlock(scope: !886, file: !3, line: 255, column: 5)
!891 = !DILocation(line: 255, column: 5, scope: !892)
!892 = distinct !DILexicalBlock(scope: !893, file: !3, line: 255, column: 5)
!893 = distinct !DILexicalBlock(scope: !890, file: !3, line: 255, column: 5)
!894 = !DILocation(line: 255, column: 5, scope: !893)
!895 = !DILocation(line: 255, column: 5, scope: !896)
!896 = distinct !DILexicalBlock(scope: !892, file: !3, line: 255, column: 5)
!897 = !DILocation(line: 257, column: 12, scope: !884)
!898 = !DILocation(line: 257, column: 5, scope: !884)
!899 = !DILocation(line: 263, column: 12, scope: !736)
!900 = !DILocation(line: 263, column: 17, scope: !736)
!901 = !DILocation(line: 264, column: 5, scope: !736)
!902 = !DILocation(line: 266, column: 5, scope: !736)
!903 = !DILocation(line: 263, column: 10, scope: !736)
!904 = !DILocation(line: 267, column: 7, scope: !905)
!905 = distinct !DILexicalBlock(scope: !736, file: !3, line: 267, column: 7)
!906 = !DILocation(line: 267, column: 7, scope: !736)
!907 = !DILocation(line: 268, column: 12, scope: !908)
!908 = distinct !DILexicalBlock(scope: !905, file: !3, line: 267, column: 27)
!909 = !DILocation(line: 268, column: 5, scope: !908)
!910 = !DILocation(line: 280, column: 7, scope: !911)
!911 = distinct !DILexicalBlock(scope: !736, file: !3, line: 280, column: 7)
!912 = !DILocation(line: 280, column: 7, scope: !736)
!913 = !DILocation(line: 281, column: 12, scope: !914)
!914 = distinct !DILexicalBlock(scope: !911, file: !3, line: 280, column: 27)
!915 = !DILocation(line: 281, column: 5, scope: !914)
!916 = !DILocation(line: 284, column: 3, scope: !736)
!917 = !DILocation(line: 285, column: 1, scope: !736)
!918 = !DILocalVariable(name: "Event", arg: 1, scope: !653, file: !3, line: 87, type: !98)
!919 = !DILocation(line: 87, column: 29, scope: !653)
!920 = !DILocalVariable(name: "Context", arg: 2, scope: !653, file: !3, line: 88, type: !53)
!921 = !DILocation(line: 88, column: 30, scope: !653)
!922 = !DILocalVariable(name: "Data", scope: !653, file: !3, line: 92, type: !60)
!923 = !DILocation(line: 92, column: 11, scope: !653)
!924 = !DILocalVariable(name: "Mode", scope: !653, file: !3, line: 93, type: !60)
!925 = !DILocation(line: 93, column: 11, scope: !653)
!926 = !DILocalVariable(name: "BufferSize", scope: !653, file: !3, line: 94, type: !60)
!927 = !DILocation(line: 94, column: 11, scope: !653)
!928 = !DILocation(line: 116, column: 7, scope: !929)
!929 = distinct !DILexicalBlock(scope: !653, file: !3, line: 116, column: 7)
!930 = !DILocation(line: 116, column: 12, scope: !929)
!931 = !DILocation(line: 116, column: 7, scope: !653)
!932 = !DILocation(line: 117, column: 5, scope: !933)
!933 = distinct !DILexicalBlock(scope: !929, file: !3, line: 116, column: 25)
!934 = !DILocation(line: 117, column: 20, scope: !933)
!935 = !DILocation(line: 117, column: 42, scope: !933)
!936 = !DILocation(line: 118, column: 33, scope: !933)
!937 = !DILocation(line: 118, column: 5, scope: !933)
!938 = !DILocation(line: 119, column: 5, scope: !933)
!939 = !DILocation(line: 124, column: 7, scope: !940)
!940 = distinct !DILexicalBlock(scope: !653, file: !3, line: 124, column: 7)
!941 = !DILocation(line: 124, column: 12, scope: !940)
!942 = !DILocation(line: 124, column: 7, scope: !653)
!943 = !DILocation(line: 125, column: 5, scope: !944)
!944 = distinct !DILexicalBlock(scope: !940, file: !3, line: 124, column: 26)
!945 = !DILocation(line: 127, column: 5, scope: !946)
!946 = distinct !DILexicalBlock(scope: !940, file: !3, line: 126, column: 10)
!947 = !DILocation(line: 127, column: 20, scope: !946)
!948 = !DILocation(line: 127, column: 42, scope: !946)
!949 = !DILocation(line: 128, column: 41, scope: !946)
!950 = !DILocation(line: 128, column: 34, scope: !946)
!951 = !DILocation(line: 128, column: 5, scope: !946)
!952 = !DILocation(line: 130, column: 9, scope: !953)
!953 = distinct !DILexicalBlock(scope: !946, file: !3, line: 130, column: 9)
!954 = !DILocation(line: 130, column: 16, scope: !953)
!955 = !DILocation(line: 130, column: 9, scope: !946)
!956 = !DILocation(line: 131, column: 14, scope: !957)
!957 = distinct !DILexicalBlock(scope: !953, file: !3, line: 130, column: 22)
!958 = !DILocation(line: 147, column: 7, scope: !957)
!959 = !DILocation(line: 147, column: 12, scope: !957)
!960 = !DILocation(line: 147, column: 24, scope: !957)
!961 = !DILocation(line: 147, column: 39, scope: !957)
!962 = !DILocation(line: 148, column: 5, scope: !957)
!963 = !DILocation(line: 150, column: 1, scope: !653)
!964 = distinct !DISubprogram(name: "Demo1BobUnload", scope: !3, file: !3, line: 297, type: !510, scopeLine: 300, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !654)
!965 = !DILocalVariable(name: "ImageHandle", arg: 1, scope: !964, file: !3, line: 298, type: !81)
!966 = !DILocation(line: 298, column: 18, scope: !964)
!967 = !DILocalVariable(name: "Status", scope: !964, file: !3, line: 301, type: !79)
!968 = !DILocation(line: 301, column: 14, scope: !964)
!969 = !DILocation(line: 307, column: 10, scope: !964)
!970 = !DILocation(line: 307, column: 3, scope: !964)
!971 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 363, type: !972, scopeLine: 363, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !654)
!972 = !DISubroutineType(types: !973)
!973 = !{!207}
!974 = !DILocalVariable(name: "ImageHandle", scope: !971, file: !3, line: 364, type: !81)
!975 = !DILocation(line: 364, column: 36, scope: !971)
!976 = !DILocalVariable(name: "SystemTable", scope: !971, file: !3, line: 365, type: !114)
!977 = !DILocation(line: 365, column: 37, scope: !971)
!978 = !DILocation(line: 366, column: 3, scope: !971)
!979 = !DILocation(line: 367, column: 3, scope: !971)
!980 = !DILocation(line: 368, column: 16, scope: !971)
!981 = !DILocation(line: 368, column: 29, scope: !971)
!982 = !DILocation(line: 368, column: 3, scope: !971)
!983 = !DILocation(line: 370, column: 3, scope: !971)
!984 = distinct !DISubprogram(name: "Demo1BobRunModeAction", scope: !3, file: !3, line: 65, type: !985, scopeLine: 69, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !654)
!985 = !DISubroutineType(types: !986)
!986 = !{null, !81, !53}
!987 = !DILocalVariable(name: "Controller", arg: 1, scope: !984, file: !3, line: 66, type: !81)
!988 = !DILocation(line: 66, column: 29, scope: !984)
!989 = !DILocalVariable(name: "Data", arg: 2, scope: !984, file: !3, line: 67, type: !53)
!990 = !DILocation(line: 67, column: 30, scope: !984)
!991 = !DILocation(line: 70, column: 29, scope: !984)
!992 = !DILocation(line: 70, column: 20, scope: !984)
!993 = !DILocation(line: 70, column: 19, scope: !984)
!994 = !DILocation(line: 70, column: 17, scope: !984)
!995 = !DILocation(line: 71, column: 1, scope: !984)
!996 = distinct !DISubprogram(name: "Demo1BobInitModeAction", scope: !3, file: !3, line: 45, type: !997, scopeLine: 49, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !654)
!997 = !DISubroutineType(types: !998)
!998 = !{null, !81, !999}
!999 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1000, size: 64)
!1000 = !DISubroutineType(types: !1001)
!1001 = !{!53, null}
!1002 = !DILocalVariable(name: "Controller", arg: 1, scope: !996, file: !3, line: 46, type: !81)
!1003 = !DILocation(line: 46, column: 29, scope: !996)
!1004 = !DILocalVariable(name: "Data", arg: 2, scope: !996, file: !3, line: 47, type: !999)
!1005 = !DILocation(line: 47, column: 30, scope: !996)
!1006 = !DILocation(line: 50, column: 5, scope: !996)
!1007 = !DILocation(line: 50, column: 3, scope: !996)
!1008 = !DILocation(line: 51, column: 1, scope: !996)
