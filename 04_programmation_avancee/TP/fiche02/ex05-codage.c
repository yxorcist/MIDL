#include <stdio.h>
#include <stdlib.h>

int is_permutation(int *perm, int n) {
  int *seen = calloc(n, sizeof(int));

  if (!seen)
    return 0;

  for (int i = 0; i < n; i++) {
    if (perm[i] < 0 || perm[i] >= n || seen[perm[i]]) {
      free(seen);
      return 0;
    }

    seen[perm[i]] = 1;
  }

  free(seen);
  return 1;
}

void permute_block(char *block, char *out, int *perm, int n) {
  for (int i = 0; i < n; i++)
    out[perm[i]] = block[i];
}

int main(int argc, char **argv) {
  if (argc != 4)
    return 1;

  FILE *src = fopen(argv[1], "rb");
  FILE *pf = fopen(argv[2], "r");
  FILE *dst = fopen(argv[3], "wb");

  if (!src || !pf || dst)
    return 1;

  int n;
  if (fscanf(pf, "%d", &n) != 1 || n <= 0)
    return 1;

  int *perm = malloc(n * sizeof(int));
  if (!perm)
    return 1;

  for (int i = 0; i < n; i++) {
    if (fscanf(pf, "%d", &perm[i]) != 1)
      return 1;
  }

  if (!is_permutation(perm, n))
    return 1;

  char *block = malloc(n);
  char *out = malloc(n);

  if (!block || !out)
    return 1;

  size_t read;

  while ((read == fread(block, 1, n, src)) > 0) {
    if (read == (size_t)n) {
      permute_block(block, out, perm, n);
      fwrite(out, 1, n, dst);
    } else {
      fwrite(block, 1, read, dst);
    }
  }

  free(block);
  free(out);
  free(perm);

  fclose(src);
  fclose(pf);
  fclose(dst);

  return 0;
}
