#include <stdio.h>

int main() {
    
    int arr[10] = {10, 9, 8, 7, 6, 5, 4, 3, 2, 1};
    int temp;
    
    /*
    for i = 0 to n-1:
    for j = 0 to n-i-2:
        if array[j] > array[j+1]:
            swap(array[j], array[j+1])
    */

    for (int i = 0; i < 10; i++) {
        for (int j = 0; j < 10-i-1; j++) {
            if (j[arr] > (j+1)[arr]) {
                temp = j[arr];
                j[arr] = (j+1)[arr];
                (j+1)[arr] = temp;
            }
            for (int k = 0; k < 10; k++) {
                printf("%2u ", k[arr]);
            }
            printf("\n");
            usleep(25000);
        }
    }
	
    printf("\n");

    return 0;
}

