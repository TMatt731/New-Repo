# Makefile for Worksheet1 - UFCFWK-15-2

# Compiler and assembler
NASM = nasm
NASMFLAGS = -f elf
GCC = gcc
CFLAGS = -m32 -c
LDFLAGS = -m32

# Executables
EXEC = task1 task1.2 task2_1 task2_2 task2_3

# Default target: build all
all: $(EXEC)

# -----------------------------
# Build executables
# -----------------------------
task1: src/driver.o src/task1.o src/asm_io.o
	$(GCC) $(LDFLAGS) src/driver.o src/task1.o src/asm_io.o -o task1

task1.2: src/driver.o src/task1.2.o src/asm_io.o
	$(GCC) $(LDFLAGS) src/driver.o src/task1.2.o src/asm_io.o -o task1.2

task2_1: src/driver.o src/task2_1.o src/asm_io.o
	$(GCC) $(LDFLAGS) src/driver.o src/task2_1.o src/asm_io.o -o task2_1

task2_2: src/driver.o src/task2_2.o src/asm_io.o
	$(GCC) $(LDFLAGS) src/driver.o src/task2_2.o src/asm_io.o -o task2_2

task2_3: src/driver.o src/task2_3.o src/asm_io.o
	$(GCC) $(LDFLAGS) src/driver.o src/task2_3.o src/asm_io.o -o task2_3

# -----------------------------
# Build object files
# -----------------------------
src/driver.o: src/driver.c
	$(GCC) $(CFLAGS) src/driver.c -o src/driver.o

src/task1.o: src/task1.asm
	$(NASM) $(NASMFLAGS) src/task1.asm -o src/task1.o

src/task1.2.o: src/task1.2.asm
	$(NASM) $(NASMFLAGS) src/task1.2.asm -o src/task1.2.o

src/task2_1.o: src/task2_1.asm
	$(NASM) $(NASMFLAGS) src/task2_1.asm -o src/task2_1.o

src/task2_2.o: src/task2_2.asm
	$(NASM) $(NASMFLAGS) src/task2_2.asm -o src/task2_2.o

src/task2_3.o: src/task2_3.asm
	$(NASM) $(NASMFLAGS) src/task2_3.asm -o src/task2_3.o

src/asm_io.o: src/asm_io.asm
	$(NASM) $(NASMFLAGS) src/asm_io.asm -o src/asm_io.o

# -----------------------------
# Clean up
# -----------------------------
clean:
	rm -f src/*.o $(EXEC)
