#include <stdio.h>

#define MAX(a, b) ((a) > (b) ? (a) : (b))

int main() {
  int a = 10, b = 5;
  printf("%d\n", MAX(a, b));
  return 0;
}
