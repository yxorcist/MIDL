#include <ctype.h>
#include <stdio.h>

int is_vowel(int c) {
  c = tolower(c);
  return c == 'a' || c == 'e' || c == 'i' || c == 'o' || c == 'u';
}

int main(int argc, char **argv) {
  if (argc != 2)
    return 1;

  FILE *src = fopen(argv[1], "rb");
  if (!src)
    return 1;
  FILE *tmp = fopen("tmp.txt", "wb");
  if (!tmp) {
    fclose(src);
    return 1;
  }

  int c;

  while ((c = fgetc(src)) != EOF) {
    if (!is_vowel(c))
      fputc(c, tmp);
  }

  fclose(src);
  fclose(tmp);

  remove(argv[1]);
  rename("tmp.txt", argv[1]);

  return 0;
}
