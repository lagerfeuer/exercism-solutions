#!/bin/bash

input="${1,,}"
declare -A letters
for (( i = 0; i < ${#1}; i++ )); do
  letter="${input:i:1}"
  (( 'letters[$letter]'++ ))
done

result=""
dict=("$2")
for original_word in ${dict[@]}; do
  word="${original_word,,}"
  if [[ "$word" == "$input" ]]; then
    continue
  fi

  declare -A used_letters
  for (( i = 0; i < ${#word}; i++)); do
    (( 'used_letters[${word:i:1}]'++ ))
  done

  found=1
  for c in "${!letters[@]}"; do
    if (( letters[$c] != used_letters[$c] )); then
      found=0
    fi
  done
  for c in "${!used_letters[@]}"; do
    if (( letters[$c] != used_letters[$c] )); then
      found=0
    fi
  done

  if (( found == 1 )); then
    if [[ ! -z $result ]]; then
      result+=" "
    fi
    result+="$original_word"
  fi

  unset -v 'used_letters'
done

echo "$result"
