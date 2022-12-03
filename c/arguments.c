#include <stdio.h>

void birthday(char name[], int age) {

	printf("\n Happy birthday dear %s!", name);
	printf("\n You are %d years old!", age);

}

int main() {

	char name[] = "Samyr";
	int age = 27;

	birthday(name, age); 

 return 0;
}
