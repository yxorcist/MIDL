#include <stdarg.h>
#include <stdio.h>

double avg(int n, ...) {

  va_list args;

  va_start(args, n);

  int s = 0;

  for (int i = 0; i < n; i++)
    s += va_arg(args, int);

  va_end(args);

  return (double)s / n;
}

int main() {
  printf("%.2f\n", avg(3, 1, 2, 3));
  return 0;
}
