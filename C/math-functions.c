#include <stdio.h>
#include <math.h>

int main() {
	
	double A = sqrt(9);
	double B = pow(2,4);
	int C = round(3.14);
	int D = ceil(3.14);
	int E = floor(3.99);
	double F = fabs(-100);
	double G = log(3);
	double H = sin(45);
	double I = cos(45);
	double J = tan(45);
	
	printf("\n%.3lf - sqrt", A);
	printf("\n%.3lf - pow", B);
	printf("\n%d - round", C);
	printf("\n%d - ceil", D);
	printf("\n%d - floor", E);
	printf("\n%.3lf - fabs", F);
	printf("\n%.3lf - log", G);
	printf("\n%.3lf - sin", H);
	printf("\n%.3lf - cos", I);
	printf("\n%.3lf - tan", J);

	return 0;
};

