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


echo "| STATUS | TEST NAME                                                              | TEST CONDITION                                                                               | ACTUAL RESULT             | EXPECTED RESULT  |" > TEST_LINKS.md
echo "|--------|------------------------------------------------------------------------|----------------------------------------------------------------------------------------------|---------------------------|------------------|" >> TEST_LINKS.md
grep -h "UNIT-TEST: | " -R examples/ --include="*.html" | sed -e "s|</span>||g" -e "s|; UNIT-TEST: ||g" | sort -t'|' -k2  >> TEST_LINKS.md
sed 's/^[ \t]*//' -i TEST_LINKS.md

echo DONT FORGET TO:  \\mv TEST_LINKS.md UNIT_LINKS.md
# If the script is being sourced, use 'return'. Otherwise, use 'exit'.
[[ $IS_SOURCED -eq 1 ]] && return 0 || exit 0
