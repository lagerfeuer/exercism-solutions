#include "grains.h"

unsigned long long square(unsigned int field) {
  return ((field > 0) && (field <= 64)) ? 1ULL << (field - 1) : 0;
}

unsigned long long total() {
  unsigned int i;
  unsigned long long sum = 0;
  for (i = 1; i <= 64; i++)
    sum += 1ULL << i;
  return sum;
}
