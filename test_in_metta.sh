#!/bin/bash

#set -xv
#set -e

# One-liner to check if the script is being sourced or run
IS_SOURCED=$( [[ "${BASH_SOURCE[0]}" != "${0}" ]] && echo 1 || echo 0)

export RUST_BACKTRACE=full
export PYTHONPATH=./metta_vspace

# Save the directory where this script resides
SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# Define maximum execution time in seconds
MAX_TIME=10

export UNITS_DIR="${1:-examples/}"

function delete_html_files() {
    cd "$SCRIPT_DIR"
    find "${UNITS_DIR}" -name "*.html" -type f -delete
}

function run_tests() {

    delete_html_files

    cd "$SCRIPT_DIR"
    cat /dev/null > TEE.ansi.UNITS

    mapfile -t files < <(grep -rl 'assertEq' "${UNITS_DIR}" --include="*.metta")

    for file in "${files[@]}"; do
        cd "$SCRIPT_DIR"

        TEST_CMD="./MeTTa --timeout=$MAX_TIME --repl=false --html \"$file\""

        echo "Running command: $TEST_CMD"

        set +e
        $TEST_CMD
        #set -e

        if [ $? -eq 124 ]; then
            echo "Killed after $MAX_TIME seconds: ${TEST_CMD}"
        else
            echo "Completed under $MAX_TIME seconds: ${TEST_CMD}"
        fi
    done
}


function generate_final_MeTTaLog() {

    cd "$SCRIPT_DIR"

    passed=$(grep -c "| PASS |" TEE.ansi.UNITS)
    failed=$(grep -c "| FAIL |" TEE.ansi.UNITS)
    total=$((passed + failed))
    percent_passed=$(awk -v passed="$passed" -v total="$total" 'BEGIN { printf "%.2f", (passed/total)*100 }')

    {
    echo " "
    echo "| STATUS | TEST NAME | TEST CONDITION | ACTUAL RESULT | EXPECTED RESULT |"
    echo "|--------|-----------|----------------|---------------|-----------------|"
    } > TEST_LINKS.md

    sort -t'|' -k3 TEE.ansi.UNITS | sed 's/^[ \t]*//' | \
    awk -F '|' -v OFS='|' '{ $4 = substr($4, 1, 200); print }' | \
    awk -F '|' -v OFS='|' '{ $5 = substr($5, 1, 200); print }' | \
    awk -F '|' -v OFS='|' '{ $6 = substr($6, 1, 200); print }' >> TEST_LINKS.md

    echo -e "\n\n\n" >> TEST_LINKS.md

    {
    echo "Test Results:"
    echo "$passed Passed,"
    echo "$failed Failed,"
    echo "$total Total,"
    echo "$percent_passed% Passed"
    } > summary.md

    (
    cat PASS_FAIL.md
    echo " "
    cat TEST_LINKS.md
    cat summary.md
    echo " "
    ) > temp && mv temp TEST_LINKS.md

    rm summary.md

    awk '/# Bugs in MeTTaLog/{exit} 1' MeTTaLog.md > temp1.txt
    awk 'BEGIN{flag=0} /# Installation Guide/{flag=1} flag' MeTTaLog.md > temp2.txt

    cat temp1.txt TEST_LINKS.md temp2.txt > final_MeTTaLog.md

    #cat final_MeTTaLog.md

    # Clean up temporary files
    rm temp1.txt temp2.txt
}




