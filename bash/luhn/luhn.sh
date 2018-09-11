#!/bin/bash

cnt=0
sum=0
input="${1// /}"

if [[ ! $input =~ ^[0-9]*$ ]]; then
  echo "false"
  exit 0
fi

for num in $(echo "$input" | grep -o .); do
  tmp=$num
  if ((cnt % 2 == 1)); then
    ((tmp = 2 * tmp))
    ((tmp > 9)) && ((tmp -= 9))
  fi
  ((sum += tmp))
  ((cnt++))
done

if ((sum % 10 == 0)) && [[ "${#input}" -gt 1 ]]; then
  echo "true"
else
  echo "false"
fi
