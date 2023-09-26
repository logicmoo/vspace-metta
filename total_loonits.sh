#!/bin/bash

export UNITS_DIR="${1:-examples/}"
export FOUND_UNITS=/tmp/found_units

function delete_html_files() {
    find "${UNITS_DIR}" -name "*.html" -type f -delete
}

function run_metta() {
    if [ -n "${1}" ] && [ -d "${UNITS_DIR}" ]; then
        find "${UNITS_DIR}" -name "*.metta" -type f -exec ./MeTTa --timeout=20 {} \;
    fi
}

function initialize_counters() {
    total_successes=0
    total_failures=0
}

function analyze_files() {
    cat /dev/null > $FOUND_UNITS.sortme
    find "${UNITS_DIR}" -name "*.html" -type f > $FOUND_UNITS

    while read -r file; do
        process_file "$file"
    done < $FOUND_UNITS

    rm $FOUND_UNITS
    sort_and_calculate_totals
}

function process_file() {
    local file="$1"
    local current_successes current_failures relative_path basename github_link

    current_successes=$(get_current_successes "$file")
    current_failures=$(get_current_failures "$file")

    [ -z "$current_successes" ] && current_successes=0
    [ -z "$current_failures" ] && current_failures=0

    relative_path=$(echo "$file" | sed 's/^\.\///' | sed -e 's/examples/reports/g')
    basename=$(basename $relative_path)
    basename=${basename%.*}
    github_link="${base_url}${relative_path}"

    printf "|%-5s|%-5s|%-35s|%-130s|\n" "  $current_successes" "  $current_failures" " ${basename}.metta" "[$relative_path]($github_link)" >> $FOUND_UNITS.sortme

    total_successes=$((total_successes + current_successes))
    total_failures=$((total_failures + current_failures))
}

function get_current_successes() {
    local file="$1"
    cat "$file" | sed 's/\x1b\[[0-9;]*m//g' | grep 'Successes:' | awk -F: '{sum += $2} END {print sum}'
}

function get_current_failures() {
    local file="$1"
    cat "$file" | sed 's/\x1b\[[0-9;]*m//g' | grep 'Failures:' | awk -F: '{sum += $2} END {print sum}'
}

function sort_and_calculate_totals() {
    local total percent_failures percent_successes

    sort -t'|' -k3,3nr -k2,2nr -k4,4 -o $FOUND_UNITS.sortme  $FOUND_UNITS.sortme
    awk -F'|' 'NR>1{print ( $3+$2 ) ( $2-$3 >= 0 ? $2-$3 : $3-$2 ) ,$0}' FOUND_UNITS.sortme | sort -n | cut -f3- -d' ' > FOUND_UNITS.sorted
    mv FOUND_UNITS.sorted FOUND_UNITS.sortme

    total=$((total_successes + total_failures))
    if [ $total -ne 0 ]; then
        percent_failures=$(( 100*total_failures/total ))
        percent_successes=$(( 100*total_successes/total ))
    else
        percent_failures=0
        percent_successes=0
    fi

    echo "Total tests: $total"
    echo "Percentage of failures: $percent_failures%"
    print_report $percent_successes
}

function print_report() {
    local percent_successes="$1"

    echo "# Bugs in MeTTaLog" > PASS_FAIL.md
    echo " " >> PASS_FAIL.md
    echo "<details><summary>Expand for Core Summaries</summary>" >> PASS_FAIL.md
    echo " " >> PASS_FAIL.md
    printf "|%-5s|%-5s|%-35s|%-130s|\n" "Pass" "Fail" "File" "GitHub Link" >> PASS_FAIL.md
    printf "|%-5s|%-5s|%-35s|%-130s|\n" "$(printf -- '-%.0s' {1..5})" "$(printf -- '-%.0s' {1..5})" "$(printf -- '-%.0s' {1..35})" "$(printf -- '-%.0s' {1..130})" >> PASS_FAIL.md
    cat $FOUND_UNITS.sortme >> PASS_FAIL.md
    printf "|%-5s|%-5s|%-35s|%-130s|\n" " $total_successes" " $total_failures" " Total: $total" " For $percent_successes% '${UNITS_DIR}*.metta'"  >> PASS_FAIL.md
    echo " " >> PASS_FAIL.md
    echo "</details>" >> PASS_FAIL.md
    echo "" >> PASS_FAIL.md
    cat PASS_FAIL.md
}

function main() {
    base_url="https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/"
    initialize_counters
    # Uncomment below line to delete HTML files
    # delete_html_files
    # run_metta
    analyze_files
}

main

