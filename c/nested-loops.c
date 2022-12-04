#include <stdio.h>
	
int main() {

	int rows;
	int columns;
	char symbol;

	printf("Enter the number of rows: ");
	scanf("%d", &rows);

	printf("Enter the number of columns: ");
	scanf("%d", &columns);

	scanf("%*[^\n]%*1[\n]");

	printf("Enter the number of columns: ");
	scanf("%c", &symbol);
	
	for(int i = 0; i < rows; i++) {
	
		for(int j = 0; j < rows; j++) {
			printf("%c", symbol);
		}

		printf("\n");

	}

	return 0;
}

