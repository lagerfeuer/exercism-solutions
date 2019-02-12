#ifndef ROMAN_NUMERALS_H
#define ROMAN_NUMERALS_H

struct r_mapping {
  char roman;
  unsigned int value;
};

char* to_roman_numeral(unsigned int number);

#endif /* ROMAN_NUMERALS_H */
