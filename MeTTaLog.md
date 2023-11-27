# MeTTaLog: An Implementation of MeTTa in Prolog

MeTTaLog is a superfluous implementaiton of MeTTa, a language designed to succeed OpenCog Classic Atomese.  It is part of the OpenCog Hyperon initiative and provides well-defined semantics for meta-language features, different types of inference, and more.

Jump to [MeTTaLog Installation Guide](https://github.com/logicmoo/vspace-metta/blob/main/MeTTaLog.md#installation-guide)

# Bugs in MeTTaLog

| Pass | Fail |Percent| Directory                                        |
|------|------|-------|--------------------------------------------------|
|     4|    13|    23%| reports/performance -                            |
|    39|    10|    79%| reports/override-compat/hyperon-experimental/python/tests/scripts - |
|    39|    10|    79%| reports/override-compat/hyperon-experimental/python/tests - |
|    39|    10|    79%| reports/override-compat/hyperon-experimental/python - |
|    39|    10|    79%| reports/override-compat/hyperon-experimental -   |
|    39|    10|    79%| reports/override-compat -                        |
|   193|    20|    90%| reports/interp/test_scripts -                    |
|   193|    20|    90%| reports/interp -                                 |
|   117|    20|    85%| reports/compat/hyperon-experimental/python/tests/scripts - |
|   117|    20|    85%| reports/compat/hyperon-experimental/python/tests - |
|   117|    20|    85%| reports/compat/hyperon-experimental/python -     |
|   117|    20|    85%| reports/compat/hyperon-experimental -            |
|   117|    20|    85%| reports/compat -                                 |
|   353|    63|    84%| reports -                                        |

<details><summary>Expand for Core Summaries</summary>

|Pass |Fail |File                               |GitHub Link                                                                                                                       |
|-----|-----|-----------------------------------|----------------------------------------------------------------------------------------------------------------------------------|
|  0  |  12 | test_infer_function_application_type.metta|[reports/performance/test_infer_function_application_type.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/performance/test_infer_function_application_type.html)|
|  20 |  8  | c1_grounded_basic.metta           |[reports/override-compat/hyperon-experimental/python/tests/scripts/c1_grounded_basic.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/override-compat/hyperon-experimental/python/tests/scripts/c1_grounded_basic.html)|
|  19 |  8  | d2_higherfunc.metta               |[reports/compat/hyperon-experimental/python/tests/scripts/d2_higherfunc.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/hyperon-experimental/python/tests/scripts/d2_higherfunc.html)|
|  23 |  4  | d2_higherfunc.metta               |[reports/interp/test_scripts/d2_higherfunc.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/interp/test_scripts/d2_higherfunc.html)|
|  17 |  4  | c1_grounded_basic.metta           |[reports/interp/test_scripts/c1_grounded_basic.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/interp/test_scripts/c1_grounded_basic.html)|
|  3  |  4  | e3_match_states.metta             |[reports/interp/test_scripts/e3_match_states.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/interp/test_scripts/e3_match_states.html)|
|  11 |  3  | d1_gadt.metta                     |[reports/compat/hyperon-experimental/python/tests/scripts/d1_gadt.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/hyperon-experimental/python/tests/scripts/d1_gadt.html)|
|  11 |  3  | f1_imports.metta                  |[reports/compat/hyperon-experimental/python/tests/scripts/f1_imports.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/hyperon-experimental/python/tests/scripts/f1_imports.html)|
|  11 |  3  | f1_imports.metta                  |[reports/interp/test_scripts/f1_imports.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/interp/test_scripts/f1_imports.html)|
|  1  |  3  | e3_match_states.metta             |[reports/compat/hyperon-experimental/python/tests/scripts/e3_match_states.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/hyperon-experimental/python/tests/scripts/e3_match_states.html)|
|  19 |  2  | b5_types_prelim.metta             |[reports/interp/test_scripts/b5_types_prelim.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/interp/test_scripts/b5_types_prelim.html)|
|  19 |  2  | b5_types_prelim.metta             |[reports/override-compat/hyperon-experimental/python/tests/scripts/b5_types_prelim.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/override-compat/hyperon-experimental/python/tests/scripts/b5_types_prelim.html)|
|  10 |  1  | b4_nondeterm.metta                |[reports/compat/hyperon-experimental/python/tests/scripts/b4_nondeterm.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/hyperon-experimental/python/tests/scripts/b4_nondeterm.html)|
|  10 |  1  | b4_nondeterm.metta                |[reports/interp/test_scripts/b4_nondeterm.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/interp/test_scripts/b4_nondeterm.html)|
|  4  |  1  | c3_pln_stv.metta                  |[reports/compat/hyperon-experimental/python/tests/scripts/c3_pln_stv.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/hyperon-experimental/python/tests/scripts/c3_pln_stv.html)|
|  4  |  1  | c3_pln_stv.metta                  |[reports/interp/test_scripts/c3_pln_stv.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/interp/test_scripts/c3_pln_stv.html)|
|  1  |  1  | e1_kb_write.metta                 |[reports/interp/test_scripts/e1_kb_write.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/interp/test_scripts/e1_kb_write.html)|
|  0  |  1  | e1_kb_write.metta                 |[reports/compat/hyperon-experimental/python/tests/scripts/e1_kb_write.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/hyperon-experimental/python/tests/scripts/e1_kb_write.html)|
|  0  |  1  | test_list_concatenation.metta     |[reports/performance/test_list_concatenation.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/performance/test_list_concatenation.html)|
|  17 |  0  | 00_lang_case.metta                |[reports/interp/test_scripts/00_lang_case.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/interp/test_scripts/00_lang_case.html)|
|  14 |  0  | d1_gadt.metta                     |[reports/interp/test_scripts/d1_gadt.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/interp/test_scripts/d1_gadt.html)|
|  9  |  0  | e2_states.metta                   |[reports/compat/hyperon-experimental/python/tests/scripts/e2_states.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/hyperon-experimental/python/tests/scripts/e2_states.html)|
|  9  |  0  | e2_states.metta                   |[reports/interp/test_scripts/e2_states.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/interp/test_scripts/e2_states.html)|
|  8  |  0  | d4_type_prop.metta                |[reports/compat/hyperon-experimental/python/tests/scripts/d4_type_prop.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/hyperon-experimental/python/tests/scripts/d4_type_prop.html)|
|  8  |  0  | d4_type_prop.metta                |[reports/interp/test_scripts/d4_type_prop.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/interp/test_scripts/d4_type_prop.html)|
|  7  |  0  | a1_symbols.metta                  |[reports/compat/hyperon-experimental/python/tests/scripts/a1_symbols.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/hyperon-experimental/python/tests/scripts/a1_symbols.html)|
|  7  |  0  | a1_symbols.metta                  |[reports/interp/test_scripts/a1_symbols.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/interp/test_scripts/a1_symbols.html)|
|  7  |  0  | d3_deptypes.metta                 |[reports/compat/hyperon-experimental/python/tests/scripts/d3_deptypes.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/hyperon-experimental/python/tests/scripts/d3_deptypes.html)|
|  7  |  0  | d3_deptypes.metta                 |[reports/interp/test_scripts/d3_deptypes.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/interp/test_scripts/d3_deptypes.html)|
|  6  |  0  | b1_equal_chain.metta              |[reports/compat/hyperon-experimental/python/tests/scripts/b1_equal_chain.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/hyperon-experimental/python/tests/scripts/b1_equal_chain.html)|
|  6  |  0  | b1_equal_chain.metta              |[reports/interp/test_scripts/b1_equal_chain.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/interp/test_scripts/b1_equal_chain.html)|
|  5  |  0  | 03-soring-via-insert.metta        |[reports/interp/test_scripts/03-soring-via-insert.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/interp/test_scripts/03-soring-via-insert.html)|
|  5  |  0  | b0_chaining_prelim.metta          |[reports/compat/hyperon-experimental/python/tests/scripts/b0_chaining_prelim.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/hyperon-experimental/python/tests/scripts/b0_chaining_prelim.html)|
|  5  |  0  | b0_chaining_prelim.metta          |[reports/interp/test_scripts/b0_chaining_prelim.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/interp/test_scripts/b0_chaining_prelim.html)|
|  5  |  0  | b2_backchain.metta                |[reports/compat/hyperon-experimental/python/tests/scripts/b2_backchain.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/hyperon-experimental/python/tests/scripts/b2_backchain.html)|
|  5  |  0  | b2_backchain.metta                |[reports/interp/test_scripts/b2_backchain.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/interp/test_scripts/b2_backchain.html)|
|  5  |  0  | c2_spaces.metta                   |[reports/compat/hyperon-experimental/python/tests/scripts/c2_spaces.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/hyperon-experimental/python/tests/scripts/c2_spaces.html)|
|  5  |  0  | c2_spaces.metta                   |[reports/interp/test_scripts/c2_spaces.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/interp/test_scripts/c2_spaces.html)|
|  4  |  0  | 04_match_list_like_space.metta    |[reports/interp/test_scripts/04_match_list_like_space.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/interp/test_scripts/04_match_list_like_space.html)|
|  4  |  0  | 05_match_superpose_element_like_space.metta|[reports/interp/test_scripts/05_match_superpose_element_like_space.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/interp/test_scripts/05_match_superpose_element_like_space.html)|
|  4  |  0  | a3_twoside.metta                  |[reports/compat/hyperon-experimental/python/tests/scripts/a3_twoside.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/hyperon-experimental/python/tests/scripts/a3_twoside.html)|
|  4  |  0  | a3_twoside.metta                  |[reports/interp/test_scripts/a3_twoside.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/interp/test_scripts/a3_twoside.html)|
|  4  |  0  | state_types.metta                 |[reports/performance/state_types.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/performance/state_types.html)|
|  3  |  0  | b3_direct.metta                   |[reports/compat/hyperon-experimental/python/tests/scripts/b3_direct.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/hyperon-experimental/python/tests/scripts/b3_direct.html)|
|  2  |  0  | 01_lang_inc.metta                 |[reports/interp/test_scripts/01_lang_inc.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/interp/test_scripts/01_lang_inc.html)|
|  1  |  0  | 02-curried-plus.metta             |[reports/interp/test_scripts/02-curried-plus.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/interp/test_scripts/02-curried-plus.html)|
|  1  |  0  | a2_opencoggy.metta                |[reports/compat/hyperon-experimental/python/tests/scripts/a2_opencoggy.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/hyperon-experimental/python/tests/scripts/a2_opencoggy.html)|
|  1  |  0  | a2_opencoggy.metta                |[reports/interp/test_scripts/a2_opencoggy.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/interp/test_scripts/a2_opencoggy.html)|
|  1  |  0  | f1_moduleA.metta                  |[reports/compat/hyperon-experimental/python/tests/scripts/f1_moduleA.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/hyperon-experimental/python/tests/scripts/f1_moduleA.html)|
|  1  |  0  | f1_moduleA.metta                  |[reports/interp/test_scripts/f1_moduleA.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/interp/test_scripts/f1_moduleA.html)|
|  0  |  0  | b3_direct.metta                   |[reports/interp/test_scripts/b3_direct.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/interp/test_scripts/b3_direct.html)|
|  0  |  0  | d5_auto_types.metta               |[reports/compat/hyperon-experimental/python/tests/scripts/d5_auto_types.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/hyperon-experimental/python/tests/scripts/d5_auto_types.html)|
|  0  |  0  | d5_auto_types.metta               |[reports/interp/test_scripts/d5_auto_types.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/interp/test_scripts/d5_auto_types.html)|
|  0  |  0  | pathfinding-med-f.metta           |[reports/performance/pathfinding-med-f.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/performance/pathfinding-med-f.html)|
|  0  |  0  | structure-tests.metta             |[reports/interp/structure-tests.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/interp/structure-tests.html)|

</details>
 
 
| STATUS | TEST NAME | TEST CONDITION | ACTUAL RESULT | EXPECTED RESULT |
|--------|-----------|----------------|---------------|-----------------|




Test Results:
0 Passed,
0 Failed,
0 Total,
% Passed
 
## Installation Guide

MeTTaLog provides an environment for managing and interacting with Prolog-based logic systems. To set up MeTTaLog on your system, follow the steps below:

### 1. Install SWI-Prolog

Begin by installing the SWI-Prolog system:

```bash
sudo apt install swi-prolog
```

This will install the core Prolog system and its accompanying packages.

### 2. Clone the MeTTaLog Repository

Once SWI-Prolog is installed, clone the MeTTaLog repository from GitHub:

```bash
git clone https://github.com/logicmoo/vspace-metta
```

After cloning, navigate to the `vspace-metta` directory:

```bash
cd vspace-metta
```

### 3. Build and Install Required Packages

To install the required Prolog packs and compile the source, run:

```bash
make
```

This will install necessary Prolog packs like `predicate_streams`, `logicmoo_utils`, and `dictoo`. During the installation of these packs, you may be prompted with several questions. It's recommended to go with the default choices when prompted, as they are typically the best options for most users.

Once compiled, the resulting executable is named MeTTaLog. Additionally, there is a script named MeTTa included in the repository. This script serves as an interface that calls the compiled MeTTaLog executable.


### 4. Running MeTTaLog

After completing the build, you can start the MeTTaLog REPL (Read-Eval-Print Loop) with the following command:

```bash
./MeTTaLog --repl
```

Within the REPL, you can interact directly with the MeTTaLog system. For instance:

```prolog
metta@&self: !(+ 1 1)
```

The REPL will echo the entered command in green, resembling:

```diff
!(+ 1 1)
```

Subsequently, the result `2` will appear, showcasing the successful evaluation of the expression.

To exit the REPL, press `ctrl-D`.

#### Running Tests

To run your first unit test (referred to as a LoonIt Test):

```bash
./MeTTa --html examples/compat/scripts/00_lang_case.metta
```

Upon execution, the output will be saved as `examples/compat/scripts/00_lang_case.html`.

**Note:** Remember, the `MeTTa` script's name is case-sensitive. Do not confuse it with `metta`, which might refer to a different tool written in Rust.


**To run a metta file normally:**

```bash
./MeTTa examples/compat/scripts/b0_chaining_prelim.metta
```

**To run the REPL (such as to debug) once the file is loaded:**

```bash
./MeTTa examples/compat/scripts/b0_chaining_prelim.metta --repl
```

**To run the REPL:**

```bash
./MeTTa --repl
```

## Familiarize Yourself with MeTTa`

1. [Read the MeTTa specification](https://wiki.opencog.org/wikihome/images/b/b7/MeTTa_Specification.pdf).
2. [Learn the Minimal instruction set](https://github.com/trueagi-io/hyperon-experimental/blob/main/docs/minimal-metta.md)


**To run all tests:**

```bash
./total_loonits.sh examples/compat/scripts/
```

**To run a single test:**

```bash
./MeTTa --html examples/compat/scripts/b0_chaining_prelim.metta
```


**See `--help` for more options:**
```
./MeTTa --help
 CMD: ./MeTTa
 Usage: MeTTa [options] <metta-files|directories> ... [-- arg ...passed to your program...]
        MeTTa [options] [-o executable] -c metta-file1 -c metta-file2 ... to compile into executable ...
        MeTTa --help         Display this message
        MeTTa --version      Display version information
        MeTTa --abi-version  Display ABI version key
        MeTTa --arch         Display architecture
        MeTTa --dump-runtime-variables[=format]
                        Dump link info in sh(1) format

    -x state                 Start from state (must be first)
    -g goal                  Run goal (may be repeated)
    -t toplevel              Toplevel goal
    -f file                  User initialisation file
    -F file                  Site initialisation file
    -l file                  Script source file
    -s file                  Script source file
    -p alias=path            Define file search path 'alias'
    -O                       Optimised compilation
    --on-error=style         One of print, halt or status
    --on-warning=style       One of print, halt or status
    --tty[=bool]             (Dis)allow tty control
    --packs[=bool]           Do (not) attach add-ons
    --signals[=bool]         Do (not) modify signal handling
    --threads[=bool]         Do (not) allow for threads
    --debug[=bool]           Do (not) generate debug info
    --debug-on-interrupt[=bool] Trap the debugger on interrupt
    --quiet[=bool] (-q)      Do (not) suppress informational messages
    --traditional            Disable extensions of version 7
    --home[=DIR]             Print home or use DIR as SWI-Prolog home
    --stack-limit=size[BKMG] Specify maximum size of Prolog stacks
    --table-space=size[BKMG] Specify maximum size of SLG tables
    --shared-table-space=size[BKMG] Maximum size of shared SLG tables
    --pce[=bool]             Make the xpce gui available
    --pldoc[=port]           Start PlDoc server [at port]
    --python[=bool]          Enable or disable Python support (default: enable)
    --repl                   Start the REPL (Read-Eval-Print Loop) after processing metta files.
                             If no metta files are provided, this is the default behavior.
    --timeout=seconds        Kill the script after so many seconds.
    --html[=bool]            Save an HTML file containing terminal output in the same
                             directory as the input file or directory.
                             Defaults to true if exactly one metta file or directory argument was provided




 Boolean options may be written as --name=bool, --name, --no-name or --noname.
 Both '-' or '_' are accepted as word-separator for long options.

 Configuration File:
    This script reads options from the ~/.mettalogrc file, one option per line.
    Options specified in ~/.mettalogrc are processed before command-line arguments.

```


# Acknowledgments

Special thanks to the OpenCog community and everyone involved in the development and conceptualization of Hyperon and MeTTa.


# MeTTa Execution Modes
[These are inherited from SWI-Prolog](https://www.swi-prolog.org/pldoc/man?section=cmdline)

MeTTa can be executed in one of the following modes:

- `./MeTTa [option ...] script-file [arg ...]`
Arguments after the script file are made available in the MeTTa flag `argv`.

- `./MeTTa [option ...] metta-file ... [[--] arg ...]`
This is the normal way to start MeTTa. The MeTTa flag `argv` provides access to `arg ...`. If the options are followed by one or more MeTTa file names (i.e., names with extension .metta), these files are loaded. The first file is registered in the MeTTa flag `associated_file`.

- `./MeTTa -o output -c metta-file ...`
The `-c` option is used to compile a set of MeTTa files into an executable.

- `./MeTTa -o output -b prolog-bootfile metta-file ...`
Bootstrap compilation.


### Command Line Options for Running MeTTa
[These are inherited from SWI-Prolog](https://www.swi-prolog.org/pldoc/man?section=cmdline)

Boolean options may be written as `--name` (true), `--noname` or `--no-name` (false).

- `--debug-on-interrupt`
Enable debugging on an interrupt signal immediately.

- `--home[=DIR]`
Use `DIR` as home directory.

- `--quiet`
Set the MeTTa flag `verbose` to `silent`, suppressing informational and banner messages. Also available as `-q`.

- `--no-debug`
Disable debugging.

- `--no-signals`
Inhibit any signal handling by MeTTa, a property that is sometimes desirable for embedded applications. This option sets the flag signals to false. Note that the handler to unblock system calls is still installed. This can be prevented using `--sigalert=0` additionally.

- `--no-threads`
Disable threading for the multi-threaded version at runtime. See also the flags `threads` and `gc_thread`.

- `--no-packs`
Do not attach extension packages (add-ons).

- `--no-pce`
Enable/disable the xpce GUI subsystem. Using `--pce` loads the xpce system in user space and `--no-pce` makes it unavailable in the session.

- `--on-error=style`
How to handle errors.

- `--on-warning=style`
How to handle warnings.

- `--pldoc[=port]`
Start the PlDoc documentation system on a free network port. If port is specified, the server is started at the given port and the browser is not launched.

- `--sigalert=NUM`
Use signal NUM (1 ... 31) for alerting a thread. If NUM is 0 (zero), this handler is not installed.

- `--no-tty`
Unix only. Switches controlling the terminal.

- `-O`
Optimised compilation.

- `-l file.metta`
Load file.metta.

- `-s file.metta`
Use file.metta as a script file.

- `-f file.metta`
Use file.metta as initialisation file instead of the default `init.metta`.

- `-F script`
Select a startup script from the MeTTa home directory.

- `-x prolog-bootfile`
Boot from prolog-bootfile instead of the system''s default boot file.

- `-p alias=path1[:path2 ...]`
Define a path alias for file_search_path.

- `--`
Stops scanning for more arguments.


### Controlling the Stack Sizes

```shell
$ ./MeTTa --stack-limit=32g
```

- `--stack-limit=size[bkmg]`
Limit the combined size of the MeTTa stacks to the indicated size.

- `--table-space=size[bkmg]`
Limit for the table space.

- `--shared-table-space=size[bkmg]`
Limit for the table space for shared tables.

### Running Goals from the Command Line

- `-g goal`
Goal is executed just before entering the top level.

```shell
% ./MeTTa <options> -g (go) -g (quit)
```

- `-t (goal)`
Use goal as an interactive top level instead of the default goal `!(repl!)`.

### Compilation Options
[MeTTa Code is tranliterated to SWI-Prolog code and compiled](https://www.swi-prolog.org/pldoc/man?section=runtime)

- `-c file.metta ...`
Compile files into an intermediate code file.

- `-o output`
Used in combination with `-c` to determine the output file for compilation.


### Informational Command Line Options

- `--arch`
When given as the only option, it prints the architecture identifier (see MeTTa flag `arch`) and exits. See also `--dump-runtime-variables`.

- `--dump-runtime-variables [=format]`
When given as the only option, it prints a sequence of variable settings that can be used in shell scripts to deal with MeTTa parameters.

```shell
eval `./MeTTa --dump-runtime-variables`
cc -I$PLBASE/include -L$PLBASE/lib/$PLARCH ...
```

- `--help`
When given as the only option, it summarises the most important options.

- `--version`
When given as the only option, it summarises the version and the architecture identifier.

- `--abi-version`
Print a key (string) that represents the binary compatibility on a number of aspects.


### Maintenance Options
[These are inherited from SWI-Prolog](https://www.swi-prolog.org/pldoc/man?section=cmdline)

- `-b initfile.metta ...-c file.metta ...`
Boot compilation.

- `-d token1,token2,...`
Print debug messages for DEBUG statements.


