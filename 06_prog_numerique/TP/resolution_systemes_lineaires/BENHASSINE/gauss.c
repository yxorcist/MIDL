#include <stdlib.h>

double *gauss(double **A, int n) {
  int i, j, c;
  double k;

  // construction de b pour avoir x = (1,...,1)
  double *b = malloc(n * sizeof(double));
  if (!b)
    return NULL;

  for (i = 0; i < n; i++) {
    double sum = 0;
    for (j = 0; j < n; j++)
      sum += A[i][j];
    b[i] = sum;
  }

  // elimination de gauss: A -> triang sup
  for (c = 0; c < n - 1; c++) {
    for (i = c + 1; i < n; i++) {

      k = A[i][c] / A[c][c];

      for (j = c; j < n; j++)
        A[i][j] -= k * A[c][j];

      b[i] -= k * b[c];
    }
  }

  // vecteur solution x
  double *x = malloc(n * sizeof(double));
  if (!x) {
    free(b);
    return NULL;
  }

  // substitution arriere
  for (i = n - 1; i >= 0; i--) {
    double sum = 0;

    for (j = i + 1; j < n; j++)
      sum += A[i][j] * x[j];

    x[i] = (b[i] - sum) / A[i][i];
  }

  free(b);

  return x;
}
