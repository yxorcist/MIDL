#include <stdio.h>

#include "../fiche01/doubly_linked_lists.c"

void write_list(FILE *f, List *list) {
  if (!f || !list)
    return;

  fprintf(f, "list: [%d]", list->size);

  Node *current = list->head;

  while (current) {
    fprintf(f, "%d", current->value);

    if (current->next)
      fprintf(f, ", ");

    current = current->next;
  }

  fprintf(f, "\n");
}
