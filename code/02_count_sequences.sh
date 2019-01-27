#!/bin/bash

# Script to count the number of sequences in multiple
# fasta files. To do so, a for loop is used. 
# Initially created by Kailie Dela kmdelacruz
# September 14, 2018
# kmdelacruz@dons.usfca.edu

# Count the number of sequences in multiple fasta files
echo "Counting the number of sequences in multiple fasta files"
# This is a for loop that allows us to work with multiple
# files at one time. The grep command is used to search for
# specific text. The -c of grep provides us with a count.
# The tr command allows us to translate characters. The -d
# makes this command more specific by deleting characters in
# string1 from the input
for file in "$@"
do
  FILENAME=$(basename "$file" .fasta)
  COUNT=$(grep -c ">" "$file" | tr -d " ")
  echo The file "$FILENAME" has "$COUNT" sequences in it
done

# To count the sequences in one file here is an example
# grep ">" data/raw_data/animal_mRNA.fasta | wc -l
# A for loop must be used in order to count the sequences
# in multiple fasta files
