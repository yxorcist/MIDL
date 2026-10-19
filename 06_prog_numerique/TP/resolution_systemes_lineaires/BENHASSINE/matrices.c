#include <math.h>
#include <stdlib.h>

double **create_a5(int n) {
  double **A = malloc(n * sizeof(double *));

  if (!A)
    return NULL;

  for (int i = 0; i < n; i++) {
    A[i] = malloc(n * sizeof(double));

    if (!A[i]) {
      for (int k = 0; k < i; k++)
        free(A[k]);

      free(A);
      return NULL;
    }

    for (int j = 0; j < n; j++) {
      if (i == j)
        A[i][j] = 1;
      else if (i == 0)
        A[i][j] = pow(2, -j);
      else if (j == 0)
        A[i][j] = pow(2, -i);
      else
        A[i][j] = 0;
    }
  }

  return A;
}

double **create_a6(int n) {
  double **A = malloc(n * sizeof(double *));

  if (!A)
    return NULL;

  for (int i = 0; i < n; i++) {
    A[i] = malloc(n * sizeof(double));

    if (!A[i]) {
      for (int k = 0; k < i; k++)
        free(A[k]);

      free(A);
      return NULL;
    }

    for (int j = 0; j < n; j++) {
      if (i == j)
        A[i][j] = 3;
      else if (j == i + 1)
        A[i][j] = -1;
      else if (j == i - 1)
        A[i][j] = -2;
      else
        A[i][j] = 0;
    }
  }

  return A;
}
