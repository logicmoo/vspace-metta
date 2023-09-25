#!/bin/bash

#set -xv
set -e

# One-liner to check if the script is being sourced or run
IS_SOURCED=$( [[ "${BASH_SOURCE[0]}" != "${0}" ]] && echo 1 || echo 0)

export RUST_BACKTRACE=full
export PYTHONPATH=./metta_vspace

# Save the directory where this script resides
SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# Define maximum execution time in seconds
MAX_TIME=10

cat /dev/null > TEE.ansi.UNITS
cat /dev/null > TEST_LINKS.md

# Store the list of files found by grep in an array
mapfile -t files < <(grep -rl 'assertEq' examples/ --include="*.metta")

for file in "${files[@]}"; do
  # Change to the script's directory
  cd "$SCRIPT_DIR"

  # Define the test command with more aggressive killing options
  TEST_CMD="./MeTTa --timeout=$MAX_TIME --repl=false --html \"$file\""

  #rests in real Metta
  #TEST_CMD="timeout -v --foreground --signal=SIGTERM --kill-after=5s $MAX_TIME metta $file"


  # Echo the command
  echo "Running command: $TEST_CMD"

  set +e
  # Run the command with a timeout
  $TEST_CMD
  set -e

  # Check exit status
  if [ $? -eq 124 ]; then
    echo "Killed after $MAX_TIME seconds: ${TEST_CMD}"
  else
    echo "Completed under $MAX_TIME seconds: ${TEST_CMD}"
  fi
done

#echo "| STATUS | TEST NAME                                                              | TEST CONDITION                                                                               | ACTUAL RESULT             | EXPECTED RESULT  |" > TEST_LINKS.md
#echo "|--------|------------------------------------------------------------------------|----------------------------------------------------------------------------------------------|---------------------------|------------------|" >> TEST_LINKS.md


passed=$(grep -c "| PASS |" TEE.ansi.UNITS)
failed=$(grep -c "| FAIL |" TEE.ansi.UNITS)
total=$((passed + failed))
percent_passed=$(awk -v passed="$passed" -v total="$total" 'BEGIN { printf "%.2f", (passed/total)*100 }')

{
echo "| STATUS | TEST NAME | TEST CONDITION | ACTUAL RESULT | EXPECTED RESULT |"
echo "|--------|-----------|----------------|---------------|-----------------|"
} > TEST_LINKS.md

sort -t'|' -k3 TEE.ansi.UNITS | sed 's/^[ \t]*//' | \
awk -F '|' -v OFS='|' '{ $4 = substr($4, 1, 200); print }' | \
awk -F '|' -v OFS='|' '{ $5 = substr($5, 1, 200); print }' | \
awk -F '|' -v OFS='|' '{ $6 = substr($6, 1, 200); print }' >> TEST_LINKS.md
echo "" >> TEST_LINKS.md
echo "" >> TEST_LINKS.md
echo "" >> TEST_LINKS.md


{
echo "Test Results:"
echo "Passed: $passed"
echo "Failed: $failed"
echo "Total: $total"
echo "Passed Percentage: $percent_passed%"
} > summary.md

cat summary.md TEST_LINKS.md  summary.md > temp && mv temp TEST_LINKS.md
rm summary.md

awk '/# Bugs in MeTTaLog/{exit} 1' MeTTaLog.md > temp1.txt
awk 'BEGIN{flag=0} /# Installation Guide/{flag=1} flag' MeTTaLog.md > temp2.txt

cat temp1.txt PASS_FAIL.md TEST_LINKS.md temp2.txt > final_MeTTaLog.md

cat final_MeTTaLog.md

# Clean up temporary files
rm temp1.txt temp2.txt

function GenerateUnitReports() {
    echo "Executing Tasks..."
    rsync -avm --include='*.html' -f 'hide,! */' examples/ reports/ \
    && echo "1) Synced HTML files from examples/ to reports/ and deleted the original HTML files in examples/"

    find examples/ -name '*.html' -delete

    mv final_MeTTaLog.md MeTTaLog.md \
    && echo "2) Renamed final_MeTTaLog.md to MeTTaLog.md"

    echo "Tasks Completed Successfully."
}

read -p "Are you ready to commit your code and generate unit reports? (y/n): " -n 1 -r
echo    # (optional) move to a new line
if [[ $REPLY =~ ^[Yy]$ ]]
then
    GenerateUnitReports
fi

# If the script is being sourced, use 'return'. Otherwise, use 'exit'.
[[ $IS_SOURCED -eq 1 ]] && return 0 || exit 0


