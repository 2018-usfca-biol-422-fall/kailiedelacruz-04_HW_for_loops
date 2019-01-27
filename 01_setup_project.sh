#!sh/bash/dash/ksh

# Script to create a directory and file structure
# Initially created by Kailie Dela Cruz
# September 14, 2018
# kmdelacruz@dons.usfca.edu

# Set up directory structure with subdirectories
# in order to keep the project organized.
# The directory structure will contain a code
# directory, a data directory, an output directory,
# a README file, and an .sh file
echo "Setting up directory structure"
echo "code data data/raw_data output output/figures output/tables"
mkdir code data data/raw_data output output/figures output/tables

# Download the sequence data
# and unzip the data files
echo "Downloading sequence data"
curl -L http://npk.io/PUlBaY+ -o fasta_archive.zip
unzip fasta_archive.zip -d data/raw_data/

# Remove unzipped fasta file from directory
# using the rm function
echo "Removing unzipped fasta file"
rm fasta_archive.zip

# Add invisible .gitkeep files in empty directories
# At this time, the empty directories are output/figures,
# output/tables, and code
echo "Adding invisible .gitkeep files"
touch output/figures/.gitkeep
touch output/tables/.gitkeep
touch code/.gitkeep

# Create second bash script in code folder
# This script will help in counting the number
# of sequences in multiple fasta files 
echo "Creating second bash script in code folder"
touch code/02_count_sequences.sh
