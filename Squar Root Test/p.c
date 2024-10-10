#include <stdio.h>

int main() {

	int x = 1, n = 20000, temp, prev = -1;

	while ( x != prev ) {
		prev = x;
		x = (x+n/x)/2;
	}

	printf("the square root of %i is equal to around %i\n", n, x);
	
}
