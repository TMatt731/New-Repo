# Worksheet1
Worksheet 1 OS


For Task 1, I created a simple an assembly program (task1.asm) that adds two integers stored in global memory and prints the result using the print_int function from asm_io.asm. I defined the values a = 5 and b = 7 in the .data section, then implemented the asm_main function, which loads a into eax, adds b, and prints the final value. I compiled the assembly files using NASM and compiled the C driver using GCC with the -m32 flag, then linked all object files to produce an executable called task1. Running the program  printed the value 12, meaning it worked corrected. yuh yuh we changing 17:38