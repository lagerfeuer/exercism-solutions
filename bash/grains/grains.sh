#!/bin/bash

if [[ $1 ]]; then
  if [[ "$1" == "total" ]]; then
    sum=0
    for i in $(seq 64); do
      sum=$((sum + $((1<<i))))
    done
    printf "%u\n" "$sum"
  elif [[ $1 -lt 1 ]] || [[ $1 -gt 64 ]]; then
    echo "Error: invalid input"
    exit 1
  else
    printf "%u\n" "$((1<<$(($1-1))))"
  fi
fi


