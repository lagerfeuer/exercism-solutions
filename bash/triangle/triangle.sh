#!/bin/bash

is_valid_triangle () {
  (( !( $1 + $2 < $3 || $1 + $3 < $2 || $2 + $3 < $1 ) && $1 > 0))
}

is_equilateral () {
  (( $1 == $2 && $2 == $3 ))
}

is_isosceles () {
  (( $1 == $2 || $1 == $3 || $2 == $3 ))
}

main() {
  if ! is_valid_triangle "$2" "$3" "$4"; then
    echo "false"
    exit 0
  fi

  case "$1" in
    "equilateral")
      is_equilateral "$2" "$3" "$4"
      ;;
    "isosceles")
      is_isosceles "$2" "$3" "$4"
      ;;
    "scalene")
      ! is_isosceles "$2" "$3" "$4"
      ;;
  esac

  if (( $? == 0 )); then
    echo "true"
  else
    echo "false"
  fi
}

main "$@"
