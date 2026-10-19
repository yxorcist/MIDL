#include <math.h>
#include <stdlib.h>

double *jacobi(double **A, int n, double epsilon, int max_iter, int *num_iter,
               double *final_error, double *errors) {
  int i, j, k = 0;
  double sum;
  double err = 1;

  double *b = malloc(n * sizeof(double));
  double *x = malloc(n * sizeof(double));
  double *x2 = malloc(n * sizeof(double));

  if (!b || !x || !x2) {
    free(b);
    free(x);
    free(x2);
    return NULL;
  }

  // construction de b pour avoir x = (1,...,1)
  for (i = 0; i < n; i++) {
    sum = 0;

    for (j = 0; j < n; j++)
      sum += A[i][j];

    b[i] = sum;
  }

  // solution initiale nulle
  for (i = 0; i < n; i++)
    x[i] = 0;

  // iterations de jacobi
  while (err > epsilon && k < max_iter) {
    for (i = 0; i < n; i++) {
      sum = 0;

      for (j = 0; j < n; j++) {
        if (j != i)
          sum += A[i][j] * x[j];
      }

      x2[i] = (b[i] - sum) / A[i][i];
    }

    // remplace x par x2
    for (i = 0; i < n; i++)
      x[i] = x2[i];

    // calcul de l'erreur
    err = 0;
    for (i = 0; i < n; i++) {
      if (fabs(1 - x[i]) > err)
        err = fabs(1 - x[i]);
    }

    if (errors)
      errors[k] = err;

    k++;
  }

  *num_iter = k;
  *final_error = err;

  free(b);
  free(x2);

  return x;
}
