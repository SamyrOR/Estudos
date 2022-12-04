#include <stdio.h>
#include <string.h>
	
void getName(char * teste) {
	printf("\nWhat's your name?: ");
	fgets(teste, 25, stdin);
	teste[strlen(teste) - 1] = '\0';
}

int main() {

	char name[25];

	getName(name);

	while(strlen(name) == 0) {
		printf("\nYou did not enter your name");
		getName(name);
	}

	printf("Hello %s", name);

 return 0;
}

