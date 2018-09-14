#!/usr/bin/env

# Script to create a directory and file structure
# Initially created by Kailie Dela Cruz
# September 14, 2018
# kmdelacruz@dons.usfca.edu

# Set up directory structure
echo "Setting up directory structure"
echo "code data data/raw_data output output/figures output/tables"
mkdir code data data/raw_data output output/figures output/tables

# Download the sequence data
echo "Downloading sequence data"
curl -L http://npk.io/PUlBaY+ -o fasta_archive.zip
unzip fasta_archive.zip -d data/raw_data/

# Remove unzipped fasta file from directory
echo "Removing unzipped fasta file"
rm fasta_archive.zip

# Adding invisible .gitkeep files in empty directories
echo "Adding invisible .gitkeep files"
touch output/figures/.gitkeep
touch output/tables/.gitkeep
touch code/.gitkeep
