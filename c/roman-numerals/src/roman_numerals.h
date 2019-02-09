#ifndef ROMAN_NUMERALS_H
#define ROMAN_NUMERALS_H

struct r_mapping {
  char roman;
  unsigned int value;
};

static struct r_mapping c_table[] = {{'I', 1},   {'V', 5},   {'X', 10},
                                     {'L', 50},  {'C', 100}, {'D', 500},
                                     {'M', 1000}};

char* to_roman_numeral(unsigned int number);

#endif /* ROMAN_NUMERALS_H */
