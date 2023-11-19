
mkdir -p compat
mkdir -p override-compat
mkdir -p ~temp~

(
cd ~temp~/
ln -s ../../../hyperon-experimental
ln -s ../../../hyperon-miner
ln -s ../../../hyperon-pln
ln -s ../../../metta-examples
ln -s ../../../metta-morph

process_file() {
    src_file=$1
    dest_file=$2
    override_file=$3

    if [[ -f "$dest_file" ]]; then
        if cmp -s "$src_file" "$dest_file"; then
            echo "Skipping '$src_file': Destination file is identical."
            return
        elif cmp -s "$src_file" "$override_file"; then
            echo "Skipping '$src_file': Source is identical to the override file."
            return
        else
            if [[ ! -f "$override_file" ]]; then
                echo "Creating override of new file '$src_file' while keeping old $dest_file."
                cp "$src_file" "$override_file"
            else
                echo "Overwriting '$dest_file' with '$src_file', keeping existing override."
                cp "$src_file" "$dest_file"
            fi
        fi
    else
        echo "Copying new file '$src_file' to '$dest_file'."
        cp "$src_file" "$dest_file"
    fi
}


find ./?*/?*/ -type f  -name "*.metta" -exec dirname {} \; | sort -u | while read -r dir; do
    parent_dir=$(dirname "$dir")
    dest_dir="../compat/${dir#./}"
    parent_dest_dir="../compat/${parent_dir#./}"
    override_dir="../override-compat/${dir#./}"
    parent_override_dir="../override-compat/${parent_dir#./}"

    mkdir -p "$dest_dir"
    mkdir -p "$parent_dest_dir"
    mkdir -p "$override_dir"
    mkdir -p "$parent_override_dir"

   # Process files in parent directory
   for file in $parent_dir/?*.??*; do
      if [[ -f "$file" ]]; then
       filename=$(basename "$file")
       process_file "$file" "$parent_dest_dir/$filename" "$parent_override_dir/$filename"
      fi
   done

   # Repeat the same logic for the target directory
   for file in $dir/?*.??*; do
      if [[ -f "$file" ]]; then
       filename=$(basename "$file")
       process_file "$file" "$dest_dir/$filename" "$override_dir/$filename"
      fi
   done

done
)
git status .


