if [[ "$1" =~ ^[GCTA]*$ ]]; then
  rna=$(echo "$1" | sed 's/G/#/g; s/C/G/g; s/A/U/g' | sed 's/#/C/g; s/T/A/g')
  echo "$rna"
else
  echo "Invalid nucleotide detected."
  exit 1
fi
