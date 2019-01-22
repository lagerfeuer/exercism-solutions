#include "difference_of_squares.h"

unsigned long long square_of_sum(unsigned int n) {
  unsigned long long total = 0;
  for(unsigned int i = 0; i <= n; i++)
    total += i;
  return total * total;
}

unsigned long long sum_of_squares(unsigned int n) {
  unsigned long long total = 0;
  for(unsigned int i = 0; i <= n; i++)
    total += (i * i);
  return total;
}

unsigned long long difference_of_squares(unsigned int n) {
  return square_of_sum(n) - sum_of_squares(n);
}
