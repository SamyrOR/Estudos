#include <stdio.h>

int main() {
	
	int x = 5; 
	int y = 2;

	int a = x + y;
	int b = x - y;
	int c = x * y;
	float d = x / (float)  y;
	int f = x % y;

	printf("%d\n", a);
	printf("%d\n", b);
	printf("%d\n", c);
	printf("%.3f\n", d);
	printf("%d\n", f);
	x++;
	printf("%d\n", x);
	y--;
	printf("%d\n", x);

	return 0;
};

