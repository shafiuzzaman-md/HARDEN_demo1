#include "Uefi.h"
#include "Library/UefiLib.h"
#include "Library/UefiBootServicesTableLib.h"
#include "Protocol/LoadedImage.h"
#include "Protocol/ShellParameters.h"

#include "Protocol/Shell.h"

//#include "Demo1_Variable.c"
#include "Demo1_Bob.c"
#include "Demo1_Alice.c"
#include<assert.h>
#include<string.h>
#include<stdlib.h>
#include<stdbool.h>
#include<stdio.h>
Demo1_Access_Key_PROTOCOL *AccessKeyProtocol;
Demo1_Bob_PROTOCOL *BobProtocol;

#define EXAMPLEAPP_VARNAME   "ExampleVar"

void initialization()
{
    //================================================================//
    //================================================================//
    ///////=========Protocols of each driver which can be accessed====//
    /////////Alice Driver
    //////////1. Demo1AliceProvideData
    //////////2. Demo1_Ready_To_Run_Event (Event)
    /////////Bob Driver
    //////////1. Demo1BobDataProvider
    /////////Variable Driver
    /////////No functions will be accessed from this driver, need the system table to communicate with this
    /////////Access key Driver
    /////////1. Demo1GenerateAccessKey
    /////////2. Demo1ValidateAccessKey
    /////////3. Demo1_Ready_To_Lock_Event (Event)
    //================================================================//
    //================================================================//
    ////Initialization of access key driver
    //////From Demo1AccessKeyInit
    //  masterKey = malloc(sizeof(DEMO1_ACCESS_KEY));
    // Demo1GenerateAccessKey(AccessKeyProtocol, NULL, TRUE, masterKey);
    //////Directly call the Demo1AccessKeyInit function
    EFI_HANDLE ImageHandle;
    EFI_SYSTEM_TABLE SystemTable;
    Demo1AccessKeyInit ( ImageHandle, &SystemTable);
    printf("Done with the initialization of Demo1AccessKeyInit\n");
    //Initialization of Alice driver
    Demo1AliceInit ( ImageHandle, &SystemTable);
    printf("Done with the initialization of Demo1AliceInit\n");
    //Initialization of Bob driver
    Demo1BobInit  ( ImageHandle, &SystemTable);
    printf("Done with the initialization of Demo1BobInit\n");
    ////Initialization of Variable driver
    //////Call mineInitNonVolatileVariableStore
    mineVariableModuleGlobal = malloc (sizeof (VARIABLE_MODULE_GLOBAL));
    mineInitNonVolatileVariableStore();
    printf("Done with the initialization of mineInitNonVolatileVariableStore\n");
}

