#include <stdio.h>

int main(int argc, char **argv) {

  if (argc != 3)
    return 1;

  FILE *src = fopen(argv[1], "rb");
  if (!src)
    return 1;

  FILE *dst = fopen(argv[2], "wb");
  if (!dst) {
    fclose(src);
    return 1;
  }

  int c;

  while ((c = fgetc(src)) != EOF)
    fputc(c, dst);

  fclose(src);
  fclose(dst);

  return 0;
}
