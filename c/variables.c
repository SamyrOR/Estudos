#include <stdio.h>

int main() {
	//int for integer
	int x; //declaration
	int y = 321; // declaration + initialization
	
	int age = 26; //integer
	float gpa = 2.05; //floating ponit number
	char grade = 'C'; //single character
	char name[] = "Samyr"; // array of chacaracters

	printf("Hello %s!\nYou are %d years old", name, age);
	printf("Your average grade is %c\nYour gpa is %f\n", grade, gpa);

	return 0;
};

