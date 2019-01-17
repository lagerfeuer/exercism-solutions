#include "beer_song.h"
#include <stdio.h>
#include <string.h>

void verse(char* buffer, int number) {
  switch (number) {
  case 0:
    sprintf(buffer, "No more bottles of beer on the wall, "
                    "no more bottles of beer.\n"
                    "Go to the store and buy some more, "
                    "99 bottles of beer on the wall.\n");
    break;
  case 1:
    sprintf(buffer, "1 bottle of beer on the wall, "
                    "1 bottle of beer.\n"
                    "Take it down and pass it around, "
                    "no more bottles of beer on the wall.\n");
    break;
  case 2:
    sprintf(buffer, "2 bottles of beer on the wall, "
                    "2 bottles of beer.\n"
                    "Take one down and pass it around, "
                    "1 bottle of beer on the wall.\n");
    break;
  default:
    sprintf(buffer,
            "%d bottles of beer on the wall, "
            "%d bottles of beer.\n"
            "Take one down and pass it around, "
            "%d bottles of beer on the wall.\n",
            number, number, number - 1);
    break;
  }
}

void sing(char* buffer, int start, int end) {
  char tmp[1024] = {0};
  buffer[0] = '\0';
  for (int i = start; i >= end; i--) {
    verse(tmp, i);
    strcat(buffer, tmp);
    if (i > end)
      strcat(buffer, "\n");
  }
}
