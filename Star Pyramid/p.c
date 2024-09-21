#include <stdio.h>

int main() {
    for (int i = 1; i < 100; i+=2) {
        for (int j = 0; j < (100-i)/2; j++) {
            printf(" ");
        }
        for (int j = 0; j < i; j++) {
            printf("*");
        }
        printf("\n");
    }
    return 0;
}