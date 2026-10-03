#include <stdio.h>

void print_hex(unsigned int x) {
  char hex[] = "0123456789ABCDEF";

  for (int i = 28; i >= 0; i -= 4) {
    unsigned int digit = (x >> i) & 0xF;
    printf("%c", hex[digit]);
  }

  printf("\n");
}

int main() { print_hex(255); }
