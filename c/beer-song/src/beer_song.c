#include "beer_song.h"
#include <stdio.h>
#include <string.h>

void verse(char *buffer, int number) {
  char old_number_str[3];
  char new_number_str[3];
  const char *singular = "bottle";
  const char *plural = "bottles";

  sprintf(old_number_str, "%d", number);
  const char *old_bottle = (number == 1) ? singular : plural;

  int new_number;
  if (number > 0)
    new_number = number - 1;
  else
    new_number = 99;
  sprintf(new_number_str, "%d", new_number);
  const char *new_bottle = (new_number == 1) ? singular : plural;

  sprintf(buffer, VERSE_TEMPLATE, (number ? old_number_str : "No more"),
          old_bottle, (number ? old_number_str : "no more"), old_bottle,
          (number == 1) ? "it" : "one",
          (new_number ? new_number_str : "no more"), new_bottle);
}

void sing(char *buffer, int start, int end) {
  int i;
  buffer[0] = '\0';
  for (i = start; i >= end; i--) {
    verse(buffer + strlen(buffer), i);
    size_t len = strlen(buffer);
    buffer[len] = '\n';
    buffer[len + 1] = '\0';
  }
}
