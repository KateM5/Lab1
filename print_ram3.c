#include <stdio.h>
extern unsigned char ram[];
extern void empty_ram(void);

int main() {
    empty_ram();     // calling assembly function
    printf("RAM contents from 50H to 58H: \n");

    for (int i = 0x50; i <= 0x58; i++) {       // looping through filled memory addresses
        printf("%02X ", ram[i]);               // %02X - prints value in array as 2-digit Hex
    }

    printf("\n");
    return 0;
}