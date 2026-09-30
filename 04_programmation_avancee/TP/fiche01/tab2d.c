#include <stdio.h>
#include <stdlib.h>

// Exercice 8
float **matrice(int n, int m) {

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

// Exercice 9
void afficher_mat(float **mat, int n, int m) {
  if (!mat || n <= 0 || m <= 0)
    return;

  for (int i = 0; i < n; i++) {
    for (int j = 0; j < m; j++)
      printf("%.2f ", mat[i][j]);

    printf("\n");
  }
}

// Exercice 10
float **rotate(int **mat, int n, int m) {
  if (!mat || n <= 0 || m <= 0)
    return NULL;

  float **res = matrice(m, n);

  if (!res)
    return NULL;

  // do the rotating
  for (int i = 0; i < n; i++) {
    for (int j = 0; j < m; j++) {
      res[j][n - i - 1] = mat[i][j]; // this is the important line
      // gotta learn the variations, all the directions of retations
    }
  }

  return res;
}

// Exercice 11
void liberer_matrice(float **mat, int n) {
  if (!mat || n <= 0)
    return;

  for (int i = 0; i < n; i++)
    free(mat[i]); // free does not dereference the pointer, no error if ptr =

  free(mat);
}

int **pascal(int n) {
  if (n <= 0)
    return NULL;

  int **t = malloc(n * sizeof(int *));

  if (!t)
    return NULL;

  for (int i = 0; i < n; i++) {
    t[i] = malloc((i + 1) * sizeof(int));

    if (!t[i]) {
      for (int j = 0; j < i; j++)
        free(t[j]);

      free(t);
      return NULL;
    }

    t[i][0] = 1;
    t[i][i] = 1;

    for (int j = 1; j < i; j++)
      t[i][j] = t[i - 1][j - 1] + t[i - 1][j];
  }

  return t;
}

void afficher_pascal(int **p, int n) {
  if (!p || n <= 0)
    return;

  for (int i = 0; i < n; i++) {
    for (int j = 0; j <= i; j++)
      printf("%d ", p[i][j]);
    printf("\n");
  }
}

void liberer_pascal(int **p, int n) {
  if (!p || n <= 0)
    return;

  for (int i = 0; i < n; i++)
    free(p[i]);

  free(p);
}

int main() {
  int n = 5;
  int **p = pascal(n);

  if (!p)
    return 1;

  afficher_pascal(p, n);
  liberer_pascal(p, n);
}
