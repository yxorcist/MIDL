#include <stdint.h>
#include <stdio.h>

typedef union {
  int32_t value;
  uint32_t bits;
} Data;

int main() {
  Data d;

  d.value = -1;

  printf("%d\n", d.value);
  printf("%x\n", d.bits);

  return 0;
}
