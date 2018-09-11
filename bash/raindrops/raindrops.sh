result=""
declare -A map
map[3]="Pling"
map[5]="Plang"
map[7]="Plong"
for i in ${!map[*]}; do
  if [[ $(($1 % i)) -eq 0 ]]; then
    result+="${map[$i]}"
  fi
done

[[ -z "$result" ]] && echo "$1" || echo "$result"
