#!/bin/bash


export UNITS_DIR="${1:-examples/compat/test_scripts/}"
export FOUND_UNITS=/tmp/found_units

#find "${UNITS_DIR}" -name "*.html" -type f -delete


#time find "${UNITS_DIR}" -name "*.metta" -type f -printf "running %P\n" -exec metta {} \;

if [ -n "${1}" ] && [ -d "${UNITS_DIR}" ]; then
   # --html
   find "${UNITS_DIR}" -name "*.metta" -type f -exec ./MeTTa --timeout=20 {} \;
fi




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

    relative_path=$(echo "$file" | sed 's/^\.\///' | sed -e 's/examples/reports/g')
    basename=$(basename $relative_path)
    basename=${basename%.*}
    github_link="${base_url}${relative_path}"

    printf "|%-5s|%-5s|%-35s|%-130s|\n" "  $current_successes" "  $current_failures" " ${basename}.metta" "[$relative_path]($github_link)" >> $FOUND_UNITS.sortme

    total_successes=$((total_successes + current_successes))
    total_failures=$((total_failures + current_failures))

done < $FOUND_UNITS

# Clean up the temporary file
rm $FOUND_UNITS

sort -t'|' -k3,3nr -k2,2nr -k4,4 -o $FOUND_UNITS.sortme  $FOUND_UNITS.sortme

#sort -t'|' -k2,2nr -k3,3nr -k4,4 -o $FOUND_UNITS.sortme  $FOUND_UNITS.sortme

if [[ "never" == "never" ]]; then
    awk -F'|' 'NR>1{print ( $3+$2 ) ( $2-$3 >= 0 ? $2-$3 : $3-$2 ) ,$0}' FOUND_UNITS.sortme | sort -n | cut -f3- -d' ' > FOUND_UNITS.sorted
    mv FOUND_UNITS.sorted FOUND_UNITS.sortme
fi


# calculate the total number of tests
total=$((total_successes + total_failures))

# calculate the percentage of failures
if [ $total -ne 0 ]; then
    percent_failures=$(( 100*total_failures/total ))
    percent_successes=$(( 100*total_successes/total ))
else
    percent_failures=0
    percent_successes=0
fi

echo "Total tests: $total"
echo "Percentage of failures: $percent_failures%"


# Print header
echo "# Bugs in MeTTaLog" > PASS_FAIL.md
printf "|%-5s|%-5s|%-35s|%-130s|\n" "Pass" "Fail" "File" "GitHub Link" >> PASS_FAIL.md
printf "|%-5s|%-5s|%-35s|%-130s|\n" "$(printf -- '-%.0s' {1..5})" "$(printf -- '-%.0s' {1..5})" "$(printf -- '-%.0s' {1..35})" "$(printf -- '-%.0s' {1..130})" >> PASS_FAIL.md
cat $FOUND_UNITS.sortme >> PASS_FAIL.md
#printf "|%-5s|%-5s|%-35s|%-130s|\n" "$(printf -- '-%.0s' {1..5})" "$(printf -- '-%.0s' {1..5})" "$(printf -- '-%.0s' {1..35})" "$(printf -- '-%.0s' {1..130})"  >> PASS_FAIL.md
printf "|%-5s|%-5s|%-35s|%-130s|\n" " $total_successes" " $total_failures" " Total: $total" " For $percent_successes% '${UNITS_DIR}*.metta'"  >> PASS_FAIL.md
echo "" >> PASS_FAIL.md


cat PASS_FAIL.md

awk '/# Bugs in MeTTaLog/{exit} 1' MeTTaLog.md > temp1.txt
awk 'BEGIN{flag=0} /# Installation Guide/{flag=1} flag' MeTTaLog.md > temp2.txt

cat temp1.txt PASS_FAIL.md temp2.txt > final_MeTTaLog.md

# Optional: Overwrite the MeTTaLog.md with the final_MeTTaLog.md
echo "Dont forget 1) \\mv ${UNITS_DIR}*.html $(echo ${UNITS_DIR} | sed -e 's/examples/reports/g')"
echo "            2) \\mv final_MeTTaLog.md MeTTaLog.md"
echo find "${UNITS_DIR}" -name \"*.metta\" -type f -exec ./MeTTa --timeout=20 {} \\;


# Clean up temporary files
rm temp1.txt temp2.txt



#grep -A 3 loonit_f -R . --include="*.html"
