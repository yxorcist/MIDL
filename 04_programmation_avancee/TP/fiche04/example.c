#include <stdio.h>

typedef struct {
  int x;
  int y;
} Point;

typedef struct {
  int width;
  int height;
} Size;

typedef union {
  Point p;
  Size s;
} Data;

typedef enum {
  TYPE_POINT,
  TYPE_SIZE,
} Type;

typedef struct {
  Type type;
  Data data;
} Object;

int main() {
  printf("%zu\n", sizeof(Point));
  printf("%zu\n", sizeof(Size));
  printf("%zu\n", sizeof(Data));
}
