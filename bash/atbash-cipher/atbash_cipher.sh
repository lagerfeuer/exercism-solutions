#!/bin/bash

declare -A trans_table
alpha_rev=""
for letter in {z..a}; do
  alpha_rev+="$letter"
done

index=0
for letter in {a..z}; do
  trans_table[$letter]=${alpha_rev:index:1}
  ((index++))
done

for number in {0..9}; do
  trans_table[$number]=$number
done

result=""
max=$((${#2} - 1))
count=1
index=0

while read -r -n1 char; do
  ((index++))
  if [[ -z $char || $char =~ [^a-z0-9] ]]; then
    continue
  fi

  result+="${trans_table[$char]}" 

  if [[ "$1" == "encode" ]]; then
    if (( count % 5 == 0 && index != max )); then
      result+=" "
    fi
  fi
  ((count++))
done < <(echo -n "${2,,}")

echo "$result"
