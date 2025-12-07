%include "asm_io.inc"

segment .data
array_size equ 100
msg_start  db "Enter start index (1-100): ",0
msg_end    db "Enter end index (1-100): ",0
err_invalid db "Invalid range!",0

segment .bss
array resd array_size
start_idx resd 1
end_idx   resd 1

segment .text
global asm_main

asm_main:
    ; Initialize array 1..100
    mov ecx, array_size
    mov ebx, 1
    mov edi, array
init_loop:
    mov [edi], ebx
    add ebx, 1
    add edi, 4
    loop init_loop

    ; Ask user for start index
    mov eax, msg_start
    call print_string
    call read_int
    mov [start_idx], eax

    ; Ask user for end index
    mov eax, msg_end
    call print_string
    call read_int
    mov [end_idx], eax

    ; Validate range: 1 <= start <= end <= 100
    mov eax, [start_idx]
    cmp eax, 1
    jl invalid_range
    cmp eax, [end_idx]
    jg invalid_range
    cmp dword [end_idx], array_size
    jg invalid_range

    ; Compute sum
    mov ecx, [end_idx]
    sub ecx, [start_idx]
    add ecx, 1            ; number of elements in range
    mov eax, 0            ; accumulator
    mov ebx, [start_idx]
    dec ebx               ; adjust to 0-based index
    mov edi, array
    mov edx, ebx
    shl edx, 2            ; multiply by 4 for byte offset
    add edi, edx          ; point to start of range

sum_loop:
    add eax, [edi]
    add edi, 4
    loop sum_loop

    call print_int
    call print_nl
    ret

invalid_range:
    mov eax, err_invalid
    call print_string
    ret
