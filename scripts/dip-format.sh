#!/bin/bash

# Directory containing the files
dir='_dips'

echo "Starting to process files in $dir..."


content=$(cat <<EOL
\n
\`\`\`{toctree}
:maxdepth: 2
:titlesonly: 
:caption: DIPs
:hidden:

\`\`\`
EOL
)

echo "$content" >> "$dir"/README.md

for filename in "$dir"/*.md; do
    if [ $(basename "$filename") = "README.md" ]
    then
      continue
    fi

    echo "Processing $filename..."

    # Extract DIP number
    full_dip_num=$(grep '^  DIP:' "$filename" | awk -F: '{print $2}' | sed 's/^ *//')
    dip="${full_dip_num#"${full_dip_num%%[!0]*}"}"

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
    # cat "$filename"

    echo "dip-$full_dip_num" >> "$dir"/README.md
done

cat "$dir"/README.md

echo "Finished processing files."
