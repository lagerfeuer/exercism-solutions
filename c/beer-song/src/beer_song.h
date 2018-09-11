#ifndef BEER_SONG_H
#define BEER_SONG_H

#define VERSE_TEMPLATE                                                         \
  "%s %s of beer on the wall, %s %s of beer.\n"                                \
  "Take %s down and pass it around, %s %s of beer on the wall.\n"

void verse(char *buffer, int number);
void sing(char *buffer, int start, int end);

#endif /* BEER_SONG_H */
