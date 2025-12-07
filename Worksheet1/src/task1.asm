%include "asm_io.inc"

segment .data
    a dd 5
    b dd 7

segment .text
    global asm_main

asm_main:
    mov eax, [a]
    add eax, [b]
    call print_int
    call print_nl
    ret

