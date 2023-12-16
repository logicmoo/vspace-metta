#!/bin/bash
# Run this file with ./INSTALL.md
# ```
# Function to prompt for user confirmation with 'Y' as the default
confirm_with_default_yes() {
    while true; do
        read -p "$1 (Y/n): " yn
        case $yn in
            [Yy]* | "" ) return 0;;  # Treats empty response as 'Y'
            [Nn]* ) return 1;;
            * ) echo "Please answer yes or no.";;
        esac
    done
}

# Function to prompt for user confirmation with 'N' as the default
confirm_with_default_no() {
    while true; do
        read -p "$1 (y/N): " yn
        case $yn in
            [Yy]* ) return 0;;
            [Nn]* | "" ) return 1;;  # Treats empty response as 'N'
            * ) echo "Please answer yes or no.";;
        esac
    done
}

# Function to prompt for input with a default value
prompt_for_input() {
    read -p "$1 [$2]: " value
    echo "${value:-$2}"
}

echo "Starting the installation process..."

# Check if SWI-Prolog is installed
if ! command -v swipl &> /dev/null; then
    if confirm_with_default_yes "SWI-Prolog is not installed. Would you like to install it?"; then
        echo "Installing SWI-Prolog..."
        sudo apt install swi-prolog
        if [ $? -ne 0 ]; then
            echo "Failed to install SWI-Prolog. Exiting script."
            exit 1
        fi
    else
        echo "SWI-Prolog installation aborted. Exiting script."
        exit 1
    fi
fi

echo "Installing SWI-Prolog packages... (Say yes to everything and accept the defaults)"
swipl -g "pack_install(predicate_streams)" -t halt
swipl -g "pack_install(logicmoo_utils)" -t halt
swipl -g "pack_install(dictoo)" -t halt


# Prompt to install Pyswip
if confirm_with_default_yes "Would you like to install Pyswip"; then
    echo "Installing Pyswip..."
    pip install git+https://github.com/logicmoo/pyswip.git
    echo "Pyswip installation complete."
else
    echo "Skipping Pyswip installation."
fi

echo "Setting environment variables..."
export PYTHONPATH=$PWD/metta_vspace:$PYTHONPATH

echo "Allowing user to override FBPC_URL..."
default_fbpc_url="ftp.flybase.org/releases/FB2023_04/precomputed_files/"
export FBPC_URL=$(prompt_for_input "Enter the FBPC URL" $default_fbpc_url)

echo "Downloading necessary files..."
wget --no-parent -A .gz -r -P ./data/ http://$FBPC_URL

echo "Setting the precomputed location..."
export FBPC_LOC=./data/$FBPC_URL

echo "Checking and deleting duplicated files..."
find $FBPC_LOC -type f -name '*_fb_*' -exec bash -c 'if [[ -f ${1/_fb_????_??/} ]]; then rm -f ${1/_fb_????_??/}; fi' _ {} \;

echo "Calculating disk usage (should be around 587M)..."
du -hs $FBPC_LOC

echo "Decompressing the downloaded files..."
find $FBPC_LOC -type f -name "*.gz" -execdir gunzip {} \;

echo "Checking disk usage after decompression (should be around 7.2G)..."
du -hs $FBPC_LOC

echo "Normalizing identifiers in files..."
set -x
find $FBPC_LOC -type f -exec sed -i -e 's/\(FB[a-z]\{2\}\):\([0-9]\)/\1\2/g' -e 's/[Ff][Ll][Yy][Bb][Aa][Ss][Ee]:\([A-Za-z]\)/\1/g' {} \;
find $FBPC_LOC -name "*.fb" -exec sed -i -e 's/FB:FB/FB/g' {} \;
find $FBPC_LOC -name "*.json" -exec sed -i -e 's/FLYBASE:FB/FB/g' {} \;
set +x

if confirm_with_default_yes "Building the Quick Load File might take around 40 minutes. Do you want to continue"; then
    echo "Building the Quick Load File..."
    set -x
    ./MeTTa -G "!(create-flybase-pl! ${FBPC_LOC})" -G "!(halt! 777)"
    swipl -g "qcompile(whole_flybase)" -t halt
    set +x
    echo "Quick Load File build complete."
else
    echo "Skipping the building of the Quick Load File."
fi

# Optional Rust Metta loading
if confirm_with_default_no "Would you like to be able to load these Flybase Metta files into Rust Metta"; then
    echo "Converting data for Rust Metta..."
    set -x
    ./scripts/convert_to_metta.sh $FBPC_LOC
    set +x
    echo "Counting atoms (should be at least 56 million)..."
    find $FBPC_LOC -type f -name "*.metta" -exec wc -l {} +
fi

echo "Installation and setup complete!"


if confirm_with_default_no "Show README.md"; then
 cat README.md
fi

# End of the script

# ```


