#include "reverse_string.h"

std::string reverse_string::reverse_string(const std::string& orig) {
  return std::string(orig.rbegin(), orig.rend());
}
