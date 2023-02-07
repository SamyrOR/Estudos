#include <stdio.h>
void printArray(int array[], int size);
void printArrayChar(char array[], int size);
void sort(int array[], int size) {

	for(int i = 0; i < size - 1; i++) {
		for(int j = 0; j < size - 1; j++) {
			if(array[j] > array[j+1]) {
				int temp = array[j];
				array[j] = array[j+1];
				array[j+1] = temp;
			}
		}
		printArray(array, size);
		printf("\n");
	}


}
void sortChars(char array[], int size) {

	for(int i = 0; i < size - 1; i++) {
		for(int j = 0; j < size - 1; j++) {
			if(array[j] > array[j+1]) {
				int temp = array[j];
				array[j] = array[j+1];
				array[j+1] = temp;
			}
		}
		printArrayChar(array, size);
		printf("\n");
	}


}

void printArrayChar(char array[], int size) {
	for(int i = 0; i < size; i++) {
		printf("%c ", array[i]);
	}
}
	
void printArray(int array[], int size) {
	for(int i = 0; i < size; i++) {
		printf("%c ", array[i]);
	}
}
	
int main() {

	int array[] = {9, 1, 8, 2, 7, 3, 6, 4, 5};	
	int size = sizeof(array)/sizeof(array[0]);
	char arrayChar[] = {'C', 'F', 'G', 'B', 'E', 'D', 'A'};	
	int sizeChar = sizeof(arrayChar)/sizeof(arrayChar[0]);

int	sort(array, size);
	sortChars(arrayChar, sizeChar);
	return 0;
}