int main()
{
    initialization();
    EFI_STATUS retval;
    BOOLEAN retbool;

    printf("Example App Started\r\n");

    /* Create Access Key Storage */
   
    DEMO1_ACCESS_KEY *my_access_key=malloc(sizeof(DEMO1_ACCESS_KEY));

    /* Locate Access Key Protocol */
   // gBS->LocateProtocol(&gDemo1AccessKeyProtocolGuid, NULL, (VOID *)&AccessKeyProtocol);

    /* Generate Access Key */
    printf("Call Generate Access Key\r\n");
    retval = Demo1GenerateAccessKey(AccessKeyProtocol, NULL, FALSE, my_access_key);
    if (retval != 0) {
        printf("Failed to generate access key\r\n");
        return EFI_ABORTED;
    }
    printf("I have an access key: (0x%016llx..%016llx) \r\n",
        my_access_key->access_key_store[0], my_access_key->access_key_store[1]);
    
    /* Validate Access Key */
    printf("Call Validate Access Key \r\n");
    Demo1ValidateAccessKey(AccessKeyProtocol, NULL, my_access_key, FALSE, &retbool);
    if (retbool == FALSE) {
        printf("Could not validate key\r\n");
        return EFI_ABORTED;
    }
    printf("I have a valid key\r\n");

//     /* Set Variable with Access Key */
//     printf("Call Set Access Variable \r\n");
//     UINTN ExampleVar_Value = 0xdeadbeef;
    
//     EFI_GUID  *VendorGuid;
//     EFI_STATUS Status  = mineVariableServiceSetVariable (
//         EXAMPLEAPP_VARNAME,
//         &VendorGuid,
//         EFI_VARIABLE_BOOTSERVICE_ACCESS | EFI_VARIABLE_RUNTIME_ACCESS | EFI_VARIABLE_NON_VOLATILE,
//         my_access_key,
//         sizeof(UINTN),
//         &ExampleVar_Value
//         );
//     if (EFI_ERROR (Status)) {
//         printf("Error in setting variable \n");
//        // DEBUG ((DEBUG_ERROR, "%a: variable '%s' could not be written - bailing!\n", __FUNCTION__, EXAMPLEAPP_VARNAME));
//         return Status;
//     }
//     printf("Set Access Variable Success %d \n", Status);

    /* Get Variable with Access Key */
    // printf("Call Get Access Variable \r\n");
    // UINTN   getExampleVar_Value = 0;
    // UINTN   BufferSize = sizeof(getExampleVar_Value);
    // // EFI_GUID  *VendorGuid;
    //  Status= mineVariableServiceGetVariable (
    //     EXAMPLEAPP_VARNAME,
    //     &VendorGuid,
    //     NULL,
    //     my_access_key,
    //     &BufferSize,
    //     &getExampleVar_Value
    //     );
    // if (EFI_ERROR (Status)) {
    //     printf("Error in getting variable \n");
    //    // DEBUG ((DEBUG_ERROR, "%a: variable '%s' could not be read - bailing!\n", __FUNCTION__, EXAMPLEAPP_VARNAME));
    //     return Status;
    // }
    // printf("Get Access Variable Success - 0x%08llx\r\n", getExampleVar_Value);

    printf("Example Complete\r\n");
    // Known key address for Bob so find get the key stored there
    // UINTN *Address = NULL;
    // UINTN Size = sizeof(DEMO1_ACCESS_KEY);
    // DEMO1_ACCESS_KEY *Data= malloc(Size);
    // //Loop through all of the address and save the key if the header matches a key header
    // for(UINTN addr = 0; addr < MAX_UINTN; addr += Size)
    // {
    //     EFI_STATUS Status = Demo1BobDataProvider(BobProtocol, (VOID *)addr, (VOID **)&Data, Size);
    //     if(Data->access_key_store[1] == 0xDEC0DEBABB1E10AD)
    //     {
    //         Address = (UINTN *)addr;
    //         Print(L"Found Bobs Key: (0x%016llx..%016llx) \r\n", Data->access_key_store[0], Data->access_key_store[1]);
    //         Print (L"Keys Address: 0x%016llx\n", Address);
    //         break;
    //     }
    // }
    // Change key from read to write
    DEMO1_ACCESS_KEY *my_fake_access_key=malloc(sizeof(DEMO1_ACCESS_KEY));
    // my_fake_access_key->access_key_store[0] =  my_access_key->access_key_store[0];
    // my_fake_access_key->access_key_store[1] =  my_access_key->access_key_store[1];
    // my_fake_access_key->access_key_store[1] = (ACCESS_KEY_MAGIC << MAGIC_SIZE) + WRITE_ACCESS;
    klee_make_symbolic(my_fake_access_key, sizeof(DEMO1_ACCESS_KEY), "my_fake_access_key");
    /* Validate Access Key */
    printf("-----------------------------------------------\n");
    printf("Call Validate my fake Access Key \r\n");
    EFI_STATUS retvalCheck = Demo1ValidateAccessKey(AccessKeyProtocol, NULL, my_fake_access_key, TRUE, &retbool);
    if (retbool == FALSE) {
        printf("Could not validate key\r\n");
        return EFI_ABORTED;
    }
    printf("I have a valid key\r\n");
    printf("Modified key to have write access\n");
    // klee_assert(my_access_key->access_key_store[1]==my_fake_access_key->access_key_store[1]);
    printf("-----------------------------------------------\n");
    UINTN ExampleVar_Value = 0;
    printf("Setting Alice mode variable to - 0x%08llx\r\n", ExampleVar_Value);
    UINTN BufferSize = sizeof(ExampleVar_Value);
    EFI_GUID  *gAliceVariableGuid;
    printf("---------------------------------------------------\n");
    printf("Calling mineVariableServiceSetVariable\n");
    klee_make_symbolic(&ExampleVar_Value, sizeof(ExampleVar_Value), "ExampleVar_Value");
    EFI_STATUS Status  = mineVariableServiceSetVariable (
        ALICEMODE_VARNAME,
        &gAliceVariableGuid,
        EFI_VARIABLE_BOOTSERVICE_ACCESS | EFI_VARIABLE_RUNTIME_ACCESS | EFI_VARIABLE_NON_VOLATILE,
        my_fake_access_key,
        BufferSize,
        &ExampleVar_Value
        );
    printf("---------------------------------------------------\n");
    if (EFI_ERROR (Status)) {
        printf("Error in changing the variable \n");
       // DEBUG ((DEBUG_ERROR, "%a: variable '%s' could not be written - bailing!\n", __FUNCTION__, ALICEMODE_VARNAME));
        return Status;
    }
   
    //klee_assert(!EFI_ERROR (Status) && (my_access_key==my_fake_access_key));

   // klee_assert(!EFI_ERROR (Status) && (ExampleVar_Value==1 || ExampleVar_Value==2));
    printf("Set Access Variable Success\r\n");
    return EFI_SUCCESS;
}
