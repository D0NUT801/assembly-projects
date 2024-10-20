#include <stdio.h>
#include <stdlib.h>

int main(int argc, char *argv[]) {

	if (argc != 2){
		printf("Usage: make clang x=<value>");
		exit(0);
	}

	int x = 1, n, temp, prev = -1;

	n = atoi(argv[1])*10000;

	while ( x != prev ) {
		prev = x;
		x = (x+n/x)/2;
	}
	
	n = n/10000;

	temp = x-((x/100)*100);

	x = (x/100);
	
	printf("the square root of %i is equal to around %i.%02i\n", n, x, temp);
	
}
