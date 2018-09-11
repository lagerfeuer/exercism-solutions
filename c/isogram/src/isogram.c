#include "isogram.h"
#include <ctype.h>
#include <string.h>

bool is_isogram(const char phrase[])
{
  unsigned int i;
  bool contained[26] = {0};
  for(i = 0; i < strlen(phrase); i++)
  {
    unsigned char c = tolower(phrase[i]);
    if(c > 'z' || c < 'a')
      continue;
    c -= 'a';
    if(contained[c])
      return false;
    contained[c] = true;
  }
  return true;
}
