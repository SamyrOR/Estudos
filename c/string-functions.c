#include <stdio.h>
#include <string.h>

int main() {

	char string1[] = "Samyr";
	char string2[] = "Code";

	//strlwr(string1);											//converts a string to lowercase
	//strupr(string1);											//converts a string to uppercase
	//strcat(string1, string2);									//appends string2 to end of string1
	//strncat(string1m string2, 1);								//appends n characters from string2 to string1
	//strcpy(string1, string2);									//copy string2 to string1 (replace the content of string1)
	//strcnpy(string1, string2, 4);								//copy n characters of string2 to string1

	//strset(string1, '?');										//sets all characters of a string to a given character
	//strnset(string1, 'x', 1);									//sets first n characters of a string to a given character
	//strrev(string1);											//reverses a string

	//int result = strlen(string1);								//return string length as int
	//int result = strcmp(string1, string2);					//string compare all characters (return 0 if equal != 0 if not)
	//int result = strcmp(string1, string2m 1);					//string compare n characters (return 0 if equal != 0 if not)
	//int result = strcmpi(string1, string2);					//string compare all (ignore case)
	//int result = strnicmp(string1, string2m 1);				//string compare n characters (ignore case)

	printf("%s", string1);
	printf("%s", string2);

 return 0;
}

