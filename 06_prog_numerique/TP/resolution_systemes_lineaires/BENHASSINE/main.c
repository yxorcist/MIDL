#include <stdio.h>
#include <stdlib.h>

#include "gauss-seidel.c"
#include "gauss.c"
#include "jacobi.c"
#include "matrices.c"
#include "utils.c"

int main(void) {
  int n = 3;
  double epsilon = 1e-6;
  int max_iter = 1000;

  double *A1[] = {(double[]){3, 0, 4}, (double[]){7, 4, 2},
                  (double[]){-1, 1, 2}};

  double *A2[] = {(double[]){-3, 3, -6}, (double[]){-4, 7, 8},
                  (double[]){5, 7, -9}};

  double *A3[] = {(double[]){4, 1, 1}, (double[]){2, -9, 0},
                  (double[]){0, -8, 6}};

  double *A4[] = {(double[]){7, 6, 9}, (double[]){4, 5, -4},
                  (double[]){-7, -3, 8}};

  double **matrices[] = {A1, A2, A3, A4};

  for (int m = 0; m < 4; m++) {
    printf("\n===== A%d =====\n", m + 1);

    // Gauss modifie la matrice, donc on travaille sur une copie
    double **A_copy = copy_matrix(matrices[m], n);
    double *x_gauss = gauss(A_copy, n);

    printf("Gauss:\n");
    print_vector(x_gauss, n);

    free(x_gauss);
    free_matrix(A_copy, n);

    double errors_j[max_iter];
    double errors_gs[max_iter];
    double *history_j = NULL;
    double *history_gs = NULL;

    // on garde l'historique uniquement pour A3 afin de tracer le graphique
    if (m == 2) {
      history_j = errors_j;
      history_gs = errors_gs;
    }

    int iter_j;
    double err_j;

    double *x_j =
        jacobi(matrices[m], n, epsilon, max_iter, &iter_j, &err_j, history_j);

    printf("\nJacobi:\n");

    if (err_j <= epsilon)
      print_vector(x_j, n);
    else
      printf("Non convergence\n");

    printf("Iterations : %d\n", iter_j);
    printf("Erreur     : %e\n", err_j);

    free(x_j);

    int iter_gs;
    double err_gs;

    double *x_gs = gauss_seidel(matrices[m], n, epsilon, max_iter, &iter_gs,
                                &err_gs, history_gs);

    printf("\nGauss-Seidel:\n");

    if (err_gs <= epsilon)
      print_vector(x_gs, n);
    else
      printf("Non convergence\n");

    printf("Iterations : %d\n", iter_gs);
    printf("Erreur     : %e\n", err_gs);

    free(x_gs);

    // export des erreurs de A3 pour le graphique du rapport
    if (m == 2) {
      FILE *file = fopen("a3_errors.csv", "w");

      if (file) {
        fprintf(file, "iteration,jacobi,gauss_seidel\n");

        int max_history = iter_j > iter_gs ? iter_j : iter_gs;

        for (int k = 0; k < max_history; k++) {
          fprintf(file, "%d,", k + 1);

          if (k < iter_j)
            fprintf(file, "%e", errors_j[k]);

          fprintf(file, ",");

          if (k < iter_gs)
            fprintf(file, "%e", errors_gs[k]);

          fprintf(file, "\n");
        }

        fclose(file);
      }
    }
  }

  int sizes[] = {3, 6, 8, 10};

  for (int s = 0; s < 4; s++) {
    n = sizes[s];

    printf("\n============================\n");
    printf("A5 - n = %d\n", n);
    printf("============================\n");

    double **A5 = create_a5(n);

    if (!A5) {
      printf("Erreur allocation A5\n");
      continue;
    }

    double **A5_copy = copy_matrix(A5, n);
    double *x_gauss = gauss(A5_copy, n);

    printf("\nGauss:\n");
    print_vector(x_gauss, n);

    free(x_gauss);
    free_matrix(A5_copy, n);

    int iter_j;
    double err_j;

    double *x_j = jacobi(A5, n, epsilon, max_iter, &iter_j, &err_j, NULL);

    printf("\nJacobi:\n");

    if (err_j <= epsilon)
      print_vector(x_j, n);
    else
      printf("Non convergence\n");

    printf("Iterations : %d\n", iter_j);
    printf("Erreur     : %e\n", err_j);

    free(x_j);

    int iter_gs;
    double err_gs;

    double *x_gs =
        gauss_seidel(A5, n, epsilon, max_iter, &iter_gs, &err_gs, NULL);

    printf("\nGauss-Seidel:\n");

    if (err_gs <= epsilon)
      print_vector(x_gs, n);
    else
      printf("Non convergence\n");

    printf("Iterations : %d\n", iter_gs);
    printf("Erreur     : %e\n", err_gs);

    free(x_gs);
    free_matrix(A5, n);

    printf("\n============================\n");
    printf("A6 - n = %d\n", n);
    printf("============================\n");

    double **A6 = create_a6(n);

    if (!A6) {
      printf("Erreur allocation A6\n");
      continue;
    }

    double **A6_copy = copy_matrix(A6, n);
    x_gauss = gauss(A6_copy, n);

    printf("\nGauss:\n");
    print_vector(x_gauss, n);

    free(x_gauss);
    free_matrix(A6_copy, n);

    x_j = jacobi(A6, n, epsilon, max_iter, &iter_j, &err_j, NULL);

    printf("\nJacobi:\n");

    if (err_j <= epsilon)
      print_vector(x_j, n);
    else
      printf("Non convergence\n");

    printf("Iterations : %d\n", iter_j);
    printf("Erreur     : %e\n", err_j);

    free(x_j);

    x_gs = gauss_seidel(A6, n, epsilon, max_iter, &iter_gs, &err_gs, NULL);

    printf("\nGauss-Seidel:\n");

    if (err_gs <= epsilon)
      print_vector(x_gs, n);
    else
      printf("Non convergence\n");

    printf("Iterations : %d\n", iter_gs);
    printf("Erreur     : %e\n", err_gs);

    free(x_gs);
    free_matrix(A6, n);
  }

  return 0;
}
