%include "asm_io.inc"

segment .data
    prompt db "Enter a number: ", 0

segment .bss
    ; no variables needed here

segment .text
    global asm_main

asm_main:
    ; Print the prompt
    mov eax, prompt
    call print_string

    ; Read integer from user
    call read_int
    ; result returned in eax

    ; Multiply by 2
    add eax, eax

    ; Print result
    call print_int
    call print_nl

    ret
