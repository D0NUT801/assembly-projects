#include <stdio.h>
#include <time.h>

int main() {

    int x=time(0), y = 0, c = 0;

    while (c < 100) {

        c++;

        printf("%10u\t%32b\n", x, x);

        y = x;

        y  = y ^ (x << 3);

        y  = y ^ (y >> 7);

        y  = y ^ (y << 5);

        x = y;

        //usleep(250*1000);
    }
    
    printf("\n");
	return 0;
}
