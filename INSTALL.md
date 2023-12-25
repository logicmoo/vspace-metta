#!/bin/bash
# Run this file with ./INSTALL.md
# ```

# Function to prompt for user confirmation with 'N' as the default
confirm_with_default() {
    echo -e -n "$2"
    while true; do
        if [ "$1" == "N" ]; then
            read -s -p " (y/N): " -n 1 yn
        else
            read -s -p " (${1}/n): " -n 1 yn
        fi

        if [ -z "$yn" ]; then
            yn="$1"  # Corrected assignment without spaces
        fi

        case $yn in
            [Yy]* ) echo "Y" && return 0;;
            [Nn]* ) echo "N" && return 1;;
            * ) echo -e "${YELLOW}Please answer yes or no.${NC}";;
        esac
    done
}



# Function to prompt for input with a default value
prompt_for_input() {
    read -e -i "$2" -p "$1" value
    echo -e "${value:-$2}"
}

# ANSI escape codes
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
RED='\033[0;31m'
GREEN='\033[0;32m'
BOLD='\033[1m'
# ANSI escape code to reset color
NC='\033[0m' # No Color


# Inform the user about the script's actions
echo "This script will check for and install SWI-Prolog and Janus."
echo "SWI-Prolog is a Prolog environment, and Janus is an associated Python package."
echo "The script may need to modify your system by installing packages and software."
echo "Please ensure you have the necessary permissions to make these changes."

# Wait for user acknowledgment
read -p "Press Enter to continue or Ctrl+C to abort..."


echo -e "${BLUE}Starting the installation process..${NC}."

# Check if SWI-Prolog is installed
if ! command -v swipl &> /dev/null; then
    if confirm_with_default "Y" "SWI-Prolog is not installed. Would you like to install it?"; then
        echo -e "${BLUE}Installing SWI-Prolog.${NC}."
	sudo apt-add-repository -y ppa:swi-prolog/devel
	sudo apt-get update
	sudo apt-get install -y swi-prolog
        if [ $? -ne 0 ]; then
            echo -e "${RED}Failed to install SWI-Prolog. Exiting script${NC}."
            exit 1
        fi
    else
        echo -e "${BLUE}SWI-Prolog installation aborted. Exiting script${NC}."
        exit 1
    fi
else
    swi_prolog_version=$(swipl --version)
    if [[ $swi_prolog_version == *"9.1"* ]]; then
      echo "SWI-Prolog version 9.1 is installed."
    else
      echo "SWI-Prolog is not version 9.1."
	sudo apt-add-repository -y ppa:swi-prolog/devel
	sudo apt-get remove -y swi-prolog*
	sudo apt-get update
	sudo apt-get install -y swi-prolog
	# sudo apt-get install -y swi-prolog-bdb swi-prolog-odbc swi-prolog-java
        if [ $? -ne 0 ]; then
            echo -e "${RED}Failed to install SWI-Prolog. Exiting script${NC}."
            exit 1
        fi
    fi
fi

# Check if pip is installed
if ! command -v pip &> /dev/null; then
    echo "pip is not installed. Installing pip..."
    sudo apt-get update
    sudo apt-get install -y python3-pip
    if [ $? -ne 0 ]; then
        echo -e "${RED}Failed to install pip. Exiting script${NC}."
        exit 1
    fi
else
    echo "pip is already installed."
fi

# Assuming SWI-Prolog 9.1 is installed successfully
# Install Janus for SWI-Prolog
echo "Installing Janus for SWI-Prolog..."
pip install git+https://github.com/SWI-Prolog/packages-swipy.git#egg=janus

if [ $? -ne 0 ]; then
    echo -e "${RED}Failed to install Janus. Exiting script${NC}."
    exit 1
else
    echo "Janus installed successfully."
fi

# Install PySWIP for SWI-Prolog
echo "Installing PySWIP for SWI-Prolog..."
pip install git+https://github.com/logicmoo/pyswip.git

if [ $? -ne 0 ]; then
    echo -e "${RED}Failed to install PySWIP. Exiting script${NC}."
    exit 1
else
    echo "PySWIP installed successfully."
fi


echo -e "${BLUE}Updating SWI-Prolog packages...${NC}"
if ! swipl -g "use_module(library(predicate_streams)), halt(0)." -t "halt(1)" 2>/dev/null; then
    echo "Installing predicate_streams..."
    echo -e "${YELLOW}${BOLD}If asked, say yes to everything and/or accept the defaults...${NC}"
    swipl -g "pack_install(predicate_streams)" -t halt
else
    echo "predicate_streams is already installed."
fi

if ! swipl -g "use_module(library(logicmoo_utils)), halt(0)." -t "halt(1)" 2>/dev/null; then
    echo "Installing logicmoo_utils..."
    echo -e "${YELLOW}${BOLD}If asked, say yes to everything and/or accept the defaults...${NC}"
    swipl -g "pack_install(logicmoo_utils)" -t halt
