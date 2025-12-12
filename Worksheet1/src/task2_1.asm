%include "asm_io.inc"

segment .text
    global asm_print_name

; void asm_print_name(char* name, int times)
asm_print_name:
    push ebp
    mov ebp, esp

    mov ecx, [ebp+12]   ; times
    mov esi, [ebp+8]    ; pointer to name

print_loop:
    mov eax, esi
    call print_string
    call print_nl
    loop print_loop

    pop ebp
    ret