function PreCommitReports() {

    cd "$SCRIPT_DIR"
    echo "Executing Tasks..."
    rsync -avm --include='*.html' -f 'hide,! */' examples/ reports/ \
    && echo "1) Synced HTML files from examples/ to reports/ and deleted the original HTML files in examples/"

    find examples/ -name '*.html' -delete

    mv final_MeTTaLog.md MeTTaLog.md \
    && echo "2) Renamed final_MeTTaLog.md to MeTTaLog.md"

   # Get current branch name
   branch_name=$(git rev-parse --abbrev-ref HEAD)

   # Get the latest commit SHA
   latest_commit=$(git rev-parse HEAD)

   # Get the current timestamp
   timestamp=$(date +%Y%m%d%H%M%S)

   version_info="${branch_name}_${latest_commit}_${timestamp}"

   # Check if there are uncommitted changes
   if [[ -n $(git status --porcelain) ]]; then
       changes="_with_uncommitted_changes"
   fi

   # Construct the reference string
   version_info="${branch_name}_${latest_commit}_${timestamp}${changes}"

   echo " " >> NewResults.md
   echo $(date) >> NewResults.md
   echo "version_info=$version_info" >> NewResults.md
   echo " " >> NewResults.md
   cat Results.md  >> NewResults.md
   echo "Tasks Completed Successfully."
}


function compare_test_files() {

    if [ "$#" -ne 2 ]; then
        echo "Usage: compare_test_files <file1> <file2>"
        return 1
    fi

    file1="$1"
    file2="$2"

    cd "$SCRIPT_DIR"

    if [ ! -f "$file1" ] || [ ! -f "$file2" ]; then
        echo "Error: One or both of the files do not exist."
        return 1
    fi

    sorted1=$(mktemp)
    sorted2=$(mktemp)

#    grep -E '\| PASS \||\| FAIL \|' "$file1" | awk -F'|' '{ gsub(/\(.*/, "", $3); print $2, $3 }' | sort > "$sorted1"
#    grep -E '\| PASS \||\| FAIL \|' "$file2" | awk -F'|' '{ gsub(/\(.*/, "", $3); print $2, $3 }' | sort > "$sorted2"
       grep -E '\| PASS \||\| FAIL \|' "$file1" | awk -F'|' '{ gsub(/.*#/, "", $3); print $2, $3 }' | sort > "$sorted1"
       grep -E '\| PASS \||\| FAIL \|' "$file2" | awk -F'|' '{ gsub(/.*#/, "", $3); print $2, $3 }' | sort > "$sorted2"


    cat "$sorted1"
    # If the Results.md file exists, remove it and create a new one.
    [ -e Results.md ] && rm Results.md
    touch Results.md

    comm -3 "$sorted1" "$sorted2" | while read -r line; do
        read -r status test <<< "$line"

        status1=$(grep "$test" "$sorted1" | awk '{print $1}' | tr -d ' ')
        status2=$(grep "$test" "$sorted2" | awk '{print $1}' | tr -d ' ')

        if [[ -n "$status1" && -n "$status2" && "$status1" != "$status2" ]]; then
            echo "Now ${status2}ING $test" >> Results.md
        fi
    done

    sort -u Results.md -o Results.md

    echo "-----------------------------------------"
    grep 'PASSING' Results.md
    echo "-----------------------------------------"
    grep 'FAILING' Results.md
    echo "-----------------------------------------"

    new_passing=$(grep -c 'PASSING' Results.md)
    new_failing=$(grep -c 'FAILING' Results.md)

    echo "Number of newly PASSING tests: $new_passing"
    echo "Number of newly FAILING tests: $new_failing"

    rm -f "$sorted1" "$sorted2"
}

(
   cd "$SCRIPT_DIR"

   read -p "Rerun all tests? (y/N): " -n 1 -r
   echo    # Move to a new line for cleaner output
   if [[ $REPLY =~ ^[Yy]$ ]]
   then
       run_tests
   else
       echo "You chose not to run all tests."
   fi

   generate_final_MeTTaLog
   compare_test_files ./MeTTaLog.md ./final_MeTTaLog.md

   read -p "Are you ready to commit your code and generate unit reports? (y/N): " -n 1 -r
   echo    # Move to a new line for cleaner output
   if [[ $REPLY =~ ^[Yy]$ ]]
   then
       PreCommitReports
   else
       echo "You chose not to commit your code and generate unit reports."
   fi
)

[[ $IS_SOURCED -eq 1 ]] && return 0 || exit 0

