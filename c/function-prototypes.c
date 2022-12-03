#include <stdio.h>


void hello(char name[], int age);

int main() {

	char name[] = "Samyr";
	int age = 27;

	hello(name); 

 return 0;
}

void hello(char name[], int age) {

	printf("\n Hello  %s!", name);
	printf("\n You are %d years old!", age);

}
