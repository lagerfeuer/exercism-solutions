#include "triangle.h"
#include <cmath>
#include <limits>
#include <stdexcept>

inline bool triangle::equal(float x, float y) {
  return std::abs(x - y) < std::numeric_limits<float>::epsilon();
}

triangle::Kind triangle::kind(float a, float b, float c) {
  if (a + b < c || a + c < b || b + c < a || !((a + b + c) > 0))
    throw std::domain_error("Not a valid triangle");

  if (equal(a, b) && equal(b, c))
    return triangle::equilateral;

  if (equal(a, b) || equal(a, c) || equal(b, c))
    return triangle::isosceles;

  return triangle::scalene;
}
