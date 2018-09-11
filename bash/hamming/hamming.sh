#!/bin/bash

if [[ $# -ne 2 ]]; then
  echo "Usage: $0 <string1> <string2>"
  exit 1
fi

if [[ ${#1} -ne ${#2} ]]; then
  echo "left and right strands must be of equal length" 
  exit 1
fi

strand_left=$1
strand_right=$2

dist=0
for i in $(seq 0 $((${#strand_left} - 1))); do
  if [[ "${strand_left:$i:1}" != "${strand_right:$i:1}" ]]; then
    ((dist++))
  fi
done
echo "$dist"
