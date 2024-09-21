#include <stdio.h>

int main() {

    unsigned int a = 1, b = 0, c = 0;

    while(a <= 0xFFFFFFF){
        printf("%u \n", a);
        c = a;
        a += b;
        b = c;
    }

    return 0;
}
