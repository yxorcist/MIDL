#include <ctype.h>
int count_numbers(const char *s) {
  if (!s)
    return -1;

  int count = 0;
  int i = 0;

  while (s[i]) {
    while (s[i] == ' ')
      i++;

    if (!s[i])
      break;

    if (s[i] == '=')
      i++;

    if (!isdigit((unsigned char)s[i]))
      return -1;

    while (isdigit((unsigned char)s[i]))
      i++;

    count++;

    if (s[i] && s[i] != ' ')
      return -1;
  }

  return count;
}
