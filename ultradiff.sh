#!/bin/bash

# Prompt for file1 and file2
echo "Enter the path of the first file:"
read file1
echo "Enter the path of the second file:"
read file2

# Check if the files exist
if [ ! -f "$file1" ]; then
    echo "File1 does not exist. Please check the path and try again."
    exit 1
fi

if [ ! -f "$file2" ]; then
    echo "File2 does not exist. Please check the path and try again."
    exit 1
fi

# Get the current user and set the output file paths on the desktop
current_user=$(whoami)
output_file1="/Users/$current_user/Desktop/not_in_$(basename "$file1").md"
output_file2="/Users/$current_user/Desktop/not_in_$(basename "$file2").md"

# Compare the files and output the differences to separate markdown files
echo "Comparing $file1 and $file2, saving results to $output_file1 and $output_file2"

{
    echo "Lines present in **$(basename "$file2")** but not in **$(basename "$file1")**:"
    echo ""
    diff "$file1" "$file2" | grep '^>' | sed 's/^> /- /'
} > "$output_file1"

{
    echo "Lines present in **$(basename "$file1")** but not in **$(basename "$file2")**:"
    echo ""
    diff "$file1" "$file2" | grep '^<' | sed 's/^< /- /'
} > "$output_file2"

echo "Comparison complete. Please check the files on your desktop."
