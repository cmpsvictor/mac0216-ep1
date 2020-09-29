#include <stdio.h>

int is_prime(int n){
	int i;
	for (i = 2; i*i <= n; i++) {
		if (n % i == 0) {
 			return 0;
		}
	}
	return 1;
}

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
