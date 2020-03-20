#include "pangram.h"
#include <algorithm>
#include <cctype>
#include <set>

namespace pangram {
bool is_pangram(const std::string sentence) {
  std::set<unsigned char> alphas;
  for(const unsigned char& c : sentence)
    if(std::isalpha(c))
      alphas.insert(std::tolower(c));
  return alphas.size() == 26;
}
} // namespace pangram
