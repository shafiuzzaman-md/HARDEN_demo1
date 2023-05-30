#include "klee/klee.h"
#include "../Demo1_Bob/Demo1_Bob.c"
#include <stdio.h>
#include <stdlib.h>

#define MEMORY_SIZE 1000


void ScanMemoryForKey(UINTN read_magic) {
    DEMO1_ACCESS_KEY *addr;
    VOID *dataptr;
    size_t size;
    
    // Allocate memory for data(Dest)
    dataptr = (char*) malloc(size);;
    addr = (DEMO1_ACCESS_KEY*) malloc(MEMORY_SIZE);

    // Set symbolic values and constraints for addr and size
    klee_make_symbolic(addr, MEMORY_SIZE, "addr");
    klee_make_symbolic(&size, sizeof(UINTN), "size");
    klee_assume(addr->access_key_store[1] == read_magic);

    // Run symbolic execution
    if (Demo1BobDataProvider(NULL, addr, &dataptr, size) == EFI_SUCCESS)
    {
         klee_assert(memcmp((VOID *)dataptr, (VOID *)&bobKey, sizeof(bobKey)) != 0);
         printf("addr->access_key_store[0]: %x\n", addr->access_key_store[0]);
         printf("addr->access_key_store[1]: %llx\n", addr->access_key_store[1]);

    }
    
    // Free the dynamically allocated memory
    free(addr);
    free(dataptr);
}



void scan_memory(){
   // Allocate memory for gLoadImage
  gLoadImage = (EFI_LOADED_IMAGE_PROTOCOL *)malloc(sizeof(EFI_LOADED_IMAGE_PROTOCOL));

  // Make gLoadImage symbolic
  klee_make_symbolic(gLoadImage, sizeof(EFI_LOADED_IMAGE_PROTOCOL), "gLoadImage");

  // Generate BobKey with read access
  DEMO1_ACCESS_KEY   *AccessKeyPtr;
  AccessKeyPtr = &bobKey;
  AccessKeyPtr->access_key_store[0]=rand();
  UINTN read_magic;
  read_magic = (ACCESS_KEY_MAGIC << MAGIC_SIZE) + READ_ACCESS;
  AccessKeyPtr->access_key_store[1] = read_magic;

  printf("KEY_MAGIC: %x\n", (UINT8 *)AccessKeyPtr->access_key_store[0]);
  printf("READ_MAGIC: %llx\n", AccessKeyPtr->access_key_store[1]);

  ScanMemoryForKey(read_magic);
}

int main()
 {
  scan_memory();

  return 0;
}