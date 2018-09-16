#!sh/bash/dash/ksh

# Script to create a directory and file structure
# Initially created by Kailie Dela Cruz
# September 14, 2018
# kmdelacruz@dons.usfca.edu

# Count the number of sequences in fasta files
echo "Counting the number of sequences in fasta files"
for file in "$@"
do
  FILENAME=$(basename "$file" .fasta)
  COUNT=$(grep -c ">" "$file")
done
  echo In "$FILENAME", there are "$COUNT" sequences.
