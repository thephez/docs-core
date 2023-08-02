#!/bin/bash

# Directory containing the files
dir='_external_repo'

for filename in "$dir"/*.md; do
    # Extract DIP number
    dip=$(grep '^  DIP:' "$filename" | awk -F: '{print $2}' | sed 's/^ *//')

    # Extract title
    title=$(grep '^  Title:' "$filename" | awk -F: '{print $2}' | sed 's/^ *//')

    # Combine to make heading
    heading="# $dip - $title"

    # Create temp file
    tempfile=$(mktemp)

    # Write heading to temp file
    echo -e "$heading\n\n" > "$tempfile"

    # Append original file contents to temp file
    cat "$filename" >> "$tempfile"

    # Move temp file to original file
    mv "$tempfile" "$filename"
done
