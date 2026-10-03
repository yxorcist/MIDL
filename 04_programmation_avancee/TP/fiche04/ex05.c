#include <stdio.h>
#include <stdlib.h>
#include <time.h>

#include "./ex04.c"

#define N 20

void arr_sort(int *t, int n, int (*cmp)(int, int)) {
  for (int i = 0; i < n; i++) {
    for (int j = 0; j < n - 1 - i; j++) {
      if (cmp(t[j], t[j + 1]) > 0) {
        int tmp = t[j];
        t[j] = t[j + 1];
        t[j + 1] = tmp;
      }
    }
  }
}

void arr_print(int *t, int n) {
  if (!t)
    return;
  for (int i = 0; i < n; i++) {
    if (i != n - 1)
      printf("%d, ", t[i]);
    else
      printf("%d", t[i]);
  }
  printf("\n");
}

int *arr_init(int n) {
  if (n <= 0)
    return NULL;

  int *t = malloc(n * sizeof(int));
  if (!t)
    return NULL;

  for (int i = 0; i < n; i++)
    t[i] = rand() % n + 1;

  return t;
}

int main() {

  srand(time(NULL));

  int *t = arr_init(N);

  arr_print(t, N);

  arr_sort(t, N, cmp_asc);

  arr_print(t, N);

  free(t);

  return 0;
}
