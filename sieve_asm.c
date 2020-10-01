#include <stdio.h>

int is_prime(int n);

int main() {
	int num;

	printf("Enter a cool number: ");
	scanf("%d", &num);

	if (is_prime(num)) {
		printf("Your cool number is prime!\n");
	}
	else {
		printf("Your cool number is not prime!\n");
	}

	return 0;
}
