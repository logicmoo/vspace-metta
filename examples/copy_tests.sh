
mkdir -p compat
mkdir -p temp
cd temp/
ln -s ../../../hyperon-experimental
ln -s ../../../hyperon-miner
ln -s ../../../hyperon-pln
ln -s ../../../metta-examples
ln -s ../../../metta-morph
find ./?*/?*/ -type f  -name "*.metta"  -exec dirname {} \; | sort -u | while read -r dir; do
    parent_dir=$(dirname "$dir")
    dest_dir="../compat/${dir#./}"
    parent_dest_dir="../compat/${parent_dir#./}"

    mkdir -p "$dest_dir"
    mkdir -p "$parent_dest_dir"

    echo "$dir/ -> $dest_dir"
    echo "$parent_dir/ -> $parent_dest_dir"

    rsync -av --ignore-existing --include='*.py'   --include='*?.??*'   --include='*.md'  --include='*.sh' --include='*.metta' --exclude='*' "$parent_dir/" "$parent_dest_dir"
    rsync -av --ignore-existing --include='*.py'  --include='*?.??*'   --include='*.md'  --include='*.sh' --include='*.metta' --exclude='*' "$dir/" "$dest_dir"
done



