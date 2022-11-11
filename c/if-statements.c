#include <stdio.h>
#include <math.h>

int main() {
	
	int age;	

	printf("Enter your age: ");
	scanf("%d", &age);

	if(age >= 18) { 
		printf("You're now signed up!");
	}
	else if(age == 0) { 
		printf("You can't sign up! You were just born!");
	}
	else if(age < 0) { 
		printf("You haven't been born yet!");
	}
	else {
		printf("You're too young to sign up!");
	}

	return 0;
};

