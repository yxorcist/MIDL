#include <stdio.h>
#include <stdlib.h>

// tab[i] == *(tab + i) depends on the type of tab

// Exercice 1
void AfficheTab(int *t, int n) {
  if (t == NULL)
    return;

  for (int i = 0; i < n; i++) {
    printf("%d", t[i]);

    if (i < n - 1)
      printf(", ");
  }

  printf("\n");
}

// Exercice 2
int *fibo(int size) {

  if (size <= 0)
    return NULL;

  int *t = malloc(sizeof(int) * size);
  if (!t)
    return NULL;

  t[0] = 0;

  if (size == 1)
    return t;

  t[1] = 1;

  for (int i = 2; i < size; i++)
    t[i] = t[i - 1] + t[i - 2];

  return t;
}

void tailles() {
  printf("int *     : %zu\n", sizeof(int *));
  printf("int*      : %zu\n", sizeof(int *));
  printf("void      : %zu\n", sizeof(void));
  printf("void *    : %zu\n", sizeof(void *));
  printf("long int  : %zu\n", sizeof(long int));
  printf("long int *: %zu\n", sizeof(long int *));
}

int main() {
  void *Z = malloc(10 * 4); // allocation of 40 raw bytes
  int *X = Z;               // conversion happens implicitly

  AfficheTab((int *)((char *)X + 8), 8); // jumps first 2 ints
}
