.section .bss
.globl ram          # making ram a global function
.lcomm ram, 256     # reserves 256 bytes of RAM

.section .text
.globl sum     # make funx visiable to C program

sum:
    movl $1, %ebx       # starting index (i=1)
    movl $10, %ecx      # counter variable
    movl $0, %eax       # sum variable

    loop:       # starting the loop
        addl %ebx, %eax     # adds current number in sequence to total
        incl %ebx           # icnrements indexer
    loop loop               # decrement %ecx

    mov  %eax, (ram+0x50)

    ret
.section .note.GNU-stack,"",@progbits
