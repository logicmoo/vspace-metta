# MeTTaLog: An Implementation of MeTTa in Prolog

## Introduction

MeTTaLog serves as an implementation of MeTTa, a language designed to succeed OpenCog Classic Atomese. It is part of the OpenCog Hyperon initiative and provides well-defined semantics for meta-language features, different types of inference, and more.

## Prerequisites

- SWI-Prolog

## Installation Guide

### Optional SWI-Prolog Packages

- **Janus (requires SWI-Prolog 9.1.12 or later)**
  [Learn More](https://www.swi-prolog.org/pldoc/man?section=janus-python-package)
  - This lets you call Python code you have written for MeTTa to use.

### Required SWI-Prolog Packages

1. Open your SWI-Prolog terminal.
2. Install `logicmoo_utils` and `dictoo` packs:

```bash
Welcome to SWI-Prolog (threaded, 64 bits, version 9.1.15-49-g93d0c9ac6)
SWI-Prolog comes with ABSOLUTELY NO WARRANTY. This is free software.
Please run ?- license. for legal details.

For online help and background, visit https://www.swi-prolog.org
For built-in help, use ?- help(Topic). or ?- apropos(Word).

?- pack_install(logicmoo_utils).
% Contacting server at https://www.swi-prolog.org/pack/query ... ok
% Pack `logicmoo_utils' is installed @3.1.3

% OO thru Prolog Dicts
?- pack_install(dictoo).
% Contacting server at https://www.swi-prolog.org/pack/query ... ok
% Pack `dictoo' is installed @3.1.3

?- halt.
```

### Clone the MeTTaLog Repository
(nothing needs built)
```bash
git clone https://github.com/logicmoo/metta-vspace.git
cd metta-vspace
./MeTTa examples/compat/test_scripts/00_lang_case.metta  # Run your first unit test (LoonIt Test)
# The output will be saved as `examples/compat/test_scripts/00_lang_case.html`.
```

Note: The `MeTTa` script is case-sensitive and different from `metta` written in Rust.

**To run all tests:**

```bash
./MeTTa examples/compat/test_scripts/*.metta
```

**To run the debugger/REPL:**

```bash
./MeTTa --repl
```

## Familiarize Yourself with MeTTa

1. [Read the MeTTa specification](https://wiki.opencog.org/wikihome/images/b/b7/MeTTa_Specification.pdf).
2. [Learn the Minimal instruction set](https://github.com/trueagi-io/hyperon-experimental/blob/main/docs/minimal-metta.md)

## Fix Bugs in MeTTaLog

| Successes    | Failures     | File                                                                                       |
|--------------|--------------|--------------------------------------------------------------------------------------------|
| 11           | 0            | [00_lang_case.metta](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/examples/compat/test_scripts/00_lang_case.html)                          |
| 0            | 0            | [00_lang_ok_to_redefine.metta](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/examples/compat/test_scripts/00_lang_ok_to_redefine.html)          |
| 1            | 1            | [01_lang_inc.metta](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/examples/compat/test_scripts/01_lang_inc.html)                             |
| 0            | 1            | [02-curried-plus.metta](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/examples/compat/test_scripts/02-curried-plus.html)                     |
| 1            | 2            | [03-soring-via-insert.metta](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/examples/compat/test_scripts/03-soring-via-insert.html)             |
| 5            | 2            | [a1_symbols.metta](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/examples/compat/test_scripts/a1_symbols.html)                             |
| 1            | 0            | [a2_opencoggy.metta](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/examples/compat/test_scripts/a2_opencoggy.html)                         |
| 4            | 0            | [a3_twoside.metta](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/examples/compat/test_scripts/a3_twoside.html)                             |
| 3            | 2            | [b0_chaining_prelim.metta](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/examples/compat/test_scripts/b0_chaining_prelim.html)                 |
| 2            | 4            | [b1_equal_chain.metta](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/examples/compat/test_scripts/b1_equal_chain.html)                       |
| 0            | 5            | [b2_backchain.metta](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/examples/compat/test_scripts/b2_backchain.html)                         |
| 1            | 2            | [b3_direct.metta](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/examples/compat/test_scripts/b3_direct.html)                             |
| 2            | 9            | [b4_nondeterm.metta](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/examples/compat/test_scripts/b4_nondeterm.html)                         |
| 5            | 21           | [b5_types_prelim.metta](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/examples/compat/test_scripts/b5_types_prelim.html)                   |
| 0            | 0            | [c1_grounded_basic.metta](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/examples/compat/test_scripts/c1_grounded_basic.html)                   |
| 4            | 1            | [c2_spaces.metta](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/examples/compat/test_scripts/c2_spaces.html)                             |
| 0            | 0            | [c2_spaces_kb.metta](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/examples/compat/test_scripts/c2_spaces_kb.html)                         |
| 0            | 0            | [c3_pln_stv.metta](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/examples/compat/test_scripts/c3_pln_stv.html)                           |
| 4            | 10           | [d1_gadt.metta](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/examples/compat/test_scripts/d1_gadt.html)                                 |
| 0            | 0            | [d2_higherfunc.metta](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/examples/compat/test_scripts/d2_higherfunc.html)                       |
| 2            | 5            | [d3_deptypes.metta](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/examples/compat/test_scripts/d3_deptypes.html)                           |
| 6            | 12           | [d4_type_prop.metta](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/examples/compat/test_scripts/d4_type_prop.html)                         |
| 0            | 6            | [d5_auto_types.metta](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/examples/compat/test_scripts/d5_auto_types.html)                         |
| 1            | 1            | [e1_kb_write.metta](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/examples/compat/test_scripts/e1_kb_write.html)                           |
| 1            | 10           | [e2_states.metta](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/examples/compat/test_scripts/e2_states.html)                             |
| 0            | 4            | [e3_match_states.metta](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/examples/compat/test_scripts/e3_match_states.html)                     |
| 7            | 10           | [f1_imports.metta](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/examples/compat/test_scripts/f1_imports.html)                             |
| 1            | 0            | [f1_moduleA.metta](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/examples/compat/test_scripts/f1_moduleA.html)                           |
| 0            | 0            | [f1_moduleB.metta](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/examples/compat/test_scripts/f1_moduleB.html)                           |
| 0            | 0            | [f1_moduleC.metta](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/examples/compat/test_scripts/f1_moduleC.html)                           |
| 0            | 0            | [_e2_states_dia.metta](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/examples/compat/test_scripts/_e2_states_dia.html)                     |
| **Total Successes: 62** | **Total Failures: 108** | |

## Acknowledgments

Special thanks to the OpenCog community and everyone involved in the development and conceptualization of Hyperon and MeTTa.


