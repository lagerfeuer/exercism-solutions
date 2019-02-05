#include "binary_search.h"
#include <stdlib.h>

int* binary_search(int element, int* arr, unsigned int length) {
  if (!arr || length == 0 || element < arr[0] || element > arr[length - 1])
    return NULL;

  int* start = arr;
  int* end = arr + length - 1;
  int* middle;

  while (start <= end) {
    middle = start + (end - start) / 2;

    if (element < *middle)
      end = middle - 1;
    else if (element > *middle)
      start = middle + 1;
    else
      return middle;
  }

  return NULL;
}
