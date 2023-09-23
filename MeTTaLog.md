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
Please run ?- license. for legal details.`

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
./total_loonits.sh examples/compat/test_scripts/
```

**To run a single test:**

```bash
./MeTTa --html examples/compat/test_scripts/b0_chaining_prelim.metta
```

**To run the debugger/REPL:**

```bash
./MeTTa --repl
```

## Familiarize Yourself with MeTTa`

1. [Read the MeTTa specification](https://wiki.opencog.org/wikihome/images/b/b7/MeTTa_Specification.pdf).
2. [Learn the Minimal instruction set](https://github.com/trueagi-io/hyperon-experimental/blob/main/docs/minimal-metta.md)

## Fix Bugs in MeTTaLog

|Pass |Fail |File                               |GitHub Link                                                                                                                       |
|-----|-----|-----------------------------------|----------------------------------------------------------------------------------------------------------------------------------|
|  7  |  0  | a1_symbols.metta                  |[examples/compat/test_scripts/a1_symbols.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/examples/compat/test_scripts/a1_symbols.html)|
|  5  |  0  | b0_chaining_prelim.metta          |[examples/compat/test_scripts/b0_chaining_prelim.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/examples/compat/test_scripts/b0_chaining_prelim.html)|
|  4  |  0  | a3_twoside.metta                  |[examples/compat/test_scripts/a3_twoside.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/examples/compat/test_scripts/a3_twoside.html)|
|  1  |  0  | a2_opencoggy.metta                |[examples/compat/test_scripts/a2_opencoggy.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/examples/compat/test_scripts/a2_opencoggy.html)|
|  4  |  1  | c2_spaces.metta                   |[examples/compat/test_scripts/c2_spaces.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/examples/compat/test_scripts/c2_spaces.html)|
|  6  |  5  | 00_lang_case.metta                |[examples/compat/test_scripts/00_lang_case.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/examples/compat/test_scripts/00_lang_case.html)|
|  1  |  1  | 01_lang_inc.metta                 |[examples/compat/test_scripts/01_lang_inc.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/examples/compat/test_scripts/01_lang_inc.html)|
|  10 |  16 | b5_types_prelim.metta             |[examples/compat/test_scripts/b5_types_prelim.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/examples/compat/test_scripts/b5_types_prelim.html)|
|  1  |  2  | 03-soring-via-insert.metta        |[examples/compat/test_scripts/03-soring-via-insert.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/examples/compat/test_scripts/03-soring-via-insert.html)|
|  1  |  2  | b3_direct.metta                   |[examples/compat/test_scripts/b3_direct.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/examples/compat/test_scripts/b3_direct.html)|
|  5  |  9  | d1_gadt.metta                     |[examples/compat/test_scripts/d1_gadt.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/examples/compat/test_scripts/d1_gadt.html)|
|  2  |  4  | b1_equal_chain.metta              |[examples/compat/test_scripts/b1_equal_chain.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/examples/compat/test_scripts/b1_equal_chain.html)|
|  2  |  5  | d3_deptypes.metta                 |[examples/compat/test_scripts/d3_deptypes.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/examples/compat/test_scripts/d3_deptypes.html)|
|  1  |  3  | e3_match_states.metta             |[examples/compat/test_scripts/e3_match_states.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/examples/compat/test_scripts/e3_match_states.html)|
|  5  |  13 | d4_type_prop.metta                |[examples/compat/test_scripts/d4_type_prop.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/examples/compat/test_scripts/d4_type_prop.html)|
|  0  |  1  | 02-curried-plus.metta             |[examples/compat/test_scripts/02-curried-plus.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/examples/compat/test_scripts/02-curried-plus.html)|
|  0  |  1  | f1_moduleA.metta                  |[examples/compat/test_scripts/f1_moduleA.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/examples/compat/test_scripts/f1_moduleA.html)|
|  4  |  13 | f1_imports.metta                  |[examples/compat/test_scripts/f1_imports.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/examples/compat/test_scripts/f1_imports.html)|
|  2  |  9  | b4_nondeterm.metta                |[examples/compat/test_scripts/b4_nondeterm.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/examples/compat/test_scripts/b4_nondeterm.html)|
|  5  |  22 | d2_higherfunc.metta               |[examples/compat/test_scripts/d2_higherfunc.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/examples/compat/test_scripts/d2_higherfunc.html)|
|  0  |  2  | e1_kb_write.metta                 |[examples/compat/test_scripts/e1_kb_write.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/examples/compat/test_scripts/e1_kb_write.html)|
|  0  |  2  | test_minecraft_planning_with_abstractions.metta|[examples/compat/test_scripts/test_minecraft_planning_with_abstractions.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/examples/compat/test_scripts/test_minecraft_planning_with_abstractions.html)|
|  1  |  10 | e2_states.metta                   |[examples/compat/test_scripts/e2_states.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/examples/compat/test_scripts/e2_states.html)|
|  0  |  4  | test_minecraft_planning.metta     |[examples/compat/test_scripts/test_minecraft_planning.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/examples/compat/test_scripts/test_minecraft_planning.html)|
|  0  |  5  | b2_backchain.metta                |[examples/compat/test_scripts/b2_backchain.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/examples/compat/test_scripts/b2_backchain.html)|
|  0  |  5  | c3_pln_stv.metta                  |[examples/compat/test_scripts/c3_pln_stv.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/examples/compat/test_scripts/c3_pln_stv.html)|
|  0  |  6  | d5_auto_types.metta               |[examples/compat/test_scripts/d5_auto_types.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/examples/compat/test_scripts/d5_auto_types.html)|
|  1  |  20 | c1_grounded_basic.metta           |[examples/compat/test_scripts/c1_grounded_basic.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/examples/compat/test_scripts/c1_grounded_basic.html)|
|  0  |  0  | 00_lang_ok_to_redefine.metta      |[examples/compat/test_scripts/00_lang_ok_to_redefine.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/examples/compat/test_scripts/00_lang_ok_to_redefine.html)|
|  0  |  0  | c2_spaces_kb.metta                |[examples/compat/test_scripts/c2_spaces_kb.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/examples/compat/test_scripts/c2_spaces_kb.html)|
|  0  |  0  | _e2_states_dia.metta              |[examples/compat/test_scripts/_e2_states_dia.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/examples/compat/test_scripts/_e2_states_dia.html)|
|  0  |  0  | f1_moduleB.metta                  |[examples/compat/test_scripts/f1_moduleB.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/examples/compat/test_scripts/f1_moduleB.html)|
|  0  |  0  | f1_moduleC.metta                  |[examples/compat/test_scripts/f1_moduleC.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/examples/compat/test_scripts/f1_moduleC.html)|
|-----|-----|-----------------------------------|----------------------------------------------------------------------------------------------------------------------------------|
|68   |161  |Totals                             |For 'examples/compat/test_scripts/*.metta'                                                                                        |

## Acknowledgments

Special thanks to the OpenCog community and everyone involved in the development and conceptualization of Hyperon and MeTTa.


