function sum_of_squares () {
  sum=0
  for i in $(seq "$1"); do
    ((sum = sum + i ** 2))
  done
  echo "$sum"
}

function square_of_sum () {
  sum=0
  for i in $(seq "$1"); do
    ((sum = sum + i))
  done
  echo "$((sum ** 2))"
}

case "$1" in
  "sum_of_squares")
    echo $(sum_of_squares "$2")
    ;;
  "square_of_sum")
    echo $(square_of_sum "$2")
    ;;
  "difference")
    sum_of_sq=$(sum_of_squares "$2")
    sq_of_sum=$(square_of_sum "$2")
    echo "$((sq_of_sum - sum_of_sq))"
    ;;
esac
