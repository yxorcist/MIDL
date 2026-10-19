#include <stdio.h>
#include <stdlib.h>

double **copy_matrix(double **A, int n) {
  double **copy = malloc(n * sizeof(double *));

  if (!copy)
    return NULL;

  for (int i = 0; i < n; i++) {
    copy[i] = malloc(n * sizeof(double));

    if (!copy[i]) {
      for (int k = 0; k < i; k++)
        free(copy[k]);

      free(copy);
      return NULL;
    }

    for (int j = 0; j < n; j++)
      copy[i][j] = A[i][j];
  }

  return copy;
}

void free_matrix(double **A, int n) {
  if (!A)
    return;

  for (int i = 0; i < n; i++)
    free(A[i]);

  free(A);
}

void print_vector(double *x, int n) {
  if (!x)
    return;

  for (int i = 0; i < n; i++)
    printf("x%d = %lf\n", i + 1, x[i]);
}
