#include <stdio.h>

int is_prime(int n);

int main() {
	int prime = 1;
	int num;

	printf("Enter a cool number: ");
	scanf("%d", &num);
	printf("\n");

	prime = is_prime(num);

	if (prime == 0) {
		printf("Your cool number is not prime!\n");
	}
	else {
		printf("Your cool number is prime!\n");
	}
	return 0;
}
