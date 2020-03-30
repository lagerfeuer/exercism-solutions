#include "acronym.h"
#include <ctype.h>
#include <stdlib.h>
#include <string.h>

char* abbreviate(const char* phrase) {
  if (phrase == NULL)
    return NULL;

  unsigned int size = strlen(phrase);
  if (size == 0)
    return NULL;

  char* abbr = (char*)malloc(size * sizeof(char));
  const char* in = phrase;
  char* out = abbr;
  int enabled = 1;

  while (*in != 0) {
    if (*in == ' ' || *in == '-')
      enabled = 1;

    if (enabled && ((*in >= 'a' && *in <= 'z') || (*in >= 'A' && *in <= 'Z'))) {
      *(out++) = toupper(*in);
      *out = 0;
      enabled = 0;
    }
    in++;
  }

  return abbr;
}
