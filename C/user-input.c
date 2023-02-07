#include <stdio.h>
#include <string.h>

int main() {

	char name[25]; //bytes
	int age;
	
	printf("What's your name?\n");
	fgets(name, 25, stdin);
	name[strlen(name)-1] = '\0';
	//scanf("%s", &name);

	printf("How old are you?\n");
	scanf("%d", &age);

	printf("%s, You are %d years old", name, age);

	return 0;
};

