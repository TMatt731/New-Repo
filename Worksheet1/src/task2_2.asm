%include "asm_io.inc"

segment .data
array_size equ 100

segment .bss
array resd array_size   ; reserve space for 100 integers

segment .text
global asm_main

asm_main:
    ; Initialize array with values 1..100
    mov ecx, array_size
    mov ebx, 1           ; value to store
    mov edi, array       ; pointer to array

init_loop:
    mov [edi], ebx
    add ebx, 1
    add edi, 4           ; move to next dword
    loop init_loop

    ; Sum the array
    mov ecx, array_size
    mov edi, array
    xor eax, eax         ; accumulator

sum_loop:
    add eax, [edi]
    add edi, 4
    loop sum_loop

    ; Print the sum
    call print_int
    call print_nl

    ret
