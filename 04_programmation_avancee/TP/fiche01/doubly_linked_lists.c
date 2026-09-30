#include <stdlib.h>

typedef struct Node {
  int value;
  struct Node *next;
  struct Node *prev;
} Node;

typedef struct {
  int size;
  Node *head;
  Node *tail;
} List;

List *list_create(void) {
  List *list = malloc(sizeof(List));

  if (!list)
    return NULL;

  list->size = 0;
  list->head = NULL;
  list->tail = NULL;

  return list;
}

int list_length(List *list) {
  if (!list)
    return 0;

  return list->size;
}

void push_back(List *list, int value) {
  if (!list)
    return;

  Node *node = malloc(sizeof(Node));

  if (!node)
    return;

  node->value = value;
  node->next = NULL;
  node->prev = list->tail;

  if (list->tail)
    list->tail->next = node;
  else
    list->head = node; // first element we add

  list->tail = node;
  list->size++;
}

void push_front(List *list, int value) {
  if (!list)
    return;

  Node *node = malloc(sizeof(Node));

  if (!node)
    return;

  node->value = value;
  node->prev = NULL;
  node->next = list->head;

  if (list->head)
    list->head->prev = node;
  else
    list->tail = node;

  list->head = node;
  list->size++;
}

int back(List *list, int *value) {
  if (!list)
    return 0;

  *value = list->tail->value;
  return 1;
}
