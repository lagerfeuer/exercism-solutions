#include "raindrops.h"
#include <sstream>
#include <vector>

namespace raindrops {
const std::vector<std::pair<unsigned int, std::string>> mapping = {
    {3, "Pling"}, {5, "Plang"}, {7, "Plong"}};
}

std::string raindrops::convert(const unsigned int number) {
  std::stringstream result;
  for (const auto& kv : raindrops::mapping)
    if (number % kv.first == 0)
      result << kv.second;
  return (result.str().empty()) ? std::to_string(number) : result.str();
}
