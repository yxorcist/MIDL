#include <stdio.h>

#include "../fiche01/doubly_linked_lists.c"

List *read_list(FILE *f) {
  if (!f)
    return NULL;

  int n;

  if (fscanf(f, "list: [%d] ", &n) != 1 || n < 0)
    return NULL;

  List *list = list_create();

  if (!list)
    return NULL;

  for (int i = 0; i < n; i++) {
    int value;

    if (fscanf(f, "%d", &value) != 1)
      return NULL;

    push_back(list, value);

    if (i < n - 1)
      fscanf(f, ", ");
  }

  return list;
}
