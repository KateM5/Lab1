.section .bss
.globl ram          # making ram a global function
.lcomm ram, 256     # reserves 256 bytes of RAM

.section .text
.globl fill_ram2     # make funx visiable to C program

fill_ram2:
    movb $0xFF, %al         # putting hex value into regist al
    movq $ram+0x50, %rbx    # putting address of ram+0x50 into register ebx

    movb %al, (%rbx)          # indirect assignment of value into RAM 0x50
    incq %rbx               # increments address

    movb %al, (%rbx)
    incq %rbx

    movb %al, (%rbx)
    incq %rbx

    movb %al, (%rbx)
    incq %rbx

    movb %al, (%rbx)
    incq %rbx

    movb %al, (%rbx)
    incq %rbx

    movb %al, (%rbx)
    incq %rbx

    movb %al, (%rbx)
    incq %rbx

    movb %al, (%rbx)
    incq %rbx

    movb %al, (%rbx)
    incq %rbx

    ret

.section .note.GNU-stack,"",@progbits