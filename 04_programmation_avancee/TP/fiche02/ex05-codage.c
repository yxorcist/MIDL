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

int main() {}
