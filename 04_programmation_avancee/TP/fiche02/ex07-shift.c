#include <stdio.h>
#include <stdlib.h>

int main(int argc, char **argv) {
  if (argc != 3)
    return 1;

  int k = atoi(argv[2]);

  if (k < 0 || k > 255)
    return 1;

  FILE *f = fopen(argv[1], "r+b");
  if (!f)
    return 1;

  int c;
  long pos = 0;

  while ((c = fgetc(f)) != EOF) {
    int shifted = (c + k) % 255;

    fseek(f, pos, SEEK_SET);
    fputc(shifted, f);

    pos++;
    fseek(f, pos, SEEK_SET);
  }

  fclose(f);
  return 0;
}
