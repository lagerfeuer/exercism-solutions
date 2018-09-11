word="${1,,}"
score=0
chars=('aeioulnrst' 'dg' 'bcmp' 'fhvwy' 'k' 'jx' 'qz')
scores=(1 2 3 4 5 8 10)
for i in ${!chars[*]}; do
  found=$(echo "$word" | grep -o "[${chars[$i]}]" | wc -l)
  score=$((score + found * ${scores[$i]}))
done
echo "$score"
