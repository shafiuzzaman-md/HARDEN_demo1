#include "klee/klee.h"
#include "Demo1_Bob.c"
// GLOBALS
DEMO1_ACCESS_KEY bobKey;

void scan_memory(){
    char *data; //Pointer to the where the allocated destination buffer will be stored
    VOID* addr = &bobKey; //Pointer within Bob from which to read
     CHAR8 readValue;
    UINTN size = sizeof(addr); //Length of the data to read
    if(Demo1BobDataProvider(NULL, addr, (VOID **)&data, sizeof(addr)) == EFI_SUCCESS){
       //printf("data retreived from Demo1BobDataProvide: %s\n", data);
       klee_assert(strncmp((char*)&bobKey, data, strlen(data) != 0));
    }
}

int main()
{
  DEMO1_ACCESS_KEY   *AccessKeyPtr;
  AccessKeyPtr = &bobKey;
  //Generate Accesskey
  AccessKeyPtr->access_key_store[0]=rand();
  AccessKeyPtr->access_key_store[1] = (ACCESS_KEY_MAGIC << MAGIC_SIZE) + WRITE_ACCESS;
 // printf("bobkey: %s\n", (char *)&bobKey);
  scan_memory();
  return 0;
}