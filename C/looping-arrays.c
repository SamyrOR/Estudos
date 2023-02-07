#include <stdio.h>
	
int main() {

	double prices[] = {5.0, 10.0, 15.0, 25.0, 20.0};	

	for(int i = 0; i < sizeof(prices)/sizeof(prices[0]); i++) {
		printf("R$ %.2lf ", prices[i]);
	}

	return 0;
}

