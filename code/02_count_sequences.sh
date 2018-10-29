#!sh/#!/usr/bin/env bash

# Script to create a directory and file structure
# Initially created by Kailie Dela kmdelacruz
# September 14, 2018
# kmdelacruz@dons.usfca.edu

# Count the number of sequences in multiple fasta files
echo "Counting the number of sequences in multiple fasta files"
for file in "$@"
do
  FILENAME=$(basename "$file" .fasta)
  COUNT=$(grep ">" "$file" -c | tr -d " ")
  echo The file "$FILENAME" has "$COUNT" sequences in it
done

# To count the sequences in one file here is an example
# grep ">" data/raw_data/animal_mRNA.fasta | wc -l
# A for loop must be used in order to count the sequences
# in multiple fasta files
