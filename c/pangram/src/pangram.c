#include "pangram.h"
#include <ctype.h>
#include <stddef.h>

bool is_pangram(const char* sentence) {
  if (sentence == NULL || *sentence == 0)
    return NULL;

  const char* c = sentence;
  bool list[SIZE] = {false};
  unsigned int count = 0;
  unsigned int idx;

  while (*c != 0) {
    if (isalpha(*c)) {
      idx = tolower(*c) - 'a';
      if (!list[idx])
        count++;
      list[idx] = true;
    }
    c++;
  }

  return (count == SIZE);
}
