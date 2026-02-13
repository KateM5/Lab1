#include <stdio.h>
extern unsigned char ram[];
extern void fill_ram1(void);

int main() {
    fill_ram1();     // calling assembly function
    printf("RAM contents from 50H to 58H: \n");

    for (int i = 0x50; i <= 0x58; i++) {       // looping through filled memory addresses
        printf("%02X ", ram[i]);               // %02X - prints value in array as 2-digit Hex
    }

    printf("\n");
    return 0;
}