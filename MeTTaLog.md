# MeTTaLog: An Implementation of MeTTa in Prolog

MeTTaLog is a superfluous implementaiton of MeTTa, a language designed to succeed OpenCog Classic Atomese.  It is part of the OpenCog Hyperon initiative and provides well-defined semantics for meta-language features, different types of inference, and more.

Jump to [MeTTaLog Installation Guide](https://github.com/logicmoo/vspace-metta/blob/main/MeTTaLog.md#installation-guide)

Usage: ./scripts/pass_fail_totals.sh <start_directory>
# Bugs in MeTTaLog

root@gitlab:/opt/logicmoo_workspace/packs_sys/logicmoo_opencog/MeTTa/vspace-metta# ./scripts/pass_fail_totals.sh examples/
| Pass | Fail |Miss|Percent| Directory |
|------|------|----|-------|-----------|
|     4|     9|    |   30% |examples/python_compat/hyperon-experimental_python/sandbox/resolve |
|     4|    13|  3 |   20% |examples/python_compat/hyperon-experimental_python/sandbox |
|     4|    13|  3 |   20% |examples/python_compat/hyperon-experimental_python |
|     4|    13|  9 |   15% |examples/python_compat |
|    33|    19|  9 |   54% |examples/performance |
|     4|     2|  1 |   57% |examples/features/host_language/compiler |
|     4|     2|  1 |   57% |examples/features/host_language |
|     2|     6|    |   25% |examples/features/containers_are_spaces |
|     6|     8|  7 |   28% |examples/features |
|    27|     4|  3 |   79% |examples/extended_compat/nars/prev |
|    24|     7|  3 |   70% |examples/extended_compat/nars/new |
|    24|     7|  3 |   70% |examples/extended_compat/nars/nars_v0 |
|     1|     2|  2 |   20% |examples/extended_compat/nars/nars_extras |
|    12|    15|  4 |   38% |examples/extended_compat/nars/current |
|    88|    35| 15 |   63% |examples/extended_compat/nars |
|     1|     5|  1 |   14% |examples/extended_compat/metta-examples/recursion-schemes/src/examples |
|     1|     5|  1 |   14% |examples/extended_compat/metta-examples/recursion-schemes/src |
|     1|     5|  1 |   14% |examples/extended_compat/metta-examples/recursion-schemes |
|    18|     9|    |   66% |examples/extended_compat/metta-examples/prob-dep-types |
|     2|     2|    |   50% |examples/extended_compat/metta-examples/logic |
|    21|    16|  5 |   50% |examples/extended_compat/metta-examples |
|     3|     0|    |  100% |examples/extended_compat/hyperon-miner/utils |
|     3|     0|    |  100% |examples/extended_compat/hyperon-miner/match |
|     6|     0|    |  100% |examples/extended_compat/hyperon-miner |
|   115|    51| 20 |   61% |examples/extended_compat |
|    75|     1|  2 |   96% |examples/baseline_compat/metta-morph_tests |
|    24|    17|  5 |   52% |examples/baseline_compat/hyperon-pln_metta/synthesis/experiments |
|    24|    20|  6 |   48% |examples/baseline_compat/hyperon-pln_metta/synthesis |
|     2|     1|    |   66% |examples/baseline_compat/hyperon-pln_metta/sumo/orientation |
|     2|     1|    |   66% |examples/baseline_compat/hyperon-pln_metta/sumo/located |
|     1|     4|    |   20% |examples/baseline_compat/hyperon-pln_metta/sumo/john-carry-flower |
|     5|     6|    |   45% |examples/baseline_compat/hyperon-pln_metta/sumo |
|     1|     0|    |  100% |examples/baseline_compat/hyperon-pln_metta/subtyping |
|     2|     0|  1 |   66% |examples/baseline_compat/hyperon-pln_metta/hol |
|    29|    18|    |   61% |examples/baseline_compat/hyperon-pln_metta/forward-chainer |
|     4|     3|    |   57% |examples/baseline_compat/hyperon-pln_metta/entail |
|    16|     8|  1 |   64% |examples/baseline_compat/hyperon-pln_metta/dependent-types |
|    13|     0|    |  100% |examples/baseline_compat/hyperon-pln_metta/common/truthvalue |
|    12|     0|    |  100% |examples/baseline_compat/hyperon-pln_metta/common/formula |
|    66|     4|    |   94% |examples/baseline_compat/hyperon-pln_metta/common |
|    31|    14|    |   68% |examples/baseline_compat/hyperon-pln_metta/backward-chainer |
|   178|    78|  9 |   67% |examples/baseline_compat/hyperon-pln_metta |
|    33|     0|    |  100% |examples/baseline_compat/hyperon-mettalog_sanity |
|   175|    24|  1 |   87% |examples/baseline_compat/hyperon-experimental_scripts |
|   461|   103| 12 |   80% |examples/baseline_compat |
|   619|   194| 61 |   70% |examples/ |


<details><summary>Expand for Core Summaries</summary>


|  Pass |  Fail |  Percent | File/Directory Information                                                                              |
|-------|-------|----------|----------------------------------------------------------------------------------------------------|
|-------|-------|----------|----------------------------------------------------------------------------------------------------|
|       |       |          |                                                                                                    |
|       |       |          | Directory:     ./examples/performance/                 |
|       |       |          |                                                                                                    |
|    -1 |    -1 |      0%% | [pathfinding-hard-f.metta](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/performance/pathfinding-hard-f.metta.html) |
|     1 |     0 |    100%% | [hanoi-peg-space.metta](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/performance/hanoi-peg-space.metta.html) |
|    -1 |    -1 |      0%% | [fibo.metta](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/performance/fibo.metta.html) |
|    -1 |    -1 |      0%% | [pathfinding-easy.metta](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/performance/pathfinding-easy.metta.html) |
|    -1 |    -1 |      0%% | [pathfinding-hard.metta](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/performance/pathfinding-hard.metta.html) |
|    -1 |    -1 |      0%% | [fibo-as-pred.metta](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/performance/fibo-as-pred.metta.html) |
|    -1 |    -1 |      0%% | [factorial.metta](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/performance/factorial.metta.html) |
|    16 |     7 |     69%% | [state_types.metta](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/performance/state_types.metta.html) |
|     1 |     0 |    100%% | [fwgc1.metta](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/performance/fwgc1.metta.html) |
|     0 |    12 |      0%% | [test_infer_function_application_type.metta](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/performance/test_infer_function_application_type.metta.html) |
|    -1 |    -1 |      0%% | [pathfinding-med-f.metta](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/performance/pathfinding-med-f.metta.html) |
|    -1 |    -1 |      0%% | [pathfinding-edge.metta](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/performance/pathfinding-edge.metta.html) |
|    13 |     0 |    100%% | [key-lookups-many.metta](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/performance/key-lookups-many.metta.html) |
|    -1 |    -1 |      0%% | [pathfinding-easy-f.metta](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/performance/pathfinding-easy-f.metta.html) |
|     1 |     0 |    100%% | [hanoi-one-space.metta](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/performance/hanoi-one-space.metta.html) |
|     1 |     0 |    100%% | [test_list_concatenation.metta](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/performance/test_list_concatenation.metta.html) |
|       |       |          |                                                                                                    |
|    33 |    28 |      54% | Total                                                                                              |
|       |       |          |                                                                                                    |
|-------|-------|----------|----------------------------------------------------------------------------------------------------|
|-------|-------|----------|----------------------------------------------------------------------------------------------------|
|       |       |          |                                                                                                    |
|       |       |          | Directory:     ./examples/baseline_compat/hyperon-experimental_scripts/                 |
|       |       |          |                                                                                                    |
|     5 |     0 |    100%% | [b0_chaining_prelim.metta](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/hyperon-experimental_scripts/b0_chaining_prelim.metta.html) |
|     6 |     0 |    100%% | [b1_equal_chain.metta](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/hyperon-experimental_scripts/b1_equal_chain.metta.html) |
|    10 |     1 |     90%% | [b4_nondeterm.metta](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/hyperon-experimental_scripts/b4_nondeterm.metta.html) |
|     3 |     3 |     50%% | [e3_match_states.metta](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/hyperon-experimental_scripts/e3_match_states.metta.html) |
|     2 |     0 |    100%% | [e1_kb_write.metta](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/hyperon-experimental_scripts/e1_kb_write.metta.html) |
|     5 |     0 |    100%% | [b2_backchain.metta](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/hyperon-experimental_scripts/b2_backchain.metta.html) |
|     8 |    10 |     44%% | [d4_type_prop.metta](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/hyperon-experimental_scripts/d4_type_prop.metta.html) |
|     5 |     0 |    100%% | [c2_spaces.metta](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/hyperon-experimental_scripts/c2_spaces.metta.html) |
|    11 |     3 |     78%% | [d1_gadt.metta](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/hyperon-experimental_scripts/d1_gadt.metta.html) |
|     3 |     0 |    100%% | [b3_direct.metta](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/hyperon-experimental_scripts/b3_direct.metta.html) |
|    -1 |    -1 |      0%% | [d5_auto_types.metta](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/hyperon-experimental_scripts/d5_auto_types.metta.html) |
|    25 |     2 |     92%% | [d2_higherfunc.metta](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/hyperon-experimental_scripts/d2_higherfunc.metta.html) |
|    20 |     1 |     95%% | [b5_types_prelim.metta](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/hyperon-experimental_scripts/b5_types_prelim.metta.html) |
|     1 |     0 |    100%% | [a2_opencoggy.metta](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/hyperon-experimental_scripts/a2_opencoggy.metta.html) |
|     7 |     0 |    100%% | [a1_symbols.metta](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/hyperon-experimental_scripts/a1_symbols.metta.html) |
|    21 |     0 |    100%% | [c1_grounded_basic.metta](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/hyperon-experimental_scripts/c1_grounded_basic.metta.html) |
|    10 |     0 |    100%% | [e2_states.metta](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/hyperon-experimental_scripts/e2_states.metta.html) |
|     4 |     0 |    100%% | [a3_twoside.metta](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/hyperon-experimental_scripts/a3_twoside.metta.html) |
|    17 |     2 |     89%% | [f1_imports.metta](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/hyperon-experimental_scripts/f1_imports.metta.html) |
|     2 |     0 |    100%% | [f1_moduleA.metta](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/hyperon-experimental_scripts/f1_moduleA.metta.html) |
|     7 |     0 |    100%% | [d3_deptypes.metta](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/hyperon-experimental_scripts/d3_deptypes.metta.html) |
|     3 |     2 |     60%% | [c3_pln_stv.metta](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/hyperon-experimental_scripts/c3_pln_stv.metta.html) |
|       |       |          |                                                                                                    |
|   175 |    25 |      87% | Total                                                                                              |
|       |       |          |                                                                                                    |
|-------|-------|----------|----------------------------------------------------------------------------------------------------|
|-------|-------|----------|----------------------------------------------------------------------------------------------------|
|       |       |          |                                                                                                    |
|       |       |          | Directory:     ./examples/baseline_compat/hyperon-mettalog_sanity/                 |
|       |       |          |                                                                                                    |
|    18 |     0 |    100%% | [00_lang_case.metta](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/hyperon-mettalog_sanity/00_lang_case.metta.html) |
|     1 |     0 |    100%% | [structure-tests.metta](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/hyperon-mettalog_sanity/structure-tests.metta.html) |
|     6 |     0 |    100%% | [06_match_in_space.metta](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/hyperon-mettalog_sanity/06_match_in_space.metta.html) |
|     5 |     0 |    100%% | [03-soring-via-insert.metta](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/hyperon-mettalog_sanity/03-soring-via-insert.metta.html) |
|     2 |     0 |    100%% | [01_lang_inc.metta](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/hyperon-mettalog_sanity/01_lang_inc.metta.html) |
|     1 |     0 |    100%% | [02-curried-plus.metta](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/hyperon-mettalog_sanity/02-curried-plus.metta.html) |
|       |       |          |                                                                                                    |
|    33 |     0 |     100% | Total                                                                                              |
|       |       |          |                                                                                                    |
|-------|-------|----------|----------------------------------------------------------------------------------------------------|
|-------|-------|----------|----------------------------------------------------------------------------------------------------|
|       |       |          |                                                                                                    |
|       |       |          | Directory:     ./examples/baseline_compat/metta-morph_tests/                 |
|       |       |          |                                                                                                    |
|    -1 |    -1 |      0%% | [let_superpose_if_case.metta](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/metta-morph_tests/let_superpose_if_case.metta.html) |
|     7 |     0 |    100%% | [tests0.metta](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/metta-morph_tests/tests0.metta.html) |
|    11 |     0 |    100%% | [match_void.metta](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/metta-morph_tests/match_void.metta.html) |
|     0 |     1 |      0%% | [minnars.metta](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/metta-morph_tests/minnars.metta.html) |
|     1 |     0 |    100%% | [add_atom_match.metta](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/metta-morph_tests/add_atom_match.metta.html) |
|     6 |     0 |    100%% | [states_spaces.metta](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/metta-morph_tests/states_spaces.metta.html) |
|     1 |     0 |    100%% | [multifunction.metta](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/metta-morph_tests/multifunction.metta.html) |
|     1 |     0 |    100%% | [match_feval.metta](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/metta-morph_tests/match_feval.metta.html) |
|     5 |     0 |    100%% | [types2.metta](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/metta-morph_tests/types2.metta.html) |
|     1 |     0 |    100%% | [collapse.metta](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/metta-morph_tests/collapse.metta.html) |
|     1 |     0 |    100%% | [nested_parameters.metta](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/metta-morph_tests/nested_parameters.metta.html) |
|    -1 |    -1 |      0%% | [nalifier.metta](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/metta-morph_tests/nalifier.metta.html) |
|     1 |     0 |    100%% | [factorial.metta](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/metta-morph_tests/factorial.metta.html) |
|     5 |     0 |    100%% | [match_superposed_spaces.metta](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/metta-morph_tests/match_superposed_spaces.metta.html) |
|     2 |     0 |    100%% | [zeroargs.metta](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/metta-morph_tests/zeroargs.metta.html) |
|     1 |     0 |    100%% | [letlet.metta](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/metta-morph_tests/letlet.metta.html) |
|     1 |     0 |    100%% | [peano.metta](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/metta-morph_tests/peano.metta.html) |
|     1 |     0 |    100%% | [and_or.metta](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/metta-morph_tests/and_or.metta.html) |
|     7 |     0 |    100%% | [supercollapse.metta](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/metta-morph_tests/supercollapse.metta.html) |
|    12 |     0 |    100%% | [sequential_nested.metta](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/metta-morph_tests/sequential_nested.metta.html) |
|     1 |     0 |    100%% | [types3.metta](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/metta-morph_tests/types3.metta.html) |
|     1 |     0 |    100%% | [types.metta](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/metta-morph_tests/types.metta.html) |
|     1 |     0 |    100%% | [if.metta](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/metta-morph_tests/if.metta.html) |
|     2 |     0 |    100%% | [let_superpose_list.metta](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/metta-morph_tests/let_superpose_list.metta.html) |
|     1 |     0 |    100%% | [identity.metta](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/metta-morph_tests/identity.metta.html) |
|     4 |     0 |    100%% | [superpose_nested.metta](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/metta-morph_tests/superpose_nested.metta.html) |
|     1 |     0 |    100%% | [let_superpose_list2.metta](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/metta-morph_tests/let_superpose_list2.metta.html) |
|       |       |          |                                                                                                    |
|    75 |     3 |      96% | Total                                                                                              |
|       |       |          |                                                                                                    |
|-------|-------|----------|----------------------------------------------------------------------------------------------------|
|-------|-------|----------|----------------------------------------------------------------------------------------------------|
|       |       |          |                                                                                                    |
|       |       |          | Directory:     ./examples/features/containers_are_spaces/                 |
|       |       |          |                                                                                                    |
|     1 |     3 |     25%% | [04_match_list_like_space.metta](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/features/containers_are_spaces/04_match_list_like_space.metta.html) |
|     1 |     3 |     25%% | [05_match_superpose_element_like_space.metta](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/features/containers_are_spaces/05_match_superpose_element_like_space.metta.html) |
|       |       |          |                                                                                                    |
|     2 |     6 |      25% | Total                                                                                              |
|       |       |          |                                                                                                    |
|-------|-------|----------|----------------------------------------------------------------------------------------------------|
|-------|-------|----------|----------------------------------------------------------------------------------------------------|
|       |       |          |                                                                                                    |
|       |       |          | Directory:     ./examples/baseline_compat/hyperon-pln_metta/backward-chainer/                 |
|       |       |          |                                                                                                    |
|    31 |    14 |     68%% | [backward-chainer-xp.metta](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/hyperon-pln_metta/backward-chainer/backward-chainer-xp.metta.html) |
|       |       |          |                                                                                                    |
|    31 |    14 |      68% | Total                                                                                              |
|       |       |          |                                                                                                    |
|-------|-------|----------|----------------------------------------------------------------------------------------------------|
|-------|-------|----------|----------------------------------------------------------------------------------------------------|
|       |       |          |                                                                                                    |
|       |       |          | Directory:     ./examples/baseline_compat/hyperon-pln_metta/common/                 |
|       |       |          |                                                                                                    |
|     1 |     0 |    100%% | [EqualityTypeTest.metta](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/hyperon-pln_metta/common/EqualityTypeTest.metta.html) |
|     7 |     3 |     70%% | [NumTest.metta](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/hyperon-pln_metta/common/NumTest.metta.html) |
|     1 |     0 |    100%% | [InTest.metta](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/hyperon-pln_metta/common/InTest.metta.html) |
|    19 |     0 |    100%% | [ListTest.metta](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/hyperon-pln_metta/common/ListTest.metta.html) |
|     3 |     0 |    100%% | [MaybeTest.metta](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/hyperon-pln_metta/common/MaybeTest.metta.html) |
|    10 |     1 |     90%% | [OrderedSetTest.metta](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/hyperon-pln_metta/common/OrderedSetTest.metta.html) |
|       |       |          |                                                                                                    |
|    41 |     4 |      91% | Total                                                                                              |
|       |       |          |                                                                                                    |
|-------|-------|----------|----------------------------------------------------------------------------------------------------|
|-------|-------|----------|----------------------------------------------------------------------------------------------------|
|       |       |          |                                                                                                    |
|       |       |          | Directory:     ./examples/baseline_compat/hyperon-pln_metta/dependent-types/                 |
|       |       |          |                                                                                                    |
|    10 |     6 |     62%% | [ImplicationDirectIntroductionDTLTest.metta](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/hyperon-pln_metta/dependent-types/ImplicationDirectIntroductionDTLTest.metta.html) |
|    -1 |    -1 |      0%% | [DeductionImplicationDirectIntroductionDTLTest.metta](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/hyperon-pln_metta/dependent-types/DeductionImplicationDirectIntroductionDTLTest.metta.html) |
|     4 |     0 |    100%% | [DeductionDTLTest.metta](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/hyperon-pln_metta/dependent-types/DeductionDTLTest.metta.html) |
|     2 |     2 |     50%% | [ModusPonensDTLTest.metta](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/hyperon-pln_metta/dependent-types/ModusPonensDTLTest.metta.html) |
|       |       |          |                                                                                                    |
|    16 |     9 |      64% | Total                                                                                              |
|       |       |          |                                                                                                    |
|-------|-------|----------|----------------------------------------------------------------------------------------------------|
|-------|-------|----------|----------------------------------------------------------------------------------------------------|
|       |       |          |                                                                                                    |
|       |       |          | Directory:     ./examples/baseline_compat/hyperon-pln_metta/entail/                 |
|       |       |          |                                                                                                    |
|     4 |     2 |     66%% | [ImplicationDirectIntroductionEntailTest.metta](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/hyperon-pln_metta/entail/ImplicationDirectIntroductionEntailTest.metta.html) |
|     0 |     1 |      0%% | [DeductionEntailTest.metta](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/hyperon-pln_metta/entail/DeductionEntailTest.metta.html) |
|       |       |          |                                                                                                    |
|     4 |     3 |      57% | Total                                                                                              |
|       |       |          |                                                                                                    |
|-------|-------|----------|----------------------------------------------------------------------------------------------------|
|-------|-------|----------|----------------------------------------------------------------------------------------------------|
|       |       |          |                                                                                                    |
|       |       |          | Directory:     ./examples/baseline_compat/hyperon-pln_metta/equal/                 |
|       |       |          |                                                                                                    |
|    -1 |    -1 |      0%% | [ImplicationDirectIntroductionEqualTest.metta](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/hyperon-pln_metta/equal/ImplicationDirectIntroductionEqualTest.metta.html) |
|     0 |     2 |      0%% | [DeductionEqualTest.metta](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/hyperon-pln_metta/equal/DeductionEqualTest.metta.html) |
|       |       |          |                                                                                                    |
|     0 |     3 |       0% | Total                                                                                              |
|       |       |          |                                                                                                    |
|-------|-------|----------|----------------------------------------------------------------------------------------------------|
|-------|-------|----------|----------------------------------------------------------------------------------------------------|
|       |       |          |                                                                                                    |
|       |       |          | Directory:     ./examples/baseline_compat/hyperon-pln_metta/forward-chainer/                 |
|       |       |          |                                                                                                    |
|    16 |     0 |    100%% | [forward-chainer-test.metta](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/hyperon-pln_metta/forward-chainer/forward-chainer-test.metta.html) |
|    13 |    18 |     41%% | [forward-chainer-xp.metta](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/hyperon-pln_metta/forward-chainer/forward-chainer-xp.metta.html) |
|       |       |          |                                                                                                    |
|    29 |    18 |      61% | Total                                                                                              |
|       |       |          |                                                                                                    |
|-------|-------|----------|----------------------------------------------------------------------------------------------------|
|-------|-------|----------|----------------------------------------------------------------------------------------------------|
|       |       |          |                                                                                                    |
|       |       |          | Directory:     ./examples/baseline_compat/hyperon-pln_metta/hol/                 |
|       |       |          |                                                                                                    |
|     1 |     0 |    100%% | [NatTest.metta](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/hyperon-pln_metta/hol/NatTest.metta.html) |
|    -1 |    -1 |      0%% | [NatSimpleTest.metta](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/hyperon-pln_metta/hol/NatSimpleTest.metta.html) |
|     1 |     0 |    100%% | [ListTest.metta](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/hyperon-pln_metta/hol/ListTest.metta.html) |
|       |       |          |                                                                                                    |
|     2 |     1 |      66% | Total                                                                                              |
|       |       |          |                                                                                                    |
|-------|-------|----------|----------------------------------------------------------------------------------------------------|
|-------|-------|----------|----------------------------------------------------------------------------------------------------|
|       |       |          |                                                                                                    |
|       |       |          | Directory:     ./examples/baseline_compat/hyperon-pln_metta/match/                 |
|       |       |          |                                                                                                    |
|     0 |     1 |      0%% | [ImplicationDirectIntroductionMatchTest.metta](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/hyperon-pln_metta/match/ImplicationDirectIntroductionMatchTest.metta.html) |
|     0 |     1 |      0%% | [DeductionImplicationDirectIntroductionMatchTest.metta](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/hyperon-pln_metta/match/DeductionImplicationDirectIntroductionMatchTest.metta.html) |
|     0 |     1 |      0%% | [DeductionMatchTest.metta](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/hyperon-pln_metta/match/DeductionMatchTest.metta.html) |
|       |       |          |                                                                                                    |
|     0 |     3 |       0% | Total                                                                                              |
|       |       |          |                                                                                                    |
|-------|-------|----------|----------------------------------------------------------------------------------------------------|
|-------|-------|----------|----------------------------------------------------------------------------------------------------|
|       |       |          |                                                                                                    |
|       |       |          | Directory:     ./examples/baseline_compat/hyperon-pln_metta/subtyping/                 |
|       |       |          |                                                                                                    |
|     1 |     0 |    100%% | [subtyping-test.metta](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/hyperon-pln_metta/subtyping/subtyping-test.metta.html) |
|       |       |          |                                                                                                    |
|     1 |     0 |     100% | Total                                                                                              |
|       |       |          |                                                                                                    |
|-------|-------|----------|----------------------------------------------------------------------------------------------------|
|-------|-------|----------|----------------------------------------------------------------------------------------------------|
|       |       |          |                                                                                                    |
|       |       |          | Directory:     ./examples/baseline_compat/hyperon-pln_metta/synthesis/                 |
|       |       |          |                                                                                                    |
|    -1 |    -1 |      0%% | [SynthesizeTest.metta](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/hyperon-pln_metta/synthesis/SynthesizeTest.metta.html) |
|     0 |     3 |      0%% | [UnifyTest.metta](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/hyperon-pln_metta/synthesis/UnifyTest.metta.html) |
|       |       |          |                                                                                                    |
|     0 |     4 |       0% | Total                                                                                              |
|       |       |          |                                                                                                    |
|-------|-------|----------|----------------------------------------------------------------------------------------------------|
|-------|-------|----------|----------------------------------------------------------------------------------------------------|
|       |       |          |                                                                                                    |
|       |       |          | Directory:     ./examples/extended_compat/hyperon-miner/match/                 |
|       |       |          |                                                                                                    |
|     3 |     0 |    100%% | [MinerMatchTest.metta](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/extended_compat/hyperon-miner/match/MinerMatchTest.metta.html) |
|       |       |          |                                                                                                    |
|     3 |     0 |     100% | Total                                                                                              |
|       |       |          |                                                                                                    |
|-------|-------|----------|----------------------------------------------------------------------------------------------------|
|-------|-------|----------|----------------------------------------------------------------------------------------------------|
|       |       |          |                                                                                                    |
|       |       |          | Directory:     ./examples/extended_compat/hyperon-miner/utils/                 |
|       |       |          |                                                                                                    |
|     3 |     0 |    100%% | [MinerUtils.metta](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/extended_compat/hyperon-miner/utils/MinerUtils.metta.html) |
|       |       |          |                                                                                                    |
|     3 |     0 |     100% | Total                                                                                              |
|       |       |          |                                                                                                    |
|-------|-------|----------|----------------------------------------------------------------------------------------------------|
|-------|-------|----------|----------------------------------------------------------------------------------------------------|
|       |       |          |                                                                                                    |
|       |       |          | Directory:     ./examples/extended_compat/metta-examples/logic/                 |
|       |       |          |                                                                                                    |
|     0 |     1 |      0%% | [memb.metta](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/extended_compat/metta-examples/logic/memb.metta.html) |
|     2 |     0 |    100%% | [all_any.metta](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/extended_compat/metta-examples/logic/all_any.metta.html) |
|     0 |     1 |      0%% | [puzzle.metta](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/extended_compat/metta-examples/logic/puzzle.metta.html) |
|       |       |          |                                                                                                    |
|     2 |     2 |      50% | Total                                                                                              |
|       |       |          |                                                                                                    |
|-------|-------|----------|----------------------------------------------------------------------------------------------------|
|-------|-------|----------|----------------------------------------------------------------------------------------------------|
|       |       |          |                                                                                                    |
|       |       |          | Directory:     ./examples/extended_compat/metta-examples/prob-dep-types/                 |
|       |       |          |                                                                                                    |
|    10 |     1 |     90%% | [inf_order_probs.metta](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/extended_compat/metta-examples/prob-dep-types/inf_order_probs.metta.html) |
|     8 |     8 |     50%% | [prob_dep_types.metta](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/extended_compat/metta-examples/prob-dep-types/prob_dep_types.metta.html) |
|       |       |          |                                                                                                    |
|    18 |     9 |      66% | Total                                                                                              |
|       |       |          |                                                                                                    |
|-------|-------|----------|----------------------------------------------------------------------------------------------------|
|-------|-------|----------|----------------------------------------------------------------------------------------------------|
|       |       |          |                                                                                                    |
|       |       |          | Directory:     ./examples/extended_compat/nars/current/                 |
|       |       |          |                                                                                                    |
|    -1 |    -1 |      0%% | [tests0.metta](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/extended_compat/nars/current/tests0.metta.html) |
|    -1 |    -1 |      0%% | [tests2.metta](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/extended_compat/nars/current/tests2.metta.html) |
|     5 |     2 |     71%% | [tests3.metta](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/extended_compat/nars/current/tests3.metta.html) |
|     7 |    13 |     35%% | [tests1.metta](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/extended_compat/nars/current/tests1.metta.html) |
|    -1 |    -1 |      0%% | [tests4.metta](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/extended_compat/nars/current/tests4.metta.html) |
|    -1 |    -1 |      0%% | [tests5.metta](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/extended_compat/nars/current/tests5.metta.html) |
|       |       |          |                                                                                                    |
|    12 |    19 |      38% | Total                                                                                              |
|       |       |          |                                                                                                    |
|-------|-------|----------|----------------------------------------------------------------------------------------------------|
|-------|-------|----------|----------------------------------------------------------------------------------------------------|
|       |       |          |                                                                                                    |
|       |       |          | Directory:     ./examples/extended_compat/nars/nars_extras/                 |
|       |       |          |                                                                                                    |
|    -1 |    -1 |      0%% | [RUN_minnars.metta](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/extended_compat/nars/nars_extras/RUN_minnars.metta.html) |
|     0 |     1 |      0%% | [RUN_minnars_trimmed.metta](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/extended_compat/nars/nars_extras/RUN_minnars_trimmed.metta.html) |
|    -1 |    -1 |      0%% | [TestNARS_listing.metta](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/extended_compat/nars/nars_extras/TestNARS_listing.metta.html) |
|     1 |     1 |     50%% | [NARS_BuildTupleCounts.metta](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/extended_compat/nars/nars_extras/NARS_BuildTupleCounts.metta.html) |
|       |       |          |                                                                                                    |
|     1 |     4 |      20% | Total                                                                                              |
|       |       |          |                                                                                                    |
|-------|-------|----------|----------------------------------------------------------------------------------------------------|
|-------|-------|----------|----------------------------------------------------------------------------------------------------|
|       |       |          |                                                                                                    |
|       |       |          | Directory:     ./examples/extended_compat/nars/nars_v0/                 |
|       |       |          |                                                                                                    |
|     5 |     2 |     71%% | [tests0.metta](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/extended_compat/nars/nars_v0/tests0.metta.html) |
|    14 |     3 |     82%% | [tests2.metta](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/extended_compat/nars/nars_v0/tests2.metta.html) |
|     5 |     2 |     71%% | [tests3.metta](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/extended_compat/nars/nars_v0/tests3.metta.html) |
|    -1 |    -1 |      0%% | [tests1.metta](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/extended_compat/nars/nars_v0/tests1.metta.html) |
|    -1 |    -1 |      0%% | [tests4.metta](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/extended_compat/nars/nars_v0/tests4.metta.html) |
|    -1 |    -1 |      0%% | [tests5.metta](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/extended_compat/nars/nars_v0/tests5.metta.html) |
|       |       |          |                                                                                                    |
|    24 |    10 |      70% | Total                                                                                              |
|       |       |          |                                                                                                    |
|-------|-------|----------|----------------------------------------------------------------------------------------------------|
|-------|-------|----------|----------------------------------------------------------------------------------------------------|
|       |       |          |                                                                                                    |
|       |       |          | Directory:     ./examples/extended_compat/nars/new/                 |
|       |       |          |                                                                                                    |
|     5 |     2 |     71%% | [tests0.metta](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/extended_compat/nars/new/tests0.metta.html) |
|    14 |     3 |     82%% | [tests2.metta](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/extended_compat/nars/new/tests2.metta.html) |
|     5 |     2 |     71%% | [tests3.metta](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/extended_compat/nars/new/tests3.metta.html) |
|    -1 |    -1 |      0%% | [tests1.metta](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/extended_compat/nars/new/tests1.metta.html) |
|    -1 |    -1 |      0%% | [tests4.metta](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/extended_compat/nars/new/tests4.metta.html) |
|    -1 |    -1 |      0%% | [tests5.metta](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/extended_compat/nars/new/tests5.metta.html) |
|       |       |          |                                                                                                    |
|    24 |    10 |      70% | Total                                                                                              |
|       |       |          |                                                                                                    |
|-------|-------|----------|----------------------------------------------------------------------------------------------------|
|-------|-------|----------|----------------------------------------------------------------------------------------------------|
|       |       |          |                                                                                                    |
|       |       |          | Directory:     ./examples/extended_compat/nars/prev/                 |
|       |       |          |                                                                                                    |
|     7 |     0 |    100%% | [tests0.metta](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/extended_compat/nars/prev/tests0.metta.html) |
|    15 |     2 |     88%% | [tests2.metta](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/extended_compat/nars/prev/tests2.metta.html) |
|     5 |     2 |     71%% | [tests3.metta](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/extended_compat/nars/prev/tests3.metta.html) |
|    -1 |    -1 |      0%% | [tests1.metta](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/extended_compat/nars/prev/tests1.metta.html) |
|    -1 |    -1 |      0%% | [tests4.metta](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/extended_compat/nars/prev/tests4.metta.html) |
|    -1 |    -1 |      0%% | [tests5.metta](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/extended_compat/nars/prev/tests5.metta.html) |
|       |       |          |                                                                                                    |
|    27 |     7 |      79% | Total                                                                                              |
|       |       |          |                                                                                                    |
|-------|-------|----------|----------------------------------------------------------------------------------------------------|
|-------|-------|----------|----------------------------------------------------------------------------------------------------|
|       |       |          |                                                                                                    |
|       |       |          | Directory:     ./examples/features/host_language/compiler/                 |
|       |       |          |                                                                                                    |
|     4 |     2 |     66%% | [define_if_like.metta](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/features/host_language/compiler/define_if_like.metta.html) |
|    -1 |    -1 |      0%% | [00a_lang_compiled_case.metta](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/features/host_language/compiler/00a_lang_compiled_case.metta.html) |
|       |       |          |                                                                                                    |
|     4 |     3 |      57% | Total                                                                                              |
|       |       |          |                                                                                                    |
|-------|-------|----------|----------------------------------------------------------------------------------------------------|
|-------|-------|----------|----------------------------------------------------------------------------------------------------|
|       |       |          |                                                                                                    |
|       |       |          | Directory:     ./examples/baseline_compat/hyperon-pln_metta/common/formula/                 |
|       |       |          |                                                                                                    |
|    12 |     0 |    100%% | [DeductionFormulaTest.metta](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/hyperon-pln_metta/common/formula/DeductionFormulaTest.metta.html) |
|       |       |          |                                                                                                    |
|    12 |     0 |     100% | Total                                                                                              |
|       |       |          |                                                                                                    |
|-------|-------|----------|----------------------------------------------------------------------------------------------------|
|-------|-------|----------|----------------------------------------------------------------------------------------------------|
|       |       |          |                                                                                                    |
|       |       |          | Directory:     ./examples/baseline_compat/hyperon-pln_metta/common/truthvalue/                 |
|       |       |          |                                                                                                    |
|     4 |     0 |    100%% | [EvidentialTruthValueTest.metta](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/hyperon-pln_metta/common/truthvalue/EvidentialTruthValueTest.metta.html) |
|     9 |     0 |    100%% | [TruthValueTest.metta](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/hyperon-pln_metta/common/truthvalue/TruthValueTest.metta.html) |
|       |       |          |                                                                                                    |
|    13 |     0 |     100% | Total                                                                                              |
|       |       |          |                                                                                                    |
|-------|-------|----------|----------------------------------------------------------------------------------------------------|
|-------|-------|----------|----------------------------------------------------------------------------------------------------|
|       |       |          |                                                                                                    |
|       |       |          | Directory:     ./examples/baseline_compat/hyperon-pln_metta/sumo/john-carry-flower/                 |
|       |       |          |                                                                                                    |
|     1 |     4 |     20%% | [john-carry-flower-test.metta](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/hyperon-pln_metta/sumo/john-carry-flower/john-carry-flower-test.metta.html) |
|       |       |          |                                                                                                    |
|     1 |     4 |      20% | Total                                                                                              |
|       |       |          |                                                                                                    |
|-------|-------|----------|----------------------------------------------------------------------------------------------------|
|-------|-------|----------|----------------------------------------------------------------------------------------------------|
|       |       |          |                                                                                                    |
|       |       |          | Directory:     ./examples/baseline_compat/hyperon-pln_metta/sumo/located/                 |
|       |       |          |                                                                                                    |
|     2 |     1 |     66%% | [located-test.metta](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/hyperon-pln_metta/sumo/located/located-test.metta.html) |
|       |       |          |                                                                                                    |
|     2 |     1 |      66% | Total                                                                                              |
|       |       |          |                                                                                                    |
|-------|-------|----------|----------------------------------------------------------------------------------------------------|
|-------|-------|----------|----------------------------------------------------------------------------------------------------|
|       |       |          |                                                                                                    |
|       |       |          | Directory:     ./examples/baseline_compat/hyperon-pln_metta/sumo/orientation/                 |
|       |       |          |                                                                                                    |
|     2 |     1 |     66%% | [orientation-test.metta](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/hyperon-pln_metta/sumo/orientation/orientation-test.metta.html) |
|       |       |          |                                                                                                    |
|     2 |     1 |      66% | Total                                                                                              |
|       |       |          |                                                                                                    |
|-------|-------|----------|----------------------------------------------------------------------------------------------------|
|-------|-------|----------|----------------------------------------------------------------------------------------------------|
|       |       |          |                                                                                                    |
|       |       |          | Directory:     ./examples/baseline_compat/hyperon-pln_metta/synthesis/experiments/                 |
|       |       |          |                                                                                                    |
|     3 |     1 |     75%% | [synthesize-via-superpose.metta](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/hyperon-pln_metta/synthesis/experiments/synthesize-via-superpose.metta.html) |
|     0 |    11 |      0%% | [synthesize-via-unify-test.metta](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/hyperon-pln_metta/synthesis/experiments/synthesize-via-unify-test.metta.html) |
|    13 |     0 |    100%% | [synthesize-via-type-checking.metta](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/hyperon-pln_metta/synthesis/experiments/synthesize-via-type-checking.metta.html) |
|     7 |     0 |    100%% | [unify-via-let.metta](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/hyperon-pln_metta/synthesis/experiments/unify-via-let.metta.html) |
|    -1 |    -1 |      0%% | [synthesize-via-unify-test-longer.metta](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/hyperon-pln_metta/synthesis/experiments/synthesize-via-unify-test-longer.metta.html) |
|     1 |     5 |     16%% | [unify-via-case.metta](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/hyperon-pln_metta/synthesis/experiments/unify-via-case.metta.html) |
|    -1 |    -1 |      0%% | [self-contained-synthesize.metta](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/hyperon-pln_metta/synthesis/experiments/self-contained-synthesize.metta.html) |
|    -1 |    -1 |      0%% | [synthesize-via-let-test.metta](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/hyperon-pln_metta/synthesis/experiments/synthesize-via-let-test.metta.html) |
|    -1 |    -1 |      0%% | [synthesize-via-case-test.metta](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/hyperon-pln_metta/synthesis/experiments/synthesize-via-case-test.metta.html) |
|    -1 |    -1 |      0%% | [non-determinism.metta](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/hyperon-pln_metta/synthesis/experiments/non-determinism.metta.html) |
|       |       |          |                                                                                                    |
|    24 |    22 |      52% | Total                                                                                              |
|       |       |          |                                                                                                    |
|-------|-------|----------|----------------------------------------------------------------------------------------------------|
|-------|-------|----------|----------------------------------------------------------------------------------------------------|
|       |       |          |                                                                                                    |
|       |       |          | Directory:     ./examples/python_compat/hyperon-experimental_python/sandbox/neurospace/                 |
|       |       |          |                                                                                                    |
|     0 |     1 |      0%% | [test_assist.metta](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/python_compat/hyperon-experimental_python/sandbox/neurospace/test_assist.metta.html) |
|    -1 |    -1 |      0%% | [test_nspace.metta](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/python_compat/hyperon-experimental_python/sandbox/neurospace/test_nspace.metta.html) |
|       |       |          |                                                                                                    |
|     0 |     2 |       0% | Total                                                                                              |
|       |       |          |                                                                                                    |
|-------|-------|----------|----------------------------------------------------------------------------------------------------|
|-------|-------|----------|----------------------------------------------------------------------------------------------------|
|       |       |          |                                                                                                    |
|       |       |          | Directory:     ./examples/python_compat/hyperon-experimental_python/sandbox/resolve/                 |
|       |       |          |                                                                                                    |
|     4 |     9 |     30%% | [r.metta](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/python_compat/hyperon-experimental_python/sandbox/resolve/r.metta.html) |
|       |       |          |                                                                                                    |
|     4 |     9 |      30% | Total                                                                                              |
|       |       |          |                                                                                                    |
|-------|-------|----------|----------------------------------------------------------------------------------------------------|
|-------|-------|----------|----------------------------------------------------------------------------------------------------|
|       |       |          |                                                                                                    |
|       |       |          | Directory:     ./examples/python_compat/hyperon-experimental_python/sandbox/sql_space/                 |
|       |       |          |                                                                                                    |
|     0 |     3 |      0%% | [sql_space_test.metta](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/python_compat/hyperon-experimental_python/sandbox/sql_space/sql_space_test.metta.html) |
|       |       |          |                                                                                                    |
|     0 |     3 |       0% | Total                                                                                              |
|       |       |          |                                                                                                    |
|-------|-------|----------|----------------------------------------------------------------------------------------------------|
|-------|-------|----------|----------------------------------------------------------------------------------------------------|
|       |       |          |                                                                                                    |
|       |       |          | Directory:     ./examples/extended_compat/metta-examples/recursion-schemes/src/examples/                 |
|       |       |          |                                                                                                    |
|    -1 |    -1 |      0%% | [benchmark.metta](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/extended_compat/metta-examples/recursion-schemes/src/reports/cuRRent/benchmark.metta.html) |
|     1 |     5 |     16%% | [expression.metta](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/extended_compat/metta-examples/recursion-schemes/src/reports/cuRRent/expression.metta.html) |
|       |       |          |                                                                                                    |
|     1 |     6 |      14% | Total                                                                                              |
|       |       |          |                                                                                                    |
|-------|-------|----------|----------------------------------------------------------------------------------------------------|

</detals>

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


