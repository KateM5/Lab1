#include <stdio.h>
extern unsigned char ram[];
extern void sum(void);

int main() {
    sum();     // calling assembly function
    printf("RAM sum from 50H to 58H: %d\n", ram[0x50]);

    return 0;
}