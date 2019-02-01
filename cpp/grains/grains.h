#pragma once

namespace grains {
constexpr unsigned long long square(const unsigned int field) {
  return 1ULL << (field - 1);
}

constexpr unsigned long long total() { return square(64) * 2 - 1; }
} // namespace grains
