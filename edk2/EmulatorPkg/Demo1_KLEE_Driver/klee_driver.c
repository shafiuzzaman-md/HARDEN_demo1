#include "klee/klee.h"
#include "../Demo1_Bob/Demo1_Bob.c"
#include <stdio.h>
#include <stdlib.h>

#define MEMORY_SIZE 1000
// BobKey
DEMO1_ACCESS_KEY   *AccessKeyPtr;

void ScanMemoryForKey(UINTN read_magic) {
  char *addr;
  DEMO1_ACCESS_KEY *data;
  size_t size;
  
  // Allocate memory
  size = sizeof(read_magic);
  data = (DEMO1_ACCESS_KEY*) malloc(sizeof(DEMO1_ACCESS_KEY));
  addr = (char*) malloc(MEMORY_SIZE);

    
  // Set symbolic values and constraints
  klee_make_symbolic(addr, MEMORY_SIZE, "addr");
  klee_assume(data->access_key_store[1] != 0);
  
  //Run symbolic execution
  if(Demo1BobDataProvider(NULL, addr, (VOID**)&data, size) == EFI_SUCCESS)
  {
    if (data->access_key_store[0] == read_magic) {
          printf("read_magic: %llx\n", read_magic);
          printf("data->access_key_store[0]: %llx\n", data->access_key_store[0]);
          printf("data->access_key_store[1]: %llx\n", data->access_key_store[1]);
          klee_assert(0 && "bobKey identified");
    }
  }
  // Free the dynamically allocated memory
  free(addr);
  free(data);
}


void scan_memory(){
   // Allocate memory for gLoadImage
  gLoadImage = (EFI_LOADED_IMAGE_PROTOCOL *)malloc(sizeof(EFI_LOADED_IMAGE_PROTOCOL));

  // Make gLoadImage symbolic
  klee_make_symbolic(gLoadImage, sizeof(EFI_LOADED_IMAGE_PROTOCOL), "gLoadImage");

  AccessKeyPtr = &bobKey;
  AccessKeyPtr->access_key_store[0]=rand();
  UINTN read_magic = (ACCESS_KEY_MAGIC << MAGIC_SIZE) + READ_ACCESS;
  AccessKeyPtr->access_key_store[1] = read_magic;

  ScanMemoryForKey(read_magic);
}

int main()
 {
  scan_memory();

  return 0;
}