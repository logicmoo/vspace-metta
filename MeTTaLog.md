# MeTTaLog: An Implementation of MeTTa in Prolog

MeTTaLog is a superfluous implementaiton of MeTTa, a language designed to succeed OpenCog Classic Atomese.  It is part of the OpenCog Hyperon initiative and provides well-defined semantics for meta-language features, different types of inference, and more.

Jump to [MeTTaLog Installation Guide](https://github.com/logicmoo/vspace-metta/blob/main/MeTTaLog.md#installation-guide)

# Bugs in MeTTaLog

| Pass | Fail |Percent| Directory                                        |
|------|------|-------|--------------------------------------------------|
|     7|    27|    20%| reports/performance -                            |
|     0|     0|     0%| reports/override-compat/metta-examples/recursion-schemes/src/reports - |
|     0|     0|     0%| reports/override-compat/metta-examples/recursion-schemes/src - |
|     0|     0|     0%| reports/override-compat/metta-examples/recursion-schemes - |
|     0|     0|     0%| reports/override-compat/metta-examples -         |
|     0|     0|     0%| reports/override-compat/hyperon-miner/match -    |
|     0|     0|     0%| reports/override-compat/hyperon-miner -          |
|    40|    12|    76%| reports/override-compat/hyperon-experimental/python/tests/scripts - |
|    40|    12|    76%| reports/override-compat/hyperon-experimental/python/tests - |
|    40|    12|    76%| reports/override-compat/hyperon-experimental/python - |
|    40|    12|    76%| reports/override-compat/hyperon-experimental -   |
|    40|    12|    76%| reports/override-compat -                        |
|     0|     0|     0%| reports/old-compat/test_scripts_extras -         |
|     0|     0|     0%| reports/old-compat/recursion-schemes/src/reports - |
|     0|     0|     0%| reports/old-compat/recursion-schemes/src -       |
|     0|     0|     0%| reports/old-compat/recursion-schemes -           |
|    13|     4|    76%| reports/old-compat/prob-dep-types -              |
|     0|     6|     0%| reports/old-compat/minecraft -                   |
|    11|    50|    18%| reports/old-compat/hyperon-pln/prev-pln/synthesis/experiments - |
|    11|    50|    18%| reports/old-compat/hyperon-pln/prev-pln/synthesis - |
|    11|    50|    18%| reports/old-compat/hyperon-pln/prev-pln -        |
|    11|    50|    18%| reports/old-compat/hyperon-pln -                 |
|    24|    60|    28%| reports/old-compat -                             |
|     0|     0|     0%| reports/nars/current -                           |
|     0|     0|     0%| reports/nars -                                   |
|     4|     2|    66%| reports/features/compiler -                      |
|    46|    22|    67%| reports/features -                               |
|     5|    46|     9%| reports/compat/metta-morph/tests -               |
|     0|    11|     0%| reports/compat/metta-morph/extend -              |
|     5|    59|     7%| reports/compat/metta-morph -                     |
|     4|    13|    23%| reports/compat/metta-examples/SICP_book -        |
|     0|     6|     0%| reports/compat/metta-examples/recursion-schemes/src/reports - |
|     0|     6|     0%| reports/compat/metta-examples/recursion-schemes/src - |
|     0|     6|     0%| reports/compat/metta-examples/recursion-schemes - |
|    13|    14|    48%| reports/compat/metta-examples/prob-dep-types -   |
|     0|     4|     0%| reports/compat/metta-examples/logic -            |
|     8|     2|    80%| reports/compat/metta-examples/combinator_logic_experiments - |
|    25|    39|    39%| reports/compat/metta-examples -                  |
|     1|    14|     6%| reports/compat/hyperon-pln/metta/synthesis/experiments - |
|     1|    17|     5%| reports/compat/hyperon-pln/metta/synthesis -     |
|     0|     3|     0%| reports/compat/hyperon-pln/metta/sumo/orientation - |
|     0|     3|     0%| reports/compat/hyperon-pln/metta/sumo/located -  |
|     0|     5|     0%| reports/compat/hyperon-pln/metta/sumo/john-carry-flower - |
|     0|    11|     0%| reports/compat/hyperon-pln/metta/sumo -          |
|     1|     0|   100%| reports/compat/hyperon-pln/metta/subtyping -     |
|     0|     0|     0%| reports/compat/hyperon-pln/metta/match -         |
|     0|     6|     0%| reports/compat/hyperon-pln/metta/hol -           |
|     0|    47|     0%| reports/compat/hyperon-pln/metta/forward-chainer - |
|     0|     2|     0%| reports/compat/hyperon-pln/metta/equal -         |
|     0|     0|     0%| reports/compat/hyperon-pln/metta/entail -        |
|     2|    22|     8%| reports/compat/hyperon-pln/metta/dependent-types - |
|     9|     4|    69%| reports/compat/hyperon-pln/metta/common/truthvalue - |
|     5|     7|    41%| reports/compat/hyperon-pln/metta/common/formula - |
|    24|    46|    34%| reports/compat/hyperon-pln/metta/common -        |
|    13|    32|    28%| reports/compat/hyperon-pln/metta/backward-chainer - |
|    41|   183|    18%| reports/compat/hyperon-pln/metta -               |
|    41|   183|    18%| reports/compat/hyperon-pln -                     |
|     0|     3|     0%| reports/compat/hyperon-miner/utils -             |
|     0|     3|     0%| reports/compat/hyperon-miner -                   |
|   120|    31|    79%| reports/compat/hyperon-experimental/python/tests/scripts - |
|   120|    31|    79%| reports/compat/hyperon-experimental/python/tests - |
|     1|     1|    50%| reports/compat/hyperon-experimental/python/sandbox/sql_space - |
|     0|    11|     0%| reports/compat/hyperon-experimental/python/sandbox/resolve - |
|     0|     0|     0%| reports/compat/hyperon-experimental/python/sandbox/numpy - |
|     0|     0|     0%| reports/compat/hyperon-experimental/python/sandbox/neurospace - |
|     0|     0|     0%| reports/compat/hyperon-experimental/python/sandbox/das_gate - |
|     1|    12|     7%| reports/compat/hyperon-experimental/python/sandbox - |
|   121|    43|    73%| reports/compat/hyperon-experimental/python -     |
|   121|    43|    73%| reports/compat/hyperon-experimental -            |
|   192|   327|    36%| reports/compat -                                 |
|   309|   448|    40%| reports -                                        |

<details><summary>Expand for Core Summaries</summary>

|Pass |Fail |File                               |GitHub Link                                                                                                                       |
|-----|-----|-----------------------------------|----------------------------------------------------------------------------------------------------------------------------------|
|  13 |  32 | backward-chainer-xp.metta         |[reports/compat/hyperon-pln/metta/backward-chainer/backward-chainer-xp.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/hyperon-pln/metta/backward-chainer/backward-chainer-xp.html)|
|  0  |  31 | forward-chainer-xp.metta          |[reports/compat/hyperon-pln/metta/forward-chainer/forward-chainer-xp.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/hyperon-pln/metta/forward-chainer/forward-chainer-xp.html)|
|  0  |  19 | ListTest.metta                    |[reports/compat/hyperon-pln/metta/common/ListTest.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/hyperon-pln/metta/common/ListTest.html)|
|  0  |  16 | forward-chainer-test.metta        |[reports/compat/hyperon-pln/metta/forward-chainer/forward-chainer-test.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/hyperon-pln/metta/forward-chainer/forward-chainer-test.html)|
|  0  |  16 | ImplicationDirectIntroductionDTLTest.metta|[reports/compat/hyperon-pln/metta/dependent-types/ImplicationDirectIntroductionDTLTest.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/hyperon-pln/metta/dependent-types/ImplicationDirectIntroductionDTLTest.html)|
|  4  |  13 | chapter_1_3.metta                 |[reports/compat/metta-examples/SICP_book/chapter_1_3.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/metta-examples/SICP_book/chapter_1_3.html)|
|  0  |  13 | key-lookups-many.metta            |[reports/performance/key-lookups-many.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/performance/key-lookups-many.html)|
|  4  |  12 | prob_dep_types.metta              |[reports/compat/metta-examples/prob-dep-types/prob_dep_types.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/metta-examples/prob-dep-types/prob_dep_types.html)|
|  0  |  12 | self-contained-synthesize.metta   |[reports/old-compat/hyperon-pln/prev-pln/synthesis/experiments/self-contained-synthesize.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/old-compat/hyperon-pln/prev-pln/synthesis/experiments/self-contained-synthesize.html)|
|  0  |  12 | test_infer_function_application_type.metta|[reports/performance/test_infer_function_application_type.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/performance/test_infer_function_application_type.html)|
|  7  |  11 | d4_type_prop.metta                |[reports/compat/hyperon-experimental/python/tests/scripts/d4_type_prop.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/hyperon-experimental/python/tests/scripts/d4_type_prop.html)|
|  1  |  11 | synthesize-via-case-test.metta    |[reports/old-compat/hyperon-pln/prev-pln/synthesis/experiments/synthesize-via-case-test.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/old-compat/hyperon-pln/prev-pln/synthesis/experiments/synthesize-via-case-test.html)|
|  1  |  11 | synthesize-via-let-test.metta     |[reports/old-compat/hyperon-pln/prev-pln/synthesis/experiments/synthesize-via-let-test.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/old-compat/hyperon-pln/prev-pln/synthesis/experiments/synthesize-via-let-test.html)|
|  1  |  11 | synthesize-via-unify-test.metta   |[reports/old-compat/hyperon-pln/prev-pln/synthesis/experiments/synthesize-via-unify-test.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/old-compat/hyperon-pln/prev-pln/synthesis/experiments/synthesize-via-unify-test.html)|
|  1  |  11 | test_infer_function_application_type.metta|[reports/features/test_infer_function_application_type.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/features/test_infer_function_application_type.html)|
|  0  |  11 | r.metta                           |[reports/compat/hyperon-experimental/python/sandbox/resolve/r.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/hyperon-experimental/python/sandbox/resolve/r.html)|
|  21 |  10 | c1_grounded_basic.metta           |[reports/override-compat/hyperon-experimental/python/tests/scripts/c1_grounded_basic.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/override-compat/hyperon-experimental/python/tests/scripts/c1_grounded_basic.html)|
|  2  |  9  | OrderedSetTest.metta              |[reports/compat/hyperon-pln/metta/common/OrderedSetTest.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/hyperon-pln/metta/common/OrderedSetTest.html)|
|  19 |  8  | d2_higherfunc.metta               |[reports/compat/hyperon-experimental/python/tests/scripts/d2_higherfunc.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/hyperon-experimental/python/tests/scripts/d2_higherfunc.html)|
|  5  |  7  | DeductionFormulaTest.metta        |[reports/compat/hyperon-pln/metta/common/formula/DeductionFormulaTest.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/hyperon-pln/metta/common/formula/DeductionFormulaTest.html)|
|  0  |  7  | sequential_nested.metta           |[reports/compat/metta-morph/tests/sequential_nested.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/metta-morph/tests/sequential_nested.html)|
|  0  |  7  | unify-via-let.metta               |[reports/compat/hyperon-pln/metta/synthesis/experiments/unify-via-let.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/hyperon-pln/metta/synthesis/experiments/unify-via-let.html)|
|  10 |  6  | state_types.metta                 |[reports/features/state_types.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/features/state_types.html)|
|  2  |  6  | match_void.metta                  |[reports/compat/metta-morph/tests/match_void.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/metta-morph/tests/match_void.html)|
|  0  |  6  | expression.metta                  |[reports/compat/metta-examples/recursion-schemes/src/reports/expression.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/metta-examples/recursion-schemes/src/reports/expression.html)|
|  1  |  5  | states_spaces.metta               |[reports/compat/metta-morph/tests/states_spaces.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/metta-morph/tests/states_spaces.html)|
|  1  |  5  | unify-via-case.metta              |[reports/compat/hyperon-pln/metta/synthesis/experiments/unify-via-case.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/hyperon-pln/metta/synthesis/experiments/unify-via-case.html)|
|  1  |  5  | unify-via-case.metta              |[reports/old-compat/hyperon-pln/prev-pln/synthesis/experiments/unify-via-case.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/old-compat/hyperon-pln/prev-pln/synthesis/experiments/unify-via-case.html)|
|  0  |  5  | john-carry-flower-test.metta      |[reports/compat/hyperon-pln/metta/sumo/john-carry-flower/john-carry-flower-test.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/hyperon-pln/metta/sumo/john-carry-flower/john-carry-flower-test.html)|
|  0  |  5  | match_superposed_spaces.metta     |[reports/compat/metta-morph/tests/match_superposed_spaces.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/metta-morph/tests/match_superposed_spaces.html)|
|  0  |  5  | NatSimpleTest.metta               |[reports/compat/hyperon-pln/metta/hol/NatSimpleTest.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/hyperon-pln/metta/hol/NatSimpleTest.html)|
|  0  |  5  | types2.metta                      |[reports/compat/metta-morph/tests/types2.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/metta-morph/tests/types2.html)|
|  10 |  4  | d1_gadt.metta                     |[reports/compat/hyperon-experimental/python/tests/scripts/d1_gadt.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/hyperon-experimental/python/tests/scripts/d1_gadt.html)|
|  4  |  4  | prob_dep_types.metta              |[reports/old-compat/prob-dep-types/prob_dep_types.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/old-compat/prob-dep-types/prob_dep_types.html)|
|  0  |  4  | EvidentialTruthValueTest.metta    |[reports/compat/hyperon-pln/metta/common/truthvalue/EvidentialTruthValueTest.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/hyperon-pln/metta/common/truthvalue/EvidentialTruthValueTest.html)|
|  0  |  4  | example4.metta                    |[reports/compat/metta-morph/extend/example4.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/metta-morph/extend/example4.html)|
|  0  |  4  | ModusPonensDTLTest.metta          |[reports/compat/hyperon-pln/metta/dependent-types/ModusPonensDTLTest.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/hyperon-pln/metta/dependent-types/ModusPonensDTLTest.html)|
|  0  |  4  | superpose_nested.metta            |[reports/compat/metta-morph/tests/superpose_nested.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/metta-morph/tests/superpose_nested.html)|
|  0  |  4  | test_minecraft_planning.metta     |[reports/old-compat/minecraft/test_minecraft_planning.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/old-compat/minecraft/test_minecraft_planning.html)|
|  7  |  3  | NumTest.metta                     |[reports/compat/hyperon-pln/metta/common/NumTest.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/hyperon-pln/metta/common/NumTest.html)|
|  1  |  3  | e3_match_states.metta             |[reports/compat/hyperon-experimental/python/tests/scripts/e3_match_states.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/hyperon-experimental/python/tests/scripts/e3_match_states.html)|
|  0  |  3  | example3.metta                    |[reports/compat/metta-morph/extend/example3.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/metta-morph/extend/example3.html)|
|  0  |  3  | located-test.metta                |[reports/compat/hyperon-pln/metta/sumo/located/located-test.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/hyperon-pln/metta/sumo/located/located-test.html)|
|  0  |  3  | MaybeTest.metta                   |[reports/compat/hyperon-pln/metta/common/MaybeTest.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/hyperon-pln/metta/common/MaybeTest.html)|
|  0  |  3  | MinerUtils.metta                  |[reports/compat/hyperon-miner/utils/MinerUtils.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/hyperon-miner/utils/MinerUtils.html)|
|  0  |  3  | orientation-test.metta            |[reports/compat/hyperon-pln/metta/sumo/orientation/orientation-test.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/hyperon-pln/metta/sumo/orientation/orientation-test.html)|
|  0  |  3  | UnifyTest.metta                   |[reports/compat/hyperon-pln/metta/synthesis/UnifyTest.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/hyperon-pln/metta/synthesis/UnifyTest.html)|
|  19 |  2  | b5_types_prelim.metta             |[reports/override-compat/hyperon-experimental/python/tests/scripts/b5_types_prelim.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/override-compat/hyperon-experimental/python/tests/scripts/b5_types_prelim.html)|
|  15 |  2  | f1_imports.metta                  |[reports/compat/hyperon-experimental/python/tests/scripts/f1_imports.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/hyperon-experimental/python/tests/scripts/f1_imports.html)|
|  9  |  2  | inf_order_probs.metta             |[reports/compat/metta-examples/prob-dep-types/inf_order_probs.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/metta-examples/prob-dep-types/inf_order_probs.html)|
|  8  |  2  | y_comb_reports.metta              |[reports/compat/metta-examples/combinator_logic_experiments/y_comb_reports.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/metta-examples/combinator_logic_experiments/y_comb_reports.html)|
|  4  |  2  | define_if_like.metta              |[reports/features/compiler/define_if_like.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/features/compiler/define_if_like.html)|
|  4  |  2  | pathfinding-hard.metta            |[reports/features/pathfinding-hard.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/features/pathfinding-hard.html)|
|  2  |  2  | DeductionDTLTest.metta            |[reports/compat/hyperon-pln/metta/dependent-types/DeductionDTLTest.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/hyperon-pln/metta/dependent-types/DeductionDTLTest.html)|
|  0  |  2  | all_any.metta                     |[reports/compat/metta-examples/logic/all_any.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/metta-examples/logic/all_any.html)|
|  0  |  2  | DeductionEqualTest.metta          |[reports/compat/hyperon-pln/metta/equal/DeductionEqualTest.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/hyperon-pln/metta/equal/DeductionEqualTest.html)|
|  0  |  2  | example5.metta                    |[reports/compat/metta-morph/extend/example5.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/metta-morph/extend/example5.html)|
|  0  |  2  | example6.metta                    |[reports/compat/metta-morph/extend/example6.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/metta-morph/extend/example6.html)|
|  0  |  2  | non-determinism.metta             |[reports/compat/hyperon-pln/metta/synthesis/experiments/non-determinism.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/hyperon-pln/metta/synthesis/experiments/non-determinism.html)|
|  0  |  2  | test_minecraft_planning_with_abstractions.metta|[reports/old-compat/minecraft/test_minecraft_planning_with_abstractions.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/old-compat/minecraft/test_minecraft_planning_with_abstractions.html)|
|  0  |  2  | zeroargs.metta                    |[reports/compat/metta-morph/tests/zeroargs.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/metta-morph/tests/zeroargs.html)|
|  10 |  1  | b4_nondeterm.metta                |[reports/compat/hyperon-experimental/python/tests/scripts/b4_nondeterm.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/hyperon-experimental/python/tests/scripts/b4_nondeterm.html)|
|  4  |  1  | c3_pln_stv.metta                  |[reports/compat/hyperon-experimental/python/tests/scripts/c3_pln_stv.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/hyperon-experimental/python/tests/scripts/c3_pln_stv.html)|
|  1  |  1  | e1_kb_write.metta                 |[reports/compat/hyperon-experimental/python/tests/scripts/e1_kb_write.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/hyperon-experimental/python/tests/scripts/e1_kb_write.html)|
|  1  |  1  | let_superpose_list.metta          |[reports/compat/metta-morph/tests/let_superpose_list.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/metta-morph/tests/let_superpose_list.html)|
|  1  |  1  | sql_space_test.metta              |[reports/compat/hyperon-experimental/python/sandbox/sql_space/sql_space_test.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/hyperon-experimental/python/sandbox/sql_space/sql_space_test.html)|
|  0  |  1  | and_or.metta                      |[reports/compat/metta-morph/tests/and_or.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/metta-morph/tests/and_or.html)|
|  0  |  1  | collapse.metta                    |[reports/compat/metta-morph/tests/collapse.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/metta-morph/tests/collapse.html)|
|  0  |  1  | EqualityTypeTest.metta            |[reports/compat/hyperon-pln/metta/common/EqualityTypeTest.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/hyperon-pln/metta/common/EqualityTypeTest.html)|
|  0  |  1  | identity.metta                    |[reports/compat/metta-morph/tests/identity.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/metta-morph/tests/identity.html)|
|  0  |  1  | if.metta                          |[reports/compat/metta-morph/tests/if.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/metta-morph/tests/if.html)|
|  0  |  1  | letlet.metta                      |[reports/compat/metta-morph/tests/letlet.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/metta-morph/tests/letlet.html)|
|  0  |  1  | match_feval.metta                 |[reports/compat/metta-morph/tests/match_feval.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/metta-morph/tests/match_feval.html)|
|  0  |  1  | memb.metta                        |[reports/compat/metta-examples/logic/memb.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/metta-examples/logic/memb.html)|
|  0  |  1  | multifunction.metta               |[reports/compat/metta-morph/tests/multifunction.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/metta-morph/tests/multifunction.html)|
|  0  |  1  | NatTest.metta                     |[reports/compat/hyperon-pln/metta/hol/NatTest.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/hyperon-pln/metta/hol/NatTest.html)|
|  0  |  1  | nested_parameters.metta           |[reports/compat/metta-morph/tests/nested_parameters.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/metta-morph/tests/nested_parameters.html)|
|  0  |  1  | pathfinding-easy.metta            |[reports/features/pathfinding-easy.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/features/pathfinding-easy.html)|
|  0  |  1  | pathfinding-easy.metta            |[reports/performance/pathfinding-easy.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/performance/pathfinding-easy.html)|
|  0  |  1  | peano.metta                       |[reports/compat/metta-morph/tests/peano.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/metta-morph/tests/peano.html)|
|  0  |  1  | PROGRAM.metta                     |[reports/compat/metta-morph/PROGRAM.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/metta-morph/PROGRAM.html)|
|  0  |  1  | puzzle.metta                      |[reports/compat/metta-examples/logic/puzzle.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/metta-examples/logic/puzzle.html)|
|  0  |  1  | RUN.metta                         |[reports/compat/metta-morph/RUN.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/metta-morph/RUN.html)|
|  0  |  1  | test_list_concatenation.metta     |[reports/performance/test_list_concatenation.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/performance/test_list_concatenation.html)|
|  0  |  1  | types3.metta                      |[reports/compat/metta-morph/tests/types3.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/metta-morph/tests/types3.html)|
|  0  |  1  | types.metta                       |[reports/compat/metta-morph/tests/types.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/metta-morph/tests/types.html)|
|  10 |  0  | fwgc2.metta                       |[reports/features/fwgc2.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/features/fwgc2.html)|
|  10 |  0  | key-lookups-many.metta            |[reports/features/key-lookups-many.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/features/key-lookups-many.html)|
|  9  |  0  | e2_states.metta                   |[reports/compat/hyperon-experimental/python/tests/scripts/e2_states.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/hyperon-experimental/python/tests/scripts/e2_states.html)|
|  9  |  0  | inf_order_probs.metta             |[reports/old-compat/prob-dep-types/inf_order_probs.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/old-compat/prob-dep-types/inf_order_probs.html)|
|  9  |  0  | TruthValueTest.metta              |[reports/compat/hyperon-pln/metta/common/truthvalue/TruthValueTest.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/hyperon-pln/metta/common/truthvalue/TruthValueTest.html)|
|  7  |  0  | a1_symbols.metta                  |[reports/compat/hyperon-experimental/python/tests/scripts/a1_symbols.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/hyperon-experimental/python/tests/scripts/a1_symbols.html)|
|  7  |  0  | d3_deptypes.metta                 |[reports/compat/hyperon-experimental/python/tests/scripts/d3_deptypes.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/hyperon-experimental/python/tests/scripts/d3_deptypes.html)|
|  7  |  0  | unify-via-let.metta               |[reports/old-compat/hyperon-pln/prev-pln/synthesis/experiments/unify-via-let.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/old-compat/hyperon-pln/prev-pln/synthesis/experiments/unify-via-let.html)|
|  6  |  0  | b1_equal_chain.metta              |[reports/compat/hyperon-experimental/python/tests/scripts/b1_equal_chain.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/hyperon-experimental/python/tests/scripts/b1_equal_chain.html)|
|  5  |  0  | b0_chaining_prelim.metta          |[reports/compat/hyperon-experimental/python/tests/scripts/b0_chaining_prelim.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/hyperon-experimental/python/tests/scripts/b0_chaining_prelim.html)|
|  5  |  0  | b2_backchain.metta                |[reports/compat/hyperon-experimental/python/tests/scripts/b2_backchain.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/hyperon-experimental/python/tests/scripts/b2_backchain.html)|
|  5  |  0  | c2_spaces.metta                   |[reports/compat/hyperon-experimental/python/tests/scripts/c2_spaces.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/hyperon-experimental/python/tests/scripts/c2_spaces.html)|
|  4  |  0  | a3_twoside.metta                  |[reports/compat/hyperon-experimental/python/tests/scripts/a3_twoside.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/hyperon-experimental/python/tests/scripts/a3_twoside.html)|
|  4  |  0  | state_types.metta                 |[reports/performance/state_types.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/performance/state_types.html)|
|  3  |  0  | b3_direct.metta                   |[reports/compat/hyperon-experimental/python/tests/scripts/b3_direct.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/hyperon-experimental/python/tests/scripts/b3_direct.html)|
|  2  |  0  | fibo-as-pred.metta                |[reports/features/fibo-as-pred.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/features/fibo-as-pred.html)|
|  1  |  0  | a2_opencoggy.metta                |[reports/compat/hyperon-experimental/python/tests/scripts/a2_opencoggy.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/hyperon-experimental/python/tests/scripts/a2_opencoggy.html)|
|  1  |  0  | f1_moduleA.metta                  |[reports/compat/hyperon-experimental/python/tests/scripts/f1_moduleA.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/hyperon-experimental/python/tests/scripts/f1_moduleA.html)|
|  1  |  0  | fibo.metta                        |[reports/features/fibo.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/features/fibo.html)|
|  1  |  0  | fwgc1.metta                       |[reports/features/fwgc1.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/features/fwgc1.html)|
|  1  |  0  | fwgc1.metta                       |[reports/performance/fwgc1.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/performance/fwgc1.html)|
|  1  |  0  | hanoi-one-space.metta             |[reports/features/hanoi-one-space.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/features/hanoi-one-space.html)|
|  1  |  0  | hanoi-one-space.metta             |[reports/performance/hanoi-one-space.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/performance/hanoi-one-space.html)|
|  1  |  0  | hanoi-peg-space.metta             |[reports/features/hanoi-peg-space.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/features/hanoi-peg-space.html)|
|  1  |  0  | hanoi-peg-space.metta             |[reports/performance/hanoi-peg-space.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/performance/hanoi-peg-space.html)|
|  1  |  0  | InTest.metta                      |[reports/compat/hyperon-pln/metta/common/InTest.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/hyperon-pln/metta/common/InTest.html)|
|  1  |  0  | let_superpose_list2.metta         |[reports/compat/metta-morph/tests/let_superpose_list2.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/metta-morph/tests/let_superpose_list2.html)|
|  1  |  0  | subtyping-test.metta              |[reports/compat/hyperon-pln/metta/subtyping/subtyping-test.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/hyperon-pln/metta/subtyping/subtyping-test.html)|
|  1  |  0  | test_list_concatenation.metta     |[reports/features/test_list_concatenation.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/features/test_list_concatenation.html)|
|  0  |  0  | 00a_lang_compiled_case.metta      |[reports/features/compiler/00a_lang_compiled_case.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/features/compiler/00a_lang_compiled_case.html)|
|  0  |  0  | add_atom_match.metta              |[reports/compat/metta-morph/tests/add_atom_match.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/metta-morph/tests/add_atom_match.html)|
|  0  |  0  | benchmark.metta                   |[reports/old-compat/recursion-schemes/src/reports/benchmark.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/old-compat/recursion-schemes/src/reports/benchmark.html)|
|  0  |  0  | benchmark.metta                   |[reports/override-compat/metta-examples/recursion-schemes/src/reports/benchmark.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/override-compat/metta-examples/recursion-schemes/src/reports/benchmark.html)|
|  0  |  0  | chapter_1_1.metta                 |[reports/compat/metta-examples/SICP_book/chapter_1_1.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/metta-examples/SICP_book/chapter_1_1.html)|
|  0  |  0  | chapter_1_2.metta                 |[reports/compat/metta-examples/SICP_book/chapter_1_2.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/metta-examples/SICP_book/chapter_1_2.html)|
|  0  |  0  | d2_auto_types.metta               |[reports/old-compat/test_scripts_extras/d2_auto_types.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/old-compat/test_scripts_extras/d2_auto_types.html)|
|  0  |  0  | d3_typed_pln.metta                |[reports/old-compat/test_scripts_extras/d3_typed_pln.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/old-compat/test_scripts_extras/d3_typed_pln.html)|
|  0  |  0  | d4_selfmod.metta                  |[reports/old-compat/test_scripts_extras/d4_selfmod.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/old-compat/test_scripts_extras/d4_selfmod.html)|
|  0  |  0  | d5_auto_types.metta               |[reports/compat/hyperon-experimental/python/tests/scripts/d5_auto_types.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/hyperon-experimental/python/tests/scripts/d5_auto_types.html)|
|  0  |  0  | DeductionEntailTest.metta         |[reports/compat/hyperon-pln/metta/entail/DeductionEntailTest.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/hyperon-pln/metta/entail/DeductionEntailTest.html)|
|  0  |  0  | DeductionImplicationDirectIntroductionDTLTest.metta|[reports/compat/hyperon-pln/metta/dependent-types/DeductionImplicationDirectIntroductionDTLTest.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/hyperon-pln/metta/dependent-types/DeductionImplicationDirectIntroductionDTLTest.html)|
|  0  |  0  | DeductionImplicationDirectIntroductionMatchTest.metta|[reports/compat/hyperon-pln/metta/match/DeductionImplicationDirectIntroductionMatchTest.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/hyperon-pln/metta/match/DeductionImplicationDirectIntroductionMatchTest.html)|
|  0  |  0  | DeductionMatchTest.metta          |[reports/compat/hyperon-pln/metta/match/DeductionMatchTest.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/hyperon-pln/metta/match/DeductionMatchTest.html)|
|  0  |  0  | example1.metta                    |[reports/compat/metta-morph/extend/example1.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/metta-morph/extend/example1.html)|
|  0  |  0  | example2.metta                    |[reports/compat/metta-morph/extend/example2.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/metta-morph/extend/example2.html)|
|  0  |  0  | expression.metta                  |[reports/old-compat/recursion-schemes/src/reports/expression.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/old-compat/recursion-schemes/src/reports/expression.html)|
|  0  |  0  | factorial.metta                   |[reports/compat/metta-morph/tests/factorial.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/metta-morph/tests/factorial.html)|
|  0  |  0  | factorial.metta                   |[reports/features/factorial.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/features/factorial.html)|
|  0  |  0  | factorial.metta                   |[reports/performance/factorial.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/performance/factorial.html)|
|  0  |  0  | fibo-as-pred.metta                |[reports/performance/fibo-as-pred.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/performance/fibo-as-pred.html)|
|  0  |  0  | fibo.metta                        |[reports/performance/fibo.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/performance/fibo.html)|
|  0  |  0  | ImplicationDirectIntroductionEntailTest.metta|[reports/compat/hyperon-pln/metta/entail/ImplicationDirectIntroductionEntailTest.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/hyperon-pln/metta/entail/ImplicationDirectIntroductionEntailTest.html)|
|  0  |  0  | ImplicationDirectIntroductionEqualTest.metta|[reports/compat/hyperon-pln/metta/equal/ImplicationDirectIntroductionEqualTest.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/hyperon-pln/metta/equal/ImplicationDirectIntroductionEqualTest.html)|
|  0  |  0  | ImplicationDirectIntroductionMatchTest.metta|[reports/compat/hyperon-pln/metta/match/ImplicationDirectIntroductionMatchTest.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/hyperon-pln/metta/match/ImplicationDirectIntroductionMatchTest.html)|
|  0  |  0  | let_superpose_if_case.metta       |[reports/compat/metta-morph/tests/let_superpose_if_case.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/metta-morph/tests/let_superpose_if_case.html)|
|  0  |  0  | ListTest.metta                    |[reports/compat/hyperon-pln/metta/hol/ListTest.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/hyperon-pln/metta/hol/ListTest.html)|
|  0  |  0  | MinerMatchTest.metta              |[reports/override-compat/hyperon-miner/match/MinerMatchTest.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/override-compat/hyperon-miner/match/MinerMatchTest.html)|
|  0  |  0  | minnars.metta                     |[reports/compat/metta-morph/tests/minnars.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/metta-morph/tests/minnars.html)|
|  0  |  0  | nalifier.metta                    |[reports/compat/metta-morph/tests/nalifier.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/metta-morph/tests/nalifier.html)|
|  0  |  0  | nm_test.metta                     |[reports/compat/hyperon-experimental/python/sandbox/numpy/nm_test.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/hyperon-experimental/python/sandbox/numpy/nm_test.html)|
|  0  |  0  | non-determinism.metta             |[reports/old-compat/hyperon-pln/prev-pln/synthesis/experiments/non-determinism.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/old-compat/hyperon-pln/prev-pln/synthesis/experiments/non-determinism.html)|
|  0  |  0  | pathfinding-easy-f.metta          |[reports/features/pathfinding-easy-f.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/features/pathfinding-easy-f.html)|
|  0  |  0  | pathfinding-easy-f.metta          |[reports/performance/pathfinding-easy-f.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/performance/pathfinding-easy-f.html)|
|  0  |  0  | pathfinding-edge.metta            |[reports/features/pathfinding-edge.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/features/pathfinding-edge.html)|
|  0  |  0  | pathfinding-edge.metta            |[reports/performance/pathfinding-edge.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/performance/pathfinding-edge.html)|
|  0  |  0  | pathfinding-hard-f.metta          |[reports/features/pathfinding-hard-f.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/features/pathfinding-hard-f.html)|
|  0  |  0  | pathfinding-hard-f.metta          |[reports/performance/pathfinding-hard-f.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/performance/pathfinding-hard-f.html)|
|  0  |  0  | pathfinding-hard.metta            |[reports/performance/pathfinding-hard.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/performance/pathfinding-hard.html)|
|  0  |  0  | pathfinding-med-f.metta           |[reports/performance/pathfinding-med-f.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/performance/pathfinding-med-f.html)|
|  0  |  0  | reverse-arithmetic.metta          |[reports/features/reverse-arithmetic.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/features/reverse-arithmetic.html)|
|  0  |  0  | self-contained-synthesize.metta   |[reports/compat/hyperon-pln/metta/synthesis/experiments/self-contained-synthesize.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/hyperon-pln/metta/synthesis/experiments/self-contained-synthesize.html)|
|  0  |  0  | send-more.metta                   |[reports/features/send-more.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/features/send-more.html)|
|  0  |  0  | send-more-money.metta             |[reports/features/send-more-money.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/features/send-more-money.html)|
|  0  |  0  | supercollapse.metta               |[reports/compat/metta-morph/tests/supercollapse.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/metta-morph/tests/supercollapse.html)|
|  0  |  0  | SynthesizeTest.metta              |[reports/compat/hyperon-pln/metta/synthesis/SynthesizeTest.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/hyperon-pln/metta/synthesis/SynthesizeTest.html)|
|  0  |  0  | SynthesizeTest.metta              |[reports/old-compat/hyperon-pln/prev-pln/synthesis/SynthesizeTest.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/old-compat/hyperon-pln/prev-pln/synthesis/SynthesizeTest.html)|
|  0  |  0  | synthesize-via-case-test.metta    |[reports/compat/hyperon-pln/metta/synthesis/experiments/synthesize-via-case-test.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/hyperon-pln/metta/synthesis/experiments/synthesize-via-case-test.html)|
|  0  |  0  | synthesize-via-let-test.metta     |[reports/compat/hyperon-pln/metta/synthesis/experiments/synthesize-via-let-test.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/hyperon-pln/metta/synthesis/experiments/synthesize-via-let-test.html)|
|  0  |  0  | synthesize-via-superpose.metta    |[reports/compat/hyperon-pln/metta/synthesis/experiments/synthesize-via-superpose.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/hyperon-pln/metta/synthesis/experiments/synthesize-via-superpose.html)|
|  0  |  0  | synthesize-via-superpose.metta    |[reports/old-compat/hyperon-pln/prev-pln/synthesis/experiments/synthesize-via-superpose.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/old-compat/hyperon-pln/prev-pln/synthesis/experiments/synthesize-via-superpose.html)|
|  0  |  0  | synthesize-via-type-checking.metta|[reports/compat/hyperon-pln/metta/synthesis/experiments/synthesize-via-type-checking.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/hyperon-pln/metta/synthesis/experiments/synthesize-via-type-checking.html)|
|  0  |  0  | synthesize-via-type-checking.metta|[reports/old-compat/hyperon-pln/prev-pln/synthesis/experiments/synthesize-via-type-checking.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/old-compat/hyperon-pln/prev-pln/synthesis/experiments/synthesize-via-type-checking.html)|
|  0  |  0  | synthesize-via-unify-test.metta   |[reports/compat/hyperon-pln/metta/synthesis/experiments/synthesize-via-unify-test.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/hyperon-pln/metta/synthesis/experiments/synthesize-via-unify-test.html)|
|  0  |  0  | test_assist.metta                 |[reports/compat/hyperon-experimental/python/sandbox/neurospace/test_assist.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/hyperon-experimental/python/sandbox/neurospace/test_assist.html)|
|  0  |  0  | test_das.metta                    |[reports/compat/hyperon-experimental/python/sandbox/das_gate/test_das.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/hyperon-experimental/python/sandbox/das_gate/test_das.html)|
|  0  |  0  | test_nspace.metta                 |[reports/compat/hyperon-experimental/python/sandbox/neurospace/test_nspace.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/compat/hyperon-experimental/python/sandbox/neurospace/test_nspace.html)|
|  0  |  0  | tests0.metta                      |[reports/nars/current/tests0.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/nars/current/tests0.html)|
|  0  |  0  | tests1.metta                      |[reports/nars/current/tests1.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/nars/current/tests1.html)|
|  0  |  0  | tests2.metta                      |[reports/nars/current/tests2.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/nars/current/tests2.html)|
|  0  |  0  | tests3.metta                      |[reports/nars/current/tests3.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/nars/current/tests3.html)|
|  0  |  0  | tests4.metta                      |[reports/nars/current/tests4.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/nars/current/tests4.html)|
|  0  |  0  | tests5.metta                      |[reports/nars/current/tests5.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/nars/current/tests5.html)|
|  0  |  0  | UnifyTest.metta                   |[reports/old-compat/hyperon-pln/prev-pln/synthesis/UnifyTest.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/old-compat/hyperon-pln/prev-pln/synthesis/UnifyTest.html)|

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


