#include <stdio.h>

int isprime();

int main() {
	printf("Haha Yes: ");
	int a;
	scanf("%d",&a);
	printf(">%d\n",isprime(a));
	return 0;
}
