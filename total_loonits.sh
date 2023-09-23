#!/bin/bash


export UNITS_DIR="${1:-examples/compat/test_scripts/}"
export FOUND_UNITS=/tmp/found_units

#find "${UNITS_DIR}" -name "*.html" -type f -delete

find "${UNITS_DIR}" -name "*.metta" -type f -exec ./MeTTa --timeout=60 {} --html \;


# Initialize counters
total_successes=0
total_failures=0

# Base URL for GitHub links
base_url="https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/"

# Change to the appropriate directory
# cd $UNITS_DIR || exit 1

cat /dev/null > $FOUND_UNITS.sortme

# Use find to get all HTML files and save them to a temporary file
find "${UNITS_DIR}" -name "*.html" -type f > $FOUND_UNITS

# Loop over each line in the temporary file
while read -r file; do
    # The rest of the script remains mostly unchanged
    current_successes=$(cat "$file" | sed 's/\x1b\[[0-9;]*m//g' | grep 'Successes:' | awk -F: '{sum += $2} END {print sum}')
    current_failures=$(cat "$file" | sed 's/\x1b\[[0-9;]*m//g' | grep 'Failures:' | awk -F: '{sum += $2} END {print sum}')

    [ -z "$current_successes" ] && current_successes=0
    [ -z "$current_failures" ] && current_failures=0

    relative_path=$(echo "$file" | sed 's/^\.\///')
    basename=$(basename $relative_path)
    basename=${basename%.*}
    github_link="${base_url}${relative_path}"

    printf "|%-5s|%-5s|%-35s|%-130s|\n" "  $current_successes" "  $current_failures" " ${basename}.metta" "[$relative_path]($github_link)" >> $FOUND_UNITS.sortme

    total_successes=$((total_successes + current_successes))
    total_failures=$((total_failures + current_failures))

done < $FOUND_UNITS

# Clean up the temporary file
rm $FOUND_UNITS

sort -t'|' -k2,2nr -k3,3n -k4,4 -o $FOUND_UNITS.sortme  $FOUND_UNITS.sortme

awk -F'|' '{
    total = $2 + $3 + 1;
    zero = ($2 == 0 && $3 == 0) ? 1 : 0;
    ratio = (1 + $2 * 2) / total;
    print ratio "\t" $3 "\t" zero "\t" $0
}' "$FOUND_UNITS.sortme" |
sort -t$'\t' -k3,3n -k1,1nr -k2,2n |
cut -f4- > "$FOUND_UNITS.sorted"

mv "$FOUND_UNITS.sorted" "$FOUND_UNITS.sortme"




# Print header
echo "# Bugs in MeTTaLog" > PASS_FAIL.md
printf "|%-5s|%-5s|%-35s|%-130s|\n" "Pass" "Fail" "File" "GitHub Link" >> PASS_FAIL.md
printf "|%-5s|%-5s|%-35s|%-130s|\n" "$(printf -- '-%.0s' {1..5})" "$(printf -- '-%.0s' {1..5})" "$(printf -- '-%.0s' {1..35})" "$(printf -- '-%.0s' {1..130})" >> PASS_FAIL.md
cat $FOUND_UNITS.sortme >> PASS_FAIL.md
#printf "|%-5s|%-5s|%-35s|%-130s|\n" "$(printf -- '-%.0s' {1..5})" "$(printf -- '-%.0s' {1..5})" "$(printf -- '-%.0s' {1..35})" "$(printf -- '-%.0s' {1..130})"  >> PASS_FAIL.md
printf "|%-5s|%-5s|%-35s|%-130s|\n" " $total_successes" " $total_failures" " Totals" " For '${UNITS_DIR}*.metta'"  >> PASS_FAIL.md
echo "" >> PASS_FAIL.md


cat PASS_FAIL.md

awk '/# Bugs in MeTTaLog/{exit} 1' MeTTaLog.md > temp1.txt
awk 'BEGIN{flag=0} /# Installation Guide/{flag=1} flag' MeTTaLog.md > temp2.txt

cat temp1.txt PASS_FAIL.md temp2.txt > final_MeTTaLog.md

# Optional: Overwrite the MeTTaLog.md with the final_MeTTaLog.md
mv final_MeTTaLog.md MeTTaLog.md

# Clean up temporary files
rm temp1.txt temp2.txt



#grep -A 3 loonit_f -R . --include="*.html"

