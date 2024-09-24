#!/bin/bash

# Check if a directory name was provided
if [ -z "$1" ]; then
  echo "Please provide a directory name."
  exit 1
fi

# Create the new directory
mkdir -p "$1"

# Check if directory creation was successful
if [ $? -eq 0 ]; then
  # Create a text file in the new directory
  touch "$1/new_file.txt"
  echo "Text file 'new_file.txt' created in directory '$1'."
else
  echo "Failed to create directory '$1'."
  exit 1
fi

# Output success message
echo "Directory '$1' and file 'new_file.txt' created successfully!"
