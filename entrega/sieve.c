#include <stdio.h>
#include <stdlib.h>

int is_prime(int n){
	if (n < 2) return 0;
	int i;
	for (i = 2; i*i <= n; i++) {
		if (n % i == 0) {
 			return 0;
		}
	}
	return 1;
}


int main(int argc, char *argv[]) {
	int num;

	/* Validar quantidade de argumentos */
	if( argc != 2 ){
		printf("Formato: ");
		printf("%s", argv[0]);
		printf(" <numero>\n");
		return 1;
	}

	/* Parse para int */
	num = atoi(argv[1]);

	printf("%d\n", is_prime(num));

	return 0;
}
