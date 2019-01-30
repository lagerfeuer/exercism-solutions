#include "difference_of_squares.h"

unsigned long long square_of_sum(unsigned int n) {
  unsigned long long total = (n * (n + 1)) / 2;
  return total * total;
}

unsigned long long sum_of_squares(unsigned int n) {
  unsigned long long total = (n * (n + 1) * (2 * n + 1)) / 6;
  return total;
}

unsigned long long difference_of_squares(unsigned int n) {
  return square_of_sum(n) - sum_of_squares(n);
}
