#include <stdio.h>
#include <stdlib.h>

typedef struct Tree {
  int value;
  struct Tree *left;
  struct Tree *right;
} Tree;

Tree *create_node(int value) {
  Tree *node = malloc(sizeof(Tree));

  if (!node)
    return NULL;

  node->value = value;
  node->left = NULL;
  node->right = NULL;

  return node;
}

int insert_left(Tree *parent, int value) {
  if (!parent || parent->left)
    return 0;

  parent->left = create_node(value);
  return parent->left != NULL;
}

int insert_right(Tree *parent, int value) {
  if (!parent || parent->right)
    return 0;

  parent->right = create_node(value);
  return parent->right != NULL;
}

int count_node(Tree *tree) {
  if (!tree)
    return 0;
  return 1 + count_node(tree->left) + count_node(tree->right);
}

void prefix(Tree *tree) {
  if (!tree)
    return;
  printf("%d ", tree->value);
  prefix(tree->left);
  prefix(tree->right);
}

void infix(Tree *tree) {
  if (!tree)
    return;
  infix(tree->left);
  printf("%d ", tree->value);
  infix(tree->right);
}

void suffix(Tree *tree) {
  if (!tree)
    return;
  suffix(tree->left);
  suffix(tree->right);
  printf("%d ", tree->value);
}

void tree_to_array_prefix(Tree *tree, int *array, int *index) {
  if (!tree || !array || !index)
    return;

  array[*index] = tree->value;
  (*index)++;

  tree_to_array_prefix(tree->left, array, index);
  tree_to_array_prefix(tree->right, array, index);
}

void tree_to_array_infix(Tree *tree, int *array, int *index) {
  if (!tree || !array || !index)
    return;

  tree_to_array_infix(tree->left, array, index);

  array[*index] = tree->value;
  (*index)++;

  tree_to_array_infix(tree->right, array, index);
}

void tree_to_array_suffix(Tree *tree, int *array, int *index) {
  if (!tree || !array || !index)
    return;

  tree_to_array_suffix(tree->left, array, index);
  tree_to_array_suffix(tree->right, array, index);

  array[*index] = tree->value;
  (*index)++;
}

// BST Algorithms
int tree_min(Tree *tree, int *value) {
  if (!tree || !value)
    return 0;

  while (tree->left)
    tree = tree->left;

  *value = tree->value;
  return 1;
}

int tree_max(Tree *tree, int *value) {
  if (!tree || !value)
    return 0;

  while (tree->right)
    tree = tree->right;

  *value = tree->value;
  return 1;
}

Tree *bst_insert(Tree *tree, int value) {
  if (!tree)
    return create_node(value);

  if (value <= tree->value)
    tree->left = bst_insert(tree->left, value);
  else
    tree->right = bst_insert(tree->right, value);

  return tree;
}

int height(Tree *tree) {
  if (!tree)
    return 0;

  int left_h = height(tree->left);
  int right_h = height(tree->right);

  return 1 + (left_h > right_h ? left_h : right_h);
}

int is_balanced(Tree *tree) {
  if (!tree)
    return 1;

  int left_h = height(tree->left);
  int right_h = height(tree->right);

  if (abs(left_h - right_h) > 1)
    return 0;

  return is_balanced(tree->left) && is_balanced(tree->right);
}
