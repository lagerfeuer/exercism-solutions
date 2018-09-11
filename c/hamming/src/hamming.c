#include "hamming.h"
#include "string.h"

int compute(char* strand1, char* strand2) {
  if(strand1 == NULL || strand2 == NULL)
    return -1;

  if(strlen(strand1) != strlen(strand2))
    return -1;

  int dist = 0;
  unsigned int i;
  for(i = 0; i < strlen(strand1); i++) {
    if(strand1[i] != strand2[i])
      dist++;
  }
  return dist;
}
