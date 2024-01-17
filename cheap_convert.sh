#!/bin/bash

VERBOSE=0
total_conversions=0
compilation_failures=0

# Function to conditionally execute a command based on verbosity
IF_VERBOSE() {
    if [ "$VERBOSE" = "1" ]; then
        "$@"
    fi
}

convert_metta_file() {
    start_time1=$(date +%s) # Start time of the conversion

    # Input and output file names
    input_file="$1"
    output_file="$input_file.datalog"

    # Full path of the input file
    full_path=$(realpath "$input_file")

    IF_VERBOSE echo "Converting: $full_path..."

    # Add the specific line at the top of the output file
    echo "% :- include(library(metta_include))." > "$output_file"
    echo ":- multifile(asserted_metta/4)." >> "$output_file"
    echo ":- dynamic(asserted_metta/4)." >> "$output_file"

      # AWK script for advanced conversion with line number tracking, appending file path, and safe handling of single quotes
      awk -v path="$full_path" '
      {
          # Skip blank lines
          if ($0 ~ /^ *$/) { next; }
          if (substr($0, 1, 1) == ";") {
              # Line starts with ";", output as is with "%" at the beginning
              print "%" substr($0, 2);
          } else {
              # Choose the prefix based on whether the line starts with "!"
              prefix = (substr($0, 1, 1) == "!") ? ":- called_in_metta(\047&self\047, " : "asserted_metta(\047&self\047, ";

              # Process the line, append file path and line number at the end
              in_quote = 0; output = prefix; last_char = ""; need_quote = 0; start_line = 1;
              for (i=1; i<=length($0); i++) {
                  char = substr($0, i, 1);

                  # Toggle in_quote flag for non-escaped quotes
                  if (char == "\"" && last_char != "\\") {
                      in_quote = !in_quote;
                      if (in_quote) {
                          need_quote = 0;  # Reset need_quote when entering a quote
                      } else if (start_line) {
                          output = output ".";  # Add a period after a balanced quote at the start
                      }
                      start_line = 0;  # Any quote marks the end of the start of the line
                  }

                  #Handle characters based on context
                  if (!in_quote) {
                      if (char == "(") { char = "["; need_quote = 1; }
                      else if (char == ")") { char = "]"; need_quote = 0; }
                      else if (char == " " && last_char != " " && last_char != "[" && last_char != ",") { char = ", "; need_quote = 1; }
                      else if (char != " " && last_char == " " && last_char != "\"" && (output == "" || substr(output, length(output), 1) == "[" || substr(output, length(output), 1) == ",")) {
                          if (need_quote) char = "\047\047" char;
                          need_quote = 0;
                      }
                      if (last_char == " " && char != " " && char != "\"" && char != "," && char != "]" && need_quote) {
                          output = output "\047\047";
                          need_quote = 0;
                      }
                  }

                  # Append the character and update last_char
                  if (char != " " || last_char != " ") {
                      output = output char;
                  }
                  last_char = char;
              }

              # Append single quote, file path, and line number
              output = output ", \047" path "\047, " NR ").";
              print output;
          }
      }
      ' "$input_file" >> "$output_file"

      total_conversions=$((total_conversions + 1)) # Increment conversion count

      # End time and execution duration for conversion
      end_time1=$(date +%s)
      IF_VERBOSE echo "Conversion complete in $((end_time1 - start_time1)) seconds."

      # Compilation of the .datalog file
      start_time2=$(date +%s)
      IF_VERBOSE echo "Beginning compilation of $output_file"
      swipl -g "qcompile('${output_file}')" -t halt
      if [ $? -ne 0 ]; then
          echo "Warning: Compilation of $output_file failed."
          compilation_failures=$((compilation_failures + 1))
          return 1
      fi

      end_time2=$(date +%s)
      IF_VERBOSE echo "Compilation complete in $((end_time2 - start_time2)) seconds."

      rm -f "$output_file.gz"
      gzip "$output_file"
      IF_VERBOSE ls -lh "$input_file" "$output_file.gz" "$input_file.qlf"
      IF_VERBOSE echo "Total File time: $((end_time2 - start_time1)) seconds for $input_file"

      start_time3=$(date +%s)
      IF_VERBOSE swipl -q -l $input_file.qlf -t halt
      end_time3=$(date +%s)
      IF_VERBOSE echo "File $input_file.qlf will now load  in $((end_time3 - start_time3)) seconds."

}
start_time=$(date +%s) # Start time of the script

# Iterate over all command-line arguments
for arg in "$@"; do
   if [ -d "$arg" ]; then
       # If argument is a directory, process each .metta file in that directory
       for file in "$arg"/?*.metta; do
           [ -e "$file" ] || continue  # Skip if no .metta files found
           convert_metta_file "$file"
       done
   elif [[ "$arg" == *.metta ]]; then
       # If argument is a .metta file, process it
       convert_metta_file "$arg"
   elif [[ "$arg" =~ --verbose=([0-9]+) ]]; then
       # Set VERBOSE to the specified number
       VERBOSE=${BASH_REMATCH[1]}
   else
       # Warn about unrecognized arguments
       echo "Warning: Unrecognized argument '$arg'"
   fi
done

end_time=$(date +%s)

# Total script execution time
if [ "$VERBOSE"  -ne 0 ]; then
  if [ "$total_conversions" -ne 1 ]; then
     echo "Total time for $total_conversions conversions: $((end_time - start_time)) seconds."
  fi
fi

# Exit with a non-zero status code if there were compilation failures
if [ "$compilation_failures" -ne 0 ]; then
   echo "There were $compilation_failures compilation failures."
   exit 1
else
   exit 0
fi

