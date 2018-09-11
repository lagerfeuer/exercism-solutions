#!/bin/bash

input="${1^^}"
len="${#input}"
acronym=""

for (( i = 0; i < len; i++ )); do
  prev_char="${input:i-1:1}"

  if (( i == 0 )) \
    || [[ "$prev_char" == " " \
    || "$prev_char" == "-" ]]; then
    acronym+="${input:i:1}"
  fi
done

echo "$acronym"
