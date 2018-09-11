#!/bin/bash

input="${1,,}"
declare -A letters
for (( i = 0; i < ${#1}; i++ )); do
  letter="${input:i:1}"
  if [[ ${letters[$letter]} ]]; then
    ((letters[$letter]++))
  else
    letters[$letter]=1
  fi
done

result=""
dict=("$2")
for original_word in ${dict[*]}; do
  word="${original_word,,}"
  if [[ "$word" == "$input" ]]; then
    continue
  fi

  declare -A used_letters
  for (( i = 0; i < ${#word}; i++)); do
    letter="${word:i:1}"
    if [[ ! ${used_letters[$letter]} ]]; then
      used_letters[$letter]=1
    else
      ((used_letters[$letter]++))
    fi
  done

  found=1
  for c in ${!letters[*]}; do
    if [[ "${letters[$c]}" -ne "${used_letters[$c]}" ]]; then
      found=0
    fi
  done
  for c in ${!used_letters[*]}; do
    if [[ "${letters[$c]}" -ne "${used_letters[$c]}" ]]; then
      found=0
    fi
  done

  if [[ found -eq 1 ]]; then
    if [[ ! -z $result ]]; then
      result+=" "
    fi
    result+="$original_word"
  fi

  unset -v 'used_letters'
done

    
echo "$result"
