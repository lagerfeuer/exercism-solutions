num=$1
it=0

if [[ "num" -lt 1 ]]; then
  echo "Error: Only positive numbers are allowed"
  exit 1
fi

while (( num != 1 )); do
  if (( num % 2 == 0 )); then
    ((num = num / 2))
  else
    ((num = 3 * num + 1))
  fi
  ((it++))
done

echo "$it"
