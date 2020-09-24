#include <stdio.h>
#include <math.h>

int main () {
  int prime = 1;
  int num;
  int i;

  printf("Hello, World!\n--------------------------------\n");
  printf("Enter a cool number: ");
  scanf("%d", &num);
  printf("\n");

  if (num > 0) {
    for (i = 2; i <= sqrt(num); i++) {
      if (num % i == 0) {
        printf("Divisible by > %d\n", i);
        prime = 0;
      }
    }
  }

  else {
    printf("\nNot a cool number!\n");
    return 0;
  }

  if (prime == 0) {
    printf("\nYour cool number is not prime!\n");
  }
  else {
    printf("\nYour cool number is prime!\n");
  }
  return 0;
}
