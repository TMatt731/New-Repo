%include "asm_io.inc"

segment .bss
    times_val resd 1    ; reserve space for integer input

segment .text
    global asm_main

asm_main:
    ; Ask for number of times
    mov eax, msg_times
    call print_string
    call read_int
    mov [times_val], eax     ; store the number

    ; Check if number is between 50 and 100
    mov eax, [times_val]
    cmp eax, 50
    jl too_small
    cmp eax, 100
    jg too_large

    ; Print welcome message that many times
    mov ecx, [times_val]    ; counter
print_loop:
    mov eax, msg_welcome
    call print_string
    loop print_loop

    ret

too_small:
    mov eax, err_small
    call print_string
    ret

too_large:
    mov eax, err_large
    call print_string
    ret

segment .data
msg_times    db "Enter number of times (51-99): ", 0
msg_welcome  db "Welcome! ", 0
err_small    db "Number too small.", 0
err_large    db "Number too large.", 0

