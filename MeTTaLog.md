# MeTTaLog: An Implementation of MeTTa in Prolog

MeTTaLog is a superfluous implementaiton of MeTTa, a language designed to succeed OpenCog Classic Atomese.  It is part of the OpenCog Hyperon initiative and provides well-defined semantics for meta-language features, different types of inference, and more.

Jump to [MeTTaLog Installation Guide](https://github.com/logicmoo/vspace-metta/blob/main/MeTTaLog.md#installation-guide)

# Bugs in MeTTaLog

| Pass | Fail |Percent| Directory                                        |
|------|------|-------|--------------------------------------------------|
|     0|     0|     0%| reports/python/sandbox/sql_space -               |
|     0|     0|     0%| reports/python/sandbox/numpy -                   |
|     0|     0|     0%| reports/python/sandbox/neurospace -              |
|     0|     0|     0%| reports/python/sandbox/das_gate -                |
|     0|     0|     0%| reports/python/sandbox -                         |
|     0|     0|     0%| reports/python -                                 |
|     0|     0|     0%| reports/nars_extras -                            |
|     7|     0|   100%| reports/nars -                                   |
|     2|     0|   100%| reports/features -                               |
|     3|     1|    75%| reports/compat/test_scripts_extras -             |
|   181|    34|    84%| reports/compat/test_scripts -                    |
|    10|     6|    62%| reports/compat/synthesis/experiments -           |
|    11|     8|    57%| reports/compat/synthesis -                       |
|     2|     1|    66%| reports/compat/sumo/orientation -                |
|     2|     1|    66%| reports/compat/sumo -                            |
|     1|     5|    16%| reports/compat/recursion-schemes/src/reports -   |
|     1|     5|    16%| reports/compat/recursion-schemes/src -           |
|     1|     5|    16%| reports/compat/recursion-schemes -               |
|     9|     2|    81%| reports/compat/prob-dep-types -                  |
|     2|     4|    33%| reports/compat/miner -                           |
|     0|     2|     0%| reports/compat/minecraft -                       |
|     0|     0|     0%| reports/compat/match -                           |
|     1|     0|   100%| reports/compat/interp -                          |
|     0|     1|     0%| reports/compat/equal -                           |
|     0|     2|     0%| reports/compat/entail -                          |
|     1|     7|    12%| reports/compat/dependent-types -                 |
|    12|     6|    66%| reports/compat/compiler -                        |
|     0|     7|     0%| reports/compat/common/truthvalue -               |
|    34|     9|    79%| reports/compat/common -                          |
|   257|    82|    75%| reports/compat -                                 |
|   301|   100|    75%| reports -                                        |

<details><summary>Expand for Core Summaries</summary>

|Pass |Fail |File                               |GitHub Link                                                                                                                       |
|-----|-----|-----------------------------------|----------------------------------------------------------------------------------------------------------------------------------|
|  1  |  11 | test_infer_function_application_type.metta|[reports/test_infer_function_application_type.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/test_infer_function_application_type.html)|
|  7  |  7  | d1_gadt.metta                     |[reports/compat/test_scripts/d1_gadt.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/test_scripts/d1_gadt.html)|
|  21 |  6  | d2_higherfunc.metta               |[reports/compat/test_scripts/d2_higherfunc.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/test_scripts/d2_higherfunc.html)|
|  17 |  6  | state_types.metta                 |[reports/state_types.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/state_types.html)|
|  13 |  5  | d4_type_prop.metta                |[reports/compat/test_scripts/d4_type_prop.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/test_scripts/d4_type_prop.html)|
|  1  |  5  | expression.metta                  |[reports/compat/recursion-schemes/src/reports/expression.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/recursion-schemes/src/reports/expression.html)|
|  1  |  5  | unify-via-case.metta              |[reports/compat/synthesis/experiments/unify-via-case.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/synthesis/experiments/unify-via-case.html)|
|  0  |  5  | TruthValueTest.metta              |[reports/compat/common/truthvalue/TruthValueTest.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/common/truthvalue/TruthValueTest.html)|
|  3  |  4  | d3_deptypes.metta                 |[reports/compat/test_scripts/d3_deptypes.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/test_scripts/d3_deptypes.html)|
|  2  |  4  | define_if_like.metta              |[reports/compat/compiler/define_if_like.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/compiler/define_if_like.html)|
|  0  |  4  | DeductionDTLTest.metta            |[reports/compat/dependent-types/DeductionDTLTest.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/dependent-types/DeductionDTLTest.html)|
|  14 |  3  | f1_imports.metta                  |[reports/compat/test_scripts/f1_imports.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/test_scripts/f1_imports.html)|
|  4  |  3  | e3_match_states.metta             |[reports/compat/test_scripts/e3_match_states.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/test_scripts/e3_match_states.html)|
|  1  |  3  | ModusPonensDTLTest.metta          |[reports/compat/dependent-types/ModusPonensDTLTest.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/dependent-types/ModusPonensDTLTest.html)|
|  0  |  3  | MinerUtils.metta                  |[reports/compat/miner/MinerUtils.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/miner/MinerUtils.html)|
|  10 |  2  | 00a_lang_compiled_case.metta      |[reports/compat/compiler/00a_lang_compiled_case.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/compiler/00a_lang_compiled_case.html)|
|  9  |  2  | inf_order_probs.metta             |[reports/compat/prob-dep-types/inf_order_probs.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/prob-dep-types/inf_order_probs.html)|
|  1  |  2  | e1_kb_write.metta                 |[reports/compat/test_scripts/e1_kb_write.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/test_scripts/e1_kb_write.html)|
|  1  |  2  | UnifyTest.metta                   |[reports/compat/synthesis/UnifyTest.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/synthesis/UnifyTest.html)|
|  0  |  2  | EvidentialTruthValueTest.metta    |[reports/compat/common/truthvalue/EvidentialTruthValueTest.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/common/truthvalue/EvidentialTruthValueTest.html)|
|  0  |  2  | ImplicationDirectIntroductionEntailTest.metta|[reports/compat/entail/ImplicationDirectIntroductionEntailTest.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/entail/ImplicationDirectIntroductionEntailTest.html)|
|  0  |  2  | test_minecraft_planning_with_abstractions.metta|[reports/compat/minecraft/test_minecraft_planning_with_abstractions.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/minecraft/test_minecraft_planning_with_abstractions.html)|
|  20 |  1  | b5_types_prelim.metta             |[reports/compat/test_scripts/b5_types_prelim.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/test_scripts/b5_types_prelim.html)|
|  19 |  1  | c1_grounded_basic.metta           |[reports/compat/test_scripts/c1_grounded_basic.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/test_scripts/c1_grounded_basic.html)|
|  10 |  1  | OrderedSetTest.metta              |[reports/compat/common/OrderedSetTest.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/common/OrderedSetTest.html)|
|  8  |  1  | e2_states.metta                   |[reports/compat/test_scripts/e2_states.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/test_scripts/e2_states.html)|
|  4  |  1  | b2_backchain.metta                |[reports/compat/test_scripts/b2_backchain.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/test_scripts/b2_backchain.html)|
|  2  |  1  | MinerMatchTest.metta              |[reports/compat/miner/MinerMatchTest.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/miner/MinerMatchTest.html)|
|  2  |  1  | orientation-test.metta            |[reports/compat/sumo/orientation/orientation-test.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/sumo/orientation/orientation-test.html)|
|  1  |  1  | d2_auto_types.metta               |[reports/compat/test_scripts_extras/d2_auto_types.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/test_scripts_extras/d2_auto_types.html)|
|  1  |  1  | EqualityTypeTest.metta            |[reports/compat/common/EqualityTypeTest.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/common/EqualityTypeTest.html)|
|  0  |  1  | DeductionEqualTest.metta          |[reports/compat/equal/DeductionEqualTest.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/equal/DeductionEqualTest.html)|
|  0  |  1  | pathfinding-easy.metta            |[reports/pathfinding-easy.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/pathfinding-easy.html)|
|  0  |  1  | synthesize-via-superpose.metta    |[reports/compat/synthesis/experiments/synthesize-via-superpose.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/synthesis/experiments/synthesize-via-superpose.html)|
|  19 |  0  | ListTest.metta                    |[reports/compat/common/ListTest.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/common/ListTest.html)|
|  11 |  0  | 00_lang_case.metta                |[reports/compat/test_scripts/00_lang_case.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/test_scripts/00_lang_case.html)|
|  11 |  0  | b4_nondeterm.metta                |[reports/compat/test_scripts/b4_nondeterm.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/test_scripts/b4_nondeterm.html)|
|  10 |  0  | key-lookups-many.metta            |[reports/key-lookups-many.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/key-lookups-many.html)|
|  7  |  0  | a1_symbols.metta                  |[reports/compat/test_scripts/a1_symbols.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/test_scripts/a1_symbols.html)|
|  7  |  0  | tests0.metta                      |[reports/nars/tests0.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/nars/tests0.html)|
|  7  |  0  | unify-via-let.metta               |[reports/compat/synthesis/experiments/unify-via-let.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/synthesis/experiments/unify-via-let.html)|
|  6  |  0  | b1_equal_chain.metta              |[reports/compat/test_scripts/b1_equal_chain.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/test_scripts/b1_equal_chain.html)|
|  5  |  0  | 03-soring-via-insert.metta        |[reports/compat/test_scripts/03-soring-via-insert.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/test_scripts/03-soring-via-insert.html)|
|  5  |  0  | b0_chaining_prelim.metta          |[reports/compat/test_scripts/b0_chaining_prelim.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/test_scripts/b0_chaining_prelim.html)|
|  5  |  0  | c2_spaces.metta                   |[reports/compat/test_scripts/c2_spaces.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/test_scripts/c2_spaces.html)|
|  5  |  0  | c3_pln_stv.metta                  |[reports/compat/test_scripts/c3_pln_stv.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/test_scripts/c3_pln_stv.html)|
|  4  |  0  | a3_twoside.metta                  |[reports/compat/test_scripts/a3_twoside.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/test_scripts/a3_twoside.html)|
|  3  |  0  | b3_direct.metta                   |[reports/compat/test_scripts/b3_direct.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/test_scripts/b3_direct.html)|
|  3  |  0  | MaybeTest.metta                   |[reports/compat/common/MaybeTest.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/common/MaybeTest.html)|
|  2  |  0  | 01_lang_inc.metta                 |[reports/compat/test_scripts/01_lang_inc.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/test_scripts/01_lang_inc.html)|
|  2  |  0  | d3_typed_pln.metta                |[reports/compat/test_scripts_extras/d3_typed_pln.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/test_scripts_extras/d3_typed_pln.html)|
|  2  |  0  | fibo-as-pred.metta                |[reports/fibo-as-pred.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/fibo-as-pred.html)|
|  2  |  0  | non-determinism.metta             |[reports/compat/synthesis/experiments/non-determinism.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/synthesis/experiments/non-determinism.html)|
|  2  |  0  | reverse-arithmetic.metta          |[reports/features/reverse-arithmetic.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/features/reverse-arithmetic.html)|
|  1  |  0  | 02-curried-plus.metta             |[reports/compat/test_scripts/02-curried-plus.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/test_scripts/02-curried-plus.html)|
|  1  |  0  | a2_opencoggy.metta                |[reports/compat/test_scripts/a2_opencoggy.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/test_scripts/a2_opencoggy.html)|
|  1  |  0  | f1_moduleA.metta                  |[reports/compat/test_scripts/f1_moduleA.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/test_scripts/f1_moduleA.html)|
|  1  |  0  | fibo.metta                        |[reports/fibo.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/fibo.html)|
|  1  |  0  | fwgc1.metta                       |[reports/fwgc1.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/fwgc1.html)|
|  1  |  0  | hanoi-one-space.metta             |[reports/hanoi-one-space.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/hanoi-one-space.html)|
|  1  |  0  | hanoi-peg-space.metta             |[reports/hanoi-peg-space.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/hanoi-peg-space.html)|
|  1  |  0  | InTest.metta                      |[reports/compat/common/InTest.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/common/InTest.html)|
|  1  |  0  | structure-tests.metta             |[reports/compat/interp/structure-tests.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/interp/structure-tests.html)|
|  1  |  0  | test_list_concatenation.metta     |[reports/test_list_concatenation.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/test_list_concatenation.html)|
|  0  |  0  | benchmark.metta                   |[reports/compat/recursion-schemes/src/reports/benchmark.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/recursion-schemes/src/reports/benchmark.html)|
|  0  |  0  | d4_selfmod.metta                  |[reports/compat/test_scripts_extras/d4_selfmod.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/test_scripts_extras/d4_selfmod.html)|
|  0  |  0  | d5_auto_types.metta               |[reports/compat/test_scripts/d5_auto_types.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/test_scripts/d5_auto_types.html)|
|  0  |  0  | DeductionEntailTest.metta         |[reports/compat/entail/DeductionEntailTest.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/entail/DeductionEntailTest.html)|
|  0  |  0  | DeductionImplicationDirectIntroductionMatchTest.metta|[reports/compat/match/DeductionImplicationDirectIntroductionMatchTest.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/match/DeductionImplicationDirectIntroductionMatchTest.html)|
|  0  |  0  | DeductionMatchTest.metta          |[reports/compat/match/DeductionMatchTest.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/match/DeductionMatchTest.html)|
|  0  |  0  | ImplicationDirectIntroductionEqualTest.metta|[reports/compat/equal/ImplicationDirectIntroductionEqualTest.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/equal/ImplicationDirectIntroductionEqualTest.html)|
|  0  |  0  | ImplicationDirectIntroductionMatchTest.metta|[reports/compat/match/ImplicationDirectIntroductionMatchTest.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/match/ImplicationDirectIntroductionMatchTest.html)|
|  0  |  0  | nm_test.metta                     |[reports/python/sandbox/numpy/nm_test.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/python/sandbox/numpy/nm_test.html)|
|  0  |  0  | pathfinding-easy-f.metta          |[reports/pathfinding-easy-f.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/pathfinding-easy-f.html)|
|  0  |  0  | pathfinding-hard-f.metta          |[reports/pathfinding-hard-f.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/pathfinding-hard-f.html)|
|  0  |  0  | send-more.metta                   |[reports/features/send-more.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/features/send-more.html)|
|  0  |  0  | sql_space_test.metta              |[reports/python/sandbox/sql_space/sql_space_test.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/python/sandbox/sql_space/sql_space_test.html)|
|  0  |  0  | test_das.metta                    |[reports/python/sandbox/das_gate/test_das.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/python/sandbox/das_gate/test_das.html)|
|  0  |  0  | TestNARS_listing.metta            |[reports/nars_extras/TestNARS_listing.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/nars_extras/TestNARS_listing.html)|
|  0  |  0  | test_nspace.metta                 |[reports/python/sandbox/neurospace/test_nspace.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/python/sandbox/neurospace/test_nspace.html)|

</details>
 
 
| STATUS | TEST NAME | TEST CONDITION | ACTUAL RESULT | EXPECTED RESULT |
|--------|-----------|----------------|---------------|-----------------|
| PASS | [COMMON.EQUALITYTYPETEST.102](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/common/EqualityTypeTest.html#COMMON.EQUALITYTYPETEST.102) | (exec (foo (Refl T42))) | (True) | (True) |
| FAIL | [COMMON.EQUALITYTYPETEST.103](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/common/EqualityTypeTest.html#COMMON.EQUALITYTYPETEST.103) | (exec (bar (Refl T42))) | ((Error T42 BadType)) | (True) |
| PASS | [COMMON.INTEST.01](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/common/InTest.html#COMMON.INTEST.01) | (assertEqual (synthesize (: $Proof (â Z â)) kb rb Z)) | ((: NotInEmpty (â Z â))) | ((: NotInEmpty (â Z â))) |
| PASS | [COMMON.LISTTEST.102](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/common/ListTest.html#COMMON.LISTTEST.102) | (exec ("============ Test insert ============")) | (("============ Test insert ============")) | (("============ Test insert ============")) |
| PASS | [COMMON.LISTTEST.103](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/common/ListTest.html#COMMON.LISTTEST.103) | (exec (insert 1 ())) | ((Cons 1 ())) | ((Cons 1 ())) |
| PASS | [COMMON.LISTTEST.104](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/common/ListTest.html#COMMON.LISTTEST.104) | (exec (insert 2 (insert 1 ()))) | ((Cons 1 (Cons 2 ()))) | ((Cons 1 (Cons 2 ())) (Cons 1 (Cons 2 ()))) |
| PASS | [COMMON.LISTTEST.105](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/common/ListTest.html#COMMON.LISTTEST.105) | (exec (insert 3 (insert 2 (insert 1 ())))) | ((Cons 1 (Cons 2 (Cons 3 ())))) | ((Cons 1 (Cons 2 (Cons 3 ()))) (Cons 1 (Cons 2 (Cons 3 ()))) (Cons 1 (Cons 2 (Cons 3 ())))) |
| PASS | [COMMON.LISTTEST.106](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/common/ListTest.html#COMMON.LISTTEST.106) | (exec (== (Cons 1 ()) (Cons 1 ()))) | (True) | (True) |
| PASS | [COMMON.LISTTEST.107](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/common/ListTest.html#COMMON.LISTTEST.107) | (exec ("============ Test sort ============")) | (("============ Test sort ============")) | (("============ Test sort ============")) |
| PASS | [COMMON.LISTTEST.108](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/common/ListTest.html#COMMON.LISTTEST.108) | (exec (sort (Cons 1 ()))) | ((Cons 1 ())) | ((Cons 1 ()) (Cons 1 ())) |
| PASS | [COMMON.LISTTEST.109](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/common/ListTest.html#COMMON.LISTTEST.109) | (exec (sort (Cons 2 (Cons 1 ())))) | ((Cons 1 (Cons 2 ()))) | ((Cons 1 (Cons 2 ())) (Cons 1 (Cons 2 ()))) |
| PASS | [COMMON.LISTTEST.110](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/common/ListTest.html#COMMON.LISTTEST.110) | (exec (sort (Cons 3 (Cons 1 (Cons 2 ()))))) | ((Cons 1 (Cons 2 (Cons 3 ())))) | ((Cons 1 (Cons 2 (Cons 3 ()))) (Cons 1 (Cons 2 (Cons 3 ())))) |
| PASS | [COMMON.LISTTEST.111](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/common/ListTest.html#COMMON.LISTTEST.111) | (exec ("============ Test elem ============")) | (("============ Test elem ============")) | (("============ Test elem ============")) |
| PASS | [COMMON.LISTTEST.112](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/common/ListTest.html#COMMON.LISTTEST.112) | (exec (elem 1 (Cons 3 (Cons 1 (Cons 2 ()))))) | (True) | (True) |
| PASS | [COMMON.LISTTEST.113](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/common/ListTest.html#COMMON.LISTTEST.113) | (exec (elem 5 (Cons 3 (Cons 1 (Cons 2 ()))))) | (False) | (False) |
| PASS | [COMMON.LISTTEST.114](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/common/ListTest.html#COMMON.LISTTEST.114) | (exec ("============ Test uniq ============")) | (("============ Test uniq ============")) | (("============ Test uniq ============")) |
| PASS | [COMMON.LISTTEST.115](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/common/ListTest.html#COMMON.LISTTEST.115) | (exec (uniq (Cons 2 (Cons 3 (Cons 1 (Cons 2 ())))))) | ((Cons 2 (Cons 3 (Cons 1 ())))) | ((Cons 2 (Cons 3 (Cons 1 ())))) |
| PASS | [COMMON.LISTTEST.116](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/common/ListTest.html#COMMON.LISTTEST.116) | (exec (uniq (Cons 2 (Cons 3 (Cons 3 (Cons 2 ())))))) | ((Cons 2 (Cons 3 ()))) | ((Cons 2 (Cons 3 ()))) |
| PASS | [COMMON.LISTTEST.117](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/common/ListTest.html#COMMON.LISTTEST.117) | (exec ("============ Test insert_uniq ============")) | (("============ Test insert_uniq ============")) | (("============ Test insert_uniq ============")) |
| PASS | [COMMON.LISTTEST.118](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/common/ListTest.html#COMMON.LISTTEST.118) | (exec (insert_uniq 2 (insert_uniq 1 ()))) | ((Cons 1 (Cons 2 ()))) | ((Cons 1 (Cons 2 ())) (Cons 1 (Cons 2 ()))) |
| PASS | [COMMON.LISTTEST.119](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/common/ListTest.html#COMMON.LISTTEST.119) | (exec (insert_uniq 3 (insert_uniq 2 (insert_uniq 1 ())))) | ((Cons 1 (Cons 2 (Cons 3 ())))) | ((Cons 1 (Cons 2 (Cons 3 ()))) (Cons 1 (Cons 2 (Cons 3 ()))) (Cons 1 (Cons 2 (Cons 3 ())))) |
| PASS | [COMMON.LISTTEST.120](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/common/ListTest.html#COMMON.LISTTEST.120) | (exec (insert_uniq 2 (insert_uniq 3 (insert_uniq 2 (insert_uniq 1 ()))))) | ((Cons 1 (Cons 2 (Cons 3 ())))) | ((Cons 1 (Cons 2 (Cons 3 ()))) (Cons 1 (Cons 2 (Cons 3 ()))) (Cons 1 (Cons 2 (Cons 3 ()))) (Cons 1 (Cons 2 (Cons 3 ())))) |
| PASS | [COMMON.MAYBETEST.01](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/common/MaybeTest.html#COMMON.MAYBETEST.01) | (assertEqualToResult (Maybe< (Just 10) (Just 20))) | (True) | (True) |
| PASS | [COMMON.MAYBETEST.02](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/common/MaybeTest.html#COMMON.MAYBETEST.02) | (assertEqualToResult (Maybe< (Just 10) Nothing)) | (False) | (False) |
| PASS | [COMMON.MAYBETEST.03](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/common/MaybeTest.html#COMMON.MAYBETEST.03) | (assertEqualToResult (Maybe< Nothing (Just 10))) | (True) | (True) |
| PASS | [COMMON.NUMTEST.01](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/common/NumTest.html#COMMON.NUMTEST.01) | (assertEqual (fromNumber 1)) | ((S Z)) | ((S Z)) |
| PASS | [COMMON.NUMTEST.02](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/common/NumTest.html#COMMON.NUMTEST.02) | (assertEqual (fromNat (S (S Z)))) | (2) | (2) |
| PASS | [COMMON.NUMTEST.03](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/common/NumTest.html#COMMON.NUMTEST.03) | (assertEqual (ceil 2.4)) | (3) | (3) |
| PASS | [COMMON.NUMTEST.04](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/common/NumTest.html#COMMON.NUMTEST.04) | (assertEqual (abs -10)) | (10) | (10) |
| PASS | [COMMON.NUMTEST.05](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/common/NumTest.html#COMMON.NUMTEST.05) | (assertEqual (approxEq 10 10.0001 0.001)) | (True) | (True) |
| PASS | [COMMON.NUMTEST.06](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/common/NumTest.html#COMMON.NUMTEST.06) | (assertEqual (approxEq 10 10.0001 1.0e-9)) | (False) | (False) |
| FAIL | [COMMON.NUMTEST.07](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/common/NumTest.html#COMMON.NUMTEST.07) | (assertEqual (â©» Z (S Z))) | (True (< Z (S Z))) | (True) |
| PASS | [COMMON.NUMTEST.08](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/common/NumTest.html#COMMON.NUMTEST.08) | (assertEqual (synthesize (: $Proof (â Z (S Z))) kb rb Z)) | ((: ZeroLTSucc (â Z (S Z)))) | ((: ZeroLTSucc (â Z (S Z)))) |
| PASS | [COMMON.ORDEREDSETTEST.01](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/common/OrderedSetTest.html#COMMON.ORDEREDSETTEST.01) | (assertEqual (elem 1 â)) | (False) | (False) |
| PASS | [COMMON.ORDEREDSETTEST.02](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/common/OrderedSetTest.html#COMMON.ORDEREDSETTEST.02) | (assertEqual (elem 1 (insert 1 â))) | (True) | (True) |
| PASS | [COMMON.ORDEREDSETTEST.03](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/common/OrderedSetTest.html#COMMON.ORDEREDSETTEST.03) | (assertEqual (elem 1 (insert 2 â))) | (False) | (False) |
| PASS | [COMMON.ORDEREDSETTEST.04](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/common/OrderedSetTest.html#COMMON.ORDEREDSETTEST.04) | (assertEqual (elem 1 (insert 1 (insert 2 â)))) | (True) | (True) |
| PASS | [COMMON.ORDEREDSETTEST.05](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/common/OrderedSetTest.html#COMMON.ORDEREDSETTEST.05) | (assertEqual (elem 1 (insert 2 (insert 3 â)))) | (False) | (False) |
| PASS | [COMMON.ORDEREDSETTEST.06](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/common/OrderedSetTest.html#COMMON.ORDEREDSETTEST.06) | (assertEqual (elem 2 (insert 1 (insert 2 (insert 3 â))))) | (True) | (True) |
| PASS | [COMMON.ORDEREDSETTEST.07](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/common/OrderedSetTest.html#COMMON.ORDEREDSETTEST.07) | (assertEqual (insert 1 â)) | ((:: 1 â)) | ((:: 1 â)) |
| PASS | [COMMON.ORDEREDSETTEST.08](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/common/OrderedSetTest.html#COMMON.ORDEREDSETTEST.08) | (assertEqual (insert 2 (insert 1 â))) | ((:: 1 (:: 2 â))) | ((:: 1 (:: 2 â))) |
| PASS | [COMMON.ORDEREDSETTEST.09](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/common/OrderedSetTest.html#COMMON.ORDEREDSETTEST.09) | (assertEqual (insert 3 (insert 2 (insert 1 â)))) | ((:: 1 (:: 2 (:: 3 â)))) | ((:: 1 (:: 2 (:: 3 â)))) |
| PASS | [COMMON.ORDEREDSETTEST.10](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/common/OrderedSetTest.html#COMMON.ORDEREDSETTEST.10) | (assertEqual (insert 2 (insert 3 (insert 2 (insert 1 â))))) | ((:: 1 (:: 2 (:: 3 â)))) | ((:: 1 (:: 2 (:: 3 â)))) |
| FAIL | [COMMON.ORDEREDSETTEST.11](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/common/OrderedSetTest.html#COMMON.ORDEREDSETTEST.11) | (assertEqual (insert (S Z) (insert (S (S Z)) (insert (S Z) (insert Z â))))) | ((:: Z (:: (S Z) (:: (S (S Z)) â))) (:: Z (:: (S Z) (:: (S (S Z)) (:: (S Z) â)))) (:: (S Z) (:: ... | ((:: Z (:: (S Z) (:: (S (S Z)) â)))) |
| PASS | [COMPILER.00A-LANG-COMPILED-CASE.01](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/compiler/00a_lang_compiled_case.html#COMPILER.00A-LANG-COMPILED-CASE.01) | (assertEqual (+ 1 (superpose (1 2 3)))) | (2 3 4) | (2 3 4) |
| PASS | [COMPILER.00A-LANG-COMPILED-CASE.02](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/compiler/00a_lang_compiled_case.html#COMPILER.00A-LANG-COMPILED-CASE.02) | (assertEqual (+ 1 (superpose (1 2 3)))) | (2 3 4) | (2 3 4) |
| PASS | [COMPILER.00A-LANG-COMPILED-CASE.03](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/compiler/00a_lang_compiled_case.html#COMPILER.00A-LANG-COMPILED-CASE.03) | (assertEqual ((superpose (1 2 3)))) | () | () |
| PASS | [COMPILER.00A-LANG-COMPILED-CASE.04](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/compiler/00a_lang_compiled_case.html#COMPILER.00A-LANG-COMPILED-CASE.04) | (assertEqual (case (+ 1 5) ((5 Error) (6 OK) (6 Error)))) | (OK) | (OK) |
| PASS | [COMPILER.00A-LANG-COMPILED-CASE.05](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/compiler/00a_lang_compiled_case.html#COMPILER.00A-LANG-COMPILED-CASE.05) | (assertEqual (case (+ 1 5) (($X (+ 1 $X))))) | (7) | (7) |
| PASS | [COMPILER.00A-LANG-COMPILED-CASE.06](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/compiler/00a_lang_compiled_case.html#COMPILER.00A-LANG-COMPILED-CASE.06) | (assertEqual (case 5 ((6 OK)))) | () | () |
| PASS | [COMPILER.00A-LANG-COMPILED-CASE.07](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/compiler/00a_lang_compiled_case.html#COMPILER.00A-LANG-COMPILED-CASE.07) | (assertEqual (case (+ 1 (superpose (1 2 3))) ((3 OK-3) (4 OK-4)))) | (OK-3 OK-4) | (OK-3 OK-4) |
| PASS | [COMPILER.00A-LANG-COMPILED-CASE.08](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/compiler/00a_lang_compiled_case.html#COMPILER.00A-LANG-COMPILED-CASE.08) | (assertEqual (case (+ 1 (superpose (1 2 3))) (($X (+ 1 $X))))) | (3 4 5) | (3 4 5) |
| FAIL | [COMPILER.00A-LANG-COMPILED-CASE.09](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/compiler/00a_lang_compiled_case.html#COMPILER.00A-LANG-COMPILED-CASE.09) | (assertEqual (match &self ($Rel A $X) ($Rel $X))) | (True) | ((Rel-P B) (Rel-Q C)) |
| PASS | [COMPILER.00A-LANG-COMPILED-CASE.10](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/compiler/00a_lang_compiled_case.html#COMPILER.00A-LANG-COMPILED-CASE.10) | (assertEqualToResult (superpose ((Rel-P B) (Rel-Q C)))) | ((Rel-P B) (Rel-Q C)) | ((Rel-P B) (Rel-Q C)) |
| FAIL | [COMPILER.00A-LANG-COMPILED-CASE.11](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/compiler/00a_lang_compiled_case.html#COMPILER.00A-LANG-COMPILED-CASE.11) | (assertEqual (superpose ((P B) (Q C)))) | ((P B) (Q C)) | () |
| PASS | [COMPILER.00A-LANG-COMPILED-CASE.12](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/compiler/00a_lang_compiled_case.html#COMPILER.00A-LANG-COMPILED-CASE.12) | (assertEqual (case (match &self ($Rel B $X) ($Rel $X)) (((Rel-P $Y) (P $Y)) ((Rel-Q $Y) (Q $Y)) (%void% no-match)))) | (no-match) | (no-match) |
| FAIL | [COMPILER.DEFINE-IF-LIKE.01](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/compiler/define_if_like.html#COMPILER.DEFINE-IF-LIKE.01) | (assertEqual pass-or-False) | (:fail) | (:pass) |
| FAIL | [COMPILER.DEFINE-IF-LIKE.02](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/compiler/define_if_like.html#COMPILER.DEFINE-IF-LIKE.02) | (assertEqual (get-state &pass)) | (:uncalled) | (:called) |
| PASS | [COMPILER.DEFINE-IF-LIKE.03](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/compiler/define_if_like.html#COMPILER.DEFINE-IF-LIKE.03) | (assertEqual (get-state &fail)) | (:uncalled) | (:uncalled) |
| FAIL | [COMPILER.DEFINE-IF-LIKE.04](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/compiler/define_if_like.html#COMPILER.DEFINE-IF-LIKE.04) | (assertEqual (pass-or-False-f)) | ((pass-or-False-f)) | (:pass) |
| FAIL | [COMPILER.DEFINE-IF-LIKE.05](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/compiler/define_if_like.html#COMPILER.DEFINE-IF-LIKE.05) | (assertEqual (get-state &pass)) | (:uncalled) | (:called) |
| PASS | [COMPILER.DEFINE-IF-LIKE.06](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/compiler/define_if_like.html#COMPILER.DEFINE-IF-LIKE.06) | (assertEqual (get-state &fail)) | (:uncalled) | (:uncalled) |
| FAIL | [DEPENDENT-TYPES.DEDUCTIONDTLTEST.102](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/dependent-types/DeductionDTLTest.html#DEPENDENT-TYPES.DEDUCTIONDTLTEST.102) | (exec "===== Test synthesizer ====") | () | ("===== Test synthesizer ====") |
| FAIL | [DEPENDENT-TYPES.DEDUCTIONDTLTEST.103](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/dependent-types/DeductionDTLTest.html#DEPENDENT-TYPES.DEDUCTIONDTLTEST.103) | (exec (record synthesize ((: $Proof (â (â P Q) $Tv)) kb rb Z))) | () | ((â· synthesize ((: PQm (â (â P Q) (STV 0.8 0.4))) kb rb Z) (: PQm (â (â P Q) (STV 0.8 0.4))))) |
| FAIL | [DEPENDENT-TYPES.DEDUCTIONDTLTEST.104](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/dependent-types/DeductionDTLTest.html#DEPENDENT-TYPES.DEDUCTIONDTLTEST.104) | (exec (record synthesize ((: $Proof (â (â Q R) $Tv)) kb rb Z))) | ("===== Test synthesizer ====") | ((â· synthesize ((: QRm (â (â Q R) (STV 0.9 0.5))) kb rb Z) (: QRm (â (â Q R) (STV 0.9 0.5))))) |
| FAIL | [DEPENDENT-TYPES.DEDUCTIONDTLTEST.105](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/dependent-types/DeductionDTLTest.html#DEPENDENT-TYPES.DEDUCTIONDTLTEST.105) | (exec (record synthesize ((: $Proof (â (â P R) $Tv)) kb rb (S Z)))) | ((⊷ synthesize ((: $Proof (≞ (→ P Q) $Tv)) kb rb Z) (: PQm (≞ (→ P Q) (STV 0.8 0.4))))) | ((â· synthesize ((: (Deduction Pm Qm Rm PQm QRm) (â (â P R) (STV 0.7 0.1))) kb rb (S Z)) (: (Deduction Pm Qm Rm PQm QRm) (â (â P R) (STV 0.7 0.1))))) |
| PASS | [DEPENDENT-TYPES.IMPLICATIONDIRECTINTRODUCTIONDTLTEST.103](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/dependent-types/ImplicationDirectIntroductionDTLTest.html#DEPENDENT-TYPES.IMPLICATIONDIRECTINTRODUCTIONDTLTEST.103) | (exec "===== Test base rule (built-in type checker) =====") | ("===== Test base rule (built-in type checker) =====") | ("===== Test base rule (built-in type checker) =====") |
| PASS | [DEPENDENT-TYPES.IMPLICATIONDIRECTINTRODUCTIONDTLTEST.104](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/dependent-types/ImplicationDirectIntroductionDTLTest.html#DEPENDENT-TYPES.IMPLICATIONDIRECTINTRODUCTIONDTLTEST.104) | (exec (base_prf)) | ((base_prf)) | ((base_prf)) |
| FAIL | [DEPENDENT-TYPES.IMPLICATIONDIRECTINTRODUCTIONDTLTEST.105](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/dependent-types/ImplicationDirectIntroductionDTLTest.html#DEPENDENT-TYPES.IMPLICATIONDIRECTINTRODUCTIONDTLTEST.105) | (exec (get-type base_prf)) | ((≞ (→ P Q) (ETV (:: (S (S Z)) ∅) (STV 0 0.5)))) | ((â (â P Q) (ETV (:: (S (S Z)) â) (STV 0 0.5))) (â (â P Q) (ETV (:: (S (S Z)) â) (STV 0 0.5))) (â (â P Q) (ETV (:: (S (S Z)) â) (STV 0 0.5))) (â (â P Q) (ETV (:: (S (S Z)) â) |
| PASS | [DEPENDENT-TYPES.IMPLICATIONDIRECTINTRODUCTIONDTLTEST.106](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/dependent-types/ImplicationDirectIntroductionDTLTest.html#DEPENDENT-TYPES.IMPLICATIONDIRECTINTRODUCTIONDTLTEST.106) | (exec "===== Test recursive rule (built-in type checker) =====") | ("===== Test recursive rule (built-in type checker) =====") | ("===== Test recursive rule (built-in type checker) =====") |
| PASS | [DEPENDENT-TYPES.IMPLICATIONDIRECTINTRODUCTIONDTLTEST.107](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/dependent-types/ImplicationDirectIntroductionDTLTest.html#DEPENDENT-TYPES.IMPLICATIONDIRECTINTRODUCTIONDTLTEST.107) | (exec (recursive_prf)) | ((recursive_prf)) | ((recursive_prf)) |
| FAIL | [DEPENDENT-TYPES.IMPLICATIONDIRECTINTRODUCTIONDTLTEST.108](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/dependent-types/ImplicationDirectIntroductionDTLTest.html#DEPENDENT-TYPES.IMPLICATIONDIRECTINTRODUCTIONDTLTEST.108) | (exec (get-type recursive_prf)) | ((≞ (→ P Q) $Etv_C35_733)) | () |
| PASS | [DEPENDENT-TYPES.IMPLICATIONDIRECTINTRODUCTIONDTLTEST.109](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/dependent-types/ImplicationDirectIntroductionDTLTest.html#DEPENDENT-TYPES.IMPLICATIONDIRECTINTRODUCTIONDTLTEST.109) | (exec "===== Prove that 2 < 7 (synthesizer) =====") | ("===== Prove that 2 < 7 (synthesizer) =====") | ("===== Prove that 2 < 7 (synthesizer) =====") |
| PASS | [DEPENDENT-TYPES.MODUSPONENSDTLTEST.103](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/dependent-types/ModusPonensDTLTest.html#DEPENDENT-TYPES.MODUSPONENSDTLTEST.103) | (exec "===== Test synthesizer ====") | ("===== Test synthesizer ====") | ("===== Test synthesizer ====") |
| FAIL | [DEPENDENT-TYPES.MODUSPONENSDTLTEST.104](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/dependent-types/ModusPonensDTLTest.html#DEPENDENT-TYPES.MODUSPONENSDTLTEST.104) | (exec (synthesize (: $Proof (â (big cow) (STV $S $C))) kb rb (fromNumber 0))) | ((: cow_is_big (≞ (big cow) (STV 0.99 0.99)))) | ((: cow_is_big (â (big cow) (STV 0.99 0.99)))) |
| FAIL | [DEPENDENT-TYPES.MODUSPONENSDTLTEST.105](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/dependent-types/ModusPonensDTLTest.html#DEPENDENT-TYPES.MODUSPONENSDTLTEST.105) | (exec (synthesize (: $Proof (â (chase cow dog) (STV $S $C))) kb rb (fromNumber 1))) | ((: (ModusPonens cow_is_big x_is_big_chases_dog) (≞ (chase cow dog) (STV 0.9821 0.99))) (let* (((: $... | () |
| FAIL | [DEPENDENT-TYPES.MODUSPONENSDTLTEST.106](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/dependent-types/ModusPonensDTLTest.html#DEPENDENT-TYPES.MODUSPONENSDTLTEST.106) | (exec (synthesize (: $Proof (â (see cow rabbit) (STV $S $C))) kb rb (fromNumber 2))) | ((: (ModusPonens (ModusPonens cow_is_big x_is_big_chases_dog) cow_chases_dog_sees_rabbit) (≞ (see co... | () |
| FAIL | [ENTAIL.IMPLICATIONDIRECTINTRODUCTIONENTAILTEST.106](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/entail/ImplicationDirectIntroductionEntailTest.html#ENTAIL.IMPLICATIONDIRECTINTRODUCTIONENTAILTEST.106) | (exec ("========== Test formula ==========")) | (("========== Test inductive rule ==========")) | (("========== Test formula ==========")) |
| FAIL | [ENTAIL.IMPLICATIONDIRECTINTRODUCTIONENTAILTEST.107](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/entail/ImplicationDirectIntroductionEntailTest.html#ENTAIL.IMPLICATIONDIRECTINTRODUCTIONENTAILTEST.107) | (exec (idi_formula (Bl True) (Bl False) (PrCnt 1 0))) | () | ((idi_formula (Bl True) (Bl False) (PrCnt 1 0))) |
| FAIL | [EQUAL.DEDUCTIONEQUALTEST.103](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/equal/DeductionEqualTest.html#EQUAL.DEDUCTIONEQUALTEST.103) | (exec (and (â P (PrCnt 1 0.1)) (â Q (PrCnt 1 0.1)) (â R (PrCnt 1 0.1)) (â (â P Q) (PrCnt 1 0.5)) (â (â Q R) (PrCnt 1 0.5)))) | ((and (≞ P (PrCnt 1 0.1)) (≞ R (PrCnt 1 0.1)) (≞ S (PrCnt 1 0.1)) (and (≞ P (PrCnt 1 0.1)) (≞ Q (PrC... | (True) |
| FAIL | [EXAMPLES.EXPRESSION.103](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/_401754.html#EXAMPLES.EXPRESSION.103) | (exec ((cata mapExpr evalExpr) (Fix (Plus (Fix (Plus (Fix (Var X)) (Fix (Const 2)))) (Fix (Const 40)))))) | (((ana mapExpr nTimes) (and 2 (S (S Z))))) | (42) |
| FAIL | [EXAMPLES.EXPRESSION.104](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/_100166.html#EXAMPLES.EXPRESSION.104) | (exec ((ana mapExpr nTimes) (and 2 (S (S Z))))) | (((hylo mapExpr evalExpr nTimes) (and 3 (S (S (S Z)))))) | ((Fix (Plus (Fix (mapExpr (ana mapExpr nTimes) (nTimes True))) (Fix (mapExpr (ana mapExpr nTimes) (nTimes True)))))) |
| FAIL | [EXAMPLES.EXPRESSION.105](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/_202202.html#EXAMPLES.EXPRESSION.105) | (exec ((hylo mapExpr evalExpr nTimes) (and 3 (S (S (S Z)))))) | (((para mapExpr diff) (Fix (Plus (Fix (Var X)) (Fix (Const 1)))))) | ((+ (evalExpr (mapExpr (hylo mapExpr evalExpr nTimes) (nTimes True))) (evalExpr (mapExpr (hylo mapExpr evalExpr nTimes) (nTimes True))))) |
| FAIL | [EXAMPLES.EXPRESSION.106](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/_328122.html#EXAMPLES.EXPRESSION.106) | (exec ((para mapExpr diff) (Fix (Plus (Fix (Var X)) (Fix (Const 1)))))) | ((2 t $X_C35_132) (Fix $Y) (1 p $X_C35_134)) | ((diff (Plus True True))) |
| FAIL | [EXAMPLES.EXPRESSION.107](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/_396768.html#EXAMPLES.EXPRESSION.107) | (exec (match &self (= (expand $X) $Y) $X)) | (((futu mapExpr expand) (2 t (1 p (Fix (Var X)))))) | ((1 p $_389476) (2 t $_389452) (Fix $_389428)) |
| FAIL | [EXAMPLES.FACTORIAL.01](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/factorial.html#EXAMPLES.FACTORIAL.01) | (assertEqual 120) | (120) | (120 (* 5 (* 4 (* 3 (* 2 (* 1 ())))))) |
| PASS | [EXAMPLES.FACTORIAL.02](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/factorial.html#EXAMPLES.FACTORIAL.02) | (assertEqual 120) | (120) | (120) |
| PASS | [EXAMPLES.FACTORIAL.03](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/factorial.html#EXAMPLES.FACTORIAL.03) | (assertEqual 120) | (120) | (120) |
| PASS | [EXAMPLES.FIBO.01](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/fibo.html#EXAMPLES.FIBO.01) | (assertEqual (fib 3)) | (2) | (2) |
| PASS | [EXAMPLES.FIBO-AS-PRED.01](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/fibo-as-pred.html#EXAMPLES.FIBO-AS-PRED.01) | (assertEqual (fibonacci 1 $W)) | (True) | (True) |
| PASS | [EXAMPLES.FIBO-AS-PRED.102](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/fibo-as-pred.html#EXAMPLES.FIBO-AS-PRED.102) | (exec (match &self (fibonacci 10 $W) $W)) | () | () |
| PASS | [EXAMPLES.FWGC1.01](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/fwgc1.html#EXAMPLES.FWGC1.01) | (assertEqual (solve start goal)) | (True) | (True) |
| PASS | [EXAMPLES.HANOI-ONE-SPACE.101](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/hanoi-one-space.html#EXAMPLES.HANOI-ONE-SPACE.101) | (exec (hanoi_test)) | () | () |
| PASS | [EXAMPLES.HANOI-PEG-SPACE.101](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/hanoi-peg-space.html#EXAMPLES.HANOI-PEG-SPACE.101) | (exec (hanoi_test)) | () | () |
| PASS | [EXAMPLES.KEY-LOOKUPS-MANY.01](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/key-lookups-many.html#EXAMPLES.KEY-LOOKUPS-MANY.01) | (assertEqual k-0) | (k-0) | (k-0) |
| PASS | [EXAMPLES.KEY-LOOKUPS-MANY.02](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/key-lookups-many.html#EXAMPLES.KEY-LOOKUPS-MANY.02) | (assertEqual k-1) | (k-1) | (k-1) |
| PASS | [EXAMPLES.KEY-LOOKUPS-MANY.03](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/key-lookups-many.html#EXAMPLES.KEY-LOOKUPS-MANY.03) | (assertEqual k-2) | (k-2) | (k-2) |
| PASS | [EXAMPLES.KEY-LOOKUPS-MANY.04](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/key-lookups-many.html#EXAMPLES.KEY-LOOKUPS-MANY.04) | (assertEqual k-3) | (k-3) | (k-3) |
| PASS | [EXAMPLES.KEY-LOOKUPS-MANY.05](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/key-lookups-many.html#EXAMPLES.KEY-LOOKUPS-MANY.05) | (assertEqual k-4) | (k-4) | (k-4) |
| PASS | [EXAMPLES.KEY-LOOKUPS-MANY.06](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/key-lookups-many.html#EXAMPLES.KEY-LOOKUPS-MANY.06) | (assertEqual k-5) | (k-5) | (k-5) |
| PASS | [EXAMPLES.KEY-LOOKUPS-MANY.07](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/key-lookups-many.html#EXAMPLES.KEY-LOOKUPS-MANY.07) | (assertEqual "k-6") | ("k-6") | ("k-6") |
| PASS | [EXAMPLES.KEY-LOOKUPS-MANY.08](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/key-lookups-many.html#EXAMPLES.KEY-LOOKUPS-MANY.08) | (assertEqual k-7) | (k-7) | (k-7) |
| PASS | [EXAMPLES.KEY-LOOKUPS-MANY.09](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/key-lookups-many.html#EXAMPLES.KEY-LOOKUPS-MANY.09) | (assertEqual k-8) | (k-8) | (k-8) |
| PASS | [EXAMPLES.KEY-LOOKUPS-MANY.10](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/key-lookups-many.html#EXAMPLES.KEY-LOOKUPS-MANY.10) | (assertEqual k-9) | (k-9) | (k-9) |
| FAIL | [EXAMPLES.PATHFINDING-EASY.01](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/pathfinding-easy.html#EXAMPLES.PATHFINDING-EASY.01) | (assertEqual (edge a c)) | ((edge a c)) | (False) |
| PASS | [EXAMPLES.STATE-TYPES.01](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/state_types.html#EXAMPLES.STATE-TYPES.01) | (assertEqual (get-type Either)) | (Type) | (Type) |
| PASS | [EXAMPLES.STATE-TYPES.02](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/state_types.html#EXAMPLES.STATE-TYPES.02) | (assertEqual (get-type (Left 5))) | (Either) | (Either) |
| PASS | [EXAMPLES.STATE-TYPES.03](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/state_types.html#EXAMPLES.STATE-TYPES.03) | (assertEqual (get-type (isLeft (Right 5)))) | (Bool) | (Bool) |
| PASS | [EXAMPLES.STATE-TYPES.04](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/state_types.html#EXAMPLES.STATE-TYPES.04) | (assertEqual (get-type (isLeft (Right 5)))) | (Bool) | (Bool) |
| PASS | [EXAMPLES.STATE-TYPES.101](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/state_types.html#EXAMPLES.STATE-TYPES.101) | (exec ("Bind A-first with A")) | (("Bind A-first with A")) | (("Bind A-first with A")) |
| FAIL | [EXAMPLES.STATE-TYPES.103](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/state_types.html#EXAMPLES.STATE-TYPES.103) | (exec ("(get-type A-first)=" (get-type (get-state &a-first)))) | (("(get-type A-first)=" Symbol)) | (("(get-type A-first)=" ABType)) |
| PASS | [EXAMPLES.STATE-TYPES.104](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/state_types.html#EXAMPLES.STATE-TYPES.104) | (exec ("Change A-first into B")) | (("Change A-first into B")) | (("Change A-first into B")) |
| FAIL | [EXAMPLES.STATE-TYPES.106](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/state_types.html#EXAMPLES.STATE-TYPES.106) | (exec ("(get-type A-first)=" (get-type (get-state &a-first)))) | (("(get-type A-first)=" Symbol)) | (("(get-type A-first)=" ABType)) |
| PASS | [EXAMPLES.STATE-TYPES.107](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/state_types.html#EXAMPLES.STATE-TYPES.107) | (exec ("Bind B-first with B")) | (("Bind B-first with B")) | (("Bind B-first with B")) |
| FAIL | [EXAMPLES.STATE-TYPES.109](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/state_types.html#EXAMPLES.STATE-TYPES.109) | (exec ("(get-type B-first)=" (get-type (get-state &b-first)))) | (("(get-type B-first)=" Symbol)) | (("(get-type B-first)=" ABType)) |
| PASS | [EXAMPLES.STATE-TYPES.110](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/state_types.html#EXAMPLES.STATE-TYPES.110) | (exec ("Change B-first into A")) | (("Change B-first into A")) | (("Change B-first into A")) |
| FAIL | [EXAMPLES.STATE-TYPES.112](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/state_types.html#EXAMPLES.STATE-TYPES.112) | (exec ("(get-type B-first)=" (get-type (get-state &b-first)))) | (("(get-type B-first)=" Symbol)) | (("(get-type B-first)=" ABType)) |
| PASS | [EXAMPLES.STATE-TYPES.113](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/state_types.html#EXAMPLES.STATE-TYPES.113) | (exec ("Bind False-first with False")) | (("Bind False-first with False")) | (("Bind False-first with False")) |
| PASS | [EXAMPLES.STATE-TYPES.115](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/state_types.html#EXAMPLES.STATE-TYPES.115) | (exec ("(get-type False-first)=" (get-type (get-state &false-first)))) | (("(get-type False-first)=" Bool)) | (("(get-type False-first)=" Bool)) |
| PASS | [EXAMPLES.STATE-TYPES.116](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/state_types.html#EXAMPLES.STATE-TYPES.116) | (exec ("Change False-first into Sometimes")) | (("Change False-first into Sometimes")) | (("Change False-first into Sometimes")) |
| PASS | [EXAMPLES.STATE-TYPES.118](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/state_types.html#EXAMPLES.STATE-TYPES.118) | (exec ("(get-type False-first)=" (get-type (get-state &false-first)))) | (("(get-type False-first)=" Symbol)) | (("(get-type False-first)=" Symbol)) |
| PASS | [EXAMPLES.STATE-TYPES.125](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/state_types.html#EXAMPLES.STATE-TYPES.125) | (exec ("(get-type (isLeft (Right 5)))=" (get-type (isLeft (Right 5))))) | (("(get-type (isLeft (Right 5)))=" Bool)) | (("(get-type (isLeft (Right 5)))=" Bool)) |
| PASS | [EXAMPLES.STATE-TYPES.126](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/state_types.html#EXAMPLES.STATE-TYPES.126) | (exec ("(get-type (get-state (new-state  (isLeft (Right 5)))))=" (get-type (get-state (new-state (isLeft (Right 5))))))) | (("(get-type (get-state (new-state  (isLeft (Right 5)))))=" Bool)) | (("(get-type (get-state (new-state  (isLeft (Right 5)))))=" Bool)) |
| FAIL | [EXAMPLES.STATE-TYPES.127](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/state_types.html#EXAMPLES.STATE-TYPES.127) | (exec ("(get-type (get-state (new-state (Left  6))))=" (get-type (get-state (new-state (Left 6)))))) | (("(get-type (get-state (new-state (Left  6))))=" Either)) | (("(get-type (get-state (new-state (Left  6))))=" (Symbol (StateMonad Either)))) |
| FAIL | [EXAMPLES.STATE-TYPES.128](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/state_types.html#EXAMPLES.STATE-TYPES.128) | (exec ("(get-type (get-state (new-state (Right 7))))=" (get-type (get-state (new-state (Right 7)))))) | (("(get-type (get-state (new-state (Right 7))))=" Either)) | (("(get-type (get-state (new-state (Right 7))))=" (Symbol (StateMonad Either)))) |
| PASS | [EXAMPLES.STATE-TYPES.129](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/state_types.html#EXAMPLES.STATE-TYPES.129) | (exec ("(get-type &is_left)=" &is_left (get-type &is_left))) | (("(get-type &is_left)=" False Bool)) | (("(get-type &is_left)=" False Bool)) |
| PASS | [EXAMPLES.STATE-TYPES.130](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/state_types.html#EXAMPLES.STATE-TYPES.130) | (exec ("(get-type &right_7)=" &right_7 (get-type &right_7))) | (("(get-type &right_7)=" (Right 7) Either)) | (("(get-type &right_7)=" (Right 7) Either)) |
| PASS | [EXAMPLES.STATE-TYPES.131](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/state_types.html#EXAMPLES.STATE-TYPES.131) | (exec ("bind &right_7-first with &right_7")) | (("bind &right_7-first with &right_7")) | (("bind &right_7-first with &right_7")) |
| PASS | [EXAMPLES.TEST-INFER-FUNCTION-APPLICATION-TYPE.01](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/test_infer_function_application_type.html#EXAMPLES.TEST-INFER-FUNCTION-APPLICATION-TYPE.01) | (assertEqual (if (: (apply reverse "Hello") $True) $True)) | (String) | (String) |
| FAIL | [EXAMPLES.TEST-INFER-FUNCTION-APPLICATION-TYPE.02](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/test_infer_function_application_type.html#EXAMPLES.TEST-INFER-FUNCTION-APPLICATION-TYPE.02) | (assertEqual (:? (HumansAreMortal SocratesIsHuman))) | () | ((Mortal Socrates)) |
| FAIL | [EXAMPLES.TEST-INFER-FUNCTION-APPLICATION-TYPE.03](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/test_infer_function_application_type.html#EXAMPLES.TEST-INFER-FUNCTION-APPLICATION-TYPE.03) | (assertEqual (:check (HumansAreMortal SocratesIsHuman) (Mortal Socrates))) | () | (True) |
| FAIL | [EXAMPLES.TEST-INFER-FUNCTION-APPLICATION-TYPE.04](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/test_infer_function_application_type.html#EXAMPLES.TEST-INFER-FUNCTION-APPLICATION-TYPE.04) | (assertEqual (:? (= SocratesIsMortal (HumansAreMortal SocratesIsHuman)))) | () | (Prop) |
| FAIL | [EXAMPLES.TEST-INFER-FUNCTION-APPLICATION-TYPE.05](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/test_infer_function_application_type.html#EXAMPLES.TEST-INFER-FUNCTION-APPLICATION-TYPE.05) | (assertEqual (:check (= (Mortal Plato) (Mortal Socrates)) Prop)) | () | (True) |
| FAIL | [EXAMPLES.TEST-INFER-FUNCTION-APPLICATION-TYPE.06](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/test_infer_function_application_type.html#EXAMPLES.TEST-INFER-FUNCTION-APPLICATION-TYPE.06) | (assertEqual (:check (= (Human Socrates) (Mortal Socrates)) Prop)) | () | (True) |
| FAIL | [EXAMPLES.TEST-INFER-FUNCTION-APPLICATION-TYPE.07](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/test_infer_function_application_type.html#EXAMPLES.TEST-INFER-FUNCTION-APPLICATION-TYPE.07) | (assertEqual (:? (GreenAndCroaksIsFrog SamIsGreen SamCroaks))) | () | ((Frog Sam)) |
| FAIL | [EXAMPLES.TEST-INFER-FUNCTION-APPLICATION-TYPE.08](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/test_infer_function_application_type.html#EXAMPLES.TEST-INFER-FUNCTION-APPLICATION-TYPE.08) | (assertEqual (:? (Human Plato))) | () | (Type) |
| FAIL | [EXAMPLES.TEST-INFER-FUNCTION-APPLICATION-TYPE.09](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/test_infer_function_application_type.html#EXAMPLES.TEST-INFER-FUNCTION-APPLICATION-TYPE.09) | (assertEqual (:? (HumansAreMortal SocratesIsHuman))) | () | ((Mortal Socrates)) |
| FAIL | [EXAMPLES.TEST-INFER-FUNCTION-APPLICATION-TYPE.10](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/test_infer_function_application_type.html#EXAMPLES.TEST-INFER-FUNCTION-APPLICATION-TYPE.10) | (assertEqual (:? (= SocratesIsMortal (HumansAreMortal SocratesIsHuman)))) | () | (Type) |
| FAIL | [EXAMPLES.TEST-INFER-FUNCTION-APPLICATION-TYPE.11](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/test_infer_function_application_type.html#EXAMPLES.TEST-INFER-FUNCTION-APPLICATION-TYPE.11) | (assertEqual (:? (= (Human Socrates) (Human Plato)))) | () | (Type) |
| FAIL | [EXAMPLES.TEST-INFER-FUNCTION-APPLICATION-TYPE.12](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/test_infer_function_application_type.html#EXAMPLES.TEST-INFER-FUNCTION-APPLICATION-TYPE.12) | (assertEqual (:? (= Human Mortal))) | () | (Type) |
| PASS | [EXAMPLES.TEST-LIST-CONCATENATION.01](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/test_list_concatenation.html#EXAMPLES.TEST-LIST-CONCATENATION.01) | (assertEqual (Concat (lst1) (lst2))) | ((Cons a1 (Cons a2 (Cons b1 (Cons b2 ()))))) | ((Cons a1 (Cons a2 (Cons b1 (Cons b2 ()))))) |
| PASS | [EXPERIMENTS.NON-DETERMINISM.101](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/synthesis/experiments/non-determinism.html#EXPERIMENTS.NON-DETERMINISM.101) | (exec (foo 21)) | (42 441) | (42 441) |
| PASS | [EXPERIMENTS.NON-DETERMINISM.102](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/synthesis/experiments/non-determinism.html#EXPERIMENTS.NON-DETERMINISM.102) | (exec (bar 2)) | (2 2 4 3) | (3 4 2 2 2 2 4 4) |
| FAIL | [EXPERIMENTS.SYNTHESIZE-VIA-SUPERPOSE.101](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/synthesis/experiments/synthesize-via-superpose.html#EXPERIMENTS.SYNTHESIZE-VIA-SUPERPOSE.101) | (exec (superpose ((. f f) (. f g) (. g f) (. g g) (. h g)))) | ((Error f BadType) (Error g BadType) (. g f) (Error g BadType) (. h g)) | ((. f f) (. f g) (. g f) (. g g) (. h g)) |
| FAIL | [EXPERIMENTS.SYNTHESIZE-VIA-UNIFY-TEST.102](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/synthesis/experiments/synthesize-via-unify-test.html#EXPERIMENTS.SYNTHESIZE-VIA-UNIFY-TEST.102) | (exec (record synthesize ((: $Term $Type) kb rb Z))) | () | ((â· synthesize ((: $_120004 $_120010) kb rb Z) (synthesize (: $_120004 $_120010) kb rb Z))) |
| FAIL | [EXPERIMENTS.SYNTHESIZE-VIA-UNIFY-TEST.103](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/synthesis/experiments/synthesize-via-unify-test.html#EXPERIMENTS.SYNTHESIZE-VIA-UNIFY-TEST.103) | (exec (record synthesize ((: $Term (-> Number String)) kb rb Z))) | ((⊷ synthesize ((: $Term $Type) kb rb Z) (: f (-> Number String))) (⊷ synthesize ((: $Term $Type) kb... | ((â· synthesize ((: $_201598 (-> Number String)) kb rb Z) (: f (-> Number String)))) |
| FAIL | [EXPERIMENTS.UNIFY-VIA-CASE.101](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/synthesis/experiments/unify-via-case.html#EXPERIMENTS.UNIFY-VIA-CASE.101) | (exec (case (Link $X B) (((Link A $Y) (Link $X $Y))))) | ((Link A B)) | ((Link $_369438 B)) |
| FAIL | [EXPERIMENTS.UNIFY-VIA-CASE.102](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/synthesis/experiments/unify-via-case.html#EXPERIMENTS.UNIFY-VIA-CASE.102) | (exec (case (-> $X B) (((-> A $Y) (-> $X $Y))))) | ((-> A B)) | ((-> $_407802 B)) |
| FAIL | [EXPERIMENTS.UNIFY-VIA-CASE.103](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/synthesis/experiments/unify-via-case.html#EXPERIMENTS.UNIFY-VIA-CASE.103) | (exec (case (f $X) (((Link A $Y) (Link $X $Y))))) | ((Link A B)) | ((Link $_458618 B)) |
| FAIL | [EXPERIMENTS.UNIFY-VIA-CASE.104](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/synthesis/experiments/unify-via-case.html#EXPERIMENTS.UNIFY-VIA-CASE.104) | (exec (case (Link $X B) (((g $Y) (Link $X $Y))))) | () | ((Link $_504350 B)) |
| FAIL | [EXPERIMENTS.UNIFY-VIA-CASE.105](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/synthesis/experiments/unify-via-case.html#EXPERIMENTS.UNIFY-VIA-CASE.105) | (exec (case (superpose ((Link $X B) (Node A) (Link $X C))) (((Link A $Y) (Link $X $Y))))) | ((Link A B) (Link A C)) | ((Link $_24494 B) (Link $_24470 C)) |
| PASS | [EXPERIMENTS.UNIFY-VIA-CASE.106](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/synthesis/experiments/unify-via-case.html#EXPERIMENTS.UNIFY-VIA-CASE.106) | (exec (case (g $Y) (($Z (case (f $X) (($Z $Z))))))) | ((Link A B)) | ((Link A B)) |
| PASS | [EXPERIMENTS.UNIFY-VIA-LET.101](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/synthesis/experiments/unify-via-let.html#EXPERIMENTS.UNIFY-VIA-LET.101) | (exec (let (Link A $Y) (Link $X B) (Link $X $Y))) | ((Link A B)) | ((Link A B)) |
| PASS | [EXPERIMENTS.UNIFY-VIA-LET.102](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/synthesis/experiments/unify-via-let.html#EXPERIMENTS.UNIFY-VIA-LET.102) | (exec (let (-> A $Y) (-> $X B) (-> $X $Y))) | ((-> A B)) | ((-> A B)) |
| PASS | [EXPERIMENTS.UNIFY-VIA-LET.103](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/synthesis/experiments/unify-via-let.html#EXPERIMENTS.UNIFY-VIA-LET.103) | (exec (let (Link A $Y) (f $X) (Link $X $Y))) | ((Link A B)) | ((Link A B)) |
| PASS | [EXPERIMENTS.UNIFY-VIA-LET.104](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/synthesis/experiments/unify-via-let.html#EXPERIMENTS.UNIFY-VIA-LET.104) | (exec (let (g $Y) (Link $X B) (Link $X $Y))) | () | () |
| PASS | [EXPERIMENTS.UNIFY-VIA-LET.105](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/synthesis/experiments/unify-via-let.html#EXPERIMENTS.UNIFY-VIA-LET.105) | (exec (let* (($Gy (g $Y)) ($Gy (Link $X B))) (Link $X $Y))) | ((Link A B)) | ((Link A B)) |
| PASS | [EXPERIMENTS.UNIFY-VIA-LET.106](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/synthesis/experiments/unify-via-let.html#EXPERIMENTS.UNIFY-VIA-LET.106) | (exec (let (Link A $Y) (superpose ((Link $X B) (Node A) (Link $X C))) (Link $X $Y))) | ((Link A B) (Link A C)) | ((Link A B) (Link A C)) |
| PASS | [EXPERIMENTS.UNIFY-VIA-LET.107](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/synthesis/experiments/unify-via-let.html#EXPERIMENTS.UNIFY-VIA-LET.107) | (exec (let* (($Z (g $Y)) ($Z (f $X))) $Z)) | ((Link A B)) | ((Link A B)) |
| PASS | [FEATURES.REVERSE-ARITHMETIC.01](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/features/reverse-arithmetic.html#FEATURES.REVERSE-ARITHMETIC.01) | (assertEqual (match &self (= (f 1) $Y) $Y)) | (2) | (2) |
| PASS | [FEATURES.REVERSE-ARITHMETIC.02](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/features/reverse-arithmetic.html#FEATURES.REVERSE-ARITHMETIC.02) | (assertEqual (match &self (= (f $X) 2) $X)) | (1) | (1) |
| PASS | [FORMULA.DEDUCTIONFORMULATEST.01](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/common/formula/DeductionFormulaTest.html#FORMULA.DEDUCTIONFORMULATEST.01) | (assertEqualToResult (max 3 4)) | (4) | (4) |
| PASS | [FORMULA.DEDUCTIONFORMULATEST.02](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/common/formula/DeductionFormulaTest.html#FORMULA.DEDUCTIONFORMULATEST.02) | (assertEqualToResult (min 3 4)) | (3) | (3) |
| PASS | [FORMULA.DEDUCTIONFORMULATEST.03](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/common/formula/DeductionFormulaTest.html#FORMULA.DEDUCTIONFORMULATEST.03) | (assertEqualToResult (and True True)) | (True) | (True) |
| PASS | [FORMULA.DEDUCTIONFORMULATEST.04](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/common/formula/DeductionFormulaTest.html#FORMULA.DEDUCTIONFORMULATEST.04) | (assertEqualToResult (or True False)) | (True) | (True) |
| PASS | [FORMULA.DEDUCTIONFORMULATEST.05](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/common/formula/DeductionFormulaTest.html#FORMULA.DEDUCTIONFORMULATEST.05) | (assertEqualToResult (<= 5 4)) | (False) | (False) |
| PASS | [FORMULA.DEDUCTIONFORMULATEST.06](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/common/formula/DeductionFormulaTest.html#FORMULA.DEDUCTIONFORMULATEST.06) | (assertEqualToResult (clamp 2 0 1)) | (1) | (1) |
| PASS | [FORMULA.DEDUCTIONFORMULATEST.07](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/common/formula/DeductionFormulaTest.html#FORMULA.DEDUCTIONFORMULATEST.07) | (assertEqualToResult (smallest-intersection-probability 0.9 0.6)) | (0.5555555555555556) | (0.5555555555555556) |
| PASS | [FORMULA.DEDUCTIONFORMULATEST.08](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/common/formula/DeductionFormulaTest.html#FORMULA.DEDUCTIONFORMULATEST.08) | (assertEqualToResult (conditional-probability-consistency 0.9 0.6 0.5)) | (True) | (True) |
| PASS | [FORMULA.DEDUCTIONFORMULATEST.09](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/common/formula/DeductionFormulaTest.html#FORMULA.DEDUCTIONFORMULATEST.09) | (assertEqualToResult (simple-deduction-strength-formula 0.9 0.6 0.5 0.3 0.4)) | (0.575) | (0.575) |
| PASS | [INTERP.STRUCTURE-TESTS.101](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/interp/structure-tests.html#INTERP.STRUCTURE-TESTS.101) | (exec (collapse (superpose ((superpose (1 2 3 1 2 3 1 2 3 1 2 3 1 2 3 1 2 3 1 2 3 1 2 3)) (superpose (1 2 3 1 2 3 1 2 3 1 2 3 1 2 3 1 2 3 1 2 3 1 2 3)) (superpose (4 5 6 4 5 6 4 5 6 4 5 6 4 5 6 4 5 6| ((1 2 3 1 2 3 1 2 3 1 2 3 1 2 3 1 2 3 1 2 3 1 2 3 1 2 3 1 2 3 1 2 3 1 2 3 1 2 3 1 2 3 1 2 3 1 2 3 4 ... | ((1 2 3 1 2 3 1 2 3 1 2 3 1 2 3 1 2 3 1 2 3 1 2 3 1 2 3 1 2 3 1 2 3 1 2 3 1 2 3 1 2 3 1 2 3 1 2 3 4 5 6 4 5 6 4 5 6 4 5 6 4 5 6 4 5 6 4 5 6 4 5 6 4 5 6 4 5 6 4 5 6 4 5 6 4 5 6 4 5 6 4 5 6 4 5 6 7 8 9|
| FAIL | [JOHN-CARRY-FLOWER.JOHN-CARRY-FLOWER-TEST.103](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/sumo/john-carry-flower/john-carry-flower-test.html#JOHN-CARRY-FLOWER.JOHN-CARRY-FLOWER-TEST.103) | (exec (match &kb $X (add-atom &labelled-kb (: (WitnessOf $X) $X)))) | () | (True) |
| PASS | [JOHN-CARRY-FLOWER.JOHN-CARRY-FLOWER-TEST.104](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/sumo/john-carry-flower/john-carry-flower-test.html#JOHN-CARRY-FLOWER.JOHN-CARRY-FLOWER-TEST.104) | (exec (synthesize (: $Proof (instance JohnsCarry Transfer)) kb rb (fromNumber 2))) | () | () |
| PASS | [JOHN-CARRY-FLOWER.JOHN-CARRY-FLOWER-TEST.105](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/sumo/john-carry-flower/john-carry-flower-test.html#JOHN-CARRY-FLOWER.JOHN-CARRY-FLOWER-TEST.105) | (exec (synthesize (: $Proof (â§ (instance JohnsCarry Transfer) (objectTransferred JohnsCarry JohnsVase) (orientation JohnsFlower JohnsVase Inside))) kb rb (fromNumber 3))) | () | () |
| FAIL | [JOHN-CARRY-FLOWER.JOHN-CARRY-FLOWER-TEST.106](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/sumo/john-carry-flower/john-carry-flower-test.html#JOHN-CARRY-FLOWER.JOHN-CARRY-FLOWER-TEST.106) | (exec (synthesize (: $Proof (objectTransferred JohnsCarry JohnsFlower)) kb rb (fromNumber 4))) | ((: (ModusPonens (WitnessOf (⟹ (∧ (subclass Carrying Transfer) (instance JohnsCarry Carrying)) (inst... | () |
| FAIL | [MINECRAFT.TEST-MINECRAFT-PLANNING.01](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/minecraft/test_minecraft_planning.html#MINECRAFT.TEST-MINECRAFT-PLANNING.01) | (assertEqual (in-inventory wooden-pickaxe)) | ((in-inventory wooden-pickaxe)) | (False) |
| FAIL | [MINECRAFT.TEST-MINECRAFT-PLANNING-WITH-ABSTRACTIONS.01](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/minecraft/test_minecraft_planning_with_abstractions.html#MINECRAFT.TEST-MINECRAFT-PLANNING-WITH-ABSTRACTIONS.01) | (assertEqual (in-inventory diamond)) | ((in-inventory diamond)) | (False) |
| FAIL | [MINECRAFT.TEST-MINECRAFT-PLANNING-WITH-ABSTRACTIONS.02](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/minecraft/test_minecraft_planning_with_abstractions.html#MINECRAFT.TEST-MINECRAFT-PLANNING-WITH-ABSTRACTIONS.02) | (assertEqual (in-inventory diamond)) | ((in-inventory diamond)) | (True) |
| PASS | [MINER.MINERMATCHTEST.101](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/miner/MinerMatchTest.html#MINER.MINERMATCHTEST.101) | (exec (new-named-space Linkspace)) | () | () |
| PASS | [MINER.MINERMATCHTEST.101](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/miner/MinerMatchTest.html#MINER.MINERMATCHTEST.101) | (exec (new-named-space Linkspace)) | () | () |
| FAIL | [MINER.MINERMATCHTEST.102](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/miner/MinerMatchTest.html#MINER.MINERMATCHTEST.102) | (exec (new-named-space Xspace)) | ((Error (import! &db "data/sample.metta") Failed to load module "data/sample.metta;" could not locat... | (True) |
| FAIL | [MINER.MINERUTILS.102](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/miner/MinerUtils.html#MINER.MINERUTILS.102) | (exec (new-named-space Xspace)) | () | (True) |
| FAIL | [MINER.MINERUTILS.103](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/miner/MinerUtils.html#MINER.MINERUTILS.103) | (exec (new-named-space Yspace)) | () | (True) |
| FAIL | [MINER.MINERUTILS.104](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/miner/MinerUtils.html#MINER.MINERUTILS.104) | (exec (new-named-space Linkspace)) | () | (True) |
| PASS | [NARS.TESTS0.01](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/nars/tests0.html#NARS.TESTS0.01) | (assertEqualToResult (|- ((Garfield --> cat) (1.0 0.9)) ((cat --> animal) (1.0 0.9)))) | (((Garfield --> animal) (1.0 0.81)) ((animal --> Garfield) (1.0 0.44751381215469616))) | (((Garfield --> animal) (1.0 0.81)) ((animal --> Garfield) (1.0 0.44751381215469616))) |
| PASS | [NARS.TESTS0.02](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/nars/tests0.html#NARS.TESTS0.02) | (assertEqualToResult (|- ((Garfield --> carnivore) (1.0 0.9)) (((Garfield --> cat) ==> (Garfield --> carnivore)) (1.0 0.9)))) | (((Garfield --> cat) (1.0 0.44751381215469616))) | (((Garfield --> cat) (1.0 0.44751381215469616))) |
| PASS | [NARS.TESTS0.03](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/nars/tests0.html#NARS.TESTS0.03) | (assertEqualToResult (|- ((({ a b }) --> mwawa) (1.0 0.9)))) | (((({} a) --> mwawa) (1.0 0.81)) ((({} b) --> mwawa) (1.0 0.81))) | (((({} a) --> mwawa) (1.0 0.81)) ((({} b) --> mwawa) (1.0 0.81))) |
| PASS | [NARS.TESTS0.04](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/nars/tests0.html#NARS.TESTS0.04) | (assertEqualToResult (|- (((a * b) --> R) (1.0 0.9)))) | (((a --> (R /1 b)) (1.0 0.81)) ((b --> (R /2 a)) (1.0 0.81))) | (((a --> (R /1 b)) (1.0 0.81)) ((b --> (R /2 a)) (1.0 0.81))) |
| PASS | [NARS.TESTS0.05](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/nars/tests0.html#NARS.TESTS0.05) | (assertEqualToResult (|- ((R --> (a * b)) (1.0 0.9)))) | ((((R \1 b) --> a) (1.0 0.81)) (((R \2 a) --> b) (1.0 0.81))) | ((((R \1 b) --> a) (1.0 0.81)) (((R \2 a) --> b) (1.0 0.81))) |
| PASS | [NARS.TESTS0.06](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/nars/tests0.html#NARS.TESTS0.06) | (assertEqualToResult (|- ((A --> cat) (1.0 0.9)) ((B --> cat) (1.0 0.9)))) | (((B --> A) (1.0 0.44751381215469616)) ((B <-> A) (1.0 0.44751381215469616)) (((A & B) --> cat) (1.0... | (((B --> A) (1.0 0.44751381215469616)) ((B <-> A) (1.0 0.44751381215469616)) (((A & B) --> cat) (1.0 0.81)) (((A | B) --> cat) (1.0 0.81)) (((A ~ B) --> cat) (0.0 0.81))) |
| PASS | [NARS.TESTS0.07](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/nars/tests0.html#NARS.TESTS0.07) | (assertEqualToResult (|- (|- ((Garfield --> cat) (1.0 0.9)) ((cat --> animal) (1.0 0.9))) ((animal --> being) (1.0 0.9)))) | (((Garfield --> being) (1.0 0.7290000000000001)) ((animal --> (Garfield & being)) (1.0 0.40276243093... | (((Garfield --> being) (1.0 0.7290000000000001)) ((animal --> (Garfield & being)) (1.0 0.40276243093922653)) ((animal --> (Garfield - being)) (0.0 0.40276243093922653)) ((animal --> (Garfield | being)) (1.0 0.40276243093922653)) ((being --> Garfield) (1.0 0.28712091374556914)) ((being --> Garfield) (1.0 0.42163100057836905)) ((being <-> Garfield) (1.0 0.28712091374556914))) |
| PASS | [NARS.TESTS1.01](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/nars/tests1.html#NARS.TESTS1.01) | (assertEqual (TupleCount (get-atoms &belief_events))) | (0) | (0) |
| FAIL | [ORIENTATION.ORIENTATION-TEST.103](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/sumo/orientation/orientation-test.html#ORIENTATION.ORIENTATION-TEST.103) | (exec (match &kb $X (add-atom &labelled-kb (: (WitnessOf $X) $X)))) | () | (True) |
| PASS | [ORIENTATION.ORIENTATION-TEST.104](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/sumo/orientation/orientation-test.html#ORIENTATION.ORIENTATION-TEST.104) | (exec (synthesize (: $Proof (orientation A B Right)) kb rb Z)) | () | () |
| PASS | [ORIENTATION.ORIENTATION-TEST.105](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/sumo/orientation/orientation-test.html#ORIENTATION.ORIENTATION-TEST.105) | (exec (synthesize (: $Proof (orientation A C Right)) kb rb (fromNumber 2))) | () | () |
| PASS | [PROB-DEP-TYPES.INF-ORDER-PROBS.01](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/prob-dep-types/inf_order_probs.html#PROB-DEP-TYPES.INF-ORDER-PROBS.01) | (assertEqualToResult (sample ("a'"))) | ("b'" "c'") | ("b'" "c'") |
| PASS | [PROB-DEP-TYPES.INF-ORDER-PROBS.02](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/prob-dep-types/inf_order_probs.html#PROB-DEP-TYPES.INF-ORDER-PROBS.02) | (assertEqualToResult (sample ((sample ("a'"))))) | ("a'" "c'" "d'") | ("a'" "c'" "d'") |
| PASS | [PROB-DEP-TYPES.INF-ORDER-PROBS.03](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/prob-dep-types/inf_order_probs.html#PROB-DEP-TYPES.INF-ORDER-PROBS.03) | (assertEqualToResult (sample ("c'"))) | ("d'") | ("d'") |
| PASS | [PROB-DEP-TYPES.INF-ORDER-PROBS.04](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/prob-dep-types/inf_order_probs.html#PROB-DEP-TYPES.INF-ORDER-PROBS.04) | (assertEqualToResult (sample ((sample ("c'"))))) | ("a'") | ("a'") |
| PASS | [PROB-DEP-TYPES.INF-ORDER-PROBS.05](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/prob-dep-types/inf_order_probs.html#PROB-DEP-TYPES.INF-ORDER-PROBS.05) | (assertEqualToResult (sample ((sample ((sample ("c'"))))))) | ("b'" "c'") | ("b'" "c'") |
| PASS | [PROB-DEP-TYPES.INF-ORDER-PROBS.06](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/prob-dep-types/inf_order_probs.html#PROB-DEP-TYPES.INF-ORDER-PROBS.06) | (assertEqualToResult (match &self (: A $True) ($True))) | ((B) (D) (Type)) | ((B) (D) (Type)) |
| PASS | [PROB-DEP-TYPES.INF-ORDER-PROBS.07](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/prob-dep-types/inf_order_probs.html#PROB-DEP-TYPES.INF-ORDER-PROBS.07) | (assertEqualToResult (Distribution (Distribution "U_ABCD'"))) | ("U_ABCD'") | ("U_ABCD'") |
| PASS | [PROB-DEP-TYPES.INF-ORDER-PROBS.08](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/prob-dep-types/inf_order_probs.html#PROB-DEP-TYPES.INF-ORDER-PROBS.08) | (assertEqualToResult (match &self (: a $True) ($True))) | ((A)) | ((A)) |
| PASS | [PROB-DEP-TYPES.INF-ORDER-PROBS.09](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/prob-dep-types/inf_order_probs.html#PROB-DEP-TYPES.INF-ORDER-PROBS.09) | (assertEqualToResult (match &self (: "a'" $True) ($True))) | (("U_ABCD'")) | (("U_ABCD'")) |
| FAIL | [PROB-DEP-TYPES.INF-ORDER-PROBS.101](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/prob-dep-types/inf_order_probs.html#PROB-DEP-TYPES.INF-ORDER-PROBS.101) | (exec (sample ("a'"))) | ("c'," "c'," "c'," "b'," "b'," "c'," "c'," "c'," "b'," "b'," "c'," "c'," "c'," "b'," "b'," "c'," "c'... | ("b'" "c'" "b'" "c'" "b'" "c'" "b'" "c'") |
| FAIL | [PROB-DEP-TYPES.INF-ORDER-PROBS.103](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/prob-dep-types/inf_order_probs.html#PROB-DEP-TYPES.INF-ORDER-PROBS.103) | (exec (sample ((sample ("a'"))))) | ((Error ((sample ("a'"))) NoValidAlternatives)) | ("a'" "c'" "a'" "c'" "d'" "d'" "a'" "c'" "a'" "c'" "d'" "d'") |
| PASS | [PROB-DEP-TYPES.PROB-DEP-TYPES.01](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/prob-dep-types/prob_dep_types.html#PROB-DEP-TYPES.PROB-DEP-TYPES.01) | (assertEqualToResult (sample (Bernoulli))) | (False True) | (False True) |
| PASS | [PROB-DEP-TYPES.PROB-DEP-TYPES.02](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/prob-dep-types/prob_dep_types.html#PROB-DEP-TYPES.PROB-DEP-TYPES.02) | (assertEqualToResult (sample (ColDist))) | (Blue Green Red) | (Blue Green Red) |
| PASS | [PROB-DEP-TYPES.PROB-DEP-TYPES.03](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/prob-dep-types/prob_dep_types.html#PROB-DEP-TYPES.PROB-DEP-TYPES.03) | (assertEqualToResult (sample (HybridDist))) | (Blue False Green Red True) | (Blue False Green Red True) |
| FAIL | [PROB-DEP-TYPES.PROB-DEP-TYPES.04](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/prob-dep-types/prob_dep_types.html#PROB-DEP-TYPES.PROB-DEP-TYPES.04) | (assertEqualToResult (HybridPerm (sample (HybridDist)))) | (Blue False Green Red True (ColPerm False) (ColPerm True) (Not Blue) (Not Green) (Not Red)) | (Blue False Green Red True) |
| FAIL | [PROB-DEP-TYPES.PROB-DEP-TYPES.05](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/prob-dep-types/prob_dep_types.html#PROB-DEP-TYPES.PROB-DEP-TYPES.05) | (assertEqualToResult (sample (SecondOrderColDist))) | ((thunk Blue) (thunk Green) (thunk Red)) | ((thunk (ColPerm (sample (ColDist)))) (thunk (random Red (random Green Blue)))) |
| PASS | [PROB-DEP-TYPES.PROB-DEP-TYPES.06](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/prob-dep-types/prob_dep_types.html#PROB-DEP-TYPES.PROB-DEP-TYPES.06) | (assertEqualToResult (sample (FlattenedColDist))) | (Blue Green Red) | (Blue Green Red) |
| FAIL | [PROB-DEP-TYPES.PROB-DEP-TYPES.07](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/prob-dep-types/prob_dep_types.html#PROB-DEP-TYPES.PROB-DEP-TYPES.07) | (assertEqualToResult (sample (SecondOrderHybridDist))) | ((thunk Blue) (thunk False) (thunk Green) (thunk Red) (thunk True) (thunk (ColPerm False)) (thunk (C... | ((thunk (HybridPerm (sample (HybridDist)))) (thunk (f (sample (Bernoulli))))) |
| FAIL | [PROB-DEP-TYPES.PROB-DEP-TYPES.101](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/prob-dep-types/prob_dep_types.html#PROB-DEP-TYPES.PROB-DEP-TYPES.101) | (exec (sample (Bernoulli))) | ("False," True) | (True False True False) |
| FAIL | [PROB-DEP-TYPES.PROB-DEP-TYPES.103](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/prob-dep-types/prob_dep_types.html#PROB-DEP-TYPES.PROB-DEP-TYPES.103) | (exec (sample (ColDist))) | ("Blue," "Red," "Green," Red) | (Red Green Red Blue Red Green Blue Red Green Red Blue Red Green Blue) |
| FAIL | [PROB-DEP-TYPES.PROB-DEP-TYPES.105](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/prob-dep-types/prob_dep_types.html#PROB-DEP-TYPES.PROB-DEP-TYPES.105) | (exec (sample (HybridDist))) | ("Blue," "Red," "Green," "Red," "False," True) | (True False True False Red Green Red Blue Red Green Blue Red Green Red Blue Red Green Blue True False True False Red Green Red Blue Red Green Blue Red Green Red Blue Red Green Blue) |
| FAIL | [PROB-DEP-TYPES.PROB-DEP-TYPES.107](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/prob-dep-types/prob_dep_types.html#PROB-DEP-TYPES.PROB-DEP-TYPES.107) | (exec (HybridPerm (sample (HybridDist)))) | ("Red," "Green," "Blue," "Green," "True," False) | (False (ColPerm True) True (ColPerm False) False (ColPerm True) True (ColPerm False) (Not Red) Green (Not Green) Blue (Not Red) Green (Not Blue) Red (Not Red) Green (Not Green) Blue (Not Blue) Red (N|
| FAIL | [PROB-DEP-TYPES.PROB-DEP-TYPES.109](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/prob-dep-types/prob_dep_types.html#PROB-DEP-TYPES.PROB-DEP-TYPES.109) | (exec (sample (SecondOrderColDist))) | ((thunk (ColPerm (sample (ColDist)))) (thunk (random Red (random Green Blue)))) | ((thunk Red) (thunk Green) (thunk Blue) (thunk Green) (thunk Red) (thunk Green) (thunk Blue) (thunk Red) (thunk Green) (thunk Green) (thunk Blue) (thunk Green) (thunk Red) (thunk Green) (thunk Blue) |
| FAIL | [PROB-DEP-TYPES.PROB-DEP-TYPES.111](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/prob-dep-types/prob_dep_types.html#PROB-DEP-TYPES.PROB-DEP-TYPES.111) | (exec (sample (FlattenedColDist))) | ("Red," "Green," "Blue," "Green," "Blue," "Red," "Green," Red) | (Red Green Blue Green Red Green Blue Red Green Green Blue Green Red Green Blue Red Red Green Blue Green Red Green Blue Red Blue Green Blue Green Red Green Blue Red Red Green Blue Green Red Green Blue|
| FAIL | [PROB-DEP-TYPES.PROB-DEP-TYPES.113](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/prob-dep-types/prob_dep_types.html#PROB-DEP-TYPES.PROB-DEP-TYPES.113) | (exec (sample (SecondOrderHybridDist))) | ((thunk (HybridPerm (sample (HybridDist)))) (thunk (f (sample (Bernoulli))))) | ((thunk True) (thunk False) (thunk (ColPerm True)) (thunk True) (thunk (ColPerm False)) (thunk False) (thunk (ColPerm True)) (thunk True) (thunk (ColPerm False)) (thunk (Not Red)) (thunk Green) (thun|
| FAIL | [SYNTHESIS.UNIFYTEST.102](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/synthesis/UnifyTest.html#SYNTHESIS.UNIFYTEST.102) | (exec (unify (Link $X B) (Link A $Y) (Link $X $Y))) | ((Link A B)) | ((Link A $_498450)) |
| FAIL | [SYNTHESIS.UNIFYTEST.103](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/synthesis/UnifyTest.html#SYNTHESIS.UNIFYTEST.103) | (exec (unify* (((Link $X B $Z) (Link A $Y $Z)) ($Z C)) (Link $X $Y $Z))) | ((Link A B C)) | () |
| PASS | [SYNTHESIS.UNIFYTEST.104](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/synthesis/UnifyTest.html#SYNTHESIS.UNIFYTEST.104) | (exec (unify* (((: $Ructor (-> $Premise1 $Premise2 $Conclusion)) (: -> (-> $B $C) (-> $A $B) (-> $A $C))) ((: ($Ructor $Proof1 $Proof2) $Conclusion) (: $Term (-> Number Bool))) ((: $Proof1 $Premise1)| () | () |
| PASS | [TEST-SCRIPTS.00-LANG-CASE.01](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/test_scripts/00_lang_case.html#TEST-SCRIPTS.00-LANG-CASE.01) | (assertEqual (+ 1 (superpose (1 2 3)))) | (2 3 4) | (2 3 4) |
| PASS | [TEST-SCRIPTS.00-LANG-CASE.02](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/test_scripts/00_lang_case.html#TEST-SCRIPTS.00-LANG-CASE.02) | (assertEqual (+ 1 (superpose (1 2 3)))) | (2 3 4) | (2 3 4) |
| PASS | [TEST-SCRIPTS.00-LANG-CASE.03](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/test_scripts/00_lang_case.html#TEST-SCRIPTS.00-LANG-CASE.03) | (assertEqual ((superpose (1 2 3)))) | ((1) (2) (3)) | ((1) (2) (3)) |
| PASS | [TEST-SCRIPTS.00-LANG-CASE.04](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/test_scripts/00_lang_case.html#TEST-SCRIPTS.00-LANG-CASE.04) | (assertEqual (case (+ 1 5) ((5 Error) (6 OK) (6 Error)))) | (OK) | (OK) |
| PASS | [TEST-SCRIPTS.00-LANG-CASE.05](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/test_scripts/00_lang_case.html#TEST-SCRIPTS.00-LANG-CASE.05) | (assertEqual (case (+ 1 5) (($X (+ 1 $X))))) | (7) | (7) |
| PASS | [TEST-SCRIPTS.00-LANG-CASE.06](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/test_scripts/00_lang_case.html#TEST-SCRIPTS.00-LANG-CASE.06) | (assertEqual (case 5 ((6 OK)))) | () | () |
| PASS | [TEST-SCRIPTS.00-LANG-CASE.07](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/test_scripts/00_lang_case.html#TEST-SCRIPTS.00-LANG-CASE.07) | (assertEqual (case (+ 1 (superpose (1 2 3))) ((3 OK-3) (4 OK-4)))) | (OK-3 OK-4) | (OK-3 OK-4) |
| PASS | [TEST-SCRIPTS.00-LANG-CASE.08](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/test_scripts/00_lang_case.html#TEST-SCRIPTS.00-LANG-CASE.08) | (assertEqual (case (+ 1 (superpose (1 2 3))) (($X (+ 1 $X))))) | (3 4 5) | (3 4 5) |
| PASS | [TEST-SCRIPTS.00-LANG-CASE.09](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/test_scripts/00_lang_case.html#TEST-SCRIPTS.00-LANG-CASE.09) | (assertEqual (match &self ($Rel A $X) ($Rel $X))) | ((Rel-P B) (Rel-Q C)) | ((Rel-P B) (Rel-Q C)) |
| PASS | [TEST-SCRIPTS.00-LANG-CASE.10](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/test_scripts/00_lang_case.html#TEST-SCRIPTS.00-LANG-CASE.10) | (assertEqual (superpose ((P B) (Q C)))) | ((P B) (Q C)) | ((P B) (Q C)) |
| PASS | [TEST-SCRIPTS.00-LANG-CASE.11](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/test_scripts/00_lang_case.html#TEST-SCRIPTS.00-LANG-CASE.11) | (assertEqual (case (match &self ($Rel B $X) ($Rel $X)) (((Rel-P $Y) (P $Y)) ((Rel-Q $Y) (Q $Y)) (%void% no-match)))) | (no-match) | (no-match) |
| PASS | [TEST-SCRIPTS.01-LANG-INC.01](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/test_scripts/01_lang_inc.html#TEST-SCRIPTS.01-LANG-INC.01) | (assertEqual (maybe-inc Nothing)) | (Nothing) | (Nothing) |
| PASS | [TEST-SCRIPTS.01-LANG-INC.02](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/test_scripts/01_lang_inc.html#TEST-SCRIPTS.01-LANG-INC.02) | (assertEqual (maybe-inc (Just 2))) | ((Just 3)) | ((Just 3)) |
| PASS | [TEST-SCRIPTS.02-CURRIED-PLUS.01](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/test_scripts/02-curried-plus.html#TEST-SCRIPTS.02-CURRIED-PLUS.01) | (assertEqualToResult ((inc) 2)) | (3) | (3) |
| PASS | [TEST-SCRIPTS.03-SORING-VIA-INSERT.01](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/test_scripts/03-soring-via-insert.html#TEST-SCRIPTS.03-SORING-VIA-INSERT.01) | (assertEqual (Cons 1 ())) | ((Cons 1 ())) | ((Cons 1 ())) |
| PASS | [TEST-SCRIPTS.03-SORING-VIA-INSERT.02](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/test_scripts/03-soring-via-insert.html#TEST-SCRIPTS.03-SORING-VIA-INSERT.02) | (assertEqual (insert 1 ())) | ((Cons 1 ())) | ((Cons 1 ())) |
| PASS | [TEST-SCRIPTS.03-SORING-VIA-INSERT.03](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/test_scripts/03-soring-via-insert.html#TEST-SCRIPTS.03-SORING-VIA-INSERT.03) | (assertEqual (insert 2 (insert 1 ()))) | ((Cons 1 (Cons 2 ()))) | ((Cons 1 (Cons 2 ()))) |
| PASS | [TEST-SCRIPTS.03-SORING-VIA-INSERT.04](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/test_scripts/03-soring-via-insert.html#TEST-SCRIPTS.03-SORING-VIA-INSERT.04) | (assertEqual (insert 1 (insert 2 ()))) | ((Cons 1 (Cons 2 ()))) | ((Cons 1 (Cons 2 ()))) |
| PASS | [TEST-SCRIPTS.03-SORING-VIA-INSERT.05](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/test_scripts/03-soring-via-insert.html#TEST-SCRIPTS.03-SORING-VIA-INSERT.05) | (assertEqual (insert 3 (insert 2 (insert 1 ())))) | ((Cons 1 (Cons 2 (Cons 3 ())))) | ((Cons 1 (Cons 2 (Cons 3 ())))) |
| PASS | [TEST-SCRIPTS.A1-SYMBOLS.01](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/test_scripts/a1_symbols.html#TEST-SCRIPTS.A1-SYMBOLS.01) | (assertEqualToResult (match &self (($X leaf2) leaf3) $X)) | (leaf1 (leaf0 leaf1)) | (leaf1 (leaf0 leaf1)) |
| PASS | [TEST-SCRIPTS.A1-SYMBOLS.02](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/test_scripts/a1_symbols.html#TEST-SCRIPTS.A1-SYMBOLS.02) | (assertEqualToResult (match &self ($Who is a $What) ($Who the $What))) | ((Sam the frog) (Sophia the robot) (Tom the cat)) | ((Sam the frog) (Sophia the robot) (Tom the cat)) |
| PASS | [TEST-SCRIPTS.A1-SYMBOLS.03](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/test_scripts/a1_symbols.html#TEST-SCRIPTS.A1-SYMBOLS.03) | (assertEqualToResult (match &self (:= (Green $Who) True) ($Who is really green))) | ((Sam is really green)) | ((Sam is really green)) |
| PASS | [TEST-SCRIPTS.A1-SYMBOLS.04](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/test_scripts/a1_symbols.html#TEST-SCRIPTS.A1-SYMBOLS.04) | (assertEqualToResult (match &self (:= ($Color $Who) True) ($Who is really $Color))) | ((Sam is really Green) (Tom is really White)) | ((Sam is really Green) (Tom is really White)) |
| PASS | [TEST-SCRIPTS.A1-SYMBOLS.05](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/test_scripts/a1_symbols.html#TEST-SCRIPTS.A1-SYMBOLS.05) | (assertEqualToResult (match &self (:= ($Color $Who) $Tv) ("It's" $Tv that $Who is $Color))) | (("It's" False that Tom is Green) ("It's" True that Sam is Green) ("It's" True that Tom is White)) | (("It's" False that Tom is Green) ("It's" True that Sam is Green) ("It's" True that Tom is White)) |
| PASS | [TEST-SCRIPTS.A1-SYMBOLS.06](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/test_scripts/a1_symbols.html#TEST-SCRIPTS.A1-SYMBOLS.06) | (assertEqualToResult (match &self (:= (Green Tom) $Tv) $Tv)) | (False) | (False) |
| PASS | [TEST-SCRIPTS.A1-SYMBOLS.07](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/test_scripts/a1_symbols.html#TEST-SCRIPTS.A1-SYMBOLS.07) | (assertEqualToResult (match &self (isa $Color color) $Color)) | (blue green red) | (blue green red) |
| PASS | [TEST-SCRIPTS.A2-OPENCOGGY.01](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/test_scripts/a2_opencoggy.html#TEST-SCRIPTS.A2-OPENCOGGY.01) | (assertEqualToResult (match &self (EvaluationLink (PredicateNode "eats") (ListLink $X (ConceptNode "flies"))) $X)) | ((ConceptNode "Fritz") (ConceptNode "Sam")) | ((ConceptNode "Fritz") (ConceptNode "Sam")) |
| PASS | [TEST-SCRIPTS.A3-TWOSIDE.01](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/test_scripts/a3_twoside.html#TEST-SCRIPTS.A3-TWOSIDE.01) | (assertEqualToResult (match &self (implies (Frog Sam) $What) $What)) | ((Eats-flies Sam) (Green Sam)) | ((Eats-flies Sam) (Green Sam)) |
| PASS | [TEST-SCRIPTS.A3-TWOSIDE.02](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/test_scripts/a3_twoside.html#TEST-SCRIPTS.A3-TWOSIDE.02) | (assertEqualToResult (match &self (implies ($P $X) (Green Sam)) ($X might be $P))) | ((Sam might be Frog)) | ((Sam might be Frog)) |
| PASS | [TEST-SCRIPTS.A3-TWOSIDE.03](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/test_scripts/a3_twoside.html#TEST-SCRIPTS.A3-TWOSIDE.03) | (assertEqualToResult (match &self (and (Frog $X) (implies (Frog $X) $Y)) $Y)) | ((Eats-flies Sam) (Green Sam)) | ((Eats-flies Sam) (Green Sam)) |
| PASS | [TEST-SCRIPTS.A3-TWOSIDE.04](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/test_scripts/a3_twoside.html#TEST-SCRIPTS.A3-TWOSIDE.04) | (assertEqualToResult (match &self (and (implies ($P $X) (Green $X)) (implies ($P $X) (Eats-flies $X))) (Then it is definitely $P))) | ((Then it is definitely Frog)) | ((Then it is definitely Frog)) |
| PASS | [TEST-SCRIPTS.B0-CHAINING-PRELIM.01](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/test_scripts/b0_chaining_prelim.html#TEST-SCRIPTS.B0-CHAINING-PRELIM.01) | (assertEqualToResult (match &self (:= (S K K x) $R) $R)) | ((K x (K x))) | ((K x (K x))) |
| PASS | [TEST-SCRIPTS.B0-CHAINING-PRELIM.02](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/test_scripts/b0_chaining_prelim.html#TEST-SCRIPTS.B0-CHAINING-PRELIM.02) | (assertEqualToResult (match &self (:= (K x (K x)) $R) $R)) | (x) | (x) |
| PASS | [TEST-SCRIPTS.B0-CHAINING-PRELIM.03](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/test_scripts/b0_chaining_prelim.html#TEST-SCRIPTS.B0-CHAINING-PRELIM.03) | (assertEqualToResult (match &self (:= (S K K x) $R) (match &self (:= $R $R2) $R2))) | (x) | (x) |
| PASS | [TEST-SCRIPTS.B0-CHAINING-PRELIM.04](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/test_scripts/b0_chaining_prelim.html#TEST-SCRIPTS.B0-CHAINING-PRELIM.04) | (assertEqualToResult (match &self (:= (Add (S Z) (S Z)) $R) $R)) | ((Add (S (S Z)) Z)) | ((Add (S (S Z)) Z)) |
| PASS | [TEST-SCRIPTS.B0-CHAINING-PRELIM.05](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/test_scripts/b0_chaining_prelim.html#TEST-SCRIPTS.B0-CHAINING-PRELIM.05) | (assertEqualToResult (match &self (:= (Add (S Z) (S Z)) $R) (match &self (:= $R $R2) $R2))) | ((S (S Z))) | ((S (S Z))) |
| PASS | [TEST-SCRIPTS.B1-EQUAL-CHAIN.01](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/test_scripts/b1_equal_chain.html#TEST-SCRIPTS.B1-EQUAL-CHAIN.01) | (assertEqual (S K K x)) | (x) | (x) |
| PASS | [TEST-SCRIPTS.B1-EQUAL-CHAIN.02](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/test_scripts/b1_equal_chain.html#TEST-SCRIPTS.B1-EQUAL-CHAIN.02) | (assertEqualToResult (expression without known equalities)) | ((expression without known equalities)) | ((expression without known equalities)) |
| PASS | [TEST-SCRIPTS.B1-EQUAL-CHAIN.03](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/test_scripts/b1_equal_chain.html#TEST-SCRIPTS.B1-EQUAL-CHAIN.03) | (assertEqual (Add (S Z) (S Z))) | ((S (S Z))) | ((S (S Z))) |
| PASS | [TEST-SCRIPTS.B1-EQUAL-CHAIN.04](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/test_scripts/b1_equal_chain.html#TEST-SCRIPTS.B1-EQUAL-CHAIN.04) | (assertEqual (Something? (Add (S Z) (S Z)))) | ((Something? (S (S Z)))) | ((Something? (S (S Z)))) |
| PASS | [TEST-SCRIPTS.B1-EQUAL-CHAIN.05](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/test_scripts/b1_equal_chain.html#TEST-SCRIPTS.B1-EQUAL-CHAIN.05) | (assertEqual (eq (S K K x) x)) | (True) | (True) |
| PASS | [TEST-SCRIPTS.B1-EQUAL-CHAIN.06](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/test_scripts/b1_equal_chain.html#TEST-SCRIPTS.B1-EQUAL-CHAIN.06) | (assertEqualToResult (eq Green Blue)) | ((eq Green Blue)) | ((eq Green Blue)) |
| FAIL | [TEST-SCRIPTS.B2-BACKCHAIN.01](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/test_scripts/b2_backchain.html#TEST-SCRIPTS.B2-BACKCHAIN.01) | (assertEqualToResult (Frog Sam)) | (True) | ((Frog Sam)) |
| PASS | [TEST-SCRIPTS.B2-BACKCHAIN.02](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/test_scripts/b2_backchain.html#TEST-SCRIPTS.B2-BACKCHAIN.02) | (assertEqual (frog Sam)) | (True) | (True) |
| PASS | [TEST-SCRIPTS.B2-BACKCHAIN.03](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/test_scripts/b2_backchain.html#TEST-SCRIPTS.B2-BACKCHAIN.03) | (assertEqualToResult (frog Fritz)) | () | () |
| PASS | [TEST-SCRIPTS.B2-BACKCHAIN.04](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/test_scripts/b2_backchain.html#TEST-SCRIPTS.B2-BACKCHAIN.04) | (assertEqual (deduce (Evaluation (mortal Plato)))) | (True) | (True) |
| PASS | [TEST-SCRIPTS.B2-BACKCHAIN.05](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/test_scripts/b2_backchain.html#TEST-SCRIPTS.B2-BACKCHAIN.05) | (assertEqual (explain (Evaluation (mortal Plato)))) | (((mortal Plato) proven by ((human Plato) proven by True))) | (((mortal Plato) proven by ((human Plato) proven by True))) |
| PASS | [TEST-SCRIPTS.B3-DIRECT.01](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/test_scripts/b3_direct.html#TEST-SCRIPTS.B3-DIRECT.01) | (assertEqual (green Fritz)) | (True) | (True) |
| PASS | [TEST-SCRIPTS.B3-DIRECT.02](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/test_scripts/b3_direct.html#TEST-SCRIPTS.B3-DIRECT.02) | (assertEqual (ift (green $X) $X)) | (Fritz) | (Fritz) |
| PASS | [TEST-SCRIPTS.B3-DIRECT.03](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/test_scripts/b3_direct.html#TEST-SCRIPTS.B3-DIRECT.03) | (assertEqualToResult (match &self (= ($P Fritz) True) $P)) | (croaks eat_flies) | (croaks eat_flies) |
| PASS | [TEST-SCRIPTS.B4-NONDETERM.01](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/test_scripts/b4_nondeterm.html#TEST-SCRIPTS.B4-NONDETERM.01) | (assertEqual (match &self (= (color) $X) $X)) | (green red yellow) | (green red yellow) |
| PASS | [TEST-SCRIPTS.B4-NONDETERM.02](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/test_scripts/b4_nondeterm.html#TEST-SCRIPTS.B4-NONDETERM.02) | (assertEqual (collapse (match &self (= (shape) $X) $X))) | (()) | (()) |
| PASS | [TEST-SCRIPTS.B4-NONDETERM.03](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/test_scripts/b4_nondeterm.html#TEST-SCRIPTS.B4-NONDETERM.03) | (assertEqual (color)) | (green red yellow) | (green red yellow) |
| PASS | [TEST-SCRIPTS.B4-NONDETERM.04](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/test_scripts/b4_nondeterm.html#TEST-SCRIPTS.B4-NONDETERM.04) | (assertEqual (color)) | (green red yellow) | (green red yellow) |
| PASS | [TEST-SCRIPTS.B4-NONDETERM.05](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/test_scripts/b4_nondeterm.html#TEST-SCRIPTS.B4-NONDETERM.05) | (assertEqual (collapse (shape))) | (((shape))) | (((shape))) |
| PASS | [TEST-SCRIPTS.B4-NONDETERM.06](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/test_scripts/b4_nondeterm.html#TEST-SCRIPTS.B4-NONDETERM.06) | (assertEqualToResult (shape)) | ((shape)) | ((shape)) |
| PASS | [TEST-SCRIPTS.B4-NONDETERM.07](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/test_scripts/b4_nondeterm.html#TEST-SCRIPTS.B4-NONDETERM.07) | (assertEqualToResult (pair (bin) (bin))) | ((A A) (A B) (B A) (B B)) | ((A A) (A B) (B A) (B B)) |
| PASS | [TEST-SCRIPTS.B4-NONDETERM.08](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/test_scripts/b4_nondeterm.html#TEST-SCRIPTS.B4-NONDETERM.08) | (assertEqual (find-equal (color) (foo))) | (red) | (red) |
| PASS | [TEST-SCRIPTS.B4-NONDETERM.09](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/test_scripts/b4_nondeterm.html#TEST-SCRIPTS.B4-NONDETERM.09) | (assertEqualToResult (rev A (superpose (B C D)))) | ((B A) (C A) (D A)) | ((B A) (C A) (D A)) |
| PASS | [TEST-SCRIPTS.B4-NONDETERM.10](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/test_scripts/b4_nondeterm.html#TEST-SCRIPTS.B4-NONDETERM.10) | (assertEqual (is (air dry))) | ((start humidifier) (start kettle) (stop ventilation)) | ((start humidifier) (start kettle) (stop ventilation)) |
| PASS | [TEST-SCRIPTS.B4-NONDETERM.11](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/test_scripts/b4_nondeterm.html#TEST-SCRIPTS.B4-NONDETERM.11) | (assertEqual (is (air wet))) | ((start ventilation) (stop humidifier) (stop kettle)) | ((start ventilation) (stop humidifier) (stop kettle)) |
| PASS | [TEST-SCRIPTS.B5-TYPES-PRELIM.01](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/test_scripts/b5_types_prelim.html#TEST-SCRIPTS.B5-TYPES-PRELIM.01) | (assertEqual (Add S Z)) | (S) | (S) |
| PASS | [TEST-SCRIPTS.B5-TYPES-PRELIM.03](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/test_scripts/b5_types_prelim.html#TEST-SCRIPTS.B5-TYPES-PRELIM.03) | (assertEqual (Add (S Z) Z)) | ((S Z)) | ((S Z)) |
| PASS | [TEST-SCRIPTS.B5-TYPES-PRELIM.04](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/test_scripts/b5_types_prelim.html#TEST-SCRIPTS.B5-TYPES-PRELIM.04) | (assertEqual (Add Z (S Z))) | ((S Z)) | ((S Z)) |
| PASS | [TEST-SCRIPTS.B5-TYPES-PRELIM.05](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/test_scripts/b5_types_prelim.html#TEST-SCRIPTS.B5-TYPES-PRELIM.05) | (assertEqual (Add Something Z)) | (Something) | (Something) |
| PASS | [TEST-SCRIPTS.B5-TYPES-PRELIM.06](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/test_scripts/b5_types_prelim.html#TEST-SCRIPTS.B5-TYPES-PRELIM.06) | (assertEqualToResult (Add Z Ten)) | ((Add Z Ten)) | ((Add Z Ten)) |
| PASS | [TEST-SCRIPTS.B5-TYPES-PRELIM.07](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/test_scripts/b5_types_prelim.html#TEST-SCRIPTS.B5-TYPES-PRELIM.07) | (assertEqualToResult (Cons (S Z) (Cons Z ()))) | ((Cons (S Z) (Cons Z ()))) | ((Cons (S Z) (Cons Z ()))) |
| PASS | [TEST-SCRIPTS.B5-TYPES-PRELIM.09](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/test_scripts/b5_types_prelim.html#TEST-SCRIPTS.B5-TYPES-PRELIM.09) | (assertEqual (eq (Add Z Z) Z)) | (True) | (True) |
| PASS | [TEST-SCRIPTS.B5-TYPES-PRELIM.10](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/test_scripts/b5_types_prelim.html#TEST-SCRIPTS.B5-TYPES-PRELIM.10) | (assertEqualToResult (eq Z (S Z))) | ((eq Z (S Z))) | ((eq Z (S Z))) |
| PASS | [TEST-SCRIPTS.B5-TYPES-PRELIM.12](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/test_scripts/b5_types_prelim.html#TEST-SCRIPTS.B5-TYPES-PRELIM.12) | (assertEqual (of-same-type Color Shape)) | (True) | (True) |
| PASS | [TEST-SCRIPTS.B5-TYPES-PRELIM.13](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/test_scripts/b5_types_prelim.html#TEST-SCRIPTS.B5-TYPES-PRELIM.13) | (assertEqual (of-same-type Green Red)) | (True) | (True) |
| PASS | [TEST-SCRIPTS.B5-TYPES-PRELIM.16](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/test_scripts/b5_types_prelim.html#TEST-SCRIPTS.B5-TYPES-PRELIM.16) | (assertEqual (Green $Who)) | (True) | (True) |
| PASS | [TEST-SCRIPTS.B5-TYPES-PRELIM.17](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/test_scripts/b5_types_prelim.html#TEST-SCRIPTS.B5-TYPES-PRELIM.17) | (assertEqual (match &self (Green $Who) $Who)) | (Sam) | (Sam) |
| PASS | [TEST-SCRIPTS.B5-TYPES-PRELIM.18](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/test_scripts/b5_types_prelim.html#TEST-SCRIPTS.B5-TYPES-PRELIM.18) | (assertEqual (match &self (Green $Who) (Green $Who))) | (True) | (True) |
| PASS | [TEST-SCRIPTS.B5-TYPES-PRELIM.19](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/test_scripts/b5_types_prelim.html#TEST-SCRIPTS.B5-TYPES-PRELIM.19) | (assertEqual (let $R (Add (S Z) Z) (match &self (= (eq $R (S Z)) $Tv) $Tv))) | (True) | (True) |
| PASS | [TEST-SCRIPTS.B5-TYPES-PRELIM.20](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/test_scripts/b5_types_prelim.html#TEST-SCRIPTS.B5-TYPES-PRELIM.20) | (assertEqualToResult (match &self (= (eq (Add (S Z) Z) (S Z)) $Tv) $Tv)) | () | () |
| PASS | [TEST-SCRIPTS.B5-TYPES-PRELIM.21](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/test_scripts/b5_types_prelim.html#TEST-SCRIPTS.B5-TYPES-PRELIM.21) | (assertEqual (let (S (S $R)) (Add (S Z) (S Z)) $R)) | (Z) | (Z) |
| PASS | [TEST-SCRIPTS.B5-TYPES-PRELIM.22](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/test_scripts/b5_types_prelim.html#TEST-SCRIPTS.B5-TYPES-PRELIM.22) | (assertEqual (let* (($R1 (Add Z Z)) ($R2 (Add $R1 (S Z))) ($R3 (Add $R2 (S Z)))) (match &self (= (eq (S (S Z)) $R3) $Tv) $Tv))) | (True) | (True) |
| PASS | [TEST-SCRIPTS.B5-TYPES-PRELIM.23](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/test_scripts/b5_types_prelim.html#TEST-SCRIPTS.B5-TYPES-PRELIM.23) | (assertEqual (eqa (Add Z Z) (Add Z Z))) | (True) | (True) |
| FAIL | [TEST-SCRIPTS.B5-TYPES-PRELIM.24](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/test_scripts/b5_types_prelim.html#TEST-SCRIPTS.B5-TYPES-PRELIM.24) | (assertEqualToResult (eqa Z (Add Z Z))) | (True) | ((eqa Z (Add Z Z))) |
| PASS | [TEST-SCRIPTS.B5-TYPES-PRELIM.25](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/test_scripts/b5_types_prelim.html#TEST-SCRIPTS.B5-TYPES-PRELIM.25) | (assertEqual (eq Z (Add Z Z))) | (True) | (True) |
| PASS | [TEST-SCRIPTS.B5-TYPES-PRELIM.26](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/test_scripts/b5_types_prelim.html#TEST-SCRIPTS.B5-TYPES-PRELIM.26) | (assertEqual (let $Z (Add Z Z) (eqa Z $Z))) | (True) | (True) |
| PASS | [TEST-SCRIPTS.C1-GROUNDED-BASIC.01](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/test_scripts/c1_grounded_basic.html#TEST-SCRIPTS.C1-GROUNDED-BASIC.01) | (assertEqualToResult (+ 2 (* 3 5.5))) | (18.5) | (18.5) |
| PASS | [TEST-SCRIPTS.C1-GROUNDED-BASIC.02](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/test_scripts/c1_grounded_basic.html#TEST-SCRIPTS.C1-GROUNDED-BASIC.02) | (assertEqualToResult (- 8 (/ 4 6.4))) | (7.375) | (7.375) |
| PASS | [TEST-SCRIPTS.C1-GROUNDED-BASIC.03](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/test_scripts/c1_grounded_basic.html#TEST-SCRIPTS.C1-GROUNDED-BASIC.03) | (assertEqualToResult (% 21 17)) | (4) | (4) |
| PASS | [TEST-SCRIPTS.C1-GROUNDED-BASIC.04](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/test_scripts/c1_grounded_basic.html#TEST-SCRIPTS.C1-GROUNDED-BASIC.04) | (assertEqualToResult (< 4 (+ 2 (* 3 5)))) | (True) | (True) |
| PASS | [TEST-SCRIPTS.C1-GROUNDED-BASIC.05](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/test_scripts/c1_grounded_basic.html#TEST-SCRIPTS.C1-GROUNDED-BASIC.05) | (assertEqualToResult (and (> 4 2) (< 4 3))) | (False) | (False) |
| PASS | [TEST-SCRIPTS.C1-GROUNDED-BASIC.06](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/test_scripts/c1_grounded_basic.html#TEST-SCRIPTS.C1-GROUNDED-BASIC.06) | (assertEqualToResult (ln (+ 2 2))) | ((ln 4)) | ((ln 4)) |
| PASS | [TEST-SCRIPTS.C1-GROUNDED-BASIC.07](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/test_scripts/c1_grounded_basic.html#TEST-SCRIPTS.C1-GROUNDED-BASIC.07) | (assertEqualToResult (> 4 (+ ln 2))) | ((> 4 (+ ln 2))) | ((> 4 (+ ln 2))) |
| PASS | [TEST-SCRIPTS.C1-GROUNDED-BASIC.08](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/test_scripts/c1_grounded_basic.html#TEST-SCRIPTS.C1-GROUNDED-BASIC.08) | (assertEqualToResult (> 4 (+ $X 2))) | ((> 4 (+ $_446942 2))) | ((> 4 (+ $_440964 2))) |
| PASS | [TEST-SCRIPTS.C1-GROUNDED-BASIC.09](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/test_scripts/c1_grounded_basic.html#TEST-SCRIPTS.C1-GROUNDED-BASIC.09) | (assertEqualToResult (== 4 (+ 2 2))) | (True) | (True) |
| PASS | [TEST-SCRIPTS.C1-GROUNDED-BASIC.10](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/test_scripts/c1_grounded_basic.html#TEST-SCRIPTS.C1-GROUNDED-BASIC.10) | (assertEqualToResult (== 2 3)) | (False) | (False) |
| PASS | [TEST-SCRIPTS.C1-GROUNDED-BASIC.11](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/test_scripts/c1_grounded_basic.html#TEST-SCRIPTS.C1-GROUNDED-BASIC.11) | (assertEqualToResult (== (A B) (A B))) | (True) | (True) |
| PASS | [TEST-SCRIPTS.C1-GROUNDED-BASIC.12](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/test_scripts/c1_grounded_basic.html#TEST-SCRIPTS.C1-GROUNDED-BASIC.12) | (assertEqualToResult (== (A B) (A (B C)))) | (False) | (False) |
| PASS | [TEST-SCRIPTS.C1-GROUNDED-BASIC.13](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/test_scripts/c1_grounded_basic.html#TEST-SCRIPTS.C1-GROUNDED-BASIC.13) | (assertEqualToResult (== 4 (+ ln 2))) | (False) | (False) |
| PASS | [TEST-SCRIPTS.C1-GROUNDED-BASIC.16](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/test_scripts/c1_grounded_basic.html#TEST-SCRIPTS.C1-GROUNDED-BASIC.16) | (assertEqualToResult (sqr 4)) | (16) | (16) |
| PASS | [TEST-SCRIPTS.C1-GROUNDED-BASIC.17](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/test_scripts/c1_grounded_basic.html#TEST-SCRIPTS.C1-GROUNDED-BASIC.17) | (assertEqual (+ (superpose (1 2 3)) 1)) | (2 3 4) | (2 3 4) |
| PASS | [TEST-SCRIPTS.C1-GROUNDED-BASIC.18](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/test_scripts/c1_grounded_basic.html#TEST-SCRIPTS.C1-GROUNDED-BASIC.18) | (assertEqualToResult (bin)) | (0 1) | (0 1) |
| PASS | [TEST-SCRIPTS.C1-GROUNDED-BASIC.19](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/test_scripts/c1_grounded_basic.html#TEST-SCRIPTS.C1-GROUNDED-BASIC.19) | (assertEqualToResult (+ 1 (bin))) | (1 2) | (1 2) |
| PASS | [TEST-SCRIPTS.C1-GROUNDED-BASIC.20](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/test_scripts/c1_grounded_basic.html#TEST-SCRIPTS.C1-GROUNDED-BASIC.20) | (assertEqualToResult (let $X (+ 2 3) (* $X $X))) | (25) | (25) |
| PASS | [TEST-SCRIPTS.C1-GROUNDED-BASIC.21](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/test_scripts/c1_grounded_basic.html#TEST-SCRIPTS.C1-GROUNDED-BASIC.21) | (assertEqual (fact 5)) | (120) | (120) |
| FAIL | [TEST-SCRIPTS.C1-GROUNDED-BASIC.22](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/test_scripts/c1_grounded_basic.html#TEST-SCRIPTS.C1-GROUNDED-BASIC.22) | (assertEqualToResult (let $True (gen 3) (if (== (subsum (:: 3 (:: 7 (:: 5 nil))) $True) 8) $True (nop)))) | ($_25504 $_25510 $_25576 $_25582 $_25588 $_25594 $_25600 (:: 1 (:: 0 (:: 1 nil)))) | ((:: 1 (:: 0 (:: 1 nil)))) |
| PASS | [TEST-SCRIPTS.C2-SPACES.01](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/test_scripts/c2_spaces.html#TEST-SCRIPTS.C2-SPACES.01) | (assertEqualToResult (match &kb (and ($Obj is $Prop) ($Prop is-a Color) ($Obj is-a Planet)) (Color of Planet $Obj is $Prop))) | ((Color of Planet Mars is Red)) | ((Color of Planet Mars is Red)) |
| PASS | [TEST-SCRIPTS.C2-SPACES.02](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/test_scripts/c2_spaces.html#TEST-SCRIPTS.C2-SPACES.02) | (assertEqualToResult (match &self ($P is-a Color) $P)) | () | () |
| PASS | [TEST-SCRIPTS.C2-SPACES.03](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/test_scripts/c2_spaces.html#TEST-SCRIPTS.C2-SPACES.03) | (assertEqual (match &kb (and (Venus orbit $X au) (Mars orbit $Y au)) (- $Y $X))) | (0.8) | (0.8) |
| PASS | [TEST-SCRIPTS.C2-SPACES.04](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/test_scripts/c2_spaces.html#TEST-SCRIPTS.C2-SPACES.04) | (assertEqualToResult (match &kb ($Prop is-a Color) (match &self ($Obj is $Prop) $Obj))) | (Ball) | (Ball) |
| PASS | [TEST-SCRIPTS.C2-SPACES.05](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/test_scripts/c2_spaces.html#TEST-SCRIPTS.C2-SPACES.05) | (assertEqualToResult (match &self (and ($Obj is $Prop) ($Prop is-a Color) ($Obj is-a Planet)) (Color of Planet $Obj is $Prop))) | ((Color of Planet Mars is Red)) | ((Color of Planet Mars is Red)) |
| PASS | [TEST-SCRIPTS.C3-PLN-STV.01](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/test_scripts/c3_pln_stv.html#TEST-SCRIPTS.C3-PLN-STV.01) | (assertEqual (TV (And (PA) (PB)))) | ((stv 0.3 0.8)) | ((stv 0.3 0.8)) |
| PASS | [TEST-SCRIPTS.C3-PLN-STV.02](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/test_scripts/c3_pln_stv.html#TEST-SCRIPTS.C3-PLN-STV.02) | (assertEqual (TV (FA))) | ((stv 0.4 0.8)) | ((stv 0.4 0.8)) |
| PASS | [TEST-SCRIPTS.C3-PLN-STV.03](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/test_scripts/c3_pln_stv.html#TEST-SCRIPTS.C3-PLN-STV.03) | (assertEqual (TV (croaks Fritz))) | ((stv 0.95 0.85)) | ((stv 0.95 0.85)) |
| PASS | [TEST-SCRIPTS.C3-PLN-STV.04](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/test_scripts/c3_pln_stv.html#TEST-SCRIPTS.C3-PLN-STV.04) | (assertEqual (TV (frog Fritz))) | ((stv 0.783 0.68)) | ((stv 0.783 0.68)) |
| PASS | [TEST-SCRIPTS.C3-PLN-STV.05](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/test_scripts/c3_pln_stv.html#TEST-SCRIPTS.C3-PLN-STV.05) | (assertEqual (TV (green Fritz))) | ((stv 0.7047 0.68)) | ((stv 0.7047 0.68)) |
| PASS | [TEST-SCRIPTS.D1-GADT.01](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/test_scripts/d1_gadt.html#TEST-SCRIPTS.D1-GADT.01) | (assertEqual (get-type 5)) | (Number) | (Number) |
| PASS | [TEST-SCRIPTS.D1-GADT.02](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/test_scripts/d1_gadt.html#TEST-SCRIPTS.D1-GADT.02) | (assertEqual (get-type (+ 5 7))) | (Number) | (Number) |
| PASS | [TEST-SCRIPTS.D1-GADT.03](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/test_scripts/d1_gadt.html#TEST-SCRIPTS.D1-GADT.03) | (assertEqual (get-type +)) | ((-> Number Number Number)) | ((-> Number Number Number)) |
| FAIL | [TEST-SCRIPTS.D1-GADT.04](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/test_scripts/d1_gadt.html#TEST-SCRIPTS.D1-GADT.04) | (assertEqualToResult (get-type (+ 5 "4"))) | (Number) | () |
| FAIL | [TEST-SCRIPTS.D1-GADT.05](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/test_scripts/d1_gadt.html#TEST-SCRIPTS.D1-GADT.05) | (assertEqualToResult (get-type (+ -))) | (Number) | () |
| PASS | [TEST-SCRIPTS.D1-GADT.06](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/test_scripts/d1_gadt.html#TEST-SCRIPTS.D1-GADT.06) | (assertEqual (get-type Either)) | (Type) | (Type) |
| PASS | [TEST-SCRIPTS.D1-GADT.07](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/test_scripts/d1_gadt.html#TEST-SCRIPTS.D1-GADT.07) | (assertEqual (get-type (Left 5))) | (Either) | (Either) |
| PASS | [TEST-SCRIPTS.D1-GADT.08](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/test_scripts/d1_gadt.html#TEST-SCRIPTS.D1-GADT.08) | (assertEqual (get-type (isLeft (Right 5)))) | (Bool) | (Bool) |
| FAIL | [TEST-SCRIPTS.D1-GADT.09](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/test_scripts/d1_gadt.html#TEST-SCRIPTS.D1-GADT.09) | (assertEqualToResult (get-type (isLeft 5))) | (Bool) | () |
| FAIL | [TEST-SCRIPTS.D1-GADT.10](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/test_scripts/d1_gadt.html#TEST-SCRIPTS.D1-GADT.10) | (assertEqual (get-type (LeftP 5))) | () | ((EitherP Number)) |
| FAIL | [TEST-SCRIPTS.D1-GADT.11](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/test_scripts/d1_gadt.html#TEST-SCRIPTS.D1-GADT.11) | (assertEqual (get-type (pair (LeftP 5) "String"))) | () | ((Pair (EitherP Number) String)) |
| FAIL | [TEST-SCRIPTS.D1-GADT.12](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/test_scripts/d1_gadt.html#TEST-SCRIPTS.D1-GADT.12) | (assertEqual (get-type (Cons 5 (Cons 6 ())))) | () | ((List Number)) |
| PASS | [TEST-SCRIPTS.D1-GADT.13](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/test_scripts/d1_gadt.html#TEST-SCRIPTS.D1-GADT.13) | (assertEqualToResult (get-type (Cons 5 (Cons "6" ())))) | () | () |
| FAIL | [TEST-SCRIPTS.D1-GADT.14](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/test_scripts/d1_gadt.html#TEST-SCRIPTS.D1-GADT.14) | (assertEqual (let (List $True) (get-type (Cons 5 (Cons 6 ()))) $True)) | () | (Number) |
| FAIL | [TEST-SCRIPTS.D2-HIGHERFUNC.01](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/test_scripts/d2_higherfunc.html#TEST-SCRIPTS.D2-HIGHERFUNC.01) | (assertEqual (get-type (curry +))) | () | ((-> Number (-> Number Number))) |
| FAIL | [TEST-SCRIPTS.D2-HIGHERFUNC.02](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/test_scripts/d2_higherfunc.html#TEST-SCRIPTS.D2-HIGHERFUNC.02) | (assertEqual (get-type ((curry +) 2))) | () | ((-> Number Number)) |
| PASS | [TEST-SCRIPTS.D2-HIGHERFUNC.03](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/test_scripts/d2_higherfunc.html#TEST-SCRIPTS.D2-HIGHERFUNC.03) | (assertEqualToResult ((curry +) 2)) | (((curry +) 2)) | (((curry +) 2)) |
| PASS | [TEST-SCRIPTS.D2-HIGHERFUNC.04](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/test_scripts/d2_higherfunc.html#TEST-SCRIPTS.D2-HIGHERFUNC.04) | (assertEqual (((curry +) 2) 3)) | (5) | (5) |
| FAIL | [TEST-SCRIPTS.D2-HIGHERFUNC.05](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/test_scripts/d2_higherfunc.html#TEST-SCRIPTS.D2-HIGHERFUNC.05) | (assertEqual (get-type (curry-a + 2))) | () | ((-> Number Number)) |
| PASS | [TEST-SCRIPTS.D2-HIGHERFUNC.06](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/test_scripts/d2_higherfunc.html#TEST-SCRIPTS.D2-HIGHERFUNC.06) | (assertEqual (get-type ((curry-a + 2) 3))) | (Number) | (Number) |
| FAIL | [TEST-SCRIPTS.D2-HIGHERFUNC.07](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/test_scripts/d2_higherfunc.html#TEST-SCRIPTS.D2-HIGHERFUNC.07) | (assertEqualToResult (get-type ((curry-a + 2) "S"))) | (Number) | () |
| PASS | [TEST-SCRIPTS.D2-HIGHERFUNC.08](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/test_scripts/d2_higherfunc.html#TEST-SCRIPTS.D2-HIGHERFUNC.08) | (assertEqual ((curry-a + 2) 3)) | (5) | (5) |
| PASS | [TEST-SCRIPTS.D2-HIGHERFUNC.09](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/test_scripts/d2_higherfunc.html#TEST-SCRIPTS.D2-HIGHERFUNC.09) | (assertEqualToResult (is-socrates)) | ((curry-a is Socrates)) | ((curry-a is Socrates)) |
| PASS | [TEST-SCRIPTS.D2-HIGHERFUNC.10](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/test_scripts/d2_higherfunc.html#TEST-SCRIPTS.D2-HIGHERFUNC.10) | (assertEqual ((curry-a is Socrates) Human)) | (True) | (True) |
| PASS | [TEST-SCRIPTS.D2-HIGHERFUNC.11](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/test_scripts/d2_higherfunc.html#TEST-SCRIPTS.D2-HIGHERFUNC.11) | (assertEqual ((is-socrates) Human)) | (True) | (True) |
| PASS | [TEST-SCRIPTS.D2-HIGHERFUNC.12](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/test_scripts/d2_higherfunc.html#TEST-SCRIPTS.D2-HIGHERFUNC.12) | (assertEqual ((lambda $X (+ $X 1)) 2)) | (3) | (3) |
| PASS | [TEST-SCRIPTS.D2-HIGHERFUNC.13](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/test_scripts/d2_higherfunc.html#TEST-SCRIPTS.D2-HIGHERFUNC.13) | (assertEqual ((lambda ($X $Y) (+ $X $Y)) (2 7))) | (9) | (9) |
| PASS | [TEST-SCRIPTS.D2-HIGHERFUNC.14](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/test_scripts/d2_higherfunc.html#TEST-SCRIPTS.D2-HIGHERFUNC.14) | (assertEqual ((inc) 5)) | (6) | (6) |
| PASS | [TEST-SCRIPTS.D2-HIGHERFUNC.15](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/test_scripts/d2_higherfunc.html#TEST-SCRIPTS.D2-HIGHERFUNC.15) | (assertEqual (fmap (curry-a + 2) (Something 5))) | ((Something 7)) | ((Something 7)) |
| PASS | [TEST-SCRIPTS.D2-HIGHERFUNC.16](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/test_scripts/d2_higherfunc.html#TEST-SCRIPTS.D2-HIGHERFUNC.16) | (assertEqual (fmap (curry-a + 2) (Nothing))) | ((Nothing)) | ((Nothing)) |
| FAIL | [TEST-SCRIPTS.D2-HIGHERFUNC.17](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/test_scripts/d2_higherfunc.html#TEST-SCRIPTS.D2-HIGHERFUNC.17) | (assertEqual (get-type (fmap (curry-a + 1) (Left 5)))) | () | ((Either Number)) |
| PASS | [TEST-SCRIPTS.D2-HIGHERFUNC.18](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/test_scripts/d2_higherfunc.html#TEST-SCRIPTS.D2-HIGHERFUNC.18) | (assertEqual (fmap (curry-a + 2) (UntypedC 5))) | ((UntypedC 7)) | ((UntypedC 7)) |
| PASS | [TEST-SCRIPTS.D2-HIGHERFUNC.19](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/test_scripts/d2_higherfunc.html#TEST-SCRIPTS.D2-HIGHERFUNC.19) | (assertEqual (fmap (curry-a + 2) (UntypedC 5 (UntypedC 8 (Null))))) | ((UntypedC 7 (UntypedC 10 (Null)))) | ((UntypedC 7 (UntypedC 10 (Null)))) |
| PASS | [TEST-SCRIPTS.D2-HIGHERFUNC.20](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/test_scripts/d2_higherfunc.html#TEST-SCRIPTS.D2-HIGHERFUNC.20) | (assertEqualToResult (get-type (fmap (curry-a + 2) (Left "5")))) | () | () |
| FAIL | [TEST-SCRIPTS.D2-HIGHERFUNC.21](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/test_scripts/d2_higherfunc.html#TEST-SCRIPTS.D2-HIGHERFUNC.21) | (assertEqualToResult (get-type (fmap (curry-a + 2) (UntypedC "5")))) | ((Symbol Number)) | () |
| PASS | [TEST-SCRIPTS.D2-HIGHERFUNC.22](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/test_scripts/d2_higherfunc.html#TEST-SCRIPTS.D2-HIGHERFUNC.22) | (assertEqualToResult (get-type (fmap (curry-a + 2) (UntypedC (Null) 5)))) | () | () |
| PASS | [TEST-SCRIPTS.D2-HIGHERFUNC.23](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/test_scripts/d2_higherfunc.html#TEST-SCRIPTS.D2-HIGHERFUNC.23) | (assertEqual (fmap-i (curry-a - 7) (Right 3))) | ((Right 4)) | ((Right 4)) |
| PASS | [TEST-SCRIPTS.D2-HIGHERFUNC.24](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/test_scripts/d2_higherfunc.html#TEST-SCRIPTS.D2-HIGHERFUNC.24) | (assertEqual (fmap-i (curry-a * 2) (Cons 3 (Cons 4 ())))) | ((Cons 6 (Cons 8 ()))) | ((Cons 6 (Cons 8 ()))) |
| PASS | [TEST-SCRIPTS.D2-HIGHERFUNC.25](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/test_scripts/d2_higherfunc.html#TEST-SCRIPTS.D2-HIGHERFUNC.25) | (assertEqualToResult (fmap-i (curry-a + 2) (Untyped 5))) | ((fmap-i (curry-a + 2) (Untyped 5))) | ((fmap-i (curry-a + 2) (Untyped 5))) |
| PASS | [TEST-SCRIPTS.D2-HIGHERFUNC.26](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/test_scripts/d2_higherfunc.html#TEST-SCRIPTS.D2-HIGHERFUNC.26) | (assertEqual (insert 3 (insert 2 (insert 1 ())))) | ((Cons 1 (Cons 2 (Cons 3 ())))) | ((Cons 1 (Cons 2 (Cons 3 ())))) |
| PASS | [TEST-SCRIPTS.D2-HIGHERFUNC.27](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/test_scripts/d2_higherfunc.html#TEST-SCRIPTS.D2-HIGHERFUNC.27) | (assertEqual (sort (Cons 3 (Cons 1 (Cons 2 ()))))) | ((Cons 1 (Cons 2 (Cons 3 ())))) | ((Cons 1 (Cons 2 (Cons 3 ())))) |
| FAIL | [TEST-SCRIPTS.D3-DEPTYPES.01](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/test_scripts/d3_deptypes.html#TEST-SCRIPTS.D3-DEPTYPES.01) | (assertEqual (get-type (Cons 0 (Cons 1 ())))) | () | ((Vec Number (S (S Z)))) |
| FAIL | [TEST-SCRIPTS.D3-DEPTYPES.02](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/test_scripts/d3_deptypes.html#TEST-SCRIPTS.D3-DEPTYPES.02) | (assertEqual (get-type (drop (Cons 1 ())))) | (Z) | ((Vec Number Z)) |
| PASS | [TEST-SCRIPTS.D3-DEPTYPES.03](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/test_scripts/d3_deptypes.html#TEST-SCRIPTS.D3-DEPTYPES.03) | (assertEqual (drop (Cons 2 (Cons 1 ())))) | ((Cons 1 ())) | ((Cons 1 ())) |
| PASS | [TEST-SCRIPTS.D3-DEPTYPES.04](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/test_scripts/d3_deptypes.html#TEST-SCRIPTS.D3-DEPTYPES.04) | (assertEqualToResult (get-type (drop ()))) | () | () |
| FAIL | [TEST-SCRIPTS.D3-DEPTYPES.05](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/test_scripts/d3_deptypes.html#TEST-SCRIPTS.D3-DEPTYPES.05) | (assertEqual (get-type (ConsN "1" (ConsN "2" NilN)))) | () | ((VecN String 2)) |
| FAIL | [TEST-SCRIPTS.D3-DEPTYPES.06](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/test_scripts/d3_deptypes.html#TEST-SCRIPTS.D3-DEPTYPES.06) | (assertEqual (get-type (dropN (ConsN "1" NilN)))) | () | ((VecN String 0)) |
| PASS | [TEST-SCRIPTS.D3-DEPTYPES.07](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/test_scripts/d3_deptypes.html#TEST-SCRIPTS.D3-DEPTYPES.07) | (assertEqualToResult (dropN NilN)) | ((dropN NilN)) | ((dropN NilN)) |
| PASS | [TEST-SCRIPTS.D4-TYPE-PROP.01](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/test_scripts/d4_type_prop.html#TEST-SCRIPTS.D4-TYPE-PROP.01) | (assertEqual (get-type (Mortal Plato))) | (Type) | (Type) |
| FAIL | [TEST-SCRIPTS.D4-TYPE-PROP.02](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/test_scripts/d4_type_prop.html#TEST-SCRIPTS.D4-TYPE-PROP.02) | (assertEqual (get-type (HumansAreMortal SocratesIsHuman))) | () | ((Mortal Socrates)) |
| PASS | [TEST-SCRIPTS.D4-TYPE-PROP.03](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/test_scripts/d4_type_prop.html#TEST-SCRIPTS.D4-TYPE-PROP.03) | (assertEqualToResult (get-type (HumansAreMortal (Human Socrates)))) | () | () |
| PASS | [TEST-SCRIPTS.D4-TYPE-PROP.04](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/test_scripts/d4_type_prop.html#TEST-SCRIPTS.D4-TYPE-PROP.04) | (assertEqual (get-type (= SocratesIsMortal (HumansAreMortal SocratesIsHuman)))) | (Type) | (Type) |
| PASS | [TEST-SCRIPTS.D4-TYPE-PROP.05](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/test_scripts/d4_type_prop.html#TEST-SCRIPTS.D4-TYPE-PROP.05) | (assertEqual (get-type (= (Mortal Socrates) (Mortal Plato)))) | (Type) | (Type) |
| FAIL | [TEST-SCRIPTS.D4-TYPE-PROP.06](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/test_scripts/d4_type_prop.html#TEST-SCRIPTS.D4-TYPE-PROP.06) | (assertEqualToResult (get-type (= SocratesIsMortal (HumansAreMortal PlatoIsHuman)))) | (Type) | () |
| FAIL | [TEST-SCRIPTS.D4-TYPE-PROP.07](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/test_scripts/d4_type_prop.html#TEST-SCRIPTS.D4-TYPE-PROP.07) | (assertEqualToResult (get-type (= SocratesIsHuman PlatoIsHuman))) | (Type) | () |
| FAIL | [TEST-SCRIPTS.D4-TYPE-PROP.08](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/test_scripts/d4_type_prop.html#TEST-SCRIPTS.D4-TYPE-PROP.08) | (assertEqualToResult (get-type (= SocratesIsHuman SocratesIsMortal))) | (Type) | () |
| PASS | [TEST-SCRIPTS.D4-TYPE-PROP.09](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/test_scripts/d4_type_prop.html#TEST-SCRIPTS.D4-TYPE-PROP.09) | (assertEqual (= SocratesIsMortal (HumansAreMortal SocratesIsHuman))) | (True) | (True) |
| PASS | [TEST-SCRIPTS.D4-TYPE-PROP.10](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/test_scripts/d4_type_prop.html#TEST-SCRIPTS.D4-TYPE-PROP.10) | (assertEqual (= (+ 1 1) (- 3 1))) | (True) | (True) |
| PASS | [TEST-SCRIPTS.D4-TYPE-PROP.11](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/test_scripts/d4_type_prop.html#TEST-SCRIPTS.D4-TYPE-PROP.11) | (assertEqual (= (Mortal Socrates) True)) | (True) | (True) |
| PASS | [TEST-SCRIPTS.D4-TYPE-PROP.12](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/test_scripts/d4_type_prop.html#TEST-SCRIPTS.D4-TYPE-PROP.12) | (assertEqualToResult (= (Mortal Plato) True)) | () | () |
| PASS | [TEST-SCRIPTS.D4-TYPE-PROP.13](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/test_scripts/d4_type_prop.html#TEST-SCRIPTS.D4-TYPE-PROP.13) | (assertEqual (= (Mortal Plato) True)) | (True) | (True) |
| PASS | [TEST-SCRIPTS.D4-TYPE-PROP.14](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/test_scripts/d4_type_prop.html#TEST-SCRIPTS.D4-TYPE-PROP.14) | (assertEqualToResult (= (Human Sam) True)) | () | () |
| PASS | [TEST-SCRIPTS.D4-TYPE-PROP.15](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/test_scripts/d4_type_prop.html#TEST-SCRIPTS.D4-TYPE-PROP.15) | (assertEqualToResult (Mortal Plato)) | ((Mortal Plato)) | ((Mortal Plato)) |
| FAIL | [TEST-SCRIPTS.D4-TYPE-PROP.16](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/test_scripts/d4_type_prop.html#TEST-SCRIPTS.D4-TYPE-PROP.16) | (assertEqual (= (= $X $X) True)) | () | (True) |
| PASS | [TEST-SCRIPTS.D4-TYPE-PROP.17](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/test_scripts/d4_type_prop.html#TEST-SCRIPTS.D4-TYPE-PROP.17) | (assertEqual (Mortal Plato)) | (True) | (True) |
| PASS | [TEST-SCRIPTS.D4-TYPE-PROP.18](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/test_scripts/d4_type_prop.html#TEST-SCRIPTS.D4-TYPE-PROP.18) | (assertEqualToResult (ift (Mortal $X) $X)) | (Plato Socrates) | (Plato Socrates) |
| PASS | [TEST-SCRIPTS.E1-KB-WRITE.01](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/test_scripts/e1_kb_write.html#TEST-SCRIPTS.E1-KB-WRITE.01) | (assertEqualToResult (let $X (+ 2 3) (* $X $X))) | (25) | (25) |
| FAIL | [TEST-SCRIPTS.E1-KB-WRITE.02](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/test_scripts/e1_kb_write.html#TEST-SCRIPTS.E1-KB-WRITE.02) | (assertEqualToResult (ift (green $X) (add-atom &kb (Green $X)))) | (True) | (()) |
| FAIL | [TEST-SCRIPTS.E1-KB-WRITE.03](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/test_scripts/e1_kb_write.html#TEST-SCRIPTS.E1-KB-WRITE.03) | (assertEqualToResult (match &kb (Green $X) $X)) | (Fritz) | (Fritz Sam) |
| PASS | [TEST-SCRIPTS.E2-STATES.01](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/test_scripts/e2_states.html#TEST-SCRIPTS.E2-STATES.01) | (assertEqual (get-state (get-token))) | ((A B)) | ((A B)) |
| PASS | [TEST-SCRIPTS.E2-STATES.02](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/test_scripts/e2_states.html#TEST-SCRIPTS.E2-STATES.02) | (assertEqual (get-token)) | ((State  (A B) $_506404)) | ((State  (A B) $_506848)) |
| PASS | [TEST-SCRIPTS.E2-STATES.03](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/test_scripts/e2_states.html#TEST-SCRIPTS.E2-STATES.03) | (assertEqual (get-type (new-state 2))) | ((StateMonad Number)) | ((StateMonad Number)) |
| PASS | [TEST-SCRIPTS.E2-STATES.04](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/test_scripts/e2_states.html#TEST-SCRIPTS.E2-STATES.04) | (assertEqual (get-type (change-state! (new-state "S") "V"))) | ((StateMonad String)) | ((StateMonad String)) |
| PASS | [TEST-SCRIPTS.E2-STATES.05](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/test_scripts/e2_states.html#TEST-SCRIPTS.E2-STATES.05) | (assertEqual (let $V (new-state 1) (get-type $V))) | ((StateMonad Number)) | ((StateMonad Number)) |
| FAIL | [TEST-SCRIPTS.E2-STATES.06](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/test_scripts/e2_states.html#TEST-SCRIPTS.E2-STATES.06) | (assertEqual (get-type &state-token)) | ((StateMonad (Symbol Symbol))) | ((StateMonad Expression)) |
| PASS | [TEST-SCRIPTS.E2-STATES.09](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/test_scripts/e2_states.html#TEST-SCRIPTS.E2-STATES.09) | (assertEqual (get-state (get-token))) | ((C D)) | ((C D)) |
| PASS | [TEST-SCRIPTS.E2-STATES.10](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/test_scripts/e2_states.html#TEST-SCRIPTS.E2-STATES.10) | (assertEqual (let $X (new-state 1) (change-state! $X (+ (get-state $X) 1)))) | ((State  2 $_370136)) | ((State  2 $_370322)) |
| PASS | [TEST-SCRIPTS.E2-STATES.11](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/test_scripts/e2_states.html#TEST-SCRIPTS.E2-STATES.11) | (assertEqual (let $Tnso (new-state 1) $Tnso)) | ((State  1 $_399094)) | ((State  1 $_399280)) |
| PASS | [TEST-SCRIPTS.E3-MATCH-STATES.01](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/test_scripts/e3_match_states.html#TEST-SCRIPTS.E3-MATCH-STATES.01) | (assertEqual (get-state (status (Goal lunch-order)))) | (inactive) | (inactive) |
| FAIL | [TEST-SCRIPTS.E3-MATCH-STATES.02](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/test_scripts/e3_match_states.html#TEST-SCRIPTS.E3-MATCH-STATES.02) | (assertEqual (get-state (status (Goal lunch-order)))) | (inactive) | (active) |
| PASS | [TEST-SCRIPTS.E3-MATCH-STATES.03](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/test_scripts/e3_match_states.html#TEST-SCRIPTS.E3-MATCH-STATES.03) | (assertEqual (get-type &state-active)) | ((StateMonad Symbol)) | ((StateMonad Symbol)) |
| PASS | [TEST-SCRIPTS.E3-MATCH-STATES.04](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/test_scripts/e3_match_states.html#TEST-SCRIPTS.E3-MATCH-STATES.04) | (assertEqual (get-state &state-active)) | (inactive) | (inactive) |
| PASS | [TEST-SCRIPTS.E3-MATCH-STATES.05](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/test_scripts/e3_match_states.html#TEST-SCRIPTS.E3-MATCH-STATES.05) | (assertEqual &state-active) | ((State  inactive $_164846)) | ((State  inactive $_165032)) |
| FAIL | [TEST-SCRIPTS.E3-MATCH-STATES.06](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/test_scripts/e3_match_states.html#TEST-SCRIPTS.E3-MATCH-STATES.06) | (assertEqual (match &self (= (status (Goal $Goal)) &state-active) $Goal)) | () | (meditation) |
| FAIL | [TEST-SCRIPTS.E3-MATCH-STATES.07](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/test_scripts/e3_match_states.html#TEST-SCRIPTS.E3-MATCH-STATES.07) | (assertEqual (if (== (get-state (status (Goal $Goal))) active) $Goal (superpose ()))) | () | (lunch-order) |
| PASS | [TEST-SCRIPTS-EXTRAS.D2-AUTO-TYPES.102](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/test_scripts_extras/d2_auto_types.html#TEST-SCRIPTS-EXTRAS.D2-AUTO-TYPES.102) | (exec (HumansAreMortal SocratesIsHuman)) | ((HumansAreMortal SocratesIsHuman)) | ((HumansAreMortal SocratesIsHuman)) |
| FAIL | [TEST-SCRIPTS-EXTRAS.D2-AUTO-TYPES.103](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/test_scripts_extras/d2_auto_types.html#TEST-SCRIPTS-EXTRAS.D2-AUTO-TYPES.103) | (exec (HumansAreMortal (Human Socrates))) | ((Error (HumansAreMortal (Human Socrates)) BadType)) | ((HumansAreMortal (Human Socrates))) |
| PASS | [TEST-SCRIPTS-EXTRAS.D3-TYPED-PLN.102](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/test_scripts_extras/d3_typed_pln.html#TEST-SCRIPTS-EXTRAS.D3-TYPED-PLN.102) | (exec (HumansAreMortal (Human Socrates))) | ((HumansAreMortal True)) | ((HumansAreMortal True)) |
| PASS | [TEST-SCRIPTS-EXTRAS.D3-TYPED-PLN.103](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/test_scripts_extras/d3_typed_pln.html#TEST-SCRIPTS-EXTRAS.D3-TYPED-PLN.103) | (exec (= (Human Socrates) (Human Plato))) | (True) | (True True True True) |
| FAIL | [TEST-SCRIPTS.F1-IMPORTS.01](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/test_scripts/f1_imports.html#TEST-SCRIPTS.F1-IMPORTS.01) | (assertEqual ((let $X (get-atoms &self) (get-type $X)))) | (((let $_387844 (get-atoms &self) (get-type $_387844)))) | ((Symbol)) |
| PASS | [TEST-SCRIPTS.F1-IMPORTS.02](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/test_scripts/f1_imports.html#TEST-SCRIPTS.F1-IMPORTS.02) | (assertEqual (if (> 1 2) 1 2)) | (2) | (2) |
| PASS | [TEST-SCRIPTS.F1-IMPORTS.03](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/test_scripts/f1_imports.html#TEST-SCRIPTS.F1-IMPORTS.03) | (assertEqual (+ 1 2)) | (3) | (3) |
| FAIL | [TEST-SCRIPTS.F1-IMPORTS.04](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/test_scripts/f1_imports.html#TEST-SCRIPTS.F1-IMPORTS.04) | (assertEqual (let* (($X (collapse (get-atoms &m))) ($Y (car-atom $X))) (get-type $Y))) | () | (Symbol) |
| PASS | [TEST-SCRIPTS.F1-IMPORTS.05](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/test_scripts/f1_imports.html#TEST-SCRIPTS.F1-IMPORTS.05) | (assertEqual (match &m (= (f 2) $X) $X)) | ((g 3)) | ((g 3)) |
| PASS | [TEST-SCRIPTS.F1-IMPORTS.06](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/test_scripts/f1_imports.html#TEST-SCRIPTS.F1-IMPORTS.06) | (assertEqual (+ 1 2)) | (3) | (3) |
| PASS | [TEST-SCRIPTS.F1-IMPORTS.07](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/test_scripts/f1_imports.html#TEST-SCRIPTS.F1-IMPORTS.07) | (assertEqual (g 2)) | (102) | (102) |
| PASS | [TEST-SCRIPTS.F1-IMPORTS.08](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/test_scripts/f1_imports.html#TEST-SCRIPTS.F1-IMPORTS.08) | (assertEqual (f 2)) | (103) | (103) |
| FAIL | [TEST-SCRIPTS.F1-IMPORTS.09](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/test_scripts/f1_imports.html#TEST-SCRIPTS.F1-IMPORTS.09) | (assertEqual &m) | (&m) | () |
| PASS | [TEST-SCRIPTS.F1-IMPORTS.10](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/test_scripts/f1_imports.html#TEST-SCRIPTS.F1-IMPORTS.10) | (assertEqual (== (let* (($X (collapse (get-atoms &m))) ($Y (car-atom $X))) (get-type $Y)) (get-type &self))) | (False) | (False) |
| PASS | [TEST-SCRIPTS.F1-IMPORTS.11](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/test_scripts/f1_imports.html#TEST-SCRIPTS.F1-IMPORTS.11) | (assertEqual (if (> 1 2) 1 2)) | (2) | (2) |
| PASS | [TEST-SCRIPTS.F1-IMPORTS.12](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/test_scripts/f1_imports.html#TEST-SCRIPTS.F1-IMPORTS.12) | (assertEqual (g 2)) | (102) | (102) |
| PASS | [TEST-SCRIPTS.F1-IMPORTS.13](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/test_scripts/f1_imports.html#TEST-SCRIPTS.F1-IMPORTS.13) | (assertEqual (f 2)) | (103) | (103) |
| PASS | [TEST-SCRIPTS.F1-IMPORTS.14](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/test_scripts/f1_imports.html#TEST-SCRIPTS.F1-IMPORTS.14) | (assertEqualToResult (dup 2)) | (12 102) | (12 102) |
| PASS | [TEST-SCRIPTS.F1-IMPORTS.15](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/test_scripts/f1_imports.html#TEST-SCRIPTS.F1-IMPORTS.15) | (assertEqual (g 2)) | (102) | (102) |
| PASS | [TEST-SCRIPTS.F1-IMPORTS.16](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/test_scripts/f1_imports.html#TEST-SCRIPTS.F1-IMPORTS.16) | (assertEqual (f 2)) | (103) | (103) |
| PASS | [TEST-SCRIPTS.F1-IMPORTS.17](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/test_scripts/f1_imports.html#TEST-SCRIPTS.F1-IMPORTS.17) | (assertEqualToResult (dup 2)) | (12 102) | (12 102) |
| PASS | [TEST-SCRIPTS.F1-MODULEA.01](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/test_scripts/f1_moduleA.html#TEST-SCRIPTS.F1-MODULEA.01) | (assertEqual (+ 1 2)) | (3) | (3) |
| FAIL | [TRUTHVALUE.EVIDENTIALTRUTHVALUETEST.104](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/common/truthvalue/EvidentialTruthValueTest.html#TRUTHVALUE.EVIDENTIALTRUTHVALUETEST.104) | (exec (mode (ETV (Singleton 42) (STV 0.1 0.2)))) | (0.2) | (0.1) |
| FAIL | [TRUTHVALUE.EVIDENTIALTRUTHVALUETEST.105](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/common/truthvalue/EvidentialTruthValueTest.html#TRUTHVALUE.EVIDENTIALTRUTHVALUETEST.105) | (exec (mean (ETV (Singleton 42) (STV 0.1 0.9)))) | (9.000000000000002) | (0.14 0.14 0.14 0.14 0.14 0.14 0.14 0.14) |
| FAIL | [TRUTHVALUE.TRUTHVALUETEST.103](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/common/truthvalue/TruthValueTest.html#TRUTHVALUE.TRUTHVALUETEST.103) | (exec (count->confidence 10)) | (9.000000000000002) | (0.9090909090909091 0.9090909090909091 0.9090909090909091) |
| FAIL | [TRUTHVALUE.TRUTHVALUETEST.104](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/common/truthvalue/TruthValueTest.html#TRUTHVALUE.TRUTHVALUETEST.104) | (exec (confidence->count 0.9)) | (0.1) | (9.000000000000002 9.000000000000002 9.000000000000002 9.000000000000002 9.000000000000002 9.000000000000002 9.000000000000002 9.000000000000002 9.000000000000002 9.000000000000002 9.000000000000002 |
| FAIL | [TRUTHVALUE.TRUTHVALUETEST.105](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/common/truthvalue/TruthValueTest.html#TRUTHVALUE.TRUTHVALUETEST.105) | (exec (mode (STV 0.1 0.2))) | (0.14) | (0.1) |
| FAIL | [TRUTHVALUE.TRUTHVALUETEST.106](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/common/truthvalue/TruthValueTest.html#TRUTHVALUE.TRUTHVALUETEST.106) | (exec (mean (STV 0.1 0.9))) | (0.2) | (0.14 0.14 0.14 0.14 0.14 0.14 0.14 0.14) |
| FAIL | [TRUTHVALUE.TRUTHVALUETEST.107](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/common/truthvalue/TruthValueTest.html#TRUTHVALUE.TRUTHVALUETEST.107) | (exec (confidence (STV 0.1 0.2))) | (9.000000000000002) | (0.2) |




Test Results:
330 Passed,
119 Failed,
449 Total,
73.50% Passed
 
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
./MeTTa --html examples/compat/test_scripts/00_lang_case.metta
```

Upon execution, the output will be saved as `examples/compat/test_scripts/00_lang_case.html`.

**Note:** Remember, the `MeTTa` script's name is case-sensitive. Do not confuse it with `metta`, which might refer to a different tool written in Rust.


**To run a metta file normally:**

```bash
./MeTTa examples/compat/test_scripts/b0_chaining_prelim.metta
```

**To run the REPL (such as to debug) once the file is loaded:**

```bash
./MeTTa examples/compat/test_scripts/b0_chaining_prelim.metta --repl
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
./total_loonits.sh examples/compat/test_scripts/
```

**To run a single test:**

```bash
./MeTTa --html examples/compat/test_scripts/b0_chaining_prelim.metta
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


