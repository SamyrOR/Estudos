#include <stdio.h>
#include <stdbool.h>

int main() {
	
	char a = 'C';					//single character %c
	char b[] = "Samyr";				//array of characters %s

	float c = 3.141592;				//4 byres (32 bits of precicion) 6 - 8 digits %f
	double d = 3.1415922653589793;	//8 bytes (64 bits of precision) 15 - 16 digits %lf

	bool e = true;					//1 byte (true or false) %d

	char f = 100;					//1 byte (-128 to +127) %d or %d, if displayed like d will bel 100, otherwise, if displayed with %c will be ASCII table correspondent to 100 
	unsigned char g = 255;			//1 byte (0 to +255) %d or %c

	short h = 32767;				//2 bytes (-32,768 to +32,767) %d
	unsigned short i = 65535; 		//2 bytes (0 to +65,535) %d

	int j = 2147483647;				//4 bytes (-2,147,483,648 to +2,147,483,547) %d
	unsigned int k = 4294967295;	//4 bytes (0 to + 4,249,967,295) %u

	long long int l = 9223372036854775807; 				//8 bytes (-9 quitillion to +9 quintillion) %lld 
	unsigned long long int m = 18446744073709551615U;	//8 bytes (0 to +18 quintillion) %llu 
	
	return 0;
};