else
    echo "logicmoo_utils is already installed."
fi

if ! swipl -g "use_module(library(dictoo)), halt(0)." -t "halt(1)" 2>/dev/null; then
    echo "Installing dictoo..."
    echo -e "${YELLOW}${BOLD}If asked, say yes to everything and/or accept the defaults...${NC}"
    swipl -g "pack_install(dictoo)" -t halt
else
    echo "dictoo is already installed."
fi



echo -e "${BLUE}Checking if Pyswip is already installed${NC}..."
if ! python -c "import pyswip" &> /dev/null; then
    # Pyswip not installed, prompt the user
    if confirm_with_default "Y" "Would you like to install Pyswip"; then
        echo -e "${BLUE}Installing Pyswip..${NC}."
        pip install git+https://github.com/logicmoo/pyswip.git
        echo -e "${BLUE}Pyswip installation complete${NC}."
    else
        echo -e "${YELLOW}Skipping Pyswip installation${NC}."
    fi
else
    echo -e "${GREEN}Pyswip is already installed${NC}."
fi


echo -e "${BLUE}Setting PYTHONPATH environment variable..${NC}."
export PYTHONPATH=$PWD/metta_vspace:$PYTHONPATH

if confirm_with_default "Y" "Download Quick Loadable Flybase files"; then
    if [ -f whole_flybase.qlf ]; then
        echo "whole_flybase.qlf already exists. Skipping download and extraction."
    else
        wget --show-progress https://logicmoo.org/public/metta/data/whole_flybase.qlf.gz && gunzip whole_flybase.qlf.gz || { echo "Error in download or unzipping." && exit 1; }
        echo "Download and unzipping complete."
    fi

    grep -B 3 -A 10 whole_flybase README.md || { echo "Error or no matches in README.md" && exit 1; }

    exit 0
fi



echo -e "${BLUE}Allowing user to override FBPC_VERSION..${NC}."
export FBPC_VERSION=$(prompt_for_input "Enter the Flybase version slug (or press <enter> to use this default): " "2023_05")
echo -e "${GREEN}"
set -x
export FBPC_URL="ftp.flybase.org/releases/FB$FBPC_VERSION/precomputed_files/"
export FBPC_LOC="./data/$FBPC_URL"
set +x
echo -e "${NC}"

need_fb_files="Y"
if find "$FBPC_LOC" -mindepth 2 -type f -print -quit | grep -q '.'; then
    need_fb_files="N"
    echo -e -n "${GREEN}Looks like we already have the Flybase data.. \n${BLUE}Really RE-"
else
   echo -e "${YELLOW}Looks like we *need* have the Flybase data..${NC}."
fi

if confirm_with_default "${need_fb_files}" "Download Flybase Release?"; then
    echo -e "${BLUE}You may override the Flybase URL${NC}..."
    export FBPC_URL=$(prompt_for_input "Enter the FBPC URL http://" "${FBPC_URL}")

    echo -e "${BLUE}Downloading necessary files..${NC}."
    wget -c --no-parent -r -P ./data/  --reject="index.htm*"  http://$FBPC_URL

    echo -e "${BLUE}Setting the precomputed location..${NC}."
    export FBPC_LOC=./data/$FBPC_URL

    echo -e "${BLUE}Checking and deleting duplicated files..${NC}."
    find $FBPC_LOC -type f -name '*_fb_*' -exec bash -c 'if [[ -f ${1/_fb_????_??/} ]]; then rm -f ${1/_fb_????_??/}; fi' _ {} \;

    echo -e "${BLUE}Calculating disk usage (should be around 587M)..${NC}."
    du -hs $FBPC_LOC
    echo ""

    echo -e "${BLUE}Decompressing the downloaded files..${NC}."
    find $FBPC_LOC -type f -name "*.gz" -execdir bash -c 'if [ ! -f "${1%.gz}" ]; then gunzip -k "$1"; else echo "File exists, skipping: $1"; fi' bash {} \;
    #find $FBPC_LOC -type f -name "*.zip" -print -execdir unzip -o -d . {} \;
    echo ""

    echo -e "${BLUE}Normalizing identifiers in files..${NC}."
    set -x
    find $FBPC_LOC -name "*.fb" -exec sed -i -e 's/FB:FB/FB/g' {} \;
    find $FBPC_LOC -name "*.json" -exec sed -i -e 's/FLYBASE:FB/FB/g' {} \;
    time find $FBPC_LOC -type f ! -name "*.gz" -exec sed -i -e 's/\(FB[a-z]\{2\}\):\([0-9]\)/\1\2/g' -e 's/[Ff][Ll][Yy][Bb][Aa][Ss][Ee]:\([A-Za-z]\)/\1/g' {} \;
    set +x

fi

echo -e "${BLUE}Checking disk usage for flybase (should be around 7.9G)..${NC}."
du -hs $FBPC_LOC
echo ""


