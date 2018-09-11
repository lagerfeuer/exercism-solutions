#pragma once

namespace triangle {
  enum Kind {
    equilateral, isosceles, scalene
  };

  inline bool equal(float x, float y);
  Kind kind(float a, float b, float c);
}
