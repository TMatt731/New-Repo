#include <stdio.h>
#include <stdint.h>

extern void asm_print_name(char* name, int32_t times);

int main() {
    char name[100];
    int times;

    // Ask for number of times
    printf("Enter number of times (51-99): ");
    scanf("%d", &times);

    if (times < 51) {
        printf("Number too small.\n");
        return 0;
    }
    if (times > 99) {
        printf("Number too large.\n");
        return 0;
    }

    // Ask for name
    printf("Enter your name: ");
    scanf("%s", name);

    // Call assembler function
    asm_print_name(name, times);

    return 0;
}
