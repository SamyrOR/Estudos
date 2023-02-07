#include <stdio.h>
#include <string.h>

typedef char user[25];
typedef struct { 
	char name[25];
	char password[12];
	int id;
} User;

int main() {

	user user1 = "Samyr";
	User user2 = {"O", "pwd123", 1557};
	User user3 = {"Oi", "pwd1234", 15574};

	return 0;
}
