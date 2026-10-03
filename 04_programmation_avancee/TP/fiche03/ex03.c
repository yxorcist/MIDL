#include <ctype.h>
#include <stdio.h>

int main(int argc, char **argv) {
  if (argc != 3)
    return 1;

  FILE *f = fopen(argv[1], "f");
  if (!f)
    return 1;

  int c;
  int lines = 0;
  int words = 0;
  int chars = 0;

  int in_word = 0;

  while ((c = fgetc(f)) != EOF) {
    chars++;

    if (c == '\n')
      lines++;

    if (isspace(c)) {
      in_word = 0;
    } else if (!in_word) {
      words++;
      in_word = 1;
    }
  }

  fclose(f);

  printf("lines: %d\n", lines);
  printf("words: %d\n", words);
  printf("chars: %d\n", chars);

  return 0;
}
