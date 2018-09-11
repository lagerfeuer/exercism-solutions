#!/bin/bash

YELL_QUESTION="^[A-Z\ ]+\?$"
QUESTION="^([A-Za-z0-9,\ :\(\)!\.]+)+\?$"
YELL_STMT="[A-Z]"

function bob () {
  input=$(echo "$1" | tr -d '\n\r\t' | tr -s ' ' | sed -e 's/[[:space:]]*$//')
  if [[ ! $input ]]; then
    echo "Fine. Be that way!"
  elif [[ $input =~ $YELL_QUESTION ]]; then
    echo "Calm down, I know what I'm doing!"
  elif [[ $input =~ $QUESTION ]]; then
    echo "Sure."
  elif [[ "$input" == "${input^^}" && $input =~ $YELL_STMT ]]; then
    echo "Whoa, chill out!"
  else
    echo "Whatever."
  fi
}

bob "$1"
