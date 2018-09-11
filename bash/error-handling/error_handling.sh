if [[ $# -eq 0 ]]; then
  echo "Usage: ./${0%*.sh} <greetee>"
  exit 1
elif [[ $# -eq 1 ]]; then
  echo "Hello, $1"
  exit 0
else
  exit 2
fi
