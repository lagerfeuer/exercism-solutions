#include "armstrong_numbers.h"
#include <math.h>

int is_armstrong_number(int candidate) {
  int num = candidate;
  int exp = 1;
  int total = 0;

  while (num /= 10)
    exp++;

  num = candidate;
  do
    total += pow((num % 10), exp);
  while (num /= 10);

  return (total == candidate);
}
