#include "roman_numerals.h"
#include <stdlib.h>
#include <string.h>

char* to_roman_numeral(unsigned int number) {
  char* roman = malloc(64 * sizeof(char));
  if (!roman)
    return NULL;
  memset(roman, 0, 64 * sizeof(char));

  unsigned int temp = number;
  int index = 0;
  int tbl_index = sizeof(c_table) / sizeof(c_table[0]) - 1;
  unsigned int last_occurences = 0;
  unsigned int i;
  while (temp > 0 && tbl_index >= 0) {
    unsigned int occurences = temp / c_table[tbl_index].value;
    temp -= occurences * c_table[tbl_index].value;

    if (occurences == 4) {
      char buf[3] = {0};
      buf[0] = c_table[tbl_index].roman;
      if (last_occurences == 1) {
        roman[--index] = '\0';
        buf[1] = c_table[tbl_index + 2].roman;
      } else {
        buf[1] = c_table[tbl_index + 1].roman;
      }
      strcat(roman, buf);
      index += 2;
    } else {
      for (i = 0; i < occurences; i++)
        roman[index++] = c_table[tbl_index].roman;
    }

    last_occurences = occurences;
    tbl_index--;
  }

  return roman;
}
