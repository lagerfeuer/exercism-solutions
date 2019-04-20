#pragma once

#include <map>
#include <string>

namespace raindrops {
const std::map<unsigned int, std::string> mapping = {
    {3, "Pling"}, {5, "Plang"}, {7, "Plong"}};

std::string convert(const unsigned int number);
} // namespace raindrops
