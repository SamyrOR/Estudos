#include <stdio.h>
#include <ctype.h>
#include <stdbool.h>

int main() {
		
	char unit;
	float temp;

	printf("\nIs the temperature in (F) or (C)?: ");
	scanf("%c", &unit);

	unit = toupper(unit);

	if(unit != 'C' && unit != 'F') {
		printf("\n %c is not a valid unit of measurement", unit);
		return 0;
	}
	if(unit == 'C') {
		printf("\nEnter the temp in Celsius: ");
		scanf("%f", &temp);
		temp = (temp * 9 / 5) + 32;
		printf("\nThe temp in Farenheit is: %.1f", temp);
		return 0;
	}
	printf("\nEnter the temp in Fahrenheit: ");
	scanf("%f", &temp);
	temp = (temp - 32) * .5556;
	printf("\nThe temp in Celsius is: %.1f", temp);
	
	return 0;
};