if confirm_with_default "N" "Building the Loadable Files might take around 30 minutes. Do you want to continue"; then
    echo -e "${BLUE}Building the Loadable File..${NC}."
    set -x
    ./MeTTa -G "'!(create-flybase-pl! ${FBPC_LOC})'" -G "'!(halt! 777)'"
    set +x
    echo -e "${BLUE}Loadable File build complete${NC}."


    echo -e "${BLUE}No metta files for:${NC}."
    find ftp.flybase.org -type f ! -name "*.png" ! -name "*.gz" ! -name "*.metta" ! -name "*.datalog" -exec bash -c 'for file; do base="${file%.*}"; [[ -z $(find "$(dirname "$file")" -type f -wholename "$base*etta") ]] && echo "$file"; done' bash {} +

    echo -e "${BLUE}No datalog files for:${NC}."
    find ftp.flybase.org -type f ! -name "*.png" ! -name "*.gz" ! -name "*.zip" ! -name "*.datalog" -exec bash -c 'for file; do base="${file%.*}"; [[ -z $(find "$(dirname "$file")" -type f -wholename "$base*atalog") ]] && echo "$file"; done' bash {} +


    echo -e "${BLUE}Removing ':' in datalog files..${NC}."
    find ./data -type f -name "*.datalog" -print -exec sed -i -e 's/\(FB[a-z]\{2\}\):\([0-9]\)/\1\2/g' -e 's/[Ff][Ll][Yy][Bb][Aa][Ss][Ee]:\([A-Za-z]\)/\1/g' {} \;

    echo -e "${BLUE}Removing duplicate lines in datalog files..${NC}."
    time find ./data -type f -name "*.datalog" -exec sh -c 'awk '\''!seen[$0]++'\'' "$1" > tmpfile && mv -f tmpfile "$1"' sh {} \;

    echo -e "${BLUE}Removing duplicate lines in metta files..${NC}."
    time find ./data -type f -name "*.metta" -exec sh -c 'awk '\''!seen[$0]++'\'' "$1" > tmpfile && mv -f tmpfile "$1"' sh {} \;

    echo -e "${BLUE}Alligning OBO preds.${NC}."
    time find ./data/supplimental/12_ontologies/ -type f -name "*.datalog?*" -print -exec sed -i -e 's/obo-is-a/obo-is-type/g'  {} \;

    echo -e "${BLUE}Alligning OBO preds.${NC}."
    time find ./data -type f -name "*.datalog?*" -print -exec sed -i -e 's/obo-has-definition/obo-def/g' -e 's/obo-Inheritance/obo-is-a/g' -e 's/obo-Member/Member/g' -e 's/obo-has-name/obo-name/g'  {} \;
    #  -e 's/obo-[A-Z][A-z]+-/obo-/g'

    echo -e "${BLUE}Combining all of the datalog files into one big one..${NC}."
    find ./data -mindepth 2 -type f -name "*.datalog" -exec cat ./data/whole_header.datalog {} + > ./data/whole_flybase.metta.datalog

    echo -e "${BLUE}Combining all of the MeTTa files into one big one..${NC}."
    find ./data -mindepth 2 -type f -name "*.metta" -exec cat {} + > ./data/whole_flybase.metta

    echo -e "${BLUE}Removing any duplicates from one big one..${NC}."
    time awk '!seen[$0]++' ./data/whole_flybase.metta.datalog > tmpfile && mv -f tmpfile ./data/whole_flybase.metta.datalog

    echo -e "${BLUE}Removing any duplicates from one big one..${NC}."
    time awk '!seen[$0]++' ./data/whole_flybase.metta > tmpfile && mv -f tmpfile ./data/whole_flybase.metta


else
    echo -e "${BLUE}Skipping the building of the Loadable File${NC}."
fi

ls -lh whole_flybase.datalog2
wc - l whole_flybase.datalog2

if confirm_with_default "Y" "Building the  Quick Load File might take around 30 minutes. Do you want to continue"; then
    echo -e "${BLUE}Building the Quick Load File..${NC}."
    set -x
    time swipl -g "qcompile('data/whole_flybase.datalog2')" -t halt
    set +x
    echo -e "${BLUE}Quick Load File build complete${NC}."
else
    echo -e "${BLUE}Skipping the building of the Quick Load File${NC}."
fi

# Optional Rust Metta loading
if confirm_with_default_no "Would you like to be able to load these Flybase Metta files into Rust Metta"; then
    echo -e "${BLUE}Converting data for Rust Metta..${NC}."
    set -x
    ./scripts/convert_to_metta.sh $FBPC_LOC
    set +x
    echo -e "${BLUE}Counting atoms (should be at least 56 million)..${NC}."
    find $FBPC_LOC -type f -name "*.metta" -exec wc -l {} +
fi

echo -e "${BLUE}Installation and setup complete!"


if confirm_with_default "N" "Show README.md"; then
 cat README.md
fi

# End of the script

# ```


