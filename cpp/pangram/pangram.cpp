#include "pangram.h"
#include <algorithm>
#include <cctype>
#include <set>

namespace pangram {
bool is_pangram(const std::string sentence) {
  std::set<unsigned char> letters;
  for(const unsigned char& c : sentence)
    if(std::isalpha(c))
      letters.insert(std::tolower(c));
  return letters.size() == 26;
}
} // namespace pangram
