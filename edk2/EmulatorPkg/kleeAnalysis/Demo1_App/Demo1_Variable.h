/** @file

Module Name:

  Demo1_Variable.h

Abstract:

  Provides Set/Get Access Variable Functionality

Revision History: 0.1
**/

#ifndef _Demo1_Variable_H_
#define _Demo1_Variable_H_

#include<assert.h>
#include<string.h>
#include<stdlib.h>
#include<stdbool.h>
#include<stdio.h>
#include "Uefi.h"
#include "Library/DebugLib.h"
#include "Library/BaseLib.h"
#include "Library/BaseMemoryLib.h"
#include "Library/UefiDriverEntryPoint.h"
#include "Library/UefiBootServicesTableLib.h"
#include "Library/MemoryAllocationLib.h"
#include "Library/PrintLib.h"
#include "Library/UefiLib.h"

#include "Library/PcdLib.h"
#include "PiDxe.h"
#include "Protocol/VariableWrite.h"
#include "Protocol/FaultTolerantWrite.h"
#include "Protocol/FirmwareVolumeBlock.h"
#include "Protocol/Variable.h"
#include "Protocol/VariableLock.h"
#include "Protocol/VarCheck.h"
#include "Library/PcdLib.h"
#include "Library/HobLib.h"
#include "Library/UefiDriverEntryPoint.h"
#include "Library/DxeServicesTableLib.h"
#include "Library/UefiRuntimeLib.h"
#include "Library/DebugLib.h"
#include "Library/BaseMemoryLib.h"
#include "Library/UefiBootServicesTableLib.h"
#include "Library/UefiLib.h"
#include "Library/BaseLib.h"
#include "Library/SynchronizationLib.h"
#include "Library/MemoryAllocationLib.h"
#include "Library/AuthVariableLib.h"
#include "Library/VarCheckLib.h"
#include "Library/VariableFlashInfoLib.h"
#include "Library/SafeIntLib.h"
#include "Guid/GlobalVariable.h"
#include "Guid/EventGroup.h"
#include "Guid/VariableFormat.h"
#include "Guid/SystemNvDataGuid.h"
#include "Guid/FaultTolerantWrite.h"
#include "Guid/VarErrorFlag.h"

#include "Variable.h"
#include "Demo1_Access_Key.c"
#include "klee/klee.h"


#define LOCKED    1
#define UNLOCKED  0

#endif