#include <stdio.h>
#include <stdlib.h>
#include <time.h>

void swap(int *a, int *b) {
  int t = *a;
  *a = *b;
  *b = t;
}

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
  //  printf("void      : %zu\n", sizeof(void)); this shit returns an error
  printf("void *    : %zu\n", sizeof(void *));
  printf("long int  : %zu\n", sizeof(long int));
  printf("long int *: %zu\n", sizeof(long int *));
}

// Exercice 5
int est_permutation(int *t, int n) {

  if (!t || n <= 0)
    return 0;

  int *seen = calloc(n, sizeof(int));

  if (!seen)
    return 0;

  for (int i = 0; i < n; i++) {
    if (t[i] < 0 || t[i] >= n || seen[t[i]]) {
      free(seen);
      return 0;
    }
    seen[t[i]] = 1;
  }

  free(seen);
  return 1;
}

// Exercice 6
int *tab(int n) {
  if (n <= 0)
    return NULL;

  int *t = malloc(sizeof(int) * n);

  if (!t)
    return NULL;

  // identity permutation
  for (int i = 0; i < n; i++)
    t[i] = i;

  // the regular method
  /*
  for (int i = 0; i < n; i++) {
    int j = rand() % n;
    swap(&t[i], &t[j]);
  }
  */

  // Fischer-Yates
  for (int i = n - 1; i > 0; i--) {
    int j = rand() % (i + 1);
    swap(&t[i], &t[j]);
  }

  return t;
}

char *permuter(char *t, int *perm, int n) {
  if (!t || !perm || n <= 0)
    return NULL;

  char *res = malloc((n + 1) * sizeof(char));

  if (!res)
    return NULL;

  for (int i = 0; i < n; i++)
    res[perm[i]] = t[i];

  res[n] = '\0';

  return res;
}

int main() {
  // srand(time(NULL)); // necessary for exo 6

  char *a = "hello";
  int perm[] = {4, 3, 2, 1, 0};

  char *b = permuter(a, perm, 5);
  printf("%s\n", b);
}
