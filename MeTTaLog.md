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
|     3|     4|    42%| reports/compat/scripts_extras -             |
|   181|    35|    83%| reports/compat/scripts -                    |
|    10|    18|    35%| reports/compat/synthesis/experiments -           |
|    11|    20|    35%| reports/compat/synthesis -                       |
|     2|     1|    66%| reports/compat/sumo/orientation -                |
|     0|     0|     0%| reports/compat/sumo/located -                    |
|     0|     4|     0%| reports/compat/sumo/john-carry-flower -          |
|     2|     5|    28%| reports/compat/sumo -                            |
|     1|     5|    16%| reports/compat/recursion-schemes/src/reports -   |
|     1|     5|    16%| reports/compat/recursion-schemes/src -           |
|     1|     5|    16%| reports/compat/recursion-schemes -               |
|    13|    14|    48%| reports/compat/prob-dep-types -                  |
|     0|     3|     0%| reports/compat/miner -                           |
|     0|     6|     0%| reports/compat/minecraft -                       |
|     0|     2|     0%| reports/compat/match -                           |
|     1|     0|   100%| reports/compat/interp -                          |
|     0|     0|     0%| reports/compat/equal -                           |
|     1|     1|    50%| reports/compat/entail -                          |
|     0|     4|     0%| reports/compat/dependent-types -                 |
|    12|     6|    66%| reports/compat/compiler -                        |
|    10|     0|   100%| reports/compat/common/truthvalue -               |
|    13|     0|   100%| reports/compat/common/formula -                  |
|    52|     1|    98%| reports/compat/common -                          |
|   277|   106|    72%| reports/compat -                                 |
|   314|   124|    71%| reports -                                        |

<details><summary>Expand for Core Summaries</summary>

