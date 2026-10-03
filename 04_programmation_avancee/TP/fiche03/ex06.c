#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#define MAX 100

int main(void) {
  char expr[] = "3 4 + 5 *";

  int stack[MAX];
  int top = 0;

  char *token = strtok(expr, " ");

  while (token) {
    if (strcmp(token, "+") == 0) {
      int b = stack[--top];
      int a = stack[--top];

      stack[top++] = a + b;
    } else if (strcmp(token, "-") == 0) {
      int b = stack[--top];
      int a = stack[--top];

      stack[top++] = a - b;
    } else if (strcmp(token, "*") == 0) {
      int b = stack[--top];
      int a = stack[--top];

      stack[top++] = a * b;
    } else if (strcmp(token, "/") == 0) {
      int b = stack[--top];
      int a = stack[--top];

      stack[top++] = a / b;
    } else {
      stack[top++] = atoi(token);
    }

    token = strtok(NULL, " ");
  }

  printf("%d\n", stack[0]);

  return 0;
}
