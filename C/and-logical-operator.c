#include <stdio.h>
#include <ctype.h>
#include <stdbool.h>

int main() {

	float temp = 25;
	bool sunny = false;

	if(temp >= 0 && temp <= 30 && sunny) {
		printf("\nThe weather is good!");
	} else {
		printf("\nThe weather is bad!");
	};

	return 0;
};

