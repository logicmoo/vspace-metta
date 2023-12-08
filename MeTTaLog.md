# MeTTaLog: An Implementation of MeTTa in Prolog

MeTTaLog is a superfluous implementaiton of MeTTa, a language designed to succeed OpenCog Classic Atomese.  It is part of the OpenCog Hyperon initiative and provides well-defined semantics for meta-language features, different types of inference, and more.

Jump to [MeTTaLog Installation Guide](https://github.com/logicmoo/vspace-metta/blob/main/MeTTaLog.md#installation-guide)

# Bugs in MeTTaLog

| Pass | Fail |Percent| Directory                                        |
|------|------|-------|--------------------------------------------------|
|     3|     7|    30%| reports/cuRRent/extended_compat/nars/nars_v0 -   |
|    72|     1|    98%| reports/cuRRent/baseline_compat/metta-morph_tests - |
|   182|    29|    86%| reports/cuRRent/baseline_compat/hyperon-experimental_scripts - |
|    28|     6|    82%| reports/cuRRent/baseline_compat/hyperon-mettalog_sanity - |
|     0|     0|     0%| reports/cuRRent/python_compat/hyperon-experimental_python/sandbox/numpy - |
|     0|     1|     0%| reports/cuRRent/python_compat/hyperon-experimental_python/sandbox/neurospace - |
|     0|     0|     0%| reports/cuRRent/python_compat/hyperon-experimental_python/sandbox/das_gate - |
|     0|     1|     0%| reports/cuRRent/python_compat/hyperon-experimental_python/sandbox - |
|     0|     1|     0%| reports/cuRRent/python_compat/hyperon-experimental_python - |
|    23|     8|    74%| reports/cuRRent/baseline_compat/hyperon-pln_metta/synthesis/experiments - |
|    24|    11|    68%| reports/cuRRent/baseline_compat/hyperon-pln_metta/synthesis - |
|     5|     2|    71%| reports/cuRRent/baseline_compat/hyperon-pln_metta/sumo/orientation - |
|     5|     2|    71%| reports/cuRRent/baseline_compat/hyperon-pln_metta/sumo/located - |
|    10|     4|    71%| reports/cuRRent/baseline_compat/hyperon-pln_metta/sumo - |
|     1|     0|   100%| reports/cuRRent/baseline_compat/hyperon-pln_metta/subtyping - |
|     2|     1|    66%| reports/cuRRent/baseline_compat/hyperon-pln_metta/match - |
|     4|     1|    80%| reports/cuRRent/baseline_compat/hyperon-pln_metta/hol - |
|    32|    18|    64%| reports/cuRRent/baseline_compat/hyperon-pln_metta/forward-chainer - |
|     2|     2|    50%| reports/cuRRent/baseline_compat/hyperon-pln_metta/equal - |
|     6|     3|    66%| reports/cuRRent/baseline_compat/hyperon-pln_metta/entail - |
|     4|     2|    66%| reports/cuRRent/baseline_compat/hyperon-pln_metta/dependent-types - |
|    15|     0|   100%| reports/cuRRent/baseline_compat/hyperon-pln_metta/common/truthvalue - |
|    13|     0|   100%| reports/cuRRent/baseline_compat/hyperon-pln_metta/common/formula - |
|    75|     4|    94%| reports/cuRRent/baseline_compat/hyperon-pln_metta/common - |
|    25|    24|    51%| reports/cuRRent/baseline_compat/hyperon-pln_metta/backward-chainer - |
|   185|    70|    72%| reports/cuRRent/baseline_compat/hyperon-pln_metta - |
|     0|     1|     0%| reports/cuRRent/extended_compat/nars/nars_extras - |
|    42|    32|    56%| reports/cuRRent/performance -                    |
|    51|     0|   100%| reports/cuRRent/flybase -                        |
|   598|   195|    75%| reports -                                        |
|   598|   195|    75%| reports/cuRRent -                                |
|     7|     2|    77%| reports/cuRRent/features/compiler -              |
|     7|     4|    63%| reports/cuRRent/features -                       |
|     0|     1|     0%| reports/cuRRent/python_compat -                  |
|    31|    52|    37%| reports/cuRRent/extended_compat -                |
|   467|   106|    81%| reports/cuRRent/baseline_compat -                |
|     0|     0|     0%| reports/cuRRent/python_compat/extend -           |
|     6|     0|   100%| reports/cuRRent/extended_compat/hyperon-miner -  |
|     3|     0|   100%| reports/cuRRent/extended_compat/hyperon-miner/match - |
|     3|     0|   100%| reports/cuRRent/extended_compat/hyperon-miner/utils - |
|     8|    29|    21%| reports/cuRRent/extended_compat/metta-examples - |
|     1|     3|    25%| reports/cuRRent/extended_compat/metta-examples/logic - |
|     6|    21|    22%| reports/cuRRent/extended_compat/metta-examples/prob-dep-types - |
|     1|     5|    16%| reports/cuRRent/extended_compat/metta-examples/recursion-schemes - |
|     1|     5|    16%| reports/cuRRent/extended_compat/metta-examples/recursion-schemes/src - |
|     1|     5|    16%| reports/cuRRent/extended_compat/metta-examples/recursion-schemes/src/reports - |
|     1|     5|    16%| reports/cuRRent/extended_compat/metta-examples/recursion-schemes/src/reports/cuRRent - |
|    17|    23|    42%| reports/cuRRent/extended_compat/nars -           |
|    11|     8|    57%| reports/cuRRent/extended_compat/nars/current -   |
|     3|     7|    30%| reports/cuRRent/extended_compat/nars/prev -      |

<details><summary>Expand for Core Summaries</summary>

|Pass |Fail |File                               |GitHub Link                                                                                                                       |
|-----|-----|-----------------------------------|----------------------------------------------------------------------------------------------------------------------------------|
|  25 |  24 | backward-chainer-xp.metta.metta   |[reports/cuRRent/baseline_compat/hyperon-pln_metta/backward-chainer/backward-chainer-xp.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/hyperon-pln_metta/backward-chainer/backward-chainer-xp.metta.html)|
|  16 |  18 | forward-chainer-xp.metta.metta    |[reports/cuRRent/baseline_compat/hyperon-pln_metta/forward-chainer/forward-chainer-xp.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/hyperon-pln_metta/forward-chainer/forward-chainer-xp.metta.html)|
|  0  |  16 | prob_dep_types.metta.metta        |[reports/cuRRent/extended_compat/metta-examples/prob-dep-types/prob_dep_types.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/extended_compat/metta-examples/prob-dep-types/prob_dep_types.metta.html)|
|  11 |  13 | key-lookups-many.metta.metta      |[reports/cuRRent/performance/key-lookups-many.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/performance/key-lookups-many.metta.html)|
|  0  |  12 | test_infer_function_application_type.metta.metta|[reports/cuRRent/performance/test_infer_function_application_type.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/performance/test_infer_function_application_type.metta.html)|
|  11 |  8  | tests0.metta.metta                |[reports/cuRRent/extended_compat/nars/current/tests0.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/extended_compat/nars/current/tests0.metta.html)|
|  25 |  7  | state_types.metta.metta           |[reports/cuRRent/performance/state_types.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/performance/state_types.metta.html)|
|  3  |  7  | tests0.metta.metta                |[reports/cuRRent/extended_compat/nars/nars_v0/tests0.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/extended_compat/nars/nars_v0/tests0.metta.html)|
|  3  |  7  | tests0.metta.metta                |[reports/cuRRent/extended_compat/nars/prev/tests0.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/extended_compat/nars/prev/tests0.metta.html)|
|  13 |  5  | d4_type_prop.metta.metta          |[reports/cuRRent/baseline_compat/hyperon-experimental_scripts/d4_type_prop.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/hyperon-experimental_scripts/d4_type_prop.metta.html)|
|  6  |  5  | inf_order_probs.metta.metta       |[reports/cuRRent/extended_compat/metta-examples/prob-dep-types/inf_order_probs.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/extended_compat/metta-examples/prob-dep-types/inf_order_probs.metta.html)|
|  1  |  5  | expression.metta.metta            |[reports/cuRRent/extended_compat/metta-examples/recursion-schemes/src/reports/cuRRent/expression.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/extended_compat/metta-examples/recursion-schemes/src/reports/cuRRent/expression.metta.html)|
|  1  |  5  | unify-via-case.metta.metta        |[reports/cuRRent/baseline_compat/hyperon-pln_metta/synthesis/experiments/unify-via-case.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/hyperon-pln_metta/synthesis/experiments/unify-via-case.metta.html)|
|  18 |  4  | f1_imports.metta.metta            |[reports/cuRRent/baseline_compat/hyperon-experimental_scripts/f1_imports.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/hyperon-experimental_scripts/f1_imports.metta.html)|
|  1  |  4  | c3_pln_stv.metta.metta            |[reports/cuRRent/baseline_compat/hyperon-experimental_scripts/c3_pln_stv.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/hyperon-experimental_scripts/c3_pln_stv.metta.html)|
|  18 |  3  | c1_grounded_basic.metta.metta     |[reports/cuRRent/baseline_compat/hyperon-experimental_scripts/c1_grounded_basic.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/hyperon-experimental_scripts/c1_grounded_basic.metta.html)|
|  11 |  3  | d1_gadt.metta.metta               |[reports/cuRRent/baseline_compat/hyperon-experimental_scripts/d1_gadt.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/hyperon-experimental_scripts/d1_gadt.metta.html)|
|  8  |  3  | b4_nondeterm.metta.metta          |[reports/cuRRent/baseline_compat/hyperon-experimental_scripts/b4_nondeterm.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/hyperon-experimental_scripts/b4_nondeterm.metta.html)|
|  1  |  3  | 04_match_list_like_space.metta.metta|[reports/cuRRent/baseline_compat/hyperon-mettalog_sanity/04_match_list_like_space.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/hyperon-mettalog_sanity/04_match_list_like_space.metta.html)|
|  1  |  3  | 05_match_superpose_element_like_space.metta.metta|[reports/cuRRent/baseline_compat/hyperon-mettalog_sanity/05_match_superpose_element_like_space.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/hyperon-mettalog_sanity/05_match_superpose_element_like_space.metta.html)|
|  1  |  3  | synthesize-via-superpose.metta.metta|[reports/cuRRent/baseline_compat/hyperon-pln_metta/synthesis/experiments/synthesize-via-superpose.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/hyperon-pln_metta/synthesis/experiments/synthesize-via-superpose.metta.html)|
|  1  |  3  | UnifyTest.metta.metta             |[reports/cuRRent/baseline_compat/hyperon-pln_metta/synthesis/UnifyTest.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/hyperon-pln_metta/synthesis/UnifyTest.metta.html)|
|  25 |  2  | d2_higherfunc.metta.metta         |[reports/cuRRent/baseline_compat/hyperon-experimental_scripts/d2_higherfunc.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/hyperon-experimental_scripts/d2_higherfunc.metta.html)|
|  10 |  2  | NumTest.metta.metta               |[reports/cuRRent/baseline_compat/hyperon-pln_metta/common/NumTest.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/hyperon-pln_metta/common/NumTest.metta.html)|
|  7  |  2  | define_if_like.metta.metta        |[reports/cuRRent/features/compiler/define_if_like.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/features/compiler/define_if_like.metta.html)|
|  7  |  2  | e3_match_states.metta.metta       |[reports/cuRRent/baseline_compat/hyperon-experimental_scripts/e3_match_states.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/hyperon-experimental_scripts/e3_match_states.metta.html)|
|  5  |  2  | ImplicationDirectIntroductionEntailTest.metta.metta|[reports/cuRRent/baseline_compat/hyperon-pln_metta/entail/ImplicationDirectIntroductionEntailTest.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/hyperon-pln_metta/entail/ImplicationDirectIntroductionEntailTest.metta.html)|
|  5  |  2  | located-test.metta.metta          |[reports/cuRRent/baseline_compat/hyperon-pln_metta/sumo/located/located-test.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/hyperon-pln_metta/sumo/located/located-test.metta.html)|
|  5  |  2  | orientation-test.metta.metta      |[reports/cuRRent/baseline_compat/hyperon-pln_metta/sumo/orientation/orientation-test.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/hyperon-pln_metta/sumo/orientation/orientation-test.metta.html)|
|  4  |  2  | ModusPonensDTLTest.metta.metta    |[reports/cuRRent/baseline_compat/hyperon-pln_metta/dependent-types/ModusPonensDTLTest.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/hyperon-pln_metta/dependent-types/ModusPonensDTLTest.metta.html)|
|  3  |  2  | b2_backchain.metta.metta          |[reports/cuRRent/baseline_compat/hyperon-experimental_scripts/b2_backchain.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/hyperon-experimental_scripts/b2_backchain.metta.html)|
|  1  |  2  | DeductionEqualTest.metta.metta    |[reports/cuRRent/baseline_compat/hyperon-pln_metta/equal/DeductionEqualTest.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/hyperon-pln_metta/equal/DeductionEqualTest.metta.html)|
|  0  |  2  | reverse-arithmetic.metta.metta    |[reports/cuRRent/features/reverse-arithmetic.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/features/reverse-arithmetic.metta.html)|
|  20 |  1  | b5_types_prelim.metta.metta       |[reports/cuRRent/baseline_compat/hyperon-experimental_scripts/b5_types_prelim.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/hyperon-experimental_scripts/b5_types_prelim.metta.html)|
|  19 |  1  | ListTest.metta.metta              |[reports/cuRRent/baseline_compat/hyperon-pln_metta/common/ListTest.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/hyperon-pln_metta/common/ListTest.metta.html)|
|  11 |  1  | OrderedSetTest.metta.metta        |[reports/cuRRent/baseline_compat/hyperon-pln_metta/common/OrderedSetTest.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/hyperon-pln_metta/common/OrderedSetTest.metta.html)|
|  2  |  1  | DeductionImplicationDirectIntroductionMatchTest.metta.metta|[reports/cuRRent/baseline_compat/hyperon-pln_metta/match/DeductionImplicationDirectIntroductionMatchTest.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/hyperon-pln_metta/match/DeductionImplicationDirectIntroductionMatchTest.metta.html)|
|  2  |  1  | ListTest.metta.metta              |[reports/cuRRent/baseline_compat/hyperon-pln_metta/hol/ListTest.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/hyperon-pln_metta/hol/ListTest.metta.html)|
|  1  |  1  | all_any.metta.metta               |[reports/cuRRent/extended_compat/metta-examples/logic/all_any.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/extended_compat/metta-examples/logic/all_any.metta.html)|
|  1  |  1  | DeductionEntailTest.metta.metta   |[reports/cuRRent/baseline_compat/hyperon-pln_metta/entail/DeductionEntailTest.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/hyperon-pln_metta/entail/DeductionEntailTest.metta.html)|
|  0  |  1  | memb.metta.metta                  |[reports/cuRRent/extended_compat/metta-examples/logic/memb.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/extended_compat/metta-examples/logic/memb.metta.html)|
|  0  |  1  | nalifier.metta.metta              |[reports/cuRRent/baseline_compat/metta-morph_tests/nalifier.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/metta-morph_tests/nalifier.metta.html)|
|  0  |  1  | puzzle.metta.metta                |[reports/cuRRent/extended_compat/metta-examples/logic/puzzle.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/extended_compat/metta-examples/logic/puzzle.metta.html)|
|  0  |  1  | RUN_minnars.metta.metta           |[reports/cuRRent/extended_compat/nars/nars_extras/RUN_minnars.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/extended_compat/nars/nars_extras/RUN_minnars.metta.html)|
|  0  |  1  | test_assist.metta.metta           |[reports/cuRRent/python_compat/hyperon-experimental_python/sandbox/neurospace/test_assist.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/python_compat/hyperon-experimental_python/sandbox/neurospace/test_assist.metta.html)|
|  51 |  0  | flybase-deduced.metta.metta       |[reports/cuRRent/flybase/flybase-deduced.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/flybase/flybase-deduced.metta.html)|
|  17 |  0  | 00_lang_case.metta.metta          |[reports/cuRRent/baseline_compat/hyperon-mettalog_sanity/00_lang_case.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/hyperon-mettalog_sanity/00_lang_case.metta.html)|
|  16 |  0  | forward-chainer-test.metta.metta  |[reports/cuRRent/baseline_compat/hyperon-pln_metta/forward-chainer/forward-chainer-test.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/hyperon-pln_metta/forward-chainer/forward-chainer-test.metta.html)|
|  14 |  0  | synthesize-via-type-checking.metta.metta|[reports/cuRRent/baseline_compat/hyperon-pln_metta/synthesis/experiments/synthesize-via-type-checking.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/hyperon-pln_metta/synthesis/experiments/synthesize-via-type-checking.metta.html)|
|  13 |  0  | DeductionFormulaTest.metta.metta  |[reports/cuRRent/baseline_compat/hyperon-pln_metta/common/formula/DeductionFormulaTest.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/hyperon-pln_metta/common/formula/DeductionFormulaTest.metta.html)|
|  13 |  0  | match_void.metta.metta            |[reports/cuRRent/baseline_compat/metta-morph_tests/match_void.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/metta-morph_tests/match_void.metta.html)|
|  11 |  0  | e2_states.metta.metta             |[reports/cuRRent/baseline_compat/hyperon-experimental_scripts/e2_states.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/hyperon-experimental_scripts/e2_states.metta.html)|
|  10 |  0  | TruthValueTest.metta.metta        |[reports/cuRRent/baseline_compat/hyperon-pln_metta/common/truthvalue/TruthValueTest.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/hyperon-pln_metta/common/truthvalue/TruthValueTest.metta.html)|
|  9  |  0  | sequential_nested.metta.metta     |[reports/cuRRent/baseline_compat/metta-morph_tests/sequential_nested.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/metta-morph_tests/sequential_nested.metta.html)|
|  9  |  0  | states_spaces.metta.metta         |[reports/cuRRent/baseline_compat/metta-morph_tests/states_spaces.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/metta-morph_tests/states_spaces.metta.html)|
|  7  |  0  | a1_symbols.metta.metta            |[reports/cuRRent/baseline_compat/hyperon-experimental_scripts/a1_symbols.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/hyperon-experimental_scripts/a1_symbols.metta.html)|
|  7  |  0  | c2_spaces.metta.metta             |[reports/cuRRent/baseline_compat/hyperon-experimental_scripts/c2_spaces.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/hyperon-experimental_scripts/c2_spaces.metta.html)|
|  7  |  0  | d3_deptypes.metta.metta           |[reports/cuRRent/baseline_compat/hyperon-experimental_scripts/d3_deptypes.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/hyperon-experimental_scripts/d3_deptypes.metta.html)|
|  7  |  0  | match_superposed_spaces.metta.metta|[reports/cuRRent/baseline_compat/metta-morph_tests/match_superposed_spaces.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/metta-morph_tests/match_superposed_spaces.metta.html)|
|  7  |  0  | supercollapse.metta.metta         |[reports/cuRRent/baseline_compat/metta-morph_tests/supercollapse.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/metta-morph_tests/supercollapse.metta.html)|
|  7  |  0  | unify-via-let.metta.metta         |[reports/cuRRent/baseline_compat/hyperon-pln_metta/synthesis/experiments/unify-via-let.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/hyperon-pln_metta/synthesis/experiments/unify-via-let.metta.html)|
|  6  |  0  | b1_equal_chain.metta.metta        |[reports/cuRRent/baseline_compat/hyperon-experimental_scripts/b1_equal_chain.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/hyperon-experimental_scripts/b1_equal_chain.metta.html)|
|  5  |  0  | 03-soring-via-insert.metta.metta  |[reports/cuRRent/baseline_compat/hyperon-mettalog_sanity/03-soring-via-insert.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/hyperon-mettalog_sanity/03-soring-via-insert.metta.html)|
|  5  |  0  | b0_chaining_prelim.metta.metta    |[reports/cuRRent/baseline_compat/hyperon-experimental_scripts/b0_chaining_prelim.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/hyperon-experimental_scripts/b0_chaining_prelim.metta.html)|
|  5  |  0  | EvidentialTruthValueTest.metta.metta|[reports/cuRRent/baseline_compat/hyperon-pln_metta/common/truthvalue/EvidentialTruthValueTest.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/hyperon-pln_metta/common/truthvalue/EvidentialTruthValueTest.metta.html)|
|  5  |  0  | types2.metta.metta                |[reports/cuRRent/baseline_compat/metta-morph_tests/types2.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/metta-morph_tests/types2.metta.html)|
|  4  |  0  | a3_twoside.metta.metta            |[reports/cuRRent/baseline_compat/hyperon-experimental_scripts/a3_twoside.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/hyperon-experimental_scripts/a3_twoside.metta.html)|
|  4  |  0  | MaybeTest.metta.metta             |[reports/cuRRent/baseline_compat/hyperon-pln_metta/common/MaybeTest.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/hyperon-pln_metta/common/MaybeTest.metta.html)|
|  4  |  0  | superpose_nested.metta.metta      |[reports/cuRRent/baseline_compat/metta-morph_tests/superpose_nested.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/metta-morph_tests/superpose_nested.metta.html)|
|  3  |  0  | b3_direct.metta.metta             |[reports/cuRRent/baseline_compat/hyperon-experimental_scripts/b3_direct.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/hyperon-experimental_scripts/b3_direct.metta.html)|
|  3  |  0  | e1_kb_write.metta.metta           |[reports/cuRRent/baseline_compat/hyperon-experimental_scripts/e1_kb_write.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/hyperon-experimental_scripts/e1_kb_write.metta.html)|
|  3  |  0  | f1_moduleA.metta.metta            |[reports/cuRRent/baseline_compat/hyperon-experimental_scripts/f1_moduleA.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/hyperon-experimental_scripts/f1_moduleA.metta.html)|
|  3  |  0  | MinerMatchTest.metta.metta        |[reports/cuRRent/extended_compat/hyperon-miner/match/MinerMatchTest.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/extended_compat/hyperon-miner/match/MinerMatchTest.metta.html)|
|  3  |  0  | MinerUtils.metta.metta            |[reports/cuRRent/extended_compat/hyperon-miner/utils/MinerUtils.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/extended_compat/hyperon-miner/utils/MinerUtils.metta.html)|
|  2  |  0  | 01_lang_inc.metta.metta           |[reports/cuRRent/baseline_compat/hyperon-mettalog_sanity/01_lang_inc.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/hyperon-mettalog_sanity/01_lang_inc.metta.html)|
|  2  |  0  | EqualityTypeTest.metta.metta      |[reports/cuRRent/baseline_compat/hyperon-pln_metta/common/EqualityTypeTest.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/hyperon-pln_metta/common/EqualityTypeTest.metta.html)|
|  2  |  0  | let_superpose_list.metta.metta    |[reports/cuRRent/baseline_compat/metta-morph_tests/let_superpose_list.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/metta-morph_tests/let_superpose_list.metta.html)|
|  2  |  0  | NatTest.metta.metta               |[reports/cuRRent/baseline_compat/hyperon-pln_metta/hol/NatTest.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/hyperon-pln_metta/hol/NatTest.metta.html)|
|  2  |  0  | zeroargs.metta.metta              |[reports/cuRRent/baseline_compat/metta-morph_tests/zeroargs.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/metta-morph_tests/zeroargs.metta.html)|
|  1  |  0  | 02-curried-plus.metta.metta       |[reports/cuRRent/baseline_compat/hyperon-mettalog_sanity/02-curried-plus.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/hyperon-mettalog_sanity/02-curried-plus.metta.html)|
|  1  |  0  | a2_opencoggy.metta.metta          |[reports/cuRRent/baseline_compat/hyperon-experimental_scripts/a2_opencoggy.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/hyperon-experimental_scripts/a2_opencoggy.metta.html)|
|  1  |  0  | add_atom_match.metta.metta        |[reports/cuRRent/baseline_compat/metta-morph_tests/add_atom_match.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/metta-morph_tests/add_atom_match.metta.html)|
|  1  |  0  | and_or.metta.metta                |[reports/cuRRent/baseline_compat/metta-morph_tests/and_or.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/metta-morph_tests/and_or.metta.html)|
|  1  |  0  | collapse.metta.metta              |[reports/cuRRent/baseline_compat/metta-morph_tests/collapse.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/metta-morph_tests/collapse.metta.html)|
|  1  |  0  | d5_auto_types.metta.metta         |[reports/cuRRent/baseline_compat/hyperon-experimental_scripts/d5_auto_types.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/hyperon-experimental_scripts/d5_auto_types.metta.html)|
|  1  |  0  | factorial.metta.metta             |[reports/cuRRent/baseline_compat/metta-morph_tests/factorial.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/metta-morph_tests/factorial.metta.html)|
|  1  |  0  | fwgc1.metta.metta                 |[reports/cuRRent/performance/fwgc1.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/performance/fwgc1.metta.html)|
|  1  |  0  | hanoi-one-space.metta.metta       |[reports/cuRRent/performance/hanoi-one-space.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/performance/hanoi-one-space.metta.html)|
|  1  |  0  | hanoi-peg-space.metta.metta       |[reports/cuRRent/performance/hanoi-peg-space.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/performance/hanoi-peg-space.metta.html)|
|  1  |  0  | identity.metta.metta              |[reports/cuRRent/baseline_compat/metta-morph_tests/identity.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/metta-morph_tests/identity.metta.html)|
|  1  |  0  | if.metta.metta                    |[reports/cuRRent/baseline_compat/metta-morph_tests/if.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/metta-morph_tests/if.metta.html)|
|  1  |  0  | ImplicationDirectIntroductionEqualTest.metta.metta|[reports/cuRRent/baseline_compat/hyperon-pln_metta/equal/ImplicationDirectIntroductionEqualTest.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/hyperon-pln_metta/equal/ImplicationDirectIntroductionEqualTest.metta.html)|
|  1  |  0  | InTest.metta.metta                |[reports/cuRRent/baseline_compat/hyperon-pln_metta/common/InTest.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/hyperon-pln_metta/common/InTest.metta.html)|
|  1  |  0  | letlet.metta.metta                |[reports/cuRRent/baseline_compat/metta-morph_tests/letlet.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/metta-morph_tests/letlet.metta.html)|
|  1  |  0  | let_superpose_list2.metta.metta   |[reports/cuRRent/baseline_compat/metta-morph_tests/let_superpose_list2.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/metta-morph_tests/let_superpose_list2.metta.html)|
|  1  |  0  | match_feval.metta.metta           |[reports/cuRRent/baseline_compat/metta-morph_tests/match_feval.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/metta-morph_tests/match_feval.metta.html)|
|  1  |  0  | multifunction.metta.metta         |[reports/cuRRent/baseline_compat/metta-morph_tests/multifunction.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/metta-morph_tests/multifunction.metta.html)|
|  1  |  0  | nested_parameters.metta.metta     |[reports/cuRRent/baseline_compat/metta-morph_tests/nested_parameters.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/metta-morph_tests/nested_parameters.metta.html)|
|  1  |  0  | pathfinding-easy-f.metta.metta    |[reports/cuRRent/performance/pathfinding-easy-f.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/performance/pathfinding-easy-f.metta.html)|
|  1  |  0  | pathfinding-hard-f.metta.metta    |[reports/cuRRent/performance/pathfinding-hard-f.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/performance/pathfinding-hard-f.metta.html)|
|  1  |  0  | peano.metta.metta                 |[reports/cuRRent/baseline_compat/metta-morph_tests/peano.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/metta-morph_tests/peano.metta.html)|
|  1  |  0  | structure-tests.metta.metta       |[reports/cuRRent/baseline_compat/hyperon-mettalog_sanity/structure-tests.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/hyperon-mettalog_sanity/structure-tests.metta.html)|
|  1  |  0  | subtyping-test.metta.metta        |[reports/cuRRent/baseline_compat/hyperon-pln_metta/subtyping/subtyping-test.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/hyperon-pln_metta/subtyping/subtyping-test.metta.html)|
|  1  |  0  | test_list_concatenation.metta.metta|[reports/cuRRent/performance/test_list_concatenation.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/performance/test_list_concatenation.metta.html)|
|  1  |  0  | types3.metta.metta                |[reports/cuRRent/baseline_compat/metta-morph_tests/types3.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/metta-morph_tests/types3.metta.html)|
|  1  |  0  | types.metta.metta                 |[reports/cuRRent/baseline_compat/metta-morph_tests/types.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/metta-morph_tests/types.metta.html)|
|  0  |  0  | DeductionImplicationDirectIntroductionDTLTest.metta.metta|[reports/cuRRent/baseline_compat/hyperon-pln_metta/dependent-types/DeductionImplicationDirectIntroductionDTLTest.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/hyperon-pln_metta/dependent-types/DeductionImplicationDirectIntroductionDTLTest.metta.html)|
|  0  |  0  | DeductionMatchTest.metta.metta    |[reports/cuRRent/baseline_compat/hyperon-pln_metta/match/DeductionMatchTest.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/hyperon-pln_metta/match/DeductionMatchTest.metta.html)|
|  0  |  0  | example1.metta.metta              |[reports/cuRRent/python_compat/extend/example1.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/python_compat/extend/example1.metta.html)|
|  0  |  0  | example2.metta.metta              |[reports/cuRRent/python_compat/extend/example2.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/python_compat/extend/example2.metta.html)|
|  0  |  0  | example3.metta.metta              |[reports/cuRRent/python_compat/extend/example3.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/python_compat/extend/example3.metta.html)|
|  0  |  0  | example4.metta.metta              |[reports/cuRRent/python_compat/extend/example4.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/python_compat/extend/example4.metta.html)|
|  0  |  0  | example5.metta.metta              |[reports/cuRRent/python_compat/extend/example5.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/python_compat/extend/example5.metta.html)|
|  0  |  0  | example6.metta.metta              |[reports/cuRRent/python_compat/extend/example6.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/python_compat/extend/example6.metta.html)|
|  0  |  0  | flybase-deduced-connections.metta.metta|[reports/cuRRent/flybase/flybase-deduced-connections.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/flybase/flybase-deduced-connections.metta.html)|
|  0  |  0  | flybase-mined-flat.metta.metta    |[reports/cuRRent/flybase/flybase-mined-flat.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/flybase/flybase-mined-flat.metta.html)|
|  0  |  0  | flybase-mined.metta.metta         |[reports/cuRRent/flybase/flybase-mined.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/flybase/flybase-mined.metta.html)|
|  0  |  0  | let_superpose_if_case.metta.metta |[reports/cuRRent/baseline_compat/metta-morph_tests/let_superpose_if_case.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/metta-morph_tests/let_superpose_if_case.metta.html)|
|  0  |  0  | NatSimpleTest.metta.metta         |[reports/cuRRent/baseline_compat/hyperon-pln_metta/hol/NatSimpleTest.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/hyperon-pln_metta/hol/NatSimpleTest.metta.html)|
|  0  |  0  | nm_test.metta.metta               |[reports/cuRRent/python_compat/hyperon-experimental_python/sandbox/numpy/nm_test.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/python_compat/hyperon-experimental_python/sandbox/numpy/nm_test.metta.html)|
|  0  |  0  | non-determinism.metta.metta       |[reports/cuRRent/baseline_compat/hyperon-pln_metta/synthesis/experiments/non-determinism.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/hyperon-pln_metta/synthesis/experiments/non-determinism.metta.html)|
|  0  |  0  | send-more.metta.metta             |[reports/cuRRent/features/send-more.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/features/send-more.metta.html)|
|  0  |  0  | SynthesizeTest.metta.metta        |[reports/cuRRent/baseline_compat/hyperon-pln_metta/synthesis/SynthesizeTest.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/hyperon-pln_metta/synthesis/SynthesizeTest.metta.html)|
|  0  |  0  | synthesize-via-case-test.metta.metta|[reports/cuRRent/baseline_compat/hyperon-pln_metta/synthesis/experiments/synthesize-via-case-test.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/hyperon-pln_metta/synthesis/experiments/synthesize-via-case-test.metta.html)|
|  0  |  0  | synthesize-via-let-test.metta.metta|[reports/cuRRent/baseline_compat/hyperon-pln_metta/synthesis/experiments/synthesize-via-let-test.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/hyperon-pln_metta/synthesis/experiments/synthesize-via-let-test.metta.html)|
|  0  |  0  | test_das.metta.metta              |[reports/cuRRent/python_compat/hyperon-experimental_python/sandbox/das_gate/test_das.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/python_compat/hyperon-experimental_python/sandbox/das_gate/test_das.metta.html)|
|  0  |  0  | test_nspace.metta.metta           |[reports/cuRRent/python_compat/hyperon-experimental_python/sandbox/neurospace/test_nspace.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/python_compat/hyperon-experimental_python/sandbox/neurospace/test_nspace.metta.html)|

</details>
 
 
| STATUS | TEST NAME | TEST CONDITION | ACTUAL RESULT | EXPECTED RESULT |
|--------|-----------|----------------|---------------|-----------------|
| PASS | [BACKWARD-CHAINER.BACKWARD-CHAINER-XP.01](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/hyperon-pln_metta/backward-chainer/backward-chainer-xp.metta.html#BACKWARD-CHAINER.BACKWARD-CHAINER-XP.01) | (assertEqualToResult "=== Bare Entail ===") | ("=== Bare Entail ===") | ("=== Bare Entail ===") |
| PASS | [BACKWARD-CHAINER.BACKWARD-CHAINER-XP.02](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/hyperon-pln_metta/backward-chainer/backward-chainer-xp.metta.html#BACKWARD-CHAINER.BACKWARD-CHAINER-XP.02) | (assertEqual (bc_bare A kb_bare rb_bare Z)) | (A) | (A) |
| FAIL | [BACKWARD-CHAINER.BACKWARD-CHAINER-XP.03](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/hyperon-pln_metta/backward-chainer/backward-chainer-xp.metta.html#BACKWARD-CHAINER.BACKWARD-CHAINER-XP.03) | (assertEqual (bc_bare B kb_bare rb_bare (fromNumber 1))) | () | (B) |
| FAIL | [BACKWARD-CHAINER.BACKWARD-CHAINER-XP.04](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/hyperon-pln_metta/backward-chainer/backward-chainer-xp.metta.html#BACKWARD-CHAINER.BACKWARD-CHAINER-XP.04) | (assertEqual (bc_bare C kb_bare rb_bare (fromNumber 2))) | () | (C) |
| PASS | [BACKWARD-CHAINER.BACKWARD-CHAINER-XP.05](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/hyperon-pln_metta/backward-chainer/backward-chainer-xp.metta.html#BACKWARD-CHAINER.BACKWARD-CHAINER-XP.05) | (assertEqualToResult (bc_bare D kb_bare rb_bare (fromNumber 4))) | () | () |
| PASS | [BACKWARD-CHAINER.BACKWARD-CHAINER-XP.06](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/hyperon-pln_metta/backward-chainer/backward-chainer-xp.metta.html#BACKWARD-CHAINER.BACKWARD-CHAINER-XP.06) | (assertEqualToResult "=== Equality ===") | ("=== Equality ===") | ("=== Equality ===") |
| PASS | [BACKWARD-CHAINER.BACKWARD-CHAINER-XP.07](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/hyperon-pln_metta/backward-chainer/backward-chainer-xp.metta.html#BACKWARD-CHAINER.BACKWARD-CHAINER-XP.07) | (assertEqual (bc_eq A kb_eq Z)) | (A) | (A) |
| FAIL | [BACKWARD-CHAINER.BACKWARD-CHAINER-XP.08](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/hyperon-pln_metta/backward-chainer/backward-chainer-xp.metta.html#BACKWARD-CHAINER.BACKWARD-CHAINER-XP.08) | (assertEqual (bc_eq B kb_eq (fromNumber 1))) | () | (B) |
| FAIL | [BACKWARD-CHAINER.BACKWARD-CHAINER-XP.09](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/hyperon-pln_metta/backward-chainer/backward-chainer-xp.metta.html#BACKWARD-CHAINER.BACKWARD-CHAINER-XP.09) | (assertEqualToResult (bc_eq C kb_eq (fromNumber 2))) | () | (C) |
| PASS | [BACKWARD-CHAINER.BACKWARD-CHAINER-XP.10](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/hyperon-pln_metta/backward-chainer/backward-chainer-xp.metta.html#BACKWARD-CHAINER.BACKWARD-CHAINER-XP.10) | (assertEqual (bc_eq (â A B) kb_eq (fromNumber 0))) | ((â A B)) | ((â A B)) |
| PASS | [BACKWARD-CHAINER.BACKWARD-CHAINER-XP.11](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/hyperon-pln_metta/backward-chainer/backward-chainer-xp.metta.html#BACKWARD-CHAINER.BACKWARD-CHAINER-XP.11) | (assertEqual (bc_eq (â B C) kb_eq (fromNumber 0))) | ((â B C)) | ((â B C)) |
| FAIL | [BACKWARD-CHAINER.BACKWARD-CHAINER-XP.12](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/hyperon-pln_metta/backward-chainer/backward-chainer-xp.metta.html#BACKWARD-CHAINER.BACKWARD-CHAINER-XP.12) | (assertEqual (bc_eq (â A C) kb_eq (fromNumber 2))) | () | ((â A C)) |
| PASS | [BACKWARD-CHAINER.BACKWARD-CHAINER-XP.13](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/hyperon-pln_metta/backward-chainer/backward-chainer-xp.metta.html#BACKWARD-CHAINER.BACKWARD-CHAINER-XP.13) | (assertEqualToResult "=== Bare Entail Match ===") | ("=== Bare Entail Match ===") | ("=== Bare Entail Match ===") |
| PASS | [BACKWARD-CHAINER.BACKWARD-CHAINER-XP.14](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/hyperon-pln_metta/backward-chainer/backward-chainer-xp.metta.html#BACKWARD-CHAINER.BACKWARD-CHAINER-XP.14) | (assertEqualToResult (bind! &kb_bem (new-space))) | () | (()) |
| PASS | [BACKWARD-CHAINER.BACKWARD-CHAINER-XP.15](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/hyperon-pln_metta/backward-chainer/backward-chainer-xp.metta.html#BACKWARD-CHAINER.BACKWARD-CHAINER-XP.15) | (assertEqualToResult (add-atom &kb_bem (â A B))) | () | (()) |
| PASS | [BACKWARD-CHAINER.BACKWARD-CHAINER-XP.16](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/hyperon-pln_metta/backward-chainer/backward-chainer-xp.metta.html#BACKWARD-CHAINER.BACKWARD-CHAINER-XP.16) | (assertEqualToResult (add-atom &kb_bem (â B C))) | () | (()) |
| PASS | [BACKWARD-CHAINER.BACKWARD-CHAINER-XP.17](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/hyperon-pln_metta/backward-chainer/backward-chainer-xp.metta.html#BACKWARD-CHAINER.BACKWARD-CHAINER-XP.17) | (assertEqualToResult (add-atom &kb_bem A)) | () | (()) |
| PASS | [BACKWARD-CHAINER.BACKWARD-CHAINER-XP.18](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/hyperon-pln_metta/backward-chainer/backward-chainer-xp.metta.html#BACKWARD-CHAINER.BACKWARD-CHAINER-XP.18) | (assertEqualToResult (bind! &rb_bem (new-space))) | () | (()) |
| PASS | [BACKWARD-CHAINER.BACKWARD-CHAINER-XP.19](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/hyperon-pln_metta/backward-chainer/backward-chainer-xp.metta.html#BACKWARD-CHAINER.BACKWARD-CHAINER-XP.19) | (assertEqualToResult (add-atom &rb_bem (â¢ (â $P $Q) $P $Q))) | () | (()) |
| PASS | [BACKWARD-CHAINER.BACKWARD-CHAINER-XP.20](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/hyperon-pln_metta/backward-chainer/backward-chainer-xp.metta.html#BACKWARD-CHAINER.BACKWARD-CHAINER-XP.20) | (assertEqualToResult (add-atom &rb_bem (â¢ (â $P $Q) (â $Q $R) (â $P $R)))) | () | (()) |
| FAIL | [BACKWARD-CHAINER.BACKWARD-CHAINER-XP.21](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/hyperon-pln_metta/backward-chainer/backward-chainer-xp.metta.html#BACKWARD-CHAINER.BACKWARD-CHAINER-XP.21) | (assertEqual (bc_bem A Z)) | () | (A) |
| FAIL | [BACKWARD-CHAINER.BACKWARD-CHAINER-XP.22](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/hyperon-pln_metta/backward-chainer/backward-chainer-xp.metta.html#BACKWARD-CHAINER.BACKWARD-CHAINER-XP.22) | (assertEqual (bc_bem B (fromNumber 1))) | () | (B) |
| FAIL | [BACKWARD-CHAINER.BACKWARD-CHAINER-XP.23](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/hyperon-pln_metta/backward-chainer/backward-chainer-xp.metta.html#BACKWARD-CHAINER.BACKWARD-CHAINER-XP.23) | (assertEqualToResult (bc_bem C (fromNumber 2))) | () | (C) |
| FAIL | [BACKWARD-CHAINER.BACKWARD-CHAINER-XP.24](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/hyperon-pln_metta/backward-chainer/backward-chainer-xp.metta.html#BACKWARD-CHAINER.BACKWARD-CHAINER-XP.24) | (assertEqual (bc_bem (â A B) (fromNumber 0))) | () | ((â A B)) |
| FAIL | [BACKWARD-CHAINER.BACKWARD-CHAINER-XP.25](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/hyperon-pln_metta/backward-chainer/backward-chainer-xp.metta.html#BACKWARD-CHAINER.BACKWARD-CHAINER-XP.25) | (assertEqual (bc_bem (â B C) (fromNumber 0))) | () | ((â B C)) |
| FAIL | [BACKWARD-CHAINER.BACKWARD-CHAINER-XP.26](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/hyperon-pln_metta/backward-chainer/backward-chainer-xp.metta.html#BACKWARD-CHAINER.BACKWARD-CHAINER-XP.26) | (assertEqual (bc_bem (â A C) (fromNumber 2))) | () | ((â A C)) |
| PASS | [BACKWARD-CHAINER.BACKWARD-CHAINER-XP.27](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/hyperon-pln_metta/backward-chainer/backward-chainer-xp.metta.html#BACKWARD-CHAINER.BACKWARD-CHAINER-XP.27) | (assertEqualToResult "=== Equality Match ===") | ("=== Equality Match ===") | ("=== Equality Match ===") |
| PASS | [BACKWARD-CHAINER.BACKWARD-CHAINER-XP.28](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/hyperon-pln_metta/backward-chainer/backward-chainer-xp.metta.html#BACKWARD-CHAINER.BACKWARD-CHAINER-XP.28) | (assertEqualToResult (bind! &kb_em (new-space))) | () | (()) |
| PASS | [BACKWARD-CHAINER.BACKWARD-CHAINER-XP.29](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/hyperon-pln_metta/backward-chainer/backward-chainer-xp.metta.html#BACKWARD-CHAINER.BACKWARD-CHAINER-XP.29) | (assertEqualToResult (add-atom &kb_em (â A B))) | () | (()) |
| PASS | [BACKWARD-CHAINER.BACKWARD-CHAINER-XP.30](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/hyperon-pln_metta/backward-chainer/backward-chainer-xp.metta.html#BACKWARD-CHAINER.BACKWARD-CHAINER-XP.30) | (assertEqualToResult (add-atom &kb_em (â B C))) | () | (()) |
| PASS | [BACKWARD-CHAINER.BACKWARD-CHAINER-XP.31](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/hyperon-pln_metta/backward-chainer/backward-chainer-xp.metta.html#BACKWARD-CHAINER.BACKWARD-CHAINER-XP.31) | (assertEqualToResult (add-atom &kb_em A)) | () | (()) |
| FAIL | [BACKWARD-CHAINER.BACKWARD-CHAINER-XP.32](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/hyperon-pln_metta/backward-chainer/backward-chainer-xp.metta.html#BACKWARD-CHAINER.BACKWARD-CHAINER-XP.32) | (assertEqual (bc_em A Z)) | () | (A) |
| FAIL | [BACKWARD-CHAINER.BACKWARD-CHAINER-XP.33](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/hyperon-pln_metta/backward-chainer/backward-chainer-xp.metta.html#BACKWARD-CHAINER.BACKWARD-CHAINER-XP.33) | (assertEqual (bc_em B (fromNumber 1))) | () | (B) |
| FAIL | [BACKWARD-CHAINER.BACKWARD-CHAINER-XP.34](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/hyperon-pln_metta/backward-chainer/backward-chainer-xp.metta.html#BACKWARD-CHAINER.BACKWARD-CHAINER-XP.34) | (assertEqualToResult (bc_em C (fromNumber 2))) | () | (C) |
| FAIL | [BACKWARD-CHAINER.BACKWARD-CHAINER-XP.35](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/hyperon-pln_metta/backward-chainer/backward-chainer-xp.metta.html#BACKWARD-CHAINER.BACKWARD-CHAINER-XP.35) | (assertEqual (bc_em (â A B) (fromNumber 0))) | () | ((â A B)) |
| FAIL | [BACKWARD-CHAINER.BACKWARD-CHAINER-XP.36](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/hyperon-pln_metta/backward-chainer/backward-chainer-xp.metta.html#BACKWARD-CHAINER.BACKWARD-CHAINER-XP.36) | (assertEqual (bc_em (â B C) (fromNumber 0))) | () | ((â B C)) |
| FAIL | [BACKWARD-CHAINER.BACKWARD-CHAINER-XP.37](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/hyperon-pln_metta/backward-chainer/backward-chainer-xp.metta.html#BACKWARD-CHAINER.BACKWARD-CHAINER-XP.37) | (assertEqual (bc_em (â A C) (fromNumber 2))) | () | ((â A C)) |
| PASS | [BACKWARD-CHAINER.BACKWARD-CHAINER-XP.38](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/hyperon-pln_metta/backward-chainer/backward-chainer-xp.metta.html#BACKWARD-CHAINER.BACKWARD-CHAINER-XP.38) | (assertEqualToResult "=== DTL Equality Match ===") | ("=== DTL Equality Match ===") | ("=== DTL Equality Match ===") |
| PASS | [BACKWARD-CHAINER.BACKWARD-CHAINER-XP.39](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/hyperon-pln_metta/backward-chainer/backward-chainer-xp.metta.html#BACKWARD-CHAINER.BACKWARD-CHAINER-XP.39) | (assertEqualToResult (bind! &kb_dem (new-space))) | () | (()) |
| PASS | [BACKWARD-CHAINER.BACKWARD-CHAINER-XP.40](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/hyperon-pln_metta/backward-chainer/backward-chainer-xp.metta.html#BACKWARD-CHAINER.BACKWARD-CHAINER-XP.40) | (assertEqualToResult (add-atom &kb_dem (: ab (â A B)))) | () | (()) |
| PASS | [BACKWARD-CHAINER.BACKWARD-CHAINER-XP.41](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/hyperon-pln_metta/backward-chainer/backward-chainer-xp.metta.html#BACKWARD-CHAINER.BACKWARD-CHAINER-XP.41) | (assertEqualToResult (add-atom &kb_dem (: bc (â B C)))) | () | (()) |
| PASS | [BACKWARD-CHAINER.BACKWARD-CHAINER-XP.42](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/hyperon-pln_metta/backward-chainer/backward-chainer-xp.metta.html#BACKWARD-CHAINER.BACKWARD-CHAINER-XP.42) | (assertEqualToResult (add-atom &kb_dem (: a A))) | () | (()) |
| FAIL | [BACKWARD-CHAINER.BACKWARD-CHAINER-XP.43](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/hyperon-pln_metta/backward-chainer/backward-chainer-xp.metta.html#BACKWARD-CHAINER.BACKWARD-CHAINER-XP.43) | (assertEqual (bc_dem (: $Prf A) Z)) | () | ((: a A)) |
| FAIL | [BACKWARD-CHAINER.BACKWARD-CHAINER-XP.44](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/hyperon-pln_metta/backward-chainer/backward-chainer-xp.metta.html#BACKWARD-CHAINER.BACKWARD-CHAINER-XP.44) | (assertEqual (bc_dem (: $Prf (â A B)) Z)) | () | ((: ab (â A B))) |
| FAIL | [BACKWARD-CHAINER.BACKWARD-CHAINER-XP.45](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/hyperon-pln_metta/backward-chainer/backward-chainer-xp.metta.html#BACKWARD-CHAINER.BACKWARD-CHAINER-XP.45) | (assertEqual (bc_dem (: $Prf B) (fromNumber 1))) | () | ((: (ModusPonens ab a) B)) |
| FAIL | [BACKWARD-CHAINER.BACKWARD-CHAINER-XP.46](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/hyperon-pln_metta/backward-chainer/backward-chainer-xp.metta.html#BACKWARD-CHAINER.BACKWARD-CHAINER-XP.46) | (assertEqualToResult (bc_dem (: $Prf C) (fromNumber 2))) | () | ((: (ModusPonens bc (ModusPonens ab a)) C) (: (ModusPonens (Deduction ab bc) a) C)) |
| FAIL | [BACKWARD-CHAINER.BACKWARD-CHAINER-XP.47](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/hyperon-pln_metta/backward-chainer/backward-chainer-xp.metta.html#BACKWARD-CHAINER.BACKWARD-CHAINER-XP.47) | (assertEqual (bc_dem (: $Prf (â A B)) (fromNumber 0))) | () | ((: ab (â A B))) |
| FAIL | [BACKWARD-CHAINER.BACKWARD-CHAINER-XP.48](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/hyperon-pln_metta/backward-chainer/backward-chainer-xp.metta.html#BACKWARD-CHAINER.BACKWARD-CHAINER-XP.48) | (assertEqual (bc_dem (: $Prf (â B C)) (fromNumber 0))) | () | ((: bc (â B C))) |
| FAIL | [BACKWARD-CHAINER.BACKWARD-CHAINER-XP.49](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/hyperon-pln_metta/backward-chainer/backward-chainer-xp.metta.html#BACKWARD-CHAINER.BACKWARD-CHAINER-XP.49) | (assertEqual (bc_dem (: $Prf (â A C)) (fromNumber 2))) | () | ((: (Deduction ab bc) (â A C))) |
| PASS | [COMMON.LISTTEST.01](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/hyperon-pln_metta/common/ListTest.metta.html#COMMON.LISTTEST.01) | (assertEqualToResult (import! &self List.metta)) | () | (()) |
| PASS | [COMMON.LISTTEST.02](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/hyperon-pln_metta/common/ListTest.metta.html#COMMON.LISTTEST.02) | (assertEqualToResult ("============ Test insert ============")) | (("============ Test insert ============")) | (("============ Test insert ============")) |
| PASS | [COMMON.LISTTEST.03](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/hyperon-pln_metta/common/ListTest.metta.html#COMMON.LISTTEST.03) | (assertEqualToResult (insert 1 Nil)) | ((Cons 1 Nil)) | ((Cons 1 Nil)) |
| PASS | [COMMON.LISTTEST.04](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/hyperon-pln_metta/common/ListTest.metta.html#COMMON.LISTTEST.04) | (assertEqualToResult (insert 2 (insert 1 Nil))) | ((Cons 1 (Cons 2 Nil))) | ((Cons 1 (Cons 2 Nil))) |
| PASS | [COMMON.LISTTEST.05](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/hyperon-pln_metta/common/ListTest.metta.html#COMMON.LISTTEST.05) | (assertEqualToResult (insert 3 (insert 2 (insert 1 Nil)))) | ((Cons 1 (Cons 2 (Cons 3 Nil)))) | ((Cons 1 (Cons 2 (Cons 3 Nil)))) |
| FAIL | [COMMON.LISTTEST.06](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/hyperon-pln_metta/common/ListTest.metta.html#COMMON.LISTTEST.06) | (assertEqualToResult (== (Cons 1 Nil) (Cons 1 Nil))) | ((== (Cons 1 Nil) (Cons 1 Nil))) | (True) |
| PASS | [COMMON.LISTTEST.07](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/hyperon-pln_metta/common/ListTest.metta.html#COMMON.LISTTEST.07) | (assertEqualToResult ("============ Test sort ============")) | (("============ Test sort ============")) | (("============ Test sort ============")) |
| PASS | [COMMON.LISTTEST.08](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/hyperon-pln_metta/common/ListTest.metta.html#COMMON.LISTTEST.08) | (assertEqualToResult (sort (Cons 1 Nil))) | ((Cons 1 Nil)) | ((Cons 1 Nil)) |
| PASS | [COMMON.LISTTEST.09](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/hyperon-pln_metta/common/ListTest.metta.html#COMMON.LISTTEST.09) | (assertEqualToResult (sort (Cons 2 (Cons 1 Nil)))) | ((Cons 1 (Cons 2 Nil))) | ((Cons 1 (Cons 2 Nil))) |
| PASS | [COMMON.LISTTEST.10](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/hyperon-pln_metta/common/ListTest.metta.html#COMMON.LISTTEST.10) | (assertEqualToResult (sort (Cons 3 (Cons 1 (Cons 2 Nil))))) | ((Cons 1 (Cons 2 (Cons 3 Nil)))) | ((Cons 1 (Cons 2 (Cons 3 Nil)))) |
| PASS | [COMMON.LISTTEST.11](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/hyperon-pln_metta/common/ListTest.metta.html#COMMON.LISTTEST.11) | (assertEqualToResult ("============ Test elem ============")) | (("============ Test elem ============")) | (("============ Test elem ============")) |
| PASS | [COMMON.LISTTEST.12](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/hyperon-pln_metta/common/ListTest.metta.html#COMMON.LISTTEST.12) | (assertEqualToResult (elem 1 (Cons 3 (Cons 1 (Cons 2 Nil))))) | (True) | (True) |
| PASS | [COMMON.LISTTEST.13](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/hyperon-pln_metta/common/ListTest.metta.html#COMMON.LISTTEST.13) | (assertEqualToResult (elem 5 (Cons 3 (Cons 1 (Cons 2 Nil))))) | (False) | (False) |
| PASS | [COMMON.LISTTEST.14](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/hyperon-pln_metta/common/ListTest.metta.html#COMMON.LISTTEST.14) | (assertEqualToResult ("============ Test uniq ============")) | (("============ Test uniq ============")) | (("============ Test uniq ============")) |
| PASS | [COMMON.LISTTEST.15](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/hyperon-pln_metta/common/ListTest.metta.html#COMMON.LISTTEST.15) | (assertEqualToResult (uniq (Cons 2 (Cons 3 (Cons 1 (Cons 2 Nil)))))) | ((Cons 2 (Cons 3 (Cons 1 Nil)))) | ((Cons 2 (Cons 3 (Cons 1 Nil)))) |
| PASS | [COMMON.LISTTEST.16](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/hyperon-pln_metta/common/ListTest.metta.html#COMMON.LISTTEST.16) | (assertEqualToResult (uniq (Cons 2 (Cons 3 (Cons 3 (Cons 2 Nil)))))) | ((Cons 2 (Cons 3 Nil))) | ((Cons 2 (Cons 3 Nil))) |
| PASS | [COMMON.LISTTEST.17](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/hyperon-pln_metta/common/ListTest.metta.html#COMMON.LISTTEST.17) | (assertEqualToResult ("============ Test insert_uniq ============")) | (("============ Test insert_uniq ============")) | (("============ Test insert_uniq ============")) |
| PASS | [COMMON.LISTTEST.18](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/hyperon-pln_metta/common/ListTest.metta.html#COMMON.LISTTEST.18) | (assertEqualToResult (insert_uniq 2 (insert_uniq 1 Nil))) | ((Cons 1 (Cons 2 Nil))) | ((Cons 1 (Cons 2 Nil))) |
| PASS | [COMMON.LISTTEST.19](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/hyperon-pln_metta/common/ListTest.metta.html#COMMON.LISTTEST.19) | (assertEqualToResult (insert_uniq 3 (insert_uniq 2 (insert_uniq 1 Nil)))) | ((Cons 1 (Cons 2 (Cons 3 Nil)))) | ((Cons 1 (Cons 2 (Cons 3 Nil)))) |
| PASS | [COMMON.LISTTEST.20](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/hyperon-pln_metta/common/ListTest.metta.html#COMMON.LISTTEST.20) | (assertEqualToResult (insert_uniq 2 (insert_uniq 3 (insert_uniq 2 (insert_uniq 1 Nil))))) | ((Cons 1 (Cons 2 (Cons 3 Nil)))) | ((Cons 1 (Cons 2 (Cons 3 Nil)))) |
| FAIL | [DEPENDENT-TYPES.IMPLICATIONDIRECTINTRODUCTIONDTLTEST.12](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/hyperon-pln_metta/dependent-types/ImplicationDirectIntroductionDTLTest.metta.html#DEPENDENT-TYPES.IMPLICATIONDIRECTINTRODUCTIONDTLTEST.12) | (assertEqualToResult (synthesize (: $Proof (â (fromNumber 2) (fromNumber 3))) kb rb (fromNumber 2))) | () | ((: (SuccMonotonicity (SuccMonotonicity ZeroLTSucc)) (⍃ (S (S Z)) (S (S (S Z)))))) |
| PASS | [DEPENDENT-TYPES.IMPLICATIONDIRECTINTRODUCTIONDTLTEST.13](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/hyperon-pln_metta/dependent-types/ImplicationDirectIntroductionDTLTest.metta.html#DEPENDENT-TYPES.IMPLICATIONDIRECTINTRODUCTIONDTLTEST.13) | (assertEqualToResult "===== Prove that 5 < 7 (synthesizer) =====") | ("===== Prove that 5 < 7 (synthesizer) =====") | ("===== Prove that 5 < 7 (synthesizer) =====") |
| FAIL | [DEPENDENT-TYPES.IMPLICATIONDIRECTINTRODUCTIONDTLTEST.14](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/hyperon-pln_metta/dependent-types/ImplicationDirectIntroductionDTLTest.metta.html#DEPENDENT-TYPES.IMPLICATIONDIRECTINTRODUCTIONDTLTEST.14) | (assertEqualToResult (synthesize (: $Proof (â (fromNumber 3) (fromNumber 7))) kb rb (fromNumber 3))) | () | ((: (SuccMonotonicity (SuccMonotonicity (SuccMonotonicity ZeroLTSucc))) (⍃ (S (S (S Z))) (S (S (S (S (S (S (S Z)))))))))) |
| PASS | [DEPENDENT-TYPES.IMPLICATIONDIRECTINTRODUCTIONDTLTEST.15](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/hyperon-pln_metta/dependent-types/ImplicationDirectIntroductionDTLTest.metta.html#DEPENDENT-TYPES.IMPLICATIONDIRECTINTRODUCTIONDTLTEST.15) | (assertEqualToResult "===== Prove Pâ\x86\\x92\Q using base rule (synthesizer) =====") | ("===== Prove Pâ\x86\\x92\Q using base rule (synthesizer) =====") | ("===== Prove P→Q using base rule (synthesizer) =====") |
| PASS | [HYPERON-EXPERIMENTAL-SCRIPTS.B2-BACKCHAIN.01](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/hyperon-experimental_scripts/b2_backchain.metta.html#HYPERON-EXPERIMENTAL-SCRIPTS.B2-BACKCHAIN.01) | (assertEqualToResult (Frog Sam)) | ((Frog Sam)) | ((Frog Sam)) |
| PASS | [HYPERON-EXPERIMENTAL-SCRIPTS.B2-BACKCHAIN.02](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/hyperon-experimental_scripts/b2_backchain.metta.html#HYPERON-EXPERIMENTAL-SCRIPTS.B2-BACKCHAIN.02) | (assertEqual (frog Sam)) | (T) | (T) |
| PASS | [HYPERON-EXPERIMENTAL-SCRIPTS.B2-BACKCHAIN.03](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/hyperon-experimental_scripts/b2_backchain.metta.html#HYPERON-EXPERIMENTAL-SCRIPTS.B2-BACKCHAIN.03) | (assertEqualToResult (frog Fritz)) | () | () |
| FAIL | [HYPERON-EXPERIMENTAL-SCRIPTS.B2-BACKCHAIN.04](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/hyperon-experimental_scripts/b2_backchain.metta.html#HYPERON-EXPERIMENTAL-SCRIPTS.B2-BACKCHAIN.04) | (assertEqual (deduce (Evaluation (mortal Plato)))) | () | (T) |
| FAIL | [HYPERON-EXPERIMENTAL-SCRIPTS.B2-BACKCHAIN.05](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/hyperon-experimental_scripts/b2_backchain.metta.html#HYPERON-EXPERIMENTAL-SCRIPTS.B2-BACKCHAIN.05) | (assertEqual (explain (Evaluation (mortal Plato)))) | () | (((mortal Plato) proven by ((human Plato) proven by (And (philosopher Plato) (likes-to-wrestle Plato))))) |
| PASS | [HYPERON-EXPERIMENTAL-SCRIPTS.B4-NONDETERM.01](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/hyperon-experimental_scripts/b4_nondeterm.metta.html#HYPERON-EXPERIMENTAL-SCRIPTS.B4-NONDETERM.01) | (assertEqual (match &self (= (color) $X) $X)) | (green yellow red) | (red yellow green) |
| PASS | [HYPERON-EXPERIMENTAL-SCRIPTS.B4-NONDETERM.02](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/hyperon-experimental_scripts/b4_nondeterm.metta.html#HYPERON-EXPERIMENTAL-SCRIPTS.B4-NONDETERM.02) | (assertEqual (collapse (match &self (= (shape) $X) $X))) | () | () |
| PASS | [HYPERON-EXPERIMENTAL-SCRIPTS.B4-NONDETERM.03](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/hyperon-experimental_scripts/b4_nondeterm.metta.html#HYPERON-EXPERIMENTAL-SCRIPTS.B4-NONDETERM.03) | (assertEqual (color)) | (green yellow red) | (red yellow green) |
| PASS | [HYPERON-EXPERIMENTAL-SCRIPTS.B4-NONDETERM.04](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/hyperon-experimental_scripts/b4_nondeterm.metta.html#HYPERON-EXPERIMENTAL-SCRIPTS.B4-NONDETERM.04) | (assertEqual (color)) | (green yellow red) | (green yellow red) |
| PASS | [HYPERON-EXPERIMENTAL-SCRIPTS.B4-NONDETERM.05](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/hyperon-experimental_scripts/b4_nondeterm.metta.html#HYPERON-EXPERIMENTAL-SCRIPTS.B4-NONDETERM.05) | (assertEqual (collapse (shape))) | (((shape))) | (((shape))) |
| PASS | [HYPERON-EXPERIMENTAL-SCRIPTS.B4-NONDETERM.06](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/hyperon-experimental_scripts/b4_nondeterm.metta.html#HYPERON-EXPERIMENTAL-SCRIPTS.B4-NONDETERM.06) | (assertEqualToResult (shape)) | ((shape)) | ((shape)) |
| PASS | [HYPERON-EXPERIMENTAL-SCRIPTS.B4-NONDETERM.07](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/hyperon-experimental_scripts/b4_nondeterm.metta.html#HYPERON-EXPERIMENTAL-SCRIPTS.B4-NONDETERM.07) | (assertEqualToResult (pair (bin) (bin))) | ((A A) (A B) (B A) (B B) (A A) (B A) (A B) (B B)) | ((A A) (A B) (B A) (B B)) |
| FAIL | [HYPERON-EXPERIMENTAL-SCRIPTS.B4-NONDETERM.08](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/hyperon-experimental_scripts/b4_nondeterm.metta.html#HYPERON-EXPERIMENTAL-SCRIPTS.B4-NONDETERM.08) | (assertEqual (find-equal (color) (foo))) | () | (red) |
| PASS | [HYPERON-EXPERIMENTAL-SCRIPTS.B4-NONDETERM.09](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/hyperon-experimental_scripts/b4_nondeterm.metta.html#HYPERON-EXPERIMENTAL-SCRIPTS.B4-NONDETERM.09) | (assertEqualToResult (rev A (superpose (B C D)))) | ((B A) (C A) (D A)) | ((B A) (C A) (D A)) |
| FAIL | [HYPERON-EXPERIMENTAL-SCRIPTS.B4-NONDETERM.10](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/hyperon-experimental_scripts/b4_nondeterm.metta.html#HYPERON-EXPERIMENTAL-SCRIPTS.B4-NONDETERM.10) | (assertEqual (is (air dry))) | ((start humidifier) (stop ventilation)) | ((stop ventilation) (start kettle) (start humidifier)) |
| FAIL | [HYPERON-EXPERIMENTAL-SCRIPTS.B4-NONDETERM.11](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/hyperon-experimental_scripts/b4_nondeterm.metta.html#HYPERON-EXPERIMENTAL-SCRIPTS.B4-NONDETERM.11) | (assertEqual (is (air wet))) | ((start ventilation) (stop humidifier)) | ((stop kettle) (stop humidifier) (start ventilation)) |
| PASS | [HYPERON-EXPERIMENTAL-SCRIPTS.B5-TYPES-PRELIM.01](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/hyperon-experimental_scripts/b5_types_prelim.metta.html#HYPERON-EXPERIMENTAL-SCRIPTS.B5-TYPES-PRELIM.01) | (assertEqual (Add S Z)) | (S) | (S) |
| PASS | [HYPERON-EXPERIMENTAL-SCRIPTS.B5-TYPES-PRELIM.03](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/hyperon-experimental_scripts/b5_types_prelim.metta.html#HYPERON-EXPERIMENTAL-SCRIPTS.B5-TYPES-PRELIM.03) | (assertEqual (Add (S Z) Z)) | ((S Z)) | ((S Z)) |
| PASS | [HYPERON-EXPERIMENTAL-SCRIPTS.B5-TYPES-PRELIM.04](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/hyperon-experimental_scripts/b5_types_prelim.metta.html#HYPERON-EXPERIMENTAL-SCRIPTS.B5-TYPES-PRELIM.04) | (assertEqual (Add Z (S Z))) | ((S Z)) | ((S Z)) |
| PASS | [HYPERON-EXPERIMENTAL-SCRIPTS.B5-TYPES-PRELIM.05](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/hyperon-experimental_scripts/b5_types_prelim.metta.html#HYPERON-EXPERIMENTAL-SCRIPTS.B5-TYPES-PRELIM.05) | (assertEqual (Add Something Z)) | (Something) | (Something) |
| PASS | [HYPERON-EXPERIMENTAL-SCRIPTS.B5-TYPES-PRELIM.06](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/hyperon-experimental_scripts/b5_types_prelim.metta.html#HYPERON-EXPERIMENTAL-SCRIPTS.B5-TYPES-PRELIM.06) | (assertEqualToResult (Add Z Ten)) | ((Add Z Ten)) | ((Add Z Ten)) |
| PASS | [HYPERON-EXPERIMENTAL-SCRIPTS.B5-TYPES-PRELIM.07](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/hyperon-experimental_scripts/b5_types_prelim.metta.html#HYPERON-EXPERIMENTAL-SCRIPTS.B5-TYPES-PRELIM.07) | (assertEqualToResult (Cons (S Z) (Cons Z Nil))) | ((Cons (S Z) (Cons Z Nil))) | ((Cons (S Z) (Cons Z Nil))) |
| PASS | [HYPERON-EXPERIMENTAL-SCRIPTS.B5-TYPES-PRELIM.09](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/hyperon-experimental_scripts/b5_types_prelim.metta.html#HYPERON-EXPERIMENTAL-SCRIPTS.B5-TYPES-PRELIM.09) | (assertEqual (eq (Add Z Z) Z)) | (T) | (T) |
| PASS | [HYPERON-EXPERIMENTAL-SCRIPTS.B5-TYPES-PRELIM.10](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/hyperon-experimental_scripts/b5_types_prelim.metta.html#HYPERON-EXPERIMENTAL-SCRIPTS.B5-TYPES-PRELIM.10) | (assertEqualToResult (eq Z (S Z))) | ((eq Z (S Z))) | ((eq Z (S Z))) |
| PASS | [HYPERON-EXPERIMENTAL-SCRIPTS.B5-TYPES-PRELIM.12](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/hyperon-experimental_scripts/b5_types_prelim.metta.html#HYPERON-EXPERIMENTAL-SCRIPTS.B5-TYPES-PRELIM.12) | (assertEqual (of-same-type Color Shape)) | (T) | (T) |
| PASS | [HYPERON-EXPERIMENTAL-SCRIPTS.B5-TYPES-PRELIM.13](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/hyperon-experimental_scripts/b5_types_prelim.metta.html#HYPERON-EXPERIMENTAL-SCRIPTS.B5-TYPES-PRELIM.13) | (assertEqual (of-same-type Green Red)) | (T) | (T) |
| PASS | [HYPERON-EXPERIMENTAL-SCRIPTS.B5-TYPES-PRELIM.16](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/hyperon-experimental_scripts/b5_types_prelim.metta.html#HYPERON-EXPERIMENTAL-SCRIPTS.B5-TYPES-PRELIM.16) | (assertEqual (Green $Who)) | (T) | (T) |
| PASS | [HYPERON-EXPERIMENTAL-SCRIPTS.B5-TYPES-PRELIM.17](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/hyperon-experimental_scripts/b5_types_prelim.metta.html#HYPERON-EXPERIMENTAL-SCRIPTS.B5-TYPES-PRELIM.17) | (assertEqual (match &self (Green $Who) $Who)) | (Sam) | (Sam) |
| PASS | [HYPERON-EXPERIMENTAL-SCRIPTS.B5-TYPES-PRELIM.18](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/hyperon-experimental_scripts/b5_types_prelim.metta.html#HYPERON-EXPERIMENTAL-SCRIPTS.B5-TYPES-PRELIM.18) | (assertEqual (match &self (Green $Who) (Green $Who))) | (T) | (T) |
| PASS | [HYPERON-EXPERIMENTAL-SCRIPTS.B5-TYPES-PRELIM.19](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/hyperon-experimental_scripts/b5_types_prelim.metta.html#HYPERON-EXPERIMENTAL-SCRIPTS.B5-TYPES-PRELIM.19) | (assertEqual (let $R (Add (S Z) Z) (match &self (= (eq $R (S Z)) $Tv) $Tv))) | (T) | (T) |
| PASS | [HYPERON-EXPERIMENTAL-SCRIPTS.B5-TYPES-PRELIM.20](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/hyperon-experimental_scripts/b5_types_prelim.metta.html#HYPERON-EXPERIMENTAL-SCRIPTS.B5-TYPES-PRELIM.20) | (assertEqualToResult (match &self (= (eq (Add (S Z) Z) (S Z)) $Tv) $Tv)) | () | () |
| PASS | [HYPERON-EXPERIMENTAL-SCRIPTS.B5-TYPES-PRELIM.21](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/hyperon-experimental_scripts/b5_types_prelim.metta.html#HYPERON-EXPERIMENTAL-SCRIPTS.B5-TYPES-PRELIM.21) | (assertEqual (let (S (S $R)) (Add (S Z) (S Z)) $R)) | (Z) | (Z) |
| PASS | [HYPERON-EXPERIMENTAL-SCRIPTS.B5-TYPES-PRELIM.22](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/hyperon-experimental_scripts/b5_types_prelim.metta.html#HYPERON-EXPERIMENTAL-SCRIPTS.B5-TYPES-PRELIM.22) | (assertEqual (let* (($R1 (Add Z Z)) ($R2 (Add $R1 (S Z))) ($R3 (Add $R2 (S Z)))) (match &self (= (eq (S (S Z)) $R3) $Tv) $Tv))) | (T) | (T) |
| PASS | [HYPERON-EXPERIMENTAL-SCRIPTS.B5-TYPES-PRELIM.23](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/hyperon-experimental_scripts/b5_types_prelim.metta.html#HYPERON-EXPERIMENTAL-SCRIPTS.B5-TYPES-PRELIM.23) | (assertEqual (eqa (Add Z Z) (Add Z Z))) | (T) | (T) |
| FAIL | [HYPERON-EXPERIMENTAL-SCRIPTS.B5-TYPES-PRELIM.24](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/hyperon-experimental_scripts/b5_types_prelim.metta.html#HYPERON-EXPERIMENTAL-SCRIPTS.B5-TYPES-PRELIM.24) | (assertEqualToResult (eqa Z (Add Z Z))) | (T) | ((eqa Z (Add Z Z))) |
| PASS | [HYPERON-EXPERIMENTAL-SCRIPTS.B5-TYPES-PRELIM.25](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/hyperon-experimental_scripts/b5_types_prelim.metta.html#HYPERON-EXPERIMENTAL-SCRIPTS.B5-TYPES-PRELIM.25) | (assertEqual (eq Z (Add Z Z))) | (T) | (T) |
| PASS | [HYPERON-EXPERIMENTAL-SCRIPTS.B5-TYPES-PRELIM.26](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/hyperon-experimental_scripts/b5_types_prelim.metta.html#HYPERON-EXPERIMENTAL-SCRIPTS.B5-TYPES-PRELIM.26) | (assertEqual (let $Z (Add Z Z) (eqa Z $Z))) | (T) | (T) |
| PASS | [HYPERON-EXPERIMENTAL-SCRIPTS.C1-GROUNDED-BASIC.01](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/hyperon-experimental_scripts/c1_grounded_basic.metta.html#HYPERON-EXPERIMENTAL-SCRIPTS.C1-GROUNDED-BASIC.01) | (assertEqualToResult (+ 2 (* 3 5.5))) | (18.5) | (18.5) |
| PASS | [HYPERON-EXPERIMENTAL-SCRIPTS.C1-GROUNDED-BASIC.02](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/hyperon-experimental_scripts/c1_grounded_basic.metta.html#HYPERON-EXPERIMENTAL-SCRIPTS.C1-GROUNDED-BASIC.02) | (assertEqualToResult (- 8 (/ 4 6.4))) | (7.375) | (7.375) |
| PASS | [HYPERON-EXPERIMENTAL-SCRIPTS.C1-GROUNDED-BASIC.03](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/hyperon-experimental_scripts/c1_grounded_basic.metta.html#HYPERON-EXPERIMENTAL-SCRIPTS.C1-GROUNDED-BASIC.03) | (assertEqualToResult (% 21 17)) | (4) | (4) |
| PASS | [HYPERON-EXPERIMENTAL-SCRIPTS.C1-GROUNDED-BASIC.04](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/hyperon-experimental_scripts/c1_grounded_basic.metta.html#HYPERON-EXPERIMENTAL-SCRIPTS.C1-GROUNDED-BASIC.04) | (assertEqualToResult (< 4 (+ 2 (* 3 5)))) | (True) | (True) |
| PASS | [HYPERON-EXPERIMENTAL-SCRIPTS.C1-GROUNDED-BASIC.05](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/hyperon-experimental_scripts/c1_grounded_basic.metta.html#HYPERON-EXPERIMENTAL-SCRIPTS.C1-GROUNDED-BASIC.05) | (assertEqualToResult (and (> 4 2) (< 4 3))) | (False) | (False) |
| PASS | [HYPERON-EXPERIMENTAL-SCRIPTS.C1-GROUNDED-BASIC.06](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/hyperon-experimental_scripts/c1_grounded_basic.metta.html#HYPERON-EXPERIMENTAL-SCRIPTS.C1-GROUNDED-BASIC.06) | (assertEqualToResult (ln (+ 2 2))) | ((ln 4)) | ((ln 4)) |
| PASS | [HYPERON-EXPERIMENTAL-SCRIPTS.C1-GROUNDED-BASIC.07](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/hyperon-experimental_scripts/c1_grounded_basic.metta.html#HYPERON-EXPERIMENTAL-SCRIPTS.C1-GROUNDED-BASIC.07) | (assertEqualToResult (> 4 (+ ln 2))) | ((> 4 (+ ln 2))) | ((> 4 (+ ln 2))) |
| PASS | [HYPERON-EXPERIMENTAL-SCRIPTS.C1-GROUNDED-BASIC.08](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/hyperon-experimental_scripts/c1_grounded_basic.metta.html#HYPERON-EXPERIMENTAL-SCRIPTS.C1-GROUNDED-BASIC.08) | (assertEqualToResult (> 4 (+ $X 2))) | ((> 4 (+ $_359704 2))) | ((> 4 (+ $_359704 2))) |
| PASS | [HYPERON-EXPERIMENTAL-SCRIPTS.C1-GROUNDED-BASIC.09](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/hyperon-experimental_scripts/c1_grounded_basic.metta.html#HYPERON-EXPERIMENTAL-SCRIPTS.C1-GROUNDED-BASIC.09) | (assertEqualToResult (== 4 (+ 2 2))) | (True) | (True) |
| PASS | [HYPERON-EXPERIMENTAL-SCRIPTS.C1-GROUNDED-BASIC.10](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/hyperon-experimental_scripts/c1_grounded_basic.metta.html#HYPERON-EXPERIMENTAL-SCRIPTS.C1-GROUNDED-BASIC.10) | (assertEqualToResult (== 2 3)) | (False) | (False) |
| FAIL | [HYPERON-EXPERIMENTAL-SCRIPTS.C1-GROUNDED-BASIC.11](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/hyperon-experimental_scripts/c1_grounded_basic.metta.html#HYPERON-EXPERIMENTAL-SCRIPTS.C1-GROUNDED-BASIC.11) | (assertEqualToResult (== (A B) (A B))) | ((== (A B) (A B))) | (True) |
| FAIL | [HYPERON-EXPERIMENTAL-SCRIPTS.C1-GROUNDED-BASIC.12](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/hyperon-experimental_scripts/c1_grounded_basic.metta.html#HYPERON-EXPERIMENTAL-SCRIPTS.C1-GROUNDED-BASIC.12) | (assertEqualToResult (== (A B) (A (B C)))) | ((== (A B) (A (B C)))) | (False) |
| FAIL | [HYPERON-EXPERIMENTAL-SCRIPTS.C1-GROUNDED-BASIC.13](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/hyperon-experimental_scripts/c1_grounded_basic.metta.html#HYPERON-EXPERIMENTAL-SCRIPTS.C1-GROUNDED-BASIC.13) | (assertEqualToResult (== 4 (+ ln 2))) | ((== 4 (+ ln 2))) | (False) |
| PASS | [HYPERON-EXPERIMENTAL-SCRIPTS.C1-GROUNDED-BASIC.16](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/hyperon-experimental_scripts/c1_grounded_basic.metta.html#HYPERON-EXPERIMENTAL-SCRIPTS.C1-GROUNDED-BASIC.16) | (assertEqualToResult (sqr 4)) | (16) | (16) |
| PASS | [HYPERON-EXPERIMENTAL-SCRIPTS.C1-GROUNDED-BASIC.17](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/hyperon-experimental_scripts/c1_grounded_basic.metta.html#HYPERON-EXPERIMENTAL-SCRIPTS.C1-GROUNDED-BASIC.17) | (assertEqual (+ (superpose (1 2 3)) 1)) | (2 3 4) | (2 3 4) |
| PASS | [HYPERON-EXPERIMENTAL-SCRIPTS.C1-GROUNDED-BASIC.18](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/hyperon-experimental_scripts/c1_grounded_basic.metta.html#HYPERON-EXPERIMENTAL-SCRIPTS.C1-GROUNDED-BASIC.18) | (assertEqualToResult (bin)) | (0 1) | (0 1) |
| PASS | [HYPERON-EXPERIMENTAL-SCRIPTS.C1-GROUNDED-BASIC.19](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/hyperon-experimental_scripts/c1_grounded_basic.metta.html#HYPERON-EXPERIMENTAL-SCRIPTS.C1-GROUNDED-BASIC.19) | (assertEqualToResult (+ 1 (bin))) | (1 2) | (1 2) |
| PASS | [HYPERON-EXPERIMENTAL-SCRIPTS.C1-GROUNDED-BASIC.20](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/hyperon-experimental_scripts/c1_grounded_basic.metta.html#HYPERON-EXPERIMENTAL-SCRIPTS.C1-GROUNDED-BASIC.20) | (assertEqualToResult (let $X (+ 2 3) (* $X $X))) | (25) | (25) |
| PASS | [HYPERON-EXPERIMENTAL-SCRIPTS.C1-GROUNDED-BASIC.21](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/hyperon-experimental_scripts/c1_grounded_basic.metta.html#HYPERON-EXPERIMENTAL-SCRIPTS.C1-GROUNDED-BASIC.21) | (assertEqual (fact 5)) | (120) | (120) |
| PASS | [HYPERON-EXPERIMENTAL-SCRIPTS.C1-GROUNDED-BASIC.22](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/hyperon-experimental_scripts/c1_grounded_basic.metta.html#HYPERON-EXPERIMENTAL-SCRIPTS.C1-GROUNDED-BASIC.22) | (assertEqualToResult (fact 5)) | (120) | (120) |
| PASS | [HYPERON-EXPERIMENTAL-SCRIPTS.C1-GROUNDED-BASIC.23](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/hyperon-experimental_scripts/c1_grounded_basic.metta.html#HYPERON-EXPERIMENTAL-SCRIPTS.C1-GROUNDED-BASIC.23) | (assertEqualToResult (let $T (gen 3) (if (== (subsum (:: 3 (:: 7 (:: 5 nil))) $T) 8) $T (superpose ())))) | ((:: 1 (:: 0 (:: 1 nil)))) | ((:: 1 (:: 0 (:: 1 nil)))) |
| FAIL | [HYPERON-EXPERIMENTAL-SCRIPTS.C3-PLN-STV.01](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/hyperon-experimental_scripts/c3_pln_stv.metta.html#HYPERON-EXPERIMENTAL-SCRIPTS.C3-PLN-STV.01) | (assertEqual (TV (And (PA) (PB)))) | () | ((stv 0.3 0.8)) |
| FAIL | [HYPERON-EXPERIMENTAL-SCRIPTS.C3-PLN-STV.02](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/hyperon-experimental_scripts/c3_pln_stv.metta.html#HYPERON-EXPERIMENTAL-SCRIPTS.C3-PLN-STV.02) | (assertEqual (TV (FA))) | () | ((stv 0.4 0.8)) |
| PASS | [HYPERON-EXPERIMENTAL-SCRIPTS.C3-PLN-STV.03](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/hyperon-experimental_scripts/c3_pln_stv.metta.html#HYPERON-EXPERIMENTAL-SCRIPTS.C3-PLN-STV.03) | (assertEqual (TV (croaks Fritz))) | ((stv 0.95 0.85)) | ((stv 0.95 0.85)) |
| FAIL | [HYPERON-EXPERIMENTAL-SCRIPTS.C3-PLN-STV.04](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/hyperon-experimental_scripts/c3_pln_stv.metta.html#HYPERON-EXPERIMENTAL-SCRIPTS.C3-PLN-STV.04) | (assertEqual (TV (frog Fritz))) | () | ((stv 0.783 0.68)) |
| FAIL | [HYPERON-EXPERIMENTAL-SCRIPTS.C3-PLN-STV.05](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/hyperon-experimental_scripts/c3_pln_stv.metta.html#HYPERON-EXPERIMENTAL-SCRIPTS.C3-PLN-STV.05) | (assertEqual (TV (green Fritz))) | () | ((stv 0.7047 0.68)) |
| PASS | [HYPERON-EXPERIMENTAL-SCRIPTS.D1-GADT.01](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/hyperon-experimental_scripts/d1_gadt.metta.html#HYPERON-EXPERIMENTAL-SCRIPTS.D1-GADT.01) | (assertEqual (get-type 5)) | (Number) | (Number) |
| PASS | [HYPERON-EXPERIMENTAL-SCRIPTS.D1-GADT.02](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/hyperon-experimental_scripts/d1_gadt.metta.html#HYPERON-EXPERIMENTAL-SCRIPTS.D1-GADT.02) | (assertEqual (get-type (+ 5 7))) | (Number) | (Number) |
| PASS | [HYPERON-EXPERIMENTAL-SCRIPTS.D1-GADT.03](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/hyperon-experimental_scripts/d1_gadt.metta.html#HYPERON-EXPERIMENTAL-SCRIPTS.D1-GADT.03) | (assertEqual (get-type +)) | ((-> Number Number Number)) | ((-> Number Number Number)) |
| FAIL | [HYPERON-EXPERIMENTAL-SCRIPTS.D1-GADT.04](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/hyperon-experimental_scripts/d1_gadt.metta.html#HYPERON-EXPERIMENTAL-SCRIPTS.D1-GADT.04) | (assertEqualToResult (get-type (+ 5 4))) | (Number) | () |
| FAIL | [HYPERON-EXPERIMENTAL-SCRIPTS.D1-GADT.05](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/hyperon-experimental_scripts/d1_gadt.metta.html#HYPERON-EXPERIMENTAL-SCRIPTS.D1-GADT.05) | (assertEqualToResult (get-type (+ -))) | (Number) | () |
| PASS | [HYPERON-EXPERIMENTAL-SCRIPTS.D1-GADT.06](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/hyperon-experimental_scripts/d1_gadt.metta.html#HYPERON-EXPERIMENTAL-SCRIPTS.D1-GADT.06) | (assertEqual (get-type Either)) | (Type) | (Type) |
| PASS | [HYPERON-EXPERIMENTAL-SCRIPTS.D1-GADT.07](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/hyperon-experimental_scripts/d1_gadt.metta.html#HYPERON-EXPERIMENTAL-SCRIPTS.D1-GADT.07) | (assertEqual (get-type (Left 5))) | (Either) | (Either) |
| PASS | [HYPERON-EXPERIMENTAL-SCRIPTS.D1-GADT.08](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/hyperon-experimental_scripts/d1_gadt.metta.html#HYPERON-EXPERIMENTAL-SCRIPTS.D1-GADT.08) | (assertEqual (get-type (isLeft (Right 5)))) | (Bool) | (Bool) |
| FAIL | [HYPERON-EXPERIMENTAL-SCRIPTS.D1-GADT.09](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/hyperon-experimental_scripts/d1_gadt.metta.html#HYPERON-EXPERIMENTAL-SCRIPTS.D1-GADT.09) | (assertEqualToResult (get-type (isLeft 5))) | (Bool) | () |
| PASS | [HYPERON-EXPERIMENTAL-SCRIPTS.D1-GADT.10](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/hyperon-experimental_scripts/d1_gadt.metta.html#HYPERON-EXPERIMENTAL-SCRIPTS.D1-GADT.10) | (assertEqual (get-type (LeftP 5))) | ((EitherP Number)) | ((EitherP Number)) |
| PASS | [HYPERON-EXPERIMENTAL-SCRIPTS.D1-GADT.11](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/hyperon-experimental_scripts/d1_gadt.metta.html#HYPERON-EXPERIMENTAL-SCRIPTS.D1-GADT.11) | (assertEqual (get-type (pair (LeftP 5) String))) | ((Pair (EitherP Number) String)) | ((Pair (EitherP Number) String)) |
| PASS | [HYPERON-EXPERIMENTAL-SCRIPTS.D1-GADT.12](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/hyperon-experimental_scripts/d1_gadt.metta.html#HYPERON-EXPERIMENTAL-SCRIPTS.D1-GADT.12) | (assertEqual (get-type (Cons 5 (Cons 6 Nil)))) | ((List Number)) | ((List Number)) |
| PASS | [HYPERON-EXPERIMENTAL-SCRIPTS.D1-GADT.13](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/hyperon-experimental_scripts/d1_gadt.metta.html#HYPERON-EXPERIMENTAL-SCRIPTS.D1-GADT.13) | (assertEqualToResult (get-type (Cons 5 (Cons 6 Nil)))) | () | () |
| PASS | [HYPERON-EXPERIMENTAL-SCRIPTS.D1-GADT.14](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/hyperon-experimental_scripts/d1_gadt.metta.html#HYPERON-EXPERIMENTAL-SCRIPTS.D1-GADT.14) | (assertEqual (let (List $T) (get-type (Cons 5 (Cons 6 Nil))) $T)) | (Number) | (Number) |
| PASS | [HYPERON-EXPERIMENTAL-SCRIPTS.D2-HIGHERFUNC.01](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/hyperon-experimental_scripts/d2_higherfunc.metta.html#HYPERON-EXPERIMENTAL-SCRIPTS.D2-HIGHERFUNC.01) | (assertEqual (get-type (curry +))) | ((-> Number (-> Number Number))) | ((-> Number (-> Number Number))) |
| PASS | [HYPERON-EXPERIMENTAL-SCRIPTS.D2-HIGHERFUNC.02](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/hyperon-experimental_scripts/d2_higherfunc.metta.html#HYPERON-EXPERIMENTAL-SCRIPTS.D2-HIGHERFUNC.02) | (assertEqual (get-type ((curry +) 2))) | ((-> Number Number)) | ((-> Number Number)) |
| PASS | [HYPERON-EXPERIMENTAL-SCRIPTS.D2-HIGHERFUNC.03](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/hyperon-experimental_scripts/d2_higherfunc.metta.html#HYPERON-EXPERIMENTAL-SCRIPTS.D2-HIGHERFUNC.03) | (assertEqualToResult ((curry +) 2)) | (((curry +) 2)) | (((curry +) 2)) |
| PASS | [HYPERON-EXPERIMENTAL-SCRIPTS.D2-HIGHERFUNC.04](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/hyperon-experimental_scripts/d2_higherfunc.metta.html#HYPERON-EXPERIMENTAL-SCRIPTS.D2-HIGHERFUNC.04) | (assertEqual (((curry +) 2) 3)) | (5) | (5) |
| PASS | [HYPERON-EXPERIMENTAL-SCRIPTS.D2-HIGHERFUNC.05](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/hyperon-experimental_scripts/d2_higherfunc.metta.html#HYPERON-EXPERIMENTAL-SCRIPTS.D2-HIGHERFUNC.05) | (assertEqual (get-type (curry-a + 2))) | ((-> Number Number)) | ((-> Number Number)) |
| PASS | [HYPERON-EXPERIMENTAL-SCRIPTS.D2-HIGHERFUNC.06](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/hyperon-experimental_scripts/d2_higherfunc.metta.html#HYPERON-EXPERIMENTAL-SCRIPTS.D2-HIGHERFUNC.06) | (assertEqual (get-type ((curry-a + 2) 3))) | (Number) | (Number) |
| FAIL | [HYPERON-EXPERIMENTAL-SCRIPTS.D2-HIGHERFUNC.07](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/hyperon-experimental_scripts/d2_higherfunc.metta.html#HYPERON-EXPERIMENTAL-SCRIPTS.D2-HIGHERFUNC.07) | (assertEqualToResult (get-type ((curry-a + 2) S))) | (Number) | () |
| PASS | [HYPERON-EXPERIMENTAL-SCRIPTS.D2-HIGHERFUNC.08](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/hyperon-experimental_scripts/d2_higherfunc.metta.html#HYPERON-EXPERIMENTAL-SCRIPTS.D2-HIGHERFUNC.08) | (assertEqual ((curry-a + 2) 3)) | (5) | (5) |
| PASS | [HYPERON-EXPERIMENTAL-SCRIPTS.D2-HIGHERFUNC.09](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/hyperon-experimental_scripts/d2_higherfunc.metta.html#HYPERON-EXPERIMENTAL-SCRIPTS.D2-HIGHERFUNC.09) | (assertEqualToResult (is-socrates)) | ((curry-a is Socrates)) | ((curry-a is Socrates)) |
| PASS | [HYPERON-EXPERIMENTAL-SCRIPTS.D2-HIGHERFUNC.10](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/hyperon-experimental_scripts/d2_higherfunc.metta.html#HYPERON-EXPERIMENTAL-SCRIPTS.D2-HIGHERFUNC.10) | (assertEqual ((curry-a is Socrates) Human)) | (True) | (True) |
| PASS | [HYPERON-EXPERIMENTAL-SCRIPTS.D2-HIGHERFUNC.11](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/hyperon-experimental_scripts/d2_higherfunc.metta.html#HYPERON-EXPERIMENTAL-SCRIPTS.D2-HIGHERFUNC.11) | (assertEqual ((is-socrates) Human)) | (True) | (True) |
| PASS | [HYPERON-EXPERIMENTAL-SCRIPTS.D2-HIGHERFUNC.12](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/hyperon-experimental_scripts/d2_higherfunc.metta.html#HYPERON-EXPERIMENTAL-SCRIPTS.D2-HIGHERFUNC.12) | (assertEqual ((lambda $X (+ $X 1)) 2)) | (3) | (3) |
| PASS | [HYPERON-EXPERIMENTAL-SCRIPTS.D2-HIGHERFUNC.13](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/hyperon-experimental_scripts/d2_higherfunc.metta.html#HYPERON-EXPERIMENTAL-SCRIPTS.D2-HIGHERFUNC.13) | (assertEqual ((lambda ($X $Y) (+ $X $Y)) (2 7))) | (9) | (9) |
| PASS | [HYPERON-EXPERIMENTAL-SCRIPTS.D2-HIGHERFUNC.14](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/hyperon-experimental_scripts/d2_higherfunc.metta.html#HYPERON-EXPERIMENTAL-SCRIPTS.D2-HIGHERFUNC.14) | (assertEqual ((inc) 5)) | (6) | (6) |
| PASS | [HYPERON-EXPERIMENTAL-SCRIPTS.D2-HIGHERFUNC.15](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/hyperon-experimental_scripts/d2_higherfunc.metta.html#HYPERON-EXPERIMENTAL-SCRIPTS.D2-HIGHERFUNC.15) | (assertEqual (fmap (curry-a + 2) (Something 5))) | ((Something 7)) | ((Something 7)) |
| PASS | [HYPERON-EXPERIMENTAL-SCRIPTS.D2-HIGHERFUNC.16](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/hyperon-experimental_scripts/d2_higherfunc.metta.html#HYPERON-EXPERIMENTAL-SCRIPTS.D2-HIGHERFUNC.16) | (assertEqual (fmap (curry-a + 2) (Nothing))) | ((Nothing)) | ((Nothing)) |
| PASS | [HYPERON-EXPERIMENTAL-SCRIPTS.D2-HIGHERFUNC.17](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/hyperon-experimental_scripts/d2_higherfunc.metta.html#HYPERON-EXPERIMENTAL-SCRIPTS.D2-HIGHERFUNC.17) | (assertEqual (get-type (fmap (curry-a + 1) (Left 5)))) | ((Either Number)) | ((Either Number)) |
| PASS | [HYPERON-EXPERIMENTAL-SCRIPTS.D2-HIGHERFUNC.18](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/hyperon-experimental_scripts/d2_higherfunc.metta.html#HYPERON-EXPERIMENTAL-SCRIPTS.D2-HIGHERFUNC.18) | (assertEqual (fmap (curry-a + 2) (UntypedC 5))) | ((UntypedC 7)) | ((UntypedC 7)) |
| PASS | [HYPERON-EXPERIMENTAL-SCRIPTS.D2-HIGHERFUNC.19](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/hyperon-experimental_scripts/d2_higherfunc.metta.html#HYPERON-EXPERIMENTAL-SCRIPTS.D2-HIGHERFUNC.19) | (assertEqual (fmap (curry-a + 2) (UntypedC 5 (UntypedC 8 (Null))))) | ((UntypedC 7 (UntypedC 10 (Null)))) | ((UntypedC 7 (UntypedC 10 (Null)))) |
| PASS | [HYPERON-EXPERIMENTAL-SCRIPTS.D2-HIGHERFUNC.20](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/hyperon-experimental_scripts/d2_higherfunc.metta.html#HYPERON-EXPERIMENTAL-SCRIPTS.D2-HIGHERFUNC.20) | (assertEqualToResult (get-type (fmap (curry-a + 2) (Left 5)))) | () | () |
| FAIL | [HYPERON-EXPERIMENTAL-SCRIPTS.D2-HIGHERFUNC.21](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/hyperon-experimental_scripts/d2_higherfunc.metta.html#HYPERON-EXPERIMENTAL-SCRIPTS.D2-HIGHERFUNC.21) | (assertEqualToResult (get-type (fmap (curry-a + 2) (UntypedC 5)))) | ((Symbol Number)) | () |
| PASS | [HYPERON-EXPERIMENTAL-SCRIPTS.D2-HIGHERFUNC.22](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/hyperon-experimental_scripts/d2_higherfunc.metta.html#HYPERON-EXPERIMENTAL-SCRIPTS.D2-HIGHERFUNC.22) | (assertEqualToResult (get-type (fmap (curry-a + 2) (UntypedC (Null) 5)))) | () | () |
| PASS | [HYPERON-EXPERIMENTAL-SCRIPTS.D2-HIGHERFUNC.23](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/hyperon-experimental_scripts/d2_higherfunc.metta.html#HYPERON-EXPERIMENTAL-SCRIPTS.D2-HIGHERFUNC.23) | (assertEqual (fmap-i (curry-a - 7) (Right 3))) | ((Right 4)) | ((Right 4)) |
| PASS | [HYPERON-EXPERIMENTAL-SCRIPTS.D2-HIGHERFUNC.24](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/hyperon-experimental_scripts/d2_higherfunc.metta.html#HYPERON-EXPERIMENTAL-SCRIPTS.D2-HIGHERFUNC.24) | (assertEqual (fmap-i (curry-a * 2) (Cons 3 (Cons 4 Nil)))) | ((Cons 6 (Cons 8 Nil))) | ((Cons 6 (Cons 8 Nil))) |
| PASS | [HYPERON-EXPERIMENTAL-SCRIPTS.D2-HIGHERFUNC.25](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/hyperon-experimental_scripts/d2_higherfunc.metta.html#HYPERON-EXPERIMENTAL-SCRIPTS.D2-HIGHERFUNC.25) | (assertEqualToResult (fmap-i (curry-a + 2) (Untyped 5))) | ((fmap-i (curry-a + 2) (Untyped 5))) | ((fmap-i (curry-a + 2) (Untyped 5))) |
| PASS | [HYPERON-EXPERIMENTAL-SCRIPTS.D2-HIGHERFUNC.26](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/hyperon-experimental_scripts/d2_higherfunc.metta.html#HYPERON-EXPERIMENTAL-SCRIPTS.D2-HIGHERFUNC.26) | (assertEqual (insert 3 (insert 2 (insert 1 Nil)))) | ((Cons 1 (Cons 2 (Cons 3 Nil)))) | ((Cons 1 (Cons 2 (Cons 3 Nil)))) |
| PASS | [HYPERON-EXPERIMENTAL-SCRIPTS.D2-HIGHERFUNC.27](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/hyperon-experimental_scripts/d2_higherfunc.metta.html#HYPERON-EXPERIMENTAL-SCRIPTS.D2-HIGHERFUNC.27) | (assertEqual (sort (Cons 3 (Cons 1 (Cons 2 Nil))))) | ((Cons 1 (Cons 2 (Cons 3 Nil)))) | ((Cons 1 (Cons 2 (Cons 3 Nil)))) |
| PASS | [HYPERON-EXPERIMENTAL-SCRIPTS.D4-TYPE-PROP.01](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/hyperon-experimental_scripts/d4_type_prop.metta.html#HYPERON-EXPERIMENTAL-SCRIPTS.D4-TYPE-PROP.01) | (assertEqual (get-type (Mortal Plato))) | (Type) | (Type) |
| PASS | [HYPERON-EXPERIMENTAL-SCRIPTS.D4-TYPE-PROP.02](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/hyperon-experimental_scripts/d4_type_prop.metta.html#HYPERON-EXPERIMENTAL-SCRIPTS.D4-TYPE-PROP.02) | (assertEqual (get-type (HumansAreMortal SocratesIsHuman))) | ((Mortal Socrates)) | ((Mortal Socrates)) |
| PASS | [HYPERON-EXPERIMENTAL-SCRIPTS.D4-TYPE-PROP.03](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/hyperon-experimental_scripts/d4_type_prop.metta.html#HYPERON-EXPERIMENTAL-SCRIPTS.D4-TYPE-PROP.03) | (assertEqualToResult (get-type (HumansAreMortal (Human Socrates)))) | () | () |
| PASS | [HYPERON-EXPERIMENTAL-SCRIPTS.D4-TYPE-PROP.04](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/hyperon-experimental_scripts/d4_type_prop.metta.html#HYPERON-EXPERIMENTAL-SCRIPTS.D4-TYPE-PROP.04) | (assertEqual (get-type (= SocratesIsMortal (HumansAreMortal SocratesIsHuman)))) | (Type) | (Type) |
| PASS | [HYPERON-EXPERIMENTAL-SCRIPTS.D4-TYPE-PROP.05](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/hyperon-experimental_scripts/d4_type_prop.metta.html#HYPERON-EXPERIMENTAL-SCRIPTS.D4-TYPE-PROP.05) | (assertEqual (get-type (= (Mortal Socrates) (Mortal Plato)))) | (Type) | (Type) |
| FAIL | [HYPERON-EXPERIMENTAL-SCRIPTS.D4-TYPE-PROP.06](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/hyperon-experimental_scripts/d4_type_prop.metta.html#HYPERON-EXPERIMENTAL-SCRIPTS.D4-TYPE-PROP.06) | (assertEqualToResult (get-type (= SocratesIsMortal (HumansAreMortal PlatoIsHuman)))) | (Type) | () |
| FAIL | [HYPERON-EXPERIMENTAL-SCRIPTS.D4-TYPE-PROP.07](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/hyperon-experimental_scripts/d4_type_prop.metta.html#HYPERON-EXPERIMENTAL-SCRIPTS.D4-TYPE-PROP.07) | (assertEqualToResult (get-type (= SocratesIsHuman PlatoIsHuman))) | (Type) | () |
| FAIL | [HYPERON-EXPERIMENTAL-SCRIPTS.D4-TYPE-PROP.08](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/hyperon-experimental_scripts/d4_type_prop.metta.html#HYPERON-EXPERIMENTAL-SCRIPTS.D4-TYPE-PROP.08) | (assertEqualToResult (get-type (= SocratesIsHuman SocratesIsMortal))) | (Type) | () |
| PASS | [HYPERON-EXPERIMENTAL-SCRIPTS.D4-TYPE-PROP.09](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/hyperon-experimental_scripts/d4_type_prop.metta.html#HYPERON-EXPERIMENTAL-SCRIPTS.D4-TYPE-PROP.09) | (assertEqual (= SocratesIsMortal (HumansAreMortal SocratesIsHuman))) | (T) | (T) |
| PASS | [HYPERON-EXPERIMENTAL-SCRIPTS.D4-TYPE-PROP.10](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/hyperon-experimental_scripts/d4_type_prop.metta.html#HYPERON-EXPERIMENTAL-SCRIPTS.D4-TYPE-PROP.10) | (assertEqual (= (+ 1 1) (- 3 1))) | (T T) | (T) |
| PASS | [HYPERON-EXPERIMENTAL-SCRIPTS.D4-TYPE-PROP.11](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/hyperon-experimental_scripts/d4_type_prop.metta.html#HYPERON-EXPERIMENTAL-SCRIPTS.D4-TYPE-PROP.11) | (assertEqual (= (Mortal Socrates) T)) | (T) | (T) |
| PASS | [HYPERON-EXPERIMENTAL-SCRIPTS.D4-TYPE-PROP.12](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/hyperon-experimental_scripts/d4_type_prop.metta.html#HYPERON-EXPERIMENTAL-SCRIPTS.D4-TYPE-PROP.12) | (assertEqualToResult (= (Mortal Plato) T)) | () | () |
| FAIL | [HYPERON-EXPERIMENTAL-SCRIPTS.D4-TYPE-PROP.13](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/hyperon-experimental_scripts/d4_type_prop.metta.html#HYPERON-EXPERIMENTAL-SCRIPTS.D4-TYPE-PROP.13) | (assertEqual (= (Mortal Plato) T)) | () | (T) |
| PASS | [HYPERON-EXPERIMENTAL-SCRIPTS.D4-TYPE-PROP.14](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/hyperon-experimental_scripts/d4_type_prop.metta.html#HYPERON-EXPERIMENTAL-SCRIPTS.D4-TYPE-PROP.14) | (assertEqualToResult (= (Human Sam) T)) | () | () |
| PASS | [HYPERON-EXPERIMENTAL-SCRIPTS.D4-TYPE-PROP.15](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/hyperon-experimental_scripts/d4_type_prop.metta.html#HYPERON-EXPERIMENTAL-SCRIPTS.D4-TYPE-PROP.15) | (assertEqualToResult (Mortal Plato)) | ((Mortal Plato)) | ((Mortal Plato)) |
| FAIL | [HYPERON-EXPERIMENTAL-SCRIPTS.D4-TYPE-PROP.16](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/hyperon-experimental_scripts/d4_type_prop.metta.html#HYPERON-EXPERIMENTAL-SCRIPTS.D4-TYPE-PROP.16) | (assertEqual (= (= $X $X) T)) | () | (T) |
| PASS | [HYPERON-EXPERIMENTAL-SCRIPTS.D4-TYPE-PROP.17](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/hyperon-experimental_scripts/d4_type_prop.metta.html#HYPERON-EXPERIMENTAL-SCRIPTS.D4-TYPE-PROP.17) | (assertEqual (Mortal Plato)) | (T) | (T) |
| PASS | [HYPERON-EXPERIMENTAL-SCRIPTS.D4-TYPE-PROP.18](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/hyperon-experimental_scripts/d4_type_prop.metta.html#HYPERON-EXPERIMENTAL-SCRIPTS.D4-TYPE-PROP.18) | (assertEqualToResult (ift (Mortal $X) $X)) | (Socrates Plato) | (Plato Socrates) |
| PASS | [HYPERON-EXPERIMENTAL-SCRIPTS.E3-MATCH-STATES.01](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/hyperon-experimental_scripts/e3_match_states.metta.html#HYPERON-EXPERIMENTAL-SCRIPTS.E3-MATCH-STATES.01) | (assertEqualToResult (new-goal-status! lunch-order inactive)) | () | (()) |
| PASS | [HYPERON-EXPERIMENTAL-SCRIPTS.E3-MATCH-STATES.02](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/hyperon-experimental_scripts/e3_match_states.metta.html#HYPERON-EXPERIMENTAL-SCRIPTS.E3-MATCH-STATES.02) | (assertEqualToResult (new-goal-status! meditation inactive)) | () | (()) |
| PASS | [HYPERON-EXPERIMENTAL-SCRIPTS.E3-MATCH-STATES.03](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/hyperon-experimental_scripts/e3_match_states.metta.html#HYPERON-EXPERIMENTAL-SCRIPTS.E3-MATCH-STATES.03) | (assertEqual (get-state (status (Goal lunch-order)))) | (inactive) | (inactive) |
| PASS | [HYPERON-EXPERIMENTAL-SCRIPTS.E3-MATCH-STATES.04](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/hyperon-experimental_scripts/e3_match_states.metta.html#HYPERON-EXPERIMENTAL-SCRIPTS.E3-MATCH-STATES.04) | (assertEqualToResult (nop (change-state! (status (Goal lunch-order)) active))) | () | (()) |
| FAIL | [HYPERON-EXPERIMENTAL-SCRIPTS.E3-MATCH-STATES.05](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/hyperon-experimental_scripts/e3_match_states.metta.html#HYPERON-EXPERIMENTAL-SCRIPTS.E3-MATCH-STATES.05) | (assertEqual (get-state (status (Goal lunch-order)))) | (inactive) | (active) |
| PASS | [HYPERON-EXPERIMENTAL-SCRIPTS.E3-MATCH-STATES.06](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/hyperon-experimental_scripts/e3_match_states.metta.html#HYPERON-EXPERIMENTAL-SCRIPTS.E3-MATCH-STATES.06) | (assertEqualToResult (bind! &state-active (new-state active))) | () | (()) |
| PASS | [HYPERON-EXPERIMENTAL-SCRIPTS.E3-MATCH-STATES.07](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/hyperon-experimental_scripts/e3_match_states.metta.html#HYPERON-EXPERIMENTAL-SCRIPTS.E3-MATCH-STATES.07) | (assertEqualToResult (nop (change-state! &state-active inactive))) | () | (()) |
| FAIL | [HYPERON-EXPERIMENTAL-SCRIPTS.E3-MATCH-STATES.08](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/hyperon-experimental_scripts/e3_match_states.metta.html#HYPERON-EXPERIMENTAL-SCRIPTS.E3-MATCH-STATES.08) | (assertEqual (match &self (= (status (Goal $Goal)) &state-active) $Goal)) | () | (meditation) |
| PASS | [HYPERON-EXPERIMENTAL-SCRIPTS.E3-MATCH-STATES.09](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/hyperon-experimental_scripts/e3_match_states.metta.html#HYPERON-EXPERIMENTAL-SCRIPTS.E3-MATCH-STATES.09) | (assertEqual (if (== (get-state (status (Goal $Goal))) active) $Goal (superpose ()))) | (lunch-order) | (lunch-order) |
| PASS | [HYPERON-EXPERIMENTAL-SCRIPTS.F1-IMPORTS.01](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/hyperon-experimental_scripts/f1_imports.metta.html#HYPERON-EXPERIMENTAL-SCRIPTS.F1-IMPORTS.01) | (assertEqualToResult (get-type &self)) | (hyperon::space::DynSpace) | (hyperon::space::DynSpace) |
| FAIL | [HYPERON-EXPERIMENTAL-SCRIPTS.F1-IMPORTS.02](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/hyperon-experimental_scripts/f1_imports.metta.html#HYPERON-EXPERIMENTAL-SCRIPTS.F1-IMPORTS.02) | (assertEqual ((let $X (get-atoms &self) (get-type $X)))) | () | ((hyperon::space::DynSpace)) |
| PASS | [HYPERON-EXPERIMENTAL-SCRIPTS.F1-IMPORTS.03](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/hyperon-experimental_scripts/f1_imports.metta.html#HYPERON-EXPERIMENTAL-SCRIPTS.F1-IMPORTS.03) | (assertEqual (if (> 1 2) 1 2)) | (2) | (2) |
| PASS | [HYPERON-EXPERIMENTAL-SCRIPTS.F1-IMPORTS.07](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/hyperon-experimental_scripts/f1_imports.metta.html#HYPERON-EXPERIMENTAL-SCRIPTS.F1-IMPORTS.07) | (assertEqual (if True S F)) | () | (()) |
| FAIL | [HYPERON-EXPERIMENTAL-SCRIPTS.F1-IMPORTS.08](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/hyperon-experimental_scripts/f1_imports.metta.html#HYPERON-EXPERIMENTAL-SCRIPTS.F1-IMPORTS.08) | (assertEqual (match &m (= (f 2) $X) $X)) | () | ((g 3)) |
| PASS | [HYPERON-EXPERIMENTAL-SCRIPTS.F1-IMPORTS.12](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/hyperon-experimental_scripts/f1_imports.metta.html#HYPERON-EXPERIMENTAL-SCRIPTS.F1-IMPORTS.12) | (assertEqual (g 2)) | (102) | (102) |
| PASS | [HYPERON-EXPERIMENTAL-SCRIPTS.F1-IMPORTS.13](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/hyperon-experimental_scripts/f1_imports.metta.html#HYPERON-EXPERIMENTAL-SCRIPTS.F1-IMPORTS.13) | (assertEqual (f 2)) | (103) | (103) |
| FAIL | [HYPERON-EXPERIMENTAL-SCRIPTS.F1-IMPORTS.14](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/hyperon-experimental_scripts/f1_imports.metta.html#HYPERON-EXPERIMENTAL-SCRIPTS.F1-IMPORTS.14) | (assertEqual &m) | (&m) | ((: g (-> Number Numer))) |
| FAIL | [HYPERON-EXPERIMENTAL-SCRIPTS.F1-IMPORTS.15](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/hyperon-experimental_scripts/f1_imports.metta.html#HYPERON-EXPERIMENTAL-SCRIPTS.F1-IMPORTS.15) | (assertEqual (== (let* (($X (collapse (get-atoms &m))) ($Y (car-atom $X))) (get-type $Y)) (get-type &self))) | ((== Expression hyperon::space::DynSpace)) | (False) |
| PASS | [HYPERON-EXPERIMENTAL-SCRIPTS.F1-IMPORTS.16](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/hyperon-experimental_scripts/f1_imports.metta.html#HYPERON-EXPERIMENTAL-SCRIPTS.F1-IMPORTS.16) | (assertEqual (if (> 1 2) 1 2)) | (2) | (2) |
| PASS | [HYPERON-EXPERIMENTAL-SCRIPTS.F1-IMPORTS.17](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/hyperon-experimental_scripts/f1_imports.metta.html#HYPERON-EXPERIMENTAL-SCRIPTS.F1-IMPORTS.17) | (assertEqual (g 2)) | (102) | (102) |
| PASS | [HYPERON-EXPERIMENTAL-SCRIPTS.F1-IMPORTS.18](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/hyperon-experimental_scripts/f1_imports.metta.html#HYPERON-EXPERIMENTAL-SCRIPTS.F1-IMPORTS.18) | (assertEqual (f 2)) | (103) | (103) |
| PASS | [HYPERON-EXPERIMENTAL-SCRIPTS.F1-IMPORTS.19](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/hyperon-experimental_scripts/f1_imports.metta.html#HYPERON-EXPERIMENTAL-SCRIPTS.F1-IMPORTS.19) | (assertEqualToResult (dup 2)) | (102 12) | (12 102) |
| PASS | [HYPERON-EXPERIMENTAL-SCRIPTS.F1-IMPORTS.20](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/hyperon-experimental_scripts/f1_imports.metta.html#HYPERON-EXPERIMENTAL-SCRIPTS.F1-IMPORTS.20) | (assertEqual (g 2)) | (102) | (102) |
| PASS | [HYPERON-EXPERIMENTAL-SCRIPTS.F1-IMPORTS.21](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/hyperon-experimental_scripts/f1_imports.metta.html#HYPERON-EXPERIMENTAL-SCRIPTS.F1-IMPORTS.21) | (assertEqual (f 2)) | (103) | (103) |
| PASS | [HYPERON-EXPERIMENTAL-SCRIPTS.F1-IMPORTS.22](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/hyperon-experimental_scripts/f1_imports.metta.html#HYPERON-EXPERIMENTAL-SCRIPTS.F1-IMPORTS.22) | (assertEqualToResult (dup 2)) | (102 12) | (12 102) |
| PASS | [HYPERON-EXPERIMENTAL-SCRIPTS.F1-MODULEA.05](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/hyperon-experimental_scripts/f1_moduleA.metta.html#HYPERON-EXPERIMENTAL-SCRIPTS.F1-MODULEA.05) | (assertEqualToResult (import! &self f1_moduleC.metta)) | () | (()) |
| PASS | [HYPERON-EXPERIMENTAL-SCRIPTS.F1-MODULEA.06](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/hyperon-experimental_scripts/f1_moduleA.metta.html#HYPERON-EXPERIMENTAL-SCRIPTS.F1-MODULEA.06) | (assertEqual (+ 1 2)) | (3) | (3) |
| PASS | [HYPERON-EXPERIMENTAL-SCRIPTS.F1-MODULEA.07](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/hyperon-experimental_scripts/f1_moduleA.metta.html#HYPERON-EXPERIMENTAL-SCRIPTS.F1-MODULEA.07) | (assertEqual (if True S F)) | (S) | (S) |
| PASS | [HYPERON-EXPERIMENTAL-SCRIPTS.F1-MODULEA.09](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/hyperon-experimental_scripts/f1_moduleA.metta.html#HYPERON-EXPERIMENTAL-SCRIPTS.F1-MODULEA.09) | (assertEqualToResult (import! &self f1_moduleC.metta)) | () | (()) |
| PASS | [HYPERON-EXPERIMENTAL-SCRIPTS.F1-MODULEA.10](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/hyperon-experimental_scripts/f1_moduleA.metta.html#HYPERON-EXPERIMENTAL-SCRIPTS.F1-MODULEA.10) | (assertEqual (+ 1 2)) | (3) | (3) |
| PASS | [HYPERON-EXPERIMENTAL-SCRIPTS.F1-MODULEA.11](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/hyperon-experimental_scripts/f1_moduleA.metta.html#HYPERON-EXPERIMENTAL-SCRIPTS.F1-MODULEA.11) | (assertEqual (if True S F)) | (S) | (S) |
| FAIL | [HYPERON-METTALOG-SANITY.04-MATCH-LIST-LIKE-SPACE.01](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/hyperon-mettalog_sanity/04_match_list_like_space.metta.html#HYPERON-METTALOG-SANITY.04-MATCH-LIST-LIKE-SPACE.01) | (assertEqualToResult (match (kb) ($SS A_List $X) ($SS A_List $X))) | () | ((SS-P_List A_List B_List) (SS-Q_List A_List C_List)) |
| FAIL | [HYPERON-METTALOG-SANITY.04-MATCH-LIST-LIKE-SPACE.02](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/hyperon-mettalog_sanity/04_match_list_like_space.metta.html#HYPERON-METTALOG-SANITY.04-MATCH-LIST-LIKE-SPACE.02) | (assertEqual (match (kb) ($Rel A_List $X) ($Rel $X))) | () | ((SS-P_List B_List) (SS-Q_List C_List)) |
| FAIL | [HYPERON-METTALOG-SANITY.04-MATCH-LIST-LIKE-SPACE.03](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/hyperon-mettalog_sanity/04_match_list_like_space.metta.html#HYPERON-METTALOG-SANITY.04-MATCH-LIST-LIKE-SPACE.03) | (assertEqual (superpose ((P_List B_List) (Q_List C_List)))) | ((P_List B_List) (Q_List C_List)) | () |
| PASS | [HYPERON-METTALOG-SANITY.04-MATCH-LIST-LIKE-SPACE.04](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/hyperon-mettalog_sanity/04_match_list_like_space.metta.html#HYPERON-METTALOG-SANITY.04-MATCH-LIST-LIKE-SPACE.04) | (assertEqual (case (match (kb) ($Rel B_List $X) ($Rel $X)) (((SS-P_List $Y) (P_List $Y)) ((SS-Q_List $Y) (Q_List $Y)) (%void% no-match)))) | (no-match) | (no-match) |
| FAIL | [HYPERON-METTALOG-SANITY.05-MATCH-SUPERPOSE-ELEMENT-LIKE-SPACE.01](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/hyperon-mettalog_sanity/05_match_superpose_element_like_space.metta.html#HYPERON-METTALOG-SANITY.05-MATCH-SUPERPOSE-ELEMENT-LIKE-SPACE.01) | (assertEqualToResult (match (kb) ($SS A_Each $X) ($SS A_Each $X))) | () | ((SS-P_Each A_Each B_Each) (SS-Q_Each A_Each C_Each)) |
| FAIL | [HYPERON-METTALOG-SANITY.05-MATCH-SUPERPOSE-ELEMENT-LIKE-SPACE.02](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/hyperon-mettalog_sanity/05_match_superpose_element_like_space.metta.html#HYPERON-METTALOG-SANITY.05-MATCH-SUPERPOSE-ELEMENT-LIKE-SPACE.02) | (assertEqual (match (kb) ($Rel A_Each $X) ($Rel $X))) | () | ((SS-P_Each B_Each) (SS-Q_Each C_Each)) |
| FAIL | [HYPERON-METTALOG-SANITY.05-MATCH-SUPERPOSE-ELEMENT-LIKE-SPACE.03](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/hyperon-mettalog_sanity/05_match_superpose_element_like_space.metta.html#HYPERON-METTALOG-SANITY.05-MATCH-SUPERPOSE-ELEMENT-LIKE-SPACE.03) | (assertEqual (superpose ((P_Each B_Each) (Q_Each C_Each)))) | ((P_Each B_Each) (Q_Each C_Each)) | () |
| PASS | [HYPERON-METTALOG-SANITY.05-MATCH-SUPERPOSE-ELEMENT-LIKE-SPACE.04](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/hyperon-mettalog_sanity/05_match_superpose_element_like_space.metta.html#HYPERON-METTALOG-SANITY.05-MATCH-SUPERPOSE-ELEMENT-LIKE-SPACE.04) | (assertEqual (case (match (kb) ($Rel B_Each $X) ($Rel $X)) (((SS-P_Each $Y) (P_Each $Y)) ((SS-Q_Each $Y) (Q_Each $Y)) (%void% no-match)))) | (no-match) | (no-match) |
| FAIL | [METTA-MORPH-TESTS.NALIFIER.01](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/metta-morph_tests/nalifier.metta.html#METTA-MORPH-TESTS.NALIFIER.01) | (assertEqualToResult (let ($S $EV) (choiceQuery (((ExtSet sam) --> duck) ((ExtSet sam) --> swan) ((ExtSet sam) --> dog))) $S)) | ((x (1.0 0.0))) | ((((ExtSet sam) --> duck) (1.0 0.618320610687023))) |




Test Results:
172 Passed,
63 Failed,
235 Total,
73.19% Passed
 
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


