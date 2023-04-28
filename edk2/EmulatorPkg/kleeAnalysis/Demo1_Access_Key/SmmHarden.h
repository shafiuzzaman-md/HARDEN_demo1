/** @file

Copyright (c) 2007 - 2017, Intel Corporation. All rights reserved. "BR "
SPDX-License-Identifier: BSD-2-Clause-Patent

Module Name:

  Example1_Driver_Lockbox.h

Abstract:


Revision History


**/

#ifndef _SMM_HARDEN_H_
#define _SMM_HARDEN_H_
#include <string.h>
#include <assert.h>
#include <stdio.h>
#include  "Uefi.h"
#include  "Library/BaseLib.h"

EFI_STATUS
EFIAPI
SmmHardenVariableManager (
  IN EFI_HANDLE  DispatchHandle,
  IN CONST VOID  *Context         OPTIONAL,
  char    *CommBuffer,
  int CommBufferSize 
);

EFI_STATUS
EFIAPI
SmmHardenBootService (
  IN EFI_HANDLE  DispatchHandle,
  IN CONST VOID  *Context         OPTIONAL,
  IN OUT VOID    *CommBuffer      OPTIONAL,
  IN OUT UINTN   *CommBufferSize  OPTIONAL
);

EFI_STATUS SmmHardenGetVariable(
  IN  CHAR16    *VariableName,
  OUT UINT32    *VariableValue
);

EFI_STATUS SmmHardenSetVariable(
  IN CHAR16     *VariableName,
  IN UINT32     VariableValue
);

VOID
SmmHardenCommunicateSMM(
  IN EFI_GUID  Guid,
  IN VOID     *Data,
  IN UINTN    DataSize
);
#endif
