function is_equilateral () {
  if (( $1 == $2 && $2 == $3 && $1 > 0 )); then
    return 0
  else
    return 1
  fi
}

function is_isosceles () {
  if (( $1 == $2 || $1 == $3 || $2 == $3 )); then
    return 0
  else
    return 1
  fi
}

function is_valid_triangle () {
  if (( $1 + $2 < $3 || $1 + $3 < $2 || $2 + $3 < $1 )); then
    return 1
  fi
  return 0
}

if ! is_valid_triangle "$2" "$3" "$4"; then
  echo "false"
  exit 1
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

if [[ "$?" -eq 0 ]]; then
  echo "true"
else
  echo "false"
  exit 1
fi
