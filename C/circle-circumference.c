#include <stdio.h>
#include <math.h>

int main() {
	
	const double PI = 3.14159;
	int radius;
	printf("Enter the radius of a circle: ");
	scanf("%d", &radius);
	int diameter = radius * 2;
	double circumference = diameter * PI;
	double area = PI * radius * radius;
	printf("The circumference is: %.3lf", circumference);
	printf("\nThe area  is: %.3lf", area);

	return 0;
};

