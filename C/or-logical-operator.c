#include <stdio.h>
#include <ctype.h>
#include <stdbool.h>

int main() {

	float temp = -199;

	if(temp <= 0 || temp >= 30) {
		printf("\nThe weather is bad!");
	} else {
		printf("\nThe weather is good!");
	};

	return 0;
};

