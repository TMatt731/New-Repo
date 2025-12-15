# Worksheet1
Worksheet 1 OS


For Task 1, I created a simple an assembly program (task1.asm) that adds two integers stored in global memory and prints the result using the print_int function from asm_io.asm. I defined the values a = 5 and b = 7 in the .data section, then implemented the asm_main function, which loads a into eax, adds b, and prints the final value. I compiled the assembly files using NASM and compiled the C driver using GCC with the -m32 flag, then linked all object files to produce an executable called task1. Running the program  printed the value 12, meaning it worked corrected. 

In Task 1.2, the program demonstrates basic user input and arithmetic in assembly. It first prints a prompt asking the user to enter a number, using the print_string function from asm_io.inc. It then reads an integer input via read_int, doubles the value by adding eax to itself, and prints the result using print_int, followed by a newline with print_nl. The program is called from a C driver (driver.c) containing main() that invokes asm_main().

In this task, (2.1) I implemented an assembly program that demonstrates loops and conditional statements in  assembly. The program prompts the user to enter a number between 51 and 99 and validates the input. If the number is outside this range, an appropriate error message is displayed. If the number is valid, the program prints a welcome message the specified number of times.
It works by:
Prompt the user for a number using print_string and read the integer with read_int.
Check the value:
If less than 51, print "Number too small."
If greater than 99, print "Number too large."
If valid, store the number as a counter and use a loop to print "NAME" the specified number of times.
The program uses asm_io.inc and asm_io.asm to handle input and output operations.

Task 2.2 initializes an array of 100 integers with values from 1 to 100 and calculates their sum using  assembly.
How it works:
Array Initialization: A loop fills the array (array) with values 1 through 100 using registers ecx (loop counter), ebx (current value), and edi (array pointer).
Summing Values: Another loop iterates through the array, adding each value to eax, which acts as the accumulator.
Output: The total sum is printed using print_int from asm_io.inc, followed by a newline with print_nl.

mov – to set registers and memory locations.

loop – for iterating over array elements.

add – to increment values and calculate the sum.

xor eax, eax – to reset the accumulator before summing.


This program extends Task 2.2 by asking the user for a start and end index, then summing the elements of an array in that range. It also checks that the range is valid.


An array of 100 integers is initialized with values from 1 to 100.

The program prompts the user for a start index and an end index (1–100).
It validates the input:
The start index must be at least 1.
The end index must be no less than the start index.
The end index must not exceed 100.

If the range is valid, the program calculates the sum of the array elements between the start and end indices (inclusive) and prints the result using print_int and print_nl.

If the range is invalid, an error message is printed: "Invalid range!".

This file was deleted previously somehow so im trying to push it again. 