|Pass |Fail |File                               |GitHub Link                                                                                                                       |
|-----|-----|-----------------------------------|----------------------------------------------------------------------------------------------------------------------------------|
|  4  |  12 | prob_dep_types.metta              |[reports/compat/prob-dep-types/prob_dep_types.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/prob-dep-types/prob_dep_types.html)|
|  0  |  12 | self-contained-synthesize.metta   |[reports/compat/synthesis/experiments/self-contained-synthesize.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/synthesis/experiments/self-contained-synthesize.html)|
|  1  |  11 | test_infer_function_application_type.metta|[reports/test_infer_function_application_type.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/test_infer_function_application_type.html)|
|  7  |  7  | d1_gadt.metta                     |[reports/compat/scripts/d1_gadt.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/scripts/d1_gadt.html)|
|  21 |  6  | d2_higherfunc.metta               |[reports/compat/scripts/d2_higherfunc.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/scripts/d2_higherfunc.html)|
|  10 |  6  | state_types.metta                 |[reports/state_types.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/state_types.html)|
|  13 |  5  | d4_type_prop.metta                |[reports/compat/scripts/d4_type_prop.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/scripts/d4_type_prop.html)|
|  1  |  5  | expression.metta                  |[reports/compat/recursion-schemes/src/reports/expression.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/recursion-schemes/src/reports/expression.html)|
|  1  |  5  | unify-via-case.metta              |[reports/compat/synthesis/experiments/unify-via-case.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/synthesis/experiments/unify-via-case.html)|
|  3  |  4  | d3_deptypes.metta                 |[reports/compat/scripts/d3_deptypes.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/scripts/d3_deptypes.html)|
|  2  |  4  | define_if_like.metta              |[reports/compat/compiler/define_if_like.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/compiler/define_if_like.html)|
|  0  |  4  | DeductionDTLTest.metta            |[reports/compat/dependent-types/DeductionDTLTest.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/dependent-types/DeductionDTLTest.html)|
|  0  |  4  | john-carry-flower-test.metta      |[reports/compat/sumo/john-carry-flower/john-carry-flower-test.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/sumo/john-carry-flower/john-carry-flower-test.html)|
|  0  |  4  | test_minecraft_planning.metta     |[reports/compat/minecraft/test_minecraft_planning.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/minecraft/test_minecraft_planning.html)|
|  14 |  3  | f1_imports.metta                  |[reports/compat/scripts/f1_imports.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/scripts/f1_imports.html)|
|  4  |  3  | e3_match_states.metta             |[reports/compat/scripts/e3_match_states.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/scripts/e3_match_states.html)|
|  0  |  3  | d4_selfmod.metta                  |[reports/compat/scripts_extras/d4_selfmod.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/scripts_extras/d4_selfmod.html)|
|  0  |  3  | MinerUtils.metta                  |[reports/compat/miner/MinerUtils.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/miner/MinerUtils.html)|
|  10 |  2  | 00a_lang_compiled_case.metta      |[reports/compat/compiler/00a_lang_compiled_case.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/compiler/00a_lang_compiled_case.html)|
|  9  |  2  | inf_order_probs.metta             |[reports/compat/prob-dep-types/inf_order_probs.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/prob-dep-types/inf_order_probs.html)|
|  8  |  2  | e2_states.metta                   |[reports/compat/scripts/e2_states.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/scripts/e2_states.html)|
|  1  |  2  | e1_kb_write.metta                 |[reports/compat/scripts/e1_kb_write.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/scripts/e1_kb_write.html)|
|  1  |  2  | UnifyTest.metta                   |[reports/compat/synthesis/UnifyTest.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/synthesis/UnifyTest.html)|
|  0  |  2  | test_minecraft_planning_with_abstractions.metta|[reports/compat/minecraft/test_minecraft_planning_with_abstractions.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/minecraft/test_minecraft_planning_with_abstractions.html)|
|  20 |  1  | b5_types_prelim.metta             |[reports/compat/scripts/b5_types_prelim.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/scripts/b5_types_prelim.html)|
|  19 |  1  | c1_grounded_basic.metta           |[reports/compat/scripts/c1_grounded_basic.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/scripts/c1_grounded_basic.html)|
|  10 |  1  | OrderedSetTest.metta              |[reports/compat/common/OrderedSetTest.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/common/OrderedSetTest.html)|
|  4  |  1  | b2_backchain.metta                |[reports/compat/scripts/b2_backchain.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/scripts/b2_backchain.html)|
|  2  |  1  | orientation-test.metta            |[reports/compat/sumo/orientation/orientation-test.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/sumo/orientation/orientation-test.html)|
|  1  |  1  | d2_auto_types.metta               |[reports/compat/scripts_extras/d2_auto_types.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/scripts_extras/d2_auto_types.html)|
|  0  |  1  | DeductionImplicationDirectIntroductionMatchTest.metta|[reports/compat/match/DeductionImplicationDirectIntroductionMatchTest.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/match/DeductionImplicationDirectIntroductionMatchTest.html)|
|  0  |  1  | ImplicationDirectIntroductionEntailTest.metta|[reports/compat/entail/ImplicationDirectIntroductionEntailTest.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/entail/ImplicationDirectIntroductionEntailTest.html)|
|  0  |  1  | ImplicationDirectIntroductionMatchTest.metta|[reports/compat/match/ImplicationDirectIntroductionMatchTest.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/match/ImplicationDirectIntroductionMatchTest.html)|
|  0  |  1  | pathfinding-easy.metta            |[reports/pathfinding-easy.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/pathfinding-easy.html)|
|  0  |  1  | synthesize-via-superpose.metta    |[reports/compat/synthesis/experiments/synthesize-via-superpose.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/synthesis/experiments/synthesize-via-superpose.html)|
|  13 |  0  | DeductionFormulaTest.metta        |[reports/compat/common/formula/DeductionFormulaTest.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/common/formula/DeductionFormulaTest.html)|
|  12 |  0  | ListTest.metta                    |[reports/compat/common/ListTest.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/common/ListTest.html)|
|  11 |  0  | 00_lang_case.metta                |[reports/compat/scripts/00_lang_case.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/scripts/00_lang_case.html)|
|  11 |  0  | b4_nondeterm.metta                |[reports/compat/scripts/b4_nondeterm.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/scripts/b4_nondeterm.html)|
|  10 |  0  | key-lookups-many.metta            |[reports/key-lookups-many.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/key-lookups-many.html)|
|  7  |  0  | a1_symbols.metta                  |[reports/compat/scripts/a1_symbols.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/scripts/a1_symbols.html)|
|  7  |  0  | tests0.metta                      |[reports/nars/tests0.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/nars/tests0.html)|
|  7  |  0  | unify-via-let.metta               |[reports/compat/synthesis/experiments/unify-via-let.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/synthesis/experiments/unify-via-let.html)|
|  6  |  0  | b1_equal_chain.metta              |[reports/compat/scripts/b1_equal_chain.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/scripts/b1_equal_chain.html)|
|  6  |  0  | TruthValueTest.metta              |[reports/compat/common/truthvalue/TruthValueTest.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/common/truthvalue/TruthValueTest.html)|
|  5  |  0  | 03-soring-via-insert.metta        |[reports/compat/scripts/03-soring-via-insert.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/scripts/03-soring-via-insert.html)|
|  5  |  0  | b0_chaining_prelim.metta          |[reports/compat/scripts/b0_chaining_prelim.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/scripts/b0_chaining_prelim.html)|
|  5  |  0  | c2_spaces.metta                   |[reports/compat/scripts/c2_spaces.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/scripts/c2_spaces.html)|
|  5  |  0  | c3_pln_stv.metta                  |[reports/compat/scripts/c3_pln_stv.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/scripts/c3_pln_stv.html)|
|  4  |  0  | a3_twoside.metta                  |[reports/compat/scripts/a3_twoside.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/scripts/a3_twoside.html)|
|  4  |  0  | EvidentialTruthValueTest.metta    |[reports/compat/common/truthvalue/EvidentialTruthValueTest.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/common/truthvalue/EvidentialTruthValueTest.html)|
|  3  |  0  | b3_direct.metta                   |[reports/compat/scripts/b3_direct.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/scripts/b3_direct.html)|
|  3  |  0  | EqualityTypeTest.metta            |[reports/compat/common/EqualityTypeTest.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/common/EqualityTypeTest.html)|
|  3  |  0  | MaybeTest.metta                   |[reports/compat/common/MaybeTest.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/common/MaybeTest.html)|
|  2  |  0  | 01_lang_inc.metta                 |[reports/compat/scripts/01_lang_inc.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/scripts/01_lang_inc.html)|
|  2  |  0  | d3_typed_pln.metta                |[reports/compat/scripts_extras/d3_typed_pln.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/scripts_extras/d3_typed_pln.html)|
|  2  |  0  | fibo-as-pred.metta                |[reports/fibo-as-pred.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/fibo-as-pred.html)|
|  2  |  0  | non-determinism.metta             |[reports/compat/synthesis/experiments/non-determinism.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/synthesis/experiments/non-determinism.html)|
|  2  |  0  | reverse-arithmetic.metta          |[reports/features/reverse-arithmetic.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/features/reverse-arithmetic.html)|
|  1  |  0  | 02-curried-plus.metta             |[reports/compat/scripts/02-curried-plus.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/scripts/02-curried-plus.html)|
|  1  |  0  | a2_opencoggy.metta                |[reports/compat/scripts/a2_opencoggy.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/scripts/a2_opencoggy.html)|
|  1  |  0  | DeductionEntailTest.metta         |[reports/compat/entail/DeductionEntailTest.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/entail/DeductionEntailTest.html)|
|  1  |  0  | f1_moduleA.metta                  |[reports/compat/scripts/f1_moduleA.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/scripts/f1_moduleA.html)|
|  1  |  0  | fibo.metta                        |[reports/fibo.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/fibo.html)|
|  1  |  0  | fwgc1.metta                       |[reports/fwgc1.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/fwgc1.html)|
|  1  |  0  | hanoi-one-space.metta             |[reports/hanoi-one-space.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/hanoi-one-space.html)|
|  1  |  0  | hanoi-peg-space.metta             |[reports/hanoi-peg-space.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/hanoi-peg-space.html)|
|  1  |  0  | InTest.metta                      |[reports/compat/common/InTest.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/common/InTest.html)|
|  1  |  0  | structure-tests.metta             |[reports/compat/interp/structure-tests.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/interp/structure-tests.html)|
|  1  |  0  | test_list_concatenation.metta     |[reports/test_list_concatenation.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/test_list_concatenation.html)|
|  0  |  0  | benchmark.metta                   |[reports/compat/recursion-schemes/src/reports/benchmark.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/recursion-schemes/src/reports/benchmark.html)|
|  0  |  0  | d5_auto_types.metta               |[reports/compat/scripts/d5_auto_types.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/scripts/d5_auto_types.html)|
|  0  |  0  | DeductionEqualTest.metta          |[reports/compat/equal/DeductionEqualTest.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/equal/DeductionEqualTest.html)|
|  0  |  0  | DeductionMatchTest.metta          |[reports/compat/match/DeductionMatchTest.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/match/DeductionMatchTest.html)|
|  0  |  0  | ImplicationDirectIntroductionEqualTest.metta|[reports/compat/equal/ImplicationDirectIntroductionEqualTest.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/equal/ImplicationDirectIntroductionEqualTest.html)|
|  0  |  0  | located-test.metta                |[reports/compat/sumo/located/located-test.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/sumo/located/located-test.html)|
|  0  |  0  | ModusPonensDTLTest.metta          |[reports/compat/dependent-types/ModusPonensDTLTest.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/dependent-types/ModusPonensDTLTest.html)|
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
| PASS | [COMMON.EQUALITYTYPETEST.01](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/common/EqualityTypeTest.html#COMMON.EQUALITYTYPETEST.01) | (assertEqualToResult (foo (Refl T42))) | (True) | (True) |
| PASS | [COMMON.EQUALITYTYPETEST.03](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/common/EqualityTypeTest.html#COMMON.EQUALITYTYPETEST.03) | (assertEqualToResult (bar (Refl TTrue))) | (True) | (True) |
| PASS | [COMMON.EQUALITYTYPETEST.04](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/common/EqualityTypeTest.html#COMMON.EQUALITYTYPETEST.04) | (assertEqualToResult (baz (Refl T42))) | (False) | (False) |
| PASS | [COMMON.INTEST.01](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/common/InTest.html#COMMON.INTEST.01) | (assertEqual (synthesize (: $Proof (â Z â)) kb rb Z)) | ((: NotInEmpty (â Z â))) | ((: NotInEmpty (â Z â))) |
| PASS | [COMMON.LISTTEST.01](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/common/ListTest.html#COMMON.LISTTEST.01) | (assertEqual (insert 1 ())) | ((Cons 1 ())) | ((Cons 1 ())) |
| PASS | [COMMON.LISTTEST.02](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/common/ListTest.html#COMMON.LISTTEST.02) | (assertEqual (insert 2 (insert 1 ()))) | ((Cons 1 (Cons 2 ()))) | ((Cons 1 (Cons 2 ()))) |
| PASS | [COMMON.LISTTEST.03](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/common/ListTest.html#COMMON.LISTTEST.03) | (assertEqual (insert 3 (insert 2 (insert 1 ())))) | ((Cons 1 (Cons 2 (Cons 3 ())))) | ((Cons 1 (Cons 2 (Cons 3 ())))) |
| PASS | [COMMON.LISTTEST.04](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/common/ListTest.html#COMMON.LISTTEST.04) | (assertEqual (sort (Cons 1 ()))) | ((Cons 1 ())) | ((Cons 1 ())) |
| PASS | [COMMON.LISTTEST.05](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/common/ListTest.html#COMMON.LISTTEST.05) | (assertEqual (sort (Cons 2 (Cons 1 ())))) | ((Cons 1 (Cons 2 ()))) | ((Cons 1 (Cons 2 ()))) |
| PASS | [COMMON.LISTTEST.06](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/common/ListTest.html#COMMON.LISTTEST.06) | (assertEqual (sort (Cons 3 (Cons 1 (Cons 2 ()))))) | ((Cons 1 (Cons 2 (Cons 3 ())))) | ((Cons 1 (Cons 2 (Cons 3 ())))) |
| PASS | [COMMON.LISTTEST.07](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/common/ListTest.html#COMMON.LISTTEST.07) | (assertEqual (elem 1 (Cons 3 (Cons 1 (Cons 2 ()))))) | (True) | (True) |
| PASS | [COMMON.LISTTEST.08](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/common/ListTest.html#COMMON.LISTTEST.08) | (assertEqual (elem 5 (Cons 3 (Cons 1 (Cons 2 ()))))) | (False) | (False) |
| PASS | [COMMON.LISTTEST.09](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/common/ListTest.html#COMMON.LISTTEST.09) | (assertEqual (uniq (Cons 2 (Cons 3 (Cons 3 (Cons 2 ())))))) | ((Cons 2 (Cons 3 ()))) | ((Cons 2 (Cons 3 ()))) |
| PASS | [COMMON.LISTTEST.10](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/common/ListTest.html#COMMON.LISTTEST.10) | (assertEqual (insert_uniq 2 (insert_uniq 1 ()))) | ((Cons 1 (Cons 2 ()))) | ((Cons 1 (Cons 2 ()))) |
| PASS | [COMMON.LISTTEST.11](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/common/ListTest.html#COMMON.LISTTEST.11) | (assertEqual (insert_uniq 3 (insert_uniq 2 (insert_uniq 1 ())))) | ((Cons 1 (Cons 2 (Cons 3 ())))) | ((Cons 1 (Cons 2 (Cons 3 ())))) |
| PASS | [COMMON.LISTTEST.12](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/common/ListTest.html#COMMON.LISTTEST.12) | (assertEqual (insert_uniq 2 (insert_uniq 3 (insert_uniq 2 (insert_uniq 1 ()))))) | ((Cons 1 (Cons 2 (Cons 3 ())))) | ((Cons 1 (Cons 2 (Cons 3 ())))) |
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
| FAIL | [DEPENDENT-TYPES.DEDUCTIONDTLTEST.01](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/dependent-types/DeductionDTLTest.html#DEPENDENT-TYPES.DEDUCTIONDTLTEST.01) | (assertEqual (record synthesize ((: $Proof (â (â P Q) $Tv)) kb rb Z))) | ((â· synthesize ((: PQm (â (â P Q) (STV 0.8 0.4))) kb rb Z) (: PQm (â (â P Q) (STV 0.8 0.4)... | ((: PQm (â (â P Q) (STV 0.8 0.4)))) |
| FAIL | [DEPENDENT-TYPES.DEDUCTIONDTLTEST.02](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/dependent-types/DeductionDTLTest.html#DEPENDENT-TYPES.DEDUCTIONDTLTEST.02) | (assertEqual (record synthesize ((: $Proof (â (â Q R) $Tv)) kb rb Z))) | ((â· synthesize ((: QRm (â (â Q R) (STV 0.9 0.5))) kb rb Z) (: QRm (â (â Q R) (STV 0.9 0.5)... | ((: QRm (â (â Q R) (STV 0.9 0.5)))) |
| FAIL | [DEPENDENT-TYPES.DEDUCTIONDTLTEST.03](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/dependent-types/DeductionDTLTest.html#DEPENDENT-TYPES.DEDUCTIONDTLTEST.03) | (assertEqual (record synthesize ((: $Proof (â (â P R) $Tv)) kb rb (S Z)))) | ((â· synthesize ((: (Deduction Pm Qm Rm PQm QRm) (â (â P R) (STV 0.7 0.1))) kb rb (S Z)) (: (De... | ((: (Deduction Pm Qm Rm PQm QRm) (â (â P R) (STV 0.8 0.1)))) |
| FAIL | [DEPENDENT-TYPES.DEDUCTIONDTLTEST.04](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/dependent-types/DeductionDTLTest.html#DEPENDENT-TYPES.DEDUCTIONDTLTEST.04) | (assertEqual (record synthesize ((: $Proof (â (â P R) (STV $S $C))) kb rb (S Z)))) | ((â· synthesize ((: (Deduction Pm Qm Rm PQm QRm) (â (â P R) (STV 0.7 0.1))) kb rb (S Z)) (: (De... | ((: (Deduction Pm Qm Rm PQm QRm) (â (â P R) (STV 0.8 0.1)))) |
| FAIL | [DEPENDENT-TYPES.DEDUCTIONIMPLICATIONDIRECTINTRODUCTIONDTLTEST.103](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/dependent-types/DeductionImplicationDirectIntroductionDTLTest.html#DEPENDENT-TYPES.DEDUCTIONIMPLICATIONDIRECTINTRODUCTIONDTLTEST.103) | (exec deduction_idi_prf) | () | (deduction_idi_prf) |
| FAIL | [DEPENDENT-TYPES.DEDUCTIONIMPLICATIONDIRECTINTRODUCTIONDTLTEST.104](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/dependent-types/DeductionImplicationDirectIntroductionDTLTest.html#DEPENDENT-TYPES.DEDUCTIONIMPLICATIONDIRECTINTRODUCTIONDTLTEST.104) | (exec (get-type deduction_idi_prf)) | (deduction_idi_prf) | () |
| PASS | [DEPENDENT-TYPES.IMPLICATIONDIRECTINTRODUCTIONDTLTEST.01](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/dependent-types/ImplicationDirectIntroductionDTLTest.html#DEPENDENT-TYPES.IMPLICATIONDIRECTINTRODUCTIONDTLTEST.01) | (assertEqualToResult (base_prf)) | ((base_prf)) | ((base_prf)) |
| PASS | [DEPENDENT-TYPES.IMPLICATIONDIRECTINTRODUCTIONDTLTEST.02](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/dependent-types/ImplicationDirectIntroductionDTLTest.html#DEPENDENT-TYPES.IMPLICATIONDIRECTINTRODUCTIONDTLTEST.02) | (assertEqualToResult (get-type base_prf)) | ((â (â P Q) (ETV (:: (S (S Z)) â) (STV 0 0.5)))) | ((â (â P Q) (ETV (:: (S (S Z)) â) (STV 0 0.5)))) |
| PASS | [DEPENDENT-TYPES.IMPLICATIONDIRECTINTRODUCTIONDTLTEST.03](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/dependent-types/ImplicationDirectIntroductionDTLTest.html#DEPENDENT-TYPES.IMPLICATIONDIRECTINTRODUCTIONDTLTEST.03) | (assertEqualToResult (recursive_prf)) | ((recursive_prf)) | ((recursive_prf)) |
| FAIL | [DEPENDENT-TYPES.IMPLICATIONDIRECTINTRODUCTIONDTLTEST.04](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/dependent-types/ImplicationDirectIntroductionDTLTest.html#DEPENDENT-TYPES.IMPLICATIONDIRECTINTRODUCTIONDTLTEST.04) | (assertEqualToResult (get-type recursive_prf)) | () | ((â (â P Q) $_247892)) |
| PASS | [ENTAIL.DEDUCTIONENTAILTEST.01](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/entail/DeductionEntailTest.html#ENTAIL.DEDUCTIONENTAILTEST.01) | (assertEqual (let* (($P (P)) ($Q (Q)) ($R (R)) ($Pq (PQ)) ($Qr (QR))) (match &self (â¢ $P $Q $R $Pq $Qr $Res) $Res))) | ((â (â P R) (PrCnt 1 1))) | ((â (â P R) (PrCnt 1 1))) |
| FAIL | [ENTAIL.IMPLICATIONDIRECTINTRODUCTIONENTAILTEST.106](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/entail/ImplicationDirectIntroductionEntailTest.html#ENTAIL.IMPLICATIONDIRECTINTRODUCTIONENTAILTEST.106) | (exec (idi_formula (Bl True) (Bl False) (PrCnt 1 0))) | (("========== Test inductive rule ==========")) | ((idi_formula (Bl True) (Bl False) (PrCnt 1 0))) |
| FAIL | [EXAMPLES.EXPRESSION.103](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/_408760.html#EXAMPLES.EXPRESSION.103) | (exec ((cata mapExpr evalExpr) (Fix (Plus (Fix (Plus (Fix (Var X)) (Fix (Const 2)))) (Fix (Const 40)))))) | (((ana mapExpr nTimes) (and 2 (S (S Z))))) | (42) |
| FAIL | [EXAMPLES.EXPRESSION.104](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/_105300.html#EXAMPLES.EXPRESSION.104) | (exec ((ana mapExpr nTimes) (and 2 (S (S Z))))) | (((hylo mapExpr evalExpr nTimes) (and 3 (S (S (S Z)))))) | ((Fix (Plus (Fix (mapExpr (ana mapExpr nTimes) (nTimes True))) (Fix (mapExpr (ana mapExpr nTimes) (nTimes True)))))) |
| FAIL | [EXAMPLES.EXPRESSION.105](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/_206478.html#EXAMPLES.EXPRESSION.105) | (exec ((hylo mapExpr evalExpr nTimes) (and 3 (S (S (S Z)))))) | (((para mapExpr diff) (Fix (Plus (Fix (Var X)) (Fix (Const 1)))))) | ((+ (evalExpr (mapExpr (hylo mapExpr evalExpr nTimes) (nTimes True))) (evalExpr (mapExpr (hylo mapExpr evalExpr nTimes) (nTimes True))))) |
| FAIL | [EXAMPLES.EXPRESSION.106](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/_331678.html#EXAMPLES.EXPRESSION.106) | (exec ((para mapExpr diff) (Fix (Plus (Fix (Var X)) (Fix (Const 1)))))) | ((1 p $X_C35_135) (2 t $X_C35_136) (Fix $Y)) | ((diff (Plus True True))) |
| FAIL | [EXAMPLES.EXPRESSION.107](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/_400334.html#EXAMPLES.EXPRESSION.107) | (exec (match &self (= (expand $X) $Y) $X)) | (((futu mapExpr expand) (2 t (1 p (Fix (Var X)))))) | ((1 p $_393030) (2 t $_393006) (Fix $_392982)) |
| FAIL | [EXAMPLES.FACTORIAL.01](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/factorial.html#EXAMPLES.FACTORIAL.01) | (assertEqual 120) | (120) | (120 (* 5 (* 4 (* 3 (* 2 (* 1 ())))))) |
| PASS | [EXAMPLES.FACTORIAL.02](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/factorial.html#EXAMPLES.FACTORIAL.02) | (assertEqual 120) | (120) | (120) |
| PASS | [EXAMPLES.FACTORIAL.03](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/factorial.html#EXAMPLES.FACTORIAL.03) | (assertEqual 120) | (120) | (120) |
| FAIL | [EXAMPLES.FACTORIAL.04](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/factorial.html#EXAMPLES.FACTORIAL.04) | (assertEqual 120) | (120) | (120 ()) |
| FAIL | [EXAMPLES.FACTORIAL.05](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/factorial.html#EXAMPLES.FACTORIAL.05) | (assertEqual 120) | (120) | (Empty) |
| FAIL | [EXAMPLES.FACTORIAL.06](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/factorial.html#EXAMPLES.FACTORIAL.06) | (assertEqual 120) | (120) | ((fact-p-r-c 5)) |
| PASS | [EXAMPLES.FACTORIAL.07](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/factorial.html#EXAMPLES.FACTORIAL.07) | (assertEqual (fact-p-t-c 5 120)) | (True) | (True) |
| PASS | [EXAMPLES.FACTORIAL.08](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/factorial.html#EXAMPLES.FACTORIAL.08) | (assertEqual (fact-p-r-i 5 120)) | (True) | (True) |
| PASS | [EXAMPLES.FACTORIAL.09](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/factorial.html#EXAMPLES.FACTORIAL.09) | (assertEqual (fact-p-t-i 5 120)) | (True) | (True) |
| PASS | [EXAMPLES.FACTORIAL.10](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/factorial.html#EXAMPLES.FACTORIAL.10) | (assertEqual (fact-f-r-c 30)) | (265252859812191058636308480000000) | (265252859812191058636308480000000) |
| PASS | [EXAMPLES.FACTORIAL.11](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/factorial.html#EXAMPLES.FACTORIAL.11) | (assertEqual (fact-f-t-c 30)) | (265252859812191058636308480000000) | (265252859812191058636308480000000) |
| PASS | [EXAMPLES.FACTORIAL.12](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/factorial.html#EXAMPLES.FACTORIAL.12) | (assertEqual (fact-p-r-c 30 265252859812191058636308480000000)) | (True) | (True) |
| FAIL | [EXAMPLES.FACTORIAL.13](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/factorial.html#EXAMPLES.FACTORIAL.13) | (assertEqual (fact-p-t-c 30)) | ((fact-p-t-c 30)) | (265252859812191058636308480000000) |
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
| FAIL | [EXAMPLES.STATE-TYPES.103](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/state_types.html#EXAMPLES.STATE-TYPES.103) | (exec ("(get-type A-first)=" (get-type (get-state &a-first)))) | (("(get-type A-first)=" Symbol)) | (("(get-type A-first)=" ABType)) |
| FAIL | [EXAMPLES.STATE-TYPES.106](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/state_types.html#EXAMPLES.STATE-TYPES.106) | (exec ("(get-type A-first)=" (get-type (get-state &a-first)))) | (("(get-type A-first)=" Symbol)) | (("(get-type A-first)=" ABType)) |
| FAIL | [EXAMPLES.STATE-TYPES.109](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/state_types.html#EXAMPLES.STATE-TYPES.109) | (exec ("(get-type B-first)=" (get-type (get-state &b-first)))) | (("(get-type B-first)=" Symbol)) | (("(get-type B-first)=" ABType)) |
| FAIL | [EXAMPLES.STATE-TYPES.112](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/state_types.html#EXAMPLES.STATE-TYPES.112) | (exec ("(get-type B-first)=" (get-type (get-state &b-first)))) | (("(get-type B-first)=" Symbol)) | (("(get-type B-first)=" ABType)) |
| PASS | [EXAMPLES.STATE-TYPES.115](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/state_types.html#EXAMPLES.STATE-TYPES.115) | (exec ("(get-type False-first)=" (get-type (get-state &false-first)))) | (("(get-type False-first)=" Bool)) | (("(get-type False-first)=" Bool)) |
| PASS | [EXAMPLES.STATE-TYPES.118](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/state_types.html#EXAMPLES.STATE-TYPES.118) | (exec ("(get-type False-first)=" (get-type (get-state &false-first)))) | (("(get-type False-first)=" Symbol)) | (("(get-type False-first)=" Symbol)) |
| PASS | [EXAMPLES.STATE-TYPES.125](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/state_types.html#EXAMPLES.STATE-TYPES.125) | (exec ("(get-type (isLeft (Right 5)))=" (get-type (isLeft (Right 5))))) | (("(get-type (isLeft (Right 5)))=" Bool)) | (("(get-type (isLeft (Right 5)))=" Bool)) |
| PASS | [EXAMPLES.STATE-TYPES.126](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/state_types.html#EXAMPLES.STATE-TYPES.126) | (exec ("(get-type (get-state (new-state  (isLeft (Right 5)))))=" (get-type (get-state (new-state (isLeft (Right 5))))))) | (("(get-type (get-state (new-state  (isLeft (Right 5)))))=" Bool)) | (("(get-type (get-state (new-state  (isLeft (Right 5)))))=" Bool)) |
| FAIL | [EXAMPLES.STATE-TYPES.127](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/state_types.html#EXAMPLES.STATE-TYPES.127) | (exec ("(get-type (get-state (new-state (Left  6))))=" (get-type (get-state (new-state (Left 6)))))) | (("(get-type (get-state (new-state (Left  6))))=" Either)) | (("(get-type (get-state (new-state (Left  6))))=" (Symbol (StateMonad Either)))) |
| FAIL | [EXAMPLES.STATE-TYPES.128](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/state_types.html#EXAMPLES.STATE-TYPES.128) | (exec ("(get-type (get-state (new-state (Right 7))))=" (get-type (get-state (new-state (Right 7)))))) | (("(get-type (get-state (new-state (Right 7))))=" Either)) | (("(get-type (get-state (new-state (Right 7))))=" (Symbol (StateMonad Either)))) |
| PASS | [EXAMPLES.STATE-TYPES.129](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/state_types.html#EXAMPLES.STATE-TYPES.129) | (exec ("(get-type &is_left)=" &is_left (get-type &is_left))) | (("(get-type &is_left)=" False Bool)) | (("(get-type &is_left)=" False Bool)) |
| PASS | [EXAMPLES.STATE-TYPES.130](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/state_types.html#EXAMPLES.STATE-TYPES.130) | (exec ("(get-type &right_7)=" &right_7 (get-type &right_7))) | (("(get-type &right_7)=" (Right 7) Either)) | (("(get-type &right_7)=" (Right 7) Either)) |
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
| PASS | [EXPERIMENTS.NON-DETERMINISM.01](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/synthesis/experiments/non-determinism.html#EXPERIMENTS.NON-DETERMINISM.01) | (assertEqualToResult (foo 21)) | (42 441) | (42 441) |
| PASS | [EXPERIMENTS.NON-DETERMINISM.02](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/synthesis/experiments/non-determinism.html#EXPERIMENTS.NON-DETERMINISM.02) | (assertEqualToResult (bar 2)) | (2 3 4) | (3 4 2 2) |
| FAIL | [EXPERIMENTS.SELF-CONTAINED-SYNTHESIZE.01](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/synthesis/experiments/self-contained-synthesize.html#EXPERIMENTS.SELF-CONTAINED-SYNTHESIZE.01) | (assertEqualToResult (record synthesize ((: $Term $Type) Z))) | ((record synthesize (True Z))) | ((: f (-> Number String)) (: g (-> String Bool)) (: h (-> Bool Number))) |
| FAIL | [EXPERIMENTS.SELF-CONTAINED-SYNTHESIZE.02](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/synthesis/experiments/self-contained-synthesize.html#EXPERIMENTS.SELF-CONTAINED-SYNTHESIZE.02) | (assertEqualToResult (record synthesize ((: $Term (-> Number String)) Z))) | ((record synthesize ((: $_139656 (-> Number String)) Z))) | ((: f (-> Number String))) |
| FAIL | [EXPERIMENTS.SELF-CONTAINED-SYNTHESIZE.03](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/synthesis/experiments/self-contained-synthesize.html#EXPERIMENTS.SELF-CONTAINED-SYNTHESIZE.03) | (assertEqualToResult (record synthesize ((: $Term (-> String Number Number)) kb rb (S Z)))) | ((â· synthesize ((: $_270762 (-> String Number Number)) kb rb (S Z)) (synthesize (: $_270762 (-> St... | ((: f (-> Number String))) |
| FAIL | [EXPERIMENTS.SELF-CONTAINED-SYNTHESIZE.04](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/synthesis/experiments/self-contained-synthesize.html#EXPERIMENTS.SELF-CONTAINED-SYNTHESIZE.04) | (assertEqualToResult (record synthesize ((: $Term (-> Number Bool)) (S Z)))) | ((record synthesize ((: $_47416 (-> Number Bool)) (S Z)))) | ((: (. g f) (-> Number Bool))) |
| FAIL | [EXPERIMENTS.SELF-CONTAINED-SYNTHESIZE.05](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/synthesis/experiments/self-contained-synthesize.html#EXPERIMENTS.SELF-CONTAINED-SYNTHESIZE.05) | (assertEqualToResult (record synthesize ((: (. g f) (-> Number Bool)) (S Z)))) | ((record synthesize ((: (. g f) (-> Number Bool)) (S Z)))) | ((: (. g f) (-> Number Bool))) |
| FAIL | [EXPERIMENTS.SELF-CONTAINED-SYNTHESIZE.06](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/synthesis/experiments/self-contained-synthesize.html#EXPERIMENTS.SELF-CONTAINED-SYNTHESIZE.06) | (assertEqualToResult (record synthesize ((: (. g f) $Type) (S Z)))) | ((record synthesize ((: (. g f) $_218736) (S Z)))) | ((: (. g f) (-> Number Bool))) |
| FAIL | [EXPERIMENTS.SELF-CONTAINED-SYNTHESIZE.07](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/synthesis/experiments/self-contained-synthesize.html#EXPERIMENTS.SELF-CONTAINED-SYNTHESIZE.07) | (assertEqualToResult (record synthesize ((: $Term $Type) (S Z)))) | ((record synthesize (True (S Z)))) | ((: f (-> Number String)) ..., (: (. f h) (-> Bool String)) ...) |
| FAIL | [EXPERIMENTS.SELF-CONTAINED-SYNTHESIZE.08](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/synthesis/experiments/self-contained-synthesize.html#EXPERIMENTS.SELF-CONTAINED-SYNTHESIZE.08) | (assertEqualToResult (record synthesize ((: (. (. g f) h) (-> $In Bool)) (fromNumber 2)))) | ((record synthesize ((: (. (. g f) h) (-> $_29456 Bool)) (S (S Z)))) (record synthesize ((: (. (. g ... | ((: (. (. g f) h) (-> Bool Bool))) |
| FAIL | [EXPERIMENTS.SELF-CONTAINED-SYNTHESIZE.09](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/synthesis/experiments/self-contained-synthesize.html#EXPERIMENTS.SELF-CONTAINED-SYNTHESIZE.09) | (assertEqualToResult (record synthesize ((: (. $G h) (-> $In String)) (fromNumber 3)))) | ((record synthesize ((: (. $_438794 h) (-> $_438818 String)) (S (S (S Z))))) (record synthesize ((: ... | ((: (. f h) (-> Bool String)) (: (. (. (. f h) (. g f)) h) (-> Bool String))) |
| FAIL | [EXPERIMENTS.SELF-CONTAINED-SYNTHESIZE.10](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/synthesis/experiments/self-contained-synthesize.html#EXPERIMENTS.SELF-CONTAINED-SYNTHESIZE.10) | (assertEqualToResult (record synthesize ((: (. $G h) (-> Number $Out)) (fromNumber 3)))) | ((record synthesize ((: (. $_52538 h) (-> Number $_52568)) (S (S (S Z))))) (record synthesize ((: (.... | () |
| FAIL | [EXPERIMENTS.SELF-CONTAINED-SYNTHESIZE.11](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/synthesis/experiments/self-contained-synthesize.html#EXPERIMENTS.SELF-CONTAINED-SYNTHESIZE.11) | (assertEqualToResult (record synthesize ((: (. g $False) (-> $In String)) (fromNumber 3)))) | ((record synthesize ((: (. g $_91482) (-> $_91500 String)) (S (S (S Z))))) (record synthesize ((: (.... | () |
| FAIL | [EXPERIMENTS.SELF-CONTAINED-SYNTHESIZE.12](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/synthesis/experiments/self-contained-synthesize.html#EXPERIMENTS.SELF-CONTAINED-SYNTHESIZE.12) | (assertEqualToResult (record synthesize ((: $Term $Type) (fromNumber 4)))) | ((record synthesize (True (S (S (S (S Z))))))) | $_1980 |
| FAIL | [EXPERIMENTS.SYNTHESIZE-VIA-CASE-TEST.01](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/synthesis/experiments/synthesize-via-case-test.html#EXPERIMENTS.SYNTHESIZE-VIA-CASE-TEST.01) | (assertEqualToResult (record syn ((: $Term $Type) Z))) | ((â· syn ((: $_10386 $_10392) Z) (syn (: $_10386 $_10392) Z))) | ((: f (-> Number String)) (: g (-> String Bool)) (: h (-> Bool Number))) |
| FAIL | [EXPERIMENTS.SYNTHESIZE-VIA-CASE-TEST.02](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/synthesis/experiments/synthesize-via-case-test.html#EXPERIMENTS.SYNTHESIZE-VIA-CASE-TEST.02) | (assertEqualToResult (record syn ((: $Term (-> Number String)) Z))) | ((â· syn ((: $_332920 (-> Number String)) Z) (: f (-> Number String)))) | ((: f (-> Number String))) |
| FAIL | [EXPERIMENTS.SYNTHESIZE-VIA-CASE-TEST.03](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/synthesis/experiments/synthesize-via-case-test.html#EXPERIMENTS.SYNTHESIZE-VIA-CASE-TEST.03) | (assertEqualToResult (record syn ((: $Term (-> String Number Number)) kb rb (S Z)))) | ((â· syn ((: $_478340 (-> String Number Number)) kb rb (S Z)) (syn (: $_478340 (-> String Number Nu... | ((: f (-> Number String))) |
| FAIL | [EXPERIMENTS.SYNTHESIZE-VIA-CASE-TEST.04](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/synthesis/experiments/synthesize-via-case-test.html#EXPERIMENTS.SYNTHESIZE-VIA-CASE-TEST.04) | (assertEqualToResult (record syn ((: $Term (-> Number Bool)) (S Z)))) | ((â· syn ((: $_95164 (-> Number Bool)) (S Z)) (syn (: $_95164 (-> Number Bool)) (S Z)))) | ((: (. g f) (-> Number Bool))) |
| FAIL | [EXPERIMENTS.SYNTHESIZE-VIA-CASE-TEST.05](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/synthesis/experiments/synthesize-via-case-test.html#EXPERIMENTS.SYNTHESIZE-VIA-CASE-TEST.05) | (assertEqualToResult (record syn ((: (. g f) (-> Number Bool)) (S Z)))) | ((â· syn ((: (. g f) (-> Number Bool)) (S Z)) (syn (: (. g f) (-> Number Bool)) (S Z)))) | ((: (. g f) (-> Number Bool))) |
| FAIL | [EXPERIMENTS.SYNTHESIZE-VIA-CASE-TEST.06](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/synthesis/experiments/synthesize-via-case-test.html#EXPERIMENTS.SYNTHESIZE-VIA-CASE-TEST.06) | (assertEqualToResult (record syn ((: (. g f) $Type) (S Z)))) | ((â· syn ((: (. g f) $_180014) (S Z)) (syn (: (. g f) $_180014) (S Z)))) | ((: (. g f) (-> Number Bool))) |
| FAIL | [EXPERIMENTS.SYNTHESIZE-VIA-CASE-TEST.07](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/synthesis/experiments/synthesize-via-case-test.html#EXPERIMENTS.SYNTHESIZE-VIA-CASE-TEST.07) | (assertEqualToResult (record syn ((: $Term $Type) (S Z)))) | ((â· syn ((: $_141194 $_141200) (S Z)) (syn (: $_141194 $_141200) (S Z)))) | ((: f (-> Number String)) ..., (: (. f h) (-> Bool String)) ...) |
| FAIL | [EXPERIMENTS.SYNTHESIZE-VIA-CASE-TEST.08](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/synthesis/experiments/synthesize-via-case-test.html#EXPERIMENTS.SYNTHESIZE-VIA-CASE-TEST.08) | (assertEqualToResult (record syn ((: (. (. g f) h) (-> $In Bool)) (fromNumber 2)))) | ((â· syn ((: (. (. g f) h) (-> $_401566 Bool)) (fromNumber 2)) (syn (: (. (. g f) h) (-> $_401566 B... | ((: (. (. g f) h) (-> Bool Bool))) |
| FAIL | [EXPERIMENTS.SYNTHESIZE-VIA-CASE-TEST.09](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/synthesis/experiments/synthesize-via-case-test.html#EXPERIMENTS.SYNTHESIZE-VIA-CASE-TEST.09) | (assertEqualToResult (record syn ((: (. $G h) (-> $In String)) (fromNumber 3)))) | ((â· syn ((: (. $_5600 h) (-> $_5624 String)) (S (S (S Z)))) (syn (: (. $_5600 h) (-> $_5624 String... | ((: (. f h) (-> Bool String)) (: (. (. (. f h) (. g f)) h) (-> Bool String))) |
| FAIL | [EXPERIMENTS.SYNTHESIZE-VIA-CASE-TEST.10](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/synthesis/experiments/synthesize-via-case-test.html#EXPERIMENTS.SYNTHESIZE-VIA-CASE-TEST.10) | (assertEqualToResult (record syn ((: (. $G h) (-> Number $Out)) (fromNumber 3)))) | ((â· syn ((: (. $_27254 h) (-> Number $_27284)) (S (S (S Z)))) (syn (: (. $_27254 h) (-> Number $_2... | () |
| FAIL | [EXPERIMENTS.SYNTHESIZE-VIA-CASE-TEST.11](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/synthesis/experiments/synthesize-via-case-test.html#EXPERIMENTS.SYNTHESIZE-VIA-CASE-TEST.11) | (assertEqualToResult (record syn ((: (. g $False) (-> $In String)) (fromNumber 3)))) | ((â· syn ((: (. g $_406060) (-> $_406078 String)) (S (S (S Z)))) (syn (: (. g $_406060) (-> $_40607... | () |
| FAIL | [EXPERIMENTS.SYNTHESIZE-VIA-LET-TEST.01](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/synthesis/experiments/synthesize-via-let-test.html#EXPERIMENTS.SYNTHESIZE-VIA-LET-TEST.01) | (assertEqualToResult (record syn ((: $Term $Type) Z))) | ((â· syn ((: $_321656 $_321662) Z) (syn (: $_321656 $_321662) Z))) | ((: f (-> Number String)) (: g (-> String Bool)) (: h (-> Bool Number))) |
| FAIL | [EXPERIMENTS.SYNTHESIZE-VIA-LET-TEST.02](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/synthesis/experiments/synthesize-via-let-test.html#EXPERIMENTS.SYNTHESIZE-VIA-LET-TEST.02) | (assertEqualToResult (record syn ((: $Term (-> Number String)) Z))) | ((â· syn ((: f (-> Number String)) Z) (: f (-> Number String)))) | ((: f (-> Number String))) |
| FAIL | [EXPERIMENTS.SYNTHESIZE-VIA-LET-TEST.03](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/synthesis/experiments/synthesize-via-let-test.html#EXPERIMENTS.SYNTHESIZE-VIA-LET-TEST.03) | (assertEqualToResult (record syn ((: $Term (-> String Number Number)) kb rb (S Z)))) | ((â· syn ((: $_17974 (-> String Number Number)) kb rb (S Z)) (syn (: $_17974 (-> String Number Numb... | ((: f (-> Number String))) |
| FAIL | [EXPERIMENTS.SYNTHESIZE-VIA-LET-TEST.04](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/synthesis/experiments/synthesize-via-let-test.html#EXPERIMENTS.SYNTHESIZE-VIA-LET-TEST.04) | (assertEqualToResult (record syn ((: $Term (-> Number Bool)) (S Z)))) | ((â· syn ((: $_146748 (-> Number Bool)) (S Z)) (syn (: $_146748 (-> Number Bool)) (S Z)))) | ((: (. g f) (-> Number Bool))) |
| FAIL | [EXPERIMENTS.SYNTHESIZE-VIA-LET-TEST.05](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/synthesis/experiments/synthesize-via-let-test.html#EXPERIMENTS.SYNTHESIZE-VIA-LET-TEST.05) | (assertEqualToResult (record syn ((: (. g f) (-> Number Bool)) (S Z)))) | ((â· syn ((: (. g f) (-> Number Bool)) (S Z)) (syn (: (. g f) (-> Number Bool)) (S Z)))) | ((: (. g f) (-> Number Bool))) |
| FAIL | [EXPERIMENTS.SYNTHESIZE-VIA-LET-TEST.06](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/synthesis/experiments/synthesize-via-let-test.html#EXPERIMENTS.SYNTHESIZE-VIA-LET-TEST.06) | (assertEqualToResult (record syn ((: (. g f) $Type) (S Z)))) | ((â· syn ((: (. g f) $_67712) (S Z)) (syn (: (. g f) $_67712) (S Z)))) | ((: (. g f) (-> Number Bool))) |
| FAIL | [EXPERIMENTS.SYNTHESIZE-VIA-LET-TEST.07](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/synthesis/experiments/synthesize-via-let-test.html#EXPERIMENTS.SYNTHESIZE-VIA-LET-TEST.07) | (assertEqualToResult (record syn ((: $Term $Type) (S Z)))) | ((â· syn ((: $_319304 $_319310) (S Z)) (syn (: $_319304 $_319310) (S Z)))) | ((: f (-> Number String)) ..., (: (. f h) (-> Bool String)) ...) |
| FAIL | [EXPERIMENTS.SYNTHESIZE-VIA-LET-TEST.08](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/synthesis/experiments/synthesize-via-let-test.html#EXPERIMENTS.SYNTHESIZE-VIA-LET-TEST.08) | (assertEqualToResult (record syn ((: (. (. g f) h) (-> $In Bool)) (fromNumber 2)))) | ((â· syn ((: (. (. g f) h) (-> $_88754 Bool)) (fromNumber 2)) (syn (: (. (. g f) h) (-> $_88754 Boo... | ((: (. (. g f) h) (-> Bool Bool))) |
| FAIL | [EXPERIMENTS.SYNTHESIZE-VIA-LET-TEST.09](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/synthesis/experiments/synthesize-via-let-test.html#EXPERIMENTS.SYNTHESIZE-VIA-LET-TEST.09) | (assertEqualToResult (record syn ((: (. $G h) (-> $In String)) (fromNumber 3)))) | ((â· syn ((: (. $_323990 h) (-> $_324014 String)) (S (S (S Z)))) (syn (: (. $_323990 h) (-> $_32401... | ((: (. f h) (-> Bool String)) (: (. (. (. f h) (. g f)) h) (-> Bool String))) |
| FAIL | [EXPERIMENTS.SYNTHESIZE-VIA-LET-TEST.10](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/synthesis/experiments/synthesize-via-let-test.html#EXPERIMENTS.SYNTHESIZE-VIA-LET-TEST.10) | (assertEqualToResult (record syn ((: (. $G h) (-> Number $Out)) (fromNumber 3)))) | ((â· syn ((: (. $_262012 h) (-> Number $_262042)) (S (S (S Z)))) (syn (: (. $_262012 h) (-> Number ... | () |
| FAIL | [EXPERIMENTS.SYNTHESIZE-VIA-LET-TEST.11](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/synthesis/experiments/synthesize-via-let-test.html#EXPERIMENTS.SYNTHESIZE-VIA-LET-TEST.11) | (assertEqualToResult (record syn ((: (. g $False) (-> $In String)) (fromNumber 3)))) | ((â· syn ((: (. g $_210504) (-> $_210522 String)) (S (S (S Z)))) (syn (: (. g $_210504) (-> $_21052... | () |
| FAIL | [EXPERIMENTS.SYNTHESIZE-VIA-SUPERPOSE.101](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/synthesis/experiments/synthesize-via-superpose.html#EXPERIMENTS.SYNTHESIZE-VIA-SUPERPOSE.101) | (exec (superpose ((. f f) (. f g) (. g f) (. g g) (. h g)))) | ((Error f BadType) (Error g BadType) (. g f) (Error g BadType) (. h g)) | ((. f f) (. f g) (. g f) (. g g) (. h g)) |
| FAIL | [EXPERIMENTS.SYNTHESIZE-VIA-UNIFY-TEST.01](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/synthesis/experiments/synthesize-via-unify-test.html#EXPERIMENTS.SYNTHESIZE-VIA-UNIFY-TEST.01) | (assertEqualToResult (record synthesize ((: $Term $Type) Z))) | ((â· synthesize (True Z) (synthesize True Z)) (â· synthesize (True Z) (synthesize (: (: SuccMonoto... | ((: f (-> Number String)) (: g (-> String Bool)) (: h (-> Bool Number))) |
| FAIL | [EXPERIMENTS.SYNTHESIZE-VIA-UNIFY-TEST.02](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/synthesis/experiments/synthesize-via-unify-test.html#EXPERIMENTS.SYNTHESIZE-VIA-UNIFY-TEST.02) | (assertEqualToResult (record synthesize ((: $Term (-> Number String)) Z))) | ((â· synthesize ((: $_420292 (-> Number String)) Z) (synthesize (: $_420292 (-> Number String)) Z))... | ((: f (-> Number String))) |
| FAIL | [EXPERIMENTS.UNIFY-VIA-CASE.01](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/synthesis/experiments/unify-via-case.html#EXPERIMENTS.UNIFY-VIA-CASE.01) | (assertEqualToResult (case (Link $X B) (((Link A $Y) (Link $X $Y))))) | ((Link $_373624 B)) | ((Link A B)) |
| FAIL | [EXPERIMENTS.UNIFY-VIA-CASE.02](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/synthesis/experiments/unify-via-case.html#EXPERIMENTS.UNIFY-VIA-CASE.02) | (assertEqualToResult (case (-> $X B) (((-> A $Y) (-> $X $Y))))) | ((-> $_417976 B)) | ((-> A B)) |
| FAIL | [EXPERIMENTS.UNIFY-VIA-CASE.03](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/synthesis/experiments/unify-via-case.html#EXPERIMENTS.UNIFY-VIA-CASE.03) | (assertEqualToResult (case (f $X) (((Link A $Y) (Link $X $Y))))) | ((Link $_473892 B)) | ((Link A B)) |
| FAIL | [EXPERIMENTS.UNIFY-VIA-CASE.04](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/synthesis/experiments/unify-via-case.html#EXPERIMENTS.UNIFY-VIA-CASE.04) | (assertEqualToResult (case (Link $X B) (((g $Y) (Link $X $Y))))) | ((Link $_2988 B)) | () |
| FAIL | [EXPERIMENTS.UNIFY-VIA-CASE.05](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/synthesis/experiments/unify-via-case.html#EXPERIMENTS.UNIFY-VIA-CASE.05) | (assertEqualToResult (case (superpose ((Link $X B) (Node A) (Link $X C))) (((Link A $Y) (Link $X $Y))))) | ((Link $_50266 C) (Link $_50290 B)) | ((Link A B) (Link A C)) |
| PASS | [EXPERIMENTS.UNIFY-VIA-CASE.06](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/synthesis/experiments/unify-via-case.html#EXPERIMENTS.UNIFY-VIA-CASE.06) | (assertEqualToResult (case (g $Y) (($Z (case (f $X) (($Z $Z))))))) | ((Link A B)) | ((Link A B)) |
| PASS | [EXPERIMENTS.UNIFY-VIA-LET.01](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/synthesis/experiments/unify-via-let.html#EXPERIMENTS.UNIFY-VIA-LET.01) | (assertEqualToResult (let (Link A $Y) (Link $X B) (Link $X $Y))) | ((Link A B)) | ((Link A B)) |
| PASS | [EXPERIMENTS.UNIFY-VIA-LET.02](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/synthesis/experiments/unify-via-let.html#EXPERIMENTS.UNIFY-VIA-LET.02) | (assertEqualToResult (let (-> A $Y) (-> $X B) (-> $X $Y))) | ((-> A B)) | ((-> A B)) |
| PASS | [EXPERIMENTS.UNIFY-VIA-LET.03](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/synthesis/experiments/unify-via-let.html#EXPERIMENTS.UNIFY-VIA-LET.03) | (assertEqualToResult (let (Link A $Y) (f $X) (Link $X $Y))) | ((Link A B)) | ((Link A B)) |
| PASS | [EXPERIMENTS.UNIFY-VIA-LET.04](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/synthesis/experiments/unify-via-let.html#EXPERIMENTS.UNIFY-VIA-LET.04) | (assertEqualToResult (let (g $Y) (Link $X B) (Link $X $Y))) | () | () |
| PASS | [EXPERIMENTS.UNIFY-VIA-LET.05](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/synthesis/experiments/unify-via-let.html#EXPERIMENTS.UNIFY-VIA-LET.05) | (assertEqualToResult (let* (($Gy (g $Y)) ($Gy (Link $X B))) (Link $X $Y))) | ((Link A B)) | ((Link A B)) |
| PASS | [EXPERIMENTS.UNIFY-VIA-LET.06](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/synthesis/experiments/unify-via-let.html#EXPERIMENTS.UNIFY-VIA-LET.06) | (assertEqualToResult (let (Link A $Y) (superpose ((Link $X B) (Node A) (Link $X C))) (Link $X $Y))) | ((Link A B) (Link A C)) | ((Link A B) (Link A C)) |
| PASS | [EXPERIMENTS.UNIFY-VIA-LET.07](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/synthesis/experiments/unify-via-let.html#EXPERIMENTS.UNIFY-VIA-LET.07) | (assertEqualToResult (let* (($Z (g $Y)) ($Z (f $X))) $Z)) | ((Link A B)) | ((Link A B)) |
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
| PASS | [FORMULA.DEDUCTIONFORMULATEST.10](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/common/formula/DeductionFormulaTest.html#FORMULA.DEDUCTIONFORMULATEST.10) | (assertEqualToResult (ded_formula (PrCnt 1 10) (PrCnt 1 4) (PrCnt 1 2) (PrCnt 1 3) (PrCnt 1 5))) | ((PrCnt 1 1)) | ((PrCnt 1 1)) |
| PASS | [FORMULA.DEDUCTIONFORMULATEST.11](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/common/formula/DeductionFormulaTest.html#FORMULA.DEDUCTIONFORMULATEST.11) | (assertEqualToResult (conditional-probability-consistency 0.2 0.3 1)) | (True) | (True) |
| PASS | [FORMULA.DEDUCTIONFORMULATEST.12](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/common/formula/DeductionFormulaTest.html#FORMULA.DEDUCTIONFORMULATEST.12) | (assertEqualToResult (conditional-probability-consistency 0.3 0.4 0.9)) | (True) | (True) |
| PASS | [FORMULA.DEDUCTIONFORMULATEST.13](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/common/formula/DeductionFormulaTest.html#FORMULA.DEDUCTIONFORMULATEST.13) | (assertEqualToResult (deduction-formula (STV 0.2 0.3) (STV 0.3 0.2) (STV 0.4 0.1) (STV 1 0.5) (STV 0.9 0.7))) | ((STV 0.9 0.1)) | ((STV 0.9 0.1)) |
| PASS | [INTERP.STRUCTURE-TESTS.101](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/interp/structure-tests.html#INTERP.STRUCTURE-TESTS.101) | (exec (collapse (superpose ((superpose (1 2 3 1 2 3 1 2 3 1 2 3 1 2 3 1 2 3 1 2 3 1 2 3)) (superpose (1 2 3 1 2 3 1 2 3 1 2 3 1 2 3 1 2 3 1 2 3 1 2 3)) (superpose (4 5 6 4 5 6 4 5 6 4 5 6 4 5 6 4 5 6| ((1 2 3 1 2 3 1 2 3 1 2 3 1 2 3 1 2 3 1 2 3 1 2 3 1 2 3 1 2 3 1 2 3 1 2 3 1 2 3 1 2 3 1 2 3 1 2 3 4 ... | ((1 2 3 1 2 3 1 2 3 1 2 3 1 2 3 1 2 3 1 2 3 1 2 3 1 2 3 1 2 3 1 2 3 1 2 3 1 2 3 1 2 3 1 2 3 1 2 3 4 5 6 4 5 6 4 5 6 4 5 6 4 5 6 4 5 6 4 5 6 4 5 6 4 5 6 4 5 6 4 5 6 4 5 6 4 5 6 4 5 6 4 5 6 4 5 6 7 8 9|
| FAIL | [JOHN-CARRY-FLOWER.JOHN-CARRY-FLOWER-TEST.01](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/sumo/john-carry-flower/john-carry-flower-test.html#JOHN-CARRY-FLOWER.JOHN-CARRY-FLOWER-TEST.01) | (assertEqualToResult (synthesize (: $Proof (instance JohnsCarry Transfer)) kb rb (fromNumber 2))) | () | ((: (ModusPonens (WitnessOf (â¹ (â§ (subclass Carrying Transfer) (instance JohnsCarry Carrying)) (instance JohnsCarry Transfer))) (BinaryConjunctionIntroduction (WitnessOf (subclass Carrying Transf|
| FAIL | [JOHN-CARRY-FLOWER.JOHN-CARRY-FLOWER-TEST.02](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/sumo/john-carry-flower/john-carry-flower-test.html#JOHN-CARRY-FLOWER.JOHN-CARRY-FLOWER-TEST.02) | (assertEqualToResult (synthesize (: $Proof (â§ (instance JohnsCarry Transfer) (objectTransferred JohnsCarry JohnsVase) (orientation JohnsFlower JohnsVase Inside))) kb rb (fromNumber 3))) | () | ((let* (((: $_65826 (â¹ $_66210 (â§ (instance JohnsCarry Transfer) (objectTransferred JohnsCarry JohnsVase) (orientation JohnsFlower JohnsVase Inside)))) (synthesize (: $_65826 (â¹ $_66210 (â§ (i|
| FAIL | [JOHN-CARRY-FLOWER.JOHN-CARRY-FLOWER-TEST.03](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/sumo/john-carry-flower/john-carry-flower-test.html#JOHN-CARRY-FLOWER.JOHN-CARRY-FLOWER-TEST.03) | (assertEqualToResult (synthesize (: $Proof (objectTransferred JohnsCarry JohnsFlower)) kb rb (fromNumber 4))) | () | ((: (ModusPonens (WitnessOf (â¹ (â§ (instance JohnsCarry Transfer) (objectTransferred JohnsCarry JohnsVase) (orientation JohnsFlower JohnsVase Inside)) (objectTransferred JohnsCarry JohnsFlower))) |
| FAIL | [JOHN-CARRY-FLOWER.JOHN-CARRY-FLOWER-TEST.04](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/sumo/john-carry-flower/john-carry-flower-test.html#JOHN-CARRY-FLOWER.JOHN-CARRY-FLOWER-TEST.04) | (assertEqualToResult (synthesize (: $Proof (â§ (instance $C Carrying) (agent $C John) (instance $False Flower) (objectTransferred $C $False))) kb rb (fromNumber 5))) | () | ((let* (((: $_5272 (â¹ $_5302 (â§ (instance $_5092 Carrying) (agent $_5092 John) (instance $_5152 Flower) (objectTransferred $_5092 $_5152)))) (synthesize (: $_5272 (â¹ $_5302 (â§ (instance $_509|
| FAIL | [MATCH.DEDUCTIONIMPLICATIONDIRECTINTRODUCTIONMATCHTEST.01](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/match/DeductionImplicationDirectIntroductionMatchTest.html#MATCH.DEDUCTIONIMPLICATIONDIRECTINTRODUCTIONMATCHTEST.01) | (assertEqualToResult (match &self (and (â $P $Ptv) (â $Q $Qtv) (â $R $Rtv) (â ($P $A) $Patv) (â ($Q $A) $Qatv) (â $A $Ev) (â (â $Q $R) $Qrtv)) (deduction (â $P $Ptv) (â $Q $Qtv) (| ((deduction True True True (â (â P Q) (ETV (insert 42 Empty) (idi_formula (Bl True) (Bl False) (... | ((â (â Q R) (PrCnt 1 1)) (â (â Q R) (PrCnt 1 1)) (â (â Q R) (PrCnt 1 1)) (â (â Q R) (PrCnt 1 1)) (â (â Q R) (PrCnt 1 1)) (â (â Q R) (PrCnt 1 1)) (â (â Q R) (PrCnt 1 1)) (â|
| FAIL | [MINECRAFT.TEST-MINECRAFT-PLANNING.01](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/minecraft/test_minecraft_planning.html#MINECRAFT.TEST-MINECRAFT-PLANNING.01) | (assertEqual (in-inventory wooden-pickaxe)) | ((in-inventory wooden-pickaxe)) | (False) |
| FAIL | [MINECRAFT.TEST-MINECRAFT-PLANNING.02](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/minecraft/test_minecraft_planning.html#MINECRAFT.TEST-MINECRAFT-PLANNING.02) | (assertEqual (in-inventory four-planks)) | ((in-inventory four-planks)) | (True) |
| FAIL | [MINECRAFT.TEST-MINECRAFT-PLANNING.03](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/minecraft/test_minecraft_planning.html#MINECRAFT.TEST-MINECRAFT-PLANNING.03) | (assertEqual (in-inventory crafting-table)) | ((in-inventory crafting-table)) | (True) |
| FAIL | [MINECRAFT.TEST-MINECRAFT-PLANNING.04](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/minecraft/test_minecraft_planning.html#MINECRAFT.TEST-MINECRAFT-PLANNING.04) | (assertEqual (in-inventory wooden-pickaxe)) | ((in-inventory wooden-pickaxe)) | (True) |
| FAIL | [MINECRAFT.TEST-MINECRAFT-PLANNING-WITH-ABSTRACTIONS.01](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/minecraft/test_minecraft_planning_with_abstractions.html#MINECRAFT.TEST-MINECRAFT-PLANNING-WITH-ABSTRACTIONS.01) | (assertEqual (in-inventory diamond)) | ((in-inventory diamond)) | (False) |
| FAIL | [MINECRAFT.TEST-MINECRAFT-PLANNING-WITH-ABSTRACTIONS.02](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/minecraft/test_minecraft_planning_with_abstractions.html#MINECRAFT.TEST-MINECRAFT-PLANNING-WITH-ABSTRACTIONS.02) | (assertEqual (in-inventory diamond)) | ((in-inventory diamond)) | (True) |
| PASS | [MINER.MINERMATCHTEST.101](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/miner/MinerMatchTest.html#MINER.MINERMATCHTEST.101) | (exec (new-named-space Linkspace)) | () | () |
| PASS | [MINER.MINERMATCHTEST.101](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/miner/MinerMatchTest.html#MINER.MINERMATCHTEST.101) | (exec (new-named-space Linkspace)) | () | () |
| FAIL | [MINER.MINERMATCHTEST.102](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/miner/MinerMatchTest.html#MINER.MINERMATCHTEST.102) | (exec (new-named-space Xspace)) | ((Error (import! &db "data/sample.metta") Failed to load module "data/sample.metta;" could not locat... | (True) |
| FAIL | [MINER.MINERUTILS.102](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/miner/MinerUtils.html#MINER.MINERUTILS.102) | (exec (new-named-space Xspace)) | () | (True) |
| FAIL | [MINER.MINERUTILS.103](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/miner/MinerUtils.html#MINER.MINERUTILS.103) | (exec (new-named-space Yspace)) | () | (True) |
| FAIL | [MINER.MINERUTILS.104](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/miner/MinerUtils.html#MINER.MINERUTILS.104) | (exec (new-named-space Linkspace)) | () | (True) |
| PASS | [NARS.TESTS0.01](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/nars/tests0.html#NARS.TESTS0.01) | (assertEqualToResult (|- ((Garfield --> cat) (1.0 0.9)) ((cat --> animal) (1.0 0.9)))) | (((Garfield --> animal) (1.0 0.81)) ((animal --> Garfield) (1.0 0.44751381215469616))) | (((animal --> Garfield) (1.0 0.44751381215469616)) ((Garfield --> animal) (1.0 0.81))) |
| PASS | [NARS.TESTS0.02](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/nars/tests0.html#NARS.TESTS0.02) | (assertEqualToResult (|- ((Garfield --> carnivore) (1.0 0.9)) (((Garfield --> cat) ==> (Garfield --> carnivore)) (1.0 0.9)))) | (((Garfield --> cat) (1.0 0.44751381215469616))) | (((Garfield --> cat) (1.0 0.44751381215469616))) |
| PASS | [NARS.TESTS0.03](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/nars/tests0.html#NARS.TESTS0.03) | (assertEqualToResult (|- ((({ a b }) --> mwawa) (1.0 0.9)))) | (((({} a) --> mwawa) (1.0 0.81)) ((({} b) --> mwawa) (1.0 0.81))) | (((({} a) --> mwawa) (1.0 0.81)) ((({} b) --> mwawa) (1.0 0.81))) |
| PASS | [NARS.TESTS0.04](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/nars/tests0.html#NARS.TESTS0.04) | (assertEqualToResult (|- (((a * b) --> R) (1.0 0.9)))) | (((a --> (R /1 b)) (1.0 0.81)) ((b --> (R /2 a)) (1.0 0.81))) | (((a --> (R /1 b)) (1.0 0.81)) ((b --> (R /2 a)) (1.0 0.81))) |
| PASS | [NARS.TESTS0.05](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/nars/tests0.html#NARS.TESTS0.05) | (assertEqualToResult (|- ((R --> (a * b)) (1.0 0.9)))) | ((((R \1 b) --> a) (1.0 0.81)) (((R \2 a) --> b) (1.0 0.81))) | ((((R \1 b) --> a) (1.0 0.81)) (((R \2 a) --> b) (1.0 0.81))) |
| PASS | [NARS.TESTS0.06](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/nars/tests0.html#NARS.TESTS0.06) | (assertEqualToResult (|- ((A --> cat) (1.0 0.9)) ((B --> cat) (1.0 0.9)))) | (((B --> A) (1.0 0.44751381215469616)) ((B <-> A) (1.0 0.44751381215469616)) (((A & B) --> cat) (1.0... | (((B --> A) (1.0 0.44751381215469616)) (((A ~ B) --> cat) (0.0 0.81)) (((A | B) --> cat) (1.0 0.81)) ((B <-> A) (1.0 0.44751381215469616)) (((A & B) --> cat) (1.0 0.81))) |
| PASS | [NARS.TESTS0.07](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/nars/tests0.html#NARS.TESTS0.07) | (assertEqualToResult (|- (|- ((Garfield --> cat) (1.0 0.9)) ((cat --> animal) (1.0 0.9))) ((animal --> being) (1.0 0.9)))) | (((Garfield --> being) (1.0 0.7290000000000001)) ((animal --> (Garfield & being)) (1.0 0.40276243093... | (((animal --> (Garfield | being)) (1.0 0.40276243093922653)) ((animal --> (Garfield & being)) (1.0 0.40276243093922653)) ((animal --> (Garfield - being)) (0.0 0.40276243093922653)) ((being <-> Garfield) (1.0 0.28712091374556914)) ((being --> Garfield) (1.0 0.28712091374556914)) ((being --> Garfield) (1.0 0.42163100057836905)) ((Garfield --> being) (1.0 0.7290000000000001))) |
| PASS | [NARS.TESTS1.01](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/nars/tests1.html#NARS.TESTS1.01) | (assertEqual (TupleCount (get-atoms &belief_events))) | (0) | (0) |
| FAIL | [ORIENTATION.ORIENTATION-TEST.103](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/sumo/orientation/orientation-test.html#ORIENTATION.ORIENTATION-TEST.103) | (exec (match &kb $X (add-atom &labelled-kb (: (WitnessOf $X) $X)))) | () | (True) |
| PASS | [ORIENTATION.ORIENTATION-TEST.104](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/sumo/orientation/orientation-test.html#ORIENTATION.ORIENTATION-TEST.104) | (exec (synthesize (: $Proof (orientation A B Right)) kb rb Z)) | () | () |
| PASS | [ORIENTATION.ORIENTATION-TEST.105](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/sumo/orientation/orientation-test.html#ORIENTATION.ORIENTATION-TEST.105) | (exec (synthesize (: $Proof (orientation A C Right)) kb rb (fromNumber 2))) | () | () |
| PASS | [PROB-DEP-TYPES.INF-ORDER-PROBS.01](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/prob-dep-types/inf_order_probs.html#PROB-DEP-TYPES.INF-ORDER-PROBS.01) | (assertEqualToResult (sample ("a'"))) | ("b'" "c'") | ("b'" "b'" "c'" "c'" "c'" "b'" "b'" "c'" "c'" "c'" "b'" "b'" "c'" "c'" "c'" "b'" "b'" "c'" "c'" "c'" "b'" "b'" "c'" "c'" "c'" "b'" "b'" "c'" "c'" "c'") |
| PASS | [PROB-DEP-TYPES.INF-ORDER-PROBS.02](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/prob-dep-types/inf_order_probs.html#PROB-DEP-TYPES.INF-ORDER-PROBS.02) | (assertEqualToResult (sample ((sample ("a'"))))) | ("a'" "c'" "d'") | ("a'" "a'" "a'" "c'" "c'" "c'" "a'" "a'" "a'" "c'" "c'" "c'" "a'" "a'" "a'" "c'" "c'" "c'" "a'" "a'" "a'" "c'" "c'" "c'" "a'" "a'" "a'" "c'" "c'" "c'" "a'" "a'" "a'" "c'" "c'" "c'" "a'" "a'" "a'" "c'|
| PASS | [PROB-DEP-TYPES.INF-ORDER-PROBS.03](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/prob-dep-types/inf_order_probs.html#PROB-DEP-TYPES.INF-ORDER-PROBS.03) | (assertEqualToResult (sample ("c'"))) | ("d'") | ("d'" "d'") |
| PASS | [PROB-DEP-TYPES.INF-ORDER-PROBS.04](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/prob-dep-types/inf_order_probs.html#PROB-DEP-TYPES.INF-ORDER-PROBS.04) | (assertEqualToResult (sample ((sample ("c'"))))) | ("a'") | ("a'" "a'" "a'" "a'" "a'" "a'") |
| PASS | [PROB-DEP-TYPES.INF-ORDER-PROBS.05](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/prob-dep-types/inf_order_probs.html#PROB-DEP-TYPES.INF-ORDER-PROBS.05) | (assertEqualToResult (sample ((sample ((sample ("c'"))))))) | ("b'" "c'") | ("b'" "b'" "c'" "c'" "c'" "b'" "b'" "c'" "c'" "c'" "b'" "b'" "c'" "c'" "c'" "b'" "b'" "c'" "c'" "c'" "b'" "b'" "c'" "c'" "c'" "b'" "b'" "c'" "c'" "c'" "b'" "b'" "c'" "c'" "c'" "b'" "b'" "c'" "c'" "c'|
| PASS | [PROB-DEP-TYPES.INF-ORDER-PROBS.06](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/prob-dep-types/inf_order_probs.html#PROB-DEP-TYPES.INF-ORDER-PROBS.06) | (assertEqualToResult (match &self (: A $True) ($True))) | ((B) (D) (Type)) | ((Type) (B) (B) (B) (B) (D) (D) (D) (D)) |
| PASS | [PROB-DEP-TYPES.INF-ORDER-PROBS.07](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/prob-dep-types/inf_order_probs.html#PROB-DEP-TYPES.INF-ORDER-PROBS.07) | (assertEqualToResult (Distribution (Distribution "U_ABCD'"))) | ("U_ABCD'") | ("U_ABCD'") |
| PASS | [PROB-DEP-TYPES.INF-ORDER-PROBS.08](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/prob-dep-types/inf_order_probs.html#PROB-DEP-TYPES.INF-ORDER-PROBS.08) | (assertEqualToResult (match &self (: a $True) ($True))) | ((A)) | ((A) (A) (A) (A) (A) (A) (A) (A) (A)) |
| PASS | [PROB-DEP-TYPES.INF-ORDER-PROBS.09](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/prob-dep-types/inf_order_probs.html#PROB-DEP-TYPES.INF-ORDER-PROBS.09) | (assertEqualToResult (match &self (: "a'" $True) ($True))) | (("U_ABCD'")) | (("U_ABCD'")) |
| FAIL | [PROB-DEP-TYPES.INF-ORDER-PROBS.101](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/prob-dep-types/inf_order_probs.html#PROB-DEP-TYPES.INF-ORDER-PROBS.101) | (exec (sample ("a'"))) | ("c'," "c'," "c'," "b'," "b'," "c'," "c'," "c'," "b'," "b'," "c'," "c'," "c'," "b'," "b'," "c'," "c'... | ("b'" "c'" "b'" "c'" "b'" "c'" "b'" "c'") |
| FAIL | [PROB-DEP-TYPES.INF-ORDER-PROBS.103](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/prob-dep-types/inf_order_probs.html#PROB-DEP-TYPES.INF-ORDER-PROBS.103) | (exec (sample ((sample ("a'"))))) | ((Error ((sample ("a'"))) NoValidAlternatives)) | ("a'" "c'" "a'" "c'" "d'" "d'" "a'" "c'" "a'" "c'" "d'" "d'") |
| PASS | [PROB-DEP-TYPES.PROB-DEP-TYPES.01](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/prob-dep-types/prob_dep_types.html#PROB-DEP-TYPES.PROB-DEP-TYPES.01) | (assertEqualToResult (sample (Bernoulli))) | (False True) | (True False) |
| PASS | [PROB-DEP-TYPES.PROB-DEP-TYPES.02](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/prob-dep-types/prob_dep_types.html#PROB-DEP-TYPES.PROB-DEP-TYPES.02) | (assertEqualToResult (sample (ColDist))) | (Blue Green Red) | (Red Green Red Blue) |
| PASS | [PROB-DEP-TYPES.PROB-DEP-TYPES.03](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/prob-dep-types/prob_dep_types.html#PROB-DEP-TYPES.PROB-DEP-TYPES.03) | (assertEqualToResult (sample (HybridDist))) | (Blue False Green Red True) | (True False Red Green Red Blue) |
| FAIL | [PROB-DEP-TYPES.PROB-DEP-TYPES.04](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/prob-dep-types/prob_dep_types.html#PROB-DEP-TYPES.PROB-DEP-TYPES.04) | (assertEqualToResult (HybridPerm (sample (HybridDist)))) | (Blue False Green Red True (ColPerm False) (ColPerm True) (Not Blue) (Not Green) (Not Red)) | (False True Green Blue Green Red) |
| FAIL | [PROB-DEP-TYPES.PROB-DEP-TYPES.05](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/prob-dep-types/prob_dep_types.html#PROB-DEP-TYPES.PROB-DEP-TYPES.05) | (assertEqualToResult (sample (SecondOrderColDist))) | ((thunk Blue) (thunk Green) (thunk Red)) | ((thunk (random Red (random Green Blue))) (thunk (ColPerm (sample (ColDist))))) |
| PASS | [PROB-DEP-TYPES.PROB-DEP-TYPES.06](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/prob-dep-types/prob_dep_types.html#PROB-DEP-TYPES.PROB-DEP-TYPES.06) | (assertEqualToResult (sample (FlattenedColDist))) | (Blue Green Red) | (Red Green Red Blue Green Blue Green Red) |
| FAIL | [PROB-DEP-TYPES.PROB-DEP-TYPES.07](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/prob-dep-types/prob_dep_types.html#PROB-DEP-TYPES.PROB-DEP-TYPES.07) | (assertEqualToResult (sample (SecondOrderHybridDist))) | ((thunk Blue) (thunk False) (thunk Green) (thunk Red) (thunk True) (thunk (ColPerm False)) (thunk (C... | ((thunk (f (sample (Bernoulli)))) (thunk (HybridPerm (sample (HybridDist))))) |
| FAIL | [PROB-DEP-TYPES.PROB-DEP-TYPES.08](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/prob-dep-types/prob_dep_types.html#PROB-DEP-TYPES.PROB-DEP-TYPES.08) | (assertEqualToResult (sample (FlattenedHybridDist))) | (Blue False Green Red True (ColPerm False) (ColPerm True) (Not Blue) (Not Green) (Not Red)) | (True False Red Green Red Blue False True Green Blue Green Red) |
| FAIL | [PROB-DEP-TYPES.PROB-DEP-TYPES.101](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/prob-dep-types/prob_dep_types.html#PROB-DEP-TYPES.PROB-DEP-TYPES.101) | (exec (sample (Bernoulli))) | ("True," False) | (True False True False) |
| FAIL | [PROB-DEP-TYPES.PROB-DEP-TYPES.103](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/prob-dep-types/prob_dep_types.html#PROB-DEP-TYPES.PROB-DEP-TYPES.103) | (exec (sample (ColDist))) | ("Red," "Green," "Red," Blue) | (Red Green Red Blue Red Green Blue Red Green Red Blue Red Green Blue) |
| FAIL | [PROB-DEP-TYPES.PROB-DEP-TYPES.105](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/prob-dep-types/prob_dep_types.html#PROB-DEP-TYPES.PROB-DEP-TYPES.105) | (exec (sample (HybridDist))) | ("True," "False," "Red," "Green," "Red," Blue) | (True False True False Red Green Red Blue Red Green Blue Red Green Red Blue Red Green Blue True False True False Red Green Red Blue Red Green Blue Red Green Red Blue Red Green Blue) |
| FAIL | [PROB-DEP-TYPES.PROB-DEP-TYPES.107](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/prob-dep-types/prob_dep_types.html#PROB-DEP-TYPES.PROB-DEP-TYPES.107) | (exec (HybridPerm (sample (HybridDist)))) | ("False," "True," "Green," "Blue," "Green," Red) | (False (ColPerm True) True (ColPerm False) False (ColPerm True) True (ColPerm False) (Not Red) Green (Not Green) Blue (Not Red) Green (Not Blue) Red (Not Red) Green (Not Green) Blue (Not Blue) Red (N|
| FAIL | [PROB-DEP-TYPES.PROB-DEP-TYPES.109](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/prob-dep-types/prob_dep_types.html#PROB-DEP-TYPES.PROB-DEP-TYPES.109) | (exec (sample (SecondOrderColDist))) | ((thunk (random Red (random Green Blue))) (thunk (ColPerm (sample (ColDist))))) | ((thunk Red) (thunk Green) (thunk Blue) (thunk Green) (thunk Red) (thunk Green) (thunk Blue) (thunk Red) (thunk Green) (thunk Green) (thunk Blue) (thunk Green) (thunk Red) (thunk Green) (thunk Blue) |
| FAIL | [PROB-DEP-TYPES.PROB-DEP-TYPES.111](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/prob-dep-types/prob_dep_types.html#PROB-DEP-TYPES.PROB-DEP-TYPES.111) | (exec (sample (FlattenedColDist))) | ("Red," "Green," "Red," "Blue," "Green," "Blue," "Green," Red) | (Red Green Blue Green Red Green Blue Red Green Green Blue Green Red Green Blue Red Red Green Blue Green Red Green Blue Red Blue Green Blue Green Red Green Blue Red Red Green Blue Green Red Green Blue|
| FAIL | [PROB-DEP-TYPES.PROB-DEP-TYPES.113](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/prob-dep-types/prob_dep_types.html#PROB-DEP-TYPES.PROB-DEP-TYPES.113) | (exec (sample (SecondOrderHybridDist))) | ((thunk (f (sample (Bernoulli)))) (thunk (HybridPerm (sample (HybridDist))))) | ((thunk True) (thunk False) (thunk (ColPerm True)) (thunk True) (thunk (ColPerm False)) (thunk False) (thunk (ColPerm True)) (thunk True) (thunk (ColPerm False)) (thunk (Not Red)) (thunk Green) (thun|
| FAIL | [PROB-DEP-TYPES.PROB-DEP-TYPES.115](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/prob-dep-types/prob_dep_types.html#PROB-DEP-TYPES.PROB-DEP-TYPES.115) | (exec (sample (FlattenedHybridDist))) | ("True," "False," "Red," "Green," "Red," "Blue," "False," "True," "Green," "Blue," "Green," Red) | (True False (ColPerm True) True (ColPerm False) False (ColPerm True) True (ColPerm False) (Not Red) Green (Not Green) Blue (Not Red) Green (Not Blue) Red (Not Red) Green (Not Green) Blue (Not Blue) R|
| FAIL | [SYNTHESIS.UNIFYTEST.102](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/synthesis/UnifyTest.html#SYNTHESIS.UNIFYTEST.102) | (exec (unify (Link $X B) (Link A $Y) (Link $X $Y))) | ((Link A B)) | ((Link A $_507184)) |
| FAIL | [SYNTHESIS.UNIFYTEST.103](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/synthesis/UnifyTest.html#SYNTHESIS.UNIFYTEST.103) | (exec (unify* (((Link $X B $Z) (Link A $Y $Z)) ($Z C)) (Link $X $Y $Z))) | ((Link A B C)) | () |
| PASS | [SYNTHESIS.UNIFYTEST.104](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/synthesis/UnifyTest.html#SYNTHESIS.UNIFYTEST.104) | (exec (unify* (((: $Ructor (-> $Premise1 $Premise2 $Conclusion)) (: -> (-> $B $C) (-> $A $B) (-> $A $C))) ((: ($Ructor $Proof1 $Proof2) $Conclusion) (: $Term (-> Number Bool))) ((: $Proof1 $Premise1)| () | () |
| PASS | [SCRIPTS.00-LANG-CASE.01](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/scripts/00_lang_case.html#SCRIPTS.00-LANG-CASE.01) | (assertEqual (+ 1 (superpose (1 2 3)))) | (2 3 4) | (2 3 4) |
| PASS | [SCRIPTS.00-LANG-CASE.02](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/scripts/00_lang_case.html#SCRIPTS.00-LANG-CASE.02) | (assertEqual (+ 1 (superpose (1 2 3)))) | (2 3 4) | (2 3 4) |
| PASS | [SCRIPTS.00-LANG-CASE.03](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/scripts/00_lang_case.html#SCRIPTS.00-LANG-CASE.03) | (assertEqual ((superpose (1 2 3)))) | ((1) (2) (3)) | ((1) (2) (3)) |
| PASS | [SCRIPTS.00-LANG-CASE.04](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/scripts/00_lang_case.html#SCRIPTS.00-LANG-CASE.04) | (assertEqual (case (+ 1 5) ((5 Error) (6 OK) (6 Error)))) | (OK) | (OK) |
| PASS | [SCRIPTS.00-LANG-CASE.05](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/scripts/00_lang_case.html#SCRIPTS.00-LANG-CASE.05) | (assertEqual (case (+ 1 5) (($X (+ 1 $X))))) | (7) | (7) |
| PASS | [SCRIPTS.00-LANG-CASE.06](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/scripts/00_lang_case.html#SCRIPTS.00-LANG-CASE.06) | (assertEqual (case 5 ((6 OK)))) | () | () |
| PASS | [SCRIPTS.00-LANG-CASE.07](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/scripts/00_lang_case.html#SCRIPTS.00-LANG-CASE.07) | (assertEqual (case (+ 1 (superpose (1 2 3))) ((3 OK-3) (4 OK-4)))) | (OK-3 OK-4) | (OK-3 OK-4) |
| PASS | [SCRIPTS.00-LANG-CASE.08](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/scripts/00_lang_case.html#SCRIPTS.00-LANG-CASE.08) | (assertEqual (case (+ 1 (superpose (1 2 3))) (($X (+ 1 $X))))) | (3 4 5) | (3 4 5) |
| PASS | [SCRIPTS.00-LANG-CASE.09](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/scripts/00_lang_case.html#SCRIPTS.00-LANG-CASE.09) | (assertEqual (match &self ($Rel A $X) ($Rel $X))) | ((Rel-P B) (Rel-Q C)) | ((Rel-P B) (Rel-Q C)) |
| PASS | [SCRIPTS.00-LANG-CASE.10](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/scripts/00_lang_case.html#SCRIPTS.00-LANG-CASE.10) | (assertEqual (superpose ((P B) (Q C)))) | ((P B) (Q C)) | ((P B) (Q C)) |
| PASS | [SCRIPTS.00-LANG-CASE.11](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/scripts/00_lang_case.html#SCRIPTS.00-LANG-CASE.11) | (assertEqual (case (match &self ($Rel B $X) ($Rel $X)) (((Rel-P $Y) (P $Y)) ((Rel-Q $Y) (Q $Y)) (%void% no-match)))) | (no-match) | (no-match) |
| PASS | [SCRIPTS.01-LANG-INC.01](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/scripts/01_lang_inc.html#SCRIPTS.01-LANG-INC.01) | (assertEqual (maybe-inc Nothing)) | (Nothing) | (Nothing) |
| PASS | [SCRIPTS.01-LANG-INC.02](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/scripts/01_lang_inc.html#SCRIPTS.01-LANG-INC.02) | (assertEqual (maybe-inc (Just 2))) | ((Just 3)) | ((Just 3)) |
| PASS | [SCRIPTS.02-CURRIED-PLUS.01](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/scripts/02-curried-plus.html#SCRIPTS.02-CURRIED-PLUS.01) | (assertEqualToResult ((inc) 2)) | (3) | (3) |
| PASS | [SCRIPTS.03-SORING-VIA-INSERT.01](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/scripts/03-soring-via-insert.html#SCRIPTS.03-SORING-VIA-INSERT.01) | (assertEqual (Cons 1 ())) | ((Cons 1 ())) | ((Cons 1 ())) |
| PASS | [SCRIPTS.03-SORING-VIA-INSERT.02](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/scripts/03-soring-via-insert.html#SCRIPTS.03-SORING-VIA-INSERT.02) | (assertEqual (insert 1 ())) | ((Cons 1 ())) | ((Cons 1 ())) |
| PASS | [SCRIPTS.03-SORING-VIA-INSERT.03](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/scripts/03-soring-via-insert.html#SCRIPTS.03-SORING-VIA-INSERT.03) | (assertEqual (insert 2 (insert 1 ()))) | ((Cons 1 (Cons 2 ()))) | ((Cons 1 (Cons 2 ()))) |
| PASS | [SCRIPTS.03-SORING-VIA-INSERT.04](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/scripts/03-soring-via-insert.html#SCRIPTS.03-SORING-VIA-INSERT.04) | (assertEqual (insert 1 (insert 2 ()))) | ((Cons 1 (Cons 2 ()))) | ((Cons 1 (Cons 2 ()))) |
| PASS | [SCRIPTS.03-SORING-VIA-INSERT.05](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/scripts/03-soring-via-insert.html#SCRIPTS.03-SORING-VIA-INSERT.05) | (assertEqual (insert 3 (insert 2 (insert 1 ())))) | ((Cons 1 (Cons 2 (Cons 3 ())))) | ((Cons 1 (Cons 2 (Cons 3 ())))) |
| PASS | [SCRIPTS.A1-SYMBOLS.01](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/scripts/a1_symbols.html#SCRIPTS.A1-SYMBOLS.01) | (assertEqualToResult (match &self (($X leaf2) leaf3) $X)) | (leaf1 (leaf0 leaf1)) | (leaf1 (leaf0 leaf1)) |
| PASS | [SCRIPTS.A1-SYMBOLS.02](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/scripts/a1_symbols.html#SCRIPTS.A1-SYMBOLS.02) | (assertEqualToResult (match &self ($Who is a $What) ($Who the $What))) | ((Sam the frog) (Sophia the robot) (Tom the cat)) | ((Sam the frog) (Tom the cat) (Sophia the robot)) |
| PASS | [SCRIPTS.A1-SYMBOLS.03](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/scripts/a1_symbols.html#SCRIPTS.A1-SYMBOLS.03) | (assertEqualToResult (match &self (:= (Green $Who) True) ($Who is really green))) | ((Sam is really green)) | ((Sam is really green)) |
| PASS | [SCRIPTS.A1-SYMBOLS.04](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/scripts/a1_symbols.html#SCRIPTS.A1-SYMBOLS.04) | (assertEqualToResult (match &self (:= ($Color $Who) True) ($Who is really $Color))) | ((Sam is really Green) (Tom is really White)) | ((Sam is really Green) (Tom is really White)) |
| PASS | [SCRIPTS.A1-SYMBOLS.05](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/scripts/a1_symbols.html#SCRIPTS.A1-SYMBOLS.05) | (assertEqualToResult (match &self (:= ($Color $Who) $Tv) ("It's" $Tv that $Who is $Color))) | (("It's" False that Tom is Green) ("It's" True that Sam is Green) ("It's" True that Tom is White)) | (("It's" True that Sam is Green) ("It's" True that Tom is White) ("It's" False that Tom is Green)) |
| PASS | [SCRIPTS.A1-SYMBOLS.06](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/scripts/a1_symbols.html#SCRIPTS.A1-SYMBOLS.06) | (assertEqualToResult (match &self (:= (Green Tom) $Tv) $Tv)) | (False) | (False) |
| PASS | [SCRIPTS.A1-SYMBOLS.07](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/scripts/a1_symbols.html#SCRIPTS.A1-SYMBOLS.07) | (assertEqualToResult (match &self (isa $Color color) $Color)) | (blue green red) | (red green blue) |
| PASS | [SCRIPTS.A2-OPENCOGGY.01](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/scripts/a2_opencoggy.html#SCRIPTS.A2-OPENCOGGY.01) | (assertEqualToResult (match &self (EvaluationLink (PredicateNode "eats") (ListLink $X (ConceptNode "flies"))) $X)) | ((ConceptNode "Fritz") (ConceptNode "Sam")) | ((ConceptNode "Sam") (ConceptNode "Fritz")) |
| PASS | [SCRIPTS.A3-TWOSIDE.01](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/scripts/a3_twoside.html#SCRIPTS.A3-TWOSIDE.01) | (assertEqualToResult (match &self (implies (Frog Sam) $What) $What)) | ((Eats-flies Sam) (Green Sam)) | ((Green Sam) (Eats-flies Sam)) |
| PASS | [SCRIPTS.A3-TWOSIDE.02](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/scripts/a3_twoside.html#SCRIPTS.A3-TWOSIDE.02) | (assertEqualToResult (match &self (implies ($P $X) (Green Sam)) ($X might be $P))) | ((Sam might be Frog)) | ((Sam might be Frog)) |
| PASS | [SCRIPTS.A3-TWOSIDE.03](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/scripts/a3_twoside.html#SCRIPTS.A3-TWOSIDE.03) | (assertEqualToResult (match &self (and (Frog $X) (implies (Frog $X) $Y)) $Y)) | ((Eats-flies Sam) (Green Sam)) | ((Green Sam) (Eats-flies Sam)) |
| PASS | [SCRIPTS.A3-TWOSIDE.04](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/scripts/a3_twoside.html#SCRIPTS.A3-TWOSIDE.04) | (assertEqualToResult (match &self (and (implies ($P $X) (Green $X)) (implies ($P $X) (Eats-flies $X))) (Then it is definitely $P))) | ((Then it is definitely Frog)) | ((Then it is definitely Frog)) |
| PASS | [SCRIPTS.B0-CHAINING-PRELIM.01](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/scripts/b0_chaining_prelim.html#SCRIPTS.B0-CHAINING-PRELIM.01) | (assertEqualToResult (match &self (:= (S K K x) $R) $R)) | ((K x (K x))) | ((K x (K x))) |
| PASS | [SCRIPTS.B0-CHAINING-PRELIM.02](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/scripts/b0_chaining_prelim.html#SCRIPTS.B0-CHAINING-PRELIM.02) | (assertEqualToResult (match &self (:= (K x (K x)) $R) $R)) | (x) | (x) |
| PASS | [SCRIPTS.B0-CHAINING-PRELIM.03](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/scripts/b0_chaining_prelim.html#SCRIPTS.B0-CHAINING-PRELIM.03) | (assertEqualToResult (match &self (:= (S K K x) $R) (match &self (:= $R $R2) $R2))) | (x) | (x) |
| PASS | [SCRIPTS.B0-CHAINING-PRELIM.04](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/scripts/b0_chaining_prelim.html#SCRIPTS.B0-CHAINING-PRELIM.04) | (assertEqualToResult (match &self (:= (Add (S Z) (S Z)) $R) $R)) | ((Add (S (S Z)) Z)) | ((Add (S (S Z)) Z)) |
| PASS | [SCRIPTS.B0-CHAINING-PRELIM.05](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/scripts/b0_chaining_prelim.html#SCRIPTS.B0-CHAINING-PRELIM.05) | (assertEqualToResult (match &self (:= (Add (S Z) (S Z)) $R) (match &self (:= $R $R2) $R2))) | ((S (S Z))) | ((S (S Z))) |
| PASS | [SCRIPTS.B1-EQUAL-CHAIN.01](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/scripts/b1_equal_chain.html#SCRIPTS.B1-EQUAL-CHAIN.01) | (assertEqual (S K K x)) | (x) | (x) |
| PASS | [SCRIPTS.B1-EQUAL-CHAIN.02](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/scripts/b1_equal_chain.html#SCRIPTS.B1-EQUAL-CHAIN.02) | (assertEqualToResult (expression without known equalities)) | ((expression without known equalities)) | ((expression without known equalities)) |
| PASS | [SCRIPTS.B1-EQUAL-CHAIN.03](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/scripts/b1_equal_chain.html#SCRIPTS.B1-EQUAL-CHAIN.03) | (assertEqual (Add (S Z) (S Z))) | ((S (S Z))) | ((S (S Z))) |
| PASS | [SCRIPTS.B1-EQUAL-CHAIN.04](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/scripts/b1_equal_chain.html#SCRIPTS.B1-EQUAL-CHAIN.04) | (assertEqual (Something? (Add (S Z) (S Z)))) | ((Something? (S (S Z)))) | ((Something? (S (S Z)))) |
| PASS | [SCRIPTS.B1-EQUAL-CHAIN.05](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/scripts/b1_equal_chain.html#SCRIPTS.B1-EQUAL-CHAIN.05) | (assertEqual (eq (S K K x) x)) | (True) | (True) |
| PASS | [SCRIPTS.B1-EQUAL-CHAIN.06](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/scripts/b1_equal_chain.html#SCRIPTS.B1-EQUAL-CHAIN.06) | (assertEqualToResult (eq Green Blue)) | ((eq Green Blue)) | ((eq Green Blue)) |
| FAIL | [SCRIPTS.B2-BACKCHAIN.01](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/scripts/b2_backchain.html#SCRIPTS.B2-BACKCHAIN.01) | (assertEqualToResult (Frog Sam)) | (True) | ((Frog Sam)) |
| PASS | [SCRIPTS.B2-BACKCHAIN.02](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/scripts/b2_backchain.html#SCRIPTS.B2-BACKCHAIN.02) | (assertEqual (frog Sam)) | (True) | (True) |
| PASS | [SCRIPTS.B2-BACKCHAIN.03](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/scripts/b2_backchain.html#SCRIPTS.B2-BACKCHAIN.03) | (assertEqualToResult (frog Fritz)) | () | () |
| PASS | [SCRIPTS.B2-BACKCHAIN.04](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/scripts/b2_backchain.html#SCRIPTS.B2-BACKCHAIN.04) | (assertEqual (deduce (Evaluation (mortal Plato)))) | (True) | (True) |
| PASS | [SCRIPTS.B2-BACKCHAIN.05](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/scripts/b2_backchain.html#SCRIPTS.B2-BACKCHAIN.05) | (assertEqual (explain (Evaluation (mortal Plato)))) | (((mortal Plato) proven by ((human Plato) proven by True))) | (((mortal Plato) proven by ((human Plato) proven by True))) |
| PASS | [SCRIPTS.B3-DIRECT.01](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/scripts/b3_direct.html#SCRIPTS.B3-DIRECT.01) | (assertEqual (green Fritz)) | (True) | (True) |
| PASS | [SCRIPTS.B3-DIRECT.02](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/scripts/b3_direct.html#SCRIPTS.B3-DIRECT.02) | (assertEqual (ift (green $X) $X)) | (Fritz) | (Fritz) |
| PASS | [SCRIPTS.B3-DIRECT.03](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/scripts/b3_direct.html#SCRIPTS.B3-DIRECT.03) | (assertEqualToResult (match &self (= ($P Fritz) True) $P)) | (croaks eat_flies) | (croaks eat_flies) |
| PASS | [SCRIPTS.B4-NONDETERM.01](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/scripts/b4_nondeterm.html#SCRIPTS.B4-NONDETERM.01) | (assertEqual (match &self (= (color) $X) $X)) | (green red yellow) | (green red yellow) |
| PASS | [SCRIPTS.B4-NONDETERM.02](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/scripts/b4_nondeterm.html#SCRIPTS.B4-NONDETERM.02) | (assertEqual (collapse (match &self (= (shape) $X) $X))) | (()) | (()) |
| PASS | [SCRIPTS.B4-NONDETERM.03](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/scripts/b4_nondeterm.html#SCRIPTS.B4-NONDETERM.03) | (assertEqual (color)) | (green red yellow) | (green red yellow) |
| PASS | [SCRIPTS.B4-NONDETERM.04](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/scripts/b4_nondeterm.html#SCRIPTS.B4-NONDETERM.04) | (assertEqual (color)) | (green red yellow) | (green red yellow) |
| PASS | [SCRIPTS.B4-NONDETERM.05](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/scripts/b4_nondeterm.html#SCRIPTS.B4-NONDETERM.05) | (assertEqual (collapse (shape))) | (((shape))) | (((shape))) |
| PASS | [SCRIPTS.B4-NONDETERM.06](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/scripts/b4_nondeterm.html#SCRIPTS.B4-NONDETERM.06) | (assertEqualToResult (shape)) | ((shape)) | ((shape)) |
| PASS | [SCRIPTS.B4-NONDETERM.07](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/scripts/b4_nondeterm.html#SCRIPTS.B4-NONDETERM.07) | (assertEqualToResult (pair (bin) (bin))) | ((A A) (A B) (B A) (B B)) | ((A A) (A B) (B A) (B B)) |
| PASS | [SCRIPTS.B4-NONDETERM.08](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/scripts/b4_nondeterm.html#SCRIPTS.B4-NONDETERM.08) | (assertEqual (find-equal (color) (foo))) | (red) | (red) |
| PASS | [SCRIPTS.B4-NONDETERM.09](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/scripts/b4_nondeterm.html#SCRIPTS.B4-NONDETERM.09) | (assertEqualToResult (rev A (superpose (B C D)))) | ((B A) (C A) (D A)) | ((B A) (C A) (D A)) |
| PASS | [SCRIPTS.B4-NONDETERM.10](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/scripts/b4_nondeterm.html#SCRIPTS.B4-NONDETERM.10) | (assertEqual (is (air dry))) | ((start humidifier) (start kettle) (stop ventilation)) | ((start humidifier) (start kettle) (stop ventilation)) |
| PASS | [SCRIPTS.B4-NONDETERM.11](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/scripts/b4_nondeterm.html#SCRIPTS.B4-NONDETERM.11) | (assertEqual (is (air wet))) | ((start ventilation) (stop humidifier) (stop kettle)) | ((start ventilation) (stop humidifier) (stop kettle)) |
| PASS | [SCRIPTS.B5-TYPES-PRELIM.01](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/scripts/b5_types_prelim.html#SCRIPTS.B5-TYPES-PRELIM.01) | (assertEqual (Add S Z)) | (S) | (S) |
| PASS | [SCRIPTS.B5-TYPES-PRELIM.03](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/scripts/b5_types_prelim.html#SCRIPTS.B5-TYPES-PRELIM.03) | (assertEqual (Add (S Z) Z)) | ((S Z)) | ((S Z)) |
| PASS | [SCRIPTS.B5-TYPES-PRELIM.04](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/scripts/b5_types_prelim.html#SCRIPTS.B5-TYPES-PRELIM.04) | (assertEqual (Add Z (S Z))) | ((S Z)) | ((S Z)) |
| PASS | [SCRIPTS.B5-TYPES-PRELIM.05](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/scripts/b5_types_prelim.html#SCRIPTS.B5-TYPES-PRELIM.05) | (assertEqual (Add Something Z)) | (Something) | (Something) |
| PASS | [SCRIPTS.B5-TYPES-PRELIM.06](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/scripts/b5_types_prelim.html#SCRIPTS.B5-TYPES-PRELIM.06) | (assertEqualToResult (Add Z Ten)) | ((Add Z Ten)) | ((Add Z Ten)) |
| PASS | [SCRIPTS.B5-TYPES-PRELIM.07](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/scripts/b5_types_prelim.html#SCRIPTS.B5-TYPES-PRELIM.07) | (assertEqualToResult (Cons (S Z) (Cons Z ()))) | ((Cons (S Z) (Cons Z ()))) | ((Cons (S Z) (Cons Z ()))) |
| PASS | [SCRIPTS.B5-TYPES-PRELIM.09](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/scripts/b5_types_prelim.html#SCRIPTS.B5-TYPES-PRELIM.09) | (assertEqual (eq (Add Z Z) Z)) | (True) | (True) |
| PASS | [SCRIPTS.B5-TYPES-PRELIM.10](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/scripts/b5_types_prelim.html#SCRIPTS.B5-TYPES-PRELIM.10) | (assertEqualToResult (eq Z (S Z))) | ((eq Z (S Z))) | ((eq Z (S Z))) |
| PASS | [SCRIPTS.B5-TYPES-PRELIM.12](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/scripts/b5_types_prelim.html#SCRIPTS.B5-TYPES-PRELIM.12) | (assertEqual (of-same-type Color Shape)) | (True) | (True) |
| PASS | [SCRIPTS.B5-TYPES-PRELIM.13](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/scripts/b5_types_prelim.html#SCRIPTS.B5-TYPES-PRELIM.13) | (assertEqual (of-same-type Green Red)) | (True) | (True) |
| PASS | [SCRIPTS.B5-TYPES-PRELIM.16](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/scripts/b5_types_prelim.html#SCRIPTS.B5-TYPES-PRELIM.16) | (assertEqual (Green $Who)) | (True) | (True) |
| PASS | [SCRIPTS.B5-TYPES-PRELIM.17](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/scripts/b5_types_prelim.html#SCRIPTS.B5-TYPES-PRELIM.17) | (assertEqual (match &self (Green $Who) $Who)) | (Sam) | (Sam) |
| PASS | [SCRIPTS.B5-TYPES-PRELIM.18](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/scripts/b5_types_prelim.html#SCRIPTS.B5-TYPES-PRELIM.18) | (assertEqual (match &self (Green $Who) (Green $Who))) | (True) | (True) |
| PASS | [SCRIPTS.B5-TYPES-PRELIM.19](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/scripts/b5_types_prelim.html#SCRIPTS.B5-TYPES-PRELIM.19) | (assertEqual (let $R (Add (S Z) Z) (match &self (= (eq $R (S Z)) $Tv) $Tv))) | (True) | (True) |
| PASS | [SCRIPTS.B5-TYPES-PRELIM.20](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/scripts/b5_types_prelim.html#SCRIPTS.B5-TYPES-PRELIM.20) | (assertEqualToResult (match &self (= (eq (Add (S Z) Z) (S Z)) $Tv) $Tv)) | () | () |
| PASS | [SCRIPTS.B5-TYPES-PRELIM.21](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/scripts/b5_types_prelim.html#SCRIPTS.B5-TYPES-PRELIM.21) | (assertEqual (let (S (S $R)) (Add (S Z) (S Z)) $R)) | (Z) | (Z) |
| PASS | [SCRIPTS.B5-TYPES-PRELIM.22](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/scripts/b5_types_prelim.html#SCRIPTS.B5-TYPES-PRELIM.22) | (assertEqual (let* (($R1 (Add Z Z)) ($R2 (Add $R1 (S Z))) ($R3 (Add $R2 (S Z)))) (match &self (= (eq (S (S Z)) $R3) $Tv) $Tv))) | (True) | (True) |
| PASS | [SCRIPTS.B5-TYPES-PRELIM.23](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/scripts/b5_types_prelim.html#SCRIPTS.B5-TYPES-PRELIM.23) | (assertEqual (eqa (Add Z Z) (Add Z Z))) | (True) | (True) |
| FAIL | [SCRIPTS.B5-TYPES-PRELIM.24](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/scripts/b5_types_prelim.html#SCRIPTS.B5-TYPES-PRELIM.24) | (assertEqualToResult (eqa Z (Add Z Z))) | (True) | ((eqa Z (Add Z Z))) |
| PASS | [SCRIPTS.B5-TYPES-PRELIM.25](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/scripts/b5_types_prelim.html#SCRIPTS.B5-TYPES-PRELIM.25) | (assertEqual (eq Z (Add Z Z))) | (True) | (True) |
| PASS | [SCRIPTS.B5-TYPES-PRELIM.26](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/scripts/b5_types_prelim.html#SCRIPTS.B5-TYPES-PRELIM.26) | (assertEqual (let $Z (Add Z Z) (eqa Z $Z))) | (True) | (True) |
| PASS | [SCRIPTS.C1-GROUNDED-BASIC.01](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/scripts/c1_grounded_basic.html#SCRIPTS.C1-GROUNDED-BASIC.01) | (assertEqualToResult (+ 2 (* 3 5.5))) | (18.5) | (18.5) |
| PASS | [SCRIPTS.C1-GROUNDED-BASIC.02](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/scripts/c1_grounded_basic.html#SCRIPTS.C1-GROUNDED-BASIC.02) | (assertEqualToResult (- 8 (/ 4 6.4))) | (7.375) | (7.375) |
| PASS | [SCRIPTS.C1-GROUNDED-BASIC.03](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/scripts/c1_grounded_basic.html#SCRIPTS.C1-GROUNDED-BASIC.03) | (assertEqualToResult (% 21 17)) | (4) | (4) |
| PASS | [SCRIPTS.C1-GROUNDED-BASIC.04](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/scripts/c1_grounded_basic.html#SCRIPTS.C1-GROUNDED-BASIC.04) | (assertEqualToResult (< 4 (+ 2 (* 3 5)))) | (True) | (True) |
| PASS | [SCRIPTS.C1-GROUNDED-BASIC.05](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/scripts/c1_grounded_basic.html#SCRIPTS.C1-GROUNDED-BASIC.05) | (assertEqualToResult (and (> 4 2) (< 4 3))) | (False) | (False) |
| PASS | [SCRIPTS.C1-GROUNDED-BASIC.06](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/scripts/c1_grounded_basic.html#SCRIPTS.C1-GROUNDED-BASIC.06) | (assertEqualToResult (ln (+ 2 2))) | ((ln 4)) | ((ln 4)) |
| PASS | [SCRIPTS.C1-GROUNDED-BASIC.07](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/scripts/c1_grounded_basic.html#SCRIPTS.C1-GROUNDED-BASIC.07) | (assertEqualToResult (> 4 (+ ln 2))) | ((> 4 (+ ln 2))) | ((> 4 (+ ln 2))) |
| PASS | [SCRIPTS.C1-GROUNDED-BASIC.08](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/scripts/c1_grounded_basic.html#SCRIPTS.C1-GROUNDED-BASIC.08) | (assertEqualToResult (> 4 (+ $X 2))) | ((> 4 (+ $_482260 2))) | ((> 4 (+ $_476300 2))) |
| PASS | [SCRIPTS.C1-GROUNDED-BASIC.09](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/scripts/c1_grounded_basic.html#SCRIPTS.C1-GROUNDED-BASIC.09) | (assertEqualToResult (== 4 (+ 2 2))) | (True) | (True) |
| PASS | [SCRIPTS.C1-GROUNDED-BASIC.10](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/scripts/c1_grounded_basic.html#SCRIPTS.C1-GROUNDED-BASIC.10) | (assertEqualToResult (== 2 3)) | (False) | (False) |
| PASS | [SCRIPTS.C1-GROUNDED-BASIC.11](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/scripts/c1_grounded_basic.html#SCRIPTS.C1-GROUNDED-BASIC.11) | (assertEqualToResult (== (A B) (A B))) | (True) | (True) |
| PASS | [SCRIPTS.C1-GROUNDED-BASIC.12](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/scripts/c1_grounded_basic.html#SCRIPTS.C1-GROUNDED-BASIC.12) | (assertEqualToResult (== (A B) (A (B C)))) | (False) | (False) |
| PASS | [SCRIPTS.C1-GROUNDED-BASIC.13](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/scripts/c1_grounded_basic.html#SCRIPTS.C1-GROUNDED-BASIC.13) | (assertEqualToResult (== 4 (+ ln 2))) | (False) | (False) |
| PASS | [SCRIPTS.C1-GROUNDED-BASIC.16](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/scripts/c1_grounded_basic.html#SCRIPTS.C1-GROUNDED-BASIC.16) | (assertEqualToResult (sqr 4)) | (16) | (16) |
| PASS | [SCRIPTS.C1-GROUNDED-BASIC.17](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/scripts/c1_grounded_basic.html#SCRIPTS.C1-GROUNDED-BASIC.17) | (assertEqual (+ (superpose (1 2 3)) 1)) | (2 3 4) | (2 3 4) |
| PASS | [SCRIPTS.C1-GROUNDED-BASIC.18](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/scripts/c1_grounded_basic.html#SCRIPTS.C1-GROUNDED-BASIC.18) | (assertEqualToResult (bin)) | (0 1) | (0 1) |
| PASS | [SCRIPTS.C1-GROUNDED-BASIC.19](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/scripts/c1_grounded_basic.html#SCRIPTS.C1-GROUNDED-BASIC.19) | (assertEqualToResult (+ 1 (bin))) | (1 2) | (1 2) |
| PASS | [SCRIPTS.C1-GROUNDED-BASIC.20](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/scripts/c1_grounded_basic.html#SCRIPTS.C1-GROUNDED-BASIC.20) | (assertEqualToResult (let $X (+ 2 3) (* $X $X))) | (25) | (25) |
| PASS | [SCRIPTS.C1-GROUNDED-BASIC.21](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/scripts/c1_grounded_basic.html#SCRIPTS.C1-GROUNDED-BASIC.21) | (assertEqual (fact 5)) | (120) | (120) |
| FAIL | [SCRIPTS.C1-GROUNDED-BASIC.22](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/scripts/c1_grounded_basic.html#SCRIPTS.C1-GROUNDED-BASIC.22) | (assertEqualToResult (let $True (gen 3) (if (== (subsum (:: 3 (:: 7 (:: 5 nil))) $True) 8) $True (nop)))) | ($_66666 $_66672 $_66738 $_66744 $_66750 $_66756 $_66762 (:: 1 (:: 0 (:: 1 nil)))) | ((:: 1 (:: 0 (:: 1 nil)))) |
| PASS | [SCRIPTS.C2-SPACES.01](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/scripts/c2_spaces.html#SCRIPTS.C2-SPACES.01) | (assertEqualToResult (match &kb (and ($Obj is $Prop) ($Prop is-a Color) ($Obj is-a Planet)) (Color of Planet $Obj is $Prop))) | ((Color of Planet Mars is Red)) | ((Color of Planet Mars is Red)) |
| PASS | [SCRIPTS.C2-SPACES.02](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/scripts/c2_spaces.html#SCRIPTS.C2-SPACES.02) | (assertEqualToResult (match &self ($P is-a Color) $P)) | () | () |
| PASS | [SCRIPTS.C2-SPACES.03](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/scripts/c2_spaces.html#SCRIPTS.C2-SPACES.03) | (assertEqual (match &kb (and (Venus orbit $X au) (Mars orbit $Y au)) (- $Y $X))) | (0.8) | (0.8) |
| PASS | [SCRIPTS.C2-SPACES.04](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/scripts/c2_spaces.html#SCRIPTS.C2-SPACES.04) | (assertEqualToResult (match &kb ($Prop is-a Color) (match &self ($Obj is $Prop) $Obj))) | (Ball) | (Ball) |
| PASS | [SCRIPTS.C2-SPACES.05](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/scripts/c2_spaces.html#SCRIPTS.C2-SPACES.05) | (assertEqualToResult (match &self (and ($Obj is $Prop) ($Prop is-a Color) ($Obj is-a Planet)) (Color of Planet $Obj is $Prop))) | ((Color of Planet Mars is Red)) | ((Color of Planet Mars is Red)) |
| PASS | [SCRIPTS.C3-PLN-STV.01](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/scripts/c3_pln_stv.html#SCRIPTS.C3-PLN-STV.01) | (assertEqual (TV (And (PA) (PB)))) | ((stv 0.3 0.8)) | ((stv 0.3 0.8)) |
| PASS | [SCRIPTS.C3-PLN-STV.02](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/scripts/c3_pln_stv.html#SCRIPTS.C3-PLN-STV.02) | (assertEqual (TV (FA))) | ((stv 0.4 0.8)) | ((stv 0.4 0.8)) |
| PASS | [SCRIPTS.C3-PLN-STV.03](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/scripts/c3_pln_stv.html#SCRIPTS.C3-PLN-STV.03) | (assertEqual (TV (croaks Fritz))) | ((stv 0.95 0.85)) | ((stv 0.95 0.85)) |
| PASS | [SCRIPTS.C3-PLN-STV.04](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/scripts/c3_pln_stv.html#SCRIPTS.C3-PLN-STV.04) | (assertEqual (TV (frog Fritz))) | ((stv 0.783 0.68)) | ((stv 0.783 0.68)) |
| PASS | [SCRIPTS.C3-PLN-STV.05](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/scripts/c3_pln_stv.html#SCRIPTS.C3-PLN-STV.05) | (assertEqual (TV (green Fritz))) | ((stv 0.7047 0.68)) | ((stv 0.7047 0.68)) |
| PASS | [SCRIPTS.D1-GADT.01](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/scripts/d1_gadt.html#SCRIPTS.D1-GADT.01) | (assertEqual (get-type 5)) | (Number) | (Number) |
| PASS | [SCRIPTS.D1-GADT.02](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/scripts/d1_gadt.html#SCRIPTS.D1-GADT.02) | (assertEqual (get-type (+ 5 7))) | (Number) | (Number) |
| PASS | [SCRIPTS.D1-GADT.03](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/scripts/d1_gadt.html#SCRIPTS.D1-GADT.03) | (assertEqual (get-type +)) | ((-> Number Number Number)) | ((-> Number Number Number)) |
| FAIL | [SCRIPTS.D1-GADT.04](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/scripts/d1_gadt.html#SCRIPTS.D1-GADT.04) | (assertEqualToResult (get-type (+ 5 "4"))) | (Number) | () |
| FAIL | [SCRIPTS.D1-GADT.05](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/scripts/d1_gadt.html#SCRIPTS.D1-GADT.05) | (assertEqualToResult (get-type (+ -))) | (Number) | () |
| PASS | [SCRIPTS.D1-GADT.06](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/scripts/d1_gadt.html#SCRIPTS.D1-GADT.06) | (assertEqual (get-type Either)) | (Type) | (Type) |
| PASS | [SCRIPTS.D1-GADT.07](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/scripts/d1_gadt.html#SCRIPTS.D1-GADT.07) | (assertEqual (get-type (Left 5))) | (Either) | (Either) |
| PASS | [SCRIPTS.D1-GADT.08](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/scripts/d1_gadt.html#SCRIPTS.D1-GADT.08) | (assertEqual (get-type (isLeft (Right 5)))) | (Bool) | (Bool) |
| FAIL | [SCRIPTS.D1-GADT.09](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/scripts/d1_gadt.html#SCRIPTS.D1-GADT.09) | (assertEqualToResult (get-type (isLeft 5))) | (Bool) | () |
| FAIL | [SCRIPTS.D1-GADT.10](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/scripts/d1_gadt.html#SCRIPTS.D1-GADT.10) | (assertEqual (get-type (LeftP 5))) | () | ((EitherP Number)) |
| FAIL | [SCRIPTS.D1-GADT.11](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/scripts/d1_gadt.html#SCRIPTS.D1-GADT.11) | (assertEqual (get-type (pair (LeftP 5) "String"))) | () | ((Pair (EitherP Number) String)) |
| FAIL | [SCRIPTS.D1-GADT.12](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/scripts/d1_gadt.html#SCRIPTS.D1-GADT.12) | (assertEqual (get-type (Cons 5 (Cons 6 ())))) | () | ((List Number)) |
| PASS | [SCRIPTS.D1-GADT.13](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/scripts/d1_gadt.html#SCRIPTS.D1-GADT.13) | (assertEqualToResult (get-type (Cons 5 (Cons "6" ())))) | () | () |
| FAIL | [SCRIPTS.D1-GADT.14](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/scripts/d1_gadt.html#SCRIPTS.D1-GADT.14) | (assertEqual (let (List $True) (get-type (Cons 5 (Cons 6 ()))) $True)) | () | (Number) |
| FAIL | [SCRIPTS.D2-HIGHERFUNC.01](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/scripts/d2_higherfunc.html#SCRIPTS.D2-HIGHERFUNC.01) | (assertEqual (get-type (curry +))) | () | ((-> Number (-> Number Number))) |
| FAIL | [SCRIPTS.D2-HIGHERFUNC.02](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/scripts/d2_higherfunc.html#SCRIPTS.D2-HIGHERFUNC.02) | (assertEqual (get-type ((curry +) 2))) | () | ((-> Number Number)) |
| PASS | [SCRIPTS.D2-HIGHERFUNC.03](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/scripts/d2_higherfunc.html#SCRIPTS.D2-HIGHERFUNC.03) | (assertEqualToResult ((curry +) 2)) | (((curry +) 2)) | (((curry +) 2)) |
| PASS | [SCRIPTS.D2-HIGHERFUNC.04](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/scripts/d2_higherfunc.html#SCRIPTS.D2-HIGHERFUNC.04) | (assertEqual (((curry +) 2) 3)) | (5) | (5) |
| FAIL | [SCRIPTS.D2-HIGHERFUNC.05](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/scripts/d2_higherfunc.html#SCRIPTS.D2-HIGHERFUNC.05) | (assertEqual (get-type (curry-a + 2))) | () | ((-> Number Number)) |
| PASS | [SCRIPTS.D2-HIGHERFUNC.06](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/scripts/d2_higherfunc.html#SCRIPTS.D2-HIGHERFUNC.06) | (assertEqual (get-type ((curry-a + 2) 3))) | (Number) | (Number) |
| FAIL | [SCRIPTS.D2-HIGHERFUNC.07](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/scripts/d2_higherfunc.html#SCRIPTS.D2-HIGHERFUNC.07) | (assertEqualToResult (get-type ((curry-a + 2) "S"))) | (Number) | () |
| PASS | [SCRIPTS.D2-HIGHERFUNC.08](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/scripts/d2_higherfunc.html#SCRIPTS.D2-HIGHERFUNC.08) | (assertEqual ((curry-a + 2) 3)) | (5) | (5) |
| PASS | [SCRIPTS.D2-HIGHERFUNC.09](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/scripts/d2_higherfunc.html#SCRIPTS.D2-HIGHERFUNC.09) | (assertEqualToResult (is-socrates)) | ((curry-a is Socrates)) | ((curry-a is Socrates)) |
| PASS | [SCRIPTS.D2-HIGHERFUNC.10](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/scripts/d2_higherfunc.html#SCRIPTS.D2-HIGHERFUNC.10) | (assertEqual ((curry-a is Socrates) Human)) | (True) | (True) |
| PASS | [SCRIPTS.D2-HIGHERFUNC.11](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/scripts/d2_higherfunc.html#SCRIPTS.D2-HIGHERFUNC.11) | (assertEqual ((is-socrates) Human)) | (True) | (True) |
| PASS | [SCRIPTS.D2-HIGHERFUNC.12](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/scripts/d2_higherfunc.html#SCRIPTS.D2-HIGHERFUNC.12) | (assertEqual ((lambda $X (+ $X 1)) 2)) | (3) | (3) |
| PASS | [SCRIPTS.D2-HIGHERFUNC.13](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/scripts/d2_higherfunc.html#SCRIPTS.D2-HIGHERFUNC.13) | (assertEqual ((lambda ($X $Y) (+ $X $Y)) (2 7))) | (9) | (9) |
| PASS | [SCRIPTS.D2-HIGHERFUNC.14](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/scripts/d2_higherfunc.html#SCRIPTS.D2-HIGHERFUNC.14) | (assertEqual ((inc) 5)) | (6) | (6) |
| PASS | [SCRIPTS.D2-HIGHERFUNC.15](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/scripts/d2_higherfunc.html#SCRIPTS.D2-HIGHERFUNC.15) | (assertEqual (fmap (curry-a + 2) (Something 5))) | ((Something 7)) | ((Something 7)) |
| PASS | [SCRIPTS.D2-HIGHERFUNC.16](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/scripts/d2_higherfunc.html#SCRIPTS.D2-HIGHERFUNC.16) | (assertEqual (fmap (curry-a + 2) (Nothing))) | ((Nothing)) | ((Nothing)) |
| FAIL | [SCRIPTS.D2-HIGHERFUNC.17](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/scripts/d2_higherfunc.html#SCRIPTS.D2-HIGHERFUNC.17) | (assertEqual (get-type (fmap (curry-a + 1) (Left 5)))) | () | ((Either Number)) |
| PASS | [SCRIPTS.D2-HIGHERFUNC.18](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/scripts/d2_higherfunc.html#SCRIPTS.D2-HIGHERFUNC.18) | (assertEqual (fmap (curry-a + 2) (UntypedC 5))) | ((UntypedC 7)) | ((UntypedC 7)) |
| PASS | [SCRIPTS.D2-HIGHERFUNC.19](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/scripts/d2_higherfunc.html#SCRIPTS.D2-HIGHERFUNC.19) | (assertEqual (fmap (curry-a + 2) (UntypedC 5 (UntypedC 8 (Null))))) | ((UntypedC 7 (UntypedC 10 (Null)))) | ((UntypedC 7 (UntypedC 10 (Null)))) |
| PASS | [SCRIPTS.D2-HIGHERFUNC.20](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/scripts/d2_higherfunc.html#SCRIPTS.D2-HIGHERFUNC.20) | (assertEqualToResult (get-type (fmap (curry-a + 2) (Left "5")))) | () | () |
| FAIL | [SCRIPTS.D2-HIGHERFUNC.21](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/scripts/d2_higherfunc.html#SCRIPTS.D2-HIGHERFUNC.21) | (assertEqualToResult (get-type (fmap (curry-a + 2) (UntypedC "5")))) | ((Symbol Number)) | () |
| PASS | [SCRIPTS.D2-HIGHERFUNC.22](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/scripts/d2_higherfunc.html#SCRIPTS.D2-HIGHERFUNC.22) | (assertEqualToResult (get-type (fmap (curry-a + 2) (UntypedC (Null) 5)))) | () | () |
| PASS | [SCRIPTS.D2-HIGHERFUNC.23](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/scripts/d2_higherfunc.html#SCRIPTS.D2-HIGHERFUNC.23) | (assertEqual (fmap-i (curry-a - 7) (Right 3))) | ((Right 4)) | ((Right 4)) |
| PASS | [SCRIPTS.D2-HIGHERFUNC.24](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/scripts/d2_higherfunc.html#SCRIPTS.D2-HIGHERFUNC.24) | (assertEqual (fmap-i (curry-a * 2) (Cons 3 (Cons 4 ())))) | ((Cons 6 (Cons 8 ()))) | ((Cons 6 (Cons 8 ()))) |
| PASS | [SCRIPTS.D2-HIGHERFUNC.25](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/scripts/d2_higherfunc.html#SCRIPTS.D2-HIGHERFUNC.25) | (assertEqualToResult (fmap-i (curry-a + 2) (Untyped 5))) | ((fmap-i (curry-a + 2) (Untyped 5))) | ((fmap-i (curry-a + 2) (Untyped 5))) |
| PASS | [SCRIPTS.D2-HIGHERFUNC.26](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/scripts/d2_higherfunc.html#SCRIPTS.D2-HIGHERFUNC.26) | (assertEqual (insert 3 (insert 2 (insert 1 ())))) | ((Cons 1 (Cons 2 (Cons 3 ())))) | ((Cons 1 (Cons 2 (Cons 3 ())))) |
| PASS | [SCRIPTS.D2-HIGHERFUNC.27](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/scripts/d2_higherfunc.html#SCRIPTS.D2-HIGHERFUNC.27) | (assertEqual (sort (Cons 3 (Cons 1 (Cons 2 ()))))) | ((Cons 1 (Cons 2 (Cons 3 ())))) | ((Cons 1 (Cons 2 (Cons 3 ())))) |
| FAIL | [SCRIPTS.D3-DEPTYPES.01](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/scripts/d3_deptypes.html#SCRIPTS.D3-DEPTYPES.01) | (assertEqual (get-type (Cons 0 (Cons 1 ())))) | () | ((Vec Number (S (S Z)))) |
| FAIL | [SCRIPTS.D3-DEPTYPES.02](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/scripts/d3_deptypes.html#SCRIPTS.D3-DEPTYPES.02) | (assertEqual (get-type (drop (Cons 1 ())))) | (Z) | ((Vec Number Z)) |
| PASS | [SCRIPTS.D3-DEPTYPES.03](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/scripts/d3_deptypes.html#SCRIPTS.D3-DEPTYPES.03) | (assertEqual (drop (Cons 2 (Cons 1 ())))) | ((Cons 1 ())) | ((Cons 1 ())) |
| PASS | [SCRIPTS.D3-DEPTYPES.04](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/scripts/d3_deptypes.html#SCRIPTS.D3-DEPTYPES.04) | (assertEqualToResult (get-type (drop ()))) | () | () |
| FAIL | [SCRIPTS.D3-DEPTYPES.05](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/scripts/d3_deptypes.html#SCRIPTS.D3-DEPTYPES.05) | (assertEqual (get-type (ConsN "1" (ConsN "2" NilN)))) | () | ((VecN String 2)) |
| FAIL | [SCRIPTS.D3-DEPTYPES.06](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/scripts/d3_deptypes.html#SCRIPTS.D3-DEPTYPES.06) | (assertEqual (get-type (dropN (ConsN "1" NilN)))) | () | ((VecN String 0)) |
| PASS | [SCRIPTS.D3-DEPTYPES.07](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/scripts/d3_deptypes.html#SCRIPTS.D3-DEPTYPES.07) | (assertEqualToResult (dropN NilN)) | ((dropN NilN)) | ((dropN NilN)) |
| PASS | [SCRIPTS.D4-TYPE-PROP.01](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/scripts/d4_type_prop.html#SCRIPTS.D4-TYPE-PROP.01) | (assertEqual (get-type (Mortal Plato))) | (Type) | (Type) |
| FAIL | [SCRIPTS.D4-TYPE-PROP.02](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/scripts/d4_type_prop.html#SCRIPTS.D4-TYPE-PROP.02) | (assertEqual (get-type (HumansAreMortal SocratesIsHuman))) | () | ((Mortal Socrates)) |
| PASS | [SCRIPTS.D4-TYPE-PROP.03](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/scripts/d4_type_prop.html#SCRIPTS.D4-TYPE-PROP.03) | (assertEqualToResult (get-type (HumansAreMortal (Human Socrates)))) | () | () |
| PASS | [SCRIPTS.D4-TYPE-PROP.04](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/scripts/d4_type_prop.html#SCRIPTS.D4-TYPE-PROP.04) | (assertEqual (get-type (= SocratesIsMortal (HumansAreMortal SocratesIsHuman)))) | (Type) | (Type) |
| PASS | [SCRIPTS.D4-TYPE-PROP.05](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/scripts/d4_type_prop.html#SCRIPTS.D4-TYPE-PROP.05) | (assertEqual (get-type (= (Mortal Socrates) (Mortal Plato)))) | (Type) | (Type) |
| FAIL | [SCRIPTS.D4-TYPE-PROP.06](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/scripts/d4_type_prop.html#SCRIPTS.D4-TYPE-PROP.06) | (assertEqualToResult (get-type (= SocratesIsMortal (HumansAreMortal PlatoIsHuman)))) | (Type) | () |
| FAIL | [SCRIPTS.D4-TYPE-PROP.07](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/scripts/d4_type_prop.html#SCRIPTS.D4-TYPE-PROP.07) | (assertEqualToResult (get-type (= SocratesIsHuman PlatoIsHuman))) | (Type) | () |
| FAIL | [SCRIPTS.D4-TYPE-PROP.08](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/scripts/d4_type_prop.html#SCRIPTS.D4-TYPE-PROP.08) | (assertEqualToResult (get-type (= SocratesIsHuman SocratesIsMortal))) | (Type) | () |
| PASS | [SCRIPTS.D4-TYPE-PROP.09](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/scripts/d4_type_prop.html#SCRIPTS.D4-TYPE-PROP.09) | (assertEqual (= SocratesIsMortal (HumansAreMortal SocratesIsHuman))) | (True) | (True) |
| PASS | [SCRIPTS.D4-TYPE-PROP.10](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/scripts/d4_type_prop.html#SCRIPTS.D4-TYPE-PROP.10) | (assertEqual (= (+ 1 1) (- 3 1))) | (True) | (True) |
| PASS | [SCRIPTS.D4-TYPE-PROP.11](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/scripts/d4_type_prop.html#SCRIPTS.D4-TYPE-PROP.11) | (assertEqual (= (Mortal Socrates) True)) | (True) | (True) |
| PASS | [SCRIPTS.D4-TYPE-PROP.12](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/scripts/d4_type_prop.html#SCRIPTS.D4-TYPE-PROP.12) | (assertEqualToResult (= (Mortal Plato) True)) | () | () |
| PASS | [SCRIPTS.D4-TYPE-PROP.13](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/scripts/d4_type_prop.html#SCRIPTS.D4-TYPE-PROP.13) | (assertEqual (= (Mortal Plato) True)) | (True) | (True) |
| PASS | [SCRIPTS.D4-TYPE-PROP.14](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/scripts/d4_type_prop.html#SCRIPTS.D4-TYPE-PROP.14) | (assertEqualToResult (= (Human Sam) True)) | () | () |
| PASS | [SCRIPTS.D4-TYPE-PROP.15](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/scripts/d4_type_prop.html#SCRIPTS.D4-TYPE-PROP.15) | (assertEqualToResult (Mortal Plato)) | ((Mortal Plato)) | ((Mortal Plato)) |
| FAIL | [SCRIPTS.D4-TYPE-PROP.16](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/scripts/d4_type_prop.html#SCRIPTS.D4-TYPE-PROP.16) | (assertEqual (= (= $X $X) True)) | () | (True) |
| PASS | [SCRIPTS.D4-TYPE-PROP.17](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/scripts/d4_type_prop.html#SCRIPTS.D4-TYPE-PROP.17) | (assertEqual (Mortal Plato)) | (True) | (True) |
| PASS | [SCRIPTS.D4-TYPE-PROP.18](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/scripts/d4_type_prop.html#SCRIPTS.D4-TYPE-PROP.18) | (assertEqualToResult (ift (Mortal $X) $X)) | (Plato Socrates) | (Socrates Plato) |
| PASS | [SCRIPTS.E1-KB-WRITE.01](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/scripts/e1_kb_write.html#SCRIPTS.E1-KB-WRITE.01) | (assertEqualToResult (let $X (+ 2 3) (* $X $X))) | (25) | (25) |
| FAIL | [SCRIPTS.E1-KB-WRITE.02](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/scripts/e1_kb_write.html#SCRIPTS.E1-KB-WRITE.02) | (assertEqualToResult (ift (green $X) (add-atom &kb (Green $X)))) | (True) | (() ()) |
| FAIL | [SCRIPTS.E1-KB-WRITE.03](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/scripts/e1_kb_write.html#SCRIPTS.E1-KB-WRITE.03) | (assertEqualToResult (match &kb (Green $X) $X)) | (Fritz) | (Fritz Sam) |
| PASS | [SCRIPTS.E2-STATES.01](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/scripts/e2_states.html#SCRIPTS.E2-STATES.01) | (assertEqual (get-state (get-token))) | ((A B)) | ((A B)) |
| PASS | [SCRIPTS.E2-STATES.02](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/scripts/e2_states.html#SCRIPTS.E2-STATES.02) | (assertEqual (get-token)) | ((State  (A B) $_2026)) | ((State  (A B) $_2056)) |
| PASS | [SCRIPTS.E2-STATES.03](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/scripts/e2_states.html#SCRIPTS.E2-STATES.03) | (assertEqual (get-type (new-state 2))) | ((StateMonad Number)) | ((StateMonad Number)) |
| PASS | [SCRIPTS.E2-STATES.04](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/scripts/e2_states.html#SCRIPTS.E2-STATES.04) | (assertEqual (get-type (change-state! (new-state "S") "V"))) | ((StateMonad String)) | ((StateMonad String)) |
| PASS | [SCRIPTS.E2-STATES.05](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/scripts/e2_states.html#SCRIPTS.E2-STATES.05) | (assertEqual (let $V (new-state 1) (get-type $V))) | ((StateMonad Number)) | ((StateMonad Number)) |
| FAIL | [SCRIPTS.E2-STATES.06](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/scripts/e2_states.html#SCRIPTS.E2-STATES.06) | (assertEqual (get-type &state-token)) | ((StateMonad (Symbol Symbol))) | ((StateMonad Expression)) |
| PASS | [SCRIPTS.E2-STATES.09](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/scripts/e2_states.html#SCRIPTS.E2-STATES.09) | (assertEqual (get-state (get-token))) | ((C D)) | ((C D)) |
| PASS | [SCRIPTS.E2-STATES.10](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/scripts/e2_states.html#SCRIPTS.E2-STATES.10) | (assertEqual (let $X (new-state 1) (change-state! $X (+ (get-state $X) 1)))) | ((State  2 $_382580)) | ((State  2 $_382764)) |
| FAIL | [SCRIPTS.E2-STATES.114](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/scripts/e2_states.html#SCRIPTS.E2-STATES.114) | (exec (get-state (let $X (new-state 1) $X))) | ((Error (let $X (new-state 1) $X) BadType)) | (1) |
| PASS | [SCRIPTS.E2-STATES.11](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/scripts/e2_states.html#SCRIPTS.E2-STATES.11) | (assertEqual (let $Tnso (new-state 1) $Tnso)) | ((State  1 $_412730)) | ((State  1 $_412914)) |
| PASS | [SCRIPTS.E3-MATCH-STATES.01](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/scripts/e3_match_states.html#SCRIPTS.E3-MATCH-STATES.01) | (assertEqual (get-state (status (Goal lunch-order)))) | (inactive) | (inactive) |
| FAIL | [SCRIPTS.E3-MATCH-STATES.02](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/scripts/e3_match_states.html#SCRIPTS.E3-MATCH-STATES.02) | (assertEqual (get-state (status (Goal lunch-order)))) | (inactive) | (active) |
| PASS | [SCRIPTS.E3-MATCH-STATES.03](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/scripts/e3_match_states.html#SCRIPTS.E3-MATCH-STATES.03) | (assertEqual (get-type &state-active)) | ((StateMonad Symbol)) | ((StateMonad Symbol)) |
| PASS | [SCRIPTS.E3-MATCH-STATES.04](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/scripts/e3_match_states.html#SCRIPTS.E3-MATCH-STATES.04) | (assertEqual (get-state &state-active)) | (inactive) | (inactive) |
| PASS | [SCRIPTS.E3-MATCH-STATES.05](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/scripts/e3_match_states.html#SCRIPTS.E3-MATCH-STATES.05) | (assertEqual &state-active) | ((State  inactive $_184848)) | ((State  inactive $_185032)) |
| FAIL | [SCRIPTS.E3-MATCH-STATES.06](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/scripts/e3_match_states.html#SCRIPTS.E3-MATCH-STATES.06) | (assertEqual (match &self (= (status (Goal $Goal)) &state-active) $Goal)) | () | (meditation) |
| FAIL | [SCRIPTS.E3-MATCH-STATES.07](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/scripts/e3_match_states.html#SCRIPTS.E3-MATCH-STATES.07) | (assertEqual (if (== (get-state (status (Goal $Goal))) active) $Goal (superpose ()))) | () | (lunch-order) |
| PASS | [SCRIPTS-EXTRAS.D2-AUTO-TYPES.102](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/scripts_extras/d2_auto_types.html#SCRIPTS-EXTRAS.D2-AUTO-TYPES.102) | (exec (HumansAreMortal SocratesIsHuman)) | ((HumansAreMortal SocratesIsHuman)) | ((HumansAreMortal SocratesIsHuman)) |
| FAIL | [SCRIPTS-EXTRAS.D2-AUTO-TYPES.103](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/scripts_extras/d2_auto_types.html#SCRIPTS-EXTRAS.D2-AUTO-TYPES.103) | (exec (HumansAreMortal (Human Socrates))) | ((Error (HumansAreMortal (Human Socrates)) BadType)) | ((HumansAreMortal (Human Socrates))) |
| PASS | [SCRIPTS-EXTRAS.D3-TYPED-PLN.102](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/scripts_extras/d3_typed_pln.html#SCRIPTS-EXTRAS.D3-TYPED-PLN.102) | (exec (HumansAreMortal (Human Socrates))) | ((HumansAreMortal True)) | ((HumansAreMortal True)) |
| PASS | [SCRIPTS-EXTRAS.D3-TYPED-PLN.103](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/scripts_extras/d3_typed_pln.html#SCRIPTS-EXTRAS.D3-TYPED-PLN.103) | (exec (= (Human Socrates) (Human Plato))) | (True) | (True True True True) |
| FAIL | [SCRIPTS-EXTRAS.D4-SELFMOD.102](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/scripts_extras/d4_selfmod.html#SCRIPTS-EXTRAS.D4-SELFMOD.102) | (exec (change-space-state greeted False)) | ((change-space-state greeted False)) | () |
| FAIL | [SCRIPTS-EXTRAS.D4-SELFMOD.103](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/scripts_extras/d4_selfmod.html#SCRIPTS-EXTRAS.D4-SELFMOD.103) | (exec (change-space-state (person name) "None")) | ((change-space-state (person name) "None")) | () |
| FAIL | [SCRIPTS-EXTRAS.D4-SELFMOD.104](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/scripts_extras/d4_selfmod.html#SCRIPTS-EXTRAS.D4-SELFMOD.104) | (exec (answer (listen (My name is "Alexey")))) | ((Error (answer (listen (My name is "Alexey"))) NoValidAlternatives)) | ((I thought you are (get-space-state (person name))) $_235340) |
| FAIL | [SCRIPTS.F1-IMPORTS.01](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/scripts/f1_imports.html#SCRIPTS.F1-IMPORTS.01) | (assertEqual ((let $X (get-atoms &self) (get-type $X)))) | (((let $_395946 (get-atoms &self) (get-type $_395946)))) | ((Symbol)) |
| PASS | [SCRIPTS.F1-IMPORTS.02](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/scripts/f1_imports.html#SCRIPTS.F1-IMPORTS.02) | (assertEqual (if (> 1 2) 1 2)) | (2) | (2) |
| PASS | [SCRIPTS.F1-IMPORTS.03](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/scripts/f1_imports.html#SCRIPTS.F1-IMPORTS.03) | (assertEqual (+ 1 2)) | (3) | (3) |
| FAIL | [SCRIPTS.F1-IMPORTS.04](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/scripts/f1_imports.html#SCRIPTS.F1-IMPORTS.04) | (assertEqual (let* (($X (collapse (get-atoms &m))) ($Y (car-atom $X))) (get-type $Y))) | () | (Symbol) |
| PASS | [SCRIPTS.F1-IMPORTS.05](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/scripts/f1_imports.html#SCRIPTS.F1-IMPORTS.05) | (assertEqual (match &m (= (f 2) $X) $X)) | ((g 3)) | ((g 3)) |
| PASS | [SCRIPTS.F1-IMPORTS.06](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/scripts/f1_imports.html#SCRIPTS.F1-IMPORTS.06) | (assertEqual (+ 1 2)) | (3) | (3) |
| PASS | [SCRIPTS.F1-IMPORTS.07](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/scripts/f1_imports.html#SCRIPTS.F1-IMPORTS.07) | (assertEqual (g 2)) | (102) | (102) |
| PASS | [SCRIPTS.F1-IMPORTS.08](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/scripts/f1_imports.html#SCRIPTS.F1-IMPORTS.08) | (assertEqual (f 2)) | (103) | (103) |
| FAIL | [SCRIPTS.F1-IMPORTS.09](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/scripts/f1_imports.html#SCRIPTS.F1-IMPORTS.09) | (assertEqual &m) | (&m) | () |
| PASS | [SCRIPTS.F1-IMPORTS.10](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/scripts/f1_imports.html#SCRIPTS.F1-IMPORTS.10) | (assertEqual (== (let* (($X (collapse (get-atoms &m))) ($Y (car-atom $X))) (get-type $Y)) (get-type &self))) | (False) | (False) |
| PASS | [SCRIPTS.F1-IMPORTS.11](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/scripts/f1_imports.html#SCRIPTS.F1-IMPORTS.11) | (assertEqual (if (> 1 2) 1 2)) | (2) | (2) |
| PASS | [SCRIPTS.F1-IMPORTS.12](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/scripts/f1_imports.html#SCRIPTS.F1-IMPORTS.12) | (assertEqual (g 2)) | (102) | (102) |
| PASS | [SCRIPTS.F1-IMPORTS.13](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/scripts/f1_imports.html#SCRIPTS.F1-IMPORTS.13) | (assertEqual (f 2)) | (103) | (103) |
| PASS | [SCRIPTS.F1-IMPORTS.14](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/scripts/f1_imports.html#SCRIPTS.F1-IMPORTS.14) | (assertEqualToResult (dup 2)) | (12 102) | (12 102) |
| PASS | [SCRIPTS.F1-IMPORTS.15](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/scripts/f1_imports.html#SCRIPTS.F1-IMPORTS.15) | (assertEqual (g 2)) | (102) | (102) |
| PASS | [SCRIPTS.F1-IMPORTS.16](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/scripts/f1_imports.html#SCRIPTS.F1-IMPORTS.16) | (assertEqual (f 2)) | (103) | (103) |
| PASS | [SCRIPTS.F1-IMPORTS.17](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/scripts/f1_imports.html#SCRIPTS.F1-IMPORTS.17) | (assertEqualToResult (dup 2)) | (12 102) | (12 102) |
| PASS | [SCRIPTS.F1-MODULEA.01](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/scripts/f1_moduleA.html#SCRIPTS.F1-MODULEA.01) | (assertEqual (+ 1 2)) | (3) | (3) |
| PASS | [TRUTHVALUE.EVIDENTIALTRUTHVALUETEST.01](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/common/truthvalue/EvidentialTruthValueTest.html#TRUTHVALUE.EVIDENTIALTRUTHVALUETEST.01) | (assertEqual (mode (ETV (Singleton 42) (STV 0.1 0.2)))) | (0.1) | (0.1) |
| PASS | [TRUTHVALUE.EVIDENTIALTRUTHVALUETEST.02](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/common/truthvalue/EvidentialTruthValueTest.html#TRUTHVALUE.EVIDENTIALTRUTHVALUETEST.02) | (assertEqual (mean (ETV (Singleton 42) (STV 0.1 0.9)))) | (0.14) | (0.14) |
| PASS | [TRUTHVALUE.EVIDENTIALTRUTHVALUETEST.03](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/common/truthvalue/EvidentialTruthValueTest.html#TRUTHVALUE.EVIDENTIALTRUTHVALUETEST.03) | (assertEqual (confidence (ETV (Singleton 42) (STV 0.1 0.2)))) | (0.2) | (0.2) |
| PASS | [TRUTHVALUE.EVIDENTIALTRUTHVALUETEST.04](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/common/truthvalue/EvidentialTruthValueTest.html#TRUTHVALUE.EVIDENTIALTRUTHVALUETEST.04) | (assertEqual (count (ETV (Singleton 42) (STV 0.1 0.9)))) | (9.000000000000002) | (9.000000000000002) |
| PASS | [TRUTHVALUE.TRUTHVALUETEST.01](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/common/truthvalue/TruthValueTest.html#TRUTHVALUE.TRUTHVALUETEST.01) | (assertEqual (count->confidence 10)) | (0.9090909090909091) | (0.9090909090909091) |
| PASS | [TRUTHVALUE.TRUTHVALUETEST.02](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/common/truthvalue/TruthValueTest.html#TRUTHVALUE.TRUTHVALUETEST.02) | (assertEqual (confidence->count 0.9)) | (9.000000000000002) | (9.000000000000002) |
| PASS | [TRUTHVALUE.TRUTHVALUETEST.03](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/common/truthvalue/TruthValueTest.html#TRUTHVALUE.TRUTHVALUETEST.03) | (assertEqual (mode (STV 0.1 0.2))) | (0.1) | (0.1) |
| PASS | [TRUTHVALUE.TRUTHVALUETEST.04](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/common/truthvalue/TruthValueTest.html#TRUTHVALUE.TRUTHVALUETEST.04) | (assertEqual (mean (STV 0.1 0.9))) | (0.14) | (0.14) |
| PASS | [TRUTHVALUE.TRUTHVALUETEST.05](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/common/truthvalue/TruthValueTest.html#TRUTHVALUE.TRUTHVALUETEST.05) | (assertEqual (confidence (STV 0.1 0.2))) | (0.2) | (0.2) |
| PASS | [TRUTHVALUE.TRUTHVALUETEST.06](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/common/truthvalue/TruthValueTest.html#TRUTHVALUE.TRUTHVALUETEST.06) | (assertEqual (count (STV 0.1 0.9))) | (9.000000000000002) | (9.000000000000002) |




Test Results:
334 Passed,
157 Failed,
491 Total,
68.02% Passed
 
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


