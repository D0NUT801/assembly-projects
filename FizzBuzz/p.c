#include <stdio.h>

int main() {

    int a = 0, b = 0, c = 0, d = 0;

	for (a = 1; a <= 100; ++a) {
		
        d = 1;

        b++;
        
        if (b == 3) {
            b = 0;
            d = 0;
            printf("fizz");
        }

        c++;

        if ( c == 5 ) {
            c = 0;
            d = 0;
            printf("buzz");
        }

        if (d != 0) {
            printf("%i", a);
        }

		printf("\n");
        usleep(100*1000);
	}
	
}
