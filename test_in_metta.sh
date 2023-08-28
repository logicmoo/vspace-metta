#!/bin/bash
export RUST_BACKTRACE=1

#python3 metta_vspace/metta_repl.py

pip install .
python3 metta_vspace/flyspace.py

