#!/bin/bash

download_root_directory="."

echo "Starting script in the download root directory: $download_root_directory"

# Function to redownload a file
redownload() {
    relative_path="${1#$download_root_directory/}"
    echo "Redownloading $relative_path..."
    wget -m "http://$relative_path"
    echo "Redownload completed for $relative_path"
}

# Navigate to the root directory of the wget download
cd "$download_root_directory"

echo "Searching for .gz files to verify and potentially redownload..."

# Find and perform initial checks on each .gz file
find . -type f -name "*.gz" -exec sh -c '
    file="$1"
    uncompressed_file="${file%.gz}"

    if [ -f "$uncompressed_file" ]; then
        # echo "Uncompressed file already exists, verifying size: $file"
        original_size=$(stat -c%s "$file")
        decompressed_size=$(stat -c%s "$uncompressed_file")

        if [ "$decompressed_size" -le "$original_size" ]; then
            echo "Warning: Decompressed file is not larger than the original: $file"
            rm "$uncompressed_file"
            echo "Deleted potentially corrupted uncompressed file: $uncompressed_file"
            redownload "$file"
        else
            echo "Size verification successful for: $file"
        fi
    else
        echo "File needs to be decompressed: $file"
    fi
' _ {} \;

echo "Decompressing and extracting files where necessary..."

# Decompress and possibly extract tar files
find . -type f -name "*.gz" -exec sh -c '
    file="$1"
    uncompressed_file="${file%.gz}"
    directory="$(dirname "$uncompressed_file")"
    tar_file_name="$(basename "$uncompressed_file")"
    extraction_directory="${directory}/${tar_file_name%.tar}"

    # Decompress .gz files
    if [ ! -f "$uncompressed_file" ]; then
        echo "Decompressing file: $file"
        gunzip -k "$file"
        echo "Decompression completed for: $file"
    fi

    # Create a new directory below the current one and extract tar files into it
    if [ -f "$uncompressed_file" ] && [ "${uncompressed_file##*.}" = "tar" ]; then
        echo "Creating directory for extraction: $extraction_directory"
        mkdir -p "$extraction_directory"
        echo "Extracting tar file: $tar_file_name into $extraction_directory"
        tar -xf "$uncompressed_file" -C "$extraction_directory"
        echo "Extraction completed for tar file: $tar_file_name into $extraction_directory"
    fi
' _ {} \;

echo "Script execution completed."



