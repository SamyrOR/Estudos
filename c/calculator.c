#include <stdio.h>
#include <ctype.h>
#include <stdbool.h>

int main() {

	char operator;
	double num1;
	double num2;
	double result;

	printf("\nEnter an operator (+ - * /): ");
	scanf("%c", &operator);

	printf("\nEnter number 1: ");
	scanf("%lf", &num1);

	printf("\nEnter number 2: ");
	scanf("%lf", &num2);
	
	switch(operator) {
		case '+':
			result = num1 + num2;
			break;
		case '-':
			result = num1 - num2;
			break;
		case '*':
			result = num1 * num2;
			break;
		case '/':
			result = num1 / num2;
			break;
		default:
			printf("%c is not a valid operator", operator);
			return 0;
	};

	printf("\nThe result is: %.3lf ", result);

	return 0;
};

