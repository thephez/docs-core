#!/bin/bash

# Directory containing the files
dir='_external_repo'

echo "Starting to process files in $dir..."

for filename in "$dir"/*.md; do
    echo "Processing $filename..."

    # Extract DIP number
    dip=$(grep '^  DIP:' "$filename" | awk -F: '{print $2}' | sed 's/^ *//')

    # Extract title
    title=$(grep '^  Title:' "$filename" | awk -F: '{print $2}' | sed 's/^ *//')

    # Combine to make heading
    heading="# $dip - $title"
    echo "Heading $heading..."

    # Create temp file
    tempfile=$(mktemp)

    # Write heading to temp file
    echo -e "$heading\n" > "$tempfile"

    # Append original file contents to temp file
    cat "$filename" >> "$tempfile"

    # Move temp file to original file
    mv "$tempfile" "$filename"
    cat "$filename"
done

echo "Finished processing files."
