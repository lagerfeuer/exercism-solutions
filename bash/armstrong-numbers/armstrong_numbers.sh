#!/bin/bash

num=$1
len=${#num}
num_test=0

for i in $(seq $len); do
  curr_num="${num:$((i-1)):1}"
  num_test=$((num_test + curr_num ** len))
done

( (( num == num_test )) && echo "true" ) || (echo "false"; exit 1)
