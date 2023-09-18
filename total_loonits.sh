#!/bin/bash

# Initialize counters
total_successes=0
total_failures=0

# Base URL for GitHub links
base_url="https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/examples/compat/test_scripts/"

# Change to the appropriate directory
cd examples/compat/test_scripts/ || exit 1

# Print header
printf "%-15s %-15s %-15s %-100s\n" "Successes" "Failures" "File" "GitHub Link"

# Use find to get all HTML files and save them to a temporary file
find . -name "*.html" -type f > /tmp/find_output

# Loop over each line in the temporary file
while read -r file; do
    # The rest of the script remains mostly unchanged
    current_successes=$(cat "$file" | sed 's/\x1b\[[0-9;]*m//g' | grep 'Successes:' | awk -F: '{sum += $2} END {print sum}')
    current_failures=$(cat "$file" | sed 's/\x1b\[[0-9;]*m//g' | grep 'Failures:' | awk -F: '{sum += $2} END {print sum}')

    [ -z "$current_successes" ] && current_successes=0
    [ -z "$current_failures" ] && current_failures=0

    relative_path=$(echo "$file" | sed 's/^\.\///')
    github_link="${base_url}${relative_path}"

    printf "%-15s %-15s %-15s %-100s\n" "$current_successes" "$current_failures" "[$relative_path]($github_link)"

    total_successes=$((total_successes + current_successes))
    total_failures=$((total_failures + current_failures))

done < /tmp/find_output

# Clean up the temporary file
rm /tmp/find_output

# Print total counts
echo "--------------------------------------------------------------"
echo "Total Successes: $total_successes"
echo "Total Failures: $total_failures"

