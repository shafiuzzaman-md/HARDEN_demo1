#include <stdio.h>
#include <string.h>
#include "klee/klee.h"

void modifyValue(void *ptr);

int main() {
    int number = 1;

    printf("Before modification: %d\n", number);

    // Pass the address of 'number' to the function
    modifyValue(&number);

    printf("After modification: %d\n", number);

    return 0;
}

void modifyValue(void *ptr) {
    int newValue = 0;
    memcpy(ptr, &newValue, sizeof(int));
}
