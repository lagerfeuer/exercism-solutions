if [[ "$1" =~ ^[ACGT]*$ ]]; then
  result=""
  for nuc in 'A' 'C' 'G' 'T'; do
    result+="${nuc}: "
    result+=$(echo "$1" | grep -o "$nuc" | wc -l)
    if [[ "$nuc" != "T" ]]; then
      result+=$'\n'
    fi
  done
  echo "$result"
else
  echo "Invalid nucleotide in strand"
  exit 1
fi
