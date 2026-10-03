#include <stdio.h>
#include <stdlib.h>
#include <time.h>
#include <unistd.h>

#define N 2000

int main(int argc, char **argv) {
  if (argc != 3)
    return 1;

  FILE *f = fopen(argv[1], "a");
  if (!f)
    return 1;

  srand(time(NULL));

  for (int i = 0; i < N; i++) {
    fprintf(f, "%s\n", argv[2]);

    fflush(f);

    usleep(rand() % 100000);
  }

  fclose(f);
  return 0;
}
