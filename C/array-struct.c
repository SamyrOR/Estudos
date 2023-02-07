#include <stdio.h>
#include <string.h>

typedef struct {
	char name[25];
	double gpa;
} Student;

int main() {
	
	Student student1 = {"Spongebob", 2.5};
	Student student2 = {"Patrick", 0.5};
	Student student3 = {"Sandy", 5.0};
	Student student4 = {"Squiward", 3.0};

	Student students[] = {student1, student2, student3, student4};
	for(int i = 0; i < sizeof(students)/sizeof(students[0]); i++) {
		printf("%-12s\n", students[i].name);	
		printf("%0.2f\n", students[i].gpa);	
	}
	return 0;
 }
