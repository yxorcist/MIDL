#include <stdio.h>

#define N 100

int main(int argc, char **argv) {

  if (argc != 2)
    return 1;

  FILE *f = fopen(argv[1], "wb");
  if (!f)
    return 1;

  int t[N];

  for (int i = 0; i < N; i++)
    t[i] = i;

  size_t written = fwrite(t, sizeof(int), N, f);

  if (written != N) {
    fclose(f);
    return 1;
  }

  fclose(f);

  int s[N];

  FILE *r = fopen(argv[1], "rb");
  if (!r)
    return 1;

  size_t read = fread(s, sizeof(int), N, r);
  if (read != N) {
    fclose(r);
    return 1;
  }

  fclose(r);

  for (int i = 0; i < N; i++)
    printf("%d ", s[i]);
  printf("\n");

  return 0;
}
