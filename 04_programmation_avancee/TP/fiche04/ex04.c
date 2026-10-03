int cmp_asc(int a, int b) {
  if (a == b)
    return 0;

  if (a > b)
    return 1;

  return -1;
}

int cmp_desc(int a, int b) {
  if (a == b)
    return 0;

  if (a < b)
    return 1;

  return -1;
}

int cmp_even(int a, int b) {
  if (a == b)
    return 0;

  if (a % 2 == 0 && b % 2 != 0)
    return 1;

  if (a % 2 != 0 && b % 2 == 0)
    return -1;

  if (a < b)
    return 1;

  return -1;
}
