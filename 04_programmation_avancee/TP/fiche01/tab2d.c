#include <stdio.h>
#include <stdlib.h>

// Exercice 8
float **mat(int n, int m) {

  if (n <= 0 || m <= 0)
    return NULL;

  float **mat = malloc(n * sizeof(int *));

  if (!mat)
    return NULL;

  for (int i = 0; i < n; i++) {

    mat[i] = malloc(m * sizeof(float));

    if (!mat[i]) {
      for (int j = 0; j < i; j++)
        free(mat[j]);

      free(mat);
      return NULL;
    }
  }

  return mat;
}

// Exercice 9
void remplir_mat(float **mat, int n, int m) {
  if (!mat || n <= 0 || m <= 0)
    return;

  for (int i = 0; i < n; i++) {
    for (int j = 0; j < m; j++) {
      scanf("%f", &mat[i][j]);
    }
  }
}

void afficher_mat(float **mat, int n, int m) {
  if (!mat || n <= 0 || m <= 0)
    return;

  for (int i = 0; i < n; i++) {
    for (int j = 0; j < m; j++)
      printf("%.2f ", mat[i][j]);

    printf("\n");
  }
}

int main() { return 0; }
