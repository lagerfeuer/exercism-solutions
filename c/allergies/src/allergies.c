#include "allergies.h"
#include <stdlib.h>

void get_allergens(int score, allergen_list_t* list) {
  unsigned int allergen_score = 1;
  int allergen_index = 0;
  allergen_t* allergens =
      malloc((ALLERGEN_CATS - ALLERGEN_EGGS) * sizeof(allergens));

  list->count = 0;
  list->allergens = allergens;

  if (!allergens)
    return;

  while (allergen_score <= 128) {
    if (score & allergen_score) {
      list->allergens[list->count++] = allergen_index;
    }
    allergen_score <<= 1;
    allergen_index++;
  }
}

bool is_allergic_to(allergen_t allergen, int score) {
  return ((1 << allergen) & score);
}
