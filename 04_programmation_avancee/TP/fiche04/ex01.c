#include <stdio.h>

typedef union {
  unsigned int value;
  unsigned char byte;
} Data;

int main() {
  Data d;

  d.value = 1;

  if (d.byte == 1)
    printf("Little endian\n");
  else
    printf("Big endian\n");

  return 0;
}
