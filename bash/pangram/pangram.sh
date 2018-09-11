#!/bin/bash

used=$(echo "${1,,}" | sed 's/[^a-z]//g' | grep -o . | sort | uniq | wc -l)
if (( used == 26 )); then
  echo "true"
else
  echo "false"
fi
